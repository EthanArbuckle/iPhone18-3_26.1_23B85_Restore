unint64_t *sub_10013338C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1001F8068();

    sub_1001F6C28();
    v16 = sub_1001F80D8();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_1001F7EA8();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_100133600(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_100133578(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_10013338C(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_100133600(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000183C4(&unk_1002BC450);
  result = sub_1001F7788();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1001F8068();

    sub_1001F6C28();
    result = sub_1001F80D8();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
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

unint64_t sub_10013381C()
{
  result = qword_1002AE9B0;
  if (!qword_1002AE9B0)
  {
    sub_1001F72E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE9B0);
  }

  return result;
}

unint64_t sub_100133874()
{
  result = qword_1002AE9B8;
  if (!qword_1002AE9B8)
  {
    sub_100019BC4(&unk_1002BA640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE9B8);
  }

  return result;
}

uint64_t sub_1001338D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100133934()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100133994()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001339D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100133A34(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t sub_100133A54()
{
}

BOOL sub_100133A70(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

uint64_t sub_100133A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return OS_dispatch_queue.sync<A>(execute:)(v9, &a9);
}

BOOL sub_100133ABC(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

uint64_t sub_100133AD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v276 = a6;
  v265 = a5;
  v268 = a3;
  v291 = a2;
  v273 = sub_1001F6978();
  sub_10001A278();
  v272 = v10;
  __chkstk_darwin(v11, v12);
  sub_100023510();
  v271 = v14 - v13;
  v15 = sub_1001F6868();
  sub_10001A278();
  v284 = v16;
  __chkstk_darwin(v17, v18);
  sub_100099484();
  v21 = v19 - v20;
  __chkstk_darwin(v22, v23);
  v25 = v262 - v24;
  v282 = sub_1001F6578();
  sub_10001A278();
  v286 = v26;
  __chkstk_darwin(v27, v28);
  sub_100023510();
  v281 = v30 - v29;
  v31 = sub_1000183C4(&unk_1002B3450);
  __chkstk_darwin(v31 - 8, v32);
  sub_100099484();
  sub_10004FE44();
  __chkstk_darwin(v33, v34);
  sub_10004FE44();
  __chkstk_darwin(v35, v36);
  sub_10004FE44();
  __chkstk_darwin(v37, v38);
  sub_10004FE44();
  __chkstk_darwin(v39, v40);
  v42 = v262 - v41;
  v43 = sub_1001F6508();
  sub_10001A278();
  v45 = v44;
  __chkstk_darwin(v46, v47);
  sub_100023510();
  v283 = v49 - v48;
  sub_100137C28();
  *a7 = v50;
  a7[1] = v51;
  a7[9] = 48;
  a7[10] = 0xE100000000000000;
  v52 = sub_1000C5458(8);
  v275 = v25;
  v270 = v21;
  v269 = a4;
  if (v53)
  {
    v52 = sub_1000C1A68();
  }

  *&number = v52;
  v54 = a7;
  a7[3] = sub_1001F7E28();
  a7[4] = v55;
  a7[7] = sub_1000BFC14();
  a7[8] = v56;
  v57 = type metadata accessor for RenewalInfo();
  sub_1001F64F8();
  v290 = swift_allocObject();
  *(v290 + 16) = 1;
  v58 = v283;
  sub_1001F64E8();
  v59 = sub_1000C18DC();
  v287 = *(v45 + 8);
  v287(v58, v43);
  v288 = v57;
  v289 = v43;
  v285 = v15;
  v292 = v54;
  v280 = a1;
  v274 = v45;
  v279 = v45 + 8;
  if (v59)
  {
    *(v54 + 16) = 5;
LABEL_17:
    v63 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_1000C3984(v42);
  v15 = 1;
  v60 = sub_10001C990(v42, 1, v43);
  sub_100136794(v42);
  if (v60 == 1)
  {
    if (sub_100135304(v290))
    {

      if (sub_1000BFBB0())
      {
LABEL_8:
        v15 = 0;
        goto LABEL_14;
      }

      if (sub_1000C152C() == 5)
      {
        sub_1000C1570();
        if (!v61)
        {
          goto LABEL_8;
        }

        v15 = 4;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 3;
    }
  }

LABEL_14:
  *(v54 + 16) = v15;
  v62 = sub_100135304(v290);
  v63 = _swiftEmptyArrayStorage;
  if (!v62)
  {
    goto LABEL_18;
  }

  v15 = v62;
  sub_1000C1570();
  v65 = v64;
  if (v64)
  {

    goto LABEL_17;
  }

  v262[1] = v15;
  v15 = *(v15 + 160);
  v42 = sub_10013B560(v15);
  v94 = v15 & 0xC000000000000001;
  v95 = v15 & 0xFFFFFFFFFFFFFF8;
  v96 = v15 + 32;
  v293 = v15;

  while (v42 != v65)
  {
    if (v94)
    {
      v97 = sub_1001F7808();
    }

    else
    {
      if (v65 >= *(v95 + 16))
      {
        goto LABEL_156;
      }
    }

    v15 = *(v97 + 112);

    if (v15)
    {
      v42 = v65;
      break;
    }

    v98 = __OFADD__(v65++, 1);
    if (v98)
    {
      goto LABEL_157;
    }
  }

  v104 = sub_10013B560(v293);
  v105 = v104;
  if (v104 >= v42)
  {
    if (v42 == v104)
    {
      goto LABEL_88;
    }

    v266 = 1;
    v106 = v104;
    v105 = v42;
  }

  else
  {
    v266 = -1;
    v106 = v42;
  }

  v107 = v293;
  v42 = sub_10013B560(v293);
  v45 = sub_10013B560(v107);
  v15 = 0;
  do
  {
    v98 = __OFADD__(v15, v266);
    v15 += v266;
    if (v98)
    {
      goto LABEL_158;
    }

    if (v105 == v42)
    {
      goto LABEL_159;
    }

    while (1)
    {
      v108 = (v105 + 1);
      if (__OFADD__(v105, 1))
      {
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
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
      }

      if (v108 == v45)
      {
        break;
      }

      if (v94)
      {
        v109 = sub_1001F7808();
      }

      else
      {
        if ((v108 & 0x8000000000000000) != 0)
        {
          goto LABEL_151;
        }

        if (v108 >= *(v95 + 16))
        {
          goto LABEL_152;
        }
      }

      v110 = *(v109 + 112);

      ++v105;
      if (v110)
      {
        goto LABEL_68;
      }
    }

    v108 = v45;
LABEL_68:
    v105 = v108;
  }

  while (v108 != v106);
  v57 = v288;
  v43 = v289;
  if (!v15)
  {
LABEL_88:

    v63 = _swiftEmptyArrayStorage;
    v54 = v292;
    LOBYTE(a1) = v280;
    goto LABEL_149;
  }

  *&number = _swiftEmptyArrayStorage;
  sub_1000375CC(0, v15 & ~(v15 >> 63), 0);
  v111 = number;
  v45 = sub_10013B560(v293);
  v112 = 0;
  while (v45 != v112)
  {
    if (v94)
    {
      v113 = sub_1001F7808();
    }

    else
    {
      if (v112 >= *(v95 + 16))
      {
        goto LABEL_163;
      }
    }

    v114 = *(v113 + 112);

    if (v114)
    {
      v45 = v112;
      break;
    }

    v98 = __OFADD__(v112++, 1);
    if (v98)
    {
      goto LABEL_164;
    }
  }

  if (v15 < 0)
  {
    goto LABEL_167;
  }

  v63 = v111;
  v248 = v293;
  v263 = sub_10013B560(v293);
  v42 = sub_10013B560(v248);
  v249 = 0;
  do
  {
    if (v249 >= v15)
    {
      goto LABEL_160;
    }

    v98 = __OFADD__(v249++, 1);
    if (v98)
    {
      goto LABEL_161;
    }

    if (v94)
    {
      v250 = v63;
      v251 = sub_1001F7808();
    }

    else
    {
      if ((v45 & 0x8000000000000000) != 0)
      {
        goto LABEL_165;
      }

      if (v45 >= *(v95 + 16))
      {
        goto LABEL_166;
      }

      v250 = v63;
      v251 = *(v96 + 8 * v45);
    }

    v252 = *(v251 + 104);
    v266 = *(v251 + 96);

    v253 = v250;
    *&number = v250;
    v254 = v250[2];
    v255 = v253[3];
    v256 = v254 + 1;
    if (v254 >= v255 >> 1)
    {
      v262[0] = v254 + 1;
      sub_1000375CC(v255 > 1, v254 + 1, 1);
      v256 = v262[0];
      v253 = number;
    }

    v253[2] = v256;
    v257 = &v253[2 * v254];
    v257[4] = v266;
    v257[5] = v252;
    if (v45 == v263)
    {
      goto LABEL_162;
    }

    v258 = v253;
    while (1)
    {
      v259 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_153;
      }

      if (v259 == v42)
      {
        break;
      }

      if (v94)
      {
        v260 = sub_1001F7808();
      }

      else
      {
        if ((v259 & 0x8000000000000000) != 0)
        {
          goto LABEL_154;
        }

        if (v259 >= *(v95 + 16))
        {
          goto LABEL_155;
        }
      }

      v261 = *(v260 + 112);

      ++v45;
      if (v261)
      {
        goto LABEL_147;
      }
    }

    v259 = v42;
LABEL_147:
    v45 = v259;
    v63 = v258;
  }

  while (v249 != v15);

  v54 = v292;
  LOBYTE(a1) = v280;
  v57 = v288;
  v43 = v289;
LABEL_149:
  v58 = v283;
LABEL_18:
  *(v54 + *(v57 + 92)) = v63;
  sub_1001F64E8();
  sub_1000C18DC();
  v66 = sub_100137C50();
  v67(v66);
  if (((a1 & 1) != 0 || (sub_1000C152C() - 1) <= 4u && sub_1000C152C() != 2) && (v68 = sub_1000C2E3C()) != 0)
  {
    if (v68[2])
    {
      v45 = v68[5];
      v15 = v68[6];
      v43 = v68[7];
      LODWORD(v42) = *(v68 + 64);
      v57 = v68[4];
      sub_100137AEC();
      sub_10008A298(v69, v70, v71, v72, v42);
    }

    else
    {
      sub_100137C10();
    }
  }

  else
  {
    sub_100137C10();
  }

  v73 = sub_100135304(v290);
  if (!v73)
  {
    sub_100137AEC();
    sub_1001367FC(v90, v91, v92, v93, v42);
LABEL_49:
    *(v54 + 88) = 0;
    v54[5] = 0;
    v54[6] = 0;
    v99 = v288;
    sub_100137C04(v288[18]);
    *(v54 + v99[17]) = 4;
    *(v54 + v99[19]) = 3;
    sub_100137AB8(v99[20]);
    v100 = v289;
    sub_100018460(v54 + v99[25], 1, 1, v289);
    v101 = v54 + v99[21];
    *v101 = 0;
    v101[8] = 1;
    sub_100137C04(v99[22]);
    v102 = v284;
    v103 = v286;
    goto LABEL_106;
  }

  if (v42 == 255)
  {
LABEL_48:

    goto LABEL_49;
  }

  v293 = v73;
  v266 = v45;
  v74 = v15;
  sub_1001F64E8();
  v75 = sub_1000C18DC();
  v287(v58, v289);
  if ((v75 & 1) == 0 && (sub_1000C1760() & 1) == 0)
  {
    sub_1001367FC(v57, v266, v15, v43, v42);
    goto LABEL_48;
  }

  v76 = v54;
  v77 = 1;
  *(v76 + 88) = 1;
  sub_1000C5464(4);
  v78 = v264;
  if ((v79 & 1) == 0)
  {
    sub_1001F6418();
    v77 = 0;
  }

  sub_100018460(v78, v77, 1, v289);
  v80 = v292;
  sub_100136810(v78, v292 + v288[25]);
  v81 = v57;
  v82 = v74;
  switch(v42)
  {
    case 1:
      sub_100137B64();
      v144 = v288;
      v145 = (v80 + v288[18]);
      *v145 = v74;
      v145[1] = v43;
      v99 = v144;
      *(v80 + v144[17]) = 1;

      v146 = sub_100137BE4();
      v148 = sub_100025678(v146, v147);
      if (v148)
      {
        LODWORD(v57) = *(v148 + 57);
        v263 = v82;

        sub_100161BA8();
        sub_100137BB8();
        sub_100137AA4(v99[20]);

        v149 = sub_100161AA0();
        sub_100137ADC(v149);
        v151 = v150;

        v121 = HIDWORD(v151) & 1;
        v132 = sub_100137B94();
        v134 = v263;
        v135 = v43;
        v136 = 1;
        goto LABEL_87;
      }

      LOBYTE(v121) = 1;
      v164 = sub_100137B94();
      sub_1001367FC(v164, v165, v166, v43, 1u);
      sub_100137B2C();
      sub_100137AB8(v99[20]);
      break;
    case 2:
      sub_100137B64();
      v99 = v288;
      *(v80 + v288[17]) = 2;

      v122 = sub_100137BE4();
      v124 = sub_10002574C(v122, v123);
      v125 = v124;
      if (v124)
      {
        v127 = *(v124 + 80);
        v126 = *(v124 + 88);
        v128 = (v80 + v99[18]);
        *v128 = v127;
        v128[1] = v126;
        LODWORD(v57) = *(v125 + 57);

        sub_100161BA8();
        sub_100137BB8();
        sub_100137AA4(v99[20]);

        v129 = sub_100161AA0();
        sub_100137ADC(v129);
        v131 = v130;

        v121 = HIDWORD(v131) & 1;
        v132 = sub_100137B94();
        v135 = v43;
        v136 = 2;
        goto LABEL_87;
      }

      v152 = sub_100137B94();
      sub_1001367FC(v152, v153, v82, v43, 2u);
      sub_100137B2C();
      sub_100137C04(v99[18]);
      goto LABEL_91;
    case 3:
      sub_100137B64();
      v99 = v288;
      v137 = (v80 + v288[18]);
      *v137 = v82;
      v137[1] = v43;
      *(v80 + v99[17]) = 3;

      v138 = sub_100137BE4();
      v140 = sub_100025820(v138, v139);
      if (v140)
      {
        LODWORD(v57) = *(v140 + 57);

        sub_100161BA8();
        sub_100137BB8();
        sub_100137AA4(v99[20]);

        v141 = sub_100161AA0();
        sub_100137ADC(v141);
        v143 = v142;

        v121 = HIDWORD(v143) & 1;
        v132 = sub_100137B94();
        v135 = v43;
        v136 = 3;
LABEL_87:
        sub_1001367FC(v132, v133, v134, v135, v136);

        v80 = v292;
      }

      else
      {
        v154 = sub_100137B94();
        sub_1001367FC(v154, v155, v82, v43, 3u);
        sub_100137B2C();
LABEL_91:
        sub_100137AB8(v99[20]);
        LOBYTE(v121) = 1;
      }

      break;
    case 4:
      sub_100137B64();
      v121 = v288;
      sub_100137C04(v288[18]);
      *(v80 + *(v121 + 68)) = 4;
      sub_100137AB8(*(v121 + 80));
      v115 = sub_100137B94();
      sub_100136880(v115, v116, v74, v43, 4u);

      v117 = sub_1001E84A8();
      sub_100137ADC(v117);
      v118 = sub_100137B94();
      v119 = v74;
      v99 = v121;
      sub_1001367FC(v118, v120, v119, v43, 4u);

      LODWORD(v57) = 0;
      LOBYTE(v121) = 0;
      break;
    default:
      v83 = v266;
      v80[5] = v57;
      v80[6] = v83;
      sub_100137C04(v288[18]);
      *(v80 + *(v84 + 68)) = 0;
      v85 = *(v293 + 136);
      if (v85)
      {
        LODWORD(v57) = *(v85 + 57);
        sub_100137AEC();
        sub_100136880(v86, v87, v88, v89, 0);

        sub_100161BA8();
        sub_100137BB8();
      }

      else
      {
        sub_100137AEC();
        sub_10008A298(v156, v157, v158, v159, 0);
        LODWORD(v57) = 0;
      }

      sub_100137AA4(v288[20]);
      if (*(v293 + 136))
      {

        v160 = sub_100161AA0();
        sub_100137ADC(v160);
        v162 = v161;
        v163 = v82;
        v121 = HIDWORD(v162) & 1;
        sub_1001367FC(v81, v83, v163, v43, 0);
      }

      else
      {
        sub_100137AEC();
        sub_1001367FC(v167, v168, v169, v170, 0);
        v264 = 0;
        LOBYTE(v121) = 1;
      }

      v99 = v288;
      v80 = v292;
      break;
  }

  *(v80 + v99[19]) = sub_1001417D0(v57);
  v100 = v289;
  if (v121)
  {
    switch(v57)
    {
      case 1:

        v102 = v284;
        goto LABEL_103;
      default:
        v182 = sub_1001F7EA8();

        v102 = v284;
        if (v182)
        {
LABEL_103:
          sub_100137C3C();
          *(v183 + 8) = 0;
        }

        else
        {
          sub_100137C3C();
          *(v184 + 8) = 1;
        }

        break;
    }
  }

  else
  {
    sub_1001F7418(&v296, 1000);
    *&number = sub_1001F7438();
    *&number._mantissa[2] = v171;
    *&number._mantissa[6] = v172;
    sub_1001F7418(v173, 0);
    *&result = v174;
    *&result._mantissa[2] = v175;
    *&result._mantissa[6] = v176;
    NSDecimalRound(&result, &number, 0, NSRoundDown);
    sub_1001F7428(v177);
    v179 = v178;
    v180 = [v178 longLongValue];

    v181 = v80 + v99[21];
    *v181 = v180;
    *(v181 + 8) = 0;
    v102 = v284;
  }

  v185 = *(v291 + 48);
  v187 = *(v185 + 88);
  v186 = *(v185 + 96);
  v188 = (v80 + v99[22]);
  *v188 = v187;
  v188[1] = v186;

  v103 = v286;
LABEL_106:
  v189 = v267;
  sub_1000C3984(v267);
  v190 = sub_10001C990(v189, 1, v100);
  sub_100136794(v189);
  if (v190 == 1)
  {
    v191 = 2;
  }

  else
  {
    v191 = sub_1000C1760() & 1;
  }

  v192 = v275;
  v193 = v292;
  *(v292 + 89) = v191;
  sub_1000C390C(v193 + v99[13]);
  sub_1001F64E8();
  sub_1000C18DC();
  v194 = sub_100137C50();
  v195(v194);
  if (a1)
  {
    v196 = 0x20101020100uLL >> (8 * sub_1000C152C());
  }

  else
  {
    LOBYTE(v196) = 2;
  }

  v197 = v273;
  *(v292 + 90) = v196;
  v198 = v281;
  sub_1001F6568();
  v199 = sub_1001F6528();
  v201 = v200;
  v202 = *(v103 + 8);
  v286 = v103 + 8;
  v287 = v202;
  v202(v198, v282);
  *&number = v199;
  *&number._mantissa[2] = v201;
  sub_10001C790();
  v203 = sub_1001F75D8();
  v205 = v204;

  v293 = v203;
  v206 = sub_1001410B4();
  v208 = v207;

  sub_100141134(v206, v208);
  sub_1001374A8(&qword_1002B2568, &type metadata accessor for SHA384);
  v209 = v271;
  sub_1001F6858();
  v210 = sub_100137BAC();
  sub_100040C70(v210, v211);
  v212 = sub_100137BAC();
  sub_1001442D0(v212, v213);
  v214 = sub_100137BAC();
  sub_10003A380(v214, v215);
  sub_1001F6848();
  (*(v272 + 8))(v209, v197);
  v216 = *(v102 + 16);
  v217 = v270;
  v218 = v192;
  v219 = v192;
  v220 = v102;
  v221 = v285;
  v216(v270, v218, v285);
  v222 = sub_100141600(v217);
  v224 = v223;
  v225 = sub_1001F63B8(0);
  v227 = v226;
  sub_10003A380(v222, v224);
  if (v276)
  {
    (*(v220 + 8))(v219, v221);
    v228 = sub_100137BAC();
    sub_10003A380(v228, v229);
    v230 = v280;
    goto LABEL_117;
  }

  if (v265 == 19)
  {

    v231 = v281;
    sub_1001F6568();
    v232 = sub_1001F6528();
    v205 = v233;
    v234 = sub_100137BAC();
    sub_10003A380(v234, v235);
    v287(v231, v282);
    (*(v284 + 8))(v219, v285);
    v230 = v280;
  }

  else
  {
    (*(v284 + 8))(v219, v285);
    v236 = sub_100137BAC();
    sub_10003A380(v236, v237);
    v230 = v280;
LABEL_117:
    v232 = v293;
  }

  v238 = v288;
  v239 = v292;
  v240 = (v292 + v288[15]);
  *v240 = v232;
  v240[1] = v205;
  v241 = (v239 + v238[14]);
  *v241 = v225;
  v241[1] = v227;
  v242 = v277;
  sub_1000C1AC4(v277);
  v243 = v289;
  v244 = sub_10001C990(v242, 1, v289);
  v245 = v274;
  if (v244 == 1)
  {
    v246 = v278;
    sub_1001F6448();

    if (sub_10001C990(v242, 1, v243) != 1)
    {
      sub_100136794(v242);
    }
  }

  else
  {

    v246 = v278;
    (*(v245 + 32))(v278, v242, v243);
  }

  sub_100018460(v246, 0, 1, v243);
  sub_100136810(v246, v292 + v238[24]);
}

uint64_t sub_100135068(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

uint64_t sub_10013508C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100135068(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100135178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C4880(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100135304(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  v3 = v1;
  if (v1 == 1)
  {
    v4 = sub_1000BFC14();
    v3 = sub_1000EE5B8(v4, v5);

    swift_beginAccess();
    v6 = *v2;
    *v2 = v3;

    sub_100136894(v6);
  }

  sub_1001368A4(v1);
  return v3;
}

uint64_t sub_1001353A8()
{
  v0 = sub_1001F7F58();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100135408(char a1)
{
  result = 0x6D6E6F7269766E65;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 5;
      goto LABEL_18;
    case 4:
    case 10:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x49746375646F7270;
      break;
    case 6:
      result = 0x656E65526F747561;
      break;
    case 7:
    case 9:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 11:
    case 17:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x614464656E676973;
      break;
    case 13:
      result = 0x707954726566666FLL;
      break;
    case 14:
      result = 0x656449726566666FLL;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x726550726566666FLL;
      break;
    case 18:
      v3 = 11;
LABEL_18:
      result = v3 | 0xD000000000000010;
      break;
    case 19:
      result = 0x446C6177656E6572;
      break;
    case 20:
      result = 0x506C6177656E6572;
      break;
    case 21:
      result = 0x79636E6572727563;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1001356F0(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B49D8);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v18 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_100137160();
  sub_1001F8198();
  LOBYTE(v20) = 0;
  sub_1001F7D88();
  if (v2)
  {
    return (*(v7 + 8))(v11, v5);
  }

  sub_1001379E4(1);
  sub_1001F7D88();
  LOBYTE(v20) = v3[16];
  v22 = 2;
  sub_1001371B4();
  sub_100137A4C();
  sub_1001F7D58();
  sub_1001379E4(3);
  sub_1001F7D88();
  sub_1001379E4(4);
  sub_1001F7D18();
  sub_1001379E4(5);
  sub_1001F7D88();
  LOBYTE(v20) = v3[88];
  v22 = 6;
  sub_100137208();
  sub_100137A4C();
  sub_1001F7DC8();
  LOBYTE(v20) = 7;
  sub_1001F7D28();
  LOBYTE(v20) = v3[90];
  v22 = 8;
  sub_10013725C();
  sub_100137A4C();
  sub_1001F7D58();
  v19 = v7;
  v12 = type metadata accessor for RenewalInfo();
  LOBYTE(v20) = 9;
  sub_1001F6508();
  sub_100137B14();
  sub_1001374A8(v13, v14);
  sub_100137A78();
  sub_1001F7D58();
  sub_10001E770(v12[14]);
  sub_1001379E4(10);
  sub_1001F7D88();
  sub_10001E770(v12[15]);
  sub_1001379E4(11);
  sub_1001F7D88();
  LOBYTE(v20) = 12;
  sub_100137A78();
  sub_1001F7DC8();
  LOBYTE(v20) = v3[v12[17]];
  v22 = 13;
  sub_1001372B0();
  sub_100137A4C();
  sub_1001F7D58();
  sub_10001E770(v12[18]);
  sub_1001379E4(14);
  sub_1001F7D18();
  LOBYTE(v20) = v3[v12[19]];
  v22 = 15;
  sub_100137304();
  sub_100137A4C();
  sub_1001F7D58();
  v15 = &v3[v12[20]];
  v16 = *v15;
  LOBYTE(v15) = v15[8];
  v20 = v16;
  v21 = v15;
  v22 = 16;
  sub_100137358();
  sub_100137A4C();
  sub_1001F7D58();
  v20 = *&v3[v12[23]];
  v22 = 17;
  sub_1000183C4(&qword_1002ACA10);
  sub_10001DE1C(&qword_1002ACB30);
  sub_1001F7DC8();
  LOBYTE(v20) = 18;
  sub_100137A78();
  sub_1001F7D58();
  LOBYTE(v20) = 19;
  sub_100137A78();
  sub_1001F7D58();
  sub_1001379E4(20);
  sub_1001F7D68();
  sub_10001E770(v12[22]);
  sub_1001379E4(21);
  sub_1001F7D18();
  return (*(v19 + 8))(v11, v5);
}

uint64_t sub_100135BD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  sub_1001F6508();
  sub_10001A278();
  v83 = v4;
  v84 = v3;
  __chkstk_darwin(v3, v5);
  sub_100023510();
  v8 = v7 - v6;
  v9 = sub_1000183C4(&unk_1002B3450);
  __chkstk_darwin(v9 - 8, v10);
  sub_100099484();
  v13 = v11 - v12;
  v16 = __chkstk_darwin(v14, v15);
  v18 = &v80 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v80 - v20;
  v87 = sub_1000183C4(&qword_1002B4A18);
  sub_10001A278();
  v23 = v22;
  __chkstk_darwin(v24, v25);
  v27 = &v80 - v26;
  v91 = type metadata accessor for RenewalInfo();
  __chkstk_darwin(v91, v28);
  sub_100023510();
  sub_100137C28();
  *v31 = v29;
  v31[1] = v30;
  v31[9] = 48;
  v31[10] = 0xE100000000000000;
  v88 = a1;
  v89 = v31;
  v32 = a1[4];
  sub_10001AE68(a1, a1[3]);
  sub_100137160();
  v86 = v27;
  v33 = v90;
  sub_1001F8178();
  if (v33)
  {
    v90 = v33;
    v34 = 0;
    LODWORD(v35) = 0;
    v36 = 0;
    v37 = 0;
    sub_1001379C8();
  }

  else
  {
    v35 = v21;
    v81 = v18;
    v82 = v8;
    v80 = v13;
    v94 = 2;
    sub_1001373AC();
    sub_100137BA0();
    LODWORD(v32) = v87;
    sub_100137BF4();
    sub_1001F7C48();
    v41 = v89;
    *(v89 + 16) = v92;
    sub_100137A94(3);
    v37 = v23;
    v41[3] = sub_1001F7C78();
    v41[4] = v42;
    sub_100137A94(4);
    v41[5] = sub_1001F7C08();
    v41[6] = v43;
    sub_100137A94(5);
    v41[7] = sub_1001F7C78();
    v41[8] = v44;
    v94 = 6;
    sub_100137400();
    sub_100137BA0();
    sub_100137BF4();
    sub_1001F7CB8();
    *(v41 + 88) = v92;
    sub_100137A94(7);
    *(v41 + 89) = sub_1001F7C18();
    v94 = 8;
    sub_100137454();
    sub_100137BA0();
    sub_100137BF4();
    sub_1001F7C48();
    *(v41 + 90) = v92;
    LOBYTE(v92) = 9;
    sub_100137B14();
    LODWORD(v18) = sub_1001374A8(v45, v46);
    sub_1001F7C48();
    sub_100136810(v35, v41 + v91[13]);
    sub_100137A94(10);
    v47 = sub_1001F7C78();
    v90 = 0;
    v48 = (v41 + v91[14]);
    *v48 = v47;
    v48[1] = v49;
    sub_100137A94(11);
    v50 = sub_1001F7C78();
    v90 = 0;
    v51 = (v89 + v91[15]);
    *v51 = v50;
    v51[1] = v52;
    LOBYTE(v92) = 12;
    sub_100137B74();
    sub_1001F7CB8();
    v90 = 0;
    (*(v83 + 32))(v89 + v91[16], v82, v84);
    v94 = 13;
    sub_1001374F0();
    sub_100137B40();
    v90 = 0;
    *(v89 + v91[17]) = v92;
    sub_100137BD4(14);
    v53 = sub_1001F7C08();
    v90 = 0;
    v54 = (v89 + v91[18]);
    *v54 = v53;
    v54[1] = v55;
    v94 = 15;
    sub_100137544();
    sub_100137B40();
    v90 = 0;
    *(v89 + v91[19]) = v92;
    v94 = 16;
    sub_100137598();
    sub_100137B40();
    v90 = 0;
    v56 = v93;
    v57 = v89 + v91[20];
    *v57 = v92;
    v57[8] = v56;
    v34 = sub_1000183C4(&qword_1002ACA10);
    v94 = 17;
    sub_10001DE1C(&qword_1002ACB50);
    sub_100137BA0();
    v36 = v86;
    v58 = v90;
    sub_1001F7CB8();
    v90 = v58;
    if (v58)
    {
      v59 = sub_100137B88();
      v60(v59);
      LODWORD(v85) = 0;
      LODWORD(v86) = 0;
      sub_100137A18();
      v23 = 1;
      LODWORD(v18) = 1;
      LODWORD(v32) = 1;
    }

    else
    {
      *(v89 + v91[23]) = v92;
      LOBYTE(v92) = 18;
      sub_100137B74();
      sub_1001F7C48();
      v90 = 0;
      sub_100136810(v81, v89 + v91[24]);
      LOBYTE(v92) = 19;
      sub_100137B74();
      v61 = v90;
      sub_1001F7C48();
      v90 = v61;
      if (v61)
      {
        v62 = sub_100137B88();
        v63(v62);
        sub_100137A18();
        sub_100137AFC();
        LODWORD(v86) = v64;
      }

      else
      {
        sub_100136810(v80, v89 + v91[25]);
        sub_100137BD4(20);
        v65 = v90;
        v66 = sub_1001F7C58();
        v90 = v65;
        if (!v65)
        {
          v68 = v89 + v91[21];
          *v68 = v66;
          v68[8] = v67 & 1;
          sub_100137BD4(21);
          v69 = sub_1001F7C08();
          v90 = 0;
          v73 = v69;
          v75 = v74;
          v76 = sub_100137B88();
          v77(v76);
          v78 = v89;
          v79 = (v89 + v91[22]);
          *v79 = v73;
          v79[1] = v75;
          sub_1001375EC(v78, v85);
          sub_100019CCC(v88);
          return sub_100137650(v78);
        }

        v70 = sub_100137B88();
        v71(v70);
        sub_100137A34();
        sub_100137AFC();
        LODWORD(v86) = v72;
        LODWORD(v87) = v72;
      }
    }
  }

  v38 = v89;
  result = sub_100019CCC(v88);
  if (v34)
  {
  }

  if (v35)
  {
  }

  v40 = v91;
  if (v36)
  {
  }

  if (v37)
  {
  }

  if (!v23)
  {
    if (!v18)
    {
      goto LABEL_14;
    }

LABEL_24:
    result = (*(v83 + 8))(&v38[v40[16]], v84);
    if (!v32)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v18)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v32)
  {
LABEL_15:
  }

LABEL_16:
  if (v85)
  {
  }

  if (v86)
  {
    result = sub_100136794(&v38[v40[24]]);
  }

  if (v87)
  {
    return sub_100136794(&v38[v40[25]]);
  }

  return result;
}

uint64_t sub_1001365C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001353A8();
  *a1 = result;
  return result;
}

unint64_t sub_1001365F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100135408(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10013662C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001353FC();
  *a1 = result;
  return result;
}

uint64_t sub_100136660(uint64_t a1)
{
  v2 = sub_100137160();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013669C(uint64_t a1)
{
  v2 = sub_100137160();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for RenewalInfo()
{
  result = qword_1002B4908;
  if (!qword_1002B4908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100136754()
{
  if (*(v0 + 16) != 1)
  {
  }

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100136794(uint64_t a1)
{
  v2 = sub_1000183C4(&unk_1002B3450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001367FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_100099050(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_100136810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&unk_1002B3450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100136880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_10008A298(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_100136894(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001368A4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001368C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000183C4(&unk_1002B3450);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = sub_1001F6508();
      v10 = *(a3 + 64);
    }

    return sub_10001C990(a1 + v10, a2, v9);
  }
}

uint64_t sub_1001369B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000183C4(&unk_1002B3450);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = sub_1001F6508();
      v10 = *(a4 + 64);
    }

    return sub_100018460(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_100136A88()
{
  sub_100136D94(319, &qword_1002B4918, &type metadata for RenewalInfo.ExpirationIntent, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100136D94(319, &qword_1002ACF10, &type metadata for String, &type metadata accessor for Optional);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_100136D94(319, &qword_1002B4920, &type metadata for Bool, &type metadata accessor for Optional);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_100136D94(319, &qword_1002B4928, &type metadata for RenewalInfo.PriceIncreaseStatus, &type metadata accessor for Optional);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_1000AD1F8();
      if (v9 > 0x3F)
      {
        return v8;
      }

      v5 = sub_1001F6508();
      if (v10 > 0x3F)
      {
        return v5;
      }

      sub_100136D94(319, &qword_1002B4930, &type metadata for CheddarTransaction.OfferType, &type metadata accessor for Optional);
      if (v11 > 0x3F)
      {
        return v5;
      }

      sub_100136D94(319, &qword_1002B4938, &type metadata for CheddarTransaction.OfferPaymentMode, &type metadata accessor for Optional);
      if (v12 > 0x3F)
      {
        return v5;
      }

      sub_100136D94(319, &unk_1002B4940, &type metadata for OctaneSubscriptionPeriod, &type metadata accessor for Optional);
      if (v13 > 0x3F)
      {
        return v5;
      }

      sub_100136D94(319, &qword_1002AD180, &type metadata for Int64, &type metadata accessor for Optional);
      if (v14 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_100136D94(319, &qword_1002ACA80, &type metadata for String, &type metadata accessor for Array);
        v1 = v15;
        if (v16 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_100136D94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *sub_100136DF8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100136EC4);
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

_BYTE *storeEnumTagSinglePayload for RenewalInfo.ExpirationIntent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x100136FC8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100137004()
{
  result = qword_1002B49C0;
  if (!qword_1002B49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49C0);
  }

  return result;
}

unint64_t sub_10013705C()
{
  result = qword_1002B49C8;
  if (!qword_1002B49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49C8);
  }

  return result;
}

unint64_t sub_1001370B4()
{
  result = qword_1002B49D0;
  if (!qword_1002B49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49D0);
  }

  return result;
}

uint64_t sub_100137108(uint64_t a1)
{
  result = sub_1001374A8(&unk_1002AF1E8, type metadata accessor for RenewalInfo);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100137160()
{
  result = qword_1002B49E0;
  if (!qword_1002B49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49E0);
  }

  return result;
}

unint64_t sub_1001371B4()
{
  result = qword_1002B49E8;
  if (!qword_1002B49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49E8);
  }

  return result;
}

unint64_t sub_100137208()
{
  result = qword_1002B49F0;
  if (!qword_1002B49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49F0);
  }

  return result;
}

unint64_t sub_10013725C()
{
  result = qword_1002B49F8;
  if (!qword_1002B49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49F8);
  }

  return result;
}

unint64_t sub_1001372B0()
{
  result = qword_1002B4A00;
  if (!qword_1002B4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A00);
  }

  return result;
}

unint64_t sub_100137304()
{
  result = qword_1002B4A08;
  if (!qword_1002B4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A08);
  }

  return result;
}

unint64_t sub_100137358()
{
  result = qword_1002B4A10;
  if (!qword_1002B4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A10);
  }

  return result;
}

unint64_t sub_1001373AC()
{
  result = qword_1002B4A20;
  if (!qword_1002B4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A20);
  }

  return result;
}

unint64_t sub_100137400()
{
  result = qword_1002B4A28;
  if (!qword_1002B4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A28);
  }

  return result;
}

unint64_t sub_100137454()
{
  result = qword_1002B4A30;
  if (!qword_1002B4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A30);
  }

  return result;
}

uint64_t sub_1001374A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001374F0()
{
  result = qword_1002B4A38;
  if (!qword_1002B4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A38);
  }

  return result;
}

unint64_t sub_100137544()
{
  result = qword_1002B4A40;
  if (!qword_1002B4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A40);
  }

  return result;
}

unint64_t sub_100137598()
{
  result = qword_1002B4A48;
  if (!qword_1002B4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A48);
  }

  return result;
}

uint64_t sub_1001375EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenewalInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100137650(uint64_t a1)
{
  v2 = type metadata accessor for RenewalInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001376AC()
{
  result = qword_1002B4A50;
  if (!qword_1002B4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A50);
  }

  return result;
}

unint64_t sub_100137700()
{
  result = qword_1002B4A58;
  if (!qword_1002B4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A58);
  }

  return result;
}

unint64_t sub_100137754()
{
  result = qword_1002B4A60;
  if (!qword_1002B4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RenewalInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
        JUMPOUT(0x100137874);
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001378B0()
{
  result = qword_1002B4A68;
  if (!qword_1002B4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A68);
  }

  return result;
}

unint64_t sub_100137908()
{
  result = qword_1002B4A70;
  if (!qword_1002B4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A70);
  }

  return result;
}

unint64_t sub_100137960()
{
  result = qword_1002B4A78;
  if (!qword_1002B4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A78);
  }

  return result;
}

void sub_1001379C8()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void sub_1001379FC()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void sub_100137AA4(uint64_t a1@<X8>)
{
  v4 = *(v3 - 168) + a1;
  *v4 = v1;
  *(v4 + 8) = v2;
}

void sub_100137AB8(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 7;
}

uint64_t sub_100137B40()
{

  return sub_1001F7C48();
}

void sub_100137B64()
{
  v3 = *(v2 - 376);
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
}

uint64_t sub_100137BB8()
{
}

void sub_100137C04(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_100137E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = sub_1001388F8(a1, a2, a3, a4);
  v5 = sub_100138880(v4);
  return sub_100138664(v5, v6, v7, v8);
}

uint64_t sub_100137E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 22) = BYTE6(a3);
  *(a4 + 20) = WORD2(a3);
  *(a4 + 56) = 0;
}

uint64_t sub_100137E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002EE44(a1, v8);
  sub_10002EE44(v8, v6);
  *(a2 + 24) = &type metadata for NIOAny;
  v3 = swift_allocObject();
  *a2 = v3;
  v4 = v6[1];
  v3[1] = v6[0];
  v3[2] = v4;
  v3[3] = v7[0];
  *(v3 + 57) = *(v7 + 9);
  result = sub_100034310(v8);
  *(a2 + 56) = 2;
  return result;
}

uint64_t sub_100137EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 22) = BYTE6(a3);
  *(a4 + 20) = WORD2(a3);
  *(a4 + 56) = 0;
  return sub_100037154();
}

uint64_t _EmittingChannelHandler.wrapOutboundOut(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1001388DC();
  sub_100037778();
  __chkstk_darwin(v4, v5);
  v7 = sub_1001388BC(v6, v10);
  v8(v7);
  return NIOAny.init<A>(_:)(v2, v1, a1);
}

uint64_t sub_100138014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = sub_1001388F8(a1, a2, a3, a4);
  v5 = sub_100138880(v4);
  return sub_1000811E4(v5, v6, v7, v8);
}

uint64_t sub_10013804C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(_OWORD *, uint64_t *)@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  v7 = swift_allocObject();
  *a4 = v7;
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  *(v7 + 47) = *(a1 + 31);
  *(a4 + 56) = 2;
  return a3(a1, &v10);
}

uint64_t ChannelInboundHandler.wrapInboundOut(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1001388DC();
  sub_100037778();
  __chkstk_darwin(v4, v5);
  v7 = sub_1001388BC(v6, v10);
  v8(v7);
  return NIOAny.init<A>(_:)(v2, v1, a1);
}

uint64_t sub_1001381A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  result = sub_100137D88(a1, a2, a3, a4);
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  *(a5 + 22) = v9;
  *(a5 + 20) = v10;
  *(a5 + 23) = v11;
  return result;
}

uint64_t sub_100138204()
{
  v0 = sub_1000183C4(&qword_1002ADD50);
  if (v0 == &type metadata for ByteBuffer)
  {
    v16 = NIOAny.forceAsByteBuffer()();
    v17 = v3;
    v18 = v4;
    v20 = v5;
    v19 = v6;
LABEL_9:
    swift_dynamicCast();
    return v21;
  }

  if (v0 == &type metadata for FileRegion)
  {
    v16 = NIOAny.forceAsFileRegion()();
    v17 = v7;
    v18 = v8;
    v20 = v9;
    v19 = v10;
    goto LABEL_9;
  }

  if (v0 == &type metadata for IOData)
  {
    v16 = NIOAny.forceAsIOData()();
    v17 = v11;
    v18 = v12;
    v20 = v13;
    v19 = v14;
    goto LABEL_9;
  }

  if (v0 == sub_1000183C4(&qword_1002ADD58))
  {
    NIOAny.forceAsByteEnvelope()(&v16);
    goto LABEL_9;
  }

  sub_100031498();
  v21 = v1;
  v22 = v2;
  return v21;
}

uint64_t sub_1001384C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100137CB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001384F0@<X0>(uint64_t a1@<X8>)
{
  result = sub_100137CF0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v6;
  *(a1 + 22) = v7;
  return result;
}

uint64_t sub_100138664(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
LABEL_5:
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }

    goto LABEL_5;
  }

  return sub_100037154();
}

uint64_t sub_1001386E0()
{
  v1 = *(v0 + 72);
  if (v1 == 2)
  {
    sub_100019CCC(v0 + 16);
  }

  else if (v1 == 1)
  {

    if (*(v0 + 48) != 4 && (~*(v0 + 56) & 0xF000000000000007) != 0)
    {
    }
  }

  else if (!*(v0 + 72))
  {
    sub_100034300();
  }

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_100138880(uint64_t a1)
{
  *(v4 + 24) = a1;
  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  *(v4 + 22) = BYTE6(v1);
  *(v4 + 20) = WORD2(v1);
  *(v4 + 23) = v5;
  *(v4 + 56) = 2;
  return v3;
}

uint64_t sub_1001388DC()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1001388F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{

  return sub_1000183C4(a4);
}

void *static MultiThreadedEventLoopGroup.currentEventLoop.getter()
{
  if (qword_1002AC488 != -1)
  {
    swift_once();
  }

  return sub_100138A4C(type metadata accessor for SelectableEventLoop);
}

void *ScheduledTask.__allocating_init(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10012F014();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

unint64_t sub_100138A18(unint64_t result)
{
  v2 = *(v1 + 48);
  if (((v2 | result) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2 >= result;
    v4 = v2 - result;
    if (v3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_100138A4C(void (*a1)(void))
{
  result = pthread_getspecific(*(*(v1 + 16) + 16));
  if (result)
  {
    swift_unknownObjectRetain();
    a1(0);
    swift_dynamicCast();
    return v4;
  }

  return result;
}

void *sub_100138AC0()
{
  v2 = v0;
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  *(v0 + 32) = -1;
  type metadata accessor for Lock();
  swift_allocObject();
  *(v0 + 48) = Lock.init()();
  *(v0 + 56) = -1;
  *(v0 + 72) = 64;
  v3 = pthread_self();
  type metadata accessor for NIOThread();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = v3;
  result[2] = 0;
  *(v2 + 40) = result;
  *(v2 + 16) = 2;
  if ((*(v2 + 72) - 0x400000000000000) >> 59 == 31)
  {
    v5 = swift_slowAlloc();
    *v5 = 0u;
    v5[1] = 0u;
    *(v2 + 64) = v5;
    sub_100138BB4();
    if (v1)
    {
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100138BB4()
{
  sub_10019F24C();
  if (!v1)
  {
    *(v0 + 56) = v2;
    *(v0 + 16) = 0;
    changelist.ident = 0;
    *&changelist.filter = 2490358;
    memset(&changelist.fflags, 0, 20);
    sub_10017BE7C(&changelist, 1);
  }
}

uint64_t sub_100138C50()
{
  sub_1000183C4(&qword_1002AC618);
  swift_bufferAllocate();
  v0 = swift_unknownObjectRetain();
  sub_100006B94((v0 + 16), 0);
  swift_unknownObjectRelease();
  result = swift_dynamicCastClassUnconditional();
  qword_1002B4A80 = result;
  return result;
}

uint64_t sub_100138CCC()
{
  sub_1000183C4(&qword_1002B4C18);
  v0 = swift_allocObject();
  sub_1000183C4(&qword_1002B4C20);
  swift_allocObject();
  result = sub_10004B03C(j_j__swift_release);
  *(v0 + 16) = result;
  qword_1002B4A88 = v0;
  return result;
}

uint64_t sub_100138D50(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(uint64_t))
{
  v10 = a5();
  v11 = a3(v10);
  type metadata accessor for SelectableEventLoop();
  swift_allocObject();

  v13 = sub_100043A44(v12, v11, a2 & 1);
  if (qword_1002AC488 != -1)
  {
    swift_once();
  }

  sub_10004AA38(v14);
  a7(v13);
  sub_1000446E0();
  sub_10004AA38(0);
}

uint64_t sub_100138F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Lock();
  swift_allocObject();
  v10 = Lock.init()();
  v11 = dispatch_group_create();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  dispatch_group_enter(v11);
  type metadata accessor for NIOThread();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v10;
  v13[7] = v12;
  v13[8] = v11;

  v14 = v11;
  sub_1000B35F4(a1, a2, 0, sub_10013B418, v13);

  sub_1001F72C8();
  Lock.lock()();
  result = swift_beginAccess();
  v16 = *(v12 + 16);
  if (v16)
  {

    Lock.unlock()();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001390BC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{

  v14 = a8;
  v15 = a4(a1);
  v16 = a2(v15);
  type metadata accessor for SelectableEventLoop();
  swift_allocObject();

  v18 = sub_100043A44(v17, v16, 0);
  if (qword_1002AC488 != -1)
  {
    swift_once();
  }

  sub_10004AA38(v19);
  sub_100139308(v18, a6, a7, v14);
  sub_1000446E0();
  sub_10004AA38(0);
}

void sub_100139308(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  Lock.lock()();
  swift_beginAccess();
  *(a3 + 16) = a1;

  Lock.unlock()();
  dispatch_group_leave(a4);
}

uint64_t sub_10013937C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1000C6894(debugOnly(_:), 0, result);
    v6 = swift_allocObject();
    sub_100139400(v5, a2, a3);
    return v6;
  }

  return result;
}

uint64_t sub_100139400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000183C4(&qword_1002AC618);
  sub_10012F3D4();
  swift_bufferAllocate();
  v7 = swift_unknownObjectRetain();
  sub_100006B94((v7 + 16), 0);
  swift_unknownObjectRelease();
  *(v3 + 24) = swift_dynamicCastClassUnconditional();
  type metadata accessor for Lock();
  sub_10012F3D4();
  swift_allocObject();
  *(v3 + 40) = Lock.init()();
  *(v3 + 48) = 0;
  *(v3 + 56) = 2;
  if (qword_1002AC480 != -1)
  {
    swift_once();
  }

  *(v3 + 16) = sub_100006B70((qword_1002B4A80 + 16), 1uLL);
  v12 = *(a1 + 16);
  if (v12)
  {
    sub_1001F78C8();
    v11 = a2;
    for (i = 0; i != v12; ++i)
    {
      sub_10004794C();
      v9 = swift_allocObject();
      *(v9 + 16) = *(a1 + 16 * i + 32);
      swift_retain_n();
      v13._countAndFlagsBits = sub_1001F7E28();
      sub_1001F6CA8(v13);

      v14._countAndFlagsBits = 9005;
      v14._object = 0xE200000000000000;
      sub_1001F6CA8(v14);
      v15._countAndFlagsBits = sub_1001F7E28();
      sub_1001F6CA8(v15);

      sub_100138F30(0x2D544C452D4F494ELL, 0xE800000000000000, v11, a3, sub_10013B23C, v9);

      sub_1001F7878();
      sub_1001F7908();
      sub_1001F7918();
      sub_1001F7898();
    }
  }

  *(v3 + 32) = _swiftEmptyArrayStorage;
  return v3;
}

uint64_t MultiThreadedEventLoopGroup.next()()
{
  v1 = *(v0 + 32);
  v2 = sub_100006B70((*(v0 + 24) + 16), 1uLL);
  result = sub_10001A07C(v1);
  if (!result)
  {
    __break(1u);
    return sub_1001F7808();
  }

  if (v2 != 0x8000000000000000 || result != -1)
  {
    if (v2 % result >= 0)
    {
      v5 = v2 % result;
    }

    else
    {
      v5 = -(v2 % result);
    }

    sub_1001C19A8(v5, (v1 & 0xC000000000000001) == 0, v1);
    if ((v1 & 0xC000000000000001) == 0)
    {
    }

    return sub_1001F7808();
  }

  __break(1u);
  return result;
}

void MultiThreadedEventLoopGroup.shutdownGracefully(queue:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1001F6738();
  sub_10001A278();
  v37 = v4;
  v38 = v3;
  __chkstk_darwin();
  sub_100023510();
  v36 = v6 - v5;
  v39 = sub_1001F7308();
  sub_10001A278();
  v8 = v7;
  __chkstk_darwin();
  sub_100023510();
  v11 = v10 - v9;
  sub_1001F72E8();
  __chkstk_darwin();
  sub_100023510();
  sub_1001F6768();
  sub_10001A278();
  v34 = v13;
  v35 = v12;
  __chkstk_darwin();
  sub_100023510();
  v16 = v15 - v14;
  v17 = dispatch_group_create();
  sub_10004B17C();
  sub_1001F6758();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10013AF48(&qword_1002AE9B0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000183C4(&unk_1002BA640);
  sub_10004B28C(&qword_1002AE9B8, &unk_1002BA640);
  sub_1001F7708();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v39);
  v18 = a1;
  v40 = v16;
  v19 = sub_1001F7348();
  v20 = *(v43 + 40);

  v21 = v19;

  if (sub_10015F210(v20, v43, v21, a2, a3))
  {
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v23 = *(v43 + 32);
    v24 = sub_10001744C(v23);
    if (!v24)
    {
LABEL_9:
      v29 = swift_allocObject();
      v29[2] = v43;
      v29[3] = v22;
      v29[4] = v18;
      v29[5] = a2;
      v29[6] = a3;
      aBlock[4] = sub_10013AE38;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000172C0;
      aBlock[3] = &unk_10028CC20;
      v30 = _Block_copy(aBlock);
      v31 = v18;

      sub_1001F6758();
      sub_10013B588();
      sub_10013AF48(v32, 255, v33);
      sub_1000183C4(&qword_1002AC880);
      sub_10004B28C(&qword_1002BA620, &qword_1002AC880);
      sub_1001F7708();
      sub_1001F72D8();

      _Block_release(v30);
      (*(v37 + 8))(v36, v38);
      (*(v34 + 8))(v40, v35);

      return;
    }

    v25 = v24;
    if (v24 >= 1)
    {
      v26 = 0;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          sub_1001F7808();
        }

        else
        {
        }

        ++v26;
        dispatch_group_enter(v17);
        sub_10004794C();
        v27 = swift_allocObject();
        *(v27 + 16) = v22;
        *(v27 + 24) = v17;

        v28 = v17;
        sub_100045190(v21, sub_10013ADE4, v27);
      }

      while (v25 != v26);
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
  }
}

void sub_100139D90(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = sub_1001F6738();
  sub_10001A278();
  v41 = v10;
  __chkstk_darwin();
  sub_100023510();
  v13 = v12 - v11;
  sub_1001F6768();
  sub_10001A278();
  __chkstk_darwin();
  sub_100023510();
  v18 = v17 - v16;
  v19 = *(a1 + 48);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      v39 = v15;
      v40 = v14;
      v20 = swift_allocObject();
      v20[2] = a3;
      v20[3] = a4;
      v20[4] = v19;
      aBlock[4] = sub_10013B330;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000172C0;
      aBlock[3] = &unk_10028CF00;
      v38 = _Block_copy(aBlock);
      v21 = sub_10013B5A0();
      sub_10013B1C8(v21, v22);
      v23 = sub_10013B5A0();
      sub_10013B1C8(v23, v24);

      sub_1001F6758();
      aBlock[7] = _swiftEmptyArrayStorage;
      sub_10013B588();
      sub_10013AF48(v25, 255, v26);
      sub_1000183C4(&qword_1002AC880);
      sub_10004B28C(&qword_1002BA620, &qword_1002AC880);
      sub_1001F7708();
      sub_1001F7338();
      _Block_release(v38);
      v27 = sub_10013B5A0();
      sub_10013AE90(v27, v28);
      (*(v41 + 8))(v13, v9);
      (*(v39 + 8))(v18, v40);

      v29 = 0;
    }

    else
    {
      *(a1 + 48) = _swiftEmptyArrayStorage;
      *(a1 + 56) = 0;
      v29 = 1;
    }
  }

  else
  {
    sub_10004794C();
    v30 = swift_allocObject();
    *(v30 + 16) = a3;
    *(v30 + 24) = a4;
    sub_10013B1C8(v19, 0);
    v31 = a2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000337C8();
      v19 = v36;
    }

    v32 = *(v19 + 16);
    if (v32 >= *(v19 + 24) >> 1)
    {
      sub_1000337C8();
      v19 = v37;
    }

    *(v19 + 16) = v32 + 1;
    v33 = (v19 + 24 * v32);
    v33[4] = v31;
    v33[5] = sub_10013B360;
    v33[6] = v30;
    v34 = *(a1 + 48);
    *(a1 + 48) = v19;
    v35 = *(a1 + 56);
    *(a1 + 56) = 0;
    sub_10013AE90(v34, v35);
    v29 = 0;
  }

  *a5 = v29;
}

void sub_10013A164(uint64_t a1, char a2, uint64_t a3, dispatch_group_t group)
{
  if (a2)
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    *(a3 + 16) = a1;
    *(a3 + 24) = 1;
    swift_errorRetain();
    sub_1000374AC(v7, v8);
  }

  dispatch_group_leave(group);
}

void sub_10013A1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t a1), uint64_t a5)
{
  v60 = a5;
  v61 = a4;
  v62 = a3;
  v7 = sub_1001F6738();
  v65 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F6768();
  v11 = *(v10 - 8);
  v63 = v10;
  v64 = v11;
  __chkstk_darwin();
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 32);
  v15 = sub_10001744C(v14);
  if (v15)
  {
    v16 = v15;
    if (v15 < 1)
    {
      __break(1u);
      goto LABEL_17;
    }

    for (i = 0; i != v16; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        sub_1001F7808();
      }

      else
      {
      }

      sub_100045974(1);
    }
  }

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  Lock.lock()();
  if (*(a1 + 56))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v19 = *(a1 + 48);
  swift_beginAccess();
  v20 = *(a2 + 24) == 1;
  v56[0] = v19;
  if (v20)
  {
    v21 = *(a2 + 16);
    *(v18 + 16) = v21;
    sub_1000477E8(v21, 1);
    sub_10013B1C8(v19, 0);
    sub_1000477E8(v21, 1);
  }

  else
  {
    *(v18 + 16) = 0;

    v21 = 0;
  }

  v22 = v65;

  v23 = *(a1 + 48);
  *(a1 + 48) = v21;
  v24 = *(a1 + 56);
  *(a1 + 56) = 1;
  sub_10013AE90(v23, v24);
  Lock.unlock()();
  v25 = swift_allocObject();
  v26 = v60;
  v25[2] = v61;
  v25[3] = v26;
  v25[4] = v18;
  v71 = sub_10013B1FC;
  v72 = v25;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v61 = &v69;
  v69 = sub_1000172C0;
  v70 = &unk_10028CE38;
  v27 = _Block_copy(&aBlock);

  sub_1001F6758();
  v66 = _swiftEmptyArrayStorage;
  v28 = sub_10013AF48(&qword_1002BA610, 255, &type metadata accessor for DispatchWorkItemFlags);
  v29 = sub_1000183C4(&qword_1002AC880);
  v30 = v28;
  v59 = sub_10004B28C(&qword_1002BA620, &qword_1002AC880);
  v60 = v29;
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v27);
  v33 = *(v22 + 8);
  v32 = v22 + 8;
  v31 = v33;
  v34 = v13;
  v35 = v9;
  v36 = v9;
  v37 = v7;
  v33(v36, v7);
  v38 = v64 + 8;
  v39 = v34;
  v40 = v34;
  v41 = *(v64 + 8);
  v41(v40, v63);

  v42 = *(v56[0] + 16);
  if (v42)
  {
    v62 = v18;
    v43 = (v56[0] + 48);
    v56[1] = v30;
    v64 = v38;
    v65 = v32;
    v57 = v41;
    v58 = v31;
    do
    {
      v45 = *(v43 - 2);
      v44 = *(v43 - 1);
      v46 = *v43;
      v43 += 3;
      v47 = swift_allocObject();
      *(v47 + 16) = v44;
      *(v47 + 24) = v46;
      v48 = swift_allocObject();
      v48[2] = v45;
      v48[3] = sub_10013B23C;
      v49 = v62;
      v48[4] = v47;
      v48[5] = v49;
      v71 = sub_10013B2BC;
      v72 = v48;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v69 = sub_1000172C0;
      v70 = &unk_10028CEB0;
      v50 = _Block_copy(&aBlock);
      v51 = v45;

      v52 = v51;

      sub_1001F6758();
      v66 = _swiftEmptyArrayStorage;
      sub_1001F7708();
      sub_1001F7338();
      v53 = v50;
      v54 = v57;
      v55 = v58;
      _Block_release(v53);

      v55(v35, v37);
      v54(v39, v63);

      --v42;
    }

    while (v42);
  }

  sub_10013AE90(v56[0], 0);
}

uint64_t sub_10013A7E0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

uint64_t sub_10013A84C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a4 + 16);
  swift_errorRetain();
  a2(v6);
}

uint64_t static MultiThreadedEventLoopGroup.withCurrentThreadAsEventLoop(_:)(uint64_t a1, uint64_t a2)
{
  v4 = pthread_self();
  type metadata accessor for NIOThread();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = v4;
  v5[2] = 0;
  sub_10004794C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_10013B5A0();
  sub_100138D50(v7, v8, v9, 0, v10, 0, v11);
}

void *sub_10013A9B8()
{
  sub_1000183C4(&qword_1002B4C10);
  swift_allocObject();
  return sub_100138AC0();
}

uint64_t MultiThreadedEventLoopGroup._preconditionSafeToSyncShutdown(file:line:)()
{
  result = static MultiThreadedEventLoopGroup.currentEventLoop.getter();
  if (result)
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  return result;
}

uint64_t MultiThreadedEventLoopGroup.deinit()
{

  sub_10013AE90(*(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t MultiThreadedEventLoopGroup.__deallocating_deinit()
{
  MultiThreadedEventLoopGroup.deinit();

  return swift_deallocClassInstance();
}

uint64_t MultiThreadedEventLoopGroup.description.getter()
{
  sub_10013B5AC();
  sub_1001F77B8(61);
  v2._object = 0x80000001002284D0;
  v2._countAndFlagsBits = 0xD000000000000036;
  sub_1001F6CA8(v2);
  v3._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v3);

  v4._countAndFlagsBits = 0x7D202A232DLL;
  v4._object = 0xE500000000000000;
  sub_1001F6CA8(v4);
  return v1;
}

void *ScheduledTask.init(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t ScheduledTask.deinit()
{

  return v0;
}

uint64_t ScheduledTask.__deallocating_deinit()
{
  ScheduledTask.deinit();
  sub_10012F014();

  return swift_deallocClassInstance();
}

uint64_t ScheduledTask.description.getter()
{
  sub_10013B5AC();
  sub_1001F77B8(28);

  if ((*(v0 + 48) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_10013AEAC();
    v2._countAndFlagsBits = sub_1001F76B8();
    sub_1001F6CA8(v2);

    v3._countAndFlagsBits = 41;
    v3._object = 0xE100000000000000;
    sub_1001F6CA8(v3);
    return 0xD000000000000019;
  }

  return result;
}

BOOL static ScheduledTask.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 48);
  v3 = *(a2 + 48);
  if (((v3 | v2) & 0x8000000000000000) == 0)
  {
    return v2 < v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10013AD6C()
{
  sub_1000374AC(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10013ADA8()
{

  sub_10004794C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10013ADF0()
{

  v1 = sub_10012F014();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10013AE48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013AE90(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

unint64_t sub_10013AEAC()
{
  result = qword_1002B4A90;
  if (!qword_1002B4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A90);
  }

  return result;
}

uint64_t sub_10013AF48(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10013AFD8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10013AFF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_10013B034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10013B078(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10013B0AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFD && *(a1 + 16))
    {
      v2 = *a1 + 16380;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 8) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >> 2 >= 0xFFF)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10013B118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *result = a2 - 16381;
    *(result + 8) = 0;
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_10013B194()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10013B1C8(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_10013B208()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10013B23C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_10013B274()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10013B2E0(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10013B38C()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10013B3C0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10013B42C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFD && *(a1 + 9))
    {
      v2 = *a1 + 16380;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 8) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >> 2 >= 0xFFF)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10013B498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *(result + 8) = 0;
    *result = a2 - 16381;
    if (a3 >= 0x3FFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_10013B518(uint64_t result, char a2)
{
  v2 = *(result + 8) & 1 | (a2 << 6);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 8) = v2;
  return result;
}

unint64_t sub_10013B5DC(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD000000000000030;
      break;
    case 3:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10013B688(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

unint64_t sub_10013B6D4(char a1)
{
  result = 0xD00000000000003FLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000003ELL;
      break;
    case 2:
      result = 0xD000000000000027;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_10013B798(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10013B864);
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

unint64_t sub_10013B8A0()
{
  result = qword_1002B4C28;
  if (!qword_1002B4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4C28);
  }

  return result;
}

unint64_t sub_10013B8F8()
{
  result = qword_1002B4C30;
  if (!qword_1002B4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4C30);
  }

  return result;
}

uint64_t sub_10013B970(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_10013E83C();
  v15 = swift_allocObject();
  sub_10013CF9C(a1, a2, a3, a4, a5, a6, a7, a8);
  return v15;
}

uint64_t sub_10013BA10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_10013E83C();
  v10 = swift_allocObject();
  sub_10013DE70(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_10013BA90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_10013E83C();
  v12 = swift_allocObject();
  sub_10013D410(a1, a2, a3, a4, a5, a6);
  return v12;
}

BOOL sub_10013BB08(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C090;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  return v4 != 0;
}

uint64_t sub_10013BB74(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C0C8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10013BBC0(char a1)
{
  if (!a1)
  {
    return 7959874;
  }

  if (a1 == 1)
  {
    return 0x6C65636E6143;
  }

  return 27503;
}

BOOL sub_10013BC0C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013BB08(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10013BD3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013BB74(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10013BD6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10013BBC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_10013BE48()
{
  result = sub_10013BE68();
  qword_1002E60E0 = result;
  return result;
}

id sub_10013BE68()
{
  v0 = sub_1001F65B8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSNumberFormatter) init];
  [v5 setNumberStyle:5];
  sub_1001F6588();
  isa = sub_1001F6598().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setLocale:isa];

  return v5;
}

uint64_t sub_10013BF90()
{
  v2 = v0;
  v3 = sub_1001F5F48();
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  sub_10013E8BC();
  result = swift_beginAccess();
  if (*(v0 + 48))
  {

    sub_1001F5F28();
    sub_10001C790();
    sub_1001F75E8();
    (*(v5 + 8))(v1, v3);

    v10._object = 0x8000000100228C40;
    v10._countAndFlagsBits = 0xD000000000000014;
    v9 = sub_1001F6D68(v10);

    if (!v9)
    {
      swift_beginAccess();
      if (*(v2 + 48))
      {
        v11._countAndFlagsBits = 0xD000000000000016;
        v11._object = 0x8000000100226110;
        sub_1001F6CA8(v11);
      }

      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_10013C120(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C130;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10013C174(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x65776F6C6C612D6DLL;
      break;
    case 2:
      result = 0x6567617373656DLL;
      break;
    case 3:
      result = 0x74616E616C707865;
      break;
    case 4:
      result = 0x42746C7561666564;
      break;
    case 5:
    case 6:
      result = 0x6E6F747475426B6FLL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x656572467369;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10013C32C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013C120(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10013C35C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10013C174(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10013C3A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10013C16C();
  *a1 = result;
  return result;
}

uint64_t sub_10013C3CC(uint64_t a1)
{
  v2 = sub_10013E3DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013C408(uint64_t a1)
{
  v2 = sub_10013E3DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t *sub_10013C444()
{

  sub_10013E388(v0[10], v0[11], v0[12]);

  sub_10013E388(v0[20], v0[21], v0[22]);
  memcpy(v2, v0 + 28, sizeof(v2));
  sub_10004BDE8(v2, &qword_1002B6CF0);
  return v0;
}

uint64_t sub_10013C500(void *a1)
{
  v3 = v1;
  sub_1000183C4(&qword_1002B6CF8);
  sub_10001A278();
  __chkstk_darwin(v5, v6);
  sub_10001AE68(a1, a1[3]);
  sub_10013E3DC();
  sub_1001F8198();
  v26[0] = *(v3 + 16);
  v25[0] = 0;
  sub_10013E430();
  sub_10013E7B8();
  sub_1001F7D58();
  if (v2)
  {
    goto LABEL_3;
  }

  v26[0] = 1;
  sub_10013E7B8();
  sub_1001F7D98();
  v10 = *(v3 + 24);
  v26[0] = 2;

  sub_10013E7E8();
  sub_1001F7D18();
  if (!v10)
  {

    swift_beginAccess();
    v11 = *(v3 + 40);
    v26[0] = 3;

    sub_10013E7E8();
    sub_1001F7D18();
    if (!v11)
    {

      v26[0] = *(v3 + 56);
      v25[0] = 4;
      sub_10013E484();
      sub_10013E7B8();
      sub_1001F7D58();
      v14 = *(v3 + 64);
      v44 = 5;

      sub_10013E7E8();
      sub_1001F7D18();
      if (!v14)
      {

        v15 = *(v3 + 96);
        v42[0] = *(v3 + 80);
        v42[1] = v15;
        v17 = *(v3 + 80);
        v16 = *(v3 + 96);
        v43[0] = *(v3 + 112);
        *(v43 + 10) = *(v3 + 122);
        v39 = v17;
        v40 = v16;
        v41[0] = *(v3 + 112);
        *(v41 + 10) = *(v3 + 122);
        v38 = 6;
        sub_100057CB8(v42, v26, &qword_1002B4150);
        sub_10013E4D8();
        sub_10013E7E8();
        sub_1001F7D58();
        v36[0] = v39;
        v36[1] = v40;
        *v37 = v41[0];
        *&v37[10] = *(v41 + 10);
        sub_10004BDE8(v36, &qword_1002B4150);
        v18 = *(v3 + 144);
        v35 = 7;

        sub_10013E7E8();
        sub_1001F7D18();
        if (v18)
        {
          v19 = sub_10013E894();
          v20(v19);
        }

        v21 = *(v3 + 176);
        v33[0] = *(v3 + 160);
        v33[1] = v21;
        v23 = *(v3 + 160);
        v22 = *(v3 + 176);
        *v34 = *(v3 + 192);
        *&v34[10] = *(v3 + 202);
        v30 = v23;
        v31 = v22;
        v32[0] = *(v3 + 192);
        *(v32 + 10) = *(v3 + 202);
        v29 = 8;
        sub_100057CB8(v33, v26, &qword_1002B4150);
        sub_10013E7E8();
        sub_1001F7D58();
        v27[0] = v30;
        v27[1] = v31;
        *v28 = v32[0];
        *&v28[10] = *(v32 + 10);
        sub_10004BDE8(v27, &qword_1002B4150);
        v26[0] = 9;
        sub_10013E7B8();
        sub_1001F7D28();
        v26[239] = 10;
        sub_10013E7B8();
        sub_1001F7D28();
        memcpy(v26, (v3 + 224), 0xE0uLL);
        memcpy(v25, (v3 + 224), sizeof(v25));
        v24[231] = 11;
        sub_100057CB8(v26, v24, &qword_1002B6CF0);
        sub_10013E52C();
        sub_10013E7B8();
        sub_1001F7D58();
        memcpy(v24, v25, 0xE0uLL);
        sub_10004BDE8(v24, &qword_1002B6CF0);
LABEL_3:
        v7 = sub_10013E894();
        return v8(v7);
      }
    }
  }

  v12 = sub_10013E894();
  v13(v12);
}

uint64_t sub_10013CA74()
{
  *(v0 + 16) = 1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 3;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 33619968;
  sub_10013E380(v2);
  memcpy((v0 + 224), v2, 0xE0uLL);
  return v0;
}

uint64_t sub_10013CB18(uint64_t a1)
{
  v2 = v1;
  v4 = 0xD000000000000010;
  sub_10013CA74();
  memcpy(__dst, (a1 + 224), sizeof(__dst));
  memcpy(v28, (a1 + 224), sizeof(v28));
  if (sub_100086FB4(v28) == 1)
  {
    type metadata accessor for OctaneSubscription();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v5)
    {
      v6 = "Confirm Your In-App Purchase";
    }

    else
    {
      v6 = "n will renew again on ";
    }
  }

  else
  {
    v6 = "Subscription Terms";
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v6 | 0x8000000000000000;

  v7 = sub_100086AD4();
  v9 = v8;
  sub_10012F774();
  *(v2 + 40) = v7;
  *(v2 + 48) = v9;

  sub_10013BF90();
  memcpy(v27, __dst, sizeof(v27));
  if (sub_100086FB4(v27) == 1)
  {
    type metadata accessor for OctaneSubscription();
    v10 = vdup_n_s32(swift_dynamicCastClass() == 0);
    v11.i64[0] = v10.u32[0];
    v11.i64[1] = v10.u32[1];
    v12 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v11, 0x3FuLL)), xmmword_10020EE30, xmmword_10020EE20);
  }

  else
  {
    v12 = xmmword_10020CD20;
  }

  *(v2 + 64) = v12;

  v13 = *(*(a1 + 88) + 88);
  sub_10013E868();
  *(v2 + 80) = 1;
  *(v2 + 88) = v15;
  *(v2 + 96) = v14;
  *(v2 + 104) = v16;
  *(v2 + 112) = v13;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 513;

  sub_10004BDE8(v23, &qword_1002B4150);
  *(v2 + 56) = 0;
  *(v2 + 144) = xmmword_10020CD10;

  sub_1001AAB88(a1, __src);
  debugOnly(_:)(__src, v17, v18, v19, v20, v21);
  memcpy(v25, (v2 + 224), sizeof(v25));
  memcpy((v2 + 224), __src, 0xE0uLL);
  sub_10004BDE8(v25, &qword_1002B6CF0);
  return v2;
}

uint64_t sub_10013CD98()
{
  sub_10013CA74();
  *(v1 + 219) = 1;
  sub_10013E7D8();
  sub_10013E8F0(v2);

  sub_10013E790();
  *(v1 + 40) = 0xD00000000000001DLL;
  *(v1 + 48) = v0;

  sub_10013BF90();
  sub_10013E7C8();
  sub_10013E90C(xmmword_10020CD20);

  return v1;
}

uint64_t sub_10013CE24()
{
  sub_10013C444();
  sub_10013E83C();

  return swift_deallocClassInstance();
}

uint64_t sub_10013CE74()
{
  sub_10013CA74();
  *(v0 + 219) = 1;
  sub_1000B3DE0();
  sub_10013E8F0(v1);

  sub_10012F774();
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x8000000100228CB0;

  sub_10013BF90();
  *(v0 + 56) = 2;
  *(v0 + 64) = xmmword_10020CD20;

  sub_10013E7F4();
  sub_10004BDE8(v3, &qword_1002B4150);

  *(v0 + 144) = xmmword_10020CD10;

  return v0;
}

uint64_t sub_10013CF9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_10013CA74();
  *(v8 + 219) = 1;
  sub_1000B3DE0();
  *(v8 + 24) = 0x1000000000000026;
  *(v8 + 32) = v16;

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1001F77B8(114);
  v20._countAndFlagsBits = 0x2072756F59;
  v20._object = 0xE500000000000000;
  sub_1001F6CA8(v20);
  v21._countAndFlagsBits = sub_1001ECB3C(*(a1 + 176), *(a1 + 184));
  sub_1001F6CA8(v21);

  v22._object = 0x8000000100228F70;
  v22._countAndFlagsBits = 0xD000000000000018;
  sub_1001F6CA8(v22);
  v23._countAndFlagsBits = a2;
  v23._object = a3;
  sub_1001F6CA8(v23);

  v24._countAndFlagsBits = 0x20726F6620;
  v24._object = 0xE500000000000000;
  sub_1001F6CA8(v24);
  v25._countAndFlagsBits = a4;
  v25._object = a5;
  sub_1001F6CA8(v25);

  v26._countAndFlagsBits = 0xD00000000000004ALL;
  v26._object = 0x8000000100228F90;
  sub_1001F6CA8(v26);
  sub_10012F774();
  *(v8 + 40) = 0;
  *(v8 + 48) = 0xE000000000000000;

  sub_10013BF90();
  *(v8 + 56) = 2;
  *(v8 + 64) = xmmword_10020CD20;

  *(v8 + 144) = xmmword_10020EE40;

  if (a6)
  {
    if (a8)
    {

      sub_10013D22C(a7, a8, a6);

      swift_unknownObjectRelease();
      sub_10013E84C();
      sub_10013E8A4(2);
      *(v8 + 216) = 0;
      sub_10004BDE8(v19, &qword_1002B4150);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  *(v8 + 218) = 1;
  return v8;
}

uint64_t sub_10013D22C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_10001C6E0(a3, 11);
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_1001F6CA8(v7);
  v8._countAndFlagsBits = 0x3D7070613FLL;
  v8._object = 0xE500000000000000;
  sub_1001F6CA8(v8);

  return v5;
}

uint64_t sub_10013D2EC()
{
  sub_10013CA74();
  sub_1000B3DE0();
  *(v0 + 24) = 0xD000000000000012;
  *(v0 + 32) = v1;

  sub_1001F77B8(64);
  v3._countAndFlagsBits = 0xD00000000000003ELL;
  v3._object = 0x8000000100228E70;
  sub_1001F6CA8(v3);
  v4._countAndFlagsBits = 0xD000000000000014;
  v4._object = 0x8000000100228C40;
  sub_1001F6CA8(v4);
  sub_10012F774();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;

  sub_10013BF90();
  sub_10013E884();
  *(v0 + 64) = xmmword_10020CD20;

  return v0;
}

uint64_t sub_10013D410(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_10013CA74();
  *(v6 + 219) = 1;
  *(v6 + 24) = xmmword_10020CCF0;

  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  sub_1001F77B8(66);
  v18._object = 0x8000000100227F60;
  v18._countAndFlagsBits = 0x1000000000000014;
  sub_1001F6CA8(v18);
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_1001F6CA8(v19);

  v20._countAndFlagsBits = 0x100000000000002CLL;
  v20._object = 0x8000000100227F80;
  sub_1001F6CA8(v20);
  sub_10012F774();
  *(v6 + 40) = v16[0];

  sub_10013BF90();
  *(v6 + 56) = 2;
  *(v6 + 64) = xmmword_10020CD00;

  *(v6 + 144) = xmmword_10020CD10;

  v15 = 1;
  v11 = *(v6 + 96);
  v16[0] = *(v6 + 80);
  v16[1] = v11;
  v17[0] = *(v6 + 112);
  *(v17 + 10) = *(v6 + 122);
  *(v6 + 80) = 0;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 513;
  sub_10004BDE8(v16, &qword_1002B4150);

  if (a6)
  {
    swift_unknownObjectRetain();
    sub_1001F77B8(25);

    v14[0] = 0x7975426F546B7361;
    v14[1] = 0xE90000000000002FLL;
    v21._countAndFlagsBits = 0x6C65636E6163;
    v21._object = 0xE600000000000000;
    sub_1001F6CA8(v21);
    sub_10013E924(29759);
    v22._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v22);

    sub_10013E924(25126);
    v23._countAndFlagsBits = a4;
    v23._object = a5;
    sub_1001F6CA8(v23);
    sub_1001B3448(0x7975426F546B7361, 0xE90000000000002FLL);

    swift_unknownObjectRelease_n();

    sub_10013E84C();
    sub_10013E8A4(3);
    *(v6 + 216) = 513;
    sub_10004BDE8(v14, &qword_1002B4150);
  }

  else
  {
  }

  return v6;
}

uint64_t sub_10013D704()
{
  sub_10013CA74();
  sub_1000B3DE0();
  sub_10013E8F0(v1);

  sub_10012F774();
  *(v0 + 40) = 0xD00000000000002DLL;
  *(v0 + 48) = 0x8000000100228D00;

  sub_10013BF90();
  *(v0 + 56) = 2;
  *(v0 + 64) = xmmword_10020EE30;

  sub_10013E7F4();
  sub_10004BDE8(v3, &qword_1002B4150);

  *(v0 + 144) = xmmword_10020CD10;

  return v0;
}

uint64_t sub_10013D828()
{
  sub_10013CA74();
  sub_10013E7D8();
  sub_10013E8D4(v2);

  sub_10013E790();
  *(v1 + 40) = 43;
  *(v1 + 48) = v0;

  sub_10013BF90();
  sub_10013E7C8();
  sub_10013E90C(xmmword_10020CD20);

  return v1;
}

uint64_t sub_10013D8D4()
{
  sub_10013CA74();
  sub_10013E7D8();
  sub_10013E8D4(v2);

  sub_10013E790();
  *(v1 + 40) = 76;
  *(v1 + 48) = v0;

  sub_10013BF90();
  sub_10013E7C8();
  sub_10013E90C(xmmword_10020CD20);

  return v1;
}

uint64_t sub_10013D980()
{
  sub_10013CA74();
  sub_1000B3DE0();
  *(v0 + 24) = 0xD00000000000001CLL;
  *(v0 + 32) = v1;

  sub_1001F77B8(52);
  v3._object = 0x8000000100228DB0;
  v3._countAndFlagsBits = 0xD000000000000018;
  sub_1001F6CA8(v3);
  v4._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v4);

  v5._countAndFlagsBits = 0xD00000000000001ALL;
  v5._object = 0x8000000100228DD0;
  sub_1001F6CA8(v5);
  sub_10012F774();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;

  sub_10013BF90();
  sub_10013E884();
  *(v0 + 64) = xmmword_10020CD20;

  return v0;
}

void *sub_10013DADC()
{
  sub_10013CA74();
  sub_10013E7D8();
  v1[3] = 0xD000000000000033;
  v1[4] = v2;

  sub_10013E790();
  v1[5] = 0xD00000000000001ELL;
  v1[6] = v0;

  sub_10013BF90();
  sub_10013E7C8();
  sub_10013E90C(xmmword_10020CD20);

  return v1;
}

uint64_t sub_10013DB94()
{
  sub_10013CA74();
  sub_10013E7D8();
  sub_10013E8D4(v2);

  sub_10013E790();
  *(v1 + 40) = 62;
  *(v1 + 48) = v0;

  sub_10013BF90();
  sub_10013E7C8();
  sub_10013E90C(xmmword_10020CD20);

  return v1;
}

uint64_t sub_10013DC40(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = sub_1001F6508();
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10, v11);
  sub_10013E8BC();
  sub_10013CD98();

  sub_1001F6418();
  if (qword_1002AC410 != -1)
  {
    swift_once();
  }

  v12 = qword_1002AE9E8;
  isa = sub_1001F6478().super.isa;
  v14 = [v12 stringFromDate:isa];

  v15 = sub_1001F6B58();
  v17 = v16;

  sub_1001F77B8(47);

  sub_1000B3DE0();
  v20 = v18;
  v21._countAndFlagsBits = v15;
  v21._object = v17;
  sub_1001F6CA8(v21);

  v22._countAndFlagsBits = 544497952;
  v22._object = 0xE400000000000000;
  sub_1001F6CA8(v22);
  v23._countAndFlagsBits = a1;
  v23._object = a2;
  sub_1001F6CA8(v23);

  v24._countAndFlagsBits = 46;
  v24._object = 0xE100000000000000;
  sub_1001F6CA8(v24);
  sub_10012F774();
  *(v4 + 40) = 0xD000000000000026;
  *(v4 + 48) = v20;

  sub_10013BF90();

  (*(v9 + 8))(v3, v7);
  return v4;
}

uint64_t sub_10013DE70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  sub_10013CA74();
  sub_1000B3DE0();
  *(v5 + 24) = 0xD000000000000020;
  *(v5 + 32) = v12;

  sub_10012F774();
  *(v5 + 40) = 0xD000000000000048;
  *(v5 + 48) = 0x8000000100227FE0;

  sub_10013BF90();
  sub_10013E884();
  *(v5 + 64) = xmmword_10020CD20;

  if (a5)
  {
    type metadata accessor for ConfirmPurchaseEngagementUIRoute();
    swift_unknownObjectRetain();

    v18._countAndFlagsBits = a3;
    v18._object = a4;
    sub_100062764(v18);

    v13 = sub_1000EFA58();
    v15 = v14;

    swift_unknownObjectRelease_n();
    sub_10013E868();
    *(v6 + 80) = 2;
    *(v6 + 88) = a3;
    *(v6 + 96) = a4;
    *(v6 + 104) = a1;
    *(v6 + 112) = a2;
    *(v6 + 120) = v13;
    *(v6 + 128) = v15;
    *(v6 + 136) = 256;
    sub_10004BDE8(v17, &qword_1002B4150);
  }

  else
  {
  }

  *(v6 + 218) = 1;
  return v6;
}

_BYTE *storeEnumTagSinglePayload for DefaultButton(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10013E11CLL);
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

_BYTE *storeEnumTagSinglePayload for DialogKind(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10013E1F0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10013E22C()
{
  result = qword_1002B6CD0;
  if (!qword_1002B6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6CD0);
  }

  return result;
}

unint64_t sub_10013E284()
{
  result = qword_1002B6CD8;
  if (!qword_1002B6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6CD8);
  }

  return result;
}

unint64_t sub_10013E2D8()
{
  result = qword_1002B6CE0;
  if (!qword_1002B6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6CE0);
  }

  return result;
}

unint64_t sub_10013E32C()
{
  result = qword_1002B6CE8;
  if (!qword_1002B6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6CE8);
  }

  return result;
}

uint64_t sub_10013E388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_10013E3DC()
{
  result = qword_1002B6D00;
  if (!qword_1002B6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D00);
  }

  return result;
}

unint64_t sub_10013E430()
{
  result = qword_1002B6D08;
  if (!qword_1002B6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D08);
  }

  return result;
}

unint64_t sub_10013E484()
{
  result = qword_1002B6D10;
  if (!qword_1002B6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D10);
  }

  return result;
}

unint64_t sub_10013E4D8()
{
  result = qword_1002B6D18;
  if (!qword_1002B6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D18);
  }

  return result;
}

unint64_t sub_10013E52C()
{
  result = qword_1002B6D20;
  if (!qword_1002B6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Dialog.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x10013E64CLL);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10013E688()
{
  result = qword_1002B6D28;
  if (!qword_1002B6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D28);
  }

  return result;
}

unint64_t sub_10013E6E0()
{
  result = qword_1002B6D30;
  if (!qword_1002B6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D30);
  }

  return result;
}

unint64_t sub_10013E738()
{
  result = qword_1002B6D38;
  if (!qword_1002B6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D38);
  }

  return result;
}

uint64_t sub_10013E790()
{

  return swift_beginAccess();
}

uint64_t sub_10013E7F4()
{
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  *(v1 + 80) = v4;
  *(v1 + 88) = v3;
  *(v1 + 96) = v2;
  *(v1 + 104) = v7;
  *(v1 + 112) = v6;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 513;
}

double sub_10013E8A4@<D0>(char a1@<W8>)
{
  *(v1 + 160) = a1;
  result = 0.0;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = v2;
  *(v1 + 208) = v3;
  return result;
}

uint64_t sub_10013E8D4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 24) = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v1 + 32) = a1;
}

uint64_t sub_10013E8F0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 24) = v1 & 0xFFFFFFFFFFFFLL | 0x1000000000000000;
  *(v2 + 32) = a1;
}

uint64_t sub_10013E90C(__n128 a1)
{
  v1[4] = a1;
}

void sub_10013E924(uint64_t a1)
{
  v2._countAndFlagsBits = a1 & 0xFFFF00000000FFFFLL | 0x3D64690000;
  v2._object = 0xE500000000000000;

  sub_1001F6CA8(v2);
}

uint64_t sub_10013E974(unsigned int *a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = *a1;
  result = sub_10000BA90(0);
  if (!__OFSUB__(v4, result))
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10013E9CC()
{
  bzero(v8, 0x90uLL);
  sub_10019EFD0();
  if (!v0)
  {
    v1 = WORD2(v8[0]);
    v2 = sub_1001F6718() & v1;
    if (v2 == sub_1001F6718())
    {
      return sub_10019F098();
    }

    sub_10013EB6C();
    swift_allocError();
    swift_willThrow();
  }

  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88);
  if (swift_dynamicCast())
  {

    v4 = v8[1];
    v5 = v9;
    if (v9 == 2)
    {
    }

    v6 = v8[0];
    sub_1000274C4();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = v4;
    *(v7 + 16) = v5;
    swift_willThrow();
  }
}

unint64_t sub_10013EB6C()
{
  result = qword_1002B6D40;
  if (!qword_1002B6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D40);
  }

  return result;
}

unint64_t sub_10013EBCC(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x746174735F627461;
      break;
    case 2:
      result = 0x695F656C646E7562;
      break;
    case 3:
      result = 0x645F6C65636E6163;
      break;
    case 4:
      result = 0x6974617269707865;
      break;
    case 5:
      result = 0x64656873696E6966;
      break;
    case 6:
    case 35:
      sub_1000881D8();
      result = v4 - 3;
      break;
    case 7:
      result = 25705;
      break;
    case 8:
      result = 0x6C616E696769726FLL;
      break;
    case 9:
      result = 0x5F746375646F7270;
      break;
    case 10:
    case 27:
      sub_1000881D8();
      result = v5 - 4;
      break;
    case 11:
      result = 0x6573616863727570;
      break;
    case 12:
    case 25:
    case 30:
      sub_1000881D8();
      result = v6 + 1;
      break;
    case 13:
      result = 0x797469746E617571;
      break;
    case 14:
      v3 = 1952543859;
      goto LABEL_19;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 1701869940;
      break;
    case 17:
      result = 0x756665725F646964;
      break;
    case 18:
      result = 0x64695F726566666FLL;
      break;
    case 19:
      sub_1000881D8();
      result = v8 - 5;
      break;
    case 20:
      result = 0x6F726665726F7473;
      break;
    case 21:
      v3 = 1667854960;
LABEL_19:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 22:
    case 34:
      sub_1000881D8();
      result = v7 - 1;
      break;
    case 23:
      result = 0x6470755F7473616CLL;
      break;
    case 24:
      result = 0x61726770755F7369;
      break;
    case 26:
      result = 0xD000000000000015;
      break;
    case 28:
    case 33:
      sub_1000881D8();
      result = v9 + 9;
      break;
    case 29:
      sub_1000881D8();
      result = v10 + 15;
      break;
    case 31:
      result = 0x735F736568737570;
      break;
    case 32:
      result = 0xD000000000000015;
      break;
    case 36:
      result = 0x65705F726566666FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10013F048()
{
  v0 = sub_1001F7F58();

  if (v0 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10013F09C(char a1)
{
  result = 0x6E65725F6F747561;
  switch(a1)
  {
    case 1:
      v3 = 1836020336;
      goto LABEL_5;
    case 2:
      v3 = 1920233065;
LABEL_5:
      result = v3 | 0x666F5F6F00000000;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10013F180@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10013F048();
  *a1 = result;
  return result;
}

unint64_t sub_10013F1B0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10013EBCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10013F1EC(uint64_t a1, void *a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v36 = v2;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = __clz(__rbit64(v5)) | (v8 << 6);
      v10 = *(*(a1 + 48) + v9);
      sub_10002F9B0(*(a1 + 56) + 32 * v9, &v41);
      v40[0] = v10;
      sub_10013F85C(v40, v38);
      v11 = v38[0];
      sub_10003708C((v38 + 8), v39);
      v12 = sub_10013EBCC(v11);
      v14 = v13;
      sub_10002F9B0(v39, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_10011108C();
      v18 = _swiftEmptyDictionarySingleton[2];
      v19 = (v17 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        break;
      }

      v21 = v16;
      v22 = v17;
      sub_1000183C4(&unk_1002BCC50);
      if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v20))
      {
        v23 = sub_10011108C();
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_22;
        }

        v21 = v23;
      }

      v5 &= v5 - 1;
      if (v22)
      {

        v25 = (_swiftEmptyDictionarySingleton[7] + 32 * v21);
        sub_100019CCC(v25);
        sub_10003708C(v38, v25);
        sub_100019CCC(v39);
        sub_10013F8CC(v40);
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v21 >> 6) + 8] |= 1 << v21;
        v26 = (_swiftEmptyDictionarySingleton[6] + 16 * v21);
        *v26 = v12;
        v26[1] = v14;
        sub_10003708C(v38, (_swiftEmptyDictionarySingleton[7] + 32 * v21));
        sub_100019CCC(v39);
        sub_10013F8CC(v40);
        v27 = _swiftEmptyDictionarySingleton[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_21;
        }

        _swiftEmptyDictionarySingleton[2] = v29;
      }

      v7 = v8;
      v2 = v36;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        v30 = objc_allocWithZone(v34);

        sub_1001DEFAC(_swiftEmptyDictionarySingleton);

        isa = sub_1001F6988().super.isa;

        v32 = [v30 initWithPropertyValues:isa onConnection:a2];

        return v32;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1001F7FC8();
  __break(1u);
  return result;
}

id sub_10013F590(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_1001F6988().super.isa;

  v6 = [v4 initWithPropertyValues:isa onConnection:a2];

  return v6;
}

id sub_10013F620(uint64_t a1, void *a2)
{
  isa = sub_1001F6988().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TransactionEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithPropertyValues:onConnection:", isa, a2);

  return v5;
}

id sub_10013F718(uint64_t a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TransactionEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithPersistentID:onConnection:", a1, a2);

  return v5;
}

id sub_10013F7AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransactionEntity();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10013F804()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransactionEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013F85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B6D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013F8CC(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B6D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for TransactionEntity.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDC)
  {
    if (a2 + 36 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 36) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 37;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v5 = v6 - 37;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TransactionEntity.Key(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDB)
  {
    v6 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
        JUMPOUT(0x10013FA88);
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
          *result = a2 + 36;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10013FAC4()
{
  result = qword_1002B6D78;
  if (!qword_1002B6D78)
  {
    sub_100019BC4(&qword_1002B6D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D78);
  }

  return result;
}

unint64_t sub_10013FB2C()
{
  result = qword_1002B6D88;
  if (!qword_1002B6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D88);
  }

  return result;
}

uint64_t sub_10013FB94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F6508();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1000183C4(&unk_1002B3450);
      v10 = *(a3 + 88);
    }

    return sub_10001C990(a1 + v10, a2, v9);
  }
}

uint64_t sub_10013FC80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001F6508();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1000183C4(&unk_1002B3450);
      v10 = *(a4 + 88);
    }

    return sub_100018460(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for CheddarTransaction()
{
  result = qword_1002B6DE8;
  if (!qword_1002B6DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013FDA0()
{
  v0 = sub_1001F6508();
  if (v1 <= 0x3F)
  {
    sub_1000AD1F8();
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_100140004(319, &qword_1002ACF10);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_100140004(319, &unk_1002B6DF8);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          sub_100140004(319, &qword_1002B4930);
          v0 = v8;
          if (v9 <= 0x3F)
          {
            sub_100140004(319, &qword_1002B4938);
            v0 = v10;
            if (v11 <= 0x3F)
            {
              sub_100140004(319, &unk_1002B4940);
              v0 = v12;
              if (v13 <= 0x3F)
              {
                sub_100140004(319, &qword_1002B4920);
                v0 = v14;
                if (v15 <= 0x3F)
                {
                  sub_100140004(319, &unk_1002ACA88);
                  v0 = v16;
                  if (v17 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_100140004(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1001F74B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CheddarTransaction.OfferPaymentMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10014011CLL);
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

_BYTE *storeEnumTagSinglePayload for CheddarTransaction.OfferType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100140220);
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

_BYTE *sub_10014026C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100140338);
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

uint64_t sub_100140370@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t *a5@<X8>)
{
  v160 = a4;
  v152 = a3;
  v155 = a2;
  v158 = sub_1001F6978();
  sub_10001A278();
  v159 = v7;
  __chkstk_darwin(v8, v9);
  sub_100023510();
  sub_100144CF8(v11 - v10);
  v165 = sub_1001F6868();
  sub_10001A278();
  v164 = v12;
  __chkstk_darwin(v13, v14);
  sub_100099484();
  v156 = v15 - v16;
  __chkstk_darwin(v17, v18);
  sub_100144CF8(&v149 - v19);
  v20 = sub_1001F6508();
  sub_10001A278();
  v167 = v21;
  __chkstk_darwin(v22, v23);
  sub_100023510();
  sub_100144CF8(v25 - v24);
  v26 = sub_1001F6578();
  sub_10001A278();
  v28 = v27;
  __chkstk_darwin(v29, v30);
  sub_100023510();
  v33 = v32 - v31;
  v34 = sub_1000183C4(&qword_1002AFA30);
  __chkstk_darwin(v34 - 8, v35);
  v37 = &v149 - v36;
  v38 = type metadata accessor for CheddarTransaction();
  sub_100144CBC((a5 + v38[8]));
  sub_100144D48((a5 + v39));
  sub_100144BD0(v40);
  sub_100144BD0(*(v41 + 140));
  sub_100144BD0(*(v42 + 144));
  sub_100144BD0(*(v43 + 148));
  sub_100144BD0(*(v44 + 152));
  sub_100144BD0(*(v45 + 156));
  sub_100144BD0(*(v46 + 160));
  sub_100144BD0(*(v47 + 164));
  sub_100144BD0(*(v48 + 168));
  v50 = a5 + *(v49 + 172);
  *v50 = 0;
  v50[8] = 1;
  sub_100144BD0(*(v49 + 176));
  sub_1000C2DBC(v37);
  v51 = sub_10001C990(v37, 1, v26);
  v162 = v26;
  if (v51)
  {
    sub_10004BDE8(v37, &qword_1002AFA30);
    v52 = 0;
    v26 = 0;
  }

  else
  {
    (*(v28 + 16))(v33, v37, v26);
    sub_10004BDE8(v37, &qword_1002AFA30);
    v53 = sub_1001F6528();
    v55 = v54;
    (*(v28 + 8))(v33, v26);
    *&v175[0] = v53;
    *(&v175[0] + 1) = v55;
    sub_10001C790();
    v52 = v175;
    sub_1001F75D8();
    sub_100087254();
  }

  v56 = (a5 + v38[25]);
  *v56 = v52;
  v56[1] = v26;
  *a5 = sub_1000BFC24();
  a5[1] = v57;
  sub_1000C5464(3);
  if ((v58 & 1) != 0 || (sub_1000BFBB0() & 1) == 0)
  {
    sub_100018460(a5 + v38[26], 1, 1, v20);
    v60 = 2;
  }

  else
  {
    v59 = v38[26];
    sub_1001F6418();
    sub_100018460(a5 + v59, 0, 1, v20);
    v60 = sub_1000BFBD0();
  }

  *(a5 + v38[27]) = v60;
  sub_1000C5464(4);
  if (v61)
  {
    v62 = a5 + v38[22];
    v63 = 1;
  }

  else
  {
    v64 = v38[22];
    sub_1001F6418();
    v62 = a5 + v64;
    v63 = 0;
  }

  sub_100018460(v62, v63, 1, v20);
  v65 = sub_1000C5388(15);
  if (v66)
  {
    sub_10001E77C(v65, v66, v38[23]);
    *(a5 + v38[32]) = sub_1000C6260() & 1;
    v67 = sub_1000C5458(25);
    if (v68)
    {
      *&v175[0] = -1;
    }

    else
    {
      *&v175[0] = v67;
    }

    v70 = sub_1001F7E28();
    sub_10001E77C(v70, v71, v38[24]);
    if (sub_1000C25B8())
    {
      *(a5 + v38[29]) = 0;
LABEL_18:
      sub_100144BD0(v38[28]);
LABEL_26:
      v76 = sub_1000C5D00();
      if (v76 == 4)
      {
        v77 = 0;
      }

      else
      {
        v77 = v76;
      }

      *(a5 + v38[30]) = 0x2010003u >> (8 * v77);
      sub_1000C5F7C();
      v78 = a5 + v38[31];
      *v78 = v79;
      v78[8] = v80;
      goto LABEL_30;
    }

    v72 = sub_1000C2770();
    if (v73)
    {
      v74 = v38[29];
      v75 = 1;
    }

    else
    {
      v72 = sub_1000C5388(28);
      if (v73)
      {
        v74 = v38[29];
        v75 = 2;
      }

      else
      {
        v72 = sub_1000C27E4();
        if (!v73)
        {
          *(a5 + v38[29]) = 4;
          goto LABEL_18;
        }

        v74 = v38[29];
        v75 = 3;
      }
    }

    *(a5 + v74) = v75;
    sub_10001E77C(v72, v73, v38[28]);
    goto LABEL_26;
  }

  *(a5 + v38[32]) = 2;
  *(a5 + v38[29]) = 4;
  sub_100144BD0(v38[28]);
  *(a5 + v38[30]) = 3;
  v69 = a5 + v38[31];
  *v69 = 0;
  v69[8] = 7;
  sub_100144BD0(v38[23]);
  sub_100144BD0(v38[24]);
LABEL_30:
  sub_1000BFDA8();
  sub_1001F6418();
  sub_1000C5464(12);
  if (v81)
  {
    v82 = sub_100144CA0(v38[9]);
    v83(v82);
  }

  else
  {
    sub_1001F6418();
  }

  sub_1000BFCB0(v175);
  v161 = v33;
  if (*(&v175[0] + 1))
  {
    v170 = v175[0];
    *(a5 + v38[18]) = v175[0];
    v171 = v176;
    v172 = v175[1];
    *(a5 + v38[19]) = v176;
    sub_1000552A0(&v170, &number);
    sub_1000552A0(&v171, &number);
    sub_1000552A0(&v172, &number);
    sub_10004BDE8(v175, &qword_1002AEDE0);
    *(a5 + v38[15]) = v172;
  }

  else
  {
    v84 = (a5 + v38[18]);
    *v84 = 5790042;
    v84[1] = 0xE300000000000000;
    v85 = (a5 + v38[19]);
    *v85 = 0x313233343536;
    v85[1] = 0xE600000000000000;
    v86 = (a5 + v38[15]);
    *v86 = 5789784;
    v86[1] = 0xE300000000000000;
  }

  v87 = 1;
  switch(sub_1000C22AC())
  {
    case 1u:
      break;
    default:
      v87 = sub_1001F7EA8();
      break;
  }

  *(a5 + v38[17]) = v87 & 1;
  sub_1001F64F8();
  v88 = sub_1000C5458(8);
  if (v89)
  {
    v88 = sub_1000C1A68();
  }

  *&number = v88;
  v90 = sub_1001F7E28();
  sub_10001E77C(v90, v91, v38[10]);
  v92 = sub_1000BFC14();
  sub_10001E77C(v92, v93, v38[12]);
  v94 = sub_100144CA0(v38[13]);
  v95(v94);
  sub_1000BFD40();
  if ((v97 & 0x100000000) != 0)
  {
    sub_1001F7418(v96, 0);
  }

  sub_100087254();
  sub_1001F7418(v98, 1000);
  *&number = sub_1001F7438();
  *&number._mantissa[2] = v99;
  *&number._mantissa[6] = v100;
  sub_1001F7418(v101, 0);
  *&result = v102;
  *&result._mantissa[2] = v103;
  *&result._mantissa[6] = v104;
  NSDecimalRound(&result, &number, 0, NSRoundDown);
  sub_1001F7428(v105);
  v107 = v106;
  v108 = [v106 longLongValue];

  *(a5 + v38[14]) = v108;
  v109 = sub_1000C2550();
  if (v109 < 0)
  {
    __break(1u);
  }

  *(a5 + v38[16]) = v109;
  v168 = sub_1000C1A68();
  v110 = sub_1001F7E28();
  sub_10001E77C(v110, v111, v38[20]);
  v112 = sub_1000C257C();
  v113 = 0xEA0000000000656CLL;
  v114 = 0x62616D75736E6F43;
  v154 = v20;
  v115 = v161;
  switch(v112)
  {
    case 1:
      v113 = 0xEE00656C62616D75;
      v114 = 0x736E6F432D6E6F4ELL;
      break;
    case 2:
      v114 = 0xD000000000000019;
      v113 = 0x80000001002274B0;
      break;
    case 3:
      v113 = 0x8000000100227490;
      v114 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  v116 = (a5 + v38[21]);
  *v116 = v114;
  v116[1] = v113;
  sub_1001F6568();
  sub_1001F6528();
  sub_100087254();
  v117 = *(v28 + 8);
  v151 = v28 + 8;
  v150 = v117;
  v117(v115, v162);
  v168 = v115;
  v169 = v108;
  sub_10001C790();
  v118 = sub_1001F75D8();
  v120 = v119;

  v153 = v118;
  v155 = v120;
  sub_1001410B4();
  sub_100087254();

  sub_100141134(v120, v108);
  sub_10014437C(&qword_1002B2568, &type metadata accessor for SHA384);
  v121 = v157;
  v122 = v158;
  sub_1001F6858();
  v123 = sub_1000999D4();
  sub_100040C70(v123, v124);
  v125 = sub_1000999D4();
  sub_1001442D0(v125, v126);
  v127 = sub_1000999D4();
  sub_10003A380(v127, v128);
  sub_1001F6848();
  (*(v159 + 8))(v121, v122);
  v129 = v156;
  v130 = sub_10012F398();
  v131(v130);
  v132 = sub_100141600(v129);
  v134 = v133;
  v135 = sub_1001F63B8(0);
  v137 = v136;
  sub_10003A380(v132, v134);
  if ((v160 & 1) != 0 || v152 != 19)
  {
    v144 = sub_1000999D4();
    sub_10003A380(v144, v145);

    v141 = v155;
    v139 = v153;
  }

  else
  {

    v138 = v161;
    sub_1001F6568();
    v139 = sub_1001F6528();
    v141 = v140;
    v142 = sub_1000999D4();
    sub_10003A380(v142, v143);

    v150(v138, v162);
  }

  (*(v164 + 8))(v163, v165);
  v146 = (*(v167 + 8))(v166, v154);
  v147 = (a5 + v38[7]);
  *v147 = v139;
  v147[1] = v141;
  v148 = (a5 + v38[6]);
  *v148 = v135;
  v148[1] = v137;
  *(a5 + v38[11]) = 0;
  return v146;
}

uint64_t sub_1001410B4()
{

  v1 = sub_1001F6DA8();
  sub_1001F6C88();
  return v1;
}

uint64_t sub_100141134(uint64_t a1, unint64_t a2)
{
  *&v44 = a1;
  *(&v44 + 1) = a2;

  sub_1000183C4(&qword_1002B6F48);
  if (swift_dynamicCast())
  {
    sub_10002DD3C(v42, &v45);
    sub_10001AE68(&v45, v46);
    sub_100144BDC();
    sub_1001F6108();
    v42[0] = v44;
    sub_100019CCC(&v45);
    goto LABEL_56;
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_10004BDE8(v42, &qword_1002B6F50);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v42[0] = a1;
    *(&v42[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v42;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1001F7858();
  }

  sub_100143DB0(v4, v5, &v45);
  v6 = *(&v45 + 1);
  v7 = v45;
  if (*(&v45 + 1) >> 60 != 15)
  {
    v42[0] = v45;
    goto LABEL_56;
  }

LABEL_9:
  *&v42[0] = sub_1001F6378();
  *(&v42[0] + 1) = v8;
  __chkstk_darwin(*&v42[0], v8);
  v9 = sub_100143ECC(sub_100144710);
  v11 = *(&v42[0] + 1) >> 62;
  v12 = v9;
  v14 = v13;
  v16 = v15;
  v17 = BYTE14(v42[0]);
  switch(*(&v42[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v18) = DWORD1(v42[0]) - LODWORD(v42[0]);
      if (__OFSUB__(DWORD1(v42[0]), v42[0]))
      {
        goto LABEL_63;
      }

      v18 = v18;
LABEL_19:
      if (v10 == v18)
      {
        goto LABEL_20;
      }

      if (v11 == 2)
      {
        v17 = *(*&v42[0] + 24);
      }

      else if (v11 == 1)
      {
        v17 = *&v42[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v20 = *(*&v42[0] + 16);
      v19 = *(*&v42[0] + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v10)
      {
        v17 = 0;
LABEL_53:
        if (v17 < v10)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        sub_1001F6358();
        goto LABEL_55;
      }

LABEL_20:
      v41 = v7;
      LOBYTE(v22) = 0;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v23 = v9 & 0xFFFFFFFFFFFFLL;
      }

      v24 = (v9 >> 59) & 1;
      if ((v14 & 0x1000000000000000) == 0)
      {
        LOBYTE(v24) = 1;
      }

      v25 = 4 << v24;
      *(&v44 + 7) = 0;
      *&v44 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v18 = BYTE14(v42[0]);
      goto LABEL_19;
  }

  while (4 * v23 != v16 >> 14)
  {
    v26 = v16;
    if ((v16 & 0xC) == v25)
    {
      v30 = sub_100144CD8();
      v26 = sub_1001EE2BC(v30, v31, v32);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v23)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      sub_1001F6CF8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v29 = sub_1001F6D38();
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      *&v45 = v12;
      *(&v45 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
      v29 = *(&v45 + v27);
    }

    else
    {
      v28 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = sub_1001F7858();
      }

      v29 = *(v28 + v27);
    }

    if ((v16 & 0xC) == v25)
    {
      v33 = sub_100144CD8();
      v16 = sub_1001EE2BC(v33, v34, v35);
      if ((v14 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v23 <= v16 >> 16)
    {
      goto LABEL_59;
    }

    sub_100144CD8();
    v16 = sub_1001F6D08();
LABEL_43:
    *(&v44 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_58;
    }

    if (v22 == 14)
    {
      sub_100144D34();
      sub_1001F6388();
      LOBYTE(v22) = 0;
    }
  }

  if (!v22)
  {

    sub_10003A36C(v41, v6);
    goto LABEL_56;
  }

  sub_100144D34();
  sub_1001F6388();
  sub_10003A36C(v41, v6);
LABEL_55:

LABEL_56:
  v36 = sub_10012F398();
  sub_100040C70(v36, v37);

  v38 = sub_10012F398();
  sub_10003A380(v38, v39);
  return sub_10012F398();
}

uint64_t sub_100141600(uint64_t a1)
{
  v2 = sub_1001F6868();
  v7 = v2;
  v8 = sub_10014437C(&qword_1002B6F40, &type metadata accessor for SHA384Digest);
  v3 = sub_1000629FC(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_10001AE68(v6, v7);
  sub_100144BDC();
  sub_1001F6108();
  sub_100019CCC(v6);
  (*(v4 + 8))(a1, v2);
  return sub_10012F398();
}

uint64_t sub_10014172C(uint64_t a1)
{
  v7 = sub_1000183C4(&qword_1002B6F58);
  v8 = sub_10014478C();
  v6[0] = a1;
  v2 = sub_10001AE68(v6, v7);
  sub_100144258(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_100019CCC(v6);
  return v3;
}

uint64_t sub_1001417F4(char a1)
{
  if (a1)
  {
    return 0x535F594C494D4146;
  }

  else
  {
    return 0x4553414843525550;
  }
}

uint64_t sub_100141848(char a1)
{
  if (a1)
  {
    return 0x4C4157454E4552;
  }

  else
  {
    return 0x4553414843525550;
  }
}

uint64_t sub_100141880(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C310;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001418CC(char a1)
{
  if (!a1)
  {
    return 0x4952545F45455246;
  }

  if (a1 == 1)
  {
    return 0x595F53415F594150;
  }

  return 0x465F50555F594150;
}

uint64_t sub_100141960@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_10027C270;
  result = sub_100047D7C(*a1, *(a1 + 8), v3);
  *a2 = result;
  return result;
}

uint64_t sub_100141998()
{
  v1 = sub_100056690();
  result = sub_1001417F4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_100141A74()
{
  result = qword_1002B6EC8;
  if (!qword_1002B6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6EC8);
  }

  return result;
}

uint64_t sub_100141AC8()
{
  v1 = sub_100056690();
  result = sub_1000B4D70(v1);
  *v0 = result;
  return result;
}

uint64_t sub_100141BC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_10027C2C0;
  result = sub_100047D7C(*a1, *(a1 + 8), v3);
  *a2 = result;
  return result;
}

uint64_t sub_100141BFC()
{
  v1 = sub_100056690();
  result = sub_100141848(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_100141CD8()
{
  result = qword_1002B6ED0;
  if (!qword_1002B6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6ED0);
  }

  return result;
}

unint64_t sub_100141D30()
{
  result = qword_1002B6ED8;
  if (!qword_1002B6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6ED8);
  }

  return result;
}

uint64_t sub_100141DA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100141880(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100141DD8()
{
  v1 = sub_100056690();
  result = sub_1001418CC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_100141EB4()
{
  result = qword_1002B6EE0;
  if (!qword_1002B6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6EE0);
  }

  return result;
}

uint64_t sub_100141F08(uint64_t a1)
{
  result = sub_10014437C(&qword_1002AF1D0, type metadata accessor for CheddarTransaction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100141F60()
{
  v0 = sub_1001F7F58();

  if (v0 >= 0x29)
  {
    return 41;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100141FC0(char a1)
{
  result = 0x6843746E756F6D61;
  switch(a1)
  {
    case 1:
      return 0x756F636341707061;
    case 2:
    case 31:
      return 0xD000000000000010;
    case 3:
      return 0x6449656C646E7562;
    case 4:
      return 0x6F43656772616863;
    case 5:
      return 0x614464656E676973;
    case 6:
    case 25:
      return 0x79636E6572727563;
    case 7:
      v4 = 0x6D6F74737563;
      goto LABEL_31;
    case 8:
    case 20:
    case 27:
    case 40:
      return 0xD000000000000012;
    case 9:
      return 0xD000000000000017;
    case 10:
      return 0x6D6E6F7269766E65;
    case 11:
      return 0x6574616D69747365;
    case 12:
      return 0x4473657269707865;
    case 13:
      return 0x6461726770557369;
    case 14:
      return 0xD000000000000014;
    case 15:
      return 0xD000000000000015;
    case 16:
      return 0x656449726566666FLL;
    case 17:
      return 0x707954726566666FLL;
    case 18:
      return 0xD000000000000011;
    case 19:
      return 0x726550726566666FLL;
    case 21:
      return 0xD000000000000011;
    case 22:
      return 0xD000000000000011;
    case 23:
      return 0x49746375646F7270;
    case 24:
      return 0x6563697270;
    case 26:
      return 0x6573616863727570;
    case 28:
      return 0x797469746E617571;
    case 29:
      return 0xD000000000000011;
    case 30:
      return 0x697461636F766572;
    case 32:
    case 33:
      return 0x6F726665726F7473;
    case 34:
      return 0xD00000000000001BLL;
    case 35:
      v3 = 0x646F43786174;
      goto LABEL_6;
    case 36:
      v3 = 0x746152786174;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 37:
      result = 0x746361736E617274;
      break;
    case 38:
      result = 1701869940;
      break;
    case 39:
      v4 = 0x64724F626577;
LABEL_31:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001424F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100141F60();
  *a1 = result;
  return result;
}

uint64_t sub_100142520()
{
  v1 = sub_100056690();
  result = sub_100141FC0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100142550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100141FB4();
  *a1 = result;
  return result;
}

uint64_t sub_100142578@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOBSDSocket.OptionLevel.ipv6.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001425A0(uint64_t a1)
{
  v2 = sub_1001439FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001425DC(uint64_t a1)
{
  v2 = sub_1001439FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100142618(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B6F08);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v18 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_1001439FC();
  sub_1001F8198();
  v12 = type metadata accessor for CheddarTransaction();
  sub_10001E770(v12[34]);
  LOBYTE(v18) = 0;
  sub_1001F7D18();
  if (!v2)
  {
    sub_10001E770(v12[25]);
    sub_100144A88(1);
    sub_1001F7D18();
    sub_10001E770(v12[33]);
    sub_100144A88(2);
    sub_1001F7D88();
    sub_100144A88(3);
    sub_1001F7D88();
    sub_10001E770(v12[35]);
    sub_100144A88(4);
    sub_1001F7D18();
    LOBYTE(v18) = 5;
    sub_1001F6508();
    sub_100144BF4();
    sub_10014437C(v13, v14);
    sub_100144B34();
    sub_1001F7DC8();
    sub_10001E770(v12[36]);
    sub_100144A88(6);
    sub_1001F7D18();
    sub_10001E770(v12[37]);
    sub_100144A88(7);
    sub_1001F7D18();
    sub_10001E770(v12[6]);
    sub_100144A88(8);
    sub_1001F7D88();
    sub_10001E770(v12[7]);
    sub_100144A88(9);
    sub_1001F7D88();
    sub_10001E770(v12[8]);
    sub_100144A88(10);
    sub_1001F7D88();
    sub_10001E770(v12[38]);
    sub_100144A88(11);
    sub_1001F7D18();
    LOBYTE(v18) = 12;
    sub_100144B34();
    sub_1001F7D58();
    sub_100144C94(13);
    sub_100144B98();
    sub_1001F7D28();
    LOBYTE(v18) = 14;
    sub_100144B34();
    sub_1001F7DC8();
    sub_10001E770(v12[10]);
    sub_100144A88(15);
    sub_1001F7D88();
    sub_10001E770(v12[28]);
    sub_100144A88(16);
    sub_1001F7D18();
    sub_100144D08(v12[29]);
    v20 = 17;
    sub_1001372B0();
    sub_100144B04();
    sub_1001F7D58();
    sub_100144D08(v12[30]);
    v20 = 18;
    sub_100137304();
    sub_100144B04();
    sub_1001F7D58();
    v15 = (v3 + v12[31]);
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    v18 = v16;
    v19 = v15;
    v20 = 19;
    sub_100137358();
    sub_100144B04();
    sub_1001F7D58();
    sub_100144D08(v12[11]);
    v20 = 20;
    sub_100143BB8();
    sub_100144B04();
    sub_1001F7DC8();
    sub_10001E770(v12[39]);
    sub_100144A88(21);
    sub_1001F7D18();
    sub_10001E770(v12[40]);
    sub_100144A88(22);
    sub_1001F7D18();
    sub_10001E770(v12[12]);
    sub_100144A88(23);
    sub_1001F7D88();
    sub_100144C94(24);
    sub_100144B98();
    sub_1001F7DD8();
    sub_10001E770(v12[15]);
    sub_100144A88(25);
    sub_1001F7D88();
    LOBYTE(v18) = 26;
    sub_100144B34();
    sub_1001F7DC8();
    sub_10001E770(v12[41]);
    sub_100144A88(27);
    sub_1001F7D18();
    sub_100144C94(28);
    sub_100144B98();
    sub_1001F7DB8();
    sub_100144D08(v12[17]);
    v20 = 29;
    sub_100143C0C();
    sub_100144B04();
    sub_1001F7DC8();
    LOBYTE(v18) = 30;
    sub_100144B34();
    sub_1001F7D58();
    sub_100144D08(v12[27]);
    v20 = 31;
    sub_10005AE08();
    sub_100144B04();
    sub_1001F7D58();
    sub_10001E770(v12[18]);
    sub_100144A88(32);
    sub_1001F7D88();
    sub_10001E770(v12[19]);
    sub_100144A88(33);
    sub_1001F7D88();
    sub_10001E770(v12[23]);
    sub_100144A88(34);
    sub_1001F7D18();
    sub_10001E770(v12[42]);
    sub_100144A88(35);
    sub_1001F7D18();
    sub_100144A88(36);
    sub_1001F7D38();
    sub_10001E770(v12[20]);
    sub_100144A88(37);
    sub_1001F7D88();
    sub_10001E770(v12[21]);
    sub_100144A88(38);
    sub_1001F7D88();
    sub_10001E770(v12[44]);
    sub_100144A88(39);
    sub_1001F7D18();
    sub_10001E770(v12[24]);
    sub_100144A88(40);
    sub_1001F7D18();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_100142CA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v3 = sub_1000183C4(&unk_1002B3450);
  __chkstk_darwin(v3 - 8, v4);
  sub_100099484();
  v134 = v5 - v6;
  __chkstk_darwin(v7, v8);
  v10 = &v129[-v9];
  sub_1001F6508();
  sub_10001A278();
  v143 = v11;
  v144 = v12;
  __chkstk_darwin(v11, v13);
  sub_100099484();
  v16 = v14 - v15;
  v19 = __chkstk_darwin(v17, v18);
  v21 = &v129[-v20];
  __chkstk_darwin(v19, v22);
  v24 = &v129[-v23];
  sub_1000183C4(&qword_1002B6EE8);
  sub_10001A278();
  v136 = v26;
  v137 = v25;
  __chkstk_darwin(v25, v27);
  v29 = &v129[-v28];
  v30 = type metadata accessor for CheddarTransaction();
  __chkstk_darwin(v30, v31);
  sub_100023510();
  sub_100144CBC((v33 - v32 + *(v34 + 32)));
  sub_100144D48((v36 + v35));
  sub_100144C0C(v37);
  sub_100144C0C(*(v38 + 140));
  sub_100144C0C(*(v39 + 144));
  sub_100144C0C(*(v40 + 148));
  sub_100144C0C(*(v41 + 152));
  sub_100144C0C(*(v42 + 156));
  sub_100144C0C(*(v43 + 160));
  sub_100144C0C(*(v44 + 164));
  sub_100144C0C(*(v45 + 168));
  v48 = v47 + v46[43];
  *v48 = 0;
  *(v48 + 8) = 1;
  v141 = v47;
  v142 = v46;
  sub_100144C0C(v46[44]);
  v49 = a1[3];
  v139 = a1;
  sub_10001AE68(a1, v49);
  sub_1001439FC();
  v138 = v29;
  v50 = v140;
  sub_1001F8178();
  if (v50)
  {
    sub_100144AC0();
    LODWORD(v133) = 0;
    LODWORD(v132) = 0;
    sub_100144C18();
    v53 = v141;
    v54 = v142;
    v140 = v50;
    result = sub_100019CCC(v139);
    LODWORD(v131) = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = v143;
    if (!v24)
    {
      if (!v130)
      {
        goto LABEL_20;
      }

LABEL_5:
      result = sub_10001E800();
      if (v147)
      {
        goto LABEL_21;
      }

LABEL_6:
      if (!v134)
      {
        goto LABEL_22;
      }

LABEL_7:
      result = (*(v144 + 8))(v53 + v54[13], v59);
      if (v135)
      {
        goto LABEL_23;
      }

LABEL_8:
      if (!v137)
      {
        goto LABEL_24;
      }

LABEL_9:
      result = sub_10001E800();
      if (v58)
      {
        goto LABEL_25;
      }

LABEL_10:
      if (!v57)
      {
        goto LABEL_26;
      }

LABEL_11:
      result = sub_10001E800();
      if (v56)
      {
        goto LABEL_27;
      }

LABEL_12:
      if (!v133)
      {
        goto LABEL_28;
      }

LABEL_13:
      result = sub_10004BDE8(v53 + v54[22], &unk_1002B3450);
      if (v131)
      {
        goto LABEL_29;
      }

LABEL_14:
      if (!v132)
      {
        goto LABEL_30;
      }

LABEL_15:
      result = sub_10001E800();
      if (v138)
      {
        goto LABEL_31;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v51 = v10;
    v140 = v21;
    v133 = v16;
    LOBYTE(v145) = 1;
    v52 = sub_1001F7C08();
    v60 = v141;
    v61 = v142;
    sub_10001E77C(v52, v62, v142[25]);
    *v60 = sub_100144D68(3);
    v60[1] = v63;
    LOBYTE(v145) = 5;
    sub_100144BF4();
    v66 = sub_10014437C(v64, v65);
    v67 = v143;
    sub_1001F7CB8();
    v132 = v66;
    v68 = v67;
    v69 = *(v144 + 32);
    v69(v60 + v61[5], v24, v68);
    v70 = sub_100144D68(8);
    v131 = v69;
    sub_10001E77C(v70, v71, v61[6]);
    sub_100144BA8(9);
    v72 = sub_1001F7C78();
    sub_10001E77C(v72, v73, v61[7]);
    sub_100144C94(12);
    sub_100144C54();
    sub_1001F7C48();
    sub_100136810(v51, v60 + v61[22]);
    sub_100144BA8(13);
    *(v60 + v61[32]) = sub_1001F7C18();
    sub_100144C94(14);
    v74 = v140;
    sub_100144C54();
    sub_1001F7CB8();
    v131(v60 + v61[9], v74, v143);
    sub_100144BA8(15);
    v75 = sub_1001F7C78();
    sub_10001E77C(v75, v76, v61[10]);
    sub_100144BA8(16);
    v77 = sub_1001F7C08();
    sub_100144C48(v77, v78, v142[28]);
    v148 = 17;
    sub_1001374F0();
    sub_100144B1C();
    sub_1001F7C48();
    sub_100144D14();
    *(v81 + *(v79 + 116)) = v80;
    v148 = 18;
    sub_100137544();
    sub_100144B1C();
    sub_1001F7C48();
    sub_100144D14();
    *(v84 + *(v82 + 120)) = v83;
    v148 = 19;
    sub_100137598();
    sub_100144B1C();
    sub_1001F7C48();
    v85 = v146;
    v86 = v141 + v142[31];
    *v86 = v145;
    v86[8] = v85;
    v148 = 20;
    sub_100143A50();
    sub_100144B1C();
    sub_1001F7CB8();
    sub_100144D14();
    *(v89 + *(v87 + 44)) = v88;
    sub_100144B50(23);
    v90 = sub_1001F7C78();
    sub_100144C48(v90, v91, v142[12]);
    sub_100144B50(24);
    *(v141 + v142[14]) = sub_1001F7CC8();
    sub_100144B50(25);
    v92 = sub_1001F7C78();
    sub_100144C48(v92, v93, v142[15]);
    sub_100144C94(26);
    sub_1001F7CB8();
    v131(v141 + v142[13], v133, v143);
    sub_100144B50(28);
    *(v141 + v142[16]) = sub_1001F7CA8();
    v148 = 29;
    sub_100143AA4();
    sub_100144B1C();
    sub_1001F7CB8();
    sub_100144D14();
    *(v96 + *(v94 + 68)) = v95;
    sub_100144C94(30);
    sub_1001F7C48();
    sub_100136810(v134, v141 + v142[26]);
    v148 = 31;
    sub_10005ADB4();
    sub_100144B1C();
    sub_1001F7C48();
    sub_100144D14();
    *(v99 + *(v97 + 108)) = v98;
    sub_100144B50(32);
    v100 = sub_1001F7C78();
    sub_100144C48(v100, v101, v142[18]);
    sub_100144B50(33);
    v102 = sub_1001F7C78();
    sub_100144C48(v102, v103, v142[19]);
    sub_100144B50(34);
    v104 = sub_1001F7C08();
    LODWORD(v131) = 1;
    v140 = 0;
    sub_100144C48(v104, v105, v142[23]);
    sub_100144B88(37);
    v106 = v140;
    v107 = sub_1001F7C78();
    v140 = v106;
    if (v106)
    {
      v109 = sub_100144B64();
      v110(v109);
      v57 = 0;
      v56 = 0;
    }

    else
    {
      sub_100144C48(v107, v108, v142[20]);
      sub_100144B88(38);
      v113 = v140;
      v114 = sub_1001F7C78();
      v140 = v113;
      if (v113)
      {
        v116 = sub_100144B64();
        v117(v116);
        v56 = 0;
        v57 = 1;
      }

      else
      {
        sub_100144C48(v114, v115, v142[21]);
        sub_100144B88(40);
        v118 = v140;
        v119 = sub_1001F7C08();
        v140 = v118;
        if (!v118)
        {
          v123 = v119;
          v124 = v120;
          v125 = sub_100144B64();
          v126(v125);
          v127 = v141;
          v128 = (v141 + v142[24]);
          *v128 = v123;
          v128[1] = v124;
          sub_100143AF8(v127, v135);
          sub_100019CCC(v139);
          return sub_100143B5C(v127);
        }

        v121 = sub_100144B64();
        v122(v121);
        v57 = 1;
        v56 = 1;
      }
    }

    sub_100019CCC(v139);
    v130 = 1;
    sub_100144CE8(1);
    LODWORD(v137) = v111;
    v58 = 1;
    sub_100144D5C(v111);
    LODWORD(v138) = v112;
    LODWORD(v136) = v112;
    v53 = v141;
    v54 = v142;

    v59 = v143;
    (*(v144 + 8))(v53 + v54[5], v143);
    sub_10001E800();
    sub_10001E800();
  }

  result = (*(v144 + 8))(v53 + v54[9], v59);
  if (v130)
  {
    goto LABEL_5;
  }

LABEL_20:
  if (!v147)
  {
    goto LABEL_6;
  }

LABEL_21:
  result = sub_10001E800();
  if (v134)
  {
    goto LABEL_7;
  }

LABEL_22:
  if (!v135)
  {
    goto LABEL_8;
  }

LABEL_23:
  result = sub_10001E800();
  if (v137)
  {
    goto LABEL_9;
  }

LABEL_24:
  if (!v58)
  {
    goto LABEL_10;
  }

LABEL_25:
  result = sub_10001E800();
  if (v57)
  {
    goto LABEL_11;
  }

LABEL_26:
  if (!v56)
  {
    goto LABEL_12;
  }

LABEL_27:
  result = sub_10001E800();
  if (v133)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (!v131)
  {
    goto LABEL_14;
  }

LABEL_29:
  result = sub_10001E800();
  if (v132)
  {
    goto LABEL_15;
  }

LABEL_30:
  if (v138)
  {
LABEL_31:
    result = sub_10004BDE8(v53 + v54[26], &unk_1002B3450);
    if ((v136 & 1) == 0)
    {
      return result;
    }

    return sub_10001E800();
  }

LABEL_16:
  if (!v136)
  {
    return result;
  }

  return sub_10001E800();
}

unint64_t sub_1001439FC()
{
  result = qword_1002B6EF0;
  if (!qword_1002B6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6EF0);
  }

  return result;
}

unint64_t sub_100143A50()
{
  result = qword_1002B6EF8;
  if (!qword_1002B6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6EF8);
  }

  return result;
}

unint64_t sub_100143AA4()
{
  result = qword_1002B6F00;
  if (!qword_1002B6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F00);
  }

  return result;
}

uint64_t sub_100143AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CheddarTransaction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100143B5C(uint64_t a1)
{
  v2 = type metadata accessor for CheddarTransaction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100143BB8()
{
  result = qword_1002B6F10;
  if (!qword_1002B6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F10);
  }

  return result;
}

unint64_t sub_100143C0C()
{
  result = qword_1002B6F18;
  if (!qword_1002B6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F18);
  }

  return result;
}

unint64_t sub_100143C60()
{
  result = qword_1002B6F20;
  if (!qword_1002B6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F20);
  }

  return result;
}

unint64_t sub_100143CB4()
{
  result = qword_1002B6F28;
  if (!qword_1002B6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F28);
  }

  return result;
}

unint64_t sub_100143D08()
{
  result = qword_1002B6F30;
  if (!qword_1002B6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F30);
  }

  return result;
}

unint64_t sub_100143D5C()
{
  result = qword_1002B6F38;
  if (!qword_1002B6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F38);
  }

  return result;
}

uint64_t sub_100143DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1001F6298();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1001F6088();
      swift_allocObject();
      v8 = sub_1001F6048();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1001F6338();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_100143E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_10014440C(sub_10014476C, v5, a1, a2);
}

uint64_t sub_100143ECC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v9 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10003A380(v6, v5);
      *v4 = xmmword_10020F550;
      sub_10003A380(0, 0xC000000000000000);
      v10 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v10 < v6)
      {
        goto LABEL_23;
      }

      v11 = sub_1001F6058();
      if (v11)
      {
        v3 = v11;
        if (__OFSUB__(v6, sub_1001F6078()))
        {
          goto LABEL_24;
        }
      }

      sub_1001F6088();
      swift_allocObject();
      v12 = sub_1001F6038();

      v9 = v12;
LABEL_16:
      if (v10 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      sub_100144470(v6, v6 >> 32, a1);
      sub_100144D20();

      v8 = v9 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10003A380(v6, v5);
      v15 = v6;
      v16 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_10020F550;
      sub_10003A380(0, 0xC000000000000000);
      sub_1001F62A8();
      v6 = v15;
      sub_100144470(*(v15 + 16), *(v15 + 24), a1);
      if (v2)
      {
        v8 = v16 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v8;
      }

      else
      {
        sub_100144D20();
        v8 = v16 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v8;
      }

      return v3;
    case 3uLL:
      memset(v17, 0, 15);
      a1(&v15, v17, v17);
      if (!v2)
      {
        return v15;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_10003A380(v6, v5);
      v17[0] = v6;
      LOWORD(v17[1]) = v5;
      BYTE2(v17[1]) = BYTE2(v5);
      BYTE3(v17[1]) = BYTE3(v5);
      BYTE4(v17[1]) = BYTE4(v5);
      BYTE5(v17[1]) = BYTE5(v5);
      BYTE6(v17[1]) = BYTE6(v5);
      a1(&v15, v17, v17 + BYTE6(v5));
      if (!v2)
      {
        v3 = v15;
      }

      sub_100144C74();
      return v3;
  }
}

uint64_t sub_100144258@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1001F6298();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = sub_1001F62B8();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = sub_1001F62E8();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1001442D0(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v6;
LABEL_7:
      result = sub_1001445F8(a1, v4);
      if (v2)
      {
LABEL_8:

        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x10014436CLL);
      }

      return result;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      goto LABEL_7;
    default:
      result = sub_100144524();
      if (!v2)
      {
        return result;
      }

      goto LABEL_8;
  }
}

uint64_t sub_10014437C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001443C4(uint64_t result)
{
  if (result)
  {
    result = sub_1001F77C8();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10014440C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_100144470(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1001F6058();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1001F6078();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1001F6068();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100144524()
{
  sub_1001F6978();
  sub_10014437C(&qword_1002B2568, &type metadata accessor for SHA384);
  return sub_1001F6838();
}

uint64_t sub_1001445F8(uint64_t a1, uint64_t a2)
{
  result = sub_1001F6058();
  if (!result || (result = sub_1001F6078(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1001F6068();
      sub_1001F6978();
      sub_10014437C(&qword_1002B2568, &type metadata accessor for SHA384);
      return sub_1001F6838();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001446D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_100143E78(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_10014472C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001443C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_10014478C()
{
  result = qword_1002B6F60;
  if (!qword_1002B6F60)
  {
    sub_100019BC4(&qword_1002B6F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CheddarTransaction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD8)
  {
    if (a2 + 40 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 40) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 41;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x29;
  v5 = v6 - 41;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CheddarTransaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 40) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD7)
  {
    v6 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
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
        JUMPOUT(0x100144944);
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
          *result = a2 + 40;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100144980()
{
  result = qword_1002B6F68;
  if (!qword_1002B6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F68);
  }

  return result;
}

unint64_t sub_1001449D8()
{
  result = qword_1002B6F70;
  if (!qword_1002B6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F70);
  }

  return result;
}

unint64_t sub_100144A30()
{
  result = qword_1002B6F78;
  if (!qword_1002B6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F78);
  }

  return result;
}

void sub_100144AC0()
{
  *(v0 - 212) = 0;
  *(v0 - 72) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 160) = 0;
}

void sub_100144AF0()
{
  *(v0 - 72) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 160) = 0;
}

void sub_100144BC0()
{
  *(v0 - 192) = 0;
  *(v0 - 152) = 0;
  *(v0 - 168) = 0;
}

void sub_100144BD0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void sub_100144C0C(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_100144C48@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void sub_100144C74()
{
  v2 = *(v1 - 96) | ((*(v1 - 92) | (*(v1 - 90) << 16)) << 32);
  *v0 = *(v1 - 104);
  v0[1] = v2;
}

void sub_100144CE8(int a1@<W8>)
{
  *(v1 - 72) = a1;
  *(v1 - 184) = a1;
  *(v1 - 176) = a1;
}

uint64_t sub_100144D68@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_1001F7C78();
}

unint64_t sub_100144D8C()
{
  result = qword_1002B6F80;
  if (!qword_1002B6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F80);
  }

  return result;
}

void sub_100144DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v29 = sub_10013B560(a1);
  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  v24 = a5;
  v26 = a5 >> 1;
  while (1)
  {
    if (v29 == v13)
    {
      swift_unknownObjectRelease();
      sub_10005E2F4(a7, a8);
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_1001F7808();
    }

    else
    {
      if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }
    }

    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v26 < a6)
    {
      goto LABEL_24;
    }

    if (a6 < a4)
    {
      goto LABEL_25;
    }

    v15 = *a9;
    swift_unknownObjectRetain();

    v16 = sub_100145C18(a2, a3, a6, v24, a7, a8, v15);

    swift_unknownObjectRelease();

    v17 = *(v16 + 16);
    v18 = v14[2];
    if (__OFADD__(v18, v17))
    {
      goto LABEL_26;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v18 + v17 > v14[3] >> 1)
    {
      sub_100032AF8();
      v14 = v19;
    }

    if (*(v16 + 16))
    {
      if ((v14[3] >> 1) - v14[2] < v17)
      {
        goto LABEL_28;
      }

      sub_1000183C4(&qword_1002ADC68);
      swift_arrayInitWithCopy();

      if (v17)
      {
        v20 = v14[2];
        v21 = __OFADD__(v20, v17);
        v22 = v20 + v17;
        if (v21)
        {
          goto LABEL_29;
        }

        v14[2] = v22;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_27;
      }
    }

    ++v13;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

_OWORD *sub_100145028(uint64_t a1, char a2)
{
  if (*(a1 + 24))
  {
    sub_10003708C(a1, v12);
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    result = sub_1001E5BCC();
    *v2 = v10;
  }

  else
  {
    sub_10004BDE8(a1, &qword_1002B34A0);
    v5 = sub_1001110F0(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v9 = *(*v2 + 24);
      sub_1000183C4(&qword_1002B70E0);
      sub_1001F7A98(isUniquelyReferenced_nonNull_native, v9);
      sub_10003708C((*(v11 + 56) + 32 * v7), v12);
      sub_100098F08();
      sub_1001F7AB8();
      *v2 = v11;
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    return sub_10004BDE8(v12, &qword_1002B34A0);
  }

  return result;
}

uint64_t sub_100145170(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100103BD8(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1001E6490();
    result = sub_10005E2F4(a2, a3);
    *v3 = v7;
  }

  else
  {
    sub_10004BDE8(a1, &qword_1002B4130);
    sub_1001EB37C(v8);
    sub_10005E2F4(a2, a3);
    return sub_10004BDE8(v8, &qword_1002B4130);
  }

  return result;
}

uint64_t sub_10014524C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000183C4(&qword_1002B70B0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v41 - v6;
  v8 = sub_1001F6028();
  sub_10001A278();
  v10 = v9;
  __chkstk_darwin(v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];

  sub_1001F6018();

  if (sub_10001C990(v7, 1, v8) == 1)
  {
    sub_10004BDE8(v7, &qword_1002B70B0);
    sub_1000B738C(0x6C727520646142, 0xE700000000000000, 6, &aBlock);
    v43 = aBlock;
    v44 = *v46;
    v16 = *&v46[16] | ((*&v46[20] | (v46[22] << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    result = sub_1001479EC(v17, 21);
    v22 = _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v10 + 32))(v14, v7, v8);
    *&aBlock = sub_1001F6008();
    *(&aBlock + 1) = v23;
    v51 = 47;
    v52 = 0xE100000000000000;
    sub_10001C790();
    v24 = sub_1001F75B8();

    v25 = sub_1000C46A8(v24);
    v27 = v26;

    if (!v27)
    {
      v25 = sub_1001F6008();
      v27 = v28;
    }

    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v29 = sub_1001F6688();
    sub_100019C94(v29, qword_1002E6180);
    sub_1000593F4(a1, &aBlock);

    v30 = sub_1001F6668();
    v31 = sub_1001F7288();
    sub_1000402B8(a1);

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *&v44 = v10;
      v33 = v32;
      v42 = swift_slowAlloc();
      *&v43 = v14;
      *&aBlock = v42;
      *v33 = 136446466;
      v34 = HTTPMethod.rawValue.getter(*(v15 + 16), *(v15 + 24));
      v36 = sub_1000E4544(v34, v35, &aBlock);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_1000E4544(v25, v27, &aBlock);
      _os_log_impl(&_mh_execute_header, v30, v31, "Request received: Method: %{public}s Endpoint: /%{public}s", v33, 0x16u);
      swift_arrayDestroy();
      v14 = v43;

      v10 = v44;
    }

    v37 = swift_allocObject();
    v37[2] = v25;
    v37[3] = v27;
    memcpy(v37 + 4, a1, 0x68uLL);
    sub_1000593F4(a1, &aBlock);
    v38 = sub_1001F6B48();
    v39 = swift_allocObject();
    *(v39 + 16) = sub_100146A3C;
    *(v39 + 24) = v37;
    *&v46[16] = sub_1000ACC74;
    *&v47 = v39;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *v46 = sub_100146934;
    *&v46[8] = &unk_10028D720;
    v40 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v40);

    if (qword_1002AC498 != -1)
    {
      swift_once();
    }

    sub_100145890(a1, &aBlock);

    (*(v10 + 8))(v14, v8);
    v20 = v47;
    v21 = *&v46[8];
    v16 = v48 | ((v49 | (v50 << 16)) << 32);
    v22 = *(&aBlock + 1);
    result = aBlock;
    v19 = v46[0];
  }

  *a2 = result;
  *(a2 + 8) = v22;
  *(a2 + 16) = v19;
  *(a2 + 24) = v21;
  *(a2 + 40) = v20;
  *(a2 + 56) = v16;
  *(a2 + 62) = BYTE6(v16);
  *(a2 + 60) = WORD2(v16);
  return result;
}

uint64_t sub_1001457FC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  sub_1000183C4(&qword_1002BCC90);
  sub_100146A98();
  *(v3 + 40) = sub_1001F69B8();
  type metadata accessor for Router.Node();
  *(v3 + 48) = sub_1001F69B8();
  *(v3 + 56) = _swiftEmptyArrayStorage;
  return v3;
}

uint64_t sub_100145890@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000183C4(&qword_1002ACE98);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v32 - v6;
  v8 = a1[4];

  sub_1001F6258();

  v9 = sub_1001F6288();
  if (sub_10001C990(v7, 1, v9) == 1)
  {
    sub_10004BDE8(v7, &qword_1002ACE98);
    v10 = _swiftEmptyArrayStorage;
  }

  else
  {
    v10 = sub_1001F61E8();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v11 = sub_100146B84(v10, 0);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(v8 + 16);
  v19 = *(v8 + 24);
  sub_10005E2E0(v18, v19);
  v20 = sub_1001F69B8();
  v21 = sub_100145C18(v11, v13, v15, v17, v18, v19, v20);

  sub_10005E2F4(v18, v19);
  swift_unknownObjectRelease();
  sub_1000887FC(v21, &v42);

  if (v43)
  {
    v22 = v44;
    sub_100103BD8(&v42, v45);
    v23 = v46;
    v24 = v47;
    sub_10001AE68(v45, v46);
    v48 = a1[12];
    sub_1000593F4(a1, __dst);
    sub_10004BDE8(&v48, &qword_1002ACB78);
    memcpy(v40, a1, sizeof(v40));
    memcpy(__dst, a1, sizeof(__dst));
    v50 = v22;
    v41 = v22;
    sub_1000593F4(__dst, v33);
    sub_1000402B8(v40);
    (*(v24 + 24))(v33, __dst, v23, v24);
    sub_1000402B8(__dst);
    sub_100019CCC(v45);
    v25 = v36;
    v26 = v35;
    v27 = v37 | ((v38 | (v39 << 16)) << 32);
    result = v33[0];
    v29 = v33[1];
    v30 = v34;
  }

  else
  {
    sub_10004BDE8(&v42, &qword_1002B70D8);
    sub_1000B738C(0x6E756F6620746F4ELL, 0xE900000000000064, 6, __dst);
    v32[0] = __dst[0];
    v32[1] = __dst[1];
    v27 = LODWORD(__dst[2]) | ((WORD2(__dst[2]) | (BYTE6(__dst[2]) << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    result = sub_1001479EC(v31, 25);
    v29 = _swiftEmptyArrayStorage;
  }

  *a2 = result;
  *(a2 + 8) = v29;
  *(a2 + 16) = v30;
  *(a2 + 24) = v26;
  *(a2 + 40) = v25;
  *(a2 + 56) = v27;
  *(a2 + 62) = BYTE6(v27);
  *(a2 + 60) = WORD2(v27);
  return result;
}

void *sub_100145C18(void *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = v7;
  v12 = a6;
  v50 = a7;
  v46 = result;
  if (*(v10 + 32) == 1)
  {
    if (v8 <= a3)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v42 = *(v10 + 16);
    v44 = *(v10 + 24);
    v17 = (a2 + 16 * a3);
    v19 = *v17;
    v20 = v17[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = a7;
    v22 = v20;
    v12 = a6;
    result = sub_1001E5CAC(v19, v22, v42, v44, isUniquelyReferenced_nonNull_native);
    v50 = a7;
  }

  else
  {
  }

  if (__OFSUB__(v8, a3))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v8 - a3 == 1)
  {
    sub_100047940();
    swift_beginAccess();
    v23 = *(v10 + 40);

    sub_1001F11C0(v23, &v47);

    if (v48)
    {
      sub_100103BD8(&v47, v49);
      sub_1000183C4(&qword_1002ADC60);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1001FE9E0;
      sub_100026064(v49, v9 + 32);
      *(v9 + 72) = a7;
      sub_100019CCC(v49);
      return v9;
    }

    sub_10004BDE8(&v47, &qword_1002B4130);

    return _swiftEmptyArrayStorage;
  }

  v24 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_25;
  }

  if (v24 >= a3 && v24 < v8)
  {
    v43 = a5;
    v45 = a2;
    v26 = (a2 + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    sub_100047940();
    swift_beginAccess();
    v29 = *(v10 + 48);

    v30 = sub_1001F43D8(v27, v28, v29);

    if (v30)
    {
      v31 = v8;
      v32 = v46;
      v33 = sub_100146C18(a3 + 1, v31, v46, v45, a3, a4);
      v34 = v43;
      v41 = sub_100145C18(v33, v35, v36, v37, v43, v12, a7);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
      v34 = v43;
      v32 = v46;
    }

    sub_100047940();
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_10005E2E0(v34, v12);

    sub_100144DE0(v38, v32, v45, a3, a4, a3 + 1, v34, v12, &v50);
    v40 = v39;

    sub_1001BA328(v40);

    return v41;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100145F48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v107 = a3;
  v11 = sub_1000183C4(&qword_1002ACE98);
  __chkstk_darwin(v11 - 8, v12);
  v14 = v103 - v13;
  v15 = sub_1001F6288();
  sub_10001A278();
  v17 = v16;
  result = __chkstk_darwin(v18, v19);
  v22 = v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v104 = v5;
    v23 = a1[3];
    v24 = a1[4];
    sub_10001AE68(a1, v23);
    (*(v24 + 8))(v23, v24);
    sub_1001F6258();

    if (sub_10001C990(v14, 1, v15) == 1)
    {
      sub_10004BDE8(v14, &qword_1002ACE98);
      v25 = a1[4];
      sub_10001AE68(a1, a1[3]);
      v26 = sub_100013EFC();
      v28 = v27(v26, v25);
      v30 = v29;
      sub_100146B30();
      swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v30;
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0;
      return swift_willThrow();
    }

    v105 = a1;
    (*(v17 + 32))(v22, v14, v15);
    v32 = sub_1001F61E8();
    if (v32[2])
    {
      v34 = v32[4];
      v33 = v32[5];

      v35 = v34 == 47 && v33 == 0xE100000000000000;
      v6 = v104;
      if (v35)
      {

LABEL_14:
        v45 = sub_1001F61E8();
        sub_100103BE0(0, *(v45 + 16), v45);
        v107 = v46;
        a4 = v47;
        a5 = v48;

        (*(v17 + 8))(v22, v15);
        goto LABEL_15;
      }

      v36 = sub_1001F7EA8();

      if (v36)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v37 = sub_100146B84(&off_100278E10, 0);
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = sub_1001F61E8();
    v108 = v37;
    v109 = v39;
    v110 = v41;
    v111 = v43;
    v6 = v104;
    sub_100146DF0(v44);
    (*(v17 + 8))(v22, v15);
    v107 = v109;
    a4 = v110;
    a5 = v111;
LABEL_15:
    result = swift_unknownObjectRetain();
    a1 = v105;
  }

  if (a4 == a5 >> 1)
  {
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    sub_100146B30();
    swift_allocError();
    *v49 = 0u;
    *(v49 + 16) = 0u;
    *(v49 + 32) = 2;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v50 = a5 >> 1;
  if (a4 >= (a5 >> 1))
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v105 = a1;
  v51 = (v107 + 16 * a4);
  v53 = *v51;
  v52 = v51[1];
  swift_unknownObjectRetain_n();

  swift_unknownObjectRelease();
  v54 = *v51;
  v55 = v51[1];
  v56 = v106;
  v57 = v54 == *(v106 + 16) && v55 == *(v106 + 24);
  if (!v57 && (sub_1001F7EA8() & 1) == 0 && (*(v56 + 32) & 1) == 0)
  {
    v101 = *(v56 + 16);
    v100 = *(v56 + 24);
    sub_100146B30();
    swift_allocError();
    *v102 = v101;
    *(v102 + 8) = v100;
    *(v102 + 16) = v53;
    *(v102 + 24) = v52;
    *(v102 + 32) = 1;
    swift_willThrow();

    return swift_unknownObjectRelease();
  }

  if (__OFSUB__(v50, a4))
  {
    goto LABEL_44;
  }

  if (v50 - a4 == 1)
  {
    v58 = v105;
    v59 = v105[4];
    sub_10001AE68(v105, v105[3]);
    v60 = sub_100013EFC();
    v62 = v61(v60, v59);
    v64 = v63;
    sub_100026064(v58, &v108);
    swift_beginAccess();
    sub_100145170(&v108, v62, v64);
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  if (a4 + 1 < v50)
  {
    v103[1] = a4 + 1;
    v65 = (v107 + 16 * (a4 + 1));
    v66 = *v65;
    v67 = v65[1];

    v68 = sub_100088678(v66, v67);
    v70 = v69;

    if (v70)
    {
      if (v68 == 58 && v70 == 0xE100000000000000)
      {
      }

      else
      {
        v72 = sub_1001F7EA8();

        if ((v72 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v91 = *v65;
      v90 = v65[1];

      sub_10005E758(1uLL, v91, v90);
      v92 = sub_1001F6BE8();
      v94 = v93;

      type metadata accessor for Router.Node();
      sub_1000DFBD8();
      swift_allocObject();
      sub_1001457FC(v92, v94, 1);
      v95 = v106;
      swift_beginAccess();

      sub_1001F6F08();
      sub_1000375FC(*((*(v95 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1001F6F98();
      swift_endAccess();
      v96 = sub_1001479C4();
      sub_100145F48(v105, v96, v97, v98, v99);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

LABEL_35:
    v104 = v6;
    v73 = *v65;
    v74 = v65[1];
    v75 = v106;
    sub_100047940();
    swift_beginAccess();
    v76 = *(v75 + 48);

    v77 = sub_1001F43D8(v73, v74, v76);

    if (v77 || (v78 = v65[1], v103[0] = *v65, v79 = v103[0], type metadata accessor for Router.Node(), sub_1000DFBD8(), swift_allocObject(), sub_100013EFC(), swift_bridgeObjectRetain_n(), v80 = sub_1001457FC(v79, v78, 0), v81 = v106, swift_beginAccess(), isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), v112 = *(v81 + 48), sub_1001E647C(v80, v103[0], v78, isUniquelyReferenced_nonNull_native), *(v81 + 48) = v112, , swift_endAccess(), v84 = *v65, v83 = v65[1], v85 = *(v81 + 48), , , sub_1001F43D8(v84, v83, v85), sub_100013EFC(), , , &vars0 != 72))
    {
      v86 = sub_1001479C4();
      sub_100145F48(v105, v86, v87, v88, v89);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

LABEL_45:
  __break(1u);
  return result;
}