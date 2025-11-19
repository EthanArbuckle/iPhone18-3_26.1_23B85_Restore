uint64_t sub_100E5883C()
{
  sub_100E3657C(1);
  if (!v0)
  {
    sub_100E35B30(1);
    sub_100E35EC0();
    sub_100E3690C();
  }

  return 1;
}

uint64_t sub_100E5889C(void *a1)
{
  v1 = a1;
  OS_dispatch_queue.sync<A>(execute:)();

  return 1;
}

void sub_100E58940(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&a1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = sub_100E301C0(a2);
    if (!v3)
    {
      v18 = _swiftEmptyDictionarySingleton;
      v15 = v14;
      v16 = a1;
      sub_100E957C0(v15, &v18, v16);

      *a3 = v18;
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100E58AE0()
{
  result = qword_101A21BB8;
  if (!qword_101A21BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21BB8);
  }

  return result;
}

unint64_t sub_100E58B38()
{
  result = qword_101A21BC0;
  if (!qword_101A21BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21BC0);
  }

  return result;
}

unint64_t sub_100E58B8C(uint64_t a1)
{
  result = sub_100E58BB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100E58BB4()
{
  result = qword_101A21C10;
  if (!qword_101A21C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21C10);
  }

  return result;
}

unint64_t sub_100E58C4C(void *a1)
{
  a1[1] = sub_100E58C84();
  a1[2] = sub_100E58CD8();
  result = sub_100E58D2C();
  a1[3] = result;
  return result;
}

unint64_t sub_100E58C84()
{
  result = qword_101A21C28;
  if (!qword_101A21C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21C28);
  }

  return result;
}

unint64_t sub_100E58CD8()
{
  result = qword_101A21C30;
  if (!qword_101A21C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21C30);
  }

  return result;
}

unint64_t sub_100E58D2C()
{
  result = qword_101A21C38;
  if (!qword_101A21C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21C38);
  }

  return result;
}

unint64_t sub_100E58D80()
{
  result = qword_101A21C40;
  if (!qword_101A21C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21C40);
  }

  return result;
}

uint64_t sub_100E58E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[2] = a2;
  v5[3] = a1;
  v5[4] = a3;
  return sub_10002FA9C(sub_100EA530C, v5);
}

uint64_t sub_100E58EC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v84 = a4;
  v88 = a3;
  v8 = type metadata accessor for DispatchPredicate();
  v86 = *(v8 - 8);
  v87 = v8;
  __chkstk_darwin(v8);
  v85 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v90 = a1;
  v91 = (v11 + 63) >> 6;

  v14 = 0;
  v102 = xmmword_10146C6B0;
  v103 = a2;
  v89 = a1 + 64;
  v15 = v91;
  if (v13)
  {
    while (1)
    {
LABEL_10:
      v17 = *(v90 + 56);
      v95 = v14;
      v18 = v17 + ((v14 << 11) | (32 * __clz(__rbit64(v13))));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v93 = *(v18 + 25);
      v23 = *(v18 + 26);
      v98 = v21;
      v99 = v19;
      if (v19 >> 62)
      {
        v59 = v22;
        v60 = v23;
        v61 = _CocoaArrayWrapper.endIndex.getter();
        v23 = v60;
        v22 = v59;
        v24 = v61;
      }

      else
      {
        v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v96 = v20;
      v97 = v13;
      v94 = v22;
      v92 = v23;
      if (v24)
      {
        if (v24 < 1)
        {
LABEL_55:
          __break(1u);
LABEL_56:
          swift_once();
LABEL_52:
          v74 = static OS_os_log.boardStore;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146BDE0;
          swift_getErrorValue();
          v76 = Error.publicDescription.getter(v105, v106);
          v78 = v77;
          *(inited + 56) = &type metadata for String;
          v79 = sub_1000053B0();
          *(inited + 64) = v79;
          *(inited + 32) = v76;
          *(inited + 40) = v78;
          swift_getErrorValue();
          v80 = Error.fullDescription.getter(v104);
          *(inited + 96) = &type metadata for String;
          *(inited + 104) = v79;
          *(inited + 72) = v80;
          *(inited + 80) = v81;
          v82 = static os_log_type_t.error.getter();
          sub_100005404(v74, &_mh_execute_header, v82, "Failed to persist syncMetadata with error %{public}@ %@", 55, 2, inited);

          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          return 1;
        }

        v25 = v99;
        v101 = v99 & 0xC000000000000001;
        swift_bridgeObjectRetain_n();
        v26 = v20;

        v27 = 0;
        v100 = v24;
        do
        {
          if (v101)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v28 = *(v25 + 8 * v27 + 32);
          }

          v29 = v28;
          sub_100E59820(v28);
          if (v5)
          {
            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v30 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0);
            v31 = swift_initStackObject();
            *(v31 + 16) = v102;
            v32 = [v29 recordID];
            v33 = [v32 recordName];

            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            *(v31 + 56) = &type metadata for String;
            *(v31 + 64) = sub_1000053B0();
            *(v31 + 32) = v34;
            *(v31 + 40) = v36;
            v37 = static os_log_type_t.error.getter();
            sub_100005404(v30, &_mh_execute_header, v37, "Failed to persist record %{public}@ into cache", 46, 2, v31);

            swift_setDeallocating();
            sub_100005070(v31 + 32);
            v5 = 0;
            v25 = v99;
            v24 = v100;
          }

          else
          {
          }

          ++v27;
        }

        while (v24 != v27);

        v20 = v96;
        v13 = v97;
        v38 = *(v98 + 16);
        if (v38)
        {
LABEL_27:
          v40 = ( + 48);
          do
          {
            v41 = *(v40 - 1);
            v42 = *v40;
            v43 = *(v40 - 2);

            sub_100E5A7FC(v43, v41, v42);
            if (v5)
            {
              v101 = v5;
              if (qword_1019F2258 != -1)
              {
                swift_once();
              }

              v100 = static OS_os_log.boardStore;
              sub_1005B981C(&qword_1019F54E0);
              v44 = swift_initStackObject();
              *(v44 + 16) = v102;
              v45 = [v43 recordName];
              v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v48 = v47;

              *(v44 + 56) = &type metadata for String;
              *(v44 + 64) = sub_1000053B0();
              *(v44 + 32) = v46;
              *(v44 + 40) = v48;
              v49 = static os_log_type_t.error.getter();
              sub_100005404(v100, &_mh_execute_header, v49, "Failed to persist purgedRecord %{public}@ into cache", 52, 2, v44);

              swift_setDeallocating();
              sub_100005070(v44 + 32);
              v5 = 0;
            }

            else
            {
            }

            v40 += 3;
            --v38;
          }

          while (v38);

          v20 = v96;
          v13 = v97;
        }
      }

      else
      {

        v39 = v20;
        v38 = *( + 16);
        if (v38)
        {
          goto LABEL_27;
        }
      }

      v13 &= v13 - 1;
      a2 = v103;
      if (((v94 | v93 | v92) & 1) != 0 && (!v92 ? (v50 = 0) : (v50 = 0x10000), !v93 ? (v51 = 0) : (v51 = 256), sub_100E5AE00(v51 | v94 | v50, v20), v5))
      {
        v97 = v13;
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v52 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        v53 = swift_initStackObject();
        *(v53 + 16) = v102;
        v54 = [v20 zoneName];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        *(v53 + 56) = &type metadata for String;
        *(v53 + 64) = sub_1000053B0();
        *(v53 + 32) = v55;
        *(v53 + 40) = v57;
        v58 = static os_log_type_t.error.getter();
        sub_100005404(v52, &_mh_execute_header, v58, "Failed to persist zone changes %{public}@ into cache", 52, 2, v53);

        swift_setDeallocating();
        sub_100005070(v53 + 32);
        v5 = 0;
        v10 = v89;
        v14 = v95;
        v13 = v97;
        v15 = v91;
        if (!v97)
        {
          goto LABEL_6;
        }
      }

      else
      {

        v10 = v89;
        v14 = v95;
        v15 = v91;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }
  }

  while (1)
  {
LABEL_6:
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v16 >= v15)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v14;
    if (v13)
    {
      v14 = v16;
      goto LABEL_10;
    }
  }

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v62 = PropertyListEncoder.init()();
  sub_100020E58(v88, v88[3]);
  *&v102 = v62;
  v63 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v5)
  {
    v103 = 0;

    if (qword_1019F2258 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  v65 = v63;
  v101 = v64;
  v66 = *(a2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  v68 = v85;
  v67 = v86;
  *v85 = v66;
  v69 = v87;
  (*(v67 + 104))(v68, enum case for DispatchPredicate.onQueue(_:), v87);
  v70 = v66;
  v71 = _dispatchPreconditionTest(_:)();
  result = (*(v67 + 8))(v68, v69);
  if (v71)
  {
    v73 = v101;
    sub_100024E98(v65, v101);
    sub_100E257D0(v84, 0, 0, a2, v65, v73);
    sub_10002640C(v65, v73);

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100E59820(void *a1)
{
  v144 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = (v5 + 104);
  v11 = *(v5 + 104);
  v147 = enum case for DispatchPredicate.onQueue(_:);
  v11(v8, v6);
  v12 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v13 = v5 + 8;
  v143 = v14;
  v14(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v145 = v11;
  v146 = v10;
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v16 = sub_10001CC04(v15, 0xD000000000000044, 0x80000001015AB2C0);
  if (v2)
  {
  }

  v17 = v16;
  v140 = 0;

  v18 = [v144 recordID];
  v19 = sub_100E5B438();
  v142 = v17;
  v20 = v13;
  v21 = v19;
  v23 = v22;

  v24 = v21;
  v25 = v142;
  sub_1000285F8(v24, v23, 1);

  v26 = *(*(v25 + 16) + 32);
  *v8 = v26;
  v3 = v4;
  v145(v8, v147, v4);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v141 = v20;
  v28 = v143;
  v143(v8, v4);
  if ((v26 & 1) == 0)
  {
    goto LABEL_40;
  }

  v29 = v28;
  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[4] = 0;
  inited[5] = 1;
  inited[2] = v25;
  inited[3] = 0;

  v139 = inited;
  v31 = sub_10001E1D0();
  if (!v31)
  {
    goto LABEL_10;
  }

  v32 = v31;
  v33 = *(*(v31 + 16) + 32);
  *v8 = v33;
  v145(v8, v147, v4);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  v29(v8, v4);
  if ((v33 & 1) == 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_13;
  }

  v35 = sub_10002C280(0, v32);
  if (v35)
  {
    v37 = sub_100024DD4(v35, v36);
    v39 = v38;

    sub_100006370(0, &unk_101A22DC0);
    v40 = v39;
    v25 = v142;
    v41 = sub_100EEB2BC(v37, v40);
    if (v41)
    {
      v42 = v41;
      v43 = sub_100F07BD8(v42, v144);
      v144 = v42;

      v44 = v43;
      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_10:
  v44 = v144;
  v144 = 0;
LABEL_11:
  v45 = v44;
  v138 = sub_100EEA848();
  v47 = v46;

  if (v47 >> 60 != 15)
  {
    v136 = v47;
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v61._countAndFlagsBits = 0xD000000000000017;
    v61._object = 0x80000001015A40C0;
    String.append(_:)(v61);
    v62._countAndFlagsBits = 0x64726F6365726B63;
    v62._object = 0xEE0065686361635FLL;
    String.append(_:)(v62);
    v63._countAndFlagsBits = 10272;
    v63._object = 0xE200000000000000;
    String.append(_:)(v63);
    v64._countAndFlagsBits = 0x695F64726F636572;
    v64._object = 0xE900000000000064;
    String.append(_:)(v64);
    v65._countAndFlagsBits = 8236;
    v65._object = 0xE200000000000000;
    String.append(_:)(v65);
    v66._countAndFlagsBits = 0x64695F656E6F7ALL;
    v66._object = 0xE700000000000000;
    String.append(_:)(v66);
    v67._countAndFlagsBits = 8236;
    v67._object = 0xE200000000000000;
    String.append(_:)(v67);
    v68._countAndFlagsBits = 0x64726F636572;
    v68._object = 0xE600000000000000;
    String.append(_:)(v68);
    v69._object = 0x80000001015A40E0;
    v69._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v69);
    v70 = v148;
    v71 = v149;
    swift_initStackObject();

    v73 = v140;
    v137 = sub_10001CC04(v72, v70, v71);
    v140 = v73;
    if (v73)
    {

      sub_100025870(v138, v136);

      v74 = v139;
      swift_setDeallocating();
      sub_10001E364(v74[3], v74[4], v74[5]);

      v75 = *(*(v25 + 16) + 32);
      *v8 = v75;
      v145(v8, v147, v3);
      v76 = v75;
      LOBYTE(v75) = _dispatchPreconditionTest(_:)();
      v29(v8, v3);
      if ((v75 & 1) == 0)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      swift_beginAccess();
      v77 = *(v25 + 24);
      if (!v77)
      {
      }
    }

    else
    {

      v78 = [v45 recordID];
      v79 = sub_100E5B438();
      v80 = v45;
      v82 = v81;

      v83 = v137;
      sub_1000285F8(v79, v82, 1);

      v135 = v80;
      v84 = [v80 recordID];
      v85 = [v84 zoneID];

      v86 = [v85 zoneName];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v148 = v87;
      v149 = v89;

      v90._countAndFlagsBits = 58;
      v90._object = 0xE100000000000000;
      String.append(_:)(v90);

      v91 = v148;
      v92 = v149;
      v93 = [v85 ownerName];
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v148 = v91;
      v149 = v92;

      v97._countAndFlagsBits = v94;
      v97._object = v96;
      String.append(_:)(v97);

      sub_1000285F8(v148, v149, 2);

      v98 = *(v83 + 16);
      v99 = v143;
      v100 = *(v98 + 32);
      *v8 = v100;
      v101 = v147;
      v102 = v145;
      v145(v8, v147, v3);
      v103 = v100;
      LOBYTE(v100) = _dispatchPreconditionTest(_:)();
      v99(v8, v3);
      if ((v100 & 1) == 0)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v104 = v137;

      sub_100DCCAB4(v138, v136, v104, 3);
      v105 = *(*(v104 + 16) + 32);
      *v8 = v105;
      v102(v8, v101, v3);
      v106 = v105;
      LOBYTE(v105) = _dispatchPreconditionTest(_:)();
      v99(v8, v3);
      if ((v105 & 1) == 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v107 = v137;
      v108 = *(v137 + 16);

      v109 = sub_10001CEC4(v108, v107);

      v25 = v142;
      if (v109 == 101)
      {
        v110 = *(*(v137 + 16) + 32);
        *v8 = v110;
        v102(v8, v147, v3);
        v111 = v110;
        LOBYTE(v110) = _dispatchPreconditionTest(_:)();
        v99(v8, v3);
        if ((v110 & 1) == 0)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v112 = v137;
        swift_beginAccess();
        v113 = *(v112 + 24);
        v114 = v135;
        if (v113)
        {
          sqlite3_finalize(v113);

          sub_100025870(v138, v136);

          *(v137 + 24) = 0;
        }

        else
        {

          sub_100025870(v138, v136);
        }

        v130 = *(*(v25 + 16) + 32);
        *v8 = v130;
        v102(v8, v147, v3);
        v131 = v130;
        LOBYTE(v130) = _dispatchPreconditionTest(_:)();
        v99(v8, v3);
        if ((v130 & 1) == 0)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        v77 = *(v25 + 24);
        if (!v77)
        {
        }
      }

      else
      {
        v148 = 0;
        v149 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v115._countAndFlagsBits = 0xD000000000000034;
        v115._object = 0x80000001015AB370;
        String.append(_:)(v115);
        v116 = [v135 recordID];
        v117 = [v116 description];

        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v119;

        v121._countAndFlagsBits = v118;
        v121._object = v120;
        String.append(_:)(v121);
        v122 = v143;

        v123 = v148;
        v124 = v149;
        sub_10089C7D0();
        swift_allocError();
        *v125 = v109;
        *(v125 + 8) = v123;
        *(v125 + 16) = v124;
        swift_willThrow();
        v126 = *(*(v137 + 16) + 32);
        *v8 = v126;
        v102(v8, v147, v3);
        v127 = v126;
        LOBYTE(v126) = _dispatchPreconditionTest(_:)();
        v122(v8, v3);
        if ((v126 & 1) == 0)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v128 = v137;
        swift_beginAccess();
        v129 = *(v128 + 24);
        if (v129)
        {
          sqlite3_finalize(v129);

          sub_100025870(v138, v136);

          *(v137 + 24) = 0;
        }

        else
        {

          sub_100025870(v138, v136);
        }

        v132 = *(*(v25 + 16) + 32);
        *v8 = v132;
        v102(v8, v147, v3);
        v133 = v132;
        LOBYTE(v132) = _dispatchPreconditionTest(_:)();
        v122(v8, v3);
        if ((v132 & 1) == 0)
        {
LABEL_50:
          __break(1u);
        }

        swift_beginAccess();
        v77 = *(v25 + 24);
        if (!v77)
        {
        }
      }
    }

    sqlite3_finalize(v77);
    *(v25 + 24) = 0;
  }

  v10 = v45;
  if (qword_1019F2258 != -1)
  {
    goto LABEL_42;
  }

LABEL_13:
  v48 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_10146C6B0;
  v50 = [v10 recordID];
  v51 = [v50 recordName];

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  *(v49 + 56) = &type metadata for String;
  *(v49 + 64) = sub_1000053B0();
  *(v49 + 32) = v52;
  *(v49 + 40) = v54;
  v55 = static os_log_type_t.error.getter();
  sub_100005404(v48, &_mh_execute_header, v55, "Failed to serialize CKRecord with id %{public}@ for persisting into ck record cache.", 84, 2, v49);
  swift_setDeallocating();
  sub_100005070(v49 + 32);
  sub_100EA5330();
  swift_allocError();
  swift_willThrow();
  v56 = v142;

  v57 = v139;
  swift_setDeallocating();
  sub_10001E364(v57[3], v57[4], v57[5]);
  v58 = *(*(v56 + 16) + 32);
  *v8 = v58;
  v145(v8, v147, v3);
  v59 = v58;
  LOBYTE(v58) = _dispatchPreconditionTest(_:)();
  v143(v8, v3);
  if ((v58 & 1) == 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  swift_beginAccess();
  v60 = *(v56 + 24);
  if (v60)
  {
    sqlite3_finalize(v60);
    *(v56 + 24) = 0;
  }
}

uint64_t sub_100E5A7FC(void *a1, uint64_t a2, uint64_t a3)
{
  v74 = a2;
  v76 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v10 = v11;
  v13 = v7 + 104;
  v12 = *(v7 + 104);
  v77 = enum case for DispatchPredicate.onQueue(_:);
  v78 = v12;
  v12(v10, v8);
  v14 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v17 = *(v7 + 8);
  v15 = v7 + 8;
  v16 = v17;
  v17(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v73 = a3;
  v75 = v13;
  v79 = 0;
  v80 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v18._countAndFlagsBits = 0xD000000000000017;
  v18._object = 0x80000001015A40C0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000015;
  v19._object = 0x80000001015A3110;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10272;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x695F64726F636572;
  v21._object = 0xE900000000000064;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x64695F656E6F7ALL;
  v23._object = 0xE700000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x745F64726F636572;
  v25._object = 0xEB00000000657079;
  String.append(_:)(v25);
  v26._object = 0x80000001015A40E0;
  v26._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v26);
  v27 = v79;
  v28 = v80;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v30 = sub_10001CC04(v29, v27, v28);

  if (v4)
  {
    return result;
  }

  v32 = v76;
  v33 = sub_100E5B438();
  sub_1000285F8(v33, v34, 1);

  v35 = [v32 zoneID];
  v36 = [v35 zoneName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v15;
  v72 = v16;
  v39 = v38;

  v79 = v37;
  v80 = v39;

  v40._countAndFlagsBits = 58;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);

  v41 = v79;
  v42 = v80;
  v43 = [v35 ownerName];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v6;
  v46 = v45;

  v79 = v41;
  v80 = v42;

  v47._countAndFlagsBits = v44;
  v47._object = v46;
  String.append(_:)(v47);

  sub_1000285F8(v79, v80, 2);
  v48 = v70;

  sub_1000285F8(v74, v73, 3);
  v49 = *(*(v30 + 16) + 32);
  *v10 = v49;
  v78(v10, v77, v48);
  v50 = v49;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v72(v10, v48);
  if ((v43 & 1) == 0)
  {
    goto LABEL_13;
  }

  v51 = *(v30 + 16);

  v52 = sub_10001CEC4(v51, v30);

  if (v52 != 101)
  {
    goto LABEL_7;
  }

  v53 = *(*(v30 + 16) + 32);
  *v10 = v53;
  v78(v10, v77, v48);
  v54 = v53;
  v55 = _dispatchPreconditionTest(_:)();
  v72(v10, v48);
  if ((v55 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v56._countAndFlagsBits = 0xD000000000000039;
    v56._object = 0x80000001015AB280;
    String.append(_:)(v56);
    v57 = [v76 description];
    v58 = v48;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62._countAndFlagsBits = v59;
    v62._object = v61;
    String.append(_:)(v62);

    v63 = v79;
    v64 = v80;
    sub_10089C7D0();
    swift_allocError();
    *v65 = v52;
    *(v65 + 8) = v63;
    *(v65 + 16) = v64;
    swift_willThrow();
    v66 = *(*(v30 + 16) + 32);
    *v10 = v66;
    v78(v10, v77, v58);
    v67 = v66;
    LOBYTE(v64) = _dispatchPreconditionTest(_:)();
    v72(v10, v58);
    if (v64)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v68 = *(v30 + 24);
  if (v68)
  {
    sqlite3_finalize(v68);
    *(v30 + 24) = 0;
  }
}

uint64_t sub_100E5AE00(int a1, void *a2)
{
  v75 = a2;
  LODWORD(v77) = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v76 = enum case for DispatchPredicate.onQueue(_:);
  v74 = v5 + 104;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v12 = v5 + 8;
  v13 = v14;
  v14(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v72 = v4;
  v73 = v10;
  v78 = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v15._countAndFlagsBits = 0xD000000000000017;
  v15._object = 0x80000001015A40C0;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x635F656E6F7A6B63;
  v16._object = 0xEC00000065686361;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 10272;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x64695F656E6F7ALL;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x646574656C6564;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x646567727570;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000028;
  v24._object = 0x80000001015A87B0;
  String.append(_:)(v24);
  v25._object = 0x80000001015AB210;
  v25._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v25);
  v26 = v78;
  v27 = v79;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v29 = sub_10001CC04(v28, v26, v27);

  if (v3)
  {
    return result;
  }

  v68[1] = 0;
  v69 = (v77 >> 8) & 1;
  v70 = (v77 >> 16) & 1;
  v31 = v75;
  v32 = [v75 zoneName];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v78 = v33;
  v79 = v35;

  v36._countAndFlagsBits = 58;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);

  v37 = v13;
  v39 = v78;
  v38 = v79;
  v40 = [v31 ownerName];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v12;
  v43 = v42;

  v78 = v39;
  v79 = v38;

  v44._countAndFlagsBits = v41;
  v44._object = v43;
  String.append(_:)(v44);

  sub_1000285F8(v78, v79, 1);
  v45 = v72;

  sub_10089B9A4(v77 & 1, 2);
  sub_10089B9A4(v69, 3);
  sub_10089B9A4(v70, 4);
  v46 = *(*(v29 + 16) + 32);
  *v8 = v46;
  v47 = v73;
  v73(v8, v76, v45);
  v48 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v37(v8, v45);
  if ((v46 & 1) == 0)
  {
    goto LABEL_15;
  }

  v49 = *(v29 + 16);

  v50 = sub_10001CEC4(v49, v29);

  if (v50 == 101)
  {
    v51 = *(*(v29 + 16) + 32);
    *v8 = v51;
    v47(v8, v76, v45);
    v52 = v51;
    LOBYTE(v51) = _dispatchPreconditionTest(_:)();
    v37(v8, v45);
    if (v51)
    {
      swift_beginAccess();
      v53 = *(v29 + 24);
      if (v53)
      {
        sqlite3_finalize(v53);
        *(v29 + 24) = 0;
      }
    }

    goto LABEL_16;
  }

  v78 = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v54._countAndFlagsBits = 0xD000000000000040;
  v54._object = 0x80000001015AB230;
  String.append(_:)(v54);
  v55 = [v75 description];
  v56 = v47;
  v57 = v45;
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v37;
  v60 = v59;

  v61._countAndFlagsBits = v58;
  v61._object = v60;
  String.append(_:)(v61);

  v62 = v78;
  v63 = v79;
  sub_10089C7D0();
  swift_allocError();
  *v64 = v50;
  *(v64 + 8) = v62;
  *(v64 + 16) = v63;
  swift_willThrow();
  v65 = *(*(v29 + 16) + 32);
  *v8 = v65;
  v56(v8, v76, v57);
  v66 = v65;
  LOBYTE(v65) = _dispatchPreconditionTest(_:)();
  v77(v8, v57);
  if ((v65 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v67 = *(v29 + 24);
  if (v67)
  {
    sqlite3_finalize(v67);
    *(v29 + 24) = 0;
  }
}

uint64_t sub_100E5B438()
{
  v1 = v0;
  v2 = [v0 recordName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5 = v3;
  v6 = [v1 zoneID];
  v7 = [v6 zoneName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = 58;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);

  v13 = v8;
  v12 = v10;
  v14 = [v6 ownerName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = v13;
  v19._object = v12;
  String.append(_:)(v19);

  return v5;
}

uint64_t sub_100E5B5C8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_100DCC2C8(a2);
  sub_100E5B65C(v5, a3);

  v6 = sub_100ADE8DC(a2);
  sub_100E5CC78(v6);

  v7 = sub_100ADE62C(a2);
  sub_100E5D418(v7);
}

uint64_t sub_100E5B65C(unint64_t a1, int a2)
{
  v180 = a2;
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v169 = &v150 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v184 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v9 = __chkstk_darwin(v167);
  v166 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v165 = &v150 - v11;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = __chkstk_darwin(v12 - 8);
  v164 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v163 = &v150 - v16;
  __chkstk_darwin(v15);
  v162 = &v150 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = v2;
  v22 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v21 = v22;
  v23 = *(v19 + 104);
  v176 = enum case for DispatchPredicate.onQueue(_:);
  v174 = v23;
  v175 = v19 + 104;
  v23(v21);
  v24 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v25 = *(v19 + 8);
  v177 = v21;
  v178 = v19 + 8;
  v179 = v18;
  v173 = v25;
  v25(v21, v18);
  if ((v22 & 1) == 0)
  {
    goto LABEL_172;
  }

  if (a1 >> 62)
  {
    goto LABEL_174;
  }

  for (result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = _CocoaArrayWrapper.endIndex.getter())
  {
    v27 = sub_100DD3E48(a1);
    v28 = 0;
    v190 = 0;
    v29 = v27 + 8;
    v30 = 1 << *(v27 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & v27[8];
    v155 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
    v156 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue;
    v33 = (v30 + 63) >> 6;
    v182 = (v7 + 32);
    v183 = (v7 + 48);
    v34 = &qword_1019F2000;
    v150 = xmmword_10146C4D0;
    v161 = xmmword_10146D2A0;
    v188 = v6;
    v154 = v27;
    v151 = v33;
    v152 = v27 + 8;
    if (!v32)
    {
LABEL_7:
      while (1)
      {
        v35 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_168;
        }

        if (v35 >= v33)
        {
        }

        v32 = v29[v35];
        ++v28;
        if (v32)
        {
          v28 = v35;
          break;
        }
      }
    }

LABEL_11:
    v157 = v32;
    v153 = v28;
    v36 = (v28 << 9) | (8 * __clz(__rbit64(v32)));
    v37 = *(v27[6] + v36);
    a1 = *(v27[7] + v36);
    sub_100006370(0, &qword_1019F54D0);
    v38 = v34[191];
    v7 = v37;

    if (v38 != -1)
    {
      swift_once();
    }

    v39 = static NSObject.== infix(_:_:)();
    v40 = v169;
    v189 = v7;
    if (v39)
    {
      v200 = _swiftEmptyArrayStorage;
      if (a1 >> 62)
      {
        v41 = _CocoaArrayWrapper.endIndex.getter();
        if (v41)
        {
LABEL_16:
          if (v41 < 1)
          {
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
            goto LABEL_180;
          }

          v42 = 0;
          v195 = a1 & 0xC000000000000001;
          v192 = _swiftEmptyArrayStorage;
          v193 = v41;
          v194 = a1;
          while (2)
          {
            if (v195)
            {
              v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v43 = *(a1 + 8 * v42 + 32);
            }

            v196 = v43;
            v44 = [v43 recordID];
            v45 = [v44 recordName];

            v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v7 = v47;

            v197[0] = v46;
            v197[1] = v7;
            sub_100017CD8();
            v48 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
            v49 = *(v48 + 16);

            if (v49)
            {
              v6 = v188;
              static String._fromSubstring(_:)();
              a1 = v50;
              v41 = v193;
            }

            else
            {
              a1 = v7;
            }

            UUID.init(uuidString:)();

            if ((*v183)(v40, 1, v6) != 1)
            {
              v51 = v40;
              v52 = *v182;
              (*v182)(v184, v51, v6);
              if (v49 <= 1)
              {

                v53 = 0;
                v55 = 0xE000000000000000;
              }

              else
              {
                if (*(v48 + 16) < 2uLL)
                {
                  goto LABEL_171;
                }

                v41 = v193;
                v6 = v188;
                v53 = static String._fromSubstring(_:)();
                v55 = v54;
              }

              v56 = v166;
              v52(v166, v184, v6);
              v57 = &v56[*(v167 + 20)];
              *v57 = v53;
              v57[1] = v55;
              v58 = v56;
              v59 = v165;
              sub_100025668(v58, v165, type metadata accessor for CRLBoardIdentifierStorage);
              v60 = v59;
              v61 = v164;
              sub_100025668(v60, v164, type metadata accessor for CRLBoardIdentifierStorage);
              v62 = v61;
              v63 = v163;
              sub_100025668(v62, v163, type metadata accessor for CRLBoardIdentifier);
              v64 = v162;
              sub_100025668(v63, v162, type metadata accessor for CRLBoardIdentifier);
              v65 = v190;
              v66 = sub_100DEE8DC(v64, 1);
              if (v65)
              {

                sub_100026028(v64, type metadata accessor for CRLBoardIdentifier);
                v190 = 0;
                v40 = v169;
LABEL_19:
                a1 = v194;
              }

              else
              {
                v67 = v66;
                v190 = 0;
                sub_100026028(v64, type metadata accessor for CRLBoardIdentifier);
                v40 = v169;
                a1 = v194;
                if (v67)
                {
                  v68 = v196;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v200 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v200 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v40 = v169;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v192 = v200;
                }

                else
                {
                }
              }

              ++v42;
              v7 = v189;
              if (v41 == v42)
              {
                goto LABEL_41;
              }

              continue;
            }

            break;
          }

          sub_10000CAAC(v40, &qword_1019F6990);

          goto LABEL_19;
        }
      }

      else
      {
        v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v41)
        {
          goto LABEL_16;
        }
      }

      v192 = _swiftEmptyArrayStorage;
LABEL_41:

      a1 = v192;
    }

    v69 = v190;
    if (a1 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_159:
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_159;
    }

    v70 = sub_100E5DB4C(a1);

    if (v70 >> 62)
    {
      v71 = _CocoaArrayWrapper.endIndex.getter();
      v72 = v157;
      if (!v71)
      {
LABEL_163:

        if (qword_1019F2258 == -1)
        {
LABEL_164:
          v142 = static OS_os_log.boardStore;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v144 = v189;
          v145 = [v189 zoneName];
          v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v148 = v147;

          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v146;
          *(inited + 40) = v148;
          v149 = static os_log_type_t.default.getter();
          sub_100005404(v142, &_mh_execute_header, v149, "Failed to construct any trees from cached ckrecords fetched for zone %{public}@", 79, 2, inited);

          swift_setDeallocating();
          return sub_100005070(inited + 32);
        }

LABEL_180:
        swift_once();
        goto LABEL_164;
      }
    }

    else
    {
      v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v72 = v157;
      if (!v71)
      {
        goto LABEL_163;
      }
    }

    v7 = 0;
    v157 = (v72 - 1) & v72;
    v200 = 0;
    v181 = v70 & 0xC000000000000001;
    v73 = *(v185 + v156);
    v171 = *(v185 + v155);
    v172 = v73;
    v159 = v70 & 0xFFFFFFFFFFFFFF8;
    v160 = 0;
    v168 = v70;
    v158 = v70 + 32;
    v170 = v71;
    while (1)
    {
      if (!v181)
      {
        if (v7 >= *(v159 + 16))
        {
          goto LABEL_170;
        }

        v191 = *(v158 + 8 * v7);

        v74 = __OFADD__(v7++, 1);
        if (v74)
        {
          break;
        }

        goto LABEL_55;
      }

      v191 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v74 = __OFADD__(v7++, 1);
      if (v74)
      {
        break;
      }

LABEL_55:
      v75 = *(v191 + 16);
      v198 = _swiftEmptyArrayStorage;
      v199 = _swiftEmptyArrayStorage;
      swift_retain_n();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v76 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v77 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v186 = v7;
      if (v76 >= v77 >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v78 = v198;
      if (v198 >> 62)
      {
        v79 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v79 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v187 = v75;
      v190 = v69;
      v80 = _swiftEmptyArrayStorage;
      if (v79)
      {
        while (1)
        {
          v7 = v78 >> 62;
          if (v78 >> 62)
          {
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_177;
            }

            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_178;
            }
          }

          else if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
            goto LABEL_159;
          }

          if ((v78 & 0xC000000000000001) != 0)
          {
            v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v82 = v78 & 0xFFFFFFFFFFFFFF8;
            if (!v7)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_151;
            }

            v81 = *(v78 + 32);

            v82 = v78 & 0xFFFFFFFFFFFFFF8;
            if (!v7)
            {
LABEL_65:
              v83 = *(v82 + 16);
              if (!v83)
              {
                goto LABEL_157;
              }

              v84 = v83 - 1;
              if (__OFSUB__(v83, 1))
              {
                goto LABEL_152;
              }

              goto LABEL_76;
            }
          }

          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_157;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < 1)
          {
            goto LABEL_158;
          }

          v85 = _CocoaArrayWrapper.endIndex.getter();
          v84 = v85 - 1;
          if (__OFSUB__(v85, 1))
          {
            goto LABEL_152;
          }

LABEL_76:
          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v7)
            {
              v86 = (v78 & 0xFFFFFFFFFFFFFF8);
              if (v84 <= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            }

LABEL_81:
            _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_82;
          }

          if (v7)
          {
            goto LABEL_81;
          }

LABEL_82:
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v86 = (v78 & 0xFFFFFFFFFFFFFF8);
LABEL_83:

          v87 = v78 >> 62;
          if (v78 >> 62)
          {
            v106 = _CocoaArrayWrapper.endIndex.getter();
            if (__OFSUB__(v106, 1))
            {
              goto LABEL_179;
            }

            v88 = v86;
            memmove(v86 + 4, v86 + 5, 8 * (v106 - 1));
            v7 = _CocoaArrayWrapper.endIndex.getter();
            v89 = v7 - 1;
            if (__OFSUB__(v7, 1))
            {
              goto LABEL_153;
            }
          }

          else
          {
            v7 = v86[2];
            v88 = v86;
            memmove(v86 + 4, v86 + 5, 8 * v7 - 8);
            v89 = v7 - 1;
            if (__OFSUB__(v7, 1))
            {
              goto LABEL_153;
            }
          }

          v88[2] = v89;
          v90 = v81[4];
          if (v90)
          {
            v91 = v81[5];
            ObjectType = swift_getObjectType();
            v197[0] = v90;
            v93 = (*(*(v91 + 8) + 8))(ObjectType);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v80 = v199;
          }

          swift_beginAccess();
          v195 = v81;
          v94 = v81[6];
          v95 = v94 >> 62;
          if (v94 >> 62)
          {
            v196 = _CocoaArrayWrapper.endIndex.getter();
            v96 = v88;
            if (!v87)
            {
LABEL_91:
              v97 = *(v96 + 16);
              goto LABEL_92;
            }
          }

          else
          {
            v196 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v96 = v88;
            if (!v87)
            {
              goto LABEL_91;
            }
          }

          v97 = _CocoaArrayWrapper.endIndex.getter();
LABEL_92:
          v6 = v196;
          v7 = &v196[v97];
          if (__OFADD__(v97, v196))
          {
            goto LABEL_154;
          }

          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v87)
            {
              if (v7 <= *(v96 + 24) >> 1)
              {
                goto LABEL_100;
              }

              goto LABEL_99;
            }

LABEL_98:
            _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_99;
          }

          if (v87)
          {
            goto LABEL_98;
          }

LABEL_99:
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v96 = v78 & 0xFFFFFFFFFFFFFF8;
LABEL_100:
          v98 = *(v96 + 16);
          a1 = *(v96 + 24);
          if (v95)
          {
            v7 = _CocoaArrayWrapper.endIndex.getter();
            if (!v7)
            {
LABEL_106:

              if (v6 > 0)
              {
                goto LABEL_155;
              }

              goto LABEL_115;
            }
          }

          else
          {
            v7 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v7)
            {
              goto LABEL_106;
            }
          }

          if (((a1 >> 1) - v98) < v6)
          {
            goto LABEL_156;
          }

          v194 = v78;
          v99 = v96 + 8 * v98 + 32;
          if (v95)
          {
            if (v7 < 1)
            {
              __break(1u);
              goto LABEL_166;
            }

            v192 = v96;
            v193 = v80;
            sub_10001A2F8(&qword_101A00118, &qword_101A00110);
            for (i = 0; i != v7; ++i)
            {
              sub_1005B981C(&qword_101A00110);
              v101 = sub_100777A74(v197, i, v94);
              v103 = *v102;

              (v101)(v197, 0);
              *(v99 + 8 * i) = v103;
            }

            v96 = v192;
            v80 = v193;
            v6 = v196;
          }

          else
          {
            sub_1005B981C(&qword_1019F6DD8);
            swift_arrayInitWithCopy();
          }

          v78 = v194;
          if (v6 > 0)
          {
            v104 = *(v96 + 16);
            v74 = __OFADD__(v104, v6);
            v105 = &v6[v104];
            if (v74)
            {
              __break(1u);
              goto LABEL_163;
            }

            *(v96 + 16) = v105;
          }

LABEL_115:
          if (v78 >> 62)
          {
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              break;
            }
          }

          else if (!*(v96 + 16))
          {
            break;
          }
        }
      }

      __chkstk_darwin(v107);
      v7 = (&v150 - 4);
      v108 = v185;
      v109 = v191;
      *(&v150 - 6) = v185;
      *(&v150 - 5) = v109;
      *(&v150 - 32) = v180;
      *(&v150 - 3) = v189;
      *(&v150 - 2) = &v200;
      *(&v150 - 1) = v80;
      v197[0] = v108;
      v110 = v177;
      v111 = v172;
      *v177 = v172;
      a1 = v179;
      v174(v110, v176, v179);
      v112 = v111;
      LOBYTE(v111) = _dispatchPreconditionTest(_:)();
      v173(v110, a1);
      if ((v111 & 1) == 0)
      {
        goto LABEL_167;
      }

      type metadata accessor for SQLTransaction();
      v113 = swift_initStackObject();
      a1 = &v150;
      *(v113 + 16) = v171;
      *(v113 + 24) = 0;
      *(&v150 - 4) = __chkstk_darwin(v113);
      *(&v150 - 3) = sub_100EA33E4;
      *(&v150 - 2) = v7;
      *(&v150 - 1) = v197;
      swift_retain_n();
      v114 = v190;
      v115 = sub_10002FD6C(sub_1000307EC, (&v150 - 3));
      if (v114)
      {
        v193 = v80;

        swift_setDeallocating();

        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v116 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        v117 = swift_initStackObject();
        *(v117 + 16) = v161;
        v118 = *(v191 + 16);
        v120 = *(v118 + 16);
        v119 = *(v118 + 24);
        *(v117 + 56) = &type metadata for String;
        v121 = sub_1000053B0();
        *(v117 + 64) = v121;
        *(v117 + 32) = v120;
        *(v117 + 40) = v119;

        v122 = [v189 zoneName];
        v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a1 = v124;

        *(v117 + 96) = &type metadata for String;
        *(v117 + 104) = v121;
        *(v117 + 72) = v123;
        *(v117 + 80) = a1;
        swift_getErrorValue();
        v125 = Error.publicDescription.getter(v197[28], v197[29]);
        *(v117 + 136) = &type metadata for String;
        *(v117 + 144) = v121;
        *(v117 + 112) = v125;
        *(v117 + 120) = v126;
        swift_getErrorValue();
        v127 = Error.fullDescription.getter(v197[24]);
        *(v117 + 176) = &type metadata for String;
        *(v117 + 184) = v121;
        *(v117 + 152) = v127;
        *(v117 + 160) = v128;
        v129 = static os_log_type_t.error.getter();
        sub_100005404(v116, &_mh_execute_header, v129, "Failed to writing cached ckrecords tree with root %{public}@ into data-model for zone: %{public}@, error: %{public}@ <%@>", 121, 2, v117);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        if (v193 >> 62)
        {
          v130 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v130 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v6 = v188;
        v7 = v186;

        if (__OFADD__(v200, v130))
        {
          goto LABEL_169;
        }

        v69 = 0;
        v200 += v130;
      }

      else
      {
        v131 = v115;

        swift_setDeallocating();

        if (v131)
        {
          v6 = v188;
          v69 = 0;
          v7 = v186;
          if (v80 >> 62)
          {
            v132 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v132 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v74 = __OFADD__(v160, v132);
          v160 += v132;
          if (v74)
          {
            goto LABEL_173;
          }
        }

        else
        {

          v6 = v188;
          v69 = 0;
          v7 = v186;
        }
      }

      if (v7 == v170)
      {
        v190 = 0;

        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v7 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        v133 = swift_initStackObject();
        *(v133 + 16) = v150;
        v134 = v189;
        v135 = [v189 zoneName];
        a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v137 = v136;

        *(v133 + 56) = &type metadata for String;
        v138 = sub_1000053B0();
        *(v133 + 32) = a1;
        *(v133 + 40) = v137;
        *(v133 + 96) = &type metadata for Int;
        v139 = v160;
        *(v133 + 64) = v138;
        *(v133 + 72) = v139;
        v140 = v200;
        *(v133 + 136) = &type metadata for Int;
        *(v133 + 144) = &protocol witness table for Int;
        *(v133 + 104) = &protocol witness table for Int;
        *(v133 + 112) = v140;
        v141 = static os_log_type_t.default.getter();
        sub_100005404(v7, &_mh_execute_header, v141, "Finished moving CKRecords into data-model for zone %{public}@. Successfully %{public}d. Failed %{public}d.", 106, 2, v133);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v28 = v153;
        v27 = v154;
        v33 = v151;
        v29 = v152;
        v32 = v157;
        v34 = &qword_1019F2000;
        if (!v157)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    ;
  }

  return result;
}

uint64_t sub_100E5CC78(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = v1;
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v82 = enum case for DispatchPredicate.onQueue(_:);
  v80 = v8;
  v81 = v4 + 104;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v83 = v6;
  v84 = v4 + 8;
  v85 = v3;
  v79 = v10;
  result = v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_35;
  }

  if (*(a1 + 16))
  {
    result = sub_100DD4114(a1);
    v12 = result;
    v13 = 0;
    v14 = 0;
    v15 = result + 64;
    v16 = 1 << *(result + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(result + 64);
    v69 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
    v70 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue;
    v19 = (v16 + 63) >> 6;
    v73 = xmmword_10146C4D0;
    v78 = xmmword_10146D2A0;
    v74 = result;
    v67 = v19;
    v68 = result + 64;
    if (v18)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_6:
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_33;
      }

      if (v20 >= v19)
      {
      }

      v18 = *(v15 + 8 * v20);
      ++v13;
    }

    while (!v18);
    v13 = v20;
LABEL_10:
    while (1)
    {
      v21 = (v13 << 9) | (8 * __clz(__rbit64(v18)));
      v22 = *(*(v12 + 48) + v21);
      v23 = *(*(v12 + 56) + v21);
      v98 = 0;
      v24 = *(v23 + 16);
      v75 = v22;
      if (v24)
      {
        break;
      }

      v55 = v22;
      v77 = 0;
LABEL_25:
      v88 = v14;
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v76 = (v18 - 1) & v18;
      v56 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v73;
      v58 = v75;
      v59 = [v75 zoneName];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      *(inited + 56) = &type metadata for String;
      v63 = sub_1000053B0();
      *(inited + 32) = v60;
      *(inited + 40) = v62;
      *(inited + 96) = &type metadata for Int;
      v64 = v77;
      *(inited + 64) = v63;
      *(inited + 72) = v64;
      v65 = v98;
      *(inited + 136) = &type metadata for Int;
      *(inited + 144) = &protocol witness table for Int;
      *(inited + 104) = &protocol witness table for Int;
      *(inited + 112) = v65;
      v66 = static os_log_type_t.default.getter();
      sub_100005404(v56, &_mh_execute_header, v66, "Finished moving Purged CKRecords into data-model for zone %{public}@. Successfully %{public}d. Failed %{public}d.", 113, 2, inited);

      v18 = v76;
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      result = swift_arrayDestroy();
      v14 = v88;
      v12 = v74;
      if (!v18)
      {
        goto LABEL_6;
      }
    }

    v76 = v18;
    v72 = v13;
    v25 = v23;
    v86 = *(v87 + v70);
    v26 = *(v87 + v69);
    v89 = v22;

    v77 = 0;
    v71 = v25;
    v27 = (v25 + 48);
    while (1)
    {
      v30 = v26;
      v91 = v24;
      v92 = &v67;
      v31 = *(v27 - 2);
      v90 = v27;
      v32 = *v27;
      __chkstk_darwin(result);
      v34 = v86;
      v33 = v87;
      *(&v67 - 6) = v87;
      *(&v67 - 5) = v31;
      *(&v67 - 4) = v35;
      *(&v67 - 3) = v32;
      *(&v67 - 2) = v89;
      *(&v67 - 1) = &v98;
      v97 = v33;
      v36 = v83;
      *v83 = v34;
      v37 = v85;
      v80(v36, v82, v85);
      v38 = v31;
      v93 = v32;

      v39 = v34;
      LOBYTE(v31) = _dispatchPreconditionTest(_:)();
      result = v79(v36, v37);
      if ((v31 & 1) == 0)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

      type metadata accessor for SQLTransaction();
      v40 = swift_initStackObject();
      v26 = v30;
      *(v40 + 16) = v30;
      *(v40 + 24) = 0;
      *(&v67 - 4) = __chkstk_darwin(v40);
      *(&v67 - 3) = sub_100EA3508;
      *(&v67 - 2) = (&v67 - 8);
      *(&v67 - 1) = &v97;
      swift_retain_n();
      v41 = sub_10002FD6C(sub_100EA61DC, (&v67 - 6));
      if (v14)
      {
        v88 = v14;

        swift_setDeallocating();

        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v42 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        v43 = swift_initStackObject();
        *(v43 + 16) = v78;
        *(v43 + 56) = sub_100006370(0, &qword_1019F6E98);
        *(v43 + 64) = sub_10000FDE0(&qword_101A22E90, &qword_1019F6E98);
        *(v43 + 32) = v38;
        v92 = v38;
        v44 = [v89 zoneName];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        *(v43 + 96) = &type metadata for String;
        v48 = sub_1000053B0();
        *(v43 + 104) = v48;
        *(v43 + 72) = v45;
        *(v43 + 80) = v47;
        swift_getErrorValue();
        v49 = Error.publicDescription.getter(v95, v96);
        *(v43 + 136) = &type metadata for String;
        *(v43 + 144) = v48;
        *(v43 + 112) = v49;
        *(v43 + 120) = v50;
        swift_getErrorValue();
        v51 = Error.fullDescription.getter(v94);
        *(v43 + 176) = &type metadata for String;
        *(v43 + 184) = v48;
        *(v43 + 152) = v51;
        *(v43 + 160) = v52;
        v53 = static os_log_type_t.error.getter();
        sub_100005404(v42, &_mh_execute_header, v53, "Failed to write cached purged ckrecord with id %{public}@ into data-model for zone: %{public}@, error: %{public}@ <%@>", 118, 2, v43);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        result = swift_arrayDestroy();
        if (__OFADD__(v98, 1))
        {
          goto LABEL_32;
        }

        v14 = 0;
        ++v98;
      }

      else
      {
        v54 = v41;

        swift_setDeallocating();

        if (v54)
        {
          v28 = v90;
          v29 = v91;
          if (__OFADD__(v77, 1))
          {
            goto LABEL_34;
          }

          ++v77;
          goto LABEL_13;
        }
      }

      v28 = v90;
      v29 = v91;
LABEL_13:
      v27 = v28 + 3;
      v24 = v29 - 1;
      if (!v24)
      {

        v19 = v67;
        v15 = v68;
        v13 = v72;
        v18 = v76;
        goto LABEL_25;
      }
    }
  }

  return result;
}

uint64_t sub_100E5D418(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v72 = enum case for DispatchPredicate.onQueue(_:);
  v70 = v8;
  v71 = v4 + 104;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v73 = v6;
  v74 = v4 + 8;
  v75 = v3;
  v69 = v10;
  result = v10(v6, v3);
  if ((v7 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (*(a1 + 16))
  {
    v12 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    v68 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue;
    v64 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    v78 = 0;
    v62 = xmmword_10146C6B0;
    v61 = xmmword_10146C4D0;
    v65 = a1 + 64;
    v66 = v1;
    v63 = v16;
    v67 = a1;
    if (!v15)
    {
LABEL_6:
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v16)
        {
        }

        v15 = *(v12 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    while (1)
    {
LABEL_10:
      v76 = &v61;
      v19 = *(*(a1 + 48) + 8 * (__clz(__rbit64(v15)) | (v17 << 6)));
      __chkstk_darwin(result);
      *(&v61 - 4) = v1;
      *(&v61 - 3) = v19;
      *(&v61 - 16) = v20;
      *(&v61 - 15) = v21;
      *(&v61 - 14) = v22;
      v82 = v1;
      v23 = *(v1 + v68);
      v24 = v73;
      *v73 = v23;
      v25 = v75;
      v70(v24, v72, v75);
      v77 = v19;
      v26 = v23;
      LOBYTE(v23) = _dispatchPreconditionTest(_:)();
      result = v69(v24, v25);
      if ((v23 & 1) == 0)
      {
        goto LABEL_28;
      }

      v27 = *(v1 + v64);
      type metadata accessor for SQLTransaction();
      inited = swift_initStackObject();
      *(inited + 16) = v27;
      *(inited + 24) = 0;
      *(&v61 - 4) = __chkstk_darwin(inited);
      *(&v61 - 3) = sub_100EA4328;
      *(&v61 - 2) = &v61 - 3;
      *(&v61 - 1) = &v82;
      swift_retain_n();
      v29 = v78;
      v30 = sub_10002FD6C(sub_100EA61DC, (&v61 - 3));
      v78 = v29;
      if (v29)
      {

        swift_setDeallocating();

        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v76 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        v31 = swift_initStackObject();
        *(v31 + 16) = v61;
        v32 = v77;
        v33 = [v77 zoneName];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        *(v31 + 56) = &type metadata for String;
        v37 = sub_1000053B0();
        *(v31 + 64) = v37;
        *(v31 + 32) = v34;
        *(v31 + 40) = v36;
        swift_getErrorValue();
        v38 = Error.publicDescription.getter(v80, v81);
        *(v31 + 96) = &type metadata for String;
        *(v31 + 104) = v37;
        *(v31 + 72) = v38;
        *(v31 + 80) = v39;
        swift_getErrorValue();
        v40 = Error.fullDescription.getter(v79);
        *(v31 + 136) = &type metadata for String;
        *(v31 + 144) = v37;
        v41 = v32;
        *(v31 + 112) = v40;
        *(v31 + 120) = v42;
        v43 = static os_log_type_t.error.getter();
        sub_100005404(v76, &_mh_execute_header, v43, "Failed to write cached ck zones existence changes into data-model for zone: %{public}@, error: %{public}@ <%@>", 110, 2, v31);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v78 = 0;
        v12 = v65;
      }

      else
      {
        v44 = v30;

        swift_setDeallocating();

        if (v44)
        {
          v12 = v65;
          v16 = v63;
          v41 = v77;
          if (qword_1019F2258 != -1)
          {
            swift_once();
          }

          v76 = static OS_os_log.boardStore;
          sub_1005B981C(&qword_1019F54E0);
          v45 = swift_initStackObject();
          *(v45 + 16) = v62;
          v46 = [v41 zoneName];
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;

          *(v45 + 56) = &type metadata for String;
          v50 = sub_1000053B0();
          *(v45 + 32) = v47;
          v51 = v45 + 32;
          *(v45 + 64) = v50;
          *(v45 + 40) = v49;
          v52 = static os_log_type_t.default.getter();
          sub_100005404(v76, &_mh_execute_header, v52, "Successfully moved all zone existence changes for zone %{public}@ to data-model", 79, 2, v45);
          goto LABEL_23;
        }

        v12 = v65;
        v41 = v77;
      }

      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v53 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      v54 = swift_initStackObject();
      *(v54 + 16) = v62;
      v55 = [v41 zoneName];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      *(v54 + 56) = &type metadata for String;
      v59 = sub_1000053B0();
      *(v54 + 32) = v56;
      v51 = v54 + 32;
      *(v54 + 64) = v59;
      *(v54 + 40) = v58;
      v60 = static os_log_type_t.default.getter();
      sub_100005404(v53, &_mh_execute_header, v60, "Failed to move any zone existence changes for zone %{public}@ to data-model", 75, 2, v54);
      v16 = v63;
LABEL_23:
      v15 &= v15 - 1;

      swift_setDeallocating();
      result = sub_100005070(v51);
      v1 = v66;
      a1 = v67;
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_100E5DB4C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      v89 = v1 & 0xC000000000000001;
      v4 = &_swiftEmptyDictionarySingleton;
      while (1)
      {
        if (v89)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v7 = *(v1 + 8 * v3 + 32);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v10 = [v7 recordID];
        if ((v4 & 0xC000000000000001) != 0)
        {
          if (v4 >= 0)
          {
            v4 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v11 = v8;
          v12 = __CocoaDictionary.count.getter();
          if (__OFADD__(v12, 1))
          {
            goto LABEL_30;
          }

          v4 = sub_100E8DDD0(v4, v12 + 1);
        }

        else
        {
          v13 = v8;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90[0] = v4;
        v15 = sub_1007C8B7C(v10);
        v17 = *(v4 + 16);
        v18 = (v16 & 1) == 0;
        v19 = __OFADD__(v17, v18);
        v20 = v17 + v18;
        if (v19)
        {
          goto LABEL_29;
        }

        v21 = v16;
        if (*(v4 + 24) < v20)
        {
          sub_100A93CA4(v20, isUniquelyReferenced_nonNull_native);
          v15 = sub_1007C8B7C(v10);
          if ((v21 & 1) != (v22 & 1))
          {
LABEL_157:
            sub_100006370(0, &qword_1019F6E98);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_21:
          v4 = v90[0];
          if (v21)
          {
            goto LABEL_4;
          }

          goto LABEL_22;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }

        v25 = v15;
        sub_100AAA5E0();
        v15 = v25;
        v4 = v90[0];
        if (v21)
        {
LABEL_4:
          v5 = *(v4 + 56);
          v6 = *(v5 + 8 * v15);
          *(v5 + 8 * v15) = v8;

          goto LABEL_5;
        }

LABEL_22:
        *(v4 + 8 * (v15 >> 6) + 64) |= 1 << v15;
        *(*(v4 + 48) + 8 * v15) = v10;
        *(*(v4 + 56) + 8 * v15) = v8;

        v23 = *(v4 + 16);
        v19 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v19)
        {
          goto LABEL_31;
        }

        *(v4 + 16) = v24;
LABEL_5:
        ++v3;
        if (v9 == v2)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      v2 = a1;
    }

    while (a1);
  }

  v4 = &_swiftEmptyDictionarySingleton;
LABEL_34:
  __chkstk_darwin(a1);
  v76[2] = v88;
  v26 = sub_100DCFCCC(v4, sub_100EA34DC, v76, sub_100EA6318, 0, sub_100EA631C, 0);

  if (v26 >> 62)
  {
    goto LABEL_153;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:
  if (v27)
  {
    v28 = 0;
    v80 = v26 & 0xFFFFFFFFFFFFFF8;
    v81 = v26 & 0xC000000000000001;
    v78 = v26;
    v79 = v26 + 32;
    v29 = _swiftEmptyArrayStorage;
    v77 = v27;
    while (1)
    {
      if (v81)
      {
        v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v19 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v19)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v28 >= *(v80 + 16))
        {
          goto LABEL_148;
        }

        v85 = *(v79 + 8 * v28);

        v19 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v19)
        {
          goto LABEL_147;
        }
      }

      v84 = v29;
      v82 = v30;
      v31 = *(v85 + 16);
      v91 = _swiftEmptyArrayStorage;
      swift_retain_n();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v83 = v31;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v32 = v91;
      if (!(v91 >> 62))
      {
        if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        goto LABEL_121;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        break;
      }

LABEL_121:

      v33 = _swiftEmptyArrayStorage;
LABEL_122:

      v67 = v33[2];
      v29 = v84;
      v68 = v84[2];
      v26 = v68 + v67;
      if (__OFADD__(v68, v67))
      {
        goto LABEL_149;
      }

      v69 = swift_isUniquelyReferenced_nonNull_native();
      if (!v69 || v26 > v29[3] >> 1)
      {
        if (v68 <= v26)
        {
          v70 = v68 + v67;
        }

        else
        {
          v70 = v68;
        }

        v29 = sub_100B37F64(v69, v70, 1, v29);
      }

      v26 = v78;
      v71 = v77;
      v28 = v82;
      if (v33[2])
      {
        if ((v29[3] >> 1) - v29[2] < v67)
        {
          goto LABEL_151;
        }

        sub_1005B981C(&qword_101A11CF8);
        swift_arrayInitWithCopy();

        if (v67)
        {
          v72 = v29[2];
          v19 = __OFADD__(v72, v67);
          v73 = v72 + v67;
          if (v19)
          {
            goto LABEL_152;
          }

          v29[2] = v73;
        }
      }

      else
      {

        if (v67)
        {
          goto LABEL_150;
        }
      }

      if (v28 == v71)
      {
        goto LABEL_135;
      }
    }

    v33 = _swiftEmptyArrayStorage;
    while (1)
    {
      v26 = v32 & 0x8000000000000000;
      v34 = v32 >> 62;
      if (v32 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_155;
        }
      }

      else if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
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
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        v27 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_36;
      }

      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v36 = v32 & 0xFFFFFFFFFFFFFF8;
        if (v34)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_137;
        }

        v35 = *(v32 + 32);

        v36 = v32 & 0xFFFFFFFFFFFFFF8;
        if (v34)
        {
LABEL_61:
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_143;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < 1)
          {
            goto LABEL_144;
          }

          v39 = _CocoaArrayWrapper.endIndex.getter();
          v38 = v39 - 1;
          if (__OFSUB__(v39, 1))
          {
            goto LABEL_138;
          }

          goto LABEL_64;
        }
      }

      v37 = *(v36 + 16);
      if (!v37)
      {
        goto LABEL_143;
      }

      v38 = v37 - 1;
      if (__OFSUB__(v37, 1))
      {
        goto LABEL_138;
      }

LABEL_64:
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v34)
        {
          v40 = (v32 & 0xFFFFFFFFFFFFFF8);
          if (v38 <= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }

LABEL_69:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_70;
      }

      if (v34)
      {
        goto LABEL_69;
      }

LABEL_70:
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v40 = (v32 & 0xFFFFFFFFFFFFFF8);
      v26 = v32 & 0x8000000000000000;
LABEL_71:

      v41 = v32 >> 62;
      if (v32 >> 62)
      {
        v64 = _CocoaArrayWrapper.endIndex.getter();
        if (__OFSUB__(v64, 1))
        {
          goto LABEL_156;
        }

        memmove(v40 + 4, v40 + 5, 8 * (v64 - 1));
        v65 = _CocoaArrayWrapper.endIndex.getter();
        v43 = v65 - 1;
        if (__OFSUB__(v65, 1))
        {
          goto LABEL_139;
        }
      }

      else
      {
        v42 = v40[2];
        memmove(v40 + 4, v40 + 5, 8 * v42 - 8);
        v43 = v42 - 1;
        if (__OFSUB__(v42, 1))
        {
          goto LABEL_139;
        }
      }

      v40[2] = v43;
      v44 = v35[4];
      if (v44)
      {
        v45 = v35;
        v46 = v35[5];
        swift_unknownObjectRetain();
        v47 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_100B37F64(0, v33[2] + 1, 1, v33);
        }

        v49 = v33[2];
        v48 = v33[3];
        if (v49 >= v48 >> 1)
        {
          v33 = sub_100B37F64((v48 > 1), v49 + 1, 1, v33);
        }

        v33[2] = v49 + 1;
        v50 = &v33[2 * v49];
        v50[4] = v44;
        v50[5] = v46;
        v32 = v47;
        v35 = v45;
      }

      swift_beginAccess();
      v51 = v35[6];
      v52 = v51 >> 62;
      if (v51 >> 62)
      {
        v53 = _CocoaArrayWrapper.endIndex.getter();
        if (!v41)
        {
LABEL_81:
          v54 = v40[2];
          v55 = v54 + v53;
          if (__OFADD__(v54, v53))
          {
            goto LABEL_140;
          }

          goto LABEL_82;
        }
      }

      else
      {
        v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v41)
        {
          goto LABEL_81;
        }
      }

      v66 = _CocoaArrayWrapper.endIndex.getter();
      v55 = v66 + v53;
      if (__OFADD__(v66, v53))
      {
        goto LABEL_140;
      }

LABEL_82:

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v41)
        {
          if (v55 <= v40[3] >> 1)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

LABEL_87:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_88;
      }

      if (v41)
      {
        goto LABEL_87;
      }

LABEL_88:
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v40 = (v32 & 0xFFFFFFFFFFFFFF8);
LABEL_89:
      v56 = v40[2];
      v57 = v40[3];
      if (v52)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
LABEL_96:

          if (v53 > 0)
          {
            goto LABEL_141;
          }

          goto LABEL_104;
        }
      }

      else
      {
        v26 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_96;
        }
      }

      if (((v57 >> 1) - v56) < v53)
      {
        goto LABEL_142;
      }

      if (v52)
      {
        if (v26 < 1)
        {
          goto LABEL_146;
        }

        v86 = v53;
        v87 = v35;
        v88 = v32;
        v89 = v33;
        sub_10001A2F8(&qword_101A00118, &qword_101A00110);
        for (i = 0; i != v26; ++i)
        {
          sub_1005B981C(&qword_101A00110);
          v59 = sub_100777A74(v90, i, v51);
          v61 = *v60;

          (v59)(v90, 0);
          v40[v56 + 4 + i] = v61;
        }

        v32 = v88;
        v33 = v89;
        v53 = v86;
        if (v86 > 0)
        {
LABEL_102:
          v62 = v40[2];
          v19 = __OFADD__(v62, v53);
          v63 = v62 + v53;
          if (v19)
          {
            goto LABEL_145;
          }

          v40[2] = v63;
        }
      }

      else
      {
        sub_1005B981C(&qword_1019F6DD8);
        swift_arrayInitWithCopy();

        if (v53 > 0)
        {
          goto LABEL_102;
        }
      }

LABEL_104:
      if (v32 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_116:

          goto LABEL_122;
        }
      }

      else if (!v40[2])
      {
        goto LABEL_116;
      }
    }
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_135:

  v74 = sub_100DCC63C(v29);

  return v74;
}

uint64_t sub_100E5E5AC(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t *a5, unint64_t a6)
{
  v10 = a2;
  sub_100E48FE0(a2, a3);
  if (v6)
  {
    v44 = a6;
    v45 = a5;
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146D2A0;
    v13 = *(v10 + 16);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    a6 = &type metadata for String;
    *(inited + 56) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 64) = v16;
    *(inited + 32) = v14;
    v10 = inited + 32;
    *(inited + 40) = v15;

    v17 = [a4 zoneName];
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v16;
    *(inited + 72) = a4;
    *(inited + 80) = v19;
    swift_getErrorValue();
    v20 = Error.publicDescription.getter(v51, v52);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v16;
    *(inited + 112) = v20;
    *(inited + 120) = v21;
    swift_getErrorValue();
    v22 = Error.fullDescription.getter(v50);
    *(inited + 176) = &type metadata for String;
    *(inited + 184) = v16;
    *(inited + 152) = v22;
    *(inited + 160) = v23;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v24, "Failed to write tree of ckrecords with root %{public}@ into data-model for zone: %{public}@, error: %{public}@ <%@>", 115, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    if (v44 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a5 = v45;

    v26 = *v45 + v25;
    if (!__OFADD__(*v45, v25))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  sub_100E5E9B8(a6);
  if (!v6)
  {
    return 1;
  }

  v46 = a5;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_10146D2A0;
  v29 = *(v10 + 16);
  v31 = *(v29 + 16);
  v30 = *(v29 + 24);
  *(v28 + 56) = &type metadata for String;
  v32 = sub_1000053B0();
  *(v28 + 64) = v32;
  *(v28 + 32) = v31;
  *(v28 + 40) = v30;

  v33 = [a4 zoneName];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v32;
  *(v28 + 72) = v34;
  *(v28 + 80) = v36;
  swift_getErrorValue();
  v37 = Error.publicDescription.getter(v48, v49);
  *(v28 + 136) = &type metadata for String;
  *(v28 + 144) = v32;
  *(v28 + 112) = v37;
  *(v28 + 120) = v38;
  swift_getErrorValue();
  v39 = Error.fullDescription.getter(v47);
  *(v28 + 176) = &type metadata for String;
  *(v28 + 184) = v32;
  *(v28 + 152) = v39;
  *(v28 + 160) = v40;
  v41 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v41, "Failed to remove tree of ckrecords with root %{public}@ from cache after persisting into data-model for zone: %{public}@, error: %{public}@ <%@>", 144, 2, v28);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  if (a6 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a5 = v46;

  v26 = *v46 + v42;
  if (!__OFADD__(*v46, v42))
  {
LABEL_15:
    result = 0;
    *a5 = v26;
    return result;
  }

  __break(1u);
  return result;
}

void sub_100E5E9B8(unint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = v1;
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v6 + 104);
  v50 = enum case for DispatchPredicate.onQueue(_:);
  v51 = v6 + 104;
  v49 = v10;
  v10(v8);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v6 + 8);
  v47 = v5;
  v48 = v12;
  v52 = v6 + 8;
  v12(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_28;
  }

  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v43[1] = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = a1 & 0xC000000000000001;
    v43[0] = " %{public}@ <%@>";
    while (1)
    {
      if (v45)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v44 + 16))
        {
          goto LABEL_25;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      v53 = v15;
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      type metadata accessor for SQLiteStatement();
      swift_initStackObject();

      v18 = sub_10001CC04(v17, 0xD000000000000045, v43[0] | 0x8000000000000000);

      if (v3)
      {
        goto LABEL_22;
      }

      v19 = sub_100E5B438();
      sub_1000285F8(v19, v20, 1);

      v21 = *(*(v18 + 16) + 32);
      *v8 = v21;
      v22 = v47;
      v49(v8, v50, v47);
      v23 = v21;
      LOBYTE(v21) = _dispatchPreconditionTest(_:)();
      v48(v8, v22);
      if ((v21 & 1) == 0)
      {
        goto LABEL_26;
      }

      v24 = *(v18 + 16);

      v25 = sub_10001CEC4(v24, v18);

      if (v25 != 101)
      {
        v54 = 0;
        v55 = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        v30._object = 0x80000001015A6F50;
        v30._countAndFlagsBits = 0xD000000000000037;
        String.append(_:)(v30);
        v31 = [v53 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35._countAndFlagsBits = v32;
        v35._object = v34;
        String.append(_:)(v35);

        v36 = v54;
        v37 = v55;
        sub_10089C7D0();
        swift_allocError();
        *v38 = v25;
        *(v38 + 8) = v36;
        *(v38 + 16) = v37;
        swift_willThrow();
        v39 = *(*(v18 + 16) + 32);
        *v8 = v39;
        v40 = v47;
        v49(v8, v50, v47);
        v41 = v39;
        LOBYTE(v39) = _dispatchPreconditionTest(_:)();
        v48(v8, v40);
        if ((v39 & 1) == 0)
        {
          __break(1u);
        }

        swift_beginAccess();
        v42 = *(v18 + 24);
        if (v42)
        {
          sqlite3_finalize(v42);

          *(v18 + 24) = 0;

          return;
        }

LABEL_22:

        return;
      }

      v26 = *(*(v18 + 16) + 32);
      *v8 = v26;
      v27 = v47;
      v49(v8, v50, v47);
      v28 = v26;
      LOBYTE(v26) = _dispatchPreconditionTest(_:)();
      v48(v8, v27);
      if ((v26 & 1) == 0)
      {
        goto LABEL_27;
      }

      swift_beginAccess();
      v29 = *(v18 + 24);
      if (v29)
      {
        sqlite3_finalize(v29);

        *(v18 + 24) = 0;
      }

      else
      {
      }

      ++v14;
      if (v16 == i)
      {
        return;
      }
    }

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
    ;
  }
}

uint64_t sub_100E5EF18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(*(v3 + 16) + 8))(ObjectType);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_100E5EF78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(*(v3 + 16) + 16))(ObjectType);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_100E5EFD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v11 = a2;
  sub_100EEB3F0(v11, a3, a4, &v67);
  v60 = a6;
  if (v68)
  {
    sub_100050F74(&v67, v69);
    sub_1005B981C(&qword_101A21F88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10000630C(v69, inited + 32);
    sub_100E4D61C(inited);
    if (!v6)
    {
      swift_setDeallocating();
      sub_100005070(inited + 32);
      sub_1005B981C(&unk_1019F4D60);
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_101465920;
      *(v42 + 32) = v11;
      sub_100E5F65C(v42);
      sub_100005070(v69);
      swift_setDeallocating();
      swift_arrayDestroy();
      return 1;
    }

    swift_setDeallocating();
    sub_100005070(inited + 32);
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v58 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_10146D2A0;
    v14 = [v11 recordName];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(v13 + 56) = &type metadata for String;
    v18 = sub_1000053B0();
    *(v13 + 64) = v18;
    *(v13 + 32) = v15;
    v11 = (v13 + 32);
    *(v13 + 40) = v17;
    v19 = [a5 zoneName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v21;

    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v18;
    *(v13 + 72) = v20;
    *(v13 + 80) = a5;
    swift_getErrorValue();
    v22 = Error.publicDescription.getter(v65, v66);
    *(v13 + 136) = &type metadata for String;
    *(v13 + 144) = v18;
    *(v13 + 112) = v22;
    *(v13 + 120) = v23;
    swift_getErrorValue();
    v24 = Error.fullDescription.getter(v64);
    *(v13 + 176) = &type metadata for String;
    *(v13 + 184) = v18;
    *(v13 + 152) = v24;
    *(v13 + 160) = v25;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v58, &_mh_execute_header, v26, "Failed to write purged record info with id %{public}@ into data-model for zone: %{public}@, error: %{public}@ <%@>", 114, 2, v13);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    sub_100005070(v69);
    v27 = v60;
    v28 = *v60 + 1;
    if (!__OFADD__(*v60, 1))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  sub_10000CAAC(&v67, &qword_101A21F80);
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_10146BDE0;
  v31 = [v11 recordName];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  *(v30 + 56) = &type metadata for String;
  v35 = sub_1000053B0();
  *(v30 + 64) = v35;
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  v36 = [a5 zoneName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v35;
  *(v30 + 72) = v37;
  *(v30 + 80) = v39;
  v40 = static os_log_type_t.error.getter();
  sub_100005404(v29, &_mh_execute_header, v40, "Failed to create remote identifier from purged record with id %{public}@, zone %{public}@", 89, 2, v30);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v27 = v60;
  v28 = *v60 + 1;
  if (!__OFADD__(*v60, 1))
  {
    result = 0;
LABEL_15:
    *v27 = v28;
    return result;
  }

  __break(1u);
  swift_once();
  v59 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_10146D2A0;
  v44 = [v30 + 32 recordName];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  *(v43 + 56) = &type metadata for String;
  v48 = sub_1000053B0();
  *(v43 + 64) = v48;
  *(v43 + 32) = v45;
  *(v43 + 40) = v47;
  v49 = [v36 zoneName];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  *(v43 + 96) = &type metadata for String;
  *(v43 + 104) = v48;
  *(v43 + 72) = v50;
  *(v43 + 80) = v52;
  swift_getErrorValue();
  v53 = Error.publicDescription.getter(v62, v63);
  *(v43 + 136) = &type metadata for String;
  *(v43 + 144) = v48;
  *(v43 + 112) = v53;
  *(v43 + 120) = v54;
  swift_getErrorValue();
  v55 = Error.fullDescription.getter(v61);
  *(v43 + 176) = &type metadata for String;
  *(v43 + 184) = v48;
  *(v43 + 152) = v55;
  *(v43 + 160) = v56;
  v57 = static os_log_type_t.error.getter();
  sub_100005404(v59, &_mh_execute_header, v57, "Failed to remove purged record info with id %{public}@ from cache for zone: %{public}@, error: %{public}@ <%@>", 110, 2, v43);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  result = sub_100005070(v69);
  v27 = v60;
  v28 = *v60 + 1;
  if (!__OFADD__(*v60, 1))
  {
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_100E5F65C(unint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = v1;
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v6 + 104);
  v50 = enum case for DispatchPredicate.onQueue(_:);
  v51 = v6 + 104;
  v49 = v10;
  v10(v8);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v6 + 8);
  v47 = v5;
  v48 = v12;
  v52 = v6 + 8;
  v12(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_28;
  }

  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v43[1] = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = a1 & 0xC000000000000001;
    v43[0] = "blic}@, error: %{public}@ <%@>";
    while (1)
    {
      if (v45)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v44 + 16))
        {
          goto LABEL_25;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      v53 = v15;
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      type metadata accessor for SQLiteStatement();
      swift_initStackObject();

      v18 = sub_10001CC04(v17, 0xD000000000000053, v43[0] | 0x8000000000000000);

      if (v3)
      {
        goto LABEL_22;
      }

      v19 = sub_100E5B438();
      sub_1000285F8(v19, v20, 1);

      v21 = *(*(v18 + 16) + 32);
      *v8 = v21;
      v22 = v47;
      v49(v8, v50, v47);
      v23 = v21;
      LOBYTE(v21) = _dispatchPreconditionTest(_:)();
      v48(v8, v22);
      if ((v21 & 1) == 0)
      {
        goto LABEL_26;
      }

      v24 = *(v18 + 16);

      v25 = sub_10001CEC4(v24, v18);

      if (v25 != 101)
      {
        v54 = 0;
        v55 = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v30._object = 0x80000001015A7B50;
        v30._countAndFlagsBits = 0xD00000000000003ELL;
        String.append(_:)(v30);
        v31 = [v53 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35._countAndFlagsBits = v32;
        v35._object = v34;
        String.append(_:)(v35);

        v36 = v54;
        v37 = v55;
        sub_10089C7D0();
        swift_allocError();
        *v38 = v25;
        *(v38 + 8) = v36;
        *(v38 + 16) = v37;
        swift_willThrow();
        v39 = *(*(v18 + 16) + 32);
        *v8 = v39;
        v40 = v47;
        v49(v8, v50, v47);
        v41 = v39;
        LOBYTE(v39) = _dispatchPreconditionTest(_:)();
        v48(v8, v40);
        if ((v39 & 1) == 0)
        {
          __break(1u);
        }

        swift_beginAccess();
        v42 = *(v18 + 24);
        if (v42)
        {
          sqlite3_finalize(v42);

          *(v18 + 24) = 0;

          return;
        }

LABEL_22:

        return;
      }

      v26 = *(*(v18 + 16) + 32);
      *v8 = v26;
      v27 = v47;
      v49(v8, v50, v47);
      v28 = v26;
      LOBYTE(v26) = _dispatchPreconditionTest(_:)();
      v48(v8, v27);
      if ((v26 & 1) == 0)
      {
        goto LABEL_27;
      }

      swift_beginAccess();
      v29 = *(v18 + 24);
      if (v29)
      {
        sqlite3_finalize(v29);

        *(v18 + 24) = 0;
      }

      else
      {
      }

      ++v14;
      if (v16 == i)
      {
        return;
      }
    }

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
    ;
  }
}

uint64_t sub_100E5FBAC(uint64_t a1, void *a2, int a3)
{
  sub_100EEC10C(&v64);
  if (!v65)
  {
    sub_10000CAAC(&v64, &qword_101A21F80);
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v8 = [a2 zoneName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v12 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v12, "Tried to write zone existence changes, but failed to create remote identifier from zoneChange for zone: %{public}@", 114, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    return 0;
  }

  sub_100050F74(&v64, v66);
  if ((a3 & 0x100) == 0 && (a3 & 1) == 0)
  {
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    sub_1005B981C(&qword_101A21F88);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_10146C6B0;
    sub_10000630C(v66, v30 + 32);
    sub_100E4DE54(v30);
    if (v3)
    {
      swift_setDeallocating();
      sub_100005070(v30 + 32);
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v31 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_10146C4D0;
      v32 = [a2 zoneName];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      *(v16 + 56) = &type metadata for String;
      v36 = sub_1000053B0();
      *(v16 + 64) = v36;
      *(v16 + 32) = v33;
      *(v16 + 40) = v35;
      swift_getErrorValue();
      v37 = Error.publicDescription.getter(v59, v60);
      *(v16 + 96) = &type metadata for String;
      *(v16 + 104) = v36;
      *(v16 + 72) = v37;
      *(v16 + 80) = v38;
      swift_getErrorValue();
      v39 = Error.fullDescription.getter(v58);
      *(v16 + 136) = &type metadata for String;
      *(v16 + 144) = v36;
      *(v16 + 112) = v39;
      *(v16 + 120) = v40;
      v26 = static os_log_type_t.error.getter();
      v27 = "Failed to write deletedDueToUserEncryptedDataReset zone existence change into data-model for zone: %{public}@, error: %{public}@ <%@>";
      v28 = v31;
      v29 = 133;
LABEL_18:
      sub_100005404(v28, &_mh_execute_header, v26, v27, v29, 2, v16);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
LABEL_24:
      swift_arrayDestroy();
      sub_100005070(v66);
      return 0;
    }

    swift_setDeallocating();
    sub_100005070(v30 + 32);
    goto LABEL_20;
  }

  sub_1005B981C(&qword_101A21F88);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10146C6B0;
  sub_10000630C(v66, v14 + 32);
  sub_100E4D61C(v14);
  if (v3)
  {
    swift_setDeallocating();
    sub_100005070(v14 + 32);
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_10146C4D0;
    v17 = [a2 zoneName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(v16 + 56) = &type metadata for String;
    v21 = sub_1000053B0();
    *(v16 + 64) = v21;
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    swift_getErrorValue();
    v22 = Error.publicDescription.getter(v56, v57);
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v21;
    *(v16 + 72) = v22;
    *(v16 + 80) = v23;
    swift_getErrorValue();
    v24 = Error.fullDescription.getter(v55);
    *(v16 + 136) = &type metadata for String;
    *(v16 + 144) = v21;
    *(v16 + 112) = v24;
    *(v16 + 120) = v25;
    v26 = static os_log_type_t.error.getter();
    v27 = "Failed to write deleted/purged zone existence change into data-model for zone: %{public}@, error: %{public}@ <%@>";
    v28 = v15;
    v29 = 113;
    goto LABEL_18;
  }

  swift_setDeallocating();
  sub_100005070(v14 + 32);
  if ((a3 & 0x10000) != 0)
  {
    goto LABEL_14;
  }

LABEL_20:
  sub_1005B981C(&unk_1019F4D60);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_101465920;
  *(v41 + 32) = a2;
  v42 = a2;
  sub_100E602B0(v41);
  if (v3)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v43 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_10146C4D0;
    v45 = [v42 zoneName];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    *(v44 + 56) = &type metadata for String;
    v49 = sub_1000053B0();
    *(v44 + 64) = v49;
    *(v44 + 32) = v46;
    *(v44 + 40) = v48;
    swift_getErrorValue();
    v50 = Error.publicDescription.getter(v62, v63);
    *(v44 + 96) = &type metadata for String;
    *(v44 + 104) = v49;
    *(v44 + 72) = v50;
    *(v44 + 80) = v51;
    swift_getErrorValue();
    v52 = Error.fullDescription.getter(v61);
    *(v44 + 136) = &type metadata for String;
    *(v44 + 144) = v49;
    *(v44 + 112) = v52;
    *(v44 + 120) = v53;
    v54 = static os_log_type_t.error.getter();
    sub_100005404(v43, &_mh_execute_header, v54, "Failed to remove zone existence changes from cache for zone: %{public}@, error: %{public}@ <%@>", 95, 2, v44);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    goto LABEL_24;
  }

  sub_100005070(v66);
  swift_setDeallocating();
  swift_arrayDestroy();
  return 1;
}

void sub_100E602B0(unint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = v1;
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v6 + 104);
  v68 = enum case for DispatchPredicate.onQueue(_:);
  v69 = v6 + 104;
  v67 = v10;
  v10(v8);
  v11 = v9;
  v12 = _dispatchPreconditionTest(_:)();
  v14 = *(v6 + 8);
  v13 = v6 + 8;
  v66 = v14;
  v14(v8, v5);
  if ((v12 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (!v15)
    {
      return;
    }

    goto LABEL_4;
  }

  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    return;
  }

LABEL_4:
  v16 = 0;
  v59 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
  v60 = a1 & 0xFFFFFFFFFFFFFF8;
  v61 = a1 & 0xC000000000000001;
  v58 = "Failed to delete a board";
  v57 = v8;
  v56 = a1;
  v55 = v15;
  while (1)
  {
    if (v61)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v60 + 16))
      {
        goto LABEL_25;
      }

      v17 = *(a1 + 8 * v16 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v64 = v16 + 1;
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v20 = sub_10001CC04(v19, 0xD00000000000003FLL, v58 | 0x8000000000000000);

    if (v3)
    {

      return;
    }

    v63 = 0;
    v21 = [v18 zoneName];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v70 = v22;
    v71 = v24;

    v25._countAndFlagsBits = 58;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);

    v3 = v13;
    v26 = v5;
    v28 = v70;
    v27 = v71;
    v65 = v18;
    v29 = [v18 ownerName];
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v70 = v28;
    v71 = v27;
    v5 = v26;
    v13 = v3;

    v32._countAndFlagsBits = a1;
    v32._object = v31;
    String.append(_:)(v32);
    v8 = v57;

    sub_1000285F8(v70, v71, 1);

    v33 = *(*(v20 + 16) + 32);
    *v8 = v33;
    v67(v8, v68, v5);
    v34 = v33;
    LOBYTE(v33) = _dispatchPreconditionTest(_:)();
    v66(v8, v5);
    if ((v33 & 1) == 0)
    {
      goto LABEL_26;
    }

    v35 = *(v20 + 16);

    v36 = v35;
    v37 = v63;
    a1 = sub_10001CEC4(v36, v20);
    v3 = v37;

    if (a1 != 101)
    {
      break;
    }

    v38 = *(*(v20 + 16) + 32);
    *v8 = v38;
    v67(v8, v68, v5);
    v39 = v38;
    LOBYTE(v38) = _dispatchPreconditionTest(_:)();
    v66(v8, v5);
    if ((v38 & 1) == 0)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v40 = *(v20 + 24);
    if (v40)
    {
      sqlite3_finalize(v40);

      *(v20 + 24) = 0;
    }

    else
    {
    }

    a1 = v56;
    ++v16;
    if (v64 == v55)
    {
      return;
    }
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v41._object = 0x80000001015A5E80;
  v41._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v41);
  v42 = [v65 description];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v8;
  v46 = v45;

  v47._countAndFlagsBits = v43;
  v47._object = v46;
  String.append(_:)(v47);

  v48 = v70;
  v49 = v71;
  sub_10089C7D0();
  swift_allocError();
  *v50 = a1;
  *(v50 + 8) = v48;
  *(v50 + 16) = v49;
  swift_willThrow();
  v51 = *(*(v20 + 16) + 32);
  *v44 = v51;
  v67(v44, v68, v5);
  v52 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  v66(v44, v5);
  if ((v51 & 1) == 0)
  {
    __break(1u);
  }

  swift_beginAccess();
  v53 = *(v20 + 24);
  if (v53)
  {
    sqlite3_finalize(v53);

    *(v20 + 24) = 0;
  }

  else
  {
  }
}

void sub_100E608E4(void *a1, unint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  if (qword_1019F2258 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v6 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v8 = sub_10108824C(a1);
    v10 = v9;
    *(inited + 56) = &type metadata for String;
    v78 = sub_1000053B0();
    *(inited + 64) = v78;
    *(inited + 32) = v8;
    *(inited + 40) = v10;
    v11 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v11, "Moving persisted cache into data model for %{public}@", 53, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    if (!a1)
    {
      break;
    }

    if (a1 != 1)
    {
      sub_100E61634(a1, v3);
      sub_100E6195C(a1);
      sub_100E61C4C(a1);
      return;
    }

    a1 = 0;
    v12 = sub_100E61FB0();
    v3 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_32;
      }

      v77 = v6;
      __CocoaSet.makeIterator()();
      sub_100006370(0, &qword_1019F69D0);
      sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
      Set.Iterator.init(_cocoa:)();
      v3 = v81;
      v13 = v82;
      v14 = v83;
      v15 = v84;
      v16 = v85;
    }

    else
    {
      if (!*(v12 + 16))
      {
        goto LABEL_32;
      }

      v77 = v6;
      v15 = 0;
      v18 = -1 << *(v12 + 32);
      v13 = (v12 + 56);
      v14 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v16 = v20 & *(v12 + 56);
    }

    v21 = (v14 + 64) >> 6;
    if ((v3 & 0x8000000000000000) != 0)
    {
      while (__CocoaSet.Iterator.next()())
      {
        sub_100006370(0, &qword_1019F69D0);
        swift_dynamicCast();
        v26 = v80;
        v24 = v15;
        v25 = v16;
        if (!v80)
        {
          break;
        }

LABEL_24:
        v27 = sub_100E634C0(v26);
        a1 = v25;
        if (v27 != 2 && ((v27 & 0x10100) != 0 || (v27 & 1) != 0))
        {
          v33 = v27;
          sub_1005B981C(&qword_101A21F18);
          v34 = swift_initStackObject();
          *(v34 + 16) = xmmword_10146C6B0;
          *(v34 + 32) = v26;
          *(v34 + 40) = v33 & 1;
          *(v34 + 41) = BYTE1(v33) & 1;
          *(v34 + 42) = BYTE2(v33) & 1;
          v35 = v26;
          a2 = sub_100BD86C4(v34);
          swift_setDeallocating();
          sub_10000CAAC(v34 + 32, &qword_101A21F20);
          sub_100E5D418(a2);
        }

        else
        {
          v28 = swift_initStackObject();
          *(v28 + 16) = xmmword_10146C6B0;
          v29 = [v26 zoneName];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a2 = v31;

          *(v28 + 56) = &type metadata for String;
          *(v28 + 64) = v78;
          *(v28 + 32) = v30;
          *(v28 + 40) = a2;
          v32 = static os_log_type_t.default.getter();
          sub_100005404(v77, &_mh_execute_header, v32, "No cached ckzone existence changes fetched for zone %{public}@", 62, 2, v28);

          swift_setDeallocating();
          sub_100005070(v28 + 32);
        }

        v15 = v24;
        v16 = a1;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_31;
    }

LABEL_16:
    v22 = v15;
    v23 = v16;
    v24 = v15;
    if (v16)
    {
LABEL_20:
      v25 = (v23 - 1) & v23;
      v26 = *(*(v3 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
      if (v26)
      {
        goto LABEL_24;
      }

LABEL_31:
      sub_100035F90();
      return;
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        goto LABEL_31;
      }

      v23 = v13[v24];
      ++v22;
      if (v23)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_63:
    swift_once();
  }

  v17 = sub_100E642BC();
  v36 = sub_100E64754();
  v38 = sub_100E61FB0();
  sub_1010AD40C(v36, v17);
  sub_1010AD40C(v38, v39);
  v41 = v40;
  if ((v40 & 0xC000000000000001) == 0)
  {
    if (*(v40 + 16))
    {
      v44 = 0;
      v46 = -1 << *(v40 + 32);
      v42 = (v40 + 56);
      v43 = ~v46;
      v47 = -v46;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v45 = v48 & *(v40 + 56);
      goto LABEL_41;
    }

LABEL_32:

    v37 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v37, "Zero referenced zone ids found in the cache, aborting", 53, 2, _swiftEmptyArrayStorage);
    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_100006370(0, &qword_1019F69D0);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
  Set.Iterator.init(_cocoa:)();
  v41 = v81;
  v42 = v82;
  v43 = v83;
  v44 = v84;
  v45 = v85;
LABEL_41:
  v49 = (v43 + 64) >> 6;
  v76 = v41;
  v74 = v49;
  v75 = v42;
  while ((v41 & 0x8000000000000000) != 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_31;
    }

    sub_100006370(0, &qword_1019F69D0);
    swift_dynamicCast();
    v53 = v80;
    v52 = v45;
LABEL_51:
    if (!v53)
    {
      goto LABEL_31;
    }

    v79 = v52;
    v54 = sub_100E62448(v53);
    if (v54 >> 62)
    {
      v55 = v54;
      v56 = _CocoaArrayWrapper.endIndex.getter();
      v54 = v55;
      if (v56)
      {
LABEL_54:
        sub_100E5B65C(v54, v3);

        goto LABEL_57;
      }
    }

    else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_10146C6B0;
    v58 = [v53 zoneName];
    v59 = a2;
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v53;
    v63 = v62;

    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = v78;
    *(v57 + 32) = v60;
    a2 = v59;
    *(v57 + 40) = v63;
    v53 = v61;
    v64 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v64, "No cached ckrecords fetched for zone %{public}@", 47, 2, v57);
    swift_setDeallocating();
    sub_100005070(v57 + 32);
LABEL_57:
    v65 = sub_100E62CA8(v53);
    if (*(v65 + 2))
    {
      sub_100E5CC78(v65);
    }

    else
    {

      v66 = swift_initStackObject();
      *(v66 + 16) = xmmword_10146C6B0;
      v67 = [v53 zoneName];
      v68 = a2;
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v53;
      v72 = v71;

      *(v66 + 56) = &type metadata for String;
      *(v66 + 64) = v78;
      *(v66 + 32) = v69;
      a2 = v68;
      *(v66 + 40) = v72;
      v53 = v70;
      v73 = static os_log_type_t.default.getter();
      sub_100005404(v6, &_mh_execute_header, v73, "No cached purged ckrecords fetched for zone %{public}@", 54, 2, v66);
      swift_setDeallocating();
      sub_100005070(v66 + 32);
    }

    sub_100E61C4C(v53);

    v45 = v79;
    v41 = v76;
    v49 = v74;
    v42 = v75;
  }

  v50 = v44;
  v51 = v45;
  if (v45)
  {
LABEL_48:
    v52 = (v51 - 1) & v51;
    v53 = *(*(v41 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v51)))));
    goto LABEL_51;
  }

  while (1)
  {
    v44 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v44 >= v49)
    {
      goto LABEL_31;
    }

    v51 = v42[v44];
    ++v50;
    if (v51)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
}

uint64_t sub_100E61634(void *a1, int a2)
{
  v4 = sub_100E62448(a1);
  if (v4 >> 62)
  {
    v6 = v4;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v6;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_100E5B65C(v4, a2);
  }

  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v10 = [a1 zoneName];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v14, "No cached ckrecords fetched for zone %{public}@", 47, 2, inited);
  swift_setDeallocating();
  return sub_100005070(inited + 32);
}

uint64_t sub_100E6195C(void *a1)
{
  v2 = sub_100E62CA8(a1);
  if (*(v2 + 2))
  {
    sub_100E5CC78(v2);
  }

  else
  {

    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v6 = [a1 zoneName];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v7;
    *(inited + 40) = v9;
    v10 = static os_log_type_t.default.getter();
    sub_100005404(v4, &_mh_execute_header, v10, "No cached purged ckrecords fetched for zone %{public}@", 54, 2, inited);
    swift_setDeallocating();
    return sub_100005070(inited + 32);
  }
}

uint64_t sub_100E61C4C(void *a1)
{
  v2 = sub_100E634C0(a1);
  if (v2 != 2 && ((v2 & 0x10100) != 0 || (v2 & 1) != 0))
  {
    v11 = v2;
    sub_1005B981C(&qword_101A21F18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 32) = a1;
    *(inited + 40) = v11 & 1;
    *(inited + 41) = BYTE1(v11) & 1;
    *(inited + 42) = BYTE2(v11) & 1;
    v13 = a1;
    v14 = sub_100BD86C4(inited);
    swift_setDeallocating();
    sub_10000CAAC(inited + 32, &qword_101A21F20);
    sub_100E5D418(v14);
  }

  else
  {
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_10146C6B0;
    v5 = [a1 zoneName];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_1000053B0();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v9 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v9, "No cached ckzone existence changes fetched for zone %{public}@", 62, 2, v4);
    swift_setDeallocating();
    return sub_100005070(v4 + 32);
  }
}

void *sub_100E61FB0()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v34 = *(v3 + 104);
  v34(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if ((v6 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = v9;
  v38 = _swiftEmptySetSingleton;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = sub_10001CC04(v10, 0xD000000000000031, 0x80000001015A87E0);
  v12 = v1;

  if (v1)
  {
    return v12;
  }

  v33[1] = 0;
  v13 = *(*(v11 + 16) + 32);
  *v5 = v13;
  v14 = v34;
  v34(v5, v7, v2);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v36(v5, v2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_26;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v17 = inited + 3;
  inited[4] = 0;
  v33[0] = inited + 4;
  inited[5] = 1;
  v35 = inited;
  inited[2] = v11;

  swift_beginAccess();
  while (1)
  {
    v18 = *(*(v11 + 16) + 32);
    *v5 = v18;
    v14(v5, v7, v2);
    v19 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if ((v18 & 1) == 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    *v17 = 0;
    v17[1] = 0;
    v35[5] = 1;
    v20 = sqlite3_step(*(v11 + 24));
    if (v20 != 100)
    {
      break;
    }

    v21 = *(*(v11 + 16) + 32);
    *v5 = v21;
    v14(v5, v7, v2);

    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (sqlite3_column_type(*(v11 + 24), 0) == 5 || !sqlite3_column_text(*(v11 + 24), 0))
    {
    }

    else
    {
      v23 = String.init(cString:)();
      v25 = sub_100EA392C(v23, v24);

      if (v25)
      {
        v26 = v25;
        sub_100E7227C(&v37, v26, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
      }

      else
      {
      }

      v14 = v34;
    }
  }

  if (v20 && v20 != 101)
  {
    *v17 = v20;
    v27 = v33[0];
    *v33[0] = 0;
    *(v27 + 8) = 0;
  }

  v12 = v38;
  v28 = *(*(v11 + 16) + 32);
  *v5 = v28;
  v14(v5, v7, v2);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v36(v5, v2);
  if ((v30 & 1) == 0)
  {
LABEL_27:
    __break(1u);
  }

  v31 = *(v11 + 24);
  if (v31)
  {
    sqlite3_finalize(v31);
    *(v11 + 24) = 0;
  }

  return v12;
}

uint64_t sub_100E62448(void *a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v68 = *(v5 + 104);
  (v68)(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v71 = *(v5 + 8);
  v71(v7, v4);
  if ((v8 & 1) == 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v72 = v9;
  v75 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v12 = sub_10001CC04(v11, 0xD00000000000004ELL, 0x80000001015A7CC0);

  if (v2)
  {
    return result;
  }

  v67 = 0;
  v14 = [a1 zoneName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v76 = v15;
  v77 = v17;

  v18._countAndFlagsBits = 58;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v19 = v77;
  v70 = v76;
  v20 = [a1 ownerName];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v76 = v70;
  v77 = v19;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  sub_1000285F8(v76, v77, 1);

  v25 = *(*(v12 + 16) + 32);
  *v7 = v25;
  v26 = v72;
  v27 = v68;
  (v68)(v7, v72, v4);
  v28 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v29 = v71;
  v71(v7, v4);
  if ((v25 & 1) == 0)
  {
    goto LABEL_41;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v69 = inited + 3;
  inited[4] = 0;
  v65 = inited + 4;
  inited[5] = 1;
  v70 = inited;
  inited[2] = v12;

  swift_beginAccess();
  v31 = *(*(v12 + 16) + 32);
  *v7 = v31;
  v27(v7, v26, v4);
  v32 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  v29(v7, v4);
  if ((v31 & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v66 = _swiftEmptyArrayStorage;
  v64 = xmmword_1014B6250;
  while (1)
  {
    v34 = v69;
    v33 = v70;
    *v69 = 0;
    v34[1] = 0;
    *(v33 + 40) = 1;
    v35 = sqlite3_step(*(v12 + 24));
    if (v35 != 100)
    {
      break;
    }

    v36 = *(*(v12 + 16) + 32);
    *v7 = v36;
    v37 = v29;
    v38 = v27;
    v39 = v72;
    v38(v7, v72, v4);

    v40 = v36;
    LOBYTE(v36) = _dispatchPreconditionTest(_:)();
    v37(v7, v4);
    if ((v36 & 1) == 0)
    {
      goto LABEL_38;
    }

    v41 = *(*(v12 + 16) + 32);
    *v7 = v41;
    v38(v7, v39, v4);
    v42 = v41;
    LOBYTE(v41) = _dispatchPreconditionTest(_:)();
    v37(v7, v4);
    if ((v41 & 1) == 0)
    {
      goto LABEL_39;
    }

    v27 = v38;
    if (sqlite3_column_type(*(v12 + 24), 0) != 5 && (v43 = sqlite3_column_blob(*(v12 + 24), 0)) != 0)
    {
      v46 = v43;
      v47 = sqlite3_column_bytes(*(v12 + 24), 0);
      v29 = v71;
      if (v47)
      {
        v48 = v47;
        if (v47 <= 14)
        {
          memset(__dst, 0, sizeof(__dst));
          v74 = v47;
          memcpy(__dst, v46, v47);
          v68 = *__dst;
          v50 = v62 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v74 << 16)) << 32);
          v62 = v50;
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          if (v48 == 0x7FFFFFFF)
          {
            v49 = __DataStorage.init(bytes:length:)();
            type metadata accessor for Data.RangeReference();
            v68 = swift_allocObject();
            *(v68 + 16) = v64;
            v50 = v49 | 0x8000000000000000;
          }

          else
          {
            v51 = __DataStorage.init(bytes:length:)();
            v68 = v48 << 32;
            v50 = v51 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v68 = 0;
        v50 = 0xC000000000000000;
      }

      sub_100006370(0, &qword_101A1AEB0);
      sub_100006370(0, &unk_101A22DC0);
      v63 = v50;
      v52 = v67;
      v53 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v52)
      {

        v67 = 0;
        v54 = v63;
      }

      else
      {
        v54 = v63;
        v67 = 0;
        if (v53)
        {
          v57 = v53;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v66 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          sub_10002640C(v68, v63);

          v66 = v75;
          goto LABEL_24;
        }
      }

      sub_10002640C(v68, v54);

LABEL_24:
      v55 = *(*(v12 + 16) + 32);
      *v7 = v55;
      v27(v7, v72, v4);
      v56 = v55;
      LOBYTE(v55) = _dispatchPreconditionTest(_:)();
      v29(v7, v4);
      if ((v55 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {

      v44 = *(*(v12 + 16) + 32);
      *v7 = v44;
      v38(v7, v72, v4);
      v45 = v44;
      LOBYTE(v44) = _dispatchPreconditionTest(_:)();
      v29 = v71;
      v71(v7, v4);
      if ((v44 & 1) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  if (v35 && v35 != 101)
  {
    *v69 = v35;
    v58 = v65;
    *v65 = 0;
    v58[1] = 0;
  }

  v59 = *(*(v12 + 16) + 32);
  *v7 = v59;
  v27(v7, v72, v4);
  v60 = v59;
  LOBYTE(v59) = _dispatchPreconditionTest(_:)();
  v29(v7, v4);
  if ((v59 & 1) == 0)
  {
LABEL_42:
    __break(1u);
  }

  v61 = *(v12 + 24);
  if (v61)
  {
    sqlite3_finalize(v61);
    *(v12 + 24) = 0;
  }

  return v66;
}

char *sub_100E62CA8(void *a1)
{
  v83 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v4 + 104;
  v82 = *(v4 + 104);
  v82(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  if ((v7 & 1) == 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v84 = v11;
  v85 = 0;
  v81 = v8;
  v86 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v12._countAndFlagsBits = 0x454C455320202020;
  v12._object = 0xEB00000000205443;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x695F64726F636572;
  v13._object = 0xE900000000000064;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x20202020202CLL;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x745F64726F636572;
  v15._object = 0xEB00000000657079;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x4F52462020202020;
  v16._object = 0xEA0000000000204DLL;
  String.append(_:)(v16);
  v17._object = 0x80000001015A3110;
  v17._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x4548572020202020;
  v18._object = 0xEB00000000204552;
  String.append(_:)(v18);
  v19._object = 0x80000001015A3110;
  v19._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x64695F656E6F7ALL;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 1059077408;
  v22._object = 0xE400000000000000;
  String.append(_:)(v22);
  v23 = v85;
  v24 = v86;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v26 = sub_10001CC04(v25, v23, v24);

  if (v2)
  {
    return result;
  }

  v79 = 0;
  v28 = v83;
  v29 = [v83 zoneName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v85 = v30;
  v86 = v32;

  v33._countAndFlagsBits = 58;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);

  v34 = v86;
  v80 = v85;
  v35 = [v28 ownerName];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v85 = v80;
  v86 = v34;

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  sub_1000285F8(v85, v86, 1);

  v40 = *(*(v26 + 16) + 32);
  *v6 = v40;
  v41 = v81;
  v42 = v82;
  v82(v6, v81, v3);
  v43 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v84(v6, v3);
  if ((v40 & 1) == 0)
  {
    goto LABEL_37;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v45 = inited + 3;
  inited[4] = 0;
  v77 = inited + 4;
  inited[5] = 1;
  v83 = inited;
  inited[2] = v26;

  swift_beginAccess();
  v46 = *(*(v26 + 16) + 32);
  *v6 = v46;
  v42(v6, v41, v3);
  v47 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v84(v6, v3);
  if ((v46 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v80 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v45 = 0;
    v45[1] = 0;
    *(v83 + 5) = 1;
    v48 = sqlite3_step(*(v26 + 24));
    if (v48 != 100)
    {
      break;
    }

    v49 = *(*(v26 + 16) + 32);
    *v6 = v49;
    v42(v6, v41, v3);

    v50 = v49;
    LOBYTE(v49) = _dispatchPreconditionTest(_:)();
    v84(v6, v3);
    if ((v49 & 1) == 0)
    {
      goto LABEL_34;
    }

    if (sqlite3_column_type(*(v26 + 24), 0) == 5 || !sqlite3_column_text(*(v26 + 24), 0))
    {
    }

    else
    {
      v51 = String.init(cString:)();
      v52 = v42;
      v53 = v51;
      v54 = v41;
      v56 = v55;
      v57 = *(*(v26 + 16) + 32);
      *v6 = v57;
      v52(v6, v54, v3);
      v58 = v57;
      LOBYTE(v57) = _dispatchPreconditionTest(_:)();
      v84(v6, v3);
      if ((v57 & 1) == 0)
      {
        goto LABEL_35;
      }

      if (sqlite3_column_type(*(v26 + 24), 1) == 5 || !sqlite3_column_text(*(v26 + 24), 1))
      {

        v41 = v81;
        v42 = v82;
      }

      else
      {
        v78 = v9;
        v59 = String.init(cString:)();
        v61 = v60;
        v62 = sub_100EA3DBC(v53, v56);

        if (v62)
        {
          v76 = v61;
          v66 = v80;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_100B3853C(0, *(v66 + 2) + 1, 1, v66);
          }

          v67 = v66;
          v68 = *(v66 + 2);
          v80 = v67;
          v69 = *(v67 + 3);
          if (v68 >= v69 >> 1)
          {
            v80 = sub_100B3853C((v69 > 1), v68 + 1, 1, v80);
          }

          v70 = v80;
          *(v80 + 2) = v68 + 1;
          v71 = &v70[24 * v68];
          *(v71 + 4) = v62;
          *(v71 + 5) = v59;
          *(v71 + 6) = v76;
          v63 = *(*(v26 + 16) + 32);
          *v6 = v63;
          v41 = v81;
          v42 = v82;
          v9 = v78;
          v82(v6, v81, v3);
          goto LABEL_18;
        }

        v41 = v81;
        v42 = v82;
        v9 = v78;
      }
    }

    v63 = *(*(v26 + 16) + 32);
    *v6 = v63;
    v42(v6, v41, v3);
LABEL_18:
    v64 = v63;
    v65 = _dispatchPreconditionTest(_:)();
    v84(v6, v3);
    if ((v65 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if (v48 && v48 != 101)
  {
    *v45 = v48;
    v72 = v77;
    *v77 = 0;
    v72[1] = 0;
  }

  v73 = *(*(v26 + 16) + 32);
  *v6 = v73;
  v42(v6, v41, v3);
  v74 = v73;
  LOBYTE(v73) = _dispatchPreconditionTest(_:)();
  v84(v6, v3);
  if ((v73 & 1) == 0)
  {
LABEL_38:
    __break(1u);
  }

  v75 = *(v26 + 24);
  if (v75)
  {
    sqlite3_finalize(v75);
    *(v26 + 24) = 0;
  }

  return v80;
}

uint64_t sub_100E634C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue];
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v5 + 104);
  v133 = v5 + 104;
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v13 = *(v5 + 8);
  v12 = v5 + 8;
  v131 = v4;
  v132 = v13;
  v13(v7, v4);
  if ((v8 & 1) == 0)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v135 = a1;
  v129 = v10;
  v134 = v9;
  v137 = v12;
  v139 = 0;
  v140 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v139 = 0x454C455320202020;
  v140 = 0xEB00000000205443;
  v14._countAndFlagsBits = sub_100DCB764(0, 0xE000000000000000);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x4F52462020202020;
  v15._object = 0xEA0000000000204DLL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x635F656E6F7A6B63;
  v16._object = 0xEC00000065686361;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x4548572020202020;
  v17._object = 0xEB00000000204552;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x635F656E6F7A6B63;
  v18._object = 0xEC00000065686361;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 46;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x64695F656E6F7ALL;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 1059077408;
  v21._object = 0xE400000000000000;
  String.append(_:)(v21);
  v22 = v139;
  v23 = v140;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v25 = v136;
  v26 = sub_10001CC04(v24, v22, v23);
  v27 = v25;

  if (v25)
  {
    return v27;
  }

  v125 = 0;
  v28 = v135;
  v29 = [v135 zoneName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v139 = v30;
  v140 = v32;

  v33._countAndFlagsBits = 58;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);

  v34 = v139;
  v35 = v140;
  v36 = [v28 ownerName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v139 = v34;
  v140 = v35;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);

  sub_1000285F8(v139, v140, 1);

  v41 = *(*(v26 + 16) + 32);
  *v7 = v41;
  v42 = v134;
  v10 = v131;
  v12 = v133;
  v43 = v129;
  v129(v7, v134, v131);
  v44 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v4 = v26;
  v2 = v137;
  v132(v7, v10);
  if (v41)
  {
    type metadata accessor for SQLiteRowIterator();
    inited = swift_initStackObject();
    inited[3] = 0;
    v135 = inited + 3;
    v136 = inited;
    inited[4] = 0;
    v124 = inited + 4;
    inited[5] = 1;
    inited[2] = v4;

    swift_beginAccess();
    v46 = *(*(v4 + 16) + 32);
    *v7 = v46;
    v43(v7, v42, v10);
    v47 = v46;
    LOBYTE(v46) = _dispatchPreconditionTest(_:)();
    v2 = v132;
    v132(v7, v10);
    if (v46)
    {
      v128 = _swiftEmptyArrayStorage;
      v130 = v4;
      v126 = v7;
      do
      {
        v49 = v135;
        v48 = v136;
        *v135 = 0;
        v49[1] = 0;
        v48[5] = 1;
        v50 = sqlite3_step(*(v4 + 24));
        if (v50 != 100)
        {
          if (v50 && v50 != 101)
          {
            *v135 = v50;
            v88 = v124;
            *v124 = 0;
            v88[1] = 0;
          }

          v89 = *(v128 + 2);
          if (v89 < 2)
          {
            goto LABEL_39;
          }

          v135 = objc_opt_self();
          LODWORD(v4) = [v135 _atomicIncrementAssertCount];
          v138 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v138);
          StaticString.description.getter();
          v127 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v90 = String._bridgeToObjectiveC()();

          v91 = [v90 lastPathComponent];

          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v92;

          if (qword_1019F20A0 == -1)
          {
            goto LABEL_38;
          }

          goto LABEL_63;
        }

        v51 = *(*(v4 + 16) + 32);
        *v7 = v51;
        v43(v7, v42, v10);

        v52 = v51;
        LOBYTE(v51) = _dispatchPreconditionTest(_:)();
        v2(v7, v10);
        if ((v51 & 1) == 0)
        {
          goto LABEL_54;
        }

        if (sqlite3_column_type(*(v4 + 24), 0) == 5 || !sqlite3_column_text(*(v4 + 24), 0))
        {
        }

        else
        {
          v53 = String.init(cString:)();
          v55 = sub_100EA392C(v53, v54);

          if (v55)
          {
            v127 = v55;
            v56 = *(*(v4 + 16) + 32);
            *v7 = v56;
            v4 = v2;
            v2 = v43;
            v57 = v134;
            (v2)(v7, v134, v10);
            v58 = v56;
            LOBYTE(v56) = _dispatchPreconditionTest(_:)();
            (v4)(v7, v10);
            if ((v56 & 1) == 0)
            {
              goto LABEL_56;
            }

            v59 = *(*(v130 + 16) + 32);
            *v7 = v59;
            (v2)(v7, v57, v10);
            v60 = v59;
            LOBYTE(v59) = _dispatchPreconditionTest(_:)();
            (v4)(v7, v10);
            if ((v59 & 1) == 0)
            {
              goto LABEL_57;
            }

            v43 = v2;
            v4 = v130;
            if (sqlite3_column_type(*(v130 + 24), 1) == 5)
            {

              v2 = v132;
              v12 = v133;
LABEL_24:
              v42 = v134;
              v10 = v131;
              v7 = v126;
              goto LABEL_16;
            }

            v123 = sqlite3_column_int(*(v4 + 24), 1);
            v67 = *(*(v4 + 16) + 32);
            v7 = v126;
            *v126 = v67;
            v10 = v2;
            v68 = v134;
            v69 = v131;
            (v2)(v7, v134, v131);
            v70 = v67;
            v12 = _dispatchPreconditionTest(_:)();
            v2 = v132;
            v132(v7, v69);
            if ((v12 & 1) == 0)
            {
              goto LABEL_59;
            }

            v12 = *(*(v4 + 16) + 32);
            *v7 = v12;
            v10(v7, v68, v69);
            v71 = v12;
            v72 = _dispatchPreconditionTest(_:)();
            v2(v7, v69);
            if ((v72 & 1) == 0)
            {
              goto LABEL_60;
            }

            v43 = v10;
            if (sqlite3_column_type(*(v4 + 24), 2) == 5)
            {

              v12 = v133;
              goto LABEL_24;
            }

            v122 = sqlite3_column_int(*(v4 + 24), 2);
            v12 = *(*(v4 + 16) + 32);
            v7 = v126;
            *v126 = v12;
            v10 = v131;
            v43(v7, v134, v131);
            v73 = v12;
            v74 = _dispatchPreconditionTest(_:)();
            v2(v7, v10);
            v75 = v127;
            if ((v74 & 1) == 0)
            {
              goto LABEL_62;
            }

            v76 = sub_10001E378(3, v4);
            if ((v77 & 1) == 0)
            {
              v78 = v76;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v128 = sub_100B38E9C(0, *(v128 + 2) + 1, 1, v128);
              }

              v80 = *(v128 + 2);
              v79 = *(v128 + 3);
              v120 = v80 + 1;
              v121 = v80;
              v81 = v4;
              if (v80 >= v79 >> 1)
              {
                v128 = sub_100B38E9C((v79 > 1), v80 + 1, 1, v128);
              }

              v82 = v78 != 0;
              v83 = v122 != 0;
              v84 = v123 != 0;

              v85 = v128;
              v86 = v121;
              *(v128 + 2) = v120;
              v87 = &v85[3 * v86];
              v87[32] = v84;
              v4 = v81;
              v87[33] = v83;
              v87[34] = v82;
              v61 = *(*(v81 + 16) + 32);
              *v7 = v61;
              v62 = v7;
              v42 = v134;
              v63 = v134;
              v64 = v10;
              v12 = v133;
              goto LABEL_17;
            }

            v12 = v133;
            v42 = v134;
          }

          else
          {

            v42 = v134;
          }
        }

LABEL_16:
        v61 = *(*(v4 + 16) + 32);
        *v7 = v61;
        v62 = v7;
        v63 = v42;
        v64 = v10;
LABEL_17:
        v43(v62, v63, v64);
        v65 = v61;
        v66 = _dispatchPreconditionTest(_:)();
        v2(v7, v10);
      }

      while ((v66 & 1) != 0);
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  do
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
LABEL_38:
    v132 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v93 = swift_initStackObject();
    *(v93 + 16) = xmmword_10146CA70;
    *(v93 + 56) = &type metadata for Int32;
    *(v93 + 64) = &protocol witness table for Int32;
    *(v93 + 32) = v4;
    v131 = (v93 + 32);
    v94 = sub_100006370(0, &qword_1019F4D30);
    *(v93 + 96) = v94;
    v95 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v93 + 104) = v95;
    v96 = v127;
    *(v93 + 72) = v127;
    *(v93 + 136) = &type metadata for String;
    v97 = sub_1000053B0();
    v98 = v124;
    *(v93 + 112) = v12;
    *(v93 + 120) = v98;
    *(v93 + 176) = &type metadata for UInt;
    *(v93 + 184) = &protocol witness table for UInt;
    *(v93 + 144) = v97;
    *(v93 + 152) = 12585;
    v99 = v138;
    *(v93 + 216) = v94;
    *(v93 + 224) = v95;
    *(v93 + 192) = v99;
    v100 = v96;
    v101 = v99;
    v102 = static os_log_type_t.error.getter();
    v103 = v132;
    sub_100005404(v132, &_mh_execute_header, v102, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v93);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v104 = static os_log_type_t.error.getter();
    sub_100005404(v103, &_mh_execute_header, v104, "read more than 1 cached ck zone changes for a zone", 50, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v105 = swift_allocObject();
    v105[2] = 8;
    v105[3] = 0;
    v105[4] = 0;
    v105[5] = 0;
    v132 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v106 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v107 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v108 = String._bridgeToObjectiveC()();

    [v135 handleFailureInFunction:v106 file:v107 lineNumber:12585 isFatal:0 format:v108 args:v132];

    v43 = v129;
    v89 = *(v128 + 2);
    v42 = v134;
    v4 = v130;
LABEL_39:
    if (v89)
    {
      v109 = v128[32];
      v110 = v128[33];
      v111 = v128[34];

      if (v110)
      {
        v112 = 256;
      }

      else
      {
        v112 = 0;
      }

      v113 = v112 | v109;
      v114 = v111 == 0;
      v42 = v134;
      if (v114)
      {
        v115 = 0;
      }

      else
      {
        v115 = 0x10000;
      }

      v27 = v113 | v115;
    }

    else
    {

      v27 = 2;
    }

    v116 = *(*(v4 + 16) + 32);
    *v7 = v116;
    v43(v7, v42, v10);
    v117 = v116;
    v12 = _dispatchPreconditionTest(_:)();
    v2(v7, v10);
  }

  while ((v12 & 1) == 0);
  v118 = *(v4 + 24);
  if (v118)
  {
    sqlite3_finalize(v118);
    *(v4 + 24) = 0;
  }

  return v27;
}

void *sub_100E642BC()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v34 = *(v3 + 104);
  v34(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if ((v6 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = v9;
  v38 = _swiftEmptySetSingleton;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = sub_10001CC04(v10, 0xD000000000000033, 0x80000001015A7D50);
  v12 = v1;

  if (v1)
  {
    return v12;
  }

  v33[1] = 0;
  v13 = *(*(v11 + 16) + 32);
  *v5 = v13;
  v14 = v34;
  v34(v5, v7, v2);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v36(v5, v2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_26;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v17 = inited + 3;
  inited[4] = 0;
  v33[0] = inited + 4;
  inited[5] = 1;
  v35 = inited;
  inited[2] = v11;

  swift_beginAccess();
  while (1)
  {
    v18 = *(*(v11 + 16) + 32);
    *v5 = v18;
    v14(v5, v7, v2);
    v19 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if ((v18 & 1) == 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    *v17 = 0;
    v17[1] = 0;
    v35[5] = 1;
    v20 = sqlite3_step(*(v11 + 24));
    if (v20 != 100)
    {
      break;
    }

    v21 = *(*(v11 + 16) + 32);
    *v5 = v21;
    v14(v5, v7, v2);

    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (sqlite3_column_type(*(v11 + 24), 0) == 5 || !sqlite3_column_text(*(v11 + 24), 0))
    {
    }

    else
    {
      v23 = String.init(cString:)();
      v25 = sub_100EA392C(v23, v24);

      if (v25)
      {
        v26 = v25;
        sub_100E7227C(&v37, v26, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
      }

      else
      {
      }

      v14 = v34;
    }
  }

  if (v20 && v20 != 101)
  {
    *v17 = v20;
    v27 = v33[0];
    *v33[0] = 0;
    *(v27 + 8) = 0;
  }

  v12 = v38;
  v28 = *(*(v11 + 16) + 32);
  *v5 = v28;
  v14(v5, v7, v2);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v36(v5, v2);
  if ((v30 & 1) == 0)
  {
LABEL_27:
    __break(1u);
  }

  v31 = *(v11 + 24);
  if (v31)
  {
    sqlite3_finalize(v31);
    *(v11 + 24) = 0;
  }

  return v12;
}

void *sub_100E64754()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v34 = *(v3 + 104);
  v34(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if ((v6 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = v9;
  v38 = _swiftEmptySetSingleton;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = sub_10001CC04(v10, 0xD00000000000003ALL, 0x80000001015A7D10);
  v12 = v1;

  if (v1)
  {
    return v12;
  }

  v33[1] = 0;
  v13 = *(*(v11 + 16) + 32);
  *v5 = v13;
  v14 = v34;
  v34(v5, v7, v2);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v36(v5, v2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_26;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v17 = inited + 3;
  inited[4] = 0;
  v33[0] = inited + 4;
  inited[5] = 1;
  v35 = inited;
  inited[2] = v11;

  swift_beginAccess();
  while (1)
  {
    v18 = *(*(v11 + 16) + 32);
    *v5 = v18;
    v14(v5, v7, v2);
    v19 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if ((v18 & 1) == 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    *v17 = 0;
    v17[1] = 0;
    v35[5] = 1;
    v20 = sqlite3_step(*(v11 + 24));
    if (v20 != 100)
    {
      break;
    }

    v21 = *(*(v11 + 16) + 32);
    *v5 = v21;
    v14(v5, v7, v2);

    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (sqlite3_column_type(*(v11 + 24), 0) == 5 || !sqlite3_column_text(*(v11 + 24), 0))
    {
    }

    else
    {
      v23 = String.init(cString:)();
      v25 = sub_100EA392C(v23, v24);

      if (v25)
      {
        v26 = v25;
        sub_100E7227C(&v37, v26, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
      }

      else
      {
      }

      v14 = v34;
    }
  }

  if (v20 && v20 != 101)
  {
    *v17 = v20;
    v27 = v33[0];
    *v33[0] = 0;
    *(v27 + 8) = 0;
  }

  v12 = v38;
  v28 = *(*(v11 + 16) + 32);
  *v5 = v28;
  v14(v5, v7, v2);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v36(v5, v2);
  if ((v30 & 1) == 0)
  {
LABEL_27:
    __break(1u);
  }

  v31 = *(v11 + 24);
  if (v31)
  {
    sqlite3_finalize(v31);
    *(v11 + 24) = 0;
  }

  return v12;
}

uint64_t sub_100E64BEC(void *a1)
{
  v53 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v54 = enum case for DispatchPredicate.onQueue(_:);
  v55 = v8;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v52 = v3;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v12 = sub_10001CC04(v11, 0xD000000000000043, 0x80000001015A5F60);

  if (v2)
  {
    return result;
  }

  v48 = 0;
  v49 = v12;
  v14 = v53;
  v15 = [v53 zoneName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v10;
  v51 = v4 + 104;
  v18 = v17;

  v56 = v16;
  v57 = v18;

  v19._countAndFlagsBits = 58;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  v20 = v56;
  v21 = v57;
  v22 = v14;
  v23 = v49;
  v24 = [v22 ownerName];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v56 = v20;
  v57 = v21;

  v28._countAndFlagsBits = v25;
  v29 = v50;
  v28._object = v27;
  String.append(_:)(v28);

  sub_1000285F8(v56, v57, 1);

  v30 = *(*(v23 + 16) + 32);
  *v6 = v30;
  v31 = v52;
  v55(v6, v54, v52);
  v32 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v29(v6, v31);
  if ((v30 & 1) == 0)
  {
    goto LABEL_13;
  }

  v33 = *(v23 + 16);

  v34 = sub_10001CEC4(v33, v23);

  if (v34 != 101)
  {
    goto LABEL_7;
  }

  v35 = *(*(v23 + 16) + 32);
  *v6 = v35;
  v55(v6, v54, v31);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v29(v6, v31);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    v56 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v56 = 0xD000000000000030;
    v57 = 0x80000001015A5FB0;
    v37 = [v53 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42 = v56;
    v43 = v57;
    sub_10089C7D0();
    swift_allocError();
    *v44 = v34;
    *(v44 + 8) = v42;
    *(v44 + 16) = v43;
    swift_willThrow();
    v45 = *(*(v23 + 16) + 32);
    *v6 = v45;
    v55(v6, v54, v31);
    v46 = v45;
    LOBYTE(v45) = _dispatchPreconditionTest(_:)();
    v29(v6, v31);
    if (v45)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v47 = *(v23 + 24);
  if (v47)
  {
    sqlite3_finalize(v47);
    *(v23 + 24) = 0;
  }
}

uint64_t sub_100E650A8(void *a1)
{
  v49 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v50 = enum case for DispatchPredicate.onQueue(_:);
  v51 = v8;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v48 = v4 + 104;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v12 = sub_10001CC04(v11, 0xD000000000000051, 0x80000001015A5EC0);

  if (v2)
  {
    return result;
  }

  v46 = 0;
  v14 = v49;
  v15 = [v49 zoneName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v10;
  v18 = v17;

  v52 = v16;
  v53 = v18;

  v19._countAndFlagsBits = 58;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  v20 = v52;
  v21 = v53;
  v22 = [v14 ownerName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v52 = v20;
  v53 = v21;

  v26._countAndFlagsBits = v23;
  v27 = v47;
  v26._object = v25;
  String.append(_:)(v26);

  sub_1000285F8(v52, v53, 1);

  v28 = *(*(v12 + 16) + 32);
  *v6 = v28;
  v51(v6, v50, v3);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v27(v6, v3);
  if ((v28 & 1) == 0)
  {
    goto LABEL_13;
  }

  v30 = *(v12 + 16);

  v31 = sub_10001CEC4(v30, v12);

  if (v31 != 101)
  {
    goto LABEL_7;
  }

  v32 = *(*(v12 + 16) + 32);
  *v6 = v32;
  v51(v6, v50, v3);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v27(v6, v3);
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v34._object = 0x80000001015A5F20;
    v34._countAndFlagsBits = 0xD000000000000037;
    String.append(_:)(v34);
    v35 = [v49 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v40 = v52;
    v41 = v53;
    sub_10089C7D0();
    swift_allocError();
    *v42 = v31;
    *(v42 + 8) = v40;
    *(v42 + 16) = v41;
    swift_willThrow();
    v43 = *(*(v12 + 16) + 32);
    *v6 = v43;
    v51(v6, v50, v3);
    v44 = v43;
    LOBYTE(v43) = _dispatchPreconditionTest(_:)();
    v47(v6, v3);
    if (v43)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v45 = *(v12 + 24);
  if (v45)
  {
    sqlite3_finalize(v45);
    *(v12 + 24) = 0;
  }
}

uint64_t sub_100E65560(uint64_t a1)
{
  v3 = v1;
  v109 = a1;
  v4 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v4 - 8);
  v107 = &v103 - v5;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v10 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v7 + 104);
  v111 = v7 + 104;
  v13(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v14 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v17 = *(v7 + 8);
  v16 = v7 + 8;
  v15 = v17;
  v17(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v112 = v12;
  v110 = v13;
  v118 = 0;
  v119 = 0xE000000000000000;
  _StringGuts.grow(_:)(98);
  v18._object = 0x80000001015A40C0;
  v18._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x737265646C6F66;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10272;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x696669746E656469;
  v21._object = 0xEA00000000007265;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 1635017060;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x5F65726168736B63;
  v25._object = 0xEC00000061746164;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000011;
  v27._object = 0x80000001015A3BE0;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 8236;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD000000000000014;
  v29._object = 0x80000001015A3590;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 8236;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD00000000000002DLL;
  v31._object = 0x80000001015A3760;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000026;
  v33._object = 0x80000001015A33F0;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 8236;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x656C746974;
  v35._object = 0xE500000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 8236;
  v36._object = 0xE200000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000012;
  v37._object = 0x80000001015A3810;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000025;
  v38._object = 0x80000001015AB7A0;
  String.append(_:)(v38);
  v39 = v118;
  v40 = v119;
  v41 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v43 = sub_10001CC04(v42, v39, v40);
  if (v2)
  {
  }

  v44 = v43;
  v108 = v15;

  v45 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v48 = sub_10084DAE4();
  v50 = v49;
  v103 = v45;
  v51 = *(*(v44 + 16) + 32);
  *v10 = v51;
  v110(v10, v112, v6);
  v52 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  v108(v10, v6);
  v106 = v16;
  if ((v51 & 1) == 0)
  {
    goto LABEL_29;
  }

  v53 = v6;

  sub_100DCCAB4(v48, v50, v44, 1);
  v105 = 0;
  sub_10002640C(v48, v50);
  v54 = type metadata accessor for CRLFolderDatabaseRow();
  v56 = v109;
  v55 = v110;
  v57 = (v109 + v54[5]);
  v58 = *v57;
  v59 = v57[1];
  v60 = *(*(v44 + 16) + 32);
  *v10 = v60;
  v55(v10, v112, v53);
  v61 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  v104 = v53;
  v108(v10, v53);
  if ((v60 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v62 = v105;
  sub_100DCCAB4(v58, v59, v44, 2);
  sub_10089BB64(*(v56 + v54[6]), *(v56 + v54[6] + 8), 3);
  v105 = v54;
  v63 = v107;
  sub_10000BE14(v56 + v54[7], v107, &qword_1019F33E0);
  v64 = type metadata accessor for CRLFolderIdentifier(0);
  if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
  {
    sub_10000CAAC(v63, &qword_1019F33E0);
    v65 = 0;
    v66 = 0xF000000000000000;
    goto LABEL_15;
  }

  v67 = sub_10084DAE4();
  if (!v62)
  {
LABEL_14:
    v65 = v67;
    v66 = v68;
    sub_100026028(v63, type metadata accessor for CRLFolderIdentifier);
LABEL_15:
    sub_10089BB64(v65, v66, 4);
    sub_100025870(v65, v66);
    v72 = v105;
    v73 = v109;
    v74 = (v109 + v105[8]);
    sub_100034254(*v74, 5);
    sub_100034254(v74[2], 6);
    sub_100034254(v74[1], 7);
    sub_1000285F8(*(v73 + v72[9]), *(v73 + v72[9] + 8), 8);
    v75 = *(v73 + v72[10]);
    v76 = *(*(v44 + 16) + 32);
    *v10 = v76;
    v77 = v104;
    v78 = v110;
    v110(v10, v112, v104);
    v79 = v76;
    LOBYTE(v76) = _dispatchPreconditionTest(_:)();
    v108(v10, v77);
    if (v76)
    {
      swift_beginAccess();
      sqlite3_bind_double(*(v44 + 24), 9, v75);
      v80 = *(*(v44 + 16) + 32);
      *v10 = v80;
      v78(v10, v112, v77);
      v81 = v80;
      LOBYTE(v80) = _dispatchPreconditionTest(_:)();
      v108(v10, v77);
      if (v80)
      {
        v82 = *(v44 + 16);

        v83 = sub_10001CEC4(v82, v44);

        if (v83 == 101)
        {
          v84 = *(*(v44 + 16) + 32);
          *v10 = v84;
          v110(v10, v112, v77);
          v85 = v84;
          LOBYTE(v84) = _dispatchPreconditionTest(_:)();
          v108(v10, v77);
          if (v84)
          {
            v46 = *(v44 + 24);
            if (!v46)
            {
            }

            goto LABEL_5;
          }

          goto LABEL_33;
        }

        v115 = 0xD000000000000017;
        v116 = 0x80000001015AB7D0;
        if (sqlite3_errstr(v83))
        {
          v86._countAndFlagsBits = String.init(cString:)();
          v117._countAndFlagsBits = 8250;
          v117._object = 0xE200000000000000;
          String.append(_:)(v86);

          String.append(_:)(v117);

          v87 = *(v41 + 32);
          *v10 = v87;
          v110(v10, v112, v77);
          v88 = v87;
          LOBYTE(v87) = _dispatchPreconditionTest(_:)();
          v108(v10, v77);
          if ((v87 & 1) == 0)
          {
            goto LABEL_35;
          }

          swift_beginAccess();
          v89 = sqlite3_extended_errcode(*(v41 + 16));
          if (sqlite3_errstr(v89))
          {
            v114._countAndFlagsBits = 11552;
            v114._object = 0xE200000000000000;
            v113 = v89;
            v90._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v90);

            v91._countAndFlagsBits = 8237;
            v91._object = 0xE200000000000000;
            String.append(_:)(v91);
            countAndFlagsBits = v114._countAndFlagsBits;
            object = v114._object;
            v94 = String.init(cString:)();
            v96 = v95;
            v114._countAndFlagsBits = countAndFlagsBits;
            v114._object = object;

            v97._countAndFlagsBits = v94;
            v97._object = v96;
            String.append(_:)(v97);

            String.append(_:)(v114);
          }
        }

        v98 = v115;
        v99 = v116;
        sub_10089C7D0();
        swift_allocError();
        *v100 = v83;
        *(v100 + 8) = v98;
        *(v100 + 16) = v99;
        swift_willThrow();
        v101 = *(*(v44 + 16) + 32);
        *v10 = v101;
        v110(v10, v112, v77);
        v102 = v101;
        LOBYTE(v101) = _dispatchPreconditionTest(_:)();
        v108(v10, v77);
        if ((v101 & 1) == 0)
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

        v46 = *(v44 + 24);
        if (!v46)
        {
        }

LABEL_5:
        sqlite3_finalize(v46);
        *(v44 + 24) = 0;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_100026028(v63, type metadata accessor for CRLFolderIdentifier);
  v69 = *(*(v44 + 16) + 32);
  *v10 = v69;
  v70 = v104;
  v110(v10, v112, v104);
  v71 = v69;
  v63 = _dispatchPreconditionTest(_:)();
  v67 = (v108)(v10, v70);
  if ((v63 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  v46 = *(v44 + 24);
  if (v46)
  {
    goto LABEL_5;
  }
}

uint64_t sub_100E660CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v57 = enum case for DispatchPredicate.onQueue(_:);
  v58 = v11;
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v55 = v13;
  v54 = a2;
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v59 = 0x205443454C4553;
  v60 = 0xE700000000000000;
  v14._countAndFlagsBits = sub_100DCB998(0, 0xE000000000000000);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x204D4F524620;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x737265646C6F66;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x2820455245485720;
  v17._object = 0xE800000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x696669746E656469;
  v18._object = 0xEA00000000007265;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x293F203D20;
  v19._object = 0xE500000000000000;
  String.append(_:)(v19);
  v20 = v59;
  v21 = v60;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);
  if (v3)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v26 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = v29;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v28;
      *(inited + 40) = v30;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v31, "Failed to fetch a folder row with error %@", 42, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return swift_willThrow();
    }

LABEL_18:
    swift_once();
    goto LABEL_5;
  }

  v24 = v23;

  type metadata accessor for CRLFolderIdentifierStorage(0);
  v25 = sub_10084DAE4();
  v56 = v33;
  v34 = v25;
  v35 = *(*(v24 + 16) + 32);
  *v9 = v35;
  v58(v9, v57, v5);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v37 = v55;
  v55(v9, v5);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v38 = v34;
  v39 = v34;
  v40 = v56;
  sub_100DCCAB4(v39, v56, v24, 1);
  sub_10002640C(v38, v40);
  v41 = *(*(v24 + 16) + 32);
  *v9 = v41;
  v58(v9, v57, v5);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v37(v9, v5);
  if ((v41 & 1) == 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v43 = swift_initStackObject();
  v43[4] = 0;
  v43[5] = 1;
  v43[2] = v24;
  v43[3] = 0;

  v44 = sub_10001E1D0();
  v45 = v54;
  if (v44)
  {
    sub_100A68440(v44, 0, v54);

    swift_setDeallocating();
    sub_10001E364(v43[3], v43[4], v43[5]);
    v46 = *(*(v24 + 16) + 32);
    *v9 = v46;
    v58(v9, v57, v5);
    v47 = v46;
    LOBYTE(v46) = _dispatchPreconditionTest(_:)();
    v37(v9, v5);
    if (v46)
    {
      swift_beginAccess();
      v48 = *(v24 + 24);
      if (v48)
      {
        sqlite3_finalize(v48);
        *(v24 + 24) = 0;
      }
    }

    goto LABEL_21;
  }

  swift_setDeallocating();
  sub_10001E364(v43[3], v43[4], v43[5]);
  v49 = *(*(v24 + 16) + 32);
  *v9 = v49;
  v58(v9, v57, v5);
  v50 = v49;
  LOBYTE(v49) = _dispatchPreconditionTest(_:)();
  v37(v9, v5);
  if ((v49 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v51 = *(v24 + 24);
  if (v51)
  {
    sqlite3_finalize(v51);
    *(v24 + 24) = 0;
  }

  v52 = type metadata accessor for CRLFolderDatabaseRow();
  return (*(*(v52 - 8) + 56))(v45, 1, 1, v52);
}

uint64_t sub_100E6680C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E6695C(a3, sub_100EA635C, v11);
}

uint64_t sub_100E6695C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLFolder();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(a1, v16, type metadata accessor for CRLFolder);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  sub_100025668(v16, v19 + v17, type metadata accessor for CRLFolder);
  v20 = (v19 + v18);
  *v20 = a2;
  v20[1] = a3;
  aBlock[4] = sub_100EA53F0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A66D0;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_100E66D14(uint64_t a1, unint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = type metadata accessor for CRLFolder();
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLFolderDatabaseRow();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_101A21CB8);
  __chkstk_darwin(v15 - 8);
  v17 = &v47 - v16;
  sub_100E660CC(a2, &v47 - v16);
  v57 = 0;
  v58 = a2;
  v20 = *(v12 + 48);
  v19 = v12 + 48;
  v18 = v20;
  if (v20(v17, 1, v11) != 1)
  {
    v48 = v11;
    v49 = v19;
    v50 = v10;
    v52 = v18;
    v53 = v14;
    v54 = a1;
    v55 = a4;
    v56 = a3;
    v51 = objc_opt_self();
    v21 = [v51 _atomicIncrementAssertCount];
    v59 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v59);
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v21;
    v30 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v30;
    v31 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v31;
    *(inited + 72) = v22;
    *(inited + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 112) = v25;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v32;
    *(inited + 152) = 12940;
    v33 = v59;
    *(inited + 216) = v30;
    *(inited + 224) = v31;
    *(inited + 192) = v33;
    v34 = v22;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v37, "Attempting to persist a new folder when an existing folder with the same id already exists", 90, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    [v51 handleFailureInFunction:v40 file:v41 lineNumber:12940 isFatal:0 format:v42 args:v39];

    a3 = v56;
    a1 = v54;
    v14 = v53;
    v18 = v52;
    v10 = v50;
    v11 = v48;
  }

  if (v18(v17, 1, v11) == 1)
  {
    sub_10000C83C(v58, v10, type metadata accessor for CRLFolder);
    v43 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
    v44 = v57;
    sub_100A69064(v10, v43, v14);
    if (!v44)
    {
      sub_100E65560(v14);
      a3(0, 0);
      sub_100026028(v14, type metadata accessor for CRLFolderDatabaseRow);
      return sub_10000CAAC(v17, &qword_101A21CB8);
    }
  }

  else
  {
    sub_100EA541C();
    v45 = swift_allocError();
    swift_willThrow();
    v44 = v45;
  }

  sub_10000CAAC(v17, &qword_101A21CB8);
  swift_errorRetain();
  a3(v44, 1);
}

uint64_t sub_100E67418(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A21CA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_10001E534(sub_100EA1E7C, v7, &OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue, &unk_1018A4D68, sub_100EA1F20, &unk_1018A4D80);
}

uint64_t sub_100E6758C(uint64_t a1, char a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1005B981C(a4);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_1005B981C(a4);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100E6760C(uint64_t a1, void (*a2)(void *, void), uint64_t a3)
{
  v61[1] = a3;
  v62 = a2;
  v3 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v3 - 8);
  v74 = v61 - v4;
  v66 = type metadata accessor for CRLFolderIdentifier(0);
  v84 = *(v66 - 8);
  __chkstk_darwin(v66);
  v83 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for CRLFolderCRDTData();
  v6 = __chkstk_darwin(v81);
  v73 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v80 = v61 - v9;
  __chkstk_darwin(v8);
  v11 = v61 - v10;
  v12 = sub_1005B981C(&qword_101A21CB0);
  __chkstk_darwin(v12 - 8);
  v14 = v61 - v13;
  v15 = type metadata accessor for CRLFolder();
  v69 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CRLFolderDatabaseRow();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v61 - v23;
  v25 = sub_100E68050();
  v26 = v62;
  v85 = v24;
  v82 = v18;
  v67 = v17;
  v79 = v15;
  v65 = v11;
  v27 = v25[2];
  if (v27)
  {
    v28 = v19;
    v29 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v61[0] = v25;
    v30 = v25 + v29;
    v77 = (v69 + 56);
    v76 = *(v28 + 72);
    v63 = (v84 + 7);
    v75 = (v69 + 48);
    v84 = _swiftEmptyArrayStorage;
    v68 = xmmword_10146C6B0;
    v31 = v83;
    v32 = v80;
    v33 = v85;
    v64 = v22;
    v78 = v14;
    do
    {
      sub_10000C83C(v30, v33, type metadata accessor for CRLFolderDatabaseRow);
      sub_10000C83C(v33, v22, type metadata accessor for CRLFolderDatabaseRow);
      v34 = v22;
      v35 = v82;
      sub_100024E98(*(v34 + v82[5]), *(v34 + v82[5] + 8));
      sub_1000066D0(&qword_1019F4968, type metadata accessor for CRLFolderCRDTData);
      CRDT.init(serializedData:)();
      v36 = v65;
      sub_100025668(v32, v65, type metadata accessor for CRLFolderCRDTData);
      sub_10000C83C(v34, v31, type metadata accessor for CRLFolderIdentifier);
      sub_10000C83C(v36, v73, type metadata accessor for CRLFolderCRDTData);
      sub_10000BE14(v34 + v35[7], v74, &qword_1019F33E0);
      v37 = (v34 + v35[6]);
      v38 = v37[1];
      if (v38 >> 60 == 15)
      {
        v72 = 0;
        v39 = v78;
      }

      else
      {
        v40 = *v37;
        sub_100006370(0, &qword_101A1AEB0);
        sub_100006370(0, &qword_1019F52C0);
        sub_100024E98(v40, v38);
        v41 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        v39 = v78;
        v72 = v41;
        sub_100025870(v40, v38);
        v35 = v82;
      }

      sub_100026028(v36, type metadata accessor for CRLFolderCRDTData);
      v42 = v35[8];
      v22 = v64;
      v43 = &v64[v42];
      v44 = v43[32];
      v45 = v79;
      v46 = v79[5];
      v47 = *v63;
      v48 = *v43;
      v71 = *(v43 + 1);
      v70 = v48;
      v47(v39 + v46, 1, 1, v66);
      v49 = v45[6];
      *(v39 + v49) = 0;
      sub_100025668(v83, v39, type metadata accessor for CRLFolderIdentifier);
      sub_100025668(v73, v39 + v45[7], type metadata accessor for CRLFolderCRDTData);
      sub_10002C638(v74, v39 + v46, &qword_1019F33E0);
      *(v39 + v49) = v72;
      v50 = v39 + v45[8];
      v51 = v71;
      *v50 = v70;
      *(v50 + 16) = v51;
      *(v50 + 32) = v44;
      sub_100026028(v22, type metadata accessor for CRLFolderDatabaseRow);
      (*v77)(v39, 0, 1, v45);
      v33 = v85;
      sub_100026028(v85, type metadata accessor for CRLFolderDatabaseRow);
      if ((*v75)(v39, 1, v45) == 1)
      {
        sub_10000CAAC(v39, &qword_101A21CB0);
        v31 = v83;
        v32 = v80;
      }

      else
      {
        v52 = v67;
        sub_100025668(v39, v67, type metadata accessor for CRLFolder);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v80;
        if (isUniquelyReferenced_nonNull_native)
        {
          v54 = v84;
        }

        else
        {
          v54 = sub_100B37428(0, v84[2] + 1, 1, v84);
        }

        v56 = v54[2];
        v55 = v54[3];
        v57 = v69;
        if (v56 >= v55 >> 1)
        {
          v59 = sub_100B37428(v55 > 1, v56 + 1, 1, v54);
          v57 = v69;
          v54 = v59;
        }

        v54[2] = v56 + 1;
        v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v84 = v54;
        sub_100025668(v52, v54 + v58 + *(v57 + 72) * v56, type metadata accessor for CRLFolder);
        v31 = v83;
        v33 = v85;
      }

      v30 += v76;
      --v27;
    }

    while (v27);

    v62(v84, 0);
  }

  else
  {

    v26(_swiftEmptyArrayStorage, 0);
  }
}

void *sub_100E68050()
{
  v2 = sub_1005B981C(&qword_101A21CB8);
  __chkstk_darwin(v2 - 8);
  v4 = &v58 - v3;
  v65 = type metadata accessor for CRLFolderDatabaseRow();
  v5 = *(v65 - 8);
  v6 = __chkstk_darwin(v65);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v58 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v12 = v13;
  v14 = *(v10 + 104);
  v67 = enum case for DispatchPredicate.onQueue(_:);
  v66 = v14;
  v14(v12);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v69 = *(v10 + 8);
  v69(v12, v9);
  if ((v13 & 1) == 0)
  {
    goto LABEL_28;
  }

  v68 = v10 + 104;
  v70 = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v70 = 0x205443454C4553;
  v71 = 0xE700000000000000;
  v16._countAndFlagsBits = sub_100DCB998(0, 0xE000000000000000);
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x204D4F524620;
  v17._object = 0xE600000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x737265646C6F66;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19 = v70;
  v20 = v71;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = sub_10001CC04(v21, v19, v20);
  v64 = v1;
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v23 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = v26;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v25;
      *(inited + 40) = v27;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v28, "Failed to fetch all folder rows with error %@", 45, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return swift_willThrow();
    }

LABEL_29:
    swift_once();
    goto LABEL_4;
  }

  v30 = v22;

  v31 = *(*(v30 + 16) + 32);
  *v12 = v31;
  v32 = v67;
  v33 = v66;
  v66(v12, v67, v9);
  v34 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  v69(v12, v9);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v60 = v5;
  type metadata accessor for SQLiteRowIterator();
  v35 = swift_initStackObject();
  v35[3] = 0;
  v36 = v35 + 3;
  v35[4] = 0;
  v59 = v35 + 4;
  v35[5] = 1;
  v35[2] = v30;

  swift_beginAccess();
  v37 = v32;
  v38 = *(*(v30 + 16) + 32);
  *v12 = v38;
  v33(v12, v37, v9);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v69(v12, v9);
  if ((v38 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v40 = (v60 + 48);
  v61 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v36 = 0;
    v35[4] = 0;
    v35[5] = 1;
    v41 = sqlite3_step(*(v30 + 24));
    if (v41 != 100)
    {
      break;
    }

    v42 = swift_retain_n();
    sub_100A68440(v42, 0, v4);
    if ((*v40)(v4, 1, v65) == 1)
    {
      sub_10000CAAC(v4, &qword_101A21CB8);
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v43 = static OS_os_log.boardStore;
      v44 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v44, "Failed to convert a raw db row into a folder row", 48, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v47 = v62;
      sub_100025668(v4, v62, type metadata accessor for CRLFolderDatabaseRow);
      sub_10000C83C(v47, v63, type metadata accessor for CRLFolderDatabaseRow);
      v48 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_100B38FA0(0, v48[2] + 1, 1, v48);
      }

      v49 = v48;
      v50 = v48[2];
      v61 = v49;
      v51 = v49[3];
      v58 = v50 + 1;
      if (v50 >= v51 >> 1)
      {
        v61 = sub_100B38FA0(v51 > 1, v50 + 1, 1, v61);
      }

      sub_100026028(v62, type metadata accessor for CRLFolderDatabaseRow);
      v52 = v61;
      v61[2] = v58;
      sub_100025668(v63, v52 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v50, type metadata accessor for CRLFolderDatabaseRow);
    }

    v45 = *(*(v30 + 16) + 32);
    *v12 = v45;
    v66(v12, v67, v9);
    v46 = v45;
    LOBYTE(v45) = _dispatchPreconditionTest(_:)();
    v69(v12, v9);
    if ((v45 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v53 = v66;
  if (v41 && v41 != 101)
  {
    *v36 = v41;
    v54 = v59;
    *v59 = 0;
    v54[1] = 0;
  }

  v55 = *(*(v30 + 16) + 32);
  *v12 = v55;
  v53(v12, v67, v9);
  v56 = v55;
  LOBYTE(v55) = _dispatchPreconditionTest(_:)();
  v69(v12, v9);
  if ((v55 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v57 = *(v30 + 24);
  if (v57)
  {
    sqlite3_finalize(v57);
    *(v30 + 24) = 0;
  }

  return v61;
}

uint64_t sub_100E68974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E68B38(a3, sub_100EA56E0, v11);
}

uint64_t sub_100E68AC4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1005B981C(&unk_101A050F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1005B981C(&unk_101A050F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100E68B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLFolder();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(a1, v16, type metadata accessor for CRLFolder);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  sub_100025668(v16, v19 + v17, type metadata accessor for CRLFolder);
  v20 = (v19 + v18);
  *v20 = a2;
  v20[1] = a3;
  aBlock[4] = sub_100EA59FC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6A40;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_100E68EF0(uint64_t a1, unint64_t a2, void (*a3)(void, void))
{
  v5 = sub_1005B981C(&qword_101A21CB8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  sub_100E660CC(a2, &v35 - v6);
  v8 = type metadata accessor for CRLFolderDatabaseRow();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    v10 = objc_opt_self();
    v11 = [v10 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
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
    v20 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v20;
    v21 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 13050;
    v23 = v36;
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "Attempting to update a folder when it does not already exist, in practice this will create a new folder entry", 109, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to update a folder when it does not already exist, in practice this will create a new folder entry");
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

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v10 handleFailureInFunction:v30 file:v31 lineNumber:13050 isFatal:1 format:v32 args:v29];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v33, v34);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    sub_100E69414(a2, 0);
    a3(0, 0);
    return sub_10000CAAC(v7, &qword_101A21CB8);
  }

  return result;
}

uint64_t sub_100E69414(unint64_t a1, int a2)
{
  v50 = a2;
  v4 = sub_1005B981C(&qword_101A21CB0);
  __chkstk_darwin(v4 - 8);
  v51 = &v45 - v5;
  v6 = sub_1005B981C(&qword_101A21CB8);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v9 = type metadata accessor for CRLFolderDatabaseRow();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v45 - v12;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for CRLFolder();
  v52 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  v25 = v8;
  v26 = v8;
  v27 = a1;
  v28 = a1;
  v29 = v2;
  v30 = v57;
  result = sub_100E660CC(v28, v26);
  if (v30)
  {
    return result;
  }

  v46 = v21;
  v47 = v16;
  v32 = v52;
  v33 = v53;
  v48 = v18;
  v49 = v24;
  v34 = v27;
  v35 = v29;
  v57 = 0;
  if ((*(v54 + 48))(v25, 1, v55) == 1)
  {
    sub_10000CAAC(v25, &qword_101A21CB8);
    v36 = v56;
    v37 = v49;
  }

  else
  {
    v38 = v15;
    sub_100025668(v25, v15, type metadata accessor for CRLFolderDatabaseRow);
    sub_10000C83C(v15, v33, type metadata accessor for CRLFolderDatabaseRow);
    v39 = v51;
    sub_1006952B0(v33, v51);
    v40 = (*(v32 + 48))(v39, 1, v47);
    v37 = v49;
    if (v40 == 1)
    {
      sub_100026028(v15, type metadata accessor for CRLFolderDatabaseRow);
      sub_10000CAAC(v39, &qword_101A21CB0);
      v36 = v56;
    }

    else
    {
      v41 = v46;
      sub_100025668(v39, v46, type metadata accessor for CRLFolder);
      v36 = v56;
      if (v50 != 2)
      {
        sub_10069585C(v34, v37);
        sub_100026028(v41, type metadata accessor for CRLFolder);
        sub_100026028(v38, type metadata accessor for CRLFolderDatabaseRow);
        goto LABEL_9;
      }

      sub_100026028(v41, type metadata accessor for CRLFolder);
      sub_100026028(v38, type metadata accessor for CRLFolderDatabaseRow);
    }
  }

  sub_10000C83C(v34, v37, type metadata accessor for CRLFolder);
LABEL_9:
  v42 = v48;
  sub_10000C83C(v37, v48, type metadata accessor for CRLFolder);
  v43 = *(v35 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  v44 = v57;
  sub_100A69064(v42, v43, v36);
  if (!v44)
  {
    sub_100E65560(v36);
    sub_100026028(v36, type metadata accessor for CRLFolderDatabaseRow);
  }

  return sub_100026028(v37, type metadata accessor for CRLFolder);
}

uint64_t sub_100E69940(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v6 + 104);
  v42 = enum case for DispatchPredicate.onQueue(_:);
  v43 = v10;
  v10(v8);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v40 = v5;
  v41 = v12;
  strcpy(v44, "DELETE FROM ");
  BYTE5(v44[1]) = 0;
  HIWORD(v44[1]) = -5120;
  v13._countAndFlagsBits = sub_100DD8F2C(a1);
  countAndFlagsBits = v13._countAndFlagsBits;
  object = v13._object;
  String.append(_:)(v13);

  v16._countAndFlagsBits = 59;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17 = v44[0];
  v18 = v44[1];
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v20 = sub_10001CC04(v19, v17, v18);

  if (v2)
  {
    return result;
  }

  v39 = countAndFlagsBits;
  v22 = *(*(v20 + 16) + 32);
  *v8 = v22;
  v23 = v40;
  v43(v8, v42, v40);
  v24 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v25 = v41;
  v41(v8, v23);
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = *(v20 + 16);

  v27 = sub_10001CEC4(v26, v20);

  if (v27 != 101)
  {
    goto LABEL_7;
  }

  object = *(*(v20 + 16) + 32);
  *v8 = object;
  v43(v8, v42, v23);
  v28 = object;
  v29 = _dispatchPreconditionTest(_:)();
  v25(v8, v23);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v44[0] = 0xD000000000000021;
    v44[1] = 0x80000001015A9970;
    v30._countAndFlagsBits = v39;
    v30._object = object;
    String.append(_:)(v30);

    v31 = v44[0];
    v32 = v44[1];
    sub_10089C7D0();
    swift_allocError();
    *v33 = v27;
    *(v33 + 8) = v31;
    *(v33 + 16) = v32;
    swift_willThrow();
    v34 = *(*(v20 + 16) + 32);
    *v8 = v34;
    v43(v8, v42, v23);
    v35 = v34;
    v36 = _dispatchPreconditionTest(_:)();
    v41(v8, v23);
    if (v36)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v37 = *(v20 + 24);
  if (v37)
  {
    sqlite3_finalize(v37);
    *(v20 + 24) = 0;
  }
}

uint64_t sub_100E69D38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A341C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = *(*a1 + 120);
  swift_beginAccess();
  (*(v5 + 16))(v7, a1 + v8, v4);
  v9 = (a1 + *(*a1 + 128));
  v10 = *(v9 + 5);
  v18 = *(v9 + 4);
  v11 = *(v9 + 48);
  v12 = *v9;
  v16 = v9[1];
  v17 = v12;
  swift_beginAccess();
  sub_1005B981C(&unk_101A22860);
  sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
  LOBYTE(v8) = Capsule.merge<A>(_:)();
  swift_endAccess();
  v13 = v2 + *(*v2 + 128);
  v14 = v16;
  *v13 = v17;
  *(v13 + 16) = v14;
  *(v13 + 32) = v18;
  *(v13 + 40) = v10;
  *(v13 + 48) = v11;
  sub_100E69F7C();
  result = (*(v5 + 8))(v7, v4);
  *(v2 + *(*v2 + 136)) = (*(v2 + *(*v2 + 136)) | v8) & 1;
  return result;
}

unint64_t sub_100E69F7C()
{
  result = sub_10001FF1C();
  v2 = (v0 + *(*v0 + 128));
  if (result >= *v2)
  {
    *v2 = 0x1000000000000;
    if (result >= v2[2])
    {
      v2[2] = 0x2000400000000;
    }

    if (result >= v2[4])
    {
      v3 = result;
      v4 = sub_100E6A044();
      result = v3;
      v2[4] = v4;
    }
  }

  if (result >= v2[1])
  {
    v2[1] = 0x1000000000000;
    if (result >= v2[3])
    {
      v2[3] = 0x2000400000000;
    }
  }

  return result;
}

unint64_t sub_100E6A044()
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v2 = (v0 + *(*v0 + 128));
  v3 = *v2;
  *(inited + 32) = *v2;
  v4 = inited + 32;
  v5 = &type metadata for UInt64;
  v6 = &protocol witness table for UInt64;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  v79 = v2;
  if (sub_10001FF1C() >= v3)
  {
LABEL_28:

    goto LABEL_30;
  }

  v76 = objc_opt_self();
  LODWORD(v5) = [v76 _atomicIncrementAssertCount];
  v80 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v80);
  StaticString.description.getter();
  v77 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v7 lastPathComponent];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_73;
  }

LABEL_3:
  v6 = static OS_os_log.crlAssert;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_10146CA70;
  *(v12 + 56) = &type metadata for Int32;
  *(v12 + 64) = &protocol witness table for Int32;
  *(v12 + 32) = v5;
  v13 = sub_100006370(0, &qword_1019F4D30);
  *(v12 + 96) = v13;
  v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v12 + 104) = v14;
  *(v12 + 72) = v77;
  *(v12 + 136) = &type metadata for String;
  v15 = sub_1000053B0();
  *(v12 + 112) = v9;
  *(v12 + 120) = v11;
  *(v12 + 176) = &type metadata for UInt;
  *(v12 + 184) = &protocol witness table for UInt;
  *(v12 + 144) = v15;
  *(v12 + 152) = 394;
  v16 = v80;
  *(v12 + 216) = v13;
  *(v12 + 224) = v14;
  *(v12 + 192) = v16;
  v17 = v77;
  v18 = v16;
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v6, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v12);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v6, &_mh_execute_header, v20, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForBucket is higher than current: %{public}d", 126, 2, inited);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v2 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v77 = inited;
  v21 = *(inited + 16);
  if (v21)
  {
    inited = 0;
    v11 = 40;
    while (1)
    {
      v9 = sub_100020E58((v4 + 40 * inited), *(v4 + 40 * inited + 24));
      v22 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v23 = *v2;
      v24 = *(v22 + 16);
      v25 = __OFADD__(*v2, v24);
      v26 = *v2 + v24;
      if (v25)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        swift_once();
        goto LABEL_3;
      }

      v9 = v5[4];
      if (v9 >= v26)
      {
        goto LABEL_20;
      }

      if (v9 + 0x4000000000000000 < 0)
      {
        goto LABEL_69;
      }

      v6 = v5[5];
      if (2 * v9 > v26)
      {
        v26 = 2 * v9;
      }

      v5[4] = v26;
      if ((v26 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_70;
      }

      v27 = v22;
      v28 = swift_slowAlloc();
      v29 = v28;
      v5[5] = v28;
      if (v6)
      {
        break;
      }

      v22 = v27;
      if (!v29)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v31 = *(v22 + 16);
      if (v31)
      {
        v32 = (v22 + 32);
        v33 = *v2;
        while (1)
        {
          v34 = *v32++;
          *&v29[8 * v33] = v34;
          v33 = *v2 + 1;
          if (__OFADD__(*v2, 1))
          {
            break;
          }

          *v2 = v33;
          if (!--v31)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_5:

      if (++inited == v21)
      {
        goto LABEL_29;
      }
    }

    if (v28 != v6 || v28 >= &v6[8 * v23])
    {
      memmove(v28, v6, 8 * v23);
    }

    v9 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v22 = v27;
LABEL_20:
    v29 = v5[5];
    if (!v29)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_29:
  v35 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  [v76 handleFailureInFunction:v36 file:v37 lineNumber:394 isFatal:0 format:v38 args:v35];

  v2 = v79;
  v5 = &type metadata for UInt64;
  v6 = &protocol witness table for UInt64;
LABEL_30:
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10146C6B0;
  v40 = v2[4];
  *(v39 + 32) = v40;
  v4 = v39 + 32;
  *(v39 + 56) = v5;
  *(v39 + 64) = v6;
  if (sub_10001FF1C() >= v40)
  {
LABEL_58:
  }

  else
  {
    v76 = objc_opt_self();
    v41 = [v76 _atomicIncrementAssertCount];
    v80 = [objc_allocWithZone(NSString) init];
    sub_100604538(v39, &v80);
    StaticString.description.getter();
    v78 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    v43 = [v42 lastPathComponent];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlAssert;
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_10146CA70;
    *(v47 + 56) = &type metadata for Int32;
    *(v47 + 64) = &protocol witness table for Int32;
    *(v47 + 32) = v41;
    v48 = sub_100006370(0, &qword_1019F4D30);
    *(v47 + 96) = v48;
    v49 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v47 + 104) = v49;
    *(v47 + 72) = v78;
    *(v47 + 136) = &type metadata for String;
    v50 = sub_1000053B0();
    *(v47 + 112) = v44;
    *(v47 + 120) = v46;
    *(v47 + 176) = &type metadata for UInt;
    *(v47 + 184) = &protocol witness table for UInt;
    *(v47 + 144) = v50;
    *(v47 + 152) = 395;
    v51 = v80;
    *(v47 + 216) = v48;
    *(v47 + 224) = v49;
    *(v47 + 192) = v51;
    v52 = v78;
    v53 = v51;
    v54 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v47);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v55 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v55, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 132, 2, v39);

    type metadata accessor for __VaListBuilder();
    v5 = swift_allocObject();
    v5[2] = 8;
    v5[3] = 0;
    v2 = v5 + 3;
    v5[4] = 0;
    v5[5] = 0;
    v77 = v39;
    v56 = *(v39 + 16);
    if (v56)
    {
      inited = 0;
      v11 = 40;
      while (1)
      {
        v9 = sub_100020E58((v4 + 40 * inited), *(v4 + 40 * inited + 24));
        v57 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v58 = *v2;
        v59 = *(v57 + 16);
        v25 = __OFADD__(*v2, v59);
        v60 = *v2 + v59;
        if (v25)
        {
          goto LABEL_68;
        }

        v9 = v5[4];
        if (v9 >= v60)
        {
          goto LABEL_50;
        }

        if (v9 + 0x4000000000000000 < 0)
        {
          goto LABEL_71;
        }

        v6 = v5[5];
        if (2 * v9 > v60)
        {
          v60 = 2 * v9;
        }

        v5[4] = v60;
        if ((v60 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_72;
        }

        v61 = v57;
        v62 = swift_slowAlloc();
        v63 = v62;
        v5[5] = v62;
        if (v6)
        {
          break;
        }

        v57 = v61;
        if (!v63)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v65 = *(v57 + 16);
        if (v65)
        {
          v66 = (v57 + 32);
          v67 = *v2;
          do
          {
            v68 = *v66++;
            *&v63[8 * v67] = v68;
            v67 = *v2 + 1;
            if (__OFADD__(*v2, 1))
            {
              goto LABEL_66;
            }

            *v2 = v67;
          }

          while (--v65);
        }

        if (++inited == v56)
        {
          goto LABEL_59;
        }
      }

      if (v62 != v6 || v62 >= &v6[8 * v58])
      {
        memmove(v62, v6, 8 * v58);
      }

      v9 = v5;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v57 = v61;
LABEL_50:
      v63 = v5[5];
      if (!v63)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_59:
    v69 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v70 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v71 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v72 = String._bridgeToObjectiveC()();

    [v76 handleFailureInFunction:v70 file:v71 lineNumber:395 isFatal:0 format:v72 args:v69];

    v2 = v79;
    v5 = &type metadata for UInt64;
    v6 = &protocol witness table for UInt64;
  }

  v73 = v2[4];
  if ((v2[2] != 0x2000400000000 || v2[3] != 0x2000400000000) && v73 < 0x2000400000000)
  {
    v73 = 0x2000400000000;
  }

  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_10146C6B0;
  *(v74 + 56) = v5;
  *(v74 + 64) = v6;
  *(v74 + 32) = v73;

  return v73;
}

uint64_t sub_100E6AB44(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = type metadata accessor for CRKeyPath();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = _s6CellIDVMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2;
  v14 = *v2;
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  v34 = a2;
  UUID.hash(into:)();
  v15 = Hasher._finalize()();
  v32 = v14 + 56;
  v33 = v14;
  v16 = -1 << *(v14 + 32);
  v17 = v15 & ~v16;
  if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v30 = ~v16;
    v31 = *(v11 + 72);
    v18 = (v27 + 8);
    while (1)
    {
      v19 = v31 * v17;
      sub_10000C83C(*(v33 + 48) + v31 * v17, v13, _s6CellIDVMa);
      sub_1000066D0(&unk_101A0B020, _s6CellIDVMa);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_1000066D0(&unk_101A2C5A0, &type metadata accessor for CRKeyPath);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *v18;
      (*v18)(v6, v4);
      v21(v9, v4);
      sub_100026028(v13, _s6CellIDVMa);
      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v30;
      if (((*(v32 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100026028(v34, _s6CellIDVMa);
    sub_10000C83C(*(v33 + 48) + v19, v29, _s6CellIDVMa);
    return 0;
  }

  else
  {
LABEL_5:
    v22 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v34;
    sub_10000C83C(v34, v13, _s6CellIDVMa);
    v35 = *v22;
    sub_100E7B548(v13, v17, isUniquelyReferenced_nonNull_native);
    *v22 = v35;
    sub_100025668(v24, v29, _s6CellIDVMa);
    return 1;
  }
}

uint64_t sub_100E6AF38(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100E7B90C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100E6B218(Swift::Int *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v13 = *v2;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = __CocoaSet.member(for:)();

    if (v14)
    {

      v51 = v14;
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      result = 0;
      *a1 = v50;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v39 = sub_100E72BE0(v13, result + 1);
        v50 = v39;
        if (*(v39 + 24) <= *(v39 + 16))
        {
          sub_100E7400C();
          v39 = v50;
        }

        sub_100E7ACAC(v40, v39);

        *v3 = v39;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v41 = v2;
    v42 = a1;
    v16 = &v41 - v11;
    Hasher.init(_seed:)();
    v17 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v17 + 32))(ObjectType, v17);
    sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v20 = *(v7 + 8);
    v19 = v7 + 8;
    v47 = v20;
    v48 = v16;
    v20(v16, v6);
    v21 = Hasher._finalize()();
    v22 = -1 << *(v12 + 32);
    v23 = v21 & ~v22;
    v46 = v12 + 56;
    if ((*(v12 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v43 = ~v22;
      v44 = v10;
      v45 = v12;
      v24 = v48;
      while (1)
      {
        v49 = v23;
        v25 = *(*(*(v12 + 48) + 8 * v23) + 24);
        v26 = a2;
        v27 = swift_getObjectType();
        v28 = v19;
        v29 = v6;
        v30 = *(v25 + 32);

        v31 = v27;
        a2 = v26;
        v30(v31, v25);
        v6 = v29;
        v19 = v28;
        v32 = v44;
        v33 = *(v26 + 24);
        v34 = swift_getObjectType();
        (*(v33 + 32))(v34, v33);
        LOBYTE(v33) = static UUID.== infix(_:_:)();

        v35 = v47;
        v47(v32, v6);
        v35(v24, v6);
        if (v33)
        {
          break;
        }

        v23 = (v49 + 1) & v43;
        v12 = v45;
        if (((*(v46 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *v42 = *(*(v45 + 48) + 8 * v49);

      return 0;
    }

    else
    {
LABEL_11:
      v36 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *v36;

      sub_100E7BBD4(v38, v23, isUniquelyReferenced_nonNull_native);
      *v36 = v50;
      *v42 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100E6B644(uint64_t a1, Swift::UInt a2, char a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          a2 = v13;
          goto LABEL_13;
        }
      }

      else if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_13;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  sub_100E7BF20(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v17;
  result = 1;
  v14 = a3;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v14 & 1;
  return result;
}

uint64_t sub_100E6B798(uint64_t a1, Swift::Int a2, char a3)
{
  v4 = a3;
  v6 = ~a3;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFF60);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*(v12 + 8) == 255)
      {
        if (v4 == -1)
        {
          result = 0;
          a2 = *v12;
          v4 = -1;
          goto LABEL_13;
        }
      }

      else if (v4 != -1)
      {
        sub_1007A96C8();
        if (static CRExtensible.== infix(_:_:)())
        {
          result = 0;
          v14 = *(v7 + 48) + 16 * v10;
          a2 = *v14;
          v4 = *(v14 + 8);
          goto LABEL_13;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  sub_100E7C0C4(a2, v4, v10, isUniquelyReferenced_nonNull_native);
  *v16 = v18;
  result = 1;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100E6B98C(uint64_t a1, Swift::Int a2, char a3)
{
  v4 = a3;
  v6 = ~a3;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFFD8);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*(v12 + 8) == 255)
      {
        if (v4 == -1)
        {
          result = 0;
          a2 = *v12;
          v4 = -1;
          goto LABEL_13;
        }
      }

      else if (v4 != -1)
      {
        type metadata accessor for CRLWPWritingDirection(0);
        sub_1000066D0(&unk_1019FFFE0, type metadata accessor for CRLWPWritingDirection);
        if (static CRExtensible.== infix(_:_:)())
        {
          result = 0;
          v14 = *(v7 + 48) + 16 * v10;
          a2 = *v14;
          v4 = *(v14 + 8);
          goto LABEL_13;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  sub_100E7C350(a2, v4, v10, isUniquelyReferenced_nonNull_native);
  *v16 = v18;
  result = 1;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100E6BBB4(uint64_t a1, Swift::Int a2, char a3)
{
  v4 = a3;
  v6 = ~a3;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFF70);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*(v12 + 8) == 255)
      {
        if (v4 == -1)
        {
          result = 0;
          a2 = *v12;
          v4 = -1;
          goto LABEL_13;
        }
      }

      else if (v4 != -1)
      {
        type metadata accessor for CRLWPParagraphAlignment(0);
        sub_1000066D0(&qword_1019FFF78, type metadata accessor for CRLWPParagraphAlignment);
        if (static CRExtensible.== infix(_:_:)())
        {
          result = 0;
          v14 = *(v7 + 48) + 16 * v10;
          a2 = *v14;
          v4 = *(v14 + 8);
          goto LABEL_13;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  sub_100E7C610(a2, v4, v10, isUniquelyReferenced_nonNull_native);
  *v16 = v18;
  result = 1;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100E6BDDC(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 80);
  v114 = *(a2 + 64);
  v115 = v6;
  v116 = *(a2 + 96);
  v7 = *(a2 + 16);
  v110 = *a2;
  v111 = v7;
  v8 = *(a2 + 48);
  v112 = *(a2 + 32);
  v113 = v8;
  v51 = *v2;
  Hasher.init(_seed:)();
  v9 = *(a2 + 96);
  if (v9)
  {
    v100 = v114;
    v101 = v115;
    v102 = v116;
    v96 = v110;
    v97 = v111;
    v99 = v113;
    v98 = v112;
    Hasher._combine(_:)(1u);
    v107 = v114;
    v108 = v115;
    v109 = v116;
    v103 = v110;
    v104 = v111;
    v106 = v113;
    v105 = v112;
    sub_1007A971C(&v103, &v69);
    sub_1007A9778();
    dispatch thunk of Hashable.hash(into:)();
    v73 = v100;
    v74 = v101;
    v75 = v102;
    v69 = v96;
    v70 = v97;
    v71 = v98;
    v72 = v99;
    sub_1007A97CC(&v69);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = Hasher._finalize()();
  v11 = -1 << *(v51 + 32);
  v12 = v10 & ~v11;
  if (((*(v51 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v103 = *v3;
    sub_10000BE14(a2, &v69, &qword_1019FFF80);
    sub_100E7C8D0(a2, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v103;
    v33 = *(a2 + 80);
    a1[4] = *(a2 + 64);
    a1[5] = v33;
    a1[6] = *(a2 + 96);
    v34 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v34;
    v35 = *(a2 + 48);
    result = 1;
    a1[2] = *(a2 + 32);
    a1[3] = v35;
    return result;
  }

  v49 = v2;
  v50 = ~v11;
  while (1)
  {
    v13 = (*(v51 + 48) + 112 * v12);
    v15 = v13[1];
    v14 = v13[2];
    v103 = *v13;
    v104 = v15;
    v105 = v14;
    v16 = v13[3];
    v17 = v13[4];
    v18 = v13[5];
    v109 = v13[6];
    v108 = v18;
    v107 = v17;
    v106 = v16;
    v19 = v13[3];
    v92 = v13[2];
    v93 = v19;
    v20 = v13[5];
    v94 = v13[4];
    v95 = v20;
    v21 = v13[1];
    v90 = *v13;
    v91 = v21;
    v22 = v109;
    v23 = *(a2 + 16);
    v84 = *a2;
    v85 = v23;
    v24 = *(a2 + 32);
    v25 = *(a2 + 48);
    v26 = *(a2 + 80);
    v88 = *(a2 + 64);
    v89 = v26;
    v86 = v24;
    v87 = v25;
    v27 = *(a2 + 104);
    if (!v109)
    {
      break;
    }

    v71 = v92;
    v72 = v93;
    v73 = v94;
    v74 = v95;
    v69 = v90;
    v70 = v91;
    v75 = v109;
    v96 = v90;
    v97 = v91;
    v98 = v92;
    v99 = v93;
    v101 = v95;
    v100 = v94;
    v102 = v109;
    if (!v9)
    {
      v66 = v73;
      v67 = v74;
      v68 = v75;
      v62 = v69;
      v63 = v70;
      v64 = v71;
      v65 = v72;
      sub_10000BE14(a2, v61, &qword_1019FFF80);
      sub_10000BE14(&v103, v61, &qword_1019FFF80);
      sub_10000BE14(&v69, v61, &qword_1019FFF80);
      sub_1007A97CC(&v62);
      goto LABEL_13;
    }

    v28 = *(a2 + 48);
    v55 = *(a2 + 32);
    v56 = v28;
    v29 = *(a2 + 80);
    v57 = *(a2 + 64);
    v58 = v29;
    v30 = *(a2 + 16);
    v53 = *a2;
    v54 = v30;
    *&v59 = v9;
    *(&v59 + 1) = v27;
    sub_10000BE14(a2, v52, &qword_1019FFF80);
    sub_10000BE14(&v103, v52, &qword_1019FFF80);
    sub_10000BE14(&v69, v52, &qword_1019FFF80);
    sub_1007A9820();
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v60[4] = v57;
    v60[5] = v58;
    v60[6] = v59;
    v60[0] = v53;
    v60[1] = v54;
    v60[2] = v55;
    v60[3] = v56;
    sub_1007A97CC(v60);
    v61[4] = v100;
    v61[5] = v101;
    v61[6] = v102;
    v61[0] = v96;
    v61[1] = v97;
    v61[2] = v98;
    v61[3] = v99;
    sub_1007A97CC(v61);
    v64 = v92;
    v65 = v93;
    v66 = v94;
    v67 = v95;
    v62 = v90;
    v63 = v91;
    v68 = v22;
    sub_10000CAAC(&v62, &qword_1019FFF80);
    if (v31)
    {
      v37 = a2;
      goto LABEL_19;
    }

LABEL_14:
    v12 = (v12 + 1) & v50;
    if (((*(v51 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      v3 = v49;
      goto LABEL_17;
    }

    v9 = *(a2 + 96);
  }

  if (v9)
  {
    sub_10000BE14(a2, &v69, &qword_1019FFF80);
    sub_10000BE14(&v103, &v69, &qword_1019FFF80);
LABEL_13:
    v71 = v92;
    v72 = v93;
    v73 = v94;
    v74 = v95;
    v69 = v90;
    v70 = v91;
    v75 = v22;
    v76 = v84;
    v77 = v85;
    v80 = v88;
    v81 = v89;
    v78 = v86;
    v79 = v87;
    v82 = v9;
    v83 = v27;
    sub_10000CAAC(&v69, &qword_1019FFF90);
    goto LABEL_14;
  }

  v71 = v92;
  v72 = v93;
  v73 = v94;
  v74 = v95;
  v69 = v90;
  v70 = v91;
  *&v75 = 0;
  *(&v75 + 1) = *(&v109 + 1);
  sub_10000BE14(&v103, &v96, &qword_1019FFF80);
  v37 = &v69;
LABEL_19:
  sub_10000CAAC(v37, &qword_1019FFF80);
  v38 = (*(v51 + 48) + 112 * v12);
  v40 = v38[1];
  v39 = v38[2];
  v69 = *v38;
  v70 = v40;
  v71 = v39;
  v41 = v38[3];
  v42 = v38[4];
  v43 = v38[6];
  v74 = v38[5];
  v75 = v43;
  v72 = v41;
  v73 = v42;
  v44 = v38[1];
  *a1 = *v38;
  a1[1] = v44;
  v45 = v38[2];
  v46 = v38[3];
  v47 = v38[6];
  a1[5] = v38[5];
  a1[6] = v47;
  v48 = v38[4];
  a1[3] = v46;
  a1[4] = v48;
  a1[2] = v45;
  sub_10000BE14(&v69, &v96, &qword_1019FFF80);
  return 0;
}