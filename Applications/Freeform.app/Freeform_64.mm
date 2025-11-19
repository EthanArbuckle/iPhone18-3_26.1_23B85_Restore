void sub_10097EE7C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

unint64_t sub_10097EFE8(uint64_t (*a1)(unint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v29 = a1;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v26 = a4 & 0xFFFFFFFFFFFFFFLL;
  v25 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = 15;
  while (1)
  {
    v11 = v10 & 0xC;
    v12 = (v10 & 1) == 0 || v11 == v9;
    v13 = v12;
    if (!v12)
    {
      break;
    }

    result = v10;
    if (v11 == v9)
    {
      result = sub_100AE6694(v10, a3, a4);
    }

    v15 = result >> 16;
    if (result >> 16 >= v5)
    {
      goto LABEL_62;
    }

    if ((result & 1) == 0)
    {
      v15 = sub_100BD43DC(result, a3, a4) >> 16;
    }

LABEL_24:
    if ((a4 & 0x1000000000000000) != 0)
    {
      v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v27 = a3;
        v28 = v26;
        v17 = &v27 + v15;
      }

      else
      {
        v16 = v25;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v16 = _StringObject.sharedUTF8.getter();
        }

        v17 = (v16 + v15);
      }

      v18 = *v17;
      if (*v17 < 0)
      {
        v22 = (__clz(v18 ^ 0xFF) - 24);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            v18 = ((v18 & 0xF) << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3F;
          }

          else
          {
            v18 = ((v18 & 0xF) << 18) | ((v17[1] & 0x3F) << 12) | ((v17[2] & 0x3F) << 6) | v17[3] & 0x3F;
          }
        }

        else if (v22 != 1)
        {
          v18 = v17[1] & 0x3F | ((v18 & 0x1F) << 6);
        }
      }
    }

    LODWORD(v27) = v18;
    result = v29(&v27);
    if (v4 || (result & 1) != 0)
    {
      return v10;
    }

    if (v13)
    {
      if (v11 == v9)
      {
        result = sub_100AE6694(v10, a3, a4);
        v10 = result;
        if (v5 <= result >> 16)
        {
          goto LABEL_63;
        }
      }

      else if (v5 <= v10 >> 16)
      {
        goto LABEL_63;
      }

      if ((v10 & 1) == 0)
      {
        v10 = v10 & 0xC | sub_100BD43DC(v10, a3, a4) & 0xFFFFFFFFFFFFFFF3 | 1;
      }
    }

    else if (v5 <= v10 >> 16)
    {
      goto LABEL_64;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v10 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v19 = v10 >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v27 = a3;
        v28 = v26;
        v21 = *(&v27 + v19);
      }

      else
      {
        v20 = v25;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v20 = _StringObject.sharedUTF8.getter();
        }

        v21 = *(v20 + v19);
      }

      v23 = v21;
      v24 = __clz(v21 ^ 0xFF) - 24;
      if (v23 >= 0)
      {
        LOBYTE(v24) = 1;
      }

      v10 = ((v19 + v24) << 16) | 5;
    }

    if (4 * v5 == v10 >> 14)
    {
      return 0;
    }
  }

  v15 = v10 >> 16;
  result = v10;
  if (v10 >> 16 < v5)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_10097F360(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_10097F450(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(sub_1005B981C(&qword_1019F6E18) - 8);
    v9 = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_10097F55C(uint64_t *a1, double a2, double a3)
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_10113E268(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_10098C504(v10, a2, a3);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_10097F5F0(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  v130 = a7;
  v129 = a6;
  v132 = a4;
  v128 = a2;
  v127 = a1;
  v15 = a10;
  v16 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v16 - 8);
  v18 = &v123 - v17;
  v19 = sub_101130608(a11, a9);
  v21 = sub_10097E5A0(v19, v20);

  v22 = *(v21 + 16);
  v133 = v18;
  if (v22)
  {
    v126 = a8;
    v125 = a5;
    v23 = 0;
    v24 = v21 + 32;
    v136 = _swiftEmptyArrayStorage;
    v134 = v21 + 32;
    v137 = v21;
    do
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
LABEL_65:
        __break(1u);

        __break(1u);
        return result;
      }

      sub_10000630C(v24, &v138);
      v25 = v139;
      v26 = v140;
      sub_100020E58(&v138, v139);
      if ((*(*(v26 + 16) + 8))(v25))
      {
        sub_100050F74(&v138, &v149);
        v27 = v136;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v145 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1007767E4(0, v27[2] + 1, 1);
          v27 = v145;
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          sub_1007767E4((v29 > 1), v30 + 1, 1);
          v27 = v145;
        }

        v27[2] = v30 + 1;
        v136 = v27;
        sub_100050F74(&v149, &v27[5 * v30 + 4]);
        v21 = v137;
      }

      else
      {
        sub_100005070(&v138);
      }

      ++v23;
      v24 += 40;
    }

    while (v22 != v23);
    v31 = 0;
    v32 = _swiftEmptyArrayStorage;
    v33 = v134;
    do
    {
      if (v31 >= *(v137 + 16))
      {
        goto LABEL_65;
      }

      v34 = v32;
      sub_10000630C(v33, &v138);
      v35 = v139;
      v36 = v140;
      sub_100020E58(&v138, v139);
      (*(v36 + 88))(&v149, v35, v36);
      v37 = v150;
      v38 = v151;
      sub_100020E58(&v149, v150);
      v39 = (*(v38 + 184))(v37, v38);
      sub_100005070(&v149);
      if (v39)
      {
        sub_100005070(&v138);
        v32 = v34;
      }

      else
      {
        sub_100050F74(&v138, &v149);
        v32 = v34;
        v40 = swift_isUniquelyReferenced_nonNull_native();
        *&v145 = v34;
        if ((v40 & 1) == 0)
        {
          sub_1007767E4(0, v34[2] + 1, 1);
          v32 = v145;
        }

        v42 = v32[2];
        v41 = v32[3];
        if (v42 >= v41 >> 1)
        {
          sub_1007767E4((v41 > 1), v42 + 1, 1);
          v32 = v145;
        }

        v32[2] = v42 + 1;
        sub_100050F74(&v149, &v32[5 * v42 + 4]);
      }

      ++v31;
      v33 += 40;
    }

    while (v22 != v31);
    v124 = v32;
    if ((a3 & 1) == 0)
    {
      a5 = v125;
      v21 = v137;
      v107 = v124;
      a8 = v126;
      v18 = v133;
      goto LABEL_60;
    }

    v131 = a10;
    v43 = 0;
    v21 = v137;
    v44 = v134;
    v135 = v22;
    do
    {
      sub_10000630C(v44 + 40 * v43, &v149);
      v57 = v150;
      v58 = v151;
      sub_100020E58(&v149, v150);
      v59 = (*(v58 + 64))(v57, v58);
      if (v59)
      {
        v60 = v59;
        v61 = v150;
        v62 = v151;
        sub_100020E58(&v149, v150);
        (*(v62 + 88))(&v138, v61, v62);
        v63 = v139;
        v64 = v140;
        sub_100020E58(&v138, v139);
        v65 = (*(v64 + 80))(v63, v64);
        sub_100005070(&v138);
        v66 = *(v21 + 16);
        if (v66)
        {
          v67 = v44;
          v68 = _swiftEmptyArrayStorage;
          while (1)
          {
            sub_10000630C(v67, &v145);
            v69 = *(&v146 + 1);
            v70 = v147;
            sub_100020E58(&v145, *(&v146 + 1));
            v71 = (*(v70 + 64))(v69, v70);
            if (v71)
            {
              v72 = v71;
              sub_1009354E4();
              v73 = v60;
              v74 = static NSObject.== infix(_:_:)();

              if (v74)
              {
                v75 = *(&v146 + 1);
                v76 = v147;
                sub_100020E58(&v145, *(&v146 + 1));
                (*(v76 + 88))(&v142, v75, v76);
                v77 = v143;
                v78 = v144;
                sub_100020E58(&v142, v143);
                v79 = (*(v78 + 80))(v77, v78);
                v80 = sub_100B76520(v79);
                v82 = v81;
                if (v80 == sub_100B76520(v65) && v82 == v83)
                {

                  sub_100005070(&v142);
LABEL_42:
                  sub_100050F74(&v145, &v142);
                  v86 = swift_isUniquelyReferenced_nonNull_native();
                  v148 = v68;
                  if ((v86 & 1) == 0)
                  {
                    sub_1007767E4(0, v68[2] + 1, 1);
                    v68 = v148;
                  }

                  v88 = v68[2];
                  v87 = v68[3];
                  if (v88 >= v87 >> 1)
                  {
                    sub_1007767E4((v87 > 1), v88 + 1, 1);
                    v68 = v148;
                  }

                  v68[2] = v88 + 1;
                  sub_100050F74(&v142, &v68[5 * v88 + 4]);
                  goto LABEL_32;
                }

                v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

                sub_100005070(&v142);
                if (v85)
                {
                  goto LABEL_42;
                }
              }
            }

            sub_100005070(&v145);
LABEL_32:
            v67 += 40;
            if (!--v66)
            {
              goto LABEL_48;
            }
          }
        }

        v68 = _swiftEmptyArrayStorage;
LABEL_48:
        *&v145 = v68;

        sub_101137F0C(&v145);

        sub_10093524C(v145, &v138);

        v89 = v139;
        v21 = v137;
        v22 = v135;
        if (v139)
        {
          v90 = v140;
          sub_100020E58(&v138, v139);
          (*(v90 + 112))(&v145, v89, v90);
          sub_100005070(&v138);
        }

        else
        {
          sub_10000CAAC(&v138, &qword_1019F57A0);
          v145 = 0u;
          v146 = 0u;
        }

        v91 = objc_opt_self();
        [v91 begin];
        [v91 setDisableActions:1];
        v92 = v150;
        v93 = v151;
        sub_100020E58(&v149, v150);
        (*(v93 + 80))(&v138, v92, v93);
        v94 = v141;
        sub_10000CAAC(&v138, &unk_101A09F80);
        if (v94)
        {
          v95 = v150;
          v96 = v151;
          sub_100020E58(&v149, v150);
          v97 = v150;
          v98 = v151;
          sub_100020E58(&v149, v150);
          (*(v98 + 80))(&v138, v97, v98);
          v99 = (*(*(v96 + 8) + 16))(&v138, v95);
          sub_10000CAAC(&v138, &unk_101A09F80);
          sub_10000BE14(&v145, &v138, &unk_1019F4D00);
          v100 = v139;
          if (v139)
          {
            v101 = sub_100020E58(&v138, v139);
            v102 = *(v100 - 8);
            __chkstk_darwin(v101);
            v104 = &v123 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v102 + 16))(v104);
            v105 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v102 + 8))(v104, v100);
            sub_100005070(&v138);
          }

          else
          {
            v105 = 0;
          }

          [v99 setFromValue:v105];
          swift_unknownObjectRelease();
          sub_10000BE14(&v145, &v138, &unk_1019F4D00);
          v106 = v139;
          if (v139)
          {
            v45 = sub_100020E58(&v138, v139);
            v46 = *(v106 - 8);
            __chkstk_darwin(v45);
            v48 = &v123 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v46 + 16))(v48);
            v49 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v46 + 8))(v48, v106);
            sub_100005070(&v138);
          }

          else
          {
            v49 = 0;
          }

          v22 = v135;
          [v99 setToValue:v49];
          swift_unknownObjectRelease();
          [v99 setRemovedOnCompletion:0];
          v50 = v150;
          v51 = v151;
          sub_100020E58(&v149, v150);
          (*(v51 + 88))(&v138, v50, v51);
          v52 = v139;
          v53 = v140;
          sub_100020E58(&v138, v139);
          v54 = (*(v53 + 48))(v52, v53);
          sub_1011391B0(v54, v55);

          sub_100005070(&v138);
          v56 = String._bridgeToObjectiveC()();

          [v60 addAnimation:v99 forKey:v56];

          v21 = v137;
        }

        [v91 commit];

        sub_10000CAAC(&v145, &unk_1019F4D00);
        v44 = v134;
      }

      ++v43;
      sub_100005070(&v149);
    }

    while (v43 != v22);
    a8 = v126;
    v15 = v131;
    v18 = v133;
    a5 = v125;
    v108 = v136;
    v107 = v124;
    goto LABEL_62;
  }

  v107 = _swiftEmptyArrayStorage;
  v108 = _swiftEmptyArrayStorage;
  if (a3)
  {
LABEL_62:
    v131 = v15;
    v115 = type metadata accessor for TaskPriority();
    (*(*(v115 - 8) + 56))(v18, 1, 1, v115);
    type metadata accessor for MainActor();
    v116 = v132;
    sub_10067F2EC(v132);
    sub_10067F2EC(a8);
    v117 = a8;
    v118 = v129;
    v119 = v130;
    sub_10067F2EC(v129);
    v120 = static MainActor.shared.getter();
    v112 = swift_allocObject();
    *(v112 + 16) = v120;
    *(v112 + 24) = &protocol witness table for MainActor;
    *(v112 + 32) = v116;
    *(v112 + 40) = a5;
    *(v112 + 48) = v108;
    *(v112 + 56) = v107;
    *(v112 + 64) = v127;
    *(v112 + 72) = v128 & 1;
    v121 = v131;
    *(v112 + 80) = v117;
    *(v112 + 88) = v121;
    *(v112 + 96) = v21;
    *(v112 + 104) = v118;
    *(v112 + 112) = v119;
    v113 = &unk_101489BE0;
    v114 = v133;
    goto LABEL_63;
  }

LABEL_60:

  v109 = type metadata accessor for TaskPriority();
  (*(*(v109 - 8) + 56))(v18, 1, 1, v109);
  type metadata accessor for MainActor();
  v110 = v132;
  sub_10067F2EC(v132);
  sub_10067F2EC(a8);
  v111 = static MainActor.shared.getter();
  v112 = swift_allocObject();
  *(v112 + 16) = v111;
  *(v112 + 24) = &protocol witness table for MainActor;
  *(v112 + 32) = v110;
  *(v112 + 40) = a5;
  *(v112 + 48) = v107;
  *(v112 + 56) = v21;
  *(v112 + 64) = a8;
  *(v112 + 72) = a10;
  v113 = &unk_101489BD8;
  v114 = v18;
LABEL_63:
  sub_10064191C(0, 0, v114, v113, v112);
}

uint64_t sub_10098045C(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v129 = a7;
  v128 = a6;
  v131 = a4;
  v127 = a2;
  v126 = a1;
  v12 = a9;
  v13 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v13 - 8);
  v15 = &v122 - v14;
  v16 = sub_10112F1B4();
  v18 = sub_10097E5A0(v16, v17);

  v19 = *(v18 + 16);
  v132 = v15;
  if (v19)
  {
    v125 = a8;
    v124 = a5;
    v20 = 0;
    v21 = v18 + 32;
    v135 = _swiftEmptyArrayStorage;
    v133 = v18 + 32;
    v136 = v18;
    do
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
LABEL_65:
        __break(1u);

        __break(1u);
        return result;
      }

      sub_10000630C(v21, &v137);
      v22 = v138;
      v23 = v139;
      sub_100020E58(&v137, v138);
      if ((*(*(v23 + 16) + 8))(v22))
      {
        sub_100050F74(&v137, &v148);
        v24 = v135;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v144 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1007767E4(0, v24[2] + 1, 1);
          v24 = v144;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_1007767E4((v26 > 1), v27 + 1, 1);
          v24 = v144;
        }

        v24[2] = v27 + 1;
        v135 = v24;
        sub_100050F74(&v148, &v24[5 * v27 + 4]);
        v18 = v136;
      }

      else
      {
        sub_100005070(&v137);
      }

      ++v20;
      v21 += 40;
    }

    while (v19 != v20);
    v28 = 0;
    v29 = _swiftEmptyArrayStorage;
    v30 = v133;
    do
    {
      if (v28 >= *(v136 + 16))
      {
        goto LABEL_65;
      }

      v31 = v29;
      sub_10000630C(v30, &v137);
      v32 = v138;
      v33 = v139;
      sub_100020E58(&v137, v138);
      (*(v33 + 88))(&v148, v32, v33);
      v34 = v149;
      v35 = v150;
      sub_100020E58(&v148, v149);
      v36 = (*(v35 + 184))(v34, v35);
      sub_100005070(&v148);
      if (v36)
      {
        sub_100005070(&v137);
        v29 = v31;
      }

      else
      {
        sub_100050F74(&v137, &v148);
        v29 = v31;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *&v144 = v31;
        if ((v37 & 1) == 0)
        {
          sub_1007767E4(0, v31[2] + 1, 1);
          v29 = v144;
        }

        v39 = v29[2];
        v38 = v29[3];
        if (v39 >= v38 >> 1)
        {
          sub_1007767E4((v38 > 1), v39 + 1, 1);
          v29 = v144;
        }

        v29[2] = v39 + 1;
        sub_100050F74(&v148, &v29[5 * v39 + 4]);
      }

      ++v28;
      v30 += 40;
    }

    while (v19 != v28);
    v123 = v29;
    if ((a3 & 1) == 0)
    {
      a5 = v124;
      v18 = v136;
      v106 = v123;
      a8 = v125;
      v15 = v132;
      goto LABEL_60;
    }

    v130 = a9;
    v40 = 0;
    v18 = v136;
    v41 = v133;
    v134 = v19;
    do
    {
      sub_10000630C(v41 + 40 * v40, &v148);
      v55 = v149;
      v56 = v150;
      sub_100020E58(&v148, v149);
      v57 = (*(v56 + 64))(v55, v56);
      if (v57)
      {
        v58 = v57;
        v59 = v149;
        v60 = v150;
        sub_100020E58(&v148, v149);
        (*(v60 + 88))(&v137, v59, v60);
        v61 = v138;
        v62 = v139;
        sub_100020E58(&v137, v138);
        v63 = (*(v62 + 80))(v61, v62);
        sub_100005070(&v137);
        v64 = *(v18 + 16);
        if (v64)
        {
          v65 = v41;
          v66 = _swiftEmptyArrayStorage;
          while (1)
          {
            sub_10000630C(v65, &v144);
            v67 = *(&v145 + 1);
            v68 = v146;
            sub_100020E58(&v144, *(&v145 + 1));
            v69 = (*(v68 + 64))(v67, v68);
            if (v69)
            {
              v70 = v69;
              sub_1009354E4();
              v71 = v58;
              v72 = static NSObject.== infix(_:_:)();

              if (v72)
              {
                v73 = *(&v145 + 1);
                v74 = v146;
                sub_100020E58(&v144, *(&v145 + 1));
                (*(v74 + 88))(&v141, v73, v74);
                v75 = v142;
                v76 = v143;
                sub_100020E58(&v141, v142);
                v77 = (*(v76 + 80))(v75, v76);
                v78 = sub_100B76520(v77);
                v80 = v79;
                if (v78 == sub_100B76520(v63) && v80 == v81)
                {

                  sub_100005070(&v141);
LABEL_42:
                  sub_100050F74(&v144, &v141);
                  v84 = swift_isUniquelyReferenced_nonNull_native();
                  v147 = v66;
                  if ((v84 & 1) == 0)
                  {
                    sub_1007767E4(0, v66[2] + 1, 1);
                    v66 = v147;
                  }

                  v86 = v66[2];
                  v85 = v66[3];
                  if (v86 >= v85 >> 1)
                  {
                    sub_1007767E4((v85 > 1), v86 + 1, 1);
                    v66 = v147;
                  }

                  v66[2] = v86 + 1;
                  sub_100050F74(&v141, &v66[5 * v86 + 4]);
                  goto LABEL_32;
                }

                v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

                sub_100005070(&v141);
                if (v83)
                {
                  goto LABEL_42;
                }
              }
            }

            sub_100005070(&v144);
LABEL_32:
            v65 += 40;
            if (!--v64)
            {
              goto LABEL_48;
            }
          }
        }

        v66 = _swiftEmptyArrayStorage;
LABEL_48:
        *&v144 = v66;

        sub_101137F0C(&v144);

        sub_10093524C(v144, &v137);

        v87 = v138;
        v18 = v136;
        v19 = v134;
        if (v138)
        {
          v88 = v139;
          sub_100020E58(&v137, v138);
          (*(v88 + 112))(&v144, v87, v88);
          sub_100005070(&v137);
        }

        else
        {
          sub_10000CAAC(&v137, &qword_1019F57A0);
          v144 = 0u;
          v145 = 0u;
        }

        v89 = objc_opt_self();
        [v89 begin];
        [v89 setDisableActions:1];
        v90 = v149;
        v91 = v150;
        sub_100020E58(&v148, v149);
        (*(v91 + 80))(&v137, v90, v91);
        v92 = v140;
        sub_10000CAAC(&v137, &unk_101A09F80);
        if (v92)
        {
          v93 = v149;
          v94 = v150;
          sub_100020E58(&v148, v149);
          v95 = v149;
          v96 = v150;
          sub_100020E58(&v148, v149);
          (*(v96 + 80))(&v137, v95, v96);
          v97 = (*(*(v94 + 8) + 16))(&v137, v93);
          sub_10000CAAC(&v137, &unk_101A09F80);
          sub_10000BE14(&v144, &v137, &unk_1019F4D00);
          v98 = v138;
          if (v138)
          {
            v99 = sub_100020E58(&v137, v138);
            v100 = *(v98 - 8);
            v101 = __chkstk_darwin(v99);
            v103 = &v122 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v100 + 16))(v103, v101);
            v104 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v100 + 8))(v103, v98);
            sub_100005070(&v137);
          }

          else
          {
            v104 = 0;
          }

          [v97 setFromValue:v104];
          swift_unknownObjectRelease();
          sub_10000BE14(&v144, &v137, &unk_1019F4D00);
          v105 = v138;
          if (v138)
          {
            v42 = sub_100020E58(&v137, v138);
            v43 = *(v105 - 8);
            v44 = __chkstk_darwin(v42);
            v46 = &v122 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v43 + 16))(v46, v44);
            v47 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v43 + 8))(v46, v105);
            sub_100005070(&v137);
          }

          else
          {
            v47 = 0;
          }

          v19 = v134;
          [v97 setToValue:v47];
          swift_unknownObjectRelease();
          [v97 setRemovedOnCompletion:0];
          v48 = v149;
          v49 = v150;
          sub_100020E58(&v148, v149);
          (*(v49 + 88))(&v137, v48, v49);
          v50 = v138;
          v51 = v139;
          sub_100020E58(&v137, v138);
          v52 = (*(v51 + 48))(v50, v51);
          sub_1011391B0(v52, v53);

          sub_100005070(&v137);
          v54 = String._bridgeToObjectiveC()();

          [v58 addAnimation:v97 forKey:v54];

          v18 = v136;
        }

        [v89 commit];

        sub_10000CAAC(&v144, &unk_1019F4D00);
        v41 = v133;
      }

      ++v40;
      sub_100005070(&v148);
    }

    while (v40 != v19);
    a8 = v125;
    v12 = v130;
    v15 = v132;
    a5 = v124;
    v107 = v135;
    v106 = v123;
    goto LABEL_62;
  }

  v106 = _swiftEmptyArrayStorage;
  v107 = _swiftEmptyArrayStorage;
  if (a3)
  {
LABEL_62:
    v130 = v12;
    v114 = type metadata accessor for TaskPriority();
    (*(*(v114 - 8) + 56))(v15, 1, 1, v114);
    type metadata accessor for MainActor();
    v115 = v131;
    sub_10067F2EC(v131);
    sub_10067F2EC(a8);
    v116 = a8;
    v117 = v128;
    v118 = v129;
    sub_10067F2EC(v128);
    v119 = static MainActor.shared.getter();
    v111 = swift_allocObject();
    *(v111 + 16) = v119;
    *(v111 + 24) = &protocol witness table for MainActor;
    *(v111 + 32) = v115;
    *(v111 + 40) = a5;
    *(v111 + 48) = v107;
    *(v111 + 56) = v106;
    *(v111 + 64) = v126;
    *(v111 + 72) = v127 & 1;
    v120 = v130;
    *(v111 + 80) = v116;
    *(v111 + 88) = v120;
    *(v111 + 96) = v18;
    *(v111 + 104) = v117;
    *(v111 + 112) = v118;
    v112 = &unk_101489BF0;
    v113 = v132;
    goto LABEL_63;
  }

LABEL_60:

  v108 = type metadata accessor for TaskPriority();
  (*(*(v108 - 8) + 56))(v15, 1, 1, v108);
  type metadata accessor for MainActor();
  v109 = v131;
  sub_10067F2EC(v131);
  sub_10067F2EC(a8);
  v110 = static MainActor.shared.getter();
  v111 = swift_allocObject();
  *(v111 + 16) = v110;
  *(v111 + 24) = &protocol witness table for MainActor;
  *(v111 + 32) = v109;
  *(v111 + 40) = a5;
  *(v111 + 48) = v106;
  *(v111 + 56) = v18;
  *(v111 + 64) = a8;
  *(v111 + 72) = a9;
  v112 = &unk_101489BE8;
  v113 = v15;
LABEL_63:
  sub_10064191C(0, 0, v113, v112, v111);
}

void sub_1009812B0(uint64_t a1, void *a2)
{
  sub_1005B981C(&unk_1019F4D60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101465920;
  *(v5 + 32) = a1;
  swift_unknownObjectRetain();
  v6 = [a2 canvas];
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a2;
  v7[4] = 0;
  v7[5] = v2;
  v10[4] = sub_10067AC6C;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = *"";
  v10[2] = sub_100007638;
  v10[3] = &unk_10188EEB8;
  v8 = _Block_copy(v10);
  v9 = a2;

  [v6 afterLayoutIncludingLayers:1 performBlock:v8];
  _Block_release(v8);
}

uint64_t sub_10098164C(unint64_t a1, void *a2, void *a3)
{
  v128 = a3;
  v136 = type metadata accessor for CRLRepAnimation();
  v5 = __chkstk_darwin(v136);
  v126 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v125 = &v119 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v119 - v10;
  v12 = __chkstk_darwin(v9);
  v134 = &v119 - v13;
  __chkstk_darwin(v12);
  *&v133 = &v119 - v14;
  v135 = a1;
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  v15 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v16 = _swiftEmptyArrayStorage;
  v127 = a2;
  if (v15)
  {
    v17 = 0;
    v131 = v135 & 0xFFFFFFFFFFFFFF8;
    *&v132 = v135 & 0xC000000000000001;
    do
    {
      if (v132)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v17 >= *(v131 + 16))
        {
          goto LABEL_56;
        }

        v18 = *(v135 + 8 * v17 + 32);
        swift_unknownObjectRetain();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v15 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v20 = v16;
      v21 = [a2 repForInfo:v18];
      if (v21)
      {
        v22 = v21;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakAssign();
        v23 = qword_1019F4290;

        swift_unknownObjectRelease();
        v144 = v23 & 0xFFFFFFFFFFFFFFE7;
        sub_1005C4D58(&v143, v137);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100B356F8(0, v20[2] + 1, 1, v20);
        }

        v25 = v20[2];
        v24 = v20[3];
        v26 = v20;
        a2 = v127;
        if (v25 >= v24 >> 1)
        {
          v26 = sub_100B356F8((v24 > 1), v25 + 1, 1, v20);
        }

        v26[2] = v25 + 1;
        v16 = v26;
        sub_1005C4D58(v137, &v26[3 * v25 + 4]);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v17;
    }

    while (v19 != v15);
  }

  sub_1005B981C(&unk_101A23620);
  v27 = swift_allocObject();
  v28 = v27;
  *(v27 + 16) = xmmword_10146BDE0;
  v29 = v16[2];
  if (!v29)
  {
    *(v27 + 56) = &type metadata for CRLLayerAnimationGroup;
    *(v27 + 64) = &off_101885E50;
    v55 = _swiftEmptyArrayStorage;
    *(v27 + 32) = _swiftEmptyArrayStorage;
    *(v27 + 40) = 0;

    goto LABEL_54;
  }

  v120 = v16;
  v121 = v27;
  v30 = (v16 + 4);
  v31 = _swiftEmptyArrayStorage;
  *(&v32 + 1) = 0x3FC999999999999ALL;
  v124 = xmmword_10146D9F0;
  *&v32 = 131586;
  v132 = v32;
  v135 = (v16 + 4);
  v119 = v29;
  do
  {
    sub_1005C4D90(v30, v150);
    *&v143 = 0x3F80000000000000;
    v149 = 6;
    if (qword_1019F1E20 != -1)
    {
      swift_once();
    }

    v33 = qword_101AD7728;
    sub_1006C121C(&v143, &v137[0].d);
    *&v137[0].b = v124;
    *&v137[0].a = v33;
    v138 = 0;
    v139 = v132;
    sub_1005C4D90(v150, v11);
    *(v11 + 6) = &type metadata for CRLBasicLayerAnimation.Def;
    *(v11 + 7) = sub_1005F907C();
    v34 = swift_allocObject();
    *(v11 + 3) = v34;
    sub_1005F8AB8(v137, v34 + 16);
    v35 = v33;
    sub_100687CF4(&v143);
    v11[64] = 0;
    v36 = v136;
    v37 = *(v136 + 28);
    v38 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
    v39 = *(v38 - 8);
    v40 = *(v39 + 56);
    v41 = v39 + 56;
    v40(&v11[v37], 1, 1, v38);
    v42 = &v11[*(v36 + 32)];
    v130 = v40;
    v131 = v38;
    v129 = v41;
    v40(v42, 1, 1, v38);
    sub_1005F8B14(v137);
    v43 = v134;
    sub_100D673B0(v134, 0.01);
    sub_10098C698(v11, type metadata accessor for CRLRepAnimation);
    v44 = objc_allocWithZone(CAMediaTimingFunction);
    LODWORD(v45) = 0.25;
    LODWORD(v46) = 1.0;
    LODWORD(v47) = 1045220557;
    v48 = [v44 initWithControlPoints:v47 :0.0 :v45 :v46];
    sub_100D67A6C(v48, v133);

    sub_10098C698(v43, type metadata accessor for CRLRepAnimation);
    sub_1005C4DC8(v150);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_100B364B4(0, v31[2] + 1, 1, v31);
    }

    v50 = v31[2];
    v49 = v31[3];
    if (v50 >= v49 >> 1)
    {
      v31 = sub_100B364B4((v49 > 1), v50 + 1, 1, v31);
    }

    *&v137[0].d = v136;
    *&v137[0].tx = &off_1018A24A8;
    v51 = sub_10002C58C(v137);
    v52 = v133;
    sub_10098C630(v133, v51, type metadata accessor for CRLRepAnimation);
    v31[2] = v50 + 1;
    sub_100050F74(v137, &v31[5 * v50 + 4]);
    sub_10098C698(v52, type metadata accessor for CRLRepAnimation);
    v30 += 24;
    --v29;
  }

  while (v29);
  v53 = v121;
  v121[7] = &type metadata for CRLLayerAnimationGroup;
  v53[8] = &off_101885E50;
  v53[4] = v31;
  v53[5] = 0;
  v54 = 38.0;
  v55 = _swiftEmptyArrayStorage;
  v56 = 400.0;
  v133 = xmmword_101489B40;
  v124 = xmmword_1014861A0;
  v123 = xmmword_1014861B0;
  v57 = v119;
  v58 = v135;
  *&v122 = 400.0;
  do
  {
    sub_1005C4D90(v58, v150);
    v59 = 0.5;
    v135 = v58;
    if (!v128)
    {
      goto LABEL_45;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v61 = v127;
    if (!Strong)
    {
      goto LABEL_45;
    }

    v62 = Strong;
    v63 = v128;
    v64 = [v61 renderableForRep:v62];
    if (!v64 || (v65 = v64, v66 = [v64 layer], v65, !v66))
    {

LABEL_45:
      v95 = 0.5;
      goto LABEL_46;
    }

    [v63 headLineEndPoint];
    [v63 convertNaturalPointToUnscaledCanvas:?];
    [v62 convertNaturalPointFromUnscaledCanvas:?];
    v67 = v54;
    v69 = v68;
    v71 = v70;
    [v62 transformToConvertNaturalToLayerRelative];
    v151.x = v69;
    v151.y = v71;
    v72 = CGPointApplyAffineTransform(v151, v137);
    [v66 bounds];
    v74 = v73;
    v76 = v75;
    [v66 bounds];
    if (v77 > 0.001)
    {
      v78 = v77;
    }

    else
    {
      v78 = 0.001;
    }

    [v66 bounds];
    if (v79 <= 0.001)
    {
      v79 = 0.001;
    }

    v80 = v74;
    v81 = v76;
    v82 = v78;
    Width = CGRectGetWidth(*(&v79 - 3));
    [v66 bounds];
    v85 = v84;
    v87 = v86;
    [v66 bounds];
    if (v88 > 0.001)
    {
      v89 = v88;
    }

    else
    {
      v89 = 0.001;
    }

    [v66 bounds];
    if (v90 <= 0.001)
    {
      v90 = 0.001;
    }

    v59 = v72.x / Width;
    v91 = v85;
    v92 = v87;
    v93 = v89;
    Height = CGRectGetHeight(*(&v90 - 3));

    v95 = v72.y / Height;
    v54 = v67;
    v56 = *&v122;
LABEL_46:
    v143 = v133;
    v144 = *&v59;
    v145 = v95;
    LOBYTE(v146) = 0;
    v147 = 0;
    v148 = 2;
    v149 = 74;
    sub_1006C121C(&v143, &v137[0].ty);
    *&v137[0].a = v124;
    *&v137[0].c = v123;
    v137[0].tx = 0.0;
    v140 = 0;
    v141 = v132;
    v96 = v126;
    sub_1005C4D90(v150, v126);
    *(v96 + 48) = &type metadata for CRLSpringLayerAnimation.Def;
    *(v96 + 56) = sub_1008DA198();
    v97 = swift_allocObject();
    *(v96 + 24) = v97;
    sub_1008DA1EC(v137, v97 + 16);
    sub_100687CF4(&v143);
    *(v96 + 64) = 0;
    v98 = v136;
    v100 = v130;
    v99 = v131;
    v130(v96 + *(v136 + 28), 1, 1, v131);
    v100(v96 + *(v98 + 32), 1, 1, v99);
    sub_1007D0604(v137);
    v101 = v125;
    sub_100D6811C(v125, v54);
    sub_10098C698(v96, type metadata accessor for CRLRepAnimation);
    sub_100D687D0(v11, 0.0);
    sub_10098C698(v101, type metadata accessor for CRLRepAnimation);
    v102 = v134;
    sub_100D68E88(v134, 1.0);
    sub_10098C698(v11, type metadata accessor for CRLRepAnimation);
    v145 = *&v98;
    v146 = &off_1018A24A8;
    v103 = sub_10002C58C(&v143);
    sub_100D6954C(v103, v56);
    sub_10098C698(v102, type metadata accessor for CRLRepAnimation);
    sub_1005C4DC8(v150);
    sub_100050F74(&v143, v137);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142 = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = sub_100B364B4(0, v55[2] + 1, 1, v55);
      v142 = v55;
    }

    v106 = v55[2];
    v105 = v55[3];
    if (v106 >= v105 >> 1)
    {
      v107 = sub_100B364B4((v105 > 1), v106 + 1, 1, v55);
      v142 = v107;
    }

    else
    {
      v107 = v55;
    }

    v108 = *&v137[0].d;
    v109 = *&v137[0].tx;
    v110 = sub_10002A948(v137, *&v137[0].d);
    __chkstk_darwin(v110);
    v112 = &v119 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v113 + 16))(v112);
    sub_100725200(v106, v112, &v142, v108, v109);
    sub_100005070(v137);
    v58 = v135 + 24;
    --v57;
    v55 = v107;
  }

  while (v57);

  v28 = v121;
LABEL_54:
  v28[12] = &type metadata for CRLLayerAnimationGroup;
  v28[13] = &off_101885E50;
  v28[9] = v55;
  v28[10] = 0;
  v114 = sub_100789704(v28, 0.0);
  v116 = v115;
  v117 = v114;
  swift_setDeallocating();
  sub_1005B981C(&unk_101A09F70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10097F5F0(0, 1, 1, 0, 0, 0, 0, 0, v117, 0, v116);
}

uint64_t sub_100982294(unint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v187 = a5;
  v188 = a4;
  v201 = a3;
  v206 = type metadata accessor for CRLRepAnimation();
  __chkstk_darwin(v206);
  v191 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v190 = &v186 - v9;
  __chkstk_darwin(v10);
  v12 = &v186 - v11;
  __chkstk_darwin(v13);
  v205 = (&v186 - v14);
  __chkstk_darwin(v15);
  v204 = (&v186 - v16);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = 0;
    v202 = a1 & 0xFFFFFFFFFFFFFF8;
    v203 = (a1 & 0xC000000000000001);
    v19 = _swiftEmptyArrayStorage;
    *&v200 = i;
    *&v199 = a2;
    while (v203)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v22 = [a2 repForInfo:v20];
      if (v22)
      {
        v23 = v22;
        v24 = a1;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakAssign();
        v25 = v19;
        v26 = qword_1019F4290;

        swift_unknownObjectRelease();
        v27 = v26 & 0xFFFFFFFFFFFFFFE7;
        v19 = v25;
        v215 = v27;
        sub_1005C4D58(&v214, v207);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100B356F8(0, v25[2] + 1, 1, v25);
        }

        v29 = v19[2];
        v28 = v19[3];
        a1 = v24;
        if (v29 >= v28 >> 1)
        {
          v19 = sub_100B356F8((v28 > 1), v29 + 1, 1, v19);
        }

        i = v200;
        v19[2] = v29 + 1;
        sub_1005C4D58(v207, &v19[3 * v29 + 4]);
        a2 = v199;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v18;
      if (v21 == i)
      {
        goto LABEL_21;
      }
    }

    if (v18 >= *(v202 + 16))
    {
      goto LABEL_18;
    }

    v20 = *(a1 + 8 * v18 + 32);
    swift_unknownObjectRetain();
    v21 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_21:
  v202 = v19;
  if (v201 >> 62)
  {
    goto LABEL_112;
  }

  v30 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:
  if (v30)
  {
    v31 = 0;
    *&v200 = v201 & 0xC000000000000001;
    v32 = v201 & 0xFFFFFFFFFFFFFF8;
    v203 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v200)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v31 >= *(v32 + 16))
        {
          goto LABEL_106;
        }

        v33 = *(v201 + 8 * v31 + 32);
        swift_unknownObjectRetain();
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
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
          v30 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_23;
        }
      }

      v35 = [a2 repForInfo:v33];
      if (v35)
      {
        v36 = v35;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakAssign();
        v37 = qword_1019F4290;

        swift_unknownObjectRelease();
        v215 = v37 & 0xFFFFFFFFFFFFFFE7;
        sub_1005C4D58(&v214, v207);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v203 = sub_100B356F8(0, v203[2] + 1, 1, v203);
        }

        v39 = v203[2];
        v38 = v203[3];
        if (v39 >= v38 >> 1)
        {
          v203 = sub_100B356F8((v38 > 1), v39 + 1, 1, v203);
        }

        v40 = v203;
        v203[2] = v39 + 1;
        sub_1005C4D58(v207, &v40[3 * v39 + 4]);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v31;
      if (v34 == v30)
      {
        goto LABEL_40;
      }
    }
  }

  v203 = _swiftEmptyArrayStorage;
LABEL_40:
  v186 = sub_1005B981C(&unk_101A23620);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10146D2A0;
  v42 = v202;
  v43 = *(v202 + 16);
  v189 = v41;
  v201 = v43;
  if (v43)
  {
    v44 = 0;
    v45 = v202 + 32;
    v193 = _swiftEmptyArrayStorage;
    v192 = xmmword_101489B50;
    *(&v46 + 1) = 0x3FC999999999999ALL;
    v199 = xmmword_10146D9F0;
    *&v46 = 131586;
    v198 = v46;
    *&v200 = v202 + 32;
    while (v44 < *(v42 + 16))
    {
      sub_1005C4D90(v45, v224);
      v214 = v192;
      v215 = 0;
      v216 = 0;
      v217 = 1;
      v218 = 0;
      v219 = 2;
      v220 = 74;
      if (qword_1019F1E20 != -1)
      {
        swift_once();
      }

      v47 = qword_101AD7728;
      sub_1006C121C(&v214, &v207[1] + 8);
      *(v207 + 8) = v199;
      *&v207[0] = v47;
      v210 = 0;
      v211 = v198;
      sub_1005C4D90(v224, v12);
      *(v12 + 6) = &type metadata for CRLBasicLayerAnimation.Def;
      v197 = sub_1005F907C();
      *(v12 + 7) = v197;
      v48 = swift_allocObject();
      *(v12 + 3) = v48;
      sub_1005F8AB8(v207, v48 + 16);
      v49 = v47;
      sub_100687CF4(&v214);
      v12[64] = 0;
      v50 = v206;
      v51 = *(v206 + 28);
      v52 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
      v53 = *(v52 - 8);
      v54 = *(v53 + 56);
      v55 = v53 + 56;
      v54(&v12[v51], 1, 1, v52);
      v56 = &v12[*(v50 + 32)];
      *&v196 = v52;
      *&v195 = v54;
      *&v194 = v55;
      v54(v56, 1, 1, v52);
      sub_1005F8B14(v207);
      v57 = v205;
      sub_100D673B0(v205, 0.08);
      sub_10098C698(v12, type metadata accessor for CRLRepAnimation);
      v58 = objc_allocWithZone(CAMediaTimingFunction);
      LODWORD(v59) = 0.5;
      LODWORD(v60) = 1.0;
      v61 = [v58 initWithControlPoints:v59 :0.0 :0.0 :v60];
      a2 = v204;
      sub_100D67A6C(v61, v204);

      sub_10098C698(v57, type metadata accessor for CRLRepAnimation);
      v222 = v50;
      v223 = &off_1018A24A8;
      v62 = sub_10002C58C(&v221);
      sub_10098C630(a2, v62, type metadata accessor for CRLRepAnimation);
      v62[2] = 3;
      sub_10098C698(a2, type metadata accessor for CRLRepAnimation);
      sub_1005C4DC8(v224);
      if (v222)
      {
        sub_100050F74(&v221, v207);
        sub_100050F74(v207, &v214);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v193 = sub_100B364B4(0, v193[2] + 1, 1, v193);
        }

        v64 = v193[2];
        v63 = v193[3];
        if (v64 >= v63 >> 1)
        {
          v193 = sub_100B364B4((v63 > 1), v64 + 1, 1, v193);
        }

        v65 = sub_10002A948(&v214, v216);
        v66 = __chkstk_darwin(v65);
        v68 = &v186 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v69 + 16))(v68, v66);
        v222 = v206;
        v223 = &off_1018A24A8;
        v70 = sub_10002C58C(&v221);
        sub_10098C6F8(v68, v70, type metadata accessor for CRLRepAnimation);
        v71 = v193;
        v193[2] = v64 + 1;
        sub_100050F74(&v221, &v71[5 * v64 + 4]);
        sub_100005070(&v214);
      }

      else
      {
        sub_10000CAAC(&v221, &unk_101A09F70);
      }

      v42 = v202;
      v44 = (v44 + 1);
      v45 += 24;
      if (v201 == v44)
      {
        v72 = 0;
        v73 = v189;
        v189[7] = &type metadata for CRLLayerAnimationGroup;
        v73[8] = &off_101885E50;
        v73[4] = v193;
        v73[5] = 0;
        v74 = _swiftEmptyArrayStorage;
        v75 = v200;
        while (v72 < *(v202 + 16))
        {
          *&v200 = v75;
          sub_1005C4D90(v75, v224);
          *&v214 = 1065353216;
          v220 = 6;
          if (qword_1019F1E20 != -1)
          {
            swift_once();
          }

          v76 = qword_101AD7728;
          sub_1006C121C(&v214, &v207[1] + 8);
          *(v207 + 8) = v199;
          *&v207[0] = v76;
          v210 = 0;
          v211 = v198;
          sub_1005C4D90(v224, v12);
          v77 = v197;
          *(v12 + 6) = &type metadata for CRLBasicLayerAnimation.Def;
          *(v12 + 7) = v77;
          v78 = swift_allocObject();
          *(v12 + 3) = v78;
          sub_1005F8AB8(v207, v78 + 16);
          v79 = v76;
          sub_100687CF4(&v214);
          v12[64] = 0;
          v80 = v206;
          v81 = v196;
          v82 = v195;
          (v195)(&v12[*(v206 + 28)], 1, 1, v196);
          v82(&v12[*(v80 + 32)], 1, 1, v81);
          sub_1005F8B14(v207);
          v83 = v205;
          sub_100D673B0(v205, 0.08);
          sub_10098C698(v12, type metadata accessor for CRLRepAnimation);
          v84 = objc_allocWithZone(CAMediaTimingFunction);
          LODWORD(v85) = 0.5;
          LODWORD(v86) = 1.0;
          v87 = [v84 initWithControlPoints:v85 :0.0 :0.0 :v86];
          a2 = v204;
          sub_100D67A6C(v87, v204);

          sub_10098C698(v83, type metadata accessor for CRLRepAnimation);
          v222 = v80;
          v223 = &off_1018A24A8;
          v88 = sub_10002C58C(&v221);
          sub_10098C630(a2, v88, type metadata accessor for CRLRepAnimation);
          v88[2] = 1;
          sub_10098C698(a2, type metadata accessor for CRLRepAnimation);
          sub_1005C4DC8(v224);
          if (v222)
          {
            sub_100050F74(&v221, v207);
            sub_100050F74(v207, &v214);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = sub_100B364B4(0, v74[2] + 1, 1, v74);
            }

            v90 = v74[2];
            v89 = v74[3];
            if (v90 >= v89 >> 1)
            {
              v74 = sub_100B364B4((v89 > 1), v90 + 1, 1, v74);
            }

            v91 = sub_10002A948(&v214, v216);
            v92 = __chkstk_darwin(v91);
            v94 = &v186 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v95 + 16))(v94, v92);
            v222 = v206;
            v223 = &off_1018A24A8;
            v96 = sub_10002C58C(&v221);
            sub_10098C6F8(v94, v96, type metadata accessor for CRLRepAnimation);
            v74[2] = v90 + 1;
            sub_100050F74(&v221, &v74[5 * v90 + 4]);
            sub_100005070(&v214);
          }

          else
          {
            sub_10000CAAC(&v221, &unk_101A09F70);
          }

          v72 = (v72 + 1);
          v75 = v200 + 24;
          if (v201 == v72)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_108;
      }
    }

    goto LABEL_107;
  }

  *(v41 + 56) = &type metadata for CRLLayerAnimationGroup;
  *(v41 + 64) = &off_101885E50;
  v74 = _swiftEmptyArrayStorage;
  *(v41 + 32) = _swiftEmptyArrayStorage;
  *(v41 + 40) = 0;
LABEL_66:

  v97 = v189;
  v189[12] = &type metadata for CRLLayerAnimationGroup;
  v97[13] = &off_101885E50;
  v97[9] = v74;
  v97[10] = 0;
  v98 = v203;
  v202 = v203[2];
  if (v202)
  {
    v99 = 0;
    v100 = v203 + 4;
    v201 = _swiftEmptyArrayStorage;
    *(&v101 + 1) = 0x3FC999999999999ALL;
    v200 = xmmword_10146D9F0;
    *&v101 = 131586;
    v199 = v101;
    while (v99 < v98[2])
    {
      sub_1005C4D90(v100, v224);
      *&v214 = 0x3F80000000000000;
      v220 = 6;
      if (qword_1019F1E20 != -1)
      {
        swift_once();
      }

      v102 = qword_101AD7728;
      sub_1006C121C(&v214, &v207[1] + 8);
      *(v207 + 8) = v200;
      *&v207[0] = v102;
      v210 = 0;
      v211 = v199;
      sub_1005C4D90(v224, v12);
      *(v12 + 6) = &type metadata for CRLBasicLayerAnimation.Def;
      *(v12 + 7) = sub_1005F907C();
      v103 = swift_allocObject();
      *(v12 + 3) = v103;
      sub_1005F8AB8(v207, v103 + 16);
      v104 = v102;
      sub_100687CF4(&v214);
      v12[64] = 0;
      v105 = v206;
      v106 = *(v206 + 28);
      v107 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
      v108 = *(*(v107 - 8) + 56);
      v108(&v12[v106], 1, 1, v107);
      v108(&v12[*(v105 + 32)], 1, 1, v107);
      sub_1005F8B14(v207);
      v109 = v205;
      sub_100D673B0(v205, 0.2);
      sub_10098C698(v12, type metadata accessor for CRLRepAnimation);
      v110 = objc_allocWithZone(CAMediaTimingFunction);
      LODWORD(v111) = 0.5;
      LODWORD(v112) = 1.0;
      v113 = [v110 initWithControlPoints:v111 :0.0 :0.0 :v112];
      a2 = v204;
      sub_100D67A6C(v113, v204);

      sub_10098C698(v109, type metadata accessor for CRLRepAnimation);
      v222 = v105;
      v223 = &off_1018A24A8;
      v114 = sub_10002C58C(&v221);
      sub_10098C630(a2, v114, type metadata accessor for CRLRepAnimation);
      v114[2] = 1;
      sub_10098C698(a2, type metadata accessor for CRLRepAnimation);
      sub_1005C4DC8(v224);
      if (v222)
      {
        sub_100050F74(&v221, v207);
        sub_100050F74(v207, &v214);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v201 = sub_100B364B4(0, *(v201 + 16) + 1, 1, v201);
        }

        v116 = *(v201 + 16);
        v115 = *(v201 + 24);
        if (v116 >= v115 >> 1)
        {
          v201 = sub_100B364B4((v115 > 1), v116 + 1, 1, v201);
        }

        v117 = sub_10002A948(&v214, v216);
        v118 = __chkstk_darwin(v117);
        v120 = &v186 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v121 + 16))(v120, v118);
        v222 = v206;
        v223 = &off_1018A24A8;
        v122 = sub_10002C58C(&v221);
        sub_10098C6F8(v120, v122, type metadata accessor for CRLRepAnimation);
        v123 = v201;
        *(v201 + 16) = v116 + 1;
        sub_100050F74(&v221, v123 + 40 * v116 + 32);
        sub_100005070(&v214);
      }

      else
      {
        sub_10000CAAC(&v221, &unk_101A09F70);
      }

      v98 = v203;
      ++v99;
      v100 += 3;
      if (v202 == v99)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_109;
  }

  v201 = _swiftEmptyArrayStorage;
LABEL_80:
  v124 = v189;
  v189[17] = &type metadata for CRLLayerAnimationGroup;
  v124[18] = &off_101885E50;
  v124[14] = v201;
  v124[15] = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_10146BDE0;
  v193 = v125;
  if (v202)
  {
    v126 = 0;
    v127 = (v98 + 4);
    *&v196 = _swiftEmptyArrayStorage;
    v195 = xmmword_101489B50;
    *(&v128 + 1) = 0x3FC999999999999ALL;
    v194 = xmmword_10146D9F0;
    *&v128 = 131586;
    v200 = v128;
    v201 = (v98 + 4);
    while (v126 < v98[2])
    {
      sub_1005C4D90(v127, v224);
      v214 = v195;
      v215 = 0;
      v216 = 0;
      v217 = 1;
      v218 = 0;
      v219 = 2;
      v220 = 74;
      if (qword_1019F1E20 != -1)
      {
        swift_once();
      }

      v129 = qword_101AD7728;
      sub_1006C121C(&v214, &v207[1] + 8);
      *(v207 + 8) = v194;
      *&v207[0] = v129;
      v210 = 0;
      v211 = v200;
      sub_1005C4D90(v224, v12);
      *(v12 + 6) = &type metadata for CRLBasicLayerAnimation.Def;
      *(v12 + 7) = sub_1005F907C();
      v130 = swift_allocObject();
      *(v12 + 3) = v130;
      sub_1005F8AB8(v207, v130 + 16);
      v131 = v129;
      sub_100687CF4(&v214);
      v12[64] = 0;
      v132 = v206;
      v133 = *(v206 + 28);
      v134 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
      v135 = *(v134 - 8);
      v136 = *(v135 + 56);
      v137 = v135 + 56;
      v136(&v12[v133], 1, 1, v134);
      v138 = &v12[*(v132 + 32)];
      *&v199 = v134;
      v197 = v137;
      *&v198 = v136;
      v136(v138, 1, 1, v134);
      sub_1005F8B14(v207);
      a2 = v205;
      sub_100D673B0(v205, 0.08);
      sub_10098C698(v12, type metadata accessor for CRLRepAnimation);
      v139 = objc_allocWithZone(CAMediaTimingFunction);
      LODWORD(v140) = 0.5;
      LODWORD(v141) = 1.0;
      v142 = [v139 initWithControlPoints:v140 :0.0 :0.0 :v141];
      v143 = v204;
      sub_100D67A6C(v142, v204);

      sub_10098C698(a2, type metadata accessor for CRLRepAnimation);
      v222 = v132;
      v223 = &off_1018A24A8;
      v144 = sub_10002C58C(&v221);
      sub_10098C630(v143, v144, type metadata accessor for CRLRepAnimation);
      v144[2] = 3;
      sub_10098C698(v143, type metadata accessor for CRLRepAnimation);
      sub_1005C4DC8(v224);
      if (v222)
      {
        sub_100050F74(&v221, v207);
        sub_100050F74(v207, &v214);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v196 = sub_100B364B4(0, *(v196 + 16) + 1, 1, v196);
        }

        v146 = *(v196 + 16);
        v145 = *(v196 + 24);
        if (v146 >= v145 >> 1)
        {
          *&v196 = sub_100B364B4((v145 > 1), v146 + 1, 1, v196);
        }

        v147 = sub_10002A948(&v214, v216);
        a2 = &v186;
        v148 = __chkstk_darwin(v147);
        v150 = &v186 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v151 + 16))(v150, v148);
        v222 = v206;
        v223 = &off_1018A24A8;
        v152 = sub_10002C58C(&v221);
        sub_10098C6F8(v150, v152, type metadata accessor for CRLRepAnimation);
        v153 = v196;
        *(v196 + 16) = v146 + 1;
        sub_100050F74(&v221, v153 + 40 * v146 + 32);
        sub_100005070(&v214);
      }

      else
      {
        sub_10000CAAC(&v221, &unk_101A09F70);
      }

      v98 = v203;
      ++v126;
      v127 += 24;
      if (v202 == v126)
      {
        v154 = 0;
        v155 = v193;
        v193[7] = &type metadata for CRLLayerAnimationGroup;
        v155[8] = &off_101885E50;
        v155[4] = v196;
        v155[5] = 0;
        v156 = _swiftEmptyArrayStorage;
        v196 = xmmword_1014861A0;
        v195 = xmmword_1014861B0;
        v157 = v201;
        while (v154 < v98[2])
        {
          v158 = v156;
          v201 = v157;
          sub_1005C4D90(v157, v224);
          *&v214 = 0x3FF07AE147AE147BLL;
          *(&v214 + 1) = 0x3FF0000000000000;
          v215 = 0;
          v216 = 0;
          v217 = 1;
          v218 = 0;
          v219 = 2;
          v220 = 74;
          sub_1006C121C(&v214, &v209);
          v207[0] = v196;
          v207[1] = v195;
          v208 = 0;
          v212 = 0;
          v213 = v200;
          v159 = v191;
          sub_1005C4D90(v224, v191);
          *(v159 + 48) = &type metadata for CRLSpringLayerAnimation.Def;
          *(v159 + 56) = sub_1008DA198();
          v160 = swift_allocObject();
          *(v159 + 24) = v160;
          sub_1008DA1EC(v207, v160 + 16);
          sub_100687CF4(&v214);
          *(v159 + 64) = 0;
          v161 = v206;
          v162 = v199;
          v163 = v198;
          (v198)(v159 + *(v206 + 28), 1, 1, v199);
          v163(v159 + *(v161 + 32), 1, 1, v162);
          sub_1007D0604(v207);
          v164 = v190;
          sub_100D6811C(v190, 24.0);
          sub_10098C698(v159, type metadata accessor for CRLRepAnimation);
          sub_100D687D0(v12, 0.0);
          sub_10098C698(v164, type metadata accessor for CRLRepAnimation);
          a2 = v205;
          sub_100D68E88(v205, 1.0);
          sub_10098C698(v12, type metadata accessor for CRLRepAnimation);
          v165 = v204;
          sub_100D6954C(v204, 320.0);
          sub_10098C698(a2, type metadata accessor for CRLRepAnimation);
          v222 = v161;
          v223 = &off_1018A24A8;
          v166 = sub_10002C58C(&v221);
          sub_10098C630(v165, v166, type metadata accessor for CRLRepAnimation);
          v166[2] = 3;
          sub_10098C698(v165, type metadata accessor for CRLRepAnimation);
          sub_1005C4DC8(v224);
          if (v222)
          {
            sub_100050F74(&v221, v207);
            sub_100050F74(v207, &v214);
            v156 = v158;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v156 = sub_100B364B4(0, v158[2] + 1, 1, v158);
            }

            v168 = v156[2];
            v167 = v156[3];
            if (v168 >= v167 >> 1)
            {
              v156 = sub_100B364B4((v167 > 1), v168 + 1, 1, v156);
            }

            v169 = sub_10002A948(&v214, v216);
            v170 = __chkstk_darwin(v169);
            v172 = &v186 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v173 + 16))(v172, v170);
            v222 = v206;
            v223 = &off_1018A24A8;
            v174 = sub_10002C58C(&v221);
            sub_10098C6F8(v172, v174, type metadata accessor for CRLRepAnimation);
            v156[2] = v168 + 1;
            sub_100050F74(&v221, &v156[5 * v168 + 4]);
            sub_100005070(&v214);
            v98 = v203;
          }

          else
          {
            sub_10000CAAC(&v221, &unk_101A09F70);
            v156 = v158;
          }

          ++v154;
          v157 = (v201 + 24);
          if (v202 == v154)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_111;
      }
    }

    goto LABEL_110;
  }

  *(v125 + 56) = &type metadata for CRLLayerAnimationGroup;
  *(v125 + 64) = &off_101885E50;
  v156 = _swiftEmptyArrayStorage;
  *(v125 + 32) = _swiftEmptyArrayStorage;
  *(v125 + 40) = 0;
LABEL_104:

  v175 = v193;
  v193[12] = &type metadata for CRLLayerAnimationGroup;
  v175[13] = &off_101885E50;
  v175[9] = v156;
  v175[10] = 0;
  v176 = sub_1008821BC(v175, 0.0);
  v178 = v177;
  v179 = v176;
  swift_setDeallocating();
  sub_1005B981C(&unk_101A09F70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v180 = v189;
  v189[22] = &type metadata for CRLLayerAnimationSequence;
  *(v180 + 23) = &off_10188A5A0;
  *(v180 + 19) = v178;
  v180[20] = v179;
  v181 = sub_100789704(v180, 0.0);
  v183 = v182;
  v184 = v181;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10097F5F0(0, 1, 1, 0, 0, 0, 0, v188, v184, v187, v183);
}

void sub_100983FAC(void *a1, void *a2, void *a3, void *a4, id a5)
{
  v11 = [a5 canvas];
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a5;
  v12[4] = a1;
  v12[5] = a4;
  v12[6] = a3;
  v12[7] = v5;
  v19[4] = sub_10098C760;
  v19[5] = v12;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = *"";
  v19[2] = sub_100007638;
  v19[3] = &unk_10188EE68;
  v13 = _Block_copy(v19);
  v14 = a2;
  v15 = a5;
  v16 = a1;
  v17 = a4;
  v18 = a3;

  [v11 afterLayoutIncludingLayers:1 performBlock:v13];
  _Block_release(v13);
}

void sub_1009840E0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v153 = a5;
  v154 = a6;
  v152 = a4;
  v149 = a3;
  v165 = a2;
  v162 = type metadata accessor for CRLRepAnimation();
  __chkstk_darwin(v162);
  v155 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v161 = &v146 - v9;
  __chkstk_darwin(v10);
  v160 = &v146 - v11;
  __chkstk_darwin(v12);
  *&v159 = &v146 - v13;
  type metadata accessor for CRLGroupItem();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    if ((*((swift_isaMask & *v14) + 0x688))())
    {
      sub_1005B981C(&unk_1019F4D60);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_101465920;
      *(v16 + 32) = v15;
      v17 = a1;
    }

    else
    {
      v19 = a1;
      v16 = sub_1005F3D0C();
    }
  }

  else
  {
    sub_1005B981C(&unk_1019F4D60);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101465920;
    *(v16 + 32) = a1;
    v18 = a1;
  }

  v167 = _swiftEmptyArrayStorage;
  v20 = (v16 & 0xFFFFFFFFFFFFFF8);
  if (v16 >> 62)
  {
LABEL_128:
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  v147 = 0;
  v23 = _swiftEmptyArrayStorage;
  while (v21 != v22)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= v20[2])
      {
        goto LABEL_115;
      }

      v24 = *(v16 + 8 * v22 + 32);
    }

    v25 = v24;
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
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
      goto LABEL_128;
    }

    v27 = [v165 repForInfo:v24];

    ++v22;
    if (v27)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v167 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v167 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v23 = v167;
      v22 = v26;
    }
  }

  if (v23 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v151 = v16;
  if (v28)
  {
    v29 = 0;
    *&v164 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_121;
        }

        v30 = *(v23 + 8 * v29 + 32);
      }

      v31 = v30;
      v20 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        goto LABEL_120;
      }

      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
      v32 = qword_1019F4290;

      *(&v168 + 1) = v32 & 0xFFFFFFFFFFFFFFE7;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v33 = v164;
      }

      else
      {
        v33 = sub_100B356F8(0, *(v164 + 16) + 1, 1, v164);
      }

      v16 = v33[2];
      v34 = v33[3];
      if (v16 >= v34 >> 1)
      {
        v33 = sub_100B356F8((v34 > 1), v16 + 1, 1, v33);
      }

      v33[2] = v16 + 1;
      *&v164 = v33;
      sub_1005C4D58(&v167, &v33[3 * v16 + 4]);
      ++v29;
      if (v20 == v28)
      {
        goto LABEL_36;
      }
    }
  }

  *&v164 = _swiftEmptyArrayStorage;
LABEL_36:

  v35 = sub_1005F3D0C();
  v16 = v35;
  v167 = _swiftEmptyArrayStorage;
  v36 = v35 & 0xFFFFFFFFFFFFFF8;
  if (v35 >> 62)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = 0;
  v163 = (v16 & 0xC000000000000001);
  v150 = (v16 + 32);
  v39 = _swiftEmptyArrayStorage;
  *&v158 = v37;
  while (v37 != v38)
  {
    if (v163)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v38 >= *(v36 + 16))
      {
        goto LABEL_117;
      }

      v40 = *(v16 + 8 * v38 + 32);
    }

    v41 = v40;
    v20 = (v38 + 1);
    if (__OFADD__(v38, 1))
    {
      goto LABEL_116;
    }

    v42 = [v165 repForInfo:v40];

    ++v38;
    if (v42)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v167 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v167 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v39 = v167;
      v38 = v20;
      v37 = v158;
    }
  }

  if (v39 >> 62)
  {
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v156 = v36;
  v148 = v16;
  v16 = _swiftEmptyArrayStorage;
  if (v43)
  {
    v44 = 0;
    v157 = v39 & 0xC000000000000001;
    v20 = (v39 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v157)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v44 >= v20[2])
        {
          goto LABEL_123;
        }

        v45 = *(v39 + 8 * v44 + 32);
      }

      v46 = v45;
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_122;
      }

      v48 = v39;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
      v49 = qword_1019F4290;

      *(&v168 + 1) = v49 & 0xFFFFFFFFFFFFFFE7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100B356F8(0, *(v16 + 16) + 1, 1, v16);
      }

      v51 = *(v16 + 16);
      v50 = *(v16 + 24);
      if (v51 >= v50 >> 1)
      {
        v16 = sub_100B356F8((v50 > 1), v51 + 1, 1, v16);
      }

      *(v16 + 16) = v51 + 1;
      sub_1005C4D58(&v167, v16 + 24 * v51 + 32);
      ++v44;
      v39 = v48;
    }

    while (v47 != v43);
  }

  v157 = v16;

  v52 = _swiftEmptyArrayStorage;
  v167 = _swiftEmptyArrayStorage;
  if (v158)
  {
    v53 = 0;
    v54 = v150;
    v16 = v151;
    while (1)
    {
      if (v163)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v53 >= *(v156 + 16))
        {
          goto LABEL_125;
        }

        v55 = v54[v53];
      }

      v56 = v55;
      if (__OFADD__(v53++, 1))
      {
        goto LABEL_124;
      }

      v59 = sub_100E93C20(v58);

      if ((v59 & 0xC000000000000001) != 0)
      {
        v60 = v56;
        v61 = __CocoaSet.contains(_:)();

        if (v61)
        {

          goto LABEL_68;
        }
      }

      else
      {
        if (*(v59 + 16))
        {
          type metadata accessor for CRLBoardItem(0);
          v62 = NSObject._rawHashValue(seed:)(*(v59 + 40));
          v63 = -1 << *(v59 + 32);
          v64 = v62 & ~v63;
          if ((*(v59 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
          {
            v65 = ~v63;
            while (1)
            {
              v20 = *(*(v59 + 48) + 8 * v64);
              v66 = static NSObject.== infix(_:_:)();

              if (v66)
              {
                break;
              }

              v64 = (v64 + 1) & v65;
              if (((*(v59 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
              {
                goto LABEL_66;
              }
            }

            v54 = v150;
            v16 = v151;
            goto LABEL_68;
          }
        }

LABEL_66:

        v54 = v150;
        v16 = v151;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_68:
      if (v53 == v158)
      {
        v67 = v167;
        v52 = _swiftEmptyArrayStorage;
        goto LABEL_86;
      }
    }
  }

  v67 = _swiftEmptyArrayStorage;
LABEL_86:

  v167 = _swiftEmptyArrayStorage;
  if (v67 < 0 || (v67 & 0x4000000000000000) != 0)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *(v67 + 16);
  }

  v68 = 0;
  v20 = (v67 & 0xC000000000000001);
  while (v16 != v68)
  {
    if (v20)
    {
      v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v68 >= *(v67 + 16))
      {
        goto LABEL_119;
      }

      v69 = *(v67 + 8 * v68 + 32);
    }

    v70 = v69;
    v71 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      goto LABEL_118;
    }

    v72 = [v165 repForInfo:v69];

    ++v68;
    if (v72)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v167 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v167 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v52 = v167;
      v68 = v71;
    }
  }

  if (v52 >> 62)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
    if (v73)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v73 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
LABEL_102:
      v74 = 0;
      v163 = (v52 & 0xC000000000000001);
      v20 = (v52 & 0xFFFFFFFFFFFFFF8);
      v75 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v163)
        {
          v16 = v75;
          v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v74 >= v20[2])
          {
            goto LABEL_127;
          }

          v16 = v75;
          v76 = *(v52 + 8 * v74 + 32);
        }

        v77 = v76;
        v78 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_126;
        }

        v79 = v52;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakAssign();
        v80 = qword_1019F4290;

        *(&v168 + 1) = v80 & 0xFFFFFFFFFFFFFFE7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100B356F8(0, *(v16 + 16) + 1, 1, v16);
        }

        v82 = *(v16 + 16);
        v81 = *(v16 + 24);
        v83 = v16;
        if (v82 >= v81 >> 1)
        {
          v83 = sub_100B356F8((v81 > 1), v82 + 1, 1, v16);
        }

        v83[2] = v82 + 1;
        v75 = v83;
        sub_1005C4D58(&v167, &v83[3 * v82 + 4]);
        ++v74;
        v52 = v79;
        if (v78 == v73)
        {
          goto LABEL_135;
        }
      }
    }
  }

  v75 = _swiftEmptyArrayStorage;
LABEL_135:

  v163 = [v165 repForInfo:v149];
  if (v163)
  {
    sub_1005B981C(&unk_101A23620);
    v84 = swift_allocObject();
    v150 = v75;
    v151 = v84;
    *(v84 + 16) = xmmword_10146C4D0;
    v85 = *(v164 + 16);
    v86 = &unk_10146D000;
    v87 = &unk_10146D000;
    if (v85)
    {
      v88 = v164 + 32;
      v89 = _swiftEmptyArrayStorage;
      *(&v90 + 1) = 0x3FC999999999999ALL;
      v158 = xmmword_10146D9F0;
      *&v90 = 131586;
      v156 = v90;
      do
      {
        sub_1005C4D90(v88, v177);
        *&v173 = 0;
        v176 = 6;
        if (qword_1019F1E20 != -1)
        {
          swift_once();
        }

        v91 = qword_101AD7728;
        sub_1006C121C(&v173, &v169);
        v168 = v158;
        v167 = v91;
        v171 = 0;
        v172 = v156;
        v92 = v160;
        sub_1005C4D90(v177, v160);
        *(v92 + 48) = &type metadata for CRLBasicLayerAnimation.Def;
        *(v92 + 56) = sub_1005F907C();
        v93 = swift_allocObject();
        *(v92 + 24) = v93;
        sub_1005F8AB8(&v167, v93 + 16);
        v94 = v91;
        sub_100687CF4(&v173);
        *(v92 + 64) = 0;
        v95 = v162;
        v96 = *(v162 + 28);
        v97 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
        v98 = *(*(v97 - 8) + 56);
        v98(v92 + v96, 1, 1, v97);
        v98(v92 + *(v95 + 32), 1, 1, v97);
        sub_1005F8B14(&v167);
        sub_100D673B0(v159, 0.0);
        sub_1005C4DC8(v177);
        sub_10098C698(v92, type metadata accessor for CRLRepAnimation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_100B364B4(0, v89[2] + 1, 1, v89);
        }

        v100 = v89[2];
        v99 = v89[3];
        if (v100 >= v99 >> 1)
        {
          v89 = sub_100B364B4((v99 > 1), v100 + 1, 1, v89);
        }

        v169 = v162;
        v170 = &off_1018A24A8;
        v101 = sub_10002C58C(&v167);
        v102 = v159;
        sub_10098C630(v159, v101, type metadata accessor for CRLRepAnimation);
        v89[2] = v100 + 1;
        sub_100050F74(&v167, &v89[5 * v100 + 4]);
        sub_10098C698(v102, type metadata accessor for CRLRepAnimation);
        v88 += 24;
        --v85;
      }

      while (v85);

      v103 = v157;
      v75 = v150;
      v87 = &unk_10146D000;
      v86 = &unk_10146D000;
    }

    else
    {

      v89 = _swiftEmptyArrayStorage;
      v103 = v157;
    }

    v104 = v151;
    v151[7] = &type metadata for CRLLayerAnimationGroup;
    v104[8] = &off_101885E50;
    v104[4] = v89;
    v104[5] = 0;
    v105 = v75[2];
    if (v105)
    {
      v106 = (v75 + 4);
      v107 = _swiftEmptyArrayStorage;
      v164 = v86[159];
      *(&v108 + 1) = *(&v164 + 1);
      *&v108 = v87[320];
      v159 = v108;
      do
      {
        sub_1005C4D90(v106, v177);
        *&v173 = 0x3F00000000000000;
        v176 = 6;
        if (qword_1019F1E20 != -1)
        {
          swift_once();
        }

        v109 = qword_101AD7728;
        sub_1006C121C(&v173, &v169);
        v168 = v164;
        v167 = v109;
        v171 = 0;
        v172 = v159;
        v110 = v155;
        sub_1005C4D90(v177, v155);
        *(v110 + 48) = &type metadata for CRLBasicLayerAnimation.Def;
        *(v110 + 56) = sub_1005F907C();
        v111 = swift_allocObject();
        *(v110 + 24) = v111;
        sub_1005F8AB8(&v167, v111 + 16);
        v112 = v109;
        sub_100687CF4(&v173);
        *(v110 + 64) = 0;
        v113 = v162;
        v114 = *(v162 + 28);
        v115 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
        v116 = *(*(v115 - 8) + 56);
        v116(v110 + v114, 1, 1, v115);
        v116(v110 + *(v113 + 32), 1, 1, v115);
        sub_1005F8B14(&v167);
        v117 = v160;
        sub_100D673B0(v160, 0.16);
        sub_10098C698(v110, type metadata accessor for CRLRepAnimation);
        v118 = objc_allocWithZone(CAMediaTimingFunction);
        LODWORD(v119) = 0.5;
        LODWORD(v120) = 1.0;
        v121 = [v118 initWithControlPoints:0.0 :0.0 :v119 :v120];
        sub_100D67A6C(v121, v161);

        sub_10098C698(v117, type metadata accessor for CRLRepAnimation);
        sub_1005C4DC8(v177);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_100B364B4(0, v107[2] + 1, 1, v107);
        }

        v123 = v107[2];
        v122 = v107[3];
        if (v123 >= v122 >> 1)
        {
          v107 = sub_100B364B4((v122 > 1), v123 + 1, 1, v107);
        }

        v169 = v162;
        v170 = &off_1018A24A8;
        v124 = sub_10002C58C(&v167);
        v125 = v161;
        sub_10098C630(v161, v124, type metadata accessor for CRLRepAnimation);
        v107[2] = v123 + 1;
        sub_100050F74(&v167, &v107[5 * v123 + 4]);
        sub_10098C698(v125, type metadata accessor for CRLRepAnimation);
        v106 += 24;
        --v105;
      }

      while (v105);

      v103 = v157;
    }

    else
    {

      v107 = _swiftEmptyArrayStorage;
    }

    v126 = v151;
    v151[12] = &type metadata for CRLLayerAnimationGroup;
    v126[13] = &off_101885E50;
    v126[9] = v107;
    v126[10] = 0;
    *&v164 = *(v103 + 16);
    if (v164)
    {
      v127 = 0;
      v128 = v103 + 32;
      v129 = _swiftEmptyArrayStorage;
      v130 = v147;
      while (v127 < *(v157 + 16))
      {
        sub_1005C4D90(v128, v177);
        sub_100985564(v177);
        if (v130)
        {
          goto LABEL_174;
        }

        sub_1005C4DC8(v177);
        if (v174)
        {
          sub_100050F74(&v173, &v167);
          sub_100050F74(&v167, &v173);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v166 = v129;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v129 = sub_100B364B4(0, v129[2] + 1, 1, v129);
            v166 = v129;
          }

          v133 = v129[2];
          v132 = v129[3];
          if (v133 >= v132 >> 1)
          {
            v129 = sub_100B364B4((v132 > 1), v133 + 1, 1, v129);
            v166 = v129;
          }

          v134 = v174;
          v135 = v175;
          v136 = sub_10002A948(&v173, v174);
          v137 = __chkstk_darwin(v136);
          v139 = &v146 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v140 + 16))(v139, v137);
          sub_100725200(v133, v139, &v166, v134, v135);
          sub_100005070(&v173);
          v130 = 0;
        }

        else
        {
          sub_10000CAAC(&v173, &unk_101A09F70);
        }

        ++v127;
        v128 += 24;
        if (v164 == v127)
        {
          goto LABEL_172;
        }
      }

      __break(1u);
LABEL_174:

      sub_1005C4DC8(v177);

      __break(1u);
    }

    else
    {
      v129 = _swiftEmptyArrayStorage;
LABEL_172:

      v141 = v151;
      v151[17] = &type metadata for CRLLayerAnimationGroup;
      v141[18] = &off_101885E50;
      v141[14] = v129;
      v141[15] = 0;
      v142 = sub_100789704(v141, 0.0);
      v144 = v143;
      v145 = v142;
      swift_setDeallocating();
      sub_1005B981C(&unk_101A09F70);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10097F5F0(0, 1, 1, 0, 0, 0, 0, 0, v145, 0, v144);
    }
  }

  else
  {
  }
}

unint64_t sub_100985564(uint64_t a1)
{
  __chkstk_darwin(a1);
  v217 = v2;
  v228 = v3;
  v229 = v4;
  v219 = v5;
  v7 = v6;
  v9 = v8;
  v225 = type metadata accessor for CRLSpringLayerAnimation();
  __chkstk_darwin(v225);
  v11 = &v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v216 = &v205 - v13;
  __chkstk_darwin(v14);
  v224 = &v205 - v15;
  v16 = sub_100789704(_swiftEmptyArrayStorage, 0.0);
  v227 = v17;
  v207 = v16;
  v218 = v7;
  result = sub_1005C3FB8();
  v223 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v19 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_74:

LABEL_75:
    *(v9 + 3) = &type metadata for CRLLayerAnimationGroup;
    *(v9 + 4) = &off_101885E50;
    *v9 = v227;
    v9[1] = v207;
    return result;
  }

  v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_74;
  }

LABEL_3:
  if (v19 >= 1)
  {
    v205 = v9;
    v206 = v1;
    v20 = 0;
    v285 = v223 & 0xC000000000000001;
    v21 = 0.001;
    *&v213 = -0.001;
    v212 = xmmword_1014861A0;
    *(&v22 + 1) = 0x4059000000000000;
    v211 = xmmword_1014861B0;
    *&v22 = 131586;
    v210 = v22;
    v209 = xmmword_101463BB0;
    v23 = v219;
    v214 = v11;
    v24 = v223;
    v230 = v19;
    v208 = 0.001;
    while (1)
    {
      if (v285)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v24 + 8 * v20 + 32);
      }

      v26 = v25;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v28 = Strong;
        v29 = [v23 renderableForRep:Strong];
        if (v29)
        {
          v231 = v28;
          v30 = v29;
          v31 = [v29 layer];

          if (!v31)
          {
            goto LABEL_56;
          }

          v32 = v228;
          [v228 headLineEndPoint];
          [v32 convertNaturalPointToUnscaledCanvas:?];
          v33 = v231;
          [v231 convertNaturalPointFromUnscaledCanvas:?];
          v35 = v34;
          v37 = v36;
          [v33 transformToConvertNaturalToLayerRelative];
          v286.x = v35;
          v286.y = v37;
          v38 = CGPointApplyAffineTransform(v286, v259);
          [v31 bounds];
          v40 = v39;
          v42 = v41;
          [v31 bounds];
          if (v43 > v21)
          {
            v44 = v43;
          }

          else
          {
            v44 = v21;
          }

          [v31 bounds];
          if (v45 <= v21)
          {
            v45 = v21;
          }

          v46 = v40;
          v47 = v42;
          v48 = v44;
          Width = CGRectGetWidth(*(&v45 - 3));
          [v31 bounds];
          v51 = v50;
          v53 = v52;
          [v31 bounds];
          if (v54 > v21)
          {
            v55 = v54;
          }

          else
          {
            v55 = v21;
          }

          [v31 bounds];
          if (v56 <= v21)
          {
            v56 = v21;
          }

          v57 = v51;
          v58 = v53;
          v59 = v55;
          Height = CGRectGetHeight(*(&v56 - 3));
          v61 = [v23 renderableForRep:v229];
          if (v61)
          {
            v226 = v31;
            v62 = v61;
            v63 = [v61 layer];

            if (v63)
            {
              v215 = v38;
              v64 = v228;
              [v228 tailLineEndPoint];
              [v64 convertNaturalPointToUnscaledCanvas:?];
              v65 = v229;
              [v229 convertNaturalPointFromUnscaledCanvas:?];
              v67 = v66;
              v69 = v68;
              [v65 transformToConvertNaturalToLayerRelative];
              v287.x = v67;
              v287.y = v69;
              v70 = CGPointApplyAffineTransform(v287, v259);
              [v63 bounds];
              v72 = v71;
              v74 = v73;
              [v63 bounds];
              if (v75 > v21)
              {
                v76 = v75;
              }

              else
              {
                v76 = v21;
              }

              [v63 bounds];
              if (v77 <= v21)
              {
                v77 = v21;
              }

              v78 = v72;
              v79 = v74;
              v80 = v76;
              v220 = v70.x / CGRectGetWidth(*(&v77 - 3));
              [v63 bounds];
              v82 = v81;
              v84 = v83;
              [v63 bounds];
              if (v85 > v21)
              {
                v86 = v85;
              }

              else
              {
                v86 = v21;
              }

              [v63 bounds];
              if (v87 <= v21)
              {
                v87 = v21;
              }

              v88 = v82;
              v89 = v84;
              v90 = v86;
              v91 = v70.y / CGRectGetHeight(*(&v87 - 3));
              v92 = [v231 info];
              ObjectType = swift_getObjectType();
              v94 = sub_100987E6C(v217, ObjectType);
              swift_unknownObjectRelease();
              v221 = v26;
              v222 = v63;
              if (v94)
              {
                v95 = v215.x / Width;
                v96 = v215.y / Height;
                v97 = v226;
                CATransform3DMakeScale(&v281, 0.95, 0.95, 1.0);
                v98 = v97;
                [v26 anchorPoint];
                v100 = v99;
                v102 = v101;
                [v26 bounds];
                v104 = sub_10011FFCC(v100, v102, v103);
                CATransform3DMakeTranslation(&v282, v104, v105, 1.0);
                sub_100C005E0(v26, v98, v261);
                v284 = v282;
                v283 = v261[0];
                CATransform3DConcat(v259, &v284, &v283);
                [v98 bounds];
                [v98 bounds];
                v107 = v106;
                [v98 bounds];
                [v98 bounds];
                [v98 bounds];
                [v98 bounds];
                v109 = -v107;
                v110 = v208;
                v111 = *&v213;
                if (v107 <= v208)
                {
                  v109 = *&v213;
                }

                v112 = v95 * v109;
                v113 = -v108;
                if (v108 <= v208)
                {
                  v113 = *&v213;
                }

                CATransform3DMakeTranslation(&v269, v112, v96 * v113, 1.0);
                v284 = v269;
                v283 = v281;
                CATransform3DConcat(&v270, &v284, &v283);
                v284 = v269;
                CATransform3DInvert(&v271, &v284);
                v284 = v270;
                v283 = v271;
                CATransform3DConcat(&v272, &v284, &v283);
                v284 = v259[0];
                v283 = v272;
                CATransform3DConcat(&v273, &v284, &v283);
                v284 = v259[0];
                CATransform3DInvert(&v274, &v284);
                v284 = v273;
                v283 = v274;
                CATransform3DConcat(&v275, &v284, &v283);
                v284 = v275;
                CATransform3DGetAffineTransform(&v283, &v284);
                *&v284.m11 = *&v283.m11;
                *&v284.m13 = *&v283.m13;
                *&v284.m21 = *&v283.m21;
                CATransform3DMakeAffineTransform(&v276, &v284);

                v114 = v63;
                CATransform3DMakeScale(&v277, 0.95, 0.95, 1.0);
                v115 = v114;
                [v26 anchorPoint];
                v117 = v116;
                v119 = v118;
                [v26 bounds];
                v121 = sub_10011FFCC(v117, v119, v120);
                CATransform3DMakeTranslation(&v278, v121, v122, 1.0);
                sub_100C005E0(v26, v115, &v279);
                v284 = v278;
                v283 = v279;
                CATransform3DConcat(&v280, &v284, &v283);
                [v115 bounds];
                [v115 bounds];
                v124 = v123;
                [v115 bounds];
                [v115 bounds];
                [v115 bounds];
                [v115 bounds];
                v126 = -v124;
                if (v124 <= v110)
                {
                  v126 = v111;
                }

                v127 = v220;
                v128 = v220 * v126;
                v129 = -v125;
                if (v125 <= v110)
                {
                  v129 = v111;
                }

                CATransform3DMakeTranslation(&v253, v128, v91 * v129, 1.0);
                v284 = v253;
                v283 = v277;
                CATransform3DConcat(&v254, &v284, &v283);
                v284 = v253;
                CATransform3DInvert(&v255, &v284);
                v284 = v254;
                v283 = v255;
                CATransform3DConcat(&v256, &v284, &v283);
                v284 = v280;
                v283 = v256;
                CATransform3DConcat(&v257, &v284, &v283);
                v284 = v280;
                CATransform3DInvert(&v258, &v284);
                v284 = v257;
                v283 = v258;
                CATransform3DConcat(&v262, &v284, &v283);
                v284 = v262;
                CATransform3DGetAffineTransform(&v283, &v284);
                *&v284.m11 = *&v283.m11;
                *&v284.m13 = *&v283.m13;
                *&v284.m21 = *&v283.m21;
                CATransform3DMakeAffineTransform(&v263, &v284);

                v284 = v276;
                v283 = v263;
                CATransform3DConcat(&v264, &v284, &v283);
                CATransform3DMakeScale(&v265, 0.95, 0.95, 1.0);
                v130 = v98;
                [v26 anchorPoint];
                v132 = v131;
                v134 = v133;
                [v26 bounds];
                v136 = sub_10011FFCC(v132, v134, v135);
                CATransform3DMakeTranslation(&v266, v136, v137, 1.0);
                sub_100C005E0(v26, v130, &v267);
                v284 = v266;
                v283 = v267;
                CATransform3DConcat(&v268, &v284, &v283);
                [v130 bounds];
                [v130 bounds];
                v139 = v138;
                [v130 bounds];
                [v130 bounds];
                [v130 bounds];
                [v130 bounds];
                v141 = -v139;
                if (v139 <= v110)
                {
                  v141 = v111;
                }

                v142 = v95 * v141;
                v143 = -v140;
                if (v140 <= v110)
                {
                  v143 = v111;
                }

                CATransform3DMakeTranslation(&v241, v142, v96 * v143, 1.0);
                v284 = v241;
                v283 = v265;
                CATransform3DConcat(&v242, &v284, &v283);
                v284 = v241;
                CATransform3DInvert(&v243, &v284);
                v284 = v242;
                v283 = v243;
                CATransform3DConcat(&v244, &v284, &v283);
                v284 = v268;
                v283 = v244;
                CATransform3DConcat(&v245, &v284, &v283);
                v284 = v268;
                CATransform3DInvert(&v246, &v284);
                v284 = v245;
                v283 = v246;
                CATransform3DConcat(&v247, &v284, &v283);
                v284 = v247;
                CATransform3DGetAffineTransform(&v283, &v284);
                *&v284.m11 = *&v283.m11;
                *&v284.m13 = *&v283.m13;
                *&v284.m21 = *&v283.m21;
                CATransform3DMakeAffineTransform(&v248, &v284);

                CATransform3DMakeScale(&v249, 1.0, 1.0, 1.0);
                v144 = v115;
                [v26 anchorPoint];
                v146 = v145;
                v148 = v147;
                [v26 bounds];
                v150 = sub_10011FFCC(v146, v148, v149);
                CATransform3DMakeTranslation(&v250, v150, v151, 1.0);
                sub_100C005E0(v26, v144, &v251);
                v284 = v250;
                v283 = v251;
                CATransform3DConcat(&v252, &v284, &v283);
                [v144 bounds];
                [v144 bounds];
                v153 = v152;
                [v144 bounds];
                [v144 bounds];
                [v144 bounds];
                [v144 bounds];
                v155 = -v153;
                if (v153 <= v110)
                {
                  v155 = v111;
                }

                v156 = v127 * v155;
                v157 = -v154;
                if (v154 <= v110)
                {
                  v157 = v111;
                }

                CATransform3DMakeTranslation(&v233, v156, v91 * v157, 1.0);
                v284 = v233;
                v283 = v249;
                CATransform3DConcat(&v234, &v284, &v283);
                v284 = v233;
                CATransform3DInvert(&v235, &v284);
                v284 = v234;
                v283 = v235;
                CATransform3DConcat(&v236, &v284, &v283);
                v284 = v252;
                v283 = v236;
                CATransform3DConcat(&v237, &v284, &v283);
                v284 = v252;
                CATransform3DInvert(&v238, &v284);
                v284 = v237;
                v283 = v238;
                CATransform3DConcat(&v239, &v284, &v283);
                v284 = v239;
                CATransform3DGetAffineTransform(&v283, &v284);
                *&v284.m11 = *&v283.m11;
                *&v284.m13 = *&v283.m13;
                *&v284.m21 = *&v283.m21;
                CATransform3DMakeAffineTransform(&v240, &v284);

                v284 = v248;
                v232 = v240;
                CATransform3DConcat(&v283, &v284, &v232);
                *&v284.m31 = *&v264.m31;
                *&v284.m33 = *&v264.m33;
                *&v284.m41 = *&v264.m41;
                *&v284.m43 = *&v264.m43;
                *&v284.m11 = *&v264.m11;
                *&v284.m13 = *&v264.m13;
                v158 = *&v264.m21;
                v159 = *&v264.m23;
              }

              else
              {
                v160 = v63;
                CATransform3DMakeScale(&v281, 0.95, 0.95, 1.0);
                v161 = v160;
                [v26 anchorPoint];
                v163 = v162;
                v165 = v164;
                [v26 bounds];
                v167 = sub_10011FFCC(v163, v165, v166);
                CATransform3DMakeTranslation(&v282, v167, v168, 1.0);
                sub_100C005E0(v26, v161, v261);
                v284 = v282;
                v283 = v261[0];
                CATransform3DConcat(v259, &v284, &v283);
                [v161 bounds];
                [v161 bounds];
                v170 = v169;
                [v161 bounds];
                [v161 bounds];
                [v161 bounds];
                [v161 bounds];
                v172 = -v170;
                v110 = v208;
                v173 = *&v213;
                if (v170 <= v208)
                {
                  v172 = *&v213;
                }

                v174 = v220;
                v175 = v220 * v172;
                v176 = -v171;
                if (v171 <= v208)
                {
                  v176 = *&v213;
                }

                CATransform3DMakeTranslation(&v269, v175, v91 * v176, 1.0);
                v284 = v269;
                v283 = v281;
                CATransform3DConcat(&v270, &v284, &v283);
                v284 = v269;
                CATransform3DInvert(&v271, &v284);
                v284 = v270;
                v283 = v271;
                CATransform3DConcat(&v272, &v284, &v283);
                v284 = v259[0];
                v283 = v272;
                CATransform3DConcat(&v273, &v284, &v283);
                v284 = v259[0];
                CATransform3DInvert(&v274, &v284);
                v284 = v273;
                v283 = v274;
                CATransform3DConcat(&v275, &v284, &v283);
                v284 = v275;
                CATransform3DGetAffineTransform(&v283, &v284);
                *&v284.m11 = *&v283.m11;
                *&v284.m13 = *&v283.m13;
                *&v284.m21 = *&v283.m21;
                CATransform3DMakeAffineTransform(&v276, &v284);

                CATransform3DMakeScale(&v277, 1.0, 1.0, 1.0);
                v177 = v161;
                [v26 anchorPoint];
                v179 = v178;
                v181 = v180;
                [v26 bounds];
                v183 = sub_10011FFCC(v179, v181, v182);
                CATransform3DMakeTranslation(&v278, v183, v184, 1.0);
                sub_100C005E0(v26, v177, &v279);
                v284 = v278;
                v283 = v279;
                CATransform3DConcat(&v280, &v284, &v283);
                [v177 bounds];
                [v177 bounds];
                v186 = v185;
                [v177 bounds];
                [v177 bounds];
                [v177 bounds];
                [v177 bounds];
                v188 = -v186;
                if (v186 <= v110)
                {
                  v188 = v173;
                }

                v189 = v174 * v188;
                v190 = -v187;
                if (v187 <= v110)
                {
                  v190 = v173;
                }

                CATransform3DMakeTranslation(&v262, v189, v91 * v190, 1.0);
                v284 = v262;
                v283 = v277;
                CATransform3DConcat(&v263, &v284, &v283);
                v284 = v262;
                CATransform3DInvert(&v264, &v284);
                v284 = v263;
                v283 = v264;
                CATransform3DConcat(&v265, &v284, &v283);
                v284 = v280;
                v283 = v265;
                CATransform3DConcat(&v266, &v284, &v283);
                v284 = v280;
                CATransform3DInvert(&v267, &v284);
                v284 = v266;
                v283 = v267;
                CATransform3DConcat(&v268, &v284, &v283);
                v284 = v268;
                CATransform3DGetAffineTransform(&v283, &v284);
                *&v284.m11 = *&v283.m11;
                *&v284.m13 = *&v283.m13;
                *&v284.m21 = *&v283.m21;
                CATransform3DMakeAffineTransform(&v283, &v284);

                *&v284.m31 = *&v276.m31;
                *&v284.m33 = *&v276.m33;
                *&v284.m41 = *&v276.m41;
                *&v284.m43 = *&v276.m43;
                *&v284.m11 = *&v276.m11;
                *&v284.m13 = *&v276.m13;
                v158 = *&v276.m21;
                v159 = *&v276.m23;
              }

              *&v284.m21 = v158;
              *&v284.m23 = v159;
              v21 = v110;
              *&v261[0].m31 = *&v284.m31;
              *&v261[0].m33 = *&v284.m33;
              *&v261[0].m41 = *&v284.m41;
              *&v261[0].m43 = *&v284.m43;
              *&v261[0].m11 = *&v284.m11;
              *&v261[0].m13 = *&v284.m13;
              *&v261[0].m21 = v158;
              *&v261[0].m23 = v159;
              v261[1] = v283;
              *&v259[0].m23 = v159;
              *&v259[0].m21 = v158;
              *&v259[0].m13 = *&v284.m13;
              *&v259[0].m11 = *&v284.m11;
              *&v259[0].m43 = *&v284.m43;
              *&v259[0].m41 = *&v284.m41;
              *&v259[0].m33 = *&v284.m33;
              *&v259[0].m31 = *&v284.m31;
              v259[1] = v283;
              v260 = 52;
              v191 = v216;
              sub_1006C121C(v259, (v216 + 40));
              v192 = v225;
              UUID.init()();
              sub_100687CF4(v259);
              swift_unknownObjectWeakInit();
              v193 = *(v192 + 28);
              v194 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
              v195 = *(*(v194 - 8) + 56);
              v195(v191 + v193, 1, 1, v194);
              v195(v191 + *(v192 + 32), 1, 1, v194);
              v196 = v221;
              swift_unknownObjectWeakAssign();
              *(v191 + 32) = 0;
              v197 = v211;
              *v191 = v212;
              *(v191 + 16) = v197;
              *(v191 + 304) = 0;
              *(v191 + 312) = v210;
              v198 = v224;
              sub_10098C630(v191, v224, type metadata accessor for CRLSpringLayerAnimation);
              *v198 = 0x4038000000000000;
              sub_10098C698(v191, type metadata accessor for CRLSpringLayerAnimation);
              *(v198 + 8) = v209;
              *(v198 + 24) = 0x4074000000000000;
              v199 = v214;
              sub_10098C630(v198, v214, type metadata accessor for CRLSpringLayerAnimation);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v227 = sub_100B364B4(0, v227[2] + 1, 1, v227);
              }

              v201 = v227[2];
              v200 = v227[3];
              v23 = v219;
              v202 = v222;
              if (v201 >= v200 >> 1)
              {
                v227 = sub_100B364B4((v200 > 1), v201 + 1, 1, v227);
              }

              sub_10098C698(v224, type metadata accessor for CRLSpringLayerAnimation);
              *&v259[0].m14 = v225;
              *&v259[0].m21 = &off_1018B87B8;
              v203 = sub_10002C58C(v259);
              sub_10098C630(v199, v203, type metadata accessor for CRLSpringLayerAnimation);
              v204 = v227;
              v227[2] = v201 + 1;
              sub_100050F74(v259, &v204[5 * v201 + 4]);
              sub_10098C698(v199, type metadata accessor for CRLSpringLayerAnimation);
              v24 = v223;
              v19 = v230;
              goto LABEL_7;
            }

LABEL_56:
          }

          else
          {
          }

          v19 = v230;
          goto LABEL_7;
        }
      }

LABEL_7:
      if (v19 == ++v20)
      {

        v9 = v205;
        goto LABEL_75;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100987E6C(uint64_t a1, uint64_t a2)
{
  if (v2 == a1)
  {
    return 1;
  }

  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = [v4 childInfos];
    sub_1005B981C(&qword_1019F5720);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (v6 >> 62)
  {
LABEL_21:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  do
  {
    v7 = v8 != v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v9, 1))
      {
LABEL_17:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      v10 = *(v6 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }
    }

    v11 = sub_100987E6C(v10, a2);
    swift_unknownObjectRelease();
    ++v9;
  }

  while ((v11 & 1) == 0);

  return v7;
}

void sub_10098809C(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLRepAnimation();
  __chkstk_darwin(v6);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v87 - v10;
  __chkstk_darwin(v12);
  v14 = &v87 - v13;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v87 - v17;
  v19 = [a1 connectionLineInfo];
  if (!v19)
  {
    return;
  }

  v97 = v19;
  v20 = [a2 repForInfo:?];
  if (v20)
  {
    v96 = v20;
    v21 = [a2 repForInfo:a3];
    if (v21)
    {
      v22 = v21;
      v23 = [a2 renderableForRep:v21];
      if (v23)
      {
        v91 = v11;
        v24 = v23;
        v25 = [v23 layer];

        if (v25)
        {
          v94 = v25;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          swift_unknownObjectWeakAssign();
          v113 = qword_1019F4290 & 0xFFFFFFFFFFFFFFE7;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v26 = v94;
          swift_unknownObjectWeakAssign();
          v111 = qword_1019F4290 & 0xFFFFFFFFFFFFFFE7;
          [a1 headLineEndPoint];
          [a1 convertNaturalPointToUnscaledCanvas:?];
          [v22 convertNaturalPointFromUnscaledCanvas:?];
          v28 = v27;
          v30 = v29;
          v90 = v22;
          [v22 transformToConvertNaturalToLayerRelative];
          v115.x = v28;
          v115.y = v30;
          v31 = CGPointApplyAffineTransform(v115, v98);
          [v26 bounds];
          v33 = v32;
          v35 = v34;
          [v26 bounds];
          if (v36 > 0.001)
          {
            v37 = v36;
          }

          else
          {
            v37 = 0.001;
          }

          [v26 bounds];
          if (v38 <= 0.001)
          {
            v38 = 0.001;
          }

          v39 = v33;
          v40 = v35;
          v41 = v37;
          Width = CGRectGetWidth(*(&v38 - 3));
          [v26 bounds];
          v44 = v43;
          v46 = v45;
          [v26 bounds];
          if (v47 > 0.001)
          {
            v48 = v47;
          }

          else
          {
            v48 = 0.001;
          }

          [v26 bounds];
          if (v49 <= 0.001)
          {
            v49 = 0.001;
          }

          v50 = v31.x / Width;
          v51 = v44;
          v52 = v46;
          v53 = v48;
          v54 = v31.y / CGRectGetHeight(*(&v49 - 3));
          sub_1005B981C(&unk_101A23620);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_10146C4D0;
          *&v103 = 0x3F8000003F000000;
          v109 = 6;
          if (qword_1019F1E20 != -1)
          {
            swift_once();
          }

          v56 = qword_101AD7728;
          sub_1006C121C(&v103, &v98[0].d);
          *(&v57 + 1) = 0x3FC999999999999ALL;
          v89 = xmmword_10146D9F0;
          *&v98[0].b = xmmword_10146D9F0;
          *&v98[0].a = v56;
          v99 = 0;
          *&v57 = 131586;
          v95 = v57;
          v100 = 131586;
          sub_1005C4D90(v110, v14);
          *(v14 + 6) = &type metadata for CRLBasicLayerAnimation.Def;
          v88 = sub_1005F907C();
          *(v14 + 7) = v88;
          v58 = swift_allocObject();
          *(v14 + 3) = v58;
          sub_1005F8AB8(v98, v58 + 16);
          v87 = v56;
          sub_100687CF4(&v103);
          v14[64] = 0;
          v59 = *(v6 + 28);
          v60 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
          v61 = *(v60 - 8);
          v62 = *(v61 + 56);
          v92 = v62;
          v93 = v61 + 56;
          v62(&v14[v59], 1, 1, v60);
          v62(&v14[*(v6 + 32)], 1, 1, v60);
          sub_1005F8B14(v98);
          sub_100D673B0(v18, 0.05);
          sub_10098C698(v14, type metadata accessor for CRLRepAnimation);
          v63 = objc_allocWithZone(CAMediaTimingFunction);
          LODWORD(v64) = 0.5;
          LODWORD(v65) = 1.0;
          v66 = [v63 initWithControlPoints:0.0 :0.0 :v64 :v65];
          *(v55 + 56) = v6;
          *(v55 + 64) = &off_1018A24A8;
          v67 = sub_10002C58C((v55 + 32));
          sub_100D67A6C(v66, v67);

          sub_10098C698(v18, type metadata accessor for CRLRepAnimation);
          *&v103 = 0x3F8000003F000000;
          v109 = 6;
          sub_1006C121C(&v103, &v98[0].d);
          *&v98[0].b = v89;
          v68 = v87;
          *&v98[0].a = v87;
          v99 = 0;
          v100 = v95;
          sub_1005C4D90(v112, v14);
          v69 = v88;
          *(v14 + 6) = &type metadata for CRLBasicLayerAnimation.Def;
          *(v14 + 7) = v69;
          v70 = swift_allocObject();
          *(v14 + 3) = v70;
          sub_1005F8AB8(v98, v70 + 16);
          v71 = v68;
          sub_100687CF4(&v103);
          v14[64] = 0;
          v72 = v92;
          v92(&v14[*(v6 + 28)], 1, 1, v60);
          v72(&v14[*(v6 + 32)], 1, 1, v60);
          sub_1005F8B14(v98);
          sub_100D673B0(v18, 0.05);
          sub_10098C698(v14, type metadata accessor for CRLRepAnimation);
          v73 = objc_allocWithZone(CAMediaTimingFunction);
          LODWORD(v74) = 0.5;
          LODWORD(v75) = 1.0;
          v76 = [v73 initWithControlPoints:0.0 :0.0 :v74 :v75];
          *(v55 + 96) = v6;
          *(v55 + 104) = &off_1018A24A8;
          v77 = sub_10002C58C((v55 + 72));
          sub_100D67A6C(v76, v77);

          sub_10098C698(v18, type metadata accessor for CRLRepAnimation);
          v103 = xmmword_101489B40;
          v104 = v50;
          v105 = v54;
          v106 = 0;
          v107 = 0;
          v108 = 2;
          v109 = 74;
          sub_1006C121C(&v103, &v98[0].ty);
          *&v98[0].a = xmmword_1014861A0;
          *&v98[0].c = xmmword_1014861B0;
          v98[0].tx = 0.0;
          v101 = 0;
          v102 = v95;
          sub_1005C4D90(v110, v8);
          *(v8 + 6) = &type metadata for CRLSpringLayerAnimation.Def;
          *(v8 + 7) = sub_1008DA198();
          v78 = swift_allocObject();
          *(v8 + 3) = v78;
          sub_1008DA1EC(v98, v78 + 16);
          sub_100687CF4(&v103);
          v8[64] = 0;
          v79 = v92;
          v92(&v8[*(v6 + 28)], 1, 1, v60);
          v79(&v8[*(v6 + 32)], 1, 1, v60);
          sub_1007D0604(v98);
          v80 = v91;
          sub_100D6811C(v91, 24.0);
          sub_10098C698(v8, type metadata accessor for CRLRepAnimation);
          sub_100D687D0(v14, 0.0);
          sub_10098C698(v80, type metadata accessor for CRLRepAnimation);
          sub_100D68E88(v18, 1.0);
          sub_10098C698(v14, type metadata accessor for CRLRepAnimation);
          *(v55 + 136) = v6;
          *(v55 + 144) = &off_1018A24A8;
          v81 = sub_10002C58C((v55 + 112));
          sub_100D6954C(v81, 320.0);
          sub_10098C698(v18, type metadata accessor for CRLRepAnimation);
          v82 = sub_100789704(v55, 0.0);
          v84 = v83;
          v85 = v82;
          swift_setDeallocating();
          sub_1005B981C(&unk_101A09F70);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          sub_10097F5F0(0, 1, 1, 0, 0, 0, 0, 0, v85, 0, v84);

          sub_1005C4DC8(v110);
          sub_1005C4DC8(v112);
          return;
        }
      }
    }

    else
    {
    }

    v86 = v96;
  }

  else
  {
    v86 = v97;
  }
}

void sub_100988B88(void *a1, uint64_t a2, uint64_t a3)
{
  *&v269 = a3;
  v263 = type metadata accessor for CRLSpringLayerAnimation();
  __chkstk_darwin(v263);
  v253 = &v235 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v255 = (&v235 - v7);
  __chkstk_darwin(v8);
  v254 = &v235 - v9;
  __chkstk_darwin(v10);
  v256 = &v235 - v11;
  __chkstk_darwin(v12);
  v249 = &v235 - v13;
  __chkstk_darwin(v14);
  v248 = (&v235 - v15);
  __chkstk_darwin(v16);
  v247 = &v235 - v17;
  __chkstk_darwin(v18);
  v250 = &v235 - v19;
  __chkstk_darwin(v20);
  v243 = (&v235 - v21);
  __chkstk_darwin(v22);
  v245 = (&v235 - v23);
  __chkstk_darwin(v24);
  v244 = &v235 - v25;
  __chkstk_darwin(v26);
  v246 = &v235 - v27;
  v28 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v28);
  v251 = &v235 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v252 = &v235 - v31;
  __chkstk_darwin(v32);
  *&v242 = &v235 - v33;
  __chkstk_darwin(v34);
  v266 = &v235 - v35;
  __chkstk_darwin(v36);
  *&v240 = &v235 - v37;
  __chkstk_darwin(v38);
  *&v241 = &v235 - v39;
  v258 = a1;
  v40 = sub_101219620();
  v41 = String._bridgeToObjectiveC()();
  v42 = objc_opt_self();
  v43 = [v42 colorNamed:v41];

  if (v43)
  {
    v44 = [v43 CGColor];

    if (v44)
    {
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v44, 0.2);
    }

    else
    {
      CopyWithAlpha = 0;
    }
  }

  else
  {
    CopyWithAlpha = 0;
    v44 = 0;
  }

  v261 = v42;
  v262 = v28;
  v264 = v44;
  v265 = CopyWithAlpha;
  v268 = v40;
  v270 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_10098B468(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    Set.Iterator.init(_cocoa:)();
    a2 = v278[2];
    v46 = v278[3];
    v47 = v278[4];
    v48 = v278[5];
    v49 = v278[6];
  }

  else
  {
    v50 = -1 << *(a2 + 32);
    v46 = a2 + 56;
    v47 = ~v50;
    v51 = -v50;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v49 = v52 & *(a2 + 56);

    v48 = 0;
  }

  v267 = v47;
  v53 = (v47 + 64) >> 6;
  v54 = 0.0;
  v55 = &selRef_allowResizeDelegate;
  v56 = 0.0;
  v57 = 0.0;
  v58 = 0.0;
  while (a2 < 0)
  {
    v64 = __CocoaSet.Iterator.next()();
    if (!v64)
    {
      goto LABEL_25;
    }

    *&v273 = v64;
    type metadata accessor for CRLBoardItem(0);
    swift_dynamicCast();
    v63 = *&v271[0];
    v61 = v48;
    v62 = v49;
    if (!*&v271[0])
    {
      goto LABEL_25;
    }

LABEL_23:
    v280.origin.x = 0.0;
    v280.origin.y = 0.0;
    v280.size.width = 0.0;
    v280.size.height = 0.0;
    v279.origin.x = v54;
    v279.origin.y = v56;
    v279.size.width = v57;
    v279.size.height = v58;
    v65 = CGRectEqualToRect(v279, v280);
    v66 = (*((swift_isaMask & *v63) + 0xE0))();
    [v66 boundsBeforeRotation];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    if (!v65)
    {
      v68 = sub_10011FC04(v54, v56, v57, v58, v68, v70, v72, v74);
      v70 = v75;
      v72 = v76;
      v74 = v77;
    }

    v48 = v61;
    v49 = v62;
    v54 = v68;
    v56 = v70;
    v57 = v72;
    v58 = v74;
  }

  v59 = v48;
  v60 = v49;
  v61 = v48;
  if (v49)
  {
LABEL_19:
    v62 = (v60 - 1) & v60;
    v63 = *(*(a2 + 48) + ((v61 << 9) | (8 * __clz(__rbit64(v60)))));
    if (!v63)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v61 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v61 >= v53)
    {
      break;
    }

    v60 = *(v46 + 8 * v61);
    ++v59;
    if (v60)
    {
      goto LABEL_19;
    }
  }

LABEL_25:
  sub_100035F90();
  *&v271[0] = sub_1006768FC(v270);
  v55 = 0;
  sub_10097F55C(v271, v54, v56);
  v46 = *&v271[0];
  if ((*&v271[0] & 0x8000000000000000) != 0 || (*&v271[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v78 = *(*&v271[0] + 16);
  for (i = 0; v78; i = v55)
  {
    v79 = 0;
    v270 = v46 & 0xC000000000000001;
    v80 = _swiftEmptyArrayStorage;
    v55 = v269;
    while (1)
    {
      if (v270)
      {
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v79 >= *(v46 + 16))
        {
          goto LABEL_44;
        }

        v81 = *(v46 + 8 * v79 + 32);
      }

      v82 = v81;
      v83 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      v84 = [v55 repForInfo:v81];
      if (v84)
      {
        v85 = v84;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakAssign();
        v86 = v80;
        v87 = qword_1019F4290;

        v88 = v87 & 0xFFFFFFFFFFFFFFE7;
        v80 = v86;
        v274 = v88;
        sub_1005C4D58(&v273, v271);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_100B356F8(0, v86[2] + 1, 1, v86);
        }

        v90 = v80[2];
        v89 = v80[3];
        v55 = v269;
        if (v90 >= v89 >> 1)
        {
          v80 = sub_100B356F8((v89 > 1), v90 + 1, 1, v80);
        }

        v80[2] = v90 + 1;
        sub_1005C4D58(v271, &v80[3 * v90 + 4]);
      }

      else
      {
      }

      ++v79;
      if (v83 == v78)
      {
        goto LABEL_47;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v78 = _CocoaArrayWrapper.endIndex.getter();
  }

  v80 = _swiftEmptyArrayStorage;
LABEL_47:
  v270 = v80;

  v91 = sub_1005B981C(&unk_101A23620);
  v267 = swift_allocObject();
  *(v267 + 16) = xmmword_10146C4D0;
  v92 = swift_allocObject();
  v269 = xmmword_10146BDE0;
  *(v92 + 16) = xmmword_10146BDE0;
  v93 = swift_allocObject();
  v94 = v93;
  v93[1] = v269;
  v95 = &selRef_isEnumeratingForUserSearch;
  v96 = &OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_showing;
  v97 = v268;
  v259 = v92;
  v260 = v91;
  if (v268)
  {
    v98 = v264;
    *&v271[0] = v264;
    v272 = 63;
    v99 = qword_1019F1E20;
    v100 = v268;
    v101 = v98;
    if (v99 != -1)
    {
LABEL_78:
      swift_once();
    }

    v235 = v96[229];
    v102 = [v100 v95[327]];
    v103 = v240;
    sub_1006C121C(v271, v240 + 24);
    v104 = v262;
    UUID.init()();

    sub_100687CF4(v271);
    v236 = v100;
    swift_unknownObjectWeakInit();
    v105 = v104[7];
    v106 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
    v107 = *(*(v106 - 8) + 56);
    v107(v103 + v105, 1, 1, v106);
    v108 = v103 + v104[8];
    v239 = v107;
    v107(v108, 1, 1, v106);
    swift_unknownObjectWeakAssign();

    *(&v109 + 1) = 0x3FC999999999999ALL;
    v237 = xmmword_10146D9F0;
    *(v103 + 8) = xmmword_10146D9F0;
    v110 = v235;
    *v103 = v235;
    *(v103 + 288) = 0;
    *&v109 = 131586;
    v238 = v109;
    *(v103 + 296) = 131586;
    v111 = v241;
    sub_10098C630(v103, v241, type metadata accessor for CRLBasicLayerAnimation);
    *(v111 + 16) = 0x3FB47AE147AE147BLL;
    v112 = v110;
    sub_10098C698(v103, type metadata accessor for CRLBasicLayerAnimation);
    v113 = objc_allocWithZone(CAMediaTimingFunction);
    LODWORD(v114) = 0.5;
    LODWORD(v115) = 1.0;
    v116 = [v113 initWithControlPoints:v114 :0.0 :0.0 :v115];
    v94[3].Description = v104;
    v94[4].Kind = &off_1018816E0;
    v117 = sub_10002C58C(&v94[2].Kind);
    sub_10098C630(v111, v117, type metadata accessor for CRLBasicLayerAnimation);
    v118 = *v117;
    *v117 = v116;

    sub_10098C698(v111, type metadata accessor for CRLBasicLayerAnimation);
    v271[0] = xmmword_101489B60;
    v272 = 68;
    v119 = qword_1019F1E20;
    v120 = v236;
    if (v119 != -1)
    {
      swift_once();
    }

    v121 = qword_101AD7728;
    v122 = [v120 layer];
    v123 = v242;
    sub_1006C121C(v271, v242 + 24);
    UUID.init()();

    sub_100687CF4(v271);
    swift_unknownObjectWeakInit();
    v124 = v239;
    v239(v123 + v104[7], 1, 1, v106);
    v124(v123 + v104[8], 1, 1, v106);
    swift_unknownObjectWeakAssign();

    v125 = v238;
    *(v123 + 8) = v237;
    *v123 = v121;
    *(v123 + 288) = 0;
    *(v123 + 296) = v125;
    v126 = v266;
    sub_10098C630(v123, v266, type metadata accessor for CRLBasicLayerAnimation);
    *(v126 + 16) = 0x3FB47AE147AE147BLL;
    v127 = v121;
    sub_10098C698(v123, type metadata accessor for CRLBasicLayerAnimation);
    v128 = objc_allocWithZone(CAMediaTimingFunction);
    LODWORD(v129) = 0.5;
    LODWORD(v130) = 1.0;
    v131 = [v128 initWithControlPoints:v129 :0.0 :0.0 :v130];
    v94[6].Kind = v104;
    v94[6].Description = &off_1018816E0;
    v132 = sub_10002C58C(&v94[4].Description);
    sub_10098C630(v126, v132, type metadata accessor for CRLBasicLayerAnimation);
    v133 = *v132;
    *v132 = v131;

    sub_10098C698(v126, type metadata accessor for CRLBasicLayerAnimation);
    v97 = v268;
    v92 = v259;
  }

  else
  {
    v93[5] = 0u;
    v93[6] = 0u;
    v93[3] = 0u;
    v93[4] = 0u;
    v93[2] = 0u;
  }

  v134 = sub_100789704(v94, 0.0);
  v136 = v135;
  v137 = v134;
  swift_setDeallocating();
  v266 = sub_1005B981C(&unk_101A09F70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v94 = &type metadata for CRLLayerAnimationGroup;
  *(v92 + 56) = &type metadata for CRLLayerAnimationGroup;
  *(v92 + 64) = &off_101885E50;
  *(v92 + 32) = v136;
  *(v92 + 40) = v137;
  v138 = swift_allocObject();
  v139 = v138;
  *(v138 + 1) = v269;
  if (v97)
  {
    v271[0] = xmmword_101489B70;
    v272 = 68;
    v140 = v97;
    *&v237 = v140;
    v141 = [v140 layer];
    v142 = v243;
    sub_1006C121C(v271, v243 + 40);
    v143 = v263;
    UUID.init()();

    sub_100687CF4(v271);
    swift_unknownObjectWeakInit();
    v144 = *(v143 + 28);
    v145 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
    v146 = *(v145 - 8);
    v147 = *(v146 + 56);
    *&v238 = v147;
    v239 = (v146 + 56);
    v147(v142 + v144, 1, 1, v145);
    v147(v142 + *(v143 + 32), 1, 1, v145);
    swift_unknownObjectWeakAssign();

    *(v142 + 4) = 0;
    v242 = xmmword_1014861A0;
    v241 = xmmword_1014861B0;
    *v142 = xmmword_1014861A0;
    *(v142 + 1) = xmmword_1014861B0;
    *(v142 + 38) = 0;
    v240 = 0x20202uLL;
    *(v142 + 78) = 131586;
    v148 = v245;
    sub_10098C630(v142, v245, type metadata accessor for CRLSpringLayerAnimation);
    *v148 = 0x4034000000000000;
    sub_10098C698(v142, type metadata accessor for CRLSpringLayerAnimation);
    v243 = type metadata accessor for CRLSpringLayerAnimation;
    v149 = v148;
    v150 = v244;
    sub_10098C6F8(v149, v244, type metadata accessor for CRLSpringLayerAnimation);
    *(v150 + 8) = 0;
    v151 = v150;
    v152 = v246;
    sub_10098C6F8(v151, v246, type metadata accessor for CRLSpringLayerAnimation);
    *(v152 + 16) = 0x3FF0000000000000;
    v139[7] = v143;
    v139[8] = &off_1018B87B8;
    v153 = sub_10002C58C(v139 + 4);
    sub_10098C630(v152, v153, type metadata accessor for CRLSpringLayerAnimation);
    v153[3] = 0x4074000000000000;
    sub_10098C698(v152, type metadata accessor for CRLSpringLayerAnimation);
    *&v271[0] = 1065353216;
    v272 = 6;
    v154 = v237;
    v155 = [v154 layer];
    v156 = v249;
    sub_1006C121C(v271, (v249 + 40));
    UUID.init()();

    sub_100687CF4(v271);
    swift_unknownObjectWeakInit();
    v157 = v238;
    (v238)(v156 + *(v143 + 28), 1, 1, v145);
    v157(v156 + *(v143 + 32), 1, 1, v145);
    v97 = v268;
    swift_unknownObjectWeakAssign();

    v94 = &type metadata for CRLLayerAnimationGroup;
    *(v156 + 32) = 0;
    v158 = v241;
    *v156 = v242;
    *(v156 + 16) = v158;
    *(v156 + 304) = 0;
    *(v156 + 312) = v240;
    v159 = v248;
    sub_10098C630(v156, v248, type metadata accessor for CRLSpringLayerAnimation);
    *v159 = 0x4034000000000000;
    sub_10098C698(v156, type metadata accessor for CRLSpringLayerAnimation);
    v160 = v159;
    v161 = v247;
    v162 = v243;
    sub_10098C6F8(v160, v247, v243);
    *(v161 + 8) = 0;
    v163 = v250;
    sub_10098C6F8(v161, v250, v162);
    v163[2] = 0x3FF0000000000000;
    v139[12] = v143;
    v139[13] = &off_1018B87B8;
    v164 = sub_10002C58C(v139 + 9);
    sub_10098C630(v163, v164, type metadata accessor for CRLSpringLayerAnimation);
    v164[3] = 0x4074000000000000;
    v165 = v163;
    v92 = v259;
    sub_10098C698(v165, type metadata accessor for CRLSpringLayerAnimation);
  }

  else
  {
    *(v138 + 5) = 0u;
    *(v138 + 6) = 0u;
    *(v138 + 3) = 0u;
    *(v138 + 4) = 0u;
    *(v138 + 2) = 0u;
  }

  v166 = sub_100789704(v139, 0.0);
  v168 = v167;
  v169 = v166;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v92 + 96) = &type metadata for CRLLayerAnimationGroup;
  *(v92 + 104) = &off_101885E50;
  *(v92 + 72) = v168;
  *(v92 + 80) = v169;
  v170 = sub_1008821BC(v92, 0.0);
  v172 = v171;
  v173 = v170;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v174 = v267;
  *(v267 + 56) = &type metadata for CRLLayerAnimationSequence;
  *(v174 + 8) = &off_10188A5A0;
  *(v174 + 4) = v172;
  v174[5] = v173;
  v175 = swift_allocObject();
  v176 = v175;
  *(v175 + 1) = v269;
  if (v97)
  {
    v177 = v97;
    v178 = [v261 clearColor];
    v179 = [v178 CGColor];

    *&v271[0] = v179;
    *(&v271[0] + 1) = v265;
    v272 = 60;
    v180 = qword_1019F1E20;
    v260 = v265;
    if (v180 != -1)
    {
      swift_once();
    }

    v249 = qword_101AD7728;
    v181 = [v177 layer];
    v182 = v251;
    sub_1006C121C(v271, (v251 + 24));
    v183 = v262;
    UUID.init()();

    sub_100687CF4(v271);
    v250 = v177;
    swift_unknownObjectWeakInit();
    v184 = *(v183 + 28);
    v185 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
    v186 = *(v185 - 8);
    v94 = *(v186 + 56);
    v259 = v186 + 56;
    (v94)(v182 + v184, 1, 1, v185);
    (v94)(v182 + *(v183 + 32), 1, 1, v185);
    swift_unknownObjectWeakAssign();

    *(&v187 + 1) = 0x3FC999999999999ALL;
    *(v182 + 8) = xmmword_10146D9F0;
    v188 = v249;
    *v182 = v249;
    *(v182 + 288) = 0;
    *&v187 = 131586;
    v269 = v187;
    *(v182 + 296) = 131586;
    v189 = v252;
    sub_10098C630(v182, v252, type metadata accessor for CRLBasicLayerAnimation);
    *(v189 + 16) = 0x3FB47AE147AE147BLL;
    v190 = v188;
    sub_10098C698(v182, type metadata accessor for CRLBasicLayerAnimation);
    v191 = objc_allocWithZone(CAMediaTimingFunction);
    LODWORD(v192) = 0.5;
    LODWORD(v193) = 1.0;
    v194 = [v191 initWithControlPoints:v192 :0.0 :0.0 :v193];
    v176[7] = v183;
    v176[8] = &off_1018816E0;
    v195 = sub_10002C58C(v176 + 4);
    sub_10098C630(v189, v195, type metadata accessor for CRLBasicLayerAnimation);
    v196 = *v195;
    *v195 = v194;

    sub_10098C698(v189, type metadata accessor for CRLBasicLayerAnimation);
    v197 = v250;
    v198 = v260;
    v199 = [v261 clearColor];
    v200 = [v199 CGColor];

    *&v271[0] = v265;
    *(&v271[0] + 1) = v200;
    v272 = 60;
    v201 = [v197 layer];
    v202 = v253;
    sub_1006C121C(v271, (v253 + 40));
    v203 = v263;
    UUID.init()();

    sub_100687CF4(v271);
    swift_unknownObjectWeakInit();
    (v94)(v202 + *(v203 + 28), 1, 1, v185);
    (v94)(v202 + *(v203 + 32), 1, 1, v185);
    swift_unknownObjectWeakAssign();

    *(v202 + 32) = 0;
    *v202 = xmmword_1014861A0;
    *(v202 + 16) = xmmword_1014861B0;
    *(v202 + 304) = 0;
    *(v202 + 312) = v269;
    v204 = v255;
    sub_10098C630(v202, v255, type metadata accessor for CRLSpringLayerAnimation);
    *v204 = 0x4034000000000000;
    sub_10098C698(v202, type metadata accessor for CRLSpringLayerAnimation);
    v205 = v204;
    v206 = v254;
    sub_10098C6F8(v205, v254, type metadata accessor for CRLSpringLayerAnimation);
    *(v206 + 8) = 0;
    v207 = v206;
    v208 = v256;
    sub_10098C6F8(v207, v256, type metadata accessor for CRLSpringLayerAnimation);
    *(v208 + 16) = 0x3FF0000000000000;
    v176[12] = v203;
    v176[13] = &off_1018B87B8;
    v209 = sub_10002C58C(v176 + 9);
    sub_10098C630(v208, v209, type metadata accessor for CRLSpringLayerAnimation);
    v209[3] = 0x4074000000000000;
    sub_10098C698(v208, type metadata accessor for CRLSpringLayerAnimation);
  }

  else
  {
    *(v175 + 5) = 0u;
    *(v175 + 6) = 0u;
    *(v175 + 3) = 0u;
    *(v175 + 4) = 0u;
    *(v175 + 2) = 0u;
  }

  v210 = sub_1008821BC(v176, 0.0);
  v212 = v211;
  v213 = v210;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v214 = v267;
  *(v267 + 96) = &type metadata for CRLLayerAnimationSequence;
  *(v214 + 13) = &off_10188A5A0;
  *(v214 + 9) = v212;
  v214[10] = v213;
  v100 = i;
  *&v269 = *(v270 + 16);
  if (v269)
  {
    v215 = 0;
    v95 = (v270 + 32);
    v96 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v215 >= *(v270 + 16))
      {
        __break(1u);
        goto LABEL_78;
      }

      sub_1005C4D90(v95, v277);
      sub_10098A554(v277, &v273, 0.08);
      if (v100)
      {
        break;
      }

      sub_1005C4DC8(v277);
      if (v275)
      {
        sub_100050F74(&v273, v271);
        sub_100050F74(v271, &v273);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v278[0] = v96;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v96 = sub_100B364B4(0, v96[2] + 1, 1, v96);
          v278[0] = v96;
        }

        v218 = v96[2];
        v217 = v96[3];
        v94 = 0;
        if (v218 >= v217 >> 1)
        {
          v96 = sub_100B364B4((v217 > 1), v218 + 1, 1, v96);
          v278[0] = v96;
        }

        v219 = v275;
        v220 = v276;
        v221 = sub_10002A948(&v273, v275);
        v222 = __chkstk_darwin(v221);
        v224 = &v235 - ((v223 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v225 + 16))(v224, v222);
        sub_100725200(v218, v224, v278, v219, v220);
        sub_100005070(&v273);
      }

      else
      {
        sub_10000CAAC(&v273, &unk_101A09F70);
      }

      ++v215;
      v95 += 3;
      if (v269 == v215)
      {
        goto LABEL_74;
      }
    }

    sub_1005C4DC8(v277);

    __break(1u);

    __break(1u);
  }

  else
  {
    v96 = _swiftEmptyArrayStorage;
LABEL_74:

    v226 = v96[2];
    if (v226 <= 2)
    {
      v226 = 2;
    }

    v227 = v267;
    *(v267 + 136) = &type metadata for CRLLayerAnimationCascade;
    *(v227 + 144) = &off_101887178;
    *(v227 + 112) = 0.05 / (v226 - 1);
    *(v227 + 120) = v96;
    *(v227 + 128) = 0;
    v228 = sub_100789704(v227, 0.0);
    v230 = v229;
    v231 = v228;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v232 = swift_allocObject();
    v233 = v258;
    *(v232 + 16) = v258;
    v234 = v233;
    sub_10097F5F0(0, 1, 1, 0, 0, 0, 0, sub_10098C628, v231, v232, v230);
  }
}

uint64_t sub_10098A554@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v75 = a2;
  v5 = type metadata accessor for CRLRepAnimation();
  __chkstk_darwin(v5);
  v69 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v66 - v8;
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  __chkstk_darwin(v12);
  v76 = &v66 - v13;
  __chkstk_darwin(v14);
  v77 = &v66 - v15;
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  sub_1005B981C(&unk_101A23620);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_10146C6B0;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_10146BDE0;
  v85 = xmmword_101489B80;
  v86 = 0;
  v87 = 0;
  v88 = 1;
  v89 = 0;
  v90 = 2;
  v91 = 74;
  if (qword_1019F1E20 != -1)
  {
    swift_once();
  }

  v19 = qword_101AD7728;
  sub_1006C121C(&v85, &v79[1] + 8);
  *(&v20 + 1) = 0x3FC999999999999ALL;
  *(v79 + 8) = xmmword_10146D9F0;
  *&v79[0] = v19;
  v81[31] = 0;
  *&v20 = 131586;
  v72 = v20;
  v82 = 131586;
  sub_1005C4D90(a1, v11);
  *(v11 + 6) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v11 + 7) = sub_1005F907C();
  v21 = swift_allocObject();
  *(v11 + 3) = v21;
  sub_1005F8AB8(v79, v21 + 16);
  v22 = v19;
  sub_100687CF4(&v85);
  v11[64] = 0;
  v23 = *(v5 + 28);
  v24 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v68 = a1;
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 56);
  v70 = v26 + 56;
  v71 = v27;
  v27(&v11[v23], 1, 1, v24);
  v27(&v11[*(v5 + 32)], 1, 1, v25);
  sub_1005F8B14(v79);
  v28 = v76;
  sub_100D673B0(v76, a3);
  v29 = v28;
  sub_10098C698(v11, type metadata accessor for CRLRepAnimation);
  v30 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v31) = 0.5;
  LODWORD(v32) = 1.0;
  v33 = [v30 initWithControlPoints:v31 :0.0 :0.0 :v32];
  v34 = v77;
  sub_100D67A6C(v33, v77);

  sub_10098C698(v29, type metadata accessor for CRLRepAnimation);
  sub_10098C630(v34, v18, type metadata accessor for CRLRepAnimation);
  v67 = v11;
  v35 = v34;
  v36 = *(v18 + 6);
  v37 = *(v18 + 7);
  sub_10002A948((v18 + 24), v36);
  (*(v37 + 144))(0, v36, v37);
  sub_10098C698(v35, type metadata accessor for CRLRepAnimation);
  v38 = v78;
  *(v78 + 56) = v5;
  *(v38 + 64) = &off_1018A24A8;
  v39 = v5;
  v40 = sub_10002C58C((v38 + 32));
  sub_10098C630(v18, v40, type metadata accessor for CRLRepAnimation);
  v40[2] = 3;
  sub_10098C698(v18, type metadata accessor for CRLRepAnimation);
  v85 = xmmword_101489B90;
  v86 = 0;
  v87 = 0;
  v88 = 1;
  v89 = 0;
  v90 = 2;
  v91 = 74;
  sub_1006C121C(&v85, v81);
  v79[0] = xmmword_1014861A0;
  v79[1] = xmmword_1014861B0;
  v80 = 0;
  v83 = 0;
  v84 = v72;
  v41 = v69;
  sub_1005C4D90(v68, v69);
  *(v41 + 48) = &type metadata for CRLSpringLayerAnimation.Def;
  *(v41 + 56) = sub_1008DA198();
  v42 = swift_allocObject();
  *(v41 + 24) = v42;
  sub_1008DA1EC(v79, v42 + 16);
  sub_100687CF4(&v85);
  *(v41 + 64) = 0;
  v43 = v39;
  v66 = v39;
  v44 = v41 + *(v39 + 28);
  v45 = v71;
  v46 = v18;
  v71(v44, 1, 1, v25);
  v45(v41 + *(v43 + 32), 1, 1, v25);
  sub_1007D0604(v79);
  v47 = v73;
  sub_100D6811C(v73, 20.0);
  sub_10098C698(v41, type metadata accessor for CRLRepAnimation);
  v48 = v67;
  sub_100D687D0(v67, 0.0);
  sub_10098C698(v47, type metadata accessor for CRLRepAnimation);
  v49 = v76;
  sub_100D68E88(v76, 1.0);
  sub_10098C698(v48, type metadata accessor for CRLRepAnimation);
  v50 = v77;
  sub_100D6954C(v77, 320.0);
  sub_10098C698(v49, type metadata accessor for CRLRepAnimation);
  sub_10098C630(v50, v46, type metadata accessor for CRLRepAnimation);
  v51 = *(v46 + 48);
  v52 = *(v46 + 56);
  sub_10002A948(v46 + 24, v51);
  (*(v52 + 144))(0, v51, v52);
  sub_10098C698(v50, type metadata accessor for CRLRepAnimation);
  v53 = v78;
  *(v78 + 96) = v66;
  *(v53 + 104) = &off_1018A24A8;
  v54 = sub_10002C58C((v53 + 72));
  sub_10098C630(v46, v54, type metadata accessor for CRLRepAnimation);
  v54[2] = 3;
  sub_10098C698(v46, type metadata accessor for CRLRepAnimation);
  v55 = sub_1008821BC(v53, 0.0);
  v57 = v56;
  v58 = v55;
  swift_setDeallocating();
  sub_1005B981C(&unk_101A09F70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v59 = v74;
  *(v74 + 56) = &type metadata for CRLLayerAnimationSequence;
  *(v59 + 8) = &off_10188A5A0;
  *(v59 + 4) = v57;
  v59[5] = v58;
  v60 = sub_100789704(v59, 0.0);
  v62 = v61;
  v63 = v60;
  swift_setDeallocating();
  sub_10000CAAC((v59 + 4), &unk_101A09F70);
  result = swift_deallocClassInstance();
  v65 = v75;
  *(v75 + 3) = &type metadata for CRLLayerAnimationGroup;
  *(v65 + 4) = &off_101885E50;
  *v65 = v62;
  v65[1] = v63;
  return result;
}

void sub_10098AC88(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable];
  *&a1[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable] = 0;

  v3 = [a1 interactiveCanvasController];
  [v3 invalidateOverlayLayersForRep:a1];
}

id sub_10098AEC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLInsertionAnimationHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10098AF20(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  sub_1005B981C(&unk_1019F4D60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101465920;
  *(v8 + 32) = a1;
  swift_unknownObjectRetain();
  v9 = [a3 canvas];
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a3;
  v10[4] = a2;
  v10[5] = a4;
  v14[4] = sub_10098C808;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = *"";
  v14[2] = sub_100007638;
  v14[3] = &unk_10188F070;
  v11 = _Block_copy(v14);
  v12 = a3;
  v13 = a2;

  [v9 afterLayoutIncludingLayers:1 performBlock:v11];
  _Block_release(v11);
}

uint64_t sub_10098B074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_101139E1C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10098B160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = v9[3];
  v20 = v9[2];
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[6];
  v16 = v9[7];
  v17 = v9[8];
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_10002D4C8;

  return sub_1011392F4(a1, v20, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_10098B294()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10098B2FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D3D4;

  return sub_101139E1C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10098B3E8()
{
  swift_unknownObjectRelease();
  if (v0[4])
  {
  }

  if (v0[10])
  {
  }

  if (v0[13])
  {
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10098B468(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_10098B4B0(void **a1, void **a2, double a3, double a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = sub_100076BAC();
  v9 = (*((swift_isaMask & *v6) + 0xE0))();
  [v9 center];
  v11 = v10;
  v13 = v12;

  v14 = sub_100120090(a3, a4, v11, v13);
  v15 = (*((swift_isaMask & *v7) + 0xE0))();
  [v15 center];
  v17 = v16;
  v19 = v18;

  v20 = sub_100120090(a3, a4, v17, v19);
  if (v8)
  {
    return v14 < v20;
  }

  else
  {
    return v20 < v14;
  }
}

uint64_t sub_10098B5F0(void **__src, id *__dst, id *a3, void **a4, double a5, double a6)
{
  v6 = a4;
  v7 = a3;
  v10 = __src;
  v11 = __dst - __src;
  v12 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v12 = __dst - __src;
  }

  v13 = v12 >> 3;
  v14 = a3 - __dst;
  v15 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v15 = a3 - __dst;
  }

  v16 = v15 >> 3;
  if (v13 >= v15 >> 3)
  {
    v38 = __dst;
    if (a4 != __dst || &__dst[v16] <= a4)
    {
      memmove(a4, __dst, 8 * v16);
    }

    v18 = &v6[v16];
    if (v14 >= 8 && v38 > v10)
    {
      v61 = v6;
LABEL_28:
      v65 = v38;
      v39 = v38 - 1;
      --v7;
      v40 = v18;
      v63 = v39;
      do
      {
        v41 = *--v40;
        v42 = *v39;
        v43 = v41;
        v44 = v42;
        v45 = sub_100076BAC();
        v46 = (*((swift_isaMask & *v43) + 0xE0))();
        [v46 center];
        v48 = v47;
        v50 = v49;

        v51 = sub_100120090(a5, a6, v48, v50);
        v52 = (*((swift_isaMask & *v44) + 0xE0))();
        [v52 center];
        v54 = v53;
        v56 = v55;

        v57 = sub_100120090(a5, a6, v54, v56);
        if (v45)
        {
          v58 = v51 < v57;
        }

        else
        {
          v58 = v57 < v51;
        }

        v59 = v7 + 1;
        if (v58)
        {
          v6 = v61;
          if (v59 != v65)
          {
            *v7 = *v63;
          }

          if (v18 <= v61 || (v38 = v63, v63 <= v10))
          {
            v38 = v63;
            goto LABEL_43;
          }

          goto LABEL_28;
        }

        v6 = v61;
        if (v59 != v18)
        {
          *v7 = *v40;
        }

        --v7;
        v18 = v40;
        v39 = v63;
      }

      while (v40 > v61);
      v18 = v40;
      v38 = v65;
    }
  }

  else
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v18 = &v6[v13];
    if (v11 >= 8 && __dst < v7)
    {
      v19 = __dst;
      v62 = v18;
      do
      {
        v64 = v19;
        v20 = v6;
        v21 = *v6;
        v22 = *v19;
        v23 = v21;
        v24 = sub_100076BAC();
        v25 = (*((swift_isaMask & *v22) + 0xE0))();
        [v25 center];
        v27 = v26;
        v29 = v28;

        v30 = sub_100120090(a5, a6, v27, v29);
        v31 = (*((swift_isaMask & *v23) + 0xE0))();
        [v31 center];
        v33 = v32;
        v35 = v34;

        v36 = sub_100120090(a5, a6, v33, v35);
        if (v24)
        {
          if (v30 >= v36)
          {
            goto LABEL_14;
          }
        }

        else if (v36 >= v30)
        {
LABEL_14:
          v37 = v20;
          v6 = v20 + 1;
          v19 = v64;
          if (v10 == v20)
          {
            goto LABEL_16;
          }

LABEL_15:
          *v10 = *v37;
          goto LABEL_16;
        }

        v37 = v64;
        v19 = v64 + 1;
        v6 = v20;
        if (v10 != v64)
        {
          goto LABEL_15;
        }

LABEL_16:
        ++v10;
        v18 = v62;
      }

      while (v6 < v62 && v19 < v7);
    }

    v38 = v10;
  }

LABEL_43:
  if (v38 != v6 || v38 >= (v6 + ((v18 - v6 + (v18 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v38, v6, 8 * (v18 - v6));
  }

  return 1;
}

uint64_t sub_10098BA50(uint64_t *a1, void **a2, void *a3, double a4, double a5)
{
  v9 = a1;
  v10 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = sub_10113DE48(v10);
    v10 = result;
  }

  v19 = v9;
  *v9 = v10;
  v12 = (v10 + 16);
  v13 = *(v10 + 16);
  if (v13 < 2)
  {
LABEL_9:
    *v19 = v10;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v14 = v10 + 16 * v13;
      v9 = *v14;
      v15 = &v12[2 * v13];
      v16 = v15[1];
      sub_10098B5F0((*a3 + 8 * *v14), (*a3 + 8 * *v15), (*a3 + 8 * v16), a2, a4, a5);
      if (v5)
      {
        goto LABEL_9;
      }

      if (v16 < v9)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v17 = *v12;
      if (v13 - 2 >= *v12)
      {
        goto LABEL_11;
      }

      *v14 = v9;
      *(v14 + 8) = v16;
      v18 = v17 - v13;
      if (v17 < v13)
      {
        goto LABEL_12;
      }

      v13 = v17 - 1;
      result = memmove(v15, v15 + 2, 16 * v18);
      *v12 = v13;
      if (v13 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v10;
    __break(1u);
  }

  return result;
}

void sub_10098BB9C(void ***a1, double a2, double a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v129 = _swiftEmptyArrayStorage;
  v9 = a5[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v12 = v10++;
      if (v10 < v9)
      {
        v13 = *a5;
        v14 = *(*a5 + 8 * v10);
        v127 = *(*a5 + 8 * v12);
        v15 = v127;
        v128 = v14;
        v16 = v14;
        v17 = v15;
        v123 = sub_10098B4B0(&v128, &v127, a2, a3);
        if (v6)
        {

          goto LABEL_96;
        }

        v10 = v12 + 2;
        if (v12 + 2 < v9)
        {
          v18 = (v13 + 8 * v12 + 16);
          do
          {
            v19 = *(v18 - 1);
            v20 = *v18;
            v21 = v19;
            v22 = sub_100076BAC();
            v23 = (*((swift_isaMask & *v20) + 0xE0))();
            [v23 center];
            v25 = v24;
            v27 = v26;

            v28 = sub_100120090(a2, a3, v25, v27);
            v29 = (*((swift_isaMask & *v21) + 0xE0))();
            [v29 center];
            v31 = v30;
            v33 = v32;

            v34 = sub_100120090(a2, a3, v31, v33);
            if (v22)
            {
              if (((v123 ^ (v28 >= v34)) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            else if (v123 == v34 >= v28)
            {
              goto LABEL_15;
            }

            ++v10;
            ++v18;
          }

          while (v9 != v10);
          v10 = v9;
        }

LABEL_15:
        v6 = 0;
        if (v123)
        {
          if (v10 < v12)
          {
            goto LABEL_117;
          }

          if (v12 < v10)
          {
            v35 = 8 * v10 - 8;
            v36 = 8 * v12;
            v37 = v10;
            v38 = v12;
            do
            {
              if (v38 != --v37)
              {
                v39 = *a5;
                if (!*a5)
                {
                  goto LABEL_120;
                }

                v40 = *(v39 + v36);
                *(v39 + v36) = *(v39 + v35);
                *(v39 + v35) = v40;
              }

              ++v38;
              v35 -= 8;
              v36 += 8;
            }

            while (v38 < v37);
          }
        }
      }

      v41 = a5[1];
      if (v10 < v41)
      {
        if (__OFSUB__(v10, v12))
        {
          goto LABEL_114;
        }

        if (v10 - v12 < a6)
        {
          v42 = v12 + a6;
          if (__OFADD__(v12, a6))
          {
            goto LABEL_115;
          }

          if (v42 >= v41)
          {
            v42 = a5[1];
          }

          if (v42 < v12)
          {
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
            return;
          }

          if (v10 != v42)
          {
            v116 = v12;
            v119 = v42;
            v43 = *a5;
            v44 = *a5 + 8 * v10 - 8;
            v45 = v12 - v10;
            do
            {
              v121 = v44;
              v124 = v10;
              v46 = *(v43 + 8 * v10);
              v120 = v45;
              do
              {
                v47 = *v44;
                v48 = v46;
                v49 = v47;
                v50 = sub_100076BAC();
                v51 = (*((swift_isaMask & *v48) + 0xE0))();
                [v51 center];
                v53 = v52;
                v55 = v54;

                v56 = sub_100120090(a2, a3, v53, v55);
                v57 = (*((swift_isaMask & *v49) + 0xE0))();
                [v57 center];
                v59 = v58;
                v61 = v60;

                v62 = sub_100120090(a2, a3, v59, v61);
                if (v50)
                {
                  if (v56 >= v62)
                  {
                    break;
                  }
                }

                else if (v62 >= v56)
                {
                  break;
                }

                if (!v43)
                {
                  goto LABEL_118;
                }

                v63 = *v44;
                v46 = *(v44 + 8);
                *v44 = v46;
                *(v44 + 8) = v63;
                v44 -= 8;
              }

              while (!__CFADD__(v45++, 1));
              ++v10;
              v44 = v121 + 8;
              v45 = v120 - 1;
            }

            while (v124 + 1 != v119);
            v10 = v119;
            v12 = v116;
          }
        }
      }

      if (v10 < v12)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100B355CC(0, *(v11 + 2) + 1, 1, v11);
      }

      v66 = *(v11 + 2);
      v65 = *(v11 + 3);
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        v11 = sub_100B355CC((v65 > 1), v66 + 1, 1, v11);
      }

      *(v11 + 2) = v67;
      v68 = v11 + 32;
      v69 = &v11[16 * v66 + 32];
      *v69 = v12;
      *(v69 + 1) = v10;
      v129 = v11;
      v122 = *a1;
      if (!*a1)
      {
        goto LABEL_121;
      }

      if (v66)
      {
        v125 = v10;
        while (1)
        {
          v70 = v67 - 1;
          if (v67 >= 4)
          {
            break;
          }

          if (v67 == 3)
          {
            v71 = *(v11 + 4);
            v72 = *(v11 + 5);
            v81 = __OFSUB__(v72, v71);
            v73 = v72 - v71;
            v74 = v81;
LABEL_64:
            if (v74)
            {
              goto LABEL_104;
            }

            v87 = &v11[16 * v67];
            v89 = *v87;
            v88 = *(v87 + 1);
            v90 = __OFSUB__(v88, v89);
            v91 = v88 - v89;
            v92 = v90;
            if (v90)
            {
              goto LABEL_107;
            }

            v93 = &v68[16 * v70];
            v95 = *v93;
            v94 = *(v93 + 1);
            v81 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v81)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v91, v96))
            {
              goto LABEL_111;
            }

            if (v91 + v96 >= v73)
            {
              if (v73 < v96)
              {
                v70 = v67 - 2;
              }

              goto LABEL_85;
            }

            goto LABEL_78;
          }

          v97 = &v11[16 * v67];
          v99 = *v97;
          v98 = *(v97 + 1);
          v81 = __OFSUB__(v98, v99);
          v91 = v98 - v99;
          v92 = v81;
LABEL_78:
          if (v92)
          {
            goto LABEL_106;
          }

          v100 = &v68[16 * v70];
          v102 = *v100;
          v101 = *(v100 + 1);
          v81 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v81)
          {
            goto LABEL_109;
          }

          if (v103 < v91)
          {
            goto LABEL_3;
          }

LABEL_85:
          if (v70 - 1 >= v67)
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_116;
          }

          if (!*a5)
          {
            goto LABEL_119;
          }

          v108 = v11;
          v109 = &v68[16 * v70 - 16];
          v110 = *v109;
          v111 = v70;
          v112 = &v68[16 * v70];
          v113 = *(v112 + 1);
          sub_10098B5F0((*a5 + 8 * *v109), (*a5 + 8 * *v112), (*a5 + 8 * v113), v122, a2, a3);
          if (v6)
          {
            goto LABEL_96;
          }

          if (v113 < v110)
          {
            goto LABEL_99;
          }

          v114 = *(v108 + 2);
          if (v111 > v114)
          {
            goto LABEL_100;
          }

          *v109 = v110;
          *(v109 + 1) = v113;
          if (v111 >= v114)
          {
            goto LABEL_101;
          }

          v115 = v111;
          v67 = v114 - 1;
          memmove(v112, v112 + 16, 16 * (v114 - 1 - v115));
          v11 = v108;
          *(v108 + 2) = v114 - 1;
          if (v114 <= 2)
          {
LABEL_3:
            v129 = v11;
            v10 = v125;
            goto LABEL_4;
          }
        }

        v75 = &v68[16 * v67];
        v76 = *(v75 - 8);
        v77 = *(v75 - 7);
        v81 = __OFSUB__(v77, v76);
        v78 = v77 - v76;
        if (v81)
        {
          goto LABEL_102;
        }

        v80 = *(v75 - 6);
        v79 = *(v75 - 5);
        v81 = __OFSUB__(v79, v80);
        v73 = v79 - v80;
        v74 = v81;
        if (v81)
        {
          goto LABEL_103;
        }

        v82 = &v11[16 * v67];
        v84 = *v82;
        v83 = *(v82 + 1);
        v81 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v81)
        {
          goto LABEL_105;
        }

        v81 = __OFADD__(v73, v85);
        v86 = v73 + v85;
        if (v81)
        {
          goto LABEL_108;
        }

        if (v86 >= v78)
        {
          v104 = &v68[16 * v70];
          v106 = *v104;
          v105 = *(v104 + 1);
          v81 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v81)
          {
            goto LABEL_112;
          }

          if (v73 < v107)
          {
            v70 = v67 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_64;
      }

LABEL_4:
      v9 = a5[1];
    }

    while (v10 < v9);
  }

  if (!*a1)
  {
    goto LABEL_122;
  }

  sub_10098BA50(&v129, *a1, a5, a2, a3);
LABEL_96:
}

void sub_10098C334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5, double a6)
{
  if (a3 != a2)
  {
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_5:
    v32 = v9;
    v33 = a3;
    v11 = *(v8 + 8 * a3);
    v31 = v10;
    while (1)
    {
      v12 = *v9;
      v13 = v11;
      v14 = v12;
      v15 = sub_100076BAC();
      v16 = (*((swift_isaMask & *v13) + 0xE0))();
      [v16 center];
      v18 = v17;
      v20 = v19;

      v21 = sub_100120090(a5, a6, v18, v20);
      v22 = (*((swift_isaMask & *v14) + 0xE0))();
      [v22 center];
      v24 = v23;
      v26 = v25;

      v27 = sub_100120090(a5, a6, v24, v26);
      if (v15)
      {
        if (v21 >= v27)
        {
          goto LABEL_4;
        }
      }

      else if (v27 >= v21)
      {
        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v28 = *v9;
      v11 = *(v9 + 8);
      *v9 = v11;
      *(v9 + 8) = v28;
      v9 -= 8;
      if (__CFADD__(v10++, 1))
      {
LABEL_4:
        a3 = v33 + 1;
        v9 = v32 + 8;
        v10 = v31 - 1;
        if (v33 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_10098C504(uint64_t *a1, double a2, double a3)
{
  v6 = a1[1];
  v7 = _minimumMergeRunLength(_:)(v6);
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLBoardItem(0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v12[1] = v9;
      sub_10098BB9C(v12, a2, a3, v13, a1, v8);
      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    sub_10098C334(0, v6, 1, a1, a2, a3);
  }
}

uint64_t sub_10098C630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10098C698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10098C6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10098C798()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10098C80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a2 + 32);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v18 = 0xD00000000000002ALL;
    v19[1] = 0xD00000000000002ALL;
    v19[2] = 0x800000010157D500;
    sub_10075915C();
    v19[3] = 0;
    v19[4] = 0;
    swift_willThrowTypedImpl();
    return v18;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v10 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_15:

    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_8:
    v12 = swift_beginAccess();
    v13 = *(v11 + 16);
    v14 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    (*(**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v12);

    v15 = sub_10079C3B4(v7, v13);

    v16 = *(v5 + 8);
    v17 = v16(v7, v4);
    if (v15)
    {
      (*(**(a1 + v14) + 264))(v17);
      v18 = UUID.uuidString.getter();

      v16(v7, v4);
    }

    else
    {

      return 0;
    }

    return v18;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v8 + 8 * v10 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_10098CAE0(_BYTE *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = v3;
  v147 = a3;
  v160 = type metadata accessor for UUID();
  v158 = *(v160 - 8);
  __chkstk_darwin(v160);
  v152 = &v136[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v155 = &v136[-v10];
  v11 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v11 - 8);
  v151 = &v136[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v156 = &v136[-v14];
  __chkstk_darwin(v15);
  v17 = &v136[-v16];
  __chkstk_darwin(v18);
  v157 = &v136[-v19];
  v159 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v159);
  v150 = &v136[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v136[-v22];
  v153 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v153);
  v148 = &v136[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v27 = &v136[-v26];
  v162 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v163 = a1;
  v28 = **&a1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  v154 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
  if (!swift_conformsToProtocol2())
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return;
  }

  v29 = *(v28 + 840);

  v31 = v29(v30);

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {

    v55 = 0x800000010157D490;
    v56 = 0xD000000000000031;
    v169 = 0xD000000000000031;
    v170 = 0x800000010157D490;
    sub_10075915C();
    v171 = 0uLL;
    swift_willThrowTypedImpl();
    goto LABEL_65;
  }

  v33 = v32;
  v161 = v31;
  v34 = [v32 bezierPath];
  [v34 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &qword_101A02480);
  if (!swift_dynamicCast())
  {
    v56 = 0xD000000000000024;
    v55 = 0x800000010157D4D0;
    v169 = 0xD000000000000024;
    v170 = 0x800000010157D4D0;
    sub_10075915C();
    v171 = 0uLL;
    swift_willThrowTypedImpl();

    goto LABEL_65;
  }

  v35 = *&v168[0];
  [*&v168[0] alignBoundsToOrigin];
  v36 = *(v6 + 16);
  v37 = v163;
  v38 = [*(v36 + 24) layoutForInfo:v163];
  if (!v38)
  {
    v56 = 0xD000000000000024;
    v55 = 0x800000010156B430;
    v169 = 0xD000000000000024;
    v170 = 0x800000010156B430;
    sub_10075915C();
    v171 = 0uLL;
    swift_willThrowTypedImpl();

    goto LABEL_65;
  }

  v145 = v36;
  v146 = v35;
  v39 = v38;
  v40 = [v38 inspectorGeometry];

  if (!v40)
  {
    v56 = 0xD000000000000024;
    v55 = 0x800000010157D4D0;
    v169 = 0xD000000000000024;
    v170 = 0x800000010157D4D0;
    sub_10075915C();
    v171 = 0uLL;
    swift_willThrowTypedImpl();

LABEL_65:
    v121 = 0;
    v122 = 0;
LABEL_66:
    *a2 = v56;
    a2[1] = v55;
    a2[2] = v121;
    a2[3] = v122;
    return;
  }

  v143 = v40;
  [v40 transform];
  v41 = v146;
  [v146 transformUsingAffineTransform:&v169];
  sub_10098E7E8(v41, 1);
  v43 = v42;
  v45 = v44;
  v137 = [v33 type] != 1;
  sub_10098E7E8(v41, 0);
  v47 = v46;
  v49 = v48;
  sub_10098E7E8(v41, 2);
  v51 = v50;
  v53 = v52;
  v54 = sub_100C349A0();
  v142 = a2;
  if (v54)
  {
    v144 = 0;
  }

  else
  {
    v57 = **&v37[v162];
    v58 = swift_conformsToProtocol2();
    if (!v58)
    {
      goto LABEL_76;
    }

    v59 = v58;
    v60 = *(v58 + 16);

    v60(v57, v59);

    sub_1005B981C(&unk_101A10680);
    CRRegister.wrappedValue.getter();
    sub_10098E8E4(v27, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v61 = *(&v172 + 1);
    if (*(&v172 + 1))
    {
      v62 = v169;
      v63 = v171;
      v140 = v172;
      v141 = v170;
      v139 = v173;
      LOBYTE(v169) = v171 & 1;
      v241[0] = v62;
      v241[1] = v170;
      v242 = v171 & 1;
      v243 = *(&v171 + 4);
      v244 = BYTE12(v171) & 1;
      v245 = v172;
      v246 = v173;
      sub_100006370(0, &qword_101A14D70);
      v144 = sub_1009CE208(v241);
      sub_100810A00(v62, v141, v63, *(&v63 + 1), v140, v61);
    }

    else
    {
      v144 = 0;
    }

    a2 = v142;
    v37 = v163;
  }

  [v33 outsetFrom];
  v65 = *&v37[v162];
  v66 = v160;
  v67 = v158;
  if (*v65 != &off_101A0C0B8)
  {
    __break(1u);
    goto LABEL_59;
  }

  v4 = v64;
  v68 = qword_101A0C430;
  swift_beginAccess();
  v141 = v68;
  sub_10098E880(v65 + v68, v23);
  v69 = sub_1005B981C(&qword_101A06128);
  v37 = v157;
  v140 = v69;
  CRRegister.wrappedValue.getter();
  sub_10098E8E4(v23, type metadata accessor for CRLConnectionLineCRDTData);
  v70 = v144;
  LOBYTE(v23) = sub_100D709D8(v144);
  sub_100060460(v37, v17);
  v138 = *(v67 + 48);
  v139 = v67 + 48;
  if (v138(v17, 1, v66) != 1)
  {
    (*(v67 + 32))(v155, v17, v66);
    v72 = v145;
    swift_beginAccess();
    v65 = *(v72 + 32);
    if (v65 >> 62)
    {
      goto LABEL_60;
    }

    v73 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
      goto LABEL_22;
    }

LABEL_61:
    v55 = 0x800000010157D500;
    v133 = v37;
    v56 = 0xD00000000000002ALL;
    v169 = 0xD00000000000002ALL;
    v170 = 0x800000010157D500;
    sub_10075915C();
    v171 = 0uLL;
    swift_willThrowTypedImpl();

    (*(v67 + 8))(v155, v66);
    v134 = v133;
LABEL_64:
    sub_1005C5FFC(v134);
    goto LABEL_65;
  }

  sub_1005C5FFC(v37);
  v71 = v17;
LABEL_30:
  sub_1005C5FFC(v71);
  v78 = 0;
  v81 = 0;
  for (i = 0; ; i = 2)
  {
    LOBYTE(v168[0]) = 0;
    *&v214 = v47;
    *(&v214 + 1) = v49;
    LOBYTE(v215) = 0;
    BYTE1(v215) = v23;
    *(&v215 + 1) = v4;
    *&v216 = v78;
    *(&v216 + 1) = v81;
    v217 = 0uLL;
    v218 = i;
    v219[0] = v47;
    v219[1] = v49;
    v220 = 0;
    v221 = v23;
    v222 = v4;
    v223 = v78;
    v224 = v81;
    v226 = 0;
    v225 = 0;
    v227 = i;
    sub_10098E944(&v214, &v169);
    sub_10098E9A0(v219);
    v67 = v163;
    if (sub_100C349A0())
    {
      v17 = 0;
      v23 = v156;
      v84 = v162;
    }

    else
    {
      v85 = **(v67 + v162);
      v86 = swift_conformsToProtocol2();
      if (!v86)
      {
        goto LABEL_77;
      }

      v87 = v86;
      v88 = *(v86 + 16);

      v89 = v148;
      v88(v85, v87);

      sub_1005B981C(&unk_101A10680);
      CRRegister.wrappedValue.getter();
      sub_10098E8E4(v89, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v37 = *(&v172 + 1);
      if (*(&v172 + 1))
      {
        v157 = v169;
        v90 = v170;
        v92 = *(&v171 + 1);
        v91 = v171;
        v93 = v172;
        LOBYTE(v169) = v171 & 1;
        v235[0] = v157;
        v235[1] = v170;
        v236 = v171 & 1;
        v237 = *(&v171 + 4);
        v238 = BYTE12(v171) & 1;
        v239 = v172;
        v240 = v173;
        sub_100006370(0, &qword_101A14D70);
        v94 = sub_1009CE208(v235);
        v95 = v90;
        v67 = v163;
        v96 = v91;
        v17 = v94;
        v97 = v92;
        a2 = v142;
        sub_100810A00(v157, v95, v96, v97, v93, v37);
      }

      else
      {
        v17 = 0;
      }

      v66 = v160;
      v84 = v162;
      v23 = v156;
    }

    [v33 outsetTo];
    v65 = *(v67 + v84);
    if (*v65 == &off_101A0C0B8)
    {
      v47 = v98;
      v99 = v141;
      swift_beginAccess();
      v100 = v65 + v99;
      v37 = v150;
      sub_10098E880(v100, v150);
      CRRegister.wrappedValue.getter();
      sub_10098E8E4(v37, type metadata accessor for CRLConnectionLineCRDTData);
      LOBYTE(v37) = sub_100D709D8(v17);
      v101 = v151;
      sub_100060460(v23, v151);
      v102 = v138(v101, 1, v66);
      v33 = v152;
      if (v102 == 1)
      {

        sub_1005C5FFC(v23);
        sub_1005C5FFC(v101);
        v103 = 0;
        v104 = 0;
        v105 = 0;
        goto LABEL_52;
      }

      v106 = v158;
      (*(v158 + 32))(v152, v101, v66);
      v107 = v145;
      swift_beginAccess();
      v108 = *(v107 + 32);
      if (v108 >> 62)
      {
        v109 = _CocoaArrayWrapper.endIndex.getter();
        v110 = v143;
        if (v109)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v110 = v143;
        if (v109)
        {
LABEL_43:
          v111 = v109 - 1;
          if (__OFSUB__(v109, 1))
          {
            goto LABEL_71;
          }

          if ((v108 & 0xC000000000000001) != 0)
          {
            goto LABEL_72;
          }

          if ((v111 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v111 < *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v112 = *(v108 + 8 * v111 + 32);

            goto LABEL_48;
          }

          __break(1u);
          goto LABEL_75;
        }
      }

      sub_10098E9A0(&v214);
      v135 = v17;
      v55 = 0x800000010157D500;
      v56 = 0xD00000000000002ALL;
      v169 = 0xD00000000000002ALL;
      v170 = 0x800000010157D500;
      sub_10075915C();
      v171 = 0uLL;
      swift_willThrowTypedImpl();

      (*(v106 + 8))(v33, v66);
      v134 = v156;
      goto LABEL_64;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v73 = _CocoaArrayWrapper.endIndex.getter();
    if (!v73)
    {
      goto LABEL_61;
    }

LABEL_22:
    v74 = v73 - 1;
    if (__OFSUB__(v73, 1))
    {
      __break(1u);
LABEL_68:

      v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_27;
    }

    v37 = v155;
    if ((v65 & 0xC000000000000001) != 0)
    {
      goto LABEL_68;
    }

    if ((v74 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v74 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_70;
    }

    v75 = *(v65 + 8 * v74 + 32);

LABEL_27:
    swift_beginAccess();
    v76 = *(v75 + 24);

    v77 = sub_10079C3B4(v37, v76);

    if ((v77 & 1) == 0)
    {

      v66 = v160;
      (*(v67 + 8))(v37, v160);
      v71 = v157;
      goto LABEL_30;
    }

    v78 = UUID.uuidString.getter();
    v79 = v67;
    v81 = v80;

    v82 = *(v79 + 8);
    v66 = v160;
    v82(v37, v160);
    sub_1005C5FFC(v157);
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:

  v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_48:
  swift_beginAccess();
  v113 = *(v112 + 24);

  v114 = sub_10079C3B4(v33, v113);

  if (v114)
  {
    v103 = UUID.uuidString.getter();
    v104 = v115;

    (*(v158 + 8))(v33, v160);
    sub_1005C5FFC(v156);
    v105 = 2;
  }

  else
  {

    (*(v158 + 8))(v33, v160);
    sub_1005C5FFC(v156);
    v103 = 0;
    v104 = 0;
    v105 = 0;
  }

  v67 = v163;
LABEL_52:
  LOBYTE(v168[0]) = 0;
  *&v200 = v51;
  *(&v200 + 1) = v53;
  LOBYTE(v201) = 0;
  BYTE1(v201) = v37;
  *(&v201 + 1) = v47;
  *&v202 = v103;
  *(&v202 + 1) = v104;
  v203 = 0uLL;
  v204 = v105;
  v205[0] = v51;
  v205[1] = v53;
  v206 = 0;
  v207 = v37;
  v208 = v47;
  v209 = v103;
  v210 = v104;
  v212 = 0;
  v211 = 0;
  v213 = v105;
  sub_10098E944(&v200, &v169);
  sub_10098E9A0(v205);
  v116 = v149;
  v56 = sub_10098C80C(v67, v145);
  v120 = v119;
  if (v116)
  {
    v121 = v117;
    v122 = v118;

    sub_10098E9A0(&v214);
    sub_10098E9A0(&v200);

    v55 = v120;
    goto LABEL_66;
  }

  v123 = v67;
  v124 = *(**(v67 + v162) + 416);

  v126 = v124(v125);
  v128 = v127;

  v129 = sub_100D652D4();
  sub_100FC04D4(v129, v199, v228);

  if (sub_100C349A0())
  {
    v130 = 0;
  }

  else
  {
    v131 = *(**(v123 + v162) + 440);

    v130 = v131(v132);
  }

  sub_100D33EA8(v130, v199, &v230);

  *&v167[23] = v215;
  *&v167[39] = v216;
  *&v167[55] = v217;
  *&v167[7] = v214;
  *&v166[23] = v201;
  *&v166[39] = v202;
  *&v166[55] = v203;
  v166[71] = v204;
  *&v166[7] = v200;
  *&v165[7] = v228[0];
  *&v165[23] = v228[1];
  *&v165[39] = v228[2];
  *(&v168[9] + 1) = *&v167[48];
  *(&v168[8] + 1) = *&v167[32];
  *(&v168[7] + 1) = *&v167[16];
  *(&v168[6] + 1) = *v167;
  *(&v168[10] + 9) = *v166;
  *(&v168[13] + 9) = *&v166[48];
  *(&v168[12] + 9) = *&v166[32];
  *(&v168[11] + 9) = *&v166[16];
  *(&v168[16] + 1) = *&v165[16];
  *(&v168[17] + 1) = *&v165[32];
  *(&v168[15] + 1) = *v165;
  memset(&v168[1], 0, 40);
  v171 = 0u;
  v172 = 0u;
  *&v168[5] = v43;
  *(&v168[5] + 1) = v45;
  v177 = v43;
  v178 = v45;
  v180 = *v167;
  v167[71] = v218;
  v165[55] = v229;
  *(&v168[10] + 1) = *&v167[64];
  *(&v168[14] + 9) = *&v166[64];
  *(&v168[18] + 1) = *&v165[48];
  *&v168[0] = v56;
  *(&v168[0] + 1) = v120;
  DWORD2(v168[3]) = 33554434;
  *&v168[4] = v126;
  *(&v168[4] + 1) = v128;
  LOBYTE(v168[6]) = v137;
  v168[19] = v230;
  v168[20] = v231;
  v168[21] = v232;
  v168[22] = v233;
  v168[23] = v234;
  v169 = v56;
  v170 = v120;
  v173 = 0;
  v174 = 33554434;
  v175 = v126;
  v176 = v128;
  v179 = v137;
  v184 = *&v167[64];
  v183 = *&v167[48];
  v182 = *&v167[32];
  v181 = *&v167[16];
  v185 = *v166;
  v189 = *&v166[64];
  v188 = *&v166[48];
  v187 = *&v166[32];
  v186 = *&v166[16];
  v193 = *&v165[48];
  v191 = *&v165[16];
  v192 = *&v165[32];
  v190 = *v165;
  v194 = v230;
  v195 = v231;
  v196 = v232;
  v197 = v233;
  v198 = v234;
  sub_10098E9F4(v168, &v164);
  sub_10098EA50(&v169);
  memcpy(v147, v168, 0x180uLL);
}

uint64_t sub_10098E018@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _s22ConnectionLineExporterCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

void sub_10098E054(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10098CAE0(a1, v7, __src);
  if (v3)
  {
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
  }

  else
  {
    memcpy(a3, __src, 0x180uLL);
  }
}

void sub_10098E0CC(uint64_t a1, unint64_t a2)
{
  v66 = a1;
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v61 = &v50[-v7];
  v70 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v70);
  v59 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v60 = &v50[-v10];
  v71 = type metadata accessor for UUID();
  v11 = *(v71 - 8);
  __chkstk_darwin(v71);
  v51 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v65 = &v50[-v14];
  __chkstk_darwin(v15);
  v64 = &v50[-v16];
  __chkstk_darwin(v17);
  v52 = &v50[-v18];
  if (a2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i < 1)
    {
      __break(1u);
      return;
    }

    v20 = 0;
    v63 = a2 & 0xC000000000000001;
    v69 = (v11 + 6);
    v58 = (v11 + 4);
    v57 = (v11 + 2);
    v62 = (v11 + 1);
    v56 = a2;
    v55 = v5;
    v54 = i;
    while (1)
    {
      if (v63)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(a2 + 8 * v20 + 32);
      }

      v26 = v25;
      type metadata accessor for CRLConnectionLineItem();
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
        v21 = *((swift_isaMask & *v26) + 0x88);
        v22 = v26;
        v23 = v65;
        v21();
        swift_beginAccess();
        v24 = v64;
        sub_100E6AF38(v64, v23);
        (*v62)(v24, v71);
        swift_endAccess();

        goto LABEL_6;
      }

      v28 = v27;
      v5 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v11 = *(v27 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v11 != &off_101A0C0B8)
      {
        break;
      }

      a2 = qword_101A0C430;
      swift_beginAccess();
      v29 = v60;
      sub_10098E880(v11 + a2, v60);
      v30 = sub_1005B981C(&qword_101A06128);
      v31 = v61;
      v67 = v30;
      CRRegister.wrappedValue.getter();
      v32 = v31;
      v33 = v71;
      sub_10098E8E4(v29, type metadata accessor for CRLConnectionLineCRDTData);
      v34 = *v69;
      v35 = (*v69)(v32, 1, v33);
      v68 = v26;
      if (v35 == 1)
      {
        sub_1005C5FFC(v32);
      }

      else
      {
        v36 = *v58;
        v37 = v52;
        v53 = v34;
        v38 = v71;
        v36(v52, v32, v71);
        v39 = v65;
        (*v57)(v65, v37, v38);
        swift_beginAccess();
        v40 = v64;
        sub_100E6AF38(v64, v39);
        v41 = *v62;
        (*v62)(v40, v38);
        swift_endAccess();
        v42 = v38;
        v34 = v53;
        v41(v37, v42);
      }

      v11 = *&v5[v28];
      if (*v11 != &off_101A0C0B8)
      {
        goto LABEL_21;
      }

      swift_beginAccess();
      v43 = v59;
      sub_10098E880(v11 + a2, v59);
      v44 = v55;
      CRRegister.wrappedValue.getter();
      sub_10098E8E4(v43, type metadata accessor for CRLConnectionLineCRDTData);
      if (v34(v44, 1, v71) == 1)
      {

        sub_1005C5FFC(v44);
      }

      else
      {
        v45 = v51;
        v46 = v71;
        (*v58)(v51, v44, v71);
        v47 = v65;
        (*v57)(v65, v45, v46);
        swift_beginAccess();
        v48 = v64;
        sub_100E6AF38(v64, v47);
        v49 = *v62;
        (*v62)(v48, v46);
        swift_endAccess();

        v49(v45, v46);
      }

      a2 = v56;
      i = v54;
LABEL_6:
      if (i == ++v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

id sub_10098E7E8(void *a1, uint64_t a2)
{
  type metadata accessor for CGPoint(0);
  v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v4 + 16) = 3;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 32) = 0u;
  result = [a1 elementAtIndex:a2 associatedPoints:v4 + 32];
  if (*(v4 + 16))
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_10098E880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLConnectionLineCRDTData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10098E8E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10098EABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = [objc_opt_self() isMainThread];
  if ((result & 1) == 0)
  {
    v34 = result;
    v33 = objc_opt_self();
    v11 = [v33 _atomicIncrementAssertCount];
    v35 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v35);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_1005CF000();
    *(inited + 96) = v20;
    v21 = sub_1005CF04C();
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = a8;
    v23 = v35;
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, a1, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, a1, v27, "This operation must only be performed on the main thread.", 57, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    if (a8 < 0)
    {
      __break(1u);
    }

    else
    {
      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      [v33 handleFailureInFunction:v30 file:v31 lineNumber:a8 isFatal:0 format:v32 args:v29];

      [v33 logFullBacktrace];
      return v34;
    }
  }

  return result;
}

void sub_10098EE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = objc_opt_self();
  v14 = [v44 _atomicIncrementAssertCount];
  v49 = [objc_allocWithZone(NSString) init];
  v47 = a1;
  v48 = a2;
  sub_100604538(_swiftEmptyArrayStorage, &v49);
  StaticString.description.getter();
  v15 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v16 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v14;
  v23 = sub_1005CF000();
  *(inited + 96) = v23;
  v24 = sub_1005CF04C();
  *(inited + 104) = v24;
  *(inited + 72) = v15;
  *(inited + 136) = &type metadata for String;
  v25 = sub_1000053B0();
  *(inited + 112) = v18;
  *(inited + 120) = v20;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  v43 = v25;
  *(inited + 144) = v25;
  *(inited + 152) = a11;
  v26 = v49;
  *(inited + 216) = v23;
  *(inited + 224) = v24;
  *(inited + 192) = v26;
  v27 = v15;
  v28 = v26;
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v21, a4, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v21, a4, v30, v47, v48, a3, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v31 = swift_allocObject();
  v31[2] = 8;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = 0;
  v46 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  if (a11 < 0)
  {
    __break(1u);
  }

  else
  {
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    [v44 handleFailureInFunction:v32 file:v33 lineNumber:a11 isFatal:0 format:v34 args:v46];

    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10146BDE0;
    v36 = StaticString.description.getter();
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = v43;
    *(v35 + 32) = v36;
    *(v35 + 40) = v37;
    v38 = StaticString.description.getter();
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v43;
    *(v35 + 72) = v38;
    *(v35 + 80) = v39;
    String.init(format:_:)();
    v40 = objc_allocWithZone(NSException);
    v41 = String._bridgeToObjectiveC()();

    v42 = [v40 initWithName:NSInternalInconsistencyException reason:v41 userInfo:0];

    [v42 raise];
  }
}

void sub_10098F350()
{
  v0 = sub_100BD4ECC(_swiftEmptyArrayStorage);
  type metadata accessor for CRLUnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *v2 = 0;
  *(v1 + 16) = v2;
  atomic_thread_fence(memory_order_acq_rel);
  off_101A0A0A8 = v1;
  qword_101A0A0B0 = v0;
}

void sub_10098F3BC()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setPositiveFormat:v1];

  qword_101A0A0B8 = v0;
}

uint64_t sub_10098F42C()
{
  v0 = sub_1005B981C(&qword_1019F69B8);
  __chkstk_darwin(v0 - 8);
  v2 = v30 - v1;
  v3 = Locale.identifier.getter();
  v5 = v4;
  if (qword_1019F19F0 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    swift_beginAccess();
    v6 = qword_101A0A0B0;
    v7 = *(off_101A0A0A8 + 2);
    os_unfair_lock_lock(v7);
    if (*(v6 + 16))
    {
      v8 = sub_10000BE7C(v3, v5);
      if (v9)
      {
        v10 = *(*(v6 + 56) + 8 * v8);
        os_unfair_lock_unlock(v7);
        swift_endAccess();

        return v10;
      }
    }

    os_unfair_lock_unlock(v7);
    swift_endAccess();
    if (qword_1019F19F8 != -1)
    {
      swift_once();
    }

    v11 = qword_101A0A0B8;
    isa = Locale._bridgeToObjectiveC()().super.isa;
    [v11 setLocale:isa];

    v31 = [v11 groupingSize];
    v13 = [v11 groupingSeparator];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    if (v17 == 0xE000000000000000)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_13:

      v10 = 1;
      goto LABEL_14;
    }

    v21 = off_101A0A0C0[2];
    if (!v21)
    {
      break;
    }

    v30[0] = v3;
    v3 = 0;
    v30[1] = 8 * v31 + 32;
    while (v31 + v3 < v21)
    {
      v22 = Int._bridgeToObjectiveC()().super.super.isa;
      v23 = [v11 stringFromNumber:v22];

      if (!v23)
      {

        v10 = 1;
        v3 = v30[0];
        goto LABEL_14;
      }

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v34 = v24;
      v35 = v26;
      v32 = v15;
      v33 = v17;
      v27 = type metadata accessor for Locale();
      (*(*(v27 - 8) + 56))(v2, 1, 1, v27);
      sub_100017CD8();
      StringProtocol.range<A>(of:options:range:locale:)();
      v29 = v28;
      sub_10098F88C(v2);

      if ((v29 & 1) == 0)
      {

        v10 = v3 + 1;
        v3 = v30[0];
        goto LABEL_14;
      }

      ++v3;
      v21 = off_101A0A0C0[2];
      if (v3 >= v21)
      {
        v10 = v3 + 1;
        v3 = v30[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v10 = 1;
LABEL_24:

LABEL_14:
  swift_beginAccess();
  v18 = *(off_101A0A0A8 + 2);

  os_unfair_lock_lock(v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = qword_101A0A0B0;
  qword_101A0A0B0 = 0x8000000000000000;
  sub_100A9E158(v10, v3, v5, isUniquelyReferenced_nonNull_native);

  qword_101A0A0B0 = v32;
  os_unfair_lock_unlock(v18);
  swift_endAccess();

  return v10;
}

uint64_t sub_10098F88C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019F69B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10098F8FC(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CRLSceneRep();
  objc_msgSendSuper2(&v10, "willUpdateRenderable:", a1);
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = [v3 BOOLForKey:@"CRLScenesDebugView"];

  if (v4)
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = a1;
    GenericGray = CGColorCreateGenericGray(1.0, 0.3);
    [v6 setBackgroundColor:GenericGray];

    v8 = [objc_opt_self() blackColor];
    v9 = [v8 CGColor];

    [v6 setBorderColor:v9];
    [v6 setBorderWidth:1.0];
    [v1 naturalBounds];
    [v6 setBounds:?];
  }
}

id sub_10098FB2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSceneRep();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10098FB84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [v3 transformInRoot];
  v6 = sub_1001399C0(&v24.a);
  CGAffineTransformMakeRotation(&v24, v6);
  a = v24.a;
  b = v24.b;
  c = v24.c;
  d = v24.d;
  tx = v24.tx;
  ty = v24.ty;
  v13 = [v3 layoutInfoGeometry];
  [v13 position];
  v15 = v14;
  v23 = v16;

  v17 = [v3 geometry];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 size];
  v20 = v19;

  v25.x = v20 * 0.5;
  v24.a = a;
  v24.b = b;
  v24.c = c;
  v24.d = d;
  v24.tx = tx;
  v24.ty = ty;
  v25.y = 0.0;
  *&v22 = *&CGPointApplyAffineTransform(v25, &v24);
  v24.a = a;
  v24.b = b;
  v24.c = c;
  v24.d = d;
  v24.tx = tx;
  v24.ty = ty;
  v26.y = 0.0;
  v26.x = v20;
  *&v21 = *&CGPointApplyAffineTransform(v26, &v24);
  if (!a1 && a2 == 1)
  {
    sub_10011F334(v15, v23, v21);
    return;
  }

  if (a1 == 1 && !a2)
  {
    goto LABEL_7;
  }

  if (a1 != 2)
  {
    if (a2 != 2)
    {
      return;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        return;
      }

LABEL_16:
      v21 = v22;
LABEL_7:
      sub_10011F31C(v15, v23, v21);
      return;
    }

LABEL_17:
    sub_10011F334(v15, v23, v22);
    return;
  }

  if (a2 == 1)
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_16;
  }
}

void sub_10098FD44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [v3 transformInRoot];
  v6 = sub_1001399C0(&v24.a);
  CGAffineTransformMakeRotation(&v24, v6);
  a = v24.a;
  b = v24.b;
  c = v24.c;
  d = v24.d;
  tx = v24.tx;
  ty = v24.ty;
  v13 = [v3 layoutInfoGeometry];
  [v13 position];
  v15 = v14;
  v23 = v16;

  v17 = [v3 geometry];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 size];
  v20 = v19;

  v25.y = v20 * 0.5;
  v24.a = a;
  v24.b = b;
  v24.c = c;
  v24.d = d;
  v24.tx = tx;
  v24.ty = ty;
  v25.x = 0.0;
  *&v22 = *&CGPointApplyAffineTransform(v25, &v24);
  v24.a = a;
  v24.b = b;
  v24.c = c;
  v24.d = d;
  v24.tx = tx;
  v24.ty = ty;
  v26.x = 0.0;
  v26.y = v20;
  *&v21 = *&CGPointApplyAffineTransform(v26, &v24);
  if (a1 == 2 && !a2)
  {
    sub_10011F31C(v15, v23, v21);
    return;
  }

  if (!a1 && a2 == 2)
  {
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    if (a2 != 1)
    {
      return;
    }

    if (a1 != 2)
    {
      if (a1)
      {
        return;
      }

LABEL_17:
      v21 = v22;
LABEL_7:
      sub_10011F334(v15, v23, v21);
      return;
    }

LABEL_15:
    sub_10011F31C(v15, v23, v22);
    return;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  if (a2 == 2)
  {
    goto LABEL_17;
  }
}

id CRLWPShapeLayout.autosizes.getter()
{
  result = [v0 textLayout];
  if (result)
  {
    v2 = result;
    v3 = [v0 autosizeFlagsFor:result];

    return (v3 != 0);
  }

  return result;
}

void CRLWPShapeLayout.nonAutosizedFrame(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 shapeInfo];
  v5 = (*((swift_isaMask & *v4) + 0x4D8))();

  if (v5 && ([v5 shouldRender] & 1) == 0)
  {

    v5 = 0;
  }

  v6 = [v2 autosizeFlagsFor:a1];
  v7 = [v2 layoutInfoGeometry];
  [v7 size];

  v8 = sub_10011ECB4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (!v6 && ([v2 invalidGeometry] & 1) == 0)
  {
    [v2 boundsForStandardKnobs];
    v8 = sub_10011ECB4();
    v10 = v15;
    v12 = v16;
    v14 = v17;
  }

  [v2 pathBounds];
  v19 = sub_10011F31C(v8, v10, v18);
  if (v5)
  {
    v21 = v20;
    v22 = v19;
    v23 = [v2 pathSource];
    v24 = [v23 isRectangular];

    if (v24)
    {
      [v5 width];
      v26 = ceil(v25 * 0.5);
      v27 = fmin(v26, v12 * 0.5);
      v28 = fmin(v26, v14 * 0.5);
      v29.origin.x = v22;
      v29.origin.y = v21;
      v29.size.width = v12;
      v29.size.height = v14;
      CGRectInset(v29, v27, v28);
    }
  }
}

void *CRLWPShapeLayout.dependents(of:)(void *a1)
{
  v2 = v1;
  v4 = [v2 textLayout];
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v4;
  type metadata accessor for CRLWPLayout();
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0 || ![v2 autosizes])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1005B981C(&unk_1019F4D60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101465920;
  *(v8 + 32) = v2;
  v9 = v2;
  return v8;
}

id CRLWPShapeLayout.interiorWrapSegments(for:)(void *a1)
{
  v2 = v1;
  result = [v2 textLayout];
  if (result)
  {
    v5 = result;
    type metadata accessor for CRLWPLayout();
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return [v2 interiorWrapSegments];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double CRLWPShapeLayout.defaultFontSize()()
{
  v1 = [v0 textLayout];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 storage];

    if (v4)
    {
      type metadata accessor for CRLWPStorage();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        swift_unknownObjectRetain();
        sub_100A42510(v6);
        v8 = v7;
        swift_unknownObjectRelease_n();
        return v8;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return v2;
}

unint64_t CRLWPShapeLayout.makeStorageRangeToFontSizeDict()()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 textLayout];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 storage];

    if (v14)
    {
      type metadata accessor for CRLWPStorage();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15;
        v24 = _swiftEmptyDictionarySingleton;
        result = [v15 characterCount];
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v18 = *&v16[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
          if (v18)
          {
            v19 = result;
            (*(*v18 + 896))();
            sub_1005E0A78(&v7[*(v5 + 20)], v11);
            sub_1005E0ADC(v7, type metadata accessor for CRLWPShapeItemCRDTData);
            (*(v2 + 16))(v4, v11, v1);
            sub_1005E0ADC(v11, type metadata accessor for CRLWPStorageCRDTData);
            v20 = CRAttributedString.count.getter();
            (*(v2 + 8))(v4, v1);
            v21 = v20 & (v20 >> 63);
            if (v20 >= v19)
            {
              v20 = v19;
            }

            KeyPath = swift_getKeyPath();
            swift_unknownObjectRetain();
            sub_100A208D8(KeyPath, v16, v21, v20, &v24);

            swift_unknownObjectRelease_n();
            return v24;
          }
        }

        __break(1u);
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  return sub_100BD76F0(_swiftEmptyArrayStorage);
}

void *sub_100990D14(unint64_t a1, double a2)
{
  v3 = v2;
  v6 = [v3 wpShapeInfo];
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v46 = v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v49 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v8 = ~v11;
    v7 = a1 + 64;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 64);
    v49 = a1;
  }

  v14 = 0;
  v15 = (v8 + 64) >> 6;
  v47 = _swiftEmptyDictionarySingleton;
  v16 = v49;
  while ((v16 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()() || (sub_100006370(0, &qword_101A04270), swift_dynamicCast(), v21 = v50, sub_100006370(0, &qword_1019FF3E0), swift_dynamicCast(), v22 = v50, v16 = v49, !v50))
    {
LABEL_33:
      sub_100035F90();
      v43 = v46;
      v10 = sub_1009915B8(v47, v43, a2);

      return v10;
    }

LABEL_19:
    v23 = [v21 rangeValue];
    v25 = v24;
    if (v23 == NSNotFound.getter())
    {
      goto LABEL_20;
    }

    v26 = &v23[v25];
    if (__OFADD__(v23, v25))
    {
      goto LABEL_37;
    }

    [v22 crl_CGFloatValue];
    v28 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v47;
    v45 = v26;
    v31 = sub_1007CF110(v23, v26);
    v32 = v47[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_38;
    }

    if (v47[3] >= v34)
    {
      v16 = v49;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v42 = v30;
      sub_100AA94C0();
      v30 = v42;
    }

    else
    {
      v48 = v30;
      sub_100A91CC4(v34, isUniquelyReferenced_nonNull_native);
      v35 = sub_1007CF110(v23, v45);
      v37 = v36 & 1;
      v30 = v48;
      if ((v48 & 1) != v37)
      {
        goto LABEL_40;
      }

      v31 = v35;
    }

    v16 = v49;
LABEL_28:
    v47 = v50;
    if (v30)
    {
      *(v50[7] + 8 * v31) = v28;
LABEL_20:
    }

    else
    {
      v50[(v31 >> 6) + 8] |= 1 << v31;
      v38 = (v50[6] + 16 * v31);
      *v38 = v23;
      v38[1] = v45;
      *(v50[7] + 8 * v31) = v28;

      v39 = v50[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_39;
      }

      v50[2] = v41;
    }
  }

  v17 = v14;
  v18 = v9;
  if (v9)
  {
LABEL_15:
    v9 = (v18 - 1) & v18;
    v19 = (v14 << 9) | (8 * __clz(__rbit64(v18)));
    v20 = *(*(v16 + 56) + v19);
    v21 = *(*(v16 + 48) + v19);
    v22 = v20;
    if (!v21)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= v15)
    {
      goto LABEL_33;
    }

    v18 = *(v7 + 8 * v14);
    ++v17;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_1005B981C(&qword_101A0A0F8);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id CRLWPShapeLayout.layoutMargins.getter()
{
  v0 = objc_allocWithZone(CRLWPPadding);

  return [v0 init];
}

id CRLWPShapeLayout.shrinkTextToFit.getter()
{
  v1 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  *&v2 = __chkstk_darwin(v1).n128_u64[0];
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [v0 wpShapeInfo];
  if (result)
  {
    v6 = result;
    type metadata accessor for CRLWPShapeItemData(0);
    v7 = *swift_dynamicCastClassUnconditional();
    (*(v7 + 896))();
    type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
    sub_1005B981C(&qword_101A2C810);
    CRRegister.wrappedValue.getter();

    sub_1005E0ADC(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    return v8[15];
  }

  return result;
}

void *sub_1009915B8(uint64_t a1, void *a2, double a3)
{
  v47 = a2;
  v46 = sub_1005B981C(&qword_101A0D850);
  __chkstk_darwin(v46);
  v45 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = (v38 - v8);
  v9 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v9)
  {
    v38[1] = v3;
    v54 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v12 = result;
    v13 = 0;
    v14 = *(a1 + 36);
    v42 = v9;
    v43 = a1;
    v41 = a1 + 64;
    v39 = a1 + 72;
    v40 = v14;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_21;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v48 = v13;
      v49 = 1 << v12;
      v17 = *(a1 + 56);
      v18 = (*(a1 + 48) + 16 * v12);
      v19 = *v18;
      v51 = v18[1];
      v52 = v19;
      v20 = *(v17 + 8 * v12) * a3;
      KeyPath = swift_getKeyPath();
      *&v20 = v20;
      v22 = v44;
      *v44 = _swiftEmptySetSingleton;
      sub_10068D144();
      v50 = v47;
      v23 = CRAttributedString.Attributes.init()();
      __chkstk_darwin(v23);
      v38[-4] = &type metadata for CRLWPCharacterScope;
      v38[-3] = &type metadata for CRLWPFontSizeAttribute;
      v24 = sub_10082465C();
      v38[-2] = v24;
      v38[-1] = KeyPath;
      v25 = swift_getKeyPath();

      sub_100E6DE34(&v53, 0x657A6953746E6F66, 0xE800000000000000);

      __chkstk_darwin(v26);
      v38[-4] = &type metadata for CRLWPCharacterScope;
      v38[-3] = &type metadata for CRLWPFontSizeAttribute;
      v38[-2] = v24;
      v38[-1] = v25;
      swift_getKeyPath();
      LODWORD(v53) = LODWORD(v20);
      BYTE4(v53) = 0;
      sub_1005B981C(qword_101A0CF60);
      sub_1008246B0();
      CRAttributedString.Attributes.subscript.setter();
      v27 = v45;
      sub_10099261C(v22, v45);
      v28 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0));
      v29 = v50;
      sub_100961810(v50, v52, v51, v27);
      sub_10099268C(v22);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a1 = v43;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v15 = 1 << *(a1 + 32);
      if (v12 >= v15)
      {
        goto LABEL_23;
      }

      v11 = v41;
      v30 = v42;
      v31 = *(v41 + 8 * v16);
      if ((v31 & v49) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v14) = v40;
      if (v40 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v32 = v31 & (-2 << (v12 & 0x3F));
      if (v32)
      {
        v15 = __clz(__rbit64(v32)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v16 << 6;
        v34 = v16 + 1;
        v35 = (v39 + 8 * v16);
        while (v34 < (v15 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_1000341AC(v12, v40, 0);
            v15 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_1000341AC(v12, v40, 0);
      }

LABEL_4:
      v13 = v48 + 1;
      v12 = v15;
      if (v48 + 1 == v30)
      {
        return v54;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t _sSo16CRLWPShapeLayoutC8FreeformE13autosizeFlags3forSo013CRLWPAutoSizeE0VAC11CRLWPLayoutC_tF_0()
{
  v1 = [v0 layoutInfoGeometry];
  v2 = [v0 wpShapeInfo];
  if (!v2)
  {

    return 0;
  }

  v3 = v2[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textIsVertical];

  v4 = [v1 heightValid];
  v5 = 4;
  if (!v3)
  {
    v5 = 1;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v1 widthValid];

  if (v7)
  {
    return v6;
  }

  if ((v3 & 1) == 0)
  {
    result = 4;
    if (v6 >= 4)
    {
      return result;
    }

    return result | v6;
  }

  if ((v6 & 1) == 0)
  {
    result = 1;
    return result | v6;
  }

  return 4;
}

uint64_t _sSo16CRLWPShapeLayoutC8FreeformE17verticalAlignment3forSo013CRLWPVerticalE0VAC11CRLWPLayoutC_tF_0()
{
  v1 = [v0 wpShapeInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v0 autosizes])
  {

    return 0;
  }

  type metadata accessor for CRLWPShapeItemData(0);
  swift_dynamicCastClassUnconditional();

  v4 = sub_100693C3C();

  return v4;
}

void _sSo16CRLWPShapeLayoutC8FreeformE14autosizedFrame3for8textSizeSo6CGRectVAC11CRLWPLayoutC_So6CGSizeVtF_0()
{
  v1 = v0;
  if (([v0 autosizes] & 1) == 0)
  {
    v27 = objc_opt_self();
    v2 = [v27 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 135;
    v14 = v28;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "should call only when autosizing", 32, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v21 file:v22 lineNumber:135 isFatal:0 format:v23 args:v20];
  }

  v24 = [v1 shapeInfo];
  v25 = (*((swift_isaMask & *v24) + 0x4D8))();

  if (v25 && [v25 shouldRender])
  {
    [v25 width];
  }

  v26 = [v1 layoutInfoGeometry];
  [v26 size];
  [v26 widthValid];
  [v26 heightValid];

  sub_10011ECB4();
}

id _sSo16CRLWPShapeLayoutC8FreeformE5width14forColumnIndex9bodyWidth12CoreGraphics7CGFloatVSu_AItF_0()
{
  v1 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  *&v2 = __chkstk_darwin(v1).n128_u64[0];
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 wpShapeInfo];
  if (result)
  {
    v6 = result;
    type metadata accessor for CRLWPShapeItemData(0);
    v7 = *swift_dynamicCastClassUnconditional();
    (*(v7 + 896))();
    sub_1005B981C(&unk_101A0D9C0);
    CRRegister.wrappedValue.getter();

    return sub_1005E0ADC(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  }

  return result;
}

double sub_100992274(uint64_t a1, void *a2, void *a3, double a4)
{
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v4 wpShapeInfo];
  if (v13)
  {
    v14 = v13;
    type metadata accessor for CRLWPShapeItemData(0);
    v15 = *swift_dynamicCastClassUnconditional();
    (*(v15 + 896))();
    sub_1005B981C(&unk_101A0D9C0);
    CRRegister.wrappedValue.getter();

    sub_1005E0ADC(v12, type metadata accessor for CRLWPShapeItemCRDTData);
    v16 = v20[3];
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = 0.0;
  if (a2)
  {
LABEL_3:
    [v4 widthForColumnIndex:a1 bodyWidth:a4];
    *a2 = v17;
  }

LABEL_4:
  if (a3)
  {
    [v4 gapForColumnIndex:a1 bodyWidth:a4];
    *a3 = v18;
  }

  return v16;
}

void _sSo16CRLWPShapeLayoutC8FreeformE14adjustedInsets3forSo06UIEdgeE0VSo17CRLWPLayoutTarget_pSg_tF_0()
{
  v1 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  *&v2 = __chkstk_darwin(v1).n128_u64[0];
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 wpShapeInfo];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for CRLWPShapeItemData(0);
    v7 = *swift_dynamicCastClassUnconditional();
    (*(v7 + 896))();
    sub_1005B981C(&unk_101A0D9C0);
    CRRegister.wrappedValue.getter();

    sub_1005E0ADC(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    v8 = v9[3];
  }

  else
  {
    v8 = 0.0;
  }

  sub_1009926F4();
  if ([v0 autosizes])
  {
    sub_100076B60(v8 + 4.0);
  }
}

uint64_t sub_10099261C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0D850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10099268C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0D850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100992704(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

void sub_100992880()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = v0;
    v8 = v5;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v7;
    v10[5] = v8;
    sub_10064191C(0, 0, v3, &unk_101489D60, v10);
  }
}

uint64_t sub_1009929D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = type metadata accessor for MainActor();
  v5[15] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[16] = v7;
  v5[17] = v6;

  return _swift_task_switch(sub_100992A6C, v7, v6);
}

uint64_t sub_100992A6C()
{
  v1 = v0[12];
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSExportAsPDFActivity_boardActor);
  v0[18] = v2;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSExportAsPDFActivity_sourceView);
  v0[19] = v3;
  v4 = (v1 + OBJC_IVAR____TtC8Freeform25CRLiOSExportAsPDFActivity_sourceRect);
  v0[20] = *v4;
  v0[21] = v4[1];
  v0[22] = v4[2];
  v0[23] = v4[3];

  v5 = v3;
  v0[24] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_100992B6C;

  return sub_1009936A8(v2);
}

uint64_t sub_100992B6C(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[28] = v5;
  v3[29] = v4;
  if (v1)
  {
    v6 = sub_100992EA8;
  }

  else
  {
    v6 = sub_100992CD0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100992CD0()
{
  if ([objc_opt_self() crl_padUI])
  {
    v1 = *(v0 + 208);
    [v1 setModalPresentationStyle:7];
    v2 = [v1 popoverPresentationController];
    if (v2)
    {
      v3 = v2;
      [v2 setSourceView:*(v0 + 152)];
    }

    v4 = *(v0 + 208);
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = [v4 popoverPresentationController];

    [v9 setSourceRect:{v8, v7, v6, v5}];
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 104);
  v12 = static MainActor.shared.getter();
  *(v0 + 240) = v12;
  v13 = swift_task_alloc();
  *(v0 + 248) = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  *v14 = v0;
  v14[1] = sub_100993098;

  return withCheckedContinuation<A>(isolation:function:_:)(v14, v12, &protocol witness table for MainActor, 0xD000000000000067, 0x800000010157D890, sub_100994C18, v13, &type metadata for () + 8);
}

uint64_t sub_100992EA8()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_100992F20, v1, v2);
}

uint64_t sub_100992F20()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[11] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error presenting export as PDF activity view controller: %@", 59, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v8 = v0[1];

  return v8();
}

uint64_t sub_100993098()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1009931F8, v3, v2);
}

uint64_t sub_1009931F8()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  return _swift_task_switch(sub_100993280, v2, v3);
}

uint64_t sub_100993280()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100993360()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSExportAsPDFActivity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100993464(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1005B981C(&qword_101A15A30);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = aBlock - v14;
  (*(v12 + 16))(aBlock - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = a5;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = a6;
  v18 = _Block_copy(aBlock);

  [a2 presentViewController:a3 animated:1 completion:v18];
  _Block_release(v18);
}

uint64_t sub_100993618(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result || (a2 & 1) != 0)
  {
    swift_beginAccess();
    *(a5 + 16) = 0;
  }

  return result;
}

NSString sub_100993670()
{
  result = String._bridgeToObjectiveC()();
  qword_101A0A100 = result;
  return result;
}

uint64_t sub_1009936A8(uint64_t a1)
{
  v1[8] = type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v1[10] = swift_allocObject();
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = sub_100993788;

  return (sub_100CA8D54)(a1, 0);
}

uint64_t sub_100993788(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100993B68;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100993908;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100993908()
{
  v1 = v0[13];
  v2 = v0[10];

  *(v2 + 16) = v1;
  v3 = OBJC_IVAR____TtC8Freeform16CRLTemporaryFile_url;
  sub_1005B981C(&unk_101A23C50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C6B0;
  v5 = type metadata accessor for URL();
  *(v4 + 56) = v5;
  v6 = sub_10002C58C((v4 + 32));
  (*(*(v5 - 8) + 16))(v6, v1 + v3, v5);
  v7 = objc_allocWithZone(type metadata accessor for CRLSelectionAwareActivityViewController());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithActivityItems:isa applicationActivities:0];

  sub_1005B981C(&unk_101A0A150);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10146BDE0;
  *(v10 + 32) = UIActivityTypePrint;
  *(v10 + 40) = UIActivityTypeSharePlay;
  v11 = UIActivityTypePrint;
  v12 = UIActivityTypeSharePlay;
  sub_100F7D3C4();

  v0[6] = sub_100994AA4;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = *"";
  v0[4] = sub_100992704;
  v0[5] = &unk_10188F128;
  v13 = _Block_copy(v0 + 2);
  v14 = v9;

  [v14 setCompletionWithItemsHandler:v13];

  _Block_release(v13);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_100993B68()
{

  swift_deallocUninitializedObject();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100993BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v3[6] = v5;
  *v5 = v3;
  v5[1] = sub_100993C8C;

  return sub_1009936A8(a1);
}

uint64_t sub_100993C8C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_1008E2AC0;
  }

  else
  {
    v6 = sub_100993DEC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100993DEC()
{

  if ([objc_opt_self() crl_padUI])
  {
    v1 = *(v0 + 56);
    [v1 setModalPresentationStyle:7];
    v2 = [v1 popoverPresentationController];

    if (v2)
    {
      [v2 setSourceItem:*(v0 + 24)];
    }
  }

  v3 = *(v0 + 56);
  [*(v0 + 16) presentViewController:v3 animated:1 completion:0];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100993EE8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 744) = a2;
  *(v6 + 736) = a6;
  *(v6 + 728) = a5;
  *(v6 + 720) = a4;
  *(v6 + 712) = a3;
  *(v6 + 704) = a1;
  *(v6 + 752) = type metadata accessor for CRLBoardCRDTData(0);
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = type metadata accessor for MainActor();
  *(v6 + 776) = static MainActor.shared.getter();

  return _swift_task_switch(sub_100993FAC, a1, 0);
}

uint64_t sub_100993FAC()
{
  v1 = *(v0 + 704);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 784) = v4;
  *v4 = v0;
  v4[1] = sub_100994074;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_100994074(uint64_t a1)
{
  v3 = *v2;
  v3[99] = a1;
  v3[100] = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[101] = v5;
  v3[102] = v4;
  if (v1)
  {
    v6 = sub_100994484;
  }

  else
  {
    v6 = sub_1009941E0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1009941E0()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 744);
  v3 = *(v0 + 792);
  sub_100CA8B78(v3, v0 + 144);
  *(v0 + 696) = *(v0 + 152);
  v4 = *(v0 + 144);
  *(v0 + 824) = v4;
  v5 = *(v0 + 176);
  *(v0 + 576) = *(v0 + 160);
  *(v0 + 592) = v5;
  *(v0 + 608) = *(v0 + 192);
  v6 = *(v0 + 249);
  *(v0 + 616) = *(v0 + 233);
  *(v0 + 632) = v6;
  *(v0 + 647) = *(v0 + 264);

  sub_100994A3C(v0 + 696);
  *(v0 + 872) = 0;
  v7 = *&v3[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v8 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v7 + v8, v1);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_1005E2BDC(v1);
  v9 = *(v0 + 680);
  v10 = *(v0 + 688);
  if (v2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() != 1)
    {
      goto LABEL_6;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_6;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = *(v16 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name);
    v10 = *(v16 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name + 8);

    swift_unknownObjectRelease();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = (*(*(v0 + 744) + 32) + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name);
    v9 = *v12;
    v10 = v12[1];
  }

LABEL_6:
  *(v0 + 832) = v10;
  *(v0 + 840) = swift_allocObject();
  *(v0 + 16) = v4;
  *(v0 + 24) = v2;
  v13 = *(v0 + 176);
  *(v0 + 32) = *(v0 + 160);
  *(v0 + 48) = v13;
  *(v0 + 64) = *(v0 + 192);
  v14 = *(v0 + 712);
  *(v0 + 88) = *(v0 + 728);
  *(v0 + 72) = v14;
  *(v0 + 104) = *(v0 + 872);
  *(v0 + 105) = *(v0 + 233);
  *(v0 + 121) = *(v0 + 249);
  *(v0 + 136) = *(v0 + 264);
  v15 = swift_task_alloc();
  *(v0 + 848) = v15;
  *v15 = v0;
  v15[1] = sub_1009944F0;

  return sub_100CA72A0(v9, v10, 0, 1);
}

uint64_t sub_100994484()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009944F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 856) = v1;

  if (v1)
  {
    v5 = v4[102];
    v6 = v4[101];
    v7 = sub_100994928;
  }

  else
  {
    v4[108] = a1;

    v5 = v4[102];
    v6 = v4[101];
    v7 = sub_100994624;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100994624()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 840);
  v3 = *(v0 + 824);
  v20 = *(v0 + 792);
  v21 = *(v0 + 744);
  v22 = *(v0 + 728);
  v23 = *(v0 + 712);

  *(v2 + 16) = v1;
  v4 = OBJC_IVAR____TtC8Freeform16CRLTemporaryFile_url;
  sub_1005B981C(&unk_101A23C50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  v6 = type metadata accessor for URL();
  *(v5 + 56) = v6;
  v7 = sub_10002C58C((v5 + 32));
  (*(*(v6 - 8) + 16))(v7, v1 + v4, v6);
  v8 = objc_allocWithZone(type metadata accessor for CRLSelectionAwareActivityViewController());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithActivityItems:isa applicationActivities:0];

  sub_1005B981C(&unk_101A0A150);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10146BDE0;
  *(v11 + 32) = UIActivityTypePrint;
  *(v11 + 40) = UIActivityTypeSharePlay;
  v12 = UIActivityTypePrint;
  v13 = UIActivityTypeSharePlay;
  sub_100F7D3C4();

  *(v0 + 560) = sub_100994D44;
  *(v0 + 568) = v2;
  *(v0 + 528) = _NSConcreteStackBlock;
  *(v0 + 536) = *"";
  *(v0 + 544) = sub_100992704;
  *(v0 + 552) = &unk_10188F100;
  v14 = _Block_copy((v0 + 528));
  v15 = v10;

  [v15 setCompletionWithItemsHandler:v14];

  _Block_release(v14);

  *(v0 + 400) = v3;
  *(v0 + 408) = v21;
  v16 = *(v0 + 592);
  *(v0 + 416) = *(v0 + 576);
  *(v0 + 432) = v16;
  *(v0 + 448) = *(v0 + 608);
  *(v0 + 456) = v23;
  *(v0 + 472) = v22;
  *(v0 + 488) = *(v0 + 872);
  v17 = *(v0 + 632);
  *(v0 + 489) = *(v0 + 616);
  *(v0 + 505) = v17;
  *(v0 + 520) = *(v0 + 647);
  sub_1008BE3F8(v0 + 400);

  v18 = *(v0 + 8);

  return v18(v15);
}

uint64_t sub_100994928()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 744);
  v7 = *(v0 + 728);
  v8 = *(v0 + 712);

  swift_deallocUninitializedObject();
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  v3 = *(v0 + 592);
  *(v0 + 288) = *(v0 + 576);
  *(v0 + 304) = v3;
  *(v0 + 320) = *(v0 + 608);
  *(v0 + 328) = v8;
  *(v0 + 344) = v7;
  *(v0 + 360) = *(v0 + 872);
  v4 = *(v0 + 632);
  *(v0 + 361) = *(v0 + 616);
  *(v0 + 377) = v4;
  *(v0 + 392) = *(v0 + 647);
  sub_1008BE3F8(v0 + 272);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100994A3C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A06CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100994AC0()
{
  v1 = sub_1005B981C(&qword_101A15A30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100994B58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_1009929D0(a1, v4, v5, v7, v6);
}

uint64_t sub_100994C58()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

void *sub_100994D58()
{
  result = sub_100BD6858(_swiftEmptyArrayStorage);
  off_101A0A160 = result;
  return result;
}

char *sub_100994D80(void *a1, void *a2, id a3)
{
  v6 = [a3 computeCommandEncoder];
  if (!v6)
  {
    sub_1009952C4();
    swift_allocError();
    *v8 = xmmword_101474CF0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  v7 = v6;
  if (*(v3 + 32) == 1)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v10 = [a1 newTextureViewWithPixelFormat:80];
    if (!v10)
    {
      v23 = [a1 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      sub_1009952C4();
      swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      *(v27 + 16) = 1;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }

    v11 = v10;
    v12 = [a2 newTextureViewWithPixelFormat:80];
    if (!v12)
    {
      v28 = [a2 description];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      sub_1009952C4();
      swift_allocError();
      *v32 = v29;
      *(v32 + 8) = v31;
      *(v32 + 16) = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    a2 = v12;
    a1 = v11;
  }

  v13 = *(v3 + 24);
  [v7 setComputePipelineState:v13];
  [v7 setTexture:a1 atIndex:0];
  [v7 setTexture:a2 atIndex:1];
  v14 = [v13 threadExecutionWidth];
  result = [v13 maxTotalThreadsPerThreadgroup];
  if (!v14)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = result;
  if (result == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_30;
  }

  v16 = [a2 width];
  result = [a2 height];
  v17 = &v16[v14];
  if (__OFADD__(v16, v14))
  {
    goto LABEL_25;
  }

  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v19 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_31;
  }

  v20 = v15 / v14;
  v21 = &result[v15 / v14];
  if (__OFADD__(result, v15 / v14))
  {
    goto LABEL_27;
  }

  v18 = __OFSUB__(v21, 1);
  v22 = v21 - 1;
  if (v18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v20)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v22 != 0x8000000000000000 || v20 != -1)
  {
    v34[0] = v19 / v14;
    v34[1] = v22 / v20;
    v34[2] = 1;
    v33[0] = v14;
    v33[1] = v15 / v14;
    v33[2] = 1;
    [v7 dispatchThreadgroups:v34 threadsPerThreadgroup:v33];
    [v7 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1009950D4(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(43);

    v10 = 0xD000000000000028;
    swift_getErrorValue();
    v6._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v6);

    goto LABEL_5;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(46);

    v10 = 0xD00000000000002BLL;
    v5._countAndFlagsBits = a1;
    v5._object = a2;
    String.append(_:)(v5);
LABEL_5:
    v7._countAndFlagsBits = 46;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    return v10;
  }

  if (a1 ^ 1 | a2)
  {
    v9 = 0xD00000000000002CLL;
  }

  else
  {
    v9 = 0xD000000000000029;
  }

  if (a1 | a2)
  {
    return v9;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}