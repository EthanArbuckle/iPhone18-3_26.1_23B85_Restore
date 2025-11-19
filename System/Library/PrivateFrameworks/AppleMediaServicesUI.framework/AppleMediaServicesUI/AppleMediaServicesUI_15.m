uint64_t sub_10016032C()
{
  if (qword_100268788 != -1)
  {
    sub_100006E5C();
  }

  v1 = v0[10];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v0[5] = type metadata accessor for MercuryCacheUpdateCoordinator();
  v0[2] = v1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = v0[10];
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 2);
  _StringGuts.grow(_:)(35);

  v8 = *(v7 + 152);
  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v0[9] = &type metadata for String;
  v0[6] = 0xD000000000000021;
  v0[7] = 0x80000001001FED40;
  static LogInterpolation.sensitive(_:)();
  sub_10000A00C((v0 + 6), &qword_10026D350, &qword_1001E6050);
  v14 = static os_log_type_t.info.getter();
  sub_1000036B0(v14);

  sub_10015DDC0(v8);

  v15._countAndFlagsBits = sub_100023ED4();
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);

  sub_1001CF380();

  sub_10015DDC0(v8);

  v16._countAndFlagsBits = sub_10000A4A0();
  v16._object = 0xE90000000000006CLL;
  String.append(_:)(v16);

  sub_1001CF380();

  v17 = *(v7 + 208);
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_100160660;

  return sub_10015CD10(v8);
}

uint64_t sub_100160660()
{
  sub_100004768();
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  v5 = sub_1000047B0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10016075C()
{
  sub_1000061B4();
  v1 = *sub_100003CA8((*(v0 + 80) + 168), *(*(v0 + 80) + 192));
  sub_100151748();
  sub_100002D8C();

  return v2();
}

uint64_t sub_1001607E0()
{
  sub_100002C00((v0 + 112));

  v1 = *(v0 + 160);
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 168));
  v2 = *(v0 + 208);
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 256));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100160830()
{
  sub_1001607E0();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_100160880(uint64_t *a1)
{
  v2 = *(sub_10007B9A4(&qword_100269FE0, &unk_1001E7550) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000F0408(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_100160934(v7);
  *a1 = v3;
  return result;
}

Swift::Int sub_100160934(unint64_t *a1)
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
        sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10007B9A4(&qword_100269FE0, &unk_1001E7550) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100160CAC(v8, v9, a1, v4);
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
    return sub_100160A7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100160A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v35 = -v20;
    v36 = v19;
    v22 = a1 - a3;
    v29 = v20;
    v23 = v19 + v20 * a3;
    while (2)
    {
      v33 = v21;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      do
      {
        sub_100161F04(v23, v18);
        sub_100161F04(v21, v14);
        v24 = *(v8 + 48);
        v25 = static Date.< infix(_:_:)();
        sub_10000A00C(v14, &qword_100269FE0, &unk_1001E7550);
        result = sub_10000A00C(v18, &qword_100269FE0, &unk_1001E7550);
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        v26 = v37;
        sub_100161E78(v23, v37);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100161E78(v26, v21);
        v21 += v35;
        v23 += v35;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v34 + 1;
      v21 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100160CAC(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v108 = a1;
  v121 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v114 = *(v121 - 8);
  v8 = *(v114 + 64);
  v9 = __chkstk_darwin(v121);
  v111 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v119 = &v105 - v12;
  v13 = __chkstk_darwin(v11);
  v120 = &v105 - v14;
  __chkstk_darwin(v13);
  v16 = &v105 - v15;
  v117 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
    v20 = v4;
LABEL_103:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_145;
    }

    v17 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v99 = (v19 + 16);
      v100 = *(v19 + 16);
      for (i = v19; v100 >= 2; v19 = i)
      {
        if (!*v117)
        {
          goto LABEL_142;
        }

        v101 = (v19 + 16 * v100);
        v102 = *v101;
        v103 = &v99[2 * v100];
        v19 = *(v103 + 1);
        sub_100161578(*v117 + *(v114 + 72) * *v101, *v117 + *(v114 + 72) * *v103, *v117 + *(v114 + 72) * v19, v5);
        if (v17)
        {
          break;
        }

        if (v19 < v102)
        {
          goto LABEL_130;
        }

        if (v100 - 2 >= *v99)
        {
          goto LABEL_131;
        }

        *v101 = v102;
        v101[1] = v19;
        v104 = *v99 - v100;
        if (*v99 < v100)
        {
          goto LABEL_132;
        }

        v100 = *v99 - 1;
        sub_1000F02C8(v103 + 16, v104, v103);
        *v99 = v100;
      }

LABEL_113:

      return;
    }

LABEL_139:
    v19 = sub_1000F02B4(v19);
    goto LABEL_105;
  }

  v105 = a4;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v20 = v4;
  while (1)
  {
    v21 = v18;
    v22 = v18 + 1;
    if (v18 + 1 >= v17)
    {
      v36 = v121;
    }

    else
    {
      i = v19;
      v107 = v20;
      v23 = *v117;
      v19 = *(v114 + 72);
      v24 = *v117 + v19 * v22;
      sub_100161F04(v24, v16);
      v25 = v120;
      sub_100161F04(v23 + v19 * v21, v120);
      v26 = *(v121 + 48);
      LODWORD(v113) = static Date.< infix(_:_:)();
      v27 = v25;
      v5 = &qword_100269FE0;
      sub_10000A00C(v27, &qword_100269FE0, &unk_1001E7550);
      sub_10000A00C(v16, &qword_100269FE0, &unk_1001E7550);
      v106 = v21;
      v28 = v21 + 2;
      v115 = v19;
      v29 = v23 + v19 * (v21 + 2);
      while (1)
      {
        v30 = v28;
        v31 = v22 + 1;
        if (v31 >= v17)
        {
          break;
        }

        sub_100161F04(v29, v16);
        v32 = v120;
        sub_100161F04(v24, v120);
        v33 = *(v121 + 48);
        v5 = v31;
        v34 = static Date.< infix(_:_:)() & 1;
        v19 = &unk_1001E7550;
        sub_10000A00C(v32, &qword_100269FE0, &unk_1001E7550);
        sub_10000A00C(v16, &qword_100269FE0, &unk_1001E7550);
        v29 += v115;
        v24 += v115;
        v28 = v30 + 1;
        v35 = (v113 & 1) == v34;
        v22 = v5;
        if (!v35)
        {
          goto LABEL_10;
        }
      }

      v22 = v17;
LABEL_10:
      v20 = v107;
      if (v113)
      {
        v37 = v17;
        v17 = v106;
        if (v22 < v106)
        {
          goto LABEL_136;
        }

        if (v106 >= v22)
        {
          v36 = v121;
          v19 = i;
          v21 = v106;
          goto LABEL_32;
        }

        if (v37 >= v30)
        {
          v37 = v30;
        }

        v38 = v115 * (v37 - 1);
        v5 = v115 * v37;
        v39 = v106 * v115;
        v40 = v22;
        v36 = v121;
        v116 = v22;
        do
        {
          if (v17 != --v40)
          {
            v41 = *v117;
            if (!*v117)
            {
              goto LABEL_143;
            }

            sub_100161E78(v41 + v39, v111);
            v42 = v39 < v38 || v41 + v39 >= v41 + v5;
            if (v42)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v39 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100161E78(v111, v41 + v38);
            v36 = v121;
            v22 = v116;
          }

          ++v17;
          v38 -= v115;
          v5 -= v115;
          v39 += v115;
        }

        while (v17 < v40);
        v20 = v107;
      }

      else
      {
        v36 = v121;
      }

      v19 = i;
      v21 = v106;
    }

LABEL_32:
    v43 = v117[1];
    if (v22 < v43)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_135;
      }

      if (v22 - v21 < v105)
      {
        break;
      }
    }

LABEL_50:
    if (v22 < v21)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v96 = *(v19 + 16);
      sub_1000D4E00();
      v19 = v97;
    }

    v55 = *(v19 + 16);
    v56 = v55 + 1;
    if (v55 >= *(v19 + 24) >> 1)
    {
      sub_1000D4E00();
      v19 = v98;
    }

    *(v19 + 16) = v56;
    v57 = v19 + 32;
    v58 = (v19 + 32 + 16 * v55);
    v59 = v116;
    *v58 = v21;
    v58[1] = v59;
    v115 = *v108;
    if (!v115)
    {
      goto LABEL_144;
    }

    if (v55)
    {
      i = v19;
      while (1)
      {
        v60 = v56 - 1;
        v61 = (v57 + 16 * (v56 - 1));
        v62 = (v19 + 16 * v56);
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v63 = *(v19 + 32);
          v64 = *(v19 + 40);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_71:
          if (v66)
          {
            goto LABEL_121;
          }

          v78 = *v62;
          v77 = v62[1];
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_124;
          }

          v82 = v61[1];
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_129;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v56 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v56 < 2)
        {
          goto LABEL_123;
        }

        v85 = *v62;
        v84 = v62[1];
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_86:
        if (v81)
        {
          goto LABEL_126;
        }

        v87 = *v61;
        v86 = v61[1];
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_128;
        }

        if (v88 < v80)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v60 - 1 >= v56)
        {
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
          goto LABEL_138;
        }

        if (!*v117)
        {
          goto LABEL_141;
        }

        v5 = v16;
        v92 = (v57 + 16 * (v60 - 1));
        v93 = *v92;
        v94 = v60;
        v95 = v57 + 16 * v60;
        v19 = *(v95 + 8);
        sub_100161578(*v117 + *(v114 + 72) * *v92, *v117 + *(v114 + 72) * *v95, *v117 + *(v114 + 72) * v19, v115);
        if (v20)
        {
          goto LABEL_113;
        }

        if (v19 < v93)
        {
          goto LABEL_116;
        }

        v17 = *(i + 16);
        if (v94 > v17)
        {
          goto LABEL_117;
        }

        *v92 = v93;
        v92[1] = v19;
        if (v94 >= v17)
        {
          goto LABEL_118;
        }

        v56 = v17 - 1;
        sub_1000F02C8((v95 + 16), v17 - 1 - v94, v95);
        v19 = i;
        *(i + 16) = v17 - 1;
        v16 = v5;
        if (v17 <= 2)
        {
          goto LABEL_100;
        }
      }

      v67 = v57 + 16 * v56;
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_119;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_120;
      }

      v74 = v62[1];
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_122;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_125;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = v61[1];
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_133;
        }

        if (v65 < v91)
        {
          v60 = v56 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v18 = v116;
    v17 = v117[1];
    if (v116 >= v17)
    {
      goto LABEL_103;
    }
  }

  v44 = v21 + v105;
  if (__OFADD__(v21, v105))
  {
    goto LABEL_137;
  }

  if (v44 >= v43)
  {
    v44 = v117[1];
  }

  if (v44 < v21)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v22 == v44)
  {
    goto LABEL_50;
  }

  i = v19;
  v106 = v21;
  v107 = v20;
  v5 = *v117;
  v45 = *(v114 + 72);
  v46 = *v117 + v45 * (v22 - 1);
  v17 = -v45;
  v47 = v21 - v22;
  v109 = v45;
  v110 = v44;
  v48 = v5 + v22 * v45;
LABEL_41:
  v115 = v46;
  v116 = v22;
  v112 = v48;
  v113 = v47;
  v49 = v46;
  while (1)
  {
    sub_100161F04(v48, v16);
    v50 = v120;
    sub_100161F04(v49, v120);
    v51 = *(v36 + 48);
    v52 = static Date.< infix(_:_:)();
    sub_10000A00C(v50, &qword_100269FE0, &unk_1001E7550);
    sub_10000A00C(v16, &qword_100269FE0, &unk_1001E7550);
    if ((v52 & 1) == 0)
    {
      v36 = v121;
LABEL_48:
      v22 = v116 + 1;
      v46 = v115 + v109;
      v47 = v113 - 1;
      v48 = v112 + v109;
      if (v116 + 1 == v110)
      {
        v22 = v110;
        v21 = v106;
        v20 = v107;
        v19 = i;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    if (!v5)
    {
      break;
    }

    v53 = v119;
    sub_100161E78(v48, v119);
    v36 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_100161E78(v53, v49);
    v49 += v17;
    v48 += v17;
    v42 = __CFADD__(v47++, 1);
    if (v42)
    {
      goto LABEL_48;
    }
  }

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
}

uint64_t sub_100161578(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = a3;
  v55 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v8 = *(*(v55 - 8) + 64);
  v9 = __chkstk_darwin(v55);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = v47 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1;
  v18 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = v54 - a2;
  if (v54 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v21 = v17 / v16;
  v58 = a1;
  v57 = a4;
  v22 = v19 / v16;
  v47[1] = v4;
  if (v17 / v16 >= v19 / v16)
  {
    sub_1000D679C(a2, v19 / v16, a4);
    v28 = a4 + v22 * v16;
    v29 = -v16;
    v30 = v28;
    v31 = v54;
    v52 = a4;
    v53 = v29;
    v50 = v11;
    v51 = a1;
    v49 = v14;
LABEL_37:
    v32 = a2 + v29;
    v33 = v31;
    v47[0] = v30;
    v34 = v29;
    v54 = a2 + v29;
    while (1)
    {
      if (v28 <= a4)
      {
        v58 = a2;
        v56 = v30;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v30;
      v35 = v33 + v34;
      v36 = v28 + v34;
      v37 = v32;
      v38 = v28 + v34;
      v39 = v33;
      sub_100161F04(v38, v14);
      sub_100161F04(v37, v11);
      v40 = *(v55 + 48);
      v41 = static Date.< infix(_:_:)();
      v42 = v11;
      v43 = v41;
      sub_10000A00C(v42, &qword_100269FE0, &unk_1001E7550);
      sub_10000A00C(v14, &qword_100269FE0, &unk_1001E7550);
      if (v43)
      {
        v45 = v39 < a2 || v35 >= a2;
        v31 = v35;
        if (v45)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v48;
          v14 = v49;
          v11 = v50;
          a1 = v51;
          a4 = v52;
          v29 = v53;
        }

        else
        {
          v14 = v49;
          v30 = v48;
          v18 = v39 == a2;
          v29 = v53;
          a2 = v54;
          v11 = v50;
          a1 = v51;
          a4 = v52;
          if (!v18)
          {
            a2 = v54;
            v46 = v48;
            swift_arrayInitWithTakeBackToFront();
            v30 = v46;
          }
        }

        goto LABEL_37;
      }

      if (v39 < v28 || v35 >= v28)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v35;
        v28 = v36;
        v30 = v36;
        v14 = v49;
        v11 = v50;
        a4 = v52;
        v34 = v53;
        a1 = v51;
        v32 = v54;
      }

      else
      {
        v30 = v36;
        v18 = v28 == v39;
        v33 = v35;
        v28 = v36;
        v14 = v49;
        v11 = v50;
        a4 = v52;
        v34 = v53;
        a1 = v51;
        v32 = v54;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v54;
          v33 = v35;
          v28 = v36;
          v30 = v36;
        }
      }
    }

    v58 = a2;
    v56 = v47[0];
  }

  else
  {
    sub_1000D679C(a1, v17 / v16, a4);
    v53 = a4 + v21 * v16;
    v56 = v53;
    while (a4 < v53 && a2 < v54)
    {
      sub_100161F04(a2, v14);
      sub_100161F04(a4, v11);
      v24 = *(v55 + 48);
      v25 = static Date.< infix(_:_:)();
      sub_10000A00C(v11, &qword_100269FE0, &unk_1001E7550);
      sub_10000A00C(v14, &qword_100269FE0, &unk_1001E7550);
      if (v25)
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v57 = a4 + v16;
        a4 += v16;
      }

      a1 += v16;
      v58 = a1;
    }
  }

LABEL_59:
  sub_100161ACC(&v58, &v57, &v56);
  return 1;
}

uint64_t sub_1001619F4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v6 = type metadata accessor for URLQueryItem();
  result = sub_100002DDC(v6);
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  v11 = v4 + (v5 - v4) / v9 * v9;
  if (v3 < v4 || v3 >= v11)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100161ACC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100161BB8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v23 = &unk_10024F910;
  v24 = &off_10024F928;
  v5 = swift_allocObject();
  v22[0] = v5;
  v6 = *(a1 + 24);
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 8);
  v7 = *(a1 + 16);
  v5[1] = *a1;
  v5[2] = v7;
  *(v5 + 41) = *(a1 + 25);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_100027D8C(&v27, v21);
  v8 = v6;
  sub_100161DEC(&v25, v21);
  _StringGuts.grow(_:)(18);

  v28 = 0xD000000000000010;
  v29 = 0x80000001001FED90;
  v9 = sub_100003CA8(v22, &unk_10024F910);
  v10 = v9[1];
  v11 = v9[2];

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13 = v28;
  v14 = v29;
  v15 = sub_100003CA8(v22, v23);
  v17 = v15[1];
  v16 = v15[2];
  v18 = *sub_100003CA8(v22, v23);
  v40 = 0;
  v39 = 0;
  v38 = 1;
  LOWORD(v28) = 1;
  v29 = v18;
  v30 = 0;
  v31 = 0x404E000000000000;
  v32 = 0x4072C00000000000;
  v33 = 0;
  v34 = 0;
  v35 = 1;
  v36 = 257;
  v37 = 0;
  sub_1000262E4(v22, v21);
  v19 = swift_allocObject();
  v19[2] = v13;
  v19[3] = v14;
  sub_10003B104(v21, (v19 + 4));
  v19[9] = a2;
  v19[10] = v4;

  sub_100066B48();

  return sub_100002C00(v22);
}

uint64_t sub_100161E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161FC8()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026ECC8 = qword_100287880;
}

uint64_t sub_10016202C()
{
  type metadata accessor for MercuryCacheUpdateCoordinatorProvider();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000AF20C();
  type metadata accessor for MercuryCacheUpdateCoordinator();
  sub_1000AE204();
  result = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 112) = result;
  qword_1002878B0 = v0;
  return result;
}

uint64_t sub_1001620A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 176) = v12;
  *(v9 + 184) = v8;
  *(v9 + 160) = v11;
  *(v9 + 144) = a7;
  *(v9 + 152) = a8;
  *(v9 + 128) = a5;
  *(v9 + 136) = a6;
  *(v9 + 112) = a2;
  *(v9 + 120) = a4;
  *(v9 + 104) = a1;
  return _swift_task_switch(sub_1001620E8, v8, 0);
}

uint64_t sub_1001620E8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v33 = *(v0 + 152);
  v34 = *(v0 + 160);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 104);
  v9 = sub_100003CA8(*(v0 + 120), *(*(v0 + 120) + 24));
  v10 = sub_100003CA8(v3, v3[3]);
  v11 = sub_100003CA8(v1, v1[3]);
  sub_1001A0A64(v8, v7, *v9, v6, v5, v4, v33, v34, *v10, *v11, v2, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v0, v43);
  *(v0 + 192) = v12;
  swift_beginAccess();
  sub_1000AB8B0(v8, v13, v14, v15, v16, v17, v18, v19, v31, v32);
  swift_endAccess();

  if (qword_100268790 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 184);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v21 = *(type metadata accessor for LogInterpolation() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  *(v0 + 40) = type metadata accessor for MercuryCacheUpdateCoordinatorProvider();
  *(v0 + 16) = v20;

  v24 = AMSLogKey();
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v26 = *(v0 + 104);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 72) = sub_1000AF20C();
  *(v0 + 48) = v26;
  v27 = v26;
  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v0 + 48);
  v28 = static os_log_type_t.info.getter();
  sub_1000036B0(v28);

  v29 = swift_task_alloc();
  *(v0 + 200) = v29;
  *v29 = v0;
  v29[1] = sub_1001623E8;

  return sub_100160314(v29);
}

uint64_t sub_1001623E8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_100162578;
  }

  else
  {
    v6 = sub_100162514;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100162514()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100162578()
{
  v1 = v0[24];

  v2 = v0[1];
  v3 = v0[26];

  return v2();
}

uint64_t sub_1001625DC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100162638@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v41.i8[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v41.i8[-v10];
  updated = type metadata accessor for MercuryCacheUpdateData(0);
  v13 = *&v1[updated[7]];
  if (v13)
  {
    v14 = &v1[updated[6]];
    v15 = v14[1];
    v43 = *v14;
    v16 = &v1[updated[8]];
    v17 = v1;
    if ((v16[49] & 1) == 0)
    {
      if (*(v16 + 2))
      {
        v17 = v1;
      }

      else
      {
        v17 = &v1[updated[8]];
      }
    }

    v18 = *v17;
    v19 = updated[5];

    Date.addingTimeInterval(_:)();
    v20 = type metadata accessor for MercuryCacheUpdateData.Success(0);
    v21 = sub_10000C12C(v20);
    v22(v21, &v1[v19], v4);
    *a1 = v43;
    *(a1 + 1) = v15;
    (*(v5 + 32))(&a1[*(v20 + 20)], v11, v4);
    *&a1[*(v20 + 24)] = v13;
  }

  else
  {
    v23 = &v1[updated[6]];
    v24 = v23[1];
    v43 = *v23;
    v25 = &v1[updated[8]];
    v26 = v25[2];
    v41 = v25[1];
    v42 = v26;
    v27 = v25[3].i8[0];
    v28 = v25[3].u8[1];
    v29 = v1;
    if ((v28 & 1) == 0)
    {
      if (v25->i32[2])
      {
        v29 = v1;
      }

      else
      {
        v29 = v25;
      }
    }

    v30 = *v29;
    v31 = updated[5];

    Date.addingTimeInterval(_:)();
    v32 = v28 | v27;
    if (v28)
    {
      v33 = -1;
    }

    else
    {
      v33 = 0;
    }

    v34 = vdupq_n_s64(v33);
    v41 = vbicq_s8(v41, v34);
    v42 = vbicq_s8(v42, v34);
    v35 = type metadata accessor for MercuryCacheUpdateData.Failure(0);
    v36 = sub_10000C12C(v35);
    v37(v36, &v2[v31], v4);
    *a1 = v43;
    *(a1 + 1) = v24;
    (*(v5 + 32))(&a1[*(v35 + 20)], v9, v4);
    v38 = &a1[*(v35 + 24)];
    v39 = v42;
    *v38 = v41;
    v38[1] = v39;
    v38[2].i8[0] = v32 & 1;
  }

  type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1001628EC(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = AnyHashable.init<A>(_:)();
  sub_1000054E0(v6, v7, v8);
  sub_10000E1E8(v25);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  sub_1000AF20C();
  if (sub_100006E88())
  {
    v9 = v24;
    if (v24)
    {
      [v24 doubleValue];
      v11 = v10;
      v12 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  v12 = 1;
LABEL_6:
  v13 = sub_100007C54();
  sub_1000054E0(v13, v14, v15);
  sub_10000E1E8(v25);
  v16 = sub_100006E88();
  if (v16)
  {
    v17 = v24;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_100007C54();
  sub_1000054E0(v18, v19, v20);

  sub_10000E1E8(v25);
  if (sub_100006E88())
  {
    if (v24 == 2 || (v24 & 1) == 0)
    {
      sub_10000BAA4();
    }

    else
    {
      v21 = 0;
      v22 = v16 ^ 1u;
      v23 = a3;
    }
  }

  else
  {
    sub_10000BAA4();
    v23 = 0.0;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 24) = v22;
  *(a2 + 32) = a1;
  *(a2 + 40) = v23;
  *(a2 + 48) = v21;
}

uint64_t sub_100162B80()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_10004750C(319, &unk_10026EE08);
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_100162C38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100162C58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_100162CBC()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100162D80();
    if (v1 <= 0x3F)
    {
      sub_10004750C(319, &unk_10026EEB0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100162D80()
{
  if (!qword_10026EEA8)
  {
    sub_10007BC70(&qword_10026AE50, &unk_1001E83A0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10026EEA8);
    }
  }
}

uint64_t sub_100162DE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100162E04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 49) = v3;
  return result;
}

uint64_t sub_100162E58()
{
  result = type metadata accessor for MercuryCacheUpdateData.Success(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MercuryCacheUpdateData.Failure(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100162EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000321C(*(a1 + 8));
  }

  v7 = type metadata accessor for Date();
  v8 = a1 + *(a3 + 20);

  return sub_100009F34(v8, a2, v7);
}

uint64_t sub_100162F70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100162FF0()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100163098();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void sub_100163098()
{
  if (!qword_10026F000)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10026F000);
    }
  }
}

uint64_t sub_100163164(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t))
{
  v34 = a7;
  v39 = a5;
  v40 = a6;
  v37 = a1;
  v38 = a2;
  v9 = a4(0);
  v10 = sub_100002CFC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100005C2C();
  v35 = v15;
  sub_100003F08();
  result = __chkstk_darwin(v16);
  v19 = &v33 - v18;
  v20 = 0;
  v21 = *(a3 + 16);
  v36 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v21 == v20)
    {

      return v36;
    }

    if (v20 >= *(a3 + 16))
    {
      break;
    }

    v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v23 = *(v12 + 72);
    sub_100164F84();
    v24 = v37(v19);
    if (v7)
    {
      sub_100164FDC(v19, v40);
      v32 = v36;

      return v32;
    }

    if (v24)
    {
      sub_100165030();
      v25 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = v25[2];
        v28 = sub_100004C7C();
        v34(v28);
        v25 = v41;
      }

      v30 = v25[2];
      v29 = v25[3];
      v31 = (v30 + 1);
      if (v30 >= v29 >> 1)
      {
        v36 = (v30 + 1);
        v33 = v30;
        (v34)(v29 > 1, v30 + 1, 1);
        v31 = v36;
        v25 = v41;
      }

      ++v20;
      v25[2] = v31;
      v36 = v25;
      result = sub_100165030();
    }

    else
    {
      result = sub_100164FDC(v19, v40);
      ++v20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001633A8(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v56 - v8;
  v9 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v61 = &v56 - v11;
  v12 = type metadata accessor for RetryConfiguration(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10007B9A4(&qword_10026E8B8, &unk_1001EE2F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v56 - v18;
  updated = type metadata accessor for CacheUpdateRun(0);
  v64 = *(updated - 8);
  v21 = *(v64 + 64);
  __chkstk_darwin(updated);
  v71 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MercuryCacheMetadata(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a2 + 16);
  if (v29)
  {
    v70 = v3;
    v65 = v25;
    v67 = *(v25 + 28);
    v30 = a2 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v62 = (v4 + 16);
    v58 = (v4 + 32);
    v72 = _swiftEmptyArrayStorage;
    v66 = *(v26 + 72);
    v31 = v61;
    v68 = v15;
    v69 = v12;
    while (1)
    {
      sub_100164F84();
      sub_100164EF4(&v28[v67], v31);
      if (sub_100009F34(v31, 1, v12) == 1)
      {
        sub_100009F5C(v31, &qword_10026E7C8, &unk_1001EE2A0);
        v33 = *(v65 + 20);
        v32 = *(v65 + 24);
        sub_100092A84();
        v34 = v70;
        if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_100165030();
        v35 = *(v12 + 28);
        if (*v15 < v15[1])
        {
          v36 = v15[2];
          v37 = v60;
          Date.addingTimeInterval(_:)();
          sub_100164FDC(v15, type metadata accessor for RetryConfiguration);
          v38 = v59;
          v39 = *v58;
          v40 = v37;
          v41 = v70;
          (*v58)(v59, v40, v70);
          v42 = *(v28 + 1);
          v63 = *v28;
          v43 = v38;
          v31 = v61;
          v39(&v19[*(updated + 20)], v43, v41);
          *v19 = v63;
          *(v19 + 1) = v42;
          v19[*(updated + 24)] = 1;
          sub_10000A7C0(v19, 0, 1, updated);
LABEL_10:

          goto LABEL_11;
        }

        v33 = *(v65 + 20);
        sub_100092A84();
        v34 = v70;
        v44 = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_100164FDC(v15, type metadata accessor for RetryConfiguration);
        if ((v44 & 1) == 0)
        {
LABEL_9:
          v46 = *v28;
          v45 = *(v28 + 1);
          (*v62)(&v19[*(updated + 20)], &v28[v33], v34);
          *v19 = v46;
          *(v19 + 1) = v45;
          v19[*(updated + 24)] = 0;
          sub_10000A7C0(v19, 0, 1, updated);
          goto LABEL_10;
        }
      }

      sub_10000A7C0(v19, 1, 1, updated);
LABEL_11:
      sub_100164FDC(v28, type metadata accessor for MercuryCacheMetadata);
      if (sub_100009F34(v19, 1, updated) == 1)
      {
        v25 = sub_100009F5C(v19, &qword_10026E8B8, &unk_1001EE2F0);
        v15 = v68;
        v12 = v69;
      }

      else
      {
        sub_100165030();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = v68;
        v12 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = v72[2];
          sub_1000D590C();
          v72 = v53;
        }

        v48 = v72[2];
        if (v48 >= v72[3] >> 1)
        {
          sub_1000D590C();
          v72 = v54;
        }

        v49 = v72;
        v72[2] = v48 + 1;
        v50 = v49 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
        v51 = *(v64 + 72);
        v25 = sub_100165030();
      }

      v30 += v66;
      if (!--v29)
      {
        goto LABEL_21;
      }
    }
  }

  v72 = _swiftEmptyArrayStorage;
LABEL_21:
  __chkstk_darwin(v25);
  *(&v56 - 2) = v57;
  return sub_100163164(sub_100164F64, (&v56 - 4), v72, type metadata accessor for CacheUpdateRun, type metadata accessor for CacheUpdateRun, type metadata accessor for CacheUpdateRun, sub_10009B878);
}

uint64_t sub_100163AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 88) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_100163AE4, 0, 0);
}

uint64_t sub_100163AE4()
{
  *(v0 + 56) = sub_10014BC08(*(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100163B94;

  return sub_1000E9FF8();
}

uint64_t sub_100163B94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_100163D40;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = sub_100163CC4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100163CC4()
{
  sub_100163DA4(*(v0 + 24), *(v0 + 80), *(v0 + 40), *(v0 + 48), *(v0 + 88), *(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100163D40()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_100163DA4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v119 = a2;
  v117 = a1;
  updated = type metadata accessor for CacheUpdateRun(0);
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(updated);
  sub_100005C2C();
  v115 = v12;
  sub_100003F08();
  __chkstk_darwin(v13);
  v113 = &v109 - v14;
  sub_100003F08();
  __chkstk_darwin(v15);
  v116 = &v109 - v16;
  sub_100003F08();
  v18 = __chkstk_darwin(v17);
  v20 = &v109 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v109 - v22;
  __chkstk_darwin(v21);
  v25 = &v109 - v24;
  v26 = type metadata accessor for MercuryCacheMetadata(0);
  v27 = sub_100002CFC(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  v33 = (&v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = &_swiftEmptySetSingleton;
  if (a5)
  {
    v114 = a3;
    v111 = v23;
    v112 = a6;
    if (a5 == 1)
    {

      v34 = sub_100164958();
      sub_1001926F4(v34);
      v35 = *(a3 + 16);
      v36 = _swiftEmptyArrayStorage;
      if (v35)
      {
        v110 = v20;
        v121 = _swiftEmptyArrayStorage;
        sub_100027C2C(0, v35, 0);
        v36 = v121;
        v37 = a3 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v120 = *(v29 + 72);
        do
        {
          sub_10000853C();
          sub_100164F84();
          v39 = *v33;
          v38 = v33[1];

          sub_100007C74();
          sub_100164FDC(v33, v40);
          v121 = v36;
          v42 = v36[2];
          v41 = v36[3];
          if (v42 >= v41 >> 1)
          {
            v44 = sub_1000065B0(v41);
            sub_100027C2C(v44, v42 + 1, 1);
            v36 = v121;
          }

          v36[2] = v42 + 1;
          v43 = &v36[2 * v42];
          v43[4] = v39;
          v43[5] = v38;
          v37 += v120;
          --v35;
        }

        while (v35);
        a3 = v114;
        v20 = v110;
      }

      v46 = sub_100062640(v36);
      v47 = v119;

      v45 = sub_10016848C(v46, v47);
    }

    else
    {
      v45 = v119;
    }

    sub_1001926F4(v45);
    result = sub_1001633A8(v117, a3);
    v49 = result;
    v50 = 0;
    v51 = *(result + 16);
    v120 = _swiftEmptyArrayStorage;
    v52 = updated;
    while (v51 != v50)
    {
      if (v50 >= *(v49 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      sub_10000AC94();
      v53 = *(v10 + 72);
      sub_1000033F8();
      sub_100164F84();
      if (v25[*(v52 + 24)] == 1)
      {
        sub_100006EA8();
        sub_100165030();
        v55 = v120;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v55;
        v121 = v55;
        v58 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = v57[2];
          v60 = sub_100004C7C();
          sub_10009B878(v60, v61, v62);
          v52 = updated;
          v57 = v121;
        }

        v64 = v57[2];
        v63 = v57[3];
        v65 = v64 + 1;
        if (v64 >= v63 >> 1)
        {
          v66 = sub_1000065B0(v63);
          v120 = v67;
          sub_10009B878(v66, v67, 1);
          v65 = v120;
          v57 = v121;
          v52 = updated;
        }

        ++v50;
        v57[2] = v65;
        v120 = v57;
        sub_100006EA8();
        v20 = v58;
        result = sub_100165030();
      }

      else
      {
        sub_1000054FC();
        result = sub_100164FDC(v25, v54);
        ++v50;
      }
    }

    v122 = &_swiftEmptySetSingleton;
    v68 = *(v120 + 16);
    if (v68)
    {
      sub_10000AC94();
      v72 = v71 + (v70 & ~v69);
      v73 = *(v10 + 72);
      v74 = v111;
      do
      {
        sub_1000033F8();
        sub_100164F84();
        v75 = *v74;
        v76 = v74[1];

        sub_100012D64();

        sub_1000054FC();
        sub_100164FDC(v74, v77);
        v72 += v73;
        --v68;
      }

      while (v68);

      v52 = updated;
    }

    else
    {
    }

    result = sub_100164958();
    v78 = result;
    v79 = 0;
    v80 = _swiftEmptyArrayStorage;
    v81 = v116;
    while (v51 != v79)
    {
      if (v79 >= *(v49 + 16))
      {
        goto LABEL_47;
      }

      sub_10000AC94();
      v82 = *(v10 + 72);
      sub_1000033F8();
      sub_100164F84();
      if (*(v81 + *(v52 + 24)))
      {
        sub_1000054FC();
        result = sub_100164FDC(v81, v83);
        ++v79;
      }

      else
      {
        sub_100006EA8();
        sub_100165030();
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v120 = v78;
        v121 = v80;
        if ((v84 & 1) == 0)
        {
          v85 = v80[2];
          v86 = sub_100004C7C();
          sub_10009B878(v86, v87, v88);
          v52 = updated;
          v80 = v121;
        }

        v90 = v80[2];
        v89 = v80[3];
        if (v90 >= v89 >> 1)
        {
          v91 = sub_1000065B0(v89);
          sub_10009B878(v91, v90 + 1, 1);
          v52 = updated;
          v80 = v121;
        }

        ++v79;
        v80[2] = v90 + 1;
        sub_100006EA8();
        result = sub_100165030();
        v81 = v116;
        v78 = v120;
      }
    }

    v122 = &_swiftEmptySetSingleton;
    v92 = v80[2];
    if (v92)
    {
      sub_10000AC94();
      v95 = v80 + (v94 & ~v93);
      v96 = *(v10 + 72);
      a6 = v112;
      v97 = v113;
      do
      {
        sub_1000033F8();
        sub_100164F84();
        v98 = *v97;
        v99 = v97[1];

        sub_100012D64();

        sub_1000054FC();
        sub_100164FDC(v97, v100);
        v95 += v96;
        --v92;
      }

      while (v92);
    }

    else
    {

      a6 = v112;
    }

    v101 = sub_100164958();
    v102 = v123;
    v103 = *(type metadata accessor for MercuryCacheUpdateInput() + 32);
    v104 = type metadata accessor for Date();
    sub_10000BAB8(v104);
    (*(v105 + 16))(a6 + v103, v117);
    a3 = v114;
  }

  else
  {
    if (sub_1001552F0(a4))
    {
      sub_1001BF318();
    }

    v102 = sub_100164958();

    v106 = *(type metadata accessor for MercuryCacheUpdateInput() + 32);
    v107 = type metadata accessor for Date();
    sub_10000BAB8(v107);
    (*(v108 + 16))(a6 + v106, v117);
    v78 = &_swiftEmptySetSingleton;
    v101 = &_swiftEmptySetSingleton;
  }

  *a6 = v102;
  a6[1] = v78;
  a6[2] = v101;
  a6[3] = a3;
}

void sub_1001644EC(void *a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for MercuryCacheMetadata(0);
  v3 = sub_100002CFC(v2);
  v55 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100005C2C();
  v54 = v7;
  sub_100003F08();
  __chkstk_darwin(v8);
  v10 = (&v48 - v9);
  v11 = *(v1 + 1);

  v12 = sub_100164958();
  v13 = *(v1 + 2);

  v14 = sub_100164958();

  v50 = v14;
  v51 = v12;
  sub_1001C1D1C();
  v15 = *v1;
  swift_bridgeObjectRetain_n();
  v49 = v15;
  sub_1001C1D1C();
  v17 = v16;
  v18 = 0;
  v52 = v1;
  v19 = *(v1 + 3);
  v57 = *(v19 + 16);
  v20 = v16 + 56;
  v21 = _swiftEmptyArrayStorage;
  v56 = v19;
LABEL_2:
  v22 = v18;
  while (1)
  {
    if (v22 == v57)
    {

      v42 = *(type metadata accessor for MercuryCacheUpdateInput() + 32);
      v43 = type metadata accessor for Date();
      sub_10000BAB8(v43);
      v45 = v53;
      (*(v44 + 16))(v53 + v42, &v52[v42]);
      v46 = v50;
      v47 = v51;
      *v45 = v49;
      v45[1] = v47;
      v45[2] = v46;
      v45[3] = v21;
      return;
    }

    if (v22 >= *(v19 + 16))
    {
      break;
    }

    v23 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v24 = *(v55 + 72);
    v58 = v22 + 1;
    sub_10000853C();
    sub_100164F84();
    if (*(v17 + 16))
    {
      v25 = *v10;
      v26 = v10[1];
      v27 = *(v17 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = ~(-1 << *(v17 + 32));
      while (1)
      {
        v30 = v28 & v29;
        if (((*(v20 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
        {
          break;
        }

        v31 = (*(v17 + 48) + 16 * v30);
        if (*v31 != v25 || v31[1] != v26)
        {
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v28 = v30 + 1;
          if ((v33 & 1) == 0)
          {
            continue;
          }
        }

        sub_10000C140();
        sub_100165030();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v21[2];
          v37 = sub_100004C7C();
          sub_10009B8D0(v37, v38, v39);
          v21 = v59;
        }

        v41 = v21[2];
        v40 = v21[3];
        if (v41 >= v40 >> 1)
        {
          sub_10009B8D0(v40 > 1, v41 + 1, 1);
          v21 = v59;
        }

        v21[2] = v41 + 1;
        sub_10000C140();
        sub_100165030();
        v19 = v56;
        v18 = v58;
        goto LABEL_2;
      }
    }

    sub_100007C74();
    sub_100164FDC(v10, v34);
    v22 = v58;
    v19 = v56;
  }

  __break(1u);
}

uint64_t sub_100164830()
{
  sub_100004E28();
  v3 = *v2;
  v5 = *v4;
  sub_1001C31D0();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v1[1];
  v8 = v0[1];
  sub_1001C31D0();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v1[2];
  v11 = v0[2];
  sub_1001C31D0();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = v1[3];
  v14 = v0[3];
  sub_1001C407C();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for MercuryCacheUpdateInput() + 32);

  return static Date.== infix(_:_:)();
}

void *sub_1001648C8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100164B50(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100164958()
{
  sub_100004E28();
  v1 = *(v0 + 32);
  v2 = v1 & 0x3F;
  v3 = ((1 << v1) + 63) >> 6;

  if (v2 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    sub_1000575CC(0, v3, &v16 - ((8 * v3 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100008110();
    v9 = sub_100164B50(v5, v6, v7, v8);
    if (!v3)
    {
      v10 = v9;

      return v10;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();

    sub_100008110();
    v10 = sub_1001648C8(v12, v13, v14, v15);

    if (!v3)
    {

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MercuryCacheUpdateInput()
{
  result = qword_10026F090;
  if (!qword_10026F090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100164B50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v42 = Hasher._finalize()();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_100169730(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_100164EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100164F84()
{
  sub_100004E28();
  v3 = v2(0);
  sub_10000BAB8(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100164FDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002D30(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100165030()
{
  sub_100004E28();
  v3 = v2(0);
  sub_10000BAB8(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

void sub_1001650B0()
{
  sub_100165154();
  if (v0 <= 0x3F)
  {
    sub_1001651AC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100165154()
{
  if (!qword_10026F0A0)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_10026F0A0);
    }
  }
}

void sub_1001651AC()
{
  if (!qword_10026F0A8)
  {
    type metadata accessor for MercuryCacheMetadata(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10026F0A8);
    }
  }
}

uint64_t sub_100165204(uint64_t a1, void *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v30 = v3;
  v31 = a2;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
      v11 = v10[1];
      *&v34 = *v10;
      *(&v34 + 1) = v11;
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      v35 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
      *&v34 = _swiftEmptyDictionarySingleton;
      sub_100002C4C(&v34, v33);
      v12 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *a2;
      v37 = v14;
      v15 = sub_10000C818(v36);
      v17 = v14[2];
      v18 = (v16 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        break;
      }

      v20 = v15;
      v21 = v16;
      sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v19))
      {
        v22 = sub_10000C818(v36);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_22;
        }

        v20 = v22;
      }

      v24 = v37;
      if (v21)
      {
        v25 = (v37[7] + 32 * v20);
        sub_100002C00(v25);
        sub_100002C4C(v33, v25);
      }

      else
      {
        v37[(v20 >> 6) + 8] |= 1 << v20;
        sub_10000DF68(v36, v24[6] + 40 * v20);
        sub_100002C4C(v33, (v24[7] + 32 * v20));
        v26 = v24[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        v24[2] = v28;
      }

      v6 &= v6 - 1;
      a2 = v31;
      *v31 = v24;
      sub_10000E1E8(v36);

      v3 = v30;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100165480(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = 0;
  v46 = v10;
  v47 = a1 + 56;

  v45 = a3;
  for (i = a2; v9; v6 = v47)
  {
LABEL_8:
    v13 = (*(v5 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
    v15 = v13[1];
    v52[0] = *v13;
    v14 = v52[0];
    v52[1] = v15;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    *&v50 = v14;
    *(&v50 + 1) = v15;

    AnyHashable.init<A>(_:)();
    if (*(a3 + 16) && (v16 = sub_10000C818(v52), (v17 & 1) != 0))
    {
      sub_100011BAC(*(a3 + 56) + 32 * v16, &v50);
    }

    else
    {
      v50 = 0u;
      v51 = 0u;
    }

    sub_10000E1E8(v52);
    if (*(&v51 + 1))
    {
      sub_100002C4C(&v50, v49);
      v18 = *i;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *i;
      v20 = v54;
      v21 = sub_10000C818(v53);
      v23 = v20[2];
      v24 = (v22 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_30;
      }

      v26 = v21;
      v27 = v22;
      sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
      {
        v28 = sub_10000C818(v53);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_32;
        }

        v26 = v28;
      }

      v10 = v46;
      v30 = v54;
      if (v27)
      {
        v31 = (v54[7] + 32 * v26);
        sub_100002C00(v31);
        sub_100002C4C(v49, v31);
      }

      else
      {
        v54[(v26 >> 6) + 8] |= 1 << v26;
        sub_10000DF68(v53, v30[6] + 40 * v26);
        sub_100002C4C(v49, (v30[7] + 32 * v26));
        v40 = v30[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_31;
        }

        v30[2] = v42;
      }

      *i = v30;
      sub_10000E1E8(v53);

      v5 = v44;
      a3 = v45;
    }

    else
    {
      sub_100002C5C(&v50);
      v32 = *i;
      v33 = sub_10000C818(v53);
      if (v34)
      {
        v35 = v33;
        v36 = *i;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v54 = *i;
        v38 = v54[3];
        sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
        a3 = v45;
        v10 = v46;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v37, v38);
        v39 = v54;
        sub_10000E1E8(v54[6] + 40 * v35);
        sub_100002C4C((v39[7] + 32 * v35), v49);
        _NativeDictionary._delete(at:)();
        *i = v39;
      }

      else
      {
        memset(v49, 0, sizeof(v49));
      }

      sub_10000E1E8(v53);
      sub_100002C5C(v49);
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10016584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      v18 = (*(a1 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
      v19 = v18[1];
      v22[0] = *v18;
      v22[1] = v19;

      sub_1001679BC(v22, a2, a3, a4, v23, a6);
      if (v6)
      {
        break;
      }

      v13 &= v13 - 1;

      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    return sub_100014A10(a4);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return sub_100014A10(a4);
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001659BC(uint64_t a1, uint64_t a2)
{
  v176 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v4 = Dictionary.init(dictionaryLiteral:)();
  v6 = a2 + 64;
  v5 = *(a2 + 64);
  v7 = *(a2 + 32);
  sub_100005680();
  v10 = v9 & v8;
  v167 = (v11 + 63) >> 6;

  v12 = 0;
  v170 = a1;
  v173 = a2 + 64;
  while (1)
  {
LABEL_2:
    if (v10)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v13 << 6);
      sub_10000DF68(*(a2 + 48) + 40 * v15, v202);
      sub_100011BAC(*(a2 + 56) + 32 * v15, v205);
      *__src = *v202;
      *&__src[16] = v203;
      *&__src[32] = v204;
      sub_100002C4C(v205, &__src[40]);
    }

    else
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_105;
        }

        if (v13 >= v167)
        {
          break;
        }

        v10 = *(v6 + 8 * v13);
        ++v12;
        if (v10)
        {
          v12 = v13;
          goto LABEL_8;
        }
      }

      v10 = 0;
      memset(__src, 0, sizeof(__src));
    }

    memcpy(__dst, __src, 0x48uLL);
    if (!*(&__dst[1] + 1))
    {

      if (v4[2])
      {
        sub_1000E375C(v4);
        v134 = v133;
        sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
        v135 = swift_allocObject();
        *(v135 + 16) = xmmword_1001E8AB0;
        sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
        v136 = sub_1000065C0();
        [v136 setAllowsResponse:0];
        *(v135 + 32) = v136;
        sub_100166C10(0xD000000000000018, 0x80000001001F3050, v134, v135);
      }
    }

    sub_100002C4C((&__dst[2] + 8), v205);
    *__src = __dst[0];
    *&__src[16] = __dst[1];
    *&__src[32] = *&__dst[2];
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_98;
    }

    v16 = *&v202[8];
    v194 = *v202;
    sub_100011BAC(v205, __src);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_98:
      if (qword_100268720 != -1)
      {
        goto LABEL_110;
      }

      goto LABEL_99;
    }

    v191 = *v202;
    if (!a1)
    {
      goto LABEL_82;
    }

    *&v199 = v194;
    *(&v199 + 1) = v16;

    AnyHashable.init<A>(_:)();
    if (!*(a1 + 16) || (v17 = sub_10000C818(__src), (v18 & 1) == 0))
    {
      sub_10000E1E8(__src);
LABEL_82:
      *v202 = 0u;
      v203 = 0u;
LABEL_83:
      sub_100002C5C(v202);
      goto LABEL_84;
    }

    sub_100011BAC(*(a1 + 56) + 32 * v17, v202);
    sub_10000E1E8(__src);
    if (!*(&v203 + 1))
    {
      goto LABEL_83;
    }

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_84:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__src = v4;
    v120 = sub_100012A94();
    v122 = v4[2];
    v123 = (v121 & 1) == 0;
    v124 = v122 + v123;
    if (__OFADD__(v122, v123))
    {
      goto LABEL_106;
    }

    v125 = v120;
    v126 = v121;
    sub_10007B9A4(&qword_10026B2D8, &unk_1001EEA60);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v124))
    {
      sub_100012A94();
      sub_100007460();
      v6 = v173;
      if (!v60)
      {
LABEL_117:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v125 = v127;
      if (v126)
      {
        goto LABEL_92;
      }

LABEL_89:
      v4 = *__src;
      *(*__src + 8 * (v125 >> 6) + 64) |= 1 << v125;
      v128 = (v4[6] + 16 * v125);
      *v128 = v194;
      v128[1] = v16;
      *(v4[7] + 8 * v125) = v191;
      sub_100002C00(v205);
      v129 = v4[2];
      v63 = __OFADD__(v129, 1);
      v130 = v129 + 1;
      if (v63)
      {
        goto LABEL_107;
      }

      v4[2] = v130;
    }

    else
    {
      v6 = v173;
      if ((v126 & 1) == 0)
      {
        goto LABEL_89;
      }

LABEL_92:

      v4 = *__src;
      v131 = *(*__src + 56);
      v132 = *(v131 + 8 * v125);
      *(v131 + 8 * v125) = v191;

      sub_100002C00(v205);
    }
  }

  v161 = v16;
  v164 = v4;
  v146 = a2;
  v19 = 0;
  v182 = *__src;
  v20 = *(v191 + 64);
  v21 = *(v191 + 32);
  sub_100005680();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  v28 = v27;
  v179 = v27;
  if ((v23 & v22) == 0)
  {
    goto LABEL_19;
  }

  while (2)
  {
    v29 = v19;
LABEL_23:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = v30 | (v29 << 6);
    v32 = (*(v191 + 48) + 16 * v31);
    v34 = *v32;
    v33 = v32[1];
    sub_100011BAC(*(v191 + 56) + 32 * v31, &v199);
    *v202 = v34;
    *&v202[8] = v33;
    sub_100002C4C(&v199, &v203);

LABEL_24:
    *__src = *v202;
    *&__src[16] = v203;
    *&__src[32] = v204;
    v35 = *&v202[8];
    if (!*&v202[8])
    {
      sub_100002C00(v205);

      a2 = v146;
      v4 = v164;
      v6 = v173;
      goto LABEL_2;
    }

    v185 = *__src;
    sub_100002C4C(&__src[16], v202);
    v36 = sub_100002BC0(0, &qword_10026FF00, NSDictionary_ptr);
    if (!swift_dynamicCast())
    {
LABEL_31:

      goto LABEL_32;
    }

    v37 = v199;
    if (!*(v182 + 16) || (v38 = sub_100019D38(), (v39 & 1) == 0) || (sub_100011BAC(*(v182 + 56) + 32 * v38, v202), sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0), (swift_dynamicCast() & 1) == 0))
    {
      if (*(v164 + 16) && (v42 = sub_100012A94(), (v43 & 1) != 0))
      {
        v44 = *(*(v164 + 56) + 8 * v42);
      }

      else
      {
        LOBYTE(v44) = Dictionary.init(dictionaryLiteral:)();
      }

      *(&v203 + 1) = v36;
      *v202 = v37;
      sub_100002C4C(v202, &v199);
      v149 = v37;
      swift_isUniquelyReferenced_nonNull_native();
      sub_100019D38();
      sub_100003058();
      if (__OFADD__(v47, v48))
      {
        goto LABEL_108;
      }

      v49 = v45;
      HIDWORD(v156) = v46;
      v50 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      if (sub_100011AF8(v50, v51, v52, v53, v54, v55, v56, v57, v146, v149, v156, v159, v161, v164, v167, v170, v173, v176, v179, v182, v185, v191, v194, v44))
      {
        sub_100019D38();
        sub_100012D84();
        if (!v60)
        {
          goto LABEL_117;
        }

        v49 = v58;
        if ((v59 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if ((v157 & 0x100000000) == 0)
      {
LABEL_44:
        sub_100006EC0();
        *v61 = v186;
        v61[1] = v35;
        sub_100002C4C(&v199, (*(v197 + 56) + 32 * v49));
        sub_1000079CC();
        if (v63)
        {
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
          goto LABEL_117;
        }

        v187 = v197;
        *(v197 + 16) = v62;
        goto LABEL_48;
      }

      v187 = v197;
      v64 = (*(v197 + 56) + 32 * v49);
      sub_100002C00(v64);
      sub_100002C4C(&v199, v64);
LABEL_48:
      swift_isUniquelyReferenced_nonNull_native();
      *v202 = v165;
      sub_100012A94();
      sub_100003058();
      if (__OFADD__(v67, v68))
      {
        goto LABEL_109;
      }

      v69 = v65;
      v70 = v66;
      v71 = sub_10007B9A4(&qword_10026B2D8, &unk_1001EEA60);
      if (sub_10000AA70(v71, v72, v73, v74, v75, v76, v77, v78, v147, v150, v157, v159, v162, v165, v168, v171, v174, v177, v180, v183, v187, v192, v195, v197, v199, *(&v199 + 1), v200, v201, v202[0]))
      {
        sub_100005D80();
        sub_100007460();
        a1 = v170;
        if (!v60)
        {
          goto LABEL_117;
        }

        v69 = v79;
      }

      else
      {
        a1 = v170;
      }

      v80 = *v202;
      v164 = *v202;
      if (v70)
      {
        goto LABEL_78;
      }

      sub_100006EC0();
      sub_100023EE8(v81, v146, v151, v156, v159, v161, v164, v167, v170, v173, v176, v179, v182, v188, v191, v194);

      sub_1000079CC();
      if (v63)
      {
        goto LABEL_112;
      }

      goto LABEL_80;
    }

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v41 = [v37 isEqualToDictionary:isa];

    if (v41)
    {

      a1 = v170;
      goto LABEL_32;
    }

    if (*(v164 + 16) && (v83 = sub_100012A94(), (v84 & 1) != 0))
    {
      v85 = *(*(v164 + 56) + 8 * v83);
    }

    else
    {
      v85 = Dictionary.init(dictionaryLiteral:)();
    }

    *(&v203 + 1) = v36;
    *v202 = v37;
    sub_100002C4C(v202, &v199);
    v153 = v37;
    swift_isUniquelyReferenced_nonNull_native();
    v86 = sub_100019D38();
    HIDWORD(v156) = v87;
    if (__OFADD__(*(v85 + 16), (v87 & 1) == 0))
    {
      goto LABEL_113;
    }

    v88 = v86;
    v89 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
    if (!sub_100011AF8(v89, v90, v91, v92, v93, v94, v95, v96, v146, v153, v156, v159, v161, v164, v167, v170, v173, v176, v179, v182, v185, v191, v194, v85))
    {
      if ((v158 & 0x100000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_70;
    }

    sub_100019D38();
    sub_100012D84();
    if (!v60)
    {
      goto LABEL_117;
    }

    v88 = v97;
    if (v98)
    {
LABEL_70:

      v190 = v198;
      v101 = (*(v198 + 56) + 32 * v88);
      sub_100002C00(v101);
      sub_100002C4C(&v199, v101);
      goto LABEL_71;
    }

LABEL_67:
    sub_100006EC0();
    *v99 = v189;
    v99[1] = v35;
    sub_100002C4C(&v199, (*(v198 + 56) + 32 * v88));
    sub_1000079CC();
    if (v63)
    {
      goto LABEL_115;
    }

    v190 = v198;
    *(v198 + 16) = v100;
LABEL_71:
    swift_isUniquelyReferenced_nonNull_native();
    *v202 = v166;
    sub_100012A94();
    sub_100003058();
    if (__OFADD__(v104, v105))
    {
      goto LABEL_114;
    }

    v69 = v102;
    v106 = v103;
    v107 = sub_10007B9A4(&qword_10026B2D8, &unk_1001EEA60);
    if (sub_10000AA70(v107, v108, v109, v110, v111, v112, v113, v114, v148, v154, v158, v160, v163, v166, v169, v172, v175, v178, v181, v184, v190, v193, v196, v198, v199, *(&v199 + 1), v200, v201, v202[0]))
    {
      sub_100005D80();
      sub_100007460();
      a1 = v170;
      if (!v60)
      {
        goto LABEL_117;
      }

      v69 = v115;
    }

    else
    {
      a1 = v170;
    }

    v80 = *v202;
    v164 = *v202;
    if (v106)
    {
LABEL_78:
      v116 = *(v80 + 56);
      v117 = *(v116 + 8 * v69);
      *(v116 + 8 * v69) = v188;

      goto LABEL_31;
    }

    sub_100006EC0();
    sub_100023EE8(v118, v146, v151, v156, v159, v161, v164, v167, v170, v173, v176, v179, v182, v188, v191, v194);

    sub_1000079CC();
    if (v63)
    {
      goto LABEL_116;
    }

LABEL_80:
    *(v80 + 16) = v82;
LABEL_32:
    v28 = v179;
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_19:
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      v24 = 0;
      v203 = 0u;
      v204 = 0u;
      *v202 = 0u;
      goto LABEL_24;
    }

    v24 = *(v28 + 8 * v29);
    ++v19;
    if (v24)
    {
      v19 = v29;
      goto LABEL_23;
    }
  }

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
  sub_100005514();
LABEL_99:
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v137 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v137);
  v139 = *(v138 + 72);
  v141 = (*(v140 + 80) + 32) & ~*(v140 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  *&__src[24] = &type metadata for MercuryCacheUpdateReporter;
  sub_100007600();
  *__src = swift_allocObject();
  sub_100167D44(v159, *__src + 16);
  v142 = AMSLogKey();
  if (v142)
  {
    v143 = v142;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(__src);
  LogInterpolation.init(stringLiteral:)();
  v144 = static os_log_type_t.error.getter();
  sub_1000036B0(v144);

  sub_100002C00(v205);
}

uint64_t sub_100166628()
{
  if (qword_100268670 != -1)
  {
    sub_100003198();
  }

  v0 = qword_1002877D0;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 defaultCenter];
  v5[4] = sub_100002BC0(0, &qword_10026F0E8, NSDistributedNotificationCenter_ptr);
  v5[5] = &off_10024FAC0;
  v5[0] = v2;
  v5[1] = v3;
  sub_1001666E8();
  return sub_100167D14(v5);
}

uint64_t sub_1001666E8()
{
  v1 = sub_100166B90(0xD000000000000010, 0x80000001001F3030);
  v3 = v2;
  if (qword_100268720 != -1)
  {
    sub_100005514();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v19 = &type metadata for MercuryCacheUpdateReporter;
  sub_100007600();
  v17 = swift_allocObject();
  sub_100167D44(v0, v17 + 16);
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v17);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  sub_100004B44();
  v17 = 0xD000000000000015;
  v18 = v11;
  v12._countAndFlagsBits = v1;
  v12._object = v3;
  String.append(_:)(v12);
  v19 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v17);
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13);

  v14 = v0[4];
  v15 = v0[5];
  sub_100003CA8(v0 + 1, v14);
  (*(v15 + 8))(v1, v3, v14, v15);
}

uint64_t sub_10016694C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (qword_100268670 != -1)
  {
    sub_100003198();
  }

  v6 = qword_1002877D0;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  v11[4] = sub_100002BC0(0, &qword_10026F0E8, NSDistributedNotificationCenter_ptr);
  v11[5] = &off_10024FAC0;
  v11[0] = v8;
  v11[1] = v9;
  a3(a1, a2);
  return sub_100167D14(v11);
}

uint64_t sub_100166A2C(uint64_t a1, uint64_t a2)
{
  sub_100167614(a1, a2, sub_100167398, 0);
  v3 = v2;
  if (*(v2 + 16))
  {
    sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1001E8AB0;
    sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
    v5 = sub_1000065C0();
    [v5 setAllowsResponse:0];
    *(v4 + 32) = v5;
    sub_100166C10(0xD000000000000013, 0x80000001001F3070, v3, v4);
  }
}

unint64_t sub_100166B90(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(49);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  return 0xD00000000000002FLL;
}

uint64_t sub_100166C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100002CC4(v7);
  v48 = v9;
  v49 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_1000052A4();
  v46 = v12;
  v47 = type metadata accessor for DispatchQoS();
  v13 = sub_100002CC4(v47);
  v45 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_1000052A4();
  v44 = v17;
  v18 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1001E61B0;
  sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F60;
  sub_10000A4B4();
  *(inited + 96) = &type metadata for String;
  sub_100004B44();
  *(inited + 72) = 0xD000000000000013;
  *(inited + 80) = v21;
  sub_10000A4B4();
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 144), "amsengagementd");
  *(inited + 159) = -18;
  sub_100004B44();
  *&v51 = 0xD000000000000012;
  *(&v51 + 1) = v22;
  sub_10000A4B4();
  sub_10007B9A4(&qword_10026F0F0, &qword_1001EEA38);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1001E61B0;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  sub_10007B9A4(&qword_10026F0F8, &unk_1001EEA40);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1001E61B0;
  *(v24 + 32) = 0x64657461647075;
  *(v24 + 40) = 0xE700000000000000;
  *(v24 + 48) = a3;

  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  *(v23 + 48) = Dictionary.init(dictionaryLiteral:)();
  sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
  v25 = Dictionary.init(dictionaryLiteral:)();
  *(inited + 240) = sub_10007B9A4(&qword_10026EB90, &qword_1001EE4D8);
  *(inited + 216) = v25;
  *(v19 + 32) = Dictionary.init(dictionaryLiteral:)();
  sub_1000F4334(v19, v18);
  v26 = [objc_opt_self() currentProcess];
  [v18 setClientInfo:v26];

  sub_10017DB30(a4, v18);
  if (qword_100268720 != -1)
  {
    sub_100005514();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v27 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v27);
  v29 = *(v28 + 72);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  *(&v52 + 1) = &type metadata for MercuryCacheUpdateReporter;
  sub_100007600();
  *&v51 = swift_allocObject();
  sub_100167D44(v43, v51 + 16);
  v32 = AMSLogKey();
  if (v32)
  {
    v33 = v32;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v51);
  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  sub_100004B44();
  *&v51 = 0xD000000000000017;
  *(&v51 + 1) = v34;
  v50[0] = sub_10000D7F8(v18);
  sub_10007B9A4(&qword_10026F100, &qword_1001EEA58);
  v35._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v35);

  *(&v52 + 1) = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v51);
  v36 = static os_log_type_t.info.getter();
  sub_1000036B0(v36);

  if (qword_100268800 != -1)
  {
    swift_once();
  }

  sub_100167D44(v43, &v51);
  v37 = swift_allocObject();
  v38 = v52;
  *(v37 + 16) = v51;
  *(v37 + 32) = v38;
  *(v37 + 48) = v53;
  *(v37 + 64) = v18;
  v50[4] = sub_100167D7C;
  v50[5] = v37;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 1107296256;
  v50[2] = sub_100005E50;
  v50[3] = &unk_10024FB60;
  v39 = _Block_copy(v50);
  v40 = v18;
  static DispatchQoS.unspecified.getter();
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v39);

  (*(v48 + 8))(v46, v49);
  (*(v45 + 8))(v44, v47);
}

uint64_t sub_100167350(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getObjectType();
  sub_1000996BC(a2);
}

id sub_100167398(uint64_t a1, uint64_t a2)
{
  *&v21 = 1635018093;
  *(&v21 + 1) = 0xE400000000000000;

  AnyHashable.init<A>(_:)();
  v4 = sub_10000C818(v20);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = a1;
    v8 = *(a1 + 24);
    sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
    sub_10000E1E8(*(v18 + 48) + 40 * v6);
    sub_100002C4C((*(v18 + 56) + 32 * v6), &v21);
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  sub_10000E1E8(v20);
  sub_100002C5C(&v21);
  *&v21 = 1635018093;
  *(&v21 + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  v9 = sub_10000C818(v20);
  if (v10)
  {
    v11 = v9;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v19 = a2;
    v13 = *(a2 + 24);
    sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
    sub_10000E1E8(*(v19 + 48) + 40 * v11);
    sub_100002C4C((*(v19 + 56) + 32 * v11), &v21);
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  sub_10000E1E8(v20);
  sub_100002C5C(&v21);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [(objc_class *)isa isEqualToDictionary:v15];

  return v16;
}

void sub_100167614(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a1)
  {
    v78 = a3;
    v79 = a4;
    v91[0] = _swiftEmptyDictionarySingleton;
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    v8 = *(a1 + 32);
    sub_100004E5C();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;

    v14 = 0;
    v80 = _swiftEmptyArrayStorage;
    while (v11)
    {
LABEL_8:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      sub_10000DF68(*(a1 + 48) + 40 * (v16 | (v14 << 6)), v90);
      sub_10000BACC(v17, v18, v19, v20, v21, v22, v23, v24, *&v74, *&v75, *&v76, v77, *&v78, *&v79, *&v80, v82, v83, v84, v85, v86, v87, *&v88, v89, v90[0]);
      if ((swift_dynamicCast() & 1) != 0 && v89 != 0.0)
      {
        v77 = *&v88;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100008124(isUniquelyReferenced_nonNull_native, v26, v27, v28, v29, v30, v31, v32, v74, v75, v76, v88, v78, v79, v80);
          v80 = v36;
        }

        v33 = v80[2];
        v34 = v33 + 1;
        if (v33 >= v80[3] >> 1)
        {
          v75 = v80[2];
          v76 = v33 + 1;
          sub_10000DE9C();
          v33 = v75;
          v34 = v76;
          v80 = v37;
        }

        v80[2] = v34;
        v35 = &v80[2 * v33];
        v35[4] = v77;
        v35[5] = v89;
      }
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v15 >= v13)
      {
        break;
      }

      v11 = *(v7 + 8 * v15);
      ++v14;
      if (v11)
      {
        v14 = v15;
        goto LABEL_8;
      }
    }

    v38 = sub_100062640(v80);
    v39 = *(a2 + 64);
    v40 = *(a2 + 32);
    sub_100004E5C();
    v43 = v42 & v41;
    v45 = (v44 + 63) >> 6;

    v46 = 0;
    v81 = _swiftEmptyArrayStorage;
    while (v43)
    {
LABEL_21:
      v48 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      sub_10000DF68(*(a2 + 48) + 40 * (v48 | (v46 << 6)), v90);
      sub_10000BACC(v49, v50, v51, v52, v53, v54, v55, v56, *&v74, *&v75, *&v76, v77, *&v78, *&v79, *&v81, v82, v83, v84, v85, v86, v87, *&v88, v89, v90[0]);
      if ((swift_dynamicCast() & 1) != 0 && v89 != 0.0)
      {
        v77 = *&v88;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        if ((v57 & 1) == 0)
        {
          sub_100008124(v57, v58, v59, v60, v61, v62, v63, v64, v74, v75, v76, v88, v78, v79, v81);
          v81 = v68;
        }

        v65 = v81[2];
        v66 = v65 + 1;
        if (v65 >= v81[3] >> 1)
        {
          v75 = v81[2];
          v76 = v65 + 1;
          sub_10000DE9C();
          v65 = v75;
          v66 = v76;
          v81 = v69;
        }

        v81[2] = v66;
        v67 = &v81[2 * v65];
        v67[4] = v77;
        v67[5] = v89;
      }
    }

    while (1)
    {
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v47 >= v45)
      {

        v70 = sub_100062640(v81);

        v71 = sub_10016848C(v70, v38);
        sub_100165204(v71, v91);

        v72 = sub_10016848C(v38, v70);

        sub_100165480(v72, v91, a2);

        v73 = sub_100164958();

        sub_100017E54(v78);
        sub_10016584C(v73, a1, a2, v78, v79, v91);

        return;
      }

      v43 = *(a2 + 64 + 8 * v47);
      ++v46;
      if (v43)
      {
        v46 = v47;
        goto LABEL_21;
      }
    }

LABEL_31:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1001679BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v10 = a1[1];
  v18 = *a1;

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v19, a2, &v20);
  sub_10000E1E8(v19);
  if (!v21)
  {
    return sub_100002C5C(&v20);
  }

  v12 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v22 = a6;

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v19, a3, &v20);
  sub_10000E1E8(v19);
  if (!v21)
  {

    return sub_100002C5C(&v20);
  }

  if (swift_dynamicCast())
  {
    if (a4)
    {

      v14 = a4(v18, v11);

      if ((v14 & 1) == 0)
      {
        *&v20 = v11;
        *(&v20 + 1) = v10;

        AnyHashable.init<A>(_:)();
        v21 = v12;
        *&v20 = v11;
        sub_1000A9FF8(&v20, v19);
        return sub_100014A10(a4);
      }

      sub_100014A10(a4);
    }

    else
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v16 = Dictionary._bridgeToObjectiveC()().super.isa;

      v17 = [(objc_class *)isa isEqualToDictionary:v16];

      if ((v17 & 1) == 0)
      {
        *&v20 = v11;
        *(&v20 + 1) = v10;

        AnyHashable.init<A>(_:)();
        v21 = v12;
        *&v20 = v11;
        return sub_1000A9FF8(&v20, v19);
      }
    }
  }
}

void sub_100167C88()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 postNotificationName:v1 object:0 userInfo:0 deliverImmediately:1];
}

__n128 sub_100167D88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100167D9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100167DDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100167E38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v43 = a4;
  v46 = a3;
  v48 = a1;
  v9 = sub_10007B9A4(&qword_10026AF40, &unk_1001EEAD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v47 = &v42 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for MercuryCacheUpdateData(0);
  v18 = *(*(updated - 1) + 64);
  v19 = __chkstk_darwin(updated);
  v21 = (&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = &v42 - v22;
  v25 = *a2;
  v24 = a2[1];
  v26 = a2[2];
  v27 = *(v13 + 16);
  v44 = v16;
  v28 = v46;
  v46 = v12;
  v27(v16, v28, v12);
  v29 = (v21 + updated[6]);
  v45 = v25;
  *v29 = v25;
  v29[1] = v24;
  *&v53[0] = 0x64616F6C796170;
  *(&v53[0] + 1) = 0xE700000000000000;

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v54, v26, v53);
  sub_10000E1E8(&v54);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v30 = swift_dynamicCast();
  v31 = v52;
  if (!v30)
  {
    v31 = 0;
  }

  *(v21 + updated[7]) = v31;
  *v21 = a5;
  v54 = 1635018093;
  v55 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v53, v26, &v52);
  sub_10000E1E8(v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v59 = 0;
    goto LABEL_7;
  }

  if (!v59)
  {
LABEL_7:
    v33 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 1;
    v34 = 0uLL;
    v35 = 0uLL;
    goto LABEL_8;
  }

  sub_1001628EC(v43, &v54, a6);
  v32 = 0;
  v33 = v54;
  v34 = v56;
  v35 = v57;
  v36 = v58;
  v51 = v55;
  v50 = v58;
  v49 = 0;
  v37 = v55;
LABEL_8:
  v38 = v21 + updated[8];
  *v38 = v33;
  *(v38 + 1) = v37;
  *(v38 + 1) = v34;
  *(v38 + 2) = v35;
  v38[48] = v36;
  v38[49] = v32;
  (*(v13 + 32))(v21 + updated[5], v44, v46);
  sub_100168258(v21, v23);

  v39 = v47;
  sub_100162638(v47);
  v40 = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  sub_10000A7C0(v39, 0, 1, v40);
  sub_1000AA4AC();
  return sub_1001682BC(v23);
}

uint64_t sub_100168258(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for MercuryCacheUpdateData(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_1001682BC(uint64_t a1)
{
  updated = type metadata accessor for MercuryCacheUpdateData(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t type metadata accessor for MercuryCacheUpdateResponse()
{
  result = qword_10026F160;
  if (!qword_10026F160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016838C()
{
  sub_100168424();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100168424()
{
  if (!qword_10026F170)
  {
    type metadata accessor for MercuryCacheUpdateData.DataKind(255);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10026F170);
    }
  }
}

void *sub_10016848C(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100193F5C(a1);
    return a2;
  }

  else
  {

    return sub_100168BAC(a1, a2);
  }
}

uint64_t sub_1001684E0()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026F1B0 = qword_100287880;
}

uint64_t sub_100168544(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return sub_100006E7C(a1, v1);
}

uint64_t sub_10016855C()
{
  v1 = v0[9];
  v2 = v0[10];
  swift_beginAccess();
  v3 = *(v2 + 112);

  v5 = sub_10016848C(v4, v1);

  swift_beginAccess();

  sub_1001926F4(v6);
  swift_endAccess();
  if (qword_1002687A0 != -1)
  {
    sub_100005534();
  }

  v7 = v0[10];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v0[5] = type metadata accessor for MercuryCacheUpdateStateManager();
  v0[2] = v7;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 2);
  sub_10000C158();
  v22 = v13;
  v14 = *(v2 + 112);

  v15 = Set.description.getter();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v0[5] = &type metadata for String;
  v0[2] = v22;
  v0[3] = 0xEA0000000000203ALL;
  static LogInterpolation.safe(_:)();
  sub_100002C5C((v0 + 2));
  v19 = static os_log_type_t.info.getter();
  sub_1000036B0(v19);

  v20 = v0[1];

  return v20(v5);
}

uint64_t sub_1001687FC(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return sub_100006E7C(a1, v1);
}

uint64_t sub_100168814()
{
  if (qword_1002687A0 != -1)
  {
    sub_100005534();
  }

  v1 = v0[7];
  v43 = qword_10026F1B0;
  v2 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 80);
  v45 = *(v3 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  updated = type metadata accessor for MercuryCacheUpdateStateManager();
  v0[5] = updated;
  v0[2] = v1;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = v0[6];
  v9 = v0[7];
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 2);
  v10._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v10);

  sub_100003410(v11, v12, v13, v14, v15, v16, v17, v18, 2, 4, ((v4 + 32) & ~v4) + 2 * v45, v2, (v4 + 32) & ~v4, v43, v45, 0x676E69766F6D6572, 0xEA0000000000203ALL);
  static LogInterpolation.safe(_:)();
  sub_100002C5C((v0 + 2));
  v19 = static os_log_type_t.info.getter();
  sub_1000036B0(v19);

  swift_beginAccess();
  sub_100193F5C(v8);
  swift_endAccess();
  *(swift_allocObject() + 16) = v39;
  v0[5] = updated;
  v0[2] = v9;

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 2);
  sub_10000C158();
  v47 = v22;
  v23 = *(v9 + 112);

  v24 = Set.description.getter();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  sub_100003410(v28, v29, v30, v31, v32, v33, v34, v35, v39, *(&v39 + 1), v40, v41, v42, v44, v46, v47, 0xEA0000000000203ALL);
  static LogInterpolation.safe(_:)();
  sub_100002C5C((v0 + 2));
  v36 = static os_log_type_t.info.getter();
  sub_1000036B0(v36);

  v37 = v0[1];

  return v37();
}

void *sub_100168BAC(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v49 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v51 = v12;
    v52 = v7;
    v53 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = v5[5];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v21 = Hasher._finalize()();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v23 = (v5[6] + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v55 = v49;
            v56 = v16;
            v57 = v11;
            v3 = v52;
            v12 = v53;
            v54[0] = v53;
            v54[1] = v52;

            v26 = *(v5 + 32);
            v46 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v46;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v47 = &v45;
              __chkstk_darwin(v25);
              v7 = &v45 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = v5[2];
              v50 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v51;
              while (1)
              {
                v48 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = v5[5];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v36 = Hasher._finalize()();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v52;
                    v12 = v53;
                    v30 = v51;
                    goto LABEL_24;
                  }

                  v38 = (v5[6] + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v50[v7];
                v50[v7] = v41 & ~v8;
                v3 = v52;
                v12 = v53;
                v30 = v51;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v48 - 1;
                if (__OFSUB__(v48, 1))
                {
                  __break(1u);
                }

                if (v48 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_100169730(v50, v46, v48, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v43 = swift_slowAlloc();
            v44 = sub_10006E500(v43, v46, v5 + 7, v46, v5, v7, v54);

            v49 = v55;
            v5 = v44;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v52;
        v14 = v53;
        v12 = v51;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_10004EB70();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

void *sub_100169084(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v52 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v54 = v12;
    v55 = v7;
    v56 = v14;
    if (v11)
    {
LABEL_6:
      v16 = v15;
LABEL_11:
      sub_10000BAEC();
      v20 = (*(v18 + 48) + ((v16 << 10) | (16 * v19)));
      v22 = *v20;
      v21 = v20[1];
      v23 = v5[5];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v24 = Hasher._finalize()();
      v25 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v7 = v24 & v25;
        v4 = (v24 & v25) >> 6;
        v8 = 1 << (v24 & v25);
        if ((v8 & v13[v4]) == 0)
        {

          v15 = v16;
          goto LABEL_6;
        }

        v26 = (v5[6] + 16 * v7);
        v27 = *v26 == v22 && v26[1] == v21;
        if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v24 = v7 + 1;
      }

      v58 = v52;
      v59 = v16;
      v60 = v11;
      v3 = v55;
      v12 = v56;
      v57[0] = v56;
      v57[1] = v55;

      v29 = *(v5 + 32);
      v49 = ((1 << v29) + 63) >> 6;
      v2 = 8 * v49;
      if ((v29 & 0x3Fu) > 0xD)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v50 = &v48;
        __chkstk_darwin(v28);
        v7 = &v48 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v7, v5 + 7, v2);
        v30 = *(v7 + 8 * v4) & ~v8;
        v31 = v5[2];
        v53 = v7;
        *(v7 + 8 * v4) = v30;
        v32 = v31 - 1;
        v33 = v54;
        while (1)
        {
          v51 = v32;
LABEL_23:
          if (!v11)
          {
            break;
          }

LABEL_28:
          sub_10000BAEC();
          v36 = (*(v12 + 48) + ((v16 << 10) | (16 * v35)));
          v2 = *v36;
          v37 = v36[1];
          v38 = v5[5];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v39 = Hasher._finalize()();
          v40 = ~(-1 << *(v5 + 32));
          do
          {
            v4 = v39 & v40;
            v7 = (v39 & v40) >> 6;
            v8 = 1 << (v39 & v40);
            if ((v8 & v13[v7]) == 0)
            {

              v3 = v55;
              v12 = v56;
              v33 = v54;
              goto LABEL_23;
            }

            v41 = (v5[6] + 16 * v4);
            if (*v41 == v2 && v41[1] == v37)
            {
              break;
            }

            v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v39 = v4 + 1;
          }

          while ((v43 & 1) == 0);

          v44 = v53[v7];
          v53[v7] = v44 & ~v8;
          v3 = v55;
          v12 = v56;
          v33 = v54;
          if ((v44 & v8) == 0)
          {
            goto LABEL_23;
          }

          v32 = v51 - 1;
          if (__OFSUB__(v51, 1))
          {
            __break(1u);
          }

          if (v51 == 1)
          {

            v5 = &_swiftEmptySetSingleton;
            goto LABEL_43;
          }
        }

        while (1)
        {
          v34 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v34 >= v33)
          {
            v5 = sub_100169730(v53, v49, v51, v5);
            goto LABEL_43;
          }

          v11 = *(v3 + 8 * v34);
          ++v16;
          if (v11)
          {
            v16 = v34;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v46 = swift_slowAlloc();
      v47 = sub_10006E500(v46, v49, v5 + 7, v49, v5, v7, v57);

      v52 = v58;
      v5 = v47;
    }

    else
    {
      v17 = 0;
      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_46;
        }

        if (v16 >= v12)
        {
          break;
        }

        v11 = *(v7 + 8 * v16);
        ++v17;
        if (v11)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_43:
    sub_10004EB70();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

unint64_t *sub_100169544(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
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
    v16 = *(a3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
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

      return sub_100169730(v28, a2, v27, a3);
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

uint64_t sub_100169730(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_10007B9A4(&qword_10026F288, &qword_1001EEB98);
  result = static _SetStorage.allocate(capacity:)();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
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

uint64_t sub_10016994C()
{
  sub_100004768();
  *(v1 + 161) = v2;
  *(v1 + 168) = v3;
  *(v1 + 176) = v0;
  updated = type metadata accessor for MercuryCacheDataUpdateHandler();
  *(v1 + 184) = updated;
  v5 = *(*(updated - 8) + 64) + 15;
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  v6 = type metadata accessor for MercuryCacheMetadata(0);
  sub_100002CFC(v6);
  *(v1 + 208) = v7;
  v9 = *(v8 + 64) + 15;
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  v10 = *(*(type metadata accessor for MercuryCacheUpdateInput() - 8) + 64) + 15;
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v1 + 248) = v11;
  sub_100002CFC(v11);
  *(v1 + 256) = v12;
  v14 = *(v13 + 64) + 15;
  *(v1 + 264) = swift_task_alloc();
  v15 = sub_1000033A0();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100169ACC()
{
  v1 = *(v0 + 176);
  v2 = sub_10016B99C();
  *(v0 + 272) = v2;
  if (v2)
  {
    v3 = v2;
    if ([v2 isActive])
    {
      v4 = *(v0 + 176);
      v5 = *v4;
      *(v0 + 280) = *v4;
      *(v0 + 288) = v4[1];
      v6 = v4[17];
      *(v0 + 296) = v6;
      v7 = v4[18];
      *(v0 + 304) = v7;
      LODWORD(v4) = *(v4 + 152);
      *(v0 + 162) = v4;
      if (v4)
      {
        v8 = v7;
      }

      else
      {
        v8 = v6;
      }

      v9 = v8;

      return _swift_task_switch(sub_100169C74, v5, 0);
    }

    sub_10016BA2C();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  else
  {
    sub_10016BA2C();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }

  sub_100005A1C();

  sub_100002D8C();

  return v12();
}

uint64_t sub_100169C74()
{
  sub_100004768();
  sub_1000065E8();
  v3 = *(v0 + 280);
  if (v4)
  {
    v5 = v1;
  }

  else
  {
    v5 = v2;
  }

  v6 = *v5;
  *(v0 + 312) = sub_10015C384(*v5);

  v7 = sub_1000033A0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100169CEC()
{
  sub_100004768();
  v1 = *(v0 + 264);
  v2 = *(v0 + 168);
  v3 = *(*(v0 + 176) + 56);
  *(v0 + 320) = v3;

  swift_unknownObjectRetain();
  static Date.now.getter();
  v4 = swift_task_alloc();
  *(v0 + 328) = v4;
  *v4 = v0;
  v4[1] = sub_100169DB4;
  v5 = *(v0 + 312);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 168);
  v9 = *(v0 + 161);

  return sub_100163AB8(v7, v6, v3, v5, v8, v9);
}

uint64_t sub_100169DB4()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  *(v8 + 336) = v0;

  if (v0)
  {
    v9 = sub_10016B2EC;
  }

  else
  {
    v9 = sub_100169EB4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100169EB4()
{
  sub_1000061B4();
  v1 = v0[30];
  v2 = sub_100003CA8((v0[22] + 96), *(v0[22] + 120));
  v3 = *v1;
  v4 = v1[1];

  sub_1001C1D1C();
  v5 = v1[2];

  sub_1001C1D1C();
  v0[43] = v6;
  v7 = *v2;
  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v9 = sub_100004AAC(v8);

  return sub_100168544(v9);
}

uint64_t sub_100169F94()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  v4 = *(v3 + 352);
  v5 = *(v3 + 344);
  v6 = *v0;
  sub_100002D20();
  *v7 = v6;
  *(v9 + 360) = v8;

  v10 = sub_1000033A0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10016A098()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 232);
  sub_1001644EC(v2);

  v80 = v2[3];
  if (qword_1002687A8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v3 = *(v0 + 176);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  *(v0 + 40) = &type metadata for MercuryCacheUpdateTask;
  v9 = swift_allocObject();
  *(v0 + 16) = v9;
  sub_10016BAD8(v3, v9 + 16);
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = *(v0 + 162);
  v13 = *(v0 + 296);
  v14 = *(v0 + 304);
  v15 = *(v0 + 232);
  v74 = *(v0 + 168);
  v76 = *(v0 + 336);
  v72 = *(v0 + 161);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 16));
  *(v0 + 72) = &unk_10024F780;
  *(v0 + 48) = v13;
  *(v0 + 56) = v14;
  *(v0 + 64) = v12;
  sub_10016BB10(v13, v14, v12);
  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v0 + 48);
  _StringGuts.grow(_:)(35);
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;
  v16._object = 0x80000001001FEFE0;
  v16._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v16);
  *(v0 + 368) = *v15;
  *(v0 + 376) = v15[1];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1001C1D1C();
  *(v0 + 384) = v15[2];
  swift_bridgeObjectRetain_n();
  sub_1001C1D1C();
  v17 = Set.description.getter();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x646F6D20726F6620;
  v21._object = 0xEB00000000203A65;
  String.append(_:)(v21);
  *(v0 + 152) = v74;
  *(v0 + 160) = v72;
  _print_unlocked<A, B>(_:_:)();
  v22 = *(v0 + 136);
  v23 = *(v0 + 144);
  *(v0 + 104) = &type metadata for String;
  *(v0 + 80) = v22;
  *(v0 + 88) = v23;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 80);
  v24 = static os_log_type_t.info.getter();
  sub_1000036B0(v24);

  sub_1001C1D1C();
  sub_1001C1D1C();
  v26 = v25;
  sub_10016BB4C(v25, v72, v25);
  if (v76)
  {
    v28 = *(v0 + 312);
    v27 = *(v0 + 320);
    v29 = *(v0 + 272);
    v31 = *(v0 + 248);
    v30 = *(v0 + 256);
    v32 = *(v0 + 240);
    v78 = *(v0 + 264);
    v81 = *(v0 + 232);
    v33 = *(v0 + 168);

    swift_unknownObjectRelease();

    sub_100006EE8();
    sub_10016BC50(v32, v34);
    (*(v30 + 8))(v78, v31);
    sub_10016BC50(v81, v26);
    v35 = *(v0 + 264);
    v36 = *(v0 + 232);
    v37 = *(v0 + 240);
    v39 = *(v0 + 216);
    v38 = *(v0 + 224);
    v41 = *(v0 + 192);
    v40 = *(v0 + 200);

    sub_100002D8C();
    sub_100012AFC();

    __asm { BRAA            X1, X16 }
  }

  v44 = v80;
  v79 = *(v80 + 16);
  if (!v79)
  {
LABEL_20:
    *(v0 + 392) = _swiftEmptyDictionarySingleton;
    v66 = swift_task_alloc();
    *(v0 + 400) = v66;
    *v66 = v0;
    v66[1] = sub_10016A78C;
    v67 = *(v0 + 320);
    sub_100012AFC();

    return sub_10014C558(v68);
  }

  v45 = 0;
  v75 = *(v0 + 208);
  v77 = *(v0 + 224);
  v73 = v80 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
  while (1)
  {
    if (v45 >= *(v44 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v47 = *(v0 + 216);
    v46 = *(v0 + 224);
    v48 = *(v75 + 72);
    sub_10016BBE8(v73 + v48 * v45, v46, type metadata accessor for MercuryCacheMetadata);
    v49 = *v46;
    v50 = *(v77 + 8);
    sub_10016BBE8(v46, v47, type metadata accessor for MercuryCacheMetadata);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = sub_100012A94();
    v54 = _swiftEmptyDictionarySingleton[2];
    v55 = (v53 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_27;
    }

    v57 = v52;
    v58 = v53;
    sub_10007B9A4(&qword_10026EBA0, &qword_1001EE4F8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v56))
    {
      break;
    }

LABEL_15:
    v61 = *(v0 + 216);
    if (v58)
    {
      sub_10015DD5C(v61, _swiftEmptyDictionarySingleton[7] + v57 * v48);
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v57 >> 6) + 8] |= 1 << v57;
      v62 = (_swiftEmptyDictionarySingleton[6] + 16 * v57);
      *v62 = v49;
      v62[1] = v50;
      sub_10015DCF8(v61, _swiftEmptyDictionarySingleton[7] + v57 * v48);
      v63 = _swiftEmptyDictionarySingleton[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_28;
      }

      _swiftEmptyDictionarySingleton[2] = v65;
    }

    ++v45;
    sub_10016BC50(*(v0 + 224), type metadata accessor for MercuryCacheMetadata);
    v44 = v80;
    if (v79 == v45)
    {
      goto LABEL_20;
    }
  }

  v59 = sub_100012A94();
  if ((v58 & 1) == (v60 & 1))
  {
    v57 = v59;
    goto LABEL_15;
  }

  sub_100012AFC();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_10016A78C()
{
  sub_1000061B4();
  v1 = *v0;
  v2 = *v0;
  sub_100002D20();
  *v3 = v2;
  v4 = *(v1 + 400);
  v5 = *v0;
  *v3 = *v0;
  *(v2 + 408) = v6;

  v7 = swift_task_alloc();
  *(v2 + 416) = v7;
  *v7 = v5;
  v7[1] = sub_10016A8C8;
  v8 = *(v1 + 320);

  return sub_10014BDEC(v8);
}

uint64_t sub_10016A8C8()
{
  sub_1000061B4();
  v1 = *v0;
  v2 = *v0;
  sub_100002D20();
  *v3 = v2;
  v4 = *(v1 + 416);
  v5 = *v0;
  sub_100002D98();
  *v6 = v5;
  *(v2 + 424) = v7;

  v8 = swift_task_alloc();
  *(v2 + 432) = v8;
  *v8 = v5;
  v8[1] = sub_10016AA08;
  v9 = *(v1 + 320);

  return sub_10014C1A8(v9);
}

uint64_t sub_10016AA08()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  v4 = *(v3 + 432);
  v5 = *v0;
  sub_100002D20();
  *v6 = v5;
  *(v7 + 440) = v8;

  v9 = sub_1000033A0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10016AAEC()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 272);
  v5 = *(v0 + 176);
  v7 = *(v5 + 80);
  v6 = *(v5 + 88);

  sub_1001C1D1C();

  sub_1001C1D1C();
  v9 = v8;
  *(v0 + 448) = v8;
  v10 = *(v6 + 8);
  v17 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 456) = v12;
  *v12 = v0;
  v12[1] = sub_10016AC6C;
  v13 = *(v0 + 320);
  v14 = *(v0 + 168);
  v15 = *(v0 + 161);

  return v17(v4, v13, v9, v14, v15, v7, v6);
}

uint64_t sub_10016AC6C()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v3[14] = v1;
  v3[15] = v5;
  v3[16] = v0;
  v7 = *(v6 + 456);
  v8 = *v1;
  sub_100002D20();
  *v9 = v8;
  v3[58] = v0;

  if (v0)
  {
    v10 = sub_10016B3CC;
  }

  else
  {
    v11 = v3[56];

    v10 = sub_10016AD7C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10016AD7C()
{
  sub_1000061B4();
  sub_10000ACA0();

  sub_100004CBC();
  sub_1001C1D1C();

  sub_1001C1D1C();
  *(v0 + 472) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v0 + 480) = v4;
  *v4 = v0;
  v5 = sub_100004AAC(v4);

  return sub_1001687FC(v5);
}

uint64_t sub_10016AE3C()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 480);
  v3 = *(v1 + 472);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;

  v6 = sub_1000033A0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10016AF3C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 440);
  v22 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 392);
  sub_1000065E8();
  v7 = *(v0 + 232);
  v8 = *(v0 + 200);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  if (v11)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  v13 = *v12;
  *(v0 + 488) = v1;
  v14 = v9[6];
  v15 = v13;
  v21 = *(v0 + 280);
  sub_100007C8C();
  sub_10016BBE8(v7, v8 + v14, v16);
  v17 = v8 + v9[9];
  static Date.now.getter();
  sub_1000262E4(v10 + 16, v8 + v9[11]);
  *v8 = v15;
  v8[1] = v4;
  *(v8 + v9[7]) = v3;
  *(v8 + v9[8]) = v22;
  *(v8 + v9[10]) = v2;
  *(v8 + v9[12]) = v21;
  swift_unknownObjectRetain();
  v18 = swift_task_alloc();
  *(v0 + 496) = v18;
  *v18 = v0;
  v18[1] = sub_10016B0AC;
  v19 = *(v0 + 200);

  return sub_100155534();
}

uint64_t sub_10016B0AC()
{
  sub_100004768();
  sub_1000056A8();
  v2 = v1[62];
  v3 = v1[61];
  v4 = v1[25];
  v5 = *v0;
  sub_100002D20();
  *v6 = v5;

  sub_10000C16C();
  sub_10016BC50(v4, v7);
  v8 = sub_1000033A0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10016B1CC()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[31];
  v6 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v14 = v0[27];
  v15 = v0[25];
  v16 = v0[24];
  v10 = v0[21];
  swift_unknownObjectRelease();

  sub_100006EE8();
  sub_10016BC50(v7, v11);
  (*(v6 + 8))(v4, v5);
  sub_10016BC50(v8, v10);

  sub_100002D8C();

  return v12();
}

uint64_t sub_10016B2EC()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[21];
  swift_unknownObjectRelease();

  v8 = *(v6 + 8);
  v9 = sub_100004CBC();
  v10(v9);
  v11 = v0[42];
  sub_100005A1C();

  sub_100002D8C();

  return v12();
}

uint64_t sub_10016B3CC()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 440);
  v4 = *(v0 + 424);
  v5 = *(v0 + 408);
  v6 = *(v0 + 392);
  sub_1000065E8();
  v9 = *(v0 + 232);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 176);
  if (v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = v8;
  }

  v15 = *v14;
  v24 = *(v0 + 280);

  v16 = _convertErrorToNSError(_:)();
  sub_10016BBB0();

  v17 = v11[6];
  v18 = v15;
  sub_100007C8C();
  sub_10016BBE8(v9, v10 + v17, v19);
  v20 = v10 + v11[9];
  static Date.now.getter();
  sub_1000262E4(v12 + 16, v10 + v11[11]);
  *v10 = v18;
  v10[1] = v6;
  *(v10 + v11[7]) = v5;
  *(v10 + v11[8]) = v4;
  *(v10 + v11[10]) = v3;
  *(v10 + v11[12]) = v24;
  swift_unknownObjectRetain();
  v21 = swift_task_alloc();
  *(v0 + 504) = v21;
  *v21 = v0;
  v21[1] = sub_10016B558;
  v22 = *(v0 + 192);

  return sub_100155C50();
}

uint64_t sub_10016B558()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 504);
  v3 = *(v1 + 192);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;

  sub_10000C16C();
  sub_10016BC50(v3, v6);
  v7 = sub_1000033A0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10016B65C()
{
  sub_1000061B4();
  sub_10000ACA0();

  sub_100004CBC();
  sub_1001C1D1C();

  sub_1001C1D1C();
  *(v0 + 512) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v0 + 520) = v4;
  *v4 = v0;
  v5 = sub_100004AAC(v4);

  return sub_1001687FC(v5);
}

uint64_t sub_10016B71C()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 520);
  v3 = *(v1 + 512);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;

  v6 = sub_1000033A0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10016B81C()
{
  v1 = v0[58];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[30];
  v14 = v0[29];
  v9 = v0[21];
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_100006EE8();
  sub_10016BC50(v8, v10);
  (*(v7 + 8))(v4, v6);
  sub_10016BC50(v14, v3);
  v11 = v0[58];
  sub_100005A1C();

  sub_100002D8C();

  return v12();
}

uint64_t sub_10016B938()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026F290 = qword_100287880;
}

void *sub_10016B99C()
{
  v1 = *(v0 + 136);
  if (*(v0 + 152))
  {
    v2 = v1;
    return v1;
  }

  else
  {
    v4 = *(v0 + 144);
    v5 = (*(*(v0 + 72) + 8))([v1 integerValue], *(v0 + 64), *(v0 + 72));
    v6 = sub_100004CBC();
    sub_10016BA80(v6, v7, 0);
    return v5;
  }
}

unint64_t sub_10016BA2C()
{
  result = qword_10026F298;
  if (!qword_10026F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F298);
  }

  return result;
}

void sub_10016BA80(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

id sub_10016BB10(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

void sub_10016BB4C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (!*(a3 + 16))
    {
      sub_10016BA2C();
      swift_allocError();
      *v3 = 4;
      swift_willThrow();
    }
  }
}

uint64_t sub_10016BBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016BC50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MercuryCacheUpdateTask.UpdateError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10016BD94(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_10016BDD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10016BE50()
{
  result = qword_10026F2A0;
  if (!qword_10026F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F2A0);
  }

  return result;
}

void sub_10016BEA4(uint64_t a1)
{
  v3 = [objc_allocWithZone(AMSEngagementPushEvent) init];
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001E61B0;
  *(v2 + 32) = a1;

  sub_1000F4BC0(v2, v3);
  type metadata accessor for MessageEventNotifier();
  sub_10016BF94(v3);
}

uint64_t sub_10016BF94(uint64_t a1)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v1 = *(type metadata accessor for LogInterpolation() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v24 = xmmword_1001E5F70;
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v4 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for MessageEventNotifier();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v5 = static os_log_type_t.debug.getter();
    sub_1000036B0(v5);

    if (qword_100268608 != -1)
    {
      swift_once();
    }

    sub_10009D914();
    if (!*(v6 + 16))
    {
      break;
    }

    v7 = v6 + 64;
    v8 = 1 << *(v6 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v6 + 64);
    v11 = (v8 + 63) >> 6;
    v23 = v6;

    v12 = 0;
    while (v10)
    {
      v13 = v12;
LABEL_13:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v13 << 6);
      LODWORD(v24) = *(*(v23 + 48) + 4 * v15);
      v16 = *(*(v23 + 56) + 8 * v15);
      *(swift_allocObject() + 16) = xmmword_1001E6580;
      swift_unknownObjectRetain();
      v17 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v26 = &type metadata for Int32;
      v25[0] = v24;
      static LogInterpolation.safe(_:)();
      sub_100002C5C(v25);
      LogInterpolation.init(stringLiteral:)();
      v18 = static os_log_type_t.debug.getter();
      sub_1000036B0(v18);

      [v16 handlePushedEvent:a1];
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  *(swift_allocObject() + 16) = v24;
  v20 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v21 = static os_log_type_t.default.getter();
  sub_1000036B0(v21);
}

BOOL sub_10016C470()
{
  v0 = type metadata accessor for Date();
  v1 = sub_100002CC4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_1000056E8();
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  sub_10016C978();
  sub_10016C588();
  Date.addingTimeInterval(_:)();
  v9 = *(v3 + 8);
  v10 = sub_100003B80();
  v9(v10);
  Date.timeIntervalSinceNow.getter();
  (v9)(v8, v0);
  return (Double.sign.getter() & 1) == 0;
}

double sub_10016C588()
{
  v1 = v0;
  v2 = v0[4];
  sub_100004810();
  v3 = String._bridgeToObjectiveC()();
  v4 = sub_10003AF3C();
  v6 = [v4 v5];

  v7 = [v6 valuePromise];
  v22[0] = 0;
  v8 = [v7 resultWithError:v22];

  if (v8)
  {
    v9 = v22[0];
    [v8 doubleValue];
    v11 = v10;

    v6 = v8;
  }

  else
  {
    v12 = v22[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100268700 != -1)
    {
      sub_100006F00();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_10000A610();
    v13 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v13);
    v15 = *(v14 + 72);
    sub_1000056F8();
    *(sub_100003BB4() + 16) = xmmword_1001E5F60;
    v23 = type metadata accessor for MetricsIdentifierCloudDataController();
    v22[0] = v1;

    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v22);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v23 = v21;
    sub_100017E64(v22);
    sub_1000047A4(v21);
    (*(v18 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v22, &qword_10026D350, &qword_1001E6050);
    v19 = static os_log_type_t.debug.getter();
    sub_1000036B0(v19);

    v11 = 21600.0;
  }

  return v11;
}

uint64_t sub_10016C8A0()
{
  Date.timeIntervalSince1970.getter();
  v1 = [objc_opt_self() standardUserDefaults];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v5];

  v6 = type metadata accessor for Date();
  sub_1000047A4(v6);
  v8 = *(v7 + 8);
  v9 = sub_100003E78();

  return v10(v9);
}

uint64_t sub_10016C978()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = String._bridgeToObjectiveC()();
  [v1 doubleForKey:v4];
  v6 = v5;

  v7.n128_u64[0] = v6;

  return Date.init(timeIntervalSince1970:)(v7);
}

void sub_10016CA10()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = sub_10016D2A4();
  v12 = v11;
  if (!v3)
  {
    if (!v11)
    {
LABEL_35:
      sub_100005F14();
      return;
    }

    if (qword_100268700 != -1)
    {
      sub_100006F00();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v15 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v15);
    v17 = *(v16 + 72);
    sub_1000056F8();
    *(sub_100004968() + 16) = xmmword_1001E5F70;
    v18 = type metadata accessor for MetricsIdentifierCloudDataController();
    sub_10000727C(v18);
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100015A00();
    }

    else
    {
      sub_10000A640();
    }

    sub_10005AE20();

    sub_100002C00(v46);
    LogInterpolation.init(stringLiteral:)();
    v30 = static os_log_type_t.info.getter();
    sub_1000036B0(v30);

LABEL_24:

    if (qword_100268700 != -1)
    {
      sub_100006F00();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v31 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v31);
    v33 = *(v32 + 72);
    sub_1000056F8();
    *(sub_100004968() + 16) = xmmword_1001E5F70;
    v34 = type metadata accessor for MetricsIdentifierCloudDataController();
    sub_10000727C(v34);
    v35 = AMSLogKey();
    if (v35)
    {
      v36 = v35;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100015A00();
    }

    else
    {
      sub_10000A640();
    }

    sub_10005AE20();

    sub_100002C00(v46);
    LogInterpolation.init(stringLiteral:)();
    v37 = static os_log_type_t.info.getter();
    sub_1000036B0(v37);

    sub_10016CFC0();
    v38 = [sub_1000437F4() privateDatabase];
    swift_unknownObjectRelease();
    if (qword_1002687C0 != -1)
    {
      sub_100003424();
    }

    [v38 persistChangedRecordsChangeToken:0 forRecordZoneIdentifier:{qword_10026F3F8, v45}];
    swift_unknownObjectRelease();
LABEL_32:
    v39 = [objc_opt_self() standardUserDefaults];
    if (v3)
    {
      String._bridgeToObjectiveC()();
    }

    v40 = *(v1 + 168);
    v41 = *(v1 + 176);
    v42 = String._bridgeToObjectiveC()();
    v43 = sub_100061E90();
    [v43 v44];

    swift_unknownObjectRelease();
    sub_10016D34C(0);
    goto LABEL_35;
  }

  if (!v11 || (v10 == v5 ? (v13 = v11 == v3) : (v13 = 0), !v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (qword_100268700 != -1)
    {
      sub_100006F00();
    }

    v45 = v5;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v21 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v21);
    v23 = *(v22 + 72);
    sub_1000056F8();
    *(sub_100004968() + 16) = xmmword_1001E5F70;
    v24 = type metadata accessor for MetricsIdentifierCloudDataController();
    sub_10000727C(v24);
    v25 = AMSLogKey();
    if (v25)
    {
      v26 = v25;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v46);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._countAndFlagsBits = 0xD000000000000038;
    v27._object = 0x80000001001FFE30;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
    v46[3] = &type metadata for String;
    v46[0] = v5;
    v46[1] = v3;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v46, &qword_10026D350, &qword_1001E6050);
    v28._countAndFlagsBits = 46;
    v28._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    LogInterpolation.init(stringInterpolation:)();
    v29 = static os_log_type_t.info.getter();
    sub_1000036B0(v29);

    if (!v12)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  sub_100005F14();
}

uint64_t sub_10016CFC0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v31 - v6;
  v8 = [objc_opt_self() defaultManager];
  sub_1001CCA58();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v35 = 0;
  v34 = v8;
  v12 = [v8 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:1 error:&v35];

  v13 = v35;
  if (v12)
  {
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v13;

    v16 = *(v14 + 16);
    if (v16)
    {
      v32 = v7;
      v33 = v1;
      v19 = *(v1 + 16);
      v18 = v1 + 16;
      v17 = v19;
      v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
      v31[1] = v14;
      v21 = v14 + v20;
      v22 = *(v18 + 56);
      do
      {
        v17(v5, v21, v0);
        URL._bridgeToObjectiveC()(v23);
        v25 = v24;
        v35 = 0;
        v26 = [v34 removeItemAtURL:v24 error:&v35];

        if (v26)
        {
          v27 = v35;
        }

        else
        {
          v28 = v35;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        (*(v18 - 8))(v5, v0);
        v21 += v22;
        --v16;
      }

      while (v16);

      v7 = v32;
      v1 = v33;
    }

    else
    {
    }
  }

  else
  {
    v29 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  [objc_opt_self() clearSyncState];

  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_10016D2A4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v1 stringForKey:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_10016D34C(char a1)
{
  v3 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  v7 = String._bridgeToObjectiveC()();
  [v3 setValue:isa forKey:v7];

  if ((a1 & 1) == 0)
  {

    sub_10016D47C();
  }
}

id sub_10016D408()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_10003AF3C();
  v7 = [v5 v6];

  return v7;
}

void sub_10016D47C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v5];
}

id sub_10016D51C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_10003AF3C();
  v7 = [v5 v6];

  return v7;
}

uint64_t sub_10016D590()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100177A3C();
  }

  return result;
}

uint64_t sub_10016D624()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (sub_10016C470())
    {
      if (qword_100268700 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v2 = *(type metadata accessor for LogInterpolation() - 8);
      v3 = *(v2 + 72);
      v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v8[3] = type metadata accessor for MetricsIdentifierCloudDataController();
      v8[0] = v1;

      v5 = AMSLogKey();
      if (v5)
      {
        v6 = v5;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v8);
      LogInterpolation.init(stringLiteral:)();
      v7 = static os_log_type_t.info.getter();
      sub_1000036B0(v7);
    }

    else
    {

      sub_100177A3C();
    }
  }

  return result;
}

void sub_10016D838()
{
  sub_100003F74();
  sub_10016D8E8();
  if ((v0 & 1) == 0)
  {

    sub_100177A3C();
  }
}

void sub_10016D8E8()
{
  sub_100003D74();
  v1 = v0;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  sub_10000C79C();
  if ((static DeviceDetails.deviceIsRunningInternalBuild()() & 1) != 0 && [objc_opt_self() autoSyncDisabledForMetricsIdentifierStore] && (v1 & 1) == 0)
  {
    if (qword_100268700 != -1)
    {
      sub_100006F00();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v6 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v6);
    v15 = *(v7 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v8 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for MetricsIdentifierCloudDataController();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._countAndFlagsBits = 0x676E697070696B53;
    v9._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100006898();
    v10._countAndFlagsBits = 0xD000000000000018;
    v10._object = 0x80000001001FFD60;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100006898();
    sub_100004810();
    v11._countAndFlagsBits = 0xD000000000000016;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100006898();
    v12._countAndFlagsBits = 0x6C61756E616D202CLL;
    v12._object = 0xEF203A636E797320;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v13 = sub_100006898();
    sub_100003B48(v13);
    LogInterpolation.init(stringInterpolation:)();
    v14 = static os_log_type_t.default.getter();
    sub_1000036B0(v14);
  }

  sub_100005F14();
}

id sub_10016DBC4(uint64_t a1)
{
  if (sub_10016C470())
  {
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v2 = *(type metadata accessor for LogInterpolation() - 8);
    v3 = *(v2 + 72);
    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v19 = type metadata accessor for MetricsIdentifierCloudDataController();
    v18[0] = a1;

    v5 = AMSLogKey();
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v18);
    LogInterpolation.init(stringLiteral:)();
    v12 = static os_log_type_t.info.getter();
    sub_1000036B0(v12);

    v13 = [objc_opt_self() promiseWithSuccess];

    return v13;
  }

  else
  {
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = *(type metadata accessor for LogInterpolation() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v19 = type metadata accessor for MetricsIdentifierCloudDataController();
    v18[0] = a1;

    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v18);
    LogInterpolation.init(stringLiteral:)();
    v15 = static os_log_type_t.info.getter();
    sub_1000036B0(v15);

    [objc_opt_self() cleanupIdentifiers];
    sub_100002BC0(0, &qword_10026F918, AMSBinaryPromise_ptr);
    sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001EED80;
    *(v16 + 32) = sub_100172EA0();
    sub_10016ED98();
    *(v16 + 40) = v17;
    return sub_10016DFA0();
  }
}

id sub_10016DFA0()
{
  sub_100002BC0(0, &qword_10026F918, AMSBinaryPromise_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() promiseWithFlattenedPromises:isa];

  return v1;
}

void sub_10016E024()
{
  sub_100003F74();
  sub_10016D8E8();
  if ((v1 & 1) == 0)
  {
    if (qword_100268700 != -1)
    {
      sub_100006F00();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_10000A610();
    v2 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v2);
    v4 = *(v3 + 72);
    sub_1000056F8();
    *(sub_100003BB4() + 16) = xmmword_1001E5F70;
    type metadata accessor for MetricsIdentifierCloudDataController();
    sub_100005D24();
    v5 = AMSLogKey();
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v11);
    LogInterpolation.init(stringLiteral:)();
    v7 = static os_log_type_t.debug.getter();
    sub_1000036B0(v7);

    v8 = *(v0 + 136);

    v9 = sub_100004CBC();
    sub_10007B9A4(v9, v10);
    sub_1000076B8(&qword_100269F80);
    Subject<>.send()();
  }
}

void sub_10016E220(char a1)
{
  sub_100003F74();
  sub_10016D8E8();
  if ((v3 & 1) == 0)
  {
    if (qword_100268700 != -1)
    {
      sub_100006F00();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v4 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v4);
    v6 = *(v5 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    type metadata accessor for MetricsIdentifierCloudDataController();
    sub_100005D24();
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v13);
    LogInterpolation.init(stringLiteral:)();
    v9 = static os_log_type_t.debug.getter();
    sub_1000036B0(v9);

    *(v1 + 56) = a1 & 1;
    v10 = *(v1 + 88);

    v11 = sub_100004CBC();
    sub_10007B9A4(v11, v12);
    sub_1000076B8(&qword_100269F80);
    Subject<>.send()();
  }
}

id sub_10016E440(void *a1, char a2)
{
  if (qword_1002687C0 != -1)
  {
    sub_100003424();
  }

  v5 = [qword_10026F3F8 name];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [a1 createRecordZoneWithRecordZoneName:v5];

  if (a2)
  {
    v7 = [objc_opt_self() promiseWithResult:v6];
    swift_unknownObjectRelease();
    return v7;
  }

  else
  {
    v9 = [a1 saveRecordZone:v6];
    sub_100002FB8();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    *(v10 + 24) = a1;
    v14[4] = sub_1001793B4;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1001794CC;
    v14[3] = &unk_100250780;
    v11 = _Block_copy(v14);

    swift_unknownObjectRetain();

    v12 = sub_100029420();
    [v12 v13];
    _Block_release(v11);
    swift_unknownObjectRelease();
    return v9;
  }
}

void sub_10016E610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10016D34C(1);
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  ObjectType = type metadata accessor for MetricsIdentifierCloudDataController();
  v14[0] = a2;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v14);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x80000001001FFD40;
  v11._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  ObjectType = swift_getObjectType();
  v14[0] = a1;
  swift_unknownObjectRetain();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v14, &qword_10026D350, &qword_1001E6050);
  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  LogInterpolation.init(stringInterpolation:)();
  v13 = static os_log_type_t.info.getter();
  sub_1000036B0(v13);

  sub_10016E884();
}

void sub_10016E884()
{
  v1 = v0;
  if (qword_1002687C0 != -1)
  {
    sub_100003424();
  }

  v2 = qword_10026F3F8;
  _StringGuts.grow(_:)(39);

  v3 = [v2 name];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x7069726373627553;
  v8._object = 0xEC0000006E6F6974;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();

  v10 = sub_100029420();
  v12 = [v10 v11];

  sub_100002FB8();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v2;
  v18[4] = sub_100179354;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100099934;
  v18[3] = &unk_100250730;
  v14 = _Block_copy(v18);
  v15 = v2;

  v16 = sub_100061E90();
  [v16 v17];
  _Block_release(v14);
}

void sub_10016EA88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  if (a2)
  {
    swift_errorRetain();
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = *(type metadata accessor for LogInterpolation() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v22 = type metadata accessor for MetricsIdentifierCloudDataController();
    v21[0] = a3;

    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v21);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._object = 0x80000001001FFCD0;
    v14._countAndFlagsBits = 0xD000000000000036;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
    v22 = sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
    v21[0] = a4;
    v15 = a4;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v21, &qword_10026D350, &qword_1001E6050);
    v16._countAndFlagsBits = 0x20726F72726520;
    v16._object = 0xE700000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    swift_getErrorValue();
    v22 = v20;
    v17 = sub_100017E64(v21);
    (*(*(v20 - 8) + 16))(v17);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v21, &qword_10026D350, &qword_1001E6050);
    v18._countAndFlagsBits = 46;
    v18._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    LogInterpolation.init(stringInterpolation:)();
    v19 = static os_log_type_t.error.getter();
    sub_1000036B0(v19);
  }

  else
  {
    sub_10016D47C();
  }
}

void sub_10016ED98()
{
  sub_100004988();
  v1 = v0;
  v70 = v2;
  sub_100003F74();
  v4 = v3;
  v5 = type metadata accessor for OSSignposter();
  v6 = sub_100002CC4(v5);
  v68 = v7;
  v69 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_1000056E8();
  v72 = (v10 - v11);
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  v15 = type metadata accessor for OSSignpostID();
  v16 = sub_100002CC4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_1000056E8();
  v67 = v21 - v22;
  __chkstk_darwin(v23);
  v25 = &v65 - v24;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = sub_100002CC4(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_100002DEC();
  sub_10000C79C();
  v32 = v0[16];
  *v0 = v32;
  (*(v29 + 104))(v0, enum case for DispatchPredicate.onQueue(_:), v26);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v34 = *(v29 + 8);
  v35 = sub_100008FE8();
  v36(v35);
  if (v32)
  {
    v65 = v4;
    v71 = v15;
    if (qword_100268700 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100006F00();
LABEL_3:
  v66 = v18;
  v37 = qword_100287860;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v38 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v38);
  v40 = *(v39 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v76 = type metadata accessor for MetricsIdentifierCloudDataController();
  v73 = v0;

  v41 = AMSLogKey();
  if (v41)
  {
    v42 = v41;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v73);
  LogInterpolation.init(stringLiteral:)();
  v43 = static os_log_type_t.info.getter();
  sub_1000036B0(v43);

  v44 = *(v37 + 16);
  OSSignposter.init(logHandle:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v45 = v69;
  v46 = *(v68 + 8);
  v46(v14, v69);
  v47 = *(v37 + 16);
  OSSignposter.init(logHandle:)();
  v48 = OSSignposter.logHandle.getter();
  v49 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v50 = sub_1001794D8();
    *v50 = 0;
    v51 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, v49, v51, "MetricsIdentifier", "Fetching changes from cloud", v50, 2u);
    sub_100058340();
  }

  v52 = v66;
  (*(v66 + 16))(v67, v25, v71);
  v53 = type metadata accessor for OSSignpostIntervalState();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = OSSignpostIntervalState.init(id:isOpen:)();
  v46(v72, v45);
  *(v0 + 80) = 0;
  sub_100171D04();
  v58 = v57;
  sub_100007A3C();
  v59 = swift_allocObject();
  v59[2] = v0;
  v59[3] = v56;
  v60 = v65;
  v59[4] = v65;
  v77 = sub_1001792E4;
  v78 = v59;
  v73 = _NSConcreteStackBlock;
  v74 = 1107296256;
  v75 = sub_1001794C8;
  v76 = &unk_100250578;
  v61 = _Block_copy(&v73);

  v62 = [v58 thenWithBlock:v61];
  _Block_release(v61);

  sub_100007A3C();
  v63 = swift_allocObject();
  v63[2] = v1;
  v63[3] = v56;
  v63[4] = v60;
  v77 = sub_1001792F0;
  v78 = v63;
  v73 = _NSConcreteStackBlock;
  v74 = 1107296256;
  v75 = sub_1000266E0;
  v76 = &unk_1002505C8;
  v64 = _Block_copy(&v73);

  [v62 addErrorBlock:v64];
  _Block_release(v64);
  [objc_opt_self() promiseWithPromise:v62];

  (*(v52 + 8))(v25, v71);
  sub_10000B16C();
}

id sub_10016F410(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1002687C0 != -1)
  {
    swift_once();
  }

  v8 = qword_10026F3F8;
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E8AB0;
  *(v9 + 32) = v8;
  v10 = v8;
  sub_10007B9A4(&qword_10026F938, &unk_1001EEEE0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [a1 fetchChangedRecordsInRecordZonesWithRecordZoneIdentifiers:isa];

  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = v10;
  v13[5] = a3;
  v13[6] = a4;
  v18[4] = sub_100179308;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1001794D4;
  v18[3] = &unk_100250640;
  v14 = _Block_copy(v18);
  v15 = v10;

  swift_unknownObjectRetain();

  v16 = [v12 continueWithBlock:v14];
  _Block_release(v14);

  return v16;
}

id sub_10016F608(void *a1, void *a2, void **a3, void *a4, void *a5, uint64_t a6)
{
  v91 = a6;
  v93 = a4;
  v94 = a3;
  v9 = type metadata accessor for OSSignpostError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OSSignpostID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OSSignposter();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v92 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (a2)
    {
      v27 = a2;
    }

    else
    {
      v72 = String._bridgeToObjectiveC()();
      v73 = String._bridgeToObjectiveC()();
      v27 = AMSError();
    }

    swift_errorRetain();
    sub_100170A94();
    v75 = v74;
    v76 = swift_allocObject();
    *(v76 + 16) = v27;
    v101 = sub_100179444;
    v102 = v76;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_100170204;
    v100 = &unk_100250690;
    v77 = _Block_copy(&aBlock);
    swift_errorRetain();

    v54 = [v75 continueWithPromiseBlock:v77];
    _Block_release(v77);

    return v54;
  }

  v84 = v13;
  v85 = v10;
  v86 = v9;
  v87 = v21;
  v23 = a1;
  v24 = sub_100179114(v23, &selRef_changedRecords);
  if (v24)
  {
    v25 = v24;
    v96 = a5;
    sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
    sub_1000437B4(&qword_10026F940, &unk_10026F8C0, CKRecordZoneID_ptr);
    v26 = a5;
    AnyHashable.init<A>(_:)();
    sub_1000AE378(&aBlock, v25);

    sub_10000E1E8(&aBlock);
  }

  v89 = v19;
  v28 = sub_100179114(v23, &selRef_deletedRecords);
  if (v28)
  {
    v29 = v28;
    v96 = a5;
    sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
    sub_1000437B4(&qword_10026F940, &unk_10026F8C0, CKRecordZoneID_ptr);
    v30 = a5;
    AnyHashable.init<A>(_:)();
    sub_1000AE378(&aBlock, v29);

    sub_10000E1E8(&aBlock);
  }

  v88 = v18;
  v31 = sub_100179114(v23, &selRef_errors);
  v90 = v15;
  if (v31)
  {
    v32 = v31;
    v96 = a5;
    sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
    sub_1000437B4(&qword_10026F940, &unk_10026F8C0, CKRecordZoneID_ptr);
    v33 = a5;
    AnyHashable.init<A>(_:)();
    sub_1000AA8E0(&aBlock, v32);

    sub_10000E1E8(&aBlock);
  }

  sub_100176D5C();

  v34 = sub_100179114(v23, &selRef_changeTokens);
  if (v34)
  {
    v35 = v34;
    v82 = v14;
    v83 = v23;
    v36 = v34 + 64;
    v37 = 1 << *(v34 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v34 + 64);
    v14 = (v37 + 63) >> 6;

    v40 = 0;
    if (v39)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v14)
      {

        v23 = v83;
        v14 = v82;
        goto LABEL_23;
      }

      v39 = *(v36 + 8 * v41);
      ++v40;
      if (v39)
      {
        v40 = v41;
        do
        {
LABEL_18:
          v42 = __clz(__rbit64(v39)) | (v40 << 6);
          sub_10000DF68(*(v35 + 48) + 40 * v42, &aBlock);
          v43 = *(*(v35 + 56) + 8 * v42);
          v102 = v43;
          v95 = a5;
          v23 = sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
          sub_1000437B4(&qword_10026F940, &unk_10026F8C0, CKRecordZoneID_ptr);
          v44 = a5;
          swift_unknownObjectRetain();
          AnyHashable.init<A>(_:)();
          v45 = static AnyHashable.== infix(_:_:)();
          sub_10000E1E8(&v96);
          if (v45)
          {
            [v93 persistChangedRecordsChangeToken:v43 forRecordZoneIdentifier:v44];
          }

          v39 &= v39 - 1;
          sub_100009FB0(&aBlock, &qword_10026F948, &qword_1001EEEF0);
        }

        while (v39);
      }
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_23:
  v46 = sub_100179114(v23, &selRef_errors);
  if (v46)
  {
    v47 = v46;
    v96 = a5;
    sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
    sub_1000437B4(&qword_10026F940, &unk_10026F8C0, CKRecordZoneID_ptr);
    v48 = a5;
    AnyHashable.init<A>(_:)();
    v49 = sub_1000AA8E0(&aBlock, v47);

    sub_10000E1E8(&aBlock);
    if (v49)
    {
      sub_100170A94();
      v51 = v50;
      v52 = swift_allocObject();
      *(v52 + 16) = v49;
      v101 = sub_100179444;
      v102 = v52;
      aBlock = _NSConcreteStackBlock;
      v98 = 1107296256;
      v99 = sub_100170204;
      v100 = &unk_1002506E0;
      v53 = _Block_copy(&aBlock);
      swift_errorRetain();

      v54 = [v51 continueWithPromiseBlock:v53];
      _Block_release(v53);

      return v54;
    }
  }

  if (qword_100268700 != -1)
  {
LABEL_39:
    swift_once();
  }

  v55 = qword_100287860;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v56 = *(type metadata accessor for LogInterpolation() - 8);
  v57 = *(v56 + 72);
  v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v100 = type metadata accessor for MetricsIdentifierCloudDataController();
  aBlock = v94;

  v59 = AMSLogKey();
  v60 = v92;
  if (v59)
  {
    v61 = v59;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v62 = v89;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&aBlock);
  LogInterpolation.init(stringLiteral:)();
  v63 = static os_log_type_t.info.getter();
  sub_1000036B0(v63);

  v64 = *(v55 + 16);
  OSSignposter.init(logHandle:)();
  v65 = OSSignposter.logHandle.getter();
  v66 = v88;
  OSSignpostIntervalState.signpostID.getter();
  v67 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v68 = v84;
    checkForErrorAndConsumeState(state:)();

    v69 = v85;
    v70 = v86;
    if ((*(v85 + 88))(v68, v86) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v71 = "[Error] Interval already ended";
    }

    else
    {
      (*(v69 + 8))(v68, v70);
      v71 = "Finished";
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, v67, v80, "MetricsIdentifier", v71, v79, 2u);
  }

  (*(v90 + 8))(v66, v14);
  (*(v87 + 8))(v60, v62);
  v81 = [objc_opt_self() promiseWithResult:v23];

  return v81;
}

id sub_100170204(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v8 = v6(a2, a3);

  return v8;
}

uint64_t sub_100170284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v51 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  __chkstk_darwin(v4);
  v60 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v61);
  v58 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for OSSignpostError();
  v49 = *(v50 - 8);
  v9 = *(v49 + 64);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for OSSignposter();
  v52 = *(v54 - 8);
  v14 = *(v52 + 64);
  __chkstk_darwin(v54);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LogInterpolation.StringInterpolation();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  v19 = qword_100287860;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v20 = *(type metadata accessor for LogInterpolation() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v66 = type metadata accessor for MetricsIdentifierCloudDataController();
  aBlock[0] = a2;

  v23 = AMSLogKey();
  if (v23)
  {
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(aBlock);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._object = 0x80000001001FFBC0;
  v25._countAndFlagsBits = 0xD000000000000043;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
  swift_getErrorValue();
  v26 = v69;
  v27 = v70;
  v66 = v70;
  v28 = sub_100017E64(aBlock);
  (*(*(v27 - 1) + 16))(v28, v26, v27);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(aBlock, &qword_10026D350, &qword_1001E6050);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
  LogInterpolation.init(stringInterpolation:)();
  v30 = static os_log_type_t.error.getter();
  sub_1000036B0(v30);

  v31 = *(v19 + 16);
  OSSignposter.init(logHandle:)();
  v32 = OSSignposter.logHandle.getter();
  v33 = v53;
  OSSignpostIntervalState.signpostID.getter();
  v34 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v35 = v48;
    checkForErrorAndConsumeState(state:)();

    v36 = v49;
    v37 = v50;
    if ((*(v49 + 88))(v35, v50) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v38 = "[Error] Interval already ended";
    }

    else
    {
      (*(v36 + 8))(v35, v37);
      v38 = "Failed";
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v34, v40, "MetricsIdentifier", v38, v39, 2u);
  }

  (*(v55 + 8))(v33, v56);
  (*(v52 + 8))(v16, v54);
  v41 = *(a2 + 128);
  v67 = sub_1001792FC;
  v68 = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  v66 = &unk_1002505F0;
  v42 = _Block_copy(aBlock);

  v43 = v41;
  v44 = v58;
  static DispatchQoS.unspecified.getter();
  v64 = _swiftEmptyArrayStorage;
  sub_100013B44(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004F4C0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  v45 = v60;
  v46 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);

  (*(v62 + 8))(v45, v46);
  (*(v59 + 8))(v44, v61);
}

void sub_100170A94()
{
  sub_100004988();
  v2 = v0;
  v4 = v3;
  v5 = *v0;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = _convertErrorToNSError(_:)();
  v11 = sub_1001714BC(26);
  v75 = v10;
  if (v11 || (v11 = sub_1001714BC(28)) != 0)
  {

    sub_100002FB8();
    v12 = swift_allocObject();
    sub_10000E728(v12);
    goto LABEL_4;
  }

  v24 = sub_1001714BC(112);
  v25 = v24;
  v26 = v24 != 0;
  if (v24)
  {
  }

  v27 = sub_1001714BC(2);
  if (!v27)
  {
    sub_100002FB8();
    v44 = swift_allocObject();
    sub_10000E728(v44);
    v45 = sub_1001792C4;
    if (!v25)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  v28 = v27;
  type metadata accessor for CKError(0);
  sub_100019D50();
  sub_100013B44(v29, v30);
  v31 = _BridgedStoredNSError.userInfo.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100052D94(v31, &v77);

  if (!v79)
  {

    sub_100009FB0(&v77, &qword_10026D350, &qword_1001E6050);
    sub_100002FB8();
    v46 = swift_allocObject();
    sub_10000E728(v46);
    v45 = sub_100179448;
    if (!v25)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  sub_10007B9A4(&qword_10026F8E8, &qword_1001EEEA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100002FB8();
    v47 = swift_allocObject();
    sub_10000E728(v47);
    v45 = sub_100179448;
    if (!v25)
    {
      goto LABEL_47;
    }

LABEL_37:
    v72 = v45;
LABEL_38:
    v73 = v4;
    v74 = v1;
    v48 = qword_100268700;

    if (v48 != -1)
    {
LABEL_49:
      sub_100006F00();
    }

    v49 = qword_100287860;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v50 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v50);
    v52 = *(v51 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v79 = type metadata accessor for MetricsIdentifierCloudDataController();
    *&v77 = v2;

    v53 = AMSLogKey();
    if (v53)
    {
      v54 = v53;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v77);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v55._object = 0x80000001001FFA50;
    v55._countAndFlagsBits = 0xD000000000000017;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    v79 = sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
    *&v77 = v75;
    v56 = v75;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(&v77, &qword_10026D350, &qword_1001E6050);
    v57._countAndFlagsBits = 0xD000000000000052;
    v57._object = 0x80000001001FFA70;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v57);
    LogInterpolation.init(stringInterpolation:)();
    v58 = static os_log_type_t.error.getter();
    sub_1000036B0(v58);

    sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
    sub_100007A3C();
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1001E8AB0;
    if (qword_1002687C0 != -1)
    {
      sub_100003424();
    }

    v60 = qword_10026F3F8;
    *(v59 + 32) = qword_10026F3F8;
    v61 = v60;
    sub_10007B9A4(&qword_10026F938, &unk_1001EEEE0);
    sub_100003E78();
    Array._bridgeToObjectiveC()();
    sub_100017FBC();

    v62 = [v73 deleteRecordZonesWithRecordZoneIdentifiers:v49];

    v80 = sub_1001792CC;
    v81 = v2;
    *&v77 = _NSConcreteStackBlock;
    *(&v77 + 1) = 1107296256;
    v78 = sub_100014380;
    v79 = &unk_100250410;
    v63 = _Block_copy(&v77);

    v64 = sub_1000167D8();
    v66 = [v64 v65];
    _Block_release(v63);

    sub_100002FB8();
    v67 = swift_allocObject();
    v67[2] = v72;
    v67[3] = v74;
    v80 = sub_1001792D4;
    v81 = v67;
    *&v77 = _NSConcreteStackBlock;
    *(&v77 + 1) = 1107296256;
    v78 = sub_1001794C8;
    v79 = &unk_100250460;
    v68 = _Block_copy(&v77);

    v69 = sub_10003AF3C();
    v20 = [v69 v70];
    _Block_release(v68);

    [objc_opt_self() promiseWithPromise:v20];
    goto LABEL_9;
  }

  v72 = v5;
  v73 = v4;
  v32 = *(v76 + 64);
  v33 = *(v76 + 32);
  sub_100004E5C();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;

  v39 = 0;
  LODWORD(v74) = 0;
  if (!v36)
  {
    goto LABEL_16;
  }

  do
  {
LABEL_20:
    v41 = __clz(__rbit64(v36)) | (v39 << 6);
    sub_10000DF68(*(v76 + 48) + 40 * v41, &v77);
    v81 = *(*(v76 + 56) + 8 * v41);
    v42 = v81;
    if ((v74 & 1) == 0)
    {
      v43 = sub_1001714BC(26);
      if (v43 || (v43 = sub_1001714BC(28)) != 0)
      {
        LODWORD(v74) = 1;
LABEL_28:

        goto LABEL_29;
      }
    }

    if (v26)
    {
      v26 = 1;
      goto LABEL_29;
    }

    v43 = sub_1001714BC(112);
    if (v43)
    {
      v26 = 1;
      goto LABEL_28;
    }

    v26 = 0;
LABEL_29:
    v36 &= v36 - 1;
    sub_100009FB0(&v77, &unk_10026F8F0, &unk_1001EEEA8);
  }

  while (v36);
  while (1)
  {
LABEL_16:
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v40 >= v38)
    {
      break;
    }

    v36 = *(v76 + 64 + 8 * v40);
    ++v39;
    if (v36)
    {
      v39 = v40;
      goto LABEL_20;
    }
  }

  sub_100002FB8();
  v1 = swift_allocObject();
  *(v1 + 16) = v2;
  *(v1 + 24) = v72;
  if (v26)
  {
    v72 = sub_100179448;
    goto LABEL_38;
  }

  if ((v74 & 1) == 0)
  {
LABEL_47:
    v71 = objc_opt_self();

    [v71 promiseWithSuccess];
    v20 = v75;
    goto LABEL_9;
  }

LABEL_4:
  v13 = qword_100268700;

  if (v13 != -1)
  {
    sub_100006F00();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v14 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v14);
  v16 = *(v15 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v79 = type metadata accessor for MetricsIdentifierCloudDataController();
  *&v77 = v2;

  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v77);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0xD00000000000002FLL;
  v19._object = 0x80000001001FFAE0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  v79 = sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
  *&v77 = v75;
  v20 = v75;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v77, &qword_10026D350, &qword_1001E6050);
  v21._countAndFlagsBits = 0xD00000000000003FLL;
  v21._object = 0x80000001001FFB10;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  LogInterpolation.init(stringInterpolation:)();
  v22 = static os_log_type_t.error.getter();
  sub_1000036B0(v22);

  v23 = sub_100004CBC();
  sub_1001715C4(v23);
  [objc_opt_self() promiseWithSuccess];
LABEL_9:

  sub_10000B16C();
}

id sub_1001714BC(uint64_t a1)
{
  if ([v1 ams_hasDomain:CKErrorDomain code:a1])
  {
    sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
    type metadata accessor for CKError(0);
    v3 = v1;
  }

  else
  {
    result = [v1 ams_underlyingErrorWithDomain:CKErrorDomain code:a1];
    if (!result)
    {
      return result;
    }

    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    type metadata accessor for CKError(0);
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001715C4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016D34C(0);
  sub_10016CFC0();
  v10 = [sub_1000437F4() privateDatabase];
  swift_unknownObjectRelease();
  [v10 persistChangedRecordZonesChangeToken:0];
  swift_unknownObjectRelease();
  v11 = [*(a1 + 48) privateDatabase];
  if (qword_1002687C0 != -1)
  {
    swift_once();
  }

  [v11 persistChangedRecordsChangeToken:0 forRecordZoneIdentifier:qword_10026F3F8];
  swift_unknownObjectRelease();
  v12 = *(a1 + 128);
  aBlock[4] = sub_1001792DC;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100250528;
  v13 = _Block_copy(aBlock);
  v14 = v12;

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100013B44(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004F4C0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v5, v2);
  (*(v6 + 8))(v9, v17);
}

void sub_100171954(uint64_t a1)
{
  v1 = *(a1 + 64);
  *(a1 + 64) = 0;

  sub_10016E024();
}

id sub_100171984(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = *(type metadata accessor for LogInterpolation() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v19 = type metadata accessor for MetricsIdentifierCloudDataController();
  v18[0] = a2;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v18);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001001FFB50;
  v10._countAndFlagsBits = 0xD000000000000040;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v19 = v17;
  v11 = sub_100017E64(v18);
  (*(*(v17 - 8) + 16))(v11);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v18, &qword_10026D350, &qword_1001E6050);
  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  LogInterpolation.init(stringInterpolation:)();
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13);

  v14 = _convertErrorToNSError(_:)();
  v15 = [objc_opt_self() promiseWithError:v14];

  return v15;
}

id sub_100171C4C(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = [objc_opt_self() promiseWithResult:a1];

  return v3;
}

void (*sub_100171CA8(uint64_t a1))(uint64_t)
{
  sub_10000A1D8(a1);
  v2 = swift_unknownObjectRetain();
  v1(v2);
  sub_100017FBC();

  swift_unknownObjectRelease();

  return v1;
}

void sub_100171D04()
{
  sub_100004988();
  v1 = v0;
  v58 = v2;
  v3 = type metadata accessor for OSSignposter();
  v4 = sub_100002CC4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_1000056E8();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v57 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = sub_100002CC4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100002DEC();
  v23 = v22 - v21;
  v24 = *(v1 + 128);
  *(v22 - v21) = v24;
  (*(v18 + 104))(v22 - v21, enum case for DispatchPredicate.onQueue(_:), v15);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v23, v15);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = *(v1 + 64);
  if (v26)
  {
    v27 = qword_100268700;
    v26;
    if (v27 == -1)
    {
LABEL_4:
      v28 = *(qword_100287860 + 16);
      OSSignposter.init(logHandle:)();
      v29 = OSSignposter.logHandle.getter();
      v30 = static os_signpost_type_t.event.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v31 = sub_1001794D8();
        *v31 = 0;
        v32 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v32, "MetricsIdentifier", "Re-using cloud database", v31, 2u);
        sub_100058340();
      }

      (*(v6 + 8))(v14, v3);
      goto LABEL_12;
    }

LABEL_14:
    sub_100006F00();
    goto LABEL_4;
  }

  if (qword_100268700 != -1)
  {
    sub_100006F00();
  }

  v33 = *(qword_100287860 + 16);
  OSSignposter.init(logHandle:)();
  v34 = OSSignposter.logHandle.getter();
  v35 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v36 = sub_1001794D8();
    *v36 = 0;
    v37 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v35, v37, "MetricsIdentifier", "Preparing database", v36, 2u);
    sub_100058340();
  }

  (*(v6 + 8))(v11, v3);
  v38 = [objc_allocWithZone(AMSMutablePromise) init];
  v39 = *(v1 + 64);
  *(v1 + 64) = v38;
  v40 = v38;

  sub_100002FB8();
  v41 = swift_allocObject();
  *(v41 + 16) = v1;
  *(v41 + 24) = v40;
  v63 = sub_10017923C;
  v64 = v41;
  v59 = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_1000266E0;
  v62 = &unk_100250280;
  v42 = _Block_copy(&v59);
  v43 = v40;

  v44 = sub_100029420();
  [v44 v45];
  _Block_release(v42);
  v46 = [sub_1000437F4() queryDeviceToDeviceEncryptionAvailability];
  swift_unknownObjectRelease();
  v47 = [*(v1 + 48) fetchUserRecordID];
  v48 = [*(v1 + 48) privateDatabase];
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1001EED80;
  *(v49 + 32) = v46;
  *(v49 + 40) = v47;
  v50 = v46;
  v51 = v47;
  sub_10007B9A4(&unk_10026F928, &unk_1001EEED0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v53 = [objc_opt_self() promiseWithAll:isa timeout:30.0];

  v54 = swift_allocObject();
  *(v54 + 16) = v58 & 1;
  *(v54 + 24) = v1;
  *(v54 + 32) = v43;
  *(v54 + 40) = v48;
  v63 = sub_100179244;
  v64 = v54;
  v59 = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_1001794D0;
  v62 = &unk_1002502D0;
  v55 = _Block_copy(&v59);
  v56 = v43;

  swift_unknownObjectRetain();

  [v53 addFinishBlock:v55];
  swift_unknownObjectRelease();

  _Block_release(v55);
LABEL_12:
  sub_10000B16C();
}

uint64_t sub_1001722D8(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v30);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v29 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v27 = *(a2 + 128);
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v13 + 8);
  v28(v17, v12);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1001792BC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_1002503C0;
  v22 = _Block_copy(aBlock);
  v23 = a3;

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100013B44(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004F4C0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  v24 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v27;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v33 + 8))(v7, v24);
  (*(v31 + 8))(v11, v32);
  v28(v19, v29);
}

void sub_1001726D0(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 64);
    v4 = v3;

    if (v3)
    {
      sub_10007B9A4(&unk_10026F928, &unk_1001EEED0);
      v5 = a1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        swift_beginAccess();
        v7 = swift_weakLoadStrong();
        if (v7)
        {
          v8 = *(v7 + 64);
          *(v7 + 64) = 0;
        }
      }
    }
  }
}

void sub_1001727B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  if (a3)
  {
    v9 = sub_10016E440(a6, 1);
    v10 = swift_allocObject();
    *(v10 + 16) = a5;
    *(v10 + 24) = a6;
    v37 = sub_100179440;
    v38 = v10;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1001794D0;
    v36 = &unk_100250370;
    v11 = _Block_copy(&aBlock);
    v12 = a5;
    swift_unknownObjectRetain();

    [v9 addFinishBlock:v11];
    v13 = v11;
LABEL_3:
    _Block_release(v13);
LABEL_4:

    return;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15 || (v16 = v15, [v15 count] != 2))
  {
    swift_unknownObjectRelease();
LABEL_11:
    if (a2)
    {
      v20 = _convertErrorToNSError(_:)();
      v21 = sub_1001714BC(9);
      if (v21)
      {

        v22 = *(a4 + 112);

        [v22 lock];
        sub_10016CA10();
        [v22 unlock];
      }

      else
      {
      }
    }

    else
    {
      v23 = String._bridgeToObjectiveC()();
      v24 = String._bridgeToObjectiveC()();
      AMSError();
    }

    swift_errorRetain();
    v25 = _convertErrorToNSError(_:)();
    [a5 finishWithError:v25];

    return;
  }

  v17 = [v16 objectAtIndexedSubscript:0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  swift_dynamicCast();
  v18 = v39;
  v19 = [v39 integerValue];
  if ((v19 & 1) == 0 || (v19 & 2) == 0)
  {
    v26 = String._bridgeToObjectiveC()();
    v27 = String._bridgeToObjectiveC()();
    v28 = AMSError();

    v9 = _convertErrorToNSError(_:)();
    [a5 finishWithError:v9];
    swift_unknownObjectRelease();

    goto LABEL_4;
  }

  v29 = [v16 objectAtIndexedSubscript:1];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10007B9A4(&qword_10026F920, &qword_1001EEEC8);
  swift_dynamicCast();

  swift_unknownObjectRetain();
  sub_1001778E8(a4, a4, v39);
  if ((sub_10016D408() & 1) == 0)
  {
    v9 = sub_10016E440(a6, 0);
    v30 = swift_allocObject();
    *(v30 + 16) = a5;
    *(v30 + 24) = a6;
    v37 = sub_100179254;
    v38 = v30;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1001794D0;
    v36 = &unk_100250320;
    v31 = _Block_copy(&aBlock);
    v32 = a5;
    swift_unknownObjectRetain();

    [v9 addFinishBlock:v31];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v13 = v31;
    goto LABEL_3;
  }

  if ((sub_10016D51C() & 1) == 0)
  {
    sub_10016E884();
  }

  [a5 finishWithResult:a6];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

id sub_100172D88(int a1, uint64_t a2, id a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
    v5 = sub_1000167D8();
    [v5 v6];
  }

  else
  {

    return [a3 finishWithResult:a4];
  }
}

uint64_t sub_100172E24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  swift_unknownObjectRetain();
  v6 = a3;
  v7 = sub_100003B80();
  v5(v7);

  return swift_unknownObjectRelease();
}

id sub_100172EA0()
{
  v1 = v0;
  if (qword_100268700 != -1)
  {
    sub_100006F00();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v5 = *(v4 + 80);
  v6 = *(v3 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v7 = type metadata accessor for MetricsIdentifierCloudDataController();
  v29 = v7;
  aBlock = v1;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100015A00();
  }

  else
  {
    sub_10000A640();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&aBlock);
  LogInterpolation.init(stringLiteral:)();
  v10 = static os_log_type_t.info.getter();
  sub_1000036B0(v10);

  v11 = swift_allocObject();
  v11[1] = xmmword_1001E5F70;
  v29 = v7;
  aBlock = v1;

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100015C40();

  sub_100002C00(&aBlock);
  LogInterpolation.init(stringLiteral:)();
  v14 = static os_log_type_t.debug.getter();
  sub_1000036B0(v14);

  v15 = [objc_allocWithZone(AMSMutableBinaryPromise) init];
  v16 = v1[13];
  sub_100002FB8();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v15;
  v30 = sub_100179218;
  v31 = v17;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100173630;
  v29 = &unk_100250190;
  _Block_copy(&aBlock);
  sub_10000A76C();
  v18 = v16;
  v19 = v15;
  sub_100017DF8();

  [v18 fetchModifiedRecordsWithCompletion:v11];
  _Block_release(v11);

  v30 = sub_100179220;
  v31 = v1;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100005E50;
  v29 = &unk_1002501B8;
  _Block_copy(&aBlock);
  sub_10000A76C();
  v20 = v15;
  sub_100017DF8();

  v21 = sub_1000167D8();
  [v21 v22];
  _Block_release(v11);
  v30 = sub_100179228;
  v31 = v1;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000266E0;
  v29 = &unk_1002501E0;
  _Block_copy(&aBlock);
  sub_10000A76C();

  v23 = sub_1000167D8();
  [v23 v24];
  _Block_release(v11);

  return v15;
}

uint64_t sub_1001732CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 + 128);
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a4;
  v18[4] = a1;
  v18[5] = a2;
  aBlock[4] = sub_100179230;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100250230;
  v19 = _Block_copy(aBlock);

  v20 = v17;
  v21 = a5;

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100013B44(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004F4C0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

void sub_1001735CC(void *a1)
{
  sub_1001739C8();
  v3 = v2;
  [a1 finishWithPromise:v2];
}

uint64_t sub_100173630(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_10007B9A4(&unk_10026F900, &unk_1001EEEB8);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_10007B9A4(&qword_10026F920, &qword_1001EEEC8);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a4;
  v8(v6, a3, a4);
}

uint64_t sub_10017373C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = *(type metadata accessor for LogInterpolation() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v17 = type metadata accessor for MetricsIdentifierCloudDataController();
  v16[0] = a2;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v16);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001001FF8E0;
  v10._countAndFlagsBits = 0xD000000000000040;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v17 = v15;
  v11 = sub_100017E64(v16);
  (*(*(v15 - 8) + 16))(v11);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v16, &qword_10026D350, &qword_1001E6050);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  LogInterpolation.init(stringInterpolation:)();
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13);
}

void sub_1001739C8()
{
  sub_100004988();
  v54 = v2;
  v55 = v1;
  v3 = *v0;
  v52 = v0;
  v56 = v3;
  v4 = type metadata accessor for OSSignposter();
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1000056E8();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v57 = type metadata accessor for OSSignpostID();
  v16 = sub_100002CC4(v57);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_1000056E8();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  if (qword_100268700 != -1)
  {
    sub_100006F00();
  }

  v27 = qword_100287860;
  v28 = *(qword_100287860 + 16);
  OSSignposter.init(logHandle:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v29 = *(v7 + 8);
  v53 = v4;
  v29(v15, v4);
  v30 = *(v27 + 16);
  OSSignposter.init(logHandle:)();
  v31 = OSSignposter.logHandle.getter();
  v32 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v33 = sub_1001794D8();
    v50 = v18;
    v34 = v33;
    *v33 = 0;
    v35 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v32, v35, "MetricsIdentifier", "Syncing changes to cloud", v34, 2u);
    v18 = v50;
    sub_100058340();
  }

  v36 = *(v18 + 16);
  v51 = v26;
  v36(v23, v26, v57);
  v37 = type metadata accessor for OSSignpostIntervalState();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = OSSignpostIntervalState.init(id:isOpen:)();
  v29(v12, v53);
  v41 = v52;
  sub_100171D04();
  v43 = v42;
  sub_100007A3C();
  v44 = swift_allocObject();
  v45 = v54;
  v44[2] = v55;
  v44[3] = v45;
  v44[4] = v41;
  v62 = sub_1001790F0;
  v63 = v44;
  v58 = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_1001794C8;
  v61 = &unk_10024FFB0;
  v46 = _Block_copy(&v58);

  v47 = [v43 thenWithBlock:v46];
  _Block_release(v46);

  sub_100007A3C();
  v48 = swift_allocObject();
  v48[2] = v41;
  v48[3] = v40;
  v48[4] = v56;
  v62 = sub_1001790FC;
  v63 = v48;
  v58 = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_1001794D0;
  v61 = &unk_100250000;
  v49 = _Block_copy(&v58);

  [v47 addFinishBlock:v49];
  _Block_release(v49);
  [objc_opt_self() promiseWithPromise:v47];

  (*(v18 + 8))(v51, v57);
  sub_10000B16C();
}

uint64_t sub_100173E5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = *(a4 + 112);

  v58 = v9;
  [v9 lock];
  v60 = v8;
  v61 = v7;
  if (!a2)
  {
    v29 = 0;
LABEL_20:
    *(v7 + 16) = v29;

    v31 = *(v8 + 16);
    if (v31)
    {
      v65 = sub_100049574(v31);

      swift_beginAccess();
      v32 = 0;
      v63 = v31 & 0xC000000000000001;
LABEL_22:
      while (v32 != v65)
      {
        sub_1000F1168(v32, v63 == 0, v31);
        if (v63)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v33 = result;
        }

        else
        {
          v33 = *(v31 + 32 + 8 * v32);
          result = swift_unknownObjectRetain();
        }

        v14 = __OFADD__(v32++, 1);
        if (v14)
        {
          goto LABEL_46;
        }

        v34 = a4;
        v35 = *(a4 + 120);

        v36 = [v33 name];
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        if (*(v35 + 16))
        {
          v40 = *(v35 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v41 = Hasher._finalize()();
          v42 = ~(-1 << *(v35 + 32));
          while (1)
          {
            v43 = v41 & v42;
            if (((*(v35 + 56 + (((v41 & v42) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v42)) & 1) == 0)
            {
              break;
            }

            v44 = (*(v35 + 48) + 16 * v43);
            if (*v44 != v37 || v44[1] != v39)
            {
              v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v41 = v43 + 1;
              if ((v46 & 1) == 0)
              {
                continue;
              }
            }

            swift_unknownObjectRelease();
            a4 = v34;
            goto LABEL_22;
          }
        }

        v47 = [v33 name];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        a4 = v34;
        swift_beginAccess();
        sub_1000190C0();
        swift_endAccess();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v48 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v49 = _swiftEmptyArrayStorage;
      v8 = v60;
      v7 = v61;
      v50 = *(v60 + 16);
    }

    else
    {
      v49 = 0;
    }

    *(v8 + 16) = v49;

    [v58 unlock];
    if (*(v7 + 16))
    {
      v51 = *(v7 + 16);

      sub_10007B9A4(&unk_10026F900, &unk_1001EEEB8);
      v52.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (v49)
      {
LABEL_41:

        sub_10007B9A4(&qword_10026F920, &qword_1001EEEC8);
        v53.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_44:
        v54 = [a1 addRecordsToSave:v52.super.isa recordIdentifiersToDelete:v53.super.isa];

        v55 = swift_allocObject();
        v55[2] = a4;
        v55[3] = v7;
        v55[4] = v8;
        v55[5] = a1;
        aBlock[4] = sub_100179108;
        aBlock[5] = v55;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001794D4;
        aBlock[3] = &unk_1002500A0;
        v56 = _Block_copy(aBlock);

        swift_unknownObjectRetain();

        v57 = [v54 continueWithBlock:v56];
        _Block_release(v56);

        return v57;
      }
    }

    else
    {
      v52.super.isa = 0;
      if (v49)
      {
        goto LABEL_41;
      }
    }

    v53.super.isa = 0;
    goto LABEL_44;
  }

  v62 = sub_100049574(a2);

  v64 = a4;
  swift_beginAccess();
  v10 = 0;
  v11 = a2 & 0xC000000000000001;
  while (1)
  {
LABEL_3:
    if (v10 == v62)
    {

      a4 = v64;
      v29 = _swiftEmptyArrayStorage;
      v8 = v60;
      v7 = v61;
      v30 = *(v61 + 16);
      goto LABEL_20;
    }

    sub_1000F1168(v10, v11 == 0, a2);
    if (v11)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = result;
    }

    else
    {
      v12 = *(a2 + 32 + 8 * v10);
      result = swift_unknownObjectRetain();
    }

    v14 = __OFADD__(v10++, 1);
    if (v14)
    {
      break;
    }

    v15 = *(v64 + 120);

    v16 = [objc_msgSend(v12 "identifier")];
    swift_unknownObjectRelease();
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (*(v15 + 16))
    {
      v20 = *(v15 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = ~(-1 << *(v15 + 32));
      while (1)
      {
        v23 = v21 & v22;
        if (((*(v15 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {
          break;
        }

        v24 = (*(v15 + 48) + 16 * v23);
        if (*v24 != v17 || v24[1] != v19)
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v21 = v23 + 1;
          if ((v26 & 1) == 0)
          {
            continue;
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_3;
      }
    }

    v27 = [objc_msgSend(v12 "identifier")];
    swift_unknownObjectRelease();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1000190C0();
    swift_endAccess();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v28 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}