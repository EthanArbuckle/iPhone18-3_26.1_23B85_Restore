uint64_t sub_1003087A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v84 = a4;
  v79 = type metadata accessor for Date();
  v7 = *(v79 - 8);
  v8 = __chkstk_darwin(v79);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v67 - v10;
  v83 = type metadata accessor for DetailChartDataElement();
  v11 = __chkstk_darwin(v83);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v81 = &v67 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v17;
  v87 = a1;
  v86 = v84;
  v74 = (v7 + 8);
  v75 = (v14 + 16);
  v73 = (v14 + 8);
  v22 = v19 / v17;
  if (v21 >= v19 / v17)
  {
    v42 = v84;
    sub_1006A0744(a2, v19 / v17, v84);
    v43 = v42 + v22 * v17;
    v44 = -v17;
    v45 = v43;
    v82 = a1;
    v69 = v44;
LABEL_36:
    v46 = a2 + v44;
    v47 = a3;
    v67 = v45;
    v48 = v45;
    v70 = a2 + v44;
    v71 = a2;
    while (1)
    {
      if (v43 <= v84)
      {
        v87 = a2;
        v85 = v48;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v68 = v48;
      v80 = v47 + v44;
      v49 = v43 + v44;
      v50 = v43;
      v51 = *v75;
      v52 = v46;
      v53 = v83;
      v54 = v47;
      (*v75)(v81, v43 + v44, v83);
      v55 = v76;
      v51(v76, v52, v53);
      v56 = v77;
      DetailChartDataElement.date.getter();
      v57 = v78;
      DetailChartDataElement.date.getter();
      LODWORD(v72) = static Date.< infix(_:_:)();
      v58 = *v74;
      v59 = v57;
      v60 = v79;
      (*v74)(v59, v79);
      v58(v56, v60);
      v61 = *v73;
      (*v73)(v55, v53);
      v61(v81, v53);
      if (v72)
      {
        v43 = v50;
        a3 = v80;
        if (v54 < v71 || v80 >= v71)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v68;
          v44 = v69;
          a1 = v82;
        }

        else
        {
          v65 = v68;
          v44 = v69;
          v45 = v68;
          v18 = v54 == v71;
          v66 = v70;
          a2 = v70;
          a1 = v82;
          if (!v18)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v66;
            v45 = v65;
          }
        }

        goto LABEL_36;
      }

      v62 = v80;
      if (v54 < v50 || v80 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v62;
        v43 = v49;
        v48 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
      }

      else
      {
        v48 = v49;
        v18 = v50 == v54;
        v47 = v80;
        v43 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v47 = v62;
          v43 = v49;
          v48 = v49;
        }
      }
    }

    v87 = a2;
    v85 = v67;
  }

  else
  {
    v23 = v84;
    sub_1006A0744(a1, (a2 - a1) / v17, v84);
    v71 = v17;
    v72 = v23 + v21 * v17;
    v85 = v72;
    v80 = a3;
    while (v84 < v72 && a2 < a3)
    {
      v82 = a1;
      v25 = *v75;
      v26 = v81;
      v27 = v83;
      (*v75)(v81, a2, v83);
      v28 = v76;
      v25(v76, v84, v27);
      v29 = v77;
      DetailChartDataElement.date.getter();
      v30 = v78;
      DetailChartDataElement.date.getter();
      v31 = static Date.< infix(_:_:)();
      v32 = a2;
      v33 = *v74;
      v34 = v30;
      v35 = v79;
      (*v74)(v34, v79);
      v33(v29, v35);
      v36 = *v73;
      (*v73)(v28, v27);
      v36(v26, v27);
      if (v31)
      {
        v37 = v71;
        a2 = v32 + v71;
        v38 = v82;
        if (v82 < v32 || v82 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
        }

        else
        {
          a3 = v80;
          if (v82 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v37 = v71;
        v40 = v84 + v71;
        v38 = v82;
        if (v82 < v84 || v82 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
          a2 = v32;
        }

        else
        {
          a3 = v80;
          a2 = v32;
          if (v82 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v86 = v40;
        v84 = v40;
      }

      a1 = v38 + v37;
      v87 = a1;
    }
  }

LABEL_58:
  sub_100309034(&v87, &v86, &v85, &type metadata accessor for DetailChartDataElement);
  return 1;
}

void sub_100308E64(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  sub_10022C350(a4);
  sub_1000037E8();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  sub_10030A038();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    sub_100003B2C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_100003B2C();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_100309034(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  sub_1000037E8();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  sub_10030A038();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    sub_100003B2C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_100003B2C();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1003090FC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_100309128(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CAC480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_1003093A8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_10030942C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = v7[2];

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1003094F0(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_1003095C0()
{
  type metadata accessor for ConditionDetailChartDataInput(0);
  v0 = type metadata accessor for ConditionUnits();
  sub_100003810(v0);
  return sub_100305080();
}

uint64_t sub_10030968C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003096E4()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_10030973C()
{
  result = qword_100CAC440;
  if (!qword_100CAC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAC440);
  }

  return result;
}

uint64_t sub_1003097D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for HourWeather();
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  __chkstk_darwin(v7);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CAC498);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v36 = a2;
  v41 = a2;
  v42 = a3;
  v31 = sub_10022C350(&qword_100CAC490);
  v37 = v3;
  v38 = sub_100309EB8;
  v39 = &v40;
  v13 = sub_10022C350(&qword_100CA7030);
  sub_10011C0A0(&qword_100CA7038);
  sub_10022C350(&qword_100CAC4A0);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if ((v44 & 1) == 0)
  {
    a3 = v43[2];
    v43[0] = *v3;
    sub_10011C0A0(&qword_100CA7040);
    dispatch thunk of Collection.index(_:offsetBy:)();
    goto LABEL_12;
  }

  sub_100095588();
  v14 = *(v10 + 36);
  v15 = *v3;
  result = sub_1000180EC(v3, &qword_100CAC490);
  *&v12[v14] = v15;
  v17 = v36;
  v18 = v12;
  if (!v36)
  {
    sub_100051BBC();
    return 0;
  }

  v27 = a1;
  if (!a3)
  {
LABEL_12:
    sub_100051BBC();
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = v18[1];
    v30 = (v34 + 16);
    v29 = (v34 + 32);
    v28 = v20;
    while (v19 < a3)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_17;
      }

      if (*(v18 + v14) == v20)
      {
        sub_100051BBC();
        return v19;
      }

      v43[0] = *v18;
      v43[1] = v20;
      v35 = v19 + 1;
      sub_10011C0A0(&qword_100CA7040);
      v36 = v17;
      dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
      v21 = dispatch thunk of Collection.subscript.read();
      v22 = v32;
      v23 = v13;
      v24 = v33;
      (*v30)(v32);
      v21(v43, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v25 = v36;
      v26 = v24;
      v13 = v23;
      result = (*v29)(v36, v22, v26);
      if (v35 == a3)
      {
        goto LABEL_12;
      }

      v17 = v25 + *(v34 + 72);
      ++v19;
      v20 = v28;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100309C64(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t, void *))
{
  sub_10022C350(&qword_100CAC490);
  sub_10022C350(&qword_100CA7030);
  sub_10011C0A0(&qword_100CA7040);
  dispatch thunk of Collection.startIndex.getter();
  v6 = dispatch thunk of Collection.distance(from:to:)();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (__OFADD__(v6, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  if (result + v6 < v6)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = 0;
  if (a1)
  {
    v9 = a1 + *(*(type metadata accessor for HourWeather() - 8) + 72) * v6;
  }

  result = a4(&v11, v9, v8);
  if (!v10)
  {
    return v11;
  }

  return result;
}

uint64_t sub_100309DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v5 = a4;
    }

    else
    {
      v5 = a2;
    }

    v6 = type metadata accessor for HourWeather();
    swift_arrayInitWithCopy();
    v4 += *(*(v6 - 8) + 72) * v5;
  }

  else if (a1)
  {
    type metadata accessor for HourWeather();
  }

  return v4;
}

uint64_t sub_100309E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100309DBC(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

void *sub_100309ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *(*a4)(uint64_t *__return_ptr, uint64_t, void *)@<X3>, void *a5@<X8>)
{
  result = sub_100309C64(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

uint64_t sub_100309F58()
{

  return swift_allocObject();
}

void sub_100309FE8()
{
  v1 = v0[276];
  v2 = *(v1 + 16);
  v0[302] = v1 + 16;
  v0[301] = v2;
}

uint64_t sub_10030A098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a4;
  v112 = a2;
  type metadata accessor for Calendar.SearchDirection();
  sub_1000037C4();
  v100 = v7;
  v101 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v99 = v9 - v8;
  v109 = type metadata accessor for Calendar.RepeatedTimePolicy();
  sub_1000037C4();
  v98 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v97 = v13 - v12;
  v108 = type metadata accessor for Calendar.MatchingPolicy();
  sub_1000037C4();
  v95 = v14;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v94 = v17 - v16;
  v18 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v18 - 8);
  sub_100003848();
  v96 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  sub_100003878();
  v106 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  v24 = &v93 - v23;
  __chkstk_darwin(v25);
  v27 = &v93 - v26;
  __chkstk_darwin(v28);
  v30 = &v93 - v29;
  v31 = type metadata accessor for Date();
  sub_1000037C4();
  v33 = v32;
  __chkstk_darwin(v34);
  sub_100003848();
  v93 = v35;
  sub_10000386C();
  __chkstk_darwin(v36);
  sub_100003878();
  v111 = v37;
  sub_10000386C();
  __chkstk_darwin(v38);
  sub_100003878();
  v105 = v39;
  sub_10000386C();
  __chkstk_darwin(v40);
  sub_100003878();
  v104 = v41;
  sub_10000386C();
  __chkstk_darwin(v42);
  sub_100003878();
  v103 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v102 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  v48 = &v93 - v47;
  __chkstk_darwin(v49);
  v51 = &v93 - v50;
  type metadata accessor for Calendar();
  sub_1000037C4();
  v113 = v53;
  v114 = v52;
  __chkstk_darwin(v52);
  sub_1000037D8();
  v115 = (v55 - v54);
  v107 = a3;
  static Calendar.currentCalendar(with:)();
  v56 = a1;
  sub_1000D47CC(a1, v30);
  sub_100005404(v30);
  if (v60)
  {
    v27 = v30;
    v59 = v112;
  }

  else
  {
    v57 = v33;
    v58 = *(v33 + 32);
    v58(v51, v30, v31);
    v59 = v112;
    sub_1000D47CC(v112, v27);
    sub_100005404(v27);
    if (!v60)
    {
      goto LABEL_15;
    }

    (*(v33 + 8))(v51, v31);
  }

  sub_1001AEDF4(v27);
  sub_1000D47CC(v56, v24);
  sub_100005404(v24);
  v61 = v111;
  if (v60)
  {
    sub_1001AEDF4(v24);
    v62 = v106;
    sub_1000D47CC(v59, v106);
    sub_100005404(v62);
    if (v60)
    {
      sub_1000142C8();
      v63();
      v64 = v62;
    }

    else
    {
      v76 = v101;
      v112 = v33;
      v106 = *(v33 + 32);
      v107 = v33 + 32;
      v106(v61, v62, v31);
      v77 = v95;
      v78 = v94;
      (*(v95 + 104))(v94, enum case for Calendar.MatchingPolicy.nextTime(_:), v108);
      v80 = v97;
      v79 = v98;
      (*(v98 + 104))(v97, enum case for Calendar.RepeatedTimePolicy.first(_:), v109);
      v81 = v99;
      v82 = v100;
      (*(v100 + 104))(v99, enum case for Calendar.SearchDirection.forward(_:), v76);
      v83 = v96;
      Calendar.date(bySettingHour:minute:second:of:matchingPolicy:repeatedTimePolicy:direction:)();
      (*(v82 + 8))(v81, v76);
      (*(v79 + 8))(v80, v109);
      (*(v77 + 8))(v78, v108);
      sub_100005404(v83);
      if (!v84)
      {
        v86 = v93;
        v106(v93, v83, v31);
        v87 = v115;
        v88 = v111;
        v89 = Date.secondsSinceMidnight(calendar:)();
        v90 = Date.secondsSinceMidnight(calendar:)();
        v91 = *(v112 + 8);
        v91(v86, v31);
        v91(v88, v31);
        sub_1000142C8();
        result = v92(v87);
        if (__OFSUB__(v89, v90))
        {
          goto LABEL_24;
        }

        return result;
      }

      (*(v112 + 8))(v111, v31);
      sub_1000142C8();
      v85(v115);
      v64 = v83;
    }

    return sub_1001AEDF4(v64);
  }

  v58 = v102;
  (*(v33 + 32))(v102, v24, v31);
  v51 = v103;
  Date.startOfDay(timeZone:)();
  v48 = v104;
  v27 = v115;
  Date.wc_addDays(_:calendar:)();
  v65 = v105;
  Date.wc_addSeconds(_:calendar:)();
  v66 = Date.secondsSinceMidnight(calendar:)();
  v67 = Date.secondsSinceMidnight(calendar:)();
  v57 = v33 + 8;
  v68 = *(v33 + 8);
  v68(v65, v31);
  v68(v48, v31);
  v68(v51, v31);
  v68(v58, v31);
  sub_1000142C8();
  result = v69(v27);
  if (__OFSUB__(v66, v67))
  {
    __break(1u);
LABEL_15:
    v58(v48, v27, v31);
    v71 = v115;
    v72 = Date.secondsSinceMidnight(calendar:)();
    v73 = Date.secondsSinceMidnight(calendar:)();
    v74 = *(v57 + 8);
    v74(v48, v31);
    v74(v51, v31);
    sub_1000142C8();
    result = v75(v71);
    if (!__OFSUB__(v72, v73))
    {
      return result;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_10030A93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v5 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for Date();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for Calendar();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  static Calendar.currentCalendar(with:)();
  sub_1000D47CC(a1, v7);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    (*(v17 + 8))(v21, v15);
    return sub_1001AEDF4(v7);
  }

  else
  {
    (*(v10 + 32))(v14, v7, v8);
    v23 = Date.secondsSinceMidnight(calendar:)();
    v24 = Date.secondsSinceMidnight(calendar:)();
    (*(v10 + 8))(v14, v8);
    result = (*(v17 + 8))(v21, v15);
    if (__OFSUB__(v23, v24))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10030ABBC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];

  return sub_1009E9BB8(v6, v7);
}

void sub_10030AC4C(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  v3 = *(v1 + 32);

  sub_1005FF974(a1, v3);
}

Swift::Int sub_10030AC98()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1005FF974(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10030AD20()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1005FF974(v3, v1);
  return Hasher._finalize()();
}

unint64_t sub_10030ADA4()
{
  result = qword_100CAC578;
  if (!qword_100CAC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAC578);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KnownLocationViewLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for KnownLocationViewLayout(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10030AF50()
{
  result = qword_100CAC580;
  if (!qword_100CAC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAC580);
  }

  return result;
}

uint64_t sub_10030AFA4(char a1, char a2, char a3)
{
  switch(a3)
  {
    case 1:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2C08 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2C18 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2C10 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2BF8 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2C00 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 2:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2040 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2050 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2048 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2030 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2038 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 3:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2B90 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2BA0 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2B98 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2B80 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2B88 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 4:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2388 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2398 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2390 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2378 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2380 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 5:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2548 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2558 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2550 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2538 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2540 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 6:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2858 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2868 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2860 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2848 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2850 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 7:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA24B8 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA24C8 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA24C0 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA24A8 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA24B0 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 8:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2928 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2938 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2930 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2918 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2920 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 9:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA1FB0 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA1FC0 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA1FB8 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA1FA0 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA1FA8 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 10:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2218 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2228 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2220 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2208 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2210 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 11:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA1FE8 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA1FF8 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA1FF0 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA1FD8 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA1FE0 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 12:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA23E0 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA23F0 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA23E8 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA23D0 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA23D8 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 13:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA1EE8 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA1EF8 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA1EF0 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA1ED8 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA1EE0 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 14:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA22B8 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA22C8 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA22C0 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA22A8 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA22B0 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 15:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2338 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2348 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2340 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2328 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2330 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 16:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA22E0 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA22F0 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA22E8 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA22D0 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA22D8 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 17:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2520 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2530 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2528 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2510 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2518 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 18:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2090 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA20A0 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2098 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2080 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2088 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 19:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2628 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2638 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2630 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2618 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2620 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 20:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2B08 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2B18 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2B10 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2AF8 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2B00 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 21:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA1F60 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA1F70 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA1F68 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA1F50 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA1F58 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 22:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2290 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA22A0 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2298 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2280 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2288 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 23:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA28F0 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2900 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA28F8 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA28E0 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA28E8 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    case 24:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA2670 != -1)
            {
              goto LABEL_379;
            }

            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2680 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA2678 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA2660 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA2668 != -1)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    default:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a2)
          {
            if (qword_100CA21F0 == -1)
            {
              goto LABEL_376;
            }

LABEL_379:
            swift_once();
            goto LABEL_376;
          }
        }

        else if (a2)
        {
          if (qword_100CA2200 != -1)
          {
            goto LABEL_379;
          }

          goto LABEL_376;
        }

        if (qword_100CA21F8 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (a2)
      {
        if (qword_100CA21E0 != -1)
        {
          goto LABEL_379;
        }
      }

      else if (qword_100CA21E8 != -1)
      {
        goto LABEL_379;
      }

LABEL_376:
  }
}

uint64_t sub_10030D314()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_10030D368(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x77654E6971416F6ELL;
      break;
    case 2:
      result = 0x657265766573;
      break;
    case 3:
      result = 7366766;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x4E746C7561666564;
      break;
    case 6:
    case 18:
      result = 0x6465746176656C65;
      break;
    case 7:
    case 8:
    case 19:
      result = 0x7665536971416F6ELL;
      break;
    case 9:
    case 20:
      result = 0x70684E6971416F6ELL;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x684E657265766573;
      break;
    case 12:
    case 22:
      result = 0x684E657265766573;
      break;
    case 13:
      result = 0x654E657265766573;
      break;
    case 14:
      result = 0x7377654E70686ELL;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x726F6E694D70686ELL;
      break;
    case 21:
      result = 0x6971416F6ELL;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0x656C41726F6E696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10030D614@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10030D314();
  *a1 = result;
  return result;
}

unint64_t sub_10030D644@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10030D368(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10030D670@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10075540C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10030D7A0()
{
  result = qword_100CAC588;
  if (!qword_100CAC588)
  {
    sub_10022E824(&qword_100CAC590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAC588);
  }

  return result;
}

unint64_t sub_10030D804()
{
  result = qword_100CAC598;
  if (!qword_100CAC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAC598);
  }

  return result;
}

id sub_10030D858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_presetName];
  *v5 = a1;
  *(v5 + 1) = a2;
  sub_10030F9F0(a3, &v3[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_appState], type metadata accessor for PresetAppState);
  v6 = (a3 + *(type metadata accessor for PresetAppState() + 24));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = &v3[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_editedWeatherDataState];
  *v11 = v7;
  *(v11 + 1) = v8;
  *(v11 + 2) = v9;
  *(v11 + 3) = v10;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for LocalPresetLocationsViewController();

  v12 = objc_msgSendSuper2(&v14, "initWithStyle:", 2);
  sub_10030FAC4(a3, type metadata accessor for PresetAppState);
  return v12;
}

uint64_t sub_10030D948()
{
  v1 = v0 + OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_appState;
  v2 = (v1 + *(type metadata accessor for PresetAppState() + 24));
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = (v0 + OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_editedWeatherDataState);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v3;
  v7[2] = v5;
  v7[3] = v6;
}

void sub_10030DA08()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_presetName + 8];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_presetName];

    sub_10030DDBC(v3, v2);
  }

  else
  {
    sub_10000C70C(0, &qword_100CAC5F8);
    v4 = sub_100604878(0x6572502065766153, 0xEB00000000746573, 0xD00000000000001ELL, 0x8000000100ABFEF0, 1);
    v11[4] = sub_10030DC60;
    v11[5] = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10030DC80;
    v11[3] = &unk_100C4E390;
    v5 = _Block_copy(v11);
    [v4 addTextFieldWithConfigurationHandler:v5];
    _Block_release(v5);
    sub_10000C70C(0, &qword_100CAC600);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v8 = v1;
    v9 = sub_100604930(1702256979, 0xE400000000000000, 0, sub_10030F7D0, v7);
    [v4 addAction:v9];

    v10 = sub_100604930(0x6C65636E6143, 0xE600000000000000, 1, 0, 0);
    [v4 addAction:v10];

    [v8 presentViewController:v4 animated:1 completion:0];
  }
}

void sub_10030DC80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10030DCE8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    result = sub_10030F83C(result);
    if (result)
    {
      v1 = result;
      v2 = result & 0xC000000000000001;
      sub_1000A7560(0, (result & 0xC000000000000001) == 0, result);
      if (v2)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v3 = *(v1 + 32);
      }

      v4 = v3;

      result = sub_10030F8B4(v4);
      if (v5)
      {
        v6 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v6 = result & 0xFFFFFFFFFFFFLL;
        }

        if (v6)
        {
          sub_10030DDBC(result, v5);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10030DDBC(void *a1, void *a2)
{
  v53 = a1;
  v55 = a2;
  v48 = type metadata accessor for PresetAppState();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v54 = v4 - v3;
  v5 = type metadata accessor for URL.DirectoryHint();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  type metadata accessor for URL();
  sub_1000037C4();
  v50 = v13;
  v51 = v12;
  __chkstk_darwin(v12);
  v49 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  type metadata accessor for LocalPreset();
  sub_100044004();
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  URL.path.getter();
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 fileExistsAtPath:v20];

  if (v21)
  {
    v22 = v17;
  }

  else
  {
    v23 = [v18 defaultManager];
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    v56[0] = 0;
    v27 = [v23 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:v56];

    v22 = v17;
    if (v27)
    {
      v28 = v56[0];
    }

    else
    {
      v29 = v56[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v30 = v52;
  v56[0] = v53;
  v56[1] = v55;

  v31._countAndFlagsBits = 1918984494;
  v31._object = 0xE400000000000000;
  String.append(_:)(v31);
  (*(v7 + 104))(v11, enum case for URL.DirectoryHint.notDirectory(_:), v5);
  sub_10002D5A4();
  v49 = v22;
  URL.appending<A>(path:directoryHint:)();
  (*(v7 + 8))(v11, v5);

  v32 = v54;
  sub_10030F9F0(&v30[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_appState], v54, type metadata accessor for PresetAppState);
  v33 = &v30[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_editedWeatherDataState];
  swift_beginAccess();
  v35 = *v33;
  v34 = *(v33 + 1);
  v37 = *(v33 + 2);
  v36 = *(v33 + 3);
  v38 = (v32 + *(v48 + 24));

  *v38 = v35;
  v38[1] = v34;
  v38[2] = v37;
  v38[3] = v36;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10030F720();
  v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v41 = v40;

  Data.write(to:options:)();
  v44 = [v52 navigationController];
  if (v44)
  {
    v45 = v44;
    v36 = [v44 popViewControllerAnimated:1];

    sub_10030F778(v39, v41);
  }

  else
  {
    sub_10030F778(v39, v41);
  }

  v46 = sub_100008118();
  (v36)(v46);
  (v36)(v49, v41);
  sub_10000FBE4();
  return sub_10030FAC4(v32, v42);
}

void sub_10030E4DC()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for LocalPresetLocationsViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    sub_10000C70C(0, &qword_100CB2D30);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = String._bridgeToObjectiveC()();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

    if (*&v0[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_presetName + 8])
    {
      v5 = *&v0[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_presetName];
      v6 = *&v0[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_presetName + 8];
    }

    else
    {
      v6 = 0xEA00000000007465;
      v5 = 0x736572502077654ELL;
    }

    sub_1003C1790(v5, v6, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10030E638(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 1;
  }

  v4 = v2 + OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_appState;
  v5 = v4 + *(type metadata accessor for PresetAppState() + 20);
  return *(*(v5 + *(type metadata accessor for LocationsState() + 24)) + 16);
}

uint64_t sub_10030E6B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 0x6E6F697461636F4CLL;
  }
}

unint64_t sub_10030E6F8(uint64_t a1, uint64_t a2)
{
  v2 = 0xD00000000000001BLL;
  v3 = 0xD000000000000031;
  if (a2)
  {
    v3 = 0;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2 == 2)
  {
    return 0xD00000000000003BLL;
  }

  else
  {
    return v2;
  }
}

id sub_10030E780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  a5(a1, a4);
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10030E7DC(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:isa];

  if (IndexPath.section.getter())
  {
    if (IndexPath.section.getter() == 1)
    {
      sub_10030F31C(v4);
    }

    else if (IndexPath.section.getter() == 2)
    {
      sub_10030F348(v4);
    }
  }

  else
  {
    v5 = IndexPath.row.getter();
    sub_10030F0A4(v4, v5);
  }

  return v4;
}

void sub_10030E9C0()
{
  v0 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v52 - v1;
  v3 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v61 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  if (!IndexPath.section.getter())
  {
    v57 = v2;
    v58 = v3;
    v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = v6;
    v59 = v20;
    v60 = v17;
    v56 = v9;
    v22 = &v62[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_appState];
    v23 = v22 + *(type metadata accessor for PresetAppState() + 20);
    v24 = *&v23[*(type metadata accessor for LocationsState() + 24)];
    v25 = IndexPath.row.getter();
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *(v24 + 16))
    {
      v26 = v61;
      v27 = *(v61 + 80);
      v28 = v24 + ((v27 + 32) & ~v27) + *(v61 + 72) * v25;
      v29 = v59;
      v52 = *(v61 + 16);
      v53 = v22;
      v52(v59, v28, v10);
      v30 = LocationModel.id.getter();
      v32 = v31;
      v33 = v10;
      v34 = &v62[OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_editedWeatherDataState];
      swift_beginAccess();
      v35 = *(v34 + 2);

      v36 = v57;
      sub_1000864C0(v30, v32, v35);

      if (sub_100024D10(v36, 1, v58) == 1)
      {
        (*(v26 + 8))(v29, v33);
        sub_10030F924(v36);
      }

      else
      {
        v38 = v56;
        sub_10030F98C(v36, v56);
        v39 = v52;
        v52(v60, v29, v33);
        v40 = *v53;
        v41 = v26;
        v42 = v55;
        sub_10030F9F0(v38, v55, type metadata accessor for LocationWeatherDataState);
        v43 = v54;
        v39(v54, v29, v33);
        v44 = (v27 + 24) & ~v27;
        v45 = swift_allocObject();
        v46 = v62;
        *(v45 + 16) = v62;
        (*(v41 + 32))(v45 + v44, v43, v33);
        objc_allocWithZone(type metadata accessor for WeatherDataEditorViewController());
        v47 = v46;
        v48 = sub_100848988(v60, v42, sub_10030FA50, v45, v40);
        if (v48)
        {
          v49 = v48;
          v50 = [v47 navigationController];
          if (v50)
          {
            v51 = v50;
            [v50 pushViewController:v49 animated:1];

            v49 = v51;
          }
        }

        sub_10030FAC4(v56, type metadata accessor for LocationWeatherDataState);
        (*(v41 + 8))(v29, v33);
      }

      goto LABEL_19;
    }

    __break(1u);
    return;
  }

  if (IndexPath.section.getter() == 1)
  {
    sub_1000135C8();

    sub_10030D948();
    return;
  }

  if (IndexPath.section.getter() != 2)
  {
LABEL_19:
    sub_1000135C8();
    return;
  }

  sub_1000135C8();

  sub_10030DA08();
}

uint64_t sub_10030EE9C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  LocationModel.id.getter();
  sub_10030F9F0(a1, v4, type metadata accessor for LocationWeatherDataState);
  v5 = type metadata accessor for LocationWeatherDataState(0);
  sub_10001B350(v4, 0, 1, v5);
  swift_beginAccess();
  sub_100403600();
  return swift_endAccess();
}

uint64_t sub_10030F0A4(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = OBJC_IVAR____TtC7Weather34LocalPresetLocationsViewController_appState;
  v19 = *(type metadata accessor for PresetAppState() + 20);
  result = type metadata accessor for LocationsState();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = *(v2 + v18 + v19 + *(result + 24));
    if (*(v21 + 16) > a2)
    {
      (*(v13 + 16))(v17, v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * a2, v11);
      static UIListContentConfiguration.subtitleCell()();
      LocationModel.name.getter();
      UIListContentConfiguration.text.setter();
      v22 = [objc_opt_self() labelColor];
      v23 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v23(v26, 0);
      v26[3] = v4;
      v26[4] = &protocol witness table for UIListContentConfiguration;
      v24 = sub_100042FB0(v26);
      (*(v6 + 16))(v24, v10, v4);
      UITableViewCell.contentConfiguration.setter();
      [a1 setAccessoryType:1];
      (*(v6 + 8))(v10, v4);
      return (*(v13 + 8))(v17, v11);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10030F370(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  static UIListContentConfiguration.subtitleCell()();
  UIListContentConfiguration.text.setter();
  v12 = [objc_opt_self() *a4];
  v13 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v13(v16, 0);
  v16[3] = v5;
  v16[4] = &protocol witness table for UIListContentConfiguration;
  v14 = sub_100042FB0(v16);
  (*(v7 + 16))(v14, v11, v5);
  UITableViewCell.contentConfiguration.setter();
  return (*(v7 + 8))(v11, v5);
}

id sub_10030F574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalPresetLocationsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LocalPresetLocationsViewController()
{
  result = qword_100CAC5E0;
  if (!qword_100CAC5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10030F67C()
{
  result = type metadata accessor for PresetAppState();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10030F720()
{
  result = qword_100CAC5F0;
  if (!qword_100CAC5F0)
  {
    type metadata accessor for PresetAppState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAC5F0);
  }

  return result;
}

uint64_t sub_10030F778(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_10030F7D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setText:v4];
}

uint64_t sub_10030F83C(void *a1)
{
  v2 = [a1 textFields];

  if (!v2)
  {
    return 0;
  }

  sub_10000C70C(0, &qword_100CAC608);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10030F8B4(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10030F924(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA37B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10030F98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationWeatherDataState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030F9F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10030FA50(uint64_t a1)
{
  type metadata accessor for LocationModel();

  return sub_10030EE9C(a1);
}

uint64_t sub_10030FAC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10030FB1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_10022C350(&qword_100CAC610);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;

  if (!a3)
  {
    Image.init(systemName:)();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    Image.init(_internalSystemName:)();
LABEL_5:
    static SymbolRenderingMode.hierarchical.getter();
    v7 = type metadata accessor for SymbolRenderingMode();
    sub_10001B350(v6, 0, 1, v7);
    v8 = Image.symbolRenderingMode(_:)();

    sub_10030FE60(v6);
    return v8;
  }

  return Image.init(_:bundle:)();
}

uint64_t static TipViewModel.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (*(a1 + 16) != 1)
  {
    if (v5 == 2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v5 != 1)
  {
    return 0;
  }

LABEL_8:
  v6 = v4 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[7] == *(a2 + 56) && a1[8] == *(a2 + 64))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t static ImageSource.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_4:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10030FDC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10030FE04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10030FE60(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAC610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for NotificationsOptInViewAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NotificationsOptInViewAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100310030()
{
  result = qword_100CAC618;
  if (!qword_100CAC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAC618);
  }

  return result;
}

uint64_t sub_100310084@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CAC628);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  switch(a1)
  {
    case 3:
    case 4:
    case 5:
      Dictionary.init(dictionaryLiteral:)();
      sub_10001E7E4();
      break;
    default:
      Dictionary.init(dictionaryLiteral:)();
      break;
  }

  ShortDescription.init(name:_:)();
  a2[3] = v4;
  a2[4] = sub_10031040C();
  v8 = sub_100042FB0(a2);
  return (*(v5 + 32))(v8, v7, v4);
}

uint64_t sub_100310378()
{
  sub_100310470();

  return ShortDescribable.description.getter();
}

unint64_t sub_1003103B8()
{
  result = qword_100CAC620;
  if (!qword_100CAC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAC620);
  }

  return result;
}

unint64_t sub_10031040C()
{
  result = qword_100CAC630;
  if (!qword_100CAC630)
  {
    sub_10022E824(&qword_100CAC628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAC630);
  }

  return result;
}

unint64_t sub_100310470()
{
  result = qword_100CAC638;
  if (!qword_100CAC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAC638);
  }

  return result;
}

uint64_t sub_1003104C4()
{
  v1 = sub_10022C350(&qword_100CA3538);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v65 = &v57 - v3;
  v62 = type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v4);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_10022C350(&qword_100CA3898);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  v14 = type metadata accessor for WeatherData(0);
  sub_1000037C4();
  v59 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v60 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v66 = &v57 - v20;
  v21 = sub_10022C350(&qword_100CAC708);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v57 - v23;
  v25 = type metadata accessor for SunriseSunsetDetailViewState();
  sub_1000037C4();
  v58 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v29);
  v61 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v30);
  v33 = &v57 - v32;
  v64 = v0;
  (*(v0 + 152))(v67, v31);
  v34 = v67[0];
  sub_100483A98(v67[0], v24);
  if (sub_100024D10(v24, 1, v25) == 1)
  {

    v35 = &qword_100CAC708;
    v36 = v24;
    return sub_1000180EC(v36, v35);
  }

  sub_10000FBFC();
  sub_100311348(v24, v33, v37);
  v38 = *(v34 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v39 = Location.id.getter();
  sub_1000864C0(v39, v40, v38);

  v41 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v9, 1, v41) == 1)
  {
    sub_10001BD3C();

    sub_1000180EC(v9, &qword_100CA37B0);
    sub_10001B350(v13, 1, 1, v14);
LABEL_7:
    v35 = &qword_100CA3898;
    v36 = v13;
    return sub_1000180EC(v36, v35);
  }

  sub_1001A0D3C();
  sub_1003113A8(v9, type metadata accessor for LocationWeatherDataState);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_10001BD3C();

    goto LABEL_7;
  }

  sub_1000056D4();
  v43 = v66;
  sub_100311348(v13, v66, v44);
  if (v33[*(v25 + 24)])
  {
  }

  else
  {
    v45 = v64;
    sub_1000161C0((v64 + 112), *(v64 + 136));
    sub_1002790D4();
    if (v46)
    {
      *v63 = 0;
      swift_storeEnumTagMultiPayload();
      sub_1000142D4();

      sub_1000180EC(v67, &unk_100CD81B0);
      sub_10000812C();
    }

    else
    {
      *v63 = 1;
      swift_storeEnumTagMultiPayload();
      sub_1000142D4();
      sub_1000180EC(v67, &unk_100CD81B0);
      sub_10000812C();
      v47 = v65;
      static TaskPriority.userInitiated.getter();
      v48 = type metadata accessor for TaskPriority();
      sub_10001B350(v47, 0, 1, v48);
      v49 = v60;
      sub_1001112E4(v43, v60, type metadata accessor for WeatherData);
      sub_1001112E4(v33, v61, type metadata accessor for SunriseSunsetDetailViewState);
      v50 = (*(v59 + 80) + 40) & ~*(v59 + 80);
      v51 = (v17 + *(v58 + 80) + v50) & ~*(v58 + 80);
      v52 = swift_allocObject();
      v52[2] = 0;
      v52[3] = 0;
      v52[4] = v45;
      sub_1000056D4();
      sub_100311348(v49, v53 + v50, v54);
      sub_10000FBFC();
      sub_100311348(v61, v52 + v51, v55);

      v56 = v65;
      sub_10074A18C(0, 0, v65, &unk_100A3BAC8, v52);

      sub_1000180EC(v56, &qword_100CA3538);
    }
  }

  sub_1003113A8(v43, type metadata accessor for WeatherData);
  return sub_10001BD3C();
}

uint64_t sub_100310B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_100310C98, 0, 0);
}

uint64_t sub_100310C98()
{
  v1 = v0[9];
  v2 = v1[23];
  v0[21] = v2;
  v3 = v2;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  sub_1000161C0(v1 + 9, v1[12]);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_100310D8C;

  return sub_10027994C();
}

uint64_t sub_100310D8C()
{

  return _swift_task_switch(sub_100310E88, 0, 0);
}

uint64_t sub_100310E88()
{
  v13 = v0[19];
  v14 = v0[18];
  v1 = v0[17];
  v10 = v0[20];
  v11 = v0[16];
  v2 = v0[14];
  v12 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  sub_100040690();
  v6 = static OS_dispatch_queue.main.getter();
  v0[6] = sub_10031155C;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000742F0;
  v0[5] = &unk_100C4E638;
  v7 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v3 + 8))(v2, v4);
  (*(v11 + 8))(v1, v12);
  (*(v13 + 8))(v10, v14);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003110B8(uint64_t a1)
{
  v2 = type metadata accessor for MainAction();
  __chkstk_darwin(v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  *v4 = 0;
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_10004F034(v4, v7, v5);
  sub_1000180EC(v7, &unk_100CD81B0);
  return sub_1003113A8(v4, type metadata accessor for MainAction);
}

uint64_t sub_10031119C(uint64_t a1)
{
  v3 = v1[7];
  v4 = v1[8];
  sub_1000161C0(v1 + 4, v3);
  return (*(*(v4 + 8) + 24))(a1, v3);
}

uint64_t sub_1003111F8()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_1000161C0(v0 + 4, v1);
  return (*(*(v2 + 8) + 32))(v1);
}

uint64_t sub_10031124C()
{

  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 72);
  sub_100006F14(v0 + 112);

  return v0;
}

uint64_t sub_1003112A8()
{
  sub_10031124C();

  return swift_deallocClassInstance();
}

uint64_t sub_100311348(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1003113A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100311400(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for WeatherData(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = type metadata accessor for SunriseSunsetDetailViewState();
  sub_100003810(v8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000926F8;

  return sub_100310B1C(a1, v11, v12, v13, v1 + v6, v1 + v10);
}

uint64_t sub_100311564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1003116C8(a1);
  sub_1003124F0(a1, v4, a2);
  v5 = type metadata accessor for MoonCalendarViewModel();
  sub_100312E50(v4, a2 + *(v5 + 20));

  return sub_10001B350(a2, 0, 1, v5);
}

id sub_100311624()
{
  result = sub_100311644();
  qword_100CAC718 = result;
  return result;
}

id sub_100311644()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setLocalizedDateFormatFromTemplate:v1];

  [v0 setFormattingContext:2];
  return v0;
}

uint64_t sub_1003116C8(uint64_t a1)
{
  v104 = a1;
  v101 = type metadata accessor for CalendarMoonPhaseData(0);
  v97 = *(v101 - 8);
  v1 = __chkstk_darwin(v101);
  v112 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v99 = &v83 - v3;
  v4 = sub_10022C350(&qword_100CAC7D0);
  __chkstk_darwin(v4 - 8);
  v100 = &v83 - v5;
  v119 = type metadata accessor for DayMoonData();
  v103 = *(v119 - 8);
  __chkstk_darwin(v119);
  v111 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  v9 = v8;
  __chkstk_darwin(v7);
  v114 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&unk_100CB2CF0);
  v12 = __chkstk_darwin(v11 - 8);
  v98 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v96 = &v83 - v15;
  v16 = __chkstk_darwin(v14);
  v110 = &v83 - v17;
  v18 = __chkstk_darwin(v16);
  v105 = &v83 - v19;
  __chkstk_darwin(v18);
  v117 = &v83 - v20;
  v21 = type metadata accessor for Date();
  v92 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v118 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v83 - v25;
  v27 = __chkstk_darwin(v24);
  v113 = &v83 - v28;
  __chkstk_darwin(v27);
  v84 = &v83 - v29;
  v91 = type metadata accessor for DateComponents();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Calendar();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TimeZone();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v35 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  Location.timeZone.getter();
  v116 = v35;
  static Calendar.currentCalendar(with:)();
  sub_10022C350(&qword_100CA53E8);
  v36 = *(v8 + 72);
  v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100A2D320;
  v39 = v38 + v37;
  v115 = v9;
  v40 = v9 + 104;
  v41 = *(v9 + 104);
  (v41)(v39, enum case for Calendar.Component.year(_:), v7);
  v42 = v39 + v36;
  LODWORD(v109) = enum case for Calendar.Component.month(_:);
  v43 = v7;
  v41(v42);
  sub_10004BCB0(v38);
  type metadata accessor for MoonCalendarInput();
  v44 = v33;
  Calendar.dateComponents(_:from:)();

  v87 = v31;
  v45 = v117;
  Calendar.date(from:)();
  if (sub_100024D10(v45, 1, v21) == 1)
  {
    v46 = v45;
    goto LABEL_5;
  }

  v47 = v84;
  v102 = *(v92 + 32);
  v102(v84, v45, v21);
  v48 = v114;
  v49 = v43;
  (v41)(v114, v109, v43);
  v46 = v105;
  v117 = v44;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v50 = v115 + 8;
  v109 = *(v115 + 8);
  v109(v48, v49);
  if (sub_100024D10(v46, 1, v21) == 1)
  {
    (*(v92 + 8))(v47, v21);
    v44 = v117;
LABEL_5:
    sub_10003FDF4(v46, &unk_100CB2CF0);
    sub_10005B714(&qword_100CA39C8);
    v51 = Dictionary.init(dictionaryLiteral:)();
    (*(v90 + 8))(v87, v91);
    (*(v88 + 8))(v44, v89);
    (*(v85 + 8))(v116, v86);
    return v51;
  }

  v106 = v41;
  v107 = v40;
  v115 = v50;
  v108 = v49;
  v102(v113, v46, v21);
  Location.coordinate.getter();
  v52 = v92 + 16;
  v102 = *(v92 + 16);
  v102(v26, v47, v21);
  swift_beginAccess();
  v94 = (v103 + 32);
  v95 = (v52 - 8);
  v93 = (v103 + 8);
  v103 = v52;
  v53 = (v52 + 24);
  v51 = &_swiftEmptyDictionarySingleton;
  LODWORD(v105) = enum case for Calendar.Component.day(_:);
  v54 = v100;
  v55 = v83;
  while (1)
  {
    sub_1000161C0(v55 + 2, v55[5]);
    v56 = v116;
    dispatch thunk of MoonDataProviderType.dayMoonData(for:timeZone:coordinate:)();
    v57 = v119;
    if (sub_100024D10(v54, 1, v119) == 1)
    {
      sub_10003FDF4(v54, &qword_100CAC7D0);
      v58 = v114;
      v59 = v108;
      v106(v114, v105, v108);
      v60 = v98;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      v109(v58, v59);
      if (sub_100024D10(v60, 1, v21) == 1)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    (*v94)(v111, v54, v57);
    v61 = DayMoonData.phase.getter();
    v62 = v61;
    v63 = v110;
    sub_100313BC0(v26, v104, v56, v61, v117, v55, v110);
    v102(v118, v26, v21);
    v64 = v99;
    sub_100060DE0(v63, &v99[*(v101 + 20)], &unk_100CB2CF0);
    *v64 = v62;
    sub_100314D24(v64, v112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v51;
    sub_100237FB4();
    v68 = v51[2];
    v69 = (v67 & 1) == 0;
    v70 = v68 + v69;
    if (__OFADD__(v68, v69))
    {
      break;
    }

    v71 = v66;
    v72 = v67;
    sub_10022C350(&qword_100CAC7D8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v70))
    {
      sub_100237FB4();
      if ((v72 & 1) != (v74 & 1))
      {
        goto LABEL_26;
      }

      v71 = v73;
    }

    v51 = v120;
    if (v72)
    {
      sub_100314E54(v112, v120[7] + *(v97 + 72) * v71);
    }

    else
    {
      v120[(v71 >> 6) + 8] |= 1 << v71;
      v102((v51[6] + *(v92 + 72) * v71), v118, v21);
      sub_100314D24(v112, v51[7] + *(v97 + 72) * v71);
      v75 = v51[2];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        goto LABEL_23;
      }

      v51[2] = v77;
    }

    (*v95)(v118, v21);
    sub_10003FDF4(v110, &unk_100CB2CF0);
    (*v93)(v111, v119);
    v78 = v114;
    v79 = v108;
    v106(v114, v105, v108);
    v60 = v96;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v109(v78, v79);
    v80 = sub_100024D10(v60, 1, v21);
    v54 = v100;
    if (v80 == 1)
    {
      goto LABEL_25;
    }

LABEL_19:
    (*v53)(v26, v60, v21);
    if ((static Date.< infix(_:_:)() & 1) == 0)
    {
      v81 = *v95;
      (*v95)(v113, v21);
      v81(v84, v21);
      (*(v90 + 8))(v87, v91);
      (*(v88 + 8))(v117, v89);
      (*(v85 + 8))(v116, v86);
      v81(v26, v21);
      return v51;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003124F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v90 = a2;
  v4 = type metadata accessor for Calendar.Component();
  v92 = *(v4 - 8);
  v5 = v92;
  __chkstk_darwin(v4);
  v76 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&unk_100CB2CF0);
  v8 = __chkstk_darwin(v7 - 8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v74 = &v71 - v11;
  __chkstk_darwin(v10);
  v80 = (&v71 - v12);
  v79 = type metadata accessor for Date();
  v91 = *(v79 - 8);
  v13 = __chkstk_darwin(v79);
  v73 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v75 = &v71 - v16;
  __chkstk_darwin(v15);
  v82 = &v71 - v17;
  v18 = type metadata accessor for DateComponents();
  v86 = *(v18 - 8);
  v87 = v18;
  __chkstk_darwin(v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TimeZone();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Calendar();
  v83 = *(v25 - 8);
  v84 = v25;
  __chkstk_darwin(v25);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v22 + 8))(v24, v21);
  sub_10022C350(&qword_100CA53E8);
  v28 = *(v5 + 72);
  v29 = v92;
  v30 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100A2D320;
  v32 = v31 + v30;
  v33 = *(v29 + 104);
  v33(v32, enum case for Calendar.Component.year(_:), v4);
  v34 = enum case for Calendar.Component.month(_:);
  v77 = v4;
  v35 = v4;
  v36 = v79;
  v33(v32 + v28, enum case for Calendar.Component.month(_:), v35);
  sub_10004BCB0(v31);
  v81 = type metadata accessor for MoonCalendarInput();
  v37 = *(v81 + 24);
  v88 = a1;
  v78 = v37;
  Calendar.dateComponents(_:from:)();

  v38 = v80;
  v85 = v20;
  v93 = v27;
  Calendar.date(from:)();
  v39 = v38;
  if (sub_100024D10(v38, 1, v36) == 1)
  {
    v41 = v89;
    v40 = v90;
    v42 = v91;
  }

  else
  {
    v80 = *(v91 + 32);
    v80(v82, v38, v36);
    v43 = v76;
    v44 = v36;
    v45 = v77;
    v33(v76, v34, v77);
    v46 = v74;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v47 = *(v92 + 8);
    v48 = v45;
    v36 = v44;
    v47(v43, v48);
    v39 = v46;
    if (sub_100024D10(v46, 1, v44) == 1)
    {
      v42 = v91;
      (*(v91 + 8))(v82, v36);
    }

    else
    {
      v42 = v91;
      v80(v75, v46, v36);
      v49 = v76;
      v50 = v34;
      v51 = v77;
      v33(v76, v50, v77);
      v52 = v72;
      v53 = v82;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      v47(v49, v51);
      v39 = v52;
      if (sub_100024D10(v52, 1, v36) != 1)
      {
        v65 = v73;
        v80(v73, v39, v36);
        v66 = v88;
        v41 = v89;
        Location.timeZone.getter();
        v60 = type metadata accessor for CalendarViewModel(0);
        v67 = *(v42 + 16);
        v67(v41 + v60[5], v65, v36);
        v68 = v75;
        v67(v41 + v60[6], v75, v36);
        v69 = v81;
        v67(v41 + v60[7], (v66 + *(v81 + 28)), v36);
        sub_100060DE0(v66 + *(v69 + 32), v41 + v60[8], &unk_100CB2CF0);
        v40 = v90;

        Location.coordinate.getter();
        MoonPhase.Hemisphere.init(latitude:)();
        v70 = *(v42 + 8);
        v70(v73, v36);
        v70(v68, v36);
        v70(v53, v36);
        goto LABEL_13;
      }

      v54 = *(v42 + 8);
      v54(v75, v36);
      v54(v53, v36);
    }

    v41 = v89;
    v40 = v90;
  }

  sub_10003FDF4(v39, &unk_100CB2CF0);
  if (qword_100CA2700 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_10000703C(v55, qword_100D90B68);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "Failed to generate date range for the calendar view in the moon detail view", v58, 2u);
  }

  v59 = v88;
  Location.timeZone.getter();
  v60 = type metadata accessor for CalendarViewModel(0);
  v61 = *(v42 + 16);
  v62 = v78;
  v61(v41 + v60[5], v59 + v78, v36);
  v61(v41 + v60[6], v59 + v62, v36);
  v63 = v81;
  v61(v41 + v60[7], v59 + *(v81 + 28), v36);
  sub_100060DE0(v59 + *(v63 + 32), v41 + v60[8], &unk_100CB2CF0);

  Location.coordinate.getter();
  MoonPhase.Hemisphere.init(latitude:)();
LABEL_13:
  (*(v86 + 8))(v85, v87);
  result = (*(v83 + 8))(v93, v84);
  *(v41 + v60[9]) = v40;
  return result;
}

uint64_t sub_100312E50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v87[1] = a2;
  v91 = type metadata accessor for OverviewTableRowViewModel();
  v102 = *(v91 - 8);
  v3 = __chkstk_darwin(v91);
  v90 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v89 = v87 - v5;
  v114 = type metadata accessor for Date();
  v106 = *(v114 - 8);
  __chkstk_darwin(v114);
  v7 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10022C350(&qword_100CAA858);
  v8 = __chkstk_darwin(v101);
  v100 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v99 = v87 - v10;
  v105 = sub_10022C350(&qword_100CAC7C8);
  v103 = *(v105 - 8);
  v11 = __chkstk_darwin(v105);
  v98 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v104 = v87 - v13;
  v14 = type metadata accessor for TimeZone();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA1ED0 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v18 = qword_100CAC718;
    Location.timeZone.getter();
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v17, v14);
    v109 = v18;
    [v18 setTimeZone:isa];

    v20 = sub_10031480C(a1);
    a1 = *(v20 + 16);
    v108 = v7;
    if (!a1)
    {
      break;
    }

    v115 = _swiftEmptyArrayStorage;
    sub_1006A7AFC();
    v14 = v115;
    v17 = sub_100314C80();
    v23 = 0;
    v24 = v20 + 64;
    v96 = v106 + 4;
    v97 = v106 + 2;
    v92 = v21;
    v88 = v20 + 72;
    v15 = 1;
    v93 = a1;
    v94 = v20 + 64;
    v95 = v20;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v20 + 32))
    {
      v7 = v17 >> 6;
      if ((*(v24 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_53;
      }

      if (*(v20 + 36) != v21)
      {
        goto LABEL_54;
      }

      v111 = v21;
      v112 = 1 << v17;
      LODWORD(v107) = v22;
      v110 = v23;
      v25 = v101;
      v26 = *(v101 + 48);
      v27 = *(v20 + 48);
      v113 = v14;
      v28 = v106;
      v29 = v106[2];
      v30 = v99;
      v31 = v114;
      v29(v99, v27 + v106[9] * v17, v114);
      v32 = *(v20 + 56);
      v33 = type metadata accessor for CalendarMoonPhaseData(0);
      sub_100314CC0(v32 + *(*(v33 - 8) + 72) * v17, &v30[v26]);
      v34 = v28[4];
      v35 = v100;
      v34(v100, v30, v31);
      v36 = *(v25 + 48);
      a1 = v98;
      sub_100314D24(&v30[v26], &v35[v36]);
      v37 = *(v105 + 48);
      v29(a1, v35, v31);
      *(a1 + v37) = v35[v36];
      v38 = v35;
      v14 = v113;
      sub_10003FDF4(v38, &qword_100CAA858);
      v115 = v14;
      v39 = *(v14 + 16);
      if (v39 >= *(v14 + 24) >> 1)
      {
        sub_1006A7AFC();
        v14 = v115;
      }

      *(v14 + 16) = v39 + 1;
      sub_100314D88(a1, v14 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v39);
      v20 = v95;
      v15 = 1;
      v40 = 1 << *(v95 + 32);
      if (v17 >= v40)
      {
        goto LABEL_55;
      }

      v24 = v94;
      v41 = *(v94 + 8 * v7);
      if ((v41 & v112) == 0)
      {
        goto LABEL_56;
      }

      if (*(v95 + 36) != v111)
      {
        goto LABEL_57;
      }

      v42 = v41 & (-2 << (v17 & 0x3F));
      if (v42)
      {
        v40 = __clz(__rbit64(v42)) | v17 & 0x7FFFFFFFFFFFFFC0;
        v7 = v108;
        a1 = v93;
      }

      else
      {
        v43 = v7 << 6;
        v44 = v7 + 1;
        v45 = (v88 + 8 * v7);
        v7 = v108;
        a1 = v93;
        while (v44 < (v40 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            sub_100049534(v17, v111, v107 & 1);
            v40 = __clz(__rbit64(v46)) + v43;
            goto LABEL_20;
          }
        }

        sub_100049534(v17, v111, v107 & 1);
      }

LABEL_20:
      v22 = 0;
      v23 = v110 + 1;
      v17 = v40;
      v21 = v92;
      if (v110 + 1 == a1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

LABEL_21:

  sub_10005B714(&qword_100CA7020);
  v48 = v105;
  v49 = Array.sorting<A>(on:)();

  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v101 = v49;
    v52 = v49 + v51;
    v53 = *(v48 + 48);
    v112 = (v106 + 4);
    v113 = v53;
    v54 = *(v103 + 72);
    v107 = 0x8000000100AC0290;
    v110 = v102 + 32;
    v111 = v54;
    v55 = (v106 + 1);
    v56 = _swiftEmptyArrayStorage;
    v106 = 0x8000000100AC0230;
    do
    {
      v57 = v104;
      sub_100060DE0(v52, v104, &qword_100CAC7C8);
      (*v112)(v7, v57, v114);
      v58 = MoonPhase.rawValue.getter();
      v60 = v59;
      if (v58 == MoonPhase.rawValue.getter() && v60 == v61)
      {
      }

      else
      {
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v63 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v64 = Date._bridgeToObjectiveC()().super.isa;
      v65 = [v109 stringForObjectValue:v64];

      if (v65)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v66 = [objc_opt_self() mainBundle];
        v116._object = v107;
        v67._countAndFlagsBits = 0x6E6F6F4D2077654ELL;
        v67._object = 0xE800000000000000;
        v68._countAndFlagsBits = 0;
        v68._object = 0xE000000000000000;
        v116._countAndFlagsBits = 0xD000000000000059;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v67, 0, v66, v68, v116);

        OverviewTableRowViewModel.init(id:title:value:shouldDividerHavePadding:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10069E948();
          v56 = v82;
        }

        v69 = v56[2];
        v7 = v108;
        if (v69 >= v56[3] >> 1)
        {
          sub_10069E948();
          v56 = v83;
        }

        v56[2] = v69 + 1;
        (*(v102 + 32))(v56 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v69, v89, v91);
      }

LABEL_36:
      v70 = MoonPhase.rawValue.getter();
      v72 = v71;
      if (v70 == MoonPhase.rawValue.getter() && v72 == v73)
      {
      }

      else
      {
        v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v75 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      v76 = Date._bridgeToObjectiveC()().super.isa;
      v77 = [v109 stringForObjectValue:v76];

      if (v77)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v78 = [objc_opt_self() mainBundle];
        v117._object = v106;
        v117._countAndFlagsBits = 0xD00000000000005ALL;
        v79._countAndFlagsBits = 0x6F6F4D206C6C7546;
        v79._object = 0xE90000000000006ELL;
        v80._countAndFlagsBits = 0;
        v80._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, v78, v80, v117);

        OverviewTableRowViewModel.init(id:title:value:shouldDividerHavePadding:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10069E948();
          v56 = v84;
        }

        v81 = v56[2];
        if (v81 >= v56[3] >> 1)
        {
          sub_10069E948();
          v56 = v85;
        }

        (*v55)(v7, v114);
        v56[2] = v81 + 1;
        (*(v102 + 32))(v56 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v81, v90, v91);
        goto LABEL_50;
      }

LABEL_49:
      (*v55)(v7, v114);
LABEL_50:
      v52 += v111;
      --v50;
    }

    while (v50);
  }

  return OverviewTableViewModel.init(rows:)();
}

uint64_t sub_100313AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CAC7C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_100060DE0(a1, &v9 - v5, &qword_100CAC7C8);
  v7 = type metadata accessor for Date();
  return (*(*(v7 - 8) + 32))(a2, v6, v7);
}

uint64_t sub_100313BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v93 = a6;
  v94 = a5;
  v98 = a4;
  v86 = a7;
  v92 = type metadata accessor for InterpolatedEphemeris();
  v80 = *(v92 - 8);
  __chkstk_darwin(v92);
  v87 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CAC7E0);
  v12 = __chkstk_darwin(v11 - 8);
  v91 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v90 = &v78 - v14;
  v100 = type metadata accessor for Calendar.Component();
  v85 = *(v100 - 8);
  __chkstk_darwin(v100);
  v81 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v16 - 8);
  v84 = (&v78 - v17);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v99 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v96 = &v78 - v23;
  __chkstk_darwin(v22);
  v25 = &v78 - v24;
  swift_beginAccess();
  v27 = v19 + 16;
  v26 = *(v19 + 16);
  v97 = a1;
  v26(v25, a1, v18);
  v28 = *(type metadata accessor for MoonCalendarInput() + 20);
  v82 = a3;
  LOBYTE(a3) = Date.isSameDay(as:timeZone:)();
  v83 = v19;
  v30 = *(v19 + 8);
  v29 = v19 + 8;
  v102 = v18;
  v101 = v30;
  v30(v25, v18);
  if (a3)
  {
    v31 = v86;
    v32 = v102;
    v26(v86, a2 + v28, v102);
LABEL_3:
    v33 = v31;
    v34 = v32;
    return sub_10001B350(v33, 0, 1, v34);
  }

  v89 = a2;
  v95 = v26;
  v35 = MoonPhase.illuminatedFraction.getter();
  if (v36)
  {
    v37 = v97;
    swift_beginAccess();
    v38 = v102;
    v95(v25, v37, v102);
    v39 = v86;
    Date.noon(timeZone:)();
    v101(v25, v38);
LABEL_22:
    v33 = v39;
    v34 = v38;
    return sub_10001B350(v33, 0, 1, v34);
  }

  v79 = v35;
  v40 = v85;
  v41 = v81;
  v42 = v100;
  v85[13](v81, enum case for Calendar.Component.day(_:), v100);
  v43 = v97;
  swift_beginAccess();
  v44 = v102;
  v95(v25, v43, v102);
  v45 = v84;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v101(v25, v44);
  (v40[1])(v41, v42);
  result = sub_100024D10(v45, 1, v44);
  if (result != 1)
  {
    v47 = *(v83 + 32);
    v83 += 32;
    v81 = v47;
    (v47)(v96, v45, v102);
    swift_beginAccess();
    swift_beginAccess();
    v48 = 0;
    v85 = (v80 + 32);
    v84 = (v80 + 8);
    v49 = v95;
    v88 = v27;
    while (1)
    {
      v50 = v102;
      v49(v25, v43, v102);
      Date.wc_addHours(_:calendar:)();
      v51 = v99;
      v101(v25, v50);
      if ((static Date.< infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v52 = v43;
      v53 = v93[10];
      v100 = v93[11];
      sub_1000161C0(v93 + 7, v53);
      v54 = v102;
      v49(v25, v52, v102);
      Location.coordinate.getter();
      v55 = v51;
      v56 = v90;
      v57 = v54;
      dispatch thunk of MoonInterpolationProviderType.interpolate(for:startOfDay:endOfDay:coordinate:dayMoonPhase:)();
      v58 = v25;
      v101(v25, v57);
      v59 = v91;
      sub_100060DE0(v56, v91, &qword_100CAC7E0);
      v60 = v92;
      if (sub_100024D10(v59, 1, v92) == 1)
      {
        sub_10003FDF4(v56, &qword_100CAC7E0);
        v101(v55, v102);
        sub_10003FDF4(v59, &qword_100CAC7E0);
      }

      else
      {
        v61 = v87;
        (*v85)(v87, v59, v60);
        InterpolatedEphemeris.illuminatedFraction.getter();
        v62 = sub_1005269D0();
        (*v84)(v61, v60);
        sub_10003FDF4(v56, &qword_100CAC7E0);
        if (v62)
        {
          v32 = v102;
          v101(v96, v102);
          v31 = v86;
          (v81)(v86, v99, v32);
          goto LABEL_3;
        }

        v101(v99, v102);
      }

      ++v48;
      v43 = v97;
      v25 = v58;
      v49 = v95;
      if (v48 == 25)
      {
        goto LABEL_16;
      }
    }

    v101(v51, v102);
LABEL_16:
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000703C(v63, qword_100D90B68);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v100 = v29;
      v67 = v66;
      v99 = swift_slowAlloc();
      v103[0] = v99;
      *v67 = 136446722;
      v68 = MoonPhase.description.getter();
      v70 = sub_100078694(v68, v69, v103);

      *(v67 + 4) = v70;
      *(v67 + 12) = 2050;
      *(v67 + 14) = v79;
      *(v67 + 22) = 2082;
      swift_beginAccess();
      v71 = v102;
      v72 = v95;
      v95(v25, v43, v102);
      sub_10005B714(&qword_100CA5720);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v101(v25, v71);
      v76 = sub_100078694(v73, v75, v103);

      *(v67 + 24) = v76;
      _os_log_impl(&_mh_execute_header, v64, v65, "Did not find hour in day that matched expected illuminated fraction; moonPhase=%{public}s, expectedIlluminatedFraction=%{public}f, day=%{public}s", v67, 0x20u);
      swift_arrayDestroy();

      v39 = v86;
    }

    else
    {

      v39 = v86;
      v72 = v95;
    }

    swift_beginAccess();
    v38 = v102;
    v72(v25, v43, v102);
    Date.noon(timeZone:)();
    v77 = v101;
    v101(v25, v38);
    v77(v96, v38);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003147A8()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_10031480C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_100314C08(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = &v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1006A76B8(0, v4, v5);
  sub_100314970(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_100314970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a1;
  v4 = type metadata accessor for CalendarMoonPhaseData(0);
  v39 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v7 = 0;
  v40 = a3;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v7 << 6);
    v19 = *(v40 + 56);
    v20 = *(v39 + 72);
    v38 = v18;
    sub_100314CC0(v19 + v20 * v18, v6);
    v21 = v6;
    v22 = MoonPhase.rawValue.getter();
    v24 = v23;
    if (v22 == MoonPhase.rawValue.getter() && v24 == v25)
    {
LABEL_22:

      goto LABEL_23;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
LABEL_23:
      v6 = v21;
      sub_100314DF8(v21);
LABEL_24:
      *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
LABEL_27:
        sub_100673160();
        return;
      }
    }

    else
    {
      v28 = MoonPhase.rawValue.getter();
      v30 = v29;
      if (v28 == MoonPhase.rawValue.getter() && v30 == v31)
      {
        goto LABEL_22;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v6 = v21;
      sub_100314DF8(v21);
      if (v33)
      {
        goto LABEL_24;
      }
    }
  }

  v16 = v7;
  while (1)
  {
    v7 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v7 >= v14)
    {
      goto LABEL_27;
    }

    v17 = *(v9 + 8 * v7);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_100314C08(void *result, uint64_t a2, uint64_t a3)
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

    sub_100314970(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_100314CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarMoonPhaseData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100314D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarMoonPhaseData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100314D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC7C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100314DF8(uint64_t a1)
{
  v2 = type metadata accessor for CalendarMoonPhaseData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100314E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarMoonPhaseData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100314EB8(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA1EE8 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA1EF8 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA1EF0 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA1EE0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA1ED8 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

void sub_100315024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BB80;
  v22[0] = xmmword_100A2C3F0;
  v22[1] = xmmword_100A3BB90;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3BBA0;
  v20[0] = xmmword_100A3BBB0;
  v20[1] = xmmword_100A3BBC0;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BB70;
  v19[1] = xmmword_100A3BBD0;
  v18[0] = xmmword_100A2C3F0;
  v18[1] = xmmword_100A3BBC0;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BBE0;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A3BB90;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBF0;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC10;
  v36 = v11;
  v37 = &v10;
  sub_100017704(a2, a3, a4, a5, a6, a7, a8, &v9, 0, 1, 10, 11, 0, 1, 12, 13, 0, 1, 9, 10);
  qword_100D8FAE0 = v8;
}

void sub_10031514C()
{
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BB80;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBC0;
  v16 = v15;
  v17 = v14;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBA0;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC10;
  v18 = v13;
  v19 = v12;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBD0;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC10;
  v20 = v11;
  v21 = v10;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A2C3F0;
  v22 = v9;
  v23 = v8;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC00;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC20;
  v24 = v7;
  v25 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BC30;
  v26 = v5;
  v27 = v4;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BC30;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC00;
  v28 = v3;
  v29 = v2;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC20;
  v30 = v1;
  sub_100556A74();
  qword_100D8FAE8 = v0;
}

void sub_100315270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = xmmword_100A2D320;
  v24[1] = xmmword_100A3BC40;
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BC30;
  v25 = v24;
  v26 = v23;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v21[0] = xmmword_100A3BBD0;
  v21[1] = xmmword_100A3BB80;
  v27 = v22;
  v28 = v21;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = xmmword_100A3BC30;
  v29 = v19;
  v30 = v18;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3BB80;
  v31 = v17;
  v32 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC30;
  v33 = v15;
  v34 = v14;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BB80;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v35 = v13;
  v36 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC50;
  v37 = v11;
  v38 = &v10;
  sub_100017704(a2, a3, a4, a5, a6, a7, a8, &v9, 2, 4, 4, 5, 1, 2, 7, 8, 2, 3, 5, 6);
  qword_100D8FAF0 = v8;
}

void sub_100315398()
{
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BBD0;
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BB80;
  v18 = v17;
  v19 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC50;
  v20 = v15;
  v21 = v14;
  v11 = 0;
  v12 = xmmword_100A3BC70;
  v13 = 2;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BB80;
  v22 = &v11;
  v23 = v10;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BC50;
  v8[0] = xmmword_100A2D320;
  v8[1] = xmmword_100A3BBB0;
  v24 = v9;
  v25 = v8;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BB80;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC50;
  v26 = v7;
  v27 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC60;
  v28 = v5;
  v29 = v4;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC60;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BB80;
  v30 = v3;
  v31 = v2;
  v1[0] = xmmword_100A2D320;
  v1[1] = xmmword_100A3BC40;
  v32 = v1;
  sub_100556A74();
  qword_100D8FAF8 = v0;
}

void sub_1003154CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A2D320;
  v23[1] = xmmword_100A3BBD0;
  v22[0] = xmmword_100A3BC50;
  v22[1] = xmmword_100A3BC60;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3AEB0;
  v20[0] = xmmword_100A3BC60;
  v20[1] = xmmword_100A3BC40;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BC80;
  v19[1] = xmmword_100A2C3F0;
  v18[0] = xmmword_100A3BC50;
  v18[1] = xmmword_100A3BC40;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BC90;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BBD0;
  v16[1] = xmmword_100A3BC60;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A2D320;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A3BC50;
  v13[1] = xmmword_100A3BBD0;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v36 = v11;
  v37 = &v10;
  sub_100017704(a2, a3, a4, a5, a6, a7, a8, &v9, 4, 5, 2, 3, 3, 4, 4, 5, 2, 3, 3, 4);
  qword_100D8FB00 = v8;
}

uint64_t sub_1003155EC(uint64_t a1, void (*a2)(char *))
{
  v35 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v38 = v6;
  __chkstk_darwin(v7);
  sub_100003878();
  v37 = v8;
  __chkstk_darwin(v9);
  sub_100003878();
  v36 = v10;
  __chkstk_darwin(v11);
  sub_100013628();
  __chkstk_darwin(v12);
  v14 = v34 - v13;
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  v18 = type metadata accessor for LocationViewComponent();
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CA5008);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  v25 = v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v34 - v27;

  sub_1005D71C4(v29, a2);
  v34[1] = v30;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather31LocationSevereNewsConfiguration8_Storage_map, v21, type metadata accessor for LocationViewComponent);
  a2(v21);
  sub_100020648();
  sub_10001B350(v28, 0, 1, v35);
  sub_1000176E8(OBJC_IVAR____TtCV7Weather31LocationSevereNewsConfiguration8_Storage_airQuality);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather31LocationSevereNewsConfiguration8_Storage_newsArticle);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather31LocationSevereNewsConfiguration8_Storage_severeAlert);
  a2(v21);
  sub_100020648();
  sub_100035AD0(v28, v25, &qword_100CA5008);
  sub_10031694C(v17, v36, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v14, v37, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v38, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for SevereNewsContent._Storage(0);
  swift_allocObject();
  sub_1002D9548();
  v32 = v31;
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v17, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v28, &qword_100CA5008);
  return v32;
}

uint64_t sub_100315980(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v131 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v135 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    sub_10022C350(&qword_100CAC7F0);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_newsArticle);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v30 = sub_100013600();
    sub_100003E18(v30);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_airQuality);
    *(v12 + 128) = sub_1001B38A0(v30);
    *(v12 + 136) = v31;
    *(v12 + 144) = v32;
    v132 = v13 + 2 * v14;
    v133 = v14;
    v33 = v14;
    v34 = v15;
    v35 = swift_allocObject();
    v36 = sub_10001361C(v35, xmmword_100A2D320) + v13;
    v37 = a1;
    v38 = *(a1 + 16);
    v39 = v37;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v38 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v36[v33], v7);
    *(v12 + 152) = sub_1001B38A0(v35);
    *(v12 + 160) = v40;
    *(v12 + 168) = v41;
    v134 = v34;
    v42 = swift_allocObject();
    sub_1000056EC(v42);
    v44 = v43 + v13;
    v45 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v45 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v133[v44], v7);
    *(v12 + 176) = sub_1001B38A0(v35);
    *(v12 + 184) = v46;
    *(v12 + 192) = v47;
    v48 = swift_allocObject();
    sub_1000056EC(v48);
    v50 = v49 + v13;
    v51 = v135;
    v52 = *(v135 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v53 = v133;
    sub_10031694C(v52 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v133[v50], v7);
    *(v12 + 200) = sub_1001B38A0(v35);
    *(v12 + 208) = v54;
    *(v12 + 216) = v55;
    v56 = sub_10000C998();
    sub_1000056EC(v56);
    v58 = v57 + v13;
    v59 = *(v51 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v60 = v58 + v53;
    v61 = v53;
    sub_10031694C(v59 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v60, v7);
    *(v12 + 224) = sub_1001B38A0(v35);
    *(v12 + 232) = v62;
    *(v12 + 240) = v63;
    v64 = sub_10000C998();
    sub_100003E18(v64);
    v66 = v65 + v13;
    v67 = *(v51 + 16);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v65 + v13, v7);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v66 + v61, v7);
    *(v12 + 248) = sub_1001B38A0(v64);
    *(v12 + 256) = v68;
    *(v12 + 264) = v69;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BCA0;
    v70 = sub_10022C350(&qword_100CAC7F0);
    v71 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v72 = *(v7 + 72);
    v73 = *(v7 + 80);
    v74 = v70;
    v75 = swift_allocObject();
    sub_10001361C(v75, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v76, v75 + v71, v77);
    *(v12 + 32) = sub_1001B38A0(v75);
    *(v12 + 40) = v78;
    *(v12 + 48) = v79;
    sub_1000167B0();
    v80 = swift_allocObject();
    sub_1000056EC(v80);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_newsArticle);
    *(v12 + 56) = sub_1001B38A0(v75);
    *(v12 + 64) = v81;
    *(v12 + 72) = v82;
    sub_1000167B0();
    v83 = swift_allocObject();
    sub_1000056EC(v83);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 80) = sub_1001B38A0(v75);
    *(v12 + 88) = v84;
    *(v12 + 96) = v85;
    sub_1000167B0();
    v86 = swift_allocObject();
    sub_1000056EC(v86);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 104) = sub_1001B38A0(v75);
    *(v12 + 112) = v87;
    *(v12 + 120) = v88;
    sub_1000167B0();
    v89 = swift_allocObject();
    sub_1000056EC(v89);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_airQuality);
    *(v12 + 128) = sub_1001B38A0(v75);
    *(v12 + 136) = v90;
    *(v12 + 144) = v91;
    v134 = v73;
    v92 = swift_allocObject();
    sub_1000056EC(v92);
    sub_10031694C(v9, v93 + v71, v7);
    *(v12 + 152) = sub_1001B38A0(v75);
    *(v12 + 160) = v94;
    *(v12 + 168) = v95;
    v96 = v71 + 2 * v72;
    v97 = v72;
    sub_1000167B0();
    v98 = swift_allocObject();
    v99 = sub_10001361C(v98, xmmword_100A2D320);
    v133 = v9;
    v100 = v99 + v71;
    v101 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v131[0] = v97;
    sub_10031694C(v101 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v100[v97], v7);
    *(v12 + 176) = sub_1001B38A0(v98);
    *(v12 + 184) = v102;
    *(v12 + 192) = v103;
    v131[1] = v96;
    v104 = swift_allocObject();
    sub_100003E18(v104);
    v106 = v105 + v71;
    v107 = v135;
    v108 = *(v135 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v106 + v97, v7);
    *(v12 + 200) = sub_1001B38A0(v104);
    *(v12 + 208) = v109;
    *(v12 + 216) = v110;
    sub_1000167B0();
    v132 = v74;
    v111 = swift_allocObject();
    sub_100003E18(v111);
    v113 = v112 + v71;
    v114 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v115 = v131[0];
    sub_10031694C(v114 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v113 + v131[0], v7);
    *(v12 + 224) = sub_1001B38A0(v111);
    *(v12 + 232) = v116;
    *(v12 + 240) = v117;
    sub_1000167B0();
    v118 = swift_allocObject();
    sub_100003E18(v118);
    v120 = v119 + v71;
    v121 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v120 + v115, v7);
    *(v12 + 248) = sub_1001B38A0(v118);
    *(v12 + 256) = v122;
    *(v12 + 264) = v123;
    v124 = swift_allocObject();
    sub_100003E18(v124);
    v126 = v125 + v71;
    v127 = *(v135 + 16);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v125 + v71, v7);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v126 + v115, v7);
    *(v12 + 272) = sub_1001B38A0(v124);
    *(v12 + 280) = v128;
    *(v12 + 288) = v129;
    sub_1003169AC(v133, v7);
  }

  return v12;
}

uint64_t sub_100316258(char a1, char a2, uint64_t a3)
{
  v79 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v76 = &v72 - v10;
  v11 = sub_10022C350(&qword_100CA5008);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = type metadata accessor for LocationComponentViewModel();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v72 - v32;
  __chkstk_darwin(v34);
  v36 = &v72 - v35;
  v37 = sub_100314EB8(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v38, v14, &qword_100CA5008);
  v39 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v14, 1, v39) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v40], v24, v41);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v42);
    sub_100566A5C(v37, v81);
    if ((v82 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v45);
      v43 = 0;
      v44 = v79;
      v46 = &v33[*(v79 + 20)];
      v47 = v81[1];
      *v46 = v81[0];
      *(v46 + 1) = v47;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v43 = 1;
  v44 = v79;
LABEL_7:
  sub_10001B350(v33, v43, 1, v44);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v37, v83);
  sub_100924AFC(v3, v83, v80);
  sub_10031694C(*(a3 + 16) + *(v39 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v37, v84);
  v48 = v74;
  if (v85 & 1) != 0 || (sub_100011474(), v49 = v76, sub_1001B6FB0(v20, v76, v50), v51 = (v49 + *(v44 + 20)), v52 = v84[1], *v51 = v84[0], v51[1] = v52, sub_100035AD0(v36, v48, &qword_100CAC7F8), sub_10001BD64(), v55 = v73, sub_10031694C(v53 + v54, v73, v56), sub_100566AB0(v37, v86), v57 = v77, (v87))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v55, v57, v58);
    v59 = (v57 + *(v44 + 20));
    v60 = v86[1];
    *v59 = v86[0];
    v59[1] = v60;
    sub_10001BD64();
    v63 = v75;
    sub_10031694C(v61 + v62, v75, v64);
    sub_100566AE8(v37, v88);
    if ((v89 & 1) == 0)
    {

      sub_100011474();
      v65 = v63;
      v66 = v78;
      sub_1001B6FB0(v65, v78, v67);
      v68 = (v66 + *(v44 + 20));
      v69 = v88[1];
      *v68 = v88[0];
      v68[1] = v69;
      v70 = sub_100924C14(v80, v49, v48, v57, v66);
      sub_1000180EC(v36, &qword_100CAC7F8);
      return v70;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003168DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC7F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031694C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1003169AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100316A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_10022C350(&unk_100CE49D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A3BD20;
  *(v6 + 32) = a1;
  v7 = *(type metadata accessor for NetworkActivityCompletion() + 24);
  v8 = type metadata accessor for NWActivity.CompletionReason();
  (*(*(v8 - 8) + 16))(&a3[v7], a2, v8);
  sub_10001B350(&a3[v7], 0, 1, v8);
  *a3 = _swiftEmptyArrayStorage;
  *(a3 + 1) = v6;
}

uint64_t sub_100316AF0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAC800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100316B90(uint64_t a1, uint64_t a2)
{
  v2[40] = a1;
  v2[41] = a2;
  type metadata accessor for MainActor();
  v2[42] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[43] = v4;
  v2[44] = v3;

  return _swift_task_switch(sub_100316C28, v4, v3);
}

uint64_t sub_100316C28()
{
  v43 = v0;
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 360) = sub_10000703C(v2, qword_100D90CF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    LOBYTE(v1) = v5;
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Performing Measure instruction", v5, 2u);
    sub_10000FC14();
  }

  v6 = *(v0 + 320);

  v7 = objc_opt_self();
  *(v0 + 368) = v7;
  v8 = [v7 sharedApplication];
  *(v0 + 376) = v8;
  v9 = *v6;
  *(v0 + 418) = *v6;
  v10 = sub_1004CA118(v9);
  sub_1007B9DAC(v10, v11, v8);
  [v8 _startHangTracer];
  sub_1003174D4(v6, v0 + 16);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (sub_1000054A4(v13))
  {
    swift_slowAlloc();
    v1 = sub_10000C940();
    v42 = v1;
    *v6 = 136315138;
    *(v0 + 417) = *(v0 + 16);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_100317530(v0 + 16);
    v17 = sub_100078694(v14, v16, &v42);

    *(v6 + 4) = v17;
    sub_10001363C(&_mh_execute_header, v18, v19, "Started test: %s");
    sub_100006F14(v1);
    sub_10000FC14();
    sub_100007E54();
  }

  else
  {

    sub_100317530(v0 + 16);
  }

  v20 = *(v0 + 328);
  v21 = v20[2];
  *(v0 + 384) = v21;
  *(v0 + 392) = 0;
  if (v21)
  {
    sub_1000228CC(v20);
    v41 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 400) = v23;
    *v23 = v0;
    v24 = sub_10001E7F4(v23);

    return v41(v24);
  }

  else
  {
    sub_1000193AC();
    v26 = [v8 sharedApplication];
    v27 = sub_1004CA118(v1);
    sub_1007B9DB8(v27, v28, v26);

    sub_1003174D4(v6, v0 + 168);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = sub_1000054A4(v30);
    v32 = *(v0 + 376);
    if (v31)
    {
      swift_slowAlloc();
      v33 = sub_10000C940();
      v42 = v33;
      *v6 = 136315138;
      *(v0 + 416) = *(v0 + 168);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      sub_100317530(v0 + 168);
      v37 = sub_100078694(v34, v36, &v42);

      *(v6 + 4) = v37;
      sub_10001363C(&_mh_execute_header, v38, v39, "Finished test: %s");
      sub_100006F14(v33);
      sub_10000FC14();
      sub_100007E54();
    }

    else
    {

      sub_100317530(v0 + 168);
    }

    sub_100003B14();

    return v40();
  }
}

uint64_t sub_100317038()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 352);
  v4 = *(v2 + 344);
  if (v0)
  {
    v5 = sub_1003173CC;
  }

  else
  {
    v5 = sub_100317174;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100317174()
{
  v27 = v2;
  v4 = *(v2 + 384);
  v5 = *(v2 + 392) + 1;
  *(v2 + 392) = v5;
  if (v5 == v4)
  {
    sub_1000193AC();
    v6 = [v0 sharedApplication];
    v7 = sub_1004CA118(v3);
    sub_1007B9DB8(v7, v8, v6);

    sub_1003174D4(v1, v2 + 168);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = sub_1000054A4(v10);
    v12 = *(v2 + 376);
    if (v11)
    {
      swift_slowAlloc();
      v13 = sub_10000C940();
      v26 = v13;
      *v1 = 136315138;
      *(v2 + 416) = *(v2 + 168);
      v14 = String.init<A>(describing:)();
      v16 = v15;
      sub_100317530(v2 + 168);
      v17 = sub_100078694(v14, v16, &v26);

      *(v1 + 4) = v17;
      sub_10001363C(&_mh_execute_header, v18, v19, "Finished test: %s");
      sub_100006F14(v13);
      sub_10000FC14();
      sub_100007E54();
    }

    else
    {

      sub_100317530(v2 + 168);
    }

    sub_100003B14();

    return v24();
  }

  else
  {
    sub_1000228CC((*(v2 + 328) + 40 * v5));
    v25 = (v20 + *v20);
    v21 = swift_task_alloc();
    *(v2 + 400) = v21;
    *v21 = v2;
    v22 = sub_10001E7F4();

    return v25(v22);
  }
}

uint64_t sub_1003173CC()
{

  sub_100003B14();

  return v1();
}

uint64_t sub_100317438(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002F5240;

  return sub_100316B90(a1, v4);
}

uint64_t sub_1003175BC(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *(v2 + 16);
  a2(0);
  sub_1000037E8();
  (*(v10 + 16))(v8, a1);
  type metadata accessor for ConditionDetailViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_10004F034(v8, v13, v9);
  sub_1000E17D8(v13);
  sub_10001E828();
  return sub_10004F518(v8, v11);
}

uint64_t sub_1003176D8(uint64_t a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  sub_100317AB8(a1, v4 - v3);
  type metadata accessor for ConditionDetailViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1000056FC();
  sub_1000E17D8(v8);
  sub_10001E828();
  return sub_10004F518(v5, v6);
}

uint64_t sub_1003177A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DetailCondition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DetailViewVisibilityTrackerModel();
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v13 = v12 - v11;
  v15 = v1[7];
  v14 = v1[8];
  sub_1000161C0(v2 + 4, v15);
  (*(*(v14 + 8) + 32))(v15);
  v16 = v2[7];
  v17 = v2[8];
  sub_1000161C0(v2 + 4, v16);
  v18 = type metadata accessor for ConditionDetailViewModel.Model(0);
  (*(v5 + 16))(v8, a1 + *(v18 + 36), v4);
  sub_100863584(v8, v13);
  v19 = *(v18 + 48);
  v20 = *(v10 + 28);
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v21 + 16))(v13 + v20, a1 + v19);
  v22 = *(v10 + 32);
  v23 = enum case for DetailViewOrigin.selector(_:);
  type metadata accessor for DetailViewOrigin();
  sub_1000037E8();
  (*(v24 + 104))(v13 + v22, v23);
  (*(*(v17 + 8) + 24))(v13, v16);
  return sub_10004F518(v13, type metadata accessor for DetailViewVisibilityTrackerModel);
}

uint64_t sub_1003179DC()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v3 = v2 - v1;
  type metadata accessor for ConditionDetailViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1000056FC();
  sub_1000E17D8(v6);
  sub_10001E828();
  return sub_10004F518(v3, v4);
}

uint64_t sub_100317AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartSelection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100317B1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CACA08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4948);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v20, v21);
      __chkstk_darwin(v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for MoonDetailInteractor();
      v19[3] = v11;
      v19[4] = &off_100C65320;
      v19[0] = v10;
      v12 = type metadata accessor for MoonDetailModule();
      v13 = swift_allocObject();
      v14 = sub_10002D7F8(v19, v11);
      __chkstk_darwin(v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_100C65320;
      v13[2] = v18;
      v13[7] = v5;
      sub_100006F14(v19);
      result = sub_100006F14(v20);
      a2[3] = v12;
      a2[4] = &off_100C52CF0;
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

uint64_t sub_100317D98()
{
  sub_10022C350(&qword_100CACA00);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CACA08);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CACA10);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CACA18);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4948);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100317F04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4918);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      a2[3] = &type metadata for MoonDetailTracker;
      a2[4] = &off_100C5F160;
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

uint64_t sub_100317FFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v25;
  if (v25)
  {
    v21 = v26;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CACA00);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v24)
    {
      v6 = sub_10002D7F8(v23, v24);
      __chkstk_darwin(v6);
      v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v22[3] = &type metadata for MoonDetailTracker;
      v22[4] = &off_100C5F160;
      v10 = swift_allocObject();
      v22[0] = v10;
      v11 = v8[1];
      v10[1] = *v8;
      v10[2] = v11;
      v10[3] = v8[2];
      v12 = type metadata accessor for MoonDetailInteractor();
      v13 = swift_allocObject();
      v14 = sub_10002D7F8(v22, &type metadata for MoonDetailTracker);
      __chkstk_darwin(v14);
      v16 = (&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v13[7] = &type metadata for MoonDetailTracker;
      v13[8] = &off_100C5F160;
      v18 = swift_allocObject();
      v19 = v16[1];
      v18[1] = *v16;
      v18[2] = v19;
      v18[3] = v16[2];
      v13[2] = v5;
      v13[3] = v21;
      v13[4] = v18;
      sub_100006F14(v22);
      result = sub_100006F14(v23);
      a2[3] = v12;
      a2[4] = &off_100C65320;
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

uint64_t sub_1003182E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CACA20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v33)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CACA28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v31)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CACA30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v29)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CACA38);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v24)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v5 = sub_10002D7F8(v23, v24);
  __chkstk_darwin(v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v7);
  v9 = *v7;
  v10 = type metadata accessor for NewsArticleComponentViewModelFactory();
  v22[3] = v10;
  v22[4] = &off_100C60578;
  v22[0] = v9;
  v11 = type metadata accessor for MoonDetailViewModelFactory();
  v12 = swift_allocObject();
  v13 = sub_10002D7F8(v22, v10);
  __chkstk_darwin(v13);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v15);
  v17 = *v15;
  v20 = v10;
  v21 = &off_100C60578;
  *&v19 = v17;
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v12 + 136) = sub_100857F38();
  type metadata accessor for Locale();
  type metadata accessor for ConditionUnits();
  sub_100318CD8();
  Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CACA48);
  swift_allocObject();
  *(v12 + 224) = Cache.init(_:)();
  sub_100013188(&v32, v12 + 16);
  sub_100013188(&v30, v12 + 56);
  sub_100013188(&v28, v12 + 96);
  sub_100013188(&v26, v12 + 144);
  sub_100013188(&v19, v12 + 184);
  sub_100006F14(v22);
  result = sub_100006F14(v23);
  a2[3] = v11;
  a2[4] = &off_100C75770;
  *a2 = v12;
  return result;
}

uint64_t sub_10031876C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v22;
  v4 = v23;
  v6 = v21;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CACA10);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v18, v19);
  v16 = type metadata accessor for MoonDetailInputFactory();
  v17 = &off_100C4ADB8;
  v15[0] = v7;
  sub_100035B30(v15, v14);
  v8 = swift_allocObject();
  sub_100013188(v14, v8 + 16);

  sub_100006F14(v15);
  sub_100006F14(v18);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100318B04;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CACA18);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v10 = *sub_1000161C0(v18, v19);
    v16 = type metadata accessor for MoonDetailViewModelFactory();
    v17 = &off_100C75770;
    v15[0] = v10;
    sub_100035B30(v15, v14);
    v11 = swift_allocObject();
    sub_100013188(v14, v11 + 16);

    sub_100006F14(v15);
    sub_100006F14(v18);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10009F868;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100318B0C;
    *(v13 + 24) = v11;
    sub_10022C350(&qword_100CA4948);
    swift_allocObject();
    return sub_10024A400(v3, v6, v5, v4, sub_10001BAA8, 0, sub_10026AB64, v12, sub_100318CB0, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100318B14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a3(&v5, &v4);
  return v5;
}

uint64_t sub_100318B54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a3(&v5, &v4);
  return v5;
}

uint64_t sub_100318B98(_OWORD *a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  return a3(v5);
}

uint64_t sub_100318C64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, void *))
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  a5(&v8, v6);
  return v8;
}

unint64_t sub_100318CD8()
{
  result = qword_100CACA40;
  if (!qword_100CACA40)
  {
    type metadata accessor for Locale();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CACA40);
  }

  return result;
}

uint64_t type metadata accessor for CompactGradientView()
{
  result = qword_100CACB68;
  if (!qword_100CACB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100318DA4()
{
  sub_100318E28();
  if (v0 <= 0x3F)
  {
    sub_100318ECC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100318E28()
{
  if (!qword_100CACB78)
  {
    sub_10022E824(&qword_100CA4BD8);
    sub_100006F64(&qword_100CA4BE0, &qword_100CA4BD8);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CACB78);
    }
  }
}

void sub_100318ECC()
{
  if (!qword_100CACB80)
  {
    type metadata accessor for AnimatedGradient();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CACB80);
    }
  }
}

uint64_t sub_100318F40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v20 = type metadata accessor for WeatherConditionBackgroundModel();
  v22 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CompactGradientView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for AnimatedGradient();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10022C350(&qword_100CACBB0);
  __chkstk_darwin(v9);
  v11 = (&v19 - v10);
  *v11 = static Alignment.center.getter();
  v11[1] = v12;
  sub_10022C350(&qword_100CACBB8);
  sub_10022C350(&qword_100CACB08);
  State.wrappedValue.getter();
  AnimatedLinearGradient.init(gradient:)();
  sub_100319638(v1, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_10031969C(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = (v11 + *(v9 + 36));
  *v15 = sub_10031989C;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  sub_1001108E0();
  sub_100319638(v2, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_10031969C(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v13);
  sub_100319760();
  sub_100281D9C();
  v17 = v20;
  View.onChange<A>(of:initial:_:)();

  (*(v22 + 8))(v4, v17);
  return sub_100319818(v11);
}

uint64_t sub_10031926C()
{
  v16[0] = type metadata accessor for AnimatedGradient();
  v1 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SkyBackgroundGradient();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherConditionBackgroundModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001108E0();
  WeatherConditionBackgroundModel.gradient.getter();
  (*(v9 + 8))(v11, v8);
  v12 = SkyBackgroundGradient.gradient()();
  (*(v5 + 8))(v7, v4);
  type metadata accessor for CompactGradientView();
  sub_10022C350(&qword_100CACB08);
  State.wrappedValue.getter();
  AnimatedGradient.visibleGradient.getter();
  (*(v1 + 8))(v3, v16[0]);
  v13 = static Gradient.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    v15 = static Animation.easeInOut(duration:)();
    __chkstk_darwin(v15);
    v16[-2] = v0;
    v16[-1] = v12;
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_10031955C()
{
  v0 = type metadata accessor for AnimatedGradient();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for CompactGradientView();
  sub_10022C350(&qword_100CACB08);
  State.wrappedValue.getter();
  AnimatedGradient.setGradient(gradient:)();
  return State.wrappedValue.setter();
}

uint64_t sub_100319638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompactGradientView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031969C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompactGradientView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100319760()
{
  result = qword_100CACBC0;
  if (!qword_100CACBC0)
  {
    sub_10022E824(&qword_100CACBB0);
    sub_100006F64(&qword_100CACBC8, &qword_100CACBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CACBC0);
  }

  return result;
}

uint64_t sub_100319818(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CACBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003198A0(char a1)
{
  v2 = type metadata accessor for Locale();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = sub_100008154();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_10001365C();
  if (a1)
  {
    sub_100005728();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10001E840();
  return String.init(localized:table:bundle:locale:comment:)();
}

unint64_t sub_1003199B0(__int16 a1)
{
  v1 = 0xD00000000000001DLL;
  if (a1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (HIBYTE(a1) > 3u || HIBYTE(a1) == 2)
  {
    return 0xD000000000000032;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100319A18(__int16 a1)
{
  v1 = HIBYTE(a1);
  v2 = type metadata accessor for Locale();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = sub_100008154();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_10001365C();
  if (v1 <= 3u && v1 != 2)
  {
    sub_100005728();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10001E840();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100319B28(int a1)
{
  v2 = type metadata accessor for Locale();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = sub_100008154();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_10001365C();
  v6 = BYTE1(a1) > 3u || BYTE1(a1) == 2;
  if (!v6 || (a1 & 0x10000) == 0)
  {
    sub_100005728();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10001E840();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100319C5C(char a1)
{
  v2 = type metadata accessor for Locale();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = sub_100008154();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_10001365C();
  if (a1)
  {
    sub_100005728();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10001E840();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100319D68(int a1, unsigned int a2)
{
  if ((a1 ^ a2))
  {
    return 0;
  }

  v5 = a2 >> 8;
  v6 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE1(a1));
  v8 = v7;
  if (v6 == PredictedLocationsAuthorizationState.rawValue.getter(v5) && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
}

uint64_t sub_100319E34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a2[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_100319D68(v2 | (a1[1] << 8) | *a1, v3 | (a2[1] << 8) | *a2);
}

_BYTE *storeEnumTagSinglePayload for OptInTipViewViewModel.TipKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100319F64()
{
  result = qword_100CACBD8;
  if (!qword_100CACBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CACBD8);
  }

  return result;
}

uint64_t sub_100319FB8()
{
  type metadata accessor for LocationViewCollisionOptions();
  swift_allocObject();
  return sub_100104640();
}

uint64_t sub_100319FF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v140 = a1;
  v3 = sub_10022C350(&unk_100CB2CF0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003C38();
  v139 = v5 - v6;
  __chkstk_darwin(v7);
  sub_100003918(v114 - v8);
  v9 = type metadata accessor for WeatherConditionBackgroundOptions.DisplayLocation();
  v10 = sub_100003E5C(v9, &v156);
  v137 = v11;
  __chkstk_darwin(v10);
  sub_1000038E4();
  sub_100003918(v12);
  v13 = type metadata accessor for WeatherConditionBackgroundConfig.CameraPositionType();
  v14 = sub_100003E5C(v13, &v155);
  v134 = v15;
  __chkstk_darwin(v14);
  sub_1000038E4();
  sub_100003918(v16);
  v17 = type metadata accessor for VFXEffectViewID();
  v18 = sub_100003E5C(v17, &v154);
  v132 = v19;
  __chkstk_darwin(v18);
  sub_1000038E4();
  sub_100003918(v20);
  v21 = type metadata accessor for Location.Identifier();
  v22 = sub_100003E5C(v21, &v153);
  v129 = v23;
  __chkstk_darwin(v22);
  sub_1000038E4();
  sub_100003918(v24);
  v25 = type metadata accessor for WeatherConditionBackgroundOptions();
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_1000038E4();
  v136 = v27;
  v28 = sub_10022C350(&qword_100CACCC0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  v147 = v114 - v30;
  v31 = type metadata accessor for Elevation();
  v32 = sub_100003E5C(v31, v149);
  v121 = v33;
  __chkstk_darwin(v32);
  sub_1000038E4();
  v146 = v34;
  v35 = type metadata accessor for CloudAltitudeKind();
  v36 = sub_100003E5C(v35, &v148);
  v120 = v37;
  __chkstk_darwin(v36);
  sub_1000038E4();
  v145 = v38;
  v39 = sub_10022C350(&qword_100CACCC8);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  v144 = v114 - v41;
  v42 = type metadata accessor for WeatherCondition();
  v43 = sub_100003E5C(v42, &v141);
  v114[0] = v44;
  __chkstk_darwin(v43);
  sub_1000038E4();
  sub_100003918(v45);
  v46 = type metadata accessor for VFXTestViewModel();
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_1000037D8();
  v50 = v49 - v48;
  v51 = type metadata accessor for Date();
  v52 = sub_100003E5C(v51, &v157);
  *&v148 = v53;
  __chkstk_darwin(v52);
  sub_1000038E4();
  sub_100003918(v54);
  v55 = type metadata accessor for Location();
  v56 = sub_100003E5C(v55, &v145);
  v117 = v57;
  __chkstk_darwin(v56);
  sub_100003C38();
  v115 = v58 - v59;
  __chkstk_darwin(v60);
  v123 = v114 - v61;
  v62 = type metadata accessor for BackgroundAnimationData();
  v63 = sub_100003E5C(v62, v152);
  v128 = v64;
  __chkstk_darwin(v63);
  sub_1000038E4();
  sub_100003918(v65);
  v66 = type metadata accessor for BackgroundAnimationKind();
  sub_1000037C4();
  v68 = v67;
  __chkstk_darwin(v69);
  sub_1000037D8();
  v72 = (v71 - v70);
  v73 = type metadata accessor for SkyBackgroundGradient();
  sub_1000037C4();
  v75 = v74;
  __chkstk_darwin(v76);
  sub_1000037D8();
  v79 = v78 - v77;
  v125 = v78 - v77;
  v80 = type metadata accessor for VFXTestView();
  (*(v75 + 16))(v79, v2 + v80[9], v73);
  v124 = v72;
  *v72 = 1;
  (*(v68 + 104))(v72, enum case for BackgroundAnimationKind.vfx(_:), v66);
  static Location.current.getter();
  v116 = v80;
  v81 = v80[10];
  v82 = *(v148 + 16);
  *&v148 = v148 + 16;
  v119 = v82;
  v82(v141, v2 + v81, v142);
  v83 = v2;
  sub_100988268();
  (*(v114[0] + 32))(v143, v50, v114[1]);
  v84 = [objc_opt_self() kilometersPerHour];
  sub_10031AE5C();
  Measurement.init(value:unit:)();
  sub_1000193CC();
  v85(v145);
  (*(v121 + 16))(v146, v2 + v80[13], v122);
  v86 = type metadata accessor for BackgroundMoonData();
  sub_10001B350(v147, 1, 1, v86);
  sub_10022C350(&qword_100CA7300);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_100A2C3F0;
  v88 = v115;
  static Location.current.getter();
  v89 = v127;
  Location.identifier.getter();
  (*(v117 + 8))(v88, v118);
  v90 = Location.Identifier.uniqueID.getter();
  v92 = v91;
  (*(v129 + 8))(v89, v130);
  *(v87 + 32) = v90;
  *(v87 + 40) = v92;
  sub_1000193CC();
  v93(v131);
  sub_1000193CC();
  v94(v133);
  sub_1000193CC();
  v95(v135);
  v96 = objc_opt_self();
  v97 = [v96 sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(&v151, v153);
  dispatch thunk of WindowType.bounds.getter();
  v98 = [v96 sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v150, v150[3]);
  dispatch thunk of WindowType.displayScale.getter();
  WeatherConditionBackgroundOptions.init(locationIDs:applyMask:applyLegibilityScrim:effectViewID:canShowCollisionLayer:cameraPositionType:displayLocation:windowBounds:displayScale:locationViewerOrientation:)();
  sub_100006F14(v150);
  sub_100006F14(&v151);
  v99 = v116;
  v100 = v138;
  v101 = v142;
  v102 = v119;
  v119(v138, v83 + v116[11], v142);
  sub_10001B350(v100, 0, 1, v101);
  v103 = v139;
  v102(v139, v83 + v99[12], v101);
  sub_10001B350(v103, 0, 1, v101);
  v104 = v126;
  BackgroundAnimationData.Model.init(location:date:conditionKind:windSpeed:cloudCover:cloudKind:elevation:moonData:options:isDayTime:sunrise:sunset:isReduceMotionEnabled:)();
  sub_1000193CC();
  v105(v104);
  v106 = type metadata accessor for InternalStateWeatherConditionBackgroundModifier(0);
  v107 = v140;
  WeatherConditionBackgroundModel.init(gradient:animationKind:animationData:)();
  v148 = *(v83 + 80);
  v108 = static Color.black.getter();
  sub_100035B30(v83 + 96, v107 + v106[7]);
  *v107 = sub_1009B71CC;
  *(v107 + 8) = 0;
  *(v107 + 16) = 0;
  *(v107 + v106[6]) = v148;
  v109 = (v107 + v106[8]);
  *v109 = 0;
  v109[1] = 0;
  v109[2] = 0;
  *(v107 + v106[9]) = 0;
  *(v107 + v106[10]) = v108;
  type metadata accessor for LocationViewCollisionOptions();
  sub_100061DAC(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions);
  swift_unknownObjectRetain();
  v110 = StateObject.wrappedValue.getter();
  v111 = static ObservableObject.environmentStore.getter();
  result = sub_10022C350(&qword_100CACCD0);
  v113 = (v107 + *(result + 36));
  *v113 = v111;
  v113[1] = v110;
  return result;
}

uint64_t sub_10031ACF4()
{
  v0 = type metadata accessor for VFXTestViewModel();
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  sub_100003C38();
  v4 = v2 - v3;
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_100988268();
  sub_100988268();
  v8 = sub_1007488C4(v7, v4);
  sub_10031ADBC(v4);
  sub_10031ADBC(v7);
  return v8 & 1;
}

uint64_t sub_10031ADBC(uint64_t a1)
{
  v2 = type metadata accessor for VFXTestViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10031AE5C()
{
  result = qword_100CAC428;
  if (!qword_100CAC428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CAC428);
  }

  return result;
}

unint64_t sub_10031AEA0()
{
  result = qword_100CACCD8;
  if (!qword_100CACCD8)
  {
    sub_10022E824(&qword_100CACCD0);
    sub_10031AF58();
    sub_100006F64(&qword_100CACCF8, &qword_100CACD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CACCD8);
  }

  return result;
}

unint64_t sub_10031AF58()
{
  result = qword_100CACCE0;
  if (!qword_100CACCE0)
  {
    sub_10022E824(&qword_100CACCE8);
    sub_100061DAC(&qword_100CACCF0, type metadata accessor for InternalStateWeatherConditionBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CACCE0);
  }

  return result;
}

uint64_t sub_10031B024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = a3;
  v98 = a4;
  v94 = a1;
  v95 = a2;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v86 = v5;
  v87 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v85 = v7 - v6;
  v88 = type metadata accessor for Calendar.Component();
  v8 = *(v88 - 8);
  __chkstk_darwin(v88);
  sub_1000037D8();
  v81 = v10 - v9;
  v11 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v11 - 8);
  sub_100003C38();
  v79 = v12 - v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  v90 = &v78 - v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v78 - v17;
  v19 = type metadata accessor for Date();
  sub_1000037C4();
  v96 = v20;
  __chkstk_darwin(v21);
  sub_100003C38();
  v84 = v22 - v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  v83 = &v78 - v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  v80 = &v78 - v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  v89 = &v78 - v29;
  type metadata accessor for DateComponents();
  sub_1000037C4();
  v92 = v31;
  v93 = v30;
  __chkstk_darwin(v30);
  sub_1000037D8();
  v34 = v33 - v32;
  sub_10022C350(&qword_100CA53E8);
  v35 = *(v8 + 72);
  v36 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100A2D320;
  v38 = v37 + v36;
  v82 = v8;
  v39 = *(v8 + 104);
  v40 = v88;
  v39(v37 + v36, enum case for Calendar.Component.year(_:), v88);
  v41 = enum case for Calendar.Component.month(_:);
  v42 = v38 + v35;
  v43 = v40;
  v39(v42, enum case for Calendar.Component.month(_:), v40);
  sub_10004BCB0(v37);
  Calendar.dateComponents(_:from:)();

  v91 = v34;
  Calendar.date(from:)();
  sub_10000554C(v18);
  v99 = v19;
  if (v50)
  {
    v44 = v18;
    v45 = v96;
  }

  else
  {
    v78 = v96[4];
    v78(v89, v18, v19);
    v47 = v81;
    v39(v81, v41, v40);
    v48 = v90;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v49 = *(v82 + 8);
    v49(v47, v43);
    sub_10000554C(v48);
    if (v50)
    {
      v45 = v96;
      (v96[1])(v89, v19);
      v46 = v83;
      v44 = v90;
      goto LABEL_8;
    }

    v73 = v78;
    v78(v80, v90, v19);
    v39(v47, v41, v43);
    v74 = v79;
    v75 = v89;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v49(v47, v43);
    v45 = v96;
    v76 = v96[1];
    v76(v75, v19);
    sub_10000554C(v74);
    if (!v77)
    {
      (*(v92 + 8))(v91, v93);
      v73(v95, v74, v19);
      return (v73)(v94, v80, v19);
    }

    v76(v80, v19);
    v44 = v74;
  }

  v46 = v83;
LABEL_8:
  sub_1001AEDF4(v44);
  v51 = v97;
  if (qword_100CA2700 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_10000703C(v52, qword_100D90B68);
  v53 = v99;
  (v45[2])(v46, v51, v99);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v100 = v57;
    *v56 = 136446210;
    sub_1000667B0(&qword_100CA5720, &type metadata accessor for Date);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v61 = sub_10004E450();
    v96 = v62;
    (v62)(v61, v99);
    v63 = sub_100078694(v58, v60, &v100);
    v53 = v99;

    *(v56 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v54, v55, "Failed to get month range from date: =%{public}s", v56, 0xCu);
    sub_100006F14(v57);
  }

  else
  {

    v64 = sub_10004E450();
    v96 = v65;
    (v65)(v64, v53);
  }

  v66 = v84;
  Date.wc_addDays(_:calendar:)();
  v67 = v85;
  Calendar.timeZone.getter();
  Date.startOfDay(timeZone:)();
  v68 = v87;
  v69 = *(v86 + 8);
  v69(v67, v87);
  v70 = v53;
  v71 = v96;
  (v96)(v66, v70);
  Date.wc_addDays(_:calendar:)();
  Calendar.timeZone.getter();
  Date.startOfDay(timeZone:)();
  v69(v67, v68);
  v71(v66, v99);
  return (*(v92 + 8))(v91, v93);
}

uint64_t sub_10031B84C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_14;
  }

  sub_10022C350(&qword_100CACD20);
  result = sub_100028228();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + v5++);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v7);
    result = Hasher._finalize()();
    v8 = ~(-1 << v3[32]);
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 6) + v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 6) + v9) = v7;
    v13 = *(v3 + 2);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 2) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_10031B98C(uint64_t a1)
{
  v4 = type metadata accessor for KeyEquivalent();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_100003C38();
  __chkstk_darwin(v6);
  sub_1000496C0(v7, v8, v9, v10, v11, v12, v13, v14, v30);
  if (v1 && (sub_10022C350(&qword_100CACD30), v15 = sub_100028228(), *(a1 + 16)))
  {
    sub_10001BD7C();
    while (v16 < *(a1 + 16))
    {
      v17 = sub_10000FC30(v16);
      (a1)(v17);
      v18 = *(v15 + 40);
      sub_100005738();
      sub_1000667B0(&qword_100CACD38, v19);
      sub_10002460C();
      sub_10003C348();
      while (1)
      {
        sub_1000193D8();
        if (v21)
        {
          break;
        }

        v22 = sub_1000228F8();
        (a1)(v22);
        sub_100005738();
        sub_1000667B0(&qword_100CACD40, v23);
        sub_1000694A0();
        v24 = sub_100017720();
        (v15)(v24);
        if (v18)
        {
          (v15)(v31, v4);
          v15 = v2;
          goto LABEL_12;
        }

        v15 = v2;
      }

      v25 = sub_100003E74(v20);
      v26(v25);
      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_16;
      }

      *(v15 + 16) = v29;
LABEL_12:
      sub_100013668();
      if (v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

Swift::Int sub_10031BB90(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309270();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_10031E314(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_10031BBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v56 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v65 = v7 - v6;
  v67 = type metadata accessor for Locale();
  sub_1000037C4();
  v61 = v8;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v58 = v11 - v10;
  v12 = type metadata accessor for Date();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  static TimeZone.current.getter();
  v26 = sub_10031C1C0();
  (*(v21 + 8))(v25, v19);
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v14 + 8))(v18, v12);
  v28 = [v26 stringFromDate:isa];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.WeatherEnvironment.contentEnvironment.getter();
  SettingReader.read<A>(_:)();

  v64 = ContentEnvironment.description.getter();
  v63 = v32;
  v33 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v34 = type metadata accessor for EnvironmentState();
  (*(v61 + 16))(v58, v33 + *(v34 + 32), v67);
  v35 = Locale.identifier.getter();
  v60 = v36;
  (*(v61 + 8))(v58, v67);
  v37 = *(v33 + 3);
  v38 = *(v33 + 1);
  v62 = LocationAuthorizationState.rawValue.getter(*(v33 + 1));
  v59 = v39;
  v57 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
  v68 = a1;
  v40 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v41 = *(v40 + *(type metadata accessor for LocationsState() + 24));
  v42 = *(v41 + 16);
  if (v42)
  {
    v52 = v37;
    v53 = v35;
    v54 = v29;
    v55 = a2;

    sub_1006A7BC4(0, v42, 0);
    v43 = *(v56 + 16);
    v44 = v41 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v45 = *(v56 + 72);
    v46 = v56 + 16;
    do
    {
      v47 = v46;
      v43(v65, v44, v66);
      v48 = sub_10031C2B8(v68, __src);
      (*(v56 + 8))(v65, v66, v48);
      v50 = _swiftEmptyArrayStorage[2];
      v49 = _swiftEmptyArrayStorage[3];
      if (v50 >= v49 >> 1)
      {
        sub_1006A7BC4((v49 > 1), v50 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v50 + 1;
      memcpy(&_swiftEmptyArrayStorage[15 * v50 + 4], __src, 0x72uLL);
      v44 += v45;
      --v42;
      v46 = v47;
    }

    while (v42);

    a2 = v55;
    v29 = v54;
    v35 = v53;
    v37 = v52;
  }

  result = sub_10031C844();
  *a2 = v29;
  *(a2 + 8) = v31;
  *(a2 + 16) = v64;
  *(a2 + 24) = v63;
  *(a2 + 32) = v35;
  *(a2 + 40) = v60;
  *(a2 + 48) = v37 != 4;
  *(a2 + 49) = (v38 - 1) < 2;
  *(a2 + 56) = v62;
  *(a2 + 64) = v59;
  *(a2 + 72) = v57 == 1;
  *(a2 + 80) = _swiftEmptyArrayStorage;
  *(a2 + 88) = result;
  return result;
}

id sub_10031C1C0()
{
  TimeZone.identifier.getter();
  Cache.subscript.getter();

  result = v4;
  if (!v4)
  {
    v1 = [objc_allocWithZone(NSDateFormatter) init];
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    [v1 setTimeZone:isa];

    [v1 setDateStyle:3];
    [v1 setTimeStyle:3];
    TimeZone.identifier.getter();
    v3 = v1;
    Cache.subscript.setter();
    return v3;
  }

  return result;
}

double sub_10031C2B8@<D0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v71 = type metadata accessor for NotificationSubscription.Location();
  v3 = *(v71 - 8);
  __chkstk_darwin(v71);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Location.Identifier();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationModel.identifier.getter();
  v62 = sub_10031CC78();
  v61 = v9;
  v60 = Location.Identifier.id.getter();
  v59 = v10;
  v58 = Location.Identifier.name.getter();
  v57 = v11;
  Location.Identifier.coordinate.getter();
  v13 = v12;
  v15 = v14;
  sub_10031CF0C(a1, v74);
  v16 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
  v17 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications + 8);
  v18 = *(v17 + 16);
  v19 = _swiftEmptyArrayStorage;
  v66 = v8;
  if (v18)
  {
    v56 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
    v72 = _swiftEmptyArrayStorage;

    sub_10000369C(0, v18, 0);
    v19 = v72;
    v70 = v3;
    v21 = *(v3 + 16);
    v20 = v3 + 16;
    v68 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v55 = v17;
    v23 = v17 + v22;
    v67 = *(v20 + 56);
    v69 = v20;
    v24 = (v20 - 8);
    do
    {
      v25 = v71;
      v68(v5, v23, v71);
      v26 = NotificationSubscription.Location.id.getter();
      v28 = v27;
      (*v24)(v5, v25);
      v72 = v19;
      v30 = v19[2];
      v29 = v19[3];
      if (v30 >= v29 >> 1)
      {
        sub_10000369C((v29 > 1), v30 + 1, 1);
        v19 = v72;
      }

      v19[2] = v30 + 1;
      v31 = &v19[2 * v30];
      v31[4] = v26;
      v31[5] = v28;
      v23 += v67;
      --v18;
    }

    while (v18);

    v8 = v66;
    v3 = v70;
    v16 = v56;
  }

  v72 = Location.Identifier.id.getter();
  v73 = v32;
  __chkstk_darwin(v72);
  *(&v54 - 2) = &v72;
  v33 = sub_100745860(sub_10031EF08, (&v54 - 4), v19);

  v34 = *(v16 + 16);
  v35 = *(v34 + 16);
  v36 = _swiftEmptyArrayStorage;
  if (v35)
  {
    v56 = 0;
    LODWORD(v67) = v33;
    v72 = _swiftEmptyArrayStorage;

    sub_10000369C(0, v35, 0);
    v36 = v72;
    v38 = *(v3 + 16);
    v37 = v3 + 16;
    v69 = v38;
    v39 = (*(v37 + 64) + 32) & ~*(v37 + 64);
    v55 = v34;
    v40 = v34 + v39;
    v68 = *(v37 + 56);
    v70 = v37;
    v41 = (v37 - 8);
    do
    {
      v42 = v71;
      v69(v5, v40, v71);
      v43 = NotificationSubscription.Location.id.getter();
      v45 = v44;
      (*v41)(v5, v42);
      v72 = v36;
      v47 = v36[2];
      v46 = v36[3];
      if (v47 >= v46 >> 1)
      {
        sub_10000369C((v46 > 1), v47 + 1, 1);
        v36 = v72;
      }

      v36[2] = v47 + 1;
      v48 = &v36[2 * v47];
      v48[4] = v43;
      v48[5] = v45;
      v40 += v68;
      --v35;
    }

    while (v35);

    v8 = v66;
    LOBYTE(v33) = v67;
  }

  v72 = Location.Identifier.id.getter();
  v73 = v49;
  __chkstk_darwin(v72);
  *(&v54 - 2) = &v72;
  v50 = sub_100745860(sub_10031EFE8, (&v54 - 4), v36);

  (*(v63 + 8))(v8, v64);

  v51 = v65;
  *v65 = v60;
  v51[1] = v59;
  v51[2] = v58;
  v51[3] = v57;
  v51[4] = v62;
  v51[5] = v61;
  v51[6] = v13;
  v51[7] = v15;
  v52 = v74[1];
  *(v51 + 4) = v74[0];
  *(v51 + 5) = v52;
  result = *&v75;
  *(v51 + 6) = v75;
  *(v51 + 112) = v33;
  *(v51 + 113) = v50;
  return result;
}

uint64_t sub_10031C844()
{
  v0 = 0;
  v1 = type metadata accessor for DebugBundle();
  sub_1000037C4();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  DebugBundle.init(bundle:)();
  sub_10022C350(&qword_100CACDE8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100A2C3F0;
  v13 = DebugBundle.name.getter();
  v15 = v14;
  v16 = DebugBundle.displayVersion.getter();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 48) = v16;
  *(v12 + 56) = v17;
  sub_10022C350(&qword_100CA7300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  strcpy((inited + 32), "AppAnalytics");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = 6382932;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 64) = 0x72656874616557;
  *(inited + 72) = 0xE700000000000000;
  v19 = [v10 allFrameworks];
  sub_10031E2B0();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = v20;
  v21 = sub_100073CDC(v20);
  v43 = v9;
  v44 = v3;
  v49 = v12;
  if (v21)
  {
    v48 = v21;
    if (v21 < 1)
    {
      __break(1u);
      goto LABEL_21;
    }

    v22 = 0;
    v50 = v51 & 0xC000000000000001;
    v23 = (v3 + 8);
    v24 = v48;
    v45 = inited;
    v46 = v1;
    do
    {
      if (v50)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v51 + 8 * v22 + 32);
      }

      v26 = v25;
      DebugBundle.init(bundle:)();
      v27 = DebugBundle.name.getter();
      v29 = v28;

      v31 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v31 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        __chkstk_darwin(v30);
        *(&v43 - 2) = v7;
        if (sub_100745860(sub_10031E2F4, (&v43 - 4), inited))
        {
          v47 = v0;
          v32 = DebugBundle.name.getter();
          v34 = v33;
          v35 = DebugBundle.displayVersion.getter();
          v37 = v36;
          v38 = *(v49 + 16);
          if (v38 >= *(v49 + 24) >> 1)
          {
            sub_10069EAF4();
            v49 = v41;
          }

          v39 = v49;
          *(v49 + 16) = v38 + 1;
          v40 = (v39 + 32 * v38);
          v40[4] = v32;
          v40[5] = v34;
          v40[6] = v35;
          v40[7] = v37;
          v1 = v46;
          v0 = v47;
          inited = v45;
        }

        else
        {
        }

        v24 = v48;
      }

      else
      {
      }

      ++v22;
      (*v23)(v7, v1);
    }

    while (v24 != v22);
  }

  swift_setDeallocating();
  sub_1005C1E94();
  v52 = v49;

  sub_10031BB90(&v52);
  if (!v0)
  {
    (*(v44 + 8))(v43, v1);

    return v52;
  }

LABEL_21:

  __break(1u);
  return result;
}

uint64_t sub_10031CC78()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationModel.timeZone.getter();
  if (sub_100024D10(v6, 1, v7) == 1)
  {
    sub_1000180EC(v6, &qword_100CACE08);
    return 0x2D656D69742D6F6ELL;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_10031C1C0();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v3, v0);
    v14 = [v12 stringFromDate:isa];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 8))(v10, v7);
  }

  return v11;
}

uint64_t sub_10031CF0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v4 - 8);
  v6 = &v31[-v5];
  v7 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31[-v8];
  v10 = sub_10022C350(&qword_100CA37B0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v31[-v14];
  v16 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v17 = Location.Identifier.id.getter();
  sub_1000864C0(v17, v18, v16);

  v19 = sub_10031D22C(v15);
  v36 = v20;
  v37 = v19;
  sub_10031D5C8(a1, v9);
  v21 = sub_10031D988(v9);
  v34 = v22;
  v35 = v21;
  v33 = sub_10031DC1C(v9);
  v32 = v23;
  sub_100035AD0(v15, v13, &qword_100CA37B0);
  v24 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v13, 1, v24) == 1)
  {
    sub_1000180EC(v13, &qword_100CA37B0);
    v25 = type metadata accessor for WeatherData(0);
    sub_10001B350(v6, 1, 1, v25);
  }

  else
  {
    sub_1001A0D3C();
    sub_100105EE0(v13, type metadata accessor for LocationWeatherDataState);
  }

  v26 = sub_10031DDC4(v6);
  sub_1000180EC(v6, &qword_100CA3898);
  sub_1000180EC(v9, &unk_100CB2CF0);
  result = sub_1000180EC(v15, &qword_100CA37B0);
  v28 = v32 & 1;
  v29 = v36;
  *a2 = v37;
  *(a2 + 8) = v29;
  v30 = v34;
  *(a2 + 16) = v35;
  *(a2 + 24) = v30;
  *(a2 + 32) = v33;
  *(a2 + 40) = v28;
  *(a2 + 41) = v26;
  *(a2 + 43) = BYTE2(v26);
  *(a2 + 44) = BYTE3(v26);
  *(a2 + 45) = BYTE4(v26);
  *(a2 + 46) = BYTE5(v26);
  *(a2 + 47) = BYTE6(v26);
  return result;
}

unint64_t sub_10031D22C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for LocationWeatherDataState(0);
  v6 = __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  sub_100035AD0(a1, v4, &qword_100CA37B0);
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    v11 = 0xD000000000000010;
    sub_1000180EC(v4, &qword_100CA37B0);
  }

  else
  {
    sub_1001A0F98(v4, v10, type metadata accessor for LocationWeatherDataState);
    sub_10031EF28(v10, v8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v18 = sub_10022C350(&qword_100CA75D8);
        v19 = *(v18 + 48);
        v20 = *(v18 + 64);
        sub_100105EE0(v10, type metadata accessor for LocationWeatherDataState);
        sub_100105EE0(v8 + v20, type metadata accessor for NewsDataModel);
        sub_100105EE0(v8 + v19, type metadata accessor for PreprocessedWeatherData);
        sub_100105EE0(v8, type metadata accessor for WeatherData);
        v11 = 0x646564616F4CLL;
        break;
      case 2u:
        v14 = *v8;
        v13 = v8[1];
        v15 = v8[2];
        v16 = v8[3];
        v21 = 0;
        v22 = 0xE000000000000000;
        _StringGuts.grow(_:)(21);
        v25 = v21;
        v26 = v22;
        v17._countAndFlagsBits = 0xD000000000000013;
        v17._object = 0x8000000100AC0960;
        String.append(_:)(v17);
        v21 = v14;
        v22 = v13;
        v23 = v15;
        v24 = v16;
        sub_10022C350(&qword_100CACE00);
        _print_unlocked<A, B>(_:_:)();

        sub_10031EF8C(v15, v16);
        v11 = v25;
        sub_100105EE0(v10, type metadata accessor for LocationWeatherDataState);
        break;
      case 3u:
        sub_100105EE0(v10, type metadata accessor for LocationWeatherDataState);
        v11 = 0x676E6964616F4CLL;
        break;
      default:
        sub_100105EE0(v10, type metadata accessor for LocationWeatherDataState);
        sub_100105EE0(v8, type metadata accessor for LocationWeatherDataState);
        v11 = 0x6E20646564616F4CLL;
        break;
    }
  }

  return v11;
}

uint64_t sub_10031D5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for CurrentWeather();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for LocationWeatherDataState(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  v18 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v19 = Location.Identifier.id.getter();
  sub_1000864C0(v19, v20, v18);

  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_1000180EC(v11, &qword_100CA37B0);
LABEL_6:
    v25 = 1;
    v24 = v29;
    goto LABEL_7;
  }

  sub_1001A0F98(v11, v17, type metadata accessor for LocationWeatherDataState);
  sub_10031EF28(v17, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100105EE0(v17, type metadata accessor for LocationWeatherDataState);
    sub_100105EE0(v15, type metadata accessor for LocationWeatherDataState);
    goto LABEL_6;
  }

  v21 = sub_10022C350(&qword_100CA75D8);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  sub_1001A0F98(v15, v8, type metadata accessor for WeatherData);
  sub_100105EE0(&v15[v23], type metadata accessor for NewsDataModel);
  sub_100105EE0(&v15[v22], type metadata accessor for PreprocessedWeatherData);
  WeatherDataModel.currentWeather.getter();
  v24 = v29;
  CurrentWeather.date.getter();
  (*(v28 + 8))(v5, v3);
  sub_100105EE0(v8, type metadata accessor for WeatherData);
  sub_100105EE0(v17, type metadata accessor for LocationWeatherDataState);
  v25 = 0;
LABEL_7:
  v26 = type metadata accessor for Date();
  return sub_10001B350(v24, v25, 1, v26);
}

uint64_t sub_10031D988(uint64_t a1)
{
  v18 = type metadata accessor for TimeZone();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035AD0(a1, v7, &unk_100CB2CF0);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000180EC(v7, &unk_100CB2CF0);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    static TimeZone.current.getter();
    v13 = sub_10031C1C0();
    (*(v2 + 8))(v4, v18);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v15 = [v13 stringFromDate:isa];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 8))(v11, v8);
  }

  return v12;
}

uint64_t sub_10031DC1C(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035AD0(a1, v4, &unk_100CB2CF0);
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_1000180EC(v4, &unk_100CB2CF0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    Date.timeIntervalSinceNow.getter();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    return v11 & 0x7FFFFFFFFFFFFFFFLL;
  }
}

unint64_t sub_10031DDC4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CACDF8);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  sub_100035AD0(a1, v7, &qword_100CA3898);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000180EC(v7, &qword_100CA3898);
    v13 = 0x202000000;
    v14 = 0x2000000000000;
    v15 = 2;
  }

  else
  {
    sub_1001A0F98(v7, v12, type metadata accessor for WeatherData);
    v16 = sub_10031E024(v12, &WeatherAvailability.airQualityAvailability.getter);
    v17 = sub_10031E024(v12, &WeatherAvailability.minuteAvailability.getter);
    WeatherDataModel.weatherChanges.getter();
    sub_100105EE0(v12, type metadata accessor for WeatherData);
    v18 = type metadata accessor for WeatherChanges();
    v19 = sub_100024D10(v4, 1, v18) == 1;
    sub_1000180EC(v4, &qword_100CACDF8);
    v15 = 0;
    v14 = v19 << 49;
    v13 = (v16 << 24) | (v17 << 32);
  }

  return ((v13 | v14 | (v15 << 40)) + (v15 << 16) + (v15 << 8)) | v15;
}

uint64_t sub_10031E024(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = type metadata accessor for WeatherAvailability.AvailabilityKind();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for WeatherAvailability();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  type metadata accessor for WeatherData(0);
  v17 = WeatherDataModel.availability.getter();
  a2(v17);
  (*(v12 + 8))(v16, v10);
  v18 = (*(v5 + 88))(v9, v3);
  if (v18 == enum case for WeatherAvailability.AvailabilityKind.available(_:))
  {
    return 0;
  }

  if (v18 == enum case for WeatherAvailability.AvailabilityKind.temporarilyUnavailable(_:))
  {
    return 1;
  }

  if (v18 == enum case for WeatherAvailability.AvailabilityKind.unsupported(_:) || v18 == enum case for WeatherAvailability.AvailabilityKind.unknown(_:))
  {
    return 2;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10031E1F4()
{
  DebugBundle.name.getter();
  String.lowercased()();

  String.lowercased()();
  sub_1002AC2F0();
  sub_1002AC344();
  v0 = BidirectionalCollection<>.starts<A>(with:)();

  return v0 & 1;
}

unint64_t sub_10031E2B0()
{
  result = qword_100CACDF0;
  if (!qword_100CACDF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CACDF0);
  }

  return result;
}

Swift::Int sub_10031E314(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_10031E4D0(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10031E408(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10031E408(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 32 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 32);
        v10 = *(v12 + 40);
        v14 = *(v12 + 48);
        v15 = *(v12 + 56);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v15;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10031E4D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 32 * v10);
        v12 = (*a3 + 32 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = v12 + 9;
        while (v10 < v6)
        {
          if (*(v15 - 1) == *(v15 - 5) && *v15 == *(v15 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v15 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v17 = 32 * v10 - 16;
          v18 = 32 * v9 + 24;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v18);
              v23 = (v21 + v17);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v20;
            v17 -= 32;
            v18 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v9 + a4;
          }

          if (v29 < v9)
          {
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
            return;
          }

          if (v10 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v10 - 32;
            v92 = v9;
            v32 = v9 - v10;
            do
            {
              v33 = v10;
              v34 = (v30 + 32 * v10);
              v35 = *v34;
              v36 = v34[1];
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *v38 && v36 == *(v38 + 8);
                if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v35 = *(v38 + 32);
                v36 = *(v38 + 40);
                v40 = *(v38 + 48);
                v41 = *(v38 + 56);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v35;
                *(v38 + 8) = v36;
                *(v38 + 16) = v40;
                *(v38 + 24) = v41;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v33 + 1;
              v31 += 32;
              --v32;
            }

            while (v33 + 1 != v29);
            v10 = v29;
            v9 = v92;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v91 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10011E564();
        v8 = v87;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_10011E564();
        v8 = v88;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v91;
      v93 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_69:
            if (v54)
            {
              goto LABEL_109;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_117;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v45 < 2)
          {
            goto LABEL_111;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_84:
          if (v69)
          {
            goto LABEL_114;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v76 < v68)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_10031EB24((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v93);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v83 < v81)
          {
            goto LABEL_104;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_105;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_106;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_98;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v91;
      if (v91 >= v6)
      {
        v95 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_10031E9F8(&v95, *a1, a3);
LABEL_102:
}

uint64_t sub_10031E9F8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100308E24();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_10031EB24((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_10031EB24(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_1006A0784(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 32;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 32;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 32;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *(v13 + 1);
    *v7 = *v13;
    *(v7 + 1) = v14;
    goto LABEL_17;
  }

  sub_1006A0784(a2, (a3 - a2) / 32, a4);
  v10 = &v4[32 * v9];
LABEL_19:
  v15 = v6 - 32;
  for (v5 -= 32; v10 > v4 && v6 > v7; v5 -= 32)
  {
    v17 = *(v10 - 4) == *(v6 - 4) && *(v10 - 3) == *(v6 - 3);
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 32 == v6;
      v6 -= 32;
      if (!v12)
      {
        v19 = *(v15 + 1);
        *v5 = *v15;
        *(v5 + 1) = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 32)
    {
      v18 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v18;
    }

    v10 -= 32;
  }

LABEL_36:
  v20 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v20])
  {
    memmove(v6, v4, 32 * v20);
  }

  return 1;
}

uint64_t sub_10031ECC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10031EE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 != a3 || a2 != a4)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }

    return 1;
  }

  return v4;
}

uint64_t sub_10031EF28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationWeatherDataState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031EF8C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xE)
  {
  }

  return result;
}

uint64_t sub_10031EFA0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10031F048()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  result = 2.0;
  if (v5)
  {
    v7 = v0 + *(type metadata accessor for FeelsLikeComponentView() + 24);
    v8 = *v7;
    if (*(v7 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v9 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v8, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v8) = v10[15];
    }

    return dbl_100A3C3B8[v8];
  }

  return result;
}

double sub_10031F1D0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  result = -4.0;
  if (v5)
  {
    v7 = v0 + *(type metadata accessor for FeelsLikeComponentView() + 24);
    v8 = *v7;
    if (*(v7 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v9 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v8, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v8) = v10[15];
    }

    return dbl_100A3C3D0[v8];
  }

  return result;
}

uint64_t sub_10031F358@<X0>(uint64_t *a1@<X8>)
{
  v88 = a1;
  v2 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v86 = *(v2 - 8);
  v87 = v2;
  __chkstk_darwin(v2);
  v85 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v4 - 8);
  v83 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v73 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Text.Scale();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1[3];
  if (v17)
  {
    v18 = v1[1];
    v19 = v1[2];
    v91 = *v1;
    v92 = v18;
    v90 = v14;
    sub_10002D5A4();
    v79 = v9;

    v77 = Text.init<A>(_:)();
    v76 = v20;
    v74 = v21;
    v75 = v22;
    v91 = v19;
    v92 = v17;
    v23 = Text.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    static Text.Scale.secondary.getter();
    v28 = Text.textScale(_:isEnabled:)();
    v80 = v8;
    v29 = v28;
    v78 = v11;
    v31 = v30;
    LOBYTE(v19) = v32;
    v73 = v33;
    v34 = v27 & 1;
    v9 = v79;
    sub_10010CD64(v23, v25, v34);

    (*(v13 + 8))(v16, v90);
    LOBYTE(v18) = v74;
    v35 = v77;
    v36 = v76;
    v37 = static Text.+ infix(_:_:)();
    v81 = v38;
    v82 = v37;
    v89 = v39;
    v90 = v40;
    v41 = v29;
    v8 = v80;
    v42 = v31;
    v11 = v78;
    sub_10010CD64(v41, v42, v19 & 1);

    sub_10010CD64(v35, v36, v18 & 1);
  }

  else
  {
    v43 = v1[1];
    v91 = *v1;
    v92 = v43;
    sub_10002D5A4();

    v44 = Text.init<A>(_:)();
    v81 = v45;
    v82 = v44;
    v89 = v46;
    v90 = v47;
  }

  v48 = static Font.largeTitle.getter();
  v49 = static Font.title2.getter();
  v50 = v1 + *(type metadata accessor for FeelsLikeComponentView() + 28);
  v51 = *v50;
  if (v50[8] != 1)
  {

    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v51, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(v51) = v91;
  }

  v53 = enum case for Font.Leading.tight(_:);
  v54 = type metadata accessor for Font.Leading();
  v55 = v84;
  (*(*(v54 - 8) + 104))(v84, v53, v54);
  sub_10001B350(v55, 0, 1, v54);
  v56 = v83;
  sub_1000955E0(v55, v83, &qword_100CACFF0);

  sub_1001C987C(v48, v49, v51 & 1, v56);
  v57 = v81;
  v58 = v82;
  v59 = Text.font(_:)();
  v61 = v60;
  v63 = v62;

  sub_1000180EC(v55, &qword_100CACFF0);
  v64 = v85;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v65 = Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v67 = v66;
  v69 = v68;
  v84 = v70;
  sub_10010CD64(v59, v61, v63 & 1);

  sub_10010CD64(v58, v57, v89 & 1);

  result = (*(v86 + 8))(v64, v87);
  v72 = v88;
  *v88 = v65;
  v72[1] = v67;
  *(v72 + 16) = v69 & 1;
  v72[3] = v84;
  v72[4] = 0x3FF0000000000000;
  return result;
}

uint64_t sub_10031F9A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CACF90);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = *a1;
  v9 = a1[1];
  v27 = v8;
  v28 = v9;
  sub_10002D5A4();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_10031F1D0();
  v18 = static HierarchicalShapeStyle.secondary.getter();
  v19 = *(v5 + 36);
  v20 = enum case for BlendMode.plusLighter(_:);
  v21 = type metadata accessor for BlendMode();
  (*(*(v21 - 8) + 104))(&v7[v19], v20, v21);
  *v7 = v10;
  *(v7 + 1) = v12;
  v7[16] = v14 & 1;
  *(v7 + 3) = v16;
  *(v7 + 4) = 0;
  *(v7 + 5) = v17;
  *(v7 + 12) = v18;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  sub_1003228D0();
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  (*(v24 + 8))(v4, v26);
  return sub_1000180EC(v7, &qword_100CACF90);
}

uint64_t sub_10031FBD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v45 = type metadata accessor for FeelsLikeComponentVarianceView();
  __chkstk_darwin(v45);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Font.TextStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CACF80);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v40 - v20;
  v46 = a2;
  sub_10031F9A4(a2, &v40 - v20);
  (*(v13 + 104))(v15, enum case for Font.TextStyle.title3(_:), v12);
  static Font.Weight.semibold.getter();
  v44 = static Font.system(_:weight:)();
  (*(v13 + 8))(v15, v12);
  v43 = static Font.headline.getter();
  v22 = a1 + *(type metadata accessor for FeelsLikeComponentView() + 28);
  v23 = *v22;
  if (*(v22 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v23, 0);
    (*(v41 + 8))(v11, v42);
    LOBYTE(v23) = v49;
  }

  v25 = &v21[*(v16 + 36)];
  v26 = type metadata accessor for FontWithSmallVariantModifier();
  v27 = *(v26 + 24);
  v28 = enum case for Font.Leading.tight(_:);
  v29 = type metadata accessor for Font.Leading();
  (*(*(v29 - 8) + 104))(v25 + v27, v28, v29);
  sub_10001B350(v25 + v27, 0, 1, v29);
  v30 = v43;
  *v25 = v44;
  v25[1] = v30;
  *(v25 + *(v26 + 28)) = v23 & 1;
  v31 = sub_10031F048();
  v32 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  sub_100322818(v46 + *(v32 + 20), &v8[*(v45 + 20)], type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance);
  *v8 = swift_getKeyPath();
  *(v8 + 4) = 0;
  v33 = sub_10031F048();
  sub_1000955E0(v21, v18, &qword_100CACF80);
  v34 = v48;
  sub_100322818(v8, v48, type metadata accessor for FeelsLikeComponentVarianceView);
  v35 = v47;
  sub_1000955E0(v18, v47, &qword_100CACF80);
  v36 = sub_10022C350(&qword_100CACF88);
  v37 = v35 + v36[12];
  *v37 = v31;
  *(v37 + 8) = 0;
  sub_100322818(v34, v35 + v36[16], type metadata accessor for FeelsLikeComponentVarianceView);
  v38 = v35 + v36[20];
  *v38 = v33;
  *(v38 + 8) = 0;
  sub_100322878(v8, type metadata accessor for FeelsLikeComponentVarianceView);
  sub_1000180EC(v21, &qword_100CACF80);
  sub_100322878(v34, type metadata accessor for FeelsLikeComponentVarianceView);
  return sub_1000180EC(v18, &qword_100CACF80);
}

uint64_t sub_1003200EC()
{
  v1 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + *(type metadata accessor for FeelsLikeComponentViewModel(0) + 28));
  v12 = v11[1];
  v37 = *v11;
  v38 = v12;
  sub_10002D5A4();

  v13 = Text.init<A>(_:)();
  v34 = v14;
  v35 = v13;
  v16 = v15;
  v36 = v17;
  v18 = static Font.subheadline.getter();
  v33 = static Font.footnote.getter();
  v19 = v0 + *(type metadata accessor for FeelsLikeComponentView() + 28);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v20, 0);
    (*(v8 + 8))(v10, v7);
    LOBYTE(v20) = v37;
  }

  v22 = enum case for Font.Leading.tight(_:);
  v23 = type metadata accessor for Font.Leading();
  (*(*(v23 - 8) + 104))(v6, v22, v23);
  sub_10001B350(v6, 0, 1, v23);
  sub_1000955E0(v6, v3, &qword_100CACFF0);

  v24 = v33;

  sub_1001C987C(v18, v24, v20 & 1, v3);
  v25 = v35;
  v26 = v16;
  v27 = v34;
  v28 = Text.font(_:)();
  v31 = v29;
  v32 = v28;

  sub_10010CD64(v25, v27, v26 & 1);

  sub_1000180EC(v6, &qword_100CACFF0);
  return v32;
}