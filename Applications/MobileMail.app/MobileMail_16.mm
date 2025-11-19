unint64_t sub_1003C1CBC()
{
  v2 = qword_1006DAFE0;
  if (!qword_1006DAFE0)
  {
    sub_10025CAA4(&qword_1006DAFD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAFE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003C1D44(uint64_t a1)
{
  v169 = a1;
  v150 = sub_1003C3178;
  v151 = sub_10026EE84;
  v152 = sub_10026434C;
  v153 = sub_10026434C;
  v154 = sub_10026EF2C;
  v155 = sub_10035728C;
  v156 = sub_10026EE84;
  v157 = sub_10026434C;
  v158 = sub_10026434C;
  v159 = sub_10026EF2C;
  v201 = 0;
  v200 = 0;
  v199 = 0;
  v170 = v198;
  v198[0] = 0;
  v198[1] = 0;
  v193 = 0;
  v194 = 0;
  v191 = 0;
  v192 = 0;
  v185 = 0;
  v179 = 0;
  v176 = 0;
  v160 = 0;
  v161 = type metadata accessor for Logger();
  v162 = *(v161 - 8);
  v163 = v161 - 8;
  v165 = *(v162 + 64);
  v164 = (v165 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(0);
  v166 = &v41 - v164;
  v167 = v164;
  __chkstk_darwin(v2);
  v168 = &v41 - v167;
  v201 = v3;
  v200 = v1;
  v199 = _allocateUninitializedArray<A>(_:)();

  v197 = v169;
  v171 = sub_10025C9B0(&unk_1006D69B0);
  sub_1002B76F0();
  Collection<>.makeIterator()();
  for (i = v172; ; i = v146)
  {
    v146 = i;
    sub_10025C9B0(&qword_1006D7F98);
    IndexingIterator.next()();
    v147 = v195;
    v148 = v196;
    if (!v196)
    {
      sub_100264880();
      v41 = &v199;
      v42 = v199;

      sub_100264880();
      return v42;
    }

    v144 = v147;
    v145 = v148;
    v140 = v148;
    v139 = v147;
    v193 = v147;
    v194 = v148;

    v191 = v139;
    v192 = v140;
    v141 = sub_1003B1410(v139, v140);
    v142 = v139;
    v143 = v140;
    if (!v141)
    {
      break;
    }

    v138 = v141;
    v135 = v141;
    v185 = v141;
    _objc_retain(v149);
    v136 = [v149 dataSource];
    _objc_release(v149);
    v137 = [v136 messageListItemForItemID:v135];
    _objc_release(v136);
    if (v137)
    {
      v134 = v137;
      v131 = v137;
      v132 = [v137 resultIfAvailable];
      _objc_release(v131);
      v133 = v132;
    }

    else
    {
      v133 = 0;
    }

    v130 = v133;
    if (v133)
    {
      v129 = v130;
      v127 = v130;
      v176 = v130;
      swift_unknownObjectRetain();
      v128 = v202;
      sub_1003AFE00(v127, 0, 0, 0, 0, v202);
      memcpy(__dst, v128, sizeof(__dst));
      if (__dst[1])
      {
        v126 = v207;
        v124 = 56;
        memcpy(v207, __dst, sizeof(v207));
        sub_1003B1AB0(v207, v175);
        v125 = v174;
        memcpy(v174, v126, v124);
        sub_10025C9B0(&unk_1006DABC8);
        Array.append(_:)();
        sub_1003AF6BC();
        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      swift_unknownObjectRelease();
    }

    v119 = [v149 conversationViewController];
    v120 = [v119 referenceMessageListItem];
    v121 = v119;
    v122 = v135;
    v123 = v140;
    if (!v120)
    {
      v115 = v123;
      v114 = v122;
      _objc_release(v121);
      v116 = v114;
      v117 = v115;
LABEL_20:
      v4 = v168;
      v85 = v117;
      v86 = v116;
      v5 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v162 + 16))(v4, v5, v161);
      swift_unknownObjectRetain();
      v89 = 7;
      v90 = swift_allocObject();
      *(v90 + 16) = v86;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();
      v87 = 17;
      v92 = swift_allocObject();
      *(v92 + 16) = 32;
      v93 = swift_allocObject();
      *(v93 + 16) = 8;
      v88 = 32;
      v6 = swift_allocObject();
      v7 = v90;
      v91 = v6;
      *(v6 + 16) = v150;
      *(v6 + 24) = v7;
      v8 = swift_allocObject();
      v9 = v91;
      v95 = v8;
      *(v8 + 16) = v151;
      *(v8 + 24) = v9;
      v97 = sub_10025C9B0(&unk_1006D7720);
      v94 = _allocateUninitializedArray<A>(_:)();
      v96 = v10;

      v11 = v92;
      v12 = v96;
      *v96 = v152;
      v12[1] = v11;

      v13 = v93;
      v14 = v96;
      v96[2] = v153;
      v14[3] = v13;

      v15 = v95;
      v16 = v96;
      v96[4] = v154;
      v16[5] = v15;
      sub_1002612B0();

      if (os_log_type_enabled(v98, v99))
      {
        v78 = static UnsafeMutablePointer.allocate(capacity:)();
        v77 = sub_10025C9B0(&qword_1006D7290);
        v79 = sub_1002641E8(0);
        v80 = sub_1002641E8(1);
        v81 = &v184;
        v184 = v78;
        v82 = &v183;
        v183 = v79;
        v83 = &v182;
        v182 = v80;
        sub_10026423C(2, &v184);
        sub_10026423C(1, v81);
        v17 = v146;
        v180 = v152;
        v181 = v92;
        sub_100264250(&v180, v81, v82, v83);
        v84 = v17;
        if (v17)
        {

          __break(1u);
        }

        else
        {
          v180 = v153;
          v181 = v93;
          sub_100264250(&v180, &v184, &v183, &v182);
          v75 = 0;
          v180 = v154;
          v181 = v95;
          sub_100264250(&v180, &v184, &v183, &v182);
          _os_log_impl(&_mh_execute_header, v98, v99, "Failed to find match message with identifier %s", v78, 0xCu);
          sub_10026429C(v79);
          sub_10026429C(v80);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v98);
      (*(v162 + 8))(v168, v161);
      v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to match identifier for message", 0x26uLL, 1);
      sub_100367A00();
      v73 = swift_allocError();
      v19 = v18;
      object = v72._object;
      *v19 = v72._countAndFlagsBits;
      v19[1] = object;
      swift_willThrow();
      swift_unknownObjectRelease();

      sub_100264880();
      sub_100264880();
      v74 = v73;
      return v76;
    }

    v118 = v120;
    v109 = v120;
    v179 = v120;
    _objc_release(v119);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v108 = [v109 itemID];
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_getObjectType();
    v110 = [v108 isEqual:v135];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v111 = v109;
    v112 = v135;
    v113 = v140;
    if ((v110 & 1) == 0)
    {
      v101 = v113;
      v100 = v112;
      swift_unknownObjectRelease();
      v116 = v100;
      v117 = v101;
      goto LABEL_20;
    }

    swift_unknownObjectRetain();
    v104 = v203;
    sub_1003AFE00(v109, 0, 0, 0, 0, v203);
    memcpy(__src, v104, sizeof(__src));
    v105 = v109;
    v106 = v135;
    v107 = v140;
    if (!__src[1])
    {
      v103 = v107;
      v102 = v106;
      swift_unknownObjectRelease();
      v116 = v102;
      v117 = v103;
      goto LABEL_20;
    }

    v71 = v205;
    v69 = 56;
    memcpy(v205, __src, sizeof(v205));
    sub_1003B1AB0(v205, v178);
    v70 = v177;
    memcpy(v177, v71, v69);
    sub_10025C9B0(&unk_1006DABC8);
    Array.append(_:)();
    sub_1003AF6BC();
    swift_unknownObjectRelease();
LABEL_27:
    swift_unknownObjectRelease();
  }

  v21 = v166;
  v55 = v143;
  v54 = v142;
  v22 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v162 + 16))(v21, v22, v161);

  v57 = 32;
  v58 = 7;
  v23 = swift_allocObject();
  v24 = v55;
  v59 = v23;
  *(v23 + 16) = v54;
  *(v23 + 24) = v24;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  v56 = 17;
  v61 = swift_allocObject();
  *(v61 + 16) = 32;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v25 = swift_allocObject();
  v26 = v59;
  v60 = v25;
  *(v25 + 16) = v155;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v60;
  v64 = v27;
  *(v27 + 16) = v156;
  *(v27 + 24) = v28;
  v66 = sub_10025C9B0(&unk_1006D7720);
  v63 = _allocateUninitializedArray<A>(_:)();
  v65 = v29;

  v30 = v61;
  v31 = v65;
  *v65 = v157;
  v31[1] = v30;

  v32 = v62;
  v33 = v65;
  v65[2] = v158;
  v33[3] = v32;

  v34 = v64;
  v35 = v65;
  v65[4] = v159;
  v35[5] = v34;
  sub_1002612B0();

  if (os_log_type_enabled(v67, v68))
  {
    v47 = static UnsafeMutablePointer.allocate(capacity:)();
    v46 = sub_10025C9B0(&qword_1006D7290);
    v48 = sub_1002641E8(0);
    v49 = sub_1002641E8(1);
    v50 = &v190;
    v190 = v47;
    v51 = &v189;
    v189 = v48;
    v52 = &v188;
    v188 = v49;
    sub_10026423C(2, &v190);
    sub_10026423C(1, v50);
    v36 = v146;
    v186 = v157;
    v187 = v61;
    sub_100264250(&v186, v50, v51, v52);
    v53 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v186 = v158;
      v187 = v62;
      sub_100264250(&v186, &v190, &v189, &v188);
      v45 = 0;
      v186 = v159;
      v187 = v64;
      sub_100264250(&v186, &v190, &v189, &v188);
      _os_log_impl(&_mh_execute_header, v67, v68, "Attempted to match message with invalid identifier %s", v47, 0xCu);
      sub_10026429C(v48);
      sub_10026429C(v49);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v67);
  (*(v162 + 8))(v166, v161);
  v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Received invalid identifier type for message", 0x2CuLL, 1);
  sub_100367A00();
  v44 = swift_allocError();
  v38 = v37;
  v39 = v43._object;
  *v38 = v43._countAndFlagsBits;
  v38[1] = v39;
  swift_willThrow();

  sub_100264880();
  sub_100264880();
  v74 = v44;
  return v76;
}

uint64_t sub_1003C2EC0()
{
  swift_unknownObjectRetain();
  sub_10025C9B0(&qword_1006DB000);
  return String.init<A>(describing:)();
}

uint64_t sub_1003C2F14()
{
  sub_10025C9B0(&unk_1006DABC8);
  sub_10025C9B0(&qword_1006DB000);
  sub_1003C3180();
  Sequence.compactMap<A>(_:)();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deleteMessagesWithItemIDs:isa];
  _objc_release(isa);
}

id sub_1003C3034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v5 = [v3 itemID];
  swift_unknownObjectRelease();
  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1003C30B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1003C1054(a1, a2);
  if (v2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1003C3114(uint64_t a1)
{
  v4 = sub_1003C1D44(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1003C3180()
{
  v2 = qword_1006DB008;
  if (!qword_1006DB008)
  {
    sub_10025CAA4(&unk_1006DABC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB008);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003C3208()
{
  v42 = 0;
  v50 = 0;
  v29 = 0;
  v30 = (*(*(sub_10025C9B0(&qword_1006D7ED8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v31 = &v12 - v30;
  v39 = type metadata accessor for Logger();
  v33 = v39;
  v34 = *(v39 - 8);
  v38 = v34;
  v35 = v34;
  v36 = *(v34 + 64);
  __chkstk_darwin(v39 - 8);
  v0 = &v12 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v0;
  v50 = v1;
  v2 = Logger.tipsLogger.unsafeMutableAddressor();
  (*(v38 + 16))(v0, v2, v39);
  v44 = Logger.logObject.getter();
  v40 = v44;
  v43 = static os_log_type_t.info.getter();
  v41 = v43;
  sub_10025C9B0(&unk_1006D7720);
  v45 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v44, v43))
  {
    v3 = v29;
    v20 = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = v20;
    v17 = sub_10025C9B0(&qword_1006D7290);
    v18 = 0;
    v21 = sub_1002641E8(0);
    v19 = v21;
    v22 = sub_1002641E8(v18);
    v49 = v20;
    v48 = v21;
    v47 = v22;
    v23 = 0;
    v24 = &v49;
    sub_10026423C(0, &v49);
    sub_10026423C(v23, v24);
    v46 = v45;
    v25 = &v12;
    __chkstk_darwin(&v12);
    v26 = &v12 - 6;
    *(&v12 - 4) = v4;
    *(&v12 - 3) = &v48;
    *(&v12 - 2) = &v47;
    v27 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v28 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v40, v41, "setting up MiniTipPopoverViewController observer", v16, 2u);
      v14 = 0;
      sub_10026429C(v19);
      sub_10026429C(v22);
      UnsafeMutablePointer.deallocate()();

      v15 = v28;
    }
  }

  else
  {

    v15 = v29;
  }

  (*(v35 + 8))(v37, v33);
  v12 = 0;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v31, 1);
  v6 = v32;
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = v32;
  v9 = v12;
  v10 = v31;
  v7[2] = v13;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v8;
  sub_1002C7DB4(v9, v9, v10, &unk_1005090F8, v7, &type metadata for () + 8);
}

uint64_t sub_1003C370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 128) = 0;
  *(v4 + 40) = sub_10025C9B0(&qword_1006DB010);
  *(v4 + 48) = swift_task_alloc();
  v5 = sub_10025C9B0(&qword_1006DB018);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 24) = a4;
  *(v4 + 80) = type metadata accessor for MainActor();
  *(v4 + 88) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 96) = v9;
  *(v4 + 104) = v6;

  return _swift_task_switch(sub_1003C3898, v9);
}

uint64_t sub_1003C3898()
{
  *(v0 + 16) = v0;
  if ([objc_opt_self() preferenceEnabled:32])
  {
    sub_1003C3F4C();

    v1 = *(v7[2] + 8);

    return v1();
  }

  else
  {
    v5 = *sub_1003A2834();
    _objc_retain(v5);
    sub_1003A29F8();
    _objc_release(v5);
    sub_1003A3248();
    Tip.shouldDisplayUpdates.getter();
    AsyncMapSequence.makeAsyncIterator()();
    v6 = static MainActor.shared.getter();
    v7[14] = v6;
    v3 = swift_task_alloc();
    v7[15] = v3;
    *v3 = v7[2];
    v3[1] = sub_1003C3AC4;
    v4 = v7[7];

    return __ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKF(v7 + 129, v6, &protocol witness table for MainActor, v4);
  }
}

uint64_t sub_1003C3AC4()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v3 = *(v6 + 80);
    v4 = sub_1003C3E64;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v6 + 80);
    v4 = sub_1003C3C40;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1003C3C40()
{
  *(v0 + 16) = v0;
  v7 = *(v0 + 129);
  if (v7 == 2)
  {
    (*(*(v6 + 64) + 8))(*(v6 + 72), *(v6 + 56));

    v1 = *(*(v6 + 16) + 8);

    return v1();
  }

  else
  {
    *(v6 + 128) = v7 & 1;
    if (v7)
    {
      sub_1003C3F4C();
    }

    else
    {
      [*(v6 + 32) dismissTip];
    }

    v5 = static MainActor.shared.getter();
    *(v6 + 112) = v5;
    v3 = swift_task_alloc();
    *(v6 + 120) = v3;
    *v3 = *(v6 + 16);
    v3[1] = sub_1003C3AC4;
    v4 = *(v6 + 56);

    return (__ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKF)(v6 + 129, v5, &protocol witness table for MainActor, v4);
  }
}

uint64_t sub_1003C3E74(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_1003C370C(a1, v6, v7, v8);
}

uint64_t sub_1003C3F4C()
{
  v367 = 0;
  v411 = 0;
  v343 = 0;
  v400 = 0;
  v395 = 0;
  v389 = 0;
  v381 = 0;
  v380 = 0.0;
  v379 = 0.0;
  v378 = 0.0;
  v362 = type metadata accessor for Logger();
  v345 = v362;
  v346 = *(v362 - 8);
  v361 = v346;
  v347 = v346;
  v357 = *(v346 + 64);
  __chkstk_darwin(v362 - 8);
  v359 = (v357 + 15) & 0xFFFFFFFFFFFFFFF0;
  v348 = v51 - v359;
  __chkstk_darwin(v51 - v359);
  v349 = v51 - v359;
  __chkstk_darwin(v51 - v359);
  v350 = v51 - v359;
  __chkstk_darwin(v51 - v359);
  v351 = v51 - v359;
  __chkstk_darwin(v51 - v359);
  v352 = v51 - v359;
  __chkstk_darwin(v51 - v359);
  v353 = v51 - v359;
  __chkstk_darwin(v51 - v359);
  v354 = v51 - v359;
  __chkstk_darwin(v51 - v359);
  v355 = v51 - v359;
  __chkstk_darwin(v51 - v359);
  v356 = v51 - v359;
  __chkstk_darwin(v51 - v359);
  v358 = v51 - v359;
  __chkstk_darwin(v51 - v359);
  v0 = v51 - v359;
  v360 = v51 - v359;
  v411 = v1;
  v2 = Logger.tipsLogger.unsafeMutableAddressor();
  v363 = *(v361 + 16);
  v364 = (v361 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v363(v0, v2, v362);
  v370 = Logger.logObject.getter();
  v365 = v370;
  v369 = static os_log_type_t.info.getter();
  v366 = v369;
  v368 = sub_10025C9B0(&unk_1006D7720);
  v371 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v370, v369))
  {
    v3 = v343;
    v334 = static UnsafeMutablePointer.allocate(capacity:)();
    v330 = v334;
    v331 = sub_10025C9B0(&qword_1006D7290);
    v332 = 0;
    v335 = sub_1002641E8(0);
    v333 = v335;
    v336 = sub_1002641E8(v332);
    v375[0] = v334;
    v374 = v335;
    v373 = v336;
    v337 = 0;
    v338 = v375;
    sub_10026423C(0, v375);
    sub_10026423C(v337, v338);
    v372 = v371;
    v339 = v51;
    __chkstk_darwin(v51);
    v340 = &v51[-6];
    v341 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v342 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v365, v366, "presenting MiniTipPopoverViewController", v330, 2u);
      v328 = 0;
      sub_10026429C(v333);
      sub_10026429C(v336);
      UnsafeMutablePointer.deallocate()();

      v329 = v342;
    }
  }

  else
  {

    v329 = v343;
  }

  v325 = v329;

  v326 = *(v347 + 8);
  v327 = (v347 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v326(v360, v345);
  v410 = [v344 tipPopoverController];
  v324 = v410 == 0;
  v323 = v324;
  sub_10026A58C(&v410);
  if (v323)
  {
    v4 = v344;
    v321 = [v344 mailboxes];
    v318 = sub_1003655EC();
    v320 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v408[1] = v320;
    v319 = sub_10025C9B0(&qword_1006D9D90);
    sub_1003A0290();
    v322 = Collection.isEmpty.getter();

    if (v322)
    {
      v44 = v349;
      v45 = Logger.tipsLogger.unsafeMutableAddressor();
      v363(v44, v45, v345);
      v90 = Logger.logObject.getter();
      v87 = v90;
      v89 = static os_log_type_t.error.getter();
      v88 = v89;
      v91 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v90, v89))
      {
        v46 = v325;
        v78 = static UnsafeMutablePointer.allocate(capacity:)();
        v74 = v78;
        v75 = sub_10025C9B0(&qword_1006D7290);
        v76 = 0;
        v79 = sub_1002641E8(0);
        v77 = v79;
        v80 = sub_1002641E8(v76);
        v408[0] = v78;
        v407[3] = v79;
        v407[2] = v80;
        v81 = 0;
        v82 = v408;
        sub_10026423C(0, v408);
        sub_10026423C(v81, v82);
        v407[1] = v91;
        v83 = v51;
        __chkstk_darwin(v51);
        v84 = &v51[-6];
        v85 = sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        v86 = v46;
        if (v46)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v87, v88, "No mailboxes. Skip showing MiniTipPopoverViewController", v74, 2u);
          v72 = 0;
          sub_10026429C(v77);
          sub_10026429C(v80);
          UnsafeMutablePointer.deallocate()();

          v73 = v86;
        }
      }

      else
      {

        v73 = v325;
      }

      v71 = v73;

      v326(v349, v345);
      return v71;
    }

    else
    {
      v5 = v344;
      v317 = [v344 presentedViewController];

      v407[0] = v317;
      v316 = v317 == 0;
      v315 = v316;
      sub_10026A58C(v407);
      if (v315)
      {
        if ([v344 isFilterButtonAvailable])
        {
          v314 = [v344 filterButtonItem];
          if (v314)
          {
            v313 = v314;
            v310 = v314;
            v400 = v314;
            v6 = v344;
            v312 = [v344 navigationController];
            v311 = v312;

            if (v312)
            {
              v309 = v311;
              v306 = v311;
              v308 = [v311 toolbar];
              v307 = v308;

              if (v308)
              {
                v305 = v307;
              }

              else
              {
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              v303 = v305;
              v304 = [v305 items];
              if (v304)
              {
                v302 = v304;
                v299 = v304;
                v298 = sub_100295C30();
                v300 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v301 = v300;
              }

              else
              {
                v301 = 0;
              }

              v296 = v301;

              v297 = v296;
            }

            else
            {
              v297 = 0;
            }

            v295 = v297;
            if (v297)
            {
              v294 = v295;
              v291 = v295;
              v395 = v295;
              v394[2] = v295;
              v394[1] = v310;
              v292 = sub_10025C9B0(&qword_1006D7790);
              v293 = sub_1002A748C();
              sub_1002A7384();
              if (Sequence<>.contains(_:)())
              {
                v7 = v344;
                v290 = [v344 viewIfLoaded];
                if (v290)
                {
                  v289 = v290;
                  v288 = v290;
                  v389 = v290;

                  v388 = [v288 window];
                  v287 = v388 != 0;
                  v286 = v287;
                  sub_10026A58C(&v388);
                  if (v286)
                  {
                    v284 = 0;
                    v277 = type metadata accessor for TipUIPopoverViewController();
                    v278 = *sub_1003A2834();
                    v8 = v278;
                    sub_1003A29F8();
                    v382 = &unk_100659DC0;
                    v383 = sub_1003A3248();

                    v9 = v288;
                    sub_1003C66D4();
                    v279 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
                    v381 = v279;
                    width = UILayoutFittingCompressedSize.width;
                    height = UILayoutFittingCompressedSize.height;
                    v379 = UILayoutFittingCompressedSize.width;
                    v380 = height;
                    v10 = v344;
                    v282 = [v344 traitCollection];

                    v283 = [v282 horizontalSizeClass];
                    v377[4] = v283;
                    v377[3] = 1;
                    v285 = type metadata accessor for UIUserInterfaceSizeClass();
                    sub_100268354();
                    if (== infix<A>(_:_:)())
                    {
                      [v288 bounds];
                      v375[4] = v11;
                      v375[3] = v12;
                      v375[2] = v13;
                      v375[1] = v14;
                      v378 = sub_1003C66F0(*&v14, *&v13, *&v12, *&v11);
                      v276 = v378;
                    }

                    else
                    {
                      v378 = width;
                      v276 = width;
                    }

                    v15 = v358;
                    v270 = v276;
                    v16 = v279;
                    v377[1] = *&v270;
                    v377[2] = *&height;
                    [v279 setPreferredContentSize:{v270, height}];

                    v17 = Logger.tipsLogger.unsafeMutableAddressor();
                    v363(v15, v17, v345);
                    v274 = Logger.logObject.getter();
                    v271 = v274;
                    v273 = static os_log_type_t.default.getter();
                    v272 = v273;
                    v275 = _allocateUninitializedArray<A>(_:)();
                    if (os_log_type_enabled(v274, v273))
                    {
                      v18 = v325;
                      v261 = static UnsafeMutablePointer.allocate(capacity:)();
                      v257 = v261;
                      v258 = sub_10025C9B0(&qword_1006D7290);
                      v259 = 0;
                      v262 = sub_1002641E8(0);
                      v260 = v262;
                      v263 = sub_1002641E8(v259);
                      v376 = v261;
                      v375[7] = v262;
                      v375[6] = v263;
                      v264 = 0;
                      v265 = &v376;
                      sub_10026423C(0, &v376);
                      sub_10026423C(v264, v265);
                      v375[5] = v275;
                      v266 = v51;
                      __chkstk_darwin(v51);
                      v267 = &v51[-6];
                      v268 = sub_10025C9B0(&qword_1006D72C0);
                      sub_10026E6E0();
                      Sequence.forEach(_:)();
                      v269 = v18;
                      if (v18)
                      {
                        __break(1u);
                      }

                      else
                      {
                        _os_log_impl(&_mh_execute_header, v271, v272, "Will show MiniTipPopoverViewController", v257, 2u);
                        v255 = 0;
                        sub_10026429C(v260);
                        sub_10026429C(v263);
                        UnsafeMutablePointer.deallocate()();

                        v256 = v269;
                      }
                    }

                    else
                    {

                      v256 = v325;
                    }

                    v253 = v256;

                    v326(v358, v345);
                    v254 = TipUIPopoverViewController.popoverPresentationController.getter();
                    if (v254)
                    {
                      v252 = v254;
                      v251 = v254;
                      [v254 setPermittedArrowDirections:2];
                    }

                    v250 = TipUIPopoverViewController.popoverPresentationController.getter();
                    if (v250)
                    {
                      v249 = v250;
                      v248 = v250;
                      v19 = v310;
                      [v248 setSourceItem:v310];
                      swift_unknownObjectRelease();
                    }

                    v377[0] = [v344 scene];
                    if (v377[0])
                    {
                      v246 = v377[0];
                      v20 = v377[0];
                      sub_10026A58C(v377);
                      v247 = [v246 dockContainer];

                      [v247 presentViewController:v279 animated:1 completion:0];
                    }

                    else
                    {
                      sub_10026A58C(v377);
                    }

                    v245 = TipUIPopoverViewController.popoverPresentationController.getter();
                    if (v245)
                    {
                      v244 = v245;
                      v243 = v245;
                      v21 = v288;
                      v241 = sub_1003C6730(v288);

                      v240 = sub_1002AA63C();
                      isa = Array._bridgeToObjectiveC()().super.isa;

                      [v243 setPassthroughViews:isa];
                    }

                    v22 = v279;
                    [v344 setTipPopoverController:v279];

                    return v253;
                  }

                  else
                  {
                    v23 = v356;
                    v24 = Logger.tipsLogger.unsafeMutableAddressor();
                    v363(v23, v24, v345);
                    v237 = Logger.logObject.getter();
                    v234 = v237;
                    v236 = static os_log_type_t.error.getter();
                    v235 = v236;
                    v238 = _allocateUninitializedArray<A>(_:)();
                    if (os_log_type_enabled(v237, v236))
                    {
                      v25 = v325;
                      v225 = static UnsafeMutablePointer.allocate(capacity:)();
                      v221 = v225;
                      v222 = sub_10025C9B0(&qword_1006D7290);
                      v223 = 0;
                      v226 = sub_1002641E8(0);
                      v224 = v226;
                      v227 = sub_1002641E8(v223);
                      v387 = v225;
                      v386 = v226;
                      v385 = v227;
                      v228 = 0;
                      v229 = &v387;
                      sub_10026423C(0, &v387);
                      sub_10026423C(v228, v229);
                      v384 = v238;
                      v230 = v51;
                      __chkstk_darwin(v51);
                      v231 = &v51[-6];
                      v232 = sub_10025C9B0(&qword_1006D72C0);
                      sub_10026E6E0();
                      Sequence.forEach(_:)();
                      v233 = v25;
                      if (v25)
                      {
                        __break(1u);
                      }

                      else
                      {
                        _os_log_impl(&_mh_execute_header, v234, v235, "View controller's view is not in a window. Skip initialization", v221, 2u);
                        v219 = 0;
                        sub_10026429C(v224);
                        sub_10026429C(v227);
                        UnsafeMutablePointer.deallocate()();

                        v220 = v233;
                      }
                    }

                    else
                    {

                      v220 = v325;
                    }

                    v218 = v220;

                    v326(v356, v345);

                    return v218;
                  }
                }

                else
                {
                  v26 = v355;

                  v27 = Logger.tipsLogger.unsafeMutableAddressor();
                  v363(v26, v27, v345);
                  v216 = Logger.logObject.getter();
                  v213 = v216;
                  v215 = static os_log_type_t.error.getter();
                  v214 = v215;
                  v217 = _allocateUninitializedArray<A>(_:)();
                  if (os_log_type_enabled(v216, v215))
                  {
                    v28 = v325;
                    v204 = static UnsafeMutablePointer.allocate(capacity:)();
                    v200 = v204;
                    v201 = sub_10025C9B0(&qword_1006D7290);
                    v202 = 0;
                    v205 = sub_1002641E8(0);
                    v203 = v205;
                    v206 = sub_1002641E8(v202);
                    v393[0] = v204;
                    v392 = v205;
                    v391 = v206;
                    v207 = 0;
                    v208 = v393;
                    sub_10026423C(0, v393);
                    sub_10026423C(v207, v208);
                    v390 = v217;
                    v209 = v51;
                    __chkstk_darwin(v51);
                    v210 = &v51[-6];
                    v211 = sub_10025C9B0(&qword_1006D72C0);
                    sub_10026E6E0();
                    Sequence.forEach(_:)();
                    v212 = v28;
                    if (v28)
                    {
                      __break(1u);
                    }

                    else
                    {
                      _os_log_impl(&_mh_execute_header, v213, v214, "No source view available to initialize MiniTipPopoverViewController. Skip initialization", v200, 2u);
                      v198 = 0;
                      sub_10026429C(v203);
                      sub_10026429C(v206);
                      UnsafeMutablePointer.deallocate()();

                      v199 = v212;
                    }
                  }

                  else
                  {

                    v199 = v325;
                  }

                  v197 = v199;

                  v326(v355, v345);

                  return v197;
                }
              }

              else
              {
                v29 = v354;
                v30 = Logger.tipsLogger.unsafeMutableAddressor();
                v363(v29, v30, v345);
                v195 = Logger.logObject.getter();
                v192 = v195;
                v194 = static os_log_type_t.error.getter();
                v193 = v194;
                v196 = _allocateUninitializedArray<A>(_:)();
                if (os_log_type_enabled(v195, v194))
                {
                  v31 = v325;
                  v183 = static UnsafeMutablePointer.allocate(capacity:)();
                  v179 = v183;
                  v180 = sub_10025C9B0(&qword_1006D7290);
                  v181 = 0;
                  v184 = sub_1002641E8(0);
                  v182 = v184;
                  v185 = sub_1002641E8(v181);
                  v394[0] = v183;
                  v393[3] = v184;
                  v393[2] = v185;
                  v186 = 0;
                  v187 = v394;
                  sub_10026423C(0, v394);
                  sub_10026423C(v186, v187);
                  v393[1] = v196;
                  v188 = v51;
                  __chkstk_darwin(v51);
                  v189 = &v51[-6];
                  v190 = sub_10025C9B0(&qword_1006D72C0);
                  sub_10026E6E0();
                  Sequence.forEach(_:)();
                  v191 = v31;
                  if (v31)
                  {
                    __break(1u);
                  }

                  else
                  {
                    _os_log_impl(&_mh_execute_header, v192, v193, "Filter button isn't in view hierarchy. Skip showing MiniTipPopoverViewController", v179, 2u);
                    v177 = 0;
                    sub_10026429C(v182);
                    sub_10026429C(v185);
                    UnsafeMutablePointer.deallocate()();

                    v178 = v191;
                  }
                }

                else
                {

                  v178 = v325;
                }

                v176 = v178;

                v326(v354, v345);

                return v176;
              }
            }

            else
            {
              v32 = v353;
              v33 = Logger.tipsLogger.unsafeMutableAddressor();
              v363(v32, v33, v345);
              v174 = Logger.logObject.getter();
              v171 = v174;
              v173 = static os_log_type_t.error.getter();
              v172 = v173;
              v175 = _allocateUninitializedArray<A>(_:)();
              if (os_log_type_enabled(v174, v173))
              {
                v34 = v325;
                v162 = static UnsafeMutablePointer.allocate(capacity:)();
                v158 = v162;
                v159 = sub_10025C9B0(&qword_1006D7290);
                v160 = 0;
                v163 = sub_1002641E8(0);
                v161 = v163;
                v164 = sub_1002641E8(v160);
                v399 = v162;
                v398 = v163;
                v397 = v164;
                v165 = 0;
                v166 = &v399;
                sub_10026423C(0, &v399);
                sub_10026423C(v165, v166);
                v396 = v175;
                v167 = v51;
                __chkstk_darwin(v51);
                v168 = &v51[-6];
                v169 = sub_10025C9B0(&qword_1006D72C0);
                sub_10026E6E0();
                Sequence.forEach(_:)();
                v170 = v34;
                if (v34)
                {
                  __break(1u);
                }

                else
                {
                  _os_log_impl(&_mh_execute_header, v171, v172, "No buttons currently in toolbar. Skip showing MiniTipPopoverViewController", v158, 2u);
                  v156 = 0;
                  sub_10026429C(v161);
                  sub_10026429C(v164);
                  UnsafeMutablePointer.deallocate()();

                  v157 = v170;
                }
              }

              else
              {

                v157 = v325;
              }

              v155 = v157;

              v326(v353, v345);
              return v155;
            }
          }

          else
          {
            v35 = v352;
            v36 = Logger.tipsLogger.unsafeMutableAddressor();
            v363(v35, v36, v345);
            v153 = Logger.logObject.getter();
            v150 = v153;
            v152 = static os_log_type_t.error.getter();
            v151 = v152;
            v154 = _allocateUninitializedArray<A>(_:)();
            if (os_log_type_enabled(v153, v152))
            {
              v37 = v325;
              v141 = static UnsafeMutablePointer.allocate(capacity:)();
              v137 = v141;
              v138 = sub_10025C9B0(&qword_1006D7290);
              v139 = 0;
              v142 = sub_1002641E8(0);
              v140 = v142;
              v143 = sub_1002641E8(v139);
              v404[0] = v141;
              v403 = v142;
              v402 = v143;
              v144 = 0;
              v145 = v404;
              sub_10026423C(0, v404);
              sub_10026423C(v144, v145);
              v401 = v154;
              v146 = v51;
              __chkstk_darwin(v51);
              v147 = &v51[-6];
              v148 = sub_10025C9B0(&qword_1006D72C0);
              sub_10026E6E0();
              Sequence.forEach(_:)();
              v149 = v37;
              if (v37)
              {
                __break(1u);
              }

              else
              {
                _os_log_impl(&_mh_execute_header, v150, v151, "Trying to present a MiniTipPopoverViewController without a valid source item", v137, 2u);
                v135 = 0;
                sub_10026429C(v140);
                sub_10026429C(v143);
                UnsafeMutablePointer.deallocate()();

                v136 = v149;
              }
            }

            else
            {

              v136 = v325;
            }

            v134 = v136;

            v326(v352, v345);
            return v134;
          }
        }

        else
        {
          v38 = v351;
          v39 = Logger.tipsLogger.unsafeMutableAddressor();
          v363(v38, v39, v345);
          v132 = Logger.logObject.getter();
          v129 = v132;
          v131 = static os_log_type_t.error.getter();
          v130 = v131;
          v133 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v132, v131))
          {
            v40 = v325;
            v120 = static UnsafeMutablePointer.allocate(capacity:)();
            v116 = v120;
            v117 = sub_10025C9B0(&qword_1006D7290);
            v118 = 0;
            v121 = sub_1002641E8(0);
            v119 = v121;
            v122 = sub_1002641E8(v118);
            v405[0] = v120;
            v404[3] = v121;
            v404[2] = v122;
            v123 = 0;
            v124 = v405;
            sub_10026423C(0, v405);
            sub_10026423C(v123, v124);
            v404[1] = v133;
            v125 = v51;
            __chkstk_darwin(v51);
            v126 = &v51[-6];
            v127 = sub_10025C9B0(&qword_1006D72C0);
            sub_10026E6E0();
            Sequence.forEach(_:)();
            v128 = v40;
            if (v40)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&_mh_execute_header, v129, v130, "Filter button isn't available. Skip showing MiniTipPopoverViewController", v116, 2u);
              v114 = 0;
              sub_10026429C(v119);
              sub_10026429C(v122);
              UnsafeMutablePointer.deallocate()();

              v115 = v128;
            }
          }

          else
          {

            v115 = v325;
          }

          v113 = v115;

          v326(v351, v345);
          return v113;
        }
      }

      else
      {
        v41 = v350;
        v42 = Logger.tipsLogger.unsafeMutableAddressor();
        v363(v41, v42, v345);
        v111 = Logger.logObject.getter();
        v108 = v111;
        v110 = static os_log_type_t.error.getter();
        v109 = v110;
        v112 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v111, v110))
        {
          v43 = v325;
          v99 = static UnsafeMutablePointer.allocate(capacity:)();
          v95 = v99;
          v96 = sub_10025C9B0(&qword_1006D7290);
          v97 = 0;
          v100 = sub_1002641E8(0);
          v98 = v100;
          v101 = sub_1002641E8(v97);
          v406 = v99;
          v405[3] = v100;
          v405[2] = v101;
          v102 = 0;
          v103 = &v406;
          sub_10026423C(0, &v406);
          sub_10026423C(v102, v103);
          v405[1] = v112;
          v104 = v51;
          __chkstk_darwin(v51);
          v105 = &v51[-6];
          v106 = sub_10025C9B0(&qword_1006D72C0);
          sub_10026E6E0();
          Sequence.forEach(_:)();
          v107 = v43;
          if (v43)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&_mh_execute_header, v108, v109, "Trying to present more than one MiniTipPopoverViewController", v95, 2u);
            v93 = 0;
            sub_10026429C(v98);
            sub_10026429C(v101);
            UnsafeMutablePointer.deallocate()();

            v94 = v107;
          }
        }

        else
        {

          v94 = v325;
        }

        v92 = v94;

        v326(v350, v345);
        return v92;
      }
    }
  }

  else
  {
    v47 = v348;
    v48 = Logger.tipsLogger.unsafeMutableAddressor();
    v363(v47, v48, v345);
    v69 = Logger.logObject.getter();
    v66 = v69;
    v68 = static os_log_type_t.error.getter();
    v67 = v68;
    v70 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v69, v68))
    {
      v49 = v325;
      v57 = static UnsafeMutablePointer.allocate(capacity:)();
      v53 = v57;
      v54 = sub_10025C9B0(&qword_1006D7290);
      v55 = 0;
      v58 = sub_1002641E8(0);
      v56 = v58;
      v59 = sub_1002641E8(v55);
      v409 = v57;
      v408[5] = v58;
      v408[4] = v59;
      v60 = 0;
      v61 = &v409;
      sub_10026423C(0, &v409);
      sub_10026423C(v60, v61);
      v408[3] = v70;
      v62 = v51;
      __chkstk_darwin(v51);
      v63 = &v51[-6];
      v64 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v65 = v49;
      if (v49)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v66, v67, "Trying to present more than one MiniTipPopoverViewController", v53, 2u);
        v51[1] = 0;
        sub_10026429C(v56);
        sub_10026429C(v59);
        UnsafeMutablePointer.deallocate()();

        v52 = v65;
      }
    }

    else
    {

      v52 = v325;
    }

    v51[0] = v52;

    v326(v348, v345);
    return v51[0];
  }
}

uint64_t sub_1003C6730(void *a1)
{
  _objc_retain(a1);
  if (!a1)
  {
    sub_1002AA63C();
    return _allocateUninitializedArray<A>(_:)();
  }

  v10 = [a1 superview];
  if (!v10)
  {
    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  if (ObjectType == sub_1003C6E30())
  {
    _objc_release(v10);
LABEL_6:
    sub_1002AA63C();
    v5 = _allocateUninitializedArray<A>(_:)();
    v4 = v2;
    _objc_retain(a1);
    *v4 = a1;
    sub_1002612B0();
    _objc_release(a1);
    return v5;
  }

  _objc_retain(v10);
  sub_1003C6730(v10);
  _objc_release(v10);
  sub_1002AA63C();
  _allocateUninitializedArray<A>(_:)();
  v6 = v1;
  _objc_retain(a1);
  *v6 = a1;
  sub_1002612B0();
  v7 = static Array.+ infix(_:_:)();

  _objc_release(v10);
  _objc_release(a1);
  return v7;
}

Swift::Void __swiftcall MessageListViewController.dismissTip()()
{
  v42 = 0;
  v30 = 0;
  v37 = 0;
  v32 = type metadata accessor for Logger();
  v33 = *(v32 - 8);
  v34 = v33;
  v0 = __chkstk_darwin(v31);
  v35 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v0;
  v36 = [v0 tipPopoverController];
  if (v36)
  {
    v29 = v36;
    v27 = v36;
    v37 = v36;
    v26 = 0;
    [v36 dismissViewControllerAnimated:1 completion:?];
    [v31 setTipPopoverController:v26];

    v28 = v30;
  }

  else
  {
    v2 = v35;
    v3 = Logger.tipsLogger.unsafeMutableAddressor();
    (*(v34 + 16))(v2, v3, v32);
    v24 = Logger.logObject.getter();
    v21 = v24;
    v23 = static os_log_type_t.error.getter();
    v22 = v23;
    sub_10025C9B0(&unk_1006D7720);
    v25 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v24, v23))
    {
      v4 = v30;
      v12 = static UnsafeMutablePointer.allocate(capacity:)();
      v8 = v12;
      v9 = sub_10025C9B0(&qword_1006D7290);
      v10 = 0;
      v13 = sub_1002641E8(0);
      v11 = v13;
      v14 = sub_1002641E8(v10);
      v41 = v12;
      v40 = v13;
      v39 = v14;
      v15 = 0;
      v16 = &v41;
      sub_10026423C(0, &v41);
      sub_10026423C(v15, v16);
      v38 = v25;
      v17 = v6;
      __chkstk_darwin(v6);
      v18 = &v6[-6];
      v6[-4] = v5;
      v6[-3] = &v40;
      v6[-2] = &v39;
      v19 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v20 = v4;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v21, v22, "Could not dismiss MiniTipPopoverViewController, no existing view controller", v8, 2u);
        v6[1] = 0;
        sub_10026429C(v11);
        sub_10026429C(v14);
        UnsafeMutablePointer.deallocate()();

        v7 = v20;
      }
    }

    else
    {

      v7 = v30;
    }

    v6[0] = v7;

    (*(v34 + 8))(v35, v32);
  }
}

unint64_t sub_1003C6E30()
{
  v2 = qword_1006DC840;
  if (!qword_1006DC840)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC840);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1003C6F08()
{
  v2 = *(v0 + OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_titleLabel);
  _objc_retain(v2);
  return v2;
}

void *sub_1003C6FC4()
{
  v2 = *(v0 + OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_subtitleLabel);
  _objc_retain(v2);
  return v2;
}

void *sub_1003C7080()
{
  v2 = *(v0 + OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_chevronImageView);
  _objc_retain(v2);
  return v2;
}

id MFMailboxFilterCriteriaBarButtonItem.init(target:action:)(void *a1, uint64_t a2)
{
  v13 = a2;
  v14 = a1;
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (v14[3])
  {
    v8 = v14[3];
    sub_10027EC3C(v14, v8);
    v6 = *(v8 - 8);
    v7 = v6;
    v10 = v4;
    __chkstk_darwin(v4);
    v9 = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))();
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v8);
    sub_1000160F4(v14);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v4[1] = v12;
  v5 = [v15 initWithTarget:? action:?];
  swift_unknownObjectRelease();
  return v5;
}

unint64_t sub_1003C7288()
{
  v2 = qword_1006DB038;
  if (!qword_1006DB038)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB038);
    return ObjCClassMetadata;
  }

  return v2;
}

void MFMailboxFilterCriteriaBarButtonItem.init(coder:)()
{
  v0 = OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_titleLabel;
  sub_100264928();
  *v0 = sub_10025C704();
  v1 = OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_subtitleLabel;
  *v1 = sub_10025C704();
  v2 = OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_chevronImageView;
  sub_1002649B4();
  *v2 = sub_10025C704();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init?(coder:) has not been implemented", 0x26uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003C7598()
{
  sub_1002AA63C();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = [v1 initWithArrangedSubviews:?];
  _objc_release(isa);

  return v3;
}

id sub_1003C760C(void *a1, uint64_t a2)
{
  v14 = a2;
  v15 = a1;
  if (a1[3])
  {
    v8 = v15[3];
    sub_10027EC3C(v15, v8);
    v6 = *(v8 - 8);
    v7 = v6;
    v10 = &v4;
    __chkstk_darwin();
    v9 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))();
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v8);
    sub_1000160F4(v15);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v5 = [v13 initWithTarget:v12 action:?];
  swift_unknownObjectRelease();
  return v5;
}

unint64_t type metadata accessor for MFMailboxFilterCriteriaBarButtonItem()
{
  v2 = qword_1006DB068;
  if (!qword_1006DB068)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB068);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t static MFMailErrorMessageHelper.invalidRecipientErrorMessage(withRecipients:)(uint64_t a1)
{
  v159 = a1;
  v151 = 0;
  v228 = 0;
  v227 = 0;
  v226._object = 0;
  v226._countAndFlagsBits = 0;
  v225 = 0;
  v220 = 0;
  v219 = 0;
  v218 = 0;
  v208 = 0;
  v207 = 0;
  v146 = 0;
  v197 = 0;
  v194 = 0;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v181 = 0;
  v180 = 0;
  v175 = 0;
  v174 = 0;
  v172 = 0;
  v167 = 0;
  v166 = 0;
  v161 = 0;
  v160 = 0;
  type metadata accessor for Locale();
  __chkstk_darwin(0);
  v156 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v156;
  type metadata accessor for String.LocalizationValue();
  v3 = __chkstk_darwin(v159);
  v153 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v153;
  v228 = v3;
  v227 = v1;
  v152 = 1;
  v154 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Main", 4uLL, 1);
  v149 = v154;
  v226 = v154;
  sub_1003C8628();
  sub_10000B074();
  v155 = sub_1003C868C();
  v150 = v155;
  v225 = v155;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INVALID_RECIPIENT_MESSAGE", 0x19uLL, v152);
  String.LocalizationValue.init(stringLiteral:)();

  v5 = v155;
  sub_100015CC0();
  v221 = v151;
  v222 = v151;
  v223 = 0;
  v224 = v152;
  v157 = String.init(localized:table:bundle:locale:comment:)();
  v158 = v6;
  v219 = v157;
  v220 = v6;

  if (!v159)
  {

    v140 = v157;
    v141 = v158;
    v142 = v146;
    return v140;
  }

  v145 = v159;
  v143 = v159;
  v218 = v159;
  v144 = Array.count.getter();
  if (v144 == 1)
  {
    v7 = v146;
    v129 = 1;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SINGLE_INVALID_RECIPIENT_ADDRESS_MESSAGE_FORMAT%1$@", 0x33uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();

    v8 = v150;
    sub_100015CC0();
    v132 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = v129;
    v135 = String.init(localized:table:bundle:locale:comment:)();
    v137 = v9;
    v160 = v135;
    v161 = v9;
    v134 = sub_10025C9B0(&qword_1006DB0A8);
    v133 = _allocateUninitializedArray<A>(_:)();
    v130 = v10;
    v131 = &type metadata for String;
    *(v10 + 24) = &type metadata for String;
    *(v130 + 32) = sub_1003C89C0();
    Array.subscript.getter();
    v11 = v133;
    sub_1002612B0();
    v136 = v11;
    v138 = static String.localizedStringWithFormat(_:_:)();
    v139 = v12;

    v140 = v138;
    v141 = v139;
    v142 = v7;
    return v140;
  }

  sub_10025C9B0(&qword_1006DB078);
  v216 = 2;
  v217 = 3;
  v215 = v144;
  sub_1003C86E4();
  if (static RangeExpression.~= infix(_:_:)())
  {
    v13 = v146;
    v120 = 1;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QUOTED_INVALID_RECIPIENT_ADDRESS_FORMAT%1$@", 0x2BuLL, 1);
    String.LocalizationValue.init(stringLiteral:)();

    v14 = v150;
    sub_100015CC0();
    v176 = 0;
    v177 = 0;
    v178 = 0;
    v179 = v120;
    v122 = String.init(localized:table:bundle:locale:comment:)();
    v123 = v15;
    v121 = v15;
    v174 = v122;
    v175 = v15;
    v173 = v143;

    v124 = &v62;
    v16 = __chkstk_darwin(v122);
    v125 = &v62 - 4;
    *(&v62 - 2) = v16;
    *(&v62 - 1) = v17;
    v126 = sub_10025C9B0(&unk_1006D69B0);
    v18 = sub_1002B76F0();
    v20 = sub_10025E9D8(sub_1003C8908, v125, v126, &type metadata for String, &type metadata for Never, v18, &protocol witness table for Never, v19);
    v127 = v13;
    v128 = v20;
    if (!v13)
    {
      v117 = v128;

      v172 = v117;
      v104 = 1;
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MULTIPLE_INVALID_RECIPIENT_ADDRESS_MESSAGE_FORMAT%1$@", 0x35uLL, 1);
      String.LocalizationValue.init(stringLiteral:)();

      v21 = v150;
      sub_100015CC0();
      v168 = 0;
      v169 = 0;
      v170 = 0;
      v171 = v104;
      v114 = String.init(localized:table:bundle:locale:comment:)();
      v116 = v22;
      v166 = v114;
      v167 = v22;
      v111 = sub_10025C9B0(&qword_1006DB0A8);
      v112 = _allocateUninitializedArray<A>(_:)();
      v109 = v23;
      v105 = objc_opt_self();

      v107 = &type metadata for String;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v113 = [v105 localizedStringByJoiningStrings:isa];

      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = v24;
      v109[3] = v107;
      v25 = sub_1003C89C0();
      v26 = v108;
      v27 = v109;
      v28 = v110;
      v29 = v25;
      v30 = v112;
      v109[4] = v29;
      *v27 = v26;
      v27[1] = v28;
      sub_1002612B0();
      v115 = v30;

      v118 = static String.localizedStringWithFormat(_:_:)();
      v119 = v31;

      v140 = v118;
      v141 = v119;
      v142 = 0;
      return v140;
    }

    __break(1u);
  }

  else
  {
    sub_10025C9B0(&qword_1006DB088);
    v214 = 4;
    v213 = v144;
    sub_1003C876C();
    if ((static RangeExpression.~= infix(_:_:)() & 1) == 0)
    {

      v140 = v157;
      v141 = v158;
      v142 = v146;
      return v140;
    }

    v32 = v146;
    v92 = 1;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QUOTED_INVALID_RECIPIENT_ADDRESS_FORMAT%1$@", 0x2BuLL, 1);
    String.LocalizationValue.init(stringLiteral:)();

    v33 = v150;
    sub_100015CC0();
    v209 = 0;
    v210 = 0;
    v211 = 0;
    v212 = v92;
    v97 = String.init(localized:table:bundle:locale:comment:)();
    v98 = v34;
    v93 = v34;
    v207 = v97;
    v208 = v34;

    v202 = v143;
    v95 = sub_10025C9B0(&unk_1006D69B0);
    v94 = v95;
    v96 = sub_1002B76F0();
    Collection.prefix(_:)();
    v198 = v203;
    v199 = v204;
    v200 = v205;
    v201 = v206;

    v99 = &v62;
    v35 = __chkstk_darwin(v97);
    v100 = &v62 - 4;
    *(&v62 - 2) = v35;
    *(&v62 - 1) = v36;
    v101 = sub_10025C9B0(&qword_1006DB098);
    v37 = sub_1003C8938();
    v39 = sub_10025E9D8(sub_1003C8908, v100, v101, &type metadata for String, &type metadata for Never, v37, &protocol witness table for Never, v38);
    v102 = v32;
    v103 = v39;
    if (!v32)
    {
      v89 = v103;

      sub_100294754();
      v197 = v89;

      v195 = v143;
      Collection.dropFirst(_:)();
      v62 = v196;
      v77 = &type metadata for String;
      v63 = ArraySlice.count.getter();
      v194 = v63;
      swift_unknownObjectRelease();
      v68 = 1;
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OTHER_INVALID_RECIPIENT_COUNT", 0x1DuLL, 1);
      String.LocalizationValue.init(stringLiteral:)();

      v40 = v150;
      sub_100015CC0();
      v66 = 0;
      v190 = 0;
      v191 = 0;
      v67 = 0;
      v192 = 0;
      v193 = v68;
      v64 = String.init(localized:table:bundle:locale:comment:)();
      v88 = v41;
      v188 = v64;
      v189 = v41;
      v81 = sub_10025C9B0(&qword_1006DB0A8);
      v69 = v68;
      v42 = _allocateUninitializedArray<A>(_:)();
      v43 = v63;
      v44[3] = &type metadata for Int;
      v44[4] = &protocol witness table for Int;
      *v44 = v43;
      sub_1002612B0();
      v65 = v42;
      v71 = static String.localizedStringWithFormat(_:_:)();
      v87 = v45;

      v186 = v71;
      v187 = v87;
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MULTIPLE_INVALID_RECIPIENT_ADDRESS_MESSAGE_FORMAT%1$@", 0x35uLL, v68);
      String.LocalizationValue.init(stringLiteral:)();

      v46 = v150;
      sub_100015CC0();
      v182 = v66;
      v183 = v66;
      v184 = v67;
      v185 = v68;
      v84 = String.init(localized:table:bundle:locale:comment:)();
      v86 = v47;
      v180 = v84;
      v181 = v47;
      v82 = _allocateUninitializedArray<A>(_:)();
      v79 = v48;
      v75 = objc_opt_self();
      v70 = _allocateUninitializedArray<A>(_:)();
      v72 = v49;

      v50 = v70;
      v51 = v72;
      v52 = v87;
      *v72 = v71;
      v51[1] = v52;
      sub_1002612B0();
      v73 = v50;
      v74 = static Array.+ infix(_:_:)();

      v76 = Array._bridgeToObjectiveC()().super.isa;

      v83 = [v75 localizedStringByJoiningStrings:v76];

      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v53;
      v79[3] = v77;
      v54 = sub_1003C89C0();
      v55 = v78;
      v56 = v79;
      v57 = v80;
      v58 = v54;
      v59 = v82;
      v79[4] = v58;
      *v56 = v55;
      v56[1] = v57;
      sub_1002612B0();
      v85 = v59;

      v90 = static String.localizedStringWithFormat(_:_:)();
      v91 = v60;

      v140 = v90;
      v141 = v91;
      v142 = v102;
      return v140;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003C8628()
{
  v2 = qword_1006DB070;
  if (!qword_1006DB070)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB070);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1003C868C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

unint64_t sub_1003C86E4()
{
  v2 = qword_1006DB080;
  if (!qword_1006DB080)
  {
    sub_10025CAA4(&qword_1006DB078);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003C876C()
{
  v2 = qword_1006DB090;
  if (!qword_1006DB090)
  {
    sub_10025CAA4(&qword_1006DB088);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB090);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003C87F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v7 = a1[1];
  sub_10025C9B0(&qword_1006DB0A8);
  _allocateUninitializedArray<A>(_:)();
  v6 = v2;

  v6[3] = &type metadata for String;
  v6[4] = sub_1003C89C0();
  *v6 = v5;
  v6[1] = v7;
  sub_1002612B0();
  v8 = static String.localizedStringWithFormat(_:_:)();
  v9 = v3;

  result = v8;
  *a2 = v8;
  a2[1] = v9;
  return result;
}

unint64_t sub_1003C8938()
{
  v2 = qword_1006DB0A0;
  if (!qword_1006DB0A0)
  {
    sub_10025CAA4(&qword_1006DB098);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003C89C0()
{
  v2 = qword_1006DB0B0;
  if (!qword_1006DB0B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB0B0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1003C8B80()
{
  v6 = 0;
  v1 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v5 = &v3 - v4;
  v6 = v0;
  swift_storeEnumTagMultiPayload();
  return sub_1003CB458(v5);
}

uint64_t type metadata accessor for MFReadLaterTriageInteractionState.State()
{
  v1 = qword_1006DB1F0;
  if (!qword_1006DB1F0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1003C8C84(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Five Seconds", 0xCuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("One Hour", 8uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Tonight", 7uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Tomorrow", 8uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Custom", 6uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cancel", 6uLL, 1)._countAndFlagsBits;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

void *sub_1003C8E34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v27 = a1;
  v36 = 0;
  v2 = sub_10025C9B0(&qword_1006D8740);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v13 = v6 - v12;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6 - v12);
  v15 = v6 - v14;
  v21 = 0;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v20 = v6 - v19;
  v22 = type metadata accessor for Calendar.Component();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v26 = v6 - v25;
  v28 = type metadata accessor for Calendar();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v27);
  v32 = v6 - v31;
  v36 = v4;
  v35 = v4;
  v33 = v4;
  if (v4)
  {
    switch(v27)
    {
      case 1:
        static Calendar.current.getter();
        (*(v23 + 104))(v26, enum case for Calendar.Component.hour(_:), v22);
        static Date.now.getter();
        variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        (*(v17 + 8))(v20, v16);
        (*(v23 + 8))(v26, v22);
        return (*(v29 + 8))(v32, v28);
      case 2:
        v10 = [objc_opt_self() ef_tonight];
        if (v10)
        {
          v9 = v10;
          v8 = v10;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();
          (*(v17 + 32))(v15, v20, v16);
          (*(v17 + 56))(v15, 0, 1, v16);
          _objc_release(v8);
        }

        else
        {
          (*(v17 + 56))(v15, 1, 1, v16);
        }

        return sub_1002A7168(v15, v11);
      case 3:
        v7 = [objc_opt_self() ef_tomorrowMorning];
        if (v7)
        {
          v6[1] = v7;
          v6[0] = v7;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();
          (*(v17 + 32))(v13, v20, v16);
          (*(v17 + 56))(v13, 0, 1, v16);
          _objc_release(v6[0]);
        }

        else
        {
          (*(v17 + 56))(v13, 1, 1, v16);
        }

        return sub_1002A7168(v13, v11);
      case 4:
      case 5:
        return (*(v17 + 56))(v11, 1, 1, v16);
      default:
        v34 = v33;
        result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        break;
    }
  }

  else
  {
    static Calendar.current.getter();
    (*(v23 + 104))(v26, enum case for Calendar.Component.second(_:), v22);
    static Date.now.getter();
    variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v17 + 8))(v20, v16);
    (*(v23 + 8))(v26, v22);
    return (*(v29 + 8))(v32, v28);
  }

  return result;
}

uint64_t sub_1003C954C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
  }

  return 0;
}

uint64_t sub_1003C9780@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1003C954C(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1003C97D8@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v8 = 0;
  v18 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v9 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v19 = &v6 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v10);
  v15 = &v6 - v14;
  v23 = &v6 - v14;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v17 = &v6 - v16;
  v22 = v3;
  sub_1003CB510(v3, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return (*(v12 + 56))(v7, 1, 1, v11);
    }

    v23 = v15;
    (*(v12 + 32))(v15, v19, v11);
    (*(v12 + 16))(v17, v15, v11);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    (*(v12 + 16))(v17, v15, v11);
    (*(v12 + 8))(v15, v11);
  }

  v21 = v17;
  (*(v12 + 16))(v7);
  (*(v12 + 56))(v7, 0, 1, v11);
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_1003C9BB8()
{
  v48 = 0;
  v47 = 0;
  v49 = 0;
  v32 = 0;
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v37 = v16 - v36;
  v49 = v16 - v36;
  v40 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v39 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(v38);
  v41 = v16 - v39;
  v48 = v0;
  sub_1003CB510(v0, v16 - v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v47 = v37;
      (*(v34 + 32))(v37, v41, v33);
      v47 = v37;
      v16[0] = 15;
      v6 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v19 = &v45;
      v45 = v6;
      v46 = v7;
      v17 = 1;
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Date selected: ", v16[0], 1);
      v16[1] = v8._object;
      DefaultStringInterpolation.appendLiteral(_:)(v8);

      sub_1003CB638();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v17 & 1);
      object = v9._object;
      DefaultStringInterpolation.appendLiteral(_:)(v9);

      v21 = v45;
      v20 = v46;

      sub_100268744();
      v22._countAndFlagsBits = String.init(stringInterpolation:)();
      v22._object = v10;
      (*(v34 + 8))(v37, v33);
      v31 = v22;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("None", 4uLL, 1);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Select custom date", 0x12uLL, 1);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remove date", 0xBuLL, 1);
        v13 = v11._object;
        countAndFlagsBits = v11._countAndFlagsBits;
      }

      else
      {
        v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cancel", 6uLL, 1);
        v13 = v14._object;
        countAndFlagsBits = v14._countAndFlagsBits;
      }

      v31._countAndFlagsBits = countAndFlagsBits;
      v31._object = v13;
    }
  }

  else
  {
    (*(v34 + 32))(v37, v41, v33);
    v49 = v37;
    v23 = 11;
    v1 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v27 = &v43;
    v43 = v1;
    v44 = v2;
    v25 = 1;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Edit date: ", v23, 1);
    v24 = v3._object;
    DefaultStringInterpolation.appendLiteral(_:)(v3);

    sub_1003CB638();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v25 & 1);
    v26 = v4._object;
    DefaultStringInterpolation.appendLiteral(_:)(v4);

    v29 = v43;
    v28 = v44;

    sub_100268744();
    v30._countAndFlagsBits = String.init(stringInterpolation:)();
    v30._object = v5;
    (*(v34 + 8))(v37, v33);
    v31 = v30;
  }

  return v31._countAndFlagsBits;
}

uint64_t sub_1003CA0CC(uint64_t a1, const void *a2)
{
  v38 = a1;
  v46 = a2;
  v56 = 0;
  v55 = 0;
  v36 = 0;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v29 = v12 - v28;
  v30 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - v28);
  v31 = v12 - v30;
  v32 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - v30);
  v33 = v12 - v32;
  v34 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - v32);
  v35 = v12 - v34;
  v50 = sub_10025C9B0(&unk_1006DB240);
  v37 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v52 = v12 - v37;
  v51 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v44 = *(*(v51 - 8) + 64);
  v39 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v38);
  v40 = v12 - v39;
  v41 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v5);
  v42 = v12 - v41;
  v43 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v6);
  v49 = v12 - v43;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v7);
  v47 = v12 - v45;
  v56 = v8;
  v55 = v9;
  sub_1003CB510(v8, v12 - v45);
  sub_1003CB510(v46, v49);
  v48 = *(v50 + 48);
  sub_1003CD2A8(v47, v52);
  sub_1003CD2A8(v49, &v52[v48]);
  v53 = *(v50 + 48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      switch(EnumCaseMultiPayload)
      {
        case 2:
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_26;
          }

          break;
        case 3:
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            goto LABEL_26;
          }

          break;
        case 4:
          if (swift_getEnumCaseMultiPayload() != 4)
          {
            goto LABEL_26;
          }

          break;
        default:
          v10 = swift_getEnumCaseMultiPayload();
          if (v10 == 5)
          {
            break;
          }

LABEL_26:
          sub_1003CF7E0(v52);
          v24 = 0;
          return v24 & 1;
      }

      sub_1003CD09C(v52);
      v24 = 1;
      return v24 & 1;
    }

    sub_1003CB510(v52, v40);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v26 + 8))(v40, v25);
      goto LABEL_26;
    }

    v17 = *(v26 + 32);
    v16 = v26 + 32;
    v17(v31, v40, v25);
    v17(v29, &v52[v53], v25);
    if (static Date.== infix(_:_:)())
    {
      v15 = *(v26 + 8);
      v14 = v26 + 8;
      v15(v29, v25);
      v15(v31, v25);
      sub_1003CD09C(v52);
      v24 = 1;
    }

    else
    {
      v13 = *(v26 + 8);
      v12[1] = v26 + 8;
      v13(v29, v25);
      v13(v31, v25);
      sub_1003CD09C(v52);
      v24 = 0;
    }
  }

  else
  {
    sub_1003CB510(v52, v42);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v26 + 8))(v42, v25);
      goto LABEL_26;
    }

    v23 = *(v26 + 32);
    v22 = v26 + 32;
    v23(v35, v42, v25);
    v23(v33, &v52[v53], v25);
    if (static Date.== infix(_:_:)())
    {
      v21 = *(v26 + 8);
      v20 = v26 + 8;
      v21(v33, v25);
      v21(v35, v25);
      sub_1003CD09C(v52);
      v24 = 1;
    }

    else
    {
      v19 = *(v26 + 8);
      v18 = v26 + 8;
      v19(v33, v25);
      v19(v35, v25);
      sub_1003CD09C(v52);
      v24 = 0;
    }
  }

  return v24 & 1;
}

uint64_t sub_1003CA958(uint64_t a1)
{
  v10 = a1;
  v23 = 0;
  v22 = 0;
  v4 = 0;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = v5 - 8;
  v8 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v9 = &v4 - v8;
  v13 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v12 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v11);
  v14 = &v4 - v12;
  v23 = v2;
  v22 = v1;
  sub_1003CB510(v1, &v4 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v9, v14, v5);
      v19 = 3;
      Hasher.combine<A>(_:)();
      sub_1003CF760();
      Hasher.combine<A>(_:)();
      return (*(v6 + 8))(v9, v5);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v16 = 0;
      return Hasher.combine<A>(_:)();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v17 = 1;
      return Hasher.combine<A>(_:)();
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v20 = 4;
      }

      else
      {
        v21 = 5;
      }

      return Hasher.combine<A>(_:)();
    }
  }

  else
  {
    (*(v6 + 32))(v9, v14, v5);
    v18 = 2;
    Hasher.combine<A>(_:)();
    sub_1003CF760();
    Hasher.combine<A>(_:)();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1003CACA8()
{
  type metadata accessor for MFReadLaterTriageInteractionState.State();
  sub_1003CB6B8();
  return _hashValue<A>(for:)();
}

char *sub_1003CAD54(uint64_t a1)
{
  v17 = a1;
  v20 = 0;
  v22 = sub_1003CB04C;
  v26 = 0;
  v25 = 0;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v16 = &v4 - v15;
  v18 = (*(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v17);
  v19 = &v4 - v18;
  v26 = v2;
  v25 = v1;
  v23 = v2;
  v21 = sub_10025C9B0(&unk_1006DCAF0);
  sub_1003CB738();
  Sequence.first(where:)();
  v11 = v24;
  if (v24 && (v10 = v11, v8 = v11, swift_getObjectType(), v9 = [v8 readLater], swift_unknownObjectRelease(), v9))
  {
    v7 = v9;
    v5 = v9;
    v6 = [v9 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v13 + 32))(v19, v16, v12);
    _objc_release(v5);
    (*(v13 + 56))(v19, 0, 1, v12);
    _objc_release(v6);
  }

  else
  {
    (*(v13 + 56))(v19, 1, 1, v12);
  }

  v4 = sub_1003CB0F8(v19);
  sub_1002A70C0(v19);
  return v4;
}

BOOL sub_1003CB04C(id *a1)
{
  v4 = 0;
  v4 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v2 = [v4 readLater];
  swift_unknownObjectRelease();
  v3 = v2;
  sub_10026A58C(&v3);
  return v2 != 0;
}

char *sub_1003CB0F8(uint64_t a1)
{
  v12 = a1;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v10 = 0;
  v7 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v9 = &v5 - v8;
  v11 = (*(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v18 = &v5 - v11;
  v17 = type metadata accessor for Date();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v13 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v14 = &v5 - v13;
  v21 = &v5 - v13;
  v20 = v2;
  v19 = v1;
  sub_1002F29E4(v2, v3);
  if ((*(v15 + 48))(v18, 1, v17) == 1)
  {
    sub_1002A70C0(v18);
    swift_storeEnumTagMultiPayload();
    return sub_1003CB458(v9);
  }

  else
  {
    (*(v15 + 32))(v14, v18, v17);
    (*(v15 + 16))(v9, v14, v17);
    swift_storeEnumTagMultiPayload();
    v5 = sub_1003CB458(v9);
    (*(v15 + 8))(v14, v17);
    return v5;
  }
}

unint64_t sub_1003CB494()
{
  v2 = qword_1006DB100;
  if (!qword_1006DB100)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB100);
    return WitnessTable;
  }

  return v2;
}

void *sub_1003CB510(const void *a1, void *a2)
{
  v6 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = type metadata accessor for Date();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_1003CB638()
{
  v2 = qword_1006DB108;
  if (!qword_1006DB108)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB108);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003CB6B8()
{
  v2 = qword_1006DB110;
  if (!qword_1006DB110)
  {
    type metadata accessor for MFReadLaterTriageInteractionState.State();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003CB738()
{
  v2 = qword_1006DB120;
  if (!qword_1006DB120)
  {
    sub_10025CAA4(&unk_1006DCAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB120);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003CBA2C()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006DB0E0);
  sub_1000208F4(v1, qword_1006DB0E0);
  type metadata accessor for MFReadLaterTriageInteractionState();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_1003CBA94()
{
  if (qword_1006D6068 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006DB0E0);
}

uint64_t sub_1003CBB00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003CBA94();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1003CBBD4()
{
  v12 = 0;
  v9 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v5 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v3 - v5;
  v12 = v0;
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v7 = &v11;
  swift_beginAccess();
  sub_1003CB510(v6, v8);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_1003CD09C(v8);
      v4 = 0;
      return v4 & 1;
    }
  }

  else
  {
    v1 = type metadata accessor for Date();
    (*(*(v1 - 8) + 8))(v8);
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t sub_1003CBD84()
{
  v12 = 0;
  v7 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v3 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v8 = &v3 - v3;
  v4 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v3);
  v9 = &v3 - v4;
  v12 = v0;
  v5 = (v0 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v6 = &v11;
  swift_beginAccess();
  sub_1003CB510(v5, v9);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  v10 = sub_1003CA0CC(v9, v8);
  sub_1003CD09C(v8);
  sub_1003CD09C(v9);
  return v10 & 1;
}

uint64_t sub_1003CBF14()
{
  v12 = 0;
  v7 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v3 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v8 = &v3 - v3;
  v4 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v3);
  v9 = &v3 - v4;
  v12 = v0;
  v5 = (v0 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v6 = &v11;
  swift_beginAccess();
  sub_1003CB510(v5, v9);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  v10 = sub_1003CA0CC(v9, v8);
  sub_1003CD09C(v8);
  sub_1003CD09C(v9);
  return v10 & 1;
}

uint64_t sub_1003CC0A4()
{
  v12 = 0;
  v7 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v3 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v8 = &v3 - v3;
  v4 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v3);
  v9 = &v3 - v4;
  v12 = v0;
  v5 = (v0 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v6 = &v11;
  swift_beginAccess();
  sub_1003CB510(v5, v9);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  v10 = sub_1003CA0CC(v9, v8);
  sub_1003CD09C(v8);
  sub_1003CD09C(v9);
  return v10 & 1;
}

uint64_t sub_1003CC234()
{
  v10 = 0;
  v8 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v4 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = &v3 - v4;
  v10 = v0;
  v5 = (v0 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v6 = &v9;
  swift_beginAccess();
  sub_1003CB510(v5, v7);
  swift_endAccess();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for Date();
    (*(*(v1 - 8) + 8))(v7);
    HIDWORD(v3) = 1;
  }

  else
  {
    sub_1003CD09C(v7);
    HIDWORD(v3) = 0;
  }

  return BYTE4(v3) & 1;
}

uint64_t sub_1003CC4D8@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v12 = 0;
  v1 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v2 = &v5 - v6;
  v10 = &v5 - v6;
  v12 = v3;
  v7 = (v3 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v8 = &v11;
  swift_beginAccess();
  sub_1003CB510(v7, v2);
  swift_endAccess();
  sub_1003C97D8(v9);
  return sub_1003CD09C(v10);
}

uint64_t sub_1003CC5B0@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  swift_beginAccess();
  sub_1003CB510(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1003CC614(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(type metadata accessor for MFReadLaterTriageInteractionState.State() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_1003CB510(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v6 = &v8;
  swift_beginAccess();
  sub_1003CD168(v4, v5);
  swift_endAccess();
  return sub_1003CD09C(v7);
}

id sub_1003CC6EC()
{
  ObjectType = swift_getObjectType();
  v9 = 0;
  v1 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v4 = &v3 - v3;
  v9 = v0;
  v5 = v0;
  swift_storeEnumTagMultiPayload();
  sub_1003CD2A8(v4, &v5[OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state]);
  v8.receiver = v9;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, "init");
  _objc_retain(v7);
  v9 = v7;
  _objc_release(v7);
  return v7;
}

char *sub_1003CC80C(const void *a1)
{
  v44 = a1;
  v38 = v1;
  v32 = 0;
  v49 = sub_1003CD3EC;
  v52 = sub_1003CF1A8;
  v56 = sub_10026EE84;
  v58 = sub_10026434C;
  v60 = sub_10026434C;
  v63 = sub_10026EF2C;
  ObjectType = swift_getObjectType();
  v76 = 0;
  v75 = 0;
  v34 = 0;
  v35 = 0;
  v36 = *(type metadata accessor for MFReadLaterTriageInteractionState.State() - 8);
  v45 = v36;
  v46 = *(v36 + 64);
  v37 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v48 = &v21 - v37;
  v43 = type metadata accessor for Logger();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v39 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v44);
  v3 = &v21 - v39;
  v40 = &v21 - v39;
  v75 = v2;
  v76 = v4;
  v5 = sub_1003CBA94();
  (*(v41 + 16))(v3, v5, v43);
  sub_1003CB510(v44, v48);
  v47 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v54 = 7;
  v50 = swift_allocObject();
  sub_1003CD2A8(v48, (v50 + v47));

  v53 = 32;
  v6 = swift_allocObject();
  v7 = v50;
  v55 = v6;
  *(v6 + 16) = v49;
  *(v6 + 24) = v7;

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  v51 = 17;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v55;
  v57 = v8;
  *(v8 + 16) = v52;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v57;
  v64 = v10;
  *(v10 + 16) = v56;
  *(v10 + 24) = v11;
  v66 = sub_10025C9B0(&unk_1006D7720);
  v62 = _allocateUninitializedArray<A>(_:)();
  v65 = v12;

  v13 = v59;
  v14 = v65;
  *v65 = v58;
  v14[1] = v13;

  v15 = v61;
  v16 = v65;
  v65[2] = v60;
  v16[3] = v15;

  v17 = v64;
  v18 = v65;
  v65[4] = v63;
  v18[5] = v17;
  sub_1002612B0();

  if (os_log_type_enabled(v67, v68))
  {
    v19 = v34;
    v25 = static UnsafeMutablePointer.allocate(capacity:)();
    v24 = sub_10025C9B0(&qword_1006D7290);
    v26 = sub_1002641E8(0);
    v27 = sub_1002641E8(1);
    v28 = &v73;
    v73 = v25;
    v29 = &v72;
    v72 = v26;
    v30 = &v71;
    v71 = v27;
    sub_10026423C(2, &v73);
    sub_10026423C(1, v28);
    v69 = v58;
    v70 = v59;
    sub_100264250(&v69, v28, v29, v30);
    v31 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v69 = v60;
      v70 = v61;
      sub_100264250(&v69, &v73, &v72, &v71);
      v23 = 0;
      v69 = v63;
      v70 = v64;
      sub_100264250(&v69, &v73, &v72, &v71);
      _os_log_impl(&_mh_execute_header, v67, v68, "Create interaction state with state: %s", v25, 0xCu);
      sub_10026429C(v26);
      sub_10026429C(v27);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v67);
  (*(v41 + 8))(v40, v43);
  v21 = v76;
  sub_1003CB510(v44, v48);
  sub_1003CD2A8(v48, &v21[OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state]);
  v74.receiver = v76;
  v74.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v74, "init");
  _objc_retain(v22);
  v76 = v22;
  sub_1003CD09C(v44);
  _objc_release(v76);
  return v22;
}

uint64_t type metadata accessor for MFReadLaterTriageInteractionState()
{
  v1 = qword_1006DB170;
  if (!qword_1006DB170)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1003CD09C(uint64_t a1)
{
  type metadata accessor for MFReadLaterTriageInteractionState.State();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v1 = type metadata accessor for Date();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

void *sub_1003CD168(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1003CD09C(a2);
    v4 = type metadata accessor for MFReadLaterTriageInteractionState.State();
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      v2 = type metadata accessor for Date();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

void *sub_1003CD2A8(const void *a1, void *a2)
{
  v6 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = type metadata accessor for Date();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

void *sub_1003CD3EC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v3 = (v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)));

  return sub_1003CD3D0(v3, a1);
}

uint64_t sub_1003CD460(unint64_t a1)
{
  v67 = a1;
  v68 = sub_10026E82C;
  v71 = sub_1003CF284;
  v75 = sub_10026EE84;
  v77 = sub_10026434C;
  v79 = sub_10026434C;
  v82 = sub_10026EF2C;
  v47 = "Fatal error";
  v48 = "MobileMail/MFReadLaterTriageInteractionState.swift";
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v49 = 0;
  v55 = 0;
  v50 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v51 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v52 = v24 - v51;
  v53 = (*(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v54 = v24 - v53;
  v56 = type metadata accessor for Date();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v60 = v24 - v59;
  v103 = v24 - v59;
  v66 = type metadata accessor for Logger();
  v64 = *(v66 - 8);
  v65 = v66 - 8;
  v62 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v67);
  v2 = v24 - v62;
  v63 = v24 - v62;
  v102 = v1;
  v101 = v3;
  v4 = sub_1003CBA94();
  (*(v64 + 16))(v2, v4, v66);
  v73 = 7;
  v69 = swift_allocObject();
  *(v69 + 16) = v67;

  v72 = 32;
  v5 = swift_allocObject();
  v6 = v69;
  v74 = v5;
  *(v5 + 16) = v68;
  *(v5 + 24) = v6;

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  v70 = 17;
  v78 = swift_allocObject();
  *(v78 + 16) = 32;
  v80 = swift_allocObject();
  *(v80 + 16) = 8;
  v7 = swift_allocObject();
  v8 = v74;
  v76 = v7;
  *(v7 + 16) = v71;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v76;
  v83 = v9;
  *(v9 + 16) = v75;
  *(v9 + 24) = v10;
  v85 = sub_10025C9B0(&unk_1006D7720);
  v81 = _allocateUninitializedArray<A>(_:)();
  v84 = v11;

  v12 = v78;
  v13 = v84;
  *v84 = v77;
  v13[1] = v12;

  v14 = v80;
  v15 = v84;
  v84[2] = v79;
  v15[3] = v14;

  v16 = v83;
  v17 = v84;
  v84[4] = v82;
  v17[5] = v16;
  sub_1002612B0();

  if (os_log_type_enabled(v86, v87))
  {
    v18 = v49;
    v40 = static UnsafeMutablePointer.allocate(capacity:)();
    v39 = sub_10025C9B0(&qword_1006D7290);
    v41 = sub_1002641E8(0);
    v42 = sub_1002641E8(1);
    v43 = &v92;
    v92 = v40;
    v44 = &v91;
    v91 = v41;
    v45 = &v90;
    v90 = v42;
    sub_10026423C(2, &v92);
    sub_10026423C(1, v43);
    v88 = v77;
    v89 = v78;
    sub_100264250(&v88, v43, v44, v45);
    v46 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v88 = v79;
      v89 = v80;
      sub_100264250(&v88, &v92, &v91, &v90);
      v38 = 0;
      v88 = v82;
      v89 = v83;
      sub_100264250(&v88, &v92, &v91, &v90);
      _os_log_impl(&_mh_execute_header, v86, v87, "Perform action: %s", v40, 0xCu);
      sub_10026429C(v41);
      sub_10026429C(v42);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v86);
  (*(v64 + 8))(v63, v66);
  v100 = v67;
  v37 = v67;
  if (v67 < 4)
  {
    sub_1003C8E34(v67, v54);
    if ((*(v57 + 48))(v54, 1, v56) != 1)
    {
      (*(v57 + 32))(v60, v54, v56);
      (*(v57 + 16))(v52, v60, v56);
      swift_storeEnumTagMultiPayload();
      v35 = (v61 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
      v36 = &v93;
      swift_beginAccess();
      sub_1003CD168(v52, v35);
      swift_endAccess();
      return (*(v57 + 8))(v60, v56);
    }

    sub_1002A70C0(v54);
    v27 = 45;
    v19 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v32 = &v95;
    v95 = v19;
    v96 = v20;
    v30 = 1;
    v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unexpected state - missing date from action: ", v27, 1);
    object = v21._object;
    DefaultStringInterpolation.appendLiteral(_:)(v21);

    v29 = &v94;
    v94 = v67;
    sub_1003CF2DC();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v30 & 1);
    v31 = v22._object;
    DefaultStringInterpolation.appendLiteral(_:)(v22);

    v34 = v95;
    v33 = v96;

    sub_100268744();
    String.init(stringInterpolation:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_13;
  }

  if (v67 == 4)
  {
LABEL_13:
    swift_storeEnumTagMultiPayload();
    v25 = (v61 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
    v26 = &v97;
    swift_beginAccess();
    sub_1003CD168(v52, v25);
    return swift_endAccess();
  }

  if (v67 == 5)
  {
    swift_storeEnumTagMultiPayload();
    v24[0] = (v61 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
    v24[1] = &v98;
    swift_beginAccess();
    sub_1003CD168(v52, v24[0]);
    return swift_endAccess();
  }

  else
  {
    v99 = v37;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003CE220(uint64_t a1)
{
  v40 = a1;
  v50 = sub_1003CF358;
  v53 = sub_1003CF3CC;
  v57 = sub_10026EE84;
  v59 = sub_10026434C;
  v61 = sub_10026434C;
  v64 = sub_10026EF2C;
  v77 = 0;
  v76 = 0;
  v28 = 0;
  v32 = 0;
  v29 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v31 = v20 - v30;
  v49 = type metadata accessor for Date();
  v45 = *(v49 - 8);
  v46 = v49 - 8;
  v43 = v45;
  v44 = *(v45 + 64);
  v33 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v48 = v20 - v33;
  v39 = type metadata accessor for Logger();
  v37 = *(v39 - 8);
  v38 = v39 - 8;
  v35 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v40);
  v2 = v20 - v35;
  v36 = v20 - v35;
  v77 = v1;
  v76 = v3;
  v4 = sub_1003CBA94();
  (*(v37 + 16))(v2, v4, v39);
  v41 = *(v45 + 16);
  v42 = v45 + 16;
  v41(v48, v40, v49);
  v47 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v55 = 7;
  v51 = swift_allocObject();
  (*(v45 + 32))(v51 + v47, v48, v49);

  v54 = 32;
  v5 = swift_allocObject();
  v6 = v51;
  v56 = v5;
  *(v5 + 16) = v50;
  *(v5 + 24) = v6;

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  v52 = 17;
  v60 = swift_allocObject();
  *(v60 + 16) = 32;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v7 = swift_allocObject();
  v8 = v56;
  v58 = v7;
  *(v7 + 16) = v53;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v58;
  v65 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v67 = sub_10025C9B0(&unk_1006D7720);
  v63 = _allocateUninitializedArray<A>(_:)();
  v66 = v11;

  v12 = v60;
  v13 = v66;
  *v66 = v59;
  v13[1] = v12;

  v14 = v62;
  v15 = v66;
  v66[2] = v61;
  v15[3] = v14;

  v16 = v65;
  v17 = v66;
  v66[4] = v64;
  v17[5] = v16;
  sub_1002612B0();

  if (os_log_type_enabled(v68, v69))
  {
    v18 = v28;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v20[4] = sub_10025C9B0(&qword_1006D7290);
    v22 = sub_1002641E8(0);
    v23 = sub_1002641E8(1);
    v24 = &v74;
    v74 = v21;
    v25 = &v73;
    v73 = v22;
    v26 = &v72;
    v72 = v23;
    sub_10026423C(2, &v74);
    sub_10026423C(1, v24);
    v70 = v59;
    v71 = v60;
    sub_100264250(&v70, v24, v25, v26);
    v27 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v70 = v61;
      v71 = v62;
      sub_100264250(&v70, &v74, &v73, &v72);
      v20[2] = 0;
      v70 = v64;
      v71 = v65;
      sub_100264250(&v70, &v74, &v73, &v72);
      _os_log_impl(&_mh_execute_header, v68, v69, "Did select custom date: %s", v21, 0xCu);
      sub_10026429C(v22);
      sub_10026429C(v23);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v68);
  (*(v37 + 8))(v36, v39);
  v41(v31, v40, v49);
  swift_storeEnumTagMultiPayload();
  v20[0] = (v34 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v20[1] = &v75;
  swift_beginAccess();
  sub_1003CD168(v31, v20[0]);
  return swift_endAccess();
}

uint64_t sub_1003CEC8C()
{
  v38 = 0;
  v47 = 0;
  v25 = 0;
  v26 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  __chkstk_darwin(0);
  v27 = &v7 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Logger();
  v29 = v35;
  v30 = *(v35 - 8);
  v34 = v30;
  v31 = v30;
  v32 = *(v30 + 64);
  __chkstk_darwin(v35 - 8);
  v1 = &v7 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v1;
  v47 = v2;
  v3 = sub_1003CBA94();
  (*(v34 + 16))(v1, v3, v35);
  v40 = Logger.logObject.getter();
  v36 = v40;
  v39 = static os_log_type_t.default.getter();
  v37 = v39;
  sub_10025C9B0(&unk_1006D7720);
  v41 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v40, v39))
  {
    v4 = v25;
    v16 = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = v16;
    v13 = sub_10025C9B0(&qword_1006D7290);
    v14 = 0;
    v17 = sub_1002641E8(0);
    v15 = v17;
    v18 = sub_1002641E8(v14);
    v45 = v16;
    v44 = v17;
    v43 = v18;
    v19 = 0;
    v20 = &v45;
    sub_10026423C(0, &v45);
    sub_10026423C(v19, v20);
    v42 = v41;
    v21 = &v7;
    __chkstk_darwin(&v7);
    v22 = &v7 - 6;
    *(&v7 - 4) = v5;
    *(&v7 - 3) = &v44;
    *(&v7 - 2) = &v43;
    v23 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v24 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v36, v37, "Remove date", v12, 2u);
      v10 = 0;
      sub_10026429C(v15);
      sub_10026429C(v18);
      UnsafeMutablePointer.deallocate()();

      v11 = v24;
    }
  }

  else
  {

    v11 = v25;
  }

  (*(v31 + 8))(v33, v29);
  swift_storeEnumTagMultiPayload();
  v8 = (v28 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v9 = &v46;
  swift_beginAccess();
  sub_1003CD168(v27, v8);
  return swift_endAccess();
}

uint64_t sub_1003CF1A8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for MFReadLaterTriageInteractionState.State();
  v1 = sub_1003CF204();

  return sub_10026E834(v5, v3, v4, v1);
}

unint64_t sub_1003CF204()
{
  v2 = qword_1006DB138;
  if (!qword_1006DB138)
  {
    type metadata accessor for MFReadLaterTriageInteractionState.State();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB138);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003CF284()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1003CF2DC();

  return sub_10026E834(v4, v3, &unk_10065D810, v1);
}

unint64_t sub_1003CF2DC()
{
  v2 = qword_1006DB140;
  if (!qword_1006DB140)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB140);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003CF358@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1003CEB14(v3, a1);
}

uint64_t sub_1003CF3CC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for Date();
  v1 = sub_1003CB638();

  return sub_10026E834(v5, v3, v4, v1);
}

uint64_t sub_1003CF458()
{
  updated = type metadata accessor for MFReadLaterTriageInteractionState.State();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1003CF5A4()
{
  v2 = type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_1003CF64C()
{
  v2 = qword_1006DB228;
  if (!qword_1006DB228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003CF6E0()
{
  v2 = qword_1006DB230;
  if (!qword_1006DB230)
  {
    type metadata accessor for MFReadLaterTriageInteractionState.State();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003CF760()
{
  v2 = qword_1006DB238;
  if (!qword_1006DB238)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003CF7E0(uint64_t a1)
{
  type metadata accessor for MFReadLaterTriageInteractionState.State();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v1 = type metadata accessor for Date();
    (*(*(v1 - 8) + 8))(a1);
  }

  v4 = a1 + *(sub_10025C9B0(&unk_1006DB240) + 48);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = type metadata accessor for Date();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

id sub_1003CF970()
{
  type metadata accessor for MFSafetyCheckWhenBlocking();
  result = ConversationNavigationBarItemsManager.__allocating_init()();
  static MFSafetyCheckWhenBlocking.shared = result;
  return result;
}

uint64_t *MFSafetyCheckWhenBlocking.shared.unsafeMutableAddressor()
{
  if (qword_1006D6070 != -1)
  {
    swift_once();
  }

  return &static MFSafetyCheckWhenBlocking.shared;
}

void *static MFSafetyCheckWhenBlocking.shared.getter()
{
  v1 = *MFSafetyCheckWhenBlocking.shared.unsafeMutableAddressor();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_1003CFAB8()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006DB250);
  sub_1000208F4(v1, qword_1006DB250);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.mobilemail", 0x14uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MFSafetyCheckWhenBlocking", 0x19uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003CFB5C()
{
  if (qword_1006D6078 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006DB250);
}

uint64_t sub_1003CFBC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003CFB5C();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1003CFC34()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail25MFSafetyCheckWhenBlocking_fetchSharingTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1003CFC9C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC10MobileMail25MFSafetyCheckWhenBlocking_fetchSharingTask);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

Swift::Void __swiftcall MFSafetyCheckWhenBlocking.prefetchSharing()()
{
  v13 = &unk_1005093C0;
  ObjectType = swift_getObjectType();
  v18 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8);
  v15 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v16 = &v9 - v15;
  v18 = v0;
  v17 = sub_1003CFC34();
  v12 = v17 == 0;
  v11 = v12;
  sub_100268928();
  if (v11)
  {
    v10 = 0;
    v2 = type metadata accessor for TaskPriority();
    (*(*(v2 - 8) + 56))(v16, 1);
    v3 = swift_allocObject();
    v4 = ObjectType;
    v5 = v10;
    v6 = v16;
    v7 = v13;
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = v4;
    v8 = sub_1002C7DB4(v5, v5, v6, v7, v3, &type metadata for () + 8);
    sub_1003CFC9C(v8);
  }
}

uint64_t sub_1003CFF2C()
{
  v0[2] = v0;
  v1 = type metadata accessor for Logger();
  v0[11] = v1;
  v0[12] = *(v1 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003D001C, 0);
}

uint64_t sub_1003D001C()
{
  v1 = v0[14];
  v16 = v0[12];
  v17 = v0[11];
  v0[2] = v0;
  v2 = sub_1003CFB5C();
  v3 = *(v16 + 16);
  v0[15] = v3;
  v0[16] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v0[17] = sub_10025C9B0(&unk_1006D7720);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v12 = sub_1002641E8(0);
    v13 = sub_1002641E8(0);
    *(v15 + 56) = buf;
    *(v15 + 64) = v12;
    *(v15 + 72) = v13;
    sub_10026423C(0, (v15 + 56));
    sub_10026423C(0, (v15 + 56));
    *(v15 + 80) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 56;
    v14[3] = v15 + 64;
    v14[4] = v15 + 72;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();

    _os_log_impl(&_mh_execute_header, v19, v18, "Fetching sharing permissions", buf, 2u);
    sub_10026429C(v12);
    sub_10026429C(v13);
    UnsafeMutablePointer.deallocate()();
  }

  *(v15 + 144) = 0;
  v8 = *(v15 + 112);
  v9 = *(v15 + 88);
  v7 = *(v15 + 96);
  _objc_release(v19);
  v4 = *(v7 + 8);
  *(v15 + 152) = v4;
  *(v15 + 160) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v8, v9);
  type metadata accessor for DSBlockingController();
  *(v15 + 168) = static DSBlockingController.sharedInstance.getter();
  v10 = (&async function pointer to dispatch thunk of DSBlockingController.prefetchSharing() + async function pointer to dispatch thunk of DSBlockingController.prefetchSharing());
  v5 = swift_task_alloc();
  *(v15 + 176) = v5;
  *v5 = *(v15 + 16);
  v5[1] = sub_1003D0400;

  return v10();
}

uint64_t sub_1003D0400()
{
  *(*v0 + 16) = *v0;

  return _swift_task_switch(sub_1003D0538, 0);
}

uint64_t sub_1003D0538()
{
  v14 = *(v0 + 120);
  v1 = *(v0 + 104);
  v13 = *(v0 + 88);
  *(v0 + 16) = v0;
  v2 = sub_1003CFB5C();
  v14(v1, v2, v13);
  v16 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v17 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v16, v15))
  {
    v3 = *(v0 + 144);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v10 = sub_1002641E8(0);
    v11 = sub_1002641E8(0);
    *(v0 + 24) = buf;
    *(v0 + 32) = v10;
    *(v0 + 40) = v11;
    sub_10026423C(0, (v0 + 24));
    sub_10026423C(0, (v0 + 24));
    *(v0 + 48) = v17;
    v12 = swift_task_alloc();
    v12[2] = v0 + 24;
    v12[3] = v0 + 32;
    v12[4] = v0 + 40;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v16, v15, "Completed fetching sharing permissions", buf, 2u);
    sub_10026429C(v10);
    sub_10026429C(v11);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = *(v0 + 152);
  v8 = *(v0 + 104);
  v6 = *(v0 + 88);
  _objc_release(v16);
  v7(v8, v6);

  v5 = *(*(v0 + 16) + 8);

  return v5();
}

uint64_t sub_1003D0884()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_10025FAC4;

  return sub_1003CFF2C();
}

uint64_t sub_1003D09AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v28 = &unk_1005093D0;
  ObjectType = swift_getObjectType();
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v35 = (*(*(sub_10025C9B0(&qword_1006D7ED8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v23 - v35;
  v42 = __chkstk_darwin(v34);
  v43 = v6;
  v41 = v7 & 1;
  v39 = v8;
  v40 = v9;
  v38 = v5;
  v37 = sub_1003CFC34();
  v26 = v37 == 0;
  v25 = v26;
  sub_100268928();
  if (v25)
  {
    MFSafetyCheckWhenBlocking.prefetchSharing()();
  }

  v24 = 0;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v36, 1);
  _objc_retain(v27);

  v11 = swift_allocObject();
  v12 = v27;
  v13 = v34;
  v14 = v30;
  v15 = v32;
  v16 = v33;
  v17 = v31;
  v18 = ObjectType;
  v19 = v24;
  v20 = v36;
  v21 = v28;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  *(v11 + 48) = v14;
  *(v11 + 56) = v15;
  *(v11 + 64) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = v18;
  sub_1002C7DB4(v19, v19, v20, v21, v11, &type metadata for () + 8);
}

uint64_t sub_1003D0C00(void *a1, void (*a2)(void, id), uint64_t a3)
{
  v36 = a1;
  v30 = a2;
  v29 = a3;
  v38 = sub_1003D2F88;
  v42 = sub_10026EE84;
  v44 = sub_10026434C;
  v46 = sub_10026434C;
  v49 = sub_10026EF2C;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v28 = 0;
  v35 = type metadata accessor for Logger();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v31 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = v20 - v31;
  v32 = v20 - v31;
  v62 = __chkstk_darwin(v36);
  v60 = v4;
  v61 = v5;
  v6 = sub_1003CFB5C();
  (*(v33 + 16))(v3, v6, v35);
  _objc_retain(v36);
  v40 = 7;
  v41 = swift_allocObject();
  *(v41 + 16) = v36;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  v37 = 17;
  v45 = swift_allocObject();
  *(v45 + 16) = 34;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v39 = 32;
  v7 = swift_allocObject();
  v8 = v41;
  v43 = v7;
  *(v7 + 16) = v38;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v43;
  v50 = v9;
  *(v9 + 16) = v42;
  *(v9 + 24) = v10;
  v52 = sub_10025C9B0(&unk_1006D7720);
  v48 = _allocateUninitializedArray<A>(_:)();
  v51 = v11;

  v12 = v45;
  v13 = v51;
  *v51 = v44;
  v13[1] = v12;

  v14 = v47;
  v15 = v51;
  v51[2] = v46;
  v15[3] = v14;

  v16 = v50;
  v17 = v51;
  v51[4] = v49;
  v17[5] = v16;
  sub_1002612B0();

  if (os_log_type_enabled(v53, v54))
  {
    v18 = v28;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v20[3] = sub_10025C9B0(&qword_1006D7290);
    v22 = sub_1002641E8(0);
    v23 = sub_1002641E8(1);
    v24 = &v59;
    v59 = v21;
    v25 = &v58;
    v58 = v22;
    v26 = &v57;
    v57 = v23;
    sub_10026423C(2, &v59);
    sub_10026423C(1, v24);
    v55 = v44;
    v56 = v45;
    sub_100264250(&v55, v24, v25, v26);
    v27 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v55 = v46;
      v56 = v47;
      sub_100264250(&v55, &v59, &v58, &v57);
      v20[1] = 0;
      v55 = v49;
      v56 = v50;
      sub_100264250(&v55, &v59, &v58, &v57);
      _os_log_impl(&_mh_execute_header, v53, v54, "Failed while trying to surface Safety Check when Blocking view, due to error: %{public}s", v21, 0xCu);
      sub_10026429C(v22);
      sub_10026429C(v23);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v53);
  (*(v33 + 8))(v32, v35);

  _objc_retain(v36);
  v30(0, v36);
  _objc_release(v36);
}

uint64_t sub_1003D1264(void *a1)
{
  v2 = [a1 ef_publicDescription];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v2);
  return v3;
}

uint64_t sub_1003D12C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v19;
  *(v8 + 369) = v18 & 1;
  *(v8 + 224) = a8;
  *(v8 + 216) = a7;
  *(v8 + 208) = a6;
  *(v8 + 200) = a5;
  *(v8 + 192) = a4;
  *(v8 + 48) = v8;
  *(v8 + 56) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 368) = 0;
  *(v8 + 72) = 0;
  *(v8 + 152) = 0;
  sub_10025C9B0(&qword_1006DB298);
  *(v8 + 240) = swift_task_alloc();
  v9 = type metadata accessor for SafetyCheckWhenBlockingError();
  *(v8 + 248) = v9;
  *(v8 + 256) = *(v9 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 288) = v10;
  *(v8 + 296) = *(v10 - 8);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 56) = a4;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 368) = v18 & 1;

  return _swift_task_switch(sub_1003D1574, 0);
}

uint64_t sub_1003D1574()
{
  *(v0 + 48) = v0;
  *(v0 + 64) = sub_1003CFC34();
  if (*(v0 + 64))
  {
    v4 = v8[8];
    v8[41] = v4;

    sub_100268928();
    v3 = swift_task_alloc();
    v8[42] = v3;
    *v3 = v8[6];
    v3[1] = sub_1003D179C;

    return Task<>.value.getter(v5, v4, &type metadata for () + 8);
  }

  else
  {
    sub_100268928();
    v6 = v8[25];

    v7 = (v6 + *v6);
    v1 = swift_task_alloc();
    v8[43] = v1;
    *v1 = v8[6];
    v1[1] = sub_1003D1A00;

    return v7();
  }
}

uint64_t sub_1003D179C()
{
  *(*v0 + 48) = *v0;

  return _swift_task_switch(sub_1003D18B4, 0);
}

uint64_t sub_1003D18B4()
{
  *(v0 + 48) = v0;

  v3 = *(v0 + 200);

  v5 = (v3 + *v3);
  v1 = swift_task_alloc();
  *(v4 + 344) = v1;
  *v1 = *(v4 + 48);
  v1[1] = sub_1003D1A00;

  return v5();
}

uint64_t sub_1003D1A00(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[44] = a1;
  v5[45] = v1;

  if (v1)
  {
    v3 = sub_1003D2404;
  }

  else
  {
    v3 = sub_1003D1B70;
  }

  return _swift_task_switch(v3, 0);
}

uint64_t sub_1003D1B70()
{
  v1 = *(v0 + 352);
  *(v0 + 48) = v0;
  if (!v1)
  {
    v4 = *(v37 + 320);
    v27 = *(v37 + 288);
    v26 = *(v37 + 296);

    v5 = sub_1003CFB5C();
    (*(v26 + 16))(v4, v5, v27);
    v29 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    sub_10025C9B0(&unk_1006D7720);
    v30 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v29, v28))
    {
      v8 = *(v37 + 360);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v15 = sub_1002641E8(0);
      v16 = sub_1002641E8(0);
      *(v37 + 120) = buf;
      *(v37 + 128) = v15;
      *(v37 + 136) = v16;
      sub_10026423C(0, (v37 + 120));
      sub_10026423C(0, (v37 + 120));
      *(v37 + 144) = v30;
      v17 = swift_task_alloc();
      v17[2] = v37 + 120;
      v17[3] = v37 + 128;
      v17[4] = v37 + 136;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v8)
      {
      }

      _os_log_impl(&_mh_execute_header, v29, v28, "User does not share resources with contact being blocked", buf, 2u);
      sub_10026429C(v15);
      sub_10026429C(v16);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v11 = *(v37 + 320);
    v12 = *(v37 + 288);
    v13 = *(v37 + 216);
    v10 = *(v37 + 296);
    _objc_release(v29);
    (*(v10 + 8))(v11, v12);

    v13(0);

    goto LABEL_14;
  }

  v31 = *(v37 + 352);
  v2 = *(v37 + 312);
  v33 = *(v37 + 288);
  v32 = *(v37 + 296);
  *(v37 + 152) = v31;

  v3 = sub_1003CFB5C();
  (*(v32 + 16))(v2, v3, v33);
  v35 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  sub_10025C9B0(&unk_1006D7720);
  v36 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v35, v34))
  {
    v6 = *(v37 + 360);
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v23 = sub_1002641E8(0);
    v24 = sub_1002641E8(0);
    *(v37 + 160) = v22;
    *(v37 + 168) = v23;
    *(v37 + 176) = v24;
    sub_10026423C(0, (v37 + 160));
    sub_10026423C(0, (v37 + 160));
    *(v37 + 184) = v36;
    v25 = swift_task_alloc();
    v25[2] = v37 + 160;
    v25[3] = v37 + 168;
    v25[4] = v37 + 176;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (!v6)
    {

      _os_log_impl(&_mh_execute_header, v35, v34, "User does share resources with contact being blocked so present safety check view", v22, 2u);
      sub_10026429C(v23);
      sub_10026429C(v24);
      UnsafeMutablePointer.deallocate()();

      goto LABEL_9;
    }
  }

LABEL_9:
  v19 = *(v37 + 312);
  v20 = *(v37 + 288);
  v21 = *(v37 + 216);
  v18 = *(v37 + 296);
  _objc_release(v35);
  (*(v18 + 8))(v19, v20);

  _objc_retain(v31);
  v21(v31, 0);
  _objc_release(v31);

  _objc_release(v31);
LABEL_14:

  v9 = *(*(v37 + 48) + 8);

  return v9();
}

uint64_t sub_1003D2404()
{
  v46 = v0[45];
  v0[6] = v0;

  swift_errorRetain();
  v0[9] = v46;
  swift_errorRetain();
  v0[10] = v46;
  sub_10025C9B0(&unk_1006DCA70);
  if (swift_dynamicCast())
  {
    (*(*(v45 + 256) + 56))(*(v45 + 240), 0, 1, *(v45 + 248));
  }

  else
  {
    (*(*(v45 + 256) + 56))(*(v45 + 240), 1, 1, *(v45 + 248));
  }

  if ((*(*(v45 + 256) + 48))(*(v45 + 240), 1, *(v45 + 248)) == 1)
  {
    v43 = *(v45 + 224);
    v42 = *(v45 + 216);
    sub_1003D3F1C(*(v45 + 240));
    swift_errorRetain();
    v44 = _convertErrorToNSError(_:)();
    sub_1003D0C00(v44, v42, v43);
    _objc_release(v44);
  }

  else
  {
    v40 = *(v45 + 280);
    v36 = *(v45 + 264);
    v39 = *(v45 + 248);
    v38 = *(v45 + 256);
    v35 = *(v38 + 32);
    v35();
    v37 = *(v38 + 16);
    (v37)(v40, v36, v39);
    v41 = (*(v38 + 88))(v40, v39);
    if (v41 == enum case for SafetyCheckWhenBlockingError.fetchNeeded(_:) || v41 == enum case for SafetyCheckWhenBlockingError.fetchInProgress(_:))
    {
      if (*(v45 + 369))
      {
        v31 = *(v45 + 272);
        v30 = *(v45 + 248);
        v33 = *(v45 + 224);
        v32 = *(v45 + 216);
        v37();
        sub_1003D3FC4();
        swift_allocError();
        (v35)(v3, v31, v30);
        v34 = _convertErrorToNSError(_:)();
        sub_1003D0C00(v34, v32, v33);
        _objc_release(v34);
      }

      else
      {
        v4 = *(v45 + 304);
        v26 = *(v45 + 288);
        v25 = *(v45 + 296);
        v5 = sub_1003CFB5C();
        (*(v25 + 16))(v4, v5, v26);
        oslog = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();
        sub_10025C9B0(&unk_1006D7720);
        v29 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(oslog, v27))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v22 = sub_1002641E8(0);
          v23 = sub_1002641E8(0);
          *(v45 + 88) = buf;
          *(v45 + 96) = v22;
          *(v45 + 104) = v23;
          sub_10026423C(0, (v45 + 88));
          sub_10026423C(0, (v45 + 88));
          *(v45 + 112) = v29;
          v24 = swift_task_alloc();
          v24[2] = v45 + 88;
          v24[3] = v45 + 96;
          v24[4] = v45 + 104;
          sub_10025C9B0(&qword_1006D72C0);
          sub_10026E6E0();
          Sequence.forEach(_:)();

          _os_log_impl(&_mh_execute_header, oslog, v27, "Need to fetch sharing permissions again and re-try presenting safety check view if needed", buf, 2u);
          sub_10026429C(v22);
          sub_10026429C(v23);
          UnsafeMutablePointer.deallocate()();
        }

        v15 = *(v45 + 304);
        v16 = *(v45 + 288);
        v20 = *(v45 + 224);
        v19 = *(v45 + 216);
        v18 = *(v45 + 208);
        v17 = *(v45 + 200);
        v14 = *(v45 + 296);
        _objc_release(oslog);
        (*(v14 + 8))(v15, v16);
        sub_1003CFC9C(0);
        sub_1003D09AC(v17, v18, 1, v19, v20);
      }
    }

    else
    {
      v12 = *(v45 + 280);
      v7 = *(v45 + 272);
      v13 = *(v45 + 248);
      v9 = *(v45 + 224);
      v8 = *(v45 + 216);
      v11 = *(v45 + 256);
      v37();
      sub_1003D3FC4();
      swift_allocError();
      (v35)(v6, v7, v13);
      v10 = _convertErrorToNSError(_:)();
      sub_1003D0C00(v10, v8, v9);
      _objc_release(v10);

      (*(v11 + 8))(v12, v13);
    }

    (*(*(v45 + 256) + 8))(*(v45 + 264), *(v45 + 248));
  }

  v1 = *(*(v45 + 48) + 8);

  return v1();
}

uint64_t sub_1003D2E5C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_1003D12C0(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t MFSafetyCheckWhenBlocking.presentSafetyCheckIfNeeded(for:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  _objc_retain(a1);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v3 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  sub_1003D09AC(&unk_1005093E0, v9, v3 & 1, sub_1003D3E50, v8);
}

uint64_t sub_1003D30B0(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  return _swift_task_switch(sub_1003D30EC, 0);
}

uint64_t sub_1003D30EC()
{
  *(v0 + 16) = v0;
  type metadata accessor for DSBlockingController();
  *(v0 + 40) = static DSBlockingController.sharedInstance.getter();
  v5 = (&async function pointer to dispatch thunk of DSBlockingController.block(contact:) + async function pointer to dispatch thunk of DSBlockingController.block(contact:));
  v1 = swift_task_alloc();
  v4[6] = v1;
  *v1 = v4[2];
  v1[1] = sub_1003D31D4;
  v2 = v4[4];

  return v5(v2);
}

uint64_t sub_1003D31D4(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003D3378, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_1003D3378()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_1003D3418(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{

  a3(a1, a2);
}

uint64_t MFSafetyCheckWhenBlocking.presentSafetyCheckIfNeeded(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10025C9B0(&qword_1006D62A8);
  type metadata accessor for Handle();
  sub_1002687A0();
  v9 = Sequence.compactMap<A>(_:)();

  v6 = swift_allocObject();
  *(v6 + 16) = v9;

  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v3 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  sub_1003D09AC(&unk_1005093F8, v6, v3 & 1, sub_1003D3E50, v5);
}

uint64_t sub_1003D3764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = a1;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v29 = type metadata accessor for Handle.Kind();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v8 - v32;
  v34 = *__chkstk_darwin(v28);
  v38 = v34;
  v35 = [v34 simpleAddress];
  if (v35)
  {
    v26 = v35;
    v21 = v35;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v2;
    _objc_release(v21);
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v19 = v25;
  v20 = v24;
  if (v25)
  {
    v17 = v20;
    v18 = v19;
    v14 = v19;
    v15 = v20;
    v36 = v20;
    v37 = v19;
    (*(v30 + 104))(v33, enum case for Handle.Kind.emailAddress(_:), v29);
    v5 = [v34 displayName];
    v16 = v5;
    if (v5)
    {
      v13 = v16;
      v8 = v16;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v6;
      _objc_release(v8);
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    Handle.init(type:value:displayName:)();
    v7 = type metadata accessor for Handle();
    return (*(*(v7 - 8) + 56))(v27, 0, 1);
  }

  else
  {
    v3 = type metadata accessor for Handle();
    return (*(*(v3 - 8) + 56))(v27, 1);
  }
}

uint64_t sub_1003D3A48(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  return _swift_task_switch(sub_1003D3A84, 0);
}

uint64_t sub_1003D3A84()
{
  *(v0 + 16) = v0;
  type metadata accessor for DSBlockingController();
  *(v0 + 40) = static DSBlockingController.sharedInstance.getter();
  v5 = (&async function pointer to dispatch thunk of DSBlockingController.block(handles:) + async function pointer to dispatch thunk of DSBlockingController.block(handles:));
  v1 = swift_task_alloc();
  v4[6] = v1;
  *v1 = v4[2];
  v1[1] = sub_1003D31D4;
  v2 = v4[4];

  return v5(v2);
}

id MFSafetyCheckWhenBlocking.init()()
{
  v3 = 0;
  *OBJC_IVAR____TtC10MobileMail25MFSafetyCheckWhenBlocking_fetchSharingTask = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for MFSafetyCheckWhenBlocking();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id MFSafetyCheckWhenBlocking.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFSafetyCheckWhenBlocking();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003D3D98()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100287C54;

  return sub_1003D30B0(v5);
}

uint64_t sub_1003D3E64()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100287C54;

  return sub_1003D3A48(v5);
}

uint64_t sub_1003D3F1C(uint64_t a1)
{
  v3 = type metadata accessor for SafetyCheckWhenBlockingError();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1003D3FC4()
{
  v2 = qword_1006DB2A0;
  if (!qword_1006DB2A0)
  {
    type metadata accessor for SafetyCheckWhenBlockingError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB2A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003D4044()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F01E8);
  sub_1000208F4(v1, qword_1006F01E8);
  sub_1003D40AC();
  return static Logger.mailUILogger<A>(for:)();
}

unint64_t sub_1003D40AC()
{
  v2 = qword_1006DB2A8;
  if (!qword_1006DB2A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB2A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1003D4110()
{
  if (qword_1006D6080 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F01E8);
}

uint64_t sub_1003D417C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003D4110();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1003D41E8(uint64_t a1)
{
  v2[81] = a1;
  v2[70] = v2;
  v2[71] = 0;
  v2[72] = 0;
  v2[73] = 0;
  v3 = type metadata accessor for MailAccountEntity();
  v2[82] = v3;
  v2[83] = *(v3 - 8);
  v2[84] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D9B50);
  v2[85] = swift_task_alloc();
  sub_10025C9B0(&unk_1006D7380);
  v2[86] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[87] = v4;
  v2[88] = *(v4 - 8);
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D7250);
  v2[91] = swift_task_alloc();
  v2[71] = a1;
  v2[72] = v1;

  return _swift_task_switch(sub_1003D4434, 0);
}

uint64_t sub_1003D4434()
{
  v75 = v0;
  v0[70] = v0;
  sub_1003D40AC();
  v69 = sub_10025C704();
  v0[73] = v69;
  sub_10043CD64(v0 + 36);
  memcpy(v0 + 19, v0 + 36, 0x88uLL);
  if (sub_1003D567C(v0 + 19) == 1)
  {
    v5 = *(v68 + 712);
    v41 = *(v68 + 696);
    v40 = *(v68 + 704);
    v6 = sub_1003D4110();
    (*(v40 + 16))(v5, v6, v41);
    log = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v44 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v42))
    {
      v36 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v37 = sub_1002641E8(0);
      v38 = sub_1002641E8(0);
      *(v68 + 616) = v36;
      *(v68 + 624) = v37;
      *(v68 + 632) = v38;
      sub_10026423C(0, (v68 + 616));
      sub_10026423C(0, (v68 + 616));
      *(v68 + 640) = v44;
      v39 = swift_task_alloc();
      v39[2] = v68 + 616;
      v39[3] = v68 + 624;
      v39[4] = v68 + 632;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, log, v42, "#SiriMail MSEmailModel sending a new email", v36, 2u);
      sub_10026429C(v37);
      sub_10026429C(v38);
      UnsafeMutablePointer.deallocate()();
    }

    v34 = *(v68 + 712);
    v35 = *(v68 + 696);
    v33 = *(v68 + 704);
    _objc_release(log);
    (*(v33 + 8))(v34, v35);
    [v69 setType:1];
  }

  else
  {
    v65 = *(v68 + 728);
    memcpy((v68 + 16), (v68 + 152), 0x88uLL);

    String.uniqueIdentifier.getter();

    sub_1003D5794();
    v66 = type metadata accessor for URL();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v65, 1) == 1)
    {
      v64 = 0;
    }

    else
    {
      v62 = *(v68 + 728);
      URL._bridgeToObjectiveC()(v68);
      v63 = v1;
      (*(v67 + 8))(v62, v66);
      v64 = v63;
    }

    v2 = *(v68 + 720);
    v53 = *(v68 + 696);
    v52 = *(v68 + 704);

    [v69 setReference:v64];
    _objc_release(v64);
    v3 = sub_1003D4110();
    (*(v52 + 16))(v2, v3, v53);
    sub_1003814E0((v68 + 16), (v68 + 424));
    v54 = swift_allocObject();
    memcpy((v54 + 16), (v68 + 16), 0x88uLL);
    oslog = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_1003D5964;
    *(v55 + 24) = v54;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_10026EE84;
    *(v58 + 24) = v55;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v59 = v4;

    *v59 = sub_10026434C;
    v59[1] = v56;

    v59[2] = sub_10026434C;
    v59[3] = v57;

    v59[4] = sub_10026EF2C;
    v59[5] = v58;
    sub_1002612B0();

    if (os_log_type_enabled(oslog, v61))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v50 = sub_1002641E8(0);
      v51 = sub_1002641E8(1);
      v70 = buf;
      v71 = v50;
      v72 = v51;
      sub_10026423C(2, &v70);
      sub_10026423C(1, &v70);
      v73 = sub_10026434C;
      v74 = v56;
      sub_100264250(&v73, &v70, &v71, &v72);
      v73 = sub_10026434C;
      v74 = v57;
      sub_100264250(&v73, &v70, &v71, &v72);
      v73 = sub_10026EF2C;
      v74 = v58;
      sub_100264250(&v73, &v70, &v71, &v72);
      _os_log_impl(&_mh_execute_header, oslog, v61, "#SiriMail MSEmailModel replying to email %s", buf, 0xCu);
      sub_10026429C(v50);
      sub_10026429C(v51);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v46 = *(v68 + 720);
    v47 = *(v68 + 696);
    v45 = *(v68 + 704);
    _objc_release(oslog);
    (*(v45 + 8))(v46, v47);
    [v69 setType:2];
    sub_1003816C8();
  }

  sub_10043CDE8();
  if (v7)
  {
    v31 = String._bridgeToObjectiveC()();

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  [v69 setSubject:?];
  _objc_release(v32);
  sub_10043CE50();
  Optional<A>.toString.getter();
  if (v8)
  {
    v29 = String._bridgeToObjectiveC()();

    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v27 = *(v68 + 680);
  v28 = *(v68 + 656);
  v26 = *(v68 + 664);
  sub_100285F68(*(v68 + 688));
  [v69 setBody:v30];
  _objc_release(v30);
  sub_100289A40();
  if ((*(v26 + 48))(v27, 1, v28))
  {
    v12 = v68 + 568;
    v13 = v68 + 576;
    v14 = v68 + 584;
    sub_100358F78(*(v68 + 680));
    v25 = 0;
  }

  else
  {
    v22 = *(v68 + 680);
    v23 = *(v68 + 672);
    sub_10034BE38(v22, v23);
    sub_100358F78(v22);
    sub_10034B178();
    v24 = v9;
    sub_10034BF38(v23);
    v25 = v24;
  }

  if (v25)
  {
    v20 = String._bridgeToObjectiveC()();

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  [v69 setSender:{v12, v13, v14}];
  _objc_release(v21);
  *(v68 + 592) = sub_10043CEA4();
  v18 = sub_10025C9B0(&qword_1006DA330);
  v19 = sub_1003D58DC();
  sub_10025E9D8(sub_1003D5874, 0, v18, &type metadata for String, &type metadata for Never, v19, &protocol witness table for Never, v48);
  sub_100264880();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v69 setTo:isa];
  _objc_release(isa);
  *(v68 + 600) = sub_1002895B8();
  sub_10025E9D8(sub_1003D5874, 0, v18, &type metadata for String, &type metadata for Never, v19, &protocol witness table for Never, v48);
  sub_100264880();
  v16 = Array._bridgeToObjectiveC()().super.isa;

  [v69 setCc:v16];
  _objc_release(v16);
  *(v68 + 608) = sub_1002896B4();
  sub_10025E9D8(sub_1003D5874, 0, v18, &type metadata for String, &type metadata for Never, v19, &protocol witness table for Never, v48);
  sub_100264880();
  v15 = Array._bridgeToObjectiveC()().super.isa;

  [v69 setBcc:v15];
  _objc_release(v15);

  v10 = *(*(v68 + 560) + 8);

  return v10(v69);
}

uint64_t sub_1003D567C(void *a1)
{
  v2 = -1;
  if (!HIDWORD(*a1))
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_1003D5794()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://message/", 0x17uLL, 1);
  static String.+ infix(_:_:)();

  URL.init(string:)();
}

uint64_t sub_1003D5824()
{
  sub_10037EE3C();
  v1 = String.partiallyRedactedString.getter();

  return v1;
}

uint64_t sub_1003D5874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10034F2C8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1003D58DC()
{
  v2 = qword_1006DB2B0;
  if (!qword_1006DB2B0)
  {
    sub_10025CAA4(&qword_1006DA330);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB2B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003D596C()
{
  v57 = v76;
  v20 = "Email thread to mute";
  v21 = "Email thread to mute";
  v31 = "Whether to mute or unmute thread notifications";
  v34 = "Whether to mute or unmute thread notifications";
  v56 = v77;
  memset(v77, 0, sizeof(v77));
  v0 = sub_10025C9B0(&unk_1006DB310);
  v9 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v53 = &v8 - v9;
  v45 = 0;
  v1 = type metadata accessor for InputConnectionBehavior();
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v55 = &v8 - v10;
  v2 = sub_10025C9B0(&unk_1006D7080);
  v11 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v28 = &v8 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v11);
  v54 = &v8 - v12;
  v13 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v51 = &v8 - v13;
  v14 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v39 = &v8 - v14;
  v15 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v38 = &v8 - v15;
  v16 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v36 = &v8 - v16;
  v41 = type metadata accessor for LocalizedStringResource();
  v24 = *(v41 - 8);
  v25 = v41 - 8;
  v17 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v50 = &v8 - v17;
  sub_10025C9B0(&unk_1006D7090);
  v4 = v57;
  v18 = v76;
  v76[0] = 0;
  v76[1] = 0;
  v57[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  sub_10000B074();
  sub_1003DC7F0();
  v60 = AppDependency.__allocating_init(key:manager:)();

  v57[5] = v60;
  sub_10025C9B0(&unk_1006DB320);
  v46 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Thread", 6uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v32 = "AppIntents";
  v33 = 10;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v46 & 1);
  sub_100015CC0();
  sub_10025D410(v39);
  v73 = v21;
  v22 = 20;
  v74 = 20;
  v44 = 2;
  v75 = 2;
  v40 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v20, v22, v46 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v32, v33, v46 & 1);
  sub_100015CC0();
  sub_10025D410(v39);
  v70[2] = v21;
  v70[3] = v22;
  v71 = v44;
  v72 = v40 & 1 & v46;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v43 = *(v24 + 56);
  v42 = v24 + 56;
  v43(v51, v40, v46, v41);
  v27 = v70;
  v70[0] = 0;
  v70[1] = 0;
  v47 = type metadata accessor for IntentDialog();
  v5 = *(v47 - 8);
  v49 = *(v5 + 56);
  v48 = v5 + 56;
  v49(v54, v46);
  (v49)(v28, v46, v46, v47);
  v26 = sub_100341EC8();
  v29 = sub_1003A148C();
  sub_1003BD8F8(v55);
  v58 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v57[6] = v58;
  sub_10025C9B0(&qword_1006DB330);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mute", 4uLL, v46 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v32, v33, v46 & 1);
  sub_100015CC0();
  sub_10025D410(v39);
  v66 = v34;
  v35 = 46;
  v67 = 46;
  v68 = v44;
  v69 = v40 & 1 & v46;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v31, v35, v46 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v32, v33, v46 & 1);
  sub_100015CC0();
  sub_10025D410(v39);
  v62 = v34;
  v63 = v35;
  v64 = v44;
  v65 = v40 & 1 & v46;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v43(v51, v40, v46, v41);
  v52 = &v61;
  v61 = v44;
  v6 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v6 - 8) + 56))(v53, v46);
  (v49)(v54, v46, v46, v47);
  sub_1003424B8();
  sub_1003BD8F8(v55);
  v59 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();

  v57[7] = v59;
  sub_1002FE5E4();
  return v60;
}

uint64_t sub_1003D64D4()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_1003D654C()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_1003D65E4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v9 = "Mute or unmute notifications from an email thread.";
  v11 = "Mute or unmute notifications from an email thread.";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v5 - v5;
  v22 = 0;
  v6 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v16 = &v5 - v6;
  v7 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v15 = &v5 - v7;
  v8 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v13 = &v5 - v8;
  v19 = type metadata accessor for LocalizedStringResource();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v21 = &v5 - v10;
  v12 = 50;
  v23 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v2, 0x32uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v23 & 1);
  sub_100015CC0();
  sub_10025D410(v16);
  v26 = v11;
  v27 = v12;
  v28 = 2;
  v24 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, v23, v23, v19);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v3 = type metadata accessor for IntentDescription();
  return (*(*(v3 - 8) + 56))(v25, v24, v23);
}

uint64_t sub_1003D692C@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Mute or unmute notifications from an email thread.";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mute Thread", 0xBuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 50;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003D6B10()
{

  AppDependency.wrappedValue.getter();

  return v1;
}

void sub_1003D6B7C(void *a1)
{

  _objc_retain(a1);
  AppDependency.wrappedValue.setter();

  _objc_release(a1);
}

uint64_t sub_1003D6C10()
{

  v1 = AppDependency.projectedValue.getter();

  return v1;
}

uint64_t sub_1003D6C78()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

uint64_t sub_1003D6CE0()
{

  IntentParameter.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_1003D6D50()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_1003D6DCC()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

uint64_t sub_1003D6E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[94] = a4;
  v4[93] = a3;
  v4[92] = a2;
  v4[91] = a1;
  v4[58] = v4;
  v4[34] = 0;
  v4[35] = 0;
  v4[36] = 0;
  v4[59] = 0;
  v5 = type metadata accessor for Logger();
  v4[95] = v5;
  v4[96] = *(v5 - 8);
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[34] = a2;
  v4[35] = a3;
  v4[36] = a4;
  type metadata accessor for MainActor();
  v4[103] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[104] = v11;
  v4[105] = v6;

  return _swift_task_switch(sub_1003D7004, v11);
}

uint64_t sub_1003D7004()
{
  *(v0 + 464) = v0;
  v11 = sub_1003D6B10();
  sub_10035277C();
  *(v0 + 848) = 0;
  v4 = v10[94];
  v6 = v10[93];
  v5 = v10[92];
  _objc_release(v11);
  v10[37] = v5;
  v10[38] = v6;
  v10[39] = v4;
  v9 = sub_1003D64D4();
  v7 = v1;
  v10[107] = v1;
  v8 = sub_1003D6B10();
  v10[108] = v8;
  v2 = swift_task_alloc();
  v10[109] = v2;
  v10[110] = sub_1003D9450();
  *v2 = v10[58];
  v2[1] = sub_1003D727C;

  return sub_1004606E0(v9, v7, v8);
}

uint64_t sub_1003D727C(uint64_t a1)
{
  v6 = *v1;
  v5 = *v1;
  v4 = *(*v1 + 864);
  *(v5 + 464) = *v1;
  *(v5 + 888) = a1;

  v2 = *(v6 + 832);

  return _swift_task_switch(sub_1003D7400, v2);
}

uint64_t sub_1003D7400()
{
  v1 = *(v0 + 888);
  *(v0 + 464) = v0;
  if (!v1)
  {
    v29 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    swift_allocError();
    (*(*(v29 - 8) + 104))(v28, enum case for ToolboxErrors.noMessagesFound(_:));
    swift_willThrow();

    v27 = *(*(v124 + 464) + 8);

    return v27();
  }

  v122 = *(v124 + 888);
  *(v124 + 472) = v122;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v123 = [v122 conversationNotificationLevel];
  swift_unknownObjectRelease();
  *(v124 + 480) = 1;
  *(v124 + 488) = v123;
  type metadata accessor for EMConversationNotificationLevel();
  sub_100267894();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    *(v124 + 496) = 2;
    *(v124 + 504) = v123;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v11 = *(v124 + 800);
      v84 = *(v124 + 760);
      v83 = *(v124 + 768);
      v12 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v83 + 16))(v11, v12, v84);
      log = Logger.logObject.getter();
      v85 = static os_log_type_t.debug.getter();
      sub_10025C9B0(&unk_1006D7720);
      v87 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v85))
      {
        v13 = *(v124 + 848);
        v79 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v80 = sub_1002641E8(0);
        v81 = sub_1002641E8(0);
        *(v124 + 632) = v79;
        *(v124 + 640) = v80;
        *(v124 + 648) = v81;
        sub_10026423C(0, (v124 + 632));
        sub_10026423C(0, (v124 + 632));
        *(v124 + 656) = v87;
        v82 = swift_task_alloc();
        v82[2] = v124 + 632;
        v82[3] = v124 + 640;
        v82[4] = v124 + 648;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        if (v13)
        {
        }

        _os_log_impl(&_mh_execute_header, log, v85, "#MuteThreadIntent - do nothing, thread is notifying and therefore we should not manipulate its mute state.", v79, 2u);
        sub_10026429C(v80);
        sub_10026429C(v81);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v77 = *(v124 + 800);
      v78 = *(v124 + 760);
      v76 = *(v124 + 768);
      _objc_release(log);
      (*(v76 + 8))(v77, v78);
    }

    else
    {
      _allocateUninitializedArray<A>(_:)();
      sub_100266E7C();
      SetAlgebra<>.init(arrayLiteral:)();
      *(v124 + 520) = *(v124 + 512);
      *(v124 + 528) = v123;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        if (sub_1003D6CE0())
        {
          v14 = *(v124 + 792);
          v72 = *(v124 + 760);
          v71 = *(v124 + 768);
          v15 = Logger.appIntentLogger.unsafeMutableAddressor();
          (*(v71 + 16))(v14, v15, v72);
          v74 = Logger.logObject.getter();
          v73 = static os_log_type_t.debug.getter();
          sub_10025C9B0(&unk_1006D7720);
          v75 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v74, v73))
          {
            v16 = *(v124 + 848);
            v67 = static UnsafeMutablePointer.allocate(capacity:)();
            sub_10025C9B0(&qword_1006D7290);
            v68 = sub_1002641E8(0);
            v69 = sub_1002641E8(0);
            *(v124 + 600) = v67;
            *(v124 + 608) = v68;
            *(v124 + 616) = v69;
            sub_10026423C(0, (v124 + 600));
            sub_10026423C(0, (v124 + 600));
            *(v124 + 624) = v75;
            v70 = swift_task_alloc();
            v70[2] = v124 + 600;
            v70[3] = v124 + 608;
            v70[4] = v124 + 616;
            sub_10025C9B0(&qword_1006D72C0);
            sub_10026E6E0();
            Sequence.forEach(_:)();
            if (v16)
            {
            }

            _os_log_impl(&_mh_execute_header, v74, v73, "#MuteThreadIntent - thread is not muted or notifying and user asked to mute, muting thread...", v67, 2u);
            sub_10026429C(v68);
            sub_10026429C(v69);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v55 = *(v124 + 792);
          v56 = *(v124 + 760);
          v62 = *(v124 + 752);
          v61 = *(v124 + 744);
          v60 = *(v124 + 736);
          v54 = *(v124 + 768);
          _objc_release(v74);
          (*(v54 + 8))(v55, v56);
          sub_1003D9638();
          sub_10025C9B0(&unk_1006D7220);
          v57 = _allocateUninitializedArray<A>(_:)();
          v58 = v17;
          swift_unknownObjectRetain();
          *v58 = v122;
          sub_1002612B0();
          v59 = sub_1003D6B10();
          v63 = sub_100353058();
          _objc_release(v59);
          *(v124 + 320) = v60;
          *(v124 + 328) = v61;
          *(v124 + 336) = v62;
          v64 = sub_10028E57C();
          *(v124 + 344) = v60;
          *(v124 + 352) = v61;
          *(v124 + 360) = v62;
          v18 = sub_10028E5B4();
          v66 = sub_10027D364(v57, v63, v64, v18);
          *(v124 + 904) = v66;
          *(v124 + 16) = *(v124 + 464);
          *(v124 + 56) = v124 + 432;
          *(v124 + 24) = sub_1003D91A0;
          v65 = swift_continuation_init();
          *(v124 + 200) = sub_10025C9B0(&unk_1006D7CE0);
          *(v124 + 176) = v65;
          *(v124 + 144) = _NSConcreteStackBlock;
          *(v124 + 152) = 1107296256;
          *(v124 + 156) = 0;
          *(v124 + 160) = sub_10027D41C;
          *(v124 + 168) = &unk_10065DAF0;
          [v66 performInteractionWithCompletion:?];
          v10 = v124 + 16;

          return _swift_continuation_await(v10);
        }

        v19 = *(v124 + 784);
        v50 = *(v124 + 760);
        v49 = *(v124 + 768);
        v20 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v49 + 16))(v19, v20, v50);
        v52 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        sub_10025C9B0(&unk_1006D7720);
        v53 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v52, v51))
        {
          v21 = *(v124 + 848);
          v45 = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v46 = sub_1002641E8(0);
          v47 = sub_1002641E8(0);
          *(v124 + 568) = v45;
          *(v124 + 576) = v46;
          *(v124 + 584) = v47;
          sub_10026423C(0, (v124 + 568));
          sub_10026423C(0, (v124 + 568));
          *(v124 + 592) = v53;
          v48 = swift_task_alloc();
          v48[2] = v124 + 568;
          v48[3] = v124 + 576;
          v48[4] = v124 + 584;
          sub_10025C9B0(&qword_1006D72C0);
          sub_10026E6E0();
          Sequence.forEach(_:)();
          if (v21)
          {
          }

          _os_log_impl(&_mh_execute_header, v52, v51, "#MuteThreadIntent - thread is already unmuted, do nothing.", v45, 2u);
          sub_10026429C(v46);
          sub_10026429C(v47);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        v43 = *(v124 + 784);
        v44 = *(v124 + 760);
        v42 = *(v124 + 768);
        _objc_release(v52);
        (*(v42 + 8))(v43, v44);
      }

      else
      {
        v22 = *(v124 + 776);
        v38 = *(v124 + 760);
        v37 = *(v124 + 768);
        v23 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v37 + 16))(v22, v23, v38);
        v40 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        sub_10025C9B0(&unk_1006D7720);
        v41 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v40, v39))
        {
          v24 = *(v124 + 848);
          v33 = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v34 = sub_1002641E8(0);
          v35 = sub_1002641E8(0);
          *(v124 + 536) = v33;
          *(v124 + 544) = v34;
          *(v124 + 552) = v35;
          sub_10026423C(0, (v124 + 536));
          sub_10026423C(0, (v124 + 536));
          *(v124 + 560) = v41;
          v36 = swift_task_alloc();
          v36[2] = v124 + 536;
          v36[3] = v124 + 544;
          v36[4] = v124 + 552;
          sub_10025C9B0(&qword_1006D72C0);
          sub_10026E6E0();
          Sequence.forEach(_:)();
          if (v24)
          {
          }

          _os_log_impl(&_mh_execute_header, v40, v39, "#MuteThreadIntent - do nothing", v33, 2u);
          sub_10026429C(v34);
          sub_10026429C(v35);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        v31 = *(v124 + 776);
        v32 = *(v124 + 760);
        v30 = *(v124 + 768);
        _objc_release(v40);
        (*(v30 + 8))(v31, v32);
      }
    }

LABEL_47:
    *(v124 + 416) = sub_1003D64D4();
    *(v124 + 424) = v26;
    sub_100341EC8();
    static IntentResult.result<A>(value:)();
    sub_100268744();
    swift_unknownObjectRelease();

    v27 = *(*(v124 + 464) + 8);

    return v27();
  }

  if (sub_1003D6CE0())
  {
    v2 = *(v124 + 816);
    v118 = *(v124 + 760);
    v117 = *(v124 + 768);
    v3 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v117 + 16))(v2, v3, v118);
    v120 = Logger.logObject.getter();
    v119 = static os_log_type_t.debug.getter();
    sub_10025C9B0(&unk_1006D7720);
    v121 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v120, v119))
    {

      goto LABEL_9;
    }

    v4 = *(v124 + 848);
    v113 = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v114 = sub_1002641E8(0);
    v115 = sub_1002641E8(0);
    *(v124 + 696) = v113;
    *(v124 + 704) = v114;
    *(v124 + 712) = v115;
    sub_10026423C(0, (v124 + 696));
    sub_10026423C(0, (v124 + 696));
    *(v124 + 720) = v121;
    v116 = swift_task_alloc();
    v116[2] = v124 + 696;
    v116[3] = v124 + 704;
    v116[4] = v124 + 712;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (!v4)
    {

      _os_log_impl(&_mh_execute_header, v120, v119, "#MuteThreadIntent - thread is already muted, do nothing.", v113, 2u);
      sub_10026429C(v114);
      sub_10026429C(v115);
      UnsafeMutablePointer.deallocate()();

LABEL_9:
      v111 = *(v124 + 816);
      v112 = *(v124 + 760);
      v110 = *(v124 + 768);
      _objc_release(v120);
      (*(v110 + 8))(v111, v112);
      goto LABEL_47;
    }
  }

  v5 = *(v124 + 808);
  v106 = *(v124 + 760);
  v105 = *(v124 + 768);
  v6 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v105 + 16))(v5, v6, v106);
  oslog = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();
  sub_10025C9B0(&unk_1006D7720);
  v109 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v107))
  {
    v7 = *(v124 + 848);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v102 = sub_1002641E8(0);
    v103 = sub_1002641E8(0);
    *(v124 + 664) = buf;
    *(v124 + 672) = v102;
    *(v124 + 680) = v103;
    sub_10026423C(0, (v124 + 664));
    sub_10026423C(0, (v124 + 664));
    *(v124 + 688) = v109;
    v104 = swift_task_alloc();
    v104[2] = v124 + 664;
    v104[3] = v124 + 672;
    v104[4] = v124 + 680;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (v7)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v107, "#MuteThreadIntent - thread is muted and user asked to unmute, setting notify on thread...", buf, 2u);
    sub_10026429C(v102);
    sub_10026429C(v103);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v89 = *(v124 + 808);
  v90 = *(v124 + 760);
  v96 = *(v124 + 752);
  v95 = *(v124 + 744);
  v94 = *(v124 + 736);
  v88 = *(v124 + 768);
  _objc_release(oslog);
  (*(v88 + 8))(v89, v90);
  sub_1003D9638();
  sub_10025C9B0(&unk_1006D7220);
  v91 = _allocateUninitializedArray<A>(_:)();
  v92 = v8;
  swift_unknownObjectRetain();
  *v92 = v122;
  sub_1002612B0();
  v93 = sub_1003D6B10();
  v97 = sub_100353058();
  _objc_release(v93);
  *(v124 + 368) = v94;
  *(v124 + 376) = v95;
  *(v124 + 384) = v96;
  v98 = sub_10028E57C();
  *(v124 + 392) = v94;
  *(v124 + 400) = v95;
  *(v124 + 408) = v96;
  v9 = sub_10028E5B4();
  v100 = sub_10027D364(v91, v97, v98, v9);
  *(v124 + 896) = v100;
  *(v124 + 80) = *(v124 + 464);
  *(v124 + 120) = v124 + 448;
  *(v124 + 88) = sub_1003D8EF0;
  v99 = swift_continuation_init();
  *(v124 + 264) = sub_10025C9B0(&unk_1006D7CE0);
  *(v124 + 240) = v99;
  *(v124 + 208) = _NSConcreteStackBlock;
  *(v124 + 216) = 1107296256;
  *(v124 + 220) = 0;
  *(v124 + 224) = sub_10027D41C;
  *(v124 + 232) = &unk_10065DB18;
  [v100 performInteractionWithCompletion:?];
  v10 = v124 + 80;

  return _swift_continuation_await(v10);
}

uint64_t sub_1003D8EF0()
{
  v3 = *v0;
  *(*v0 + 464) = *v0;
  v1 = *(v3 + 832);

  return _swift_task_switch(sub_1003D9008, v1);
}

uint64_t sub_1003D9008()
{
  v4 = *(v0 + 896);
  *(v0 + 464) = v0;
  _objc_release(*(v0 + 448));
  _objc_release(v4);
  *(v0 + 416) = sub_1003D64D4();
  *(v0 + 424) = v1;
  sub_100341EC8();
  static IntentResult.result<A>(value:)();
  sub_100268744();
  swift_unknownObjectRelease();

  v2 = *(*(v0 + 464) + 8);

  return v2();
}

uint64_t sub_1003D91A0()
{
  v3 = *v0;
  *(*v0 + 464) = *v0;
  v1 = *(v3 + 832);

  return _swift_task_switch(sub_1003D92B8, v1);
}

uint64_t sub_1003D92B8()
{
  v4 = *(v0 + 904);
  *(v0 + 464) = v0;
  _objc_release(*(v0 + 432));
  _objc_release(v4);
  *(v0 + 416) = sub_1003D64D4();
  *(v0 + 424) = v1;
  sub_100341EC8();
  static IntentResult.result<A>(value:)();
  sub_100268744();
  swift_unknownObjectRelease();

  v2 = *(*(v0 + 464) + 8);

  return v2();
}

unint64_t sub_1003D9450()
{
  v2 = qword_1006DB2B8;
  if (!qword_1006DB2B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB2B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003D94FC(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1003D6E34(a1, v6, v7, v8);
}

uint64_t sub_1003D95D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003D596C();
  *a1 = result;
  a1[1] = v2;
  a1[2] = v3;
  return result;
}

unint64_t sub_1003D9638()
{
  v2 = qword_1006DB2E0;
  if (!qword_1006DB2E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB2E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003D9730()
{
  v2 = qword_1006DB2F0;
  if (!qword_1006DB2F0)
  {
    sub_10025CAA4(&qword_1006DB2F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB2F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003D97B8(uint64_t a1)
{
  result = sub_10033D2A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003D97FC()
{
  v2 = qword_1006DB300;
  if (!qword_1006DB300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003D9890()
{
  v2 = qword_1006DB308;
  if (!qword_1006DB308)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB308);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003D99A0()
{
  v16 = "Email message draft to open";
  v41 = &v53;
  v53 = 0;
  v54 = 0;
  v39 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v37 = &v5 - v5;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v36 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v35 = &v5 - v7;
  v8 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v33 = &v5 - v8;
  v9 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v22 = &v5 - v9;
  v10 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v21 = &v5 - v10;
  v11 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v19 = &v5 - v11;
  v26 = type metadata accessor for LocalizedStringResource();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v12 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v32 = &v5 - v12;
  sub_10025C9B0(&unk_1006DCC10);
  v27 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Draft Message", 0xDuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = "AppIntents";
  v15 = 10;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v27 & 1);
  sub_100015CC0();
  sub_10025D410(v22);
  v50 = v16;
  v17 = 27;
  v51 = 27;
  v18 = 2;
  v52 = 2;
  v25 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_DRAFT_ENTITY_DESCRIPTION", 0x1DuLL, v27 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v14, v15, v27 & 1);
  sub_100015CC0();
  sub_10025D410(v22);
  v46 = v16;
  v47 = v17;
  v48 = v18;
  v49 = v25 & 1 & v27;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v23 + 56))(v33, v25, v27, v26);
  memset(__src, 0, sizeof(__src));
  v34 = __dst;
  memcpy(__dst, __src, sizeof(__dst));
  v28 = type metadata accessor for IntentDialog();
  v3 = *(v28 - 8);
  v30 = *(v3 + 56);
  v29 = v3 + 56;
  v30(v35, v27);
  (v30)(v36, v27, v27, v28);
  v31 = sub_10028D658();
  v38 = sub_1002B9D60();
  sub_1003BD8F8(v37);
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v53 = v43;
  sub_10025C9B0(&unk_1006D7090);
  v40 = v44;
  memset(v44, 0, sizeof(v44));
  sub_10000B074();
  sub_1003DC7F0();
  v42 = AppDependency.__allocating_init(key:manager:)();

  v54 = v42;
  sub_10027EB24();
  return v43;
}

void *sub_1003DA188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1;
  v7 = a2;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v5, sizeof(__dst));

  return memcpy(a3, __dst, 0x48uLL);
}

void *sub_1003DA214(void *a1, uint64_t a2, uint64_t a3)
{
  v6[11] = a1;
  v6[9] = a2;
  v6[10] = a3;

  sub_1002CD078(a1, v6);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10028D6D0();
  return result;
}

uint64_t sub_1003DA2BC@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Open an email message draft";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_DRAFT_DESCRIPTION", 0x16uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 27;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_1003DA5FC@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Open an email message draft";
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v6;
  v7 = 10;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open Draft", 0xAuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", v7, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 27;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003DA7E0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10025C9B0(&qword_1006DB338);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v26 = &v7 - v8;
  v19 = sub_10025C9B0(&unk_1006DB340);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v16 = &v7 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v10);
  v20 = &v7 - v11;
  v25 = sub_10033DD3C();
  v12 = 5;
  v24 = &unk_10065DCE8;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&unk_1006DB350);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v22 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v21, v16, v19);
  (*(v17 + 8))(v20, v19);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v22 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:)();
}

void (*sub_1003DAB04(void *a1, uint64_t a2))(void **a1)
{
  v4 = sub_100294700(0x30uLL);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_1003BBDE0;
}

uint64_t sub_1003DABB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[58] = a3;
  v3[57] = a2;
  v3[56] = a1;
  v3[37] = v3;
  v3[29] = 0;
  v3[30] = 0;
  v3[42] = 0;
  v3[43] = 0;
  v3[48] = 0;
  v3[50] = 0;
  v4 = type metadata accessor for Logger();
  v3[59] = v4;
  v3[60] = *(v4 - 8);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D7DF0);
  v3[64] = swift_task_alloc();
  v5 = type metadata accessor for MailMessageEntityID();
  v3[65] = v5;
  v3[66] = *(v5 - 8);
  v3[67] = swift_task_alloc();
  v3[29] = a2;
  v3[30] = a3;
  type metadata accessor for MainActor();
  v3[68] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[69] = v10;
  v3[70] = v6;

  return _swift_task_switch(sub_1003DADE4, v10);
}

uint64_t sub_1003DADE4()
{
  v1 = v0[58];
  v2 = v0[57];
  v0[37] = v0;
  v0[31] = v2;
  v0[32] = v1;
  v0[71] = sub_10028F794();
  v78 = sub_100286A40();
  if (v78)
  {
    *(v77 + 440) = &OBJC_PROTOCOL___ComposeCapable;
    v76 = swift_dynamicCastObjCProtocolConditional();
    if (v76)
    {
      v75 = v76;
    }

    else
    {
      _objc_release(v78);
      v75 = 0;
    }

    v74 = v75;
  }

  else
  {
    v74 = 0;
  }

  *(v77 + 576) = v74;
  if (!v74)
  {
    v12 = *(v77 + 488);
    v26 = *(v77 + 472);
    v25 = *(v77 + 480);
    v13 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v25 + 16))(v12, v13, v26);
    log = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v29 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v27))
    {
      v21 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v22 = sub_1002641E8(0);
      v23 = sub_1002641E8(0);
      *(v77 + 304) = v21;
      *(v77 + 312) = v22;
      *(v77 + 320) = v23;
      sub_10026423C(0, (v77 + 304));
      sub_10026423C(0, (v77 + 304));
      *(v77 + 328) = v29;
      v24 = swift_task_alloc();
      v24[2] = v77 + 304;
      v24[3] = v77 + 312;
      v24[4] = v77 + 320;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, log, v27, "Failed to find a scene capable of composing", v21, 2u);
      sub_10026429C(v22);
      sub_10026429C(v23);
      UnsafeMutablePointer.deallocate()();
    }

    v16 = *(v77 + 488);
    v17 = *(v77 + 472);
    v19 = *(v77 + 464);
    v18 = *(v77 + 456);
    v15 = *(v77 + 480);
    _objc_release(log);
    (*(v15 + 8))(v16, v17);
    sub_10028B33C();
    swift_allocError();
    v20 = v14;

    *(v20 + 24) = &unk_10065DCE8;
    *(v20 + 32) = sub_10033DD3C();
    *v20 = v18;
    *(v20 + 8) = v19;
    *(v20 + 40) = 0;
    swift_willThrow();

    v11 = *(*(v77 + 296) + 8);

    return v11();
  }

  v73 = *(v77 + 520);
  v72 = *(v77 + 512);
  v3 = *(v77 + 464);
  v4 = *(v77 + 456);
  v71 = *(v77 + 528);
  *(v77 + 336) = v74;
  sub_1003DA188(v4, v3, (v77 + 160));

  sub_10028D6D0();
  MailMessageEntityID.init(with:)();
  if ((*(v71 + 48))(v72, 1, v73) == 1)
  {
    v51 = *(v77 + 464);
    v52 = *(v77 + 456);
    sub_1002C1698(*(v77 + 512));
    sub_10028D4AC();
    sub_1003DA188(v52, v51, (v77 + 88));
    v47 = *(v77 + 88);
    v48 = *(v77 + 96);

    sub_10028D6D0();
    sub_1003DA188(v52, v51, (v77 + 16));
    v49 = sub_1002CC92C();
    v50 = v9;
    sub_10028D6D0();
    v53 = sub_1002BA97C();
    v54 = [v53 daemonInterface];
    _objc_release(v53);
    if (!v54)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v40 = *(v77 + 496);
    v43 = *(v77 + 472);
    v42 = *(v77 + 480);
    v39 = [v54 messageRepository];
    _objc_release(v54);
    v41 = sub_1003DC510(v47, v48, v49, v50, v39, 0);
    *(v77 + 344) = v41;
    v10 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v42 + 16))(v40, v10, v43);
    oslog = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    sub_10025C9B0(&unk_1006D7720);
    v46 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v44))
    {
      v35 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v36 = sub_1002641E8(0);
      v37 = sub_1002641E8(0);
      *(v77 + 352) = v35;
      *(v77 + 360) = v36;
      *(v77 + 368) = v37;
      sub_10026423C(0, (v77 + 352));
      sub_10026423C(0, (v77 + 352));
      *(v77 + 376) = v46;
      v38 = swift_task_alloc();
      v38[2] = v77 + 352;
      v38[3] = v77 + 360;
      v38[4] = v77 + 368;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v44, "#SiriMail OpenDraftIntent opening autosaved draft message", v35, 2u);
      sub_10026429C(v36);
      sub_10026429C(v37);
      UnsafeMutablePointer.deallocate()();
    }

    v31 = *(v77 + 496);
    v32 = *(v77 + 472);
    v34 = *(v77 + 464);
    v33 = *(v77 + 456);
    v30 = *(v77 + 480);
    _objc_release(oslog);
    (*(v30 + 8))(v31, v32);
    *(v77 + 264) = v33;
    *(v77 + 272) = v34;
    sub_100286C38(v74, v41);
    _objc_release(v41);
    static IntentResult.result<>()();
    swift_unknownObjectRelease();

    v11 = *(*(v77 + 296) + 8);

    return v11();
  }

  v5 = *(v77 + 504);
  v67 = *(v77 + 472);
  v66 = *(v77 + 480);
  (*(*(v77 + 528) + 32))(*(v77 + 536), *(v77 + 512), *(v77 + 520));
  v6 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v66 + 16))(v5, v6, v67);
  v69 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  sub_10025C9B0(&unk_1006D7720);
  v70 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v69, v68))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v63 = sub_1002641E8(0);
    v64 = sub_1002641E8(0);
    *(v77 + 408) = buf;
    *(v77 + 416) = v63;
    *(v77 + 424) = v64;
    sub_10026423C(0, (v77 + 408));
    sub_10026423C(0, (v77 + 408));
    *(v77 + 432) = v70;
    v65 = swift_task_alloc();
    v65[2] = v77 + 408;
    v65[3] = v77 + 416;
    v65[4] = v77 + 424;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();

    _os_log_impl(&_mh_execute_header, v69, v68, "#SiriMail OpenDraftIntent opening persisted draft message", buf, 2u);
    sub_10026429C(v63);
    sub_10026429C(v64);
    UnsafeMutablePointer.deallocate()();
  }

  v58 = *(v77 + 504);
  v59 = *(v77 + 472);
  v57 = *(v77 + 480);
  _objc_release(v69);
  (*(v57 + 8))(v58, v59);
  v60 = sub_1002BA97C();
  v61 = [v60 daemonInterface];
  _objc_release(v60);
  if (!v61)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v55 = [v61 messageRepository];
  _objc_release(v61);
  v56 = EMMessageRepository.message(forMailMessageEntityID:)();
  *(v77 + 584) = v56;
  _objc_release(v55);
  *(v77 + 384) = v56;
  *(v77 + 592) = sub_10028D4AC();
  _objc_retain(v56);
  v8 = swift_task_alloc();
  *(v77 + 600) = v8;
  *v8 = *(v77 + 296);
  v8[1] = sub_1003DBFB8;

  return sub_10028F080(v56);
}

uint64_t sub_1003DBFB8(uint64_t a1)
{
  v5 = *v1;
  v4 = *v1;
  *(v4 + 296) = *v1;
  *(v4 + 608) = a1;

  v2 = *(v5 + 552);

  return _swift_task_switch(sub_1003DC0FC, v2);
}

uint64_t sub_1003DC0FC()
{
  v1 = v0[73];
  v22 = v1;
  v0[37] = v0;
  _objc_retain(v1);
  v0[49] = [v22 subject];
  if (v0[49])
  {
    v14 = *(v21 + 584);
    v15 = *(v21 + 392);
    _objc_retain(v15);
    sub_10026A58C((v21 + 392));
    _objc_release(v14);
    v16 = [v15 subjectString];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v2;
    _objc_release(v15);
    _objc_release(v16);
    v19 = v17;
    v20 = v18;
  }

  else
  {
    v5 = *(v21 + 584);
    sub_10026A58C((v21 + 392));
    _objc_release(v5);
    v19 = 0;
    v20 = 0;
  }

  v10 = *(v21 + 584);
  v12 = *(v21 + 536);
  v13 = *(v21 + 520);
  v7 = *(v21 + 464);
  v6 = *(v21 + 456);
  v8 = *(v21 + 576);
  v11 = *(v21 + 528);
  v9 = sub_1003DC4B8(v10, *(v21 + 608), v19, v20);
  *(v21 + 400) = v9;
  *(v21 + 280) = v6;
  *(v21 + 288) = v7;
  sub_100286C38(v8, v9);
  _objc_release(v9);
  _objc_release(v10);
  (*(v11 + 8))(v12, v13);
  static IntentResult.result<>()();
  swift_unknownObjectRelease();

  v3 = *(*(v21 + 296) + 8);

  return v3();
}

uint64_t sub_1003DC448()
{
  sub_10025C9B0(&unk_1006D7090);
  sub_10000B074();
  sub_1003DC7F0();
  return AppDependency.__allocating_init(key:manager:)();
}

void (*sub_1003DC604(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_1003DAB04(v3, *v1);
  return sub_10034C098;
}

uint64_t sub_1003DC6C4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1003DABB0(a1, v6, v7);
}

uint64_t sub_1003DC790@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003D99A0();
  *a1 = result;
  a1[1] = v2;
  return result;
}

id sub_1003DC828(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = String._bridgeToObjectiveC()();

    v4 = [v11 initDraftRestoreOfMessage:a1 legacyMessage:a2 draftSubject:v8];
  }

  else
  {
    v4 = [v11 initDraftRestoreOfMessage:a1 legacyMessage:a2 draftSubject:0];
  }

  v7 = v4;
  _objc_release(v6);
  _objc_release(a2);
  _objc_release(a1);
  return v7;
}

id sub_1003DC908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v15 = String._bridgeToObjectiveC()();
  if (a4)
  {
    v10 = String._bridgeToObjectiveC()();

    v6 = [v13 initRecoveredAutosavedMessageWithIdentifier:v15 draftSubject:v10 messageRepository:? originalMessageObjectID:?];
  }

  else
  {
    v6 = [v13 initRecoveredAutosavedMessageWithIdentifier:v15 draftSubject:0 messageRepository:? originalMessageObjectID:?];
  }

  v9 = v6;
  _objc_release(a6);
  _objc_release(a5);
  _objc_release(v8);
  _objc_release(v15);

  return v9;
}

unint64_t sub_1003DCA14(uint64_t a1)
{
  result = sub_1003DCA40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1003DCA40()
{
  v2 = qword_1006DB368;
  if (!qword_1006DB368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DCAD4()
{
  v2 = qword_1006DB370;
  if (!qword_1006DB370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DCB50(uint64_t a1)
{
  result = sub_10033DD3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DCBAC()
{
  v2 = qword_1006DB380;
  if (!qword_1006DB380)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DCC40()
{
  v2 = qword_1006DB388;
  if (!qword_1006DB388)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DCD38()
{
  v2 = qword_1006DB390;
  if (!qword_1006DB390)
  {
    sub_10025CAA4(&unk_1006DB398);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB390);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003DCDD8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Open an email message draft";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_DRAFT_DESCRIPTION", 0x16uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 27;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_1003DD118@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Open an email message draft";
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v6;
  v7 = 10;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open Draft", 0xAuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", v7, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 27;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void *sub_1003DD2FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v4, sizeof(__dst));

  return memcpy(a2, __dst, 0x48uLL);
}

void *sub_1003DD380(void *a1, uint64_t a2)
{
  v5[10] = a1;
  v5[9] = a2;

  sub_1002CD078(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10028D6D0();
  return result;
}

void (*sub_1003DD408(void *a1, uint64_t a2))(void **a1)
{
  v4 = sub_100294700(0x30uLL);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003DD4A4()
{
  v2 = [objc_opt_self() sharedApplication];
  v1 = [v2 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v2);
  sub_10025C9B0(&unk_1006D72F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880();
  _objc_release(v1);
  return v3;
}

uint64_t sub_1003DD5D0()
{
  v16 = "Email message draft to open";
  v40 = &v50;
  v50 = 0;
  v27 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v38 = &v5 - v5;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v37 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v36 = &v5 - v7;
  v8 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v34 = &v5 - v8;
  v9 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v22 = &v5 - v9;
  v10 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v21 = &v5 - v10;
  v11 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v19 = &v5 - v11;
  v26 = type metadata accessor for LocalizedStringResource();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v12 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v33 = &v5 - v12;
  sub_10025C9B0(&unk_1006DCC10);
  v28 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Draft Message", 0xDuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = "AppIntents";
  v15 = 10;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v28 & 1);
  sub_100015CC0();
  sub_10025D410(v22);
  v47 = v16;
  v17 = 27;
  v48 = 27;
  v18 = 2;
  v49 = 2;
  v25 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_DRAFT_ENTITY_DESCRIPTION", 0x1DuLL, v28 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v14, v15, v28 & 1);
  sub_100015CC0();
  sub_10025D410(v22);
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = v25 & 1 & v28;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v23 + 56))(v34, v25, v28, v26);
  memset(__src, 0, sizeof(__src));
  v35 = __dst;
  memcpy(__dst, __src, sizeof(__dst));
  v29 = type metadata accessor for IntentDialog();
  v3 = *(v29 - 8);
  v31 = *(v3 + 56);
  v30 = v3 + 56;
  v31(v36, v28);
  (v31)(v37, v28, v28, v29);
  v32 = sub_10028D658();
  v39 = sub_1002B9D60();
  sub_1003BD8F8(v38);
  v41 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v50 = v41;
  sub_100268928();
  return v41;
}

void (*sub_1003DDD88(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_1003DD408(v3, *v1);
  return sub_10034C098;
}

uint64_t sub_1003DDDFC()
{
  sub_1003DDE48();
  sub_1002D3F00();
  return static URLRepresentableIntent<>.urlRepresentation.getter();
}

unint64_t sub_1003DDE48()
{
  v2 = qword_1006DB3A8;
  if (!qword_1006DB3A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003DDF44(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v7 = sub_1003DDE48();
  v8 = sub_1003DE164();
  v4 = sub_1002D3F00();
  *v3 = *(v6 + 16);
  v3[1] = sub_1003DE01C;

  return URLRepresentableIntent<>.perform()(a2, v7, v8, v4);
}

uint64_t sub_1003DE01C()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v4 = *(*v5 + 8);

    return v4();
  }

  return result;
}

unint64_t sub_1003DE164()
{
  v2 = qword_1006DB3B8;
  if (!qword_1006DB3B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003DE1E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003DD5D0();
  *a1 = result;
  return result;
}

unint64_t sub_1003DE23C()
{
  v2 = qword_1006DB3C0;
  if (!qword_1006DB3C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DE2D0()
{
  v2 = qword_1006DB3C8;
  if (!qword_1006DB3C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DE364(uint64_t a1)
{
  result = sub_1003DE23C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE3A8()
{
  v2 = qword_1006DB3D8;
  if (!qword_1006DB3D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DE43C()
{
  v2 = qword_1006DB3E0;
  if (!qword_1006DB3E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DE4D0()
{
  v2 = qword_1006DB3E8;
  if (!qword_1006DB3E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3E8);
    return WitnessTable;
  }

  return v2;
}

id static OpenMailboxQuicklyFactory.createOpenMailboxQuicklyViewController(with:delegate:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v24 = a2;
  v16 = "Fatal error";
  v17 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v18 = "MobileMail/OpenMailboxQuicklyFactory.swift";
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v28 = sub_10025C9B0(&qword_1006DB3F0);
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v21 = *(v25 + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v24);
  v29 = v9 - v20;
  v22 = v20;
  v4 = __chkstk_darwin(v3);
  v27 = v9 - v22;
  v37 = v9 - v22;
  v36 = v5;
  v35 = v4;
  v34 = v2;
  swift_unknownObjectRetain();
  v23 = type metadata accessor for OpenMailboxQuicklyItem();
  sub_1003DEA44();
  MUIOpenMailboxQuicklyView.init(delegate:)();
  sub_10025C9B0(&qword_1006DB400);
  (*(v25 + 16))(v29, v27, v28);
  v30 = UIHostingController.__allocating_init(rootView:)();
  v33 = v30;
  _objc_retain(v30);
  [v30 setModalPresentationStyle:5];
  _objc_release(v30);
  _objc_retain(v30);
  [v30 setModalTransitionStyle:2];
  _objc_release(v30);
  _objc_retain(v30);
  v31 = [v30 view];
  _objc_release(v30);
  if (v31)
  {
    v15 = v31;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v13 = v15;
  v12 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor:?];
  _objc_release(v12);
  _objc_release(v13);
  _objc_retain(v30);
  v14 = [v30 view];
  _objc_release(v30);
  if (v14)
  {
    v11 = v14;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v10 = v11;
  type metadata accessor for AutoresizingMask();
  v9[0] = 2;
  v6 = _allocateUninitializedArray<A>(_:)();
  *v7 = v9[0];
  v7[1] = 16;
  sub_1002612B0();
  v9[1] = v6;
  sub_100266C1C();
  SetAlgebra<>.init(arrayLiteral:)();
  [v10 setAutoresizingMask:v32];
  _objc_release(v10);
  (*(v25 + 8))(v27, v28);
  return v30;
}

unint64_t sub_1003DEA44()
{
  v2 = qword_1006DB3F8;
  if (!qword_1006DB3F8)
  {
    type metadata accessor for OpenMailboxQuicklyItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3F8);
    return WitnessTable;
  }

  return v2;
}

char *static OpenMailboxQuicklyFactory.createOpenMailboxQuicklyItem(with:)(void *a1)
{
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v41 = a1;
  v33 = sub_1003DF218(a1);
  if (!v33)
  {
    return 0;
  }

  v39 = v33;
  v1 = [a1 itemURLString];
  v31 = v1;
  if (v1)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v2;
    _objc_release(v31);
    v29 = v27;
    v30 = v28;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  if (!v30)
  {
    _objc_release(v33);
    return 0;
  }

  v37 = v29;
  v38 = v30;
  v26 = [v33 isSmartMailbox];
  _objc_retain(a1);
  if (v26)
  {
    v25 = 1;
  }

  else
  {
    v36 = [a1 representingMailbox];
    v24 = v36 != 0;
    sub_10026A58C(&v36);
    v25 = v24;
  }

  _objc_release(a1);
  if ((v25 & 1) == 0)
  {

    _objc_release(v33);
    return 0;
  }

  v35 = static Color.accentColor.getter();
  v23 = [a1 iconTintColor];
  if (v23)
  {
    _objc_retain(v23);
    v35 = Color.init(_:)();

    _objc_release(v23);
  }

  v34 = Array.init()();
  v22 = [a1 representingMailbox];
  if (v22)
  {
    v3 = [v22 accountRelativePath];
    v21 = v3;
    if (v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v4;
      _objc_release(v21);
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      LOBYTE(v7) = 2;
      v8 = 49;
      LODWORD(v9) = 0;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("/", 1uLL, 1);
    sub_1002686CC();
    v17 = StringProtocol.components<A>(separatedBy:)();
    sub_100268744();
    sub_100268744();
    v34 = v17;

    sub_10025C9B0(&unk_1006D69B0);
    sub_1002C8C78();
    sub_1003DF578();
    RangeReplaceableCollection<>.removeLast()();

    v18 = [v22 account];
    if (v18)
    {
      v16 = v18;
    }

    else
    {
      LOBYTE(v7) = 2;
      v8 = 51;
      LODWORD(v9) = 0;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v15 = [v16 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v16);
    Array.insert(_:at:)();
    _objc_release(v15);
    _objc_release(v22);
  }

  type metadata accessor for OpenMailboxQuicklyItem();
  v12 = [v33 name];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v5;

  v13 = sub_1003DF6CC(v29, v30, v33, v10, v11, v34, v35);
  _objc_release(v12);
  sub_100264880();
  sub_100268928();
  return v13;
}

id sub_1003DF218(void *a1)
{
  v17 = [a1 smartMailbox];
  if (!v17)
  {
    v14 = [a1 representingMailbox];
    if (v14)
    {
      v12 = [v14 objectID];
      _objc_release(v14);
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v11 = [objc_opt_self() sharedApplication];
      objc_opt_self();
      v1 = swift_dynamicCastObjCClass();
      if (v1)
      {
        v10 = v1;
      }

      else
      {
        _objc_release(v11);
        v10 = 0;
      }

      if (v10)
      {
        v2 = [v10 daemonInterface];
        if (v2)
        {
          v9 = v2;
        }

        else
        {
          LOBYTE(v4) = 2;
          v5 = 31;
          LODWORD(v6) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v7 = [v9 mailboxRepository];
        _objc_release(v9);
        v8 = [v7 mailboxIfAvailableForObjectID:v13];
        _objc_release(v7);
        if (v8)
        {
          _objc_release(v10);
          _objc_release(v13);
          return v8;
        }

        _objc_release(v10);
        _objc_release(v13);
      }

      else
      {
        _objc_release(v13);
      }
    }

    return 0;
  }

  return v17;
}

unint64_t sub_1003DF578()
{
  v2 = qword_1006DB408;
  if (!qword_1006DB408)
  {
    sub_10025CAA4(&unk_1006D69B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB408);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003DF7C4()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_identifier);

  return v2;
}

void *sub_1003DF810()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_1003DF8E4()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_displayName);

  return v2;
}

uint64_t sub_1003DF9BC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_pathComponents);

  return v2;
}

uint64_t sub_1003DF9FC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_tintColor);

  return v2;
}

char *sub_1003DFA3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = 0;
  v24 = a1;
  v25 = a2;
  v23 = a3;
  v21 = a4;
  v22 = a5;
  v20 = a6;
  v19 = a7;

  v7 = OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_identifier;
  *OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_identifier = a1;
  *(v7 + 8) = a2;
  _objc_retain(a3);
  *&v26[OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox] = a3;

  v8 = &v26[OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_displayName];
  *v8 = a4;
  *(v8 + 1) = a5;

  *&v26[OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_pathComponents] = a6;

  *&v26[OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_tintColor] = a7;
  v18.receiver = v26;
  v18.super_class = type metadata accessor for OpenMailboxQuicklyItem();
  v17 = objc_msgSendSuper2(&v18, "init");
  _objc_retain(v17);
  v26 = v17;

  _objc_release(a3);

  _objc_release(v26);
  return v17;
}

uint64_t sub_1003DFC44()
{
  v12 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox);
  _objc_retain(v12);
  v13 = [v12 isSmartMailbox];
  _objc_release(v12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(v11 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox);
  _objc_retain(v9);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v8 = v10;
  }

  else
  {
    _objc_release(v9);
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

  [v8 smartMailboxType];
  type metadata accessor for EMSmartMailboxType();
  sub_1003E0A68();
  v1 = == infix<A>(_:_:)();
  if ((v1 & 1) == 0 || ((v7 = [objc_opt_self() sharedInstanceForSourceType:4]) == 0 ? (v6 = 0) : (v5 = objc_msgSend(v7, "icon"), _objc_release(v7), v6 = v5), !v6))
  {
    _objc_release(v8);
LABEL_16:
    sub_1003DFEE4();
    return Image.init(systemName:)();
  }

  v3 = Image.init(uiImage:)();
  _objc_release(v8);
  return v3;
}

uint64_t sub_1003DFEE4()
{
  v51 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox);
  _objc_retain(v51);
  v52 = [v51 isSmartMailbox];
  _objc_release(v51);
  if ((v52 & 1) != 0 && ((v48 = *(v50 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox), _objc_retain(v48), objc_opt_self(), (v49 = swift_dynamicCastObjCClass()) == 0) ? (_objc_release(v48), v47 = 0) : (v47 = v49), v47))
  {
    v1 = [v47 smartMailboxType];
    if (v1)
    {
      if (v1 == 1)
      {
        v42 = MFImageGlyphFavoriteFlaggedMailbox;
        _objc_retain(MFImageGlyphFavoriteFlaggedMailbox);
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v42);
        _objc_release(v47);
        return v43;
      }

      else if (v1 == 2)
      {
        v40 = MFImageGlyphFavoriteUnreadMailbox;
        _objc_retain(MFImageGlyphFavoriteUnreadMailbox);
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v40);
        _objc_release(v47);
        return v41;
      }

      else if (v1 == 4)
      {
        v38 = MFImageGlyphFavoriteAttachmentsMailbox;
        _objc_retain(MFImageGlyphFavoriteAttachmentsMailbox);
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v38);
        _objc_release(v47);
        return v39;
      }

      else if (v1 == 5)
      {
        v36 = MFImageGlyphFavoriteNotifydMailbox;
        _objc_retain(MFImageGlyphFavoriteNotifydMailbox);
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v36);
        _objc_release(v47);
        return v37;
      }

      else if (v1 == 6)
      {
        v32 = MFImageGlyphFavoriteTodayMailbox;
        _objc_retain(MFImageGlyphFavoriteTodayMailbox);
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v32);
        _objc_release(v47);
        return v33;
      }

      else if (v1 == 7)
      {
        v34 = MFImageGlyphFavoriteMuteThreadMailbox;
        _objc_retain(MFImageGlyphFavoriteMuteThreadMailbox);
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v34);
        _objc_release(v47);
        return v35;
      }

      else if (v1 == 8)
      {
        v22 = MFImageGlyphFavoriteInboxUnifiedMailbox;
        _objc_retain(MFImageGlyphFavoriteInboxUnifiedMailbox);
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v22);
        _objc_release(v47);
        return v23;
      }

      else if (v1 == 9)
      {
        v30 = MFImageGlyphFavoriteReadLaterMailbox;
        _objc_retain(MFImageGlyphFavoriteReadLaterMailbox);
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v30);
        _objc_release(v47);
        return v31;
      }

      else if (v1 == 10)
      {
        v28 = MFImageGlyphFavoriteFollowUpMailbox;
        _objc_retain(MFImageGlyphFavoriteFollowUpMailbox);
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v28);
        _objc_release(v47);
        return v29;
      }

      else if (v1 == 11)
      {
        v26 = MFImageGlyphFavoriteSendLaterMailbox;
        _objc_retain(MFImageGlyphFavoriteSendLaterMailbox);
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v26);
        _objc_release(v47);
        return v27;
      }

      else if (v1 == 12)
      {
        v24 = MFImageGlyphFavoriteUnsubscribeMailbox;
        _objc_retain(MFImageGlyphFavoriteUnsubscribeMailbox);
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v24);
        _objc_release(v47);
        return v25;
      }

      else
      {
        v20 = MFImageGlyphGenericMailbox;
        _objc_retain(MFImageGlyphGenericMailbox);
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v20);
        _objc_release(v47);
        return v21;
      }
    }

    else
    {
      v44 = MFImageGlyphFavoriteVIPMailbox;
      _objc_retain(MFImageGlyphFavoriteVIPMailbox);
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v44);
      _objc_release(v47);
      return v45;
    }
  }

  else
  {
    v19 = *(v50 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox);
    _objc_retain(v19);
    [v19 type];
    _objc_release(v19);
    type metadata accessor for ECMailboxType();
    sub_100266924();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v17 = MFImageGlyphJunkMailbox;
      _objc_retain(MFImageGlyphJunkMailbox);
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v17);
      return v18;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v15 = MFImageGlyphArchiveMailbox;
      _objc_retain(MFImageGlyphArchiveMailbox);
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v15);
      return v16;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v13 = MFImageGlyphTrashMailbox;
      _objc_retain(MFImageGlyphTrashMailbox);
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v13);
      return v14;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v11 = MFImageGlyphSentMailbox;
      _objc_retain(MFImageGlyphSentMailbox);
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v11);
      return v12;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v9 = MFImageGlyphDraftMailbox;
      _objc_retain(MFImageGlyphDraftMailbox);
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v9);
      return v10;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v7 = MFImageGlyphOutboxMailbox;
      _objc_retain(MFImageGlyphOutboxMailbox);
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v7);
      return v8;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v5 = MFImageGlyphInboxMailbox;
      _objc_retain(MFImageGlyphInboxMailbox);
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v5);
      return v6;
    }

    else
    {
      v3 = MFImageGlyphGenericMailbox;
      _objc_retain(MFImageGlyphGenericMailbox);
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v3);
      return v4;
    }
  }
}

unint64_t sub_1003E0A68()
{
  v2 = qword_1006DB468;
  if (!qword_1006DB468)
  {
    type metadata accessor for EMSmartMailboxType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB468);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E0AE8(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  sub_100015DA0(a1, v8);
  if (v9)
  {
    sub_10025C9B0(&qword_1006DB478);
    if (swift_dynamicCast())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }

    v5 = v6;
  }

  else
  {
    sub_10000B0D8(v8);
    v5 = 0;
  }

  if (v5)
  {

    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = [v5 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();
    v3 = static String.== infix(_:_:)();

    _objc_release(v2);

    swift_unknownObjectRelease();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id sub_1003E0E44()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OpenMailboxQuicklyItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003E0F54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OpenMailboxQuicklyItem();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1003E0FC0()
{
  v2 = qword_1006DB508;
  if (!qword_1006DB508)
  {
    type metadata accessor for OpenMailboxQuicklyItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E1058()
{
  v2 = qword_1006DB510[0];
  if (!qword_1006DB510[0])
  {
    type metadata accessor for OpenMailboxQuicklyItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1006DB510);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E10F0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Open an email message";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_MESSAGE_DESCRIPTION", 0x18uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 21;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_1003E1430@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Open an email message";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open Message", 0xCuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 21;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void *sub_1003E1614@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v4, sizeof(__dst));

  return memcpy(a2, __dst, 0x80uLL);
}

void *sub_1003E1698(void *a1, uint64_t a2)
{
  v5[17] = a1;
  v5[16] = a2;

  sub_1002E0080(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10027D9CC();
  return result;
}

void (*sub_1003E1720(void *a1, uint64_t a2))(void **a1)
{
  v4 = sub_100294700(0x30uLL);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003E17BC()
{
  v2 = [objc_opt_self() sharedApplication];
  v1 = [v2 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v2);
  sub_10025C9B0(&unk_1006D72F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880();
  _objc_release(v1);
  return v3;
}

uint64_t sub_1003E18E8()
{
  v17 = "Email message to open";
  v42 = &v52;
  v52 = 0;
  v29 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v40 = &v5 - v6;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v39 = &v5 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v7);
  v38 = &v5 - v8;
  v9 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v36 = &v5 - v9;
  v10 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v23 = &v5 - v10;
  v11 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v22 = &v5 - v11;
  v12 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v20 = &v5 - v12;
  v27 = type metadata accessor for LocalizedStringResource();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v13 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v35 = &v5 - v13;
  sub_10025C9B0(&qword_1006DBAE0);
  v30 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v15 = "AppIntents";
  v16 = 10;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v30 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v49 = v17;
  v18 = 21;
  v50 = 21;
  v19 = 2;
  v51 = 2;
  v26 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_MESSAGE_ENTITY_DESCRIPTION", 0x1FuLL, v30 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v15, v16, v30 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v45 = v17;
  v46 = v18;
  v47 = v19;
  v48 = v26 & 1 & v30;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v24 + 56))(v36, v26, v30, v27);
  v28 = v53;
  sub_1002E41D4(v53);
  v37 = v44;
  memcpy(v44, v28, sizeof(v44));
  v31 = type metadata accessor for IntentDialog();
  v3 = *(v31 - 8);
  v33 = *(v3 + 56);
  v32 = v3 + 56;
  v33(v38, v30);
  (v33)(v39, v30, v30, v31);
  v34 = sub_10027D1BC();
  v41 = sub_10027EAAC();
  sub_1003BD8F8(v40);
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v52 = v43;
  sub_100268928();
  return v43;
}

void (*sub_1003E1F1C(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_1003E1720(v3, *v1);
  return sub_10034C098;
}

uint64_t sub_1003E1F90()
{
  sub_1003E1FDC();
  sub_10038F6E8();
  return static URLRepresentableIntent<>.urlRepresentation.getter();
}

unint64_t sub_1003E1FDC()
{
  v2 = qword_1006DB528;
  if (!qword_1006DB528)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E20D8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v7 = sub_1003E1FDC();
  v8 = sub_1003E21B0();
  v4 = sub_10038F6E8();
  *v3 = *(v6 + 16);
  v3[1] = sub_1003DE01C;

  return URLRepresentableIntent<>.perform()(a2, v7, v8, v4);
}

unint64_t sub_1003E21B0()
{
  v2 = qword_1006DB538;
  if (!qword_1006DB538)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB538);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E222C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003E18E8();
  *a1 = result;
  return result;
}

unint64_t sub_1003E2288()
{
  v2 = qword_1006DB540;
  if (!qword_1006DB540)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E231C()
{
  v2 = qword_1006DB548;
  if (!qword_1006DB548)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E23B0(uint64_t a1)
{
  result = sub_1003E2288();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003E23F4()
{
  v2 = qword_1006DB558;
  if (!qword_1006DB558)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E2488()
{
  v2 = qword_1006DB560;
  if (!qword_1006DB560)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB560);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E25BC@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem);
  swift_beginAccess();
  sub_1003E2620(v3, a1);
  return swift_endAccess();
}

void *sub_1003E2620(const void *a1, void *a2)
{
  v6 = type metadata accessor for SearchItem.Photo();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&unk_1006DBC50);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1003E2748(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006DBC50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_1003E2620(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem);
  v6 = &v8;
  swift_beginAccess();
  sub_1003E2830(v4, v5);
  swift_endAccess();
  sub_1002F1878();
  return sub_1003E2A58(v7);
}

void *sub_1003E2830(const void *a1, void *a2)
{
  v7 = type metadata accessor for SearchItem.Photo();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10025C9B0(&unk_1006DBC50);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10025C9B0(&unk_1006DBC50);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_1003E2A58(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem.Photo();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1003E2B00(uint64_t a1)
{
  v30 = a1;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v1 = sub_10025C9B0(&qword_1006DB578);
  v24 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v25 = &v16 - v24;
  v37 = 0;
  v26 = type metadata accessor for PhotoContentConfiguration();
  v28 = *(*(v26 - 8) + 64);
  v27 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v30);
  v3 = &v16 - v27;
  v35 = &v16 - v27;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v32 = &v16 - v29;
  v49 = &v16 - v29;
  v48 = v4;
  v47 = v5;
  sub_1003E311C(v3);
  v31 = type metadata accessor for UICellConfigurationState();
  v34 = v46;
  v46[3] = v31;
  v46[4] = &protocol witness table for UICellConfigurationState;
  v6 = sub_10026AC9C(v46);
  (*(*(v31 - 8) + 16))(v6, v30);
  sub_1003E3210(v32);
  v7 = v33;
  sub_1000160F4(v34);
  sub_1003E3258(v35);
  v36 = OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem;
  v38 = &v7[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem];
  swift_beginAccess();
  v39 = type metadata accessor for SearchItem.Photo();
  v8 = *(v39 - 8);
  v40 = *(v8 + 48);
  v41 = v8 + 48;
  if (v40(v38, 1) == 0)
  {
    v22 = SearchItem.Photo.image.getter();
    swift_endAccess();
    v23 = v22;
  }

  else
  {
    swift_endAccess();
    v23 = 0;
  }

  v9 = v33;
  v10 = *(v32 + 1);
  *(v32 + 1) = v23;
  _objc_release(v10);
  _objc_retain(v9);
  *(v32 + 2) = sub_100412864();

  _objc_release(v33);
  v20 = &v33[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem];
  swift_beginAccess();
  if ((v40)(v20, 1, v39) == 0)
  {
    SearchItem.Photo.configuration.getter();
    swift_endAccess();
    v11 = type metadata accessor for CornerConfiguration();
    (*(*(v11 - 8) + 56))(v25, 0, 1);
  }

  else
  {
    swift_endAccess();
    v15 = type metadata accessor for CornerConfiguration();
    (*(*(v15 - 8) + 56))(v25, 1);
  }

  sub_1003E3344(v25, &v32[*(v26 + 28)]);
  if (UICellConfigurationState.isHighlighted.getter())
  {
    v19 = 1;
  }

  else
  {
    v19 = UICellConfigurationState.isSelected.getter();
  }

  if (v19)
  {
    v18 = *&v33[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_selectedAlpha];
  }

  else
  {
    v18 = *&v33[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_defaultAlpha];
  }

  v12 = v33;
  *v32 = v18;
  _objc_retain(v12);
  v17 = &v43;
  v44 = v26;
  v45 = sub_1003E356C();
  v13 = sub_10026AC9C(v17);
  sub_1003E35EC(v32, v13);
  UICollectionViewCell.contentConfiguration.setter();
  _objc_release(v33);
  return sub_1003E3258(v32);
}

uint64_t type metadata accessor for PhotoContentConfiguration()
{
  v1 = qword_1006DB660;
  if (!qword_1006DB660)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

char *sub_1003E311C@<X0>(char *a1@<X8>)
{
  v9 = a1;
  v10 = 0;
  v5 = 0;
  v6 = (*(*(type metadata accessor for PhotoContentConfiguration() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v1 = &v5 - v6;
  v8 = v1;
  v10 = &v5 - v6;
  *v1 = 1.0;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  v7 = *(v2 + 28);
  v3 = type metadata accessor for CornerConfiguration();
  (*(*(v3 - 8) + 56))(&v8[v7], 1);
  return sub_1003E60F8(v8, v9);
}

uint64_t sub_1003E3258(uint64_t a1)
{
  _objc_release(*(a1 + 8));

  v2 = *(type metadata accessor for PhotoContentConfiguration() + 28);
  v4 = type metadata accessor for CornerConfiguration();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

void *sub_1003E3344(const void *a1, void *a2)
{
  v7 = type metadata accessor for CornerConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10025C9B0(&qword_1006DB578);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10025C9B0(&qword_1006DB578);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t sub_1003E356C()
{
  v2 = qword_1006DB580;
  if (!qword_1006DB580)
  {
    type metadata accessor for PhotoContentConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB580);
    return WitnessTable;
  }

  return v2;
}

char *sub_1003E35EC(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);
  _objc_retain(v4);
  *(a2 + 1) = v4;
  v6 = *(a1 + 2);

  *(a2 + 2) = v6;
  v7 = *(type metadata accessor for PhotoContentConfiguration() + 28);
  v9 = type metadata accessor for CornerConfiguration();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a1[v7], 1))
  {
    v2 = sub_10025C9B0(&qword_1006DB578);
    memcpy(&a2[v7], &a1[v7], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))();
    (*(v10 + 56))(&a2[v7], 0, 1, v9);
  }

  return a2;
}

char *sub_1003E38B8(double a1, double a2, double a3, double a4)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  *&v10 = a3;
  *(&v10 + 1) = a4;
  ObjectType = swift_getObjectType();
  v13 = v9;
  v14 = v10;
  v15 = v4;
  *&v4[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_selectedAlpha] = 0x3FEB333333333333;
  *&v15[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_defaultAlpha] = 1.0;
  v7 = OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem;
  v5 = type metadata accessor for SearchItem.Photo();
  (*(*(v5 - 8) + 56))(&v15[v7], 1);
  v12.receiver = v15;
  v12.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v12, "initWithFrame:", v9, v10);
  _objc_retain(v11);
  v15 = v11;
  _objc_release(v11);
  return v11;
}

char *sub_1003E3A78(void *a1)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v11 = v1;
  *&v1[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_selectedAlpha] = 0x3FEB333333333333;
  *&v11[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_defaultAlpha] = 1.0;
  v5 = OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem;
  v2 = type metadata accessor for SearchItem.Photo();
  (*(*(v2 - 8) + 56))(&v11[v5], 1);
  v9.receiver = v11;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  if (v8)
  {
    _objc_retain(v8);
    v11 = v8;
    _objc_release(a1);
    _objc_release(v11);
    return v8;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

void *sub_1003E3CA8()
{
  v2 = *(v0 + 8);
  _objc_retain(v2);
  return v2;
}

void sub_1003E3CDC(void *a1)
{
  _objc_retain(a1);
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  _objc_release(v2);
  _objc_release(a1);
}

uint64_t sub_1003E3D30()
{
  v2 = *(v0 + 16);

  return v2;
}

void *sub_1003E3D94(const void *a1, void *a2)
{
  v6 = type metadata accessor for CornerConfiguration();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006DB578);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1003E3EBC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_10025C9B0(&qword_1006DB578) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_1003E3D94(v2, &v5 - v6);
  v3 = type metadata accessor for PhotoContentConfiguration();
  sub_1003E3344(v7, (v1 + *(v3 + 28)));
  return sub_1003E3F6C(v8);
}

uint64_t sub_1003E3F6C(uint64_t a1)
{
  v3 = type metadata accessor for CornerConfiguration();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

char *sub_1003E4014()
{
  v7 = 0;
  v2 = 0;
  v3 = (*(*(type metadata accessor for PhotoContentConfiguration() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v5 = &v2 - v3;
  v7 = v0;
  type metadata accessor for PhotoContentView();
  sub_1003E35EC(v4, v5);
  v6 = sub_1003E4144(v5);
  sub_1003E4180();
  return v6;
}

uint64_t type metadata accessor for PhotoContentView()
{
  v1 = qword_1006DB6E8;
  if (!qword_1006DB6E8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1003E4180()
{
  v2 = qword_1006DB588;
  if (!qword_1006DB588)
  {
    type metadata accessor for PhotoContentView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB588);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1003E4200(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v48 = a2;
  v67 = 0;
  v66 = 0;
  v38 = type metadata accessor for CornerConfiguration();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v42 = &v10 - v41;
  v43 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v41);
  v44 = &v10 - v43;
  v45 = sub_10025C9B0(&qword_1006DB750);
  v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v47 = &v10 - v46;
  v50 = (*(*(sub_10025C9B0(&qword_1006DB578) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v49);
  v51 = &v10 - v50;
  v52 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v53 = &v10 - v52;
  v54 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v55 = &v10 - v54;
  v67 = v7;
  v66 = v8;
  if (*v7 != *v8)
  {
    return 0;
  }

  v36 = *(v49 + 8);
  _objc_retain(v36);
  _objc_retain(v36);
  v37 = *(v48 + 8);
  _objc_retain(v37);
  _objc_retain(v37);
  v64 = v36;
  v65 = v37;
  if (v36)
  {
    sub_1002935A0(&v64, &v58);
    if (v65)
    {
      v57 = v58;
      v56 = v65;
      sub_1002A75C8();
      v34 = static NSObject.== infix(_:_:)();
      _objc_release(v56);
      _objc_release(v57);
      sub_10026A58C(&v64);
      v35 = v34;
      goto LABEL_8;
    }

    _objc_release(v58);
    goto LABEL_10;
  }

  if (v65)
  {
LABEL_10:
    sub_1002E4C54(&v64);
    v35 = 0;
    goto LABEL_8;
  }

  sub_10026A58C(&v64);
  v35 = 1;
LABEL_8:
  v33 = v35;
  _objc_release(v37);
  _objc_release(v36);
  if (v33)
  {
    v31 = *(v49 + 16);

    v32 = *(v48 + 16);

    v62 = v31;
    v63 = v32;
    if (v31)
    {
      sub_1002A730C(&v62, &v61);
      if (v63)
      {
        v28 = &v60;
        v60 = v61;
        v27 = &v59;
        v59 = v63;
        v26 = v61;
        v24 = v63;
        v25 = sub_1002913A4();
        sub_1003E7CC4();
        v29 = static Array<A>.== infix(_:_:)();
        sub_100264880();
        sub_100264880();
        sub_100264880();
        v30 = v29;
        goto LABEL_18;
      }

      sub_100264880();
    }

    else if (!v63)
    {
      sub_100264880();
      v30 = 1;
LABEL_18:
      v23 = v30;

      if ((v23 & 1) == 0)
      {
        return 0;
      }

      v19 = type metadata accessor for PhotoContentConfiguration();
      sub_1003E3D94((v49 + *(v19 + 28)), v55);
      sub_1003E3D94((v48 + *(v19 + 28)), v53);
      v20 = &v47[*(v45 + 48)];
      sub_1003E3D94(v55, v47);
      sub_1003E3D94(v53, v20);
      v21 = *(v39 + 48);
      v22 = v39 + 48;
      if (v21(v47, 1, v38) == 1)
      {
        if (v21(v20, 1, v38) != 1)
        {
          goto LABEL_29;
        }

        sub_1003E3F6C(v47);
        v18 = 1;
      }

      else
      {
        sub_1003E3D94(v47, v51);
        if (v21(v20, 1, v38) == 1)
        {
          (*(v39 + 8))(v51, v38);
LABEL_29:
          sub_1003E7B18(v47);
          v18 = 0;
          goto LABEL_28;
        }

        v14 = *(v39 + 32);
        v13 = v39 + 32;
        v14(v44, v51, v38);
        v14(v42, v20, v38);
        sub_1003E7C44();
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        v16 = *(v39 + 8);
        v15 = v39 + 8;
        v16(v42, v38);
        v16(v44, v38);
        sub_1003E3F6C(v47);
        v18 = v17;
      }

LABEL_28:
      v12 = v18;
      sub_1003E3F6C(v53);
      sub_1003E3F6C(v55);
      return (v12 & 1) != 0;
    }

    sub_1002A7344();
    v30 = 0;
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_1003E4AC4(uint64_t a1)
{
  v16 = a1;
  v2 = v1;
  v18 = v2;
  v25 = 0;
  v24 = 0;
  v19 = sub_10025C9B0(&qword_1006DB578);
  v9 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v20 = &v8 - v9;
  v25 = a1;
  v24 = v4;
  v5 = *v4;
  v10 = &v23;
  v23 = v5;
  sub_1003E76C0();
  Hasher.combine<A>(_:)();
  v11 = *(v18 + 8);
  _objc_retain(v11);
  v13 = &v22;
  v22 = v11;
  v12 = sub_10025C9B0(&qword_1006DB708);
  sub_1003E7738();
  Hasher.combine<A>(_:)();
  sub_10026A58C(v13);
  v14 = *(v18 + 16);

  v17 = &v21;
  v21 = v14;
  v15 = sub_10025C9B0(&qword_1006DB720);
  sub_1003E7850();
  Hasher.combine<A>(_:)();
  sub_100264880();
  v6 = type metadata accessor for PhotoContentConfiguration();
  sub_1003E3D94((v18 + *(v6 + 28)), v20);
  sub_1003E7A00();
  Hasher.combine<A>(_:)();
  return sub_1003E3F6C(v20);
}

uint64_t sub_1003E4C94()
{
  type metadata accessor for PhotoContentConfiguration();
  sub_1003E5C70();
  return _hashValue<A>(for:)();
}

uint64_t sub_1003E4D58@<X0>(char *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
  swift_beginAccess();
  sub_1003E35EC(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1003E4DBC(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(type metadata accessor for PhotoContentConfiguration() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_1003E35EC(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
  v6 = &v8;
  swift_beginAccess();
  sub_1003E5CF0(v4, v5);
  swift_endAccess();
  return sub_1003E3258(v7);
}

void *sub_1003E4E94()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_1003E4F40@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration);
  swift_beginAccess();
  sub_1003E3D94(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1003E4FA4(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006DB578) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_1003E3D94(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration);
  v6 = &v8;
  swift_beginAccess();
  sub_1003E3344(v4, v5);
  swift_endAccess();
  sub_1003E4F00();
  return sub_1003E3F6C(v7);
}

id sub_1003E508C()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail16PhotoContentView____lazy_storage___avatarViewController);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100290D4C();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail16PhotoContentView____lazy_storage___avatarViewController);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void sub_1003E5194(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView____lazy_storage___avatarViewController);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_1003E522C@<X0>(uint64_t *a1@<X8>)
{
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
  swift_beginAccess();
  a1[3] = type metadata accessor for PhotoContentConfiguration();
  a1[4] = sub_1003E356C();
  v2 = sub_10026AC9C(a1);
  sub_1003E35EC(v5, v2);
  return swift_endAccess();
}

uint64_t sub_1003E52B4(uint64_t a1)
{
  v7 = a1;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v2 = sub_10025C9B0(&qword_1006DB5C0);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v14 = &v5 - v6;
  v13 = type metadata accessor for PhotoContentConfiguration();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v7);
  v11 = &v5 - v10;
  v18 = &v5 - v10;
  v17 = v3;
  v16 = v1;
  v12 = v15;
  sub_1002F171C(v3, v15);
  sub_10025C9B0(&qword_1006D6CE8);
  if (swift_dynamicCast())
  {
    (*(v8 + 56))(v14, 0, 1, v13);
  }

  else
  {
    (*(v8 + 56))(v14, 1, 1, v13);
  }

  if ((*(v8 + 48))(v14, 1, v13) == 1)
  {
    sub_1003E5FD0(v14);
  }

  else
  {
    sub_1003E60F8(v14, v11);
    sub_1003E54F8(v11);
    sub_1003E3258(v11);
  }

  return sub_1000160F4(v7);
}

uint64_t sub_1003E54F8(char *a1)
{
  v30 = a1;
  v41 = 0;
  v40 = 0;
  v33 = 0;
  v2 = sub_10025C9B0(&qword_1006DB578);
  v24 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v25 = &isa - v24;
  v26 = type metadata accessor for PhotoContentConfiguration();
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v30);
  v31 = &isa - v27;
  v41 = v3;
  v40 = v1;
  v28 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
  v29 = &v39;
  swift_beginAccess();
  sub_1003E35EC(v28, v31);
  swift_endAccess();
  v32 = sub_1003E4200(v31, v30);
  sub_1003E3258(v31);
  result = v32;
  if (!v32)
  {
    v5 = v23;
    sub_1003E35EC(v30, v31);
    v19 = (v5 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
    v20 = &v38;
    swift_beginAccess();
    sub_1003E5CF0(v31, v19);
    swift_endAccess();
    sub_1003E3D94(&v30[*(v26 + 28)], v25);
    sub_1003E4FA4(v25);
    v21 = *(v23 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView);
    _objc_retain(v21);
    v22 = *(v30 + 1);
    _objc_retain(v22);
    v37 = v22;
    v18 = v22 == 0;
    v10 = v18;
    sub_10026A58C(&v37);
    [v21 setHidden:v10];
    _objc_release(v21);
    v13 = &qword_1006DB000;
    v12 = *(v23 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView);
    _objc_retain(v12);
    v11 = *(v30 + 1);
    _objc_retain(v11);
    [v12 setImage:v11];
    _objc_release(v11);
    _objc_release(v12);
    v14 = *(v23 + v13[180]);
    _objc_retain(v14);
    [v14 setAlpha:*v30];
    _objc_release(v14);
    v15 = v23 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration;
    v16 = &v35;
    swift_beginAccess();
    v17 = *(v15 + 16);

    swift_endAccess();
    v34 = v17;
    if (v17)
    {
      v36 = v34;
    }

    else
    {
      v9 = 0;
      sub_1002913A4();
      v36 = _allocateUninitializedArray<A>(_:)();
      if (v34)
      {
        sub_100264880();
      }
    }

    v8 = v36;
    v33 = v36;
    v7 = sub_1003E508C();

    sub_1002913A4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 updateContacts:isa];
    _objc_release(isa);
    _objc_release(v7);
  }

  return result;
}

void (*sub_1003E59CC(uint64_t **a1))(void **a1, char a2)
{
  v4 = sub_100294700(0x58uLL);
  *a1 = v4;
  v4[10] = v1;
  sub_1003E522C(v4);
  return sub_1003E5A4C;
}

void sub_1003E5A4C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1002F171C(v2, v2 + 40);
    sub_1003E52B4(v2 + 40);
    sub_1000160F4(v2);
  }

  else
  {
    sub_1003E52B4(v2);
  }

  free(v2);
}

char *sub_1003E5AC4(char *a1)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v11 = v1;
  sub_1003E311C(&v1[OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration]);
  v4 = OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView;
  sub_1002649B4();
  *&v1[v4] = sub_10025C704();
  *&v11[OBJC_IVAR____TtC10MobileMail16PhotoContentView_senderImageViewWidth] = 0x4041000000000000;
  v5 = OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration;
  v2 = type metadata accessor for CornerConfiguration();
  (*(*(v2 - 8) + 56))(&v11[v5], 1);
  *&v11[OBJC_IVAR____TtC10MobileMail16PhotoContentView____lazy_storage___avatarViewController] = 0;
  v9.receiver = v11;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  _objc_retain(v8);
  v11 = v8;
  sub_1003E6280();
  sub_1003E54F8(a1);
  sub_1003E3258(a1);
  _objc_release(v11);
  return v8;
}