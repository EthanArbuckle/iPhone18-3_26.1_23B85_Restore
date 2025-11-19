uint64_t sub_100038C60(uint64_t result, int a2, int a3)
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

uint64_t sub_100038D08(const char *a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v18, qword_100179508);
  v37 = StaticString.description.getter();
  v38 = v19;
  v20._countAndFlagsBits = 32;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v34 = a4;
  v21._countAndFlagsBits = a4;
  v21._object = a5;
  String.append(_:)(v21);
  a7(4, a6, v37, v38);

  if (qword_100173CB0 != -1)
  {
    result = swift_once();
  }

  if ((byte_1001794E8 & 1) == 0)
  {
    v23 = *(v18 + 24);
    v24 = type metadata accessor for LogID(0);
    v25 = v35;
    v26 = v36;
    (*(v36 + 16))(v17, a6 + *(v24 + 20), v35);

    v27 = OSSignposter.logHandle.getter();
    v28 = static os_signpost_type_t.event.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if ((result & 1) == 0)
    {

      return (*(v26 + 8))(v17, v25);
    }

    if (a3)
    {
      if (!(a1 >> 32))
      {
        v29 = v36;
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        if (a1 >> 16 <= 0x10)
        {

          a1 = &v37;
          goto LABEL_15;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {

      if (a1)
      {
        v29 = v36;
LABEL_15:
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37 = v31;
        *v30 = 136446210;
        *(v30 + 4) = sub_100035760(v34, a5, &v37);
        v32 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v28, v32, a1, "%{public}s", v30, 0xCu);
        sub_10000CE78(v31);

        return (*(v29 + 8))(v17, v35);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10003906C(int a1, uint64_t a2, uint64_t a3)
{
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10011DE90;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 32) = a1;

  return String.init(format:_:)();
}

uint64_t sub_1000390F4(char a1, char a2)
{
  if (*&asc_100121928[8 * a1] == *&asc_100121928[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10003915C(char a1)
{
  Hasher.init(_seed:)();
  v2 = *&asc_100121928[8 * a1];
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000391BC(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  v3 = *&asc_100121928[8 * a2];
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100039218()
{
  if (qword_100173CF8 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100179640 + 16);
  if (v0)
  {

    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    LOBYTE(v0) = [v1 BOOLForKey:v2];
  }

  byte_1001794E8 = v0;
}

uint64_t UInt8.hexString.getter(char a1)
{
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10011DE90;
  *(v2 + 56) = &type metadata for UInt8;
  *(v2 + 64) = &protocol witness table for UInt8;
  *(v2 + 32) = a1;

  return String.init(format:_:)();
}

uint64_t UInt16.hexString.getter(__int16 a1)
{
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10011DE90;
  *(v2 + 56) = &type metadata for UInt16;
  *(v2 + 64) = &protocol witness table for UInt16;
  *(v2 + 32) = a1;

  return String.init(format:_:)();
}

uint64_t sub_100039624()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LogID(0);
  sub_10004EF10(v5, qword_1001794F0);
  v6 = sub_10000A1BC(v5, qword_1001794F0);
  static OSSignpostID.null.getter();
  *v6 = 1701736302;
  *(v6 + 1) = 0xE400000000000000;
  result = (*(v1 + 32))(&v6[*(v5 + 20)], v4, v0);
  v8 = &v6[*(v5 + 24)];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_100039740@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::String *a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a3;
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for AUALog(0) + 24);
  v34 = v4;
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10011DE90;
  v15 = OSSignpostID.rawValue.getter();
  *(v14 + 56) = &type metadata for UInt64;
  *(v14 + 64) = &protocol witness table for UInt64;
  *(v14 + 32) = v15;
  v16 = String.init(format:_:)();
  v18 = v17;
  v19 = a1;
  *a4 = a1;
  a4[1] = a2;
  v20 = type metadata accessor for LogID(0);
  v21 = *(v9 + 16);
  v22 = a4 + *(v20 + 20);
  v33 = v8;
  v21(v22, v12, v8);
  v23 = (a4 + *(v20 + 24));
  *v23 = v16;
  v23[1] = v18;
  v24 = qword_100173CB8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A1BC(v20, qword_1001794F0);
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v35 = 0x7263204449676F6CLL;
  v36 = 0xEF203A6465746165;
  v26._countAndFlagsBits = v16;
  v26._object = v18;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v19;
  v27._object = a2;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x206D6F726620;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29 = v32;
  String.append(_:)(*(v32 + *(v20 + 24)));
  String.append(_:)(*v29);
  sub_100039AA0(4, v25, v35, v36);

  return (*(v9 + 8))(v12, v33);
}

uint64_t sub_100039A0C()
{
  v1 = *&asc_100121928[8 * *v0];
  String.hash(into:)();
}

unint64_t sub_100039A54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004EC10(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100039AA0(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v48._countAndFlagsBits = a3;
  v48._object = a4;
  v47 = type metadata accessor for LogID(0);
  v8 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AUALog(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v18);
  v23 = v43 - v22;
  v24 = *(v4 + 8);
  if (*(v24 + 16))
  {
    result = sub_10001D1DC(a1);
    if (v25)
    {
      (*(v16 + 16))(v20, *(v24 + 56) + *(v16 + 72) * result, v15);
      (*(v16 + 32))(v23, v20, v15);
      sub_10004EDD0(v5, v14, type metadata accessor for AUALog);
      sub_10004EDD0(a2, v10, type metadata accessor for LogID);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v46 = v27;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v43[1] = v43;
        v44 = v29;
        v51 = v29;
        v45 = v28;
        *v28 = 136446210;
        v30 = *(*v14 + 16);
        __chkstk_darwin(v29);
        v43[-2] = sub_10004EFBC;
        v43[-1] = v31;

        os_unfair_lock_lock(v30 + 4);
        sub_10004EF8C(&v49);
        os_unfair_lock_unlock(v30 + 4);
        v32 = v49;
        v33 = v50;

        v49 = 2105376;
        v50 = 0xE300000000000000;
        v34._countAndFlagsBits = v32;
        v34._object = v33;
        String.append(_:)(v34);

        v35 = &v10[*(v47 + 24)];
        v36 = *v35;
        v37 = v35[1];

        v38._countAndFlagsBits = v36;
        v38._object = v37;
        String.append(_:)(v38);

        String.append(_:)(v48);

        v39 = v49;
        v40 = v50;
        sub_10004EE38(v14, type metadata accessor for AUALog);
        sub_10004EE38(v10, type metadata accessor for LogID);
        v41 = sub_100035760(v39, v40, &v51);

        v42 = v45;
        *(v45 + 1) = v41;
        _os_log_impl(&_mh_execute_header, v26, v46, "%{public}s", v42, 0xCu);
        sub_10000CE78(v44);

        return (*(v16 + 8))(v23, v15);
      }

      else
      {

        (*(v16 + 8))(v23, v15);
        sub_10004EE38(v14, type metadata accessor for AUALog);
        return sub_10004EE38(v10, type metadata accessor for LogID);
      }
    }
  }

  return result;
}

unint64_t sub_100039F58(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v48._countAndFlagsBits = a3;
  v48._object = a4;
  v47 = type metadata accessor for LogID(0);
  v8 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AUALog(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v18);
  v23 = v43 - v22;
  v24 = *(v4 + 8);
  if (*(v24 + 16))
  {
    result = sub_10001D1DC(a1);
    if (v25)
    {
      (*(v16 + 16))(v20, *(v24 + 56) + *(v16 + 72) * result, v15);
      (*(v16 + 32))(v23, v20, v15);
      sub_10004EDD0(v5, v14, type metadata accessor for AUALog);
      sub_10004EDD0(a2, v10, type metadata accessor for LogID);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v46 = v27;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v43[1] = v43;
        v44 = v29;
        v51 = v29;
        v45 = v28;
        *v28 = 136446210;
        v30 = *(*v14 + 16);
        __chkstk_darwin(v29);
        v43[-2] = sub_10004EE98;
        v43[-1] = v31;

        os_unfair_lock_lock(v30 + 4);
        sub_10004EEB4(&v49);
        os_unfair_lock_unlock(v30 + 4);
        v32 = v49;
        v33 = v50;

        v49 = 2105376;
        v50 = 0xE300000000000000;
        v34._countAndFlagsBits = v32;
        v34._object = v33;
        String.append(_:)(v34);

        v35 = &v10[*(v47 + 24)];
        v36 = *v35;
        v37 = v35[1];

        v38._countAndFlagsBits = v36;
        v38._object = v37;
        String.append(_:)(v38);

        String.append(_:)(v48);

        v39 = v49;
        v40 = v50;
        sub_10004EE38(v14, type metadata accessor for AUALog);
        sub_10004EE38(v10, type metadata accessor for LogID);
        v41 = sub_100035760(v39, v40, &v51);

        v42 = v45;
        *(v45 + 1) = v41;
        _os_log_impl(&_mh_execute_header, v26, v46, "%{public}s", v42, 0xCu);
        sub_10000CE78(v44);

        return (*(v16 + 8))(v23, v15);
      }

      else
      {

        (*(v16 + 8))(v23, v15);
        sub_10004EE38(v14, type metadata accessor for AUALog);
        return sub_10004EE38(v10, type metadata accessor for LogID);
      }
    }
  }

  return result;
}

void sub_10003A410(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, void *a7, void *a8, void *a9)
{
  v115 = a7;
  v123 = a5;
  LODWORD(v122) = a4;
  v120 = a2;
  v121 = a3;
  v114 = type metadata accessor for LogID(0);
  v13 = *(*(v114 - 8) + 64);
  v14 = __chkstk_darwin(v114);
  v118 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v106 - v17;
  __chkstk_darwin(v16);
  v19 = &v106 - v18;
  v20 = type metadata accessor for Logger();
  v124 = *(v20 - 8);
  v21 = *(v124 + 64);
  __chkstk_darwin(v20);
  v125 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = mach_absolute_time();
  v23 = *a8;
  v24 = *(*a8 + 16);
  v126 = sub_10004EFA4;
  v127 = v23;

  os_unfair_lock_lock(v24 + 4);
  sub_10004EF74(&v128);
  v116 = v9;
  if (v9)
  {
    goto LABEL_40;
  }

  os_unfair_lock_unlock(v24 + 4);
  v25 = v129;
  v113 = v128;
  v112 = v130;

  v26 = a8[1];
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v27 = sub_10001D1DC(a1);
  if ((v28 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v119 = a9;
  (*(v124 + 16))(v125, *(v26 + 56) + *(v124 + 72) * v27, v20);
  v128 = StaticString.description.getter();
  v129 = v29;
  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = a6;
  v31._object = v115;
  String.append(_:)(v31);
  v32 = v129;
  v115 = v128;
  v33 = v19;
  sub_10004EDD0(v123, v19, type metadata accessor for LogID);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v111 = v20;
  v109 = v23;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v131 = v107;
    *v37 = 136446210;
    v128 = 2113069;
    v129 = 0xE300000000000000;
    v38._countAndFlagsBits = v113;
    v38._object = v25;
    String.append(_:)(v38);
    v39 = (v33 + *(v114 + 24));
    v40 = *v39;
    v41 = v39[1];

    v42._countAndFlagsBits = v40;
    v42._object = v41;
    String.append(_:)(v42);

    v43._countAndFlagsBits = v115;
    v43._object = v32;
    String.append(_:)(v43);

    v44 = v128;
    v45 = v129;
    sub_10004EE38(v33, type metadata accessor for LogID);
    v46 = sub_100035760(v44, v45, &v131);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s", v37, 0xCu);
    sub_10000CE78(v107);
  }

  else
  {

    sub_10004EE38(v33, type metadata accessor for LogID);
  }

  a1 = v118;
  v47 = v116;
  sub_1000B7C4C(v119);
  v24 = v47;
  v110 = v25;
  if (v47)
  {
    v48 = mach_absolute_time();
    a6 = v48 - v117;
    if (v48 >= v117)
    {
      if (qword_100173D00 == -1)
      {
LABEL_10:
        if (qword_100179650 == HIDWORD(qword_100179650))
        {
LABEL_14:
          v128 = 0;
          v129 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);
          v49._countAndFlagsBits = StaticString.description.getter();
          String.append(_:)(v49);

          v50._countAndFlagsBits = 0x203A524F52524520;
          v50._object = 0xE800000000000000;
          String.append(_:)(v50);
          v131 = v24;
          sub_100001AB4(&qword_100177270, &qword_100120A40);
          _print_unlocked<A, B>(_:_:)();
          v51._countAndFlagsBits = 23328;
          v51._object = 0xE200000000000000;
          String.append(_:)(v51);
          v131 = a6 / 0x3E8;
          v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v52);

          v53._countAndFlagsBits = 1567847712;
          v53._object = 0xE400000000000000;
          String.append(_:)(v53);
          v55 = v128;
          v54 = v129;
          sub_10004EDD0(v123, a1, type metadata accessor for LogID);

          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v123 = v24;
            v59 = v58;
            v60 = swift_slowAlloc();
            v122 = v55;
            v61 = v60;
            v131 = v60;
            *v59 = 136446210;
            v128 = 11580;
            v129 = 0xE200000000000000;
            v62._countAndFlagsBits = v113;
            v62._object = v25;
            String.append(_:)(v62);
            v63 = (a1 + *(v114 + 24));
            v64 = *v63;
            v65 = v63[1];

            v66._countAndFlagsBits = v64;
            v66._object = v65;
            String.append(_:)(v66);

            v67._countAndFlagsBits = v122;
            v67._object = v54;
            String.append(_:)(v67);

            v68 = v128;
            v69 = v129;
            sub_10004EE38(a1, type metadata accessor for LogID);
            v70 = sub_100035760(v68, v69, &v131);

            *(v59 + 4) = v70;
            _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s", v59, 0xCu);
            sub_10000CE78(v61);
          }

          else
          {

            v71 = sub_10004EE38(a1, type metadata accessor for LogID);
          }

          v97 = v111;
          v98 = *(v109 + 16);
          v99 = __chkstk_darwin(v71);
          *(&v106 - 2) = v100;
          *(&v106 - 2) = v112;
          __chkstk_darwin(v99);
          *(&v106 - 2) = sub_10001EF68;
          *(&v106 - 1) = v101;

          os_unfair_lock_lock(v98 + 4);
          sub_10004EFD4();
          os_unfair_lock_unlock(v98 + 4);

          swift_willThrow();
          (*(v124 + 8))(v125, v97);
          goto LABEL_29;
        }

        if (is_mul_ok(a6, qword_100179650))
        {
          if (HIDWORD(qword_100179650))
          {
            a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
            goto LABEL_14;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_33:
      swift_once();
      goto LABEL_10;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v72 = mach_absolute_time();
  a6 = v72 - v117;
  if (v72 < v117)
  {
    __break(1u);
  }

  else if (qword_100173D00 == -1)
  {
    goto LABEL_18;
  }

  swift_once();
LABEL_18:
  v73 = v108;
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (!is_mul_ok(a6, qword_100179650))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (!HIDWORD(qword_100179650))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      os_unfair_lock_unlock(v24 + 4);
      __break(1u);
      goto LABEL_41;
    }

    a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
  }

  v128 = StaticString.description.getter();
  v129 = v74;
  v75._countAndFlagsBits = 23328;
  v75._object = 0xE200000000000000;
  String.append(_:)(v75);
  v131 = a6 / 0x3E8;
  v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v76);

  v77._countAndFlagsBits = 1567847712;
  v77._object = 0xE400000000000000;
  String.append(_:)(v77);
  v79 = v128;
  v78 = v129;
  sub_10004EDD0(v123, v73, type metadata accessor for LogID);

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v123 = 0;
    v83 = v82;
    v84 = swift_slowAlloc();
    v85._object = v25;
    v86 = v79;
    v87 = v84;
    v131 = v84;
    *v83 = 136446210;
    v128 = 2108732;
    v129 = 0xE300000000000000;
    LODWORD(v122) = v81;
    v85._countAndFlagsBits = v113;
    String.append(_:)(v85);
    v88 = (v73 + *(v114 + 24));
    v89 = *v88;
    v90 = v88[1];

    v91._countAndFlagsBits = v89;
    v91._object = v90;
    String.append(_:)(v91);

    v92._countAndFlagsBits = v86;
    v92._object = v78;
    String.append(_:)(v92);

    v93 = v128;
    v94 = v129;
    sub_10004EE38(v73, type metadata accessor for LogID);
    v95 = sub_100035760(v93, v94, &v131);

    *(v83 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v80, v122, "%{public}s", v83, 0xCu);
    sub_10000CE78(v87);

    v24 = v123;
  }

  else
  {

    v96 = sub_10004EE38(v73, type metadata accessor for LogID);
  }

  v102 = v111;
  a6 = *(v109 + 16);
  v103 = __chkstk_darwin(v96);
  *(&v106 - 2) = v104;
  *(&v106 - 2) = v112;
  __chkstk_darwin(v103);
  *(&v106 - 2) = sub_10001EF68;
  *(&v106 - 1) = v105;

  os_unfair_lock_lock((a6 + 16));
  sub_10004EFD4();
  if (!v24)
  {
    os_unfair_lock_unlock((a6 + 16));

    (*(v124 + 8))(v125, v102);

LABEL_29:

    return;
  }

LABEL_41:
  os_unfair_lock_unlock((a6 + 16));
  __break(1u);
}

void sub_10003B08C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, void *a7, void *a8, double a9, char *a10)
{
  v118 = a7;
  v126 = a5;
  LODWORD(v125) = a4;
  v123 = a2;
  v124 = a3;
  v117 = type metadata accessor for LogID(0);
  v15 = *(*(v117 - 8) + 64);
  v16 = __chkstk_darwin(v117);
  v121 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v111 = &v109 - v19;
  __chkstk_darwin(v18);
  v21 = &v109 - v20;
  v22 = type metadata accessor for Logger();
  v127 = *(v22 - 8);
  v23 = *(v127 + 64);
  __chkstk_darwin(v22);
  v128 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = mach_absolute_time();
  v25 = *a8;
  v26 = *(*a8 + 16);
  v129 = sub_10004EFA4;
  v130 = v25;

  os_unfair_lock_lock(v26 + 4);
  sub_10004EF74(&v132);
  v119 = v10;
  if (v10)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v26 + 4);
  v27 = v133;
  v116 = v132;
  v115 = v134;

  v28 = a8[1];
  if (!*(v28 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v29 = sub_10001D1DC(a1);
  if ((v30 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v122 = a10;
  (*(v127 + 16))(v128, *(v28 + 56) + *(v127 + 72) * v29, v22);
  v132 = StaticString.description.getter();
  v133 = v31;
  v32._countAndFlagsBits = 32;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = a6;
  v33._object = v118;
  String.append(_:)(v33);
  v34 = v133;
  v118 = v132;
  v35 = v21;
  sub_10004EDD0(v126, v21, type metadata accessor for LogID);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v114 = v22;
  v112 = v25;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v110 = v40;
    *v39 = 136446210;
    v131 = v40;
    v132 = 2113069;
    v133 = 0xE300000000000000;
    v41._countAndFlagsBits = v116;
    v41._object = v27;
    String.append(_:)(v41);
    v42 = (v35 + *(v117 + 24));
    v43 = *v42;
    v44 = v42[1];

    v45._countAndFlagsBits = v43;
    v45._object = v44;
    String.append(_:)(v45);

    v46._countAndFlagsBits = v118;
    v46._object = v34;
    String.append(_:)(v46);

    v47 = v132;
    v48 = v133;
    sub_10004EE38(v35, type metadata accessor for LogID);
    v49 = sub_100035760(v47, v48, &v131);

    *(v39 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s", v39, 0xCu);
    sub_10000CE78(v110);
  }

  else
  {

    sub_10004EE38(v35, type metadata accessor for LogID);
  }

  a1 = v121;
  v50 = v119;
  sub_100016440(v122, a9);
  v26 = v50;
  v113 = v27;
  if (!v50)
  {
    v75 = mach_absolute_time();
    a6 = v75 - v120;
    if (v75 < v120)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v76 = v111;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v26 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v132 = StaticString.description.getter();
    v133 = v77;
    v78._countAndFlagsBits = 23328;
    v78._object = 0xE200000000000000;
    String.append(_:)(v78);
    v131 = a6 / 0x3E8;
    v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 1567847712;
    v80._object = 0xE400000000000000;
    String.append(_:)(v80);
    v82 = v132;
    v81 = v133;
    sub_10004EDD0(v126, v76, type metadata accessor for LogID);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v126 = 0;
      v86 = v85;
      v87 = swift_slowAlloc();
      v88._object = v27;
      v89 = v82;
      v90 = v87;
      *v86 = 136446210;
      v131 = v87;
      v132 = 2108732;
      v133 = 0xE300000000000000;
      LODWORD(v125) = v84;
      v88._countAndFlagsBits = v116;
      String.append(_:)(v88);
      v91 = (v76 + *(v117 + 24));
      v92 = *v91;
      v93 = v91[1];

      v94._countAndFlagsBits = v92;
      v94._object = v93;
      String.append(_:)(v94);

      v95._countAndFlagsBits = v89;
      v95._object = v81;
      String.append(_:)(v95);

      v96 = v132;
      v97 = v133;
      sub_10004EE38(v76, type metadata accessor for LogID);
      v98 = sub_100035760(v96, v97, &v131);

      *(v86 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v83, v125, "%{public}s", v86, 0xCu);
      sub_10000CE78(v90);

      v26 = v126;
    }

    else
    {

      v99 = sub_10004EE38(v76, type metadata accessor for LogID);
    }

    v105 = v114;
    a6 = *(v112 + 16);
    v106 = __chkstk_darwin(v99);
    *(&v109 - 2) = v107;
    *(&v109 - 2) = v115;
    __chkstk_darwin(v106);
    *(&v109 - 2) = sub_10001EF68;
    *(&v109 - 1) = v108;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v26)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v127 + 8))(v128, v105);

      return;
    }

    goto LABEL_40;
  }

  v51 = mach_absolute_time();
  a6 = v51 - v120;
  if (v51 >= v120)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v132 = 0;
  v133 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v52._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x203A524F52524520;
  v53._object = 0xE800000000000000;
  String.append(_:)(v53);
  v131 = v26;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 23328;
  v54._object = 0xE200000000000000;
  String.append(_:)(v54);
  v131 = a6 / 0x3E8;
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 1567847712;
  v56._object = 0xE400000000000000;
  String.append(_:)(v56);
  v58 = v132;
  v57 = v133;
  sub_10004EDD0(v126, a1, type metadata accessor for LogID);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v126 = v26;
    v62 = v61;
    v63 = swift_slowAlloc();
    v125 = v58;
    v64 = v63;
    *v62 = 136446210;
    v131 = v63;
    v132 = 11580;
    v133 = 0xE200000000000000;
    v65._countAndFlagsBits = v116;
    v65._object = v27;
    String.append(_:)(v65);
    v66 = (a1 + *(v117 + 24));
    v67 = *v66;
    v68 = v66[1];

    v69._countAndFlagsBits = v67;
    v69._object = v68;
    String.append(_:)(v69);

    v70._countAndFlagsBits = v125;
    v70._object = v57;
    String.append(_:)(v70);

    v71 = v132;
    v72 = v133;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v73 = sub_100035760(v71, v72, &v131);

    *(v62 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v59, v60, "%{public}s", v62, 0xCu);
    sub_10000CE78(v64);
  }

  else
  {

    v74 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v100 = v114;
  v101 = *(v112 + 16);
  v102 = __chkstk_darwin(v74);
  *(&v109 - 2) = v103;
  *(&v109 - 2) = v115;
  __chkstk_darwin(v102);
  *(&v109 - 2) = sub_10001EF68;
  *(&v109 - 1) = v104;

  os_unfair_lock_lock(v101 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v101 + 4);

  swift_willThrow();
  (*(v127 + 8))(v128, v100);
}

void sub_10003BD38(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, char *a9)
{
  v90 = a7;
  v97 = a5;
  v96 = a4;
  v94 = a2;
  v95 = a3;
  v89 = type metadata accessor for LogID(0);
  v13 = *(*(v89 - 8) + 64);
  v14 = __chkstk_darwin(v89);
  v93 = &v82[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v82[-v16];
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v98 = &v82[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = mach_absolute_time();
  v22 = *a8;
  v23 = *(*a8 + 16);
  v100 = sub_10004EFA4;
  v101 = v22;
  v87 = v22;

  os_unfair_lock_lock(v23 + 4);
  sub_10004EF74(&v102);
  if (v9)
  {
    goto LABEL_26;
  }

  os_unfair_lock_unlock(v23 + 4);
  v99 = *(&v102 + 1);
  v88 = v102;
  v86 = v103;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_21;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = a9;
  v28 = *(v24 + 56);
  v84 = v19;
  (*(v19 + 16))(v98, v28 + *(v19 + 72) * v25, v18);
  *&v102 = StaticString.description.getter();
  *(&v102 + 1) = v29;
  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = a6;
  v31._object = v90;
  String.append(_:)(v31);
  v32 = *(&v102 + 1);
  v90 = v102;
  v33 = v17;
  sub_10004EDD0(v97, v17, type metadata accessor for LogID);

  v34 = v99;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v85 = v18;
  v92 = a9;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40._object = v34;
    v41 = v39;
    v104 = v39;
    *v38 = 136446210;
    *&v102 = 2113069;
    *(&v102 + 1) = 0xE300000000000000;
    v83 = v36;
    v40._countAndFlagsBits = v88;
    String.append(_:)(v40);
    v42 = (v33 + *(v89 + 24));
    v43 = *v42;
    v44 = v42[1];

    v45._countAndFlagsBits = v43;
    v45._object = v44;
    String.append(_:)(v45);

    v46._countAndFlagsBits = v90;
    v46._object = v32;
    String.append(_:)(v46);

    v47 = v102;
    sub_10004EE38(v33, type metadata accessor for LogID);
    v48 = sub_100035760(v47, *(&v47 + 1), &v104);

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v35, v83, "%{public}s", v38, 0xCu);
    sub_10000CE78(v41);

    v27 = v92;
  }

  else
  {

    v49 = sub_10004EE38(v33, type metadata accessor for LogID);
  }

  v23 = *&v27[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
  v17 = v93;
  while (1)
  {
    a1 = *&v23[4]._os_unfair_lock_opaque;
    __chkstk_darwin(v49);
    *&v82[-16] = sub_10001EE88;
    *&v82[-8] = v23;

    os_unfair_lock_lock(a1 + 4);
    sub_10004EDB4(&v102);
    os_unfair_lock_unlock(a1 + 4);
    v50 = v102;

    if (!v50)
    {
      break;
    }

    v50(v51);
    v52 = sub_10001EFC0(v50);
    v53 = *&v23[4]._os_unfair_lock_opaque;
    __chkstk_darwin(v52);
    *&v82[-16] = sub_10001EEE8;
    *&v82[-8] = v23;

    os_unfair_lock_lock(v53 + 4);
    sub_10004EDB4(&v102);
    os_unfair_lock_unlock(v53 + 4);
  }

  v54 = mach_absolute_time();
  v24 = v54 - v91;
  if (v54 >= v91)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_12:
  v55 = v99;
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v24, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v24 = v24 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    os_unfair_lock_unlock(a1 + 4);
    __break(1u);
LABEL_26:
    os_unfair_lock_unlock(v23 + 4);
    __break(1u);
    return;
  }

LABEL_16:
  *&v102 = StaticString.description.getter();
  *(&v102 + 1) = v56;
  v57._countAndFlagsBits = 23328;
  v57._object = 0xE200000000000000;
  String.append(_:)(v57);
  v104 = v24 / 0x3E8;
  v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v58);

  v59._countAndFlagsBits = 1567847712;
  v59._object = 0xE400000000000000;
  String.append(_:)(v59);
  v60 = v102;
  sub_10004EDD0(v97, v17, type metadata accessor for LogID);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v97 = v60;
    v65 = v64;
    v104 = v64;
    *v63 = 136446210;
    *&v102 = 2108732;
    *(&v102 + 1) = 0xE300000000000000;
    v66._countAndFlagsBits = v88;
    v66._object = v55;
    String.append(_:)(v66);
    v67 = &v17[*(v89 + 24)];
    v68 = *v67;
    v69 = v67[1];

    v70._countAndFlagsBits = v68;
    v70._object = v69;
    String.append(_:)(v70);

    v71._countAndFlagsBits = v97;
    v71._object = *(&v60 + 1);
    String.append(_:)(v71);

    v72 = v102;
    sub_10004EE38(v93, type metadata accessor for LogID);
    v73 = sub_100035760(v72, *(&v72 + 1), &v104);

    *(v63 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s", v63, 0xCu);
    sub_10000CE78(v65);
  }

  else
  {

    v74 = sub_10004EE38(v17, type metadata accessor for LogID);
  }

  v75 = *(v87 + 16);
  v76 = __chkstk_darwin(v74);
  *&v82[-16] = v77;
  *&v82[-8] = v78;
  __chkstk_darwin(v76);
  *&v82[-16] = sub_10001EF68;
  *&v82[-8] = v79;

  os_unfair_lock_lock(v75 + 4);
  sub_10004EFD4();
  v80 = v85;
  v81 = v84;
  os_unfair_lock_unlock(v75 + 4);

  (*(v81 + 8))(v98, v80);
}

void sub_10003C66C(void *a1, _DWORD *a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, void *a11, char *a12)
{
  v119 = a7;
  v127 = a5;
  LODWORD(v126) = a4;
  v124 = a2;
  v125 = a3;
  v118 = type metadata accessor for LogID(0);
  v16 = *(*(v118 - 8) + 64);
  v17 = __chkstk_darwin(v118);
  v113 = &v108[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v112 = &v108[-v20];
  __chkstk_darwin(v19);
  v22 = &v108[-v21];
  v128 = type metadata accessor for Logger();
  v23 = *(v128 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v128);
  v130 = &v108[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = mach_absolute_time();
  v26 = *a8;
  v27 = *(*a8 + 16);
  v131 = sub_10004EFA4;
  v132 = v26;

  os_unfair_lock_lock(v27 + 4);
  sub_10004EF74(&v133);
  v120 = v12;
  if (v12)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v27 + 4);
  v117 = v133;
  v129 = v134;
  v28 = v135;

  v29 = a8[1];
  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v30 = sub_10001D1DC(a1);
  if ((v31 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v114 = v28;
  v115 = v26;
  v27 = a12;
  a8 = a9;
  v122 = a11;
  v123 = a10;
  (*(v23 + 16))(v130, *(v29 + 56) + *(v23 + 72) * v30, v128);
  v133 = StaticString.description.getter();
  v134 = v32;
  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = a6;
  v34._object = v119;
  String.append(_:)(v34);
  v35 = v134;
  v119 = v133;
  v36 = v22;
  sub_10004EDD0(v127, v22, type metadata accessor for LogID);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v116 = v23;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v111 = a9;
    v41 = v40;
    v110 = swift_slowAlloc();
    v136 = v110;
    *v41 = 136446210;
    v133 = 2113069;
    v134 = 0xE300000000000000;
    v109 = v38;
    v42._countAndFlagsBits = v117;
    v42._object = a1;
    String.append(_:)(v42);
    v43 = (v36 + *(v118 + 24));
    v44 = v36;
    v45 = *v43;
    v46 = v43[1];

    v47._countAndFlagsBits = v45;
    v47._object = v46;
    String.append(_:)(v47);
    a1 = v129;

    v48._countAndFlagsBits = v119;
    v48._object = v35;
    String.append(_:)(v48);

    v49 = v133;
    v50 = v134;
    sub_10004EE38(v44, type metadata accessor for LogID);
    v51 = sub_100035760(v49, v50, &v136);

    *(v41 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v37, v109, "%{public}s", v41, 0xCu);
    sub_10000CE78(v110);

    a8 = v111;
  }

  else
  {

    sub_10004EE38(v36, type metadata accessor for LogID);
  }

  v52 = v120;
  sub_1000B2494(a8, v123, v122, a12);
  v23 = v52;
  if (!v52)
  {
    v76 = mach_absolute_time();
    v22 = v76 - v121;
    if (v76 < v121)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v22, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v27 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v22 + 16));
        __break(1u);
        return;
      }

      v22 = v22 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v133 = StaticString.description.getter();
    v134 = v77;
    v78._countAndFlagsBits = 23328;
    v78._object = 0xE200000000000000;
    String.append(_:)(v78);
    v136 = v22 / 0x3E8;
    v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 1567847712;
    v80._object = 0xE400000000000000;
    String.append(_:)(v80);
    v81 = v134;
    v125 = v133;
    v82 = v112;
    sub_10004EDD0(v127, v112, type metadata accessor for LogID);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v126 = 0;
      v86 = v85;
      v127 = swift_slowAlloc();
      v136 = v127;
      *v86 = 136446210;
      v133 = 2108732;
      v134 = 0xE300000000000000;
      LODWORD(v124) = v84;
      v87._countAndFlagsBits = v117;
      v87._object = a1;
      String.append(_:)(v87);
      v88 = &v82[*(v118 + 24)];
      v89 = a8;
      v90 = *v88;
      v91 = v88[1];

      v92._countAndFlagsBits = v90;
      v92._object = v91;
      String.append(_:)(v92);

      v93._countAndFlagsBits = v125;
      v93._object = v81;
      String.append(_:)(v93);
      a8 = v89;

      v94 = v133;
      v95 = v134;
      sub_10004EE38(v82, type metadata accessor for LogID);
      v96 = sub_100035760(v94, v95, &v136);

      *(v86 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v83, v124, "%{public}s", v86, 0xCu);
      sub_10000CE78(v127);

      v23 = v126;
    }

    else
    {

      v97 = sub_10004EE38(v82, type metadata accessor for LogID);
    }

    v104 = v116;
    v22 = *(v115 + 16);
    v105 = __chkstk_darwin(v97);
    *&v108[-16] = v106;
    *&v108[-8] = v114;
    __chkstk_darwin(v105);
    *&v108[-16] = sub_10001EF68;
    *&v108[-8] = v107;

    os_unfair_lock_lock((v22 + 16));
    sub_10004EFD4();
    if (!v23)
    {
      os_unfair_lock_unlock((v22 + 16));

      (*(v104 + 8))(v130, v128);

      return;
    }

    goto LABEL_40;
  }

  v53 = mach_absolute_time();
  v22 = v53 - v121;
  if (v53 >= v121)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v22, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v22 = v22 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v121 = v27;
  v133 = 0;
  v134 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v54._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0x203A524F52524520;
  v55._object = 0xE800000000000000;
  String.append(_:)(v55);
  v126 = v23;
  v136 = v23;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v56._countAndFlagsBits = 23328;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v136 = v22 / 0x3E8;
  v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v57);

  v58._countAndFlagsBits = 1567847712;
  v58._object = 0xE400000000000000;
  String.append(_:)(v58);
  v60 = v133;
  v59 = v134;
  v61 = v113;
  sub_10004EDD0(v127, v113, type metadata accessor for LogID);

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v124 = v64;
    v127 = swift_slowAlloc();
    v136 = v127;
    *v64 = 136446210;
    v133 = 11580;
    v134 = 0xE200000000000000;
    LODWORD(v125) = v63;
    v65._countAndFlagsBits = v117;
    v65._object = a1;
    String.append(_:)(v65);
    v66 = &v61[*(v118 + 24)];
    v67 = *v66;
    v68 = v66[1];

    v69._countAndFlagsBits = v67;
    v69._object = v68;
    String.append(_:)(v69);

    v70._countAndFlagsBits = v60;
    v70._object = v59;
    String.append(_:)(v70);

    v71 = v133;
    v72 = v134;
    sub_10004EE38(v61, type metadata accessor for LogID);
    v73 = sub_100035760(v71, v72, &v136);

    v74 = v124;
    *(v124 + 1) = v73;
    _os_log_impl(&_mh_execute_header, v62, v125, "%{public}s", v74, 0xCu);
    sub_10000CE78(v127);
  }

  else
  {

    v75 = sub_10004EE38(v61, type metadata accessor for LogID);
  }

  v98 = v116;
  v99 = v121;
  v100 = *(v115 + 16);
  v101 = __chkstk_darwin(v75);
  *&v108[-16] = v102;
  *&v108[-8] = v114;
  __chkstk_darwin(v101);
  *&v108[-16] = sub_10001EF68;
  *&v108[-8] = v103;

  os_unfair_lock_lock(v100 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v100 + 4);

  swift_willThrow();
  (*(v98 + 8))(v130, v128);
}

void sub_10003D374(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, void *a7, void *a8, char *a9)
{
  v115 = a7;
  v123 = a5;
  LODWORD(v122) = a4;
  v120 = a2;
  v121 = a3;
  v114 = type metadata accessor for LogID(0);
  v13 = *(*(v114 - 8) + 64);
  v14 = __chkstk_darwin(v114);
  v118 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v106 - v17;
  __chkstk_darwin(v16);
  v19 = &v106 - v18;
  v20 = type metadata accessor for Logger();
  v124 = *(v20 - 8);
  v21 = *(v124 + 64);
  __chkstk_darwin(v20);
  v125 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = mach_absolute_time();
  v23 = *a8;
  v24 = *(*a8 + 16);
  v126 = sub_10004EFA4;
  v127 = v23;

  os_unfair_lock_lock(v24 + 4);
  sub_10004EF74(&v128);
  v116 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v24 + 4);
  v25 = v129;
  v113 = v128;
  v112 = v130;

  v26 = a8[1];
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v27 = sub_10001D1DC(a1);
  if ((v28 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v119 = a9;
  (*(v124 + 16))(v125, *(v26 + 56) + *(v124 + 72) * v27, v20);
  v128 = StaticString.description.getter();
  v129 = v29;
  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = a6;
  v31._object = v115;
  String.append(_:)(v31);
  v32 = v129;
  v115 = v128;
  v33 = v19;
  sub_10004EDD0(v123, v19, type metadata accessor for LogID);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v111 = v20;
  v109 = v23;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v131 = v107;
    *v37 = 136446210;
    v128 = 2113069;
    v129 = 0xE300000000000000;
    v38._countAndFlagsBits = v113;
    v38._object = v25;
    String.append(_:)(v38);
    v39 = (v33 + *(v114 + 24));
    v40 = *v39;
    v41 = v39[1];

    v42._countAndFlagsBits = v40;
    v42._object = v41;
    String.append(_:)(v42);

    v43._countAndFlagsBits = v115;
    v43._object = v32;
    String.append(_:)(v43);

    v44 = v128;
    v45 = v129;
    sub_10004EE38(v33, type metadata accessor for LogID);
    v46 = sub_100035760(v44, v45, &v131);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s", v37, 0xCu);
    sub_10000CE78(v107);
  }

  else
  {

    sub_10004EE38(v33, type metadata accessor for LogID);
  }

  a1 = v118;
  v47 = v116;
  sub_1000B4430(v119);
  v24 = v47;
  v110 = v25;
  if (!v47)
  {
    v72 = mach_absolute_time();
    a6 = v72 - v117;
    if (v72 < v117)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v73 = v108;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v24 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v128 = StaticString.description.getter();
    v129 = v74;
    v75._countAndFlagsBits = 23328;
    v75._object = 0xE200000000000000;
    String.append(_:)(v75);
    v131 = a6 / 0x3E8;
    v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v76);

    v77._countAndFlagsBits = 1567847712;
    v77._object = 0xE400000000000000;
    String.append(_:)(v77);
    v79 = v128;
    v78 = v129;
    sub_10004EDD0(v123, v73, type metadata accessor for LogID);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v123 = 0;
      v83 = v82;
      v84 = swift_slowAlloc();
      v85._object = v25;
      v86 = v79;
      v87 = v84;
      v131 = v84;
      *v83 = 136446210;
      v128 = 2108732;
      v129 = 0xE300000000000000;
      LODWORD(v122) = v81;
      v85._countAndFlagsBits = v113;
      String.append(_:)(v85);
      v88 = (v73 + *(v114 + 24));
      v89 = *v88;
      v90 = v88[1];

      v91._countAndFlagsBits = v89;
      v91._object = v90;
      String.append(_:)(v91);

      v92._countAndFlagsBits = v86;
      v92._object = v78;
      String.append(_:)(v92);

      v93 = v128;
      v94 = v129;
      sub_10004EE38(v73, type metadata accessor for LogID);
      v95 = sub_100035760(v93, v94, &v131);

      *(v83 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v80, v122, "%{public}s", v83, 0xCu);
      sub_10000CE78(v87);

      v24 = v123;
    }

    else
    {

      v96 = sub_10004EE38(v73, type metadata accessor for LogID);
    }

    v102 = v111;
    a6 = *(v109 + 16);
    v103 = __chkstk_darwin(v96);
    *(&v106 - 2) = v104;
    *(&v106 - 2) = v112;
    __chkstk_darwin(v103);
    *(&v106 - 2) = sub_10001EF68;
    *(&v106 - 1) = v105;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v24)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v124 + 8))(v125, v102);

      return;
    }

    goto LABEL_40;
  }

  v48 = mach_absolute_time();
  a6 = v48 - v117;
  if (v48 >= v117)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v128 = 0;
  v129 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v49._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0x203A524F52524520;
  v50._object = 0xE800000000000000;
  String.append(_:)(v50);
  v131 = v24;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v51._countAndFlagsBits = 23328;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v131 = a6 / 0x3E8;
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 1567847712;
  v53._object = 0xE400000000000000;
  String.append(_:)(v53);
  v55 = v128;
  v54 = v129;
  sub_10004EDD0(v123, a1, type metadata accessor for LogID);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v123 = v24;
    v59 = v58;
    v60 = swift_slowAlloc();
    v122 = v55;
    v61 = v60;
    v131 = v60;
    *v59 = 136446210;
    v128 = 11580;
    v129 = 0xE200000000000000;
    v62._countAndFlagsBits = v113;
    v62._object = v25;
    String.append(_:)(v62);
    v63 = (a1 + *(v114 + 24));
    v64 = *v63;
    v65 = v63[1];

    v66._countAndFlagsBits = v64;
    v66._object = v65;
    String.append(_:)(v66);

    v67._countAndFlagsBits = v122;
    v67._object = v54;
    String.append(_:)(v67);

    v68 = v128;
    v69 = v129;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v70 = sub_100035760(v68, v69, &v131);

    *(v59 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s", v59, 0xCu);
    sub_10000CE78(v61);
  }

  else
  {

    v71 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v97 = v111;
  v98 = *(v109 + 16);
  v99 = __chkstk_darwin(v71);
  *(&v106 - 2) = v100;
  *(&v106 - 2) = v112;
  __chkstk_darwin(v99);
  *(&v106 - 2) = sub_10001EF68;
  *(&v106 - 1) = v101;

  os_unfair_lock_lock(v98 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v98 + 4);

  swift_willThrow();
  (*(v124 + 8))(v125, v97);
}

void sub_10003DFF4(void *a1, _DWORD *a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, void *a8, void *a9, unint64_t a10, uint64_t a11, os_unfair_lock_s *a12)
{
  v119 = a7;
  v127 = a5;
  LODWORD(v126) = a4;
  v124 = a2;
  v125 = a3;
  v118 = type metadata accessor for LogID(0);
  v16 = *(*(v118 - 8) + 64);
  v17 = __chkstk_darwin(v118);
  v113 = &v108[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v112 = &v108[-v20];
  __chkstk_darwin(v19);
  v22 = &v108[-v21];
  v128 = type metadata accessor for Logger();
  v23 = *(v128 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v128);
  v130 = &v108[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = mach_absolute_time();
  v26 = *a8;
  v27 = *(*a8 + 16);
  v131 = sub_10004EFA4;
  v132 = v26;

  os_unfair_lock_lock(v27 + 4);
  sub_10004EF74(&v133);
  v120 = v12;
  if (v12)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v27 + 4);
  v117 = v133;
  v129 = v134;
  v28 = v135;

  v29 = a8[1];
  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v30 = sub_10001D1DC(a1);
  if ((v31 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v114 = v28;
  v115 = v26;
  v27 = a12;
  a8 = a9;
  v122 = a11;
  v123 = a10;
  (*(v23 + 16))(v130, *(v29 + 56) + *(v23 + 72) * v30, v128);
  v133 = StaticString.description.getter();
  v134 = v32;
  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = a6;
  v34._object = v119;
  String.append(_:)(v34);
  v35 = v134;
  v119 = v133;
  v36 = v22;
  sub_10004EDD0(v127, v22, type metadata accessor for LogID);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v116 = v23;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v111 = a9;
    v41 = v40;
    v110 = swift_slowAlloc();
    v136 = v110;
    *v41 = 136446210;
    v133 = 2113069;
    v134 = 0xE300000000000000;
    v109 = v38;
    v42._countAndFlagsBits = v117;
    v42._object = a1;
    String.append(_:)(v42);
    v43 = (v36 + *(v118 + 24));
    v44 = v36;
    v45 = *v43;
    v46 = v43[1];

    v47._countAndFlagsBits = v45;
    v47._object = v46;
    String.append(_:)(v47);
    a1 = v129;

    v48._countAndFlagsBits = v119;
    v48._object = v35;
    String.append(_:)(v48);

    v49 = v133;
    v50 = v134;
    sub_10004EE38(v44, type metadata accessor for LogID);
    v51 = sub_100035760(v49, v50, &v136);

    *(v41 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v37, v109, "%{public}s", v41, 0xCu);
    sub_10000CE78(v110);

    a8 = v111;
  }

  else
  {

    sub_10004EE38(v36, type metadata accessor for LogID);
  }

  v52 = v120;
  sub_10005B8D4(a8, v123, v122, a12);
  v23 = v52;
  if (!v52)
  {
    v76 = mach_absolute_time();
    v22 = v76 - v121;
    if (v76 < v121)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v22, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v27 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v22 + 16));
        __break(1u);
        return;
      }

      v22 = v22 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v133 = StaticString.description.getter();
    v134 = v77;
    v78._countAndFlagsBits = 23328;
    v78._object = 0xE200000000000000;
    String.append(_:)(v78);
    v136 = v22 / 0x3E8;
    v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 1567847712;
    v80._object = 0xE400000000000000;
    String.append(_:)(v80);
    v81 = v134;
    v125 = v133;
    v82 = v112;
    sub_10004EDD0(v127, v112, type metadata accessor for LogID);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v126 = 0;
      v86 = v85;
      v127 = swift_slowAlloc();
      v136 = v127;
      *v86 = 136446210;
      v133 = 2108732;
      v134 = 0xE300000000000000;
      LODWORD(v124) = v84;
      v87._countAndFlagsBits = v117;
      v87._object = a1;
      String.append(_:)(v87);
      v88 = &v82[*(v118 + 24)];
      v89 = a8;
      v90 = *v88;
      v91 = v88[1];

      v92._countAndFlagsBits = v90;
      v92._object = v91;
      String.append(_:)(v92);

      v93._countAndFlagsBits = v125;
      v93._object = v81;
      String.append(_:)(v93);
      a8 = v89;

      v94 = v133;
      v95 = v134;
      sub_10004EE38(v82, type metadata accessor for LogID);
      v96 = sub_100035760(v94, v95, &v136);

      *(v86 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v83, v124, "%{public}s", v86, 0xCu);
      sub_10000CE78(v127);

      v23 = v126;
    }

    else
    {

      v97 = sub_10004EE38(v82, type metadata accessor for LogID);
    }

    v104 = v116;
    v22 = *(v115 + 16);
    v105 = __chkstk_darwin(v97);
    *&v108[-16] = v106;
    *&v108[-8] = v114;
    __chkstk_darwin(v105);
    *&v108[-16] = sub_10001EF68;
    *&v108[-8] = v107;

    os_unfair_lock_lock((v22 + 16));
    sub_10004EFD4();
    if (!v23)
    {
      os_unfair_lock_unlock((v22 + 16));

      (*(v104 + 8))(v130, v128);

      return;
    }

    goto LABEL_40;
  }

  v53 = mach_absolute_time();
  v22 = v53 - v121;
  if (v53 >= v121)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v22, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v22 = v22 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v121 = v27;
  v133 = 0;
  v134 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v54._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0x203A524F52524520;
  v55._object = 0xE800000000000000;
  String.append(_:)(v55);
  v126 = v23;
  v136 = v23;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v56._countAndFlagsBits = 23328;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v136 = v22 / 0x3E8;
  v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v57);

  v58._countAndFlagsBits = 1567847712;
  v58._object = 0xE400000000000000;
  String.append(_:)(v58);
  v60 = v133;
  v59 = v134;
  v61 = v113;
  sub_10004EDD0(v127, v113, type metadata accessor for LogID);

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v124 = v64;
    v127 = swift_slowAlloc();
    v136 = v127;
    *v64 = 136446210;
    v133 = 11580;
    v134 = 0xE200000000000000;
    LODWORD(v125) = v63;
    v65._countAndFlagsBits = v117;
    v65._object = a1;
    String.append(_:)(v65);
    v66 = &v61[*(v118 + 24)];
    v67 = *v66;
    v68 = v66[1];

    v69._countAndFlagsBits = v67;
    v69._object = v68;
    String.append(_:)(v69);

    v70._countAndFlagsBits = v60;
    v70._object = v59;
    String.append(_:)(v70);

    v71 = v133;
    v72 = v134;
    sub_10004EE38(v61, type metadata accessor for LogID);
    v73 = sub_100035760(v71, v72, &v136);

    v74 = v124;
    *(v124 + 1) = v73;
    _os_log_impl(&_mh_execute_header, v62, v125, "%{public}s", v74, 0xCu);
    sub_10000CE78(v127);
  }

  else
  {

    v75 = sub_10004EE38(v61, type metadata accessor for LogID);
  }

  v98 = v116;
  v99 = v121;
  v100 = *(v115 + 16);
  v101 = __chkstk_darwin(v75);
  *&v108[-16] = v102;
  *&v108[-8] = v114;
  __chkstk_darwin(v101);
  *&v108[-16] = sub_10001EF68;
  *&v108[-8] = v103;

  os_unfair_lock_lock(v100 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v100 + 4);

  swift_willThrow();
  (*(v98 + 8))(v130, v128);
}

void sub_10003ECFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, void *a8, char *a9, void *a10, void *a11)
{
  v122 = a7;
  v128 = a5;
  v127 = a4;
  v125 = a2;
  v126 = a3;
  v118 = type metadata accessor for LogID(0);
  v15 = *(*(v118 - 8) + 64);
  v16 = __chkstk_darwin(v118);
  v121 = &v108[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v111 = &v108[-v19];
  __chkstk_darwin(v18);
  v21 = &v108[-v20];
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v129 = &v108[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = mach_absolute_time();
  v26 = *a8;
  v27 = *(*a8 + 16);
  v130 = sub_10001E9F0;
  v131 = v26;
  v116 = v26;

  os_unfair_lock_lock(v27 + 4);
  sub_10004EC5C(&v132);
  v119 = v11;
  if (v11)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v27 + 4);
  v28 = v133;
  v117 = v132;
  v115 = v134;

  v29 = a8[1];
  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v30 = sub_10001D1DC(a1);
  if ((v31 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  a8 = a10;
  v123 = a11;
  v124 = a9;
  (*(v23 + 16))(v129, *(v29 + 56) + *(v23 + 72) * v30, v22);
  v132 = StaticString.description.getter();
  v133 = v32;
  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = a6;
  v34._object = v122;
  String.append(_:)(v34);
  v35 = v133;
  v112 = v132;
  v27 = v21;
  sub_10004EDD0(v128, v21, type metadata accessor for LogID);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v122 = v28;
  v113 = v23;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v135 = v110;
    *v39 = 136446210;
    v132 = 2113069;
    v133 = 0xE300000000000000;
    v109 = v37;
    v40._countAndFlagsBits = v117;
    v40._object = v28;
    String.append(_:)(v40);
    v41 = (v27 + *(v118 + 24));
    v42 = *v41;
    v43 = v41[1];

    v44._countAndFlagsBits = v42;
    v44._object = v43;
    String.append(_:)(v44);

    v45._countAndFlagsBits = v112;
    v45._object = v35;
    String.append(_:)(v45);
    a8 = a10;

    v46 = v132;
    v47 = v133;
    sub_10004EE38(v27, type metadata accessor for LogID);
    v48 = sub_100035760(v46, v47, &v135);

    *(v39 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v36, v109, "%{public}s", v39, 0xCu);
    sub_10000CE78(v110);
  }

  else
  {

    sub_10004EE38(v27, type metadata accessor for LogID);
  }

  a1 = v121;
  v49 = v119;
  sub_1000B9084(v124, a8, v123);
  v28 = v49;
  v114 = v22;
  if (!v49)
  {
    v76 = mach_absolute_time();
    v21 = v76 - v120;
    if (v76 < v120)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v77 = v111;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v21, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v27 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v21 + 16));
        __break(1u);
        return;
      }

      v21 = v21 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v121 = 0;
    v132 = StaticString.description.getter();
    v133 = v78;
    v79._countAndFlagsBits = 23328;
    v79._object = 0xE200000000000000;
    String.append(_:)(v79);
    v135 = v21 / 0x3E8;
    v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v80);

    v81._countAndFlagsBits = 1567847712;
    v81._object = 0xE400000000000000;
    String.append(_:)(v81);
    v83 = v132;
    v82 = v133;
    sub_10004EDD0(v128, v77, type metadata accessor for LogID);
    v84 = v122;

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v135 = v128;
      *v87 = 136446210;
      v132 = 2108732;
      v133 = 0xE300000000000000;
      v127 = v86;
      v88._countAndFlagsBits = v117;
      v88._object = v84;
      String.append(_:)(v88);
      v89 = (v77 + *(v118 + 24));
      v90 = *v89;
      v91 = v89[1];

      v92._countAndFlagsBits = v90;
      v92._object = v91;
      String.append(_:)(v92);

      v93._countAndFlagsBits = v83;
      v93._object = v82;
      String.append(_:)(v93);

      v94 = v132;
      v95 = v133;
      sub_10004EE38(v77, type metadata accessor for LogID);
      v96 = sub_100035760(v94, v95, &v135);

      *(v87 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v85, v127, "%{public}s", v87, 0xCu);
      sub_10000CE78(v128);
    }

    else
    {

      v97 = sub_10004EE38(v77, type metadata accessor for LogID);
    }

    v103 = v113;
    v21 = *(v116 + 16);
    v104 = __chkstk_darwin(v97);
    *&v108[-16] = v105;
    *&v108[-8] = v115;
    __chkstk_darwin(v104);
    *&v108[-16] = sub_10001EF68;
    *&v108[-8] = v106;

    os_unfair_lock_lock((v21 + 16));
    v107 = v121;
    sub_10004EFD4();
    if (!v107)
    {
      os_unfair_lock_unlock((v21 + 16));

      (*(v103 + 8))(v129, v114);

      return;
    }

    goto LABEL_40;
  }

  v50 = mach_absolute_time();
  v21 = v50 - v120;
  if (v50 >= v120)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v21, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v21 = v21 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v120 = a8;
  v132 = 0;
  v133 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v51._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v51);

  v52._countAndFlagsBits = 0x203A524F52524520;
  v52._object = 0xE800000000000000;
  String.append(_:)(v52);
  v135 = v28;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v53._countAndFlagsBits = 23328;
  v53._object = 0xE200000000000000;
  String.append(_:)(v53);
  v135 = v21 / 0x3E8;
  v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v54);

  v55._countAndFlagsBits = 1567847712;
  v55._object = 0xE400000000000000;
  String.append(_:)(v55);
  v57 = v132;
  v56 = v133;
  sub_10004EDD0(v128, a1, type metadata accessor for LogID);
  v58 = v122;

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v128 = v57;
    v62 = a1;
    v63 = v61;
    v64 = swift_slowAlloc();
    v121 = v28;
    v65 = v64;
    v135 = v64;
    *v63 = 136446210;
    v132 = 11580;
    v133 = 0xE200000000000000;
    v66._countAndFlagsBits = v117;
    v66._object = v58;
    String.append(_:)(v66);
    v67 = (v62 + *(v118 + 24));
    v68 = *v67;
    v69 = v67[1];

    v70._countAndFlagsBits = v68;
    v70._object = v69;
    String.append(_:)(v70);

    v71._countAndFlagsBits = v128;
    v71._object = v56;
    String.append(_:)(v71);

    v72 = v132;
    v73 = v133;
    sub_10004EE38(v62, type metadata accessor for LogID);
    v74 = sub_100035760(v72, v73, &v135);

    *(v63 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v59, v60, "%{public}s", v63, 0xCu);
    sub_10000CE78(v65);
  }

  else
  {

    v75 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v98 = v114;
  v99 = *(v116 + 16);
  v100 = __chkstk_darwin(v75);
  *&v108[-16] = v101;
  *&v108[-8] = v115;
  __chkstk_darwin(v100);
  *&v108[-16] = sub_10001EA28;
  *&v108[-8] = v102;

  os_unfair_lock_lock(v99 + 4);
  sub_10004EC74();
  os_unfair_lock_unlock(v99 + 4);

  swift_willThrow();
  (*(v113 + 8))(v129, v98);
}

void sub_10003F9E0(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, os_unfair_lock_s *a9, uint64_t a10, unsigned int a11)
{
  v120 = a7;
  v128 = a5;
  LODWORD(v127) = a4;
  v125 = a2;
  v126 = a3;
  v119 = type metadata accessor for LogID(0);
  v15 = *(*(v119 - 8) + 64);
  v16 = __chkstk_darwin(v119);
  v112 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v123 = &v111 - v19;
  __chkstk_darwin(v18);
  v21 = &v111 - v20;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v130 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = mach_absolute_time();
  v26 = *a8;
  v27 = *(*a8 + 16);
  v131 = sub_10004EFA4;
  v132 = v26;
  v117 = v26;

  os_unfair_lock_lock(v27 + 4);
  sub_10004EF74(&v133);
  v121 = v11;
  if (v11)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v27 + 4);
  v118 = v133;
  v129 = v134;
  v28 = v135;

  v29 = a8[1];
  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v30 = sub_10001D1DC(a1);
  if ((v31 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v113 = v28;
  v116 = a11;
  v115 = a10;
  v27 = a9;
  (*(v23 + 16))(v130, *(v29 + 56) + *(v23 + 72) * v30, v22);
  v133 = StaticString.description.getter();
  v134 = v32;
  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = a6;
  v34._object = v120;
  String.append(_:)(v34);
  v35 = v134;
  v120 = v133;
  v36 = v21;
  sub_10004EDD0(v128, v21, type metadata accessor for LogID);

  v37 = v129;

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v114 = v23;
  v124 = a9;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v136 = v111;
    *v41 = 136446210;
    v133 = 2113069;
    v134 = 0xE300000000000000;
    v42._countAndFlagsBits = v118;
    v42._object = v37;
    String.append(_:)(v42);
    v43 = (v36 + *(v119 + 24));
    v44 = *v43;
    v45 = v43[1];

    v46._countAndFlagsBits = v44;
    v46._object = v45;
    String.append(_:)(v46);
    v23 = v22;

    v47._countAndFlagsBits = v120;
    v47._object = v35;
    String.append(_:)(v47);

    v48 = v133;
    v49 = v134;
    sub_10004EE38(v36, type metadata accessor for LogID);
    v50 = sub_100035760(v48, v49, &v136);

    *(v41 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s", v41, 0xCu);
    sub_10000CE78(v111);

    v27 = v124;

    v51 = v121;
  }

  else
  {

    sub_10004EE38(v36, type metadata accessor for LogID);
    v51 = v121;
    v23 = v22;
  }

  sub_1000AF10C(v27, v115, v116);
  a6 = v51;
  v52 = v123;
  if (!v51)
  {
    v79 = mach_absolute_time();
    a1 = v79 - v122;
    if (v79 < v122)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a1, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v27 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a1 + 16));
        __break(1u);
        return;
      }

      a1 = a1 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v133 = StaticString.description.getter();
    v134 = v80;
    v81._countAndFlagsBits = 23328;
    v81._object = 0xE200000000000000;
    String.append(_:)(v81);
    v136 = a1 / 0x3E8;
    v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v82);

    v83._countAndFlagsBits = 1567847712;
    v83._object = 0xE400000000000000;
    String.append(_:)(v83);
    v84 = v134;
    v127 = v133;
    sub_10004EDD0(v128, v52, type metadata accessor for LogID);
    v85 = v129;

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v128 = 0;
      v136 = v89;
      v122 = v23;
      v90 = v89;
      *v88 = 136446210;
      v133 = 2108732;
      v134 = 0xE300000000000000;
      v91._countAndFlagsBits = v118;
      v91._object = v85;
      String.append(_:)(v91);
      v92 = (v52 + *(v119 + 24));
      v93 = *v92;
      v94 = v92[1];

      v95._countAndFlagsBits = v93;
      v95._object = v94;
      String.append(_:)(v95);

      v96._countAndFlagsBits = v127;
      v96._object = v84;
      String.append(_:)(v96);

      v97 = v133;
      v98 = v134;
      sub_10004EE38(v52, type metadata accessor for LogID);
      v99 = sub_100035760(v97, v98, &v136);

      *(v88 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v86, v87, "%{public}s", v88, 0xCu);
      sub_10000CE78(v90);
      v23 = v122;
      a6 = v128;

      v27 = v124;
    }

    else
    {

      v100 = sub_10004EE38(v52, type metadata accessor for LogID);
    }

    v107 = v114;
    a1 = *(v117 + 16);
    v108 = __chkstk_darwin(v100);
    *(&v111 - 2) = v109;
    *(&v111 - 2) = v113;
    __chkstk_darwin(v108);
    *(&v111 - 2) = sub_10001EF68;
    *(&v111 - 1) = v110;

    os_unfair_lock_lock((a1 + 16));
    sub_10004EFD4();
    if (!a6)
    {
      os_unfair_lock_unlock((a1 + 16));

      (*(v107 + 8))(v130, v23);

      return;
    }

    goto LABEL_40;
  }

  v53 = mach_absolute_time();
  a1 = v53 - v122;
  if (v53 >= v122)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a1, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a1 = a1 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v122 = v23;
  v133 = 0;
  v134 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v54._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0x203A524F52524520;
  v55._object = 0xE800000000000000;
  String.append(_:)(v55);
  v136 = a6;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v56._countAndFlagsBits = 23328;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v136 = a1 / 0x3E8;
  v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v57);

  v58._countAndFlagsBits = 1567847712;
  v58._object = 0xE400000000000000;
  String.append(_:)(v58);
  v60 = v133;
  v59 = v134;
  v61 = v112;
  sub_10004EDD0(v128, v112, type metadata accessor for LogID);
  v62 = v129;

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v127 = v60;
    v66 = v65;
    v67 = swift_slowAlloc();
    v128 = a6;
    v68 = v67;
    v136 = v67;
    *v66 = 136446210;
    v133 = 11580;
    v134 = 0xE200000000000000;
    v69._countAndFlagsBits = v118;
    v69._object = v62;
    String.append(_:)(v69);
    v70 = (v61 + *(v119 + 24));
    v71 = *v70;
    v72 = v70[1];

    v73._countAndFlagsBits = v71;
    v73._object = v72;
    String.append(_:)(v73);

    v74._countAndFlagsBits = v127;
    v74._object = v59;
    String.append(_:)(v74);

    v75 = v133;
    v76 = v134;
    sub_10004EE38(v61, type metadata accessor for LogID);
    v77 = sub_100035760(v75, v76, &v136);

    *(v66 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s", v66, 0xCu);
    sub_10000CE78(v68);
  }

  else
  {

    v78 = sub_10004EE38(v61, type metadata accessor for LogID);
  }

  v101 = v122;
  v102 = v114;
  v103 = *(v117 + 16);
  v104 = __chkstk_darwin(v78);
  *(&v111 - 2) = v105;
  *(&v111 - 2) = v113;
  __chkstk_darwin(v104);
  *(&v111 - 2) = sub_10001EF68;
  *(&v111 - 1) = v106;

  os_unfair_lock_lock(v103 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v103 + 4);

  swift_willThrow();
  (*(v102 + 8))(v130, v101);
}

void sub_1000406A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, void *a7, void *a8, char *a9)
{
  v115 = a7;
  v123 = a5;
  LODWORD(v122) = a4;
  v120 = a2;
  v121 = a3;
  v114 = type metadata accessor for LogID(0);
  v13 = *(*(v114 - 8) + 64);
  v14 = __chkstk_darwin(v114);
  v118 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v106 - v17;
  __chkstk_darwin(v16);
  v19 = &v106 - v18;
  v20 = type metadata accessor for Logger();
  v124 = *(v20 - 8);
  v21 = *(v124 + 64);
  __chkstk_darwin(v20);
  v125 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = mach_absolute_time();
  v23 = *a8;
  v24 = *(*a8 + 16);
  v126 = sub_10004EFA4;
  v127 = v23;

  os_unfair_lock_lock(v24 + 4);
  sub_10004EF74(&v128);
  v116 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v24 + 4);
  v25 = v129;
  v113 = v128;
  v112 = v130;

  v26 = a8[1];
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v27 = sub_10001D1DC(a1);
  if ((v28 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v119 = a9;
  (*(v124 + 16))(v125, *(v26 + 56) + *(v124 + 72) * v27, v20);
  v128 = StaticString.description.getter();
  v129 = v29;
  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = a6;
  v31._object = v115;
  String.append(_:)(v31);
  v32 = v129;
  v115 = v128;
  v33 = v19;
  sub_10004EDD0(v123, v19, type metadata accessor for LogID);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v111 = v20;
  v109 = v23;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v131 = v107;
    *v37 = 136446210;
    v128 = 2113069;
    v129 = 0xE300000000000000;
    v38._countAndFlagsBits = v113;
    v38._object = v25;
    String.append(_:)(v38);
    v39 = (v33 + *(v114 + 24));
    v40 = *v39;
    v41 = v39[1];

    v42._countAndFlagsBits = v40;
    v42._object = v41;
    String.append(_:)(v42);

    v43._countAndFlagsBits = v115;
    v43._object = v32;
    String.append(_:)(v43);

    v44 = v128;
    v45 = v129;
    sub_10004EE38(v33, type metadata accessor for LogID);
    v46 = sub_100035760(v44, v45, &v131);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s", v37, 0xCu);
    sub_10000CE78(v107);
  }

  else
  {

    sub_10004EE38(v33, type metadata accessor for LogID);
  }

  a1 = v118;
  v47 = v116;
  sub_1000B498C(v119);
  v24 = v47;
  v110 = v25;
  if (!v47)
  {
    v72 = mach_absolute_time();
    a6 = v72 - v117;
    if (v72 < v117)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v73 = v108;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v24 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v128 = StaticString.description.getter();
    v129 = v74;
    v75._countAndFlagsBits = 23328;
    v75._object = 0xE200000000000000;
    String.append(_:)(v75);
    v131 = a6 / 0x3E8;
    v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v76);

    v77._countAndFlagsBits = 1567847712;
    v77._object = 0xE400000000000000;
    String.append(_:)(v77);
    v79 = v128;
    v78 = v129;
    sub_10004EDD0(v123, v73, type metadata accessor for LogID);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v123 = 0;
      v83 = v82;
      v84 = swift_slowAlloc();
      v85._object = v25;
      v86 = v79;
      v87 = v84;
      v131 = v84;
      *v83 = 136446210;
      v128 = 2108732;
      v129 = 0xE300000000000000;
      LODWORD(v122) = v81;
      v85._countAndFlagsBits = v113;
      String.append(_:)(v85);
      v88 = (v73 + *(v114 + 24));
      v89 = *v88;
      v90 = v88[1];

      v91._countAndFlagsBits = v89;
      v91._object = v90;
      String.append(_:)(v91);

      v92._countAndFlagsBits = v86;
      v92._object = v78;
      String.append(_:)(v92);

      v93 = v128;
      v94 = v129;
      sub_10004EE38(v73, type metadata accessor for LogID);
      v95 = sub_100035760(v93, v94, &v131);

      *(v83 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v80, v122, "%{public}s", v83, 0xCu);
      sub_10000CE78(v87);

      v24 = v123;
    }

    else
    {

      v96 = sub_10004EE38(v73, type metadata accessor for LogID);
    }

    v102 = v111;
    a6 = *(v109 + 16);
    v103 = __chkstk_darwin(v96);
    *(&v106 - 2) = v104;
    *(&v106 - 2) = v112;
    __chkstk_darwin(v103);
    *(&v106 - 2) = sub_10001EF68;
    *(&v106 - 1) = v105;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v24)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v124 + 8))(v125, v102);

      return;
    }

    goto LABEL_40;
  }

  v48 = mach_absolute_time();
  a6 = v48 - v117;
  if (v48 >= v117)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v128 = 0;
  v129 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v49._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0x203A524F52524520;
  v50._object = 0xE800000000000000;
  String.append(_:)(v50);
  v131 = v24;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v51._countAndFlagsBits = 23328;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v131 = a6 / 0x3E8;
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 1567847712;
  v53._object = 0xE400000000000000;
  String.append(_:)(v53);
  v55 = v128;
  v54 = v129;
  sub_10004EDD0(v123, a1, type metadata accessor for LogID);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v123 = v24;
    v59 = v58;
    v60 = swift_slowAlloc();
    v122 = v55;
    v61 = v60;
    v131 = v60;
    *v59 = 136446210;
    v128 = 11580;
    v129 = 0xE200000000000000;
    v62._countAndFlagsBits = v113;
    v62._object = v25;
    String.append(_:)(v62);
    v63 = (a1 + *(v114 + 24));
    v64 = *v63;
    v65 = v63[1];

    v66._countAndFlagsBits = v64;
    v66._object = v65;
    String.append(_:)(v66);

    v67._countAndFlagsBits = v122;
    v67._object = v54;
    String.append(_:)(v67);

    v68 = v128;
    v69 = v129;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v70 = sub_100035760(v68, v69, &v131);

    *(v59 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s", v59, 0xCu);
    sub_10000CE78(v61);
  }

  else
  {

    v71 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v97 = v111;
  v98 = *(v109 + 16);
  v99 = __chkstk_darwin(v71);
  *(&v106 - 2) = v100;
  *(&v106 - 2) = v112;
  __chkstk_darwin(v99);
  *(&v106 - 2) = sub_10001EF68;
  *(&v106 - 1) = v101;

  os_unfair_lock_lock(v98 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v98 + 4);

  swift_willThrow();
  (*(v124 + 8))(v125, v97);
}

void sub_100041320(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, void *a7, void *a8, char *a9)
{
  v115 = a7;
  v123 = a5;
  LODWORD(v122) = a4;
  v120 = a2;
  v121 = a3;
  v114 = type metadata accessor for LogID(0);
  v13 = *(*(v114 - 8) + 64);
  v14 = __chkstk_darwin(v114);
  v118 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v106 - v17;
  __chkstk_darwin(v16);
  v19 = &v106 - v18;
  v20 = type metadata accessor for Logger();
  v124 = *(v20 - 8);
  v21 = *(v124 + 64);
  __chkstk_darwin(v20);
  v125 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = mach_absolute_time();
  v23 = *a8;
  v24 = *(*a8 + 16);
  v126 = sub_10004EFA4;
  v127 = v23;

  os_unfair_lock_lock(v24 + 4);
  sub_10004EF74(&v128);
  v116 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v24 + 4);
  v25 = v129;
  v113 = v128;
  v112 = v130;

  v26 = a8[1];
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v27 = sub_10001D1DC(a1);
  if ((v28 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v119 = a9;
  (*(v124 + 16))(v125, *(v26 + 56) + *(v124 + 72) * v27, v20);
  v128 = StaticString.description.getter();
  v129 = v29;
  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = a6;
  v31._object = v115;
  String.append(_:)(v31);
  v32 = v129;
  v115 = v128;
  v33 = v19;
  sub_10004EDD0(v123, v19, type metadata accessor for LogID);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v111 = v20;
  v109 = v23;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v131 = v107;
    *v37 = 136446210;
    v128 = 2113069;
    v129 = 0xE300000000000000;
    v38._countAndFlagsBits = v113;
    v38._object = v25;
    String.append(_:)(v38);
    v39 = (v33 + *(v114 + 24));
    v40 = *v39;
    v41 = v39[1];

    v42._countAndFlagsBits = v40;
    v42._object = v41;
    String.append(_:)(v42);

    v43._countAndFlagsBits = v115;
    v43._object = v32;
    String.append(_:)(v43);

    v44 = v128;
    v45 = v129;
    sub_10004EE38(v33, type metadata accessor for LogID);
    v46 = sub_100035760(v44, v45, &v131);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s", v37, 0xCu);
    sub_10000CE78(v107);
  }

  else
  {

    sub_10004EE38(v33, type metadata accessor for LogID);
  }

  a1 = v118;
  v47 = v116;
  sub_1000B88F8(v119);
  v24 = v47;
  v110 = v25;
  if (!v47)
  {
    v72 = mach_absolute_time();
    a6 = v72 - v117;
    if (v72 < v117)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v73 = v108;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v24 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v128 = StaticString.description.getter();
    v129 = v74;
    v75._countAndFlagsBits = 23328;
    v75._object = 0xE200000000000000;
    String.append(_:)(v75);
    v131 = a6 / 0x3E8;
    v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v76);

    v77._countAndFlagsBits = 1567847712;
    v77._object = 0xE400000000000000;
    String.append(_:)(v77);
    v79 = v128;
    v78 = v129;
    sub_10004EDD0(v123, v73, type metadata accessor for LogID);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v123 = 0;
      v83 = v82;
      v84 = swift_slowAlloc();
      v85._object = v25;
      v86 = v79;
      v87 = v84;
      v131 = v84;
      *v83 = 136446210;
      v128 = 2108732;
      v129 = 0xE300000000000000;
      LODWORD(v122) = v81;
      v85._countAndFlagsBits = v113;
      String.append(_:)(v85);
      v88 = (v73 + *(v114 + 24));
      v89 = *v88;
      v90 = v88[1];

      v91._countAndFlagsBits = v89;
      v91._object = v90;
      String.append(_:)(v91);

      v92._countAndFlagsBits = v86;
      v92._object = v78;
      String.append(_:)(v92);

      v93 = v128;
      v94 = v129;
      sub_10004EE38(v73, type metadata accessor for LogID);
      v95 = sub_100035760(v93, v94, &v131);

      *(v83 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v80, v122, "%{public}s", v83, 0xCu);
      sub_10000CE78(v87);

      v24 = v123;
    }

    else
    {

      v96 = sub_10004EE38(v73, type metadata accessor for LogID);
    }

    v102 = v111;
    a6 = *(v109 + 16);
    v103 = __chkstk_darwin(v96);
    *(&v106 - 2) = v104;
    *(&v106 - 2) = v112;
    __chkstk_darwin(v103);
    *(&v106 - 2) = sub_10001EF68;
    *(&v106 - 1) = v105;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v24)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v124 + 8))(v125, v102);

      return;
    }

    goto LABEL_40;
  }

  v48 = mach_absolute_time();
  a6 = v48 - v117;
  if (v48 >= v117)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v128 = 0;
  v129 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v49._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0x203A524F52524520;
  v50._object = 0xE800000000000000;
  String.append(_:)(v50);
  v131 = v24;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v51._countAndFlagsBits = 23328;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v131 = a6 / 0x3E8;
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 1567847712;
  v53._object = 0xE400000000000000;
  String.append(_:)(v53);
  v55 = v128;
  v54 = v129;
  sub_10004EDD0(v123, a1, type metadata accessor for LogID);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v123 = v24;
    v59 = v58;
    v60 = swift_slowAlloc();
    v122 = v55;
    v61 = v60;
    v131 = v60;
    *v59 = 136446210;
    v128 = 11580;
    v129 = 0xE200000000000000;
    v62._countAndFlagsBits = v113;
    v62._object = v25;
    String.append(_:)(v62);
    v63 = (a1 + *(v114 + 24));
    v64 = *v63;
    v65 = v63[1];

    v66._countAndFlagsBits = v64;
    v66._object = v65;
    String.append(_:)(v66);

    v67._countAndFlagsBits = v122;
    v67._object = v54;
    String.append(_:)(v67);

    v68 = v128;
    v69 = v129;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v70 = sub_100035760(v68, v69, &v131);

    *(v59 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s", v59, 0xCu);
    sub_10000CE78(v61);
  }

  else
  {

    v71 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v97 = v111;
  v98 = *(v109 + 16);
  v99 = __chkstk_darwin(v71);
  *(&v106 - 2) = v100;
  *(&v106 - 2) = v112;
  __chkstk_darwin(v99);
  *(&v106 - 2) = sub_10001EF68;
  *(&v106 - 1) = v101;

  os_unfair_lock_lock(v98 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v98 + 4);

  swift_willThrow();
  (*(v124 + 8))(v125, v97);
}

void sub_100041FA0(char a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v119 = a7;
  v128 = a5;
  LODWORD(v127) = a4;
  v125 = a2;
  v126 = a3;
  v118 = type metadata accessor for LogID(0);
  v15 = *(*(v118 - 8) + 64);
  v16 = __chkstk_darwin(v118);
  v111 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v122 = (&v111 - v19);
  __chkstk_darwin(v18);
  v21 = &v111 - v20;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v129 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = mach_absolute_time();
  v26 = *a8;
  v27 = *(*a8 + 16);
  v131 = sub_10004EFA4;
  v132 = v26;
  v116 = v26;

  os_unfair_lock_lock(v27 + 4);
  sub_10004EF74(&v133);
  v120 = v11;
  if (v11)
  {
    goto LABEL_38;
  }

  os_unfair_lock_unlock(v27 + 4);
  v117 = v133;
  v130 = v134;
  v28 = v135;

  v29 = a8[1];
  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v30 = sub_10001D1DC(a1);
  if ((v31 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v112 = v28;
  v115 = a11;
  v123 = a10;
  v124 = a9;
  v32 = v23;
  (*(v23 + 16))(v129, *(v29 + 56) + *(v23 + 72) * v30, v22);
  v133 = StaticString.description.getter();
  v134 = v33;
  v34._countAndFlagsBits = 32;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = a6;
  v35._object = v119;
  String.append(_:)(v35);
  v36 = v134;
  v119 = v133;
  sub_10004EDD0(v128, v21, type metadata accessor for LogID);

  v37 = v22;
  v38 = v130;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v41 = os_log_type_enabled(v39, v40);
  v114 = v37;
  v113 = v32;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v136 = v43;
    *v42 = 136446210;
    v133 = 2113069;
    v134 = 0xE300000000000000;
    v44._countAndFlagsBits = v117;
    v44._object = v38;
    String.append(_:)(v44);
    v45 = &v21[*(v118 + 24)];
    v46 = *v45;
    v47 = v45[1];

    v48._countAndFlagsBits = v46;
    v48._object = v47;
    String.append(_:)(v48);

    v49._countAndFlagsBits = v119;
    v49._object = v36;
    String.append(_:)(v49);

    v50 = v133;
    v51 = v134;
    sub_10004EE38(v21, type metadata accessor for LogID);
    v52 = sub_100035760(v50, v51, &v136);
    v53 = v123;

    *(v42 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s", v42, 0xCu);
    sub_10000CE78(v43);

    v54 = v124;
  }

  else
  {

    sub_10004EE38(v21, type metadata accessor for LogID);
    v53 = v123;
    v54 = v124;
  }

  v55 = v120;
  sub_1000B0228(v54, v53, v115);
  v22 = v55;
  v27 = v122;
  if (v55)
  {
    v56 = mach_absolute_time();
    v23 = v56 - v121;
    v21 = v130;
    if (v56 >= v121)
    {
      if (qword_100173D00 == -1)
      {
LABEL_10:
        if (qword_100179650 == HIDWORD(qword_100179650))
        {
LABEL_14:
          v133 = 0;
          v134 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);
          v57._countAndFlagsBits = StaticString.description.getter();
          String.append(_:)(v57);

          v58._countAndFlagsBits = 0x203A524F52524520;
          v58._object = 0xE800000000000000;
          String.append(_:)(v58);
          v127 = v22;
          v136 = v22;
          sub_100001AB4(&qword_100177270, &qword_100120A40);
          _print_unlocked<A, B>(_:_:)();
          v59._countAndFlagsBits = 23328;
          v59._object = 0xE200000000000000;
          String.append(_:)(v59);
          v136 = v23 / 0x3E8;
          v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v60);

          v61._countAndFlagsBits = 1567847712;
          v61._object = 0xE400000000000000;
          String.append(_:)(v61);
          v63 = v133;
          v62 = v134;
          v64 = v111;
          sub_10004EDD0(v128, v111, type metadata accessor for LogID);

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v128 = v63;
            v68 = v67;
            v69 = swift_slowAlloc();
            v136 = v69;
            *v68 = 136446210;
            v133 = 11580;
            v134 = 0xE200000000000000;
            v70._countAndFlagsBits = v117;
            v70._object = v21;
            String.append(_:)(v70);
            v71 = (v64 + *(v118 + 24));
            v72 = *v71;
            v73 = v71[1];

            v74._countAndFlagsBits = v72;
            v74._object = v73;
            String.append(_:)(v74);

            v75._countAndFlagsBits = v128;
            v75._object = v62;
            String.append(_:)(v75);

            v76 = v133;
            v77 = v134;
            sub_10004EE38(v64, type metadata accessor for LogID);
            v78 = sub_100035760(v76, v77, &v136);

            *(v68 + 4) = v78;
            _os_log_impl(&_mh_execute_header, v65, v66, "%{public}s", v68, 0xCu);
            sub_10000CE78(v69);
          }

          else
          {

            v79 = sub_10004EE38(v64, type metadata accessor for LogID);
          }

          v101 = v114;
          v102 = v113;
          v103 = *(v116 + 16);
          v104 = __chkstk_darwin(v79);
          *(&v111 - 2) = v105;
          *(&v111 - 2) = v112;
          __chkstk_darwin(v104);
          *(&v111 - 2) = sub_10001EF68;
          *(&v111 - 1) = v106;

          os_unfair_lock_lock(v103 + 4);
          sub_10004EFD4();
          os_unfair_lock_unlock(v103 + 4);

          swift_willThrow();
          (*(v102 + 8))(v129, v101);
          swift_unknownObjectRelease();

          return;
        }

        if (is_mul_ok(v23, qword_100179650))
        {
          if (HIDWORD(qword_100179650))
          {
            v23 = v23 * qword_100179650 / HIDWORD(qword_100179650);
            goto LABEL_14;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_36;
      }

LABEL_31:
      swift_once();
      goto LABEL_10;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v80 = mach_absolute_time();
  v23 = v80 - v121;
  v81 = v130;
  if (v80 < v121)
  {
    __break(1u);
  }

  else if (qword_100173D00 == -1)
  {
    goto LABEL_18;
  }

  swift_once();
LABEL_18:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (!is_mul_ok(v23, qword_100179650))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!HIDWORD(qword_100179650))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      os_unfair_lock_unlock(v27 + 4);
      __break(1u);
      os_unfair_lock_unlock((v23 + 16));
      __break(1u);
      return;
    }

    v23 = v23 * qword_100179650 / HIDWORD(qword_100179650);
  }

  v133 = StaticString.description.getter();
  v134 = v82;
  v83._countAndFlagsBits = 23328;
  v83._object = 0xE200000000000000;
  String.append(_:)(v83);
  v136 = v23 / 0x3E8;
  v84._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v84);

  v85._countAndFlagsBits = 1567847712;
  v85._object = 0xE400000000000000;
  String.append(_:)(v85);
  v86 = v134;
  v127 = v133;
  sub_10004EDD0(v128, v27, type metadata accessor for LogID);

  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v136 = v128;
    *v89 = 136446210;
    v133 = 2108732;
    v134 = 0xE300000000000000;
    v90._countAndFlagsBits = v117;
    v90._object = v81;
    String.append(_:)(v90);
    v91 = (v27 + *(v118 + 24));
    v92 = *v91;
    v93 = v91[1];

    v94._countAndFlagsBits = v92;
    v94._object = v93;
    String.append(_:)(v94);

    v95._countAndFlagsBits = v127;
    v95._object = v86;
    String.append(_:)(v95);

    v96 = v133;
    v97 = v134;
    sub_10004EE38(v27, type metadata accessor for LogID);
    v98 = sub_100035760(v96, v97, &v136);

    *(v89 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v87, v88, "%{public}s", v89, 0xCu);
    sub_10000CE78(v128);

    v54 = v124;
  }

  else
  {

    v99 = sub_10004EE38(v27, type metadata accessor for LogID);
  }

  v100 = v113;
  v107 = *(v116 + 16);
  v108 = __chkstk_darwin(v99);
  *(&v111 - 2) = v109;
  *(&v111 - 2) = v112;
  __chkstk_darwin(v108);
  *(&v111 - 2) = sub_10001EF68;
  *(&v111 - 1) = v110;

  os_unfair_lock_lock(v107 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v107 + 4);

  (*(v100 + 8))(v129, v114);
  swift_unknownObjectRelease();
}

void sub_100042C74(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, void *a7, void *a8, _BYTE *a9)
{
  v115 = a7;
  v123 = a5;
  LODWORD(v122) = a4;
  v120 = a2;
  v121 = a3;
  v114 = type metadata accessor for LogID(0);
  v13 = *(*(v114 - 8) + 64);
  v14 = __chkstk_darwin(v114);
  v118 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v106 - v17;
  __chkstk_darwin(v16);
  v19 = &v106 - v18;
  v20 = type metadata accessor for Logger();
  v124 = *(v20 - 8);
  v21 = *(v124 + 64);
  __chkstk_darwin(v20);
  v125 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = mach_absolute_time();
  v23 = *a8;
  v24 = *(*a8 + 16);
  v126 = sub_10004EFA4;
  v127 = v23;

  os_unfair_lock_lock(v24 + 4);
  sub_10004EF74(&v128);
  v116 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v24 + 4);
  v25 = v129;
  v113 = v128;
  v112 = v130;

  v26 = a8[1];
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v27 = sub_10001D1DC(a1);
  if ((v28 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v119 = a9;
  (*(v124 + 16))(v125, *(v26 + 56) + *(v124 + 72) * v27, v20);
  v128 = StaticString.description.getter();
  v129 = v29;
  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = a6;
  v31._object = v115;
  String.append(_:)(v31);
  v32 = v129;
  v115 = v128;
  v33 = v19;
  sub_10004EDD0(v123, v19, type metadata accessor for LogID);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v111 = v20;
  v109 = v23;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v131 = v107;
    *v37 = 136446210;
    v128 = 2113069;
    v129 = 0xE300000000000000;
    v38._countAndFlagsBits = v113;
    v38._object = v25;
    String.append(_:)(v38);
    v39 = (v33 + *(v114 + 24));
    v40 = *v39;
    v41 = v39[1];

    v42._countAndFlagsBits = v40;
    v42._object = v41;
    String.append(_:)(v42);

    v43._countAndFlagsBits = v115;
    v43._object = v32;
    String.append(_:)(v43);

    v44 = v128;
    v45 = v129;
    sub_10004EE38(v33, type metadata accessor for LogID);
    v46 = sub_100035760(v44, v45, &v131);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s", v37, 0xCu);
    sub_10000CE78(v107);
  }

  else
  {

    sub_10004EE38(v33, type metadata accessor for LogID);
  }

  a1 = v118;
  v47 = v116;
  sub_1000B0DF8(v119);
  v24 = v47;
  v110 = v25;
  if (!v47)
  {
    v72 = mach_absolute_time();
    a6 = v72 - v117;
    if (v72 < v117)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v73 = v108;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v24 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v128 = StaticString.description.getter();
    v129 = v74;
    v75._countAndFlagsBits = 23328;
    v75._object = 0xE200000000000000;
    String.append(_:)(v75);
    v131 = a6 / 0x3E8;
    v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v76);

    v77._countAndFlagsBits = 1567847712;
    v77._object = 0xE400000000000000;
    String.append(_:)(v77);
    v79 = v128;
    v78 = v129;
    sub_10004EDD0(v123, v73, type metadata accessor for LogID);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v123 = 0;
      v83 = v82;
      v84 = swift_slowAlloc();
      v85._object = v25;
      v86 = v79;
      v87 = v84;
      v131 = v84;
      *v83 = 136446210;
      v128 = 2108732;
      v129 = 0xE300000000000000;
      LODWORD(v122) = v81;
      v85._countAndFlagsBits = v113;
      String.append(_:)(v85);
      v88 = (v73 + *(v114 + 24));
      v89 = *v88;
      v90 = v88[1];

      v91._countAndFlagsBits = v89;
      v91._object = v90;
      String.append(_:)(v91);

      v92._countAndFlagsBits = v86;
      v92._object = v78;
      String.append(_:)(v92);

      v93 = v128;
      v94 = v129;
      sub_10004EE38(v73, type metadata accessor for LogID);
      v95 = sub_100035760(v93, v94, &v131);

      *(v83 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v80, v122, "%{public}s", v83, 0xCu);
      sub_10000CE78(v87);

      v24 = v123;
    }

    else
    {

      v96 = sub_10004EE38(v73, type metadata accessor for LogID);
    }

    v102 = v111;
    a6 = *(v109 + 16);
    v103 = __chkstk_darwin(v96);
    *(&v106 - 2) = v104;
    *(&v106 - 2) = v112;
    __chkstk_darwin(v103);
    *(&v106 - 2) = sub_10001EF68;
    *(&v106 - 1) = v105;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v24)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v124 + 8))(v125, v102);

      return;
    }

    goto LABEL_40;
  }

  v48 = mach_absolute_time();
  a6 = v48 - v117;
  if (v48 >= v117)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v128 = 0;
  v129 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v49._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0x203A524F52524520;
  v50._object = 0xE800000000000000;
  String.append(_:)(v50);
  v131 = v24;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v51._countAndFlagsBits = 23328;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v131 = a6 / 0x3E8;
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 1567847712;
  v53._object = 0xE400000000000000;
  String.append(_:)(v53);
  v55 = v128;
  v54 = v129;
  sub_10004EDD0(v123, a1, type metadata accessor for LogID);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v123 = v24;
    v59 = v58;
    v60 = swift_slowAlloc();
    v122 = v55;
    v61 = v60;
    v131 = v60;
    *v59 = 136446210;
    v128 = 11580;
    v129 = 0xE200000000000000;
    v62._countAndFlagsBits = v113;
    v62._object = v25;
    String.append(_:)(v62);
    v63 = (a1 + *(v114 + 24));
    v64 = *v63;
    v65 = v63[1];

    v66._countAndFlagsBits = v64;
    v66._object = v65;
    String.append(_:)(v66);

    v67._countAndFlagsBits = v122;
    v67._object = v54;
    String.append(_:)(v67);

    v68 = v128;
    v69 = v129;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v70 = sub_100035760(v68, v69, &v131);

    *(v59 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s", v59, 0xCu);
    sub_10000CE78(v61);
  }

  else
  {

    v71 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v97 = v111;
  v98 = *(v109 + 16);
  v99 = __chkstk_darwin(v71);
  *(&v106 - 2) = v100;
  *(&v106 - 2) = v112;
  __chkstk_darwin(v99);
  *(&v106 - 2) = sub_10001EF68;
  *(&v106 - 1) = v101;

  os_unfair_lock_lock(v98 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v98 + 4);

  swift_willThrow();
  (*(v124 + 8))(v125, v97);
}

void sub_1000438F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v124 = a7;
  v130 = a5;
  v129 = a4;
  v127 = a2;
  v128 = a3;
  v120 = type metadata accessor for LogID(0);
  v15 = *(*(v120 - 8) + 64);
  v16 = __chkstk_darwin(v120);
  v123 = &v110[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v113 = &v110[-v19];
  __chkstk_darwin(v18);
  v21 = &v110[-v20];
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v131 = &v110[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = mach_absolute_time();
  v26 = *a8;
  v27 = *(*a8 + 16);
  v132 = sub_10004EFA4;
  v133 = v26;
  v118 = v26;

  os_unfair_lock_lock(v27 + 4);
  sub_10004EF74(&v134);
  v121 = v11;
  if (v11)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v27 + 4);
  v28 = v135;
  v119 = v134;
  v117 = v136;

  v29 = a8[1];
  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v30 = sub_10001D1DC(a1);
  if ((v31 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  a8 = a10;
  v125 = a11;
  v126 = a9;
  (*(v23 + 16))(v131, *(v29 + 56) + *(v23 + 72) * v30, v22);
  v134 = StaticString.description.getter();
  v135 = v32;
  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = a6;
  v34._object = v124;
  String.append(_:)(v34);
  v35 = v135;
  v114 = v134;
  v27 = v21;
  sub_10004EDD0(v130, v21, type metadata accessor for LogID);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v124 = v28;
  v115 = v23;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v137 = v112;
    *v39 = 136446210;
    v134 = 2113069;
    v135 = 0xE300000000000000;
    v111 = v37;
    v40._countAndFlagsBits = v119;
    v40._object = v28;
    String.append(_:)(v40);
    v41 = (v27 + *(v120 + 24));
    v42 = *v41;
    v43 = v41[1];

    v44._countAndFlagsBits = v42;
    v44._object = v43;
    String.append(_:)(v44);

    v45._countAndFlagsBits = v114;
    v45._object = v35;
    String.append(_:)(v45);
    a8 = a10;

    v46 = v134;
    v47 = v135;
    sub_10004EE38(v27, type metadata accessor for LogID);
    v48 = sub_100035760(v46, v47, &v137);

    *(v39 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v36, v111, "%{public}s", v39, 0xCu);
    sub_10000CE78(v112);
  }

  else
  {

    sub_10004EE38(v27, type metadata accessor for LogID);
  }

  a1 = v123;
  v49 = v121;
  sub_1000B1CE4(v126, a8, v125);
  v28 = v49;
  v116 = v22;
  if (!v49)
  {
    v76 = mach_absolute_time();
    v21 = v76 - v122;
    if (v76 < v122)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v77 = v113;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v21, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v27 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v21 + 16));
        __break(1u);
        return;
      }

      v21 = v21 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v123 = 0;
    v134 = StaticString.description.getter();
    v135 = v78;
    v79._countAndFlagsBits = 23328;
    v79._object = 0xE200000000000000;
    String.append(_:)(v79);
    v137 = v21 / 0x3E8;
    v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v80);

    v81._countAndFlagsBits = 1567847712;
    v81._object = 0xE400000000000000;
    String.append(_:)(v81);
    v83 = v134;
    v82 = v135;
    sub_10004EDD0(v130, v77, type metadata accessor for LogID);
    v84 = v124;

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v137 = v130;
      *v87 = 136446210;
      v134 = 2108732;
      v135 = 0xE300000000000000;
      v129 = v86;
      v88._countAndFlagsBits = v119;
      v88._object = v84;
      String.append(_:)(v88);
      v89 = (v77 + *(v120 + 24));
      v90 = a8;
      v91 = *v89;
      v92 = v89[1];

      v93._countAndFlagsBits = v91;
      v93._object = v92;
      String.append(_:)(v93);

      v94._countAndFlagsBits = v83;
      v94._object = v82;
      String.append(_:)(v94);
      a8 = v90;

      v95 = v134;
      v96 = v135;
      sub_10004EE38(v77, type metadata accessor for LogID);
      v97 = sub_100035760(v95, v96, &v137);

      *(v87 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v85, v129, "%{public}s", v87, 0xCu);
      sub_10000CE78(v130);
    }

    else
    {

      v98 = sub_10004EE38(v77, type metadata accessor for LogID);
    }

    v105 = v115;
    v21 = *(v118 + 16);
    v106 = __chkstk_darwin(v98);
    *&v110[-16] = v107;
    *&v110[-8] = v117;
    __chkstk_darwin(v106);
    *&v110[-16] = sub_10001EF68;
    *&v110[-8] = v108;

    os_unfair_lock_lock((v21 + 16));
    v109 = v123;
    sub_10004EFD4();
    if (!v109)
    {
      os_unfair_lock_unlock((v21 + 16));

      (*(v105 + 8))(v131, v116);

      return;
    }

    goto LABEL_40;
  }

  v50 = mach_absolute_time();
  v21 = v50 - v122;
  if (v50 >= v122)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v21, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v21 = v21 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v122 = a8;
  v134 = 0;
  v135 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v51._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v51);

  v52._countAndFlagsBits = 0x203A524F52524520;
  v52._object = 0xE800000000000000;
  String.append(_:)(v52);
  v137 = v28;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v53._countAndFlagsBits = 23328;
  v53._object = 0xE200000000000000;
  String.append(_:)(v53);
  v137 = v21 / 0x3E8;
  v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v54);

  v55._countAndFlagsBits = 1567847712;
  v55._object = 0xE400000000000000;
  String.append(_:)(v55);
  v57 = v134;
  v56 = v135;
  sub_10004EDD0(v130, a1, type metadata accessor for LogID);
  v58 = v124;

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v130 = v57;
    v62 = a1;
    v63 = v61;
    v64 = swift_slowAlloc();
    v123 = v28;
    v65 = v64;
    v137 = v64;
    *v63 = 136446210;
    v134 = 11580;
    v135 = 0xE200000000000000;
    v66._countAndFlagsBits = v119;
    v66._object = v58;
    String.append(_:)(v66);
    v67 = (v62 + *(v120 + 24));
    v68 = *v67;
    v69 = v67[1];

    v70._countAndFlagsBits = v68;
    v70._object = v69;
    String.append(_:)(v70);

    v71._countAndFlagsBits = v130;
    v71._object = v56;
    String.append(_:)(v71);

    v72 = v134;
    v73 = v135;
    sub_10004EE38(v62, type metadata accessor for LogID);
    v74 = sub_100035760(v72, v73, &v137);

    *(v63 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v59, v60, "%{public}s", v63, 0xCu);
    sub_10000CE78(v65);
  }

  else
  {

    v75 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v99 = v116;
  v100 = v122;
  v101 = *(v118 + 16);
  v102 = __chkstk_darwin(v75);
  *&v110[-16] = v103;
  *&v110[-8] = v117;
  __chkstk_darwin(v102);
  *&v110[-16] = sub_10001EF68;
  *&v110[-8] = v104;

  os_unfair_lock_lock(v101 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v101 + 4);

  swift_willThrow();
  (*(v115 + 8))(v131, v99);
}

void sub_1000445D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, void *a7, void *a8, uint64_t a9)
{
  v115 = a7;
  v123 = a5;
  LODWORD(v122) = a4;
  v120 = a2;
  v121 = a3;
  v114 = type metadata accessor for LogID(0);
  v13 = *(*(v114 - 8) + 64);
  v14 = __chkstk_darwin(v114);
  v118 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v106 - v17;
  __chkstk_darwin(v16);
  v19 = &v106 - v18;
  v20 = type metadata accessor for Logger();
  v124 = *(v20 - 8);
  v21 = *(v124 + 64);
  __chkstk_darwin(v20);
  v125 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = mach_absolute_time();
  v23 = *a8;
  v24 = *(*a8 + 16);
  v126 = sub_10004EFA4;
  v127 = v23;

  os_unfair_lock_lock(v24 + 4);
  sub_10004EF74(&v128);
  v116 = v9;
  if (v9)
  {
    goto LABEL_40;
  }

  os_unfair_lock_unlock(v24 + 4);
  v25 = v129;
  v113 = v128;
  v112 = v130;

  v26 = a8[1];
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v27 = sub_10001D1DC(a1);
  if ((v28 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v119 = a9;
  (*(v124 + 16))(v125, *(v26 + 56) + *(v124 + 72) * v27, v20);
  v128 = StaticString.description.getter();
  v129 = v29;
  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = a6;
  v31._object = v115;
  String.append(_:)(v31);
  v32 = v129;
  v115 = v128;
  v33 = v19;
  sub_10004EDD0(v123, v19, type metadata accessor for LogID);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v111 = v20;
  v109 = v23;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v131 = v107;
    *v37 = 136446210;
    v128 = 2113069;
    v129 = 0xE300000000000000;
    v38._countAndFlagsBits = v113;
    v38._object = v25;
    String.append(_:)(v38);
    v39 = (v33 + *(v114 + 24));
    v40 = *v39;
    v41 = v39[1];

    v42._countAndFlagsBits = v40;
    v42._object = v41;
    String.append(_:)(v42);

    v43._countAndFlagsBits = v115;
    v43._object = v32;
    String.append(_:)(v43);

    v44 = v128;
    v45 = v129;
    sub_10004EE38(v33, type metadata accessor for LogID);
    v46 = sub_100035760(v44, v45, &v131);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s", v37, 0xCu);
    sub_10000CE78(v107);
  }

  else
  {

    sub_10004EE38(v33, type metadata accessor for LogID);
  }

  a1 = v118;
  v47 = v116;
  sub_1000B6AEC(v119);
  v24 = v47;
  v110 = v25;
  if (v47)
  {
    v48 = mach_absolute_time();
    a6 = v48 - v117;
    if (v48 >= v117)
    {
      if (qword_100173D00 == -1)
      {
LABEL_10:
        if (qword_100179650 == HIDWORD(qword_100179650))
        {
LABEL_14:
          v128 = 0;
          v129 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);
          v49._countAndFlagsBits = StaticString.description.getter();
          String.append(_:)(v49);

          v50._countAndFlagsBits = 0x203A524F52524520;
          v50._object = 0xE800000000000000;
          String.append(_:)(v50);
          v131 = v24;
          sub_100001AB4(&qword_100177270, &qword_100120A40);
          _print_unlocked<A, B>(_:_:)();
          v51._countAndFlagsBits = 23328;
          v51._object = 0xE200000000000000;
          String.append(_:)(v51);
          v131 = a6 / 0x3E8;
          v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v52);

          v53._countAndFlagsBits = 1567847712;
          v53._object = 0xE400000000000000;
          String.append(_:)(v53);
          v55 = v128;
          v54 = v129;
          sub_10004EDD0(v123, a1, type metadata accessor for LogID);

          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v123 = v24;
            v59 = v58;
            v60 = swift_slowAlloc();
            v122 = v55;
            v61 = v60;
            v131 = v60;
            *v59 = 136446210;
            v128 = 11580;
            v129 = 0xE200000000000000;
            v62._countAndFlagsBits = v113;
            v62._object = v25;
            String.append(_:)(v62);
            v63 = (a1 + *(v114 + 24));
            v64 = *v63;
            v65 = v63[1];

            v66._countAndFlagsBits = v64;
            v66._object = v65;
            String.append(_:)(v66);

            v67._countAndFlagsBits = v122;
            v67._object = v54;
            String.append(_:)(v67);

            v68 = v128;
            v69 = v129;
            sub_10004EE38(a1, type metadata accessor for LogID);
            v70 = sub_100035760(v68, v69, &v131);

            *(v59 + 4) = v70;
            _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s", v59, 0xCu);
            sub_10000CE78(v61);
          }

          else
          {

            v71 = sub_10004EE38(a1, type metadata accessor for LogID);
          }

          v97 = v111;
          v98 = *(v109 + 16);
          v99 = __chkstk_darwin(v71);
          *(&v106 - 2) = v100;
          *(&v106 - 2) = v112;
          __chkstk_darwin(v99);
          *(&v106 - 2) = sub_10001EF68;
          *(&v106 - 1) = v101;

          os_unfair_lock_lock(v98 + 4);
          sub_10004EFD4();
          os_unfair_lock_unlock(v98 + 4);

          swift_willThrow();
          (*(v124 + 8))(v125, v97);
          goto LABEL_29;
        }

        if (is_mul_ok(a6, qword_100179650))
        {
          if (HIDWORD(qword_100179650))
          {
            a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
            goto LABEL_14;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_33:
      swift_once();
      goto LABEL_10;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v72 = mach_absolute_time();
  a6 = v72 - v117;
  if (v72 < v117)
  {
    __break(1u);
  }

  else if (qword_100173D00 == -1)
  {
    goto LABEL_18;
  }

  swift_once();
LABEL_18:
  v73 = v108;
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (!is_mul_ok(a6, qword_100179650))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (!HIDWORD(qword_100179650))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      os_unfair_lock_unlock(v24 + 4);
      __break(1u);
      goto LABEL_41;
    }

    a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
  }

  v128 = StaticString.description.getter();
  v129 = v74;
  v75._countAndFlagsBits = 23328;
  v75._object = 0xE200000000000000;
  String.append(_:)(v75);
  v131 = a6 / 0x3E8;
  v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v76);

  v77._countAndFlagsBits = 1567847712;
  v77._object = 0xE400000000000000;
  String.append(_:)(v77);
  v79 = v128;
  v78 = v129;
  sub_10004EDD0(v123, v73, type metadata accessor for LogID);

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v123 = 0;
    v83 = v82;
    v84 = swift_slowAlloc();
    v85._object = v25;
    v86 = v79;
    v87 = v84;
    v131 = v84;
    *v83 = 136446210;
    v128 = 2108732;
    v129 = 0xE300000000000000;
    LODWORD(v122) = v81;
    v85._countAndFlagsBits = v113;
    String.append(_:)(v85);
    v88 = (v73 + *(v114 + 24));
    v89 = *v88;
    v90 = v88[1];

    v91._countAndFlagsBits = v89;
    v91._object = v90;
    String.append(_:)(v91);

    v92._countAndFlagsBits = v86;
    v92._object = v78;
    String.append(_:)(v92);

    v93 = v128;
    v94 = v129;
    sub_10004EE38(v73, type metadata accessor for LogID);
    v95 = sub_100035760(v93, v94, &v131);

    *(v83 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v80, v122, "%{public}s", v83, 0xCu);
    sub_10000CE78(v87);

    v24 = v123;
  }

  else
  {

    v96 = sub_10004EE38(v73, type metadata accessor for LogID);
  }

  v102 = v111;
  a6 = *(v109 + 16);
  v103 = __chkstk_darwin(v96);
  *(&v106 - 2) = v104;
  *(&v106 - 2) = v112;
  __chkstk_darwin(v103);
  *(&v106 - 2) = sub_10001EF68;
  *(&v106 - 1) = v105;

  os_unfair_lock_lock((a6 + 16));
  sub_10004EFD4();
  if (!v24)
  {
    os_unfair_lock_unlock((a6 + 16));

    (*(v124 + 8))(v125, v102);

LABEL_29:

    return;
  }

LABEL_41:
  os_unfair_lock_unlock((a6 + 16));
  __break(1u);
}

void sub_10004524C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, void *a7, void *a8, char *a9)
{
  v115 = a7;
  v123 = a5;
  LODWORD(v122) = a4;
  v120 = a2;
  v121 = a3;
  v114 = type metadata accessor for LogID(0);
  v13 = *(*(v114 - 8) + 64);
  v14 = __chkstk_darwin(v114);
  v118 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v106 - v17;
  __chkstk_darwin(v16);
  v19 = &v106 - v18;
  v20 = type metadata accessor for Logger();
  v124 = *(v20 - 8);
  v21 = *(v124 + 64);
  __chkstk_darwin(v20);
  v125 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = mach_absolute_time();
  v23 = *a8;
  v24 = *(*a8 + 16);
  v126 = sub_10004EFA4;
  v127 = v23;

  os_unfair_lock_lock(v24 + 4);
  sub_10004EF74(&v128);
  v116 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v24 + 4);
  v25 = v129;
  v113 = v128;
  v112 = v130;

  v26 = a8[1];
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v27 = sub_10001D1DC(a1);
  if ((v28 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v119 = a9;
  (*(v124 + 16))(v125, *(v26 + 56) + *(v124 + 72) * v27, v20);
  v128 = StaticString.description.getter();
  v129 = v29;
  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = a6;
  v31._object = v115;
  String.append(_:)(v31);
  v32 = v129;
  v115 = v128;
  v33 = v19;
  sub_10004EDD0(v123, v19, type metadata accessor for LogID);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v111 = v20;
  v109 = v23;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v131 = v107;
    *v37 = 136446210;
    v128 = 2113069;
    v129 = 0xE300000000000000;
    v38._countAndFlagsBits = v113;
    v38._object = v25;
    String.append(_:)(v38);
    v39 = (v33 + *(v114 + 24));
    v40 = *v39;
    v41 = v39[1];

    v42._countAndFlagsBits = v40;
    v42._object = v41;
    String.append(_:)(v42);

    v43._countAndFlagsBits = v115;
    v43._object = v32;
    String.append(_:)(v43);

    v44 = v128;
    v45 = v129;
    sub_10004EE38(v33, type metadata accessor for LogID);
    v46 = sub_100035760(v44, v45, &v131);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s", v37, 0xCu);
    sub_10000CE78(v107);
  }

  else
  {

    sub_10004EE38(v33, type metadata accessor for LogID);
  }

  a1 = v118;
  v47 = v116;
  sub_1000B97B8(v119);
  v24 = v47;
  v110 = v25;
  if (!v47)
  {
    v72 = mach_absolute_time();
    a6 = v72 - v117;
    if (v72 < v117)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v73 = v108;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v24 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v128 = StaticString.description.getter();
    v129 = v74;
    v75._countAndFlagsBits = 23328;
    v75._object = 0xE200000000000000;
    String.append(_:)(v75);
    v131 = a6 / 0x3E8;
    v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v76);

    v77._countAndFlagsBits = 1567847712;
    v77._object = 0xE400000000000000;
    String.append(_:)(v77);
    v79 = v128;
    v78 = v129;
    sub_10004EDD0(v123, v73, type metadata accessor for LogID);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v123 = 0;
      v83 = v82;
      v84 = swift_slowAlloc();
      v85._object = v25;
      v86 = v79;
      v87 = v84;
      v131 = v84;
      *v83 = 136446210;
      v128 = 2108732;
      v129 = 0xE300000000000000;
      LODWORD(v122) = v81;
      v85._countAndFlagsBits = v113;
      String.append(_:)(v85);
      v88 = (v73 + *(v114 + 24));
      v89 = *v88;
      v90 = v88[1];

      v91._countAndFlagsBits = v89;
      v91._object = v90;
      String.append(_:)(v91);

      v92._countAndFlagsBits = v86;
      v92._object = v78;
      String.append(_:)(v92);

      v93 = v128;
      v94 = v129;
      sub_10004EE38(v73, type metadata accessor for LogID);
      v95 = sub_100035760(v93, v94, &v131);

      *(v83 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v80, v122, "%{public}s", v83, 0xCu);
      sub_10000CE78(v87);

      v24 = v123;
    }

    else
    {

      v96 = sub_10004EE38(v73, type metadata accessor for LogID);
    }

    v102 = v111;
    a6 = *(v109 + 16);
    v103 = __chkstk_darwin(v96);
    *(&v106 - 2) = v104;
    *(&v106 - 2) = v112;
    __chkstk_darwin(v103);
    *(&v106 - 2) = sub_10001EF68;
    *(&v106 - 1) = v105;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v24)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v124 + 8))(v125, v102);

      return;
    }

    goto LABEL_40;
  }

  v48 = mach_absolute_time();
  a6 = v48 - v117;
  if (v48 >= v117)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v128 = 0;
  v129 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v49._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0x203A524F52524520;
  v50._object = 0xE800000000000000;
  String.append(_:)(v50);
  v131 = v24;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v51._countAndFlagsBits = 23328;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v131 = a6 / 0x3E8;
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 1567847712;
  v53._object = 0xE400000000000000;
  String.append(_:)(v53);
  v55 = v128;
  v54 = v129;
  sub_10004EDD0(v123, a1, type metadata accessor for LogID);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v123 = v24;
    v59 = v58;
    v60 = swift_slowAlloc();
    v122 = v55;
    v61 = v60;
    v131 = v60;
    *v59 = 136446210;
    v128 = 11580;
    v129 = 0xE200000000000000;
    v62._countAndFlagsBits = v113;
    v62._object = v25;
    String.append(_:)(v62);
    v63 = (a1 + *(v114 + 24));
    v64 = *v63;
    v65 = v63[1];

    v66._countAndFlagsBits = v64;
    v66._object = v65;
    String.append(_:)(v66);

    v67._countAndFlagsBits = v122;
    v67._object = v54;
    String.append(_:)(v67);

    v68 = v128;
    v69 = v129;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v70 = sub_100035760(v68, v69, &v131);

    *(v59 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s", v59, 0xCu);
    sub_10000CE78(v61);
  }

  else
  {

    v71 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v97 = v111;
  v98 = *(v109 + 16);
  v99 = __chkstk_darwin(v71);
  *(&v106 - 2) = v100;
  *(&v106 - 2) = v112;
  __chkstk_darwin(v99);
  *(&v106 - 2) = sub_10001EF68;
  *(&v106 - 1) = v101;

  os_unfair_lock_lock(v98 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v98 + 4);

  swift_willThrow();
  (*(v124 + 8))(v125, v97);
}

uint64_t sub_100045ECC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = pthread_self();
  v5 = pthread_mach_thread_np(v4);
  result = swift_beginAccess();
  v7 = *(a1 + 24);
  if (*(v7 + 16) && (result = sub_10001D194(v5), (v8 & 1) != 0))
  {
    v9 = *(v7 + 56) + 24 * result;
    v10 = *(v9 + 16);
    *a2 = *(v9 + 8);
    a2[1] = v10;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }

  return result;
}

uint64_t sub_100045F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = pthread_self();
  v5 = pthread_mach_thread_np(v4);
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (*(v6 + 16) && (v7 = sub_10001D194(v5), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 24 * v7);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    result = 0;
  }

  if (result)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v16 = result;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    if (result)
    {
      v17 = v11;
    }

    else
    {
      v17 = 0;
    }

    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    swift_beginAccess();
    sub_10004BC5C(v15, v17, v16, v5);
    swift_endAccess();

    *a2 = v17;
    *(a2 + 8) = v16;
    *(a2 + 16) = v5;
  }

  return result;
}

uint64_t sub_1000460A4(uint64_t a1, int a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (*(v5 + 16))
  {
    result = sub_10001D194(a2);
    if (v6)
    {
      v7 = (*(v5 + 56) + 24 * result);
      if (*v7 < 2)
      {
        swift_beginAccess();
        sub_10004B980(a2);
      }

      else
      {
        v9 = v7[1];
        v8 = v7[2];
        v10 = *v7 - 1;

        sub_10004EC9C(1, v9, v8, v11);

        v12 = static String._fromSubstring(_:)();
        v14 = v13;

        swift_beginAccess();
        sub_10004BC5C(v10, v12, v14, a2);
      }

      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1000461FC(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v25 = a2;
  v6 = type metadata accessor for OSSignpostError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1 + *(type metadata accessor for AUALog(0) + 24);
  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v24 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v15, v11);
  }

  if ((a4 & 1) == 0)
  {
    v19 = v25;
    if (v25)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v7 + 88))(v10, v6) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v10, v6);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v24, v22, v19, v20, v21, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v25 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v25 & 0xFFFFF800) != 0xD800)
  {
    if (v25 >> 16 <= 0x10)
    {
      v19 = &v26;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000464A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AUALog.Padding();
  v2 = swift_allocObject();
  sub_100001AB4(&qword_100173D10, &qword_10011DF90);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v2 + 16) = v3;
  *(v2 + 24) = sub_10000A718(_swiftEmptyArrayStorage);
  *a1 = v2;
  sub_100001AB4(&qword_100176170, &qword_100121920);
  v4 = sub_100001AB4(&qword_100174A70, &qword_1001201B8);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001215B0;
  v8 = (v7 + v6);
  v9 = *(v4 + 48);
  *v8 = 0;
  Logger.init(subsystem:category:)();
  v10 = *(v4 + 48);
  v8[v5] = 1;
  Logger.init(subsystem:category:)();
  v11 = *(v4 + 48);
  v8[2 * v5] = 2;
  Logger.init(subsystem:category:)();
  v12 = *(v4 + 48);
  v8[3 * v5] = 3;
  Logger.init(subsystem:category:)();
  v13 = *(v4 + 48);
  v8[4 * v5] = 4;
  Logger.init(subsystem:category:)();
  v14 = *(v4 + 48);
  v8[5 * v5] = 5;
  Logger.init(subsystem:category:)();
  v15 = sub_10000A844(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  a1[1] = v15;
  v16 = a1 + *(type metadata accessor for AUALog(0) + 24);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100046770()
{
  v0 = type metadata accessor for AUALog(0);
  sub_10004EF10(v0, qword_100179508);
  v1 = sub_10000A1BC(v0, qword_100179508);
  return sub_1000464A8(v1);
}

char *sub_1000467E4(char *a1, int64_t a2, char a3)
{
  result = sub_100047BE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100046804(char *a1, int64_t a2, char a3)
{
  result = sub_100047CEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100046824(char *a1, int64_t a2, char a3)
{
  result = sub_100047E0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_100046844()
{
  result = qword_100175CB0;
  if (!qword_100175CB0)
  {
    sub_10001E8F0(&qword_100175CA8, &unk_100124860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175CB0);
  }

  return result;
}

uint64_t sub_1000468E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OSSignposter();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000469A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSSignposter();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100046A64()
{
  type metadata accessor for AUALog.Padding();
  sub_100046AF4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OSSignposter();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100046AF4()
{
  if (!qword_100175E10)
  {
    type metadata accessor for Logger();
    sub_100046B60();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100175E10);
    }
  }
}

unint64_t sub_100046B60()
{
  result = qword_100175E18;
  if (!qword_100175E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175E18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamingInterfaceDataFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamingInterfaceDataFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100046D18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OSSignpostID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100046DD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSSignpostID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100046E9C()
{
  result = type metadata accessor for OSSignpostID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100046F1C()
{
  result = qword_100175EE8;
  if (!qword_100175EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175EE8);
  }

  return result;
}

char *sub_100046F70(char *a1, int64_t a2, char a3)
{
  result = sub_100047F00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100046F90(void *a1, int64_t a2, char a3)
{
  result = sub_10004801C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100046FB0(char *a1, int64_t a2, char a3)
{
  result = sub_100048164(a1, a2, a3, *v3, &qword_100175F10, &qword_1001216C0);
  *v3 = result;
  return result;
}

char *sub_100046FE0(char *a1, int64_t a2, char a3)
{
  result = sub_100048164(a1, a2, a3, *v3, &qword_100175F18, &qword_1001216C8);
  *v3 = result;
  return result;
}

char *sub_100047010(char *a1, int64_t a2, char a3)
{
  result = sub_100048278(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047030(char *a1, int64_t a2, char a3)
{
  result = sub_1000489E4(a1, a2, a3, *v3, &qword_100175398, &qword_100121F30);
  *v3 = result;
  return result;
}

void *sub_100047060(void *a1, int64_t a2, char a3)
{
  result = sub_100048390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047080(char *a1, int64_t a2, char a3)
{
  result = sub_1000484C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000470A0(char *a1, int64_t a2, char a3)
{
  result = sub_1000485C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000470C0(char *a1, int64_t a2, char a3)
{
  result = sub_1000486C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000470E0(char *a1, int64_t a2, char a3)
{
  result = sub_1000487C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047100(char *a1, int64_t a2, char a3)
{
  result = sub_1000488D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047120(char *a1, int64_t a2, char a3)
{
  result = sub_100048AE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047140(char *a1, int64_t a2, char a3)
{
  result = sub_100048C00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047160(char *a1, int64_t a2, char a3)
{
  result = sub_100048D08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047180(char *a1, int64_t a2, char a3)
{
  result = sub_10004902C(a1, a2, a3, *v3, &qword_100176040, &qword_1001217F0);
  *v3 = result;
  return result;
}

char *sub_1000471B0(char *a1, int64_t a2, char a3)
{
  result = sub_100049254(a1, a2, a3, *v3, &qword_100176048, &qword_1001217F8);
  *v3 = result;
  return result;
}

char *sub_1000471E0(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176050, &qword_100121800);
  *v3 = result;
  return result;
}

char *sub_100047210(char *a1, int64_t a2, char a3)
{
  result = sub_10004902C(a1, a2, a3, *v3, &qword_100176058, &qword_100121808);
  *v3 = result;
  return result;
}

char *sub_100047240(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176060, &qword_100121810);
  *v3 = result;
  return result;
}

char *sub_100047270(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176068, &qword_100121818);
  *v3 = result;
  return result;
}

char *sub_1000472A0(char *a1, int64_t a2, char a3)
{
  result = sub_100048E24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000472C0(char *a1, int64_t a2, char a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_100176078, &qword_100121828);
  *v3 = result;
  return result;
}

char *sub_1000472F0(char *a1, int64_t a2, char a3)
{
  result = sub_100048F28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047310(char *a1, int64_t a2, char a3)
{
  result = sub_10004902C(a1, a2, a3, *v3, &qword_100176088, &qword_100121838);
  *v3 = result;
  return result;
}

char *sub_100047340(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176090, &qword_100121840);
  *v3 = result;
  return result;
}

void *sub_100047370(void *a1, int64_t a2, char a3)
{
  result = sub_100049364(a1, a2, a3, *v3, &qword_100175FC8, &qword_100121778, &qword_100174F68, &unk_100120B90);
  *v3 = result;
  return result;
}

void *sub_1000473B0(void *a1, int64_t a2, char a3)
{
  result = sub_100049120(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000473D0(char *a1, int64_t a2, char a3)
{
  result = sub_100049254(a1, a2, a3, *v3, &qword_100175EF0, &qword_1001216A0);
  *v3 = result;
  return result;
}

void *sub_100047400(void *a1, int64_t a2, char a3)
{
  result = sub_100049364(a1, a2, a3, *v3, &qword_100176158, &qword_100121908, &qword_100176160, &qword_100121910);
  *v3 = result;
  return result;
}

char *sub_100047440(char *a1, int64_t a2, char a3)
{
  result = sub_1000494AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047460(char *a1, int64_t a2, char a3)
{
  result = sub_1000495C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047480(char *a1, int64_t a2, char a3)
{
  result = sub_1000496E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000474A0(char *a1, int64_t a2, char a3)
{
  result = sub_1000497E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000474C0(char *a1, int64_t a2, char a3)
{
  result = sub_100049910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000474E0(char *a1, int64_t a2, char a3)
{
  result = sub_100049A30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047500(char *a1, int64_t a2, char a3)
{
  result = sub_100049B34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047520(char *a1, int64_t a2, char a3)
{
  result = sub_100049C3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047540(char *a1, int64_t a2, char a3)
{
  result = sub_100049D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047560(char *a1, int64_t a2, char a3)
{
  result = sub_100049E78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047580(char *a1, int64_t a2, char a3)
{
  result = sub_100049F7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000475A0(char *a1, int64_t a2, char a3)
{
  result = sub_10004A0A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000475C0(char *a1, int64_t a2, char a3)
{
  result = sub_10004A1BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000475E0(char *a1, int64_t a2, char a3)
{
  result = sub_100049254(a1, a2, a3, *v3, &qword_1001760A8, &qword_100121858);
  *v3 = result;
  return result;
}

char *sub_100047610(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_1001760B0, &qword_100121860);
  *v3 = result;
  return result;
}

char *sub_100047640(char *a1, int64_t a2, char a3)
{
  result = sub_100049254(a1, a2, a3, *v3, &qword_1001760B8, &qword_100121868);
  *v3 = result;
  return result;
}

char *sub_100047670(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_1001760C0, &qword_100121870);
  *v3 = result;
  return result;
}

char *sub_1000476A0(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_1001760C8, &qword_100121878);
  *v3 = result;
  return result;
}

char *sub_1000476D0(char *a1, int64_t a2, char a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_1001760D0, &qword_100121880);
  *v3 = result;
  return result;
}

char *sub_100047700(char *a1, int64_t a2, char a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_1001760D8, &qword_100121888);
  *v3 = result;
  return result;
}

char *sub_100047730(char *a1, int64_t a2, char a3)
{
  result = sub_10004A2D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047750(char *a1, int64_t a2, char a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_1001760E8, &qword_100121898);
  *v3 = result;
  return result;
}

char *sub_100047780(char *a1, int64_t a2, char a3)
{
  result = sub_10004A3DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000477A0(char *a1, int64_t a2, char a3)
{
  result = sub_100049254(a1, a2, a3, *v3, &qword_1001760F8, &qword_1001218A8);
  *v3 = result;
  return result;
}

char *sub_1000477D0(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176100, &qword_1001218B0);
  *v3 = result;
  return result;
}

char *sub_100047800(char *a1, int64_t a2, char a3)
{
  result = sub_10004A4F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047820(char *a1, int64_t a2, char a3)
{
  result = sub_10004A618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047840(char *a1, int64_t a2, char a3)
{
  result = sub_10004A724(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047860(char *a1, int64_t a2, char a3)
{
  result = sub_10004A840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047880(char *a1, int64_t a2, char a3)
{
  result = sub_10004A94C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000478A0(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100175FE8, &qword_100121798);
  *v3 = result;
  return result;
}

char *sub_1000478D0(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100175FF0, &qword_1001217A0);
  *v3 = result;
  return result;
}

char *sub_100047900(char *a1, int64_t a2, char a3)
{
  result = sub_10004AB50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047920(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176010, &qword_1001217C0);
  *v3 = result;
  return result;
}

char *sub_100047950(char *a1, int64_t a2, char a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_100176018, &qword_1001217C8);
  *v3 = result;
  return result;
}

char *sub_100047980(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176020, &qword_1001217D0);
  *v3 = result;
  return result;
}

char *sub_1000479B0(char *a1, int64_t a2, char a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_100176028, &qword_1001217D8);
  *v3 = result;
  return result;
}

char *sub_1000479E0(char *a1, int64_t a2, char a3)
{
  result = sub_1000489E4(a1, a2, a3, *v3, &qword_100175FB0, &qword_100121760);
  *v3 = result;
  return result;
}

char *sub_100047A10(char *a1, int64_t a2, char a3)
{
  result = sub_1000489E4(a1, a2, a3, *v3, &qword_100176130, &qword_1001218E0);
  *v3 = result;
  return result;
}

char *sub_100047A40(char *a1, int64_t a2, char a3)
{
  result = sub_10004B768(a1, a2, a3, *v3, &qword_100175FA0, &qword_100121750);
  *v3 = result;
  return result;
}

char *sub_100047A70(char *a1, int64_t a2, char a3)
{
  result = sub_10004AD84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047A90(char *a1, int64_t a2, char a3)
{
  result = sub_10004AEA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047AB0(char *a1, int64_t a2, char a3)
{
  result = sub_10004AFC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047AD0(char *a1, int64_t a2, char a3)
{
  result = sub_10004B0E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047AF0(char *a1, int64_t a2, char a3)
{
  result = sub_10004B204(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047B10(char *a1, int64_t a2, char a3)
{
  result = sub_10004B324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047B30(char *a1, int64_t a2, char a3)
{
  result = sub_10004B428(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047B50(char *a1, int64_t a2, char a3)
{
  result = sub_10004B540(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047B70(char *a1, int64_t a2, char a3)
{
  result = sub_10004B644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047B90(char *a1, int64_t a2, char a3)
{
  result = sub_10004B768(a1, a2, a3, *v3, &qword_100175F88, &qword_100121738);
  *v3 = result;
  return result;
}

char *sub_100047BC0(char *a1, int64_t a2, char a3)
{
  result = sub_10004B864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047BE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754F8, &qword_100120F88);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100047CEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754F0, &qword_100120F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100047E0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175C88, qword_100121348);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100047F00(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753F8, &qword_100120EC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_10004801C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175F00, &qword_1001216B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_100001AB4(&qword_100175F08, &qword_1001216B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100048164(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 12);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[12 * v10])
    {
      memmove(v14, v15, 12 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 12 * v10);
  }

  return v12;
}

char *sub_100048278(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F20, &qword_1001216D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

void *sub_100048390(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175FF8, &qword_1001217A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(&qword_100176000, &qword_1001217B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000484C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175490, &qword_100126EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1000485C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175EF8, &qword_1001216A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1000486C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176140, &qword_1001218F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1000487C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F98, &qword_100121748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 12 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1000488D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753A8, &qword_100129F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1000489E4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_100048AE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176138, &qword_1001218E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100048C00(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176030, &qword_1001217E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 17);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 17 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_100048D08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176038, &qword_1001217E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_100048E24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176070, &qword_100121820);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100048F28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176080, &qword_100121830);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_10004902C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

void *sub_100049120(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175F28, &qword_1001216D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_100001AB4(&qword_100177290, &qword_100120B80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100049254(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 6);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[6 * v10])
    {
      memmove(v14, v15, 6 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 6 * v10);
  }

  return v12;
}

void *sub_100049364(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100001AB4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1000494AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176168, &qword_100121918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_1000495C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176150, &qword_100121900);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_1000496E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176148, &qword_1001218F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1000497E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FC0, &qword_100121770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100049910(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FB8, &qword_100121768);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100049A30(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F50, &qword_100121700);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_100049B34(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F48, &qword_1001216F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 5 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_100049C3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F40, &qword_1001216F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[8 * v8 - v8])
    {
      memmove(v12, v13, 7 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 7 * v8);
  }

  return v10;
}

char *sub_100049D60(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F38, &qword_1001216E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_100049E78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F58, &qword_100121708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_100049F7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F60, &qword_100121710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[8 * v8 - v8])
    {
      memmove(v12, v13, 7 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 7 * v8);
  }

  return v10;
}