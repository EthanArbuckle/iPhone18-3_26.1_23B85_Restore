uint64_t sub_8A160(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_16A774();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8A1C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    sub_4EB50(v6);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return sub_5370(a3, v9, 1, v7);
}

uint64_t sub_8A268(uint64_t a1)
{
  v2 = sub_9376C(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_937CC(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_93A2C(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_93A60(v7, v9, v11 & 1);
  v13 = sub_93F3C();
  if (v12)
  {
    sub_93A60(v13, v14, v15);
    return 0;
  }

  else
  {
    sub_93820(v13, v14, v15, a1);
    v16 = v17;
    v18 = sub_93F3C();
    sub_93A60(v18, v19, v20);
  }

  return v16;
}

double sub_8A324@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_6765C(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_8A35C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(a1 + 48) + (v9 | (v8 << 6)));
    sub_8F89C();
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_8A460(unint64_t a1, uint64_t a2)
{
  v5 = sub_5758(&qword_1E9190, &qword_172AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_10B64();
  v106 = v7;
  sub_6CF04();
  __chkstk_darwin(v8);
  v110 = v105 - v9;
  sub_6CF04();
  __chkstk_darwin(v10);
  v109 = v105 - v11;
  v12 = sub_169474();
  v13 = sub_9F48(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10B64();
  v107 = v18;
  sub_6CF04();
  __chkstk_darwin(v19);
  v108 = v105 - v20;
  sub_6CF04();
  v22 = __chkstk_darwin(v21);
  v24 = v105 - v23;
  __chkstk_darwin(v22);
  v26 = v105 - v25;
  v27 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_parse;
  v28 = sub_169414();
  v112 = *(v28 - 8);
  v113 = v28;
  (*(v112 + 16))(v2 + v27, a1);
  v29 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_unitProvider;
  v111 = v2;
  v114 = a2;
  sub_8F558(a2, v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_unitProvider);
  v30 = a1;
  sub_169404();
  v31 = sub_14BFB0();
  v32 = *(v15 + 8);
  v33 = v12;
  v34 = v12;
  v35 = v31;
  v32(v26, v34);
  v115 = v30;
  if (v35)
  {
    v36 = type metadata accessor for CarCommandsNlv4Task();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();

    v40 = sub_1071D8(v39);
    v41 = v111;
    *(v111 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task) = v40;
    v117 = 0;
    v118 = 0xE000000000000000;
    sub_16ACF4(53);
    v119._countAndFlagsBits = 0xD000000000000033;
    v119._object = 0x80000000001869B0;
    sub_16A744(v119);
    v116 = *(v41 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);

    sub_5758(&qword_1E9198, &qword_172AE8);
    v120._countAndFlagsBits = sub_16A694();
    sub_16A744(v120);

    v42 = v117;
    v43 = v118;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v44 = sub_16A584();
    sub_9DA0(v44, qword_1E65C0);
    sub_16A9A4();
    sub_93BD0();
    sub_386D8(v45, v46, v47, v48, v49, v50, 27, v42, v43);

LABEL_26:
    sub_3D344(v114);
    (*(v112 + 8))(v115, v113);
    return v41;
  }

  v105[1] = v29;
  v105[2] = v27;
  sub_169404();
  v51 = sub_169464();
  v32(v24, v33);
  sub_93A98();
  v52 = v109;
  sub_8A1C0(v51, v53, v109);

  v54 = sub_169504();
  sub_941EC(v52);
  v41 = v33;
  if (v55)
  {
    sub_8F5BC(v52);
    v56 = v110;
    v57 = v108;
  }

  else
  {
    sub_1694B4();
    sub_93C30();
    (*(v58 + 8))(v52, v54);
    v56 = v110;
    v57 = v108;
    if (v51)
    {
      v41 = v111;
      *(v111 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task) = 0;
      sub_93C20();
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v59 = sub_16A584();
      sub_9DA0(v59, qword_1E65C0);
      sub_16A9A4();
      sub_940B4();
      sub_93BD0();
      sub_386D8(v60, v61, v62, v63, v64, v65, 30, v66, v30);
      goto LABEL_26;
    }
  }

  v67 = v57;
  sub_169404();
  v68 = sub_169464();
  v32(v67, v41);
  sub_93A98();
  sub_8A1C0(v68, v69, v56);

  sub_941EC(v56);
  if (v55)
  {
    sub_8F5BC(v56);
    v70 = v107;
  }

  else
  {
    sub_1694C4();
    sub_93C30();
    (*(v71 + 8))(v56, v54);
    v70 = v107;
    if (v68)
    {
      v41 = v111;
      *(v111 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task) = 0;
      sub_93C20();
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v72 = sub_16A584();
      sub_9DA0(v72, qword_1E65C0);
      sub_16A9A4();
      sub_940B4();
      sub_93BD0();
      sub_386D8(v73, v74, v75, v76, v77, v78, 33, v79, v30);
      goto LABEL_26;
    }
  }

  sub_169404();
  v80 = sub_169464();
  v32(v70, v41);
  sub_93A98();
  v81 = v106;
  sub_8A1C0(v80, v82, v106);

  sub_941EC(v81);
  if (v55)
  {
    sub_8F5BC(v81);
    sub_940F4();
  }

  else
  {
    sub_1694D4();
    sub_93C30();
    (*(v83 + 8))(v81, v54);
    sub_940F4();
    if (v80)
    {
      *(v41 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task) = 0;
      sub_93C20();
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v84 = sub_16A584();
      sub_9DA0(v84, qword_1E65C0);
      sub_16A9A4();
      sub_940B4();
      sub_93BD0();
      sub_386D8(v85, v86, v87, v88, v89, v90, 36, v91, v30);
      goto LABEL_26;
    }
  }

  sub_93C20();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v93 = sub_16A584();
  sub_9DA0(v93, qword_1E65C0);
  sub_16A9A4();
  sub_940B4();
  sub_93BD0();
  sub_386D8(v94, v95, v96, v97, v98, v99, 38, v100, v30);
  sub_3D344(v114);
  v101 = v113;
  v102 = *(v112 + 8);
  v102(v115, v113);
  v102(&v70[v41], v101);
  sub_3D344(v41 + v54);
  type metadata accessor for CarCommandsNLv4Intent();
  v103 = *(*v41 + 48);
  v104 = *(*v41 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_8ACB0()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_parse;
  v2 = sub_169414();
  sub_4EB50(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);

  sub_3D344(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_unitProvider);
  return v0;
}

uint64_t sub_8AD2C()
{
  sub_8ACB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CarCommandsNLv4Intent()
{
  result = qword_1E90F8;
  if (!qword_1E90F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8ADD8()
{
  result = sub_169414();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for LocalizedMeasurementUnitProvider();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_8AEAC(uint64_t (*a1)(void))
{
  v2 = sub_169474();
  v3 = sub_9F48(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5758(&qword_1E9190, &qword_172AE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  sub_169404();
  v14 = sub_169464();
  (*(v5 + 8))(v9, v2);
  sub_93A98();
  sub_8A1C0(v14, v15, v13);

  v16 = sub_169504();
  if (sub_9E2C(v13, 1, v16) == 1)
  {
    sub_8F5BC(v13);
    v17 = 0;
  }

  else
  {
    v17 = a1();
    sub_4EB50(v16);
    (*(v18 + 8))(v13, v16);
  }

  return v17 & 1;
}

uint64_t sub_8B05C@<X0>(uint64_t a1@<X8>)
{
  if (sub_93D08())
  {
    v2 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_6:
    v3 = *v2;
    v4 = sub_169004();
    sub_4EB50(v4);
    (*(v5 + 104))(a1, v3, v4);
    v6 = a1;
    v7 = 0;
    v8 = 1;
    v9 = v4;
    goto LABEL_7;
  }

  if (sub_93CE4() & 1) != 0 || (sub_93CC0())
  {
    v2 = &enum case for ConfirmationResponse.rejected(_:);
    goto LABEL_6;
  }

  sub_169004();
  v6 = sub_94114();
LABEL_7:

  return sub_5370(v6, v7, v8, v9);
}

void sub_8B21C()
{
  if (*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    sub_10349C();
    if (!v1)
    {
      sub_10340C();
    }
  }
}

unint64_t sub_8B260()
{
  if (!*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 0;
  }

  sub_100914();
  sub_93C14();
  v3 = v3 || v2 == 5;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 0x403010200uLL >> (8 * v1);
  }
}

uint64_t sub_8B2B8()
{
  sub_109B8C();
  sub_104B2C();
  sub_100E24();
  sub_93DFC();

  v1 = sub_10934C(&off_1D15F0);
  v2 = sub_103A44();
  v3 = sub_96CC(v2, v1);

  if ((sub_103940() & 1) != 0 || (v0 & 1) == 0 || (v3 & 1) != 0 || (sub_1033A0() & 1) != 0 && (sub_102770() & 1) == 0)
  {
    return 1;
  }

  else
  {
    return sub_104754() & 1;
  }
}

uint64_t sub_8B364()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v2)
  {
    if ((sub_93D08() & 1) == 0 && (sub_93CE4() & 1) == 0)
    {
      v3 = sub_93CC0();
      return v3 & 1;
    }

LABEL_16:
    v3 = 1;
    return v3 & 1;
  }

  sub_93AFC();

  if ((sub_8B66C() & 1) == 0 && (sub_8B7E4() & 1) == 0 && (sub_8B8D8(v2, (v1 & 1) == 0) & 1) == 0)
  {
    if (sub_102440() & 1) != 0 || sub_105294() != 2 || (sub_1033A0() & 1) != 0 || (sub_1051FC() & 1) != 0 || (sub_104754() & 1) != 0 || (sub_10549C())
    {
      goto LABEL_15;
    }

    sub_93E8C();
    v5 = sub_102188();
    sub_81288(v5);
    sub_93AEC();
    v8 = v8 && v7 == v6;
    if (!v8)
    {
      sub_93BF8();
      sub_614D8();

      if (v1)
      {
LABEL_15:

        goto LABEL_16;
      }

      sub_81288(*(v2 + 56));
      if (v10 != 0x415F6E6F6D6D6F63 || v9 != 0xEA00000000007070)
      {
        sub_16AE54();
        sub_614D8();
      }

      v12 = sub_1023F8();
      sub_8139C(v12);
      if (v14 != 1852141679 || v13 != 0xE400000000000000)
      {
        sub_941D4();
        sub_614D8();

        goto LABEL_15;
      }
    }

    goto LABEL_16;
  }

  v3 = 0;
  return v3 & 1;
}

uint64_t sub_8B66C()
{
  v0 = sub_89438();
  if (CarCommandsUseCase.rawValue.getter(v0) == 0x6F69646152746573 && v1 == 0xEF6E6F6974617453)
  {
  }

  else
  {
    v3 = sub_16AE54();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_8BBC8() & 1) == 0 || (sub_106B74() & 1) != 0 || (sub_106B94())
  {
    return 0;
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 0x800uLL, 0xD000000000000077, 0x8000000000186850, 0xD000000000000026, 0x8000000000186B90, 316, 0xD000000000000052, 0x8000000000186BC0);
  return 1;
}

uint64_t sub_8B7E4()
{
  if ((sub_8BBC8() & 1) == 0 || (sub_103514() & 1) == 0)
  {
    return 0;
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v0 = sub_16A584();
  sub_9DA0(v0, qword_1E65C0);
  v1 = sub_16A9A4();
  sub_386D8(v1, 0x800uLL, 0xD000000000000077, 0x8000000000186850, 0xD00000000000001BLL, 0x8000000000186B30, 329, 0xD00000000000003ALL, 0x8000000000186B50);
  return 1;
}

uint64_t sub_8B8D8(unint64_t a1, unint64_t a2)
{
  sub_109B8C();
  v5 = sub_91484(&off_1D2A18, v4);
  sub_13F96C(v5);
  v6 = sub_104B2C();
  sub_10B304(&off_1D2A40, v6);
  v8 = v7;

  if (v8)
  {
    v9 = sub_103A44();
    v10 = !sub_E6090(v9, &off_1D2A68);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  if ((sub_103940() & 1) == 0 && (sub_104754() & 1) == 0)
  {
    sub_1021D0();
    if (!v11)
    {
      v12 = 0;
      goto LABEL_9;
    }
  }

  v12 = 1;
LABEL_9:
  v13 = sub_1054D4();
  v14 = 0;
  v15 = v13[2];
  v16 = &off_1D2A90;
  do
  {
    if (v15 == v14)
    {

      if ((v10 || (a2 & 1) == 0) | v12 & 1)
      {
        goto LABEL_17;
      }

LABEL_14:
      a2 = "NLv4Intent";
      v16 = "edTask dialog act: ";
      a1 = 0x8000000000186AB0;
      if (qword_1E58E8 == -1)
      {
LABEL_15:
        v19 = sub_16A584();
        sub_9DA0(v19, qword_1E65C0);
        v20 = sub_16A9A4();
        v25 = a1;
        v21 = 1;
        sub_386D8(v20, 1uLL, 0xD000000000000077, a2 | 0x8000000000000000, 0xD00000000000002DLL, (v16 | 0x8000000000000000), 366, 0xD00000000000007CLL, v25);
        return v21;
      }

LABEL_26:
      swift_once();
      goto LABEL_15;
    }

    if (v14 >= v13[2])
    {
      __break(1u);
      goto LABEL_26;
    }

    v17 = v14 + 1;
    v18 = sub_E66C0(*(v13 + v14 + 32), &off_1D2A90);
    v14 = v17;
  }

  while (!v18);

  if (!(v12 & 1 | ((a2 & 1) == 0)))
  {
    goto LABEL_14;
  }

LABEL_17:
  if (sub_102770() & 1) == 0 || (sub_1033A0())
  {
    return 0;
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v22 = sub_16A584();
  sub_9DA0(v22, qword_1E65C0);
  v23 = sub_16A9A4();
  sub_386D8(v23, 1uLL, 0xD000000000000077, 0x8000000000186850, 0xD00000000000002DLL, 0x80000000001869F0, 369, 0xD000000000000083, 0x8000000000186A20);
  return 1;
}

uint64_t sub_8BBC8()
{
  v0 = sub_1023F8();
  v1 = sub_102188();
  if (v0 == 13 || v0 == 12)
  {
    if (v1 != 2)
    {
      return 0;
    }
  }

  else if (v0 != 10 || v1 != 2)
  {
    return 0;
  }

  return 1;
}

void sub_8BC30(uint64_t a1)
{
  v2 = sub_106C38();
  if (v2 != 5)
  {
    v5 = v2;
    v6 = sub_1023F8();
    sub_8BE90(v6, v5);
    return;
  }

  v3 = sub_106C8C();
  if (!v3)
  {
    v7 = sub_106C18();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1023F8();
      sub_8C0B0(v9, [v8 integerValue]);

      return;
    }

    v11 = sub_1023F8();
    sub_8139C(v11);
    v13 = v12;
    v15 = v14 == 0x6573616572636E69 && v12 == 0xEA00000000007942;
    if (v15)
    {

      return;
    }

    v16 = sub_93B78();

    if (v16)
    {
      return;
    }

    sub_8139C(*(a1 + 81));
    sub_93D50();
    if (!v15 || v17 != 0xEA00000000007942)
    {
      sub_93D80();
      sub_93B78();
      sub_48350();
      sub_93C7C();
      sub_8139C(*(a1 + 81));
      sub_93BEC();
      if (v15 && v19 == 0xE600000000000000)
      {

        return;
      }

      sub_93DA8();
      sub_93AFC();

      if (v13)
      {
        return;
      }

      sub_93C58();
      sub_93BEC();
      if (!v15 || v21 != 0xE700000000000000)
      {
        sub_93DF0();
        sub_93F70();

        return;
      }
    }

    return;
  }

  v4 = v3;
  if (sub_1023F8() - 2 < 2)
  {
    v10 = [v4 integerValue];

    if (__OFSUB__(0, v10))
    {
      __break(1u);
    }
  }

  else
  {
    [v4 integerValue];
  }
}

uint64_t sub_8BE90(char a1, char a2)
{
  sub_93AD0();
  sub_8139C(v8);
  sub_93B6C();
  v10 = v10 && v9 == v4;
  if (v10)
  {

    goto LABEL_20;
  }

  sub_93BC4();
  sub_93D8C();
  sub_93E14();
  if (v3)
  {
LABEL_20:
    v21 = a2;
    v22 = &unk_172B18;
    return v22[v21];
  }

  sub_93E44();
  if (v12 == v2 + 2309 && v11 == v5)
  {

    goto LABEL_23;
  }

  sub_93B78();
  sub_93F88();
  if (v4)
  {
LABEL_23:
    v21 = a2;
    v22 = &unk_172B40;
    return v22[v21];
  }

  sub_8139C(a1);
  if (v15 == v2 && v14 == v5)
  {

    goto LABEL_25;
  }

  v17 = sub_93B78();

  if (v17)
  {
LABEL_25:
    v21 = a2;
    v22 = &unk_172B68;
    return v22[v21];
  }

  sub_941B4();
  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x8000000000186CB0;
  sub_16A744(v25);
  sub_94174();
  v26._countAndFlagsBits = 32;
  v26._object = 0xE100000000000000;
  sub_16A744(v26);
  sub_94174();
  sub_94038(" into a fan intensity");
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v18 = sub_16A584();
  sub_9DA0(v18, qword_1E65C0);
  v19 = sub_16A9A4();
  sub_386D8(v19, 0x100000000uLL, 0xD000000000000077, 0x8000000000186850, 0xD000000000000032, 0x8000000000186C70, 504, v23, v24);

  return 0;
}

unint64_t sub_8C0B0(char a1, unint64_t a2)
{
  sub_93AD0();
  sub_8139C(v8);
  sub_93B6C();
  v10 = v10 && v9 == v4;
  if (v10)
  {

    return a2;
  }

  sub_93BC4();
  sub_93D8C();
  sub_93E14();
  if ((v3 & 1) == 0)
  {
    sub_93E44();
    if (v12 == v2 + 2309 && v11 == v5)
    {

      return a2;
    }

    sub_93B78();
    sub_93F88();
    if ((v4 & 1) == 0)
    {
      sub_8139C(a1);
      v15 = v14;
      if (v16 == v2 && v14 == v5)
      {
      }

      else
      {
        v2 = sub_93B78();

        if ((v2 & 1) == 0)
        {
          v15 = 0xD000000000000015;
          v4 = "NLv4Intent";
          v5 = " into a fan intensity";
          sub_941B4();
          v24._countAndFlagsBits = 0xD000000000000017;
          v24._object = 0x8000000000186CB0;
          sub_16A744(v24);
          sub_16AD84();
          v25._countAndFlagsBits = 32;
          v25._object = 0xE100000000000000;
          sub_16A744(v25);
          v26._countAndFlagsBits = sub_16AE24();
          sub_16A744(v26);

          sub_94038(" into a fan intensity");
          v2 = v22;
          a2 = v23;
          if (qword_1E58E8 == -1)
          {
LABEL_17:
            v18 = sub_16A584();
            sub_9DA0(v18, qword_1E65C0);
            v19 = sub_16A9A4();
            sub_386D8(v19, 0x100000000uLL, v15 + 98, v4 | 0x8000000000000000, v15 + 22, (v5 | 0x8000000000000000), 521, v2, a2);

            return 0;
          }

LABEL_25:
          sub_9ED4();
          goto LABEL_17;
        }
      }

      v20 = __OFSUB__(0, a2);
      a2 = -a2;
      if (!v20)
      {
        return a2;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  return a2;
}

uint64_t sub_8C360()
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93C7C();

  v3 = sub_1023F8();
  sub_8139C(v3);
  sub_93BEC();
  v5 = v5 && v4 == 0xE600000000000000;
  if (v5)
  {
    goto LABEL_13;
  }

  sub_93DA8();
  sub_93AFC();

  if (v2)
  {
    goto LABEL_14;
  }

  sub_94080();
  sub_93BEC();
  if (v5 && v6 == 0xE300000000000000)
  {
LABEL_13:
  }

  else
  {
    sub_93BA0();
    sub_93AFC();

    if ((v2 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_14:
  sub_93A74();
  v8 = sub_102188();
  sub_81288(v8);
  sub_93B94();
  if (v5 && v9 == v0)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if ((sub_1005E4() & 1) == 0)
  {
LABEL_26:

    return 2;
  }

  v11 = sub_103570();
  if (v11)
  {
    v12 = 2 * (v11 != 4);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t sub_8C490()
{
  result = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (result)
  {

    v2 = sub_104B2C();
    v3 = v2;
    v4 = v2 + 56;
    v5 = 1 << v2[32];
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v2 + 7);
    v8 = (v5 + 63) >> 6;
    v9 = 0;
    v53 = v2 + 56;
    v54 = v8;

    if (!v7)
    {
      while (1)
      {
LABEL_6:
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          JUMPOUT(0x8CECCLL);
        }

        if (v10 >= v8)
        {
          break;
        }

        v7 = *&v4[8 * v10];
        ++v9;
        if (v7)
        {
          v9 = v10;
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    while (1)
    {
      v11 = *(*(v3 + 6) + (__clz(__rbit64(v7)) | (v9 << 6)));
      sub_109B8C();
      sub_109B8C();
      sub_8A35C(v12);
      v14 = v13;
      if (*(v13 + 16))
      {
        v15 = *(v13 + 40);
        sub_16AF14();
        sub_81C68(v11);
        sub_16A6F4();

        sub_16AF54();
        v16 = *(v14 + 32);
        sub_93DE4();
        v19 = v18 & ~v17;
        v57 = v20;
        if ((*(v20 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          break;
        }
      }

LABEL_107:
      v7 &= v7 - 1;

      v8 = v54;
      v3 = v55;
      v4 = v53;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v56 = ~v17;
    while (1)
    {
      v21 = 0xEE0072656E6F6974;
      v22 = 0x69646E6F43726961;
      switch(*(*(v14 + 48) + v19))
      {
        case 1:
          v22 = 0x756F756769626D61;
          v23 = 0x746867694C73;
          goto LABEL_38;
        case 2:
          v26 = 1768191329;
          goto LABEL_32;
        case 3:
          v22 = 0x756F536F69647561;
          v21 = 0xEB00000000656372;
          break;
        case 4:
          v21 = 0xE300000000000000;
          v22 = 7496035;
          break;
        case 5:
          v22 = 0x436574616D696C63;
          v23 = 0x6C6F72746E6FLL;
LABEL_38:
          v21 = v23 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 6:
          v21 = 0xE600000000000000;
          v22 = 0x656E69676E65;
          break;
        case 7:
          v21 = 0xE300000000000000;
          v22 = 7233894;
          break;
        case 8:
          v21 = 0xE500000000000000;
          v22 = sub_93F0C();
          break;
        case 9:
          v22 = 0x694C6472617A6168;
          v24 = 1937008743;
          goto LABEL_35;
        case 0xA:
          v28 = 1684104552;
          goto LABEL_53;
        case 0xB:
          v21 = 0xE400000000000000;
          v22 = 1685024616;
          break;
        case 0xC:
          v21 = 0xE400000000000000;
          v22 = 1852993384;
          break;
        case 0xD:
          v22 = 0x726F697265746E69;
          v27 = 0x746867694CLL;
          goto LABEL_41;
        case 0xE:
          v21 = 0xE600000000000000;
          v22 = 0x73746867696CLL;
          break;
        case 0xF:
          v21 = 0xE700000000000000;
          v22 = 0x73726F7272696DLL;
          break;
        case 0x10:
          v22 = 0x42676E696B726170;
          v24 = 1701536114;
          goto LABEL_35;
        case 0x11:
          v22 = 0x4C676E696B726170;
          v24 = 1952999273;
LABEL_35:
          v21 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x12:
          v22 = 0x6165537265776F70;
          goto LABEL_54;
        case 0x13:
          v21 = 0xE700000000000000;
          v22 = 0x656C69666F7270;
          break;
        case 0x14:
          v21 = 0xE400000000000000;
          v22 = sub_940C0();
          break;
        case 0x15:
          v21 = 0xE400000000000000;
          v22 = 1952540019;
          break;
        case 0x16:
          v22 = 0x6C6F6F4374616573;
          goto LABEL_51;
        case 0x17:
          v22 = 0x7461654874616573;
LABEL_51:
          v21 = 0xEA00000000007265;
          break;
        case 0x18:
          v21 = 0xE600000000000000;
          v22 = 0x6C616E676973;
          break;
        case 0x19:
          v22 = 0x676E697265657473;
          v25 = 1701144663;
          goto LABEL_33;
        case 0x1A:
          v22 = 0xD000000000000013;
          v21 = 0x800000000017E530;
          break;
        case 0x1B:
          v21 = 0xE700000000000000;
          v22 = 0x666F6F726E7573;
          break;
        case 0x1C:
          v28 = 1818845556;
LABEL_53:
          v22 = v28 | 0x6867694C00000000;
LABEL_54:
          v21 = 0xE900000000000074;
          break;
        case 0x1D:
          v21 = 0xE500000000000000;
          v22 = 0x7365726974;
          break;
        case 0x1E:
          v21 = 0xE500000000000000;
          v22 = 0x6B6E757274;
          break;
        case 0x1F:
          v26 = 1769171318;
LABEL_32:
          v22 = v26 | 0x53656C6200000000;
          v25 = 1634625385;
LABEL_33:
          v27 = v25 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_41:
          v21 = v27 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x20:
          v22 = 0x6E6769536E727574;
          v21 = 0xEA00000000006C61;
          break;
        case 0x21:
          v21 = 0xE700000000000000;
          v22 = sub_93B08();
          break;
        case 0x22:
          v21 = 0xE600000000000000;
          v22 = 0x776F646E6977;
          break;
        case 0x23:
          v21 = 0xE600000000000000;
          v22 = 0x737265706977;
          break;
        default:
          break;
      }

      v29 = 0x69646E6F43726961;
      v30 = 0xEE0072656E6F6974;
      switch(v11)
      {
        case 1:
          v29 = 0x756F756769626D61;
          v31 = 0x746867694C73;
          goto LABEL_82;
        case 2:
          v34 = 1768191329;
          goto LABEL_76;
        case 3:
          v29 = 0x756F536F69647561;
          v30 = 0xEB00000000656372;
          break;
        case 4:
          v30 = 0xE300000000000000;
          v29 = 7496035;
          break;
        case 5:
          v29 = 0x436574616D696C63;
          v31 = 0x6C6F72746E6FLL;
LABEL_82:
          v30 = v31 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 6:
          v30 = 0xE600000000000000;
          v29 = 0x656E69676E65;
          break;
        case 7:
          v30 = 0xE300000000000000;
          v29 = 7233894;
          break;
        case 8:
          v30 = 0xE500000000000000;
          v29 = 0x746E6F7266;
          break;
        case 9:
          v29 = 0x694C6472617A6168;
          v32 = 1937008743;
          goto LABEL_79;
        case 10:
          v36 = 1684104552;
          goto LABEL_97;
        case 11:
          v30 = 0xE400000000000000;
          v29 = 1685024616;
          break;
        case 12:
          v30 = 0xE400000000000000;
          v29 = 1852993384;
          break;
        case 13:
          v29 = 0x726F697265746E69;
          v35 = 0x746867694CLL;
          goto LABEL_85;
        case 14:
          v30 = 0xE600000000000000;
          v29 = 0x73746867696CLL;
          break;
        case 15:
          v30 = 0xE700000000000000;
          v29 = 0x73726F7272696DLL;
          break;
        case 16:
          v29 = 0x42676E696B726170;
          v32 = 1701536114;
          goto LABEL_79;
        case 17:
          v29 = 0x4C676E696B726170;
          v32 = 1952999273;
LABEL_79:
          v30 = v32 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 18:
          v29 = 0x6165537265776F70;
          goto LABEL_98;
        case 19:
          v30 = 0xE700000000000000;
          v29 = 0x656C69666F7270;
          break;
        case 20:
          v30 = 0xE400000000000000;
          v29 = 1918985586;
          break;
        case 21:
          v30 = 0xE400000000000000;
          v29 = 1952540019;
          break;
        case 22:
          v29 = 0x6C6F6F4374616573;
          goto LABEL_95;
        case 23:
          v29 = 0x7461654874616573;
LABEL_95:
          v30 = 0xEA00000000007265;
          break;
        case 24:
          v30 = 0xE600000000000000;
          v29 = 0x6C616E676973;
          break;
        case 25:
          v29 = 0x676E697265657473;
          v33 = 1701144663;
          goto LABEL_77;
        case 26:
          v29 = 0xD000000000000013;
          v30 = 0x800000000017E530;
          break;
        case 27:
          v30 = 0xE700000000000000;
          v29 = 0x666F6F726E7573;
          break;
        case 28:
          v36 = 1818845556;
LABEL_97:
          v29 = v36 | 0x6867694C00000000;
LABEL_98:
          v30 = 0xE900000000000074;
          break;
        case 29:
          v30 = 0xE500000000000000;
          v29 = 0x7365726974;
          break;
        case 30:
          v30 = 0xE500000000000000;
          v29 = 0x6B6E757274;
          break;
        case 31:
          v34 = 1769171318;
LABEL_76:
          v29 = v34 | 0x53656C6200000000;
          v33 = 1634625385;
LABEL_77:
          v35 = v33 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_85:
          v30 = v35 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 32:
          v29 = 0x6E6769536E727574;
          v30 = 0xEA00000000006C61;
          break;
        case 33:
          v30 = 0xE700000000000000;
          v29 = 0x6E776F6E6B6E75;
          break;
        case 34:
          v30 = 0xE600000000000000;
          v29 = 0x776F646E6977;
          break;
        case 35:
          v30 = 0xE600000000000000;
          v29 = 0x737265706977;
          break;
        default:
          break;
      }

      if (v22 == v29 && v21 == v30)
      {

        goto LABEL_112;
      }

      v38 = sub_16AE54();

      if (v38)
      {
        break;
      }

      v19 = (v19 + 1) & v56;
      if (((*(v57 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_107;
      }
    }

LABEL_112:

    v39 = sub_1023F8();
    sub_8139C(v39);
    if (v41 != 0x656C62616E65 || v40 != 0xE600000000000000)
    {
      sub_93E2C();
      sub_9409C();
      sub_940CC();
      sub_8139C(*(v52 + 81));
      if (v44 != 0xEE0072656E6F6974 || v43 != 0xE700000000000000)
      {
        sub_93F70();
        sub_9409C();
LABEL_126:

        return 0;
      }
    }

    sub_93D2C();
    v46 = sub_102188();
    sub_81288(v46);
    if (v48 != 0x656C62616E65 || v47 != 0xEE0072656E6F6974)
    {
      sub_16AE54();
      sub_9409C();
      goto LABEL_126;
    }

    sub_109B8C();
    sub_96E4(v11, v50);
    sub_9409C();
    sub_109B8C();
    sub_96E4(v11, v51);

    return 2;
  }

  return result;
}

uint64_t sub_8D010()
{
  v3 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v3)
  {
    return sub_10BEC();
  }

  sub_93F1C();

  v4 = sub_1023F8();
  sub_8139C(v4);
  sub_93D50();
  v6 = v6 && v5 == 0xE600000000000000;
  if (v6)
  {
  }

  else
  {
    sub_93D80();
    sub_93E2C();
    sub_48350();
    if ((v0 & 1) == 0)
    {
LABEL_26:

      return sub_10BEC();
    }
  }

  sub_93A74();
  v7 = sub_102188();
  sub_81288(v7);
  sub_93B94();
  if (v6 && v8 == v0)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v10 = sub_103570();
  sub_82B98(v10);
  sub_93D50();
  if (v6 && v11 == 0xE800000000000000)
  {
  }

  else
  {
    sub_93D80();
    sub_93FA0();
    sub_48350();
  }

  v13 = sub_104B2C();
  sub_96E4(30, v13);
  sub_93AFC();

  if ((v2 & 1) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(v3 + 121);

  if (v14 != 4)
  {
    if (!v14)
    {
      return 2;
    }

    return sub_10BEC();
  }

  return 1;
}

uint64_t sub_8D17C()
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 0;
  }

  sub_93A74();

  v3 = sub_102188();
  sub_81288(v3);
  sub_93B94();
  v5 = v5 && v4 == v0;
  if (v5)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (!sub_100794())
  {
    v0 = sub_104B2C();
    sub_96E4(6, v0);
    sub_93AFC();

    if ((v2 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = sub_1023F8();
  if (v6 == 4)
  {
    [objc_allocWithZone(NSNumber) initWithBool:0];
    goto LABEL_17;
  }

  if (v6 == 1)
  {
    [objc_allocWithZone(NSNumber) initWithBool:1];
LABEL_17:
    sub_94004();
    return v0;
  }

LABEL_14:

  return 0;
}

BOOL sub_8D278()
{
  if (!*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_103994() & 1) == 0)
  {
    sub_1021D0();
    if (!v2 || (, v3 = *(sub_104B2C() + 2), , v3))
    {
      if ((sub_104754() & 1) == 0 || (v4 = *(sub_104B2C() + 2), , v4))
      {
        v1 = 0;
      }
    }
  }

  [objc_allocWithZone(NSNumber) initWithBool:v1];
  sub_94004();
  return v1;
}

uint64_t sub_8D36C()
{
  v3 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v3)
  {
    return 0;
  }

  sub_93A74();

  v4 = sub_102188();
  sub_81288(v4);
  sub_93B94();
  v6 = v6 && v5 == v0;
  if (v6)
  {

LABEL_10:
    sub_93F1C();
    v7 = sub_1023F8();
    sub_8139C(v7);
    sub_93D50();
    if (!v6 || v8 != 0xE600000000000000)
    {
      sub_93D80();
      sub_93E2C();
      sub_48350();
      if (v0)
      {
LABEL_30:
        [objc_allocWithZone(NSNumber) initWithBool:1];
LABEL_31:
        sub_94004();
        return v0;
      }

      sub_93C58();
      sub_93BEC();
      if (v6 && v10 == 0xE700000000000000)
      {
      }

      else
      {
        sub_93DF0();
        sub_93F70();
        sub_93AFC();

        if ((v2 & 1) == 0)
        {
          if (!sub_E6A8C(*(v3 + 81), &off_1D2AB8))
          {
            goto LABEL_7;
          }

          sub_106D20();
          sub_93BE0();
          if (!v6)
          {
            goto LABEL_30;
          }

          sub_93E8C();
          v12 = sub_103A44();
          sub_82168(v12);
          v0 = v13;
          sub_93AEC();
          if (!v6 || v15 != v14)
          {
            sub_93BF8();
            sub_93AFC();

            if ((v2 & 1) == 0)
            {
              v17 = sub_104B2C();
              sub_9401C(v17);
              sub_93AFC();

              goto LABEL_7;
            }

            goto LABEL_30;
          }

          goto LABEL_29;
        }
      }

      [objc_allocWithZone(NSNumber) initWithBool:0];
      goto LABEL_31;
    }

LABEL_29:

    goto LABEL_30;
  }

  sub_93AB0();
  sub_93DFC();
  if (v0)
  {
    goto LABEL_10;
  }

LABEL_7:

  return 0;
}

uint64_t sub_8D500()
{
  v3 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v3)
  {
    return 0;
  }

  sub_93A74();

  v4 = sub_102188();
  sub_81288(v4);
  sub_93B94();
  v6 = v6 && v5 == v0;
  if (v6)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v7 = sub_104B2C();
  sub_9401C(v7);
  sub_93AFC();

  if (v2)
  {
    sub_93F1C();
    v8 = sub_1023F8();
    sub_8139C(v8);
    sub_93D50();
    if (v6 && v9 == 0xE600000000000000)
    {
    }

    else
    {
      sub_93D80();
      sub_93E2C();
      sub_48350();
      if ((v0 & 1) == 0)
      {
        sub_93C58();
        sub_93BEC();
        if (v6 && v11 == 0xE700000000000000)
        {
        }

        else
        {
          sub_93DF0();
          sub_93F70();
          sub_93AFC();

          if ((v2 & 1) == 0)
          {
            if (!sub_E6A8C(*(v3 + 81), &off_1D2AE0))
            {
              goto LABEL_21;
            }

            goto LABEL_24;
          }
        }

        [objc_allocWithZone(NSNumber) initWithBool:0];
        goto LABEL_25;
      }
    }

LABEL_24:
    [objc_allocWithZone(NSNumber) initWithBool:1];
LABEL_25:
    sub_94004();
    return v0;
  }

LABEL_21:

  return 0;
}

uint64_t sub_8D648@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_168454();
  v4 = sub_9F48(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    v11 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);

    v12 = sub_1023F8();
    if (sub_E6A8C(v12, &off_1D2B08))
    {
      sub_106D20();
      sub_93BE0();
      v14 = v14 || v13 == 4;
      if (!v14)
      {
        switch(v13)
        {
          case 1:
            v22 = [objc_opt_self() kelvin];
            goto LABEL_19;
          case 2:
            v22 = [objc_opt_self() fahrenheit];
            goto LABEL_19;
          case 3:
            v23 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_unitProvider;
            sub_16484(0, &qword_1E76A8, NSUnitTemperature_ptr);
            (*(v6 + 16))(v10, v1 + v23, v3);
            sub_16A984();
            goto LABEL_20;
          default:
            v22 = [objc_opt_self() celsius];
LABEL_19:
            v24 = v22;
LABEL_20:
            sub_16484(0, &qword_1E76A8, NSUnitTemperature_ptr);
            sub_168304();

            v25 = sub_5758(&qword_1E76A0, &qword_172B00);
            result = sub_5370(a1, 0, 1, v25);
            break;
        }

        return result;
      }
    }
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v15 = sub_16A584();
  sub_9DA0(v15, qword_1E65C0);
  v16 = sub_16A9A4();
  sub_386D8(v16, 0x4000uLL, 0xD000000000000077, 0x8000000000186850, 0xD000000000000011, 0x800000000017EFB0, 678, 0xD000000000000028, 0x8000000000186C40);
  sub_5758(&qword_1E76A0, &qword_172B00);
  v17 = sub_94114();

  return sub_5370(v17, v18, v19, v20);
}

uint64_t sub_8D970()
{
  v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v3)
  {
    return sub_10BEC();
  }

  v4 = sub_1023F8();
  if (!sub_E6A8C(v4, &off_1D2B30))
  {
    goto LABEL_29;
  }

  sub_106D20();
  v6 = (v5 & 0xFF0000) == 0x30000 || BYTE1(v5) == 4;
  if (v6)
  {
    sub_93E8C();
    v7 = sub_103A44();
    sub_82168(v7);
    sub_93AEC();
    if (v6 && v9 == v8)
    {
    }

    else
    {
      sub_93BF8();
      sub_93AFC();

      if ((v1 & 1) == 0)
      {
LABEL_24:
        v13 = sub_104B2C();
        sub_9401C(v13);
        sub_93AFC();

        if (v1)
        {
LABEL_25:
          v14 = *(v3 + 81);
          sub_8DBD0();

          if (v14 == 6)
          {
            return 3;
          }

          if (v14 == 2)
          {
            return 1;
          }

          return sub_10BEC();
        }

        sub_8DBD0();
LABEL_29:

        return sub_10BEC();
      }
    }

    sub_94080();
    sub_93BEC();
    if (v6 && v11 == 0xE300000000000000)
    {
    }

    else
    {
      sub_93BA0();
      sub_93AFC();

      if ((v1 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

  switch(BYTE1(v5))
  {
    case 1:
      sub_94128();
      sub_8139C(*(v3 + 81));
      if (v19 != v2 + 2309 || v18 != 0xEA00000000007942)
      {
        sub_93B78();
        sub_93AFC();

        goto LABEL_44;
      }

      goto LABEL_46;
    case 2:
      sub_8DBD0();

      return 3;
    case 3:
      sub_8139C(*(v3 + 81));
      sub_93BEC();
      if (v6 && v16 == 0xEA00000000007942)
      {

LABEL_44:
        sub_8DBD0();

        result = 2;
      }

      else
      {
        sub_93DF0();
        sub_93B78();
        sub_93AFC();

LABEL_46:
        sub_8DBD0();

        result = 4;
      }

      break;
    default:
      sub_8DBD0();

      return 1;
  }

  return result;
}

uint64_t sub_8DBD0()
{
  sub_16ACF4(35);
  v3._object = 0x8000000000186C20;
  v3._countAndFlagsBits = 0xD000000000000010;
  sub_16A744(v3);
  sub_106D20();
  sub_5758(&qword_1E8FE0, &qword_172270);
  v4._countAndFlagsBits = sub_16A694();
  sub_16A744(v4);

  v5._countAndFlagsBits = 0x676E697474657320;
  v5._object = 0xEF203A6E756F4E73;
  sub_16A744(v5);
  sub_103A44();
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v0 = sub_16A584();
  sub_9DA0(v0, qword_1E65C0);
  v1 = sub_16A9A4();
  sub_386D8(v1, 0x4000uLL, 0xD000000000000077, 0x8000000000186850, 0xD000000000000019, 0x800000000017EFD0, 706, 0, 0xE000000000000000);
}

uint64_t sub_8DD90()
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return sub_10BEC();
  }

  sub_93A74();

  v2 = sub_102188();
  sub_81288(v2);
  sub_93B94();
  v4 = v4 && v3 == v0;
  if (v4)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {

      return sub_10BEC();
    }
  }

  v5 = sub_1023F8();
  sub_8139C(v5);
  sub_93BEC();
  if (!v4 || v6 != 0xE300000000000000)
  {
    sub_93BA0();
    sub_93AFC();
  }

  sub_93E8C();
  v8 = sub_103A44();
  sub_82168(v8);
  sub_93AEC();
  if (!v4 || v10 != v9)
  {
    sub_93BF8();
    sub_93AFC();
  }

  sub_106D20();
  v13 = v12;

  if ((v13 & 0xFE0000) == 0x20000)
  {
    return sub_10BEC();
  }

  if ((v13 & 0x10000) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_8DEB8()
{
  v2 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v2)
  {
    return sub_10BEC();
  }

  sub_93A74();

  v3 = sub_102188();
  sub_81288(v3);
  sub_93B94();
  v5 = v5 && v4 == v0;
  if (v5)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
LABEL_19:

      return sub_10BEC();
    }
  }

  sub_104B2C();
  sub_109B8C();
  sub_100E24();
  sub_48350();

  v6 = sub_103A44();
  sub_82168(v6);
  if (v8 == 0xD000000000000013 && 0x800000000017E610 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_93BF8();
  }

  sub_106D20();
  sub_93BE0();
  if (v5 && ((v0 ^ 1) & 1) == 0 && (v10 & 1) == 0)
  {
    goto LABEL_19;
  }

  return sub_1390CC(v2);
}

uint64_t sub_8E0F4()
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93A74();

  v2 = sub_102188();
  sub_81288(v2);
  sub_93B94();
  v4 = v4 && v3 == v0;
  if (v4)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = sub_94194();
  sub_82168(v5);
  sub_93D50();
  if (v4 && v6 == 0xE900000000000072)
  {
  }

  else
  {
    sub_93D80();
    sub_93D8C();
    sub_48350();
    if ((v0 & 1) == 0)
    {
LABEL_14:

      return 2;
    }
  }

  v9 = sub_1023F8();

  if (v9 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v9 != 4);
  }
}

uint64_t sub_8E1C8()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v2)
  {
    return 3;
  }

  v3 = sub_104B2C();
  sub_10B304(&off_1D19F8, v3);
  sub_93AFC();

  if (v1)
  {
    v4 = sub_103904();
  }

  else
  {
    v4 = 1;
  }

  sub_93A74();
  v5 = sub_102188();
  sub_81288(v5);
  v8 = v7 == v1 && v6 == v3;
  if (v8)
  {
  }

  else
  {
    LOBYTE(v3) = sub_16AE54();

    if ((v3 & 1) == 0)
    {
LABEL_26:

      return 3;
    }
  }

  v9 = sub_94194();
  sub_82168(v9);
  sub_93D50();
  if (v8 && v10 == 0xE900000000000072)
  {
  }

  else
  {
    sub_93D80();
    sub_93D8C();
    sub_48350();
    if ((v3 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  switch(sub_10226C())
  {
    case 1u:
      sub_93F0C();
      goto LABEL_22;
    case 2u:
      sub_940C0();
      goto LABEL_22;
    case 3u:

      if ((v4 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    default:
LABEL_22:
      v12 = sub_93F70();

      if (!(v4 & 1 | ((v12 & 1) == 0)))
      {
        goto LABEL_26;
      }

LABEL_23:
      switch(*(v2 + 80))
      {
        case 1:
          sub_93F0C();
          goto LABEL_30;
        case 2:
          sub_940C0();
          goto LABEL_30;
        case 3:
LABEL_30:
          sub_16AE54();
          sub_93F88();
          if (sub_103904())
          {

LABEL_32:
            result = 2;
          }

          else
          {
            switch(*(v2 + 80))
            {
              case 1:

                goto LABEL_39;
              case 2:
                sub_940C0();
                break;
              default:
                break;
            }

            v14 = sub_16AE54();

            if (v14 & 1) != 0 || (v15 = *(v2 + 144), , v16 = sub_96E4(8, v15), , (v16))
            {

LABEL_39:
              result = 0;
            }

            else
            {
              switch(*(v2 + 80))
              {
                case 2:

                  goto LABEL_44;
                default:
                  v17 = sub_941D4();

                  if (v17)
                  {

LABEL_44:
                    result = 1;
                  }

                  else
                  {
                    v18 = *(v2 + 144);

                    sub_96E4(20, v18);
                    sub_614D8();

                    result = 1;
                  }

                  break;
              }
            }
          }

          break;
        default:

          goto LABEL_32;
      }

      break;
  }

  return result;
}

uint64_t sub_8E61C(uint64_t (*a1)(void))
{
  if (*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return a1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8E748(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 0;
  }

  sub_105FB8(a1);
  if (!v2)
  {
    sub_106080();
    if (!v4)
    {
      return 0;
    }

    v3 = sub_81A28();
    if (v3 > 3u)
    {
      return 0;
    }

    return qword_172B90[v3];
  }

  v3 = sub_81A28();
  if (v3 < 4u)
  {
    return qword_172B90[v3];
  }

  return 0;
}

uint64_t sub_8E7C0()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_104B2C();
  sub_96E4(23, v3);
  sub_93AFC();

  if (v1)
  {

    return 1;
  }

  else
  {
    v5 = *(v2 + 144);

    sub_96E4(22, v5);
    sub_614D8();

    return 0;
  }
}

Class sub_8E868()
{
  v3 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v3)
  {
    goto LABEL_15;
  }

  sub_93A74();

  v4 = sub_102188();
  sub_81288(v4);
  sub_93B94();
  v6 = v6 && v5 == v0;
  if (v6)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v7 = sub_104B2C();
  sub_96E4(23, v7);
  sub_93AFC();

  if ((v2 & 1) == 0)
  {
    v8 = *(v3 + 144);

    sub_96E4(22, v8);
    sub_93AFC();

LABEL_14:

LABEL_15:
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    return sub_16AAA4(0).super.super.isa;
  }

  v9 = sub_1023F8();
  if (v9 == 4)
  {
    [objc_allocWithZone(NSNumber) initWithBool:0];
  }

  else
  {
    if (v9 != 1)
    {

      return 0;
    }

    [objc_allocWithZone(NSNumber) initWithBool:1];
  }

  sub_94004();
  return v7;
}

uint64_t sub_8E9B4()
{
  v3 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v3)
  {
    return sub_10BEC();
  }

  sub_93A74();

  v4 = sub_102188();
  sub_81288(v4);
  sub_93B94();
  v6 = v6 && v5 == v0;
  if (v6)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_104B2C();
  sub_109B8C();
  sub_100E24();
  sub_9409C();

  if (v2)
  {
LABEL_10:

    return sub_10BEC();
  }

  return sub_1390CC(v3);
}

uint64_t sub_8EADC()
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93A74();

  v2 = sub_102188();
  sub_81288(v2);
  sub_93B94();
  v4 = v4 && v3 == v0;
  if (v4)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if ((sub_1051FC() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = sub_1023F8();
  if (v5 != 13)
  {
    if (v5 != 4)
    {
      if (v5 == 1)
      {

        return 1;
      }

LABEL_17:

      return 2;
    }

LABEL_15:

    return 0;
  }

  v7 = sub_105294();
  if (v7 == 2)
  {
    goto LABEL_17;
  }

  if ((v7 & 1) == 0)
  {

    return 1;
  }

  sub_93E2C();
  sub_94004();

  return v0 & 1;
}

uint64_t sub_8EC20()
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93A74();

  v3 = sub_102188();
  sub_81288(v3);
  sub_93B94();
  v5 = v5 && v4 == v0;
  if (v5)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
LABEL_21:

      return 2;
    }
  }

  v6 = sub_1043C0();
  if (v6)
  {
    if (v6 == 1)
    {
      sub_93F2C();
    }

    else
    {
      sub_93B08();
    }

    sub_93C44();
    sub_93FE8();
    sub_93AFC();

    if ((v2 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  sub_93C7C();
  v7 = sub_1023F8();
  sub_8139C(v7);
  sub_93BEC();
  if (v5 && v8 == 0xE600000000000000)
  {
    goto LABEL_28;
  }

  sub_93DA8();
  sub_93AFC();

  if (v2)
  {

LABEL_29:
    v2 = 1;
    return v2 & 1;
  }

  sub_94080();
  sub_93BEC();
  if (v5 && v11 == 0xE300000000000000)
  {
LABEL_28:

    goto LABEL_29;
  }

  sub_93BA0();
  sub_614D8();

  return v2 & 1;
}

uint64_t sub_8ED6C()
{
  v3 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v3)
  {
    return 2;
  }

  sub_93A74();

  v4 = sub_102188();
  sub_81288(v4);
  sub_93B94();
  v6 = v6 && v5 == v0;
  if (v6)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
LABEL_7:

      return 2;
    }
  }

  sub_93C7C();
  v8 = sub_1023F8();
  sub_8139C(v8);
  sub_93B94();
  v10 = v6 && v9 == 0xE600000000000000;
  v11 = 105;
  if (!v10)
  {
    sub_93DA8();
    sub_93F88();
    if (v2)
    {
      goto LABEL_29;
    }

    sub_8139C(*(v3 + 81));
    if (v13 != 0x656C6261736964 || v12 != 0xE700000000000000)
    {
      sub_93F70();
      sub_93F88();
      sub_8139C(*(v3 + 81));
      if (v16 != 0x6573616572636E69 || v15 != 0xEA00000000007942)
      {
        sub_93B78();
        sub_93F88();
        sub_8139C(*(v3 + 81));
        if (v19 != 0x6573616572636564 || v18 != 0xEA00000000007942)
        {
          sub_93B78();
          sub_93F88();
          goto LABEL_7;
        }
      }
    }
  }

LABEL_29:
  sub_8139C(*(v3 + 81));
  sub_93B94();
  if (v6 && v21 == 0xE600000000000000)
  {
LABEL_35:

    goto LABEL_36;
  }

  v23 = sub_93DA8();

  if ((v23 & 1) == 0)
  {
    sub_8139C(*(v3 + 81));
    sub_93D50();
    if (!v6 || v24 != 0xEA00000000007942)
    {
      sub_93D80();
      sub_93B78();
      sub_94004();

      return v11 & 1;
    }

    goto LABEL_35;
  }

LABEL_36:
  v11 = 1;
  return v11 & 1;
}

uint64_t sub_8EF84(uint64_t (*a1)(uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93D5C();

  v5 = sub_102188();
  sub_81288(v5);
  if (v7 == v3 && v6 == v2)
  {
  }

  else
  {
    v9 = sub_93FB8();

    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ((a1(v10) & 1) == 0)
  {
LABEL_16:

    return 2;
  }

  sub_1023F8();
  sub_94004();
  if (a1 == 1 || a1 == 13)
  {
    return 1;
  }

  if (a1 != 4)
  {
    return 2;
  }

  return 0;
}

unint64_t sub_8F058()
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 6;
  }

  sub_93A74();

  v2 = sub_102188();
  sub_81288(v2);
  sub_93B94();
  v4 = v4 && v3 == v0;
  if (v4)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {

      return 6;
    }
  }

  v5 = sub_105AC0();

  if (v5 == 5)
  {
    return 6;
  }

  return sub_F86B8(v5);
}

uint64_t sub_8F110()
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93A74();

  v2 = sub_102188();
  sub_81288(v2);
  sub_93B94();
  v4 = v4 && v3 == v0;
  if (v4)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
    if ((v0 & 1) == 0)
    {

      return 2;
    }
  }

  sub_1023F8();
  sub_94004();
  if (v0 == 1 || v0 == 13)
  {
    return 1;
  }

  if (v0 == 4)
  {
    return 0;
  }

  return 2;
}

uint64_t sub_8F1B8()
{
  if (!*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 0;
  }

  sub_100914();
  sub_93C14();
  if (v2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_8F204()
{
  if (!*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 6;
  }

  sub_100914();
  sub_93C14();
  if (v2)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_8F248()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v2)
  {
    return 0;
  }

  sub_93D2C();

  v3 = sub_102188();
  sub_81288(v3);
  sub_93F64();
  v5 = v5 && v4 == v1;
  if (v5)
  {
  }

  else
  {
    sub_375CC();
    sub_16AE54();
    sub_93E14();
    if ((v1 & 1) == 0)
    {

      return 0;
    }
  }

  v6 = sub_1023F8();
  sub_8139C(v6);
  sub_93B6C();
  if (v5 && v7 == 0xE600000000000000)
  {
  }

  else
  {
    sub_93BC4();
    sub_93E2C();
    sub_93E14();
  }

  sub_104B2C();
  sub_93FD0();
  sub_93E14();
  sub_8BC30(v2);
  v10 = v9;

  return v10;
}

uint64_t sub_8F458()
{
  if (!*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  v1 = sub_1023F8();
  sub_8139C(v1);
  sub_93B94();
  v3 = v3 && v2 == 0xEB00000000647261;
  if (v3)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
  }

  return 1;
}

uint64_t sub_8F558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedMeasurementUnitProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8F5BC(uint64_t a1)
{
  v2 = sub_5758(&qword_1E9190, &qword_172AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8F650(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_16AC14();

    if (v9)
    {

      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
    }

    else
    {
      result = sub_16AC04();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v18 = sub_8FB48(v7, result + 1);
        v19 = *(v18 + 16);
        if (*(v18 + 24) <= v19)
        {
          sub_8FD24(v19 + 1);
        }

        v20 = v8;
        sub_902DC(v20, v18);

        *v3 = v18;
LABEL_16:
        *a1 = v20;
        return 1;
      }
    }
  }

  else
  {
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    sub_16AAC4(*(v6 + 40));
    v11 = *(v6 + 32);
    sub_93DE4();
    v14 = ~v13;
    while (1)
    {
      v15 = v12 & v14;
      if (((*(v6 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
      {
        v21 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *v3;
        v20 = a2;
        sub_90574(v20, v15, isUniquelyReferenced_nonNull_native);
        *v3 = v26;
        goto LABEL_16;
      }

      v16 = *(*(v6 + 48) + 8 * v15);
      v17 = sub_16AAD4();

      if (v17)
      {
        break;
      }

      v12 = v15 + 1;
    }

    v23 = *(*(v6 + 48) + 8 * v15);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  return result;
}

void sub_8F89C()
{
  sub_94158();
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v23 = v6;
  v7 = *v0;
  v8 = *(*v0 + 40);
  sub_16AF14();
  v3(v5);
  sub_93C9C();

  sub_16AF54();
  v9 = *(v7 + 32);
  sub_93DE4();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v20 = *v0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v0;
      v22(v5, v13, isUniquelyReferenced_nonNull_native);
      *v0 = v24;
      goto LABEL_12;
    }

    v14 = (v3)(*(*(v7 + 48) + v13));
    v16 = v15;
    if (v14 == (v3)(v5) && v16 == v17)
    {
      break;
    }

    v19 = sub_16AE54();

    if (v19)
    {
      goto LABEL_11;
    }

    v10 = v13 + 1;
  }

LABEL_11:
  LOBYTE(v5) = *(*(v7 + 48) + v13);
LABEL_12:
  *v23 = v5;
  sub_9413C();
}

BOOL sub_8FA08(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_16AF14();
  sub_16A6F4();
  sub_16AF54();
  v9 = *(v7 + 32);
  sub_93DE4();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (sub_93FB8() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_908F0(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

Swift::Int sub_8FB48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_5758(&qword_1E91B0, &qword_172B10);
    v2 = sub_16ACB4();
    v15 = v2;
    sub_16ABC4();
    while (1)
    {
      if (!sub_16AC34())
      {

        return v2;
      }

      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_8FD24(v3 + 1);
      }

      v2 = v15;
      result = sub_16AAC4(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_8FD24(uint64_t a1)
{
  sub_93F4C(a1);
  sub_5758(&qword_1E91B0, &qword_172B10);
  v3 = sub_9405C();
  v4 = v3;
  if (!*(v2 + 16))
  {
LABEL_28:

    *v1 = v4;
    return;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v3 + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      ++v13;
      if (v6[v5])
      {
        sub_93C8C();
        v9 = v15 & v14;
        goto LABEL_12;
      }
    }

    sub_940E0();
    if (v26 != v27)
    {
      sub_93DE4();
      *v6 = v28;
    }

    else
    {
      sub_90A58(0, (v25 + 63) >> 6, v2 + 56);
    }

    *(v2 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    v17 = sub_16AAC4(*(v4 + 40)) & ~(-1 << *(v4 + 32));
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    sub_93B58();
LABEL_22:
    sub_93B1C();
    *(v11 + v22) |= v23;
    *(*(v4 + 48) + 8 * v24) = v16;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  sub_93B44();
  while (1)
  {
    sub_94108();
    if (v21)
    {
      if (v19)
      {
        break;
      }
    }

    if (v18 == v20)
    {
      v18 = 0;
    }

    if (*(v11 + 8 * v18) != -1)
    {
      sub_93B30();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_8FED8()
{
  sub_94158();
  v36 = v2;
  sub_93F4C(v3);
  sub_5758(v4, v5);
  v6 = sub_9405C();
  if (!*(v1 + 16))
  {
LABEL_25:

    *v0 = v6;
    sub_9413C();
    return;
  }

  v35 = v0;
  v7 = 0;
  v9 = (v1 + 56);
  v8 = *(v1 + 56);
  v10 = *(v1 + 32);
  sub_93EB4();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v16 = v6 + 56;
  if ((v12 & v11) == 0)
  {
LABEL_4:
    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v7 >= v15)
      {
        break;
      }

      ++v18;
      if (v9[v7])
      {
        sub_93C8C();
        v13 = v20 & v19;
        goto LABEL_9;
      }
    }

    sub_940E0();
    if (v32 != v33)
    {
      sub_93DE4();
      *v9 = v34;
    }

    else
    {
      sub_90A58(0, (v31 + 63) >> 6, v1 + 56);
    }

    v0 = v35;
    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_9:
    v21 = *(*(v1 + 48) + (v17 | (v7 << 6)));
    v22 = *(v6 + 40);
    sub_16AF14();
    v36(v21);
    sub_93C9C();

    v23 = sub_16AF54();
    sub_93E70(v23, *(v6 + 32));
    if (v24)
    {
      break;
    }

    sub_93B58();
LABEL_19:
    sub_93B1C();
    *(v16 + v28) |= v29;
    *(*(v6 + 48) + v30) = v21;
    ++*(v6 + 16);
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  sub_93B44();
  while (1)
  {
    sub_94108();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (*(v16 + 8 * v25) != -1)
    {
      sub_93B30();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_90080(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_5758(&qword_1E91B8, &qword_1777C0);
  result = sub_16ACA4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_90A58(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_16AF14();
    sub_16A6F4();
    result = sub_16AF54();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_902DC(uint64_t a1, uint64_t a2)
{
  sub_16AAC4(*(a2 + 40));
  v4 = *(a2 + 32);
  sub_93DE4();
  result = sub_16ABA4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_9035C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_8FED8();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_910A4();
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_16AF14();
      CarCommandsUseCase.rawValue.getter(v5);
      sub_16A6F4();

      result = sub_16AF54();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v15 = CarCommandsUseCase.rawValue.getter(*(*(v12 + 48) + a2));
        v17 = v16;
        if (v15 == CarCommandsUseCase.rawValue.getter(v5) && v17 == v18)
        {
          goto LABEL_19;
        }

        v20 = sub_16AE54();

        if (v20)
        {
          goto LABEL_20;
        }

        result = a2 + 1;
      }
    }

    result = sub_90C0C(&qword_1E91A8, &qword_172B08);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_16AE94();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

Swift::Int sub_90574(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_8FD24(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_90E94(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_16AAC4(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_16484(0, &qword_1E6310, NSNumber_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_16AAD4();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_90ABC();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_16AE94();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

Swift::Int sub_906D8(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_8FED8();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_910A4();
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_16AF14();
      sub_81C68(v5);
      sub_16A6F4();

      result = sub_16AF54();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_81C68(*(*(v12 + 48) + a2));
        v16 = v15;
        v18 = v17;
        sub_81C68(v5);
        if (v16 == v20 && v18 == v19)
        {
          goto LABEL_19;
        }

        v22 = sub_16AE54();

        if (v22)
        {
          goto LABEL_20;
        }

        result = a2 + 1;
      }
    }

    result = sub_90C0C(&qword_1E91A0, &unk_172AF0);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_16AE94();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

Swift::Int sub_908F0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_90080(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_91250(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_16AF14();
      sub_16A6F4();
      result = sub_16AF54();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_16AE54() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_90D3C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_16AE94();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_90A58(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_16E2A0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

id sub_90ABC()
{
  v1 = v0;
  sub_5758(&qword_1E91B0, &qword_172B10);
  v2 = *v0;
  v3 = sub_16AC94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_90C0C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_5758(a1, a2);
  v4 = *v2;
  v5 = sub_16AC94();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_90D3C()
{
  v1 = v0;
  sub_5758(&qword_1E91B8, &qword_1777C0);
  v2 = *v0;
  v3 = sub_16AC94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_90E94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_5758(&qword_1E91B0, &qword_172B10);
  result = sub_16ACA4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_16AAC4(v16);
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_910A4()
{
  sub_94158();
  v33 = v3;
  v4 = v0;
  v5 = *v0;
  if (*(*v0 + 24) > v6)
  {
    v7 = *(*v0 + 24);
  }

  sub_5758(v1, v2);
  v8 = sub_16ACA4();
  if (*(v5 + 16))
  {
    v32 = v4;
    v9 = 0;
    v10 = *(v5 + 56);
    v11 = *(v5 + 32);
    sub_93EB4();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    v17 = v8 + 56;
    if ((v13 & v12) != 0)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_11:
        v22 = *(*(v5 + 48) + (v18 | (v9 << 6)));
        v23 = *(v8 + 40);
        sub_16AF14();
        v33(v22);
        sub_93C9C();

        v24 = sub_16AF54();
        sub_93E70(v24, *(v8 + 32));
        if (v25)
        {
          break;
        }

        sub_93B58();
LABEL_21:
        sub_93B1C();
        *(v17 + v29) |= v30;
        *(*(v8 + 48) + v31) = v22;
        ++*(v8 + 16);
        if (!v14)
        {
          goto LABEL_6;
        }
      }

      sub_93B44();
      while (1)
      {
        sub_94108();
        if (v25)
        {
          if (v27)
          {
            break;
          }
        }

        if (v26 == v28)
        {
          v26 = 0;
        }

        if (*(v17 + 8 * v26) != -1)
        {
          sub_93B30();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_6:
      v19 = v9;
      while (1)
      {
        v9 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v9 >= v16)
        {

          v4 = v32;
          goto LABEL_25;
        }

        ++v19;
        if (*(v5 + 56 + 8 * v9))
        {
          sub_93C8C();
          v14 = v21 & v20;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v4 = v8;
    sub_9413C();
  }
}

uint64_t sub_91250(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_5758(&qword_1E91B8, &qword_1777C0);
  result = sub_16ACA4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_16AF14();

        sub_16A6F4();
        result = sub_16AF54();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void *sub_91484(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v3 = a1;
    v75[0] = a1;
    v69 = *(a1 + 16);
    if (v69)
    {
      v68 = 0x800000000017E530;
      v4 = a2 + 7;
      v5 = a1 + 32;

      v6 = 0;
      v73 = v4;
      v71 = v5;
      while (1)
      {
        v7 = *(v6 + v5);
        v6 = (v6 + 1);
        v8 = v2[5];
        sub_16AF14();
        v72 = v7;
        sub_81C68(v7);
        sub_16A6F4();

        v9 = sub_16AF54();
        v10 = -1 << *(v2 + 32);
        v11 = v9 & ~v10;
        v12 = v11 >> 6;
        v13 = 1 << v11;
        if (((1 << v11) & v4[v11 >> 6]) != 0)
        {
          break;
        }

LABEL_100:
        v4 = v73;
        v5 = v71;
        if (v6 == v69)
        {
LABEL_211:

          return v2;
        }
      }

      v14 = ~v10;
      while (1)
      {
        v15 = 0xEE0072656E6F6974;
        v16 = 0x69646E6F43726961;
        switch(*(v2[6] + v11))
        {
          case 1:
            v16 = 0x756F756769626D61;
            v17 = 0x746867694C73;
            goto LABEL_31;
          case 2:
            v20 = 1768191329;
            goto LABEL_25;
          case 3:
            v16 = 0x756F536F69647561;
            v15 = 0xEB00000000656372;
            break;
          case 4:
            v15 = 0xE300000000000000;
            v16 = 7496035;
            break;
          case 5:
            v16 = 0x436574616D696C63;
            v17 = 0x6C6F72746E6FLL;
LABEL_31:
            v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v15 = 0xE600000000000000;
            v16 = 0x656E69676E65;
            break;
          case 7:
            v15 = 0xE300000000000000;
            v16 = 7233894;
            break;
          case 8:
            v15 = 0xE500000000000000;
            v16 = 0x746E6F7266;
            break;
          case 9:
            v16 = 0x694C6472617A6168;
            v18 = 1937008743;
            goto LABEL_28;
          case 0xA:
            v22 = 1684104552;
            goto LABEL_46;
          case 0xB:
            v15 = 0xE400000000000000;
            v16 = 1685024616;
            break;
          case 0xC:
            v15 = 0xE400000000000000;
            v16 = 1852993384;
            break;
          case 0xD:
            v16 = 0x726F697265746E69;
            v21 = 0x746867694CLL;
            goto LABEL_34;
          case 0xE:
            v15 = 0xE600000000000000;
            v16 = 0x73746867696CLL;
            break;
          case 0xF:
            v15 = 0xE700000000000000;
            v16 = 0x73726F7272696DLL;
            break;
          case 0x10:
            v16 = 0x42676E696B726170;
            v18 = 1701536114;
            goto LABEL_28;
          case 0x11:
            v16 = 0x4C676E696B726170;
            v18 = 1952999273;
LABEL_28:
            v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x12:
            v16 = 0x6165537265776F70;
            goto LABEL_47;
          case 0x13:
            v15 = 0xE700000000000000;
            v16 = 0x656C69666F7270;
            break;
          case 0x14:
            v15 = 0xE400000000000000;
            v16 = 1918985586;
            break;
          case 0x15:
            v15 = 0xE400000000000000;
            v16 = 1952540019;
            break;
          case 0x16:
            v16 = 0x6C6F6F4374616573;
            goto LABEL_44;
          case 0x17:
            v16 = 0x7461654874616573;
LABEL_44:
            v15 = 0xEA00000000007265;
            break;
          case 0x18:
            v15 = 0xE600000000000000;
            v16 = 0x6C616E676973;
            break;
          case 0x19:
            v16 = 0x676E697265657473;
            v19 = 1701144663;
            goto LABEL_26;
          case 0x1A:
            v16 = 0xD000000000000013;
            v15 = v68;
            break;
          case 0x1B:
            v15 = 0xE700000000000000;
            v16 = 0x666F6F726E7573;
            break;
          case 0x1C:
            v22 = 1818845556;
LABEL_46:
            v16 = v22 | 0x6867694C00000000;
LABEL_47:
            v15 = 0xE900000000000074;
            break;
          case 0x1D:
            v15 = 0xE500000000000000;
            v16 = 0x7365726974;
            break;
          case 0x1E:
            v15 = 0xE500000000000000;
            v16 = 0x6B6E757274;
            break;
          case 0x1F:
            v20 = 1769171318;
LABEL_25:
            v16 = v20 | 0x53656C6200000000;
            v19 = 1634625385;
LABEL_26:
            v21 = v19 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_34:
            v15 = v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0x20:
            v15 = 0xEA00000000006C61;
            v16 = 0x6E6769536E727574;
            break;
          case 0x21:
            v15 = 0xE700000000000000;
            v16 = 0x6E776F6E6B6E75;
            break;
          case 0x22:
            v15 = 0xE600000000000000;
            v16 = 0x776F646E6977;
            break;
          case 0x23:
            v15 = 0xE600000000000000;
            v16 = 0x737265706977;
            break;
          default:
            break;
        }

        v23 = 0x69646E6F43726961;
        v24 = 0xEE0072656E6F6974;
        switch(v72)
        {
          case 1:
            v23 = 0x756F756769626D61;
            v25 = 0x746867694C73;
            goto LABEL_75;
          case 2:
            v28 = 1768191329;
            goto LABEL_69;
          case 3:
            v23 = 0x756F536F69647561;
            v24 = 0xEB00000000656372;
            break;
          case 4:
            v24 = 0xE300000000000000;
            v23 = 7496035;
            break;
          case 5:
            v23 = 0x436574616D696C63;
            v25 = 0x6C6F72746E6FLL;
LABEL_75:
            v24 = v25 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v24 = 0xE600000000000000;
            v23 = 0x656E69676E65;
            break;
          case 7:
            v24 = 0xE300000000000000;
            v23 = 7233894;
            break;
          case 8:
            v24 = 0xE500000000000000;
            v23 = 0x746E6F7266;
            break;
          case 9:
            v23 = 0x694C6472617A6168;
            v26 = 1937008743;
            goto LABEL_72;
          case 10:
            v30 = 1684104552;
            goto LABEL_90;
          case 11:
            v24 = 0xE400000000000000;
            v23 = 1685024616;
            break;
          case 12:
            v24 = 0xE400000000000000;
            v23 = 1852993384;
            break;
          case 13:
            v23 = 0x726F697265746E69;
            v29 = 0x746867694CLL;
            goto LABEL_78;
          case 14:
            v24 = 0xE600000000000000;
            v23 = 0x73746867696CLL;
            break;
          case 15:
            v24 = 0xE700000000000000;
            v23 = 0x73726F7272696DLL;
            break;
          case 16:
            v23 = 0x42676E696B726170;
            v26 = 1701536114;
            goto LABEL_72;
          case 17:
            v23 = 0x4C676E696B726170;
            v26 = 1952999273;
LABEL_72:
            v24 = v26 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 18:
            v23 = 0x6165537265776F70;
            goto LABEL_91;
          case 19:
            v24 = 0xE700000000000000;
            v23 = 0x656C69666F7270;
            break;
          case 20:
            v24 = 0xE400000000000000;
            v23 = 1918985586;
            break;
          case 21:
            v24 = 0xE400000000000000;
            v23 = 1952540019;
            break;
          case 22:
            v23 = 0x6C6F6F4374616573;
            goto LABEL_88;
          case 23:
            v23 = 0x7461654874616573;
LABEL_88:
            v24 = 0xEA00000000007265;
            break;
          case 24:
            v24 = 0xE600000000000000;
            v23 = 0x6C616E676973;
            break;
          case 25:
            v23 = 0x676E697265657473;
            v27 = 1701144663;
            goto LABEL_70;
          case 26:
            v23 = 0xD000000000000013;
            v24 = v68;
            break;
          case 27:
            v24 = 0xE700000000000000;
            v23 = 0x666F6F726E7573;
            break;
          case 28:
            v30 = 1818845556;
LABEL_90:
            v23 = v30 | 0x6867694C00000000;
LABEL_91:
            v24 = 0xE900000000000074;
            break;
          case 29:
            v24 = 0xE500000000000000;
            v23 = 0x7365726974;
            break;
          case 30:
            v24 = 0xE500000000000000;
            v23 = 0x6B6E757274;
            break;
          case 31:
            v28 = 1769171318;
LABEL_69:
            v23 = v28 | 0x53656C6200000000;
            v27 = 1634625385;
LABEL_70:
            v29 = v27 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_78:
            v24 = v29 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 32:
            v24 = 0xEA00000000006C61;
            v23 = 0x6E6769536E727574;
            break;
          case 33:
            v24 = 0xE700000000000000;
            v23 = 0x6E776F6E6B6E75;
            break;
          case 34:
            v24 = 0xE600000000000000;
            v23 = 0x776F646E6977;
            break;
          case 35:
            v24 = 0xE600000000000000;
            v23 = 0x737265706977;
            break;
          default:
            break;
        }

        if (v16 == v23 && v15 == v24)
        {
          break;
        }

        v32 = sub_16AE54();

        if (v32)
        {
          goto LABEL_104;
        }

        v11 = (v11 + 1) & v14;
        v12 = v11 >> 6;
        v13 = 1 << v11;
        if ((v73[v11 >> 6] & (1 << v11)) == 0)
        {
          goto LABEL_100;
        }
      }

LABEL_104:
      v75[1] = v6;
      v34 = *(v2 + 32);
      v67[0] = ((1 << v34) + 63) >> 6;
      v35 = 8 * v67[0];
      if ((v34 & 0x3Fu) > 0xD)
      {
        goto LABEL_216;
      }

      while (1)
      {
        v67[1] = v67;
        __chkstk_darwin(v33);
        v11 = v67 - ((v35 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v11, v73, v35);
        v36 = v2[2];
        v37 = *(v11 + 8 * v12) & ~v13;
        v69 = v11;
        *(v11 + 8 * v12) = v37;
        v72 = v36 - 1;
        v38 = *(v3 + 16);
        if (v6 == v38)
        {
LABEL_210:
          v2 = sub_93550(v69, v67[0], v72, v2);
          goto LABEL_211;
        }

        v13 = v73;
        v70 = v3;
        while (v6 < v38)
        {
          v39 = *(v6 + v71);
          v40 = v2[5];
          sub_16AF14();
          sub_81C68(v39);
          sub_16A6F4();

          v11 = &v74;
          v41 = sub_16AF54();
          v42 = -1 << *(v2 + 32);
          v43 = v41 & ~v42;
          v44 = v43 >> 6;
          v35 = 1 << v43;
          if (((1 << v43) & *(v13 + 8 * (v43 >> 6))) != 0)
          {
            v45 = ~v42;
            while (1)
            {
              v11 = 0xEE0072656E6F6974;
              v46 = 0x69646E6F43726961;
              switch(*(v2[6] + v43))
              {
                case 1:
                  v46 = 0x756F756769626D61;
                  v47 = 0x746867694C73;
                  goto LABEL_135;
                case 2:
                  v50 = 1768191329;
                  goto LABEL_129;
                case 3:
                  v46 = 0x756F536F69647561;
                  v11 = 0xEB00000000656372;
                  break;
                case 4:
                  v11 = 0xE300000000000000;
                  v46 = 7496035;
                  break;
                case 5:
                  v46 = 0x436574616D696C63;
                  v47 = 0x6C6F72746E6FLL;
LABEL_135:
                  v11 = v47 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                  break;
                case 6:
                  v11 = 0xE600000000000000;
                  v46 = 0x656E69676E65;
                  break;
                case 7:
                  v11 = 0xE300000000000000;
                  v46 = 7233894;
                  break;
                case 8:
                  v11 = 0xE500000000000000;
                  v46 = 0x746E6F7266;
                  break;
                case 9:
                  v46 = 0x694C6472617A6168;
                  v48 = 1937008743;
                  goto LABEL_132;
                case 0xA:
                  v52 = 1684104552;
                  goto LABEL_150;
                case 0xB:
                  v11 = 0xE400000000000000;
                  v46 = 1685024616;
                  break;
                case 0xC:
                  v11 = 0xE400000000000000;
                  v46 = 1852993384;
                  break;
                case 0xD:
                  v46 = 0x726F697265746E69;
                  v51 = 0x746867694CLL;
                  goto LABEL_138;
                case 0xE:
                  v11 = 0xE600000000000000;
                  v46 = 0x73746867696CLL;
                  break;
                case 0xF:
                  v11 = 0xE700000000000000;
                  v46 = 0x73726F7272696DLL;
                  break;
                case 0x10:
                  v46 = 0x42676E696B726170;
                  v48 = 1701536114;
                  goto LABEL_132;
                case 0x11:
                  v46 = 0x4C676E696B726170;
                  v48 = 1952999273;
LABEL_132:
                  v11 = v48 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                  break;
                case 0x12:
                  v46 = 0x6165537265776F70;
                  goto LABEL_151;
                case 0x13:
                  v11 = 0xE700000000000000;
                  v46 = 0x656C69666F7270;
                  break;
                case 0x14:
                  v11 = 0xE400000000000000;
                  v46 = 1918985586;
                  break;
                case 0x15:
                  v11 = 0xE400000000000000;
                  v46 = 1952540019;
                  break;
                case 0x16:
                  v46 = 0x6C6F6F4374616573;
                  goto LABEL_148;
                case 0x17:
                  v46 = 0x7461654874616573;
LABEL_148:
                  v11 = 0xEA00000000007265;
                  break;
                case 0x18:
                  v11 = 0xE600000000000000;
                  v46 = 0x6C616E676973;
                  break;
                case 0x19:
                  v46 = 0x676E697265657473;
                  v49 = 1701144663;
                  goto LABEL_130;
                case 0x1A:
                  v46 = 0xD000000000000013;
                  v11 = v68;
                  break;
                case 0x1B:
                  v11 = 0xE700000000000000;
                  v46 = 0x666F6F726E7573;
                  break;
                case 0x1C:
                  v52 = 1818845556;
LABEL_150:
                  v46 = v52 | 0x6867694C00000000;
LABEL_151:
                  v11 = 0xE900000000000074;
                  break;
                case 0x1D:
                  v11 = 0xE500000000000000;
                  v46 = 0x7365726974;
                  break;
                case 0x1E:
                  v11 = 0xE500000000000000;
                  v46 = 0x6B6E757274;
                  break;
                case 0x1F:
                  v50 = 1769171318;
LABEL_129:
                  v46 = v50 | 0x53656C6200000000;
                  v49 = 1634625385;
LABEL_130:
                  v51 = v49 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_138:
                  v11 = v51 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                  break;
                case 0x20:
                  v11 = 0xEA00000000006C61;
                  v46 = 0x6E6769536E727574;
                  break;
                case 0x21:
                  v11 = 0xE700000000000000;
                  v46 = 0x6E776F6E6B6E75;
                  break;
                case 0x22:
                  v11 = 0xE600000000000000;
                  v46 = 0x776F646E6977;
                  break;
                case 0x23:
                  v11 = 0xE600000000000000;
                  v46 = 0x737265706977;
                  break;
                default:
                  break;
              }

              v53 = 0x69646E6F43726961;
              v54 = 0xEE0072656E6F6974;
              switch(v39)
              {
                case 1:
                  v53 = 0x756F756769626D61;
                  v55 = 0x746867694C73;
                  goto LABEL_179;
                case 2:
                  v58 = 1768191329;
                  goto LABEL_173;
                case 3:
                  v53 = 0x756F536F69647561;
                  v54 = 0xEB00000000656372;
                  break;
                case 4:
                  v54 = 0xE300000000000000;
                  v53 = 7496035;
                  break;
                case 5:
                  v53 = 0x436574616D696C63;
                  v55 = 0x6C6F72746E6FLL;
LABEL_179:
                  v54 = v55 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                  break;
                case 6:
                  v54 = 0xE600000000000000;
                  v53 = 0x656E69676E65;
                  break;
                case 7:
                  v54 = 0xE300000000000000;
                  v53 = 7233894;
                  break;
                case 8:
                  v54 = 0xE500000000000000;
                  v53 = 0x746E6F7266;
                  break;
                case 9:
                  v53 = 0x694C6472617A6168;
                  v56 = 1937008743;
                  goto LABEL_176;
                case 10:
                  v60 = 1684104552;
                  goto LABEL_194;
                case 11:
                  v54 = 0xE400000000000000;
                  v53 = 1685024616;
                  break;
                case 12:
                  v54 = 0xE400000000000000;
                  v53 = 1852993384;
                  break;
                case 13:
                  v53 = 0x726F697265746E69;
                  v59 = 0x746867694CLL;
                  goto LABEL_182;
                case 14:
                  v54 = 0xE600000000000000;
                  v53 = 0x73746867696CLL;
                  break;
                case 15:
                  v54 = 0xE700000000000000;
                  v53 = 0x73726F7272696DLL;
                  break;
                case 16:
                  v53 = 0x42676E696B726170;
                  v56 = 1701536114;
                  goto LABEL_176;
                case 17:
                  v53 = 0x4C676E696B726170;
                  v56 = 1952999273;
LABEL_176:
                  v54 = v56 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                  break;
                case 18:
                  v53 = 0x6165537265776F70;
                  goto LABEL_195;
                case 19:
                  v54 = 0xE700000000000000;
                  v53 = 0x656C69666F7270;
                  break;
                case 20:
                  v54 = 0xE400000000000000;
                  v53 = 1918985586;
                  break;
                case 21:
                  v54 = 0xE400000000000000;
                  v53 = 1952540019;
                  break;
                case 22:
                  v53 = 0x6C6F6F4374616573;
                  goto LABEL_192;
                case 23:
                  v53 = 0x7461654874616573;
LABEL_192:
                  v54 = 0xEA00000000007265;
                  break;
                case 24:
                  v54 = 0xE600000000000000;
                  v53 = 0x6C616E676973;
                  break;
                case 25:
                  v53 = 0x676E697265657473;
                  v57 = 1701144663;
                  goto LABEL_174;
                case 26:
                  v53 = 0xD000000000000013;
                  v54 = v68;
                  break;
                case 27:
                  v54 = 0xE700000000000000;
                  v53 = 0x666F6F726E7573;
                  break;
                case 28:
                  v60 = 1818845556;
LABEL_194:
                  v53 = v60 | 0x6867694C00000000;
LABEL_195:
                  v54 = 0xE900000000000074;
                  break;
                case 29:
                  v54 = 0xE500000000000000;
                  v53 = 0x7365726974;
                  break;
                case 30:
                  v54 = 0xE500000000000000;
                  v53 = 0x6B6E757274;
                  break;
                case 31:
                  v58 = 1769171318;
LABEL_173:
                  v53 = v58 | 0x53656C6200000000;
                  v57 = 1634625385;
LABEL_174:
                  v59 = v57 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_182:
                  v54 = v59 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                  break;
                case 32:
                  v54 = 0xEA00000000006C61;
                  v53 = 0x6E6769536E727574;
                  break;
                case 33:
                  v54 = 0xE700000000000000;
                  v53 = 0x6E776F6E6B6E75;
                  break;
                case 34:
                  v54 = 0xE600000000000000;
                  v53 = 0x776F646E6977;
                  break;
                case 35:
                  v54 = 0xE600000000000000;
                  v53 = 0x737265706977;
                  break;
                default:
                  break;
              }

              if (v46 == v53 && v11 == v54)
              {
                break;
              }

              v12 = sub_16AE54();

              if (v12)
              {
                goto LABEL_206;
              }

              v43 = (v43 + 1) & v45;
              v44 = v43 >> 6;
              v13 = v73;
              v35 = 1 << v43;
              if ((v73[v43 >> 6] & (1 << v43)) == 0)
              {
                v3 = v70;
                goto LABEL_209;
              }
            }

LABEL_206:
            v3 = v70;
            v62 = v69[v44];
            v69[v44] = v62 & ~v35;
            v13 = v73;
            if ((v62 & v35) != 0)
            {
              v63 = v72 - 1;
              if (__OFSUB__(v72, 1))
              {
                goto LABEL_215;
              }

              --v72;
              if (!v63)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_211;
              }
            }
          }

LABEL_209:
          v6 = (v6 + 1);
          v38 = *(v3 + 16);
          if (v6 == v38)
          {
            goto LABEL_210;
          }
        }

        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v65 = swift_slowAlloc();
      v66 = sub_93318(v65, v67[0], v73, v67[0], v2, v11, v75);

      return v66;
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_928D8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v46 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 != v9)
  {
    v10 = a5;
    v11 = 0xEE0072656E6F6974;
    v12 = 0x69646E6F43726961;
    v48 = a3 + 56;
    do
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        JUMPOUT(0x931F8);
      }

      if (v8 >= v9)
      {
        goto LABEL_111;
      }

      v13 = *(v7 + v8 + 32);
      v10[1] = v8 + 1;
      v14 = *(v5 + 40);
      sub_16AF14();
      v49 = v13;
      sub_81C68(v13);
      sub_16A6F4();

      v15 = sub_16AF54();
      v16 = -1 << *(v5 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v48 + 8 * (v17 >> 6))) == 0)
      {
        goto LABEL_108;
      }

      v47 = ~v16;
      while (1)
      {
        v20 = v11;
        v21 = v12;
        switch(*(*(v5 + 48) + v17))
        {
          case 1:
            v21 = 0x756F756769626D61;
            v22 = 0x746867694C73;
            goto LABEL_32;
          case 2:
            v25 = 1768191329;
            goto LABEL_26;
          case 3:
            v21 = 0x756F536F69647561;
            v20 = 0xEB00000000656372;
            break;
          case 4:
            v20 = 0xE300000000000000;
            v21 = 7496035;
            break;
          case 5:
            v21 = 0x436574616D696C63;
            v22 = 0x6C6F72746E6FLL;
LABEL_32:
            v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v20 = 0xE600000000000000;
            v21 = 0x656E69676E65;
            break;
          case 7:
            v20 = 0xE300000000000000;
            v21 = 7233894;
            break;
          case 8:
            v20 = 0xE500000000000000;
            v21 = 0x746E6F7266;
            break;
          case 9:
            v21 = 0x694C6472617A6168;
            v23 = 1937008743;
            goto LABEL_29;
          case 0xA:
            v27 = 1684104552;
            goto LABEL_47;
          case 0xB:
            v20 = 0xE400000000000000;
            v21 = 1685024616;
            break;
          case 0xC:
            v20 = 0xE400000000000000;
            v21 = 1852993384;
            break;
          case 0xD:
            v21 = 0x726F697265746E69;
            v26 = 0x746867694CLL;
            goto LABEL_35;
          case 0xE:
            v20 = 0xE600000000000000;
            v21 = 0x73746867696CLL;
            break;
          case 0xF:
            v20 = 0xE700000000000000;
            v21 = 0x73726F7272696DLL;
            break;
          case 0x10:
            v21 = 0x42676E696B726170;
            v23 = 1701536114;
            goto LABEL_29;
          case 0x11:
            v21 = 0x4C676E696B726170;
            v23 = 1952999273;
LABEL_29:
            v20 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x12:
            v21 = 0x6165537265776F70;
            goto LABEL_48;
          case 0x13:
            v20 = 0xE700000000000000;
            v21 = 0x656C69666F7270;
            break;
          case 0x14:
            v20 = 0xE400000000000000;
            v21 = 1918985586;
            break;
          case 0x15:
            v20 = 0xE400000000000000;
            v21 = 1952540019;
            break;
          case 0x16:
            v21 = 0x6C6F6F4374616573;
            goto LABEL_45;
          case 0x17:
            v21 = 0x7461654874616573;
LABEL_45:
            v20 = 0xEA00000000007265;
            break;
          case 0x18:
            v20 = 0xE600000000000000;
            v21 = 0x6C616E676973;
            break;
          case 0x19:
            v21 = 0x676E697265657473;
            v24 = 1701144663;
            goto LABEL_27;
          case 0x1A:
            v21 = 0xD000000000000013;
            v20 = 0x800000000017E530;
            break;
          case 0x1B:
            v20 = 0xE700000000000000;
            v21 = 0x666F6F726E7573;
            break;
          case 0x1C:
            v27 = 1818845556;
LABEL_47:
            v21 = v27 | 0x6867694C00000000;
LABEL_48:
            v20 = 0xE900000000000074;
            break;
          case 0x1D:
            v20 = 0xE500000000000000;
            v21 = 0x7365726974;
            break;
          case 0x1E:
            v20 = 0xE500000000000000;
            v21 = 0x6B6E757274;
            break;
          case 0x1F:
            v25 = 1769171318;
LABEL_26:
            v21 = v25 | 0x53656C6200000000;
            v24 = 1634625385;
LABEL_27:
            v26 = v24 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_35:
            v20 = v26 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0x20:
            v20 = 0xEA00000000006C61;
            v21 = 0x6E6769536E727574;
            break;
          case 0x21:
            v20 = 0xE700000000000000;
            v21 = 0x6E776F6E6B6E75;
            break;
          case 0x22:
            v20 = 0xE600000000000000;
            v21 = 0x776F646E6977;
            break;
          case 0x23:
            v20 = 0xE600000000000000;
            v21 = 0x737265706977;
            break;
          default:
            break;
        }

        v28 = v12;
        v29 = v12;
        v30 = v11;
        switch(v49)
        {
          case 1:
            v29 = 0x756F756769626D61;
            v31 = 0x746867694C73;
            goto LABEL_76;
          case 2:
            v34 = 1768191329;
            goto LABEL_70;
          case 3:
            v29 = 0x756F536F69647561;
            v11 = 0xEB00000000656372;
            break;
          case 4:
            v11 = 0xE300000000000000;
            v29 = 7496035;
            break;
          case 5:
            v29 = 0x436574616D696C63;
            v31 = 0x6C6F72746E6FLL;
LABEL_76:
            v11 = v31 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v11 = 0xE600000000000000;
            v29 = 0x656E69676E65;
            break;
          case 7:
            v11 = 0xE300000000000000;
            v29 = 7233894;
            break;
          case 8:
            v11 = 0xE500000000000000;
            v29 = 0x746E6F7266;
            break;
          case 9:
            v29 = 0x694C6472617A6168;
            v32 = 1937008743;
            goto LABEL_73;
          case 10:
            v36 = 1684104552;
            goto LABEL_91;
          case 11:
            v11 = 0xE400000000000000;
            v29 = 1685024616;
            break;
          case 12:
            v11 = 0xE400000000000000;
            v29 = 1852993384;
            break;
          case 13:
            v29 = 0x726F697265746E69;
            v35 = 0x746867694CLL;
            goto LABEL_79;
          case 14:
            v11 = 0xE600000000000000;
            v29 = 0x73746867696CLL;
            break;
          case 15:
            v11 = 0xE700000000000000;
            v29 = 0x73726F7272696DLL;
            break;
          case 16:
            v29 = 0x42676E696B726170;
            v32 = 1701536114;
            goto LABEL_73;
          case 17:
            v29 = 0x4C676E696B726170;
            v32 = 1952999273;
LABEL_73:
            v11 = v32 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 18:
            v29 = 0x6165537265776F70;
            goto LABEL_92;
          case 19:
            v11 = 0xE700000000000000;
            v29 = 0x656C69666F7270;
            break;
          case 20:
            v11 = 0xE400000000000000;
            v29 = 1918985586;
            break;
          case 21:
            v11 = 0xE400000000000000;
            v29 = 1952540019;
            break;
          case 22:
            v29 = 0x6C6F6F4374616573;
            goto LABEL_89;
          case 23:
            v29 = 0x7461654874616573;
LABEL_89:
            v11 = 0xEA00000000007265;
            break;
          case 24:
            v11 = 0xE600000000000000;
            v29 = 0x6C616E676973;
            break;
          case 25:
            v29 = 0x676E697265657473;
            v33 = 1701144663;
            goto LABEL_71;
          case 26:
            v29 = 0xD000000000000013;
            v11 = 0x800000000017E530;
            break;
          case 27:
            v11 = 0xE700000000000000;
            v29 = 0x666F6F726E7573;
            break;
          case 28:
            v36 = 1818845556;
LABEL_91:
            v29 = v36 | 0x6867694C00000000;
LABEL_92:
            v11 = 0xE900000000000074;
            break;
          case 29:
            v11 = 0xE500000000000000;
            v29 = 0x7365726974;
            break;
          case 30:
            v11 = 0xE500000000000000;
            v29 = 0x6B6E757274;
            break;
          case 31:
            v34 = 1769171318;
LABEL_70:
            v29 = v34 | 0x53656C6200000000;
            v33 = 1634625385;
LABEL_71:
            v35 = v33 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_79:
            v11 = v35 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 32:
            v11 = 0xEA00000000006C61;
            v29 = 0x6E6769536E727574;
            break;
          case 33:
            v11 = 0xE700000000000000;
            v29 = 0x6E776F6E6B6E75;
            break;
          case 34:
            v11 = 0xE600000000000000;
            v29 = 0x776F646E6977;
            break;
          case 35:
            v11 = 0xE600000000000000;
            v29 = 0x737265706977;
            break;
          default:
            break;
        }

        v37 = v5;
        if (v21 == v29 && v20 == v11)
        {
          break;
        }

        v39 = sub_16AE54();

        if (v39)
        {
          goto LABEL_103;
        }

        v17 = (v17 + 1) & v47;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        v5 = v37;
        v11 = v30;
        v12 = v28;
        if ((*(v48 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          v10 = a5;
          goto LABEL_108;
        }
      }

LABEL_103:
      v40 = a1[v18];
      a1[v18] = v40 & ~v19;
      if ((v40 & v19) != 0)
      {
        v41 = v46 - 1;
        if (__OFSUB__(v46, 1))
        {
          goto LABEL_112;
        }

        v5 = v37;
        --v46;
        v11 = v30;
        v12 = v28;
        v10 = a5;
        if (!v41)
        {
          return &_swiftEmptySetSingleton;
        }
      }

      else
      {
        v5 = v37;
        v11 = v30;
        v12 = v28;
        v10 = a5;
      }

LABEL_108:
      v7 = *v10;
      v8 = v10[1];
      v9 = *(*v10 + 16);
    }

    while (v8 != v9);
  }

  return sub_93550(a1, a2, v46, v5);
}

void *sub_93318(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_928D8(a1, a2, a5, a6, a7);

  return v12;
}

void sub_933A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_5758(&qword_1E91B0, &qword_172B10);
      v8 = sub_16ACC4();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v17 = *(v9 + 40);
        v18 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
        v19 = sub_16AAC4(v17) & ~(-1 << *(v9 + 32));
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          sub_93B44();
          while (1)
          {
            sub_94108();
            if (v23)
            {
              if (v21)
              {
                goto LABEL_30;
              }
            }

            if (v20 == v22)
            {
              v20 = 0;
            }

            if (*(v12 + 8 * v20) != -1)
            {
              sub_93B30();
              goto LABEL_26;
            }
          }
        }

        sub_93B58();
LABEL_26:
        sub_93B1C();
        *(v12 + v24) |= v25;
        *(*(v9 + 48) + 8 * v26) = v18;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v11])
        {
          sub_93C8C();
          v10 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_93550(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_5758(&qword_1E91A0, &unk_172AF0);
  result = sub_16ACC4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = v9[5];
    sub_16AF14();
    sub_81C68(v16);
    sub_16A6F4();

    result = sub_16AF54();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_9376C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_16ABB4();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_16AB94();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_937CC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_16AC54();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

void sub_93820(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_16AC24();
      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    if (sub_16ABE4() == *(a4 + 36))
    {
      sub_16ABF4();
      swift_dynamicCast();
      v4 = v13;
      v7 = sub_16AAC4(*(a4 + 40));
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = *(*(a4 + 48) + 8 * v6);
        v10 = sub_16AAD4();

        if (v10)
        {
          goto LABEL_15;
        }

        v7 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v11 = *(*(a4 + 48) + 8 * v6);

  v12 = v11;
}

uint64_t sub_93A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_93A60(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_93AB0()
{

  return sub_16AE54();
}

uint64_t sub_93B78()
{

  return sub_16AE54();
}

uint64_t sub_93BA0()
{

  return sub_16AE54();
}

uint64_t sub_93BF8()
{

  return sub_16AE54();
}

void sub_93C58()
{
  v2 = *(v0 + 81);

  sub_8139C(v2);
}

uint64_t sub_93C9C()
{

  return sub_16A6F4();
}

uint64_t sub_93CC0()
{

  return sub_8AEAC(&Siri_Nlu_External_UserDialogAct.hasCancelled.getter);
}

uint64_t sub_93CE4()
{

  return sub_8AEAC(&Siri_Nlu_External_UserDialogAct.hasRejected.getter);
}

uint64_t sub_93D08()
{

  return sub_8AEAC(&Siri_Nlu_External_UserDialogAct.hasAccepted.getter);
}

uint64_t sub_93D8C()
{

  return sub_16AE54();
}

uint64_t sub_93DA8()
{

  return sub_16AE54();
}

uint64_t sub_93DFC()
{
}

uint64_t sub_93E14()
{
}

uint64_t sub_93E2C()
{

  return sub_16AE54();
}

void sub_93E44()
{

  sub_8139C(v0);
}

uint64_t sub_93E98(uint64_t a1)
{

  return sub_96E4(30, a1);
}

uint64_t sub_93EDC()
{
  v2 = *(v0 + 144);
}

uint64_t sub_93EF4()
{
}

uint64_t sub_93F4C(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t sub_93F70()
{

  return sub_16AE54();
}

uint64_t sub_93F88()
{
}

uint64_t sub_93FA0()
{

  return sub_16AE54();
}

uint64_t sub_93FB8()
{

  return sub_16AE54();
}

uint64_t sub_93FD0()
{

  return sub_96E4(7, v0);
}

uint64_t sub_93FE8()
{

  return sub_16AE54();
}

uint64_t sub_94004()
{
}

uint64_t sub_9401C(uint64_t a1)
{

  return sub_96E4(0, a1);
}

void sub_94038(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000015;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v2);
}

uint64_t sub_9405C()
{

  return sub_16ACA4();
}

void sub_94080()
{
  v2 = *(v0 + 81);

  sub_8139C(v2);
}

uint64_t sub_9409C()
{
}

void sub_940F4()
{
  v1 = *(v0 - 144);
  v3 = *(v0 - 200);
  v2 = *(v0 - 192);
}

uint64_t sub_94174()
{

  return sub_16AD84();
}

uint64_t sub_94194()
{

  return sub_103A44();
}

void sub_941B4()
{

  sub_16ACF4(49);
}

uint64_t sub_941D4()
{

  return sub_16AE54();
}

uint64_t sub_9420C(uint64_t a1, void *a2)
{
  v3 = sub_D084((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_9427C(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_9427C(uint64_t a1, uint64_t a2)
{
  sub_5758(&qword_1E6360, &qword_16E3B0);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_942EC(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return _swift_task_switch(sub_9430C, 0, 0);
}

uint64_t sub_9430C()
{
  v1 = *(v0 + 160);
  v2 = v1[1];
  v13 = *v1;
  sub_16ACF4(31);
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD00000000000001DLL;
  v15._object = 0x8000000000186DE0;
  sub_16A744(v15);
  v3 = *v1;
  v4 = *(v1 + 2);
  *(v0 + 96) = *(v1 + 1);
  *(v0 + 112) = v4;
  *(v0 + 80) = v3;
  sub_16AD84();
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 168);
  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  sub_386D8(v9, 0x800000000uLL, 0xD00000000000009ALL, 0x8000000000186D20, 0xD000000000000017, 0x8000000000186DC0, 15, v5, v6);

  v10 = sub_16A644();
  *(v0 + 176) = v10;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_94578;
  v11 = swift_continuation_init();
  *(v0 + 136) = sub_5758(&qword_1E7FF8, &qword_16FF08);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_9420C;
  *(v0 + 104) = &unk_1D6728;
  *(v0 + 112) = v11;
  [v7 changeMediaSourceWithIdentifier:v10 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_94578()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_946EC;
  }

  else
  {
    v3 = sub_94688;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_94688()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_946EC()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_9475C()
{
  v1 = [v0 currentMediaSourceIdentifier];
  v2 = sub_16A664();

  return v2;
}

uint64_t sub_947B4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4D8D0;

  return sub_942EC(a1);
}

void *sub_948E4(uint64_t a1, int a2, __n128 a3)
{
  HIDWORD(v59) = a2;
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  v57 = 0x8000000000186F30;
  v58 = 0x8000000000186EA0;
  v5 = _swiftEmptyArrayStorage;
  a3.n128_u64[0] = 136315138;
  v55 = a3;
  if (v3)
  {
    do
    {
      v60 = v3;
      sub_10824(v4, &v69);
      v6 = v70;
      v7 = v71;
      sub_D084(&v69, v70);
      v8 = (*(v7 + 8))(HIDWORD(v59), v6, v7);
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      sub_16ACF4(26);
      v73._countAndFlagsBits = 0x3A65636976726553;
      v73._object = 0xE900000000000020;
      sub_16A744(v73);
      sub_5758(&qword_1E91C0, &qword_172C40);
      sub_16AD84();
      v74._countAndFlagsBits = 0x74756D206E616320;
      v74._object = 0xED0000203A657461;
      sub_16A744(v74);
      if (v8)
      {
        v9._countAndFlagsBits = 1702195828;
      }

      else
      {
        v9._countAndFlagsBits = 0x65736C6166;
      }

      if (v8)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      v9._object = v10;
      sub_16A744(v9);

      v11 = v62;
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v12 = sub_16A584();
      sub_9DA0(v12, qword_1E65C0);
      v13 = sub_16A9A4();
      *&v62 = 0xD000000000000086;
      *(&v62 + 1) = v58;
      v67 = (&stru_20 + 15);
      v68 = 0xE100000000000000;
      sub_D030();
      v14 = (sub_16AB34() + 16);
      if (*v14)
      {
        v15 = &v14[2 * *v14];
        v17 = *v15;
        v16 = v15[1];

        *&v62 = v17;
        *(&v62 + 1) = v16;
        v75._countAndFlagsBits = 32;
        v75._object = 0xE100000000000000;
        sub_16A744(v75);
        v76._countAndFlagsBits = 0xD00000000000001FLL;
        v76._object = v57;
        sub_16A744(v76);
        v19 = *(&v62 + 1);
        v18 = v62;
      }

      else
      {

        v18 = 0xD00000000000001FLL;
        v19 = v57;
      }

      *&v62 = v18;
      *(&v62 + 1) = v19;
      v67 = (&stru_20 + 26);
      v68 = 0xE100000000000000;
      v66 = 57;
      v77._countAndFlagsBits = sub_16AE24();
      sub_16A744(v77);

      sub_94ED8(v20, v21, v22, v23, v24, v25, v26, v27, v55.n128_i64[0], v55.n128_i64[1], v56, v57, v58, v59, v60, v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);

      v28._countAndFlagsBits = sub_378D0(0x400000uLL);
      if (v28._object)
      {
        v67 = &stru_20;
        v68 = 0xE100000000000000;
        sub_16A744(v28);

        sub_94ED8(v29, v30, v31, v32, v33, v34, v35, v36, v55.n128_i64[0], v55.n128_i64[1], v56, v57, v58, v59, v61, v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);
      }

      v37 = (v11._object >> 56) & 0xF;
      if ((v11._object & 0x2000000000000000) == 0)
      {
        v37 = v11._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v67 = &stru_20;
        v68 = 0xE100000000000000;
        sub_16A744(v11);
        sub_94ED8(v38, v39, v40, v41, v42, v43, v44, v45, v55.n128_i64[0], v55.n128_i64[1], v56, v57, v58, v59, v61, v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);
      }

      v46 = v62;
      v47 = sub_16A574();
      if (os_log_type_enabled(v47, v13))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v67 = v49;
        *v48 = v55.n128_u32[0];
        v50 = sub_15BC8(v46, *(&v46 + 1), &v67);

        *(v48 + 4) = v50;
        _os_log_impl(&dword_0, v47, v13, "%s", v48, 0xCu);
        sub_D13C(v49);
      }

      else
      {
      }

      if (v8)
      {
        sub_D124(&v69, &v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1468F8(0, v5[2] + 1, 1);
          v5 = v72;
        }

        v53 = v5[2];
        v52 = v5[3];
        if (v53 >= v52 >> 1)
        {
          sub_1468F8((v52 > 1), v53 + 1, 1);
          v5 = v72;
        }

        v5[2] = v53 + 1;
        sub_D124(&v62, &v5[5 * v53 + 4]);
      }

      else
      {
        sub_D13C(&v69);
      }

      v4 += 40;
      v3 = v61 - 1;
    }

    while (v61 != 1);
  }

  return v5;
}

_BYTE *storeEnumTagSinglePayload for ServiceAvailabilityGate(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
        JUMPOUT(0x94EA0);
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

void sub_94ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  v24._countAndFlagsBits = a22;
  v24._object = a23;

  sub_16A744(v24);
}

id sub_94EF4(char *a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = a2;
  v24 = v3;
  swift_getObjectType();
  if (v5 == 162)
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, &v25);
    if (v26)
    {
      sub_D124(&v25, v27);
      v6 = [objc_allocWithZone(sub_16A484()) init];
      v7 = v28;
      v8 = v29;
      sub_D084(v27, v28);
      (*(v8 + 8))(v7, v8);
      if (v9)
      {
        sub_95578();
        v10 = sub_955F8();
      }

      else
      {
        v10 = 0;
      }

      [v6 setCarName:v10];

      v22 = swift_dynamicCastClass();
      if (!v22)
      {

        v22 = v24;
      }

      sub_D13C(v27);
      return v22;
    }

    sub_57A80(&v25);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v20 = sub_16A584();
    sub_9DA0(v20, qword_1E65C0);
    sub_16A9A4();
    sub_955CC();
    sub_955BC();
    v19 = 20;
  }

  else
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v11 = sub_16A584();
    sub_9DA0(v11, qword_1E65C0);
    sub_16A9A4();
    sub_955CC();
    sub_955BC();
    v19 = 15;
  }

  sub_386D8(v12, v13, v14, v15, v16, v17, v19, v18, v23);

  return v24;
}

id sub_95150(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  swift_getObjectType();
  v4 = [v15 carName];
  if (v3 == 162)
  {
    sub_16138(a1, v17);
    sub_95578();
    if (swift_dynamicCast())
    {

      v4 = v16;
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    sub_16A9A4();
    sub_955BC();
    sub_386D8(v6, v7, v8, v9, v10, v11, 36, v12, 0x8000000000186FF0);
  }

  v13 = [objc_allocWithZone(sub_16A484()) init];
  [v13 setCarName:v4];

  result = swift_dynamicCastClass();
  if (!result)
  {

    return v15;
  }

  return result;
}

double sub_9530C@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 162 && (v4 = [v2 carName]) != 0)
  {
    v5 = v4;
    *(a2 + 24) = sub_95578();
    *a2 = v5;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id sub_95374(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, &v19);
  if (v20)
  {
    sub_D124(&v19, v21);
    v5 = [objc_allocWithZone(v1) init];
    v6 = v22;
    v7 = v23;
    sub_D084(v21, v22);
    v8 = *(v7 + 8);
    v9 = v5;
    v8(v6, v7);
    if (v10)
    {
      sub_95578();
      v11 = sub_955F8();
    }

    else
    {
      v11 = 0;
    }

    [v9 setCarName:v11];

    v16 = sub_1693E4();
    sub_955E4(v16);
    (*(v17 + 8))(a1);
    sub_D13C(v21);
  }

  else
  {
    sub_57A80(&v19);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    v13 = sub_16A9A4();
    sub_386D8(v13, 0x10000uLL, 0xD00000000000009BLL, v2 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 55, 0xD000000000000016, v3);
    v14 = sub_1693E4();
    sub_955E4(v14);
    (*(v15 + 8))(a1);
    return 0;
  }

  return v9;
}

unint64_t sub_95578()
{
  result = qword_1E6378;
  if (!qword_1E6378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6378);
  }

  return result;
}

id sub_955F8()
{

  return sub_99BFC();
}

uint64_t type metadata accessor for CarCommandsGetTirePressureCATsSimple()
{
  result = qword_1E91C8;
  if (!qword_1E91C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_956A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 179) = v21;
  *(v9 + 136) = v20;
  *(v9 + 144) = v8;
  *(v9 + 120) = v18;
  *(v9 + 128) = v19;
  *(v9 + 178) = v17;
  *(v9 + 104) = v15;
  *(v9 + 112) = v16;
  *(v9 + 177) = v13;
  *(v9 + 88) = v12;
  *(v9 + 96) = v14;
  *(v9 + 72) = v11;
  *(v9 + 176) = a8;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  return _swift_task_switch(sub_9571C, 0, 0);
}

uint64_t sub_9571C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v6 = swift_allocObject();
  v7 = v6;
  *(v0 + 152) = v6;
  *(v6 + 16) = xmmword_172CB0;
  strcpy((v6 + 32), "tireCondition");
  *(v6 + 46) = -4864;
  *(v6 + 48) = v5;
  *(v6 + 56) = v4;
  *(v6 + 72) = &type metadata for String;
  strcpy((v6 + 80), "pressureUnit");
  *(v6 + 93) = 0;
  *(v6 + 94) = -5120;
  *(v6 + 96) = v3;
  *(v6 + 104) = v2;
  *(v6 + 120) = &type metadata for String;
  *(v6 + 128) = 0x50656E4F65726974;
  *(v6 + 136) = 0xEF6E6F697469736FLL;
  if (v1)
  {
    v8 = *(v0 + 48);
    v9 = &type metadata for String;
    v10 = v1;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
    *(v6 + 160) = 0;
  }

  v11 = *(v0 + 176);
  *(v6 + 144) = v8;
  *(v6 + 152) = v10;
  *(v6 + 168) = v9;
  *(v6 + 176) = 0x50656E4F65726974;
  *(v6 + 184) = 0xEF65727573736572;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
  }

  else
  {
    v12 = *(v0 + 64);
    v13 = &type metadata for Double;
  }

  v14 = *(v0 + 80);
  *(v6 + 192) = v12;
  *(v6 + 216) = v13;
  *(v6 + 224) = 0x506F775465726974;
  *(v6 + 232) = 0xEF6E6F697469736FLL;
  if (v14)
  {
    v15 = *(v0 + 72);
    v16 = &type metadata for String;
    v17 = v14;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v16 = 0;
    *(v6 + 256) = 0;
  }

  v18 = *(v0 + 177);
  *(v6 + 240) = v15;
  *(v6 + 248) = v17;
  *(v6 + 264) = v16;
  *(v6 + 272) = 0x506F775465726974;
  *(v6 + 280) = 0xEF65727573736572;
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    *(v6 + 296) = 0;
    *(v6 + 304) = 0;
  }

  else
  {
    v19 = *(v0 + 88);
    v20 = &type metadata for Double;
  }

  v21 = *(v0 + 104);
  *(v6 + 288) = v19;
  *(v6 + 312) = v20;
  *(v6 + 320) = 0xD000000000000011;
  *(v6 + 328) = 0x80000000001870A0;
  if (v21)
  {
    v22 = *(v0 + 96);
    v23 = &type metadata for String;
    v24 = v21;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v23 = 0;
    *(v6 + 352) = 0;
  }

  v25 = *(v0 + 178);
  *(v6 + 336) = v22;
  *(v6 + 344) = v24;
  *(v6 + 360) = v23;
  *(v6 + 368) = 0xD000000000000011;
  *(v6 + 376) = 0x80000000001870C0;
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    *(v6 + 392) = 0;
    *(v6 + 400) = 0;
  }

  else
  {
    v26 = *(v0 + 112);
    v27 = &type metadata for Double;
  }

  v28 = *(v0 + 128);
  *(v6 + 384) = v26;
  *(v6 + 408) = v27;
  *(v6 + 416) = 0xD000000000000010;
  *(v6 + 424) = 0x80000000001870E0;
  if (v28)
  {
    v29 = *(v0 + 120);
    v30 = &type metadata for String;
    v31 = v28;
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v30 = 0;
    *(v6 + 448) = 0;
  }

  v32 = *(v0 + 179);
  *(v6 + 432) = v29;
  *(v6 + 440) = v31;
  *(v6 + 456) = v30;
  *(v6 + 464) = 0xD000000000000010;
  *(v6 + 472) = 0x8000000000187100;
  if (v32)
  {
    v33 = 0;
    v34 = 0;
    *(v6 + 488) = 0;
    *(v6 + 496) = 0;
  }

  else
  {
    v33 = *(v0 + 136);
    v34 = &type metadata for Double;
  }

  *(v6 + 480) = v33;
  *(v6 + 504) = v34;
  v35 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v39 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v36 = swift_task_alloc();
  *(v0 + 160) = v36;
  *v36 = v0;
  v36[1] = sub_95AFC;
  v37 = *(v0 + 144);

  return v39(0xD000000000000030, 0x8000000000187120, v7);
}

uint64_t sub_95AFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_95C54, 0, 0);
  }

  else
  {
    v7 = *(v4 + 152);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_95C54()
{
  v1 = v0[19];

  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t sub_95CB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_95D0C(a1, a2);
}

uint64_t sub_95D0C(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_95E68(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_95F84()
{
  sub_D2DC();
  result = sub_11B48C(v0[25]);
  v0[26] = result;
  v0[27] = _swiftEmptyArrayStorage;
  if (result)
  {
    v2 = v0[25];
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = sub_16AD04();
    }

    else
    {
      if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v3 = *(v2 + 32);
    }

    v4 = v3;
    v0[28] = v3;
    v0[29] = 1;
    v5 = objc_allocWithZone(type metadata accessor for CarMediaSourceFetcher());
    v0[30] = sub_96F74(v4);
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    sub_98800(v6);

    return sub_97144();
  }

  else
  {
    v7 = v0[1];

    return v7(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_960A4(uint64_t a1)
{
  v4 = *v2;
  sub_D2A4();
  *v5 = v4;
  v4[2] = v2;
  v4[3] = v6;
  v4[4] = v7;
  v4[5] = v1;
  v9 = *(v8 + 248);
  v10 = *v2;
  sub_D2A4();
  *v11 = v10;
  v4[32] = v1;

  if (v1)
  {
    v12 = v4[27];

    v13 = sub_96714;
  }

  else
  {
    v4[33] = a1;
    v13 = sub_961D4;
  }

  return _swift_task_switch(v13, 0, 0);
}

void sub_961D4()
{
  v46 = v0;
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = 0xD000000000000023;
    v44 = *(v0 + 32);
    v3 = *(v0 + 224);
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    sub_16ACF4(45);
    v4 = *(v0 + 72);

    *(v0 + 48) = 0xD00000000000002BLL;
    *(v0 + 56) = 0x8000000000187560;
    v5 = [v3 description];
    v6 = sub_16A664();
    v8 = v7;

    v48._countAndFlagsBits = v6;
    v48._object = v8;
    sub_16A744(v48);

    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v11 = sub_16A584();
    sub_9DA0(v11, qword_1E65C0);
    v12 = sub_16A9A4();
    *(v0 + 96) = 0xD00000000000008DLL;
    *(v0 + 104) = 0x8000000000187210;
    *(v0 + 112) = 47;
    *(v0 + 120) = 0xE100000000000000;
    sub_D030();
    v13 = (sub_16AB34() + 16);
    v14 = 0x8000000000187530;
    if (*v13)
    {
      v15 = &v13[2 * *v13];
      v17 = *v15;
      v16 = v15[1];

      *(v0 + 128) = v17;
      *(v0 + 136) = v16;
      v49._countAndFlagsBits = 32;
      v49._object = 0xE100000000000000;
      sub_16A744(v49);
      v50._countAndFlagsBits = 0xD000000000000023;
      v50._object = 0x8000000000187530;
      sub_16A744(v50);
      v2 = *(v0 + 128);
      v14 = *(v0 + 136);
    }

    else
    {
    }

    *(v0 + 80) = v2;
    *(v0 + 88) = v14;
    *(v0 + 144) = 58;
    *(v0 + 152) = 0xE100000000000000;
    *(v0 + 192) = 18;
    v51._countAndFlagsBits = sub_16AE24();
    sub_16A744(v51);

    sub_16A744(*(v0 + 144));

    v20._countAndFlagsBits = sub_378D0(0x800uLL);
    if (v20._object)
    {
      *(v0 + 176) = 32;
      *(v0 + 184) = 0xE100000000000000;
      sub_16A744(v20);

      sub_16A744(*(v0 + 176));
    }

    v21 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v21 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      *(v0 + 160) = 32;
      *(v0 + 168) = 0xE100000000000000;
      v52._countAndFlagsBits = v10;
      v52._object = v9;
      sub_16A744(v52);
      sub_16A744(*(v0 + 160));
    }

    v23 = *(v0 + 80);
    v22 = *(v0 + 88);
    v24 = sub_16A574();
    if (os_log_type_enabled(v24, v12))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45 = v26;
      *v25 = 136315138;
      v27 = sub_15BC8(v23, v22, &v45);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_0, v24, v12, "%s", v25, 0xCu);
      sub_D13C(v26);
    }

    else
    {
    }

    v28 = *(v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v0 + 216);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = *(v30 + 16);
      v41 = *(v0 + 216);
      sub_10883C();
      v30 = v42;
    }

    v31 = *(v30 + 16);
    if (v31 >= *(v30 + 24) >> 1)
    {
      sub_10883C();
      v30 = v43;
    }

    v32 = *(v0 + 224);

    *(v30 + 16) = v31 + 1;
    v33 = v30 + 16 * v31;
    *(v33 + 32) = v1;
    *(v33 + 40) = v44;
    v19 = *(v0 + 232);
    *(v0 + 216) = v30;
  }

  else
  {
    v18 = *(v0 + 240);

    v19 = *(v0 + 232);
  }

  if (v19 == *(v0 + 208))
  {
    v34 = *(v0 + 8);
    v35 = *(v0 + 216);

    v34(v35);
    return;
  }

  v36 = *(v0 + 200);
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = sub_16AD04();
  }

  else
  {
    if (v19 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_35:
      __break(1u);
      return;
    }

    v37 = *(v36 + 8 * v19 + 32);
  }

  v38 = v37;
  *(v0 + 224) = v37;
  *(v0 + 232) = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  objc_allocWithZone(type metadata accessor for CarMediaSourceFetcher());
  *(v0 + 240) = sub_96F74(v38);
  v39 = swift_task_alloc();
  *(v0 + 248) = v39;
  *v39 = v0;
  sub_98800();

  sub_97144();
}

uint64_t sub_96714()
{
  sub_D2DC();
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);
  v3 = *(v0 + 256);

  return v2();
}

uint64_t sub_9677C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_D2B0();
}

void sub_96794()
{
  v1 = v0[4];
  v20 = *(v1 + 16);
  if (v20)
  {
    v2 = 0;
    v3 = v0[3];
    v4 = v1 + 32;
    v19 = v4;
LABEL_3:
    v5 = (v4 + 16 * v2);
    v6 = *v5;
    v7 = v5[1];
    v21 = v2 + 1;
    v8 = sub_11B48C(*v5);
    swift_bridgeObjectRetain_n();
    v22 = v7;
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {
        swift_bridgeObjectRelease_n();

        v2 = v21;
        v4 = v19;
        if (v21 != v20)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_16AD04();
      }

      else
      {
        if (i >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v12 = sub_9878C(v10);
      if (v13)
      {
        if (v12 == v0[2] && v13 == v3)
        {

LABEL_20:
          swift_bridgeObjectRelease_n();
          v17 = v22;
          goto LABEL_21;
        }

        v15 = v0[3];
        v16 = sub_16AE54();

        if (v16)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_18:
    v17 = 0;
    v11 = 0;
LABEL_21:
    v18 = v0[1];

    v18(v17, v11);
  }
}

uint64_t sub_9694C(void *a1, char **a2)
{
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_16ACF4(76);
  v4._countAndFlagsBits = 0xD000000000000028;
  sub_98860(v4, "ndexGivenMediaItem(_:in:)");
  v5 = [a1 description];
  v6 = sub_16A664();
  v8 = v7;

  v64._countAndFlagsBits = v6;
  v64._object = v8;
  sub_16A744(v64);

  v65._countAndFlagsBits = 544106784;
  v65._object = 0xE400000000000000;
  sub_16A744(v65);
  v9 = [a2 description];
  v10 = sub_16A664();
  v12 = v11;

  v66._countAndFlagsBits = v10;
  v66._object = v12;
  sub_16A744(v66);

  v13._countAndFlagsBits = 0xD00000000000001ALL;
  sub_98860(v13, "st multicast index for: ");
  [a1 multicast];
  v67._countAndFlagsBits = sub_16AE24();
  sub_16A744(v67);

  v14 = 0;
  v15 = 0xE000000000000000;
  if (qword_1E58E8 != -1)
  {
    goto LABEL_32;
  }

LABEL_2:
  v16 = sub_16A584();
  sub_9DA0(v16, qword_1E65C0);
  sub_16A9A4();
  sub_98824();
  sub_386D8(v17, v18, v19, v20, v21, v22, 37, v14, v15);

  v23 = [a2 mediaItems];
  if (v23)
  {
    v14 = v23;
    v24 = [v23 mediaItems];

    sub_98698();
    v25 = sub_16A7D4();

    v61 = [a1 multicast];
    v60 = sub_9878C(a1);
    v62 = _swiftEmptyArrayStorage;
    v26 = sub_11B48C(v25);
    v27 = 0;
    v15 = v25 & 0xC000000000000001;
    a2 = &off_1E2000;
    while (v26 != v27)
    {
      if (v15)
      {
        v28 = sub_16AD04();
      }

      else
      {
        if (v27 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_31;
        }

        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        sub_9ED4();
        goto LABEL_2;
      }

      v14 = [v28 frequency];
      if (v14 == [a1 frequency])
      {
        sub_16AD34();
        v30 = *(v62 + 16);
        sub_16AD64();
        sub_16AD74();
        v14 = &v62;
        sub_16AD44();
      }

      else
      {
      }

      ++v27;
    }

    v31 = v62;
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_16ACF4(48);

    v62 = 0x20646E756F46;
    v63 = 0xE600000000000000;
    sub_11B48C(v31);
    v68._countAndFlagsBits = sub_16AE24();
    sub_16A744(v68);

    v32._countAndFlagsBits = 0xD000000000000026;
    sub_98860(v32, "\nCurrent multicast index: ");
    [a1 frequency];
    v69._countAndFlagsBits = sub_16AE24();
    sub_16A744(v69);

    v33 = v62;
    v34 = v63;
    sub_16A9A4();
    sub_98824();
    sub_386D8(v35, v36, v37, v38, v39, v40, 48, v33, v34);

    result = sub_11B48C(v31);
    if (!result)
    {
LABEL_27:

      v62 = 0;
      v63 = 0xE000000000000000;
      sub_16ACF4(49);

      sub_D434();
      v62 = 0xD000000000000015;
      v63 = v49;
      v70._countAndFlagsBits = sub_16AE24();
      sub_16A744(v70);

      v50._countAndFlagsBits = 0xD000000000000018;
      sub_98860(v50, "New multicast index: ");
      v51 = v60;

      sub_5758(&qword_1E5FA0, &qword_172DD0);
      v71._countAndFlagsBits = sub_16A694();
      sub_16A744(v71);

      v52 = v62;
      v53 = v63;
      sub_16A9A4();
      sub_98824();
      sub_386D8(v54, v55, v56, v57, v58, v59, 57, v52, v53);

      return v51;
    }

    v42 = result;
    if (result >= 1)
    {
      v43 = 0;
      v44 = &off_1E2000;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v45 = sub_16AD04();
        }

        else
        {
          v45 = *(v31 + 8 * v43 + 32);
        }

        v46 = v45;
        if ([v45 v44[246]] >= v61)
        {
        }

        else
        {

          v61 = [v46 v44[246]];
          v47 = [v46 identifier];
          if (v47)
          {
            v48 = v47;
            v60 = sub_16A664();
          }

          else
          {

            v60 = 0;
          }

          v44 = &off_1E2000;
        }

        ++v43;
      }

      while (v42 != v43);
      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

id sub_96F74(void *a1)
{
  v3 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
  v4 = sub_5758(&qword_1E9268, &qword_172D50);
  sub_5370(v1 + v3, 1, 1, v4);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CarMediaSourceFetcher();
  v5 = objc_msgSendSuper2(&v7, "init");

  return v5;
}

id sub_9701C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_97B00(Strong, 0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CarMediaSourceFetcher();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for CarMediaSourceFetcher()
{
  result = qword_1E9250;
  if (!qword_1E9250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_97144()
{
  sub_D2DC();
  v1[8] = v0;
  v2 = *(*(sub_5758(&qword_1E92D0, &qword_172DB8) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = sub_5758(&qword_1E9268, &qword_172D50);
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_97244, 0, 0);
}

uint64_t sub_97244()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
  swift_beginAccess();
  sub_985C0(v3 + v4, v1);
  if (sub_9E2C(v1, 1, v2) == 1)
  {
    sub_98630(v0[9]);
  }

  else
  {
    v5 = v0[11];
    v6 = v0[8];
    (*(v5 + 32))(v0[12], v0[9], v0[10]);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    v7 = swift_allocError();
    sub_D434();
    *v8 = 0xD00000000000001BLL;
    v8[1] = v9;
    swift_storeEnumTagMultiPayload();
    v0[7] = v7;
    sub_16A854();
    sub_97728(v6);
    v10 = *(v5 + 8);
    v11 = sub_98834();
    v12(v11);
  }

  v13 = v0[8];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v15 = Strong;
    v16 = v0[8];
    v17 = swift_allocObject();
    v0[14] = v17;
    swift_unknownObjectWeakInit();
    v18 = swift_task_alloc();
    v0[15] = v18;
    *(v18 + 16) = v17;
    *(v18 + 24) = v15;
    v19 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v20 = swift_task_alloc();
    v0[16] = v20;
    v21 = sub_5758(&qword_1E92E8, &qword_172DC8);
    *v20 = v0;
    v20[1] = sub_974F4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD00000000000001DLL, 0x80000000001873B0, sub_98714, v18, v21);
  }

  else
  {
    v22 = v0[12];
    v23 = v0[9];

    v24 = v0[1];

    return v24(0, 0);
  }
}

uint64_t sub_974F4()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  v2[17] = v0;

  if (v0)
  {
    v8 = sub_97694;
  }

  else
  {
    v9 = v2[14];
    v10 = v2[15];

    v8 = sub_9760C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_9760C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);

  v5 = *(v0 + 8);
  v6 = sub_98834();

  return v7(v6);
}

uint64_t sub_97694()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);

  v5 = *(v0 + 8);
  v6 = *(v0 + 136);

  return v5();
}

void sub_97728(uint64_t a1)
{
  v2 = sub_5758(&qword_1E92D0, &qword_172DB8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_5758(&qword_1E9268, &qword_172D50);
  sub_5370(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
  swift_beginAccess();
  sub_9871C(v5, a1 + v7);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_97B00(Strong, 0);
}

void sub_9781C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_5758(&qword_1E92D0, &qword_172DB8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v21 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_5758(&qword_1E9268, &qword_172D50);
    (*(*(v11 - 8) + 16))(v8, a1, v11);
    sub_5370(v8, 0, 1, v11);
    v12 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
    swift_beginAccess();
    sub_9871C(v8, v10 + v12);
    swift_endAccess();
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_16ACF4(33);

    v22 = 0x6964644120959EE2;
    v23 = 0xAB0000000020676ELL;
    v13 = [v10 description];
    v14 = sub_16A664();
    v16 = v15;

    v24._countAndFlagsBits = v14;
    v24._object = v16;
    sub_16A744(v24);

    v25._object = 0x8000000000187310;
    v25._countAndFlagsBits = 0xD000000000000012;
    sub_16A744(v25);
    v21[1] = swift_unknownObjectWeakLoadStrong();
    sub_5758(&qword_1E92E0, &qword_172DC0);
    v26._countAndFlagsBits = sub_16A694();
    sub_16A744(v26);

    v17 = v22;
    v18 = v23;
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v19 = sub_16A584();
    sub_9DA0(v19, qword_1E65C0);
    v20 = sub_16A9A4();
    sub_386D8(v20, 0x800uLL, 0xD00000000000008DLL, 0x8000000000187210, 0xD00000000000001DLL, 0x80000000001873B0, 91, v17, v18);

    [a3 registerObserver:v10];
  }
}

id sub_97B00(void *a1, char a2)
{
  v3 = v2;
  sub_16ACF4(50);

  v6 = [v2 description];
  v7 = sub_16A664();
  v9 = v8;

  v15._countAndFlagsBits = v7;
  v15._object = v9;
  sub_16A744(v15);

  v16._countAndFlagsBits = 0xD000000000000012;
  v16._object = 0x8000000000187310;
  sub_16A744(v16);
  swift_unknownObjectWeakLoadStrong();
  sub_5758(&qword_1E92E0, &qword_172DC0);
  v17._countAndFlagsBits = sub_16A694();
  sub_16A744(v17);

  v18._countAndFlagsBits = 0x61657220726F6620;
  v18._object = 0xED0000203A6E6F73;
  sub_16A744(v18);
  v10 = 0xEF736D6574496169;
  v11._countAndFlagsBits = 0x64654D7974706D65;
  switch(a2)
  {
    case 1:
      v10 = 0x8000000000187370;
      v11._countAndFlagsBits = 0xD000000000000011;
      break;
    case 2:
      break;
    case 3:
      v10 = 0x8000000000187330;
      v11._countAndFlagsBits = 0xD000000000000019;
      break;
    default:
      v10 = 0x8000000000187390;
      v11._countAndFlagsBits = 0xD000000000000018;
      break;
  }

  v11._object = v10;
  sub_16A744(v11);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v12 = sub_16A584();
  sub_9DA0(v12, qword_1E65C0);
  v13 = sub_16A9A4();
  sub_386D8(v13, 0x800uLL, 0xD00000000000008DLL, 0x8000000000187210, 0xD000000000000018, 0x8000000000187350, 97, 0x6F6D655220969EE2, 0xAD000020676E6976);

  if (a1)
  {
    return [a1 unregisterObserver:v3];
  }

  return result;
}

void sub_97DF4()
{
  sub_97E8C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_97E8C()
{
  if (!qword_1E9260)
  {
    sub_37130(&qword_1E9268, &qword_172D50);
    v0 = sub_16AB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1E9260);
    }
  }
}

uint64_t sub_97EF0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_5758(&qword_1E9268, &qword_172D50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v51 = &v49 - v9;
  v10 = sub_5758(&qword_1E92D0, &qword_172DB8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  if (a2)
  {
    v50 = v7;
    v17 = [a2 mediaItems];
    sub_98698();
    v18 = sub_16A7D4();

    v54 = 0;
    v55 = 0xE000000000000000;
    sub_16ACF4(37);

    sub_D434();
    v54 = 0x1000000000000019;
    v55 = v19;
    v20 = [a1 description];
    v21 = sub_16A664();
    v23 = v22;

    v56._countAndFlagsBits = v21;
    v56._object = v23;
    sub_16A744(v56);

    v57._countAndFlagsBits = 0x203A736D65746920;
    v57._object = 0xE800000000000000;
    sub_16A744(v57);
    v52 = sub_11B48C(v18);
    v58._countAndFlagsBits = sub_16AE24();
    sub_16A744(v58);

    v24 = v54;
    v25 = v55;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v26 = sub_16A584();
    sub_9DA0(v26, qword_1E65C0);
    v27 = sub_16A9A4();
    sub_386D8(v27, 0x800uLL, 0xD00000000000008DLL, 0x8000000000187210, 0xD00000000000002ALL, 0x80000000001872A0, 117, v24, v25);

    v28 = a1;
    sub_97B00(a1, 3);
    v29 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
    sub_98840();
    sub_985C0(v3 + v29, v16);
    if (sub_9E2C(v16, 1, v6))
    {

      v30 = v16;
      return sub_98630(v30);
    }

    v42 = v50;
    (*(v50 + 16))(v51, v16, v6);
    sub_98630(v16);
    v52 = v18;
    v53 = a1;
    sub_16A864();
    v43 = *(v42 + 8);
    v44 = sub_98834();
    return v45(v44);
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_16ACF4(29);

    sub_D434();
    v54 = 0xD00000000000001BLL;
    v55 = v31;
    v32 = [a1 description];
    v33 = sub_16A664();
    v35 = v34;

    v59._countAndFlagsBits = v33;
    v59._object = v35;
    sub_16A744(v59);

    v36 = v54;
    v37 = v55;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v38 = sub_16A584();
    sub_9DA0(v38, qword_1E65C0);
    v39 = sub_16A9A4();
    sub_386D8(v39, 0x800uLL, 0xD00000000000008DLL, 0x8000000000187210, 0xD00000000000002ALL, 0x80000000001872A0, 111, v36, v37);

    sub_97B00(a1, 2);
    v40 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
    sub_98840();
    sub_985C0(v3 + v40, v14);
    if (sub_9E2C(v14, 1, v6))
    {
      v30 = v14;
      return sub_98630(v30);
    }

    (*(v7 + 16))(v51, v14, v6);
    sub_98630(v14);
    v52 = 0;
    v53 = 0;
    sub_16A864();
    v46 = *(v7 + 8);
    v47 = sub_98834();
    return v48(v47);
  }
}

uint64_t sub_984E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_16A664();
  }
}

uint64_t sub_98534(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_98574(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_985C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E92D0, &qword_172DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_98630(uint64_t a1)
{
  v2 = sub_5758(&qword_1E92D0, &qword_172DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_98698()
{
  result = qword_1E92D8;
  if (!qword_1E92D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E92D8);
  }

  return result;
}

uint64_t sub_986DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_9871C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E92D0, &qword_172DB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_9878C(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A664();

  return v3;
}

uint64_t sub_98840()
{

  return swift_beginAccess();
}

void sub_98860(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{

  a1._object = (a2 | 0x8000000000000000);
  sub_16A744(a1);
}

id sub_98878(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, v19);
  if (v19[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E9378, &qword_172E58);
    if (swift_dynamicCast())
    {
      if (*(&v21 + 1))
      {
        sub_D124(&v20, v23);
        sub_D084(v23, v24);
        v4 = sub_991A4();
        v5(v4);
        v7 = v6;
        if (v6)
        {
          sub_47FC4();
          sub_95578();
          v7 = sub_955F8();
        }

        v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v9 = v24;
        v10 = v25;
        sub_D084(v23, v24);
        v11 = [v8 initWithCarName:v7 signals:{(*(v10 + 16))(v9, v10)}];

        v12 = sub_1693E4();
        sub_955E4(v12);
        (*(v13 + 8))(a1);
        sub_D13C(v23);
        return v11;
      }
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {
    sub_99140(v19, &qword_1E5F80, &unk_16E7E0);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  sub_99140(&v20, &qword_1E9370, &unk_172E48);
  sub_93C20();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_386D8(v15, 0x80uLL, 0xD0000000000000A6, v1 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 66, 0xD000000000000016, v2);
  v16 = sub_1693E4();
  sub_955E4(v16);
  (*(v17 + 8))(a1);
  return 0;
}

id sub_98B04(char *a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = a2;
  v29 = v3;
  swift_getObjectType();
  if (v6 > 0xF)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_991BC();
    sub_99194();
    v17 = 17;
  }

  else
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, v30);
    if (v30[3])
    {
      sub_5758(&qword_1E5F90, &qword_170270);
      sub_5758(&qword_1E9378, &qword_172E58);
      if (swift_dynamicCast())
      {
        if (*(&v32 + 1))
        {
          sub_D124(&v31, v34);
          if (a2)
          {
            v7 = sub_16AE54();

            if ((v7 & 1) == 0)
            {
              v8 = [v29 carName];
              goto LABEL_24;
            }
          }

          else
          {
          }

          sub_D084(v34, v35);
          v20 = sub_991A4();
          v21(v20);
          v8 = v22;
          if (v22)
          {
            sub_47FC4();
            sub_95578();
            v8 = sub_955F8();
          }

          if ((a2 & 1) == 0 && (sub_16AE54() & 1) == 0)
          {
            v25 = [v29 signals];
            goto LABEL_25;
          }

LABEL_24:
          v23 = v35;
          v24 = v36;
          sub_D084(v34, v35);
          v25 = (*(v24 + 16))(v23, v24);
LABEL_25:
          v26 = [objc_allocWithZone(INActivateCarSignalIntent) initWithCarName:v8 signals:v25];

          v27 = swift_dynamicCastUnknownClass();
          if (!v27)
          {

            v27 = v29;
          }

          sub_D13C(v34);
          return v27;
        }
      }

      else
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
      }
    }

    else
    {
      sub_99140(v30, &qword_1E5F80, &unk_16E7E0);
      v31 = 0u;
      v32 = 0u;
      v33 = 0;
    }

    sub_99140(&v31, &qword_1E9370, &unk_172E48);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_991BC();
    sub_99194();
    v17 = 22;
  }

  sub_386D8(v10, v11, v12, v13, v14, v15, v17, v16, v28);

  return v29;
}

id sub_98EBC(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  swift_getObjectType();
  v5 = [v17 carName];
  v6 = [v17 signals];
  if (v4 > 0xF)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    sub_16A9A4();
    sub_99194();
    sub_386D8(v8, v9, v10, v11, v12, v13, 42, v14, 0x8000000000186FF0);
  }

  else if (a2)
  {
    sub_16138(a1, v19);
    type metadata accessor for INCarSignalOptions(0);
    if (sub_991D0())
    {
      v6 = v18;
    }
  }

  else
  {
    sub_16138(a1, v19);
    sub_95578();
    if (sub_991D0())
    {

      v5 = v18;
    }
  }

  v15 = [objc_allocWithZone(INActivateCarSignalIntent) initWithCarName:v5 signals:v6];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return v17;
  }

  return result;
}

double sub_990B0@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 <= 0xFu)
  {
    if (a1)
    {
      [v2 signals];
      v4 = sub_47FC4();
      type metadata accessor for INCarSignalOptions(v4);
LABEL_6:
      *(a2 + 24) = v5;
      *a2 = v2;
      return result;
    }

    if ([v2 carName])
    {
      sub_47FC4();
      v5 = sub_95578();
      goto LABEL_6;
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_99140(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5758(a2, a3);
  sub_955E4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_991D0()
{

  return swift_dynamicCast();
}

id sub_991F0(char *a1, char a2)
{
  v3 = v2;
  v29 = v3;
  swift_getObjectType();
  if ((a2 & 0xF0) == 0x20)
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, v30);
    if (v30[3])
    {
      sub_5758(&qword_1E5F90, &qword_170270);
      sub_5758(&qword_1E9378, &qword_172E58);
      if (swift_dynamicCast())
      {
        if (*(&v32 + 1))
        {
          sub_D124(&v31, v34);
          v6 = [objc_allocWithZone(sub_16A4A4()) init];
          if (a2)
          {
            v7 = sub_16AE54();

            if ((v7 & 1) == 0)
            {
              v8 = [v29 carName];
              goto LABEL_22;
            }
          }

          else
          {
          }

          v21 = v35;
          v20 = v36;
          sub_D084(v34, v35);
          (*(*(v20 + 8) + 8))(v21);
          if (!v22)
          {
            v23 = 0;
LABEL_24:
            [v6 setCarName:v23];

            if (a2 & 1) != 0 || (sub_16AE54())
            {
              v24 = v35;
              v25 = v36;
              sub_D084(v34, v35);
              v26 = (*(v25 + 16))(v24, v25);
            }

            else
            {
              v26 = sub_995D4();
            }

            sub_99630(v26);
            v27 = swift_dynamicCastClass();
            if (!v27)
            {

              v27 = v29;
            }

            sub_D13C(v34);
            return v27;
          }

          sub_95578();
          v8 = sub_99BFC();
LABEL_22:
          v23 = v8;
          goto LABEL_24;
        }
      }

      else
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
      }
    }

    else
    {
      sub_99140(v30, &qword_1E5F80, &unk_16E7E0);
      v31 = 0u;
      v32 = 0u;
      v33 = 0;
    }

    sub_99140(&v31, &qword_1E9370, &unk_172E48);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_99C80();
    sub_99C70();
    v17 = 22;
  }

  else
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_99C80();
    sub_99C70();
    v17 = 17;
  }

  sub_386D8(v10, v11, v12, v13, v14, v15, v17, v16, v28);

  return v29;
}

uint64_t sub_995D4()
{
  v1 = [v0 carSignal];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 unsignedIntegerValue];

  return v3;
}

void sub_99630(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a1];
  [v1 setCarSignal:v2];
}

id sub_996A0(uint64_t a1, char a2)
{
  swift_getObjectType();
  v4 = [v16 carName];
  v5 = sub_995D4();
  if ((a2 & 0xF0) == 0x20)
  {
    if (a2)
    {
      sub_16138(a1, v18);
      type metadata accessor for INCarSignalOptions(0);
      if (sub_991D0())
      {
        v5 = v17;
      }
    }

    else
    {
      sub_16138(a1, v18);
      sub_95578();
      if (sub_991D0())
      {

        v4 = v17;
      }
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v6 = sub_16A584();
    sub_9DA0(v6, qword_1E65C0);
    sub_16A9A4();
    sub_99C70();
    sub_386D8(v7, v8, v9, v10, v11, v12, 42, v13, 0x8000000000186FF0);
  }

  v14 = [objc_allocWithZone(sub_16A4A4()) init];
  [v14 setCarName:v4];
  sub_99630(v5);

  result = swift_dynamicCastClass();
  if (!result)
  {

    return v16;
  }

  return result;
}

double sub_99898@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x20)
  {
    if (a1)
    {
      v4 = sub_995D4();
      type metadata accessor for INCarSignalOptions(0);
LABEL_6:
      *(a2 + 24) = v5;
      *a2 = v4;
      return result;
    }

    v7 = [v2 carName];
    if (v7)
    {
      v4 = v7;
      v5 = sub_95578();
      goto LABEL_6;
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_99918(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, v23);
  if (v23[3])
  {
    v2 = sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E9378, &qword_172E58);
    if (swift_dynamicCast())
    {
      if (*(&v25 + 1))
      {
        sub_D124(&v24, v27);
        v5 = [objc_allocWithZone(v1) init];
        v7 = v28;
        v6 = v29;
        sub_D084(v27, v28);
        v8 = *(v6 + 8);
        v9 = *(v8 + 8);
        v10 = v5;
        v9(v7, v8);
        if (v11)
        {
          sub_95578();
          v12 = sub_99BFC();
        }

        else
        {
          v12 = 0;
        }

        [v10 setCarName:v12];

        v18 = v28;
        v19 = v29;
        sub_D084(v27, v28);
        v20 = (*(v19 + 16))(v18, v19);
        sub_99630(v20);

        v21 = sub_1693E4();
        sub_955E4(v21);
        (*(v22 + 8))(a1);
        sub_D13C(v27);
        return v10;
      }
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    sub_99140(v23, &qword_1E5F80, &unk_16E7E0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  sub_99140(&v24, &qword_1E9370, &unk_172E48);
  sub_93C20();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v13 = sub_16A584();
  sub_9DA0(v13, qword_1E65C0);
  v14 = sub_16A9A4();
  sub_386D8(v14, 0x40000uLL, 0xD0000000000000A3, v2 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 64, 0xD000000000000016, v3);
  v15 = sub_1693E4();
  sub_955E4(v15);
  (*(v16 + 8))(a1);
  return 0;
}

id sub_99BFC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_16A644();

  v2 = [v0 initWithSpokenPhrase:v1];

  return v2;
}

uint64_t sub_99C94()
{
  v1 = [v0 spokenPhrase];
  sub_16A664();

  sub_16A6E4();
}

uint64_t sub_99D0C()
{
  sub_D2DC();
  sub_9F368(v1);
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v2);
  v4 = *(v3 + 64);
  v5 = sub_486C4();
  v6 = sub_9F438(v5);
  v7 = sub_9F420(v6);
  sub_D414(v7);
  v9 = *(v8 + 64);
  *(v0 + 80) = sub_D3C8();
  v10 = sub_D388();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_99DAC()
{
  sub_10BC0();
  sub_D3A4();
  sub_9F034();
  sub_132B1C();
  sub_9F048();
  sub_9F300();
  sub_482AC();
  v0 = sub_9F3C8();
  v1 = sub_9F2B0(v0);
  sub_9EFD8(v1);
  v2 = swift_task_alloc();
  v3 = sub_9F2E4(v2);
  *v3 = v4;
  sub_9EFBC(v3);
  sub_10BD4();

  return sub_DEEF0();
}

uint64_t sub_99E54()
{
  sub_48638();
  sub_D3A4();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *(v5 + 88);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  v3[13] = v0;

  if (v0)
  {
    v10 = v3[8];
    v11 = v3[9];
    sub_93DF0();
    sub_D188(v12, v13, v14);
    sub_93DF0();
    sub_D188(v15, v16, v17);
    sub_D388();
    sub_484AC();

    return _swift_task_switch(v18, v19, v20);
  }

  else
  {
    sub_9F338();
    sub_9F278();
    sub_9F25C();

    sub_9F020();
    sub_484AC();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_99FE8()
{
  sub_D2DC();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  sub_D37C();
  v5 = v0[13];

  return v4();
}

uint64_t sub_9A058()
{
  sub_D2DC();
  sub_9F368(v1);
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v2);
  v4 = *(v3 + 64);
  v5 = sub_486C4();
  v6 = sub_9F438(v5);
  v7 = sub_9F420(v6);
  sub_D414(v7);
  v9 = *(v8 + 64);
  *(v0 + 80) = sub_D3C8();
  v10 = sub_D388();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_9A0F8()
{
  sub_10BC0();
  sub_D3A4();
  sub_9F034();
  sub_13067C();
  sub_9F048();
  sub_9F300();
  sub_482AC();
  v0 = sub_9F3C8();
  v1 = sub_9F2B0(v0);
  sub_9EFD8(v1);
  v2 = swift_task_alloc();
  v3 = sub_9F2E4(v2);
  *v3 = v4;
  sub_9EFBC(v3);
  sub_10BD4();

  return sub_DEEF0();
}

uint64_t sub_9A1A0()
{
  sub_48638();
  sub_D3A4();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *(v5 + 88);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  v3[13] = v0;

  if (v0)
  {
    v10 = v3[8];
    v11 = v3[9];
    sub_93DF0();
    sub_D188(v12, v13, v14);
    sub_93DF0();
    sub_D188(v15, v16, v17);
    sub_D388();
    sub_484AC();

    return _swift_task_switch(v18, v19, v20);
  }

  else
  {
    sub_9F338();
    sub_9F278();
    sub_9F25C();

    sub_9F020();
    sub_484AC();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_9A334()
{
  sub_D2DC();
  sub_9F368(v1);
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v2);
  v4 = *(v3 + 64);
  v5 = sub_486C4();
  v6 = sub_9F438(v5);
  v7 = sub_9F420(v6);
  sub_D414(v7);
  v9 = *(v8 + 64);
  *(v0 + 80) = sub_D3C8();
  v10 = sub_D388();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_9A3D4()
{
  sub_10BC0();
  sub_D3A4();
  sub_9F034();
  sub_132B1C();
  sub_9F048();
  sub_9F300();
  sub_482AC();
  v0 = sub_9F3C8();
  v1 = sub_9F2B0(v0);
  sub_9EFD8(v1);
  v2 = swift_task_alloc();
  v3 = sub_9F2E4(v2);
  *v3 = v4;
  sub_9EFBC(v3);
  sub_10BD4();

  return sub_DEEF0();
}

uint64_t sub_9A47C(char a1)
{
  *(v1 + 104) = a1;
  v2 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v3 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_9A550, 0, 0);
}

uint64_t sub_9A550()
{
  sub_10BC0();
  sub_D3A4();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 104);
  sub_132B1C();
  sub_9F048();
  sub_9F300();
  sub_482AC();
  *(v0 + 80) = sub_9F3C8();
  v5 = sub_16A0C4();
  sub_9EFD8(v5);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_9A628;
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  sub_10BD4();

  return sub_DEEF0();
}