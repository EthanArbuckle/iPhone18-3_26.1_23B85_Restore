uint64_t sub_10011BE3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10011BEB4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10011BE3C();
  *a1 = v3;
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10011BEE8()
{
  result = qword_100CEB058;
  if (!qword_100CEB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CEB058);
  }

  return result;
}

uint64_t sub_10011BF3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CA7030);
  sub_1000BCDDC(&qword_100CA7040);
  sub_100030240();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    type metadata accessor for HourWeather();
    sub_100003934();

    return sub_10001B350(v4, v5, v6, v7);
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_10011C0A0(&qword_100CAC488);
    dispatch thunk of BidirectionalCollection.index(before:)();
    dispatch thunk of Collection.subscript.read();
    sub_1000370D0();
    v9 = type metadata accessor for HourWeather();
    sub_1000037E8();
    (*(v10 + 16))(a1, v3, v9);
    v1(v14, 0);
    sub_10000E7B0();
    return sub_10001B350(v11, v12, v13, v9);
  }
}

uint64_t sub_10011C0A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CA7030);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10011C0F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10000399C(a1, a2, a3);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return v3;
}

uint64_t sub_10011C158(uint64_t result, int a2, int a3)
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

void sub_10011C1D0()
{
  sub_10000E8AC();
  v7 = sub_100020CD8(v5, v6);
  v8 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(v7);
  v9 = sub_100003AE8(v8);
  __chkstk_darwin(v9);
  sub_100003848();
  v19 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100031FD8();
  while (1)
  {
    if (v4 == v2)
    {

LABEL_14:
      sub_1000230F8();
      sub_10000C8F4();
      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v12 = sub_100024C20();
    sub_1000C90C8(v12);
    v13 = sub_100071A60();
    v15 = v14(v13);
    if (v0)
    {
      sub_10011CA9C(v3, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      sub_100086650();

      goto LABEL_14;
    }

    if (v15)
    {
      sub_100114640(v3, v19, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      sub_100086650();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000134F8();
        sub_10011A704();
      }

      sub_10004389C();
      if (v16)
      {
        sub_1000521D0();
        sub_10011A704();
        sub_10007184C();
      }

      sub_10001885C();
      sub_1000306D0();
      sub_100114640(v19, v17, v18);
    }

    else
    {
      sub_10011CA9C(v3, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      ++v2;
    }
  }

  __break(1u);
}

uint64_t sub_10011C3AC()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10011C404(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10011C478()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  sub_10011C5D8();
  sub_10011C5D8();
  v7 = static Date.> infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

void sub_10011C5D8()
{
  sub_100020DF0();
  v3 = v2;
  v4 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v6 = sub_100016824();
  v7 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(v6);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100005384();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_1000200F8();
  sub_10001F2D4();
  v10 = sub_10002C598();
  sub_10011C7D0(v10, v11);
  sub_100014AD8();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_1000AF5CC();
    v18 = *(v4 + 52);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v19 + 16))(v3, v1 + v18);
    sub_10001C7A0();
    v17 = v1;
  }

  else
  {
    sub_100006324();
    v12 = sub_100027E24();
    sub_10011A1F4(v12, v13);
    type metadata accessor for Date();
    sub_1000037E8();
    v14 = sub_100003940();
    v15(v14);
    sub_10001052C();
    v17 = v0;
  }

  sub_10011CA44(v17, v16);
  sub_1000212EC();
}

uint64_t sub_10011C770(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10011C7D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

void sub_10011C828()
{
  type metadata accessor for Binding();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    type metadata accessor for State();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WireframeLevelInterestManager();
      if (v2 <= 0x3F)
      {
        sub_10009BFD0(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          type metadata accessor for TransitionContext();
          type metadata accessor for Optional();
          type metadata accessor for State();
          if (v4 <= 0x3F)
          {
            sub_10009BFD0(319, qword_100CD22A8, &type metadata for Int, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Page();
              type metadata accessor for Array();
              if (v6 <= 0x3F)
              {
                sub_10009BFD0(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
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

uint64_t sub_10011CA44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10011CA9C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10011CAF4()
{
  result = type metadata accessor for Page();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10011CB7C()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CC2B28, &unk_100A5B688);
  v8 = sub_100011748();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for HourlyForecastComponentViewModel.HourlyItem, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10011CC6C(uint64_t *a1)
{
  v2 = *(type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10011D098();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_10011D120(v6);
  *a1 = v3;
}

void sub_10011CD14()
{
  type metadata accessor for Binding();
  if (v0 <= 0x3F)
  {
    type metadata accessor for State();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Page();
      type metadata accessor for Array();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WireframeLevelInterestManager();
        if (v3 <= 0x3F)
        {
          sub_10009BFD0(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            type metadata accessor for TransitionContext();
            type metadata accessor for Optional();
            type metadata accessor for State();
            if (v5 <= 0x3F)
            {
              sub_10009BFD0(319, qword_100CD22A8, &type metadata for Int, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_10009BFD0(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
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

uint64_t sub_10011CF50()
{
  sub_100043A44();
  swift_getAssociatedTypeWitness();
  sub_1000717DC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LegacyLazyPageAnimatableTabView();
  type metadata accessor for LazyHStackAnimatableTabView();
  sub_100052704();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for StaticIf();
  sub_10011D250();
  sub_100031758();
  swift_getWitnessTable();
  sub_1000242EC();
  sub_10001F590();
  swift_getWitnessTable();
  sub_10001C914();
  return swift_getWitnessTable();
}

void sub_10011D120(unint64_t *a1)
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
        type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10011D2A8(v8, v9, a1, v4);
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
    sub_1005088B0(0, v2, 1, a1);
  }
}

unint64_t sub_10011D250()
{
  result = qword_100CD2120[0];
  if (!qword_100CD2120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CD2120);
  }

  return result;
}

void sub_10011D2A8(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v169 = a1;
  v190 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  __chkstk_darwin(v190);
  v189 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  __chkstk_darwin(v8 - 8);
  v198 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v201 = &v164 - v15;
  __chkstk_darwin(v16);
  v18 = &v164 - v17;
  __chkstk_darwin(v19);
  v185 = &v164 - v20;
  __chkstk_darwin(v21);
  v168 = &v164 - v22;
  __chkstk_darwin(v23);
  v167 = &v164 - v24;
  v25 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  v180 = *(v25 - 8);
  __chkstk_darwin(v25);
  v173 = &v164 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v193 = &v164 - v28;
  __chkstk_darwin(v29);
  v195 = &v164 - v30;
  __chkstk_darwin(v31);
  v200 = &v164 - v32;
  __chkstk_darwin(v33);
  v203 = &v164 - v34;
  __chkstk_darwin(v35);
  v199 = &v164 - v36;
  __chkstk_darwin(v37);
  __chkstk_darwin(v38);
  v183 = &v164 - v39;
  __chkstk_darwin(v40);
  v187 = &v164 - v41;
  __chkstk_darwin(v42);
  v184 = &v164 - v43;
  __chkstk_darwin(v44);
  v166 = &v164 - v45;
  __chkstk_darwin(v46);
  v165 = &v164 - v48;
  v181 = a3;
  v49 = a3[1];
  if (v49 < 1)
  {
    v51 = _swiftEmptyArrayStorage;
LABEL_114:
    v4 = *v169;
    if (!*v169)
    {
      goto LABEL_155;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v182;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_116:
      v158 = v51 + 16;
      v157 = *(v51 + 2);
      for (i = v51; v157 >= 2; v51 = i)
      {
        if (!*v181)
        {
          goto LABEL_152;
        }

        v159 = &v51[16 * v157];
        v160 = *v159;
        v161 = &v158[2 * v157];
        v162 = *(v161 + 1);
        sub_100508EC4(*v181 + *(v180 + 72) * *v159, *v181 + *(v180 + 72) * *v161, (*v181 + *(v180 + 72) * v162), v4);
        if (v25)
        {
          break;
        }

        if (v162 < v160)
        {
          goto LABEL_140;
        }

        if (v157 - 2 >= *v158)
        {
          goto LABEL_141;
        }

        *v159 = v160;
        *(v159 + 1) = v162;
        v163 = *v158 - v157;
        if (*v158 < v157)
        {
          goto LABEL_142;
        }

        v157 = *v158 - 1;
        sub_1003090FC(v161 + 16, v163, v161);
        *v158 = v157;
      }

LABEL_124:

      return;
    }

LABEL_149:
    v51 = sub_100308E24();
    goto LABEL_116;
  }

  v176 = v47;
  v194 = v13;
  v164 = a4;
  v50 = 0;
  v197 = (v11 + 8);
  v202 = (v11 + 16);
  v51 = _swiftEmptyArrayStorage;
  v177 = v18;
  v196 = v25;
  v174 = v10;
  while (1)
  {
    v52 = v50++;
    if (v50 < v49)
    {
      i = v51;
      v53 = *v181;
      v54 = *(v180 + 72);
      v55 = *v181 + v54 * v50;
      v192 = v54;
      v56 = v54;
      v57 = v53;
      v175 = v53;
      v4 = v165;
      v191 = v49;
      sub_10011C770(v53 + v54 * v50, v165, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      v58 = v57 + v56 * v52;
      v170 = v52;
      v59 = v166;
      sub_10011C770(v58, v166, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      v60 = v167;
      sub_10011C5D8();
      v188 = v50;
      v61 = v168;
      sub_10011C5D8();
      LODWORD(v179) = static Date.< infix(_:_:)();
      v62 = *v197;
      v63 = v61;
      v50 = v188;
      (*v197)(v63, v10);
      v178 = v62;
      (v62)(v60, v10);
      sub_10011E508(v59, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      sub_10011E508(v4, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      v64 = v191;
      v65 = v170 + 2;
      v66 = v175 + v192 * (v170 + 2);
      while (1)
      {
        v67 = v65;
        if (v50 + 1 >= v64)
        {
          break;
        }

        v188 = v50;
        v68 = v184;
        sub_10011C770(v66, v184, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        sub_10011C770(v55, v187, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        sub_10011C770(v68, v183, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v73 = v189;
          sub_100509B1C(v183, v189, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
          v70 = *v202;
          (*v202)(v185, v73 + *(v190 + 52), v10);
          v71 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
          v72 = v73;
        }

        else
        {
          v69 = v198;
          sub_100509B1C(v183, v198, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
          v70 = *v202;
          (*v202)(v185, v69, v10);
          v71 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel;
          v72 = v69;
        }

        sub_10011E508(v72, v71);
        v74 = v176;
        sub_10011C770(v187, v176, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v79 = v189;
          sub_100509B1C(v74, v189, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
          v4 = v177;
          v70(v177, v79 + *(v190 + 52), v10);
          v77 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
          v78 = v79;
        }

        else
        {
          v75 = v74;
          v76 = v198;
          sub_100509B1C(v75, v198, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
          v4 = v177;
          v70(v177, v76, v10);
          v77 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel;
          v78 = v76;
        }

        sub_10011E508(v78, v77);
        v80 = v185;
        v81 = static Date.< infix(_:_:)() & 1;
        v82 = v178;
        (v178)(v4, v10);
        v82(v80, v10);
        sub_10011E508(v187, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        sub_10011E508(v184, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        v66 += v192;
        v55 += v192;
        v50 = v188 + 1;
        v65 = v67 + 1;
        v25 = v196;
        v64 = v191;
        if ((v179 & 1) != v81)
        {
          goto LABEL_15;
        }
      }

      v50 = v64;
LABEL_15:
      if (v179)
      {
        if (v50 < v170)
        {
          goto LABEL_146;
        }

        if (v170 >= v50)
        {
          v51 = i;
          v52 = v170;
          goto LABEL_36;
        }

        if (v64 >= v67)
        {
          v83 = v67;
        }

        else
        {
          v83 = v64;
        }

        v84 = v192 * (v83 - 1);
        v4 = v192 * v83;
        v85 = v170 * v192;
        v86 = v50;
        v87 = v170;
        do
        {
          if (v87 != --v86)
          {
            v191 = v86;
            v88 = *v181;
            if (!*v181)
            {
              goto LABEL_153;
            }

            sub_100509B1C(v88 + v85, v173, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
            v89 = v85 < v84 || v88 + v85 >= v88 + v4;
            if (v89)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v85 != v84)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100509B1C(v173, v88 + v84, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
            v86 = v191;
          }

          ++v87;
          v84 -= v192;
          v4 -= v192;
          v85 += v192;
        }

        while (v87 < v86);
      }

      v51 = i;
      v52 = v170;
    }

LABEL_36:
    v90 = v181[1];
    if (v50 < v90)
    {
      if (__OFSUB__(v50, v52))
      {
        goto LABEL_145;
      }

      if (v50 - v52 < v164)
      {
        break;
      }
    }

LABEL_60:
    if (v50 < v52)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10011E564();
      v51 = v154;
    }

    v112 = *(v51 + 2);
    v113 = v112 + 1;
    if (v112 >= *(v51 + 3) >> 1)
    {
      sub_10011E564();
      v51 = v155;
    }

    *(v51 + 2) = v113;
    v4 = (v51 + 32);
    v114 = &v51[16 * v112 + 32];
    *v114 = v52;
    *(v114 + 1) = v50;
    v192 = *v169;
    if (!v192)
    {
      goto LABEL_154;
    }

    if (v112)
    {
      i = v51;
      while (1)
      {
        v115 = v113 - 1;
        v116 = (v4 + 16 * (v113 - 1));
        v117 = &v51[16 * v113];
        if (v113 >= 4)
        {
          break;
        }

        if (v113 == 3)
        {
          v118 = *(v51 + 4);
          v119 = *(v51 + 5);
          v128 = __OFSUB__(v119, v118);
          v120 = v119 - v118;
          v121 = v128;
LABEL_81:
          if (v121)
          {
            goto LABEL_131;
          }

          v133 = *v117;
          v132 = *(v117 + 1);
          v134 = __OFSUB__(v132, v133);
          v135 = v132 - v133;
          v136 = v134;
          if (v134)
          {
            goto LABEL_134;
          }

          v137 = v116[1];
          v138 = v137 - *v116;
          if (__OFSUB__(v137, *v116))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v135, v138))
          {
            goto LABEL_139;
          }

          if (v135 + v138 >= v120)
          {
            if (v120 < v138)
            {
              v115 = v113 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v113 < 2)
        {
          goto LABEL_133;
        }

        v140 = *v117;
        v139 = *(v117 + 1);
        v128 = __OFSUB__(v139, v140);
        v135 = v139 - v140;
        v136 = v128;
LABEL_96:
        if (v136)
        {
          goto LABEL_136;
        }

        v142 = *v116;
        v141 = v116[1];
        v128 = __OFSUB__(v141, v142);
        v143 = v141 - v142;
        if (v128)
        {
          goto LABEL_138;
        }

        if (v143 < v135)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v115 - 1 >= v113)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
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
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v181)
        {
          goto LABEL_151;
        }

        v147 = (v4 + 16 * (v115 - 1));
        v148 = *v147;
        v149 = v115;
        v150 = v4 + 16 * v115;
        v151 = *(v150 + 8);
        v152 = v182;
        sub_100508EC4(*v181 + *(v180 + 72) * *v147, *v181 + *(v180 + 72) * *v150, (*v181 + *(v180 + 72) * v151), v192);
        v182 = v152;
        if (v152)
        {
          goto LABEL_124;
        }

        if (v151 < v148)
        {
          goto LABEL_126;
        }

        v153 = *(i + 2);
        if (v149 > v153)
        {
          goto LABEL_127;
        }

        *v147 = v148;
        v147[1] = v151;
        if (v149 >= v153)
        {
          goto LABEL_128;
        }

        v113 = v153 - 1;
        sub_1003090FC((v150 + 16), v153 - 1 - v149, v150);
        v51 = i;
        *(i + 2) = v153 - 1;
        v10 = v174;
        if (v153 <= 2)
        {
          goto LABEL_110;
        }
      }

      v122 = v4 + 16 * v113;
      v123 = *(v122 - 64);
      v124 = *(v122 - 56);
      v128 = __OFSUB__(v124, v123);
      v125 = v124 - v123;
      if (v128)
      {
        goto LABEL_129;
      }

      v127 = *(v122 - 48);
      v126 = *(v122 - 40);
      v128 = __OFSUB__(v126, v127);
      v120 = v126 - v127;
      v121 = v128;
      if (v128)
      {
        goto LABEL_130;
      }

      v129 = *(v117 + 1);
      v130 = v129 - *v117;
      if (__OFSUB__(v129, *v117))
      {
        goto LABEL_132;
      }

      v128 = __OFADD__(v120, v130);
      v131 = v120 + v130;
      if (v128)
      {
        goto LABEL_135;
      }

      if (v131 >= v125)
      {
        v145 = *v116;
        v144 = v116[1];
        v128 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v128)
        {
          goto LABEL_143;
        }

        if (v120 < v146)
        {
          v115 = v113 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v49 = v181[1];
    if (v50 >= v49)
    {
      goto LABEL_114;
    }
  }

  v91 = v52 + v164;
  if (__OFADD__(v52, v164))
  {
    goto LABEL_147;
  }

  if (v91 >= v90)
  {
    v91 = v181[1];
  }

  if (v91 < v52)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v50 == v91)
  {
    goto LABEL_60;
  }

  i = v51;
  v92 = *v181;
  v93 = *(v180 + 72);
  v94 = *v181 + v93 * (v50 - 1);
  v191 = -v93;
  v170 = v52;
  v95 = (v52 - v50);
  v192 = v92;
  v171 = v93;
  v96 = v92 + v50 * v93;
  v172 = v91;
LABEL_45:
  v188 = v50;
  v175 = v96;
  v178 = v95;
  v179 = v94;
  while (1)
  {
    v97 = v199;
    sub_10011C770(v96, v199, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    sub_10011C770(v94, v203, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    sub_10011C770(v97, v200, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v102 = v189;
      sub_100509B1C(v200, v189, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
      v99 = *v202;
      (*v202)(v201, v102 + *(v190 + 52), v10);
      v100 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
      v101 = v102;
    }

    else
    {
      v98 = v198;
      sub_100509B1C(v200, v198, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
      v99 = *v202;
      (*v202)(v201, v98, v10);
      v100 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel;
      v101 = v98;
    }

    sub_10011E508(v101, v100);
    v103 = v195;
    sub_10011C770(v203, v195, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v104 = v189;
      sub_100509B1C(v103, v189, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
      v105 = v194;
      v99(v194, v104 + *(v190 + 52), v10);
      v106 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
    }

    else
    {
      v104 = v198;
      sub_100509B1C(v103, v198, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
      v105 = v194;
      v99(v194, v104, v10);
      v106 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel;
    }

    sub_10011E508(v104, v106);
    v107 = v201;
    v108 = static Date.< infix(_:_:)();
    v109 = *v197;
    (*v197)(v105, v10);
    v110 = v107;
    v4 = v10;
    v109(v110, v10);
    sub_10011E508(v203, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    sub_10011E508(v199, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    if ((v108 & 1) == 0)
    {
      v25 = v196;
LABEL_58:
      v50 = v188 + 1;
      v94 = v179 + v171;
      v95 = v178 - 1;
      v96 = v175 + v171;
      if (v188 + 1 == v172)
      {
        v50 = v172;
        v51 = i;
        v52 = v170;
        goto LABEL_60;
      }

      goto LABEL_45;
    }

    v25 = v196;
    if (!v192)
    {
      break;
    }

    v111 = v193;
    sub_100509B1C(v96, v193, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    swift_arrayInitWithTakeFrontToBack();
    sub_100509B1C(v111, v94, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    v94 += v191;
    v96 += v191;
    v89 = __CFADD__(v95++, 1);
    if (v89)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_10011E488()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2828 != -1)
  {
    swift_once();
  }

  v0 = SettingReader.isEnabled(_:with:)();

  return v0 & 1;
}

uint64_t sub_10011E508(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_10011E564()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100037C7C();
  if (v2)
  {
    sub_10022C350(&qword_100CAC480);
    v7 = sub_1000BCEFC();
    j__malloc_size(v7);
    sub_100016D38();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v9 = sub_1000B0EB8();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

uint64_t sub_10011E658()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for FeatureState();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  sub_10022C350(&qword_100CC74A0);
  (*(v9 + 104))(v13, enum case for FeatureState.enabled(_:), v7);
  (*(v2 + 104))(v6, enum case for Access.protected(_:), v0);
  result = sub_100004594();
  qword_100D90E00 = result;
  return result;
}

unint64_t sub_10011E808()
{
  result = qword_100CC2B38;
  if (!qword_100CC2B38)
  {
    sub_10022E824(&qword_100CC2B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2B38);
  }

  return result;
}

void sub_10011E86C()
{
  type metadata accessor for Page();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TransitionContext();
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      sub_10009BFD0(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10013D908(319, &qword_100CD2460, type metadata accessor for PageContainerSidebarState, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10011E9B8()
{
  v3 = sub_100031708();
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_1000426CC();
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_1000200F8();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_10002429C();
  sub_10001F2D4();
  v9 = sub_1000053B8();
  sub_10011C7D0(v9, v10);
  sub_100003940();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_100004648();
      v16 = sub_1000370B0();
      sub_10011A1F4(v16, v17);
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      sub_10001C7A0();
      v15 = v1;
      goto LABEL_7;
    }

    v12 = 0x2D7465736E7573;
    v13 = 0xE700000000000000;
  }

  else
  {
    v12 = 0x2D657369726E7573;
    v13 = 0xE800000000000000;
  }

  String.append(_:)(*&v12);
  sub_10011C5D8();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v6 + 8))(v2, v4);
  Double.write<A>(to:)();
  sub_100019B90();
  v15 = v0;
LABEL_7:
  sub_10011CA44(v15, v14);
  return sub_100004464();
}

uint64_t sub_10011EC0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10011E9B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10011EC48()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10011ECE4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v170 = a3;
  v166 = a1;
  v164 = a4;
  type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v175 = v7;
  v176 = v6;
  __chkstk_darwin(v6);
  sub_1000038E4();
  sub_100003990(v8);
  v9 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  sub_100003918(v11);
  v173 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v179 = v12;
  __chkstk_darwin(v13);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_10000E70C();
  v174 = v15;
  v178 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v180 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v184 = v18;
  sub_1000038CC();
  v172 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v181 = v19;
  __chkstk_darwin(v20);
  sub_1000038E4();
  v171 = v21;
  sub_1000038CC();
  v22 = type metadata accessor for Locale.Language();
  v23 = sub_100003E5C(v22, &v189);
  v167 = v24;
  __chkstk_darwin(v23);
  sub_1000038E4();
  sub_100003918(v25);
  v26 = type metadata accessor for Locale();
  v27 = sub_100003E5C(v26, &v188);
  v157 = v28;
  __chkstk_darwin(v27);
  sub_1000038E4();
  sub_100003990(v29);
  v30 = sub_10022C350(&qword_100CA3898);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  sub_100003990(v32);
  v33 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v33);
  sub_100003828();
  __chkstk_darwin(v34);
  v36 = v156 - v35;
  v37 = type metadata accessor for WeatherConditionBackgroundTimeData();
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_1000038E4();
  v177 = v39;
  v182 = sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v41 = v40;
  sub_100003828();
  __chkstk_darwin(v42);
  v44 = v156 - v43;
  v45 = sub_10022C350(&qword_100CAB9B0);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  v50 = v156 - v49;
  v51 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v53 = v52;
  __chkstk_darwin(v54);
  sub_1000037D8();
  sub_1000115E8();
  v55 = type metadata accessor for Calendar();
  v56 = sub_100003E5C(v55, &v187);
  v162 = v57;
  __chkstk_darwin(v56);
  sub_1000037D8();
  v60 = v59 - v58;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v53 + 8))(v4, v51);
  v61 = type metadata accessor for WeatherData(0);
  v62 = v166;
  v63 = &v166[*(v61 + 24)];
  WeatherDataModel.dailyForecast.getter();
  v161 = v60;
  v185 = v60;
  v186 = v62;
  v183 = v50;
  v64 = 0;
  sub_1001190BC();
  (*(v41 + 8))(v44, v182);
  v182 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v65 = UnitManager.temperature.getter();

  v66 = v169;
  v67 = *(v169 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_temperatureUnitUsedToPreprocess);
  *(v169 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_temperatureUnitUsedToPreprocess) = v65;
  v68 = v66;

  sub_1000161C0((v68 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherConditionBackgroundTimeDataFactory), *(v68 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherConditionBackgroundTimeDataFactory + 24));
  v69 = type metadata accessor for Location();
  sub_1000037E8();
  (*(v70 + 16))(v36, a2, v69);
  sub_10000E7B0();
  sub_10001B350(v71, v72, v73, v69);
  sub_100020FE8();
  sub_1001113A0(v74, v75, v76);
  v77 = sub_10000FEF4();
  sub_10001B350(v77, v78, v79, v61);
  sub_1000756B0(v36, v68, v170, v177);
  sub_1000180EC(v68, &qword_100CA3898);
  sub_1000180EC(v36, &qword_100CA65D8);
  sub_100020250();
  static Locale.current.getter();
  sub_1000184C0();
  Locale.language.getter();
  sub_10000E73C();
  v80 = v165;
  v81(v41 + 8);
  v82 = v68;
  LOBYTE(v68) = Locale.Language.prefersFullTemperatureScale.getter();
  sub_10000E73C();
  v83(v82, v168);
  v84 = v171;
  v156[5] = v63;
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.temperature.getter();
  v85 = *(v181 + 8);
  v181 += 8;
  v85(v84, v172);
  if (v68)
  {
    static Set<>.value.getter();
    v86 = v156[3];
    sub_100003934();
    sub_10001B350(v87, v88, v89, v80);
    v61 = v174;
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1000180EC(v86, &qword_100CAA9F0);
    LODWORD(v170) = enum case for WeatherFormatPlaceholder.none(_:);
    v90 = v175;
    v169 = *(v175 + 104);
    v156[4] = v175 + 104;
    v91 = v160;
    v92 = v176;
    v169(v160);
    v156[0] = v85;
    static UnitManager.standard.getter();
    sub_100028684();
    v156[2] = sub_1001150CC(v93, v94);
    sub_100044DF0();
    v95 = v184;
    v96 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    sub_100013288(v96, v97);

    v98 = *(v90 + 8);
    v156[1] = v90 + 8;
    v168 = v98;
    v98(v91, v92);
    v167 = *(v179 + 8);
    v167(v61, v63);
    v64 = v180 + 8;
    v166 = *(v180 + 8);
    (v166)(v95, v61);
    v99 = v171;
    WeatherDataModel.currentWeather.getter();
    CurrentWeather.temperature.getter();
    (v156[0])(v99, v172);
    static Set<>.unit.getter();
    sub_100003934();
    sub_10001B350(v100, v101, v102, v165);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1000180EC(v86, &qword_100CAA9F0);
    v103 = v176;
    (v169)(v91, v170, v176);
    static UnitManager.standard.getter();
    v104 = v173;
    v181 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v172 = v105;

    v168(v91, v103);
    v167(v61, v104);
    v106 = v61;
    (v166)(v95, v61);
    v107 = v103;
    v63 = v104;
    v108 = v61;
  }

  else
  {
    v108 = v174;
    static WeatherFormatStyle<>.weather.getter();
    v109 = v175;
    v107 = v176;
    v110 = *(v175 + 104);
    v91 = v160;
    LODWORD(v170) = enum case for WeatherFormatPlaceholder.none(_:);
    v169 = v110;
    v110(v160);
    static UnitManager.standard.getter();
    sub_100028684();
    sub_1001150CC(v111, v112);
    sub_100044DF0();
    v113 = v184;
    v114 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    sub_100013288(v114, v115);

    v168 = *(v109 + 8);
    v168(v91, v107);
    v167 = *(v179 + 8);
    v167(v108, v63);
    v166 = *(v180 + 8);
    (v166)(v113, v61);
    v181 = 0;
    v172 = 0;
    v106 = v61;
  }

  sub_10003778C();
  sub_1000302D8(v116, v117, v118);
  v119 = type metadata accessor for DayWeather();
  v120 = sub_1000131C4();
  sub_1000038B4(v120, v121, v119);
  if (v122)
  {
    sub_1000180EC(v64, &qword_100CAB9B0);
    v171 = 0xE200000000000000;
    v165 = 11565;
  }

  else
  {
    DayWeather.highTemperature.getter();
    (*(*(v119 - 8) + 8))(v64, v119);
    static WeatherFormatStyle<>.weather.getter();
    sub_100071518();
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    v123 = v108;
    v124 = v167;
    v167(v123, v63);
    v125 = sub_1000B0C70();
    v126(v125);
    static UnitManager.standard.getter();
    sub_100028684();
    sub_1001150CC(v127, v128);
    v165 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v171 = v129;

    v168(v91, v107);
    v130 = v61;
    v106 = v178;
    v61 = v180;
    v124(v130, v63);
    (v166)(v184, v106);
  }

  v131 = v159;
  sub_1000302D8(v183, v159, &qword_100CAB9B0);
  v132 = sub_10000C7F0();
  sub_1000038B4(v132, v133, v119);
  if (v122)
  {
    sub_1000180EC(v131, &qword_100CAB9B0);
    v147 = 0xE200000000000000;
    v145 = 11565;
  }

  else
  {
    DayWeather.lowTemperature.getter();
    (*(*(v119 - 8) + 8))(v131, v119);
    v134 = v174;
    static WeatherFormatStyle<>.weather.getter();
    v135 = v106;
    sub_100071518();
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    v136 = v167;
    v167(v134, v63);
    v137 = sub_1000B0C70();
    v138(v137);
    static UnitManager.standard.getter();
    v139 = v63;
    v140 = v91;
    sub_100028684();
    sub_1001150CC(v141, v142);
    v143 = v135;
    v144 = v184;
    v145 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v147 = v146;

    v168(v140, v176);
    v136(v61, v139);
    (v166)(v144, v143);
  }

  sub_1000180EC(v183, &qword_100CAB9B0);
  type metadata accessor for ListPreprocessedDataModel();
  sub_1000179D4();
  v148 = v164;
  sub_100113754(v177, v164 + v149, v150);
  v151 = v157;
  *v148 = v158;
  v148[1] = v151;
  v152 = v172;
  v148[2] = v181;
  v148[3] = v152;
  v153 = v171;
  v148[4] = v165;
  v148[5] = v153;
  v148[6] = v145;
  v148[7] = v147;
  sub_10000E73C();
  return v154(v161, v163);
}

uint64_t sub_10011FD18(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v2 = type metadata accessor for CurrentWeather();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v16 - v11;
  DayWeather.date.getter();
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v3 + 8))(v5, v2);
  v13 = Calendar.isDate(_:inSameDayAs:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  return v13 & 1;
}

void sub_10011FF40()
{
  type metadata accessor for WireframeLevelInterestManager();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_10011FFF8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10011FFF8()
{
  if (!qword_100CB3190)
  {
    sub_10022E824(&qword_100CB3198);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB3190);
    }
  }
}

uint64_t sub_1001200B0()
{
  sub_100006F14(v0 + *(v1 + 28));
}

uint64_t sub_100120110()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_100120130()
{

  return sub_100051BBC();
}

uint64_t sub_1001201E8()
{
  sub_100020314();
  type metadata accessor for Page();
  type metadata accessor for Array();
  sub_100020314();
  type metadata accessor for PageContainer();
  sub_10022E824(&qword_100CC5C30);
  sub_100006558();
  swift_getWitnessTable();
  type metadata accessor for EmptyVisualEffect();
  sub_100010890();
  sub_100121A00(v0, v1);
  sub_10001CAD0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100018678();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_10001F590();
  swift_getWitnessTable();
  sub_10000381C();
  type metadata accessor for VStack();
  sub_100008CF4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  sub_100016D5C();
  swift_getWitnessTable();
  sub_100020314();
  type metadata accessor for ForEach();
  sub_10008682C();
  swift_getWitnessTable();
  sub_100008C6C();
  swift_getWitnessTable();
  sub_10000381C();
  type metadata accessor for WireframeScrollInterestView();
  sub_100074E00();
  swift_getWitnessTable();
  sub_10000381C();
  type metadata accessor for LazyHStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10008682C();
  sub_10000381C();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10008682C();
  sub_100020314();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PagingScrollTargetBehavior();
  sub_1000B02D4();
  swift_getOpaqueTypeMetadata2();
  sub_1000B02D4();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000B02D4();
  sub_1000D42A0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10004230C();
  sub_100020314();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ForceInvalidationAfterExtendedLaunch(255);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  sub_10004230C();
  sub_1006D5DC4();
  sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch);
  sub_1000D42A0();
  swift_getWitnessTable();
  sub_100020314();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for Array();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_100020314();
  swift_getOpaqueTypeMetadata2();
  sub_10004230C();
  sub_10000381C();
  type metadata accessor for ScrollViewReader();
  type metadata accessor for StaticIf();
  swift_getWitnessTable();
  sub_10001C914();
  return swift_getWitnessTable();
}

void *sub_100120938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v171 = a2;
  v152 = a3;
  v4 = type metadata accessor for PrecipitationTotalStringAmount();
  v5 = sub_100003E5C(v4, v179);
  v150 = v6;
  __chkstk_darwin(v5);
  sub_100003C38();
  v149 = v7 - v8;
  __chkstk_darwin(v9);
  sub_10000E70C();
  sub_100003990(v10);
  v11 = sub_10022C350(&qword_100CD3AD0);
  __chkstk_darwin(v11 - 8);
  sub_100003918(&v128 - v12);
  v13 = type metadata accessor for PrecipitationComponentDescriptionContext();
  v14 = sub_100003E5C(v13, &__src[7]);
  v146 = v15;
  __chkstk_darwin(v14);
  sub_1000037D8();
  sub_100003990(v17 - v16);
  v18 = sub_10022C350(&qword_100CAB938);
  v19 = sub_100003E5C(v18, &__src[6]);
  v145 = v20;
  __chkstk_darwin(v19);
  sub_100003918(&v128 - v21);
  v22 = type metadata accessor for PrecipitationTotalHeroString();
  v23 = sub_100003E5C(v22, v176);
  v147 = v24;
  __chkstk_darwin(v23);
  sub_1000037D8();
  sub_100003990(v26 - v25);
  v27 = sub_10022C350(&qword_100CAB9B0);
  __chkstk_darwin(v27 - 8);
  sub_100003918(&v128 - v28);
  v29 = type metadata accessor for DayWeather();
  v30 = sub_100003E5C(v29, &__src[1]);
  v153 = v31;
  __chkstk_darwin(v30);
  sub_1000037D8();
  sub_100003990(v33 - v32);
  v34 = sub_10022C350(&qword_100CA7000);
  v35 = sub_100003E5C(v34, &__src[12]);
  v169 = v36;
  __chkstk_darwin(v35);
  sub_100003C38();
  v158 = v37 - v38;
  __chkstk_darwin(v39);
  sub_10000E70C();
  sub_100003918(v40);
  v41 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v41 - 8);
  sub_1000037D8();
  sub_100003990(v43 - v42);
  v44 = sub_10022C350(&qword_100CA7030);
  v45 = sub_100003E5C(v44, &v182);
  v168 = v46;
  __chkstk_darwin(v45);
  sub_100003C38();
  v49 = v47 - v48;
  __chkstk_darwin(v50);
  sub_10000E70C();
  sub_100003918(v51);
  v52 = type metadata accessor for TimeZone();
  v53 = sub_100003E5C(v52, __src);
  v163 = v54;
  __chkstk_darwin(v53);
  sub_1000037D8();
  v57 = v56 - v55;
  v58 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v60 = v59;
  __chkstk_darwin(v61);
  sub_1000037D8();
  v64 = v63 - v62;
  v65 = type metadata accessor for Date();
  sub_1000037C4();
  v67 = v66;
  __chkstk_darwin(v68);
  sub_100003C38();
  v71 = v69 - v70;
  __chkstk_darwin(v72);
  sub_10000E70C();
  v74 = sub_100003918(v73);
  v75 = *(type metadata accessor for WeatherData(v74) + 24);
  v142 = a1;
  v76 = a1 + v75;
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  v77 = *(v60 + 8);
  v138 = v64;
  object = v58;
  v131 = v60 + 8;
  v130 = v77;
  v77(v64, v58);
  sub_10002899C();
  v78 = v164;
  Date.startOfDay(timeZone:)();
  v79 = *(v163 + 8);
  v156 = v57;
  v163 += 8;
  v129 = v79;
  v79(v57, v154);
  v80 = *(v67 + 8);
  v141 = v65;
  v140 = v67 + 8;
  v139 = v80;
  v80(v71, v65);
  WeatherDataModel.hourlyForecast.getter();
  v180 = v78;
  sub_100121A48(sub_100121EF0, v178);
  WeatherDataModel.hourlyForecast.getter();
  v81 = v170;
  Forecast.metadata.getter();
  v82 = *(v168 + 8);
  v157 = v49;
  v137 = v168 + 8;
  v136 = v82;
  v82(v49, v81);
  type metadata accessor for HourWeather();
  sub_1000F4254(&qword_100CB0C20, &type metadata accessor for HourWeather);
  sub_1000F4254(&qword_100CB0C28, &type metadata accessor for HourWeather);
  v83 = v166;
  sub_1000F4254(&qword_100CB0C30, &type metadata accessor for HourWeather);
  Forecast.init(_:metadata:)();
  v84 = v158;
  WeatherDataModel.dailyForecast.getter();
  v85 = v164;
  v177 = v164;
  sub_1000FDB9C(sub_1001220B0, v175);
  v162 = v76;
  WeatherDataModel.dailyForecast.getter();
  Forecast.metadata.getter();
  v86 = *(v169 + 8);
  v135 = v169 + 8;
  v134 = v86;
  v86(v84, v83);
  sub_1000F4254(&qword_100CB0C50, &type metadata accessor for DayWeather);
  sub_1000F4254(&qword_100CB0C58, &type metadata accessor for DayWeather);
  sub_1000F4254(&qword_100CB0C60, &type metadata accessor for DayWeather);
  v87 = v155;
  Forecast.init(_:metadata:)();
  v174 = v85;
  sub_10000492C();
  sub_1001190BC();
  if (sub_100024D10(v76, 1, v87) == 1)
  {
    v88 = Forecast.startIndex.getter();
    sub_1001224F0(v88);
    Forecast.subscript.getter();
    if (sub_100024D10(v76, 1, v87) != 1)
    {
      sub_1003C8984(v76);
    }
  }

  else
  {
    (*(v153 + 32))(v167, v76, v87);
  }

  v89 = v143;
  sub_1000161C0((v143 + 64), *(v143 + 88));
  v90 = v138;
  WeatherDataModel.currentWeather.getter();
  v91 = v156;
  sub_10002899C();
  dispatch thunk of PrecipitationTotalHeroStringBuilderType.buildTodayString(currentWeather:hourlyForecast:dayWeather:timeZone:)();
  v129(v91, v154);
  v130(v90, object);
  v92 = v172;
  v154 = sub_1001225F8(v89, v142, v172);
  v142 = v93;
  v94 = [objc_opt_self() mainBundle];
  v183._object = 0x8000000100ADBD20;
  v95._countAndFlagsBits = 0x7469706963657250;
  v95._object = 0xED00006E6F697461;
  v96._object = 0x8000000100ADBCF0;
  v183._countAndFlagsBits = 0xD00000000000002FLL;
  v96._countAndFlagsBits = 0xD000000000000024;
  v97 = NSLocalizedString(_:tableName:bundle:value:comment:)(v96, 0, v94, v95, v183);
  countAndFlagsBits = v97._countAndFlagsBits;
  object = v97._object;

  v163 = *(v89 + 16);
  v98 = v159;
  DayWeather.precipitationAmount.getter();
  WeatherDataModel.currentWeather.getter();
  v99 = *(v169 + 16);
  v169 += 16;
  v130 = v99;
  v100 = v158;
  v101 = v166;
  (v99)(v158, v92, v166);
  v102 = *(v168 + 16);
  v168 += 16;
  v129 = v102;
  (v102)(v157, v173, v170);
  sub_10002899C();
  PrecipitationTotalHeroString.type.getter();
  v128 = type metadata accessor for DominantPrecipitation();
  v103 = sub_100019DBC();
  sub_10001B350(v103, v104, v105, v106);
  PrecipitationTotalHeroString.isDescriptionAllowedToShowNext24HourTotal.getter();
  v107 = v144;
  PrecipitationComponentDescriptionContext.init(currentWeather:dailyForecast:hourlyForecast:timeZone:heroStringPrecipitationType:isAllowedToShowNext24HourTotal:)();
  v143 = StringBuilder.makeString(for:data:formattedForAccessibility:)();
  v131 = v108;
  v146 = *(v146 + 8);
  (v146)(v107, v161);
  v145 = *(v145 + 8);
  (v145)(v98, v160);
  DayWeather.precipitationAmount.getter();
  WeatherDataModel.currentWeather.getter();
  (v130)(v100, v172, v101);
  (v129)(v157, v173, v170);
  sub_10002899C();
  v109 = v165;
  PrecipitationTotalHeroString.type.getter();
  v110 = sub_100019DBC();
  sub_10001B350(v110, v111, v112, v128);
  PrecipitationTotalHeroString.isDescriptionAllowedToShowNext24HourTotal.getter();
  PrecipitationComponentDescriptionContext.init(currentWeather:dailyForecast:hourlyForecast:timeZone:heroStringPrecipitationType:isAllowedToShowNext24HourTotal:)();
  v113 = v159;
  v171 = StringBuilder.makeString(for:data:formattedForAccessibility:)();
  v169 = v114;
  (v146)(v107, v161);
  (v145)(v113, v160);
  sub_10000492C();
  PrecipitationTotalHeroString.amount.getter();
  v115 = PrecipitationTotalStringAmount.formattedString.getter();
  v117 = v116;
  v118 = *(v150 + 8);
  v119 = v151;
  v118(v107, v151);
  sub_10000492C();
  PrecipitationTotalHeroString.amount.getter();
  v120 = PrecipitationTotalStringAmount.formattedAccessibleString.getter();
  v122 = v121;
  v118(v107, v119);
  v123 = PrecipitationTotalHeroString.shortSubtitle.getter();
  sub_10051C0B0(v115, v117, v120, v122, v123, v124, v143, v131, __src, v171, v169, countAndFlagsBits, object);
  (*(v147 + 8))(v109, v148);
  (*(v153 + 8))(v167, v155);
  v134(v172, v166);
  v136(v173, v170);
  v139(v164, v141);
  v125 = v152;
  result = memcpy(v152, __src, 0x70uLL);
  v127 = v142;
  v125[14] = v154;
  v125[15] = v127;
  return result;
}

uint64_t sub_100121A00(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100121A48(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v44 = type metadata accessor for HourWeather();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003C38();
  v38 = v7 - v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  v40 = v37 - v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003C54(v12, v13, v14, v15, v16, v17, v18, v19, v37[0]);
  v20 = sub_10022C350(&qword_100CA7028) - 8;
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = v37 - v22;
  sub_10022C350(&qword_100CA7030);
  sub_1000055CC(&qword_100CA7038);
  dispatch thunk of Sequence.makeIterator()();
  v24 = *(v20 + 44);
  sub_10000FAD4(&qword_100CA7040);
  sub_10001927C();
  v39 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10000C840();
    if (*&v23[v24] == v45[0])
    {
      sub_10003FDF4(v23, &qword_100CA7028);
      return v39;
    }

    sub_100069408();
    v25 = sub_1000227F4();
    v26(v25);
    (v2)(v45, 0);
    sub_10002454C();
    v27 = sub_10004E3A8();
    v5(v27);
    v28 = v2;
    v2 = v42;
    v29 = v41(v28);
    if (v3)
    {
      break;
    }

    if (v29)
    {
      (v5)(v38, v43, v44);
      sub_100017620();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000134F8();
        sub_100121F24();
        v2 = v46;
      }

      if (*(v2 + 16) >= *(v2 + 24) >> 1)
      {
        sub_100121F24();
        v2 = v46;
      }

      v33 = sub_10001BC4C();
      v5(v33);
    }

    else
    {
      v30 = sub_100008020();
      v31(v30);
    }
  }

  v34 = sub_100008020();
  v35(v34);
  sub_10003FDF4(v23, &qword_100CA7028);
  sub_100017620();

  return v2;
}

unint64_t sub_100121D50()
{
  result = qword_100CA6170;
  if (!qword_100CA6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6170);
  }

  return result;
}

BOOL sub_100121DA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  a3();
  sub_1000F4254(&qword_100CA7020, &type metadata accessor for Date);
  v11 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v6 + 8))(v10, v4);
  return (v11 & 1) == 0;
}

uint64_t sub_100121FD0()
{
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_100007E30();
  swift_getWitnessTable();
  type metadata accessor for ScrollEventStateReader();
  sub_10001EA78();
  return swift_getWitnessTable();
}

uint64_t sub_1001220E4()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v4 = static Date.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_1001221D0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100122208(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_100122228()
{
  sub_10000C778();
  sub_100043A44();
  swift_getAssociatedTypeWitness();
  sub_100011680();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LegacyLazyPageAnimatableTabView();
  type metadata accessor for LazyHStackAnimatableTabView();
  sub_100052704();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for StaticIf();
  sub_1000037C4();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_100003C38();
  __chkstk_darwin(v3);
  sub_10011D250();
  sub_100031758();
  swift_getWitnessTable();
  sub_1000242EC();
  sub_10001F590();
  swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  sub_10001C914();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_100008408();
  sub_1000833D8(v5, v6, WitnessTable);
  v7 = *(v1 + 8);
  v8 = sub_100008408();
  v7(v8);
  v9 = sub_100014268();
  sub_1000833D8(v9, v10, WitnessTable);
  v11 = sub_100014268();
  v7(v11);
  sub_10000536C();
}

uint64_t sub_1001224F0(uint64_t a1)
{
  sub_10022C350(&qword_100CA7000);
  sub_100122594();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
  result = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100122594()
{
  result = qword_100CA7018;
  if (!qword_100CA7018)
  {
    sub_10022E824(&qword_100CA7000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA7018);
  }

  return result;
}

uint64_t sub_1001225F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v19[0] = type metadata accessor for CurrentWeather();
  v4 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DominantPrecipitation();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v19 - v12;
  sub_1000161C0((a1 + 24), *(a1 + 48));
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  dispatch thunk of PrecipitationCalculatorType.findUniquePrecipitation(currentWeather:dailyForecast:)();
  (*(v4 + 8))(v6, v19[0]);
  (*(v8 + 16))(v10, v13, v7);
  v14 = (*(v8 + 88))(v10, v7);
  if (v14 == enum case for DominantPrecipitation.none(_:))
  {
    goto LABEL_2;
  }

  if (v14 == enum case for DominantPrecipitation.wintryMix(_:))
  {
    v15 = 0x61682E64756F6C63;
    goto LABEL_7;
  }

  if (v14 == enum case for DominantPrecipitation.snowfall(_:))
  {
    v15 = 0x6B616C66776F6E73;
    goto LABEL_7;
  }

  v17 = v14 == enum case for DominantPrecipitation.rainfall(_:) || v14 == enum case for DominantPrecipitation.sleet(_:);
  if (v17 || v14 == enum case for DominantPrecipitation.generic(_:))
  {
LABEL_2:
    v15 = 0x6C69662E706F7264;
LABEL_7:
    (*(v8 + 8))(v13, v7);
    return v15;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001228F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v62 = a3;
  v5 = type metadata accessor for TimeZone();
  __chkstk_darwin(v5 - 8);
  sub_1000037D8();
  v52 = v7 - v6;
  v8 = sub_10022C350(&qword_100CA7030);
  __chkstk_darwin(v8 - 8);
  v50 = &v46 - v9;
  v10 = sub_10022C350(&qword_100CA7000);
  __chkstk_darwin(v10 - 8);
  v61 = type metadata accessor for UVIndexComponentDescriptionContext();
  sub_1000037C4();
  v64 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v49 = v14 - v13;
  v59 = type metadata accessor for UVIndex();
  sub_1000037C4();
  v63 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = type metadata accessor for CurrentWeather();
  v56 = v20;
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v24 = &v46 - v23;
  v51 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v58 = v25;
  __chkstk_darwin(v26);
  sub_1000037D8();
  v48 = v28 - v27;
  v54 = *(v3 + 16);
  type metadata accessor for WeatherData(0);
  v53 = a1;
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.uvIndex.getter();
  v29 = *(v21 + 8);
  v55 = v21 + 8;
  v57 = v29;
  v29(v24, v20);
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.dailyForecast.getter();
  WeatherDataModel.hourlyForecast.getter();
  Location.timeZone.getter();
  v30 = v49;
  UVIndexComponentDescriptionContext.init(currentWeather:dailyForecast:hourlyForecast:timeZone:)();
  StringBuilder.makeWeatherDescription(for:data:)();
  v31 = *(v64 + 8);
  v64 += 8;
  v47 = v31;
  v31(v30, v61);
  v32 = *(v63 + 8);
  v63 += 8;
  v46 = v32;
  v32(v19, v59);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.uvIndex.getter();
  v57(v24, v56);
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.dailyForecast.getter();
  WeatherDataModel.hourlyForecast.getter();
  Location.timeZone.getter();
  UVIndexComponentDescriptionContext.init(currentWeather:dailyForecast:hourlyForecast:timeZone:)();
  v60 = StringBuilder.makeString(for:data:formattedForAccessibility:)();
  v54 = v33;
  v47(v30, v61);
  v34 = v59;
  v35 = v46;
  v46(v19, v59);
  v36 = v48;
  v37 = v51;
  (*(v58 + 16))(v62, v48, v51);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.uvIndex.getter();
  v57(v24, v56);
  UVIndex.category.getter();
  v35(v19, v34);
  v38 = UVIndex.ExposureCategory.localizedString.getter();
  v40 = v39;
  (*(v58 + 8))(v36, v37);
  result = type metadata accessor for UVIndexComponentPreprocessedDataModel();
  v42 = v62;
  v43 = (v62 + *(result + 20));
  *v43 = v38;
  v43[1] = v40;
  v44 = (v42 + *(result + 24));
  v45 = v54;
  *v44 = v60;
  v44[1] = v45;
  return result;
}

void sub_100122EB0(Swift::String *a1@<X8>)
{
  v81 = a1;
  type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v79 = v2;
  v80 = v1;
  __chkstk_darwin(v1);
  sub_1000038E4();
  v78 = v3;
  type metadata accessor for WeatherFormatScaling();
  sub_1000037C4();
  v76 = v5;
  v77 = v4;
  __chkstk_darwin(v4);
  sub_1000038E4();
  v75 = v6;
  v7 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v7 - 8);
  v72 = &v63 - v8;
  type metadata accessor for NSUnitLength.WeatherFormatUsage();
  sub_1000037C4();
  v68 = v10;
  v69 = v9;
  __chkstk_darwin(v9);
  sub_1000038E4();
  v66 = v11;
  v74 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  sub_1000037C4();
  v84 = v12;
  __chkstk_darwin(v13);
  v73 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v63 - v16;
  sub_10022C350(&qword_100CAB938);
  sub_1000037C4();
  v82 = v17;
  v83 = v18;
  __chkstk_darwin(v17);
  v20 = &v63 - v19;
  v21 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v23 = v22;
  __chkstk_darwin(v24);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v63 - v28;
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.visibility.getter();
  v30 = *(v23 + 8);
  v30(v29, v21);
  WeatherDataModel.currentWeather.getter();
  v64 = v20;
  v31 = StringBuilder.makeString(for:data:formattedForAccessibility:)();
  v70 = v32;
  v71 = v31;
  v30(v26, v21);
  v33 = *(v83 + 8);
  v83 += 8;
  v65 = v33;
  v33(v20, v82);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.visibility.getter();
  v30(v29, v21);
  (*(v68 + 104))(v66, enum case for NSUnitLength.WeatherFormatUsage.visibility(_:), v69);
  v34 = type metadata accessor for Locale();
  v35 = v72;
  sub_10001B350(v72, 1, 1, v34);
  static Set<>.full.getter();
  v36 = v75;
  v37 = v76;
  v38 = v77;
  (*(v76 + 104))(v75, enum case for WeatherFormatScaling.automatic(_:), v77);
  v39 = v67;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  (*(v37 + 8))(v36, v38);
  sub_1001235D8(v35);
  v40 = sub_1000109C8();
  v41(v40);
  v42 = v73;
  NSUnitLength.BaseWeatherFormatStyle.accessible.getter();
  v43 = *(v84 + 8);
  v84 += 8;
  v44 = v74;
  v43(v39, v74);
  (*(v79 + 104))(v78, enum case for WeatherFormatPlaceholder.none(_:), v80);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_100123738();
  v45 = v82;
  v46 = v64;
  v77 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v48 = v47;

  v49 = sub_1000109C8();
  v50(v49);
  v43(v42, v44);
  v65(v46, v45);
  sub_10022C350(&qword_100CA7300);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100A2D320;
  *(v51 + 32) = v77;
  *(v51 + 40) = v48;
  v52 = v71;
  *(v51 + 48) = v71;
  v53 = v70;
  *(v51 + 56) = v70;
  v85 = v51;
  v54 = v53;

  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  v55 = BidirectionalCollection<>.joined(separator:)();
  v57 = v56;

  v58 = [objc_opt_self() mainBundle];
  v86._object = 0x8000000100ADC3F0;
  v59._countAndFlagsBits = 0x696C696269736956;
  v59._object = 0xEA00000000007974;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0xD00000000000003CLL;
  v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v86);

  v62 = v81;
  *v81 = v61;
  v62[1]._countAndFlagsBits = v52;
  v62[1]._object = v54;
  v62[2]._countAndFlagsBits = v55;
  v62[2]._object = v57;
}

uint64_t sub_1001235D8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAA9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100123640(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(a1, v2);
}

unint64_t sub_100123738()
{
  result = qword_100CAB948;
  if (!qword_100CAB948)
  {
    type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB948);
  }

  return result;
}

uint64_t sub_100123790@<X0>(uint64_t a1@<X8>)
{
  v122 = a1;
  v135 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v139 = v1;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v121 = v4 - v3;
  v5 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v5 - 8);
  v119 = &v141._object - v6;
  v120 = type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle();
  sub_1000037C4();
  v140 = v7;
  __chkstk_darwin(v8);
  v117 = &v141._object - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v133 = &v141._object - v11;
  v12 = type metadata accessor for PressureTrend();
  sub_1000037C4();
  v136 = v13;
  __chkstk_darwin(v14);
  v16 = &v141._object - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v141._object - v18;
  v20 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  v132 = sub_10022C350(&qword_100CAC3D0);
  sub_1000037C4();
  v118 = v27;
  __chkstk_darwin(v28);
  v30 = &v141._object - v29;
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  v138 = v30;
  CurrentWeather.pressure.getter();
  v31 = *(v22 + 8);
  v31(v26, v20);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.pressureTrend.getter();
  v31(v26, v20);
  v32 = v136;
  v33 = *(v136 + 16);
  v134 = v19;
  v116 = v136 + 16;
  v115 = v33;
  v33(v16, v19, v12);
  v34 = *(v32 + 88);
  v137 = v12;
  v35 = v34(v16, v12);
  if (v35 == enum case for PressureTrend.rising(_:))
  {
    v36 = [sub_1000111C8() mainBundle];
    sub_10001527C();
    sub_100010220();
    v141._countAndFlagsBits = 0xD00000000000002FLL;
    v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v39, v40, v141);
    countAndFlagsBits = v41._countAndFlagsBits;

    object = v41._object;
  }

  else
  {
    if (v35 == enum case for PressureTrend.falling(_:))
    {
      v42 = [sub_1000111C8() mainBundle];
      sub_10001527C();
      sub_100010220();
    }

    else
    {
      if (v35 != enum case for PressureTrend.steady(_:))
      {
        (*(v136 + 8))(v16, v137);
        object = 0xE000000000000000;
        countAndFlagsBits = 0;
        goto LABEL_9;
      }

      v51 = [sub_1000111C8() mainBundle];
      sub_10001527C();
      sub_100010220();
      v50 = 0xD00000000000002FLL;
    }

    v52 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v43, *&v45, v47, *&v48, *&v50);
    countAndFlagsBits = v52._countAndFlagsBits;

    object = v52._object;
  }

LABEL_9:
  v53 = [sub_1000111C8() mainBundle];
  sub_10001527C();
  sub_100010220();
  v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v55, v56, v57, v142);
  v114 = v58._countAndFlagsBits;
  v113 = v58._object;

  sub_10022C350(&qword_100CA40C8);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100A2D320;
  v129 = type metadata accessor for Locale();
  v60 = v119;
  v61 = sub_10000900C();
  sub_10001B350(v61, v62, v63, v64);
  static Set<>.full.getter();
  v65 = v133;
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1001235D8(v60);
  v66 = v117;
  NSUnitPressure.BaseWeatherFormatStyle.accessible.getter();
  v67 = *(v140 + 8);
  v140 += 8;
  v123 = v67;
  v68 = v120;
  v67(v65, v120);
  v128 = enum case for WeatherFormatPlaceholder.none(_:);
  v69 = v139;
  v70 = *(v139 + 104);
  v126 = v139 + 104;
  v127 = v70;
  v71 = v121;
  v72 = v135;
  v70(v121);
  v125 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v124 = sub_1001241E4();
  v73 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v75 = v74;

  v112 = *(v69 + 8);
  v139 = v69 + 8;
  v112(v71, v72);
  v76 = v66;
  v77 = v68;
  v78 = v123;
  v123(v76, v68);
  *(v59 + 56) = &type metadata for String;
  v79 = sub_100035744();
  *(v59 + 32) = v73;
  *(v59 + 40) = v75;
  *(v59 + 96) = &type metadata for String;
  *(v59 + 104) = v79;
  v80 = object;
  v81 = countAndFlagsBits;
  *(v59 + 64) = v79;
  *(v59 + 72) = v81;
  *(v59 + 80) = v80;
  v117 = String.init(format:_:)();
  v114 = v82;

  v83 = v122;
  v115(v122, v134, v137);
  static Set<>.value.getter();
  v84 = sub_10000900C();
  sub_10001B350(v84, v85, v86, v129);
  v87 = v133;
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1001235D8(v60);
  v88 = v135;
  v127(v71, v128, v135);
  static UnitManager.standard.getter();
  v89 = v132;
  v116 = sub_10001A334();
  v115 = v90;

  v91 = v88;
  v92 = v88;
  v93 = v112;
  v112(v71, v91);
  v78(v87, v77);
  static Set<>.unit.getter();
  v94 = sub_10000900C();
  sub_10001B350(v94, v95, v96, v129);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1001235D8(v60);
  v127(v71, v128, v92);
  v97 = v125;
  static UnitManager.standard.getter();
  v98 = sub_10001A334();
  v129 = v99;

  v93(v71, v92);
  v123(v87, v77);
  sub_1001244A4();
  v101 = v100;
  (*(v118 + 8))(v97, v89);
  v102 = type metadata accessor for PressureComponentPreprocessedDataModel();
  v103 = (v83 + v102[5]);
  v104 = object;
  *v103 = countAndFlagsBits;
  v103[1] = v104;
  v105 = (v83 + v102[6]);
  v106 = v115;
  *v105 = v116;
  v105[1] = v106;
  v107 = (v83 + v102[7]);
  v108 = v129;
  *v107 = v98;
  v107[1] = v108;
  *(v83 + v102[8]) = v101;
  v109 = (v83 + v102[9]);
  v110 = v114;
  *v109 = v117;
  v109[1] = v110;
  return (*(v136 + 8))(v134, v137);
}

unint64_t sub_1001241E4()
{
  result = qword_100CAC470;
  if (!qword_100CAC470)
  {
    type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAC470);
  }

  return result;
}

void sub_10012423C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(*(v7 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v10 - 8) + 64);
  v17 = *(v8 + 80) | *(v11 + 80);
  v18 = ((v16 + ((v16 + v17) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v22 = 0;
  }

  else
  {
    v19 = a3 - v13;
    if (((v16 + ((v16 + v17) & ~v17) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (a2 > v13)
  {
    if (v18)
    {
      v23 = 1;
    }

    else
    {
      v23 = a2 - v13;
    }

    if (v18)
    {
      v24 = ~v13 + a2;
      bzero(a1, v18);
      *v6 = v24;
    }

    switch(v22)
    {
      case 1:
        *(v6 + v18) = v23;
        return;
      case 2:
        *(v6 + v18) = v23;
        return;
      case 3:
        goto LABEL_39;
      case 4:
        *(v6 + v18) = v23;
        return;
      default:
        return;
    }
  }

  switch(v22)
  {
    case 1:
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_39:
      __break(1u);
      JUMPOUT(0x10012447CLL);
    case 4:
      *&a1[v18] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if (v9 < v12)
        {
          a1 = (&a1[v15] & ~v14);
          v9 = v12;
          v7 = v10;
        }

        sub_10001B350(a1, a2, v9, v7);
      }

      return;
  }
}

uint64_t sub_1001244A4()
{
  v0 = sub_10022C350(&qword_100CAC3D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  type metadata accessor for PressureFormatter();
  static PressureFormatter.minPressure.getter();
  static PressureFormatter.maxPressure.getter();
  v10 = Measurement.unit.getter();
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  Measurement.value.getter();
  v12 = v11;
  result = Measurement.value.getter();
  if (v12 > v14)
  {
    __break(1u);
  }

  else
  {
    Double.clamped(to:)();
    Measurement.value.getter();
    Measurement.value.getter();
    Measurement.value.getter();
    v15 = *(v1 + 8);
    v15(v3, v0);
    v15(v6, v0);
    return (v15)(v9, v0);
  }

  return result;
}

uint64_t sub_1001246D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  type metadata accessor for TransitionContext();
  sub_100013B04();
  v6 = type metadata accessor for Optional();
  sub_1000037C4();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  (*(v8 + 16))(v13 - v11, a1, v6, v10);
  State.init(wrappedValue:)();
  return (*(v8 + 8))(a1, v6);
}

uint64_t sub_1001247D8(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v9 + 80);
  v13 = *(*(v5 - 8) + 64) + v12;
  if (v11 < a2)
  {
    v14 = *(v6 + 80) | *(v9 + 80);
    v15 = (((v13 & ~v12) + *(*(v8 - 8) + 64) + (((v13 & ~v12) + *(*(v8 - 8) + 64) + v14) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v16 = a2 - v11;
    v17 = v15 & 0xFFFFFFF8;
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v18 >= 0x10000)
    {
      LODWORD(v19) = 4;
    }

    else
    {
      LODWORD(v19) = 2;
    }

    if (v18 < 0x100)
    {
      LODWORD(v19) = 1;
    }

    if (v18 >= 2)
    {
      v19 = v19;
    }

    else
    {
      v19 = 0;
    }

    switch(v19)
    {
      case 1:
        v20 = *(a1 + v15);
        if (!v20)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      case 2:
        v20 = *(a1 + v15);
        if (v20)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        JUMPOUT(0x100124988);
      case 4:
        v20 = *(a1 + v15);
        if (!v20)
        {
          goto LABEL_24;
        }

LABEL_21:
        v21 = v20 - 1;
        if (v17)
        {
          v21 = 0;
          v22 = *a1;
        }

        else
        {
          v22 = 0;
        }

        return v11 + (v22 | v21) + 1;
      default:
LABEL_24:
        if (v11)
        {
          break;
        }

        return 0;
    }
  }

  if (v7 < v10)
  {
    a1 = ((a1 + v13) & ~v12);
    v7 = v10;
    v5 = v8;
  }

  return sub_100024D10(a1, v7, v5);
}

uint64_t sub_10012499C@<X0>(uint64_t *a1@<X8>)
{
  v275 = a1;
  v2 = *v1;
  *&v303 = v1;
  countAndFlagsBits = v2;
  v278 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v277 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100003990(v6 - v5);
  v287 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v308 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_100003990(v10 - v9);
  v11 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  sub_100003990(v13);
  v292 = type metadata accessor for NSUnitSpeed.WeatherFormatUsage();
  sub_1000037C4();
  v307 = v14;
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_100003990(v17 - v16);
  v299 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle();
  sub_1000037C4();
  v305 = v18;
  __chkstk_darwin(v19);
  sub_1000037D8();
  sub_100003990(v21 - v20);
  v22 = sub_10022C350(&qword_100CCFAB0);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  sub_1000039BC();
  v298 = v24;
  v306 = type metadata accessor for Locale();
  sub_1000037C4();
  v274 = v25;
  __chkstk_darwin(v26);
  sub_1000037D8();
  sub_100003990(v28 - v27);
  v29 = sub_10022C350(&qword_100CCBC28);
  sub_100003810(v29);
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  v297 = v31;
  v32 = sub_10022C350(&qword_100CCFAB8);
  sub_100003810(v32);
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  sub_100003990(v34);
  v296 = sub_10022C350(&qword_100CCFAC0);
  sub_1000037C4();
  v294 = v35;
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  v293 = v37;
  sub_10022C350(&qword_100CAC450);
  sub_1000037C4();
  v301 = v38;
  v302 = v39;
  sub_100003828();
  __chkstk_darwin(v40);
  sub_1000039BC();
  v300 = v41;
  v42 = sub_10022C350(&qword_100CAEC90);
  sub_100003810(v42);
  sub_100003828();
  __chkstk_darwin(v43);
  v45 = v253 - v44;
  v46 = sub_10022C350(&qword_100CACCC8);
  sub_1000037C4();
  v48 = v47;
  __chkstk_darwin(v49);
  v51 = v253 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = v253 - v53;
  v55 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v57 = v56;
  __chkstk_darwin(v58);
  sub_1000037D8();
  v61 = v60 - v59;
  v272 = type metadata accessor for Wind();
  sub_1000037C4();
  v271 = v62;
  __chkstk_darwin(v63);
  sub_1000037D8();
  v66 = v65 - v64;
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.wind.getter();
  (*(v57 + 8))(v61, v55);
  v289 = v54;
  Wind.speed.getter();
  v67 = v66;
  Wind.gust.getter();
  if (sub_100024D10(v45, 1, v46) == 1)
  {
    Wind.speed.getter();
    if (sub_100024D10(v45, 1, v46) != 1)
    {
      sub_10003FDF4(v45, &qword_100CAEC90);
    }
  }

  else
  {
    (*(v48 + 32))(v51, v45, v46);
  }

  v291 = v51;
  v304 = v46;
  Wind.compassDirection.getter();
  v281 = Wind.CompassDirection.abbreviation.getter();
  v285 = v68;
  v69 = v300;
  Wind.direction.getter();
  v70 = v301;
  Measurement.value.getter();
  v72 = v71;
  v73 = *(v302 + 8);
  v302 += 8;
  v267 = v73;
  v73(v69, v70);
  if (qword_100CA2A10 != -1)
  {
    swift_once();
  }

  sub_1001265A0(&qword_100CCFAC8, v74, type metadata accessor for WindComponentViewModelFactory);
  sub_1000288C0();
  v273 = v48;
  if (v311)
  {
    sub_1000103C4();
    v270._object = v75;
    v270._countAndFlagsBits = 0xD00000000000004ALL;
  }

  else
  {
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v76 = UnitManager.windSpeed.getter();

    NSUnitSpeed.isBeaufort.getter();

    v77 = [objc_opt_self() mainBundle];
    sub_1000103C4();
    v312._object = v78;
    sub_1000080F4();
    v270 = NSLocalizedString(_:tableName:bundle:value:comment:)(v79, v80, v81, v82, v312);
  }

  sub_1000288C0();
  if (v310 == 1)
  {
    sub_1000103C4();
    v269._object = v83;
    v269._countAndFlagsBits = 0xD00000000000004BLL;
  }

  else
  {
    v84 = [objc_opt_self() mainBundle];
    v313._object = 0x8000000100ADA750;
    sub_1000080F4();
    v269 = NSLocalizedString(_:tableName:bundle:value:comment:)(v85, v86, v87, v88, v313);
  }

  sub_1000288C0();
  if (v309 == 1)
  {
    sub_1000103C4();
    v268._object = v89;
    v268._countAndFlagsBits = 0xD00000000000004FLL;
  }

  else
  {
    v90 = [objc_opt_self() mainBundle];
    v314._object = 0x8000000100ADA790;
    sub_1000080F4();
    v268 = NSLocalizedString(_:tableName:bundle:value:comment:)(v91, v92, v93, v94, v314);
  }

  v280 = objc_opt_self();
  v95 = [v280 mainBundle];
  v315._object = 0x8000000100ADA810;
  v96._countAndFlagsBits = 0x4025204025;
  v97._object = 0x8000000100ADA7E0;
  v97._countAndFlagsBits = 0xD000000000000022;
  v96._object = 0xE500000000000000;
  v315._countAndFlagsBits = 0x10000000000000B6;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v97, 0, v95, v96, v315)._countAndFlagsBits;

  v262 = sub_10022C350(&qword_100CA40C8);
  v98 = swift_allocObject();
  v303 = xmmword_100A2D320;
  *(v98 + 16) = xmmword_100A2D320;
  v99 = v300;
  v263 = v67;
  Wind.direction.getter();
  sub_10012698C();
  static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
  sub_10022C350(&qword_100CAECF0);
  sub_100003934();
  sub_10001B350(v100, v101, v102, v103);
  static Locale.autoupdatingCurrent.getter();
  static MeasurementFormatUnitUsage.general.getter();
  v104 = v293;
  Measurement<>.FormatStyle.init(width:locale:usage:numberFormatStyle:)();
  *(v98 + 56) = &type metadata for String;
  v105 = sub_100035744();
  *(v98 + 64) = v105;
  v106 = v105;
  v279 = v105;
  sub_1001269D0();
  v107 = v301;
  v108 = v296;
  Measurement<>.formatted<A>(_:)();
  (*(v294 + 8))(v104, v108);
  v267(v99, v107);
  *(v98 + 96) = &type metadata for String;
  *(v98 + 104) = v106;
  v109 = v281;
  v110 = v285;
  *(v98 + 72) = v281;
  *(v98 + 80) = v110;

  v267 = static String.localizedStringWithFormat(_:_:)();
  sub_10004E878(v111, &countAndFlagsBits);

  v112 = [v280 mainBundle];
  v316._object = 0x8000000100ADA8D0;
  sub_100037C38();
  sub_1000080F4();
  v117 = NSLocalizedString(_:tableName:bundle:value:comment:)(v113, v114, v115, v116, v316);
  v265 = v117._countAndFlagsBits;
  object = v117._object;

  v118 = swift_allocObject();
  *(v118 + 16) = v303;
  v288 = enum case for NSUnitSpeed.WeatherFormatUsage.windGust(_:);
  v119 = v307;
  v294 = *(v307 + 104);
  v296 = v307 + 104;
  v120 = v286;
  v121 = v292;
  (v294)(v286);
  v122 = v290;
  sub_100003934();
  sub_10001B350(v123, v124, v125, v306);
  static Set<>.full.getter();
  v126 = v283;
  static WeatherFormatStyle<>.weather(_:usage:locale:)();

  sub_10003FDF4(v122, &qword_100CAA9F0);
  v127 = *(v119 + 8);
  v307 = v119 + 8;
  v298 = v127;
  v127(v120, v121);
  LODWORD(v293) = enum case for WeatherFormatPlaceholder.none(_:);
  v128 = v308;
  v129 = *(v308 + 104);
  v300 = v308 + 104;
  countAndFlagsBits = v129;
  v130 = v284;
  v131 = v287;
  v129(v284);
  v297 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  *&v303 = sub_1001265A0(&qword_100CAECB0, 255, &type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
  v132 = v299;
  v133 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v135 = v134;

  v136 = *(v128 + 8);
  v308 = v128 + 8;
  v301 = v136;
  v136(v130, v131);
  v302 = *(v305 + 8);
  v305 += 8;
  (v302)(v126, v132);
  v137 = v279;
  *(v118 + 56) = &type metadata for String;
  *(v118 + 64) = v137;
  *(v118 + 32) = v133;
  *(v118 + 40) = v135;
  *(v118 + 96) = &type metadata for String;
  *(v118 + 104) = v137;
  v138 = v285;
  *(v118 + 72) = v109;
  *(v118 + 80) = v138;

  v265 = static String.localizedStringWithFormat(_:_:)();
  v264 = v139;

  v140 = [v280 mainBundle];
  v317._object = 0x8000000100ADA990;
  sub_100037C38();
  sub_1000080F4();
  v145 = NSLocalizedString(_:tableName:bundle:value:comment:)(v141, v142, v143, v144, v317);
  v280 = v145._countAndFlagsBits;
  object = v145._object;

  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_100A2C3F0;
  v147 = sub_100004808();
  (v294)(v147);
  v148 = v290;
  sub_100003934();
  sub_10001B350(v149, v150, v151, v306);
  static Set<>.full.getter();
  v152 = v283;
  static WeatherFormatStyle<>.weather(_:usage:locale:)();

  sub_10003FDF4(v148, &qword_100CAA9F0);
  sub_10003C6C0();
  v153();
  v154 = v293;
  v155 = v287;
  sub_1000697C0();
  v156();
  static UnitManager.standard.getter();
  v157 = v152;
  v158 = sub_1000209C8();
  v160 = v159;

  v301(v130, v155);
  sub_10000EC7C();
  v161();
  v162 = v279;
  *(v146 + 56) = &type metadata for String;
  *(v146 + 64) = v162;
  *(v146 + 32) = v158;
  *(v146 + 40) = v160;
  v279 = static String.localizedStringWithFormat(_:_:)();
  v262 = v163;

  LODWORD(v280) = enum case for NSUnitSpeed.WeatherFormatUsage.windSpeed(_:);
  v164 = v286;
  (v294)(v286);
  v165 = v290;
  sub_100003934();
  v166 = v306;
  sub_10001B350(v167, v168, v169, v306);
  static Set<>.full.getter();
  static WeatherFormatStyle<>.weather(_:usage:locale:)();

  sub_10003FDF4(v165, &qword_100CAA9F0);
  sub_10003C6C0();
  v170();
  v171 = v284;
  v172 = v155;
  v173 = v155;
  v174 = countAndFlagsBits;
  countAndFlagsBits(v284, v154, v173);
  static UnitManager.standard.getter();
  object = sub_10000CD7C();
  sub_10004E878(v175, &v289);

  v176 = v171;
  sub_100074D70();
  v177();
  sub_10000EC7C();
  v178();
  static Set<>.value.getter();
  v179 = sub_100017C08();
  v181 = *(v180 - 256);
  (v294)(v179);
  v182 = v290;
  v183 = sub_100006464();
  sub_10001B350(v183, v184, v185, v166);
  sub_100016CB0();

  sub_10003FDF4(v182, &qword_100CAA9F0);
  v186 = v298;
  v298(v164, v181);
  v174(v176, v293, v172);
  static UnitManager.standard.getter();
  v259 = sub_10000CD7C();
  sub_10004E878(v187, &v287);

  sub_100074D70();
  v188();
  v189 = v157;
  sub_10000EC7C();
  v190();
  static Set<>.unit.getter();
  v191 = sub_100017C08();
  v193 = *(v192 - 256);
  v194 = v294;
  (v294)(v191);
  v195 = sub_100006464();
  sub_10001B350(v195, v196, v197, v306);
  sub_100016CB0();

  sub_10003FDF4(v182, &qword_100CAA9F0);
  v186(v164, v193);
  sub_10002C928();
  sub_1000697C0();
  v198();
  static UnitManager.standard.getter();
  sub_100014C20();
  v199 = v299;
  v280 = sub_10000CD7C();
  sub_10004E878(v200, &v286);

  sub_100074D70();
  v201();
  sub_10000EC7C();
  v202();
  v203 = sub_100004808();
  v194(v203);
  v204 = sub_100006464();
  sub_10001B350(v204, v205, v206, v306);
  static Set<>.full.getter();
  static WeatherFormatStyle<>.weather(_:usage:locale:)();

  sub_10003FDF4(v182, &qword_100CAA9F0);
  sub_10003C6C0();
  v207();
  sub_10002C928();
  sub_1000697C0();
  v208();
  static UnitManager.standard.getter();
  sub_100014C20();
  v256 = sub_1000209C8();
  sub_10004E878(v209, &v284);

  sub_100074D70();
  v210();
  (v302)(v189, v199);
  static Set<>.value.getter();
  v211 = sub_100004808();
  (v294)(v211);
  v212 = sub_100006464();
  sub_10001B350(v212, v213, v214, v306);
  v215 = v189;
  sub_100016CB0();

  sub_10003FDF4(v182, &qword_100CAA9F0);
  sub_10003C6C0();
  v216();
  sub_10002C928();
  sub_1000697C0();
  v217();
  static UnitManager.standard.getter();
  sub_100014C20();
  v218 = v304;
  v219 = v299;
  v254 = sub_1000209C8();
  sub_10004E878(v220, &v282);

  sub_100074D70();
  v221();
  (v302)(v189, v219);
  static Set<>.unit.getter();
  v222 = sub_100004808();
  (v294)(v222);
  v223 = sub_100006464();
  sub_10001B350(v223, v224, v225, v306);
  sub_100016CB0();

  sub_10003FDF4(v182, &qword_100CAA9F0);
  sub_10003C6C0();
  v226();
  sub_10002C928();
  sub_1000697C0();
  v227();
  static UnitManager.standard.getter();
  v228 = v291;
  v307 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  *&v303 = v229;

  sub_100074D70();
  v230();
  (v302)(v215, v219);
  static UnitManager.standard.getter();
  v231 = v282;
  static Locale.current.getter();
  v232 = v276;
  UnitManager.conditionUnits(locale:)();

  (*(v274 + 8))(v231, v306);
  v233 = v263;
  v234 = sub_1008C0668(v232, 1, 0, 1);
  v236 = v235;
  (*(v277 + 8))(v232, v278);
  v237 = *(v273 + 8);
  v237(v228, v218);
  v237(v289, v218);
  result = (*(v271 + 8))(v233, v272);
  v239 = v275;
  v240 = v260;
  *v275 = object;
  v239[1] = v240;
  v241 = v258;
  v239[2] = v259;
  v239[3] = v241;
  v242 = v257;
  v239[4] = v280;
  v239[5] = v242;
  v243 = v270._object;
  v239[6] = v270._countAndFlagsBits;
  v239[7] = v243;
  v244 = v255;
  v239[8] = v256;
  v239[9] = v244;
  v245 = v253[1];
  v239[10] = v254;
  v239[11] = v245;
  v246 = v303;
  v239[12] = v307;
  v239[13] = v246;
  v247 = v269._object;
  v239[14] = v269._countAndFlagsBits;
  v239[15] = v247;
  v248 = v266;
  v239[16] = v267;
  v239[17] = v248;
  v249 = v268._object;
  v239[18] = v268._countAndFlagsBits;
  v239[19] = v249;
  v250 = v264;
  v239[20] = v265;
  v239[21] = v250;
  v251 = v262;
  v239[22] = v279;
  v239[23] = v251;
  v252 = v285;
  v239[24] = v281;
  v239[25] = v252;
  *(v239 + 26) = v72 + 180.0;
  v239[27] = v234;
  v239[28] = v236;
  return result;
}

uint64_t sub_1001263D0()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912D0 = result;
  return result;
}

uint64_t sub_100126520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + *(type metadata accessor for State() + 28)) = 0;
  v6 = *(*(a2 - 8) + 32);

  return v6(a3, a1, a2);
}

uint64_t sub_1001265A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1001265E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v50 = a4;
  v51 = a6;
  v47 = a5;
  v48 = a2;
  v49 = a3;
  v46 = a1;
  __chkstk_darwin(a1);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v16;
  v53 = v17;
  v54 = a10;
  v55 = a11;
  v18 = type metadata accessor for TransitionContext();
  v19 = type metadata accessor for Optional();
  __chkstk_darwin(v19 - 8);
  v21 = &v46 - v20;
  v52 = a7;
  v53 = a8;
  v54 = a10;
  v55 = a11;
  v22 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  v23 = a9 + v22[17];
  *v23 = sub_1001241A8() & 1;
  *(v23 + 8) = v24;
  v25 = a9 + v22[18];
  *v25 = sub_1001241A8() & 1;
  *(v25 + 8) = v26;
  v27 = a9 + v22[19];
  *v27 = sub_1001241A8() & 1;
  *(v27 + 8) = v28;
  sub_10001B350(v21, 1, 1, v18);
  v29 = v21;
  v30 = v46;
  sub_1001246D8(v29, a7, a8, a10, a11);
  v31 = (a9 + v22[22]);
  *v31 = sub_100126398();
  v31[1] = v32;
  v33 = a9 + v22[24];
  *v33 = swift_getKeyPath();
  *(v33 + 8) = 0;
  v34 = a9 + v22[25];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  v35 = a9 + v22[26];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v36 = a9 + v22[27];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  v37 = type metadata accessor for Binding();
  v38 = *(v37 - 8);
  (*(v38 + 16))(a9, v30, v37);
  Binding.wrappedValue.getter();
  sub_100126520(v15, a8, a9 + v22[13]);
  *(a9 + v22[23]) = v47;
  v39 = (a9 + v22[15]);
  v40 = v49;
  *v39 = v48;
  v39[1] = v40;
  v41 = v51;
  *(a9 + v22[16]) = v50;
  *(a9 + v22[14]) = v41;
  v42 = [objc_opt_self() currentDevice];
  v43 = [v42 userInterfaceIdiom];

  v44 = 0;
  if (v43 == 1)
  {
    v44 = static Solarium.isEnabled.getter();
  }

  result = (*(v38 + 8))(v30, v37);
  *(a9 + v22[20]) = v44 & 1;
  return result;
}

unint64_t sub_10012698C()
{
  result = qword_100CCFAD0;
  if (!qword_100CCFAD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CCFAD0);
  }

  return result;
}

unint64_t sub_1001269D0()
{
  result = qword_100CCFAD8;
  if (!qword_100CCFAD8)
  {
    sub_10022E824(&qword_100CCFAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFAD8);
  }

  return result;
}

unint64_t sub_100126A34()
{
  result = qword_100CB2550;
  if (!qword_100CB2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2550);
  }

  return result;
}

uint64_t sub_100126A88()
{
  sub_100126A34();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100126AC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100083FB8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100126AF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v5 = type metadata accessor for Location();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v43 = (v8 - v7);
  v9 = sub_10022C350(&qword_100CA3898);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = sub_10022C350(&qword_100CA65D8);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for WeatherConditionBackgroundTimeData();
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  sub_1000161C0((v3 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_weatherConditionBackgroundTimeDataFactory), *(v3 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_weatherConditionBackgroundTimeDataFactory + 24));
  v44 = v6;
  v22 = *(v6 + 16);
  v22(v16, a1, v5);
  sub_10001B350(v16, 0, 1, v5);
  sub_1001114B8();
  v23 = type metadata accessor for WeatherData(0);
  sub_10001B350(v12, 0, 1, v23);
  sub_1000756B0(v16, v12, v42, v21);
  sub_1000180EC(v12, &qword_100CA3898);
  sub_1000180EC(v16, &qword_100CA65D8);
  if (qword_100CA26E8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000703C(v24, qword_100D90B20);
  v22(v43, a1, v5);
  sub_1001114B8();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v27 = 141558531;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    v28 = Location.name.getter();
    v30 = v29;
    v31 = sub_10001A0EC();
    v32(v31);
    v33 = sub_100078694(v28, v30, &v46);

    *(v27 + 14) = v33;
    *(v27 + 22) = 2082;
    v34 = sub_100126F9C();
    v36 = v35;
    sub_100010EB0();
    v37 = sub_100078694(v34, v36, &v46);

    *(v27 + 24) = v37;
    _os_log_impl(&_mh_execute_header, v25, v26, "Preprocessed data for LocationViewer; location=%{private,mask.hash}s, data=%{public}s", v27, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100010EB0();
    v38 = sub_10001A0EC();
    v39(v38);
  }

  return sub_100113818();
}

uint64_t sub_100126F9C()
{
  v2 = 7104878;
  v3 = sub_10022C350(&qword_100CACCC0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = sub_10022C350(&qword_100CA58B8);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  sub_10001320C();
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v27 = 0x3D657461647BLL;
  v28 = 0xE600000000000000;
  type metadata accessor for Date();
  sub_10001C584();
  sub_100127D04(v9, v10);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x746176656C65202CLL;
  v12._object = 0xEC0000003D6E6F69;
  String.append(_:)(v12);
  v13 = type metadata accessor for WeatherConditionBackgroundTimeData();
  sub_1000955E0(v0 + *(v13 + 20), v1, &qword_100CA58B8);
  v14 = type metadata accessor for Elevation();
  sub_1000038B4(v1, 1, v14);
  if (v15)
  {
    sub_1000180EC(v1, &qword_100CA58B8);
    v18 = 0xE300000000000000;
    v16 = 7104878;
  }

  else
  {
    v16 = Elevation.description.getter();
    v18 = v17;
    (*(*(v14 - 8) + 8))(v1, v14);
  }

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x61446E6F6F6D202CLL;
  v20._object = 0xEB000000003D6174;
  String.append(_:)(v20);
  sub_1000955E0(v0 + *(v13 + 24), v6, &qword_100CACCC0);
  v21 = type metadata accessor for BackgroundMoonData();
  sub_1000038B4(v6, 1, v21);
  if (v15)
  {
    sub_1000180EC(v6, &qword_100CACCC0);
    v23 = 0xE300000000000000;
  }

  else
  {
    v2 = BackgroundMoonData.moonImageName.getter();
    v23 = v22;
    (*(*(v21 - 8) + 8))(v6, v21);
  }

  v24._countAndFlagsBits = v2;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 125;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  return v27;
}

uint64_t sub_1001272C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v62 = a1[2];
  v28 = v3;
  v29 = v62;
  v34 = v2;
  type metadata accessor for Page();
  v27 = type metadata accessor for Array();
  v32 = v4;
  type metadata accessor for PageContainer();
  sub_10022E824(&qword_100CC5C30);
  swift_getWitnessTable();
  type metadata accessor for EmptyVisualEffect();
  sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v33 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v60 = &protocol witness table for EmptyView;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  v58 = swift_getOpaqueTypeConformance2();
  v59 = &protocol witness table for _GeometryGroupEffect;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for WireframeScrollInterestView();
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v5 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v66 = &protocol witness table for Solarium;
  v67 = v5;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PagingScrollTargetBehavior();
  v6 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = v6;
  v65 = &protocol witness table for PagingScrollTargetBehavior;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v62 = OpaqueTypeMetadata2;
  v63 = v8;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = &protocol witness table for _AllowsHitTestingModifier;
  v51 = swift_getWitnessTable();
  v52 = &protocol witness table for _TransactionModifier;
  swift_getWitnessTable();
  v9 = *(v4 + 8);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ForceInvalidationAfterExtendedLaunch(255);
  type metadata accessor for ModifiedContent();
  v10 = swift_getOpaqueTypeConformance2();
  v11 = sub_1006D5DC4();
  v49 = v10;
  v50 = sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch);
  v12 = swift_getWitnessTable();
  v27 = swift_getOpaqueTypeMetadata2();
  v13 = type metadata accessor for Array();
  v66 = v11;
  v67 = v12;
  v14 = swift_getOpaqueTypeConformance2();
  v48 = v9;
  v15 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v62 = v27;
  v63 = v13;
  v64 = v14;
  v65 = v15;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollViewReader();
  v16 = type metadata accessor for StaticIf();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v27 - v21;
  Solarium.init()();
  v40 = v29;
  v41 = v34;
  v42 = v28;
  v43 = v32;
  v44 = v30;
  v35 = v29;
  v36 = v34;
  v37 = v28;
  v38 = v32;
  v39 = v30;
  v26 = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v45 = &protocol witness table for Solarium;
  v46 = v26;
  v47 = v14;
  v23 = swift_getWitnessTable();
  sub_1000833D8(v19, v16, v23);
  v24 = *(v17 + 8);
  v24(v19, v16);
  sub_1000833D8(v22, v16, v23);
  return (v24)(v22, v16);
}

uint64_t sub_100127D04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100127D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v156 = a1;
  v149 = a3;
  v4 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v132 = v6;
  sub_1000038CC();
  v138 = type metadata accessor for Locale.Language();
  sub_1000037C4();
  v137 = v7;
  __chkstk_darwin(v8);
  sub_1000038E4();
  v136 = v9;
  sub_1000038CC();
  v152 = type metadata accessor for Locale();
  sub_1000037C4();
  v135 = v10;
  __chkstk_darwin(v11);
  sub_1000038E4();
  v134 = v12;
  sub_1000038CC();
  v168 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v173 = v13;
  __chkstk_darwin(v14);
  sub_1000038E4();
  v165 = v15;
  sub_1000038CC();
  v169 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v171 = v16;
  __chkstk_darwin(v17);
  sub_100003848();
  v146 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_10000E70C();
  v153 = v20;
  v170 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v172 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v166 = v23;
  sub_1000038CC();
  v158 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v157 = v24;
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = v27 - v26;
  v29 = sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v31 = v30;
  sub_100003828();
  __chkstk_darwin(v32);
  v34 = &v132 - v33;
  v35 = sub_10022C350(&qword_100CAB9B0);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003848();
  v142 = v37;
  sub_10000386C();
  __chkstk_darwin(v38);
  sub_100003878();
  v139 = v39;
  sub_10000386C();
  __chkstk_darwin(v40);
  v42 = &v132 - v41;
  v43 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v45 = v44;
  __chkstk_darwin(v46);
  sub_1000037D8();
  v49 = v48 - v47;
  v145 = type metadata accessor for Calendar();
  sub_1000037C4();
  v144 = v50;
  __chkstk_darwin(v51);
  sub_1000037D8();
  v54 = v53 - v52;
  v148 = a2;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v45 + 8))(v49, v43);
  v55 = v165;
  v151 = v156 + *(type metadata accessor for WeatherData(0) + 24);
  WeatherDataModel.dailyForecast.getter();
  v143 = v54;
  v174 = v54;
  v56 = v173;
  v167 = v42;
  v57 = v169;
  sub_1001190BC();
  v58 = v170;
  (*(v31 + 8))(v34, v29);
  v59 = v168;
  v133 = v28;
  WeatherDataModel.currentWeather.getter();
  v60 = v166;
  CurrentWeather.apparentTemperature.getter();
  v61 = v157 + 8;
  v150 = *(v157 + 8);
  v150(v28, v158);
  v62 = v153;
  static WeatherFormatStyle<>.weather.getter();
  v63 = *(v56 + 104);
  v164 = enum case for WeatherFormatPlaceholder.none(_:);
  v155 = v56 + 104;
  v163 = v63;
  v63(v55);
  v154 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_10011515C(&qword_100CA5410, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  sub_100024350();
  v162 = v64;
  v141 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v140 = v65;

  v161 = *(v56 + 8);
  v173 = v56 + 8;
  v161(v55, v59);
  v66 = *(v171 + 8);
  v171 += 8;
  v66(v62, v57);
  v67 = *(v172 + 8);
  v172 += 8;
  v159 = v67;
  (v67)(v60, v58);
  v68 = v134;
  static Locale.current.getter();
  v69 = v136;
  Locale.language.getter();
  v70 = v68;
  v71 = v152;
  (*(v135 + 8))(v70);
  LOBYTE(v57) = Locale.Language.prefersFullTemperatureScale.getter();
  (*(v137 + 8))(v69, v138);
  v72 = v133;
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.temperature.getter();
  v157 = v61;
  v150(v72, v158);
  v160 = v66;
  if (v57)
  {
    static Set<>.value.getter();
    v73 = v132;
    sub_10001B350(v132, 1, 1, v71);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1000180EC(v73, &qword_100CAA9F0);
    v74 = v165;
    v75 = v168;
    (v163)(v165, v164, v168);
    static UnitManager.standard.getter();
    v76 = v169;
    v77 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    sub_100030680(v77, v78);
    v161(v74, v75);
    v160(v62, v76);
    sub_100041BDC();
    v79();
    WeatherDataModel.currentWeather.getter();
    CurrentWeather.temperature.getter();
    v150(v72, v158);
    static Set<>.unit.getter();
    sub_10001B350(v73, 1, 1, v152);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1000180EC(v73, &qword_100CAA9F0);
    v80 = v163;
    (v163)(v74, v164, v75);
    static UnitManager.standard.getter();
    v81 = v169;
    v158 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v157 = v82;

    v161(v74, v75);
    v160(v62, v81);
    sub_100041BDC();
    v83();
    v84 = v80;
  }

  else
  {
    static WeatherFormatStyle<>.weather.getter();
    v85 = v165;
    v86 = v168;
    (v163)(v165, v164, v168);
    static UnitManager.standard.getter();
    v87 = v169;
    v88 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    sub_100030680(v88, v89);
    v161(v85, v86);
    v66(v62, v87);
    sub_100004464();
    sub_100041BDC();
    v90();
    v158 = 0;
    v157 = 0;
    v84 = v163;
  }

  v91 = v139;
  sub_1000302D8(v167, v139, &qword_100CAB9B0);
  v92 = type metadata accessor for DayWeather();
  v93 = sub_10000C7F0();
  sub_1000038B4(v93, v94, v92);
  if (v95)
  {
    sub_1000180EC(v91, &qword_100CAB9B0);
    v152 = 0;
    v151 = 0xE000000000000000;
    v105 = v142;
    v103 = v160;
  }

  else
  {
    DayWeather.highTemperature.getter();
    (*(*(v92 - 8) + 8))(v91, v92);
    static WeatherFormatStyle<>.weather.getter();
    v96 = v146;
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    v97 = v169;
    v160(v62, v169);
    v98 = v165;
    v99 = sub_1000211DC();
    v100(v99);
    static UnitManager.standard.getter();
    v152 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v151 = v101;

    v102 = v98;
    v103 = v160;
    v161(v102, v84);
    v103(v96, v97);
    v104 = sub_100004464();
    v159(v104);
    v105 = v142;
  }

  sub_1000302D8(v167, v105, &qword_100CAB9B0);
  v106 = sub_10000C7F0();
  sub_1000038B4(v106, v107, v92);
  if (v95)
  {
    sub_1000180EC(v105, &qword_100CAB9B0);
    v115 = 0;
    v117 = 0xE000000000000000;
  }

  else
  {
    v108 = v103;
    v109 = v165;
    v110 = v169;
    DayWeather.lowTemperature.getter();
    (*(*(v92 - 8) + 8))(v105, v92);
    v111 = v153;
    static WeatherFormatStyle<>.weather.getter();
    v112 = v146;
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    v108(v111, v110);
    v113 = v108;
    v114 = sub_1000211DC();
    v163(v114);
    static UnitManager.standard.getter();
    v115 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v117 = v116;

    v161(v109, v84);
    v113(v112, v110);
    sub_100041BDC();
    v118();
  }

  v119 = v167;
  v120 = sub_100128EA0(v156, v167);
  v122 = v121;
  sub_1000161C0((v147 + 176), *(v147 + 200));
  v123 = dispatch thunk of LocationMetadataManagerType.availableAddress(for:)();
  v125 = v124;
  sub_1000180EC(v119, &qword_100CAB9B0);
  result = (*(v144 + 8))(v143, v145);
  v127 = v149;
  v128 = v137;
  *v149 = v138;
  v127[1] = v128;
  v129 = v157;
  v127[2] = v158;
  v127[3] = v129;
  v130 = v140;
  v127[4] = v141;
  v127[5] = v130;
  v131 = v151;
  v127[6] = v152;
  v127[7] = v131;
  v127[8] = v115;
  v127[9] = v117;
  v127[10] = v120;
  v127[11] = v122;
  v127[12] = v123;
  v127[13] = v125;
  return result;
}

uint64_t sub_100128D14()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v4 = Calendar.isDateInToday(_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100128E20()
{
  type metadata accessor for PinnedScrollableViews();
  sub_100121A00(&qword_100CC0058, &type metadata accessor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_100128EA0(uint64_t a1, uint64_t a2)
{
  v168 = a2;
  v164 = a1;
  v2 = sub_10022C350(&qword_100CAB9B0);
  __chkstk_darwin(v2 - 8);
  v151 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v149 = &v142 - v5;
  v148 = type metadata accessor for TemperatureDifferenceThresholdDetector();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for WeatherFormatPlaceholder();
  v174 = *(v169 - 8);
  v7 = v174;
  __chkstk_darwin(v169);
  v9 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v10 = *(v172 - 8);
  __chkstk_darwin(v172);
  v150 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v142 - v13;
  __chkstk_darwin(v15);
  v17 = &v142 - v16;
  v18 = sub_10022C350(&qword_100CA53F8);
  v19 = *(v18 - 8);
  v175 = v18;
  v176 = v19;
  __chkstk_darwin(v18);
  v145 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v142 - v22;
  v24 = type metadata accessor for CurrentWeather();
  v163 = v24;
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v144 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v142 - v28;
  v160 = *(type metadata accessor for WeatherData(0) + 24);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.temperature.getter();
  v161 = *(v25 + 8);
  v162 = v25 + 8;
  v161(v29, v24);
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.accessible.getter();
  v30 = *(v10 + 8);
  v173 = v10 + 8;
  v157 = v17;
  v31 = v172;
  v30(v17, v172);
  v32 = v30;
  v170 = v30;
  v33 = v7 + 104;
  v34 = *(v7 + 104);
  v167 = enum case for WeatherFormatPlaceholder.none(_:);
  v35 = v169;
  v166 = v33;
  v156 = v34;
  (v34)(v9);
  v155 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v36 = sub_10011515C(&qword_100CA5410, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v171 = v14;
  v37 = v175;
  v154 = v36;
  v38 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v142 = v39;

  v40 = *(v174 + 8);
  v159 = v9;
  v174 += 8;
  v153 = v40;
  v40(v9, v35);
  v32(v14, v31);
  v165 = *(v176 + 8);
  v176 += 8;
  v165(v23, v37);
  sub_10022C350(&qword_100CA7300);
  v41 = swift_allocObject();
  v152 = xmmword_100A2C3F0;
  *(v41 + 16) = xmmword_100A2C3F0;
  v42 = v142;
  *(v41 + 32) = v38;
  *(v41 + 40) = v42;
  v43 = v146;
  TemperatureDifferenceThresholdDetector.init()();
  v143 = v29;
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.apparentTemperature.getter();
  v44 = v29;
  v45 = v163;
  v46 = v161;
  v161(v44, v163);
  v47 = v144;
  WeatherDataModel.currentWeather.getter();
  v48 = v145;
  CurrentWeather.temperature.getter();
  v46(v47, v45);
  v49 = [objc_opt_self() fahrenheit];
  v50 = v48;
  LOBYTE(v48) = TemperatureDifferenceThresholdDetector.areTemperaturesSignificantlyDifferent(_:_:threshold:thresholdUnit:)();

  v51 = v165;
  v52 = v50;
  v53 = v175;
  v165(v52, v175);
  v51(v23, v53);
  (*(v147 + 8))(v43, v148);
  v54 = v143;
  WeatherDataModel.currentWeather.getter();
  v158 = v23;
  v56 = v170;
  v55 = v171;
  if (v48)
  {
    v164 = v41;
    CurrentWeather.apparentTemperature.getter();
    v161(v54, v163);
    v57 = v157;
    static WeatherFormatStyle<>.weather.getter();
    NSUnitTemperature.BaseWeatherFormatStyle.accessible.getter();
    v58 = v172;
    v56(v57, v172);
    v59 = v159;
    v60 = v169;
    v156(v159, v167, v169);
    static UnitManager.standard.getter();
    v61 = v175;
    v62 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v64 = v63;

    v153(v59, v60);
    v170(v55, v58);
    v51(v158, v61);
    v65 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v65 = v62 & 0xFFFFFFFFFFFFLL;
    }

    v66 = v57;
    if (v65)
    {
      v67 = v62;
      v68 = v57;
      v69 = [objc_opt_self() mainBundle];
      v178._object = 0x8000000100AE2150;
      v70._countAndFlagsBits = 0x696C20736C656546;
      v70._object = 0xED0000402520656BLL;
      v178._countAndFlagsBits = 0xD000000000000055;
      v71._countAndFlagsBits = 0;
      v71._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v70, 0, v69, v71, v178);

      sub_10022C350(&qword_100CA40C8);
      v72 = swift_allocObject();
      *(v72 + 16) = v152;
      *(v72 + 56) = &type metadata for String;
      *(v72 + 64) = sub_100035744();
      *(v72 + 32) = v67;
      *(v72 + 40) = v64;
      v73 = String.init(format:_:)();
      v75 = v74;

      v76 = v164;
      v77 = *(v164 + 16);
      if (v77 >= *(v164 + 24) >> 1)
      {
        sub_100109810();
        v76 = v141;
      }

      *(v76 + 16) = v77 + 1;
      v78 = v76 + 16 * v77;
      *(v78 + 32) = v73;
      *(v78 + 40) = v75;
      v79 = v171;
      v66 = v68;
      v80 = v76;
    }

    else
    {

      v79 = v171;
      v80 = v164;
    }
  }

  else
  {
    v81 = v157;
    v82 = CurrentWeather.conditionDescription.getter();
    v83 = v54;
    v84 = v82;
    v86 = v85;
    v161(v83, v163);
    v87 = *(v41 + 16);
    v80 = v41;
    if (v87 >= *(v41 + 24) >> 1)
    {
      sub_100109810();
      v80 = v138;
    }

    *(v80 + 16) = v87 + 1;
    v88 = v80 + 16 * v87;
    *(v88 + 32) = v84;
    *(v88 + 40) = v86;
    v79 = v171;
    v66 = v81;
  }

  v89 = v149;
  sub_1000302D8(v168, v149, &qword_100CAB9B0);
  v90 = type metadata accessor for DayWeather();
  if (sub_100024D10(v89, 1, v90) == 1)
  {
    sub_1000180EC(v89, &qword_100CAB9B0);
    v91 = v151;
    v92 = v175;
    v93 = v167;
  }

  else
  {
    v94 = v158;
    DayWeather.highTemperature.getter();
    v95 = *(*(v90 - 8) + 8);
    v163 = v90;
    v95(v89, v90);
    static WeatherFormatStyle<>.weather.getter();
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    v96 = v66;
    v97 = v172;
    v98 = v170;
    v170(v96, v172);
    v99 = v150;
    NSUnitTemperature.BaseWeatherFormatStyle.accessible.getter();
    v98(v79, v97);
    v100 = v159;
    v164 = v80;
    v101 = v169;
    v156(v159, v167, v169);
    static UnitManager.standard.getter();
    v102 = v175;
    v103 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v162 = v104;

    v153(v100, v101);
    v105 = v99;
    v92 = v102;
    v98(v105, v97);
    v165(v94, v102);
    v106 = [objc_opt_self() mainBundle];
    v179._object = 0x8000000100AE20F0;
    v107._countAndFlagsBits = 0x4025203A68676948;
    v179._countAndFlagsBits = 0xD000000000000051;
    v107._object = 0xE800000000000000;
    v108._countAndFlagsBits = 0;
    v108._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v107, 0, v106, v108, v179);

    sub_10022C350(&qword_100CA40C8);
    v109 = swift_allocObject();
    *(v109 + 16) = v152;
    *(v109 + 56) = &type metadata for String;
    *(v109 + 64) = sub_100035744();
    v110 = v162;
    *(v109 + 32) = v103;
    *(v109 + 40) = v110;
    v111 = String.init(format:_:)();
    v113 = v112;
    v80 = v164;

    v114 = *(v80 + 16);
    if (v114 >= *(v80 + 24) >> 1)
    {
      sub_100109810();
      v80 = v139;
    }

    *(v80 + 16) = v114 + 1;
    v115 = v80 + 16 * v114;
    *(v115 + 32) = v111;
    *(v115 + 40) = v113;
    v91 = v151;
    v79 = v171;
    v66 = v157;
    v93 = v167;
    v90 = v163;
  }

  sub_1000302D8(v168, v91, &qword_100CAB9B0);
  if (sub_100024D10(v91, 1, v90) == 1)
  {
    sub_1000180EC(v91, &qword_100CAB9B0);
  }

  else
  {
    v116 = v158;
    DayWeather.lowTemperature.getter();
    (*(*(v90 - 8) + 8))(v91, v90);
    static WeatherFormatStyle<>.weather.getter();
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    v117 = v172;
    v118 = v170;
    v170(v66, v172);
    v119 = v150;
    NSUnitTemperature.BaseWeatherFormatStyle.accessible.getter();
    v118(v79, v117);
    v120 = v92;
    v121 = v159;
    v122 = v80;
    v123 = v169;
    v156(v159, v93, v169);
    static UnitManager.standard.getter();
    v171 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v125 = v124;

    v126 = v123;
    v80 = v122;
    v153(v121, v126);
    v118(v119, v117);
    v165(v116, v120);
    v127 = [objc_opt_self() mainBundle];
    v180._object = 0x8000000100AE2090;
    v128._countAndFlagsBits = 0x4025203A776F4CLL;
    v128._object = 0xE700000000000000;
    v129._countAndFlagsBits = 0;
    v129._object = 0xE000000000000000;
    v180._countAndFlagsBits = 0xD000000000000050;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v128, 0, v127, v129, v180);

    sub_10022C350(&qword_100CA40C8);
    v130 = swift_allocObject();
    *(v130 + 16) = v152;
    *(v130 + 56) = &type metadata for String;
    *(v130 + 64) = sub_100035744();
    *(v130 + 32) = v171;
    *(v130 + 40) = v125;
    v131 = String.init(format:_:)();
    v133 = v132;

    v134 = *(v122 + 16);
    if (v134 >= *(v122 + 24) >> 1)
    {
      sub_100109810();
      v80 = v140;
    }

    *(v80 + 16) = v134 + 1;
    v135 = v80 + 16 * v134;
    *(v135 + 32) = v131;
    *(v135 + 40) = v133;
  }

  v177 = v80;
  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  v136 = BidirectionalCollection<>.joined(separator:)();

  return v136;
}

uint64_t sub_100129F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v51 = a1;
  v56 = *(a1 - 8);
  __chkstk_darwin(a1);
  v53 = v2;
  v55 = &v44[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v63 = v3[3];
  v4 = v63;
  v64 = v5;
  v65 = v6;
  v66 = v7;
  type metadata accessor for Page();
  v8 = type metadata accessor for Array();
  v49 = v6;
  v50 = v8;
  v52 = v4;
  v63 = v4;
  v64 = v5;
  v65 = v6;
  v66 = v7;
  v9 = type metadata accessor for PageContainer();
  v10 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for EmptyVisualEffect();
  v13 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v63 = v12;
  v64 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v9;
  v64 = v10;
  v65 = WitnessTable;
  v66 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = v9;
  v64 = v10;
  v65 = WitnessTable;
  v66 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v63 = v9;
  v64 = &type metadata for Solarium;
  v65 = OpaqueTypeMetadata2;
  v66 = WitnessTable;
  v67 = &protocol witness table for Solarium;
  v68 = v16;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v63 = v9;
  v64 = &type metadata for Solarium;
  v65 = OpaqueTypeMetadata2;
  v66 = WitnessTable;
  v67 = &protocol witness table for Solarium;
  v68 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v61 = &protocol witness table for EmptyView;
  v62 = v17;
  swift_getWitnessTable();
  v18 = type metadata accessor for VStack();
  v19 = swift_getWitnessTable();
  v63 = v18;
  v64 = v19;
  swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for ModifiedContent();
  v21 = v50;
  v22 = swift_getWitnessTable();
  v63 = v21;
  v64 = v5;
  v50 = v5;
  v65 = v20;
  v66 = v22;
  v48 = v7;
  v67 = v7;
  v23 = type metadata accessor for ForEach();
  v63 = v18;
  v64 = v19;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = &protocol witness table for _GeometryGroupEffect;
  v58 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v47 = v23;
  v46 = v24;
  v25 = type metadata accessor for WireframeScrollInterestView();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v44[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v31 = &v44[-v30];
  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  v45 = byte_100D8FB88;
  v32 = v51;
  v33 = v55;
  v34 = *(v54 + *(v51 + 60));
  v35 = v56;
  (*(v56 + 16))(v55);
  v36 = (*(v35 + 80) + 48) & ~*(v35 + 80);
  v37 = swift_allocObject();
  v39 = v49;
  v38 = v50;
  *(v37 + 2) = v52;
  *(v37 + 3) = v38;
  v40 = v48;
  *(v37 + 4) = v39;
  *(v37 + 5) = v40;
  (*(v35 + 32))(&v37[v36], v33, v32);

  sub_10012A5C4(6447476, 0xE300000000000000, v45, v34, sub_1006D6314, v28);
  v41 = swift_getWitnessTable();
  sub_1000833D8(v28, v25, v41);
  v42 = *(v26 + 8);
  v42(v28, v25);
  sub_1000833D8(v31, v25, v41);
  return (v42)(v31, v25);
}

uint64_t sub_10012A580()
{
  IsVerySlow = DeviceIsVerySlow();
  v1 = DeviceUsesWireframeOnLocationViewScroll();
  result = DeviceIsVerySlow();
  byte_100D8FB88 = IsVerySlow;
  byte_100D8FB89 = v1;
  byte_100D8FB8A = result;
  return result;
}

uint64_t sub_10012A5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v12 = (a6 + *(type metadata accessor for WireframeScrollInterestView() + 48));
  *v12 = sub_10012A7AC();
  v12[1] = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;

  a5(v14);
}

uint64_t sub_10012A688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012A6F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10012A750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_10012A7AC()
{
  sub_10022C350(&qword_100CB3198);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t sub_10012A7F4()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  return _swift_task_switch(sub_10012A8E4, 0, 0);
}

uint64_t sub_10012A8E4()
{
  sub_1000302D8(*(v0 + 40), *(v0 + 128), &qword_100CE29C8);
  v1 = type metadata accessor for News();
  v2 = sub_10000C834();
  if (sub_100024D10(v2, v3, v1) == 1)
  {
    sub_100018144(*(v0 + 128), &qword_100CE29C8);
    if (qword_100CA2C20 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 168);
    sub_10000703C(*(v0 + 136), qword_100D91550);
    sub_100028CC8();
    sub_1000863F8(v5, v4);
  }

  else
  {
    v6 = *(v0 + 168);
    sub_100003B20();
    (*(v7 + 32))(v6);
    swift_storeEnumTagMultiPayload();
  }

  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  v35 = *(v0 + 184);
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v47 = v10;
  v37 = *(v0 + 152);
  v34 = *(v0 + 144);
  v48 = *(v0 + 120);
  v12 = *(v0 + 88);
  v46 = *(v0 + 96);
  v40 = v12;
  v49 = *(v0 + 80);
  v39 = *(v0 + 72);
  v44 = *(v0 + 216);
  v43 = *(v0 + 56);
  v41 = *(v0 + 48);
  v13 = *(v0 + 32);
  v45 = *(v0 + 40);
  v14 = *(v0 + 16);
  sub_10003BFF4();
  sub_1000863F8(v15, v16);
  sub_100041BE8();
  sub_1000863F8(v9, v8);
  sub_100028CC8();
  sub_1000863F8(v11, v10);
  v42 = *(v49 + 16);
  v17 = sub_10003C620();
  v18(v17);
  sub_1008B1680();
  v19 = (v35 + *(v34 + 80) + v13) & ~*(v34 + 80);
  v20 = *(v49 + 80);
  v21 = (v37 + v20 + v19) & ~v20;
  v36 = (v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v14;
  sub_100037E28();
  sub_100086450(v48, v24);
  sub_1000306A4();
  sub_100086450(v8, v23 + v13);
  sub_1000243CC();
  sub_100086450(v47, v23 + v19);
  v38 = *(v49 + 32);
  v38(v23 + v21, v46, v39);
  v25 = v23 + v36;
  *v25 = v41;
  *(v25 + 8) = v44;
  *(v23 + v22) = v43;

  asyncMain(block:)();

  sub_1000161C0((v14 + 200), *(v14 + 224));
  v42(v46, v13, v39);
  v26 = (v20 + 24) & ~v20;
  v27 = swift_allocObject();
  *(v27 + 16) = v41;
  v38(v27 + v26, v46, v39);
  *(v27 + ((v40 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;

  sub_10012B7C0(v45, sub_10012C0A8, v27);

  static os_signpost_type_t.end.getter();
  sub_10022C350(&qword_100CA40C8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100A2C3F0;
  v29 = Location.name.getter();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100035744();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  sub_100037E14();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  sub_100087544();
  sub_100025454();
  sub_100087544();

  sub_100003B14();

  return v32();
}

uint64_t sub_10012AE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100052404();
  v22 = type metadata accessor for WeatherData(0);
  sub_100003DDC();
  v24 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v25 = type metadata accessor for PreprocessedWeatherData();
  sub_1000037C4();
  sub_100045454();
  type metadata accessor for NewsDataModel();
  sub_1000037C4();
  v104 = *(v26 + 80);
  sub_10004ECA4();
  type metadata accessor for Location();
  sub_1000037C4();
  sub_10004ECA4();
  sub_1000452A4();

  v103 = v21;
  v27 = v21 + v24;

  v28 = *(v22 + 20);
  v29 = type metadata accessor for Locale();
  if (!sub_1000BC6F0(v29))
  {
    sub_100003B20();
    (*(v30 + 8))(v27 + v28, v20);
  }

  sub_1008B16A0();
  sub_100003D98();
  (*(v31 + 8))(v27 + v20);
  v32 = v27 + *(v22 + 28);
  v33 = sub_10022C350(&qword_100CAC710);
  v34 = sub_10000C834();
  if (!sub_100024D10(v34, v35, v33))
  {
    v36 = type metadata accessor for Date();
    sub_1000037E8();
    v38 = *(v37 + 8);
    v39 = sub_10003C620();
    v38(v39);
    v40 = sub_1000C8C20();
    if (!sub_100024D10(v32 + v33, 1, v40))
    {
      (v38)(v32 + v33, v36);
    }
  }

  v41 = sub_100040D3C();
  type metadata accessor for WeatherData.WeatherStatisticsState(v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for WeatherStatisticsModel();
    sub_100003D98();
    (*(v44 + 8))(v32);
    v43 = a20;
  }

  else
  {
    v43 = a20;
    if (!EnumCaseMultiPayload)
    {
    }
  }

  sub_100040D3C();
  v45 = type metadata accessor for WeatherDataOverrides();
  v46 = sub_10000C834();
  if (!sub_100024D10(v46, v47, v45))
  {
    v22 = type metadata accessor for Date();
    v48 = sub_10000C834();
    if (!sub_100024D10(v48, v49, v22))
    {
      sub_100019B68();
      (*(v50 + 8))(v32, v22);
    }

    v43 = *(v45 + 20);
    v51 = sub_10000CF38();
    if (!sub_100024D10(v51, v52, v22))
    {
      sub_100019B68();
      (*(v53 + 8))(v32 + v43, v22);
    }
  }

  v54 = sub_1000E1768();
  sub_1000037E8();
  v56 = *(v55 + 8);
  v57 = sub_10002C598();
  v56(v57);

  type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
  v58 = sub_1000E3268();
  if (!sub_1000138DC(v58))
  {

    sub_100030298();
    sub_100003D98();
    (*(v59 + 8))(v33);
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    sub_1000BAEF0();
  }

  sub_10001979C();
  v60 = v22 + v25[7];
  v61 = sub_10000C834();
  if (!sub_100024D10(v61, v62, v54))
  {
    v63 = sub_10003C620();
    v56(v63);
  }

  type metadata accessor for HourlyForecastComponentViewModel(0);

  type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
  sub_100041080();
  v64 = type metadata accessor for WeatherDescription();
  v65 = sub_10000CF38();
  if (!sub_100024D10(v65, v66, v64))
  {
    sub_100003B20();
    (*(v67 + 8))(v60 + v43, v64);
  }

  sub_100013D5C();

  v68 = v60 + *(type metadata accessor for ListPreprocessedDataModel() + 32);
  v69 = type metadata accessor for Date();
  sub_1000037E8();
  (*(v70 + 8))(v68, v69);
  type metadata accessor for WeatherConditionBackgroundTimeData();
  sub_100041080();
  v71 = type metadata accessor for Elevation();
  v72 = sub_10000CF38();
  if (!sub_100024D10(v72, v73, v71))
  {
    sub_100003B20();
    v74 = sub_100040E5C();
    v75(v74);
  }

  v76 = sub_1000C8DC4();
  v77 = sub_10000CF38();
  if (!sub_100024D10(v77, v78, v76))
  {
    sub_100003B20();
    v79 = sub_100040F2C();
    v80(v79);
  }

  v81 = v56 + a11;
  sub_100013D5C();

  v82 = v22 + v25[10];
  sub_100003B20();
  (*(v83 + 8))(v82, v64);
  type metadata accessor for UVIndexComponentPreprocessedDataModel();
  sub_100016588();
  sub_100042364();
  sub_100013D5C();

  v84 = v22 + v25[12];
  type metadata accessor for PressureTrend();
  sub_100003D98();
  (*(v85 + 8))(v84);
  type metadata accessor for PressureComponentPreprocessedDataModel();
  sub_100016588();
  sub_100042364();
  sub_100020F38();
  sub_100020F38();
  sub_100013D5C();

  v86 = sub_1000378B0();
  v87(v86);
  v88 = sub_10000CF38();
  if (!sub_100024D10(v88, v89, v71))
  {
    sub_100003B20();
    v90 = sub_100040E5C();
    v91(v90);
  }

  v92 = v81 & ~v104;
  v93 = sub_10000CF38();
  if (!sub_100024D10(v93, v94, v76))
  {
    sub_100003B20();
    v95 = sub_100040F2C();
    v96(v95);
  }

  sub_100013D5C();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for News();
    sub_100003D98();
    (*(v97 + 8))(v103 + v92);
  }

  sub_100044EBC();
  v99 = sub_100043AC8(v98);
  v100(v99);

  sub_100170790();

  return swift_deallocObject();
}

uint64_t sub_10012B6A0()
{
  type metadata accessor for Location();
  sub_10000548C();
  sub_100069BF8();

  v0 = sub_1000751C4();
  v1(v0);

  sub_100036F2C();

  return swift_deallocObject();
}

uint64_t sub_10012B75C()
{
  v0 = type metadata accessor for NewsDataModel();
  sub_100007074(v0, qword_100D91550);
  v1 = sub_100003940();
  *sub_10000703C(v1, v2) = _swiftEmptyArrayStorage;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10012B7C0(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v6 - 8);
  v8 = v35 - v7;
  v9 = sub_10022C350(&qword_100CE29C8);
  __chkstk_darwin(v9 - 8);
  v11 = v35 - v10;
  v12 = type metadata accessor for News();
  sub_1000037C4();
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v18 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v35 - v20;
  sub_10012BD40(a1, v11);
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_10003FDF4(v11, &qword_100CE29C8);
  }

  else
  {
    v36 = a3;
    v22 = *(v14 + 32);
    v22(v21, v11, v12);
    v23 = *(News.placements.getter() + 16);

    if (v23)
    {
      v24 = type metadata accessor for TaskPriority();
      v35[1] = v8;
      sub_10001B350(v8, 1, 1, v24);
      (*(v14 + 16))(v18, v21, v12);
      v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v26 = (v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35[0] = a2;
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      v22((v27 + v25), v18, v12);
      v28 = v36;
      *(v27 + v26) = v37;
      v29 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v29 = v35[0];
      v29[1] = v28;

      sub_1006C0138();

      return (*(v14 + 8))(v21, v12);
    }

    (*(v14 + 8))(v21, v12);
  }

  if (qword_100CA2780 != -1)
  {
    sub_100006BC4();
  }

  v31 = type metadata accessor for Logger();
  sub_10000703C(v31, qword_100D90CD8);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "No articles to fetch", v34, 2u);
    sub_100003884();
  }

  return a2(_swiftEmptyArrayStorage);
}

uint64_t sub_10012BB84()
{
  v1 = type metadata accessor for News();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_10012BC6C()
{
  sub_10022C350(&qword_100CB59A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v1 = static Axis.Set.vertical.getter();
  *(inited + 32) = v1;
  v2 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v2;
  v3 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v1)
  {
    v3 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v2)
  {
    return Axis.Set.init(rawValue:)();
  }

  return v3;
}

uint64_t sub_10012BD40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE29C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012BDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_1000037C4();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v9 = *(v8 + 24);
  v34 = *(v8 + 16);
  v29 = v34;
  v10 = v9;
  v28 = v9;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v35 = &type metadata for Bool;
  v36 = v10;
  v37 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = &protocol witness table for _AppearanceActionModifier;
  sub_100007E30();
  v27[1] = swift_getWitnessTable();
  v11 = type metadata accessor for ScrollEventStateReader();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v27 - v19;
  (*(v4 + 16))(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v30, a1, v18);
  v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v22 = swift_allocObject();
  v23 = v28;
  *(v22 + 16) = v29;
  *(v22 + 24) = v23;
  (*(v4 + 32))(v22 + v21, v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  ScrollEventStateReader.init(content:)();
  sub_10001EA78();
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v16, v11, WitnessTable);
  v25 = *(v13 + 8);
  v25(v16, v11);
  sub_1000833D8(v20, v11, WitnessTable);
  return (v25)(v20, v11);
}

uint64_t sub_10012C0A8()
{
  sub_100017580();
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  sub_100049E3C();
  v4 = *(v1 + 16);
  v6 = *(v1 + v5);

  return sub_10012C1BC(v0, v4, v1 + v3, v6);
}

uint64_t sub_10012C138@<X0>(uint64_t a1@<X8>)
{
  sub_100005A18();
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10012C6C4(v6, v2, v3, a1);
}

uint64_t sub_10012C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v43 = a3;
  v49 = a2;
  v5 = type metadata accessor for Location();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v42 = v6;
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewsArticlePlacement() - 8;
  __chkstk_darwin(v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  v48 = a1;
  v40 = v13;
  if (v13)
  {
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    v16 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_1000863F8(v14, v12);
      v17 = *v12;

      result = sub_100087544();
      v19 = *(v17 + 16);
      v20 = v16[2];
      if (__OFADD__(v20, v19))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v20 + v19 > v16[3] >> 1)
      {
        sub_1006A0164();
        v16 = v21;
      }

      if (*(v17 + 16))
      {
        v22 = (v16[3] >> 1) - v16[2];
        result = type metadata accessor for NewsArticle();
        if (v22 < v19)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v23 = v16[2];
          v24 = __OFADD__(v23, v19);
          v25 = v23 + v19;
          if (v24)
          {
            goto LABEL_20;
          }

          v16[2] = v25;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_18;
        }
      }

      v14 += v15;
      if (!--v13)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_16:
    v26 = v16[2];

    v27 = sub_10022C350(&qword_100CC77B0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 64);
    v31 = v45;
    v30 = v46;
    v32 = *(v45 + 16);
    v33 = v43;
    v32(v8, v43, v46);
    *&v8[v28] = v40;
    *&v8[v29] = v26;
    swift_storeEnumTagMultiPayload();
    v34 = v49;
    sub_10005C1D4(v8);
    sub_100087544();
    v35 = v44;
    v32(v44, v33, v30);
    v36 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v37 = (v42 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v48;
    *(v38 + 16) = v47;
    *(v38 + 24) = v39;
    (*(v31 + 32))(v38 + v36, v35, v30);
    *(v38 + v37) = v34;

    asyncMain(block:)();
  }

  return result;
}

uint64_t sub_10012C608()
{
  type metadata accessor for Location();
  sub_10000548C();
  sub_100069BF8();

  v0 = sub_1000751C4();
  v1(v0);

  sub_100036F2C();

  return swift_deallocObject();
}

uint64_t sub_10012C6C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v48 = a4;
  v40 = a3;
  v7 = type metadata accessor for WireframeScrollInterestView();
  v8 = *(v7 - 8);
  v38 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v52 = a2;
  v53 = &type metadata for Bool;
  v54 = a3;
  v55 = &protocol witness table for Bool;
  v44 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v49 = &v33 - v11;
  v45 = type metadata accessor for ModifiedContent();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = &v33 - v14;
  v36 = *(v7 + 44);
  LOBYTE(v52) = ScrollEventState.isScrolling.getter() & 1;
  v15 = *(v8 + 16);
  v37 = v8 + 16;
  v39 = v15;
  v16 = v10;
  v17 = v10;
  v18 = v7;
  v15(v17, a1, v7);
  v19 = v8;
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  v22 = v40;
  *(v21 + 16) = a2;
  *(v21 + 24) = v22;
  v34 = *(v19 + 32);
  v35 = v19 + 32;
  v34(v21 + v20, v16, v18);
  View.onChange<A>(of:initial:_:)();

  v39(v16, a1, v18);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = v22;
  v34(v23 + v20, v16, v18);
  v52 = a2;
  v53 = &type metadata for Bool;
  v54 = v22;
  v55 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v41;
  v25 = OpaqueTypeMetadata2;
  v27 = v49;
  View.onDisappear(perform:)();

  (*(v46 + 8))(v27, v25);
  v50 = OpaqueTypeConformance2;
  v51 = &protocol witness table for _AppearanceActionModifier;
  v28 = v45;
  WitnessTable = swift_getWitnessTable();
  v30 = v43;
  sub_1000833D8(v26, v28, WitnessTable);
  v31 = *(v47 + 8);
  v31(v26, v28);
  sub_1000833D8(v30, v28, WitnessTable);
  return (v31)(v30, v28);
}

uint64_t sub_10012CB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CB2CF0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_10012CC7C()
{
  *(v3 - 136) = v1;
  *(v3 - 128) = v2;
  *(v3 - 88) = v0;

  return KeyedDecodingContainer.allKeys.getter();
}

uint64_t sub_10012CCA0()
{

  return sub_10003FDA0(v1, v0);
}

uint64_t sub_10012CCDC()
{
  sub_10003BCD8();
  sub_10003BCD8();
  sub_10003BCD8();
}

uint64_t sub_10012CD78()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_10012CDB0(uint64_t a1)
{
  sub_10001B350(a1, 0, 1, v1);

  return type metadata accessor for SearchViewState(0);
}

void sub_10012CDE4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_10012CE7C()
{

  return sub_100024D10(v0 + v1, 1, v2);
}

uint64_t sub_10012CE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Page();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for PageContainer();
  v12 = (a5 + v11[13]);
  *v12 = a2;
  v12[1] = a3;
  v13 = v11[14];
  type metadata accessor for TransitionContext();
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 32))(a5 + v13, a4, v14);
  v15 = a5 + v11[15];
  *v15 = sub_1001241A8() & 1;
  *(v15 + 8) = v16;
  v17 = (a5 + v11[16]);
  type metadata accessor for PageContainerSidebarState(0);
  *(swift_allocObject() + 16) = 0;
  ObservationRegistrar.init()();
  result = sub_10012D044();
  *v17 = result;
  v17[1] = v19;
  return result;
}

uint64_t sub_10012D09C()
{
  sub_100025148();
  sub_1000037E8();
  sub_100003828();
  v3 = __chkstk_darwin(v2);
  (*(*(v0 - 8) + 16))(&v6 - v4, v1, v0, v3);
  swift_storeEnumTagMultiPayload();
  return sub_100020F10();
}

uint64_t sub_10012D154()
{
  v1 = OBJC_IVAR____TtC7WeatherP33_5EE0AB7E2265079F8C0DECAD5CEADEAC25PageContainerSidebarState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10012D220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[2] = a1;
  v22[3] = a3;
  sub_10001CB48();
  swift_getWitnessTable();
  sub_10000381C();
  v4 = type metadata accessor for _ViewModifier_Content();
  v23 = &type metadata for MapToolbarButton;
  v24 = &type metadata for Spacer;
  v5 = *(a2 + 16);
  v27 = &type metadata for ListToolbarButton;
  sub_100019D9C();
  sub_10000E9D0();
  type metadata accessor for TupleView();
  sub_1000065AC();
  swift_getWitnessTable();
  sub_10000381C();
  type metadata accessor for ToolbarItemGroup();
  sub_100008D0C();
  swift_getOpaqueTypeMetadata2();
  sub_10000E9D0();
  type metadata accessor for Optional();
  v22[10] = swift_getOpaqueTypeConformance2();
  sub_10001091C();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10001CB30();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v4;
  v24 = OpaqueTypeMetadata2;
  v25 = WitnessTable;
  v26 = OpaqueTypeConformance2;
  v22[0] = &opaque type descriptor for <<opaque return type of View.toolbar<A>(content:)>>;
  v9 = swift_getOpaqueTypeMetadata2();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v22 - v14;
  v16 = *(a2 + 24);
  v22[6] = v5;
  v22[7] = v16;
  v22[8] = v22[1];
  v17 = swift_checkMetadataState();
  v18 = swift_checkMetadataState();
  View.toolbar<A>(content:)();
  v23 = v17;
  v24 = v18;
  v25 = WitnessTable;
  v26 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v12, v9, v19);
  v20 = *(v10 + 8);
  v20(v12, v9);
  sub_1000833D8(v15, v9, v19);
  return (v20)(v15, v9);
}

uint64_t sub_10012D524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v66 = a4;
  v67 = a1;
  v56 = a2;
  v71 = a2;
  v72 = &type metadata for Spacer;
  v73 = &type metadata for ListToolbarButton;
  swift_getTupleTypeMetadata();
  v53 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v69 = type metadata accessor for ToolbarItemGroup();
  v70 = swift_getWitnessTable();
  v65 = v70;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v58 = &v48[-v5];
  v6 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v6 - 8);
  v52 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = swift_checkMetadataState();
  v55 = *(v63 - 8);
  __chkstk_darwin(v63);
  v51 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v60 = &v48[-v10];
  v11 = type metadata accessor for UserInterfaceSizeClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v50 = &v48[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10022C350(&qword_100CA64E8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v48[-v16];
  v18 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v18 - 8);
  v20 = &v48[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v48[-v22];
  __chkstk_darwin(v24);
  v26 = &v48[-v25];
  v64 = OpaqueTypeMetadata2;
  v27 = type metadata accessor for Optional();
  v61 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v48[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v62 = &v48[-v31];
  sub_10009D114();
  (*(v12 + 104))(v23, enum case for UserInterfaceSizeClass.compact(_:), v11);
  sub_10001B350(v23, 0, 1, v11);
  v32 = *(v15 + 56);
  sub_1000FC5D4(v26, v17);
  sub_1000FC5D4(v23, &v17[v32]);
  if (sub_100024D10(v17, 1, v11) == 1)
  {
    sub_10003FDF4(v23, &qword_100CA6028);
    sub_10003FDF4(v26, &qword_100CA6028);
    if (sub_100024D10(&v17[v32], 1, v11) == 1)
    {
      sub_10003FDF4(v17, &qword_100CA6028);
      v33 = v65;
      v34 = v63;
LABEL_9:
      v40 = static ToolbarItemPlacement.bottomBar.getter();
      __chkstk_darwin(v40);
      v41 = v57;
      *&v48[-32] = v56;
      *&v48[-24] = v41;
      *&v48[-16] = v67;
      swift_checkMetadataState();
      v42 = v51;
      ToolbarItemGroup.init(placement:content:)();
      v67 = v27;
      v43 = v55;
      (*(v55 + 16))(v60, v42, v34);
      v65 = *(v43 + 8);
      v65(v42, v34);
      v44 = v58;
      static ToolbarContentBuilder.buildBlock<A>(_:)();
      v45 = v59;
      v46 = v64;
      (*(v59 + 16))(v29, v44, v64);
      sub_10001B350(v29, 0, 1, v46);
      v69 = v34;
      v70 = v33;
      swift_getOpaqueTypeConformance2();
      v35 = v62;
      static ToolbarContentBuilder.buildIf<A>(_:)();
      v36 = *(v61 + 8);
      v36(v29, v67);
      (*(v45 + 8))(v44, v46);
      v65(v60, v34);
      v27 = v67;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1000FC5D4(v17, v20);
  if (sub_100024D10(&v17[v32], 1, v11) == 1)
  {
    sub_10003FDF4(v23, &qword_100CA6028);
    sub_10003FDF4(v26, &qword_100CA6028);
    (*(v12 + 8))(v20, v11);
LABEL_6:
    sub_10003FDF4(v17, &qword_100CA64E8);
    v33 = v65;
    v34 = v63;
    goto LABEL_7;
  }

  v37 = &v17[v32];
  v38 = v50;
  (*(v12 + 32))(v50, v37, v11);
  sub_10012DE94();
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v12 + 8);
  v39(v38, v11);
  sub_10003FDF4(v23, &qword_100CA6028);
  sub_10003FDF4(v26, &qword_100CA6028);
  v39(v20, v11);
  sub_10003FDF4(v17, &qword_100CA6028);
  v33 = v65;
  v34 = v63;
  if (v49)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_10001B350(v29, 1, 1, v64);
  v69 = v34;
  v70 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v62;
  static ToolbarContentBuilder.buildIf<A>(_:)();
  v36 = *(v61 + 8);
  v36(v29, v27);
LABEL_10:
  v69 = v34;
  v70 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (v36)(v35, v27);
}

unint64_t sub_10012DE94()
{
  result = qword_100CA6088;
  if (!qword_100CA6088)
  {
    type metadata accessor for UserInterfaceSizeClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6088);
  }

  return result;
}

uint64_t sub_10012DEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  v13 = type metadata accessor for LocationViewerToolbarModifier();
  v14 = *(a1 + v13[9]);
  v15 = v13[11];
  sub_100035B30(a1 + v15, &v30);
  v29[0] = v14;
  sub_1000833D8(a1 + v13[12], a2, a3);
  LOBYTE(v13) = *(a1 + v13[10]);
  sub_100035B30(a1 + v15, &v28);
  v27[0] = v13;
  sub_10010E5F4(v29, v25);
  v23 = 0;
  v24 = 1;
  v26[0] = v25;
  v26[1] = &v23;
  (*(v7 + 16))(v9, v12, a2);
  v21 = 0;
  v22 = 1;
  v26[2] = v9;
  v26[3] = &v21;
  sub_10012E148(v27, v20);
  v26[4] = v20;
  v19[0] = &type metadata for MapToolbarButton;
  v19[1] = &type metadata for Spacer;
  v19[2] = a2;
  v19[3] = &type metadata for Spacer;
  v19[4] = &type metadata for ListToolbarButton;
  v18[2] = sub_10012E1A4();
  v18[3] = &protocol witness table for Spacer;
  v18[4] = a3;
  v18[5] = &protocol witness table for Spacer;
  v18[6] = sub_10012E1F8();
  sub_10012E24C(v26, 5, v19);
  sub_10012E3B8(v27);
  v16 = *(v7 + 8);
  v16(v12, a2);
  sub_10010E78C(v29);
  sub_10012E3B8(v20);
  v16(v9, a2);
  return sub_10010E78C(v25);
}

unint64_t sub_10012E1A4()
{
  result = qword_100CD31C8;
  if (!qword_100CD31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD31C8);
  }

  return result;
}

unint64_t sub_10012E1F8()
{
  result = qword_100CD31D0;
  if (!qword_100CD31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD31D0);
  }

  return result;
}

uint64_t sub_10012E24C(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    sub_1000037D8();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  sub_1000037D8();
  v13 = v12 - v11;
  if (a2)
  {
    v14 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v15 = (v6 + 32);
    v16 = a2;
    do
    {
      if (a2 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v15;
      }

      v19 = *v14++;
      v18 = v19;
      v20 = *v5++;
      (*(*(v18 - 8) + 16))(v13 + v17, v20);
      v15 += 4;
      --v16;
    }

    while (v16);
  }

  return TupleView.init(_:)();
}

uint64_t sub_10012E428()
{
  sub_10022E824(&qword_100CA6F08);
  sub_10022E824(&qword_100CB2D40);
  sub_10012E508();
  sub_100005A00();
  sub_100006F64(v0, &qword_100CB2D40);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10012E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10039B14C(a1, a2);
  *a3 = result & 1;
  return result;
}

unint64_t sub_10012E508()
{
  result = qword_100CA6F00;
  if (!qword_100CA6F00)
  {
    sub_10022E824(&qword_100CA6F08);
    sub_10023FBF4(&qword_100CA6EE8, &unk_100CE1740);
    sub_10023FBF4(&qword_100CA6F10, &unk_100CA6F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6F00);
  }

  return result;
}

uint64_t sub_10012E5EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationViewerPageControl(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012E630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10012E5EC(&qword_100CC91C8);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10012E700()
{
  sub_10022E824(&qword_100CEB430);
  sub_10022E824(&qword_100CB2D40);
  sub_10012E7B4();
  sub_100005A00();
  sub_100006F64(v0, &qword_100CB2D40);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10012E7B4()
{
  result = qword_100CEB438;
  if (!qword_100CEB438)
  {
    sub_10022E824(&qword_100CEB430);
    sub_10012E508();
    sub_10012E840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CEB438);
  }

  return result;
}

unint64_t sub_10012E840()
{
  result = qword_100CE1750;
  if (!qword_100CE1750)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1750);
  }

  return result;
}

uint64_t sub_10012E89C(unsigned __int8 *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v9);
  v3 = v9;
  v5 = v10;
  v4 = v11;
  if (v9 == *a1 && (*(a1 + 1) == v10 ? (v7 = *(a1 + 2) == v11) : (v7 = 0), v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v3 == byte_100CB3250 && (v5 == qword_100CB3258 ? (v8 = v4 == unk_100CB3260) : (v8 = 0), v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {

    *a1 = v3;
    *(a1 + 1) = v5;
    *(a1 + 2) = v4;
  }

  return result;
}

uint64_t sub_10012E99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &__src[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v22 = 0xD000000000000010;
  v23 = 0x8000000100AD7220;
  v10._countAndFlagsBits = Location.Identifier.id.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 45;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = *(type metadata accessor for LocationViewerFullscreenMapPresentationSourceModifier(0) + 20);
  memcpy(__dst, (v3 + v12), 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, (v3 + v12), sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(__dst, &qword_100CB71A8);
    (*(v7 + 8))(v9, v6);
  }

  memcpy(v24, __src, sizeof(v24));
  v14._countAndFlagsBits = sub_10012EC4C();
  String.append(_:)(v14);

  v15 = v22;
  v16 = v23;
  KeyPath = swift_getKeyPath();
  v18 = sub_10022C350(&qword_100CCA070);
  (*(*(v18 - 8) + 16))(a2, a1, v18);
  result = sub_10022C350(&qword_100CCA078);
  v20 = a2 + *(result + 36);
  *v20 = v15;
  *(v20 + 8) = v16;
  *(v20 + 16) = KeyPath;
  *(v20 + 24) = 0;
  return result;
}

uint64_t sub_10012EC4C()
{
  sub_1000FDE84();
  sub_10012ECC8();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 45;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v1);

  return v3;
}

unint64_t sub_10012ECC8()
{
  result = qword_100CE1998;
  if (!qword_100CE1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1998);
  }

  return result;
}

uint64_t sub_10012ED1C()
{
  sub_10012ED58();

  return ShortDescribable.description.getter();
}

unint64_t sub_10012ED58()
{
  result = qword_100CE19D0;
  if (!qword_100CE19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE19D0);
  }

  return result;
}

uint64_t sub_10012EDB0@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CE19C0);
  sub_10000548C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100005E40();
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v1;
  a1[4] = sub_10012EF24(&qword_100CE19C8, &qword_100CE19C0);
  v7 = sub_100042FB0(a1);
  return (*(v5 + 32))(v7, v2, v1);
}

uint64_t sub_10012EF24(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10012EF84(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10012EF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a5)
  {
    v16 = a4;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(a4, 0);
    (*(v13 + 8))(v15, v12);
    v16 = v22[15];
  }

  v18 = (v16 & 0xC0) == 64;
  v19 = sub_10022C350(&qword_100CB3510);
  (*(*(v19 - 8) + 16))(a6, a1, v19);
  v20 = a6 + *(sub_10022C350(&qword_100CB3518) + 36);
  *v20 = v18;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3;
}

uint64_t sub_10012F190(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if ((a1 ^ a4))
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10012F208()
{
  type metadata accessor for PresentationWithoutInitialAnimation();
  result = sub_1000A1FE4();
  if ((result & 1) == 0)
  {
    sub_10022C350(&qword_100CA5A80);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10012F2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[3] = a4;
  v25[1] = a3;
  v6 = type metadata accessor for ScenePhase();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ScenePhase();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = v25 - v20;
  v22 = *(v8 + 16);
  v22(v11, a1, v6, v19);
  sub_10012F4DC(v11, v21);
  (v22)(v11, a2, v6);
  sub_10012F4DC(v11, v17);
  dispatch thunk of ScenePhaseManagerType.onChange(old:new:)();
  v23 = *(v14 + 8);
  v23(v17, v12);
  return (v23)(v21, v12);
}

uint64_t sub_10012F484(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  sub_1000161C0(a3, v5);
  return sub_10012F2AC(a1, a2, v5, v6);
}

uint64_t sub_10012F4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScenePhase();
  sub_1000037C4();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v4, v8);
  v11 = (*(v6 + 88))(v10, v4);
  if (v11 == enum case for ScenePhase.background(_:))
  {
    v12 = &enum case for ScenePhase.background(_:);
LABEL_7:
    (*(v6 + 8))(a1, v4);
    v13 = *v12;
    v14 = type metadata accessor for ScenePhase();
    return (*(*(v14 - 8) + 104))(a2, v13, v14);
  }

  if (v11 == enum case for ScenePhase.inactive(_:))
  {
    v12 = &enum case for ScenePhase.inactive(_:);
    goto LABEL_7;
  }

  if (v11 == enum case for ScenePhase.active(_:))
  {
    v12 = &enum case for ScenePhase.active(_:);
    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SessionScenePhaseObserver.scenePhaseChanged(old:new:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EndReason();
  sub_1000037C4();
  v69 = v5;
  v70 = v4;
  __chkstk_darwin(v4);
  sub_1000038E4();
  v68 = v6;
  sub_1000038CC();
  v7 = type metadata accessor for SessionEndData();
  sub_1000037C4();
  v78 = v8;
  __chkstk_darwin(v9);
  sub_1000038E4();
  v77 = v10;
  sub_1000038CC();
  v75 = type metadata accessor for UUID();
  sub_1000037C4();
  v73 = v11;
  __chkstk_darwin(v12);
  sub_1000038E4();
  v71 = v13;
  sub_1000038CC();
  v76 = type metadata accessor for Session.Kind();
  sub_1000037C4();
  v74 = v14;
  __chkstk_darwin(v15);
  sub_1000038E4();
  v72 = v16;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v81 = v18;
  v82 = v17;
  __chkstk_darwin(v17);
  sub_1000038E4();
  v80 = v19;
  sub_1000038CC();
  type metadata accessor for UserIdentityChange();
  sub_1000037C4();
  v66 = v21;
  v67 = v20;
  __chkstk_darwin(v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10022C350(&qword_100CAE2A8);
  __chkstk_darwin(v24 - 8);
  v26 = &v65 - v25;
  v28 = *(v27 + 56);
  v29 = type metadata accessor for ScenePhase();
  v30 = *(v29 - 8);
  v31 = v30[2];
  v31(v26, a1, v29);
  v31(&v26[v28], a2, v29);
  v32 = v30[11];
  v33 = sub_100005818();
  v34 = v32(v33);
  v35 = v34;
  v36 = enum case for ScenePhase.active(_:);
  if (v34 == enum case for ScenePhase.active(_:))
  {
    v37 = (v32)(v26, v29);
    v38 = enum case for ScenePhase.background(_:);
    if (v37 == v35 || v37 == enum case for ScenePhase.inactive(_:) || v37 == enum case for ScenePhase.background(_:))
    {
      v41 = sub_100005818();
      v42(v41);
      v43 = v79;
      sub_1000161C0(v79 + 3, v79[6]);
      dispatch thunk of IdentityRotationManagerType.rotateIdentifiersIfNeeded()();
      (*(v66 + 8))(v23, v67);
      sub_1000161C0(v43 + 8, v43[11]);
      v44 = v80;
      static Date.now.getter();
      sub_100199BEC(v44);
      v45 = v82;
      v46 = *(v81 + 8);
      v46(v44, v82);
      v81 = v43[2];
      v47 = v74;
      v48 = v72;
      v49 = v76;
      (*(v74 + 104))(v72, enum case for Session.Kind.userEvents(_:), v76);
      v50 = v71;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v73 + 8))(v50, v75);
      Date.init()();
      SessionManager.start(for:identifier:startDate:)();

      v46(v44, v45);
      return (*(v47 + 8))(v48, v49);
    }
  }

  else
  {
    v76 = v7;
    v38 = enum case for ScenePhase.background(_:);
    if (v34 == enum case for ScenePhase.background(_:))
    {
      v79 = v79[2];
      SessionManager.tracker.getter();
      (*(v69 + 104))(v68, enum case for EndReason.appBackground(_:), v70);
      v52 = v77;
      SessionEndData.init(endReason:)();
      sub_10022C350(&qword_100CAE2B0);
      v53 = type metadata accessor for DataEventTrait();
      sub_1000037C4();
      v55 = v54;
      v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100A2C3F0;
      (*(v55 + 104))(v57 + v56, enum case for DataEventTrait.unique(_:), v53);
      sub_100341780();
      v58 = v76;
      Tracker.push<A>(data:traits:file:line:)();

      (*(v78 + 8))(v52, v58);
      v59 = v80;
      Date.init()();
      SessionManager.end(endDate:completion:)();
      (*(v81 + 8))(v59, v82);
      v60 = v30[1];
      v61 = sub_100005818();
      v60(v61);
      return (v60)(v26, v29);
    }
  }

  v62 = (v32)(v26, v29);
  if (v62 != v36 && v62 != enum case for ScenePhase.inactive(_:) && v62 != v38)
  {
    return sub_100341718(v26);
  }

  v63 = sub_100005818();
  return v64(v63);
}

uint64_t sub_10012FE14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScenePhase();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, a2, v4);
  result = (*(v6 + 88))(v10, v4);
  if (result == enum case for ScenePhase.active(_:))
  {
    return sub_100199EA0(v2);
  }

  if (result != enum case for ScenePhase.inactive(_:) && result != enum case for ScenePhase.background(_:))
  {
    return (*(v6 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_10012FF48(void *a1)
{
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v19 = *(v4 - 8);
  v20 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MonitorAppLaunchStateViewModifier(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = a1[3];
  v11 = a1[4];
  sub_1000161C0(a1, v10);
  sub_100423DD0(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MonitorAppLaunchStateViewModifier);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_100423E30(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for MonitorAppLaunchStateViewModifier);
  (*(v11 + 8))(sub_100423C74, v13, v10, v11);

  sub_10000C70C(0, &qword_100CB4670);
  v14 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1001887C8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C567D0;
  v15 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000673B4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
  v16 = v18;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v3, v16);
  return (*(v19 + 8))(v6, v20);
}

uint64_t sub_100130334(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MonitorAppLaunchStateViewModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1001303C0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_10002B028(v3);
}

void sub_10013042C()
{
  if (qword_100CA26A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90A48);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Lazy: Hiding under presentation", v2, 2u);
  }
}

void sub_100130528(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x1001307B4);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v9 = v11;
          v7 = v8;
        }

        sub_10001B350(a1, a2, v9, v7);
      }

      return;
  }
}

uint64_t sub_1001307DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_100024D10(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

BOOL sub_1001309B8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }

    v4 = v2 == v3 && *(a1 + 16) == *(a2 + 16);
    if (!v4 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    v6 = 0;
    if ((*(a2 + 32) & 1) != 0 || v2 != v3)
    {
      return v6;
    }
  }

  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v7 = *(a1 + 49);
  v8 = *(a2 + 49);
  if (v7 == 4)
  {
    if (v8 != 4)
    {
      return 0;
    }
  }

  else if (v7 == 3)
  {
    if (v8 != 3)
    {
      return 0;
    }
  }

  else if ((v8 - 3) < 2 || v7 != v8)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  return *(a1 + 64) == *(a2 + 64);
}

uint64_t static NamespaceWrapper.== infix(_:_:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 & 1) != 0 || (a4)
  {
    return a2 & a4 & 1;
  }

  else
  {
    return static Namespace.ID.== infix(_:_:)();
  }
}

uint64_t sub_100130B68(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = 0;
  v22 = a1;
  v14 = *a1;
  type metadata accessor for ContentStatusBannerPresentationViewModifier(0);
  sub_10022C350(&qword_100CCA710);
  State.wrappedValue.getter();
  v15 = *v13;
  v16 = sub_1001095D0();
  if (v14 == v15)
  {
    sub_1000E74DC();
    (*(v5 + 104))(v7, enum case for ScenePhase.background(_:), v4);
    sub_1000EA178(&qword_100CE11D0);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v7, v4);
    v16 = (v18)(v10, v4);
    if ((v17 & 1) == 0)
    {
      State.wrappedValue.getter();
      sub_10010EC9C();
      sub_1001095D0();
      v16 = Transaction.animation.setter();
    }
  }

  __chkstk_darwin(v16);
  v19 = v22;
  *(&v21 - 2) = a2;
  *(&v21 - 1) = v19;
  withTransaction<A>(_:_:)();
}

uint64_t sub_100130E80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentStatusBannerPresentationViewModifier(0);
  sub_1005F1770(a2, v5);
  sub_10022C350(&qword_100CCA710);
  return State.wrappedValue.setter();
}

uint64_t sub_100130F54()
{
  v0 = type metadata accessor for PageControlDisplayStateModifier(0);
  sub_100003810(v0);
  sub_10001164C();
  v1 = sub_1000053B8();

  return sub_100130FC8(v1, v2);
}

uint64_t sub_100130FC8(uint64_t a1, char *a2)
{
  v2 = *a2;
  type metadata accessor for PageControlDisplayStateModifier(0);
  sub_10022C350(&qword_100CCAA60);
  State.wrappedValue.getter();
  *(v4 + 17) = v2;
}

uint64_t sub_100131040(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ContentStatusBannerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1001310C0(a1, a2, v6);
}

uint64_t sub_1001310C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  sub_100095588();
  v9 = sub_10010AE04(v7, v8);
  v10 = [objc_opt_self() labelColor];
  v11 = Color.init(uiColor:)();
  v12 = sub_10013125C(v7, v8);
  v13 = sub_100131644(v7, v8);
  LOBYTE(v7) = sub_100131A84(v7, v8);
  sub_1000180EC(v6, &qword_100CA6028);
  v14 = (a3 + *(type metadata accessor for ContentStatusBannerView() + 24));
  v15 = *(v14 + 32);
  v16 = *(v14 + 5);
  v17 = v14[1];
  v21 = *v14;
  v22 = v17;
  v23 = v15;
  v24 = v16;
  v19[1] = v9;
  v19[2] = v11;
  v19[3] = v12;
  v19[4] = v13;
  v20 = v7 & 1;
  sub_10022C350(&qword_100CD5878);
  return State.wrappedValue.setter();
}

uint64_t sub_10013125C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = &v21 - v14;
  if (!a2)
  {

    return static Font.footnote.getter();
  }

  (*(v4 + 104))(&v21 - v14, enum case for UserInterfaceSizeClass.compact(_:), v3, v15);
  sub_10001B350(v16, 0, 1, v3);
  v17 = *(v7 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v9, 1, v3) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v9[v17], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v9[v17], v3);
      sub_1000F1FA8(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v4 + 8);
      v20(v6, v3);
      sub_1000180EC(v16, &qword_100CA6028);
      v20(v12, v3);
      sub_1000180EC(v9, &qword_100CA6028);
      if (v19)
      {
        return static Font.caption.getter();
      }

      return static Font.footnote.getter();
    }

    sub_1000180EC(v16, &qword_100CA6028);
    (*(v4 + 8))(v12, v3);
LABEL_10:
    sub_1000180EC(v9, &qword_100CA64E8);
    return static Font.footnote.getter();
  }

  sub_1000180EC(v16, &qword_100CA6028);
  if (sub_100024D10(&v9[v17], 1, v3) != 1)
  {
    goto LABEL_10;
  }

  sub_1000180EC(v9, &qword_100CA6028);
  return static Font.caption.getter();
}

uint64_t sub_100131644(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = &v24 - v14;
  if (a2)
  {
    (*(v4 + 104))(&v24 - v14, enum case for UserInterfaceSizeClass.compact(_:), v3, v15);
    sub_10001B350(v16, 0, 1, v3);
    v17 = *(v7 + 48);
    sub_100095588();
    sub_100095588();
    if (sub_100024D10(v9, 1, v3) == 1)
    {
      sub_1000180EC(v16, &qword_100CA6028);
      if (sub_100024D10(&v9[v17], 1, v3) == 1)
      {
        sub_1000180EC(v9, &qword_100CA6028);
LABEL_13:
        v20 = [objc_opt_self() secondaryLabelColor];
        goto LABEL_14;
      }
    }

    else
    {
      sub_100095588();
      if (sub_100024D10(&v9[v17], 1, v3) != 1)
      {
        (*(v4 + 32))(v6, &v9[v17], v3);
        sub_1000F1FA8(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *(v4 + 8);
        v22(v6, v3);
        sub_1000180EC(v16, &qword_100CA6028);
        v22(v12, v3);
        sub_1000180EC(v9, &qword_100CA6028);
        if (v21)
        {
          goto LABEL_13;
        }

LABEL_11:
        v20 = [objc_opt_self() labelColor];
LABEL_14:
        v23 = v20;
        return Color.init(uiColor:)();
      }

      sub_1000180EC(v16, &qword_100CA6028);
      (*(v4 + 8))(v12, v3);
    }

    sub_1000180EC(v9, &qword_100CA64E8);
    goto LABEL_11;
  }

  v18 = [objc_opt_self() labelColor];

  return Color.init(uiColor:)();
}

BOOL sub_100131A84(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = &v21 - v14;
  if (a2 < 2)
  {
    return 0;
  }

  (*(v4 + 104))(&v21 - v14, enum case for UserInterfaceSizeClass.compact(_:), v3, v15);
  sub_10001B350(v16, 0, 1, v3);
  v17 = *(v7 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v9, 1, v3) == 1)
  {
    sub_1000180EC(v16, &qword_100CA6028);
    if (sub_100024D10(&v9[v17], 1, v3) == 1)
    {
      sub_1000180EC(v9, &qword_100CA6028);
      return 1;
    }

    goto LABEL_7;
  }

  sub_100095588();
  if (sub_100024D10(&v9[v17], 1, v3) == 1)
  {
    sub_1000180EC(v16, &qword_100CA6028);
    (*(v4 + 8))(v12, v3);
LABEL_7:
    sub_1000180EC(v9, &qword_100CA64E8);
    return 0;
  }

  (*(v4 + 32))(v6, &v9[v17], v3);
  sub_1000F1FA8(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v4 + 8);
  v20(v6, v3);
  sub_1000180EC(v16, &qword_100CA6028);
  v20(v12, v3);
  sub_1000180EC(v9, &qword_100CA6028);
  return (v19 & 1) != 0;
}

uint64_t sub_100131F1C()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD14F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        Namespace.ID.hash(into:)();
        result = Hasher._finalize()();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void sub_100132138(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A5D7C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_100131F1C();
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      Namespace.ID.hash(into:)();
      v13 = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (static Namespace.ID.== infix(_:_:)())
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1006A204C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_100132274()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.vfxCollisionEnabled.getter();
  SettingReader.read<A>(_:)();
}

void sub_100132344(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "didMoveToParentViewController:", a1);
  sub_1000E6B64();
}

uint64_t sub_1001323B4(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

uint64_t sub_1001323D0()
{
  sub_10000C778();
  type metadata accessor for LocationRowButtonStyle(0);
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  swift_unknownObjectRelease();
  sub_100006F14(v4 + 16);
  v5 = v4 + v0[6];
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v6 + 8))(v5);
  v7 = type metadata accessor for ListLocationViewModel(0);
  sub_10001673C(v7[6]);

  v8 = v5 + v7[7];
  type metadata accessor for ListLocationRowPrimaryText(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for Date();
    if (!sub_100005BB8(v9))
    {
      sub_100022BC0();
      (*(v10 + 8))(v8, v2);
    }
  }

  else
  {
  }

  sub_10000EA08(v5 + v7[8]);
  v11 = type metadata accessor for Date();
  if (!sub_10000CADC(v11))
  {
    sub_100003B20();
    v12 = sub_10003B9E8();
    v13(v12);
  }

  v14 = type metadata accessor for TimeZone();
  if (!sub_10000CADC(v14))
  {
    sub_100003B20();
    v15 = sub_10003B9E8();
    v16(v15);
  }

  sub_10001673C(v7[12]);

  sub_10001673C(v7[13]);

  sub_10001673C(v7[15]);

  sub_10001673C(v7[16]);

  sub_10001673C(v7[17]);

  sub_10001673C(v7[18]);

  sub_10001673C(v7[19]);

  sub_10001673C(v7[20]);

  v17 = v7[22];
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v18 + 8))(v5 + v17);
  sub_10001673C(v7[25]);

  sub_1000E4DF8(*(v4 + v0[13]), *(v4 + v0[13] + 8));
  v19 = v0[14];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v4 + v19, 1, v20))
    {
      sub_100003B20();
      (*(v21 + 8))(v4 + v19, v20);
    }
  }

  else
  {
  }

  sub_10000536C();

  return swift_deallocObject();
}

_BYTE *sub_100132730(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 1 | 0x80;
  }

  *result = v2;
  return result;
}

uint64_t sub_100132758(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10013276C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_10013277C()
{
  swift_unknownObjectRelease();

  sub_100006F14(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1001327CC()
{

  sub_100006F14(v0 + 24);

  sub_100018198(v0 + OBJC_IVAR____TtC7WeatherP33_971182080BE1A8931C9C36EF48C83CFF28LocationViewerBindingWrapper____lazy_storage___bindableActiveLocationID, &qword_100CC9930);
  v1 = OBJC_IVAR____TtC7WeatherP33_971182080BE1A8931C9C36EF48C83CFF28LocationViewerBindingWrapper___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100132864()
{
  sub_1001327CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1001328B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000F1EAC();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100132928(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  v8 = *(a2 + 8);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 49);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      goto LABEL_38;
    }

    if (v4 != v8 || *(a1 + 16) != *(a2 + 16))
    {
      goto LABEL_38;
    }

    v13 = *(a1 + 24) == *(a2 + 24) && v5 == v9;
    if (!v13 || v6 != v10)
    {
      goto LABEL_38;
    }

LABEL_25:
    if (v7 == 4)
    {
      v18 = v11 == 4;
    }

    else if (v7 == 3)
    {
      v18 = v11 == 3;
    }

    else
    {
      if ((v11 - 3) < 2)
      {
        goto LABEL_38;
      }

      v18 = v7 == v11;
    }

    if (!v18 || *(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64))
    {
      goto LABEL_38;
    }

    v22 = *(a1 + 72);
    v23 = *(a2 + 72);
    v15 = v22 >> 6;
    if (!(v22 >> 6))
    {
      if (v23 > 0x3F)
      {
        return v15 & 1;
      }

      goto LABEL_45;
    }

    if (v15 == 1)
    {
      LOBYTE(v15) = 0;
      if ((v23 & 0xC0) != 0x40)
      {
        return v15 & 1;
      }

LABEL_45:
      if ((v23 ^ v22))
      {
        return v15 & 1;
      }

LABEL_48:
      v24 = type metadata accessor for LocationViewGeometry(0);
      if ((sub_10016AB68(a1 + v24[6], a2 + v24[6]) & 1) != 0 && (static EdgeInsets.== infix(_:_:)() & 1) != 0 && *(a1 + v24[8]) == *(a2 + v24[8]))
      {
        LOBYTE(v15) = *(a1 + v24[9]) ^ *(a2 + v24[9]) ^ 1;
        return v15 & 1;
      }

      goto LABEL_38;
    }

    if (v23 == 128)
    {
      goto LABEL_48;
    }

LABEL_38:
    LOBYTE(v15) = 0;
    return v15 & 1;
  }

  LOBYTE(v15) = 0;
  if ((*(a2 + 32) & 1) == 0)
  {
    v16 = v4 == v8 && v5 == v9;
    if (v16 && v6 == v10)
    {
      goto LABEL_25;
    }
  }

  return v15 & 1;
}

uint64_t sub_100132AE0(uint64_t a1, char a2)
{
  sub_1000038D8();
  v3 = type metadata accessor for LocationViewerViewModel();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000281F0();
  __chkstk_darwin(v5);
  type metadata accessor for MeasuredLocationViewerView(0);
  sub_100104794();
  sub_100104794();
  v6 = sub_100003984();
  sub_100132BC0(v6, v7);
  sub_10003A2AC();
  sub_1001095D0();
  sub_1001095D0();
  return a2 & 1;
}

uint64_t sub_100132BC0(uint64_t a1, uint64_t a2)
{
  if (static LocationModel.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for LocationViewerViewModel(), sub_1000B93DC(), (v5) && (sub_100132CD4((a1 + v4[6]), (a2 + v4[6])) & 1) != 0 && (sub_100003CE8(), v6) && sub_100133A9C(*(a1 + v4[8]), *(a2 + v4[8])) && (sub_100003CE8(), v6) && (sub_100003CE8(), v6) && (sub_100003CE8(), v6) && (sub_100133404(), (v7) && (sub_100003CE8(), v6))
  {
    v10 = v4[14];
    v11 = *(a1 + v10 + 16);
    v17[0] = *(a1 + v10);
    v17[1] = v11;
    v12 = *(a1 + v10 + 32);
    v13 = (a2 + v10);
    v14 = *v13;
    v15 = v13[1];
    v17[2] = v12;
    v18[0] = v14;
    v16 = v13[2];
    v18[1] = v15;
    v18[2] = v16;
    v8 = sub_100133AE4(v17, v18);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100132CD4(void *a1, void *a2)
{
  type metadata accessor for WeatherCondition();
  sub_100005C98();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  sub_10022C350(&qword_100CA2CD8);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = sub_10022C350(&qword_100CB7300);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v19 = *(type metadata accessor for ConditionPickerMenuViewModel(0) + 20);
  v20 = *(v14 + 48);
  sub_100108724(a1 + v19, v17);
  sub_100108724(a2 + v19, &v17[v20]);
  sub_100003A40(v17);
  if (v18)
  {
    sub_100003A40(&v17[v20]);
    if (v18)
    {
      sub_1000180EC(v17, &qword_100CA2CD8);
LABEL_17:
      sub_100132F74();
      return v22 & 1;
    }

    goto LABEL_14;
  }

  sub_100108724(v17, v13);
  sub_100003A40(&v17[v20]);
  if (v21)
  {
    (*(v6 + 8))(v13, v2);
LABEL_14:
    sub_1000180EC(v17, &qword_100CB7300);
    goto LABEL_15;
  }

  (*(v6 + 32))(v10, &v17[v20], v2);
  sub_10040F744();
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v6 + 8);
  v24(v10, v2);
  v24(v13, v2);
  sub_1000180EC(v17, &qword_100CA2CD8);
  if (v23)
  {
    goto LABEL_17;
  }

LABEL_15:
  v22 = 0;
  return v22 & 1;
}

void sub_100132F74()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v57 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v51 = v9 - v8;
  v10 = sub_10022C350(&qword_100CA2CD8);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v56 = v12;
  v55 = sub_10022C350(&qword_100CB7300);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100003CF8();
  v54 = type metadata accessor for ConditionPickerMenuViewModel.Row(0);
  sub_10001D57C();
  __chkstk_darwin(v14);
  sub_10007549C();
  v58 = (v15 - v16);
  __chkstk_darwin(v17);
  v19 = (&v49 - v18);
  v20 = *(v4 + 16);
  if (v20 == *(v2 + 16) && v20 && v4 != v2)
  {
    sub_100028F84();
    v22 = v4 + v21;
    v23 = v2 + v21;
    v49 = (v6 + 32);
    v50 = (v6 + 8);
    v53 = *(v24 + 72);
    v25 = &qword_100CA2CD8;
    v26 = v56;
    while (1)
    {
      sub_10018EBD0(v22, v19, type metadata accessor for ConditionPickerMenuViewModel.Row);
      v27 = v58;
      sub_10018EBD0(v23, v58, type metadata accessor for ConditionPickerMenuViewModel.Row);
      v28 = *v19 == *v27 && v19[1] == v27[1];
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v29 = v25;
      v30 = *(v54 + 20);
      v31 = *(v55 + 48);
      sub_1000302D8(v19 + v30, v0, v29);
      v32 = v58 + v30;
      v25 = v29;
      sub_1000302D8(v32, v0 + v31, v29);
      sub_1000038B4(v0, 1, v57);
      if (v28)
      {
        sub_1000038B4(v0 + v31, 1, v57);
        if (!v28)
        {
          goto LABEL_20;
        }

        v33 = sub_100003984();
        sub_1000180EC(v33, v34);
        sub_100036FA8();
        sub_10018EC2C(v58, v35);
        v36 = sub_100037280();
        sub_10018EC2C(v36, v37);
      }

      else
      {
        v38 = sub_100031474();
        sub_1000302D8(v38, v39, v29);
        sub_1000038B4(v0 + v31, 1, v57);
        if (v40)
        {
          (*v50)(v26, v57);
LABEL_20:
          sub_1000180EC(v0, &qword_100CB7300);
          break;
        }

        v41 = v51;
        v42 = v57;
        (*v49)(v51, v0 + v31, v57);
        sub_1000E1334(&qword_100CAA7D8, &type metadata accessor for WeatherCondition);
        sub_1000C8C48();
        v52 = dispatch thunk of static Equatable.== infix(_:_:)();
        v43 = *v50;
        v44 = v41;
        v26 = v56;
        (*v50)(v44, v42);
        v45 = sub_100042210();
        (v43)(v45);
        sub_1000180EC(v0, v29);
        sub_10018EC2C(v58, type metadata accessor for ConditionPickerMenuViewModel.Row);
        v25 = v29;
        sub_10018EC2C(v19, type metadata accessor for ConditionPickerMenuViewModel.Row);
        if ((v52 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v23 += v53;
      v22 += v53;
      if (!--v20)
      {
        goto LABEL_22;
      }
    }

    sub_100036FA8();
    sub_10018EC2C(v58, v46);
    v47 = sub_100037280();
    sub_10018EC2C(v47, v48);
  }

LABEL_22:
  sub_10000536C();
}

void sub_100133404()
{
  sub_10000C778();
  sub_1000E1520();
  v67 = type metadata accessor for Date();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v59 = v7;
  v8 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v60 = v10;
  v64 = sub_10022C350(qword_100CA4F80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v68 = v12;
  sub_1000038CC();
  type metadata accessor for ContentStatusBanner();
  sub_1000037C4();
  v66 = v13;
  __chkstk_darwin(v14);
  sub_100003848();
  v69 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_100021390();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v18 = sub_10022C350(&qword_100CAAA30);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v20);
  sub_10000E70C();
  v65 = v21;
  if (v1 != v0 && *(v1 + 16) == *(v0 + 16))
  {
    v22 = 0;
    sub_100011430();
    v25 = v24 & v23;
    v27 = (v26 + 63) >> 6;
    v56 = v1 + 64;
    v57 = (v5 + 32);
    v58 = (v5 + 8);
    v63 = v2;
    v28 = v65;
    v61 = v27;
    v62 = v3;
    if ((v24 & v23) == 0)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v25 &= v25 - 1;
LABEL_9:
      sub_1002E5390();
      v33 = *v31;
      v32 = v31[1];
      sub_1002E5890(v66);
      sub_100086524();
      sub_100066B44();
      v34 = sub_10022C350(&qword_100CAAA38);
      *v3 = v33;
      v3[1] = v32;
      sub_100087D60();
      sub_10003DE74();
      sub_10000E7B0();
      sub_1002E5980(v35, v36, v37, v34);
      v2 = v63;
LABEL_10:
      sub_100051BBC();
      sub_10022C350(&qword_100CAAA38);
      sub_100005404(v28);
      if (v44)
      {
        break;
      }

      sub_100087D60();
      sub_10003DE74();
      sub_100003984();
      sub_100031B34();
      v39 = v38;

      if ((v39 & 1) == 0)
      {
        goto LABEL_39;
      }

      sub_100086524();
      sub_100066B44();
      v28 = v65;
      if (*v69 != *v2)
      {
        goto LABEL_38;
      }

      v40 = *(v69 + 2);
      v41 = *(v2 + 2);
      if (v40)
      {
        if (v40 == 1)
        {
          if (v41 != 1)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v41 < 2)
          {
            goto LABEL_38;
          }

          sub_1002E585C();
          v44 = v44 && v42 == v43;
          if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_38;
          }
        }
      }

      else if (v41)
      {
        goto LABEL_38;
      }

      v45 = *(v64 + 48);
      sub_100095588();
      sub_1002E4E08();
      sub_100095588();
      sub_1000038B4(v68, 1, v67);
      if (v44)
      {
        sub_1000038B4(v68 + v45, 1, v67);
        if (!v44)
        {
          goto LABEL_37;
        }

        sub_1000180EC(v68, &unk_100CB2CF0);
      }

      else
      {
        sub_1002E4E08();
        sub_100095588();
        sub_1000038B4(v68 + v45, 1, v67);
        if (v46)
        {
          sub_10003E21C();
          v55(v60, v67);
LABEL_37:
          sub_1000180EC(v68, qword_100CA4F80);
LABEL_38:
          sub_1002E5308();
LABEL_39:
          sub_100040B64();
          break;
        }

        (*v57)(v59, v68 + v45, v67);
        sub_1000426B4();
        sub_1000E1628(&qword_100CA39D0, 255, v47);
        v48 = dispatch thunk of static Equatable.== infix(_:_:)();
        v49 = *v58;
        v50 = sub_10003C310();
        v49(v50);
        v28 = v65;
        v2 = v63;
        (v49)(v60, v67);
        sub_1000180EC(v68, &unk_100CB2CF0);
        if ((v48 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      sub_100040B64();
      sub_1000314C8();
      sub_100040B64();
      v27 = v61;
      v3 = v62;
      if (!v25)
      {
LABEL_5:
        while (1)
        {
          v29 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v29 >= v27)
          {
            sub_10022C350(&qword_100CAAA38);
            sub_100003934();
            sub_10001B350(v51, v52, v53, v54);
            v25 = 0;
            goto LABEL_10;
          }

          v30 = *(v56 + 8 * v29);
          ++v22;
          if (v30)
          {
            v25 = (v30 - 1) & v30;
            v22 = v29;
            goto LABEL_9;
          }
        }

        __break(1u);
        return;
      }
    }
  }

  sub_10000536C();
}

BOOL sub_100133A9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = (a2 & 0x80) != 0 && ((a2 ^ a1) & 1) == 0;
  if ((a1 & 0x80) != 0)
  {
    return v2;
  }

  else
  {
    return a1 == a2;
  }
}

uint64_t sub_100133AE4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (v6)
    {
      v7 = a1[2] == a2[2] && v5 == v6;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_13:
  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL sub_100133BA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for Date();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100003CF8();
  v14 = sub_10022C350(qword_100CA4F80);
  sub_100003B20();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = *(a1 + 2);
  v19 = *(a2 + 2);
  if (v18)
  {
    if (v18 == 1)
    {
      if (v19 != 1)
      {
        return 0;
      }
    }

    else
    {
      if (v19 < 2)
      {
        return 0;
      }

      v20 = *(a1 + 1) == *(a2 + 1) && v18 == v19;
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  v21 = *(type metadata accessor for ContentStatusBanner() + 24);
  v22 = *(v14 + 48);
  sub_1000D47CC(&a1[v21], v17);
  sub_1000D47CC(&a2[v21], &v17[v22]);
  sub_100003A40(v17);
  if (v20)
  {
    sub_100003A40(&v17[v22]);
    if (v20)
    {
      sub_10002C4AC(v17, &unk_100CB2CF0);
      return 1;
    }

    goto LABEL_22;
  }

  sub_1000D47CC(v17, v2);
  sub_100003A40(&v17[v22]);
  if (v23)
  {
    (*(v7 + 8))(v2, v5);
LABEL_22:
    sub_10002C4AC(v17, qword_100CA4F80);
    return 0;
  }

  (*(v7 + 32))(v11, &v17[v22], v5);
  sub_10001CB00();
  sub_100133E8C(v25, v26);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v7 + 8);
  v28(v11, v5);
  v28(v2, v5);
  sub_10002C4AC(v17, &unk_100CB2CF0);
  return (v27 & 1) != 0;
}

uint64_t sub_100133E8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100133ED8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1[4] == a2[4] && v8 == v9;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = a1[7];
  v12 = a2[7];
  if (v11 == 1)
  {
    return v12 == 1;
  }

  if (v11)
  {
    if (v12 >= 2)
    {
      v14 = a1[6] == a2[6] && v11 == v12;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v12;
}

void sub_100134004()
{
  sub_10013D908(319, &qword_100CD2508, type metadata accessor for PageContainerSidebarState, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10009BFD0(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        type metadata accessor for TransitionContext();
        type metadata accessor for Optional();
        if (v3 <= 0x3F)
        {
          sub_10009BFD0(319, &qword_100CB3B28, &type metadata for Bool, &type metadata accessor for Binding);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100134184()
{
  sub_100031F04();
  type metadata accessor for IDView();
  sub_10022E824(&qword_100CA4628);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CE1580);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  sub_1000717DC();
  type metadata accessor for ModifiedContent();
  sub_100011680();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  sub_100006F64(&qword_100CA4620, &qword_100CA4628);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100006F64(&qword_100CB0558, &qword_100CE1580);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10001F590();
  swift_getWitnessTable();
  sub_10000381C();
  type metadata accessor for VStack();
  sub_100008CF4();
  swift_getWitnessTable();
  sub_100031F04();
  type metadata accessor for IDView();
  sub_100031F04();
  type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier();
  sub_100052704();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PageContainerSidebarState(255);
  swift_getWitnessTable();
  sub_100025338();
  swift_getWitnessTable();
  sub_100121A00(&qword_100CD2468, type metadata accessor for PageContainerSidebarState);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10013449C()
{
  type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier();
  sub_100025338();
  sub_10000381C();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100134540@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v87 = a1;
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v121 = a1[2];
  v3 = v121;
  v122 = v2;
  v6 = v2;
  v123 = v4;
  v124 = v5;
  v7 = v4;
  v8 = v5;
  type metadata accessor for TransitionContext();
  v94 = type metadata accessor for Optional();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v68 - v9;
  v90 = *(v6 - 1);
  __chkstk_darwin(v10);
  v88 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v3;
  v122 = v6;
  v86 = v6;
  v96 = v7;
  v123 = v7;
  v124 = v8;
  v100 = v8;
  v97 = type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier();
  v92 = *(v97 - 8);
  __chkstk_darwin(v97);
  v89 = &v68 - v12;
  v121 = v3;
  v122 = v6;
  v99 = v3;
  v123 = v7;
  v124 = v8;
  type metadata accessor for IDView();
  sub_10022E824(&qword_100CA4628);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CE1580);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  v83 = &protocol conformance descriptor for IDView<A, B>;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_100006F64(&qword_100CA4620, &qword_100CA4628);
  v119 = WitnessTable;
  v120 = v14;
  v117 = swift_getWitnessTable();
  v118 = &protocol witness table for _AppearanceActionModifier;
  v15 = swift_getWitnessTable();
  v16 = sub_100006F64(&qword_100CB0558, &qword_100CE1580);
  v115 = v15;
  v116 = v16;
  v17 = swift_getWitnessTable();
  v18 = v96;
  v113 = v96;
  v114 = v14;
  v19 = swift_getWitnessTable();
  v111 = v17;
  v112 = v19;
  swift_getWitnessTable();
  v20 = type metadata accessor for VStack();
  v71 = v20;
  v80 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v68 - v21;
  v70 = swift_getWitnessTable();
  v121 = v20;
  v122 = &type metadata for Bool;
  v123 = v70;
  v124 = &protocol witness table for Bool;
  v23 = type metadata accessor for IDView();
  v84 = *(v23 - 8);
  __chkstk_darwin(v23);
  v98 = &v68 - v24;
  v74 = v23;
  v25 = type metadata accessor for ModifiedContent();
  v85 = *(v25 - 8);
  __chkstk_darwin(v25);
  v75 = &v68 - v26;
  v27 = type metadata accessor for PageContainerSidebarState(255);
  v79 = v27;
  v28 = swift_getWitnessTable();
  v72 = v28;
  v29 = swift_getWitnessTable();
  v109 = v28;
  v110 = v29;
  v76 = v25;
  v30 = swift_getWitnessTable();
  v78 = v30;
  v77 = sub_100121A00(&qword_100CD2468, type metadata accessor for PageContainerSidebarState);
  v121 = v25;
  v122 = v27;
  v123 = v30;
  v124 = v77;
  v81 = &opaque type descriptor for <<opaque return type of View.environment<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v69 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v73 = &v68 - v33;
  v34 = v99;
  v102 = v99;
  v35 = v86;
  v103 = v86;
  v36 = v18;
  v104 = v18;
  v105 = v100;
  v37 = v101;
  v106 = v101;
  j___s7SwiftUI19HorizontalAlignmentV6centerACvgZ();
  v38 = v22;
  VStack.init(alignment:spacing:content:)();
  v39 = v87;
  v40 = v37 + *(v87 + 15);
  v41 = *(v40 + 8);
  LOBYTE(v121) = *v40;
  LOBYTE(v22) = v121;
  v122 = v41;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  LOBYTE(v121) = v107;
  v42 = v71;
  View.id<A>(_:)();
  (*(v80 + 8))(v38, v42);
  v121 = v34;
  v122 = v35;
  v123 = v36;
  v124 = v100;
  v43 = type metadata accessor for Page();
  v44 = v101;
  v45 = v88;
  v46 = v35;
  (*(v90 + 16))(v88, v101 + *(v43 + 52), v35);
  v47 = v44;
  v48 = v91;
  (*(v93 + 16))(v91, v44 + *(v39 + 14), v94);
  LOBYTE(v107) = v22;
  v108 = v41;
  State.projectedValue.getter();
  v49 = v89;
  sub_100136198(v45, v48, v121, v122, v123, v46, v89);
  v50 = v75;
  v51 = v49;
  v52 = v74;
  v53 = v97;
  v54 = v98;
  View.modifier<A>(_:)();
  (*(v92 + 8))(v51, v53);
  (*(v84 + 8))(v54, v52);
  v55 = (v47 + *(v39 + 16));
  v57 = *v55;
  v56 = v55[1];
  v121 = v57;
  v122 = v56;
  sub_10022C350(&qword_100CD2470);
  State.wrappedValue.getter();
  v58 = v69;
  v59 = v76;
  v60 = v79;
  v61 = v78;
  v62 = v77;
  View.environment<A>(_:)();

  (*(v85 + 8))(v50, v59);
  v121 = v59;
  v122 = v60;
  v123 = v61;
  v124 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v73;
  v65 = OpaqueTypeMetadata2;
  sub_1000833D8(v58, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v66 = v83[1];
  v66(v58, v65);
  sub_1000833D8(v64, v65, OpaqueTypeConformance2);
  return (v66)(v64, v65);
}

uint64_t sub_10013507C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v123 = a1;
  v119 = a6;
  sub_10022E824(&qword_100CA4628);
  v10 = type metadata accessor for ModifiedContent();
  v113 = *(v10 - 8);
  __chkstk_darwin(v10);
  v112 = (&v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v110 = &v93 - v13;
  __chkstk_darwin(v14);
  v111 = &v93 - v15;
  v152 = a2;
  v153 = a3;
  v154 = a4;
  v155 = a5;
  v120 = type metadata accessor for PageContainer();
  v102 = *(v120 - 8);
  v97 = *(v102 + 64);
  __chkstk_darwin(v120);
  v99 = &v93 - v16;
  v152 = a2;
  v153 = a3;
  v154 = a4;
  v155 = a5;
  v17 = type metadata accessor for IDView();
  v96 = *(v17 - 8);
  __chkstk_darwin(v17);
  v95 = &v93 - v18;
  v122 = v19;
  v20 = type metadata accessor for ModifiedContent();
  v100 = *(v20 - 8);
  __chkstk_darwin(v20);
  v98 = &v93 - v21;
  v125 = v22;
  v23 = type metadata accessor for ModifiedContent();
  v104 = *(v23 - 8);
  __chkstk_darwin(v23);
  v103 = &v93 - v24;
  sub_10022E824(&qword_100CE1580);
  v124 = v23;
  v25 = type metadata accessor for ModifiedContent();
  v107 = *(v25 - 8);
  __chkstk_darwin(v25);
  v106 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v101 = &v93 - v28;
  __chkstk_darwin(v29);
  v105 = &v93 - v30;
  v152 = a2;
  v153 = a3;
  v108 = a3;
  v154 = a4;
  v155 = a5;
  v109 = a5;
  v31 = type metadata accessor for TransitionContext();
  v32 = type metadata accessor for Optional();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v93 - v34;
  v36 = *(v31 - 8);
  __chkstk_darwin(v37);
  v39 = &v93 - v38;
  v118 = v25;
  v40 = v123;
  v114 = v10;
  v41 = v120;
  v117 = type metadata accessor for _ConditionalContent();
  v116 = *(v117 - 8);
  v42 = __chkstk_darwin(v117);
  v115 = &v93 - v43;
  (*(v33 + 16))(v35, v40 + *(v41 + 56), v32, v42);
  v44 = sub_100024D10(v35, 1, v31);
  v121 = a4;
  if (v44 == 1)
  {
    (*(v33 + 8))(v35, v32);
LABEL_7:
    if (!*(v40 + *(v41 + 52)))
    {
      static AnyTransition.identity.getter();
    }

    v50 = v110;
    View.transition(_:)();

    v51 = sub_100006F64(&qword_100CA4620, &qword_100CA4628);
    v150 = a4;
    v151 = v51;
    v52 = v114;
    WitnessTable = swift_getWitnessTable();
    v54 = v111;
    sub_1000833D8(v50, v52, WitnessTable);
    v55 = *(v113 + 8);
    v55(v50, v52);
    v56 = v112;
    sub_1000833D8(v54, v52, WitnessTable);
    v148 = swift_getWitnessTable();
    v149 = v51;
    v146 = swift_getWitnessTable();
    v147 = &protocol witness table for _AppearanceActionModifier;
    v57 = swift_getWitnessTable();
    v58 = sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    v144 = v57;
    v145 = v58;
    swift_getWitnessTable();
    v59 = v115;
    sub_10012D09C();
    v55(v56, v52);
    v55(v54, v52);
    v60 = v59;
    goto LABEL_12;
  }

  v36[4](v39, v35, v31);
  v45 = v108;
  v152 = a2;
  v153 = v108;
  v154 = a4;
  v155 = v109;
  type metadata accessor for Page();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v40 = v123;
    (v36[1])(v39, v31);
    goto LABEL_7;
  }

  v46 = v45;
  v112 = v36;
  v113 = v31;
  v47 = v95;
  v111 = a2;
  View.id<A>(_:)();
  v48 = *(v123 + *(v41 + 52));
  v94 = v39;
  v49 = v123;
  if (!v48)
  {
    static AnyTransition.identity.getter();
  }

  v61 = v122;
  v62 = swift_getWitnessTable();
  v63 = v98;
  View.transition(_:)();

  (*(v96 + 8))(v47, v61);
  v64 = v102;
  v65 = v99;
  v66 = v120;
  (*(v102 + 16))(v99, v49, v120);
  v67 = (*(v64 + 80) + 48) & ~*(v64 + 80);
  v68 = swift_allocObject();
  *(v68 + 2) = v111;
  *(v68 + 3) = v46;
  v69 = v121;
  v70 = v109;
  *(v68 + 4) = v121;
  *(v68 + 5) = v70;
  (*(v64 + 32))(&v68[v67], v65, v66);
  v123 = sub_100006F64(&qword_100CA4620, &qword_100CA4628);
  v132 = v62;
  v133 = v123;
  v71 = v125;
  v72 = swift_getWitnessTable();
  v73 = v103;
  View.onDisappear(perform:)();

  (*(v100 + 8))(v63, v71);
  swift_getKeyPath();
  LOBYTE(v152) = 1;
  v130 = v72;
  v131 = &protocol witness table for _AppearanceActionModifier;
  v74 = v124;
  v75 = swift_getWitnessTable();
  v76 = v101;
  View.environment<A>(_:_:)();

  (*(v104 + 8))(v73, v74);
  v77 = sub_100006F64(&qword_100CB0558, &qword_100CE1580);
  v128 = v75;
  v129 = v77;
  v78 = v118;
  v79 = swift_getWitnessTable();
  v80 = v105;
  sub_1000833D8(v76, v78, v79);
  v81 = *(v107 + 8);
  v81(v76, v78);
  v82 = v106;
  sub_1000833D8(v80, v78, v79);
  v126 = v69;
  v127 = v123;
  v83 = v78;
  swift_getWitnessTable();
  v60 = v115;
  sub_1003E8038();
  v81(v82, v83);
  v81(v80, v83);
  v112[1](v94, v113);
LABEL_12:
  v84 = swift_getWitnessTable();
  v85 = sub_100006F64(&qword_100CA4620, &qword_100CA4628);
  v142 = v84;
  v143 = v85;
  v140 = swift_getWitnessTable();
  v141 = &protocol witness table for _AppearanceActionModifier;
  v86 = swift_getWitnessTable();
  v87 = sub_100006F64(&qword_100CB0558, &qword_100CE1580);
  v138 = v86;
  v139 = v87;
  v88 = swift_getWitnessTable();
  v136 = v121;
  v137 = v85;
  v89 = swift_getWitnessTable();
  v134 = v88;
  v135 = v89;
  v90 = v117;
  v91 = swift_getWitnessTable();
  sub_1000833D8(v60, v90, v91);
  return (*(v116 + 8))(v60, v90);
}

void sub_100135F94()
{
  sub_10004E348();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_10000ECFC();
  v3 = type metadata accessor for PageContainer();
  sub_100003DDC();
  v5 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));
  sub_100022F14();
  v15 = *(v6 + 8);
  v15(v5, v2);
  sub_10000ECFC();
  v7 = type metadata accessor for Page();
  v8 = (*(v1 - 8) + 8);
  v14 = *v8;
  (*v8)(v5 + *(v7 + 52), v1);

  v9 = v5 + *(v3 + 56);
  sub_10000ECFC();
  v10 = type metadata accessor for TransitionContext();
  if (!sub_100024D10(v9, 1, v10))
  {
    v11 = sub_100008408();
    (v15)(v11);
    v14(v9 + *(v7 + 52), v1);
    v12 = v9 + *(v10 + 52);
    v13 = sub_100008408();
    (v15)(v13);
    v14(v12 + *(v7 + 52), v1);
  }

  sub_10002C9B0();
  sub_100013454();
}

uint64_t sub_100136198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  type metadata accessor for PageContainerSidebarState(0);
  sub_100121A00(&qword_100CD2468, type metadata accessor for PageContainerSidebarState);
  *a7 = Environment.init<A>(_:)();
  *(a7 + 8) = v13 & 1;
  *(a7 + 16) = swift_getKeyPath();
  *(a7 + 24) = 0;
  v14 = type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier();
  (*(*(a6 - 8) + 32))(a7 + v14[14], a1, a6);
  v15 = v14[15];
  type metadata accessor for TransitionContext();
  v16 = type metadata accessor for Optional();
  result = (*(*(v16 - 8) + 32))(a7 + v15, a2, v16);
  v18 = a7 + v14[16];
  *v18 = a3;
  *(v18 + 8) = a4;
  *(v18 + 16) = a5;
  return result;
}

unint64_t sub_1001363A0()
{
  result = qword_100CCAF18;
  if (!qword_100CCAF18)
  {
    sub_10022E824(&qword_100CCAE78);
    sub_100136458();
    sub_1005F6F6C(&unk_100CBDD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAF18);
  }

  return result;
}

unint64_t sub_100136458()
{
  result = qword_100CCAF20;
  if (!qword_100CCAF20)
  {
    sub_10022E824(&qword_100CCAE70);
    sub_10022E824(&qword_100CCAE80);
    sub_100136604();
    swift_getOpaqueTypeConformance2();
    sub_1005F6F6C(&qword_100CCAF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAF20);
  }

  return result;
}

unint64_t sub_10013654C()
{
  result = qword_100CCAE90;
  if (!qword_100CCAE90)
  {
    sub_10022E824(&qword_100CCAE98);
    sub_1005F6F6C(&unk_100CCAEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAE90);
  }

  return result;
}

unint64_t sub_100136604()
{
  result = qword_100CCAE88;
  if (!qword_100CCAE88)
  {
    sub_10022E824(&qword_100CCAE80);
    sub_10013654C();
    sub_1005F6F6C(&unk_100CCAEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAE88);
  }

  return result;
}

uint64_t sub_1001366BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v4 - 8);
  v6 = v39 - v5;
  v7 = type metadata accessor for LocationViewPage(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CCAE70);
  __chkstk_darwin(v11);
  v13 = v39 - v12;
  v14 = sub_10022C350(&qword_100CCAE78);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  if (*(v2 + *(v7 + 28)))
  {

    return sub_10001B350(a1, 1, 1, v16);
  }

  else
  {
    v44 = v16;
    v43 = v18;
    v45 = v39 - v17;
    v47[0] = static HorizontalAlignment.center.getter();
    v47[1] = 0;
    v46 = a1;
    v48 = 1;
    sub_100136C18(v2, v49);
    v49[97] = 1;
    v39[1] = type metadata accessor for LocationViewPage;
    sub_1005F1770(v2, v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v41 = v11;
    v20 = *(v8 + 80);
    v42 = v7;
    v21 = (v20 + 16) & ~v20;
    v22 = swift_allocObject();
    sub_100103E40(v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v50 = sub_10015F118;
    v51 = 0;
    v52 = sub_100163420;
    v53 = v22;
    sub_1005F1770(v2, v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = swift_allocObject();
    v40 = v6;
    sub_100103E40(v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
    sub_10022C350(&qword_100CCAE80);
    sub_100136604();
    View.onTapGesture(count:perform:)();

    sub_100018198(v47, &qword_100CCAE80);
    KeyPath = swift_getKeyPath();
    sub_1005F1770(v2, v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = swift_allocObject();
    sub_100103E40(v10, v25 + v21);
    v26 = &v13[*(v41 + 36)];
    *v26 = KeyPath;
    v26[1] = sub_10013E31C;
    v26[2] = v25;
    v27 = v2 + *(v42 + 20);
    v28 = sub_10010EC9C();
    v29 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
    v30 = v40;
    sub_1000302D8(v27 + *(v29 + 20), v40, &qword_100CA5010);
    v31 = type metadata accessor for ContentStatusBanner();
    LOBYTE(v27) = sub_100024D10(v30, 1, v31) != 1;
    sub_100018198(v30, &qword_100CA5010);
    v32 = v43;
    sub_10011C0F0(v13, v43, &qword_100CCAE70);
    v33 = v44;
    v34 = v32 + *(v44 + 36);
    *v34 = v28;
    *(v34 + 8) = v27;
    v35 = v32;
    v36 = v45;
    sub_10011C0F0(v35, v45, &qword_100CCAE78);
    v37 = v36;
    v38 = v46;
    sub_10011C0F0(v37, v46, &qword_100CCAE78);
    return sub_10001B350(v38, 0, 1, v33);
  }
}

uint64_t sub_100136C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationViewPage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_1005F1770(a1, &v16 - v9);
  sub_1005F1770(a1, v7);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_100103E40(v7, v12 + v11);
  v13 = sub_10022C350(&qword_100CB0910);
  *(a2 + 80) = sub_100137DA8;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *a2 = v13;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000302D8(&xmmword_100D8FB90, &v16, &unk_100CAF270);
  if (v17)
  {
    sub_100013188(&v16, a2 + 24);
    *(a2 + 8) = sub_100138B98;
    *(a2 + 16) = v12;
    v14 = Dictionary.init(dictionaryLiteral:)();
    *&v16 = _swiftEmptyArrayStorage;
    *(&v16 + 1) = v14;
    sub_100136EAC(v10, 0, 0);
    result = sub_1001095D0();
    *(a2 + 64) = v16;
  }

  else
  {
    result = sub_1001095D0();
    __break(1u);
  }

  return result;
}

unint64_t sub_100136EAC(char *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v5 = type metadata accessor for LocationModel();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v31 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v26 = *(v6 + 16);
  (v26)(&v25 - v10, a1, v5, v9);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v30 = v12 + v7;
  v13 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v13 + v12, v11, v5);
  v15 = (v13 + ((v12 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = v29;
  *v15 = v28;
  v15[1] = v16;

  sub_100137240();
  v17 = *(*v3 + 16);
  sub_10013726C(v17);
  v18 = *v3;
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 16 * v17;
  *(v19 + 32) = sub_100137DBC;
  *(v19 + 40) = v13;
  *v3 = v18;
  v20 = v26;
  v26(v11, v27, v5);
  v32[3] = v5;
  v21 = sub_100042FB0(v32);
  v20(v21, v11, v5);
  v22 = v31;
  v14(v31, v11, v5);
  v23 = swift_allocObject();
  v14(v23 + v12, v22, v5);
  v32[4] = sub_100163744;
  v32[5] = v23;
  return sub_100137374(v32, v5);
}

uint64_t sub_100137128()
{
  type metadata accessor for LocationModel();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001371C0()
{
  type metadata accessor for LocationModel();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

unint64_t sub_100137284()
{
  sub_100020DF0();
  sub_100071C18();
  v1 = v0;
  v3 = sub_100074624(v2, v0);
  sub_1000D53B8(v3);
  sub_10001E5DC();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v6 = v4;
  sub_10022C350(&qword_100CA3AA0);
  v7 = sub_100017530();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v7, v8))
  {
    sub_1000D53B8(v1);
    sub_100013444();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v6)
  {
    sub_1000212EC();

    return sub_10023A984(v10, v11);
  }

  else
  {
    sub_100016240();
    sub_1000212EC();

    return sub_1001374BC(v14, v15, v16, v17);
  }
}