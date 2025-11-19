uint64_t sub_1090()
{
  v0 = sub_6368();
  sub_6294(v0, qword_10EE0);
  sub_117C(v0, qword_10EE0);
  return sub_6358();
}

uint64_t sub_1118()
{
  if (qword_10CD0 != -1)
  {
    swift_once();
  }

  v0 = sub_6368();

  return sub_117C(v0, qword_10EE0);
}

uint64_t sub_117C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_11B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_6368();
  v3 = sub_117C(v2, qword_10EE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Int sub_1294(char a1)
{
  sub_6588();
  sub_6598(a1 & 1);
  return sub_65A8();
}

Swift::Int sub_12F4()
{
  v1 = *v0;
  sub_6588();
  sub_6598(v1);
  return sub_65A8();
}

Swift::Int sub_1368()
{
  v1 = *v0;
  sub_6588();
  sub_6598(v1);
  return sub_65A8();
}

double sub_13D4(double a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = 0.0;
  *(v2 + 32) = xmmword_6CD0;
  *(v2 + 24) = a1;
  return result;
}

uint64_t sub_1418(double a1)
{
  result = v1;
  *(v1 + 16) = 0;
  *(v1 + 32) = xmmword_6CD0;
  *(v1 + 24) = a1;
  return result;
}

double sub_1434(unint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  if (v2 >= a1)
  {
    v2 = a1;
  }

  if (v3 <= a1)
  {
    v3 = a1;
  }

  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  v4 = *(v1 + 16);
  if (v4 == 0.0)
  {
    result = a1;
    *(v1 + 16) = a1;
  }

  else
  {
    result = *(v1 + 24) * a1 + v4 * (1.0 - *(v1 + 24));
    *(v1 + 16) = result;
  }

  return result;
}

unint64_t sub_1498()
{
  v1 = *(v0 + 16);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_14E0()
{
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 32) = xmmword_6CD0;
  return result;
}

uint64_t variable initialization expression of HIDSensorTimeFilter.queue()
{
  v8 = sub_6478();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_6468() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(sub_6398() - 8) + 64);
  __chkstk_darwin();
  v7[1] = sub_5B08(0, &qword_10940, OS_dispatch_queue_ptr);
  sub_6388();
  v9 = &_swiftEmptyArrayStorage;
  sub_2D4C(&qword_10948, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1770(&qword_10950, &qword_6D30);
  sub_2D94(&qword_10958, &qword_10950, &qword_6D30);
  sub_64C8();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  return sub_6498();
}

uint64_t sub_1770(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_17B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1800()
{
  v1 = OBJC_IVAR___HIDSensorTimeFilter_timebaseInfo;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1844(uint64_t a1)
{
  v3 = OBJC_IVAR___HIDSensorTimeFilter_timebaseInfo;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_18F8()
{
  v1 = OBJC_IVAR___HIDSensorTimeFilter_timesync;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1944(uint64_t a1)
{
  v3 = OBJC_IVAR___HIDSensorTimeFilter_timesync;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_19FC()
{
  v1 = OBJC_IVAR___HIDSensorTimeFilter_timesyncPrecision;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A40(uint64_t a1)
{
  v3 = OBJC_IVAR___HIDSensorTimeFilter_timesyncPrecision;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1AF0()
{
  v1 = OBJC_IVAR___HIDSensorTimeFilter_timesyncState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B34(uint64_t a1)
{
  v3 = OBJC_IVAR___HIDSensorTimeFilter_timesyncState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BEC()
{
  v1 = OBJC_IVAR___HIDSensorTimeFilter_reportInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C30(int a1)
{
  v3 = OBJC_IVAR___HIDSensorTimeFilter_reportInterval;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double variable initialization expression of HIDSensorTimeFilter.latency()
{
  type metadata accessor for Stats();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = xmmword_6CE0;
  *(v0 + 32) = xmmword_6CD0;
  return result;
}

uint64_t sub_1D3C()
{
  v1 = OBJC_IVAR___HIDSensorTimeFilter_latency;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1D84(uint64_t a1)
{
  v3 = OBJC_IVAR___HIDSensorTimeFilter_latency;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id HIDSensorTimeFilter.init(service:)(void *a1)
{
  v2 = v1;
  v54 = a1;
  v46 = sub_6338();
  v45 = *(v46 - 8);
  v3 = *(v45 + 64);
  __chkstk_darwin();
  v55 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6478();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  __chkstk_darwin();
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_6468() - 8) + 64);
  __chkstk_darwin();
  v9 = *(*(sub_6398() - 8) + 64);
  __chkstk_darwin();
  v10 = &v1[OBJC_IVAR___HIDSensorTimeFilter_cancelHandler];
  *v10 = 0;
  v10[1] = 0;
  v47 = v10;
  v48 = OBJC_IVAR___HIDSensorTimeFilter_eventDispatcher;
  *&v1[OBJC_IVAR___HIDSensorTimeFilter_eventDispatcher] = 0;
  v11 = OBJC_IVAR___HIDSensorTimeFilter_service;
  *&v1[OBJC_IVAR___HIDSensorTimeFilter_service] = 0;
  v12 = OBJC_IVAR___HIDSensorTimeFilter_queue;
  v50 = sub_5B08(0, &qword_10940, OS_dispatch_queue_ptr);
  v49 = &unk_6F00;
  sub_6388();
  *&v62 = &_swiftEmptyArrayStorage;
  sub_2D4C(&qword_10948, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1770(&qword_10950, &qword_6D30);
  sub_2D94(&qword_10958, &qword_10950, &qword_6D30);
  sub_64C8();
  (*(v52 + 104))(v51, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v53);
  v13 = sub_6498();
  v53 = v12;
  *&v1[v12] = v13;
  v14 = OBJC_IVAR___HIDSensorTimeFilter_serviceID;
  *&v2[OBJC_IVAR___HIDSensorTimeFilter_serviceID] = 0;
  v15 = &v2[OBJC_IVAR___HIDSensorTimeFilter_timebaseInfo];
  *&v2[OBJC_IVAR___HIDSensorTimeFilter_timebaseInfo] = 0;
  v16 = OBJC_IVAR___HIDSensorTimeFilter_timesync;
  *&v2[OBJC_IVAR___HIDSensorTimeFilter_timesync] = 0;
  *&v2[OBJC_IVAR___HIDSensorTimeFilter_timesyncPrecision] = 0;
  *&v2[OBJC_IVAR___HIDSensorTimeFilter_timesyncState] = 0;
  *&v2[OBJC_IVAR___HIDSensorTimeFilter_reportInterval] = 0;
  v2[OBJC_IVAR___HIDSensorTimeFilter_logEvent] = 0;
  v17 = OBJC_IVAR___HIDSensorTimeFilter_latency;
  type metadata accessor for Stats();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_6CE0;
  *(v18 + 32) = xmmword_6CD0;
  *&v2[v17] = v18;
  v19 = *&v2[v11];
  v52 = v11;
  v20 = v54;
  *&v2[v11] = v54;
  v21 = v20;

  v22 = [v21 serviceID];
  *&v2[v14] = v22;
  *&v62 = 30768;
  *(&v62 + 1) = 0xE200000000000000;
  *&v60 = v22;
  sub_280C();
  v64._countAndFlagsBits = sub_6408();
  sub_63E8(v64);

  v23 = *(&v62 + 1);
  v24 = &v2[OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr];
  *v24 = v62;
  v24[1] = v23;
  v25 = sub_63C8();
  v26 = [v21 propertyForKey:v25];

  if (v26)
  {
    sub_64B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v62 = v60;
  v63 = v61;
  v27 = v55;
  if (!*(&v61 + 1))
  {

    sub_5E4C(&v62, &qword_109D0, &qword_6D38);
    goto LABEL_37;
  }

  v51 = v17;
  v54 = v16;
  sub_5B08(0, &qword_109D8, NSDictionary_ptr);
  v28 = &type metadata for Any;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_36;
  }

  v29 = v58;
  *&v60 = 0x73746E656D656C45;
  *(&v60 + 1) = 0xE800000000000000;
  v30 = sub_6538();
  v50 = v29;
  v31 = [v29 __swift_objectForKeyedSubscript:v30];
  swift_unknownObjectRelease();
  if (v31)
  {
    sub_64B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v62 = v60;
  v63 = v61;
  if (!*(&v61 + 1))
  {

    sub_5E4C(&v62, &qword_109D0, &qword_6D38);
    goto LABEL_36;
  }

  sub_5B08(0, &qword_109E0, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_35;
  }

  v44 = v58;
  sub_64A8();
  while (1)
  {
    sub_6328();
    if (!*(&v63 + 1))
    {
      break;
    }

    sub_2894(&v62, &v60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v32 = v28;
    v33 = v58;
    *&v58 = 0x6761506567617355;
    *(&v58 + 1) = 0xE900000000000065;
    v34 = [v33 __swift_objectForKeyedSubscript:sub_6538()];
    swift_unknownObjectRelease();
    if (v34)
    {
      sub_64B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    v60 = v58;
    v61 = v59;
    v28 = v32;
    if (!*(&v59 + 1))
    {

      goto LABEL_31;
    }

    if (swift_dynamicCast())
    {
      v49 = v57;
      *&v58 = 0x6567617355;
      *(&v58 + 1) = 0xE500000000000000;
      v35 = [v33 __swift_objectForKeyedSubscript:sub_6538()];
      swift_unknownObjectRelease();
      if (v35)
      {
        sub_64B8();
        swift_unknownObjectRelease();
      }

      else
      {

        v58 = 0u;
        v59 = 0u;
      }

      v60 = v58;
      v61 = v59;
      v28 = v32;
      if (*(&v59 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v57 == &dword_4 && v49 == &off_FF10 + 5)
        {
          (*(v45 + 8))(v27, v46);
          swift_beginAccess();
          mach_timebase_info(v15);
          swift_endAccess();
          v40 = type metadata accessor for HIDSensorTimeFilter();
          v56.receiver = v2;
          v56.super_class = v40;
          v41 = objc_msgSendSuper2(&v56, "init");

          return v41;
        }
      }

      else
      {
LABEL_31:
        sub_5E4C(&v60, &qword_109D0, &qword_6D38);
      }
    }

    else
    {
    }
  }

  (*(v45 + 8))(v27, v46);

LABEL_35:
LABEL_36:
  v16 = v54;
  v17 = v51;
LABEL_37:
  v36 = v47[1];
  sub_2860(*v47);
  v37 = *&v2[v48];
  swift_unknownObjectRelease();

  v38 = v24[1];

  v39 = *&v2[v17];

  type metadata accessor for HIDSensorTimeFilter();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_280C()
{
  result = qword_109C0;
  if (!qword_109C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109C0);
  }

  return result;
}

uint64_t sub_2860(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

_OWORD *sub_2894(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t HIDSensorTimeFilter.description.getter()
{
  swift_getObjectType();

  return sub_65C8();
}

Swift::Void __swiftcall HIDSensorTimeFilter.cancel()()
{
  v1 = sub_6378();
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6398();
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(&stru_1F8.size + (swift_isaMask & *v0)))(v7);
  v10 = *(v0 + OBJC_IVAR___HIDSensorTimeFilter_service);
  *(v0 + OBJC_IVAR___HIDSensorTimeFilter_service) = 0;

  v11 = *(v0 + OBJC_IVAR___HIDSensorTimeFilter_queue);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_2CB0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_6318;
  aBlock[3] = &unk_C560;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v0;
  sub_6388();
  v19 = &_swiftEmptyArrayStorage;
  sub_2D4C(&qword_109E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_1770(&qword_109F0, &qword_6D40);
  sub_2D94(&qword_109F8, &qword_109F0, &qword_6D40);
  sub_64C8();
  sub_6488();
  _Block_release(v13);

  (*(v18 + 8))(v4, v1);
  (*(v5 + 8))(v9, v17);
}

uint64_t sub_2C78()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_2CB0()
{
  v1 = *(v0 + 16) + OBJC_IVAR___HIDSensorTimeFilter_cancelHandler;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_2860(v2);
    v5 = *v1;
    v6 = *(v1 + 8);
    *v1 = 0;
    *(v1 + 8) = 0;

    sub_2860(v5);
  }
}

uint64_t sub_2D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2D4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2D94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_17B8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double HIDSensorTimeFilter.property(forKey:client:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000000006F40 == a2 || (sub_6528() & 1) != 0)
  {
    sub_1770(&qword_10A00, &qword_6D48);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_6CF0;
    *(v5 + 32) = 0x7373616C43;
    *(v5 + 40) = 0xE500000000000000;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = 0xD000000000000013;
    *(v5 + 72) = 0x8000000000006D30;
    *(v5 + 120) = &type metadata for String;
    *(v5 + 110) = -4864;
    v6 = swift_isaMask & *v3;
    *(v5 + 88) = &type metadata for String;
    strcpy((v5 + 96), "TimesyncState");
    (*(v6 + 384))();
    isa = sub_6428().super.super.isa;
    v8 = sub_5B08(0, &qword_10A08, NSNumber_ptr);
    *(v5 + 128) = isa;
    *(v5 + 152) = v8;
    *(v5 + 160) = 0xD000000000000011;
    *(v5 + 168) = 0x8000000000006F60;
    v9 = swift_isaMask & *v3;
    *(v5 + 184) = &type metadata for String;
    (*(v9 + 360))();
    *(v5 + 192) = sub_6428();
    *(v5 + 216) = v8;
    *(v5 + 224) = 0x636E7973656D6954;
    *(v5 + 232) = 0xE800000000000000;
    v10 = swift_isaMask & *v3;
    *(v5 + 248) = &type metadata for String;
    v11 = (*(v10 + 336))();
    if (v11)
    {

      v12 = 0xE900000000000065;
      v13 = 0x6C62616C69617641;
    }

    else
    {
      v12 = 0xED0000656C62616CLL;
      v13 = 0x6961764120746F4ELL;
    }

    *(v5 + 256) = v13;
    *(v5 + 264) = v12;
    *(v5 + 312) = &type metadata for String;
    *(v5 + 280) = &type metadata for String;
    strcpy((v5 + 288), "ReportInterval");
    *(v5 + 303) = -18;
    (*(&stru_158.flags + (swift_isaMask & *v3)))();
    v14.super.super.isa = sub_65B8().super.super.isa;
    *(v5 + 344) = v8;
    *(v5 + 320) = v14;
    v15 = sub_5B08(0, &qword_10A10, NSMutableDictionary_ptr);
    v16 = sub_6438();
    *(a3 + 24) = v15;
    *a3 = v16;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t HIDSensorTimeFilter.setProperty(_:forKey:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 0x6E4974726F706552 || a3 != 0xEE006C6176726574)
  {
    v7 = a1;
    if ((sub_6528() & 1) == 0)
    {
      return 1;
    }

    a1 = v7;
  }

  if (!a4)
  {
    sub_3768(a1, v26);
    if (v26[3])
    {
      if (swift_dynamicCast())
      {
        v8 = (*(&stru_158.reserved2 + (swift_isaMask & *v4)))(v25);
        if (v25)
        {
          *(v4 + OBJC_IVAR___HIDSensorTimeFilter_logEvent) = 1;
          (*&stru_1F8.segname[(swift_isaMask & *v4) + 16])(v8);
        }

        else
        {
          if (qword_10CD0 != -1)
          {
            swift_once();
          }

          v9 = sub_6368();
          sub_117C(v9, qword_10EE0);
          v10 = v4;
          v11 = sub_6348();
          v12 = sub_6458();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v26[0] = v24;
            *v13 = 136315906;
            *(v13 + 4) = sub_4824(*(v10 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr), *(v10 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr + 8), v26);
            *(v13 + 12) = 2048;
            v14 = *&stru_1A8.segname[(swift_isaMask & *v10) + 16];
            v15 = v14();
            v16 = (*(*v15 + 200))(v15);

            *(v13 + 14) = v16;

            *(v13 + 22) = 2048;
            v17 = v14();
            v18 = (*(*v17 + 208))(v17);

            *(v13 + 24) = v18;

            *(v13 + 32) = 2048;
            v19 = v14();
            v20 = (*(*v19 + 216))(v19);

            *(v13 + 34) = v20;

            _os_log_impl(&dword_0, v11, v12, "%s: streaming session sample time latency min:%llu max:%llu average:%llu", v13, 0x2Au);
            sub_4DCC(v24);
          }

          else
          {
          }

          v21 = (*(&stru_1F8.size + (swift_isaMask & *v10)))();
          v22 = (*&stru_1A8.segname[(swift_isaMask & *v10) + 16])(v21);
          (*(*v22 + 224))(v22);
        }
      }
    }

    else
    {
      sub_5E4C(v26, &qword_109D0, &qword_6D38);
    }
  }

  return 1;
}

uint64_t sub_3768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1770(&qword_109D0, &qword_6D38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *HIDSensorTimeFilter.filterEvent(_:)(void *a1)
{
  v1 = sub_4E18(a1);
  v2 = v1;
  return v1;
}

id sub_3930(void *a1)
{
  result = [a1 children];
  if (result)
  {
    v2 = result;
    sub_5B08(0, &qword_10A18, HIDEvent_ptr);
    v3 = sub_6418();

    if (v3 >> 62)
    {
LABEL_27:
      v4 = sub_6508();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = sub_64E8();
          }

          else
          {
            if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_24;
            }

            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          if ([v6 type] == 1)
          {
            v9 = [v7 integerValueForField:0x10000];
            if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_22;
            }

            if (v9 >> 16)
            {
              goto LABEL_23;
            }

            if (v9 == 65301)
            {
              v10 = [v7 integerValueForField:65537];
              if ((v10 & 0x8000000000000000) != 0)
              {
                goto LABEL_25;
              }

              if (v10 >> 16)
              {
                goto LABEL_26;
              }

              if (v10 == 4)
              {
                break;
              }
            }
          }

          ++v5;
          if (v8 == v4)
          {
            goto LABEL_28;
          }
        }

        if ([v7 integerValueForField:65539] == &dword_8)
        {
          v11 = *[v7 dataValueForField:65540];

          return v11;
        }

        return 0;
      }
    }

    else
    {
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (v4)
      {
        goto LABEL_4;
      }
    }

LABEL_28:

    return 0;
  }

  return result;
}

Swift::Void __swiftcall HIDSensorTimeFilter.setupTimesync()()
{
  v1 = *(&stru_108.reserved2 + (swift_isaMask & *v0));
  v2 = v1();
  if (!v2)
  {
    v3 = *(v0 + OBJC_IVAR___HIDSensorTimeFilter_service);
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = [objc_opt_self() timeSyncFromHIDEventService:v3];
    v5 = (*&stru_158.sectname[swift_isaMask & *v0])(v4);
    v6 = (v1)(v5);
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = v0;
      v22 = sub_5B50;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_3EC0;
      v21 = &unk_C5B0;
      v9 = _Block_copy(&aBlock);
      v10 = v0;

      [v7 setEventHandler:v9];
      _Block_release(v9);
      [v7 setDispatchQueue:*(v10 + OBJC_IVAR___HIDSensorTimeFilter_queue)];
      v22 = HIDSensorTimeFilter.activate();
      v23 = 0;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_6318;
      v21 = &unk_C5D8;
      v11 = _Block_copy(&aBlock);
      [v7 setCancelHandler:v11];
      _Block_release(v11);
      [v7 activate];

      return;
    }

    if (qword_10CD0 != -1)
    {
      swift_once();
    }

    v12 = sub_6368();
    sub_117C(v12, qword_10EE0);
    v13 = v0;
    oslog = sub_6348();
    v14 = sub_6458();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_4824(*(v13 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr), *(v13 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr + 8), &aBlock);
      _os_log_impl(&dword_0, oslog, v14, "%s:Timesync is not available", v15, 0xCu);
      sub_4DCC(v16);

      return;
    }

    v2 = oslog;
  }
}

uint64_t sub_3EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_3F24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

Swift::Void __swiftcall HIDSensorTimeFilter.destroyTimesync()()
{
  v1 = (*(&stru_158.offset + (swift_isaMask & *v0)))(0);
  v2 = (*(&stru_108.reserved2 + (swift_isaMask & *v0)))(v1);
  [v2 cancel];

  v3 = *&stru_158.sectname[swift_isaMask & *v0];

  v3(0);
}

uint64_t HIDSensorTimeFilter.setCancelHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___HIDSensorTimeFilter_cancelHandler);
  v4 = *(v2 + OBJC_IVAR___HIDSensorTimeFilter_cancelHandler);
  v5 = *(v2 + OBJC_IVAR___HIDSensorTimeFilter_cancelHandler + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_2860(v4);
}

void HIDSensorTimeFilter.setDispatchQueue(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HIDSensorTimeFilter_queue);
  *(v1 + OBJC_IVAR___HIDSensorTimeFilter_queue) = a1;
  v2 = a1;
}

uint64_t HIDSensorTimeFilter.setEventDispatcher(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___HIDSensorTimeFilter_eventDispatcher);
  *(v1 + OBJC_IVAR___HIDSensorTimeFilter_eventDispatcher) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

unint64_t sub_42AC(unint64_t a1)
{
  v3 = *(&stru_108.offset + (swift_isaMask & *v1));
  result = v3();
  v5 = result;
  if (is_mul_ok(a1, result))
  {
    result = v3();
    if (HIDWORD(result))
    {
      return a1 * v5 / HIDWORD(result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_4350(void *a1)
{
  v3 = *(&stru_108.reserved2 + (swift_isaMask & *v1));
  result = v3();
  if (result)
  {

    if ((*(&stru_158.size + (swift_isaMask & *v1)))() == 1)
    {
      result = v3();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = result;
      v18 = a1;
      v6 = [objc_allocWithZone(NSData) initWithBytes:&v18 length:8];
      v18 = 0;
      v7 = [v5 syncedTimeFromData:v6 error:&v18];

      v8 = v18;
      if (!v18)
      {
        return v7;
      }

      v9 = qword_10CD0;
      v10 = v18;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = sub_6368();
      sub_117C(v11, qword_10EE0);
      v12 = v1;
      v13 = sub_6348();
      v14 = sub_6448();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = v17;
        *v15 = 136315394;
        *(v15 + 4) = sub_4824(*(v12 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr), *(v12 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr + 8), &v18);
        *(v15 + 12) = 2112;
        *(v15 + 14) = v10;
        *v16 = v8;
        v10 = v10;
        _os_log_impl(&dword_0, v13, v14, "%s: syncedTime:%@", v15, 0x16u);
        sub_5E4C(v16, &qword_10A20, &qword_6D68);

        sub_4DCC(v17);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_4630()
{
  v1 = (*&stru_158.segname[swift_isaMask & *v0])();
  v2 = 3000;
  if (v1 != 2)
  {
    v2 = 0;
  }

  if (v1 == 1)
  {
    return 5000000;
  }

  else
  {
    return v2;
  }
}

id HIDSensorTimeFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HIDSensorTimeFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HIDSensorTimeFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_4808@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_4824(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_48F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_6234(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4DCC(v11);
  return v7;
}

unint64_t sub_48F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_49FC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_64F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_49FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_4A48(a1, a2);
  sub_4B78(&off_C510);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_4A48(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_4C64(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_64F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_63F8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4C64(v10, 0);
        result = sub_64D8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_4B78(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_4CD8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
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

void *sub_4C64(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1770(&qword_10C68, qword_6F08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4CD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1770(&qword_10C68, qword_6F08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_4DCC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_4E18(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___HIDSensorTimeFilter_logEvent;
  if (*(v1 + OBJC_IVAR___HIDSensorTimeFilter_logEvent) == 1)
  {
    if (qword_10CD0 != -1)
    {
      swift_once();
    }

    v5 = sub_6368();
    sub_117C(v5, qword_10EE0);
    v6 = a1;
    v7 = v1;
    v8 = sub_6348();
    v9 = sub_6458();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v79[0] = v11;
      *v10 = 136315650;
      *(v10 + 4) = sub_4824(*&v7[OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr], *&v7[OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr + 8], v79);
      *(v10 + 12) = 1024;
      *(v10 + 14) = [v6 type];
      *(v10 + 18) = 2048;
      *(v10 + 20) = [v6 timestamp];

      _os_log_impl(&dword_0, v8, v9, "%s: first event:%u timestamp:%llu", v10, 0x1Cu);
      sub_4DCC(v11);
    }

    else
    {
    }

    *(v2 + v4) = 0;
  }

  v12 = (*&stru_1F8.segname[(swift_isaMask & *v2) + 8])(a1);
  if (v13)
  {
    return a1;
  }

  v14 = v12;
  v15 = (*&stru_248.segname[(swift_isaMask & *v2) + 8])();
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v16 = (*&stru_248.segname[(swift_isaMask & *v2) - 8])(&v74, &v73, &v71);
  if (v16)
  {
    v17 = v16;
    if (qword_10CD0 != -1)
    {
      swift_once();
    }

    v18 = sub_6368();
    sub_117C(v18, qword_10EE0);
    v19 = v2;
    v20 = sub_6348();
    v21 = sub_6448();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v79[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_4824(*(v19 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr), *(v19 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr + 8), v79);
      *(v22 + 12) = 1024;
      *(v22 + 14) = v17;
      _os_log_impl(&dword_0, v20, v21, "%s: machGetTimes:%d", v22, 0x12u);
      sub_4DCC(v23);
    }

    goto LABEL_59;
  }

  v24 = (*&stru_248.segname[swift_isaMask & *v2])(v14);
  if (v25)
  {
    goto LABEL_21;
  }

  if (v74 < v24)
  {
    v68 = v24;
    if (qword_10CD0 != -1)
    {
      swift_once();
    }

    v26 = sub_6368();
    sub_117C(v26, qword_10EE0);
    v27 = v2;
    v28 = sub_6348();
    v29 = sub_6448();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v79[0] = v31;
      *v30 = 136315906;
      *(v30 + 4) = sub_4824(*(v27 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr), *(v27 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr + 8), v79);
      *(v30 + 12) = 2048;
      swift_beginAccess();
      *(v30 + 14) = v74;
      *(v30 + 22) = 2048;
      *(v30 + 24) = v68;
      *(v30 + 32) = 2048;
      *(v30 + 34) = v14;
      _os_log_impl(&dword_0, v28, v29, "%s: timesync timstamp is in future use time of arrival current ts:%llu synce ts:%llu remote ts:%llu", v30, 0x2Au);
      sub_4DCC(v31);
    }

LABEL_21:
    v32 = 0;
    v70 = [a1 timestamp];
    goto LABEL_24;
  }

  v70 = v24;
  v33 = v24;
  LODWORD(v67) = 0;
  v34 = [objc_opt_self() vendorDefinedEvent:objc_msgSend(a1 usagePage:"timestamp") usage:65301 version:5 data:0 length:&v70 options:{8, v67}];
  v35 = [a1 appendEvent:v34];
  v36 = (*&stru_1A8.segname[(swift_isaMask & *v2) + 16])(v35);
  if (v74 < v33)
  {
    __break(1u);
    goto LABEL_68;
  }

  v37 = (*&stru_248.sectname[swift_isaMask & *v2])(v74 - v33);
  (*(*v36 + 192))(v37);

  v32 = 1;
LABEL_24:
  swift_beginAccess();
  v38 = v71;
  v39 = v72;
  v40 = *&stru_248.sectname[swift_isaMask & *v2];
  if (v70 >= v74)
  {
    v46 = v40(&v70[-v74]);
    if ((v39 & 0x8000000000000000) == 0)
    {
      v47 = v39 + v46;
      if (!__CFADD__(v39, v46))
      {
        v42 = v38 + v47 / 0x3B9ACA00;
        if (!__OFADD__(v38, v47 / 0x3B9ACA00))
        {
          v45 = v47 % 0x3B9ACA00;
          goto LABEL_45;
        }
      }

      sub_61E0();
      v43 = swift_allocError();
      *v48 = 0;
      swift_willThrow();
      if (!v43)
      {
        goto LABEL_45;
      }

      goto LABEL_40;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v41 = v40((v74 - v70));
  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  v42 = v38 - v41 / 0x3B9ACA00;
  if (!__OFSUB__(v38, v41 / 0x3B9ACA00))
  {
    if (v41 % 0x3B9ACA00 <= v39)
    {
LABEL_39:
      v45 = v39 - v41 % 0x3B9ACA00;
      goto LABEL_45;
    }

    if (!__OFSUB__(v42--, 1))
    {
      v39 += 1000000000;
      goto LABEL_39;
    }
  }

  sub_61E0();
  v43 = swift_allocError();
  *v44 = 1;
  swift_willThrow();
  if (!v43)
  {
LABEL_45:
    if (v42 <= 0xFFFFFFFFLL)
    {
      if (((v42 | v45) & 0x8000000000000000) == 0)
      {
        if (v45 <= 0xFFFFFFFFLL)
        {
          v75[0] = v32;
          *&v75[1] = 0;
          v75[3] = 0;
          *&v75[4] = v15;
          v76 = v42;
          v77 = v45;
          LODWORD(v67) = 0;
          v20 = [objc_opt_self() vendorDefinedEvent:objc_msgSend(a1 usagePage:"timestamp") usage:65301 version:290 data:0 length:v75 options:{20, v67}];
          [a1 appendEvent:v20];
LABEL_59:

          return a1;
        }

        goto LABEL_65;
      }

LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_40:
  *v75 = v43;
  swift_errorRetain();
  sub_1770(&qword_10C58, &qword_6F00);
  if (swift_dynamicCast())
  {

    if ((v69 & 1) == 0)
    {
      if (qword_10CD0 != -1)
      {
        swift_once();
      }

      v64 = sub_6368();
      sub_117C(v64, qword_10EE0);
      v65 = v2;
      v52 = sub_6348();
      v53 = sub_6448();

      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_57;
      }

      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v78 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_4824(*(v65 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr), *(v65 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr + 8), &v78);
      v56 = "%s: timespec calculation would overflow";
      goto LABEL_56;
    }

    if (qword_10CD0 == -1)
    {
LABEL_43:
      v50 = sub_6368();
      sub_117C(v50, qword_10EE0);
      v51 = v2;
      v52 = sub_6348();
      v53 = sub_6448();

      if (!os_log_type_enabled(v52, v53))
      {
LABEL_57:

        return a1;
      }

      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v78 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_4824(*(v51 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr), *(v51 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr + 8), &v78);
      v56 = "%s: timespec calculation would underflow";
LABEL_56:
      _os_log_impl(&dword_0, v52, v53, v56, v54, 0xCu);
      sub_4DCC(v55);

      goto LABEL_57;
    }

LABEL_68:
    swift_once();
    goto LABEL_43;
  }

  if (qword_10CD0 != -1)
  {
LABEL_66:
    swift_once();
  }

  v57 = sub_6368();
  sub_117C(v57, qword_10EE0);
  v58 = v2;
  swift_errorRetain();
  v20 = sub_6348();
  v59 = sub_6448();

  if (!os_log_type_enabled(v20, v59))
  {

    goto LABEL_59;
  }

  v60 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  *v75 = v62;
  *v60 = 136315394;
  *(v60 + 4) = sub_4824(*(v58 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr), *(v58 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr + 8), v75);
  *(v60 + 12) = 2112;
  swift_errorRetain();
  v63 = _swift_stdlib_bridgeErrorToNSError();
  *(v60 + 14) = v63;
  *v61 = v63;
  _os_log_impl(&dword_0, v20, v59, "%s: unexpected timespec calculation error: %@", v60, 0x16u);
  sub_5E4C(v61, &qword_10A20, &qword_6D68);

  sub_4DCC(v62);

  return a1;
}

uint64_t sub_5B08(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_5B50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  (*(&stru_158.offset + (swift_isaMask & *v5)))();
  (*&stru_158.segname[(swift_isaMask & *v5) + 8])(a2);
  if (qword_10CD0 != -1)
  {
    swift_once();
  }

  v6 = sub_6368();
  sub_117C(v6, qword_10EE0);
  v7 = v5;
  oslog = sub_6348();
  v8 = sub_6458();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136315906;
    *(v9 + 4) = sub_4824(*(v7 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr), *(v7 + OBJC_IVAR___HIDSensorTimeFilter_serviceIDStr + 8), &v17);
    *(v9 + 12) = 2048;
    *(v9 + 14) = a1;
    *(v9 + 22) = 2048;
    *(v9 + 24) = a2;
    *(v9 + 32) = 2112;
    v12 = *(v7 + OBJC_IVAR___HIDSensorTimeFilter_service);
    if (!v12)
    {

      __break(1u);
      return;
    }

    v13 = v12;

    isa = [v13 eventStatistics];
    if (isa)
    {
      sub_63B8();

      isa = sub_63A8().super.isa;

      v15 = isa;
    }

    else
    {
      v15 = 0;
    }

    *(v9 + 34) = isa;
    *v10 = v15;
    _os_log_impl(&dword_0, oslog, v8, "%s: timesync event:%ld, precision:%ld event stats:%@", v9, 0x2Au);
    sub_5E4C(v10, &qword_10A20, &qword_6D68);

    sub_4DCC(v11);
  }

  else
  {
  }
}

uint64_t sub_5E4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1770(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_5EB0()
{
  result = qword_10A28;
  if (!qword_10A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimespecError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimespecError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_60AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_60CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_6108(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_6154()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_619C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_61E0()
{
  result = qword_10C60;
  if (!qword_10C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10C60);
  }

  return result;
}

uint64_t sub_6234(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_6294(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}