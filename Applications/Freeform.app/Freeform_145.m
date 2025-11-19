double sub_101137D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v18 = a1;
  v19 = a2;
  v5 = sub_10002C58C(v17);
  sub_10113E1F4(v3, v5, a3);
  v6 = v18;
  v7 = v19;
  v8 = sub_100020E58(v17, v18);
  v9 = *(v6 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10113E1F4(v12, v11, a3);
  (*(v7 + 32))(v6, v7);
  v14 = v13;
  (*(v9 + 8))(v11, v6);
  sub_100005070(v17);
  return v14;
}

Swift::Int sub_101137F0C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10113DEBC(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_10113CFAC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_101137F98(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v131 = a7;
  v130 = a6;
  v134 = a5;
  v133 = a4;
  v129 = a2;
  v128 = a1;
  v13 = a9;
  v14 = sub_1005B981C(&qword_1019FB750);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v125 - v16;
  v18 = (*(a11 + 56))(a10, a11, v15);
  v20 = sub_10097E5A0(v18, v19);

  v21 = *(v20 + 16);
  v135 = v17;
  if (v21)
  {
    v127 = a8;
    v22 = 0;
    v23 = v20 + 32;
    v138 = _swiftEmptyArrayStorage;
    v137 = v20 + 32;
    v139 = v20;
    do
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
LABEL_65:
        __break(1u);

        __break(1u);
        return result;
      }

      sub_10000630C(v23, &v140);
      v24 = v141;
      v25 = v142;
      sub_100020E58(&v140, v141);
      if ((*(*(v25 + 16) + 8))(v24))
      {
        sub_100050F74(&v140, &v151);
        v26 = v138;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v147 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1007767E4(0, v26[2] + 1, 1);
          v26 = v147;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          sub_1007767E4((v28 > 1), v29 + 1, 1);
          v26 = v147;
        }

        v26[2] = v29 + 1;
        v138 = v26;
        sub_100050F74(&v151, &v26[5 * v29 + 4]);
        v20 = v139;
      }

      else
      {
        sub_100005070(&v140);
      }

      ++v22;
      v23 += 40;
    }

    while (v21 != v22);
    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    v32 = v137;
    do
    {
      if (v30 >= *(v139 + 16))
      {
        goto LABEL_65;
      }

      v33 = v31;
      sub_10000630C(v32, &v140);
      v34 = v141;
      v35 = v142;
      sub_100020E58(&v140, v141);
      (*(v35 + 88))(&v151, v34, v35);
      v36 = v152;
      v37 = v153;
      sub_100020E58(&v151, v152);
      v38 = (*(v37 + 184))(v36, v37);
      sub_100005070(&v151);
      if (v38)
      {
        sub_100005070(&v140);
        v31 = v33;
      }

      else
      {
        sub_100050F74(&v140, &v151);
        v31 = v33;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *&v147 = v33;
        if ((v39 & 1) == 0)
        {
          sub_1007767E4(0, v33[2] + 1, 1);
          v31 = v147;
        }

        v41 = v31[2];
        v40 = v31[3];
        if (v41 >= v40 >> 1)
        {
          sub_1007767E4((v40 > 1), v41 + 1, 1);
          v31 = v147;
        }

        v31[2] = v41 + 1;
        sub_100050F74(&v151, &v31[5 * v41 + 4]);
      }

      ++v30;
      v32 += 40;
    }

    while (v21 != v30);
    v126 = v31;
    if ((a3 & 1) == 0)
    {
      v20 = v139;
      v108 = v126;
      a8 = v127;
      v17 = v135;
      goto LABEL_60;
    }

    v132 = a9;
    v42 = 0;
    v20 = v139;
    v136 = v21;
    do
    {
      sub_10000630C(v137 + 40 * v42, &v151);
      v56 = v152;
      v57 = v153;
      sub_100020E58(&v151, v152);
      v58 = (*(v57 + 64))(v56, v57);
      if (v58)
      {
        v59 = v58;
        v60 = v152;
        v61 = v153;
        sub_100020E58(&v151, v152);
        (*(v61 + 88))(&v140, v60, v61);
        v62 = v141;
        v63 = v142;
        sub_100020E58(&v140, v141);
        v64 = (*(v63 + 80))(v62, v63);
        sub_100005070(&v140);
        v65 = *(v20 + 16);
        if (v65)
        {
          v66 = v137;
          v67 = _swiftEmptyArrayStorage;
          while (1)
          {
            sub_10000630C(v66, &v147);
            v68 = *(&v148 + 1);
            v69 = v149;
            sub_100020E58(&v147, *(&v148 + 1));
            v70 = (*(v69 + 64))(v68, v69);
            if (v70)
            {
              v71 = v70;
              sub_1009354E4();
              v72 = v59;
              v73 = static NSObject.== infix(_:_:)();

              if (v73)
              {
                v74 = *(&v148 + 1);
                v75 = v149;
                sub_100020E58(&v147, *(&v148 + 1));
                (*(v75 + 88))(&v144, v74, v75);
                v76 = v145;
                v77 = v146;
                sub_100020E58(&v144, v145);
                v78 = (*(v77 + 80))(v76, v77);
                v79 = sub_100B76520(v78);
                v81 = v80;
                if (v79 == sub_100B76520(v64) && v81 == v82)
                {

                  sub_100005070(&v144);
LABEL_42:
                  sub_100050F74(&v147, &v144);
                  v85 = swift_isUniquelyReferenced_nonNull_native();
                  v150 = v67;
                  if ((v85 & 1) == 0)
                  {
                    sub_1007767E4(0, v67[2] + 1, 1);
                    v67 = v150;
                  }

                  v87 = v67[2];
                  v86 = v67[3];
                  if (v87 >= v86 >> 1)
                  {
                    sub_1007767E4((v86 > 1), v87 + 1, 1);
                    v67 = v150;
                  }

                  v67[2] = v87 + 1;
                  sub_100050F74(&v144, &v67[5 * v87 + 4]);
                  goto LABEL_32;
                }

                v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

                sub_100005070(&v144);
                if (v84)
                {
                  goto LABEL_42;
                }
              }
            }

            sub_100005070(&v147);
LABEL_32:
            v66 += 40;
            if (!--v65)
            {
              goto LABEL_48;
            }
          }
        }

        v67 = _swiftEmptyArrayStorage;
LABEL_48:
        *&v147 = v67;

        sub_101137F0C(&v147);

        sub_10093524C(v147, &v140);

        v88 = v141;
        v20 = v139;
        v21 = v136;
        if (v141)
        {
          v89 = v142;
          sub_100020E58(&v140, v141);
          (*(v89 + 112))(&v147, v88, v89);
          sub_100005070(&v140);
        }

        else
        {
          sub_10000CAAC(&v140, &qword_1019F57A0);
          v147 = 0u;
          v148 = 0u;
        }

        v90 = objc_opt_self();
        [v90 begin];
        [v90 setDisableActions:1];
        v91 = v152;
        v92 = v153;
        sub_100020E58(&v151, v152);
        (*(v92 + 80))(&v140, v91, v92);
        v93 = v143;
        sub_10000CAAC(&v140, &unk_101A09F80);
        if (v93)
        {
          v94 = v152;
          v95 = v153;
          sub_100020E58(&v151, v152);
          v96 = v152;
          v97 = v153;
          sub_100020E58(&v151, v152);
          (*(v97 + 80))(&v140, v96, v97);
          v98 = (*(*(v95 + 8) + 16))(&v140, v94);
          sub_10000CAAC(&v140, &unk_101A09F80);
          sub_100601584(&v147, &v140);
          v99 = v141;
          if (v141)
          {
            v100 = sub_100020E58(&v140, v141);
            v101 = *(v99 - 8);
            v102 = __chkstk_darwin(v100);
            v104 = &v125 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v101 + 16))(v104, v102);
            v105 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v101 + 8))(v104, v99);
            sub_100005070(&v140);
          }

          else
          {
            v105 = 0;
          }

          [v98 setFromValue:v105];
          swift_unknownObjectRelease();
          sub_100601584(&v147, &v140);
          v106 = v141;
          if (v141)
          {
            v43 = sub_100020E58(&v140, v141);
            v44 = *(v106 - 8);
            v45 = __chkstk_darwin(v43);
            v47 = &v125 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v44 + 16))(v47, v45);
            v48 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v44 + 8))(v47, v106);
            sub_100005070(&v140);
          }

          else
          {
            v48 = 0;
          }

          v21 = v136;
          [v98 setToValue:v48];
          swift_unknownObjectRelease();
          [v98 setRemovedOnCompletion:0];
          v49 = v152;
          v50 = v153;
          sub_100020E58(&v151, v152);
          (*(v50 + 88))(&v140, v49, v50);
          v51 = v141;
          v52 = v142;
          sub_100020E58(&v140, v141);
          v53 = (*(v52 + 48))(v51, v52);
          sub_1011391B0(v53, v54);

          sub_100005070(&v140);
          v55 = String._bridgeToObjectiveC()();

          [v59 addAnimation:v98 forKey:v55];

          v20 = v139;
        }

        [v90 commit];

        sub_10000CAAC(&v147, &unk_1019F4D00);
      }

      ++v42;
      sub_100005070(&v151);
    }

    while (v42 != v21);
    a8 = v127;
    v13 = v132;
    v17 = v135;
    v107 = v138;
    v108 = v126;
    goto LABEL_62;
  }

  v107 = _swiftEmptyArrayStorage;
  v108 = _swiftEmptyArrayStorage;
  if (a3)
  {
LABEL_62:
    v132 = v13;
    v116 = type metadata accessor for TaskPriority();
    (*(*(v116 - 8) + 56))(v17, 1, 1, v116);
    type metadata accessor for MainActor();
    v117 = v133;
    v118 = v134;
    sub_10067F2EC(v133);
    sub_10067F2EC(a8);
    v119 = a8;
    v120 = v130;
    v121 = v131;
    sub_10067F2EC(v130);
    v122 = static MainActor.shared.getter();
    v113 = swift_allocObject();
    *(v113 + 16) = v122;
    *(v113 + 24) = &protocol witness table for MainActor;
    *(v113 + 32) = v117;
    *(v113 + 40) = v118;
    *(v113 + 48) = v107;
    *(v113 + 56) = v108;
    *(v113 + 64) = v128;
    *(v113 + 72) = v129 & 1;
    v123 = v132;
    *(v113 + 80) = v119;
    *(v113 + 88) = v123;
    *(v113 + 96) = v20;
    *(v113 + 104) = v120;
    *(v113 + 112) = v121;
    v114 = &unk_101489BE0;
    v115 = v135;
    goto LABEL_63;
  }

LABEL_60:

  v109 = type metadata accessor for TaskPriority();
  (*(*(v109 - 8) + 56))(v17, 1, 1, v109);
  type metadata accessor for MainActor();
  v110 = v133;
  v111 = v134;
  sub_10067F2EC(v133);
  sub_10067F2EC(a8);
  v112 = static MainActor.shared.getter();
  v113 = swift_allocObject();
  *(v113 + 16) = v112;
  *(v113 + 24) = &protocol witness table for MainActor;
  *(v113 + 32) = v110;
  *(v113 + 40) = v111;
  *(v113 + 48) = v108;
  *(v113 + 56) = v20;
  *(v113 + 64) = a8;
  *(v113 + 72) = a9;
  v114 = &unk_101489BD8;
  v115 = v17;
LABEL_63:
  sub_10064191C(0, 0, v115, v114, v113);
}

double sub_101138DF8(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v4 = sub_10002C58C(v23);
  sub_10113E1F4(v2, v4, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v5 = v24;
  v6 = v25;
  v7 = sub_100020E58(v23, v24);
  v8 = *(v5 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *(v11 + *(a1 + 20));
  sub_10113E1F4(v11, v10, type metadata accessor for CRLCanvasLayerAnimation);
  v13 = &v10[*(type metadata accessor for CRLCanvasLayerAnimation() + 48)];
  v14 = *(v13 + 24);
  v15 = *(v13 + 32);
  sub_10002A948(v13, v14);
  v16 = (*(*(v15 + 32) + 24))(v22, v14);
  *v17 = v12 + *v17;
  v16(v22, 0);
  *&v10[*(a1 + 20)] = 0;
  (*(v6 + 32))(v5, v6);
  v19 = v18;
  (*(v8 + 8))(v10, v5);
  sub_100005070(v23);
  return v19;
}

double sub_101138FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, double))
{
  v7 = *v3;
  v8 = v3[1];
  v21[3] = a1;
  v21[4] = a2;
  v21[0] = v7;
  v21[1] = v8;
  v9 = sub_100020E58(v21, a1);
  v10 = *(a1 - 8);
  __chkstk_darwin(v9);
  v12 = (&v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *v13;
  v15 = v13[1];

  *v12 = a3(*&v14, v15);
  v12[1] = v16;
  (*(a2 + 32))(a1, a2);
  v18 = v17;
  (*(v10 + 8))(v12, a1);
  sub_100005070(v21);
  return v18;
}

uint64_t sub_101139148(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100020E58(a1, v3);
  return (*(v4 + 128))(a2, v3, v4) & 1;
}

uint64_t sub_1011391B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0;
  while (1)
  {
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    v11 = String._bridgeToObjectiveC()();

    v12 = [v3 animationForKey:{v11, a1, a2}];

    if (!v12)
    {
      break;
    }

    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      break;
    }
  }

  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  return a1;
}

uint64_t sub_1011392F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = type metadata accessor for MainActor();
  v9[3] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v9[4] = v12;
  *v12 = v9;
  v12[1] = sub_10007EE50;

  return sub_101139400(a4, a5, a6, a7, a8, v18 & 1, v19, a9);
}

uint64_t sub_101139400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 696) = v14;
  *(v8 + 680) = v13;
  *(v8 + 672) = a8;
  *(v8 + 664) = a7;
  *(v8 + 712) = a6;
  *(v8 + 656) = a5;
  *(v8 + 648) = a4;
  *(v8 + 640) = a3;
  *(v8 + 632) = a2;
  *(v8 + 624) = a1;
  type metadata accessor for MainActor();
  *(v8 + 704) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1011394CC, v10, v9);
}

uint64_t sub_1011394CC()
{
  v1 = *(v0 + 624);

  if (v1)
  {
    (*(v0 + 624))(v2);
  }

  if (*(*(v0 + 640) + 16))
  {
    if (qword_1019F2B20 != -1)
    {
      swift_once();
    }

    v3 = qword_101AD9398;
    v4 = *(qword_101AD9398 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLink);
    if (v4)
    {
      v5 = qword_101AD9398;
      if (([v4 paused] & 1) == 0)
      {
        sub_101236F30();
      }
    }

    else
    {
      v6 = qword_101AD9398;
    }

    sub_10123661C();
  }

  else
  {
    v3 = 0;
  }

  sub_100935398(*(v0 + 648), v0 + 152);
  v7 = *(v0 + 176);
  if (v7)
  {
    v8 = *(v0 + 184);
    sub_100020E58((v0 + 152), *(v0 + 176));
    v9 = (*(*(*(v8 + 24) + 8) + 40))(v7);
    sub_100005070(v0 + 152);
  }

  else
  {
    sub_10000CAAC(v0 + 152, &qword_1019F57A0);
    v9 = 0.0;
  }

  sub_100935398(*(v0 + 640), v0 + 192);
  v10 = *(v0 + 216);
  if (v10)
  {
    v11 = *(v0 + 224);
    sub_100020E58((v0 + 192), *(v0 + 216));
    v12 = (*(*(*(v11 + 24) + 8) + 40))(v10);
    sub_100005070(v0 + 192);
  }

  else
  {
    sub_10000CAAC(v0 + 192, &qword_1019F57A0);
    v12 = 0.0;
  }

  v13 = *(v0 + 712);
  v14 = *(v0 + 656);
  v15 = CACurrentMediaTime();
  v16 = 0.0;
  if ((v13 & 1) == 0)
  {
    v16 = v14;
  }

  if (v15 > v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v3)
  {
    if (v9 > v12)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v0 + 664);
    }

    if (v9 > v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v0 + 672);
    }

    sub_1012370D4(*(v0 + 640), v18, v19, v17, v12);
  }

  v86 = v3;
  v20 = objc_opt_self();
  [v20 begin];
  [v20 setAnimationDuration:v9];
  [v20 setDisableActions:1];
  if (v9 > v12)
  {
    v21 = *(v0 + 672);
    v22 = *(v0 + 664);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    *(v0 + 136) = sub_10105A610;
    *(v0 + 144) = v23;
    *(v0 + 104) = _NSConcreteStackBlock;
    *(v0 + 112) = *"";
    *(v0 + 120) = sub_100007638;
    *(v0 + 128) = &unk_1018B20B8;
    v24 = _Block_copy((v0 + 104));
    sub_10067F2EC(v22);

    [v20 setCompletionBlock:v24];
    _Block_release(v24);
  }

  v85 = v20;
  v25 = *(v0 + 680);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + 32;
    do
    {
      sub_10000630C(v27, v0 + 232);
      v36 = *(v0 + 256);
      v37 = *(v0 + 264);
      sub_100020E58((v0 + 232), v36);
      (*(v37 + 88))(v36, v37);
      v38 = *(v0 + 296);
      v39 = *(v0 + 304);
      sub_100020E58((v0 + 272), v38);
      v40 = (*(v39 + 112))(v38, v39);
      v35 = v0 + 272;
      if (v40 != 2)
      {
        sub_100005070(v0 + 272);
        if ((v40 & 1) == 0)
        {
          goto LABEL_37;
        }

        v41 = *(v0 + 256);
        v42 = *(v0 + 264);
        sub_100020E58((v0 + 232), v41);
        v43 = (*(v42 + 64))(v41, v42);
        if (!v43)
        {
          goto LABEL_37;
        }

        v28 = v43;
        v29 = *(v0 + 256);
        v30 = *(v0 + 264);
        sub_100020E58((v0 + 232), v29);
        (*(v30 + 88))(v29, v30);
        v31 = *(v0 + 576);
        v32 = *(v0 + 584);
        sub_100020E58((v0 + 552), v31);
        v33 = (*(v32 + 48))(v31, v32);
        sub_10113A1FC(v33, v34);

        v35 = v0 + 552;
      }

      sub_100005070(v35);
LABEL_37:
      sub_100005070(v0 + 232);
      v27 += 40;
      --v26;
    }

    while (v26);
  }

  v44 = *(v0 + 648);
  v45 = *(v44 + 16);
  if (v45)
  {
    v46 = v44 + 32;
    do
    {
      sub_10000630C(v46, v0 + 312);
      v47 = *(v0 + 336);
      v48 = *(v0 + 344);
      sub_100020E58((v0 + 312), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = v49;
        v87 = *(v0 + 680);
        v51 = *(v0 + 336);
        v52 = *(v0 + 344);
        sub_100020E58((v0 + 312), v51);
        v53 = *(v0 + 336);
        v54 = *(v0 + 344);
        sub_100020E58((v0 + 312), v53);
        (*(v54 + 80))(v53, v54);
        v55 = (*(*(v52 + 8) + 8))(v0 + 16, v51, v17);
        sub_10000CAAC(v0 + 16, &unk_101A09F80);
        v56 = *(v0 + 336);
        v57 = *(v0 + 344);
        sub_100020E58((v0 + 312), v56);
        (*(v57 + 88))(v56, v57);
        v58 = *(v0 + 376);
        v59 = *(v0 + 384);
        sub_100020E58((v0 + 352), v58);
        v60 = (*(v59 + 48))(v58, v59);
        sub_1011391B0(v60, v61);

        sub_100005070(v0 + 352);
        v62 = String._bridgeToObjectiveC()();

        [v50 addAnimation:v55 forKey:v62];

        v63 = *(v0 + 336);
        v64 = *(v0 + 344);
        sub_100020E58((v0 + 312), v63);
        (*(v64 + 88))(v63, v64);
        v65 = *(v0 + 496);
        v66 = *(v0 + 504);
        sub_100020E58((v0 + 472), v65);
        v67 = (*(v66 + 80))(v65, v66);
        sub_100935530(v67, v50, v87, v0 + 432);
        sub_100005070(v0 + 472);
        if (*(v0 + 456))
        {
          sub_100050F74((v0 + 432), v0 + 392);
          v68 = *(v0 + 416);
          v69 = *(v0 + 424);
          sub_100020E58((v0 + 392), v68);
          (*(v69 + 120))(v68, v69);
          v70 = *(v0 + 616);
          if (v70)
          {
            v71 = sub_100020E58((v0 + 592), *(v0 + 616));
            v72 = *(v70 - 8);
            v73 = swift_task_alloc();
            (*(v72 + 16))(v73, v71, v70);
            v74 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v72 + 8))(v73, v70);

            sub_100005070(v0 + 592);
          }

          else
          {
            v74 = 0;
          }

          v75 = *(v0 + 336);
          v76 = *(v0 + 344);
          sub_100020E58((v0 + 312), v75);
          (*(v76 + 88))(v75, v76);
          v77 = *(v0 + 536);
          v78 = *(v0 + 544);
          sub_100020E58((v0 + 512), v77);
          v79 = (*(v78 + 80))(v77, v78);
          sub_100B76520(v79);
          v80 = String._bridgeToObjectiveC()();

          sub_100005070(v0 + 512);
          [v50 setValue:v74 forKey:v80];

          swift_unknownObjectRelease();
          sub_100005070(v0 + 392);
        }

        else
        {

          sub_10000CAAC(v0 + 432, &qword_1019F57A0);
        }
      }

      sub_100005070(v0 + 312);
      v46 += 40;
      --v45;
    }

    while (v45);
  }

  v81 = *(v0 + 688);
  v82 = [v85 commit];
  if (v81)
  {
    (*(v0 + 688))(v82);
  }

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_101139E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101139EC4, v10, v9);
}

uint64_t sub_101139EC4()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  sub_101139F5C(v6, v5, v4, v3, v2, v1);
  v7 = v0[1];

  return v7();
}

id sub_101139F5C(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    a1();
  }

  v8 = objc_opt_self();
  [v8 begin];
  [v8 setDisableActions:1];
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = a3 + 32;
    do
    {
      sub_10000630C(v10, aBlock);
      v13 = v33;
      v14 = v34;
      sub_100020E58(aBlock, v33);
      v15 = (*(v14 + 8))(v13, v14);
      if (v15)
      {
        v16 = v15;
        v18 = v33;
        v17 = v34;
        sub_100020E58(aBlock, v33);
        (*(v17 + 11))(v27, v18, v17);
        v19 = v28;
        v20 = v29;
        sub_100020E58(v27, v28);
        v21 = (*(v20 + 80))(v19, v20);
        sub_100935530(v21, v16, a4, v30);
        sub_100005070(v27);
        if (v31)
        {
          sub_10000CAAC(v30, &qword_1019F57A0);
          v11 = v33;
          v12 = v34;
          sub_100020E58(aBlock, v33);
          sub_100934D7C(v11, v12);
        }

        else
        {

          sub_10000CAAC(v30, &qword_1019F57A0);
        }
      }

      sub_100005070(aBlock);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;
  v34 = sub_10105B424;
  v35 = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  v33 = &unk_1018B2108;
  v23 = _Block_copy(aBlock);
  sub_10067F2EC(a5);

  [v8 setCompletionBlock:v23];
  _Block_release(v23);
  return [v8 commit];
}

void sub_10113A1FC(uint64_t a1, void *a2)
{
  sub_10113A2B8(a1, a2);
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 40;
    while (v6 < *(v4 + 16))
    {
      ++v6;

      v8 = String._bridgeToObjectiveC()();
      [v2 removeAnimationForKey:v8];

      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void sub_10113A2B8(uint64_t a1, void *a2)
{
  v5 = [v2 animationKeys];
  if (v5)
  {
    v6 = v5;
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = v7[2];
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
    v8 = _swiftEmptyArrayStorage[2];
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  v9 = 0;
  v10 = v7 + 5;
  do
  {
    v11 = &v10[2 * v9];
    v12 = v9;
    while (1)
    {
      if (v12 >= v7[2])
      {
        __break(1u);
        return;
      }

      v14 = *(v11 - 1);
      v13 = *v11;
      v9 = v12 + 1;

      v15._countAndFlagsBits = a1;
      v15._object = a2;
      if (String.hasPrefix(_:)(v15))
      {
        break;
      }

      v11 += 2;
      ++v12;
      if (v8 == v9)
      {
        goto LABEL_16;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100034080(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v17 = _swiftEmptyArrayStorage[2];
    v16 = _swiftEmptyArrayStorage[3];
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      sub_100034080((v16 > 1), v17 + 1, 1);
      v18 = v17 + 1;
    }

    _swiftEmptyArrayStorage[2] = v18;
    v19 = &_swiftEmptyArrayStorage[2 * v17];
    v19[4] = v14;
    v19[5] = v13;
    v10 = v7 + 5;
  }

  while (v8 - 1 != v12);
LABEL_16:
}

char *sub_10113A4E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A2B238);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10113A628(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A06398);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10113A72C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11C98);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10113A830(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A2B128);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10113A974(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1005B981C(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_1(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_10113AA70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A2B148);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10113AB64(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11B98);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_10113ACB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1005B981C(&qword_101A1AAE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&unk_1019F6C70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10113ADE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1005B981C(&qword_101A2B230);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_1019F6F00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10113B050(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&unk_101A23C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10113B1AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A2B228);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10113B440(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A2B220);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10113B630(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1005B981C(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_1(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 56);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[56 * v9])
    {
      memmove(v13, v14, 56 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_10113B778(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&unk_1019F6F30);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_10113B8C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1005B981C(&qword_101A0F920);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_1019FF508);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10113B9FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A2B150);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10113BB08(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A2B158);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10113BC60(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1005B981C(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_1(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_10113BD90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1005B981C(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_1(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_10113BF00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A2B208);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

void *sub_10113C024(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1005B981C(&qword_101A11D90);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_101A03928);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10113C16C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1005B981C(&qword_101A2B1D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_101A2B1E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10113C2E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1005B981C(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_1(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_10113C430(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1005B981C(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_1(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

char *sub_10113C528(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11D68);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10113C684(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_10113C7C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1005B981C(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_1(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_10113C920(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1005B981C(a5);
  v14 = *(sub_1005B981C(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_1(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_1005B981C(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10113CB50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1005B981C(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_1(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_10113CCAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A2C800);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10113CF0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

Swift::Int sub_10113CFAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1005B981C(&qword_1019F5870);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10113D230(v7, v8, a1, v4);
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
    return sub_10113D0B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10113D0B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v24 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 40 * a3;
    v7 = result - a3;
LABEL_5:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      sub_10000630C(v9, &v21);
      sub_10000630C(v9 - 40, v18);
      v11 = v22;
      v10 = v23;
      sub_100020E58(&v21, v22);
      v12 = (*(*(*(v10 + 24) + 8) + 8))(v11);
      v14 = v19;
      v13 = v20;
      sub_100020E58(v18, v19);
      v15 = (*(*(*(v13 + 24) + 8) + 8))(v14);
      sub_100005070(v18);
      result = sub_100005070(&v21);
      if (v12 >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 40;
        --v7;
        if (v4 == v24)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      sub_100050F74(v9, &v21);
      v16 = *(v9 - 24);
      *v9 = *(v9 - 40);
      *(v9 + 16) = v16;
      *(v9 + 32) = *(v9 - 8);
      result = sub_100050F74(&v21, v9 - 40);
      v9 -= 40;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10113D230(uint64_t result, uint64_t a2, char *a3, int64_t a4)
{
  v6 = v4;
  v7 = result;
  v8 = *(a3 + 1);
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_92:
    v5 = a3;
    v30 = *v7;
    if (!*v7)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_10113DE48(v10);
      v10 = result;
    }

    v118 = v10;
    v99 = *(v10 + 2);
    if (v99 >= 2)
    {
      while (*v5)
      {
        v100 = *&v10[16 * v99];
        v101 = *&v10[16 * v99 + 24];
        sub_10113DA1C((*v5 + 40 * v100), (*v5 + 40 * *&v10[16 * v99 + 16]), *v5 + 40 * v101, v30);
        if (v6)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10113DE48(v10);
        }

        if (v99 - 2 >= *(v10 + 2))
        {
          goto LABEL_118;
        }

        v102 = &v10[16 * v99];
        *v102 = v100;
        *(v102 + 1) = v101;
        v118 = v10;
        result = sub_10113DDBC(v99 - 1);
        v10 = v118;
        v99 = *(v118 + 2);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v105 = result;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v107 = v11;
    if (v12 >= v8)
    {
      v29 = v12;
      v30 = a3;
    }

    else
    {
      v13 = v11;
      v14 = *a3;
      sub_10000630C(*a3 + 40 * v12, &v115);
      v15 = 40 * v13;
      v16 = v14 + 40 * v13;
      sub_10000630C(v16, v112);
      v18 = v116;
      v17 = v117;
      sub_100020E58(&v115, v116);
      v19 = (*(*(*(v17 + 24) + 8) + 8))(v18);
      v5 = v113;
      v20 = v114;
      sub_100020E58(v112, v113);
      v21 = (*(*(*(v20 + 24) + 8) + 8))(v5);
      sub_100005070(v112);
      result = sub_100005070(&v115);
      v22 = v13 + 2;
      v23 = v16 + 80;
      while (v8 != v22)
      {
        sub_10000630C(v23, &v115);
        sub_10000630C(v23 - 40, v112);
        v25 = v116;
        v24 = v117;
        sub_100020E58(&v115, v116);
        v26 = (*(*(*(v24 + 24) + 8) + 8))(v25);
        v5 = v113;
        v27 = v114;
        sub_100020E58(v112, v113);
        v28 = (*(*(*(v27 + 24) + 8) + 8))(v5);
        sub_100005070(v112);
        result = sub_100005070(&v115);
        ++v22;
        v23 += 40;
        if (v19 < v21 == v26 >= v28)
        {
          v29 = v22 - 1;
          goto LABEL_11;
        }
      }

      v29 = v8;
LABEL_11:
      v30 = a3;
      v11 = v107;
      if (v19 >= v21)
      {
        goto LABEL_20;
      }

      if (v29 < v107)
      {
        goto LABEL_121;
      }

      if (v107 >= v29)
      {
LABEL_20:
        v7 = v105;
      }

      else
      {
        v5 = a3;
        v31 = v107;
        v32 = 40 * v29 - 40;
        v110 = v29;
        do
        {
          if (v31 != --v29)
          {
            v37 = *a3;
            if (!*a3)
            {
              goto LABEL_127;
            }

            v33 = v37 + v15;
            v34 = v37 + v32;
            sub_100050F74((v37 + v15), &v115);
            v35 = *(v34 + 32);
            v36 = *(v34 + 16);
            *v33 = *v34;
            *(v33 + 16) = v36;
            *(v33 + 32) = v35;
            result = sub_100050F74(&v115, v34);
          }

          ++v31;
          v32 -= 40;
          v15 += 40;
        }

        while (v31 < v29);
        v30 = a3;
        v7 = v105;
        v11 = v107;
        v29 = v110;
      }
    }

    v38 = *(v30 + 1);
    if (v29 < v38)
    {
      if (__OFSUB__(v29, v11))
      {
        goto LABEL_120;
      }

      if (v29 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_122;
        }

        if (v11 + a4 >= v38)
        {
          v5 = *(v30 + 1);
        }

        else
        {
          v5 = v11 + a4;
        }

        if (v5 < v11)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v29 != v5)
        {
          break;
        }
      }
    }

    v5 = v29;
    if (v29 < v11)
    {
      goto LABEL_119;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100B355CC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v40 = *(v10 + 2);
    v39 = *(v10 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100B355CC((v39 > 1), v40 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v41;
    v42 = &v10[16 * v40];
    *(v42 + 4) = v107;
    *(v42 + 5) = v5;
    v43 = *v7;
    if (!*v7)
    {
      goto LABEL_129;
    }

    v108 = v5;
    if (v40)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v10 + 4);
          v45 = *(v10 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_51:
          if (v47)
          {
            goto LABEL_108;
          }

          v60 = &v10[16 * v41];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_111;
          }

          v66 = &v10[16 * v5 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_115;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v70 = &v10[16 * v41];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_65:
        if (v65)
        {
          goto LABEL_110;
        }

        v73 = &v10[16 * v5];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_72:
        v81 = v5 - 1;
        if (v5 - 1 >= v41)
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

        if (!*v30)
        {
          goto LABEL_126;
        }

        v82 = *&v10[16 * v81 + 32];
        v83 = *&v10[16 * v5 + 40];
        sub_10113DA1C((*v30 + 40 * v82), (*v30 + 40 * *&v10[16 * v5 + 32]), *v30 + 40 * v83, v43);
        if (v6)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10113DE48(v10);
        }

        if (v81 >= *(v10 + 2))
        {
          goto LABEL_105;
        }

        v84 = &v10[16 * v81];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        v118 = v10;
        result = sub_10113DDBC(v5);
        v10 = v118;
        v41 = *(v118 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v10[16 * v41 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_106;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_107;
      }

      v55 = &v10[16 * v41];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_109;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_112;
      }

      if (v59 >= v51)
      {
        v77 = &v10[16 * v5 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_116;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v8 = *(v30 + 1);
    v9 = v108;
    if (v108 >= v8)
    {
      goto LABEL_92;
    }
  }

  v103 = v6;
  v85 = v29;
  v86 = *v30;
  v87 = *v30 + 40 * v85;
  v109 = v5;
  v111 = v85;
  v88 = v11 - v85;
LABEL_83:
  v89 = v88;
  v90 = v87;
  while (1)
  {
    sub_10000630C(v90, &v115);
    sub_10000630C(v90 - 40, v112);
    v92 = v116;
    v91 = v117;
    sub_100020E58(&v115, v116);
    v93 = (*(*(*(v91 + 24) + 8) + 8))(v92);
    v95 = v113;
    v94 = v114;
    sub_100020E58(v112, v113);
    v96 = (*(*(*(v94 + 24) + 8) + 8))(v95);
    sub_100005070(v112);
    result = sub_100005070(&v115);
    if (v93 >= v96)
    {
LABEL_82:
      v5 = v109;
      v87 += 40;
      --v88;
      if (++v111 != v109)
      {
        goto LABEL_83;
      }

      v6 = v103;
      v7 = v105;
      v30 = a3;
      if (v109 < v107)
      {
        goto LABEL_119;
      }

      goto LABEL_32;
    }

    if (!v86)
    {
      break;
    }

    sub_100050F74(v90, &v115);
    v97 = *(v90 - 24);
    *v90 = *(v90 - 40);
    *(v90 + 16) = v97;
    *(v90 + 32) = *(v90 - 8);
    sub_100050F74(&v115, v90 - 40);
    v90 -= 40;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_82;
    }
  }

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
  return result;
}

uint64_t sub_10113DA1C(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
    }

    v12 = &v4[40 * v11];
    if (v10 < 40 || v6 <= v7)
    {
      v23 = v6;
    }

    else
    {
      do
      {
        v47 = v6;
        v24 = (v6 - 40);
        v25 = (v12 - 40);
        v5 -= 40;
        while (1)
        {
          v12 = (v25 + 40);
          v28 = (v5 + 40);
          sub_10000630C(v25, v44);
          v6 = v24;
          sub_10000630C(v24, v41);
          v30 = v45;
          v29 = v46;
          sub_100020E58(v44, v45);
          v31 = (*(*(*(v29 + 24) + 8) + 8))(v30);
          v33 = v42;
          v32 = v43;
          sub_100020E58(v41, v42);
          v34 = (*(*(*(v32 + 24) + 8) + 8))(v33);
          sub_100005070(v41);
          sub_100005070(v44);
          if (v31 < v34)
          {
            break;
          }

          if (v28 != v12)
          {
            v35 = *v25;
            v36 = *(v25 + 16);
            *(v5 + 32) = *(v25 + 32);
            *v5 = v35;
            *(v5 + 16) = v36;
          }

          v26 = v25 - 40;
          v5 -= 40;
          v27 = v25 > v4;
          v25 -= 40;
          v24 = v6;
          if (!v27)
          {
            v12 = (v26 + 40);
            v23 = v47;
            goto LABEL_33;
          }
        }

        v23 = v6;
        if (v28 != v47)
        {
          v37 = *v6;
          v38 = *(v6 + 1);
          *(v5 + 32) = *(v6 + 4);
          *v5 = v37;
          *(v5 + 16) = v38;
        }
      }

      while (v12 > v4 && v6 > v7);
      v12 = (v25 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 >= 40 && v6 < v5)
    {
      while (1)
      {
        sub_10000630C(v6, v44);
        sub_10000630C(v4, v41);
        v14 = v45;
        v13 = v46;
        sub_100020E58(v44, v45);
        v15 = (*(*(*(v13 + 24) + 8) + 8))(v14);
        v17 = v42;
        v16 = v43;
        sub_100020E58(v41, v42);
        v18 = (*(*(*(v16 + 24) + 8) + 8))(v17);
        sub_100005070(v41);
        sub_100005070(v44);
        if (v15 >= v18)
        {
          break;
        }

        v19 = v6;
        v20 = v7 == v6;
        v6 += 40;
        if (!v20)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 40;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v19 = v4;
      v20 = v7 == v4;
      v4 += 40;
      if (v20)
      {
        goto LABEL_13;
      }

LABEL_12:
      v21 = *v19;
      v22 = *(v19 + 1);
      *(v7 + 4) = *(v19 + 4);
      *v7 = v21;
      *(v7 + 1) = v22;
      goto LABEL_13;
    }

LABEL_15:
    v23 = v7;
  }

LABEL_33:
  v39 = (v12 - v4) / 40;
  if (v23 != v4 || v23 >= &v4[40 * v39])
  {
    memmove(v23, v4, 40 * v39);
  }

  return 1;
}

uint64_t sub_10113DDBC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10113DE48(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10113E1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10113E27C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_selectionStateSnapshots);
  if ([v2 count])
  {
    v32 = objc_opt_self();
    v3 = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1005CF000();
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 18;
    v15 = v33;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Expected selection state snapshots to be clear", 46, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v22 file:v23 lineNumber:18 isFatal:0 format:v24 args:v21];
  }

  [v2 removeAllObjects];
  v25 = [*(v1 + OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_receivers) allObjects];
  sub_1005B981C(&qword_101A2B278);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_7;
    }

LABEL_16:

    return;
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (!v27)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v27 >= 1)
  {
    for (i = 0; i != v27; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v26 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      v30 = [v29 selectionStateSnapshot];
      if (v30)
      {
        v31 = v30;
        [v2 setObject:v31 forKey:v29];
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  __break(1u);
}

void sub_10113E7B0(void *a1, char a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_receivers) allObjects];
  sub_1005B981C(&qword_101A2B278);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_42:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_42;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v23 = OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_selectionStateSnapshots;
    v25 = a2;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v10 = [v9 selectionPathValidator];
      if (a2)
      {
        if (a2 == 1)
        {
          v11 = [a1 persistableReverseSelectionPath];
          if (v11)
          {
            v12 = v11;
            v13 = sub_1006D2420(v11, 0);
            v14 = [a1 selectionFlags];
            v15 = [a1 additionalReverseSelectionFlags];

            if (v14)
            {
              if ((v15 & ~v14) == 0)
              {
                goto LABEL_35;
              }
            }

            else if (!v15)
            {
              goto LABEL_34;
            }

            v14 |= v15;
            goto LABEL_35;
          }
        }

        else
        {
          v18 = [a1 persistableForwardSelectionPath];
          if (v18)
          {
            v19 = v18;
            v13 = sub_1006D2420(v18, 0);
            v14 = [a1 selectionFlags];
            v20 = [a1 additionalForwardSelectionFlags];

            if (v14)
            {
              if ((v20 & ~v14) == 0)
              {
                goto LABEL_35;
              }

LABEL_33:
              v14 |= v20;
LABEL_35:
              a2 = v25;
LABEL_36:
              if ([v9 isPrimarySelectionPathReceiver])
              {
                [v9 dispatchSelectionPath:v13 withFlags:v14];

                swift_unknownObjectRelease();
                v10 = v13;
              }

              else
              {
                v22 = [*(v24 + v23) objectForKeyedSubscript:v9];
                [v9 validateSelectionStateUsing:v22];

                swift_unknownObjectRelease();
                v10 = v22;
              }

              goto LABEL_6;
            }

            if (v20)
            {
              goto LABEL_33;
            }

LABEL_34:
            v14 = 0;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v16 = [a1 persistableCommitSelectionPath];
        if (v16)
        {
          v17 = v16;
          v13 = sub_1006D2420(v16, 0);
        }

        else
        {
          v13 = [a1 commitSelectionPath];
        }

        v14 = [a1 selectionFlags];
        v21 = [a1 additionalCommitSelectionFlags];
        if (v14)
        {
          if ((v21 & ~v14) != 0)
          {
LABEL_27:
            v14 |= v21;
          }

          if (v13)
          {
            goto LABEL_36;
          }

          goto LABEL_5;
        }

        if (v21)
        {
          goto LABEL_27;
        }

        v14 = 0;
        if (v13)
        {
          goto LABEL_36;
        }
      }

LABEL_5:
      swift_unknownObjectRelease();
LABEL_6:
      ++v8;

      if (v7 == v8)
      {
        goto LABEL_42;
      }
    }
  }

  __break(1u);
}

void sub_10113EB48()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_receivers) allObjects];
  sub_1005B981C(&qword_101A2B278);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_selectionStateSnapshots);
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
      swift_unknownObjectRetain();
    }

    ++v4;
    v7 = [v5 objectForKeyedSubscript:v6];
    [v6 validateSelectionStateUsing:v7];
    swift_unknownObjectRelease();
  }

  while (v3 != v4);
LABEL_10:
}

id sub_10113ED88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSelectionDispatcher();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10113EE2C(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1012E0400(a1, &off_1018A75D0);
  if (!v4)
  {
    if (sub_100ECA104(*(v3 + OBJC_IVAR____TtC8Freeform23CRLCommandReorderScenes_reorderedScenes)))
    {
      return sub_1012CF6CC(a1, &off_1018A75D0, a3);
    }

    else
    {
      if (qword_1019F21D0 != -1)
      {
        swift_once();
      }

      v8 = static OS_os_log.crlScenes;
      v9 = static os_log_type_t.default.getter();
      return sub_100005404(v8, &_mh_execute_header, v9, "Scene Reordering Failed.", 24, 2, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

uint64_t sub_10113EF58()
{
}

id sub_10113EF9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandReorderScenes();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10113F044()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform23CRLCommandReorderScenes_actionString);

  return v1;
}

id sub_10113F0B0()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Text.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Text.version.unsafeMutableAddressor()
{
  if (qword_1019F28B0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Text.version;
}

id static TSContentLanguage.Models.Text.version.getter()
{
  if (qword_1019F28B0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Text.version;

  return v1;
}

uint64_t TSContentLanguage.Models.Text.init(attributedString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for TSContentLanguage.Models.Text();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TSContentLanguage.Models.Text.init(markdown:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for TSContentLanguage.Models.Text();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TSContentLanguage.Models.Text.init(paragraphs:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for TSContentLanguage.Models.Text();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TSContentLanguage.Models.Text.init(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for TSContentLanguage.Models.Text();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TSContentLanguage.Models.Text.init(textRuns:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for TSContentLanguage.Models.Text();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TSContentLanguage.Models.Text.init<A>(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TSContentLanguage.Models.Text();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    (*(v7 + 32))(v13, v9, v6);
  }

  else
  {
    sub_1005B981C(&unk_1019F4D80);
    if (swift_dynamicCast())
    {
      *v13 = v17[0];
    }

    else
    {
      sub_1005B981C(&qword_101A00810);
      if (swift_dynamicCast())
      {
        *v13 = v17[0];
      }

      else if (swift_dynamicCast())
      {
        v14 = v17[1];
        *v13 = v17[0];
        v13[1] = v14;
      }

      else
      {
        sub_1005B981C(&qword_101A00750);
        if (!swift_dynamicCast())
        {
          (*(*(a2 - 8) + 8))(a1, a2);
          v15 = 1;
          return (*(v11 + 56))(a3, v15, 1, v10);
        }

        *v13 = v17[0];
      }
    }
  }

  swift_storeEnumTagMultiPayload();
  (*(*(a2 - 8) + 8))(a1, a2);
  sub_1007B5304(v13, a3);
  v15 = 0;
  return (*(v11 + 56))(a3, v15, 1, v10);
}

uint64_t sub_10113F6B8()
{
  String.hash(into:)();
}

unint64_t sub_10113F7E4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101141AC0(*a1);
  *a2 = result;
  return result;
}

void sub_10113F814(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E776F646B72616DLL;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564695F65707974;
  if (v2 != 5)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x676E69727473;
  if (v2 != 3)
  {
    v8 = 0x6E75725F74786574;
    v7 = 0xE900000000000073;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x7061726761726170;
    v3 = 0xEA00000000007368;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001015524D0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10113F908()
{
  v1 = *v0;
  v2 = 0x6E776F646B72616DLL;
  v3 = 0x6564695F65707974;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x676E69727473;
  if (v1 != 3)
  {
    v4 = 0x6E75725F74786574;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x7061726761726170;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10113F9F8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101141AC0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10113FA20(uint64_t a1)
{
  v2 = sub_101141568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10113FA5C(uint64_t a1)
{
  v2 = sub_101141568();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v62 = v58 - v4;
  v5 = type metadata accessor for CodingUserInfoKey();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v68 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v7 - 8);
  v66 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = v58 - v10;
  v69 = type metadata accessor for AttributedString();
  v65 = *(v69 - 8);
  __chkstk_darwin(v69);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v58 - v14;
  v16 = sub_1005B981C(&qword_101A00808);
  v70 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v58 - v17;
  v19 = type metadata accessor for TSContentLanguage.Models.Text();
  __chkstk_darwin(v19);
  v21 = (v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1[3];
  v72 = a1;
  sub_100020E58(a1, v22);
  sub_101141568();
  v23 = v71;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    goto LABEL_14;
  }

  v59 = v12;
  v60 = v15;
  v71 = v21;
  LOBYTE(v73[0]) = 5;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v25)
  {
    if (v24 == 0xD000000000000024 && v25 == 0x800000010158ACF0)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v29[1] = 0;
        v29[2] = 0;
        *v29 = 0;
        swift_willThrow();
        goto LABEL_13;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v74 = 6;
  sub_10003EAF8(&qword_101A00400, type metadata accessor for TSCLVersion);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v73[0];
  if (!v73[0])
  {
    v58[0] = v19;
    goto LABEL_19;
  }

  if (qword_1019F28B0 != -1)
  {
    swift_once();
  }

  if (*(static TSContentLanguage.Models.Text.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) >= *&v27[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
  {
    v58[0] = v19;

LABEL_19:
    sub_100020E58(v72, v72[3]);
    v58[1] = dispatch thunk of Decoder.userInfo.getter();
    v74 = 0;
    sub_10003EAF8(&qword_101A046F8, &type metadata accessor for AttributedString);
    v34 = v66;
    v35 = v69;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v68 = v18;
    v36 = v65;
    v64 = *(v65 + 48);
    if (v64(v34, 1, v35) == 1)
    {

      sub_10000CAAC(v34, &qword_1019FC880);
      v37 = v67;
      (*(v36 + 56))(v67, 1, 1, v35);
    }

    else
    {
      v63 = v16;
      v38 = *(v36 + 32);
      v39 = v59;
      v38(v59, v34, v35);
      v40 = v38;

      v37 = v67;
      v40(v67, v39, v35);
      v16 = v63;
      (*(v36 + 56))(v37, 0, 1, v35);
    }

    v41 = v70;
    if (v64(v37, 1, v35) == 1)
    {
      sub_10000CAAC(v37, &qword_1019FC880);
      sub_100020E58(v72, v72[3]);
      v42 = dispatch thunk of Decoder.userInfo.getter();
      v43 = v68;
      v47 = sub_1007B8F14(1, v42, 0, 0);
      v68 = v43;

      if (v47 || (sub_100020E58(v72, v72[3]), v49 = dispatch thunk of Decoder.userInfo.getter(), v47 = sub_1007B9200(2, v49, 0, 0), , v47))
      {
        (*(v41 + 8))(v68, v16);
        v48 = v71;
        *v71 = v47;
        v46 = v48;
      }

      else
      {
        sub_100020E58(v72, v72[3]);
        v50 = dispatch thunk of Decoder.userInfo.getter();
        v51 = sub_1007B94F8(3, v50, 0, 0);
        v53 = v52;
        v54 = v51;

        if (v53)
        {
          (*(v70 + 8))(v68, v16);
          v55 = v71;
          *v71 = v54;
          v55[1] = v53;
          v46 = v55;
        }

        else
        {
          sub_100020E58(v72, v72[3]);
          v56 = dispatch thunk of Decoder.userInfo.getter();
          v57 = sub_1007B9520(4, v56, 0, 0);
          (*(v70 + 8))(v68, v16);

          v30 = v72;
          if (!v57)
          {
            goto LABEL_16;
          }

          v46 = v71;
          *v71 = v57;
        }
      }
    }

    else
    {
      (*(v41 + 8))(v68, v16);
      v44 = *(v65 + 32);
      v45 = v60;
      v44(v60, v37, v35);
      v46 = v71;
      v44(v71, v45, v35);
    }

    swift_storeEnumTagMultiPayload();
    sub_1007B5304(v46, v61);
    v31 = v72;
    return sub_100005070(v31);
  }

  sub_1007C8648();
  swift_allocError();
  *v28 = xmmword_101463530;
  *(v28 + 16) = 0;
  swift_willThrow();

LABEL_13:
  (*(v70 + 8))(v18, v16);
LABEL_14:
  v30 = v72;
  sub_100020E58(v72, v72[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100020E58(v73, v73[3]);
  dispatch thunk of SingleValueDecodingContainer.decode(_:)();

  sub_100005070(v73);
LABEL_16:
  sub_1007C8648();
  swift_allocError();
  *v33 = xmmword_101478600;
  *(v33 + 16) = 0;
  swift_willThrow();
  v31 = v30;
  return sub_100005070(v31);
}

uint64_t TSContentLanguage.Models.Text.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A2B2C0);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  __chkstk_darwin(v4);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v48 - v8;
  __chkstk_darwin(v9);
  v50 = &v48 - v10;
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TSContentLanguage.Models.Text();
  __chkstk_darwin(v21);
  v23 = (&v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100817544(v2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v28 = v20;
      v29 = v18;
      v30 = *(v18 + 32);
      v31 = v28;
      v30(v28, v23, v17);
      sub_100020E58(a1, a1[3]);
      sub_101141568();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      LOBYTE(v56) = 0;
      sub_10003EAF8(&qword_101A04700, &type metadata accessor for AttributedString);
      v32 = v52;
      v33 = v53;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v32)
      {
        LOBYTE(v56) = 5;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F28B0 != -1)
        {
          swift_once();
        }

        v56 = static TSContentLanguage.Models.Text.version;
        v55 = 6;
        type metadata accessor for TSCLVersion();
        sub_10003EAF8(&qword_101A00458, type metadata accessor for TSCLVersion);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v54 + 8))(v16, v33);
      return (*(v29 + 8))(v31, v17);
    }

    v44 = *v23;
    sub_100020E58(a1, a1[3]);
    sub_101141568();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v56 = v44;
    v55 = 1;
    sub_1005B981C(&unk_1019F4D80);
    sub_1011416E0();
    v45 = v52;
    v43 = v53;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v45)
    {
      (*(v54 + 8))(v13, v43);
    }

    LOBYTE(v56) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F28B0 != -1)
    {
      swift_once();
    }

    v56 = static TSContentLanguage.Models.Text.version;
    v55 = 6;
    type metadata accessor for TSCLVersion();
    sub_10003EAF8(&qword_101A00458, type metadata accessor for TSCLVersion);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = *(v54 + 8);
    v47 = v13;
    return v46(v47, v43);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v35 = *v23;
    sub_100020E58(a1, a1[3]);
    sub_101141568();
    v36 = v50;
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v56 = v35;
    v55 = 2;
    v37 = &qword_101A00810;
    v38 = &unk_10147C810;
    sub_1005B981C(&qword_101A00810);
    v39 = &unk_101A2B2D8;
    v40 = sub_10114168C;
LABEL_14:
    sub_101141610(v39, v37, v38, v40);
    v42 = v52;
    v43 = v53;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v42)
    {
      (*(v54 + 8))(v36, v43);
    }

    LOBYTE(v56) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F28B0 != -1)
    {
      swift_once();
    }

    v56 = static TSContentLanguage.Models.Text.version;
    v55 = 6;
    type metadata accessor for TSCLVersion();
    sub_10003EAF8(&qword_101A00458, type metadata accessor for TSCLVersion);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = *(v54 + 8);
    v47 = v36;
    return v46(v47, v43);
  }

  if (EnumCaseMultiPayload != 3)
  {
    v41 = *v23;
    sub_100020E58(a1, a1[3]);
    sub_101141568();
    v36 = v51;
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v56 = v41;
    v55 = 4;
    v37 = &qword_101A00750;
    v38 = &unk_10147C7E0;
    sub_1005B981C(&qword_101A00750);
    v39 = &qword_101A2B2C8;
    v40 = sub_1011415BC;
    goto LABEL_14;
  }

  sub_100020E58(a1, a1[3]);
  sub_101141568();
  v25 = v49;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v56) = 3;
  v26 = v52;
  v27 = v53;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v26)
  {
    (*(v54 + 8))(v25, v27);
  }

  LOBYTE(v56) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F28B0 != -1)
  {
    swift_once();
  }

  v56 = static TSContentLanguage.Models.Text.version;
  v55 = 6;
  type metadata accessor for TSCLVersion();
  sub_10003EAF8(&qword_101A00458, type metadata accessor for TSCLVersion);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v54 + 8))(v25, v27);
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO4TextO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v2 = type metadata accessor for AttributedString();
  v39 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TSContentLanguage.Models.Text();
  __chkstk_darwin(v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v38 - v9);
  __chkstk_darwin(v11);
  v13 = (&v38 - v12);
  __chkstk_darwin(v14);
  v16 = (&v38 - v15);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  v20 = sub_1005B981C(&qword_101A2B3E0);
  __chkstk_darwin(v20 - 8);
  v22 = &v38 - v21;
  v24 = (&v38 + *(v23 + 56) - v21);
  sub_100817544(v40, &v38 - v21);
  sub_100817544(v41, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100817544(v22, v13);
      v31 = *v13;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v32 = sub_100672F54(v31);
LABEL_20:
        v35 = v32;

        goto LABEL_21;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_100817544(v22, v10);
        v27 = *v10;
        v26 = v10[1];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          if (v27 == *v24 && v26 == v24[1])
          {
          }

          else
          {
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v29 & 1) == 0)
            {
              sub_101141B0C(v22);
LABEL_24:
              v35 = 0;
              return v35 & 1;
            }
          }

          sub_101141B0C(v22);
          v35 = 1;
          return v35 & 1;
        }

        goto LABEL_22;
      }

      sub_100817544(v22, v7);
      v33 = *v7;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v32 = sub_1006721D8(v33, *v24);
        goto LABEL_20;
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  v30 = v39;
  if (EnumCaseMultiPayload)
  {
    sub_100817544(v22, v16);
    v34 = *v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = sub_100672EC4(v34, *v24);
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  sub_100817544(v22, v19);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v30 + 8))(v19, v2);
LABEL_23:
    sub_10000CAAC(v22, &qword_101A2B3E0);
    goto LABEL_24;
  }

  (*(v30 + 32))(v4, v24, v2);
  v35 = static AttributedString.== infix(_:_:)();
  v37 = *(v30 + 8);
  v37(v4, v2);
  v37(v19, v2);
LABEL_21:
  sub_101141B0C(v22);
  return v35 & 1;
}

uint64_t type metadata accessor for TSContentLanguage.Models.Text()
{
  result = qword_101A2B378;
  if (!qword_101A2B378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_101141568()
{
  result = qword_101A2B2B8;
  if (!qword_101A2B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B2B8);
  }

  return result;
}

unint64_t sub_1011415BC()
{
  result = qword_101A2B2D0;
  if (!qword_101A2B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B2D0);
  }

  return result;
}

uint64_t sub_101141610(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10114168C()
{
  result = qword_101A2B2E0;
  if (!qword_101A2B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B2E0);
  }

  return result;
}

unint64_t sub_1011416E0()
{
  result = qword_101A2B2E8;
  if (!qword_101A2B2E8)
  {
    sub_1005C4E5C(&unk_1019F4D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B2E8);
  }

  return result;
}

uint64_t sub_10114175C(uint64_t a1)
{
  *(a1 + 8) = sub_10003EAF8(&qword_101A2B2F0, type metadata accessor for TSContentLanguage.Models.Text);
  result = sub_10003EAF8(&qword_101A2B2F8, type metadata accessor for TSContentLanguage.Models.Text);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1011417E0(void *a1)
{
  a1[2] = sub_10003EAF8(&qword_101A009C8, type metadata accessor for TSContentLanguage.Models.Text);
  a1[3] = sub_10003EAF8(&qword_101A00450, type metadata accessor for TSContentLanguage.Models.Text);
  result = sub_10003EAF8(&qword_101A2B300, type metadata accessor for TSContentLanguage.Models.Text);
  a1[4] = result;
  return result;
}

void sub_10114188C()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_10114195C(319, &qword_101A2B388);
    if (v1 <= 0x3F)
    {
      sub_10114195C(319, &qword_101A2B390);
      if (v2 <= 0x3F)
      {
        sub_10114195C(319, &unk_101A2B398);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10114195C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1011419BC()
{
  result = qword_101A2B3C8;
  if (!qword_101A2B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B3C8);
  }

  return result;
}

unint64_t sub_101141A14()
{
  result = qword_101A2B3D0;
  if (!qword_101A2B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B3D0);
  }

  return result;
}

unint64_t sub_101141A6C()
{
  result = qword_101A2B3D8;
  if (!qword_101A2B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B3D8);
  }

  return result;
}

unint64_t sub_101141AC0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018779D0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101141B0C(uint64_t a1)
{
  v2 = type metadata accessor for TSContentLanguage.Models.Text();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *TSContentLanguage.Models.ScaffoldShadow.version.unsafeMutableAddressor()
{
  if (qword_1019F28B8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ScaffoldShadow.version;
}

__n128 TSContentLanguage.Models.ScaffoldShadow.init(shadow:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 TSContentLanguage.Models.ScaffoldShadow.init<A>(object:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v12 = v15;
    v13 = v14;
    v10 = v17;
    v11 = v16;
    v8 = v19;
    v9 = v18;
    v6 = v20;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v6 = 4;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
  }

  (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v13;
  *(a3 + 16) = v12;
  *(a3 + 32) = v11;
  *(a3 + 48) = v10;
  result = v9;
  *(a3 + 64) = v9;
  *(a3 + 80) = v8;
  *(a3 + 96) = v6;
  return result;
}

uint64_t sub_101141D24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564695F65707974;
  v4 = 0xEF7265696669746ELL;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x776F64616873;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x776F64616873;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_101141E3C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101141EE8()
{
  String.hash(into:)();
}

Swift::Int sub_101141F80()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101142028@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101143384(*a1);
  *a2 = result;
  return result;
}

void sub_101142058(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x776F64616873;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1011420C0()
{
  v1 = 0x6564695F65707974;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x776F64616873;
  }
}

unint64_t sub_101142124@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101143384(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10114214C(uint64_t a1)
{
  v2 = sub_101143BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101142188(uint64_t a1)
{
  v2 = sub_101143BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.ScaffoldShadow.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1011433D0(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldShadow.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2B3E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = *(v3 + 48);
  if (v9 == 3)
  {
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    sub_10002A948(&v14, *(&v15 + 1));
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    return sub_100005070(&v14);
  }

  else
  {
    sub_100020E58(a1, a1[3]);
    sub_101143BB4();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v11 = v3[3];
    v16 = v3[2];
    v17 = v11;
    v12 = v3[5];
    v18 = v3[4];
    v19 = v12;
    v13 = v3[1];
    v14 = *v3;
    v15 = v13;
    v20 = v9;
    v21 = 0;
    sub_101143C08();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      LOBYTE(v14) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F28B8 != -1)
      {
        swift_once();
      }

      *&v14 = static TSContentLanguage.Models.ScaffoldShadow.version;
      v21 = 2;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v6 + 8))(v8, v5);
    }
  }
}

BOOL static TSContentLanguage.Models.ScaffoldShadow.__derived_enum_equals(_:_:)(__int128 *a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4 == 3)
  {
    return *(a2 + 96) == 3;
  }

  v19 = v2;
  v20 = v3;
  v6 = a1[3];
  v17[2] = a1[2];
  v17[3] = v6;
  v7 = a1[5];
  v17[4] = a1[4];
  v17[5] = v7;
  v8 = *a1;
  v9 = a1[1];
  v18 = v4;
  v10 = *(a2 + 96);
  v17[0] = v8;
  v17[1] = v9;
  if (v10 == 3)
  {
    v11 = 0;
  }

  else
  {
    v12 = *(a2 + 48);
    v15[2] = *(a2 + 32);
    v15[3] = v12;
    v13 = *(a2 + 80);
    v15[4] = *(a2 + 64);
    v15[5] = v13;
    v14 = *(a2 + 16);
    v15[0] = *a2;
    v15[1] = v14;
    v16 = v10;
    v11 = _s8Freeform17TSContentLanguageO6ModelsO14ScaffoldShadowO0eF4TypeV23__derived_struct_equalsySbAI_AItFZ_0(v17, v15);
  }

  return v11 & 1;
}

BOOL sub_1011425DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a2 + 96);
  if (v4 == 3)
  {
    return *(a2 + 96) == 3;
  }

  v18 = v2;
  v19 = v3;
  v7 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v7;
  v8 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v8;
  v9 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v9;
  v15 = v4;
  if (v5 == 3)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(a2 + 48);
    v16[2] = *(a2 + 32);
    v16[3] = v11;
    v12 = *(a2 + 80);
    v16[4] = *(a2 + 64);
    v16[5] = v12;
    v13 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v13;
    v17 = v5;
    v10 = _s8Freeform17TSContentLanguageO6ModelsO14ScaffoldShadowO0eF4TypeV23__derived_struct_equalsySbAI_AItFZ_0(v14, v16);
  }

  return v10 & 1;
}

uint64_t *TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.version.unsafeMutableAddressor()
{
  if (qword_1019F28C0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.version;
}

uint64_t TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.angle.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.offset.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.radius.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.opacity.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

__n128 TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.color.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.color.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  *(v1 + 96) = *(a1 + 32);
  return result;
}

__n128 TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.init(angle:offset:radius:opacity:color:enabled:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *&v12[7] = *a10;
  *&v12[23] = *(a10 + 16);
  result = *v12;
  *(a9 + 57) = *v12;
  v12[39] = *(a10 + 32);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 73) = *&v12[16];
  *(a9 + 89) = *&v12[32];
  *(a9 + 97) = a11;
  return result;
}

unint64_t sub_10114289C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101143C5C(*a1);
  *a2 = result;
  return result;
}

void sub_1011428CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C676E61;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564695F65707974;
  if (v2 != 6)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x726F6C6F63;
  if (v2 != 4)
  {
    v8 = 0x64656C62616E65;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x737569646172;
  if (v2 != 2)
  {
    v10 = 0x7974696361706FLL;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x74657366666FLL;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1011429C4()
{
  v1 = *v0;
  v2 = 0x656C676E61;
  v3 = 0x6564695F65707974;
  if (v1 != 6)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x726F6C6F63;
  if (v1 != 4)
  {
    v4 = 0x64656C62616E65;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x737569646172;
  if (v1 != 2)
  {
    v5 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v2 = 0x74657366666FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_101142AB8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101143C5C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_101142AE0(uint64_t a1)
{
  v2 = sub_101144268();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101142B1C(uint64_t a1)
{
  v2 = sub_101144268();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_101143CA8(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2B400);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101144268();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v13) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v13) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10 = *(v3 + 80);
  v13 = *(v3 + 64);
  v14 = v10;
  v15 = *(v3 + 96);
  v12 = 4;
  sub_100B64688();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v13) = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v13) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F28C0 != -1)
  {
    swift_once();
  }

  *&v13 = static TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.version;
  v12 = 7;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.isEquivalent(to:)(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a1 + 8) & 1) != 0 || !sub_1007C87EC(*v1, *a1))
  {
    return 0;
  }

  if (*(v1 + 24) == 1)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a1 + 24) & 1) != 0 || !sub_1007C87EC(*(v1 + 16), *(a1 + 16)))
  {
    return 0;
  }

  if (*(v1 + 40) == 1)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a1 + 40) & 1) != 0 || !sub_1007C87EC(*(v1 + 32), *(a1 + 32)))
  {
    return 0;
  }

  if (*(v1 + 56) == 1)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a1 + 56) & 1) != 0 || !sub_1007C87EC(*(v1 + 48), *(a1 + 48)))
  {
    return 0;
  }

  v3 = *(v1 + 96);
  v4 = *(a1 + 96);
  if (v3 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else
  {
    v5 = 0;
    if (v4 == 2 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v1 + 64), *(a1 + 64)), vceqq_f64(*(v1 + 80), *(a1 + 80))), xmmword_10148D100)) & 0xF) != 0)
    {
      return v5;
    }

    if (v3)
    {
      v7 = 1650946675;
    }

    else
    {
      v7 = 13168;
    }

    if (v3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    if (v4)
    {
      v9 = 1650946675;
    }

    else
    {
      v9 = 13168;
    }

    if (v4)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v7 == v9 && v8 == v10)
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
  }

  v12 = *(v1 + 97);
  v5 = v12 == 2;
  v13 = *(a1 + 97);
  if (v13 != 2)
  {
    v5 = 0;
  }

  if (v12 != 2)
  {
    v14 = v12 ^ v13 ^ 1;
    if (v13 != 2)
    {
      return v14;
    }
  }

  return v5;
}

uint64_t sub_101143114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s8Freeform17TSContentLanguageO6ModelsO14ScaffoldShadowO0eF4TypeV23__derived_struct_equalsySbAI_AItFZ_0(v11, v13) & 1;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO14ScaffoldShadowO0eF4TypeV23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 96);
  v4 = *(a2 + 96);
  if (v3 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (v4 == 2 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 64), *(a2 + 64)), vceqq_f64(*(a1 + 80), *(a2 + 80))), xmmword_10148D100)) & 0xF) != 0)
    {
      return v2;
    }

    v5 = a1;
    v6 = a2;
    if (v3)
    {
      v7 = 1650946675;
    }

    else
    {
      v7 = 13168;
    }

    if (v3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    if (v4)
    {
      v9 = 1650946675;
    }

    else
    {
      v9 = 13168;
    }

    if (v4)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v7 == v9 && v8 == v10)
    {

      a2 = v6;
      a1 = v5;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v6;
      a1 = v5;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + 97);
  v13 = *(a2 + 97);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_101143384(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877A98, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011433D0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for CodingUserInfoKey();
  *&v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A2B478);
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v10 = a1;
  sub_100020E58(a1, a1[3]);
  sub_101143BB4();
  v11 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    goto LABEL_11;
  }

  *&v38 = v6;
  v12 = v37;
  LOBYTE(v39) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v14)
  {
    if (v13 == 0xD00000000000002FLL && v14 == 0x800000010158A190)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v17[1] = 0;
        v17[2] = 0;
        *v17 = 0;
        swift_willThrow();
        (*(v12 + 8))(v9, v7);
        goto LABEL_11;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v46 = 2;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v39;
  if (!v39)
  {
LABEL_25:
    v29 = v10[3];
    *&v34 = v10[4];
    sub_100020E58(v10, v29);
    dispatch thunk of Decoder.userInfo.getter();
    v46 = 0;
    sub_10114458C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30[1] = 0;

    v20 = v45;
    if (v45 != 3)
    {
      v35 = v40;
      v38 = v39;
      v33 = v42;
      v34 = v41;
      v31 = v44;
      v32 = v43;
      (*(v12 + 8))(v9, v7);
      goto LABEL_16;
    }

    (*(v12 + 8))(v9, v7);
    goto LABEL_23;
  }

  if (qword_1019F28B8 != -1)
  {
    swift_once();
  }

  if (*(static TSContentLanguage.Models.ScaffoldShadow.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) >= *&v26[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
  {

    goto LABEL_25;
  }

  sub_1007C8648();
  swift_allocError();
  *v27 = xmmword_101463530;
  *(v27 + 16) = 0;
  swift_willThrow();

  (*(v12 + 8))(v9, v7);
LABEL_11:
  sub_100020E58(v10, v10[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100020E58(&v39, *(&v40 + 1));
  if (dispatch thunk of SingleValueDecodingContainer.decode(_:)() == 1701736302 && v18 == 0xE400000000000000)
  {

LABEL_15:
    sub_100005070(&v39);
    v38 = 0u;
    v20 = 3;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
LABEL_16:
    result = sub_100005070(v10);
    v22 = v36;
    v23 = v35;
    *v36 = v38;
    v22[1] = v23;
    v24 = v33;
    v22[2] = v34;
    v22[3] = v24;
    v25 = v31;
    v22[4] = v32;
    v22[5] = v25;
    *(v22 + 48) = v20;
    return result;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_15;
  }

  sub_100005070(&v39);
LABEL_23:
  sub_1007C8648();
  swift_allocError();
  *v28 = xmmword_101478600;
  *(v28 + 16) = 0;
  swift_willThrow();
  return sub_100005070(v10);
}

unint64_t sub_101143BB4()
{
  result = qword_101A2B3F0;
  if (!qword_101A2B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B3F0);
  }

  return result;
}

unint64_t sub_101143C08()
{
  result = qword_101A2B3F8;
  if (!qword_101A2B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B3F8);
  }

  return result;
}

unint64_t sub_101143C5C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877B00, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101143CA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A00800);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101144268();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v47) = 6;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD000000000000044 && v10 == 0x800000010158A1C0)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        swift_willThrow();
LABEL_11:
        (*(v6 + 8))(v8, v5);
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v55 = 7;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v47;
  if (v47)
  {
    if (qword_1019F28C0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v15[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v16 = xmmword_101463530;
      *(v16 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v17 = dispatch thunk of Decoder.userInfo.getter();
  v18 = sub_1007B9818(0, v17, 0, 0);
  v20 = v19;
  v46 = v18;

  v54 = v20 & 1;
  sub_100020E58(a1, a1[3]);
  v21 = dispatch thunk of Decoder.userInfo.getter();
  v22 = sub_1007B9818(1, v21, 0, 0);
  v24 = v23;
  v45 = v22;

  v51 = v24 & 1;
  sub_100020E58(a1, a1[3]);
  v25 = dispatch thunk of Decoder.userInfo.getter();
  v26 = sub_1007B9818(2, v25, 0, 0);
  v28 = v27;
  v44 = v26;

  v50 = v28 & 1;
  sub_100020E58(a1, a1[3]);
  v29 = dispatch thunk of Decoder.userInfo.getter();
  v30 = sub_1007B9818(3, v29, 0, 0);
  v32 = v31;
  v43 = v30;

  v49 = v32 & 1;
  sub_100020E58(a1, a1[3]);
  v33 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B9840(4, v33, 0, 0, v52);

  *&v48[7] = v52[0];
  *&v48[23] = v52[1];
  v48[39] = v53;
  sub_100020E58(a1, a1[3]);
  v34 = dispatch thunk of Decoder.userInfo.getter();
  v35 = sub_1007B9868(5, v34, 0, 0);
  (*(v6 + 8))(v8, v5);

  v36 = v54;
  v37 = v51;
  v38 = v50;
  v39 = v49;
  result = sub_100005070(a1);
  v40 = *&v48[16];
  *(a2 + 57) = *v48;
  v41 = v45;
  *a2 = v46;
  *(a2 + 8) = v36;
  *(a2 + 16) = v41;
  *(a2 + 24) = v37;
  v42 = v43;
  *(a2 + 32) = v44;
  *(a2 + 40) = v38;
  *(a2 + 48) = v42;
  *(a2 + 56) = v39;
  *(a2 + 73) = v40;
  *(a2 + 89) = *&v48[32];
  *(a2 + 97) = v35;
  return result;
}

unint64_t sub_101144268()
{
  result = qword_101A2B408;
  if (!qword_101A2B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B408);
  }

  return result;
}

unint64_t sub_1011442BC(uint64_t a1)
{
  *(a1 + 8) = sub_1011442EC();
  result = sub_101144340();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1011442EC()
{
  result = qword_101A2B410;
  if (!qword_101A2B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B410);
  }

  return result;
}

unint64_t sub_101144340()
{
  result = qword_101A2B418;
  if (!qword_101A2B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B418);
  }

  return result;
}

unint64_t sub_1011443D4()
{
  result = qword_101A2B420;
  if (!qword_101A2B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B420);
  }

  return result;
}

unint64_t sub_101144428()
{
  result = qword_101A2B428;
  if (!qword_101A2B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B428);
  }

  return result;
}

unint64_t sub_10114447C()
{
  result = qword_101A2B430;
  if (!qword_101A2B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B430);
  }

  return result;
}

unint64_t sub_1011444D0(uint64_t a1)
{
  result = sub_100B10398();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_101144538(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_10114458C()
{
  result = qword_101A2B438;
  if (!qword_101A2B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B438);
  }

  return result;
}

unint64_t sub_1011445E0()
{
  result = qword_101A2B440;
  if (!qword_101A2B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B440);
  }

  return result;
}

__n128 _s14ScaffoldShadowOwcp(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t _s14ScaffoldShadowOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 98))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 96);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  if (v6 + 1 >= 2)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t _s14ScaffoldShadowOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_101144708(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 <= 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = *(a1 + 96);
  }

  v3 = v2 - 2;
  if (v1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

double sub_101144728(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 - 254;
  }

  else if (a2)
  {
    *(a1 + 96) = a2 + 2;
  }

  return result;
}

uint64_t sub_10114477C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 98))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 96);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 96);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1011447D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_101144864()
{
  result = qword_101A2B448;
  if (!qword_101A2B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B448);
  }

  return result;
}

unint64_t sub_1011448BC()
{
  result = qword_101A2B450;
  if (!qword_101A2B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B450);
  }

  return result;
}

unint64_t sub_101144914()
{
  result = qword_101A2B458;
  if (!qword_101A2B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B458);
  }

  return result;
}

unint64_t sub_10114496C()
{
  result = qword_101A2B460;
  if (!qword_101A2B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B460);
  }

  return result;
}

unint64_t sub_1011449C4()
{
  result = qword_101A2B468;
  if (!qword_101A2B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B468);
  }

  return result;
}

unint64_t sub_101144A1C()
{
  result = qword_101A2B470;
  if (!qword_101A2B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B470);
  }

  return result;
}

id sub_101144AC0()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.ScaffoldLayoutStyle.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ScaffoldLayoutStyle.version.unsafeMutableAddressor()
{
  if (qword_1019F28C8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ScaffoldLayoutStyle.version;
}

id static TSContentLanguage.Models.ScaffoldLayoutStyle.version.getter()
{
  if (qword_1019F28C8 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.ScaffoldLayoutStyle.version;

  return v1;
}

uint64_t TSContentLanguage.Models.ScaffoldParagraphStyle.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TSContentLanguage.Models.ScaffoldParagraphStyle.parent.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TSContentLanguage.Models.ScaffoldParagraphStyle.parent.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_101144C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A00900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101144CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A00900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double TSContentLanguage.Models.ScaffoldLayoutStyle.init(name:identifier:parent:properties:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v18 = 0uLL;
  *&v19 = 0;
  *(&v19 + 1) = 768;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v23, 0, 29);
  *&v15 = a1;
  *(&v15 + 1) = a2;
  *&v16 = a3;
  *(&v16 + 1) = a4;
  *&v17 = a5;
  *(&v17 + 1) = a6;
  sub_101144CFC(a7, &v18);
  v30 = v21;
  v31 = v22;
  v32[0] = v23[0];
  *(v32 + 13) = *(v23 + 13);
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v24 = v15;
  v25 = v16;
  v33[6] = v21;
  v33[7] = v22;
  v34[0] = v23[0];
  *(v34 + 13) = *(v23 + 13);
  v33[2] = v17;
  v33[3] = v18;
  v33[4] = v19;
  v33[5] = v20;
  v33[0] = v15;
  v33[1] = v16;
  sub_101144E7C(&v24, &v14);
  sub_101144EB4(v33);
  v9 = v31;
  a8[6] = v30;
  a8[7] = v9;
  a8[8] = v32[0];
  *(a8 + 141) = *(v32 + 13);
  v10 = v27;
  a8[2] = v26;
  a8[3] = v10;
  v11 = v29;
  a8[4] = v28;
  a8[5] = v11;
  result = *&v24;
  v13 = v25;
  *a8 = v24;
  a8[1] = v13;
  return result;
}

uint64_t sub_101144EF8()
{
  String.hash(into:)();
}

unint64_t sub_101144FFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101145EA0(*a1);
  *a2 = result;
  return result;
}

void sub_10114502C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEA00000000007365;
  v6 = 0x69747265706F7270;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 4)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x696669746E656469;
  v10 = 0xEA00000000007265;
  if (v2 != 1)
  {
    v9 = 0x746E65726170;
    v10 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1011450F8()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x69747265706F7270;
  v4 = 0x6564695F65707974;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x746E65726170;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1011451C0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101145EA0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011451E8(uint64_t a1)
{
  v2 = sub_101146944();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101145224(uint64_t a1)
{
  v2 = sub_101146944();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.ScaffoldLayoutStyle.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_101145EEC(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    a2[6] = v9[6];
    a2[7] = v5;
    a2[8] = v10[0];
    *(a2 + 141) = *(v10 + 13);
    v6 = v9[3];
    a2[2] = v9[2];
    a2[3] = v6;
    v7 = v9[5];
    a2[4] = v9[4];
    a2[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldLayoutStyle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2B530);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  sub_100020E58(a1, a1[3]);
  sub_101146944();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v21) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v21) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10 = v3[6];
  v11 = v3[8];
  v30 = v3[7];
  v31[0] = v11;
  *(v31 + 13) = *(v3 + 141);
  v12 = v3[4];
  v27[0] = v3[3];
  v27[1] = v12;
  v13 = v3[6];
  v15 = v3[3];
  v14 = v3[4];
  v28 = v3[5];
  v29 = v13;
  v24 = v10;
  v25 = v30;
  v26[0] = v3[8];
  *(v26 + 13) = *(v3 + 141);
  v21 = v15;
  v22 = v14;
  v23 = v28;
  v20 = 3;
  sub_101144C84(v27, v18);
  sub_100B2BC70();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v18[4] = v25;
  *v19 = v26[0];
  *&v19[13] = *(v26 + 13);
  v18[0] = v21;
  v18[1] = v22;
  v18[2] = v23;
  v18[3] = v24;
  sub_10000CAAC(v18, &qword_101A00900);
  LOBYTE(v17) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F28C8 != -1)
  {
    swift_once();
  }

  v17 = static TSContentLanguage.Models.ScaffoldLayoutStyle.version;
  v16[7] = 5;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.ScaffoldLayoutStyle.isEquivalent(to:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 8);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_29;
    }

    if (*v1 != *a1 || v2 != v3)
    {
      v5 = a1;
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a1 = v5;
      if ((v6 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v3)
  {
    goto LABEL_29;
  }

  v7 = *(v1 + 24);
  v8 = *(a1 + 24);
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_29;
    }

    if (*(v1 + 16) != *(a1 + 16) || v7 != v8)
    {
      v9 = a1;
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a1 = v9;
      if ((v10 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_29;
  }

  v11 = *(v1 + 40);
  v12 = *(a1 + 40);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_24;
    }

LABEL_29:
    v25 = 0;
    return v25 & 1;
  }

  if (!v12)
  {
    goto LABEL_29;
  }

  if (*(v1 + 32) != *(a1 + 32) || v11 != v12)
  {
    v13 = a1;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a1 = v13;
    if ((v14 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_24:
  v15 = *(v1 + 128);
  v79 = *(v1 + 112);
  v80[0] = v15;
  *(v80 + 13) = *(v1 + 141);
  v16 = *(v1 + 64);
  v75 = *(v1 + 48);
  v76 = v16;
  v17 = *(v1 + 96);
  v77 = *(v1 + 80);
  v78 = v17;
  v18 = *(a1 + 64);
  v69 = *(a1 + 48);
  v70 = v18;
  v19 = *(a1 + 80);
  v20 = *(a1 + 96);
  *(v74 + 13) = *(a1 + 141);
  v21 = *(a1 + 128);
  v73 = *(a1 + 112);
  v74[0] = v21;
  v71 = v19;
  v72 = v20;
  v22 = *(&v76 + 1);
  *&v68[3] = v69;
  *&v68[19] = *(a1 + 64);
  if ((WORD4(v76) & 0xFF00) != 0x300)
  {
    v62 = *(v1 + 48);
    *&v63 = *(v1 + 64);
    *(&v63 + 1) = *(&v76 + 1);
    v26 = *(v1 + 128);
    v66 = *(v1 + 112);
    v67[0] = v26;
    *(v67 + 13) = *(v1 + 141);
    v27 = *(v1 + 96);
    v64 = *(v1 + 80);
    v65 = v27;
    if ((WORD4(v70) & 0xFF00) != 0x300)
    {
      v54 = v66;
      *v55 = v67[0];
      *&v55[13] = *(v67 + 13);
      v50 = v62;
      v51 = v63;
      v52 = v64;
      v53 = v65;
      v37 = *(a1 + 48);
      *&v38 = *(a1 + 64);
      *(&v38 + 1) = *(&v70 + 1);
      *&v42[13] = *(a1 + 141);
      v33 = *(a1 + 128);
      v41 = *(a1 + 112);
      *v42 = v33;
      v34 = *(a1 + 96);
      v39 = *(a1 + 80);
      v40 = v34;
      v81[2] = v39;
      v81[3] = v34;
      v81[0] = v37;
      v81[1] = v38;
      *(v82 + 13) = *&v42[13];
      v81[4] = v41;
      v82[0] = v33;
      sub_101144C84(&v75, &v43);
      sub_101144C84(&v69, &v43);
      sub_101144C84(&v62, &v43);
      v25 = TSContentLanguage.Models.LayoutProperties.isEquivalent(to:)(v81);
      sub_10000CAAC(&v37, &qword_101A00900);
      sub_10000CAAC(&v62, &qword_101A00900);
      v43 = *(v1 + 48);
      v44 = *(v1 + 64);
      v45 = v22;
      v35 = *(v1 + 128);
      v48 = *(v1 + 112);
      v49[0] = v35;
      *(v49 + 13) = *(v1 + 141);
      v36 = *(v1 + 96);
      v46 = *(v1 + 80);
      v47 = v36;
      sub_10000CAAC(&v43, &qword_101A00900);
      return v25 & 1;
    }

    goto LABEL_28;
  }

  if ((WORD4(v70) & 0xFF00) != 0x300)
  {
LABEL_28:
    v50 = *(v1 + 48);
    *&v51 = *(v1 + 64);
    *(&v51 + 1) = *(&v76 + 1);
    v28 = *(v1 + 128);
    v54 = *(v1 + 112);
    *v55 = v28;
    *&v55[13] = *(v1 + 141);
    v29 = *(v1 + 96);
    v52 = *(v1 + 80);
    v53 = v29;
    *&v56[11] = *&v68[11];
    *v56 = *v68;
    v57 = *(&v70 + 1);
    *(v61 + 13) = *(a1 + 141);
    v30 = *(a1 + 128);
    v60 = *(a1 + 112);
    v61[0] = v30;
    v31 = *(a1 + 96);
    v58 = *(a1 + 80);
    v59 = v31;
    sub_101144C84(&v75, v81);
    sub_101144C84(&v69, v81);
    sub_10000CAAC(&v50, &qword_101A00908);
    goto LABEL_29;
  }

  v50 = *(v1 + 48);
  *&v51 = *(v1 + 64);
  *(&v51 + 1) = *(&v76 + 1);
  v23 = *(v1 + 128);
  v54 = *(v1 + 112);
  *v55 = v23;
  *&v55[13] = *(v1 + 141);
  v24 = *(v1 + 96);
  v52 = *(v1 + 80);
  v53 = v24;
  sub_101144C84(&v75, v81);
  sub_101144C84(&v69, v81);
  sub_10000CAAC(&v50, &qword_101A00900);
  v25 = 1;
  return v25 & 1;
}

BOOL sub_101145A5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v12[0] = a1[8];
  *(v12 + 13) = *(a1 + 141);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v13[7] = v6;
  v14[0] = a2[8];
  *(v14 + 13) = *(a2 + 141);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return _s8Freeform17TSContentLanguageO6ModelsO19ScaffoldLayoutStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v11, v13);
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO19ScaffoldLayoutStyleV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || v15 != v16)
  {
    v17 = a1;
    v18 = a2;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v18;
    v20 = v19;
    a1 = v17;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  v21 = *(a1 + 128);
  v85 = *(a1 + 112);
  v86[0] = v21;
  *(v86 + 13) = *(a1 + 141);
  v22 = *(a1 + 64);
  v81 = *(a1 + 48);
  v82 = v22;
  v23 = *(a1 + 96);
  v83 = *(a1 + 80);
  v84 = v23;
  v24 = *(a2 + 64);
  v75 = *(a2 + 48);
  v76 = v24;
  v25 = *(a2 + 80);
  v26 = *(a2 + 96);
  *(v80 + 13) = *(a2 + 141);
  v27 = *(a2 + 128);
  v79 = *(a2 + 112);
  v80[0] = v27;
  v77 = v25;
  v78 = v26;
  v28 = *(&v82 + 1);
  *&v74[19] = *(a2 + 64);
  v29 = WORD4(v76) & 0xFF00;
  *&v74[3] = v75;
  if ((WORD4(v82) & 0xFF00) != 0x300)
  {
    if (v29 != 768)
    {
      v38 = *(a2 + 64);
      v49 = *(a2 + 48);
      *&v50 = v38;
      *(&v50 + 1) = *(&v76 + 1);
      *&v54[13] = *(a2 + 141);
      v39 = *(a2 + 128);
      v53 = *(a2 + 112);
      *v54 = v39;
      v40 = *(a2 + 96);
      v51 = *(a2 + 80);
      v52 = v40;
      v62 = v49;
      v63 = v50;
      *&v67[13] = *&v54[13];
      v66 = v53;
      *v67 = *v54;
      v64 = v51;
      v65 = v40;
      v41 = *(a1 + 64);
      v87 = *(a1 + 48);
      v42 = *(a1 + 80);
      v43 = *(a1 + 96);
      v44 = *(a1 + 112);
      v45 = *(a1 + 128);
      *&v93[13] = *(a1 + 141);
      v92 = v44;
      *v93 = v45;
      v90 = v42;
      v91 = v43;
      v88 = v41;
      v89 = *(&v82 + 1);
      v46 = a1;
      sub_101144C84(&v81, &v55);
      sub_101144C84(&v75, &v55);
      v32 = _s8Freeform17TSContentLanguageO6ModelsO16LayoutPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v87, &v62);
      sub_10000CAAC(&v49, &qword_101A00900);
      v55 = *(v46 + 48);
      v56 = *(v46 + 64);
      v57 = v28;
      v47 = *(v46 + 128);
      v60 = *(v46 + 112);
      v61[0] = v47;
      *(v61 + 13) = *(v46 + 141);
      v48 = *(v46 + 96);
      v58 = *(v46 + 80);
      v59 = v48;
      sub_10000CAAC(&v55, &qword_101A00900);
      return v32;
    }

    goto LABEL_29;
  }

  if (v29 != 768)
  {
LABEL_29:
    v62 = *(a1 + 48);
    *&v63 = *(a1 + 64);
    *(&v63 + 1) = *(&v82 + 1);
    v34 = *(a1 + 128);
    v66 = *(a1 + 112);
    *v67 = v34;
    *&v67[13] = *(a1 + 141);
    v35 = *(a1 + 96);
    v64 = *(a1 + 80);
    v65 = v35;
    *&v68[11] = *&v74[11];
    *v68 = *v74;
    v69 = *(&v76 + 1);
    *(v73 + 13) = *(a2 + 141);
    v36 = *(a2 + 128);
    v72 = *(a2 + 112);
    v73[0] = v36;
    v37 = *(a2 + 96);
    v70 = *(a2 + 80);
    v71 = v37;
    sub_101144C84(&v81, &v87);
    sub_101144C84(&v75, &v87);
    sub_10000CAAC(&v62, &qword_101A00908);
    return 0;
  }

  v62 = *(a1 + 48);
  *&v63 = *(a1 + 64);
  *(&v63 + 1) = *(&v82 + 1);
  v30 = *(a1 + 128);
  v66 = *(a1 + 112);
  *v67 = v30;
  *&v67[13] = *(a1 + 141);
  v31 = *(a1 + 96);
  v64 = *(a1 + 80);
  v65 = v31;
  sub_101144C84(&v81, &v87);
  sub_101144C84(&v75, &v87);
  sub_10000CAAC(&v62, &qword_101A00900);
  return 1;
}

unint64_t sub_101145EA0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877BE0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101145EEC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v57 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for CodingUserInfoKey();
  v55 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A007F8);
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = a1[3];
  v82 = a1;
  sub_100020E58(a1, v12);
  sub_101146944();
  v13 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    v18 = v82;
LABEL_4:
    sub_100005070(v18);
    v74 = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    *&v78 = 0;
    *(&v78 + 1) = 768;
    memset(v79, 0, sizeof(v79));
    v80 = 0u;
    memset(v81, 0, 29);
    return sub_101144EB4(&v74);
  }

  v54 = v5;
  v58 = v8;
  v14 = v57;
  LOBYTE(v74) = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v11;
  if (v16)
  {
    if (v15 == 0xD000000000000035 && v16 == 0x800000010158ACB0)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v22[1] = 0;
        v22[2] = 0;
        *v22 = 0;
        swift_willThrow();
LABEL_14:
        (*(v56 + 8))(v17, v9);
        v18 = v82;
        goto LABEL_4;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v65) = 5;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v74;
  if (v74)
  {
    if (qword_1019F28C8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ScaffoldLayoutStyle.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v23[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v24 = xmmword_101463530;
      *(v24 + 16) = 0;
      swift_willThrow();

      goto LABEL_14;
    }
  }

  sub_100020E58(v82, v82[3]);
  v25 = dispatch thunk of Decoder.userInfo.getter();
  *&v53 = sub_1007B9890(0, v25, 0, 0);
  *(&v53 + 1) = v26;

  sub_100020E58(v82, v82[3]);
  v27 = dispatch thunk of Decoder.userInfo.getter();
  *&v52 = sub_1007B9890(1, v27, 0, 0);
  *(&v52 + 1) = v28;

  sub_100020E58(v82, v82[3]);
  v29 = dispatch thunk of Decoder.userInfo.getter();
  *&v51 = sub_1007B9890(2, v29, 0, 0);
  *(&v51 + 1) = v30;

  sub_100020E58(v82, v82[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v73 = 3;
  sub_100B2BB74();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE9(v75) << 8 == 768)
  {

    (*(v56 + 8))(v17, v9);
    v69 = v78;
    v70[0] = v79[0];
    *(v70 + 13) = *(v79 + 13);
    v65 = v74;
    v66 = v75;
    v67 = v76;
    v68 = v77;
    sub_10000CAAC(&v65, &qword_101A00900);
    v31 = 0;
    v40 = 0;
    v41 = 0;
    v58 = 0;
    v54 = 0;
    v55 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 768;
  }

  else
  {

    v41 = *(&v74 + 1);
    v31 = v74;
    v58 = v75;
    v54 = *(&v76 + 1);
    v55 = v76;
    v49 = *(&v77 + 1);
    v50 = v77;
    v47 = *(&v78 + 1);
    v48 = v78;
    v46 = *&v79[0];
    v44 = *(&v75 + 1);
    v45 = *(&v79[0] + 1);
    v43 = *&v79[1];
    v40 = DWORD2(v79[1]) | (BYTE12(v79[1]) << 32);
    (*(v56 + 8))(v17, v9);
  }

  v56 = v31;
  memset(v59, 0, sizeof(v59));
  v60 = 768;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  memset(v64, 0, sizeof(v64));
  sub_10000CAAC(v59, &qword_101A00900);
  v32 = v53;
  v65 = v53;
  v33 = v52;
  v66 = v52;
  v67 = v51;
  v34 = v41;
  *&v68 = v31;
  *(&v68 + 1) = v41;
  *&v69 = v58;
  *(&v69 + 1) = v44;
  *&v70[0] = v55;
  *(&v70[0] + 1) = v54;
  *&v70[1] = v50;
  *(&v70[1] + 1) = v49;
  *&v71 = v48;
  *(&v71 + 1) = v47;
  *v72 = v46;
  *&v72[8] = v45;
  *&v72[16] = v43;
  v35 = v40;
  v42 = HIDWORD(v40);
  v72[28] = BYTE4(v40);
  *&v72[24] = v40;
  sub_101144E7C(&v65, &v74);
  sub_100005070(v82);
  v74 = v32;
  v75 = v33;
  v76 = v51;
  *&v77 = v56;
  *(&v77 + 1) = v34;
  *&v78 = v58;
  *(&v78 + 1) = v44;
  *&v79[0] = v55;
  *(&v79[0] + 1) = v54;
  *&v79[1] = v50;
  *(&v79[1] + 1) = v49;
  *&v80 = v48;
  *(&v80 + 1) = v47;
  *&v81[0] = v46;
  *(&v81[0] + 1) = v45;
  *&v81[1] = v43;
  BYTE12(v81[1]) = v42;
  DWORD2(v81[1]) = v35;
  result = sub_101144EB4(&v74);
  v36 = v71;
  v14[6] = v70[1];
  v14[7] = v36;
  v14[8] = *v72;
  *(v14 + 141) = *&v72[13];
  v37 = v68;
  v14[2] = v67;
  v14[3] = v37;
  v38 = v70[0];
  v14[4] = v69;
  v14[5] = v38;
  v39 = v66;
  *v14 = v65;
  v14[1] = v39;
  return result;
}

unint64_t sub_101146944()
{
  result = qword_101A2B538;
  if (!qword_101A2B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B538);
  }

  return result;
}

unint64_t sub_101146998(uint64_t a1)
{
  result = sub_100B0F5D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011469C0(void *a1)
{
  a1[2] = sub_1011469F8();
  a1[3] = sub_101146A4C();
  result = sub_101146AA0();
  a1[4] = result;
  return result;
}

unint64_t sub_1011469F8()
{
  result = qword_101A2B540;
  if (!qword_101A2B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B540);
  }

  return result;
}

unint64_t sub_101146A4C()
{
  result = qword_101A2B548;
  if (!qword_101A2B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B548);
  }

  return result;
}

unint64_t sub_101146AA0()
{
  result = qword_101A2B550;
  if (!qword_101A2B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B550);
  }

  return result;
}

uint64_t sub_101146AF4(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_101146B10(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101146B24(uint64_t a1)
{
  v1 = *(a1 + 25);
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_101146B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 141) = *(a2 + 141);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_101146B88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 157))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_101146BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 156) = 0;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 157) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 157) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_101146C88()
{
  result = qword_101A2B558;
  if (!qword_101A2B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B558);
  }

  return result;
}

unint64_t sub_101146CE0()
{
  result = qword_101A2B560;
  if (!qword_101A2B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B560);
  }

  return result;
}

unint64_t sub_101146D38()
{
  result = qword_101A2B568;
  if (!qword_101A2B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B568);
  }

  return result;
}

id sub_101146DB4()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.TextRun.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.TextRun.version.unsafeMutableAddressor()
{
  if (qword_1019F28D0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.TextRun.version;
}

id static TSContentLanguage.Models.TextRun.version.getter()
{
  if (qword_1019F28D0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.TextRun.version;

  return v1;
}

uint64_t sub_101146EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6F18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *TSContentLanguage.Models.TextRun.init(string:style:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1005BC664(__src);
  memcpy(&v11[2], __src, 0x3ADuLL);
  v11[0] = v6;
  v11[1] = v4;
  sub_101146EE8(v2, &v11[2]);
  memcpy(__dst, v11, 0x3BDuLL);
  memcpy(v14, v11, 0x3BDuLL);
  sub_10067EF38(__dst, &v10);
  sub_10067EF94(v14);
  return memcpy(v8, __dst, 0x3BDuLL);
}

Swift::Int sub_101147038()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101147100()
{
  String.hash(into:)();
}

Swift::Int sub_1011471B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101147278@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101147D14(*a1);
  *a2 = result;
  return result;
}

void sub_1011472A8(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x676E69727473;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C797473;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10114732C()
{
  v1 = 0x676E69727473;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x656C797473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1011473AC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101147D14(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011473D4(uint64_t a1)
{
  v2 = sub_101148598();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101147410(uint64_t a1)
{
  v2 = sub_101148598();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.TextRun.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_101147D60(a1);
  if (!v2)
  {
    return memcpy(a2, v5, 0x3BDuLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.TextRun.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2B570);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_100020E58(a1, a1[3]);
  sub_101148598();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[0] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    memcpy(v13, (v3 + 16), 0x3ADuLL);
    memcpy(v12, (v3 + 16), sizeof(v12));
    v13[967] = 1;
    sub_100B698C4(v13, v11);
    sub_1011485EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    memcpy(v11, v12, 0x3ADuLL);
    sub_10000CAAC(v11, &qword_1019F6F18);
    LOBYTE(v10) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F28D0 != -1)
    {
      swift_once();
    }

    v10 = static TSContentLanguage.Models.TextRun.version;
    v13[966] = 3;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.TextRun.isEquivalent(to:)(void *a1)
{
  v3 = *v1 == *a1 && v1[1] == a1[1];
  if (v3 || (v4 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 = 0, (v4 & 1) != 0))
  {
    memcpy(__dst, v1 + 2, sizeof(__dst));
    memcpy(v7, a1 + 2, 0x3ADuLL);
    v5 = sub_1007C5004(v7);
  }

  return v5 & 1;
}

uint64_t sub_101147804(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x3BDuLL);
  memcpy(__dst, a2, sizeof(__dst));
  return _s8Freeform17TSContentLanguageO6ModelsO7TextRunV23__derived_struct_equalsySbAG_AGtFZ_0(v4) & 1;
}

uint64_t sub_10114785C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  memcpy(v10, a1 + 2, 0x3ADuLL);
  v4 = *v1;
  v5 = v1[1];
  memcpy(__dst, v1 + 2, sizeof(__dst));
  v6 = v4 == v2 && v5 == v3;
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), v8 = 0, (v7 & 1) != 0))
  {
    v8 = sub_1007C5004(v10);
  }

  return v8 & 1;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO7TextRunV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v5 = *v1 == *v2 && v1[1] == v2[1];
  if (v5 || (v6 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v6 & 1) != 0))
  {
    memcpy(v32, v4 + 2, 0x3ADuLL);
    memcpy(v31, v3 + 2, 0x3ADuLL);
    memcpy(v29, v4 + 2, 0x3ADuLL);
    memcpy(&v29[944], v3 + 2, 0x3ADuLL);
    memcpy(v30, v4 + 2, 0x3ADuLL);
    if (sub_10067EF0C(v30) == 1)
    {
      memcpy(__dst, v3 + 2, 0x3ADuLL);
      if (sub_10067EF0C(__dst) == 1)
      {
        memcpy(v27, v4 + 2, 0x3ADuLL);
        sub_100B698C4(v32, v26);
        sub_100B698C4(v31, v26);
        v8 = v27;
LABEL_22:
        sub_10000CAAC(v8, &qword_1019F6F18);
        return 1;
      }

      goto LABEL_10;
    }

    memcpy(__dst, v3 + 2, 0x3ADuLL);
    if (sub_10067EF0C(__dst) == 1)
    {
LABEL_10:
      memcpy(__dst, v29, 0x75DuLL);
      sub_100B698C4(v32, v27);
      sub_100B698C4(v31, v27);
      v9 = &unk_1019F6F20;
      v10 = __dst;
LABEL_25:
      sub_10000CAAC(v10, v9);
      return 0;
    }

    memcpy(v26, v3 + 2, 0x3ADuLL);
    memcpy(v27, v4 + 2, 0x3ADuLL);
    v11 = sub_10067EF20(v27);
    if (v11)
    {
      if (v11 == 1)
      {
        v14 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v27, *&v12);
        memcpy(v33, v14, 0x3ACuLL);
        memcpy(v25, v3 + 2, 0x3ADuLL);
        if (sub_10067EF20(v25) == 1)
        {
          v17 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, *&v15);
          memcpy(v34, v17, sizeof(v34));
          sub_100B698C4(v32, &v24);
          sub_100B698C4(v31, &v24);
          v18 = _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldCharacterStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v33);
          goto LABEL_17;
        }
      }

      else
      {
        memcpy(v25, v3 + 2, 0x3ADuLL);
        if (sub_10067EF20(v25) == 2)
        {
          sub_100B698C4(v32, &v24);
          sub_100B698C4(v31, &v24);
          goto LABEL_21;
        }
      }
    }

    else
    {
      v19 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v27, *&v12);
      memcpy(v33, v19, 0x37CuLL);
      memcpy(v25, v3 + 2, 0x3ADuLL);
      if (!sub_10067EF20(v25))
      {
        v22 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, *&v20);
        memcpy(v34, v22, 0x37CuLL);
        sub_100B698C4(v32, &v24);
        sub_100B698C4(v31, &v24);
        v18 = _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v33);
LABEL_17:
        v23 = v18;
        sub_10000CAAC(v26, &qword_1019F6F18);
        if (!v23)
        {
          goto LABEL_24;
        }

LABEL_21:
        memcpy(v25, v29, 0x3ADuLL);
        v8 = v25;
        goto LABEL_22;
      }
    }

    sub_100B698C4(v32, &v24);
    sub_100B698C4(v31, &v24);
    sub_10000CAAC(v26, &qword_1019F6F18);
LABEL_24:
    memcpy(v25, v29, 0x3ADuLL);
    v9 = &qword_1019F6F18;
    v10 = v25;
    goto LABEL_25;
  }

  return result;
}

unint64_t sub_101147D14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877C90, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_101147D60(uint64_t a1)
{
  __chkstk_darwin(a1);
  v44 = v1;
  v3 = v2;
  v40 = v4;
  v5 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v5 - 8);
  v41 = &v36 - v6;
  v7 = type metadata accessor for CodingUserInfoKey();
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_101A007F0);
  v43 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  sub_1005BC664(v50);
  memcpy(v49, v50, sizeof(v49));
  v13 = v3;
  sub_100020E58(v3, v3[3]);
  sub_101148598();
  v14 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    v15 = v3;
LABEL_13:
    sub_100005070(v15);
    memcpy(v47, v49, 0x3ADuLL);
    return sub_10000CAAC(v47, &qword_1019F6F18);
  }

  v44 = v9;
  v16 = v43;
  LOBYTE(v47[0]) = 2;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v10;
  v39 = v12;
  v20 = v16;
  v21 = v3;
  if (v18)
  {
    if (v17 == 0xD000000000000028 && v18 == 0x800000010158A390)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v24[1] = 0;
        v24[2] = 0;
        *v24 = 0;
        swift_willThrow();
        (*(v20 + 8))(v39, v19);
LABEL_12:
        v15 = v13;
        goto LABEL_13;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v46[0]) = 3;
  sub_100969804(&qword_101A00400);
  v25 = v39;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v47[0];
  if (v47[0])
  {
    if (qword_1019F28D0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.TextRun.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v27[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v28 = xmmword_101463530;
      *(v28 + 16) = 0;
      swift_willThrow();

      (*(v20 + 8))(v25, v19);
      goto LABEL_12;
    }

    v38 = v19;
  }

  else
  {
    v38 = v19;
  }

  sub_100020E58(v13, v13[3]);
  v29 = dispatch thunk of Decoder.userInfo.getter();
  v36 = sub_1007C1378(0, v29, 0, 0, 0, 0);
  v37 = v30;

  sub_100020E58(v13, *(v21 + 24));
  dispatch thunk of Decoder.userInfo.getter();
  v50[967] = 1;
  sub_101148A38();
  v31 = v38;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(v46, v47, 0x3ADuLL);
  v32 = (v20 + 8);
  if (sub_10067EF0C(v46) == 1)
  {

    (*v32)(v39, v31);
    memcpy(v45, v47, 0x3ADuLL);
    sub_10000CAAC(v45, &qword_1019F6F18);
    memcpy(v48, v50, sizeof(v48));
  }

  else
  {

    memcpy(v48, v47, sizeof(v48));
    (*v32)(v39, v31);
  }

  v33 = v40;
  memcpy(v45, v49, 0x3ADuLL);
  sub_10000CAAC(v45, &qword_1019F6F18);
  v35 = v36;
  v34 = v37;
  v46[0] = v36;
  v46[1] = v37;
  memcpy(&v46[2], v48, 0x3ADuLL);
  sub_10067EF38(v46, v47);
  sub_100005070(v21);
  v47[0] = v35;
  v47[1] = v34;
  memcpy(&v47[2], v48, 0x3ADuLL);
  sub_10067EF94(v47);
  return memcpy(v33, v46, 0x3BDuLL);
}

unint64_t sub_101148598()
{
  result = qword_101A2B578;
  if (!qword_101A2B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B578);
  }

  return result;
}

unint64_t sub_1011485EC()
{
  result = qword_101A2B580;
  if (!qword_101A2B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B580);
  }

  return result;
}

unint64_t sub_101148640(uint64_t a1)
{
  result = sub_100B1014C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_101148668(void *a1)
{
  a1[2] = sub_1007CE65C();
  a1[3] = sub_1011415BC();
  result = sub_1011486A0();
  a1[4] = result;
  return result;
}

unint64_t sub_1011486A0()
{
  result = qword_101A2B588;
  if (!qword_101A2B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B588);
  }

  return result;
}

uint64_t sub_1011486F4(uint64_t a1)
{
  v1 = *(a1 + 312) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_101148710(uint64_t a1)
{
  if ((*(a1 + 112) >> 1) > 0x80000000)
  {
    return -(*(a1 + 112) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101148728(uint64_t a1)
{
  v1 = *(a1 + 168) >> 1;
  v2 = -2 - v1;
  if (-2 - v1 < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101148750(uint64_t a1)
{
  if ((*(a1 + 940) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 940) & 3;
  }
}

uint64_t sub_10114876C(uint64_t a1)
{
  v1 = *(a1 + 940);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101148788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 957))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1011487D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 956) = 0;
    *(result + 952) = 0;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 957) = 1;
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

    *(result + 957) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_101148934()
{
  result = qword_101A2B590;
  if (!qword_101A2B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B590);
  }

  return result;
}

unint64_t sub_10114898C()
{
  result = qword_101A2B598;
  if (!qword_101A2B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B598);
  }

  return result;
}

unint64_t sub_1011489E4()
{
  result = qword_101A2B5A0;
  if (!qword_101A2B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B5A0);
  }

  return result;
}

unint64_t sub_101148A38()
{
  result = qword_101A2B5A8;
  if (!qword_101A2B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B5A8);
  }

  return result;
}

id sub_101148AB4()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.ListStyleType.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ListStyleType.version.unsafeMutableAddressor()
{
  if (qword_1019F28D8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ListStyleType.version;
}

id static TSContentLanguage.Models.ListStyleType.version.getter()
{
  if (qword_1019F28D8 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.ListStyleType.version;

  return v1;
}

__n128 TSContentLanguage.Models.ListStyleType.init(marks:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v23 = a1[8];
  v24 = v3;
  v25 = a1[10];
  v4 = a1[5];
  v19 = a1[4];
  v20 = v4;
  v5 = a1[7];
  v21 = a1[6];
  v22 = v5;
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  v7 = a1[3];
  v17 = a1[2];
  v18 = v7;
  sub_101148C74(&v15);
  v8 = v28;
  *(a2 + 192) = v27;
  *(a2 + 208) = v8;
  *(a2 + 224) = v29;
  v9 = v24;
  *(a2 + 128) = v23;
  *(a2 + 144) = v9;
  v10 = v26;
  *(a2 + 160) = v25;
  *(a2 + 176) = v10;
  v11 = v20;
  *(a2 + 64) = v19;
  *(a2 + 80) = v11;
  v12 = v22;
  *(a2 + 96) = v21;
  *(a2 + 112) = v12;
  v13 = v16;
  *a2 = v15;
  *(a2 + 16) = v13;
  result = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = result;
  return result;
}

__n128 TSContentLanguage.Models.ListStyleType.init(style:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[11];
  v27 = a1[10];
  v28 = v3;
  v4 = a1[13];
  v29 = a1[12];
  v30 = v4;
  v5 = a1[7];
  v23 = a1[6];
  v24 = v5;
  v6 = a1[9];
  v25 = a1[8];
  v26 = v6;
  v7 = a1[3];
  v19 = a1[2];
  v20 = v7;
  v8 = a1[5];
  v21 = a1[4];
  v22 = v8;
  v9 = a1[1];
  v17 = *a1;
  v18 = v9;
  sub_101148D24(&v17);
  v10 = v30;
  a2[12] = v29;
  a2[13] = v10;
  a2[14].n128_u8[0] = v31;
  v11 = v26;
  a2[8] = v25;
  a2[9] = v11;
  v12 = v28;
  a2[10] = v27;
  a2[11] = v12;
  v13 = v22;
  a2[4] = v21;
  a2[5] = v13;
  v14 = v24;
  a2[6] = v23;
  a2[7] = v14;
  v15 = v18;
  *a2 = v17;
  a2[1] = v15;
  result = v20;
  a2[2] = v19;
  a2[3] = result;
  return result;
}