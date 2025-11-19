uint64_t sub_1004FE778()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE6B18);
  v1 = sub_10000617C(v0, qword_100AE6B18);
  if (qword_100AD0210 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004FE840()
{
  v0 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  URL.init(string:)();
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for Endpoint());
    result = Endpoint.init(url:name:sharedContainerIdentifier:)();
    qword_100AE6B30 = result;
  }

  return result;
}

uint64_t sub_1004FE960()
{
  v0 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  URL.init(string:)();
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for Endpoint());
    result = Endpoint.init(url:name:sharedContainerIdentifier:)();
    qword_100AE6B38 = result;
  }

  return result;
}

uint64_t sub_1004FEA84()
{
  v0 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  URL.init(string:)();
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for Endpoint());
    result = Endpoint.init(url:name:sharedContainerIdentifier:)();
    qword_100AE6B40 = result;
  }

  return result;
}

uint64_t sub_1004FEBB8()
{
  v0 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  URL.init(string:)();
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for Endpoint());
    result = Endpoint.init(url:name:sharedContainerIdentifier:)();
    qword_100AE6B48 = result;
  }

  return result;
}

uint64_t sub_1004FECE4()
{
  v0 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  URL.init(string:)();
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for Endpoint());
    result = Endpoint.init(url:name:sharedContainerIdentifier:)();
    qword_100AE6B50 = result;
  }

  return result;
}

id sub_1004FEE14()
{
  v0 = type metadata accessor for Runtime.Environment();
  v62 = *(v0 - 8);
  v63 = v0;
  __chkstk_darwin(v0);
  v2 = &v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v4 = sub_1000F24EC(&qword_100AE6B58);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for AnalyticsEndpointName();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for SettingsKey();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static Runtime.isInternalBuild.getter())
  {
    v58 = v15;
    v59 = v8;
    v60 = v7;
    v20 = [objc_opt_self() standardUserDefaults];
    (*(v17 + 104))(v19, enum case for SettingsKey.analyticsEndpoint(_:), v16);
    SettingsKey.rawValue.getter();
    (*(v17 + 8))(v19, v16);
    v21 = v20;
    v22 = String._bridgeToObjectiveC()();

    v23 = [v20 stringForKey:v22];

    if (v23)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      AnalyticsEndpointName.init(rawValue:)();
      v25 = v59;
      v24 = v60;
      if ((*(v59 + 48))(v6, 1, v60) != 1)
      {
        v40 = v58;
        (*(v25 + 32))(v58, v6, v24);
        if (qword_100ACFE90 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_10000617C(v41, qword_100AE6B18);
        v63 = *(v25 + 16);
        v63(v12, v40, v24);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v62 = v21;
          v45 = v44;
          v46 = swift_slowAlloc();
          v64 = v46;
          *v45 = 136315138;
          v47 = AnalyticsEndpointName.rawValue.getter();
          v49 = v48;
          v50 = *(v59 + 8);
          v50(v12, v60);
          v51 = sub_100008458(v47, v49, &v64);
          v25 = v59;

          *(v45 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v42, v43, "Using analytics endpoint: %s", v45, 0xCu);
          sub_10000BA7C(v46);
          v24 = v60;

          v21 = v62;
          v52 = v58;

          v53 = v50;
          v40 = v52;
        }

        else
        {

          v53 = *(v25 + 8);
          v53(v12, v24);
        }

        v54 = v61;
        v63(v61, v40, v24);
        v55 = (*(v25 + 88))(v54, v24);
        if (v55 == enum case for AnalyticsEndpointName.production(_:))
        {

          if (qword_100ACFEB8 != -1)
          {
            swift_once();
          }

          v56 = qword_100AE6B50;
        }

        else if (v55 == enum case for AnalyticsEndpointName.qa(_:))
        {

          if (qword_100ACFE98 != -1)
          {
            swift_once();
          }

          v56 = qword_100AE6B30;
        }

        else if (v55 == enum case for AnalyticsEndpointName.test(_:))
        {

          if (qword_100ACFEA0 != -1)
          {
            swift_once();
          }

          v56 = qword_100AE6B38;
        }

        else if (v55 == enum case for AnalyticsEndpointName.development(_:))
        {

          if (qword_100ACFEA8 != -1)
          {
            swift_once();
          }

          v56 = qword_100AE6B40;
        }

        else
        {
          if (v55 != enum case for AnalyticsEndpointName.staging(_:))
          {
LABEL_53:
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }

          if (qword_100ACFEB0 != -1)
          {
            swift_once();
          }

          v56 = qword_100AE6B48;
        }

        v39 = v56;

        v53(v40, v24);
        return v39;
      }

      sub_1004FF7FC(v6);
    }

    if (qword_100ACFE90 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000617C(v26, qword_100AE6B18);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v64 = v30;
      *v29 = 136315138;
      static Runtime.Environment.current.getter();
      v31 = v63;
      v32 = String.init<A>(describing:)();
      v34 = sub_100008458(v32, v33, &v64);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "No overriding endpoint found, using endpoint for %s.", v29, 0xCu);
      sub_10000BA7C(v30);
    }

    else
    {

      v31 = v63;
    }

    static Runtime.Environment.current.getter();
    v37 = (v62)[11](v2, v31);
    if (v37 == enum case for Runtime.Environment.production(_:))
    {
      if (qword_100ACFEB8 != -1)
      {
        swift_once();
      }

      v38 = qword_100AE6B50;
LABEL_24:
      v39 = v38;

      return v39;
    }

    if (v37 == enum case for Runtime.Environment.staging(_:) || v37 == enum case for Runtime.Environment.testing(_:))
    {
      if (qword_100ACFE98 != -1)
      {
        swift_once();
      }

      v38 = qword_100AE6B30;
      goto LABEL_24;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_53;
  }

  if (qword_100ACFEB8 != -1)
  {
    swift_once();
  }

  v35 = qword_100AE6B50;

  return v35;
}

uint64_t sub_1004FF7FC(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE6B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1004FF864()
{
  type metadata accessor for JournalEntryMO();
  v1 = NSManagedObjectContext.forEach<A>(_:batchSize:using:)();
  if (v0)
  {
    if (qword_100ACFEC0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100AE6B60);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "JournalSortingUtilities.updateSortingColumnsForAllEntries error %@", v5, 0xCu);
      sub_10012B714(v6);
    }

    else
    {
    }
  }

  else
  {
    v8 = v1;
    if (qword_100ACFEC0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000617C(v9, qword_100AE6B60);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      swift_beginAccess();
      *(v12 + 4) = 0;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v8;
      _os_log_impl(&_mh_execute_header, v10, v11, "JournalSortingUtilities.updateSortingColumnsForAllEntries updated %ld of %ld entries", v12, 0x16u);
    }
  }
}

uint64_t sub_1004FFB2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  *(v4 + 104) = a3;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v4 + 24) = v6;
  *(v4 + 32) = *(v6 - 8);
  *(v4 + 40) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v9;

  return _swift_task_switch(sub_1004FFC20, v7, v9);
}

uint64_t sub_1004FFC20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 104);
  static Date.timeIntervalSinceReferenceDate.getter();
  *(v0 + 64) = v3;
  v4 = [v1 newBackgroundContext];
  *(v0 + 72) = v4;
  v5 = String._bridgeToObjectiveC()();
  [v4 setName:v5];

  NSManagedObjectContext.setInitialQueryGeneration()();
  type metadata accessor for JournalEntryMO();
  v6 = static JournalEntryMO.fetchRequest()();
  *(v0 + 80) = v6;
  if (v2 != 1)
  {
    sub_1000321B0();
    sub_1000F24EC(&unk_100AD5B10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100940080;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100031B20();
    *(v7 + 32) = 0xD000000000000014;
    *(v7 + 40) = 0x80000001008F80A0;
    v8 = NSPredicate.init(format:_:)();
    [v6 setPredicate:v8];
  }

  v9 = *(v0 + 32);
  v18 = *(v0 + 40);
  v10 = *(v0 + 24);
  sub_1000F24EC(&unk_100AE88B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100941FE0;
  *(v11 + 32) = 0xD000000000000014;
  *(v11 + 40) = 0x80000001008F80A0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = 0x6144656C646E7562;
  *(v11 + 72) = 0xEA00000000006574;
  *(v11 + 88) = &type metadata for String;
  *(v11 + 96) = 0x7461447972746E65;
  *(v11 + 104) = 0xE900000000000065;
  *(v11 + 152) = &type metadata for String;
  *(v11 + 120) = &type metadata for String;
  *(v11 + 128) = 0x4464657461657263;
  *(v11 + 136) = 0xEB00000000657461;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setPropertiesToFetch:isa];

  v13 = swift_allocObject();
  *(v0 + 88) = v13;
  *(v13 + 16) = v4;
  *(v13 + 24) = v6;
  (*(v9 + 104))(v18, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v10);
  v4;
  v14 = v6;
  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  *v15 = v0;
  v15[1] = sub_1004FFF78;
  v16 = *(v0 + 40);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v15, v16, sub_100500150, v13, &type metadata for () + 8);
}

uint64_t sub_1004FFF78()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v4 = v2[6];
    v5 = v2[7];

    return _swift_task_switch(sub_1005000CC, v4, v5);
  }
}

uint64_t sub_1005000CC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_100087390(v2);

  v3 = *(v0 + 8);

  return v3();
}

BOOL sub_10050016C()
{
  v1 = *(v0 + 16);
  result = JournalEntryMO.updateSortingColumns()();
  if (!result)
  {
    return 1;
  }

  if (!__OFADD__(*v1, 1))
  {
    ++*v1;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005001B0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE6C10);
  v1 = sub_10000617C(v0, qword_100AE6C10);
  if (qword_100AD01A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100500278()
{
  result = qword_100AE19B0;
  if (!qword_100AE19B0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE19B0);
  }

  return result;
}

uint64_t sub_1005002D0@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v4 = sub_1000F24EC(&qword_100AD62A0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 64);
  if (a1 <= 1u)
  {
    if (a1)
    {
      *a2 = 0;
      a2[1] = 0;
      *(a2 + v5) = 1;
    }

    else
    {
      v7 = type metadata accessor for UUID();
      *a2 = 0;
      a2[1] = 0;
      (*(*(v7 - 8) + 56))(a2 + v5, 1, 1, v7);
    }

    v8 = type metadata accessor for CanvasContentInputType();
    goto LABEL_8;
  }

  if (a1 == 2)
  {
    v8 = type metadata accessor for CanvasContentInputType();
    *a2 = 0;
    a2[1] = 0;
LABEL_8:
    swift_storeEnumTagMultiPayload();
    (*(*(v8 - 8) + 56))(a2 + v5, 0, 1, v8);
    goto LABEL_10;
  }

  v9 = type metadata accessor for CanvasContentInputType();
  *a2 = 0;
  a2[1] = 0;
  (*(*(v9 - 8) + 56))(a2 + v5, 1, 1, v9);
LABEL_10:
  v10 = type metadata accessor for WidgetFamily();
  (*(*(v10 - 8) + 56))(a2 + v6, 1, 1, v10);
  v11 = type metadata accessor for AppLaunchAction();
  swift_storeEnumTagMultiPayload();
  v12 = *(*(v11 - 8) + 56);

  return v12(a2, 0, 1, v11);
}

unint64_t sub_1005004EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A599F0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100500538(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    if (!(*(v10 + 32))(ObjectType, v10))
    {

      return swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v2 + 24);
      v13 = swift_getObjectType();
      (*(v12 + 24))(&v28, v13, v12);
      swift_unknownObjectRelease();
      v14 = *(&v29 + 1);
      if (*(&v29 + 1))
      {
        v15 = v30;
        sub_10000CA14(&v28, *(&v29 + 1));
        v16 = (*(v15 + 8))(v14, v15);
        v18 = v17;
        sub_10000BA7C(&v28);
        if (!a1)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
    }

    sub_10019385C(&v28);
    v16 = 0;
    v18 = 0;
    if (!a1)
    {
LABEL_6:
      v19 = 0;
      v20 = 0;
      if (!v18)
      {
LABEL_20:
        if (v20)
        {
          goto LABEL_21;
        }

        return swift_unknownObjectRelease();
      }

LABEL_15:
      if (!v20)
      {
LABEL_21:

LABEL_22:
        v24 = type metadata accessor for TaskPriority();
        (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
        type metadata accessor for MainActor();
        swift_unknownObjectRetain();
        v25 = static MainActor.shared.getter();
        v26 = swift_allocObject();
        v26[2] = v25;
        v26[3] = &protocol witness table for MainActor;
        v26[4] = v9;
        v26[5] = v10;
        sub_1003E9BBC(0, 0, v7, &unk_10095A0C8, v26);
        swift_unknownObjectRelease();
      }

      if (v16 == v19 && v18 == v20)
      {
        swift_unknownObjectRelease();
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_22;
      }

      return swift_unknownObjectRelease();
    }

LABEL_13:
    v21 = swift_getObjectType();
    (*(a2 + 24))(&v28, v21, a2);
    v19 = *(&v29 + 1);
    if (*(&v29 + 1))
    {
      v22 = v30;
      sub_10000CA14(&v28, *(&v29 + 1));
      v19 = (*(v22 + 8))(v19, v22);
      v20 = v23;
      sub_10000BA7C(&v28);
      if (!v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_10019385C(&v28);
      v20 = 0;
      if (!v18)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1005008AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v10 = (*(a5 + 96) + **(a5 + 96));
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_1004E7D84;

  return v10(ObjectType, a5);
}

uint64_t sub_1005009F8()
{
  type metadata accessor for AudioRecordingCoordinator();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  result = swift_unknownObjectWeakInit();
  qword_100B2FA60 = v0;
  return result;
}

uint64_t sub_100500A40()
{
  sub_100038534(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100500A9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1005008AC(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for InsightsBentoView()
{
  result = qword_100AE6D20;
  if (!qword_100AE6D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100500BD0()
{
  sub_1001D4E38(319, &unk_100AE6D30, &qword_100AD8D88);
  if (v0 <= 0x3F)
  {
    sub_1001D4E38(319, &qword_100AD3AE8, &unk_100AD9850);
    if (v1 <= 0x3F)
    {
      sub_100087C9C();
      if (v2 <= 0x3F)
      {
        sub_100122F00();
        if (v3 <= 0x3F)
        {
          sub_100500CD4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100500CD4()
{
  if (!qword_100AD9938)
  {
    type metadata accessor for InsightsDataManager(255);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD9938);
    }
  }
}

uint64_t sub_100500D98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for RedactionReasons();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE6D78);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_1000F24EC(&qword_100AE6D80);
  v39 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = sub_1000F24EC(&qword_100AE6D88);
  v40 = *(v14 - 8);
  v41 = v14;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = *(v1 + 8);
  v49 = *v1;
  v50 = v17;
  sub_1000F24EC(&qword_100AE6D90);
  State.projectedValue.getter();
  v18 = v47;
  v19 = v48;
  *v10 = v46;
  *(v10 + 1) = v18;
  v10[16] = v19;
  v20 = sub_1000F24EC(&qword_100AE6D98);
  sub_10050141C(v2, &v10[*(v20 + 36)]);
  v21 = &v10[*(v20 + 40)];
  KeyPath = swift_getKeyPath();
  v49 = 0;
  *v21 = KeyPath;
  v21[104] = 0;
  v23 = *(v2 + *(type metadata accessor for InsightsBentoView() + 36) + 8);

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v37 + 8))(v7, v38);
  }

  v25 = sub_1000A51A0();

  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25 & 1;
  v28 = &v10[*(v8 + 36)];
  *v28 = v26;
  v28[1] = sub_1000FF5FC;
  v28[2] = v27;

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v37 + 8))(v7, v38);
  }

  v30 = sub_1000A51A0();

  if (v30)
  {
    v31 = v42;
    static RedactionReasons.invalidated.getter();
    v32 = v44;
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
    sub_100504858(&qword_100AD2220, &type metadata accessor for RedactionReasons);
    sub_1000F24EC(&qword_100AD2228);
    sub_10000B58C(&qword_100AD2230, &qword_100AD2228);
    v31 = v42;
    v32 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  v33 = sub_100504708();
  View.redacted(reason:)();
  (*(v43 + 8))(v31, v32);
  sub_100004F84(v10, &qword_100AE6D78);
  v46 = v8;
  v47 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.focusable(_:)();
  (*(v39 + 8))(v13, v11);
  v46 = v11;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v41;
  View.focusEffectDisabled(_:)();
  return (*(v40 + 8))(v16, v35);
}

uint64_t sub_10050141C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = sub_1000F24EC(&qword_100AE6DB0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v45 - v7;
  v49 = sub_1000F24EC(&qword_100AE6DB8);
  v53 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v56 = sub_1000F24EC(&qword_100AE6DC0);
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  v59 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v60 = Text.init(_:tableName:bundle:comment:)();
  v61 = v16;
  v62 = v17 & 1;
  v63 = v18;
  sub_1000F24EC(&qword_100AE6DC8);
  sub_10000B58C(&qword_100AE6DD0, &qword_100AE6DC8);
  v47 = v15;
  Section<>.init(header:content:)();
  v58 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v60 = Text.init(_:tableName:bundle:comment:)();
  v61 = v19;
  v62 = v20 & 1;
  v63 = v21;
  sub_1000F24EC(&qword_100AE6DD8);
  sub_10000B58C(&qword_100AE6DE0, &qword_100AE6DD8);
  v46 = v11;
  Section<>.init(header:content:)();
  v57 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v60 = Text.init(_:tableName:bundle:comment:)();
  v61 = v22;
  v62 = v23 & 1;
  v63 = v24;
  sub_1000F24EC(&qword_100AE6DE8);
  sub_10000B58C(&qword_100AE6DF0, &qword_100AE6DE8);
  v25 = v55;
  Section<>.init(header:content:)();
  KeyPath = swift_getKeyPath();
  LOWORD(v60) = 256;
  sub_1000F24EC(&qword_100AE6DF8);
  sub_10000B58C(&qword_100AE6E00, &qword_100AE6DF8);
  v27 = AnyView.init<A>(_:)();
  v28 = (v25 + *(v4 + 44));
  v29 = v25;
  *v28 = KeyPath;
  v28[1] = v27;
  v30 = *(v52 + 16);
  v31 = v54;
  v32 = v56;
  v30(v54, v15, v56);
  v45 = *(v53 + 16);
  v33 = v48;
  v34 = v11;
  v35 = v49;
  v45(v48, v34, v49);
  v36 = v29;
  v37 = v50;
  sub_1000082B4(v36, v50, &qword_100AE6DB0);
  v38 = v51;
  v30(v51, v31, v32);
  v39 = sub_1000F24EC(&qword_100AE6E08);
  v45(&v38[*(v39 + 48)], v33, v35);
  sub_1000082B4(v37, &v38[*(v39 + 64)], &qword_100AE6DB0);
  sub_100004F84(v55, &qword_100AE6DB0);
  v40 = *(v53 + 8);
  v41 = v35;
  v40(v46, v35);
  v42 = *(v52 + 8);
  v43 = v56;
  v42(v47, v56);
  sub_100004F84(v37, &qword_100AE6DB0);
  v40(v33, v41);
  return (v42)(v54, v43);
}

uint64_t sub_100501B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v98 = sub_1000F24EC(&qword_100AE6EB0);
  __chkstk_darwin(v98);
  v100 = &v87[-v3];
  v99 = sub_1000F24EC(&qword_100AE6EB8);
  __chkstk_darwin(v99);
  v97 = &v87[-v4];
  v101 = type metadata accessor for Font.TextStyle();
  v94 = *(v101 - 8);
  __chkstk_darwin(v101);
  v93 = &v87[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for InsightsPreviousStreakView(0);
  __chkstk_darwin(v6);
  v96 = &v87[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v95 = &v87[-v9];
  __chkstk_darwin(v10);
  v12 = &v87[-v11];
  __chkstk_darwin(v13);
  v15 = &v87[-v14];
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v87[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1000F24EC(&qword_100AE6EC0);
  __chkstk_darwin(v20 - 8);
  v105 = &v87[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v104 = &v87[-v23];
  v24 = type metadata accessor for InsightsCurrentStreakView();
  __chkstk_darwin(v24 - 8);
  v103 = &v87[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v102 = &v87[-v27];
  sub_10085EF3C(&v87[-v27]);
  v28 = *(a1 + *(type metadata accessor for InsightsBentoView() + 36) + 8);

  if ((v28 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
  }

  v30 = sub_1006D9B54();

  if (v30)
  {
    v31 = v6[5];
    v32 = type metadata accessor for StreakSummary();
    v33 = *(*(v32 - 8) + 56);
    v90 = v33;
    v33(&v15[v31], 1, 1, v32);
    v33(&v15[v6[6]], 1, 1, v32);
    *v15 = 0;
    v34 = &v15[v6[7]];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = &v15[v6[8]];
    *v35 = swift_getKeyPath();
    *(v35 + 1) = 0;
    *(v35 + 8) = 0;
    v36 = &v15[v6[9]];
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    v37 = v6[10];
    *&v15[v37] = swift_getKeyPath();
    v92 = sub_1000F24EC(&qword_100AE27B8);
    swift_storeEnumTagMultiPayload();
    v38 = &v15[v6[11]];
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    v39 = v6[12];
    *&v15[v39] = swift_getKeyPath();
    v91 = sub_1000F24EC(&qword_100AD9990);
    swift_storeEnumTagMultiPayload();
    v40 = &v15[v6[13]];
    type metadata accessor for InsightsDataManager(0);
    v89 = sub_100504858(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    *v40 = Environment.init<A>(_:)();
    v40[8] = v41 & 1;
    *&v107 = 0x4046000000000000;
    v88 = enum case for Font.TextStyle.title(_:);
    v94 = *(v94 + 104);
    v42 = v93;
    (v94)(v93);
    sub_10009BA68();
    ScaledMetric.init(wrappedValue:relativeTo:)();
    v43 = v90;
    v90(&v12[v6[5]], 1, 1, v32);
    v43(&v12[v6[6]], 1, 1, v32);
    *v12 = 1;
    v44 = &v12[v6[7]];
    *v44 = swift_getKeyPath();
    v44[8] = 0;
    v45 = &v12[v6[8]];
    *v45 = swift_getKeyPath();
    *(v45 + 1) = 0;
    *(v45 + 8) = 0;
    v46 = &v12[v6[9]];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    v47 = v6[10];
    *&v12[v47] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v48 = &v12[v6[11]];
    *v48 = swift_getKeyPath();
    v48[8] = 0;
    v49 = v6[12];
    *&v12[v49] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v50 = &v12[v6[13]];
    *v50 = Environment.init<A>(_:)();
    v50[8] = v51 & 1;
    *&v107 = 0x4046000000000000;
    (v94)(v42, v88, v101);
    ScaledMetric.init(wrappedValue:relativeTo:)();
    v52 = v95;
    sub_100504EA8(v15, v95, type metadata accessor for InsightsPreviousStreakView);
    v53 = v96;
    sub_100504EA8(v12, v96, type metadata accessor for InsightsPreviousStreakView);
    v54 = v97;
    sub_100504EA8(v52, v97, type metadata accessor for InsightsPreviousStreakView);
    v55 = sub_1000F24EC(&qword_100AE6EE0);
    sub_100504EA8(v53, &v54[*(v55 + 48)], type metadata accessor for InsightsPreviousStreakView);
    sub_100504F10(v53, type metadata accessor for InsightsPreviousStreakView);
    sub_100504F10(v52, type metadata accessor for InsightsPreviousStreakView);
    sub_1000082B4(v54, v100, &qword_100AE6EB8);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AD3BC8);
    sub_10000B58C(&qword_100AE6ED8, &qword_100AE6EB8);
    sub_10012352C();
    v56 = v104;
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v54, &qword_100AE6EB8);
    sub_100504F10(v12, type metadata accessor for InsightsPreviousStreakView);
    sub_100504F10(v15, type metadata accessor for InsightsPreviousStreakView);
  }

  else
  {
    if (!sub_10050283C())
    {
      v80 = sub_1000F24EC(&qword_100AE6EC8);
      v56 = v104;
      (*(*(v80 - 8) + 56))(v104, 1, 1, v80);
      goto LABEL_9;
    }

    LocalizedStringKey.init(stringLiteral:)();
    v57 = Text.init(_:tableName:bundle:comment:)();
    v59 = v58;
    v61 = v60;
    static Font.headline.getter();
    v62 = Text.font(_:)();
    v64 = v63;
    v66 = v65;

    sub_1000594D0(v57, v59, v61 & 1);

    LODWORD(v107) = static HierarchicalShapeStyle.secondary.getter();
    v67 = Text.foregroundStyle<A>(_:)();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    sub_1000594D0(v62, v64, v66 & 1);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v74 = v71 & 1;
    v114 = v71 & 1;
    v75 = v100;
    *v100 = v67;
    v75[1] = v69;
    *(v75 + 16) = v74;
    v75[3] = v73;
    v76 = v112;
    *(v75 + 6) = v111;
    *(v75 + 7) = v76;
    *(v75 + 8) = v113;
    v77 = v108;
    *(v75 + 2) = v107;
    *(v75 + 3) = v77;
    v78 = v110;
    *(v75 + 4) = v109;
    *(v75 + 5) = v78;
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AD3BC8);
    sub_10000B58C(&qword_100AE6ED8, &qword_100AE6EB8);
    sub_10012352C();
    v56 = v104;
    _ConditionalContent<>.init(storage:)();
  }

  v79 = sub_1000F24EC(&qword_100AE6EC8);
  (*(*(v79 - 8) + 56))(v56, 0, 1, v79);
LABEL_9:
  v81 = v102;
  v82 = v103;
  sub_100504EA8(v102, v103, type metadata accessor for InsightsCurrentStreakView);
  v83 = v105;
  sub_1000082B4(v56, v105, &qword_100AE6EC0);
  v84 = v106;
  sub_100504EA8(v82, v106, type metadata accessor for InsightsCurrentStreakView);
  v85 = sub_1000F24EC(&qword_100AE6ED0);
  sub_1000082B4(v83, v84 + *(v85 + 48), &qword_100AE6EC0);
  sub_100004F84(v56, &qword_100AE6EC0);
  sub_100504F10(v81, type metadata accessor for InsightsCurrentStreakView);
  sub_100004F84(v83, &qword_100AE6EC0);
  return sub_100504F10(v82, type metadata accessor for InsightsCurrentStreakView);
}

BOOL sub_10050283C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for InsightsBentoView() + 32);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
    if (v6 == 2)
    {
      return 1;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v6, 0);
    v9 = *(v2 + 8);
    v9(v4, v1);
    if (v12[15] == 2)
    {
      return 1;
    }

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v6, 0);
    v9(v4, v1);
    v7 = v12[14];
  }

  return v7 == 3;
}

uint64_t sub_100502A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v132 = type metadata accessor for ColorResource();
  v130 = *(v132 - 8);
  __chkstk_darwin(v132);
  v128 = &v115[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = sub_1000F24EC(&qword_100ADB538);
  __chkstk_darwin(v123);
  v124 = &v115[-v4];
  v125 = sub_1000F24EC(&qword_100AE6E40);
  __chkstk_darwin(v125);
  v127 = &v115[-v5];
  v126 = sub_1000F24EC(&qword_100AE6E48);
  __chkstk_darwin(v126);
  v131 = &v115[-v6];
  v136 = sub_1000F24EC(&qword_100AE6E50);
  __chkstk_darwin(v136);
  v129 = &v115[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v133 = &v115[-v9];
  v135 = sub_1000F24EC(&qword_100AE6E58);
  __chkstk_darwin(v135);
  v11 = &v115[-v10];
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v115[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1000F24EC(&qword_100AE6E60);
  __chkstk_darwin(v16 - 8);
  v149 = &v115[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v143 = &v115[-v19];
  v20 = type metadata accessor for InsightsYearlyEntriesView(0);
  __chkstk_darwin(v20 - 8);
  v150 = &v115[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v139 = &v115[-v23];
  sub_10027E770(&v115[-v23]);
  LOBYTE(v189) = 1;
  LOBYTE(v172) = 1;
  LOBYTE(v165) = 1;
  KeyPath = swift_getKeyPath();
  LOBYTE(v158) = 0;
  v147 = swift_getKeyPath();
  LOBYTE(v206) = 0;
  v24 = type metadata accessor for InsightsDataManager(0);
  v137 = sub_100504858(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  v146 = Environment.init<A>(_:)();
  v145 = v25 & 1;
  v199 = v25 & 1;
  v138 = v189;
  v140 = v172;
  v141 = v165;
  v142 = v158;
  v144 = v206;
  v26 = type metadata accessor for InsightsBentoView();
  v27 = (a1 + *(v26 + 36));
  v28 = *v27;
  v29 = *(v27 + 8);

  if ((v29 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v122 = v26;
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v26 = v122;
    (*(v13 + 8))(v15, v12);
    v28 = v189;
  }

  if (sub_1000A51A0())
  {

LABEL_6:
    v32 = a1 + *(v26 + 28);
    v33 = *(v32 + 8);
    v133 = *v32;
    v34 = swift_getKeyPath();
    v132 = swift_getKeyPath();
    v35 = swift_getKeyPath();

    v36 = Environment.init<A>(_:)();
    v38 = v37;
    v39 = static Font.subheadline.getter();
    LOBYTE(v206) = 0;
    v199 = 0;
    v197 = 0;
    v196 = v38 & 1;
    v40 = v133;
    *v11 = 0;
    *(v11 + 1) = v40;
    *(v11 + 2) = v33;
    *(v11 + 3) = v34;
    *(v11 + 4) = 0;
    *(v11 + 20) = 0;
    *(v11 + 42) = v158;
    *(v11 + 23) = WORD2(v158);
    *(v11 + 6) = v132;
    v11[56] = 0;
    *(v11 + 15) = *(&v189 + 3);
    *(v11 + 57) = v189;
    *(v11 + 8) = v35;
    v11[72] = 0;
    *(v11 + 19) = *(&v172 + 3);
    *(v11 + 73) = v172;
    *(v11 + 10) = v36;
    v11[88] = v38 & 1;
    *(v11 + 23) = *(&v165 + 3);
    *(v11 + 89) = v165;
    *(v11 + 12) = 0;
    *(v11 + 13) = v39;
    *(v11 + 14) = 3;
    swift_storeEnumTagMultiPayload();
    sub_1005048A0();
    sub_1005048F4();
    v41 = v143;
    _ConditionalContent<>.init(storage:)();
    v42 = sub_1000F24EC(&qword_100AE6E98);
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    goto LABEL_7;
  }

  swift_getKeyPath();
  *&v189 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = *(*(v28 + OBJC_IVAR____TtC7Journal19InsightsDataManager__places) + 16);

  if (v31)
  {
    goto LABEL_6;
  }

  if (sub_10050283C())
  {
    v122 = v24;
    LocalizedStringKey.init(stringLiteral:)();
    v67 = Text.init(_:tableName:bundle:comment:)();
    v69 = v68;
    v71 = v70;
    v72 = Text.font(_:)();
    v118 = v73;
    v119 = v72;
    v116 = v74;
    v117 = v75;
    sub_1000594D0(v67, v69, v71 & 1);

    v76 = static HierarchicalShapeStyle.secondary.getter();
    v77 = v123;
    v78 = *(v123 + 36);
    v79 = enum case for BlendMode.plusDarker(_:);
    v80 = type metadata accessor for BlendMode();
    v81 = *(*(v80 - 8) + 104);
    v82 = v124;
    v81(&v124[v78], v79, v80);
    v81(v82 + *(v77 + 40), enum case for BlendMode.plusLighter(_:), v80);
    *v82 = v76;
    sub_10000B58C(&qword_100ADB5B8, &qword_100ADB538);
    LOBYTE(v76) = v116;
    v83 = v118;
    v84 = v119;
    v123 = Text.foregroundStyle<A>(_:)();
    v120 = v86;
    v121 = v85;
    LOBYTE(v81) = v87;
    sub_1000594D0(v84, v83, v76 & 1);

    sub_100004F84(v82, &qword_100ADB538);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    LOBYTE(v80) = v81 & 1;
    LOBYTE(v165) = v81 & 1;
    v88 = swift_getKeyPath();
    v89 = v127;
    v90 = &v127[*(v125 + 36)];
    v91 = *(sub_1000F24EC(&qword_100AD20A8) + 28);
    v92 = enum case for ColorScheme.dark(_:);
    v93 = type metadata accessor for ColorScheme();
    (*(*(v93 - 8) + 104))(v90 + v91, v92, v93);
    *v90 = swift_getKeyPath();
    v94 = v120;
    v95 = v121;
    *v89 = v123;
    *(v89 + 8) = v95;
    *(v89 + 16) = v80;
    *(v89 + 24) = v94;
    v96 = v194;
    *(v89 + 96) = v193;
    *(v89 + 112) = v96;
    *(v89 + 128) = v195;
    v97 = v190;
    *(v89 + 32) = v189;
    *(v89 + 48) = v97;
    v98 = v192;
    *(v89 + 64) = v191;
    *(v89 + 80) = v98;
    *(v89 + 144) = v88;
    *(v89 + 152) = 1;
    v99 = swift_getKeyPath();
    v100 = v131;
    sub_100021CEC(v89, v131, &qword_100AE6E40);
    v101 = &v100[*(v126 + 36)];
    *v101 = v99;
    v101[8] = 0;
    sub_1000F24EC(&qword_100AD3CA8);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_100940050;
    if (qword_100AD0C98 != -1)
    {
      swift_once();
    }

    v103 = v132;
    v104 = sub_10000617C(v132, qword_100B314D8);
    v105 = *(v130 + 16);
    v106 = v128;
    v105(v128, v104, v103);
    *(v102 + 32) = Color.init(_:)();
    if (qword_100AD0C90 != -1)
    {
      swift_once();
    }

    v107 = sub_10000617C(v103, qword_100B314C0);
    v105(v106, v107, v103);
    *(v102 + 40) = Color.init(_:)();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
    Gradient.init(colors:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v108 = swift_getKeyPath();
    v172 = v206;
    v173 = v207;
    v174 = v208;
    LOWORD(v175) = 256;
    sub_1000F24EC(&qword_100ADB100);
    sub_10000B58C(&qword_100ADB108, &qword_100ADB100);
    v109 = AnyView.init<A>(_:)();
    v110 = v129;
    sub_100021CEC(v100, v129, &qword_100AE6E48);
    v111 = &v110[*(v136 + 36)];
    *v111 = v108;
    v111[1] = v109;
    v112 = v133;
    sub_100021CEC(v110, v133, &qword_100AE6E50);
    sub_1000082B4(v112, v11, &qword_100AE6E50);
    swift_storeEnumTagMultiPayload();
    sub_1005048A0();
    sub_1005048F4();
    v41 = v143;
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v112, &qword_100AE6E50);
    v113 = sub_1000F24EC(&qword_100AE6E98);
    (*(*(v113 - 8) + 56))(v41, 0, 1, v113);
  }

  else
  {
    v114 = sub_1000F24EC(&qword_100AE6E98);
    v41 = v143;
    (*(*(v114 - 8) + 56))(v143, 1, 1, v114);
  }

LABEL_7:
  LOBYTE(v189) = 1;
  LOBYTE(v172) = 1;
  LOBYTE(v165) = 1;
  v132 = swift_getKeyPath();
  LOBYTE(v158) = 0;
  v131 = swift_getKeyPath();
  v199 = 0;
  v137 = Environment.init<A>(_:)();
  LODWORD(v130) = v43 & 1;
  v197 = v43 & 1;
  v44 = v189;
  LODWORD(v127) = v189;
  v45 = v172;
  LODWORD(v128) = v172;
  LODWORD(v135) = v165;
  LODWORD(v129) = v158;
  LODWORD(v136) = v199;
  v46 = v150;
  v133 = type metadata accessor for InsightsYearlyEntriesView;
  sub_100504EA8(v139, v150, type metadata accessor for InsightsYearlyEntriesView);
  v47 = v149;
  sub_1000082B4(v41, v149, &qword_100AE6E60);
  v48 = v134;
  sub_100504EA8(v46, v134, type metadata accessor for InsightsYearlyEntriesView);
  v49 = sub_1000F24EC(&qword_100AE6EA0);
  v50 = (v48 + v49[12]);
  *&v158 = 0;
  BYTE8(v158) = v138;
  *(&v158 + 9) = *v205;
  HIDWORD(v158) = *&v205[3];
  *&v159 = 0;
  BYTE8(v159) = v140;
  *(&v159 + 9) = *v204;
  HIDWORD(v159) = *&v204[3];
  *&v160 = 0;
  BYTE8(v160) = v141;
  *(&v160 + 9) = *v203;
  HIDWORD(v160) = *&v203[3];
  *&v161 = KeyPath;
  BYTE8(v161) = v142;
  HIDWORD(v161) = *&v202[3];
  *(&v161 + 9) = *v202;
  v162 = v147;
  LOBYTE(v163) = 0;
  BYTE1(v163) = v144;
  WORD3(v163) = v201;
  *(&v163 + 2) = v200;
  *(&v163 + 1) = v146;
  LOBYTE(v164) = v145;
  *(&v164 + 1) = *v198;
  DWORD1(v164) = *&v198[3];
  *(&v164 + 1) = 0;
  v51 = v159;
  *v50 = v158;
  v50[1] = v51;
  v52 = v160;
  v53 = v161;
  v54 = v164;
  v50[5] = v163;
  v50[6] = v54;
  v55 = v162;
  v50[3] = v53;
  v50[4] = v55;
  v50[2] = v52;
  sub_1000082B4(v47, v48 + v49[16], &qword_100AE6E60);
  v56 = (v48 + v49[20]);
  *&v165 = 0;
  BYTE8(v165) = v44;
  *(&v165 + 9) = *v157;
  HIDWORD(v165) = *&v157[3];
  *&v166 = 0;
  BYTE8(v166) = v45;
  *(&v166 + 9) = *v156;
  HIDWORD(v166) = *&v156[3];
  *&v167 = 0;
  BYTE8(v167) = v135;
  *(&v167 + 9) = *v155;
  HIDWORD(v167) = *&v155[3];
  v58 = v131;
  v57 = v132;
  v168 = v132;
  LOBYTE(v169) = 0;
  LOBYTE(v47) = v129;
  BYTE1(v169) = v129;
  *(&v169 + 2) = v153;
  WORD3(v169) = v154;
  *(&v169 + 1) = v131;
  LOBYTE(v170) = v136;
  *(&v170 + 1) = *v152;
  DWORD1(v170) = *&v152[3];
  *(&v170 + 1) = v137;
  v59 = v130;
  LOBYTE(v171) = v130;
  DWORD1(v171) = *&v151[3];
  *(&v171 + 1) = *v151;
  *(&v171 + 1) = 0;
  v60 = v166;
  *v56 = v165;
  v56[1] = v60;
  v61 = v167;
  v62 = v168;
  v63 = v171;
  v56[5] = v170;
  v56[6] = v63;
  v64 = v169;
  v56[3] = v62;
  v56[4] = v64;
  v56[2] = v61;
  sub_100504BD4(&v158, &v189);
  sub_100504C30(&v165, &v189);
  sub_100004F84(v143, &qword_100AE6E60);
  v65 = v133;
  sub_100504F10(v139, v133);
  *&v172 = 0;
  BYTE8(v172) = v127;
  *(&v172 + 9) = *v157;
  HIDWORD(v172) = *&v157[3];
  *&v173 = 0;
  BYTE8(v173) = v128;
  *(&v173 + 9) = *v156;
  HIDWORD(v173) = *&v156[3];
  v174 = 0;
  LOBYTE(v175) = v135;
  HIDWORD(v175) = *&v155[3];
  *(&v175 + 1) = *v155;
  v176 = v57;
  v177 = 0;
  v178 = 0;
  v179 = v47;
  v181 = v154;
  v180 = v153;
  v182 = v58;
  v183 = v136;
  *v184 = *v152;
  *&v184[3] = *&v152[3];
  v185 = v137;
  v186 = v59;
  *&v187[3] = *&v151[3];
  *v187 = *v151;
  v188 = 0;
  sub_100504C8C(&v172);
  sub_100004F84(v149, &qword_100AE6E60);
  *&v189 = 0;
  BYTE8(v189) = v138;
  *(&v189 + 9) = *v205;
  HIDWORD(v189) = *&v205[3];
  *&v190 = 0;
  BYTE8(v190) = v140;
  *(&v190 + 9) = *v204;
  HIDWORD(v190) = *&v204[3];
  *&v191 = 0;
  BYTE8(v191) = v141;
  HIDWORD(v191) = *&v203[3];
  *(&v191 + 9) = *v203;
  *&v192 = KeyPath;
  BYTE8(v192) = v142;
  *(&v192 + 9) = *v202;
  HIDWORD(v192) = *&v202[3];
  v193 = v147;
  LOBYTE(v194) = 0;
  BYTE1(v194) = v144;
  *(&v194 + 2) = v200;
  WORD3(v194) = v201;
  *(&v194 + 1) = v146;
  LOBYTE(v195) = v145;
  DWORD1(v195) = *&v198[3];
  *(&v195 + 1) = *v198;
  *(&v195 + 1) = 0;
  sub_100504CE0(&v189);
  return sub_100504F10(v150, v65);
}

uint64_t sub_100503D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v52 = sub_1000F24EC(&qword_100AE6E18);
  __chkstk_darwin(v52);
  v54 = (v45 - v3);
  v53 = type metadata accessor for InsightsHighlightsView(0);
  __chkstk_darwin(v53);
  v46 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JournalFeatureFlags();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE6E20);
  __chkstk_darwin(v8 - 8);
  v56 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = v45 - v11;
  v47 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v47);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v45 - v15;
  v17 = type metadata accessor for InsightsCalendarView(0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v55 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v45 - v21;
  v23 = type metadata accessor for InsightsBentoView();
  v24 = *(v23 + 20);
  v45[0] = sub_1000F24EC(&qword_100AD3A58);
  v45[1] = v24;
  State.projectedValue.getter();
  v25 = *(v23 + 24);
  v51 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = v26[1];
  v29 = type metadata accessor for DateComponents();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  sub_1000082B4(v16, v13, &unk_100AD9850);

  State.init(wrappedValue:)();
  v30 = v27;
  sub_100004F84(v16, &unk_100AD9850);
  v31 = &v22[*(v18 + 32)];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = &v22[*(v18 + 36)];
  *v32 = v30;
  v32[1] = v28;
  v33 = v48;
  v34 = v49;
  (*(v48 + 104))(v7, enum case for JournalFeatureFlags.insightsHighlights(_:), v49);
  LOBYTE(v31) = JournalFeatureFlags.isEnabled.getter();
  (*(v33 + 8))(v7, v34);
  if (v31)
  {
    State.wrappedValue.getter();

    v35 = v46;
    sub_100121DC4(v16, v30, v28, v46);
    sub_100504EA8(v35, v54, type metadata accessor for InsightsHighlightsView);
    swift_storeEnumTagMultiPayload();
    sub_100504858(&qword_100AE6E38, type metadata accessor for InsightsHighlightsView);
    v36 = v50;
    _ConditionalContent<>.init(storage:)();
    sub_100504F10(v35, type metadata accessor for InsightsHighlightsView);
  }

  else
  {
    v37 = v54;
    v36 = v50;
    if (!sub_10050283C())
    {
      v38 = 1;
      goto LABEL_7;
    }

    *v37 = static Color.clear.getter();
    swift_storeEnumTagMultiPayload();
    sub_100504858(&qword_100AE6E38, type metadata accessor for InsightsHighlightsView);
    _ConditionalContent<>.init(storage:)();
  }

  v38 = 0;
LABEL_7:
  v39 = sub_1000F24EC(&qword_100AE6E28);
  (*(*(v39 - 8) + 56))(v36, v38, 1, v39);
  v40 = v55;
  sub_100504EA8(v22, v55, type metadata accessor for InsightsCalendarView);
  v41 = v56;
  sub_1000082B4(v36, v56, &qword_100AE6E20);
  v42 = v57;
  sub_100504EA8(v40, v57, type metadata accessor for InsightsCalendarView);
  v43 = sub_1000F24EC(&qword_100AE6E30);
  sub_1000082B4(v41, v42 + *(v43 + 48), &qword_100AE6E20);
  sub_100004F84(v36, &qword_100AE6E20);
  sub_100504F10(v22, type metadata accessor for InsightsCalendarView);
  sub_100004F84(v41, &qword_100AE6E20);
  return sub_100504F10(v40, type metadata accessor for InsightsCalendarView);
}

uint64_t sub_100504420@<X0>(_BYTE *a1@<X8>)
{
  sub_100504E54();
  result = ContainerValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1005044BC@<X0>(void *a1@<X8>)
{
  sub_100504804();
  result = ContainerValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10050450C()
{
  sub_100504804();

  return ContainerValues.subscript.setter();
}

uint64_t sub_10050456C@<X0>(uint64_t a1@<X8>)
{
  sub_100217998();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1005045C4()
{
  sub_100217998();

  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100504684@<X0>(_BYTE *a1@<X8>)
{
  result = DynamicTypeSize.isAccessibilitySize.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1005046B4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100504708()
{
  result = qword_100AE6DA0;
  if (!qword_100AE6DA0)
  {
    sub_1000F2A18(&qword_100AE6D78);
    sub_10000B58C(&qword_100AE6DA8, &qword_100AE6D98);
    sub_10000B58C(&qword_100AD2348, &qword_100AD2350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6DA0);
  }

  return result;
}

unint64_t sub_100504804()
{
  result = qword_100AE6E10;
  if (!qword_100AE6E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6E10);
  }

  return result;
}

uint64_t sub_100504858(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005048A0()
{
  result = qword_100AE6E68;
  if (!qword_100AE6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6E68);
  }

  return result;
}

unint64_t sub_1005048F4()
{
  result = qword_100AE6E70;
  if (!qword_100AE6E70)
  {
    sub_1000F2A18(&qword_100AE6E50);
    sub_1005049AC();
    sub_10000B58C(&qword_100ADB138, &qword_100ADB140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6E70);
  }

  return result;
}

unint64_t sub_1005049AC()
{
  result = qword_100AE6E78;
  if (!qword_100AE6E78)
  {
    sub_1000F2A18(&qword_100AE6E48);
    sub_100504A64();
    sub_10000B58C(&qword_100AE5EC0, &qword_100AE5EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6E78);
  }

  return result;
}

unint64_t sub_100504A64()
{
  result = qword_100AE6E80;
  if (!qword_100AE6E80)
  {
    sub_1000F2A18(&qword_100AE6E40);
    sub_100504B1C();
    sub_10000B58C(&qword_100AD2108, &qword_100AD20A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6E80);
  }

  return result;
}

unint64_t sub_100504B1C()
{
  result = qword_100AE6E88;
  if (!qword_100AE6E88)
  {
    sub_1000F2A18(&qword_100AE6E90);
    sub_10012352C();
    sub_10000B58C(&qword_100AD2428, &qword_100AD2430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6E88);
  }

  return result;
}

uint64_t sub_100504D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_100504E54()
{
  result = qword_100AE6EA8;
  if (!qword_100AE6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6EA8);
  }

  return result;
}

uint64_t sub_100504EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100504F10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100504F70()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE6EE8);
  v1 = sub_10000617C(v0, qword_100AE6EE8);
  if (qword_100AD0208 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100505038(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v6 + 628) = a5;
  *(v6 + 627) = a4;
  *(v6 + 504) = a3;
  *(v6 + 512) = a6;
  *(v6 + 488) = a1;
  *(v6 + 496) = a2;
  v7 = sub_1000F24EC(&qword_100AE6FA8);
  *(v6 + 520) = v7;
  *(v6 + 528) = *(v7 - 8);
  *(v6 + 536) = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170);
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = type metadata accessor for MainActor();
  *(v6 + 568) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 576) = v9;
  *(v6 + 584) = v8;

  return _swift_task_switch(sub_100505190, v9, v8);
}

uint64_t sub_100505190()
{
  v1 = *(v0 + 504);
  v2 = *(v1 + 16);
  if (v2)
  {
    v36 = *(v0 + 628);
    v35 = **(v0 + 496);
    v3 = v1 + 32;
    v4 = type metadata accessor for TaskPriority();
    v5 = *(v4 - 8);
    v34 = *(v5 + 56);
    v33 = (v5 + 48);
    v32 = (v5 + 8);
    do
    {
      v7 = *(v0 + 552);
      v8 = *(v0 + 544);
      v9 = *(v0 + 512);
      v10 = *(v0 + 627);
      *(v0 + 16) = *v3;
      v12 = *(v3 + 32);
      v11 = *(v3 + 48);
      v13 = *(v3 + 16);
      *(v0 + 80) = *(v3 + 64);
      *(v0 + 48) = v12;
      *(v0 + 64) = v11;
      *(v0 + 32) = v13;
      v34(v7, 1, 1, v4);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      v16 = *(v0 + 64);
      *(v14 + 64) = *(v0 + 48);
      *(v14 + 80) = v16;
      *(v14 + 96) = *(v0 + 80);
      v17 = *(v0 + 32);
      *(v14 + 32) = *(v0 + 16);
      *(v14 + 48) = v17;
      *(v14 + 104) = v10;
      *(v14 + 105) = v36;
      *(v14 + 112) = v9;
      sub_1001E6194(v7, v8);
      v18 = (*v33)(v8, 1, v4);
      v19 = *(v0 + 544);
      v20 = *(v0 + 512);
      if (v18 == 1)
      {
        sub_10032C54C(v0 + 16, v0 + 88);
        sub_10032C54C(v0 + 16, v0 + 160);
        v21 = v20;
        sub_1003EAA74(v19);
        if (*v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_10032C54C(v0 + 16, v0 + 232);
        sub_10032C54C(v0 + 16, v0 + 304);
        v24 = v20;
        TaskPriority.rawValue.getter();
        (*v32)(v19, v4);
        if (*v15)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = dispatch thunk of Actor.unownedExecutor.getter();
          v23 = v25;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = 0;
LABEL_9:
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_10095A540;
      *(v26 + 24) = v14;

      sub_1000F24EC(&qword_100AE2BF0);
      v27 = v23 | v22;
      if (v23 | v22)
      {
        v27 = v0 + 432;
        *(v0 + 432) = 0;
        *(v0 + 440) = 0;
        *(v0 + 448) = v22;
        *(v0 + 456) = v23;
      }

      v6 = *(v0 + 552);
      *(v0 + 464) = 1;
      *(v0 + 472) = v27;
      *(v0 + 480) = v35;
      swift_task_create();

      sub_10032C5A8(v0 + 16);
      sub_1003EAA74(v6);
      v3 += 72;
      --v2;
    }

    while (v2);
  }

  sub_1000F24EC(&qword_100AE2BF0);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 592) = _swiftEmptyArrayStorage;
  v28 = static MainActor.shared.getter();
  *(v0 + 600) = v28;
  v29 = swift_task_alloc();
  *(v0 + 608) = v29;
  *v29 = v0;
  v29[1] = sub_100505574;
  v30 = *(v0 + 520);

  return TaskGroup.Iterator.next(isolation:)(v0 + 376, v28, &protocol witness table for MainActor, v30);
}

uint64_t sub_100505574()
{
  v1 = *v0;

  v2 = *(v1 + 584);
  v3 = *(v1 + 576);

  return _swift_task_switch(sub_1005056B8, v3, v2);
}

uint64_t sub_1005056B8()
{
  v1 = *(v0 + 376);
  if (v1)
  {
    v3 = *(v0 + 384);
    v2 = *(v0 + 392);
    v4 = *(v0 + 400);
    v5 = *(v0 + 408);
    v20 = *(v0 + 416);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 592);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1003E67B0(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1003E67B0((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[7 * v9];
    *(v10 + 4) = v1;
    *(v10 + 40) = v3;
    *(v10 + 41) = BYTE1(v3) & 1;
    v11 = *(v0 + 616);
    *(v10 + 23) = *(v0 + 620);
    *(v10 + 42) = v11;
    *(v10 + 6) = v2;
    *(v10 + 56) = v4 & 1;
    *(v10 + 57) = BYTE1(v4) & 1;
    *(v10 + 58) = BYTE2(v4) & 1;
    v12 = *(v0 + 622);
    *(v10 + 63) = *(v0 + 626);
    *(v10 + 59) = v12;
    *(v10 + 8) = v5;
    *(v10 + 9) = v20;
    *(v0 + 592) = v7;
    v13 = static MainActor.shared.getter();
    *(v0 + 600) = v13;
    v14 = swift_task_alloc();
    *(v0 + 608) = v14;
    *v14 = v0;
    v14[1] = sub_100505574;
    v15 = *(v0 + 520);

    return TaskGroup.Iterator.next(isolation:)(v0 + 376, v13, &protocol witness table for MainActor, v15);
  }

  else
  {
    v16 = *(v0 + 592);
    v17 = *(v0 + 488);
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));

    *v17 = v16;

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10050591C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 40) = a4;
  *(v7 + 48) = a7;
  *(v7 + 57) = a6;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  return _swift_task_switch(sub_100505948, 0, 0);
}

uint64_t sub_100505948()
{
  v1 = *(v0 + 40);
  v2 = *v1;
  v3 = v1[1];
  v4 = _s15MOMapAnnotationCMa();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC7Journal10MapManager15MOMapAnnotation_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR____TtCC7Journal10MapManager15MOMapAnnotation_coordinate];
  *v7 = v2;
  *(v7 + 1) = v3;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  v27 = objc_msgSendSuper2((v0 + 16), "init");
  v8 = *(v1 + 32);
  v9 = *(v1 + 56);
  v11 = v1[2];
  v10 = v1[3];
  v12 = *(v0 + 40);
  if (v11)
  {
    v13 = *(v12 + 48);
    v14 = *(v12 + 40) & 0xFFFFFFFFFFFFLL;
    if ((v13 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v13) & 0xF;
    }

    v15 = v14 != 0;
    if (v14)
    {
      v16 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v12 + 64) > 150.0;
LABEL_8:
  v26 = *(v0 + 57);
  v17 = *(v0 + 56);
  v18 = *(v0 + 32);
  if (v8)
  {
    v19 = 1;
  }

  else
  {
    v19 = v10;
  }

  v20 = [*(v0 + 48) traitCollection];
  v21 = sub_100227858(v11, v9, v15, v16, v20);
  v23 = v22;

  *v18 = v27;
  *(v18 + 8) = v17;
  *(v18 + 9) = v9;
  *(v18 + 16) = v19;
  *(v18 + 24) = (v26 & 1) == 0;
  *(v18 + 25) = v15;
  *(v18 + 26) = v16;
  *(v18 + 32) = 0x4000000000000000;
  *(v18 + 40) = v21;
  *(v18 + 48) = v23;
  v24 = *(v0 + 8);

  return v24();
}

void *sub_100505B34(void *a1)
{
  v39 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v2 = *(v39 - 1);
  __chkstk_darwin(v39);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1[2] < 3uLL)
  {
  }

  else
  {
    if (qword_100ACFED8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100AE6EE8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[MOSuggestionAssetMapsClusterer] Building dendrogram", v8, 2u);
    }

    v9 = objc_allocWithZone(_s30MOSuggestionAssetMapsClustererCMa());

    v11 = sub_100525550(v10, 1.0);
    sub_100525868();
    v12 = sub_1005262F8();
    v13 = v12[2];
    if (v13)
    {
      v37 = v11;
      v52 = _swiftEmptyArrayStorage;
      sub_100199DC4(0, v13, 0);
      a1 = v52;
      v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v36 = v12;
      v15 = v12 + v14;
      v38 = *(v2 + 72);
      for (i = v13 - 1; ; --i)
      {
        sub_1005071CC(v15, v4);
        v17 = *v4;
        v18 = v4[1];
        v19 = (v4 + v39[10]);
        v21 = *v19;
        v20 = v19[1];
        v22 = v4[3];
        v23 = v22 < 2;
        v24 = v22 >= 2 ? v4[3] : 0;
        v25 = *(v4 + v39[9]);
        v26 = *(v4 + v39[11]);
        v27 = *(v4 + v39[12]);
        v28 = v25;

        sub_100507230(v4);
        v40[72] = v23;
        *&v41 = v17;
        *(&v41 + 1) = v18;
        *&v42 = v25;
        *(&v42 + 1) = v24;
        LOBYTE(v43) = v23;
        *(&v43 + 1) = v21;
        *&v44 = v20;
        BYTE8(v44) = v26;
        v45 = v27;
        v46[0] = v17;
        v46[1] = v18;
        v46[2] = v25;
        v46[3] = v24;
        v47 = v23;
        v48 = v21;
        v49 = v20;
        v50 = v26;
        v51 = v27;
        sub_10032C54C(&v41, v40);
        sub_10032C5A8(v46);
        v52 = a1;
        v30 = a1[2];
        v29 = a1[3];
        if (v30 >= v29 >> 1)
        {
          sub_100199DC4((v29 > 1), v30 + 1, 1);
          a1 = v52;
        }

        a1[2] = v30 + 1;
        v31 = &a1[9 * v30];
        *(v31 + 2) = v41;
        v32 = v42;
        v33 = v43;
        v34 = v44;
        v31[12] = v45;
        *(v31 + 4) = v33;
        *(v31 + 5) = v34;
        *(v31 + 3) = v32;
        if (!i)
        {
          break;
        }

        v15 += v38;
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return a1;
}

id sub_100505EC0(uint64_t a1, void *a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v118 = a7;
  if (a2)
  {
    v122 = a2;
  }

  else
  {
    v122 = sub_100505B34(a1);
  }

  v13 = objc_allocWithZone(MKStandardMapConfiguration);

  v123 = [v13 init];
  if (a3 > 6u)
  {

    v15 = &selRef_filterIncludingAllCategories;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      v15 = &selRef_filterIncludingAllCategories;
    }

    else
    {
      v15 = &selRef_filterExcludingAllCategories;
    }
  }

  v16 = [objc_opt_self() *v15];
  [v123 setPointOfInterestFilter:v16];

  v17 = *(a1 + 16);
  v124 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  if (a6)
  {
    v18 = objc_opt_self();
    v19 = [v18 mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v131.origin.x = v21;
    v131.origin.y = v23;
    v131.size.width = v25;
    v131.size.height = v27;
    v28 = CGRectGetWidth(v131) + -160.0;
    v29 = [v18 mainScreen];
    [v29 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v132.origin.x = v31;
    v132.origin.y = v33;
    v132.size.width = v35;
    v132.size.height = v37;
    v38 = CGRectGetHeight(v132) * 0.66;
  }

  else
  {
    v28 = *&a4;
    v38 = *&a5;
  }

  v39 = v122;
  if (a3 > 6u)
  {

    if (a8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v40 & 1) == 0)
    {
      v28 = sub_1006C4C84(a3);
      v38 = v41;
    }

    if (a8)
    {
LABEL_15:
      if (v17 == 1)
      {
        v130 = *(a1 + 96);
        v42 = *(a1 + 80);
        v128 = *(a1 + 64);
        v129 = v42;
        v43 = *(a1 + 48);
        v126 = *(a1 + 32);
        v127 = v43;
        v44 = v130;
        v45 = v43;
        if (v43)
        {
          v46 = *(&v128 + 1) & 0xFFFFFFFFFFFFLL;
          if ((v129 & 0x2000000000000000) != 0)
          {
            v46 = BYTE7(v129) & 0xF;
          }

          if (v46 || v130 <= 150.0)
          {
            v47 = v126;
            sub_10032C54C(&v126, v125);
            v48 = v45;

            v49 = [objc_opt_self() cameraLookingAtMapItem:v48 forViewSize:1 allowPitch:{v28, v38}];
            [v49 setCenterCoordinate:v47];
            [v124 setCamera:v49];
            sub_1000F24EC(&qword_100AD6510);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_100940080;
            v51 = v127;
            *(inited + 32) = v126;
            v52 = v130;
            v54 = v128;
            v53 = v129;
            *(inited + 48) = v51;
            *(inited + 64) = v54;
            *(inited + 80) = v53;
            *(inited + 96) = v52;
            sub_10032C54C(&v126, v125);
            v55 = sub_100528784(inited, 0, 0, 0, 1);
            v57 = v56;
            v59 = v58;
            v61 = v60;
            swift_setDeallocating();
            sub_10032C5A8(inited + 32);
            [v124 region];
            if (v44 <= 1.0 || v62 >= v59 || v63 >= v61)
            {

              sub_10032C5A8(&v126);
              goto LABEL_102;
            }

            if (sub_10032C294(v55, v57, v59, v61))
            {
              [v124 setRegion:{v55, v57, v59, v61}];
            }

            else
            {
              if (qword_100ACFED8 != -1)
              {
                swift_once();
              }

              v114 = type metadata accessor for Logger();
              sub_10000617C(v114, qword_100AE6EE8);
              v115 = Logger.logObject.getter();
              v116 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v115, v116))
              {
                v117 = swift_slowAlloc();
                *v117 = 0;
                _os_log_impl(&_mh_execute_header, v115, v116, "[MapSnapshot] cannot generate a valid region for the multipin map with naiveUncertaintyBasedRegion", v117, 2u);
              }
            }

            goto LABEL_44;
          }
        }

        if (a3 == 2)
        {

          v81 = 0;
          v80 = 1;
          v82 = 1;
          goto LABEL_72;
        }

        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v81 = 0;
        goto LABEL_64;
      }

      if (a3 > 3u || a3 <= 1u || a3 == 2)
      {
        v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v79)
        {
LABEL_58:
          v80 = 0;
          v81 = 1;
          goto LABEL_65;
        }

        if (a3 > 1u || !a3)
        {
          v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v83)
          {
            goto LABEL_58;
          }

          if (a3 <= 5u || a3 == 6)
          {
            v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v80 = 0;
LABEL_64:

LABEL_65:
            if (a3 == 2)
            {
              v82 = 1;
              goto LABEL_72;
            }

            goto LABEL_67;
          }
        }
      }

      v80 = 0;
      v81 = 1;
LABEL_67:
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v84)
      {
        v82 = 1;
LABEL_73:
        if (qword_100ACFED8 != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        sub_10000617C(v85, qword_100AE6EE8);
        swift_bridgeObjectRetain_n();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = v81;
          v121 = v80;
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v126 = v90;
          *v89 = 136316162;
          v91 = 0xEA00000000006564;
          v92 = 0xE500000000000000;
          v93 = 0x6C6C616D73;
          if (a3 != 6)
          {
            v93 = 0x657263536C6C7566;
            v92 = 0xEA00000000006E65;
          }

          v94 = 0xE600000000000000;
          v95 = 0x6D756964656DLL;
          if (a3 != 4)
          {
            v95 = 0x61546D756964656DLL;
            v94 = 0xEA00000000006C6CLL;
          }

          if (a3 <= 5u)
          {
            v93 = v95;
            v92 = v94;
          }

          v96 = 0x656772616CLL;
          if (a3 == 2)
          {
            v96 = 0x69576D756964656DLL;
          }

          else
          {
            v91 = 0xE500000000000000;
          }

          v97 = 0xE600000000000000;
          v98 = 0x656772614C78;
          if (!a3)
          {
            v98 = 0x6154656772614C78;
            v97 = 0xEA00000000006C6CLL;
          }

          if (a3 <= 1u)
          {
            v96 = v98;
            v91 = v97;
          }

          if (a3 <= 3u)
          {
            v99 = v96;
          }

          else
          {
            v99 = v93;
          }

          if (a3 <= 3u)
          {
            v100 = v91;
          }

          else
          {
            v100 = v92;
          }

          v101 = sub_100008458(v99, v100, &v126);

          *(v89 + 4) = v101;
          *(v89 + 12) = 2048;
          v102 = v122[2];

          *(v89 + 14) = v102;
          v39 = v122;

          *(v89 + 22) = 1024;
          *(v89 + 24) = v88 & 1;
          *(v89 + 28) = 1024;
          *(v89 + 30) = v121 & 1;
          *(v89 + 34) = 1024;
          *(v89 + 36) = v82 & 1;
          _os_log_impl(&_mh_execute_header, v86, v87, "[MapSnapshot] style: %s, numLocations: %ld, applyBottomPaddingForPlatter: %{BOOL}d, applyBottomPaddingForGradient: %{BOOL}d, shouldHaveHorizontalAspectRatio: %{BOOL}d", v89, 0x28u);
          sub_10000BA7C(v90);
          v81 = v88;

          v80 = v121;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v103 = sub_100528784(v39, v81 & 1, v80 & 1, v82 & 1, 1);
        v105 = v104;
        v107 = v106;
        v109 = v108;

        if (sub_10032C294(v103, v105, v107, v109))
        {
          [v124 setRegion:{v103, v105, v107, v109, v118}];
        }

        else
        {
          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&_mh_execute_header, v110, v111, "[MapSnapshot] cannot generate a valid region for the multipin map", v112, 2u);
          }
        }

        goto LABEL_102;
      }

      if (a3 <= 1u && a3)
      {
        v82 = 1;
      }

      else
      {
        v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

LABEL_72:

      goto LABEL_73;
    }
  }

  if (v17)
  {
    v130 = *(a1 + 96);
    v64 = *(a1 + 48);
    v126 = *(a1 + 32);
    v127 = v64;
    v65 = *(a1 + 80);
    v128 = *(a1 + 64);
    v129 = v65;
    v66 = fmin(v130 / 111000.0 * 1.5, 180.0);
    if (sub_10032C294(*&v126, *(&v126 + 1), v66, v66))
    {
      [v124 setRegion:{v126, v66, v66, v118}];
LABEL_102:
      [v124 setShowsBuildings:{1, v118}];
      [v124 setPreferredConfiguration:v123];
      [v124 setSize:{v28, v38}];
      [v124 setTraitCollection:v119];

      return v124;
    }

    sub_10032C54C(&v126, v125);
    if (qword_100ACFED8 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_10000617C(v75, qword_100AE6EE8);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "[MapSnapshot] cannot generate a valid region for the generic map", v78, 2u);
    }

LABEL_44:
    sub_10032C5A8(&v126);
    goto LABEL_102;
  }

  if (qword_100ACFED8 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_10000617C(v67, qword_100AE6EE8);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v126 = v71;
    *v70 = 136315138;
    v72 = Array.description.getter();
    v74 = sub_100008458(v72, v73, &v126);

    *(v70 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v68, v69, "[MapSnapshot] cannot generate valid options for the generic map since locations are nil: %s", v70, 0xCu);
    sub_10000BA7C(v71);
  }

  return v124;
}

uint64_t sub_1005071CC(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100507230(uint64_t a1)
{
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10050728C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 112) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  *(v3 + 40) = type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return _swift_task_switch(sub_10050732C, v5, v4);
}

uint64_t sub_10050732C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 112);
  v4 = sub_100505B34(v2);
  *(v0 + 72) = v4;
  v5 = v2[2] == 1;
  v6 = sub_100505EC0(v2, v4, v3, 0, 0, 1, v1, 1);
  *(v0 + 80) = v6;
  v7 = sub_1000F24EC(&qword_100AE2BF0);
  v8 = sub_1000F24EC(&qword_100AE6F98);
  v9 = static MainActor.shared.getter();
  *(v0 + 88) = v9;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  *(v10 + 25) = v5;
  *(v10 + 32) = v6;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_1005074C4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v7, v8, v9, &protocol witness table for MainActor, &unk_10095A520, v10, v7);
}

uint64_t sub_1005074C4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100507648, v3, v2);
}

uint64_t sub_100507648()
{

  v2 = v0[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v26 = v0;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 0;
    v27 = v2;
    do
    {
      v5 = v2 + v4;
      v6 = *(v2 + v4 + 32);
      v30 = *(v2 + v4 + 40);
      v7 = *(v2 + v4 + 41);
      v29 = *(v2 + v4 + 48);
      v8 = *(v2 + v4 + 56);
      v9 = *(v2 + v4 + 57);
      v28 = *(v5 + 58);
      v10 = *(v5 + 64);
      v11 = *(v5 + 72);
      v12 = *(v5 + 80);
      v13 = v6;
      sub_100507978(v11, v12);
      v14 = v13;
      sub_100507978(v11, v12);
      sub_10010CA14(v11, v12);
      v15 = v14;
      sub_100507978(v11, v12);

      objc_allocWithZone(_s19MOPOIAnnotationViewCMa());
      if (v7)
      {
        v16 = 256;
      }

      else
      {
        v16 = 0;
      }

      v17 = v9 == 0;
      v2 = v27;
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = 256;
      }

      v19 = v1 & 0xFF000000 | v8 | v18;
      if (v28)
      {
        v20 = 0x10000;
      }

      else
      {
        v20 = 0;
      }

      v1 = v19 | v20;
      sub_10010BD68(v14, v16 | v30, v29, v19 | v20, v11, v12, v10);

      sub_10010CA14(v11, v12);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 56;
      --v3;
    }

    while (v3);

    v0 = v26;
  }

  else
  {
  }

  v21 = v0[10];
  sub_1005079B8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setAnnotationViews:isa];

  v23 = v0[1];
  v24 = v0[10];

  return v23(v24);
}

uint64_t sub_1005078A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 25);
  v8 = *(v2 + 32);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100032EC8;

  return sub_100505038(a1, a2, v6, v9, v7, v8);
}

id sub_100507978(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

unint64_t sub_1005079B8()
{
  result = qword_100AE6FA0;
  if (!qword_100AE6FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE6FA0);
  }

  return result;
}

uint64_t sub_100507A04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 105);
  v7 = *(v1 + 112);
  v8 = *(v1 + 104);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_10050591C(a1, v4, v5, v1 + 32, v8, v6, v7);
}

uint64_t sub_100507ADC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return sub_100008D4C(a1, v4);
}

uint64_t sub_100507B94()
{
  v1 = OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___recordingViewModel;
  if (*(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___recordingViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___recordingViewModel);
  }

  else
  {
    v2 = sub_100507BFC(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100507BFC(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  type metadata accessor for AudioPlayer();
  swift_allocObject();
  v8 = sub_100084D8C();
  v9 = *(v8 + OBJC_IVAR____TtC7Journal11AudioPlayer_automaticallyPublishesNowPlayingInfo);
  *(v8 + OBJC_IVAR____TtC7Journal11AudioPlayer_automaticallyPublishesNowPlayingInfo) = 0;
  sub_1004C78CC(v9);
  v10 = *(a1 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_asset);
  if (v10)
  {
    v11 = v10;
    sub_100093C08(v7);
    v12 = type metadata accessor for URL();
    if ((*(*(v12 - 8) + 48))(v7, 1, v12) != 1)
    {
      sub_100004F84(v7, &unk_100AD6DD0);
      v30 = type metadata accessor for TaskPriority();
      (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
      type metadata accessor for MainActor();
      v31 = static MainActor.shared.getter();
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = &protocol witness table for MainActor;
      sub_1003E9628(0, 0, v4, &unk_10095A5B0, v32);

      v33 = v11;
      sub_10050A0E8(v33, v8);

      *(&v37 + 1) = type metadata accessor for AudioAsset();
      v38 = &off_100A82B98;
      *&v36 = v33;
      type metadata accessor for TranscriptionCoordinator(0);
      swift_allocObject();
      v34 = v33;
      v13 = sub_100241630(&v36);
      type metadata accessor for AudioAssetPersistenceStrategy();
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = v14 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_logger;
      v35 = qword_100AD0268;
      swift_retain_n();
      if (v35 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    sub_100004F84(v7, &unk_100AD6DD0);
  }

  type metadata accessor for TranscriptionCoordinator(0);
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  swift_allocObject();
  v13 = sub_100241630(&v36);
  type metadata accessor for AudioAssetPersistenceStrategy();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = v14 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_logger;
  v16 = qword_100AD0268;
  swift_retain_n();
  v10 = 0;
  if (v16 == -1)
  {
    goto LABEL_5;
  }

LABEL_14:
  swift_once();
LABEL_5:
  v17 = type metadata accessor for Logger();
  v18 = sub_10000617C(v17, qword_100B301D8);
  (*(*(v17 - 8) + 16))(v15, v18, v17);
  v19 = OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset;
  *(v14 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset) = 0;
  *(v14 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_pickerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v20 = *(v14 + v19);
  *(v14 + v19) = v10;

  *(v14 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_transcriptionCoordinator) = v13;
  v21 = *(a1 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_presentationStyle);
  if (v21 == 2)
  {
    v22 = 1;
  }

  else if (v21 == 3)
  {
    v22 = 2;
  }

  else
  {
    v22 = (v21 & 1) == 0;
  }

  type metadata accessor for RecordingViewModel();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0x3F847AE147AE147BLL;
  v24 = qword_100AD0A90;

  if (v24 != -1)
  {
    swift_once();
  }

  *(v23 + 40) = qword_100B31070;
  *(v23 + 81) = 0;
  *(v23 + 88) = 0;
  *(v23 + 96) = 0;
  *(v23 + 104) = 1;
  *(v23 + 106) = 0;

  ObservationRegistrar.init()();
  v25 = sub_10050ADC0(&qword_100AE4060, type metadata accessor for AudioPlayer);
  *(v23 + 48) = v14;
  *(v23 + 56) = v8;
  *(v23 + 64) = v25;
  *(v23 + 72) = v13;
  *(v23 + 80) = 0;
  *(v23 + 105) = v22;
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  type metadata accessor for MainActor();

  v27 = static MainActor.shared.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = &protocol witness table for MainActor;
  *(v28 + 32) = v23;
  *(v28 + 40) = 0;
  sub_1003E9628(0, 0, v4, &unk_10094E010, v28);

  return v23;
}

id sub_10050820C()
{
  v1 = OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___fullScreenHostingViewController;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___fullScreenHostingViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___fullScreenHostingViewController);
  }

  else
  {
    v4 = sub_100508270();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100508270()
{
  v0 = type metadata accessor for RecordingView(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v16[-v5];
  sub_100507B94();
  type metadata accessor for RecordingViewModel();
  sub_10050ADC0(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  Bindable<A>.init(wrappedValue:)();
  v7 = &v6[v1[7]];
  v17 = 0;
  State.init(wrappedValue:)();
  v8 = v19;
  *v7 = v18;
  *(v7 + 1) = v8;
  v9 = &v6[v1[8]];
  v17 = 0;
  State.init(wrappedValue:)();
  v10 = v19;
  *v9 = v18;
  *(v9 + 1) = v10;
  v11 = &v6[v1[9]];
  v17 = 0;
  State.init(wrappedValue:)();
  v12 = v19;
  *v11 = v18;
  *(v11 + 1) = v12;
  sub_1001938C4(v6, v3);
  v13 = objc_allocWithZone(sub_1000F24EC(&qword_100AD6300));
  v14 = UIHostingController.init(rootView:)();
  sub_100193928(v6);
  return v14;
}

id sub_100508438(uint64_t a1, char a2, char a3)
{
  *&v3[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_notificationsTask] = 0;
  *&v3[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_recordOnInitTask] = 0;
  v4 = OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_asset;
  *&v3[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_asset] = 0;
  *&v3[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___recordingViewModel] = 0;
  *&v3[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___fullScreenHostingViewController] = 0;
  *&v3[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___journalAssetView] = 0;
  *&v3[v4] = a1;
  v3[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_recordOnInit] = a2;
  v3[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_presentationStyle] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for CanvasTranscribingAudioPickerController();
  return objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
}

id sub_10050850C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CanvasTranscribingAudioPickerController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  if (qword_100AD07C8 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityLabel:v3];

  result = [v0 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v4 = result;
  [result setAccessibilityContainerType:4];

  result = [v0 view];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() systemBackgroundColor];
    [v5 setBackgroundColor:v6];

    return sub_100509B6C();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100508764(char a1)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CanvasTranscribingAudioPickerController();
  v12.receiver = v1;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  sub_100509C68();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v1;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  *&v8[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_notificationsTask] = sub_1003E9628(0, 0, v5, &unk_10095A680, v10);
}

id sub_100508918(char a1)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for CanvasTranscribingAudioPickerController();
  v14.receiver = v1;
  v14.super_class = v6;
  result = objc_msgSendSuper2(&v14, "viewIsAppearing:", a1 & 1);
  if (v1[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_recordOnInit] == 1)
  {
    v8 = OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_recordOnInitTask;
    if (!*&v1[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_recordOnInitTask])
    {
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      type metadata accessor for MainActor();
      v10 = v1;
      v11 = v1;
      v12 = static MainActor.shared.getter();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = v10;
      *&v11[v8] = sub_1003E9628(0, 0, v5, &unk_10095A670, v13);
    }
  }

  return result;
}

uint64_t sub_100508A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  type metadata accessor for AppSecureAccessManager();
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_100508B58;

  return sub_1001890D8(a4);
}

uint64_t sub_100508B58(char a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100508C9C, v3, v2);
}

uint64_t sub_100508C9C()
{
  v1 = *(v0 + 48);

  if (v1 == 1)
  {
    sub_100507B94();
    sub_1005F1308(1);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100508DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1000F24EC(&qword_100AF6E60);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for Notification();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[14] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AE7018);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AE7020);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v9;
  v4[24] = v8;

  return _swift_task_switch(sub_100509000, v9, v8);
}

uint64_t sub_100509000()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFD0 != -1)
  {
    swift_once();
  }

  v2 = NSNotificationCenter.notifications(named:object:)();

  v0[6] = v2;
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_10050ADC0(&qword_100AE7028, &type metadata accessor for NSNotificationCenter.Notifications);
  AsyncMapSequence.init(_:transform:)();
  AsyncMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  AsyncMapSequence.Iterator.init(_:transform:)();
  v3 = static MainActor.shared.getter();
  v0[25] = v3;
  if (v3)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v0[26] = v4;
  v0[27] = v6;

  return _swift_task_switch(sub_100509200, v4, v6);
}

uint64_t sub_100509200()
{
  v1 = v0[25];
  v0[28] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10050ADC0(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_100509308;
  v3 = v0[9];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_100509308()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_1005095E8;
  }

  else
  {
    (*(v2 + 224))();
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100509430;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100509430()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_100004F84(v3, &qword_100AF6E60);
    v4 = v0[23];
    v5 = v0[24];

    return _swift_task_switch(sub_100509A7C, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[12], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[30] = v7;
    v10 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[31] = v8;
    *v8 = v0;
    v8[1] = sub_100509600;

    return v10();
  }
}

uint64_t sub_100509600()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 216);
  v6 = *(v1 + 208);

  return _swift_task_switch(sub_1005097A0, v6, v5);
}

uint64_t sub_1005097A0()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return _swift_task_switch(sub_100509804, v1, v2);
}

uint64_t sub_100509804()
{
  *(v0 + 256) = sub_100507B94();
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_1005098A0;

  return sub_1005EE44C();
}

uint64_t sub_1005098A0()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_1005099E4, v3, v2);
}

uint64_t sub_1005099E4()
{
  v1 = static MainActor.shared.getter();
  v0[25] = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[26] = v2;
  v0[27] = v4;

  return _swift_task_switch(sub_100509200, v2, v4);
}

uint64_t sub_100509A7C()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

id sub_100509B6C()
{
  v1 = v0;
  v2 = sub_10050820C();
  [v1 addChildViewController:v2];

  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = sub_100509E54();
    [v4 addSubview:v5];

    v6 = OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___journalAssetView;
    [*&v1[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___journalAssetView] setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *&v1[v6];
    sub_100013178(0.0);

    v8 = *&v1[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___fullScreenHostingViewController];

    return [v8 didMoveToParentViewController:v1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100509C68()
{
  v1 = [v0 presentingViewController];
  if (!v1 || (v2 = v1, v3 = [v1 presentedViewController], v2, !v3))
  {
    v4 = 0;
    goto LABEL_8;
  }

  v4 = [v3 sheetPresentationController];

  if (!v4)
  {
LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  v5 = [v4 detents];

  sub_1001F3EEC();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
LABEL_9:
  v8 = sub_100507B94();
  swift_getKeyPath();
  sub_10050ADC0(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v8 + 96);
  v10 = *(v8 + 104);

  if (v10)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v9 == v4)
  {
    v12 = v7;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_16:

    sub_1005EFB14(v4, v7);
  }

  return result;
}

id sub_100509E54()
{
  v1 = OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___journalAssetView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___journalAssetView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___journalAssetView);
  }

  else
  {
    v4 = v0;
    v5 = sub_10050820C();
    v6 = type metadata accessor for TranscribingAudioAssetView();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC7Journal26TranscribingAudioAssetView_hostingController] = v5;
    v12.receiver = v7;
    v12.super_class = v6;
    v8 = v5;
    v3 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_1002E4BB4();

    v9 = *(v4 + v1);
    *(v4 + v1) = v3;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_100509F58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasTranscribingAudioPickerController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10050A03C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_1005BB1CC();
}

uint64_t sub_10050A0E8(void *a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - v5;
  v7 = sub_1000F24EC(&qword_100AD8F98);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  v13 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v51 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[3] = type metadata accessor for AudioAsset();
  v59[4] = &off_100A82B98;
  v59[0] = a1;
  a1;
  sub_100093C08(v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v56 = v16;
    v57 = v6;
    v55 = v17;
    (*(v17 + 32))(v19, v15, v16);
    v54 = v19;
    v23 = sub_1004CCD9C(v19);

    v24 = *(a2 + 72);
    v53 = v23;
    [v24 replaceCurrentItemWithPlayerItem:v23];
    sub_100086C04(v59, v58);
    swift_beginAccess();
    sub_10050AAC8(v58, a2 + 16);
    swift_endAccess();
    sub_1000A8720(v12);
    v25 = type metadata accessor for AudioAssetMetadata();
    v26 = *(v25 - 8);
    v52 = *(v26 + 48);
    if (v52(v12, 1, v25) == 1)
    {
      sub_100004F84(v12, &qword_100AD8F98);
      v27 = 0.0;
    }

    else
    {
      v28 = AudioAssetMetadata.duration.getter();
      v30 = v29;
      (*(v26 + 8))(v12, v25);
      v27 = 0.0;
      if ((v30 & 1) == 0)
      {
        v27 = *&v28;
      }
    }

    if (*(a2 + 80) == v27)
    {
      *(a2 + 80) = v27;
      if (!*(a2 + 88))
      {
LABEL_13:
        sub_1000A8720(v10);
        if (v52(v10, 1, v25) == 1)
        {
          sub_100004F84(v10, &qword_100AD8F98);
          v32 = _swiftEmptyArrayStorage;
          v33 = v55;
        }

        else
        {
          v34 = AudioAssetMetadata.intensities.getter();
          (*(v26 + 8))(v10, v25);
          if (v34)
          {
            v35 = *(v34 + 16);

            v33 = v55;
            if (v35)
            {
              v36 = static Array._allocateBufferUninitialized(minimumCapacity:)();
              *(v36 + 16) = v35;
              memset_pattern16((v36 + 32), &unk_100958CD0, 8 * v35);
              v32 = v36;
            }

            else
            {
              v32 = _swiftEmptyArrayStorage;
            }
          }

          else
          {
            v32 = _swiftEmptyArrayStorage;
            v33 = v55;
          }
        }

        sub_1004C6E34(v32);
        swift_getKeyPath();
        v58[0] = a2;
        sub_10050ADC0(&qword_100AE6220, type metadata accessor for AudioPlayer);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if ((*(a2 + 80) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          swift_getKeyPath();
          v58[0] = a2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v38 = *(*(a2 + 56) + 16);
          swift_getKeyPath();
          v58[0] = a2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v39 = floor(v38 / *(a2 + 80) + 0.2);
        }

        else
        {
          v39 = 0.0;
        }

        if (*(a2 + 64) == v39)
        {
          *(a2 + 64) = v39;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          *(&v51 - 2) = a2;
          *(&v51 - 1) = v39;
          v58[0] = a2;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v41 = type metadata accessor for TaskPriority();
        v42 = *(*(v41 - 8) + 56);
        v43 = v57;
        v42(v57, 1, 1, v41);
        type metadata accessor for MainActor();

        v44 = v53;
        v45 = static MainActor.shared.getter();
        v46 = swift_allocObject();
        v46[2] = v45;
        v46[3] = &protocol witness table for MainActor;
        v46[4] = a2;
        v46[5] = v44;
        sub_1003E9628(0, 0, v43, &unk_100958F68, v46);

        v42(v43, 1, 1, v41);

        v47 = v44;
        v48 = static MainActor.shared.getter();
        v49 = swift_allocObject();
        v49[2] = v48;
        v49[3] = &protocol witness table for MainActor;
        v49[4] = v47;
        v49[5] = a2;
        sub_1003E9628(0, 0, v43, &unk_10095A660, v49);

        (*(v33 + 8))(v54, v56);
        return sub_10000BA7C(v59);
      }
    }

    else
    {
      v37 = swift_getKeyPath();
      v51 = &v51;
      __chkstk_darwin(v37);
      *(&v51 - 2) = a2;
      *(&v51 - 1) = v27;
      v58[0] = a2;
      sub_10050ADC0(&qword_100AE6220, type metadata accessor for AudioPlayer);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (!*(a2 + 88))
      {
        goto LABEL_13;
      }
    }

    v31 = swift_getKeyPath();
    v51 = &v51;
    __chkstk_darwin(v31);
    *(&v51 - 2) = a2;
    *(&v51 - 8) = 0;
    v58[0] = a2;
    sub_10050ADC0(&qword_100AE6220, type metadata accessor for AudioPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_13;
  }

  sub_100004F84(v15, &unk_100AD6DD0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Tried to play attachment but couldn't find a valid url", v22, 2u);
  }

  return sub_10000BA7C(v59);
}

uint64_t sub_10050AAC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AE9D30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050AB98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1004C826C(a1, v4, v5, v7, v6);
}

uint64_t sub_10050AC58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100508A9C(a1, v4, v5, v6);
}

uint64_t sub_10050AD0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100508DD0(a1, v4, v5, v6);
}

uint64_t sub_10050ADC0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10050AE08()
{
  *(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_notificationsTask) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_recordOnInitTask) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_asset) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___recordingViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___fullScreenHostingViewController) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController____lazy_storage___journalAssetView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10050AEAC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_1003E9628(0, 0, v4, &unk_10095A760, v7);

  v8 = *(v1 + qword_100AD52A8);
  v9 = qword_100B2FA78;
  v10 = *(v1 + qword_100B2FA78);
  v11 = *(v8 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
  *(v8 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset) = v10;
  v12 = v10;
  sub_100099584(v11);

  v14 = *(v1 + v9);
  if (v14)
  {
    v15 = v14;
    sub_100067B84();
    v20 = v16;
    v21 = v17;

    *&v18 = v20;
    *(&v18 + 1) = v21;
  }

  else
  {
    v18 = 0uLL;
  }

  v19 = v1 + qword_100AD52B0;
  *v19 = v18;
  *(v19 + 16) = v14 == 0;
  sub_1007291A4(v13);
  sub_10050D074();
}

id sub_10050B074()
{
  v1 = qword_100AE7088;
  v2 = *&v0[qword_100AE7088];
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *&v0[qword_100AE7080];
    [v0 safeAreaInsets];
    v6 = 84.0 - v5;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v4 heightAnchor];
    v3 = [v7 constraintEqualToConstant:v6];

    [v3 setActive:1];
    v8 = *&v0[v1];
    *&v0[v1] = v3;
    v9 = v3;
    sub_10015DB5C(v8);
  }

  sub_10015DB6C(v2);
  return v3;
}

char *sub_10050B194(double a1, double a2, double a3, double a4)
{
  v9 = qword_100AE7030;
  if (qword_100AD01D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_10000617C(v10, qword_100B30028);
  (*(*(v10 - 8) + 16))(v4 + v9, v11, v10);
  UUID.init()();
  *(v4 + qword_100B2FA68 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_100B2FA70) = 0;
  *(v4 + qword_100B2FA78) = 0;
  if (qword_100AD0998 != -1)
  {
    swift_once();
  }

  v12 = qword_100B30E70;
  if (qword_100B30E70)
  {
    v13 = [objc_opt_self() systemIndigoColor];
    v14 = [v12 imageWithTintColor:v13];

    if (qword_100AD0410 != -1)
    {
      swift_once();
    }

    v15 = [v14 imageWithConfiguration:qword_100B30408];
  }

  else
  {
    v15 = 0;
  }

  *(v4 + qword_100AE7040) = v15;
  if (qword_100AD09A0 != -1)
  {
    swift_once();
  }

  v16 = qword_100B30E78;
  if (qword_100B30E78)
  {
    v17 = [objc_opt_self() systemIndigoColor];
    v18 = [v16 imageWithTintColor:v17];

    if (qword_100AD0410 != -1)
    {
      swift_once();
    }

    v19 = [v18 imageWithConfiguration:qword_100B30408];
  }

  else
  {
    v19 = 0;
  }

  *(v4 + qword_100AE7048) = v19;
  v20 = qword_100AE7050;
  type metadata accessor for NoThumbUISlider();
  *(v4 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = qword_100AE7058;
  *(v4 + v21) = [objc_allocWithZone(UILabel) init];
  v22 = qword_100AE7060;
  *(v4 + v22) = [objc_allocWithZone(UILabel) init];
  v23 = qword_100AE7068;
  *(v4 + v23) = [objc_allocWithZone(UIButton) init];
  v24 = qword_100AE7070;
  *(v4 + v24) = [objc_allocWithZone(UILabel) init];
  v25 = qword_100AE7078;
  *(v4 + v25) = [objc_allocWithZone(UIStackView) init];
  v26 = qword_100AE7080;
  *(v4 + v26) = [objc_allocWithZone(UIView) init];
  *(v4 + qword_100AE7088) = 1;
  *(v4 + qword_100AE7090) = 0;
  type metadata accessor for VideoAssetView();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10072754C(v27, a1, a2, a3, a4);
  v29 = v28;
  v30 = qword_100AD52A8;
  v31 = *&v28[qword_100AD52A8];
  v32 = *(v31 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  *(v31 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = 7;
  v33 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (*(v31 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated) != 1)
  {
    v34 = v28;
    v35 = v31;
LABEL_24:
    (*((swift_isaMask & *v31) + 0x100))(v35);
    *(v31 + v33) = 1;

    goto LABEL_25;
  }

  if (v32 <= 3 || v32 <= 6)
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v37 = v29;
    v38 = v31;

    if (v36)
    {

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v129 = v28;

LABEL_25:
  *(*&v29[v30] + OBJC_IVAR____TtC7Journal14VideoAssetView_delegate + 8) = &off_100A71098;
  swift_unknownObjectWeakAssign();
  v130 = qword_100AE7068;
  [*&v29[qword_100AE7068] addTarget:v29 action:"togglePlay:" forControlEvents:64];
  v39 = qword_100AE7050;
  v40 = *&v29[qword_100AE7050];
  [v40 addTarget:v29 action:"timeSliderDidChange:" forControlEvents:4096];

  v41 = qword_100AE7070;
  [*&v29[qword_100AE7070] setAdjustsFontForContentSizeCategory:1];
  [*&v29[v41] setAdjustsFontSizeToFitWidth:1];
  [*&v29[v41] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v29[v41] setLineBreakMode:0];
  [*&v29[v41] setNumberOfLines:0];
  [*&v29[v41] setTextAlignment:1];
  v42 = qword_100AD03E0;
  v43 = *&v29[v41];
  if (v42 != -1)
  {
    swift_once();
  }

  [v43 setFont:qword_100B303D8];

  v44 = *&v29[v41];
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 secondaryLabelColor];
  [v46 setTextColor:v47];

  v48 = *&v29[v39];
  v49 = [v45 systemGrayColor];
  [v48 setMinimumTrackTintColor:v49];

  v50 = *&v29[v39];
  v51 = [v45 clearColor];
  [v50 setThumbTintColor:v51];

  [*&v29[v39] setContinuous:1];
  v52 = qword_100AE7058;
  v53 = qword_100AD03B8;
  v54 = *&v29[qword_100AE7058];
  v132 = v39;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = qword_100B303B0;
  [v54 setFont:qword_100B303B0];

  v56 = *&v29[v52];
  v57 = [v45 secondaryLabelColor];
  [v56 setTextColor:v57];

  [*&v29[v52] setTextAlignment:0];
  v58 = qword_100AE7060;
  [*&v29[qword_100AE7060] setFont:v55];
  v59 = *&v29[v58];
  v60 = [v45 secondaryLabelColor];
  [v59 setTextColor:v60];

  [*&v29[v58] setTextAlignment:2];
  v61 = [objc_allocWithZone(UIStackView) init];
  [v61 setAxis:0];
  [v61 setAlignment:3];
  [v61 setDistribution:1];
  [v61 addArrangedSubview:*&v29[v52]];
  [v61 addArrangedSubview:*&v29[v58]];
  v62 = qword_100AE7078;
  [*&v29[qword_100AE7078] setAxis:1];
  [*&v29[v62] setAlignment:3];
  [*&v29[v62] setSpacing:0.0];
  [*&v29[v62] setLayoutMargins:{16.0, 0.0, 6.0, 0.0}];
  [*&v29[v62] setLayoutMarginsRelativeArrangement:1];
  v63 = *&v29[v62];
  v64 = [v45 secondarySystemBackgroundColor];
  [v63 setBackgroundColor:v64];

  v65 = qword_100AE7080;
  v66 = *&v29[qword_100AE7080];
  v67 = [v45 clearColor];
  [v66 setBackgroundColor:v67];

  [*&v29[v62] addArrangedSubview:*&v29[v41]];
  [*&v29[v62] addArrangedSubview:*&v29[v132]];
  [*&v29[v62] addArrangedSubview:v61];
  [*&v29[v62] addArrangedSubview:*&v29[v130]];
  v131 = v65;
  [*&v29[v62] addArrangedSubview:*&v29[v65]];
  v68 = *&v29[v130];
  [v68 setTranslatesAutoresizingMaskIntoConstraints:0];
  v69 = [v68 heightAnchor];
  v70 = [v69 constraintEqualToConstant:44.0];

  [v70 setActive:1];
  v71 = *&v29[v130];
  [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
  v72 = [v71 widthAnchor];
  v73 = [v72 constraintEqualToConstant:44.0];

  [v73 setActive:1];
  v74 = [*&v29[v130] imageView];
  if (v74)
  {
    v75 = v74;
    [v74 setFrame:{9.5, 0.0, 44.0, 44.0}];
  }

  v76 = *&v29[v132];
  v77 = [v76 superview];
  if (v77)
  {
    v78 = v77;
    [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
    v79 = [v76 leadingAnchor];
    v80 = [v78 leadingAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];

    [v81 setConstant:32.0];
    if (v81)
    {
      [v81 setActive:1];
    }
  }

  else
  {
    v81 = 0;
    v78 = v76;
  }

  v82 = *&v29[v132];
  v83 = [v82 superview];
  if (v83)
  {
    v84 = v83;
    [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
    v85 = [v82 trailingAnchor];
    v86 = [v84 trailingAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];

    [v87 setConstant:-32.0];
    if (v87)
    {
      [v87 setActive:1];
    }
  }

  else
  {
    v87 = 0;
    v84 = v82;
  }

  v88 = [v61 superview];
  if (v88)
  {
    v89 = v88;
    [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
    v90 = [v61 leadingAnchor];
    v91 = [v89 leadingAnchor];
    v92 = [v90 constraintEqualToAnchor:v91];

    [v92 setConstant:32.0];
    [v92 setActive:1];
  }

  v93 = [v61 superview];
  if (v93)
  {
    v94 = v93;
    [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
    v95 = [v61 trailingAnchor];
    v96 = [v94 trailingAnchor];
    v97 = [v95 constraintEqualToAnchor:v96];

    [v97 setConstant:-32.0];
    [v97 setActive:1];
  }

  v98 = *&v29[v131];
  v99 = [v98 superview];
  if (v99)
  {
    v100 = v99;
    [v98 setTranslatesAutoresizingMaskIntoConstraints:0];
    v101 = [v98 leadingAnchor];
    v102 = [v100 leadingAnchor];
    v103 = [v101 constraintEqualToAnchor:v102];

    [v103 setConstant:0.0];
    if (v103)
    {
      [v103 setActive:1];
    }
  }

  else
  {
    v103 = 0;
    v100 = v98;
  }

  v104 = *&v29[v131];
  v105 = [v104 superview];
  if (v105)
  {
    v106 = v105;
    [v104 setTranslatesAutoresizingMaskIntoConstraints:0];
    v107 = [v104 trailingAnchor];
    v108 = [v106 trailingAnchor];
    v109 = [v107 constraintEqualToAnchor:v108];

    [v109 setConstant:0.0];
    if (v109)
    {
      [v109 setActive:1];
    }
  }

  else
  {
    v109 = 0;
    v106 = v104;
  }

  v110 = sub_10050B074();
  [v110 setActive:1];

  [*&v29[v62] setCustomSpacing:*&v29[v132] afterView:-6.0];
  [*&v29[v62] bringSubviewToFront:*&v29[v132]];
  [*&v29[v62] bringSubviewToFront:*&v29[v130]];
  [v29 addSubview:*&v29[v62]];
  v111 = *&v29[v62];
  v112 = sub_100028DA0(0, 1, 0.0);

  v113 = *&v29[v62];
  v114 = [v113 superview];
  if (v114)
  {
    v115 = v114;
    [v113 setTranslatesAutoresizingMaskIntoConstraints:0];
    v116 = [v113 leadingAnchor];
    v117 = [v115 leadingAnchor];
    v118 = [v116 constraintEqualToAnchor:v117];

    [v118 setConstant:0.0];
    if (v118)
    {
      [v118 setActive:1];
    }
  }

  else
  {
    v118 = 0;
    v115 = v113;
  }

  v119 = *&v29[v62];
  v120 = [v119 superview];
  if (v120)
  {
    v121 = v120;
    [v119 setTranslatesAutoresizingMaskIntoConstraints:0];
    v122 = [v119 trailingAnchor];
    v123 = [v121 trailingAnchor];
    v124 = [v122 constraintEqualToAnchor:v123];

    [v124 setConstant:0.0];
    if (v124)
    {
      [v124 setActive:1];
    }
  }

  else
  {
    v124 = 0;
    v121 = v119;
  }

  v125 = [objc_opt_self() defaultCenter];
  v126 = qword_100ACFFC0;
  v127 = v29;
  if (v126 != -1)
  {
    swift_once();
  }

  [v125 addObserver:v127 selector:"onFullScreenAssetViewClosedNotificationReceived" name:qword_100B2FBB0 object:0];

  return v127;
}

void sub_10050C5BC()
{
  v1 = *(v0 + qword_100AD52A8);
  v2 = OBJC_IVAR____TtC7Journal14VideoAssetView_playerView;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }

    v7 = [v6 player];

    [v7 setMuted:1];
    v8 = *(v1 + v2);
    if (v8)
    {
      v9 = v8;
      v10 = [v9 layer];
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
      }

      v12 = [v11 player];

      [v12 pause];
    }
  }
}

void sub_10050C73C(char a1)
{
  v2 = *(*(v1 + qword_100AD52A8) + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (v2)
  {
    v4 = v2;
    v5 = [v4 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }

    v7 = [v6 player];

    [v7 setMuted:a1 & 1];
  }
}

void sub_10050C830(void *a1)
{
  v1 = a1;
  sub_10050C5BC();
}

void sub_10050C878(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  if (qword_100ACFFC0 != -1)
  {
    swift_once();
  }

  [v4 removeObserver:v3 name:qword_100B2FBB0 object:0];

  v5.receiver = v3;
  v5.super_class = type metadata accessor for FullScreenVideoView();
  objc_msgSendSuper2(&v5, "removeFromSuperview");
}

void sub_10050C948(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FullScreenVideoView();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "safeAreaInsetsDidChange");
  v2 = sub_10050B074();
  if (v2)
  {
    v3 = v2;
    [v1 safeAreaInsets];
    [v3 setConstant:84.0 - v4];
  }
}

void sub_10050C9E0()
{
  v1 = qword_100AE7030;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_100AE7038;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100038534(v0 + qword_100B2FA68);

  v5 = *(v0 + qword_100AE7088);

  sub_10015DB5C(v5);
}

id sub_10050CB48()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0 + qword_100AE7030, v5, v7);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v10;
    v14 = v13;
    v25 = swift_slowAlloc();
    v27 = v25;
    *v14 = 136446210;
    (*(v2 + 16))(v4, v26 + qword_100AE7038, v1);
    sub_10000688C(&qword_100AE19B0, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v5;
    v17 = v16;
    (*(v2 + 8))(v4, v1);
    v18 = sub_100008458(v15, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s FullScreenVideoViewController is deinited", v14, 0xCu);
    sub_10000BA7C(v25);

    v10 = v26;

    (*(v6 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v19 = [objc_opt_self() defaultCenter];
  v20 = qword_100ACFFC0;
  v21 = v10;
  if (v20 != -1)
  {
    swift_once();
  }

  [v19 removeObserver:v21 name:qword_100B2FBB0 object:0];

  v22 = type metadata accessor for FullScreenVideoView();
  v28.receiver = v21;
  v28.super_class = v22;
  return objc_msgSendSuper2(&v28, "dealloc");
}

void sub_10050CF08(uint64_t a1)
{
  v2 = qword_100AE7030;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_100AE7038;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  sub_100038534(a1 + qword_100B2FA68);

  v6 = *(a1 + qword_100AE7088);

  sub_10015DB5C(v6);
}

void sub_10050D074()
{
  v1 = v0;
  v2 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v2);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v5 - 8);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v52 - v9;
  v11 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v11 - 8);
  v13 = v52 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_100B2FA78;
  v20 = *&v1[qword_100B2FA78];
  if (!v20)
  {
    goto LABEL_4;
  }

  v52[1] = v2;
  v53 = v18;
  v54 = v7;
  v21 = qword_100B2FA78;
  v22 = v1;
  v23 = v20;
  sub_1006AC114(v10);

  v24 = type metadata accessor for PhotoLibraryAssetMetadata();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v10, 1, v24) == 1)
  {
    sub_100004F84(v10, &qword_100AD5B20);
    v1 = v22;
    v19 = v21;
    v7 = v54;
LABEL_4:
    (*(v15 + 56))(v13, 1, 1, v14, v16);
    goto LABEL_5;
  }

  PhotoLibraryAssetMetadata.date.getter();
  (*(v25 + 8))(v10, v24);
  v31 = (*(v15 + 48))(v13, 1, v14);
  v1 = v22;
  v19 = v21;
  v7 = v54;
  if (v31 == 1)
  {
LABEL_5:
    sub_100004F84(v13, &unk_100AD4790);
    v26 = _swiftEmptyArrayStorage;
    v27 = *&v1[v19];
    if (!v27)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  (*(v15 + 32))(v53, v13, v14);
  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_10000688C(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa);
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v4);
  v32 = v55;
  v33 = v56;
  v26 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
  v35 = *(v26 + 2);
  v34 = *(v26 + 3);
  if (v35 >= v34 >> 1)
  {
    v26 = sub_10009BCC8((v34 > 1), v35 + 1, 1, v26);
  }

  (*(v15 + 8))(v53, v14);
  *(v26 + 2) = v35 + 1;
  v36 = &v26[16 * v35];
  *(v36 + 4) = v32;
  *(v36 + 5) = v33;
  v27 = *&v1[v19];
  if (v27)
  {
LABEL_6:
    v28 = v27;
    sub_1006AC114(v7);

    v29 = type metadata accessor for PhotoLibraryAssetMetadata();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v7, 1, v29) == 1)
    {
      sub_100004F84(v7, &qword_100AD5B20);
    }

    else
    {
      v37 = PhotoLibraryAssetMetadata.placeName.getter();
      v39 = v38;
      (*(v30 + 8))(v7, v29);
      if (v39)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_10009BCC8(0, *(v26 + 2) + 1, 1, v26);
        }

        v41 = *(v26 + 2);
        v40 = *(v26 + 3);
        if (v41 >= v40 >> 1)
        {
          v26 = sub_10009BCC8((v40 > 1), v41 + 1, 1, v26);
        }

        *(v26 + 2) = v41 + 1;
        v42 = &v26[16 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v39;
      }
    }
  }

LABEL_19:
  v43 = *&v1[qword_100AE7070];
  v55 = v26;
  sub_1000F24EC(&qword_100AD60A0);
  sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
  BidirectionalCollection<>.joined(separator:)();

  v44 = String._bridgeToObjectiveC()();

  [v43 setText:v44];

  v45 = *&v1[v19];
  if (v45)
  {
    v46 = swift_allocObject();
    *(v46 + 16) = v1;
    v47 = qword_100ACFB90;
    v48 = v45;
    v49 = v1;
    if (v47 != -1)
    {
      swift_once();
    }

    v50 = qword_100B2F628;
    v51 = [objc_opt_self() currentTraitCollection];
    sub_100076220(7, 0, 1, v50, v51, sub_100510608, v46);
  }
}

void sub_10050D770(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = v8;
    v20 = v7;
    sub_100005508();
    v11 = a1;
    v18 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    aBlock[4] = sub_100510610;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A712D8;
    v14 = _Block_copy(aBlock);
    v17 = v11;

    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_10000688C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v19 + 8))(v10, v20);
  }
}

void sub_10050DAA4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 size];
    v6 = &v4[qword_100AD52B0];
    *v6 = v7;
    *(v6 + 1) = v8;
    v6[16] = 0;
    sub_1007291A4(v5);
  }
}

void sub_10050DB24(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10051018C();
}

void sub_10050DB84(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = a1;
  [v6 value];
  v8 = CMTime.init(seconds:preferredTimescale:)(v5, 600);
  sub_100816CB4(v8.value, *&v8.timescale, v8.epoch, 0, 0);
}

uint64_t sub_10050DC3C(void (*a1)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      a1();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10050DCCC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![objc_opt_self() isMainThread])
  {
    sub_100005508();
    v31 = v6;
    v30 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    aBlock[4] = sub_1005105E4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A71260;
    v21 = _Block_copy(aBlock);
    v22 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000688C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v30;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v31);
    return;
  }

  v10 = *(*&v1[qword_100AD52A8] + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v11 layer];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
  }

  v14 = [v13 player];

  if (!v14 || (v15 = [v14 timeControlStatus], v14, v15 != 2))
  {
LABEL_10:
    v24 = *&v1[qword_100AE7068];
    v25 = qword_100AD0880;
    v31 = *&v1[qword_100AE7040];
    v26 = v31;
    v19 = v24;
    if (v25 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v16 = *&v1[qword_100AE7068];
  v17 = qword_100AD0868;
  v31 = *&v1[qword_100AE7048];
  v18 = v31;
  v19 = v16;
  if (v17 != -1)
  {
LABEL_16:
    swift_once();
  }

LABEL_11:
  v27 = String._bridgeToObjectiveC()();
  [v19 setAccessibilityLabel:v27];

  if (v31)
  {
    v28 = *&v1[qword_100AE7068];
    [v28 setImage:v31 forState:0];

    v29 = v31;
  }
}

void sub_10050E1EC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v10 - 8);
  v12 = &v57 - v11;
  if ([objc_opt_self() isMainThread])
  {
    v13 = *&v1[qword_100AD52A8];
    v14 = OBJC_IVAR____TtC7Journal14VideoAssetView_playerView;
    v15 = *(v13 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
    if (v15)
    {
      v16 = v15;
      v17 = [v16 layer];
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (!v18)
      {
      }

      v19 = [v18 player];

      if (v19)
      {
        v58 = [v19 currentItem];

        if (v58)
        {
          v20 = [v58 status];
          v21 = *&v1[qword_100AE7068];
          if (v20 == 1)
          {
            [v21 setEnabled:1];
            v32 = *(v13 + v14);
            if (!v32)
            {
              goto LABEL_21;
            }

            v33 = v32;
            v34 = [v33 layer];
            objc_opt_self();
            v35 = swift_dynamicCastObjCClass();
            if (!v35)
            {
            }

            v36 = [v35 player];

            if (v36)
            {
              [v36 currentTime];
              value = aBlock.value;
              *&v38 = *&aBlock.timescale;
              v57 = v38;
              epoch = aBlock.epoch;
            }

            else
            {
LABEL_21:
              value = kCMTimeZero.value;
              *&v31 = *&kCMTimeZero.timescale;
              v57 = v31;
              epoch = kCMTimeZero.epoch;
            }

            v42 = qword_100AE7050;
            [*&v1[qword_100AE7050] setMinimumValue:{0.0, v57}];
            v43 = *&v1[v42];
            [v58 duration];
            CMTime.seconds.getter();
            *&v44 = v44;
            [v43 setMaximumValue:v44];

            v45 = *&v1[v42];
            aBlock.value = value;
            *&aBlock.timescale = v57;
            aBlock.epoch = epoch;
            Seconds = CMTimeGetSeconds(&aBlock);
            *&Seconds = Seconds;
            [v45 setValue:Seconds];

            [*&v1[v42] addTarget:v1 action:"sliderBeganSliding" forControlEvents:1];
            [*&v1[v42] addTarget:v1 action:"sliderEndedSliding" forControlEvents:64];
            [*&v1[v42] setEnabled:1];
            v47 = qword_100AE7058;
            [*&v1[qword_100AE7058] setEnabled:1];
            v48 = v57;
            v49 = *&v1[v47];
            sub_10043C2DC(value, v48, epoch);
            v50 = String._bridgeToObjectiveC()();

            [v49 setText:v50];

            [*&v1[qword_100AE7060] setEnabled:1];
            v51 = type metadata accessor for TaskPriority();
            (*(*(v51 - 8) + 56))(v12, 1, 1, v51);
            v52 = swift_allocObject();
            swift_unknownObjectWeakInit();
            type metadata accessor for MainActor();
            v53 = v58;

            v54 = static MainActor.shared.getter();
            v55 = swift_allocObject();
            v55[2] = v54;
            v55[3] = &protocol witness table for MainActor;
            v55[4] = v53;
            v55[5] = v52;

            sub_1004EC158(0, 0, v12, &unk_10095A778, v55);
          }

          else if (v20 == 2)
          {
            [v21 setEnabled:0];
            [*&v1[qword_100AE7050] setEnabled:0];
            [*&v1[qword_100AE7058] setEnabled:0];
            [*&v1[qword_100AE7060] setEnabled:0];
            v22 = [v58 error];
            if (v22)
            {
              v23 = v22;
              swift_getErrorValue();
              v24 = Error.localizedDescription.getter();
              v26 = v25;
            }

            else
            {
              v24 = 0;
              v26 = 0xE000000000000000;
            }

            v56 = [v58 error];
            sub_10050EF10(v24, v26, v56);
          }

          else
          {
            [v21 setEnabled:0];
            [*&v1[qword_100AE7050] setEnabled:0];
            [*&v1[qword_100AE7058] setEnabled:0];
            v40 = *&v1[qword_100AE7060];
            [v40 setEnabled:0];

            v41 = v58;
          }
        }
      }
    }
  }

  else
  {
    sub_100005508();
    v58 = v6;
    *&v57 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    v61 = sub_100510500;
    v62 = v27;
    aBlock.value = _NSConcreteStackBlock;
    *&aBlock.timescale = 1107296256;
    aBlock.epoch = sub_100006C7C;
    v60 = &unk_100A711C0;
    v28 = _Block_copy(&aBlock);
    v29 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock.value = _swiftEmptyArrayStorage;
    sub_10000688C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v57;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v58);
  }
}

uint64_t sub_10050EAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_10050EB4C, v7, v6);
}

uint64_t sub_10050EB4C()
{
  *(v0 + 88) = [*(v0 + 40) asset];
  sub_1000F24EC(&qword_100AE6240);
  v1 = static AVPartialAsyncProperty<A>.duration.getter();
  *(v0 + 96) = v1;
  v2 = static MainActor.shared.getter();
  *(v0 + 104) = v2;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_10050EC58;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 128, v1, v2, &protocol witness table for MainActor);
}

uint64_t sub_10050EC58()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = v2[9];
    v4 = v2[10];
    v5 = sub_10050EE88;
  }

  else
  {
    v6 = v2[11];

    v3 = v2[9];
    v4 = v2[10];
    v5 = sub_10050ED8C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10050ED8C()
{

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[18];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + qword_100AE7060);

    sub_10043C2DC(v2, v1, v3);
    v7 = String._bridgeToObjectiveC()();

    [v6 setText:v7];
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10050EE88()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10050EF10(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    v5 = v3;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v8 = 136315650;
      type metadata accessor for UUID();
      sub_10000688C(&qword_100AE19B0, &type metadata accessor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = sub_100008458(v10, v11, &v17);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_100008458(a1, a2, &v17);
      *(v8 + 22) = 2112;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v13;
      *v9 = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Error occurred with message: %s, error: %@.", v8, 0x20u);
      sub_100004F84(v9, &unk_100AD4BB0);

      swift_arrayDestroy();
    }

    else
    {
    }
  }

  v16 = UIView.viewControllerForPresenting.getter();
  if (v16)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = sub_100511BC0();
      [v16 presentViewController:v14 animated:1 completion:0];

      v16 = v14;
    }
  }
}

void sub_10050F1D8()
{
  v1 = *(v0 + qword_100AD52A8);
  v2 = OBJC_IVAR____TtC7Journal14VideoAssetView_playerView;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }

    v7 = [v6 player];

    if (v7)
    {
      [v7 rate];
      v9 = v8;

      LOBYTE(v3) = v9 > 0.0;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  *(v0 + qword_100AE7090) = v3;
  v10 = *(v1 + v2);
  if (v10)
  {
    v11 = v10;
    v12 = [v11 layer];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
    }

    v14 = [v13 player];

    [v14 pause];
  }
}

void sub_10050F390(void *a1)
{
  v1 = a1;
  sub_10050F1D8();
}

void sub_10050F3D8(void *a1)
{
  if (*(a1 + qword_100AE7090) == 1)
  {
    v2 = a1;
    sub_1008169A4();
  }
}

uint64_t type metadata accessor for FullScreenVideoView()
{
  result = qword_100AE70C0;
  if (!qword_100AE70C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10050F490()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

id sub_10050F5A8(char a1)
{
  v3 = *v1;
  v4 = qword_100AD5288;
  result = [*(v3 + qword_100AD5288) zoomScale];
  if (v6 > 1.0)
  {
    v7 = *(v3 + v4);

    return [v7 setZoomScale:a1 & 1 animated:1.0];
  }

  return result;
}

uint64_t sub_10050F630()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = *(*(v0 + qword_100AD52A8) + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 layer];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    v8 = [v7 player];

    [v8 setMuted:1];
  }

  sub_1008169A4();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_1003E9628(0, 0, v3, &unk_10095A5B0, v11);
}

void sub_10050F7F0()
{
  v1 = *(*(v0 + qword_100AD52A8) + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 layer];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
    }

    v5 = [v4 player];

    [v5 pause];
  }
}

void sub_10050F8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v16 = *&v4[qword_100AE7050];
    CMTime.seconds.getter();
    *&v17 = v17;
    [v16 setValue:v17];

    v18 = *&v4[qword_100AE7058];
    sub_10043C2DC(a1, a2, a3);
    v27 = String._bridgeToObjectiveC()();

    [v18 setText:v27];

    v19 = v27;
  }

  else
  {
    v27 = v13;
    sub_100005508();
    v26 = v12;
    v25 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    v20[2] = v4;
    v20[3] = a1;
    v20[4] = a2;
    v20[5] = a3;
    aBlock[4] = sub_10050FCD0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A71148;
    v21 = _Block_copy(aBlock);
    v22 = v4;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000688C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v25;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v9 + 8))(v11, v8);
    (*(v27 + 1))(v15, v26);
  }
}

uint64_t sub_10050FCFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_1005BB1CC();
}

void sub_10050FDA8()
{
  v1 = qword_100AE7030;
  if (qword_100AD01D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_10000617C(v2, qword_100B30028);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  UUID.init()();
  *(v0 + qword_100B2FA68 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_100B2FA70) = 0;
  *(v0 + qword_100B2FA78) = 0;
  if (qword_100AD0998 != -1)
  {
    swift_once();
  }

  v4 = qword_100B30E70;
  if (qword_100B30E70)
  {
    v5 = [objc_opt_self() systemIndigoColor];
    v6 = [v4 imageWithTintColor:v5];

    if (qword_100AD0410 != -1)
    {
      swift_once();
    }

    v7 = [v6 imageWithConfiguration:qword_100B30408];
  }

  else
  {
    v7 = 0;
  }

  *(v0 + qword_100AE7040) = v7;
  if (qword_100AD09A0 != -1)
  {
    swift_once();
  }

  v8 = qword_100B30E78;
  if (qword_100B30E78)
  {
    v9 = [objc_opt_self() systemIndigoColor];
    v10 = [v8 imageWithTintColor:v9];

    if (qword_100AD0410 != -1)
    {
      swift_once();
    }

    v11 = [v10 imageWithConfiguration:qword_100B30408];
  }

  else
  {
    v11 = 0;
  }

  *(v0 + qword_100AE7048) = v11;
  v12 = qword_100AE7050;
  type metadata accessor for NoThumbUISlider();
  *(v0 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = qword_100AE7058;
  *(v0 + v13) = [objc_allocWithZone(UILabel) init];
  v14 = qword_100AE7060;
  *(v0 + v14) = [objc_allocWithZone(UILabel) init];
  v15 = qword_100AE7068;
  *(v0 + v15) = [objc_allocWithZone(UIButton) init];
  v16 = qword_100AE7070;
  *(v0 + v16) = [objc_allocWithZone(UILabel) init];
  v17 = qword_100AE7078;
  *(v0 + v17) = [objc_allocWithZone(UIStackView) init];
  v18 = qword_100AE7080;
  *(v0 + v18) = [objc_allocWithZone(UIView) init];
  *(v0 + qword_100AE7088) = 1;
  *(v0 + qword_100AE7090) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10051018C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = *(v0 + qword_100AD52A8);
  v6 = OBJC_IVAR____TtC7Journal14VideoAssetView_playerView;
  v7 = *(v5 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
  }

  v11 = [v10 player];

  if (v11 && (v12 = [v11 timeControlStatus], v11, v12 == 2))
  {
    v13 = *(v5 + v6);
    if (v13)
    {
      v14 = v13;
      v15 = [v14 layer];
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {
      }

      v17 = [v16 player];

      [v17 pause];
    }

    v18 = qword_100AD0880;
    v19 = *(v1 + qword_100AE7068);
    if (v18 != -1)
    {
      swift_once();
    }

    v28 = String._bridgeToObjectiveC()();
    [v19 setAccessibilityLabel:v28];

    v20 = v28;
  }

  else
  {
LABEL_15:
    sub_1008169A4();
    v21 = qword_100AD0868;
    v22 = *(v1 + qword_100AE7068);
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = String._bridgeToObjectiveC()();
    [v22 setAccessibilityLabel:v23];

    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    type metadata accessor for MainActor();
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = &protocol witness table for MainActor;
    sub_1003E9628(0, 0, v4, &unk_10095A790, v26);
  }
}

uint64_t sub_100510524(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_10050EAB0(a1, v4, v5, v7, v6);
}

uint64_t sub_100510628()
{
  v1 = [v0 connectedScenes];
  sub_100511110();
  sub_10002623C();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = 0;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = &_swiftEmptySetSingleton;
    v64 = &_swiftEmptySetSingleton;
    v2 = __CocoaSet.makeIterator()();
    v5 = __CocoaSet.Iterator.next()();
    if (!v5)
    {
LABEL_29:

      goto LABEL_56;
    }

    while (1)
    {
      v62 = v5;
      swift_dynamicCast();
      v6 = [v63 session];
      v7 = [v6 role];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
      {
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if ([v63 activationState] != -1)
      {
        if ([v63 delegate])
        {
          type metadata accessor for SceneDelegate();
          v14 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v14)
          {
            v15 = v63;
            v16 = v4[2];
            if (v4[3] <= v16)
            {
              sub_10028D564(v16 + 1);
            }

            v4 = v64;
            v17 = NSObject._rawHashValue(seed:)(v64[5]);
            v18 = (v64 + 7);
            v19 = -1 << *(v64 + 32);
            v20 = v17 & ~v19;
            v21 = v20 >> 6;
            if (((-1 << v20) & ~v64[(v20 >> 6) + 7]) != 0)
            {
              v22 = __clz(__rbit64((-1 << v20) & ~v64[(v20 >> 6) + 7])) | v20 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v23 = 0;
              v24 = (63 - v19) >> 6;
              do
              {
                if (++v21 == v24 && (v23 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_62;
                }

                v25 = v21 == v24;
                if (v21 == v24)
                {
                  v21 = 0;
                }

                v23 |= v25;
                v26 = *&v18[8 * v21];
              }

              while (v26 == -1);
              v22 = __clz(__rbit64(~v26)) + (v21 << 6);
            }

            *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
            *(v4[6] + 8 * v22) = v15;
            ++v4[2];
            goto LABEL_5;
          }
        }
      }

LABEL_4:

LABEL_5:
      v5 = __CocoaSet.Iterator.next()();
      if (!v5)
      {
        goto LABEL_29;
      }
    }
  }

  v27 = *(v2 + 32);
  v56 = ((1 << v27) + 63) >> 6;
  if ((v27 & 0x3Fu) > 0xD)
  {
    goto LABEL_63;
  }

  while (2)
  {
    v55 = &v55;
    __chkstk_darwin(v3);
    v57 = &v55 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v57, v28);
    v58 = 0;
    v29 = 0;
    v30 = 1 << *(v2 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v2 + 56);
    v33 = (v30 + 63) >> 6;
    v60 = UIWindowSceneSessionRoleApplication;
    while (v32)
    {
      v34 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_42:
      v37 = v34 | (v29 << 6);
      v38 = *(v2 + 48);
      v59 = v37;
      v39 = *(v38 + 8 * v37);
      v40 = [v39 session];
      v41 = [v40 role];

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
      if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
      {
      }

      else
      {
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v47 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if ([v39 activationState] == -1 || !objc_msgSend(v39, "delegate"))
      {
LABEL_34:
      }

      else
      {
        type metadata accessor for SceneDelegate();
        v48 = swift_dynamicCastClass();

        swift_unknownObjectRelease();
        if (v48)
        {
          *&v57[(v59 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v59;
          if (__OFADD__(v58++, 1))
          {
            __break(1u);
LABEL_55:
            v4 = sub_100652008(v57, v56, v58, v2);
            goto LABEL_56;
          }
        }
      }
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
        goto LABEL_55;
      }

      v36 = *(v2 + 56 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v32 = (v36 - 1) & v36;
        goto LABEL_42;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v54 = swift_slowAlloc();
  v4 = sub_1005112C8(v54, v56, v2, sub_100510FB8);

LABEL_56:
  sub_100510CC4(v4);
  v51 = v50;

  if (!v51)
  {
    return 0;
  }

  v52 = [v51 delegate];

  if (!v52)
  {
    return 0;
  }

  type metadata accessor for SceneDelegate();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

void sub_100510CC4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v5 = v11 & *(a1 + 56);

    v3 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  sub_100511110();
  sub_10002623C();
  Set.Iterator.init(_cocoa:)();
  v1 = v25;
  v2 = v26;
  v4 = v27;
  v3 = v28;
  v5 = v29;
  if ((v25 & 0x8000000000000000) == 0)
  {
    if (v29)
    {
LABEL_4:
      v6 = (v5 - 1) & v5;
      v7 = __clz(__rbit64(v5)) | (v3 << 6);
      v8 = v3;
LABEL_14:
      v14 = *(*(v1 + 48) + 8 * v7);
      v24 = 1;
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_32:
      sub_100014FF8();
      return;
    }

LABEL_9:
    v12 = v3;
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_34;
      }

      if (v8 >= ((v4 + 64) >> 6))
      {
        goto LABEL_32;
      }

      v13 = *(v2 + 8 * v8);
      ++v12;
      if (v13)
      {
        v6 = (v13 - 1) & v13;
        v7 = __clz(__rbit64(v13)) | (v8 << 6);
        goto LABEL_14;
      }
    }
  }

  if (!__CocoaSet.Iterator.next()())
  {
    goto LABEL_32;
  }

  swift_dynamicCast();
  v24 = 0;
  v14 = v30;
  v8 = v28;
  v6 = v29;
  if (!v30)
  {
    goto LABEL_32;
  }

LABEL_15:
  v23 = v14;
  v22 = v4;
  v15 = (v4 + 64) >> 6;
  if (!v24)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v16 = v8;
    v17 = v6;
    v18 = v8;
    if (!v6)
    {
      break;
    }

LABEL_20:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v21 = [v20 activationState];
      if (v21 < [v23 activationState])
      {

        v23 = v20;
      }

      else
      {
      }

      v8 = v18;
      v6 = v19;
      if (v24)
      {
        break;
      }

LABEL_22:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100511110();
        swift_dynamicCast();
        v20 = v30;
        v18 = v8;
        v19 = v6;
        if (v30)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_32;
    }

    v17 = *(v2 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_100510FB8(id *a1)
{
  v1 = *a1;
  v2 = [*a1 session];
  v3 = [v2 role];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  if ([v1 activationState] == -1)
  {
    return 0;
  }

  result = [v1 delegate];
  if (result)
  {
    type metadata accessor for SceneDelegate();
    v11 = swift_dynamicCastClass() != 0;
    swift_unknownObjectRelease();
    return v11;
  }

  return result;
}

unint64_t sub_100511110()
{
  result = qword_100AE4620;
  if (!qword_100AE4620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE4620);
  }

  return result;
}

void sub_10051115C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_100652008(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1005112C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_10051115C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_100511358()
{
  if (qword_100AD0428 != -1)
  {
    swift_once();
  }

  v0 = String._bridgeToObjectiveC()();

  v1 = [objc_opt_self() actionWithTitle:v0 style:0 handler:0];

  qword_100B2FA80 = v1;
}

void sub_10051140C()
{
  if (qword_100AD06F8 != -1)
  {
    swift_once();
  }

  v0 = String._bridgeToObjectiveC()();

  v3[4] = sub_100511544;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10016B4D8;
  v3[3] = &unk_100A71378;
  v1 = _Block_copy(v3);

  v2 = [objc_opt_self() actionWithTitle:v0 style:0 handler:v1];
  _Block_release(v1);

  qword_100B2FA88 = v2;
}

uint64_t sub_100511554()
{
  v0 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1008B4384(v2);
  sub_1008B4EFC(v2, 0, 0, 0);
  sub_1001616C0(v2);
  return sub_1001295EC(v5);
}

id sub_100511674()
{
  type metadata accessor for JurassicAlertController();
  if (qword_100AD06D0 != -1)
  {
    swift_once();
  }

  if (qword_100AD06D8 != -1)
  {
    swift_once();
  }

  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  v3 = qword_100AD0570;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = String._bridgeToObjectiveC()();
  v19 = DebugData.init(name:);
  v20 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10016B4D8;
  v18 = &unk_100A71328;
  v6 = _Block_copy(&v15);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:1 handler:v6];
  _Block_release(v6);

  [v4 addAction:v8];
  if (qword_100AD06E0 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  v19 = sub_10051154C;
  v20 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10016B4D8;
  v18 = &unk_100A71350;
  v10 = _Block_copy(&v15);

  v11 = [v7 actionWithTitle:v9 style:0 handler:v10];
  _Block_release(v10);

  [v4 addAction:v11];
  result = [v4 view];
  if (result)
  {
    v13 = result;
    v14 = [objc_opt_self() systemIndigoColor];
    [v13 setTintColor:v14];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100511A04()
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v1 = result;
  wapiCapability = MobileGestalt_get_wapiCapability();

  if (wapiCapability)
  {
    if (qword_100AD06C8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (qword_100AD06C0 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_6:

  type metadata accessor for JurassicAlertController();
  v3 = String._bridgeToObjectiveC()();

  v4 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v3 message:0 preferredStyle:1];

  v5 = qword_100ACFEE8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  [v6 addAction:qword_100B2FA88];
  if (qword_100ACFEE0 != -1)
  {
    swift_once();
  }

  [v6 addAction:qword_100B2FA80];

  return v6;
}

void *sub_100511BC0()
{
  if (qword_100AD06E8 != -1)
  {
    swift_once();
  }

  if (qword_100AD06F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for JurassicAlertController();
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  v3 = qword_100ACFEE0;
  v4 = v2;
  if (v3 != -1)
  {
    v7 = v4;
    swift_once();
    v4 = v7;
  }

  v5 = v4;
  [v4 addAction:qword_100B2FA80];

  return v5;
}

uint64_t storeEnumTagSinglePayload for AssetSizeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100511DE8()
{
  result = qword_100AE7498;
  if (!qword_100AE7498)
  {
    sub_1000F2A18(&qword_100AE74A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7498);
  }

  return result;
}

uint64_t sub_100511E50(unsigned __int8 a1)
{
  if (a1 > 6u)
  {

    v2 = 0;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_100511F80(unsigned __int8 a1)
{
  if (a1 <= 3u && a1 > 1u && a1 != 2)
  {
    v4 = 1;
    goto LABEL_22;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v4 = 1;
      goto LABEL_22;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      if (a1 == 1)
      {
        v4 = 1;
        goto LABEL_22;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        if (a1 > 6u)
        {
          v4 = 1;
        }

        else
        {
          v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v6)
          {
            goto LABEL_17;
          }

          if (a1)
          {
            v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          else
          {
            v4 = 1;
          }
        }

LABEL_22:

        return v4 & 1;
      }
    }
  }

LABEL_17:
  v4 = 1;
  return v4 & 1;
}

unint64_t sub_100512488@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005125B8(*a1);
  *a2 = result;
  return result;
}

void sub_1005124B8(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = *v1;
  v4 = 0x6154656772614C78;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (v3 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v3 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x69576D756964656DLL;
  if (v3 != 2)
  {
    v10 = 0x656772616CLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x656772614C78;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v4 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_1005125B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5A068, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100512608@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SettingsKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentUser];
  v7 = objc_allocWithZone(type metadata accessor for LockSettingsViewModel());
  sub_1000042A4(v6);
  sub_10051721C();
  Bindable<A>.init(wrappedValue:)();
  v8 = type metadata accessor for MacSettingsGeneralTab();
  v14 = v8[5];
  v9 = *(v3 + 104);
  v9(v5, enum case for SettingsKey.skipJournalingSuggestions(_:), v2);
  SettingsKey.rawValue.getter();
  v10 = *(v3 + 8);
  v10(v5, v2);
  *(a1 + v14) = AppStorage.init<A>(wrappedValue:_:store:)();
  v14 = v8[6];
  v9(v5, enum case for SettingsKey.addCurrentLocation(_:), v2);
  SettingsKey.rawValue.getter();
  v10(v5, v2);
  *(a1 + v14) = AppStorage.init<A>(wrappedValue:_:store:)();
  v14 = v8[7];
  v15 = 0;
  v9(v5, enum case for SettingsKey.addEntryTitle(_:), v2);
  SettingsKey.rawValue.getter();
  v10(v5, v2);
  sub_1005172C0();
  *(a1 + v14) = AppStorage.init<A>(wrappedValue:_:store:)();
  v14 = v8[8];
  v9(v5, enum case for SettingsKey.alwaysUseMomentDate(_:), v2);
  SettingsKey.rawValue.getter();
  v10(v5, v2);
  v11 = a1;
  *(a1 + v14) = AppStorage.init<A>(wrappedValue:_:store:)();
  v12 = v8[9];
  v9(v5, enum case for SettingsKey.saveToPhotos(_:), v2);
  SettingsKey.rawValue.getter();
  v10(v5, v2);
  result = AppStorage.init<A>(wrappedValue:_:store:)();
  *(v11 + v12) = result;
  return result;
}

uint64_t sub_100512958@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v51 = sub_1000F24EC(&qword_100AE7590);
  v61 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = &v46 - v5;
  v60 = sub_1000F24EC(&qword_100AE7598);
  v57 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v46 - v8;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v56 = sub_1000F24EC(&qword_100AE75A0);
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v64 = a1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v69 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v70 = v15;
  sub_1000777B4();
  v69 = Text.init<A>(_:)();
  v70 = v16;
  v71 = v17 & 1;
  v72 = v18;
  sub_1000F24EC(&qword_100AE75A8);
  sub_10000B58C(&qword_100AE75B0, &qword_100AE75A8);
  v49 = v14;
  Section<>.init(header:content:)();
  v63 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v69 = Text.init(_:tableName:bundle:comment:)();
  v70 = v19;
  v71 = v20 & 1;
  v72 = v21;
  sub_1000F24EC(&qword_100AD4030);
  v22 = sub_1000F2A18(&qword_100AD4028);
  v23 = sub_1000F2A18(&qword_100AD4048);
  v24 = sub_10000B58C(&qword_100AD4050, &qword_100AD4028);
  v25 = sub_10000B58C(&qword_100AD4058, &qword_100AD4048);
  v65 = v22;
  v66 = v23;
  v67 = v24;
  v68 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v54;
  Section<>.init(header:content:)();
  v62 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v69 = Text.init(_:tableName:bundle:comment:)();
  v70 = v27;
  v71 = v28 & 1;
  v72 = v29;
  sub_1000F24EC(&qword_100AE75B8);
  sub_10000B58C(&qword_100AE75C0, &qword_100AE75B8);
  v30 = v59;
  Section<>.init(header:content:)();
  v31 = *(v53 + 16);
  v32 = v55;
  v33 = v56;
  v31(v55, v14, v56);
  v48 = *(v57 + 16);
  v34 = v58;
  v48(v58, v26, v60);
  v47 = *(v61 + 16);
  v35 = v50;
  v36 = v30;
  v37 = v51;
  v47(v50, v36, v51);
  v38 = v52;
  v31(v52, v32, v33);
  v39 = sub_1000F24EC(&qword_100AE75C8);
  v40 = v60;
  v48(&v38[*(v39 + 48)], v34, v60);
  v47(&v38[*(v39 + 64)], v35, v37);
  v41 = *(v61 + 8);
  v41(v59, v37);
  v42 = *(v57 + 8);
  v42(v54, v40);
  v43 = *(v53 + 8);
  v44 = v56;
  v43(v49, v56);
  v41(v35, v37);
  v42(v58, v40);
  return (v43)(v55, v44);
}

uint64_t sub_1005131E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a1;
  v108 = a2;
  v104 = sub_1000F24EC(&qword_100AD4028);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = v89 - v2;
  v3 = sub_1000F24EC(&qword_100AD4030);
  v109 = *(v3 - 8);
  v110 = v3;
  __chkstk_darwin(v3);
  v107 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v106 = v89 - v6;
  v7 = sub_1000F24EC(&qword_100AE7670);
  v111 = *(v7 - 8);
  v112 = v7;
  __chkstk_darwin(v7);
  v101 = v89 - v8;
  v9 = sub_1000F24EC(&qword_100AE7678);
  __chkstk_darwin(v9 - 8);
  v105 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v117 = v89 - v12;
  v13 = sub_1000F24EC(&qword_100AD4068);
  v113 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v89 - v14;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v116 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for JournalFeatureFlags();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000F24EC(&qword_100AE7680);
  __chkstk_darwin(v23 - 8);
  v115 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v28 = v89 - v27;
  (*(v20 + 104))(v22, enum case for JournalFeatureFlags.location(_:), v19, v26);
  v29 = JournalFeatureFlags.isEnabled.getter();
  (*(v20 + 8))(v22, v19);
  if (v29)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v119 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
    v120 = v30;
    sub_1000777B4();
    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    type metadata accessor for MacSettingsGeneralTab();
    AppStorage.projectedValue.getter();
    __chkstk_darwin(v119);
    v85 = v31;
    v86 = v33;
    v38 = v15;
    v39 = v113;
    LOWORD(v87) = v35 & 1;
    v88 = v37;
    Toggle.init(isOn:label:)();
    sub_10000B58C(&qword_100AD4078, &qword_100AD4068);
    View.accessibilityLabel(_:)();
    sub_1000594D0(v31, v33, v35 & 1);

    v39[1](v38, v13);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v114 = v28;
  v41 = sub_1000F24EC(&qword_100AD4070);
  (*(*(v41 - 8) + 56))(v28, v40, 1, v41);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v85 = "Add entry title setting selection";
  v86 = 33;
  v119 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v120 = v42;
  v95 = sub_1000777B4();
  v43 = Text.init<A>(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v96 = type metadata accessor for MacSettingsGeneralTab();
  AppStorage.projectedValue.getter();
  v123 = v119;
  v124 = v120;
  v125 = v121;
  v119 = v43;
  v120 = v45;
  v121 = v47 & 1;
  v122 = v49;
  sub_1000F24DC(v43, v45, v47 & 1);

  sub_1000F24EC(&qword_100AE7688);
  v50 = sub_1005178CC();
  v113 = &protocol conformance descriptor for TupleView<A>;
  v87 = v50;
  v88 = sub_10000B58C(&qword_100AE7698, &qword_100AE7688);
  v51 = v101;
  Picker.init(selection:label:content:)();
  sub_1000F24EC(&qword_100AE7640);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100940080;
  v100 = v43;
  *(v52 + 32) = v43;
  *(v52 + 40) = v45;
  v99 = v45;
  v98 = v47 & 1;
  *(v52 + 48) = v47 & 1;
  v97 = v49;
  *(v52 + 56) = v49;
  sub_1000F24DC(v43, v45, v47 & 1);
  sub_10000B58C(&qword_100AE76A0, &qword_100AE7670);

  v53 = v112;
  View.accessibilityInputLabels(_:)();

  (*(v111 + 8))(v51, v53);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v119 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v120 = v54;
  v55 = Text.init<A>(_:)();
  v57 = v56;
  v111 = v56;
  LODWORD(v112) = v58;
  v60 = v59;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v119 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v120 = v61;
  v62 = Text.init<A>(_:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = AppStorage.projectedValue.getter();
  v96 = v89;
  v91 = v119;
  v90 = v120;
  v89[3] = v121;
  __chkstk_darwin(v69);
  v92 = v55;
  *&v89[-16] = v55;
  *&v89[-14] = v57;
  LODWORD(v112) = v112 & 1;
  LOBYTE(v89[-12]) = v112;
  *&v89[-10] = v60;
  v93 = v60;
  v95 = v62;
  v86 = v64;
  v94 = v64;
  LODWORD(v116) = v66 & 1;
  v88 = v68;
  v101 = v68;
  sub_1000F24EC(&qword_100AD4038);
  sub_10000B58C(&qword_100AD4040, &qword_100AD4038);
  v70 = v102;
  v71 = Toggle.init(isOn:label:)();
  __chkstk_darwin(v71);
  *&v89[-20] = v118;
  *&v89[-18] = v55;
  *&v89[-16] = v111;
  LOBYTE(v89[-14]) = v112;
  *&v89[-12] = v60;
  *&v89[-10] = v62;
  v85 = v64;
  LOBYTE(v86) = v116;
  v87 = v68;
  sub_1000F24EC(&qword_100AD4048);
  sub_10000B58C(&qword_100AD4050, &qword_100AD4028);
  sub_10000B58C(&qword_100AD4058, &qword_100AD4048);
  v72 = v106;
  v73 = v104;
  View.accessibilityRepresentation<A>(representation:)();
  (*(v103 + 8))(v70, v73);
  v74 = v115;
  sub_1000082B4(v114, v115, &qword_100AE7680);
  v75 = v105;
  sub_1000082B4(v117, v105, &qword_100AE7678);
  v76 = v109;
  v77 = v110;
  v78 = *(v109 + 16);
  v79 = v107;
  v78(v107, v72, v110);
  v80 = v74;
  v81 = v108;
  sub_1000082B4(v80, v108, &qword_100AE7680);
  v82 = sub_1000F24EC(&qword_100AE76A8);
  sub_1000082B4(v75, v81 + *(v82 + 48), &qword_100AE7678);
  v78((v81 + *(v82 + 64)), v79, v77);
  sub_1000594D0(v92, v111, v112);

  sub_1000594D0(v95, v94, v116);

  sub_1000594D0(v100, v99, v98);

  v83 = *(v76 + 8);
  v83(v72, v77);
  sub_100004F84(v117, &qword_100AE7678);
  sub_100004F84(v114, &qword_100AE7680);
  v83(v79, v77);
  sub_100004F84(v75, &qword_100AE7678);
  return sub_100004F84(v115, &qword_100AE7680);
}

uint64_t sub_100514118@<X0>(char *a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000F24EC(&qword_100AE76B0);
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v38 - v6;
  __chkstk_darwin(v7);
  v43 = &v38 - v8;
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v44 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v45 = v18;
  sub_1000777B4();
  *v17 = Text.init<A>(_:)();
  *(v17 + 1) = v19;
  v17[16] = v20 & 1;
  *(v17 + 3) = v21;
  *(v17 + 16) = 256;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v44 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v45 = v22;
  *v14 = Text.init<A>(_:)();
  *(v14 + 1) = v23;
  v14[16] = v24 & 1;
  *(v14 + 3) = v25;
  *(v14 + 16) = 257;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v44 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v45 = v26;
  *v11 = Text.init<A>(_:)();
  *(v11 + 1) = v27;
  v11[16] = v28 & 1;
  *(v11 + 3) = v29;
  *(v11 + 16) = 258;
  v30 = v43;
  v31 = *(v42 + 16);
  v31(v43, v17, v3);
  v32 = v39;
  v31(v39, v14, v3);
  v33 = v40;
  v31(v40, v11, v3);
  v34 = v41;
  v31(v41, v30, v3);
  v35 = sub_1000F24EC(&qword_100AE76B8);
  v31(&v34[*(v35 + 48)], v32, v3);
  v31(&v34[*(v35 + 64)], v33, v3);
  v36 = *(v42 + 8);
  v36(v11, v3);
  v36(v14, v3);
  v36(v17, v3);
  v36(v33, v3);
  v36(v32, v3);
  return (v36)(v43, v3);
}

uint64_t sub_100514640@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9)
{
  v33 = a7;
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v28 = a3;
  v32 = a8;
  v11 = sub_1000F24EC(&qword_100AD4068);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-v13];
  v15 = sub_1000F24EC(&qword_100AD4070);
  __chkstk_darwin(v15 - 8);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v27[-v19];
  type metadata accessor for MacSettingsGeneralTab();
  AppStorage.projectedValue.getter();
  v34 = a1;
  v35 = a2;
  v36 = v28 & 1;
  v37 = v29;
  Toggle.init(isOn:label:)();
  sub_10000B58C(&qword_100AD4078, &qword_100AD4068);
  View.accessibilityLabel(_:)();
  (*(v12 + 8))(v14, v11);
  sub_1000082B4(v20, v17, &qword_100AD4070);
  v21 = v32;
  sub_1000082B4(v17, v32, &qword_100AD4070);
  v22 = v21 + *(sub_1000F24EC(&qword_100AD4080) + 48);
  v24 = v30;
  v23 = v31;
  *v22 = v30;
  *(v22 + 8) = v23;
  v25 = v33;
  LOBYTE(v14) = v33 & 1;
  *(v22 + 16) = v33 & 1;
  *(v22 + 24) = a9;
  sub_1000F24DC(v24, v23, v25 & 1);

  sub_1000F24DC(v24, v23, v14);

  sub_100004F84(v20, &qword_100AD4070);
  sub_1000594D0(v24, v23, v14);

  return sub_100004F84(v17, &qword_100AD4070);
}

uint64_t sub_10051494C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v39 = a2;
  v38 = sub_1000F24EC(&qword_100AD4028);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = v26 - v2;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v58 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v59 = v5;
  sub_1000777B4();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v35 = v9;
  v36 = v10;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v58 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v59 = v11;
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v29 = v13;
  v16 = v15;
  v18 = v17;
  type metadata accessor for MacSettingsGeneralTab();
  AppStorage.projectedValue.getter();
  v28 = v58;
  v27 = v59;
  v26[3] = v60;
  v50 = v6;
  v51 = v8;
  v19 = v6;
  v31 = v8;
  v30 = v35 & 1;
  v52 = v35 & 1;
  v20 = v36;
  v53 = v36;
  v54 = v12;
  v32 = v12;
  v55 = v14;
  v56 = v16 & 1;
  v35 = v16 & 1;
  v57 = v18;
  v34 = v18;
  sub_1000F24EC(&qword_100AD4038);
  sub_10000B58C(&qword_100AD4040, &qword_100AD4038);
  v21 = v37;
  Toggle.init(isOn:label:)();
  v41 = v33;
  v42 = v19;
  v43 = v8;
  v22 = v30;
  v44 = v30;
  v45 = v20;
  v46 = v12;
  v23 = v29;
  v47 = v29;
  v48 = v16 & 1;
  v49 = v18;
  sub_1000F24EC(&qword_100AD4048);
  sub_10000B58C(&qword_100AD4050, &qword_100AD4028);
  sub_10000B58C(&qword_100AD4058, &qword_100AD4048);
  v24 = v38;
  View.accessibilityRepresentation<A>(representation:)();
  sub_1000594D0(v19, v31, v22);

  sub_1000594D0(v32, v23, v35);

  return (*(v40 + 8))(v21, v24);
}

uint64_t sub_100514E9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9)
{
  v33 = a7;
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v28 = a3;
  v32 = a8;
  v11 = sub_1000F24EC(&qword_100AD4068);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-v13];
  v15 = sub_1000F24EC(&qword_100AD4070);
  __chkstk_darwin(v15 - 8);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v27[-v19];
  type metadata accessor for MacSettingsGeneralTab();
  AppStorage.projectedValue.getter();
  v34 = a1;
  v35 = a2;
  v36 = v28 & 1;
  v37 = v29;
  Toggle.init(isOn:label:)();
  sub_10000B58C(&qword_100AD4078, &qword_100AD4068);
  View.accessibilityLabel(_:)();
  (*(v12 + 8))(v14, v11);
  sub_1000082B4(v20, v17, &qword_100AD4070);
  v21 = v32;
  sub_1000082B4(v17, v32, &qword_100AD4070);
  v22 = v21 + *(sub_1000F24EC(&qword_100AD4080) + 48);
  v24 = v30;
  v23 = v31;
  *v22 = v30;
  *(v22 + 8) = v23;
  v25 = v33;
  LOBYTE(v14) = v33 & 1;
  *(v22 + 16) = v33 & 1;
  *(v22 + 24) = a9;
  sub_1000F24DC(v24, v23, v25 & 1);

  sub_1000F24DC(v24, v23, v14);

  sub_100004F84(v20, &qword_100AD4070);
  sub_1000594D0(v24, v23, v14);

  return sub_100004F84(v17, &qword_100AD4070);
}

uint64_t sub_1005151A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v98 = a2;
  v84 = sub_1000F24EC(&qword_100AE75D0);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = v80 - v3;
  v4 = sub_1000F24EC(&qword_100AE75D8);
  __chkstk_darwin(v4 - 8);
  v97 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = v80 - v7;
  v8 = sub_1000F24EC(&qword_100AE74C0);
  v105 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v80 - v9;
  v88 = sub_1000F24EC(&qword_100AD4028);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = v80 - v11;
  v90 = sub_1000F24EC(&qword_100AE75E0);
  __chkstk_darwin(v90);
  v89 = v80 - v12;
  v95 = sub_1000F24EC(&qword_100AE75E8);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v104 = v80 - v15;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v18 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v21 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  LOWORD(v78) = 2;
  v76 = "Lock journal in Settings";
  v77 = 24;
  v80[2] = v21;
  v80[3] = v18;
  v116 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v117 = v22;
  v80[1] = sub_1000777B4();
  v106 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v107 = v27;
  v85 = a1;
  v28 = sub_100515F28();
  v30 = v29;
  LODWORD(a1) = v31;
  v33 = v32;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v34 = *(v105 + 8);
  v81 = v10;
  v105 += 8;
  v80[0] = v34;
  v34(v10, v8);
  LODWORD(v99) = v118;
  v108 = v106;
  v109 = v24;
  v100 = v24;
  v91 = v26;
  v110 = v26 & 1;
  v111 = v107;
  v112 = v28;
  v102 = v28;
  v101 = v30;
  v113 = v30;
  v92 = a1;
  v35 = a1 & 1;
  v36 = v86;
  v114 = v35;
  v103 = v33;
  v115 = v33;
  sub_1000F24EC(&qword_100AD4038);
  sub_10000B58C(&qword_100AD4040, &qword_100AD4038);
  v37 = v85;
  Toggle.init(isOn:label:)();
  v99 = v8;
  Bindable.wrappedValue.getter();
  v38 = v116;
  if (sub_100812158())
  {
    swift_getKeyPath();
    v116 = v38;
    sub_10051721C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v39 = static Runtime.hasAppProtectionLock.getter();
  }

  else
  {
    v39 = 1;
  }

  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = v39 & 1;
  v42 = v89;
  v43 = (*(v87 + 32))(v89, v36, v88);
  v44 = (v42 + *(v90 + 36));
  *v44 = KeyPath;
  v44[1] = sub_1000FF5FC;
  v44[2] = v41;
  __chkstk_darwin(v43);
  v45 = v106;
  v80[-10] = v37;
  v80[-9] = v45;
  v80[-8] = v100;
  LOBYTE(v80[-7]) = v26 & 1;
  v46 = v102;
  v80[-6] = v107;
  v80[-5] = v46;
  v76 = v101;
  LOBYTE(v77) = v35;
  v78 = v103;
  sub_1000F24EC(&qword_100AE75F0);
  sub_1005175F4();
  sub_10000B58C(&qword_100AE7600, &qword_100AE75F0);
  View.accessibilityRepresentation<A>(representation:)();
  sub_100004F84(v42, &qword_100AE75E0);
  Bindable.wrappedValue.getter();
  v47 = v116;
  LOBYTE(KeyPath) = sub_100811FCC();

  if (KeyPath)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    LOWORD(v78) = 2;
    v76 = "Require Passcode time selection in Settings";
    v77 = 43;
    v116 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
    v117 = v48;
    v49 = Text.init<A>(_:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v81;
    v57 = v99;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    (v80[0])(v56, v57);
    v120 = v123;
    v121 = v124;
    v122 = v125;
    v116 = v49;
    v117 = v51;
    v53 &= 1u;
    v118 = v53;
    v119 = v55;
    sub_1000F24DC(v49, v51, v53);

    sub_1000F24EC(&qword_100AE7618);
    sub_1000F24EC(&qword_100AE7620);
    v58 = sub_1005176D8();
    v59 = sub_10000B58C(&qword_100AE7638, &qword_100AE7620);
    v78 = v58;
    v79 = v59;
    v60 = v82;
    Picker.init(selection:label:content:)();
    sub_1000F24EC(&qword_100AE7640);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100940080;
    *(v61 + 32) = v49;
    *(v61 + 40) = v51;
    *(v61 + 48) = v53;
    *(v61 + 56) = v55;
    sub_1000F24DC(v49, v51, v53);
    sub_10000B58C(&qword_100AE7648, &qword_100AE75D0);

    v62 = v96;
    v63 = v84;
    View.accessibilityInputLabels(_:)();

    sub_1000594D0(v49, v51, v53);

    (*(v83 + 8))(v60, v63);
    v64 = 0;
  }

  else
  {
    v64 = 1;
    v62 = v96;
  }

  v65 = sub_1000F24EC(&qword_100AE7608);
  (*(*(v65 - 8) + 56))(v62, v64, 1, v65);
  v66 = v94;
  v67 = *(v94 + 16);
  v68 = v93;
  v69 = v104;
  v70 = v95;
  v67(v93, v104, v95);
  v71 = v97;
  sub_1000082B4(v62, v97, &qword_100AE75D8);
  v72 = v98;
  v67(v98, v68, v70);
  v73 = sub_1000F24EC(&qword_100AE7610);
  sub_1000082B4(v71, &v72[*(v73 + 48)], &qword_100AE75D8);
  sub_1000594D0(v106, v100, v91 & 1);

  sub_1000594D0(v102, v101, v92 & 1);

  sub_100004F84(v62, &qword_100AE75D8);
  v74 = *(v66 + 8);
  v74(v69, v70);
  sub_100004F84(v71, &qword_100AE75D8);
  return (v74)(v68, v70);
}

uint64_t sub_100515F28()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_1000F24EC(&qword_100AE74C0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = static Runtime.hasAppProtectionLock.getter();

  if ((v2 & 1) == 0)
  {
    Bindable.wrappedValue.getter();
    sub_100812158();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  sub_1000777B4();
  return Text.init<A>(_:)();
}

uint64_t sub_1005161D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a8;
  v51 = a6;
  v52 = a7;
  v44 = a5;
  v43 = a4;
  v42 = a3;
  v41 = a2;
  v40[1] = a1;
  v48 = a9;
  v50 = a10;
  v10 = sub_1000F24EC(&qword_100AE74C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v40 - v12;
  v14 = sub_1000F24EC(&qword_100AD4068);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - v16;
  v18 = sub_1000F24EC(&qword_100AD4070);
  __chkstk_darwin(v18 - 8);
  v20 = v40 - v19;
  v45 = sub_1000F24EC(&qword_100AE7660);
  __chkstk_darwin(v45);
  v47 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v40 - v23;
  __chkstk_darwin(v25);
  v46 = v40 - v26;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v11 + 8))(v13, v10);
  v53 = v41;
  v54 = v42;
  v55 = v43 & 1;
  v56 = v44;
  Toggle.init(isOn:label:)();
  sub_10000B58C(&qword_100AD4078, &qword_100AD4068);
  View.accessibilityLabel(_:)();
  (*(v15 + 8))(v17, v14);
  Bindable.wrappedValue.getter();
  v27 = v57;
  if (sub_100812158())
  {
    swift_getKeyPath();
    v57 = v27;
    sub_10051721C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = static Runtime.hasAppProtectionLock.getter();
  }

  else
  {
    v28 = 1;
  }

  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v28 & 1;
  sub_100021CEC(v20, v24, &qword_100AD4070);
  v31 = v46;
  v32 = &v24[*(v45 + 36)];
  *v32 = KeyPath;
  v32[1] = sub_1001D54CC;
  v32[2] = v30;
  sub_100021CEC(v24, v31, &qword_100AE7660);
  v33 = v47;
  sub_1000082B4(v31, v47, &qword_100AE7660);
  v34 = v48;
  sub_1000082B4(v33, v48, &qword_100AE7660);
  v35 = v34 + *(sub_1000F24EC(&qword_100AE7668) + 48);
  v37 = v51;
  v36 = v52;
  *v35 = v51;
  *(v35 + 8) = v36;
  v38 = v49;
  LOBYTE(v34) = v49 & 1;
  *(v35 + 16) = v49 & 1;
  *(v35 + 24) = v50;
  sub_1000F24DC(v37, v36, v38 & 1);

  sub_1000F24DC(v37, v36, v34);

  sub_100004F84(v31, &qword_100AE7660);
  sub_1000594D0(v37, v36, v34);

  return sub_100004F84(v33, &qword_100AE7660);
}

uint64_t sub_100516734@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100812544();
  *a1 = result;
  return result;
}

uint64_t sub_100516760(unsigned __int8 *a1, void **a2)
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *a2;
  v8 = *a1;
  sub_100812B10(v8);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v7;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = v10;
  *(v12 + 40) = v8;
  sub_1003E9628(0, 0, v6, &unk_10095AAA8, v12);
}

uint64_t sub_1005168A8@<X0>(char *a1@<X8>)
{
  v57 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000F24EC(&qword_100AE7650);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v51 - v7;
  __chkstk_darwin(v8);
  v60 = &v51 - v9;
  __chkstk_darwin(v10);
  v59 = &v51 - v11;
  __chkstk_darwin(v12);
  v54 = (&v51 - v13);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  __chkstk_darwin(v20);
  v22 = &v51 - v21;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v61 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v62 = v23;
  sub_1000777B4();
  v24 = Text.init<A>(_:)();
  v58 = v22;
  *v22 = v24;
  *(v22 + 1) = v25;
  v22[16] = v26 & 1;
  *(v22 + 3) = v27;
  *(v22 + 16) = 256;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v61 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v62 = v28;
  *v19 = Text.init<A>(_:)();
  *(v19 + 1) = v29;
  v19[16] = v30 & 1;
  *(v19 + 3) = v31;
  *(v19 + 16) = 257;
  v53 = v19;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v61 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v62 = v32;
  *v16 = Text.init<A>(_:)();
  *(v16 + 1) = v33;
  v16[16] = v34 & 1;
  *(v16 + 3) = v35;
  *(v16 + 16) = 258;
  v52 = v16;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v61 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v62 = v36;
  v37 = Text.init<A>(_:)();
  v38 = v54;
  *v54 = v37;
  v38[1] = v39;
  *(v38 + 16) = v40 & 1;
  v38[3] = v41;
  *(v38 + 16) = 259;
  v42 = *(v4 + 16);
  v43 = v59;
  v42(v59, v58, v3);
  v44 = v60;
  v42(v60, v19, v3);
  v45 = v55;
  v42(v55, v16, v3);
  v46 = v56;
  v42(v56, v38, v3);
  v47 = v57;
  v42(v57, v43, v3);
  v48 = sub_1000F24EC(&qword_100AE7658);
  v42(&v47[v48[12]], v44, v3);
  v42(&v47[v48[16]], v45, v3);
  v42(&v47[v48[20]], v46, v3);
  v49 = *(v4 + 8);
  v49(v38, v3);
  v49(v52, v3);
  v49(v53, v3);
  v49(v58, v3);
  v49(v46, v3);
  v49(v45, v3);
  v49(v60, v3);
  return (v49)(v59, v3);
}

void sub_100516F40()
{
  sub_1000F24EC(&qword_100AE74C0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext;
  [*&v2[OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext] invalidate];
  if (*&v2[v0])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
  }
}

uint64_t sub_10051708C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v3;
  sub_1000F24EC(&qword_100AE7578);
  sub_10000B58C(&qword_100AE7580, &qword_100AE7578);
  Form.init(content:)();
  sub_100517480(v3, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1005174E4(v7, v9 + v8);
  result = sub_1000F24EC(&qword_100AE7588);
  v11 = (a2 + *(result + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_100517548;
  v11[3] = v9;
  return result;
}

unint64_t sub_10051721C()
{
  result = qword_100AE74B0;
  if (!qword_100AE74B0)
  {
    type metadata accessor for LockSettingsViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE74B0);
  }

  return result;
}

uint64_t type metadata accessor for MacSettingsGeneralTab()
{
  result = qword_100AE7520;
  if (!qword_100AE7520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1005172C0()
{
  result = qword_100AE74B8;
  if (!qword_100AE74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE74B8);
  }

  return result;
}

void sub_10051733C()
{
  sub_100517404();
  if (v0 <= 0x3F)
  {
    sub_1001D3B2C(319, &qword_100AD7080);
    if (v1 <= 0x3F)
    {
      sub_1001D3B2C(319, &unk_100AE7538);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100517404()
{
  if (!qword_100AE7530)
  {
    type metadata accessor for LockSettingsViewModel();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE7530);
    }
  }
}

uint64_t sub_100517480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSettingsGeneralTab();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005174E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSettingsGeneralTab();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100517548()
{
  type metadata accessor for MacSettingsGeneralTab();

  sub_100516F40();
}

unint64_t sub_1005175F4()
{
  result = qword_100AE75F8;
  if (!qword_100AE75F8)
  {
    sub_1000F2A18(&qword_100AE75E0);
    sub_10000B58C(&qword_100AD4050, &qword_100AD4028);
    sub_10000B58C(&qword_100AD2348, &qword_100AD2350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE75F8);
  }

  return result;
}

unint64_t sub_1005176D8()
{
  result = qword_100AE7628;
  if (!qword_100AE7628)
  {
    sub_1000F2A18(&qword_100AE7618);
    sub_10051775C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7628);
  }

  return result;
}

unint64_t sub_10051775C()
{
  result = qword_100AE7630;
  if (!qword_100AE7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7630);
  }

  return result;
}

uint64_t sub_1005177B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_100813CF4(a1, v4, v5, v6, v7);
}

unint64_t sub_1005178CC()
{
  result = qword_100AE7690;
  if (!qword_100AE7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7690);
  }

  return result;
}

unint64_t sub_100517980()
{
  result = qword_100AE76C0;
  if (!qword_100AE76C0)
  {
    sub_1000F2A18(&qword_100AE7588);
    sub_10000B58C(&qword_100AE76C8, &qword_100AE76D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE76C0);
  }

  return result;
}

uint64_t sub_100517A40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100517A94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100517AE8(unsigned __int8 a1, uint64_t a2, char a3)
{
  v6 = sub_100517D4C(a1, a2, a3 & 1);
  if ((v7 & 1) == 0)
  {
    DebugData.init(name:)(*&v6);
  }

  v8 = sub_100517D4C(a1, a2, a3 & 1);
  if ((v9 & 1) == 0)
  {
    DebugData.init(name:)(*&v8);
  }

  countAndFlagsBits = sub_100517D4C(a1, a2, a3 & 1);
  if ((object & 1) == 0)
  {
    v12 = DebugData.init(name:)(*&countAndFlagsBits);
    object = v12.name._object;
    countAndFlagsBits = v12.name._countAndFlagsBits;
  }

  return DebugData.init(name:)(*&countAndFlagsBits).name._countAndFlagsBits;
}

void *sub_100517CFC()
{
  result = sub_10036320C(&off_100A55F70);
  off_100AE76D8 = result;
  return result;
}

void *sub_100517D24()
{
  result = sub_10036320C(&off_100A55EE0);
  off_100AE76E0 = result;
  return result;
}

uint64_t sub_100517D4C(unsigned __int8 a1, uint64_t a2, char a3)
{
  if (a2 > 1 || (a3 & 1) != 0)
  {
    if (qword_100ACFEF8 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }

    v3 = off_100AE76E0;
    if (!*(off_100AE76E0 + 2))
    {
      return 0;
    }
  }

  else
  {
    if (qword_100ACFEF0 != -1)
    {
      v8 = a1;
      swift_once();
      a1 = v8;
    }

    v3 = off_100AE76D8;
    if (!*(off_100AE76D8 + 2))
    {
      return 0;
    }
  }

  v4 = sub_10009D0BC(a1);
  if (v5)
  {
    return *(v3[7] + 8 * v4);
  }

  return 0;
}

id sub_100517E30()
{
  v1 = v0;
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JournalMembershipBadge();
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[10];
  if (!v9 || (v10 = v1[9], *v8 = 0, *(v8 + 1) = 0, *(v8 + 2) = 0, *(v8 + 3) = v10, *(v8 + 4) = v9, v8[40] = 1, v19 = 0x4030000000000000, v11 = enum case for Font.TextStyle.footnote(_:), v12 = *(v3 + 104), v18 = v1, v12(v5, enum case for Font.TextStyle.footnote(_:), v2), sub_10009BA68(), , ScaledMetric.init(wrappedValue:relativeTo:)(), v19 = 0x4038000000000000, v12(v5, v11, v2), ScaledMetric.init(wrappedValue:relativeTo:)(), v19 = 0x4040000000000000, v12(v5, v11, v2), v1 = v18, ScaledMetric.init(wrappedValue:relativeTo:)(), v13 = [objc_opt_self() currentTraitCollection], v14 = sub_1003AC4EC(v13), v13, sub_10051AE24(v8), (result = v14) == 0))
  {
    if (v1[7])
    {
      v16 = String._bridgeToObjectiveC()();
      v17 = [objc_opt_self() _systemImageNamed:v16];

      return v17;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_1005180CC@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v4 = String.init(localized:table:bundle:locale:comment:)();
  v6 = v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0xD000000000000028;
  *(a1 + 40) = 0x80000001008F8D90;
  *&result = 0x6873617274;
  *(a1 + 48) = xmmword_10095AB60;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  return result;
}

id sub_10051826C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v4(v10);

  sub_1001A911C(v10);
  (v4)(v11, a1, a2);
  v5 = sub_100517E30();
  sub_1001A911C(v11);
  v6 = objc_allocWithZone(UISearchSuggestionItem);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithLocalizedSuggestion:v7 localizedDescription:0 iconImage:v5];

  [v8 setRepresentedObject:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  return v8;
}

uint64_t SearchToken.tokenIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DebugData.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

Swift::Int SearchToken.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100518474()
{
  String.hash(into:)();
}

unint64_t sub_10051856C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10051A488(*a1);
  *a2 = result;
  return result;
}

void sub_10051859C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF7265696669746ELL;
  v4 = 0x6564496E656B6F74;
  v5 = 0xEA0000000000656DLL;
  v6 = 0x614E6C6F626D7973;
  v7 = 0xE900000000000061;
  v8 = 0x746144726F6C6F63;
  if (v2 != 4)
  {
    v8 = 0x696A6F6D65;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1954047348;
  if (v2 != 1)
  {
    v10 = 0x7972657571;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
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

uint64_t sub_10051865C()
{
  v1 = *v0;
  v2 = 0x6564496E656B6F74;
  v3 = 0x614E6C6F626D7973;
  v4 = 0x746144726F6C6F63;
  if (v1 != 4)
  {
    v4 = 0x696A6F6D65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1954047348;
  if (v1 != 1)
  {
    v5 = 0x7972657571;
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

unint64_t sub_100518718@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10051A488(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10051874C(uint64_t a1)
{
  v2 = sub_10051A9FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100518788(uint64_t a1)
{
  v2 = sub_10051A9FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double SearchToken.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10051A4D4(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t SearchToken.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000F24EC(&qword_100AE76E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_10000CA14(a1, a1[3]);
  sub_10051A9FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v15) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v15) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v15) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (*(v3 + 64))
  {
    sub_1000065A8(0, &qword_100AD4C70);
    v10 = NSCoding<>.toData.getter();
    if (v11 >> 60 != 15)
    {
      v15 = v10;
      v16 = v11;
      v14[15] = 4;
      v12 = v10;
      v13 = v11;
      sub_100049ED8(v10, v11);
      sub_10051AA50();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      sub_10003A5C8(v15, v16);
      sub_10003A5C8(v12, v13);
    }
  }

  LOBYTE(v15) = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100518ACC()
{
  result = [*(v0 + *(type metadata accessor for CoreSpotlightSearchSuggestionItem(0) + 20)) currentToken];
  if (result)
  {
    v2 = result;
    v3 = [result tokenKind];

    if (v3 <= 12)
    {
      if (v3 == 3)
      {
        return 0x6D726F6665766177;
      }

      if (v3 != 5)
      {
        if (v3 == 10)
        {
          return 0x6F746F6870;
        }

        return 0x697966696E67616DLL;
      }

      return 0x7261646E656C6163;
    }

    else if (v3 > 35)
    {
      if (v3 != 36)
      {
        if (v3 == 43)
        {
          return 0x73756A2E74786574;
        }

        return 0x697966696E67616DLL;
      }

      return 0x6F65646976;
    }

    else
    {
      if (v3 != 13)
      {
        if (v3 == 16)
        {
          return 0xD000000000000012;
        }

        return 0x697966696E67616DLL;
      }

      return 0xD000000000000017;
    }
  }

  return result;
}

uint64_t sub_100518C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for AttributedString();
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v7 = *(v2 + *(a1 + 20));
  v8 = [v7 currentToken];
  if (v8 && (v9 = v8, v10 = [v8 queryString], v9, v10))
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  sub_1000065A8(0, &qword_100AE4890);
  CSSuggestion.localizedAttributedSuggestion.getter();
  v14 = NSAttributedString.init(_:)();
  v15 = [v14 string];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [v7 currentToken];
  if (v19 && (v20 = v19, v21 = [v19 queryString], v20, v21))
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  result = sub_100518ACC();
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v16;
  a2[3] = v18;
  a2[4] = v22;
  a2[5] = v24;
  a2[6] = result;
  a2[7] = v26;
  a2[9] = 0;
  a2[10] = 0;
  a2[8] = 0;
  return result;
}

uint64_t sub_100518E34@<X0>(uint64_t *a1@<X8>)
{
  v36 = type metadata accessor for ColorResource();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TokenTypeIdentifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for CustomTokenSearchSuggestionItem(0) + 20);
  v11 = TokenTypeIdentifier.rawValue.getter();
  v34 = v12;
  v35 = v11;
  v13 = sub_10043A324();
  v32 = v14;
  v33 = v13;
  v37 = 0xD000000000000021;
  v38 = 0x80000001008F8DC0;
  v15._countAndFlagsBits = TokenTypeIdentifier.rawValue.getter();
  String.append(_:)(v15);

  v30 = v38;
  v31 = v37;
  v16 = sub_10043A768();
  v29 = v17;
  (*(v7 + 16))(v9, v1 + v10, v6);
  v18 = (*(v7 + 88))(v9, v6);
  LODWORD(v10) = enum case for TokenTypeIdentifier.bookmarked(_:);
  sub_1000065A8(0, &qword_100AD4C70);
  if (v18 == v10)
  {
    if (qword_100AD0CA0 != -1)
    {
      swift_once();
    }

    v19 = v36;
    v20 = sub_10000617C(v36, qword_100B314F0);
    (*(v3 + 16))(v5, v20, v19);
    result = UIColor.init(resource:)();
    v22 = result;
  }

  else
  {
    if (qword_100AD0BE0 != -1)
    {
      swift_once();
    }

    v23 = v36;
    v24 = sub_10000617C(v36, qword_100B312B0);
    (*(v3 + 16))(v5, v24, v23);
    v22 = UIColor.init(resource:)();
    result = (*(v7 + 8))(v9, v6);
  }

  v25 = v34;
  *a1 = v35;
  a1[1] = v25;
  v26 = v32;
  a1[2] = v33;
  a1[3] = v26;
  v27 = v30;
  a1[4] = v31;
  a1[5] = v27;
  v28 = v29;
  a1[6] = v16;
  a1[7] = v28;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = v22;
  return result;
}

Swift::Int sub_100519198(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10004B948(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TokenTypeIdentifier();
  sub_10004B948(&qword_100AE0030, &type metadata accessor for TokenTypeIdentifier);
  dispatch thunk of Hashable.hash(into:)();
  v3 = v1 + *(a1 + 24);
  if (*(v3 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *v3;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

void sub_1005192C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10004B948(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TokenTypeIdentifier();
  sub_10004B948(&qword_100AE0030, &type metadata accessor for TokenTypeIdentifier);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 24);
  if (*(v4 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }
}

Swift::Int sub_1005193E4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10004B948(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TokenTypeIdentifier();
  sub_10004B948(&qword_100AE0030, &type metadata accessor for TokenTypeIdentifier);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 24);
  if (*(v4 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  return Hasher._finalize()();
}

double sub_100519510@<D0>(uint64_t a1@<X8>)
{
  sub_100518E34(v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  return result;
}

void sub_10051956C()
{
  v1 = v0;
  type metadata accessor for UUID();
  sub_10004B948(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  v3 = *(v0 + v2[7]);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    v4 = v3;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v2[8] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v2[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = v1 + v2[10];
  if (*(v5 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *v5;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6);
  }
}

Swift::Int sub_100519740()
{
  Hasher.init(_seed:)();
  sub_10051956C();
  return Hasher._finalize()();
}

Swift::Int sub_100519784()
{
  Hasher.init(_seed:)();
  sub_10051956C();
  return Hasher._finalize()();
}

uint64_t sub_1005197C0@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v8 = (v2 + a1[6]);
  v10 = *v8;
  v9 = v8[1];
  v22 = v5;
  type metadata accessor for UUID();
  sub_10004B948(&qword_100AE19B0, &type metadata accessor for UUID);

  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 39;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13 = (v2 + a1[8]);
  v15 = *v13;
  v14 = v13[1];
  v16 = *(v2 + a1[7]);
  v17 = (v2 + a1[9]);
  v18 = *v17;
  v19 = v17[1];
  *a2 = v22;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v9;
  a2[4] = 0xD000000000000021;
  a2[5] = 0x80000001008E39F0;
  a2[6] = v15;
  a2[7] = v14;
  a2[8] = v16;
  a2[9] = v18;
  a2[10] = v19;

  v20 = v16;
}

Swift::Int sub_100519944(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10004B948(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = v1 + *(a1 + 20);
  if (*(v3 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *v3;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

void sub_100519A18(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10004B948(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 20);
  if (*(v4 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }
}

Swift::Int sub_100519AD0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10004B948(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 20);
  if (*(v4 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  return Hasher._finalize()();
}

double sub_100519BA0@<D0>(uint64_t a1@<X8>)
{
  sub_1005180CC(v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_100519BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = *(a2 + v6 + 8);
    if (v8)
    {
      if (v10)
      {
        return 1;
      }
    }

    else
    {
      if (*v7 != *v9)
      {
        LOBYTE(v10) = 1;
      }

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

double sub_100519C74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 20));
  v5 = *v4;
  v6 = v4[1];
  swift_bridgeObjectRetain_n();
  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 39;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0xD000000000000026;
  *(a2 + 40) = 0x80000001008E39C0;
  result = 1.01341409e242;
  *(a2 + 48) = xmmword_1009453B0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  return result;
}

Swift::Int sub_100519D4C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10004B948(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  v3 = v1 + *(a1 + 24);
  if (*(v3 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *v3;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

void sub_100519E34(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10004B948(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  v4 = v2 + *(a2 + 24);
  if (*(v4 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }
}

Swift::Int sub_100519F00(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10004B948(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  v4 = v2 + *(a2 + 24);
  if (*(v4 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  return Hasher._finalize()();
}

void sub_100519FE4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (v2 + *(a1 + 20));
  v5 = *v4;
  v6 = v4[1];
  swift_bridgeObjectRetain_n();
  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 39;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = 0xD000000000000022;
  a2[5] = 0x80000001008E3A20;
  a2[6] = 0xD000000000000017;
  a2[7] = 0x80000001008E3A50;
  a2[9] = 0;
  a2[10] = 0;
  a2[8] = 0;
}

BOOL sub_10051A0D0(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    sub_1000065A8(0, &qword_100AD4C70);
    v13 = v12;
    v14 = v11;
    v15 = static NSObject.== infix(_:_:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *v17 == *v19 && v18 == v20;
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v22 = v4[9];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = v4[10];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 8);
  if ((v29 & 1) == 0)
  {
    if (*v28 != *v30)
    {
      v31 = 1;
    }

    return (v31 & 1) == 0;
  }

  return (v31 & 1) != 0;
}

uint64_t sub_10051A280(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CustomTokenSearchSuggestionItem(0);
  type metadata accessor for TokenTypeIdentifier();
  sub_10004B948(&qword_100AE7AF8, &type metadata accessor for TokenTypeIdentifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v14 == v12 && v15 == v13)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(v4 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10051A3D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a3(0);
  v7 = *(v6 + 20);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v6 + 24);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if (v14)
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_10051A488(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5A170, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10051A4D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AE7720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_10051A9FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BA7C(a1);
    v9 = 0;
    goto LABEL_4;
  }

  LOBYTE(v53) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v53) = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v15;
  LOBYTE(v53) = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v17;
  v46 = v13;
  v41 = v16;
  v42 = v14;
  v40 = a2;
  LOBYTE(v53) = 3;
  v18 = 0;
  v43 = 0;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v20;
  v39 = v19;
  LOBYTE(v47) = 4;
  sub_10051AEA0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v54;
  if (v54 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v38 = 0;
    v23 = v53;
    sub_1000065A8(0, &qword_100AD4C70);
    v37 = v23;
    v24 = static NSCoding<>.create(from:)();
    if (!v24)
    {
      v24 = [objc_opt_self() tintColor];
    }

    v9 = v24;
    sub_10003A5C8(v37, v22);
    v18 = v38;
  }

  v64 = 5;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v18)
  {
    (*(v6 + 8))(v8, v5);
    sub_10000BA7C(a1);
    v27 = v43;

    if (!v27)
    {
    }

LABEL_4:
  }

  v28 = *(v6 + 8);
  v29 = v25;
  v43 = v26;
  v28(v8, v5);
  *&v47 = v11;
  v30 = v46;
  *(&v47 + 1) = v46;
  *&v48 = v42;
  v31 = v45;
  *(&v48 + 1) = v45;
  *&v49 = v41;
  *(&v49 + 1) = v44;
  *&v50 = v39;
  *(&v50 + 1) = v21;
  *&v51 = v9;
  v32 = v43;
  *(&v51 + 1) = v29;
  v52 = v43;
  sub_1001A9170(&v47, &v53);
  sub_10000BA7C(a1);
  v53 = v11;
  v54 = v30;
  v55 = v42;
  v56 = v31;
  v57 = v41;
  v58 = v44;
  v59 = v39;
  v60 = v21;
  v61 = v9;
  v62 = v29;
  v63 = v32;
  result = sub_1001A911C(&v53);
  v33 = v50;
  v34 = v40;
  *(v40 + 32) = v49;
  *(v34 + 48) = v33;
  *(v34 + 64) = v51;
  *(v34 + 80) = v52;
  v35 = v48;
  *v34 = v47;
  *(v34 + 16) = v35;
  return result;
}