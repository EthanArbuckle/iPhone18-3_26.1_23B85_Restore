void sub_1000BC6CC(void **a1)
{
  v2 = v1;
  v51 = type metadata accessor for LogID(0);
  v4 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == -536870165)
  {
    return;
  }

  v8 = v2[4];
  v7 = v2[5];
  if (v8 < v7)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v7 != v8)
  {
    v9 = 0;
    v18 = v2[9];
    v50 = 0x800000010012FDD0;
    v19 = (v18 + 28 * v7);
    while (1)
    {
      if (v7 >= v8)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v23 = *v19;
      v24 = v19[3];
      if (*v19 != -536870169)
      {
        if (v23 == -536870168)
        {
          aBlock = 0;
          v54 = 0xE000000000000000;
          _StringGuts.grow(_:)(37);

          aBlock = 0xD000000000000023;
          v54 = v50;
          LODWORD(v59) = v24;
          v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v27);

          v28 = aBlock;
          v29 = v54;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v30 = sub_10000A1BC(v51, qword_1001794F0);
          sub_10000A2A4(v30, v6);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for AUALog(0);
          v21 = sub_10000A1BC(v20, qword_100179508);
          v22 = v28;
          a1 = v21;
          sub_100039AA0(4, v6, v22, v29);

          sub_10000C9D0(v6);
          goto LABEL_12;
        }

        if (v23)
        {
          aBlock = 0;
          v54 = 0xE000000000000000;
          _StringGuts.grow(_:)(32);

          aBlock = 0xD00000000000001ELL;
          v54 = 0x800000010012FD50;
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_10011DE90;
          *(v31 + 56) = &type metadata for Int32;
          *(v31 + 64) = &protocol witness table for Int32;
          *(v31 + 32) = v23;
          v32._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v32);

          v33 = aBlock;
          v34 = v54;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v35 = sub_10000A1BC(v51, qword_1001794F0);
          sub_10000A2A4(v35, v6);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v36, qword_100179508);
          sub_100039AA0(4, v6, v33, v34);

          sub_10000C9D0(v6);
          return;
        }
      }

      if (!v24)
      {
        v25 = v2[2];
        if (v25[OBJC_IVAR___AUAAudioDevice_isAppleVID] == 1)
        {
          aBlock = 0xD00000000000001DLL;
          v54 = 0x800000010012FDB0;
          v37._countAndFlagsBits = 8236;
          v37._object = 0xE200000000000000;
          String.append(_:)(v37);
          v38._object = 0x800000010012F240;
          v38._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v38);
          v39._countAndFlagsBits = 2108704;
          v39._object = 0xE300000000000000;
          String.append(_:)(v39);
          v59 = 956;
          v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v40);

          sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v54, &v25[OBJC_IVAR___AUAAudioDevice_logID]);

          v41 = *&v25[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
          v42 = swift_allocObject();
          v42[2] = AUAError.init(_:message:);
          v42[3] = 0;
          aBlock = sub_100038564;
          v54 = v42;
          v43 = v41[2];
          v44 = __chkstk_darwin(v42);
          *(&v50 - 2) = v41;
          *(&v50 - 1) = &aBlock;
          __chkstk_darwin(v44);
          *(&v50 - 2) = sub_10001EF50;
          *(&v50 - 1) = v45;

          os_unfair_lock_lock(v43 + 4);
          sub_10003854C(&v59);
          os_unfair_lock_unlock(v43 + 4);
          LODWORD(v41) = v59;

          if (v41 == 1)
          {
            v46 = swift_allocObject();
            *(v46 + 16) = v25;
            v57 = sub_10001EFC8;
            v58 = v46;
            aBlock = _NSConcreteStackBlock;
            v54 = 1107296256;
            v55 = sub_1000172D4;
            v56 = &unk_100164868;
            v47 = _Block_copy(&aBlock);
            v48 = v25;

            v49 = type metadata accessor for AUAAudioDevice();
            v52.receiver = v48;
            v52.super_class = v49;
            objc_msgSendSuper2(&v52, "requestConfigurationChange:", v47);
            _Block_release(v47);
          }

          return;
        }

        if (__CFADD__(v9++, 1))
        {
          goto LABEL_37;
        }
      }

LABEL_12:
      ++v7;
      v19 += 7;
      if (v8 == v7)
      {
        goto LABEL_5;
      }
    }
  }

  v9 = 0;
LABEL_5:
  v10 = v2[6];
  if (v9 >= v10)
  {
    aBlock = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v11._countAndFlagsBits = 0xD000000000000034;
    v11._object = 0x800000010012FD70;
    String.append(_:)(v11);
    v59 = v9;
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x6C6C612078616D20;
    v13._object = 0xED0000206465776FLL;
    String.append(_:)(v13);
    v59 = v10;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    a1 = aBlock;
    v7 = v54;
    if (qword_100173CB8 == -1)
    {
LABEL_7:
      v15 = sub_10000A1BC(v51, qword_1001794F0);
      sub_10000A2A4(v15, v6);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v16, qword_100179508);
      sub_100039AA0(4, v6, a1, v7);

      sub_10000C9D0(v6);
      v17 = v2[2];
      AUAAudioDevice.increaseLockDelay()();
      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_7;
  }
}

unint64_t sub_1000BCEC4(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostID();
  v117 = *(v4 - 8);
  v5 = *(v117 + 8);
  v6 = __chkstk_darwin(v4);
  v113 = v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v103 - v8;
  v115 = type metadata accessor for LogID(0);
  v10 = *(*(v115 - 8) + 64);
  v11 = __chkstk_darwin(v115);
  v112 = v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v103 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = 0x20737574617473;
  v120 = 0xE700000000000000;
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10011DE90;
  *(v20 + 56) = &type metadata for Int32;
  *(v20 + 64) = &protocol witness table for Int32;
  LODWORD(v116) = a1;
  *(v20 + 32) = a1;
  v21._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v21);

  v22 = v120;
  v114 = v119;
  v23 = OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID;
  v24 = qword_100173CB0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = (v2 + v23);
  if (byte_1001794E8 != 1)
  {
    v15 = v22;
    if (qword_100173CC0 == -1)
    {
LABEL_11:
      v55 = type metadata accessor for AUALog(0);
      v56 = sub_10000A1BC(v55, qword_100179508);
      v57 = *(v55 + 24);
      v58 = *(v117 + 2);
      v58(v9, &v25[*(v115 + 20)], v4);

      v115 = v56;
      v59 = OSSignposter.logHandle.getter();
      v60 = static os_signpost_type_t.begin.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {
        v61 = swift_slowAlloc();
        v111 = v2;
        v62 = v61;
        v63 = swift_slowAlloc();
        v119 = v63;
        *v62 = 136446210;
        v64 = sub_100035760(v114, v15, &v119);

        *(v62 + 4) = v64;
        v65 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, v60, v65, "AUAOutputExplicitFeedbackStream_isocFeedbackCompletion", "%{public}s", v62, 0xCu);
        sub_10000CE78(v63);
      }

      else
      {
      }

      v66 = v116;
      v58(v113, v9, v4);
      v67 = type metadata accessor for OSSignpostIntervalState();
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();
      (*(v117 + 1))(v9, v4);
      if (v66 != -536870165)
      {
        sub_1000B6688();
      }

      sub_1000461FC(v115, "AUAOutputExplicitFeedbackStream_isocFeedbackCompletion", 54, 2);
      goto LABEL_31;
    }

LABEL_33:
    swift_once();
    goto LABEL_11;
  }

  v109 = v16;
  v110 = v2 + v23;
  v117 = v19;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for AUALog(0);
  v27 = sub_10000A1BC(v26, qword_100179508);

  v108 = mach_absolute_time();
  v28 = v103;
  v9 = *v27;
  v29 = *(*v27 + 2);
  __chkstk_darwin(v108);
  v103[-2] = sub_10001E9F0;
  v103[-1] = v9;

  os_unfair_lock_lock(v29 + 4);
  v4 = 0;
  sub_10001EA0C(&v119);
  os_unfair_lock_unlock(v29 + 4);
  v107 = v119;
  v113 = v120;
  v106 = v121;

  v25 = v27[1];
  if (!*(v25 + 2))
  {
    __break(1u);
    goto LABEL_33;
  }

  v30 = sub_10001D1DC(4);
  if (v31)
  {
    v103[1] = 0;
    v32 = *(v109 + 16);
    v33 = *(v25 + 7) + *(v109 + 72) * v30;
    v105 = v15;
    v32(v117, v33, v15);
    v119 = StaticString.description.getter();
    v120 = v34;
    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36._countAndFlagsBits = v114;
    v114 = v22;
    v36._object = v22;
    String.append(_:)(v36);
    v38 = v119;
    v37 = v120;
    sub_10000A2A4(v110, v14);

    v39 = v113;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    v42 = os_log_type_enabled(v40, v41);
    v111 = v2;
    v104 = v9;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v103[0] = v38;
      v45 = v44;
      v118[0] = v44;
      *v43 = 136446210;
      v119 = 2113069;
      v120 = 0xE300000000000000;
      v46._countAndFlagsBits = v107;
      v46._object = v39;
      String.append(_:)(v46);
      v47 = &v14[*(v115 + 24)];
      v48 = *v47;
      v49 = v47[1];

      v50._countAndFlagsBits = v48;
      v50._object = v49;
      String.append(_:)(v50);

      v51._countAndFlagsBits = v103[0];
      v51._object = v37;
      String.append(_:)(v51);

      v52 = v119;
      v53 = v120;
      sub_10000C9D0(v14);
      v54 = sub_100035760(v52, v53, v118);

      *(v43 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s", v43, 0xCu);
      sub_10000CE78(v45);
    }

    else
    {

      sub_10000C9D0(v14);
    }

    v14 = v112;
    v70 = v108;
    if (v116 != -536870165)
    {
      sub_1000B6688();
    }

    result = mach_absolute_time();
    v72 = result >= v70;
    v28 = result - v70;
    if (v72)
    {
      if (qword_100173D00 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_36;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_36:
  result = swift_once();
LABEL_23:
  if (qword_100179650 == HIDWORD(qword_100179650))
  {
LABEL_27:
    v119 = StaticString.description.getter();
    v120 = v73;
    v74._countAndFlagsBits = 23328;
    v74._object = 0xE200000000000000;
    String.append(_:)(v74);
    v118[0] = v28 / 0x3E8;
    v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v75);

    v76._countAndFlagsBits = 1567847712;
    v76._object = 0xE400000000000000;
    String.append(_:)(v76);
    v78 = v119;
    v77 = v120;
    sub_10000A2A4(v110, v14);
    v79 = v113;

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v116 = v78;
      v84 = v83;
      v118[0] = v83;
      *v82 = 136446210;
      v119 = 2108732;
      v120 = 0xE300000000000000;
      v85._countAndFlagsBits = v107;
      v85._object = v79;
      String.append(_:)(v85);
      v86 = &v14[*(v115 + 24)];
      v87 = *v86;
      v88 = v86[1];

      v89._countAndFlagsBits = v87;
      v89._object = v88;
      String.append(_:)(v89);

      v90._countAndFlagsBits = v116;
      v90._object = v77;
      String.append(_:)(v90);

      v91 = v119;
      v92 = v120;
      sub_10000C9D0(v14);
      v93 = sub_100035760(v91, v92, v118);

      *(v82 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v80, v81, "%{public}s", v82, 0xCu);
      sub_10000CE78(v84);
    }

    else
    {

      v94 = sub_10000C9D0(v14);
    }

    v95 = v105;
    v96 = v109;
    v97 = *(v104 + 2);
    v98 = __chkstk_darwin(v94);
    v103[-2] = v99;
    LODWORD(v103[-1]) = v100;
    __chkstk_darwin(v98);
    v103[-2] = sub_10001EA28;
    v103[-1] = v101;

    os_unfair_lock_lock(v97 + 4);
    sub_10001EA48(v102);
    os_unfair_lock_unlock(v97 + 4);

    (*(v96 + 8))(v117, v95);

LABEL_31:
  }

  if (is_mul_ok(v28, qword_100179650))
  {
    if (HIDWORD(qword_100179650))
    {
      v28 = v28 * qword_100179650 / HIDWORD(qword_100179650);
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BDA8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BDB0C()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BDB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100174F70, &qword_100120FD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BDBC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000BDC0C()
{
  result = qword_100176DE0;
  if (!qword_100176DE0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176DE0);
  }

  return result;
}

unint64_t sub_1000BDC64()
{
  result = qword_100176DE8;
  if (!qword_100176DE8)
  {
    sub_10001E8F0(&unk_1001772A0, &qword_1001224E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176DE8);
  }

  return result;
}

void sub_1000BDD74(int a1)
{
  v3 = type metadata accessor for LogID(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    if ((a1 & 0xFFFEFFFF) != 0 || *(v1 + 32) == a1)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v23 = v1;
      v7 = *(v1 + 24);
      v26 = a1;
      v8 = [objc_allocWithZone(NSMutableData) initWithBytes:&v26 length:4];
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v7);
      v12 = v11;

      v24 = active;
      v25 = v12;
      v13._countAndFlagsBits = 0xD000000000000023;
      v13._object = 0x80000001001302E0;
      String.append(_:)(v13);
      LODWORD(active) = v26;
      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10011DE90;
      *(v14 + 56) = &type metadata for UInt32;
      *(v14 + 64) = &protocol witness table for UInt32;
      *(v14 + 32) = active;
      v15._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v15);

      v16 = v24;
      v17 = v25;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v18 = sub_10000A1BC(v3, qword_1001794F0);
      sub_10000A2A4(v18, v6);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v19, qword_100179508);
      sub_100039AA0(2, v6, v16, v17);

      sub_10000C9D0(v6);
      v20 = v23;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 24);
        v22 = swift_getObjectType();
        sub_100052AFC(0x4344, v8, v22, v21);
        v20 = v23;
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();

      *(v20 + 32) = v26;
    }
  }
}

uint64_t ClientDescriptionInterface.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000BE1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ClientDescriptionInterface();
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t Configuration.highestExceptionLevel.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  LOBYTE(v3) = 0;
  v4 = a2 + 32;
  do
  {
    v5 = *(v4 + 144);
    v13[8] = *(v4 + 128);
    v13[9] = v5;
    v14 = *(v4 + 160);
    v6 = *(v4 + 80);
    v13[4] = *(v4 + 64);
    v13[5] = v6;
    v7 = *(v4 + 112);
    v13[6] = *(v4 + 96);
    v13[7] = v7;
    v8 = *(v4 + 16);
    v13[0] = *v4;
    v13[1] = v8;
    v9 = *(v4 + 48);
    v13[2] = *(v4 + 32);
    v13[3] = v9;
    sub_100021248(v13, v12);
    v10 = Function.highestExceptionLevel.getter();
    sub_1000212F0(v13);
    if (v3 <= v10)
    {
      v3 = v10;
    }

    else
    {
      v3 = v3;
    }

    v4 += 168;
    --v2;
  }

  while (v2);
  return v3;
}

uint64_t sub_1000BE354(__int16 a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x100) != 0)
  {
    return 1;
  }

  v3 = *(a3 + 16);
  if (v3)
  {
    LOBYTE(v4) = 0;
    v5 = a3 + 32;
    do
    {
      v4 = v4 || *(*v5 + 2) == a1;
      v5 += 168;
      --v3;
    }

    while (v3);
    return v4;
  }

  return 0;
}

uint64_t sub_1000BE3A8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v31 = result;
  if (*(result + OBJC_IVAR____TtC9AUASDCore9USBDevice_curConfigNum) == *(a3 + 5))
  {
    v5 = v4;
    v6 = 0;
    v7 = *(a4 + 16);
    v30 = _swiftEmptyArrayStorage;
LABEL_3:
    v8 = 168 * v6 + 32;
    while (1)
    {
      if (v7 == v6)
      {
        v28 = a4;
        type metadata accessor for ActiveConfiguration();
        v16 = swift_allocObject();
        v16[2] = a3;
        v16[3] = v28;
        v16[4] = v30;

        return v16;
      }

      if (v6 >= v7)
      {
        break;
      }

      v9 = *(a4 + v8 + 144);
      v33[8] = *(a4 + v8 + 128);
      v33[9] = v9;
      v34 = *(a4 + v8 + 160);
      v10 = *(a4 + v8 + 80);
      v33[4] = *(a4 + v8 + 64);
      v33[5] = v10;
      v11 = *(a4 + v8 + 112);
      v33[6] = *(a4 + v8 + 96);
      v33[7] = v11;
      v12 = *(a4 + v8 + 16);
      v33[0] = *(a4 + v8);
      v33[1] = v12;
      v13 = *(a4 + v8 + 48);
      v33[2] = *(a4 + v8 + 32);
      v33[3] = v13;
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

      v15 = a4;
      sub_100021248(v33, v32);
      v16 = v5;
      v17 = sub_100092FE0(v31, v35 & 1);
      if (v5)
      {
        sub_1000212F0(v33);

        return v16;
      }

      v19 = v17;
      v20 = v18;
      result = sub_1000212F0(v33);
      ++v6;
      v8 += 168;
      a4 = v15;
      if (v19)
      {
        v21 = v30;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100025340(0, v30[2] + 1, 1, v30);
          v21 = result;
        }

        v23 = v21[2];
        v22 = v21[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          result = sub_100025340((v22 > 1), v23 + 1, 1, v21);
          a4 = v15;
          v24 = v23 + 1;
          v21 = result;
        }

        else
        {
          a4 = v15;
        }

        v21[2] = v24;
        v30 = v21;
        v25 = &v21[2 * v23];
        v25[4] = v19;
        v25[5] = v20;
        v6 = v14;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    sub_10000CA2C();
    v26 = swift_allocError();
    *v27 = 59;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0xE000000000000000;
    v16 = v26;
    swift_willThrow();
    return v16;
  }

  return result;
}

char *sub_1000BE5FC(const IOUSBConfigurationDescriptor *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogID(0);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = result;
    Descriptor = IOUSBGetNextDescriptor(a1, 0);
    bLength = a1->bLength;
    if (Descriptor)
    {
      v10 = Descriptor;
      v11 = 65280;
      v12 = _swiftEmptyArrayStorage;
      v34 = a1;
      do
      {
        v13 = v10->bLength;
        if (!v10->bLength)
        {
          break;
        }

        v14 = __OFADD__(bLength, v13);
        bLength += v13;
        if (v14)
        {
          __break(1u);
          goto LABEL_53;
        }

        v15 = sub_1000A95A4(v10, v11);
        if (v2)
        {

          return v12;
        }

        v17 = v15;
        v18 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_100025818(0, *(v33 + 2) + 1, 1, v33);
        }

        v21 = *(v12 + 2);
        v20 = *(v12 + 3);
        if (v21 >= v20 >> 1)
        {
          v12 = sub_100025818((v20 > 1), v21 + 1, 1, v12);
        }

        *(v12 + 2) = v21 + 1;
        v22 = &v12[16 * v21];
        *(v22 + 4) = v17;
        *(v22 + 20) = v18;
        if (HIBYTE(v18) <= 7u)
        {
          v2 = 0;
          if (HIBYTE(v18) - 2 >= 4)
          {
            if (HIBYTE(v18) == 6)
            {
              a1 = v34;
              if (BYTE1(v11) == 255 || v11)
              {
                goto LABEL_50;
              }

              v11 = 256;
            }

            else
            {
              a1 = v34;
              if (HIBYTE(v18) == 7)
              {
                if (BYTE1(v11) == 255 || BYTE1(v11) && BYTE1(v11) != 1 || v11 != 32)
                {
LABEL_50:

                  sub_10000CA2C();
                  swift_allocError();
                  *v30 = 61;
                  *(v30 + 8) = 0;
                  *(v30 + 16) = 0xE000000000000000;
                  swift_willThrow();
                  return v33;
                }

                v11 = 288;
              }
            }
          }

          else
          {
            v11 = v17[7];
            a1 = v34;
          }
        }

        else
        {
          v2 = 0;
          if (HIBYTE(v18) <= 0xBu)
          {
            a1 = v34;
            if (HIBYTE(v18) == 8)
            {
              if (BYTE1(v11) == 255 || BYTE1(v11) && BYTE1(v11) != 1 || v11 != 48)
              {
                goto LABEL_50;
              }

              v11 = 304;
            }

            else if (HIBYTE(v18) == 10)
            {
              v11 = v17[7] | 0x200u;
            }
          }

          else
          {
            a1 = v34;
            if (HIBYTE(v18) == 12)
            {
              if (v11 != 256)
              {
                goto LABEL_50;
              }
            }

            else if (HIBYTE(v18) == 13)
            {
              if (v11 != 288)
              {
                goto LABEL_50;
              }
            }

            else if (HIBYTE(v18) == 14 && v11 != 304)
            {
              goto LABEL_50;
            }
          }
        }

        v10 = IOUSBGetNextDescriptor(a1, v10);
      }

      while (v10);
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    if (bLength != a1->wTotalLength)
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v23._object = 0x8000000100130340;
      v23._countAndFlagsBits = 0xD000000000000023;
      String.append(_:)(v23);
      v37 = bLength;
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0x4C6C61746F547720;
      v25._object = 0xEE00206874676E65;
      String.append(_:)(v25);
      LOWORD(v37) = a1->wTotalLength;
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      v11 = v35;
      bLength = v36;
      if (qword_100173CB8 != -1)
      {
LABEL_53:
        swift_once();
      }

      v27 = sub_10000A1BC(v31, qword_1001794F0);
      v28 = v32;
      sub_10000A2A4(v27, v32);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v29, qword_100179508);
      sub_100039F58(1, v28, v11, bLength);

      sub_10000C9D0(v28);
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1000BEAA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = (a1 + 41);
  v3 = _swiftEmptyArrayStorage;
  v4 = (a1 + 41);
  do
  {
    v5 = *v4;
    v4 += 16;
    if (!v5)
    {
      v6 = *(v2 - 9);
      if (*(v6 + 4) == 1)
      {
        v7 = *v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_10002501C(0, *(v3 + 2) + 1, 1, v3);
        }

        v9 = *(v3 + 2);
        v8 = *(v3 + 3);
        if (v9 >= v8 >> 1)
        {
          v3 = sub_10002501C((v8 > 1), v9 + 1, 1, v3);
        }

        *(v3 + 2) = v9 + 1;
        *&v3[8 * v9 + 32] = v7;
      }
    }

    v2 = v4;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1000BEB9C(const IOUSBConfigurationDescriptor *a1)
{
  v2 = a1;
  wTotalLength = a1->wTotalLength;
  v4 = sub_1000BE5FC(a1);
  if (v1)
  {
    return v2;
  }

  v5 = v4;
  v7 = sub_1000BEAA8(v4);
  v8 = _s9AUASDCore15DescriptorUtilsV27usbAudioFunctionDescriptorsySaySayAA13USBDescriptorOG07controlG0_SayAF15streamInterface_SayAGG0J10AlternatestG0jG0tGAGFZ_0(v5);

  v9 = *(v8 + 16);
  if (!v9)
  {

    return 0;
  }

  v26 = v7;
  result = sub_1000474A0(0, v9, 0);
  v10 = 0;
  v11 = (v8 + 40);
  while (v10 < *(v8 + 16))
  {
    v12 = v9;
    v13 = *(v11 - 1);
    v14 = *v11;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    sub_100093EF4(v13, v14, v26, v27);

    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_1000474A0((v15 > 1), v16 + 1, 1);
    }

    ++v10;
    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[21 * v16];
    v18 = v27[0];
    v19 = v27[2];
    *(v17 + 3) = v27[1];
    *(v17 + 4) = v19;
    *(v17 + 2) = v18;
    v20 = v27[3];
    v21 = v27[4];
    v22 = v27[6];
    *(v17 + 7) = v27[5];
    *(v17 + 8) = v22;
    *(v17 + 5) = v20;
    *(v17 + 6) = v21;
    v23 = v27[7];
    v24 = v27[8];
    v25 = v27[9];
    v17[24] = v28;
    *(v17 + 10) = v24;
    *(v17 + 11) = v25;
    *(v17 + 9) = v23;
    v11 += 2;
    v9 = v12;
    if (v12 == v10)
    {

      return v2;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1000BEE9C(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_10000D040(v17, &qword_100175790, &unk_100121070);
    goto LABEL_6;
  }

  v19 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16[3] = a4(a3);
  v16[4] = a5;
  v16[0] = v5;

  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(a1 & 0xFFFFFF, v16, a2, ObjectType, v19, v17);
  swift_unknownObjectRelease();
  sub_10000CE78(v16);
  if (!v6)
  {
    sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
    if (swift_dynamicCast())
    {
      return LOBYTE(v16[0]) != 0;
    }

LABEL_6:
    sub_10000CA2C();
    swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  return v13;
}

unint64_t sub_1000BF02C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v15 - v9;
  result = (*(v11 + 56))(v8);
  if (result >> 16)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  result = 1936745574;
  if (v13 <= 0x301u)
  {
    if (v13 == 513 || v13 == 518)
    {
      return 1835623282;
    }

    if (v13 == 769)
    {
      return 1936747378;
    }

    return 0;
  }

  if (v13 > 0x601u)
  {
    if (v13 == 1538)
    {
      return result;
    }

    if (v13 == 1539)
    {
      return 1818848869;
    }

    return 0;
  }

  if (v13 == 770)
  {
    return 1751412840;
  }

  if (v13 != 1026)
  {
    return 0;
  }

  v14 = *(v3 + 16);
  v14(v10, v1, a1);
  type metadata accessor for ActiveOutputTerminal();
  if (swift_dynamicCast())
  {

    return 1751412840;
  }

  v14(v7, v1, a1);
  type metadata accessor for ActiveInputTerminal();
  result = swift_dynamicCast();
  if (result)
  {

    return 1752000867;
  }

  return result;
}

uint64_t sub_1000BF228(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6);
  v2 = v7;
  v3 = v8;
  sub_10001EAB8(v6, v7);
  v4 = (*(v3 + 16))(v2, v3);
  sub_10000CE78(v6);
  return v4;
}

uint64_t ActiveTerminalEntity.clockEntityID.getter(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a2 + 8) + 8) + 16))())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(ObjectType, v5);
    swift_unknownObjectRelease();
    v8 = *(v7 + 112);
    v24[4] = *(v7 + 96);
    v24[5] = v8;
    v24[6] = *(v7 + 128);
    v25 = *(v7 + 144);
    v9 = *(v7 + 48);
    v24[0] = *(v7 + 32);
    v10 = *(v7 + 64);
    v11 = *(v7 + 80);
    v24[1] = v9;
    v24[2] = v10;
    v24[3] = v11;
    sub_100057294(v24, v21);

    v12 = *(a2 + 16);
    v12(v21, a1, a2);
    v13 = v22;
    v14 = v23;
    sub_10001EAB8(v21, v22);
    v15 = (*(v14 + 48))(v13, v14);
    v16 = sub_1000710DC(v15);
    LOBYTE(v13) = v17;
    sub_1000572F0(v24);
    sub_10000CE78(v21);
    if ((v13 & 1) == 0)
    {
      return v16;
    }
  }

  else
  {
    v12 = *(a2 + 16);
  }

  v12(v21, a1, a2);
  v18 = v22;
  v19 = v23;
  sub_10001EAB8(v21, v22);
  v16 = (*(v19 + 48))(v18, v19);
  sub_10000CE78(v21);
  return v16;
}

uint64_t ActiveTerminalEntity.clock.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  result = v4();
  if (result)
  {
    result = (*(*(*(a2 + 8) + 8) + 16))(a1);
    if (result)
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = (v4)(a1, a2);
      sub_100052184(v9, ObjectType, v7, v11);
      swift_unknownObjectRelease();
      if (v12)
      {
        sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100175360, &qword_100121340);
        if (swift_dynamicCast())
        {
          return v10;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        sub_10000D040(v11, &qword_100174FB0, &unk_100120FC0);
        return 0;
      }
    }
  }

  return result;
}

uint64_t ActiveTerminalEntity.latencyControlSelector.getter(uint64_t a1, uint64_t a2)
{
  result = (*(*(*(a2 + 8) + 8) + 16))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    LODWORD(v4) = (*(v4 + 40))(ObjectType, v4);
    swift_unknownObjectRelease();
    if (v4 == 32)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1000BF644(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LogID(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CB8 != -1)
  {
    v38 = v10;
    swift_once();
    v10 = v38;
  }

  v13 = sub_10000A1BC(v10, qword_1001794F0);
  sub_10000A2A4(v13, v12);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v14, qword_100179508);
  sub_100039AA0(2, v12, 0xD00000000000001BLL, 0x8000000100130610);
  sub_10000C9D0(v12);
  if (a1)
  {
    sub_10000A2A4(v13, v12);
    sub_100039F58(2, v12, 0xD000000000000025, 0x8000000100130630);
    sub_10000C9D0(v12);
    sub_10000CA2C();
    swift_allocError();
    *v15 = 2;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  else if ((*(*(*(a3 + 8) + 8) + 16))(a2))
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    v44 = a2;
    v45 = a3;
    v19 = sub_10007D2E8(&aBlock);
    (*(*(a2 - 1) + 16))(v19, v4, a2);
    v20 = v39[1];
    sub_100055F8C(&aBlock, ObjectType, v17);
    v22 = v21;
    swift_unknownObjectRelease();
    sub_10000CE78(&aBlock);
    if (!v20)
    {
      if (v22)
      {
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        aBlock = 0xD00000000000002CLL;
        v42 = 0x8000000100130660;
        v24 = v22;
        v25._countAndFlagsBits = 8236;
        v25._object = 0xE200000000000000;
        String.append(_:)(v25);
        v26._countAndFlagsBits = 0xD00000000000001ELL;
        v26._object = 0x8000000100130690;
        String.append(_:)(v26);
        v27._countAndFlagsBits = 2108704;
        v27._object = 0xE300000000000000;
        String.append(_:)(v27);
        v47 = 86;
        v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v28);

        sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v42, &v24[OBJC_IVAR___AUAAudioDevice_logID]);

        v29 = *&v24[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
        v30 = swift_allocObject();
        v30[2] = sub_1000C3708;
        v30[3] = v23;
        aBlock = sub_10000CF5C;
        v42 = v30;
        v31 = *(v29 + 16);
        v32 = __chkstk_darwin(v30);
        v39[-2] = v29;
        v39[-1] = &aBlock;
        __chkstk_darwin(v32);
        v39[-2] = sub_10000CF64;
        v39[-1] = v33;

        os_unfair_lock_lock(v31 + 4);
        sub_10000CF80(&v47);
        os_unfair_lock_unlock(v31 + 4);
        LOBYTE(v29) = v47;

        if (v29)
        {
          v34 = swift_allocObject();
          *(v34 + 16) = v24;
          v45 = sub_10000CFD4;
          v46 = v34;
          aBlock = _NSConcreteStackBlock;
          v42 = 1107296256;
          v43 = sub_1000172D4;
          v44 = &unk_100164F20;
          v35 = _Block_copy(&aBlock);
          v36 = v24;

          v37 = type metadata accessor for AUAAudioDevice();
          v40.receiver = v36;
          v40.super_class = v37;
          objc_msgSendSuper2(&v40, "requestConfigurationChange:", v35);
          _Block_release(v35);
        }
      }
    }
  }
}

void sub_1000BFB94()
{
  v0 = type metadata accessor for LogID(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CB8 != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  v5 = sub_10000A1BC(v2, qword_1001794F0);
  sub_10000A2A4(v5, v4);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v6, qword_100179508);
  sub_100039AA0(2, v4, 0xD000000000000020, 0x80000001001306B0);
  sub_10000C9D0(v4);
  AUAAudioDevice.publishStreamFormats()();
  if (v7)
  {
    sub_10000A2A4(v5, v4);
    sub_100039F58(2, v4, 0xD00000000000001ALL, 0x80000001001306E0);

    sub_10000C9D0(v4);
  }
}

uint64_t ActiveTerminalEntity.name.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a2 + 8) + 8);
  (*(v9 + 8))(v25, a1, v9);
  v10 = v26;
  v11 = v27;
  sub_10001EAB8(v25, v26);
  v12 = (*(v11 + 32))(v10, v11);
  if (BYTE2(v12) == 255)
  {
    sub_10000CE78(v25);
  }

  else
  {
    v13 = v12;
    sub_10000CE78(v25);
    if ((*(v9 + 16))(a1, v9))
    {
      v15 = v14;
      ObjectType = swift_getObjectType();
      v10 = (*(v15 + 16))(ObjectType, v15);
      swift_unknownObjectRelease();
      if (v10)
      {
        if (*&v10[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject])
        {
          v17 = sub_1000F8280((v13 & 0x1FFFF));
          if (v18)
          {
            v25[0] = v17;
            v25[1] = v18;
            v24[3] = 0;
            v24[4] = 0xE100000000000000;
            v24[1] = 0;
            v24[2] = 0xE000000000000000;
            sub_10001EA64();
            v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

            return v21;
          }
        }
      }
    }
  }

  while (1)
  {
    v23 = (*(a2 + 56))(a1, a2);
    if (!(v23 >> 16))
    {
      break;
    }

    __break(1u);
    swift_once();
    v19 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v19, v8);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v20, qword_100179508);
    sub_100039F58(1, v8, v2, v10);

    sub_10000C9D0(v8);
  }

  if (v23 > 0x301u)
  {
    if (v23 > 0x601u)
    {
      switch(v23)
      {
        case 0x602u:
          return 0xD000000000000020;
        case 0x603u:
          return 0xD000000000000017;
        case 0x605u:
          return 0xD000000000000018;
      }
    }

    else
    {
      switch(v23)
      {
        case 0x302u:
          return 0x6E6F687064616548;
        case 0x402u:
          return 0xD000000000000015;
        case 0x403u:
          return 0x7072656B61657053;
      }
    }
  }

  else if (v23 > 0x205u)
  {
    switch(v23)
    {
      case 0x206u:
        return 0xD00000000000001BLL;
      case 0x300u:
        return 0xD000000000000010;
      case 0x301u:
        return 0x72656B61657053;
    }
  }

  else
  {
    switch(v23)
    {
      case 0x101u:
        return 0x6572745320425355;
      case 0x200u:
        return 0x6E55207475706E49;
      case 0x201u:
        return 0x6F68706F7263694DLL;
    }
  }

  return 0xD000000000000015;
}

unint64_t ActiveTerminalEntity.pathName.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 56))();
  if (result >> 16)
  {
    __break(1u);
  }

  else if (result == 257)
  {
    return 0;
  }

  else
  {
    v5 = *(a2 + 8);
    result = (*(*(v5 + 8) + 56))(a1);
    if (!v6)
    {
      v7 = *(v5 + 24);
      v7(&v11, a1, v5);
      if (v12)
      {
        sub_10001EFE4(&v11, v13);
        v8 = v14;
        v9 = v15;
        sub_10001EAB8(v13, v14);
        v10 = (*(v9 + 72))(v8, v9);
        sub_10000CE78(v13);
        return v10;
      }

      else
      {
        sub_10000D040(&v11, &qword_100174F70, &qword_100120FD0);
        v7(v13, a1, v5);
        sub_10000D040(v13, &qword_100174F70, &qword_100120FD0);
        return 0xD000000000000022;
      }
    }
  }

  return result;
}

uint64_t (*ActiveInputTerminal.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

uint64_t ActiveInputTerminal.cluster.getter()
{
  v1 = *(v0 + 144);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);

  return v2;
}

uint64_t sub_1000C05C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 112);
  v13[4] = *(v2 + 96);
  v13[5] = v4;
  v14 = *(v2 + 128);
  v5 = *(v2 + 48);
  v13[0] = *(v2 + 32);
  v13[1] = v5;
  v6 = *(v2 + 80);
  v13[2] = *(v2 + 64);
  v13[3] = v6;
  a2[3] = &type metadata for InputTerminal;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = *(v2 + 112);
  *(v7 + 80) = *(v2 + 96);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(v2 + 128);
  v9 = *(v2 + 48);
  *(v7 + 16) = *(v2 + 32);
  *(v7 + 32) = v9;
  v10 = *(v2 + 80);
  *(v7 + 48) = *(v2 + 64);
  *(v7 + 64) = v10;
  return sub_1000767C0(v13, v12);
}

void *ActiveInputTerminal.audioControlsAndProperties(scope:for:)(int a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v2;
  }

  v2 = Strong;
  v6 = v3[3];
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 16))(ObjectType, v6);
  if (!v8)
  {
    sub_10000CA2C();
    swift_allocError();
    *v27 = 58;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    return v2;
  }

  v2 = _swiftEmptyArrayStorage;
  v9 = v3[19];
  if (v9 && (v31 = *(v9 + 16)) != 0)
  {
    v10 = 0;
    v29 = v3[19];
    v30 = v9 + 32;
    while (v10 < *(v9 + 16))
    {
      v11 = (v30 + 3 * v10);
      v12 = *(v11 + 2);
      v13 = *v11 | (v12 << 16);
      v14 = ((v12 >> 2) & 0x3C | (*v11 >> 6)) == 6 && a1 == 1768845428;
      v33 = v10;
      if (v14)
      {
        v15 = v3[18];
        if (*(v15 + 16))
        {
          v16 = *(*(v15 + 40) + 16);
          if (!v16)
          {
            goto LABEL_30;
          }

          v17 = type metadata accessor for AUAEntityBooleanControl();
          v18 = -v16;
          v19 = 1;
          do
          {
            v20 = objc_allocWithZone(v17);
            v21 = a2;

            v23 = sub_1000C13BC(v22, v19, v13, 1768845428, 1885888878, a2, v20);
            if (v23)
            {
              v24 = v23;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v2 = _swiftEmptyArrayStorage;
            }

            ++v19;
          }

          while (v18 + v19 != 1);
        }
      }

      v10 = v33 + 1;
      v9 = v29;
      if (v33 + 1 == v31)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_21:
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      v25 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
LABEL_23:
  swift_unknownObjectRelease();
  if (!v25)
  {

    return 0;
  }

  return v2;
}

void *ActiveInputTerminal.deinit()
{
  sub_100024174((v0 + 2));
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[16];

  sub_100076B24(v2, v3);

  v6 = v0[18];

  v7 = v0[19];

  return v0;
}

uint64_t ActiveInputTerminal.__deallocating_deinit()
{
  sub_100024174((v0 + 2));
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[16];

  sub_100076B24(v2, v3);

  v6 = v0[18];

  v7 = v0[19];

  return swift_deallocClassInstance();
}

uint64_t sub_1000C0AA8()
{
  v1 = *(*v0 + 144);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);

  return v2;
}

uint64_t sub_1000C0B2C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 64);
  v7 = *(v4 + 80);
  v8 = *(v4 + 96);
  v9 = *(v4 + 112);
  v15 = *(v4 + 128);
  v14[2] = v6;
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v10 = *(v4 + 48);
  v14[0] = v5;
  v14[1] = v10;
  a2[3] = &type metadata for InputTerminal;
  a2[4] = a1();
  v11 = swift_allocObject();
  *a2 = v11;
  memmove((v11 + 16), (v4 + 32), 0x68uLL);
  return sub_1000767C0(v14, v13);
}

uint64_t (*sub_1000C0BD4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t (*ActiveOutputTerminal.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100026374;
}

uint64_t sub_1000C0DCC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = v2[5];
  v13[2] = v2[4];
  v13[3] = v4;
  v5 = v2[7];
  v13[4] = v2[6];
  v13[5] = v5;
  v6 = v2[3];
  v13[0] = v2[2];
  v13[1] = v6;
  a2[3] = &type metadata for OutputTerminal;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = v2[5];
  v7[3] = v2[4];
  v7[4] = v8;
  v9 = v2[7];
  v7[5] = v2[6];
  v7[6] = v9;
  v10 = v2[3];
  v7[1] = v2[2];
  v7[2] = v10;
  return sub_1000766B0(v13, &v12);
}

uint64_t ActiveOutputTerminal.sourceID.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t ActiveOutputTerminal.cluster.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(v0 + 80))
    {
      __break(1u);
      return result;
    }

    v2 = *(v0 + 24);
    v3 = *(v0 + 72);
    ObjectType = swift_getObjectType();
    sub_100052184(v3, ObjectType, v2, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
  }

  sub_10001ED24(v14, v11);
  if (v12)
  {
    sub_100001AB4(&qword_100174F60, &qword_100121090);
    sub_100001AB4(&qword_100174F68, &unk_100120B90);
    if (swift_dynamicCast())
    {
      if (*(&v9 + 1))
      {
        sub_10001EFE4(&v8, v11);
        v5 = v12;
        v6 = v13;
        sub_10001EAB8(v11, v12);
        v7 = (*(v6 + 48))(v5, v6);
        sub_10000D040(v14, &qword_100174FB0, &unk_100120FC0);
        sub_10000CE78(v11);
        return v7;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_10000D040(v11, &qword_100174FB0, &unk_100120FC0);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_10000D040(v14, &qword_100174FB0, &unk_100120FC0);
  sub_10000D040(&v8, &qword_100174F70, &qword_100120FD0);
  return 0;
}

uint64_t sub_1000C1050(char *a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v7 = a2[1];
  *(v3 + 32) = *a2;
  *(v3 + 48) = v7;
  v8 = a2[5];
  *(v3 + 96) = a2[4];
  *(v3 + 112) = v8;
  v9 = a2[3];
  *(v3 + 64) = a2[2];
  *(v3 + 80) = v9;
  if (!*(a3 + 16))
  {

    a3 = 0;
  }

  v10 = *a2;
  *(v3 + 128) = a3;
  if (v10 == 257 || (v11 = *&a1[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList]) == 0)
  {
  }

  else
  {
    v12 = sub_1000AA808(0xFu, v11);

    if (v12)
    {
      v10 = 1026;
    }
  }

  *(v3 + 136) = v10;
  return v3;
}

void *ActiveOutputTerminal.deinit()
{
  sub_100024174((v0 + 2));
  v1 = v0[12];
  v2 = v0[15];

  v3 = v0[16];

  return v0;
}

uint64_t ActiveOutputTerminal.__deallocating_deinit()
{
  sub_100024174((v0 + 2));
  v1 = v0[12];
  v2 = v0[15];

  v3 = v0[16];

  return swift_deallocClassInstance();
}

uint64_t sub_1000C1224()
{
  result = *(*v0 + 72);
  v2 = *(*v0 + 80);
  return result;
}

uint64_t sub_1000C1258@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[7];
  v12[4] = v4[6];
  v12[5] = v7;
  v12[2] = v6;
  v12[3] = v5;
  v8 = v4[3];
  v12[0] = v4[2];
  v12[1] = v8;
  a2[3] = &type metadata for OutputTerminal;
  a2[4] = a1();
  v9 = swift_allocObject();
  *a2 = v9;
  memmove((v9 + 16), v4 + 2, 0x60uLL);
  return sub_1000766B0(v12, &v11);
}

uint64_t (*sub_1000C12E8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

void sub_1000C2F74(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v28 = type metadata accessor for LogID(0);
  v8 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a4 + 8) + 8);
  if (!(v10)[2](a3, v10) || (v12 = v11, ObjectType = swift_getObjectType(), v14 = (*(v12 + 240))(a2, ObjectType, v12), swift_unknownObjectRelease(), v14 == 7))
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v15._countAndFlagsBits = 0xD000000000000016;
    v15._object = 0x80000001001305A0;
    String.append(_:)(v15);
    v32 = (v10)[6](a3, v10);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0x69766564206E6F20;
    v17._object = 0xEB00000000206563;
    String.append(_:)(v17);
    v18._countAndFlagsBits = (v10)[8](a3, v10);
    String.append(_:)(v18);

    v19._object = 0x80000001001305C0;
    v19._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v19);
    v32 = a2;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);
  }

  else
  {
    if (v14 == 1)
    {
      sub_1000BF644(a1, a3, a4);
      return;
    }

    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v21._countAndFlagsBits = 0xD000000000000020;
    v21._object = 0x80000001001305E0;
    String.append(_:)(v21);
    LOBYTE(v32) = v14;
    _print_unlocked<A, B>(_:_:)();
  }

  v22 = v30;
  v23 = v31;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A1BC(v28, qword_1001794F0);
  v25 = v29;
  sub_10000A2A4(v24, v29);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v26, qword_100179508);
  sub_100039F58(2, v25, v22, v23);

  sub_10000C9D0(v25);
  sub_10000CA2C();
  swift_allocError();
  *v27 = 2;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0xE000000000000000;
  swift_willThrow();
}

uint64_t sub_1000C3344()
{
  v1 = v0[10];

  v2 = v0[12];
  if (v2 >> 60 != 15)
  {
    sub_10007676C(v0[11], v2);
  }

  v3 = v0[13];

  v4 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_1000C33A4()
{
  result = qword_100177C40;
  if (!qword_100177C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C40);
  }

  return result;
}

unint64_t sub_1000C33F8()
{
  result = qword_100177C48;
  if (!qword_100177C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C48);
  }

  return result;
}

uint64_t sub_1000C344C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_1000C348C()
{
  result = qword_100177C50;
  if (!qword_100177C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C50);
  }

  return result;
}

unint64_t sub_1000C34E4()
{
  result = qword_100177C58;
  if (!qword_100177C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AUATerminalControlSelector(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AUATerminalControlSelector(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000C36D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C3710()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C3748(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000C3D88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_1000C3DF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = v0[6];
  v7 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_100124BFA[v1]);
  Hasher._combine(_:)(word_100124C42[v2]);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void sub_1000C3EC4()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = v0[6];
  v6 = *(v0 + 8);
  Hasher._combine(_:)(word_100124BFA[*v0]);
  Hasher._combine(_:)(word_100124C42[v1]);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v6);
}

Swift::Int sub_1000C3F64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = v0[6];
  v7 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_100124BFA[v1]);
  Hasher._combine(_:)(word_100124C42[v2]);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

double sub_1000C4074()
{
  sub_100001AB4(&qword_1001781C8, &qword_100124B18);
  v0 = swift_allocObject();
  *&result = 4;
  *(v0 + 16) = xmmword_100120A30;
  *(v0 + 32) = 9480;
  *(v0 + 34) = -65536;
  *(v0 + 38) = 2;
  *(v0 + 40) = 1;
  *(v0 + 48) = -6400;
  *(v0 + 56) = 9480;
  *(v0 + 58) = -65536;
  *(v0 + 62) = 2;
  *(v0 + 64) = 2;
  *(v0 + 72) = -5120;
  *(v0 + 80) = 9736;
  *(v0 + 82) = -65536;
  *(v0 + 86) = 2;
  *(v0 + 88) = 1;
  *(v0 + 96) = -5120;
  *(v0 + 104) = 9736;
  *(v0 + 106) = -65536;
  *(v0 + 110) = 2;
  *(v0 + 112) = 2;
  *(v0 + 120) = -5120;
  qword_1001795C8 = v0;
  return result;
}

uint64_t (*ActiveFeatureUnit.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

uint64_t sub_1000C41E8()
{
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000C4248@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 80);
  v11[2] = *(v2 + 64);
  v11[3] = v4;
  v12 = *(v2 + 96);
  v5 = *(v2 + 48);
  v11[0] = *(v2 + 32);
  v11[1] = v5;
  a2[3] = &type metadata for FeatureUnit;
  a2[4] = a1();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = *(v2 + 80);
  *(v6 + 48) = *(v2 + 64);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v2 + 96);
  v8 = *(v2 + 48);
  *(v6 + 16) = *(v2 + 32);
  *(v6 + 32) = v8;
  return sub_100076614(v11, v10);
}

unint64_t sub_1000C42DC()
{
  result = qword_100177FD0;
  if (!qword_100177FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177FD0);
  }

  return result;
}

uint64_t ActiveFeatureUnit.sourceID.getter()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  else
  {
    return *(v0 + 32);
  }
}

void ActiveFeatureUnit.start(on:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 16))(ObjectType, a2);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (qword_100173CF0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v8 = qword_1001795C8;
  v9 = *(qword_1001795C8 + 16);
  if (!v9)
  {
LABEL_26:

    return;
  }

  v10 = 0;
  v11 = OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor;
  v12 = (qword_1001795C8 + 32);
  v30 = v3;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v13 = *&v7[v11];
    if (word_100124BFA[*v12] == v13[4] && word_100124C42[v12[1]] == v13[5])
    {
      v14 = v13[6];
      v15 = v14 >= *(v12 + 1) && *(v12 + 2) >= v14;
      if (v15 && *(v3 + 48) == v12[6])
      {
        break;
      }
    }

LABEL_7:
    ++v10;
    v12 += 24;
    if (v9 == v10)
    {
      goto LABEL_26;
    }
  }

  v16 = *(v12 + 1);
  v33 = *(v12 + 8);
  swift_beginAccess();
  v17 = *(v3 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  v32 = v16;
  v19 = sub_10001EF4C(v16);
  v21 = v18[2];
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    goto LABEL_29;
  }

  v25 = v20;
  if (v18[3] >= v24)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = v19;
      sub_1000CCC34();
      v19 = v29;
    }
  }

  else
  {
    sub_1000CC2C8(v24, isUniquelyReferenced_nonNull_native);
    v19 = sub_10001EF4C(v16);
    if ((v25 & 1) != (v26 & 1))
    {
      goto LABEL_32;
    }
  }

  if (v25)
  {
    *(v18[7] + 2 * v19) = v33;
LABEL_6:
    v3 = v30;
    *(v30 + 112) = v18;
    swift_endAccess();
    goto LABEL_7;
  }

  v18[(v19 >> 6) + 8] |= 1 << v19;
  *(v18[6] + 8 * v19) = v32;
  *(v18[7] + 2 * v19) = v33;
  v27 = v18[2];
  v23 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v23)
  {
    v18[2] = v28;
    goto LABEL_6;
  }

  __break(1u);
LABEL_32:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void ActiveFeatureUnit.audioControlsAndProperties(scope:for:)(int a1, uint64_t a2)
{
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 1735159650)
  {
    v60 = _swiftEmptyArrayStorage;
    v59 = _swiftEmptyArrayStorage;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong() || (v9 = v2[3], ObjectType = swift_getObjectType(), v11 = (*(v9 + 16))(ObjectType, v9), swift_unknownObjectRelease(), !v11))
    {
      sub_10000CA2C();
      swift_allocError();
      *v19 = 58;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0xE000000000000000;
      swift_willThrow();
      return;
    }

    v12 = __chkstk_darwin(v2[10]);
    v52[-6] = v11;
    LODWORD(v52[-5]) = a1;
    v52[-4] = &v60;
    v52[-3] = v2;
    v52[-2] = a2;
    v52[-1] = &v59;
    v52[2] = sub_1000CDF98(v12, sub_1000CCD80);
    v13 = v60;
    if (!v60[2] || (v52[1] = v59, !v59[2]))
    {

      return;
    }

    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(74);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = v2[3];
      v15 = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(v15, v14);
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0xE700000000000000;
      active = 0x6E776F6E6B6E55;
    }

    v20._countAndFlagsBits = active;
    v20._object = v18;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 0xD000000000000022;
    v21._object = 0x80000001001309C0;
    String.append(_:)(v21);
    v56 = v2[6];
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._object = 0x80000001001309F0;
    v23._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v23);
    v24._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0x68436E696167205DLL;
    v25._object = 0xEF5B736C656E6E61;
    String.append(_:)(v25);
    v26._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 93;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v28 = v57;
    v29 = v58;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v30 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v30, v8);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v31, qword_100179508);
    sub_100039AA0(2, v8, v28, v29);

    sub_10000C9D0(v8);
    v52[0] = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v33 = type metadata accessor for AUASidetoneSubstituteProperty();
    v34 = objc_allocWithZone(v33);
    *&v34[OBJC_IVAR____TtC9AUASDCore29AUASidetoneSubstituteProperty_channels] = isa;
    v35 = objc_allocWithZone(ASDPropertyAddress);
    v36 = isa;
    v37 = [v35 initWithSelector:1634952563 scope:1886679669 element:0];
    v55.receiver = v34;
    v55.super_class = v33;
    v38 = objc_msgSendSuper2(&v55, "initWithAddress:propertyDataType:qualifierDataType:", v37, 1886155636, 0);

    if (v38)
    {
      v39 = v38;
      [v39 setSettable:0];

      v40 = Array._bridgeToObjectiveC()().super.isa;
      v41 = objc_allocWithZone(v33);
      *&v41[OBJC_IVAR____TtC9AUASDCore29AUASidetoneSubstituteProperty_channels] = v40;
      v42 = objc_allocWithZone(ASDPropertyAddress);
      v43 = v40;
      v44 = [v42 initWithSelector:1634956915 scope:1886679669 element:0];
      v54.receiver = v41;
      v54.super_class = v33;
      v45 = objc_msgSendSuper2(&v54, "initWithAddress:propertyDataType:qualifierDataType:", v44, 1886155636, 0);

      if (v45)
      {
        v46 = v45;
        [v46 setSettable:0];

        v47 = type metadata accessor for AUASidetoneSubstituteEnable();
        v48 = objc_allocWithZone(v47);
        v49 = [objc_allocWithZone(ASDPropertyAddress) initWithSelector:1634956133 scope:1886679669 element:0];
        v53.receiver = v48;
        v53.super_class = v47;
        v50 = objc_msgSendSuper2(&v53, "initWithAddress:propertyDataType:qualifierDataType:", v49, 1886155636, 0);

        if (v50)
        {
          [v50 setSettable:0];
          sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_100124960;
          *(v51 + 32) = v39;
          *(v51 + 40) = v46;
          *(v51 + 48) = v50;

          return;
        }

LABEL_22:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }
}

void *sub_1000C4CC0(const char *a1, uint64_t a2, void *a3, unsigned int a4, unint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v12 = _swiftEmptyArrayStorage;
  v25 = _swiftEmptyArrayStorage;
  v13 = *(a2 + 16);
  v14 = a3;

  v15 = a7;
  if (v13)
  {
    v16 = (a2 + 32);
    do
    {
      v17 = *v16;
      v24 = *(v16 + 2);
      v23 = v17;
      sub_1000C4DFC(&v23, v14, a4, a5, a1, a6, v15, a8, &v22);
      if (v22)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v25;
      }

      v16 = (v16 + 3);
      --v13;
    }

    while (v13);
  }

  return v12;
}

uint64_t sub_1000C4DFC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, unint64_t a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, char *a8@<X7>, objc_class *a9@<X8>)
{
  v123 = a7;
  v124 = a6;
  v130 = a5;
  v120 = type metadata accessor for LogID(0);
  v15 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v121 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1 | (*(a1 + 2) << 16);
  LOBYTE(a1) = LockDelay.units.getter(*a1);
  if ((a1 & 1) == 0)
  {
    v19 = *(a2 + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
    if (v19)
    {
      if (sub_1000AA808(0x14u, v19))
      {
        result = 0;
LABEL_53:
        *a9 = result;
        return result;
      }
    }
  }

  v122 = a3;
  v125 = v9;
  USBDescriptorControl.label.getter(v17);
  v21 = (v17 >> 18) & 0x3C | (v17 >> 6);
  if (v21 <= 16)
  {
    if (v21 == 7)
    {

      v24 = v122;
      if (v122 == 1886679669)
      {
        a2 = *a4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = a2;
        a8 = a9;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_42;
        }

        goto LABEL_76;
      }

      goto LABEL_45;
    }

    if (v21 != 8)
    {
      goto LABEL_47;
    }

    v24 = v122;
    a4 = v130;
    if (v122 == 1886679669)
    {
      a2 = *a8;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = a2;
      v35 = a9;
      if ((v34 & 1) == 0)
      {
        a2 = sub_100025BB8(0, *(a2 + 16) + 1, 1, a2);
        *a8 = a2;
      }

      v37 = *(a2 + 16);
      v36 = *(a2 + 24);
      if (v37 >= v36 >> 1)
      {
        a2 = sub_100025BB8((v36 > 1), v37 + 1, 1, a2);
        *a8 = a2;
      }

      *(a2 + 16) = v37 + 1;
      a4 = v130;
      *(a2 + 8 * v37 + 32) = v130;
      a9 = v35;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_74;
    }

    v38 = objc_allocWithZone(type metadata accessor for AUAGainControl());
    v39 = v123;
    v40 = v123;

    v42 = a4;
    v43 = v17;
    v44 = v24;
LABEL_32:
    result = sub_1000C80F0(v41, v42, v43, v44, v39);
    goto LABEL_53;
  }

  if (v21 == 17)
  {
    v119 = a9;
    v121 = " trying to force unmute";
    sub_100001AB4(&unk_100177280, &unk_100120B70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10011DE90;
    *(inited + 32) = 0x4E6C6F72746E6F63;
    *(inited + 40) = 0xEB00000000656D61;
    v46 = objc_allocWithZone(NSString);
    v47 = String._bridgeToObjectiveC()();

    v48 = [v46 initWithString:v47];

    *(inited + 48) = v48;
    v49 = sub_10000AB64(inited);
    swift_setDeallocating();
    sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
    sub_1000FC32C(0xD000000000000033, v121 | 0x8000000000000000, v49);

    if (qword_100173CF8 != -1)
    {
      swift_once();
    }

    v50 = *(qword_100179640 + 16);
    v51 = v122;
    if (!v50)
    {
      goto LABEL_70;
    }

    v52 = v50;
    v53 = String._bridgeToObjectiveC()();
    v54 = [v52 BOOLForKey:v53];

    result = 0;
    if (!v54 || v51 != 1768845428)
    {
      a9 = v119;
      goto LABEL_53;
    }

    a9 = v119;
    v55 = v130;
    if ((v130 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_81;
    }

    v56 = objc_allocWithZone(type metadata accessor for AUAGainControl());
    v39 = v123;
    v57 = v123;

    v42 = v55;
    v43 = v17;
    v44 = 1768845428;
    goto LABEL_32;
  }

  if (v21 == 19)
  {
    v119 = a9;
    v121 = " trying to force unmute";
    sub_100001AB4(&unk_100177280, &unk_100120B70);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_10011DE90;
    *(v58 + 32) = 0x4E6C6F72746E6F63;
    *(v58 + 40) = 0xEB00000000656D61;
    v59 = objc_allocWithZone(NSString);
    a8 = String._bridgeToObjectiveC()();

    v60 = [v59 initWithString:a8];

    *(v58 + 48) = v60;
    v61 = sub_10000AB64(v58);
    swift_setDeallocating();
    sub_10000D040(v58 + 32, &qword_100174A38, &qword_100120180);
    sub_1000FC32C(0xD000000000000033, v121 | 0x8000000000000000, v61);

    if (qword_100173CF8 != -1)
    {
      swift_once();
    }

    v62 = qword_100179640;
    v63 = *(qword_100179640 + 16);
    v24 = v122;
    if (v63)
    {
      a8 = "on Feature Unit control: ";
      v64 = v63;
      a2 = 0xD000000000000019;
      v65 = String._bridgeToObjectiveC()();
      v66 = [v64 objectForKey:v65];

      if (v66)
      {
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        sub_10000D040(&v126, &unk_100174A20, &unk_100120170);
        v67 = *(v62 + 16);
        if (!v67 || (v68 = v67, a2 = String._bridgeToObjectiveC()(), v69 = [v68 BOOLForKey:a2], v68, a2, !v69))
        {
LABEL_39:
          result = 0;
LABEL_52:
          a9 = v119;
          goto LABEL_53;
        }
      }

      else
      {

        v126 = 0u;
        v127 = 0u;
        sub_10000D040(&v126, &unk_100174A20, &unk_100120170);
      }
    }

    a4 = v130;
    if ((v130 & 0x8000000000000000) == 0)
    {
      v82 = objc_allocWithZone(type metadata accessor for AUAEntityBooleanControl());
      v83 = v123;
      v84 = v123;

      result = sub_1000C2194(v85, a4, v17, v24, 1885893481, v83, v82);
      goto LABEL_52;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v21 != 20)
  {
LABEL_47:
    v130 = " trying to force unmute";
    sub_100001AB4(&unk_100177280, &unk_100120B70);
    v77 = swift_initStackObject();
    *(v77 + 16) = xmmword_10011DE90;
    *(v77 + 32) = 0x4E6C6F72746E6F63;
    *(v77 + 40) = 0xEB00000000656D61;
    v78 = objc_allocWithZone(NSString);
    v79 = String._bridgeToObjectiveC()();

    v80 = [v78 initWithString:v79];

    *(v77 + 48) = v80;
    v81 = sub_10000AB64(v77);
    swift_setDeallocating();
    sub_10000D040(v77 + 32, &qword_100174A38, &qword_100120180);
    sub_1000FC32C(0xD000000000000033, v130 | 0x8000000000000000, v81);

    result = 0;
    goto LABEL_53;
  }

  v118 = " trying to force unmute";
  v119 = a9;
  sub_100001AB4(&unk_100177280, &unk_100120B70);
  v22 = swift_initStackObject();
  v117 = xmmword_10011DE90;
  *(v22 + 16) = xmmword_10011DE90;
  *(v22 + 32) = 0x4E6C6F72746E6F63;
  a8 = (v22 + 32);
  *(v22 + 40) = 0xEB00000000656D61;
  v23 = objc_allocWithZone(NSString);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 initWithString:v24];

  *(v22 + 48) = v25;
  v26 = sub_10000AB64(v22);
  swift_setDeallocating();
  sub_10000D040(v22 + 32, &qword_100174A38, &qword_100120180);
  sub_1000FC32C(0xD000000000000033, v118 | 0x8000000000000000, v26);

  if (qword_100173CF8 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v27 = qword_100179640;
    v28 = *(qword_100179640 + 16);
    if (v28)
    {
      a2 = 0x46504832636461;
      v29 = v28;
      v30 = String._bridgeToObjectiveC()();
      a8 = [v29 objectForKey:v30];

      if (a8)
      {
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        sub_10000D040(&v126, &unk_100174A20, &unk_100120170);
        v31 = *(v27 + 16);
        if (!v31)
        {
          goto LABEL_39;
        }

        v32 = v31;
        a2 = String._bridgeToObjectiveC()();
        v33 = [v32 BOOLForKey:a2];

        if (!v33)
        {
          goto LABEL_39;
        }
      }

      else
      {

        v126 = 0u;
        v127 = 0u;
        sub_10000D040(&v126, &unk_100174A20, &unk_100120170);
      }
    }

    a4 = v130;
    if ((v130 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    a2 = sub_100025BB8(0, *(a2 + 16) + 1, 1, a2);
    *a4 = a2;
LABEL_42:
    a1 = *(a2 + 16);
    v71 = *(a2 + 24);
    if (a1 >= v71 >> 1)
    {
      a2 = sub_100025BB8((v71 > 1), a1 + 1, 1, a2);
      *a4 = a2;
    }

    *(a2 + 16) = a1 + 1;
    *(a2 + 8 * a1 + 32) = v130;
    a9 = a8;
LABEL_45:
    v72 = v130;
    if ((v130 & 0x8000000000000000) == 0)
    {
      v73 = objc_allocWithZone(type metadata accessor for AUAEntityBooleanControl());
      v74 = v123;
      v75 = v123;

      result = sub_1000C2194(v76, v72, v17, v24, 1836414053, v74, v73);
      goto LABEL_53;
    }

    __break(1u);
LABEL_72:
    swift_once();
  }

  a9 = type metadata accessor for AUAHighPassFilterControl();
  v86 = objc_allocWithZone(a9);
  v87 = v123;
  v88 = v124;

  v89 = v125;
  result = sub_1000C6184(v17, a4);
  if (v89)
  {
    v123 = v86;
    v125 = a9;
    v90 = _convertErrorToNSError(_:)();
    v91 = [v90 code];

    if (v91 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      a9 = v119;
      if (v91 <= 0x7FFFFFFF)
      {
        v86 = v87;
        *&v126 = 0;
        *(&v126 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(73);
        v129 = v126;
        v92._countAndFlagsBits = 0x20726F727245;
        v92._object = 0xE600000000000000;
        String.append(_:)(v92);
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v93 = swift_allocObject();
        *(v93 + 16) = v117;
        *(v93 + 56) = &type metadata for Int32;
        *(v93 + 64) = &protocol witness table for Int32;
        *(v93 + 32) = v91;
        v94._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v94);

        v95._countAndFlagsBits = 0xD000000000000029;
        v95._object = 0x8000000100130E30;
        String.append(_:)(v95);
        v96._countAndFlagsBits = USBDescriptorControl.label.getter(v17);
        String.append(_:)(v96);

        v97._countAndFlagsBits = 0x6C656E6E61686320;
        v97._object = 0xEA0000000000203ALL;
        String.append(_:)(v97);
        *&v126 = v130;
        v98._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v98);

        v99._countAndFlagsBits = 0x2065636976656420;
        v99._object = 0xE800000000000000;
        String.append(_:)(v99);
        v100 = v124;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v101 = *(v100 + 24);
          ObjectType = swift_getObjectType();
          active = ActiveFunction.deviceName.getter(ObjectType, v101);
          v105 = v104;
          swift_unknownObjectRelease();
        }

        else
        {
          v105 = 0xE700000000000000;
          active = 0x6E776F6E6B6E55;
        }

        v113._countAndFlagsBits = active;
        v113._object = v105;
        String.append(_:)(v113);

        v91 = *(&v129 + 1);
        v90 = v129;
        if (qword_100173CB8 == -1)
        {
          goto LABEL_66;
        }

        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_79:
    swift_once();
LABEL_66:
    v114 = sub_10000A1BC(v120, qword_1001794F0);
    v115 = v121;
    sub_10000A2A4(v114, v121);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v116, qword_100179508);
    sub_100039F58(2, v115, v90, v91);

    sub_10000C9D0(v115);
    swift_deallocPartialClassInstance();
    result = 0;
    goto LABEL_53;
  }

  LODWORD(v125) = result;
  *&v86[OBJC_IVAR____TtC9AUASDCore24AUAHighPassFilterControl_featureUnit] = v88;
  *&v86[OBJC_IVAR____TtC9AUASDCore24AUAHighPassFilterControl_channel] = a4;
  v106 = &v86[OBJC_IVAR____TtC9AUASDCore24AUAHighPassFilterControl_control];
  v106[2] = BYTE2(v17);
  *v106 = v17;
  if (!HIDWORD(a4))
  {
    v128.receiver = v86;
    v128.super_class = a9;

    v107 = objc_msgSendSuper2(&v128, "initWithIsSettable:forElement:inScope:withPlugin:andObjectClassID:", a1 & 1, a4, v122, v87, 1751740518);
    if (v107)
    {
      v108 = v107;
      v109 = objc_opt_self();
      v110 = v108;
      v111 = String._bridgeToObjectiveC()();
      v112 = [v109 withValue:1 andName:v111 selected:v125 & 1];

      [v110 addValue:v112];

      result = v108;
      a9 = v119;
      goto LABEL_53;
    }

LABEL_70:
    result = 0;
    a9 = v119;
    goto LABEL_53;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t ActiveFeatureUnit.latencyControlSelector.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v2) = (*(v2 + 40))(ObjectType, v2) == 32;
    swift_unknownObjectRelease();
    return (16 * v2);
  }

  return result;
}

void sub_1000C5DCC(int a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v7 = *(v2 + 24), v8 = swift_getObjectType(), v9 = (*(v7 + 16))(v8, v7), swift_unknownObjectRelease(), v9))
  {
    v10 = *&v9[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v10 && sub_1000AA808(0x14u, v10) && (LockDelay.units.getter(a1) & 1) == 0)
    {
      sub_10000CA2C();
      swift_allocError();
      *v15 = 1;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

LABEL_12:
        LOBYTE(v16[0]) = Strong == 0;
        return;
      }

      v12 = *(v4 + 24);
      ObjectType = swift_getObjectType();
      v16[3] = type metadata accessor for ActiveFeatureUnit();
      v16[4] = &protocol witness table for ActiveFeatureUnit;
      v16[0] = v4;

      sub_100054C40(a1 & 0xFFFFFF, v16, a2, ObjectType, v12);

      swift_unknownObjectRelease();
      sub_10000CE78(v16);
      if (!v3)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 58;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

uint64_t sub_1000C5FB8(int a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v5 = *(v2 + 24), v6 = swift_getObjectType(), v7 = (*(v5 + 16))(v6, v5), swift_unknownObjectRelease(), v7))
  {
    v8 = *&v7[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v8 && sub_1000AA808(0x14u, v8) && (LockDelay.units.getter(a1) & 1) == 0)
    {
      sub_10000CA2C();
      swift_allocError();
      *v13 = 1;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      v14[3] = type metadata accessor for ActiveFeatureUnit();
      v14[4] = &protocol witness table for ActiveFeatureUnit;
      v14[0] = v2;

      a2 = sub_100055164(a1 & 0xFFFFFF, v14, a2, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_10000CE78(v14);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v11 = 58;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  return a2;
}

BOOL sub_1000C6184(int a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v7 = *(v2 + 24), ObjectType = swift_getObjectType(), v9 = (*(v7 + 16))(ObjectType, v7), swift_unknownObjectRelease(), !v9))
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 58;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v13;
  }

  v10 = *&v9[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (v10 && sub_1000AA808(0x14u, v10) && (LockDelay.units.getter(a1) & 1) == 0)
  {
LABEL_13:
    sub_10000CA2C();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v13;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_10000D040(v18, &qword_100175790, &unk_100121070);
    goto LABEL_13;
  }

  v11 = *(v2 + 24);
  v12 = swift_getObjectType();
  v17[3] = type metadata accessor for ActiveFeatureUnit();
  v17[4] = &protocol witness table for ActiveFeatureUnit;
  v17[0] = v4;

  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(a1 & 0xFFFFFF, v17, a2, v12, v11, v18);
  if (!v3)
  {
    swift_unknownObjectRelease();
    sub_10000CE78(v17);
    sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
    if (swift_dynamicCast())
    {

      return LOBYTE(v17[0]) != 0;
    }

    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  sub_10000CE78(v17);
  return v13;
}

void sub_1000C63C8()
{
  v46 = type metadata accessor for LogID(0);
  v1 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Mirror();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v51);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v7 = *(v0 + 80);
  if (!*(v7 + 16))
  {
    goto LABEL_33;
  }

  v8 = *(v7 + 32);
  v9 = *(v8 + 16);
  if (!v9)
  {
    swift_unknownObjectRelease();
    return;
  }

  v48 = v0;
  v47 = *(v0 + 24);
  v10 = (v3 + 8);
  v44 = " HPF value. Err: ";

  v11 = 0;
  v12 = 32;
  v43 = xmmword_10011DE90;
  v50 = v8;
  while (1)
  {
    v55 = v11;
    v56 = v9;
    v54 = v12;
    v14 = (v8 + v12);
    v15 = *(v8 + v12 + 2);
    v16 = *v14;
    v61 = &type metadata for USBDescriptorControl;
    v52 = v16;
    v53 = v15;
    BYTE2(v58) = v15;
    LOWORD(v58) = v16;
    Mirror.init(reflecting:)();
    v17 = v6;
    v18 = Mirror.children.getter();
    v20 = v18[2];
    v19 = v18[3];
    v22 = v18[4];
    v21 = v18[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v23 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v23 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      break;
    }

    v24 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v24)
    {

      v25 = *v10;
      v6 = v17;
LABEL_14:
      v11 = v55;
      v25(v6, v51);

      goto LABEL_15;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v27 = v58;
    v26 = v59;
    sub_10000CE78(&v60);
    v25 = *v10;
    v6 = v17;
    if (!v26)
    {
      goto LABEL_14;
    }

    v25(v17, v51);
    v11 = v55;
    if (v27 == 1702131053 && v26 == 0xE400000000000000)
    {

      goto LABEL_16;
    }

LABEL_15:
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      v8 = v50;
      v13 = v56;
      goto LABEL_6;
    }

LABEL_16:
    v29 = v52 | (v53 << 16);
    ObjectType = swift_getObjectType();
    active = type metadata accessor for ActiveFeatureUnit();
    v57[3] = active;
    v57[4] = &protocol witness table for ActiveFeatureUnit;
    v57[0] = v48;

    ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(v29 & 0xFFFFFF, v57, 0, ObjectType, v47, &v58);
    if (v11)
    {
      sub_10000CE78(v57);
      v11 = 0;
      v8 = v50;
      v13 = v56;
      v32 = _convertErrorToNSError(_:)();
      v33 = [v32 code];

      if (v33 < 0xFFFFFFFF80000000)
      {
        goto LABEL_31;
      }

      if (v33 > 0x7FFFFFFF)
      {
        goto LABEL_32;
      }

      v58 = 0;
      v59 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v58 = 0x20726F727245;
      v59 = 0xE600000000000000;
      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v34 = swift_allocObject();
      *(v34 + 16) = v43;
      *(v34 + 56) = &type metadata for Int32;
      *(v34 + 64) = &protocol witness table for Int32;
      *(v34 + 32) = v33;
      v35._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v35);

      v36._object = (v44 | 0x8000000000000000);
      v36._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v36);
      v37 = v58;
      v38 = v59;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v39 = sub_10000A1BC(v46, qword_1001794F0);
      v40 = v45;
      sub_10000A2A4(v39, v45);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v41, qword_100179508);
      sub_100039F58(2, v40, v37, v38);

      sub_10000C9D0(v40);
    }

    else
    {
      sub_10000CE78(v57);
      sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
      v42 = swift_dynamicCast();
      v8 = v50;
      v13 = v56;
      if ((v42 & 1) != 0 && LOBYTE(v57[0]) == 1)
      {
        v61 = active;
        v62 = &protocol witness table for ActiveFeatureUnit;
        v58 = v48;

        sub_100053170(v29 & 0xFFFFFF, 0, 0, &v58, 0, ObjectType, v47);
        sub_10000CE78(&v58);
      }
    }

LABEL_6:
    v12 = v54 + 3;
    v9 = v13 - 1;
    if (!v9)
    {
      swift_unknownObjectRelease();

      return;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveFeatureUnit.processTargetedInterrupt(attribute:controlSelector:channelNumber:)(AUASDCore::AUAInterruptAttribute attribute, Swift::UInt controlSelector, Swift::UInt channelNumber)
{
  v5 = v4;
  v6 = v3;
  v9 = attribute;
  v10 = type metadata accessor for LogID(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v9)
  {
    sub_10000CA2C();
    swift_allocError();
    *v15 = 2;
LABEL_39:
    *(v15 + 8) = 0;
    *(v15 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v61 = v12;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_31;
  }

  v16 = *(v6 + 24);
  ObjectType = swift_getObjectType();
  v18 = (*(v16 + 256))(controlSelector, ObjectType, v16);
  swift_unknownObjectRelease();
  if (v18 > 0xBu)
  {
    if (v18 != 15 && v18 != 12)
    {
      goto LABEL_31;
    }
  }

  else if (v18)
  {
    if (v18 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v20 = Strong;
      v21 = *(v6 + 24);
      v22 = swift_getObjectType();
      v23 = *(v6 + 48);
      v24 = type metadata accessor for AUAGainControl();
      v25 = &off_100165170;
      goto LABEL_24;
    }

LABEL_31:
    v47 = 0xEE00656369766544;
    v48 = 0x206E776F6E6B6E55;
    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v49 = *(v6 + 24);
      v50 = swift_getObjectType();
      v51 = (*(v49 + 16))(v50, v49);
      swift_unknownObjectRelease();
      if (v51)
      {
        v52 = [v51 boxName];

        if (v52)
        {
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v53;
        }
      }
    }

    v54._countAndFlagsBits = v48;
    v54._object = v47;
    String.append(_:)(v54);

    v55._object = 0x8000000100130A10;
    v55._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v55);
    v20 = v59;
    v5 = v60;
    if (qword_100173CB8 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

  v27 = 0xEE00656369766544;
  v28 = 0x206E776F6E6B6E55;
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = *(v6 + 24);
    v30 = swift_getObjectType();
    v31 = (*(v29 + 16))(v30, v29);
    swift_unknownObjectRelease();
    if (v31)
    {
      v32 = [v31 boxName];

      if (v32)
      {
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v33;
      }
    }
  }

  v34._countAndFlagsBits = v28;
  v34._object = v27;
  String.append(_:)(v34);

  v35._object = 0x8000000100130A30;
  v35._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v35);
  v36 = v59;
  v37 = v60;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A1BC(v61, qword_1001794F0);
  sub_10000A2A4(v38, v14);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v39, qword_100179508);
  sub_100039AA0(2, v14, v36, v37);

  sub_10000C9D0(v14);
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v20 = v40;
    v21 = *(v6 + 24);
    v22 = swift_getObjectType();
    v23 = *(v6 + 48);
    v24 = type metadata accessor for AUAEntityBooleanControl();
    v25 = &off_100162B90;
LABEL_24:
    v14 = sub_100056D10(v23, channelNumber, v24, v25, v22, v21);
    swift_unknownObjectRelease();
    if (!v14)
    {
      return;
    }

    v61 = v14[2];
    if (!v61)
    {
LABEL_30:

      return;
    }

    v41 = 0;
    v42 = v14 + 5;
    while (v41 < v14[2])
    {
      v43 = *(v42 - 1);
      v44 = *v42;
      v45 = swift_getObjectType();
      v46 = *(v44 + 24);
      v20 = v43;
      v46(v45, v44);

      if (!v4)
      {
        ++v41;
        v42 += 2;
        if (v61 != v41)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_42:
    swift_once();
LABEL_36:
    v56 = sub_10000A1BC(v61, qword_1001794F0);
    sub_10000A2A4(v56, v14);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v57, qword_100179508);
    sub_100039AA0(2, v14, v20, v5);

    sub_10000C9D0(v14);
    sub_10000CA2C();
    swift_allocError();
    *v15 = 2;
    goto LABEL_39;
  }
}

void *ActiveFeatureUnit.deinit()
{
  sub_100024174((v0 + 2));
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  return v0;
}

uint64_t ActiveFeatureUnit.__deallocating_deinit()
{
  sub_100024174((v0 + 2));
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t sub_1000C7178@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = *(v4 + 48);
  v5 = *(v4 + 64);
  v12 = *(v4 + 96);
  v7 = *(v4 + 80);
  v11[2] = v5;
  v11[3] = v7;
  v11[0] = *(v4 + 32);
  v11[1] = v6;
  a2[3] = &type metadata for FeatureUnit;
  a2[4] = a1();
  v8 = swift_allocObject();
  *a2 = v8;
  memmove((v8 + 16), (v4 + 32), 0x48uLL);
  return sub_100076614(v11, v10);
}

uint64_t (*sub_1000C720C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t sub_1000C72A4()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v3) = (*(v3 + 40))(ObjectType, v3) == 32;
    swift_unknownObjectRelease();
    return (16 * v3);
  }

  return result;
}

uint64_t sub_1000C7DD0(uint64_t result, float a2, float a3, float a4, float a5)
{
  if (a2 >= 0.0 && a2 <= 1.0)
  {
    v6 = (a4 - a3) / a5;
    if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v6 > -1.0)
    {
      if (v6 < 1.8447e19)
      {
        if (!v6)
        {
          return result;
        }

        v7 = (((1.0 / v6) * 0.5) + a2) * v6;
        if ((LODWORD(v7) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          if (v7 > -9.2234e18)
          {
            if (v7 < 9.2234e18)
            {
              v8 = *(result + 16) - 1;
              if (v8 >= v7)
              {
                v8 = v7;
              }

              if ((v8 & 0x8000000000000000) == 0)
              {
                v9 = *(result + 4 * v8 + 32);
                return result;
              }

LABEL_23:
              __break(1u);
              return result;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1000C7EB4(float a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 == 1)
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 36);
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);
LABEL_10:

    return sub_1000C7DD0(v7, a1, v4, v5, v6);
  }

  else
  {
    v8 = (v2 + 40);
    v9 = v3 + 1;
    v10 = 0.0;
    while (--v9)
    {
      v11 = v10;
      v4 = *(v8 - 2);
      v5 = *(v8 - 1);
      v6 = *v8;
      v12 = (v5 - v4) / *v8;
      if (COERCE_INT(fabs(v12)) > 2139095039)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        break;
      }

      if (v12 <= -1.0)
      {
        goto LABEL_14;
      }

      if (v12 >= 1.8447e19)
      {
        goto LABEL_15;
      }

      v8 += 6;
      v10 = v11 + (v12 / v1[1]);
      if (v10 >= a1)
      {
        v7 = *(v8 - 2);
        a1 = (a1 - v11) / (v10 - v11);
        goto LABEL_10;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C7FD4(float a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 == 1)
  {
    v4 = (a1 - v2[8]) / (v2[9] - v2[8]);
  }

  else
  {
    if (v3)
    {
      v5 = v2 + 10;
      v6 = 0.0;
      while (1)
      {
        v7 = *(v5 - 2);
        v8 = *(v5 - 1);
        v9 = (v8 - v7) / *v5;
        if (COERCE_INT(fabs(v9)) > 2139095039)
        {
          break;
        }

        if (v9 <= -1.0)
        {
          goto LABEL_13;
        }

        if (v9 >= 1.8447e19)
        {
          goto LABEL_14;
        }

        v10 = v9 / v1[1];
        if (v7 <= a1 && v8 >= a1)
        {
          return result;
        }

        v6 = v6 + v10;
        v5 += 6;
        if (!--v3)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
    }

LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1000CBA3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000CBAFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001AB4(&unk_1001749C0, &qword_100120118);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000CBDA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001AB4(&qword_1001749D8, &unk_100124AF0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10000CE28(v25, v37);
      }

      else
      {
        sub_10001E0C4(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10000CE28(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000CC058(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001AB4(&qword_100174A18, &qword_100120168);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000CC2C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001AB4(&qword_100174A60, &qword_100124B10);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 2 * v20);
      v23 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 2 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1000CC52C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001AB4(&qword_100174A80, &qword_1001201C8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v36 = *v23;
      v24 = *(v23 + 16);
      if ((a2 & 1) == 0)
      {
        v25 = *(v23 + 16);
      }

      v26 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v36;
      *(v17 + 16) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_1000CC7C0()
{
  v1 = v0;
  sub_100001AB4(&unk_1001749C0, &qword_100120118);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1000CC92C()
{
  v1 = v0;
  sub_100001AB4(&qword_1001749D8, &unk_100124AF0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10001E0C4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000CE28(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1000CCAD0()
{
  v1 = v0;
  sub_100001AB4(&qword_100174A18, &qword_100120168);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1000CCC34()
{
  v1 = v0;
  sub_100001AB4(&qword_100174A60, &qword_100124B10);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 2 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 2 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000CCD94()
{
  v1 = v0;
  sub_100001AB4(&qword_100174A80, &qword_1001201C8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

Swift::Int sub_1000CCF44(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000CD9DC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[12 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 12) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 4) = v14;
          v13 -= 12;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 12;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100001AB4(&qword_100176198, &unk_100121AE0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1000CD0AC(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000CD0AC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000CD8B0(v7);
      v7 = result;
    }

    v84 = v7 + 2;
    v85 = v7[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1000CD674((*a3 + 12 * *v86), (*a3 + 12 * *v88), *a3 + 12 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 12 * v6);
      v10 = 12 * v8;
      v11 = (*a3 + 12 * v8);
      v13 = *v11;
      v12 = v11 + 6;
      v14 = v13;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v12;
        v12 += 3;
        v18 = v17 >= v16;
        ++v15;
        v16 = v17;
        if ((((v9 < v14) ^ v18) & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 12 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 4);
            *v22 = *(v23 - 12);
            *(v22 + 2) = v26;
            *(v23 - 12) = v25;
            *(v23 - 4) = v24;
          }

          ++v21;
          --v19;
          v20 -= 12;
          v10 += 12;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100024FF4(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v37 = v7[2];
    v36 = v7[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_100024FF4((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v38;
    v39 = v7 + 4;
    v40 = &v7[2 * v37 + 4];
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = v7[4];
          v43 = v7[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[2 * v38];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[2 * v41];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[2 * v41];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v39[2 * v41 - 2];
        v80 = *v79;
        v81 = &v39[2 * v41];
        v82 = v81[1];
        sub_1000CD674((*a3 + 12 * *v79), (*a3 + 12 * *v81), *a3 + 12 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > v7[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v7[2];
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove(&v39[2 * v41], v81 + 2, 16 * (v83 - 1 - v41));
        v7[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[2 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[2 * v38];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[2 * v41];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 12 * v6 - 12;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 12 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 12;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 16);
    *(v33 + 12) = *v33;
    *(v33 + 20) = *(v33 + 8);
    *v33 = v31;
    *(v33 + 4) = v34;
    v33 -= 12;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1000CD674(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 12;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 12;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 12 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 12)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 12 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 12 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 3;
    v5 -= 12;
    v17 = v12;
    do
    {
      v18 = (v5 + 12);
      v19 = *(v17 - 12);
      v17 -= 12;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 8) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 3, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 8) = *(v17 + 8);
        *v5 = v20;
      }

      v5 -= 12;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 1) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v23])
  {
    memmove(v6, v4, 12 * v23);
  }

  return 1;
}

char *sub_1000CD8C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175420, &qword_100120EE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

BOOL sub_1000CD9F0(unint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, uint64_t a5, __int16 a6)
{
  if (word_100124BFA[a1] != word_100124BFA[a4])
  {
    return 0;
  }

  return word_100124C42[a1 >> 8] == word_100124C42[a4 >> 8] && ((a1 >> 16) & 0xFFFFFFFFFFLL) == ((a4 >> 16) & 0xFFFFFFFFFFLL) && a2 == a5 && a3 == a6;
}

char *sub_1000CDA58(float a1, float a2, float a3)
{
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= a1 || a3 == 0.0)
  {
    goto LABEL_6;
  }

  if (a1 <= a2)
  {
    v14 = v9;
    v3 = sub_100025CC8(0, 1, 1, _swiftEmptyArrayStorage);
    v15 = *(v3 + 2);
    v16 = a1;
    do
    {
      v17 = *(v3 + 3);
      v12 = v15 + 1;
      if (v15 >= v17 >> 1)
      {
        v3 = sub_100025CC8((v17 > 1), v15 + 1, 1, v3);
      }

      *(v3 + 2) = v12;
      *&v3[4 * v15 + 32] = v16;
      v16 = v16 + a3;
      ++v15;
    }

    while (v16 <= a2);
    v9 = v14;
LABEL_12:
    if (*&v3[4 * v12 + 28] == a2)
    {
      return v3;
    }

    if (qword_100173CB8 != -1)
    {
      v23 = v9;
      swift_once();
      v9 = v23;
    }

    v18 = sub_10000A1BC(v9, qword_1001794F0);
    sub_10000A2A4(v18, v11);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v19, qword_100179508);
    sub_100039F58(1, v11, 0xD00000000000002FLL, 0x8000000100131000);
    sub_10000C9D0(v11);
    if (*(v3 + 2))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v21 = *(v3 + 2);
        if (v21)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    v3 = sub_1000CCF30(v3);
    v21 = *(v3 + 2);
    if (v21)
    {
LABEL_20:
      v11 = v21 - 1;
      *(v3 + 2) = v21 - 1;
      v20 = *(v3 + 3);
      if (v21 <= v20 >> 1)
      {
LABEL_21:
        *(v3 + 2) = v21;
        *&v3[4 * v11 + 32] = a2;
        return v3;
      }

LABEL_26:
      v3 = sub_100025CC8((v20 > 1), v21, 1, v3);
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_10000CA2C();
  swift_allocError();
  *v13 = 120;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0xE000000000000000;
  swift_willThrow();
  return v3;
}

uint64_t sub_1000CDD3C(char *a1)
{
  v25 = a1;

  sub_1000CCF44(&v25);

  v1 = v25;
  v2 = *(v25 + 2);
  if (v2)
  {
    v25 = _swiftEmptyArrayStorage;
    sub_1000474C0(0, v2, 0);
    v3 = 0;
    v4 = v25;
    v5 = (v1 + 40);
    while (v3 < *(v1 + 2))
    {
      v6 = sub_1000CDA58(*(v5 - 2), *(v5 - 1), *v5);
      v25 = v4;
      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v13 = v6;
        v14 = v7;
        v15 = v8;
        v16 = v9;
        sub_1000474C0((v10 > 1), v11 + 1, 1);
        v6 = v13;
        v9 = v16;
        v8 = v15;
        v7 = v14;
        v4 = v25;
      }

      ++v3;
      *(v4 + 2) = v11 + 1;
      v12 = &v4[24 * v11];
      *(v12 + 8) = v7;
      *(v12 + 9) = v8;
      *(v12 + 10) = v9;
      *(v12 + 6) = v6;
      v5 += 3;
      if (v2 == v3)
      {

        goto LABEL_9;
      }
    }

LABEL_23:
    __break(1u);

    __break(1u);
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
LABEL_9:
    v17 = 0;
    v18 = *(v4 + 2);
    v19 = (v4 + 40);
    v20 = v18 + 1;
    while (--v20)
    {
      v21 = (*(v19 - 1) - *(v19 - 2)) / *v19;
      if (COERCE_INT(fabs(v21)) > 2139095039)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v21 <= -1.0)
      {
        goto LABEL_21;
      }

      if (v21 >= 1.8447e19)
      {
        goto LABEL_22;
      }

      v19 += 6;
      v22 = __CFADD__(v17, v21);
      v17 += v21;
      if (v22)
      {
        __break(1u);
        break;
      }
    }

    if (v18)
    {
      v23 = *&v4[24 * v18 + 12] - *(v4 + 8);
    }

    return v4;
  }

  return result;
}

uint64_t sub_1000CDF98(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v31 = *(a1 + 16);
  if (!v31)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v30 = a1 + 32;
  v4 = &qword_100174F90;
  while (1)
  {
    v6 = *(v30 + 8 * v2);

    v7 = a2(v2, v6);

    v8 = v7 >> 62;
    v9 = v7 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v3 >> 62;
    if (v3 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v28 + v9;
      if (__OFADD__(v28, v9))
      {
LABEL_34:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v10)
      {
        goto LABEL_16;
      }

      v13 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v10)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v13 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = *(v13 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v36 = v9;
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v16 >> 1) - v15) < v36)
    {
      goto LABEL_38;
    }

    v33 = v2;
    v34 = v3;
    v19 = v13 + 8 * v15 + 32;
    v29 = v13;
    if (v8)
    {
      if (v17 < 1)
      {
        goto LABEL_40;
      }

      sub_10001EB60(&qword_100174F98, v4, &unk_100124B00);
      v20 = v4;
      for (i = 0; i != v17; ++i)
      {
        sub_100001AB4(v4, &unk_100124B00);
        v22 = sub_10001D8F4(v35, i, v7);
        v24 = *v23;
        (v22)(v35, 0);
        *(v19 + 8 * i) = v24;
      }
    }

    else
    {
      sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
      swift_arrayInitWithCopy();
      v20 = v4;
    }

    v4 = v20;
    v2 = v33;
    v3 = v34;
    if (v36 >= 1)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v36);
      v27 = v25 + v36;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v2 == v31)
    {
      return v3;
    }
  }

  v18 = v13;
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = v18;
  v17 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v36 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1000CE2D8()
{
  result = qword_100177FD8;
  if (!qword_100177FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177FD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AUAFeatureUnitControlSelector(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AUAFeatureUnitControlSelector(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1000CE4C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1000CE4D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CE520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FeatureUnitOverrideEntry(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FeatureUnitOverrideEntry(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xDD && a1[18])
  {
    return (*a1 + 221);
  }

  v3 = *a1;
  v4 = v3 >= 0x24;
  v5 = v3 - 36;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureUnitOverrideEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xDC)
  {
    *(result + 16) = 0;
    *result = a2 - 221;
    *(result + 8) = 0;
    if (a3 >= 0xDD)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xDD)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 35;
    }
  }

  return result;
}

unint64_t sub_1000CE634()
{
  result = qword_1001781D0;
  if (!qword_1001781D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001781D0);
  }

  return result;
}

void sub_1000CE688()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:
    if (v4)
    {
      sub_1000D1324(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

unint64_t sub_1000CE760(unsigned __int16 a1)
{
  v2 = type metadata accessor for LogID(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x80) == 0)
  {
    return 0;
  }

  v8 = v4;
  result = HIBYTE(a1);
  v9 = a1 & 0xF;
  if ((a1 & 0xF) != 0 || a1 < 0x100u)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v11 = 512;
        if ((a1 & 0x40) == 0)
        {
          v11 = 1280;
        }

        return v11 | HIBYTE(a1) | 0x1000000;
      }

      else
      {
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v12 = sub_10000A1BC(v8, qword_1001794F0);
        sub_10000A2A4(v12, v6);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v13, qword_100179508);
        sub_100039F58(2, v6, 0xD000000000000026, 0x80000001001310D0);
        sub_10000C9D0(v6);
        sub_10000CA2C();
        swift_allocError();
        *v14 = 2;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0xE000000000000000;
        return swift_willThrow();
      }
    }

    else
    {
      v10 = 512;
      if ((a1 & 0x40) == 0)
      {
        v10 = 1280;
      }

      return v10 | HIBYTE(a1) | &_mh_execute_header;
    }
  }

  return result;
}

uint64_t sub_1000CE988()
{
  v1 = *(v0 + 200);
  v85 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
  v4 = &selRef_modelUID;
  if (!Strong)
  {
    ObjectType = v1;

    goto LABEL_7;
  }

  v5 = Strong;
  v6 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
  if (!v6)
  {
    ObjectType = v1;

LABEL_7:
    v11 = &off_100173000;
    if (qword_100173CF8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_141;
  }

  v7 = sub_1000AA808(3u, v6);
  v8 = v1;
  v9 = v7;
  ObjectType = v8;

  if (!v9)
  {
    goto LABEL_7;
  }

  v11 = &off_100173000;
  v12 = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
  v13 = &selRef_modelUID;
  v4 = 1;
  while (2)
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    v22 = ObjectType;
    if (v21)
    {
      v23 = v21;
      v24 = *&v21[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
      if (v24)
      {
        v25 = sub_1000AA808(5u, v24);

        if (v25)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    if (*(v11 + 3320) != -1)
    {
      swift_once();
    }

    cache = v12[200]->cache;
    if (!cache)
    {
      goto LABEL_34;
    }

    v27 = cache;
    v28 = String._bridgeToObjectiveC()();
    v11 = [v27 v13[134]];

    if (!v11)
    {

      goto LABEL_34;
    }

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v29 == 0x656C7069746C756DLL && v31 == 0xE800000000000000)
    {

      v22 = ObjectType;
      goto LABEL_32;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = ObjectType;
    if ((v32 & 1) == 0)
    {
LABEL_34:
      LODWORD(ObjectType) = 0;
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_137;
      }

      goto LABEL_35;
    }

LABEL_32:
    LODWORD(ObjectType) = 1;
    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_137:
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_138;
      }

      goto LABEL_37;
    }

LABEL_35:
    if ((v22 & 0x4000000000000000) != 0)
    {
      goto LABEL_137;
    }

    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_138;
    }

LABEL_37:
    p_superclass = &off_100167CF8;
    v68 = _swiftEmptyArrayStorage;
    v66 = ObjectType;
    v67 = v4;
    while (1)
    {
      if (v4)
      {
        v84 = v22;
        v85 = _swiftEmptyArrayStorage;
        goto LABEL_69;
      }

      if (!ObjectType)
      {
        v22 = sub_1001141B8(&v85);
        v84 = v22;
        goto LABEL_69;
      }

      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      result = swift_allocObject();
      v34 = result;
      *(result + 16) = xmmword_100120A20;
      v35 = v22 >> 62;
      if (v22 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
          goto LABEL_149;
        }

        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
          goto LABEL_148;
        }
      }

      else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_143;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v37 = v22 & 0xFFFFFFFFFFFFFF8;
        if (!v35)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_144;
        }

        v36 = *(v22 + 32);

        v37 = v22 & 0xFFFFFFFFFFFFFF8;
        if (!v35)
        {
LABEL_46:
          result = *(v37 + 16);
          if (!result)
          {
            goto LABEL_146;
          }

          goto LABEL_56;
        }
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_146;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 1)
      {
        goto LABEL_147;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
LABEL_56:
      v38 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_145;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v35)
        {
LABEL_64:
          _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v39 = (v22 & 0xFFFFFFFFFFFFFF8);
LABEL_63:
          v40 = v39[2];
        }

        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v39 = (v22 & 0xFFFFFFFFFFFFFF8);
        goto LABEL_66;
      }

      if (v35)
      {
        goto LABEL_64;
      }

      v39 = (v22 & 0xFFFFFFFFFFFFFF8);
      if (v38 > *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_63;
      }

LABEL_66:
      v41 = v39[4];

      if (v22 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_150;
        }

        memmove(v39 + 4, v39 + 5, 8 * (result - 1));
        v11 = _CocoaArrayWrapper.endIndex.getter();
        v42 = v11 - 1;
        if (__OFSUB__(v11, 1))
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }
      }

      else
      {
        v11 = v39[2];
        memmove(v39 + 4, v39 + 5, 8 * v11 - 8);
        v42 = v11 - 1;
        if (__OFSUB__(v11, 1))
        {
          goto LABEL_128;
        }
      }

      v39[2] = v42;
      v84 = v34;
      v85 = v22;
      v34[4] = v36;
      v22 = v34;
      LODWORD(ObjectType) = v66;
LABEL_69:
      if (!(v22 >> 62))
      {
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
          break;
        }

        goto LABEL_120;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        break;
      }

LABEL_120:

      v22 = v85;
      if (v85 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() <= 0)
        {
LABEL_132:

          return v68;
        }
      }

      else if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
      {
        goto LABEL_132;
      }
    }

    while (1)
    {
      if (v4)
      {
        v84 = _swiftEmptyArrayStorage;
      }

      else
      {
        v22 = sub_100114658(&v84);
      }

      if (!(v22 >> 62))
      {
        break;
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_131;
      }

      ObjectType = _CocoaArrayWrapper.endIndex.getter();
      if (ObjectType)
      {
        goto LABEL_76;
      }

      v44 = _swiftEmptyArrayStorage;
LABEL_110:
      type metadata accessor for MultiClock();
      v59 = swift_allocObject();
      *(v59 + 16) = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_10002461C(0, v68[2] + 1, 1, v68);
      }

      v61 = v68[2];
      v60 = v68[3];
      if (v61 >= v60 >> 1)
      {
        v68 = sub_10002461C((v60 > 1), v61 + 1, 1, v68);
      }

      v68[2] = v61 + 1;
      v62 = &v68[3 * v61];
      v62[4] = v59;
      v62[5] = &off_100167CA0;
      v62[6] = v22;
      v22 = v84;
      if (v84 >> 62)
      {
        v63 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v63 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      LODWORD(ObjectType) = v66;
      if (v63 <= 0)
      {
        goto LABEL_120;
      }
    }

    ObjectType = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!ObjectType)
    {
LABEL_131:

LABEL_138:

      return _swiftEmptyArrayStorage;
    }

LABEL_76:
    v83 = _swiftEmptyArrayStorage;
    result = sub_100046F90(0, ObjectType & ~(ObjectType >> 63), 0);
    if (ObjectType < 0)
    {
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
      return result;
    }

    v43 = 0;
    v44 = v83;
    v72 = ObjectType;
    v73 = v22 & 0xC000000000000001;
    v70 = v22 + 32;
    v71 = v22 & 0xFFFFFFFFFFFFFF8;
    v69 = v22;
    while (2)
    {
      if (__OFADD__(v43, 1))
      {
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      v74 = v43 + 1;
      if (v73)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v45[16];
        if (!v11)
        {
          goto LABEL_88;
        }

LABEL_81:

        ObjectType = &off_100167CF8;
LABEL_82:
        v83 = v44;
        v47 = v44[2];
        v46 = v44[3];
        if (v47 >= v46 >> 1)
        {
          sub_100046F90((v46 > 1), v47 + 1, 1);
          v44 = v83;
        }

        v44[2] = v47 + 1;
        v48 = &v44[2 * v47];
        v48[4] = v11;
        v48[5] = ObjectType;
        v43 = v74;
        if (v74 == v72)
        {
          goto LABEL_110;
        }

        continue;
      }

      break;
    }

    if (v43 >= *(v71 + 16))
    {
      __break(1u);
LABEL_141:
      swift_once();
LABEL_8:
      v12 = p_superclass;
      v14 = p_superclass[200]->cache;
      if (v14)
      {
        v15 = v14;
        v16 = String._bridgeToObjectiveC()();
        v13 = v4;
        v4 = [v15 *(v4 + 1072)];

        if (v4)
        {
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          if (v17 == 0x656C676E6973 && v19 == 0xE600000000000000)
          {

            v4 = 1;
          }

          else
          {
            v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }
        }

        else
        {
        }
      }

      else
      {
        v13 = v4;
        v4 = 0;
      }

      continue;
    }

    break;
  }

  v45 = *(v70 + 8 * v43);

  v11 = v45[16];
  if (v11)
  {
    goto LABEL_81;
  }

LABEL_88:
  v11 = v45[9];
  if (!(v11 >> 62))
  {
    v75 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v75)
    {
      goto LABEL_90;
    }

LABEL_129:

    v64 = 86;
    goto LABEL_130;
  }

  if (v11 < 0)
  {
    v58 = v45[9];
  }

  v75 = _CocoaArrayWrapper.endIndex.getter();
  if (!v75)
  {
    goto LABEL_129;
  }

LABEL_90:
  swift_beginAccess();
  v22 = 0;
  while (2)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v4 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (v22 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_135;
      }

      v49 = *(v11 + 8 * v22 + 32);

      v4 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }
    }

    if (!v45[2])
    {

      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      goto LABEL_92;
    }

    v50 = v45[3];
    v51 = v45[2];
    ObjectType = swift_getObjectType();
    v52 = *(v50 + 208);
    swift_unknownObjectRetain();
    v52(&v76, v49, ObjectType, v50);
    swift_unknownObjectRelease();

    if (!*(&v77 + 1))
    {
LABEL_92:
      sub_1000D13FC(&v76);
      ++v22;
      if (v4 == v75)
      {
        goto LABEL_129;
      }

      continue;
    }

    break;
  }

  sub_10001EFE4(&v76, v79);
  sub_10001EFE4(v79, v80);
  v53 = v81;
  v54 = v82;
  sub_10001EAB8(v80, v81);
  v55 = (*(v54 + 32))(v53, v54);
  if (v55)
  {
    v11 = v55;
    v57 = v56;

    ObjectType = *(v57 + 16);
    sub_10000CE78(v80);
    v22 = v69;
    v4 = v67;
    p_superclass = &off_100167CF8;
    goto LABEL_82;
  }

  sub_10000CE78(v80);
  v64 = 87;
LABEL_130:
  sub_10000CA2C();
  swift_allocError();
  *v65 = v64;
  *(v65 + 8) = 0;
  *(v65 + 16) = 0xE000000000000000;
  swift_willThrow();

  return _swiftEmptyArrayStorage;
}

void sub_1000CF490(int a1, unint64_t a2, char a3, void *a4)
{
  v93 = 0;
  v10 = USBDescriptorControl.pbLayout()();
  v11 = sub_1000A0294(v10);
  if (!v5)
  {
    v13 = v12;
    v89 = v11;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      sub_10000CA2C();
      swift_allocError();
      *v31 = 7;
      *(v31 + 8) = 0;
      *(v31 + 16) = 0xE000000000000000;
      swift_willThrow();
      goto LABEL_16;
    }

    v83 = v10;
    v91 = v13;
    v14 = sub_1000A2D88(a1 & 0xFFFFFF);
    if (a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2;
    }

    v16 = a4[3];
    v17 = a4[4];
    sub_10001EAB8(a4, v16);
    v85 = *(v17 + 8);
    v86 = v17;
    v87 = v16;
    v85(v105, v16, v17);
    v18 = v106;
    v19 = v107;
    sub_10001EAB8(v105, v106);
    v20 = (*(v19 + 16))(v18, v19);
    if ((v20 | v15) >= 0x10000)
    {
      __break(1u);
    }

    else
    {
      v21 = v20;
      v84 = *(v4 + 16);
      v22 = *(v84 + 2);
      v23 = NSData.startIndex.getter();
      v24 = NSData.endIndex.getter();
      v25 = NSData.startIndex.getter();
      v26 = NSData.endIndex.getter();
      if (v23 >= v25 && v26 >= v23)
      {
        v27 = NSData.startIndex.getter();
        v28 = NSData.endIndex.getter();
        if (v24 >= v27 && v28 >= v24)
        {
          v29 = v24 - v23;
          if (!__OFSUB__(v24, v23))
          {
            if (v29 >= 0xFFFF)
            {
              v29 = 0xFFFFLL;
            }

            v30 = v15 | (v14 << 8);
            sub_1000FC690(((v22 | (v21 << 8)) << 32) | ((v29 & ~(v29 >> 63)) << 48) | (v30 << 16) | 0x82A1, v91, &v93);
            sub_10000CE78(v105);
            v32 = v93;
            v33 = v91;
            v34 = NSData.startIndex.getter();
            v35 = NSData.endIndex.getter();
            v36 = NSData.startIndex.getter();
            v37 = NSData.endIndex.getter();
            if (v34 < v36 || v37 < v34)
            {
              __break(1u);
            }

            else
            {
              v33 = v91;
              v36 = NSData.startIndex.getter();
              v38 = NSData.endIndex.getter();
              if (v35 >= v36 && v38 >= v35)
              {
                if (!__OFSUB__(v35, v34))
                {
                  v39 = Strong;
                  if (v32 != &v35[-v34])
                  {
                    sub_10000CA2C();
                    swift_allocError();
                    *v41 = 30;
                    *(v41 + 8) = 0;
                    *(v41 + 16) = 0xE000000000000000;
                    swift_willThrow();

LABEL_25:
                    return;
                  }

                  ADCControlRequestParameterBlock.getCur()(v91, v89 & 0x1FF, v105);
                  v88 = v30;
                  v85(v102, v87, v86);
                  v42 = v103;
                  v43 = v104;
                  sub_10001EAB8(v102, v103);
                  v44 = (*(v43 + 16))(v42, v43);
                  if (v44 >> 16)
                  {
                    __break(1u);
                  }

                  else
                  {
                    v45 = v44;
                    v46 = *(v84 + 2);
                    v47 = NSData.startIndex.getter();
                    v48 = NSData.endIndex.getter();
                    v49 = NSData.startIndex.getter();
                    v50 = NSData.endIndex.getter();
                    if (v47 >= v49 && v50 >= v47)
                    {
                      v51 = NSData.startIndex.getter();
                      v52 = NSData.endIndex.getter();
                      if (v48 >= v51 && v52 >= v48)
                      {
                        v53 = v48 - v47;
                        if (!__OFSUB__(v48, v47))
                        {
                          v54 = v88 << 16;
                          if (v53 >= 0xFFFF)
                          {
                            v53 = 0xFFFFLL;
                          }

                          sub_1000FC690(((v46 | (v45 << 8)) << 32) | ((v53 & ~(v53 >> 63)) << 48) | v54 | 0x83A1, v91, &v93);
                          v55 = 0;
                          sub_10000CE78(v102);
                          v56 = v93;
                          v57 = NSData.startIndex.getter();
                          v58 = NSData.endIndex.getter();
                          v59 = NSData.startIndex.getter();
                          v60 = NSData.endIndex.getter();
                          if (v57 >= v59 && v60 >= v57)
                          {
                            v13 = v91;
                            v61 = NSData.startIndex.getter();
                            v62 = NSData.endIndex.getter();
                            if (v58 >= v61 && v62 >= v58)
                            {
                              if (!__OFSUB__(v58, v57))
                              {
                                if (v56 == (v58 - v57))
                                {
                                  ADCControlRequestParameterBlock.getCur()(v91, v89 & 0x1FF, v102);
                                  v63 = 0;
                                  v85(&v99, v87, v86);
                                  v65 = v100;
                                  v66 = v101;
                                  v39 = sub_10001EAB8(&v99, v100);
                                  v67 = (*(v66 + 16))(v65, v66);
                                  if (v67 >> 16)
                                  {
                                    __break(1u);
                                  }

                                  else
                                  {
                                    v68 = v67;
                                    v55 = *(v84 + 2);
                                    v39 = v91;
                                    v69 = NSData.startIndex.getter();
                                    v70 = NSData.endIndex.getter();
                                    v65 = NSData.startIndex.getter();
                                    v71 = NSData.endIndex.getter();
                                    if (v69 >= v65 && v71 >= v69)
                                    {
                                      v39 = v91;
                                      v65 = NSData.startIndex.getter();
                                      v72 = NSData.endIndex.getter();
                                      if (v70 >= v65 && v72 >= v70)
                                      {
                                        v73 = v70 - v69;
                                        if (!__OFSUB__(v70, v69))
                                        {
                                          if (v73 >= 0xFFFF)
                                          {
                                            v73 = 0xFFFFLL;
                                          }

                                          v63 = v91;
                                          sub_1000FC690(((v55 | (v68 << 8)) << 32) | ((v73 & ~(v73 >> 63)) << 48) | v54 | 0x84A1, v91, &v93);
                                          v55 = 0;
                                          sub_10000CE78(&v99);
                                          v74 = v93;
                                          v39 = v91;
                                          v75 = NSData.startIndex.getter();
                                          v76 = NSData.endIndex.getter();
                                          v65 = NSData.startIndex.getter();
                                          v77 = NSData.endIndex.getter();
                                          if (v75 >= v65 && v77 >= v75)
                                          {
                                            v65 = NSData.startIndex.getter();
                                            v78 = NSData.endIndex.getter();
                                            v63 = Strong;
                                            if (v76 >= v65 && v78 >= v76)
                                            {
                                              if (!__OFSUB__(v76, v75))
                                              {
                                                if (v74 == (v76 - v75))
                                                {
                                                  ADCControlRequestParameterBlock.getCur()(v91, v89 & 0x1FF, &v99);
                                                  goto LABEL_63;
                                                }

                                                sub_10000CA2C();
                                                swift_allocError();
                                                *v80 = 30;
                                                *(v80 + 8) = 0;
                                                *(v80 + 16) = 0xE000000000000000;
                                                swift_willThrow();

                                                sub_10000CE78(v102);
                                                sub_10000CE78(v105);
                                                goto LABEL_25;
                                              }

LABEL_99:
                                              __break(1u);
                                              swift_once();
                                              v79 = type metadata accessor for AUALog(0);
                                              sub_10000A1BC(v79, qword_100179508);
                                              sub_100039F58(2, v63 + v65, v39, v55);

                                              swift_willThrow();

                                              sub_10000CE78(v102);
                                              sub_10000CE78(v105);

                                              sub_10000CE78(&v99);
                                              return;
                                            }

LABEL_98:
                                            __break(1u);
                                            goto LABEL_99;
                                          }

LABEL_97:
                                          __break(1u);
                                          goto LABEL_98;
                                        }

LABEL_96:
                                        __break(1u);
                                        __break(1u);
                                        __break(1u);
                                        goto LABEL_97;
                                      }

LABEL_95:
                                      __break(1u);
                                      goto LABEL_96;
                                    }
                                  }

                                  __break(1u);
                                  goto LABEL_95;
                                }

                                sub_10000CA2C();
                                swift_allocError();
                                *v64 = 30;
                                *(v64 + 8) = 0;
                                *(v64 + 16) = 0xE000000000000000;
                                swift_willThrow();

                                sub_10000CE78(v105);
LABEL_16:

                                return;
                              }

LABEL_92:
                              __break(1u);
                              goto LABEL_82;
                            }

LABEL_91:
                            __break(1u);
                            goto LABEL_92;
                          }

LABEL_90:
                          __break(1u);
                          goto LABEL_91;
                        }

LABEL_89:
                        __break(1u);
                        __break(1u);
                        __break(1u);
                        goto LABEL_90;
                      }

LABEL_88:
                      __break(1u);
                      goto LABEL_89;
                    }
                  }

                  __break(1u);
                  goto LABEL_88;
                }

LABEL_72:
                __break(1u);
                swift_once();
                v40 = type metadata accessor for AUALog(0);
                sub_10000A1BC(v40, qword_100179508);
                sub_100039F58(2, &v35[v36], v33, 0);

                swift_willThrow();

                sub_10000CE78(v105);
                return;
              }
            }

            __break(1u);
            goto LABEL_72;
          }

LABEL_62:
          __break(1u);
LABEL_63:
          if (v83 == 2)
          {
            sub_10001EAFC(v105, v94);
            sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
            if (swift_dynamicCast())
            {
              sub_10001EAFC(v102, v94);
              if (swift_dynamicCast())
              {
                sub_10001EAFC(&v99, v94);
                if (swift_dynamicCast())
                {
                  v97 = &type metadata for AudioClassRange32bit;
                  v98 = &off_100163F78;
                  LODWORD(v95) = v92;
                  HIDWORD(v95) = v92;
                  LODWORD(v96) = v92;
                  goto LABEL_81;
                }
              }
            }
          }

          else if (v83 == 1)
          {
            sub_10001EAFC(v105, v94);
            sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
            if (swift_dynamicCast())
            {
              sub_10001EAFC(v102, v94);
              if (swift_dynamicCast())
              {
                sub_10001EAFC(&v99, v94);
                if (swift_dynamicCast())
                {
                  v97 = &type metadata for AudioClassRange16bit;
                  v98 = &off_100163F40;
                  LOWORD(v95) = v92;
                  WORD1(v95) = v92;
                  WORD2(v95) = v92;
                  goto LABEL_81;
                }
              }
            }
          }

          else
          {
            if (v83)
            {
              sub_10000CA2C();
              swift_allocError();
              v82 = 32;
              goto LABEL_85;
            }

            sub_10001EAFC(v105, v94);
            sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
            if (swift_dynamicCast())
            {
              sub_10001EAFC(v102, v94);
              if (swift_dynamicCast())
              {
                sub_10001EAFC(&v99, v94);
                if (swift_dynamicCast())
                {
                  v97 = &type metadata for AudioClassRange8bit;
                  v98 = &off_100163F08;
                  LOBYTE(v95) = v92;
                  BYTE1(v95) = v92;
                  BYTE2(v95) = v92;
LABEL_81:
                  sub_10001EAFC(&v95, v94);
                  sub_1000A0698(v83, v94);
LABEL_82:

                  sub_10000CE78(&v99);
                  sub_10000CE78(v102);
                  sub_10000CE78(v105);
                  sub_10000CE78(&v95);

                  return;
                }
              }
            }
          }

          sub_10000CA2C();
          swift_allocError();
          v82 = 1;
LABEL_85:
          *v81 = v82;
          *(v81 + 8) = 0;
          *(v81 + 16) = 0xE000000000000000;
          swift_willThrow();

          sub_10000CE78(&v99);
          sub_10000CE78(v102);
          sub_10000CE78(v105);

          return;
        }

LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    __break(1u);
    goto LABEL_61;
  }
}

unint64_t sub_1000D0D00(int a1, uint64_t a2)
{
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v9._countAndFlagsBits = 0xD000000000000028;
  v9._object = 0x8000000100131050;
  String.append(_:)(v9);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10011DE90;
  *(v10 + 56) = &type metadata for Int32;
  *(v10 + 64) = &protocol witness table for Int32;
  *(v10 + 32) = a1;
  v11._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v11);

  v12._object = 0x800000010012BE30;
  v12._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v12);
  v24 = a2;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v15 = v22;
  v14 = v23;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A1BC(v5, qword_1001794F0);
  sub_10000A2A4(v16, v8);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v17, qword_100179508);
  sub_100039AA0(2, v8, v15, v14);

  sub_10000C9D0(v8);
  if (a2 == 2)
  {
    swift_beginAccess();
    v18 = *(v2 + 216);
    if (v18)
    {
      return sub_1000CE760(*[v18 bytes]);
    }
  }

  sub_10000A2A4(v16, v8);
  sub_100039F58(2, v8, 0xD000000000000042, 0x8000000100131080);
  sub_10000C9D0(v8);
  sub_10000CA2C();
  swift_allocError();
  *v20 = 2;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

unint64_t sub_1000D1038(int a1, uint64_t a2)
{
  result = sub_1000D0D00(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1000D1094(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_100001AB4(&qword_100175508, &qword_100120F98);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000D1164(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100024020(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1000D1094(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1000D1224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ActiveStreamingInterface();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D1324(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_10007F77C(result, 1);

  return sub_1000D1224(v4, v2, 0);
}

uint64_t sub_1000D13FC(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_100176188, &qword_100124520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1000D1464@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:

    sub_10000CA2C();
    swift_allocError();
    v17 = 36;
    goto LABEL_17;
  }

  v13 = *(a1 + 41);
  if (v13 > 0xF || ((1 << v13) & 0xF3FC) == 0)
  {
    sub_10000CA2C();
    swift_allocError();
    v17 = 49;
    goto LABEL_17;
  }

  v15 = *(a1 + 32);
  if (v15[2] != a2)
  {
    sub_10000CA2C();
    swift_allocError();
    v17 = 84;
    goto LABEL_17;
  }

  if (!v15[3])
  {
    sub_10000CA2C();
    swift_allocError();
    v17 = 83;
    goto LABEL_17;
  }

  if (v15[5] != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v17 = 81;
    goto LABEL_17;
  }

  if (v15[6] != 2)
  {
    sub_10000CA2C();
    swift_allocError();
    v17 = 82;
    goto LABEL_17;
  }

  if (v15[7])
  {
    sub_10000CA2C();
    swift_allocError();
    v17 = 85;
LABEL_17:
    *v16 = v17;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v194 = v11;
  v195 = v9;
  v180 = 0;
  v181 = v3;
  v178 = 0;
  v179 = 0;
  bmAttributes = 0;
  v175 = 0;
  v199 = 0;
  v200 = 0;
  v183 = 0;
  v186 = 0;
  v187 = 0;
  *&v196[4] = 0;
  v197 = 0;
  v19 = 0;
  v20 = 0;
  v21 = &v215;
  v22 = *(a1 + 40);
  v173 = v15[4];
  v207 = &_swiftEmptySetSingleton;
  v208 = &_swiftEmptySetSingleton;
  *v196 = v22 | (v13 << 8);
  v193 = "tusWord did not decode";
  v169 = "lid for Data EPs";
  v168 = "n, defaulting to 6";
  v171 = "ontrol Interface";
  v170 = "ard EP in ADC1 function";
  v167 = "P - only valid for Feedback EPs";
  v182 = a1 + 41;
  v23 = _swiftEmptyArrayStorage;
  v172 = 1;
  v177 = 65280;
  v185 = 1;
  v188 = 1;
  v24 = _swiftEmptyArrayStorage;
  v174 = a3;
  v184 = v15;
  v198 = v12;
  while (2)
  {
    v192 = v183 & 1;
    v25 = v20;
    v26 = v19;
    v27 = (v182 + 16 * v20);
    while (1)
    {
      if (v25 >= v12)
      {
        goto LABEL_223;
      }

      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_224;
      }

      v202 = v25;
      v203 = v26;
      v29 = *v27;
      v30 = *(v27 - 1) | (v29 << 8);
      v204 = *(v27 - 9);
      if (_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v204, v30, v15, *v196))
      {
        v201 = v28;
LABEL_20:
        v12 = v198;
LABEL_21:
        v19 = v203;
        goto LABEL_22;
      }

      if (v29 != 17)
      {
        break;
      }

      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v31 = sub_10000A1BC(v195, qword_1001794F0);
      v32 = v194;
      sub_10000A2A4(v31, v194);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v33, qword_100179508);
      sub_100039F58(1, v32, 0xD000000000000027, (v193 | 0x8000000000000000));
      sub_10000C9D0(v32);
      v34 = v203;
      if (v203)
      {
        v201 = v28;
        v35 = v208;
        v21 = v208[2];
        if (v21)
        {
          v190 = v23;
          v191 = v24;
          sub_100001AB4(&qword_100175170, &qword_100120D48);
          v36 = swift_allocObject();
          v37 = j__malloc_size(v36);
          v36[2] = v21;
          v36[3] = 2 * v37 - 64;
          v189 = sub_10011B610(&v220, v36 + 32, v21, v35);
          v24 = v221;
          v15 = v223;
          v23 = v224;

          sub_100022644();
          if (v189 != v21)
          {
            __break(1u);
            goto LABEL_230;
          }

          v15 = v184;
          v21 = &v215;
          v23 = v190;
          v24 = v191;
          v28 = v201;
          v34 = v203;
          if (!v36[2])
          {
LABEL_37:

            v36 = 0;
          }
        }

        else
        {
          v36 = _swiftEmptyArrayStorage;
          v21 = &v215;
          v28 = v201;
          if (!_swiftEmptyArrayStorage[2])
          {
            goto LABEL_37;
          }
        }

        v205 = v188 & 1;
        v206 = v185 & 1;
        if (!*(v24 + 2))
        {

          v24 = 0;
        }

        *&v215 = v34;
        *(&v215 + 1) = *&v196[4];
        *&v216 = v197;
        BYTE8(v216) = v186;
        *(&v216 + 10) = v212;
        HIWORD(v216) = v213;
        *(&v217 + 1) = *v211;
        DWORD1(v217) = *&v211[3];
        *(&v218 + 2) = v209;
        WORD3(v218) = v210;
        BYTE9(v216) = v206;
        LOBYTE(v217) = v192;
        *(&v217 + 1) = v200;
        LOBYTE(v218) = v187;
        *(&v219 + 1) = v36;
        v220 = v34;
        BYTE1(v218) = v205;
        *(&v218 + 1) = v24;
        *&v219 = v199;
        v221 = *&v196[4];
        v222 = v197;
        LOBYTE(v223) = v186;
        BYTE1(v223) = v206;
        *(&v223 + 2) = v212;
        HIWORD(v223) = v213;
        LOBYTE(v224) = v192;
        HIDWORD(v224) = *&v211[3];
        *(&v224 + 1) = *v211;
        v225 = v200;
        v226 = v187;
        v227 = v205;
        v229 = v210;
        v228 = v209;
        v230 = v24;
        v231 = v199;
        v232 = v36;
        sub_100022594(&v215, v214);
        sub_1000225F0(&v220);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1000243F8(0, *(v23 + 2) + 1, 1, v23);
        }

        v39 = *(v23 + 2);
        v38 = *(v23 + 3);
        if (v39 >= v38 >> 1)
        {
          v23 = sub_1000243F8((v38 > 1), v39 + 1, 1, v23);
        }

        v199 = 0;
        *&v196[4] = 0;
        v197 = 0;
        *(v23 + 2) = v39 + 1;
        v40 = &v23[80 * v39];
        *(v40 + 2) = v215;
        v41 = v216;
        v42 = v217;
        v43 = v219;
        *(v40 + 5) = v218;
        *(v40 + 6) = v43;
        *(v40 + 3) = v41;
        *(v40 + 4) = v42;
        v24 = _swiftEmptyArrayStorage;
        goto LABEL_46;
      }

      v21 = &v215;
LABEL_46:
      v26 = v204;
      v44 = IOUSBGetEndpointDirection(v204) == 1 && v26->wMaxPacketSize < 9u;
      if (IOUSBGetEndpointType(v26) != 1)
      {
        sub_10009B498(&v220, 62);
        v26 = v204;
      }

      if (!v44 && !IOUSBGetEndpointSynchronizationType(v26))
      {
        sub_10009B498(&v220, 94);
        v26 = v204;
      }

      v200 = 0;
      v27 += 16;
      v25 = (v202 + 1);
      v12 = v198;
      if (v28 == v198)
      {
        goto LABEL_184;
      }
    }

    v201 = v28;
    if (v29 <= 59)
    {
      v12 = v198;
      v48 = v204;
      if (v29 != 18)
      {
        if (v29 == 19)
        {
          *&v196[4] = v204;
          goto LABEL_21;
        }

        if (v29 == 20)
        {
          v197 = v204;
          goto LABEL_21;
        }

LABEL_107:
        sub_10009B498(&v220, 37);
        goto LABEL_20;
      }

      v74 = v203;
      if (v203)
      {
        v75 = v208;
        v76 = v208[2];
        if (v76)
        {
          sub_100001AB4(&qword_100175170, &qword_100120D48);
          v77 = swift_allocObject();
          v78 = j__malloc_size(v77);
          *(v77 + 16) = v76;
          *(v77 + 24) = 2 * v78 - 64;
          v79 = v77;
          v202 = sub_10011B610(&v220, (v77 + 32), v76, v75);
          v190 = v223;
          v191 = v222;
          v189 = v224;

          sub_100022644();
          if (v202 != v76)
          {
            __break(1u);
            goto LABEL_232;
          }

          v21 = &v215;
          v74 = v203;
        }

        else
        {
          v79 = _swiftEmptyArrayStorage;
          v21 = &v215;
        }

        if (!v79[2])
        {

          v79 = 0;
        }

        v205 = v188 & 1;
        v206 = v185 & 1;
        if (!*(v24 + 2))
        {

          v24 = 0;
        }

        *&v215 = v74;
        *(&v215 + 1) = *&v196[4];
        *&v216 = v197;
        BYTE8(v216) = v186;
        *(&v216 + 10) = v212;
        HIWORD(v216) = v213;
        *(&v217 + 1) = *v211;
        DWORD1(v217) = *&v211[3];
        *(&v218 + 2) = v209;
        WORD3(v218) = v210;
        BYTE9(v216) = v206;
        LOBYTE(v217) = v192;
        *(&v217 + 1) = v200;
        LOBYTE(v218) = v187;
        *(&v219 + 1) = v79;
        v220 = v74;
        BYTE1(v218) = v205;
        *(&v218 + 1) = v24;
        *&v219 = v199;
        v221 = *&v196[4];
        v222 = v197;
        LOBYTE(v223) = v186;
        BYTE1(v223) = v206;
        *(&v223 + 2) = v212;
        HIWORD(v223) = v213;
        LOBYTE(v224) = v192;
        HIDWORD(v224) = *&v211[3];
        *(&v224 + 1) = *v211;
        v225 = v200;
        v226 = v187;
        v227 = v205;
        v229 = v210;
        v228 = v209;
        v230 = v24;
        v231 = v199;
        v232 = v79;
        sub_100022594(&v215, v214);
        sub_1000225F0(&v220);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1000243F8(0, *(v23 + 2) + 1, 1, v23);
        }

        v93 = *(v23 + 2);
        v92 = *(v23 + 3);
        if (v93 >= v92 >> 1)
        {
          v23 = sub_1000243F8((v92 > 1), v93 + 1, 1, v23);
        }

        v199 = 0;
        v200 = 0;
        *&v196[4] = 0;
        v197 = 0;
        *(v23 + 2) = v93 + 1;
        v94 = &v23[80 * v93];
        *(v94 + 2) = v215;
        v95 = v216;
        v96 = v217;
        v97 = v219;
        *(v94 + 5) = v218;
        *(v94 + 6) = v97;
        *(v94 + 3) = v95;
        *(v94 + 4) = v96;
        v24 = _swiftEmptyArrayStorage;
        v48 = v204;
      }

      if (IOUSBGetEndpointDirection(v48) == 1)
      {
        wMaxPacketSize = v48->wMaxPacketSize;
        v99 = wMaxPacketSize < 9;
        bDescriptorType = v48[1].bDescriptorType;
        if (!v48[1].bDescriptorType)
        {
          v191 = v24;
          v106 = v23;
          v111 = v48 + 1;
          bLength = v48[1].bLength;
          if (!v48[1].bLength)
          {
            goto LABEL_168;
          }

          if (wMaxPacketSize <= 8)
          {
LABEL_159:
            if (bLength >= 0xA)
            {
              v220 = 0;
              v221 = 0xE000000000000000;
              _StringGuts.grow(_:)(56);
              v112._object = (v171 | 0x8000000000000000);
              v112._countAndFlagsBits = 0xD000000000000014;
              String.append(_:)(v112);
              LOBYTE(v215) = v111->bLength;
              v113._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v113);

              v114._countAndFlagsBits = 0xD000000000000022;
              v114._object = (v167 | 0x8000000000000000);
              String.append(_:)(v114);
              v115 = v221;
              v203 = v220;
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v116 = sub_10000A1BC(v195, qword_1001794F0);
              v117 = v194;
              sub_10000A2A4(v116, v194);
              v23 = v106;
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v118 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v118, qword_100179508);
              v99 = 1;
              sub_100039F58(1, v117, v203, v115);

              sub_10000C9D0(v117);
              v24 = v191;
              v185 = 0;
              v186 = 6;
LABEL_175:
              v48 = v204;
              goto LABEL_176;
            }

            v185 = 0;
            v186 = bLength;
            v99 = 1;
LABEL_168:
            v23 = v106;
            v24 = v191;
            goto LABEL_176;
          }

          v23 = v106;
          v24 = v191;
          goto LABEL_170;
        }

        if (wMaxPacketSize <= 8)
        {
          v191 = v24;
          v220 = 0;
          v221 = 0xE000000000000000;
          _StringGuts.grow(_:)(73);
          v101._countAndFlagsBits = 0xD000000000000018;
          v101._object = (v169 | 0x8000000000000000);
          String.append(_:)(v101);
          LOBYTE(v215) = v48[1].bDescriptorType;
          v102._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v102);

          v103._countAndFlagsBits = 0xD00000000000002FLL;
          v103._object = (v168 | 0x8000000000000000);
          String.append(_:)(v103);
          v104 = v220;
          v105 = v221;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v106 = v23;
          v107 = sub_10000A1BC(v195, qword_1001794F0);
          v108 = v194;
          sub_10000A2A4(v107, v194);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v109 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v109, qword_100179508);
          v99 = 1;
          sub_100039F58(1, v108, v104, v105);

          sub_10000C9D0(v108);
          sub_10009B498(&v220, 34);
          v48 = v204;
          v111 = v204 + 1;
          bLength = v204[1].bLength;
          if (!v204[1].bLength)
          {
            goto LABEL_168;
          }

          goto LABEL_159;
        }
      }

      else
      {
        bDescriptorType = v48[1].bDescriptorType;
        if (!v48[1].bDescriptorType)
        {
          if (!v48[1].bLength)
          {
            v99 = 0;
            goto LABEL_176;
          }

LABEL_170:
          v220 = 0;
          v221 = 0xE000000000000000;
          _StringGuts.grow(_:)(69);
          v119._object = (v171 | 0x8000000000000000);
          v119._countAndFlagsBits = 0xD000000000000014;
          String.append(_:)(v119);
          LOBYTE(v215) = v48[1].bLength;
          v120._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v120);

          v121._countAndFlagsBits = 0xD00000000000002FLL;
          v121._object = (v170 | 0x8000000000000000);
          String.append(_:)(v121);
          v122 = v220;
          v123 = v221;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v124 = sub_10000A1BC(v195, qword_1001794F0);
          v125 = v194;
          sub_10000A2A4(v124, v194);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v126 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v126, qword_100179508);
          sub_100039F58(1, v125, v122, v123);

          sub_10000C9D0(v125);
          sub_10009B498(&v220, 35);
          v99 = 0;
          goto LABEL_175;
        }
      }

      v187 = bDescriptorType | 0x80;
      v188 = 0;
      if (!v48[1].bLength)
      {
        v99 = v188;
LABEL_176:
        if (IOUSBGetEndpointType(v48) != 1)
        {
          sub_10009B498(&v220, 62);
          v48 = v204;
        }

        if (v99 || IOUSBGetEndpointSynchronizationType(v48))
        {
          v19 = v48;
          v12 = v198;
        }

        else
        {
          v19 = v48;
          sub_10009B498(&v220, 94);
          v12 = v198;
        }

        goto LABEL_22;
      }

      goto LABEL_170;
    }

    v45 = v181;
    v12 = v198;
    if (v29 > 63)
    {
      if (v29 != 64)
      {
        if (v29 == 65)
        {
          v49 = v23;

          result = USBDescriptor.usbDescriptor()(v204, v30);
          if (result)
          {
            v50 = *result;
            if (*result)
            {
              if (v50 >= 0xF)
              {
                v51 = type metadata accessor for __DataStorage();
                v52 = *(v51 + 48);
                v53 = *(v51 + 52);
                swift_allocObject();
                __DataStorage.init(bytes:length:)();
                v54 = __DataStorage._bytes.getter();
                if (!v54)
                {
                  goto LABEL_74;
                }

                v55 = __DataStorage._offset.getter();
                if (!__OFSUB__(0, v55))
                {
                  v54 -= v55;
LABEL_74:
                  v56 = __DataStorage._length.getter();
                  if (v56 >= v50)
                  {
                    v57 = v50;
                  }

                  else
                  {
                    v57 = v56;
                  }

                  v58 = &v54[v57];
                  if (v54)
                  {
                    v59 = v58;
                  }

                  else
                  {
                    v59 = 0;
                  }

                  sub_1000ED068(v54, v59, &v220);
                  if (!v45)
                  {
                    v181 = 0;

LABEL_131:
                    v23 = v49;
                    v177 = 0;
                    v178 = BYTE4(v220);
                    v180 = BYTE5(v220);
                    v179 = BYTE6(v220);
                    v199 = v221;
                    goto LABEL_20;
                  }

                  goto LABEL_227;
                }

LABEL_233:
                __break(1u);
              }

              *(&v215 + 6) = 0;
              *&v215 = 0;
              BYTE14(v215) = v50;
              memcpy(&v215, result, v50);
              *v214 = v215;
              *&v214[6] = *(&v215 + 6);
              v87 = v214;
              v88 = &v214[v50];
            }

            else
            {
              *(&v215 + 6) = 0;
              *&v215 = 0;
              v87 = &v215;
              v88 = &v215;
            }

            sub_1000ED068(v87, v88, &v220);
            if (!v45)
            {
              v181 = 0;
              goto LABEL_131;
            }

LABEL_228:
          }

LABEL_235:
          __break(1u);
          return result;
        }

        goto LABEL_107;
      }

      v190 = v23;

      result = USBDescriptor.usbDescriptor()(v204, v30);
      if (!result)
      {
        __break(1u);
        goto LABEL_235;
      }

      v63 = result;
      v64 = *result;
      v19 = v203;
      if (!*result)
      {
        *(&v215 + 6) = 0;
        *&v215 = 0;
        sub_1000EC290(&v215, &v215, &v220);
        if (v45)
        {
          goto LABEL_228;
        }

        v181 = 0;
        goto LABEL_126;
      }

      if (v64 < 0xF)
      {
        v89 = sub_1001127F8(*result);
        v91 = HIWORD(v90);
        *&v215 = v89;
        DWORD2(v215) = v90;
        BYTE14(v215) = BYTE6(v90);
        WORD6(v215) = WORD2(v90);
        memcpy(&v215, v63, v64);
        *v214 = v215;
        *&v214[6] = *(&v215 + 6);
        sub_1000EC290(v214, &v214[v91], &v220);
        if (v45)
        {
          goto LABEL_228;
        }

        v181 = 0;
        v23 = v190;
        v19 = v203;
LABEL_134:
        v177 = 0;
        v178 = BYTE4(v220);
        v180 = BYTE5(v220);
        v179 = BYTE6(v220);
        v199 = v221;
        v12 = v198;
        goto LABEL_22;
      }

      v65 = type metadata accessor for __DataStorage();
      v66 = *(v65 + 48);
      v67 = *(v65 + 52);
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      v68 = __DataStorage._bytes.getter();
      if (!v68)
      {
LABEL_94:
        v70 = __DataStorage._length.getter();
        if (v70 >= v64)
        {
          v71 = v64;
        }

        else
        {
          v71 = v70;
        }

        v72 = &v68[v71];
        if (v68)
        {
          v73 = v72;
        }

        else
        {
          v73 = 0;
        }

        sub_1000EC290(v68, v73, &v220);
        if (v45)
        {
LABEL_227:

          goto LABEL_228;
        }

        v181 = 0;

LABEL_126:
        v23 = v190;
        goto LABEL_134;
      }

      v69 = __DataStorage._offset.getter();
      if (!__OFSUB__(0, v69))
      {
        v68 -= v69;
        goto LABEL_94;
      }

LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if (v29 == 60)
    {
      v60 = *(&v204->wMaxPacketSize + 1);
      v61 = v60 - 1;
      if (v60 == 8193)
      {
        v62 = 5;
      }

      else
      {
        v62 = 0;
      }

      if (v61 < 5)
      {
        v62 = 0x304020101uLL >> (8 * v61);
      }

      v175 = v62;
      bmAttributes = v204->bmAttributes;
      goto LABEL_21;
    }

    if (v29 != 63)
    {
      goto LABEL_107;
    }

    v46 = v204;
    v47 = v204->bmAttributes;
    if ((v47 & 1) == 0)
    {
      v19 = v203;
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_100024518(0, *(v24 + 2) + 1, 1, v24);
    }

    v81 = *(v24 + 2);
    v80 = *(v24 + 3);
    v12 = v198;
    if (v81 >= v80 >> 1)
    {
      v127 = sub_100024518((v80 > 1), v81 + 1, 1, v24);
      v12 = v198;
      v24 = v127;
    }

    *(v24 + 2) = v81 + 1;
    v82 = &v24[3 * v81];
    v82[34] = -61;
    *(v82 + 16) = 385;
    if (!v172)
    {
      goto LABEL_225;
    }

    v19 = v203;
    v46 = v204;
    v172 = v203 == 0;
    v47 = v204->bmAttributes;
LABEL_114:
    if ((v47 & 2) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100024518(0, *(v24 + 2) + 1, 1, v24);
      }

      v84 = *(v24 + 2);
      v83 = *(v24 + 3);
      v12 = v198;
      if (v84 >= v83 >> 1)
      {
        v128 = sub_100024518((v83 > 1), v84 + 1, 1, v24);
        v12 = v198;
        v24 = v128;
      }

      *(v24 + 2) = v84 + 1;
      v85 = &v24[3 * v84];
      v85[34] = -64;
      *(v85 + 16) = 705;
      v19 = v203;
      v46 = v204;
    }

    wMaxPacketSize_low = LOBYTE(v46->wMaxPacketSize);
    if (wMaxPacketSize_low == 2)
    {
      v200 = *(&v46->wMaxPacketSize + 1);
      v183 = 1;
    }

    else if (wMaxPacketSize_low == 1)
    {
      v183 = 0;
      v200 = *(&v46->wMaxPacketSize + 1);
    }

LABEL_22:
    v20 = v201;
    if (v201 != v12)
    {
      continue;
    }

    break;
  }

  if (v19)
  {
    v26 = v19;
LABEL_184:

    v130 = sub_1000E45A0(v129);
    if (!v130[2])
    {

      v130 = 0;
    }

    v205 = v188 & 1;
    v206 = v185 & 1;
    if (*(v24 + 2))
    {
      v131 = v24;
    }

    else
    {
      v132 = v26;
      v133 = v130;

      v130 = v133;
      v26 = v132;
      v131 = 0;
    }

    *&v215 = v26;
    *(&v215 + 1) = *&v196[4];
    *&v216 = v197;
    BYTE8(v216) = v186;
    *(&v216 + 10) = v212;
    HIWORD(v216) = v213;
    *(&v217 + 1) = *v211;
    DWORD1(v217) = *&v211[3];
    *(&v218 + 2) = v209;
    WORD3(v218) = v210;
    BYTE9(v216) = v206;
    LOBYTE(v217) = v183 & 1;
    *(&v217 + 1) = v200;
    LOBYTE(v218) = v187;
    *(&v219 + 1) = v130;
    v220 = v26;
    BYTE1(v218) = v205;
    *(&v218 + 1) = v131;
    *&v219 = v199;
    v221 = *&v196[4];
    v222 = v197;
    LOBYTE(v223) = v186;
    BYTE1(v223) = v206;
    *(&v223 + 2) = v212;
    HIWORD(v223) = v213;
    LOBYTE(v224) = v183 & 1;
    HIDWORD(v224) = *&v211[3];
    *(&v224 + 1) = *v211;
    v225 = v200;
    v226 = v187;
    v227 = v205;
    v229 = v210;
    v228 = v209;
    v230 = v131;
    v231 = v199;
    v232 = v130;
    sub_100022594(&v215, v214);
    sub_1000225F0(&v220);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_230:
      v23 = sub_1000243F8(0, *(v23 + 2) + 1, 1, v23);
    }

    v135 = *(v23 + 2);
    v134 = *(v23 + 3);
    if (v135 >= v134 >> 1)
    {
      v23 = sub_1000243F8((v134 > 1), v135 + 1, 1, v23);
    }

    *(v23 + 2) = v135 + 1;
    v136 = &v23[80 * v135];
    *(v136 + 2) = v215;
    v137 = v21[1];
    v138 = v21[2];
    v139 = v21[4];
    *(v136 + 5) = v21[3];
    *(v136 + 6) = v139;
    *(v136 + 3) = v137;
    *(v136 + 4) = v138;
  }

  else
  {
  }

  v191 = v24;
  v140 = *(v23 + 2);

  if (v140)
  {
    v141 = 0;
    v142 = v23;
    v143 = 0;
    v144 = v142;
    v145 = (v142 + 32);
    while (1)
    {
      if (v143 >= *(v144 + 2))
      {
        __break(1u);
        goto LABEL_227;
      }

      v21[5] = *v145;
      v146 = v145[1];
      v147 = v145[2];
      v148 = v145[4];
      v21[8] = v145[3];
      v21[9] = v148;
      v21[6] = v146;
      v21[7] = v147;
      if (!v141)
      {
        v149 = *(v21 + 10);
        sub_100022594(&v220, &v215);
        if (IOUSBGetEndpointUsageType(v149) || (v151 = v149->wMaxPacketSize, v151 <= 8) && v151 > 2)
        {
          v150 = IOUSBGetEndpointUsageType(v149);
          sub_1000225F0(&v220);
          v141 = v150 == 2;
          goto LABEL_197;
        }

        sub_1000225F0(&v220);
      }

      v141 = 1;
LABEL_197:
      ++v143;
      v145 += 5;
      if (v140 == v143)
      {
        v23 = v144;
        if (v141)
        {
          goto LABEL_207;
        }

        break;
      }
    }
  }

  sub_10009B498(&v220, 90);
LABEL_207:
  v152 = v23;
  if (*(v23 + 2) != v173)
  {
    sub_10009B498(&v220, 91);
  }

  v153 = v177 >> 8;
  if (v177 >> 8 <= 0xFE)
  {
    v154 = v178;
  }

  else
  {
    v154 = 0;
  }

  if (v153 <= 0xFE)
  {
    v155 = v177;
  }

  else
  {
    v155 = 0;
  }

  if (v153 <= 0xFE)
  {
    v156 = BYTE1(v177);
  }

  else
  {
    v156 = 0;
  }

  v157 = sub_1000E45A0(v207);
  if (!v157[2])
  {

    v157 = 0;
  }

  v158 = bmAttributes;
  v159 = v175;
  v161 = v179;
  v160 = v180;
  *&v215 = v15;
  BYTE8(v215) = v175;
  *(v21 + 2) = bmAttributes;
  *(v21 + 3) = v160;
  *(v21 + 4) = v161;
  *(v21 + 5) = v154;
  LOBYTE(v218) = v155;
  BYTE1(v218) = v156;
  *(v21 + 7) = v152;
  *(v21 + 8) = 0;
  *(v21 + 9) = v157;
  *(v21 + 10) = v15;
  LOBYTE(v221) = v159;
  *(v21 + 12) = v158;
  *(v21 + 13) = v160;
  *(v21 + 14) = v161;
  *(v21 + 15) = v154;
  v226 = v155;
  v227 = v156;
  *(v21 + 17) = v152;
  *(v21 + 18) = 0;
  *(v21 + 19) = v157;
  sub_10001EBF0(&v215, v214);
  result = sub_10001EC4C(&v220);
  v162 = v21[1];
  v163 = v21[3];
  v164 = v21[4];
  v165 = v174;
  v174[2] = v21[2];
  v165[3] = v163;
  v165[4] = v164;
  *v165 = v215;
  v165[1] = v162;
  return result;
}