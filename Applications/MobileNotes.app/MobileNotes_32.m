uint64_t sub_10042F818@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10015DA04(&qword_1006C82C8);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = v1[1];
  v19[0] = *v1;
  v19[1] = v6;
  v19[2] = v1[2];
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v7 = sub_10015DA04(&qword_1006C82D0);
  sub_10042E404(v19, &v5[*(v7 + 44)]);
  v8 = static Edge.Set.vertical.getter();
  [objc_opt_self() deviceIsMac];
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1001F7498(v5, a1, &qword_1006C82C8);
  result = sub_10015DA04(&qword_1006C82D8);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_10042F978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10042F9E4()
{
  result = qword_1006C8348;
  if (!qword_1006C8348)
  {
    sub_10017992C(&qword_1006C8340);
    sub_1000060B4(&qword_1006BE438, &qword_1006BE428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8348);
  }

  return result;
}

uint64_t sub_10042FA9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10042FAE4()
{
  result = qword_1006C8378;
  if (!qword_1006C8378)
  {
    sub_10017992C(&qword_1006C82D8);
    sub_1000060B4(&unk_1006C8380, &qword_1006C82C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8378);
  }

  return result;
}

void sub_10042FBA0(void *a1)
{
  v2 = type metadata accessor for ManagedEntityContextType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccountID.Authority();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (v23 - v11);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v13 = a1;
    AccountID.Authority.init(_:)();
    (*(v7 + 16))(v10, v12, v6);
    (*(v3 + 104))(v5, enum case for ManagedEntityContextType.modern(_:), v2);
    AccountID.init(authority:contextType:)();
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v23[3] = &OBJC_PROTOCOL___ICLegacyAccount;
    v14 = swift_dynamicCastObjCProtocolConditional();
    if (v14)
    {
      v15 = v14;
      v16 = a1;
      if ([v15 isLocalAccount])
      {
        (*(v7 + 104))(v12, enum case for AccountID.Authority.local(_:), v6);
        (*(v3 + 104))(v5, enum case for ManagedEntityContextType.html(_:), v2);
        AccountID.init(authority:contextType:)();
      }

      else
      {
        v17 = [objc_opt_self() emailAddressForAccount:v15];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23[0] = v16;
        v20 = v19;

        *v12 = v18;
        v12[1] = v20;
        (*(v7 + 104))(v12, enum case for AccountID.Authority.synced(_:), v6);
        (*(v3 + 104))(v5, enum case for ManagedEntityContextType.html(_:), v2);
        AccountID.init(authority:contextType:)();
      }
    }

    else
    {
      v23[1] = 0;
      v23[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v21._object = 0x800000010056C8E0;
      v21._countAndFlagsBits = 0xD00000000000003CLL;
      String.append(_:)(v21);
      sub_10015DA04(&qword_1006C83E8);
      v22._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v22);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

void (*VisibleAccountsQuery.loggingConfiguration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9E0;
}

uint64_t VisibleAccountsQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return _swift_task_switch(sub_100430018, 0, 0);
}

uint64_t sub_100430018()
{
  AppDependency.wrappedValue.getter();
  v1 = v0[2];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1001927C4;
  v3 = v0[3];

  return sub_10018E55C(v3, v1);
}

uint64_t VisibleAccountsQuery.suggestedEntities()(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 2000) = a3;
  *(v3 + 1704) = a2;
  *(v3 + 1656) = a1;
  v4 = type metadata accessor for AccountEntity();
  *(v3 + 1752) = v4;
  *(v3 + 1800) = *(v4 - 8);
  *(v3 + 1808) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v3 + 1816) = v5;
  *(v3 + 1824) = *(v5 - 8);
  *(v3 + 1832) = swift_task_alloc();
  *(v3 + 1840) = swift_task_alloc();
  *(v3 + 1848) = swift_task_alloc();
  *(v3 + 1856) = swift_task_alloc();
  v6 = type metadata accessor for ManagedEntityContextType();
  *(v3 + 1864) = v6;
  *(v3 + 1872) = *(v6 - 8);
  *(v3 + 1880) = swift_task_alloc();

  return _swift_task_switch(sub_10043027C, 0, 0);
}

uint64_t sub_10043027C()
{
  v1 = *(v0 + 1880);
  v2 = *(v0 + 1872);
  v3 = *(v0 + 1864);
  AppDependency.wrappedValue.getter();
  v4 = *(v0 + 1464);
  *(v0 + 1888) = [v4 modernManagedObjectContext];

  AppDependency.wrappedValue.getter();
  v5 = *(v0 + 1512);
  (*(v2 + 104))(v1, enum case for ManagedEntityContextType.html(_:), v3);
  *(v0 + 1896) = ICUnifiedNoteContext.managedObjectContext(for:)();
  (*(*(v0 + 1872) + 8))(*(v0 + 1880), *(v0 + 1864));

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "VisibleAccountsQuery: fetching suggested results", v8, 2u);
  }

  v9 = *(v0 + 1856);
  v10 = *(v0 + 1824);
  v11 = *(v0 + 1816);
  v12 = *(v0 + 2000);
  v13 = *(v0 + 1704);

  (*(v10 + 8))(v9, v11);
  *(v0 + 1904) = sub_100433DF4(v13, v12);
  v14 = swift_task_alloc();
  *(v0 + 1912) = v14;
  *v14 = v0;
  v14[1] = sub_100430568;

  return ICCoreDataIndexer.reloadSnapshot()();
}

uint64_t sub_100430568(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v3[240] = a1;

  v5 = swift_task_alloc();
  v3[241] = v5;
  *v5 = v4;
  v5[1] = sub_1004306B4;
  v6 = v3[213];

  return sub_10043408C(a1, v6);
}

uint64_t sub_1004306B4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1936) = a1;
  *(v3 + 1944) = a2;

  return _swift_task_switch(sub_1004307B8, 0, 0);
}

uint64_t sub_1004307B8()
{
  v1 = v0[243];
  v2 = v0[242];
  v3 = v0[237];
  v4 = v0[236];
  v5 = swift_allocObject();
  v0[244] = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v1;
  v6 = v4;

  sub_10015DA04(&qword_1006C8390);
  swift_asyncLet_begin();
  v7 = swift_allocObject();
  v0[245] = v7;
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v1;
  v8 = v3;
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 195, sub_10043090C, v0 + 162);
}

uint64_t sub_10043090C()
{
  v1[246] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 201, sub_1004311C0, v1 + 184);
  }

  else
  {
    v1[247] = v1[195];

    return _swift_asyncLet_get_throwing(v1 + 82, v1 + 201, sub_1004309C0, v1 + 196);
  }
}

uint64_t sub_1004309C0()
{
  *(v1 + 1984) = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 656, v1 + 1608, sub_100431300, v1 + 1616);
  }

  else
  {

    return _swift_task_switch(sub_100430A6C, 0, 0);
  }
}

uint64_t sub_100430A6C()
{
  v72 = v0;
  v71 = v0[247];

  sub_1002DCBA8(v1);
  v2 = v71;
  v0[249] = v71;
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2[2];

    _os_log_impl(&_mh_execute_header, v3, v4, "VisibleAccountsQuery: found %ld account(s)", v5, 0xCu);
  }

  else
  {
  }

  v6 = *(v0[228] + 8);
  v6(v0[231], v0[227]);
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v68 = v6;
    v9 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70 = v64;
    buf = v9;
    *v9 = 136315138;
    v10 = v2[2];
    if (v10)
    {
      v59 = v8;
      v60 = v7;
      v11 = v0[225];
      v71 = _swiftEmptyArrayStorage;
      sub_100189444(0, v10, 0);
      v12 = _swiftEmptyArrayStorage;
      v62 = v2;
      v13 = v2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v14 = *(v11 + 72);
      do
      {
        v15 = v0[226];
        sub_10017E280(v13, v15);
        v16 = AccountID.description.getter();
        v18 = v17;
        sub_10017E2E4(v15);
        v71 = v12;
        v20 = v12[2];
        v19 = v12[3];
        if (v20 >= v19 >> 1)
        {
          sub_100189444((v19 > 1), v20 + 1, 1);
          v12 = v71;
        }

        v12[2] = v20 + 1;
        v21 = &v12[2 * v20];
        v21[4] = v16;
        v21[5] = v18;
        v13 += v14;
        --v10;
      }

      while (v10);
      v7 = v60;
      v2 = v62;
      v8 = v59;
    }

    v26 = v0[230];
    v27 = v0[227];
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_100009D88(v28, v30, &v70);

    *(buf + 4) = v31;
    _os_log_impl(&_mh_execute_header, v7, v8, "VisibleAccountsQuery: account IDs: %s", buf, 0xCu);
    sub_100009F60(v64);

    v24 = v26;
    v25 = v27;
    v6 = v68;
  }

  else
  {
    v22 = v0[230];
    v23 = v0[227];

    v24 = v22;
    v25 = v23;
  }

  v6(v24, v25);
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v70 = v65;
    bufa = v34;
    *v34 = 136642819;
    v35 = v2[2];
    if (v35)
    {
      v61 = v33;
      v63 = v32;
      v69 = v6;
      v36 = v0[225];
      v37 = v0[219];
      v71 = _swiftEmptyArrayStorage;
      sub_100189444(0, v35, 0);
      v38 = v71;
      v39 = v2 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v40 = *(v36 + 72);
      do
      {
        v41 = v0[226];
        sub_10017E280(v39, v41);
        v42 = (v41 + *(v37 + 24));
        v43 = *v42;
        v44 = v42[1];

        sub_10017E2E4(v41);
        v71 = v38;
        v46 = v38[2];
        v45 = v38[3];
        if (v46 >= v45 >> 1)
        {
          sub_100189444((v45 > 1), v46 + 1, 1);
          v38 = v71;
        }

        v38[2] = v46 + 1;
        v47 = &v38[2 * v46];
        v47[4] = v43;
        v47[5] = v44;
        v39 += v40;
        --v35;
      }

      while (v35);
      v6 = v69;
      v32 = v63;
      v33 = v61;
    }

    v52 = v0[229];
    v53 = v0[227];
    v54 = Array.description.getter();
    v56 = v55;

    v57 = sub_100009D88(v54, v56, &v70);

    *(bufa + 4) = v57;
    _os_log_impl(&_mh_execute_header, v32, v33, "VisibleAccountsQuery: account titles: %{sensitive}s", bufa, 0xCu);
    sub_100009F60(v65);

    v50 = v52;
    v51 = v53;
  }

  else
  {
    v48 = v0[229];
    v49 = v0[227];

    v50 = v48;
    v51 = v49;
  }

  v6(v50, v51);

  return _swift_asyncLet_finish(v0 + 82, v0 + 201, sub_100431064, v0 + 214);
}

uint64_t sub_1004310BC()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1904);
  v3 = *(v0 + 1896);

  v4 = *(v0 + 8);
  v5 = *(v0 + 1992);

  return v4(v5);
}

uint64_t sub_100431218()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1904);
  v3 = *(v0 + 1896);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100431358()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1904);
  v3 = *(v0 + 1896);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100431440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100431464, 0, 0);
}

uint64_t sub_100431464()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;

  v5 = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = sub_10015DA04(&qword_1006C8390);
  *v6 = v0;
  v6[1] = sub_1002C004C;
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_100435D38, v4, v7);
}

void sub_100431580(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = a2;
  v7 = sub_100433884(a1, v6);

  if (!v3)
  {
    *a3 = v7;
  }
}

uint64_t sub_1004315E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100431604, 0, 0);
}

uint64_t sub_100431604()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;

  v5 = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = sub_10015DA04(&qword_1006C8390);
  *v6 = v0;
  v6[1] = sub_1002BFD74;
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_100435CD0, v4, v7);
}

void sub_100431720(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = a2;
  v7 = sub_100433884(a1, v6);

  if (!v3)
  {
    *a3 = v7;
  }
}

void sub_100431780(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [a1 objectWithID:a2];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v6 = [v5 parent];
  if (v6)
  {
    v7 = v6;

    v8 = 0;
  }

  else
  {
    v9 = [v5 account];
    v8 = [v9 objectID];
  }

  *a3 = v8;
}

void sub_100431868(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [a1 objectWithID:a2];
  v5 = swift_dynamicCastObjCProtocolUnconditional();
  if ([v5 parentFolder])
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = [v5 account];
    if (v7)
    {
      v6 = [v7 objectID];

      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  *a3 = v6;
}

uint64_t sub_100431964@<X0>(uint64_t a1@<X8>)
{
  result = _s11MobileNotes20VisibleAccountsQueryVACycfC_0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_100431994(uint64_t a1)
{
  v3 = *(v1 + 8);
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_1004319B8, 0, 0);
}

uint64_t sub_1004319B8()
{
  AppDependency.wrappedValue.getter();
  v1 = v0[2];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100187AB0;
  v3 = v0[3];

  return sub_10018E55C(v3, v1);
}

uint64_t sub_100431A78(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_1001927BC;

  return VisibleAccountsQuery.suggestedEntities()(v3, v4, v5);
}

uint64_t sub_100431B24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100315AE8();
  *v5 = v2;
  v5[1] = sub_10000A600;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t VisibleAccountsQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 2152) = a5;
  *(v5 + 1864) = a4;
  *(v5 + 1816) = a3;
  *(v5 + 1768) = a2;
  *(v5 + 1720) = a1;
  v6 = type metadata accessor for AccountID();
  *(v5 + 1872) = v6;
  *(v5 + 1880) = *(v6 - 8);
  *(v5 + 1888) = swift_task_alloc();
  v7 = type metadata accessor for AccountEntity();
  *(v5 + 1896) = v7;
  *(v5 + 1904) = *(v7 - 8);
  *(v5 + 1912) = swift_task_alloc();
  *(v5 + 1920) = swift_task_alloc();
  *(v5 + 1928) = swift_task_alloc();
  *(v5 + 1936) = swift_task_alloc();
  *(v5 + 1944) = swift_task_alloc();
  *(v5 + 1952) = swift_task_alloc();
  *(v5 + 1960) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v5 + 1968) = v8;
  *(v5 + 1976) = *(v8 - 8);
  *(v5 + 1984) = swift_task_alloc();
  *(v5 + 1992) = swift_task_alloc();
  *(v5 + 2000) = swift_task_alloc();
  *(v5 + 2008) = swift_task_alloc();
  v9 = type metadata accessor for ManagedEntityContextType();
  *(v5 + 2016) = v9;
  *(v5 + 2024) = *(v9 - 8);
  *(v5 + 2032) = swift_task_alloc();

  return _swift_task_switch(sub_100431E28, 0, 0);
}

uint64_t sub_100431E28()
{
  v21 = v0;
  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);
  v3 = *(v0 + 2016);
  AppDependency.wrappedValue.getter();
  v4 = *(v0 + 1528);
  *(v0 + 2040) = [v4 modernManagedObjectContext];

  AppDependency.wrappedValue.getter();
  v5 = *(v0 + 1576);
  (*(v2 + 104))(v1, enum case for ManagedEntityContextType.html(_:), v3);
  *(v0 + 2048) = ICUnifiedNoteContext.managedObjectContext(for:)();
  (*(*(v0 + 2024) + 8))(*(v0 + 2032), *(v0 + 2016));

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2008);
  v10 = *(v0 + 1976);
  v11 = *(v0 + 1968);
  if (v8)
  {
    v19 = *(v0 + 1968);
    v12 = *(v0 + 1768);
    v13 = *(v0 + 1720);
    v14 = swift_slowAlloc();
    v18 = v9;
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136642819;
    *(v14 + 4) = sub_100009D88(v13, v12, &v20);
    _os_log_impl(&_mh_execute_header, v6, v7, "VisibleAccountsQuery: performing with query string '%{sensitive}s'", v14, 0xCu);
    sub_100009F60(v15);

    (*(v10 + 8))(v18, v19);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  *(v0 + 2056) = sub_100433DF4(*(v0 + 1864), *(v0 + 2152));
  v16 = swift_task_alloc();
  *(v0 + 2064) = v16;
  *v16 = v0;
  v16[1] = sub_1004321F0;

  return ICCoreDataIndexer.reloadSnapshot()();
}

uint64_t sub_1004321F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v3[259] = a1;

  v5 = swift_task_alloc();
  v3[260] = v5;
  *v5 = v4;
  v5[1] = sub_10043233C;
  v6 = v3[233];

  return sub_10043408C(a1, v6);
}

uint64_t sub_10043233C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2088) = a1;
  *(v3 + 2096) = a2;

  return _swift_task_switch(sub_100432440, 0, 0);
}

uint64_t sub_100432440()
{
  v1 = *(v0 + 2096);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 2048);
  v4 = *(v0 + 2040);
  v5 = *(v0 + 2152);
  v6 = *(v0 + 1864);
  v7 = *(v0 + 1816);
  v8 = swift_allocObject();
  *(v0 + 2104) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = v5;
  *(v8 + 40) = v2;
  *(v8 + 48) = v1;
  *(v8 + 56) = v4;

  v9 = v4;
  sub_10015DA04(&unk_1006C8398);
  swift_asyncLet_begin();
  v10 = swift_allocObject();
  *(v0 + 2112) = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  *(v10 + 32) = v5;
  *(v10 + 40) = v2;
  *(v10 + 48) = v1;
  *(v10 + 56) = v3;

  v11 = v3;
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1624, sub_1004325D8, v0 + 1296);
}

uint64_t sub_1004325D8()
{
  v1[265] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 209, sub_100433320, v1 + 192);
  }

  else
  {
    v1[266] = v1[203];

    return _swift_asyncLet_get_throwing(v1 + 82, v1 + 209, sub_10043268C, v1 + 204);
  }
}

uint64_t sub_10043268C()
{
  *(v1 + 2136) = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 656, v1 + 1672, sub_1004334D0, v1 + 1680);
  }

  else
  {

    return _swift_task_switch(sub_100432738, 0, 0);
  }
}

uint64_t sub_100432738()
{
  v123 = v0;
  v1 = v0[266];
  v115 = v0[238];
  v120 = v0[237];

  v3 = sub_10019A2D8(v2, v1);
  v4 = v3;
  v5 = (v3 + 56);
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;

  v14 = 0;
  v112 = _swiftEmptyArrayStorage;
  v116 = v5;
LABEL_4:
  v15 = v14;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v14 = v15;
LABEL_9:
    v16 = v0[245];
    v17 = v0[244];
    v18 = v0[221];
    v19 = v0[215];
    v20 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v21 = v4;
    v22 = *(v4 + 48);
    v23 = *(v115 + 72);
    sub_10017E280(v22 + v23 * (v20 | (v14 << 6)), v17);
    sub_100314040(v17, v16);
    v24 = (v16 + *(v120 + 24));
    v26 = *v24;
    v25 = v24[1];
    v0[183] = v26;
    v0[184] = v25;
    v0[185] = v19;
    v0[186] = v18;
    sub_10019E0AC();
    v27 = StringProtocol.localizedStandardContains<A>(_:)();
    v28 = v0[245];
    if (v27)
    {
      sub_100314040(v28, v0[243]);
      v29 = v112;
      v122 = v112;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100189804(0, v112[2] + 1, 1);
        v29 = v122;
      }

      v31 = v29[2];
      v30 = v29[3];
      if (v31 >= v30 >> 1)
      {
        sub_100189804(v30 > 1, v31 + 1, 1);
        v29 = v122;
      }

      v32 = v0[243];
      v29[2] = v31 + 1;
      v112 = v29;
      v10 = sub_100314040(v32, v29 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + v31 * v23);
      v4 = v21;
      v5 = v116;
      goto LABEL_4;
    }

    v10 = sub_10017E2E4(v28);
    v15 = v14;
    v4 = v21;
    v5 = v116;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      return _swift_asyncLet_finish(v10, v11, v12, v13);
    }

    if (v14 >= v9)
    {
      break;
    }

    v8 = *&v5[8 * v14];
    ++v15;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v33 = v112;
  if (v112[2] > 1uLL)
  {
    v34 = 0;
    v35 = -1;
    v36 = -1 << *(v4 + 32);
    v117 = v4;
    if (-v36 < 64)
    {
      v35 = ~(-1 << -v36);
    }

    v37 = v35 & *(v4 + 56);
    v38 = (63 - v36) >> 6;
    v111 = _swiftEmptyArrayStorage;
    while (1)
    {
      v39 = v34;
      if (!v37)
      {
        break;
      }

LABEL_25:
      v40 = v0[242];
      v41 = v0[241];
      v42 = v0[221];
      v43 = v0[215];
      v44 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v45 = *(v115 + 72);
      sub_10017E280(*(v117 + 6) + v45 * (v44 | (v34 << 6)), v41);
      sub_100314040(v41, v40);
      v46 = (v40 + *(v120 + 24));
      v48 = *v46;
      v47 = v46[1];
      v0[187] = v48;
      v0[188] = v47;
      v0[189] = v43;
      v0[190] = v42;
      sub_10019E0AC();
      v49 = StringProtocol.localizedStandardCompare<A>(_:)();
      v50 = v0[242];
      if (v49)
      {
        v10 = sub_10017E2E4(v50);
      }

      else
      {
        sub_100314040(v50, v0[240]);
        v51 = v111;
        v122 = v111;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100189804(0, v111[2] + 1, 1);
          v51 = v122;
        }

        v53 = v51[2];
        v52 = v51[3];
        if (v53 >= v52 >> 1)
        {
          sub_100189804(v52 > 1, v53 + 1, 1);
          v51 = v122;
        }

        v54 = v0[240];
        v51[2] = v53 + 1;
        v111 = v51;
        v10 = sub_100314040(v54, v51 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + v53 * v45);
      }
    }

    while (1)
    {
      v34 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_61;
      }

      if (v34 >= v38)
      {

        v33 = v111;
        if (v111[2] == 1)
        {
        }

        else
        {

          v33 = v112;
        }

        goto LABEL_36;
      }

      v37 = *&v5[8 * v34];
      ++v39;
      if (v37)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_36:
  v0[268] = v33;
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134349056;
    *(v57 + 4) = v33[2];

    _os_log_impl(&_mh_execute_header, v55, v56, "VisibleAccountsQuery: found %{public}ld matching account(s)", v57, 0xCu);
  }

  else
  {
  }

  v58 = *(v0[247] + 8);
  v58(v0[250], v0[246]);
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v113 = v58;
    v61 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v121 = v107;
    buf = v61;
    *v61 = 136446210;
    v62 = v33[2];
    if (v62)
    {
      v106 = v60;
      v63 = v0[235];
      v122 = _swiftEmptyArrayStorage;
      sub_100189824(0, v62, 0);
      v64 = _swiftEmptyArrayStorage;
      v65 = v33 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v118 = *(v115 + 72);
      do
      {
        v66 = v0[239];
        v67 = v0[236];
        v68 = v0[234];
        sub_10017E280(v65, v66);
        (*(v63 + 16))(v67, v66, v68);
        sub_10017E2E4(v66);
        v122 = v64;
        v70 = v64[2];
        v69 = v64[3];
        if (v70 >= v69 >> 1)
        {
          sub_100189824(v69 > 1, v70 + 1, 1);
          v64 = v122;
        }

        v71 = v0[236];
        v72 = v0[234];
        v64[2] = v70 + 1;
        (*(v63 + 32))(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v70, v71, v72);
        v65 += v118;
        --v62;
      }

      while (v62);
      v60 = v106;
    }

    v75 = v0[249];
    v76 = v0[246];
    v77 = Array.description.getter();
    v79 = v78;

    v80 = sub_100009D88(v77, v79, &v121);

    *(buf + 4) = v80;
    _os_log_impl(&_mh_execute_header, v59, v60, "VisibleAccountsQuery: matching account IDs: %{public}s", buf, 0xCu);
    sub_100009F60(v107);

    v58 = v113;
    v113(v75, v76);
  }

  else
  {
    v73 = v0[249];
    v74 = v0[246];

    v58(v73, v74);
  }

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    bufa = swift_slowAlloc();
    v121 = bufa;
    v119 = v83;
    *v83 = 136642819;
    v84 = v33[2];
    if (v84)
    {
      v108 = v82;
      v114 = v58;
      v122 = _swiftEmptyArrayStorage;
      sub_100189444(0, v84, 0);
      v85 = v122;
      v86 = v33 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v87 = *(v115 + 72);
      do
      {
        v88 = v0[239];
        sub_10017E280(v86, v88);
        v89 = (v88 + *(v120 + 24));
        v90 = *v89;
        v91 = v89[1];

        sub_10017E2E4(v88);
        v122 = v85;
        v93 = v85[2];
        v92 = v85[3];
        if (v93 >= v92 >> 1)
        {
          sub_100189444((v92 > 1), v93 + 1, 1);
          v85 = v122;
        }

        v85[2] = v93 + 1;
        v94 = &v85[2 * v93];
        v94[4] = v90;
        v94[5] = v91;
        v86 += v87;
        --v84;
      }

      while (v84);
      v58 = v114;
      v82 = v108;
    }

    v99 = v0[248];
    v100 = v0[246];
    v101 = Array.description.getter();
    v103 = v102;

    v104 = sub_100009D88(v101, v103, &v121);

    *(v119 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v81, v82, "VisibleAccountsQuery: matching account titles: %{sensitive}s", v119, 0xCu);
    sub_100009F60(bufa);

    v97 = v99;
    v98 = v100;
  }

  else
  {
    v95 = v0[248];
    v96 = v0[246];

    v97 = v95;
    v98 = v96;
  }

  v58(v97, v98);
  v12 = sub_100433160;
  v10 = (v0 + 82);
  v11 = v0 + 209;
  v13 = v0 + 222;

  return _swift_asyncLet_finish(v10, v11, v12, v13);
}

uint64_t sub_1004331B8()
{
  v1 = *(v0 + 2072);
  v2 = *(v0 + 2056);
  v3 = *(v0 + 2048);

  v4 = *(v0 + 8);
  v5 = *(v0 + 2144);

  return v4(v5);
}

uint64_t sub_100433378()
{
  v1 = *(v0 + 2072);
  v2 = *(v0 + 2056);
  v3 = *(v0 + 2048);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100433528()
{
  v1 = *(v0 + 2072);
  v2 = *(v0 + 2056);
  v3 = *(v0 + 2048);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100433680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v10 = swift_task_alloc();
  *(v7 + 24) = v10;
  *v10 = v7;
  v10[1] = sub_100199F0C;

  return sub_100435574(a5, a7);
}

uint64_t sub_100433720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v10 = swift_task_alloc();
  *(v7 + 24) = v10;
  *v10 = v7;
  v10[1] = sub_100199D20;

  return sub_100435574(a6, a7);
}

uint64_t sub_1004337C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_100189314;

  return VisibleAccountsQuery.entities(matching:)(a2, a3, v7, v8, v9);
}

void *sub_100433884(uint64_t a1, void *a2)
{
  v55 = a2;
  v4 = type metadata accessor for AccountEntity();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v56 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v62 = _swiftEmptyArrayStorage;
    sub_100189804(0, v6 & ~(v6 >> 63), 0);
    v7 = v62;
    if (v57)
    {
      v8 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v8 = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v64 = v8;
    v65 = v9;
    v66 = v57 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v47 = v2;
      v10 = 0;
      v49 = a1 + 56;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v50 = v11;
      v48 = a1 + 64;
      v51 = v6;
      v52 = a1;
      while (v10 < v6)
      {
        v13 = __OFADD__(v10, 1);
        v14 = v10 + 1;
        if (v13)
        {
          goto LABEL_43;
        }

        v15 = v64;
        v16 = v66;
        v61 = v65;
        sub_1002CB540(v64, v65, v66, a1);
        v18 = v17;
        v63[0] = 0;
        v19 = [v55 existingObjectWithID:v17 error:v63];
        v20 = v63[0];
        if (!v19)
        {
          v45 = v63[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_1000153F8(v15, v61, v16);

          return v7;
        }

        v21 = v19;
        v59 = v14;
        v60 = v7;
        v63[4] = &OBJC_PROTOCOL___ICAccountObject;
        v22 = swift_dynamicCastObjCProtocolUnconditional();
        v23 = v20;
        sub_10042FBA0(v22);
        v24 = [v22 localizedName];
        v58 = v16;
        if (v24)
        {
          v25 = v24;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0xE000000000000000;
        }

        v29 = v56;
        v30 = &v56[*(v54 + 24)];
        *v30 = v26;
        v30[1] = v28;
        v31 = [v22 objectID];
        v32 = [v31 URIRepresentation];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v60;
        v62 = v60;
        v34 = v60[2];
        v33 = v60[3];
        if (v34 >= v33 >> 1)
        {
          sub_100189804(v33 > 1, v34 + 1, 1);
          v7 = v62;
        }

        v7[2] = v34 + 1;
        sub_100314040(v29, v7 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v34);
        v6 = v51;
        a1 = v52;
        v10 = v59;
        if (v57)
        {
          if (!v58)
          {
            goto LABEL_48;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_10015DA04(&qword_1006C83E0);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v12(v63, 0);
          if (v10 == v6)
          {
LABEL_40:
            sub_1000153F8(v64, v65, v66);
            return v7;
          }
        }

        else
        {
          if (v58)
          {
            goto LABEL_49;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v35 = 1 << *(v52 + 32);
          if (v15 >= v35)
          {
            goto LABEL_44;
          }

          v36 = v15 >> 6;
          v37 = *(v49 + 8 * (v15 >> 6));
          if (((v37 >> v15) & 1) == 0)
          {
            goto LABEL_45;
          }

          if (*(v52 + 36) != v61)
          {
            goto LABEL_46;
          }

          v38 = v37 & (-2 << (v15 & 0x3F));
          if (v38)
          {
            v35 = __clz(__rbit64(v38)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v39 = v36 << 6;
            v40 = v36 + 1;
            v41 = (v48 + 8 * v36);
            while (v40 < (v35 + 63) >> 6)
            {
              v43 = *v41++;
              v42 = v43;
              v39 += 64;
              ++v40;
              if (v43)
              {
                sub_1000153F8(v15, v61, 0);
                v35 = __clz(__rbit64(v42)) + v39;
                goto LABEL_37;
              }
            }

            sub_1000153F8(v15, v61, 0);
          }

LABEL_37:
          v44 = *(a1 + 36);
          v64 = v35;
          v65 = v44;
          v66 = 0;
          if (v10 == v6)
          {
            goto LABEL_40;
          }
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  return v7;
}

void *sub_100433DF4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for ManagedEntityContextType();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AppDependency.wrappedValue.getter();
  v8 = v14;
  sub_1000054A4(0, &qword_1006C4660);
  static ICUnifiedNoteContext.$prefersViewContext.getter();
  v13[15] = 0;
  swift_task_localValuePush();
  v9 = [v8 modernManagedObjectContext];
  (*(v5 + 104))(v7, enum case for ManagedEntityContextType.html(_:), v4);
  v10 = ICUnifiedNoteContext.managedObjectContext(for:)();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);

    swift_task_localValuePop();
  }

  else
  {
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v4 = [objc_allocWithZone(ICFolderCoreDataIndexer) initWithLegacyManagedObjectContext:v11 modernManagedObjectContext:v9];
    [v4 setShouldIncludeTrash:0];
    if (a2)
    {
      [v4 setShouldIncludeSmartFolders:0];
      [v4 setShouldIncludeSystemPaper:2];
      [v4 setShouldIncludeMathNotes:2];
      [v4 setShouldIncludeCallNotes:2];
      [v4 setShouldIncludeSharedWithYou:2];
      [v4 setShouldIncludeLegacyAccounts:0];
      [v4 setShouldIncludeDefaultFolder:0];
    }

    swift_task_localValuePop();
  }

  return v4;
}

uint64_t sub_10043408C(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return _swift_task_switch(sub_1004340AC, 0, 0);
}

uint64_t sub_1004340AC()
{
  v41 = v0;
  if (_swiftEmptyArrayStorage >> 62)
  {
LABEL_27:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100456174(_swiftEmptyArrayStorage);
      v1 = v38;
    }

    else
    {
      v1 = &_swiftEmptySetSingleton;
    }

    v0[6] = v1;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100456174(_swiftEmptyArrayStorage);
      v2 = v39;
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    v0[6] = &_swiftEmptySetSingleton;
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = v0[13];
  v0[7] = v2;
  v4 = [v3 itemIdentifiers];
  v5 = &type metadata for Any;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[15] = v6;

  v7 = *(v6 + 16);
  v0[16] = v7;
  if (!v7)
  {

LABEL_18:
    v24 = v0[1];

    return v24(v1, v2);
  }

  v8 = 0;
  v9 = &qword_1006BFEC0;
  v10 = &selRef_fileName;
  v11 = &selRef_fileName;
  v12 = &selRef_showSimplifiedWebEditor_;
  v13 = &selRef_fileName;
  while (1)
  {
    v0[17] = v8;
    v14 = v0[15];
    if (v8 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    sub_10000A2A0(v14 + 32 * v8 + 32, (v0 + 2));
    sub_1000054A4(0, v9);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_6:
    v8 = v0[17] + 1;
    if (v8 == v0[16])
    {

      v1 = v0[6];
      v2 = v0[7];
      goto LABEL_18;
    }
  }

  v15 = v0[8];
  v0[18] = v15;
  if ([v15 v10[347]])
  {
    goto LABEL_5;
  }

  if ([v15 v11[349]])
  {
    AppDependency.wrappedValue.getter();
    v26 = v0[11];
    v27 = [v26 modernManagedObjectContext];
    v0[19] = v27;

    v28 = swift_allocObject();
    v0[20] = v28;
    *(v28 + 16) = v27;
    *(v28 + 24) = v15;
    v27;
    v29 = v15;
    v30 = swift_task_alloc();
    v0[21] = v30;
    v31 = sub_10015DA04(&unk_1006BFED0);
    *v30 = v0;
    v30[1] = sub_100434550;
    v32 = sub_100435D74;
    v33 = v0 + 12;
    v34 = v28;
    goto LABEL_22;
  }

  if ([v15 v12[239]])
  {
LABEL_5:
    sub_100264974(&v40, v15);

    goto LABEL_6;
  }

  if (![v15 v13[341]])
  {

    goto LABEL_6;
  }

  v16 = v9;
  v17 = v5;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  AppDependency.wrappedValue.getter();
  v22 = v0[9];
  v23 = [v22 htmlManagedObjectContext];
  v0[22] = v23;

  if (!v23)
  {

    v13 = v21;
    v12 = v20;
    v11 = v19;
    v10 = v18;
    v5 = v17;
    v9 = v16;
    goto LABEL_6;
  }

  v35 = swift_allocObject();
  v0[23] = v35;
  *(v35 + 16) = v23;
  *(v35 + 24) = v15;
  v36 = v15;
  v23;
  v37 = swift_task_alloc();
  v0[24] = v37;
  v31 = sub_10015DA04(&unk_1006BFED0);
  *v37 = v0;
  v37[1] = sub_100434A9C;
  v32 = sub_100435D58;
  v33 = v0 + 10;
  v34 = v35;
LABEL_22:

  return NSManagedObjectContext.perform<A>(_:)(v33, v32, v34, v31);
}

uint64_t sub_100434550()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10043468C, 0, 0);
  }
}

uint64_t sub_10043468C()
{
  v28 = v0;
  v1 = v0[12];
  v2 = v0[18];
  v3 = v0[19];
  if (v1)
  {
    v4 = v1;
    sub_100264974(&v27, v4);
  }

  else
  {
  }

  v9 = v0[17] + 1;
  if (v9 == v0[16])
  {
LABEL_5:

    v10 = v0[6];
    v11 = v0[7];
    v12 = v0[1];

    return v12(v10, v11);
  }

  while (1)
  {
    v0[17] = v9;
    v15 = v0[15];
    if (v9 >= *(v15 + 16))
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v5, v6, v7, v8);
    }

    sub_10000A2A0(v15 + 32 * v9 + 32, (v0 + 2));
    sub_1000054A4(0, &qword_1006BFEC0);
    v5 = swift_dynamicCast();
    if (v5)
    {
      break;
    }

LABEL_11:
    v9 = v0[17] + 1;
    if (v9 == v0[16])
    {
      goto LABEL_5;
    }
  }

  v16 = v0[8];
  v0[18] = v16;
  if ([v16 ic_isModernAccountType])
  {
    v14 = v16;
LABEL_10:
    sub_100264974(&v27, v14);

    goto LABEL_11;
  }

  if ([v16 ic_isModernFolderType])
  {
    AppDependency.wrappedValue.getter();
    v19 = v0[11];
    v20 = [v19 modernManagedObjectContext];
    v0[19] = v20;

    v21 = swift_allocObject();
    v0[20] = v21;
    *(v21 + 16) = v20;
    *(v21 + 24) = v16;
    v20;
    v22 = v16;
    v23 = swift_task_alloc();
    v0[21] = v23;
    v8 = sub_10015DA04(&unk_1006BFED0);
    *v23 = v0;
    v23[1] = sub_100434550;
    v6 = sub_100435D74;
    v5 = (v0 + 12);
    v7 = v21;
    goto LABEL_23;
  }

  if ([v16 ic_isLegacyAccountType])
  {
    v14 = v16;
    goto LABEL_10;
  }

  if (![v16 ic_isLegacyFolderType] || (AppDependency.wrappedValue.getter(), v17 = v0[9], v18 = objc_msgSend(v17, "htmlManagedObjectContext"), v0[22] = v18, v17, !v18))
  {

    goto LABEL_11;
  }

  v24 = swift_allocObject();
  v0[23] = v24;
  *(v24 + 16) = v18;
  *(v24 + 24) = v16;
  v25 = v16;
  v18;
  v26 = swift_task_alloc();
  v0[24] = v26;
  v8 = sub_10015DA04(&unk_1006BFED0);
  *v26 = v0;
  v26[1] = sub_100434A9C;
  v6 = sub_100435D58;
  v5 = (v0 + 10);
  v7 = v24;
LABEL_23:

  return NSManagedObjectContext.perform<A>(_:)(v5, v6, v7, v8);
}

uint64_t sub_100434A9C()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100434BD8, 0, 0);
  }
}

uint64_t sub_100434BD8()
{
  v30 = v0;
  v1 = v0[10];
  v2 = v0[22];
  v3 = v0[18];
  if (v1)
  {
    v4 = v1;
    sub_100264974(&v29, v4);
  }

  else
  {
  }

  v9 = v0[17] + 1;
  if (v9 == v0[16])
  {
LABEL_5:

    v10 = v0[6];
    v11 = v0[7];
    v12 = v0[1];

    return v12(v10, v11);
  }

  v14 = v0 + 6;
  while (1)
  {
    v0[17] = v9;
    v16 = v0[15];
    if (v9 >= *(v16 + 16))
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v5, v6, v7, v8);
    }

    sub_10000A2A0(v16 + 32 * v9 + 32, (v0 + 2));
    sub_1000054A4(0, &qword_1006BFEC0);
    v5 = swift_dynamicCast();
    if (v5)
    {
      break;
    }

LABEL_11:
    v9 = v0[17] + 1;
    if (v9 == v0[16])
    {
      goto LABEL_5;
    }
  }

  v17 = v0[8];
  v0[18] = v17;
  if ([v17 ic_isModernAccountType])
  {
    v15 = v17;
LABEL_10:
    sub_100264974(&v29, v15);

    goto LABEL_11;
  }

  if ([v17 ic_isModernFolderType])
  {
    AppDependency.wrappedValue.getter();
    v21 = v0[11];
    v22 = [v21 modernManagedObjectContext];
    v0[19] = v22;

    v23 = swift_allocObject();
    v0[20] = v23;
    *(v23 + 16) = v22;
    *(v23 + 24) = v17;
    v22;
    v24 = v17;
    v25 = swift_task_alloc();
    v0[21] = v25;
    v8 = sub_10015DA04(&unk_1006BFED0);
    *v25 = v0;
    v25[1] = sub_100434550;
    v6 = sub_100435D74;
    v5 = (v0 + 12);
    v7 = v23;
    goto LABEL_23;
  }

  if ([v17 ic_isLegacyAccountType])
  {
    v15 = v17;
    goto LABEL_10;
  }

  if (![v17 ic_isLegacyFolderType])
  {

    goto LABEL_11;
  }

  v18 = v14;
  AppDependency.wrappedValue.getter();
  v19 = v0[9];
  v20 = [v19 htmlManagedObjectContext];
  v0[22] = v20;

  if (!v20)
  {

    v14 = v18;
    goto LABEL_11;
  }

  v26 = swift_allocObject();
  v0[23] = v26;
  *(v26 + 16) = v20;
  *(v26 + 24) = v17;
  v27 = v17;
  v20;
  v28 = swift_task_alloc();
  v0[24] = v28;
  v8 = sub_10015DA04(&unk_1006BFED0);
  *v28 = v0;
  v28[1] = sub_100434A9C;
  v6 = sub_100435D58;
  v5 = (v0 + 10);
  v7 = v26;
LABEL_23:

  return NSManagedObjectContext.perform<A>(_:)(v5, v6, v7, v8);
}

uint64_t sub_100434FF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A1FC;

  return sub_100431440(a1, v4, v5, v6);
}

uint64_t sub_1004350A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004350EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A600;

  return sub_1004315E0(a1, v4, v5, v6);
}

uint64_t sub_1004351A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000A1FC;

  return sub_100433680(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100435278(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000A1FC;

  return sub_100433720(a1, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_100435354()
{
  result = qword_1006C83A8;
  if (!qword_1006C83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C83A8);
  }

  return result;
}

unint64_t sub_1004353AC()
{
  result = qword_1006C83B0;
  if (!qword_1006C83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C83B0);
  }

  return result;
}

unint64_t sub_100435438()
{
  result = qword_1006C83C0;
  if (!qword_1006C83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C83C0);
  }

  return result;
}

unint64_t sub_1004354C4()
{
  result = qword_1006C83D0;
  if (!qword_1006C83D0)
  {
    sub_10017992C(&qword_1006C8390);
    sub_10017E550(&qword_1006C40F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C83D0);
  }

  return result;
}

uint64_t sub_100435574(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v2[12] = type metadata accessor for AccountEntity();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100435620, 0, 0);
}

uint64_t sub_100435620()
{
  v0[7] = &_swiftEmptySetSingleton;
  v1 = v0[10];
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006BFEC0);
    sub_1001C607C();
    Set.Iterator.init(_cocoa:)();
    v5 = v0[2];
    v6 = v0[3];
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[6];
  }

  else
  {
    v10 = -1 << *(v1 + 32);
    v6 = v1 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v1 + 56);

    v7 = 0;
  }

  v0[16] = v5;
  v0[17] = v6;
  v0[19] = v7;
  v0[20] = v9;
  v0[18] = v8;
  if (v5 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      goto LABEL_20;
    }

    v0[9] = v18;
    sub_1000054A4(0, &qword_1006BFEC0);
    swift_dynamicCast();
    v17 = v0[8];
    v14 = v7;
    v16 = v9;
  }

  else
  {
    v13 = v9;
    v14 = v7;
    if (!v9)
    {
      v15 = v7;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= ((v8 + 64) >> 6))
        {
          goto LABEL_20;
        }

        v13 = *(v6 + 8 * v14);
        ++v15;
        if (v13)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v5, v2, v3, v4);
    }

LABEL_13:
    v16 = (v13 - 1) & v13;
    v17 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
  }

  v0[22] = v14;
  v0[23] = v16;
  v0[21] = v17;
  if (v17)
  {
    v19 = v0[11];
    v20 = swift_allocObject();
    v0[24] = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v17;
    v21 = v17;
    v22 = v19;
    v23 = swift_task_alloc();
    v0[25] = v23;
    *v23 = v0;
    v23[1] = sub_100435918;
    v4 = v0[12];
    v5 = v0[13];
    v2 = sub_100192648;
    v3 = v20;

    return NSManagedObjectContext.perform<A>(_:)(v5, v2, v3, v4);
  }

LABEL_20:
  sub_10019E530();
  v24 = v0[7];

  v25 = v0[1];

  return v25(v24);
}

uint64_t sub_100435918()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_10019ECC8;
  }

  else
  {

    v2 = sub_100435A48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100435A48()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_100314040(v4, v3);
  sub_10026685C(v2, v3);

  v5 = sub_10017E2E4(v2);
  v9 = v0[22];
  v10 = v0[23];
  v0[19] = v9;
  v0[20] = v10;
  v11 = v0[16];
  if (v11 < 0)
  {
    v17 = __CocoaSet.Iterator.next()();
    if (!v17)
    {
      goto LABEL_14;
    }

    v0[9] = v17;
    sub_1000054A4(0, &qword_1006BFEC0);
    swift_dynamicCast();
    v16 = v0[8];
    v13 = v9;
    v15 = v10;
  }

  else
  {
    v12 = v10;
    v13 = v9;
    if (!v10)
    {
      v14 = v9;
      while (1)
      {
        v13 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v13 >= ((v0[18] + 64) >> 6))
        {
          goto LABEL_14;
        }

        v12 = *(v0[17] + 8 * v13);
        ++v14;
        if (v12)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v5, v6, v7, v8);
    }

LABEL_7:
    v15 = (v12 - 1) & v12;
    v16 = *(*(v11 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
  }

  v0[22] = v13;
  v0[23] = v15;
  v0[21] = v16;
  if (v16)
  {
    v18 = v0[11];
    v19 = swift_allocObject();
    v0[24] = v19;
    *(v19 + 16) = v18;
    *(v19 + 24) = v16;
    v20 = v16;
    v21 = v18;
    v22 = swift_task_alloc();
    v0[25] = v22;
    *v22 = v0;
    v22[1] = sub_100435918;
    v8 = v0[12];
    v5 = v0[13];
    v6 = sub_100192648;
    v7 = v19;

    return NSManagedObjectContext.perform<A>(_:)(v5, v6, v7, v8);
  }

LABEL_14:
  sub_10019E530();
  v23 = v0[7];

  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_100435CF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100435D90()
{
  v1 = OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell____lazy_storage___textField;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell____lazy_storage___textField);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell____lazy_storage___textField);
  }

  else
  {
    v4 = sub_100435F00(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100435DF4(void *a1)
{
  v3 = [a1 markedTextRange];
  if (v3)
  {
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell_textDidChange);
    if (v4)
    {

      v5 = [a1 text];
      if (v5)
      {
        v6 = v5;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      v4(v7, v9);
      sub_10000C840(v4);
    }
  }
}

id sub_100435F00(uint64_t a1)
{
  v2 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(UITextField) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.textProperties.getter();
  (*(v7 + 8))(v9, v6);
  v11 = UIListContentConfiguration.TextProperties.color.getter();
  (*(v3 + 8))(v5, v2);
  [v10 setTextColor:v11];
  [v10 setClearButtonMode:1];
  [v10 setAdjustsFontForContentSizeCategory:1];
  v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v10 setFont:v12];

  [v10 addTarget:a1 action:"textFieldDidChange:" forControlEvents:0x20000];
  [v10 addTarget:a1 action:"resignFirstResponder" forControlEvents:0x80000];

  return v10;
}

void sub_10043616C()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100435D90();
  v17 = [v6 superview];

  v7 = v17;
  if (v17)
  {
  }

  else
  {
    static UIListContentConfiguration.cell()();
    UIListContentConfiguration.directionalLayoutMargins.getter();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [v1 contentView];
    v15 = OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell____lazy_storage___textField;
    [v14 addSubview:*&v1[OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell____lazy_storage___textField]];

    [*&v1[v15] ic_addAnchorsToFillSuperviewWithLeadingPadding:0 trailingPadding:0 verticalPadding:v11 usesSafeAreaLayoutGuideHorizontally:v13 usesSafeAreaLayoutGuideVertically:v9];
    (*(v3 + 8))(v5, v2);
  }
}

id sub_100436584()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartFolderComposerTextFieldCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

objc_class *sub_100436634()
{
  v1 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menu;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menu);
  }

  else
  {
    sub_1000054A4(0, &unk_1006C6410);
    sub_10015DA04(&unk_1006BD390);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_100531E10;
    v5 = v0;
    *(preferredElementSize + 32) = sub_100436A60();
    *(preferredElementSize + 40) = sub_100436BF4();
    *(preferredElementSize + 48) = sub_100436D6C();
    *(preferredElementSize + 56) = sub_100436EE0();
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v16.value.super.isa = 0;
    v16.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v14).super.super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100531E20;
    *(v8 + 32) = sub_100436994();
    *(v8 + 40) = isa;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v17.value.super.isa = 0;
    v17.is_nil = 0;
    v10.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v17, 0, 0xFFFFFFFFFFFFFFFFLL, v8, v15).super.super.isa;
    v11 = *(v0 + v1);
    *(v5 + v1) = v10;
    v3 = v10.super.super.isa;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_10043679C()
{
  v1 = sub_100436994();
  v2 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection;
  v3 = 1;
  if (*(v0 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v3 = 0;
    }
  }

  [v1 setState:v3];

  v4 = sub_100436A60();
  v6 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      if (![v5 selectionType])
      {
        v6 = 1;
      }
    }
  }

  [v4 setState:v6];

  v7 = sub_100436BF4();
  v9 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      if ([v8 selectionType] == 1)
      {
        v9 = 1;
      }
    }
  }

  [v7 setState:v9];

  v10 = sub_100436D6C();
  v12 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      if ([v11 selectionType] == 2)
      {
        v12 = 1;
      }
    }
  }

  [v10 setState:v12];

  v15 = sub_100436EE0();
  v14 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      if ([v13 selectionType] == 3)
      {
        v14 = 1;
      }
    }
  }

  [v15 setState:v14];
}

void sub_1004369C4(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
  *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;

  [a2 setNeedsUpdateConfiguration];
  sub_10043679C();
  v4 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  if (v4)
  {

    v4(v5);

    sub_10000C840(v4);
  }
}

id sub_100436A90(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = *&v1[*a1];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v5 = [objc_opt_self() mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 localizedStringForKey:v6 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v1;
    v8 = v1;
    v9 = v1;
    v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v11 = *&v1[v2];
    *&v9[v2] = v10;
    v4 = v10;

    v3 = 0;
  }

  v12 = v3;
  return v4;
}

id sub_100436BF4()
{
  v1 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionIncomplete;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionIncomplete];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionIncomplete];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_100436D6C()
{
  v1 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionComplete;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionComplete];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionComplete];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_100436EE0()
{
  v1 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionNone;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionNone];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionNone];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_100437060(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(ICChecklistsFilterTypeSelection) initWithSelectionType:a3];
  v5 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
  *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = v4;
  v6 = v4;

  [a2 setNeedsUpdateConfiguration];
  result = sub_10043679C();
  v8 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  if (v8)
  {

    v8(v9);

    return sub_10000C840(v8);
  }

  return result;
}

id sub_1004371EC(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menu] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionOff] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionAny] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionIncomplete] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionComplete] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionNone] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FolderComposerFilterCellChecklists();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1004372C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionNone);
}

id sub_100437344()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerFilterCellChecklists();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id EmojiImageGenerator.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

unint64_t sub_100437610(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1004379B0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_100437760(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_100437A48(0xFuLL, a1, a2);
  v8 = sub_100437A48(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_41;
        }

        if ((a2 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = String.UnicodeScalarView._foreignIndex(before:)();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_36;
        }
      }

      else
      {
        v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = _StringObject.sharedUTF8.getter();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_36;
        }
      }

      v25 = -1;
LABEL_36:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v14 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = _StringObject.sharedUTF8.getter();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_1004379B0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100437CF4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_100437B54(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100437A48(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100437AE0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_100437B54(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100437AE0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_100437C78(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100437B54(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_100437C78(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_100437CF4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_100437C78(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

id _s11MobileNotes19EmojiImageGeneratorC08generatecD5Asset_11descriptionSo07NSEmojidG0CSgSS_SStF_0(unint64_t a1, unint64_t a2)
{
  v4 = sub_100437610(a1, a2);
  if ((v4 & 0x100000000) != 0)
  {
    return 0;
  }

  v5 = v4;
  if (sub_100437760(a1, a2) != 1)
  {
    return 0;
  }

  sub_10015DA04(&qword_1006C1A30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100531E30;
  *(v6 + 56) = &type metadata for UInt32;
  *(v6 + 64) = &protocol witness table for UInt32;
  *(v6 + 32) = v5;
  String.init(format:_:)();
  v7 = objc_opt_self();
  for (i = 0; i != 32; i += 8)
  {

    v9._countAndFlagsBits = 45;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 30832;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v7 imageNamed:v12];

    if (v13)
    {
      v14 = [v13 CGImage];
      if (v14)
      {
        v15 = v14;
        v16 = [objc_allocWithZone(NSEmojiImageStrike) initWithImage:v15 alignmentInset:{1.0, 2.0}];

        if (v16)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }

      else
      {
      }
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_100438104();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100438104();
  }

  v18 = objc_allocWithZone(NSEmojiImageAsset);
  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();
  sub_100438104();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v18 initWithContentIdentifier:v19 shortDescription:v20 strikeImages:isa];

  return v22;
}

unint64_t sub_100438104()
{
  result = qword_1006C84A8;
  if (!qword_1006C84A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C84A8);
  }

  return result;
}

unint64_t sub_1004381A0(uint64_t a1)
{
  result = sub_1004381C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004381C8()
{
  result = qword_1006C84E8;
  if (!qword_1006C84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C84E8);
  }

  return result;
}

uint64_t sub_10043821C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v27 - v14;
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  if (!a2 && !a3 && !a4)
  {
    return 1;
  }

  static Date.now.getter();
  v19 = *(a1 + 16);
  if (v19 < a2)
  {
    goto LABEL_8;
  }

  result = sub_100438494(a2, a1);
  if (v21 == v22 >> 1)
  {

    swift_unknownObjectRelease();
LABEL_8:
    (*(v9 + 8))(v17, v8);
    return 0;
  }

  if (v21 >= (v22 >> 1))
  {
    __break(1u);
    return result;
  }

  (*(v9 + 16))(v12, v20 + *(v9 + 72) * v21, v8);

  swift_unknownObjectRelease();
  (*(v9 + 32))(v15, v12, v8);
  v23 = Date.numberOfDays(from:)();
  if ((a3 & 0x8000000000000000) != 0 || v23 > a3 || !v19)
  {
    v26 = *(v9 + 8);
    v26(v15, v8);
    v26(v17, v8);
    return 0;
  }

  v24 = Date.numberOfDays(from:)();
  v25 = *(v9 + 8);
  v25(v15, v8);
  v25(v17, v8);
  result = 1;
  if (a4 >= 1 && v24 < a4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100438494(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Date();
    return a2;
  }

  return result;
}

unint64_t sub_10043851C(uint64_t a1)
{
  result = sub_100438544();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100438544()
{
  result = qword_1006C8528;
  if (!qword_1006C8528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8528);
  }

  return result;
}

unint64_t sub_100438598(uint64_t a1)
{
  result = sub_1004385C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004385C0()
{
  result = qword_1006C8568;
  if (!qword_1006C8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8568);
  }

  return result;
}

BOOL sub_100438614(uint64_t a1, double a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = sub_10015DA04(&unk_1006C1710);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  if (a2 == 0.0)
  {
    return 1;
  }

  sub_100239F98(a1, &v24 - v15);
  v18 = *(v5 + 48);
  v19 = v18(v16, 1, v4);
  sub_10036C5C4(v16);
  if (v19 == 1)
  {
    return 0;
  }

  v20 = _s19NoteEditRequirementV5DatesVMa();
  sub_100239F98(a1 + *(v20 + 20), v14);
  if (v18(v14, 1, v4) == 1)
  {
    sub_10036C5C4(v14);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v10, v14, v4);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v22 = v21;
    v23 = *(v5 + 8);
    v23(v8, v4);
    v23(v10, v4);
    return v22 >= a2;
  }
}

unint64_t sub_100438874(uint64_t a1)
{
  result = sub_10043889C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10043889C()
{
  result = qword_1006C85A8;
  if (!qword_1006C85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C85A8);
  }

  return result;
}

BOOL sub_1004388F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  if (!a2)
  {
    return 1;
  }

  sub_100239F98(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10036C5C4(v6);
    return 1;
  }

  (*(v8 + 32))(v13, v6, v7);
  static Date.now.getter();
  v15 = Date.numberOfDays(from:)();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
  return a2 < 1 || v15 >= a2;
}

unint64_t sub_100438ACC(uint64_t a1)
{
  result = sub_100438AF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100438AF4()
{
  result = qword_1006C85E8;
  if (!qword_1006C85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C85E8);
  }

  return result;
}

uint64_t _s19NoteEditRequirementV5DatesVMa()
{
  result = qword_1006C8648;
  if (!qword_1006C8648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100438BBC()
{
  sub_10001E5B8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t RealtimeCollaborationMessageController.__allocating_init(messenger:cloudConfiguration:cloudDatabase:activity:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100187D2C;

  return RealtimeCollaborationMessageController.init(messenger:cloudConfiguration:cloudDatabase:activity:context:)(a1, a2, a3, a4, a5);
}

uint64_t RealtimeCollaborationMessageController.numNonFatalErrorsEncounteredDuringSession.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_100438D40()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C8680);
  sub_10002597C(v0, qword_1006C8680);
  return static Logger.realtimeCollaboration.getter();
}

uint64_t sub_100438D8C()
{
  v0 = sub_10015DA04(&qword_1006C8880);
  sub_100025918(v0, qword_1006C8698);
  sub_10002597C(v0, qword_1006C8698);
  return static Logger.verboseRealtimeCollaboration.getter();
}

uint64_t sub_100438DE4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  sub_100025918(v4, qword_1006C86B0);
  sub_10002597C(v4, qword_1006C86B0);
  if (qword_1006BC950 != -1)
  {
    swift_once();
  }

  v5 = sub_10002597C(v0, qword_1006C8680);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

uint64_t RealtimeCollaborationMessageController.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_activity;
  v4 = type metadata accessor for EditNoteActivity();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100438FF0(void *a1)
{
  v2 = *(v1 + *a1);

  return v2;
}

uint64_t RealtimeCollaborationMessageController.init(messenger:cloudConfiguration:cloudDatabase:activity:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[38] = a5;
  v6[39] = v5;
  v6[36] = a3;
  v6[37] = a4;
  v6[34] = a1;
  v6[35] = a2;
  v6[40] = *v5;
  sub_10015DA04(&qword_1006C2170);
  v6[41] = swift_task_alloc();
  v7 = sub_10015DA04(&qword_1006BCE70);
  v6[42] = v7;
  v6[43] = *(v7 - 8);
  v6[44] = swift_task_alloc();
  v8 = sub_10015DA04(&unk_1006C86D0);
  v6[45] = v8;
  v6[46] = *(v8 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v9 = sub_10015DA04(&qword_1006BCE48);
  v6[49] = v9;
  v6[50] = *(v9 - 8);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();

  return _swift_task_switch(sub_10043926C, 0, 0);
}

uint64_t sub_10043926C()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v38 = v0[48];
  v39 = v0[47];
  v36 = v0[46];
  v37 = v0[45];
  v40 = v0[43];
  v41 = v0[44];
  v42 = v0[42];
  v5 = v0[39];
  v47 = v0[38];
  v45 = v0[36];
  v46 = v0[37];
  v43 = v0[34];
  v44 = v0[35];
  v6 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudKitRecords;
  v0[53] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudKitRecords;
  v34 = (v5 + v6);
  v48 = enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:);
  (*(v4 + 104))(v2);
  v7 = *(v4 + 16);
  v7(v1, v2, v3);
  sub_10015DA04(&unk_1006BCE50);
  swift_allocObject();
  v32 = sub_100176B74(v1);
  v7(v1, v2, v3);
  swift_allocObject();
  v8 = sub_100176B74(v1);
  (*(v4 + 8))(v2, v3);
  *v34 = v32;
  v34[1] = v8;
  v9 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_selectionMessages;
  v0[54] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_selectionMessages;
  v35 = (v5 + v9);
  (*(v36 + 104))(v38, v48, v37);
  v10 = *(v36 + 16);
  v10(v39, v38, v37);
  sub_10015DA04(&unk_1006BCE60);
  swift_allocObject();
  v33 = sub_100176828(v39);
  v10(v39, v38, v37);
  swift_allocObject();
  v11 = sub_100176828(v39);
  (*(v36 + 8))(v38, v37);
  *v35 = v33;
  v35[1] = v11;
  v12 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_paperKitInbox;
  v0[55] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_paperKitInbox;
  sub_10015DA04(&unk_1006C86E0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = _swiftEmptyArrayStorage;
  *(v5 + v12) = v13;
  v14 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_paperKitOutbox;
  v0[56] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_paperKitOutbox;
  (*(v40 + 104))(v41, v48, v42);
  sub_10015DA04(&qword_1006BCE78);
  swift_allocObject();
  *(v5 + v14) = sub_1001764D8(v41);
  v15 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_subtasks;
  v0[57] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_subtasks;
  *(v5 + v15) = _swiftEmptyArrayStorage;
  v16 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount;
  v0[58] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount;
  sub_10015DA04(&unk_1006BCE80);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = 0;
  *(v5 + v16) = v17;
  v18 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_messenger;
  v0[59] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_messenger;
  *(v5 + v18) = v43;
  v19 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudConfiguration;
  v0[60] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudConfiguration;
  *(v5 + v19) = v44;
  v20 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudDatabase;
  v0[61] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudDatabase;
  *(v5 + v20) = v45;
  v21 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_activity;
  v0[62] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_activity;
  v22 = type metadata accessor for EditNoteActivity();
  v0[63] = v22;
  v23 = *(v22 - 8);
  v0[64] = v23;
  (*(v23 + 16))(v5 + v21, v46, v22);
  v24 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_context;
  v0[65] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_context;
  *(v5 + v24) = v47;

  v25 = v44;
  v26 = v45;
  v27 = v47;
  v28 = swift_task_alloc();
  v0[66] = v28;
  v29 = sub_10015DA04(&unk_1006C8700);
  *v28 = v0;
  v28[1] = sub_100439718;
  v30 = v0[38];

  return EditNoteActivity.withNote<A>(in:_:)(v0 + 27, v30, sub_10043A210, 0, v29);
}

uint64_t sub_100439718()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_10043A004;
  }

  else
  {
    v2 = sub_10043982C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043982C()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[29];
  if (v1)
  {
    if (v3)
    {
      v4 = v0[28];
      v5 = v0[64];
      v46 = v0[63];
      v6 = v0[41];
      v7 = v0[39];
      v41 = v0[38];
      v42 = v0[36];
      v43 = v0[35];
      v44 = v0[37];
      *(v7 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_encryptionParentRecordID) = v1;
      sub_10015DA04(&qword_1006C8718);
      v8 = swift_allocObject();
      *(v8 + 24) = 0;
      *(v8 + 16) = v4;
      *(v7 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_share) = v8;
      *(v7 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_paperKitTemplateRecord) = v3;
      v40 = v4;
      v9 = v1;
      v10 = v3;
      sub_10043A2C4();
      v12 = v11;
      sub_10043A488();
      v14 = v13;
      sub_10015DA04(&unk_1006C8730);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100531E30;
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v17;
      *(inited + 32) = sub_10023D268(0, 0, v6, &unk_10054AF18, v18);
      sub_1002DC284(v14);
      sub_1002DC284(inited);

      (*(v5 + 8))(v44, v46);
      *(v7 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_subtasks) = v12;

      v19 = v0[1];
      v20 = v0[39];

      return v19(v20);
    }

    v28 = v0[64];
    v29 = v0[38];
    v48 = v0[37];
    v50 = v0[36];
    v52 = v0[35];
    v54 = v0[63];
    type metadata accessor for ICError(0);
    v0[33] = 232;
    sub_10015DA04(&qword_1006BFBE0);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_100531E30;
    *(v30 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v30 + 40) = v31;
    v32 = v1;
    _StringGuts.grow(_:)(53);
    v33._countAndFlagsBits = 0xD000000000000033;
    v33._object = 0x8000000100573A40;
    String.append(_:)(v33);
    v34._countAndFlagsBits = EditNoteActivity.noteID.getter();
    String.append(_:)(v34);

    *(v30 + 72) = &type metadata for String;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0xE000000000000000;
    sub_10018F334(v30);
    swift_setDeallocating();
    sub_1000073B4(v30 + 32, &unk_1006BFA10);
    sub_100455E2C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v27 = *(v28 + 8);
    v27(v48, v54);
  }

  else
  {
    v22 = v0[64];
    v45 = v0[37];
    v47 = v0[38];
    v49 = v0[36];
    v51 = v0[35];
    v53 = v0[63];
    type metadata accessor for ICError(0);
    v0[31] = 232;
    sub_10015DA04(&qword_1006BFBE0);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_100531E30;
    *(v23 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v23 + 40) = v24;
    _StringGuts.grow(_:)(39);

    v25._countAndFlagsBits = EditNoteActivity.noteID.getter();
    String.append(_:)(v25);

    v26._object = 0x8000000100573A10;
    v26._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v26);
    *(v23 + 72) = &type metadata for String;
    *(v23 + 48) = 0x2065746F4ELL;
    *(v23 + 56) = 0xE500000000000000;
    sub_10018F334(v23);
    swift_setDeallocating();
    sub_1000073B4(v23 + 32, &unk_1006BFA10);
    sub_100455E2C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v27 = *(v22 + 8);
    v27(v45, v53);
  }

  v35 = v0[65];
  v36 = v0[60];
  v37 = v0[61];
  v38 = v0[39];
  v27(v38 + v0[62], v0[63]);

  swift_deallocPartialClassInstance();

  v39 = v0[1];

  return v39();
}

uint64_t sub_10043A004()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 296);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);

  v6 = *(v2 + 8);
  v6(v3, v1);
  v7 = *(v0 + 520);
  v8 = *(v0 + 480);
  v9 = *(v0 + 488);
  v10 = *(v0 + 312);
  v6(v10 + *(v0 + 496), *(v0 + 504));

  swift_deallocPartialClassInstance();

  v11 = *(v0 + 8);

  return v11();
}

void sub_10043A210(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = [a1 recordID];
  a2[1] = [a1 serverShareCheckingParent];
  v4 = [a1 serverRecord];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 ic_copyWithUserFields:0];
  }

  else
  {
    v6 = 0;
  }

  a2[2] = v6;
}

double sub_10043A2C4()
{
  v1 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  v7 = sub_10023D268(0, 0, v3, &unk_10054B028, v6);
  static TaskPriority.userInitiated.getter();
  v5(v3, 0, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  v9 = sub_10023D268(0, 0, v3, &unk_10054B038, v8);
  sub_10015DA04(&unk_1006C8730);
  v10 = swift_allocObject();
  *&result = 2;
  *(v10 + 16) = xmmword_100535E30;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  return result;
}

double sub_10043A488()
{
  v1 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  v7 = sub_10023D268(0, 0, v3, &unk_10054AF80, v6);
  static TaskPriority.userInitiated.getter();
  v5(v3, 0, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  v9 = sub_10023D268(0, 0, v3, &unk_10054AF90, v8);
  static TaskPriority.userInitiated.getter();
  v5(v3, 0, 1, v4);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v0;

  v11 = sub_10023D268(0, 0, v3, &unk_10054AFA0, v10);
  sub_10015DA04(&unk_1006C8730);
  v12 = swift_allocObject();
  *&result = 3;
  *(v12 + 16) = xmmword_100539C40;
  *(v12 + 32) = v7;
  *(v12 + 40) = v9;
  *(v12 + 48) = v11;
  return result;
}

Swift::Void __swiftcall RealtimeCollaborationMessageController.finish()()
{
  sub_10015DA04(&qword_1006BD3D8);
  AsyncStream.Continuation.finish()();
  AsyncStream.Continuation.finish()();
  sub_10015DA04(&qword_1006BD3C0);
  AsyncStream.Continuation.finish()();
  AsyncStream.Continuation.finish()();
  sub_10043A8B8(*(v0 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_paperKitInbox));
  sub_10015DA04(&qword_1006BD3A8);
  AsyncStream.Continuation.finish()();
  v1 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_subtasks;
  v2 = *(*(v0 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_subtasks) + 16);
  if (v2)
  {

    v3 = 32;
    do
    {

      Task.cancel()();

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  *(v0 + v1) = _swiftEmptyArrayStorage;
}

uint64_t sub_10043A8B8(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  v2 = *(a1 + 16);
  *(a1 + 16) = _swiftEmptyArrayStorage;
  os_unfair_lock_unlock((a1 + 24));
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      sub_10015DA04(&qword_1006BD3A8);
      AsyncStream.Continuation.finish()();

      ++v4;
      if (v5 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_10043A9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for Notification();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  sub_10015DA04(qword_1006C0920);
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_10043AB50, 0, 0);
}

uint64_t sub_10043AB50()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v0[26] = ICNotesCloudContextDidFetchShareNotificationShareKey;
  v2 = sub_100455E2C(&qword_1006C8860, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_10043ACA8;
  v4 = v0[22];
  v5 = v0[23];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_10043ACA8()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_10043B368;
  }

  else
  {
    v2 = sub_10043ADBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10043ADD8()
{
  v41 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
LABEL_22:

    v31 = *(v0 + 8);

    v31();
    return;
  }

  (*(v3 + 32))(*(v0 + 168), v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    (*(v15 + 8))(v14, v16);
    goto LABEL_22;
  }

  v5 = Strong;
  v6 = Notification.userInfo.getter();
  if (!v6)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_16;
  }

  v7 = v6;
  *(v0 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 120) = v8;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v9 = sub_100024E34(v0 + 16), (v10 & 1) == 0))
  {

    sub_100024F9C(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_16;
  }

  sub_10000A2A0(*(v7 + 56) + 32 * v9, v0 + 56);
  sub_100024F9C(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_16:
    sub_1000073B4(v0 + 56, &qword_1006BE7A0);
    goto LABEL_17;
  }

  sub_1000054A4(0, &qword_1006BFD38);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10002597C(v17, qword_1006C8680);
    v18 = static os_log_type_t.fault.getter();
    v19 = Logger.logObject.getter();
    v20 = os_log_type_enabled(v19, v18);
    v21 = *(v0 + 192);
    v22 = *(v0 + 200);
    v23 = *(v0 + 184);
    v24 = *(v0 + 160);
    v25 = *(v0 + 168);
    v26 = *(v0 + 152);
    if (v20)
    {
      v27 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v27 = 136315650;
      v28 = StaticString.description.getter();
      v39 = v23;
      v30 = sub_100009D88(v28, v29, v40);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2048;
      *(v27 + 14) = 138;
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_100009D88(0xD000000000000049, 0x8000000100573BE0, v40);
      _os_log_impl(&_mh_execute_header, v19, v18, "Failed assertion at %s:%lu: %s", v27, 0x20u);
      swift_arrayDestroy();

      (*(v24 + 8))(v25, v26);
      (*(v21 + 8))(v22, v39);
    }

    else
    {

      (*(v24 + 8))(v25, v26);
      (*(v21 + 8))(v22, v23);
    }

    goto LABEL_22;
  }

  v11 = *(v0 + 224);
  v12 = *(v0 + 136);
  v13 = *(v5 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_share);
  *(swift_task_alloc() + 16) = v12;
  os_unfair_lock_lock((v13 + 24));
  sub_10045554C((v13 + 16));
  if (v11)
  {

    os_unfair_lock_unlock((v13 + 24));
  }

  else
  {
    v33 = *(v0 + 160);
    v32 = *(v0 + 168);
    v34 = *(v0 + 152);
    os_unfair_lock_unlock((v13 + 24));

    (*(v33 + 8))(v32, v34);

    v35 = sub_100455E2C(&qword_1006C8860, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v36 = swift_task_alloc();
    *(v0 + 216) = v36;
    *v36 = v0;
    v36[1] = sub_10043ACA8;
    v37 = *(v0 + 176);
    v38 = *(v0 + 184);

    dispatch thunk of AsyncIteratorProtocol.next()(v37, v38, v35);
  }
}

uint64_t sub_10043B368()
{
  *(v0 + 128) = *(v0 + 224);
  sub_10015DA04(&unk_1006C9B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_10043B3F4(id *a1, void *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = [*a1 recordID];
  }

  else
  {
    v5 = 0;
  }

  v6 = [a2 recordID];
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {

      return;
    }

LABEL_10:
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10002597C(v9, qword_1006C8680);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v13 = 136315138;
      v14 = [v10 ic_loggingDescription];
      v20 = v12;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_100009D88(v15, v17, &v22);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v20, "Did receive new share: %s", v13, 0xCu);
      sub_100009F60(v21);
    }

    v19 = v10;
    *a1 = v10;
    return;
  }

  if (!v6)
  {

    return;
  }

  sub_1000054A4(0, &qword_1006C8870);
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    goto LABEL_10;
  }
}

uint64_t sub_10043B644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_10015DA04(&qword_1006C8A18);
  v4[4] = swift_task_alloc();
  v5 = sub_10015DA04(&unk_1006C88C0);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_10015DA04(&qword_1006C8A20);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  sub_10015DA04(&qword_1006C8A28);
  v4[14] = swift_task_alloc();
  v8 = sub_10015DA04(&qword_1006C8A30);
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v9 = sub_10015DA04(&qword_1006C8A38);
  v4[18] = v9;
  v4[19] = *(v9 - 8);
  v4[20] = swift_task_alloc();
  v10 = type metadata accessor for MessageChunking.UnsafeAppendingAccumulator();
  v4[21] = v10;
  v4[22] = *(v10 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_10043B970, 0, 0);
}

uint64_t sub_10043B970()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  MessageChunking.UnsafeAppendingAccumulator.init()();
  sub_1000060B4(&qword_1006C8A40, &qword_1006C8A20);
  sub_1000060B4(&qword_1006C8A48, &qword_1006C8A20);
  GroupSessionMessenger.messages<A>(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[24] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount;
  v4 = sub_1000060B4(&qword_1006C8A50, &qword_1006C8A38);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_10043BB40;
  v6 = v0[18];
  v7 = v0[14];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_10043BB40()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100455F24;
  }

  else
  {
    v2 = sub_10043BC54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043BC70()
{
  v1 = v0[14];
  v2 = sub_10015DA04(&qword_1006C8A58);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10002597C(v3, qword_1006C8680);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Note subscriber task finished", v6, 2u);
    }

    goto LABEL_9;
  }

  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[9];
  v10 = *(v2 + 48);
  (*(v0[12] + 32))(v0[13], v1, v0[11]);
  (*(v9 + 32))(v7, v1 + v10, v8);
  if (static Task<>.isCancelled.getter())
  {
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
LABEL_9:
    (*(v0[22] + 8))(v0[23], v0[21]);

    v17 = v0[1];

    return v17();
  }

  v19 = v0[26];
  sub_1000060B4(&qword_1006C88F0, &unk_1006C88C0);
  sub_1000060B4(&qword_1006C88F8, &unk_1006C88C0);
  MessageChunking.UnsafeAppendingAccumulator.process<A>(incoming:)();
  if (v19)
  {
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10002597C(v20, qword_1006C8680);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error processing incoming CloudKit message: %@", v23, 0xCu);
      sub_1000073B4(v24, &qword_1006C1440);
    }

    v26 = v0[24];
    v27 = v0[3];

    v28 = *(v27 + v26);
    os_unfair_lock_lock((v28 + 24));
    v32 = *(v28 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v29, v30, v31);
    }

    v36 = v0[12];
    v35 = v0[13];
    v38 = v0[10];
    v37 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    *(v28 + 16) = v34;
    os_unfair_lock_unlock((v28 + 24));

    (*(v40 + 8))(v38, v39);
    (*(v36 + 8))(v35, v37);
LABEL_21:
    v47 = sub_1000060B4(&qword_1006C8A50, &qword_1006C8A38);
    v48 = swift_task_alloc();
    v0[25] = v48;
    *v48 = v0;
    v48[1] = sub_10043BB40;
    v30 = v0[18];
    v29 = v0[14];
    v31 = v47;

    return dispatch thunk of AsyncIteratorProtocol.next()(v29, v30, v31);
  }

  v41 = v0[5];
  v42 = v0[6];
  v43 = v0[4];
  if ((*(v42 + 48))(v43, 1, v41) == 1)
  {
    v45 = v0[12];
    v44 = v0[13];
    v46 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v45 + 8))(v44, v46);
    sub_1000073B4(v43, &qword_1006C8A18);
    goto LABEL_21;
  }

  (*(v42 + 32))(v0[7], v43, v41);
  v49 = swift_task_alloc();
  v0[27] = v49;
  *v49 = v0;
  v49[1] = sub_10043C31C;
  v50 = v0[10];
  v51 = v0[7];

  return sub_10043C808(v51, v50);
}

uint64_t sub_10043C31C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_10043C56C;
  }

  else
  {
    v2 = sub_10043C430;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043C430()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = sub_1000060B4(&qword_1006C8A50, &qword_1006C8A38);
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_10043BB40;
  v9 = v0[18];
  v10 = v0[14];

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v9, v7);
}

uint64_t sub_10043C56C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  if (qword_1006BC950 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002597C(v1, qword_1006C8680);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error processing incoming CloudKit message: %@", v4, 0xCu);
    sub_1000073B4(v5, &qword_1006C1440);
  }

  v7 = v0[24];
  v8 = v0[3];

  v9 = *(v8 + v7);
  os_unfair_lock_lock((v9 + 24));
  v13 = *(v9 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v17 = v0[12];
    v16 = v0[13];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[8];
    v21 = v0[9];
    *(v9 + 16) = v15;
    os_unfair_lock_unlock((v9 + 24));

    (*(v21 + 8))(v19, v20);
    (*(v17 + 8))(v16, v18);
    v22 = sub_1000060B4(&qword_1006C8A50, &qword_1006C8A38);
    v23 = swift_task_alloc();
    v0[25] = v23;
    *v23 = v0;
    v23[1] = sub_10043BB40;
    v11 = v0[18];
    v10 = v0[14];
    v12 = v22;
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v11, v12);
}

uint64_t sub_10043C808(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  v4 = type metadata accessor for Logger();
  v3[48] = v4;
  v3[49] = *(v4 - 8);
  v3[50] = swift_task_alloc();
  v5 = sub_10015DA04(&qword_1006C4720);
  v3[51] = v5;
  v3[52] = *(v5 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = sub_10015DA04(&qword_1006C8880);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v6 = type metadata accessor for FastSync.PaperKitMessage();
  v3[58] = v6;
  v3[59] = *(v6 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v7 = sub_10015DA04(&qword_1006C8970);
  v3[64] = v7;
  v3[65] = *(v7 - 8);
  v3[66] = swift_task_alloc();
  v8 = type metadata accessor for FastSync.SelectionMessage();
  v3[67] = v8;
  v3[68] = *(v8 - 8);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v9 = type metadata accessor for Participant();
  v3[73] = v9;
  v3[74] = *(v9 - 8);
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v10 = type metadata accessor for FastSync.NoteContentMessage();
  v3[79] = v10;
  v3[80] = *(v10 - 8);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = sub_10015DA04(&qword_1006C8A60);
  v3[84] = swift_task_alloc();
  v11 = sub_10015DA04(&unk_1006C88C0);
  v3[85] = v11;
  v3[86] = *(v11 - 8);
  v3[87] = swift_task_alloc();
  v12 = type metadata accessor for FastSync.MessageVersion();
  v3[88] = v12;
  v3[89] = *(v12 - 8);
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();

  return _swift_task_switch(sub_10043CCE4, 0, 0);
}

uint64_t sub_10043CCE4()
{
  v81 = v0;
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  FastSync.MessageContainer.version.getter();
  static FastSync.MessageVersion.current.getter();
  sub_100455E2C(&qword_1006C8980, &type metadata accessor for FastSync.MessageVersion);
  v5 = dispatch thunk of static Comparable.< infix(_:_:)();
  v6 = *(v3 + 8);
  (v6)(v2, v4);
  (v6)(v1, v4);
  if (v5)
  {
    if (qword_1006BC950 != -1)
    {
LABEL_38:
      swift_once();
    }

    v7 = *(v0 + 696);
    v8 = *(v0 + 688);
    v9 = *(v0 + 680);
    v10 = *(v0 + 360);
    sub_10002597C(*(v0 + 384), qword_1006C8680);
    (*(v8 + 16))(v7, v10, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 728);
      v78 = *(v0 + 704);
      v14 = *(v0 + 696);
      v15 = *(v0 + 688);
      v16 = *(v0 + 680);
      v17 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = v79;
      *v17 = 136315138;
      FastSync.MessageContainer.version.getter();
      (*(v15 + 8))(v14, v16);
      sub_100455E2C(&qword_1006C8A08, &type metadata accessor for FastSync.MessageVersion);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (v6)(v13, v78);
      v21 = sub_100009D88(v18, v20, &v80);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "Skipping unsupported message container with version: %s", v17, 0xCu);
      sub_100009F60(v79);
    }

    else
    {
      (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));
    }

    goto LABEL_9;
  }

  v22 = *(v0 + 672);
  v23 = *(v0 + 664);
  (*(*(v0 + 688) + 16))(v22, *(v0 + 360), *(v0 + 680));
  v24 = *(v23 + 36);
  *(v0 + 60) = v24;
  *(v0 + 736) = sub_1000060B4(&qword_1006C8A68, &unk_1006C88C0);
  dispatch thunk of Collection.startIndex.getter();
  *(v0 + 744) = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudConfiguration;
  *(v0 + 752) = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_paperKitInbox;
  *(v0 + 760) = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount;
  *(v0 + 768) = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_selectionMessages;
  *(v0 + 776) = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudKitRecords;
  dispatch thunk of Collection.endIndex.getter();
  if (*(v22 + v24) == *(v0 + 328))
  {
LABEL_6:
    sub_1000073B4(*(v0 + 672), &qword_1006C8A60);
LABEL_9:

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = v0 + 248;
  while (1)
  {
    v30 = dispatch thunk of Collection.subscript.read();
    sub_100006038(v31, v0 + 16, &qword_1006C8990);
    v30(v27, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v32 = *(v0 + 32);
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 80) = v32;
    *(v0 + 89) = *(v0 + 41);
    sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
    if ((*(v0 + 152) & 1) == 0)
    {
      break;
    }

    *(v0 + 336) = *(v0 + 112);
    sub_10015DA04(&unk_1006C9B40);
    swift_willThrowTypedImpl();
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    sub_10002597C(*(v0 + 384), qword_1006C8680);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v35 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v36;
      v6->isa = v36;
      _os_log_impl(&_mh_execute_header, v33, v34, "Error processing incoming fast sync message: %@", v35, 0xCu);
      sub_1000073B4(v6, &qword_1006C1440);
    }

    v37 = *(v0 + 760);
    v38 = *(v0 + 376);

    v39 = *(v38 + v37);
    os_unfair_lock_lock((v39 + 24));
    v40 = *(v39 + 16);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      __break(1u);
      goto LABEL_38;
    }

    *(v39 + 16) = v42;
    os_unfair_lock_unlock((v39 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
LABEL_15:
    v28 = *(v0 + 60);
    v29 = *(v0 + 672);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v29 + v28) == *(v0 + 328))
    {
      goto LABEL_6;
    }
  }

  sub_100192680((v0 + 112), v0 + 208);
  sub_10015DA04(&qword_1006C8998);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
    GroupSessionMessenger.MessageContext.source.getter();
    v57 = swift_task_alloc();
    *(v0 + 784) = v57;
    *v57 = v0;
    v57[1] = sub_10043D9C0;
    v58 = *(v0 + 624);
    goto LABEL_33;
  }

  if (swift_dynamicCast())
  {
    (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
    GroupSessionMessenger.MessageContext.source.getter();
    v59 = swift_task_alloc();
    *(v0 + 840) = v59;
    *v59 = v0;
    v59[1] = sub_10043FD80;
    v60 = *(v0 + 616);
    v61 = 2;
    goto LABEL_34;
  }

  if (!swift_dynamicCast())
  {
    sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
    static Logger.realtimeCollaboration.getter();
    v43 = static os_log_type_t.fault.getter();
    v6 = Logger.logObject.getter();
    v44 = os_log_type_enabled(v6, v43);
    v46 = *(v0 + 392);
    v45 = *(v0 + 400);
    v47 = *(v0 + 384);
    if (v44)
    {
      v48 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v48 = 136315650;
      v49 = StaticString.description.getter();
      v77 = v45;
      v51 = sub_100009D88(v49, v50, &v80);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2048;
      *(v48 + 14) = 229;
      *(v48 + 22) = 2080;
      *(v0 + 296) = 0;
      *(v0 + 304) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v52 = *(v0 + 304);
      *(v0 + 280) = *(v0 + 296);
      *(v0 + 288) = v52;
      v53._object = 0x8000000100573C60;
      v53._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v53);
      sub_10015DA04(&qword_1006C8990);
      _print_unlocked<A, B>(_:_:)();
      v54 = *(v0 + 280);
      v55 = *(v0 + 288);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
      v56 = sub_100009D88(v54, v55, &v80);

      *(v48 + 24) = v56;
      _os_log_impl(&_mh_execute_header, v6, v43, "Failed assertion at %s:%lu: %s", v48, 0x20u);
      swift_arrayDestroy();

      (*(v46 + 8))(v77, v47);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
    }

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    v27 = v0 + 248;
    sub_100009F60(v0 + 208);
    goto LABEL_15;
  }

  v62 = *(v0 + 744);
  v63 = *(v0 + 496);
  v64 = *(v0 + 504);
  v65 = *(v0 + 464);
  v66 = *(v0 + 472);
  v67 = *(v0 + 376);
  v68 = *(v66 + 16);
  *(v0 + 856) = v68;
  *(v0 + 864) = (v66 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v68(v63, v64, v65);
  if ([*(v67 + v62) fastSyncPaperKitEnablePCSEncryption])
  {
    GroupSessionMessenger.MessageContext.source.getter();
    v69 = swift_task_alloc();
    *(v0 + 872) = v69;
    *v69 = v0;
    v69[1] = sub_10044152C;
    v58 = *(v0 + 608);
  }

  else
  {
    v70 = *(v0 + 496);
    v71 = *(v0 + 504);
    v72 = *(v0 + 488);
    v73 = *(v0 + 464);
    v74 = *(v0 + 472);
    v75 = *(v74 + 8);
    *(v0 + 888) = v75;
    *(v0 + 896) = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v75(v70, v73);
    (*(v74 + 32))(v72, v71, v73);
    GroupSessionMessenger.MessageContext.source.getter();
    v76 = swift_task_alloc();
    *(v0 + 904) = v76;
    *v76 = v0;
    v76[1] = sub_10044169C;
    v58 = *(v0 + 600);
  }

LABEL_33:
  v60 = v58;
  v61 = 3;
LABEL_34:

  return sub_10044EE08(v60, v61);
}

uint64_t sub_10043D9C0()
{
  v2 = *(*v1 + 624);
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 584);
  *(*v1 + 792) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10043DD40;
  }

  else
  {
    v5 = sub_10043DB30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10043DB30()
{
  v1 = FastSync.NoteContentMessage.recordBatchData.getter();
  v3 = v2;
  v0[100] = v1;
  v0[101] = v2;
  v4 = swift_task_alloc();
  v0[102] = v4;
  *v4 = v0;
  v4[1] = sub_10043DBE8;

  return sub_10044F6C0(v1, v3);
}

uint64_t sub_10043DBE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 808);
  v5 = *(*v2 + 800);
  *(v3 + 824) = a1;
  *(v3 + 832) = v1;

  sub_10019671C(v5, v4);
  if (v1)
  {
    v6 = sub_10043F3C0;
  }

  else
  {
    v6 = sub_10043E700;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_10043DD40()
{
  v60 = v0;
  v1 = v0 + 248;
  (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v3 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error processing incoming fast sync message: %@", v6, 0xCu);
    sub_1000073B4(v7, &qword_1006C1440);
  }

  v9 = *(v0 + 760);
  v10 = *(v0 + 376);

  v11 = *(v10 + v9);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
    os_unfair_lock_unlock((v11 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v15 = *(v0 + 60);
      v16 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v16 + v15) == *(v0 + 328))
      {
        break;
      }

      v17 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v18, v0 + 16, &qword_1006C8990);
      v17(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v19 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v19;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v37 = swift_task_alloc();
        *(v0 + 784) = v37;
        *v37 = v0;
        v37[1] = sub_10043D9C0;
        v38 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v39 = swift_task_alloc();
        *(v0 + 840) = v39;
        *v39 = v0;
        v39[1] = sub_10043FD80;
        v40 = *(v0 + 616);
        v41 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v42 = *(v0 + 744);
        v43 = *(v0 + 496);
        v44 = *(v0 + 504);
        v45 = *(v0 + 464);
        v46 = *(v0 + 472);
        v47 = *(v0 + 376);
        v48 = *(v46 + 16);
        *(v0 + 856) = v48;
        *(v0 + 864) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v48(v43, v44, v45);
        if ([*(v47 + v42) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v49 = swift_task_alloc();
          *(v0 + 872) = v49;
          *v49 = v0;
          v49[1] = sub_10044152C;
          v38 = *(v0 + 608);
        }

        else
        {
          v50 = *(v0 + 496);
          v51 = *(v0 + 504);
          v52 = *(v0 + 488);
          v53 = *(v0 + 464);
          v54 = *(v0 + 472);
          v55 = *(v54 + 8);
          *(v0 + 888) = v55;
          *(v0 + 896) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v55(v50, v53);
          (*(v54 + 32))(v52, v51, v53);
          GroupSessionMessenger.MessageContext.source.getter();
          v56 = swift_task_alloc();
          *(v0 + 904) = v56;
          *v56 = v0;
          v56[1] = sub_10044169C;
          v38 = *(v0 + 600);
        }

LABEL_26:
        v40 = v38;
        v41 = 3;
LABEL_27:

        sub_10044EE08(v40, v41);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v20 = static os_log_type_t.fault.getter();
      v21 = Logger.logObject.getter();
      v22 = os_log_type_enabled(v21, v20);
      v23 = *(v0 + 392);
      v24 = *(v0 + 400);
      v25 = *(v0 + 384);
      if (v22)
      {
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v26 = 136315650;
        v27 = StaticString.description.getter();
        v58 = v24;
        v57 = v25;
        v29 = v3;
        v30 = sub_100009D88(v27, v28, &v59);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 229;
        *(v26 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v31 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v31;
        v32._object = 0x8000000100573C60;
        v32._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v32);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v33 = *(v0 + 280);
        v34 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v35 = sub_100009D88(v33, v34, &v59);
        v3 = v29;

        *(v26 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v21, v20, "Failed assertion at %s:%lu: %s", v26, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v23 + 8))(v58, v57);
      }

      else
      {

        (*(v23 + 8))(v24, v25);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8A60);

    v36 = *(v0 + 8);

    v36();
  }
}

uint64_t sub_10043E700()
{
  v89 = v0;
  v1 = v0[103];
  if (v1 >> 62)
  {
    goto LABEL_48;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[103]; v2; v86 = v0)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = i + 32;
    v84 = v1 & 0xC000000000000001;
    v82 = v2;
    v83 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_46;
        }

        v8 = *(v7 + 8 * v4);
      }

      v1 = v8;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v87 = v4 + 1;
      if (qword_1006BC950 != -1)
      {
        swift_once();
      }

      sub_10002597C(v0[48], qword_1006C8680);
      v9 = v1;
      v1 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v1, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v88 = v12;
        *v11 = 136315138;
        v13 = v7;
        v14 = [v9 ic_loggingDescription];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v7 = v13;
        v18 = sub_100009D88(v15, v17, &v88);
        v2 = v82;

        *(v11 + 4) = v18;
        v5 = v84;
        v0 = v86;
        _os_log_impl(&_mh_execute_header, v1, v10, "Received CloudKit record: %s", v11, 0xCu);
        sub_100009F60(v12);
        v6 = v83;
      }

      else
      {
      }

      ++v4;
      if (v87 == v2)
      {
        i = v0[103];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    i = v0[103];
  }

LABEL_16:
  v19 = v0[81];
  v20 = v0[80];
  v21 = v0[79];
  v22 = v86[66];
  v23 = v86[65];
  v24 = v86[64];
  v86[44] = i;
  sub_10015DA04(&qword_1006BD3D8);
  AsyncStream.Continuation.yield(_:)();
  v25 = v22;
  v26 = v86;
  (*(v23 + 8))(v25, v24);
  (*(v20 + 8))(v19, v21);
  sub_1000073B4((v86 + 8), &qword_1006C8990);
  sub_100009F60((v86 + 26));
  v27 = *(v86 + 15);
  v28 = v86[84];
  dispatch thunk of Collection.endIndex.getter();
  if (*(v28 + v27) == v86[41])
  {
LABEL_17:
    sub_1000073B4(v26[84], &qword_1006C8A60);

    v29 = v26[1];

    return v29();
  }

  while (1)
  {
    v33 = dispatch thunk of Collection.subscript.read();
    sub_100006038(v34, (v26 + 2), &qword_1006C8990);
    v33(v86 + 31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v35 = *(v26 + 2);
    *(v26 + 4) = *(v26 + 1);
    *(v26 + 5) = v35;
    *(v26 + 89) = *(v26 + 41);
    sub_100006038((v26 + 8), (v26 + 14), &qword_1006C8990);
    if ((v26[19] & 1) == 0)
    {
      break;
    }

    v26[42] = v26[14];
    sub_10015DA04(&unk_1006C9B40);
    swift_willThrowTypedImpl();
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    sub_10002597C(v26[48], qword_1006C8680);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "Error processing incoming fast sync message: %@", v38, 0xCu);
      sub_1000073B4(v39, &qword_1006C1440);
    }

    v0 = v26[95];
    v41 = v26[47];

    v1 = *(v0 + v41);
    os_unfair_lock_lock((v1 + 24));
    v42 = *(v1 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_47;
    }

    *(v1 + 16) = v44;
    os_unfair_lock_unlock((v1 + 24));

    sub_1000073B4((v26 + 8), &qword_1006C8990);
LABEL_23:
    v31 = *(v26 + 15);
    v32 = v26[84];
    dispatch thunk of Collection.endIndex.getter();
    if (*(v32 + v31) == v26[41])
    {
      goto LABEL_17;
    }
  }

  sub_100192680(v26 + 7, (v26 + 26));
  sub_10015DA04(&qword_1006C8998);
  if (swift_dynamicCast())
  {
    (*(v26[80] + 32))(v26[81], v26[82], v26[79]);
    GroupSessionMessenger.MessageContext.source.getter();
    v60 = swift_task_alloc();
    v26[98] = v60;
    *v60 = v26;
    v60[1] = sub_10043D9C0;
    v61 = v26[78];
    goto LABEL_41;
  }

  if (swift_dynamicCast())
  {
    (*(v26[68] + 32))(v26[71], v26[72], v26[67]);
    GroupSessionMessenger.MessageContext.source.getter();
    v62 = swift_task_alloc();
    v26[105] = v62;
    *v62 = v26;
    v62[1] = sub_10043FD80;
    v63 = v26[77];
    v64 = 2;
    goto LABEL_42;
  }

  if (!swift_dynamicCast())
  {
    sub_100006038((v26 + 8), (v26 + 20), &qword_1006C8990);
    static Logger.realtimeCollaboration.getter();
    v45 = static os_log_type_t.fault.getter();
    v46 = Logger.logObject.getter();
    v47 = os_log_type_enabled(v46, v45);
    v49 = v26[49];
    v48 = v26[50];
    v50 = v26[48];
    if (v47)
    {
      v51 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v51 = 136315650;
      v52 = StaticString.description.getter();
      v85 = v48;
      v54 = sub_100009D88(v52, v53, &v88);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2048;
      *(v51 + 14) = 229;
      *(v51 + 22) = 2080;
      v86[37] = 0;
      v86[38] = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v55 = v86[38];
      v86[35] = v86[37];
      v86[36] = v55;
      v56._object = 0x8000000100573C60;
      v56._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v56);
      sub_10015DA04(&qword_1006C8990);
      _print_unlocked<A, B>(_:_:)();
      v57 = v86[35];
      v58 = v86[36];
      sub_1000073B4((v86 + 20), &qword_1006C8990);
      v59 = sub_100009D88(v57, v58, &v88);
      v26 = v86;

      *(v51 + 24) = v59;
      _os_log_impl(&_mh_execute_header, v46, v45, "Failed assertion at %s:%lu: %s", v51, 0x20u);
      swift_arrayDestroy();

      (*(v49 + 8))(v85, v50);
    }

    else
    {

      (*(v49 + 8))(v48, v50);
      sub_1000073B4((v26 + 20), &qword_1006C8990);
    }

    sub_1000073B4((v26 + 8), &qword_1006C8990);
    sub_100009F60((v26 + 26));
    goto LABEL_23;
  }

  v65 = v26[93];
  v66 = v26[62];
  v67 = v26[63];
  v68 = v26[58];
  v69 = v26[59];
  v70 = v26[47];
  v71 = *(v69 + 16);
  v26[107] = v71;
  v26[108] = (v69 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v71(v66, v67, v68);
  if ([*(v70 + v65) fastSyncPaperKitEnablePCSEncryption])
  {
    GroupSessionMessenger.MessageContext.source.getter();
    v72 = swift_task_alloc();
    v26[109] = v72;
    *v72 = v26;
    v72[1] = sub_10044152C;
    v61 = v26[76];
  }

  else
  {
    v73 = v26[62];
    v74 = v26[63];
    v75 = v26[61];
    v76 = v26;
    v79 = v26 + 58;
    v78 = v26[58];
    v77 = v79[1];
    v80 = *(v77 + 8);
    v76[111] = v80;
    v76[112] = (v77 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v80(v73, v78);
    (*(v77 + 32))(v75, v74, v78);
    GroupSessionMessenger.MessageContext.source.getter();
    v81 = swift_task_alloc();
    v76[113] = v81;
    *v81 = v76;
    v81[1] = sub_10044169C;
    v61 = v76[75];
  }

LABEL_41:
  v63 = v61;
  v64 = 3;
LABEL_42:

  return sub_10044EE08(v63, v64);
}

void sub_10043F3C0()
{
  v60 = v0;
  v1 = v0 + 248;
  (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v3 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error processing incoming fast sync message: %@", v6, 0xCu);
    sub_1000073B4(v7, &qword_1006C1440);
  }

  v9 = *(v0 + 760);
  v10 = *(v0 + 376);

  v11 = *(v10 + v9);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
    os_unfair_lock_unlock((v11 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v15 = *(v0 + 60);
      v16 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v16 + v15) == *(v0 + 328))
      {
        break;
      }

      v17 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v18, v0 + 16, &qword_1006C8990);
      v17(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v19 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v19;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v37 = swift_task_alloc();
        *(v0 + 784) = v37;
        *v37 = v0;
        v37[1] = sub_10043D9C0;
        v38 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v39 = swift_task_alloc();
        *(v0 + 840) = v39;
        *v39 = v0;
        v39[1] = sub_10043FD80;
        v40 = *(v0 + 616);
        v41 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v42 = *(v0 + 744);
        v43 = *(v0 + 496);
        v44 = *(v0 + 504);
        v45 = *(v0 + 464);
        v46 = *(v0 + 472);
        v47 = *(v0 + 376);
        v48 = *(v46 + 16);
        *(v0 + 856) = v48;
        *(v0 + 864) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v48(v43, v44, v45);
        if ([*(v47 + v42) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v49 = swift_task_alloc();
          *(v0 + 872) = v49;
          *v49 = v0;
          v49[1] = sub_10044152C;
          v38 = *(v0 + 608);
        }

        else
        {
          v50 = *(v0 + 496);
          v51 = *(v0 + 504);
          v52 = *(v0 + 488);
          v53 = *(v0 + 464);
          v54 = *(v0 + 472);
          v55 = *(v54 + 8);
          *(v0 + 888) = v55;
          *(v0 + 896) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v55(v50, v53);
          (*(v54 + 32))(v52, v51, v53);
          GroupSessionMessenger.MessageContext.source.getter();
          v56 = swift_task_alloc();
          *(v0 + 904) = v56;
          *v56 = v0;
          v56[1] = sub_10044169C;
          v38 = *(v0 + 600);
        }

LABEL_26:
        v40 = v38;
        v41 = 3;
LABEL_27:

        sub_10044EE08(v40, v41);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v20 = static os_log_type_t.fault.getter();
      v21 = Logger.logObject.getter();
      v22 = os_log_type_enabled(v21, v20);
      v23 = *(v0 + 392);
      v24 = *(v0 + 400);
      v25 = *(v0 + 384);
      if (v22)
      {
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v26 = 136315650;
        v27 = StaticString.description.getter();
        v58 = v24;
        v57 = v25;
        v29 = v3;
        v30 = sub_100009D88(v27, v28, &v59);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 229;
        *(v26 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v31 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v31;
        v32._object = 0x8000000100573C60;
        v32._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v32);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v33 = *(v0 + 280);
        v34 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v35 = sub_100009D88(v33, v34, &v59);
        v3 = v29;

        *(v26 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v21, v20, "Failed assertion at %s:%lu: %s", v26, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v23 + 8))(v58, v57);
      }

      else
      {

        (*(v23 + 8))(v24, v25);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8A60);

    v36 = *(v0 + 8);

    v36();
  }
}

uint64_t sub_10043FD80()
{
  v2 = *(*v1 + 616);
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 584);
  *(*v1 + 848) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100440B6C;
  }

  else
  {
    v5 = sub_10043FEF0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10043FEF0()
{
  v81 = v0;
  if (qword_1006BC958 != -1)
  {
LABEL_38:
    swift_once();
  }

  v1 = *(v0 + 456);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v4 = sub_10002597C(*(v0 + 432), qword_1006C8698);
  sub_100006038(v4, v1, &qword_1006C8880);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000073B4(*(v0 + 456), &qword_1006C8880);
  }

  else
  {
    (*(*(v0 + 544) + 16))(*(v0 + 560), *(v0 + 568), *(v0 + 536));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 560);
    v9 = *(v0 + 544);
    v10 = *(v0 + 536);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v80 = v12;
      *v11 = 136315138;
      sub_100455E2C(&qword_1006C4940, &type metadata accessor for FastSync.SelectionMessage);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v9 + 8))(v8, v10);
      v16 = sub_100009D88(v13, v15, &v80);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received selection message: %s", v11, 0xCu);
      sub_100009F60(v12);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    (*(*(v0 + 392) + 8))(*(v0 + 456), *(v0 + 384));
  }

  v17 = *(v0 + 568);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v21 = *(v0 + 416);
  v20 = *(v0 + 424);
  v22 = *(v0 + 408);
  (*(v18 + 16))(*(v0 + 552), v17, v19);
  sub_10015DA04(&qword_1006BD3C0);
  AsyncStream.Continuation.yield(_:)();
  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v17, v19);
  sub_1000073B4(v0 + 64, &qword_1006C8990);
  sub_100009F60(v0 + 208);
  v23 = *(v0 + 60);
  v24 = *(v0 + 672);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v24 + v23) == *(v0 + 328))
  {
LABEL_9:
    sub_1000073B4(*(v0 + 672), &qword_1006C8A60);

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = v0 + 248;
  while (1)
  {
    v30 = dispatch thunk of Collection.subscript.read();
    sub_100006038(v31, v0 + 16, &qword_1006C8990);
    v30(v27, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v32 = *(v0 + 32);
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 80) = v32;
    *(v0 + 89) = *(v0 + 41);
    sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
    if ((*(v0 + 152) & 1) == 0)
    {
      break;
    }

    *(v0 + 336) = *(v0 + 112);
    sub_10015DA04(&unk_1006C9B40);
    swift_willThrowTypedImpl();
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    sub_10002597C(*(v0 + 384), qword_1006C8680);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Error processing incoming fast sync message: %@", v35, 0xCu);
      sub_1000073B4(v36, &qword_1006C1440);
    }

    v38 = *(v0 + 760);
    v39 = *(v0 + 376);

    v40 = *(v39 + v38);
    os_unfair_lock_lock((v40 + 24));
    v41 = *(v40 + 16);
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      __break(1u);
      goto LABEL_38;
    }

    *(v40 + 16) = v43;
    os_unfair_lock_unlock((v40 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
LABEL_15:
    v28 = *(v0 + 60);
    v29 = *(v0 + 672);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v29 + v28) == *(v0 + 328))
    {
      goto LABEL_9;
    }
  }

  sub_100192680((v0 + 112), v0 + 208);
  sub_10015DA04(&qword_1006C8998);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
    GroupSessionMessenger.MessageContext.source.getter();
    v59 = swift_task_alloc();
    *(v0 + 784) = v59;
    *v59 = v0;
    v59[1] = sub_10043D9C0;
    v60 = *(v0 + 624);
    goto LABEL_33;
  }

  if (swift_dynamicCast())
  {
    (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
    GroupSessionMessenger.MessageContext.source.getter();
    v61 = swift_task_alloc();
    *(v0 + 840) = v61;
    *v61 = v0;
    v61[1] = sub_10043FD80;
    v62 = *(v0 + 616);
    v63 = 2;
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
    static Logger.realtimeCollaboration.getter();
    v44 = static os_log_type_t.fault.getter();
    v45 = Logger.logObject.getter();
    v46 = os_log_type_enabled(v45, v44);
    v48 = *(v0 + 392);
    v47 = *(v0 + 400);
    v49 = *(v0 + 384);
    if (v46)
    {
      v50 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v50 = 136315650;
      v51 = StaticString.description.getter();
      v79 = v47;
      v53 = sub_100009D88(v51, v52, &v80);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2048;
      *(v50 + 14) = 229;
      *(v50 + 22) = 2080;
      *(v0 + 296) = 0;
      *(v0 + 304) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v54 = *(v0 + 304);
      *(v0 + 280) = *(v0 + 296);
      *(v0 + 288) = v54;
      v55._object = 0x8000000100573C60;
      v55._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v55);
      sub_10015DA04(&qword_1006C8990);
      _print_unlocked<A, B>(_:_:)();
      v56 = *(v0 + 280);
      v57 = *(v0 + 288);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
      v58 = sub_100009D88(v56, v57, &v80);

      *(v50 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v45, v44, "Failed assertion at %s:%lu: %s", v50, 0x20u);
      swift_arrayDestroy();

      (*(v48 + 8))(v79, v49);
    }

    else
    {

      (*(v48 + 8))(v47, v49);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
    }

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    v27 = v0 + 248;
    sub_100009F60(v0 + 208);
    goto LABEL_15;
  }

  v64 = *(v0 + 744);
  v65 = *(v0 + 496);
  v66 = *(v0 + 504);
  v67 = *(v0 + 464);
  v68 = *(v0 + 472);
  v69 = *(v0 + 376);
  v70 = *(v68 + 16);
  *(v0 + 856) = v70;
  *(v0 + 864) = (v68 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v70(v65, v66, v67);
  if ([*(v69 + v64) fastSyncPaperKitEnablePCSEncryption])
  {
    GroupSessionMessenger.MessageContext.source.getter();
    v71 = swift_task_alloc();
    *(v0 + 872) = v71;
    *v71 = v0;
    v71[1] = sub_10044152C;
    v60 = *(v0 + 608);
  }

  else
  {
    v72 = *(v0 + 496);
    v73 = *(v0 + 504);
    v74 = *(v0 + 488);
    v75 = *(v0 + 464);
    v76 = *(v0 + 472);
    v77 = *(v76 + 8);
    *(v0 + 888) = v77;
    *(v0 + 896) = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v77(v72, v75);
    (*(v76 + 32))(v74, v73, v75);
    GroupSessionMessenger.MessageContext.source.getter();
    v78 = swift_task_alloc();
    *(v0 + 904) = v78;
    *v78 = v0;
    v78[1] = sub_10044169C;
    v60 = *(v0 + 600);
  }

LABEL_33:
  v62 = v60;
  v63 = 3;
LABEL_34:

  return sub_10044EE08(v62, v63);
}

void sub_100440B6C()
{
  v60 = v0;
  v1 = v0 + 248;
  (*(*(v0 + 544) + 8))(*(v0 + 568), *(v0 + 536));
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v3 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error processing incoming fast sync message: %@", v6, 0xCu);
    sub_1000073B4(v7, &qword_1006C1440);
  }

  v9 = *(v0 + 760);
  v10 = *(v0 + 376);

  v11 = *(v10 + v9);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
    os_unfair_lock_unlock((v11 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v15 = *(v0 + 60);
      v16 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v16 + v15) == *(v0 + 328))
      {
        break;
      }

      v17 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v18, v0 + 16, &qword_1006C8990);
      v17(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v19 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v19;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v37 = swift_task_alloc();
        *(v0 + 784) = v37;
        *v37 = v0;
        v37[1] = sub_10043D9C0;
        v38 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v39 = swift_task_alloc();
        *(v0 + 840) = v39;
        *v39 = v0;
        v39[1] = sub_10043FD80;
        v40 = *(v0 + 616);
        v41 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v42 = *(v0 + 744);
        v43 = *(v0 + 496);
        v44 = *(v0 + 504);
        v45 = *(v0 + 464);
        v46 = *(v0 + 472);
        v47 = *(v0 + 376);
        v48 = *(v46 + 16);
        *(v0 + 856) = v48;
        *(v0 + 864) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v48(v43, v44, v45);
        if ([*(v47 + v42) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v49 = swift_task_alloc();
          *(v0 + 872) = v49;
          *v49 = v0;
          v49[1] = sub_10044152C;
          v38 = *(v0 + 608);
        }

        else
        {
          v50 = *(v0 + 496);
          v51 = *(v0 + 504);
          v52 = *(v0 + 488);
          v53 = *(v0 + 464);
          v54 = *(v0 + 472);
          v55 = *(v54 + 8);
          *(v0 + 888) = v55;
          *(v0 + 896) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v55(v50, v53);
          (*(v54 + 32))(v52, v51, v53);
          GroupSessionMessenger.MessageContext.source.getter();
          v56 = swift_task_alloc();
          *(v0 + 904) = v56;
          *v56 = v0;
          v56[1] = sub_10044169C;
          v38 = *(v0 + 600);
        }

LABEL_26:
        v40 = v38;
        v41 = 3;
LABEL_27:

        sub_10044EE08(v40, v41);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v20 = static os_log_type_t.fault.getter();
      v21 = Logger.logObject.getter();
      v22 = os_log_type_enabled(v21, v20);
      v23 = *(v0 + 392);
      v24 = *(v0 + 400);
      v25 = *(v0 + 384);
      if (v22)
      {
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v26 = 136315650;
        v27 = StaticString.description.getter();
        v58 = v24;
        v57 = v25;
        v29 = v3;
        v30 = sub_100009D88(v27, v28, &v59);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 229;
        *(v26 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v31 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v31;
        v32._object = 0x8000000100573C60;
        v32._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v32);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v33 = *(v0 + 280);
        v34 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v35 = sub_100009D88(v33, v34, &v59);
        v3 = v29;

        *(v26 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v21, v20, "Failed assertion at %s:%lu: %s", v26, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v23 + 8))(v58, v57);
      }

      else
      {

        (*(v23 + 8))(v24, v25);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8A60);

    v36 = *(v0 + 8);

    v36();
  }
}

uint64_t sub_10044152C()
{
  v2 = *(*v1 + 608);
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 584);
  *(*v1 + 880) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100441A1C;
  }

  else
  {
    v5 = sub_10044180C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10044169C()
{
  v2 = *(*v1 + 600);
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 584);
  *(*v1 + 912) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1004447FC;
  }

  else
  {
    v5 = sub_100443C2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10044180C()
{
  v1 = FastSync.PaperKitMessage.data.getter();
  v3 = v2;
  v0[115] = v1;
  v0[116] = v2;
  v4 = swift_task_alloc();
  v0[117] = v4;
  *v4 = v0;
  v4[1] = sub_1004418C4;

  return sub_10044F6C0(v1, v3);
}

uint64_t sub_1004418C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 928);
  v5 = *(*v2 + 920);
  *(v3 + 944) = a1;
  *(v3 + 952) = v1;

  sub_10019671C(v5, v4);
  if (v1)
  {
    v6 = sub_100443258;
  }

  else
  {
    v6 = sub_1004423F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_100441A1C()
{
  v63 = v0;
  v1 = v0 + 248;
  v2 = *(v0 + 504);
  v3 = *(v0 + 464);
  v4 = *(*(v0 + 472) + 8);
  v4(*(v0 + 496), v3);
  v4(v2, v3);
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v6 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error processing incoming fast sync message: %@", v9, 0xCu);
    sub_1000073B4(v10, &qword_1006C1440);
  }

  v12 = *(v0 + 760);
  v13 = *(v0 + 376);

  v14 = *(v13 + v12);
  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
    os_unfair_lock_unlock((v14 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v18 = *(v0 + 60);
      v19 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v19 + v18) == *(v0 + 328))
      {
        break;
      }

      v20 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v21, v0 + 16, &qword_1006C8990);
      v20(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v22 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v22;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v40 = swift_task_alloc();
        *(v0 + 784) = v40;
        *v40 = v0;
        v40[1] = sub_10043D9C0;
        v41 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v42 = swift_task_alloc();
        *(v0 + 840) = v42;
        *v42 = v0;
        v42[1] = sub_10043FD80;
        v43 = *(v0 + 616);
        v44 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v45 = *(v0 + 744);
        v46 = *(v0 + 496);
        v47 = *(v0 + 504);
        v48 = *(v0 + 464);
        v49 = *(v0 + 472);
        v50 = *(v0 + 376);
        v51 = *(v49 + 16);
        *(v0 + 856) = v51;
        *(v0 + 864) = (v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v51(v46, v47, v48);
        if ([*(v50 + v45) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v52 = swift_task_alloc();
          *(v0 + 872) = v52;
          *v52 = v0;
          v52[1] = sub_10044152C;
          v41 = *(v0 + 608);
        }

        else
        {
          v53 = *(v0 + 496);
          v54 = *(v0 + 504);
          v55 = *(v0 + 488);
          v56 = *(v0 + 464);
          v57 = *(v0 + 472);
          v58 = *(v57 + 8);
          *(v0 + 888) = v58;
          *(v0 + 896) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v58(v53, v56);
          (*(v57 + 32))(v55, v54, v56);
          GroupSessionMessenger.MessageContext.source.getter();
          v59 = swift_task_alloc();
          *(v0 + 904) = v59;
          *v59 = v0;
          v59[1] = sub_10044169C;
          v41 = *(v0 + 600);
        }

LABEL_26:
        v43 = v41;
        v44 = 3;
LABEL_27:

        sub_10044EE08(v43, v44);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v23 = static os_log_type_t.fault.getter();
      v24 = Logger.logObject.getter();
      v25 = os_log_type_enabled(v24, v23);
      v26 = *(v0 + 392);
      v27 = *(v0 + 400);
      v28 = *(v0 + 384);
      if (v25)
      {
        v29 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v29 = 136315650;
        v30 = StaticString.description.getter();
        v61 = v27;
        v60 = v28;
        v32 = v6;
        v33 = sub_100009D88(v30, v31, &v62);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2048;
        *(v29 + 14) = 229;
        *(v29 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v34 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v34;
        v35._object = 0x8000000100573C60;
        v35._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v35);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v36 = *(v0 + 280);
        v37 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v38 = sub_100009D88(v36, v37, &v62);
        v6 = v32;

        *(v29 + 24) = v38;
        _os_log_impl(&_mh_execute_header, v24, v23, "Failed assertion at %s:%lu: %s", v29, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v26 + 8))(v61, v60);
      }

      else
      {

        (*(v26 + 8))(v27, v28);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8A60);

    v39 = *(v0 + 8);

    v39();
  }
}

uint64_t sub_1004423F0()
{
  v100 = v2;
  v3 = *(v2 + 944);
  if (v3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_64;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(*(v2 + 944) + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v5 = i;
      v6 = [i encryptedValues];

      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 objectForKeyedSubscript:v7];

      swift_unknownObjectRelease();
      if (v8)
      {
        *(v2 + 344) = v8;
        sub_10015DA04(&qword_1006C8A00);
        if (swift_dynamicCast())
        {
          break;
        }
      }

LABEL_27:
      if (qword_1006BC950 != -1)
      {
LABEL_62:
        swift_once();
      }

      sub_10002597C(*(v2 + 384), qword_1006C8680);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v99 = v33;
        *v32 = 136315138;
        sub_1000054A4(0, &qword_1006C88A8);
        v34 = Array.description.getter();
        v36 = v35;

        v37 = sub_100009D88(v34, v36, &v99);

        *(v32 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "Incoming PaperKit message is not in a valid format: %s", v32, 0xCu);
        sub_100009F60(v33);
      }

      else
      {
      }

      v38 = *(*(v2 + 376) + *(v2 + 760));
      os_unfair_lock_lock((v38 + 24));
      v39 = *(v38 + 16);
      v20 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (!v20)
      {
        v41 = *(v2 + 496);
        v42 = *(v2 + 504);
        v43 = *(v2 + 464);
        v44 = *(v2 + 472);
        *(v38 + 16) = v40;
        os_unfair_lock_unlock((v38 + 24));
        v45 = *(v44 + 8);
        v45(v41, v43);
        sub_1000073B4(v2 + 64, &qword_1006C8990);
        v45(v42, v43);
        goto LABEL_33;
      }

      __break(1u);
LABEL_64:
      ;
    }

    v0 = *(v2 + 312);
    v1 = *(v2 + 320);
    if (qword_1006BC958 != -1)
    {
      goto LABEL_66;
    }
  }

  else
  {
    __break(1u);
LABEL_66:
    swift_once();
  }

  v9 = *(v2 + 448);
  v10 = *(v2 + 384);
  v11 = *(v2 + 392);
  v12 = sub_10002597C(*(v2 + 432), qword_1006C8698);
  sub_100006038(v12, v9, &qword_1006C8880);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000073B4(*(v2 + 448), &qword_1006C8880);
    goto LABEL_25;
  }

  sub_1001C4E38(v0, v1);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    result = swift_slowAlloc();
    *result = 134217984;
    v16 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v16 != 2)
      {
        v17 = 0;
        goto LABEL_23;
      }

      v19 = *(v0 + 16);
      v18 = *(v0 + 24);
      v20 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (!v20)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v17 = BYTE6(v1);
LABEL_23:
      *(result + 4) = v17;
      v21 = result;
      sub_10019671C(v0, v1);
      _os_log_impl(&_mh_execute_header, v13, v14, "Received PaperKit message (PCS=ON) with length: %ld", v21, 0xCu);

      goto LABEL_24;
    }

    LODWORD(v17) = HIDWORD(v0) - v0;
    if (__OFSUB__(HIDWORD(v0), v0))
    {
      __break(1u);
      return result;
    }

    v17 = v17;
    goto LABEL_23;
  }

  sub_10019671C(v0, v1);
LABEL_24:
  v22 = *(v2 + 448);
  v23 = *(v2 + 384);
  v24 = *(v2 + 392);

  (*(v24 + 8))(v22, v23);
LABEL_25:
  v26 = *(v2 + 496);
  v25 = *(v2 + 504);
  v27 = *(v2 + 464);
  v28 = *(v2 + 472);
  sub_10044FEA0(v0, v1, *(*(v2 + 376) + *(v2 + 752)));
  sub_10019671C(v0, v1);
  v29 = *(v28 + 8);
  v29(v26, v27);
  sub_1000073B4(v2 + 64, &qword_1006C8990);
  v29(v25, v27);
LABEL_33:
  v46 = v2 + 248;
  sub_100009F60(v2 + 208);
  while (1)
  {
    v47 = *(v2 + 60);
    v48 = *(v2 + 672);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v48 + v47) == *(v2 + 328))
    {
      break;
    }

    v49 = dispatch thunk of Collection.subscript.read();
    sub_100006038(v50, v2 + 16, &qword_1006C8990);
    v49(v46, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v51 = *(v2 + 32);
    *(v2 + 64) = *(v2 + 16);
    *(v2 + 80) = v51;
    *(v2 + 89) = *(v2 + 41);
    sub_100006038(v2 + 64, v2 + 112, &qword_1006C8990);
    if (*(v2 + 152))
    {
      *(v2 + 336) = *(v2 + 112);
      sub_10015DA04(&unk_1006C9B40);
      swift_willThrowTypedImpl();
      if (qword_1006BC950 != -1)
      {
        swift_once();
      }

      sub_10002597C(*(v2 + 384), qword_1006C8680);
      swift_errorRetain();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        swift_errorRetain();
        v56 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v56;
        *v55 = v56;
        _os_log_impl(&_mh_execute_header, v52, v53, "Error processing incoming fast sync message: %@", v54, 0xCu);
        sub_1000073B4(v55, &qword_1006C1440);
      }

      v57 = *(v2 + 760);
      v58 = *(v2 + 376);

      v59 = *(v58 + v57);
      os_unfair_lock_lock((v59 + 24));
      v60 = *(v59 + 16);
      v20 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v20)
      {
        __break(1u);
        goto LABEL_62;
      }

      *(v59 + 16) = v61;
      os_unfair_lock_unlock((v59 + 24));

      sub_1000073B4(v2 + 64, &qword_1006C8990);
    }

    else
    {
      sub_100192680((v2 + 112), v2 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v2 + 640) + 32))(*(v2 + 648), *(v2 + 656), *(v2 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v78 = swift_task_alloc();
        *(v2 + 784) = v78;
        *v78 = v2;
        v78[1] = sub_10043D9C0;
        v79 = *(v2 + 624);
        goto LABEL_57;
      }

      if (swift_dynamicCast())
      {
        (*(*(v2 + 544) + 32))(*(v2 + 568), *(v2 + 576), *(v2 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v80 = swift_task_alloc();
        *(v2 + 840) = v80;
        *v80 = v2;
        v80[1] = sub_10043FD80;
        v81 = *(v2 + 616);
        v82 = 2;
        goto LABEL_58;
      }

      if (swift_dynamicCast())
      {
        v83 = *(v2 + 744);
        v84 = *(v2 + 496);
        v85 = *(v2 + 504);
        v86 = *(v2 + 464);
        v87 = *(v2 + 472);
        v88 = *(v2 + 376);
        v89 = *(v87 + 16);
        *(v2 + 856) = v89;
        *(v2 + 864) = (v87 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v89(v84, v85, v86);
        if ([*(v88 + v83) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v90 = swift_task_alloc();
          *(v2 + 872) = v90;
          *v90 = v2;
          v90[1] = sub_10044152C;
          v79 = *(v2 + 608);
        }

        else
        {
          v91 = *(v2 + 496);
          v92 = *(v2 + 504);
          v93 = *(v2 + 488);
          v94 = *(v2 + 464);
          v95 = *(v2 + 472);
          v96 = *(v95 + 8);
          *(v2 + 888) = v96;
          *(v2 + 896) = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v96(v91, v94);
          (*(v95 + 32))(v93, v92, v94);
          GroupSessionMessenger.MessageContext.source.getter();
          v97 = swift_task_alloc();
          *(v2 + 904) = v97;
          *v97 = v2;
          v97[1] = sub_10044169C;
          v79 = *(v2 + 600);
        }

LABEL_57:
        v81 = v79;
        v82 = 3;
LABEL_58:

        return sub_10044EE08(v81, v82);
      }

      sub_100006038(v2 + 64, v2 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v62 = static os_log_type_t.fault.getter();
      v63 = Logger.logObject.getter();
      v64 = os_log_type_enabled(v63, v62);
      v66 = *(v2 + 392);
      v65 = *(v2 + 400);
      v67 = *(v2 + 384);
      if (v64)
      {
        v68 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v68 = 136315650;
        v69 = StaticString.description.getter();
        v98 = v65;
        v71 = sub_100009D88(v69, v70, &v99);

        *(v68 + 4) = v71;
        *(v68 + 12) = 2048;
        *(v68 + 14) = 229;
        *(v68 + 22) = 2080;
        *(v2 + 296) = 0;
        *(v2 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v72 = *(v2 + 304);
        *(v2 + 280) = *(v2 + 296);
        *(v2 + 288) = v72;
        v73._object = 0x8000000100573C60;
        v73._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v73);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v74 = *(v2 + 280);
        v75 = *(v2 + 288);
        sub_1000073B4(v2 + 160, &qword_1006C8990);
        v76 = sub_100009D88(v74, v75, &v99);

        *(v68 + 24) = v76;
        _os_log_impl(&_mh_execute_header, v63, v62, "Failed assertion at %s:%lu: %s", v68, 0x20u);
        swift_arrayDestroy();

        (*(v66 + 8))(v98, v67);
      }

      else
      {

        (*(v66 + 8))(v65, v67);
        sub_1000073B4(v2 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v2 + 64, &qword_1006C8990);
      v46 = v2 + 248;
      sub_100009F60(v2 + 208);
    }
  }

  sub_1000073B4(*(v2 + 672), &qword_1006C8A60);

  v77 = *(v2 + 8);

  return v77();
}

void sub_100443258()
{
  v63 = v0;
  v1 = v0 + 248;
  v2 = *(v0 + 504);
  v3 = *(v0 + 464);
  v4 = *(*(v0 + 472) + 8);
  v4(*(v0 + 496), v3);
  v4(v2, v3);
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v6 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error processing incoming fast sync message: %@", v9, 0xCu);
    sub_1000073B4(v10, &qword_1006C1440);
  }

  v12 = *(v0 + 760);
  v13 = *(v0 + 376);

  v14 = *(v13 + v12);
  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
    os_unfair_lock_unlock((v14 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v18 = *(v0 + 60);
      v19 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v19 + v18) == *(v0 + 328))
      {
        break;
      }

      v20 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v21, v0 + 16, &qword_1006C8990);
      v20(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v22 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v22;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v40 = swift_task_alloc();
        *(v0 + 784) = v40;
        *v40 = v0;
        v40[1] = sub_10043D9C0;
        v41 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v42 = swift_task_alloc();
        *(v0 + 840) = v42;
        *v42 = v0;
        v42[1] = sub_10043FD80;
        v43 = *(v0 + 616);
        v44 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v45 = *(v0 + 744);
        v46 = *(v0 + 496);
        v47 = *(v0 + 504);
        v48 = *(v0 + 464);
        v49 = *(v0 + 472);
        v50 = *(v0 + 376);
        v51 = *(v49 + 16);
        *(v0 + 856) = v51;
        *(v0 + 864) = (v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v51(v46, v47, v48);
        if ([*(v50 + v45) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v52 = swift_task_alloc();
          *(v0 + 872) = v52;
          *v52 = v0;
          v52[1] = sub_10044152C;
          v41 = *(v0 + 608);
        }

        else
        {
          v53 = *(v0 + 496);
          v54 = *(v0 + 504);
          v55 = *(v0 + 488);
          v56 = *(v0 + 464);
          v57 = *(v0 + 472);
          v58 = *(v57 + 8);
          *(v0 + 888) = v58;
          *(v0 + 896) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v58(v53, v56);
          (*(v57 + 32))(v55, v54, v56);
          GroupSessionMessenger.MessageContext.source.getter();
          v59 = swift_task_alloc();
          *(v0 + 904) = v59;
          *v59 = v0;
          v59[1] = sub_10044169C;
          v41 = *(v0 + 600);
        }

LABEL_26:
        v43 = v41;
        v44 = 3;
LABEL_27:

        sub_10044EE08(v43, v44);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v23 = static os_log_type_t.fault.getter();
      v24 = Logger.logObject.getter();
      v25 = os_log_type_enabled(v24, v23);
      v26 = *(v0 + 392);
      v27 = *(v0 + 400);
      v28 = *(v0 + 384);
      if (v25)
      {
        v29 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v29 = 136315650;
        v30 = StaticString.description.getter();
        v61 = v27;
        v60 = v28;
        v32 = v6;
        v33 = sub_100009D88(v30, v31, &v62);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2048;
        *(v29 + 14) = 229;
        *(v29 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v34 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v34;
        v35._object = 0x8000000100573C60;
        v35._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v35);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v36 = *(v0 + 280);
        v37 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v38 = sub_100009D88(v36, v37, &v62);
        v6 = v32;

        *(v29 + 24) = v38;
        _os_log_impl(&_mh_execute_header, v24, v23, "Failed assertion at %s:%lu: %s", v29, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v26 + 8))(v61, v60);
      }

      else
      {

        (*(v26 + 8))(v27, v28);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8A60);

    v39 = *(v0 + 8);

    v39();
  }
}

uint64_t sub_100443C2C()
{
  v85 = v0;
  if (qword_1006BC958 != -1)
  {
LABEL_48:
    swift_once();
  }

  v1 = *(v0 + 440);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v4 = sub_10002597C(*(v0 + 432), qword_1006C8698);
  sub_100006038(v4, v1, &qword_1006C8880);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v0 + 856))(*(v0 + 480), *(v0 + 488), *(v0 + 464));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      (*(v0 + 888))(*(v0 + 480), *(v0 + 464));
LABEL_17:
      v19 = *(v0 + 440);
      v20 = *(v0 + 384);
      v21 = *(v0 + 392);

      (*(v21 + 8))(v19, v20);
      goto LABEL_18;
    }

    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = FastSync.PaperKitMessage.data.getter();
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        sub_10019671C(v8, v9);
        v12 = 0;
        goto LABEL_16;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      v8 = sub_10019671C(v8, v9);
      v15 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (!v15)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(v9);
      sub_10019671C(v8, v9);
      v12 = v11;
LABEL_16:
      (*(v0 + 888))(*(v0 + 480), *(v0 + 464));
      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received PaperKit message (PCS=OFF) with length: %ld", v7, 0xCu);

      goto LABEL_17;
    }

    v16 = HIDWORD(v8);
    v17 = v8;
    result = sub_10019671C(v8, v9);
    if (__OFSUB__(v16, v17))
    {
      __break(1u);
      return result;
    }

    v12 = v16 - v17;
    goto LABEL_16;
  }

  sub_1000073B4(*(v0 + 440), &qword_1006C8880);
LABEL_18:
  v22 = *(v0 + 888);
  v23 = *(v0 + 488);
  v24 = *(v0 + 464);
  v25 = *(*(v0 + 376) + *(v0 + 752));
  v26 = FastSync.PaperKitMessage.data.getter();
  v28 = v27;
  sub_10044FEA0(v26, v27, v25);
  sub_10019671C(v26, v28);
  v22(v23, v24);
  sub_1000073B4(v0 + 64, &qword_1006C8990);
  sub_100009F60(v0 + 208);
  v29 = *(v0 + 60);
  v30 = *(v0 + 672);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v30 + v29) == *(v0 + 328))
  {
LABEL_19:
    sub_1000073B4(*(v0 + 672), &qword_1006C8A60);

    v31 = *(v0 + 8);

    return v31();
  }

  v32 = v0 + 248;
  while (1)
  {
    v35 = dispatch thunk of Collection.subscript.read();
    sub_100006038(v36, v0 + 16, &qword_1006C8990);
    v35(v32, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v37 = *(v0 + 32);
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 80) = v37;
    *(v0 + 89) = *(v0 + 41);
    sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
    if ((*(v0 + 152) & 1) == 0)
    {
      break;
    }

    *(v0 + 336) = *(v0 + 112);
    sub_10015DA04(&unk_1006C9B40);
    swift_willThrowTypedImpl();
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    sub_10002597C(*(v0 + 384), qword_1006C8680);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "Error processing incoming fast sync message: %@", v40, 0xCu);
      sub_1000073B4(v41, &qword_1006C1440);
    }

    v43 = *(v0 + 760);
    v44 = *(v0 + 376);

    v45 = *(v44 + v43);
    os_unfair_lock_lock((v45 + 24));
    v46 = *(v45 + 16);
    v15 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v15)
    {
      __break(1u);
      goto LABEL_48;
    }

    *(v45 + 16) = v47;
    os_unfair_lock_unlock((v45 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
LABEL_25:
    v33 = *(v0 + 60);
    v34 = *(v0 + 672);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v34 + v33) == *(v0 + 328))
    {
      goto LABEL_19;
    }
  }

  sub_100192680((v0 + 112), v0 + 208);
  sub_10015DA04(&qword_1006C8998);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
    GroupSessionMessenger.MessageContext.source.getter();
    v63 = swift_task_alloc();
    *(v0 + 784) = v63;
    *v63 = v0;
    v63[1] = sub_10043D9C0;
    v64 = *(v0 + 624);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
    GroupSessionMessenger.MessageContext.source.getter();
    v65 = swift_task_alloc();
    *(v0 + 840) = v65;
    *v65 = v0;
    v65[1] = sub_10043FD80;
    v66 = *(v0 + 616);
    v67 = 2;
    goto LABEL_44;
  }

  if (!swift_dynamicCast())
  {
    sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
    static Logger.realtimeCollaboration.getter();
    v48 = static os_log_type_t.fault.getter();
    v49 = Logger.logObject.getter();
    v50 = os_log_type_enabled(v49, v48);
    v52 = *(v0 + 392);
    v51 = *(v0 + 400);
    v53 = *(v0 + 384);
    if (v50)
    {
      v54 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v54 = 136315650;
      v55 = StaticString.description.getter();
      v83 = v51;
      v57 = sub_100009D88(v55, v56, &v84);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2048;
      *(v54 + 14) = 229;
      *(v54 + 22) = 2080;
      *(v0 + 296) = 0;
      *(v0 + 304) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v58 = *(v0 + 304);
      *(v0 + 280) = *(v0 + 296);
      *(v0 + 288) = v58;
      v59._object = 0x8000000100573C60;
      v59._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v59);
      sub_10015DA04(&qword_1006C8990);
      _print_unlocked<A, B>(_:_:)();
      v60 = *(v0 + 280);
      v61 = *(v0 + 288);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
      v62 = sub_100009D88(v60, v61, &v84);

      *(v54 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v49, v48, "Failed assertion at %s:%lu: %s", v54, 0x20u);
      swift_arrayDestroy();

      (*(v52 + 8))(v83, v53);
    }

    else
    {

      (*(v52 + 8))(v51, v53);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
    }

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    v32 = v0 + 248;
    sub_100009F60(v0 + 208);
    goto LABEL_25;
  }

  v68 = *(v0 + 744);
  v69 = *(v0 + 496);
  v70 = *(v0 + 504);
  v71 = *(v0 + 464);
  v72 = *(v0 + 472);
  v73 = *(v0 + 376);
  v74 = *(v72 + 16);
  *(v0 + 856) = v74;
  *(v0 + 864) = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v74(v69, v70, v71);
  if ([*(v73 + v68) fastSyncPaperKitEnablePCSEncryption])
  {
    GroupSessionMessenger.MessageContext.source.getter();
    v75 = swift_task_alloc();
    *(v0 + 872) = v75;
    *v75 = v0;
    v75[1] = sub_10044152C;
    v64 = *(v0 + 608);
  }

  else
  {
    v76 = *(v0 + 496);
    v77 = *(v0 + 504);
    v78 = *(v0 + 488);
    v79 = *(v0 + 464);
    v80 = *(v0 + 472);
    v81 = *(v80 + 8);
    *(v0 + 888) = v81;
    *(v0 + 896) = (v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v81(v76, v79);
    (*(v80 + 32))(v78, v77, v79);
    GroupSessionMessenger.MessageContext.source.getter();
    v82 = swift_task_alloc();
    *(v0 + 904) = v82;
    *v82 = v0;
    v82[1] = sub_10044169C;
    v64 = *(v0 + 600);
  }

LABEL_43:
  v66 = v64;
  v67 = 3;
LABEL_44:

  return sub_10044EE08(v66, v67);
}

void sub_1004447FC()
{
  v60 = v0;
  v1 = v0 + 248;
  (*(v0 + 888))(*(v0 + 488), *(v0 + 464));
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v3 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error processing incoming fast sync message: %@", v6, 0xCu);
    sub_1000073B4(v7, &qword_1006C1440);
  }

  v9 = *(v0 + 760);
  v10 = *(v0 + 376);

  v11 = *(v10 + v9);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
    os_unfair_lock_unlock((v11 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v15 = *(v0 + 60);
      v16 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v16 + v15) == *(v0 + 328))
      {
        break;
      }

      v17 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v18, v0 + 16, &qword_1006C8990);
      v17(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v19 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v19;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v37 = swift_task_alloc();
        *(v0 + 784) = v37;
        *v37 = v0;
        v37[1] = sub_10043D9C0;
        v38 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v39 = swift_task_alloc();
        *(v0 + 840) = v39;
        *v39 = v0;
        v39[1] = sub_10043FD80;
        v40 = *(v0 + 616);
        v41 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v42 = *(v0 + 744);
        v43 = *(v0 + 496);
        v44 = *(v0 + 504);
        v45 = *(v0 + 464);
        v46 = *(v0 + 472);
        v47 = *(v0 + 376);
        v48 = *(v46 + 16);
        *(v0 + 856) = v48;
        *(v0 + 864) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v48(v43, v44, v45);
        if ([*(v47 + v42) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v49 = swift_task_alloc();
          *(v0 + 872) = v49;
          *v49 = v0;
          v49[1] = sub_10044152C;
          v38 = *(v0 + 608);
        }

        else
        {
          v50 = *(v0 + 496);
          v51 = *(v0 + 504);
          v52 = *(v0 + 488);
          v53 = *(v0 + 464);
          v54 = *(v0 + 472);
          v55 = *(v54 + 8);
          *(v0 + 888) = v55;
          *(v0 + 896) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v55(v50, v53);
          (*(v54 + 32))(v52, v51, v53);
          GroupSessionMessenger.MessageContext.source.getter();
          v56 = swift_task_alloc();
          *(v0 + 904) = v56;
          *v56 = v0;
          v56[1] = sub_10044169C;
          v38 = *(v0 + 600);
        }

LABEL_26:
        v40 = v38;
        v41 = 3;
LABEL_27:

        sub_10044EE08(v40, v41);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v20 = static os_log_type_t.fault.getter();
      v21 = Logger.logObject.getter();
      v22 = os_log_type_enabled(v21, v20);
      v23 = *(v0 + 392);
      v24 = *(v0 + 400);
      v25 = *(v0 + 384);
      if (v22)
      {
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v26 = 136315650;
        v27 = StaticString.description.getter();
        v58 = v24;
        v57 = v25;
        v29 = v3;
        v30 = sub_100009D88(v27, v28, &v59);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 229;
        *(v26 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v31 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v31;
        v32._object = 0x8000000100573C60;
        v32._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v32);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v33 = *(v0 + 280);
        v34 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v35 = sub_100009D88(v33, v34, &v59);
        v3 = v29;

        *(v26 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v21, v20, "Failed assertion at %s:%lu: %s", v26, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v23 + 8))(v58, v57);
      }

      else
      {

        (*(v23 + 8))(v24, v25);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8A60);

    v36 = *(v0 + 8);

    v36();
  }
}

uint64_t sub_1004451B4(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  v4 = type metadata accessor for Logger();
  v3[48] = v4;
  v3[49] = *(v4 - 8);
  v3[50] = swift_task_alloc();
  v5 = sub_10015DA04(&qword_1006C4720);
  v3[51] = v5;
  v3[52] = *(v5 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = sub_10015DA04(&qword_1006C8880);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v6 = type metadata accessor for FastSync.PaperKitMessage();
  v3[58] = v6;
  v3[59] = *(v6 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v7 = sub_10015DA04(&qword_1006C8970);
  v3[64] = v7;
  v3[65] = *(v7 - 8);
  v3[66] = swift_task_alloc();
  v8 = type metadata accessor for FastSync.SelectionMessage();
  v3[67] = v8;
  v3[68] = *(v8 - 8);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v9 = type metadata accessor for Participant();
  v3[73] = v9;
  v3[74] = *(v9 - 8);
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v10 = type metadata accessor for FastSync.NoteContentMessage();
  v3[79] = v10;
  v3[80] = *(v10 - 8);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = sub_10015DA04(&qword_1006C8978);
  v3[84] = swift_task_alloc();
  v11 = sub_10015DA04(&qword_1006C8878);
  v3[85] = v11;
  v3[86] = *(v11 - 8);
  v3[87] = swift_task_alloc();
  v12 = type metadata accessor for FastSync.MessageVersion();
  v3[88] = v12;
  v3[89] = *(v12 - 8);
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();

  return _swift_task_switch(sub_100445690, 0, 0);
}

uint64_t sub_100445690()
{
  v81 = v0;
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  FastSync.MessageContainer.version.getter();
  static FastSync.MessageVersion.current.getter();
  sub_100455E2C(&qword_1006C8980, &type metadata accessor for FastSync.MessageVersion);
  v5 = dispatch thunk of static Comparable.< infix(_:_:)();
  v6 = *(v3 + 8);
  (v6)(v2, v4);
  (v6)(v1, v4);
  if (v5)
  {
    if (qword_1006BC950 != -1)
    {
LABEL_38:
      swift_once();
    }

    v7 = *(v0 + 696);
    v8 = *(v0 + 688);
    v9 = *(v0 + 680);
    v10 = *(v0 + 360);
    sub_10002597C(*(v0 + 384), qword_1006C8680);
    (*(v8 + 16))(v7, v10, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 728);
      v78 = *(v0 + 704);
      v14 = *(v0 + 696);
      v15 = *(v0 + 688);
      v16 = *(v0 + 680);
      v17 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = v79;
      *v17 = 136315138;
      FastSync.MessageContainer.version.getter();
      (*(v15 + 8))(v14, v16);
      sub_100455E2C(&qword_1006C8A08, &type metadata accessor for FastSync.MessageVersion);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (v6)(v13, v78);
      v21 = sub_100009D88(v18, v20, &v80);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "Skipping unsupported message container with version: %s", v17, 0xCu);
      sub_100009F60(v79);
    }

    else
    {
      (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));
    }

    goto LABEL_9;
  }

  v22 = *(v0 + 672);
  v23 = *(v0 + 664);
  (*(*(v0 + 688) + 16))(v22, *(v0 + 360), *(v0 + 680));
  v24 = *(v23 + 36);
  *(v0 + 60) = v24;
  *(v0 + 736) = sub_1000060B4(&qword_1006C8988, &qword_1006C8878);
  dispatch thunk of Collection.startIndex.getter();
  *(v0 + 744) = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudConfiguration;
  *(v0 + 752) = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_paperKitInbox;
  *(v0 + 760) = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount;
  *(v0 + 768) = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_selectionMessages;
  *(v0 + 776) = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudKitRecords;
  dispatch thunk of Collection.endIndex.getter();
  if (*(v22 + v24) == *(v0 + 328))
  {
LABEL_6:
    sub_1000073B4(*(v0 + 672), &qword_1006C8978);
LABEL_9:

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = v0 + 248;
  while (1)
  {
    v30 = dispatch thunk of Collection.subscript.read();
    sub_100006038(v31, v0 + 16, &qword_1006C8990);
    v30(v27, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v32 = *(v0 + 32);
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 80) = v32;
    *(v0 + 89) = *(v0 + 41);
    sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
    if ((*(v0 + 152) & 1) == 0)
    {
      break;
    }

    *(v0 + 336) = *(v0 + 112);
    sub_10015DA04(&unk_1006C9B40);
    swift_willThrowTypedImpl();
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    sub_10002597C(*(v0 + 384), qword_1006C8680);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v35 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v36;
      v6->isa = v36;
      _os_log_impl(&_mh_execute_header, v33, v34, "Error processing incoming fast sync message: %@", v35, 0xCu);
      sub_1000073B4(v6, &qword_1006C1440);
    }

    v37 = *(v0 + 760);
    v38 = *(v0 + 376);

    v39 = *(v38 + v37);
    os_unfair_lock_lock((v39 + 24));
    v40 = *(v39 + 16);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      __break(1u);
      goto LABEL_38;
    }

    *(v39 + 16) = v42;
    os_unfair_lock_unlock((v39 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
LABEL_15:
    v28 = *(v0 + 60);
    v29 = *(v0 + 672);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v29 + v28) == *(v0 + 328))
    {
      goto LABEL_6;
    }
  }

  sub_100192680((v0 + 112), v0 + 208);
  sub_10015DA04(&qword_1006C8998);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
    GroupSessionMessenger.MessageContext.source.getter();
    v57 = swift_task_alloc();
    *(v0 + 784) = v57;
    *v57 = v0;
    v57[1] = sub_10044636C;
    v58 = *(v0 + 624);
    goto LABEL_33;
  }

  if (swift_dynamicCast())
  {
    (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
    GroupSessionMessenger.MessageContext.source.getter();
    v59 = swift_task_alloc();
    *(v0 + 840) = v59;
    *v59 = v0;
    v59[1] = sub_10044872C;
    v60 = *(v0 + 616);
    v61 = 2;
    goto LABEL_34;
  }

  if (!swift_dynamicCast())
  {
    sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
    static Logger.realtimeCollaboration.getter();
    v43 = static os_log_type_t.fault.getter();
    v6 = Logger.logObject.getter();
    v44 = os_log_type_enabled(v6, v43);
    v46 = *(v0 + 392);
    v45 = *(v0 + 400);
    v47 = *(v0 + 384);
    if (v44)
    {
      v48 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v48 = 136315650;
      v49 = StaticString.description.getter();
      v77 = v45;
      v51 = sub_100009D88(v49, v50, &v80);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2048;
      *(v48 + 14) = 229;
      *(v48 + 22) = 2080;
      *(v0 + 296) = 0;
      *(v0 + 304) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v52 = *(v0 + 304);
      *(v0 + 280) = *(v0 + 296);
      *(v0 + 288) = v52;
      v53._object = 0x8000000100573C60;
      v53._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v53);
      sub_10015DA04(&qword_1006C8990);
      _print_unlocked<A, B>(_:_:)();
      v54 = *(v0 + 280);
      v55 = *(v0 + 288);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
      v56 = sub_100009D88(v54, v55, &v80);

      *(v48 + 24) = v56;
      _os_log_impl(&_mh_execute_header, v6, v43, "Failed assertion at %s:%lu: %s", v48, 0x20u);
      swift_arrayDestroy();

      (*(v46 + 8))(v77, v47);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
    }

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    v27 = v0 + 248;
    sub_100009F60(v0 + 208);
    goto LABEL_15;
  }

  v62 = *(v0 + 744);
  v63 = *(v0 + 496);
  v64 = *(v0 + 504);
  v65 = *(v0 + 464);
  v66 = *(v0 + 472);
  v67 = *(v0 + 376);
  v68 = *(v66 + 16);
  *(v0 + 856) = v68;
  *(v0 + 864) = (v66 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v68(v63, v64, v65);
  if ([*(v67 + v62) fastSyncPaperKitEnablePCSEncryption])
  {
    GroupSessionMessenger.MessageContext.source.getter();
    v69 = swift_task_alloc();
    *(v0 + 872) = v69;
    *v69 = v0;
    v69[1] = sub_100449ED8;
    v58 = *(v0 + 608);
  }

  else
  {
    v70 = *(v0 + 496);
    v71 = *(v0 + 504);
    v72 = *(v0 + 488);
    v73 = *(v0 + 464);
    v74 = *(v0 + 472);
    v75 = *(v74 + 8);
    *(v0 + 888) = v75;
    *(v0 + 896) = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v75(v70, v73);
    (*(v74 + 32))(v72, v71, v73);
    GroupSessionMessenger.MessageContext.source.getter();
    v76 = swift_task_alloc();
    *(v0 + 904) = v76;
    *v76 = v0;
    v76[1] = sub_10044A048;
    v58 = *(v0 + 600);
  }

LABEL_33:
  v60 = v58;
  v61 = 3;
LABEL_34:

  return sub_10044EE08(v60, v61);
}

uint64_t sub_10044636C()
{
  v2 = *(*v1 + 624);
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 584);
  *(*v1 + 792) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1004466EC;
  }

  else
  {
    v5 = sub_1004464DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004464DC()
{
  v1 = FastSync.NoteContentMessage.recordBatchData.getter();
  v3 = v2;
  v0[100] = v1;
  v0[101] = v2;
  v4 = swift_task_alloc();
  v0[102] = v4;
  *v4 = v0;
  v4[1] = sub_100446594;

  return sub_10044F6C0(v1, v3);
}

uint64_t sub_100446594(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 808);
  v5 = *(*v2 + 800);
  *(v3 + 824) = a1;
  *(v3 + 832) = v1;

  sub_10019671C(v5, v4);
  if (v1)
  {
    v6 = sub_100447D6C;
  }

  else
  {
    v6 = sub_1004470AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_1004466EC()
{
  v60 = v0;
  v1 = v0 + 248;
  (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v3 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error processing incoming fast sync message: %@", v6, 0xCu);
    sub_1000073B4(v7, &qword_1006C1440);
  }

  v9 = *(v0 + 760);
  v10 = *(v0 + 376);

  v11 = *(v10 + v9);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
    os_unfair_lock_unlock((v11 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v15 = *(v0 + 60);
      v16 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v16 + v15) == *(v0 + 328))
      {
        break;
      }

      v17 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v18, v0 + 16, &qword_1006C8990);
      v17(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v19 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v19;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v37 = swift_task_alloc();
        *(v0 + 784) = v37;
        *v37 = v0;
        v37[1] = sub_10044636C;
        v38 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v39 = swift_task_alloc();
        *(v0 + 840) = v39;
        *v39 = v0;
        v39[1] = sub_10044872C;
        v40 = *(v0 + 616);
        v41 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v42 = *(v0 + 744);
        v43 = *(v0 + 496);
        v44 = *(v0 + 504);
        v45 = *(v0 + 464);
        v46 = *(v0 + 472);
        v47 = *(v0 + 376);
        v48 = *(v46 + 16);
        *(v0 + 856) = v48;
        *(v0 + 864) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v48(v43, v44, v45);
        if ([*(v47 + v42) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v49 = swift_task_alloc();
          *(v0 + 872) = v49;
          *v49 = v0;
          v49[1] = sub_100449ED8;
          v38 = *(v0 + 608);
        }

        else
        {
          v50 = *(v0 + 496);
          v51 = *(v0 + 504);
          v52 = *(v0 + 488);
          v53 = *(v0 + 464);
          v54 = *(v0 + 472);
          v55 = *(v54 + 8);
          *(v0 + 888) = v55;
          *(v0 + 896) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v55(v50, v53);
          (*(v54 + 32))(v52, v51, v53);
          GroupSessionMessenger.MessageContext.source.getter();
          v56 = swift_task_alloc();
          *(v0 + 904) = v56;
          *v56 = v0;
          v56[1] = sub_10044A048;
          v38 = *(v0 + 600);
        }

LABEL_26:
        v40 = v38;
        v41 = 3;
LABEL_27:

        sub_10044EE08(v40, v41);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v20 = static os_log_type_t.fault.getter();
      v21 = Logger.logObject.getter();
      v22 = os_log_type_enabled(v21, v20);
      v23 = *(v0 + 392);
      v24 = *(v0 + 400);
      v25 = *(v0 + 384);
      if (v22)
      {
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v26 = 136315650;
        v27 = StaticString.description.getter();
        v58 = v24;
        v57 = v25;
        v29 = v3;
        v30 = sub_100009D88(v27, v28, &v59);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 229;
        *(v26 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v31 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v31;
        v32._object = 0x8000000100573C60;
        v32._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v32);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v33 = *(v0 + 280);
        v34 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v35 = sub_100009D88(v33, v34, &v59);
        v3 = v29;

        *(v26 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v21, v20, "Failed assertion at %s:%lu: %s", v26, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v23 + 8))(v58, v57);
      }

      else
      {

        (*(v23 + 8))(v24, v25);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8978);

    v36 = *(v0 + 8);

    v36();
  }
}

uint64_t sub_1004470AC()
{
  v89 = v0;
  v1 = v0[103];
  if (v1 >> 62)
  {
    goto LABEL_48;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[103]; v2; v86 = v0)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = i + 32;
    v84 = v1 & 0xC000000000000001;
    v82 = v2;
    v83 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_46;
        }

        v8 = *(v7 + 8 * v4);
      }

      v1 = v8;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v87 = v4 + 1;
      if (qword_1006BC950 != -1)
      {
        swift_once();
      }

      sub_10002597C(v0[48], qword_1006C8680);
      v9 = v1;
      v1 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v1, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v88 = v12;
        *v11 = 136315138;
        v13 = v7;
        v14 = [v9 ic_loggingDescription];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v7 = v13;
        v18 = sub_100009D88(v15, v17, &v88);
        v2 = v82;

        *(v11 + 4) = v18;
        v5 = v84;
        v0 = v86;
        _os_log_impl(&_mh_execute_header, v1, v10, "Received CloudKit record: %s", v11, 0xCu);
        sub_100009F60(v12);
        v6 = v83;
      }

      else
      {
      }

      ++v4;
      if (v87 == v2)
      {
        i = v0[103];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    i = v0[103];
  }

LABEL_16:
  v19 = v0[81];
  v20 = v0[80];
  v21 = v0[79];
  v22 = v86[66];
  v23 = v86[65];
  v24 = v86[64];
  v86[44] = i;
  sub_10015DA04(&qword_1006BD3D8);
  AsyncStream.Continuation.yield(_:)();
  v25 = v22;
  v26 = v86;
  (*(v23 + 8))(v25, v24);
  (*(v20 + 8))(v19, v21);
  sub_1000073B4((v86 + 8), &qword_1006C8990);
  sub_100009F60((v86 + 26));
  v27 = *(v86 + 15);
  v28 = v86[84];
  dispatch thunk of Collection.endIndex.getter();
  if (*(v28 + v27) == v86[41])
  {
LABEL_17:
    sub_1000073B4(v26[84], &qword_1006C8978);

    v29 = v26[1];

    return v29();
  }

  while (1)
  {
    v33 = dispatch thunk of Collection.subscript.read();
    sub_100006038(v34, (v26 + 2), &qword_1006C8990);
    v33(v86 + 31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v35 = *(v26 + 2);
    *(v26 + 4) = *(v26 + 1);
    *(v26 + 5) = v35;
    *(v26 + 89) = *(v26 + 41);
    sub_100006038((v26 + 8), (v26 + 14), &qword_1006C8990);
    if ((v26[19] & 1) == 0)
    {
      break;
    }

    v26[42] = v26[14];
    sub_10015DA04(&unk_1006C9B40);
    swift_willThrowTypedImpl();
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    sub_10002597C(v26[48], qword_1006C8680);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "Error processing incoming fast sync message: %@", v38, 0xCu);
      sub_1000073B4(v39, &qword_1006C1440);
    }

    v0 = v26[95];
    v41 = v26[47];

    v1 = *(v0 + v41);
    os_unfair_lock_lock((v1 + 24));
    v42 = *(v1 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_47;
    }

    *(v1 + 16) = v44;
    os_unfair_lock_unlock((v1 + 24));

    sub_1000073B4((v26 + 8), &qword_1006C8990);
LABEL_23:
    v31 = *(v26 + 15);
    v32 = v26[84];
    dispatch thunk of Collection.endIndex.getter();
    if (*(v32 + v31) == v26[41])
    {
      goto LABEL_17;
    }
  }

  sub_100192680(v26 + 7, (v26 + 26));
  sub_10015DA04(&qword_1006C8998);
  if (swift_dynamicCast())
  {
    (*(v26[80] + 32))(v26[81], v26[82], v26[79]);
    GroupSessionMessenger.MessageContext.source.getter();
    v60 = swift_task_alloc();
    v26[98] = v60;
    *v60 = v26;
    v60[1] = sub_10044636C;
    v61 = v26[78];
    goto LABEL_41;
  }

  if (swift_dynamicCast())
  {
    (*(v26[68] + 32))(v26[71], v26[72], v26[67]);
    GroupSessionMessenger.MessageContext.source.getter();
    v62 = swift_task_alloc();
    v26[105] = v62;
    *v62 = v26;
    v62[1] = sub_10044872C;
    v63 = v26[77];
    v64 = 2;
    goto LABEL_42;
  }

  if (!swift_dynamicCast())
  {
    sub_100006038((v26 + 8), (v26 + 20), &qword_1006C8990);
    static Logger.realtimeCollaboration.getter();
    v45 = static os_log_type_t.fault.getter();
    v46 = Logger.logObject.getter();
    v47 = os_log_type_enabled(v46, v45);
    v49 = v26[49];
    v48 = v26[50];
    v50 = v26[48];
    if (v47)
    {
      v51 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v51 = 136315650;
      v52 = StaticString.description.getter();
      v85 = v48;
      v54 = sub_100009D88(v52, v53, &v88);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2048;
      *(v51 + 14) = 229;
      *(v51 + 22) = 2080;
      v86[37] = 0;
      v86[38] = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v55 = v86[38];
      v86[35] = v86[37];
      v86[36] = v55;
      v56._object = 0x8000000100573C60;
      v56._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v56);
      sub_10015DA04(&qword_1006C8990);
      _print_unlocked<A, B>(_:_:)();
      v57 = v86[35];
      v58 = v86[36];
      sub_1000073B4((v86 + 20), &qword_1006C8990);
      v59 = sub_100009D88(v57, v58, &v88);
      v26 = v86;

      *(v51 + 24) = v59;
      _os_log_impl(&_mh_execute_header, v46, v45, "Failed assertion at %s:%lu: %s", v51, 0x20u);
      swift_arrayDestroy();

      (*(v49 + 8))(v85, v50);
    }

    else
    {

      (*(v49 + 8))(v48, v50);
      sub_1000073B4((v26 + 20), &qword_1006C8990);
    }

    sub_1000073B4((v26 + 8), &qword_1006C8990);
    sub_100009F60((v26 + 26));
    goto LABEL_23;
  }

  v65 = v26[93];
  v66 = v26[62];
  v67 = v26[63];
  v68 = v26[58];
  v69 = v26[59];
  v70 = v26[47];
  v71 = *(v69 + 16);
  v26[107] = v71;
  v26[108] = (v69 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v71(v66, v67, v68);
  if ([*(v70 + v65) fastSyncPaperKitEnablePCSEncryption])
  {
    GroupSessionMessenger.MessageContext.source.getter();
    v72 = swift_task_alloc();
    v26[109] = v72;
    *v72 = v26;
    v72[1] = sub_100449ED8;
    v61 = v26[76];
  }

  else
  {
    v73 = v26[62];
    v74 = v26[63];
    v75 = v26[61];
    v76 = v26;
    v79 = v26 + 58;
    v78 = v26[58];
    v77 = v79[1];
    v80 = *(v77 + 8);
    v76[111] = v80;
    v76[112] = (v77 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v80(v73, v78);
    (*(v77 + 32))(v75, v74, v78);
    GroupSessionMessenger.MessageContext.source.getter();
    v81 = swift_task_alloc();
    v76[113] = v81;
    *v81 = v76;
    v81[1] = sub_10044A048;
    v61 = v76[75];
  }

LABEL_41:
  v63 = v61;
  v64 = 3;
LABEL_42:

  return sub_10044EE08(v63, v64);
}

void sub_100447D6C()
{
  v60 = v0;
  v1 = v0 + 248;
  (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v3 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error processing incoming fast sync message: %@", v6, 0xCu);
    sub_1000073B4(v7, &qword_1006C1440);
  }

  v9 = *(v0 + 760);
  v10 = *(v0 + 376);

  v11 = *(v10 + v9);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
    os_unfair_lock_unlock((v11 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v15 = *(v0 + 60);
      v16 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v16 + v15) == *(v0 + 328))
      {
        break;
      }

      v17 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v18, v0 + 16, &qword_1006C8990);
      v17(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v19 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v19;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v37 = swift_task_alloc();
        *(v0 + 784) = v37;
        *v37 = v0;
        v37[1] = sub_10044636C;
        v38 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v39 = swift_task_alloc();
        *(v0 + 840) = v39;
        *v39 = v0;
        v39[1] = sub_10044872C;
        v40 = *(v0 + 616);
        v41 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v42 = *(v0 + 744);
        v43 = *(v0 + 496);
        v44 = *(v0 + 504);
        v45 = *(v0 + 464);
        v46 = *(v0 + 472);
        v47 = *(v0 + 376);
        v48 = *(v46 + 16);
        *(v0 + 856) = v48;
        *(v0 + 864) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v48(v43, v44, v45);
        if ([*(v47 + v42) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v49 = swift_task_alloc();
          *(v0 + 872) = v49;
          *v49 = v0;
          v49[1] = sub_100449ED8;
          v38 = *(v0 + 608);
        }

        else
        {
          v50 = *(v0 + 496);
          v51 = *(v0 + 504);
          v52 = *(v0 + 488);
          v53 = *(v0 + 464);
          v54 = *(v0 + 472);
          v55 = *(v54 + 8);
          *(v0 + 888) = v55;
          *(v0 + 896) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v55(v50, v53);
          (*(v54 + 32))(v52, v51, v53);
          GroupSessionMessenger.MessageContext.source.getter();
          v56 = swift_task_alloc();
          *(v0 + 904) = v56;
          *v56 = v0;
          v56[1] = sub_10044A048;
          v38 = *(v0 + 600);
        }

LABEL_26:
        v40 = v38;
        v41 = 3;
LABEL_27:

        sub_10044EE08(v40, v41);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v20 = static os_log_type_t.fault.getter();
      v21 = Logger.logObject.getter();
      v22 = os_log_type_enabled(v21, v20);
      v23 = *(v0 + 392);
      v24 = *(v0 + 400);
      v25 = *(v0 + 384);
      if (v22)
      {
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v26 = 136315650;
        v27 = StaticString.description.getter();
        v58 = v24;
        v57 = v25;
        v29 = v3;
        v30 = sub_100009D88(v27, v28, &v59);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 229;
        *(v26 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v31 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v31;
        v32._object = 0x8000000100573C60;
        v32._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v32);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v33 = *(v0 + 280);
        v34 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v35 = sub_100009D88(v33, v34, &v59);
        v3 = v29;

        *(v26 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v21, v20, "Failed assertion at %s:%lu: %s", v26, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v23 + 8))(v58, v57);
      }

      else
      {

        (*(v23 + 8))(v24, v25);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8978);

    v36 = *(v0 + 8);

    v36();
  }
}

uint64_t sub_10044872C()
{
  v2 = *(*v1 + 616);
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 584);
  *(*v1 + 848) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100449518;
  }

  else
  {
    v5 = sub_10044889C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10044889C()
{
  v81 = v0;
  if (qword_1006BC958 != -1)
  {
LABEL_38:
    swift_once();
  }

  v1 = *(v0 + 456);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v4 = sub_10002597C(*(v0 + 432), qword_1006C8698);
  sub_100006038(v4, v1, &qword_1006C8880);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000073B4(*(v0 + 456), &qword_1006C8880);
  }

  else
  {
    (*(*(v0 + 544) + 16))(*(v0 + 560), *(v0 + 568), *(v0 + 536));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 560);
    v9 = *(v0 + 544);
    v10 = *(v0 + 536);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v80 = v12;
      *v11 = 136315138;
      sub_100455E2C(&qword_1006C4940, &type metadata accessor for FastSync.SelectionMessage);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v9 + 8))(v8, v10);
      v16 = sub_100009D88(v13, v15, &v80);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received selection message: %s", v11, 0xCu);
      sub_100009F60(v12);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    (*(*(v0 + 392) + 8))(*(v0 + 456), *(v0 + 384));
  }

  v17 = *(v0 + 568);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v21 = *(v0 + 416);
  v20 = *(v0 + 424);
  v22 = *(v0 + 408);
  (*(v18 + 16))(*(v0 + 552), v17, v19);
  sub_10015DA04(&qword_1006BD3C0);
  AsyncStream.Continuation.yield(_:)();
  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v17, v19);
  sub_1000073B4(v0 + 64, &qword_1006C8990);
  sub_100009F60(v0 + 208);
  v23 = *(v0 + 60);
  v24 = *(v0 + 672);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v24 + v23) == *(v0 + 328))
  {
LABEL_9:
    sub_1000073B4(*(v0 + 672), &qword_1006C8978);

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = v0 + 248;
  while (1)
  {
    v30 = dispatch thunk of Collection.subscript.read();
    sub_100006038(v31, v0 + 16, &qword_1006C8990);
    v30(v27, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v32 = *(v0 + 32);
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 80) = v32;
    *(v0 + 89) = *(v0 + 41);
    sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
    if ((*(v0 + 152) & 1) == 0)
    {
      break;
    }

    *(v0 + 336) = *(v0 + 112);
    sub_10015DA04(&unk_1006C9B40);
    swift_willThrowTypedImpl();
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    sub_10002597C(*(v0 + 384), qword_1006C8680);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Error processing incoming fast sync message: %@", v35, 0xCu);
      sub_1000073B4(v36, &qword_1006C1440);
    }

    v38 = *(v0 + 760);
    v39 = *(v0 + 376);

    v40 = *(v39 + v38);
    os_unfair_lock_lock((v40 + 24));
    v41 = *(v40 + 16);
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      __break(1u);
      goto LABEL_38;
    }

    *(v40 + 16) = v43;
    os_unfair_lock_unlock((v40 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
LABEL_15:
    v28 = *(v0 + 60);
    v29 = *(v0 + 672);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v29 + v28) == *(v0 + 328))
    {
      goto LABEL_9;
    }
  }

  sub_100192680((v0 + 112), v0 + 208);
  sub_10015DA04(&qword_1006C8998);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
    GroupSessionMessenger.MessageContext.source.getter();
    v59 = swift_task_alloc();
    *(v0 + 784) = v59;
    *v59 = v0;
    v59[1] = sub_10044636C;
    v60 = *(v0 + 624);
    goto LABEL_33;
  }

  if (swift_dynamicCast())
  {
    (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
    GroupSessionMessenger.MessageContext.source.getter();
    v61 = swift_task_alloc();
    *(v0 + 840) = v61;
    *v61 = v0;
    v61[1] = sub_10044872C;
    v62 = *(v0 + 616);
    v63 = 2;
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
    static Logger.realtimeCollaboration.getter();
    v44 = static os_log_type_t.fault.getter();
    v45 = Logger.logObject.getter();
    v46 = os_log_type_enabled(v45, v44);
    v48 = *(v0 + 392);
    v47 = *(v0 + 400);
    v49 = *(v0 + 384);
    if (v46)
    {
      v50 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v50 = 136315650;
      v51 = StaticString.description.getter();
      v79 = v47;
      v53 = sub_100009D88(v51, v52, &v80);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2048;
      *(v50 + 14) = 229;
      *(v50 + 22) = 2080;
      *(v0 + 296) = 0;
      *(v0 + 304) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v54 = *(v0 + 304);
      *(v0 + 280) = *(v0 + 296);
      *(v0 + 288) = v54;
      v55._object = 0x8000000100573C60;
      v55._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v55);
      sub_10015DA04(&qword_1006C8990);
      _print_unlocked<A, B>(_:_:)();
      v56 = *(v0 + 280);
      v57 = *(v0 + 288);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
      v58 = sub_100009D88(v56, v57, &v80);

      *(v50 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v45, v44, "Failed assertion at %s:%lu: %s", v50, 0x20u);
      swift_arrayDestroy();

      (*(v48 + 8))(v79, v49);
    }

    else
    {

      (*(v48 + 8))(v47, v49);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
    }

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    v27 = v0 + 248;
    sub_100009F60(v0 + 208);
    goto LABEL_15;
  }

  v64 = *(v0 + 744);
  v65 = *(v0 + 496);
  v66 = *(v0 + 504);
  v67 = *(v0 + 464);
  v68 = *(v0 + 472);
  v69 = *(v0 + 376);
  v70 = *(v68 + 16);
  *(v0 + 856) = v70;
  *(v0 + 864) = (v68 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v70(v65, v66, v67);
  if ([*(v69 + v64) fastSyncPaperKitEnablePCSEncryption])
  {
    GroupSessionMessenger.MessageContext.source.getter();
    v71 = swift_task_alloc();
    *(v0 + 872) = v71;
    *v71 = v0;
    v71[1] = sub_100449ED8;
    v60 = *(v0 + 608);
  }

  else
  {
    v72 = *(v0 + 496);
    v73 = *(v0 + 504);
    v74 = *(v0 + 488);
    v75 = *(v0 + 464);
    v76 = *(v0 + 472);
    v77 = *(v76 + 8);
    *(v0 + 888) = v77;
    *(v0 + 896) = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v77(v72, v75);
    (*(v76 + 32))(v74, v73, v75);
    GroupSessionMessenger.MessageContext.source.getter();
    v78 = swift_task_alloc();
    *(v0 + 904) = v78;
    *v78 = v0;
    v78[1] = sub_10044A048;
    v60 = *(v0 + 600);
  }

LABEL_33:
  v62 = v60;
  v63 = 3;
LABEL_34:

  return sub_10044EE08(v62, v63);
}

void sub_100449518()
{
  v60 = v0;
  v1 = v0 + 248;
  (*(*(v0 + 544) + 8))(*(v0 + 568), *(v0 + 536));
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v3 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error processing incoming fast sync message: %@", v6, 0xCu);
    sub_1000073B4(v7, &qword_1006C1440);
  }

  v9 = *(v0 + 760);
  v10 = *(v0 + 376);

  v11 = *(v10 + v9);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
    os_unfair_lock_unlock((v11 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v15 = *(v0 + 60);
      v16 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v16 + v15) == *(v0 + 328))
      {
        break;
      }

      v17 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v18, v0 + 16, &qword_1006C8990);
      v17(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v19 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v19;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v37 = swift_task_alloc();
        *(v0 + 784) = v37;
        *v37 = v0;
        v37[1] = sub_10044636C;
        v38 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v39 = swift_task_alloc();
        *(v0 + 840) = v39;
        *v39 = v0;
        v39[1] = sub_10044872C;
        v40 = *(v0 + 616);
        v41 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v42 = *(v0 + 744);
        v43 = *(v0 + 496);
        v44 = *(v0 + 504);
        v45 = *(v0 + 464);
        v46 = *(v0 + 472);
        v47 = *(v0 + 376);
        v48 = *(v46 + 16);
        *(v0 + 856) = v48;
        *(v0 + 864) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v48(v43, v44, v45);
        if ([*(v47 + v42) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v49 = swift_task_alloc();
          *(v0 + 872) = v49;
          *v49 = v0;
          v49[1] = sub_100449ED8;
          v38 = *(v0 + 608);
        }

        else
        {
          v50 = *(v0 + 496);
          v51 = *(v0 + 504);
          v52 = *(v0 + 488);
          v53 = *(v0 + 464);
          v54 = *(v0 + 472);
          v55 = *(v54 + 8);
          *(v0 + 888) = v55;
          *(v0 + 896) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v55(v50, v53);
          (*(v54 + 32))(v52, v51, v53);
          GroupSessionMessenger.MessageContext.source.getter();
          v56 = swift_task_alloc();
          *(v0 + 904) = v56;
          *v56 = v0;
          v56[1] = sub_10044A048;
          v38 = *(v0 + 600);
        }

LABEL_26:
        v40 = v38;
        v41 = 3;
LABEL_27:

        sub_10044EE08(v40, v41);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v20 = static os_log_type_t.fault.getter();
      v21 = Logger.logObject.getter();
      v22 = os_log_type_enabled(v21, v20);
      v23 = *(v0 + 392);
      v24 = *(v0 + 400);
      v25 = *(v0 + 384);
      if (v22)
      {
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v26 = 136315650;
        v27 = StaticString.description.getter();
        v58 = v24;
        v57 = v25;
        v29 = v3;
        v30 = sub_100009D88(v27, v28, &v59);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 229;
        *(v26 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v31 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v31;
        v32._object = 0x8000000100573C60;
        v32._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v32);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v33 = *(v0 + 280);
        v34 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v35 = sub_100009D88(v33, v34, &v59);
        v3 = v29;

        *(v26 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v21, v20, "Failed assertion at %s:%lu: %s", v26, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v23 + 8))(v58, v57);
      }

      else
      {

        (*(v23 + 8))(v24, v25);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8978);

    v36 = *(v0 + 8);

    v36();
  }
}