uint64_t sub_100093A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = type metadata accessor for Logger();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_100085D40(&qword_10059BD20);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  updated = type metadata accessor for UpdateBatch(0);
  v6[38] = updated;
  v9 = *(updated - 8);
  v6[39] = v9;
  v6[40] = *(v9 + 64);
  v6[41] = swift_task_alloc();
  sub_100085D40(&qword_10059C3E0);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v10 = sub_100085D40(&qword_10059BD28);
  v6[46] = v10;
  v6[47] = *(v10 - 8);
  v6[48] = swift_task_alloc();
  v11 = sub_100085D40(&qword_10059BD30);
  v6[49] = v11;
  v6[50] = *(v11 - 8);
  v6[51] = swift_task_alloc();
  sub_100085D40(&qword_10059BD38);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();

  return _swift_task_switch(sub_100093D7C, 0, 0);
}

uint64_t sub_100093D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(v4 + 400);
  v47 = *(v4 + 392);
  v46 = *(v4 + 312);
  v44 = (v6 + 48);
  v45 = (v6 + 56);
  v42 = *(v4 + 320) + 7;
  v7 = *(*(v4 + 208) + 16);
  *(v4 + 432) = v7;
  v43 = v7;
  while (1)
  {
    if (v5 == v7)
    {
      v10 = 1;
      v11 = v7;
    }

    else
    {
      if (v5 >= v7)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a4);
      }

      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_21;
      }

      v13 = *(v4 + 408);
      v12 = *(v4 + 416);
      v14 = *(v4 + 208) + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v5;
      v15 = *(v47 + 48);
      *v13 = v5;
      sub_10009E160(v14, v13 + v15);
      sub_10009E1C4(v13, v12, &qword_10059BD30);
      v10 = 0;
    }

    v17 = *(v4 + 416);
    v16 = *(v4 + 424);
    v18 = *(v4 + 392);
    (*v45)(v17, v10, 1, v18);
    sub_10009E1C4(v17, v16, &qword_10059BD38);
    if ((*v44)(v16, 1, v18) == 1)
    {
      break;
    }

    v54 = v11;
    v19 = *(v4 + 424);
    v20 = *(v4 + 360);
    v49 = v20;
    v53 = *(v4 + 352);
    v21 = *(v4 + 328);
    v48 = v21;
    v50 = *(v4 + 224);
    v22 = *(v4 + 216);
    v51 = *v19;
    v52 = *(v4 + 232);
    v23 = *(v47 + 48);
    v24 = type metadata accessor for TaskPriority();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v20, 1, 1, v24);
    sub_10009E274(v19 + v23, v21);
    v26 = (*(v46 + 80) + 40) & ~*(v46 + 80);
    v27 = (v42 + v26) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v29[2] = 0;
    v30 = v29 + 2;
    v29[3] = 0;
    v29[4] = v22;
    sub_10009E274(v48, v29 + v26);
    *(v29 + v27) = v50;
    *(v29 + v28) = v52;
    *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;
    sub_10009E3F4(v49, v53);
    LODWORD(v28) = (*(v25 + 48))(v53, 1, v24);

    v31 = v50;
    v32 = v52;
    v33 = *(v4 + 352);
    if (v28 == 1)
    {
      sub_100005518(*(v4 + 352), &qword_10059C3E0);
      if (*v30)
      {
        goto LABEL_12;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v25 + 8))(v33, v24);
      if (*v30)
      {
LABEL_12:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v34 = dispatch thunk of Actor.unownedExecutor.getter();
        v36 = v35;
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    v34 = 0;
    v36 = 0;
LABEL_15:
    v37 = **(v4 + 200);
    v38 = swift_allocObject();
    *(v38 + 16) = &unk_100434858;
    *(v38 + 24) = v29;

    if (v36 | v34)
    {
      v8 = v4 + 128;
      *(v4 + 128) = 0;
      *(v4 + 136) = 0;
      *(v4 + 144) = v34;
      *(v4 + 152) = v36;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v4 + 360);
    *(v4 + 160) = 1;
    *(v4 + 168) = v8;
    *(v4 + 176) = v37;
    swift_task_create();

    a1 = sub_100005518(v9, &qword_10059C3E0);
    v7 = v43;
    v5 = v54;
  }

  v39 = sub_100096A24(&_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage, v7);
  TaskGroup.makeAsyncIterator()();
  *(v4 + 440) = v39;
  v40 = swift_task_alloc();
  *(v4 + 448) = v40;
  *v40 = v4;
  v40[1] = sub_100094264;
  a4 = *(v4 + 368);
  a1 = v4 + 64;
  a2 = 0;
  a3 = 0;

  return TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a4);
}

uint64_t sub_100094264()
{

  return _swift_task_switch(sub_100094360, 0, 0);
}

uint64_t sub_100094360()
{
  v131 = v1;
  v2 = v1;
  v5 = v1[8];
  v4 = v1[9];
  v3 = v1 + 8;
  v6 = v1[55];
  if (v4)
  {
    v0 = v1[10];
    v7 = v1[11];
    v8 = v3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v2[55];
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_82:
      isUniquelyReferenced_nonNull_native = sub_1001B49C0(v6);
      v6 = isUniquelyReferenced_nonNull_native;
      if ((v5 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v5 < *(v6 + 16))
        {
          v13 = (v6 + 24 * v5);
          v13[4] = v4;

          v13[5] = v0;

          v13[6] = v7;

          v2[55] = v6;
          v14 = swift_task_alloc();
          v2[56] = v14;
          *v14 = v2;
          v14[1] = sub_100094264;
          v12 = v2[46];
          isUniquelyReferenced_nonNull_native = v8;
          v10 = 0;
          v11 = 0;

          return TaskGroup.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, v10, v11, v12);
        }

        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v108 = v1 + 8;
  v4 = v1[26];
  v109 = v1[27];
  (*(v1[47] + 8))(v1[48], v1[46]);
  v7 = *(v6 + 16);

  if (!v7)
  {
LABEL_63:
    v93 = v2[55];

    v94 = *(v6 + 16);
    if (v94)
    {
      v95 = v93 + 48;
      while (!*(*v95 + 16))
      {
        v95 += 24;
        if (!--v94)
        {
          goto LABEL_67;
        }
      }

      v101 = *(*(v109 + 32) + OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken);
      v102 = objc_opt_self();
      v96 = sub_100200C1C(v102, v101);
      if (v96)
      {

        v104 = sub_100096784(v103, sub_100098460);

        v105 = swift_allocObject();
        *(v105 + 16) = v104;
        v106 = swift_allocObject();
        *(v106 + 16) = sub_10009E22C;
        *(v106 + 24) = v105;
        v2[6] = sub_10009E234;
        v2[7] = v106;
        v2[2] = _NSConcreteStackBlock;
        v2[3] = 1107296256;
        v2[4] = sub_1000986B4;
        v2[5] = &unk_10050A888;
        v107 = _Block_copy(v108 - 6);

        sub_100200CAC(v96, 1101, v107);

        _Block_release(v107);
        LOBYTE(v107) = swift_isEscapingClosureAtFileLocation();

        if (v107)
        {
LABEL_85:
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, v10, v11, v12);
        }

        v96 = sub_10009E22C;
      }
    }

    else
    {
LABEL_67:
      v96 = 0;
    }

    v97 = v2[24];
    v98 = sub_100098700(v2[55]);

    sub_100006F8C(v96);
    *v97 = v98;

    v99 = v2[1];

    return v99();
  }

  v8 = 0;
  v15 = 0;
  v16 = v2[39];
  v113 = (v16 + 56);
  v114 = v2[55] + 32;
  v111 = v2[38];
  v112 = (v16 + 48);
  v129 = (v2[31] + 8);
  v123 = v2[29];
  v126 = v2;
  v110 = v6;
  while (1)
  {
    if (v15 >= v7)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v18 = v2[54];
    v19 = (v114 + 24 * v15);
    v0 = *v19;
    v20 = v19[1];
    v117 = v19[2];
    if (v8 == v18)
    {
      v21 = 1;
    }

    else
    {
      if (v8 >= v18)
      {
        goto LABEL_80;
      }

      sub_10009E160(v2[26] + ((*(v2[39] + 80) + 32) & ~*(v2[39] + 80)) + *(v2[39] + 72) * v8, v2[37]);
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_81;
      }

      v21 = 0;
    }

    v24 = v2[37];
    v23 = v2[38];
    v25 = v2[36];
    (*v113)(v24, v21, 1, v23);
    sub_10009E1C4(v24, v25, &qword_10059BD20);
    if ((*v112)(v25, 1, v23) == 1)
    {
      goto LABEL_63;
    }

    v115 = v15;
    v116 = v8;
    v26 = v2[41];
    v27 = v2[29];
    sub_10009E274(v2[36], v26);
    v28 = *(v26 + *(v111 + 20));

    sub_10009E2D8(v26);
    static Logger.updates.getter();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v8 = v27;
    v4 = Logger.logObject.getter();
    v6 = v20;
    v29 = static os_log_type_t.default.getter();

    v30 = v0 >> 62;
    v124 = v6;
    if (!os_log_type_enabled(v4, v29))
    {
      v7 = v2[35];
      v5 = v2[30];
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v128 = *v129;
      (*v129)(v7, v5);
      goto LABEL_26;
    }

    v127 = v28;
    v31 = v2[29];
    v5 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v130[0] = v8;
    *v5 = 138413314;
    *(v5 + 4) = v31;
    *v32 = v123;
    *(v5 + 12) = 2048;
    v33 = v30 ? _CocoaArrayWrapper.endIndex.getter() : *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v2[29];

    *(v5 + 14) = v33;

    *(v5 + 22) = 2082;
    v35 = *(*(v109 + 32) + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
    type metadata accessor for LoadSoftwareUpdatesReason(0);
    if (v35 > 9)
    {
      break;
    }

    v36 = 0x756F72676B636162;
    v37 = 0xEB0000000020646ELL;
    if (((1 << v35) & 0x2D6) == 0)
    {
      v36 = 0;
      v37 = 0xE000000000000000;
    }

    v119 = v126[30];
    v120 = v126[35];
    v38 = sub_1001AD0D8(v36, v37, v130);
    v2 = v126;

    *(v5 + 24) = v38;
    v6 = 2048;
    *(v5 + 32) = 2048;
    v7 = *(v124 + 16);

    *(v5 + 34) = v7;

    *(v5 + 42) = 2048;
    *(v5 + 44) = v127;
    _os_log_impl(&_mh_execute_header, v4, v29, "[%@] ╒ Received %ld %{public}sserver app update(s) and %ld age rating update(s) for account: %llu)", v5, 0x34u);
    sub_100005518(v32, &unk_10059C250);

    sub_100005A00(v8);

    v128 = *v129;
    (*v129)(v120, v119);
LABEL_26:
    if (v30)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (!v39)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v39 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_38;
      }
    }

    if (v39 < 1)
    {
      goto LABEL_79;
    }

    v5 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v47 = *(v0 + 8 * v5 + 32);
      }

      v48 = v47;
      v49 = v2[29];
      static Logger.updates.getter();
      v50 = v49;
      v51 = v48;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v40 = v2[29];
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412546;
        *(v41 + 4) = v40;
        *(v41 + 12) = 2114;
        *(v41 + 14) = v51;
        *v42 = v123;
        v42[1] = v51;
        v43 = v40;
        v44 = v51;
        _os_log_impl(&_mh_execute_header, v52, v53, "[%@] ├ UPD %{public}@", v41, 0x16u);
        sub_100085D40(&unk_10059C250);
        swift_arrayDestroy();
        v2 = v126;
      }

      else
      {
        v44 = v52;
        v52 = v51;
      }

      ++v5;
      v45 = v2[34];
      v46 = v2[30];

      v128(v45, v46);
    }

    while (v39 != v5);
LABEL_38:

    if (*(v124 + 16))
    {
      v55 = v2[42];
      v54 = v2[43];
      v56 = v2[29];
      v57 = type metadata accessor for TaskPriority();
      v58 = *(v57 - 8);
      (*(v58 + 56))(v54, 1, 1, v57);
      v59 = swift_allocObject();
      v59[2] = 0;
      v59[3] = 0;
      v59[4] = v124;
      v59[5] = v56;
      sub_10009E3F4(v54, v55);
      v60 = (*(v58 + 48))(v55, 1, v57);
      v61 = v56;

      v62 = v2[42];
      if (v60 == 1)
      {
        sub_100005518(v2[42], &qword_10059C3E0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v58 + 8))(v62, v57);
      }

      v5 = v59[2];
      swift_unknownObjectRetain();

      if (v5)
      {
        swift_getObjectType();
        v63 = dispatch thunk of Actor.unownedExecutor.getter();
        v65 = v64;
        swift_unknownObjectRelease();
      }

      else
      {
        v63 = 0;
        v65 = 0;
      }

      sub_100005518(v2[43], &qword_10059C3E0);
      v66 = swift_allocObject();
      *(v66 + 16) = &unk_100434840;
      *(v66 + 24) = v59;
      if (v65 | v63)
      {
        v108[4] = 0;
        v108[5] = 0;
        v2[14] = v63;
        v2[15] = v65;
      }

      swift_task_create();
    }

    else
    {
    }

    v67 = *(v117 + 16);
    if (v67)
    {
      v68 = (v117 + 56);
      do
      {
        v71 = v126[29];
        v72 = *(v68 - 3);
        v73 = *(v68 - 2);
        v5 = *v68;
        v125 = *(v68 - 1);

        static Logger.updates.getter();
        v74 = v71;

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();

        v77 = os_log_type_enabled(v75, v76);
        v78 = v126[33];
        v79 = v126[30];
        if (v77)
        {
          log = v75;
          v80 = v126[29];
          v122 = v126[30];
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v130[0] = swift_slowAlloc();
          *v81 = 138412802;
          *(v81 + 4) = v80;
          *v82 = v123;
          if (!v73)
          {
            v72 = 0;
          }

          v121 = v78;
          if (v73)
          {
            v83 = v73;
          }

          else
          {
            v83 = 0xE000000000000000;
          }

          *(v81 + 12) = 2082;
          v84 = v80;

          v85 = sub_1001AD0D8(v72, v83, v130);

          *(v81 + 14) = v85;
          *(v81 + 22) = 2080;

          v86 = sub_1001AD0D8(v125, v5, v130);

          *(v81 + 24) = v86;
          _os_log_impl(&_mh_execute_header, log, v76, "[%@] ├ DEF { bundleID: %{public}s itemID: %s }", v81, 0x20u);
          sub_100005518(v82, &unk_10059C250);

          swift_arrayDestroy();

          v69 = v121;
          v70 = v122;
        }

        else
        {

          v69 = v78;
          v70 = v79;
        }

        v128(v69, v70);
        v68 += 4;
        --v67;
      }

      while (v67);
    }

    v2 = v126;
    v87 = v126[29];

    static Logger.updates.getter();
    v88 = v87;
    v4 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v89))
    {
      v5 = v126[29];
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v90 = 138412290;
      *(v90 + 4) = v5;
      *v91 = v123;
      v92 = v5;
      _os_log_impl(&_mh_execute_header, v4, v89, "[%@] ╘", v90, 0xCu);
      sub_100005518(v91, &unk_10059C250);
    }

    v15 = v115 + 1;
    v17 = v126[32];
    v0 = v126[30];

    v128(v17, v0);
    v6 = v110;
    v7 = *(v110 + 16);
    v8 = v116;
    if (v115 + 1 == v7)
    {
      goto LABEL_63;
    }
  }

  swift_bridgeObjectRelease_n();
  v2[23] = v35;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t sub_1000953E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a1;
  v11 = type metadata accessor for Logger();
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1000954F0;

  return sub_100095990(a5, a6);
}

uint64_t sub_1000954F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[9] = a1;
  v5[10] = a2;
  v5[11] = a3;
  v5[12] = v3;

  if (v3)
  {
    v6 = sub_1000957AC;
  }

  else
  {
    v6 = sub_100095608;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100095608()
{
  v25 = v0;
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    result = sub_100174804(0, v2, 0);
    v4 = 0;
    v5 = (v1 + 40);
    v19 = v0;
    v20 = v1;
    v18 = v2;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v0 + 24);
      v7 = *v5;
      v24[0] = *(v5 - 1);
      v24[1] = v7;

      sub_10009611C(v24, v6, &v21);

      v8 = v21;
      v10 = v22;
      v9 = v23;
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        v17 = v21;
        result = sub_100174804((v11 > 1), v12 + 1, 1);
        v8 = v17;
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[4 * v12];
      *(v13 + 2) = v8;
      ++v4;
      v13[6] = v10;
      v13[7] = v9;
      v5 += 2;
      v0 = v19;
      v1 = v20;
      if (v18 == v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    v14 = *(v0 + 16);
    v15 = *(v0 + 72);
    *v14 = *(v0 + 32);
    *(v14 + 8) = v15;
    *(v14 + 24) = _swiftEmptyArrayStorage;

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

uint64_t sub_1000957AC()
{
  v1 = v0[3];
  static Logger.updates.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412802;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v5;
    *(v7 + 22) = 2114;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] error requesting updates for batch index %ld: %{public}@", v7, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];

  (*(v12 + 8))(v11, v13);

  v14 = v0[2];
  *v14 = v0[4];
  v14[1] = _swiftEmptyArrayStorage;
  v14[2] = _swiftEmptyArrayStorage;
  v14[3] = _swiftEmptyArrayStorage;

  v15 = v0[1];

  return v15();
}

uint64_t sub_100095990(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = sub_100085D40(&qword_10059BD40);
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_100095A60, 0, 0);
}

uint64_t sub_100095A60()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[25];
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v6 = [v4 dataTaskPromiseWithRequest:isa];
  v0[30] = v6;

  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_100095C60;
  swift_continuation_init();
  v0[17] = v3;
  v7 = sub_100005F38(v0 + 14);
  sub_10009FAD4(0, &qword_10059BD48);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v2 + 32))(v7, v1, v3);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10018C224;
  v0[13] = &unk_10050A950;
  [v6 resultWithCompletion:?];
  (*(v2 + 8))(v7, v3);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100095C60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1000960A0;
  }

  else
  {
    v2 = sub_100095D70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100095D70()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 176);
  *(v0 + 256) = v2;

  if ([v2 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *(v0 + 144) = v11;
  *(v0 + 160) = v12;
  if (*(v0 + 168))
  {
    sub_100085D40(&unk_10059DC90);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 184);
      goto LABEL_9;
    }
  }

  else
  {
    sub_100005518(v0 + 144, &unk_10059CC50);
  }

  v3 = sub_1000EF17C(_swiftEmptyArrayStorage);
LABEL_9:
  v4 = *(v0 + 208);
  v5 = v4[3];
  v6 = *(v4[4] + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
  v7 = v4[2];

  v8 = v6;
  v9 = swift_task_alloc();
  *(v0 + 264) = v9;
  *v9 = v0;
  v9[1] = sub_100095F24;

  return sub_1000A317C(v3, v7, v5, v8);
}

uint64_t sub_100095F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = a3;

  return _swift_task_switch(sub_100096028, 0, 0);
}

uint64_t sub_100096028()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);

  return v1(v4, v2, v3);
}

uint64_t sub_1000960A0()
{
  v1 = *(v0 + 240);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10009611C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = __chkstk_darwin(v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = HIBYTE(v11) & 0xF;
  v14 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_71;
  }

  if ((v11 & 0x1000000000000000) == 0)
  {
    if ((v11 & 0x2000000000000000) != 0)
    {
      v73[0] = v12;
      v73[1] = (v11 & 0xFFFFFFFFFFFFFFLL);
      if (v12 == 43)
      {
        if (!v13)
        {
          goto LABEL_79;
        }

        if (--v13)
        {
          v18 = 0;
          v29 = v73 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v12 == 45)
      {
        if (!v13)
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
        }

        if (--v13)
        {
          v18 = 0;
          v22 = v73 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v13)
      {
        v18 = 0;
        v34 = v73;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          v34 = (v34 + 1);
          if (!--v13)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else
    {
      if ((v12 & 0x1000000000000000) != 0)
      {
        v13 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v66 = v8;
        v67 = v7;
        v13 = _StringObject.sharedUTF8.getter();
        v7 = v67;
        v8 = v66;
      }

      v16 = *v13;
      if (v16 == 43)
      {
        if (v14 >= 1)
        {
          v25 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (!v13)
            {
              goto LABEL_62;
            }

            v26 = (v13 + 1);
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v25)
              {
LABEL_53:
                LOBYTE(v13) = 0;
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_78;
      }

      if (v16 == 45)
      {
        if (v14 >= 1)
        {
          v17 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (!v13)
            {
              goto LABEL_62;
            }

            v19 = (v13 + 1);
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v21 - v20;
              if (__OFSUB__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v17)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_61;
        }

        __break(1u);
        goto LABEL_77;
      }

      if (v14)
      {
        v18 = 0;
        if (!v13)
        {
          goto LABEL_62;
        }

        while (1)
        {
          v32 = *v13 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v13;
          if (!--v14)
          {
            goto LABEL_53;
          }
        }
      }
    }

LABEL_61:
    v18 = 0;
    LOBYTE(v13) = 1;
LABEL_62:
    v72 = v13;
    if ((v13 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_71:
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_72;
  }

  v71 = a2;
  v61 = v10;
  v62 = v8;
  v63 = v7;

  v18 = sub_1001704B8(v12, v11, 10);
  v65 = v64;

  v8 = v62;
  v10 = v61;
  a2 = v71;
  if (v65)
  {
    goto LABEL_71;
  }

  v7 = v63;
LABEL_63:
  v70 = v7;
  v71 = v12;
  v37 = v8;
  v38 = [objc_allocWithZone(NSNumber) initWithLongLong:v18];
  v39 = objc_allocWithZone(ApplicationProxy);
  v73[0] = 0;
  v40 = [v39 initWithItemID:v38 error:v73];
  if (!v40)
  {
    v69 = v37;
    v48 = v73[0];
    v49 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v50 = v10;
    static Logger.updates.getter();

    v51 = a2;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v68 = v49;
      v57 = v56;
      v73[0] = v56;
      *v54 = 138412546;
      *(v54 + 4) = v51;
      *v55 = v51;
      *(v54 + 12) = 2082;
      v58 = v51;
      v59 = v50;
      v12 = v71;
      *(v54 + 14) = sub_1001AD0D8(v71, v11, v73);
      _os_log_impl(&_mh_execute_header, v52, v53, "[%@] Found deferred update but not proxy for itemID: %{public}s", v54, 0x16u);
      sub_100005518(v55, &unk_10059C250);

      sub_100005A00(v57);

      (*(v69 + 8))(v59, v70);
    }

    else
    {

      (*(v69 + 8))(v50, v70);
      v12 = v71;
    }

    goto LABEL_71;
  }

  v41 = v40;
  v42 = v73[0];

  v43 = sub_1003D0F60(v41);
  if (v43)
  {
    v44 = v43;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {

    v45 = 0;
    v47 = 0;
  }

  *a3 = v45;
  a3[1] = v47;
  v12 = v71;
LABEL_72:
  a3[2] = v12;
  a3[3] = v11;
}

unint64_t *sub_100096784(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v3 = v2;
  v4 = a2;
  v6 = sub_10009E054(a1, a2);
  v36 = *(a1 + 16);
  v9 = sub_10009E5C0(v6, v8, v7 & 1, v36, 0, 1, a1, v4);
  result = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v45 = &_swiftEmptyArrayStorage;
    sub_1001747C4(0, v9 & ~(v9 >> 63), 0);
    v38 = &_swiftEmptyArrayStorage;
    v11 = sub_10009E054(a1, v4);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v14 = v11;
      v15 = v12;
      v16 = v13;
      v17 = 0;
      v34 = v4;
      v35 = a1 + 32;
      v33 = a1;
      while (!__OFADD__(v17, 1))
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }

        if (v14 >= v36)
        {
          goto LABEL_18;
        }

        v37 = v17 + 1;
        v18 = (v35 + 24 * v14);
        v19 = v4;
        v20 = v18[1];
        v21 = v18[2];
        v39 = *v18;
        v40 = v20;
        v41 = v21;

        v19(&v43, &v39);

        if (v16)
        {
          goto LABEL_22;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }

        if (v15 >= *(v43 + 16))
        {
          goto LABEL_20;
        }

        v22 = (v43 + 32 * v15);
        v24 = v22[4];
        v23 = v22[5];
        v25 = v22[6];
        v26 = v22[7];

        v39 = v24;
        v40 = v23;
        v41 = v25;
        v42 = v26;
        sub_10009846C(&v39, &v44);
        if (v3)
        {
          goto LABEL_23;
        }

        v3 = 0;

        v27 = v44;
        v28 = v38;
        v45 = v38;
        v30 = v38[2];
        v29 = v38[3];
        if (v30 >= v29 >> 1)
        {
          sub_1001747C4((v29 > 1), v30 + 1, 1);
          v28 = v45;
        }

        v28[2] = v30 + 1;
        v38 = v28;
        v28[v30 + 4] = v27;
        v4 = v34;
        v14 = sub_10009E990(v14, v15, 0, v33, v34);
        v15 = v31;
        v16 = v32;
        ++v17;
        if (v37 == v9)
        {
          return v38;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:

    __break(1u);
  }

  return result;
}

void *sub_100096A24(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a4)
    {
      sub_100085D40(&unk_10059F6D0);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      result[2] = a4;
      result[4] = v7;
      result[5] = a2;
      result[6] = a3;
      v8 = a4 - 1;
      if (v8)
      {
        v9 = result;
        v10 = result + 9;
        do
        {
          *(v10 - 2) = v7;
          *(v10 - 1) = a2;
          *v10 = a3;
          v10 += 3;

          --v8;
        }

        while (v8);
        return v9;
      }
    }

    else
    {

      return &_swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_100096AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  sub_100085D40(&qword_10059CE90);
  v5[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_100096CC0, 0, 0);
}

id sub_100096CC0()
{
  v197 = v0;
  if (qword_10059B490 != -1)
  {
    swift_once();
  }

  v1 = qword_1005AB0A0 + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues;
  os_unfair_lock_lock((qword_1005AB0A0 + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues));
  if (*(v1 + 24) == 1)
  {
    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = [result effectiveValueForSetting:MCFeatureMaximumAppsRating];

    if (v4)
    {
      v5 = [v4 integerValue];
    }

    else
    {
      v5 = 1000;
    }

    v162 = v5;
    *(v1 + 16) = v5;
    *(v1 + 24) = 0;
  }

  else
  {
    v162 = *(v1 + 16);
  }

  v6 = v0[4];
  os_unfair_lock_unlock(v1);
  v194 = *(v6 + 16);
  if (v194)
  {
    v7 = v0[17];
    v164 = (v7 + 8);
    v192 = (v0[8] + 8);
    v163 = (v7 + 56);
    v185 = v0[5];
    v8 = (v0[4] + 64);
    v167 = &_swiftEmptyArrayStorage;
    v178 = v0;
    while (1)
    {
      v10 = *(v8 - 4);
      v9 = *(v8 - 3);
      v11 = *v8;
      swift_bridgeObjectRetain_n();

      v12 = v11;
      v13 = sub_10016717C(v10, v9);
      if (v14)
      {
        v15 = v0[5];
        static Logger.updates.getter();

        v16 = v12;
        v17 = v15;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        v20 = os_log_type_enabled(v18, v19);
        v21 = v0[12];
        v22 = v0[7];
        if (v20)
        {
          v23 = v0[5];
          v180 = v0[12];
          v24 = v9;
          v25 = swift_slowAlloc();
          v26 = v10;
          v27 = swift_slowAlloc();
          v186 = v8;
          v28 = swift_slowAlloc();
          v196[0] = v28;
          *v25 = 138412546;
          *(v25 + 4) = v23;
          *v27 = v185;
          *(v25 + 12) = 2082;

          v29 = v23;
          v30 = sub_1001AD0D8(v26, v24, v196);

          *(v25 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Unable to parse itemID: %{public}s as UInt64", v25, 0x16u);
          sub_100005518(v27, &unk_10059C250);
          v0 = v178;

          sub_100005A00(v28);
          v8 = v186;

          (*v192)(v180, v22);
        }

        else
        {

          (*v192)(v21, v22);
        }
      }

      else
      {
        v31 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v13];
        v32 = objc_allocWithZone(ApplicationProxy);
        v0[2] = 0;
        v33 = [v32 initWithItemID:v31 error:v0 + 2];
        v34 = v0[2];
        if (!v33)
        {
          v182 = v10;
          v54 = v34;
          _convertNSErrorToError(_:)();

          swift_willThrow();
LABEL_25:
          v55 = v0[5];
          static Logger.updates.getter();

          v56 = v12;
          v57 = v55;
          swift_errorRetain();
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.error.getter();

          v60 = os_log_type_enabled(v58, v59);
          v61 = v0[10];
          v62 = v0[7];
          if (v60)
          {
            v63 = v0[5];
            v176 = v56;
            v64 = swift_slowAlloc();
            v172 = v61;
            v65 = swift_slowAlloc();
            v168 = v62;
            v66 = swift_slowAlloc();
            v196[0] = v66;
            *v64 = 138412802;
            *(v64 + 4) = v63;
            *v65 = v185;
            *(v64 + 12) = 2082;

            v67 = v63;
            v68 = sub_1001AD0D8(v182, v9, v196);

            *(v64 + 14) = v68;
            *(v64 + 22) = 2114;
            swift_errorRetain();
            v69 = _swift_stdlib_bridgeErrorToNSError();
            *(v64 + 24) = v69;
            v65[1] = v69;
            _os_log_impl(&_mh_execute_header, v58, v59, "[%@] Unable to update store metadata for itemID: %{public}s because %{public}@", v64, 0x20u);
            sub_100085D40(&unk_10059C250);
            swift_arrayDestroy();

            sub_100005A00(v66);

            (*v192)(v172, v168);
          }

          else
          {

            (*v192)(v61, v62);
          }

          goto LABEL_13;
        }

        v35 = v33;
        v36 = v34;

        v38 = sub_1003D2888(v35, v37);
        if (!v38)
        {
          v183 = v10;
          v70 = v0[5];
          static Logger.updates.getter();

          v71 = v12;
          v72 = v70;
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.error.getter();

          v75 = os_log_type_enabled(v73, v74);
          v76 = v0[13];
          v77 = v0[7];
          if (v75)
          {
            v78 = v0[5];
            v177 = v0[7];
            v79 = swift_slowAlloc();
            v173 = v71;
            v80 = swift_slowAlloc();
            v169 = v76;
            v81 = swift_slowAlloc();
            v196[0] = v81;
            *v79 = 138412546;
            *(v79 + 4) = v78;
            *v80 = v185;
            *(v79 + 12) = 2082;

            v82 = v78;
            v83 = v8;
            v84 = sub_1001AD0D8(v183, v9, v196);

            *(v79 + 14) = v84;
            v8 = v83;
            _os_log_impl(&_mh_execute_header, v73, v74, "[%@] Unable to find store metadata for itemID: %{public}s", v79, 0x16u);
            sub_100005518(v80, &unk_10059C250);

            sub_100005A00(v81);

            (*v192)(v169, v177);
          }

          else
          {

            (*v192)(v76, v77);
          }

          goto LABEL_13;
        }

        v39 = v38;
        v40 = sub_1003D0F60(v35);
        v190 = v39;
        if (!v40)
        {
          goto LABEL_35;
        }

        v41 = v40;
        v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;
        v44 = sub_1003D24E8(v35);
        if (!v44)
        {

LABEL_35:
          v104 = v0[5];
          static Logger.updates.getter();

          v105 = v12;
          v106 = v104;
          v107 = v35;
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v108, v109))
          {
            v171 = v109;
            v184 = v105;
            v110 = v0[5];
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v196[0] = swift_slowAlloc();
            *v111 = 138413058;
            *(v111 + 4) = v110;
            *v112 = v185;
            *(v111 + 12) = 2082;

            v113 = v110;
            v114 = sub_1001AD0D8(v10, v9, v196);

            *(v111 + 14) = v114;
            *(v111 + 22) = 2080;
            v115 = sub_1003D0F60(v107);
            v188 = v8;
            if (v115)
            {

              v116 = 0;
              v117 = 0xE000000000000000;
            }

            else
            {
              v117 = 0xE900000000000044;
              v116 = 0x49656C646E756220;
            }

            v126 = sub_1001AD0D8(v116, v117, v196);

            *(v111 + 24) = v126;
            *(v111 + 32) = 2080;
            v127 = sub_1003D24E8(v107);
            if (v127)
            {
              v128 = v127;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v129 = 0;
              v130 = 0;
              v131 = 0xE000000000000000;
            }

            else
            {
              v131 = 0xEA00000000004C52;
              v129 = 1;
              v130 = 0x55656C646E756220;
            }

            v132 = v0[14];
            v133 = v0[6];
            v166 = v0[7];
            (*v163)(v133, v129, 1, v0[16]);
            sub_100005518(v133, &qword_10059CE90);
            v134 = sub_1001AD0D8(v130, v131, v196);

            *(v111 + 34) = v134;
            _os_log_impl(&_mh_execute_header, v108, v171, "[%@] Unable to update store metadata for itemID: %{public}s because of missing%s%s", v111, 0x2Au);
            sub_100005518(v112, &unk_10059C250);

            swift_arrayDestroy();

            (*v192)(v132, v166);
            v8 = v188;
          }

          else
          {
            v118 = v0[14];
            v119 = v8;
            v120 = v0[7];

            v121 = v120;
            v8 = v119;
            (*v192)(v118, v121);
          }

          goto LABEL_13;
        }

        v175 = v43;
        v179 = v9;
        v45 = v44;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v46 = [v39 ratingRank];
        if (!v46 || (v47 = v46, sub_10009FAD4(0, &qword_10059CBB0), v48 = v12, v49 = static NSObject.== infix(_:_:)(), v47, v48, (v49 & 1) == 0))
        {
          [v190 setRatingRank:v12];
          URL._bridgeToObjectiveC()(v85);
          v87 = v86;
          v0[3] = 0;
          v88 = sub_1003E3BE4(v190, v41, v86, v0 + 3);

          v89 = v0[3];
          if (v88)
          {
            v90 = v0[5];
            v91 = v89;
            static Logger.updates.getter();
            v92 = v90;

            v93 = v190;
            v94 = Logger.logObject.getter();
            v95 = static os_log_type_t.default.getter();

            v96 = os_log_type_enabled(v94, v95);
            v97 = v0[15];
            v191 = v0[7];
            if (v96)
            {
              v174 = v0[15];
              v98 = v0[5];
              v187 = v8;
              v99 = swift_slowAlloc();
              v165 = v93;
              v100 = swift_slowAlloc();
              v170 = swift_slowAlloc();
              v196[0] = v170;
              *v99 = 138412802;
              *(v99 + 4) = v98;
              *v100 = v185;
              *(v99 + 12) = 2082;
              v101 = v98;
              *(v99 + 14) = sub_1001AD0D8(v181, v175, v196);
              *(v99 + 22) = 2112;
              v102 = v165;
              v103 = [v165 ratingRank];
              *(v99 + 24) = v103;
              v100[1] = v103;
              _os_log_impl(&_mh_execute_header, v94, v95, "[%@] Finished updating storeMetadata for bundleID:%{public}s to %@", v99, 0x20u);
              sub_100085D40(&unk_10059C250);
              swift_arrayDestroy();

              sub_100005A00(v170);

              v8 = v187;

              (*v192)(v174, v191);
            }

            else
            {

              (*v192)(v97, v191);
              v102 = v93;
            }

            if (v162 >= [v12 integerValue])
            {
              (*v164)(v0[18], v0[16]);
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v167 = sub_1001AC6FC(0, *(v167 + 2) + 1, 1, v167);
              }

              v136 = *(v167 + 2);
              v135 = *(v167 + 3);
              if (v136 >= v135 >> 1)
              {
                v167 = sub_1001AC6FC((v135 > 1), v136 + 1, 1, v167);
              }

              v137 = v0[18];
              v138 = v0[16];

              (*v164)(v137, v138);
              *(v167 + 2) = v136 + 1;
              v139 = &v167[16 * v136];
              *(v139 + 4) = v181;
              *(v139 + 5) = v175;
            }

            goto LABEL_13;
          }

          v182 = v10;
          v122 = v0[18];
          v189 = v8;
          v123 = v0[16];
          v124 = v89;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v125 = v123;
          v8 = v189;
          (*v164)(v122, v125);
          v9 = v179;
          goto LABEL_25;
        }

        v50 = v0[18];
        v51 = v8;
        v52 = v0[16];

        v53 = v52;
        v8 = v51;
        (*v164)(v50, v53);
      }

LABEL_13:
      v8 += 5;
      if (!--v194)
      {
        goto LABEL_54;
      }
    }
  }

  v167 = &_swiftEmptyArrayStorage;
LABEL_54:
  v0[19] = v167;
  v140 = v0[5];
  static Logger.updates.getter();
  swift_bridgeObjectRetain_n();
  v141 = v140;
  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.default.getter();

  v144 = os_log_type_enabled(v142, v143);
  v145 = v0[11];
  v146 = v0;
  v149 = v0 + 7;
  v147 = v0[7];
  v148 = v149[1];
  if (v144)
  {
    v195 = v147;
    v150 = v146[5];
    v193 = v145;
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v196[0] = v153;
    *v151 = 138412802;
    *(v151 + 4) = v150;
    *v152 = v150;
    *(v151 + 12) = 2050;
    v154 = *(v167 + 2);
    v155 = v150;

    *(v151 + 14) = v154;

    *(v151 + 22) = 2080;
    if (*(v167 + 2) == 1)
    {
      v156 = 7368801;
    }

    else
    {
      v156 = 1936748641;
    }

    if (*(v167 + 2) == 1)
    {
      v157 = 0xE300000000000000;
    }

    else
    {
      v157 = 0xE400000000000000;
    }

    v158 = sub_1001AD0D8(v156, v157, v196);

    *(v151 + 24) = v158;

    _os_log_impl(&_mh_execute_header, v142, v143, "[%@] Notifying ScreenTime of app rating changes for %{public}ld %s", v151, 0x20u);
    sub_100005518(v152, &unk_10059C250);

    sub_100005A00(v153);

    v159 = *(v148 + 8);
    v159(v193, v195);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v159 = *(v148 + 8);
    v159(v145, v147);
  }

  v146[20] = v159;
  type metadata accessor for ScreenTimeExceptionsHelper();
  v160 = swift_task_alloc();
  v146[21] = v160;
  *v160 = v146;
  v160[1] = sub_100097FFC;
  v161 = v146[5];

  return sub_100146DF0(v167, v161);
}

uint64_t sub_100097FFC()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100098208, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100098208()
{
  v1 = *(v0 + 40);

  static Logger.updates.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2114;
    v8 = v5;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to notify ScreenTime of rating changes with error: %{public}@", v6, 0x16u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0 + 160))(*(v0 + 72), *(v0 + 56));

  v10 = *(v0 + 8);

  return v10();
}

void sub_10009846C(uint64_t a1@<X0>, Swift::Int *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = sub_1000EF3C0(&_swiftEmptyArrayStorage);
  sub_10009FAD4(0, &unk_10059CE30);
  v5 = NSString.init(stringLiteral:)();
  v6 = v5;
  if (v3)
  {
    v7 = String._bridgeToObjectiveC()();
    if ((v4 & 0xC000000000000001) != 0)
    {
      if (v4 < 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v9 = __CocoaDictionary.count.getter();
      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }

      v4 = sub_10009D97C(v8, v9 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001B386C(v7, v6, isUniquelyReferenced_nonNull_native);

    v11 = v4;
  }

  else
  {
    v12 = sub_10016D470(v5);

    v11 = v4;
  }

  v13 = NSString.init(stringLiteral:)();
  v14 = String._bridgeToObjectiveC()();
  if ((v11 & 0xC000000000000001) == 0)
  {
LABEL_16:
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001B386C(v14, v13, v17);

    *a2 = v11;
    return;
  }

  if (v11 < 0)
  {
    v15 = v11;
  }

  else
  {
    v15 = v11 & 0xFFFFFFFFFFFFFF8;
  }

  v16 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v16, 1))
  {
    v11 = sub_10009D97C(v15, v16 + 1);
    goto LABEL_16;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_100098628(id *a1)
{
  v3 = @"deferredUpdates";
  sub_100085D40(&qword_10059BD50);
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_10032BA04(a1, isa, v3);
}

void sub_1000986B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_100098700(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v25 = a1 + 32;
  v2 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *(v25 + 24 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v9 = v23 + v6;
      if (__OFADD__(v23, v6))
      {
LABEL_32:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v30 = v6;
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v30)
    {
      goto LABEL_36;
    }

    v27 = v1;
    v28 = v2;
    v15 = v10 + 8 * v11 + 32;
    v24 = v10;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_10009F9D4(&qword_10059BD78, &qword_10059BD18);
      for (i = 0; i != v13; ++i)
      {
        sub_100085D40(&qword_10059BD18);
        v17 = sub_10018C128(v29, i, v4);
        v19 = *v18;
        (v17)(v29, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      type metadata accessor for MediaAPIUpdate();
      swift_arrayInitWithCopy();
    }

    v1 = v27;
    v2 = v28;
    if (v30 >= 1)
    {
      v20 = *(v24 + 16);
      v21 = __OFADD__(v20, v30);
      v22 = v20 + v30;
      if (v21)
      {
        goto LABEL_37;
      }

      *(v24 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  v14 = v10;
  result = _CocoaArrayWrapper.endIndex.getter();
  v10 = v14;
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v30 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000989E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[38] = a8;
  v9[39] = v8;
  v9[36] = a6;
  v9[37] = a7;
  v9[34] = a4;
  v9[35] = a5;
  v9[32] = a2;
  v9[33] = a3;
  v9[31] = a1;
  v10 = sub_100085D40(&qword_10059BDB0);
  v9[40] = v10;
  v9[41] = *(v10 - 8);
  v9[42] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v9[43] = v11;
  v9[44] = *(v11 - 8);
  v9[45] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v9[46] = v12;
  v9[47] = *(v12 - 8);
  v9[48] = swift_task_alloc();
  v9[49] = swift_task_alloc();
  v9[50] = swift_task_alloc();

  return _swift_task_switch(sub_100098BC0, 0, 0);
}

uint64_t sub_100098BC0()
{
  static Logger.updates.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[39];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *(*(v3 + 32) + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Checking the bag for the appropriate language key…", v4, 0xCu);
    sub_100005518(v5, &unk_10059C250);
  }

  v8 = v0[50];
  v9 = v0[46];
  v10 = v0[47];
  v11 = v0[39];

  v12 = *(v10 + 8);
  v0[51] = v12;
  v0[52] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  sub_100005B60((v11 + 48), *(v11 + 72));
  v13 = sub_1000C4F1C();
  if (v14)
  {
    goto LABEL_7;
  }

  static Logger.updates.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[39];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = *(*(v17 + 32) + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v18 + 4) = v20;
    *v19 = v20;
    v21 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Failed to get “language-tag” from the bag; falling back on “language”…", v18, 0xCu);
    sub_100005518(v19, &unk_10059C250);
  }

  v22 = v0[49];
  v23 = v0[46];

  v12(v22, v23);
  sub_100005B60((v11 + 48), *(v11 + 72));
  v13 = sub_1000C4F1C();
  if (v14)
  {
LABEL_7:
    v24 = v13;
    v25 = v14;
    v0[53] = v14;
    v26 = swift_task_alloc();
    v0[54] = v26;
    *v26 = v0;
    v26[1] = sub_100099060;
    v27 = v0[45];
    v28 = v0[36];
    v29 = v0[37];
    v30 = v0[34];
    v31 = v0[35];

    return sub_100099EB4(v27, v28, v29, v24, v25, v30, v31);
  }

  else
  {
    type metadata accessor for AMSError(0);
    v0[27] = 204;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_10009FA1C(&qword_10059BA40, type metadata accessor for AMSError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_100099060()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_100099530;
  }

  else
  {

    v2 = sub_1000991B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000991B0()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[38];
  [v4 setAccount:v0[33]];
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [v4 requestWithURL:v6];
  v0[56] = v8;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1000993F4;
  swift_continuation_init();
  v0[17] = v3;
  v9 = sub_100005F38(v0 + 14);
  sub_10009FAD4(0, &qword_10059BDB8);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v2 + 32))(v9, v1, v3);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009A76C;
  v0[13] = &unk_10050A9C8;
  [v8 resultWithCompletion:?];
  (*(v2 + 8))(v9, v3);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000993F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 456) = v1;
  if (v1)
  {
    v2 = sub_100099DBC;
  }

  else
  {
    v2 = sub_100099604;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100099530()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100099604()
{
  v71 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 224);

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  [v3 setHTTPMethod:v4];

  if (!v1)
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_5;
  }

  v5 = *(v0 + 264);
  v6 = objc_opt_self();
  *(v0 + 232) = 0;
  v7 = sub_1002C6074(v6, v5, 11, (v0 + 232));
  v8 = *(v0 + 232);
  if (v7)
  {
    v9 = *(v0 + 264);
    v10 = v7;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    v14 = v8;

LABEL_5:
    v15 = *(v0 + 440);
    goto LABEL_12;
  }

  v16 = *(v0 + 264);
  v17 = v8;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  static Logger.updates.getter();

  v18 = v16;
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v69 = v20;
    v21 = *(v0 + 312);
    v22 = *(v0 + 264);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v70 = v68;
    *v23 = 138412802;
    v25 = *(*(v21 + 32) + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v23 + 4) = v25;
    *v24 = v25;
    *(v23 + 12) = 2114;
    v26 = v25;
    isa = [v22 ams_DSID];
    if (!isa)
    {
      sub_10009FAD4(0, &qword_10059CBB0);
      isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    }

    v67 = *(v0 + 408);
    v64 = *(v0 + 368);
    v65 = *(v0 + 384);
    v63 = *(v0 + 264);
    *(v23 + 14) = isa;
    v24[1] = isa;
    *(v23 + 22) = 2082;
    swift_getErrorValue();
    v28 = *(*(v0 + 192) - 8);
    swift_task_alloc();
    (*(v28 + 16))();
    v29 = String.init<A>(describing:)();
    v31 = v30;

    v32 = sub_1001AD0D8(v29, v31, &v70);

    *(v23 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v19, v69, "[%@] Error generating keybag for account: %{public}@ error: %{public}s", v23, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    sub_100005A00(v68);

    v67(v65, v64);
  }

  else
  {
    v33 = *(v0 + 408);
    v34 = *(v0 + 384);
    v35 = *(v0 + 368);

    v33(v34, v35);
  }

  v15 = 0;
  v11 = 0;
  v13 = 0;
LABEL_12:
  v36 = *(v0 + 256);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v37 = objc_opt_self();

  v38 = [v37 deviceGUID];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  *(v0 + 144) = v36;
  *(v0 + 152) = v39;
  *(v0 + 160) = v41;
  *(v0 + 168) = v11;
  *(v0 + 176) = v13;
  sub_100085D40(&qword_10059BDC0);
  sub_10009F9D4(&qword_10059BDC8, &qword_10059BDC0);
  v42 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v15)
  {
    v45 = *(v0 + 352);
    v44 = *(v0 + 360);
    v46 = *(v0 + 344);

    (*(v45 + 8))(v44, v46);

    v47 = *(v0 + 8);
  }

  else
  {
    v48 = v42;
    v49 = v43;

    v50 = Data._bridgeToObjectiveC()().super.isa;
    v51 = sub_100229D64(v50);

    if (v51)
    {
      v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100088CDC(v52, v54);
    }

    else
    {
      v55.super.isa = 0;
    }

    v57 = *(v0 + 352);
    v56 = *(v0 + 360);
    v66 = *(v0 + 344);
    [v3 setHTTPBody:v55.super.isa];

    v58 = String._bridgeToObjectiveC()();
    v59 = String._bridgeToObjectiveC()();
    [v3 setValue:v58 forHTTPHeaderField:v59];

    v60 = String._bridgeToObjectiveC()();
    v61 = String._bridgeToObjectiveC()();
    [v3 setValue:v60 forHTTPHeaderField:v61];

    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100088CDC(v48, v49);

    (*(v57 + 8))(v56, v66);

    v47 = *(v0 + 8);
  }

  return v47();
}

uint64_t sub_100099DBC()
{
  v1 = v0[56];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100099EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v9 = type metadata accessor for Logger();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  sub_100085D40(&qword_10059CE90);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for URLComponents();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_10009A014, 0, 0);
}

uint64_t sub_10009A014()
{
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  URLComponents.init()();
  URLComponents.scheme.setter();
  _StringGuts.grow(_:)(22);

  v4._countAndFlagsBits = v3;
  v4._object = v2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x736574616470752FLL;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  URLComponents.path.setter();
  v6 = *(*(v1 + 32) + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
  if (v6 < 0xA)
  {
    v32 = *(v1 + 32);
    sub_100085D40(&qword_10059F6B0);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_100434770;
    URLQueryItem.init(name:value:)();
    v7 = objc_opt_self();
    if ([v7 deviceIsiPad])
    {
      v8 = &AMSMediaTaskPlatformiPad;
    }

    else
    {
      if (([v7 deviceIsiPhone] & 1) == 0)
      {
        v10 = String._bridgeToObjectiveC()();
        goto LABEL_11;
      }

      v8 = &AMSMediaTaskPlatformiPhone;
    }

    v10 = *v8;
LABEL_11:
    v11 = v10;
    v33 = v0[11];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URLQueryItem.init(name:value:)();

    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    if (v33)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100434780;
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      String.lowercased()();
      URLQueryItem.init(name:value:)();

      sub_100154A68(v12);
    }

    v13 = v0[16];
    v14 = v0[12];
    URLComponents.queryItems.setter();
    sub_100005B60((v14 + 48), *(v14 + 72));
    dispatch thunk of Bag.subscript.getter();
    URLComponents.host.setter();
    URLComponents.url.getter();
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      sub_100005518(v0[16], &qword_10059CE90);
      static Logger.updates.getter();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = *(v32 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
        *(v19 + 4) = v21;
        *v20 = v21;
        v22 = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Not able to retrieve a valid URL to check for updates", v19, 0xCu);
        sub_100005518(v20, &unk_10059C250);
      }

      v24 = v0[18];
      v23 = v0[19];
      v25 = v0[17];
      v27 = v0[14];
      v26 = v0[15];
      v28 = v0[13];

      (*(v27 + 8))(v26, v28);
      type metadata accessor for ASDError(0);
      v0[4] = 850;
      sub_1000EF17C(_swiftEmptyArrayStorage);
      sub_10009FA1C(&qword_10059B7F0, type metadata accessor for ASDError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      (*(v24 + 8))(v23, v25);

      v29 = v0[1];
    }

    else
    {
      v30 = v0[16];
      v31 = v0[5];
      (*(v0[18] + 8))(v0[19], v0[17]);
      (*(v16 + 32))(v31, v30, v15);

      v29 = v0[1];
    }

    return v29();
  }

  type metadata accessor for LoadSoftwareUpdatesReason(0);
  v0[2] = v6;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

void sub_10009A76C(uint64_t a1, void *a2, void *a3)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100085D40(&qword_10059BDB0);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100085D40(&qword_10059BDB0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10009A81C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = a1;
  v2 = type metadata accessor for Logger();
  v26[1] = *(v2 - 8);
  v26[2] = v2;
  __chkstk_darwin(v2);
  v26[3] = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CocoaError.Code();
  v26[5] = *(v4 - 8);
  v26[6] = v4;
  __chkstk_darwin(v4);
  v26[4] = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100085D40(&qword_10059CE90);
  __chkstk_darwin(v6 - 8);
  v28 = v26 - v7;
  v8 = type metadata accessor for URL.DirectoryHint();
  v27 = *(v8 - 8);
  v9 = v27;
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v16 = sub_10029BDD4();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *(v9 + 104);
  v17(v11, enum case for URL.DirectoryHint.isDirectory(_:), v8);
  (*(v13 + 56))(v28, 1, 1, v12);
  URL.init(filePath:directoryHint:relativeTo:)();
  v31 = 0xD000000000000020;
  v32 = 0x800000010044D100;
  v17(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
  v18 = v29;
  sub_100003B3C();
  URL.appending<A>(path:directoryHint:)();
  (*(v27 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  v19 = sub_10009F840(0);
  *(v18 + v19[6]) = 0;
  v20 = v30;
  *(v18 + v19[5]) = v30;
  v21 = v20;
  v22 = Data.init(contentsOf:options:)();
  v24 = v23;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100085D40(&qword_10059BDA0);
  sub_10009FA64(&qword_10059BDD8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100088CDC(v22, v24);

  *(v18 + v19[7]) = v31;
  return result;
}

id sub_10009AFB8()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    sub_10009FAD4(0, &qword_10059CBB0);
    v3 = v2;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v5 = static NSObject.== infix(_:_:)();

    if ((v5 & 1) != 0 || [v3 unsignedLongLongValue] == -1)
    {
    }

    else
    {
      v6 = [objc_opt_self() ams_sharedAccountStore];
      v7 = [v6 ams_iTunesAccountWithDSID:v3];

      if (v7)
      {
        goto LABEL_11;
      }
    }
  }

  v8 = *(v1 + 64);
  if (!v8)
  {
LABEL_15:
    if (*(v1 + 56))
    {
      v15 = [objc_opt_self() ams_sharedAccountStore];
      v16 = [v15 ams_iTunesAccounts];

      sub_10009FAD4(0, &unk_10059DC50);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v17 >> 62)
      {
        goto LABEL_32;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v7 = v20;
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if ([v20 ams_isManagedAppleID])
          {

            return v7;
          }

          ++v19;
          if (v21 == i)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        ;
      }

LABEL_33:
    }

    return 0;
  }

  sub_10009FAD4(0, &qword_10059CBB0);
  v9 = v8;
  v10 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) != 0 || [v9 unsignedLongLongValue] == -1)
  {

    goto LABEL_15;
  }

  v12 = [objc_opt_self() ams_sharedAccountStore];
  v7 = [v12 ams_iTunesAccountWithDSID:v9];

  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_11:
  v13 = *(v1 + 56);
  v14 = [v7 ams_isManagedAppleID];
  if (v13)
  {
    if (v14)
    {
      return v7;
    }

    goto LABEL_29;
  }

  if (v14)
  {
LABEL_29:

    return 0;
  }

  return v7;
}

uint64_t sub_10009B2D0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for BagService.PermittedDataOrigin();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for AccountClientIdentifier();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = type metadata accessor for ClientInfo();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_10009B4D4, 0, 0);
}

uint64_t sub_10009B4D4()
{
  v1 = v0[13];
  v2 = sub_10009F840(0);
  v3 = *(v1 + *(v2 + 28));
  if (*(v3 + 16))
  {
    v4 = sub_1000F2DCC(v0[12]);
    if (v5)
    {
      v6 = (*(v3 + 56) + 16 * v4);
      v8 = *v6;
      v7 = v6[1];

LABEL_15:

      v49 = v0[1];

      return v49(v8, v7);
    }

    v1 = v0[13];
  }

  v9 = *(v1 + *(v2 + 20));
  v0[30] = v9;
  v10 = objc_allocWithZone(ACAccountType);
  v11 = v9;
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v10 initWithIdentifier:v12 description:v13];

  v15 = [objc_allocWithZone(ACAccount) initWithAccountType:v14];
  v0[31] = v15;

  if (!v15)
  {
    static Logger.updates.getter();
    v39 = v11;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v0[12];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412546;
      *(v43 + 4) = v39;
      *v44 = v39;
      *(v43 + 12) = 2050;
      *(v43 + 14) = v42;
      v45 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%@] Unable to create an account for %{public}llu", v43, 0x16u);
      sub_100005518(v44, &unk_10059C250);
    }

    else
    {
      v45 = v40;
      v40 = v39;
    }

    v47 = v0[25];
    v46 = v0[26];
    v48 = v0[24];

    (*(v47 + 8))(v46, v48);
    v8 = 0;
    v7 = 0;
    goto LABEL_15;
  }

  v0[10] = v0[12];
  dispatch thunk of CustomStringConvertible.description.getter();
  v16._countAndFlagsBits = 12589;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  v51 = v15;
  [v15 ams_setStorefront:v17];

  static Logger.updates.getter();
  v18 = v11;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[12];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412546;
    *(v22 + 4) = v18;
    *v23 = v18;
    *(v22 + 12) = 2050;
    *(v22 + 14) = v21;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%@] Looking up country code for %{public}llu", v22, 0x16u);
    sub_100005518(v23, &unk_10059C250);
  }

  v25 = v0[29];
  v26 = v19;
  v28 = v0[24];
  v27 = v0[25];
  v30 = v0[22];
  v29 = v0[23];
  v31 = v0[20];
  v32 = v0[18];
  v33 = v0[19];
  v34 = v0[17];
  v50 = v0[21];

  v35 = *(v27 + 8);
  v0[32] = v35;
  v0[33] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v25, v28);
  static AccountClientIdentifier.production.getter();
  (*(v32 + 16))(v33, v31, v34);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v32 + 8))(v31, v34);
  v0[34] = sub_1000D5E3C(v51, 0, v29);
  (*(v30 + 8))(v29, v50);
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v36 = swift_task_alloc();
  v0[35] = v36;
  *v36 = v0;
  v36[1] = sub_10009BA94;
  v37 = v0[16];

  return sub_1000C4BE0((v0 + 2), 0, 0, v37);
}

uint64_t sub_10009BA94()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 288) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10009BE78;
  }

  else
  {
    v5 = sub_10009BC04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10009BC04()
{
  sub_100005B60((v0 + 16), *(v0 + 40));
  v1 = sub_1000C4F1C();
  v3 = v2;
  if (v2)
  {
    v4 = v1;
    v5 = *(v0 + 272);
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 96);
    sub_100005A00(v0 + 16);

    sub_10009C58C(v4, v3, v8);
  }

  else
  {
    v9 = *(v0 + 240);
    sub_100005A00(v0 + 16);
    static Logger.updates.getter();
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 240);
    if (v13)
    {
      v15 = *(v0 + 96);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v14;
      *v17 = v14;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v15;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%@] Country code not found in bag for storefront=%llu", v16, 0x16u);
      sub_100005518(v17, &unk_10059C250);

      v19 = *(v0 + 240);
    }

    else
    {
      v19 = v11;
      v11 = *(v0 + 240);
    }

    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    v22 = *(v0 + 224);
    v23 = *(v0 + 192);

    v20(v22, v23);
    v4 = 0;
  }

  v24 = *(v0 + 8);

  return v24(v4, v3);
}

uint64_t sub_10009BE78()
{
  v26 = v0;
  v1 = *(v0 + 240);

  static Logger.updates.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v24 = *(v0 + 256);
    v5 = *(v0 + 240);
    v21 = *(v0 + 248);
    v22 = *(v0 + 192);
    v23 = *(v0 + 216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v8 = *(*(v0 + 64) - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    v9 = v5;
    v10 = String.init<A>(describing:)();
    v12 = v11;

    v13 = sub_1001AD0D8(v10, v12, &v25);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to get country code from the bag: %{public}s", v6, 0x16u);
    sub_100005518(v7, &unk_10059C250);

    sub_100005A00(v20);

    v24(v23, v22);
  }

  else
  {
    v14 = *(v0 + 256);
    v15 = *(v0 + 240);
    v16 = *(v0 + 216);
    v17 = *(v0 + 192);

    v14(v16, v17);
  }

  v18 = *(v0 + 8);

  return v18(0, 0);
}

uint64_t sub_10009C1A8()
{

  sub_100005A00(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_10009C21C()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = sub_10009F840(0);
  if (*(v0 + *(v2 + 24)) == 1)
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();

    sub_100085D40(&qword_10059BDA0);
    sub_10009FA64(&qword_10059BDA8);
    v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v5 = v4;

    Data.write(to:options:)();
    sub_100088CDC(v3, v5);
  }

  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0, v6);
}

unint64_t sub_10009C58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.updates.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v9;
    v15 = v14;
    v16 = swift_slowAlloc();
    v17 = v16;
    *v15 = 134218242;
    *(v15 + 4) = a3;
    *(v15 + 12) = 2082;
    v25 = v8;
    if (a2)
    {
      v18 = a1;
    }

    else
    {
      v18 = 0x296C696E28;
    }

    v27 = a1;
    v28 = v16;
    v19 = a3;
    v20 = v4;
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v22 = sub_1001AD0D8(v18, v21, &v28);
    v4 = v20;
    a3 = v19;
    a1 = v27;

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Caching new storefront mapping for %llu: %{public}s", v15, 0x16u);
    sub_100005A00(v17);

    (*(v26 + 8))(v11, v25);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v23 = sub_10009F840(0);
  result = sub_1001AA724(a1, a2, a3);
  *(v4 + *(v23 + 24)) = 1;
  return result;
}

uint64_t sub_10009C7E4(uint64_t a1)
{
  v2 = sub_10009F840(0);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4F74(v35);
  v5 = v36;
  sub_100005B60(v35, v36);
  sub_1000C50F8(v5, &v33);
  if (v34)
  {
    sub_1000056B8(&v33, v37);
    sub_100005A00(v35);
    sub_100005B60(v37, v38);
    v6 = sub_1000C4F1C();
    if (v7)
    {
      if ((v7 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v8 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        while (String.subscript.getter() != 45 || v9 != 0xE100000000000000)
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v10 & 1) != 0 || 4 * v8 == String.index(after:)() >> 14)
          {
            goto LABEL_15;
          }
        }
      }

LABEL_15:
      v12 = String.subscript.getter();
      v14 = v13;
      v16 = v15;
      v18 = v17;

      if ((v12 ^ v14) < 0x4000)
      {
      }

      else
      {
        v19 = sub_10009DF88(v12, v14, v16, v18, 10);
        if ((v20 & 0x100) != 0)
        {
          v19 = sub_10009CE54(v12, v14, v16, v18, 10);
        }

        v21 = v19;
        v22 = v20;

        if ((v22 & 1) == 0 && v21 == a1)
        {
          sub_100005B60(v37, v38);
          v23 = sub_1000C4F1C();
          if (v24)
          {
            v25 = v23;
            sub_100005A00(v37);
            return v25;
          }
        }
      }
    }

    v11 = v37;
  }

  else
  {
    sub_100005518(&v33, &qword_10059BDF0);
    v11 = v35;
  }

  sub_100005A00(v11);
  v27 = [objc_allocWithZone(type metadata accessor for LogKey()) init];
  sub_10009A81C(v27, v4);
  v28 = *&v4[*(v2 + 28)];
  if (*(v28 + 16) && (v29 = sub_1000F2DCC(a1), (v30 & 1) != 0))
  {
    v31 = *(*(v28 + 56) + 16 * v29);

    sub_10009C21C();
    return v31;
  }

  else
  {
    sub_10009C21C();
    return 0;
  }
}

uint64_t sub_10009CBB0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100086B9C;

  return sub_100093A78(a1, a2, v6, v7, v9, v8);
}

void sub_10009CC78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100085D40(&qword_10059BD88);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 136);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_10009CD60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10009FAD4(0, &qword_10059BDE8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100085D40(&qword_10059C4A0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unsigned __int8 *sub_10009CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_10009F948();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_10016D7E0();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10009D3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_10009F948();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_10016D7E0();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

Swift::Int sub_10009D97C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100085D40(&qword_10059F6E0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10009FAD4(0, &unk_10059CE30);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1001ADE7C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10009DBA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100085D40(&qword_10059BDE0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10009FAD4(0, &qword_10059CBB0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1001AF750(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

void (*sub_10009DDD4(uint64_t *a1, unint64_t a2, uint64_t a3, void (*a4)(void *)))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  *(v8 + 32) = sub_10009DEB4(v8, a2, a3, a4);
  return sub_10009DE6C;
}

void sub_10009DE6C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_10009DEB4(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *)))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v11[9] = v4;
    v11[10] = v5;
    v7 = (a3 + 24 * a2);
    v8 = v7[5];
    v9 = v7[6];
    v11[0] = v7[4];
    v11[1] = v8;
    v11[2] = v9;

    a4(v11);

    return sub_10009DF80;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009DF88(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10009F1A0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_10009E054(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 1);
      v7 = *i;
      v10[0] = *(i - 2);
      v10[1] = v6;
      v10[2] = v7;

      a2(&v11, v10);

      v8 = *(v11 + 16);

      if (v8)
      {
        break;
      }

      if (v2 == ++v4)
      {
        return v2;
      }
    }

    return v4;
  }

  return v2;
}

uint64_t sub_10009E160(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateBatch(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_10009E1C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100085D40(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009E25C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009E274(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateBatch(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_10009E2D8(uint64_t a1)
{
  updated = type metadata accessor for UpdateBatch(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_10009E334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_100096AF8(a1, v4, v5, v7, v6);
}

uint64_t sub_10009E3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059C3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009E464(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UpdateBatch(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100085384;

  return sub_1000953E0(a1, v9, v10, v11, v1 + v6, v12, v13, v14);
}

uint64_t sub_10009E5C0(uint64_t result, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t *))
{
  v9 = a7;
  LOBYTE(v10) = a6;
  v11 = a4;
  if (a4 == result)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (a3)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    if (*(a7 + 16) <= a4)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v21 = (a7 + 24 * a4);
    v9 = v21[4];
    v10 = v21[5];
    v22 = v21[6];
    v45 = v9;
    v46 = v10;
    v47 = v22;

    a8(&v48, &v45);

    v14 = a5 - a2;
    if (!__OFSUB__(a5, a2))
    {
      return v14;
    }

    __break(1u);
  }

  else
  {
    v8 = result;
    v42 = a5;
    if (a4 < result)
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (*(a7 + 16) <= a4)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v15 = (a7 + 24 * a4);
      v16 = v15[5];
      v17 = v15[6];
      v45 = v15[4];
      v46 = v16;
      v47 = v17;

      a8(&v48, &v45);

      v18 = *(v48 + 16);

      if (v10)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v14 = v42 - v18;
      if (__OFSUB__(v42, v18))
      {
        goto LABEL_43;
      }

      v43 = a3;
      v40 = a2;
      v19 = -1;
      v20 = v8;
      goto LABEL_22;
    }
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (*(v9 + 16) <= v8)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v24 = (v9 + 24 * v8);
  v25 = v24[5];
  v26 = v24[6];
  v45 = v24[4];
  v46 = v25;
  v47 = v26;

  a8(&v48, &v45);

  if ((a3 & 1) == 0)
  {
    v27 = *(v48 + 16);

    v14 = v27 - a2;
    if (__OFSUB__(v27, a2))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v19 = 1;
    v40 = v42;
    v43 = v10;
    v20 = v11;
    v11 = v8;
LABEL_22:
    v28 = v11 + 1;
    v41 = v9;
    if ((v11 + 1) >= v20)
    {
LABEL_28:
      if (v43)
      {
        return v14;
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        if (v20 < *(v41 + 16))
        {
          v37 = (v41 + 24 * v20);
          v38 = v37[5];
          v39 = v37[6];
          v45 = v37[4];
          v46 = v38;
          v47 = v39;

          a8(&v48, &v45);

          v35 = __OFADD__(v14, v40 * v19);
          v14 += v40 * v19;
          if (!v35)
          {
            return v14;
          }

          goto LABEL_47;
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v29 = v9;
    v30 = *(v9 + 16);
    v31 = (v29 + 24 * v11 + 72);
    while (v28 < v30)
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      v45 = *(v31 - 2);
      v46 = v32;
      v47 = v33;

      a8(&v48, &v45);

      v34 = *(v48 + 16);

      v35 = __OFADD__(v14, v34 * v19);
      v14 += v34 * v19;
      if (v35)
      {
        goto LABEL_34;
      }

      v36 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_35;
      }

      ++v28;
      v31 += 3;
      if (v36 >= v20)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_10009E990(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = a4;
  v5 = a1;
  v8 = *(a4 + 16);
  if (v8 <= a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = a5;
  v11 = (a4 + 24 * a1);
  v12 = v11[5];
  v13 = v11[6];
  v22[0] = v11[4];
  v22[1] = v12;
  v22[2] = v13;

  v6(&v23, v22);

  if ((a3 & 1) == 0)
  {
    v15 = __OFADD__(a2, 1);
    v16 = a2 + 1;
    if (!v15)
    {
      v17 = *(v23 + 16);

      if (v16 != v17)
      {
        return v5;
      }

LABEL_10:
      ++v5;
      while (v5 != v8)
      {
        sub_100085D40(&qword_10059BD58);
        sub_10009F748();
        v18 = sub_10009DDD4(v22, v5, v7, v6);
        v20 = *v19;

        (v18)(v22, 0);
        v21 = *(v20 + 16);

        if (v21)
        {
          return v5;
        }

        v15 = __OFADD__(v5++, 1);
        if (v15)
        {
          __break(1u);
          return v8;
        }
      }

      return v8;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009EB40(uint64_t a1, int *a2)
{
  *(v2 + 48) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_10009EC34;

  return v5(v2 + 16);
}

uint64_t sub_10009EC34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v5;
  *(v2 + 24) = v4;
  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_10009ED80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100085384;

  return sub_10009EB40(a1, v4);
}

void *sub_10009EE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a7;
  v19 = a8;
  v14 = sub_100005F38(&v17);
  (*(*(a7 - 8) + 32))(v14, a5, a7);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  sub_1000056B8(&v17, (v15 + 6));
  return v15;
}

uint64_t sub_10009EEF8(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v53 = &_swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i = (i + 136))
  {
    v11 = i[7];
    v50 = i[6];
    v51 = v11;
    v52 = *(i + 16);
    v12 = i[3];
    v46 = i[2];
    v47 = v12;
    v13 = i[5];
    v48 = i[4];
    v49 = v13;
    v14 = i[1];
    v44 = *i;
    v45 = v14;
    v15 = v49;
    v16 = BYTE8(v49);
    v17 = sub_1000EE880(v49, SBYTE8(v49));
    v19 = v1[2];
    v20 = (v18 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v18;
    if (v1[3] >= v21)
    {
      v25 = v17;
      sub_10009F898(&v44, v43);
      if (v22)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10009F898(&v44, v43);
      sub_1001AD904(v21, 1);
      v1 = v53;
      v23 = sub_1000EE880(v15, v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v25 = v23;
      if (v22)
      {
LABEL_12:
        v37 = v1[7];
        v38 = *(v37 + 8 * v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v37 + 8 * v25) = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = sub_1001AC290(0, *(v38 + 2) + 1, 1, v38);
          *(v37 + 8 * v25) = v38;
        }

        v41 = *(v38 + 2);
        v40 = *(v38 + 3);
        if (v41 >= v40 >> 1)
        {
          v38 = sub_1001AC290((v40 > 1), v41 + 1, 1, v38);
          *(v37 + 8 * v25) = v38;
        }

        *(v38 + 2) = v41 + 1;
        v4 = &v38[136 * v41];
        *(v4 + 2) = v44;
        v5 = v45;
        v6 = v46;
        v7 = v48;
        *(v4 + 5) = v47;
        *(v4 + 6) = v7;
        *(v4 + 3) = v5;
        *(v4 + 4) = v6;
        v8 = v49;
        v9 = v50;
        v10 = v51;
        *(v4 + 20) = v52;
        *(v4 + 8) = v9;
        *(v4 + 9) = v10;
        *(v4 + 7) = v8;
        goto LABEL_4;
      }
    }

    sub_100085D40(&qword_10059BD88);
    v26 = swift_allocObject();
    v27 = v50;
    v28 = v51;
    v29 = v48;
    *(v26 + 112) = v49;
    *(v26 + 128) = v27;
    *(v26 + 144) = v28;
    v30 = v46;
    v31 = v47;
    v32 = v44;
    *(v26 + 48) = v45;
    *(v26 + 64) = v30;
    *(v26 + 80) = v31;
    *(v26 + 96) = v29;
    *(v26 + 160) = v52;
    *(v26 + 16) = xmmword_100434480;
    *(v26 + 32) = v32;
    v1[(v25 >> 6) + 8] |= 1 << v25;
    v33 = v1[6] + 16 * v25;
    *v33 = v15;
    *(v33 + 8) = v16;
    *(v1[7] + 8 * v25) = v26;
    v34 = v1[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_18;
    }

    v1[2] = v36;
LABEL_4:
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_100085D40(&qword_10059F6F0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10009F1A0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_10019AA64(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_10019AA64(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_10019AA64(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

id sub_10009F60C(uint64_t a1)
{
  v6 = 0;
  v2 = [v1 initWithItemID:a1 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10009F6D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10009F748()
{
  result = qword_10059BD60;
  if (!qword_10059BD60)
  {
    sub_10009F7F8(&qword_10059BD58);
    sub_10009F9D4(&qword_10059BD68, &qword_10059BD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BD60);
  }

  return result;
}

uint64_t sub_10009F7F8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10009F860(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10009F948()
{
  result = qword_10059BD98;
  if (!qword_10059BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BD98);
  }

  return result;
}

uint64_t sub_10009F9A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10008B678(a1, v2[2], v2[3], v2[4], v2[5]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_10009F9D4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009F7F8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009FA1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009FA64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009F7F8(&qword_10059BDA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009FAD4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10009FB44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_10009FBD4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t sub_10009FC9C()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10009FD74()
{
  result = type metadata accessor for URLRequest();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_10009FDE8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10009FDF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10009FE3C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10009FE94(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10009FEB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10009FF14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_10009FF94(char a1)
{
  result = 0x707954746E657665;
  switch(a1)
  {
    case 1:
      result = 0x7954746C75736572;
      break;
    case 2:
      result = 0x726F7774654E6461;
      break;
    case 3:
      result = 0x657079546461;
      break;
    case 4:
      result = 0x7463617265746E69;
      break;
    case 5:
      result = 0x74616E6974736564;
      break;
    case 6:
      result = 0x7461745370747468;
      break;
    case 7:
      result = 0x6B63616274736F70;
      break;
    case 8:
      result = 0x6D6F44726F727265;
      break;
    case 9:
      result = 0x646F43726F727265;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0x707954726566666FLL;
      break;
    case 12:
      result = 0x79636E6572727563;
      break;
    case 13:
      result = 0x437972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_1000A0158()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000A01A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000A01EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A09A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A022C(uint64_t a1)
{
  v2 = sub_1000A0704();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A0268(uint64_t a1)
{
  v2 = sub_1000A0704();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A02A4(void *a1)
{
  v3 = v1;
  v5 = sub_100085D40(&qword_10059BF20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100005B60(a1, a1[3]);
  sub_1000A0704();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v11 = 0;
  sub_1000A0758();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    sub_1000A07AC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[24];
    v11 = 3;
    sub_1000A0800();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[25];
    v11 = 4;
    sub_1000A0854();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[26];
    v11 = 5;
    sub_1000A08A8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[41];
    v11 = 7;
    sub_1000A08FC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[74];
    v11 = 11;
    sub_1000A0950();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_1000A0698@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000A0E48(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_1000A0704()
{
  result = qword_10059BF28;
  if (!qword_10059BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF28);
  }

  return result;
}

unint64_t sub_1000A0758()
{
  result = qword_10059BF30;
  if (!qword_10059BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF30);
  }

  return result;
}

unint64_t sub_1000A07AC()
{
  result = qword_10059BF38;
  if (!qword_10059BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF38);
  }

  return result;
}

unint64_t sub_1000A0800()
{
  result = qword_10059BF40;
  if (!qword_10059BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF40);
  }

  return result;
}

unint64_t sub_1000A0854()
{
  result = qword_10059BF48;
  if (!qword_10059BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF48);
  }

  return result;
}

unint64_t sub_1000A08A8()
{
  result = qword_10059BF50;
  if (!qword_10059BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF50);
  }

  return result;
}

unint64_t sub_1000A08FC()
{
  result = qword_10059BF58;
  if (!qword_10059BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF58);
  }

  return result;
}

unint64_t sub_1000A0950()
{
  result = qword_10059BF60;
  if (!qword_10059BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF60);
  }

  return result;
}

uint64_t sub_1000A09A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7774654E6461 && a2 == 0xEB0000000044496BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657079546461 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461745370747468 && a2 == 0xEE0065646F437375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010044D150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1000A0E48@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v92 = sub_100085D40(&qword_10059BF68);
  v5 = *(v92 - 8);
  __chkstk_darwin(v92);
  v7 = &v30 - v6;
  sub_100005B60(a1, a1[3]);
  sub_1000A0704();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005A00(a1);
  }

  v8 = v5;
  LOBYTE(v48) = 0;
  sub_1000A14E4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v55[0];
  LOBYTE(v48) = 1;
  sub_1000A1538();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v47 = v9;
  v10 = v55[0];
  v55[0] = 2;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v10;
  v45 = v11;
  v46 = v12;
  LOBYTE(v48) = 3;
  sub_1000A158C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v55[0];
  LOBYTE(v48) = 4;
  sub_1000A15E0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v43 = v13;
  v14 = v55[0];
  LOBYTE(v48) = 5;
  sub_1000A1634();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = v14;
  v15 = v55[0];
  v55[0] = 6;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v87 = v16 & 1;
  LOBYTE(v48) = 7;
  sub_1000A1688();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v39 = v55[0];
  v40 = v15;
  v55[0] = 8;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v18;
  v55[0] = 9;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v84 = v20 & 1;
  v55[0] = 10;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v48) = 11;
  sub_1000A16DC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v55[0];
  v55[0] = 12;
  *&v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v36 + 1) = v21;
  v81 = 13;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = v23;
  v24 = v22;
  (*(v8 + 8))(v7, v92);
  v25 = v47;
  LOBYTE(v48) = v47;
  LOBYTE(v8) = v44;
  BYTE1(v48) = v44;
  *(&v48 + 1) = v45;
  *&v49 = v46;
  BYTE8(v49) = v43;
  BYTE9(v49) = v42;
  BYTE10(v49) = v40;
  *&v50 = v41;
  v31 = v87;
  BYTE8(v50) = v87;
  BYTE9(v50) = v39;
  v32 = v19;
  v33 = v17;
  *&v51 = v17;
  *(&v51 + 1) = v38;
  *&v52 = v19;
  LODWORD(v92) = v84;
  BYTE8(v52) = v84;
  LOBYTE(v19) = v37;
  BYTE9(v52) = v37;
  LOBYTE(v17) = v35;
  BYTE10(v52) = v35;
  v53 = v36;
  *&v54 = v24;
  *(&v54 + 1) = v34;
  sub_1000A1730(&v48, v55);
  sub_100005A00(a1);
  v55[0] = v25;
  v55[1] = v8;
  v56 = v90;
  v57 = v91;
  v58 = v45;
  v59 = v46;
  v60 = v43;
  v61 = v42;
  v62 = v40;
  v63 = v88;
  v64 = v89;
  v65 = v41;
  v66 = v31;
  v67 = v39;
  v69 = v86;
  v68 = v85;
  v70 = v33;
  v71 = v38;
  v72 = v32;
  v73 = v92;
  v74 = v19;
  v75 = v17;
  v76 = v82;
  v77 = v83;
  v78 = v36;
  v79 = v24;
  v80 = v34;
  result = sub_1000A1768(v55);
  v27 = v53;
  a2[4] = v52;
  a2[5] = v27;
  a2[6] = v54;
  v28 = v49;
  *a2 = v48;
  a2[1] = v28;
  v29 = v51;
  a2[2] = v50;
  a2[3] = v29;
  return result;
}

unint64_t sub_1000A14E4()
{
  result = qword_10059BF70;
  if (!qword_10059BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF70);
  }

  return result;
}

unint64_t sub_1000A1538()
{
  result = qword_10059BF78;
  if (!qword_10059BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF78);
  }

  return result;
}

unint64_t sub_1000A158C()
{
  result = qword_10059BF80;
  if (!qword_10059BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF80);
  }

  return result;
}

unint64_t sub_1000A15E0()
{
  result = qword_10059BF88;
  if (!qword_10059BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF88);
  }

  return result;
}

unint64_t sub_1000A1634()
{
  result = qword_10059BF90;
  if (!qword_10059BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF90);
  }

  return result;
}

unint64_t sub_1000A1688()
{
  result = qword_10059BF98;
  if (!qword_10059BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BF98);
  }

  return result;
}

unint64_t sub_1000A16DC()
{
  result = qword_10059BFA0;
  if (!qword_10059BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BFA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SkannerInteropPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SkannerInteropPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A18F8()
{
  result = qword_10059BFA8;
  if (!qword_10059BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BFA8);
  }

  return result;
}

unint64_t sub_1000A1950()
{
  result = qword_10059BFB0;
  if (!qword_10059BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BFB0);
  }

  return result;
}

unint64_t sub_1000A19A8()
{
  result = qword_10059BFB8;
  if (!qword_10059BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BFB8);
  }

  return result;
}

__n128 sub_1000A1B90(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000A1BC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A1C0C(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A1C7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "platformAttributes";
  }

  else
  {
    v4 = "ageRatingClientIdentifier";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "ageRatingClientIdentifier";
  }

  else
  {
    v7 = "platformAttributes";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000A1D28()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A1DA8()
{
  String.hash(into:)();
}

Swift::Int sub_1000A1E14()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A1E90@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1005087D8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000A1EF0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "ageRatingClientIdentifier";
  }

  else
  {
    v3 = "platformAttributes";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1000A1F30()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1000A1F6C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1005087D8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1000A1FDC(uint64_t a1)
{
  v2 = sub_1000A4A20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A2018(uint64_t a1)
{
  v2 = sub_1000A4A20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A2054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = sub_100085D40(&qword_10059C0D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100005B60(a1, a1[3]);
  sub_1000A4A20();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000A21E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000A3EF8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1000A2238(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1635018093;
  if (v2 != 1)
  {
    v3 = 1701869940;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 25705;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  v6 = 1635018093;
  if (*a2 != 1)
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 25705;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000A2314()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A239C()
{
  String.hash(into:)();
}

Swift::Int sub_1000A2410()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000A2494@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A49D4(*a1);
  *a2 = result;
  return result;
}

void sub_1000A24C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 1635018093;
  if (v2 != 1)
  {
    v4 = 1701869940;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25705;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1000A2508()
{
  v1 = 1635018093;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_1000A2548@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A49D4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A257C(uint64_t a1)
{
  v2 = sub_1000A281C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A25B8(uint64_t a1)
{
  v2 = sub_1000A281C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A25F4(void *a1)
{
  v3 = v1;
  v5 = sub_100085D40(&qword_10059C008);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100005B60(a1, a1[3]);
  sub_1000A281C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 32);
  v12 = *(v3 + 48);
  v10[15] = 1;
  sub_100085D40(&qword_10059C018);
  sub_1000A2870();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v11 = *(v3 + 72);
    dispatch thunk of CustomStringConvertible.description.getter();
    LOBYTE(v11) = 0;
    KeyedEncodingContainer.encode(_:forKey:)();

    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000A281C()
{
  result = qword_10059C010;
  if (!qword_10059C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C010);
  }

  return result;
}

unint64_t sub_1000A2870()
{
  result = qword_10059C020;
  if (!qword_10059C020)
  {
    sub_10009F7F8(&qword_10059C018);
    sub_1000A28F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C020);
  }

  return result;
}

unint64_t sub_1000A28F4()
{
  result = qword_10059C028;
  if (!qword_10059C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C028);
  }

  return result;
}

uint64_t sub_1000A2948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E7973626BLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

Swift::Int sub_1000A2A94(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1000A2ADC(char a1)
{
  if (!a1)
  {
    return 1635017060;
  }

  if (a1 == 1)
  {
    return 1684632935;
  }

  return 0x636E7973626BLL;
}

uint64_t sub_1000A2B20(void *a1, uint64_t a2)
{
  v9[2] = *(a2 + 16);
  v9[1] = *(a2 + 24);
  type metadata accessor for MediaAPIUpdateRequest.CodingKeys();
  swift_getWitnessTable();
  v3 = type metadata accessor for KeyedEncodingContainer();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  sub_100005B60(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  v7 = v9[3];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v7)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_1000A2D24()
{
  Hasher.init(_seed:)();
  sub_1000A2A6C(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1000A2D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A2948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A2DB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A4F48();
  *a1 = result;
  return result;
}

uint64_t sub_1000A2DE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000A2E3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1000A2EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v8 = sub_1000EE808(25705, 0xE200000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_10009F6D0(*(a1 + 56) + 32 * v8, v26);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v10 = v25;
  if (!*(a1 + 16) || (v11 = v24, v12 = sub_1000EE808(0x7475626972747461, 0xEA00000000007365), (v13 & 1) == 0))
  {
LABEL_20:

    goto LABEL_18;
  }

  sub_10009F6D0(*(a1 + 56) + 32 * v12, v26);

  sub_100085D40(&unk_10059DC90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!*(v24 + 16))
  {
    goto LABEL_20;
  }

  v14 = sub_1000EE808(0xD000000000000014, 0x800000010044D2B0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_10009F6D0(*(v24 + 56) + 32 * v14, v26);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

LABEL_18:

    v11 = 0;
    v10 = 0;
    a2 = 0;
    a3 = 0;
    v22 = 0;
    goto LABEL_19;
  }

  v16 = String.lowercased()();
  if (!*(v24 + 16))
  {

    goto LABEL_22;
  }

  v23 = sub_1000EE808(v16._countAndFlagsBits, v16._object);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_22:

    goto LABEL_17;
  }

  sub_10009F6D0(*(v24 + 56) + 32 * v23, v26);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!*(v24 + 16))
  {
    goto LABEL_20;
  }

  v19 = sub_1000EE808(0xD000000000000019, 0x800000010044BD70);
  if ((v20 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_10009F6D0(*(v24 + 56) + 32 * v19, v26);

  sub_100084500();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

  v22 = v24;
LABEL_19:
  *a4 = v11;
  a4[1] = v10;
  a4[2] = a2;
  a4[3] = a3;
  a4[4] = v22;
  return result;
}

uint64_t sub_1000A317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[39] = a3;
  v4[40] = a4;
  v4[37] = a1;
  v4[38] = a2;
  return _swift_task_switch(sub_1000A31A0, 0, 0);
}

uint64_t sub_1000A31A0()
{
  if (!*(*(v0 + 296) + 16))
  {
    goto LABEL_8;
  }

  v1 = sub_1000EE808(0x73746C75736572, 0xE700000000000000);
  if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_10009F6D0(*(*(v0 + 296) + 56) + 32 * v1, v0 + 56);

  sub_100085D40(&unk_10059DC90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 256);
  *(v0 + 328) = v3;
  if (!*(v3 + 16) || (v4 = sub_1000EE808(0xD000000000000010, 0x800000010044D270), (v5 & 1) == 0))
  {
    v6 = 0;
    goto LABEL_15;
  }

  sub_10009F6D0(*(v3 + 56) + 32 * v4, v0 + 88);
  sub_100085D40(qword_10059C030);
  if (!swift_dynamicCast())
  {
LABEL_8:

    goto LABEL_9;
  }

  v6 = *(v0 + 288);
LABEL_15:
  *(v0 + 336) = v6;
  if (*(v3 + 16))
  {
    v10 = sub_1000EE808(0xD000000000000010, 0x800000010044D030);
    if (v11)
    {
      sub_10009F6D0(*(v3 + 56) + 32 * v10, v0 + 120);
      sub_100085D40(&unk_10059EB00);
      if (swift_dynamicCast())
      {
        v12 = *(v0 + 280);
        goto LABEL_20;
      }

LABEL_9:

      v7 = _swiftEmptyArrayStorage;
      goto LABEL_10;
    }
  }

  v12 = 0;
LABEL_20:
  *(v0 + 344) = v12;
  *(v0 + 264) = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = *(v6 + 16);
    *(v0 + 352) = v13;
    if (v13)
    {
      *(v0 + 360) = 0;
      *(v0 + 368) = _swiftEmptyArrayStorage;
      v14 = *(v0 + 320);

      v16 = sub_100180184(v15);

      objc_allocWithZone(type metadata accessor for MediaAPIUpdate());
      v17 = v14;
      v18 = swift_task_alloc();
      *(v0 + 376) = v18;
      *v18 = v0;
      v18[1] = sub_1000A388C;
      v19 = *(v0 + 320);

      return sub_10017B3F4(v16, v19);
    }

    v12 = *(v0 + 344);
  }

  v20 = *(v0 + 312);
  if (v12 && v20)
  {
    v21 = *(v12 + 16);
    if (v21)
    {
      v22 = (v12 + 32);
      v7 = _swiftEmptyArrayStorage;
      do
      {
        v25 = *(v0 + 304);
        v26 = *v22;

        sub_1000A2EA8(v26, v25, v20, (v0 + 16));
        v27 = *(v0 + 24);
        if (v27)
        {
          v28 = *(v0 + 16);
          *(v0 + 216) = *(v0 + 32);
          *(v0 + 232) = *(v0 + 48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1001AC808(0, *(v7 + 2) + 1, 1, v7);
          }

          v30 = *(v7 + 2);
          v29 = *(v7 + 3);
          if (v30 >= v29 >> 1)
          {
            v7 = sub_1001AC808((v29 > 1), v30 + 1, 1, v7);
          }

          *(v7 + 2) = v30 + 1;
          v23 = &v7[40 * v30];
          *(v23 + 4) = v28;
          *(v23 + 5) = v27;
          v24 = *(v0 + 216);
          *(v23 + 8) = *(v0 + 232);
          *(v23 + 3) = v24;
        }

        ++v22;
        --v21;
      }

      while (v21);
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  if (!*(*(v0 + 328) + 16))
  {
    v47 = *(v0 + 320);

    goto LABEL_10;
  }

  v31 = sub_1000EE808(0xD00000000000001CLL, 0x800000010044D290);
  if ((v32 & 1) == 0)
  {
    v48 = *(v0 + 320);

LABEL_64:

    goto LABEL_10;
  }

  sub_10009F6D0(*(*(v0 + 328) + 56) + 32 * v31, v0 + 152);

  sub_100085D40(&unk_10059EB00);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v48 = *(v0 + 320);
    goto LABEL_64;
  }

  v33 = *(v0 + 272);
  v34 = *(v33 + 16);
  if (!v34)
  {
    goto LABEL_65;
  }

  v35 = 0;
  v36 = _swiftEmptyArrayStorage;
  do
  {
    v37 = v35;
    while (1)
    {
      if (v37 >= *(v33 + 16))
      {
        __break(1u);
        return result;
      }

      v38 = *(v33 + 32 + 8 * v37);
      if (*(v38 + 16))
      {
        break;
      }

LABEL_49:
      if (v34 == ++v37)
      {
        goto LABEL_65;
      }
    }

    v39 = v36;

    v40 = sub_1000EE808(25705, 0xE200000000000000);
    if ((v41 & 1) == 0)
    {

      v36 = v39;
      goto LABEL_49;
    }

    sub_10009F6D0(*(v38 + 56) + 32 * v40, v0 + 184);

    result = swift_dynamicCast();
    v36 = v39;
    if ((result & 1) == 0)
    {
      goto LABEL_49;
    }

    v42 = *(v0 + 248);
    if (!v42)
    {
      goto LABEL_49;
    }

    v50 = *(v0 + 240);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001AC6FC(0, *(v39 + 2) + 1, 1, v39);
      v39 = result;
    }

    v36 = v39;
    v43 = *(v39 + 2);
    v44 = *(v36 + 3);
    v45 = v43 + 1;
    if (v43 >= v44 >> 1)
    {
      result = sub_1001AC6FC((v44 > 1), v43 + 1, 1, v36);
      v45 = v43 + 1;
      v36 = result;
    }

    v35 = v37 + 1;
    *(v36 + 2) = v45;
    v46 = &v36[16 * v43];
    *(v46 + 4) = v50;
    *(v46 + 5) = v42;
  }

  while (v34 - 1 != v37);
LABEL_65:
  v49 = *(v0 + 320);

LABEL_10:
  v8 = *(v0 + 8);

  return v8(_swiftEmptyArrayStorage, v7);
}

uint64_t sub_1000A388C(uint64_t a1)
{
  *(*v1 + 384) = a1;

  return _swift_task_switch(sub_1000A398C, 0, 0);
}

uint64_t sub_1000A398C()
{
  v1 = *(v0 + 384);
  if (v1)
  {
    v2 = (v0 + 264);
    v3 = v1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 264) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 264) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_55:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v2 = (v0 + 368);
  }

  v4 = *v2;
  v5 = *(v0 + 360) + 1;
  if (v5 == *(v0 + 352))
  {

    v6 = *(v0 + 344);

    v7 = *(v0 + 312);
    if (v6 && v7)
    {
      v49 = v4;
      v8 = *(v6 + 16);
      if (v8)
      {
        v9 = (v6 + 32);
        v10 = _swiftEmptyArrayStorage;
        do
        {
          v13 = *(v0 + 304);
          v14 = *v9;

          sub_1000A2EA8(v14, v13, v7, (v0 + 16));
          v15 = *(v0 + 24);
          if (v15)
          {
            v16 = *(v0 + 16);
            *(v0 + 216) = *(v0 + 32);
            *(v0 + 232) = *(v0 + 48);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_1001AC808(0, *(v10 + 2) + 1, 1, v10);
            }

            v18 = *(v10 + 2);
            v17 = *(v10 + 3);
            if (v18 >= v17 >> 1)
            {
              v10 = sub_1001AC808((v17 > 1), v18 + 1, 1, v10);
            }

            *(v10 + 2) = v18 + 1;
            v11 = &v10[40 * v18];
            *(v11 + 4) = v16;
            *(v11 + 5) = v15;
            v12 = *(v0 + 216);
            *(v11 + 8) = *(v0 + 232);
            *(v11 + 3) = v12;
          }

          ++v9;
          --v8;
        }

        while (v8);
      }

      else
      {
        v10 = _swiftEmptyArrayStorage;
      }

      v4 = v49;
    }

    else
    {

      v10 = _swiftEmptyArrayStorage;
    }

    if (*(*(v0 + 328) + 16))
    {
      v26 = sub_1000EE808(0xD00000000000001CLL, 0x800000010044D290);
      if (v27)
      {
        v2 = *(v0 + 328);
        sub_10009F6D0(v2[7] + 32 * v26, v0 + 152);

        sub_100085D40(&unk_10059EB00);
        if (swift_dynamicCast())
        {
          v28 = *(v0 + 272);
          v29 = *(v28 + 16);
          if (v29)
          {
            v30 = 0;
            v31 = _swiftEmptyArrayStorage;
            while (1)
            {
              v3 = v4;
              v32 = v30;
              while (1)
              {
                if (v32 >= *(v28 + 16))
                {
                  __break(1u);
                  goto LABEL_55;
                }

                v2 = *(v28 + 32 + 8 * v32);
                if (v2[2])
                {
                  break;
                }

LABEL_30:
                if (v29 == ++v32)
                {
                  v4 = v3;
                  goto LABEL_53;
                }
              }

              v33 = sub_1000EE808(25705, 0xE200000000000000);
              if ((v34 & 1) == 0)
              {
                break;
              }

              sub_10009F6D0(v2[7] + 32 * v33, v0 + 184);

              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_30;
              }

              v2 = *(v0 + 248);
              if (!v2)
              {
                goto LABEL_30;
              }

              v48 = *(v0 + 240);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v31 = sub_1001AC6FC(0, *(v31 + 2) + 1, 1, v31);
              }

              v36 = *(v31 + 2);
              v35 = *(v31 + 3);
              v37 = v36 + 1;
              if (v36 >= v35 >> 1)
              {
                v47 = v36 + 1;
                v40 = v31;
                v41 = *(v31 + 2);
                v42 = sub_1001AC6FC((v35 > 1), v36 + 1, 1, v40);
                v37 = v47;
                v36 = v41;
                v31 = v42;
              }

              v30 = v32 + 1;
              *(v31 + 2) = v37;
              v38 = &v31[16 * v36];
              *(v38 + 4) = v48;
              *(v38 + 5) = v2;
              v39 = v29 - 1 == v32;
              v4 = v3;
              if (v39)
              {
                goto LABEL_53;
              }
            }

            goto LABEL_30;
          }

          v31 = _swiftEmptyArrayStorage;
LABEL_53:
          v46 = *(v0 + 320);

          goto LABEL_48;
        }

        v44 = *(v0 + 320);
      }

      else
      {
        v44 = *(v0 + 320);
      }
    }

    else
    {
      v43 = *(v0 + 320);
    }

    v31 = _swiftEmptyArrayStorage;
LABEL_48:
    v45 = *(v0 + 8);

    return v45(v4, v10, v31);
  }

  *(v0 + 360) = v5;
  *(v0 + 368) = v4;
  v19 = *(v0 + 320);

  v21 = sub_100180184(v20);

  objc_allocWithZone(type metadata accessor for MediaAPIUpdate());
  v22 = v19;
  v23 = swift_task_alloc();
  *(v0 + 376) = v23;
  *v23 = v0;
  v23[1] = sub_1000A388C;
  v24 = *(v0 + 320);

  return sub_10017B3F4(v21, v24);
}

uint64_t sub_1000A3EF8(void *a1)
{
  v3 = sub_100085D40(qword_10059C0E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_100005B60(a1, v7);
  sub_1000A4A20();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005A00(a1);
  return v7;
}

void sub_1000A40A4(id *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1003D0F60(a1);
  if (v8)
  {
    v10 = v8;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v12;
  }

  else
  {
    v11 = 0;
    v41 = 0;
  }

  v13 = sub_1003D2888(a1, v9);
  if (v13 && (v14 = v13, v15 = [v13 storefrontCountryCode], v14, v15))
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v17;
    v40 = v16;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v38 = sub_1003D0F1C(a1);
  v18 = sub_1003D2FC0(a1);
  if (v18)
  {
    v19 = v18;
    v20 = [v18 unsignedLongLongValue];

    v21 = v20 == 0;
  }

  else
  {
    v20 = 0;
    v21 = 1;
  }

  v42 = v21;
  v22 = sub_1003D22A4(a1);
  v24 = sub_1003D2888(a1, v23);
  if (v24)
  {
    v25 = v24;
    v26 = [v24 ratingRank];

    if (v26)
    {
      static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  v37 = v20;
  if ((a3 & 1) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v27 = v22;
      v28 = v11;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v33;
      v32 = 1;
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    return;
  }

  if ((sub_1003D2F7C(a1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v27 = v22;
  v28 = v11;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30;
  v32 = 0;
LABEL_19:
  v34 = sub_1003D2234(a1);
  v35 = sub_1003D2360(a1);
  v36 = sub_1003D2404(a1);
  if (v36)
  {
    LOBYTE(v36) = sub_1003D2B88(a1);
  }

  *a4 = v28;
  *(a4 + 8) = v41;
  *(a4 + 16) = v34;
  *(a4 + 24) = v32;
  *(a4 + 32) = 0;
  *(a4 + 40) = v29;
  *(a4 + 48) = v31;
  *(a4 + 56) = v27;
  *(a4 + 64) = v35;
  *(a4 + 72) = v38;
  *(a4 + 80) = v37;
  *(a4 + 88) = v42;
  *(a4 + 96) = v40;
  *(a4 + 104) = v39;
  *(a4 + 112) = v36;
  *(a4 + 120) = 1936748641;
  *(a4 + 128) = 0xE400000000000000;
}

void sub_1000A4354()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1000A470C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A43E4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1000A4528(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1000A470C()
{
  if (!qword_10059E5A0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10059E5A0);
    }
  }
}

__n128 sub_1000A475C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000A4770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000A47B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000A4820(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000A4834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A487C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A48D0()
{
  result = qword_10059C0B8;
  if (!qword_10059C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C0B8);
  }

  return result;
}

unint64_t sub_1000A4928()
{
  result = qword_10059C0C0;
  if (!qword_10059C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C0C0);
  }

  return result;
}

unint64_t sub_1000A4980()
{
  result = qword_10059C0C8;
  if (!qword_10059C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C0C8);
  }

  return result;
}

unint64_t sub_1000A49D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100508828, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000A4A20()
{
  result = qword_10059C0D8;
  if (!qword_10059C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C0D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemAlert.Response(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemAlert.Response(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateEligibleApp.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateEligibleApp.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000A4D54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000A4D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A4DF0()
{
  result = qword_10059C168;
  if (!qword_10059C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C168);
  }

  return result;
}

unint64_t sub_1000A4E9C()
{
  result = qword_10059C170;
  if (!qword_10059C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C170);
  }

  return result;
}

unint64_t sub_1000A4EF4()
{
  result = qword_10059C178;
  if (!qword_10059C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C178);
  }

  return result;
}

id sub_1000A5164()
{
  result = [objc_allocWithZone(type metadata accessor for AppCapabilitiesService()) init];
  qword_1005AB098 = result;
  return result;
}

uint64_t sub_1000A5238(void *a1, void *a2)
{
  if (qword_10059B488 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A5FBC(v4, qword_10059C1B0);
  v5 = a1;
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v11 = v44;
    *v9 = 138412802;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2082;
    v12 = v6;
    v13 = [v5 bundleID];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1001AD0D8(v14, v16, &v44);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2050;
    v18 = [v5 action];

    *(v9 + 24) = v18;
    sub_100086A24(v10);

    sub_100005A00(v11);
  }

  else
  {
  }

  if ([v5 supportsFeatureA])
  {
    v19 = v6;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%@] Checking support for feature A", v22, 0xCu);
      sub_100086A24(v23);
    }

    if ((sub_1000A5D4C([v5 action], v19) & 1) == 0)
    {
      return 0;
    }
  }

  if ([v5 supportsFeatureB])
  {
    v25 = v6;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Checking support for feature B", v28, 0xCu);
      sub_100086A24(v29);
    }

    if ((sub_1000A61B8([v5 action], v25, 7, 4) & 1) == 0)
    {
      return 0;
    }
  }

  if ([v5 supportsFeatureC])
  {
    v31 = v6;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "[%@] Checking support for feature C", v34, 0xCu);
      sub_100086A24(v35);
    }

    if ((sub_1000A61B8([v5 action], v31, 23, 6) & 1) == 0)
    {
      return 0;
    }
  }

  v37 = v6;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v37;
    *v41 = v37;
    v42 = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "[%@] All capability checks passed", v40, 0xCu);
    sub_100086A24(v41);
  }

  return 1;
}