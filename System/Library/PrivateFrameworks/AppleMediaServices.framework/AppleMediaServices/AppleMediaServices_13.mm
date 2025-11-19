void *sub_100140EDC(unint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a1 > 0xB)
  {
    goto LABEL_31;
  }

  if (((1 << a1) & 0xA50) != 0)
  {
    v4 = a3[2];
    if (v4)
    {
      v5 = a3 + 4;
      v3 = _swiftEmptyArrayStorage;
      do
      {
        v7 = *v5++;
        v6 = v7;
        if (v7 <= 30)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100006EA8();
          }

          v8 = _swiftEmptyArrayStorage[2];
          if (v8 >= _swiftEmptyArrayStorage[3] >> 1)
          {
            sub_1000080AC();
          }

          _swiftEmptyArrayStorage[2] = v8 + 1;
          _swiftEmptyArrayStorage[v8 + 4] = v6;
        }

        --v4;
      }

      while (v4);
      return v3;
    }

    return _swiftEmptyArrayStorage;
  }

  if (a1 != 2)
  {
LABEL_31:

    return v3;
  }

  sub_100004BF8();
  v10 = !v10 || v9 == 0;
  if (v10)
  {
    v11 = 29;
  }

  else
  {
    v11 = 28;
  }

  v12 = v3[2];
  if (!v12)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = v3 + 4;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v15 = *v13++;
    v14 = v15;
    if (v11 >= v15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100006EA8();
      }

      v16 = _swiftEmptyArrayStorage[2];
      if (v16 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_1000080AC();
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      _swiftEmptyArrayStorage[v16 + 4] = v14;
    }

    --v12;
  }

  while (v12);
  return v3;
}

uint64_t sub_100141048(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 31;
  }

  if (((1 << a1) & 0xA50) != 0)
  {
    return 30;
  }

  if (a1 != 2)
  {
    return 31;
  }

  sub_100004BF8();
  v3 = !v3 || v2 == 0;
  if (v3)
  {
    return 29;
  }

  else
  {
    return 28;
  }
}

uint64_t sub_1001410A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  v6 = result + a3;
  v7 = __OFADD__(result, a3);
  while (v4 != v3)
  {
    if (v7)
    {
      __break(1u);
      return result;
    }

    result = *(v5 + 8 * v3++);
    if (result >= v6)
    {
      return result;
    }
  }

  if (v4)
  {
    return *v5;
  }

  sub_1000ED168();
  swift_allocError();
  *v8 = 0xD00000000000001DLL;
  v8[1] = 0x8000000100274650;
  return swift_willThrow();
}

BOOL sub_100141154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SwifCron.init(_:)(amsaccountsd::SwifCron *__return_ptr retstr, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v56 = a2;
  __src[0] = 32;
  __src[1] = 0xE100000000000000;
  sub_1000BBBB0();
  v7 = StringProtocol.components<A>(separatedBy:)();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9 == 6)
  {
    v12 = 0;
    v10 = 1;
    v11 = 1;
  }

  else
  {
    if (v9 != 5)
    {

      sub_1000ED168();
      sub_100007F60();
      *v17 = 0xD00000000000003ALL;
      v17[1] = 0x8000000100274670;
      swift_willThrow();
LABEL_54:

      return;
    }

    v10 = 0;
    v11 = 0;
    v12 = 1;
  }

  if ((v11 | 4uLL) >= v9)
  {
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v52 = countAndFlagsBits;
  __dst = retstr;
  v13 = (v7 + 32 + 16 * (v11 | 4));
  v14 = *v13 == 42 && v13[1] == 0xE100000000000000;
  v15 = (v7 + 32 + 16 * v11);
  v51 = v10;
  v68 = v7 + 32;
  if (v14)
  {
    v50 = 0;
    if (v12)
    {
LABEL_35:
      v49 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v48 = v11;
    v16 = v7 + 32 + 16 * (v11 | 4);
    if (sub_100006AB4())
    {
      v50 = 0;
    }

    else
    {
      v19 = v15[4] == 42 && v15[5] == 0xE100000000000000;
      if (v19 || (sub_100006AB4()) && (v15[6] == 42 ? (v20 = v15[7] == 0xE100000000000000) : (v20 = 0), (v20 || (sub_100006AB4()) && (sub_100006AB4() & 1) == 0))
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      v50 = v21;
    }

    v13 = v16;
    v11 = v48;
    if (v12)
    {
      goto LABEL_35;
    }
  }

  if (v8[4] == 42 && v8[5] == 0xE100000000000000)
  {
    v49 = 1;
  }

  else
  {
    v49 = sub_100006AB4();
  }

LABEL_36:
  if (*v15 == 42 && v15[1] == 0xE100000000000000)
  {
    v47 = 1;
  }

  else
  {
    v47 = sub_100006AB4();
  }

  if (v15[2] == 42 && v15[3] == 0xE100000000000000)
  {
    v24 = 1;
    if ((v12 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_50:
    v28 = &off_1002B3A88;
    goto LABEL_51;
  }

  v24 = sub_100006AB4();
  if (v12)
  {
    goto LABEL_50;
  }

LABEL_47:
  v25 = v8[4];
  v26 = v8[5];

  v27 = sub_10013ED30(v25, v26, 0);
  if (v3)
  {
LABEL_53:

    goto LABEL_54;
  }

  v28 = v27;

LABEL_51:
  v29 = *v15;
  v30 = v15[1];

  v31 = sub_10013ED30(v29, v30, 1);
  if (v3)
  {

    goto LABEL_53;
  }

  v46 = v31;

  v32 = v15[2];
  v33 = v15[3];

  v45 = sub_10013ED30(v32, v33, 2);

  if ((v11 | 2uLL) >= v8[2])
  {
    goto LABEL_59;
  }

  v34 = v68 + 16 * (v11 | 2);
  v35 = *v34;
  v36 = *(v34 + 8);

  v44 = sub_10013ED30(v35, v36, 3);

  if ((v11 + 3) < v8[2])
  {
    v37 = v68 + 16 * (v11 + 3);
    v38 = *v37;
    v39 = *(v37 + 8);

    v40 = sub_10013ED30(v38, v39, 4);

    v42 = *v13;
    v41 = v13[1];

    v43 = sub_10013ED30(v42, v41, 5);

    __src[0] = v52;
    __src[1] = object;
    LOBYTE(__src[2]) = v50;
    BYTE1(__src[2]) = v51;
    BYTE2(__src[2]) = v49 & 1;
    BYTE3(__src[2]) = v47 & 1;
    BYTE4(__src[2]) = v24 & 1;
    __src[3] = v28;
    __src[4] = v46;
    __src[5] = v45;
    __src[6] = v44;
    __src[7] = v40;
    __src[8] = v43;
    v56._countAndFlagsBits = v52;
    v56._object = object;
    v57 = v50;
    v58 = v51;
    v59 = v49 & 1;
    v60 = v47 & 1;
    v61 = v24 & 1;
    v62 = v28;
    v63 = v46;
    v64 = v45;
    v65 = v44;
    v66 = v40;
    v67 = v43;
    sub_100143E48(__src, v54);
    sub_1000ED114(&v56);
    memcpy(__dst, __src, sizeof(amsaccountsd::SwifCron));
    return;
  }

LABEL_60:
  __break(1u);
}

uint64_t SwifCron.next(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002DC228, &qword_100234848);
  v5 = sub_1000030B8(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for TimeZone();
  v11 = sub_100003724(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v18 = v17 - v16;
  TimeZone.init(secondsFromGMT:)();
  if (sub_100004DFC(v9, 1, v10) == 1)
  {
    sub_10003CD48(v9, &qword_1002DC228, &qword_100234848);
    sub_1000ED168();
    sub_100007F60();
    sub_10000ABA4();
    *v19 = v20;
    v19[1] = 0x8000000100273840;
    return swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v18, v9, v10);
    SwifCron.next(from:timeZone:)(a1, v18, a2);
    return (*(v13 + 8))(v18, v10);
  }
}

void SwifCron.next(from:timeZone:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v216 = a1;
  v217 = a2;
  v200 = a3;
  v203 = type metadata accessor for Date();
  v4 = sub_100003724(v203);
  v201 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v8);
  v193 = &v188 - v9;
  v10 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v11 = sub_1000030B8(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v14);
  sub_100002DD0();
  v197 = v15;
  __chkstk_darwin(v16);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v17);
  v199 = &v188 - v18;
  v19 = sub_100099DF4(&qword_1002DC228, &qword_100234848);
  v20 = sub_1000030B8(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v206 = &v188 - v23;
  v24 = sub_100099DF4(&qword_1002DE6C0, &qword_10023B428);
  v25 = sub_1000030B8(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v205 = &v188 - v28;
  v204 = type metadata accessor for DateComponents();
  v29 = sub_100003724(v204);
  v207 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v33);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v34);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v35);
  v198 = &v188 - v36;
  v37 = type metadata accessor for Calendar.Component();
  v38 = sub_100003724(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  sub_10000306C();
  v45 = v44 - v43;
  v218 = type metadata accessor for TimeZone();
  v46 = sub_100003724(v218);
  v48 = v47;
  v50 = *(v49 + 64);
  __chkstk_darwin(v46);
  sub_10000306C();
  v53 = v52 - v51;
  v54 = type metadata accessor for Calendar.Identifier();
  v55 = sub_100003724(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  __chkstk_darwin(v55);
  sub_10000306C();
  v62 = v61 - v60;
  v215 = type metadata accessor for Calendar();
  v63 = sub_100003724(v215);
  v212 = v64;
  v66 = *(v65 + 64);
  __chkstk_darwin(v63);
  sub_10000306C();
  (*(v57 + 104))(v62, enum case for Calendar.Identifier.gregorian(_:), v54);
  Calendar.init(identifier:)();
  (*(v57 + 8))(v62, v54);
  v67 = v216;
  (*(v48 + 16))(v53, v217, v218);
  Calendar.timeZone.setter();
  v68 = v40 + 104;
  v69 = *(v40 + 104);
  v70 = sub_100003D08();
  v69(v70);
  v217 = sub_10000B03C();
  v73 = *(v40 + 8);
  v72 = (v40 + 8);
  v71 = v73;
  v74 = sub_10000AE2C();
  v73(v74);
  v75 = sub_100003D08();
  v69(v75);
  v211 = sub_10000B03C();
  v76 = sub_10000AE2C();
  v73(v76);
  v77 = sub_100003D08();
  v69(v77);
  v210 = sub_10000B03C();
  v78 = sub_10000AE2C();
  v73(v78);
  v79 = sub_100003D08();
  v69(v79);
  v208 = sub_10000B03C();
  v80 = sub_10000AE2C();
  v73(v80);
  v81 = sub_100003D08();
  v69(v81);
  v209 = sub_10000B03C();
  v82 = sub_10000AE2C();
  v73(v82);
  v83 = sub_100003D08();
  v69(v83);
  v84 = sub_10000B03C();
  v85 = sub_10000AE2C();
  v73(v85);
  v202 = v84 - 1;
  if (__OFSUB__(v84, 1))
  {
    __break(1u);
LABEL_57:
    sub_100141048(v209);
    v135 = sub_1001442D4();
    if (v3)
    {
LABEL_128:
      v104 = sub_1000080D0();
      v106 = v67;
      goto LABEL_19;
    }

    v137 = v135 == v68 && v72 == 0;
    v210 = v37;
    if (v68 < v135 || v137)
    {
      v138 = v217;
      v141 = v135 - v68;
      if (__OFSUB__(v135, v68))
      {
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

LABEL_87:
      v153 = v208;
      v140 = __OFADD__(v208, v141);
      v154 = v208 + v141;
      if (v140)
      {
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      if (v71 >= v154)
      {
        v71 = 0;
      }

      else
      {
        v140 = __OFSUB__(v154, v71);
        v154 -= v71;
        if (v140)
        {
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (v209 == 12)
        {
          sub_1001442FC();
          if (v155 == v140)
          {
            goto LABEL_121;
          }

          sub_10000B888(v102);
LABEL_108:
          if (!*(v45 + 16))
          {
LABEL_164:
            __break(1u);
            goto LABEL_165;
          }

          if (!*(v211 + 16))
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          v217 = *(v45 + 32);
          v210 = *(v211 + 32);
          v67 = v215;
          goto LABEL_47;
        }

        v140 = __OFADD__(v209++, 1);
        if (v140)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v71 = 0;
        v153 = v208;
      }

      if (v153 >= v154)
      {
        v208 = v154;
LABEL_122:
        v67 = v215;
        v217 = v138;
LABEL_47:
        v114 = sub_10000BB08();
        sub_100002728(v114, v115, v116, v67);
        sub_100007728();
        if (!__OFADD__(v69, v71))
        {
          sub_100007CE0();
          v193 = 0;
          sub_100003248();
          v190 = v210;
          LOBYTE(v189) = 0;
          v188 = v208;
          v117 = v68;
          v118 = v194;
          sub_10000F0AC(v37, v117, v119, v120, v121);
          v72 = v196;
          Calendar.date(from:)();
          v71 = v203;
          if (sub_100004DFC(v72, 1, v203) == 1)
          {
            sub_10003CD48(v72, &qword_1002DA970, &qword_1002318B0);
            sub_10000A274();
            v122 = sub_100007F60();
            sub_100006744(v122, v123);
            sub_100004630();
            v125 = v118;
LABEL_127:
            v124(v125, v204);
            goto LABEL_128;
          }

          sub_100004630();
          v152(v118, v204);
          v149 = sub_1000080D0();
          v151 = v67;
LABEL_85:
          v150(v149, v151);
          (*(v201 + 32))(v200, v72, v71);
          return;
        }

        goto LABEL_153;
      }

      v208 = v154;
      goto LABEL_108;
    }

    v138 = v217;
    v139 = 7 - v68;
    if (__OFSUB__(7, v68))
    {
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v140 = __OFADD__(v139, v135);
    v141 = v139 + v135;
    if (!v140)
    {
      goto LABEL_87;
    }

    __break(1u);
    goto LABEL_70;
  }

  v86 = sub_100003D08();
  v69(v86);
  v69 = sub_10000B03C();
  v87 = sub_10000AE2C();
  (v71)(v87);
  v88 = v213;
  v68 = v214;
  v89 = *(v214 + 17);
  v90 = *(v214 + 24);
  v91 = sub_1001410A0(v217, v90, v89 & 1);
  if (v88)
  {
    v104 = sub_1000080D0();
    v106 = v215;
    goto LABEL_19;
  }

  v92 = v91;
  v93 = *(v68 + 19);
  v94 = v89 ^ 1;
  v45 = *(v68 + 32);
  v95 = sub_1001410A0(v211, v45, v93 & v94 & 1);
  v97 = v96;
  if (!(v94 & 1 | (v92 == 0)))
  {
    v216 = v92;
    v217 = v95;
    v98 = v210;
    goto LABEL_12;
  }

  v98 = v210;
  if (v95 != v211)
  {
LABEL_11:
    v216 = v92;
    v217 = v95;
    goto LABEL_12;
  }

  if ((v93 & 1) == 0)
  {
    v95 = sub_1001410A0(v211, v45, 1);
    v97 = v99;
    goto LABEL_11;
  }

  v216 = v92;
  if (__OFADD__(v211, 1))
  {
    __break(1u);
    goto LABEL_137;
  }

  v217 = v211 + 1;
LABEL_12:
  v71 = *(v68 + 40);
  v100 = sub_1001410A0(v98, v71, v97);
  v37 = v100;
  v102 = v100 - v98;
  if (__OFSUB__(v100, v98))
  {
    __break(1u);
LABEL_121:
    sub_10000B888(v102);
    goto LABEL_122;
  }

  if (v102 >= 1)
  {
    if (*(v45 + 16))
    {
      v217 = *(v45 + 32);
      goto LABEL_17;
    }

LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

LABEL_17:
  v213 = v101;
  v211 = v71;
  v72 = *(v68 + 48);
  v103 = sub_100140EDC(v209, v69, v72);
  v210 = v37;
  v3 = 0;
  v107 = sub_1001410A0(v208, v103, v213);
  v109 = v108;
  v190 = v107;

  v71 = *(v68 + 56);
  v110 = sub_1001410A0(v209, v71, v109);
  v112 = v190;
  if (__OFSUB__(v190, v208))
  {
    goto LABEL_138;
  }

  v37 = v210;
  if (v190 - v208 >= 1)
  {
    if (!*(v90 + 16))
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    if (!*(v45 + 16))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (!*(v211 + 16))
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v113 = *(v45 + 32);
    v216 = *(v90 + 32);
    v217 = v113;
    v37 = *(v211 + 32);
  }

  if (__OFSUB__(v110, v209))
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v110 - v209 < 1)
  {
    goto LABEL_35;
  }

  if (!*(v90 + 16))
  {
    goto LABEL_143;
  }

  if (!*(v45 + 16))
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (!*(v211 + 16))
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (!v72[2])
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  sub_10000A5E4();
LABEL_35:
  if (v111 < 1)
  {
    goto LABEL_42;
  }

  if (!*(v90 + 16))
  {
    goto LABEL_146;
  }

  if (!*(v45 + 16))
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (!*(v211 + 16))
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (!v72[2])
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (!*(v71 + 16))
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  sub_10000A5E4();
  v110 = *(v71 + 32);
LABEL_42:
  v67 = v215;
  if (!*(v68 + 16))
  {
    v196 = v110;
    if (!__OFADD__(v69, v111))
    {
      v126 = v112;
      v127 = sub_10000BB08();
      v69 = v128;
      sub_100002728(v127, v129, v130, v128);
      sub_100007728();
      sub_100007CE0();
      v193 = v216;
      sub_100003248();
      v190 = v37;
      LOBYTE(v189) = 0;
      v188 = v126;
      sub_100008380();
      v72 = v199;
      Calendar.date(from:)();
      v71 = v203;
      if (sub_100004DFC(v72, 1, v203) != 1)
      {
LABEL_83:
        sub_100004630();
        v147 = sub_100013CC4();
        v148(v147);
        v149 = sub_1000080D0();
        v151 = v69;
        goto LABEL_85;
      }

      sub_10003CD48(v72, &qword_1002DA970, &qword_1002318B0);
      sub_10000A274();
      v131 = sub_100007F60();
      sub_100006744(v131, v132);
      sub_100004630();
      v133 = sub_100013CC4();
      v134(v133);
      v104 = sub_1000080D0();
      v106 = v69;
LABEL_19:
      v105(v104, v106);
      return;
    }

LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (*(v68 + 16) == 1)
  {
    if (sub_100144310() && !v213)
    {
      v210 = v37;
      v71 = 0;
      goto LABEL_47;
    }

    goto LABEL_57;
  }

  v199 = v111;
  v190 = v112;
  v196 = v110;
  if (sub_100144310() && !v213)
  {
    v189 = v69;
    v71 = 0;
    v210 = v37;
    goto LABEL_124;
  }

LABEL_70:
  sub_100141048(v209);
  v142 = sub_1001442D4();
  v144 = v142 == v68 && v72 == 0;
  v189 = v69;
  v210 = v37;
  if (v68 < v142 || v144)
  {
    v146 = v142 - v68;
    if (__OFSUB__(v142, v68))
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    goto LABEL_95;
  }

  v145 = 7 - v68;
  if (__OFSUB__(7, v68))
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v140 = __OFADD__(v145, v142);
  v146 = v145 + v142;
  if (v140)
  {
    __break(1u);
    goto LABEL_83;
  }

LABEL_95:
  v156 = v208;
  v140 = __OFADD__(v208, v146);
  v157 = v208 + v146;
  if (v140)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  if (v71 >= v157)
  {
    v71 = 0;
LABEL_114:
    if (v156 >= v157)
    {
      v208 = v157;
      goto LABEL_123;
    }

    v208 = v157;
LABEL_116:
    if (!*(v45 + 16))
    {
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    if (!*(v211 + 16))
    {
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v159 = *(v45 + 32);
    v160 = *(v211 + 32);
    goto LABEL_123;
  }

  v140 = __OFSUB__(v157, v71);
  v157 -= v71;
  if (v140)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v209 != 12)
  {
    v140 = __OFADD__(v209++, 1);
    if (v140)
    {
LABEL_169:
      __break(1u);
      return;
    }

    v71 = 0;
    v156 = v208;
    goto LABEL_114;
  }

  sub_1001442FC();
  if (v155 != v140)
  {
    sub_10000B888(v158);
    goto LABEL_116;
  }

  sub_10000B888(v158);
LABEL_123:
  v67 = v215;
LABEL_124:
  v161 = v205;
  sub_100002728(v205, 1, 1, v67);
  v162 = v206;
  sub_100002728(v206, 1, 1, v218);
  if (__OFADD__(v189, v71))
  {
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v165 = v195;
  sub_10000F0AC(v161, v162, v163, v164, v189 + v71);
  v166 = v197;
  Calendar.date(from:)();
  v167 = v203;
  if (sub_100004DFC(v166, 1, v203) == 1)
  {
    sub_10003CD48(v166, &qword_1002DA970, &qword_1002318B0);
    sub_10000A274();
    v168 = sub_100007F60();
    sub_100006744(v168, v169);
    sub_100004630();
    v125 = v165;
    goto LABEL_127;
  }

  v170 = *(v207 + 8);
  v207 += 8;
  v215 = v170;
  (v170)(v165, v204);
  v214 = *(v201 + 32);
  (v214)(v193, v166, v167);
  if (__OFADD__(v189, v199))
  {
    goto LABEL_155;
  }

  v171 = sub_10000BB08();
  sub_100002728(v171, v172, v173, v67);
  sub_100007728();
  sub_100003248();
  sub_100008380();
  v174 = v192;
  Calendar.date(from:)();
  if (sub_100004DFC(v174, 1, v167) == 1)
  {
    sub_10003CD48(v174, &qword_1002DA970, &qword_1002318B0);
    sub_10000A274();
    v175 = sub_100007F60();
    sub_100006744(v175, v176);
    v177 = sub_100013CC4();
    v215(v177);
    (*(v201 + 8))(v193, v167);
    goto LABEL_128;
  }

  v178 = sub_100013CC4();
  v215(v178);
  v179 = v191;
  v180 = v214;
  (v214)(v191, v174, v167);
  v181 = v193;
  v182 = static Date.< infix(_:_:)();
  v183 = sub_1000080D0();
  v184(v183, v67);
  v185 = *(v201 + 8);
  if (v182)
  {
    v185(v179, v167);
    v186 = v200;
    v187 = v181;
  }

  else
  {
    v185(v181, v167);
    v186 = v200;
    v187 = v179;
  }

  v180(v186, v187, v167);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SwifCron.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

uint64_t static SwifCron.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || ((*(a1 + 17) ^ *(a2 + 17)) & 1) != 0 || ((*(a1 + 18) ^ *(a2 + 18)) & 1) != 0 || ((*(a1 + 19) ^ *(a2 + 19)) & 1) != 0 || ((*(a1 + 20) ^ *(a2 + 20)) & 1) != 0 || (sub_100142B6C(*(a1 + 24), *(a2 + 24)) & 1) == 0 || (sub_100142B6C(*(a1 + 32), *(a2 + 32)) & 1) == 0 || (sub_100142B6C(*(a1 + 40), *(a2 + 40)) & 1) == 0 || (sub_100142B6C(*(a1 + 48), *(a2 + 48)) & 1) == 0 || (sub_100142B6C(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 64);
  v6 = *(a2 + 64);

  return sub_100142B6C(v5, v6);
}

uint64_t sub_100142B6C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100142BC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000539C(a1, a2);
  if (v7)
  {
    if (!v4 || v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      sub_100008E24();
      do
      {
        memcpy(__dst, v2, sizeof(__dst));
        memcpy(v12, v3, sizeof(v12));
        sub_1000E385C(__dst, v10);
        sub_1000E385C(v12, v10);
        v8 = sub_1000DE29C();
        sub_1000E3894(v12);
        sub_1000E3894(__dst);
        if ((v8 & 1) == 0)
        {
          break;
        }

        v2 += 136;
        v3 += 136;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100142CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncTriggerEvent(0);
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1001440AC(v14, v11);
      sub_1001440AC(v15, v7);
      if ((static Date.== infix(_:_:)() & 1) == 0 || v11[v4[5]] != v7[v4[5]])
      {
        break;
      }

      v17 = v4[6];
      v18 = &v11[v17];
      v19 = v11[v17 + 8];
      v20 = &v7[v17];
      v21 = v7[v17 + 8];
      if (v19)
      {
        if (!v21)
        {
          break;
        }
      }

      else
      {
        if (*v18 != *v20)
        {
          LOBYTE(v21) = 1;
        }

        if (v21)
        {
          break;
        }
      }

      v22 = v4[7];
      v23 = &v11[v22];
      v24 = *&v11[v22 + 8];
      v25 = &v7[v22];
      v26 = *(v25 + 1);
      if (v24)
      {
        if (!v26)
        {
          break;
        }

        v27 = *v23 == *v25 && v24 == v26;
        if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      else if (v26)
      {
        break;
      }

      v28 = v4[8];
      v29 = *&v11[v28];
      v30 = *&v11[v28 + 8];
      v31 = &v7[v28];
      if (v29 == *v31 && v30 == *(v31 + 1))
      {
        sub_100144110(v7);
        sub_100144110(v11);
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100144110(v7);
        sub_100144110(v11);
        if ((v33 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_100144110(v7);
    sub_100144110(v11);
  }

  return 0;
}

uint64_t sub_100142EEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
      return 1;
    }

    sub_100008E24();
    while (1)
    {
      memcpy(__dst, v2, sizeof(__dst));
      memcpy(v44, v3, 0x58uLL);
      v5 = __dst[0] == v44[0] && __dst[1] == v44[1];
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (LOBYTE(__dst[2]))
      {
        if (LOBYTE(__dst[2]) == 1)
        {
          v6 = 0x64695F72657375;
        }

        else
        {
          v6 = 0x695F746E65696C63;
        }

        if (LOBYTE(__dst[2]) == 1)
        {
          v7 = 0xE700000000000000;
        }

        else
        {
          v7 = 0xE900000000000064;
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v6 = 1684632420;
      }

      if (LOBYTE(v44[2]))
      {
        if (LOBYTE(v44[2]) == 1)
        {
          v8 = 0x64695F72657375;
        }

        else
        {
          v8 = 0x695F746E65696C63;
        }

        if (LOBYTE(v44[2]) == 1)
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE900000000000064;
        }
      }

      else
      {
        v9 = 0xE400000000000000;
        v8 = 1684632420;
      }

      if (v6 == v8 && v7 == v9)
      {
        sub_1000AAB94(__dst, v42);
        sub_1000AAB94(v44, v42);
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1000AAB94(__dst, v42);
        sub_1000AAB94(v44, v42);

        if ((v11 & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      v12 = __dst[3] == v44[3] && __dst[4] == v44[4];
      if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_70;
      }

      v13 = __dst[7];
      v41 = __dst[6];
      v40 = LOBYTE(__dst[8]);
      v14 = 0xD000000000000015;
      v15 = "name";
      v16 = __dst[10];
      v37 = v2;
      v38 = __dst[9];
      v17 = 0xD000000000000015;
      v36 = v3;
      switch(LOBYTE(__dst[5]))
      {
        case 1:
          sub_10000C684();
          v17 = v18 + 3;
          v15 = "scheduled_device_pull";
          break;
        case 2:
          sub_10000C684();
          v17 = v19 + 3;
          v15 = "mmediate_device_pull";
          break;
        case 3:
          v17 = 0xD000000000000021;
          v15 = "cheduled_device_pull";
          break;
        case 4:
          v17 = 0xD000000000000021;
          v15 = "diate_device_pull";
          break;
        default:
          break;
      }

      v20 = v15 | 0x8000000000000000;
      v21 = v44[6];
      v22 = v44[7];
      v39 = LOBYTE(v44[8]);
      v23 = v44[9];
      v24 = v44[10];
      v25 = "name";
      switch(LOBYTE(v44[5]))
      {
        case 1:
          sub_10000C684();
          v14 = v26 + 3;
          v25 = "scheduled_device_pull";
          break;
        case 2:
          sub_10000C684();
          v14 = v27 + 3;
          v25 = "mmediate_device_pull";
          break;
        case 3:
          v14 = 0xD000000000000021;
          v25 = "cheduled_device_pull";
          break;
        case 4:
          v14 = 0xD000000000000021;
          v25 = "diate_device_pull";
          break;
        default:
          break;
      }

      v28 = v13;
      v29 = v16;
      if (v17 == v14 && v20 == (v25 | 0x8000000000000000))
      {
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v31 & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      v32 = v41 == v21 && v28 == v22;
      if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v40 != v39)
      {
LABEL_70:
        sub_1000AABCC(v44);
        sub_1000AABCC(__dst);
        return 0;
      }

      if (v38 == v23 && v29 == v24)
      {
        sub_1000AABCC(v44);
        sub_1000AABCC(__dst);
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1000AABCC(v44);
        sub_1000AABCC(__dst);
        if ((v34 & 1) == 0)
        {
          return 0;
        }
      }

      v2 = v37 + 88;
      v3 = v36 + 88;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100143328(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000539C(a1, a2);
  if (v11)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v3 + 32);
    v6 = (v4 + 32);
    sub_10000ABA4();
    v8 = v7 - 10;
    while (1)
    {
      v9 = v5[1];
      v28 = *v5;
      v29 = v9;
      *v30 = v5[2];
      *&v30[9] = *(v5 + 41);
      v10 = v6[1];
      v31 = *v6;
      v32 = v10;
      *v33 = v6[2];
      *&v33[9] = *(v6 + 41);
      v11 = v28 == v31 && *(&v28 + 1) == *(&v31 + 1);
      if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v12 = v29 == v32 && *(&v29 + 1) == *(&v32 + 1);
      if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v8;
      v14 = "priority";
      switch(v30[0])
      {
        case 1:
          sub_10000ABA4();
          v13 = v15 + 3;
          v14 = "scheduledDevicePull";
          break;
        case 2:
          sub_10000ABA4();
          v13 = v16 + 3;
          v14 = "ediateDevicePull";
          break;
        case 3:
          v13 = 0xD00000000000001DLL;
          v14 = "eduledDevicePull";
          break;
        case 4:
          v13 = 0xD00000000000001DLL;
          v14 = "appTriggerImmediateDevicePull";
          break;
        default:
          break;
      }

      v17 = v14 | 0x8000000000000000;
      v18 = v8;
      v19 = "priority";
      switch(v33[0])
      {
        case 1:
          sub_10000ABA4();
          v18 = v20 + 3;
          v19 = "scheduledDevicePull";
          break;
        case 2:
          sub_10000ABA4();
          v18 = v21 + 3;
          v19 = "ediateDevicePull";
          break;
        case 3:
          v18 = 0xD00000000000001DLL;
          v19 = "eduledDevicePull";
          break;
        case 4:
          v18 = 0xD00000000000001DLL;
          v19 = "appTriggerImmediateDevicePull";
          break;
        default:
          break;
      }

      if (v13 == v18 && v17 == (v19 | 0x8000000000000000))
      {
        sub_1000BA2CC(&v28, v27);
        sub_1000BA2CC(&v31, v27);
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1000BA2CC(&v28, v27);
        sub_1000BA2CC(&v31, v27);

        if ((v23 & 1) == 0)
        {
          sub_1000BA304(&v31);
          sub_1000BA304(&v28);
          return 0;
        }
      }

      if (*&v30[8] == *&v33[8] && *&v30[16] == *&v33[16])
      {
        sub_1000BA304(&v31);
        sub_1000BA304(&v28);
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1000BA304(&v31);
        sub_1000BA304(&v28);
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

      if (v30[24] != v33[24])
      {
        return 0;
      }

      v5 += 4;
      v6 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100143614(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1001436A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0x697A675F6F727661;
    v4 = (a1 + 48);
    v5 = (a2 + 48);
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v8 = *(v5 - 16);
      v10 = *(v5 - 1);
      v9 = *v5;
      v11 = 0xED00003436625F70;
      v12 = 0x697A675F6F727661;
      switch(*(v4 - 16))
      {
        case 1:
          v12 = 0xD000000000000013;
          v11 = 0x80000001002721F0;
          break;
        case 2:
          v11 = 0xE800000000000000;
          v12 = 0x7761725F6E6F736ALL;
          break;
        case 3:
          v12 = 0x697A675F6E6F736ALL;
          v11 = 0xED00003436625F70;
          break;
        case 4:
          v12 = 0x7461625F6E6F736ALL;
          v11 = 0xEF70697A675F6863;
          break;
        default:
          break;
      }

      v13 = 0xED00003436625F70;
      switch(*(v5 - 16))
      {
        case 1:
          v3 = 0xD000000000000013;
          v13 = 0x80000001002721F0;
          break;
        case 2:
          v13 = 0xE800000000000000;
          v3 = 0x7761725F6E6F736ALL;
          break;
        case 3:
          v3 = 0x697A675F6E6F736ALL;
          v13 = 0xED00003436625F70;
          break;
        case 4:
          v3 = 0x7461625F6E6F736ALL;
          v13 = 0xEF70697A675F6863;
          break;
        default:
          break;
      }

      if (v12 == v3 && v11 == v13)
      {
        v16 = *v4;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {

          return 0;
        }
      }

      if (v7 == v10 && v6 == v9)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      v4 += 3;
      v5 += 3;
      --v2;
      v3 = 0x697A675F6F727661;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100143968(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 2);
      v8 = *(i - 1);
      v14 = *i;
      v10 = *(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3);
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v11 = v6 == v9 && v5 == v8;
      if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v12 = sub_100142EEC(v7, v14);

      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100143AD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100143B9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000539C(a1, a2);
  if (v7)
  {
    if (!v4 || v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      sub_100008E24();
      do
      {
        memcpy(__dst, v2, 0x62uLL);
        memcpy(v12, v3, 0x62uLL);
        sub_10014416C(__dst, v10);
        sub_10014416C(v12, v10);
        v8 = static AvroSchema.== infix(_:_:)(__dst, v12);
        sub_1001441C8(v12);
        sub_1001441C8(__dst);
        if ((v8 & 1) == 0)
        {
          break;
        }

        v3 += 104;
        v2 += 104;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100143C78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
      return 1;
    }

    sub_100008E24();
    while (1)
    {
      memcpy(__dst, v2, 0xB2uLL);
      memcpy(v10, v3, 0xB2uLL);
      v5 = __dst[0] == v10[0] && __dst[1] == v10[1];
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      memcpy(v11, &__dst[2], 0x62uLL);
      memcpy(v12, &v10[2], 0x62uLL);
      sub_10014421C(__dst, v8);
      sub_10014421C(v10, v8);
      v6 = static AvroSchema.== infix(_:_:)(v11, v12);
      sub_100144278(v10);
      sub_100144278(__dst);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v3 += 184;
      v2 += 184;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

Swift::Int SwifCron.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100143DE8()
{
  Hasher.init(_seed:)();
  SwifCron.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100143E28(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100143E84()
{
  result = qword_1002DE6C8;
  if (!qword_1002DE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE6C8);
  }

  return result;
}

uint64_t sub_100143ED8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_100143F18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SwifCron.ExpressionMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100144058()
{
  result = qword_1002DE6D0;
  if (!qword_1002DE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE6D0);
  }

  return result;
}

uint64_t sub_1001440AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncTriggerEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100144110(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncTriggerEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001442D4()
{
  v4 = *(v2 - 128);

  return sub_1001410A0(v1, v0, v4);
}

BOOL sub_100144310()
{
  v3 = *(v0 + 64);
  v4 = *(v1 - 216);

  return sub_100141154(v4, v3);
}

unint64_t sub_100144340(uint64_t a1)
{
  result = sub_1000ED168();
  *(a1 + 8) = result;
  return result;
}

id sub_100144368()
{
  result = [objc_allocWithZone(type metadata accessor for AssetsJetpackFetcherWrapper()) init];
  static AssetsJetpackFetcherWrapper.shared = result;
  return result;
}

uint64_t *AssetsJetpackFetcherWrapper.shared.unsafeMutableAddressor()
{
  if (qword_1002DA5A0 != -1)
  {
    sub_100003974();
  }

  return &static AssetsJetpackFetcherWrapper.shared;
}

id static AssetsJetpackFetcherWrapper.shared.getter()
{
  if (qword_1002DA5A0 != -1)
  {
    sub_100003974();
  }

  v1 = static AssetsJetpackFetcherWrapper.shared;

  return v1;
}

uint64_t AssetsJetpackFetcherWrapper.performOnStartup()()
{
  sub_100004194();
  v1[24] = v0;
  v1[25] = swift_getObjectType();
  v2 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v3 = type metadata accessor for Log();
  v1[27] = v3;
  sub_100003B78(v3);
  v1[28] = v4;
  v6 = *(v5 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_10000381C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100144540()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  static Log.accountsDaemon.getter();
  *(v0 + 248) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  *(v0 + 256) = *(v5 + 72);
  *(v0 + 320) = *(v6 + 80);
  v7 = swift_allocObject();
  *(v0 + 64) = v2;
  *(v7 + 16) = xmmword_1002329F0;
  *(v0 + 88) = v3;
  v8 = v2;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = *(v0 + 240);
  v12 = *(v0 + 216);
  v13 = *(v0 + 224);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 64));
  LogInterpolation.init(stringLiteral:)();
  Log.debug(_:)();

  v14 = *(v13 + 8);
  *(v0 + 264) = v14;
  *(v0 + 272) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = swift_task_alloc();
  *(v0 + 280) = v15;
  *v15 = v0;
  v15[1] = sub_100144758;
  v16 = *(v0 + 192);

  return sub_100144DB0();
}

uint64_t sub_100144758()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 288) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100144854()
{
  sub_100004194();
  sub_100145024();
  sub_100002860();
  v1 = sub_100145068();
  *(v0 + 296) = v1;
  [v1 setAllowBattery:1];
  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  sub_1000080E0(v2);

  return sub_1001450DC();
}

uint64_t sub_1001448F8()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  v4 = *(v3 + 304);
  v5 = *v0;
  sub_100004504();
  *v6 = v5;
  *(v7 + 312) = v8;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001449E0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  [v1 setInterval:*(v0 + 312)];
  [v1 setRepeats:1];
  [v1 setRequireNetworkConnection:1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v0 + 48) = sub_1001458A4;
  *(v0 + 56) = v6;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_100145D88;
  *(v0 + 40) = &unk_1002B93E8;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v5;

  [v1 setActivityBlock:v7];
  _Block_release(v7);
  [v1 checkIn];
  [v1 schedule];

  sub_100002E08();

  return v10();
}

uint64_t sub_100144B80()
{
  sub_10000A504();
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = ((*(v0 + 320) + 32) & ~*(v0 + 320)) + 2 * *(v0 + 256);
  static Log.accountsDaemon.getter();
  v6 = swift_allocObject();
  *(v0 + 96) = v4;
  *(v6 + 16) = xmmword_1002329F0;
  *(v0 + 120) = v3;
  v7 = v4;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = *(v0 + 288);
  v23 = *(v0 + 264);
  v24 = *(v0 + 272);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);
  v13 = *(v0 + 208);
  v22 = *(v0 + 216);
  sub_10000BB1C();

  sub_100004118((v0 + 96));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD00000000000002ALL;
  v14._object = 0x8000000100274710;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  swift_getErrorValue();
  v15 = *(v0 + 160);
  *(v0 + 152) = *(v0 + 168);
  sub_100007914((v0 + 128));
  sub_10000774C();
  (*(v16 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100009DF4(v0 + 128);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  Log.error(_:)();

  v23(v12, v22);
  sub_100145024();
  sub_100002860();
  v18 = sub_100145068();
  *(v0 + 296) = v18;
  [v18 setAllowBattery:1];
  v19 = swift_task_alloc();
  *(v0 + 304) = v19;
  *v19 = v0;
  sub_1000080E0(v19);
  sub_100003BBC();

  return sub_1001450DC();
}

uint64_t sub_100144DCC()
{
  sub_100004194();
  type metadata accessor for AssetsJetpackFetcher();
  v0[2] = static AssetsJetpackFetcher.shared.getter();
  v1 = [objc_opt_self() defaultBag];
  v0[3] = v1;
  v2 = async function pointer to AssetsJetpackFetcher.fetchAndCacheJetpack(with:)[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100144E9C;

  return AssetsJetpackFetcher.fetchAndCacheJetpack(with:)(v1);
}

uint64_t sub_100144E9C()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_10000381C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 16);

    sub_100002E08();

    return v13();
  }
}

uint64_t sub_100144FC4()
{
  sub_100004194();
  v1 = *(v0 + 16);

  sub_100002E08();
  v3 = *(v0 + 40);

  return v2();
}

unint64_t sub_100145024()
{
  result = qword_1002DE6D8;
  if (!qword_1002DE6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DE6D8);
  }

  return result;
}

id sub_100145068()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

uint64_t sub_1001450DC()
{
  v1[35] = v0;
  v1[36] = swift_getObjectType();
  v2 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v3 = type metadata accessor for Log();
  v1[38] = v3;
  v4 = *(v3 - 8);
  v1[39] = v4;
  v5 = *(v4 + 64) + 15;
  v1[40] = swift_task_alloc();

  return _swift_task_switch(sub_1001451D4, 0, 0);
}

uint64_t sub_1001451D4()
{
  v1 = [objc_opt_self() defaultBag];
  sub_100002860();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 integerForKey:v2];

  v4 = [v3 valuePromise];
  v0[41] = v4;

  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_100145380;
  v5 = swift_continuation_init();
  v0[17] = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000C5D24;
  v0[13] = &unk_1002B9488;
  v0[14] = v5;
  [v4 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100145380()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 336) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100145480()
{
  v1 = v0[41];
  v2 = v0[33];
  [v2 doubleValue];
  v4 = v3;

  v5 = v0[40];
  v6 = v0[37];

  sub_100002E08();
  v8.n128_u64[0] = v4;

  return v7(v8);
}

uint64_t sub_100145518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  v15 = v14[41];
  v16 = v14[42];
  v17 = v14[40];
  v18 = v14[35];
  v19 = v14[36];
  swift_willThrow();

  static Log.accountsDaemon.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v20 = type metadata accessor for LogInterpolation();
  sub_100003B78(v20);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v49 = *(v21 + 72);
  v24 = swift_allocObject();
  v14[18] = v18;
  *(v24 + 16) = xmmword_1002329F0;
  v14[21] = v19;
  v25 = v18;
  v26 = AMSLogKey();
  if (v26)
  {
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v28 = v14[42];
  v30 = v14[39];
  v29 = v14[40];
  v31 = v14[37];
  v48 = v14[38];
  sub_10000BB1C();

  sub_100004118(v14 + 18);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100002860();
  v32._countAndFlagsBits = 0xD000000000000047;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
  v14[25] = &type metadata for Double;
  v14[22] = 0x4122750000000000;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100009DF4((v14 + 22));
  v33._countAndFlagsBits = 8250;
  v33._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
  swift_getErrorValue();
  v34 = v14[30];
  v14[29] = v14[31];
  sub_100007914(v14 + 26);
  sub_10000774C();
  (*(v35 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100009DF4((v14 + 26));
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
  LogInterpolation.init(stringInterpolation:)();
  Log.error(_:)();

  (*(v30 + 8))(v29, v48);
  v37 = v14[40];
  v38 = v14[37];

  sub_100002E08();
  sub_100003BBC();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, v48, v49, a11, a12, a13, a14);
}

uint64_t sub_1001457A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_100002728(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a1;
  v11[6] = a2;
  v12 = a3;

  sub_10013ABD4(0, 0, v9, &unk_10023B6A0, v11);
}

uint64_t sub_1001458AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v8 = type metadata accessor for Log();
  v6[18] = v8;
  v9 = *(v8 - 8);
  v6[19] = v9;
  v10 = *(v9 + 64) + 15;
  v6[20] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[21] = v11;
  *v11 = v6;
  v11[1] = sub_1001459CC;

  return sub_100144DB0();
}

uint64_t sub_1001459CC()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 176) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100145AC8()
{
  v0 = sub_10000C084();
  v1(v0);

  sub_100002E08();

  return v2();
}

uint64_t sub_100145B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  v15 = v14[20];
  v16 = v14[14];
  static Log.accountsDaemon.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v17 = type metadata accessor for LogInterpolation();
  sub_100003B78(v17);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v45 = *(v18 + 72);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v21 = type metadata accessor for AssetsJetpackFetcherWrapper();
  v14[2] = v16;
  v14[5] = v21;
  v22 = v16;
  v23 = AMSLogKey();
  if (v23)
  {
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v25 = v14[22];
  v27 = v14[19];
  v26 = v14[20];
  v28 = v14[17];
  v44 = v14[18];
  sub_10000BB1C();

  sub_100004118(v14 + 2);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100002860();
  v29._countAndFlagsBits = 0xD00000000000002ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
  swift_getErrorValue();
  v30 = v14[10];
  v14[9] = v14[11];
  sub_100007914(v14 + 6);
  sub_10000774C();
  (*(v31 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100009DF4((v14 + 6));
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
  LogInterpolation.init(stringInterpolation:)();
  Log.error(_:)();

  (*(v27 + 8))(v26, v44);
  v33 = sub_10000C084();
  v34(v33);

  sub_100002E08();
  sub_100003BBC();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, v45, a12, a13, a14);
}

uint64_t sub_100145D88(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1001461B4, v5);
}

uint64_t sub_100145E98(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100145F40;

  return AssetsJetpackFetcherWrapper.performOnStartup()();
}

uint64_t sub_100145F40()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[3];
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v9, 0);
  }

  _Block_release(v4[3]);
  v11 = v8[1];

  return v11();
}

uint64_t sub_100146108()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100013D70;

  return sub_100145E98(v2, v3);
}

uint64_t sub_1001461C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000C6A64;

  return sub_1001458AC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100146310()
{
  v1 = [objc_allocWithZone(AMSAuthenticateTask) initWithRequest:v0[19]];
  v0[20] = v1;
  v2 = [v1 performAuthentication];
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100146468;
  v3 = swift_continuation_init();
  v0[17] = sub_100099DF4(&qword_1002DE738, &qword_10023B6E8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000C5D24;
  v0[13] = &unk_1002B94D8;
  v0[14] = v3;
  [v2 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100146468()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1001465E8;
  }

  else
  {
    v3 = sub_100146578;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100146578()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001465E8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_100146704(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_1001467E0;

  return sub_1001462F0(v14, v15, v12);
}

uint64_t sub_1001467E0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 48);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (v12)[2](v12, 0, v13);

    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 48), a1, 0);
    _Block_release(v12);
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_1001469D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000CB6D0;

  return sub_100146704(v2, v3, v4, v5, v6);
}

uint64_t sub_100146A98(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_100146AE8()
{
  sub_100002EA8();
  sub_100004FE0();
  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = sub_100003724(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = sub_100099DF4(&qword_1002DA5E0, &qword_10022E420);
  v12 = sub_1000030B8(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v17[-v15];
  CodingUserInfoKey.init(rawValue:)();
  if (sub_100004DFC(v16, 1, v2) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v0 + OBJC_IVAR____TtC12amsaccountsd11AvroDecoder_infoKey, v16, v2);
    *(v0 + OBJC_IVAR____TtC12amsaccountsd11AvroDecoder_userInfo) = &_swiftEmptyDictionarySingleton;
    memcpy((v0 + 16), v1, 0x62uLL);
    (*(v5 + 16))(v10, v0 + OBJC_IVAR____TtC12amsaccountsd11AvroDecoder_infoKey, v2);
    v19 = &type metadata for AvroEncodingOption;
    v18 = 0;
    swift_beginAccess();
    sub_10014416C(v1, v17);
    sub_1001A914C(&v18, v10);
    swift_endAccess();
    sub_1001441C8(v1);
    sub_10015150C();
  }
}

uint64_t sub_100146CD0()
{
  v1 = OBJC_IVAR____TtC12amsaccountsd11AvroDecoder_userInfo;
  swift_beginAccess();
  sub_1001AC118(*(v0 + v1), &v7);
  result = swift_endAccess();
  if (v8)
  {
    sub_1000197D8(&v7, &v9);
    v3 = swift_dynamicCast();
    if (v10)
    {
      v4 = type metadata accessor for JSONDecoder();
      v5 = *(v4 + 48);
      v6 = *(v4 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    }

    else
    {
      __chkstk_darwin(v3);
      return Data.withUnsafeBytes<A, B>(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100146E70(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a2 + 16), 0x62uLL);
  sub_10014416C(__dst, v9);
  v4 = Data.count.getter();
  v5 = type metadata accessor for AvroBinaryDecoder();
  v6 = swift_allocObject();
  result = sub_100148604(__dst, a1, v4);
  if (!v2)
  {
    v9[3] = v5;
    v9[4] = sub_10000DADC(&qword_1002DEA68, v8, type metadata accessor for AvroBinaryDecoder);
    v9[0] = v6;
    return dispatch thunk of Decodable.init(from:)();
  }

  return result;
}

void *sub_100146F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, (a2 + 16), 0x62uLL);
  sub_10014416C(__dst, v9);
  v7 = Data.count.getter();
  type metadata accessor for AvroBinaryDecoder();
  swift_initStackObject();
  result = sub_100148604(__dst, a1, v7);
  if (!v3)
  {
    memcpy(v10, (a2 + 16), 0x62uLL);
    sub_100147074(v10, a3);
  }

  return result;
}

void sub_100147074(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 96);
  v7 = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v338 = v2;
  switch(v5 >> 12)
  {
    case 0u:
      if (v8 == 7)
      {
        goto LABEL_3;
      }

      if (sub_100161910(v8) == 1702125924 && v296 == 0xE400000000000000)
      {
      }

      else
      {
        v298 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v298 & 1) == 0)
        {
LABEL_3:
          sub_100006ECC();
          v11 = sub_100152154();
          if (!v3)
          {
            *(a2 + 24) = &type metadata for Int32;
            *a2 = v11;
          }

          return;
        }
      }

      sub_100006ECC();
      sub_100152188();
      if (!v3)
      {
        *(a2 + 24) = type metadata accessor for Date();
        sub_100007914(a2);
        Date.init(timeIntervalSince1970:)();
      }

      return;
    case 1u:
      sub_100006ECC();
      v116 = sub_100152188();
      if (!v3)
      {
        *(a2 + 24) = &type metadata for Int64;
        *a2 = v116;
      }

      return;
    case 2u:
      sub_100006ECC();
      v115 = sub_1001524E8();
      goto LABEL_135;
    case 3u:
      v322 = a2;
      v81 = *(v7 + 64);
      v82 = v81 + 48;
      v83 = *(v81 + 16);

      v84 = 0;
      v85 = &_swiftEmptyDictionarySingleton;
      v331 = v81 + 48;
LABEL_44:
      v86 = (v82 + 184 * v84);
      while (2)
      {
        if (v83 == v84)
        {

          v322[3] = sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
          *v322 = v85;
          return;
        }

        if (v84 < *(v81 + 16))
        {
          memcpy(__dst, v86 - 16, 0xB2uLL);
          v87 = memcpy(v370, v86, sizeof(v370));
          v95 = sub_10000D554(v87, v88, v89, v90, v91, v92, v93, v94, v317, v322, isUnique, v331, v335, v338, v341, *(&v341 + 1), v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1), v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, __dst[0]);
          sub_10014421C(v95, v96);
          sub_10000DBCC();
          if (!v82)
          {
            if (!v343)
            {
              sub_100144278(__dst);
              sub_100004E24(&v341, &unk_1002DFC10, &qword_10022E6D0);
              v86 += 184;
              ++v84;
              continue;
            }

            v335 = 0;
            v98 = __dst[0];
            v97 = __dst[1];
            sub_1000197D8(&v341, &v366);
            sub_100009F20(&v366, &v344);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v341 = v85;
            sub_100004C1C();
            v317 = v98;
            isUnique = v97;
            sub_10000A350(v98, v97, v100);
            v101 = v85[2];
            sub_100003D14();
            v106 = v104 + v105;
            if (!__OFADD__(v104, v105))
            {
              v107 = v102;
              v108 = v103;
              sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
              sub_1001514CC();
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v106))
              {
                sub_100004C1C();
                sub_10000A350(v317, v97, v109);
                sub_10000C690();
                if (!v294)
                {
                  goto LABEL_224;
                }

                v107 = v110;
              }

              v85 = v341;
              if (v108)
              {
                v111 = (*(v341 + 56) + 32 * v107);
                sub_100004118(v111);
                sub_1000197D8(&v344, v111);
                sub_100144278(__dst);
                sub_100004118(&v366);
LABEL_59:
                v82 = v331;
                ++v84;
                goto LABEL_44;
              }

              sub_1000035B8(v341 + 8 * (v107 >> 6));
              v112 = (v85[6] + 16 * v107);
              *v112 = v317;
              v112[1] = v97;
              sub_1000197D8(&v344, (v85[7] + 32 * v107));

              sub_100144278(__dst);
              sub_100004118(&v366);
              v113 = v85[2];
              v65 = __OFADD__(v113, 1);
              v114 = v113 + 1;
              if (!v65)
              {
                v85[2] = v114;
                goto LABEL_59;
              }

              goto LABEL_216;
            }

LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
            goto LABEL_224;
          }

          sub_100144278(__dst);
          goto LABEL_176;
        }

        break;
      }

      __break(1u);
LABEL_202:
      __break(1u);
      goto LABEL_203;
    case 4u:
      v20 = *(v7 + 88);
      sub_100006ECC();
      v21 = sub_100152188();
      if (v3)
      {
        return;
      }

      v22 = v21;
      if ((v21 & 0x8000000000000000) != 0 || *(v20 + 16) < v21)
      {
        sub_100099DF4(&qword_1002DEAA0, &qword_10023B2F0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1002329F0;
        *(v23 + 32) = 0xD000000000000011;
        *(v23 + 40) = 0x8000000100274A00;
        *(v23 + 88) = &type metadata for Int;
        *(v23 + 56) = &type metadata for String;
        goto LABEL_114;
      }

      *(a2 + 24) = &type metadata for String;
      sub_1001442D0(v21, 1, v20);
      v312 = v20 + 16 * v22;
      v313 = *(v312 + 40);
      *a2 = *(v312 + 32);
      *(a2 + 8) = v313;

      return;
    case 5u:
      memcpy(__dst, (v7 + 16), 0x73uLL);
      sub_100006ECC();
      v24 = sub_100152188();
      if (v3)
      {
        return;
      }

      v32 = v24;
      if (!v24)
      {
        v306 = sub_10000D554(0, v25, v26, v27, v28, v29, v30, v31, v317, a2, isUnique, v329, v335, v2, v341, *(&v341 + 1), v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1), v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, __dst[0]);
        sub_100150F70(v306, v307);
        v35 = _swiftEmptyArrayStorage;
LABEL_179:
        v321[3] = sub_100099DF4(qword_1002DEAA8, &qword_10023B9E8);
        sub_100150FCC(__dst);
        *v321 = v35;
        return;
      }

      v33 = sub_10000D554(v24, v25, v26, v27, v28, v29, v30, v31, v317, a2, isUnique, v329, v335, v2, v341, *(&v341 + 1), v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1), v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, __dst[0]);
      sub_100150F70(v33, v34);
      v35 = _swiftEmptyArrayStorage;
      while (2)
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          v50 = -v32;
          if (__OFSUB__(0, v32))
          {
            goto LABEL_217;
          }

          v51 = sub_10000B440();
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_218;
          }

          v52 = 0;
          sub_10015158C(v51);
          v336 = v53;
          while (v50 != v52)
          {
            if (v52 >= v50)
            {
              goto LABEL_210;
            }

            if (__OFADD__(v52, 1))
            {
              goto LABEL_211;
            }

            sub_100007D24((v339 + 32), *(v339 + 56));
            v61 = sub_100152188();
            if (v61 <= 0)
            {
              goto LABEL_179;
            }

            sub_100151544(v371, v54, v55, v56, v57, v58, v59, v60, v318, v321, isUniquea, v330, v336, v339, v341, *(&v341 + 1), v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1), v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, __dst[0], __dst[1], __dst[2]);
            sub_100147074(&v366, v371);
            if (*(&v367 + 1))
            {
              v68 = sub_1000197D8(&v366, &v344);
              v76 = sub_1001515A4(v68, v69, v70, v71, v72, v73, v74, v75, v318, v321, isUniquea, v330, v336, v339, v341, *(&v341 + 1), v342, v343, v344);
              sub_100009F20(v76, v77);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_100010E50();
                v35 = v79;
              }

              v78 = v35[2];
              if (v78 >= v35[3] >> 1)
              {
                sub_100005D30();
                v35 = v80;
              }

              sub_100004118(&v344);
              v35[2] = v78 + 1;
              sub_1000197D8(&v366, &v35[4 * v78 + 4]);
              ++v52;
            }

            else
            {
              sub_100004E24(&v366, &unk_1002DFC10, &qword_10022E6D0);
              v62 = sub_10000B440();
              v63 = sub_10000B440();
              sub_10015158C(v63);
              v65 = __OFSUB__(v336, v64);
              v66 = v336 - v64;
              if (v65)
              {
                goto LABEL_212;
              }

              if (__OFSUB__(v61, v66))
              {
                goto LABEL_213;
              }

              v67 = *v62;
              sub_1001520C4(v61 - v66);
              ++v52;
            }
          }
        }

        else
        {
          for (i = 0; v32 != i; ++i)
          {
            if (__OFADD__(i, 1))
            {
              goto LABEL_205;
            }

            memcpy(v372, &__dst[2], sizeof(v372));
            v37 = sub_10000DBCC();
            v45 = sub_1001515A4(v37, v38, v39, v40, v41, v42, v43, v44, v318, v321, isUniquea, v330, v336, v339, v341, *(&v341 + 1), v342, v343, v344);
            sub_10013E66C(v45, v46);
            if (!*(&v367 + 1))
            {
              goto LABEL_223;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100010E50();
              v35 = v48;
            }

            v47 = v35[2];
            if (v47 >= v35[3] >> 1)
            {
              sub_100005D30();
              v35 = v49;
            }

            sub_100004E24(&v344, &unk_1002DFC10, &qword_10022E6D0);
            v35[2] = v47 + 1;
            sub_1000197D8(&v366, &v35[4 * v47 + 4]);
          }
        }

        sub_100006ECC();
        v32 = sub_100152188();
        if (!v32)
        {
          goto LABEL_179;
        }

        continue;
      }

    case 6u:
      memcpy(__dst, (v7 + 16), 0x73uLL);
      sub_100006ECC();
      v117 = sub_100152188();
      if (v3)
      {
        return;
      }

      v125 = v117;
      if (!v117)
      {
        v308 = sub_10000D554(0, v118, v119, v120, v121, v122, v123, v124, v317, v320, isUnique, v329, v335, v2, v341, *(&v341 + 1), v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1), v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, __dst[0]);
        sub_10014EA68(v308, v309);
        v128 = &_swiftEmptyDictionarySingleton;
LABEL_181:
        *(a2 + 24) = sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
        sub_10014EAC4(__dst);
        *a2 = v128;
        return;
      }

      v126 = sub_10000D554(v117, v118, v119, v120, v121, v122, v123, v124, v317, v320, isUnique, v329, v335, v2, v341, *(&v341 + 1), v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1), v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, __dst[0]);
      sub_10014EA68(v126, v127);
      v128 = &_swiftEmptyDictionarySingleton;
      while ((v125 & 0x8000000000000000) != 0)
      {
        v323 = a2;
        v188 = -v125;
        if (__OFSUB__(0, v125))
        {
          goto LABEL_219;
        }

        v189 = sub_10000B440();
        if ((v188 & 0x8000000000000000) != 0)
        {
          goto LABEL_220;
        }

        v190 = 0;
        sub_10015158C(v189);
        v337 = v191;
        while (v188 != v190)
        {
          if (v190 >= v188)
          {
            goto LABEL_207;
          }

          if (__OFADD__(v190, 1))
          {
            goto LABEL_208;
          }

          sub_100007D24((v340 + 32), *(v340 + 56));
          if (sub_100152188() <= 0)
          {
            v323[3] = sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
            sub_10014EAC4(__dst);
            *v323 = v128;
            return;
          }

          v192 = *sub_10000C4FC((v340 + 32), *(v340 + 56));
          v193 = sub_1001523D4();
          v195 = v194;
          sub_100151544(v373, v194, v196, v197, v198, v199, v200, v201, v319, v323, isUniqueb, v190 + 1, v337, v340, v341, *(&v341 + 1), v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1), v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, __dst[0], __dst[1], __dst[2]);
          v202 = sub_100147074(&v344, v373);
          if (*(&v345 + 1))
          {
            v210 = sub_1001515A4(v202, v203, v204, v205, v206, v207, v208, v209, v319, v323, isUniqueb, v332, v337, v340, v341, *(&v341 + 1), v342, v343, v344);
            sub_1000197D8(v210, v211);
            LODWORD(isUniqueb) = swift_isUniquelyReferenced_nonNull_native();
            *&v341 = v128;
            sub_100004C1C();
            sub_10000A350(v193, v195, v212);
            v213 = v128[2];
            sub_100003D14();
            v218 = v216 + v217;
            if (__OFADD__(v216, v217))
            {
              goto LABEL_221;
            }

            v219 = v214;
            v220 = v215;
            sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
            sub_1001514CC();
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniqueb, v218))
            {
              sub_100004C1C();
              sub_10000A350(v193, v195, v221);
              sub_10000C690();
              if (!v294)
              {
                goto LABEL_224;
              }

              v219 = v222;
            }

            if (v220)
            {

              v128 = v341;
              v223 = (*(v341 + 56) + 32 * v219);
              sub_100004118(v223);
              sub_1000197D8(&v366, v223);
            }

            else
            {
              v128 = v341;
              sub_1000035B8(v341 + 8 * (v219 >> 6));
              v238 = (*(v341 + 48) + 16 * v219);
              *v238 = v193;
              v238[1] = v195;
              sub_1000197D8(&v366, (v128[7] + 32 * v219));
              v239 = v128[2];
              v65 = __OFADD__(v239, 1);
              v240 = v239 + 1;
              if (v65)
              {
                goto LABEL_222;
              }

              v128[2] = v240;
            }

            v190 = v332;
          }

          else
          {
            sub_100004E24(&v344, &unk_1002DFC10, &qword_10022E6D0);
            sub_100004C1C();
            v225 = sub_10000A350(v193, v195, v224);
            v227 = v226;

            if (v227)
            {
              v228 = swift_isUniquelyReferenced_nonNull_native();
              *&v341 = v128;
              v229 = v128[3];
              sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
              sub_1001514CC();
              v230 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v228, v229);
              sub_1001515BC(v230, v231, v232, v233, v234, v235, v236, v237, v319, v323, isUniqueb, v332, v337, v340, v128);
              sub_1000197D8((v128[7] + 32 * v225), &v366);
              _NativeDictionary._delete(at:)();
            }

            else
            {
              v366 = 0u;
              v367 = 0u;
            }

            v190 = v332;
            sub_100004E24(&v366, &unk_1002DFC10, &qword_10022E6D0);
          }
        }

        a2 = v323;
LABEL_108:
        sub_100006ECC();
        v125 = sub_100152188();
        if (!v125)
        {
          goto LABEL_181;
        }
      }

      for (j = 0; ; ++j)
      {
        if (v125 == j)
        {
          goto LABEL_108;
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_206;
        }

        sub_100006ECC();
        v130 = sub_1001523D4();
        v132 = v131;
        sub_100151544(v374, v131, v133, v134, v135, v136, v137, v138, v319, v323, isUniqueb, v332, v337, v340, v341, *(&v341 + 1), v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1), v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, __dst[0], __dst[1], __dst[2]);
        v139 = sub_10000DBCC();
        v337 = 0;
        if (*(&v345 + 1))
        {
          break;
        }

        sub_100004E24(&v344, &unk_1002DFC10, &qword_10022E6D0);
        sub_100004C1C();
        v171 = sub_10000F0D0();
        v174 = sub_10000A350(v171, v172, v173);
        v176 = v175;

        if (v176)
        {
          v177 = swift_isUniquelyReferenced_nonNull_native();
          *&v341 = v128;
          v178 = v128[3];
          sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
          sub_1001514CC();
          v179 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v177, v178);
          sub_1001515BC(v179, v180, v181, v182, v183, v184, v185, v186, v319, v323, isUniqueb, v332, 0, v340, v128);
          sub_1000197D8((v128[7] + 32 * v174), &v366);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          v366 = 0u;
          v367 = 0u;
        }

        sub_100004E24(&v366, &unk_1002DFC10, &qword_10022E6D0);
LABEL_84:
        ;
      }

      v333 = j;
      v147 = v125;
      v148 = a2;
      v149 = sub_1001515A4(v139, v140, v141, v142, v143, v144, v145, v146, v319, v323, isUniqueb, v333, 0, v340, v341, *(&v341 + 1), v342, v343, v344);
      sub_1000197D8(v149, v150);
      v151 = swift_isUniquelyReferenced_nonNull_native();
      *&v341 = v128;
      sub_100004C1C();
      v152 = sub_10000F0D0();
      sub_10000A350(v152, v153, v154);
      v155 = v128[2];
      sub_100003D14();
      v160 = v158 + v159;
      if (__OFADD__(v158, v159))
      {
        goto LABEL_209;
      }

      v161 = v156;
      v162 = v157;
      sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
      sub_1001514CC();
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v151, v160))
      {
        sub_100004C1C();
        v163 = sub_10000F0D0();
        v166 = sub_10000A350(v163, v164, v165);
        if ((v162 & 1) != (v167 & 1))
        {
          goto LABEL_224;
        }

        v161 = v166;
        if ((v162 & 1) == 0)
        {
          goto LABEL_75;
        }
      }

      else if ((v162 & 1) == 0)
      {
LABEL_75:
        v128 = v341;
        sub_1000035B8(v341 + 8 * (v161 >> 6));
        v168 = (*(v341 + 48) + 16 * v161);
        *v168 = v130;
        v168[1] = v132;
        sub_1000197D8(&v366, (v128[7] + 32 * v161));
        v169 = v128[2];
        v65 = __OFADD__(v169, 1);
        v170 = v169 + 1;
        if (v65)
        {
          goto LABEL_214;
        }

        v128[2] = v170;
        goto LABEL_81;
      }

      v128 = v341;
      v187 = (*(v341 + 56) + 32 * v161);
      sub_100004118(v187);
      sub_1000197D8(&v366, v187);
LABEL_81:
      a2 = v148;
      v125 = v147;
      j = v332;
      goto LABEL_84;
    case 7u:
      v241 = *(v7 + 48);
      sub_100006ECC();
      v242 = sub_100152188();
      if (v3)
      {
        return;
      }

      v22 = v242;
      if ((v242 & 0x8000000000000000) != 0 || *(v241 + 16) < v242)
      {
        sub_100099DF4(&qword_1002DEAA0, &qword_10023B2F0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1002329F0;
        *(v23 + 32) = 0x666F207865646E69;
        *(v23 + 40) = 0xEF3A6E6F696E7520;
        *(v23 + 88) = &type metadata for Int64;
        *(v23 + 56) = &type metadata for String;
LABEL_114:
        *(v23 + 64) = v22;
        print(_:separator:terminator:)();

        sub_10014E8FC();
        swift_allocError();
        *v243 = 2;
        swift_willThrow();
      }

      else
      {
        sub_1001442D0(v242, 1, v241);
        memcpy(v375, (v241 + 104 * v22 + 32), 0x62uLL);
        sub_10014416C(v375, __dst);
        sub_10000DBCC();
        sub_1001441C8(v375);
      }

      return;
    case 8u:
      if (*(a1 + 56) == 7)
      {
        goto LABEL_134;
      }

      if (sub_100161910(v9) == 0x6E6F697461727564 && v299 == 0xE800000000000000)
      {

LABEL_174:
        v304 = *sub_10000B440();
        v305 = sub_1001525E8(v10);
        if (v3)
        {
          return;
        }

        v290 = v305;
        v291 = &unk_1002DEA98;
        v292 = &unk_10023B9D8;
LABEL_137:
        *(a2 + 24) = sub_100099DF4(v291, v292);
        *a2 = v290;
        return;
      }

      v301 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v301)
      {
        goto LABEL_174;
      }

LABEL_134:
      v289 = *sub_10000B440();
      v115 = sub_10015257C(v10);
LABEL_135:
      if (!v3)
      {
        v290 = v115;
        v291 = &qword_1002DEA90;
        v292 = &qword_10023B9D0;
        goto LABEL_137;
      }

      return;
    case 9u:
      v324 = a2;
      isUniquec = *(*(v7 + 64) + 16);
      v244 = 0;

      v245 = (v334 + 48);
      v246 = &_swiftEmptyDictionarySingleton;
      while (2)
      {
        if (isUniquec == v244)
        {

          v324[3] = sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
          *v324 = v246;
          return;
        }

        if (v244 >= *(v334 + 16))
        {
          goto LABEL_202;
        }

        memcpy(__dst, v245 - 16, 0xB2uLL);
        v247 = memcpy(v376, v245, sizeof(v376));
        v255 = sub_10000D554(v247, v248, v249, v250, v251, v252, v253, v254, v317, v324, isUniquec, v334, v335, v338, v341, *(&v341 + 1), v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1), v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, __dst[0]);
        sub_10014421C(v255, v256);
        sub_10000DBCC();
        if (v3)
        {

          sub_100144278(__dst);
LABEL_176:

          return;
        }

        v258 = __dst[0];
        v257 = __dst[1];
        if (!*(&v367 + 1))
        {
          sub_100004E24(&v366, &unk_1002DFC10, &qword_10022E6D0);
          sub_100004C1C();
          v277 = sub_10003CF74();
          v280 = sub_10000A350(v277, v278, v279);
          if (v281)
          {
            v282 = v280;
            v283 = swift_isUniquelyReferenced_nonNull_native();
            *&v341 = v246;
            v284 = v246[3];
            sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
            sub_1001514CC();
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v283, v284);
            v285 = *(v246[6] + 16 * v282 + 8);

            sub_1000197D8((v246[7] + 32 * v282), &v344);
            _NativeDictionary._delete(at:)();
            sub_100144278(__dst);
          }

          else
          {
            sub_100144278(__dst);
            v344 = 0u;
            v345 = 0u;
          }

          sub_100004E24(&v344, &unk_1002DFC10, &qword_10022E6D0);
          goto LABEL_132;
        }

        v335 = v245;
        sub_1000197D8(&v366, &v344);
        v259 = swift_isUniquelyReferenced_nonNull_native();
        *&v341 = v246;
        sub_100004C1C();
        v260 = sub_10003CF74();
        sub_10000A350(v260, v261, v262);
        v263 = v246[2];
        sub_100003D14();
        v268 = v266 + v267;
        if (__OFADD__(v266, v267))
        {
LABEL_203:
          __break(1u);
        }

        else
        {
          v269 = v264;
          v270 = v265;
          sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
          sub_1001514CC();
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v259, v268))
          {
            sub_100004C1C();
            v271 = sub_10003CF74();
            v274 = sub_10000A350(v271, v272, v273);
            if ((v270 & 1) != (v275 & 1))
            {
LABEL_224:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v269 = v274;
          }

          v246 = v341;
          if (v270)
          {
            v276 = (*(v341 + 56) + 32 * v269);
            sub_100004118(v276);
            sub_1000197D8(&v344, v276);
            sub_100144278(__dst);
LABEL_132:
            v245 += 184;
            ++v244;
            continue;
          }

          sub_1000035B8(v341 + 8 * (v269 >> 6));
          v286 = (*(v341 + 48) + 16 * v269);
          *v286 = v258;
          v286[1] = v257;
          sub_1000197D8(&v344, (v246[7] + 32 * v269));

          sub_100144278(__dst);
          v287 = v246[2];
          v65 = __OFADD__(v287, 1);
          v288 = v287 + 1;
          if (!v65)
          {
            v246[2] = v288;
            goto LABEL_132;
          }
        }

        break;
      }

      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
      goto LABEL_215;
    case 0xDu:
      v12 = *(a1 + 80);
      v13 = *(a1 + 88);
      v14 = *(a1 + 72);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v18 = *(a1 + 24);
      v17 = *(a1 + 32);
      v19 = *(a1 + 8);
      if (v5 == 53248 && !(v8 | v7 | v9 | v10 | v13 | v12 | v14 | v16 | v15 | v17 | v18 | v19))
      {
        goto LABEL_7;
      }

      v293 = v9 | v8 | v10 | v13 | v12 | v14 | v16 | v15 | v17 | v18 | v19;
      v294 = v5 == 53248 && v7 == 1;
      if (!v294 || v293)
      {
        v302 = v5 == 53248 && v7 == 2;
        if (!v302 || v293)
        {
          v310 = v5 == 53248 && v7 == 3;
          if (!v310 || v293)
          {
            v314 = v5 == 53248 && v7 == 4;
            if (!v314 || v293)
            {
LABEL_7:
              *a2 = 0u;
              *(a2 + 16) = 0u;
            }

            else
            {
              sub_100006ECC();
              v315 = sub_1001523D4();
              if (!v18)
              {
                *(a2 + 24) = &type metadata for String;
                *a2 = v315;
                *(a2 + 8) = v316;
              }
            }
          }

          else
          {
            sub_100006ECC();
            v311 = sub_100152374();
            if (!v18)
            {
              *(a2 + 24) = &type metadata for Double;
              *a2 = v311;
            }
          }
        }

        else
        {
          sub_100006ECC();
          v303 = sub_100152314();
          if (!v18)
          {
            *(a2 + 24) = &type metadata for Float;
            *a2 = v303;
          }
        }
      }

      else
      {
        sub_100006ECC();
        v295 = sub_1001520EC();
        if (!v18)
        {
          *(a2 + 24) = &type metadata for Bool;
          *a2 = v295;
        }
      }

      return;
    default:
      goto LABEL_7;
  }
}

__n128 *sub_100148514()
{
  v1 = v0[6].n128_u64[1];
  v2 = v0[7].n128_u16[0];
  sub_10000B894(v0[1].n128_i64[0], v0[1].n128_i64[1], v0[2].n128_i64[0], v0[2].n128_i64[1], v0[3].n128_i64[0], v0[3].n128_i64[1], v0[4].n128_i64[0], v0[4].n128_i64[1], v0[6].n128_i64[0], v0[5]);
  v3 = OBJC_IVAR____TtC12amsaccountsd11AvroDecoder_infoKey;
  v4 = type metadata accessor for CodingUserInfoKey();
  sub_10000307C(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0->n128_i64 + OBJC_IVAR____TtC12amsaccountsd11AvroDecoder_userInfo);

  return v0;
}

uint64_t sub_1001485A4()
{
  sub_100148514();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_100148604(void *__src, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[2] = &_swiftEmptyDictionarySingleton;
  v4[3] = _swiftEmptyArrayStorage;
  memcpy(v4 + 9, __src, 0x62uLL);
  v7 = type metadata accessor for AvroPrimitiveDecoder();
  swift_allocObject();
  v8 = sub_1001520B4(a2, a3);
  v4[7] = v7;
  v4[8] = &off_1002B9D50;
  v4[4] = v8;
  return v4;
}

void *sub_1001486A8(uint64_t a1, const void *a2)
{
  v2[2] = &_swiftEmptyDictionarySingleton;
  v2[3] = _swiftEmptyArrayStorage;
  memcpy(v2 + 9, a2, 0x62uLL);
  sub_1001512EC(a1 + 32, v5);

  sub_10000601C(v5, (v2 + 4));
  return v2;
}

uint64_t sub_10014871C()
{
  memcpy(__dst, (v0 + 72), 0x62uLL);

  sub_10014416C(__dst, v5);
  v5[0] = sub_1001487F0(v0, __dst);
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  type metadata accessor for AvroKeyedDecodingContainer();
  swift_getWitnessTable();
  return KeyedDecodingContainer.init<A>(_:)();
}

uint64_t sub_1001487F0(uint64_t a1, uint64_t a2)
{
  v4 = Dictionary.init(dictionaryLiteral:)();
  v5 = *a2;
  switch(*(a2 + 96) >> 12)
  {
    case 3:
      v29 = v5[8];
      v30 = *(v29 + 16);
      if (!v30)
      {
        goto LABEL_45;
      }

      v72 = a2;
      v31 = (v29 + 32);
      v74 = a1;

      v32 = 0;
      v76 = v30 - 1;
      while (1)
      {
        if (v32 >= v30)
        {
          goto LABEL_51;
        }

        memcpy(__dst, v31, 0xB2uLL);
        v34 = __dst[0];
        v33 = __dst[1];
        sub_10014421C(__dst, v81);
        sub_10014416C(&__dst[2], v81);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v4;
        v36 = sub_10000A350(v34, v33, sub_10000A3D0);
        v38 = *(v4 + 16);
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_54;
        }

        v41 = v36;
        v42 = v37;
        sub_100099DF4(&qword_1002DE968, &unk_10023B920);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v40))
        {
          v43 = sub_10000A350(v34, v33, sub_10000A3D0);
          if ((v42 & 1) != (v44 & 1))
          {
            goto LABEL_60;
          }

          v41 = v43;
        }

        if (v42)
        {
          v4 = v79;
          v45 = (v79[7] + 104 * v41);
          memcpy(v81, v45, 0x62uLL);
          memcpy(v45, &__dst[2], 0x62uLL);
          sub_1001441C8(v81);
          sub_100144278(__dst);
        }

        else
        {
          v4 = v79;
          v79[(v41 >> 6) + 8] |= 1 << v41;
          v46 = (v79[6] + 16 * v41);
          *v46 = v34;
          v46[1] = v33;
          memcpy((v79[7] + 104 * v41), &__dst[2], 0x62uLL);

          sub_100144278(__dst);
          v47 = v79[2];
          v27 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v27)
          {
            goto LABEL_57;
          }

          v79[2] = v48;
        }

        if (v76 == v32)
        {
          goto LABEL_44;
        }

        v30 = *(v29 + 16);
        v31 += 184;
        ++v32;
      }

    case 6:
    case 0xB:
      v6 = v5[2];
      v7 = v5[3];
      memcpy(__dst, v5 + 4, 0x62uLL);

      sub_10014416C(__dst, v81);
      swift_isUniquelyReferenced_nonNull_native();
      v81[0] = v4;
      sub_10014F564();

      goto LABEL_47;
    case 9:
      v29 = v5[8];
      v49 = *(v29 + 16);
      if (v49)
      {
        v72 = a2;
        v50 = (v29 + 32);
        v74 = a1;

        v51 = 0;
        v77 = v49 - 1;
        while (1)
        {
          if (v51 >= v49)
          {
            goto LABEL_52;
          }

          memcpy(__dst, v50, 0xB2uLL);
          v53 = __dst[0];
          v52 = __dst[1];
          sub_10014421C(__dst, v81);
          sub_10014416C(&__dst[2], v81);
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v80 = v4;
          v55 = sub_10000A350(v53, v52, sub_10000A3D0);
          v57 = *(v4 + 16);
          v58 = (v56 & 1) == 0;
          v59 = v57 + v58;
          if (__OFADD__(v57, v58))
          {
            goto LABEL_55;
          }

          v60 = v55;
          v61 = v56;
          sub_100099DF4(&qword_1002DE968, &unk_10023B920);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v54, v59))
          {
            v62 = sub_10000A350(v53, v52, sub_10000A3D0);
            if ((v61 & 1) != (v63 & 1))
            {
              goto LABEL_60;
            }

            v60 = v62;
          }

          if (v61)
          {
            v4 = v80;
            v64 = (v80[7] + 104 * v60);
            memcpy(v81, v64, 0x62uLL);
            memcpy(v64, &__dst[2], 0x62uLL);
            sub_1001441C8(v81);
            sub_100144278(__dst);
          }

          else
          {
            v4 = v80;
            v80[(v60 >> 6) + 8] |= 1 << v60;
            v65 = (v80[6] + 16 * v60);
            *v65 = v53;
            v65[1] = v52;
            memcpy((v80[7] + 104 * v60), &__dst[2], 0x62uLL);

            sub_100144278(__dst);
            v66 = v80[2];
            v27 = __OFADD__(v66, 1);
            v67 = v66 + 1;
            if (v27)
            {
              goto LABEL_58;
            }

            v80[2] = v67;
          }

          if (v77 == v51)
          {
            break;
          }

          v49 = *(v29 + 16);
          v50 += 184;
          ++v51;
        }

LABEL_44:
        a1 = v74;
        a2 = v72;
      }

      else
      {
LABEL_45:
      }

      v68 = swift_allocObject();
      *(v68 + 16) = v29;
      __dst[0] = v68;
      __dst[7] = 0;
      __dst[10] = 0;
      LOWORD(__dst[12]) = -24576;
      swift_isUniquelyReferenced_nonNull_native();
      v81[0] = v4;
      sub_10014F564();
      goto LABEL_47;
    case 0xA:
      v73 = a1;
      v8 = v5[2];
      v9 = *(v8 + 16);
      if (!v9)
      {

        goto LABEL_47;
      }

      v71 = a2;

      v10 = 0;
      v75 = v9 - 1;
      v11 = 32;
      while (v10 < v9)
      {
        memcpy(__dst, (v8 + v11), 0xB2uLL);
        v13 = __dst[0];
        v12 = __dst[1];
        sub_10014421C(__dst, v81);
        sub_10014416C(&__dst[2], v81);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        v78 = v4;
        v15 = sub_10000A350(v13, v12, sub_10000A3D0);
        v17 = *(v4 + 16);
        v18 = (v16 & 1) == 0;
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
          goto LABEL_53;
        }

        v20 = v15;
        v21 = v16;
        sub_100099DF4(&qword_1002DE968, &unk_10023B920);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v19))
        {
          v22 = sub_10000A350(v13, v12, sub_10000A3D0);
          if ((v21 & 1) != (v23 & 1))
          {
            goto LABEL_60;
          }

          v20 = v22;
        }

        if (v21)
        {
          v4 = v78;
          v24 = (v78[7] + 104 * v20);
          memcpy(v81, v24, 0x62uLL);
          memcpy(v24, &__dst[2], 0x62uLL);
          sub_1001441C8(v81);
          sub_100144278(__dst);
        }

        else
        {
          v4 = v78;
          v78[(v20 >> 6) + 8] |= 1 << v20;
          v25 = (v78[6] + 16 * v20);
          *v25 = v13;
          v25[1] = v12;
          memcpy((v78[7] + 104 * v20), &__dst[2], 0x62uLL);

          sub_100144278(__dst);
          v26 = v78[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_56;
          }

          v78[2] = v28;
        }

        if (v75 == v10)
        {

          a1 = v73;
          a2 = v71;
LABEL_47:
          v69 = *(a1 + 24);
          type metadata accessor for AvroKeyedDecodingContainer.unionIndexCache();

          sub_10014A08C();

          sub_1001441C8(a2);
          return v69;
        }

        v9 = *(v8 + 16);
        v11 += 184;
        ++v10;
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
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
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    default:
      if (!AvroSchema.getName()().value._object)
      {
        goto LABEL_59;
      }

      sub_10014416C(a2, __dst);
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v4;
      sub_10014F564();

      goto LABEL_47;
  }
}

void *sub_100149068()
{
  sub_100151520();

  sub_10014416C(v7, &v5);
  result = sub_100149108(v1, v7, __src);
  if (!v2)
  {
    v0[3] = &type metadata for AvroUnkeyedDecodingContainer;
    v0[4] = sub_10014E950();
    v4 = swift_allocObject();
    *v0 = v4;
    return memcpy((v4 + 16), __src, 0x160uLL);
  }

  return result;
}

unint64_t sub_100149108@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, a2, sizeof(__dst));
  sub_1001619E8(0, 0xE000000000000000, &v138);
  v7 = v138;
  v8 = v139;
  v9 = v140;
  v10 = v142;
  v144 = a1[3];
  v79 = a1;
  v11 = *a2;
  switch(*(a2 + 48) >> 12)
  {
    case 2:
      v73 = v142;
      v75 = v141;
      v12 = *sub_10000C4FC(a1 + 4, a1[7]);
      v13 = sub_100152188();
      if (v4)
      {
        goto LABEL_8;
      }

      __src[0] = v7;
      __src[1] = v8;
      __src[2] = v9;
      *&__src[3] = v75;
      *(&__src[3] + 1) = v73;
      *&__src[5] = 0;
      LOWORD(__src[6]) = -16384;
      v66 = v13;

      sub_10014416C(a2, v98);
      sub_1001441C8(__src);
      v14 = a2[1];
      v68 = *a2;
      v15 = a2[2];
      v16 = a2[3];
      v18 = a2[4];
      v17 = a2[5];
      v19 = a2[6];
      v20 = a2[7];
      v22 = a2[8];
      v21 = a2[9];
      v23 = a2[10];
      v24 = a2[11];
      v25 = *(a2 + 48);
      *v98 = *a2;
      v74 = v17;
      v76 = v14;
      *&v98[8] = v14;
      *&v98[16] = v15;
      *&v98[24] = v16;
      *&v98[32] = v18;
      *&v98[40] = v17;
      v71 = v20;
      v72 = v19;
      *&v98[48] = v19;
      *&v98[56] = v20;
      *&v98[64] = v22;
      *&v98[72] = v21;
      *&v98[80] = v23;
      *&v98[88] = v24;
      *&v98[96] = v25;
      sub_10014416C(v98, &v89);
      sub_1001441C8(a2);
      v26 = v21;
      v27 = v22;
      goto LABEL_22;
    case 5:
      v73 = v142;
      v75 = v141;
      memcpy(v98, (v11 + 32), 0x62uLL);
      v30 = *sub_10000C4FC(a1 + 4, a1[7]);
      v31 = sub_100152188();
      if (v4)
      {
        goto LABEL_8;
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        v62 = __OFSUB__(0, v31);
        result = -v31;
        v54 = v73;
        if (v62)
        {
          goto LABEL_33;
        }

        v67 = result;
        v65 = 1;
      }

      else
      {
        v67 = v31;
        v65 = 0;
        v54 = v73;
      }

      v89 = v7;
      v90 = v8;
      v91 = v9;
      v92 = v75;
      v93 = v54;
      *&v95 = 0;
      v96 = -16384;

      sub_10014416C(v98, __src);
      sub_1001441C8(&v89);
      v70 = *v98;
      v16 = *&v98[24];
      v15 = *&v98[16];
      v18 = *&v98[32];
      v63 = *&v98[72];
      v64 = *&v98[64];
      v24 = *&v98[88];
      v23 = *&v98[80];
      v25 = *&v98[96];
      __src[0] = *v98;
      v74 = *&v98[40];
      v76 = *&v98[8];
      __src[1] = *&v98[16];
      __src[2] = *&v98[32];
      v71 = *&v98[56];
      v72 = *&v98[48];
      __src[3] = *&v98[48];
      __src[4] = *&v98[64];
      __src[5] = *&v98[80];
      LOWORD(__src[6]) = *&v98[96];
      sub_10014416C(__src, &v81);
      sub_1001441C8(a2);
      v26 = v63;
      v27 = v64;
      v38 = v70;
      v39 = 0;
      v40 = 0;
      v43 = __src[0];
      v44 = __src[1];
      v45 = __src[2];
      v46 = __src[3];
      v47 = __src[4];
      v48 = __src[5];
      v42 = 1;
      v49 = 0xFFFFFFFF00;
      v61 = __src[6];
      goto LABEL_30;
    case 6:
      v73 = v142;
      v75 = v141;
      memcpy(v98, (v11 + 16), 0x73uLL);
      v28 = *sub_10000C4FC(a1 + 4, a1[7]);
      result = sub_100152188();
      if (v4)
      {
LABEL_8:
        sub_1001441C8(a2);
        memset(__src, 0, 56);
        *(&__src[3] + 1) = 0xFFFFFFFF00;
        memset(&__src[4], 0, 34);
        sub_100004E24(__src, &qword_1002DE960, &qword_10023B918);
        *v98 = v7;
        *&v98[16] = v8;
        *&v98[32] = v9;
        *&v98[48] = v75;
        *&v98[56] = v73;
        *&v98[80] = 0;
        *&v98[96] = -16384;
        sub_1001441C8(v98);
      }

      if ((result & 0x8000000000000000) != 0)
      {
        if (__OFSUB__(0, 2 * result))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

        v67 = -2 * result;
        v65 = 1;
      }

      else
      {
        v67 = 2 * result;
        v65 = 0;
      }

      v81 = 4;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0;
      v88 = -12288;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0;
      v93 = 0xFFFFFFFF00;
      v94 = 0u;
      v95 = 0u;
      v96 = 0;

      sub_10014EA68(v98, __src);
      sub_10014416C(&v81, __src);
      sub_100004E24(&v89, &qword_1002DE960, &qword_10023B918);
      __src[0] = v7;
      v40 = -12288;
      __src[1] = v8;
      v39 = 4;
      __src[2] = v9;
      *&__src[3] = v75;
      *(&__src[3] + 1) = v73;
      *&__src[5] = 0;
      LOWORD(__src[6]) = -16384;
      sub_10014416C(&v98[16], v80);
      sub_1001441C8(__src);
      sub_10014EAC4(v98);
      sub_1001441C8(a2);
      v44 = 0uLL;
      v49 = 0;
      v38 = *&v98[16];
      v16 = *&v98[40];
      v15 = *&v98[32];
      v74 = *&v98[56];
      v18 = *&v98[48];
      v76 = *&v98[24];
      v71 = *&v98[72];
      v72 = *&v98[64];
      v26 = *&v98[88];
      v27 = *&v98[80];
      v42 = 1;
      v61 = -12288;
      v23 = *&v98[96];
      v24 = *&v98[104];
      v45 = 0uLL;
      v46 = 0uLL;
      v43 = xmmword_10023B6F0;
      v47 = 0uLL;
      v48 = 0uLL;
      v25 = *&v98[112];
LABEL_30:
      v50 = v67;
      v41 = v65;
LABEL_31:
      *(&__src[6] + 10) = v136;
      HIWORD(__src[6]) = v137;
      *(&__src[19] + 10) = v132;
      *(&__src[20] + 10) = v130;
      *(&__src[13] + 2) = v134;
      *&__src[0] = v144;
      *(__src + 8) = v43;
      *(&__src[1] + 8) = v44;
      *(&__src[2] + 8) = v45;
      *(&__src[3] + 8) = v46;
      *(&__src[4] + 8) = v47;
      *(&__src[5] + 8) = v48;
      WORD4(__src[6]) = v61;
      *(&__src[7] + 8) = 0u;
      *(&__src[8] + 8) = 0u;
      *(&__src[9] + 8) = 0u;
      *&__src[7] = v39;
      *(&__src[10] + 1) = v49;
      memset(&__src[11], 0, 32);
      LOWORD(__src[13]) = v40;
      WORD3(__src[13]) = v135;
      *(&__src[13] + 1) = v38;
      *&__src[14] = v76;
      *(&__src[14] + 1) = v15;
      *&__src[15] = v16;
      *(&__src[15] + 1) = v18;
      *&__src[16] = v74;
      *(&__src[16] + 1) = v72;
      *&__src[17] = v71;
      *(&__src[17] + 1) = v27;
      *&__src[18] = v26;
      *(&__src[18] + 1) = v23;
      *&__src[19] = v24;
      WORD4(__src[19]) = v25;
      HIWORD(__src[19]) = v133;
      *&__src[20] = v79;
      BYTE8(__src[20]) = v42;
      BYTE9(__src[20]) = v41;
      HIWORD(__src[20]) = v131;
      __src[21] = v50;
      *v98 = v144;
      *&v98[8] = v43;
      *&v98[24] = v44;
      *&v98[40] = v45;
      *&v98[56] = v46;
      *&v98[72] = v47;
      *&v98[88] = v48;
      *&v98[104] = v61;
      *&v98[110] = v137;
      *&v98[106] = v136;
      v101 = 0u;
      v100 = 0u;
      v99 = 0u;
      *&v98[112] = v39;
      v102 = v49;
      v104 = 0u;
      v103 = 0u;
      v105 = v40;
      v107 = v135;
      v106 = v134;
      v108 = v38;
      v109 = v76;
      v110 = v15;
      v111 = v16;
      v112 = v18;
      v113 = v74;
      v114 = v72;
      v115 = v71;
      v116 = v27;
      v117 = v26;
      v118 = v23;
      v119 = v24;
      v120 = v25;
      v121 = v132;
      v122 = v133;
      v123 = v79;
      v124 = v42;
      v125 = v41;
      v126 = v130;
      v127 = v131;
      v128 = v50;
      v129 = 0;
      sub_10014E9A4(__src, &v89);
      sub_10014E9DC(v98);
      return memcpy(a3, __src, 0x160uLL);
    case 8:
      v77 = v141;
      v66 = a2[8];
      v32 = *(a2 + 56);
      if (v32 == 7)
      {
      }

      else if (sub_100161910(v32) == 0x6E6F697461727564 && v51 == 0xE800000000000000)
      {

        v66 = 3;
      }

      else
      {
        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v53)
        {
          v66 = 3;
        }
      }

      v89 = v7;
      v90 = v8;
      v91 = v9;
      v92 = v77;
      v93 = v10;
      *&v95 = 0;
      v96 = -16384;
      memcpy(__src, __dst, 0x62uLL);
      LOWORD(__src[6]) &= 0xFFFu;
      sub_10014EA0C(__src, v98);
      sub_1001441C8(&v89);
      v55 = a2[1];
      v68 = *a2;
      v15 = a2[2];
      v16 = a2[3];
      v18 = a2[4];
      v56 = a2[5];
      v57 = a2[6];
      v58 = a2[7];
      v59 = a2[8];
      v60 = a2[9];
      v23 = a2[10];
      v24 = a2[11];
      v25 = *(a2 + 48);
      *v98 = *a2;
      *&v98[8] = v55;
      *&v98[16] = v15;
      *&v98[24] = v16;
      *&v98[32] = v18;
      v74 = v56;
      v76 = v55;
      *&v98[40] = v56;
      v71 = v58;
      v72 = v57;
      *&v98[48] = v57;
      *&v98[56] = v58;
      *&v98[64] = v59;
      *&v98[72] = v60;
      *&v98[80] = v23;
      *&v98[88] = v24;
      *&v98[96] = v25;
      sub_10014416C(v98, &v81);
      sub_1001441C8(a2);
      v26 = v60;
      v27 = v59;
LABEL_22:
      v50 = v66;
      v38 = v68;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = *v98;
      v44 = *&v98[16];
      v45 = *&v98[32];
      v46 = *&v98[48];
      v47 = *&v98[64];
      v48 = *&v98[80];
      v49 = 0xFFFFFFFF00;
      goto LABEL_23;
    default:
      __src[0] = v138;
      __src[1] = v139;
      __src[2] = v140;
      *&__src[3] = v141;
      *(&__src[3] + 1) = v142;
      *&__src[5] = 0;
      LOWORD(__src[6]) = -16384;

      sub_10014416C(a2, v98);
      sub_1001441C8(__src);
      v33 = a2[2];
      v34 = a2[3];
      v35 = a2[4];
      v74 = a2[5];
      v76 = a2[1];
      v72 = a2[6];
      v71 = a2[7];
      v36 = a2[8];
      v37 = a2[9];
      v23 = a2[10];
      v24 = a2[11];
      v25 = *(a2 + 48);
      *v98 = *a2;
      v69 = *v98;
      *&v98[8] = v76;
      *&v98[16] = v33;
      *&v98[24] = v34;
      *&v98[32] = v35;
      *&v98[40] = v74;
      *&v98[48] = v72;
      *&v98[56] = v71;
      *&v98[64] = v36;
      *&v98[72] = v37;
      *&v98[80] = v23;
      *&v98[88] = v24;
      *&v98[96] = v25;
      sub_10014416C(v98, &v89);
      sub_1001441C8(a2);
      v26 = v37;
      v27 = v36;
      v38 = v69;
      v15 = v33;
      v16 = v34;
      v18 = v35;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = *v98;
      v44 = *&v98[16];
      v45 = *&v98[32];
      v46 = *&v98[48];
      v47 = *&v98[64];
      v48 = *&v98[80];
      v49 = 0xFFFFFFFF00;
      v50 = 1;
LABEL_23:
      v61 = *&v98[96];
      goto LABEL_31;
  }
}

void *sub_100149B00()
{
  sub_100151520();

  sub_10014416C(v7, v5);
  result = sub_100149BA0(v7, v1, __src);
  if (!v2)
  {
    v0[3] = &type metadata for AvroSingleValueDecodingContainer;
    v0[4] = sub_10014E760();
    v4 = swift_allocObject();
    *v0 = v4;
    return memcpy((v4 + 16), __src, 0x78uLL);
  }

  return result;
}

void *sub_100149BA0@<X0>(unsigned __int16 *__src@<X1>, void *a2@<X0>, void *a3@<X8>)
{
  v7 = a2[3];
  v8 = __src[48] >> 12;
  if (v8 == 7)
  {
    v9 = *(*__src + 48);
    v10 = *sub_10000C4FC(a2 + 4, a2[7]);
    v11 = sub_100152188();
    if (!v3)
    {
      if (v11 < *(v9 + 16))
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          memcpy(v18, (v9 + 104 * v11 + 32), 0x62uLL);

          sub_10014416C(v18, __srca);
          sub_1001441C8(__src);
          v12 = v18;
LABEL_10:
          memcpy(__dst, v12, sizeof(__dst));
          goto LABEL_11;
        }

        __break(1u);
        goto LABEL_15;
      }

      sub_10014E8FC();
      swift_allocError();
      *v15 = 2;
      swift_willThrow();
    }

    sub_1001441C8(__src);
  }

  if (v8 == 3)
  {
    memcpy(__dst, __src, sizeof(__dst));

LABEL_11:
    __srca[0] = v7;
    memcpy(&__srca[1], __dst, 0x62uLL);
    __srca[14] = a2;
    v18[0] = v7;
    memcpy(&v18[1], __dst, 0x62uLL);
    v18[14] = a2;
    sub_10014E894(__srca, &v16);
    sub_10014E8CC(v18);
    return memcpy(a3, __srca, 0x78uLL);
  }

  memcpy(__dst, __src, sizeof(__dst));

  sub_10014416C(__src, v18);
  v13 = sub_10015E780();
  if (v13[2])
  {
    memcpy(__srca, v13 + 4, 0x62uLL);
    sub_10014416C(__srca, v18);

    memcpy(v18, __dst, 0x62uLL);
    sub_1001441C8(v18);
    sub_1001441C8(__src);
    v12 = __srca;
    goto LABEL_10;
  }

LABEL_15:

  __break(1u);
  return result;
}

uint64_t sub_100149DD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100004118((v0 + 32));
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  sub_10000B894(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 152), *(v0 + 136));
  return v0;
}

uint64_t sub_100149E2C()
{
  sub_100149DD4();

  return _swift_deallocClassInstance(v0, 170, 7);
}

uint64_t sub_100149EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 16);
  sub_1001500B4(a3, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_100149F8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_10000A350(a1, a2, sub_10000A3D0);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10014A03C()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_10014A05C()
{
  v0 = sub_10014A03C();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10014A100()
{

  Array.init()();
  sub_100099DF4(&qword_1002DEB38, &qword_10023C4E8);
  type metadata accessor for Array();
  sub_100151454();
  Sequence.reduce<A>(into:_:)();

  return v1;
}

uint64_t sub_10014A1C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21[1] = a1;
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v21 - v8;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v21 - v16;
  v19 = *a2;
  v18 = a2[1];

  dispatch thunk of CodingKey.init(stringValue:)();
  if (sub_100004DFC(v9, 1, a3) == 1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  (*(v10 + 32))(v17, v9, a3);
  (*(v10 + 16))(v14, v17, a3);
  type metadata accessor for Array();
  Array.append(_:)();
  return (*(v10 + 8))(v17, a3);
}

void *sub_10014A3F4@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v6 = sub_10000A350(v4, v5, sub_10000A3D0);
  v8 = v7;

  if (v8)
  {
    memcpy(__dst, (*(a1 + 56) + 104 * v6), 0x62uLL);
    if ((__dst[12] & 0xF000) != 0x7000)
    {
      sub_10014416C(__dst, v18);
      goto LABEL_7;
    }

    v9 = *(__dst[0] + 48);
    sub_10014416C(__dst, v18);

    v10 = dispatch thunk of CodingKey.stringValue.getter();
    v12 = sub_100149F8C(v10, v11);
    v14 = v13;

    if (v14)
    {

LABEL_7:
      v15 = __dst;
LABEL_11:
      memcpy(v18, v15, 0x62uLL);
      return memcpy(a2, v18, 0x62uLL);
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 < *(v9 + 16))
      {
        memcpy(__src, (v9 + 104 * v12 + 32), 0x62uLL);
        sub_10014416C(__src, v18);

        sub_1001441C8(__dst);
        v15 = __src;
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:

  __break(1u);
  return result;
}

uint64_t sub_10014A5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a4 + 16))
  {
    sub_10000A350(v5, v6, sub_10000A3D0);
    v8 = v7;
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_10014A638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10014A3F4(a4, v20);
  v6 = v25 >> 12;
  if (v6 != 7)
  {
    if (v6 == 13 && v25 == 53248 && (v7 = vorrq_s8(vorrq_s8(v21, v23), vorrq_s8(v22, v24)), !(*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v20[3] | v20[2] | v20[1] | v20[0])))
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      sub_1001441C8(v20);
      LOBYTE(v8) = 0;
    }

    return v8 & 1;
  }

  v9 = *(v20[0] + 48);
  v8 = *sub_10000C4FC((a3 + 32), *(a3 + 56));
  v10 = sub_100152188();
  if (!v4)
  {
    v11 = v10;
    if (v10 >= *(v9 + 16))
    {
      sub_10014E8FC();
      swift_allocError();
      *v16 = 2;
      swift_willThrow();
      sub_1001441C8(v20);
      return v8 & 1;
    }

    v12 = dispatch thunk of CodingKey.stringValue.getter();
    sub_100149EFC(v12, v13, v11);

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *(v9 + 16))
    {
      memcpy(__dst, (v9 + 104 * v11 + 32), sizeof(__dst));
      sub_10014416C(__dst, v18);

      v14 = vorrq_s8(vorrq_s8(vorrq_s8(*__dst, *&__dst[32]), vorrq_s8(*&__dst[16], *&__dst[48])), vorrq_s8(*&__dst[64], *&__dst[80]));
      if (vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
      {
        v15 = 0;
      }

      else
      {
        v15 = *&__dst[96] == -12288;
      }

      LOBYTE(v8) = v15;
      sub_1001441C8(__dst);
      sub_1001441C8(v20);
      return v8 & 1;
    }

    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10014A87C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_10014A3F4(a5, v66);
  v9 = v67 >> 12;
  switch(v9)
  {
    case 12:
      sub_100151350();
      swift_allocError();
      v13 = 6;
      goto LABEL_10;
    case 8:
      goto LABEL_6;
    case 6:
      if (!sub_1001513A4(a1) || (v54 = v10, v53 = *(v10 + 8), v53() != &type metadata for String))
      {
LABEL_6:
        sub_10014B0A4(a4, a5, v63);
        if (!v56)
        {
          sub_100008494(v63, v64);
          dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
          sub_1001441C8(v66);
          return sub_100004118(v63);
        }

        return sub_1001441C8(v66);
      }

      if (sub_10014A5B4(a2, a3, a4, a5))
      {
        sub_10014B0A4(a4, a5, v63);
        if (!v56)
        {
          sub_10000C4FC(v63, v64);
          v18 = dispatch thunk of UnkeyedDecodingContainer.count.getter();
          if ((v19 & 1) == 0 && !v18)
          {
            sub_1001441C8(v66);
            v20 = &_swiftEmptyDictionarySingleton;
LABEL_39:
            *&v58 = v20;
            sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
            swift_dynamicCast();
            return sub_100004118(v63);
          }

          v57 = &_swiftEmptyDictionarySingleton;
          v21 = v53;
          while (1)
          {
            while (1)
            {
              do
              {
                sub_10000C4FC(v63, v64);
                if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
                {
                  sub_1001441C8(v66);
                  v20 = v57;
                  goto LABEL_39;
                }

                v22 = v21();
                v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(v22);
                sub_100008494(v63, v64);
                dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
                v21 = v53;
              }

              while ((swift_dynamicCast() & 1) == 0);
              v24 = v58;
              v25 = (*(v54 + 16))();
              v27 = v26;
              sub_100008494(v63, v64);
              *(&v59 + 1) = v25;
              v60 = v27;
              sub_100007914(&v58);
              dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
              v35 = *(&v59 + 1);
              v36 = sub_10000C4FC(&v58, *(&v59 + 1));
              v62 = v35;
              v37 = sub_100007914(&v61);
              (*(*(v35 - 8) + 16))(v37, v36, v35);
              sub_100004118(&v58);
              if (v62)
              {
                break;
              }

              sub_100004E24(&v61, &unk_1002DFC10, &qword_10022E6D0);
              v28 = sub_10000A350(v24, *(&v24 + 1), sub_10000A3D0);
              v30 = v29;

              if (v30)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v68 = v57;
                v32 = v57[3];
                sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
                _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v32);
                v33 = v68;
                v34 = *(v68[6] + 16 * v28 + 8);

                sub_1000197D8((v33[7] + 32 * v28), &v58);
                v57 = v33;
                _NativeDictionary._delete(at:)();
              }

              else
              {
                v58 = 0u;
                v59 = 0u;
              }

              v21 = v53;
              sub_100004E24(&v58, &unk_1002DFC10, &qword_10022E6D0);
            }

            sub_1000197D8(&v61, &v58);
            v38 = swift_isUniquelyReferenced_nonNull_native();
            v68 = v57;
            v39 = sub_10000A350(v24, *(&v24 + 1), sub_10000A3D0);
            v41 = v57[2];
            v42 = (v40 & 1) == 0;
            v43 = v41 + v42;
            if (__OFADD__(v41, v42))
            {
              break;
            }

            v44 = v39;
            v45 = v40;
            sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v38, v43))
            {
              v46 = sub_10000A350(v24, *(&v24 + 1), sub_10000A3D0);
              v21 = v53;
              if ((v45 & 1) != (v47 & 1))
              {
                goto LABEL_43;
              }

              v44 = v46;
            }

            else
            {
              v21 = v53;
            }

            if (v45)
            {

              v57 = v68;
              v48 = (v68[7] + 32 * v44);
              sub_100004118(v48);
              sub_1000197D8(&v58, v48);
            }

            else
            {
              v49 = v68;
              v68[(v44 >> 6) + 8] |= 1 << v44;
              *(v49[6] + 16 * v44) = v24;
              sub_1000197D8(&v58, (v49[7] + 32 * v44));
              v50 = v49[2];
              v51 = __OFADD__(v50, 1);
              v52 = v50 + 1;
              if (v51)
              {
                goto LABEL_41;
              }

              v57 = v49;
              v49[2] = v52;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        return sub_1001441C8(v66);
      }

      sub_10014E8FC();
      swift_allocError();
      v13 = 1;
LABEL_10:
      *v12 = v13;
      swift_willThrow();
      return sub_1001441C8(v66);
  }

  v14 = type metadata accessor for AvroBinaryDecoder();
  swift_allocObject();

  sub_10014416C(v66, v63);
  v15 = sub_1001486A8(a4, v66);
  if (!v56)
  {
    v17 = v15;
    v64 = v14;
    v65 = sub_10000DADC(&qword_1002DEA68, v16, type metadata accessor for AvroBinaryDecoder);
    v63[0] = v17;
    dispatch thunk of Decodable.init(from:)();
    return sub_1001441C8(v66);
  }

LABEL_42:
  swift_unexpectedError();
  __break(1u);
LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10014B0A4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{

  sub_10014A3F4(a2, v9);
  result = sub_100149108(a1, v9, __src);
  if (!v3)
  {
    a3[3] = &type metadata for AvroUnkeyedDecodingContainer;
    a3[4] = sub_10014E950();
    v8 = swift_allocObject();
    *a3 = v8;
    return memcpy((v8 + 16), __src, 0x160uLL);
  }

  return result;
}

uint64_t sub_10014B194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_10014A3F4(a5, v8);
  sub_1001487F0(a4, v8);
  type metadata accessor for AvroKeyedDecodingContainer();
  swift_getWitnessTable();
  return KeyedDecodingContainer.init<A>(_:)();
}

uint64_t sub_10014B294@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for AvroBinaryDecoder();
  a2[4] = sub_10000DADC(&qword_1002DEA68, v4, type metadata accessor for AvroBinaryDecoder);
  *a2 = a1;
}

uint64_t sub_10014B314@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for AvroBinaryDecoder();
  a2[4] = sub_10000DADC(&qword_1002DEA68, v4, type metadata accessor for AvroBinaryDecoder);
  *a2 = a1;
}

uint64_t sub_10014B39C(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  return sub_10014A100();
}

uint64_t sub_10014B3B0(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return sub_10014A5B4(a1, *v2, v2[1], v2[2]);
}

uint64_t sub_10014B3C4(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return sub_10014A638(a1, *v2, v2[1], v2[2]) & 1;
}

uint64_t sub_10014B3F0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v5 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_10014A87C(&type metadata for Bool, a1, *v2, *(v2 + 8), *(v2 + 16));
  if (!v3)
  {
    v6 = v9;
  }

  return v6 & 1;
}

uint64_t sub_10014B450(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_10014A87C(&type metadata for String, a1, *v2, *(v2 + 8), *(v2 + 16));
  if (!v3)
  {
    return v8;
  }

  return result;
}

double sub_10014B4AC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_10014A87C(&type metadata for Double, a1, *v2, *(v2 + 8), *(v2 + 16));
  if (!v3)
  {
    return v8;
  }

  return result;
}

float sub_10014B508(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_10014A87C(&type metadata for Float, a1, *v2, *(v2 + 8), *(v2 + 16));
  if (!v3)
  {
    return v8;
  }

  return result;
}

uint64_t sub_10014B694(uint64_t a1, uint64_t a2)
{
  sub_100006AD0(a1, a2);
  result = sub_10000A28C(v3, v4, v5, v6, v7, v8, v9, v10);
  if (!v2)
  {
    return v12;
  }

  return result;
}

uint64_t sub_10014B6F0(uint64_t a1, uint64_t a2)
{
  sub_100006AD0(a1, a2);
  result = sub_10000A28C(v3, v4, v5, v6, v7, v8, v9, v10);
  if (!v2)
  {
    return v12;
  }

  return result;
}

uint64_t sub_10014B74C(uint64_t a1, uint64_t a2)
{
  sub_100006AD0(a1, a2);
  result = sub_10000A28C(v3, v4, v5, v6, v7, v8, v9, v10);
  if (!v2)
  {
    return v12;
  }

  return result;
}

uint64_t sub_10014B7A8(uint64_t a1, uint64_t a2)
{
  sub_100006AD0(a1, a2);
  result = sub_10000A28C(v3, v4, v5, v6, v7, v8, v9, v10);
  if (!v2)
  {
    return v12;
  }

  return result;
}

uint64_t sub_10014B850()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014B8A0()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014B948()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014B998()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014BAC0()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014BB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_10014BC04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  v5 = v2[3];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  return sub_10014B294(v2[1], a2);
}

unint64_t sub_10014BCA4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = *(v1 + 336);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = *(v1 + 168);
  v7 = *(v1 + 192);
  v8 = *(v1 + 208);
  if (v6 >> 8 != 0xFFFFFFFF || *(v1 + 192) > 1uLL || (v8 & 0xFCFE) != 0)
  {
    if ((*(v1 + 344) & 1) == 0)
    {
      v22 = *(v1 + 192);
      if (*(v1 + 329))
      {
        v11 = *sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
        result = sub_100152188();
        if (v2)
        {
          return result;
        }

        v13 = *(v3 + 128);
        __dst[0] = *(v3 + 112);
        __dst[1] = v13;
        __dst[2] = *(v3 + 144);
        *&__dst[3] = *(v3 + 160);
        *(&__dst[3] + 1) = v6;
        __dst[4] = *(v3 + 176);
        __dst[5] = v22;
      }

      else
      {
        v19 = *(v1 + 128);
        __dst[0] = *(v1 + 112);
        __dst[1] = v19;
        __dst[2] = *(v1 + 144);
        *&__dst[3] = *(v1 + 160);
        *(&__dst[3] + 1) = v6;
        __dst[4] = *(v1 + 176);
        __dst[5] = v7;
      }

      LOWORD(__dst[6]) = v8;
      result = sub_10014416C(__dst, v23);
      v15 = v22;
      v20 = *(v3 + 112);
      v21 = *(v3 + 144);
      v27 = *(v3 + 128);
      v28 = v21;
      v29 = *(v3 + 160);
      v25 = *(v3 + 176);
      v26 = v20;
      goto LABEL_17;
    }

LABEL_16:
    memcpy(__dst, (v3 + 216), 0x62uLL);
    result = sub_10014416C(__dst, v23);
    v27 = __dst[1];
    v28 = __dst[2];
    v6 = *(&__dst[3] + 1);
    v29 = *&__dst[3];
    v15 = __dst[5];
    v25 = __dst[4];
    v26 = __dst[0];
    v8 = __dst[6];
LABEL_17:
    v16 = v27;
    v17 = v28;
    v18 = v25;
    *a1 = v26;
    *(a1 + 16) = v16;
    *(a1 + 32) = v17;
    *(a1 + 48) = v29;
    *(a1 + 56) = v6;
    *(a1 + 64) = v18;
    *(a1 + 80) = v15;
    *(a1 + 96) = v8;
    return result;
  }

  if ((*(v1 + 329) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(v1 + 344) >= v5)
  {
    goto LABEL_16;
  }

  v14 = *sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
  result = sub_100152188();
  if (!v2)
  {
    goto LABEL_16;
  }

  return result;
}

void sub_10014BE70()
{
  v1 = *(v0 + 344);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = v0;
  *(v0 + 344) = v2;
  if (v2 == *(v0 + 336) && *(v0 + 328) == 1)
  {
    v4 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
    v5 = sub_100152188();
    if (v5)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        *(v3 + 329) = 1;
        v6 = __OFSUB__(0, v5);
        v5 = -v5;
        if (v6)
        {
          goto LABEL_21;
        }
      }

      v9 = (*(v3 + 208) & 0xFCFE) != 0 || *(v3 + 168) >> 8 != 0xFFFFFFFFLL || *(v3 + 192) > 1uLL;
      v10 = v5 << v9;
      v6 = __OFADD__(v2, v10);
      v11 = v2 + v10;
      if (!v6)
      {
        *(v3 + 336) = v11;
        return;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }
  }
}

uint64_t sub_10014BF6C()
{
  sub_10014BE70();
  v1 = *(v0 + 320);
  memcpy(__dst, (v0 + 8), 0x62uLL);

  sub_10014416C(__dst, v6);
  v6[0] = sub_1001487F0(v1, __dst);
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v4;
  type metadata accessor for AvroKeyedDecodingContainer();
  swift_getWitnessTable();
  return KeyedDecodingContainer.init<A>(_:)();
}

void *sub_10014C04C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 320);
  memcpy(__dst, (v1 + 8), 0x62uLL);

  sub_10014416C(__dst, &v7);
  result = sub_100149108(v4, __dst, __src);
  if (!v2)
  {
    a1[3] = &type metadata for AvroUnkeyedDecodingContainer;
    a1[4] = sub_10014E950();
    v6 = swift_allocObject();
    *a1 = v6;
    return memcpy((v6 + 16), __src, 0x160uLL);
  }

  return result;
}

uint64_t sub_10014C10C@<X0>(void *a1@<X8>)
{
  sub_10014BE70();
  v3 = *(v1 + 320);
  a1[3] = type metadata accessor for AvroBinaryDecoder();
  a1[4] = sub_10000DADC(&qword_1002DEA68, v4, type metadata accessor for AvroBinaryDecoder);
  *a1 = v3;
}

void sub_10014C190(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v19 = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[40];
  memcpy(v24, v4, sizeof(v24));
  sub_10014BCA4(v23);
  if (!v5)
  {
    v17 = v7;
    v18 = v10;
    v12 = type metadata accessor for AvroBinaryDecoder();
    swift_allocObject();

    v14 = sub_1001486A8(v13, v23);
    v21 = v12;
    v22 = sub_10000DADC(&qword_1002DEA68, v15, type metadata accessor for AvroBinaryDecoder);
    v20 = v14;
    v16 = v18;
    dispatch thunk of Decodable.init(from:)();
    (*(v17 + 32))(v19, v16, a2);
  }

  sub_10014BE70();
}

BOOL sub_10014C42C()
{
  v1 = vorrq_s8(vorrq_s8(vorrq_s8(*(v0 + 8), *(v0 + 40)), vorrq_s8(*(v0 + 24), *(v0 + 56))), vorrq_s8(*(v0 + 72), *(v0 + 88)));
  if (vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)))
  {
    return 0;
  }

  else
  {
    return *(v0 + 104) == -12288;
  }
}

uint64_t sub_10014C4CC()
{
  v1 = *(v0 + 104);
  if ((v1 & 0xF000) == 0xD000 && ((v2 = vorrq_s8(vorrq_s8(*(v0 + 40), *(v0 + 72)), vorrq_s8(*(v0 + 56), *(v0 + 88))), v3 = *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 32) | *(v0 + 24) | *(v0 + 16), v1 == 53248) ? (v4 = *(v0 + 8) == 1) : (v4 = 0), v4 ? (v5 = v3 == 0) : (v5 = 0), v5))
  {
    v9 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
    v7 = sub_1001520EC();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v6 = 3;
    v7 = swift_willThrow();
  }

  return v7 & 1;
}

uint64_t sub_10014C5A8()
{
  v1 = *(v0 + 104);
  if ((v1 & 0xF000) == 0xD000 && ((v2 = vorrq_s8(vorrq_s8(*(v0 + 40), *(v0 + 72)), vorrq_s8(*(v0 + 56), *(v0 + 88))), v3 = *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 32) | *(v0 + 24) | *(v0 + 16), v1 == 53248) ? (v4 = *(v0 + 8) == 1) : (v4 = 0), v4 ? (v5 = v3 == 0) : (v5 = 0), v5))
  {
    v9 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
    v7 = sub_1001520EC();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v6 = 3;
    v7 = swift_willThrow();
  }

  return v7 & 1;
}

unint64_t sub_10014C6D0()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 104);
  if (v3 >> 12 != 4)
  {
    if (v3 >> 12 == 13 && ((v4 = vorrq_s8(vorrq_s8(*(v0 + 40), *(v0 + 72)), vorrq_s8(*(v0 + 56), *(v0 + 88))), v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *(v0 + 32) | *(v0 + 24) | *(v0 + 16), v3 == 53248) ? (v6 = v2 == 4) : (v6 = 0), v6 ? (v7 = v5 == 0) : (v7 = 0), v7))
    {
      v0 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
      v13 = sub_1001523D4();
      if (!v1)
      {
        return v13;
      }
    }

    else
    {
      sub_10014E8FC();
      swift_allocError();
      *v8 = 16;
      swift_willThrow();
    }

    return v0;
  }

  v9 = *(v2 + 88);
  v0 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
  result = sub_100152188();
  if (v1)
  {
    return v0;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v9 + 16))
  {
    v11 = v9 + 16 * result;
    v0 = *(v11 + 32);
    v12 = *(v11 + 40);

    return v0;
  }

  __break(1u);
  return result;
}

unint64_t sub_10014C824()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 104);
  if (v3 >> 12 != 4)
  {
    if (v3 >> 12 == 13 && ((v4 = vorrq_s8(vorrq_s8(*(v0 + 40), *(v0 + 72)), vorrq_s8(*(v0 + 56), *(v0 + 88))), v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *(v0 + 32) | *(v0 + 24) | *(v0 + 16), v3 == 53248) ? (v6 = v2 == 4) : (v6 = 0), v6 ? (v7 = v5 == 0) : (v7 = 0), v7))
    {
      v0 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
      v13 = sub_1001523D4();
      if (!v1)
      {
        return v13;
      }
    }

    else
    {
      sub_10014E8FC();
      swift_allocError();
      *v8 = 16;
      swift_willThrow();
    }

    return v0;
  }

  v9 = *(v2 + 88);
  v0 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
  result = sub_100152188();
  if (v1)
  {
    return v0;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v9 + 16))
  {
    v11 = v9 + 16 * result;
    v0 = *(v11 + 32);
    v12 = *(v11 + 40);

    return v0;
  }

  __break(1u);
  return result;
}

void sub_10014C9C4()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 104);
  if (v3 >> 12)
  {
    if (v3 >> 12 == 13)
    {
      v4 = vorrq_s8(vorrq_s8(*(v0 + 40), *(v0 + 72)), vorrq_s8(*(v0 + 56), *(v0 + 88)));
      v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *(v0 + 32) | *(v0 + 16) | v2;
      v6 = v3 == 53248 && *(v0 + 8) == 3;
      if (v6 && v5 == 0)
      {
        v8 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
        sub_100152374();
        return;
      }
    }

    goto LABEL_13;
  }

  if (*(v0 + 24) == 7)
  {
LABEL_13:
    sub_10014E8FC();
    swift_allocError();
    *v9 = 15;
    swift_willThrow();
    return;
  }

  if (sub_100161910(v2) == 1702125924 && v10 == 0xE400000000000000)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v13 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
  sub_100152188();
  if (!v1)
  {
    static Date.timeIntervalBetween1970AndReferenceDate.getter();
  }
}

void sub_10014CB48()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 104);
  if (v3 >> 12)
  {
    if (v3 >> 12 == 13)
    {
      v4 = vorrq_s8(vorrq_s8(*(v0 + 40), *(v0 + 72)), vorrq_s8(*(v0 + 56), *(v0 + 88)));
      v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *(v0 + 32) | *(v0 + 16) | v2;
      v6 = v3 == 53248 && *(v0 + 8) == 3;
      if (v6 && v5 == 0)
      {
        v8 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
        sub_100152374();
        return;
      }
    }

    goto LABEL_13;
  }

  if (*(v0 + 24) == 7)
  {
LABEL_13:
    sub_10014E8FC();
    swift_allocError();
    *v9 = 15;
    swift_willThrow();
    return;
  }

  if (sub_100161910(v2) == 1702125924 && v10 == 0xE400000000000000)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v13 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
  sub_100152188();
  if (!v1)
  {
    static Date.timeIntervalBetween1970AndReferenceDate.getter();
  }
}

void sub_10014CD18()
{
  v1 = *(v0 + 104);
  if ((v1 & 0xF000) == 0xD000 && ((v2 = vorrq_s8(vorrq_s8(*(v0 + 40), *(v0 + 72)), vorrq_s8(*(v0 + 56), *(v0 + 88))), v3 = *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 32) | *(v0 + 24) | *(v0 + 16), v1 == 53248) ? (v4 = *(v0 + 8) == 2) : (v4 = 0), v4 ? (v5 = v3 == 0) : (v5 = 0), v5))
  {
    v7 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
    sub_100152314();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v6 = 14;
    swift_willThrow();
  }
}

void sub_10014CDF0()
{
  v1 = *(v0 + 104);
  if ((v1 & 0xF000) == 0xD000 && ((v2 = vorrq_s8(vorrq_s8(*(v0 + 40), *(v0 + 72)), vorrq_s8(*(v0 + 56), *(v0 + 88))), v3 = *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 32) | *(v0 + 24) | *(v0 + 16), v1 == 53248) ? (v4 = *(v0 + 8) == 2) : (v4 = 0), v4 ? (v5 = v3 == 0) : (v5 = 0), v5))
  {
    v7 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
    sub_100152314();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v6 = 14;
    swift_willThrow();
  }
}

unint64_t sub_10014CF14()
{
  if ((*(v0 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 4;
    return swift_willThrow();
  }

  else
  {
    v1 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
    return sub_100152188();
  }
}

unint64_t sub_10014CF9C()
{
  if ((*(v0 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 4;
    return swift_willThrow();
  }

  else
  {
    v1 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
    return sub_100152188();
  }
}

int64_t sub_10014D070()
{
  if ((*(v0 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 5;
    return swift_willThrow();
  }

  else
  {
    v1 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
    return sub_1001521BC();
  }
}

int64_t sub_10014D0F8()
{
  if ((*(v0 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 5;
    return swift_willThrow();
  }

  else
  {
    v1 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
    return sub_1001521BC();
  }
}

uint64_t sub_10014D230()
{
  v1 = *(v0 + 104) >> 12;
  v2 = v1 > 0xB;
  v3 = (1 << v1) & 0xDE9;
  if (v2 || v3 == 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = 7;
    return swift_willThrow();
  }

  else
  {
    v5 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
    return sub_100152154();
  }
}

uint64_t sub_10014D2D0()
{
  v1 = *(v0 + 104) >> 12;
  v2 = v1 > 0xB;
  v3 = (1 << v1) & 0xDE9;
  if (v2 || v3 == 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = 7;
    return swift_willThrow();
  }

  else
  {
    v5 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
    return sub_100152154();
  }
}

unint64_t sub_10014D3BC()
{
  if ((*(v0 + 104) & 0xF000) == 0x1000)
  {
    v1 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
    return sub_100152188();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 8;
    return swift_willThrow();
  }
}

unint64_t sub_10014D448()
{
  if ((*(v0 + 104) & 0xF000) == 0x1000)
  {
    v1 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
    return sub_100152188();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 8;
    return swift_willThrow();
  }
}

unint64_t sub_10014D538()
{
  if ((*(v0 + 104) & 0xE000) != 0)
  {
    goto LABEL_5;
  }

  v2 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
  result = sub_100152188();
  if (!v1 && (result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    sub_10014E8FC();
    swift_allocError();
    *v4 = 9;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10014D5C4()
{
  if ((*(v0 + 104) & 0xE000) != 0)
  {
    goto LABEL_5;
  }

  v2 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
  result = sub_100152188();
  if (!v1 && (result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    sub_10014E8FC();
    swift_allocError();
    *v4 = 9;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10014D69C()
{
  v1 = *(v0 + 104) >> 12;
  if (v1 == 8 || v1 == 2)
  {
    v3 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
    return sub_100152224();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v4 = 10;
    return swift_willThrow();
  }
}

uint64_t sub_10014D72C()
{
  v1 = *(v0 + 104) >> 12;
  if (v1 == 8 || v1 == 2)
  {
    v3 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
    return sub_100152224();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v4 = 10;
    return swift_willThrow();
  }
}

uint64_t sub_10014D820(uint64_t (*a1)(uint64_t *), char a2)
{
  if ((*(v2 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = a2;
    return swift_willThrow();
  }

  else
  {
    v4 = sub_100007D24((*(v2 + 320) + 32), *(*(v2 + 320) + 56));
    return a1(v4);
  }
}

uint64_t sub_10014D8B0(uint64_t (*a1)(uint64_t *), char a2)
{
  if ((*(v2 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = a2;
    return swift_willThrow();
  }

  else
  {
    v4 = sub_100007D24((*(v2 + 112) + 32), *(*(v2 + 112) + 56));
    return a1(v4);
  }
}

uint64_t sub_10014D98C()
{
  if ((*(v0 + 104) & 0xF000) == 0x8000)
  {
    v1 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
    return sub_1001522B4();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 12;
    return swift_willThrow();
  }
}

uint64_t sub_10014DA18()
{
  if ((*(v0 + 104) & 0xF000) == 0x8000)
  {
    v1 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
    return sub_1001522B4();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 12;
    return swift_willThrow();
  }
}

unint64_t sub_10014DAF0()
{
  if ((*(v0 + 104) & 0xF000) != 0x1000)
  {
    goto LABEL_5;
  }

  v2 = *sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
  result = sub_100152188();
  if (!v1 && (result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    sub_10014E8FC();
    swift_allocError();
    *v4 = 13;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10014DB80()
{
  if ((*(v0 + 104) & 0xF000) != 0x1000)
  {
    goto LABEL_5;
  }

  v2 = *sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
  result = sub_100152188();
  if (!v1 && (result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    sub_10014E8FC();
    swift_allocError();
    *v4 = 13;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10014DC70()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014DCC0()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014DD68()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014DDB8()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014DEE0()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014DF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

void *sub_10014E470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 16))(a2, a4);
  (*(a4 + 40))(v10, a2, a4);
  type metadata accessor for AvroBinaryDecoder();
  swift_allocObject();
  result = sub_1001486A8(v7, v10);
  if (!v4)
  {
    sub_10000DADC(&qword_1002DEA68, v9, type metadata accessor for AvroBinaryDecoder);
    return dispatch thunk of Decodable.init(from:)();
  }

  return result;
}

void sub_10014E5C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(a1 + 16);
  sub_10014E5B0();
}

uint64_t type metadata accessor for AvroDecoder()
{
  result = qword_1002DE770;
  if (!qword_1002DE770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014E630()
{
  result = type metadata accessor for CodingUserInfoKey();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10014E760()
{
  result = qword_1002DE948;
  if (!qword_1002DE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE948);
  }

  return result;
}

uint64_t sub_10014E7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int16 a13)
{
  switch(a13 >> 12)
  {
    case 0:
    case 1:
    case 2:
      goto LABEL_6;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 0xA:
    case 0xB:

      break;
    case 8:
    case 0xC:

LABEL_6:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10014E8FC()
{
  result = qword_1002DE950;
  if (!qword_1002DE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE950);
  }

  return result;
}

unint64_t sub_10014E950()
{
  result = qword_1002DE958;
  if (!qword_1002DE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE958);
  }

  return result;
}

unint64_t sub_10014EB48()
{
  sub_100004FE0();
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  sub_1000B72B8();
  v3 = Hasher._finalize()();

  return sub_10014ED40(v1, v3);
}

unint64_t sub_10014EBB0()
{
  sub_100004FE0();
  v2 = *(v0 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();

  return sub_10014EF7C(v1, v3);
}

unint64_t sub_10014EC40()
{
  sub_100004FE0();
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  sub_1001113D4();
  v3 = Hasher._finalize()();

  return sub_10014F074(v1, v3);
}

unint64_t sub_10014ECA8()
{
  sub_100005150();
  type metadata accessor for CodingUserInfoKey();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v0 = sub_100004938();

  return sub_10014F31C(v0, v1);
}

unint64_t sub_10014ECFC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10014F4A0(a1, v4);
}

unint64_t sub_10014ED40(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    do
    {
      v8 = *(v26 + 48) + 40 * v4;
      v9 = *(v8 + 16);
      v11 = *(v8 + 24);
      v10 = *(v8 + 32);
      if (*v8 != v6 || *(v8 + 8) != v7)
      {
        v13 = *(v8 + 8);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      if (v9)
      {
        if (v9 == 1)
        {
          v14 = 0xE600000000000000;
          v15 = 0x444972657375;
        }

        else
        {
          v14 = 0xE800000000000000;
          v15 = 0x4449746E65696C63;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
        v15 = 1684632420;
      }

      v16 = *(a1 + 16);
      if (*(a1 + 16))
      {
        if (v16 == 1)
        {
          v17 = 0x444972657375;
        }

        else
        {
          v17 = 0x4449746E65696C63;
        }

        if (v16 == 1)
        {
          v18 = 0xE600000000000000;
        }

        else
        {
          v18 = 0xE800000000000000;
        }
      }

      else
      {
        v18 = 0xE400000000000000;
        v17 = 1684632420;
      }

      if (v15 == v17 && v14 == v18)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {

          goto LABEL_33;
        }
      }

      if (v11 == a1[3] && v10 == a1[4])
      {

        return v4;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        return v4;
      }

LABEL_33:
      v4 = (v4 + 1) & v24;
    }

    while (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10014EF7C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {

      return i;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_10014F074(uint64_t *a1, uint64_t a2)
{
  v31 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v5 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v2 + 64;
  v34 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v32 = ~v9;
    v11 = 0x4449746E65696C63;
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v6 + 72);
    do
    {
      sub_10011C544(*(v34 + 48) + v14 * v10, v8);
      v15 = *v8 == v12 && *(v8 + 1) == v13;
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_44;
      }

      v16 = v8[16];
      if (v8[16])
      {
        v17 = 0x444972657375;
        if (v16 == 1)
        {
          v18 = 0x444972657375;
        }

        else
        {
          v18 = v11;
        }

        if (v16 == 1)
        {
          v19 = 0xE600000000000000;
        }

        else
        {
          v19 = 0xE800000000000000;
        }
      }

      else
      {
        v19 = 0xE400000000000000;
        v18 = 1684632420;
        v17 = 0x444972657375;
      }

      v20 = *(a1 + 16);
      v21 = v11;
      if (v20 != 1)
      {
        v17 = v11;
      }

      v22 = 0xE600000000000000;
      if (v20 != 1)
      {
        v22 = 0xE800000000000000;
      }

      if (*(a1 + 16))
      {
        v23 = v17;
      }

      else
      {
        v23 = 1684632420;
      }

      if (*(a1 + 16))
      {
        v24 = v22;
      }

      else
      {
        v24 = 0xE400000000000000;
      }

      if (v18 == v23 && v19 == v24)
      {

        v11 = v21;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v11 = v21;
        if ((v26 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v27 = *(v8 + 3) == a1[3] && *(v8 + 4) == a1[4];
      if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v28 = *(v8 + 5) == a1[5] && *(v8 + 6) == a1[6];
        if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v29 = *(v31 + 32);
          if (static AccountIdentity.== infix(_:_:)())
          {
            sub_10011C5A8(v8);
            return v10;
          }
        }
      }

LABEL_44:
      sub_10011C5A8(v8);
      v10 = (v10 + 1) & v32;
    }

    while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10014F31C(uint64_t a1, uint64_t a2)
{
  v14[1] = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7.n128_f64[0] = __chkstk_darwin(v4);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2;
  v16 = v2 + 64;
  v10 = ~(-1 << *(v2 + 32));
  for (i = a2 & v10; ((1 << i) & *(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v5 + 16))(v9, *(v15 + 48) + *(v5 + 72) * i, v4, v7);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v9, v4);
    if (v12)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10014F4A0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10011723C(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100117298(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10014F564()
{
  sub_100002EA8();
  sub_100003994();
  sub_100004C1C();
  v5 = sub_10000BCF4(v2, v3, v4);
  sub_100006768(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_1001514E8();
  sub_100099DF4(&qword_1002DE968, &unk_10023B920);
  if (sub_1000073A0())
  {
    v8 = *v0;
    sub_100004C1C();
    sub_100151560(v9, v10, v11);
    sub_10000775C();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    v13 = *(*v0 + 56);
    sub_10015150C();

    return sub_10015078C(v14, v15);
  }

  else
  {
    v18 = sub_1000083B8();
    sub_10015073C(v18, v19, v20, v21, v22);
    sub_10015150C();
  }
}

uint64_t sub_10014F648()
{
  sub_100004168();
  sub_10000463C();
  v4 = *v1;
  sub_100004C1C();
  v7 = sub_10000A350(v2, v6, v5);
  sub_100006768(v7, v8);
  if (v10)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v9;
  sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
  v12 = sub_1001514BC();
  v14 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
  if (v14)
  {
    v19 = *v3;
    sub_100004C1C();
    sub_10000A350(v2, v0, v20);
    sub_1000053AC();
    if (!v21)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    sub_100013E0C(v14, v15, v16, v17, v18, *v3);
    sub_1000027F8();
  }

  else
  {
    v24 = sub_100014094();
    sub_1001507E8(v24, v25, v26, v27, v28, v29);
    sub_1000027F8();
  }
}

void sub_10014F748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100004168();
  v13 = v12;
  sub_1001514D8();
  v14 = type metadata accessor for AccountIdentity();
  v15 = sub_100003724(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000306C();
  v18 = sub_1000040A0();
  sub_100006768(v18, v19);
  if (v22)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = v20;
  v24 = v21;
  sub_100099DF4(&qword_1002DB2D8, &qword_100231B90);
  if (!sub_1000073A0())
  {
    goto LABEL_5;
  }

  v25 = *v12;
  v26 = sub_10000DA08();
  if ((v24 & 1) != (v27 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v23 = v26;
LABEL_5:
  if (v24)
  {
    v28 = *(*v13 + 56);
    v29 = type metadata accessor for Date();
    sub_10000307C(v29);
    v31 = *(v30 + 40);
    v32 = v28 + *(v30 + 72) * v23;
    sub_1000027F8();

    v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }

  else
  {
    v41 = sub_100151578();
    v42(v41);
    sub_10000F3D0();
    sub_100150834(v43, v44, v45, v46);
    sub_1000027F8();
  }
}

void sub_10014F8C8()
{
  sub_100004168();
  v1 = v0;
  sub_1001514D8();
  v2 = type metadata accessor for AccountIdentity();
  v3 = sub_100003724(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = sub_1000040A0();
  sub_100006768(v6, v7);
  if (v9)
  {
    __break(1u);
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v8;
  sub_100099DF4(&unk_1002E0040, &qword_10023B9A8);
  if (sub_1000073A0())
  {
    v11 = *v0;
    sub_10000DA08();
    if ((v10 & 1) != (v12 & 1))
    {
      goto LABEL_10;
    }
  }

  v13 = *v1;
  if (v10)
  {
    sub_10000DF30();
    sub_1000027F8();
  }

  else
  {
    v15 = sub_100151578();
    v16(v15);
    sub_10000F3D0();
    sub_100150928(v17, v18, v19, v20);
    sub_1000027F8();
  }
}

uint64_t sub_10014FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100002EA8();
  sub_10000D070();
  sub_1001515B0();
  sub_100002A8C();
  sub_100004C1C();
  v14 = sub_10000A350(v12, v10, v13);
  sub_100006768(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = v17;
  sub_100099DF4(&qword_1002DEA20, &qword_10023B970);
  if (sub_1000073A0())
  {
    v21 = *v11;
    sub_100004C1C();
    v22 = sub_10000A874();
    sub_10000A350(v22, v23, v24);
    sub_1000053AC();
    if (!v26)
    {
      goto LABEL_14;
    }

    v19 = v25;
  }

  if (v20)
  {
    v27 = *(*v11 + 56);
    v28 = type metadata accessor for Date();
    sub_10000307C(v28);
    v30 = *(v29 + 40);
    v31 = v27 + *(v29 + 72) * v19;
    sub_10015150C();

    return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }

  else
  {
    v41 = sub_10000B054();
    sub_1001509E0(v41, v42, v43, v44, v45);
    sub_10015150C();
  }
}

void sub_10014FB5C()
{
  sub_100004168();
  sub_10000D070();
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  sub_100004C1C();
  v12 = sub_10000BCF4(v9, v10, v11);
  sub_100006768(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_1001514E8();
  v15 = sub_10003CF74();
  sub_100099DF4(v15, v16);
  if (sub_1000073A0())
  {
    v17 = *v1;
    sub_100004C1C();
    sub_100151560(v18, v19, v20);
    sub_10000775C();
    if (!v22)
    {
      goto LABEL_12;
    }

    v3 = v21;
  }

  if (v2)
  {
    *(*(*v1 + 56) + v3) = v7;
    sub_1000027F8();
  }

  else
  {
    v23 = sub_10000F0D0();
    sub_100150A90(v23, v24, v5, v7, v25);
    sub_1000027F8();
  }
}

void sub_10014FC3C()
{
  sub_100002EA8();
  sub_100003994();
  sub_100004C1C();
  v7 = sub_10000BCF4(v4, v5, v6);
  sub_100006768(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_1001514E8();
  sub_100099DF4(&qword_1002DEA18, &qword_10023B968);
  if (sub_1000073A0())
  {
    v10 = *v1;
    sub_100004C1C();
    sub_100151560(v11, v12, v13);
    sub_10000775C();
    if (!v15)
    {
      goto LABEL_12;
    }

    v3 = v14;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_10015150C();
  }

  else
  {
    v16 = sub_1000083B8();
    sub_10000A8B8(v16, v17, v18, v19, v20);
    sub_10015150C();
  }
}

void sub_10014FD08()
{
  sub_100002EA8();
  sub_10000D070();
  sub_1001515B0();
  sub_100002A8C();
  sub_100004C1C();
  v5 = sub_10000A350(v3, v1, v4);
  sub_100006768(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_100099DF4(&qword_1002DEA10, &qword_10023B960);
  if (sub_1000073A0())
  {
    v12 = *v2;
    sub_100004C1C();
    v13 = sub_10000A874();
    sub_10000A350(v13, v14, v15);
    sub_1000053AC();
    if (!v17)
    {
      goto LABEL_12;
    }

    v10 = v16;
  }

  if (v11)
  {
    v18 = *(*v2 + 56);
    v19 = type metadata accessor for TSDataSyncTriggerEvent(0);
    sub_1000030B8(v19);
    sub_100150DC4(v0, v18 + *(v20 + 72) * v10, type metadata accessor for TSDataSyncTriggerEvent);
    sub_10015150C();
  }

  else
  {
    v21 = sub_10000B054();
    sub_100150B10(v21, v22, v23, v24, v25, v26, v27);
    sub_10015150C();
  }
}

uint64_t sub_10014FE48()
{
  sub_100004168();
  sub_10000463C();
  v4 = *v1;
  sub_100004C1C();
  v7 = sub_10000A350(v2, v6, v5);
  sub_100006768(v7, v8);
  if (v10)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v9;
  sub_100099DF4(&qword_1002DEA38, &qword_10023B988);
  v12 = sub_1001514BC();
  v14 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
  if (v14)
  {
    v19 = *v3;
    sub_100004C1C();
    sub_10000A350(v2, v0, v20);
    sub_1000053AC();
    if (!v21)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    sub_100013E0C(v14, v15, v16, v17, v18, *v3);
    sub_1000027F8();
  }

  else
  {
    v24 = sub_100014094();
    sub_100150AC4(v24, v25, v26, v27, v28, v29);
    sub_1000027F8();
  }
}

void sub_10014FF48()
{
  sub_100002EA8();
  sub_10000D070();
  sub_1001515B0();
  sub_100002A8C();
  sub_100004C1C();
  v5 = sub_10000A350(v3, v1, v4);
  sub_100006768(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
  if (sub_1000073A0())
  {
    v12 = *v2;
    sub_100004C1C();
    v13 = sub_10000A874();
    sub_10000A350(v13, v14, v15);
    sub_1000053AC();
    if (!v17)
    {
      goto LABEL_12;
    }

    v10 = v16;
  }

  if (v11)
  {
    v18 = *(*v2 + 56);
    v19 = type metadata accessor for TSDataSyncDatasetState(0);
    sub_1000030B8(v19);
    sub_100150DC4(v0, v18 + *(v20 + 72) * v10, type metadata accessor for TSDataSyncDatasetState);
    sub_10015150C();
  }

  else
  {
    v21 = sub_10000B054();
    sub_100150B10(v21, v22, v23, v24, v25, v26, v27);
    sub_10015150C();
  }
}

uint64_t sub_1001500B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A350(a2, a3, sub_10000A3D0);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_100099DF4(&unk_1002DEA50, &qword_10023B9A0);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *v5;
  result = sub_10000A350(a2, a3, sub_10000A3D0);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = result;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v16) = a1;
  }

  else
  {
    sub_10000A8B8(v16, a2, a3, a1, v21);
  }

  return result;
}

void sub_100150204()
{
  sub_100004168();
  v2 = v0;
  v3 = sub_1001514D8();
  v4 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(v3);
  v5 = sub_10000307C(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = *v0;
  v12 = sub_10014EC40();
  sub_100006768(v12, v13);
  if (v15)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v14;
  sub_100099DF4(&unk_1002DEA40, &unk_10023B990);
  v17 = sub_1001514BC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18))
  {
    v19 = *v2;
    sub_10014EC40();
    sub_10000C690();
    if (!v20)
    {
      goto LABEL_11;
    }
  }

  v21 = *v2;
  if (v16)
  {
    sub_10000DF30();
    sub_1000027F8();
  }

  else
  {
    sub_10011C544(v1, v10);
    sub_10000F3D0();
    sub_100150B94(v23, v24, v25, v26);
    sub_1000027F8();
  }
}

_OWORD *sub_10015032C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v4;
  sub_100002A8C();
  v9 = sub_10014ECFC(v8);
  sub_100006768(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  sub_100099DF4(&qword_1002DE9F0, &qword_10023B940);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v4))
  {
    v16 = *v4;
    sub_10014ECFC(a2);
    sub_10000775C();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  if (v15)
  {
    v19 = (*(*v5 + 56) + 32 * v14);
    sub_100004118(v19);

    return sub_1000197D8(v3, v19);
  }

  else
  {
    sub_10011723C(a2, v25);
    sub_10000F3D0();
    return sub_100150C48(v21, v22, v23, v24);
  }
}

uint64_t sub_100150450()
{
  sub_100004168();
  sub_10000463C();
  v5 = v4;
  v7 = v6;
  v8 = *v1;
  sub_100004C1C();
  v11 = sub_10000A350(v2, v10, v9);
  sub_100006768(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  sub_100099DF4(&qword_1002DE9F8, &qword_10023B948);
  v18 = sub_1001514BC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v18, v19))
  {
    v20 = *v3;
    sub_100004C1C();
    sub_10000A350(v2, v0, v21);
    sub_10000C690();
    if (!v23)
    {
      goto LABEL_14;
    }

    v16 = v22;
  }

  v24 = *v3;
  if (v17)
  {
    v25 = *(v24 + 56) + 16 * v16;
    v26 = *v25;
    v27 = *(v25 + 8);
    *v25 = v7;
    *(v25 + 8) = v5 & 1;
    sub_1000027F8();

    return sub_100107D70(v28, v29);
  }

  else
  {
    sub_100150CC4(v16, v2, v0, v7, v5 & 1, v24);
    sub_1000027F8();
  }
}

void sub_1001505A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100004168();
  v54 = v13;
  v15 = v14;
  v17 = v16;
  v18 = v12;
  v55 = v19;
  v53 = type metadata accessor for CodingUserInfoKey();
  v20 = sub_100003724(v53);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_10000306C();
  v27 = v26 - v25;
  v28 = *v12;
  v29 = sub_10014ECA8();
  sub_100006768(v29, v30);
  if (v33)
  {
    __break(1u);
    goto LABEL_11;
  }

  v34 = v31;
  v35 = v32;
  sub_100099DF4(v17, v15);
  v36 = sub_1001514BC();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v36, v37))
  {
    goto LABEL_5;
  }

  v38 = *v18;
  v39 = sub_10014ECA8();
  if ((v35 & 1) != (v40 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v34 = v39;
LABEL_5:
  v41 = *v18;
  if (v35)
  {
    sub_100004118((*(v41 + 56) + 32 * v34));
    sub_1000027F8();

    v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }

  else
  {
    v50 = *(v22 + 16);
    v51 = sub_10000F0D0();
    v52(v51);
    sub_100150D18(v34, v27, v55, v41, v54);
    sub_1000027F8();
  }
}

void *sub_10015073C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10000325C(a1, a2, a3, a4, a5);
  result = memcpy((*(v7 + 56) + 104 * v6), v8, 0x62uLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

uint64_t sub_1001507E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_10000ABB0(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_100150834(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AccountIdentity();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_100150928(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AccountIdentity();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1001509E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_100150A90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_10000325C(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

unint64_t sub_100150AC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_100150B10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  sub_10000325C(a1, a2, a3, a4, a5);
  v12 = *(v11 + 56);
  v14 = v13(0);
  sub_1000030B8(v14);
  result = sub_100150E24(a4, v12 + *(v15 + 72) * a1, a7);
  v17 = *(a5 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v19;
  }

  return result;
}

uint64_t sub_100150B94(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  result = sub_100150E24(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for TSDataSyncDatasetGroupIdentifier);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_100150C48(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000197D8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_100150CC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_10000ABB0(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v7[7] + 16 * result;
  *v11 = v12;
  *(v11 + 8) = v13 & 1;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_100150D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  sub_1001515B0();
  v10 = v9;
  sub_10000ABB0(v9, v11 + 8 * (v9 >> 6));
  v13 = *(v12 + 48);
  v14 = type metadata accessor for CodingUserInfoKey();
  sub_10000307C(v14);
  (*(v15 + 32))(v13 + *(v15 + 72) * v10, v6);
  result = a5(v5, *(a4 + 56) + 32 * v10);
  v17 = *(a4 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v19;
  }

  return result;
}

uint64_t sub_100150DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_100150E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_100150E84()
{
  result = qword_1002DEA60;
  if (!qword_1002DEA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DEA60);
  }

  return result;
}

uint64_t sub_100150EC8()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

void *sub_100150F4C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  return sub_100146E70(a1, v1[4]);
}

uint64_t sub_100151050(uint64_t a1)
{
  v1 = *(a1 + 96) >> 12;
  if (v1 <= 0xC)
  {
    return v1;
  }

  else
  {
    return (*a1 + 13);
  }
}

uint64_t sub_10015106C(uint64_t a1)
{
  v1 = *(a1 + 57);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100151088(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 352))
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

uint64_t sub_1001510C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10015117C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1001511BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100151228()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100151264(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001512A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001512EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100151350()
{
  result = qword_1002DEB30;
  if (!qword_1002DEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEB30);
  }

  return result;
}

uint64_t sub_1001513A4(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1001513E8(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

unint64_t sub_100151454()
{
  result = qword_1002DEB40;
  if (!qword_1002DEB40)
  {
    sub_10009A468(&qword_1002DEB38, &qword_10023C4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEB40);
  }

  return result;
}

void *sub_100151520()
{

  return memcpy((v1 - 136), (v0 + 72), 0x62uLL);
}

void *sub_100151544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{

  return memcpy(a1, &a50, 0x62uLL);
}

uint64_t sub_100151560(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  return sub_10000A350(v4, v3, a3);
}

uint64_t sub_1001515BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(*(a15 + 48) + 16 * v15 + 8);
}

Swift::Int sub_1001515F4()
{
  Hasher.init(_seed:)();
  AvroSchemaEncodingError.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100151660(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

Swift::Int sub_1001516C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

unint64_t sub_100151718()
{
  result = qword_1002DEB50;
  if (!qword_1002DEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEB50);
  }

  return result;
}

unint64_t sub_100151770()
{
  result = qword_1002DEB58;
  if (!qword_1002DEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEB58);
  }

  return result;
}

unint64_t sub_1001517C8()
{
  result = qword_1002DEB60;
  if (!qword_1002DEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEB60);
  }

  return result;
}

unint64_t sub_100151820()
{
  result = qword_1002DEB68;
  if (!qword_1002DEB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEB68);
  }

  return result;
}

unint64_t sub_100151878()
{
  result = qword_1002DEB70;
  if (!qword_1002DEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEB70);
  }

  return result;
}

unint64_t sub_1001518D0()
{
  result = qword_1002DEB78;
  if (!qword_1002DEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEB78);
  }

  return result;
}

unint64_t sub_100151928()
{
  result = qword_1002DEB80;
  if (!qword_1002DEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEB80);
  }

  return result;
}

unint64_t sub_100151980()
{
  result = qword_1002DEB88;
  if (!qword_1002DEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEB88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroSchemaDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroSchemaEncodingError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryEncodingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BinaryEncodingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BinaryDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroDeflateCodexError(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_100151E7C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_100151F8C(void *result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v3 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      if (v2 != -1)
      {
        v5 = result;
        v6 = sub_10013CA08();
        if (sub_1001228C0(&v7, (v6 + 4), v3, v5, a2) == v3)
        {
          return v6;
        }

        __break(1u);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

void *sub_10015201C(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (a2 < 1)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_100099DF4(&qword_1002E2760, &qword_10023CBF8);
    v4 = swift_allocObject();
    v5 = j__malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

void *sub_1001520B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = a2;
  return v2;
}

uint64_t sub_1001520C4(uint64_t result)
{
  v2 = *(v1 + 24);
  *(v1 + 16) += result;
  if (__OFSUB__(v2, result))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v2 - result;
  }

  return result;
}

uint64_t sub_1001520E4(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

BOOL sub_1001520EC()
{
  if (*(v0 + 24) < 1)
  {
    sub_10014E8FC();
    v2 = sub_100007F60();
    sub_100004C34(v2, v3);
  }

  else
  {
    v1 = **(v0 + 16) != 0;
    sub_1001520C4(1);
  }

  return v1;
}