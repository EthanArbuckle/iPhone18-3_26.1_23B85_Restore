void sub_10005AA94()
{
  sub_10005AB78(319, &qword_100CAC870, &type metadata accessor for NWActivity, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10005AB78(319, &unk_100CAC878, &type metadata accessor for NWActivity.CompletionReason, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005AB78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10005ABDC()
{
  v1 = *v0;
  v2 = sub_100073CDC(*v0);
  v3 = v2;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      __chkstk_darwin(v2);
      sub_10009ECF4(sub_100195BF0, v12, v6, v7, v8, v9, v10, v11, v12[0], v12[1], v0, v12[3], v12[4], v13, v14, v15, v16, v17, v18, v19);
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = v5;
    sub_100079728();
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

char *sub_10005AD0C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100138A80(a1, a2);
  sub_10005AD58(&off_100C429E0);
  return v3;
}

uint64_t sub_10005AD58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100278C68(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10005AE3C(uint64_t a1)
{
  v2 = type metadata accessor for NetworkActivityCompletion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10005AE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a7;
  v70 = a5;
  v71 = a6;
  v69 = a4;
  v10 = type metadata accessor for TimeState();
  v64 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v65 = v11;
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = type metadata accessor for Location();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  v23 = v22;
  sub_100035AD0(a2, v14, &qword_100CA65D8);
  if (sub_100024D10(v14, 1, v23) == 1)
  {
    sub_1000180EC(v14, &qword_100CA65D8);
    if (qword_100CA2730 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000703C(v24, qword_100D90BE8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "WeatherDataStoreObserver: Fetching weather data for all locations", v27, 2u);
    }

    sub_1001906B0();
    sub_1001919F8();
  }

  else
  {
    v28 = (*(v16 + 32))(v21, v14, v23);
    __chkstk_darwin(v28);

    sub_100079C74();
    v61 = v29;
    if (qword_100CA2730 != -1)
    {
      swift_once();
    }

    v63 = a1;
    v30 = type metadata accessor for Logger();
    sub_10000703C(v30, qword_100D90BE8);
    v31 = *(v16 + 16);
    v62 = v21;
    v31(v18, v21, v23);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v60 = v23;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = v23;
      v37 = swift_slowAlloc();
      v72 = v37;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      v38 = Location.name.getter();
      v40 = v39;
      v41 = *(v16 + 8);
      v58 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v59 = v41;
      v41(v18, v36);
      v42 = sub_100078694(v38, v40, &v72);

      *(v35 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "WeatherDataStoreObserver: Fetching weather data for priority location %{private,mask.hash}s", v35, 0x16u);
      sub_100006F14(v37);
    }

    else
    {

      v43 = *(v16 + 8);
      v58 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v59 = v43;
      v43(v18, v23);
    }

    v57 = *(v67 + 16);
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = v68;
    v46 = v66;
    sub_100051048(v68, v66, type metadata accessor for TimeState);
    v47 = (*(v64 + 80) + 64) & ~*(v64 + 80);
    v48 = (v65 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    v50 = v61;
    v49[2] = v44;
    v49[3] = v50;
    v52 = v69;
    v51 = v70;
    v49[4] = a3;
    v49[5] = v52;
    v53 = a3;
    v54 = v71;
    v49[6] = v51;
    v49[7] = v54;
    sub_100079D2C(v46, v49 + v47, type metadata accessor for TimeState);
    *(v49 + v48) = v63;

    v55 = v62;
    sub_100079E4C(v62, v53, v52, v51, v54, v45, 0, 0, sub_10018F988, v49, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);

    v59(v55, v60);
  }
}

uint64_t sub_10005B528()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10005B560()
{
  v1 = type metadata accessor for TimeState();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  type metadata accessor for Date();
  sub_1000037E8();
  (*(v4 + 8))(v0 + v3);

  return swift_deallocObject();
}

BOOL sub_10005B658()
{
  type metadata accessor for Location();
  sub_10004426C();
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_10005B6CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005B714(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10005B758(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000140C8(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10(0);
  sub_1000037E8();
  (*(v11 + 32))(v9 + *(v11 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  sub_1000B984C();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

uint64_t sub_10005B7F8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10005B8AC(unsigned __int8 a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v52 = v7;
  v53 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v51 = v9 - v8;
  v10 = type metadata accessor for Location();
  sub_1000037C4();
  v55 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for UUID();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;

  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  (*(v18 + 8))(v22, v16);
  *(v4 + 16) = v23;
  *(v4 + 24) = v25;
  v26 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
  if (qword_100CA2730 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_10000703C(v27, qword_100D90BE8);
  (*(*(v27 - 8) + 16))(v4 + v26, v28, v27);
  v29 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog__finished;
  v58 = 0;
  sub_10022C350(&qword_100CC77C0);
  swift_allocObject();
  *(v4 + v29) = Atomic.init(wrappedValue:)();
  *(v4 + OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_kind) = a1;
  v30 = *(v55 + 16);
  v30(v4 + OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_location, a2, v10);
  *(v4 + OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_forced) = a3 & 1;
  v30(v15, a2, v10);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v50 = v32;
    v33 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v33 = 136447235;
    if (a1)
    {
      v34 = sub_1000316BC(a1);
      if (v37)
      {
        v38 = v35;
      }

      else
      {
        v38 = v36;
      }
    }

    else
    {
      v38 = 0xE700000000000000;
      v34 = 0x72656874616577;
    }

    v40 = sub_100078694(v34, v38, &v57);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2160;
    *(v33 + 14) = 1752392040;
    *(v33 + 22) = 2081;
    Location.identifier.getter();
    sub_10005BDF0();
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    (*(v52 + 8))(v51, v53);
    v44 = *(v55 + 8);
    v44(v15, v10);
    v45 = sub_100078694(v41, v43, &v57);

    *(v33 + 24) = v45;
    *(v33 + 32) = 1026;
    *(v33 + 34) = a3 & 1;
    *(v33 + 38) = 2082;
    v46 = *(v4 + 16);
    v47 = *(v4 + 24);

    v48 = sub_100078694(v46, v47, &v57);

    *(v33 + 40) = v48;
    _os_log_impl(&_mh_execute_header, v31, v50, "New WeatherData Update Request. kind=%{public}s, location=%{private,mask.hash}s, forced=%{BOOL,public}d, uuid=%{public}s", v33, 0x30u);
    swift_arrayDestroy();
    sub_100016BD8();
    sub_100003884();

    v44(a2, v10);
  }

  else
  {

    v39 = *(v55 + 8);
    v39(a2, v10);
    v39(v15, v10);
  }

  return v4;
}

unint64_t sub_10005BDF0()
{
  result = qword_100CA38C8;
  if (!qword_100CA38C8)
  {
    type metadata accessor for Location.Identifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA38C8);
  }

  return result;
}

unint64_t sub_10005BE48()
{
  v0 = sub_10005C058();
  if (v1 <= 0x3F)
  {
    v0 = sub_10007B164();
    if (v2 <= 0x3F)
    {
      sub_10000B424(319, &qword_100CACAD0);
      if (v4 > 0x3F)
      {
        return v3;
      }

      sub_10005C080(319, &qword_100CC7858);
      if (v5 > 0x3F)
      {
        return v3;
      }

      sub_10005C0EC();
      if (v6 > 0x3F)
      {
        return v3;
      }

      sub_10005C15C();
      if (v7 > 0x3F)
      {
        return v3;
      }

      v0 = sub_10007B218();
      if (v8 > 0x3F)
      {
        return v0;
      }

      sub_10007B1C0(319, &qword_100CC7878);
      v0 = v9;
      if (v10 > 0x3F)
      {
        return v0;
      }

      sub_10000B424(319, &qword_100CC7880);
      v0 = v11;
      if (v12 > 0x3F)
      {
        return v0;
      }

      v0 = sub_10005C1AC();
      if (v13 > 0x3F)
      {
        return v0;
      }

      sub_10007B1C0(319, &qword_100CC7890);
      if (v14 > 0x3F)
      {
        return v3;
      }

      v0 = type metadata accessor for Location();
      if (v15 <= 0x3F)
      {
        sub_10005C080(319, &unk_100CC7898);
        v0 = v16;
        if (v17 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void *sub_10005C058()
{
  result = qword_100CC7848;
  if (!qword_100CC7848)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100CC7848);
  }

  return result;
}

void sub_10005C080(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for Location();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10005C0EC()
{
  if (!qword_100CC7860)
  {
    type metadata accessor for Location();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CC7860);
    }
  }
}

void sub_10005C15C()
{
  if (!qword_100CC7868)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC7868);
    }
  }
}

void *sub_10005C1AC()
{
  result = qword_100CC7888;
  if (!qword_100CC7888)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100CC7888);
  }

  return result;
}

void sub_10005C1D4(uint64_t a1)
{
  type metadata accessor for Location();
  sub_1000037C4();
  v367 = v3;
  v368 = v2;
  __chkstk_darwin(v2);
  sub_100003908();
  __chkstk_darwin(v4);
  sub_100003878();
  v366 = v5;
  __chkstk_darwin(v6);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v7);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  v11 = __chkstk_darwin(v10);
  v13 = &v360 - v12;
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  v15 = __chkstk_darwin(v14);
  v17 = &v360 - v16;
  __chkstk_darwin(v15);
  sub_100003878();
  v19 = v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v360 - v22;
  __chkstk_darwin(v21);
  sub_100003878();
  v25 = v24;
  v27 = __chkstk_darwin(v26);
  v29 = &v360 - v28;
  __chkstk_darwin(v27);
  v31 = &v360 - v30;
  type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000037D8();
  v35 = (v34 - v33);
  sub_10008853C(a1, v34 - v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v215 = *v35;
      v216 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v217 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v218 = v217 + v216;
      v38 = Logger.logObject.getter();
      v219 = static os_log_type_t.default.getter();
      if (!sub_100007E70(v219))
      {
        goto LABEL_107;
      }

      swift_slowAlloc();
      v220 = sub_10000539C();
      sub_100022E3C(v220);
      sub_1000499D8(1.5047e-36);
      sub_100010460();
      sub_100051F14();
      *(v218 + 10) = v215;
      sub_10001C6A8();

      goto LABEL_45;
    case 2u:

      swift_errorRetain();

      swift_errorRetain();
      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.default.getter();
      if (!sub_1000250E8(v162))
      {
        goto LABEL_72;
      }

      v163 = sub_100011450();
      v164 = sub_10003A270();
      sub_1000163EC(v164);
      *v163 = 136315394;
      swift_getErrorValue();
      v165 = v370;
      v166 = Error.localizedDescription.getter();
      sub_100024244(v166, v167);
      sub_100021030();
      *(v163 + 4) = v23;

      sub_100020270();
      v168 = sub_1000139EC();
      sub_100078694(v168, v23, v169);
      sub_100036D84();
      *(v163 + 14) = v165;
      sub_100074C88();

      goto LABEL_42;
    case 3u:
      v182 = v367;
      v183 = v368;
      (*(v367 + 32))(v31, v35, v368);
      (*(v182 + 16))(v29, v31, v183);
      v184 = v369;
      sub_100017B2C();
      swift_retain_n();
      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.default.getter();
      if (sub_1000250E8(v186))
      {
        v187 = sub_1000205BC();
        v371[0] = sub_10003A270();
        sub_1000045C4(7.2226e-34);
        v188 = Location.id.getter();
        sub_100024244(v188, v189);
        sub_100021030();
        *(v187 + 14) = v183;
        v367 = *(v182 + 8);
        v190 = v29;
        v191 = v368;
        (v367)(v190, v368);
        *(v187 + 22) = 2082;
        v192 = *(v184 + 16);
        v193 = *(v184 + 24);

        v194 = sub_1000139EC();
        sub_100078694(v194, v193, v195);
        sub_100036D84();
        *(v187 + 24) = v192;
        sub_100017B2C();

        sub_10003050C();
        _os_log_impl(v196, v197, v198, v199, v200, 0x20u);
        swift_arrayDestroy();
        sub_100003884();
        sub_100003884();

        (v367)(v31, v191);
      }

      else
      {
        v341 = *(v182 + 8);
        v341(v29, v183);

        sub_100017B2C();

        v341(v31, v183);
      }

      return;
    case 4u:
      v118 = *&v35[*(sub_10022C350(&qword_100CC77B8) + 48)];
      v119 = v367;
      sub_100069724();
      v120();
      (*(v119 + 16))(v23, v25, v35);
      v121 = v369;
      sub_100017B2C();
      swift_retain_n();
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.default.getter();
      if (sub_1000207B0(v123))
      {
        swift_slowAlloc();
        v366 = v25;
        v124 = sub_1000248B0();
        v365 = v118;
        v371[0] = v124;
        sub_10000CB2C(7.2227e-34);
        v125 = Location.id.getter();
        v127 = sub_100024244(v125, v126);

        *(v25 + 14) = v127;
        v128 = *(v119 + 8);
        v128(v23, v35);
        v83 = v128;
        *(v25 + 22) = 2050;
        *(v25 + 24) = v365;
        *(v25 + 32) = 2082;
        v129 = *(v121 + 24);

        v130 = sub_1000139EC();
        v132 = sub_100078694(v130, v129, v131);

        *(v25 + 34) = v132;
        sub_100017B2C();

        sub_100021554();
        _os_log_impl(v133, v134, v135, v136, v137, 0x2Au);
        swift_arrayDestroy();
        sub_100003884();
        sub_100003884();

        v88 = v366;
        goto LABEL_24;
      }

      v338 = *(v119 + 8);
      v338(v23, v35);

      sub_100017B2C();

      v339 = v25;
      goto LABEL_95;
    case 5u:
      v247 = sub_10022C350(&qword_100CC77B0);
      v248 = *&v35[*(v247 + 48)];
      v249 = *&v35[*(v247 + 64)];
      v250 = v367;
      v251 = v368;
      (*(v367 + 32))(v19, v35, v368);
      (*(v250 + 16))(v17, v19, v251);
      v252 = v369;
      sub_100031DF4();
      swift_retain_n();
      v253 = Logger.logObject.getter();
      v254 = static os_log_type_t.default.getter();
      if (sub_1000207B0(v254))
      {
        swift_slowAlloc();
        v366 = v19;
        v255 = sub_1000248B0();
        v364 = v248;
        v365 = v255;
        v371[0] = v255;
        sub_10000CB2C(7.2228e-34);
        v256 = Location.id.getter();
        sub_100024244(v256, v257);
        v258 = v249;
        sub_100021030();
        *(v19 + 14) = v249;
        v83 = *(v250 + 8);
        v83(v17, v251);
        *(v19 + 22) = 2050;
        *(v19 + 24) = v364;
        *(v19 + 32) = 2050;
        *(v19 + 34) = v258;
        *(v19 + 42) = 2082;
        v259 = *(v252 + 24);

        v260 = sub_1000139EC();
        v262 = sub_100078694(v260, v259, v261);

        *(v19 + 44) = v262;
        sub_100031DF4();

        sub_100021554();
        _os_log_impl(v263, v264, v265, v266, v267, 0x34u);
        swift_arrayDestroy();
        sub_100003884();
        sub_100003884();

        v88 = v366;
        v138 = v251;
        goto LABEL_54;
      }

      v338 = *(v250 + 8);
      v338(v17, v251);

      sub_100031DF4();

      v339 = v19;
      v340 = v251;
      goto LABEL_100;
    case 6u:
      v283 = *v35;
      v284 = *(v35 + 1);
      v285 = v369;

      v286 = sub_10000C918();
      sub_100088528(v286, v287);

      v288 = sub_10000C918();
      sub_100088528(v288, v289);
      v38 = Logger.logObject.getter();
      v290 = static os_log_type_t.default.getter();
      if (!sub_1000207B0(v290))
      {
        v342 = sub_10000C918();
        sub_1000885AC(v342, v343);

        v344 = sub_10000C918();
        sub_1000885AC(v344, v345);
        v346 = sub_10000C918();
        sub_1000885AC(v346, v347);
        goto LABEL_103;
      }

      v291 = sub_100011450();
      v372[0] = sub_10003A270();
      *v291 = 136315394;
      if (v284 == 1)
      {
        v292 = 0xE400000000000000;
        v293 = 1701736302;
      }

      else
      {
        v371[0] = v283;
        v371[1] = v284;
        sub_100060C08();
        v293 = ShortDescribable.description.getter();
        v292 = v349;
      }

      v350 = sub_100078694(v293, v292, v372);

      *(v291 + 4) = v350;
      v351 = sub_10000C918();
      sub_1000885AC(v351, v352);
      v353 = sub_10000C918();
      sub_1000885AC(v353, v354);
      *(v291 + 12) = 2082;
      v355 = *(v285 + 16);
      v356 = *(v285 + 24);

      v357 = sub_100078694(v355, v356, v372);

      *(v291 + 14) = v357;
      v358 = sub_10000C918();
      sub_1000885AC(v358, v359);
      sub_100031DF4();

      _os_log_impl(&_mh_execute_header, v38, v290, "Finished resolving country code. countryCode=%s, uuid=%{public}s", v291, 0x16u);
      swift_arrayDestroy();
      sub_10000EBB0();
      goto LABEL_91;
    case 7u:

      swift_errorRetain();

      swift_errorRetain();
      v161 = Logger.logObject.getter();
      v201 = static os_log_type_t.default.getter();
      if (!sub_1000250E8(v201))
      {
        goto LABEL_72;
      }

      v202 = sub_100011450();
      v203 = sub_10003A270();
      sub_1000163EC(v203);
      *v202 = 136446466;
      swift_getErrorValue();
      v204 = v372[1];
      v205 = Error.localizedDescription.getter();
      sub_100024244(v205, v206);
      sub_100021030();
      *(v202 + 4) = v23;

      sub_100020270();
      v207 = sub_1000139EC();
      sub_100078694(v207, v23, v208);
      sub_100036D84();
      *(v202 + 14) = v204;
      sub_100074C88();

LABEL_42:
      sub_10003050C();
      v214 = 22;
      goto LABEL_71;
    case 8u:
      v303 = v369;

      swift_errorRetain();

      swift_errorRetain();
      v161 = Logger.logObject.getter();
      v304 = static os_log_type_t.error.getter();
      if (sub_1000250E8(v304))
      {
        v305 = sub_1000205BC();
        v306 = sub_10003A270();
        sub_1000163EC(v306);
        sub_1000045C4(7.2226e-34);
        swift_getErrorValue();
        v307 = Error.localizedDescription.getter();
        sub_100024244(v307, v308);
        sub_100021030();
        *(v305 + 14) = v23;

        *(v305 + 22) = 2082;
        v309 = *(v303 + 16);
        v310 = *(v303 + 24);

        v311 = sub_1000139EC();
        sub_100078694(v311, v310, v312);
        sub_100036D84();
        *(v305 + 24) = v309;
        sub_100074C88();

        sub_10003050C();
        v214 = 32;
LABEL_71:
        _os_log_impl(v209, v210, v211, v212, v213, v214);
        sub_100071D30();
        sub_100016BD8();
        sub_100003884();
      }

      else
      {
LABEL_72:

LABEL_103:
      }

      return;
    case 9u:
      v142 = *v35;
      v143 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v144 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v145 = v144 + v143;
      v38 = Logger.logObject.getter();
      v146 = static os_log_type_t.default.getter();
      if (!sub_100007E70(v146))
      {
        goto LABEL_107;
      }

      sub_100011450();
      v147 = sub_10000539C();
      sub_100022E3C(v147);
      *v145 = 134349314;
      *(v145 + 4) = v142;
      *(v145 + 12) = 2082;
      v148 = *(v144 + 16);

      sub_100010460();
      sub_100051F14();
      *(v145 + 14) = v148;
      sub_10001C6A8();

      sub_1000371FC();
      v154 = 22;
      goto LABEL_89;
    case 0xAu:
      v297 = *v35;
      sub_10001C6A8();
      swift_retain_n();
      v38 = Logger.logObject.getter();
      v298 = static os_log_type_t.default.getter();
      v299 = sub_1000207B0(v298);
      if (v297 == 1)
      {
        if (v299)
        {
          v300 = sub_100011450();
          v301 = sub_1000205BC();
          sub_100022E3C(v301);
          sub_10003BE4C(3.9123e-34);
          sub_100010460();
          sub_100051F14();
          *(v300 + 14) = v13;
          sub_10001C6A8();

          v302 = "Weather data in app state is expired and we're past the threshold time between updates. We will update. timeIntervalSinceLastRefresh=%{public}f, uuid=%{public}s";
LABEL_106:
          _os_log_impl(&_mh_execute_header, v38, v298, v302, v300, 0x16u);
          sub_100006F14(v19);
          sub_100003884();
          goto LABEL_91;
        }
      }

      else if (v299)
      {
        v300 = sub_100011450();
        v348 = sub_1000205BC();
        sub_100022E3C(v348);
        sub_10003BE4C(3.9123e-34);
        sub_100010460();
        sub_100051F14();
        *(v300 + 14) = v13;
        sub_10001C6A8();

        v302 = "Weather data in app state is expired but we're NOT past the threshold. We will NOT update. timeIntervalSinceLastRefresh=%{public}f, uuid=%{public}s";
        goto LABEL_106;
      }

LABEL_107:
      sub_10001C6A8();

LABEL_108:

      return;
    case 0xBu:
      v98 = v367;
      v99 = v363;
      sub_100069724();
      v100();
      (*(v98 + 16))(v13, v99, v35);
      v101 = v369;
      sub_100074C88();
      swift_retain_n();
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      if (sub_1000207B0(v103))
      {
        sub_1000205BC();
        v104 = sub_1000248B0();
        sub_1000163EC(v104);
        sub_10000CB2C(7.2226e-34);
        v105 = Location.name.getter();
        sub_100024244(v105, v106);
        sub_100021030();
        *(v99 + 14) = v23;
        v107 = *(v98 + 8);
        v107(v13, v35);
        *(v99 + 22) = 2082;
        v108 = *(v101 + 24);

        v109 = sub_1000139EC();
        v111 = sub_100078694(v109, v108, v110);

        *(v99 + 24) = v111;
        sub_100074C88();

        sub_100021554();
        _os_log_impl(v112, v113, v114, v115, v116, 0x20u);
        sub_100071D30();
        sub_100016BD8();
        sub_100003884();

        v117 = &v373;
        goto LABEL_37;
      }

      v338 = *(v98 + 8);
      v338(v13, v35);
      goto LABEL_97;
    case 0xCu:
      v89 = *v35;
      v139 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v140 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v92 = v140 + v139;
      v38 = Logger.logObject.getter();
      v141 = static os_log_type_t.default.getter();
      if (sub_100007E70(v141))
      {
        goto LABEL_17;
      }

      goto LABEL_107;
    case 0xDu:
      v271 = *(v35 + 1);
      v272 = v35[16];
      v273 = v369;
      sub_100074C88();
      swift_retain_n();
      sub_10001168C();
      swift_bridgeObjectRetain_n();
      v38 = Logger.logObject.getter();
      v274 = static os_log_type_t.default.getter();
      if (!sub_1000207B0(v274))
      {
        goto LABEL_60;
      }

      v275 = swift_slowAlloc();
      v371[0] = sub_10003A270();
      *v275 = 136315650;

      v276 = sub_10003BA88();
      v278 = sub_100078694(v276, v271, v277);

      *(v275 + 4) = v278;
      sub_10001168C();
      swift_bridgeObjectRelease_n();
      *(v275 + 12) = 1026;
      *(v275 + 14) = v272;
      *(v275 + 18) = 2082;
      v279 = *(v273 + 24);

      v280 = sub_10003BA88();
      v282 = sub_100078694(v280, v279, v281);

      *(v275 + 20) = v282;
      sub_100074C88();

      v48 = "Dispatch event that Weather statistics has been updated. description=%s, animated=%{BOOL,public}d, uuid=%{public}s";
      v49 = v274;
      v50 = v38;
      v51 = v275;
      v52 = 28;
      goto LABEL_59;
    case 0xEu:
      v89 = *v35;
      v90 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v91 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v92 = v91 + v90;
      v38 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (!sub_100007E70(v93))
      {
        goto LABEL_107;
      }

LABEL_17:
      swift_slowAlloc();
      v94 = sub_10000539C();
      sub_100022E3C(v94);
      sub_1000499D8(1.5282e-36);
      sub_100010460();
      sub_100051F14();
      *(v92 + 10) = v89;
      sub_10001C6A8();

LABEL_45:
      sub_1000371FC();
      v154 = 18;
      goto LABEL_89;
    case 0xFu:
      v170 = v367;
      v99 = v364;
      sub_100069724();
      v171();
      v172 = v360;
      (*(v170 + 16))(v360, v99, v35);
      v173 = v369;
      sub_100074C88();
      swift_retain_n();
      v102 = Logger.logObject.getter();
      v174 = static os_log_type_t.default.getter();
      if (sub_1000207B0(v174))
      {
        sub_1000205BC();
        v175 = sub_1000248B0();
        sub_1000163EC(v175);
        sub_10000CB2C(7.2226e-34);
        v176 = Location.id.getter();
        sub_100024244(v176, v177);
        sub_100021030();
        *(v99 + 14) = v23;
        v107 = *(v170 + 8);
        v107(v172, v35);
        *(v99 + 22) = 2082;
        v178 = *(v173 + 24);

        v179 = sub_1000139EC();
        v181 = sub_100078694(v179, v178, v180);

        *(v99 + 24) = v181;
        sub_100074C88();

        _os_log_impl(&_mh_execute_header, v102, v174, "Checking whether a statistics refresh is needed. location=%{private,mask.hash}s uuid=%{public}s", v99, 0x20u);
        sub_100071D30();
        sub_100016BD8();
        sub_100003884();

        v117 = &v374;
LABEL_37:
        v107(*(v117 - 32), v35);
        return;
      }

      v338 = *(v170 + 8);
      v338(v172, v35);
LABEL_97:

      sub_100074C88();

      v339 = v99;
      v340 = v35;
      goto LABEL_100;
    case 0x10u:
      v69 = &v35[*(sub_10022C350(&qword_100CC77A0) + 48)];
      v71 = *v69;
      v70 = v69[1];
      v72 = v367;
      v73 = v365;
      sub_100069724();
      v74();
      v75 = v361;
      (*(v72 + 16))(v361, v73, v35);
      v76 = v369;
      sub_100017B2C();
      swift_retain_n();
      sub_10001168C();
      swift_bridgeObjectRetain_n();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v77, v78))
      {

        v338 = *(v72 + 8);
        v338(v75, v35);

        sub_100017B2C();

        sub_10001168C();
        swift_bridgeObjectRelease_n();
        v339 = v73;
LABEL_95:
        v340 = v35;
        goto LABEL_100;
      }

      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v364 = v71;
      v366 = v80;
      v371[0] = v80;
      *v79 = 141558787;
      *(v79 + 4) = 1752392040;
      *(v79 + 12) = 2081;
      v81 = Location.id.getter();
      sub_100024244(v81, v82);
      sub_100021030();
      *(v79 + 14) = v71;
      v83 = *(v72 + 8);
      v83(v75, v35);
      *(v79 + 22) = 2080;

      v84 = sub_100078694(v364, v70, v371);

      *(v79 + 24) = v84;
      sub_10001168C();
      swift_bridgeObjectRelease_n();
      *(v79 + 32) = 2082;
      v85 = *(v76 + 16);
      v86 = *(v76 + 24);

      v87 = sub_100078694(v85, v86, v371);

      *(v79 + 34) = v87;
      sub_100017B2C();

      _os_log_impl(&_mh_execute_header, v77, v78, "Statistics refresh required. location=%{private,mask.hash}s reason=%s uuid=%{public}s", v79, 0x2Au);
      swift_arrayDestroy();
      sub_100003884();
      sub_100003884();

      v88 = v365;
LABEL_24:
      v138 = v35;
LABEL_54:
      v83(v88, v138);
      return;
    case 0x11u:
      v224 = &v35[*(sub_10022C350(&qword_100CC77A0) + 48)];
      v226 = *v224;
      v225 = v224[1];
      v227 = v366;
      v228 = v367;
      v229 = v368;
      (*(v367 + 32))(v366, v35, v368);
      v230 = v362;
      (*(v228 + 16))(v362, v227, v229);
      v231 = v369;
      sub_100031DF4();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v232 = Logger.logObject.getter();
      v233 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v232, v233))
      {
        v234 = swift_slowAlloc();
        v365 = swift_slowAlloc();
        v371[0] = v365;
        sub_1000045C4(7.2227e-34);
        LODWORD(v364) = v233;
        v235 = Location.id.getter();
        v237 = sub_100024244(v235, v236);

        *(v234 + 14) = v237;
        v238 = *(v228 + 8);
        v238(v230, v229);
        *(v234 + 22) = 2080;

        v239 = sub_100078694(v226, v225, v371);

        *(v234 + 24) = v239;
        swift_bridgeObjectRelease_n();
        *(v234 + 32) = 2082;
        v240 = *(v231 + 16);
        v241 = *(v231 + 24);

        v242 = sub_1000139EC();
        sub_100078694(v242, v241, v243);
        sub_100036D84();
        *(v234 + 34) = v240;
        sub_100031DF4();

        _os_log_impl(&_mh_execute_header, v232, v364, "Statistics refresh is not required. location=%{private,mask.hash}s reason=%s uuid=%{public}s", v234, 0x2Au);
        swift_arrayDestroy();
        sub_100003884();
        sub_100003884();

        v238(v366, v229);
      }

      else
      {

        v338 = *(v228 + 8);
        v338(v230, v229);

        sub_100031DF4();

        swift_bridgeObjectRelease_n();
        v339 = v227;
        v340 = v229;
LABEL_100:
        v338(v339, v340);
      }

      return;
    case 0x12u:
      v294 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v295 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v295 + v294;
      v38 = Logger.logObject.getter();
      v296 = static os_log_type_t.default.getter();
      if (sub_100007E70(v296))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x13u:
      v322 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v323 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v323 + v322;
      v38 = Logger.logObject.getter();
      v324 = static os_log_type_t.default.getter();
      if (sub_100007E70(v324))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x14u:
      v244 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v245 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v245 + v244;
      v38 = Logger.logObject.getter();
      v246 = static os_log_type_t.default.getter();
      if (sub_100007E70(v246))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x15u:
      v268 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v269 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v269 + v268;
      v38 = Logger.logObject.getter();
      v270 = static os_log_type_t.default.getter();
      if (sub_100007E70(v270))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x16u:
      v319 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v320 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v320 + v319;
      v38 = Logger.logObject.getter();
      v321 = static os_log_type_t.default.getter();
      if (sub_100007E70(v321))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x17u:
      v325 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v326 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v326 + v325;
      v38 = Logger.logObject.getter();
      v327 = static os_log_type_t.default.getter();
      if (sub_100007E70(v327))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x18u:
      v158 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v159 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v159 + v158;
      v38 = Logger.logObject.getter();
      v160 = static os_log_type_t.default.getter();
      if (sub_100007E70(v160))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x19u:
      v155 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v156 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v156 + v155;
      v38 = Logger.logObject.getter();
      v157 = static os_log_type_t.default.getter();
      if (sub_100007E70(v157))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Au:
      v334 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v335 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v335 + v334;
      v38 = Logger.logObject.getter();
      v336 = static os_log_type_t.default.getter();
      if (sub_100007E70(v336))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Bu:
      v63 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v64 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v64 + v63;
      v38 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (sub_100007E70(v65))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Cu:
      v328 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v329 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v329 + v328;
      v38 = Logger.logObject.getter();
      v330 = static os_log_type_t.default.getter();
      if (sub_100007E70(v330))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Du:
      v331 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v332 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v332 + v331;
      v38 = Logger.logObject.getter();
      v333 = static os_log_type_t.default.getter();
      if (sub_100007E70(v333))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Eu:
      v313 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v314 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v314 + v313;
      v38 = Logger.logObject.getter();
      v315 = static os_log_type_t.default.getter();
      if (sub_100007E70(v315))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Fu:
      v221 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v222 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v222 + v221;
      v38 = Logger.logObject.getter();
      v223 = static os_log_type_t.default.getter();
      if (sub_100007E70(v223))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x20u:
      v316 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v317 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v317 + v316;
      v38 = Logger.logObject.getter();
      v318 = static os_log_type_t.default.getter();
      if (sub_100007E70(v318))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x21u:
      v95 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v96 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v96 + v95;
      v38 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (sub_100007E70(v97))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x22u:
      v66 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v67 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v67 + v66;
      v38 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (sub_100007E70(v68))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x23u:
      v57 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v58 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v58 + v57;
      v38 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (sub_100007E70(v59))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x24u:
      v60 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v61 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v61 + v60;
      v38 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (sub_100007E70(v62))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x25u:
      v53 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v54 = v369;
      sub_10001C6A8();
      swift_retain_n();
      v55 = v54 + v53;
      v38 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (!sub_100007E70(v56))
      {
        goto LABEL_107;
      }

LABEL_88:
      sub_100018264();
      v337 = sub_10000539C();
      sub_100022E3C(v337);
      sub_1000149F0(4.8751e-34);
      sub_100010460();
      sub_100051F14();
      *(v55 + 4) = v13;
      sub_10001C6A8();

      sub_1000371FC();
      v154 = 12;
LABEL_89:
      _os_log_impl(v149, v150, v151, v152, v153, v154);
      sub_100006F14(v19);
      goto LABEL_90;
    default:
      v36 = *(v35 + 1);
      v37 = v369;
      sub_100074C88();
      swift_retain_n();
      sub_10001168C();
      swift_bridgeObjectRetain_n();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (!sub_1000207B0(v39))
      {
LABEL_60:
        sub_100074C88();

        swift_bridgeObjectRelease_n();
        return;
      }

      v40 = sub_1000205BC();
      v371[0] = sub_10003A270();
      *v40 = 141558531;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;

      v41 = sub_10003BA88();
      v43 = sub_100078694(v41, v36, v42);

      *(v40 + 14) = v43;
      sub_10001168C();
      swift_bridgeObjectRelease_n();
      *(v40 + 22) = 2082;
      v44 = *(v37 + 24);

      v45 = sub_10003BA88();
      v47 = sub_100078694(v45, v44, v46);

      *(v40 + 24) = v47;
      sub_100074C88();

      v48 = "Found no data or available data sets for location in app state because of previous error. We will update. error=%{private,mask.hash}s, uuid=%{public}s";
      v49 = v39;
      v50 = v38;
      v51 = v40;
      v52 = 32;
LABEL_59:
      _os_log_impl(&_mh_execute_header, v50, v49, v48, v51, v52);
      swift_arrayDestroy();
LABEL_90:
      sub_100003884();
LABEL_91:
      sub_100003884();
      goto LABEL_108;
  }
}

uint64_t sub_10005E424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005E46C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005E4B4()
{
  v1 = v0;
  v32 = type metadata accessor for Location.Identifier();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10022C350(&qword_100CD12D8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_10005E46C(&qword_100CA3A40, &type metadata accessor for Location.Identifier);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

void sub_10005E7CC()
{
  sub_100020DF0();
  sub_10002FD38();
  v2 = v1;
  sub_100022718(v1, v3);
  sub_100031B34();
  sub_10001E5DC();
  if (v6)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  sub_10022C350(&qword_100CA3A08);
  v9 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10))
  {
    sub_100020118();
    sub_100013444();
    if (!v12)
    {
      goto LABEL_14;
    }

    v7 = v11;
  }

  if (v8)
  {
    *(*(*v0 + 56) + 8 * v7) = v2;
    sub_1000212EC();
  }

  else
  {
    v15 = sub_10003BD04();
    sub_100087CF4(v15, v16, v17, v2, v18);
    sub_1000212EC();
  }
}

void sub_10005E8B8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v49 = *(v2 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v15 = sub_100014268();
  v18 = sub_100086BAC(v15, v16, v17);
  v48 = v6;
  if (v18)
  {
    v19 = v18;
    v47 = v8;
    swift_endAccess();
    if (qword_100CA2798 != -1)
    {
      sub_10001FB30();
    }

    v20 = type metadata accessor for Logger();
    sub_10000703C(v20, qword_100D90D20);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v51[0] = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      v25 = sub_100014268();
      *(v23 + 14) = sub_100078694(v25, v26, v27);
      _os_log_impl(&_mh_execute_header, v21, v22, "Potentially leaked timer, is there a missing call to stopMonitoringLocationLoad? ID=%{private,mask.hash}s", v23, 0x16u);
      sub_100006F14(v24);
      v6 = v48;
      sub_100003884();
      sub_100003884();
    }

    v8 = v47;
    sub_100004D6C();
    sub_100014268();
    v28 = sub_1000F64AC();
    swift_endAccess();

    [v19 invalidate];
  }

  else
  {
    swift_endAccess();
  }

  Date.init()();
  v29 = *(v3 + 40);
  Date.addingTimeInterval(_:)();
  v47 = *(v8 + 1);
  v47(v11, v6);
  v30 = swift_allocObject();
  v30[2] = a1;
  v30[3] = a2;
  v30[4] = v3;
  v31 = objc_allocWithZone(NSTimer);

  v32 = sub_100087BC8(v14, 0, sub_10089DF1C, v30, 0.0);
  sub_100004D6C();
  v33 = v32;
  swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v3 + 48);
  sub_10005E7CC();
  *(v3 + 48) = v50;
  swift_endAccess();
  UnfairLock.unlock()();
  if (qword_100CA2798 != -1)
  {
    sub_10001FB30();
  }

  v34 = type metadata accessor for Logger();
  sub_10000703C(v34, qword_100D90D20);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v37 = 141558787;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    *(v37 + 14) = sub_100078694(a1, a2, v51);
    *(v37 + 22) = 2048;
    *(v37 + 24) = v29;
    *(v37 + 32) = 2080;
    Date.init()();
    sub_10001D090();
    sub_100066840(v38, v39);
    v40 = v48;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v47(v14, v40);
    v44 = sub_100078694(v41, v43, v51);

    *(v37 + 34) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Starting to monitor location load. ID=%{private,mask.hash}s, Timeout=%f (s), Now=%s", v37, 0x2Au);
    swift_arrayDestroy();
    sub_100003884();
    sub_100003884();
  }

  v45 = [objc_opt_self() mainRunLoop];
  [v45 addTimer:v33 forMode:NSDefaultRunLoopMode];
}

uint64_t sub_10005EE18()
{

  return swift_deallocObject();
}

uint64_t sub_10005EE58()
{
  v0 = type metadata accessor for Domain();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  (*(v10 + 104))(v9 - v8, enum case for Access.protected(_:));
  (*(v2 + 104))(v6, enum case for Domain.standard(_:), v0);
  sub_10022C350(&qword_100CAFFD8);
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D90798 = result;
  return result;
}

uint64_t sub_10005EFF4()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90D20);
  sub_100049CC4();
  return sub_100074FD0();
}

uint64_t sub_10005F04C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v176 = v2;
  v171 = v4;
  v172 = sub_10022C350(&qword_100CADD58);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v177 = v155 - v6;
  v7 = sub_10022C350(&qword_100CADBA0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003848();
  v170 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  v173 = v155 - v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  v175 = v155 - v13;
  v159 = sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v158 = v14;
  __chkstk_darwin(v15);
  sub_100003990(v155 - v16);
  v164 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v163 = v17;
  __chkstk_darwin(v18);
  sub_1000037D8();
  sub_100003990(v20 - v19);
  v162 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v161 = v21;
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_100003990(v24 - v23);
  v156 = sub_10022C350(&qword_100CA7030);
  sub_1000037C4();
  v155[5] = v25;
  __chkstk_darwin(v26);
  sub_100003990(v155 - v27);
  v169 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v168 = v28;
  __chkstk_darwin(v29);
  sub_1000037D8();
  sub_100003990(v31 - v30);
  v32 = sub_10022C350(&qword_100CA37B0);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003848();
  v174 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = v155 - v36;
  v38 = sub_10022C350(&qword_100CA3898);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_100003848();
  v166 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  v43 = v155 - v42;
  type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v179 = v45;
  v180 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_100003990(v155 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v48);
  v178 = v155 - v49;
  active = type metadata accessor for LocationViewerActiveLocationState();
  v51 = sub_100003810(active);
  __chkstk_darwin(v51);
  sub_1000037D8();
  v54 = v53 - v52;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v55);
  sub_1000037D8();
  v58 = (v57 - v56);
  v59 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v60);
  sub_1000037D8();
  v63 = v62 - v61;
  v64 = *(a1 + 64);
  sub_1000950F8(v64 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v62 - v61, type metadata accessor for ViewState);
  sub_1000950F8(v63 + v59[5], v58, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001CDF0();
    return sub_10009F078(v58, type metadata accessor for ViewState.SecondaryViewState);
  }

  v66 = *v58;
  if (*(v63 + v59[9] + 8) == 1)
  {
    v67 = [objc_opt_self() currentDevice];
    [v67 userInterfaceIdiom];

    LOBYTE(v67) = *(v63 + v59[7]);
    sub_10001CDF0();
    if ((v67 & 1) == 0)
    {
    }
  }

  else
  {
    sub_10001CDF0();
  }

  sub_1000950F8(v66 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v54, type metadata accessor for LocationViewerActiveLocationState);
  v68 = v180;
  sub_1000038B4(v54, 1, v180);
  if (v75)
  {
  }

  v69 = *(v179 + 32);
  v155[3] = v179 + 32;
  v155[2] = v69;
  v69(v178, v54, v68);
  v70 = v64 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
  v71 = *(v64 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v72 = Location.Identifier.id.getter();
  sub_1000864C0(v72, v73, v71);

  v74 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000038B4(v37, 1, v74);
  if (v75)
  {
    sub_1000180EC(v37, &qword_100CA37B0);
    v77 = v176;
    v76 = v177;
    v78 = v174;
    goto LABEL_22;
  }

  sub_1001A0D3C();
  sub_1000232A0();
  sub_10009F078(v37, v79);
  v80 = type metadata accessor for WeatherData(0);
  sub_1000038B4(v43, 1, v80);
  v76 = v177;
  v78 = v174;
  if (v81)
  {
    sub_1000180EC(v43, &qword_100CA3898);
    v77 = v176;
    goto LABEL_22;
  }

  v155[0] = v74;
  v155[1] = v66;
  v82 = v168;
  v83 = &v43[*(v80 + 24)];
  v84 = v167;
  v85 = v169;
  (*(v168 + 16))(v167, v83, v169);
  sub_100028BB4();
  sub_10009F078(v43, v86);
  v87 = v155[4];
  WeatherDataModel.hourlyForecast.getter();
  (*(v82 + 8))(v84, v85);
  v88 = v156;
  v89 = Forecast.forecast.getter();
  sub_10000E73C();
  v90(v87, v88);
  v77 = v176;

  v91 = sub_1001A5E78();
  if (!v91)
  {

    goto LABEL_20;
  }

  v88 = v91;
  sub_1001D3704();
  v93 = v92;

  if ((v93 & 1) == 0)
  {
LABEL_20:
    sub_100040690();
    v156 = static OS_dispatch_queue.main.getter();
    v94 = swift_allocObject();
    swift_weakInit();
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    *(v95 + 24) = v89;
    v184 = sub_1007FBC74;
    v185 = v95;
    sub_100014F08();
    sub_100004418(COERCE_DOUBLE(1107296256));
    v182 = v96;
    v183 = &unk_100C6E908;
    v97 = _Block_copy(&aBlock);

    v98 = v160;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100019F88();
    sub_10007DDB8(v99, v100);
    sub_10022C350(&qword_100CB4680);
    sub_1000743E8();
    sub_100049D9C();
    sub_10003C87C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v101 = v156;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v97);

    v78 = v174;
    (*(v163 + 8))(v88, v77);
    v102 = v98;
    v76 = v177;
    (*(v161 + 8))(v102, v162);
    goto LABEL_21;
  }

LABEL_21:
  v74 = v155[0];
LABEL_22:
  v103 = *(v70 + 16);

  v104 = v178;
  v105 = Location.Identifier.id.getter();
  sub_1000864C0(v105, v106, v103);

  sub_1000038B4(v78, 1, v74);
  if (v75)
  {
    sub_1000180EC(v78, &qword_100CA37B0);
    v107 = v175;
    goto LABEL_34;
  }

  v108 = v166;
  sub_1001A0D3C();
  v109 = v108;
  sub_1000232A0();
  sub_10009F078(v78, v110);
  v111 = type metadata accessor for WeatherData(0);
  sub_1000038B4(v109, 1, v111);
  v107 = v175;
  if (v112)
  {
    sub_1000180EC(v109, &qword_100CA3898);
    goto LABEL_34;
  }

  v113 = v168;
  v114 = v109 + *(v111 + 24);
  v115 = v109;
  v116 = v167;
  v117 = v169;
  (*(v168 + 16))(v167, v114, v169);
  sub_100028BB4();
  sub_10009F078(v115, v118);
  v119 = v157;
  WeatherDataModel.dailyForecast.getter();
  (*(v113 + 8))(v116, v117);
  v120 = v159;
  v121 = Forecast.forecast.getter();
  sub_10000E73C();
  v122 = v119;
  v77 = v176;
  v123(v122, v120);

  if (!sub_1001863EC())
  {

    goto LABEL_32;
  }

  sub_1001D374C();
  v125 = v124;

  if ((v125 & 1) == 0)
  {
LABEL_32:
    sub_100040690();
    v174 = static OS_dispatch_queue.main.getter();
    v126 = swift_allocObject();
    swift_weakInit();
    v127 = v179 + 16;
    v128 = v165;
    (*(v179 + 16))(v165, v104, v68);
    v129 = (v47 + ((*(v127 + 64) + 24) & ~*(v127 + 64)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v130 = swift_allocObject();
    *(v130 + 16) = v126;
    sub_100008FB8();
    v131();
    *(v130 + v129) = v121;
    v104 = v178;
    v107 = v175;
    v184 = sub_100185B58;
    v185 = v130;
    sub_100014F08();
    sub_100004418(COERCE_DOUBLE(1107296256));
    v182 = v132;
    v183 = &unk_100C6E8B8;
    v133 = _Block_copy(&aBlock);

    v134 = v160;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100019F88();
    sub_10007DDB8(v135, v136);
    sub_10022C350(&qword_100CB4680);
    sub_1000743E8();
    sub_100049D9C();
    sub_10003C87C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v137 = v174;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v133);

    sub_10000E73C();
    v138 = v77;
    v77 = v176;
    v139(v128, v138);
    sub_10000E73C();
    v140(v134, v162);
    goto LABEL_33;
  }

LABEL_33:
  v76 = v177;
LABEL_34:
  (*(v179 + 16))(v107, v104, v68);
  sub_10001B350(v107, 0, 1, v68);
  v141 = OBJC_IVAR____TtC7Weather27LocationViewerStoreObserver_lastViewedLocationIdentifier;
  swift_beginAccess();
  v142 = *(v172 + 48);
  sub_1000952C4(v107, v76);
  sub_1000952C4(v77 + v141, v76 + v142);
  sub_1000038B4(v76, 1, v68);
  v143 = v173;
  if (v75)
  {
    sub_1000180EC(v107, &qword_100CADBA0);
    sub_1000038B4(v76 + v142, 1, v68);
    if (v75)
    {

      sub_1000180EC(v76, &qword_100CADBA0);
      return (*(v179 + 8))(v104, v68);
    }

    goto LABEL_42;
  }

  sub_1000952C4(v76, v173);
  sub_1000038B4(v76 + v142, 1, v68);
  if (v144)
  {
    sub_1000180EC(v107, &qword_100CADBA0);
    (*(v179 + 8))(v143, v68);
LABEL_42:
    sub_1000180EC(v76, &qword_100CADD58);
    goto LABEL_43;
  }

  v148 = v165;
  sub_100008FB8();
  v149();
  sub_10007DDB8(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
  v150 = v107;
  v151 = dispatch thunk of static Equatable.== infix(_:_:)();
  v152 = *(v179 + 8);
  v152(v148, v180);
  v153 = v150;
  v68 = v180;
  sub_1000180EC(v153, &qword_100CADBA0);
  v154 = v178;
  v152(v143, v68);
  sub_1000180EC(v177, &qword_100CADBA0);
  if (v151)
  {

    return (v152)(v154, v68);
  }

LABEL_43:
  if (qword_100CA29A8 != -1)
  {
    swift_once();
  }

  v186 = Location.Identifier.id.getter();
  v187 = v145;
  sub_10007DDB8(&qword_100CDAF50, type metadata accessor for LocationViewerStoreObserver);
  Updatable.save<A>(setting:value:)();

  v146 = v170;
  sub_100008FB8();
  v147();
  sub_10001B350(v146, 0, 1, v68);
  swift_beginAccess();
  sub_10007DEA8(v146, v77 + v141);
  return swift_endAccess();
}

uint64_t sub_1000601C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000601F8()
{
  v1 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1000602C4()
{

  return swift_deallocObject();
}

uint64_t sub_10006034C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100060394()
{
  sub_10000C778();
  type metadata accessor for OSSignpostID();
  sub_10000548C();
  type metadata accessor for Location();
  sub_1000037C4();

  v0 = sub_1000134A0();
  v1(v0);
  v2 = sub_10001626C();
  v3(v2);
  sub_10006A920();
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1000604AC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  v75 = a8;
  v59 = a7;
  v58 = a6;
  v76 = a5;
  v78 = a4;
  v54 = a3;
  v72 = a13;
  v73 = a11;
  v74 = a12;
  v71 = a10;
  v69 = a14;
  v70 = a9;
  v16 = type metadata accessor for WeatherServiceCaching.Options();
  v67 = *(v16 - 8);
  v68 = v16;
  __chkstk_darwin(v16);
  v66 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Location.Identifier();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CAD030);
  __chkstk_darwin(v19 - 8);
  v65 = &v53 - v20;
  v21 = sub_10022C350(&qword_100CAD038);
  __chkstk_darwin(v21 - 8);
  v62 = &v53 - v22;
  v23 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v23 - 8);
  v60 = &v53 - v24;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v63 = *(Options - 8);
  v64 = Options;
  __chkstk_darwin(Options);
  v61 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v29 = (&v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *a1;
  v30 = a1[1];
  static os_signpost_type_t.end.getter();
  v77 = a2;
  sub_10022C350(&qword_100CA40C8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100A2C3F0;
  v33 = Location.name.getter();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_100035744();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  *v29 = v31;
  v29[1] = v30;
  swift_storeEnumTagMultiPayload();
  sub_100088528(v31, v30);
  sub_10005C1D4(v29);
  sub_100087544();
  v36 = 0;
  v37 = 0;
  if (v30 >= 2)
  {

    v36 = v31;
    v37 = v30;
  }

  v53 = v36;
  v54 = v37;
  v38 = v60;
  Location.timeZone.getter();
  v39 = type metadata accessor for TimeZone();
  sub_10001B350(v38, 0, 1, v39);
  v40 = type metadata accessor for WeatherServiceLocationOptions();
  v41 = v62;
  (*(*(v40 - 8) + 16))(v62, v58, v40);
  sub_10001B350(v41, 0, 1, v40);
  v59 = AppConfiguration.treatmentIDs.getter();
  v42 = v77[33];
  v43 = v77[34];
  sub_1000161C0(v77 + 30, v42);
  v44 = v55;
  Location.identifier.getter();
  v45 = Location.Identifier.id.getter();
  v47 = v46;
  (*(v56 + 8))(v44, v57);
  v48 = v65;
  (*(v43 + 8))(v45, v47, v42, v43);

  v79 = _swiftEmptyArrayStorage;
  sub_1000675AC(&qword_100CE2968, &type metadata accessor for WeatherServiceCaching.Options);
  sub_10022C350(&qword_100CE2970);
  sub_10006768C(&qword_100CE2978, &qword_100CE2970);
  v49 = v66;
  v50 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v51 = v61;
  sub_10007F81C(v53, v54, v38, v41, v49, v59, v48, 0, v61);

  (*(v67 + 8))(v49, v50);
  sub_100018144(v48, &qword_100CAD030);
  sub_100018144(v41, &qword_100CAD038);
  sub_100018144(v38, &qword_100CACE08);
  sub_10007FB34(v78, v75, v70, v71, v73, v74, v51, v72 & 1, v76);
  return (*(v63 + 8))(v51, v64);
}

unint64_t sub_100060C08()
{
  result = qword_100CC77A8;
  if (!qword_100CC77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC77A8);
  }

  return result;
}

void *sub_100060C5C()
{
  sub_10022C350(&qword_100CB6D28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = type metadata accessor for LocationNetworkActivityFlow();
    v4 = &off_100C73348;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v2;
  *(inited + 56) = v3;
  *(inited + 64) = v4;

  sub_100060DE0(inited + 32, &v13, &qword_100CB6D30);
  v10[0] = v13;
  v10[1] = v14;
  v11 = v15;
  if (*(&v14 + 1))
  {
    sub_100013188(v10, v12);
    v5 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10008708C();
      v5 = v8;
    }

    v6 = v5[2];
    if (v6 >= v5[3] >> 1)
    {
      sub_10008708C();
      v5 = v9;
    }

    v5[2] = v6 + 1;
    sub_100013188(v12, &v5[5 * v6 + 4]);
  }

  else
  {
    sub_10003FDF4(v10, &qword_100CB6D30);
    v5 = _swiftEmptyArrayStorage;
  }

  swift_setDeallocating();
  sub_1000885E4();
  return v5;
}

uint64_t sub_100060DE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10022C350(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100060E48()
{
  sub_10000C778();
  v33 = v1;
  v34 = v2;
  v35 = v3;
  v4 = sub_10022C350(&qword_100CC2B20);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = sub_100013E18();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for WeatherNetworkActivity.Domain();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  if (*(v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_rootActivity) && (v21 = *(v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId + 8)) != 0 && (*(v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId) == v33 ? (v22 = v21 == v34) : (v22 = 0), v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    (*(v16 + 104))(v20, enum case for WeatherNetworkActivity.Domain.weather(_:), v14);
    (*(v9 + 16))(v13, v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_weatherLabel, v7);
    v23 = type metadata accessor for UUID();
    sub_100003934();
    sub_10001B350(v24, v25, v26, v23);

    NWActivity.token.getter();
    sub_10004EC84();
    sub_100049C10();
    WeatherNetworkActivity.init(domain:label:token:parentToken:)();

    v27 = type metadata accessor for WeatherNetworkActivity();
    sub_10001B350(v35, 0, 1, v27);
    sub_10000536C();
  }

  else
  {
    type metadata accessor for WeatherNetworkActivity();
    sub_100003934();
    sub_10000536C();

    sub_10001B350(v28, v29, v30, v31);
  }
}

id sub_1000610E4(int a1, id a2)
{
  v2 = [a2 role];
  v3 = objc_allocWithZone(UISceneConfiguration);
  v4 = sub_10006117C(0xD000000000000015, 0x8000000100AC2BA0, v2);
  type metadata accessor for SceneDelegate();
  [v4 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v4;
}

id sub_10006117C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 sessionRole:a3];

  return v6;
}

unint64_t sub_10006126C()
{
  result = qword_100CE0DE0;
  if (!qword_100CE0DE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CE0DE0);
  }

  return result;
}

void sub_1000612C8()
{
  if (!qword_100CE0E10)
  {
    sub_10022E824(&qword_100CA6028);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE0E10);
    }
  }
}

void sub_10006132C()
{
  sub_100080F8C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000613B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_10006143C()
{
  result = qword_100CE0F68;
  if (!qword_100CE0F68)
  {
    sub_10022E824(&qword_100CE0F70);
    sub_10006768C(&qword_100CE0F78, &qword_100CE0F80);
    sub_10006768C(&qword_100CE0F88, &qword_100CE0F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0F68);
  }

  return result;
}

uint64_t sub_100061520(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000201F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100061564()
{
  result = qword_100CA6DF8;
  if (!qword_100CA6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6DF8);
  }

  return result;
}

unint64_t sub_1000615D8()
{
  result = qword_100CB84C0;
  if (!qword_100CB84C0)
  {
    sub_10022E824(&qword_100CB84A8);
    sub_100006F64(&qword_100CB84C8, &qword_100CB84B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB84C0);
  }

  return result;
}

uint64_t sub_1000616AC()
{
  sub_10022E824(&qword_100CB75B8);
  sub_1000813FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006172C()
{
  v0 = sub_100003940();
  sub_10022E824(v0);
  type metadata accessor for ScenePhase();
  sub_10006768C(&qword_100CE11C8, &qword_100CE11C0);
  sub_100061520(&qword_100CE11D0, &type metadata accessor for ScenePhase);
  sub_100008CC8();
  return swift_getOpaqueTypeConformance2();
}

void sub_100061818()
{
  sub_10000749C();
  if (v0 <= 0x3F)
  {
    sub_10006190C(319, &qword_100CB3B28, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_100061960();
      if (v2 <= 0x3F)
      {
        sub_10006190C(319, &qword_100CE0E20, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10006190C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100061960()
{
  if (!qword_100CB0460)
  {
    type metadata accessor for ObservableResolver();
    sub_1000619F4(&qword_100CB0468, &type metadata accessor for ObservableResolver);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB0460);
    }
  }
}

uint64_t sub_1000619F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100061A3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100061AA4()
{
  sub_10008164C(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_10008164C(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1001BA8DC();
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_10008164C(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_100061960();
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_100061D18();
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_100081930();
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_1000819C4();
    if (v10 > 0x3F)
    {
      return v3;
    }

    v3 = sub_100081B54(319, &unk_100CB0488);
    if (v11 > 0x3F)
    {
      return v3;
    }

    v3 = sub_100081B54(319, &qword_100CACC68);
    if (v12 > 0x3F)
    {
      return v3;
    }

    v3 = sub_100081B54(319, &unk_100CACC70);
    if (v13 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t type metadata accessor for LocationViewCollisionOptions()
{
  result = qword_100CE2690;
  if (!qword_100CE2690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100061D18()
{
  if (!qword_100CACC58)
  {
    type metadata accessor for LocationViewCollisionOptions();
    sub_100061DAC(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CACC58);
    }
  }
}

uint64_t sub_100061DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100061DF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100061E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100061EA4()
{
  v0 = type metadata accessor for LocationPreviewContentInput(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_100061F1C()
{
  type metadata accessor for PreviewLocation();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationPreviewModalViewState(319);
    if (v1 <= 0x3F)
    {
      sub_1000630EC(319, &unk_100CAEB40, &type metadata accessor for Location.Identifier);
      if (v2 <= 0x3F)
      {
        sub_1000630EC(319, &unk_100CB0F30, &type metadata accessor for LocationOfInterest);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100062064()
{
  result = type metadata accessor for PreviewLocation();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WeatherConditionBackgroundModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LocationPreviewModalViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for ReportWeatherView()
{
  result = qword_100CA6D10;
  if (!qword_100CA6D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100062180()
{
  sub_100081BC8();
  if (v0 <= 0x3F)
  {
    sub_10006223C();
    if (v1 <= 0x3F)
    {
      sub_100081C3C();
      if (v2 <= 0x3F)
      {
        sub_100081C98();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10006223C()
{
  if (!qword_100CA6D30)
  {
    sub_10022E824(&qword_100CA4968);
    sub_10023FBF4(&qword_100CA4970, &qword_100CA4968);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA6D30);
    }
  }
}

void sub_1000622F0()
{
  if (!qword_100CDB8A0)
  {
    sub_10022E824(&qword_100CA4D70);
    sub_10023FBF4(&qword_100CA4D78, &qword_100CA4D70);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDB8A0);
    }
  }
}

uint64_t sub_1000623B4()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WeatherData(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NewsDataModel();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s11NormalModelVMa()
{
  result = qword_100CDC5A8;
  if (!qword_100CDC5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000624A4()
{
  sub_100081F08(319, &qword_100CCD0F0, _s11NormalModelVMa);
  if (v0 <= 0x3F)
  {
    sub_100081F08(319, &unk_100CCD0F8, _s10PolarModelVMa);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100062550()
{
  if (!qword_100CAA070)
  {
    type metadata accessor for DetailComponentContainerViewModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAA070);
    }
  }
}

void sub_1000625A8()
{
  if (!qword_100CB8A00)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8A00);
    }
  }
}

uint64_t sub_100062618(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticleComponentViewModel(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1000626C0()
{
  result = sub_100062734();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NewsArticleComponentContentViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_100062734()
{
  result = qword_100CAEF10;
  if (!qword_100CAEF10)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100CAEF10);
  }

  return result;
}

uint64_t type metadata accessor for DetailComponentAction()
{
  result = qword_100CBF098;
  if (!qword_100CBF098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000627C8()
{
  if (!qword_100CB8A08)
  {
    type metadata accessor for DetailComponentAction();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8A08);
    }
  }
}

uint64_t sub_100062820(uint64_t a1)
{
  sub_1000822DC();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for URL();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_1000628F4()
{
  sub_100007760();
  if (v0 <= 0x3F)
  {
    sub_100082368(319, &qword_100CB7650, &type metadata accessor for WeatherDescription);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ConditionDetailPlatterViewModel.Body(319);
      if (v2 <= 0x3F)
      {
        sub_100082368(319, &unk_100CE78D8, type metadata accessor for ConditionDetailPlatterViewModel.Body);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100062A28()
{
  type metadata accessor for WeatherDescription();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v1 <= 0x3F)
    {
      sub_100062AFC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for DetailComponentContainerViewModel();
        if (v3 <= 0x3F)
        {
          type metadata accessor for PrecipitationTotalPlatterViewModel();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ConditionDetailDynamicContentIdentifier();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100062AFC()
{
  if (!qword_100CE79A0)
  {
    sub_10022E824(&qword_100CB5CA8);
    sub_100062C08();
    v0 = type metadata accessor for NonEmpty();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE79A0);
    }
  }
}

uint64_t sub_100062B8C()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100062C08()
{
  result = qword_100CE79A8;
  if (!qword_100CE79A8)
  {
    sub_10022E824(&qword_100CB5CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE79A8);
  }

  return result;
}

uint64_t type metadata accessor for ConditionDetailDynamicContentIdentifier()
{
  result = qword_100CE3CB0;
  if (!qword_100CE3CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100062CB8()
{
  type metadata accessor for Location.Identifier();
  if (v0 <= 0x3F)
  {
    sub_100009CCC(319, &qword_100CADC30, &type metadata accessor for Location.Identifier);
    if (v1 <= 0x3F)
    {
      sub_100045548(319, &qword_100CD8B28, &type metadata for LocationViewRowViewModel, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100009CCC(319, &qword_100CD8B30, type metadata accessor for LocationFooterViewModel);
        if (v3 <= 0x3F)
        {
          sub_10000C70C(319, &qword_100CA51B0);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Date();
            if (v5 <= 0x3F)
            {
              sub_100009CCC(319, &qword_100CD8B38, &type metadata accessor for ForegroundEffect);
              if (v6 <= 0x3F)
              {
                sub_1000458BC();
                if (v7 <= 0x3F)
                {
                  sub_100045548(319, &unk_100CD8B48, &type metadata for KnownLocationViewLayout, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_100009CCC(319, &qword_100CB8F20, type metadata accessor for PreviewLocation);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100062F1C()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationOfInterest();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100062FB8()
{
  if (!qword_100CD84E8)
  {
    type metadata accessor for LocationDisplayContext();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD84E8);
    }
  }
}

void sub_100063020()
{
  if (!qword_100CDD940)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDD940);
    }
  }
}

void sub_1000630EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100063140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000631CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CACA20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for WeatherConditionBackgroundTimeDataFactory();
    v5 = swift_allocObject();
    result = sub_100013188(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_100C58978;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100063278@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WeatherEventDescriptionStringBuilder();
  swift_allocObject();
  result = WeatherEventDescriptionStringBuilder.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for WeatherEventDescriptionStringBuilder;
  *a1 = result;
  return result;
}

uint64_t sub_1000632F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StubNotificationsOptInStatusFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C5EC88;
  *a1 = result;
  return result;
}

void sub_100063350(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CC4158);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[8];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[9]) = (a2 - 1);
      return;
    }

    type metadata accessor for LearnMoreAttributorViewModel();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[16];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CA5010);
      v11 = a4[22];
    }
  }

  sub_10001B350(a1 + v11, a2, a2, v10);
}

uint64_t sub_100063470(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  sub_100013188(a2, v3 + 24);
  sub_100013188(a3, v3 + 64);
  return v3;
}

uint64_t sub_1000634B4()
{
  sub_10022C350(&qword_100CCBE40);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBE48);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBE50);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4C18);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4BD8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBE58);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for WeatherConditionBackgroundModelInputFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBE60);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t type metadata accessor for LocationViewerInput()
{
  result = qword_100CA3810;
  if (!qword_100CA3810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100063720()
{
  type metadata accessor for LocationViewerActiveLocationState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LocationsState();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UIInterfaceOrientation(319);
          if (v4 <= 0x3F)
          {
            sub_10009D580();
            if (v5 <= 0x3F)
            {
              sub_10009B604();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100063848()
{
  type metadata accessor for LocationModel();
  if (v0 <= 0x3F)
  {
    sub_10009B65C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ConditionPickerMenuViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_10009D580();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100063928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000639AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v383)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9670);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v381)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v379)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9600);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v377)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9608);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v375)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9610);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v373)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9618);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v371)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9620);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v369)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v367)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9628);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v365)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9630);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v363)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9638);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v361)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v359)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9648);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v357)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9650);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v355)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9658);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v353)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9668);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v351)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9680);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v349)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9688);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v347)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v285 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9690);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v345)
  {
    v5 = sub_10002D7F8(v382, v383);
    v284 = v214;
    v6 = __chkstk_darwin(v5);
    v8 = (v214 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v380, v381);
    v283 = v214;
    v11 = __chkstk_darwin(v10);
    v13 = (v214 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v378, v379);
    v282 = v214;
    v16 = __chkstk_darwin(v15);
    v18 = (v214 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = sub_10002D7F8(v376, v377);
    v281 = v214;
    v21 = __chkstk_darwin(v20);
    v264 = (v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v21);
    v24 = sub_10002D7F8(v374, v375);
    v280 = v214;
    v25 = __chkstk_darwin(v24);
    v263 = (v214 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v25);
    v28 = sub_10002D7F8(v372, v373);
    v279 = v214;
    v29 = __chkstk_darwin(v28);
    v262 = (v214 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v29);
    v32 = sub_10002D7F8(v370, v371);
    v278 = v214;
    v33 = __chkstk_darwin(v32);
    v261 = (v214 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v33);
    v36 = sub_10002D7F8(v368, v369);
    v277 = v214;
    v37 = __chkstk_darwin(v36);
    v260 = (v214 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v37);
    v40 = sub_10002D7F8(v366, v367);
    v276 = v214;
    v41 = __chkstk_darwin(v40);
    v259 = (v214 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v41);
    v44 = sub_10002D7F8(v364, v365);
    v275 = v214;
    v45 = __chkstk_darwin(v44);
    v258 = (v214 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v45);
    v48 = sub_10002D7F8(v362, v363);
    v274 = v214;
    v49 = __chkstk_darwin(v48);
    v257 = (v214 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v49);
    v52 = sub_10002D7F8(v360, v361);
    v273 = v214;
    v53 = __chkstk_darwin(v52);
    v256 = (v214 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v53);
    v56 = sub_10002D7F8(v358, v359);
    v272 = v214;
    v57 = __chkstk_darwin(v56);
    v255 = (v214 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v57);
    v60 = sub_10002D7F8(v356, v357);
    v271 = v214;
    v61 = __chkstk_darwin(v60);
    v254 = (v214 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v61);
    v64 = sub_10002D7F8(v354, v355);
    v270 = v214;
    v65 = __chkstk_darwin(v64);
    v253 = (v214 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v67 + 16))(v65);
    v68 = sub_10002D7F8(v352, v353);
    v269 = v214;
    v69 = __chkstk_darwin(v68);
    v252 = (v214 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v71 + 16))(v69);
    v72 = sub_10002D7F8(v350, v351);
    v268 = v214;
    v73 = __chkstk_darwin(v72);
    v75 = (v214 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v76 + 16))(v75, v73);
    v77 = sub_10002D7F8(v348, v349);
    v267 = v214;
    v78 = __chkstk_darwin(v77);
    v80 = (v214 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v81 + 16))(v80, v78);
    v82 = sub_10002D7F8(v346, v347);
    v266 = v214;
    v83 = __chkstk_darwin(v82);
    v85 = (v214 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v86 + 16))(v85, v83);
    v87 = sub_10002D7F8(v344, v345);
    v265 = v214;
    v88 = __chkstk_darwin(v87);
    v90 = (v214 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v91 + 16))(v90, v88);
    v92 = *v8;
    v93 = *v13;
    v94 = *v18;
    v95 = *v264;
    v96 = *v263;
    v97 = *v261;
    v244 = *v262;
    v245 = v97;
    v98 = *v260;
    v99 = *v259;
    v248 = *v258;
    v100 = *v257;
    v246 = v98;
    v247 = v100;
    v249 = *v256;
    HourPrecipitationComponentViewModelFactory = v99;
    v251 = *v255;
    v254 = *v254;
    v256 = *v253;
    v101 = *v75;
    v102 = *v80;
    v103 = *v85;
    v263 = *v252;
    v264 = v103;
    v104 = *v90;
    v105 = type metadata accessor for AirQualityComponentViewModelFactory();
    v343[4] = &off_100C78BE0;
    v343[3] = v105;
    v343[0] = v92;
    v262 = type metadata accessor for AveragesComponentViewModelFactory();
    v342 = &off_100C58D88;
    v341 = v262;
    v340[0] = v93;
    v261 = type metadata accessor for DailyForecastComponentViewModelFactory();
    v339 = &off_100C54B78;
    v338 = v261;
    v337[0] = v94;
    v260 = type metadata accessor for FeelsLikeComponentViewModelFactory();
    v336 = &off_100C75080;
    v335 = v260;
    v334[0] = v95;
    v259 = type metadata accessor for HourlyForecastComponentViewModelFactory();
    v333 = &off_100C5BDB8;
    v332 = v259;
    v331[0] = v96;
    v258 = type metadata accessor for HumidityComponentViewModelFactory();
    v330 = &off_100C4DCB8;
    v329 = v258;
    v328[0] = v244;
    v257 = type metadata accessor for MapComponentViewModelFactory();
    v327 = &off_100C5E860;
    v326 = v257;
    v325[0] = v245;
    v255 = type metadata accessor for MoonComponentViewModelFactory();
    v324 = &off_100C6AD88;
    v323 = v255;
    v322[0] = v246;
    v252 = type metadata accessor for NewsArticleComponentViewModelFactory();
    v321 = &off_100C60578;
    v320 = v252;
    v319[0] = HourPrecipitationComponentViewModelFactory;
    HourPrecipitationComponentViewModelFactory = type metadata accessor for NextHourPrecipitationComponentViewModelFactory();
    v318 = &off_100C64BF8;
    v317 = HourPrecipitationComponentViewModelFactory;
    v316[0] = v248;
    v248 = type metadata accessor for NotificationsOptInComponentViewModelFactory();
    v315 = &off_100C59388;
    v314 = v248;
    v313[0] = v247;
    v246 = type metadata accessor for NotificationsResubscriptionComponentViewModelFactory();
    v312 = &off_100C50BB0;
    v311 = v246;
    v310[0] = v249;
    v244 = type metadata accessor for PressureComponentViewModelFactory();
    v309 = &off_100C79910;
    v308 = v244;
    v307[0] = v251;
    v243 = type metadata accessor for PrecipitationTotalComponentViewModelFactory();
    v306 = &off_100C68510;
    v305 = v243;
    v304[0] = v254;
    v242 = type metadata accessor for ReportWeatherComponentViewModelFactory();
    v303 = &off_100C6AC68;
    v302 = v242;
    v301[0] = v256;
    v254 = type metadata accessor for SevereAlertComponentViewModelFactory();
    v300 = &off_100C70E70;
    v299 = v254;
    v298[0] = v263;
    v253 = type metadata accessor for SunriseSunsetComponentViewModelFactory();
    v297 = &off_100C50DC8;
    v296 = v253;
    v295[0] = v101;
    v251 = type metadata accessor for UVIndexComponentViewModelFactory();
    v294 = &off_100C6CAA8;
    v293 = v251;
    v292[0] = v102;
    v249 = type metadata accessor for VisibilityComponentViewModelFactory();
    v291 = &off_100C69B48;
    v290 = v249;
    v289[0] = v264;
    v247 = type metadata accessor for WindComponentViewModelFactory();
    v288 = &off_100C64E78;
    v287 = v247;
    v286[0] = v104;
    v264 = type metadata accessor for LocationComponentViewModelFactory();
    v106 = swift_allocObject();
    v107 = sub_10002D7F8(v343, v105);
    v263 = v214;
    v237 = v105;
    v108 = __chkstk_darwin(v107);
    v239 = (v214 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v110 + 16))(v108);
    v111 = sub_10002D7F8(v340, v341);
    v256 = v214;
    v112 = __chkstk_darwin(v111);
    v236 = (v214 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v114 + 16))(v112);
    v115 = sub_10002D7F8(v337, v338);
    v245 = v214;
    v116 = __chkstk_darwin(v115);
    v234 = (v214 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v118 + 16))(v116);
    v119 = sub_10002D7F8(v334, v335);
    v241 = v214;
    v120 = __chkstk_darwin(v119);
    v232 = (v214 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v122 + 16))(v120);
    v123 = sub_10002D7F8(v331, v332);
    v240 = v214;
    v124 = __chkstk_darwin(v123);
    v230 = (v214 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v126 + 16))(v124);
    v127 = sub_10002D7F8(v328, v329);
    v238 = v214;
    v128 = __chkstk_darwin(v127);
    v228 = (v214 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v130 + 16))(v128);
    v131 = sub_10002D7F8(v325, v326);
    v235 = v214;
    v132 = __chkstk_darwin(v131);
    v227 = (v214 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v134 + 16))(v132);
    v135 = sub_10002D7F8(v322, v323);
    v233 = v214;
    v136 = __chkstk_darwin(v135);
    v225 = (v214 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v138 + 16))(v136);
    v139 = sub_10002D7F8(v319, v320);
    v231 = v214;
    v140 = __chkstk_darwin(v139);
    v223 = (v214 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v142 + 16))(v140);
    v143 = sub_10002D7F8(v316, v317);
    v229 = v214;
    v144 = __chkstk_darwin(v143);
    v221 = (v214 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v146 + 16))(v144);
    v147 = sub_10002D7F8(v313, v314);
    v226 = v214;
    v148 = __chkstk_darwin(v147);
    v219 = (v214 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v150 + 16))(v148);
    v151 = sub_10002D7F8(v310, v311);
    v224 = v214;
    v152 = __chkstk_darwin(v151);
    v217 = (v214 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v154 + 16))(v152);
    v155 = sub_10002D7F8(v307, v308);
    v222 = v214;
    v156 = __chkstk_darwin(v155);
    v215 = (v214 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v158 + 16))(v156);
    v159 = sub_10002D7F8(v304, v305);
    v220 = v214;
    v160 = __chkstk_darwin(v159);
    v162 = (v214 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v163 + 16))(v162, v160);
    v164 = sub_10002D7F8(v301, v302);
    v218 = v214;
    v165 = __chkstk_darwin(v164);
    v167 = (v214 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v168 + 16))(v167, v165);
    v169 = sub_10002D7F8(v298, v299);
    v216 = v214;
    v170 = __chkstk_darwin(v169);
    v172 = (v214 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v173 + 16))(v172, v170);
    v174 = sub_10002D7F8(v295, v296);
    v214[3] = v214;
    v175 = __chkstk_darwin(v174);
    v177 = (v214 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v178 + 16))(v177, v175);
    v179 = sub_10002D7F8(v292, v293);
    v214[2] = v214;
    v180 = __chkstk_darwin(v179);
    v182 = (v214 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v183 + 16))(v182, v180);
    v184 = sub_10002D7F8(v289, v290);
    v214[1] = v214;
    v185 = __chkstk_darwin(v184);
    v187 = (v214 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v188 + 16))(v187, v185);
    v189 = sub_10002D7F8(v286, v287);
    v214[0] = v214;
    v190 = __chkstk_darwin(v189);
    v192 = (v214 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v193 + 16))(v192, v190);
    v106[5] = v237;
    v106[6] = &off_100C78BE0;
    v106[10] = v262;
    v106[11] = &off_100C58D88;
    v106[15] = v261;
    v106[16] = &off_100C54B78;
    v106[20] = v260;
    v106[21] = &off_100C75080;
    v106[25] = v259;
    v106[26] = &off_100C5BDB8;
    v106[30] = v258;
    v106[31] = &off_100C4DCB8;
    v106[35] = v257;
    v106[36] = &off_100C5E860;
    v106[40] = v255;
    v106[41] = &off_100C6AD88;
    v106[45] = v252;
    v106[46] = &off_100C60578;
    v106[50] = HourPrecipitationComponentViewModelFactory;
    v106[51] = &off_100C64BF8;
    v106[55] = v248;
    v106[56] = &off_100C59388;
    v106[60] = v246;
    v106[61] = &off_100C50BB0;
    v106[65] = v244;
    v106[66] = &off_100C79910;
    v106[70] = v243;
    v106[71] = &off_100C68510;
    v106[75] = v242;
    v194 = *v236;
    v195 = *v234;
    v196 = *v232;
    v197 = *v230;
    v198 = *v228;
    v199 = *v227;
    v200 = *v225;
    v201 = *v223;
    v202 = *v221;
    v203 = *v219;
    v204 = *v217;
    v205 = *v215;
    v206 = *v162;
    v207 = *v167;
    v208 = *v172;
    v209 = *v177;
    v210 = *v182;
    v211 = *v187;
    v212 = *v192;
    v106[2] = *v239;
    v106[7] = v194;
    v106[12] = v195;
    v106[17] = v196;
    v106[22] = v197;
    v106[27] = v198;
    v106[32] = v199;
    v106[37] = v200;
    v106[42] = v201;
    v106[47] = v202;
    v106[52] = v203;
    v106[57] = v204;
    v106[62] = v205;
    v106[67] = v206;
    v106[76] = &off_100C6AC68;
    v106[72] = v207;
    v106[80] = v254;
    v106[81] = &off_100C70E70;
    v106[77] = v208;
    v106[85] = v253;
    v106[86] = &off_100C50DC8;
    v106[82] = v209;
    v106[90] = v251;
    v106[91] = &off_100C6CAA8;
    v106[87] = v210;
    v106[95] = v249;
    v106[96] = &off_100C69B48;
    v106[92] = v211;
    v106[100] = v247;
    v106[101] = &off_100C64E78;
    v106[97] = v212;
    sub_100006F14(v286);
    sub_100006F14(v289);
    sub_100006F14(v292);
    sub_100006F14(v295);
    sub_100006F14(v298);
    sub_100006F14(v301);
    sub_100006F14(v304);
    sub_100006F14(v307);
    sub_100006F14(v310);
    sub_100006F14(v313);
    sub_100006F14(v316);
    sub_100006F14(v319);
    sub_100006F14(v322);
    sub_100006F14(v325);
    sub_100006F14(v328);
    sub_100006F14(v331);
    sub_100006F14(v334);
    sub_100006F14(v337);
    sub_100006F14(v340);
    sub_100006F14(v343);
    sub_100006F14(v344);
    sub_100006F14(v346);
    sub_100006F14(v348);
    sub_100006F14(v350);
    sub_100006F14(v352);
    sub_100006F14(v354);
    sub_100006F14(v356);
    sub_100006F14(v358);
    sub_100006F14(v360);
    sub_100006F14(v362);
    sub_100006F14(v364);
    sub_100006F14(v366);
    sub_100006F14(v368);
    sub_100006F14(v370);
    sub_100006F14(v372);
    sub_100006F14(v374);
    sub_100006F14(v376);
    sub_100006F14(v378);
    sub_100006F14(v380);
    result = sub_100006F14(v382);
    v213 = v285;
    v285[3] = v264;
    v213[4] = &off_100C55358;
    *v213 = v106;
    return result;
  }

LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_100066124()
{
  result = qword_100CC96B8;
  if (!qword_100CC96B8)
  {
    sub_10022E824(&qword_100CC96B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC96B8);
  }

  return result;
}

uint64_t type metadata accessor for SevereAlertComponentViewModelFactory()
{
  result = qword_100CDE718;
  if (!qword_100CDE718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100066220()
{
  result = type metadata accessor for SevereAlertComponentStringsBuilder();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for SunriseSunsetComponentViewModelFactory()
{
  result = qword_100CB11E8;
  if (!qword_100CB11E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000662FC(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = type metadata accessor for LocationViewDescriptor();
  v35[3] = v6;
  v35[4] = &off_100C76318;
  v35[0] = a1;
  v7 = type metadata accessor for LocationViewComponentFactory();
  v33 = v7;
  v34 = &off_100C74BA8;
  v32[0] = a2;
  v30 = &type metadata for MapOverlayKindProvider;
  v31 = &off_100C5C7B0;
  v29[0] = swift_allocObject();
  memcpy((v29[0] + 16), a3, 0x50uLL);
  type metadata accessor for StandardLocationViewConfigurationFactory();
  v8 = swift_allocObject();
  v9 = sub_10002D7F8(v35, v6);
  v10 = __chkstk_darwin(v9);
  v12 = (&v29[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = sub_10002D7F8(v32, v33);
  v15 = __chkstk_darwin(v14);
  v17 = (&v29[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = sub_10002D7F8(v29, v30);
  v20 = __chkstk_darwin(v19);
  v22 = &v29[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = *v12;
  v25 = *v17;
  v8[5] = v6;
  v8[6] = &off_100C76318;
  v8[2] = v24;
  v8[10] = v7;
  v8[11] = &off_100C74BA8;
  v8[7] = v25;
  v8[15] = &type metadata for MapOverlayKindProvider;
  v8[16] = &off_100C5C7B0;
  v26 = swift_allocObject();
  v8[12] = v26;
  memcpy((v26 + 16), v22, 0x50uLL);
  sub_100006F14(v29);
  sub_100006F14(v32);
  sub_100006F14(v35);
  return v8;
}

uint64_t sub_1000666A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA730);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for AddLocationContextHelper;
    a2[4] = &off_100C59608;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100066754()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000667B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000667F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100066840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100066888@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100047F80();
  *a1 = result;
  return result;
}

uint64_t sub_1000668DC()
{
  v0 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = (v5 - v4);
  sub_100040690();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v0);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v0);
  if (v7)
  {
    __chkstk_darwin(result);
    v12[-4] = &type metadata for MainState;
    v9 = type metadata accessor for MainAction();
    v12[-3] = v9;
    v10 = sub_100007908();
    v12[-2] = v10;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12[-4] = &type metadata for MainState;
    v12[-3] = v9;
    v12[-2] = v10;
    swift_getKeyPath();
    sub_100003940();
    static Published.subscript.getter();

    return v12[1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_100066AC4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100066AD8@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  a2[3] = *a1;
  a2[4] = sub_10004802C();
  *a2 = a1;
}

uint64_t sub_100066B44()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_100066B98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100066BF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100066C58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_100066CDC()
{
  sub_100048518();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100066DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100066E08()
{
  result = qword_100CA6BA0;
  if (!qword_100CA6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6BA0);
  }

  return result;
}

unint64_t sub_100066E5C()
{
  result = qword_100CE5870;
  if (!qword_100CE5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE5870);
  }

  return result;
}

uint64_t sub_100066EB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for InteractionDonationManager();
    swift_allocObject();
    result = sub_100066FC8(v5, v6, v7, v8);
    a2[3] = v4;
    a2[4] = &off_100C5ECE0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for InteractionDonationManager()
{
  result = qword_100CC6920;
  if (!qword_100CC6920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100066FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  sub_1000037D8();
  v13 = OBJC_IVAR____TtC7Weather26InteractionDonationManager_previousDonatedLocationIdentifier;
  v14 = type metadata accessor for Location.Identifier();
  sub_10001B350(v4 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtC7Weather26InteractionDonationManager_queue;
  sub_10000C70C(0, &qword_100CB4670);
  static DispatchQoS.utility.getter();
  sub_100067444(&qword_100CA2E50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58);
  sub_100067638(&qword_100CA2E60, &qword_100CA2E58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *(v4 + v16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_10006724C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100067294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000672DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100067324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006736C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000673B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000673FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100067444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006748C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000674D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006751C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100067564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000675AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000201F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000675F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100067638(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006768C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2);
    sub_1000201F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100067704()
{
  result = qword_100CE3A80;
  if (!qword_100CE3A80)
  {
    type metadata accessor for WeatherConditionBackgroundManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE3A80);
  }

  return result;
}

uint64_t type metadata accessor for GCDSerialDispatchQueueFactory()
{
  result = qword_100CD6EF0;
  if (!qword_100CD6EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000677A8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for GCDSerialDispatchQueueFactory();
  a1[4] = &off_100C6A930;
  v2 = sub_100042FB0(a1);
  result = static DispatchQoS.utility.getter();
  *v2 = 0xD000000000000011;
  v2[1] = 0x8000000100ABB700;
  return result;
}

uint64_t sub_10006781C()
{
  result = type metadata accessor for DispatchQoS();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WeatherDataVisibleLocationLoadingTelemetry()
{
  result = qword_100CEF290;
  if (!qword_100CEF290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000678E4()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    sub_10000BB3C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000679D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = type metadata accessor for GCDSerialDispatchQueueFactory();
  v19 = &off_100C6A930;
  v8 = sub_100042FB0(v17);
  sub_10004911C(a3, v8);
  v9 = OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_logger;
  if (qword_100CA27A0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_10000703C(v10, qword_100D90D38);
  (*(*(v10 - 8) + 16))(a4 + v9, v11, v10);
  v12 = OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_startLoadTime;
  v13 = type metadata accessor for Date();
  sub_10001B350(a4 + v12, 1, 1, v13);
  v14 = (a4 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_lastAssumedVisibleLocationID);
  *v14 = 0;
  v14[1] = 0;
  *(a4 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_loadBeganDuringObservation) = 0;
  sub_100035B30(a1, a4 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_backend);
  sub_100035B30(a2, a4 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_clock);
  sub_1000161C0(v17, v18);
  sub_100067B88(0xD000000000000022, 0x8000000100ACF870, v16);
  sub_100006F14(a2);
  sub_100006F14(a1);
  sub_100013188(v16, a4 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_queue);
  sub_100006F14(v17);
  return a4;
}

uint64_t sub_100067B88@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[1];
  v19 = *v3;
  v20 = v12;

  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.append(_:)(v14);
  v15 = v19;
  v16 = v20;
  v17 = type metadata accessor for GCDSerialDispatchQueueFactory();
  (*(v9 + 16))(v11, v4 + *(v17 + 20), v8);
  result = sub_1000491E4(v15, v16, v11);
  a3[3] = &type metadata for GCDSerialDispatchQueue;
  a3[4] = &off_100C782B0;
  *a3 = result;
  return result;
}

unint64_t sub_100067CC8()
{
  result = qword_100CA2E60;
  if (!qword_100CA2E60)
  {
    sub_10022E824(&qword_100CA2E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA2E60);
  }

  return result;
}

uint64_t sub_100067D2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE208);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4918);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = type metadata accessor for LocationDataProvider();
    swift_allocObject();
    result = sub_100047974(&v10, &v8, &v6);
    a2[3] = v5;
    a2[4] = &off_100C4A898;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_100067E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  sub_10000C778();
  v25 = v24;
  v47 = v26;
  v48 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v45 = v34;
  v46 = v35;
  v44 = v36;
  v37 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v37);
  sub_1000037D8();
  sub_10022C350(&qword_100CA2D40);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100A2C3F0;
  static UnfairLock.Options.dataSynchronization.getter();
  *&v49[0] = v38;
  sub_100068374(&qword_100CA2D48, &type metadata accessor for UnfairLock.Options);
  sub_10022C350(&qword_100CA2D50);
  sub_100006F64(&qword_100CA2D58, &qword_100CA2D50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v24 + 328) = UnfairLock.init(options:)();
  *(v24 + 336) = 0;
  v39 = OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_startMethod;
  v40 = enum case for StartMethod.unknown(_:);
  type metadata accessor for StartMethod();
  sub_1000037E8();
  (*(v41 + 104))(&v25[v39], v40);
  *&v25[OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_lastPushedTemperatureUnit] = 0;
  *(v25 + 3) = v45;
  *(v25 + 4) = v33;

  *(v25 + 2) = SessionManager.tracker.getter();
  *(v25 + 5) = v44;
  sub_100035B30(v31, (v25 + 48));
  sub_100035B30(v46, (v25 + 88));
  sub_100035B30(v29, (v25 + 128));
  sub_100035B30(v47, (v25 + 168));
  sub_100035B30(v48, (v25 + 208));
  sub_100035B30(a21, (v25 + 248));
  sub_100035B30(a22, (v25 + 288));
  v25[OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_purpose] = a23;
  sub_100035B30(a24, &v25[OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_privacySampler]);
  v42 = v44;
  sub_1000683BC();
  SessionManager.transaction(_:)();
  sub_100049478();
  sub_100068C38();
  sub_10004A100();
  sub_10004B33C();
  sub_10004B3D8();
  sub_100069188();
  sub_1000161C0(v31, v31[3]);
  sub_100068374(&qword_100CB53C0, type metadata accessor for SessionEventsAndDataCoordinator);

  dispatch thunk of IdentityServiceType.addObserver(_:)();

  if (a23 == 2)
  {
    sub_100035B30(a21, v49);
    v43 = swift_allocObject();
    sub_10003E2A0(v49, v43 + 16);
    *(v43 + 56) = v25;

    Tracker.onSessionChange(block:)();

    SessionObserver.dispose(on:)();
  }

  else
  {
  }

  sub_100006F14(a24);
  sub_100006F14(a22);
  sub_100006F14(a21);
  sub_100006F14(v48);
  sub_100006F14(v47);
  sub_100006F14(v29);
  sub_100006F14(v46);
  sub_100006F14(v31);
  sub_10000536C();
}

uint64_t sub_100068334()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100068374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000683BC()
{
  v0 = type metadata accessor for AppData();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  Client.version.getter();
  Client.buildNumber.getter();
  AppData.init(appVersion:appBuildNumber:)();
  (*(v1 + 16))(v4, v6, v0);
  v7 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v8 = swift_allocObject();
  (*(v1 + 32))(v8 + v7, v4, v0);
  SessionManager.transaction(_:)();

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_100068580()
{
  v1 = v0;
  v2 = type metadata accessor for InterfaceOrientation();
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeviceOrientation();
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OrientationData();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v34 = v11;
  v35 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 orientation];

  sub_1000689B0(v15, v7);
  v16 = [objc_opt_self() sharedApplication];
  v17 = [v16 connectedScenes];

  sub_10000C70C(0, &qword_100CB5418);
  sub_100068A3C(&qword_100CB5420, &qword_100CB5418);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100068A8C();
  v19 = v18;

  if (v19)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    v21 = v20 == 0;
    if (v20)
    {
      v22 = [v20 interfaceOrientation];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v21 = 1;
  }

  sub_10004A074(v22, v21, v4);
  OrientationData.init(deviceOrientation:interfaceOrientation:)();
  v33 = *(v1 + 32);
  SessionManager.tracker.getter();
  v32 = *(v9 + 16);
  v23 = v35;
  v32(v35, v13, v8);
  v24 = *(v9 + 80);
  v30 = v13;
  v25 = (v24 + 16) & ~v24;
  v26 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v26 + v25, v23, v8);
  Tracker.transaction(block:)();

  v27 = v30;
  v32(v23, v30, v8);
  v28 = swift_allocObject();
  v31(v28 + v25, v23, v8);
  SessionManager.transaction(_:)();

  return (*(v9 + 8))(v27, v8);
}

uint64_t sub_1000689B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DeviceOrientation();
  v5 = *(*(v4 - 8) + 104);
  if (a1 > 6)
  {
    v6 = &enum case for DeviceOrientation.unknown(_:);
  }

  else
  {
    v6 = *(&off_100C55FA8 + a1);
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_100068A3C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000C70C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100068A8C()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = sub_100068B50(v2);
  v6 = v5;
  v8 = v7;
  v9 = sub_100068BB0(v3);
  v11 = v10;
  v13 = v12;
  v14 = sub_100068C04(v4, v6, v8 & 1, v9, v10, v12 & 1);
  sub_100049534(v9, v11, v13 & 1);
  v15 = sub_10004979C();
  if ((v14 & 1) == 0)
  {
    sub_1000A6CEC(v15, v16, v17, v3, v1);
    v15 = sub_10004979C();
  }

  sub_100049534(v15, v16, v17);
  sub_10000536C();
}

uint64_t sub_100068B50(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t sub_100068BB0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

uint64_t sub_100068C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_100068C38()
{
  v0 = sub_10022C350(&qword_100CB5400);
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = &v23 - v1;
  v2 = type metadata accessor for DebugData();
  v23 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Settings.WeatherAnalytics.Debugging.sessionName.getter();
  sub_100068374(&qword_100CB5408, type metadata accessor for SessionEventsAndDataCoordinator);
  Configurable.setting<A>(_:)();

  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10002D5A4();
  v12 = StringProtocol.trimmingCharacters(in:)();
  v14 = v13;
  (*(v9 + 8))(v11, v8);

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
  }

  DebugData.init(name:)();
  v16 = v23;
  (*(v23 + 16))(v5, v7, v2);
  sub_100068374(&qword_100CB5410, &type metadata accessor for DebugData);
  v17 = v24;
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0);
  v18 = type metadata accessor for DataEventTrait();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100A2C3F0;
  (*(v19 + 104))(v21 + v20, enum case for DataEventTrait.unique(_:), v18);
  SessionManager.push<A>(_:traits:file:line:)();

  (*(v25 + 8))(v17, v26);
  return (*(v16 + 8))(v7, v2);
}

uint64_t sub_1000690C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006912C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100069188()
{
  v1 = type metadata accessor for UserIdentity();
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_purpose))
  {
    sub_1000161C0((v0 + 48), *(v0 + 72));
    dispatch thunk of IdentityServiceType.identity.getter();
    v6 = UserIdentity.privateIdentifier.getter();
    v8 = v7;
    (*(v2 + 8))(v5, v1);
    SessionManager.tracker.getter();
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v8;
    v9[4] = v0;

    Tracker.transaction(block:)();
  }

  return result;
}

uint64_t sub_1000692F8()
{

  return swift_deallocObject();
}

uint64_t sub_100069338(uint64_t a1)
{
  *(v1 - 208) = a1;

  return String.LocalizationValue.init(stringLiteral:)();
}

uint64_t sub_100069384()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100069408()
{

  return dispatch thunk of Collection.subscript.read();
}

uint64_t sub_10006942C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 504) + a1;

  return sub_1001B3B30(v4, v2);
}

uint64_t sub_1000694A0()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void sub_1000694C4()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
  *(v2 - 144) = _NSConcreteStackBlock;
}

_OWORD *sub_10006953C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  v18 = (*(v15 + 56) + 32 * v16);

  return sub_100166170(v18, &a15);
}

void sub_100069558(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = 0;
}

uint64_t sub_1000695A4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000695EC()
{

  return static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();
}

uint64_t sub_100069614()
{

  return type metadata accessor for AutomationInfoProperty();
}

uint64_t sub_100069630()
{

  return sub_10004F7D8(v0, type metadata accessor for EnvironmentState);
}

uint64_t sub_1000696E4()
{

  return UIListContentConfiguration.text.setter();
}

uint64_t sub_10006974C()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10006979C()
{

  return sub_10009EF70(v1, v0);
}

uint64_t sub_100069800()
{

  return Optional<A>.write(to:)();
}

uint64_t sub_1000698BC()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000698E4()
{

  return sub_100703000();
}

uint64_t sub_100069960()
{
  result = *(v1 - 96);
  *(v1 - 120) = v0;
  return result;
}

id sub_1000699A0()
{
  v3 = *(v1 + 3744);

  return [v0 v3];
}

uint64_t sub_1000699FC()
{
  sub_100006F14(v0);
}

uint64_t sub_100069A30()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100069A6C()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100069A94()
{

  return swift_getWitnessTable();
}

uint64_t sub_100069AB4(uint64_t a1)
{
  sub_100024D10(a1, 1, v1);
}

uint64_t sub_100069B2C()
{
}

uint64_t sub_100069BAC()
{

  return type metadata accessor for MainViewModel.ModalModule(0);
}

void sub_100069C80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100069CDC()
{

  return swift_beginAccess();
}

uint64_t sub_100069D50(uint64_t a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CBE1B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    sub_100013188(&v3, v5);
    sub_1000161C0(v5, v5[3]);
    dispatch thunk of ScenePhaseManagerType.addObserver(_:)();
    sub_100006F14(&v3);
    return sub_100006F14(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100069E18(void *a1, void *a2)
{
  sub_1000161C0(a1, a1[3]);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for SessionScenePhaseObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10004306C(&qword_100CBE1F8, type metadata accessor for SessionScenePhaseObserver);
    dispatch thunk of ScenePhaseManagerType.addObserver(_:)();

    return sub_100006F14(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100069EF8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1478);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE1A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v4 = sub_10002D7F8(v18, v19);
    __chkstk_darwin(v4);
    v6 = (&v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    active = type metadata accessor for ActiveUserAnalyticsManager();
    v17[3] = active;
    v17[4] = &off_100C67820;
    v17[0] = v8;
    type metadata accessor for SessionScenePhaseObserver();
    v10 = swift_allocObject();
    v11 = sub_10002D7F8(v17, active);
    __chkstk_darwin(v11);
    v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v10[11] = active;
    v10[12] = &off_100C67820;
    v10[8] = v15;
    v10[2] = v3;
    sub_100013188(&v20, (v10 + 3));
    sub_100006F14(v17);
    sub_100006F14(v18);
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10006A19C(void *a1)
{
  v2 = type metadata accessor for TimeDurationGranularity();
  __chkstk_darwin(v2 - 8);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB14B8);
  __chkstk_darwin(v4 - 8);
  v25 = &v22 - v5;
  v6 = sub_10022C350(&qword_100CB14C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SessionManager.Options();
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SessionManagerConfiguration();
  v23 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB14C8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100A2D320;
  static SessionManager.Options.gracefulNoSessionEventSubmission.getter();
  static SessionManager.Options.gracefulEventCreation.getter();
  v28[0] = v15;
  sub_10004306C(&qword_100CB14D0, &type metadata accessor for SessionManager.Options);
  sub_10022C350(&qword_100CB14D8);
  sub_10004BFC4();
  v24 = v11;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for FlushProcessor();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v22 = v12;
  sub_1000161C0(a1, a1[3]);
  v17 = type metadata accessor for TimestampJitter();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v8, 1, v17);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v28[3] = v17;
  v28[4] = &protocol witness table for TimestampJitter;
  v18 = sub_100042FB0(v28);
  (*(*(v17 - 8) + 32))(v18, v8, v17);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  v19 = type metadata accessor for DiagnosticsConsentProvider();
  v20 = v25;
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v20, 1, v19);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  static TimeDurationGranularity.milliseconds.getter();
  SessionManagerConfiguration.init(options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:diagnosticsConsentProvider:timeDurationGranularity:)();
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v21 = AppSessionManager.createSessionManager(with:)();

    (*(v23 + 8))(v14, v22);
    return v21;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10006A6C0()
{

  return Hasher.init(_seed:)();
}

void sub_10006A6D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void sub_10006A740()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
}

uint64_t sub_10006A750()
{

  return sub_100095588();
}

uint64_t sub_10006A76C()
{

  return sub_100095048();
}

uint64_t sub_10006A7E0()
{
  v2 = *(v0 - 328);

  return sub_100533554(v2, type metadata accessor for WeatherConditionBackgroundTimeData);
}

uint64_t sub_10006A820()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10006A850()
{

  return Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
}

uint64_t sub_10006A888@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  return sub_1000E4DF8(v2, v3);
}

__n128 sub_10006A944(__n128 *a1)
{
  result = *(v1 - 160);
  a1[1] = result;
  return result;
}

uint64_t sub_10006A954(uint64_t a1)
{

  return sub_100024D10(a1, 1, v1);
}

uint64_t sub_10006A978()
{

  return State.wrappedValue.getter();
}

uint64_t sub_10006A9AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_10006AA44();
  v5 = *(*(v2 + 24) + 16);
  sub_10004CA0C(v5);
  v6 = *(v2 + 24);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v2 + 24) = v6;
  swift_endAccess();
}

uint64_t sub_10006AA5C(uint64_t a1, void *a2)
{
  v3 = sub_10022C350(&qword_100CB14A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  sub_1000161C0(a2, a2[3]);
  v6 = type metadata accessor for Configuration();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = Configuration.isEnabled.getter();
    result = (*(*(v6 - 8) + 8))(v5, v6);
    if (v8)
    {
      sub_100035B30(a2, v11);
      v9 = swift_allocObject();
      sub_100013188(v11, v9 + 16);
      type metadata accessor for LazyEventProcessor();
      swift_allocObject();
      LazyEventProcessor.init(underlyingProcessorProvider:)();
      SessionManager.processorManager.getter();

      ProcessorManager.add(eventProcessor:)();
    }
  }

  return result;
}

uint64_t sub_10006AC20()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10006AC84(uint64_t a1)
{
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_100035B30(a1, v5);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  sub_100013188(v5, v3 + 24);

  sub_10022C350(&qword_100CB2FD8);
  AppDependencyManager.add<A>(key:dependency:)();

  return sub_10006B068(v6);
}

uint64_t sub_10006AD64()
{

  sub_100006F14(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10006ADA4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB5450);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  (*(v4 + 16))(v6, a2, v3);
  sub_100068374(&qword_100CB5458, &type metadata accessor for AppData);
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0);
  v11 = type metadata accessor for DataEventTrait();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100A2C3F0;
  (*(v12 + 104))(v14 + v13, enum case for DataEventTrait.unique(_:), v11);
  AccessSessionManager.push<A>(_:traits:file:line:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10006B068(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB2FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B0D0(void (*a1)(void))
{
  a1(0);
  sub_1000037E8();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

double sub_10006B158()
{
  qword_100D8FBB0 = 0;
  result = 0.0;
  xmmword_100D8FB90 = 0u;
  unk_100D8FBA0 = 0u;
  return result;
}

uint64_t sub_10006B170(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1000038D8();
  v34 = type metadata accessor for StartupTaskExecutionPhase();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005888();
  sub_10022C350(&qword_100CA40C8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A2C3F0;
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  v37 = [v2 applicationState];
  type metadata accessor for State(0);
  _print_unlocked<A, B>(_:_:)();
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100035744();
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  sub_10000C70C(0, &qword_100CA2E40);
  v10 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  sub_1000167F8();
  os_log(_:dso:log:type:_:)();

  sub_1003558E0(v35);
  sub_1000161C0(v35, v36);
  if (a2)
  {
    type metadata accessor for LaunchOptionsKey(0);
    type metadata accessor for ApplicationStateLaunchOptionKey();
    sub_1000058A0();
    sub_100015F40(v11, 255, v12);
    sub_100015F40(&qword_100CAF488, 255, &type metadata accessor for ApplicationStateLaunchOptionKey);
    Dictionary.mapKeysAndValues<A, B>(_:)();
  }

  dispatch thunk of ApplicationStateManagerType.applicationDidFinishLaunching(withOptions:)();

  sub_100006F14(v35);
  v13 = [objc_opt_self() defaultCenter];
  sub_10000827C(v13, v14, v15, "didBecomeKeyWindow", UIWindowDidBecomeKeyNotification);

  v16 = sub_1000496E8();
  sub_10000827C(v16, v17, v18, "willEnterForeground", UIApplicationWillEnterForegroundNotification);

  v19 = sub_1000496E8();
  sub_10000827C(v19, v20, v21, "didEnterBackground", UIApplicationDidEnterBackgroundNotification);

  v22 = sub_1000496E8();
  sub_10000827C(v22, v23, v24, "willTerminate", UIApplicationWillTerminateNotification);

  v25 = sub_1000496E8();
  sub_10000827C(v25, v26, v27, "didBecomeActive", UIApplicationDidBecomeActiveNotification);

  v28 = sub_1000496E8();
  sub_10000827C(v28, v29, v30, "willResignActive", UIApplicationWillResignActiveNotification);

  Current = CFAbsoluteTimeGetCurrent();
  v32 = &v4[OBJC_IVAR____TtC7Weather11AppDelegate_appLaunchTime];
  *v32 = Current;
  *(v32 + 8) = 0;
  sub_1000359CC(v35);
  sub_1000161C0(v35, v36);
  sub_1000038D8();
  type metadata accessor for StartupTaskManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_100006F14(v35);
    if (a2)
    {
      Dictionary<>.applicationStateLaunchOptions.getter();
    }

    (*(v7 + 104))(v3, enum case for StartupTaskExecutionPhase.didFinishLaunching(_:), v34);
    StartupTaskManager.startAllTasks(launchOptions:phase:)();

    (*(v7 + 8))(v3, v34);
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006B628(uint64_t a1)
{
  v22 = type metadata accessor for Container.TestSuite();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v21 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Scope();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStateMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7 = enum case for Scope.containerSingleton(_:);
  v8 = *(v4 + 104);
  v8(v6, enum case for Scope.containerSingleton(_:), v3);
  Definition.inScope(_:)();

  v9 = *(v4 + 8);
  v9(v6, v3);
  type metadata accessor for AppConfigurationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for AppLaunchCountMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for CountryCodeConfigurationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for CurrentLocationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for LocationOfInterestMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v10 = enum case for Scope.singleton(_:);
  v8(v6, enum case for Scope.singleton(_:), v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for LocaleMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for WindowFocusMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for LocationAuthorizationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for NetworkConnectivityMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for NotificationAuthorizationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v10, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for NotificationsOptInMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for NotificationSubscriptionMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v19 = v10;
  v8(v6, v10, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for AccessibilitySettingsMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for PredictedLocationAvailabilityMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v10, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for ReportWeatherMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for SavedLocationsMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for SettingsMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v18 = v7;
  v8(v6, v7, v3);
  v17 = v8;
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for SidebarVisibilityMonitor();
  v16 = a1;
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  sub_10022C350(&qword_100CE9F58);
  RegistrationContainer.register<A>(_:name:factory:)();
  v11 = v20;
  v12 = v21;
  v13 = v22;
  (*(v20 + 104))(v21, enum case for Container.TestSuite.performance(_:), v22);
  Definition.whenTesting(_:_:)();

  (*(v11 + 8))(v12, v13);
  v14 = v17;
  v17(v6, v18, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for UserNotificationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v14(v6, v19, v3);
  Definition.inScope(_:)();

  return (v9)(v6, v3);
}

uint64_t type metadata accessor for SettingsMonitor()
{
  result = qword_100CDA620;
  if (!qword_100CDA620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C2F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10006C34C()
{
  sub_10006C2F8(319, &qword_100CB65D8, &type metadata accessor for UnitConfiguration.Temperature);
  if (v0 <= 0x3F)
  {
    sub_10006C2F8(319, &qword_100CDA630, &type metadata accessor for UnitConfiguration.Distance);
    if (v1 <= 0x3F)
    {
      sub_10006C2F8(319, &qword_100CDA638, &type metadata accessor for UnitConfiguration.WindSpeed);
      if (v2 <= 0x3F)
      {
        sub_10006C2F8(319, &qword_100CDA640, &type metadata accessor for UnitConfiguration.Pressure);
        if (v3 <= 0x3F)
        {
          sub_10006C2F8(319, &unk_100CDA648, &type metadata accessor for UnitConfiguration.Precipitation);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_10006C594(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void), void (*a5)(_BYTE *, uint64_t))
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v14)
  {
    v10 = v15;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(a2);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v13)
    {
      a4(0);
      v11 = swift_allocObject();
      *(v11 + 16) = v14;
      *(v11 + 24) = v10;
      a5(v12, v11 + 32);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10006C6A8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    type metadata accessor for CurrentLocationMonitor();
    swift_allocObject();
    return sub_10006C854(v11, v12, &v9, v5, v6, v7, v8, &v3);
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_10006C854(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  sub_10000C70C(0, &qword_100CA2E40);
  v8[18] = OS_os_log.init(subsystem:category:)();
  v8[2] = a1;
  v8[3] = a2;
  sub_100013188(a3, (v8 + 4));
  v8[9] = a4;
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  sub_100013188(a8, (v8 + 13));
  return v8;
}

uint64_t sub_10006C934(void *a1, void (*a2)(void), uint64_t (*a3)())
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2(0);
    swift_allocObject();
    return a3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006CA14(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Locale();
  sub_10001EE84(v5);
  v6 = type metadata accessor for UnitConfiguration.Temperature();
  sub_10001EE84(v6);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_10006CA94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10006CADC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10006CB24(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10006CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  v18 = &v9[OBJC_IVAR____TtC7Weather28LocationAuthorizationMonitor_dispatcher];
  *v18 = a1;
  *(v18 + 1) = a2;
  sub_100035B30(a3, &v9[OBJC_IVAR____TtC7Weather28LocationAuthorizationMonitor_locationManager]);
  v19 = &v9[OBJC_IVAR____TtC7Weather28LocationAuthorizationMonitor_locationsOfInterestUpdater];
  *v19 = a4;
  *(v19 + 1) = a5;
  v20 = &v9[OBJC_IVAR____TtC7Weather28LocationAuthorizationMonitor_stateReader];
  *v20 = a6;
  *(v20 + 1) = a7;
  *(v20 + 2) = a8;
  *(v20 + 3) = a9;
  v24.receiver = v9;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, "init");
  sub_100006F14(a3);
  return v21;
}

void *sub_10006CC50(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C70C(0, &qword_100CA2E40);
  v7[13] = OS_os_log.init(subsystem:category:)();
  v7[2] = a1;
  v7[3] = a2;
  sub_100013188(a3, (v7 + 4));
  v7[9] = a4;
  v7[10] = a5;
  v7[11] = a6;
  v7[12] = a7;
  return v7;
}

uint64_t sub_10006CD24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10006CD6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006CDB4()
{
  sub_10000488C();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[6];
    v4 = v3[3];
    v5 = v3[4];
    sub_1000161C0(v3, v4);
    v7 = sub_10006CF08(&qword_100CD1FC8, v6, type metadata accessor for NotificationSubscriptionMonitor);

    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    sub_10000CDDC(v8);

    return dispatch thunk of NotificationSubscriptionManagerType.addObserver(_:)(v2, v7, v4, v5);
  }

  else
  {
    sub_100003B14();

    return v9();
  }
}

uint64_t sub_10006CF08(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10006CF50()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  return _swift_task_switch(sub_10006D058, 0, 0);
}

uint64_t sub_10006D058()
{
  sub_100003B08();

  sub_100003B14();

  return v0();
}

uint64_t sub_10006D0B0()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

uint64_t sub_10006D190()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

uint64_t sub_10006D274(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UnitConfiguration.Temperature();
  sub_10001EE84(v5);
  v6 = type metadata accessor for UnitConfiguration.Distance();
  sub_10001EE84(v6);
  v7 = type metadata accessor for UnitConfiguration.WindSpeed();
  sub_10001EE84(v7);
  v8 = type metadata accessor for UnitConfiguration.Pressure();
  sub_10001EE84(v8);
  v9 = type metadata accessor for UnitConfiguration.Precipitation();
  sub_10001EE84(v9);
  *(v2 + OBJC_IVAR____TtC7Weather15SettingsMonitor_observer) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_10006D318(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_10006D360(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for LocationFinder();
  v24[3] = v10;
  v24[4] = &off_100C5EE88;
  v24[0] = a4;
  v11 = type metadata accessor for UserNotificationMonitor();
  v12 = objc_allocWithZone(v11);
  v13 = sub_10002D7F8(v24, v10);
  __chkstk_darwin(v13);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v23[3] = v10;
  v23[4] = &off_100C5EE88;
  v23[0] = v17;
  v18 = &v12[OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher];
  *v18 = a1;
  *(v18 + 1) = a2;
  *&v12[OBJC_IVAR____TtC7Weather23UserNotificationMonitor_userNotificationCenter] = a3;
  sub_100035B30(v23, &v12[OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder]);
  *&v12[OBJC_IVAR____TtC7Weather23UserNotificationMonitor_store] = a5;
  v22.receiver = v12;
  v22.super_class = v11;

  v19 = a3;

  v20 = objc_msgSendSuper2(&v22, "init");
  [*&v20[OBJC_IVAR____TtC7Weather23UserNotificationMonitor_userNotificationCenter] setDelegate:v20];

  sub_100006F14(v23);
  sub_100006F14(v24);
  return v20;
}

uint64_t sub_10006D53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CD81B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006D5CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10006D608(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_10006D620@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for WeatherDataAction();
  __chkstk_darwin(v6 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MainAction();
  v9 = __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v55 = &v45 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v45 - v15;
  __chkstk_darwin(v14);
  v19 = &v45 - v18;
  if (*(a1 + 48) == 1)
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    v46 = a2;
    v21 = *(a1 + 40);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(v17 + 80);
      v52 = OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_logger;
      v51 = OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_signpostID;
      v50 = (v23 + 32) & ~v23;
      v24 = v21 + v50;
      v25 = *(v17 + 72);
      v47 = 0x8000000100ACF9F0;
      v26 = _swiftEmptyArrayStorage;
      v49 = xmmword_100A2C3F0;
      v53 = v11;
      v54 = v8;
      v58 = v25;
      do
      {
        sub_10004F14C(v24, v19);
        sub_10004F14C(v19, v16);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_10001EE6C();
        sub_10004F784(v16, v28);
        if (EnumCaseMultiPayload == 9)
        {
          v56 = static os_signpost_type_t.event.getter();
          v29 = v3;
          v57 = *(v3 + v52);
          sub_10022C350(&qword_100CA40C8);
          v30 = swift_allocObject();
          *(v30 + 16) = v49;
          v31 = v55;
          sub_10004F14C(v19, v55);
          if (swift_getEnumCaseMultiPayload() == 9)
          {
            v32 = v31;
            v33 = v48;
            sub_100050108(v32, v48, type metadata accessor for WeatherDataAction);
            v34 = sub_10016BAEC();
            v36 = v35;
            sub_10004F784(v33, type metadata accessor for WeatherDataAction);
          }

          else
          {
            sub_10001EE6C();
            sub_10004F784(v31, v40);
            v34 = 0xD000000000000016;
            v36 = v47;
          }

          *(v30 + 56) = &type metadata for String;
          *(v30 + 64) = sub_100035744();
          *(v30 + 32) = v34;
          *(v30 + 40) = v36;
          v3 = v29;
          os_signpost(_:dso:log:name:signpostID:_:_:)();

          PassthroughSubject.send(_:)();
          sub_10001EE6C();
          sub_10004F784(v19, v41);
          v11 = v53;
          v39 = v58;
        }

        else
        {
          sub_10004F14C(v19, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10004FF70();
            v26 = v42;
          }

          v37 = v26[2];
          if (v37 >= v26[3] >> 1)
          {
            sub_10004FF70();
            v26 = v43;
          }

          sub_10001EE6C();
          sub_10004F784(v19, v38);
          v26[2] = v37 + 1;
          v39 = v58;
          sub_100050108(v11, v26 + v50 + v37 * v58, type metadata accessor for MainAction);
        }

        v24 += v39;
        --v22;
      }

      while (v22);
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

    result = 0.0;
    v44 = v46;
    *v46 = 0u;
    v44[1] = 0u;
    *(v44 + 4) = 0;
    *(v44 + 5) = v26;
    *(v44 + 48) = 1;
  }

  return result;
}

uint64_t sub_10006DB14(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = (a4 + 32);

  if (v7)
  {
    while (1)
    {
      v11 = *v8;

      a2(&v10, &v12, &v11);
      if (v4)
      {
        break;
      }

      v6 = v10;
      v12 = v10;
      ++v8;
      if (!--v7)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_10006DC00(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  a2(&v6, &v5, a4);
  return v6;
}

uint64_t sub_10006DC50(uint64_t a1, uint64_t a2)
{
  v830 = a2;
  v831 = a1;
  v2 = type metadata accessor for AveragesDetailViewAction();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000038E4();
  sub_100003918(v4);
  v5 = type metadata accessor for MoonDetailViewAction();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000038E4();
  sub_100003918(v7);
  v8 = type metadata accessor for ConditionDetailViewAction();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003918(v10);
  v11 = type metadata accessor for DebugAction();
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_1000038E4();
  sub_100003918(v13);
  v14 = type metadata accessor for PerformanceTestAction();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000038E4();
  sub_100003918(v16);
  v17 = type metadata accessor for WeatherDataAction();
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_1000038E4();
  sub_100003918(v19);
  v20 = type metadata accessor for NotificationsOptInAction();
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_1000038E4();
  sub_100003918(v22);
  v23 = type metadata accessor for NotificationsAction();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000038E4();
  sub_100003918(v25);
  v26 = type metadata accessor for LocationViewAction();
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_1000038E4();
  sub_100003918(v28);
  v29 = type metadata accessor for ModalViewAction();
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_1000038E4();
  sub_100003918(v31);
  v32 = type metadata accessor for ViewAction();
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_1000038E4();
  sub_100003918(v34);
  v35 = type metadata accessor for LocationsAction();
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_1000038E4();
  sub_100003918(v37);
  v38 = type metadata accessor for EnvironmentAction();
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_1000038E4();
  sub_100003918(v40);
  v41 = type metadata accessor for AppConfigurationAction();
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_1000038E4();
  v44 = sub_100003918(v43);
  v828 = type metadata accessor for ViewState(v44);
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  v818 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_10000E70C();
  sub_100003918(v51);
  v827 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v52);
  sub_100003848();
  v819 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v815 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v816 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_10000E70C();
  v814 = v59;
  v824 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v60);
  sub_100003848();
  v817 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_10000E70C();
  sub_100003918(v66);
  v822 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v67);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_10000E70C();
  sub_100003918(v72);
  v821 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v73);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_10000E70C();
  sub_100003918(v78);
  v826 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v79);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_10000E70C();
  sub_100003918(v84);
  v825 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v85);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_10000E70C();
  v90 = sub_100003918(v89);
  v820 = type metadata accessor for ModalViewState(v90);
  sub_1000037E8();
  __chkstk_darwin(v91);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  v823 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_10000E70C();
  sub_100003990(v101);
  v102 = sub_10022C350(&qword_100CA65E8);
  v103 = sub_100003810(v102);
  __chkstk_darwin(v103);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_10000E70C();
  sub_100003990(v111);
  v112 = sub_10022C350(&qword_100CA6610);
  v113 = sub_100003810(v112);
  __chkstk_darwin(v113);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_10000E70C();
  sub_100003990(v121);
  v122 = sub_10022C350(&qword_100CA6618);
  v123 = sub_100003810(v122);
  __chkstk_darwin(v123);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_10000E70C();
  sub_100003990(v131);
  v132 = sub_10022C350(&qword_100CA6620);
  v133 = sub_100003810(v132);
  __chkstk_darwin(v133);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_10000E70C();
  sub_100003990(v141);
  v142 = sub_10022C350(&qword_100CA6628);
  v143 = sub_100003810(v142);
  __chkstk_darwin(v143);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_10000E70C();
  sub_100003990(v151);
  v152 = sub_10022C350(&qword_100CA6630);
  v153 = sub_100003810(v152);
  __chkstk_darwin(v153);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_10000E70C();
  sub_100003990(v161);
  v162 = sub_10022C350(&qword_100CA6638);
  v163 = sub_100003810(v162);
  __chkstk_darwin(v163);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_10000E70C();
  sub_100003990(v171);
  v172 = sub_10022C350(&qword_100CA6640);
  v173 = sub_100003810(v172);
  v174 = __chkstk_darwin(v173);
  v176 = &v735 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __chkstk_darwin(v174);
  v179 = &v735 - v178;
  v180 = __chkstk_darwin(v177);
  v182 = &v735 - v181;
  v183 = __chkstk_darwin(v180);
  v185 = (&v735 - v184);
  v186 = __chkstk_darwin(v183);
  v188 = &v735 - v187;
  v189 = __chkstk_darwin(v186);
  v191 = &v735 - v190;
  v192 = __chkstk_darwin(v189);
  v194 = &v735 - v193;
  __chkstk_darwin(v192);
  v196 = &v735 - v195;
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v197);
  v199 = &v735 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050F30(v830, v199, type metadata accessor for MainAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v340 = sub_100041BB8();
      v341 = v764;
      v343 = v342;
      sub_100051C74(v340, v764, v344);
      type metadata accessor for AppConfiguration();
      sub_1000037E8();
      (*(v345 + 32))(v191, v341);
      sub_10001B350(v191, 0, 1, v825);
      v346 = sub_100003BCC(&v801);
      v347 = v826;
      sub_10001B350(v346, v348, v349, v826);
      v350 = sub_100003BCC(&v805);
      v351 = v821;
      sub_10001B350(v350, v352, v353, v821);
      v354 = sub_100003BCC(&v809);
      v355 = v822;
      sub_10001B350(v354, v356, v357, v822);
      v358 = sub_100003BCC(&v813);
      v359 = v824;
      sub_10001B350(v358, v360, v361, v824);
      v362 = sub_100003BCC(&v817);
      sub_10001B350(v362, v363, v364, v827);
      v365 = sub_100003BCC(&v821);
      sub_10001B350(v365, v366, v367, v828);
      v368 = v746;
      sub_100003934();
      sub_10001B350(v369, v370, v371, v820);
      sub_1000090B4();
      sub_1000868F4(v372);
      sub_100021424();
      sub_100050F30(v373, v374, v375);
      sub_100020FE8();
      sub_1002AB08C(v376, v377, v378);
      sub_10000556C(v368);
      if (v235)
      {
        sub_1000180EC(v368, &qword_100CA65E8);
      }

      else
      {
        sub_100010CD0();
        sub_10004FBF8(v185, v531);
        sub_10001F998();
        sub_100051C74(v368, v185, v532);
      }

      sub_10001F998();
      sub_100051C74(v185, v793, v533);
      v534 = *(v343 + 16);
      LODWORD(v829) = *(v343 + 24);
      sub_1002AB08C(v191, v188, &qword_100CA6640);
      v535 = sub_100007FC4();
      v536 = v825;
      sub_1000038B4(v535, v537, v825);
      v538 = v748;
      v539 = v742;
      if (v235)
      {
        sub_10004EB94();
        sub_100050F30(v343 + v540, v797, v541);
        v542 = sub_100007FC4();
        v544 = sub_100024D10(v542, v543, v536);

        if (v544 != 1)
        {
          sub_1000180EC(v188, &qword_100CA6640);
        }
      }

      else
      {
        sub_100016FC4();
        sub_100051C74(v188, v797, v557);
      }

      v558 = v738;
      sub_1002AB08C(v774, v738, &qword_100CA6638);
      v559 = sub_100007FC4();
      sub_1000038B4(v559, v560, v347);
      if (v235)
      {
        v561 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_100014F74();
        sub_100050F30(v343 + v561, v800, v562);
        v563 = sub_100007FC4();
        sub_1000038B4(v563, v564, v347);
        v570 = v766;
        if (!v235)
        {
          sub_1000180EC(v558, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049DD4();
        sub_100051C74(v558, v800, v569);
        v570 = v766;
      }

      sub_100087EBC(&qword_100CA6630, &v805);
      v571 = sub_100016298();
      sub_1000038B4(v571, v572, v351);
      if (v235)
      {
        sub_100006884();
        sub_100050F30(v343 + v573, v804, v574);
        v575 = sub_100016298();
        sub_1000038B4(v575, v576, v351);
        if (!v235)
        {
          sub_1000180EC(v539, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000CF08();
        sub_100051C74(v539, v804, v584);
      }

      sub_1002AB08C(v780, v538, &qword_100CA6628);
      v585 = sub_10000C834();
      sub_1000038B4(v585, v586, v355);
      if (v235)
      {
        sub_100004BF0();
        sub_100050F30(v343 + v587, v808, v588);
        v589 = sub_10000C834();
        sub_1000038B4(v589, v590, v355);
        v601 = v828;
        if (!v235)
        {
          sub_1000180EC(v538, &qword_100CA6628);
        }
      }

      else
      {
        sub_100024AD4();
        sub_100051C74(v538, v808, v600);
        v601 = v828;
      }

      v602 = v758;
      sub_1002AB08C(v783, v758, &qword_100CA6620);
      v603 = sub_1000182B8();
      sub_1000038B4(v603, v604, v359);
      if (v235)
      {
        sub_10001CE74();
        sub_100050F30(v343 + v605, v812, v606);
        v607 = sub_1000182B8();
        sub_1000038B4(v607, v608, v359);
        if (!v235)
        {
          sub_1000180EC(v602, &qword_100CA6620);
        }
      }

      else
      {
        sub_10003C920();
        sub_100051C74(v602, v812, v613);
      }

      sub_1000131DC();
      sub_1002AB08C(v614, v615, v616);
      sub_10000554C(v359);
      if (v235)
      {
        sub_100017E8C();
        sub_100050F30(v343 + v617, v816, v618);
        sub_10000554C(v359);
        v628 = v818;
        if (!v235)
        {
          sub_1000180EC(v359, &qword_100CA6618);
        }
      }

      else
      {
        sub_100069AE8();
        sub_100051C74(v359, v816, v627);
        v628 = v818;
      }

      sub_1002AB08C(v789, v570, &qword_100CA6610);
      v629 = sub_10000C7F0();
      sub_1000038B4(v629, v630, v601);
      v830 = v534;
      if (v235)
      {
        sub_10001A004();
        sub_100050F30(v343 + v631, v628, v632);
        v633 = sub_10000C7F0();
        sub_1000038B4(v633, v634, v601);
        if (!v235)
        {
          sub_1000180EC(v570, &qword_100CA6610);
        }
      }

      else
      {
        sub_100013D0C();
        sub_100051C74(v570, v628, v648);
      }

      sub_10001F998();
      sub_1000A7D70(v649, &v825);
      v650 = v343;
      v652 = *(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v651 = *(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v654 = *(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v653 = *(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v655 = v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v656 = *(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v658 = *(v655 + 8);
      v657 = *(v655 + 16);
      v659 = *(v650 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      v236 = sub_100003B6C();
      LOBYTE(v734) = v656;
      sub_10003E038(v830, v829, v797, v800, v804, v808, v812, v816, v818, v628, v652, v651, v654, v653, v734, v658, v657, v659, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751);
      sub_100052654();

      goto LABEL_149;
    case 2u:
      sub_100041BB8();
      sub_100021424();
      sub_100051C74(v306, v307, v308);
      sub_1000161C0(v829 + 17, v829[20]);
      sub_10002014C();
      sub_100014F74();
      sub_1000131DC();
      sub_100050F30(v309, v310, v311);
      v312 = sub_100031858();
      v236 = sub_1000BFBA0(v312, v313, v314);
      v315 = sub_100004C08();
      sub_10004FBF8(v315, v316);
      v260 = type metadata accessor for EnvironmentAction;
      goto LABEL_28;
    case 3u:
      sub_100041BB8();
      sub_100021424();
      sub_100051C74(v318, v319, v320);
      sub_1000161C0(v829 + 22, v829[25]);
      sub_100006884();
      sub_1000868F4(v321);
      sub_1000131DC();
      sub_100050F30(v322, v323, v324);
      v325 = sub_100031858();
      v236 = sub_1000D8FD0(v325, v326, v327);
      v328 = sub_100004C08();
      sub_10004FBF8(v328, v329);
      v260 = type metadata accessor for LocationsAction;
      goto LABEL_28;
    case 4u:
      sub_100041BB8();
      sub_100021424();
      sub_100051C74(v248, v249, v250);
      sub_1000161C0(v829 + 62, v829[65]);
      sub_100004BF0();
      sub_1000868F4(v251);
      sub_1000131DC();
      sub_100050F30(v252, v253, v254);
      v255 = sub_100031858();
      v236 = sub_1001759E0(v255, v256, v257);
      v258 = sub_100004C08();
      sub_10004FBF8(v258, v259);
      v260 = type metadata accessor for NotificationsAction;
      goto LABEL_28;
    case 5u:
      sub_100041BB8();
      sub_100021424();
      sub_100051C74(v420, v421, v422);
      sub_1000161C0(v829 + 67, v829[70]);
      sub_10001CE74();
      sub_1000868F4(v423);
      sub_1000131DC();
      sub_100050F30(v424, v425, v426);
      v427 = sub_100031858();
      v236 = sub_1000CA7DC(v427, v428, v429);
      v430 = sub_100004C08();
      sub_10004FBF8(v430, v431);
      v260 = type metadata accessor for NotificationsOptInAction;
      goto LABEL_28;
    case 6u:
      sub_100041BB8();
      sub_100021424();
      sub_100051C74(v437, v438, v439);
      sub_1000161C0(v829 + 37, v829[40]);
      sub_10001A004();
      sub_1000868F4(v440);
      sub_1000131DC();
      sub_100050F30(v441, v442, v443);
      v444 = sub_100031858();
      v236 = sub_1000A7E0C(v444, v445, v446);
      v447 = sub_100004C08();
      sub_10004FBF8(v447, v448);
      v260 = type metadata accessor for ViewAction;
LABEL_28:
      v339 = v260;
      v338 = v185;
      goto LABEL_32;
    case 7u:
      v330 = sub_100041BB8();
      v331 = v768;
      sub_100051C74(v330, v768, v332);
      sub_1000161C0(v829 + 42, v829[45]);
      sub_1000090B4();
      v334 = sub_1000868F4(v333);
      v335 = v823;
      sub_100050F30(v334, v823, v336);
      v236 = sub_1008CCB10(v335, v194, v331);
      sub_100010CD0();
      sub_10004FBF8(v335, v337);
      v338 = sub_100004C08();
      goto LABEL_32;
    case 8u:
      sub_100041BB8();
      sub_100020FE8();
      sub_100051C74(v456, v457, v458);
      sub_1000161C0(v829 + 47, v829[50]);
      v459 = sub_100030650();
      v236 = sub_1002878EC(v459, v460);
      v242 = type metadata accessor for LocationViewAction;
      goto LABEL_31;
    case 9u:
      v263 = sub_100041BB8();
      v264 = v770;
      sub_100051C74(v263, v770, v265);
      sub_100003934();
      sub_10001B350(v266, v267, v268, v825);
      v269 = sub_100003BCC(&v802);
      sub_10001B350(v269, v270, v271, v826);
      v272 = sub_100003BCC(&v806);
      sub_10001B350(v272, v273, v274, v821);
      v275 = sub_100003BCC(&v810);
      sub_10001B350(v275, v276, v277, v822);
      v278 = sub_100003BCC(&v814);
      sub_10001B350(v278, v279, v280, v824);
      v281 = sub_100003BCC(&v818);
      sub_10001B350(v281, v282, v283, v827);
      v284 = sub_100003BCC(&v822);
      sub_10001B350(v284, v285, v286, v828);
      v287 = v752;
      sub_100003934();
      sub_10001B350(v288, v289, v290, v820);
      sub_1000161C0(v829 + 52, v829[55]);
      v291 = v831;
      v292 = *(v831 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v293 = *(v831 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v294 = *(v831 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v295 = *(v831 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);

      v296 = sub_10019B79C(v292, v293, v294, v295, v291, v264);
      v829 = v297;
      v830 = v296;
      v818 = v298;
      v816 = v299;

      sub_10004FBF8(v264, type metadata accessor for WeatherDataAction);
      sub_1000090B4();
      sub_100020FE8();
      sub_100050F30(v300, v301, v302);
      v303 = v754;
      sub_1002AB08C(v287, v754, &qword_100CA65E8);
      v304 = sub_10000C7F0();
      sub_1000038B4(v304, v305, v820);
      if (v235)
      {
        sub_1000180EC(v303, &qword_100CA65E8);
      }

      else
      {
        sub_100010CD0();
        sub_10004FBF8(v292, v461);
        sub_10001F998();
        sub_100051C74(v303, v292, v462);
      }

      v463 = v767;
      v464 = v762;
      v465 = v759;
      sub_10001F998();
      sub_100051C74(v292, v794, v466);
      v467 = v831;
      v468 = *(v831 + 16);
      v469 = *(v831 + 24);
      sub_1002AB08C(v179, v176, &qword_100CA6640);
      v470 = sub_1000182B8();
      v471 = v825;
      sub_100013710(v470, v472);
      if (v235)
      {
        sub_10004EB94();
        sub_100050F30(v467 + v473, v801, v474);
        v475 = sub_1000182B8();
        v477 = sub_100024D10(v475, v476, v471);

        if (v477 != 1)
        {
          sub_1000180EC(v176, &qword_100CA6640);
        }
      }

      else
      {
        sub_100016FC4();
        sub_100051C74(v176, v801, v478);
      }

      v479 = v739;
      sub_1002AB08C(v775, v739, &qword_100CA6638);
      v480 = sub_1000182B8();
      sub_100013710(v480, v481);
      if (v235)
      {
        v482 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_100014F74();
        sub_100050F30(v467 + v482, v805, v483);
        sub_10000554C(v479);
        v486 = v753;
        v484 = v479;
        v487 = v743;
        if (!v235)
        {
          sub_1000180EC(v484, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049DD4();
        sub_100051C74(v479, v805, v485);
        v486 = v753;
        v487 = v743;
      }

      sub_1002AB08C(v778, v487, &qword_100CA6630);
      v488 = sub_1000182B8();
      sub_100013710(v488, v489);
      if (v235)
      {
        sub_100006884();
        sub_100050F30(v467 + v490, v809, v491);
        sub_10000554C(v487);
        if (!v235)
        {
          sub_1000180EC(v487, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000CF08();
        sub_100051C74(v487, v809, v492);
      }

      sub_1002AB08C(v781, v486, &qword_100CA6628);
      v493 = sub_1000162A4();
      sub_100013710(v493, v494);
      if (v235)
      {
        sub_100004BF0();
        sub_100050F30(v467 + v495, v813, v496);
        sub_10000554C(v486);
        if (!v235)
        {
          sub_1000180EC(v486, &qword_100CA6628);
        }
      }

      else
      {
        sub_100024AD4();
        sub_100051C74(v486, v813, v497);
      }

      sub_100087EBC(&qword_100CA6620, &v814);
      v498 = sub_100016298();
      sub_100013710(v498, v499);
      if (v235)
      {
        sub_10001CE74();
        sub_100050F30(v467 + v500, v817, v501);
        sub_10000554C(v465);
        if (!v235)
        {
          sub_1000180EC(v465, &qword_100CA6620);
        }
      }

      else
      {
        sub_10003C920();
        sub_100051C74(v465, v817, v502);
      }

      sub_1002AB08C(v786, v464, &qword_100CA6618);
      v503 = sub_10000C7F0();
      sub_100013710(v503, v504);
      if (v235)
      {
        sub_100017E8C();
        sub_100050F30(v467 + v505, v819, v506);
        sub_10000554C(v464);
        v508 = v773;
        if (!v235)
        {
          sub_1000180EC(v464, &qword_100CA6618);
        }
      }

      else
      {
        sub_100069AE8();
        sub_100051C74(v464, v819, v507);
        v508 = v773;
      }

      sub_1002AB08C(v790, v463, &qword_100CA6610);
      sub_10000556C(v463);
      if (v235)
      {
        sub_10001A004();
        sub_100050F30(v467 + v509, v508, v510);
        sub_10000556C(v463);
        v512 = v508;
        if (!v235)
        {
          sub_1000180EC(v463, &qword_100CA6610);
        }
      }

      else
      {
        sub_100013D0C();
        sub_100051C74(v463, v508, v511);
        v512 = v508;
      }

      sub_10001F998();
      sub_1000A7D70(v513, &v826);
      v514 = *(v467 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v515 = *(v467 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v516 = *(v467 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v517 = *(v467 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      LOBYTE(v734) = v514;
      v731 = v512;
      v236 = sub_100003B6C();
      sub_10003E038(v468, v469, v801, v805, v809, v813, v817, v819, v731, v508, v830, v829, v818, v816, v734, v515, v516, v517, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751);
      sub_100052654();

      goto LABEL_149;
    case 0xAu:
      v449 = sub_100041BB8();
      v450 = v769;
      sub_100051C74(v449, v769, v451);
      sub_1000161C0(v829 + 57, v829[60]);
      v452 = v831;
      v453 = *(v831 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v454 = *(v831 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v455 = *(v831 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);

      v236 = sub_10037858C(v453, v454, v455, v452, v450);

      v339 = type metadata accessor for DebugAction;
      v338 = v450;
      goto LABEL_32;
    case 0xBu:
      sub_100041BB8();
      sub_100020FE8();
      sub_100051C74(v243, v244, v245);
      sub_1000161C0(v829 + 72, v829[75]);
      v246 = sub_100030650();
      v236 = sub_100967348(v246, v247);
      v242 = type metadata accessor for ConditionDetailViewAction;
      goto LABEL_31;
    case 0xCu:
      v261 = *v199;
      sub_1000161C0(v829 + 77, v829[80]);
      return sub_100724004(v831, v261);
    case 0xDu:
      sub_100041BB8();
      sub_100020FE8();
      sub_100051C74(v432, v433, v434);
      sub_1000161C0(v829 + 82, v829[85]);
      v435 = sub_100030650();
      v236 = sub_100719A6C(v435, v436);
      v242 = type metadata accessor for MoonDetailViewAction;
      goto LABEL_31;
    case 0xEu:
      sub_100041BB8();
      sub_100020FE8();
      sub_100051C74(v237, v238, v239);
      sub_1000161C0(v829 + 87, v829[90]);
      v240 = sub_100030650();
      v236 = sub_10084300C(v240, v241);
      v242 = type metadata accessor for AveragesDetailViewAction;
      goto LABEL_31;
    case 0xFu:
      v317 = *v199;
      sub_1000161C0(v829 + 92, v829[95]);
      return sub_1008E87C0(v831, v317);
    case 0x10u:
      sub_10004FBF8(v199, type metadata accessor for MainAction);
      v236 = v831;

      return v236;
    case 0x11u:
      sub_100041BB8();
      sub_100020FE8();
      sub_100051C74(v379, v380, v381);
      sub_1000161C0(v829 + 27, v829[30]);
      v382 = sub_100030650();
      v236 = sub_10073A39C(v382, v383);
      v242 = type metadata accessor for PerformanceTestAction;
LABEL_31:
      v339 = v242;
      v338 = &OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
LABEL_32:
      sub_10004FBF8(v338, v339);
      return v236;
    case 0x12u:
      __break(1u);
      JUMPOUT(0x100070F44);
    case 0x13u:
      sub_100003934();
      v384 = v825;
      sub_10001B350(v385, v386, v387, v825);
      v388 = sub_100003BCC(&v800);
      sub_10001B350(v388, v389, v390, v826);
      v391 = sub_100003BCC(&v804);
      sub_10001B350(v391, v392, v393, v821);
      v394 = sub_100003BCC(&v808);
      v395 = v822;
      sub_10001B350(v394, v396, v397, v822);
      v398 = sub_100003BCC(&v812);
      v399 = v824;
      sub_10001B350(v398, v400, v401, v824);
      v402 = v785;
      static WeatherClock.date.getter();
      sub_10001B350(v402, 0, 1, v827);
      v403 = sub_100003BCC(&v820);
      sub_10001B350(v403, v404, v405, v828);
      v406 = *(&v745 + 1);
      sub_100003934();
      v407 = v820;
      sub_10001B350(v408, v409, v410, v820);
      sub_1000090B4();
      v411 = v831;
      v413 = v756;
      sub_100050F30(v831 + v412, v756, v414);
      sub_100020FE8();
      sub_1002AB08C(v415, v416, v417);
      v418 = sub_10000C834();
      sub_1000038B4(v418, v419, v407);
      if (v235)
      {
        sub_1000180EC(v406, &qword_100CA65E8);
      }

      else
      {
        sub_100010CD0();
        sub_10004FBF8(v413, v660);
        sub_10001F998();
        sub_100051C74(v406, v413, v661);
      }

      sub_10001F998();
      sub_100051C74(v413, v792, v662);
      v663 = *(v411 + 16);
      LODWORD(v829) = *(v411 + 24);
      sub_1002AB08C(v185, v182, &qword_100CA6640);
      v664 = sub_1000162A4();
      sub_1000038B4(v664, v665, v384);
      v666 = v747;
      if (v235)
      {
        sub_10004EB94();
        sub_100050F30(v411 + v667, v796, v668);
        v669 = sub_1000162A4();
        v671 = sub_100024D10(v669, v670, v384);

        v673 = v761;
        if (v671 != 1)
        {
          sub_1000180EC(v182, &qword_100CA6640);
        }
      }

      else
      {
        sub_100016FC4();
        sub_100051C74(v182, v796, v672);

        v673 = v761;
      }

      sub_1000131DC();
      sub_1002AB08C(v674, v675, v676);
      v677 = sub_1000162A4();
      v678 = v826;
      sub_1000038B4(v677, v679, v826);
      if (v235)
      {
        v680 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_100014F74();
        sub_100050F30(v411 + v680, v799, v681);
        v682 = sub_1000162A4();
        sub_1000038B4(v682, v683, v678);
        v686 = v765;
        v687 = v757;
        v684 = v182;
        v688 = v741;
        if (!v235)
        {
          sub_1000180EC(v684, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049DD4();
        sub_100051C74(v182, v799, v685);
        v686 = v765;
        v687 = v757;
        v688 = v741;
      }

      sub_1002AB08C(v777, v688, &qword_100CA6630);
      sub_10000556C(v688);
      if (v235)
      {
        sub_100006884();
        sub_100050F30(v411 + v689, v803, v690);
        sub_10000556C(v688);
        if (!v235)
        {
          sub_1000180EC(v688, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000CF08();
        sub_100051C74(v688, v803, v691);
      }

      sub_1002AB08C(v779, v666, &qword_100CA6628);
      v692 = sub_10000C834();
      sub_1000038B4(v692, v693, v395);
      if (v235)
      {
        sub_100004BF0();
        sub_100050F30(v411 + v694, v807, v695);
        v696 = sub_10000C834();
        sub_1000038B4(v696, v697, v395);
        if (!v235)
        {
          sub_1000180EC(v666, &qword_100CA6628);
        }
      }

      else
      {
        sub_100024AD4();
        sub_100051C74(v666, v807, v698);
      }

      sub_100087EBC(&qword_100CA6620, &v812);
      v699 = sub_100016298();
      sub_1000038B4(v699, v700, v399);
      if (v235)
      {
        sub_10001CE74();
        sub_100050F30(v411 + v701, v811, v702);
        v703 = sub_100016298();
        sub_1000038B4(v703, v704, v399);
        if (!v235)
        {
          sub_1000180EC(v687, &qword_100CA6620);
        }
      }

      else
      {
        sub_10003C920();
        sub_100051C74(v687, v811, v705);
      }

      sub_1002AB08C(v785, v673, &qword_100CA6618);
      sub_10000554C(v673);
      if (v235)
      {
        sub_100017E8C();
        sub_100050F30(v411 + v706, v815, v707);
        sub_10000554C(v673);
        v709 = v772;
        if (!v235)
        {
          sub_1000180EC(v673, &qword_100CA6618);
        }
      }

      else
      {
        sub_100069AE8();
        sub_100051C74(v673, v815, v708);
        v709 = v772;
      }

      sub_1002AB08C(v788, v686, &qword_100CA6610);
      v710 = sub_1000131C4();
      v711 = v828;
      sub_1000038B4(v710, v712, v828);
      v830 = v663;
      if (v235)
      {
        sub_10001A004();
        sub_100050F30(v411 + v713, v709, v714);
        v715 = sub_1000131C4();
        sub_1000038B4(v715, v716, v711);
        v718 = v709;
        if (!v235)
        {
          sub_1000180EC(v686, &qword_100CA6610);
        }
      }

      else
      {
        sub_100013D0C();
        sub_100051C74(v686, v709, v717);
        v718 = v709;
      }

      sub_10001F998();
      sub_1000A7D70(v719, &v824);
      v721 = *(v411 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v720 = *(v411 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v723 = *(v411 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v722 = *(v411 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v724 = v411 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v725 = v411;
      v726 = *(v411 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v728 = *(v411 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v727 = *(v724 + 16);
      v729 = *(v725 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      LOBYTE(v734) = v726;
      v732 = v718;
      v236 = sub_100003B6C();
      sub_10003E038(v830, v829, v796, v799, v803, v807, v811, v815, v732, v709, v721, v720, v723, v722, v734, v728, v727, v729, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751);
      sub_100052654();

      goto LABEL_149;
    default:
      v200 = *v199;
      sub_1000161C0(v829 + 7, v829[10]);
      v201 = v831;
      LODWORD(v830) = sub_100070FE8(*(v831 + 24), v200);
      sub_100003934();
      sub_10001B350(v202, v203, v204, v825);
      v205 = sub_100003BCC(&v799);
      sub_10001B350(v205, v206, v207, v826);
      v208 = sub_100003BCC(&v803);
      sub_10001B350(v208, v209, v210, v821);
      v211 = sub_100003BCC(&v807);
      v212 = v822;
      sub_10001B350(v211, v213, v214, v822);
      v215 = sub_100003BCC(&v811);
      sub_10001B350(v215, v216, v217, v824);
      v218 = sub_100003BCC(&v815);
      v219 = v827;
      sub_10001B350(v218, v220, v221, v827);
      v222 = sub_100003BCC(&v819);
      sub_10001B350(v222, v223, v224, v828);
      v225 = v744;
      sub_100003934();
      sub_10001B350(v226, v227, v228, v820);
      sub_1000090B4();
      sub_1000131DC();
      sub_100050F30(v229, v230, v231);
      sub_100021424();
      sub_1002AB08C(v232, v233, v234);
      sub_10000554C(v225);
      if (v235)
      {
        sub_1000180EC(v225, &qword_100CA65E8);
      }

      else
      {
        sub_100010CD0();
        sub_10004FBF8(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v518);
        sub_10001F998();
        sub_100051C74(v225, &OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v519);
      }

      sub_10001F998();
      sub_100051C74(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v791, v520);
      v521 = *(v201 + 16);
      sub_1002AB08C(v196, v194, &qword_100CA6640);
      v522 = sub_1000131C4();
      v523 = v825;
      sub_100013710(v522, v524);
      v525 = v745;
      v526 = v740;
      v829 = v521;
      if (v235)
      {
        sub_10004EB94();
        sub_100050F30(v201 + v527, v795, v528);
        v529 = sub_1000131C4();
        v523 = sub_100024D10(v529, v530, v523);

        v546 = v760;
        if (v523 != 1)
        {
          sub_1000180EC(v194, &qword_100CA6640);
        }
      }

      else
      {
        sub_100016FC4();
        sub_100051C74(v194, v795, v545);

        v546 = v760;
      }

      sub_100020FE8();
      sub_1002AB08C(v547, v548, v549);
      v550 = sub_10000C834();
      v551 = v826;
      sub_1000038B4(v550, v552, v826);
      v553 = v219;
      if (v235)
      {
        v554 = v523;
        v555 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_100014F74();
        sub_100050F30(v201 + v555, v798, v556);
        sub_1000038B4(v554, 1, v551);
        v566 = v763;
        if (!v235)
        {
          sub_1000180EC(v554, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049DD4();
        sub_100051C74(v523, v798, v565);
        v566 = v763;
      }

      sub_1002AB08C(v776, v526, &qword_100CA6630);
      sub_10000556C(v526);
      if (v235)
      {
        sub_100006884();
        sub_100050F30(v201 + v567, v802, v568);
        sub_10000556C(v526);
        if (!v235)
        {
          sub_1000180EC(v526, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000CF08();
        sub_100051C74(v526, v802, v577);
      }

      sub_100087EBC(&qword_100CA6628, &v807);
      v578 = sub_100016298();
      sub_1000038B4(v578, v579, v212);
      if (v235)
      {
        sub_100004BF0();
        sub_100050F30(v201 + v580, v806, v581);
        v582 = sub_100016298();
        sub_1000038B4(v582, v583, v212);
        if (!v235)
        {
          sub_1000180EC(v525, &qword_100CA6628);
        }
      }

      else
      {
        sub_100024AD4();
        sub_100051C74(v525, v806, v591);
      }

      v592 = v755;
      sub_1002AB08C(v782, v755, &qword_100CA6620);
      v593 = sub_100007FC4();
      v594 = v824;
      sub_1000038B4(v593, v595, v824);
      if (v235)
      {
        sub_10001CE74();
        sub_100050F30(v201 + v596, v810, v597);
        v598 = sub_100007FC4();
        sub_1000038B4(v598, v599, v594);
        v610 = v828;
        if (!v235)
        {
          sub_1000180EC(v592, &qword_100CA6620);
        }
      }

      else
      {
        sub_10003C920();
        sub_100051C74(v592, v810, v609);
        v610 = v828;
      }

      sub_1002AB08C(v784, v546, &qword_100CA6618);
      sub_1000038B4(v546, 1, v553);
      if (v235)
      {
        sub_100017E8C();
        sub_100050F30(v201 + v611, v814, v612);
        sub_1000038B4(v546, 1, v553);
        v620 = v771;
        if (!v235)
        {
          sub_1000180EC(v546, &qword_100CA6618);
        }
      }

      else
      {
        sub_100069AE8();
        sub_100051C74(v546, v814, v619);
        v620 = v771;
      }

      sub_1002AB08C(v787, v566, &qword_100CA6610);
      v621 = sub_1000131C4();
      sub_1000038B4(v621, v622, v610);
      if (v235)
      {
        sub_10001A004();
        sub_100050F30(v201 + v623, v620, v624);
        v625 = sub_1000131C4();
        sub_1000038B4(v625, v626, v610);
        if (!v235)
        {
          sub_1000180EC(v566, &qword_100CA6610);
        }
      }

      else
      {
        sub_100013D0C();
        sub_100051C74(v566, v620, v635);
      }

      sub_10001F998();
      v636 = v823;
      sub_100051C74(v791, v823, v637);
      v639 = *(v201 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v638 = *(v201 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v641 = *(v201 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v640 = *(v201 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v642 = v201 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v643 = v201;
      v644 = *(v201 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v646 = *(v201 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v645 = *(v642 + 16);
      v647 = *(v643 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      LOBYTE(v734) = v644;
      v733 = v636;
      v236 = sub_100003B6C();
      sub_10003E038(v829, v830, v795, v798, v802, v806, v810, v814, v620, v733, v639, v638, v641, v640, v734, v646, v645, v647, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751);
      sub_100052654();

LABEL_149:

      return v236;
  }
}

uint64_t sub_100070FB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100070F94(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007100C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_10007106C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return sub_10001B350(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100071130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 44);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

void *sub_1000711C4(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for ViewState.SecondaryViewState(0);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CA6600);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[8];
      }

      else
      {
        type metadata accessor for DisplayMetrics();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[9];
        }

        else
        {
          v10 = type metadata accessor for WeatherMapPresentationState(0);
          v11 = a4[10];
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100071328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_100071384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return sub_100024D10(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100071438()
{

  return swift_dynamicCast();
}

uint64_t sub_1000714BC(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_100071524()
{
  result = v0;
  *(v2 - 112) = v1;
  return result;
}

uint64_t sub_100071538()
{
}

uint64_t sub_100071560()
{

  return sub_10068275C();
}

uint64_t sub_1000715A4()
{
}

uint64_t sub_10007169C()
{

  return swift_allocObject();
}

uint64_t sub_1000716B8()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000716E8(uint64_t a1, uint64_t a2)
{

  return sub_1000302D8(a1, a2, v2);
}

void sub_100071700()
{
  *(v5 + v3[12]) = v0;
  *(v5 + v3[13]) = v6;
  *(v5 + v3[14]) = v1;
  *(v5 + v3[15]) = v2;
  *(v5 + v3[16]) = v4;
}

uint64_t sub_100071744()
{

  return type metadata accessor for MainState._Storage(0);
}

uint64_t sub_100071784()
{
  result = v0;
  *(v2 - 208) = v1;
  return result;
}

uint64_t sub_100071798()
{

  return swift_slowAlloc();
}

uint64_t sub_1000717E8()
{

  return sub_100095588();
}

uint64_t sub_100071830()
{

  return sub_100187704();
}

uint64_t sub_10007185C()
{

  return Forecast.init(_:metadata:)();
}

uint64_t sub_10007188C(uint64_t a1)
{
  v5 = *(a1 + 20);
  v6 = *(v1 + 528) + v2;

  return sub_100111570(v6, v3 + v5, type metadata accessor for PressureComponentPreprocessedDataModel);
}

uint64_t sub_100071914()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100071930()
{

  return swift_storeEnumTagMultiPayload();
}

void sub_100071948()
{
  v1[16] = v0[570];
  v1[17] = v0[562];
  v1[18] = v0[560];
  v1[19] = v0[558];
  v1[20] = v0[556];
}

uint64_t sub_1000719D8()
{

  return sub_100073090();
}

uint64_t sub_100071A00()
{

  return sub_1000730E8();
}

uint64_t sub_100071A7C()
{
}

uint64_t sub_100071AA8(uint64_t *a1, uint64_t a2, int *a3)
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
    type metadata accessor for ViewState.SecondaryViewState(0);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CA6600);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[8];
      }

      else
      {
        type metadata accessor for DisplayMetrics();
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[9];
        }

        else
        {
          v10 = type metadata accessor for WeatherMapPresentationState(0);
          v11 = a3[10];
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_100071C74()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100071C94(uint64_t a1)
{
  v3 = *(v1 - 208);

  return sub_10001B350(a1, 1, 1, v3);
}

uint64_t sub_100071D30()
{

  return swift_arrayDestroy();
}

uint64_t sub_100071DE8()
{

  return sub_10003DDB8(v0, 0, 0, 2, 0, 0);
}

unint64_t sub_100071E14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_100078694(a1, a2, va);
}

uint64_t sub_100071E98()
{

  return swift_beginAccess();
}

void sub_100071EDC(uint64_t a1@<X8>)
{
  *(v2 - 224) = *(a1 + 32);
  v3 = *(a1 + 48);
  *(v2 - 240) = v1;
  *(v2 - 232) = v3;
}

uint64_t sub_100071EF4()
{

  return swift_once();
}

uint64_t sub_100071F30()
{

  return type metadata accessor for WeatherData(0);
}

uint64_t sub_100071F68(uint64_t a1)
{
  v168 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v153 = v3;
  sub_1000038CC();
  v167 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v166 = v5;
  sub_1000038CC();
  v144 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v165 = v7;
  sub_1000038CC();
  v158 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v164 = v9;
  sub_1000038CC();
  v156 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v163 = v11;
  sub_1000038CC();
  v154 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  v162 = v13;
  sub_1000038CC();
  v142 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v161 = v15;
  v16 = sub_1000038CC();
  *(&v146 + 1) = type metadata accessor for ModalViewState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003848();
  v152 = v18;
  __chkstk_darwin(v19);
  sub_100003908();
  __chkstk_darwin(v20);
  sub_10000E70C();
  v160 = v21;
  v22 = sub_10022C350(&qword_100CA65E8);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_10000E70C();
  v139 = v25;
  v26 = sub_10022C350(&qword_100CA6610);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  v151 = v28;
  __chkstk_darwin(v29);
  sub_10000E70C();
  v159 = v30;
  v31 = sub_10022C350(&qword_100CA6618);
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v157 = v34;
  v35 = sub_10022C350(&qword_100CA6620);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  v155 = v38;
  v39 = sub_10022C350(&qword_100CA6628);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  v43 = &v136 - v42;
  v44 = sub_10022C350(&qword_100CA6630);
  v45 = sub_100003810(v44);
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  v48 = &v136 - v47;
  v49 = sub_10022C350(&qword_100CA6638);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v51);
  v52 = sub_10022C350(&qword_100CA6640);
  v53 = sub_100003810(v52);
  __chkstk_darwin(v53);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v54);
  v55 = type metadata accessor for BannerStateComputer();
  v56 = (v55 - 8);
  __chkstk_darwin(v55);
  v58 = &v136 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050FF0();
  v59 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  *&v58[v56[7]] = a1;
  *&v58[v56[8]] = v59;
  v60 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v136 = v60;
  v58[v56[9]] = *(v60 + 3) == 4;

  v149 = sub_1000528E0();
  sub_100053318(v58, type metadata accessor for BannerStateComputer);
  sub_100003934();
  v61 = v142;
  sub_10001B350(v62, v63, v64, v142);
  sub_100003934();
  sub_10001B350(v65, v66, v67, v154);
  v141 = v48;
  v68 = v138;
  sub_100003934();
  sub_10001B350(v69, v70, v71, v156);
  *&v146 = v43;
  v72 = v140;
  sub_100003934();
  sub_10001B350(v73, v74, v75, v158);
  sub_100003934();
  v76 = v144;
  sub_10001B350(v77, v78, v79, v144);
  sub_100003934();
  sub_10001B350(v80, v81, v82, v167);
  v83 = a1;
  sub_100003934();
  sub_10001B350(v84, v85, v86, v168);
  sub_100003934();
  v87 = *(&v146 + 1);
  sub_10001B350(v88, v89, v90, *(&v146 + 1));
  sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
  sub_100050FF0();
  sub_100051BBC();
  sub_1000038B4(v68, 1, v87);
  if (v91)
  {
    sub_1000180EC(v68, &qword_100CA65E8);
  }

  else
  {
    sub_100053318(v72, type metadata accessor for ModalViewState);
    sub_1000069D8();
    sub_100073140();
  }

  sub_1000069D8();
  sub_100073140();
  v92 = *(v83 + 16);
  DWORD2(v146) = *(v83 + 24);
  v93 = v137;
  sub_100051BBC();
  v94 = sub_10000C834();
  sub_1000038B4(v94, v95, v61);
  if (v91)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_100050FF0();
    v96 = sub_10000C834();
    v98 = sub_100024D10(v96, v97, v61);

    v91 = v98 == 1;
    v99 = v147;
    v100 = v92;
    if (!v91)
    {
      sub_1000180EC(v93, &qword_100CA6640);
    }
  }

  else
  {
    sub_100073140();

    v99 = v147;
    v100 = v92;
  }

  v101 = v143;
  sub_100051BBC();
  v102 = sub_1000131C4();
  v103 = v154;
  sub_1000038B4(v102, v104, v154);
  if (v91)
  {
    sub_100050FF0();
    v105 = sub_1000131C4();
    sub_1000038B4(v105, v106, v103);
    v107 = v153;
    v108 = v76;
    if (!v91)
    {
      sub_1000180EC(v101, &qword_100CA6638);
    }
  }

  else
  {
    sub_100073140();
    v107 = v153;
    v108 = v76;
  }

  v109 = v145;
  sub_100051BBC();
  v110 = v156;
  sub_1000038B4(v109, 1, v156);
  if (v91)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_100050FF0();
    sub_1000038B4(v109, 1, v110);
    v111 = v158;
    v112 = v148;
    if (!v91)
    {
      sub_1000180EC(v109, &qword_100CA6630);
    }
  }

  else
  {
    sub_100073140();
    v111 = v158;
    v112 = v148;
  }

  sub_100051BBC();
  sub_1000038B4(v99, 1, v111);
  if (v91)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_100050FF0();
    sub_1000038B4(v99, 1, v111);
    v113 = v150;
    if (!v91)
    {
      sub_1000180EC(v99, &qword_100CA6628);
    }
  }

  else
  {
    sub_100073140();
    v113 = v150;
  }

  sub_100051BBC();
  sub_1000038B4(v112, 1, v108);
  if (v91)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_100050FF0();
    sub_1000038B4(v112, 1, v108);
    v114 = v151;
    if (!v91)
    {
      sub_1000180EC(v112, &qword_100CA6620);
    }
  }

  else
  {
    sub_100073140();
    v114 = v151;
  }

  sub_100051BBC();
  v115 = sub_1000131C4();
  sub_1000038B4(v115, v116, v167);
  if (v91)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_100050FF0();
    v117 = sub_1000131C4();
    sub_1000038B4(v117, v118, v167);
    if (!v91)
    {
      sub_1000180EC(v113, &qword_100CA6618);
    }
  }

  else
  {
    sub_100073140();
  }

  sub_100051BBC();
  v119 = sub_10000C834();
  sub_1000038B4(v119, v120, v168);
  if (v91)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
    sub_100050FF0();
    v121 = sub_10000C834();
    sub_1000038B4(v121, v122, v168);
    if (!v91)
    {
      sub_1000180EC(v114, &qword_100CA6610);
    }
  }

  else
  {
    sub_100073140();
  }

  sub_1000069D8();
  v123 = v152;
  sub_100073140();
  v125 = *(v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v124 = *(v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v126 = *(v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v127 = *(v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v128 = v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v129 = *(v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v131 = *(v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v130 = *(v128 + 16);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v135) = v129;
  sub_10003E038(v100, DWORD2(v146), v161, v162, v163, v164, v165, v166, v107, v123, v125, v124, v126, v127, v135, v131, v130, v149, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
  v133 = v132;

  return v133;
}

uint64_t type metadata accessor for BannerStateComputer()
{
  result = qword_100CE0178;
  if (!qword_100CE0178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100072D88()
{
  type metadata accessor for MainAction();
  if (v0 <= 0x3F)
  {
    sub_100052874();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100072E1C()
{
  result = qword_100CB6C40;
  if (!qword_100CB6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6C40);
  }

  return result;
}

unint64_t sub_100072E74()
{
  result = qword_100CD2BD8;
  if (!qword_100CD2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2BD8);
  }

  return result;
}

uint64_t sub_100072EC8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100072F20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100072F7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100072FD8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100073030(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100073090()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000730E8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100073140()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100073198()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000731F0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

void sub_100073248()
{
  sub_10000C778();
  v2 = v1;
  v3 = sub_1002E5718();
  v4 = type metadata accessor for ModalViewState(v3);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v6);
  sub_10000E70C();
  v7 = sub_1000038CC();
  v8 = type metadata accessor for ViewState(v7);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_10000E70C();
  sub_1000038CC();
  v11 = type metadata accessor for TimeState();
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_10000E70C();
  sub_1000038CC();
  v14 = type metadata accessor for NotificationsOptInState();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_10000E70C();
  sub_1000038CC();
  v17 = type metadata accessor for NotificationsState();
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_10000C8A8(v19, v58);
  __chkstk_darwin(v20);
  sub_10000E70C();
  sub_1000038CC();
  v21 = type metadata accessor for LocationsState();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_1000B9E20();
  v24 = type metadata accessor for EnvironmentState();
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_100003C38();
  __chkstk_darwin(v26);
  v27 = type metadata accessor for AppConfigurationState();
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003C38();
  __chkstk_darwin(v29);
  sub_10004E424();

  v30 = sub_1002E54F8();
  sub_100073B0C(v30, v31);
  v33 = v32;

  if ((v33 & 1) != 0 && *(v0 + 24) == *(v2 + 24))
  {
    sub_100066B44();
    sub_100066B44();
    sub_100020E44();
    v34 = static AppConfiguration.== infix(_:_:)();
    sub_100040B64();
    sub_100040B64();
    if (v34)
    {
      sub_100003CD0();
      swift_beginAccess();
      sub_100066B44();
      sub_100003CD0();
      swift_beginAccess();
      sub_100066B44();
      v35 = sub_100003B2C();
      v37 = sub_1000B855C(v35, v36);
      sub_100040B64();
      sub_100040B64();
      if (v37)
      {
        sub_100066B44();
        sub_100082590();
        v38 = sub_10008672C();
        v39 = sub_1000B8D9C(v38);
        sub_100040B64();
        sub_100027E24();
        sub_100040B64();
        if (v39)
        {
          sub_100066B44();
          sub_100082590();
          v40 = sub_100003984();
          v42 = sub_1000BA240(v40, v41);
          sub_100040B64();
          sub_1002E5638();
          if (v42)
          {
            sub_100066B44();
            sub_100082590();
            v43 = sub_100003984();
            v45 = sub_1000BA584(v43, v44);
            sub_100040B64();
            sub_1002E5638();
            if (v45)
            {
              sub_100066B44();
              sub_100082590();
              sub_100003984();
              v46 = static Date.== infix(_:_:)();
              sub_100040B64();
              sub_1002E5638();
              if (v46)
              {
                sub_100066B44();
                sub_100082590();
                sub_100003984();
                sub_1000BA6B4();
                v48 = v47;
                sub_100040B64();
                sub_1002E5638();
                if (v48)
                {
                  sub_100066B44();
                  sub_100082590();
                  sub_100003984();
                  sub_1000BC008();
                  v50 = v49;
                  sub_100040B64();
                  sub_1002E5638();
                  if (v50)
                  {
                    v51 = *(v0 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData) == *(v2 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData) && *(v0 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8) == *(v2 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
                    if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      sub_100014268();
                      sub_1000BCFBC();
                      if (v52)
                      {
                        sub_100027E24();
                        sub_1000BD330();
                        v54 = v53;

                        if ((v54 & 1) == 0 || *(v0 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState) != *(v2 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState))
                        {
                          goto LABEL_19;
                        }

                        sub_1000BDA70();
                        if (v55)
                        {
                          sub_1000B0C38();
                          sub_1000BDD2C();
                          v57 = v56;

                          if ((v57 & 1) == 0)
                          {
                            goto LABEL_19;
                          }

                          sub_100003984();
                          sub_1000BE3AC();
                          goto LABEL_22;
                        }
                      }

                      else
                      {
                      }

LABEL_22:
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_19:
  sub_1002E52C4();
  sub_10000536C();
}