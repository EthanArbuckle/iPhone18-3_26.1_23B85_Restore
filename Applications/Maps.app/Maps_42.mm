void *sub_1004AF46C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedLocationManager];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 lastLocation];

    if (v4)
    {
      [v4 coordinate];
      v7 = fabs(v6);
      if (fabs(v5) <= 180.0 && v7 <= 90.0)
      {
        v9 = v4;

        v12 = sub_1002EEF94(v10);
        sub_1004AF3CC(&v12, v9);

        return v12;
      }
    }

    return a1;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1004AF584(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC4C;

  return sub_1004A9C2C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1004AF660(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 536) = a3;
  *(v3 + 288) = a1;
  *(v3 + 296) = a2;
  return _swift_task_switch(sub_1004AF684, 0, 0);
}

uint64_t sub_1004AF684()
{
  static Task<>.checkCancellation()();
  v1 = v0[37];
  sub_1000CE6B8(&qword_101908400);
  v2 = swift_allocObject();
  v0[38] = v2;
  *(v2 + 16) = xmmword_1011E47B0;
  v3 = objc_allocWithZone(NSSortDescriptor);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithKey:v4 ascending:0];

  *(v2 + 32) = v5;
  type metadata accessor for CollectionPlaceItemRequest();
  v6 = CollectionPlaceItemRequest.__allocating_init()();
  v0[39] = v6;
  type metadata accessor for FavoriteItemRequest();
  v0[40] = FavoriteItemRequest.__allocating_init()();
  if (v1)
  {
    v7 = String._bridgeToObjectiveC()();
    v0[41] = v7;
    v0[42] = sub_1004B0CFC();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[43] = isa;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_1004AF9E8;
    v9 = swift_continuation_init();
    v0[25] = sub_1000CE6B8(&qword_101923448);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1004AA714;
    v0[21] = &unk_10161C918;
    v0[22] = v9;
    [v6 fetchWithSearchTerm:v7 sortDescriptors:isa range:0 completionHandler:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v0[53] = type metadata accessor for MapsSyncQueryPredicate();
    static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
    Options = type metadata accessor for MapsSyncQueryOptions();
    v0[54] = Options;
    v11 = objc_allocWithZone(Options);

    v12 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    v0[55] = v12;
    v0[56] = FavoriteItemRequest.__allocating_init()();
    v16 = (&async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:) + async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:));
    v13 = v12;
    v14 = swift_task_alloc();
    v0[57] = v14;
    *v14 = v0;
    v14[1] = sub_1004B024C;

    return v16(v12);
  }
}

uint64_t sub_1004AF9E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {

    v2 = sub_1004B0AE8;
  }

  else
  {
    v2 = sub_1004AFB00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004AFB00()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  v0[45] = v0[34];

  v4 = String._bridgeToObjectiveC()();
  v0[46] = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[47] = isa;

  v0[10] = v0;
  v0[15] = v0 + 35;
  v0[11] = sub_1004AFC8C;
  v6 = swift_continuation_init();
  v0[33] = sub_1000CE6B8(&qword_101923450);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1004AA72C;
  v0[29] = &unk_10161C940;
  v0[30] = v6;
  [v2 fetchWithSearchTerm:v4 sortDescriptors:isa range:0 completionHandler:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1004AFC8C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 384) = v3;
  if (v3)
  {

    return _swift_task_switch(sub_1004B0B74, 0, 0);
  }

  else
  {
    v4 = v1[35];
    v1[49] = v4;
    v5 = swift_task_alloc();
    v1[50] = v5;
    *v5 = v2;
    v5[1] = sub_1004AFE24;

    return sub_1004C6304(v4);
  }
}

uint64_t sub_1004AFE24(uint64_t a1)
{
  v3 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {

    v4 = sub_1004B01D0;
  }

  else
  {
    v7 = v3 + 46;
    v5 = v3[46];
    v6 = v7[1];

    v4 = sub_1004AFF60;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004AFF60()
{
  v17 = v0;
  if (*(v0 + 408) >> 62)
  {

    sub_1000CE6B8(&qword_1019151C0);
    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v1 = *(v0 + 408);
  }

  v2 = *(v0 + 360);

  if (v2 >> 62)
  {
    sub_1000CE6B8(&qword_1019151C0);
    v3 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v3 = *(v0 + 360);
  }

  v16 = v1;
  sub_1002478B4(v3);
  v4 = *(v0 + 416);
  static Task<>.checkCancellation()();
  if (v4)
  {
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);

    v7 = *(v0 + 8);

    return v7();
  }

  if (*(v0 + 536))
  {
    if (*(v0 + 536) != 1)
    {

      v16 = sub_1002EEF94(v14);
      sub_1004A9670(&v16);
      v15 = *(v0 + 312);

      v12 = v16;
      goto LABEL_14;
    }

    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = sub_1004AF46C(v1);
  }

  else
  {
    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = sub_1004ADB44(v1);
  }

  v12 = v11;

LABEL_14:
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_1004B01D0()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 312);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004B024C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[58] = a1;
  v4[59] = v1;

  v6 = v4[56];
  v7 = v4[55];
  if (v1)
  {

    return _swift_task_switch(sub_1004B0C00, 0, 0);
  }

  else
  {

    v8 = swift_task_alloc();
    v4[60] = v8;
    *v8 = v5;
    v8[1] = sub_1004B0430;

    return sub_1004C6304(a1);
  }
}

uint64_t sub_1004B0430(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {

    v4 = sub_1004B07F8;
  }

  else
  {
    v4 = sub_1004B0580;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004B0580()
{
  v1 = v0[54];
  sub_1000CE6B8(&unk_10190D5C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E1D30;
  *(v2 + 56) = &type metadata for Int16;
  *(v2 + 64) = &protocol witness table for Int16;
  *(v2 + 32) = 6;
  static MapsSyncQueryPredicate.withFormat(_:_:)();

  v3 = objc_allocWithZone(v1);
  v4 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[63] = v4;
  v7 = (&async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:) + async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:));
  v5 = swift_task_alloc();
  v0[64] = v5;
  *v5 = v0;
  v5[1] = sub_1004B06E0;

  return v7(v4);
}

uint64_t sub_1004B06E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 520) = a1;
  *(v3 + 528) = v1;

  if (v1)
  {
    v4 = sub_1004B0C70;
  }

  else
  {
    v4 = sub_1004B0868;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004B07F8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004B0868()
{
  v19 = v0;
  if (*(v0 + 488) >> 62)
  {

    sub_1000CE6B8(&qword_1019151C0);
    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v1 = *(v0 + 488);
  }

  v2 = *(v0 + 520);

  if (v2 >> 62)
  {
    sub_1000CE6B8(&qword_1019151C0);
    v3 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v3 = *(v0 + 520);
  }

  v4 = *(v0 + 504);
  v5 = *(v0 + 440);

  v18 = v1;
  sub_1002478B4(v3);

  v6 = *(v0 + 528);
  static Task<>.checkCancellation()();
  if (v6)
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);

    v9 = *(v0 + 8);

    return v9();
  }

  if (*(v0 + 536))
  {
    if (*(v0 + 536) != 1)
    {

      v18 = sub_1002EEF94(v16);
      sub_1004A9670(&v18);
      v17 = *(v0 + 312);

      v14 = v18;
      goto LABEL_14;
    }

    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v13 = sub_1004AF46C(v1);
  }

  else
  {
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v13 = sub_1004ADB44(v1);
  }

  v14 = v13;

LABEL_14:
  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_1004B0AE8()
{
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004B0B74()
{
  v1 = v0[47];
  v2 = v0[46];
  v4 = v0[39];
  v3 = v0[40];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004B0C00()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004B0C70()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1004B0CFC()
{
  result = qword_101915AA8;
  if (!qword_101915AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101915AA8);
  }

  return result;
}

uint64_t sub_1004B0D7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v73 = a3;
  v89 = a5;
  v78 = sub_1000CE6B8(&qword_101923470);
  __chkstk_darwin(v78);
  v83 = (&v64 - v7);
  v88 = sub_1000CE6B8(&qword_101923478);
  __chkstk_darwin(v88);
  v84 = &v64 - v8;
  v82 = sub_1000CE6B8(&qword_101923480);
  __chkstk_darwin(v82);
  v72 = (&v64 - v9);
  v79 = sub_1000CE6B8(&qword_101923488);
  v71 = *(v79 - 8);
  __chkstk_darwin(v79);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v64 - v12;
  v67 = type metadata accessor for EnvironmentValues();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1000CE6B8(&qword_101923490);
  __chkstk_darwin(v81);
  v70 = &v64 - v14;
  v85 = sub_1000CE6B8(&qword_101923498);
  __chkstk_darwin(v85);
  v87 = &v64 - v15;
  v74 = sub_1000CE6B8(&qword_1019234A0);
  __chkstk_darwin(v74);
  v76 = &v64 - v16;
  v86 = sub_1000CE6B8(&qword_1019234A8);
  __chkstk_darwin(v86);
  v80 = &v64 - v17;
  v75 = sub_1000CE6B8(&qword_10190A2F8);
  __chkstk_darwin(v75);
  v19 = &v64 - v18;
  v20 = sub_1000CE6B8(&qword_10191D860);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v64 - v25;
  v27 = a1;
  v91 = a1;
  v92 = a2;
  v28 = a2;
  sub_1000CE6B8(&qword_101923468);
  State.wrappedValue.getter();
  v29 = v90;
  swift_getKeyPath();
  v91 = v29;
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v29 + 16);
  sub_10041C560(v30);

  if (v30)
  {
    if (v30 == 1)
    {
      ProgressView<>.init<>()();
      v43 = v21;
      v44 = *(v21 + 16);
      v44(v23, v26, v20);
      *v19 = 0;
      v19[8] = 1;
      v45 = sub_1000CE6B8(&qword_10190A408);
      v44(&v19[*(v45 + 48)], v23, v20);
      v46 = &v19[*(v45 + 64)];
      *v46 = 0;
      v46[8] = 1;
      v47 = *(v43 + 8);
      v47(v23, v20);
      sub_1000D2DFC(v19, v76, &qword_10190A2F8);
      swift_storeEnumTagMultiPayload();
      sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
      sub_1004B2664();
      v48 = v80;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v48, v87, &qword_1019234A8);
      swift_storeEnumTagMultiPayload();
      sub_1004B25AC();
      sub_1004B27A8();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v48, &qword_1019234A8);
      sub_100024F64(v19, &qword_10190A2F8);
      return (v47)(v26, v20);
    }

    if (v30 == 2)
    {
      v62 = &protocol witness table for EmptyView;
      v63 = &protocol witness table for EmptyView;
      v60 = &type metadata for EmptyView;
      v61 = &protocol witness table for Text;
      v32 = v77;
      ContentUnavailableView.init(label:description:actions:)();
      v33 = v71;
      v34 = *(v71 + 16);
      v35 = v68;
      v36 = v79;
      v34(v68, v32, v79);
      v37 = v72;
      *v72 = 0;
      *(v37 + 8) = 1;
      v38 = sub_1000CE6B8(&qword_1019234F0);
      v34((v37 + *(v38 + 48)), v35, v36);
      v39 = v37 + *(v38 + 64);
      *v39 = 0;
      *(v39 + 8) = 1;
      v40 = *(v33 + 8);
      v40(v35, v36);
      sub_1000D2DFC(v37, v83, &qword_101923480);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_101921438);
      sub_1000414C8(&qword_1019234B0, &qword_101923480);
      sub_1000414C8(&qword_101921430, &qword_101921438);
      v41 = v84;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v41, v87, &qword_101923478);
      swift_storeEnumTagMultiPayload();
      sub_1004B25AC();
      sub_1004B27A8();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v41, &qword_101923478);
      sub_100024F64(v37, &qword_101923480);
      return (v40)(v77, v79);
    }

    v53 = v69;
    __chkstk_darwin(v31);
    *(&v64 - 6) = v30;
    *(&v64 - 5) = v27;
    v54 = v73;
    v60 = v28;
    v61 = v73;
    LOBYTE(v62) = v55;
    sub_1000CE6B8(&qword_1019234F8);
    sub_1004B2898();
    v56 = v70;
    List<>.init(content:)();
    sub_10041C3F0(v30);
    if ((v53 & 1) == 0)
    {

      static os_log_type_t.fault.getter();
      v57 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v58 = v65;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000F1230(v54, 0);
      (*(v66 + 8))(v58, v67);
      v54 = v91;
    }

    *(v56 + *(v81 + 36)) = v54;
    sub_1000D2DFC(v56, v76, &qword_101923490);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    sub_1004B2664();
    v59 = v80;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v59, v87, &qword_1019234A8);
    swift_storeEnumTagMultiPayload();
    sub_1004B25AC();
    sub_1004B27A8();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v59, &qword_1019234A8);
    v51 = v56;
    v52 = &qword_101923490;
  }

  else
  {
    v49 = v83;
    *v83 = 0;
    *(v49 + 8) = 1;
    v49[2] = 0;
    *(v49 + 24) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000CE6B8(&qword_101921438);
    sub_1000414C8(&qword_1019234B0, &qword_101923480);
    sub_1000414C8(&qword_101921430, &qword_101921438);
    v50 = v84;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v50, v87, &qword_101923478);
    swift_storeEnumTagMultiPayload();
    sub_1004B25AC();
    sub_1004B27A8();
    _ConditionalContent<>.init(storage:)();
    v51 = v50;
    v52 = &qword_101923478;
  }

  return sub_100024F64(v51, v52);
}

uint64_t sub_1004B1AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  a5 &= 1u;
  *(v9 + 40) = a5;

  sub_1001D31A8(a4, a5);
  sub_1000CE6B8(&qword_101923510);
  sub_1000414C8(&qword_101923518, &qword_101923510);
  sub_1004B291C();
  sub_1004B2980();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1004B1BF0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v13 = *(a1 + 1);
  v14 = *(a1 + 2);
  v15 = *(a1 + 3);
  v16 = *(a1 + 4);
  v19 = *(a1 + 5);
  v21 = *a1;
  v12 = v21;
  v22 = v14;
  v23 = a1[2];
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  a5 &= 1u;
  *(v17 + 40) = a5;
  *(v17 + 48) = *a1;
  *(v17 + 64) = v14;
  *(v17 + 72) = *(a1 + 24);
  *(v17 + 88) = *(a1 + 5);
  *a6 = v12;
  a6[1] = v13;
  a6[2] = v14;
  a6[3] = v15;
  a6[4] = v16;
  a6[5] = v19;
  a6[6] = sub_1004B29D4;
  a6[7] = v17;
  sub_100147688(&v21, v20);
  sub_1000D2DFC(&v22, v20, &unk_101916610);
  sub_100147688(&v23, v20);
  sub_100147688(&v21, v20);
  sub_1000D2DFC(&v22, v20, &unk_101916610);
  sub_100147688(&v23, v20);

  return sub_1001D31A8(a4, a5);
}

uint64_t sub_1004B1D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000CE6B8(&qword_101923468);
  State.wrappedValue.getter();
  sub_10041C5E8(*(a5 + 32), *(a5 + 40));
}

uint64_t sub_1004B1DC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v8._object = 0x800000010123B3F0;
  v2._countAndFlagsBits = 0xD000000000000048;
  v2._object = 0x800000010123B3A0;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000029;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v3, v8);
  sub_1000E5580();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1004B1EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v36 = a3;
  v37 = a5;
  v31 = type metadata accessor for CardHeaderSize();
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v30 - v10);
  v12 = type metadata accessor for LeadingCardHeaderViewModel();
  __chkstk_darwin(v12 - 8);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v14 = qword_1019600D8;
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10190D5C0);
  v18 = swift_allocObject();
  v30 = xmmword_1011E1D30;
  *(v18 + 16) = xmmword_1011E1D30;
  v19 = a1;
  *&v38 = a1;
  *(&v38 + 1) = a2;
  v34 = a2;
  sub_1000CE6B8(&qword_101923468);
  State.wrappedValue.getter();
  v20 = v41;
  swift_getKeyPath();
  *&v38 = v20;
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v20 + 80);
  if (v21)
  {
    v22 = v21;
    v23 = [v22 _maps_numLines];
  }

  else
  {
    v23 = 0;
  }

  *(v18 + 56) = &type metadata for UInt;
  *(v18 + 64) = &protocol witness table for UInt;
  *(v18 + 32) = v23;
  String.init(format:_:)();

  *v11 = 0xD00000000000001BLL;
  v11[1] = 0x800000010123B380;
  v24 = enum case for MapsDesignAccessibilityString.header(_:);
  v25 = type metadata accessor for MapsDesignAccessibilityString();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v11, v24, v25);
  (*(v26 + 56))(v11, 0, 1, v25);
  (*(v7 + 104))(v35, enum case for CardHeaderSize.large(_:), v31);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = v30;
  v27 = swift_allocObject();
  *(v27 + 16) = v19;
  v28 = v36;
  *(v27 + 24) = v34;
  *(v27 + 32) = v28;
  LOBYTE(v26) = v33 & 1;
  *(v27 + 40) = v33 & 1;

  sub_1001D31A8(v28, v26);
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  return LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
}

uint64_t sub_1004B2400()
{
  sub_1000CE6B8(&qword_101923468);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v3 + 48);
  if (!v0)
  {
  }

  v1 = *(v3 + 56);

  v0();

  return sub_1000D3B90(v0, v1);
}

uint64_t sub_1004B24D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = sub_1000CE6B8(&qword_101923458);
  sub_1004B0D7C(v3, v4, v5, v6, a1 + *(v7 + 44));
  v8 = a1 + *(sub_1000CE6B8(&qword_101923460) + 36);
  sub_1004B1EA0(v3, v4, v5, v6, v8);
  result = sub_1000CE6B8(&qword_101910FB8);
  *(v8 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_1004B25AC()
{
  result = qword_1019234B8;
  if (!qword_1019234B8)
  {
    sub_1000D6664(&qword_1019234A8);
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    sub_1004B2664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019234B8);
  }

  return result;
}

unint64_t sub_1004B2664()
{
  result = qword_1019234C0;
  if (!qword_1019234C0)
  {
    sub_1000D6664(&qword_101923490);
    sub_1004B26F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019234C0);
  }

  return result;
}

unint64_t sub_1004B26F0()
{
  result = qword_1019234C8;
  if (!qword_1019234C8)
  {
    sub_1000D6664(&qword_1019234D0);
    sub_1000414C8(&qword_1019234D8, &qword_1019234E0);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019234C8);
  }

  return result;
}

unint64_t sub_1004B27A8()
{
  result = qword_1019234E8;
  if (!qword_1019234E8)
  {
    sub_1000D6664(&qword_101923478);
    sub_1000414C8(&qword_1019234B0, &qword_101923480);
    sub_1000414C8(&qword_101921430, &qword_101921438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019234E8);
  }

  return result;
}

unint64_t sub_1004B2898()
{
  result = qword_101923500;
  if (!qword_101923500)
  {
    sub_1000D6664(&qword_1019234F8);
    sub_1004B291C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923500);
  }

  return result;
}

unint64_t sub_1004B291C()
{
  result = qword_101923508;
  if (!qword_101923508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923508);
  }

  return result;
}

unint64_t sub_1004B2980()
{
  result = qword_101923520;
  if (!qword_101923520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923520);
  }

  return result;
}

unint64_t sub_1004B29E8()
{
  result = qword_101923528;
  if (!qword_101923528)
  {
    sub_1000D6664(&qword_101923460);
    sub_1000414C8(&qword_101923530, &qword_101923538);
    sub_1000414C8(&qword_101911018, &qword_101910FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923528);
  }

  return result;
}

uint64_t sub_1004B2ACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004B72EC(&qword_10190BCE0, type metadata accessor for LibraryRecentsDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_1004B2B78()
{
  swift_getKeyPath();
  sub_1004B72EC(&qword_10190BCE0, type metadata accessor for LibraryRecentsDataProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1004B2CE4(uint64_t a1, __int16 a2)
{
  v5 = sub_1000CE6B8(&qword_101922F88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = v2 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesCellState;
  v10 = *(v2 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesCellState);
  v11 = *(v2 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesCellState + 8);
  *v9 = a1;
  *(v9 + 8) = a2;
  v12 = v11 & 0xFF00;
  if ((a2 & 0xFF00) == 0x500)
  {
    if (v12 == 1280)
    {
      return;
    }

LABEL_5:
    sub_1004B4FE8(v8);
    v13 = sub_1004B2EE0();
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v6 + 8))(v8, v5);
    return;
  }

  if (v12 == 1280)
  {
    goto LABEL_5;
  }

  if (HIBYTE(a2) == 3)
  {
    if (v12 != 768)
    {
      goto LABEL_5;
    }
  }

  else if (HIBYTE(a2) == 4)
  {
    if (v12 != 1024)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = v11 >> 8;
    if ((v11 >> 8) - 3 < 2)
    {
      goto LABEL_5;
    }

    if (a2)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((v11 & 1) != 0 || v10 != a1)
    {
      goto LABEL_5;
    }

    if (HIBYTE(a2) == 2)
    {
      if (v14 != 2)
      {
        goto LABEL_5;
      }
    }

    else if (v14 == 2 || ((BYTE1(v11) ^ HIBYTE(a2)) & 1) != 0)
    {
      goto LABEL_5;
    }
  }
}

id sub_1004B2EE0()
{
  v1 = OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager____lazy_storage___diffableDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager____lazy_storage___diffableDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager____lazy_storage___diffableDataSource);
  }

  else
  {
    v4 = sub_1004B30C8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1004B2F88()
{
  v1 = OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager____lazy_storage___compositionalLayout;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager____lazy_storage___compositionalLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager____lazy_storage___compositionalLayout);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = objc_allocWithZone(type metadata accessor for HomeListCompositionalLayout());
    v11[4] = sub_1004B71F8;
    v11[5] = v4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10037D0B0;
    v11[3] = &unk_10161CAC0;
    v6 = _Block_copy(v11);

    v7 = [v5 initWithSectionProvider:v6];
    _Block_release(v6);

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1004B30C8(uint64_t a1)
{
  if (qword_1019068C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&unk_101923770);
  sub_100021540(v2, qword_1019603A8);
  if (qword_1019068D8 != -1)
  {
    swift_once();
  }

  v3 = sub_1000CE6B8(&qword_101923288);
  sub_100021540(v3, qword_1019603F0);
  if (qword_101906760 != -1)
  {
    swift_once();
  }

  v4 = sub_1000CE6B8(&unk_10191C240);
  sub_100021540(v4, qword_1019600C0);
  if (qword_1019068C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000CE6B8(&unk_101923760);
  sub_100021540(v5, qword_1019603C0);
  if (qword_1019068D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1000CE6B8(&qword_101923610);
  sub_100021540(v6, qword_1019603D8);
  v7 = *(*(a1 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_configuration) + OBJC_IVAR____TtC4Maps45LibraryHomeCollectionViewManagerConfiguration_collectionView);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(sub_1000CE6B8(&qword_101923290));
  v9 = v7;
  v10 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = v10;

  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  return v11;
}

uint64_t sub_1004B3368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = sub_1004B33F0(a1, a2, a3);

  return v8;
}

uint64_t sub_1004B33F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a1;
  v4 = sub_1000CE6B8(&qword_101923610);
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v37 - v5;
  v6 = sub_1000CE6B8(&qword_101923288);
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = sub_1000CE6B8(&unk_101923760);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_1000CE6B8(&unk_101923770);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  sub_10005EB40(a3, &v45);
  sub_1000CE6B8(&unk_101922F98);
  if (swift_dynamicCast())
  {
    v17 = v43;
    v18 = v44;
    if (qword_1019068C0 != -1)
    {
      swift_once();
    }

    v19 = sub_100021540(v13, qword_1019603A8);
    (*(v14 + 16))(v16, v19, v13);
    v45 = v17;
    v46 = v18;
    sub_100014C84(0, &unk_101923620);
    v20 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    sub_10005EB40(a3, &v45);
    if (swift_dynamicCast())
    {
      v21 = v43;
      v22 = v44;
      if (qword_1019068C8 != -1)
      {
        swift_once();
      }

      v23 = sub_100021540(v9, qword_1019603C0);
      (*(v10 + 16))(v12, v23, v9);
      v45 = v21;
      v46 = v22;
      type metadata accessor for LibraryHomeCellWithBadge(0);
      v20 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      sub_10005EB40(a3, &v45);
      type metadata accessor for LibraryListSavedItemCellModel();
      if (swift_dynamicCast())
      {
        v24 = v43;
        if (qword_1019068D8 != -1)
        {
          swift_once();
        }

        v25 = sub_100021540(v6, qword_1019603F0);
        v26 = v40;
        (*(v40 + 16))(v8, v25, v6);
        v45 = v24;
        sub_100014C84(0, &qword_10191A560);
        v27 = v24;
        v20 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        (*(v26 + 8))(v8, v6);
      }

      else
      {
        sub_10005EB40(a3, &v45);
        if (swift_dynamicCast())
        {
          v28 = v43;
          if (qword_1019068D0 != -1)
          {
            swift_once();
          }

          v29 = v39;
          v30 = sub_100021540(v39, qword_1019603D8);
          v32 = v37;
          v31 = v38;
          (*(v38 + 16))(v37, v30, v29);
          v45 = v28;
          LOBYTE(v46) = 0;
          type metadata accessor for LibraryHomeTipkitCollectionViewCell();
          v20 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
          (*(v31 + 8))(v32, v29);
          v33 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v34 = (v20 + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell_actionButtonHandler);
          v35 = *(v20 + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell_actionButtonHandler);
          *v34 = sub_1004B7210;
          v34[1] = v33;

          sub_1000588AC(v35);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v20;
}

uint64_t sub_1004B3A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = sub_1004B3B18(a1, a2, a3);

  return v8;
}

uint64_t sub_1004B3B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a3;
  v4 = sub_1000CE6B8(&qword_101923618);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - v6;
  v8 = sub_1000CE6B8(&qword_101922F88);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v13 = sub_1004B2EE0(v12);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v14 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v9 + 8))(v11, v8);
  v15 = IndexPath.section.getter();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v15 >= *(v14 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 0xD000000000000011;
  v16 = *(v14 + v15 + 32);

  if (v16 <= 1 && v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v18 == v30)
  {

    goto LABEL_13;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if (qword_101906760 != -1)
  {
LABEL_26:
    swift_once();
  }

  v20 = sub_1000CE6B8(&unk_10191C240);
  v21 = sub_100021540(v20, qword_1019600C0);
  (*(v5 + 16))(v7, v21 + *(v20 + 40), v4);
  type metadata accessor for StandardSectionHeaderViewListCell();
  v22 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v5 + 8))(v7, v4);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v31._object = 0x800000010123B5A0;
  v23._countAndFlagsBits = 0x796C746E65636552;
  v23._object = 0xEE00646564644120;
  v24._countAndFlagsBits = v8 + 12;
  v24._object = 0x800000010123B580;
  v31._countAndFlagsBits = v8 + 22;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, qword_1019600D8, v23, v31);
  v26 = *(v22 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title);
  v27 = *(v22 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title + 8);
  *(v22 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title) = v25;
  if (!v27 || (v25._countAndFlagsBits != v26 || v27 != v25._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_100505488();
  }

  return v22;
}

uint64_t sub_1004B3F7C(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = sub_1004B4004(a1, a2, 0, 0);

  return v6;
}

uint64_t sub_1004B4004(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIListSeparatorConfiguration();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for UICollectionLayoutListConfiguration();
  v46 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&qword_101922F88);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = sub_1004B2EE0();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v19 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  result = (*(v15 + 8))(v17, v14);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v19 + 16) > a1)
  {
    v21 = *(v19 + a1 + 32);

    v22 = enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:);
    v23 = *(v9 + 104);
    v23(v11, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v8);
    UICollectionLayoutListConfiguration.init(appearance:)();
    v24 = [objc_opt_self() clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
    UICollectionLayoutListConfiguration.headerTopPadding.setter();
    v23(v11, v22, v8);
    UIListSeparatorConfiguration.init(listAppearance:)();
    UICollectionLayoutListConfiguration.separatorConfiguration.setter();
    v25 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
    UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
    v25(v47, 0);
    sub_1000CD9D4(v43);
    UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
    if (v21 <= 1 && v21)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    (*(v40 + 104))(v39, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v41);
    UICollectionLayoutListConfiguration.headerMode.setter();
LABEL_9:
    sub_100014C84(0, &unk_101910E00);
    v27 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    [v27 contentInsets];
    [v27 setContentInsets:0.0];
    [v27 contentInsets];
    [v27 setContentInsets:?];
    static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
    [v27 contentInsets];
    [v27 setContentInsets:?];
    static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
    [v27 contentInsets];
    [v27 setContentInsets:?];
    if (v21 <= 1 && v21)
    {
      v28 = v42;
    }

    else
    {
      v28 = v42;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v30 = objc_opt_self();
    v31 = [v30 fractionalWidthDimension:1.0];
    [objc_opt_self() estimatedHeight];
    v32 = [v30 estimatedDimension:?];
    v33 = [objc_opt_self() sizeWithWidthDimension:v31 heightDimension:v32];

    v34 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v33 elementKind:UICollectionElementKindSectionHeader alignment:1];
    static MapsDesignConstants.Spacing.textHorizontalPadding.getter();
    [v27 contentInsets];
    v35 = v34;
    [v35 contentInsets];
    [v35 setContentInsets:?];
    [v35 contentInsets];
    [v35 setContentInsets:?];

    sub_1000CE6B8(&qword_101908400);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1011E47B0;
    *(v36 + 32) = v35;
    sub_100014C84(0, &unk_101910E10);
    v37 = v35;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 setBoundarySupplementaryItems:isa];

LABEL_15:
    (*(v46 + 8))(v13, v28);
    return v27;
  }

  __break(1u);
  return result;
}

void sub_1004B480C()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v31 - v1;
  v3 = type metadata accessor for CLServiceSession.Requirement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8)
  {
    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_101960060);
    v31 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v31, v10, "Tipkit is supported only in iPhone. Will not show the tipkit in another devices.", v11, 2u);
    }

    v12 = v31;
  }

  else
  {
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    if (GEOConfigGetBOOL())
    {
      if (qword_1019066E8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100021540(v14, qword_10195FF58);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v32 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_10004DEB8(0xD000000000000025, 0x800000010123B600, &v32);
        _os_log_impl(&_mh_execute_header, v15, v16, "Maps Library Tipkit: %s", v17, 0xCu);
        sub_10004E3D0(v18);
      }

      sub_1004B5FE4(0, 0, v13);
    }

    else
    {
      if (qword_1019066E8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100021540(v19, qword_10195FF58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v32 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_10004DEB8(0xD00000000000002CLL, 0x800000010123B5D0, &v32);
        _os_log_impl(&_mh_execute_header, v20, v21, "Maps Library Tipkit: %s", v22, 0xCu);
        sub_10004E3D0(v23);
      }

      type metadata accessor for CLServiceSession();
      v24 = enum case for CLServiceSession.VisitHistoryRequirement.none(_:);
      v25 = type metadata accessor for CLServiceSession.VisitHistoryRequirement();
      (*(*(v25 - 8) + 104))(v6, v24, v25);
      (*(v4 + 104))(v6, enum case for CLServiceSession.Requirement.visitHistory(_:), v3);
      v26 = CLServiceSession.__allocating_init(requirement:)();
      v27 = type metadata accessor for MapsWarmingSheetHelper();
      v28 = swift_allocObject();
      v28[2] = sub_10040DE70;
      v28[3] = 0;
      v28[4] = sub_1004B72CC;
      v28[5] = v13;
      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v2, 1, 1, v29);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = xmmword_10120A990;
      *(v30 + 48) = 0xEE0074696B706954;
      *(v30 + 56) = v26;
      *(v30 + 64) = v27;
      *(v30 + 72) = sub_1004B72D4;
      *(v30 + 80) = v28;
      sub_10050D2C8(0, 0, v2, &unk_10120AAC0, v30);
    }
  }
}

id sub_1004B4E4C()
{
  ObjectType = swift_getObjectType();
  [*(*&v0[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_libraryCountsManager] + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observers) unregisterObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004B4FE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_1000CE6B8(&qword_101922F88);
  v48 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v48 - v4;
  sub_1000CE6B8(&qword_101922F90);
  sub_1004A4300();
  sub_1000414C8(&qword_1019232A0, &qword_101922F90);
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_1016010F8);
  sub_1000CE6B8(&qword_10191AE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D40;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 42) = 2;
  *(inited + 48) = 1;
  *(inited + 56) = 0;
  *(inited + 58) = 2;
  *(inited + 64) = 2;
  *(inited + 72) = 0;
  *(inited + 74) = 2;
  if (MapsFeature_IsEnabled_HikingiOS())
  {

    inited = swift_allocObject();
    *(inited + 16) = xmmword_1011E7D60;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 42) = 2;
    *(inited + 48) = 1;
    *(inited + 56) = 0;
    *(inited + 58) = 2;
    *(inited + 64) = 2;
    *(inited + 72) = 0;
    *(inited + 74) = 2;
    *(inited + 80) = 3;
    *(inited + 88) = 0;
    *(inited + 90) = 2;
  }

  LOWORD(v1) = *(v1 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesCellState + 8);
  if ((v1 & 0xFF00) == 0x300 || (v1 & 0xFF00) == 0x500)
  {
    goto LABEL_7;
  }

  v7 = *(v2 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesCellState);
  v9 = *(inited + 16);
  v8 = *(inited + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    *(inited + 16) = v10;
    v11 = inited + 16 * v9;
    *(v11 + 32) = v7;
    *(v11 + 40) = v1;
    *(v11 + 42) = 0;
LABEL_7:
    if ((*(v2 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesTipkitAction + 8) & 1) == 0 && *(v2 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_showVisitedPlacesTipKit) == 1)
    {
      v12 = *(v2 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesTipkitAction);
      LOBYTE(v59) = 0;
      NSDiffableDataSourceSnapshot.insertSections(_:afterSection:)();
      v55 = _swiftEmptyArrayStorage;
      sub_10051128C(0, 1, 0);
      v13 = v55;
      v57 = &type metadata for LibraryTipkitCellModel;
      v58 = sub_1004B6630();
      *&v56 = v12;
      sub_10005E7BC(&v56, &v59);
      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        sub_10051128C((v14 > 1), v15 + 1, 1);
        v13 = v55;
      }

      v13[2] = v15 + 1;
      v16 = &v13[5 * v15];
      v17 = v59;
      v18 = v60;
      v16[8] = v61;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      LOBYTE(v59) = 3;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }

    v50 = v2;
    v19 = *(inited + 16);
    v53 = v3;
    v52 = v5;
    v51 = inited;
    if (v19)
    {
      v55 = _swiftEmptyArrayStorage;
      sub_10051128C(0, v19, 0);
      v20 = v55;
      v21 = (inited + 42);
      do
      {
        v22 = *(v21 - 10);
        v23 = *(v21 - 1);
        if (*v21)
        {
          if (*v21 == 1)
          {
            v57 = &type metadata for LibraryTipkitCellModel;
            v58 = sub_1004B6630();
            *&v56 = v22;
          }

          else if (v22 > 1)
          {
            v57 = &type metadata for LibraryListSavedItemsManagementSectionCellModel;
            v58 = sub_1004B6684();
            *&v56 = 0;
            if (v22 ^ 2 | v23)
            {
              WORD4(v56) = 2048;
            }

            else
            {
              WORD4(v56) = 1792;
            }
          }

          else
          {
            v57 = &type metadata for LibraryListSavedItemsManagementSectionCellModel;
            v58 = sub_1004B6684();
            *&v56 = 0;
            if (v22 | v23)
            {
              WORD4(v56) = 1536;
            }

            else
            {
              WORD4(v56) = 1280;
            }
          }
        }

        else
        {
          if (qword_1019067E0 != -1)
          {
            swift_once();
          }

          if (byte_1019601D1)
          {
            v57 = &type metadata for LibraryListBadgedCellModel;
            v24 = sub_1004B66D8();
          }

          else
          {
            v57 = &type metadata for LibraryListSavedItemsManagementSectionCellModel;
            v24 = sub_1004B6684();
          }

          v58 = v24;
          *&v56 = v22;
          WORD4(v56) = v23;
        }

        sub_10005E7BC(&v56, &v59);
        v55 = v20;
        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          sub_10051128C((v25 > 1), v26 + 1, 1);
          v20 = v55;
        }

        v21 += 16;
        v20[2] = v26 + 1;
        v27 = &v20[5 * v26];
        v28 = v59;
        v29 = v60;
        v27[8] = v61;
        *(v27 + 2) = v28;
        *(v27 + 3) = v29;
        --v19;
      }

      while (v19);
      v3 = v53;
    }

    LOBYTE(v59) = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v2 = v50;
    v7 = *(v50 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_recentsDataProvider);
    swift_getKeyPath();
    *&v59 = v7;
    sub_1004B72EC(&qword_10190BCE0, type metadata accessor for LibraryRecentsDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *(v7 + 2);
    *&v59 = _swiftEmptyArrayStorage;
    v9 = v30 & 0xFFFFFFFFFFFFFF8;
    if (v30 >> 62)
    {
LABEL_61:
      inited = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      inited = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = 0;
    v54 = _swiftEmptyArrayStorage;
    while (inited != v31)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v3 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v31 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v32 = *(v30 + 8 * v31 + 32);
        swift_unknownObjectRetain();
        v3 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      v7 = type metadata accessor for LibraryListSavedItemCellModel();
      swift_getObjectType();
      v33 = sub_1004BE674(v32, v7);
      ++v31;
      if (v33)
      {
        *&v33[OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_actionHandler + 8] = &off_10161C120;
        swift_unknownObjectWeakAssign();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v54 = v59;
        v31 = v3;
      }
    }

    if (v54 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v51;
      if (!v5)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v5 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v51;
      if (!v5)
      {
        goto LABEL_63;
      }
    }

    *&v56 = _swiftEmptyArrayStorage;
    v1 = &v56;
    sub_10051128C(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_65:
    inited = sub_10035883C((v8 > 1), v10, 1, inited);
  }

  v34 = 0;
  v35 = v56;
  v36 = v54;
  v37 = v54 & 0xC000000000000001;
  do
  {
    if (v37)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v38 = *(v36 + 8 * v34 + 32);
    }

    v39 = v38;
    v40 = type metadata accessor for LibraryListSavedItemCellModel();
    v41 = sub_1004B72EC(&qword_1019232A8, type metadata accessor for LibraryListSavedItemCellModel);
    *&v56 = v35;
    v43 = *(v35 + 16);
    v42 = *(v35 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_10051128C((v42 > 1), v43 + 1, 1);
      v36 = v54;
      v35 = v56;
    }

    ++v34;
    *(v35 + 16) = v43 + 1;
    v44 = v35 + 40 * v43;
    *(v44 + 32) = v39;
    *(v44 + 40) = v59;
    *(v44 + 56) = v40;
    *(v44 + 64) = v41;
  }

  while (v5 != v34);
LABEL_63:

  LOBYTE(v59) = 1;
  v45 = v53;
  v46 = v52;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  return (*(v48 + 32))(v49, v46, v45);
}

void sub_1004B59AC(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101922F88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-v4];
  if ((a1 - 1) >= 2)
  {
    if (a1)
    {
      v19 = a1;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    if (qword_1019066E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_10195FF58);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "User dismissed the tipkit by tapping on X button", v12, 2u);
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = *&Strong[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_tipkitActionHandler];
      if (v8)
      {
        sub_1000CD9D4(*&Strong[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_tipkitActionHandler]);

        v8(a1);
        sub_1000588AC(v8);
      }

      else
      {
      }
    }
  }

  GEOConfigSetBOOL();
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_showVisitedPlacesTipKit];
    v13[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_showVisitedPlacesTipKit] = 0;
    if (v14)
    {
      v15 = v13;
      v16 = sub_1004B4FE8(v5);
      v17 = sub_1004B2EE0(v16);
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }
}

uint64_t sub_1004B5C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1004B5D08, v6, v5);
}

uint64_t sub_1004B5D08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v0[10] = *(Strong + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesCellStateProvider);

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1004B5E10;

    return sub_10040C9DC();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1004B5E10(uint64_t a1, __int16 a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);

  return _swift_task_switch(sub_1004B5F60, v6, v5);
}

uint64_t sub_1004B5F60()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 104);

  sub_1004B2CE4(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004B5FE4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  aBlock[4] = sub_1004B72E0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_10161CB88;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1004B72EC(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_1000414C8(&qword_1019097E0, &unk_10190B500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

void sub_1004B62E8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1000CE6B8(&qword_101922F88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = &Strong[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesTipkitAction];
    *v10 = a2;
    v10[8] = a2 == 0;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_showVisitedPlacesTipKit];
    v11[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_showVisitedPlacesTipKit] = a3 & 1;
    if (v12 == (a3 & 1))
    {
    }

    else
    {
      v13 = v11;
      sub_1004B4FE8(v8);
      v14 = sub_1004B2EE0();
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_1004B64D0()
{
  v0 = sub_1000CE6B8(&qword_101922F88);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  sub_1004B4FE8(&v6 - v2);
  v4 = sub_1004B2EE0();
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1004B6630()
{
  result = qword_1019235F8;
  if (!qword_1019235F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019235F8);
  }

  return result;
}

unint64_t sub_1004B6684()
{
  result = qword_101923600;
  if (!qword_101923600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923600);
  }

  return result;
}

unint64_t sub_1004B66D8()
{
  result = qword_101923608;
  if (!qword_101923608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923608);
  }

  return result;
}

char *sub_1004B672C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v42 = sub_1000CE6B8(&qword_101922F88);
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v41 - v6;
  v8 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = &v2[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesCellState];
  *v11 = 0;
  *(v11 + 4) = 1280;
  v12 = &v2[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesTipkitAction];
  *v12 = 0;
  v12[8] = 1;
  v2[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_showVisitedPlacesTipKit] = 0;
  v13 = &v2[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_tipkitActionHandler];
  *v13 = 0;
  v13[1] = 0;
  *&v2[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager____lazy_storage___diffableDataSource] = 0;
  *&v2[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager____lazy_storage___compositionalLayout] = 0;
  *&v2[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_configuration] = a1;
  type metadata accessor for LibraryRecentsDataProvider();
  swift_allocObject();
  v41 = a1;
  *&v2[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_recentsDataProvider] = sub_10049B968();
  if (qword_1019068B8 != -1)
  {
    swift_once();
  }

  v14 = static LibraryItemsCountManager.shared;
  *&v2[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_libraryCountsManager] = static LibraryItemsCountManager.shared;
  type metadata accessor for LibraryVisitedPlacesCellStateProvider();
  v15 = swift_allocObject();
  v16 = v14;
  swift_defaultActor_initialize();
  *&v2[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesCellStateProvider] = v15;
  type metadata accessor for MapsSyncStore();
  v17 = static MapsSyncStore.sharedStore.getter();
  v18 = type metadata accessor for LibraryDataOperationsProvider();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v17;
  v46.receiver = v19;
  v46.super_class = v18;
  v20 = objc_msgSendSuper2(&v46, "init");
  v21 = type metadata accessor for LibraryCellActionHandler();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v22[OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_dataOperationsProvider] = v20;
  *&v22[OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_analyticsInfo] = 137;
  v45.receiver = v22;
  v45.super_class = v21;
  *&v2[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_cellActionHandler] = objc_msgSendSuper2(&v45, "init");
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v44, "init");
  v24 = *(*&v23[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_libraryCountsManager] + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observers);
  v25 = v23;
  [v24 registerObserver:v25];
  if (qword_1019068C0 != -1)
  {
    swift_once();
  }

  v26 = sub_1000CE6B8(&unk_101923770);
  sub_100021540(v26, qword_1019603A8);
  if (qword_1019068D8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000CE6B8(&qword_101923288);
  sub_100021540(v27, qword_1019603F0);
  if (qword_101906760 != -1)
  {
    swift_once();
  }

  v28 = sub_1000CE6B8(&unk_10191C240);
  sub_100021540(v28, qword_1019600C0);
  if (qword_1019068C8 != -1)
  {
    swift_once();
  }

  v29 = sub_1000CE6B8(&unk_101923760);
  sub_100021540(v29, qword_1019603C0);
  if (qword_1019068D0 != -1)
  {
    swift_once();
  }

  v30 = sub_1000CE6B8(&qword_101923610);
  sub_100021540(v30, qword_1019603D8);
  v31 = *&v25[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_cellActionHandler];
  v32 = &v41[OBJC_IVAR____TtC4Maps45LibraryHomeCollectionViewManagerConfiguration_cellActionHandlingUICoordinator];
  swift_unknownObjectWeakLoadStrong();
  *(v31 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator + 8) = *(v32 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v33 = *&v25[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_recentsDataProvider];
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v41 - 4) = v33;
  *(&v41 - 3) = v25;
  *(&v41 - 2) = &off_10161CA60;
  v43 = v33;
  sub_1004B72EC(&qword_10190BCE0, type metadata accessor for LibraryRecentsDataProvider);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v10, 1, 1, v35);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v37 = static MainActor.shared.getter();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = &protocol witness table for MainActor;
  v38[4] = v36;

  sub_10020AAE4(0, 0, v10, &unk_10120AAB8, v38);

  sub_1004B480C();
  sub_1004B4FE8(v7);
  v39 = sub_1004B2EE0();
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  (*(v5 + 8))(v7, v42);
  return v25;
}

uint64_t sub_1004B6E64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&qword_101922F88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-v6];
  v8 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v8 - 8);
  v10 = &v22[-v9];
  v11 = (v2 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesCellState);
  v12 = *(v2 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_visitedPlacesCellState + 8);
  if ((v12 & 0xFF00) == 0x500)
  {
    if ((*(a1 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount + 8) & 1) == 0)
    {
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v14;

      sub_10020AAE4(0, 0, v10, &unk_10120AA50, v16);
    }
  }

  else
  {
    if ((HIBYTE(v12) - 3) >= 2u)
    {
      v11 = (a1 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount);
      v12 = *(a1 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount + 8) | 0x200;
    }

    sub_1004B2CE4(*v11, v12);
  }

  v17 = sub_1004B2EE0();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v18 = *(v2 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager____lazy_storage___diffableDataSource);
  v22[15] = 0;
  v19 = v18;
  v20 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v20);

  dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1004B7144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1004B5C70(a1, v4, v5, v6);
}

uint64_t sub_1004B7218(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1004B5C70(a1, v4, v5, v6);
}

uint64_t sub_1004B72EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B733C()
{
  if (HIBYTE(*(v0 + OBJC_IVAR____TtC4Maps34LibraryListSavedItemManagementItem_type + 8)) - 5 > 4u)
  {
    _StringGuts.grow(_:)(16);
    v2._countAndFlagsBits = 0x5064657469736956;
    v2._object = 0xEE007C736563616CLL;
    String.append(_:)(v2);
    _print_unlocked<A, B>(_:_:)();
  }

  else
  {
    _print_unlocked<A, B>(_:_:)();
    v1._countAndFlagsBits = 41;
    v1._object = 0xE100000000000000;
    String.append(_:)(v1);
  }

  return 0;
}

Swift::Int sub_1004B7454()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004B752C()
{
  String.hash(into:)();
}

Swift::Int sub_1004B75F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004B76C4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BECE0(*a1);
  *a2 = result;
  return result;
}

void sub_1004B76F4(unint64_t *a1@<X8>)
{
  v2 = 0xED00006E6F697463;
  v3 = 0x655374696B706974;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001012169A0;
  }

  v4 = 0x8000000101216960;
  v5 = 0xD000000000000019;
  if (*v1)
  {
    v4 = 0x8000000101216980;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1004B7788()
{
  v0 = sub_1000CE6B8(&unk_101923770);
  sub_100021578(v0, qword_1019603A8);
  sub_100021540(v0, qword_1019603A8);
  sub_100014C84(0, &unk_101923620);
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_1004B7820(void *a1, uint64_t a2, uint64_t a3)
{
  v89 = a1;
  v4 = type metadata accessor for UIListContentConfiguration();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = &v81[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000CE6B8(&unk_101923780);
  __chkstk_darwin(v6 - 8);
  v8 = &v81[-v7];
  v85 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v9 = *(v85 - 8);
  __chkstk_darwin(v85);
  v11 = &v81[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for UICellAccessory.DisplayedState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v81[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a3;
  v17 = *(a3 + 8);
  v90 = 0;
  v91 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v90 = 0xD000000000000014;
  v91 = 0x800000010123BE40;
  v82 = v17;
  v18 = v17 >> 8;
  v83 = v16;
  if (v17 >> 8 <= 6)
  {
    v20 = 0x64656E6E6950;
    if (v18 == 5)
    {
      v19 = 0xE600000000000000;
      goto LABEL_13;
    }

    if (v18 == 6)
    {
      v19 = 0xE600000000000000;
      v20 = 0x736563616C50;
      goto LABEL_13;
    }
  }

  else
  {
    switch(v18)
    {
      case 7:
        v19 = 0xE600000000000000;
        v20 = 0x736564697547;
        goto LABEL_13;
      case 8:
        v19 = 0xE600000000000000;
        v20 = 0x736574756F52;
        goto LABEL_13;
      case 9:
        v19 = 0xED00006465646441;
        v20 = 0x796C746E65636552;
        goto LABEL_13;
    }
  }

  v19 = 0xED0000736563616CLL;
  v20 = 0x5064657469736956;
LABEL_13:
  v21 = v19;
  String.append(_:)(*&v20);

  v22 = String._bridgeToObjectiveC()();

  [v89 setAccessibilityIdentifier:v22];

  sub_1000CE6B8(&qword_101922560);
  type metadata accessor for UICellAccessory();
  v23 = swift_allocObject();
  v84 = xmmword_1011E1D30;
  *(v23 + 16) = xmmword_1011E1D30;
  (*(v13 + 104))(v15, enum case for UICellAccessory.DisplayedState.always(_:), v12);
  v24 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v9 + 8))(v11, v85);
  (*(v13 + 8))(v15, v12);
  UICollectionViewListCell.accessories.setter();
  v25 = v86;
  static UIListContentConfiguration.valueCell()();
  UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.setter();
  v26 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v27 + 8) = 0x4030000000000000;
  v26(&v90, 0);
  if (qword_1019068B8 != -1)
  {
    swift_once();
  }

  v28 = static LibraryItemsCountManager.shared;
  v29 = objc_allocWithZone(type metadata accessor for HomeListLibraryCountsDataProvider());
  v30 = sub_10005DC30(v28);
  v31 = [objc_opt_self() configurationWithWeight:5];
  v32 = v31;
  if (v18 <= 6)
  {
    if (v18 == 5)
    {
      v63 = v31;
      v64 = String._bridgeToObjectiveC()();
      v65 = [objc_opt_self() systemImageNamed:v64 withConfiguration:v63];

      UIListContentConfiguration.image.setter();
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v41.super.isa = qword_1019600D8;
      v98._object = 0x800000010123C0C0;
      v66._object = 0x800000010123C0A0;
      v98._countAndFlagsBits = 0xD000000000000036;
      v66._countAndFlagsBits = 0xD000000000000014;
      v67._countAndFlagsBits = 0x64656E6E6950;
      v67._object = 0xE600000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, qword_1019600D8, v67, v98);
      UIListContentConfiguration.text.setter();
      v68 = *(*&v30[OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_countsManager] + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts);
      if (v68)
      {
        v45 = *(v68 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_pinnedItemsCount);
        v80 = 0x800000010123C100;
        v54 = 0xD000000000000018;
        v55 = 0x800000010123BEE0;
        v56 = 0xD00000000000004BLL;
        goto LABEL_42;
      }

      goto LABEL_47;
    }

    if (v18 != 6)
    {
LABEL_43:
      v71 = v31;
      v72 = String._bridgeToObjectiveC()();
      v73 = [objc_opt_self() _systemImageNamed:v72 withConfiguration:v71];

      UIListContentConfiguration.image.setter();
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v99._object = 0x800000010123BDF0;
      v74._countAndFlagsBits = 0x2064657469736956;
      v74._object = 0xEE00736563616C50;
      v75._countAndFlagsBits = 0xD00000000000001CLL;
      v75._object = 0x800000010123BDD0;
      v99._countAndFlagsBits = 0xD00000000000002FLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, qword_1019600D8, v74, v99);
      UIListContentConfiguration.text.setter();
      sub_10040C680(v83, v82);
      goto LABEL_46;
    }

    v38 = v31;
    v39 = String._bridgeToObjectiveC()();
    v40 = [objc_opt_self() _systemImageNamed:v39 withConfiguration:v38];

    UIListContentConfiguration.image.setter();
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v41.super.isa = qword_1019600D8;
    v95._object = 0x800000010123C010;
    v42._countAndFlagsBits = 0x6C50206465766153;
    v42._object = 0xEC00000073656361;
    v43._countAndFlagsBits = 0xD00000000000001ALL;
    v43._object = 0x800000010123BFF0;
    v95._countAndFlagsBits = 0xD000000000000035;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, qword_1019600D8, v42, v95);
    UIListContentConfiguration.text.setter();
    v44 = *(*&v30[OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_countsManager] + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts);
    if (!v44)
    {
      goto LABEL_47;
    }

    v45 = *(v44 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_placesCount);
    v46 = "Secondary label with count for button that links to a list of places";
LABEL_33:
    v80 = (v46 - 32) | 0x8000000000000000;
    v54 = 0xD000000000000018;
    v55 = 0x800000010123BEE0;
    v56 = 0xD000000000000044;
LABEL_42:
    v69._countAndFlagsBits = 6581285;
    v69._object = 0xE300000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v54, 0, v41, v69, *&v56);
    sub_1000CE6B8(&unk_10190D5C0);
    v70 = swift_allocObject();
    *(v70 + 16) = v84;
    *(v70 + 56) = &type metadata for Int;
    *(v70 + 64) = &protocol witness table for Int;
    *(v70 + 32) = v45;
    static String.localizedStringWithFormat(_:_:)();

LABEL_46:
    UIListContentConfiguration.secondaryText.setter();
    goto LABEL_47;
  }

  if (v18 == 7)
  {
    v47 = v31;
    v48 = String._bridgeToObjectiveC()();
    v49 = [objc_opt_self() systemImageNamed:v48 withConfiguration:v47];

    UIListContentConfiguration.image.setter();
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v41.super.isa = qword_1019600D8;
    v96._object = 0x800000010123BF70;
    v50._countAndFlagsBits = 0x736564697547;
    v51._object = 0x800000010123BF50;
    v96._countAndFlagsBits = 0xD00000000000002FLL;
    v51._countAndFlagsBits = 0xD000000000000014;
    v50._object = 0xE600000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v51, 0, qword_1019600D8, v50, v96);
    UIListContentConfiguration.text.setter();
    v52 = *(*&v30[OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_countsManager] + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts);
    if (!v52)
    {
      goto LABEL_47;
    }

    v53 = (v52 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_guidesCount);
    if (v53[1])
    {
      goto LABEL_47;
    }

    v45 = *v53;
    v46 = "Secondary label with count for button that links to a list of guides";
    goto LABEL_33;
  }

  if (v18 != 8)
  {
    if (v18 == 9)
    {
      v33 = v31;
      v34 = String._bridgeToObjectiveC()();
      v35 = [objc_opt_self() _systemImageNamed:v34 withConfiguration:v33];

      UIListContentConfiguration.image.setter();
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v94._object = 0x800000010123BDF0;
      v36._countAndFlagsBits = 0x796C746E65636552;
      v36._object = 0xEE00646564644120;
      v37._countAndFlagsBits = 0xD00000000000001CLL;
      v37._object = 0x800000010123BE60;
      v94._countAndFlagsBits = 0xD00000000000002FLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, qword_1019600D8, v36, v94);
      UIListContentConfiguration.text.setter();
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  v57 = v31;
  v58 = String._bridgeToObjectiveC()();
  v59 = [objc_opt_self() _systemImageNamed:v58 withConfiguration:v57];

  UIListContentConfiguration.image.setter();
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v41.super.isa = qword_1019600D8;
  v97._object = 0x800000010123BEA0;
  v60._countAndFlagsBits = 0x736574756F52;
  v61._object = 0x800000010123BE80;
  v97._countAndFlagsBits = 0xD000000000000035;
  v61._countAndFlagsBits = 0xD000000000000014;
  v60._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v61, 0, qword_1019600D8, v60, v97);
  UIListContentConfiguration.text.setter();
  v62 = *(*&v30[OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_countsManager] + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts);
  if (v62)
  {
    v45 = *(v62 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_routesCount);
    v80 = 0x800000010123BF00;
    v54 = 0xD000000000000018;
    v55 = 0x800000010123BEE0;
    v56 = 0xD00000000000004ALL;
    goto LABEL_42;
  }

LABEL_47:
  v76 = v88;
  v92 = v88;
  v93 = &protocol witness table for UIListContentConfiguration;
  v77 = sub_10001A848(&v90);
  v78 = v87;
  (*(v87 + 16))(v77, v25, v76);
  UICollectionViewCell.contentConfiguration.setter();

  return (*(v78 + 8))(v25, v76);
}

void sub_1004B863C(uint64_t a1, Swift::UInt a2, unsigned int a3)
{
  v3 = BYTE1(a3);
  if (BYTE1(a3) <= 6u)
  {
    if (BYTE1(a3) == 5)
    {
LABEL_14:
      v4 = 0;
      goto LABEL_15;
    }

    if (BYTE1(a3) == 6)
    {
      v4 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    switch(BYTE1(a3))
    {
      case 7u:
        v4 = 2;
        goto LABEL_15;
      case 8u:
        v4 = 3;
        goto LABEL_15;
      case 9u:
        v4 = 5;
LABEL_15:
        Hasher._combine(_:)(v4);
        return;
    }
  }

  Hasher._combine(_:)(4uLL);
  if (v3 == 3)
  {
    goto LABEL_14;
  }

  if (v3 == 4)
  {
    Hasher._combine(_:)(2uLL);
    goto LABEL_14;
  }

  Hasher._combine(_:)(1uLL);
  if (a3)
  {
    Hasher._combine(_:)(0);
    if (v3 != 2)
    {
LABEL_18:
      Hasher._combine(_:)(1u);
      v4 = (a3 >> 8) & 1;
      goto LABEL_15;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
    if (v3 != 2)
    {
      goto LABEL_18;
    }
  }

  Hasher._combine(_:)(0);
}

Swift::Int sub_1004B8738()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1004B863C(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1004B8794()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1004B863C(v4, v1, v2);
  return Hasher._finalize()();
}

BOOL sub_1004B87E0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = v5 >> 8;
  if (v5 >> 8 <= 6)
  {
    if (v8 == 5)
    {
      return (v7 & 0xFF00) == 0x500;
    }

    if (v8 == 6)
    {
      return (v7 & 0xFF00) == 0x600;
    }
  }

  else
  {
    switch(v8)
    {
      case 7u:
        return (v7 & 0xFF00) == 0x700;
      case 8u:
        return (v7 & 0xFF00) == 0x800;
      case 9u:
        return (v7 & 0xFF00) == 0x900;
    }
  }

  if ((v7 >> 8) - 5 < 5)
  {
    return 0;
  }

  return sub_10040E358(v4, v5, v6, v7);
}

uint64_t sub_1004B889C()
{
  v0 = sub_1000CE6B8(&unk_101923760);
  sub_100021578(v0, qword_1019603C0);
  sub_100021540(v0, qword_1019603C0);
  type metadata accessor for LibraryHomeCellWithBadge(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_1004B8924(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v4 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIListContentConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a3;
  v11 = *(a3 + 8);
  static UIListContentConfiguration.valueCell()();
  UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.setter();
  v12 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v13 + 8) = 0x4030000000000000;
  v12(v26, 0);
  v14 = [objc_opt_self() configurationWithWeight:5];
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() _systemImageNamed:v15 withConfiguration:v14];

  UIListContentConfiguration.image.setter();
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v17.super.isa = qword_1019600D8;
  v27._object = 0x800000010123BDF0;
  v18._countAndFlagsBits = 0x2064657469736956;
  v18._object = 0xEE00736563616C50;
  v19._countAndFlagsBits = 0xD00000000000001CLL;
  v19._object = 0x800000010123BDD0;
  v27._countAndFlagsBits = 0xD00000000000002FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, qword_1019600D8, v18, v27);
  UIListContentConfiguration.text.setter();
  sub_10040C680(v24, v11);
  UIListContentConfiguration.secondaryText.setter();
  (*(v8 + 16))(v6, v10, v7);
  v28._object = 0x80000001012337F0;
  v20._object = 0x80000001012337D0;
  v28._countAndFlagsBits = 0xD00000000000003ELL;
  v20._countAndFlagsBits = 0xD00000000000001BLL;
  v21._countAndFlagsBits = 1096041794;
  v21._object = 0xE400000000000000;
  *&v6[*(v4 + 20)] = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v17, v21, v28);
  v22 = String._bridgeToObjectiveC()();
  [v25 setAccessibilityIdentifier:v22];

  sub_100474750(v6);
  sub_1004764E4(v6);
  return (*(v8 + 8))(v10, v7);
}

void sub_1004B8CBC(uint64_t a1, Swift::UInt a2, unsigned int a3)
{
  Hasher._combine(_:)(0);
  if (BYTE1(a3) == 3)
  {
    goto LABEL_4;
  }

  if (BYTE1(a3) == 4)
  {
    Hasher._combine(_:)(2uLL);
LABEL_4:
    v5 = 0;
LABEL_5:
    Hasher._combine(_:)(v5);
    return;
  }

  Hasher._combine(_:)(1uLL);
  if (a3)
  {
    Hasher._combine(_:)(0);
    if (BYTE1(a3) != 2)
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      v5 = (a3 >> 8) & 1;
      goto LABEL_5;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
    if (BYTE1(a3) != 2)
    {
      goto LABEL_8;
    }
  }

  Hasher._combine(_:)(0);
}

Swift::Int sub_1004B8D68(Swift::UInt a1, unsigned int a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  if (BYTE1(a2) == 3)
  {
    goto LABEL_4;
  }

  if (BYTE1(a2) == 4)
  {
    Hasher._combine(_:)(2uLL);
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  Hasher._combine(_:)(1uLL);
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
  }

  if (BYTE1(a2) == 2)
  {
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  v4 = (a2 >> 8) & 1;
LABEL_5:
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

Swift::Int sub_1004B8E5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v3 = v2 >> 8;
  if (v2 >> 8 == 3)
  {
    goto LABEL_4;
  }

  if (v3 == 4)
  {
    Hasher._combine(_:)(2uLL);
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  Hasher._combine(_:)(1uLL);
  if (v2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  if (v3 == 2)
  {
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  v4 = (v2 >> 8) & 1;
LABEL_5:
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_1004B8F4C()
{
  v0 = sub_1000CE6B8(&qword_101923610);
  sub_100021578(v0, qword_1019603D8);
  sub_100021540(v0, qword_1019603D8);
  type metadata accessor for LibraryHomeTipkitCollectionViewCell();
  return UICollectionView.CellRegistration.init(handler:)();
}

void sub_1004B8FD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*a3 - 1) <= 1)
  {
    sub_100384DEC(*a3);
  }
}

Swift::Int sub_1004B9008()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1004B905C()
{
  v1 = *v0;
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1004B909C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1004B90EC()
{
  v0 = sub_1000CE6B8(&qword_101923288);
  sub_100021578(v0, qword_1019603F0);
  sub_100021540(v0, qword_1019603F0);
  sub_100014C84(0, &qword_10191A560);
  type metadata accessor for LibraryListSavedItemCellModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

void sub_1004B9188(void *a1, uint64_t a2, void *a3)
{
  v4 = *a3 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item;
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (v7)
  {
    if (v7 == 1)
    {
      [a1 setViewModel:{objc_msgSend(objc_opt_self(), "cellModelForCollection:", v6)}];
      swift_unknownObjectRelease();
      v8 = v6;
      v9 = v5;
      v10 = 1;
    }

    else
    {
      [a1 setViewModel:sub_1004B948C(v6)];
      swift_unknownObjectRelease();
      v8 = v6;
      v9 = v5;
      v10 = 2;
    }

    sub_100200814(v8, v9, v10);
  }

  else
  {
    v11 = v6;
    swift_unknownObjectRetain();
    [a1 setViewModel:{sub_1004B92DC(v11, v5)}];

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

id sub_1004B92DC(uint64_t a1, void *a2)
{
  v4 = sub_1004B96B4(a2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_opt_self();
  v7 = [a2 customName];
  v8 = [a2 styleAttributes];
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1004BE540;
  *(v9 + 24) = v5;
  v13[4] = sub_1004BE55C;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1004BAAA0;
  v13[3] = &unk_10161CE40;
  v10 = _Block_copy(v13);

  v11 = [v6 libraryCellModelForMapItem:a1 customName:v7 styleAttributes:v8 thirdLineViewModel:v4 menuProvider:v10];

  _Block_release(v10);

  return v11;
}

id sub_1004B948C(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = [a1 userProvidedNotes];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [a1 userProvidedNotes];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String._mapsui_quotedForLocale.getter();

    v9 = objc_allocWithZone(PlaceContextViewModel);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v9 initWithLibraryContextForPlaceNote:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1004BEF08;
  *(v13 + 24) = v2;
  v17[4] = sub_1004BEF0C;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1004BAAA0;
  v17[3] = &unk_10161D020;
  v14 = _Block_copy(v17);

  v15 = [v12 cellModelForRouteData:a1 thirdLineViewModel:v11 menuProvider:v14];
  _Block_release(v14);

  return v15;
}

unint64_t sub_1004B96B4(void *a1)
{
  v1 = [a1 placeItemNote];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String._mapsui_nilIfEmpty.getter();
    v4 = v3;

    if (v4)
    {
      String._mapsui_quotedForLocale.getter();

      v5 = objc_allocWithZone(PlaceContextViewModel);
      v6 = String._bridgeToObjectiveC()();

      v7 = [v5 initWithLibraryContextForPlaceNote:v6];

      return v7;
    }
  }

  type metadata accessor for FavoriteItemWrapper();
  if (swift_dynamicCastClass())
  {
    return [objc_allocWithZone(PlaceContextViewModel) initWithLibraryContextForPinnedItem];
  }

  type metadata accessor for CollectionPlaceItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    swift_unknownObjectRetain();
    if ((dispatch thunk of CollectionPlaceItem.type.getter() & 1) == 0)
    {
      result = dispatch thunk of CollectionItem.fetchCollections()();
      if (result >> 62)
      {
        v18 = result;
        v19 = _CocoaArrayWrapper.endIndex.getter();
        result = v18;
        if (v19)
        {
          goto LABEL_11;
        }
      }

      else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_11:
        if ((result & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v9 = *(result + 32);
        }

        v10 = v9;

        dispatch thunk of Collection.title.getter();
        if (v11)
        {
          v12 = objc_allocWithZone(PlaceContextViewModel);
          v13 = String._bridgeToObjectiveC()();

          v14 = [v12 initWithLibraryContextForUserCollectionName:v13];
          swift_unknownObjectRelease();

          return v14;
        }

LABEL_22:
        swift_unknownObjectRelease();
        return 0;
      }

      goto LABEL_22;
    }

    if (qword_1019068E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = objc_allocWithZone(PlaceContextViewModel);

    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 initWithLibraryContextForUserCollectionName:v16];
    swift_unknownObjectRelease();

    return v17;
  }

  return result;
}

UIMenu *sub_1004B99A8()
{
  v1 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v1 - 8);
  __chkstk_darwin(v2);
  v6 = *(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item);
  v5 = *(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 8);
  if (*(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16))
  {
    if (*(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16) == 1)
    {
      return _swiftEmptyArrayStorage;
    }

    sub_1000CE6B8(&qword_101908400);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1011E47C0;
    v115 = sub_100014C84(0, &unk_101923740);
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v113.super.isa = qword_1019600D8;
    v16._countAndFlagsBits = 0xD000000000000014;
    v121._object = 0x800000010123B750;
    v17._countAndFlagsBits = 0x6F69746365726944;
    v16._object = 0x800000010123B730;
    v121._countAndFlagsBits = 0xD000000000000036;
    v17._object = 0xEA0000000000736ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, qword_1019600D8, v17, v121);
    v18 = String._bridgeToObjectiveC()();
    *&v112 = objc_opt_self();
    v19 = [v112 systemImageNamed:v18];

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = v6;
    sub_1002007B0(v6, v5, 2);
    v22 = v0;
    v23 = v6;
    v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v25 = String._bridgeToObjectiveC()();
    [v24 setAccessibilityIdentifier:v25];

    v26 = v116;
    *(v116 + 32) = v24;
    v117 = v22;
    v26[5].super.super.isa = sub_1004BD410();
    v114 = sub_100014C84(0, &qword_101926880);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1011E4FD0;
    v28._countAndFlagsBits = 0xD000000000000010;
    v122._object = 0x800000010123B830;
    v29._object = 0x800000010123B7F0;
    v28._object = 0x800000010123B810;
    v122._countAndFlagsBits = 0xD00000000000003DLL;
    v29._countAndFlagsBits = 0xD00000000000001ALL;
    isa = v113.super.isa;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v113, v28, v122);
    v31 = String._bridgeToObjectiveC()();
    v32 = v112;
    v33 = [v112 systemImageNamed:v31];

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = 1;
    *(v35 + 32) = v23;
    v36 = v23;
    v37 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v38 = String._bridgeToObjectiveC()();
    [v37 setAccessibilityIdentifier:v38];

    *(v27 + 32) = v37;
    v39._countAndFlagsBits = 0xD000000000000016;
    v123._object = 0x800000010123B8C0;
    v40._countAndFlagsBits = 0x52206574656C6544;
    v40._object = 0xEC0000006574756FLL;
    v39._object = 0x800000010123B8A0;
    v123._countAndFlagsBits = 0xD000000000000028;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, isa, v40, v123);
    v41 = String._bridgeToObjectiveC()();
    v42 = [v32 systemImageNamed:v41];

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = 2;
    *(v44 + 32) = v36;
    v45 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v46 = String._bridgeToObjectiveC()();
    [v45 setAccessibilityIdentifier:v46];

    *(v27 + 40) = v45;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v119.value.super.isa = 0;
    v119.is_nil = 0;
    v26[6].super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v47, 0, v119, 1, 0xFFFFFFFFFFFFFFFFLL, v27, v107).super.super.isa;
    return v26;
  }

  v111 = v4;
  v109 = &v108 - v3;
  v8 = type metadata accessor for CollectionPlaceItem();
  swift_unknownObjectRetain();
  v110 = v8;
  v9 = swift_dynamicCastClass();
  v10 = [v5 placeItemNote];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = 0;
    v14 = 0xE000000000000000;
  }

  v115 = v6;
  v48 = v9 != 0;

  v49 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v49 = v15;
  }

  v114 = v49;
  sub_1000CE6B8(&qword_101908400);
  v50 = swift_allocObject();
  v112 = xmmword_1011E47C0;
  *(v50 + 16) = xmmword_1011E47C0;
  v117 = v0;
  *(v50 + 32) = sub_1004BCDD4(v48);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v51.super.isa = qword_1019600D8;
  v52._countAndFlagsBits = 0xD000000000000011;
  v124._object = 0x800000010121C800;
  v53._countAndFlagsBits = 0x6572616853;
  v52._object = 0x800000010123B910;
  v124._countAndFlagsBits = 0xD00000000000002ELL;
  v53._object = 0xE500000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, qword_1019600D8, v53, v124);
  v54 = String._bridgeToObjectiveC()();
  v113.super.isa = objc_opt_self();
  v55 = [(objc_class *)v113.super.isa systemImageNamed:v54];

  swift_getObjectType();
  sub_1002007B0(v115, v5, 0);
  swift_unknownObjectRetain();
  v56 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
  v116 = v50;
  if (v56)
  {
    v57 = v56;
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    v50 = v116;
    *(v59 + 24) = 2;
    *(v59 + 32) = v57;
    *(v59 + 40) = v5;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_100014C84(0, &unk_101923740);
  v60 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v61 = String._bridgeToObjectiveC()();
  [v60 setAccessibilityIdentifier:v61];

  *(v50 + 40) = v60;
  v62 = swift_allocObject();
  *(v62 + 16) = v112;
  v125._object = 0x8000000101224AF0;
  v63._countAndFlagsBits = 0x61206F7420646441;
  v63._object = 0xEE00656469754720;
  v64._object = 0x800000010123B930;
  v125._countAndFlagsBits = 0xD000000000000023;
  v64._countAndFlagsBits = 0xD00000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v64, 0, v51, v63, v125);
  v65 = String._bridgeToObjectiveC()();
  v66 = v113.super.isa;
  v67 = [(objc_class *)v113.super.isa systemImageNamed:v65];

  swift_unknownObjectRetain();
  v68 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
  if (v68)
  {
    v69 = v68;
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = 4;
    *(v71 + 32) = v69;
    *(v71 + 40) = v5;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v72 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v73 = String._bridgeToObjectiveC()();
  [v72 setAccessibilityIdentifier:v73];

  *(v62 + 32) = v72;
  v74 = objc_opt_self();
  v75 = &selRef_addANoteTitle;
  if (v114)
  {
    v75 = &selRef_editNoteTitle;
  }

  v76 = [v74 *v75];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = String._bridgeToObjectiveC()();
  v78 = [(objc_class *)v66 systemImageNamed:v77];

  v79 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
  if (v79)
  {
    v80 = v79;
    v81 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = swift_allocObject();
    *(v82 + 16) = v81;
    *(v82 + 24) = 3;
    *(v82 + 32) = v80;
    *(v82 + 40) = v5;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_100014C84(0, &qword_101926880);
  v83 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v84 = String._bridgeToObjectiveC()();
  [v83 setAccessibilityIdentifier:v84];

  *(v62 + 40) = v83;
  *(v62 + 48) = sub_1004BD194();
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  v120.value.super.isa = 0;
  v120.is_nil = 0;
  v86.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v85, 0, v120, 1, 0xFFFFFFFFFFFFFFFFLL, v62, v107).super.super.isa;
  v7 = v116;
  *(v116 + 48) = v86;
  v118 = v7;
  if (qword_1019067D8 != -1)
  {
    swift_once();
  }

  if ((byte_1019601D0 & 1) == 0 || (v87 = [objc_opt_self() standardUserDefaults], v88 = String._bridgeToObjectiveC()(), v89 = objc_msgSend(v87, "BOOLForKey:", v88), v87, v88, (v89 & 1) == 0) || byte_1019601D0 != 1)
  {
LABEL_42:
    swift_unknownObjectRelease();
    return v7;
  }

  result = [objc_opt_self() sharedPlatform];
  if (result)
  {
    v91 = result;
    v92 = [(UIMenu *)result isInternalInstall];

    v93 = v111;
    if (v92)
    {
      v94 = [v5 identifier];
      if (v94)
      {
        v95 = v94;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v96 = type metadata accessor for UUID();
        (*(*(v96 - 8) + 56))(v93, 0, 1, v96);
      }

      else
      {
        v96 = type metadata accessor for UUID();
        (*(*(v96 - 8) + 56))(v93, 1, 1, v96);
      }

      v97 = v109;
      sub_100351430(v93, v109);
      type metadata accessor for UUID();
      v98 = v97;
      v99 = *(v96 - 8);
      if ((*(v99 + 48))(v97, 1, v96) == 1)
      {
        sub_100024F64(v97, &unk_101918E50);
        v100 = 0;
        v101 = 0;
      }

      else
      {
        v100 = UUID.uuidString.getter();
        v102 = v98;
        v101 = v103;
        (*(v99 + 8))(v102, v96);
      }

      v104 = swift_dynamicCastClass() == 0;
      type metadata accessor for VisitedPlacesFakeDataHelper();
      v105 = static VisitedPlacesFakeDataHelper.fakeVisitUIKitMenu(mapsSyncId:isPinned:)(v100, v101, v104);

      if (v105)
      {
        v106 = v105;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_unknownObjectRelease();

        return v118;
      }
    }

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

id sub_1004BAAA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v7[3] = swift_getObjectType();
  v7[0] = a2;
  sub_100014C84(0, &qword_10190B890);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v5 = v3(v7, v4);

  sub_10004E3D0(v7);

  return v5;
}

objc_class *sub_1004BAB64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    preferredElementSize = sub_1004B99A8();
  }

  else
  {
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  sub_100014C84(0, &qword_101926880);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  v4 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3, 0, v8, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v7).super.super.isa;
  v5 = String._bridgeToObjectiveC()();
  [(objc_class *)v4 setAccessibilityIdentifier:v5];

  [(objc_class *)v4 setPreferredElementSize:1];
  return v4;
}

void *sub_1004BAC68()
{
  v1 = type metadata accessor for CellAction.Style();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MapsDesignAccessibilityString();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CellAction.Placement();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item);
  v13 = *(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 8);
  if (*(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16))
  {
    if (*(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16) == 1)
    {
      return _swiftEmptyArrayStorage;
    }

    else
    {
      v29 = v10;
      sub_1000CE6B8(&unk_101923750);
      v31 = v2;
      v21 = *(type metadata accessor for CellAction() - 8);
      v30 = v1;
      v22 = *(v21 + 72);
      v23 = *(v21 + 80);
      v28 = v4;
      v24 = v14;
      v32 = v14;
      v25 = (v23 + 32) & ~v23;
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1011E7D60;
      v26 = v15 + v25;
      sub_1004BB114(v24, v26);
      (*(v9 + 104))(v12, enum case for CellAction.Placement.quickAction(_:), v29);
      *v7 = 0x6F69746365726964;
      v7[1] = 0xEA0000000000736ELL;
      (*(v33 + 104))(v7, enum case for MapsDesignAccessibilityString.cell(_:), v5);
      (*(v31 + 104))(v28, enum case for CellAction.Style.default(_:), v30);
      CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
      sub_1004BB478(v26 + 2 * v22);
      sub_1004BB7CC(v26 + 3 * v22);
      sub_100200814(v32, v13, 2);
    }
  }

  else
  {
    sub_1000CE6B8(&unk_101923750);
    v16 = *(type metadata accessor for CellAction() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1011E7D60;
    v19 = v15 + v18;
    v20 = v14;
    swift_unknownObjectRetain();
    sub_1004BBB20(v20, v13, v19);
    sub_1004BBE90(v20, v13, v19 + v17);
    sub_1004BC2CC(v20, v13, v19 + 2 * v17);
    sub_1004BC63C(v20, v13, v19 + 3 * v17);

    swift_unknownObjectRelease();
  }

  return v15;
}

uint64_t sub_1004BB114@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v22 = type metadata accessor for CellAction.Style();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v23 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MapsDesignAccessibilityString();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CellAction.Placement();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v26._object = 0x800000010123B750;
  v12._countAndFlagsBits = 0x6F69746365726944;
  v13._object = 0x800000010123B730;
  v26._countAndFlagsBits = 0xD000000000000036;
  v13._countAndFlagsBits = 0xD000000000000014;
  v12._object = 0xEA0000000000736ELL;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, qword_1019600D8, v12, v26);
  v20[1] = v14._object;
  v20[2] = v14._countAndFlagsBits;
  v15 = swift_allocObject();
  v16 = v24;
  *(v15 + 16) = a1;
  *(v15 + 24) = v16;
  (*(v9 + 104))(v11, enum case for CellAction.Placement.default(_:), v8);
  *v7 = 0xD00000000000001CLL;
  v7[1] = 0x800000010123BBD0;
  (*(v5 + 104))(v7, enum case for MapsDesignAccessibilityString.cell(_:), v21);
  (*(v3 + 104))(v23, enum case for CellAction.Style.default(_:), v22);
  v17 = a1;
  v18 = v16;
  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

uint64_t sub_1004BB478@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v18 = type metadata accessor for CellAction.Placement();
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v19 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CellAction.Style();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MapsDesignAccessibilityString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v22._object = 0x800000010123B830;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  v10._object = 0x800000010123B7F0;
  v11._object = 0x800000010123B810;
  v22._countAndFlagsBits = 0xD00000000000003DLL;
  v11._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, qword_1019600D8, v11, v22);
  v12 = swift_allocObject();
  v13 = v20;
  *(v12 + 16) = v20;
  *v9 = 0x6F69746365726964;
  v9[1] = 0xEA0000000000736ELL;
  (*(v7 + 104))(v9, enum case for MapsDesignAccessibilityString.cell(_:), v6);
  (*(v3 + 104))(v5, enum case for CellAction.Style.default(_:), v17);
  (*(v1 + 104))(v19, enum case for CellAction.Placement.default(_:), v18);
  v14 = v13;
  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

uint64_t sub_1004BB7CC@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v18 = type metadata accessor for CellAction.Placement();
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v19 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CellAction.Style();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MapsDesignAccessibilityString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v22._object = 0x800000010123B8C0;
  v10._countAndFlagsBits = 0x52206574656C6544;
  v10._object = 0xEC0000006574756FLL;
  v11._object = 0x800000010123B8A0;
  v22._countAndFlagsBits = 0xD000000000000028;
  v11._countAndFlagsBits = 0xD000000000000016;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, qword_1019600D8, v10, v22);
  v12 = swift_allocObject();
  v13 = v20;
  *(v12 + 16) = v20;
  *v9 = 0x6F69746365726964;
  v9[1] = 0xEA0000000000736ELL;
  (*(v7 + 104))(v9, enum case for MapsDesignAccessibilityString.cell(_:), v6);
  (*(v3 + 104))(v5, enum case for CellAction.Style.default(_:), v17);
  (*(v1 + 104))(v19, enum case for CellAction.Placement.default(_:), v18);
  v14 = v13;
  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

uint64_t sub_1004BBB20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v24 = type metadata accessor for CellAction.Style();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v25 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MapsDesignAccessibilityString();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CellAction.Placement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v28._object = 0x800000010121C800;
  v14._countAndFlagsBits = 0x6572616853;
  v15._object = 0x800000010123B910;
  v28._countAndFlagsBits = 0xD00000000000002ELL;
  v15._countAndFlagsBits = 0xD000000000000011;
  v14._object = 0xE500000000000000;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, qword_1019600D8, v14, v28);
  v22[1] = v16._object;
  v22[2] = v16._countAndFlagsBits;
  v22[0] = "Swipe action for share";
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = v26;
  v17[4] = v26;
  (*(v11 + 104))(v13, enum case for CellAction.Placement.default(_:), v10);
  *v9 = 0xD000000000000017;
  v9[1] = 0x800000010122B6D0;
  (*(v7 + 104))(v9, enum case for MapsDesignAccessibilityString.cell(_:), v23);
  (*(v5 + 104))(v25, enum case for CellAction.Style.default(_:), v24);
  v19 = a1;
  swift_unknownObjectRetain();
  v20 = v18;
  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

uint64_t sub_1004BBE90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v38 = a3;
  v4 = type metadata accessor for MapsDesignAccessibilityString();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for CellAction.Placement();
  v7 = *(v32 - 8);
  __chkstk_darwin(v32);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for CellAction.Style();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CollectionPlaceItem();
  v12 = a2;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v39._object = 0x8000000101224B70;
    v14._countAndFlagsBits = 0x63616C5020794D5BLL;
    v14._object = 0xEF6E6950205D7365;
    v30 = 0xE300000000000000;
    v39._countAndFlagsBits = 0xD000000000000036;
    v15._countAndFlagsBits = 7235920;
    v15._object = 0xE300000000000000;
    v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, qword_1019600D8, v15, v39);
    object = v16._object;
    countAndFlagsBits = v16._countAndFlagsBits;
    v17 = &enum case for CellAction.Style.default(_:);
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v40._object = 0x8000000101224B20;
    v18._countAndFlagsBits = 0x6E69706E55;
    v19._object = 0x800000010123B9F0;
    v40._countAndFlagsBits = 0xD000000000000040;
    v19._countAndFlagsBits = 0xD000000000000011;
    v18._object = 0xE500000000000000;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, qword_1019600D8, v18, v40);
    object = v20._object;
    countAndFlagsBits = v20._countAndFlagsBits;
    v30 = 0xE900000000000068;
    v17 = &enum case for CellAction.Style.destructive(_:);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v13 != 0;
  v22 = v36;
  v23 = v37;
  *(v21 + 24) = v36;
  *(v21 + 32) = v12;
  *(v21 + 40) = v23;
  (*(v9 + 104))(v11, *v17, v31);
  (*(v7 + 104))(v33, enum case for CellAction.Placement.quickAction(_:), v32);
  *v6 = 0x6572616873;
  v6[1] = 0xE500000000000000;
  (*(v34 + 104))(v6, enum case for MapsDesignAccessibilityString.cell(_:), v35);
  v24 = v22;
  swift_unknownObjectRetain();
  v25 = v23;
  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

uint64_t sub_1004BC2CC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for CellAction.Style();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MapsDesignAccessibilityString();
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CellAction.Placement();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 placeItemNote];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = 0;
    v19 = 0xE000000000000000;
  }

  if ((v19 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v21 = v20;
  }

  v22 = objc_opt_self();
  v23 = &selRef_addANoteTitle;
  if (v21)
  {
    v23 = &selRef_editNoteTitle;
  }

  v24 = [v22 *v23];
  v30[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v26 = v35;
  v25[4] = v35;
  (*(v11 + 104))(v14, enum case for CellAction.Placement.quickAction(_:), v10);
  *v9 = 0xD00000000000001FLL;
  v9[1] = 0x800000010123B970;
  (*(v7 + 104))(v9, enum case for MapsDesignAccessibilityString.cell(_:), v31);
  (*(v32 + 104))(v34, enum case for CellAction.Style.default(_:), v33);
  v27 = a1;
  swift_unknownObjectRetain();
  v28 = v26;
  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

uint64_t sub_1004BC63C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v24 = type metadata accessor for CellAction.Style();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v25 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MapsDesignAccessibilityString();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CellAction.Placement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v28._object = 0x8000000101224AF0;
  v14._countAndFlagsBits = 0x61206F7420646441;
  v14._object = 0xEE00656469754720;
  v15._object = 0x800000010123B930;
  v28._countAndFlagsBits = 0xD000000000000023;
  v15._countAndFlagsBits = 0xD00000000000001ALL;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, qword_1019600D8, v14, v28);
  v22[1] = v16._object;
  v22[2] = v16._countAndFlagsBits;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = v26;
  v17[4] = v26;
  (*(v11 + 104))(v13, enum case for CellAction.Placement.default(_:), v10);
  *v9 = 0x6975476F54646461;
  v9[1] = 0xEA00000000006564;
  (*(v7 + 104))(v9, enum case for MapsDesignAccessibilityString.cell(_:), v23);
  (*(v5 + 104))(v25, enum case for CellAction.Style.default(_:), v24);
  v19 = a1;
  swift_unknownObjectRetain();
  v20 = v18;
  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

void sub_1004BC9B4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(MUPresentationOptions);
  v11 = a3;
  swift_unknownObjectRetain();
  v13 = [v10 init];
  [v13 setSourceView:a1];
  v12 = *(a5 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_savedItemActionHandler);
  if (v12)
  {

    v12(a5, a3, a4, (a2 & 1) == 0, a1);
    sub_1004BEB54(a3, a4, (a2 & 1) == 0);
    sub_1000588AC(v12);
  }

  else
  {
    sub_1004BEB54(a3, a4, (a2 & 1) == 0);
  }
}

void sub_1004BCACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(MUPresentationOptions) init];
  [v7 setSourceView:a1];
  v6 = *(a3 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_savedItemActionHandler);
  if (v6)
  {

    v6(a3, a2, 0, 4, a1);
    sub_1000588AC(v6);
  }
}

void sub_1004BCB98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(MUPresentationOptions);
  v14 = a2;
  swift_unknownObjectRetain();
  v11 = [v10 init];
  [v11 setSourceView:a1];
  v12 = *(a4 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_savedItemActionHandler);
  if (v12)
  {

    v12(a4, v14, a3, a5, a1);
    swift_unknownObjectRelease();

    sub_1000588AC(v12);
    v13 = v11;
  }

  else
  {

    swift_unknownObjectRelease();
    v13 = v14;
  }
}

void sub_1004BCCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item;
  if (*(a2 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16) == 2)
  {
    v8 = *v4;
    v9 = *(v4 + 8);
    v10 = objc_allocWithZone(MUPresentationOptions);
    v11 = v8;
    v13 = [v10 init];
    [v13 setSourceView:a1];
    v12 = *(a2 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_savedItemActionHandler);
    if (v12)
    {

      v12(a2, v8, 0, a3, a1);
      sub_100200814(v8, v9, 2);
      sub_1000588AC(v12);
    }

    else
    {
      sub_100200814(v8, v9, 2);
    }
  }
}

id sub_1004BCDD4(char a1)
{
  if (a1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v23._object = 0x8000000101224B70;
    v3._countAndFlagsBits = 0x63616C5020794D5BLL;
    v3._object = 0xEF6E6950205D7365;
    v23._countAndFlagsBits = 0xD000000000000036;
    v4._countAndFlagsBits = 7235920;
    v4._object = 0xE300000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v4, v23);
    v5 = 0;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v24._object = 0x8000000101224B20;
    v6._object = 0x800000010123B9F0;
    v24._countAndFlagsBits = 0xD000000000000040;
    v6._countAndFlagsBits = 0xD000000000000011;
    v7._countAndFlagsBits = 0x6E69706E55;
    v7._object = 0xE500000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, qword_1019600D8, v7, v24);
    v5 = 2;
  }

  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() systemImageNamed:v8];

  if (*(v1 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16))
  {
    v10 = UIView.annotateView(with:);
    v11 = 0;
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 8);
    swift_unknownObjectRetain();
    swift_getObjectType();
    v13 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
    if (v13)
    {
      v14 = v13;
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v15;
      *(v11 + 24) = (a1 & 1) == 0;
      *(v11 + 32) = v14;
      *(v11 + 40) = v12;
      v16 = sub_1004BEEFC;
    }

    else
    {
      swift_unknownObjectRelease();
      v11 = 0;
      v16 = UIView.annotateView(with:);
    }

    v10 = v16;
  }

  sub_100014C84(0, &unk_101923740);
  v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  _StringGuts.grow(_:)(20);

  if (a1)
  {
    v18 = 7235920;
  }

  else
  {
    v18 = 0x6E69706E55;
  }

  if (a1)
  {
    v19 = 0xE300000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v20 = v19;
  String.append(_:)(*&v18);

  v21 = String._bridgeToObjectiveC()();

  [v17 setAccessibilityIdentifier:{v21, 0, v5, 0, v10, v11}];

  return v17;
}

id sub_1004BD194()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v15._object = 0x800000010121C870;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x800000010121C830;
  v2._object = 0x800000010121C850;
  v15._countAndFlagsBits = 0xD000000000000040;
  v2._countAndFlagsBits = 0xD000000000000012;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v2, v15);
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() systemImageNamed:v3];

  if (*(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16))
  {
    v5 = UIView.annotateView(with:);
    v6 = 0;
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 8);
    swift_unknownObjectRetain();
    swift_getObjectType();
    v8 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
    if (v8)
    {
      v9 = v8;
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v10;
      *(v6 + 24) = 5;
      *(v6 + 32) = v9;
      *(v6 + 40) = v7;
      v11 = sub_1004BEEFC;
    }

    else
    {
      swift_unknownObjectRelease();
      v6 = 0;
      v11 = UIView.annotateView(with:);
    }

    v5 = v11;
  }

  sub_100014C84(0, &unk_101923740);
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13 = String._bridgeToObjectiveC()();
  [v12 setAccessibilityIdentifier:{v13, 0, 2, 0, v5, v6}];

  return v12;
}

uint64_t sub_1004BD410()
{
  v1 = v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item;
  if (*(v0 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16) == 2)
  {
    v2 = *v1;
    v3 = *(v1 + 8);
    v4 = *v1;
    v5 = [v4 _maps_existingOfflineSubscription];
    if (v5)
    {

      sub_100014C84(0, &unk_101923740);
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v24._object = 0x800000010123BB10;
      v6._countAndFlagsBits = 0x656E696C66664FLL;
      v7._countAndFlagsBits = 0xD000000000000023;
      v7._object = 0x800000010123BAE0;
      v24._countAndFlagsBits = 0xD000000000000064;
      v6._object = 0xE700000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, qword_1019600D8, v6, v24);
      v8 = String._bridgeToObjectiveC()();
      v9 = [objc_opt_self() systemImageNamed:v8];

      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = 3;
      *(v11 + 32) = v4;
      v12 = v4;
      v23 = v11;
      v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    else
    {
      sub_100014C84(0, &unk_101923740);
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v25._object = 0x800000010123BA40;
      v15._countAndFlagsBits = 0x64616F6C6E776F44;
      v16._countAndFlagsBits = 0xD000000000000027;
      v16._object = 0x800000010123BA10;
      v25._countAndFlagsBits = 0xD00000000000004ELL;
      v15._object = 0xE800000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, qword_1019600D8, v15, v25);
      v17 = String._bridgeToObjectiveC()();
      v18 = [objc_opt_self() systemImageNamed:v17];

      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = 4;
      *(v20 + 32) = v4;
      v21 = v4;
      v23 = v20;
      v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    v22 = String._bridgeToObjectiveC()();
    [v13 setAccessibilityIdentifier:{v22, 0, 0, 0, sub_1004BEF00, v23}];

    sub_100200814(v2, v3, 2);
    return v13;
  }

  else
  {
    sub_100014C84(0, &unk_101923740);
    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }
}

void sub_1004BD944(void *a1, uint64_t a2, unsigned __int8 a3, void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();

    if (v11)
    {
      if ([a1 sender])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16[0] = v14;
      v16[1] = v15;
      if (*(&v15 + 1))
      {
        sub_100014C84(0, &qword_10190CA10);
        if (swift_dynamicCast())
        {
          v12 = v13;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        sub_100024F64(v16, &unk_101908380);
        v12 = 0;
      }

      sub_100497D9C(a3, v12, a4, a5);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1004BDAA0(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();

    if (v8)
    {
      sub_100498784(a3, a4);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1004BDCA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps34LibraryListSavedItemManagementItem_type + 9);
  if (v1 > 6)
  {
    switch(v1)
    {
      case 7u:
        v8 = "Sidebar title for routes";
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v2.super.isa = qword_1019600D8;
        v11 = 0x800000010123BCA0;
        v9 = 1684632903;
        break;
      case 8u:
        v8 = "Visits [Library Outline]";
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v2.super.isa = qword_1019600D8;
        v11 = 0x800000010123BC60;
        v9 = 1953853266;
        break;
      case 9u:
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v2.super.isa = qword_1019600D8;
        v11 = 0x8000000101230670;
        v3 = 0x796C746E65636552;
        v4 = 0xEE00646564644120;
        v5 = 0xD000000000000020;
        v6 = 0x8000000101230640;
        v7 = 0xD000000000000020;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v2, *&v3, *&v7)._countAndFlagsBits;
      default:
        goto LABEL_24;
    }

    v3 = v9 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    v6 = v8 | 0x8000000000000000;
    v5 = 0xD000000000000018;
    v4 = 0xE600000000000000;
    goto LABEL_20;
  }

  if (v1 != 5)
  {
    if (v1 != 6)
    {
LABEL_24:
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v2.super.isa = qword_1019600D8;
      v11 = 0x8000000101230670;
      v3 = 0x2064657469736956;
      v4 = 0xEE00736563616C50;
      v6 = 0x800000010123BC20;
      v7 = 0xD000000000000020;
      v5 = 0xD000000000000018;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v2, *&v3, *&v7)._countAndFlagsBits;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v2.super.isa = qword_1019600D8;
    v11 = 0x800000010123BCE0;
    v3 = 0x6C50206465766153;
    v4 = 0xEC00000073656361;
    v6 = 0x800000010123BCC0;
    v5 = 0xD000000000000018;
LABEL_20:
    v7 = 0xD000000000000018;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v2, *&v3, *&v7)._countAndFlagsBits;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v2.super.isa = qword_1019600D8;
  v11 = 0x800000010123BD20;
  v3 = 0x64656E6E6950;
  v6 = 0x800000010123BD00;
  v7 = 0xD00000000000001FLL;
  v5 = 0xD000000000000018;
  v4 = 0xE600000000000000;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v2, *&v3, *&v7)._countAndFlagsBits;
}

uint64_t getEnumTagSinglePayload for LibraryListBadgedCellModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 10))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 9);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 5;
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

uint64_t storeEnumTagSinglePayload for LibraryListBadgedCellModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryListSavedItemsManagementSectionCellModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 10))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 9);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 2;
  if (v3 >= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= 3)
  {
    v7 = v6 - 2;
  }

  else
  {
    v7 = 0;
  }

  if (v7 >= 6)
  {
    return v7 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LibraryListSavedItemsManagementSectionCellModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 9;
    }
  }

  return result;
}

uint64_t sub_1004BE24C(uint64_t a1)
{
  v1 = *(a1 + 9);
  if (v1 <= 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = *(a1 + 9);
  }

  v3 = v2 - 2;
  if (v1 >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004BE278(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 252;
  }

  else if (a2)
  {
    *(result + 9) = a2 + 4;
  }

  return result;
}

unint64_t sub_1004BE2C8()
{
  result = qword_1019236A8;
  if (!qword_1019236A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019236A8);
  }

  return result;
}

unint64_t sub_1004BE320()
{
  result = qword_1019236B0;
  if (!qword_1019236B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019236B0);
  }

  return result;
}

unint64_t sub_1004BE374(uint64_t a1)
{
  result = sub_1004BE39C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004BE39C()
{
  result = qword_1019236D8;
  if (!qword_1019236D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019236D8);
  }

  return result;
}

unint64_t sub_1004BE3F4()
{
  result = qword_1019236E0;
  if (!qword_1019236E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019236E0);
  }

  return result;
}

unint64_t sub_1004BE448(uint64_t a1)
{
  result = sub_1004BE470();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004BE470()
{
  result = qword_101923708;
  if (!qword_101923708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923708);
  }

  return result;
}

unint64_t sub_1004BE4C4(uint64_t a1)
{
  result = sub_1004BE4EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004BE4EC()
{
  result = qword_101923730;
  if (!qword_101923730)
  {
    type metadata accessor for LibraryListSavedItemCellModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923730);
  }

  return result;
}

uint64_t sub_1004BE580()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004BE5C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004BE608(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  sub_10004E374(a1, v7);
  v5 = v4(v7, a2);
  sub_100024F64(v7, &unk_101908380);
  return v5;
}

id sub_1004BE674(uint64_t a1, Class a2)
{
  v3 = objc_allocWithZone(a2);

  return sub_1004BE6BC(a1, v3);
}

id sub_1004BE6BC(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = &a2[OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_onSelectLibraryAction];
  *v4 = 0;
  v4[1] = 0;
  v5 = &a2[OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_actionHandler];
  *&a2[OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_actionHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &a2[OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_savedItemActionHandler];
  *v6 = 0;
  v6[1] = 0;
  v7 = sub_1004BE7E0();
  v9 = v8;
  v11 = v10;
  v12 = ~v10;
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = &a2[OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item];
    *v13 = v7;
    *(v13 + 1) = v9;
    v13[16] = v11;
    v15.receiver = a2;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, "init");
  }

  else
  {
    sub_1000588AC(*v4);
    sub_1000A09E0(v5);
    sub_1000588AC(*v6);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_1004BE7E0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = &OBJC_PROTOCOL____TtP4Maps26LibraryPlaceItemCompatible_;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    result = [v5 mapItemStorage];
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    type metadata accessor for Collection();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = objc_opt_self();
      swift_unknownObjectRetain();
      v10 = [v9 sharedManager];
      v11 = [v8 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      (*(v1 + 8))(v3, v0);
      v12 = String._bridgeToObjectiveC()();

      v13 = [v10 collectionWithIdentifier:v12];

      if (v13)
      {
        swift_unknownObjectRelease();
        return v13;
      }

      else
      {
        v15 = [objc_opt_self() collectionWithMapsSyncCollection:v8];
        swift_unknownObjectRelease();
        return v15;
      }
    }

    else
    {
      type metadata accessor for CachedCuratedCollection();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        return [objc_opt_self() collectionWithMapsSyncCachedCuratedCollection:v14];
      }

      else
      {
        type metadata accessor for UserRoute();
        result = swift_dynamicCastClass();
        if (result)
        {
          return [objc_opt_self() routeDataForMapsSyncUserRoute:result];
        }
      }
    }
  }

  return result;
}

void sub_1004BEB54(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 11:
    case 12:

      swift_unknownObjectRelease();
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:

      break;
    default:
      return;
  }
}

uint64_t sub_1004BEBE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

BOOL sub_1004BEC50(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if (HIBYTE(a2) == 3)
  {
    if ((a4 & 0xFF00) == 0x300)
    {
      return 1;
    }
  }

  else
  {
    if (HIBYTE(a2) == 4)
    {
      return (a4 & 0xFF00) == 0x400;
    }

    if (HIBYTE(a4) - 3 >= 2)
    {
      if (a2)
      {
        if ((a4 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a4 & 1) != 0 || a1 != a3)
      {
        return 0;
      }

      if (HIBYTE(a2) == 2)
      {
        if (HIBYTE(a4) != 2)
        {
          return 0;
        }
      }

      else if (HIBYTE(a4) == 2 || ((HIBYTE(a4) ^ HIBYTE(a2)) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

unint64_t sub_1004BECE0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101601148, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for LibraryListSavedItemType(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryListSavedItemType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 11))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 10);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryListSavedItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004BEDE0(uint64_t a1)
{
  if (*(a1 + 10) <= 1u)
  {
    return *(a1 + 10);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1004BEDF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 10) = a2;
  return result;
}

unint64_t sub_1004BEE28()
{
  result = qword_101923790;
  if (!qword_101923790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923790);
  }

  return result;
}

unint64_t sub_1004BEE7C(uint64_t a1)
{
  result = sub_1004BEEA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004BEEA4()
{
  result = qword_1019237B8[0];
  if (!qword_1019237B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1019237B8);
  }

  return result;
}

uint64_t sub_1004BEF10(uint64_t a1)
{
  sub_1001F4AE8();
  State.init(wrappedValue:)();
  return a1;
}

uint64_t sub_1004BEF64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004BEFFC@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a1;
  v34 = a7;
  v11 = *(a5 - 8);
  v32 = a6;
  v33 = v11;
  __chkstk_darwin(a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D6664(&qword_101923840);
  v14 = type metadata accessor for ModifiedContent();
  v31 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  v44 = a3;
  v45 = a4;
  v20 = a4;
  sub_1000CE6B8(&qword_101923858);
  State.wrappedValue.getter();
  v21 = v43;
  v22 = a2;
  v23 = v30;
  v30(v43);

  v24 = v32;
  v35 = a5;
  v36 = v32;
  v37 = v23;
  v38 = v22;
  v39 = a3;
  v40 = v20;
  static Alignment.center.getter();
  sub_1004BF32C();
  View.background<A>(alignment:content:)();
  (*(v33 + 8))(v13, a5);
  v25 = sub_1004BF380();
  v41 = v24;
  v42 = v25;
  WitnessTable = swift_getWitnessTable();
  sub_10010ADFC(v16, v14, WitnessTable);
  v27 = *(v31 + 8);
  v27(v16, v14);
  sub_10010ADFC(v19, v14, WitnessTable);
  return (v27)(v19, v14);
}

uint64_t sub_1004BF2D4@<X0>(void *a1@<X8>)
{
  sub_1000CE6B8(&qword_101923858);
  result = State.wrappedValue.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_1004BF32C()
{
  result = qword_101923848;
  if (!qword_101923848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923848);
  }

  return result;
}

unint64_t sub_1004BF380()
{
  result = qword_101923850;
  if (!qword_101923850)
  {
    sub_1000D6664(&qword_101923840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923850);
  }

  return result;
}

uint64_t sub_1004BF3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004BF4E8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1004BF45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004BF4E8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1004BF4C0()
{
  sub_1004BF4E8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1004BF4E8()
{
  result = qword_101923860;
  if (!qword_101923860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923860);
  }

  return result;
}

unint64_t sub_1004BF550()
{
  result = qword_101923868;
  if (!qword_101923868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923868);
  }

  return result;
}

uint64_t sub_1004BF5A4(void *a1, uint64_t a2, uint64_t a3, void *a4, __int16 a5)
{
  if ((a5 & 0x100) != 0)
  {
    v12 = a5;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    *(v13 + 32) = a4;
    *(v13 + 40) = v12 & 1;
    *(v13 + 41) = 1;
    v20 = sub_1004BF904;
    v21 = v13;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_100271778;
    v19 = &unk_10161D400;
    v10 = _Block_copy(&v16);

    v14 = a4;

    v11 = &selRef_getImageForInvertedStyleAttributes_completion_;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v20 = sub_1000D2C74;
    v21 = v9;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_100271778;
    v19 = &unk_10161D3B0;
    v10 = _Block_copy(&v16);

    v11 = &selRef_getImageForStyleAttributes_completion_;
  }

  [a1 *v11];
  _Block_release(v10);
  return 1;
}

void sub_1004BF75C(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_1004BF928(v3);
    a2();
  }

  else
  {
    a2();
  }
}

void sub_1004BF7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 9);
  v9 = objc_opt_self();
  if (v7 == 1)
  {
    v9 = [v9 sharedCarCache];
    if (v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = [v9 sharedCache];
  if (!v9)
  {
    __break(1u);
    return;
  }

LABEL_5:
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9;
  sub_1004BF5A4(v9, a2, a3, v6, v10 | v7);
}

unint64_t sub_1004BF8B0()
{
  result = qword_101923870;
  if (!qword_101923870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923870);
  }

  return result;
}

uint64_t sub_1004BF928(void *a1)
{
  [a1 size];
  v3 = v2;
  v5 = v4;
  v6 = [objc_opt_self() mainScreen];
  v7 = [v6 traitCollection];

  v8 = [objc_opt_self() formatForTraitCollection:v7];
  v9 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v8 format:{v3, v5}];

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10011A1BC;
  *(v11 + 24) = v10;
  v16[4] = sub_1000D2C74;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000CEB98;
  v16[3] = &unk_10161D478;
  v12 = _Block_copy(v16);
  v13 = a1;

  v14 = [v9 imageWithActions:v12];

  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004BFCD8(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1004BFDA8;

  return sub_1004C0908(v3, v5);
}

uint64_t sub_1004BFDA8(void *a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

char *sub_1004BFEF8(uint64_t a1, unint64_t a2)
{
  v53 = a1;
  v4 = type metadata accessor for Handle();
  v54 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a2 emailAddresses];
  v8 = sub_1000CE6B8(&unk_101918B20);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v51 = v4;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

    v12 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v51 = v4;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  v55 = _swiftEmptyArrayStorage;
  sub_1005111C4(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v49 = v8;
  v50 = a2;
  v11 = 0;
  v12 = v55;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v9 + 8 * v11 + 32);
    }

    v14 = v13;
    v15 = [v13 value];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v55 = v12;
    v20 = v12[2];
    v19 = v12[3];
    if (v20 >= v19 >> 1)
    {
      sub_1005111C4((v19 > 1), v20 + 1, 1);
      v12 = v55;
    }

    ++v11;
    v12[2] = v20 + 1;
    v21 = &v12[2 * v20];
    v21[4] = v16;
    v21[5] = v18;
  }

  while (v10 != v11);

  a2 = v50;
  v4 = v51;
LABEL_14:
  v22 = v52;
  Friend.handle.getter();
  v23 = Handle.identifier.getter();
  v25 = v24;
  v10 = v54 + 8;
  v2 = *(v54 + 8);
  v26 = v2(v22, v4);
  v55 = v23;
  v56 = v25;
  __chkstk_darwin(v26);
  *(&v48 - 2) = &v55;
  LOBYTE(v23) = sub_1002AFDA8(sub_10023BAF4, (&v48 - 4), v12);
  v50 = 0;

  if (v23)
  {
    v27 = 1;
    return (v27 & 1);
  }

  v28 = [a2 phoneNumbers];
  a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(a2 >> 62))
  {
    v29 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v2;
    if (v29)
    {
      goto LABEL_18;
    }

LABEL_29:

    v32 = _swiftEmptyArrayStorage;
LABEL_30:
    v43 = v52;
    Friend.handle.getter();
    v44 = Handle.identifier.getter();
    v46 = v45;
    v47 = v49(v43, v4);
    v55 = v44;
    v56 = v46;
    __chkstk_darwin(v47);
    *(&v48 - 2) = &v55;
    v27 = sub_1002AFDA8(sub_1004C2CB4, (&v48 - 4), v32);

    return (v27 & 1);
  }

LABEL_28:
  v29 = _CocoaArrayWrapper.endIndex.getter();
  v49 = v2;
  if (!v29)
  {
    goto LABEL_29;
  }

LABEL_18:
  v55 = _swiftEmptyArrayStorage;
  result = sub_1005111C4(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v54 = v10;
    v31 = 0;
    v32 = v55;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(a2 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = [v33 value];
      v36 = [v35 stringValue];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v55 = v32;
      v41 = v32[2];
      v40 = v32[3];
      if (v41 >= v40 >> 1)
      {
        sub_1005111C4((v40 > 1), v41 + 1, 1);
        v32 = v55;
      }

      ++v31;
      v32[2] = v41 + 1;
      v42 = &v32[2 * v41];
      v42[4] = v37;
      v42[5] = v39;
    }

    while (v29 != v31);

    v4 = v51;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C0588(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100302AB4;

  return (sub_1004C152C)(v4);
}

uint64_t sub_1004C0650()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC40;

  return sub_1004C0588(v2, v3);
}

uint64_t sub_1004C0704()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101960408);
  sub_100021540(v0, qword_101960408);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1004C078C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100297AC4(a1, a2, v4);
}

unint64_t sub_1004C0804(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101923880);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1004C078C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1004C0908(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for Location();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for ClientOrigin();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_1004C0AC4, 0, 0);
}

uint64_t sub_1004C0AC4()
{
  v27 = v0;
  if (qword_1019068E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[12].receiver = sub_100021540(v1, qword_101960408);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    receiver = v0[5].receiver;
    super_class = v0[5].super_class;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10004DEB8(receiver, super_class, &v26);
    _os_log_impl(&_mh_execute_header, v2, v3, "Will build MapsAutoCompletePerson for Find My handle identifier %s", v6, 0xCu);
    sub_10004E3D0(v7);
  }

  v8 = v0[11].super_class;
  v9 = v0[10].receiver;
  v10 = v0[10].super_class;
  v23 = v0[8].super_class;
  v24 = v0[9].receiver;
  v25 = v0[8].receiver;
  MyHandle = type metadata accessor for MapsFindMyHandle();
  v12 = objc_allocWithZone(MyHandle);
  sub_1004C0804(_swiftEmptyArrayStorage);

  Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
  (*(v10 + 4))(v12 + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v8, v9);
  v0[1].receiver = v12;
  v0[1].super_class = MyHandle;
  v13 = objc_msgSendSuper2(v0 + 1, "init", 0);
  v14 = OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle;
  v0[12].super_class = v13;
  v0[13].receiver = v14;
  v15 = *(v10 + 2);
  v0[13].super_class = v15;
  v0[14].receiver = ((v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  (v15)(v8, v13 + v14, v9);
  v16 = type metadata accessor for SearchFindMyHandle(0);
  v17 = objc_allocWithZone(v16);
  UUID.init()();
  (v15)(&v17[OBJC_IVAR____TtC4Maps18SearchFindMyHandle_handle], v8, v9);
  v0[2].receiver = v17;
  v0[2].super_class = v16;
  v0[14].super_class = objc_msgSendSuper2(v0 + 2, "init");
  v18 = *(v10 + 1);
  v10 = (v10 + 8);
  v0[15].receiver = v18;
  v0[15].super_class = (v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v18(v8, v9);
  (*(v23 + 13))(v24, enum case for ClientOrigin.other(_:), v25);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  v0[16].receiver = Session.init(_:)();
  sub_1000CE6B8(&unk_101925050);
  v19 = (*(v10 + 72) + 32) & ~*(v10 + 72);
  v20 = swift_allocObject();
  v0[16].super_class = v20;
  *(v20 + 16) = xmmword_1011E1D30;
  (v15)(v20 + v19, v13 + v14, v9);
  v21 = swift_task_alloc();
  v0[17].receiver = v21;
  *v21 = v0;
  v21[1] = sub_1004C0ED0;

  return Session.locations(for:reverseGeocode:)(v20, 0);
}

uint64_t sub_1004C0ED0(uint64_t a1)
{
  *(*v2 + 280) = a1;

  if (v1)
  {

    v3 = sub_1004C13FC;
  }

  else
  {

    v3 = sub_1004C1020;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C1020()
{
  v1 = *(v0 + 280);
  (*(v0 + 216))(*(v0 + 176), *(v0 + 200) + *(v0 + 208), *(v0 + 160));
  if (*(v1 + 16) && (v2 = sub_10029741C(*(v0 + 176)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 176);
    v6 = *(v0 + 160);
    v7 = *(v0 + 104);
    v8 = *(v7 + 16);
    v8(*(v0 + 120), *(*(v0 + 280) + 56) + *(v7 + 72) * v2, *(v0 + 96));
    v4(v5, v6);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Got location from Find My", v11, 2u);
    }

    v12 = *(v0 + 232);
    v42 = *(v0 + 200);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);

    v8(v14, v13, v16);
    MyLocation = type metadata accessor for SearchFindMyLocation(0);
    v18 = objc_allocWithZone(MyLocation);
    UUID.init()();
    v8(&v18[OBJC_IVAR____TtC4Maps20SearchFindMyLocation_location], v14, v16);
    *(v0 + 48) = v18;
    *(v0 + 56) = MyLocation;
    v19 = objc_msgSendSuper2((v0 + 48), "init");
    v20 = *(v15 + 8);
    v20(v14, v16);
    MyLocationHandle = type metadata accessor for MapsFindMyLocationHandle();
    v22 = objc_allocWithZone(MyLocationHandle);
    v23 = OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location;
    *&v22[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location] = 0;
    *&v22[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle] = v12;
    *&v22[v23] = v19;
    *(v0 + 64) = v22;
    *(v0 + 72) = MyLocationHandle;
    v41 = v12;
    v24 = v19;
    v25 = objc_msgSendSuper2((v0 + 64), "init");
    v26 = sub_100327DCC();
    v27 = objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
    v28 = v25;
    v29 = sub_10050AF34(v26, 0, v25, 0);

    v20(v13, v16);
  }

  else
  {
    v30 = *(v0 + 240);
    v31 = *(v0 + 176);
    v32 = *(v0 + 160);

    v30(v31, v32);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 232);
    v37 = *(v0 + 200);
    if (v35)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Unable to get location from Find My", v38, 2u);
    }

    v29 = 0;
  }

  v39 = *(v0 + 8);

  return v39(v29);
}

uint64_t sub_1004C13FC()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[29];
  v5 = v0[25];
  if (v3)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get location from Find My", v6, 2u);
  }

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_1004C152C(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for Location();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for Handle();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v4 = type metadata accessor for Friend();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_1000CE6B8(&qword_101923878);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = type metadata accessor for ClientOrigin();
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_1004C17A0, 0, 0);
}

uint64_t sub_1004C17A0()
{
  if (qword_1019068E0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  v0[28] = sub_100021540(v2, qword_101960408);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Will build MapsAutoCompletePerson for contact %@", v7, 0xCu);
    sub_100024F64(v8, &qword_1019144F0);
  }

  v10 = v0[26];
  v11 = v0[24];
  v12 = v0[25];
  v13 = v0[23];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[8];

  (*(v12 + 104))(v10, enum case for ClientOrigin.other(_:), v11);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  v0[29] = Session.init(_:)();
  v17 = *(v15 + 56);
  v0[30] = v17;
  v0[31] = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v13, 1, 1, v14);
  v18 = swift_task_alloc();
  v0[32] = v18;
  *(v18 + 16) = v16;
  v19 = swift_task_alloc();
  v0[33] = v19;
  *v19 = v0;
  v19[1] = sub_1004C1A2C;

  return Session.friendsSharingLocationsWithMe(filter:)(sub_1004C2B18, v18);
}

uint64_t sub_1004C1A2C(uint64_t a1)
{
  *(*v2 + 272) = a1;

  if (v1)
  {

    v3 = sub_1004C2680;
  }

  else
  {

    v3 = sub_1004C1B7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C1B7C()
{
  v47 = v0;
  v1 = v0[34];
  if (*(v1 + 16))
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[17];
    v5 = v0[18];
    v6 = *(v5 + 16);
    v6(v2, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    v6(v3, v2, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[17];
    if (v9)
    {
      v13 = v0[16];
      v14 = v0[14];
      v43 = v0[13];
      v15 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v15 = 136315138;
      v42 = v12;
      Friend.handle.getter();
      v16 = Handle.identifier.getter();
      v18 = v17;
      (*(v14 + 8))(v13, v43);
      v19 = *(v11 + 8);
      v19(v10, v42);
      v20 = sub_10004DEB8(v16, v18, &v46);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v7, v8, "Found matching Find My handle %s", v15, 0xCu);
      sub_10004E3D0(v44);
    }

    else
    {

      v19 = *(v11 + 8);
      v19(v10, v12);
    }

    v21 = v0[30];
    v23 = v0[22];
    v22 = v0[23];
    v24 = v0[20];
    v25 = v0[17];
    v26 = v0[13];
    Friend.handle.getter();
    v19(v24, v25);
    sub_100024F64(v22, &qword_101923878);
    v21(v23, 0, 1, v26);
    sub_1004C2B90(v23, v22);
  }

  else
  {
  }

  v27 = v0[21];
  v28 = v0[13];
  v29 = v0[14];
  sub_1004C2B20(v0[23], v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_100024F64(v0[21], &qword_101923878);
    v30 = v0[23];
    v31 = v0[8];
    objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
    v32 = v31;
    v45 = sub_10050AF34(v31, 0, 0, 0);

    sub_100024F64(v30, &qword_101923878);

    v33 = v0[1];

    return v33(v45);
  }

  else
  {
    v36 = v0[14];
    v35 = v0[15];
    v37 = v0[13];
    (*(v36 + 32))(v35, v0[21], v37);
    sub_1000CE6B8(&unk_101925050);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v39 = swift_allocObject();
    v0[35] = v39;
    *(v39 + 16) = xmmword_1011E1D30;
    v40 = *(v36 + 16);
    v0[36] = v40;
    v0[37] = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v40(v39 + v38, v35, v37);
    v41 = swift_task_alloc();
    v0[38] = v41;
    *v41 = v0;
    v41[1] = sub_1004C2054;

    return Session.locations(for:reverseGeocode:)(v39, 0);
  }
}

uint64_t sub_1004C2054(uint64_t a1)
{
  *(*v2 + 312) = a1;

  if (v1)
  {

    v3 = sub_1004C2938;
  }

  else
  {

    v3 = sub_1004C21A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C21A4()
{
  if (*(*(v0 + 312) + 16) && (v1 = sub_10029741C(*(v0 + 120)), (v2 & 1) != 0))
  {
    v3 = *(v0 + 80);
    v46 = *(v3 + 16);
    v46(*(v0 + 96), *(*(v0 + 312) + 56) + *(v3 + 72) * v1, *(v0 + 72));

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Got location from Find My", v6, 2u);
    }

    v7 = *(v0 + 288);
    v8 = *(v0 + 120);
    v9 = *(v0 + 128);
    v43 = v8;
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 88);
    v44 = *(v0 + 184);
    v45 = *(v0 + 96);
    v39 = *(v0 + 72);
    v40 = *(v0 + 80);
    v42 = *(v0 + 64);

    v7(v9, v8, v11);
    MyHandle = type metadata accessor for SearchFindMyHandle(0);
    v14 = objc_allocWithZone(MyHandle);
    UUID.init()();
    v7(&v14[OBJC_IVAR____TtC4Maps18SearchFindMyHandle_handle], v9, v11);
    *(v0 + 16) = v14;
    *(v0 + 24) = MyHandle;
    v15 = objc_msgSendSuper2((v0 + 16), "init");
    v41 = *(v10 + 8);
    v41(v9, v11);
    v46(v12, v45, v39);
    MyLocation = type metadata accessor for SearchFindMyLocation(0);
    v17 = objc_allocWithZone(MyLocation);
    UUID.init()();
    v46(&v17[OBJC_IVAR____TtC4Maps20SearchFindMyLocation_location], v12, v39);
    *(v0 + 32) = v17;
    *(v0 + 40) = MyLocation;
    v18 = objc_msgSendSuper2((v0 + 32), "init");
    v19 = *(v40 + 8);
    v19(v12, v39);
    MyLocationHandle = type metadata accessor for MapsFindMyLocationHandle();
    v21 = objc_allocWithZone(MyLocationHandle);
    v22 = OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location;
    *&v21[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location] = 0;
    *&v21[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle] = v15;
    *&v21[v22] = v18;
    *(v0 + 48) = v21;
    *(v0 + 56) = MyLocationHandle;
    v23 = v15;
    v24 = v18;
    v25 = objc_msgSendSuper2((v0 + 48), "init");
    objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
    v26 = v42;
    v47 = sub_10050AF34(v42, 0, v25, 0);

    v19(v45, v39);
    v27 = v44;
    v41(v43, v11);
  }

  else
  {

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v32 = *(v0 + 112);
    v31 = *(v0 + 120);
    v33 = *(v0 + 104);
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to get location from Find My", v34, 2u);
    }

    (*(v32 + 8))(v31, v33);
    v27 = *(v0 + 184);
    v35 = *(v0 + 64);
    objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
    v36 = v35;
    v47 = sub_10050AF34(v35, 0, 0, 0);
  }

  sub_100024F64(v27, &qword_101923878);

  v37 = *(v0 + 8);

  return v37(v47);
}

uint64_t sub_1004C2680()
{
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[14];
  sub_1004C2B20(v0[23], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100024F64(v0[21], &qword_101923878);
    v4 = v0[23];
    v5 = v0[8];
    v6 = objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
    v7 = v5;
    v17 = sub_10050AF34(v5, 0, 0, 0);

    sub_100024F64(v4, &qword_101923878);

    v8 = v0[1];

    return v8(v17);
  }

  else
  {
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[13];
    (*(v11 + 32))(v10, v0[21], v12);
    sub_1000CE6B8(&unk_101925050);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    v0[35] = v14;
    *(v14 + 16) = xmmword_1011E1D30;
    v15 = *(v11 + 16);
    v0[36] = v15;
    v0[37] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v14 + v13, v10, v12);
    v16 = swift_task_alloc();
    v0[38] = v16;
    *v16 = v0;
    v16[1] = sub_1004C2054;

    return Session.locations(for:reverseGeocode:)(v14, 0);
  }
}

uint64_t sub_1004C2938()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get location from Find My", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);
  v8 = v0[23];
  v9 = v0[8];
  v10 = objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
  v11 = v9;
  v14 = sub_10050AF34(v9, 0, 0, 0);

  sub_100024F64(v8, &qword_101923878);

  v12 = v0[1];

  return v12(v14);
}

uint64_t sub_1004C2B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101923878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C2B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101923878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C2C00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC4C;

  return sub_1004BFCD8(v2, v3);
}

void sub_1004C2CD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a4)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = a4;
      *(v13 + 24) = a5;
      v14 = sub_1000D8864;
    }

    else
    {
      v14 = UIView.annotateView(with:);
      v13 = 0;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    v16 = type metadata accessor for SortOptionPickerViewController();
    v17 = objc_allocWithZone(v16);
    v18 = &v17[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler];
    *v18 = 0;
    *(v18 + 1) = 0;
    *&v17[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_sortOptions] = a2;
    *&v17[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_initialSelectedSortOptionIndex] = a3;
    v19 = &v17[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_onDone];
    *v19 = sub_1000D882C;
    v19[1] = v15;
    sub_1000CD9D4(a4);
    v28.receiver = v17;
    v28.super_class = v16;

    v20 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
    [v20 setContaineeDelegate:v5];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    v23 = &v20[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler];
    v24 = *&v20[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler];
    *v23 = sub_1004C3158;
    v23[1] = v22;

    v25 = v20;
    sub_1000588AC(v24);

    if ([PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v25))
    {
      [a1 presentViewController:v25 animated:1 completion:0];
    }

    else
    {
      v26 = OBJC_IVAR____TtC4Maps17UserGuidesContext_containees;
      swift_beginAccess();
      v27 = v25;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v5 + v26) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v26) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v12 setNeedsUpdateComponent:@"cards" animated:1];
    }
  }
}

void sub_1004C2FBC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([PlaceSummaryTableViewCell canBecomeFirstResponder]_0(a2))
    {
      v5 = [a2 presentingViewController];
      if (v5)
      {
        v6 = v5;
        [v5 dismissViewControllerAnimated:1 completion:0];
      }
    }

    else
    {
      [a2 handleDismissAction:a2];
    }
  }
}

uint64_t sub_1004C3194@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

double sub_1004C31BC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v20 = 1;
  sub_1004C3344(a1, &v12);
  v25 = v16;
  v26 = v17;
  v27[0] = v18[0];
  *(v27 + 9) = *(v18 + 9);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v28[0] = v12;
  v28[1] = v13;
  v28[2] = v14;
  v28[3] = v15;
  v28[4] = v16;
  v28[5] = v17;
  v29[0] = v18[0];
  *(v29 + 9) = *(v18 + 9);
  sub_1000D2DFC(&v21, &v11, &qword_101923888);
  sub_100024F64(v28, &qword_101923888);
  *(&v19[4] + 7) = v25;
  *(&v19[5] + 7) = v26;
  *(&v19[6] + 7) = v27[0];
  v19[7] = *(v27 + 9);
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v5 = v19[5];
  *(a2 + 81) = v19[4];
  *(a2 + 97) = v5;
  v6 = v19[7];
  *(a2 + 113) = v19[6];
  *(a2 + 129) = v6;
  v7 = v19[1];
  *(a2 + 17) = v19[0];
  *(a2 + 33) = v7;
  result = *&v19[2];
  v9 = v19[3];
  *(a2 + 49) = v19[2];
  v10 = v20;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 65) = v9;
  return result;
}

uint64_t sub_1004C3344@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3;
    Image.init(uiImage:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v43[0]) = v47;
    LOBYTE(v36[0]) = v48;
    LOBYTE(v49) = 0;

    sub_1000CE6B8(&qword_10190C5C8);
    sub_1000CE6B8(&qword_101910370);
    sub_1004C39F0(&qword_1019106A0, &qword_10190C5C8);
    sub_1004C39F0(&qword_101910378, &qword_101910370);
    _ConditionalContent<>.init(storage:)();

    LOBYTE(v42) = v59;
    v40 = v57;
    v41 = v58;
    v5 = v56;
    v38 = v55;
    v6 = v55;
    v39 = v56;
    v52 = v57;
    v53 = v58;
    v54 = v59;
    v50 = v55;
    v51 = v56;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v36[0]) = 1;
    LOBYTE(v49) = v47;
    v45 = v48;
    LOBYTE(v43[0]) = 1;
    *&v55 = 0;
    BYTE8(v55) = 1;
    *&v56 = v46;
    BYTE8(v56) = v47;
    sub_1000CE6B8(&qword_10190C5C8);
    sub_1000CE6B8(&qword_101910370);
    sub_1004C39F0(&qword_1019106A0, &qword_10190C5C8);
    sub_1004C39F0(&qword_101910378, &qword_101910370);
    _ConditionalContent<>.init(storage:)();
    v52 = v40;
    v53 = v41;
    v54 = v42;
    v6 = v38;
    v5 = v39;
    v50 = v38;
    v51 = v39;
    v57 = v40;
    v58 = v41;
    v59 = v42;
  }

  v55 = v6;
  v56 = v5;
  v49 = *a1;
  v43[0] = *a1;
  sub_1000D2DFC(&v55, &v38, &qword_101923890);
  sub_100147688(&v49, &v38);
  sub_1000E5580();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v12 = [objc_opt_self() labelColor];
  *&v38 = Color.init(uiColor:)();
  v13 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  v17 = v16;
  sub_1000F0A40(v7, v9, v11 & 1);

  static Font.title3.getter();
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;

  sub_1000F0A40(v13, v15, v17 & 1);

  static Font.Weight.bold.getter();
  v23 = Text.fontWeight(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1000F0A40(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v36[2] = v52;
  v36[3] = v53;
  v37 = v54;
  v36[0] = v50;
  v36[1] = v51;
  v40 = v52;
  v41 = v53;
  LOBYTE(v42) = v54;
  v38 = v50;
  v39 = v51;
  sub_1000D2DFC(v36, v43, &qword_101923898);
  sub_1001C8AFC(v23, v25, v27 & 1);

  sub_100024F64(&v55, &qword_101923890);
  v45 = v27 & 1;
  v31 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v31;
  v32 = v42;
  v33 = v39;
  *a2 = v38;
  *(a2 + 16) = v33;
  *(a2 + 64) = v32;
  *(a2 + 72) = v23;
  *(a2 + 80) = v25;
  *(a2 + 88) = v27 & 1;
  *(a2 + 96) = v29;
  *(a2 + 104) = KeyPath;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  sub_1000F0A40(v23, v25, v27 & 1);

  v43[2] = v52;
  v43[3] = v53;
  v44 = v54;
  v43[0] = v50;
  v43[1] = v51;
  return sub_100024F64(v43, &qword_101923890);
}

uint64_t sub_1004C38B0@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = v1[1];
  v13[0] = *v1;
  v13[1] = v3;
  v4 = v1[3];
  v13[2] = v1[2];
  v13[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  v8 = swift_allocObject();
  v9 = v1[1];
  *(v8 + 1) = *v1;
  *(v8 + 2) = v9;
  v10 = v1[3];
  *(v8 + 3) = v1[2];
  *(v8 + 4) = v10;
  *a1 = sub_1004C3988;
  a1[1] = v5;
  a1[2] = _swiftEmptyArrayStorage;
  a1[3] = sub_1004C39B0;
  a1[4] = v8;
  sub_1004C39B8(v13, v12);
  return sub_1004C39B8(v13, v12);
}

uint64_t sub_1004C39F0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004C3A60()
{
  result = qword_1019238A0;
  if (!qword_1019238A0)
  {
    sub_1000D6664(&qword_1019238A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019238A0);
  }

  return result;
}

MKMapItem_optional __swiftcall LibraryPlaceItemCompatible.createMapItemFromStorage()()
{
  v1 = [v0 mapItemStorage];
  if (v1)
  {
    v3 = v1;
    v4 = [v0 customName];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(GEOMapItemStorageUserValues) init];
      [v6 setName:v5];

      [v3 setUserValues:v6];
    }

    v7 = [objc_opt_self() _itemWithGeoMapItem:v3];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  result.value.super.isa = v8;
  result.is_nil = v2;
  return result;
}

void sub_1004C3BB4(void *a1)
{
  v2 = v1;
  v4 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
  if (!v4)
  {
    return;
  }

  v26 = v4;
  if (qword_1019067A0 != -1)
  {
    swift_once();
  }

  if ((byte_101960111 & 1) == 0)
  {
    v15 = [objc_allocWithZone(SearchResult) initWithMapItem:v26];
    [a1 injectAndSelectSearchResult:v15];

    goto LABEL_23;
  }

  type metadata accessor for FavoriteItemWrapper();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
    swift_unknownObjectRetain();
    [v6 favoriteType];
    v7 = FavoriteItemType.rawValue.getter();
    v8 = [v2 customName];
    if (v8 || (v8 = [v2 mapItemName]) != 0)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }

    objc_allocWithZone(type metadata accessor for PersonalizedFavoriteItem());
    v13 = v26;
    v14 = sub_1002A43C8(v13, v7, v10, v12);

    if (a1)
    {
      [a1 injectAndSelectPersonalizedItem:v14];

LABEL_22:
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    swift_unknownObjectRelease();

LABEL_23:
    v17 = v26;
    goto LABEL_24;
  }

  type metadata accessor for CollectionPlaceItem();
  v16 = swift_dynamicCastClass();
  v17 = v26;
  if (v16)
  {
    v18 = v16;
    swift_unknownObjectRetain_n();
    v19 = v26;
    v20 = [v2 customName];
    if (v20 || (v20 = [v2 mapItemName]) != 0)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v22 = objc_opt_self();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v22 personalizedItemFromPlaceItem:v18 mapItem:v19 title:v23];
    swift_unknownObjectRelease();

    if (a1)
    {
      v25 = v24;
      [a1 injectAndSelectPersonalizedItem:v25];
    }

    else
    {
    }

    goto LABEL_22;
  }

LABEL_24:
}

uint64_t static FavoriteItemWrapper.wrappers(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1004C3F78;

  return sub_1004C6304(a1);
}

uint64_t sub_1004C3F78(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t FavoriteItemWrapper.placeItemNote.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_placeItemNote);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t FavoriteItemWrapper.placeItemNote.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_placeItemNote);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void (*FavoriteItemWrapper.identifier.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(sub_1000CE6B8(&unk_101918E50) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = *(v1 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
  a1[2] = v4;
  a1[3] = v5;
  dispatch thunk of MapsSyncObject.identifier.getter();
  return sub_1004C4690;
}

uint64_t (*FavoriteItemWrapper.customName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
  *a1 = dispatch thunk of FavoriteItem.customName.getter();
  a1[1] = v3;
  return sub_1004C4794;
}

void (*FavoriteItemWrapper.mapItemStorage.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
  *a1 = dispatch thunk of FavoriteItem.mapItemStorage.getter();
  return sub_1004C4910;
}

uint64_t sub_1004C4C30(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1000CE6B8(a2);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_1000D2DFC(a1, &v11 - v8, a2);
  a4(v9);
  return sub_100024F64(a1, a2);
}

void (*FavoriteItemWrapper.createTime.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(sub_1000CE6B8(&qword_10190EBD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = *(v1 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
  a1[2] = v4;
  a1[3] = v5;
  dispatch thunk of MapsSyncObject.createTime.getter();
  return sub_1004C4DD0;
}

void sub_1004C4DF8(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, void (*a5)(void *))
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  sub_1000D2DFC(v10, v9, a3);
  v11 = *a1;
  if (a2)
  {
    sub_1000D2DFC(v9, v11, a3);
    a5(v11);
    sub_100024F64(v9, a3);
  }

  else
  {
    a5(v9);
  }

  sub_100024F64(v10, a3);
  free(v10);
  free(v9);

  free(v11);
}

void (*FavoriteItemWrapper.latitude.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
  *a1 = dispatch thunk of FavoriteItem.latitude.getter();
  return sub_1004C5030;
}

void (*FavoriteItemWrapper.longitude.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
  *a1 = dispatch thunk of FavoriteItem.longitude.getter();
  return sub_1004C51AC;
}

void sub_1004C51C4(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

id sub_1004C525C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1004C5328(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t (*FavoriteItemWrapper.mapItemName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
  *a1 = dispatch thunk of FavoriteItem.mapItemName.getter();
  a1[1] = v3;
  return sub_1004C543C;
}

uint64_t sub_1004C5454(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

id FavoriteItemWrapper.styleAttributes.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object) styleAttributes];

  return v1;
}

uint64_t sub_1004C5558(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10005E838((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000CE6B8(&qword_101915AB0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = *(*(v5 + 64) + 40);
    *v11 = v9;
    v11[1] = v10;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t FavoriteItemWrapper.save(_:)(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return _swift_task_switch(sub_1004C565C, 0, 0);
}

uint64_t sub_1004C565C()
{
  v1 = v0[22];
  v2 = *(v1 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
  v0[23] = v2;
  v3 = v1 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_placeItemNote;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v0[24] = v4;
  v0[2] = v0;
  v0[3] = sub_1004C57E0;
  v5 = swift_continuation_init();
  v0[17] = sub_1000CE6B8(&qword_10191CEA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003956B0;
  v0[13] = &unk_10161D7D0;
  v0[14] = v5;
  [v2 setPlaceItemNote:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C57E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1004C5B24;
  }

  else
  {
    v2 = sub_1004C58F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C58F0()
{
  v1 = *(v0 + 184);

  sub_1000CE6B8(&qword_101908400);
  v2 = swift_allocObject();
  *(v0 + 208) = v2;
  *(v2 + 16) = xmmword_1011E47B0;
  *(v2 + 32) = v1;
  v6 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = sub_1004C59E8;

  return v6(v2);
}

uint64_t sub_1004C59E8()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004C5B94, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1004C5B24()
{
  v1 = *(v0 + 192);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004C5B94()
{

  v1 = *(v0 + 8);

  return v1();
}

id FavoriteItemWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoriteItemWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004C5CDC(id a1, SEL a2)
{
  v2 = a1;
  v3 = dispatch thunk of CollectionPlaceItem.mapItemStorage.getter();
  if (!v3 || (v4 = v3, v5 = [v3 _styleAttributes], v4, !v5))
  {
    result = [objc_opt_self() markerStyleAttributes];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
  }

  return v5;
}

id CollectionPlaceItem.styleAttributes.getter()
{
  v0 = dispatch thunk of CollectionPlaceItem.mapItemStorage.getter();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 _styleAttributes];

    if (v2)
    {
      return v2;
    }
  }

  result = [objc_opt_self() markerStyleAttributes];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1004C5DF0(id a1, SEL a2)
{
  v2 = a1;
  v3 = FavoriteItem.styleAttributes.getter();

  return v3;
}

id FavoriteItem.styleAttributes.getter()
{
  v0 = dispatch thunk of FavoriteItem.type.getter();
  if (v0 > 2)
  {
    goto LABEL_7;
  }

  if (v0 >= 2)
  {
    goto LABEL_12;
  }

  v1 = dispatch thunk of FavoriteItem.mapItemStorage.getter();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 _styleAttributes];

    if (v3)
    {
      return v3;
    }
  }

  result = [objc_opt_self() markerStyleAttributes];
  if (!result)
  {
    __break(1u);
LABEL_7:
    if (v0 == 3)
    {
LABEL_15:
      result = [objc_opt_self() workStyleAttributes];
      if (result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_17;
    }

    if (v0 == 5)
    {
      result = [objc_opt_self() schoolStyleAttributes];
      if (result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_22;
    }

    if (v0 != 6)
    {
LABEL_17:
      v5 = dispatch thunk of FavoriteItem.mapItemStorage.getter();
      if (v5)
      {
        v6 = v5;
        v3 = [v5 _styleAttributes];

        if (v3)
        {
          return v3;
        }
      }

LABEL_22:
      result = [objc_opt_self() markerStyleAttributes];
      if (!result)
      {
        __break(1u);
      }

      return result;
    }

    result = [objc_opt_self() nearbyTransitStyleAttributes];
    if (result)
    {
      return result;
    }

    __break(1u);
LABEL_12:
    if (v0 == 2)
    {
      result = [objc_opt_self() homeStyleAttributes];
      if (result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  return result;
}

id sub_1004C5FD4()
{
  v0 = dispatch thunk of FavoriteItem.mapItemStorage.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  dispatch thunk of FavoriteItem.customName.getter();
  if (v2)
  {
    v3 = [objc_allocWithZone(GEOMapItemStorageUserValues) init];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v6 = String._bridgeToObjectiveC()();

      [v5 setName:v6];
    }

    else
    {
    }

    [v1 setUserValues:v4];
  }

  v7 = [objc_opt_self() _itemWithGeoMapItem:v1];

  return v7;
}

id sub_1004C60D4(id a1, SEL a2)
{
  v2 = a1;
  v3 = sub_1004C5FD4();

  return v3;
}

void *sub_1004C6118()
{
  v0 = dispatch thunk of FavoriteItem.mapItemStorage.getter();
  if (v0)
  {
    dispatch thunk of FavoriteItem.customName.getter();
    if (v1)
    {
      v2 = [v0 userValues];
      if (!v2)
      {
        v3 = [objc_allocWithZone(GEOMapItemStorageUserValues) init];
        [v0 setUserValues:v3];
        v2 = v3;
      }

      v4 = [v0 userValues];
      if (v4)
      {
        v5 = v4;
        v6 = String._bridgeToObjectiveC()();

        [v5 setName:v6];
      }

      else
      {
      }
    }
  }

  return v0;
}

id sub_1004C6214(id a1, SEL a2)
{
  v2 = a1;
  v3 = sub_1004C6118();

  return v3;
}

uint64_t static CollectionPlaceItem.excludeShadowItemsPredicate.getter()
{
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_10190D5C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1011E1D30;
  *(v0 + 56) = &type metadata for Int16;
  *(v0 + 64) = &protocol witness table for Int16;
  *(v0 + 32) = 6;
  v1 = static MapsSyncQueryPredicate.withFormat(_:_:)();

  return v1;
}

uint64_t sub_1004C6324()
{
  *(v0 + 200) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 208);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 216) = v2;
    if (v2)
    {
LABEL_3:
      v3 = *(v0 + 208);
      *(v0 + 224) = _swiftEmptyArrayStorage;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return _swift_continuation_await(v2);
        }

        v4 = *(v3 + 32);
      }

      v5 = v4;
      *(v0 + 232) = v4;
      *(v0 + 240) = 1;
      v6 = type metadata accessor for FavoriteItemWrapper();
      v7 = objc_allocWithZone(v6);
      v8 = &v7[OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_placeItemNote];
      *v8 = 0;
      *(v8 + 1) = 0;
      *&v7[OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object] = v5;
      *(v0 + 168) = v7;
      *(v0 + 176) = v6;
      v9 = v5;
      *(v0 + 248) = objc_msgSendSuper2((v0 + 168), "init");
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 184;
      *(v0 + 24) = sub_1004C6568;
      v10 = swift_continuation_init();
      *(v0 + 136) = sub_1000CE6B8(&qword_1019238E8);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1004C5558;
      *(v0 + 104) = &unk_10161D818;
      *(v0 + 112) = v10;
      [v9 placeItemNoteWithCompletionHandler:v0 + 80];
      v2 = v0 + 16;

      return _swift_continuation_await(v2);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 216) = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v0 + 8);

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_1004C6568()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {

    v2 = sub_1004C6934;
  }

  else
  {
    v2 = sub_1004C6680;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C6680()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = &v2[OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_placeItemNote];
  swift_beginAccess();
  *v4 = v1;
  *(v4 + 1) = v3;

  v5 = v2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 200) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 200) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 232);
  v9 = *(v0 + 216);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v10 = *(v0 + 200);
  if (v7 != v9)
  {
    v13 = *(v0 + 240);
    *(v0 + 224) = v10;
    v14 = *(v0 + 208);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v10 = *(v14 + 8 * v13 + 32);
    }

    v15 = v10;
    *(v0 + 232) = v10;
    *(v0 + 240) = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      v16 = type metadata accessor for FavoriteItemWrapper();
      v17 = objc_allocWithZone(v16);
      v18 = &v17[OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_placeItemNote];
      *v18 = 0;
      *(v18 + 1) = 0;
      *&v17[OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object] = v15;
      *(v0 + 168) = v17;
      *(v0 + 176) = v16;
      v19 = v15;
      *(v0 + 248) = objc_msgSendSuper2((v0 + 168), "init");
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 184;
      *(v0 + 24) = sub_1004C6568;
      v20 = swift_continuation_init();
      *(v0 + 136) = sub_1000CE6B8(&qword_1019238E8);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1004C5558;
      *(v0 + 104) = &unk_10161D818;
      *(v0 + 112) = v20;
      [v19 placeItemNoteWithCompletionHandler:v0 + 80];
      v10 = (v0 + 16);

      return _swift_continuation_await(v10);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return _swift_continuation_await(v10);
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1004C6934()
{
  v1 = v0[31];
  v2 = v0[29];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

__int128 *FavoriteCollectionHandler.title.unsafeMutableAddressor()
{
  if (qword_1019068E8 != -1)
  {
    swift_once();
  }

  return &static FavoriteCollectionHandler.title;
}

uint64_t sub_1004C6A60()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v4._object = 0x800000010123C610;
  v0._countAndFlagsBits = 0x657469726F766146;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v1._object = 0x800000010123C5F0;
  v0._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0xD000000000000018;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v4);
  result = v3._countAndFlagsBits;
  static FavoriteCollectionHandler.title = v3;
  return result;
}

uint64_t sub_1004C6BB0@<X0>(void *a1@<X8>)
{
  if (qword_1019068E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&static FavoriteCollectionHandler.title + 1);
  *a1 = static FavoriteCollectionHandler.title;
  a1[1] = v2;
}

uint64_t sub_1004C6C30(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1019068E8;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&static FavoriteCollectionHandler.title = v2;
  *(&static FavoriteCollectionHandler.title + 1) = v1;
}

id sub_1004C6CC8()
{
  if (qword_1019068E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_1004C6D74()
{
  if (qword_1019068E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static FavoriteCollectionHandler.title;

  return v0;
}

id FavoriteCollectionHandler._glyphImage.getter()
{
  v1 = OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler____lazy_storage____glyphImage;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler____lazy_storage____glyphImage);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    if (v5)
    {
      v3 = [v5 imageWithRenderingMode:2];
    }

    else
    {
      v3 = 0;
    }

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_10005D280(v6);
  }

  sub_10005D270(v2);
  return v3;
}

void FavoriteCollectionHandler._glyphImage.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler____lazy_storage____glyphImage);
  *(v1 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler____lazy_storage____glyphImage) = a1;
  sub_10005D280(v2);
}

void (*FavoriteCollectionHandler._glyphImage.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = FavoriteCollectionHandler._glyphImage.getter();
  return sub_1004C7024;
}

void sub_1004C7024(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler____lazy_storage____glyphImage);
  *(v3 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler____lazy_storage____glyphImage) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_10005D280(v4);
  }

  else
  {

    sub_10005D280(v4);
  }
}

uint64_t FavoriteCollectionHandler.image.getter()
{
  sub_100014C84(0, &qword_10190AB90);
  static MapsDesignConstants.Image.Guides.favorites.getter();
  v0 = static UIImage.mapsDesignImage(_:)();

  return v0;
}

void FavoriteCollectionHandler.fetchCoverPhoto(forFrameSize:scale:completion:)(void (*a1)(void))
{
  v3 = [v1 image];
  a1();
}

uint64_t FavoriteCollectionHandler.fullSharingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 fullSharingURLFromContainedMapItems];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id FavoriteCollectionHandler.__deallocating_deinit()
{
  v1 = v0;
  type metadata accessor for MapsSyncStore();
  v2 = static MapsSyncStore.sharedStore.getter();
  v3 = v1;
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  v5.receiver = v3;
  v5.super_class = type metadata accessor for FavoriteCollectionHandler();
  return objc_msgSendSuper2(&v5, "dealloc");
}

Swift::Bool __swiftcall FavoriteCollectionHandler.contains(_:)(MKMapItem a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FavoriteCollectionHandler();
  v3 = objc_msgSendSuper2(&v6, "itemForMapItem:", a1.super.isa);
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

uint64_t FavoriteCollectionHandler.add(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1004CD51C;
  *(v12 + 24) = v11;
  v40 = sub_100060EA8;
  v41 = v12;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100060ED8;
  v39 = &unk_10161D8A0;
  v13 = _Block_copy(&aBlock);
  v14 = v3;

  v15 = v10;
  v16 = v13;
  v17 = v15;
  label = dispatch_queue_get_label(v17);
  v19 = dispatch_queue_get_label(0);
  if (label == v19)
  {

LABEL_7:
    v21 = objc_autoreleasePoolPush();
    v16[2](v16);
    objc_autoreleasePoolPop(v21);
    goto LABEL_10;
  }

  if (label && v19)
  {
    v20 = strcmp(label, v19);

    if (!v20)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  dispatch_sync(v17, v16);
LABEL_10:

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    v26 = v31;
    v25[2] = v30;
    v25[3] = v14;
    v27 = v32;
    v25[4] = v26;
    v25[5] = v27;
    v40 = sub_1004CD520;
    v41 = v25;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_100039C64;
    v39 = &unk_10161D8F0;
    v28 = _Block_copy(&aBlock);
    v29 = v14;

    sub_1000D88A8(v26, v27);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100041438(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000CE6B8(&unk_10190B500);
    sub_1000DB3BC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v35 + 8))(v6, v4);
    return (*(v33 + 8))(v9, v34);
  }

  return result;
}

uint64_t sub_1004C7C48(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v146 = a4;
  v147 = a3;
  v148 = a2;
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v145 = &v124 - v6;
  v7 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v7 - 8);
  v138 = &v124 - v8;
  v9 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v9 - 8);
  v143 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v133 = &v124 - v12;
  __chkstk_darwin(v13);
  v129 = &v124 - v14;
  __chkstk_darwin(v15);
  v132 = &v124 - v16;
  v144 = type metadata accessor for UUID();
  __chkstk_darwin(v144);
  v139 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v131 = &v124 - v19;
  __chkstk_darwin(v20);
  v130 = &v124 - v22;
  v23 = _swiftEmptyArrayStorage;
  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  v156 = _swiftEmptyArrayStorage;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v141 = (v21 + 48);
  v137 = (v21 + 32);
  v128 = (v21 + 16);
  v142 = (v21 + 56);
  v136 = (v21 + 8);
  v135 = "VisitedPlacesDataOps";

  v30 = 0;
  v140 = 0;
  v134 = xmmword_1011E1D30;
  v149 = a1;
  while (v28)
  {
LABEL_11:
    v32 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    sub_10012EF50(*(a1 + 48) + 40 * (v32 | (v30 << 6)), &aBlock);
    v154[0] = aBlock;
    v154[1] = v151;
    v155 = v152;
    v33.isa = AnyHashable._bridgeToObjectiveC()().isa;
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (!v34)
    {

      v36.isa = AnyHashable._bridgeToObjectiveC()().isa;
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (!v37)
      {

        goto LABEL_5;
      }

      v35 = v37;
      goto LABEL_16;
    }

    v35 = [objc_opt_self() _itemWithGeoMapItem:v34];

    if (v35)
    {
LABEL_16:
      v38 = [v35 _geoMapItem];
      if (v38)
      {
        v39 = v38;
        v40 = [objc_opt_self() mapItemStorageForGEOMapItem:v38];
        if (v40)
        {
          v41 = v40;
          v42 = [objc_opt_self() existingCollectionItemForMapItem:v35 error:0];
          if (v42)
          {
            v43 = v42;
            if (dispatch thunk of CollectionPlaceItem.type.getter())
            {
              sub_10005BF8C(v154);
              swift_unknownObjectRelease();

              a1 = v149;
            }

            else
            {
              LODWORD(v126) = dispatch thunk of CollectionPlaceItem.type.getter();
              v44 = v126 | 1;
              v45 = [swift_unknownObjectRetain() _clientAttributes];
              if (v45)
              {
                v46 = v45;
                LODWORD(v127) = v44;
                v47 = [v45 mapsSyncAttributes];

                if (v47 && (v48 = [v47 mapsSyncObjectType], v47, v48))
                {
                  v49 = NSClassFromString(v48);

                  swift_unknownObjectRelease();
                  if (!v49)
                  {
                    goto LABEL_63;
                  }

                  ObjCClassMetadata = swift_getObjCClassMetadata();
                  if (ObjCClassMetadata != type metadata accessor for FavoriteItem())
                  {
                    goto LABEL_63;
                  }

                  v51 = [v39 _clientAttributes];
                  if (v51 && (v52 = v51, v53 = [v51 mapsSyncAttributes], v52, v53) && (v54 = objc_msgSend(v53, "mapsSyncIdentifier"), v53, v54))
                  {
                    v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();

                    v55 = v132;
                    UUID.init(uuidString:)();

                    if ((*v141)(v55, 1, v144) != 1)
                    {
                      v56 = v144;
                      (*v137)(v130, v55, v144);
                      v57 = v129;
                      (*v128)(v129, v130, v56);
                      (*v142)(v57, 0, 1, v56);
                      dispatch thunk of CollectionPlaceItem.originalIdentifier.setter();
                      (*v136)(v130, v56);
                      goto LABEL_63;
                    }
                  }

                  else
                  {
                    v55 = v132;
                    (*v142)(v132, 1, 1, v144);
                  }

                  sub_100024F64(v55, &unk_101918E50);
                }

                else
                {
                  swift_unknownObjectRelease();
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

LABEL_63:
              dispatch thunk of CollectionPlaceItem.type.setter();
              v93 = v43;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              swift_unknownObjectRelease();
              sub_10005BF8C(v154);
              v23 = v156;
              a1 = v149;
            }
          }

          else
          {
            type metadata accessor for CollectionPlaceItem();
            v58 = MapsSyncObject.__allocating_init()();
            v126 = v41;
            dispatch thunk of CollectionPlaceItem.mapItemStorage.setter();
            dispatch thunk of CollectionPlaceItem.type.getter();
            v59 = [swift_unknownObjectRetain() _clientAttributes];
            v127 = v58;
            if (v59)
            {
              v60 = v59;
              v61 = [v59 mapsSyncAttributes];

              if (!v61 || (v62 = [v61 mapsSyncObjectType], v61, !v62))
              {
                swift_unknownObjectRelease();
LABEL_45:
                v58 = v127;
                goto LABEL_47;
              }

              v63 = NSClassFromString(v62);

              swift_unknownObjectRelease();
              if (!v63)
              {
                goto LABEL_45;
              }

              v64 = swift_getObjCClassMetadata();
              v65 = v64 == type metadata accessor for FavoriteItem();
              v58 = v127;
              if (v65)
              {
                v66 = [v39 _clientAttributes];
                if (v66 && (v67 = v66, v68 = [v66 mapsSyncAttributes], v67, v68) && (v69 = objc_msgSend(v68, "mapsSyncIdentifier"), v68, v69))
                {
                  v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();

                  v70 = v133;
                  UUID.init(uuidString:)();

                  if ((*v141)(v70, 1, v144) != 1)
                  {
                    v71 = v70;
                    v72 = v144;
                    (*v137)(v131, v71, v144);
                    v73 = v129;
                    (*v128)(v129, v131, v72);
                    (*v142)(v73, 0, 1, v72);
                    v58 = v127;
                    dispatch thunk of CollectionPlaceItem.originalIdentifier.setter();
                    (*v136)(v131, v72);
                    goto LABEL_47;
                  }
                }

                else
                {
                  v70 = v133;
                  (*v142)(v133, 1, 1, v144);
                }

                sub_100024F64(v70, &unk_101918E50);
                goto LABEL_45;
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }

LABEL_47:
            dispatch thunk of CollectionPlaceItem.type.setter();
            v74 = [v35 name];
            a1 = v149;
            if (v74)
            {
              v75 = v74;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v58 = v127;
            }

            dispatch thunk of CollectionPlaceItem.customName.setter();
            v76 = [v39 _clientAttributes];
            if (!v76 || (v77 = v76, v78 = [v76 mapsSyncAttributes], v77, !v78) || (v79 = objc_msgSend(v78, "mapsSyncIdentifier"), v78, !v79))
            {
              v80 = v143;
              (*v142)(v143, 1, 1, v144);
LABEL_56:
              sub_100024F64(v80, &unk_101918E50);
              goto LABEL_57;
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v80 = v143;
            UUID.init(uuidString:)();
            v58 = v127;

            if ((*v141)(v80, 1, v144) == 1)
            {
              goto LABEL_56;
            }

            (*v137)(v139, v80, v144);
            type metadata accessor for MapsSyncQueryPredicate();
            sub_1000CE6B8(&unk_10190D5C0);
            v81 = swift_allocObject();
            *(v81 + 16) = v134;
            isa = UUID._bridgeToObjectiveC()().super.isa;
            *(v81 + 56) = sub_100014C84(0, &qword_101922DA0);
            *(v81 + 64) = sub_1002592A8();
            *(v81 + 32) = isa;
            v83 = NSPredicate.init(format:_:)();
            v84 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
            v125 = v83;
            v85 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
            type metadata accessor for FavoriteItemRequest();
            v86 = FavoriteItemRequest.__allocating_init()();
            v87 = v85;
            v88 = v140;
            v89 = dispatch thunk of FavoriteItemRequest.fetchSync(options:)();
            if (v88)
            {

              v140 = 0;
              v90 = v138;
              v58 = v127;
              v91 = v125;
LABEL_81:
              v101 = type metadata accessor for Date();
              (*(*(v101 - 8) + 56))(v90, 1, 1, v101);
              v102 = v58;
              v100 = 0;
              goto LABEL_82;
            }

            v140 = 0;
            v94 = v89;

            v124 = v87;
            v95 = v94;
            if (v94 >> 62)
            {
              result = _CocoaArrayWrapper.endIndex.getter();
              v95 = v94;
            }

            else
            {
              result = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v90 = v138;
            v58 = v127;
            if (!result)
            {

LABEL_80:
              v91 = v125;
              v87 = v124;
              goto LABEL_81;
            }

            if ((v95 & 0xC000000000000001) != 0)
            {
              v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_104;
              }

              v97 = *(v95 + 32);
            }

            v98 = v97;

            if (!v98)
            {
              v90 = v138;
              goto LABEL_80;
            }

            v99 = v58;
            v100 = v98;
            dispatch thunk of MapsSyncObject.createTime.getter();

            v58 = v127;
            v91 = v125;
            v87 = v124;
LABEL_82:
            dispatch thunk of MapsSyncObject.createTime.setter();

            (*v136)(v139, v144);
            a1 = v149;
LABEL_57:
            v92 = v58;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            swift_unknownObjectRelease();
            sub_10005BF8C(v154);
            v23 = v156;
          }
        }

        else
        {
          sub_10005BF8C(v154);

          swift_unknownObjectRelease();
          a1 = v149;
        }
      }

      else
      {
        sub_10005BF8C(v154);
      }
    }

    else
    {
LABEL_5:
      sub_10005BF8C(v154);
    }
  }

  while (2)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_89;
    }

    if (v31 < v29)
    {
      v28 = *(v25 + 8 * v31);
      ++v30;
      if (v28)
      {
        v30 = v31;
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  if (v23 >> 62)
  {
LABEL_89:
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      goto LABEL_87;
    }

    goto LABEL_90;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
LABEL_87:
    v103 = type metadata accessor for TaskPriority();
    v104 = v145;
    (*(*(v103 - 8) + 56))(v145, 1, 1, v103);
    type metadata accessor for MainActor();
    v105 = v148;
    v106 = v146;
    v107 = v147;
    sub_1000D88A8(v147, v146);
    v108 = static MainActor.shared.getter();
    v109 = swift_allocObject();
    v109[2] = v108;
    v109[3] = &protocol witness table for MainActor;
    v109[4] = v23;
    v109[5] = v105;
    v109[6] = v107;
    v109[7] = v106;
    sub_10020AAE4(0, 0, v104, &unk_10120B4B8, v109);
  }

LABEL_90:

  sub_100014C84(0, &qword_10190B4F0);
  v110 = static OS_dispatch_queue.main.getter();
  v111 = swift_allocObject();
  v112 = v148;
  *(v111 + 16) = v148;
  v113 = swift_allocObject();
  *(v113 + 16) = sub_1004CE074;
  *(v113 + 24) = v111;
  v152 = sub_10025D234;
  v153 = v113;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v151 = sub_100060ED8;
  *(&v151 + 1) = &unk_10161DC48;
  v114 = _Block_copy(&aBlock);
  v115 = v112;

  v116 = v110;
  v117 = v114;
  v118 = v116;
  label = dispatch_queue_get_label(v118);
  v120 = dispatch_queue_get_label(0);
  if (label == v120)
  {

    goto LABEL_96;
  }

  if (label && v120)
  {
    v121 = strcmp(label, v120);

    if (!v121)
    {
LABEL_96:
      v122 = objc_autoreleasePoolPush();
      v117[2](v117);
      objc_autoreleasePoolPop(v122);
      goto LABEL_99;
    }
  }

  else
  {
  }

  dispatch_sync(v118, v117);
LABEL_99:

  _Block_release(v117);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_104:
    __break(1u);
    return result;
  }

  if (v147)
  {
    return v147(0);
  }

  return result;
}

uint64_t sub_1004C8F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[8] = type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v9;
  v7[11] = v8;

  return _swift_task_switch(sub_1004C8FD8, v9, v8);
}

uint64_t sub_1004C8FD8()
{
  type metadata accessor for MapsSyncStore();
  v0[12] = static MapsSyncStore.sharedStore.getter();
  v4 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1004C9098;
  v2 = v0[4];

  return v4(v2);
}

uint64_t sub_1004C9098()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1004C9360;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1004C91B4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1004C91B4()
{
  swift_unknownObjectWeakInit();

  return _swift_task_switch(sub_1004C9220, 0, 0);
}

uint64_t sub_1004C9220()
{
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004C92AC, v2, v1);
}

uint64_t sub_1004C92AC()
{
  v1 = v0[14];
  v2 = v0[6];

  sub_1004C96B8((v0 + 3), v2);
  if (v1)
  {
  }

  else
  {
    swift_unknownObjectWeakDestroy();
    v4 = v0[10];
    v5 = v0[11];

    return _swift_task_switch(sub_1002F4994, v4, v5);
  }
}

uint64_t sub_1004C9360()
{
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "FavoriteCollectionHandler: Error saving added items: %@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  swift_unknownObjectWeakInit();

  return _swift_task_switch(sub_1004C950C, 0, 0);
}

uint64_t sub_1004C950C()
{
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004C9598, v2, v1);
}

uint64_t sub_1004C9598()
{
  v1 = v0[6];

  sub_1004C99CC((v0 + 2), v1);
  swift_unknownObjectWeakDestroy();
  v2 = v0[10];
  v3 = v0[11];

  return _swift_task_switch(sub_1004C9650, v2, v3);
}

uint64_t sub_1004C9650()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004C96B8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  sub_100014C84(0, &qword_10190B4F0);
  v5 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1004CE074;
  *(v7 + 24) = v6;
  v25 = sub_10025D234;
  v26 = v7;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100060ED8;
  v24 = &unk_10161DCE8;
  v8 = _Block_copy(&aBlock);

  v9 = v4;

  v10 = v5;
  v11 = v8;
  v12 = v10;
  label = dispatch_queue_get_label(v12);
  v14 = dispatch_queue_get_label(0);
  if (label == v14)
  {

LABEL_8:
    v16 = objc_autoreleasePoolPush();
    v11[2](v11);
    objc_autoreleasePoolPop(v16);
    goto LABEL_11;
  }

  if (label && v14)
  {
    v15 = strcmp(label, v14);

    if (!v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  dispatch_sync(v12, v11);
LABEL_11:

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v9;
    v25 = sub_1004CE09C;
    v26 = v18;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_100038868;
    v24 = &unk_10161DD38;
    v19 = _Block_copy(&aBlock);
    v20 = v9;

    [v20 rebuildContent:v19];
    _Block_release(v19);
    if (a2)
    {
      a2(0);
    }
  }
}

void sub_1004C99CC(uint64_t a1, void (*a2)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  sub_100014C84(0, &qword_10190B4F0);
  v5 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1004CE074;
  *(v7 + 24) = v6;
  aBlock[4] = sub_10025D234;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100060ED8;
  aBlock[3] = &unk_10161DDB0;
  v8 = _Block_copy(aBlock);

  v9 = v4;

  v10 = v5;
  v11 = v8;
  v12 = v10;
  label = dispatch_queue_get_label(v12);
  v14 = dispatch_queue_get_label(0);
  if (label == v14)
  {

LABEL_8:
    v16 = objc_autoreleasePoolPush();
    v11[2](v11);
    objc_autoreleasePoolPop(v16);
    goto LABEL_11;
  }

  if (label && v14)
  {
    v15 = strcmp(label, v14);

    if (!v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  dispatch_sync(v12, v11);
LABEL_11:

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v18 = objc_opt_self();
      v19 = String._bridgeToObjectiveC()();
      v20 = [v18 GEOErrorWithCode:0 reason:v19];

      a2(v20);
    }
  }
}

uint64_t FavoriteCollectionHandler.remove(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v19 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v3;
  v13[4] = a2;
  v13[5] = a3;
  aBlock[4] = sub_1004CD57C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_10161D940;
  v14 = _Block_copy(aBlock);

  v15 = v3;
  sub_1000D88A8(a2, a3);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100041438(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = v19;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v21 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v20);
}

void sub_1004CA048(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v73 = a4;
  v74 = a3;
  v6 = 0;
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v72 = &v71 - v8;
  v78 = _swiftEmptyArrayStorage;
  v89 = _swiftEmptyArrayStorage;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = &GEOMapsAuthEnvironmentKey_ptr;
  v80 = 0;
LABEL_6:
  if (v11)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      if (_CocoaArrayWrapper.endIndex.getter() <= 0)
      {
        goto LABEL_89;
      }

LABEL_24:
      sub_100014C84(0, &qword_10190B4F0);
      v24 = static OS_dispatch_queue.main.getter();
      v25 = swift_allocObject();
      *(v25 + 16) = a2;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_1004CE070;
      *(v26 + 24) = v25;
      v84 = sub_10025D234;
      v85 = v26;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v83 = sub_100060ED8;
      *(&v83 + 1) = &unk_10161DA68;
      v27 = _Block_copy(&aBlock);
      v81 = a2;

      v28 = v24;
      v29 = v27;
      v30 = v28;
      label = dispatch_queue_get_label(v30);
      v32 = dispatch_queue_get_label(0);
      if (label != v32)
      {
        if (label && v32)
        {
          v33 = strcmp(label, v32);

          if (!v33)
          {
            goto LABEL_30;
          }
        }

        else
        {
        }

        dispatch_sync(v30, v29);
LABEL_33:

        _Block_release(v29);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else if (!(v13 >> 62))
        {
          v36 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
LABEL_36:
            if (v36 < 1)
            {
              __break(1u);
              return;
            }

            v37 = 0;
            v38 = OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_queryContents;
            v75 = &v81[OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_placeCount];
            v77 = v13 & 0xC000000000000001;
            v76 = v36;
            while (1)
            {
              if (v77)
              {
                v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v39 = *(v13 + 8 * v37 + 32);
              }

              v40 = v39;
              dispatch thunk of CollectionPlaceItem.type.setter();
              v41 = v81;
              swift_beginAccess();
              a2 = v40;
              v42 = v80;
              v43 = sub_1004CD674(&v41[v38], a2);
              v80 = v42;

              v13 = *&v41[v38];
              v44 = v13 >> 62;
              if (v13 >> 62)
              {
                v45 = _CocoaArrayWrapper.endIndex.getter();
                v46 = v45 - v43;
                if (v45 < v43)
                {
                  goto LABEL_82;
                }
              }

              else
              {
                v45 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v46 = v45 - v43;
                if (v45 < v43)
                {
                  goto LABEL_82;
                }
              }

              if (v43 < 0)
              {
                goto LABEL_83;
              }

              if (v44)
              {
                v47 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v47 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v47 < v45)
              {
                goto LABEL_84;
              }

              v48 = -v46;
              if (__OFSUB__(0, v46))
              {
                goto LABEL_85;
              }

              if (v44)
              {
                v49 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v49 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v50 = v49 - v46;
              if (__OFADD__(v49, v48))
              {
                goto LABEL_86;
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *&v81[v38] = v13;
              v79 = a2;
              if (isUniquelyReferenced_nonNull_bridgeObject)
              {
                break;
              }

              if (v44)
              {
                goto LABEL_58;
              }

LABEL_59:
              v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              *&v81[v38] = v13;
              a2 = (v13 & 0xFFFFFFFFFFFFFF8);
LABEL_60:
              type metadata accessor for CollectionPlaceItem();
              swift_arrayDestroy();
              v52 = v13 >> 62;
              if (v48)
              {
                if (v52)
                {
                  v59 = _CocoaArrayWrapper.endIndex.getter();
                  v54 = v59 - v45;
                  if (__OFSUB__(v59, v45))
                  {
LABEL_80:
                    __break(1u);
                    goto LABEL_81;
                  }
                }

                else
                {
                  v53 = a2[2];
                  v54 = v53 - v45;
                  if (__OFSUB__(v53, v45))
                  {
                    goto LABEL_80;
                  }
                }

                v55 = &a2[v45 + 4];
                if (v45 == v43 && &a2[v43 + 4] < &v55[8 * v54])
                {
                  if (!v52)
                  {
                    goto LABEL_66;
                  }

LABEL_68:
                  v56 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  memmove(&a2[v43 + 4], v55, 8 * v54);
                  if (v52)
                  {
                    goto LABEL_68;
                  }

LABEL_66:
                  v56 = a2[2];
                }

                if (__OFADD__(v56, v48))
                {
                  goto LABEL_87;
                }

                a2[2] = v56 + v48;
              }

              *&v81[v38] = v13;
              swift_endAccess();
              if (v52)
              {
                v57 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v57 = a2[2];
              }

              v13 = v78;
              ++v37;

              v58 = v75;
              *v75 = v57;
              *(v58 + 8) = 0;
              if (v76 == v37)
              {
                goto LABEL_93;
              }
            }

            if (!v44)
            {
              a2 = (v13 & 0xFFFFFFFFFFFFFF8);
              if (v50 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

LABEL_58:
            _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_59;
          }

LABEL_93:
          v64 = type metadata accessor for TaskPriority();
          v65 = v72;
          (*(*(v64 - 8) + 56))(v72, 1, 1, v64);
          type metadata accessor for MainActor();
          v66 = v81;
          v67 = v74;
          v68 = v73;
          sub_1000D88A8(v74, v73);
          v69 = static MainActor.shared.getter();
          v70 = swift_allocObject();
          v70[2] = v69;
          v70[3] = &protocol witness table for MainActor;
          v70[4] = v13;
          v70[5] = v66;
          v70[6] = v67;
          v70[7] = v68;
          sub_10020AAE4(0, 0, v65, &unk_10120B4A0, v70);

          return;
        }

        v36 = _CocoaArrayWrapper.endIndex.getter();
        if (v36)
        {
          goto LABEL_36;
        }

        goto LABEL_93;
      }

LABEL_30:
      v34 = objc_autoreleasePoolPush();
      v29[2](v29);
      objc_autoreleasePoolPop(v34);
      goto LABEL_33;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(a1 + 56 + 8 * v14);
    ++v6;
    if (v11)
    {
      v6 = v14;
LABEL_11:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      sub_10012EF50(*(a1 + 48) + 40 * (v15 | (v6 << 6)), &aBlock);
      v87[0] = aBlock;
      v87[1] = v83;
      v88 = v84;
      v16.isa = AnyHashable._bridgeToObjectiveC()().isa;
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = [objc_opt_self() _itemWithGeoMapItem:v17];

        if (v18)
        {
          goto LABEL_16;
        }

LABEL_5:
        sub_10005BF8C(v87);
      }

      else
      {

        v19.isa = AnyHashable._bridgeToObjectiveC()().isa;
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (!v20)
        {

          goto LABEL_5;
        }

        v18 = v20;
LABEL_16:
        v21 = type metadata accessor for FavoriteCollectionHandler();
        v86.receiver = a2;
        v86.super_class = v21;
        v22 = objc_msgSendSuper2(&v86, "itemForMapItem:", v18);

        if (!v22)
        {
          goto LABEL_5;
        }

        if (dispatch thunk of CollectionPlaceItem.type.getter())
        {
          v23 = v22;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v81 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          sub_10005BF8C(v87);
          v78 = v89;
        }

        else
        {
          sub_10005BF8C(v87);
        }
      }

      goto LABEL_6;
    }
  }

  v13 = v78;
  if (v78 >> 62)
  {
    goto LABEL_88;
  }

  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
    goto LABEL_24;
  }

LABEL_89:

  if (v74)
  {
    v60 = v74;
    v61 = objc_opt_self();
    v62 = String._bridgeToObjectiveC()();
    v63 = [v61 GEOErrorWithCode:0 reason:v62];

    v60(v63);
  }
}