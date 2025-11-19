uint64_t sub_10009CE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB504();

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_10009CEF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB504();

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RainInlineContentView()
{
  result = qword_100133F48;
  if (!qword_100133F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10009CFA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RainInlineTruncateFallbackText();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  sub_100006A10();
  v8 = v7 - v6;
  v9 = sub_100002A10(&qword_100132900, &qword_1000F7870);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &__src[-v11];
  v13 = sub_1000EB504();
  (*(*(v13 - 8) + 16))(v8, v2, v13);
  sub_1000EA354();
  sub_10004E774();
  v14 = sub_1000EA7F4();
  v16 = v15;
  v18 = v17;
  sub_10009D454(&qword_100132908, type metadata accessor for RainInlineTruncateFallbackText);
  sub_1000EA8C4();
  sub_1000058EC(v14, v16, v18 & 1);

  sub_10009D20C(v8);
  sub_1000EABC4();
  sub_1000EA0A4();
  sub_10009D268(v12, a1);
  v19 = sub_100002A10(&qword_100133F80, &unk_1000F6800);
  return memcpy((a1 + *(v19 + 36)), __src, 0x70uLL);
}

uint64_t sub_10009D20C(uint64_t a1)
{
  v2 = type metadata accessor for RainInlineTruncateFallbackText();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009D268(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100132900, &qword_1000F7870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009D2DC()
{
  result = qword_100133F88;
  if (!qword_100133F88)
  {
    sub_100002ABC(&qword_100133F80, &unk_1000F6800);
    sub_10009D368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133F88);
  }

  return result;
}

unint64_t sub_10009D368()
{
  result = qword_100133F90;
  if (!qword_100133F90)
  {
    sub_100002ABC(&qword_100132900, &qword_1000F7870);
    sub_10009D454(&qword_100132908, type metadata accessor for RainInlineTruncateFallbackText);
    sub_10009D454(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133F90);
  }

  return result;
}

uint64_t sub_10009D454(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009D49C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v142 = a2;
  v5 = sub_1000EAFC4();
  v6 = sub_1000090D4(v5);
  v131 = v7;
  v132 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_100006A10();
  v130 = v11 - v10;
  v12 = sub_10000921C();
  v143 = type metadata accessor for EventViewModel(v12);
  v13 = sub_1000069E4(v143);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100006A10();
  v133 = v17 - v16;
  v18 = sub_100002A10(&qword_10012FBC0, &unk_1000F6860);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_1000091AC();
  v127 = v20 - v21;
  __chkstk_darwin(v22);
  v134 = &v125 - v23;
  sub_10000921C();
  v24 = sub_1000EB504();
  v25 = sub_1000090D4(v24);
  v139 = v26;
  v140 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_1000091AC();
  v128 = v29 - v30;
  __chkstk_darwin(v31);
  v33 = &v125 - v32;
  v34 = *(*(sub_100002A10(&qword_1001309D8, &qword_1000F10F0) - 8) + 64);
  sub_100009204();
  __chkstk_darwin(v35);
  v37 = &v125 - v36;
  v144 = sub_1000EBAF4();
  v38 = sub_1000090D4(v144);
  v135 = v39;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_100006A10();
  v138 = (v43 - v42);
  v44 = sub_100002A10(&qword_100131010, &unk_1000F6870);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  sub_1000091AC();
  v136 = v46 - v47;
  v49 = __chkstk_darwin(v48);
  v51 = &v125 - v50;
  __chkstk_darwin(v49);
  v141 = &v125 - v52;
  v53 = sub_10000921C();
  v54 = type metadata accessor for AggregateWeatherViewModel(v53);
  v55 = sub_1000069E4(v54);
  v57 = *(v56 + 64);
  __chkstk_darwin(v55);
  sub_100006A10();
  v60 = v59 - v58;
  if (qword_10012EB18 != -1)
  {
    swift_once();
  }

  v61 = sub_1000E9F64();
  v62 = sub_100008CB8(v61, qword_100145BB0);
  sub_10009FB40(a1, v60, type metadata accessor for AggregateWeatherViewModel);
  v137 = v62;
  v63 = sub_1000E9F44();
  v64 = sub_1000EC1B4();
  v65 = os_log_type_enabled(v63, v64);
  v129 = v33;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v126 = a1;
    v67 = v66;
    v68 = swift_slowAlloc();
    v125 = v3;
    v69 = v68;
    v145 = v68;
    *v67 = 141558275;
    *(v67 + 4) = 1752392040;
    *(v67 + 12) = 2081;
    v70 = v54[5];
    sub_1000E9A84();
    sub_10009FBA0(&qword_1001325E8, &type metadata accessor for Location);
    v71 = sub_1000EC5B4();
    v73 = v72;
    sub_1000A044C();
    v74 = sub_1000E2E18(v71, v73, &v145);

    *(v67 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v63, v64, "About to evaluate conditions for location=%{private,mask.hash}s", v67, 0x16u);
    sub_100009068(v69);
    sub_100009194();
    a1 = v126;
    sub_100009194();
  }

  else
  {

    sub_1000A044C();
  }

  v75 = v141;
  sub_10009F61C(*(a1 + v54[11]), v141);
  sub_10000EBC4(a1 + v54[10], v37, &qword_1001309D8, &qword_1000F10F0);
  v76 = v144;
  v77 = sub_100005B30(v37, 1, v144);
  v78 = v140;
  v79 = v143;
  if (v77 == 1)
  {
    sub_100008E48(v37, &qword_1001309D8, &qword_1000F10F0);
    v80 = v139;
  }

  else
  {
    v81 = *(v135 + 32);
    v81(v138, v37, v76);
    sub_10000EBC4(v75, v51, &qword_100131010, &unk_1000F6870);
    if (sub_100005B30(v51, 1, v79) == 1)
    {
      sub_100008E48(v51, &qword_100131010, &unk_1000F6870);
      v82 = 0;
      v83 = 0;
    }

    else
    {
      v84 = &v51[*(v79 + 40)];
      v82 = *v84;
      v83 = v84[1];

      sub_1000A03FC();
      sub_10009F7F4(v51, v85);
    }

    v80 = v139;
    v86 = v134;
    sub_10007BEA4(a1, 0, v82, v83, v134);
    v87 = v86;

    if (sub_100005B30(v86, 1, v78) != 1)
    {
      v109 = *(v80 + 32);
      v110 = v129;
      v109(v129, v87, v78);
      v111 = sub_1000E9F44();
      v112 = sub_1000EC1B4();
      if (sub_100009178(v112))
      {
        v113 = sub_1000091BC();
        sub_1000091E0(v113);
        sub_100009134(&_mh_execute_header, v114, v115, "Detected precipitation. Returning .nextHourPrecipitation.");
        sub_100009194();
      }

      sub_100008E48(v75, &qword_100131010, &unk_1000F6870);
      v116 = *(sub_100002A10(&qword_100132870, &qword_1000F4050) + 48);
      v117 = v142;
      v109(v142, v110, v78);
      v81(v117 + v116, v138, v144);
      type metadata accessor for ConditionState();
      return swift_storeEnumTagMultiPayload();
    }

    (*(v135 + 8))(v138, v144);
    sub_100008E48(v86, &qword_10012FBC0, &unk_1000F6860);
    v79 = v143;
  }

  v88 = v136;
  sub_10000EBC4(v75, v136, &qword_100131010, &unk_1000F6870);
  if (sub_100005B30(v88, 1, v79) == 1)
  {
    sub_100008E48(v88, &qword_100131010, &unk_1000F6870);
    v89 = a1 + v54[6];
    v90 = v130;
    sub_1000EB664();
    v91 = sub_1000EAF94();
    (*(v131 + 8))(v90, v132);
    if (v91)
    {
LABEL_17:
      v93 = sub_1000E9F44();
      v94 = sub_1000EC1B4();
      if (sub_100009178(v94))
      {
        v95 = sub_1000091BC();
        sub_1000091E0(v95);
        sub_100009134(&_mh_execute_header, v96, v97, "Detected no special condition. Returning .normal.");
        sub_100009194();
      }

      sub_100008E48(v75, &qword_100131010, &unk_1000F6870);
      type metadata accessor for ConditionState();
      return swift_storeEnumTagMultiPayload();
    }

    v92 = v127;
    sub_100077014(a1, 1, 6, v127, 0.6);
    if (sub_100005B30(v92, 1, v78) == 1)
    {
      sub_100008E48(v92, &qword_10012FBC0, &unk_1000F6860);
      goto LABEL_17;
    }

    v118 = *(v80 + 32);
    v118(v128, v92, v78);
    v119 = sub_1000E9F44();
    v120 = sub_1000EC1B4();
    if (sub_100009178(v120))
    {
      v121 = sub_1000091BC();
      sub_1000091E0(v121);
      sub_100009134(&_mh_execute_header, v122, v123, "Detected precipitation within six hours. Returning .precipitationWithinSixHours.");
      sub_100009194();
    }

    sub_100008E48(v75, &qword_100131010, &unk_1000F6870);
    v118(v142, v128, v78);
    type metadata accessor for ConditionState();
  }

  else
  {
    v98 = v133;
    sub_10009F9E4(v88, v133, type metadata accessor for EventViewModel);
    v99 = sub_1000E9F44();
    v100 = sub_1000EC1B4();
    if (sub_100009178(v100))
    {
      v101 = sub_1000091BC();
      sub_1000091E0(v101);
      sub_100009134(&_mh_execute_header, v102, v103, "Detected an alert. Returning .alert.");
      v79 = v143;
      sub_100009194();
    }

    sub_100008E48(v75, &qword_100131010, &unk_1000F6870);
    v104 = (v98 + *(v79 + 40));
    v106 = *v104;
    v105 = v104[1];

    sub_1000A03FC();
    sub_10009F7F4(v98, v107);
    v108 = v142;
    *v142 = v106;
    v108[1] = v105;
    type metadata accessor for ConditionState();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10009DECC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001000FC0F0 == a2;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001BLL && 0x80000001000FE500 == a2;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1000EC5D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_10009E028(char a1)
{
  result = 0x7472656C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0x6C616D726F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10009E0C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1000EC5D4();

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

uint64_t sub_10009E180(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_10009E198(void *a1)
{
  v95 = sub_100002A10(&qword_100134138, &qword_1000F6910);
  sub_1000090D4(v95);
  v93 = v2;
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  sub_10000D58C();
  v92 = v6;
  v7 = sub_100002A10(&qword_100134140, &qword_1000F6918);
  v8 = sub_1000090D4(v7);
  v96 = v9;
  v97 = v8;
  v11 = *(v10 + 64);
  sub_100009204();
  __chkstk_darwin(v12);
  sub_10000D58C();
  v94 = v13;
  v14 = sub_100002A10(&qword_100134148, &qword_1000F6920);
  v15 = sub_1000090D4(v14);
  v99 = v16;
  v100 = v15;
  v18 = *(v17 + 64);
  sub_100009204();
  __chkstk_darwin(v19);
  sub_10000D58C();
  v98 = v20;
  sub_10000921C();
  v106 = sub_1000EBAF4();
  v21 = sub_1000090D4(v106);
  v101 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_100006A10();
  v103 = v26 - v25;
  sub_10000921C();
  v27 = sub_1000EB504();
  v28 = sub_1000090D4(v27);
  v104 = v29;
  v105 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_1000091AC();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v102 = &v90 - v36;
  v37 = sub_100002A10(&qword_100134150, &qword_1000F6928);
  sub_1000090D4(v37);
  v91 = v38;
  v40 = *(v39 + 64);
  sub_100009204();
  __chkstk_darwin(v41);
  v43 = &v90 - v42;
  v44 = type metadata accessor for ConditionState();
  v45 = sub_1000069E4(v44);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  sub_100006A10();
  v50 = (v49 - v48);
  v51 = sub_100002A10(&qword_100134158, &qword_1000F6930);
  v52 = sub_1000090D4(v51);
  v108 = v53;
  v109 = v52;
  v55 = *(v54 + 64);
  sub_100009204();
  __chkstk_darwin(v56);
  v57 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_10009F93C();
  sub_1000EC6A4();
  sub_10009FB40(v107, v50, type metadata accessor for ConditionState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v74 = *(sub_100002A10(&qword_100132870, &qword_1000F4050) + 48);
      v75 = v104;
      v76 = v105;
      (*(v104 + 32))(v102, v50, v105);
      v77 = v101;
      (*(v101 + 32))(v103, &v50[v74], v106);
      v114 = 1;
      sub_10009FA98();
      v78 = v109;
      sub_1000EC534();
      v113 = 0;
      sub_1000A03BC();
      sub_10009FBA0(v79, v80);
      v81 = v110;
      sub_1000EC594();
      if (v81)
      {
        v82 = sub_1000A04B4();
        v83(v82);
        (*(v77 + 8))(v103, v106);
        (*(v75 + 8))(v102, v76);
      }

      else
      {
        v84 = v75;
        v112 = 1;
        sub_1000A0414();
        sub_10009FBA0(v85, v86);
        v87 = v103;
        sub_1000EC594();
        v88 = sub_1000A04B4();
        v89(v88);
        (*(v101 + 8))(v87, v106);
        (*(v84 + 8))(v102, v76);
      }

      v61 = sub_1000A0480();
      v63 = v78;
      return v62(v61, v63);
    case 2u:
      v65 = v104;
      v64 = v105;
      (*(v104 + 32))(v34, v50, v105);
      v115 = 2;
      sub_10009FA44();
      v66 = v94;
      sub_1000A04DC();
      sub_1000A03BC();
      sub_10009FBA0(v67, v68);
      v69 = v97;
      sub_1000EC594();
      (*(v96 + 8))(v66, v69);
      (*(v65 + 8))(v34, v64);
      v61 = sub_1000A0480();
      v63 = v50;
      return v62(v61, v63);
    case 3u:
      v116 = 3;
      sub_10009F990();
      v70 = v92;
      sub_1000A04DC();
      (*(v93 + 8))(v70, v95);
      v71 = sub_1000A0480();
      return v72(v71, v50);
    default:
      v59 = *v50;
      v58 = *(v50 + 1);
      v111 = 0;
      sub_10009FAEC();
      v60 = v109;
      sub_1000EC534();
      sub_1000EC564();

      (*(v91 + 8))(v43, v37);
      v61 = sub_1000A0480();
      v63 = v60;
      return v62(v61, v63);
  }
}

uint64_t sub_10009E960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v3 = sub_100002A10(&qword_1001340E0, &qword_1000F68E0);
  v4 = sub_1000090D4(v3);
  v116 = v5;
  v117 = v4;
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_10000D58C();
  v122 = v9;
  v10 = sub_100002A10(&qword_1001340E8, &qword_1000F68E8);
  v11 = sub_1000090D4(v10);
  v118 = v12;
  v119 = v11;
  v14 = *(v13 + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  sub_10000D58C();
  v123 = v16;
  v127 = sub_100002A10(&qword_1001340F0, &qword_1000F68F0);
  sub_1000090D4(v127);
  v120 = v17;
  v19 = *(v18 + 64);
  sub_100009204();
  __chkstk_darwin(v20);
  sub_10000D58C();
  v124 = v21;
  v22 = sub_100002A10(&qword_1001340F8, &qword_1000F68F8);
  v23 = sub_1000090D4(v22);
  v114 = v24;
  v115 = v23;
  v26 = *(v25 + 64);
  sub_100009204();
  __chkstk_darwin(v27);
  sub_10000D58C();
  v121 = v28;
  v128 = sub_100002A10(&qword_100134100, &unk_1000F6900);
  sub_1000090D4(v128);
  v126 = v29;
  v31 = *(v30 + 64);
  sub_100009204();
  __chkstk_darwin(v32);
  v34 = &v110 - v33;
  v35 = type metadata accessor for ConditionState();
  v36 = sub_1000069E4(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_1000091AC();
  v41 = v39 - v40;
  v43 = __chkstk_darwin(v42);
  v45 = &v110 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = &v110 - v47;
  __chkstk_darwin(v46);
  v50 = &v110 - v49;
  v51 = a1[3];
  v52 = a1[4];
  v129 = a1;
  sub_100008DA8(a1, v51);
  sub_10009F93C();
  v53 = v130;
  sub_1000EC694();
  if (v53)
  {
    goto LABEL_8;
  }

  v111 = v48;
  v112 = v41;
  v113 = v45;
  v54 = v128;
  v130 = v50;
  v55 = sub_1000EC524();
  sub_1000814FC(v55, 0);
  if (v57 == v58 >> 1)
  {
    goto LABEL_7;
  }

  v110 = 0;
  if (v57 >= (v58 >> 1))
  {
    __break(1u);
    JUMPOUT(0x10009F324);
  }

  v59 = *(v56 + v57);
  sub_1000814F8(v57 + 1);
  v61 = v60;
  v63 = v62;
  swift_unknownObjectRelease();
  if (v61 != v63 >> 1)
  {
LABEL_7:
    v67 = v34;
    v68 = v54;
    v69 = v126;
    v70 = sub_1000EC414();
    swift_allocError();
    v72 = v71;
    v73 = *(sub_100002A10(&qword_10012F440, &unk_1000F19E0) + 48);
    *v72 = v35;
    sub_1000EC4B4();
    sub_1000EC404();
    (*(*(v70 - 8) + 104))(v72, enum case for DecodingError.typeMismatch(_:), v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v67, v68);
LABEL_8:
    v74 = v129;
    return sub_100009068(v74);
  }

  v64 = v125;
  switch(v59)
  {
    case 1:
      v134 = 1;
      sub_10009FA98();
      sub_1000A042C();
      sub_1000EB504();
      v133 = 0;
      sub_1000A03BC();
      sub_10009FBA0(v83, v84);
      v85 = v113;
      sub_1000EC514();
      v123 = v34;
      v101 = *(sub_100002A10(&qword_100132870, &qword_1000F4050) + 48);
      sub_1000EBAF4();
      v132 = 1;
      sub_1000A0414();
      sub_10009FBA0(v102, v103);
      v104 = v127;
      sub_1000EC514();
      swift_unknownObjectRelease();
      v105 = sub_1000A0490();
      v106(v105, v104);
      sub_1000A0474();
      v107(v123, v128);
      swift_storeEnumTagMultiPayload();
      sub_1000A03D4();
      v98 = v130;
      sub_10009F9E4(v85, v130, v108);
      v100 = v129;
      break;
    case 2:
      v135 = 2;
      sub_10009FA44();
      sub_1000A042C();
      v76 = v34;
      sub_1000EB504();
      sub_1000A03BC();
      sub_10009FBA0(v77, v78);
      v79 = v112;
      sub_1000EC514();
      swift_unknownObjectRelease();
      v86 = sub_1000A04C8();
      v87(v86);
      sub_1000A0474();
      v88(v76, v128);
      swift_storeEnumTagMultiPayload();
      sub_1000A03D4();
      v98 = v130;
      sub_10009F9E4(v79, v130, v89);
      v100 = v129;
      v64 = v125;
      break;
    case 3:
      v136 = 3;
      sub_10009F990();
      v80 = v122;
      sub_1000A042C();
      swift_unknownObjectRelease();
      (*(v116 + 8))(v80, v117);
      v81 = sub_1000A03EC();
      v82(v81, v54);
      v98 = v130;
      swift_storeEnumTagMultiPayload();
      v100 = v129;
      break;
    default:
      v131 = 0;
      sub_10009FAEC();
      sub_1000A042C();
      v65 = v54;
      v66 = sub_1000EC4E4();
      v110 = 0;
      v90 = v66;
      v92 = v91;
      swift_unknownObjectRelease();
      v93 = sub_1000A04A0();
      v94(v93);
      v95 = sub_1000A03EC();
      v96(v95, v65);
      v97 = v111;
      *v111 = v90;
      *(v97 + 8) = v92;
      swift_storeEnumTagMultiPayload();
      sub_1000A03D4();
      v98 = v130;
      sub_10009F9E4(v97, v130, v99);
      v100 = v129;
      break;
  }

  sub_1000A03D4();
  sub_10009F9E4(v98, v64, v109);
  v74 = v100;
  return sub_100009068(v74);
}

uint64_t sub_10009F334(uint64_t a1)
{
  v2 = sub_10009FAEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F370(uint64_t a1)
{
  v2 = sub_10009FAEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009DECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009F3DC(uint64_t a1)
{
  v2 = sub_10009F93C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F418(uint64_t a1)
{
  v2 = sub_10009F93C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009E0C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009F484(uint64_t a1)
{
  v2 = sub_10009FA98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F4C0(uint64_t a1)
{
  v2 = sub_10009FA98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F4FC(uint64_t a1)
{
  v2 = sub_10009F990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F538(uint64_t a1)
{
  v2 = sub_10009F990();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F574(uint64_t a1)
{
  v2 = sub_10009FA44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F5B0(uint64_t a1)
{
  v2 = sub_10009FA44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EventViewModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a1 + 16);
  while (1)
  {
    if (v10 == v9)
    {
      v11 = 1;
      return sub_1000028A0(a2, v11, 1, v4);
    }

    sub_10009FB40(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v8, type metadata accessor for EventViewModel);
    if (*v8 == 2)
    {
      break;
    }

    ++v9;
    sub_10009F7F4(v8, type metadata accessor for EventViewModel);
  }

  sub_10009F9E4(v8, a2, type metadata accessor for EventViewModel);
  v11 = 0;
  return sub_1000028A0(a2, v11, 1, v4);
}

uint64_t type metadata accessor for ConditionState()
{
  result = qword_1001340A0;
  if (!qword_1001340A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009F7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_10009F84C()
{
  sub_10009F8CC();
  if (v0 <= 0x3F)
  {
    sub_1000EB504();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10009F8CC()
{
  if (!qword_1001340B0)
  {
    sub_1000EB504();
    sub_1000EBAF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001340B0);
    }
  }
}

unint64_t sub_10009F93C()
{
  result = qword_100134108;
  if (!qword_100134108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134108);
  }

  return result;
}

unint64_t sub_10009F990()
{
  result = qword_100134110;
  if (!qword_100134110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134110);
  }

  return result;
}

uint64_t sub_10009F9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_10009FA44()
{
  result = qword_100134118;
  if (!qword_100134118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134118);
  }

  return result;
}

unint64_t sub_10009FA98()
{
  result = qword_100134128;
  if (!qword_100134128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134128);
  }

  return result;
}

unint64_t sub_10009FAEC()
{
  result = qword_100134130;
  if (!qword_100134130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134130);
  }

  return result;
}

uint64_t sub_10009FB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10009FBA0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ConditionState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10009FCB4);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionState.NextHourPrecipitationCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009FDCCLL);
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

_BYTE *sub_10009FE04(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10009FEA0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009FEEC()
{
  result = qword_100134168;
  if (!qword_100134168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134168);
  }

  return result;
}

unint64_t sub_10009FF44()
{
  result = qword_100134170;
  if (!qword_100134170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134170);
  }

  return result;
}

unint64_t sub_10009FF9C()
{
  result = qword_100134178;
  if (!qword_100134178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134178);
  }

  return result;
}

unint64_t sub_10009FFF4()
{
  result = qword_100134180;
  if (!qword_100134180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134180);
  }

  return result;
}

unint64_t sub_1000A004C()
{
  result = qword_100134188;
  if (!qword_100134188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134188);
  }

  return result;
}

unint64_t sub_1000A00A4()
{
  result = qword_100134190;
  if (!qword_100134190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134190);
  }

  return result;
}

unint64_t sub_1000A00FC()
{
  result = qword_100134198;
  if (!qword_100134198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134198);
  }

  return result;
}

unint64_t sub_1000A0154()
{
  result = qword_1001341A0;
  if (!qword_1001341A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341A0);
  }

  return result;
}

unint64_t sub_1000A01AC()
{
  result = qword_1001341A8;
  if (!qword_1001341A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341A8);
  }

  return result;
}

unint64_t sub_1000A0204()
{
  result = qword_1001341B0;
  if (!qword_1001341B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341B0);
  }

  return result;
}

unint64_t sub_1000A025C()
{
  result = qword_1001341B8;
  if (!qword_1001341B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341B8);
  }

  return result;
}

unint64_t sub_1000A02B4()
{
  result = qword_1001341C0;
  if (!qword_1001341C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341C0);
  }

  return result;
}

unint64_t sub_1000A030C()
{
  result = qword_1001341C8;
  if (!qword_1001341C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341C8);
  }

  return result;
}

unint64_t sub_1000A0364()
{
  result = qword_1001341D0;
  if (!qword_1001341D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341D0);
  }

  return result;
}

uint64_t sub_1000A042C()
{

  return sub_1000EC4A4();
}

uint64_t sub_1000A044C()
{

  return sub_10009F7F4(v0, type metadata accessor for AggregateWeatherViewModel);
}

uint64_t sub_1000A04DC()
{
  v2 = *(v0 - 104);

  return sub_1000EC534();
}

uint64_t sub_1000A04FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;

      v4(&v7);
      if (v3)
      {
        break;
      }

      ++v6;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1000A0594@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000A1604(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = sub_1000EBE54();
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_1000EBE54();
    v10 = a3;
    v11 = 1;
  }

  return sub_1000028A0(v10, v11, 1, v12);
}

uint64_t sub_1000A065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000A158C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void *sub_1000A06AC(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v7 = sub_1000E9B14();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100006A10();
  v3[13] = 0;
  sub_100002A10(&qword_1001342A0, &qword_1000F6ED8);
  v3[14] = sub_1000EBDE4();
  sub_1000E9B04();
  v9 = sub_1000E9B34();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v3[15] = sub_1000E9B24();
  sub_10004E7EC(a1, (v3 + 2));
  sub_10004E7EC(a2, (v3 + 7));
  v3[12] = a3;
  return v3;
}

id sub_1000A07B4()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 104);
  }

  else
  {
    v3 = [objc_allocWithZone(NSOperationQueue) init];
    [v3 setQualityOfService:25];
    v4 = *(v0 + 104);
    *(v0 + 104) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1000A0834(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a4;
  v39 = a2;
  v8 = sub_1000E9A84();
  v9 = sub_1000090D4(v8);
  v40 = v10;
  v41 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v13 = sub_1000E95E4();
  v14 = sub_1000090D4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100006A10();
  v21 = v20 - v19;
  v22 = a1;
  sub_1000E99B4();
  sub_1000E95F4();
  v23 = sub_1000E95D4();
  v25 = v24;
  (*(v16 + 8))(v21, v13);
  v26 = v42;
  v42 = v23;
  if (sub_1000A0B04(a3, v26, v23, v25))
  {
    v28 = v40;
    v27 = v41;
    v37 = *(v40 + 16);
    v38 = v22;
    v37(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v41);
    v29 = *(v5 + 96);
    sub_100051D3C(v5 + 16, v44);
    sub_100051D3C(v5 + 56, v43);
    objc_allocWithZone(type metadata accessor for WeatherDataOperation(0));

    sub_100064870();
    v31 = v30;
    v32 = swift_allocObject();
    swift_weakInit();
    v37(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v27);
    v33 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v34 = swift_allocObject();
    v35 = v42;
    *(v34 + 2) = v32;
    *(v34 + 3) = v35;
    *(v34 + 4) = v25;
    (*(v28 + 32))(&v34[v33], &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
    sub_1000E9B84();
    v36 = sub_1000A07B4();
    [v36 addOperation:v31];
  }

  else
  {
  }
}

BOOL sub_1000A0B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 120);
  sub_1000E9AE4();
  swift_beginAccess();
  v11 = sub_1000A065C(a3, a4, *(v4 + 112));
  if (v11)
  {
    swift_endAccess();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;

    v13 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = *(v11 + 16);
      sub_1000311F4();
      v13 = v24;
    }

    v14 = *(v13 + 16);
    if (v14 >= *(v13 + 24) >> 1)
    {
      sub_1000311F4();
      v13 = v25;
    }

    *(v13 + 16) = v14 + 1;
    v15 = v13 + 16 * v14;
    *(v15 + 32) = sub_1000A19AC;
    *(v15 + 40) = v12;
    swift_beginAccess();
    v16 = *(v5 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v5 + 112);
    v18 = v13;
  }

  else
  {
    swift_endAccess();
    sub_100002A10(&unk_1001304E0, &unk_1000F0C40);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000EFAD0;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    *(v19 + 32) = sub_1000A1800;
    *(v19 + 40) = v20;
    swift_beginAccess();

    v21 = *(v4 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v4 + 112);
    v18 = v19;
  }

  sub_1000A1828(v18, a3, a4, isUniquelyReferenced_nonNull_native);
  *(v5 + 112) = v26;
  swift_endAccess();
  sub_1000E9AF4();
  return v11 == 0;
}

uint64_t sub_1000A0D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000E9A84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = sub_1000A10A8();

    if (v16)
    {
      v30 = a1;
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v17 = sub_1000E9F64();
      sub_100008CB8(v17, qword_100145C10);
      v18 = *(v8 + 16);
      v18(v14, a5, v7);
      swift_bridgeObjectRetain_n();
      v19 = sub_1000E9F44();
      v20 = sub_1000EC1B4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31 = v29;
        *v21 = 141558531;
        *(v21 + 4) = 1752392040;
        *(v21 + 12) = 2081;
        v18(v12, v14, v7);
        v22 = sub_1000EBEF4();
        v24 = v23;
        (*(v8 + 8))(v14, v7);
        v25 = sub_1000E2E18(v22, v24, &v31);

        *(v21 + 14) = v25;
        *(v21 + 22) = 2048;
        v26 = *(v16 + 16);

        *(v21 + 24) = v26;

        _os_log_impl(&_mh_execute_header, v19, v20, "Data operation completion: %{private,mask.hash}s, requests: %ld", v21, 0x20u);
        sub_100009068(v29);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v27 = (*(v8 + 8))(v14, v7);
      }

      __chkstk_darwin(v27);
      *(&v28 - 2) = v30;
      sub_1000A04FC(sub_1000A1784, (&v28 - 4), v16);
    }
  }

  return result;
}

uint64_t sub_1000A10A8()
{
  v2 = *(v0 + 120);
  sub_1000E9B34();

  sub_100002A10(&qword_1001342A8, &qword_1000F6EE0);
  sub_1000E9C24();

  return v3;
}

void sub_1000A114C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000E9A84();
  v6 = sub_1000090D4(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100006A10();
  (*(v11 + 16))(v10 - v9, a1);
  v12 = *(v2 + 96);
  sub_100051D3C(v2 + 16, v17);
  sub_100051D3C(v2 + 56, v16);
  v13 = objc_allocWithZone(type metadata accessor for WeatherDataOperation(0));

  sub_100064870();
  v15 = v14;
  sub_100068728(a1, a2);
}

uint64_t sub_1000A1268()
{
  sub_100009068((v0 + 16));
  sub_100009068((v0 + 56));
  v1 = *(v0 + 96);

  v2 = *(v0 + 112);

  v3 = *(v0 + 120);

  return v0;
}

uint64_t sub_1000A12B0()
{
  sub_1000A1268();

  return _swift_deallocClassInstance(v0, 128, 7);
}

uint64_t sub_1000A1308()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1340()
{
  v1 = sub_1000E9A84();
  sub_1000090D4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000A1400(uint64_t a1)
{
  v3 = *(sub_1000E9A84() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1000A0D3C(a1, v4, v5, v6, v7);
}

uint64_t sub_1000A1478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 112);
  v9 = sub_1000A158C(a2, a3);
  v10 = 0;
  if (v11)
  {
    v12 = v9;
    v13 = *(a1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a1 + 112);
    v15 = v18[3];
    sub_100002A10(&qword_1001342B0, &qword_1000F6EE8);
    sub_1000EC444(isUniquelyReferenced_nonNull_native, v15);
    v16 = *(v18[6] + 16 * v12 + 8);

    v10 = *(v18[7] + 8 * v12);
    sub_100002A10(&qword_1001342A0, &qword_1000F6ED8);
    sub_1000EC454();
    *(a1 + 112) = v18;
  }

  *a4 = v10;
  return swift_endAccess();
}

unint64_t sub_1000A158C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000EC664();
  sub_1000EBF14();
  v6 = sub_1000EC684();

  return sub_1000A1670(a1, a2, v6);
}

unint64_t sub_1000A1604(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1000EC664();
  sub_1000EC674(a1);
  v4 = sub_1000EC684();

  return sub_1000A1724(a1, v4);
}

unint64_t sub_1000A1670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1000EC5D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000A1724(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

uint64_t sub_1000A1784(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

uint64_t sub_1000A17C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A1800()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000A1828(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000A158C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100002A10(&qword_1001342B0, &qword_1000F6EE8);
  if (!sub_1000EC444(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_1000A158C(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_1000EC604();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    sub_1000A1964(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_1000A1964(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1000A19C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E9A84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100005B30(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A1A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000E9A84();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000028A0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for WidgetLocation()
{
  result = qword_100134310;
  if (!qword_100134310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A1B8C()
{
  result = sub_1000E9A84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A1C40(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v55 = a3;
  sub_100013D84();
  v54 = sub_1000EAD74();
  v4 = sub_1000090D4(v54);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v48 - v13;
  v15 = sub_1000EC224();
  v16 = sub_1000090D4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v16);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v48 - v24;
  v26 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v27 = sub_1000090D4(v26);
  v52 = v28;
  v53 = v27;
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v27);
  v49 = &v48 - v32;
  v55(v31);
  v51 = type metadata accessor for DailyViewAttributes();
  v33 = *(v51 + 52);
  v55 = a2;
  if (*(a2 + v33) == 1)
  {
    sub_1000EC0E4();
  }

  else
  {
    sub_1000EC0F4();
  }

  sub_100013D84();
  v34 = sub_1000E86A4();
  sub_1000028A0(v14, 1, 1, v34);
  sub_1000EAD34();

  sub_100006850(v14, &qword_10012FD68, &unk_1000F5370);
  sub_1000EC214();
  v50 = *(v18 + 8);
  v50(v25, v15);
  v35 = v54;
  (*(v6 + 104))(v10, enum case for WeatherFormatPlaceholder.none(_:), v54);
  sub_1000E93A4();
  sub_1000E9394();
  sub_100006808(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v36 = v53;
  v37 = v49;
  v48 = sub_1000E8304();
  v39 = v38;

  (*(v6 + 8))(v10, v35);
  v50(v23, v15);
  (*(v52 + 8))(v37, v36);
  v56 = v48;
  v57 = v39;
  sub_100005898();
  v40 = sub_1000EA814();
  v42 = v41;
  v44 = v43;
  v45 = *(v55 + *(v51 + 68));
  sub_1000EA664();
  sub_1000EA684();
  sub_1000EA5D4();

  v46 = sub_1000EA7D4();

  sub_1000058EC(v40, v42, v44 & 1);

  return v46;
}

uint64_t sub_1000A20BC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100013D84();
  v6 = type metadata accessor for DailyViewAttributes();
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_1000EB214();
    v12 = sub_100006A04(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
      v16 = sub_100006A04(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[8];
      }

      else
      {
        if (a2 == 254)
        {
          v19 = *(v3 + a3[9] + 8);
          if (v19 > 1)
          {
            return (v19 ^ 0xFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v20 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
        v21 = sub_100006A04(v20);
        if (*(v22 + 84) == a2)
        {
          v9 = v21;
          v14 = a3[10];
        }

        else
        {
          v9 = sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
          v14 = a3[11];
        }
      }
    }

    v10 = v3 + v14;
  }

  return sub_100005B30(v10, a2, v9);
}

uint64_t sub_1000A2278(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100013D84();
  v8 = type metadata accessor for DailyViewAttributes();
  v9 = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_1000EB214();
    v14 = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
      result = sub_100006A04(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = result;
        v16 = a4[8];
      }

      else
      {
        if (a3 == 254)
        {
          *(v4 + a4[9] + 8) = -a2;
          return result;
        }

        v20 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
        v21 = sub_100006A04(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[10];
        }

        else
        {
          v11 = sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
          v16 = a4[11];
        }
      }
    }

    v12 = v4 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

uint64_t type metadata accessor for DailyTemperatureForecastRowView()
{
  result = qword_1001343A8;
  if (!qword_1001343A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A246C()
{
  type metadata accessor for DailyViewAttributes();
  if (v0 <= 0x3F)
  {
    sub_1000EB214();
    if (v1 <= 0x3F)
    {
      sub_1000A2598(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
      if (v2 <= 0x3F)
      {
        sub_100005F48();
        if (v3 <= 0x3F)
        {
          sub_1000A2598(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
          if (v4 <= 0x3F)
          {
            sub_100005FEC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000A2598(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000E9F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000A2608@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000EA2C4();
  v4 = sub_1000090D4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  v12 = sub_1000069E4(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v23 - v15);
  v17 = type metadata accessor for DailyTemperatureForecastRowView();
  sub_1000068F4(v1 + *(v17 + 32), v16, &qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1000EBC34();
    sub_1000069E4(v18);
    return (*(v19 + 32))(a1, v16);
  }

  else
  {
    v21 = *v16;
    sub_1000EC1A4();
    v22 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v3);
  }
}

double sub_1000A27F4()
{
  v1 = v0;
  v2 = sub_1000EBC34();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v42 - v7;
  v9 = sub_1000EA3A4();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  v11 = __chkstk_darwin(v9);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = &v42 - v13;
  v14 = sub_1000EA2C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DailyTemperatureForecastRowView();
  v27 = v19;
  v28 = v1 + *(v19 + 36);
  v29 = *v28;
  if (*(v28 + 8) == 1)
  {
    result = 1.0;
    if (v29)
    {
      return result;
    }
  }

  else
  {

    sub_1000EC1A4();
    v42 = v14;
    v31 = sub_1000EA524();
    v43 = v6;
    v32 = v31;
    sub_1000E9F14();

    v6 = v43;
    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v29, 0);
    v19 = (*(v15 + 8))(v18, v42);
    result = 1.0;
    if ((v49 & 0x100000000000000) != 0)
    {
      return result;
    }
  }

  v33 = v1 + *(v27 + 40);
  v34 = v45;
  sub_10003E504(v19, v20, v21, v22, v23, v24, v25, v26, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v36 = v46;
  v35 = v47;
  v37 = v48;
  (*(v47 + 104))(v46, enum case for ColorSchemeContrast.increased(_:), v48);
  v38 = sub_1000EA394();
  v39 = *(v35 + 8);
  v39(v36, v37);
  v39(v34, v37);
  result = 1.0;
  if ((v38 & 1) == 0)
  {
    sub_1000A2608(v8);
    sub_1000EBC14();
    v40 = sub_1000EBBF4();
    v41 = *(v44 + 8);
    v41(v6, v2);
    v41(v8, v2);
    result = 0.27;
    if (v40)
    {
      return 0.7;
    }
  }

  return result;
}

uint64_t sub_1000A2BC0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = type metadata accessor for DailyTemperatureForecastRowView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_1000A4B58(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000A4ECC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_1000A4F30;
  a1[1] = v7;
  return result;
}

uint64_t sub_1000A2CB4@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = sub_1000EA4E4();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v28);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A10(&qword_1001343F8, &qword_1000F6F70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_100002A10(&qword_100134400, &qword_1000F6F78);
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = *(v25 + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v27 = sub_100002A10(&qword_100134408, &qword_1000F6F80);
  v15 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v17 = &v24 - v16;
  *v10 = sub_1000EA2E4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v18 = sub_100002A10(&qword_100134410, &qword_1000F6F88);
  sub_1000A2FF8(a1, &v10[*(v18 + 44)]);
  sub_1000EA4B4();
  v19 = sub_100006988(&qword_100134418, &qword_1001343F8, &qword_1000F6F70);
  sub_1000EA914();
  (*(v3 + 8))(v6, v28);
  sub_100006850(v10, &qword_1001343F8, &qword_1000F6F70);
  v20 = a1 + *(type metadata accessor for DailyTemperatureForecastRowView() + 20);
  v32 = sub_1000EB144();
  v33 = v21;
  v30 = v7;
  v31 = v19;
  swift_getOpaqueTypeConformance2();
  sub_100005898();
  v22 = v26;
  sub_1000EA8D4();

  (*(v25 + 8))(v14, v22);
  sub_1000EA084();
  return sub_1000A4FB0(v17);
}

uint64_t sub_1000A2FF8@<X0>(void (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  v69 = a1;
  v80 = a2;
  v2 = sub_100002A10(&qword_100134420, &qword_1000F6F90);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v79 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = (&v68 - v6);
  v7 = sub_1000EAFC4();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  __chkstk_darwin(v7);
  v72 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_100134428, &qword_1000F6F98);
  v11 = *(v10 - 8);
  v76 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v77 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v81 = &v68 - v15;
  v71 = *(type metadata accessor for DailyTemperatureForecastRowView() + 20);
  v93 = sub_1000EB104();
  v94 = v16;
  sub_100005898();
  v17 = sub_1000EA814();
  v19 = v18;
  v21 = v20;
  sub_1000EA9C4();
  v22 = sub_1000EA784();
  v24 = v23;
  v26 = v25;

  sub_1000058EC(v17, v19, v21 & 1);

  v68 = type metadata accessor for DailyViewAttributes();
  v27 = v69;
  v28 = *(v69 + *(v68 + 68));
  v29 = sub_1000EA7D4();
  v31 = v30;
  v33 = v32;
  sub_1000058EC(v22, v24, v26 & 1);

  v34 = sub_1000EA794();
  v36 = v35;
  v38 = v37;
  sub_1000058EC(v29, v31, v33 & 1);

  v39 = v68;
  v40 = *(v27 + *(v68 + 80));
  v73 = sub_1000EA714();
  v82 = v42;
  v83 = v41;
  LOBYTE(v29) = v43;
  sub_1000058EC(v34, v36, v38 & 1);

  sub_1000EABD4();
  sub_1000E9FC4();
  v44 = v29 & 1;
  LOBYTE(v93) = v29 & 1;
  v70 = v29 & 1;
  *&v84[6] = v86;
  *&v84[22] = v87;
  *&v84[38] = v88;
  v45 = v72;
  sub_1000EB1E4();
  sub_1000EAF84();
  (*(v74 + 8))(v45, v75);
  v46 = v81;
  sub_1000EB394();
  KeyPath = swift_getKeyPath();
  v48 = (v46 + *(sub_100002A10(&qword_100134430, &unk_1000F6FD0) + 36));
  v49 = *(sub_100002A10(&qword_100131B10, &unk_1000F2960) + 28);
  v50 = enum case for ColorSchemeContrast.standard(_:);
  v51 = sub_1000EA3A4();
  (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
  *v48 = KeyPath;
  v52 = *(v27 + *(v39 + 72));
  v53 = swift_getKeyPath();
  v54 = (v46 + *(sub_100002A10(&qword_100134438, &qword_1000F7010) + 36));
  *v54 = v53;
  v54[1] = v52;

  sub_1000EABC4();
  sub_1000E9FC4();
  v55 = (v46 + *(v76 + 44));
  v56 = v90;
  *v55 = v89;
  v55[1] = v56;
  v55[2] = v91;
  v57 = sub_1000EA2E4();
  v58 = v78;
  *v78 = v57;
  *(v58 + 8) = 0;
  *(v58 + 16) = 1;
  v59 = sub_100002A10(&qword_100134440, &qword_1000F7018);
  sub_1000A37F8(v27, v58 + *(v59 + 44));
  v60 = v77;
  sub_1000068F4(v46, v77, &qword_100134428, &qword_1000F6F98);
  v61 = v79;
  sub_1000068F4(v58, v79, &qword_100134420, &qword_1000F6F90);
  *(&v92[4] + 2) = *v84;
  v62 = v73;
  v92[0] = v73;
  v92[1] = v83;
  LOBYTE(v92[2]) = v44;
  *(&v92[2] + 1) = *v85;
  HIDWORD(v92[2]) = *&v85[3];
  v92[3] = v82;
  LOWORD(v92[4]) = 257;
  *(&v92[6] + 2) = *&v84[16];
  *(&v92[8] + 2) = *&v84[32];
  v92[10] = *&v84[46];
  v63 = v80;
  memcpy(v80, v92, 0x58uLL);
  v63[11] = 0;
  *(v63 + 96) = 1;
  v64 = v63;
  v65 = sub_100002A10(&qword_100134448, &qword_1000F7020);
  sub_1000068F4(v60, v64 + v65[16], &qword_100134428, &qword_1000F6F98);
  v66 = v64 + v65[20];
  *v66 = 0;
  v66[8] = 1;
  sub_1000068F4(v61, v64 + v65[24], &qword_100134420, &qword_1000F6F90);
  sub_1000068F4(v92, &v93, &qword_100134450, &qword_1000F7028);
  sub_100006850(v58, &qword_100134420, &qword_1000F6F90);
  sub_100006850(v81, &qword_100134428, &qword_1000F6F98);
  sub_100006850(v61, &qword_100134420, &qword_1000F6F90);
  sub_100006850(v60, &qword_100134428, &qword_1000F6F98);
  v99 = *v84;
  v93 = v62;
  v94 = v83;
  v95 = v70;
  *v96 = *v85;
  *&v96[3] = *&v85[3];
  v97 = v82;
  v98 = 257;
  v100 = *&v84[16];
  *v101 = *&v84[32];
  *&v101[14] = *&v84[46];
  return sub_100006850(&v93, &qword_100134450, &qword_1000F7028);
}

uint64_t sub_1000A3724@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100002A10(&qword_1001344A0, &qword_1000F7088);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  sub_1000EAA44();
  v6 = sub_1000EAA54();
  sub_1000028A0(v5, 0, 1, v6);
  v7 = sub_1000EAA34();
  result = sub_100006850(v5, &qword_1001344A0, &qword_1000F7088);
  *a1 = v7;
  return result;
}

uint64_t sub_1000A37F8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v215 = a2;
  v3 = sub_1000E9874();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v206 = &v168[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000E9894();
  v204 = *(v6 - 8);
  v205 = v6;
  v7 = *(v204 + 64);
  __chkstk_darwin(v6);
  v203 = &v168[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v210 = &v168[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v208 = &v168[-v13];
  v14 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v211 = *(v14 - 8);
  v212 = v14;
  v15 = *(v211 + 64);
  v16 = __chkstk_darwin(v14);
  v194 = &v168[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v193 = &v168[-v19];
  v20 = __chkstk_darwin(v18);
  v209 = &v168[-v21];
  v22 = __chkstk_darwin(v20);
  v192 = &v168[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v168[-v25];
  __chkstk_darwin(v24);
  v207 = &v168[-v27];
  v28 = sub_1000EAD54();
  v201 = *(v28 - 8);
  v202 = v28;
  v29 = *(v201 + 64);
  __chkstk_darwin(v28);
  v200 = &v168[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v196 = sub_100002A10(&qword_10012EF38, &qword_1000EEE20);
  v31 = *(*(v196 - 8) + 64);
  __chkstk_darwin(v196);
  v197 = &v168[-v32];
  v199 = sub_100002A10(&qword_100134458, &qword_1000F7030);
  v33 = *(*(v199 - 8) + 64);
  __chkstk_darwin(v199);
  v198 = &v168[-v34];
  v213 = sub_100002A10(&qword_100134460, &qword_1000F7038);
  v35 = *(*(v213 - 8) + 64);
  __chkstk_darwin(v213);
  v195 = &v168[-v36];
  v37 = sub_100002A10(&qword_100134468, &qword_1000F7040);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v214 = &v168[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v220 = &v168[-v41];
  v42 = sub_100002A10(&qword_100134470, &qword_1000F7048);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v187 = &v168[-v44];
  v45 = sub_1000EBC34();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = __chkstk_darwin(v45);
  v50 = &v168[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v48);
  v52 = &v168[-v51];
  v53 = sub_1000EABF4();
  v184 = *(v53 - 8);
  v54 = *(v184 + 64);
  __chkstk_darwin(v53);
  v181 = &v168[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v177 = sub_100002A10(&qword_10012EF50, &unk_1000F7050);
  v56 = *(*(v177 - 8) + 64);
  __chkstk_darwin(v177);
  v180 = &v168[-v57];
  v178 = sub_100002A10(&qword_10012EF58, &unk_1000EEE40);
  v58 = *(*(v178 - 8) + 64);
  __chkstk_darwin(v178);
  v183 = &v168[-v59];
  v182 = sub_100002A10(&qword_10012EF60, &qword_1000F7060);
  v60 = *(*(v182 - 8) + 64);
  v61 = __chkstk_darwin(v182);
  v186 = &v168[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __chkstk_darwin(v61);
  v179 = &v168[-v64];
  __chkstk_darwin(v63);
  v185 = &v168[-v65];
  v66 = sub_100002A10(&qword_100134478, &qword_1000F7068);
  v67 = *(*(v66 - 8) + 64);
  v68 = __chkstk_darwin(v66 - 8);
  v218 = &v168[-((v69 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v68);
  v71 = &v168[-v70];
  v216 = type metadata accessor for DailyViewAttributes();
  v72 = *(a1 + v216[9]);
  v219 = v71;
  v190 = v46;
  v191 = v45;
  v188 = v52;
  v189 = v50;
  if (v72 == 1)
  {
    v174 = type metadata accessor for DailyTemperatureForecastRowView();
    v73 = sub_1000A1C40(a1 + *(v174 + 20), a1, &DailyForecastViewModel.low.getter);
    v175 = v42;
    v176 = v26;
    v75 = v74;
    v173 = v53;
    v77 = v76;
    sub_1000EA9C4();
    v217 = a1;
    v78 = sub_1000EA784();
    v170 = v79;
    v171 = v78;
    v169 = v80;
    v172 = v81;

    sub_1000058EC(v73, v75, v77 & 1);

    sub_1000A2608(v52);
    sub_1000EBC14();
    LOBYTE(v73) = sub_1000EBBF4();
    v82 = *(v46 + 8);
    v82(v50, v45);
    v82(v52, v45);
    v83 = v184;
    v84 = &enum case for BlendMode.normal(_:);
    if ((v73 & 1) == 0)
    {
      v84 = &enum case for BlendMode.plusLighter(_:);
    }

    v85 = v181;
    v86 = v173;
    (*(v184 + 104))(v181, *v84, v173);
    v87 = v180;
    (*(v83 + 32))(&v180[*(v177 + 36)], v85, v86);
    v88 = v170;
    *v87 = v171;
    *(v87 + 8) = v88;
    *(v87 + 16) = v169 & 1;
    *(v87 + 24) = v172;
    v89 = sub_1000A27F4();
    v90 = v183;
    sub_1000068A4(v87, v183, &qword_10012EF50, &unk_1000F7050);
    *&v90[*(v178 + 36)] = v89;
    v91 = *(v217 + *(v174 + 24));
    sub_1000EABE4();
    sub_1000E9FC4();
    v92 = v179;
    sub_1000068A4(v90, v179, &qword_10012EF58, &unk_1000EEE40);
    v93 = &v92[*(v182 + 36)];
    v94 = v237;
    *v93 = v236;
    v93[1] = v94;
    v93[2] = v238;
    v95 = v185;
    sub_1000068A4(v92, v185, &qword_10012EF60, &qword_1000F7060);
    sub_1000EABC4();
    sub_1000E9FC4();
    v183 = v241;
    v184 = v239;
    v182 = v243;
    v96 = v244;
    LOBYTE(v229[0]) = 1;
    LOBYTE(v228[0]) = v240;
    LOBYTE(v248) = v242;
    v97 = v186;
    sub_1000068F4(v95, v186, &qword_10012EF60, &qword_1000F7060);
    LOBYTE(v87) = v229[0];
    v98 = v228[0];
    v99 = v248;
    v100 = v187;
    sub_1000068F4(v97, v187, &qword_10012EF60, &qword_1000F7060);
    v101 = &v100[*(sub_100002A10(&qword_100134498, &qword_1000F7080) + 48)];
    *v101 = 0;
    v101[8] = v87;
    v26 = v176;
    v102 = v183;
    *(v101 + 2) = v184;
    v101[24] = v98;
    *(v101 + 4) = v102;
    v101[40] = v99;
    *(v101 + 6) = v182;
    *(v101 + 7) = v96;
    a1 = v217;
    sub_100006850(v95, &qword_10012EF60, &qword_1000F7060);
    v103 = v97;
    v104 = v219;
    sub_100006850(v103, &qword_10012EF60, &qword_1000F7060);
    sub_1000068A4(v100, v104, &qword_100134470, &qword_1000F7048);
    v105 = v104;
    v106 = 0;
    v107 = v175;
  }

  else
  {
    v105 = v71;
    v106 = 1;
    v107 = v42;
  }

  sub_1000028A0(v105, v106, 1, v107);
  v108 = 1;
  v110 = v211;
  v109 = v212;
  v111 = v208;
  v112 = v209;
  v113 = v207;
  if (*(a1 + v216[10]) == 1)
  {
    sub_1000068F4(a1 + v216[22], v208, &qword_10012EF30, &unk_1000F14F0);
    if (sub_100005B30(v111, 1, v109) == 1)
    {
      sub_100006850(v111, &qword_10012EF30, &unk_1000F14F0);
      v114 = a1 + *(type metadata accessor for DailyTemperatureForecastRowView() + 20);
      v115 = v192;
      sub_1000EB1B4();
      v111 = v115;
      sub_1000E8324();
      v116 = v26;
      v113 = v26;
    }

    else
    {
      v116 = v26;
      sub_1000E8324();
    }

    v117 = *(v110 + 8);
    v117(v111, v109);
    sub_1000E82E4();
    v117(v113, v109);
    v118 = v210;
    sub_1000068F4(a1 + v216[23], v210, &qword_10012EF30, &unk_1000F14F0);
    if (sub_100005B30(v118, 1, v109) == 1)
    {
      sub_100006850(v118, &qword_10012EF30, &unk_1000F14F0);
      v119 = a1 + *(type metadata accessor for DailyTemperatureForecastRowView() + 20);
      v120 = v192;
      sub_1000EB194();
      sub_1000E8324();
      v121 = v120;
      v112 = v116;
    }

    else
    {
      sub_1000E8324();
      v121 = v210;
    }

    v117(v121, v109);
    sub_1000E82E4();
    v117(v112, v109);
    v122 = type metadata accessor for DailyTemperatureForecastRowView();
    v123 = *(v122 + 20);
    sub_1000EB1B4();
    v124 = v193;
    sub_1000E8324();
    v117(v116, v109);
    sub_1000E82E4();
    v117(v124, v109);
    sub_1000EB194();
    v125 = v194;
    sub_1000E8324();
    v117(v116, v109);
    sub_1000E82E4();
    v117(v125, v109);
    v126 = v188;
    sub_1000A2608(v188);
    v127 = v189;
    sub_1000EBC04();
    sub_1000EBBF4();
    v128 = *(v190 + 8);
    v129 = v127;
    v130 = v191;
    v128(v129, v191);
    v128(v126, v130);
    v131 = v203;
    sub_1000EB134();
    sub_1000E9884();
    (*(v204 + 8))(v131, v205);
    sub_1000EAB64();
    v132 = v200;
    sub_1000EAD44();
    v133 = *(v122 + 44);
    sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
    sub_1000EAEA4();
    sub_1000EABC4();
    sub_1000E9FC4();
    v134 = v197;
    (*(v201 + 32))(v197, v132, v202);
    v135 = (v134 + *(v196 + 36));
    v136 = v246;
    *v135 = v245;
    v135[1] = v136;
    v135[2] = v247;
    v137 = v198;
    sub_1000068A4(v134, v198, &qword_10012EF38, &qword_1000EEE20);
    v137[*(v199 + 36)] = 1;
    sub_1000A501C();
    v138 = v195;
    sub_1000EA8F4();
    sub_100006850(v137, &qword_100134458, &qword_1000F7030);
    sub_1000068A4(v138, v220, &qword_100134460, &qword_1000F7038);
    v108 = 0;
  }

  v139 = v220;
  sub_1000028A0(v220, v108, 1, v213);
  sub_1000EABC4();
  sub_1000E9FC4();
  v216 = v250;
  v217 = v248;
  v212 = v253;
  v213 = v252;
  v227 = 1;
  v226 = v249;
  v225 = v251;
  v140 = type metadata accessor for DailyTemperatureForecastRowView();
  v141 = sub_1000A1C40(a1 + *(v140 + 20), a1, &DailyForecastViewModel.high.getter);
  v142 = a1;
  v144 = v143;
  v146 = v145;
  sub_1000EA9C4();
  v147 = sub_1000EA784();
  v209 = v148;
  v210 = v147;
  v150 = v149;
  v211 = v151;

  sub_1000058EC(v141, v144, v146 & 1);

  v152 = *(v142 + *(v140 + 28));
  sub_1000EABE4();
  sub_1000E9FC4();
  LODWORD(v208) = v150 & 1;
  v153 = v218;
  sub_1000068F4(v219, v218, &qword_100134478, &qword_1000F7068);
  v154 = v214;
  sub_1000068F4(v139, v214, &qword_100134468, &qword_1000F7040);
  v155 = v227;
  LOBYTE(v152) = v226;
  LOBYTE(v141) = v225;
  v156 = v153;
  v157 = v215;
  sub_1000068F4(v156, v215, &qword_100134478, &qword_1000F7068);
  v158 = sub_100002A10(&qword_100134480, &unk_1000F7070);
  sub_1000068F4(v154, v157 + v158[12], &qword_100134468, &qword_1000F7040);
  v159 = v157 + v158[16];
  *v159 = 0;
  *(v159 + 8) = v155;
  v160 = v216;
  *(v159 + 16) = v217;
  *(v159 + 24) = v152;
  *(v159 + 32) = v160;
  *(v159 + 40) = v141;
  v161 = v212;
  *(v159 + 48) = v213;
  *(v159 + 56) = v161;
  v162 = v158[20];
  v164 = v209;
  v163 = v210;
  *&v228[0] = v210;
  *(&v228[0] + 1) = v209;
  v165 = v208;
  LOBYTE(v228[1]) = v208;
  *(&v228[1] + 1) = v224[0];
  DWORD1(v228[1]) = *(v224 + 3);
  v166 = v211;
  *(&v228[1] + 1) = v211;
  v228[4] = v223;
  v228[3] = v222;
  v228[2] = v221;
  memcpy((v157 + v162), v228, 0x50uLL);
  sub_1000068F4(v228, v229, &qword_10012EF70, &qword_1000EEE58);
  sub_100006850(v220, &qword_100134468, &qword_1000F7040);
  sub_100006850(v219, &qword_100134478, &qword_1000F7068);
  v229[0] = v163;
  v229[1] = v164;
  v230 = v165;
  *v231 = v224[0];
  *&v231[3] = *(v224 + 3);
  v232 = v166;
  v233 = v221;
  v234 = v222;
  v235 = v223;
  sub_100006850(v229, &qword_10012EF70, &qword_1000EEE58);
  sub_100006850(v154, &qword_100134468, &qword_1000F7040);
  return sub_100006850(v218, &qword_100134478, &qword_1000F7068);
}

uint64_t sub_1000A4B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyTemperatureForecastRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A4BBC()
{
  v1 = type metadata accessor for DailyTemperatureForecastRowView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1000EBC44();
  sub_1000069D0(v6);
  (*(v7 + 8))(v0 + v3);
  v8 = type metadata accessor for DailyViewAttributes();
  v9 = *(v0 + v3 + v8[5]);

  v10 = *(v0 + v3 + v8[17]);

  v11 = *(v0 + v3 + v8[18]);

  v12 = *(v0 + v3 + v8[19]);

  v13 = v8[22];
  v14 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_100005B30(v0 + v3 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  v15 = v8[23];
  if (!sub_100005B30(v5 + v15, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v5 + v15, v14);
  }

  v16 = v1[5];
  v17 = sub_1000EB214();
  sub_1000069D0(v17);
  (*(v18 + 8))(v5 + v16);
  v19 = v1[8];
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1000EBC34();
    sub_1000069D0(v20);
    (*(v21 + 8))(v5 + v19);
  }

  else
  {
    v22 = *(v5 + v19);
  }

  sub_100006530(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v23 = v1[10];
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_1000EA3A4();
    sub_1000069D0(v24);
    (*(v25 + 8))(v5 + v23);
  }

  else
  {
    v26 = *(v5 + v23);
  }

  v27 = v1[11];
  v28 = sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
  sub_1000069D0(v28);
  (*(v29 + 8))(v5 + v27);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A4ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyTemperatureForecastRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A4F30@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DailyTemperatureForecastRowView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1000A2CB4(v4, a1);
}

uint64_t sub_1000A4FB0(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100134408, &qword_1000F6F80);
  sub_1000069D0(v2);
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1000A501C()
{
  result = qword_100134488;
  if (!qword_100134488)
  {
    sub_100002ABC(&qword_100134458, &qword_1000F7030);
    sub_10000674C();
    sub_1000A50A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134488);
  }

  return result;
}

unint64_t sub_1000A50A8()
{
  result = qword_100134490;
  if (!qword_100134490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134490);
  }

  return result;
}

uint64_t sub_1000A5154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ForecastEntry(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_1000A5210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ForecastEntry(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for LocationContentView()
{
  result = qword_100134510;
  if (!qword_100134510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A5328@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  v10 = sub_1000069E4(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v20 - v13);
  sub_10000EBC4(v2, &v20 - v13, &qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000EBC44();
    sub_1000069E4(v15);
    return (*(v16 + 32))(a1, v14);
  }

  else
  {
    v18 = *v14;
    sub_1000EC1A4();
    v19 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000A5520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = sub_100002A10(&qword_100134548, &qword_1000F7108);
  v3 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v37 = &v32 - v4;
  v34 = sub_100002A10(&qword_100134550, &qword_1000F7110);
  v5 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v7 = &v32 - v6;
  v35 = sub_100002A10(&qword_100134558, &qword_1000F7118);
  v8 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v10 = &v32 - v9;
  v11 = sub_1000EB884();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000EB3E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000EBC44();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v32 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v32 - v25;
  v39 = a1;
  sub_1000A5328(&v32 - v25);
  v33 = v21;
  v27 = (*(v21 + 88))(v26, v20);
  if (v27 == enum case for WidgetFamily.accessoryCircular(_:) || v27 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1000EC3E4(61);
    v42._countAndFlagsBits = 0xD000000000000021;
    v42._object = 0x80000001000FB1A0;
    sub_1000EBF44(v42);
    v30 = v32;
    sub_1000A5328(v32);
    sub_1000A5C64(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v43._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v43);

    (*(v33 + 8))(v30, v20);
    v44._object = 0x80000001000FE5D0;
    v44._countAndFlagsBits = 0xD00000000000001ALL;
    sub_1000EBF44(v44);
  }

  else
  {
    if (v27 == enum case for WidgetFamily.accessoryInline(_:))
    {
      v28 = v39 + *(type metadata accessor for LocationContentView() + 20);
      sub_10003280C(v14);
      sub_1000EB3D4();
      (*(v16 + 16))(v7, v19, v15);
      swift_storeEnumTagMultiPayload();
      sub_1000A5C64(&qword_100134560, &type metadata accessor for LocationInlineContentView);
      sub_1000EA4A4();
      sub_10000EBC4(v10, v37, &qword_100134558, &qword_1000F7118);
      swift_storeEnumTagMultiPayload();
      sub_100002A10(&qword_100134568, &unk_1000F7120);
      sub_1000A5CAC();
      sub_1000A5D28();
      sub_1000EA4A4();
      sub_1000A5DE4(v10);
      return (*(v16 + 8))(v19, v15);
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1000EC3E4(64);
    v45._countAndFlagsBits = 0xD000000000000022;
    v45._object = 0x80000001000FB150;
    sub_1000EBF44(v45);
    v31 = v32;
    sub_1000A5328(v32);
    sub_1000A5C64(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v46._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v46);

    (*(v33 + 8))(v31, v20);
    v47._countAndFlagsBits = 0xD00000000000001CLL;
    v47._object = 0x80000001000FB260;
    sub_1000EBF44(v47);
  }

  result = sub_1000EC464();
  __break(1u);
  return result;
}

uint64_t sub_1000A5C64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A5CAC()
{
  result = qword_100134570;
  if (!qword_100134570)
  {
    sub_100002ABC(&qword_100134568, &unk_1000F7120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134570);
  }

  return result;
}

unint64_t sub_1000A5D28()
{
  result = qword_100134578;
  if (!qword_100134578)
  {
    sub_100002ABC(&qword_100134558, &qword_1000F7118);
    sub_1000A5C64(&qword_100134560, &type metadata accessor for LocationInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134578);
  }

  return result;
}

uint64_t sub_1000A5DE4(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100134558, &qword_1000F7118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A5E50()
{
  result = qword_100134580;
  if (!qword_100134580)
  {
    sub_100002ABC(&qword_100134588, &qword_1000F7130);
    sub_1000A5ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134580);
  }

  return result;
}

unint64_t sub_1000A5ED4()
{
  result = qword_100134590;
  if (!qword_100134590)
  {
    sub_100002ABC(&qword_100134598, &qword_1000F7138);
    sub_1000A5CAC();
    sub_1000A5D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134590);
  }

  return result;
}

uint64_t sub_1000A5F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AggregateWeatherViewModel(0);
  v5 = sub_100005B30(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A5FD0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AggregateWeatherViewModel(0);

  return sub_1000028A0(a1, v5, a3, v6);
}

uint64_t type metadata accessor for AdaptiveConditionsComplicationDataStatus()
{
  result = qword_100134610;
  if (!qword_100134610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A6090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ForecastEntry(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_1000A614C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ForecastEntry(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for AQIContentView()
{
  result = qword_100134698;
  if (!qword_100134698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A6264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  v10 = sub_1000069E4(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v20 - v13);
  sub_10000EBC4(v2, &v20 - v13, &qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000EBC44();
    sub_1000069E4(v15);
    return (*(v16 + 32))(a1, v14);
  }

  else
  {
    v18 = *v14;
    sub_1000EC1A4();
    v19 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000A645C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v53 = sub_100002A10(&qword_1001346D0, &qword_1000F71D0);
  v3 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v54 = &v47 - v4;
  v61 = sub_100002A10(&qword_1001346D8, &qword_1000F71D8);
  v5 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v57 = &v47 - v6;
  v58 = sub_1000EB534();
  v56 = *(v58 - 8);
  v7 = *(v56 + 64);
  __chkstk_darwin(v58);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100002A10(&qword_1001346E0, &qword_1000F71E0);
  v9 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v11 = &v47 - v10;
  v51 = sub_100002A10(&qword_1001346E8, &qword_1000F71E8);
  v12 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v14 = &v47 - v13;
  v59 = sub_100002A10(&qword_1001346F0, &qword_1000F71F0);
  v15 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v17 = &v47 - v16;
  v18 = sub_1000EB914();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000EB714();
  v52 = *(v22 - 8);
  v23 = *(v52 + 64);
  __chkstk_darwin(v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000EBC44();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v48 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v47 - v31;
  sub_1000A6264(&v47 - v31);
  v49 = v27;
  v50 = v26;
  v33 = (*(v27 + 88))(v32, v26);
  if (v33 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v34 = a1 + *(type metadata accessor for AQIContentView() + 20);
    sub_100075790(v21);
    sub_1000EB704();
    v35 = v52;
    (*(v52 + 16))(v14, v25, v22);
    swift_storeEnumTagMultiPayload();
    sub_1000A6DE4(&qword_100134708, &type metadata accessor for AirQualityCircularContentView);
    sub_1000EA4A4();
    sub_10000EBC4(v17, v11, &qword_1001346F0, &qword_1000F71F0);
    swift_storeEnumTagMultiPayload();
    sub_1000A6D28();
    sub_1000A6E2C();
    sub_1000EA4A4();
    sub_100008E48(v17, &qword_1001346F0, &qword_1000F71F0);
    return (*(v35 + 8))(v25, v22);
  }

  if (v33 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1000EC3E4(56);
    v65._countAndFlagsBits = 0xD000000000000021;
    v65._object = 0x80000001000FB1A0;
    sub_1000EBF44(v65);
    v43 = v48;
    sub_1000A6264(v48);
    sub_1000A6DE4(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v44 = v50;
    v66._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v66);

    (*(v49 + 8))(v43, v44);
    v67._object = 0x80000001000FE620;
    v67._countAndFlagsBits = 0xD000000000000015;
    sub_1000EBF44(v67);
LABEL_9:
    result = sub_1000EC464();
    __break(1u);
    return result;
  }

  if (v33 != enum case for WidgetFamily.accessoryInline(_:))
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1000EC3E4(57);
    v68._countAndFlagsBits = 0xD000000000000022;
    v68._object = 0x80000001000FB150;
    sub_1000EBF44(v68);
    v45 = v48;
    sub_1000A6264(v48);
    sub_1000A6DE4(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v46 = v50;
    v69._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v69);

    (*(v49 + 8))(v45, v46);
    v70._object = 0x80000001000FE620;
    v70._countAndFlagsBits = 0xD000000000000015;
    sub_1000EBF44(v70);
    goto LABEL_9;
  }

  v37 = v11;
  v38 = a1 + *(type metadata accessor for AQIContentView() + 20);
  sub_100075790(v21);
  v39 = v55;
  sub_1000EB524();
  v40 = v56;
  v41 = v58;
  (*(v56 + 16))(v54, v39, v58);
  swift_storeEnumTagMultiPayload();
  sub_1000A6DE4(&qword_1001346F8, &type metadata accessor for AirQualityInlineContentView);
  v42 = v57;
  sub_1000EA4A4();
  sub_10000EBC4(v42, v37, &qword_1001346D8, &qword_1000F71D8);
  swift_storeEnumTagMultiPayload();
  sub_1000A6D28();
  sub_1000A6E2C();
  sub_1000EA4A4();
  sub_100008E48(v42, &qword_1001346D8, &qword_1000F71D8);
  return (*(v40 + 8))(v39, v41);
}

unint64_t sub_1000A6D28()
{
  result = qword_100134700;
  if (!qword_100134700)
  {
    sub_100002ABC(&qword_1001346F0, &qword_1000F71F0);
    sub_1000A6DE4(&qword_100134708, &type metadata accessor for AirQualityCircularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134700);
  }

  return result;
}

uint64_t sub_1000A6DE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A6E2C()
{
  result = qword_100134710;
  if (!qword_100134710)
  {
    sub_100002ABC(&qword_1001346D8, &qword_1000F71D8);
    sub_1000A6DE4(&qword_1001346F8, &type metadata accessor for AirQualityInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134710);
  }

  return result;
}

unint64_t sub_1000A6EEC()
{
  result = qword_100134718;
  if (!qword_100134718)
  {
    sub_100002ABC(&qword_100134720, &qword_1000F71F8);
    sub_1000A6F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134718);
  }

  return result;
}

unint64_t sub_1000A6F70()
{
  result = qword_100134728;
  if (!qword_100134728)
  {
    sub_100002ABC(&qword_100134730, &unk_1000F7200);
    sub_1000A6D28();
    sub_1000A6E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134728);
  }

  return result;
}

uint64_t sub_1000A6FFC()
{
  v0 = sub_1000E9CE4();
  v1 = sub_1000090D4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100006A10();
  v8 = v7 - v6;
  sub_100002A10(&qword_1001347A8, &qword_1000F72C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000F7210;
  v10 = sub_1000E9BD4();
  v11 = [objc_allocWithZone(v10) init];
  *(v9 + 56) = v10;
  *(v9 + 64) = &protocol witness table for FrameworkAssembly;
  *(v9 + 32) = v11;
  v12 = sub_1000E9944();
  sub_1000A8350(v12);
  v13 = sub_1000E9934();
  *(v9 + 96) = v12;
  *(v9 + 104) = sub_1000A82D0(&qword_1001347B0, &type metadata accessor for Assembly);
  *(v9 + 72) = v13;
  v14 = sub_1000E9DC4();
  sub_1000A8350(v14);
  v15 = sub_1000E9DB4();
  *(v9 + 136) = v14;
  *(v9 + 144) = sub_1000A82D0(&qword_1001347B8, &type metadata accessor for Assembly);
  *(v9 + 112) = v15;
  sub_100002A10(&qword_1001347C0, &qword_1000F72C8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000EFAD0;
  v17 = type metadata accessor for WeatherWidgetAssembly();
  v18 = swift_allocObject();
  *(v16 + 56) = v17;
  *(v16 + 64) = sub_1000A82D0(&qword_1001347C8, type metadata accessor for WeatherWidgetAssembly);
  *(v16 + 32) = v18;
  v19 = sub_1000E9B74();
  sub_1000A8350(v19);
  sub_1000E9B64();
  (*(v3 + 104))(v8, enum case for Container.Environment.normal(_:), v0);
  v20 = sub_1000E9D14();
  sub_1000A8350(v20);
  result = sub_1000E9CF4();
  qword_100145C38 = result;
  return result;
}

id sub_1000A72A4()
{
  v0 = objc_opt_self();

  return [v0 setSuppressEngagement:1];
}

uint64_t sub_1000A72E0@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v109 = sub_100002A10(&qword_100134740, &qword_1000F7278);
  v1 = sub_1000090D4(v109);
  v112 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_10000D45C();
  v108 = v5;
  sub_10004B6F4();
  __chkstk_darwin(v6);
  v97 = &v90 - v7;
  v107 = sub_100002A10(&qword_100134748, &qword_1000F7280);
  v8 = sub_1000090D4(v107);
  v111 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_10000D45C();
  v106 = v12;
  sub_10004B6F4();
  __chkstk_darwin(v13);
  v95 = &v90 - v14;
  v96 = sub_100002A10(&qword_100134750, &qword_1000F7288);
  v15 = sub_1000090D4(v96);
  v110 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_10000D45C();
  v102 = v19;
  sub_10004B6F4();
  __chkstk_darwin(v20);
  v100 = &v90 - v21;
  v94 = sub_100002A10(&qword_100134758, &qword_1000F7290);
  v22 = sub_1000090D4(v94);
  v105 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_10000D45C();
  v101 = v26;
  sub_10004B6F4();
  __chkstk_darwin(v27);
  v29 = &v90 - v28;
  v30 = sub_100002A10(&qword_100134760, &qword_1000F7298);
  v31 = sub_1000090D4(v30);
  v103 = v32;
  v104 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  sub_10000D45C();
  v99 = v35;
  sub_10004B6F4();
  __chkstk_darwin(v36);
  v38 = &v90 - v37;
  v39 = sub_1000E93C4();
  v40 = sub_1000090D4(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  __chkstk_darwin(v40);
  sub_100006A10();
  v45 = *(v42 + 104);
  v46 = sub_1000A832C();
  v45(v46);
  v93 = sub_1000E93B4();
  v92 = v47;
  v48 = *(v42 + 8);
  v49 = sub_1000A8344();
  v48(v49);
  v50 = sub_1000A832C();
  v45(v50);
  v51 = sub_1000E93B4();
  v53 = v52;
  v54 = sub_1000A8344();
  v48(v54);
  v114 = v51;
  v115 = v53;
  sub_1000A816C();
  v91 = v38;
  sub_1000EA424();

  v55 = sub_1000A832C();
  v45(v55);
  v56 = sub_1000E93B4();
  v58 = v57;
  v59 = sub_1000A8344();
  v48(v59);
  v114 = v56;
  v115 = v58;
  sub_1000A81C0();
  v90 = v29;
  sub_1000EA424();

  v60 = sub_1000A832C();
  v45(v60);
  v61 = sub_1000E93B4();
  v63 = v62;
  v64 = sub_1000A8344();
  v48(v64);
  v114 = v61;
  v115 = v63;
  sub_1000A8214();
  v65 = v100;
  sub_1000EA424();

  v66 = v95;
  sub_1000A7A3C();
  v67 = v97;
  sub_1000A7D0C();
  v113[0] = v93;
  v113[1] = v92;
  v114 = v113;
  v68 = v99;
  (*(v103 + 16))(v99, v38, v104);
  v115 = v68;
  v69 = v101;
  v70 = v94;
  (*(v105 + 16))(v101, v29, v94);
  v116 = v69;
  v71 = v110;
  v72 = v102;
  v73 = v96;
  (*(v110 + 16))(v102, v65, v96);
  v117 = v72;
  v74 = v111;
  v75 = v106;
  v76 = v107;
  (*(v111 + 16))(v106, v66, v107);
  v118 = v75;
  v77 = v112;
  v78 = v108;
  v79 = v67;
  v80 = v67;
  v81 = v109;
  (*(v112 + 16))(v108, v79, v109);
  v119 = v78;
  sub_1000A7E68(&v114);
  v82 = *(v77 + 8);
  v112 = v77 + 8;
  v82(v80, v81);
  v83 = *(v74 + 8);
  v111 = v74 + 8;
  v83(v66, v76);
  v84 = *(v71 + 8);
  v110 = v71 + 8;
  v85 = v73;
  v84(v100, v73);
  v86 = *(v105 + 8);
  v86(v90, v70);
  v87 = v104;
  v88 = *(v103 + 8);
  v88(v91, v104);
  v82(v108, v109);
  v83(v106, v107);
  v84(v102, v85);
  v86(v101, v70);
  v88(v99, v87);
}

uint64_t sub_1000A7A3C()
{
  v0 = sub_1000E93C4();
  v1 = sub_1000090D4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100006A10();
  v8 = v7 - v6;
  v9 = *(v3 + 104);
  v10 = sub_1000A8338();
  v9(v10);
  v11 = sub_1000E93B4();
  v13 = v12;
  v14 = *(v3 + 8);
  v14(v8, v0);
  v30[0] = v11;
  v30[1] = v13;
  v31[0] = v30;
  v15 = sub_1000A8338();
  v9(v15);
  sub_1000E93B4();
  v16 = sub_1000A8318();
  (v14)(v16);
  v29[0] = v11;
  v29[1] = v13;
  v31[1] = v29;
  v17 = sub_1000A8338();
  v9(v17);
  sub_1000E93B4();
  v18 = sub_1000A8318();
  (v14)(v18);
  v28[0] = v11;
  v28[1] = v13;
  v27[0] = 0xD000000000000026;
  v27[1] = 0x80000001000FE640;
  v31[2] = v28;
  v31[3] = v27;
  v26[0] = 0xD000000000000028;
  v26[1] = 0x80000001000FE670;
  v25[0] = 0xD000000000000029;
  v25[1] = 0x80000001000FE170;
  v31[4] = v26;
  v31[5] = v25;
  v19 = sub_1000A8338();
  v9(v19);
  sub_1000E93B4();
  v20 = sub_1000A8318();
  (v14)(v20);
  v24[0] = v11;
  v24[1] = v13;
  v23[0] = 0xD000000000000023;
  v23[1] = 0x80000001000FC710;
  v31[6] = v24;
  v31[7] = v23;
  v22[0] = 0xD000000000000022;
  v22[1] = 0x80000001000FE6A0;
  v31[8] = v22;
  sub_1000A7D58(v31);
}

uint64_t sub_1000A7D0C()
{
  sub_100002A10(&qword_100134788, &qword_1000F72A8);

  return sub_1000E9FA4();
}

uint64_t sub_1000A7D58(uint64_t **a1)
{
  v1 = a1[1];
  v10 = **a1;
  v11 = (*a1)[1];
  v12 = *v1;
  v13 = v1[1];
  v2 = a1[2];
  v3 = a1[3];
  v14 = *v2;
  v15 = v2[1];
  v16 = *v3;
  v17 = v3[1];
  v4 = a1[4];
  v5 = a1[5];
  v18 = *v4;
  v19 = v4[1];
  v20 = *v5;
  v21 = v5[1];
  v6 = a1[6];
  v7 = a1[7];
  v22 = *v6;
  v23 = v6[1];
  v24 = *v7;
  v25 = v7[1];
  v8 = a1[8];
  v26 = *v8;
  v27 = v8[1];

  sub_100002A10(&qword_100134790, &qword_1000F72B0);
  return sub_1000E9FA4();
}

uint64_t sub_1000A7E68(void *a1)
{
  v2 = sub_100002A10(&qword_100134780, &qword_1000F72A0);
  v3 = *(*(v2 - 1) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = a1[1];
  v8 = *(*a1 + 8);
  *v6 = **a1;
  *(v6 + 1) = v8;
  v9 = *(v4 + 48);
  v10 = sub_100002A10(&qword_100134760, &qword_1000F7298);
  (*(*(v10 - 8) + 16))(&v6[v9], v7, v10);
  v11 = v2[16];
  v12 = a1[2];
  v13 = sub_100002A10(&qword_100134758, &qword_1000F7290);
  (*(*(v13 - 8) + 16))(&v6[v11], v12, v13);
  v14 = v2[20];
  v15 = a1[3];
  v16 = sub_100002A10(&qword_100134750, &qword_1000F7288);
  (*(*(v16 - 8) + 16))(&v6[v14], v15, v16);
  v17 = v2[24];
  v18 = a1[4];
  v19 = sub_100002A10(&qword_100134748, &qword_1000F7280);
  (*(*(v19 - 8) + 16))(&v6[v17], v18, v19);
  v20 = v2[28];
  v21 = a1[5];
  v22 = sub_100002A10(&qword_100134740, &qword_1000F7278);
  (*(*(v22 - 8) + 16))(&v6[v20], v21, v22);

  return sub_1000E9FA4();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000A80EC();
  sub_1000E9FB4();
  return 0;
}

unint64_t sub_1000A80EC()
{
  result = qword_100134738;
  if (!qword_100134738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134738);
  }

  return result;
}

unint64_t sub_1000A816C()
{
  result = qword_100134768;
  if (!qword_100134768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134768);
  }

  return result;
}

unint64_t sub_1000A81C0()
{
  result = qword_100134770;
  if (!qword_100134770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134770);
  }

  return result;
}

unint64_t sub_1000A8214()
{
  result = qword_100134778;
  if (!qword_100134778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134778);
  }

  return result;
}

unint64_t sub_1000A826C()
{
  result = qword_100134798;
  if (!qword_100134798)
  {
    sub_100002ABC(&qword_1001347A0, &qword_1000F72B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134798);
  }

  return result;
}

uint64_t sub_1000A82D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A8350(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t getEnumTagSinglePayload for WeatherDataNeeds(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for WeatherDataNeeds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000A84BCLL);
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

unint64_t sub_1000A84F8()
{
  result = qword_1001347D0;
  if (!qword_1001347D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001347D0);
  }

  return result;
}

void *sub_1000A854C(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v5 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23 - v7;
  v28 = type metadata accessor for ForecastEntry(0);
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v28);
  v26 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v25 = &v23 - v13;
  v14 = 0;
  v15 = *(a3 + 16);
  v27 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v15 == v14)
    {
      return v27;
    }

    v29(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14);
    if (v3)
    {
      break;
    }

    if (sub_100005B30(v8, 1, v28) == 1)
    {
      sub_100008E48(v8, &qword_10012F040, &unk_1000EEED0);
      ++v14;
    }

    else
    {
      v24 = type metadata accessor for ForecastEntry;
      sub_1000ACAE0();
      sub_1000ACAE0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = v27[2];
        sub_1000312F4();
        v27 = v19;
      }

      v16 = v27[2];
      v17 = (v16 + 1);
      if (v16 >= v27[3] >> 1)
      {
        v23 = v27[2];
        v24 = (v16 + 1);
        sub_1000312F4();
        v17 = v24;
        v27 = v20;
      }

      ++v14;
      v27[2] = v17;
      sub_1000ACAE0();
    }
  }

  v21 = v27;

  return v21;
}

void sub_1000A87FC()
{
  v0 = sub_1000E8524();
  sub_10004B338(v0, qword_100145C40);
  v1 = sub_100008CB8(v0, qword_100145C40);
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 URLsForDirectory:9 inDomains:1];

  v4 = sub_1000EBFF4();
  if (*(v4 + 16))
  {
    (*(*(v0 - 8) + 16))(v1, v4 + ((*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80)), v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A8908@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v94 = a2;
  v96 = 0;
  v2 = sub_1000EBD14();
  v3 = sub_100009210(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100006A10();
  v93 = v7 - v6;
  v92 = type metadata accessor for ForecastEntry(0);
  v8 = sub_1000090D4(v92);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000D45C();
  v105 = v13;
  sub_10004B6F4();
  __chkstk_darwin(v14);
  v16 = &v91 - v15;
  v17 = sub_100002A10(&qword_100134878, &qword_1000F7378);
  v18 = sub_1000069E4(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v98 = (&v91 - v21);
  v22 = sub_100002A10(&qword_100134880, &qword_1000F7380);
  v23 = sub_100009210(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_10000D45C();
  v99 = v26;
  sub_10004B6F4();
  __chkstk_darwin(v27);
  v29 = (&v91 - v28);
  v30 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v31 = sub_100009210(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v91 - v34;
  v36 = sub_1000E9A84();
  v37 = sub_1000090D4(v36);
  i = v38;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37);
  sub_100006A10();
  v43 = v42 - v41;
  v103 = sub_1000E8604();
  v44 = sub_1000090D4(v103);
  v97 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_10000D45C();
  v102 = v48;
  sub_10004B6F4();
  __chkstk_darwin(v49);
  v51 = &v91 - v50;
  sub_1000E85F4();
  v95 = sub_1000A90D8();
  v52 = v51;
  v53 = sub_1000A9174();
  sub_10008F2B0();
  v54 = sub_100005B30(v35, 1, v36);
  v104 = v51;
  if (v54 == 1)
  {
    v100 = v53;
    sub_100008E48(v35, &qword_100130440, &qword_1000F0BE0);
    v55 = v95;
  }

  else
  {
    v56 = (*(i + 32))(v43, v35, v36);
    __chkstk_darwin(v56);
    v91 = v43;
    *(&v91 - 2) = v43;
    *(&v91 - 1) = v51;
    v57 = v96;
    v58 = sub_1000A854C(sub_1000AC86C, (&v91 - 4), v53);
    v59 = v58[2];
    v96 = v57;
    if (v59)
    {

      v100 = v58;
    }

    else
    {
      v100 = v53;
    }

    v55 = v95;
    (*(i + 8))(v91, v36);
    v52 = v104;
  }

  v60 = 0;
  v61 = v99;
  v62 = v100[2];
  v63 = (v97 + 40);
  v64 = &_swiftEmptyArrayStorage;
  for (i = v62; ; v62 = i)
  {
    if (v60 == v62)
    {
      v65 = 1;
      v60 = v62;
    }

    else
    {
      if ((v60 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v60 >= v100[2])
      {
        goto LABEL_25;
      }

      v66 = *(v10 + 80);
      sub_10003279C();
      v67 = *(v10 + 72);
      v68 = *(v17 + 48);
      *v98 = v60;
      sub_1000ACDEC();
      sub_1000ACA30();
      v61 = v99;
      sub_10008DA20();
      v65 = 0;
      ++v60;
    }

    sub_1000028A0(v61, v65, 1, v17);
    sub_10008DA20();
    if (sub_100005B30(v29, 1, v17) == 1)
    {
      break;
    }

    v69 = *(v17 + 48);
    v70 = *v29;
    sub_1000ACE18();
    sub_1000ACAE0();
    v71 = v102;
    sub_1000E8554();
    (*v63)(v16, v71, v103);
    sub_1000ACDEC();
    sub_1000ACA30();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = v64[2];
      sub_1000312F4();
      v64 = v76;
    }

    v55 = v64[2];
    if (v55 >= v64[3] >> 1)
    {
      sub_1000312F4();
      v64 = v77;
    }

    v64[2] = v55 + 1;
    v72 = *(v10 + 80);
    sub_10003279C();
    v74 = v64 + v73 + *(v10 + 72) * v55;
    sub_1000ACAE0();
    sub_1000ACA88(v16, type metadata accessor for ForecastEntry);
    v52 = v104;
  }

  v55 = v52;

  if (qword_10012EB10 == -1)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_1000ACE04();
  swift_once();
LABEL_20:
  v78 = sub_1000E9F64();
  sub_100008CB8(v78, qword_100145B98);
  v79 = sub_1000E9F44();
  v80 = sub_1000EC1B4();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v106 = v82;
    *v81 = 136315138;

    v83 = sub_1000EC004();
    v85 = v84;

    v86 = sub_1000E2E18(v83, v85, &v106);

    *(v81 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v79, v80, "Returning entries:%s", v81, 0xCu);
    sub_100009068(v82);
    v87 = v104;
    sub_100009194();
    sub_100009194();
  }

  else
  {

    v87 = v55;
  }

  sub_1000EBCF4();
  sub_1000ACE48();
  sub_1000ACDA4(v88, v89);
  sub_1000EBDA4();
  (*(v97 + 8))(v87, v103);
}

id sub_1000A90D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  objc_allocWithZone(NSUserDefaults);

  v3 = sub_100019AC0();
  result = sub_1000AC808(v3, v4);
  if (result)
  {
    v6 = result;
    v7 = sub_1000EBE64();
    v8 = [v6 integerForKey:v7];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000A9174()
{
  v0 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v97 = &v89 - v2;
  v3 = type metadata accessor for ForecastEntry(0);
  v92 = *(v3 - 8);
  v4 = *(v92 + 64);
  v5 = __chkstk_darwin(v3);
  v93 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v89 - v7;
  v104 = sub_1000EBED4();
  v106 = *(v104 - 8);
  v8 = v106[8];
  __chkstk_darwin(v104);
  v103 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E8524();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v107 = &v89 - v17;
  v18 = __chkstk_darwin(v16);
  v112 = &v89 - v19;
  __chkstk_darwin(v18);
  v21 = &v89 - v20;
  if (qword_10012EB48 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    sub_100008CB8(v10, qword_100145C40);
    sub_1000E84F4();
    v22 = [objc_opt_self() defaultManager];
    sub_1000E84E4(v23);
    v25 = v24;
    v113 = 0;
    v26 = [v22 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:0 options:0 error:&v113];

    v27 = v113;
    if (!v26)
    {
      break;
    }

    v28 = sub_1000EBFF4();
    v29 = v27;

    if (qword_10012EB10 != -1)
    {
      swift_once();
    }

    v30 = sub_1000E9F64();
    v31 = sub_100008CB8(v30, qword_100145B98);

    v109 = v31;
    v32 = sub_1000E9F44();
    v33 = sub_1000EC1B4();

    v34 = os_log_type_enabled(v32, v33);
    v110 = v10;
    v105 = v11;
    v90 = v21;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v113 = v36;
      *v35 = 136315138;
      v37 = sub_1000EC004();
      v39 = sub_1000E2E18(v37, v38, &v113);
      v11 = v105;

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Found Content:%s", v35, 0xCu);
      sub_100009068(v36);
      v10 = v110;
    }

    v41 = v107;
    v101 = *(v28 + 16);
    if (!v101)
    {

      v81 = *(v11 + 8);
      v98 = &_swiftEmptyArrayStorage;
      v81(v90, v10);
      return v98;
    }

    v91 = v15;
    v94 = v3;
    v3 = 0;
    v15 = 0;
    v42 = *(v11 + 80);
    v102 = v28;
    v100 = v28 + ((v42 + 32) & ~v42);
    v108 = v11 + 16;
    v111 = (v11 + 8);
    v99 = v106 + 1;
    v98 = &_swiftEmptyArrayStorage;
    *&v40 = 136315138;
    v95 = v40;
    v43 = v97;
    while (1)
    {
      v21 = v102;
      if (v3 >= *(v102 + 2))
      {
        break;
      }

      v44 = *(v11 + 16);
      v45 = v112;
      (v44)(v112, v100 + *(v11 + 72) * v3, v10);
      v106 = v44;
      (v44)(v41, v45, v10);
      v46 = sub_1000E9F44();
      v47 = sub_1000EC1B4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v41;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v113 = v50;
        *v49 = v95;
        sub_1000ACDA4(&qword_1001348A0, &type metadata accessor for URL);
        v51 = sub_1000EC5B4();
        v53 = v52;
        v54 = v48;
        v55 = *v111;
        (*v111)(v54, v110);
        v56 = sub_1000E2E18(v51, v53, &v113);
        v10 = v110;

        *(v49 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v46, v47, "Found URL:%s", v49, 0xCu);
        sub_100009068(v50);
        v11 = v105;
        v43 = v97;
      }

      else
      {

        v55 = *v111;
        (*v111)(v41, v10);
      }

      sub_1000E8504();
      sub_1000EBE34();

      v57 = v103;
      sub_1000EBEC4();
      v58 = sub_1000EBE94();
      v60 = v59;

      (*v99)(v57, v104);
      if (v60 >> 60 == 15)
      {
        v55(v112, v10);
      }

      else
      {
        v61 = sub_1000E8284();
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        swift_allocObject();
        sub_1000E8274();
        sub_1000ACDA4(&qword_100134898, type metadata accessor for ForecastEntry);
        v64 = v94;
        sub_1000E8264();

        sub_1000028A0(v43, 0, 1, v64);
        sub_1000ACAE0();
        v65 = v91;
        (v106)(v91, v112, v10);
        v66 = sub_1000E9F44();
        v67 = sub_1000EC1B4();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v89 = v68;
          v106 = swift_slowAlloc();
          v113 = v106;
          *v68 = v95;
          sub_1000ACDA4(&qword_1001348A0, &type metadata accessor for URL);
          v69 = sub_1000EC5B4();
          v71 = v70;
          v55(v65, v110);
          v72 = sub_1000E2E18(v69, v71, &v113);
          v10 = v110;

          v73 = v89;
          *(v89 + 1) = v72;
          _os_log_impl(&_mh_execute_header, v66, v67, "Succeeded decoding:%s", v73, 0xCu);
          sub_100009068(v106);
        }

        else
        {

          v55(v65, v10);
        }

        v11 = v105;
        sub_1000ACA30();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = v98[2];
          sub_1000312F4();
          v98 = v78;
        }

        v74 = v98[2];
        if (v74 >= v98[3] >> 1)
        {
          sub_1000312F4();
          v98 = v79;
        }

        sub_1000ACD38(v58, v60);
        sub_1000ACA88(v96, type metadata accessor for ForecastEntry);
        v55(v112, v10);
        v75 = v98;
        v98[2] = v74 + 1;
        v76 = v75 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v74;
        sub_1000ACAE0();
        v43 = v97;
      }

      ++v3;
      v41 = v107;
      if (v101 == v3)
      {

        v55(v90, v10);
        return v98;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  v80 = v113;
  sub_1000E8494();

  swift_willThrow();
  (*(v11 + 8))(v21, v10);
  if (qword_10012EB10 != -1)
  {
    swift_once();
  }

  v82 = sub_1000E9F64();
  sub_100008CB8(v82, qword_100145B98);
  swift_errorRetain();
  v83 = sub_1000E9F44();
  v84 = sub_1000EC194();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 138543362;
    swift_errorRetain();
    v87 = _swift_stdlib_bridgeErrorToNSError();
    *(v85 + 4) = v87;
    *v86 = v87;
    _os_log_impl(&_mh_execute_header, v83, v84, "WidgetDemo failed to decode entries. error=%{public}@", v85, 0xCu);
    sub_100008E48(v86, &qword_1001325D0, &unk_1000F3D80);
  }

  else
  {
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000A9EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v47 = a2;
  v49 = a4;
  v5 = type metadata accessor for WeatherDataViewModel();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E95E4();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v15 = type metadata accessor for ForecastEntry.Model(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v17 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v42 - v19;
  v21 = type metadata accessor for AggregateWeatherViewModel(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ForecastEntry(0);
  v25 = *(v48 + 28);
  v44 = a1;
  sub_1000ACA30();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000ACAE0();
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  sub_1000028A0(v20, v26, 1, v5);
  if (sub_100005B30(v20, 1, v5) == 1)
  {
    sub_100008E48(v20, &qword_10012F038, &qword_1000F0F90);
LABEL_12:
    v40 = 1;
    v36 = v48;
    v35 = v49;
    return sub_1000028A0(v35, v40, 1, v36);
  }

  if (swift_getEnumCaseMultiPayload())
  {
    v27 = type metadata accessor for WeatherDataViewModel;
    v28 = v20;
LABEL_11:
    sub_1000ACA88(v28, v27);
    goto LABEL_12;
  }

  sub_1000ACAE0();
  v29 = &v24[*(v21 + 20)];
  sub_1000E99B4();
  sub_1000E95F4();
  sub_1000E99B4();
  sub_1000E95F4();
  v30 = sub_1000E95C4();
  v31 = v46;
  v32 = *(v45 + 8);
  v32(v12, v46);
  v32(v14, v31);
  if ((v30 & 1) == 0)
  {
    v27 = type metadata accessor for AggregateWeatherViewModel;
    v28 = v24;
    goto LABEL_11;
  }

  v33 = v44;
  sub_1000E8544();
  sub_1000AA3CC(v43);
  sub_1000ACA88(v24, type metadata accessor for AggregateWeatherViewModel);
  swift_storeEnumTagMultiPayload();
  v34 = sub_1000E8604();
  v35 = v49;
  (*(*(v34 - 8) + 16))(v49, v33, v34);
  v36 = v48;
  v37 = *(v48 + 20);
  sub_10008F2B0();
  v38 = *(v36 + 24);
  sub_1000ACA30();
  v39 = *(v36 + 28);
  sub_1000ACAE0();
  swift_storeEnumTagMultiPayload();
  v40 = 0;
  return sub_1000028A0(v35, v40, 1, v36);
}

uint64_t sub_1000AA3CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v3 = type metadata accessor for EventViewModel(0);
  v96 = *(v3 - 8);
  v4 = *(v96 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v119 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v107 = &v95 - v7;
  v8 = sub_1000EB214();
  v9 = *(v8 - 8);
  v120 = v8;
  v121 = v9;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v118 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v95 - v13;
  v14 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v112 = &v95 - v16;
  v17 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v111 = &v95 - v19;
  v20 = sub_1000EB814();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v117 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v95 = &v95 - v25;
  v26 = sub_1000EB674();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000E9A84();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000E8634();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v99 = v39;
  v40 = *(v39 + 16);
  v98 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v41;
  v40();
  v42 = type metadata accessor for AggregateWeatherViewModel(0);
  v43 = v42[5];
  v102 = v32;
  v44 = *(v32 + 16);
  v101 = v35;
  v103 = v31;
  v44(v35, v2 + v43, v31);
  v45 = v42[6];
  v105 = v27;
  v46 = *(v27 + 16);
  v104 = v30;
  v106 = v26;
  v46(v30, v2 + v45, v26);
  v47 = *(v2 + v42[7]);
  v48 = *(v47 + 16);
  v109 = v42;
  v110 = v2;
  if (v48)
  {
    v122 = &_swiftEmptyArrayStorage;
    sub_1000AC8D0(0, v48, 0);
    v49 = v21;
    v50 = v122;
    v51 = *(v49 + 16);
    v49 += 16;
    v115 = ((*(v49 + 64) + 32) & ~*(v49 + 64));
    v116 = v51;
    v52 = &v115[v47];
    v53 = *(v49 + 56);
    v113 = (v49 - 8);
    v114 = v53;
    v54 = (v49 + 16);
    v55 = v49;
    v56 = v95;
    do
    {
      v57 = v117;
      v58 = v55;
      v116(v117, v52, v20);
      sub_1000AB894(v56);
      (*v113)(v57, v20);
      v122 = v50;
      v60 = v50[2];
      v59 = v50[3];
      if (v60 >= v59 >> 1)
      {
        sub_1000AC8D0(v59 > 1, v60 + 1, 1);
        v50 = v122;
      }

      v50[2] = v60 + 1;
      v61 = v114;
      (*v54)(&v115[v50 + v60 * v114], v56, v20);
      v52 += v61;
      --v48;
      v55 = v58;
    }

    while (v48);
    v115 = v50;
    v42 = v109;
    v2 = v110;
  }

  else
  {
    v115 = &_swiftEmptyArrayStorage;
  }

  v62 = *(v2 + v42[8]);
  v63 = *(v62 + 16);
  v64 = &_swiftEmptyArrayStorage;
  v65 = v97;
  if (v63)
  {
    v122 = &_swiftEmptyArrayStorage;
    sub_1000AC928(0, v63, 0);
    v64 = v122;
    v66 = *(v121 + 16);
    v116 = ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v117 = v66;
    v67 = v116 + v62;
    v68 = *(v121 + 72);
    v69 = (v121 + 8);
    v121 += 16;
    v70 = (v121 + 16);
    v71 = v120;
    do
    {
      v72 = v118;
      (v117)(v118, v67, v71);
      sub_1000ABBB0(v65);
      v71 = v120;
      (*v69)(v72, v120);
      v122 = v64;
      v74 = v64[2];
      v73 = v64[3];
      if (v74 >= v73 >> 1)
      {
        sub_1000AC928(v73 > 1, v74 + 1, 1);
        v71 = v120;
        v64 = v122;
      }

      v64[2] = v74 + 1;
      (*v70)(v116 + v64 + v74 * v68, v65, v71);
      v67 += v68;
      --v63;
    }

    while (v63);
    v42 = v109;
    v2 = v110;
  }

  v75 = v42[9];
  sub_10008F2B0();
  v76 = v42[10];
  sub_10008F2B0();
  v77 = *(v2 + v42[11]);
  v78 = *(v77 + 16);
  v79 = &_swiftEmptyArrayStorage;
  v80 = v107;
  if (v78)
  {
    v122 = &_swiftEmptyArrayStorage;
    sub_1000AC9D8(0, v78, 0);
    v79 = v122;
    v81 = v77 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v82 = *(v96 + 72);
    do
    {
      v83 = v119;
      sub_1000ACA30();
      sub_1000AC028(v80);
      sub_1000ACA88(v83, type metadata accessor for EventViewModel);
      v122 = v79;
      v85 = v79[2];
      v84 = v79[3];
      if (v85 >= v84 >> 1)
      {
        sub_1000AC9D8(v84 > 1, v85 + 1, 1);
        v79 = v122;
      }

      v79[2] = v85 + 1;
      sub_1000ACAE0();
      v81 += v82;
      --v78;
    }

    while (v78);
    v42 = v109;
    v2 = v110;
  }

  v86 = v42[13];
  v87 = v2 + v42[12];
  v122 = *v87;
  v123 = *(v87 + 8);
  v88 = v108;
  sub_10008F2B0();
  v89 = v42[14];
  v90 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  sub_1000028A0(v88 + v89, 1, 1, v90);
  (*(v99 + 32))(v88, v98, v100);
  (*(v102 + 32))(v88 + v42[5], v101, v103);
  (*(v105 + 32))(v88 + v42[6], v104, v106);
  *(v88 + v42[7]) = v115;
  *(v88 + v42[8]) = v64;
  v91 = v42[9];
  sub_10008DA20();
  v92 = v42[10];
  result = sub_10008DA20();
  *(v88 + v42[11]) = v79;
  v94 = v88 + v42[12];
  *v94 = v122;
  *(v94 + 8) = v123;
  return result;
}

uint64_t sub_1000AADB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v121 = a3;
  v122 = a2;
  v114 = a1;
  v109 = sub_1000EBED4();
  v3 = sub_1000090D4(v109);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v110 = &v99 - v11;
  v12 = sub_1000E8524();
  v13 = sub_1000090D4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10000D45C();
  v102 = v18;
  sub_10004B6F4();
  __chkstk_darwin(v19);
  v106 = &v99 - v20;
  sub_10004B6F4();
  __chkstk_darwin(v21);
  v23 = &v99 - v22;
  v120 = type metadata accessor for ForecastEntry(0);
  v24 = sub_1000090D4(v120);
  v113 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_100006A10();
  v30 = v29 - v28;
  v31 = sub_100002A10(&qword_100134878, &qword_1000F7378);
  v32 = sub_1000069E4(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v112 = &v99 - v35;
  v36 = sub_100002A10(&qword_100134880, &qword_1000F7380);
  v37 = sub_100009210(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  sub_10000D45C();
  v123 = v40;
  sub_10004B6F4();
  __chkstk_darwin(v41);
  v43 = &v99 - v42;
  result = sub_1000AB700();
  if ((result & 1) == 0)
  {
    return result;
  }

  v46 = v43;
  v119 = v10;
  v47 = 0;
  v126 = 0;
  v48 = *(v114 + 16);
  v108 = v5 + 8;
  v115 = (v15 + 8);
  v105 = (v15 + 16);
  *&v45 = 136446210;
  v101 = v45;
  *&v45 = 138543362;
  v111 = v45;
  v49 = v123;
  v124 = v43;
  v117 = v31;
  v118 = v30;
  v116 = v48;
  v100 = v23;
  while (1)
  {
    if (v47 == v48)
    {
      v50 = 1;
      v125 = v48;
      goto LABEL_8;
    }

    if (v47 >= v48)
    {
      break;
    }

    v51 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_28;
    }

    v52 = v112;
    v53 = *(v113 + 80);
    sub_10003279C();
    v55 = *(v54 + 72);
    v56 = *(v31 + 48);
    *v52 = v57;
    sub_1000ACDEC();
    sub_1000ACA30();
    v46 = v124;
    sub_10008DA20();
    v50 = 0;
    v125 = v51;
LABEL_8:
    sub_1000028A0(v49, v50, 1, v31);
    sub_10008DA20();
    result = sub_100005B30(v46, 1, v31);
    if (result == 1)
    {
      return result;
    }

    v58 = *v46;
    v59 = *(v31 + 48);
    sub_1000ACE18();
    sub_1000ACAE0();
    if (qword_10012EB48 != -1)
    {
      swift_once();
    }

    v60 = v12;
    sub_100008CB8(v12, qword_100145C40);
    v128 = v122;
    v129 = v121;

    v130._countAndFlagsBits = 95;
    v130._object = 0xE100000000000000;
    sub_1000EBF44(v130);
    v127 = v58;
    v131._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v131);

    v132._countAndFlagsBits = 0x6E6F736A2ELL;
    v132._object = 0xE500000000000000;
    sub_1000EBF44(v132);
    sub_1000E84F4();

    v61 = sub_1000E82B4();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    sub_1000E82A4();
    sub_1000ACE48();
    sub_1000ACDA4(&qword_1001348B8, v64);
    v65 = v126;
    v66 = sub_1000E8294();
    if (v65)
    {

      v126 = 0;
      if (qword_10012EB10 != -1)
      {
        sub_1000ACE04();
        swift_once();
      }

      v71 = sub_1000E9F64();
      sub_100008CB8(v71, qword_100145B98);
      swift_errorRetain();
      v72 = sub_1000E9F44();
      v73 = sub_1000EC194();

      v74 = os_log_type_enabled(v72, v73);
      v31 = v117;
      v75 = v118;
      if (v74)
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = v111;
        swift_errorRetain();
        v78 = _swift_stdlib_bridgeErrorToNSError();
        *(v76 + 4) = v78;
        *v77 = v78;
        _os_log_impl(&_mh_execute_header, v72, v73, "Failed writing entry to disk. error=%{public}@", v76, 0xCu);
        sub_100008E48(v77, &qword_1001325D0, &unk_1000F3D80);
        sub_100009194();
        sub_100009194();
      }

      (*v115)(v23, v12);
      sub_1000ACE30();
      result = sub_1000ACA88(v75, v79);
    }

    else
    {
      v68 = v66;
      v69 = v67;
      sub_1000EBEC4();
      result = sub_1000EBEA4();
      if (!v70)
      {
        goto LABEL_29;
      }

      v128 = result;
      v129 = v70;
      sub_1000EBEC4();
      sub_100005898();
      sub_1000EC3A4();
      v107 = v69;
      v126 = 0;
      v80 = sub_1000ACE78();
      v81(v80);

      if (qword_10012EB10 != -1)
      {
        sub_1000ACE04();
        swift_once();
      }

      v82 = sub_1000E9F64();
      sub_100008CB8(v82, qword_100145B98);
      v83 = *v105;
      v84 = v106;
      v85 = v12;
      (*v105)(v106, v23, v12);
      v86 = sub_1000E9F44();
      v87 = sub_1000EC1B4();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = v84;
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v128 = v90;
        *v89 = v101;
        v104 = v86;
        v103 = v87;
        v83(v102, v88, v85);
        v91 = sub_1000EBEF4();
        v93 = v92;
        v94 = *v115;
        (*v115)(v88, v85);
        v95 = sub_1000E2E18(v91, v93, &v128);

        *(v89 + 4) = v95;
        v96 = v104;
        _os_log_impl(&_mh_execute_header, v104, v103, "Demo entries to disk: %{public}s.", v89, 0xCu);
        sub_100009068(v90);
        sub_100009194();
        sub_100009194();
        sub_1000ACD4C(v68, v107);

        v23 = v100;
        v94(v100, v85);
      }

      else
      {
        sub_1000ACD4C(v68, v107);

        v97 = *v115;
        (*v115)(v84, v60);
        v97(v23, v60);
      }

      sub_1000ACE30();
      result = sub_1000ACA88(v118, v98);
      v12 = v85;
      v31 = v117;
    }

    v49 = v123;
    v46 = v124;
    v48 = v116;
    v47 = v125;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_1000AB700()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  objc_allocWithZone(NSUserDefaults);

  v3 = sub_100019AC0();
  result = sub_1000AC808(v3, v4);
  if (result)
  {
    v6 = result;
    v7 = sub_1000EBE64();
    v8 = [v6 BOOLForKey:v7];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AB79C()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

id sub_1000AB7F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  objc_allocWithZone(NSUserDefaults);

  v3 = sub_100019AC0();
  result = sub_1000AC808(v3, v4);
  if (result)
  {
    v6 = result;
    v7 = sub_1000EBE64();
    v8 = [v6 BOOLForKey:v7];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AB894@<X0>(uint64_t a1@<X8>)
{
  v23[7] = a1;
  v1 = sub_1000E9134();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v23[6] = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000E8E24();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v23[5] = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EAFC4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v23[4] = v23 - v11;
  v12 = sub_1000E8604();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_1000E8634();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_1000EB7C4();
  sub_1000EB7E4();
  sub_1000E8554();
  (*(v13 + 8))(v17, v12);
  sub_1000EB764();
  v20 = sub_1000EB754();
  v23[2] = v21;
  v23[3] = v20;
  v23[1] = sub_1000EB7A4();
  sub_1000EB804();
  sub_1000EB784();
  sub_1000EB794();
  sub_1000EB774();
  sub_1000EB7F4();
  return sub_1000EB7D4();
}

uint64_t sub_1000ABBB0@<X0>(uint64_t a1@<X8>)
{
  v39[15] = a1;
  v1 = sub_1000E9184();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v39[14] = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002A10(&qword_10012F138, &qword_1000EEF48);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v39[13] = v39 - v6;
  v7 = sub_100002A10(&qword_100134890, &qword_1000F7388);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v39[12] = v39 - v9;
  v10 = sub_1000E9894();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v39[11] = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000E8E24();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v39[5] = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EAFC4();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v39[6] = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v39[7] = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v39[8] = v39 - v23;
  v24 = sub_1000E8604();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v39[10] = v39 - v30;
  v31 = sub_1000E8634();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v39[9] = v39 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB174();
  sub_1000EB1A4();
  sub_1000E8554();
  (*(v25 + 8))(v29, v24);
  sub_1000EB1B4();
  sub_1000EB194();
  sub_1000EB1E4();
  sub_1000EB0F4();
  sub_1000EB114();
  v34 = sub_1000EB154();
  v39[3] = v35;
  v39[4] = v34;
  v36 = sub_1000EB124();
  v39[1] = v37;
  v39[2] = v36;
  sub_1000EB1F4();
  sub_1000EB104();
  sub_1000EB134();
  sub_1000EB204();
  sub_1000EB0E4();
  sub_1000EB1C4();
  sub_1000EB1D4();
  return sub_1000EB184();
}

uint64_t sub_1000AC028@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002A10(&qword_10012F6F8, &qword_1000EFCB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v69 = &v59 - v8;
  v9 = sub_1000E8604();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v71 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v70 = &v59 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v59 - v21;
  __chkstk_darwin(v20);
  v24 = &v59 - v23;
  v25 = *v2;
  v64 = v2[1];
  v65 = v25;
  v26 = type metadata accessor for EventViewModel(0);
  v27 = v26[6];
  sub_10008F2B0();
  if (sub_100005B30(v22, 1, v9) == 1)
  {
    sub_100008E48(v22, &qword_10012F048, &qword_1000EEF30);
    v28 = 1;
  }

  else
  {
    sub_1000E8554();
    (*(v10 + 8))(v22, v9);
    v28 = 0;
  }

  v67 = v24;
  sub_1000028A0(v24, v28, 1, v9);
  v29 = v26[7];
  sub_10008F2B0();
  v30 = sub_100005B30(v17, 1, v9);
  v31 = v70;
  v32 = v66;
  v68 = v10;
  if (v30 == 1)
  {
    sub_100008E48(v17, &qword_10012F048, &qword_1000EEF30);
    v33 = 1;
  }

  else
  {
    sub_1000E8554();
    (*(v10 + 8))(v17, v9);
    v33 = 0;
  }

  sub_1000028A0(v31, v33, 1, v9);
  v34 = &v2[v26[8]];
  sub_1000E8554();
  v35 = &v2[v26[9]];
  v36 = *v35;
  v37 = *(v35 + 1);
  v38 = &v2[v26[10]];
  v39 = *v38;
  v40 = *(v38 + 1);
  v61 = v36;
  v62 = v39;
  v41 = v26[12];
  v42 = &v2[v26[11]];
  v43 = *(v42 + 1);
  v60 = *v42;
  v44 = *&v2[v41];
  v45 = v26[13];
  sub_10008F2B0();
  v46 = sub_1000E8F24();
  LODWORD(v34) = sub_100005B30(v32, 1, v46);

  v63 = v40;

  if (v34 == 1)
  {
    sub_100008E48(v32, &qword_10012F6F8, &qword_1000EFCB0);
    v47 = 1;
    v48 = v69;
  }

  else
  {
    v48 = v69;
    sub_1000AC568();
    (*(*(v46 - 8) + 8))(v32, v46);
    v47 = 0;
  }

  sub_1000028A0(v48, v47, 1, v46);
  v49 = v64;
  *a1 = v65;
  a1[1] = v49;
  v50 = v26[6];
  sub_10008DA20();
  v51 = v26[7];
  sub_10008DA20();
  (*(v68 + 32))(&a1[v26[8]], v71, v9);
  v52 = &a1[v26[9]];
  v53 = v62;
  *v52 = v61;
  v52[1] = v37;
  v54 = &a1[v26[10]];
  v55 = v63;
  *v54 = v53;
  v54[1] = v55;
  v56 = &a1[v26[11]];
  *v56 = v60;
  v56[1] = v43;
  *&a1[v26[12]] = v44;
  v57 = v26[13];
  return sub_10008DA20();
}

uint64_t sub_1000AC568()
{
  v0 = sub_1000E8ED4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v19 - v11;
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_1000E8EE4();
  v15 = sub_1000E8604();
  if (sub_100005B30(v12, 1, v15) == 1)
  {
    sub_100008E48(v12, &qword_10012F048, &qword_1000EEF30);
    v16 = 1;
  }

  else
  {
    sub_1000E8554();
    (*(*(v15 - 8) + 8))(v12, v15);
    v16 = 0;
  }

  sub_1000028A0(v14, v16, 1, v15);
  sub_1000E8F14();
  if (sub_100005B30(v6, 1, v15) == 1)
  {
    sub_100008E48(v6, &qword_10012F048, &qword_1000EEF30);
    v17 = 1;
  }

  else
  {
    sub_1000E8554();
    (*(*(v15 - 8) + 8))(v6, v15);
    v17 = 0;
  }

  sub_1000028A0(v9, v17, 1, v15);
  sub_1000E8F04();
  return sub_1000E8EF4();
}

id sub_1000AC808(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1000EBE64();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

size_t sub_1000AC888()
{
  v1 = *v0;
  sub_1000ACE60();
  result = sub_1000ACB74(v2, v3, v4, v5, v6, v7, v8, sub_1000316B4);
  *v0 = result;
  return result;
}

size_t sub_1000AC8D0(size_t a1, int64_t a2, char a3)
{
  result = sub_1000ACB74(a1, a2, a3, *v3, &qword_1001304F8, &qword_1000F0C58, &type metadata accessor for HourlyForecastBannerViewModel, sub_100031788);
  *v3 = result;
  return result;
}

size_t sub_1000AC928(size_t a1, int64_t a2, char a3)
{
  result = sub_1000ACB74(a1, a2, a3, *v3, &qword_100130508, &qword_1000F0C68, &type metadata accessor for DailyForecastViewModel, sub_1000317A0);
  *v3 = result;
  return result;
}

size_t sub_1000AC980(size_t a1, int64_t a2, char a3)
{
  result = sub_1000ACB74(a1, a2, a3, *v3, &qword_1001348B0, &qword_1000F7398, &type metadata accessor for HourWeather, sub_1000317B8);
  *v3 = result;
  return result;
}

size_t sub_1000AC9D8(size_t a1, int64_t a2, char a3)
{
  result = sub_1000ACB74(a1, a2, a3, *v3, &qword_1001304F0, &qword_1000F0C50, type metadata accessor for EventViewModel, sub_1000316CC);
  *v3 = result;
  return result;
}

uint64_t sub_1000ACA30()
{
  sub_100026C9C();
  v2 = v1(0);
  sub_1000069E4(v2);
  v4 = *(v3 + 16);
  v5 = sub_100019AC0();
  v6(v5);
  return v0;
}

uint64_t sub_1000ACA88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000ACAE0()
{
  sub_100026C9C();
  v2 = v1(0);
  sub_1000069E4(v2);
  v4 = *(v3 + 32);
  v5 = sub_100019AC0();
  v6(v5);
  return v0;
}

size_t sub_1000ACB74(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002A10(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(*(a7(0) - 8) + 80);
  sub_10003279C();
  if (v11)
  {
    a8(a4 + v22, v14, v19 + v22);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1000ACD38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000ACD4C(a1, a2);
  }

  return a1;
}

uint64_t sub_1000ACD4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000ACDA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000ACE78()
{
  v2 = **(v1 - 280);
  result = v0;
  v4 = *(v1 - 272);
  return result;
}

uint64_t sub_1000ACEB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_12:

    return sub_100005B30(v10, a2, v9);
  }

  v11 = sub_100002A10(&qword_100130570, &qword_1000F0D48);
  v12 = sub_100006A04(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_11:
    v10 = a1 + v14;
    goto LABEL_12;
  }

  v15 = sub_100002A10(&qword_10012FE50, &qword_1000F0720);
  v16 = sub_100006A04(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[7];
    goto LABEL_11;
  }

  v18 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
  v19 = sub_100006A04(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[8];
    goto LABEL_11;
  }

  v21 = type metadata accessor for ForecastEntry(0);
  v22 = sub_100006A04(v21);
  if (*(v23 + 84) == a2)
  {
    v9 = v22;
    v14 = a3[9];
    goto LABEL_11;
  }

  v25 = *(a1 + a3[10]);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  return (v25 + 1);
}

uint64_t sub_1000AD0A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  v9 = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_100002A10(&qword_100130570, &qword_1000F0D48);
    v14 = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      v18 = sub_100006A04(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v20 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        v21 = sub_100006A04(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[8];
        }

        else
        {
          v23 = type metadata accessor for ForecastEntry(0);
          result = sub_100006A04(v23);
          if (*(v25 + 84) != a3)
          {
            *(a1 + a4[10]) = (a2 - 1);
            return result;
          }

          v11 = result;
          v16 = a4[9];
        }
      }
    }

    v12 = a1 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

uint64_t type metadata accessor for DailyForecastContentView()
{
  result = qword_100134918;
  if (!qword_100134918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AD2CC()
{
  sub_1000609B0(319, &qword_10012F1B0, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_1000609B0(319, &qword_1001305E0, &type metadata accessor for ContentSizeCategory);
    if (v1 <= 0x3F)
    {
      sub_100005F48();
      if (v2 <= 0x3F)
      {
        sub_1000609B0(319, &unk_10012FEC0, &type metadata accessor for Font.Context);
        if (v3 <= 0x3F)
        {
          sub_1000609B0(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ForecastEntry(319);
            if (v5 <= 0x3F)
            {
              sub_1000335DC();
              if (v6 <= 0x3F)
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

void sub_1000AD45C()
{
  sub_100006A58();
  v2 = sub_1000405C8();
  v3 = sub_1000090D4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100040480();
  v8 = sub_1000637E4();
  sub_1000069E4(v8);
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  sub_100019AE8();
  sub_10008F2B0();
  if (sub_1000637FC() == 1)
  {
    v12 = sub_1000EBC44();
    sub_1000069E4(v12);
    v14 = *(v13 + 32);
    v15 = sub_1000637D8();
    v16(v15);
  }

  else
  {
    v17 = *v1;
    sub_1000EC1A4();
    v18 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v5 + 8))(v0, v2);
  }

  sub_100006A20();
}

void sub_1000AD5F8()
{
  sub_100006A58();
  v1 = sub_1000405C8();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100040480();
  v5 = sub_1000637E4();
  sub_1000069E4(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  v9 = *(type metadata accessor for DailyForecastContentView() + 20);
  sub_1000B25E8();
  if (sub_1000637FC() == 1)
  {
    v10 = sub_1000EA3B4();
    sub_1000069E4(v10);
    v12 = *(v11 + 32);
    v13 = sub_1000637D8();
  }

  else
  {
    v15 = *v0;
    sub_1000EC1A4();
    v16 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v13 = sub_100040568();
  }

  v14(v13);
  sub_100006A20();
}

uint64_t sub_1000AD768()
{
  v1 = sub_1000EA2C4();
  v2 = sub_1000090D4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0 + *(type metadata accessor for DailyForecastContentView() + 24);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    sub_1000EC1A4();
    v11 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v10, 0);
    (*(v4 + 8))(v8, v1);
    LOBYTE(v10) = v13[15];
  }

  return v10 & 1;
}

void sub_1000AD8B4()
{
  sub_100006A58();
  v1 = sub_1000405C8();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100040480();
  v5 = sub_1000637E4();
  sub_1000069E4(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  v9 = *(type metadata accessor for DailyForecastContentView() + 28);
  sub_1000B25E8();
  if (sub_1000637FC() == 1)
  {
    v10 = sub_1000EA694();
    sub_1000069E4(v10);
    v12 = *(v11 + 32);
    v13 = sub_1000637D8();
  }

  else
  {
    v15 = *v0;
    sub_1000EC1A4();
    v16 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v13 = sub_100040568();
  }

  v14(v13);
  sub_100006A20();
}

void sub_1000ADA24()
{
  sub_100006A58();
  v1 = sub_1000405C8();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100040480();
  v5 = sub_1000637E4();
  sub_1000069E4(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  v9 = *(type metadata accessor for DailyForecastContentView() + 32);
  sub_1000B25E8();
  if (sub_1000637FC() == 1)
  {
    v10 = sub_1000EBC34();
    sub_1000069E4(v10);
    v12 = *(v11 + 32);
    v13 = sub_1000637D8();
  }

  else
  {
    v15 = *v0;
    sub_1000EC1A4();
    v16 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v13 = sub_100040568();
  }

  v14(v13);
  sub_100006A20();
}

uint64_t sub_1000ADB94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000EA3B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EBC44();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForecastEntry.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v34 - v15;
  v17 = type metadata accessor for AggregateWeatherViewModel(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DailyForecastContentView();
  v22 = v1 + *(v21 + 36);
  v23 = *(type metadata accessor for ForecastEntry(0) + 28);
  sub_1000B22C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B2318();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(v16, v24, 1, v25);
  if (sub_100005B30(v16, 1, v25) == 1)
  {
    sub_100006850(v16, &qword_10012F038, &qword_1000F0F90);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000B2318();
      sub_1000AD45C();
      sub_1000AD5F8();
      v29 = *(v1 + *(v21 + 44));
      v30 = sub_1000AD768();
      v31 = type metadata accessor for HourlyBannerViewAttributesFactory();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      sub_1000C60CC(v10, v6, v29, v30 & 1);
      sub_1000C5AFC(v20);

      sub_1000B2370(v20, type metadata accessor for AggregateWeatherViewModel);
      v26 = 0;
      goto LABEL_9;
    }

    sub_1000B2370(v16, type metadata accessor for WeatherDataViewModel);
  }

  v26 = 1;
LABEL_9:
  v27 = sub_1000EB464();
  return sub_1000028A0(a1, v26, 1, v27);
}

uint64_t sub_1000ADF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v3 = sub_1000EA3B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000EBC44();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for ForecastEntry.Model(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for AggregateWeatherViewModel(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DailyForecastContentView();
  v18 = v2 + *(v17 + 36);
  v19 = type metadata accessor for ForecastEntry(0);
  v20 = *(v19 + 28);
  sub_1000B22C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B2318();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(v12, v21, 1, v22);
  if (sub_100005B30(v12, 1, v22) == 1)
  {
    sub_100006850(v12, &qword_10012F038, &qword_1000F0F90);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000B2318();
      sub_1000AD45C();
      sub_1000AD5F8();
      v27 = *(v2 + *(v17 + 44));
      sub_1000AD768();
      v28 = type metadata accessor for DailyViewAttributesFactory();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      sub_1000CFCC4();
      v31 = v18 + *(v19 + 24);
      v24 = v33;
      sub_1000CDE74(v16, v32, v31, 1uLL, v33);

      sub_1000B2370(v16, type metadata accessor for AggregateWeatherViewModel);
      v23 = 0;
      goto LABEL_9;
    }

    sub_1000B2370(v12, type metadata accessor for WeatherDataViewModel);
  }

  v23 = 1;
  v24 = v33;
LABEL_9:
  v25 = type metadata accessor for DailyViewAttributes();
  return sub_1000028A0(v24, v23, 1, v25);
}

uint64_t sub_1000AE298@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_1000EA3B4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EBC44();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ForecastEntry.Model(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for AggregateWeatherViewModel(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DailyForecastContentView();
  v20 = v1 + *(v19 + 36);
  v21 = type metadata accessor for ForecastEntry(0);
  v22 = *(v21 + 28);
  sub_1000B22C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B2318();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(v14, v23, 1, v24);
  if (sub_100005B30(v14, 1, v24) == 1)
  {
    sub_100006850(v14, &qword_10012F038, &qword_1000F0F90);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000B2318();
      sub_1000AD45C();
      v29 = v36;
      sub_1000AD5F8();
      v30 = *(v1 + *(v19 + 44));
      v31 = sub_1000AD768();
      v32 = type metadata accessor for CurrentObservationViewAttributesFactory();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      sub_10007469C(v8, v29, v30, v31 & 1);
      v35 = v20 + *(v21 + 24);
      v26 = v37;
      sub_100073028(v18, v35, &v18[*(v15 + 20)], *v35, *(v35 + 8), *(v35 + 50), *(v35 + 51), *(v35 + 52), v37, 1u, 1, 1u);

      sub_1000B2370(v18, type metadata accessor for AggregateWeatherViewModel);
      v25 = 0;
      goto LABEL_9;
    }

    sub_1000B2370(v14, type metadata accessor for WeatherDataViewModel);
  }

  v25 = 1;
  v26 = v37;
LABEL_9:
  v27 = sub_1000EBA54();
  return sub_1000028A0(v26, v25, 1, v27);
}

void *sub_1000AE664@<X0>(void *a1@<X8>)
{
  v3 = sub_1000EA694();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000EA3B4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &__src[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000EBC44();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &__src[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1000AE868(v1);
  sub_1000AD45C();
  sub_1000AD5F8();
  v17 = *(v1 + *(type metadata accessor for DailyForecastContentView() + 44));
  v18 = sub_1000AD768();
  v19 = type metadata accessor for ErrorViewAttributesFactory();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_10007653C(v15, v11, v17, v18 & 1);
  sub_1000AD8B4();
  sub_10007628C(v16, __src);

  (*(v4 + 8))(v7, v3);
  return memcpy(a1, __src, 0x50uLL);
}

uint64_t sub_1000AE868(uint64_t a1)
{
  v2 = type metadata accessor for ForecastEntry.Model(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for DailyForecastContentView() + 36);
  v7 = *(type metadata accessor for ForecastEntry(0) + 28);
  sub_1000B22C0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v5;
  }

  sub_1000B2370(v5, type metadata accessor for ForecastEntry.Model);
  return 3;
}

double sub_1000AE958@<D0>(char *a1@<X8>)
{
  memcpy(a1, v1, 0x50uLL);
  v3 = *(type metadata accessor for ErrorView() + 20);
  *&a1[v3] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  sub_1000B2548(v1, &v7);
  v4 = sub_1000EA564();
  v5 = &a1[*(sub_100002A10(&qword_100130AA8, &qword_1000F12E0) + 36)];
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  v5[40] = 1;
  return result;
}

uint64_t sub_1000AEA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v47 = sub_100002A10(&qword_100134A38, &unk_1000F7660);
  v5 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v7 = &v42 - v6;
  v48 = sub_100002A10(&qword_1001308C8, &unk_1000F0FD0);
  v8 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v45 = (&v42 - v9);
  v10 = sub_100002A10(&qword_1001308D0, &qword_1000F7540);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for DailyViewAttributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v43 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v42 - v19;
  v21 = sub_1000EBA54();
  v46 = *(v21 - 8);
  v22 = *(v46 + 64);
  __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v42 - v27;
  v44 = a1;
  sub_1000E9FD4();
  sub_1000ADB94(v28);
  v29 = sub_1000EB464();
  if (sub_100005B30(v28, 1, v29) == 1)
  {
    v30 = &qword_100130890;
    v31 = &qword_1000F7610;
    v32 = v28;
LABEL_5:
    sub_100006850(v32, v30, v31);
    goto LABEL_6;
  }

  v33 = sub_1000EB454();
  (*(*(v29 - 8) + 8))(v28, v29);
  v34 = *(v33 + 16);

  sub_1000AE298(v20);
  if (sub_100005B30(v20, 1, v21) == 1)
  {
    v30 = &qword_100130838;
    v31 = &qword_1000F0F58;
    v32 = v20;
    goto LABEL_5;
  }

  v36 = v46;
  (*(v46 + 32))(v24, v20, v21);
  sub_1000ADF08(v34, v13);
  if (sub_100005B30(v13, 1, v14) != 1)
  {
    v37 = v43;
    sub_1000B2318();
    v38 = sub_1000EA2E4();
    v39 = v36;
    v40 = v45;
    *v45 = v38;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0;
    v41 = sub_100002A10(&qword_1001308E0, &qword_1000F0FE0);
    sub_1000AF010(v24, v37, a2, v40 + *(v41 + 44));
    sub_10008F2B0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_1001308D8, &qword_1001308C8, &unk_1000F0FD0);
    sub_1000B226C();
    sub_1000EA4A4();
    sub_100006850(v40, &qword_1001308C8, &unk_1000F0FD0);
    sub_1000B2370(v37, type metadata accessor for DailyViewAttributes);
    return (*(v39 + 8))(v24, v21);
  }

  sub_100006850(v13, &qword_1001308D0, &qword_1000F7540);
  (*(v36 + 8))(v24, v21);
LABEL_6:
  sub_1000AE664(__src);
  memcpy(v7, __src, 0x50uLL);
  swift_storeEnumTagMultiPayload();
  sub_100006988(&qword_1001308D8, &qword_1001308C8, &unk_1000F0FD0);
  sub_1000B226C();
  return sub_1000EA4A4();
}

uint64_t sub_1000AF010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v51 = a3;
  v50 = a2;
  v53 = a4;
  v5 = sub_100002A10(&qword_1001308E8, &qword_1000F0FE8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5);
  v52 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  v12 = sub_1000EBA54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002A10(&qword_1001308F0, &qword_1000F0FF0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v44 - v23;
  (*(v13 + 16))(v16, a1, v12);
  sub_1000EB0C4();
  sub_1000E9FD4();
  sub_1000E9FD4();
  sub_1000EABD4();
  sub_1000E9FC4();
  v25 = &v24[*(v18 + 44)];
  v45 = v24;
  v26 = v57;
  *v25 = v56;
  *(v25 + 1) = v26;
  *(v25 + 2) = v58;
  sub_1000EABC4();
  sub_1000E9FC4();
  v49 = v59;
  v48 = v61;
  v47 = v63;
  v46 = v64;
  v69 = 1;
  v68 = v60;
  v67 = v62;
  sub_1000B22C0();
  v27 = (v51 + *(type metadata accessor for DailyForecastContentView() + 40));
  v29 = *v27;
  v28 = v27[1];
  v54 = v29;
  v55 = v28;
  sub_100002A10(&qword_100130688, &qword_1000F0DF8);
  sub_1000EAAB4();
  v30 = *v65;
  v31 = type metadata accessor for DailyView(0);
  v32 = *&v65[8];
  v33 = &v11[*(v31 + 20)];
  *v33 = v30;
  *(v33 + 8) = v32;
  sub_1000E9FD4();
  sub_1000E9FD4();
  sub_1000EABD4();
  sub_1000E9FC4();
  v34 = &v11[*(v6 + 44)];
  v35 = *&v65[16];
  *v34 = *v65;
  *(v34 + 1) = v35;
  *(v34 + 2) = v66;
  v44 = v22;
  sub_10008F2B0();
  LOBYTE(v12) = v69;
  v36 = v68;
  LOBYTE(v16) = v67;
  v37 = v52;
  sub_10008F2B0();
  v38 = v53;
  sub_10008F2B0();
  v39 = sub_100002A10(&qword_1001308F8, &qword_1000F0FF8);
  v40 = v38 + *(v39 + 48);
  *v40 = 0;
  *(v40 + 8) = v12;
  *(v40 + 16) = v49;
  *(v40 + 24) = v36;
  *(v40 + 32) = v48;
  *(v40 + 40) = v16;
  v41 = v46;
  *(v40 + 48) = v47;
  *(v40 + 56) = v41;
  v42 = *(v39 + 64);
  sub_10008F2B0();
  sub_100006850(v11, &qword_1001308E8, &qword_1000F0FE8);
  sub_100006850(v45, &qword_1001308F0, &qword_1000F0FF0);
  sub_100006850(v37, &qword_1001308E8, &qword_1000F0FE8);
  return sub_100006850(v44, &qword_1001308F0, &qword_1000F0FF0);
}

uint64_t sub_1000AF514@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a2;
  v43 = sub_100002A10(&qword_1001349D0, &qword_1000F75F8);
  v3 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v5 = &v40 - v4;
  v44 = sub_100002A10(&qword_1001349D8, &unk_1000F7600);
  v6 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v41 = (&v40 - v7);
  v8 = sub_100002A10(&qword_1001308D0, &qword_1000F7540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for DailyViewAttributes();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v40 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v40 - v17;
  v19 = sub_1000EBA54();
  v42 = *(v19 - 8);
  v20 = *(v42 + 64);
  __chkstk_darwin(v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v40 - v25;
  sub_1000E9FD4();
  sub_1000ADB94(v26);
  v27 = sub_1000EB464();
  if (sub_100005B30(v26, 1, v27) == 1)
  {
    v28 = &qword_100130890;
    v29 = &qword_1000F7610;
    v30 = v26;
LABEL_5:
    sub_100006850(v30, v28, v29);
    goto LABEL_6;
  }

  v31 = sub_1000EB454();
  (*(*(v27 - 8) + 8))(v26, v27);
  v32 = *(v31 + 16);

  sub_1000AE298(v18);
  if (sub_100005B30(v18, 1, v19) == 1)
  {
    v28 = &qword_100130838;
    v29 = &qword_1000F0F58;
    v30 = v18;
    goto LABEL_5;
  }

  v34 = v42;
  (*(v42 + 32))(v22, v18, v19);
  sub_1000ADF08(v32, v11);
  if (sub_100005B30(v11, 1, v12) != 1)
  {
    v35 = v34;
    v36 = v40;
    sub_1000B2318();
    v37 = sub_1000EA3C4();
    v38 = v41;
    *v41 = v37;
    *(v38 + 8) = 0;
    *(v38 + 16) = 1;
    v39 = sub_100002A10(&qword_1001349F0, &qword_1000F7618);
    sub_1000AFABC(v22, a1, v36, v38 + *(v39 + 44));
    sub_10008F2B0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_1001349E0, &qword_1001349D8, &unk_1000F7600);
    sub_1000B226C();
    sub_1000EA4A4();
    sub_100006850(v38, &qword_1001349D8, &unk_1000F7600);
    sub_1000B2370(v36, type metadata accessor for DailyViewAttributes);
    return (*(v35 + 8))(v22, v19);
  }

  sub_100006850(v11, &qword_1001308D0, &qword_1000F7540);
  (*(v34 + 8))(v22, v19);
LABEL_6:
  sub_1000AE664(__src);
  memcpy(v5, __src, 0x50uLL);
  swift_storeEnumTagMultiPayload();
  sub_100006988(&qword_1001349E0, &qword_1001349D8, &unk_1000F7600);
  sub_1000B226C();
  return sub_1000EA4A4();
}

uint64_t sub_1000AFABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v60 = a2;
  v67 = a4;
  v6 = type metadata accessor for DailyView(0);
  v7 = *(v6 - 8);
  v65 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v54 - v11;
  v62 = sub_1000E9A84();
  v61 = *(v62 - 8);
  v12 = *(v61 + 64);
  __chkstk_darwin(v62);
  v59 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1000EA4E4();
  v56 = *(v57 - 8);
  v14 = *(v56 + 64);
  __chkstk_darwin(v57);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002A10(&qword_1001349F8, &qword_1000F7620);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v54 - v19;
  v21 = sub_100002A10(&qword_100134A00, &qword_1000F7628);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v54 - v24;
  v58 = sub_100002A10(&qword_100134A08, &qword_1000F7630);
  v26 = *(*(v58 - 8) + 64);
  v27 = __chkstk_darwin(v58);
  v55 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v68 = &v54 - v29;
  *v20 = sub_1000EA3C4();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v30 = sub_100002A10(&qword_100134A10, &qword_1000F7638);
  sub_1000B0240(a1, a2, &v20[*(v30 + 44)]);
  sub_1000EA4C4();
  v31 = sub_100006988(&qword_100134A18, &qword_1001349F8, &qword_1000F7620);
  sub_1000EA914();
  (*(v56 + 8))(v16, v57);
  sub_100006850(v20, &qword_1001349F8, &qword_1000F7620);
  v76 = v17;
  v77 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v55;
  sub_1000EA934();
  (*(v22 + 8))(v25, v21);
  sub_100002A10(&qword_100130558, &qword_1000F0D00);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000EFAD0;
  v34 = v59;
  sub_1000EBA34();
  v35 = sub_1000E9A44();
  v37 = v36;
  (*(v61 + 8))(v34, v62);
  *(v33 + 32) = v35;
  *(v33 + 40) = v37;
  sub_100005898();
  sub_1000EA074();

  sub_100006850(v32, &qword_100134A08, &qword_1000F7630);
  v38 = [objc_opt_self() mainScreen];
  [v38 bounds];

  sub_1000EABC4();
  sub_1000E9FC4();
  v62 = v76;
  v61 = v78;
  v59 = v80;
  v58 = v81;
  v75 = 1;
  v74 = v77;
  v73 = v79;
  v39 = v63;
  sub_1000B22C0();
  v40 = (v60 + *(type metadata accessor for DailyForecastContentView() + 40));
  v42 = *v40;
  v41 = v40[1];
  v71 = v42;
  v72 = v41;
  sub_100002A10(&qword_100130688, &qword_1000F0DF8);
  sub_1000EAAB4();
  v43 = v70;
  v44 = &v39[*(v65 + 28)];
  *v44 = v69;
  *(v44 + 8) = v43;
  sub_10008F2B0();
  LOBYTE(v35) = v75;
  v45 = v74;
  LOBYTE(a1) = v73;
  v46 = v39;
  v47 = v66;
  sub_1000B22C0();
  v48 = v67;
  sub_10008F2B0();
  v49 = sub_100002A10(&qword_100134A20, &qword_1000F7640);
  v50 = v48 + *(v49 + 48);
  *v50 = 0;
  *(v50 + 8) = v35;
  *(v50 + 16) = v62;
  *(v50 + 24) = v45;
  *(v50 + 32) = v61;
  *(v50 + 40) = a1;
  v51 = v58;
  *(v50 + 48) = v59;
  *(v50 + 56) = v51;
  v52 = *(v49 + 64);
  sub_1000B22C0();
  sub_1000B2370(v46, type metadata accessor for DailyView);
  sub_100006850(v68, &qword_100134A08, &qword_1000F7630);
  sub_1000B2370(v47, type metadata accessor for DailyView);
  return sub_100006850(v32, &qword_100134A08, &qword_1000F7630);
}

uint64_t sub_1000B0240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = a2;
  v56 = a3;
  v54 = sub_1000EA694();
  v52 = *(v54 - 8);
  v4 = *(v52 + 64);
  __chkstk_darwin(v54);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A10(&qword_100134A28, &qword_1000F7648);
  v8 = *(v7 - 8);
  v51 = v7 - 8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7 - 8);
  v55 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v41 - v12;
  v13 = sub_1000EBA54();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000EAF14();
  v43 = *(v50 - 8);
  v18 = v43;
  v19 = *(v43 + 64);
  v20 = __chkstk_darwin(v50);
  v49 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v41 - v22;
  v24 = *(v14 + 16);
  v24(v17, a1, v13);
  v42 = v23;
  sub_1000EAF04();
  v25 = [objc_opt_self() mainScreen];
  [v25 bounds];

  sub_1000EABC4();
  sub_1000E9FC4();
  v47 = v60;
  v46 = v62;
  v45 = v64;
  v44 = v65;
  v59 = 1;
  v58 = v61;
  v57 = v63;
  v24(v17, a1, v13);
  v26 = v48;
  sub_1000EB004();
  sub_1000EB9E4();
  sub_1000AD8B4();
  sub_1000EA594();

  (*(v52 + 8))(v6, v54);
  sub_1000EABC4();
  sub_1000E9FC4();
  v27 = (v26 + *(v51 + 44));
  v28 = v67;
  *v27 = v66;
  v27[1] = v28;
  v27[2] = v68;
  v29 = *(v18 + 16);
  v30 = v49;
  v31 = v50;
  v29(v49, v23, v50);
  v32 = v59;
  LOBYTE(v23) = v58;
  LODWORD(v54) = v57;
  v33 = v55;
  sub_10008F2B0();
  v34 = v56;
  v29(v56, v30, v31);
  v35 = sub_100002A10(&qword_100134A30, &unk_1000F7650);
  v36 = &v34[*(v35 + 48)];
  *v36 = 0;
  v36[8] = v32;
  *(v36 + 2) = v47;
  v36[24] = v23;
  *(v36 + 4) = v46;
  v36[40] = v54;
  v37 = v44;
  *(v36 + 6) = v45;
  *(v36 + 7) = v37;
  v38 = *(v35 + 64);
  sub_10008F2B0();
  sub_100006850(v26, &qword_100134A28, &qword_1000F7648);
  v39 = *(v43 + 8);
  v39(v42, v31);
  sub_100006850(v33, &qword_100134A28, &qword_1000F7648);
  return (v39)(v30, v31);
}

void sub_1000B07CC()
{
  sub_100006A58();
  v1 = v0;
  v43 = v2;
  v44 = sub_1000EA504();
  v3 = sub_1000090D4(v44);
  v42 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v38 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = sub_100002A10(&qword_100134968, &qword_1000F7538);
  sub_1000090D4(v40);
  v41 = v8;
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  v13 = &v35[-v12];
  v14 = *(*(sub_100002A10(&qword_1001308D0, &qword_1000F7540) - 8) + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  v39 = &v35[-v16];
  sub_1000ADF08(4, &v35[-v16]);
  v17 = sub_1000EABD4();
  v19 = v18;
  sub_1000B0BD0(v1, &v48);
  v20 = *(&v48 + 1);
  v37 = v48;
  v36 = v49;
  *&v48 = v17;
  *(&v48 + 1) = v19;
  v49 = v37;
  v50 = v20;
  LOBYTE(v51) = v36;
  sub_1000EABA4();
  v47 = v1;
  v46 = v1;
  v21 = sub_100019AC0();
  v23 = sub_100002A10(v21, v22);
  v24 = sub_100002A10(&qword_100134978, &qword_1000F7550);
  v25 = sub_100002A10(&qword_100134980, &qword_1000F7558);
  sub_1000404D0();
  v27 = sub_100006988(v26, &qword_100134970, &qword_1000F7548);
  v28 = sub_1000B1924();
  v29 = sub_1000B19DC();
  sub_1000EA954();
  sub_10003F98C();
  v30 = v38;
  sub_1000EA4F4();
  v45 = v1;
  sub_1000EABC4();
  v37 = v31;
  type metadata accessor for BackgroundView(0);
  *&v48 = v23;
  *(&v48 + 1) = &type metadata for Solarium;
  v49 = v24;
  v50 = v25;
  v51 = v27;
  v52 = &protocol witness table for Solarium;
  v53 = v28;
  v54 = v29;
  sub_1000637A0();
  swift_getOpaqueTypeConformance2();
  sub_1000B25D0();
  sub_1000B2584(v32, v33);
  v34 = v40;
  sub_1000EA904();
  (*(v42 + 8))(v30, v44);
  (*(v41 + 8))(v13, v34);
  sub_100006850(v39, &qword_1001308D0, &qword_1000F7540);
  sub_100006A20();
}

double sub_1000B0BD0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v43 = a1;
  v46 = a2;
  v2 = type metadata accessor for DailyForecastContentView();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  __chkstk_darwin(v2 - 8);
  v44 = v4;
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EBC44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_1001349A0, &qword_1000F75D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = sub_100002A10(&qword_1001308D0, &qword_1000F7540);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v40 - v15;
  v17 = sub_100002A10(&qword_1001349A8, &unk_1000F75D8);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v41 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v40 - v22;
  __chkstk_darwin(v21);
  v25 = &v40 - v24;
  sub_10008F2B0();
  v26 = type metadata accessor for DailyViewAttributes();
  if (sub_100005B30(v16, 1, v26) == 1)
  {
    sub_100006850(v16, &qword_1001308D0, &qword_1000F7540);
    v27 = 1;
  }

  else
  {
    (*(v6 + 16))(v25, v16, v5);
    sub_1000B2370(v16, type metadata accessor for DailyViewAttributes);
    v27 = 0;
  }

  sub_1000028A0(v25, v27, 1, v5);
  (*(v6 + 104))(v23, enum case for WidgetFamily.systemSmall(_:), v5);
  sub_1000028A0(v23, 0, 1, v5);
  v28 = *(v9 + 48);
  sub_10008F2B0();
  sub_10008F2B0();
  if (sub_100005B30(v12, 1, v5) == 1)
  {
    sub_100006850(v23, &qword_1001349A8, &unk_1000F75D8);
    sub_100006850(v25, &qword_1001349A8, &unk_1000F75D8);
    if (sub_100005B30(&v12[v28], 1, v5) == 1)
    {
      sub_100006850(v12, &qword_1001349A8, &unk_1000F75D8);
LABEL_12:
      sub_1000B22C0();
      v35 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v36 = swift_allocObject();
      sub_1000B2318();
      v47 = sub_1000B21C0;
      v48 = v36;
      v49 = 0;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v29 = v41;
  sub_10008F2B0();
  if (sub_100005B30(&v12[v28], 1, v5) == 1)
  {
    sub_100006850(v23, &qword_1001349A8, &unk_1000F75D8);
    sub_100006850(v25, &qword_1001349A8, &unk_1000F75D8);
    (*(v6 + 8))(v29, v5);
LABEL_9:
    sub_100006850(v12, &qword_1001349A0, &qword_1000F75D0);
    goto LABEL_10;
  }

  v32 = v40;
  (*(v6 + 32))(v40, &v12[v28], v5);
  sub_1000B2584(&qword_100132A08, &type metadata accessor for WidgetFamily);
  v33 = sub_1000EBE24();
  v34 = *(v6 + 8);
  v34(v32, v5);
  sub_100006850(v23, &qword_1001349A8, &unk_1000F75D8);
  sub_100006850(v25, &qword_1001349A8, &unk_1000F75D8);
  v34(v29, v5);
  sub_100006850(v12, &qword_1001349A8, &unk_1000F75D8);
  if (v33)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1000B22C0();
  v30 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v31 = swift_allocObject();
  sub_1000B2318();
  v47 = sub_1000B1AA8;
  v48 = v31;
  v49 = 1;
LABEL_13:
  sub_100002A10(&qword_1001349B0, &qword_1000F75E8);
  sub_100002A10(&qword_1001349B8, &qword_1000F75F0);
  sub_100006988(&qword_1001349C0, &qword_1001349B0, &qword_1000F75E8);
  sub_100006988(&qword_1001349C8, &qword_1001349B8, &qword_1000F75F0);
  sub_1000EA4A4();
  result = *&v50;
  v38 = v51;
  v39 = v46;
  *v46 = v50;
  *(v39 + 16) = v38;
  return result;
}

void *sub_1000B130C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v5 = sub_1000EBC34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v25 = &v23 - v10;
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v15 = *(a1 + 32);
  if ((sub_1000AD768() & 1) == 0)
  {
    goto LABEL_4;
  }

  v23 = a2 + *(type metadata accessor for DailyForecastContentView() + 36);
  v16 = *(type metadata accessor for ForecastEntry(0) + 24);
  if (*(v23 + v16 + *(type metadata accessor for WidgetContext() + 48) + 8) != 1)
  {
    goto LABEL_4;
  }

  sub_1000ADA24();
  v17 = v24;
  sub_1000EBC14();
  sub_1000B2584(&qword_100130698, &type metadata accessor for WidgetRenderingMode);
  v18 = sub_1000EBE24();
  v19 = *(v6 + 8);
  v19(v17, v5);
  v19(v25, v5);
  if ((v18 & 1) == 0)
  {
    sub_1000EA9A4();
    v21 = v12;
    v22 = sub_1000EA9D4();

    v37 = 0;
    v27 = v21;
    v28 = v11;
    v29 = v14;
    v30 = v13;
    v31 = v15;
    v32 = v22;
    v33 = xmmword_1000F0D30;
    v34 = 0x4000000000000000;
    v35 = 0;
  }

  else
  {
LABEL_4:
    v37 = v15;
    v36 = 1;
    v27 = v12;
    v28 = v11;
    v29 = v14;
    v30 = v13;
    v31 = v15;
    v35 = 1;
  }

  sub_10003F984();
  sub_100002A10(&qword_100134980, &qword_1000F7558);
  sub_100002A10(&qword_100134970, &qword_1000F7548);
  sub_1000B19DC();
  sub_100006988(&qword_100134988, &qword_100134970, &qword_1000F7548);
  sub_1000EA4A4();
  return memcpy(v26, __src, 0x49uLL);
}

uint64_t sub_1000B1658@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v5 = *(a1 + 32);
  if ((sub_1000AD768() & 1) != 0 && (v6 = a2 + *(type metadata accessor for DailyForecastContentView() + 36), v7 = *(type metadata accessor for ForecastEntry(0) + 24), *(v6 + v7 + *(type metadata accessor for WidgetContext() + 48) + 8) == 1))
  {
    sub_1000EA9A4();
    v8 = sub_1000EA9D4();
  }

  else
  {
    v8 = sub_1000EA9B4();
  }

  *a3 = v10;
  *(a3 + 16) = v11;
  *(a3 + 32) = v5;
  *(a3 + 40) = v8;
  *(a3 + 48) = xmmword_1000F0D30;
  *(a3 + 64) = 0x4000000000000000;

  return sub_10003F984();
}

uint64_t sub_1000B174C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ForecastEntry.Model(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = a1 + *(type metadata accessor for DailyForecastContentView() + 36);
  v7 = type metadata accessor for ForecastEntry(0);
  v8 = *(v7 + 24);
  v9 = (v6 + v8 + *(type metadata accessor for WidgetContext() + 48));
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = type metadata accessor for BackgroundView(0);
  v13 = v12[5];
  v14 = *(v7 + 28);
  sub_1000B22C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B2318();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(a2 + v13, v15, 1, v16);
  *a2 = v10;
  *(a2 + 8) = v11;
  v17 = v12[6];
  *(a2 + v17) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v18 = a2 + v12[7];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
}

unint64_t sub_1000B1924()
{
  result = qword_100134990;
  if (!qword_100134990)
  {
    sub_100002ABC(&qword_100134978, &qword_1000F7550);
    sub_1000B19DC();
    sub_100006988(&qword_100134988, &qword_100134970, &qword_1000F7548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134990);
  }

  return result;
}

unint64_t sub_1000B19DC()
{
  result = qword_100134998;
  if (!qword_100134998)
  {
    sub_100002ABC(&qword_100134980, &qword_1000F7558);
    sub_100006988(&qword_100134988, &qword_100134970, &qword_1000F7548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134998);
  }

  return result;
}

uint64_t sub_1000B1AC0()
{
  v1 = type metadata accessor for DailyForecastContentView();
  v83 = *(*(v1 - 1) + 80);
  v82 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((v83 + 16) & ~v83));
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1000EBC44();
    sub_1000069D0(v3);
    (*(v4 + 8))(v2);
  }

  else
  {
    v5 = *v2;
  }

  v6 = v1[5];
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000EA3B4();
    sub_1000069D0(v7);
    (*(v8 + 8))(&v2[v6]);
  }

  else
  {
    v9 = *&v2[v6];
  }

  sub_100006530(*&v2[v1[6]], v2[v1[6] + 8]);
  v10 = v1[7];
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000EA694();
    sub_1000069D0(v11);
    (*(v12 + 8))(&v2[v10]);
  }

  else
  {
    v13 = *&v2[v10];
  }

  v14 = v1[8];
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000EBC34();
    sub_1000069D0(v15);
    (*(v16 + 8))(&v2[v14]);
  }

  else
  {
    v17 = *&v2[v14];
  }

  v18 = &v2[v1[9]];
  v19 = sub_1000E8604();
  sub_1000069E4(v19);
  v81 = *(v20 + 8);
  v81(v18, v19);
  v21 = type metadata accessor for ForecastEntry(0);
  v22 = v21[5];
  v23 = sub_1000EBD64();
  if (!sub_100005B30(&v18[v22], 1, v23))
  {
    sub_1000326A0(v23);
    (*(v24 + 8))(&v18[v22], v23);
  }

  v25 = &v18[v21[6]];
  v26 = *(v25 + 1);

  v27 = *(v25 + 3);

  v28 = *(v25 + 5);

  v29 = type metadata accessor for WidgetContext();
  v30 = *(v29 + 44);
  v31 = sub_1000E8524();
  if (!sub_100005B30(&v25[v30], 1, v31))
  {
    sub_1000326A0(v31);
    (*(v32 + 8))(&v25[v30], v31);
  }

  v33 = *&v25[*(v29 + 48)];

  v34 = &v18[v21[7]];
  type metadata accessor for ForecastEntry.Model(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for WeatherDataViewModel();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v73 = sub_1000EB2B4();
        sub_1000069D0(v73);
        (*(v74 + 8))(v34, v75);
        break;
      case 1:
        v63 = sub_1000E8634();
        sub_1000069D0(v63);
        (*(v64 + 8))(v34);
        v65 = type metadata accessor for InstantWeatherViewModel();
        v66 = *(v65 + 20);
        v67 = sub_1000E9A84();
        sub_1000069D0(v67);
        (*(v68 + 8))(&v34[v66]);
        v69 = *(v65 + 24);
        v70 = sub_1000EB674();
        sub_1000069D0(v70);
        (*(v71 + 8))(&v34[v69], v72);
        break;
      case 0:
        v36 = sub_1000E8634();
        sub_1000069E4(v36);
        v80 = *(v37 + 8);
        v80(v34, v36);
        v38 = type metadata accessor for AggregateWeatherViewModel(0);
        v39 = v38[5];
        v40 = sub_1000E9A84();
        sub_1000069D0(v40);
        (*(v41 + 8))(&v34[v39]);
        v42 = v38[6];
        v43 = sub_1000EB674();
        sub_1000069D0(v43);
        (*(v44 + 8))(&v34[v42]);
        v45 = *&v34[v38[7]];

        v46 = *&v34[v38[8]];

        v47 = &v34[v38[9]];
        v48 = type metadata accessor for AirQualityViewModel();
        if (!sub_100005B30(v47, 1, v48))
        {
          v80(v47, v36);
          v81((v47 + v48[5]), v19);
          v49 = v48[7];
          v50 = sub_1000E8E84();
          sub_1000069D0(v50);
          (*(v51 + 8))(v47 + v49);
          v52 = v48[8];
          v53 = sub_1000E8F64();
          sub_1000069D0(v53);
          (*(v54 + 8))(v47 + v52);
        }

        v55 = v38[10];
        v56 = sub_1000EBAF4();
        if (!sub_100005B30(&v34[v55], 1, v56))
        {
          sub_1000326A0(v56);
          (*(v57 + 8))(&v34[v55], v56);
        }

        v58 = *&v34[v38[11]];

        v59 = v38[13];
        if (!sub_100005B30(&v34[v59], 1, v31))
        {
          sub_1000326A0(v31);
          (*(v60 + 8))(&v34[v59], v31);
        }

        v61 = v38[14];
        v62 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
        if (!sub_100005B30(&v34[v61], 1, v62))
        {
          v81(&v34[v61], v19);
        }

        break;
    }
  }

  v76 = &v2[v1[10]];
  v77 = *v76;

  v78 = *(v76 + 1);

  return _swift_deallocObject(v0, ((v83 + 16) & ~v83) + v82, v83 | 7);
}

uint64_t sub_1000B21D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DailyForecastContentView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1000B226C()
{
  result = qword_1001349E8;
  if (!qword_1001349E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349E8);
  }

  return result;
}

uint64_t sub_1000B22C0()
{
  sub_100026C9C();
  v2 = v1(0);
  sub_1000069E4(v2);
  v4 = *(v3 + 16);
  v5 = sub_100019AC0();
  v6(v5);
  return v0;
}

uint64_t sub_1000B2318()
{
  sub_100026C9C();
  v2 = v1(0);
  sub_1000069E4(v2);
  v4 = *(v3 + 32);
  v5 = sub_100019AC0();
  v6(v5);
  return v0;
}

uint64_t sub_1000B2370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069D0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000B23D4()
{
  sub_100002ABC(&qword_100134968, &qword_1000F7538);
  type metadata accessor for BackgroundView(255);
  sub_100002ABC(&qword_100134970, &qword_1000F7548);
  sub_100002ABC(&qword_100134978, &qword_1000F7550);
  sub_100002ABC(&qword_100134980, &qword_1000F7558);
  sub_1000404D0();
  sub_100006988(v0, &qword_100134970, &qword_1000F7548);
  sub_1000B1924();
  sub_1000B19DC();
  sub_1000637A0();
  swift_getOpaqueTypeConformance2();
  sub_1000B25D0();
  sub_1000B2584(v1, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B2584(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B25E8()
{

  return sub_10008F2B0();
}

uint64_t sub_1000B261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AdaptiveConditionsComplicationDataStatus();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100005B30(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000B26DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AdaptiveConditionsComplicationDataStatus();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000028A0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AdaptiveConditionsInlineContentView()
{
  result = qword_100134A98;
  if (!qword_100134A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B27EC@<X0>(uint64_t a1@<X8>)
{
  v357 = a1;
  v355 = sub_100002A10(&qword_100134AD0, &qword_1000F7858);
  sub_1000069E4(v355);
  v2 = *(v1 + 64);
  sub_100009204();
  __chkstk_darwin(v3);
  sub_10000D58C();
  v356 = v4;
  v5 = sub_100002A10(&qword_100134AD8, &qword_1000F7860);
  sub_1000B50D0(v5, &v371);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_10000D58C();
  sub_10000D4C4(v9);
  v354 = sub_100002A10(&qword_100134AE0, &qword_1000F7868);
  sub_1000069E4(v354);
  v11 = *(v10 + 64);
  sub_100009204();
  __chkstk_darwin(v12);
  sub_10000D58C();
  sub_10000D4A0(v13);
  v14 = type metadata accessor for RainInlineTruncateFallbackText();
  v15 = sub_1000B50D0(v14, &v340);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10004B3F0();
  sub_10000D4C4(v18);
  v19 = sub_100002A10(&qword_100132900, &qword_1000F7870);
  sub_1000B50D0(v19, v365);
  v21 = *(v20 + 64);
  sub_100009204();
  __chkstk_darwin(v22);
  sub_10000D58C();
  sub_10000D4A0(v23);
  v24 = sub_1000EB504();
  v25 = sub_10006BB10(v24, &v366);
  v331 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_10004B3F0();
  sub_10000D4C4(v29);
  v30 = sub_100002A10(&qword_100134AE8, &qword_1000F7878);
  v31 = sub_1000B50D0(v30, &v354);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v304 = v297 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  sub_10000D4C4(v297 - v36);
  v37 = sub_100002A10(&qword_100134AF0, &qword_1000F7880);
  sub_1000B50D0(v37, v363);
  v39 = *(v38 + 64);
  sub_100009204();
  __chkstk_darwin(v40);
  sub_10000D58C();
  sub_10000D4C4(v41);
  v42 = sub_100002A10(&qword_100134AF8, &qword_1000F7888);
  sub_1000B50D0(v42, &v352);
  v44 = *(v43 + 64);
  sub_100009204();
  __chkstk_darwin(v45);
  sub_10000D58C();
  sub_10000D4C4(v46);
  v47 = sub_100002A10(&qword_100134B00, &qword_1000F7890);
  sub_1000B50D0(v47, v364);
  v49 = *(v48 + 64);
  sub_100009204();
  __chkstk_darwin(v50);
  sub_10000D58C();
  sub_10000D4C4(v51);
  v52 = *(*(sub_100002A10(&qword_10012FD68, &unk_1000F5370) - 8) + 64);
  sub_100009204();
  __chkstk_darwin(v53);
  sub_10000D58C();
  sub_10000D4A0(v54);
  v55 = sub_1000E8C34();
  v56 = sub_10006BB10(v55, v347);
  v317 = v57;
  v59 = *(v58 + 64);
  __chkstk_darwin(v56);
  sub_10004B3F0();
  sub_10000D4A0(v60);
  v61 = sub_1000EA4E4();
  v62 = sub_10006BB10(v61, &v375);
  v348 = v63;
  v65 = *(v64 + 64);
  __chkstk_darwin(v62);
  sub_10004B3F0();
  sub_10000D4C4(v66);
  v67 = sub_100002A10(&qword_1001328A0, &qword_1000F4090);
  sub_10006BB10(v67, &v377);
  v350 = v68;
  v70 = *(v69 + 64);
  sub_100009204();
  __chkstk_darwin(v71);
  sub_10000D58C();
  sub_10000D4C4(v72);
  v353 = sub_100002A10(&qword_10012FB88, &qword_1000F0538);
  sub_1000069E4(v353);
  v74 = *(v73 + 64);
  sub_100009204();
  __chkstk_darwin(v75);
  sub_10000D58C();
  sub_10000D4A0(v76);
  v77 = sub_1000EAD74();
  v78 = sub_10006BB10(v77, v362);
  v322 = v79;
  v81 = *(v80 + 64);
  __chkstk_darwin(v78);
  sub_10004B3F0();
  sub_10000D4A0(v82);
  v83 = sub_1000EC1F4();
  v84 = sub_10006BB10(v83, &v339);
  v309 = v85;
  v87 = *(v86 + 64);
  __chkstk_darwin(v84);
  sub_10004B3F0();
  sub_10000D4A0(v88);
  v89 = sub_1000EC224();
  v90 = sub_10006BB10(v89, v360);
  v320 = v91;
  v93 = *(v92 + 64);
  __chkstk_darwin(v90);
  sub_10004B3F0();
  sub_10000D4C4(v94);
  v95 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_10006BB10(v95, v361);
  v321 = v96;
  v98 = *(v97 + 64);
  sub_100009204();
  __chkstk_darwin(v99);
  sub_10000D58C();
  sub_10000D4A0(v100);
  v101 = sub_1000E8444();
  v102 = sub_10006BB10(v101, v337);
  v306 = v103;
  v105 = *(v104 + 64);
  __chkstk_darwin(v102);
  sub_10004B3F0();
  sub_10000D4A0(v106);
  v107 = sub_1000EAFC4();
  v108 = sub_10006BB10(v107, &v357);
  v341 = v109;
  v111 = *(v110 + 64);
  __chkstk_darwin(v108);
  sub_10004B3F0();
  sub_10000D4A0(v112);
  v113 = sub_1000EA344();
  v114 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113 - 8);
  sub_10004B3F0();
  sub_10000D4A0(v115);
  v116 = sub_1000E8684();
  v117 = sub_1000090D4(v116);
  v315 = v118;
  v120 = *(v119 + 64);
  __chkstk_darwin(v117);
  sub_100006A10();
  v123 = v122 - v121;
  v124 = sub_1000E86A4();
  v125 = sub_1000090D4(v124);
  v314 = v126;
  v128 = *(v127 + 64);
  __chkstk_darwin(v125);
  sub_100006A10();
  v131 = v130 - v129;
  v132 = sub_100002A10(&qword_100134B08, &qword_1000F7898);
  sub_1000B50D0(v132, v370);
  v134 = *(v133 + 64);
  sub_100009204();
  __chkstk_darwin(v135);
  v137 = v297 - v136;
  v138 = type metadata accessor for ConditionState();
  v139 = sub_1000B50D0(v138, v359);
  v141 = *(v140 + 64);
  v142 = __chkstk_darwin(v139);
  v144 = (v297 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v142);
  v146 = (v297 - v145);
  v147 = type metadata accessor for AggregateWeatherViewModel(0);
  v148 = sub_1000069E4(v147);
  v150 = *(v149 + 64);
  __chkstk_darwin(v148);
  sub_100006A10();
  v153 = v152 - v151;
  v154 = type metadata accessor for AdaptiveConditionsComplicationDataStatus();
  v155 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154 - 8);
  sub_100006A10();
  v158 = v157 - v156;
  sub_100072C58(v358, v157 - v156, type metadata accessor for AdaptiveConditionsComplicationDataStatus);
  v159 = sub_100005B30(v158, 2, v147);
  if (v159)
  {
    if (v159 == 1)
    {
      sub_1000B5274(&v372);
      sub_1000EA334();
      v378._countAndFlagsBits = sub_10000FEFC();
      sub_1000EA324(v378);
      sub_1000EAA24();
      sub_1000EA304();

      v379._countAndFlagsBits = 0xB0C22D2D20;
      v379._object = 0xA500000000000000;
      sub_1000EA324(v379);
      sub_1000EA364();
      v160 = sub_1000B50E4();
      sub_1000B517C(v160, v161, v162, v163);
      v165 = *(v164 - 256);
      sub_1000EA4B4();
      sub_1000B524C();
      sub_1000EA914();
      sub_10006BB44(&v374);
      v166(v165, v349);
      sub_1000058EC(v147, v144, v153);

      sub_1000B520C();
      sub_1000EA354();
      sub_1000B50E4();
      sub_1000B51FC();
      v168 = v167;
      v366 = &type metadata for Text;
      v367 = &protocol witness table for Text;
      sub_1000B510C();
      v169 = v351;
      sub_1000B51A4();
      v171 = *(v170 - 256);
      v172 = sub_1000EA8C4();
      sub_1000B521C(v172, v173, v168 & 1);
      sub_10006BB44(&v376);
      v174(v124, v171);
      sub_100072EB0(v169, v345, &qword_10012FB88, &qword_1000F0538);
      swift_storeEnumTagMultiPayload();
      sub_1000B4D88();
      sub_10001CE30();
      v175 = v342;
      sub_1000EA4A4();
      sub_100072EB0(v175, v356, &qword_100134AE0, &qword_1000F7868);
      swift_storeEnumTagMultiPayload();
      sub_1000B4D58();
      sub_1000EA4A4();
      sub_100008E48(v175, &qword_100134AE0, &qword_1000F7868);
      v176 = v169;
    }

    else
    {
      sub_1000B5274(&v372);
      sub_1000EA334();
      v380._countAndFlagsBits = sub_10000FEFC();
      sub_1000EA324(v380);
      sub_1000EAA24();
      sub_1000EA304();

      v381._countAndFlagsBits = sub_10000FEFC();
      sub_1000EA324(v381);
      sub_1000EA364();
      v201 = sub_1000B50E4();
      sub_1000B517C(v201, v202, v203, v204);
      sub_10009572C(v205);
      sub_1000EA4B4();
      sub_1000B524C();
      sub_1000EA914();
      sub_10006BB44(&v374);
      v206(v146, v349);
      sub_1000058EC(v147, v144, v153);

      sub_1000B520C();
      sub_1000EA354();
      sub_1000B50E4();
      sub_1000B51FC();
      v208 = v207;
      v366 = &type metadata for Text;
      v367 = &protocol witness table for Text;
      sub_1000B510C();
      v209 = v351;
      sub_1000B51A4();
      v211 = *(v210 - 256);
      v212 = sub_1000EA8C4();
      sub_1000B521C(v212, v213, v208 & 1);
      sub_10006BB44(&v376);
      v214(v124, v211);
      sub_100072EB0(v209, v356, &qword_10012FB88, &qword_1000F0538);
      swift_storeEnumTagMultiPayload();
      sub_1000B4D58();
      sub_10001CE30();
      sub_1000EA4A4();
      v176 = v209;
    }

    return sub_100008E48(v176, &qword_10012FB88, &qword_1000F0538);
  }

  else
  {
    v297[1] = v131;
    v297[2] = v123;
    v298 = v116;
    v301 = v147;
    v302 = v124;
    v299 = v137;
    sub_10001D31C(v158, v153);
    v177 = *(v358 + *(type metadata accessor for AdaptiveConditionsInlineContentView() + 20));
    v303 = v153;
    sub_10009D49C(v153, v146);
    sub_100072C58(v146, v144, type metadata accessor for ConditionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v179 = v146;
    v180 = v340;
    v181 = v341;
    v182 = v338;
    v183 = v332;
    v184 = v331;
    v185 = v302;
    v186 = v330;
    v187 = v301;
    v300 = v179;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v358 = *(sub_100002A10(&qword_100132870, &qword_1000F4050) + 48);
        v286 = v144;
        v287 = v312;
        (*(v184 + 32))(v312, v286, v182);
        (*(v184 + 16))(v186, v287, v182);
        sub_1000B520C();
        sub_1000EA354();
        v288 = sub_1000B50E4();
        v200 = v289;
        v290 = v184;
        v292 = v291;
        v195 = v293;
        sub_1000B4FC0(&qword_100132908, type metadata accessor for RainInlineTruncateFallbackText);
        sub_1000EA8C4();
        sub_1000058EC(v288, v200, v292 & 1);

        sub_1000B4F04(v186, type metadata accessor for RainInlineTruncateFallbackText);
        sub_100072E40(v183, v328);
        swift_storeEnumTagMultiPayload();
        sub_1000B4E14();
        sub_10009D368();
        sub_1000B51CC();
        sub_1000B51B8();
        sub_1000EA4A4();
        sub_100008E48(v183, &qword_100132900, &qword_1000F7870);
        (*(v290 + 8))(v287, v338);
        v294 = sub_1000EBAF4();
        sub_1000069E4(v294);
        (*(v295 + 8))(v286 + v358);
        sub_1000B5260();
        break;
      case 2:
        sub_1000B514C();
        sub_1000B4F04(v144, v216);
        goto LABEL_13;
      case 3:
LABEL_13:
        sub_1000B5274(&v326);
        sub_1000E8644();
        sub_10009572C(&v327);
        sub_1000E8694();
        sub_10006BB44(v343);
        v217(v183, v185);
        v218 = sub_1000E8654();
        sub_10006BB44(v344);
        v219(v184, v298);
        sub_1000EA334();
        v382._countAndFlagsBits = sub_10000FEFC();
        sub_1000EA324(v382);
        v220 = *(v187 + 24);
        v221 = v326;
        sub_1000EB664();
        sub_1000EAF84();
        v332 = *(v181 + 8);
        v332(v221, v327);
        sub_1000EAA24();
        sub_1000EA304();

        v383._countAndFlagsBits = 32;
        v383._object = 0xE100000000000000;
        sub_1000EA324(v383);
        sub_1000EB5B4();
        v222 = v323;
        sub_1000EAD24();
        v341 = v181 + 8;
        if (v218)
        {
          v223 = v308;
          sub_1000EC204();
          sub_1000B5138(&v349);
          v330 = v224;
          v338 = v225;
          v225(v222, v333);
          v311 = *(v322 + 13);
          v331 = (v322 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          LODWORD(v358) = enum case for WeatherFormatPlaceholder.none(_:);
          v226 = v180;
          v227 = v335;
          v311(v180);
          v329 = sub_1000E93A4();
          sub_1000E9394();
          sub_1000B4FC0(&qword_1001328A8, &type metadata accessor for NSUnitTemperature.AttributedWeatherFormatStyle);
          v228 = v305;
          v229 = v334;
          v230 = v310;
          sub_1000E82F4();

          v231 = sub_1000B51E0();
          v322 = v232;
          v232(v231, v227);
          sub_10006BB44(&v338);
          v233(v223, v230);
          sub_1000B5138(&v350);
          v314 = v234;
          v235 = v339;
          v321 = v236;
          v236(v339, v229);
          sub_1000EA2F4();
          sub_10006BB44(v336);
          v237(v228, v307);
          v384._countAndFlagsBits = sub_10000FEFC();
          sub_1000EA324(v384);
          sub_1000EA364();
          v238 = sub_1000B50E4();
          v242 = v323;
        }

        else
        {
          v243 = *(v322 + 13);
          v331 = (v322 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          LODWORD(v358) = enum case for WeatherFormatPlaceholder.none(_:);
          v226 = v180;
          v244 = v335;
          v311 = v243;
          v243(v180);
          v329 = sub_1000E93A4();
          sub_1000E9394();
          sub_1000B5164();
          sub_1000B4FC0(v245, v246);
          v247 = v334;
          v248 = v333;
          v249 = v339;
          v313 = sub_1000E8304();
          v251 = v250;

          v252 = sub_1000B51E0();
          v322 = v253;
          v253(v252, v244);
          sub_1000B5138(&v349);
          v330 = v254;
          v242 = v222;
          v338 = v255;
          v255(v222, v248);
          sub_1000B5138(&v350);
          v314 = v256;
          v235 = v249;
          v321 = v257;
          v257(v249, v247);
          v385._countAndFlagsBits = v313;
          v385._object = v251;
          sub_1000EA314(v385);

          v386._countAndFlagsBits = sub_10000FEFC();
          sub_1000EA324(v386);
          sub_1000EA364();
          v238 = sub_1000B50E4();
        }

        v312 = v238;
        v313 = v239;
        v339 = v241;
        v366 = v238;
        v367 = v239;
        LODWORD(v320) = v240 & 1;
        v368 = v240 & 1;
        v369 = v241;
        sub_10009572C(&v373);
        sub_1000EA4B4();
        sub_1000EA914();
        sub_10006BB44(&v374);
        v258(v226, v349);
        sub_1000EA334();
        v387._countAndFlagsBits = sub_10000FEFC();
        sub_1000EA324(v387);
        v259 = *(v301 + 24);
        sub_10009572C(&v356);
        sub_1000EB664();
        v260 = v316;
        sub_1000EAF64();
        v332(v226, v327);
        v261 = sub_1000E8C24();
        v263 = v262;
        sub_10006BB44(v346);
        v264(v260, v318);
        v388._countAndFlagsBits = v261;
        v388._object = v263;
        sub_1000EA314(v388);

        v389._countAndFlagsBits = 8236;
        v389._object = 0xE200000000000000;
        sub_1000EA324(v389);
        v265 = v235;
        sub_1000EB5B4();
        sub_1000EC0F4();
        v266 = v319;
        sub_1000028A0(v319, 1, 1, v302);
        sub_1000EAD34();

        sub_100008E48(v266, &qword_10012FD68, &unk_1000F5370);
        v267 = v340;
        v268 = v335;
        (v311)(v340, v358, v335);
        sub_1000E93A4();
        sub_1000E9394();
        sub_1000B5164();
        sub_1000B4FC0(v269, v270);
        v200 = v334;
        v271 = v333;
        v272 = sub_1000E8304();
        v274 = v273;

        v322(v267, v268);
        v338(v242, v271);
        v321(v265, v200);
        v390._countAndFlagsBits = v272;
        v390._object = v274;
        sub_1000EA314(v390);

        v391._countAndFlagsBits = 0x7365657267656420;
        v391._object = 0xE800000000000000;
        sub_1000EA324(v391);
        sub_1000EA364();
        sub_1000B50E4();
        sub_1000B51FC();
        LOBYTE(v274) = v275;
        v366 = &type metadata for Text;
        v367 = &protocol witness table for Text;
        sub_1000B510C();
        v276 = v351;
        sub_1000B51A4();
        v278 = *(v277 - 256);
        v279 = v352;
        v280 = sub_1000EA8C4();
        sub_1000B521C(v280, v281, v274 & 1);
        sub_10006BB44(&v376);
        v282(v279, v278);
        sub_100072EB0(v276, v324, &qword_10012FB88, &qword_1000F0538);
        sub_1000B5280(&v352);
        sub_10001CE30();
        sub_1000B4EA0();
        v283 = v325;
        sub_1000EA4A4();
        v195 = &qword_1000F7890;
        v186 = v328;
        sub_100072EB0(v283, v328, &qword_100134B00, &qword_1000F7890);
        sub_1000B5280(v363);
        sub_1000B4E14();
        sub_10009D368();
        sub_1000B51CC();
        sub_1000B51B8();
        sub_1000EA4A4();
        sub_1000058EC(v312, v313, v320);

        sub_100008E48(v283, &qword_100134B00, &qword_1000F7890);
        v284 = sub_100019AC0();
        sub_100008E48(v284, v285, &qword_1000F0538);
        sub_1000B5260();
        break;
      default:
        v189 = *v144;
        v188 = v144[1];
        sub_100002A10(&qword_10012FCE0, &qword_1000F05F8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000F03E0;
        v191 = sub_1000EA534();
        *(inited + 32) = v191;
        v192 = sub_1000EA554();
        *(inited + 33) = v192;
        v193 = sub_1000EA544();
        sub_1000EA544();
        if (sub_1000EA544() != v191)
        {
          v193 = sub_1000EA544();
        }

        sub_1000EA544();
        v194 = sub_1000EA544();
        v195 = v356;
        if (v194 != v192)
        {
          v193 = sub_1000EA544();
        }

        v186 = v342;
        v196 = v328;
        v197 = v304;
        *v304 = v193;
        v198 = sub_100002A10(&qword_100134B30, &qword_1000F78A0);
        sub_1000B458C(v189, v188, v197 + *(v198 + 44));

        v199 = v313;
        sub_1000B4F5C(v197, v313);
        sub_100072EB0(v199, v324, &qword_100134AE8, &qword_1000F7878);
        swift_storeEnumTagMultiPayload();
        v200 = sub_10001CE30();
        sub_1000B4EA0();
        sub_1000B5274(&v355);
        sub_1000EA4A4();
        sub_100072EB0(v189, v196, &qword_100134B00, &qword_1000F7890);
        sub_1000B5280(v363);
        sub_1000B4E14();
        sub_10009D368();
        sub_1000B51CC();
        sub_1000B51B8();
        sub_1000EA4A4();
        sub_100008E48(v189, &qword_100134B00, &qword_1000F7890);
        sub_100008E48(v199, &qword_100134AE8, &qword_1000F7878);
        break;
    }

    sub_100072EB0(v200, v345, &qword_100134B08, &qword_1000F7898);
    sub_1000B5280(&v371);
    sub_1000B4D88();
    sub_10001CE30();
    sub_1000EA4A4();
    sub_100072EB0(v186, v195, &qword_100134AE0, &qword_1000F7868);
    swift_storeEnumTagMultiPayload();
    sub_1000B4D58();
    sub_1000EA4A4();
    sub_100008E48(v186, &qword_100134AE0, &qword_1000F7868);
    sub_100008E48(v200, &qword_100134B08, &qword_1000F7898);
    sub_1000B514C();
    sub_1000B4F04(v300, v296);
    return sub_1000B4F04(v303, type metadata accessor for AggregateWeatherViewModel);
  }
}

uint64_t sub_1000B458C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v54 = a1;
  v66 = a3;
  v67 = sub_1000EA4E4();
  v5 = *(v67 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v67);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000EA344();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v63 = sub_100002A10(&qword_1001328A0, &qword_1000F4090);
  v70 = *(v63 - 8);
  v11 = *(v70 + 64);
  __chkstk_darwin(v63);
  v53 = &v53 - v12;
  v69 = sub_100002A10(&qword_10012FB88, &qword_1000F0538);
  v13 = *(*(v69 - 8) + 64);
  v14 = __chkstk_darwin(v69);
  v65 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v64 = &v53 - v17;
  v18 = __chkstk_darwin(v16);
  v56 = &v53 - v19;
  __chkstk_darwin(v18);
  v68 = &v53 - v20;
  sub_1000EA334();
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  sub_1000EA324(v75);
  v62 = "ng the 'severe' icon";
  sub_1000EAA24();
  sub_1000EA304();

  v76._countAndFlagsBits = 32;
  v76._object = 0xE100000000000000;
  sub_1000EA324(v76);
  v77._countAndFlagsBits = a1;
  v77._object = a2;
  sub_1000EA314(v77);
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  sub_1000EA324(v78);
  sub_1000EA364();
  v21 = sub_1000EA7F4();
  v23 = v22;
  v71 = v21;
  v72 = v22;
  v25 = v24 & 1;
  v73 = v24 & 1;
  v74 = v26;
  v58 = v8;
  sub_1000EA4B4();
  sub_1000EA914();
  v27 = *(v5 + 8);
  v60 = v5 + 8;
  v61 = v27;
  v27(v8, v67);
  sub_1000058EC(v21, v23, v25);

  sub_1000EA354();
  v28 = sub_1000EA7F4();
  v30 = v29;
  LOBYTE(v5) = v31;
  v71 = &type metadata for Text;
  v72 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v56;
  v33 = v63;
  v34 = v53;
  sub_1000EA8C4();
  sub_1000058EC(v28, v30, v5 & 1);

  v35 = *(v70 + 8);
  v70 += 8;
  v57 = v35;
  v35(v34, v33);
  v71 = v54;
  v72 = v55;
  sub_100005898();
  sub_1000EA064();
  sub_100008E48(v32, &qword_10012FB88, &qword_1000F0538);
  sub_1000EA334();
  v79._countAndFlagsBits = 0;
  v79._object = 0xE000000000000000;
  sub_1000EA324(v79);
  sub_1000EAA24();
  sub_1000EA304();

  v80._countAndFlagsBits = 0x2065726576655320;
  v80._object = 0xEF72656874616557;
  sub_1000EA324(v80);
  sub_1000EA364();
  v36 = sub_1000EA7F4();
  v38 = v37;
  v71 = v36;
  v72 = v37;
  LOBYTE(v21) = v39 & 1;
  v73 = v39 & 1;
  v74 = v40;
  v41 = v58;
  sub_1000EA4B4();
  sub_1000EA914();
  v61(v41, v67);
  sub_1000058EC(v36, v38, v21);

  sub_1000EA354();
  v42 = sub_1000EA7F4();
  v44 = v43;
  v46 = v45;
  v47 = v64;
  sub_1000EA8C4();
  sub_1000058EC(v42, v44, v46 & 1);

  v57(v34, v33);
  sub_1000EA354();
  sub_1000EA054();

  sub_100008E48(v47, &qword_10012FB88, &qword_1000F0538);
  v48 = v68;
  sub_100072EB0(v68, v47, &qword_10012FB88, &qword_1000F0538);
  v49 = v65;
  sub_100072EB0(v32, v65, &qword_10012FB88, &qword_1000F0538);
  v50 = v66;
  sub_100072EB0(v47, v66, &qword_10012FB88, &qword_1000F0538);
  v51 = sub_100002A10(&qword_100134B38, &qword_1000F78A8);
  sub_100072EB0(v49, v50 + *(v51 + 48), &qword_10012FB88, &qword_1000F0538);
  sub_100008E48(v32, &qword_10012FB88, &qword_1000F0538);
  sub_100008E48(v48, &qword_10012FB88, &qword_1000F0538);
  sub_100008E48(v49, &qword_10012FB88, &qword_1000F0538);
  return sub_100008E48(v47, &qword_10012FB88, &qword_1000F0538);
}

unint64_t sub_1000B4D88()
{
  result = qword_100134B18;
  if (!qword_100134B18)
  {
    sub_100002ABC(&qword_100134B08, &qword_1000F7898);
    sub_1000B4E14();
    sub_10009D368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B18);
  }

  return result;
}

unint64_t sub_1000B4E14()
{
  result = qword_100134B20;
  if (!qword_100134B20)
  {
    sub_100002ABC(&qword_100134B00, &qword_1000F7890);
    sub_10001CE30();
    sub_1000B4EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B20);
  }

  return result;
}

unint64_t sub_1000B4EA0()
{
  result = qword_100134B28;
  if (!qword_100134B28)
  {
    sub_100002ABC(&qword_100134AE8, &qword_1000F7878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B28);
  }

  return result;
}

uint64_t sub_1000B4F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000B4F5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002A10(&qword_100134AE8, &qword_1000F7878);
  sub_1000069E4(v3);
  v5 = *(v4 + 32);
  v6 = sub_100019AC0();
  v7(v6);
  return a2;
}

uint64_t sub_1000B4FC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B504C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(a2, a3);
    a4();
    sub_10001CE30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B50D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_1000B50E4()
{

  return sub_1000EA7F4();
}

uint64_t sub_1000B510C()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B517C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 - 128) = result;
  *(v4 - 120) = a2;
  *(v4 - 112) = a3 & 1;
  *(v4 - 104) = a4;
  return result;
}

uint64_t sub_1000B51E0()
{
  v3 = *(v1 + 8);
  *(v2 - 592) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_1000B521C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000058EC(v3, v4, a3);
}

void sub_1000B5260()
{
  v1 = *(v0 - 232);
  v2 = *(v0 - 224);
  v3 = *(v0 - 248);
  v4 = *(v0 - 240);
  v5 = *(v0 - 352);
}

uint64_t sub_1000B5280@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000B529C()
{
  result = qword_100134B70;
  if (!qword_100134B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B70);
  }

  return result;
}

uint64_t sub_1000B5334()
{
  v0 = sub_1000B79BC();

  return _EntityURLRepresentation.init(_:)(0xD000000000000055, 0x80000001000FD0F0, &unk_100128328, v0);
}

uint64_t sub_1000B5390()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18[-v2];
  v4 = sub_1000E86A4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000E84B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000EBE54();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000E84C4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = sub_1000E8204();
  sub_10004B338(v15, qword_100145C58);
  sub_100008CB8(v15, qword_100145C58);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v16 = sub_100008CB8(v6, qword_100145E08);
  (*(v7 + 16))(v10, v16, v6);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v3, 1, 1, v13);
  return sub_1000E81F4();
}

uint64_t sub_1000B5670@<X0>(uint64_t a1@<X8>)
{
  v41[2] = a1;
  v1 = sub_100002A10(&qword_100134CB0, &unk_1000F9870);
  sub_100009210(v1);
  v3 = *(v2 + 64);
  sub_100009204();
  __chkstk_darwin(v4);
  v41[1] = v41 - v5;
  v6 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v6);
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  sub_1000B9748(v10, v41[0]);
  v11 = sub_1000E86A4();
  v12 = sub_100009210(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100006A10();
  sub_1000B96F8();
  v15 = sub_1000E84B4();
  v16 = sub_1000090D4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100006A10();
  v23 = v22 - v21;
  v24 = sub_1000EBE54();
  v25 = sub_100009210(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_100006A10();
  v28 = sub_1000E84C4();
  sub_1000326A0(v28);
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  sub_1000091AC();
  __chkstk_darwin(v32);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634();
  }

  v33 = sub_100008CB8(v15, qword_100145E08);
  v34 = *(v18 + 16);
  v34(v23, v33, v15);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000EBE44();
  v34(v23, v33, v15);
  sub_1000E8644();
  v35 = v41[0];
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000028A0(v35, 0, 1, v28);
  sub_1000E80C4();
  sub_10000D52C();
  sub_1000028A0(v36, v37, v38, v39);
  sub_1000B96B8();
  sub_1000E84A4();
  return sub_1000E80D4();
}

uint64_t sub_1000B59BC()
{
  v0 = sub_1000E84C4();
  sub_10004B338(v0, qword_100145C70);
  sub_100008CB8(v0, qword_100145C70);
  return sub_1000E84A4();
}

uint64_t sub_1000B5A20()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20[-v2];
  v4 = sub_1000E86A4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000E84B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000EBE54();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000E84C4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  sub_10004B338(v15, qword_100145C88);
  v16 = sub_100008CB8(v15, qword_100145C88);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v17 = sub_100008CB8(v6, qword_100145E08);
  (*(v7 + 16))(v10, v17, v6);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v3, 1, 1, v13);
  sub_1000E8044();
  v18 = sub_1000E8034();
  return sub_1000028A0(v16, 0, 1, v18);
}

uint64_t sub_1000B5D28()
{
  result = swift_getKeyPath();
  qword_100145CA0 = result;
  return result;
}

uint64_t sub_1000B5D58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1000B5D50();
  *a2 = v3;
  return result;
}

uint64_t sub_1000B5DC0()
{
  sub_1000B9708();

  sub_1000E7F14();
}

uint64_t sub_1000B5E78()
{
  sub_100032530();
  v0[21] = v1;
  v0[22] = v2;
  v0[20] = v3;
  v4 = sub_100002A10(&qword_100134CD8, &unk_1000F98D0);
  sub_100009210(v4);
  v6 = *(v5 + 64);
  v0[23] = sub_1000B9730();
  v7 = sub_100002A10(&qword_100134CE0, &qword_1000F8250);
  sub_100009210(v7);
  v9 = *(v8 + 64);
  v0[24] = sub_1000B9730();
  v10 = sub_100002A10(&qword_100134CE8, &qword_1000F8258);
  sub_100009210(v10);
  v12 = *(v11 + 64);
  v0[25] = sub_1000B9730();
  v13 = sub_1000E7ED4();
  v0[26] = v13;
  sub_100032590(v13);
  v0[27] = v14;
  v16 = *(v15 + 64);
  v0[28] = sub_1000B9730();
  v17 = sub_100002A10(&qword_100134CF0, &qword_1000F8260);
  v0[29] = v17;
  sub_100032590(v17);
  v0[30] = v18;
  v20 = *(v19 + 64) + 15;
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  sub_1000326AC();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1000B6014()
{
  sub_100032530();
  v1 = *(v0 + 168);
  sub_1000E7F04();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000B79BC();
  *v4 = v0;
  v4[1] = sub_1000B60F4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1000B95FC, 0, &unk_100128328, v5);
}

uint64_t sub_1000B60F4()
{
  sub_100032530();
  sub_1000325B0();
  v2 = *(v1 + 264);
  v3 = *v0;
  sub_10003246C();
  *v4 = v3;

  sub_1000326AC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000B61DC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1000E7F04();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1000E7F04();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10012EB68 != -1)
  {
    sub_1000B9654();
  }

  v5 = qword_100145CA0;
  *(v0 + 288) = qword_100145CA0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_1000B9674(&qword_100134CB8, &qword_100134CC0, &qword_1000F8228);
  *v7 = v0;
  v7[1] = sub_1000B631C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000B631C()
{
  sub_1000325B0();
  v3 = v2[37];
  v4 = v2[36];
  v5 = v2[35];
  v6 = v2[34];
  v7 = *v1;
  sub_10003246C();
  *v8 = v7;
  *(v9 + 304) = v0;

  sub_1000326AC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000B647C()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v18 = v0[31];
  v19 = v0[28];
  v4 = v0[25];
  v23 = v0[27];
  v24 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v20 = v0[20];
  sub_1000E7F04();
  v21 = v0[15];
  v22 = v0[16];
  v0[17] = v0[14];
  v0[18] = v21;
  v0[19] = v22;
  sub_1000E81E4();
  sub_10000D52C();
  sub_1000028A0(v8, v9, v10, v11);
  sub_1000E8214();
  sub_10000D52C();
  sub_1000028A0(v12, v13, v14, v15);
  sub_1000B529C();
  sub_1000B7D80();
  sub_1000E7EA4();
  (*(v2 + 16))(v18, v1, v3);
  sub_1000E7EC4();
  sub_1000E7EE4();
  (*(v23 + 8))(v19, v24);

  (*(v2 + 8))(v1, v3);

  sub_1000324E4();

  return v16();
}

uint64_t sub_1000B66A0()
{
  v1 = v0[31];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  (*(v0[30] + 8))(v0[32], v0[29]);

  sub_1000324E4();
  v7 = v0[38];

  return v6();
}

uint64_t sub_1000B6764()
{
  v0 = sub_100002A10(&qword_100134CF8, &qword_1000F8268);
  sub_1000090D4(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  if (qword_10012EB68 != -1)
  {
    sub_1000B9654();
  }

  sub_1000E80A4();

  sub_1000B7D80();
  sub_100006988(&qword_100134D00, &qword_100134CF8, &qword_1000F8268);
  sub_1000E8094();
  return (*(v2 + 8))(v7, v0);
}

uint64_t sub_1000B68B8()
{
  v0 = sub_100002A10(&qword_100134CC8, &qword_1000F8230);
  sub_100009210(v0);
  v2 = *(v1 + 64);
  sub_100009204();
  __chkstk_darwin(v3);
  sub_1000B9748(v4, v48);
  v5 = sub_1000E8174();
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100006A10();
  v13 = v12 - v11;
  v14 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v15 = sub_100009210(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000091AC();
  __chkstk_darwin(v18);
  v19 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  sub_100009210(v19);
  v21 = *(v20 + 64);
  sub_100009204();
  __chkstk_darwin(v22);
  sub_1000B96F8();
  v51 = sub_1000E84C4();
  sub_1000326A0(v51);
  v24 = *(v23 + 64);
  __chkstk_darwin(v25);
  sub_100006A10();
  sub_100002A10(&qword_100134C90, &unk_1000F8200);
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v26, v27, v28, v51);
  v29 = sub_1000E7ED4();
  sub_10000D52C();
  sub_1000028A0(v30, v31, v32, v29);
  sub_10000D52C();
  sub_1000028A0(v33, v34, v35, v29);
  v36 = enum case for InputConnectionBehavior.default(_:);
  v50 = *(v8 + 104);
  v50(v13, enum case for InputConnectionBehavior.default(_:), v5);
  sub_1000B79BC();
  v49 = sub_1000E7F34();
  sub_100002A10(&qword_100134CD0, &qword_1000F8238);
  sub_1000E84A4();
  sub_10000D52C();
  sub_1000028A0(v37, v38, v39, v51);
  sub_1000EC044();
  sub_10000D52C();
  sub_1000028A0(v40, v41, v42, v43);
  sub_10000D52C();
  sub_1000028A0(v44, v45, v46, v29);
  v50(v13, v36, v5);
  sub_1000E7F44();
  return v49;
}

uint64_t sub_1000B6C14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000B5D88();
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

uint64_t sub_1000B6C44(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *v1;
  return sub_1000B5DC0();
}

uint64_t (*sub_1000B6C58(void *a1))()
{
  v3 = sub_1000B9500(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1000E7EF4();
  return sub_1000B9604;
}

uint64_t sub_1000B6CB8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_1000B5E10();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000B6CE8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  return sub_1000B5E44();
}

uint64_t (*sub_1000B6CF4(void *a1))()
{
  v3 = sub_1000B9500(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 8);
  v3[4] = sub_1000E7EF4();
  return sub_1000B9604;
}

uint64_t sub_1000B6D54()
{
  if (qword_10012EB68 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000B6DD0()
{
  result = qword_100134B88;
  if (!qword_100134B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B88);
  }

  return result;
}

unint64_t sub_1000B6E28()
{
  result = qword_100134B90;
  if (!qword_100134B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B90);
  }

  return result;
}

uint64_t sub_1000B6F08@<X0>(uint64_t a1@<X8>)
{
  if (qword_10012EB60 != -1)
  {
    swift_once();
  }

  v2 = sub_100002A10(&qword_100134D08, &qword_1000F9920);
  v3 = sub_100008CB8(v2, qword_100145C88);

  return sub_1000B957C(v3, a1);
}

uint64_t sub_1000B6F8C()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032444;

  return sub_1000B5E78();
}

uint64_t sub_1000B7038@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B68B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000B7080()
{
  result = qword_100134B98;
  if (!qword_100134B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134B98);
  }

  return result;
}

unint64_t sub_1000B70D8()
{
  result = qword_100134BA0;
  if (!qword_100134BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BA0);
  }

  return result;
}

uint64_t sub_1000B714C()
{
  sub_100032530();
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698();
  }

  v1 = *(v0 + 16);
  *v1 = sub_100043F4C() & 1;
  sub_1000324E4();

  return v2();
}

uint64_t sub_1000B71FC()
{
  sub_100032530();
  if (qword_10012EB00 != -1)
  {
    sub_1000B9698();
  }

  v1 = *(v0 + 16);
  sub_100043FF8();
  sub_1000B9534();
  sub_1000EC1D4();
  sub_1000324E4();

  return v2();
}

uint64_t sub_1000B7290()
{
  sub_100032530();
  v1 = sub_1000E86A4();
  sub_100009210(v1);
  v3 = *(v2 + 64);
  v0[2] = sub_1000B9730();
  v4 = sub_1000E84B4();
  v0[3] = v4;
  sub_100032590(v4);
  v0[4] = v5;
  v7 = *(v6 + 64);
  v0[5] = sub_1000B9730();
  v8 = sub_1000EBE54();
  sub_100009210(v8);
  v10 = *(v9 + 64);
  v0[6] = sub_1000B9730();
  v11 = sub_1000E84C4();
  sub_100009210(v11);
  v13 = *(v12 + 64);
  v0[7] = sub_1000B9730();
  sub_1000326AC();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000B7394()
{
  v1 = v0[6];
  sub_100002A10(&qword_100134B80, qword_1000F78C0);
  sub_1000B96B8();
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    sub_1000B9634();
  }

  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_100008CB8(v6, qword_100145E08);
  (*(v5 + 16))(v4, v7, v6);
  sub_1000E8644();
  sub_1000326AC();
  sub_1000B96DC();
  sub_1000B9674(&qword_100134CB8, &qword_100134CC0, &qword_1000F8228);
  v8 = sub_1000E8254();

  v9 = v0[1];

  return v9(0xD00000000000001FLL, 0x80000001000F8160, v8);
}

uint64_t sub_1000B7550(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000B75E0;

  return sub_1000B7290();
}

uint64_t sub_1000B75E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000325B0();
  v9 = v8;
  v10 = *(v8 + 24);
  v11 = *v4;
  sub_10003246C();
  *v12 = v11;

  if (!v3)
  {
    v13 = *(v9 + 16);
    *v13 = a1;
    v13[1] = a2;
    v13[2] = a3;
  }

  v14 = *(v11 + 8);

  return v14();
}

unint64_t sub_1000B76FC()
{
  result = qword_100134BA8;
  if (!qword_100134BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BA8);
  }

  return result;
}

uint64_t sub_1000B7750(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000B7FD0();
  *v5 = v2;
  v5[1] = sub_1000B7800;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_1000B7800(uint64_t a1)
{
  sub_1000325B0();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v2;
  sub_10003246C();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

unint64_t sub_1000B790C()
{
  result = qword_100134BB0;
  if (!qword_100134BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BB0);
  }

  return result;
}

unint64_t sub_1000B7964()
{
  result = qword_100134BB8;
  if (!qword_100134BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BB8);
  }

  return result;
}

unint64_t sub_1000B79BC()
{
  result = qword_100134BC0;
  if (!qword_100134BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134BC0);
  }

  return result;
}

uint64_t sub_1000B7A10(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000B7FD0();
  *v6 = v2;
  v6[1] = sub_1000B9630;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000B7AC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000B7FD0();
  *v5 = v2;
  v5[1] = sub_1000B9600;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}