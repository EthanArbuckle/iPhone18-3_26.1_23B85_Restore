uint64_t sub_1000486E8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100048728()
{
  sub_1000A1574(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100048774()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000487C4()
{
  sub_1000F1230(*(v0 + 16), *(v0 + 24));

  sub_1002BAA0C(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10004882C()
{
  v1 = (type metadata accessor for CarHomeView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for CarSearchBarViewModel();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004891C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004895C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004899C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000489E4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100048A34()
{
  v1 = type metadata accessor for VisitLocationCorrectionSearchableView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1000A1574(*(v5 + 64), *(v5 + 72));

  v6 = *(v1 + 40);
  sub_1000CE6B8(&qword_10190CBC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for InterfaceIdiom();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100048BF0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_100048C48()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100048CA0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048D6C()
{

  sub_1000F1230(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100048DC0()
{

  sub_1000A1574(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100048E0C(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100048E5C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v1 + v4;

  v7 = v2[5];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v1 + v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = *(v9 + 8);
  v10(v6 + v2[7], v8);
  sub_1000CE6B8(&qword_10191B7B8);

  v10(v6 + v2[8], v8);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_100049004()
{

  sub_1000F1230(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100049050()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100049098()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100049100()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100049140()
{
  v1 = type metadata accessor for VisitHistoryHomeView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  sub_1000CE6B8(&qword_10190CBC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for InterfaceIdiom();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_1000A1574(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v8 = v1[10];
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[11];
  sub_1000CE6B8(&qword_10191DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004937C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000493BC(uint64_t a1)
{
  swift_unknownObjectRelease();

  if (*(v1 + 40))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100049418()
{
  v1 = (type metadata accessor for PinnedItemsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for EditMode();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000CE6B8(&qword_10190CA30);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004954C()
{
  v1 = type metadata accessor for RecentCellRowViewModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  if (*(v0 + v3 + 24))
  {
    sub_10004E3D0(v0 + v3);
  }

  v5 = v0 + v3 + *(v1 + 20);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  swift_unknownObjectRelease();
  sub_1000D87F0(*(v5 + *(v7 + 24)), *(v5 + *(v7 + 24) + 8));

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000496B0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000496FC()
{
  v1 = (type metadata accessor for UserGuidesListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for EditMode();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000CE6B8(&qword_10190CA30);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100049848()
{
  sub_1000F1230(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000498AC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000498EC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10004993C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004997C()
{
  v1 = (type metadata accessor for RouteItemsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for EditMode();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000CE6B8(&qword_10190CA30);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100049AE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100049B28()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100049B70()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100049C3C(uint64_t a1)
{
  v2 = sub_100039D48();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Forcing recalculation", v3, 2u);
  }

  *(*(a1 + 32) + 76) = 1;
}

void sub_100049F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_100049F50(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 76) == 1 && (*(v2 + 78) & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *(a1[4] + 76) = 0;
    *(*(a1[6] + 8) + 24) = atomic_fetch_add((a1[4] + 72), 1u) + 1;
    v6 = a1[4];
    if ((*(v6 + 77) & 1) == 0)
    {
      *(v6 + 77) = 1;
      v7 = [*(a1[4] + 32) copy];
      v8 = *(a1[7] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }

  else
  {
    v3 = sub_100039D48();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = a1[4];
      v5 = *(v4 + 76);
      LODWORD(v4) = *(v4 + 78);
      v10[0] = 67109376;
      v10[1] = v5;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Not recalculating, _needsRecalculation: %d _updatesPaused: %d", v10, 0xEu);
    }
  }
}

uint64_t sub_10004A4E0(void *a1)
{
  [a1 region];
  v3 = *(v1 + OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_viewPortBuffer);
  v5 = v4 * v3;
  [a1 region];
  v7 = v3 * v6;
  [a1 region];
  v9 = v8;
  [a1 region];
  v11 = v5 + v9 + v10 * 0.5;
  [a1 region];
  v13 = v12;
  [a1 region];
  *(v1 + OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_northeast) = CLLocationCoordinate2DMake(v11, v7 + v13 + v14 * 0.5);
  [a1 region];
  v16 = v15;
  [a1 region];
  v18 = v16 - v17 * 0.5 - v5;
  [a1 region];
  v20 = v19;
  [a1 region];
  *(v1 + OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_southwest) = CLLocationCoordinate2DMake(v18, v20 - v21 * 0.5 - v7);

  return sub_10004A634(0);
}

uint64_t sub_10004A634(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_queryQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_10004B02C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_10160EE68;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_1000413A8(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_10004EC58(&qword_1019097E0, &unk_10190B500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_10004A934()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10004A978(uint64_t a1, int a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v41 = a2;
    v42 = v10;
    v43 = v8;
    v44 = v6;
    v45 = v7;
    v46 = v4;
    v47 = v3;
    Predicate = type metadata accessor for MapsSyncQueryPredicate();
    v14 = objc_allocWithZone(Predicate);
    v15 = MapsSyncQueryPredicate.init(minLatitude:maxLatitude:minLongitude:maxLongitude:)();
    sub_1000CE6B8(&qword_101908400);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1011E4FD0;
    *(v16 + 32) = static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
    *(v16 + 40) = v15;
    v17 = objc_allocWithZone(Predicate);
    v18 = v15;
    v19 = MapsSyncQueryPredicate.init(and:)();
    v20 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
    v21 = MapsSyncRange.init(offset:limit:)();
    Options = type metadata accessor for MapsSyncQueryOptions();
    v23 = objc_allocWithZone(Options);
    v24 = v19;
    v25 = v21;
    v26 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
    v27 = objc_allocWithZone(Options);
    v28 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    type metadata accessor for FavoriteItemRequest();
    v29 = FavoriteItemRequest.__allocating_init()();
    if (v12[OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_isFetchConfinementEnabled])
    {
      v30 = v26;
    }

    else
    {
      v30 = v28;
    }

    v31 = v30;
    v32 = dispatch thunk of FavoriteItemRequest.fetchSync(options:)();

    v33 = sub_100057960();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v32;
    *(v35 + 32) = v41 & 1;
    aBlock[4] = sub_100060DAC;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_10160EEB8;
    v36 = _Block_copy(aBlock);

    v37 = v42;
    static DispatchQoS.unspecified.getter();
    v48 = &_swiftEmptyArrayStorage;
    sub_1000413A8(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000CE6B8(&unk_10190B500);
    sub_10004EC58(&qword_1019097E0, &unk_10190B500);
    v38 = v44;
    v39 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v36);

    (*(v46 + 8))(v38, v39);
    (*(v43 + 8))(v37, v45);
  }

  return result;
}

uint64_t sub_10004AFEC()
{

  return _swift_deallocObject(v0, 33, 7);
}

id sub_10004B334()
{
  if (qword_10195D358 != -1)
  {
    dispatch_once(&qword_10195D358, &stru_1016292E0);
  }

  v1 = qword_10195D350;

  return v1;
}

void sub_10004B388(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsPerformance");
  v2 = qword_10195D350;
  qword_10195D350 = v1;
}

void sub_10004CF68(uint64_t a1)
{
  v2 = [*(a1 + 32) containeeLayout];
  v3 = [*(a1 + 32) currentViewController];
  v4 = [v3 cardPresentationController];
  v5 = [v4 useDefaultLayoutWhenCalculatingBottomInsetForFloatingControls];

  if (v5)
  {
    v6 = [*(a1 + 32) currentViewController];
    v7 = [v6 cardPresentationController];
    v2 = [v7 defaultContaineeLayout];
  }

  if (v2 != 5)
  {
    v8 = [*(*(a1 + 32) + 48) count];
    if (!v8)
    {
      v13 = 0.0;
      v12 = 0.0;
LABEL_31:
      v34 = fmin(v13, v12);
      v35 = [*(a1 + 32) view];
      [v35 bounds];
      Height = CGRectGetHeight(v42);
      v37 = *(a1 + 32);
      if (v34 < Height * 0.600000024)
      {
        v37[11] = v34;
      }

      else
      {
        v38 = [v37 view];
        [v38 bounds];
        *(*(a1 + 32) + 88) = CGRectGetHeight(v43) * 0.600000024;
      }

      return;
    }

    v9 = v8;
    v10 = *(a1 + 32);
    if (*(a1 + 40) == 1)
    {
      [v10 _cardHeightForComputingBottomMapEdgeInsets];
      v12 = v11;
    }

    else
    {
      v14 = v10[4];
      v15 = [v10 currentViewController];
      v16 = [v14 objectForKey:v15];

      [v16 bounds];
      v12 = CGRectGetHeight(v41);
    }

    v17 = 0;
    v18 = v9 - 1;
    do
    {
      v19 = v17;
      v20 = [*(*(a1 + 32) + 48) containeeStateAtIndex:v18];
      v17 = [v20 viewController];

      v21 = [v17 cardPresentationController];
      v22 = [v21 maximumLayoutForEdgeInsetUpdate];

      if (v18-- == 0)
      {
        break;
      }
    }

    while (v17 && v22 == 0);
    if (!v22)
    {
      v25 = [*(a1 + 32) currentViewController];

      v22 = 2;
      v17 = v25;
    }

    [v17 heightForLayout:v22];
    v13 = v26;
    if (v26 != -1.0)
    {
LABEL_30:

      goto LABEL_31;
    }

    v27 = sub_10002A8B8();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
LABEL_29:

      v13 = v12;
      goto LABEL_30;
    }

    v28 = *(a1 + 32);
    if (!v28)
    {
      v33 = @"<nil>";
      goto LABEL_28;
    }

    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    if (objc_opt_respondsToSelector())
    {
      v31 = [v28 performSelector:"accessibilityIdentifier"];
      v32 = v31;
      if (v31 && ![v31 isEqualToString:v30])
      {
        v33 = [NSString stringWithFormat:@"%@<%p, %@>", v30, v28, v32];

        goto LABEL_26;
      }
    }

    v33 = [NSString stringWithFormat:@"%@<%p>", v30, v28];
LABEL_26:

LABEL_28:
    *buf = 138543362;
    v40 = v33;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "[%{public}@] Default height limit is not supported, don't limit", buf, 0xCu);

    goto LABEL_29;
  }
}

void sub_10004D730(id a1)
{
  v1 = [NSOrderedSet orderedSetWithObject:&OBJC_PROTOCOL___ContainerDelegate];
  v2 = qword_10195CE00;
  qword_10195CE00 = v1;
}

void sub_10004D7C0(id a1)
{
  v1 = _os_feature_enabled_impl();
  v2 = _UISheetCornerRadius;
  if (v1)
  {
    v2 = 32.0;
  }

  qword_10195DF98 = *&v2;
}

void sub_10004DCE4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_isHidden);
  if (v2 != (a1 & 1))
  {
    if (qword_1019066F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100021540(v3, qword_10195FF70);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      if (v2)
      {
        v7 = 0x6E6564646968;
      }

      else
      {
        v7 = 0x656C6269736976;
      }

      if (v2)
      {
        v8 = 0xE600000000000000;
      }

      else
      {
        v8 = 0xE700000000000000;
      }

      v9 = sub_10004DEB8(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, oslog, v4, "recenter button visibility did change to %s", v5, 0xCu);
      sub_10004E3D0(v6);
    }

    else
    {
    }
  }
}

unint64_t sub_10004DEB8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10004DF84(v11, 0, 0, 1, a1, a2);
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
    sub_10004E374(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10004E3D0(v11);
  return v7;
}

unint64_t sub_10004DF84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10004E1C0(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10004E090(uint64_t a1, unint64_t a2)
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

  v6 = sub_10004E20C(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10004E20C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

char *sub_10004E1C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10004E090(a1, a2);
  sub_10004E288(&off_101600148);
  return v3;
}

void *sub_10004E20C(uint64_t a1, uint64_t a2)
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

  sub_1000CE6B8(&qword_10191D400);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_10004E288(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003A1B5C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10004E374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10004E3D0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_10004E5A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = sub_100033B24();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 56));
      v7 = *(a1 + 40);
      *buf = 138412802;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ %@, weather location = %@", buf, 0x20u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [WeakRetained[1] copy];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12) weatherLocationDataProvider:WeakRetained didChangeLocation:*(a1 + 40)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

uint64_t sub_10004E7C8(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000E1508;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_1016029D0;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100041288(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_1000414C8(&qword_1019097E0, &unk_10190B500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

uint64_t sub_10004EAC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10004EB04(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_lastSavedLocation);
  *(v2 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_lastSavedLocation) = a1;

  if (a1)
  {
    v5 = qword_101906538;
    v10 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100021540(v6, qword_10195FA88);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Location-based air quality conditions refresh", v9, 2u);
    }

    sub_1000E04B4(v10);
  }

  else
  {

    sub_10004E7C8(0);
  }
}

uint64_t sub_10004EC58(unint64_t *a1, uint64_t *a2)
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

void sub_10004ED24(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_lastSavedLocation);
  *(v2 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_lastSavedLocation) = a1;

  if (a1)
  {
    v5 = qword_1019067B0;
    v10 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100021540(v6, qword_101960138);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Location-based weather conditions refresh", v9, 2u);
    }

    sub_100390D20(v10);
  }

  else
  {

    sub_10004EE78(0);
  }
}

uint64_t sub_10004EE78(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_100391D78;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101614C90;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100041288(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_10004EC58(&qword_1019097E0, &unk_10190B500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

uint64_t sub_10004F160()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10004F508()
{
  if (qword_10195D5E8 != -1)
  {
    dispatch_once(&qword_10195D5E8, &stru_101629800);
  }

  v1 = qword_10195D5E0;

  return v1;
}

void sub_10004F55C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "LightLevel");
  v2 = qword_10195D5E0;
  qword_10195D5E0 = v1;
}

void sub_10004FD58(uint64_t a1)
{
  *(*(a1 + 32) + 101) = 0;
  [*(a1 + 32) setContaineesHidden:{objc_msgSend(*(a1 + 32), "shouldHideCard")}];
  if (([*(*(a1 + 32) + 40) containerReadyToInsert] & 1) == 0)
  {
    [*(*(a1 + 32) + 40) setContainerReadyToInsert:1];
    if ([*(*(a1 + 32) + 40) dequeueWaitingContainees])
    {
      v2 = [*(a1 + 32) currentViewController];
      [v2 didBecomeCurrent];
    }
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"ContainerDidUnlockNotification" object:*(a1 + 32)];
}

void sub_10004FF58(uint64_t a1)
{
  v2 = sub_100021DB0(*(*(a1 + 32) + 56), &stru_101660008);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100051E58(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) collectionHandlerInfoUpdated:*(a1 + 32)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100051F54(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) collectionHandlerContentUpdated:*(a1 + 32)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id sub_100052314()
{
  if (qword_10195DBF0 != -1)
  {
    dispatch_once(&qword_10195DBF0, &stru_10162D138);
  }

  v1 = qword_10195DBE8;

  return v1;
}

void sub_100052A18(id a1)
{
  v1 = objc_alloc_init(CoreRoutineLocationOfInterestManager);
  v2 = qword_10195E1F8;
  qword_10195E1F8 = v1;
}

void sub_100052FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100053124(id a1)
{
  v1 = objc_alloc_init(KeyboardObserver);
  v2 = qword_10195EA90;
  qword_10195EA90 = v1;
}

void sub_10005371C(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v10 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"ContainerContainee"];

  if (WeakRetained)
  {
    v6 = [v10 object];
    v7 = objc_loadWeakRetained(WeakRetained + 57);

    if (v6 == v7)
    {
      if (v5)
      {
        v8 = objc_loadWeakRetained(WeakRetained + 57);
        v9 = [v8 currentViewController];
        [WeakRetained containerViewControllerWillPresentContainee:v5 overContainee:v9];
      }
    }
  }
}

void sub_100053E6C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ProactiveTray");
  v2 = qword_10195D620;
  qword_10195D620 = v1;
}

uint64_t sub_100054304(void *a1)
{
  v1 = [a1 floor];
  v2 = v1;
  if (v1 && ([v1 level], NSIntegerIsValidFloorOrdinal()))
  {
    [v2 level];
    v3 = GEOLocationFloorOrdinalFromNSInteger();
  }

  else
  {
    v3 = 0x7FFFFFFFLL;
  }

  return v3;
}

void sub_1000543DC(uint64_t a1)
{
  v4 = MapsSuggestionsResourceDepotForMapsProcess();
  v2 = [v4 oneInsights];
  [v2 isTouristHere];
  *(*(a1 + 32) + 312) = v3;
}

uint64_t sub_1000545D4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100054628()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1002F1A7C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101610120;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000413F0(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_10004EC58(&qword_1019097E0, &unk_10190B500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_100054908()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054944(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003AC40;

  return sub_100025084(a1, v4);
}

void sub_100054AB4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    v3 = sub_1000564AC(v3);
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7[0] = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v7[1] = v5;
  v6 = v4;
  sub_1000562A4(v7, v6);

  *a1 = v3;
}

uint64_t sub_100054B80(void *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
}

void sub_100055670(void *a1)
{
  v2 = v1;
  if (!a1)
  {
    v25 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
    swift_beginAccess();
    v26 = *(v1 + v25);

    os_unfair_lock_lock((v26 + 24));
    v27 = *(v26 + 16);

    os_unfair_lock_unlock((v26 + 24));

    v28 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__sortedShortcuts;
    v29 = swift_beginAccess();
    v38 = v27;
    v30 = *(v2 + v28);
    __chkstk_darwin(v29);
    os_unfair_lock_lock((v30 + 24));
    sub_100055658((v30 + 16));
    os_unfair_lock_unlock((v30 + 24));

    swift_endAccess();
    sub_100054628();
    return;
  }

  v38 = &_swiftEmptyArrayStorage;
  v37 = &_swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v36 = a1;

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v2;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_23:
    v9 = &_swiftEmptyArrayStorage;
LABEL_24:

    v31 = v36;
    sub_100054AB4(&v37, v31);

    v39 = v9;
    sub_100054B58(v37);
    v32 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__sortedShortcuts;
    v33 = swift_beginAccess();
    v34 = *(v35 + v32);
    __chkstk_darwin(v33);
    os_unfair_lock_lock((v34 + 24));
    sub_1002F1E04((v34 + 16));
    os_unfair_lock_unlock((v34 + 24));

    swift_endAccess();
    sub_100054628();

    return;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  v35 = v2;
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_4:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = &_swiftEmptyArrayStorage;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = dispatch thunk of FavoriteItem.latitude.getter();
      if (!v13)
      {
        goto LABEL_6;
      }

      v14 = v13;
      [v13 doubleValue];
      v16 = v15;

      v17 = dispatch thunk of FavoriteItem.longitude.getter();
      if (!v17)
      {
        goto LABEL_6;
      }

      v18 = v17;
      [v17 doubleValue];
      v20 = v19;

      v21 = [objc_allocWithZone(CLLocation) initWithLatitude:v16 longitude:v20];
      [v21 distanceFromLocation:v36];
      v23 = v22;

      if (qword_1019066B8 != -1)
      {
        swift_once();
      }

      if (*&qword_10195FEE8 < v23)
      {
        v24 = v12;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
LABEL_6:
        v10 = v12;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v38;
      }

      ++v8;
    }

    while (v7 != v8);
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_100055AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100094BA8, v6, v5);
}

uint64_t sub_100055B74()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10003AC40;

  return sub_100055AD4(v2, v3, v5, v4);
}

uint64_t sub_100055C34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10003AC40;

  return v6();
}

uint64_t sub_100055D1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003AC40;

  return sub_100055C34(v2, v3, v4);
}

uint64_t sub_100055DDC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10003AC4C;

  return v7();
}

uint64_t sub_100055EC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_100055DDC(a1, v4, v5, v6);
}

uint64_t sub_100056010()
{
  v1 = v0[23];
  v0[24] = v1;
  v2 = v0[21];
  sub_100055670(v1);
  v3 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  swift_beginAccess();
  v4 = *(v2 + v3);

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  v0[25] = v5;

  os_unfair_lock_unlock((v4 + 24));

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v0[26] = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[26] = v6;
    if (v6)
    {
LABEL_3:
      if (v6 < 1)
      {
        __break(1u);
      }

      else
      {
        v7 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager_mapViewMode;
        v0[27] = OBJC_IVAR____TtC4Maps20MapsFavoritesManager_mapViewMode;
        v0[28] = 0;
        v8 = v0[25];
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v7 = v0[27];
        }

        else
        {
          v9 = *(v8 + 32);
        }

        v0[29] = v9;
        v10 = v0[24];
        v11 = *(v0[21] + v7);
        v0[2] = v0;
        v0[3] = sub_1002E60BC;
        v12 = swift_continuation_init();
        v0[17] = sub_1000CE6B8(&unk_10191A930);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_1002E6364;
        v0[13] = &unk_10160FFE0;
        v0[14] = v12;
        [v9 updateSubtitleWithViewMode:v11 currentLocation:v10 completionHandler:v0 + 10];
        v6 = (v0 + 2);
      }

      return _swift_continuation_await(v6);
    }
  }

  v13 = v0[1];

  return v13();
}

void sub_1000562A4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for MapsFavoriteItem();
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      v9 = v4;
      sub_1002EF114(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1002EFB80(0, v3, 1, a1, v4);
  }
}

uint64_t type metadata accessor for HomeListRootController()
{
  result = qword_10191BFC0;
  if (!qword_10191BFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100056448(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1000564BC()
{
  result = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_1000565EC(void *a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&qword_10191C2F0);
  __chkstk_darwin(v4 - 8);
  v63 = &v51 - v5;
  v6 = sub_1000CE6B8(&qword_10191C2F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000CE6B8(&qword_10191C300);
  v58 = *(v11 - 8);
  v59 = v11;
  __chkstk_darwin(v11);
  v57 = &v51 - v12;
  v13 = sub_1000CE6B8(&unk_10191C308);
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v60 = &v51 - v14;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC4Maps22HomeListRootController_loadingTimer] = 0;
  v19 = &v1[OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot];
  *v19 = 0;
  v19[1] = 0;
  v1[OBJC_IVAR____TtC4Maps22HomeListRootController_appliedInitialUpdate] = 0;
  v1[OBJC_IVAR____TtC4Maps22HomeListRootController_animateNextUpdate] = 0;
  *&v1[OBJC_IVAR____TtC4Maps22HomeListRootController_sectionControllersToUpdate] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC4Maps22HomeListRootController_dragItem] = 0;
  *&v1[OBJC_IVAR____TtC4Maps22HomeListRootController_dragPreviewView] = 0;
  *&v1[OBJC_IVAR____TtC4Maps22HomeListRootController_currentDragSession] = 0;
  *&v1[OBJC_IVAR____TtC4Maps22HomeListRootController_keyCommands] = &_swiftEmptyArrayStorage;
  v20 = OBJC_IVAR____TtC4Maps22HomeListRootController_keyCommandsToHandlers;
  *&v2[v20] = sub_100057080(&_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___suggestionsDataProvider] = 0;
  v21 = OBJC_IVAR____TtC4Maps22HomeListRootController_favoritesDataProvider;
  if (qword_1019066C8 != -1)
  {
    swift_once();
  }

  v22 = qword_10195FEF8;
  *&v2[v21] = qword_10195FEF8;
  *&v2[OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___homeResultDataProvider] = 1;
  v23 = OBJC_IVAR____TtC4Maps22HomeListRootController_dataSourceUpdateDebouncer;
  v53 = sub_1000CE6B8(&qword_10191C2E0);
  swift_allocObject();
  v24 = v22;
  *&v2[v23] = PassthroughSubject.init()();
  v25 = &_swiftEmptySetSingleton;
  v26 = &_swiftEmptySetSingleton;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_13;
    }

    v26 = sub_10052FE10(&_swiftEmptyArrayStorage);
  }

  while (1)
  {
    *&v2[OBJC_IVAR____TtC4Maps22HomeListRootController_subscribers] = v26;
    v2[OBJC_IVAR____TtC4Maps22HomeListRootController_isActive] = 0;
    *&v2[OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___compositionalLayout] = 0;
    *&v2[OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___diffableDataSource] = 0;
    *&v2[OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers] = 0;
    *&v2[OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___sectionControllersByIdentifier] = 0;
    *&v2[OBJC_IVAR____TtC4Maps22HomeListRootController_allDataProviders] = v25;
    if (qword_101906710 != -1)
    {
      swift_once();
    }

    v27 = sub_100021540(v15, qword_10195FFD0);
    v28 = *(v16 + 16);
    v16 += 16;
    v28(v18, v27, v15);
    OSSignposter.init(logger:)();
    v29 = &v2[OBJC_IVAR____TtC4Maps22HomeListRootController_sectionLoadingSignpostName];
    *v29 = "HomeListSectionLoading";
    *(v29 + 1) = 22;
    v29[16] = 2;
    *&v2[OBJC_IVAR____TtC4Maps22HomeListRootController_sectionLoadingSingpostState] = 0;
    *&v2[OBJC_IVAR____TtC4Maps22HomeListRootController_configuration] = a1;
    v30 = type metadata accessor for HomeListRootController();
    v65.receiver = v2;
    v65.super_class = v30;
    v2 = a1;
    v25 = &unk_101643C50;
    v31 = objc_msgSendSuper2(&v65, "init");
    if ((GEOConfigGetUInteger() & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    v26 = &_swiftEmptySetSingleton;
  }

  v52 = v2;
  v64[0] = *&v31[OBJC_IVAR____TtC4Maps22HomeListRootController_dataSourceUpdateDebouncer];

  v32 = v54;
  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  sub_100014C84(0, &qword_10190B4F0);
  v33 = static OS_dispatch_queue.main.getter();
  v34 = v55;
  v35 = v33;
  v64[3] = v33;
  v36 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
  sub_1000414C8(&qword_10191C318, &qword_10191C2E0);
  v51 = v27;
  sub_100059514(&qword_10191C320, &qword_10190B4F0);
  v37 = v57;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100024F64(v8, &qword_10191C2F8);

  (*(v34 + 8))(v32, v56);

  v38 = [objc_opt_self() mainRunLoop];
  v64[0] = v38;
  v39 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v40 = v63;
  (*(*(v39 - 8) + 56))(v63, 1, 1, v39);
  sub_100014C84(0, &qword_10191C328);
  sub_1000414C8(&qword_10191C330, &qword_10191C300);
  sub_100059514(&qword_10191C338, &qword_10191C328);
  v41 = v59;
  v42 = v60;
  Publisher.receive<A>(on:options:)();
  sub_100024F64(v40, &qword_10191C2F0);

  (*(v58 + 8))(v37, v41);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000414C8(&qword_10191C340, &unk_10191C308);
  v43 = v62;
  Publisher<>.sink(receiveValue:)();

  (*(v61 + 8))(v42, v43);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v46 = 136315394;
    swift_getObjectType();
    v47 = _typeName(_:qualified:)();
    v49 = sub_10004DEB8(v47, v48, v64);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_10004DEB8(0xD000000000000014, 0x8000000101232020, v64);
    _os_log_impl(&_mh_execute_header, v44, v45, "%s.%s", v46, 0x16u);
    swift_arrayDestroy();
  }

  return v31;
}

uint64_t sub_100057048()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100057080(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908178);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2DFC(v4, &v11, &qword_101908180);
      v5 = v11;
      result = sub_10005EBA4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10005E7BC(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_1000571D0()
{
  result = [objc_allocWithZone(type metadata accessor for MapsFavoritesManager()) init];
  qword_10195FEF8 = result;
  return result;
}

id sub_100057200()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v49 = v43 - v3;
  v4 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  __chkstk_darwin(v4);
  v46 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v45 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager_etaTimer;
  v43[2] = sub_100014C84(0, &unk_101909C10);
  v12 = sub_100014C84(0, &qword_10190B4F0);
  v43[0] = "Maps.MapsFavoritesSuggestor";
  v43[1] = v12;
  static DispatchQoS.unspecified.getter();
  v51 = &_swiftEmptyArrayStorage;
  sub_1000413F0(&qword_101909890, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000CE6B8(&unk_101917C30);
  sub_10004EC58(&qword_1019098A0, &unk_101917C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v44);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v51 = &_swiftEmptyArrayStorage;
  sub_1000413F0(&unk_101918E60, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_1000CE6B8(&unk_101909C20);
  sub_10004EC58(&qword_101918E70, &unk_101909C20);
  v15 = v46;
  v14 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v48 + 8))(v15, v14);
  *&v0[v45] = v16;
  v0[OBJC_IVAR____TtC4Maps20MapsFavoritesManager_isETATimerRunning] = 0;
  *&v0[OBJC_IVAR____TtC4Maps20MapsFavoritesManager____lazy_storage___msgRoutine] = 0;
  *&v0[OBJC_IVAR____TtC4Maps20MapsFavoritesManager____lazy_storage___observers] = 0;
  v17 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager_storeSubscriptionTypes;
  sub_100024578();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1011E1D30;
  *(v18 + 32) = type metadata accessor for FavoriteItem();
  *&v1[v17] = v18;
  v19 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  sub_1000CE6B8(&qword_101918E78);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = &_swiftEmptyArrayStorage;
  *&v1[v19] = v20;
  v21 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__sortedShortcuts;
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = &_swiftEmptyArrayStorage;
  *&v1[v21] = v22;
  v23 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__setupButtons;
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = &_swiftEmptyArrayStorage;
  *&v1[v23] = v24;
  v25 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__suggestions;
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = &_swiftEmptyArrayStorage;
  *&v1[v25] = v26;
  v27 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__hasInitialData;
  sub_1000CE6B8(&qword_101918E80);
  v28 = swift_allocObject();
  *(v28 + 20) = 0;
  *(v28 + 16) = 0;
  *&v1[v27] = v28;
  v29 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__needsSuggestions;
  v30 = swift_allocObject();
  *(v30 + 20) = 0;
  *(v30 + 16) = 1;
  *&v1[v29] = v30;
  v1[OBJC_IVAR____TtC4Maps20MapsFavoritesManager_active] = 0;
  v31 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager_mapViewMode;
  *&v1[v31] = [objc_opt_self() selectedViewMode];
  v32 = type metadata accessor for MapsFavoritesManager();
  v50.receiver = v1;
  v50.super_class = v32;
  v33 = objc_msgSendSuper2(&v50, "init");
  type metadata accessor for MapsSyncStore();
  v34 = v33;
  v35 = static MapsSyncStore.sharedStore.getter();
  dispatch thunk of MapsSyncStore.subscribe(_:)();

  v36 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v36, v34, sub_1002E35A4, RTLocationsOfInterestDidChangeNotification, 0, CFNotificationSuspensionBehaviorDrop);

  v37 = type metadata accessor for TaskPriority();
  v38 = v49;
  (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;
  v40 = v34;
  sub_10020AAE4(0, 0, v38, &unk_1011F94B8, v39);

  v41 = static OS_dispatch_queue.main.getter();
  _GEOConfigAddDelegateListenerForKey();

  sub_1000589F8();
  return v40;
}

id sub_100057960()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource____lazy_storage___updateQueue;
  v9 = *(v0 + OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource____lazy_storage___updateQueue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource____lazy_storage___updateQueue);
  }

  else
  {
    v11 = sub_100014C84(0, &qword_10190B4F0);
    v16[1] = "riteItem";
    v16[2] = v11;
    (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
    static DispatchQoS.unspecified.getter();
    v16[3] = &_swiftEmptyArrayStorage;
    sub_1000413A8(&qword_101909890, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000CE6B8(&unk_101917C30);
    sub_10004EC58(&qword_1019098A0, &unk_101917C30);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

void sub_100057C18(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100057C90(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1002F0AC8;
  }

  else
  {
    v6 = *(v4 + 24);

    *(v4 + 48) = a1;
    v5 = sub_100058FA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100057DC4(unint64_t a1, int a2)
{
  v79 = a2;
  isEscapingClosureAtFileLocation = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(isEscapingClosureAtFileLocation - 8);
  __chkstk_darwin(isEscapingClosureAtFileLocation);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v67 = *(v7 - 1);
  __chkstk_darwin(v7);
  v66 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v9 - 8);
  v11 = &v66 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v82 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100046AD4(&_swiftEmptyArrayStorage);
  v94 = result;
  if (a1 >> 62)
  {
LABEL_38:
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = result;
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = isEscapingClosureAtFileLocation;
  v70 = v4;
  v69 = v7;
  v68 = v6;
  if (v16)
  {
    if (v16 >= 1)
    {
      v17 = 0;
      v84 = 0;
      v6 = 0;
      v18 = a1 & 0xC000000000000001;
      v81 = (v13 + 48);
      v77 = (v13 + 32);
      v78 = OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_lockQueue;
      v76 = &v89;
      v72 = (v13 + 8);
      v75 = a1;
      v74 = v11;
      v73 = v12;
      v85 = a1 & 0xC000000000000001;
      v86 = v16;
      while (1)
      {
        if (v18)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v19 = *(a1 + 8 * v6 + 32);
        }

        v20 = v19;
        v21 = [v19 updatedStorageWithUserValues];
        if (v21)
        {
          v4 = v21;
          v22 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v21 isPlaceHolderPlace:0];
          if (v22)
          {
            v13 = v22;
            v23 = [v22 _styleAttributes];
            if (!v23 || (v24 = v23, v25 = [v23 isLabelPOI], v24, (v25 & 1) == 0))
            {
              v26 = dispatch thunk of FavoriteItem.customName.getter();
              if (v27)
              {
                v28 = v27;
                v83 = v26;
                v29 = String._bridgeToObjectiveC()();
                [v13 setName:v29];
LABEL_20:

                v32 = v20;
                dispatch thunk of MapsSyncObject.identifier.getter();

                if ((*v81)(v11, 1, v12) == 1)
                {

                  sub_100024F64(v11, &unk_101918E50);
                }

                else
                {
                  (*v77)(v82, v11, v12);
                  v93 = sub_100046AD4(&_swiftEmptyArrayStorage);
                  v33 = v17;
                  v34 = v80;
                  v35 = *&v80[v78];
                  a1 = swift_allocObject();
                  *(a1 + 16) = &v93;
                  *(a1 + 24) = v34;
                  v36 = v34;
                  sub_1000D3B90(v33, v84);
                  v11 = swift_allocObject();
                  *(v11 + 2) = sub_1002A437C;
                  *(v11 + 3) = a1;
                  v91 = sub_1001574D8;
                  v92 = v11;
                  aBlock = _NSConcreteStackBlock;
                  v88 = 1107296256;
                  v89 = sub_100060ED8;
                  v90 = &unk_10160EFD0;
                  v7 = _Block_copy(&aBlock);
                  v12 = v92;

                  dispatch_sync(v35, v7);
                  _Block_release(v7);
                  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                  if (isEscapingClosureAtFileLocation)
                  {
                    __break(1u);
                    goto LABEL_38;
                  }

                  if (v79 & 1) == 0 && (v37 = v93, *(v93 + 16)) && (v38 = sub_1002972F8(v82), (v39))
                  {
                    v40 = v38;

                    v41 = *(*(v37 + 56) + 8 * v40);
                    swift_unknownObjectRetain();
                    v42 = v94;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    aBlock = v42;
                    ObjectType = swift_getObjectType();
                    v45 = v41;
                    v46 = v82;
                    sub_1002A48DC(v45, v82, isUniquelyReferenced_nonNull_native, &aBlock, ObjectType);
                  }

                  else
                  {
                    v47 = dispatch thunk of FavoriteItem.type.getter();
                    v48 = objc_allocWithZone(type metadata accessor for PersonalizedFavoriteItem());
                    v13 = v13;
                    v49 = sub_1002A43C8(v13, v47, v83, v28);

                    v50 = v94;
                    v51 = swift_isUniquelyReferenced_nonNull_native();
                    aBlock = v50;
                    v52 = v49;
                    v46 = v82;
                    sub_1002A4710(v52, v82, v51, &aBlock);
                  }

                  v94 = aBlock;

                  v12 = v73;
                  (*v72)(v46, v73);

                  v17 = sub_1002A437C;
                  v84 = a1;
                  a1 = v75;
                  v11 = v74;
                }

LABEL_30:
                v18 = v85;
                v16 = v86;
                goto LABEL_7;
              }

              v30 = [v13 name];
              if (v30)
              {
                v29 = v30;
                v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v28 = v31;
                goto LABEL_20;
              }
            }

            goto LABEL_30;
          }
        }

        else
        {
        }

LABEL_7:
        if (v16 == ++v6)
        {
          goto LABEL_32;
        }
      }
    }

    goto LABEL_40;
  }

  v17 = 0;
  v84 = 0;
LABEL_32:
  v53 = v17;
  v93 = 0;
  v54 = v80;
  v55 = *&v80[OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_lockQueue];
  v56 = swift_allocObject();
  v56[2] = &v93;
  v56[3] = v54;
  v56[4] = &v94;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_100060E4C;
  *(v57 + 24) = v56;
  v91 = sub_100060ED0;
  v92 = v57;
  aBlock = _NSConcreteStackBlock;
  v88 = 1107296256;
  v89 = sub_100060ED8;
  v90 = &unk_10160EF30;
  v58 = _Block_copy(&aBlock);
  v59 = v54;

  dispatch_sync(v55, v58);
  _Block_release(v58);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v93 > 0 || *(v94 + 16))
  {
    sub_100014C84(0, &qword_10190B4F0);
    v60 = static OS_dispatch_queue.main.getter();
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v91 = sub_1002A4374;
    v92 = v61;
    aBlock = _NSConcreteStackBlock;
    v88 = 1107296256;
    v89 = sub_100039C64;
    v90 = &unk_10160EF58;
    v62 = _Block_copy(&aBlock);

    v63 = v66;
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_1000413A8(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000CE6B8(&unk_10190B500);
    sub_10004EC58(&qword_1019097E0, &unk_10190B500);
    v64 = v68;
    v65 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v62);

    (v70)[1](v64, v65);
    (*(v67 + 8))(v63, v69);
  }

  sub_1000D3B90(v53, v84);
}

uint64_t sub_100058828()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058870()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000588AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000588BC()
{
  type metadata accessor for MapsSyncQueryPredicate();
  static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
  v1 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v2 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[2] = v2;
  type metadata accessor for FavoriteItemRequest();
  v0[3] = FavoriteItemRequest.__allocating_init()();
  v6 = (&async function pointer to dispatch thunk of MapsSyncRequest.count(options:) + async function pointer to dispatch thunk of MapsSyncRequest.count(options:));
  v3 = v2;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_100057C90;

  return v6(v2);
}

uint64_t sub_1000589F8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v28 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &ObjectType - v13;
  v26 = v0;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  if (qword_101906698 != -1)
  {
    swift_once();
  }

  + infix(_:_:)();
  v15 = *(v9 + 8);
  v15(v11, v8);
  *v7 = 0;
  (*(v5 + 104))(v7, enum case for DispatchTimeInterval.nanoseconds(_:), v4);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  v15(v14, v8);
  v16 = v26;
  swift_getObjectType();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  aBlock[4] = sub_10003BC5C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101610080;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v19 = v16;
  v20 = v24;
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
  v21 = v28;
  sub_100059410();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v18);
  swift_unknownObjectRelease();
  (*(v29 + 8))(v21, v30);
  (*(v25 + 8))(v20, v27);
}

uint64_t sub_100058E64(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_1004A8E7C;
  }

  else
  {
    v4 = sub_1004A8BCC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100058F78()
{
  result = GEOConfigGetDouble();
  qword_10195FEC8 = v1;
  return result;
}

uint64_t sub_100058FA8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_100059010(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1000590C4(a1, v4, v5, v6);
}

uint64_t sub_1000590C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100060B7C;

  return sub_100059160();
}

uint64_t sub_100059160()
{
  *(v1 + 152) = v0;
  sub_1000CE6B8(&unk_10190BA50);
  *(v1 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_1000591FC, 0, 0);
}

uint64_t sub_1000591FC()
{
  type metadata accessor for MapsSyncQueryPredicate();
  v1 = static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
  v0[21] = v1;
  sub_1000CE6B8(&qword_101908400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E47B0;
  v3 = objc_allocWithZone(NSSortDescriptor);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithKey:v4 ascending:1];

  *(v2 + 32) = v5;
  if (qword_101906670 != -1)
  {
    swift_once();
  }

  v6 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
  v7 = MapsSyncRange.init(offset:limit:)();
  v0[22] = v7;
  v8 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v9 = v1;
  v10 = v7;
  v11 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[23] = v11;
  type metadata accessor for FavoriteItemRequest();
  v0[24] = FavoriteItemRequest.__allocating_init()();
  v15 = (&async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:) + async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:));
  v12 = v11;
  v13 = swift_task_alloc();
  v0[25] = v13;
  *v13 = v0;
  v13[1] = sub_10005F9D0;

  return v15(v11);
}

uint64_t sub_100059410()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100041288(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_10004EC58(&qword_1019097E0, &unk_10190B500);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100059514(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100014C84(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10005959C()
{
  v1 = OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___compositionalLayout;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___compositionalLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___compositionalLayout);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = objc_allocWithZone(type metadata accessor for HomeListCompositionalLayout());
    v11[4] = sub_10037E848;
    v11[5] = v4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10037D0B0;
    v11[3] = &unk_101614520;
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

uint64_t sub_100059704()
{
  v1 = *(v0 + 152);

  v2 = v1 + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_allVisitsCount;
  *(v0 + 168) = *(v1 + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_allVisitsCount);
  *(v0 + 177) = *(v2 + 8);

  return _swift_task_switch(sub_1004A9118, 0, 0);
}

uint64_t sub_100059890()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059A04()
{
  result = GEOConfigGetInteger();
  qword_10195FEA0 = result;
  return result;
}

void sub_100059A34(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [a1[4] copy];
    [v6 setHistoryRecents:v3];

    v4 = [a1[5] copy];
    v5 = v6[8];
    v6[8] = v4;

    [v6 _processRecents];
    WeakRetained = v6;
  }
}

id sub_100059B04(uint64_t a1)
{
  if (qword_1019068F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&unk_10191C290);
  sub_100021540(v2, qword_101960430);
  if (qword_101906770 != -1)
  {
    swift_once();
  }

  v3 = sub_1000CE6B8(&qword_10191A558);
  sub_100021540(v3, qword_1019600E0);
  if (qword_101906818 != -1)
  {
    swift_once();
  }

  v4 = sub_1000CE6B8(&unk_10191C2A0);
  sub_100021540(v4, qword_101960268);
  if (qword_101906558 != -1)
  {
    swift_once();
  }

  v5 = sub_1000CE6B8(&qword_10190B2B8);
  sub_100021540(v5, qword_10195FAB0);
  if (qword_101906858 != -1)
  {
    swift_once();
  }

  v6 = sub_1000CE6B8(&qword_10191C2B0);
  sub_100021540(v6, qword_1019602B0);
  if (qword_1019068F8 != -1)
  {
    swift_once();
  }

  v7 = sub_1000CE6B8(&qword_10191C2B8);
  sub_100021540(v7, qword_101960448);
  if (qword_101906560 != -1)
  {
    swift_once();
  }

  v8 = sub_1000CE6B8(&unk_10191C2C0);
  sub_100021540(v8, qword_10195FAC8);
  if (qword_101906628 != -1)
  {
    swift_once();
  }

  v9 = sub_1000CE6B8(&qword_101917218);
  sub_100021540(v9, qword_10195FDB8);
  if (qword_1019067B8 != -1)
  {
    swift_once();
  }

  v10 = sub_1000CE6B8(&qword_10191C2D0);
  sub_100021540(v10, qword_101960160);
  if (qword_101906760 != -1)
  {
    swift_once();
  }

  v11 = sub_1000CE6B8(&unk_10191C240);
  sub_100021540(v11, qword_1019600C0);
  v12 = *(*(a1 + OBJC_IVAR____TtC4Maps22HomeListRootController_configuration) + OBJC_IVAR____TtC4Maps35HomeListRootControllerConfiguration_collectionView);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = objc_allocWithZone(sub_1000CE6B8(&qword_10191C2D8));
  v14 = v12;
  v15 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v15;

  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  return v16;
}

id sub_100059F34()
{
  v1 = OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___diffableDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___diffableDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___diffableDataSource);
  }

  else
  {
    v4 = sub_100059B04(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10005A058()
{
  v0 = sub_1000CE6B8(&unk_10191C290);
  sub_100021578(v0, qword_101960430);
  sub_100021540(v0, qword_101960430);
  sub_100014C84(0, &qword_101923C18);
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_10005A100()
{
  v0 = sub_1000CE6B8(&qword_10191A558);
  sub_100021578(v0, qword_1019600E0);
  sub_100021540(v0, qword_1019600E0);
  sub_100014C84(0, &qword_10191A560);
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_10005A1A8()
{
  v0 = sub_1000CE6B8(&unk_10191C2A0);
  sub_100021578(v0, qword_101960268);
  sub_100021540(v0, qword_101960268);
  sub_100014C84(0, &unk_1019203C0);
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t type metadata accessor for PinnedItemsRowCollectionViewListCell()
{
  result = qword_10191C728;
  if (!qword_10191C728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A2A8()
{
  v0 = sub_1000CE6B8(&qword_101909AA8);
  sub_100021578(v0, qword_10195FA70);
  sub_100021540(v0, qword_10195FA70);
  sub_100014C84(0, &unk_101909AB0);
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_10005A3A4()
{
  v0 = sub_1000CE6B8(&qword_10190B2B8);
  sub_100021578(v0, qword_10195FAB0);
  sub_100021540(v0, qword_10195FAB0);
  sub_100014C84(0, &unk_10190B2C0);
  return UICollectionView.CellRegistration.init(handler:)();
}

void sub_10005A54C(void *a1)
{
  v2 = v1;
  if (((*((swift_isaMask & *v1) + 0xB8))() & 1) != 0 && [a1 active])
  {
    v4 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
    sub_10003E48C(v1 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10003E4E8(v12);
    if (Strong)
    {
      swift_getObjectType();
      if (!swift_conformsToProtocol2())
      {
        goto LABEL_10;
      }

      v6 = v2;
      sub_10005A80C();

      swift_unknownObjectRelease();
    }

    sub_10003E48C(v2 + v4, v12);
    v7 = swift_unknownObjectWeakLoadStrong();
    sub_10003E4E8(v12);
    if (!v7)
    {
      return;
    }

    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v8;
      sub_1000CE6B8(&qword_10191A630);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1011E1D30;
      *(inited + 32) = v2;
      *(inited + 40) = v9;
      v11 = v2;
      sub_10005B5D4(inited, 1);
      swift_unknownObjectRelease();
      swift_setDeallocating();

      return;
    }

LABEL_10:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_10005A750()
{
  v0 = sub_1000CE6B8(&unk_10191C2C0);
  sub_100021578(v0, qword_10195FAC8);
  sub_100021540(v0, qword_10195FAC8);
  type metadata accessor for HomePlaceCollectionViewCell();
  return UICollectionView.CellRegistration.init(handler:)();
}

void sub_10005A80C()
{
  if (qword_101906710 != -1)
  {
LABEL_22:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FFD0);
  swift_unknownObjectRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v29 = v5;
    *v4 = 136315138;
    swift_unknownObjectRetain();
    sub_1000CE6B8(&unk_101919370);
    v6 = String.init<A>(describing:)();
    v8 = sub_10004DEB8(v6, v7, &v29);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Data provider %s signaled it has updated. Checking all data providers.", v4, 0xCu);
    sub_10004E3D0(v5);
  }

  v9 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_allDataProviders);
  v12 = *(v9 + 56);
  v11 = v9 + 56;
  v10 = v12;
  v13 = 1 << *(*(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_allDataProviders) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_11:
      if (([swift_unknownObjectRetain() hasInitialData] & 1) == 0)
      {
        break;
      }

      v15 &= v15 - 1;
      swift_unknownObjectRelease();
      v17 = v18;
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    swift_unknownObjectRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136315138;
      swift_unknownObjectRetain();
      sub_1000CE6B8(&qword_101919380);
      v26 = String.init<A>(describing:)();
      v28 = sub_10004DEB8(v26, v27, &v29);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Data provider %s does not have its initial data. Will not send loading signal.", v24, 0xCu);
      sub_10004E3D0(v25);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    while (1)
    {
LABEL_8:
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v11 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_11;
      }
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "All data providers have loaded their initial data. Signaling loading has finished.", v21, 2u);
    }

    sub_10005AE0C();
  }
}

uint64_t sub_10005AC20()
{
  v0 = sub_1000CE6B8(&qword_10191C2D0);
  sub_100021578(v0, qword_101960160);
  sub_100021540(v0, qword_101960160);
  type metadata accessor for HomePublisherGuidesCollectionRowCell(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_10005ACF0()
{
  v0 = sub_1000CE6B8(&unk_10191C240);
  sub_100021578(v0, qword_1019600C0);
  v1 = sub_100021540(v0, qword_1019600C0);
  *v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1[1] = v2;
  v1[2] = sub_100333560;
  v1[3] = 0;
  type metadata accessor for StandardSectionHeaderViewListCell();

  return UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
}

void sub_10005AE0C()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignposter();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC4Maps22HomeListRootController_sectionLoadingSingpostState))
  {
    v34 = OBJC_IVAR____TtC4Maps22HomeListRootController_sectionLoadingSingpostState;
    v35 = v5;
    v36 = v4;
    v12 = qword_101906710;

    if (v12 != -1)
    {
      swift_once();
    }

    v33 = v2;
    v13 = type metadata accessor for Logger();
    sub_100021540(v13, qword_10195FFD0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Signaling section loading has finished. No more unloaded section controllers.", v16, 2u);
    }

    (*(v9 + 16))(v11, v1 + OBJC_IVAR____TtC4Maps22HomeListRootController_proactiveTraySignposter, v8);
    v17 = *(v1 + OBJC_IVAR____TtC4Maps22HomeListRootController_sectionLoadingSignpostName);
    v18 = *(v1 + OBJC_IVAR____TtC4Maps22HomeListRootController_sectionLoadingSignpostName + 16);
    v19 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v32 = static os_signpost_type_t.end.getter();
    if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
    {
      goto LABEL_25;
    }

    v31 = v8;
    if (v18)
    {
      if (!(v17 >> 32))
      {
        v20 = v33;
        v22 = v37;
        v21 = v38;
        if ((v17 & 0xFFFFF800) == 0xD800)
        {
LABEL_29:
          __break(1u);
          return;
        }

        if (v17 >> 16 <= 0x10)
        {
          v17 = &v39;
          goto LABEL_21;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      if (v17)
      {
        v20 = v33;
        v22 = v37;
        v21 = v38;
LABEL_21:

        checkForErrorAndConsumeState(state:)();

        if ((v21[11].isa)(v22, v20) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v27 = "[Error] Interval already ended";
        }

        else
        {
          (v21[1].isa)(v22, v20);
          v27 = "";
        }

        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v32, v29, v17, v27, v28, 2u);

        v8 = v31;
LABEL_25:

        (*(v35 + 8))(v7, v36);
        (*(v9 + 8))(v11, v8);
        *(v1 + v34) = 0;

        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  if (qword_101906710 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100021540(v23, qword_10195FFD0);
  v38 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v38, v24, "Lacking signpost state when trying to signal loading completed.", v25, 2u);
  }

  v26 = v38;
}

void sub_10005B3A0()
{
  v1 = sub_10005B9AC();
  v2 = [v1 hasInitialData];

  if (v2)
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000CE6B8(&qword_101908400);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1011E47B0;
    v5 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___suggestionsDataProvider);
    *(v4 + 32) = v5;
    v6 = v5;
    v3 = v4;
  }

  if (v3 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = OBJC_IVAR____TtC4Maps22HomeListRootController_loadingTimer;
  v9 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_loadingTimer);
  if (v7 < 1)
  {
    [v9 invalidate];
    v17 = *(v0 + v8);
    *(v0 + v8) = 0;
  }

  else if (!v9)
  {
    GEOConfigGetDouble();
    v11 = v10;
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18[4] = sub_10037E830;
    v18[5] = v13;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1001FDE68;
    v18[3] = &unk_1016144F8;
    v14 = _Block_copy(v18);

    v15 = [v12 scheduledTimerWithTimeInterval:0 repeats:v14 block:v11];
    _Block_release(v14);
    v16 = *(v0 + v8);
    *(v0 + v8) = v15;

    sub_100065D1C();
  }
}

uint64_t sub_10005B5D4(uint64_t result, char a2)
{
  v3 = OBJC_IVAR____TtC4Maps22HomeListRootController_isActive;
  if (*(v2 + OBJC_IVAR____TtC4Maps22HomeListRootController_isActive) == 1)
  {
    v4 = v2;
    v6 = result;
    sub_10005B3A0();
    result = sub_10005B864();
    if ((result & 1) == 0)
    {
      if (*(v2 + v3) == 1 && (sub_10005B864() & 1) == 0)
      {
        v7 = OBJC_IVAR____TtC4Maps22HomeListRootController_sectionControllersToUpdate;
        v8 = swift_beginAccess();
        if ((*(*(v4 + v7) + 16) || (*(v4 + OBJC_IVAR____TtC4Maps22HomeListRootController_appliedInitialUpdate) & 1) == 0) && *(v4 + OBJC_IVAR____TtC4Maps22HomeListRootController_animateNextUpdate) != (a2 & 1) && *(v4 + OBJC_IVAR____TtC4Maps22HomeListRootController_appliedInitialUpdate) == 1)
        {
          sub_1003788F0(v8);
        }
      }

      *(v4 + OBJC_IVAR____TtC4Maps22HomeListRootController_animateNextUpdate) = a2 & 1;
      v9 = *(v6 + 16);
      if (v9)
      {
        sub_10005BC14(0, v9, 0);
        v10 = (v6 + 32);
        do
        {
          v12 = *(&_swiftEmptyArrayStorage + 2);
          v11 = *(&_swiftEmptyArrayStorage + 3);
          v14 = *v10;
          v13 = *v10;
          if (v12 >= v11 >> 1)
          {
            sub_10005BC14((v11 > 1), v12 + 1, 1);
          }

          *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
          *(&_swiftEmptyArrayStorage + v12 + 2) = v14;
          v10 += 2;
          --v9;
        }

        while (v9);
      }

      swift_beginAccess();
      sub_10005BC34(&_swiftEmptyArrayStorage);
      swift_endAccess();

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result homeSetNeedsUpdate];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

unint64_t sub_10005B7CC()
{
  result = sub_10005B95C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UICollectionView.SupplementaryRegistration();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005B864()
{
  v1 = sub_10005B9AC();
  v2 = [v1 hasInitialData];

  if (v2)
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000CE6B8(&qword_101908400);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1011E47B0;
    v5 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___suggestionsDataProvider);
    *(v4 + 32) = v5;
    v6 = v5;
    v3 = v4;
  }

  if (v3 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_loadingTimer);
  if (v8)
  {
    LOBYTE(v8) = [v8 isValid];
  }

  return (v7 > 0) & v8;
}

unint64_t sub_10005B95C()
{
  result = qword_101910790[0];
  if (!qword_101910790[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_101910790);
  }

  return result;
}

id sub_10005B9AC()
{
  v1 = OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___suggestionsDataProvider;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___suggestionsDataProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___suggestionsDataProvider);
  }

  else
  {
    v4 = objc_allocWithZone(MapsSuggestionsBlockFilter);
    v11[4] = sub_100063FF4;
    v11[5] = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100063F9C;
    v11[3] = &unk_101614548;
    v5 = _Block_copy(v11);
    v6 = [v4 initWithBlock:v5];
    _Block_release(v5);

    v7 = [objc_allocWithZone(SuggestionsDataProvider) initWithViewMode:0 filter:v6 includePlaceholderShortcuts:1];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_10005BAE0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000CE6B8(&unk_101925080);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_1000CE6B8(&qword_101921A50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10005BC14(void *a1, int64_t a2, char a3)
{
  result = sub_10005BAE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10005BC34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      sub_10005BCA8(v3, *(v2 - 1), *v2);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_10005BCA8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  v22 = a3;
  sub_10005BEEC(v31, a2, a3);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v23 = *(*(v6 + 48) + 16 * v9);
      v12 = v23;
      sub_1000CE6B8(&unk_101919390);
      if (!swift_dynamicCast())
      {
        break;
      }

      v31[0] = v28;
      v31[1] = v29;
      v32 = v30;
      v26 = a2;
      v27 = v22;
      v13 = a2;
      if ((swift_dynamicCast() & 1) == 0)
      {

        sub_10005BF8C(v31);
        v23 = 0u;
        v24 = 0u;
        v25 = 0;
        v11 = &v23;
        goto LABEL_4;
      }

      v28 = v23;
      v29 = v24;
      v30 = v25;
      v14 = static AnyHashable.== infix(_:_:)();

      sub_10005BF8C(&v28);
      sub_10005BF8C(v31);
      if (v14)
      {

        v17 = *(*(v6 + 48) + 16 * v9);
        *a1 = v17;
        v18 = v17;
        return 0;
      }

LABEL_5:
      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v11 = &v28;
LABEL_4:
    sub_10010EA94(v11);
    goto LABEL_5;
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v31[0] = *v20;
  v16 = a2;
  sub_10030C718(v16, v22, v9, isUniquelyReferenced_nonNull_native);
  *v20 = *&v31[0];
  *a1 = v16;
  *(a1 + 8) = v22;
  return 1;
}

uint64_t sub_10005BEEC(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v9 = a3;
  v3 = a2;
  sub_1000CE6B8(&unk_101919390);
  if (swift_dynamicCast())
  {
    v10[0] = v5;
    v10[1] = v6;
    v11 = v7;
    AnyHashable.hash(into:)();
    return sub_10005BF8C(v10);
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    return sub_10010EA94(&v5);
  }
}

uint64_t sub_10005C080(uint64_t result)
{
  v2 = OBJC_IVAR____TtC4Maps22HomeListRootController_isActive;
  if (v1[OBJC_IVAR____TtC4Maps22HomeListRootController_isActive] != (result & 1))
  {
    v3 = v1;
    if (qword_101906710 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100021540(v4, qword_10195FFD0);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26[0] = v9;
      *v8 = 136315394;
      swift_getObjectType();
      v10 = _typeName(_:qualified:)();
      v12 = sub_10004DEB8(v10, v11, v26);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1024;
      v13 = v3[v2];

      *(v8 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s setActive = %{BOOL}d", v8, 0x12u);
      sub_10004E3D0(v9);
    }

    else
    {
    }

    v14 = OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers;
    if (*&v5[OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers])
    {
      v15 = *&v5[OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers];
    }

    else
    {
      v15 = sub_10005C3A8();
      *&v5[v14] = v15;
      swift_bridgeObjectRetain_n();

      sub_10005E3A4(v15);
    }

    v24 = v14;
    v25 = v5;
    v16 = v15[2];
    if (v16)
    {
      v17 = (v15 + 4);

      do
      {
        v18 = *v17;
        v17 += 2;
        v19 = v3[v2];
        v20 = *((swift_isaMask & *v18) + 0xC0);
        v21 = v18;
        v20(v19);

        --v16;
      }

      while (v16);
    }

    else
    {
    }

    if (v3[v2] == 1)
    {
      v5[OBJC_IVAR____TtC4Maps22HomeListRootController_animateNextUpdate] = 0;
      v22 = OBJC_IVAR____TtC4Maps22HomeListRootController_sectionControllersToUpdate;
      swift_beginAccess();
      *&v25[v22] = &_swiftEmptySetSingleton;

      if (*&v25[v24])
      {
        v23 = *&v25[v24];
      }

      else
      {
        v23 = sub_10005C3A8();
        *&v25[v24] = v23;
        swift_bridgeObjectRetain_n();

        sub_10005E3A4(v23);
      }

      sub_10005B5D4(v23, 0);
    }
  }

  return result;
}

void *sub_10005C3A8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_configuration);
  v105 = OBJC_IVAR____TtC4Maps35HomeListRootControllerConfiguration_collectionView;
  v3 = *(v2 + OBJC_IVAR____TtC4Maps35HomeListRootControllerConfiguration_collectionView);
  v104 = v2;
  swift_unknownObjectWeakLoadStrong();
  v4 = v3;
  v5 = sub_10005B9AC();
  v6 = *(v1 + OBJC_IVAR____TtC4Maps22HomeListRootController_favoritesDataProvider);
  v7 = sub_10005D08C();
  v110 = v4;
  v111 = 0xD000000000000010;
  v112 = 0x8000000101231FA0;
  v113 = &off_1016143F0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8 = v6;
  swift_unknownObjectRelease();
  v114 = v5;
  v115 = v8;
  v116 = v7;
  v9 = objc_allocWithZone(type metadata accessor for HomeListFeatureDiscoverySectionController());
  *&v9[OBJC_IVAR____TtC4Maps41HomeListFeatureDiscoverySectionController____lazy_storage___featureDiscoveryDataProvider] = 0;
  sub_10003E48C(&v110, v109);
  v10 = &v9[OBJC_IVAR____TtC4Maps25HomeListSectionController_cachedSectionSnapshot];
  *v10 = 0u;
  v10[1] = 0u;
  v11 = OBJC_IVAR____TtC4Maps25HomeListSectionController_mutableDeletions;
  *&v9[v11] = sub_10005D398(&_swiftEmptyArrayStorage);
  v9[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] = 0;
  *&v9[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionIdentifierPath] = 0;
  *&v9[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionHeaderIdentifierPath] = 0;
  sub_10003E48C(v109, &v9[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration]);
  v108.receiver = v9;
  v108.super_class = type metadata accessor for HomeListSectionController();
  super_class = v108.super_class;
  v12 = objc_msgSendSuper2(&v108, "init");
  sub_10003E4E8(v109);
  sub_10003E4E8(&v110);
  v13 = v12;
  v14 = sub_10005D4B4(0, 1, 1, &_swiftEmptyArrayStorage);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_10005D4B4((v15 > 1), v16 + 1, 1, v14);
  }

  v14[2] = v16 + 1;
  v17 = &v14[2 * v16];
  v100 = v13;
  v17[4] = v13;
  v17[5] = &off_10160CAE0;
  v18 = *(v104 + v105);
  swift_unknownObjectWeakLoadStrong();
  v102 = OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___suggestionsDataProvider;
  v19 = *(v1 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___suggestionsDataProvider);
  v103 = OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___homeResultDataProvider;
  v20 = *(v1 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___homeResultDataProvider);
  v110 = v18;
  v111 = 0x6974736567677553;
  v112 = 0xEB00000000736E6FLL;
  v113 = &off_1016143F0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v21 = v8;
  v22 = v18;
  v23 = v19;
  sub_10005D270(v20);
  swift_unknownObjectRelease();
  v114 = v23;
  v115 = v21;
  v116 = v20;
  v24 = objc_allocWithZone(type metadata accessor for HomeListSuggestionsSectionController());
  v25 = sub_10005D630(&v110);
  v26 = v14[2];
  v27 = v14[3];
  v28 = v25;
  if (v26 >= v27 >> 1)
  {
    v94 = v28;
    v14 = sub_10005D4B4((v27 > 1), v26 + 1, 1, v14);
    v28 = v94;
  }

  v14[2] = v26 + 1;
  v29 = &v14[2 * v26];
  v99 = v28;
  v29[4] = v28;
  v29[5] = &off_101612678;
  v30 = *(v104 + v105);
  swift_unknownObjectWeakLoadStrong();
  v31 = *(v1 + v102);
  v32 = *(v1 + v103);
  v110 = v30;
  v111 = 0x657469726F766146;
  v112 = 0xE900000000000073;
  v113 = &off_1016143F0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v33 = v21;
  v34 = v30;
  v35 = v31;
  sub_10005D270(v32);
  swift_unknownObjectRelease();
  v114 = v35;
  v115 = v33;
  v116 = v32;
  v36 = objc_allocWithZone(type metadata accessor for HomeListFavoritesSectionController());
  v37 = sub_10005D7A8(&v110);
  v38 = v14[2];
  v39 = v14[3];
  v40 = v37;
  if (v38 >= v39 >> 1)
  {
    v95 = v40;
    v14 = sub_10005D4B4((v39 > 1), v38 + 1, 1, v14);
    v40 = v95;
  }

  v14[2] = v38 + 1;
  v41 = &v14[2 * v38];
  v98 = v40;
  v41[4] = v40;
  v41[5] = &off_10160D330;
  v42 = *(v104 + v105);
  swift_unknownObjectWeakLoadStrong();
  v43 = *(v1 + v102);
  v44 = *(v1 + v103);
  v110 = v42;
  v111 = 0x73746E65636552;
  v112 = 0xE700000000000000;
  v113 = &off_1016143F0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v45 = v42;
  v46 = v43;
  sub_10005D270(v44);
  swift_unknownObjectRelease();
  v114 = v46;
  v115 = v33;
  v116 = v44;
  v47 = objc_allocWithZone(type metadata accessor for HomeListRecentsSectionController());
  v48 = sub_10005DD24(&v110);
  v49 = v14[2];
  v50 = v14[3];
  v51 = v48;
  if (v49 >= v50 >> 1)
  {
    v96 = v51;
    v14 = sub_10005D4B4((v50 > 1), v49 + 1, 1, v14);
    v51 = v96;
  }

  v14[2] = v49 + 1;
  v52 = &v14[2 * v49];
  v97 = v51;
  v52[4] = v51;
  v52[5] = &off_10161FFA8;
  v53 = *(v104 + v105);
  swift_unknownObjectWeakLoadStrong();
  v54 = *(v1 + v102);
  v55 = *(v1 + v103);
  v110 = v53;
  v111 = 0x697463656C6C6F43;
  v112 = 0xEB00000000736E6FLL;
  v113 = &off_1016143F0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v56 = v53;
  v57 = v54;
  sub_10005D270(v55);
  swift_unknownObjectRelease();
  v114 = v57;
  v115 = v33;
  v116 = v55;
  v58 = objc_allocWithZone(type metadata accessor for HomeListCollectionsSectionController());
  v59 = sub_10005E0A8(&v110);
  v60 = v14[2];
  v61 = v14[3];
  v62 = v59;
  if (v60 >= v61 >> 1)
  {
    v14 = sub_10005D4B4((v61 > 1), v60 + 1, 1, v14);
  }

  v14[2] = v60 + 1;
  v63 = &v14[2 * v60];
  v63[4] = v62;
  v63[5] = &off_10161DEA8;
  if (GEOConfigGetBOOL())
  {
    v64 = *(v104 + v105);
    swift_unknownObjectWeakLoadStrong();
    v65 = *(v1 + v102);
    v66 = *(v1 + v103);
    v110 = v64;
    v111 = 0xD000000000000012;
    v112 = 0x800000010122EC80;
    v113 = &off_1016143F0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v67 = v33;
    v68 = v64;
    v69 = v65;
    sub_10005D270(v66);
    swift_unknownObjectRelease();
    v114 = v69;
    v115 = v67;
    v116 = v66;
    v70 = objc_allocWithZone(type metadata accessor for HomeListCuratedCollectionsSectionController());
    v70[OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController_needsResetScrollOffset] = 0;
    *&v70[OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController_curatedCollectionResolver] = 0;
    *&v70[OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController____lazy_storage___curatedCollectionsIdentifierPath] = 0;
    sub_10003E48C(&v110, v109);
    v71 = &v70[OBJC_IVAR____TtC4Maps25HomeListSectionController_cachedSectionSnapshot];
    *v71 = 0u;
    v71[1] = 0u;
    v72 = OBJC_IVAR____TtC4Maps25HomeListSectionController_mutableDeletions;
    *&v70[v72] = sub_10005D398(&_swiftEmptyArrayStorage);
    v70[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] = 0;
    *&v70[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionIdentifierPath] = 0;
    *&v70[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionHeaderIdentifierPath] = 0;
    sub_10003E48C(v109, &v70[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration]);
    v106.receiver = v70;
    v106.super_class = super_class;
    v73 = objc_msgSendSuper2(&v106, "init");
    sub_10003E4E8(v109);
    sub_10003E4E8(&v110);
    v75 = v14[2];
    v74 = v14[3];
    if (v75 >= v74 >> 1)
    {
      v14 = sub_10005D4B4((v74 > 1), v75 + 1, 1, v14);
    }

    v14[2] = v75 + 1;
    v76 = &v14[2 * v75];
    v76[4] = v73;
    v76[5] = &off_10161F540;
  }

  v77 = *(v104 + v105);
  swift_unknownObjectWeakLoadStrong();
  v78 = *(v1 + v102);
  v79 = *(v1 + v103);
  v110 = v77;
  v111 = 0x7265746F6F46;
  v112 = 0xE600000000000000;
  v113 = &off_1016143F0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v80 = v33;
  v81 = v77;
  v82 = v78;
  sub_10005D270(v79);
  swift_unknownObjectRelease();
  v114 = v82;
  v115 = v80;
  v116 = v79;
  v83 = objc_allocWithZone(type metadata accessor for HomeListFooterSectionController());
  v84 = OBJC_IVAR____TtC4Maps31HomeListFooterSectionController_rapReportMenuProvider;
  *&v83[v84] = [objc_allocWithZone(RAPReportMenuProvider) init];
  v85 = OBJC_IVAR____TtC4Maps31HomeListFooterSectionController_viewModel;
  *&v83[v85] = [objc_allocWithZone(type metadata accessor for HomeListFooterCellModel()) init];
  sub_10003E48C(&v110, v109);
  v86 = &v83[OBJC_IVAR____TtC4Maps25HomeListSectionController_cachedSectionSnapshot];
  *v86 = 0u;
  v86[1] = 0u;
  v87 = OBJC_IVAR____TtC4Maps25HomeListSectionController_mutableDeletions;
  *&v83[v87] = sub_10005D398(&_swiftEmptyArrayStorage);
  v83[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] = 0;
  *&v83[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionIdentifierPath] = 0;
  *&v83[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionHeaderIdentifierPath] = 0;
  sub_10003E48C(v109, &v83[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration]);
  v107.receiver = v83;
  v107.super_class = super_class;
  v88 = objc_msgSendSuper2(&v107, "init");
  sub_10003E4E8(v109);
  v89 = v88;
  sub_100488FAC();

  sub_10003E4E8(&v110);
  v91 = v14[2];
  v90 = v14[3];
  if (v91 >= v90 >> 1)
  {
    v14 = sub_10005D4B4((v90 > 1), v91 + 1, 1, v14);
  }

  v14[2] = v91 + 1;
  v92 = &v14[2 * v91];
  v92[4] = v89;
  v92[5] = &off_10161B550;
  return v14;
}

uint64_t sub_10005CDD8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10005CED0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10005CED0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&unk_101916430);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

id sub_10005D08C()
{
  v1 = OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___homeResultDataProvider;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___homeResultDataProvider);
  v3 = v2;
  if (v2 == 1)
  {
    if (GEOConfigGetBOOL())
    {
      v3 = [objc_allocWithZone(HomeResultDataProvider) initWithDelegate:v0];
    }

    else
    {
      v3 = 0;
    }

    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10005D280(v4);
  }

  sub_10005D270(v2);
  return v3;
}

id sub_10005D270(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_10005D280(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_10005D398(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&unk_10190BB50);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1002973CC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10005D4D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000CE6B8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

id sub_10005D630(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController____lazy_storage___visitedPlacesDataProvider] = 0;
  v3 = OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController_sharedTripsDataProvider;
  *&v1[v3] = [objc_allocWithZone(SharedTripsDataProvider) initWithCombineAllTrips:1];
  *&v1[OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController____lazy_storage___photoLookupDataProvider] = 0;
  *&v1[OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController_currentLocationSuggestionMenuProvider] = 0;
  sub_10003E48C(a1, v9);
  v4 = &v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_cachedSectionSnapshot];
  *v4 = 0u;
  v4[1] = 0u;
  v5 = OBJC_IVAR____TtC4Maps25HomeListSectionController_mutableDeletions;
  *&v1[v5] = sub_10005D398(&_swiftEmptyArrayStorage);
  v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] = 0;
  *&v1[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionIdentifierPath] = 0;
  *&v1[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionHeaderIdentifierPath] = 0;
  sub_10003E48C(v9, &v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration]);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for HomeListSectionController();
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_10003E4E8(v9);
  sub_10003E4E8(a1);
  return v6;
}

id sub_10005D7A8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps34HomeListFavoritesSectionController_favoritesDataProvider;
  if (qword_1019066C8 != -1)
  {
    swift_once();
  }

  v5 = qword_10195FEF8;
  *&v2[v4] = qword_10195FEF8;
  v6 = OBJC_IVAR____TtC4Maps34HomeListFavoritesSectionController_viewModel;
  v7 = sub_100246F28(v5);
  v8 = objc_allocWithZone(type metadata accessor for HomePinnedItemCarouselViewModel());
  v9 = sub_10020A3B0(v7);

  *&v2[v6] = v9;
  *&v2[OBJC_IVAR____TtC4Maps34HomeListFavoritesSectionController____lazy_storage___pinnedItemsIdentifierPath] = 0;
  v10 = &v2[OBJC_IVAR____TtC4Maps34HomeListFavoritesSectionController____lazy_storage___pinnedItemsCellSnapshot];
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  sub_10003E48C(a1, v17);
  v11 = &v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_cachedSectionSnapshot];
  *v11 = 0u;
  v11[1] = 0u;
  v12 = OBJC_IVAR____TtC4Maps25HomeListSectionController_mutableDeletions;
  *&v2[v12] = sub_10005D398(&_swiftEmptyArrayStorage);
  v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] = 0;
  *&v2[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionIdentifierPath] = 0;
  *&v2[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionHeaderIdentifierPath] = 0;
  sub_10003E48C(v17, &v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration]);
  v16.receiver = v2;
  v16.super_class = type metadata accessor for HomeListSectionController();
  v13 = objc_msgSendSuper2(&v16, "init");
  sub_10003E4E8(v17);
  v14 = v13;
  sub_100264CCC();

  sub_10003E4E8(a1);
  return v14;
}

uint64_t type metadata accessor for HomePinnedItemsProvider()
{
  result = qword_101915130;
  if (!qword_101915130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for HomePinnedItemModel()
{
  result = qword_101924A68;
  if (!qword_101924A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005DA04()
{
  result = type metadata accessor for ObservationRegistrar();
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

id sub_10005DB04()
{
  result = [objc_allocWithZone(type metadata accessor for LibraryItemsCountManager()) init];
  static LibraryItemsCountManager.shared = result;
  return result;
}

uint64_t sub_10005DB58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_10005DF30(a1, v4, v5, v6);
}

id sub_10005DC30(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_observers;
  *&v1[v4] = [objc_allocWithZone(GEOObserverHashTable) initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
  v1[OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_hasInitialData] = 1;
  v1[OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_active] = 0;
  *&v1[OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_countsManager] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v10, "init");
  v7 = *&v5[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observers];
  v8 = v6;
  [v7 registerObserver:{v8, v10.receiver, v10.super_class}];

  return v8;
}

char *sub_10005DD24(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC4Maps32HomeListRecentsSectionController_shelfViewModel] = 0;
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() identifierPathWithIdentifier:v4];

  v6 = objc_allocWithZone(type metadata accessor for HomeRecentsCellSnapshotProvider());
  v7 = sub_1000D52DC(v5);
  *&v2[OBJC_IVAR____TtC4Maps32HomeListRecentsSectionController_cellModelProvider] = v7;
  sub_10003E48C(a1, v18);
  v8 = &v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_cachedSectionSnapshot];
  *v8 = 0u;
  v8[1] = 0u;
  v9 = OBJC_IVAR____TtC4Maps25HomeListSectionController_mutableDeletions;
  v10 = v7;
  *&v2[v9] = sub_10005D398(&_swiftEmptyArrayStorage);
  v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] = 0;
  *&v2[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionIdentifierPath] = 0;
  *&v2[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionHeaderIdentifierPath] = 0;
  sub_10003E48C(v18, &v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration]);
  v17.receiver = v2;
  v17.super_class = type metadata accessor for HomeListSectionController();
  v11 = objc_msgSendSuper2(&v17, "init");
  sub_10003E4E8(v18);
  v12 = objc_allocWithZone(type metadata accessor for HomeRecentsShelfCellModel());
  v13 = v11;
  v14 = sub_100526F64(v10, v13, 0, 1, v12);
  sub_10003E4E8(a1);
  v15 = *&v13[OBJC_IVAR____TtC4Maps32HomeListRecentsSectionController_shelfViewModel];
  *&v13[OBJC_IVAR____TtC4Maps32HomeListRecentsSectionController_shelfViewModel] = v14;

  return v13;
}

uint64_t sub_10005DF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000CE6B8(&unk_10190BA50);
  v4[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1004A6450;

  return sub_10005DFF8();
}

uint64_t sub_10005DFF8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1004A86D8;

  return sub_1004A7C60();
}

char *sub_10005E0A8(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC4Maps36HomeListCollectionsSectionController_cellModel] = 0;
  v4 = &v1[OBJC_IVAR____TtC4Maps36HomeListCollectionsSectionController____lazy_storage___maxNumberOfCollections];
  *v4 = 0;
  v4[8] = 1;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() identifierPathWithIdentifier:v5];

  v7 = objc_allocWithZone(type metadata accessor for HomeUserGuidesSnapshotProvider());
  *&v2[OBJC_IVAR____TtC4Maps36HomeListCollectionsSectionController_cellModelProvider] = sub_1004870B0(v6);
  sub_10003E48C(a1, v19);
  v8 = &v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_cachedSectionSnapshot];
  *v8 = 0u;
  v8[1] = 0u;
  v9 = OBJC_IVAR____TtC4Maps25HomeListSectionController_mutableDeletions;
  *&v2[v9] = sub_10005D398(&_swiftEmptyArrayStorage);
  v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] = 0;
  *&v2[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionIdentifierPath] = 0;
  *&v2[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionHeaderIdentifierPath] = 0;
  sub_10003E48C(v19, &v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration]);
  v18.receiver = v2;
  v18.super_class = type metadata accessor for HomeListSectionController();
  v10 = objc_msgSendSuper2(&v18, "init");
  sub_10003E4E8(v19);
  v11 = *&v10[OBJC_IVAR____TtC4Maps36HomeListCollectionsSectionController_cellModelProvider];
  v12 = objc_allocWithZone(type metadata accessor for HomeUserGuidesCollectionRowCellModel());
  v13 = v10;
  v14 = v11;
  v15 = sub_1004D0254(v14, v13, v12);

  sub_10003E4E8(a1);
  v16 = *&v13[OBJC_IVAR____TtC4Maps36HomeListCollectionsSectionController_cellModel];
  *&v13[OBJC_IVAR____TtC4Maps36HomeListCollectionsSectionController_cellModel] = v15;

  return v13;
}

uint64_t sub_10005E3A4(uint64_t a1)
{
  v3 = sub_100057080(&_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC4Maps22HomeListRootController_keyCommandsToHandlers;
  swift_beginAccess();
  v36 = v1;
  *(v1 + v4) = v3;

  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_18:
    v31 = *(v36 + v4);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = sub_10005EFF0(*(v31 + 16), 0);
      v34 = sub_10005EFF8(&v39, v33 + 4, v32, v31);
      swift_bridgeObjectRetain_n();
      sub_10005F150();
      if (v34 == v32)
      {
LABEL_22:
        v39 = v33;
        sub_10005F158(&v39);

        *(v36 + OBJC_IVAR____TtC4Maps22HomeListRootController_keyCommands) = v39;
      }

      __break(1u);
    }

    v33 = &_swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v7 = (a1 + 32);
  while (1)
  {
    v8 = *v7;
    (*((swift_isaMask & **v7) + 0x198))(&v37, v5);
    if (*(&v38 + 1))
    {
      break;
    }

    v5 = sub_100024F64(&v37, &unk_10191C270);
LABEL_4:
    v7 += 2;
    if (!--v6)
    {
      goto LABEL_18;
    }
  }

  sub_10005E7BC(&v37, &v39);
  v9 = v40;
  v10 = v41;
  sub_10005E838(&v39, v40);
  v11 = *(v10 + 8);
  v12 = v8;
  v13 = v11(v9, v10);
  sub_10005E87C(v13);
  sub_100014C84(0, &qword_101917320);
  v37 = 0u;
  v38 = 0u;
  v14 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  swift_beginAccess();
  sub_10005EB40(&v39, &v37);
  v15 = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v36 + v4);
  *(v36 + v4) = 0x8000000000000000;
  v19 = sub_10005EBA4(v15);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (!__OFADD__(v20, v21))
  {
    v23 = v18;
    if (v17[3] < v22)
    {
      sub_10005ECC0(v22, isUniquelyReferenced_nonNull_native);
      v24 = sub_10005EBA4(v15);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_25;
      }

      v19 = v24;
      v26 = v17;
      if ((v23 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_13:
      v27 = v26[7] + 40 * v19;
      sub_10004E3D0(v27);
      sub_10005E7BC(&v37, v27);

LABEL_17:
      *(v36 + v4) = v26;

      swift_endAccess();

      v5 = sub_10004E3D0(&v39);
      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v26 = v17;
      if (v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_10012CBF8();
      v26 = v17;
      if (v23)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v26[(v19 >> 6) + 8] |= 1 << v19;
    *(v26[6] + 8 * v19) = v15;
    sub_10005E7BC(&v37, v26[7] + 40 * v19);
    v28 = v26[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_24;
    }

    v26[2] = v30;
    goto LABEL_17;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10005E7BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double sub_10005E7D4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id sub_10005E7E4@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for HomeListFavoritesSectionController();
  a1[4] = &off_10160D300;
  *a1 = v3;

  return v3;
}

void *sub_10005E838(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10005E87C(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v8 = 0x8000000101230920;
      v2 = 0x206C6C4120656553;
      v3 = 0xEF73746E65636552;
      v4 = 0xD000000000000028;
      v5 = 0x80000001012308F0;
      v6 = 0xD000000000000054;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v1, *&v2, *&v6)._countAndFlagsBits;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v8 = 0x80000001012309D0;
    v4 = 0xD00000000000002ALL;
    v5 = 0x8000000101230980;
    v3 = 0x80000001012309B0;
    v6 = 0xD00000000000004BLL;
LABEL_18:
    v2 = 0xD000000000000011;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v1, *&v2, *&v6)._countAndFlagsBits;
  }

  if (qword_101906798 != -1)
  {
    swift_once();
  }

  if (byte_101960110 != 1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v8 = 0x8000000101230A70;
    v4 = 0xD00000000000002ALL;
    v5 = 0x8000000101230A20;
    v3 = 0x8000000101230A50;
    v6 = 0xD00000000000004ELL;
    goto LABEL_18;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v1.super.isa = qword_1019600D8;
  v8 = 0x8000000101230AF0;
  v2 = 0x206C6C4120656553;
  v3 = 0xEE0064656E6E6950;
  v4 = 0xD000000000000027;
  v5 = 0x8000000101230AC0;
  v6 = 0xD00000000000004BLL;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v1, *&v2, *&v6)._countAndFlagsBits;
}

uint64_t sub_10005EB40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10005EBA4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10005EBF4(a1, v4, &qword_101917320);
}

unint64_t sub_10005EBF4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_100014C84(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10005ECC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&qword_101908178);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (a2)
      {
        sub_10005E7BC(v21, v32);
      }

      else
      {
        sub_10005EB40(v21, v32);
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_10005E7BC(v32, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_10005EF40@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for HomeListRecentsSectionController();
  a1[4] = &off_10161FF78;
  *a1 = v3;

  return v3;
}

id sub_10005EF9C@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for HomeListCollectionsSectionController();
  a1[4] = &off_10161DE78;
  *a1 = v3;

  return v3;
}

void *sub_10005EFF8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10005F158(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10056DDF4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10005F1D4(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_10005F1D4(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100014C84(0, &qword_101917320);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10037D12C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10005F2E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10005F2E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    v6 = &selRef_initWithString_color_;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v7 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 v6[337]];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = [v10 v6[337]];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v13 != v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v20 = 0xE000000000000000;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      if (v15 == v20)
      {

        v6 = &selRef_initWithString_color_;
LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_15:
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v6 = &selRef_initWithString_color_;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        __break(1u);
        return result;
      }

      v22 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_10005F498(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive);
  *(v1 + OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive) = a1;
  return sub_10003E6DC(v2);
}

uint64_t sub_10005F4B0()
{
  sub_1000CE6B8(&qword_101908400);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1011E47B0;
  *(v0 + 32) = sub_10003E578();
  return v0;
}

id sub_10005F62C()
{
  if (qword_10195D398 != -1)
  {
    dispatch_once(&qword_10195D398, &stru_101629360);
  }

  v1 = qword_10195D390;

  return v1;
}

void sub_10005F680(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NearbyTransit");
  v2 = qword_10195D390;
  qword_10195D390 = v1;
}

void sub_10005F9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10005F9D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_1002E58D4;
  }

  else
  {
    v5 = *(v3 + 192);

    v4 = sub_10005FAF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10005FAF0()
{
  v54 = v1;
  v2 = *(v1 + 208);
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_17:
    v0 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_22;
  }

  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v51 = *(v1 + 208) + 32;
  v0 = &_swiftEmptyArrayStorage;
  v52 = v3;
  do
  {
    if (v5)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v51 + 8 * v4);
    }

    v7 = v6;
    if (dispatch thunk of FavoriteItem.hidden.getter())
    {
    }

    else
    {
      v8 = type metadata accessor for MapsFavoriteItem();
      v9 = objc_allocWithZone(v8);
      v10 = &v9[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_cachedSubtitle];
      *v10 = 0;
      v10[1] = 0;
      v9[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isUpdatingETA] = 0;
      v11 = &v9[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_analyticsGrouping];
      *v11 = 0x6966654472657355;
      v11[1] = 0xEB0000000064656ELL;
      *&v9[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_number] = 0;
      v9[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup] = 0;
      v9[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isPersisted] = 0;
      v9[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isAlreadyThere] = 0;
      v12 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isMeCardWritebackEnabled;
      v13 = qword_1019066B0;
      v14 = v7;
      if (v13 != -1)
      {
        swift_once();
      }

      v9[v12] = byte_10195FEE0;
      *&v9[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_transportType] = 0;
      *&v9[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem] = v14;
      *(v1 + 112) = v9;
      *(v1 + 120) = v8;
      v15 = objc_msgSendSuper2((v1 + 112), "init", v51);
      v15[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isPersisted] = 1;
      v16 = v15;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v3 = v52;
      v0 = &_swiftEmptyArrayStorage;
    }

    ++v4;
  }

  while (v3 != v4);
LABEL_18:
  v17 = *(v1 + 216);
  v18 = *(v1 + 152);
  v19 = sub_100060218(*(v1 + 208));

  v20 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__setupButtons;
  swift_beginAccess();
  *(v1 + 128) = v19;
  v21 = *(v18 + v20);
  *(swift_task_alloc() + 16) = v1 + 128;
  os_unfair_lock_lock((v21 + 24));
  sub_1002F1E04((v21 + 16));
  os_unfair_lock_unlock((v21 + 24));
  if (v17)
  {
    return;
  }

  v22 = *(v1 + 152);

  swift_endAccess();
  v23 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  swift_beginAccess();
  *(v1 + 136) = &_swiftEmptyArrayStorage;
  v24 = *(v22 + v23);
  *(swift_task_alloc() + 16) = v1 + 136;

  os_unfair_lock_lock((v24 + 24));
  sub_1002F1E04((v24 + 16));
  os_unfair_lock_unlock((v24 + 24));
  v25 = *(v1 + 152);

  swift_endAccess();
  v26 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__sortedShortcuts;
  swift_beginAccess();
  *(v1 + 144) = &_swiftEmptyArrayStorage;
  v27 = *(v25 + v26);
  *(swift_task_alloc() + 16) = v1 + 144;

  os_unfair_lock_lock((v27 + 24));
  sub_1002F1E04((v27 + 16));
  os_unfair_lock_unlock((v27 + 24));

  swift_endAccess();
  if (qword_101906668 != -1)
  {
    goto LABEL_32;
  }

LABEL_22:
  v28 = type metadata accessor for Logger();
  sub_100021540(v28, qword_10195FE88);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v53 = v32;
    *v31 = 134218242;
    if (v0 >> 62)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v33 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v31 + 4) = v33;
    *(v31 + 12) = 2080;
    type metadata accessor for MapsFavoriteItem();

    v34 = Array.description.getter();
    v36 = v35;

    v37 = sub_10004DEB8(v34, v36, &v53);

    *(v31 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "Fetched %ld persisted items: %s", v31, 0x16u);
    sub_10004E3D0(v32);
  }

  v38 = *(v1 + 152);
  v39 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__hasInitialData;
  swift_beginAccess();
  v40 = *(v38 + v39);
  os_unfair_lock_lock((v40 + 20));
  *(v40 + 16) = 1;
  os_unfair_lock_unlock((v40 + 20));
  swift_endAccess();
  v41 = *(v38 + v39);

  os_unfair_lock_lock((v41 + 20));
  LODWORD(v39) = *(v41 + 16);
  os_unfair_lock_unlock((v41 + 20));

  v42 = *(v1 + 176);
  v43 = *(v1 + 184);
  v44 = *(v1 + 168);
  if (v39 == 1)
  {
    v46 = *(v1 + 152);
    v45 = *(v1 + 160);
    v47 = type metadata accessor for TaskPriority();
    (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v46;
    v49 = v46;
    sub_10020AAE4(0, 0, v45, &unk_1011F9420, v48);
  }

  v50 = *(v1 + 8);

  v50();
}

uint64_t sub_1000601E8()
{
  result = GEOConfigGetBOOL();
  byte_10195FEE0 = result;
  return result;
}

void *sub_100060218(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_40:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_37;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v8 = dispatch thunk of FavoriteItem.type.getter();

    ++v4;
    if (v8 == 2)
    {
      goto LABEL_19;
    }
  }

  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100021540(v9, qword_10195FE88);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Adding Home setup placeholder", v12, 2u);
  }

  type metadata accessor for FavoriteItem();
  v13 = MapsSyncObject.__allocating_init()();
  [v13 setSourceType:2];
  dispatch thunk of FavoriteItem.type.setter();
  v14 = NSStringFromMapsSuggestionsShortcutType();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v15._countAndFlagsBits = 0x70757465535FLL;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  dispatch thunk of FavoriteItem.shortcutIdentifier.setter();
  v16 = objc_allocWithZone(type metadata accessor for MapsFavoriteItem());
  *(sub_100060758(v13) + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup) = 1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_19:
  for (i = 0; v3 != i; ++i)
  {
    if (v5)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(v2 + 16))
      {
        goto LABEL_39;
      }

      v18 = *(a1 + 8 * i + 32);
    }

    v19 = v18;
    if (__OFADD__(i, 1))
    {
      goto LABEL_38;
    }

    v20 = dispatch thunk of FavoriteItem.type.getter();

    if (v20 == 3)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100021540(v21, qword_10195FE88);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Adding Work setup placeholder", v24, 2u);
  }

  type metadata accessor for FavoriteItem();
  v25 = MapsSyncObject.__allocating_init()();
  [v25 setSourceType:2];
  dispatch thunk of FavoriteItem.type.setter();
  v26 = NSStringFromMapsSuggestionsShortcutType();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v27._countAndFlagsBits = 0x70757465535FLL;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  dispatch thunk of FavoriteItem.shortcutIdentifier.setter();
  v28 = objc_allocWithZone(type metadata accessor for MapsFavoriteItem());
  *(sub_100060758(v25) + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup) = 1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000606D0()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10195FE88);
  sub_100021540(v0, qword_10195FE88);
  return Logger.init(subsystem:category:)();
}

id sub_100060758(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_cachedSubtitle];
  *v2 = 0;
  v2[1] = 0;
  v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isUpdatingETA] = 0;
  v3 = &v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_analyticsGrouping];
  *v3 = 0x6966654472657355;
  v3[1] = 0xEB0000000064656ELL;
  *&v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_number] = 0;
  v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup] = 0;
  v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isPersisted] = 0;
  v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isAlreadyThere] = 0;
  v4 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isMeCardWritebackEnabled;
  if (qword_1019066B0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1[v4] = byte_10195FEE0;
  *&v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_transportType] = 0;
  *&v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MapsFavoriteItem();
  return objc_msgSendSuper2(&v7, "init");
}

id sub_10006087C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100060904()
{
  v1 = v0;
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v22.receiver = v0;
  v22.super_class = type metadata accessor for MapsFavoriteItem();
  v2 = objc_msgSendSuper2(&v22, "debugDescription");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v23 = v3;
  v24 = v5;
  v6._countAndFlagsBits = 0x203A65707974203ALL;
  v6._object = 0xE800000000000000;
  String.append(_:)(v6);
  [v0 type];
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x203A6469202CLL;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);
  v9 = [v0 identifier];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xE400000000000000;
    v11 = 1701736270;
  }

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x6567616E616D202CLL;
  v15._object = 0xED0000203A644964;
  String.append(_:)(v15);
  v16 = [*&v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem] description];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  return v23;
}

id sub_100060AD8(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_100060B7C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1002E35AC;
  }

  else
  {
    v2 = sub_100060C90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100060C90()
{
  sub_100054628();
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FE88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished populating initial data", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_100060DB8(uint64_t a1, unint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100057DC4(a2, a3 & 1);
  }
}

uint64_t sub_100060E4C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource__allItems;
  **(v0 + 16) = *(*(v1 + OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource__allItems) + 16);
  *(v1 + v3) = *v2;
}

void sub_100060F64(id a1)
{
  v1 = os_log_create("com.apple.Maps", "TransitPay");
  v2 = qword_10195D4C0;
  qword_10195D4C0 = v1;
}

uint64_t sub_1000614F8()
{
  IsEnabled_VisitedPlaces = MapsFeature_IsEnabled_VisitedPlaces();
  sub_1000CE6B8(&qword_101908400);
  if (IsEnabled_VisitedPlaces)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1011E5C00;
    v3 = *(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration + 48);
    v4 = *(v0 + OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController_sharedTripsDataProvider);
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    v5 = v3;
    v6 = v4;
    *(v2 + 48) = sub_1000615F0();
    *(v2 + 56) = sub_100340B04();
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1011E47C0;
    v7 = *(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration + 48);
    v8 = *(v0 + OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController_sharedTripsDataProvider);
    *(v2 + 32) = v7;
    *(v2 + 40) = v8;
    v9 = v7;
    v10 = v8;
    *(v2 + 48) = sub_1000615F0();
  }

  return v2;
}

id sub_1000615F0()
{
  v1 = OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController____lazy_storage___photoLookupDataProvider;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController____lazy_storage___photoLookupDataProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController____lazy_storage___photoLookupDataProvider);
  }

  else
  {
    v4 = [objc_allocWithZone(HomePhotoLookupDataProvider) initWithSuggestionsDataProvider:*(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration + 48)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100061AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100061AF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = sub_10005F62C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = NSStringFromSelector(v5);
      *buf = 138412546;
      v21 = v4;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ %@: Checking if isTransitUserHere", buf, 0x16u);
    }

    v8 = MapsSuggestionsResourceDepotForMapsProcess();
    v9 = [v8 oneInsights];

    v10 = [v9 isTransitUserHere];
    v11 = sub_10005F62C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 40);
      v14 = v12;
      v15 = NSStringFromSelector(v13);
      v16 = v15;
      v17 = @"No";
      *buf = 138412802;
      v21 = v12;
      v22 = 2112;
      if (v10)
      {
        v17 = @"Yes";
      }

      v23 = v15;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ %@: isTransitUserHere: %@", buf, 0x20u);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10068C788;
    v18[3] = &unk_101661AE0;
    v18[4] = WeakRetained;
    v19 = v10;
    dispatch_async(&_dispatch_main_q, v18);
  }
}

void sub_100061D34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v10 = sub_10006250C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get unpaired apps from garage with error: %@", buf, 0xCu);
      }
    }

    else
    {
      v9 = WeakRetained[1];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100061E9C;
      v11[3] = &unk_101661340;
      objc_copyWeak(&v13, (a1 + 32));
      v12 = v5;
      dispatch_async(v9, v11);

      objc_destroyWeak(&v13);
    }
  }
}

void sub_100061E9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setUnpairedVehicles:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100061F94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    IsEnabled_EVRouting = MapsFeature_IsEnabled_EVRouting();
    v3 = IsEVRoutingSupported();
    v4 = *(WeakRetained + 24);
    v5 = [WeakRetained[6] count];
    if (v5)
    {
      v6 = [WeakRetained _shouldShowVehicleCombination:WeakRetained[6]];
    }

    else
    {
      v6 = 0;
    }

    v7 = IsEnabled_EVRouting & v3 & v6 & (v4 ^ 1);
    [WeakRetained setAvailable:v7];
    v8 = sub_10006250C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      if (v7)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = v9;
      if (IsEnabled_EVRouting)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = v11;
      if (v3)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v14 = v13;
      if (v4)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v16 = v15;
      if (v5)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v18 = v17;
      if (v6)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v20 = v19;
      v21 = 138413570;
      v22 = v10;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_reloadAvailability EVRoutingFeatureDiscoverySource isAvailable: %@\n, featureEnabled: %@, currentCountrySupportsEVRouting: %@, wasDismissed: %@, hasUnpairedVehicles: %@, belowMaximumViewCount: %@", &v21, 0x3Eu);
    }
  }
}

void sub_1000623E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100063E10;
    block[3] = &unk_101661A40;
    v11 = v6;
    v12 = v5;
    v13 = v8;
    dispatch_async(v9, block);
  }
}

void sub_1000624C8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutePlanningFeatureDiscovery");
  v2 = qword_10195D440;
  qword_10195D440 = v1;
}

id sub_10006250C()
{
  if (qword_10195D448 != -1)
  {
    dispatch_once(&qword_10195D448, &stru_1016294C0);
  }

  v1 = qword_10195D440;

  return v1;
}

uint64_t sub_100062628(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive;
  v4 = v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive];
  v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] = result;
  if (v4 == (result & 1))
  {
    goto LABEL_36;
  }

  ObjectType = swift_getObjectType();
  v6 = &protocol descriptor for HomeListSectionControllerSubclassing;
  v7 = swift_conformsToProtocol2();
  if (!v7)
  {
    goto LABEL_41;
  }

  v8 = v7;
  v9 = *(v7 + 8);
  v10 = v1;
  v11 = v9(ObjectType, v8);

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
LABEL_32:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v14 setActive:v2[v3]];
    swift_unknownObjectRelease();
  }

LABEL_12:

  v15 = v2[v3];
  v16 = swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  v18 = v17;
  if (v15 != 1)
  {
    if (v17)
    {
      v24 = *(v17 + 8);
      v25 = v10;
      v26 = v24(v16, v18);

      if (v26 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
        if (!v27)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          goto LABEL_35;
        }
      }

      if (v27 >= 1)
      {
        v28 = 0;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v26 + 8 * v28 + 32);
            swift_unknownObjectRetain();
          }

          ++v28;
          v30 = [v29 observers];
          [v30 unregisterObserver:v25];
          swift_unknownObjectRelease();
        }

        while (v27 != v28);
        goto LABEL_35;
      }

LABEL_40:
      __break(1u);
    }

LABEL_41:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!v17)
  {
    goto LABEL_41;
  }

  v19 = *(v17 + 8);
  v6 = v10;
  v10 = v19(v16, v18);

  if (v10 >> 62)
  {
    goto LABEL_32;
  }

  v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_16:
    if (v20 >= 1)
    {
      v21 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v22 = *(v10 + 8 * v21 + 32);
          swift_unknownObjectRetain();
        }

        ++v21;
        v23 = [v22 observers];
        [v23 registerObserver:v6];
        swift_unknownObjectRelease();
      }

      while (v20 != v21);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_35:

LABEL_36:
  if (v2[v3])
  {
    return sub_100209A00();
  }

  return result;
}

uint64_t sub_1000629E4()
{
  sub_1000CE6B8(&qword_101908400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E47B0;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps34HomeListFavoritesSectionController_favoritesDataProvider);
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

id sub_100062A9C()
{
  v1 = OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionIdentifierPath;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionIdentifierPath);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionIdentifierPath);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() identifierPathWithIdentifier:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100062B44()
{
  v1 = OBJC_IVAR____TtC4Maps34HomeListFavoritesSectionController____lazy_storage___pinnedItemsIdentifierPath;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps34HomeListFavoritesSectionController____lazy_storage___pinnedItemsIdentifierPath);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps34HomeListFavoritesSectionController____lazy_storage___pinnedItemsIdentifierPath);
  }

  else
  {
    v4 = sub_100062A9C();
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 identifierPathByAppendingIdentifier:v5];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_100062BF8()
{
  sub_1000CE6B8(&qword_101908400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E47B0;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps32HomeListRecentsSectionController_cellModelProvider);
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

void sub_100062C64(id a1)
{
  v1 = objc_alloc_init(Recents);
  v2 = qword_10195CFE8;
  qword_10195CFE8 = v1;
}

void sub_100062FA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_10006311C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive;
  v4 = v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive];
  v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] = a1;
  if (v4 == (a1 & 1))
  {
    return sub_100487214(v2[v3]);
  }

  ObjectType = swift_getObjectType();
  v6 = &protocol descriptor for HomeListSectionControllerSubclassing;
  v7 = swift_conformsToProtocol2();
  if (!v7)
  {
    goto LABEL_39;
  }

  v8 = v7;
  v9 = *(v7 + 8);
  v10 = v1;
  v11 = v9(ObjectType, v8);

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_5:
      if (v12 < 1)
      {
        __break(1u);
        goto LABEL_32;
      }

      for (i = 0; i != v12; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v11 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        [v14 setActive:v2[v3]];
        swift_unknownObjectRelease();
      }
    }
  }

  v15 = v2[v3];
  v16 = swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  v18 = v17;
  if (v15 == 1)
  {
    if (v17)
    {
      v19 = *(v17 + 8);
      v6 = v10;
      v10 = v19(v16, v18);

      if (!(v10 >> 62))
      {
        v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
LABEL_16:
          if (v20 >= 1)
          {
            v21 = 0;
            do
            {
              if ((v10 & 0xC000000000000001) != 0)
              {
                v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v22 = *(v10 + 8 * v21 + 32);
                swift_unknownObjectRetain();
              }

              ++v21;
              v23 = [v22 observers];
              [v23 registerObserver:v6];
              swift_unknownObjectRelease();
            }

            while (v20 != v21);
            goto LABEL_35;
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_35:

        return sub_100487214(v2[v3]);
      }

LABEL_32:
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (v20)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  else if (v17)
  {
    v24 = *(v17 + 8);
    v25 = v10;
    v26 = v24(v16, v18);

    if (v26 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (!v27)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_35;
      }
    }

    if (v27 >= 1)
    {
      v28 = 0;
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v29 = *(v26 + 8 * v28 + 32);
          swift_unknownObjectRetain();
        }

        ++v28;
        v30 = [v29 observers];
        [v30 unregisterObserver:v25];
        swift_unknownObjectRelease();
      }

      while (v27 != v28);
      goto LABEL_35;
    }

LABEL_38:
    __break(1u);
  }

LABEL_39:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000634D4()
{
  sub_1000CE6B8(&qword_101908400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E47B0;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps36HomeListCollectionsSectionController_cellModelProvider);
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

void *sub_100063638()
{
  v3 = *(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration + 64);
  v1 = v3;
  if (v3)
  {
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100024F64(&v3, &qword_101924960);
  return &_swiftEmptyArrayStorage;
}

void sub_100063E10(void *a1)
{
  if (a1[4] || !a1[5])
  {
    v2 = sub_100063F04();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = a1[4];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to get virtual garage with error: %@", &v5, 0xCu);
    }
  }

  else
  {
    v4 = a1[6];

    [v4 _consumeUpdatedGarage:?];
  }
}

id sub_100063F04()
{
  if (qword_10195DA50 != -1)
  {
    dispatch_once(&qword_10195DA50, &stru_10162C160);
  }

  v1 = qword_10195DA48;

  return v1;
}

void sub_100063F58(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PreferredNetworksFeatureDiscoverySource");
  v2 = qword_10195DA48;
  qword_10195DA48 = v1;
}

uint64_t sub_100063F9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_100063FF4(void *a1)
{
  v2 = [a1 type];
  result = 1;
  if ((v2 - 7) >= 0x13)
  {
    if (v2 > 4)
    {
      if (v2 == 5)
      {
        result = [a1 geoMapItem];
        if (result)
        {

          return 1;
        }

        return result;
      }
    }

    else if ((v2 - 1) < 4)
    {
      return result;
    }

    return 0;
  }

  return result;
}

void sub_10006423C(id a1)
{
  v1 = objc_alloc_init(MapsExternalDevice);
  v2 = qword_10195DB28;
  qword_10195DB28 = v1;
}

void sub_100064D10(id a1)
{
  v1 = qword_10195D118;
  qword_10195D118 = &off_1016ECA28;
}

void sub_100064E84(id a1)
{
  v1 = objc_alloc_init(AddressBookManager);
  v2 = qword_10195D188;
  qword_10195D188 = v1;
}

id sub_10006515C()
{
  if (qword_10195D1E0 != -1)
  {
    dispatch_once(&qword_10195D1E0, &stru_1016287F8);
  }

  v1 = qword_10195D1D8;

  return v1;
}

void sub_1000651B0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "AddressBookManager");
  v2 = qword_10195D1D8;
  qword_10195D1D8 = v1;
}

void sub_100065468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100065C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100065D1C()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = __chkstk_darwin(v2);
  v57 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v6 = &v55[-v5];
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v55[-v12];
  if (qword_101906710 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v61 = v6;
    v14 = type metadata accessor for Logger();
    sub_100021540(v14, qword_10195FFD0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Signaling section loading has started.", v17, 2u);
    }

    v18 = OBJC_IVAR____TtC4Maps22HomeListRootController_proactiveTraySignposter;
    v19 = *(v8 + 16);
    v19(v13, &v1[OBJC_IVAR____TtC4Maps22HomeListRootController_proactiveTraySignposter], v7);
    v20 = *&v1[OBJC_IVAR____TtC4Maps22HomeListRootController_sectionLoadingSignpostName];
    v21 = v1[OBJC_IVAR____TtC4Maps22HomeListRootController_sectionLoadingSignpostName + 16];
    v19(v11, &v1[v18], v7);
    OSSignposter.logHandle.getter();
    v22 = v61;
    OSSignpostID.init(log:)();
    v23 = *(v8 + 8);
    v23(v11, v7);
    v24 = OSSignposter.logHandle.getter();
    v56 = static os_signpost_type_t.begin.getter();
    result = OS_os_log.signpostsEnabled.getter();
    v60 = v1;
    if (result)
    {
      if ((v21 & 1) == 0)
      {
        if (v20)
        {
LABEL_12:
          v26 = swift_slowAlloc();
          *v26 = 0;
          v22 = v61;
          v27 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, v56, v27, v20, "", v26, 2u);

          v1 = v60;
          goto LABEL_13;
        }

        __break(1u);
      }

      if (v20 >> 32)
      {
        goto LABEL_46;
      }

      if ((v20 & 0xFFFFF800) == 0xD800)
      {
        goto LABEL_48;
      }

      if (v20 >> 16 > 0x10)
      {
        goto LABEL_47;
      }

      v20 = &v62;
      goto LABEL_12;
    }

LABEL_13:

    v28 = v58;
    v29 = v59;
    (*(v58 + 16))(v57, v22, v59);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v30 = OSSignpostIntervalState.init(id:isOpen:)();
    v31 = *(v28 + 8);
    v11 = (v28 + 8);
    v31(v22, v29);
    v23(v13, v7);
    *&v1[OBJC_IVAR____TtC4Maps22HomeListRootController_sectionLoadingSingpostState] = v30;

    v33 = OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers;
    if (*&v1[OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers])
    {
      v34 = *&v1[OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers];
    }

    else
    {
      v34 = sub_10005C3A8(v32);
      *&v1[v33] = v34;
      swift_bridgeObjectRetain_n();

      sub_10005E3A4(v34);
    }

    v35 = *(v34 + 16);
    if (v35)
    {
      v63 = &_swiftEmptyArrayStorage;

      sub_1000663DC(0, v35, 0);
      v1 = v63;
      v11 = (v34 + 40);
      do
      {
        v36 = *(v11 - 1);
        v37 = *v11;
        ObjectType = swift_getObjectType();
        v39 = *(v37 + 8);
        v40 = v36;
        v41 = v39(ObjectType, v37);

        v63 = v1;
        v43 = *(v1 + 2);
        v42 = *(v1 + 3);
        if (v43 >= v42 >> 1)
        {
          sub_1000663DC((v42 > 1), v43 + 1, 1);
          v1 = v63;
        }

        *(v1 + 2) = v43 + 1;
        *&v1[8 * v43 + 32] = v41;
        v11 += 2;
        --v35;
      }

      while (v35);
    }

    else
    {

      v1 = &_swiftEmptyArrayStorage;
    }

    v44 = sub_100066550(v1);
    v47 = sub_1000665EC(v44, v46, v45 & 1, *(v1 + 2), 0, 1, v1);
    if (!v47)
    {
      break;
    }

    v13 = v47;
    v63 = &_swiftEmptyArrayStorage;
    v6 = &v63;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_100066550(v1);
    if (v13 < 0)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    v7 = result;
    v50 = v48;
    v8 = 0;
    while (1)
    {
      v51 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v7 >= *(v1 + 2))
      {
        goto LABEL_41;
      }

      if (v49)
      {
        goto LABEL_49;
      }

      v6 = *&v1[8 * v7 + 32];
      if ((v6 & 0xC000000000000001) != 0)
      {

        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        if (v50 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        swift_unknownObjectRetain();
      }

      v6 = &v63;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = *(v63 + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      result = sub_100066878(v7, v50, 0, v1);
      v7 = result;
      v50 = v52;
      ++v8;
      if (v51 == v13)
      {

        v53 = v63;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v53 = &_swiftEmptyArrayStorage;
LABEL_38:
  v54 = sub_100066AC8(v53);

  *&v60[OBJC_IVAR____TtC4Maps22HomeListRootController_allDataProviders] = v54;
}

void *sub_1000663DC(void *a1, int64_t a2, char a3)
{
  result = sub_10006641C(a1, a2, a3, *v3, &qword_101925060, &unk_10120DCF0, &unk_101925068);
  *v3 = result;
  return result;
}

void *sub_10006641C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000CE6B8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_100066550(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = 0;
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 8 * v3);
      if (v5 >> 62)
      {
        v6 = result;
        v7 = _CocoaArrayWrapper.endIndex.getter();
        result = v6;
        if (v7)
        {
          return v3;
        }
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v3;
      }

      ++v3;
    }

    while (result != v3);
  }

  return result;
}

uint64_t sub_1000665EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 != result)
  {
    v7 = result;
    if (a4 < result)
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (*(a7 + 16) <= a4)
      {
        goto LABEL_46;
      }

      v8 = *(a7 + 8 * a4 + 32);
      if (v8 >> 62)
      {
        goto LABEL_49;
      }

      if ((a6 & 1) == 0)
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = __OFSUB__(a5, v9);
        result = a5 - v9;
        if (v10)
        {
          goto LABEL_52;
        }

        goto LABEL_11;
      }

      goto LABEL_61;
    }

    goto LABEL_18;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    while (1)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v25 = a7;
      v26 = a2;
      v27 = a3;
      v28 = a4;
      v29 = a5;
      v30 = a6;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (v30)
      {
        goto LABEL_61;
      }

      a5 = v29;
      a4 = v28;
      a3 = v27;
      a2 = v26;
      a7 = v25;
      v10 = __OFSUB__(v29, result);
      result = v29 - result;
      if (v10)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        v31 = a7;
        v32 = a2;
        v33 = a4;
        v34 = a5;
        v35 = a6;
        v36 = _CocoaArrayWrapper.endIndex.getter();
        a6 = v35;
        a5 = v34;
        a4 = v33;
        a7 = v31;
        v10 = __OFSUB__(v36, v32);
        result = v36 - v32;
        if (v10)
        {
          goto LABEL_55;
        }

LABEL_23:
        v11 = 1;
        a2 = a5;
        a3 = a6;
        v12 = a4;
        a4 = v7;
      }

      else
      {
LABEL_11:
        v11 = -1;
        v12 = v7;
      }

      v7 = a4 + 1;
      if ((a4 + 1) >= v12)
      {
LABEL_34:
        if (a3)
        {
          return result;
        }

        if (v12 < 0)
        {
          goto LABEL_56;
        }

        if (v12 >= *(a7 + 16))
        {
          goto LABEL_57;
        }

        v10 = __OFADD__(result, a2 * v11);
        result += a2 * v11;
        if (v10)
        {
          goto LABEL_58;
        }

        return result;
      }

      v15 = *(a7 + 16);
      v16 = (a7 + 8 * a4 + 40);
      while (v7 < v15)
      {
        if (*v16 >> 62)
        {
          v20 = result;
          v21 = a7;
          v22 = a2;
          v23 = a3;
          v24 = _CocoaArrayWrapper.endIndex.getter();
          a3 = v23;
          a2 = v22;
          a7 = v21;
          v17 = v24;
          result = v20;
        }

        else
        {
          v17 = *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v18 = v17 * v11;
        v10 = __OFADD__(result, v18);
        result += v18;
        if (v10)
        {
          goto LABEL_40;
        }

        v19 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_41;
        }

        ++v7;
        ++v16;
        if (v19 >= v12)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }
  }

  if (a3)
  {
    goto LABEL_59;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (*(a7 + 16) <= a4)
  {
    goto LABEL_48;
  }

  result = a5 - a2;
  if (__OFSUB__(a5, a2))
  {
    __break(1u);
LABEL_18:
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    if (*(a7 + 16) <= v7)
    {
      goto LABEL_47;
    }

    if (a3)
    {
      goto LABEL_60;
    }

    v13 = *(a7 + 8 * v7 + 32);
    if (v13 >> 62)
    {
      goto LABEL_53;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFSUB__(v14, a2);
    result = v14 - a2;
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  return result;
}

unint64_t sub_100066878(unint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(a4 + 16);
  if (v4 <= result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    v7 = result;
    v8 = a4;
    v9 = a2;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    a4 = v8;
    v11 = v10;
    result = v7;
    if (v9 != v11)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (__OFADD__(a2++, 1))
  {
    goto LABEL_10;
  }

  v6 = *(a4 + 8 * result + 32);
  if (v6 >> 62)
  {
    goto LABEL_11;
  }

  if (a2 != *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

LABEL_12:
  ++result;
  while (1)
  {
    if (result == v4)
    {
      return v4;
    }

    v12 = result;
    v13 = a4;
    sub_1000CE6B8(&qword_10191C260);
    sub_1000414C8(&qword_10191C268, &qword_10191C260);
    v14 = v12;
    v15 = v13;
    v16 = sub_100066A58(v20, v12, v13);
    v18 = *v17;

    (v16)(v20, 0);
    v19 = v18 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v19)
    {
      return v14;
    }

    result = v14 + 1;
    a4 = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_23;
    }
  }
}

uint64_t (*sub_100066A58(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    *result = *(a3 + 8 * a2 + 32);

    return sub_100066AC0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100066AC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000CE6B8(&qword_101919380);
  sub_1000414C8(&qword_101921A48, &qword_101919380);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_unknownObjectRetain();
      sub_100066C44(&v6, v5);
      swift_unknownObjectRelease();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100066BB8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100066C44(uint64_t *a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_100066E7C(v23, a2);
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      *&v16 = *(*(v4 + 48) + 8 * v7);
      swift_unknownObjectRetain_n();
      sub_1000CE6B8(&unk_101919370);
      if (!swift_dynamicCast())
      {
        break;
      }

      v23[0] = v20;
      v23[1] = v21;
      v24 = v22;
      v19 = a2;
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        swift_unknownObjectRelease();
        sub_10005BF8C(v23);
        v16 = 0u;
        v17 = 0u;
        v18 = 0;
        v9 = &v16;
        goto LABEL_4;
      }

      v20 = v16;
      v21 = v17;
      v22 = v18;
      v10 = static AnyHashable.== infix(_:_:)();
      swift_unknownObjectRelease();
      sub_10005BF8C(&v20);
      sub_10005BF8C(v23);
      if (v10)
      {
        swift_unknownObjectRelease();
        *a1 = *(*(v4 + 48) + 8 * v7);
        swift_unknownObjectRetain();
        return 0;
      }

LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    swift_unknownObjectRelease();
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v9 = &v20;
LABEL_4:
    sub_10010EA94(v9);
    goto LABEL_5;
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v23[0] = *v14;
  v12 = swift_unknownObjectRetain();
  sub_100066F20(v12, v7, isUniquelyReferenced_nonNull_native);
  *v14 = *&v23[0];
  *a1 = a2;
  return 1;
}

uint64_t sub_100066E7C(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  swift_unknownObjectRetain();
  sub_1000CE6B8(&unk_101919370);
  if (swift_dynamicCast())
  {
    v7[0] = v3;
    v7[1] = v4;
    v8 = v5;
    AnyHashable.hash(into:)();
    return sub_10005BF8C(v7);
  }

  else
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    return sub_10010EA94(&v3);
  }
}

Swift::Int sub_100066F20(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100308FA0();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_10030A41C();
        goto LABEL_18;
      }

      sub_10030B110();
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    sub_100066E7C(v25, v5);
    result = Hasher._finalize()();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (1)
      {
        *&v18 = *(*(v8 + 48) + 8 * a2);
        swift_unknownObjectRetain_n();
        sub_1000CE6B8(&unk_101919370);
        if (!swift_dynamicCast())
        {
          break;
        }

        v25[0] = v22;
        v25[1] = v23;
        v26 = v24;
        v21 = v5;
        swift_unknownObjectRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          swift_unknownObjectRelease();
          sub_10005BF8C(v25);
          v18 = 0u;
          v19 = 0u;
          v20 = 0;
          v11 = &v18;
          goto LABEL_11;
        }

        v22 = v18;
        v23 = v19;
        v24 = v20;
        v12 = static AnyHashable.== infix(_:_:)();
        swift_unknownObjectRelease();
        sub_10005BF8C(&v22);
        result = sub_10005BF8C(v25);
        if (v12)
        {
          goto LABEL_21;
        }

LABEL_12:
        a2 = (a2 + 1) & v10;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      swift_unknownObjectRelease();
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v11 = &v22;
LABEL_11:
      result = sub_10010EA94(v11);
      goto LABEL_12;
    }
  }

LABEL_18:
  v13 = *v17;
  *(*v17 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_21:
    sub_1000CE6B8(&qword_101919380);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

void sub_10006737C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_100067540()
{
  if (qword_10195D458 != -1)
  {
    dispatch_once(&qword_10195D458, &stru_1016294E0);
  }

  v1 = qword_10195D450;

  return v1;
}

void sub_100067594(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchAC");
  v2 = qword_10195D450;
  qword_10195D450 = v1;
}

void sub_1000675D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1009960A4;
      v7[3] = &unk_101661A90;
      v7[4] = WeakRetained;
      v8 = v3;
      dispatch_async(&_dispatch_main_q, v7);
    }

    else
    {
      [WeakRetained cleanSearch];
      v6 = [v5[23] searchDataProvider];
      [v6 clearMKLocalSearchCompleterQueryState];
    }
  }
}

id sub_1000681C0(uint64_t a1)
{
  [*(*(a1 + 32) + 32) _maps_scrollContentToOriginalPosition];
  v2 = *(*(a1 + 32) + 16);

  return [v2 resetScrollOffset];
}

uint64_t sub_10006825C()
{
  v1 = sub_1000CE6B8(&qword_1019174A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  v35 = type metadata accessor for IndexPath();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers;
  v8 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers);
    v10 = *(v8 + 16);
    if (v10)
    {
LABEL_3:
      v36 = v3;
      v33 = v6;
      v38 = type metadata accessor for HomeListCuratedCollectionsSectionController();
      v34 = (v4 + 48);
      v30 = (v4 + 8);
      v31 = (v4 + 32);
      v32 = (v4 + 56);

      v11 = 4;
      v12 = v35;
      v37 = v9;
      while (1)
      {
        v14 = v9[v11];
        v15 = swift_dynamicCastClass();
        if (!v15)
        {
          goto LABEL_7;
        }

        v16 = v15;
        v17 = OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController_needsResetScrollOffset;
        *(v15 + OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController_needsResetScrollOffset) = 1;
        v18 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
        sub_10003E48C(v15 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v39);
        Strong = swift_unknownObjectWeakLoadStrong();
        v20 = v14;
        sub_10003E4E8(v39);
        if (Strong)
        {
          v21 = sub_100068674();
          v22 = sub_100059F34();
          v39[0] = v21;
          v13 = v36;
          dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

          v12 = v35;
          swift_unknownObjectRelease();
          if ((*v34)(v13, 1, v12) != 1)
          {
            v23 = v33;
            (*v31)(v33, v13, v12);
            v24 = *(v16 + v18);
            v25 = v12;
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v27 = [v24 cellForItemAtIndexPath:isa];

            if (v27)
            {
              objc_opt_self();
              v28 = swift_dynamicCastObjCClass();
              if (v28)
              {
                [v28 resetScrollOffset];

                v12 = v35;
                (*v30)(v33, v35);
                *(v16 + v17) = 0;
              }

              else
              {

                v12 = v35;
                (*v30)(v33, v35);
              }
            }

            else
            {

              (*v30)(v23, v25);
              v12 = v25;
            }

            goto LABEL_6;
          }
        }

        else
        {

          v13 = v36;
          (*v32)(v36, 1, 1, v12);
        }

        sub_100024F64(v13, &qword_1019174A0);
LABEL_6:
        v9 = v37;
LABEL_7:
        v11 += 2;
        if (!--v10)
        {
        }
      }
    }
  }

  else
  {
    v9 = sub_10005C3A8();
    *(v0 + v7) = v9;
    swift_bridgeObjectRetain_n();

    sub_10005E3A4(v9);

    v10 = v9[2];
    if (v10)
    {
      goto LABEL_3;
    }
  }
}

id sub_100068674()
{
  v1 = OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController____lazy_storage___curatedCollectionsIdentifierPath;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController____lazy_storage___curatedCollectionsIdentifierPath);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController____lazy_storage___curatedCollectionsIdentifierPath);
  }

  else
  {
    v4 = sub_100062A9C();
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 identifierPathByAppendingIdentifier:v5];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100068860(id a1)
{
  v1 = objc_alloc_init(DeviceRecentLocations);
  v2 = qword_10195F230;
  qword_10195F230 = v1;
}

void sub_100068BB8()
{
  if (qword_10195DE48 != -1)
  {
    dispatch_once(&qword_10195DE48, &stru_10162FA08);
  }

  if (byte_10195DE40 != 1)
  {
    v2 = sub_100960CE4();
    v3 = +[UIScreen mainScreen];
    [v3 bounds];
    if (!v2)
    {

      return;
    }

LABEL_9:
    UIRoundToScreenScale();

    return;
  }

  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1)
  {
    v3 = +[UIScreen mainScreen];
    [v3 bounds];
    goto LABEL_9;
  }
}

void sub_1000691C8(uint64_t a1)
{
  *(*(a1 + 32) + 17) = 0;
  v1 = *(a1 + 32);
  v2 = v1[6];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000694C8;
  v3[3] = &unk_101654BC0;
  objc_copyWeak(&v4, (a1 + 40));
  [v1 loadCoreRecentsOnQueue:v2 withCompletion:v3];
  objc_destroyWeak(&v4);
}

void sub_100069284(uint64_t a1, char a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100069348;
    v9[3] = &unk_1016505E8;
    objc_copyWeak(&v10, (a1 + 32));
    v11 = a2;
    v12 = a3;
    dispatch_async(v8, v9);
    objc_destroyWeak(&v10);
  }
}

void sub_100069348(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40))
    {
      if ([WeakRetained[3] startLocationUpdatesForDelegate:WeakRetained])
      {
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 3221225472;
        v5[2] = sub_1006422B8;
        v5[3] = &unk_101661368;
        objc_copyWeak(&v6, (a1 + 32));
        v7 = *(a1 + 41);
        dispatch_async(&_dispatch_main_q, v5);
        objc_destroyWeak(&v6);
      }
    }

    else
    {
      v4 = sub_10003D020();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Maps Home - User is not eligible for Transit + Pay with no payment card in Wallet", buf, 2u);
      }
    }
  }
}

void sub_1000694B0(id a1)
{
  v1 = qword_10195E3F0;
  qword_10195E3F0 = &off_1016ED388;
}

void sub_1000694C8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setSystemRecents:v5];
    [v4 _combineRecents];
  }
}

void sub_100069980(id a1)
{
  v1 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:&stru_1016631F0 priority:0];
  v2 = qword_10195F310;
  qword_10195F310 = v1;
}

void sub_100069B68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 object];
  v6 = sub_100896688();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_opt_class();
      v9 = [v7 ID];
      v10 = [v7 name];
      v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@<%p> (ID: %@, name: %@, transportType: %ld)", v8, v7, v9, v10, [v7 transportType]);
    }

    else
    {
      v11 = [v7 description];
    }

    v12 = [v3 name];
    v13 = [v3 userInfo];
    *buf = 134349826;
    v35 = WeakRetained;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] notified of update for device: %@ (%@, userInfo: %@", buf, 0x2Au);
  }

  if (WeakRetained)
  {
    v14 = [v5 ID];
    v15 = [WeakRetained[9] ID];
    v16 = v14;
    v17 = v15;
    if (v16 | v17)
    {
      v18 = v17;
      v19 = [v16 isEqual:v17];

      if ((v19 & 1) == 0)
      {
        v21 = sub_100896688();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = WeakRetained[9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = objc_opt_class();
            v24 = [v22 ID];
            v25 = [v22 name];
            v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@<%p> (ID: %@, name: %@, transportType: %ld)", v23, v22, v24, v25, [v22 transportType]);
          }

          else
          {
            v26 = [v22 description];
          }

          v27 = v26;
          v28 = v5;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = objc_opt_class();
            v30 = [v28 ID];
            v31 = [v28 name];
            v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@<%p> (ID: %@, name: %@, transportType: %ld)", v29, v28, v30, v31, [v28 transportType]);
          }

          else
          {
            v32 = [v28 description];
          }

          *buf = 134349570;
          v35 = WeakRetained;
          v36 = 2112;
          v37 = v27;
          v38 = 2112;
          v39 = v32;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%{public}p] external device changed since we registered for notifications (current: %@, incoming: %@)", buf, 0x20u);
        }

        v20 = +[MapsCarPlayExternalDeviceMonitor sharedInstance];
        v33 = [v20 carPlayExternalDevice];
        [WeakRetained setExternalDevice:v33];

        goto LABEL_22;
      }
    }

    if ([WeakRetained _checkScreenOwnershipIfNeeded:0])
    {
      v20 = sub_100896688();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v35 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] forced screen ownership check, state updated as a result", buf, 0xCu);
      }

LABEL_22:

      goto LABEL_23;
    }

    [WeakRetained _updateStateForRecievedNotification:v3];
  }

LABEL_23:
}

void sub_10006A410(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNotifyCallback];
}

id sub_10006A450()
{
  if (qword_10195F3F0 != -1)
  {
    dispatch_once(&qword_10195F3F0, &stru_1016568C0);
  }

  v1 = qword_10195F3E8;

  return v1;
}

void *sub_10006AB8C(void *result)
{
  v1 = result[6];
  *(*(result[5] + 8) + 24) = *(result[4] + 40) != v1;
  *(result[4] + 40) = v1;
  return result;
}

id sub_10006ABB4()
{
  if (qword_10195F078 != -1)
  {
    dispatch_once(&qword_10195F078, &stru_1016518C0);
  }

  v1 = qword_10195F070;

  return v1;
}

void sub_10006AF74(uint64_t a1)
{
  v2 = [*(a1 + 32) _isCurrentStateEqualLastPostedState];
  v3 = sub_100896688();
  v4 = v3;
  if (!v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = [v6 lastPostedState];
      v8 = [*(a1 + 32) currentState];
      *buf = 134349570;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] posting notification\n lastPostedState=%@\n currentState=%@", buf, 0x20u);
    }

    v9 = sub_100896688();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(a1 + 32) lastPostedState];
      if (v10)
      {
        v11 = v10;
        v12 = [*(a1 + 32) currentState];

        if (!v12)
        {
LABEL_13:
          v17 = +[NSNotificationCenter defaultCenter];
          [v17 postNotificationName:@"MapsExternalDeviceUpdated" object:*(a1 + 32) userInfo:0];

          v4 = [*(a1 + 32) currentState];
          v18 = [v4 copy];
          [*(a1 + 32) setLastPostedState:v18];

          goto LABEL_14;
        }

        v13 = [*(a1 + 32) currentState];
        v14 = [*(a1 + 32) lastPostedState];
        v19 = 0;
        [v13 isEqualToState:v14 changedKeys:&v19];
        v9 = v19;

        v15 = sub_100896688();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(a1 + 32);
          *buf = 134349314;
          v21 = v16;
          v22 = 2112;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] changedKeys=%@", buf, 0x16u);
        }
      }
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    *buf = 134349056;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] no need to post notification (no change)", buf, 0xCu);
  }

LABEL_14:
}

UIColor *__cdecl sub_10006B8E8(id a1, UITraitCollection *a2)
{
  v2 = [UITraitCollection traitCollectionWithUserInterfaceStyle:[(UITraitCollection *)a2 _car_userInterfaceStyle]];
  v3 = [UIColor _mapkit_colorNamed:@"CartographyBackgroundColor" compatibleWithTraitCollection:v2];
  v4 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v3 CGColor]);

  return v4;
}

id sub_10006C9F8()
{
  if (qword_10195D9C8 != -1)
  {
    dispatch_once(&qword_10195D9C8, &stru_10162B758);
  }

  v1 = qword_10195D9C0;

  return v1;
}

id sub_10006CB50()
{
  if (qword_10195F500 != -1)
  {
    dispatch_once(&qword_10195F500, &stru_1016577E8);
  }

  v1 = qword_10195F4F8;

  return v1;
}

id sub_10006CF98()
{
  if (qword_10195D6C8 != -1)
  {
    dispatch_once(&qword_10195D6C8, &stru_1016299C0);
  }

  v1 = qword_10195D6C0;

  return v1;
}

id sub_10006D178()
{
  if (qword_10195D308 != -1)
  {
    dispatch_once(&qword_10195D308, &stru_101629240);
  }

  v1 = qword_10195D300;

  return v1;
}

id sub_10006D1CC()
{
  if (qword_10195EAE0 != -1)
  {
    dispatch_once(&qword_10195EAE0, &stru_10164D890);
  }

  v1 = qword_10195EAD8;

  return v1;
}

id sub_10006D228()
{
  if (qword_10195CCF8 != -1)
  {
    dispatch_once(&qword_10195CCF8, &stru_101623F90);
  }

  v1 = qword_10195CCF0;

  return v1;
}

id sub_10006D28C()
{
  if (qword_10195E220 != -1)
  {
    dispatch_once(&qword_10195E220, &stru_1016323A8);
  }

  v1 = qword_10195E218;

  return v1;
}

void sub_10006D77C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps14NavMetricsView_isCarPlay))
  {
LABEL_2:

    sub_1004FDBE4();
    return;
  }

  v2 = *(v1 + OBJC_IVAR____TtC4Maps14NavMetricsView_eta);
  if (!a1)
  {
    if (!v2)
    {
      goto LABEL_2;
    }

    goto LABEL_38;
  }

  if (!v2)
  {
    goto LABEL_38;
  }

  v3 = a1;
  v4 = v2;
  v5 = [v4 arrivalTimeString];
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

  v10 = [v3 arrivalTimeString];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v9)
    {
      if (!v14)
      {
        goto LABEL_33;
      }

      if (v7 == v12 && v9 == v14)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v14)
    {
LABEL_36:

      goto LABEL_37;
    }
  }

  else if (v9)
  {
    goto LABEL_33;
  }

  v16 = [v4 timeValue];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [v3 timeValue];
  if (!v21)
  {
    if (!v20)
    {
      goto LABEL_42;
    }

LABEL_33:

LABEL_34:

    goto LABEL_38;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (!v20)
  {
    if (!v25)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  if (!v25)
  {
    goto LABEL_33;
  }

  if (v18 == v23 && v20 == v25)
  {

    goto LABEL_42;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v26 & 1) == 0)
  {
LABEL_37:

    goto LABEL_38;
  }

LABEL_42:
  v27 = [v4 distanceValue];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [v3 distanceValue];
  if (!v32)
  {
    if (!v31)
    {
      goto LABEL_53;
    }

LABEL_52:

    goto LABEL_34;
  }

  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (!v31)
  {

    if (!v36)
    {
      goto LABEL_2;
    }

    goto LABEL_34;
  }

  if (!v36)
  {
    goto LABEL_52;
  }

  if (v29 == v34 && v31 == v36)
  {

LABEL_53:

    goto LABEL_2;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_2;
  }

LABEL_38:
  sub_1004FDBE4();
  v38 = [objc_opt_self() defaultCenter];
  [v38 postNotificationName:@"NavContainerShouldUpdateBacklightSceneEnvironmentNotification" object:0];
}

void sub_10006DBC0()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000CE6B8(&qword_101924888);
  __chkstk_darwin(v3);
  v5 = &v66 - v4;
  v6 = sub_1000CE6B8(&qword_101924890);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - v7;
  v9 = sub_1000CE6B8(&qword_101924898);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v66 - v11;
  v13 = [v1 window];
  if (v13)
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;

      NavigationTray.Metrics.init(model:)();
      v16 = type metadata accessor for NavigationTray.Metrics();
      (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
      v17 = OBJC_IVAR____TtC4Maps14NavMetricsView_metricsView;
      swift_beginAccess();
      sub_1002761D8(v12, &v1[v17], &qword_101924898);
      swift_endAccess();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      NavigationTray.Accessories.init(model:tapHandler:)();
      v18 = type metadata accessor for NavigationTray.Accessories();
      (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
      v19 = OBJC_IVAR____TtC4Maps14NavMetricsView_accessoriesView;
      swift_beginAccess();
      sub_1002761D8(v8, &v1[v19], &qword_101924890);
      swift_endAccess();
      *v5 = static HorizontalAlignment.center.getter();
      *(v5 + 1) = 0;
      v5[16] = 0;
      v20 = sub_1000CE6B8(&qword_1019248A0);
      sub_1004FE280(v1, &v5[*(v20 + 44)]);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = &v5[*(v3 + 36)];
      *v22 = sub_1004FEF44;
      *(v22 + 1) = 0;
      *(v22 + 2) = sub_1004FEA24;
      *(v22 + 3) = v21;
      sub_1004FEA2C();
      v23 = AnyView.init<A>(_:)();
      v24 = v23;
      v25 = *&v1[OBJC_IVAR____TtC4Maps14NavMetricsView_metricsViewContainerVC];
      if (v25)
      {
        v67 = v23;
        v26 = v25;

        dispatch thunk of UIHostingController.rootView.setter();

LABEL_15:
        [v1 invalidateIntrinsicContentSize];

        return;
      }

      v27 = objc_allocWithZone(sub_1000CE6B8(&qword_101911790));
      v67 = v24;

      v28 = UIHostingController.init(rootView:)();
      static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
      dispatch thunk of UIHostingController.sizingOptions.setter();
      UIHostingController.safeAreaRegions.setter();

      v29 = v28;
      v30 = [v29 view];
      if (v30)
      {
        v31 = v30;
        [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

        v32 = [v29 view];
        if (v32)
        {
          v33 = v32;
          v34 = [objc_opt_self() clearColor];
          [v33 setBackgroundColor:v34];

          v35 = [v29 view];
          if (v35)
          {
            v37 = v35;
            LODWORD(v36) = 1148846080;
            [v35 setContentCompressionResistancePriority:1 forAxis:v36];

            v38 = [v29 view];
            if (v38)
            {
              v40 = v38;
              LODWORD(v39) = 1148846080;
              [v38 setContentHuggingPriority:1 forAxis:v39];

              [v15 addChildViewController:v29];
              v41 = [v29 view];
              if (v41)
              {
                v42 = v41;
                [v1 addSubview:v41];

                [v29 didMoveToParentViewController:v15];
                sub_1000CE6B8(&qword_101908400);
                v43 = swift_allocObject();
                *(v43 + 16) = xmmword_1011E5C00;
                v44 = [v29 view];
                if (v44)
                {
                  v45 = v44;
                  v46 = [v44 leadingAnchor];

                  v47 = [v1 leadingAnchor];
                  v48 = [v46 constraintEqualToAnchor:v47];

                  *(v43 + 32) = v48;
                  v49 = [v29 view];
                  if (v49)
                  {
                    v50 = v49;
                    v51 = [v49 trailingAnchor];

                    v52 = [v1 trailingAnchor];
                    v53 = [v51 constraintEqualToAnchor:v52];

                    *(v43 + 40) = v53;
                    v54 = [v29 view];
                    if (v54)
                    {
                      v55 = v54;
                      v56 = [v54 topAnchor];

                      v57 = [v1 topAnchor];
                      v58 = [v56 constraintEqualToAnchor:v57];

                      *(v43 + 48) = v58;
                      v59 = [v29 view];

                      if (v59)
                      {
                        v60 = objc_opt_self();
                        v61 = [v59 bottomAnchor];

                        v62 = [v1 bottomAnchor];
                        v63 = [v61 constraintEqualToAnchor:v62];

                        *(v43 + 56) = v63;
                        sub_100014C84(0, &qword_10190B720);
                        isa = Array._bridgeToObjectiveC()().super.isa;

                        [v60 activateConstraints:isa];

                        v65 = v29;
                        sub_1004FD1C0(v29);

                        goto LABEL_15;
                      }

LABEL_25:
                      __break(1u);
                      return;
                    }

LABEL_24:
                    __break(1u);
                    goto LABEL_25;
                  }

LABEL_23:
                  __break(1u);
                  goto LABEL_24;
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
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_19;
    }
  }
}

uint64_t sub_10006E434()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

SEL *sub_10006F5C4(SEL *result, SEL *a2, SEL *a3, SEL *a4)
{
  if (*(v4 + OBJC_IVAR____TtC4Maps14NavMetricsView_eta))
  {
    result = [*(v4 + OBJC_IVAR____TtC4Maps14NavMetricsView_eta) *a4];
    if (result)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v5 = result;
  v6 = a2;
  v7 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = [Strong lastGuidanceETA];
    swift_unknownObjectRelease();
    if (v9)
    {

      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = [v10 lastGuidanceETA];
        swift_unknownObjectRelease();
        if (v11)
        {
          v12 = [v11 *v6];

          if (v12)
          {
            goto LABEL_13;
          }
        }
      }

      result = [objc_opt_self() *v7];
      if (!result)
      {
        __break(1u);
        goto LABEL_11;
      }

LABEL_12:
      v12 = result;
LABEL_13:
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v13;
    }
  }

LABEL_11:
  result = [objc_opt_self() *v5];
  if (result)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_10006F7C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_eta);
  if (v1)
  {
    result = [v1 arrivalTimeString];
    if (result)
    {
      goto LABEL_13;
    }

    result = [objc_opt_self() invalidValueString];
    if (result)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = [Strong lastGuidanceETA];
    swift_unknownObjectRelease();
    if (v4)
    {

      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = [v5 lastGuidanceETA];
        swift_unknownObjectRelease();
        if (v6)
        {
          v7 = [v6 arrivalTimeString];

          if (v7)
          {
            goto LABEL_14;
          }
        }
      }

      result = [objc_opt_self() invalidValueString];
      if (result)
      {
LABEL_13:
        v7 = result;
LABEL_14:
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v8;
      }

      __break(1u);
    }
  }

  result = [objc_opt_self() invalidValueString];
  if (result)
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id sub_10006F9A4()
{
  if (qword_10195E868 != -1)
  {
    dispatch_once(&qword_10195E868, &stru_10163B428);
  }

  v1 = qword_10195E860;

  return v1;
}