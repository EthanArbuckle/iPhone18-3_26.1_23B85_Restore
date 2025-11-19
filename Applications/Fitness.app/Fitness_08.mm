unint64_t sub_10014213C()
{
  result = qword_1008DB698;
  if (!qword_1008DB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DB698);
  }

  return result;
}

uint64_t sub_1001423D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008DB8A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100142440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10013EADC(a1, v4, v5, v6);
}

uint64_t sub_1001425C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001425E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_100142638(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TrendsCoachingAverageInformation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TrendsCoachingAverageInformation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100142F18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_10013EADC(a1, v4, v5, v6);
}

unint64_t sub_100142FCC()
{
  result = qword_1008DBA60;
  if (!qword_1008DBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DBA60);
  }

  return result;
}

Swift::Int sub_1001430D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10014311C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100143188()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100143208()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100143280(double a1, double a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  *&v6 = a1;
  *(&v6 + 1) = a2;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = a1;
  *(v2 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_issueLocation) = v6;
  return result;
}

uint64_t sub_10014336C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001433F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100143460()
{
  if (!*(v0 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_trackId))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v4 == 2)
    {
      goto LABEL_8;
    }

    if (v4)
    {
      goto LABEL_8;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10000FCBC();
    v1 = StringProtocol.isEmptyOrWhiteSpace.getter();

    if (v1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v2 = 1;
    return v2 & 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 != 2 && (v4 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v4;
  return v2 & 1;
}

uint64_t sub_10014362C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5 != 2 && (v5 & 1) == 0)
  {
    return 4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4)
  {
    return 5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3 != 2 && (v3 & 1) == 0)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void sub_1001437D0()
{
  v1 = sub_10014362C();
  if ((v2 & 1) == 0)
  {
    v3 = v1;
    if (sub_100143460())
    {
      v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_issueLocation);
      v5 = *(v0 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_issueLocation + 8);
      v6 = *(v0 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_trackId);
      if (v6)
      {
        v20 = [v6 longLongValue];
        LOBYTE(v21) = 0;
        sub_100140278(&qword_1008DBF08);
        Optional.description.getter();
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v9 = 0;
      if (v20 != 2 && (v20 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v9 = v21;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v10 = 0;
      if (v20 != 2 && (v20 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v10 = [objc_allocWithZone(NSNumber) initWithInteger:v20];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v20 == 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v11 = 0;
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v11 = v21;
        if (!v8)
        {
LABEL_14:
          v12 = 0;
          if (!v9)
          {
            goto LABEL_15;
          }

          goto LABEL_19;
        }
      }

      v12 = String._bridgeToObjectiveC()();

      if (!v9)
      {
LABEL_15:
        v13 = 0;
        if (!v11)
        {
LABEL_16:
          v14 = 0;
          goto LABEL_21;
        }

LABEL_20:
        v14 = String._bridgeToObjectiveC()();

LABEL_21:
        v15 = [objc_allocWithZone(MKFitnessRAPReport) initForRunningTrackIssue:v3 trackCoordinate:v12 trackFeatureID:v13 nameOfTrack:v10 numberOfLanes:v14 comment:{v4, v5}];

        v16 = [objc_opt_self() sharedService];
        if (v16)
        {
          v17 = v16;
          if ([v16 feedbackTicketForFitnessRAPReport:v15])
          {
            v24 = sub_100143CFC;
            v25 = 0;
            v20 = _NSConcreteStackBlock;
            v21 = 1107296256;
            v22 = sub_100143F8C;
            v23 = &unk_100847330;
            v18 = _Block_copy(&v20);
            v24 = ASFriendListDisplayMode.id.getter;
            v25 = 0;
            v20 = _NSConcreteStackBlock;
            v21 = 1107296256;
            v22 = sub_10043B93C;
            v23 = &unk_100847358;
            v19 = _Block_copy(&v20);
            [swift_unknownObjectRetain() submitWithHandler:v18 networkActivity:v19];

            swift_unknownObjectRelease_n();
            _Block_release(v19);
            _Block_release(v18);
          }

          else
          {
          }
        }

        else
        {
        }

        return;
      }

LABEL_19:
      v13 = String._bridgeToObjectiveC()();

      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }
}

uint64_t sub_100143CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  if (a4)
  {
    swift_errorRetain();
    static WOLog.trackRunning.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = Error.errorDescription.getter();
      v18 = sub_10000AFDC(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Received an error from MapKit while submitting report: %s", v14, 0xCu);
      sub_100005A40(v15);
    }

    else
    {
    }

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    static WOLog.trackRunning.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Successfully submitted report to MapKit", v21, 2u);
    }

    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t sub_100143F8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {

    v8 = a2;
    v9 = v5;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {

    v12 = a2;
    v11 = 0xF000000000000000;
  }

  v13 = a4;
  v7(a2, v5, v11, a4);

  sub_100145150(v5, v11);
}

uint64_t sub_100144054()
{
  v1 = OBJC_IVAR____TtC10FitnessApp10TrackIssue_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC10FitnessApp10TrackIssue__trackWorkoutIssueType;
  v4 = sub_100140278(&qword_1008DBF00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10FitnessApp10TrackIssue__nonTrackWorkoutIssueType;
  v6 = sub_100140278(&qword_1008DBEF8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC10FitnessApp10TrackIssue__trackName;
  v8 = sub_100140278(&qword_1008DBEF0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtC10FitnessApp10TrackIssue__issueRegion;
  v11 = sub_100140278(&qword_1008DBF18);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC10FitnessApp10TrackIssue__laneCount;
  v13 = sub_100140278(&qword_1008DBEE8);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v9(v0 + OBJC_IVAR____TtC10FitnessApp10TrackIssue__comment, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrackIssue()
{
  result = qword_1008DBBF8;
  if (!qword_1008DBBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100144314()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100144538(319, &qword_1008DBC08, &qword_1008DBC10);
    if (v1 <= 0x3F)
    {
      sub_100144538(319, &qword_1008DBC18, &qword_1008DBC20);
      if (v2 <= 0x3F)
      {
        sub_1001445E4(319, &qword_1008DBC28);
        if (v3 <= 0x3F)
        {
          sub_10014458C();
          if (v4 <= 0x3F)
          {
            sub_1001445E4(319, &qword_1008DBC38);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100144538(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_100141EEC(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10014458C()
{
  if (!qword_1008DBC30)
  {
    type metadata accessor for MKCoordinateRegion(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DBC30);
    }
  }
}

void sub_1001445E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_100144654()
{
  result = qword_1008DBED8;
  if (!qword_1008DBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DBED8);
  }

  return result;
}

unint64_t sub_1001446AC()
{
  result = qword_1008DBEE0;
  if (!qword_1008DBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DBEE0);
  }

  return result;
}

uint64_t sub_100144700@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10FitnessApp10TrackIssue_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10014477C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TrackIssue();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1001447C0()
{
  result = qword_1008E4E10;
  if (!qword_1008E4E10)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4E10);
  }

  return result;
}

double sub_100144818@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001448EC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10014496C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001449F4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100144A84()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100144B40@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100144BD0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100144C40(void *a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v48 = a1;
  v6 = sub_100140278(&qword_1008DBEE8);
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v45 = &v42 - v7;
  v44 = sub_100140278(&qword_1008DBEF0);
  v8 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v42 - v9;
  v43 = sub_100140278(&qword_1008DBEF8);
  v11 = *(v43 - 8);
  __chkstk_darwin(v43);
  v13 = &v42 - v12;
  v14 = sub_100140278(&qword_1008DBF00);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - v16;
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_trackId) = 0;
  v18 = OBJC_IVAR____TtC10FitnessApp10TrackIssue__trackWorkoutIssueType;
  LOBYTE(v49) = 2;
  sub_100140278(&qword_1008DBC10);
  Published.init(initialValue:)();
  (*(v15 + 32))(v3 + v18, v17, v14);
  v19 = OBJC_IVAR____TtC10FitnessApp10TrackIssue__nonTrackWorkoutIssueType;
  LOBYTE(v49) = 2;
  sub_100140278(&qword_1008DBC20);
  Published.init(initialValue:)();
  (*(v11 + 32))(v3 + v19, v13, v43);
  v20 = OBJC_IVAR____TtC10FitnessApp10TrackIssue__trackName;
  v49 = 0;
  v50 = 0xE000000000000000;
  Published.init(initialValue:)();
  v21 = *(v8 + 32);
  v22 = v44;
  v21(v3 + v20, v10, v44);
  v23 = OBJC_IVAR____TtC10FitnessApp10TrackIssue__laneCount;
  v49 = 8;
  v24 = v45;
  Published.init(initialValue:)();
  (*(v46 + 32))(v3 + v23, v24, v47);
  v25 = OBJC_IVAR____TtC10FitnessApp10TrackIssue__comment;
  v49 = 0;
  v50 = 0xE000000000000000;
  Published.init(initialValue:)();
  v21(v3 + v25, v10, v22);
  v26 = (v3 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_placeholderComment);
  v27 = [objc_opt_self() mainBundle];
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 localizedStringForKey:v28 value:0 table:0];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *v26 = v30;
  v26[1] = v32;
  v33 = (v3 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_issueLocation);
  *v33 = a2;
  v33[1] = a3;
  v53.latitude = a2;
  v53.longitude = a3;
  v54 = MKCoordinateRegionMakeWithDistance(v53, 500.0, 500.0);
  latitude = v54.center.latitude;
  longitude = v54.center.longitude;
  latitudeDelta = v54.span.latitudeDelta;
  longitudeDelta = v54.span.longitudeDelta;
  swift_beginAccess();
  v49 = *&latitude;
  v50 = *&longitude;
  v51 = latitudeDelta;
  v52 = longitudeDelta;
  type metadata accessor for MKCoordinateRegion(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v38 = *(v3 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_trackId);
  v39 = v48;
  *(v3 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_trackId) = v48;
  v40 = v39;

  return v3;
}

uint64_t sub_100145150(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000AF88(a1, a2);
  }

  return a1;
}

uint64_t sub_100145188@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for ScrollViewProxy();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008DBFF8);
  __chkstk_darwin(v8 - 8);
  v10 = v14 - v9;
  v11 = OBJC_IVAR____TtC10FitnessApp22ScrollToTopCoordinator_scrollViewProxy;
  swift_beginAccess();
  sub_1001453F0(a1 + v11, v10);
  v12 = (*(v5 + 48))(v10, 1, v4);
  if (v12)
  {
    result = sub_100145460(v10);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_100145460(v10);
    v14[1] = 0xD000000000000011;
    v14[2] = 0x8000000100747CB0;
    static UnitPoint.top.getter();
    ScrollViewProxy.scrollTo<A>(_:anchor:)();
    result = (*(v5 + 8))(v7, v4);
  }

  *a2 = v12 != 0;
  return result;
}

uint64_t sub_100145384()
{
  sub_100145460(v0 + OBJC_IVAR____TtC10FitnessApp22ScrollToTopCoordinator_scrollViewProxy);

  return swift_deallocClassInstance();
}

uint64_t sub_1001453F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DBFF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100145460(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DBFF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1001454C8()
{
  v1 = v0;
  v22 = type metadata accessor for DateInterval();
  v2 = *(v22 - 8);
  *&v3 = __chkstk_darwin(v22).n128_u64[0];
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 downhillRunEvents];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_10014573C();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    v20 = v8 & 0xFFFFFFFFFFFFFF8;
    v21 = v8 & 0xC000000000000001;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v21)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v20 + 16))
        {
          goto LABEL_18;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = [v12 dateInterval];
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1001A1B60(0, v11[2] + 1, 1, v11);
      }

      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        v11 = sub_1001A1B60(v16 > 1, v17 + 1, 1, v11);
      }

      v11[2] = v17 + 1;
      (*(v2 + 32))(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17, v5, v22);
      ++v10;
      if (v14 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_21:

  return v11;
}

unint64_t sub_10014573C()
{
  result = qword_1008DC000;
  if (!qword_1008DC000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008DC000);
  }

  return result;
}

uint64_t sub_100145788(char a1)
{
  if (a1 == 2)
  {
    v1 = [objc_opt_self() mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 localizedStringForKey:v6 value:0 table:v2];
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100145A18(unsigned __int8 a1)
{
  v1 = 0xD000000000000019;
  v2 = "ActivityTileSection.History";
  v3 = a1;
  v4 = "ion.TrendsMetrics";
  v5 = 0xD000000000000024;
  v6 = "ActivityTileSection.Awards";
  v7 = 0xD000000000000021;
  if (a1 != 4)
  {
    v7 = 0xD00000000000001ALL;
    v6 = "ACTIVITY_SECTION";
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "ActivityTileSection.TrainerTips";
  v9 = 0xD00000000000001BLL;
  if (a1 != 1)
  {
    v9 = 0xD00000000000001FLL;
    v8 = "ion.TrendsOnBoarding";
  }

  if (a1)
  {
    v1 = v9;
    v2 = v8;
  }

  if (a1 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v5;
  }

  if (v3 <= 2)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  v12 = v11 | 0x8000000000000000;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 0x7265646165482ELL;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  return 0;
}

uint64_t sub_100145B18(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000019;
  v3 = "ActivityTileSection.History";
  v4 = "ion.TrendsMetrics";
  v5 = 0xD000000000000024;
  v6 = "ActivityTileSection.Awards";
  v7 = 0xD000000000000021;
  if (a2 != 4)
  {
    v7 = 0xD00000000000001ALL;
    v6 = "ACTIVITY_SECTION";
  }

  if (a2 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "ActivityTileSection.TrainerTips";
  v9 = 0xD00000000000001BLL;
  if (a2 != 1)
  {
    v9 = 0xD00000000000001FLL;
    v8 = "ion.TrendsOnBoarding";
  }

  if (a2)
  {
    v2 = v9;
    v3 = v8;
  }

  if (a2 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  v12 = v11 | 0x8000000000000000;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 0x2E6C6C65432ELL;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  return 0;
}

uint64_t sub_100145C50()
{
  sub_100140278(&qword_1008DC008);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006D4140;
  *(v0 + 32) = type metadata accessor for TodayActivityTile();
  *(v0 + 40) = &off_100849EE0;
  *(v0 + 48) = type metadata accessor for WorkoutsListTableViewCell();
  *(v0 + 56) = &off_100863468;
  *(v0 + 64) = type metadata accessor for TrendsOnBoardingActivityTile();
  *(v0 + 72) = &off_100850B48;
  *(v0 + 80) = type metadata accessor for TrendPairTableViewCell(0);
  *(v0 + 88) = &off_100864818;
  *(v0 + 96) = type metadata accessor for AwardsActivityTile();
  *(v0 + 104) = &off_100853778;
  *(v0 + 112) = type metadata accessor for MindfulnessSessionListTableViewCell();
  *(v0 + 120) = &off_10084D0F8;
  *(v0 + 128) = type metadata accessor for StackListTableViewCell();
  *(v0 + 136) = &off_100861978;
  *(v0 + 144) = type metadata accessor for CatalogTipActivityTile();
  *(v0 + 152) = &off_100852BF0;
  return v0;
}

unint64_t sub_100145D40(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

__n128 sub_100145D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_100145D94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_100145DDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100145E6C(void *a1, void *a2, void *a3, void **a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t (*a11)(uint64_t a1), void *a12, void *a13, void *a14, void *a15)
{
  type metadata accessor for ActivitySharingFriendDetailDataProvider();
  swift_allocObject();
  v36 = a2;
  v22 = a3;

  v33 = a5;
  v31 = a6;
  v23 = a7;
  v30 = a1;
  v24 = a8;
  v29 = a9;
  v32 = a10;

  v35 = a12;
  v37 = a13;
  v38 = a14;
  v25 = a15;
  v26 = sub_1004BB1A8(v36, v22, a4, v33, v31, v23, v30, v24, v29, v32, a11, v35, v37, v38, v25);

  v27 = objc_allocWithZone(type metadata accessor for ActivitySharingFriendDetailViewController());
  return sub_1003B75EC(v26, v25);
}

void sub_100146080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a10;
  *(v16 + 24) = a11;
  v17 = objc_allocWithZone(CHFriendInboxTableViewController);
  aBlock[4] = sub_10014A124;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10014977C;
  aBlock[3] = &unk_100847558;
  v18 = _Block_copy(aBlock);

  v19 = [v17 initWithFriendListManager:a1 friendManager:a2 achievementsDataProvider:a3 workoutsDataProvider:a4 workoutFormattingManager:a5 formattingManager:a6 badgeImageFactory:a7 healthStore:a8 fitnessAppContext:a9 makeFriendDetailViewControllerBlock:v18];
  _Block_release(v18);
  if (!v19)
  {
    __break(1u);
  }
}

uint64_t sub_1001461D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_100146494(v1, a1);
  v4 = *(v1 + 184);
  type metadata accessor for ActivitySharingFriendDetailAlertCoordinator();
  sub_10014A074(&qword_1008EB690, type metadata accessor for ActivitySharingFriendDetailAlertCoordinator);
  v5 = static ObservableObject.environmentStore.getter();
  v6 = (a1 + *(sub_100140278(&qword_1008DC010) + 36));
  *v6 = v5;
  v6[1] = v4;
  v7 = v2[18];
  type metadata accessor for ActivitySharingNavigationCoordinator();
  sub_10014A074(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);

  v8 = static ObservableObject.environmentStore.getter();
  v9 = (a1 + *(sub_100140278(&qword_1008DC020) + 36));
  *v9 = v8;
  v9[1] = v7;
  v10 = v2[19];
  type metadata accessor for ActivitySharingHighlightDataProvider();
  sub_10014A074(&qword_1008DC028, type metadata accessor for ActivitySharingHighlightDataProvider);

  v11 = static ObservableObject.environmentStore.getter();
  v12 = (a1 + *(sub_100140278(&qword_1008DC030) + 36));
  *v12 = v11;
  v12[1] = v10;
  v13 = v2[21];
  type metadata accessor for ActivitySharingFriendListDataProvider();
  sub_10014A074(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);

  v14 = static ObservableObject.environmentStore.getter();
  v15 = (a1 + *(sub_100140278(&qword_1008DC040) + 36));
  *v15 = v14;
  v15[1] = v13;
  v16 = v2[11];
  type metadata accessor for ReachableContactsDataSource();
  sub_10014A074(&qword_1008DC048, type metadata accessor for ReachableContactsDataSource);

  v17 = static ObservableObject.environmentStore.getter();
  v18 = (a1 + *(sub_100140278(&qword_1008DC050) + 36));
  *v18 = v17;
  v18[1] = v16;
}

uint64_t sub_100146494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = sub_100140278(&qword_1008DC058);
  __chkstk_darwin(v29);
  v4 = &v26 - v3;
  v30 = sub_100140278(&qword_1008DC060);
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v26 - v5;
  v28 = sub_100140278(&qword_1008DC068);
  __chkstk_darwin(v28);
  v8 = &v26 - v7;
  v9 = sub_100140278(&qword_1008DC070);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v34 = *(a1 + 192);
  v13 = *(&v34 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  static Published.subscript.getter();

  if (v32)
  {
    sub_10000EA04(&v34, &qword_1008DC0E8);
    sub_100146990(a1, v4);
    v15 = sub_10014A510(&qword_1008DC088, &qword_1008DC058, &unk_1006D42D0, sub_100149954);
    v16 = v29;
    View.toolbar(_:for:)();
    sub_10000EA04(v4, &qword_1008DC058);
    v17 = v27;
    v18 = v30;
    (*(v27 + 16))(v8, v6, v30);
    swift_storeEnumTagMultiPayload();
    v19 = sub_100149900();
    v32 = &type metadata for FriendSetupView;
    v33 = v19;
    swift_getOpaqueTypeConformance2();
    v32 = v16;
    v33 = v15;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v17 + 8))(v6, v18);
  }

  else
  {
    type metadata accessor for FriendsSetupCoordinator();
    sub_10014A074(&qword_1008DC078, type metadata accessor for FriendsSetupCoordinator);
    v21 = ObservedObject.init(wrappedValue:)();
    v23 = v22;
    v32 = v21;
    v33 = v22;
    v24 = sub_100149900();
    View.toolbar(_:for:)();

    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    v32 = &type metadata for FriendSetupView;
    v33 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = sub_10014A510(&qword_1008DC088, &qword_1008DC058, &unk_1006D42D0, sub_100149954);
    v32 = v29;
    v33 = v25;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100146990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100140278(&qword_1008DC0F0);
  __chkstk_darwin(v3);
  v5 = &v29 - v4;
  v6 = sub_100140278(&qword_1008DC0E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*&v30[0])
  {

    if (sub_100193188())
    {
      v10 = swift_allocObject();
      v11 = *(a1 + 176);
      *(v10 + 176) = *(a1 + 160);
      *(v10 + 192) = v11;
      *(v10 + 208) = *(a1 + 192);
      *(v10 + 224) = *(a1 + 208);
      v12 = *(a1 + 112);
      *(v10 + 112) = *(a1 + 96);
      *(v10 + 128) = v12;
      v13 = *(a1 + 144);
      *(v10 + 144) = *(a1 + 128);
      *(v10 + 160) = v13;
      v14 = *(a1 + 48);
      *(v10 + 48) = *(a1 + 32);
      *(v10 + 64) = v14;
      v15 = *(a1 + 80);
      *(v10 + 80) = *(a1 + 64);
      *(v10 + 96) = v15;
      v16 = *(a1 + 16);
      *(v10 + 16) = *a1;
      *(v10 + 32) = v16;
      v41 = 0;
      v32 = sub_100149BA4;
      v33 = v10;
      HIBYTE(v40) = 0;
      sub_1000262F0(a1, v30);
    }

    else
    {
      v18 = *(a1 + 72);
      type metadata accessor for ReachableContactsDataSource();
      sub_10014A074(&qword_1008DC048, type metadata accessor for ReachableContactsDataSource);

      v19 = EnvironmentObject.init()();
      v21 = v20;
      v22 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      LOBYTE(v30[0]) = 0;
      v41 = 1;
      v32 = v18;
      v33 = v19;
      v34 = v21;
      v35 = v22;
      v36 = v23;
      v37 = v24;
      v38 = v25;
      v39 = v26;
      v40 = 256;
    }

    sub_100140278(&qword_1008DC0B8);
    sub_100140278(&qword_1008DC0C8);
    sub_10014A6B0(&qword_1008DC0B0, &qword_1008DC0B8);
    sub_100149AC4();
    _ConditionalContent<>.init(storage:)();
    v27 = v30[3];
    *(v5 + 2) = v30[2];
    *(v5 + 3) = v27;
    *(v5 + 32) = v31;
    v28 = v30[1];
    *v5 = v30[0];
    *(v5 + 1) = v28;
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008DC0A8);
    sub_100149A0C();
    sub_10014A6B0(&qword_1008DC0D8, &qword_1008DC0E0);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    ProgressView<>.init<>()();
    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008DC0A8);
    sub_100149A0C();
    sub_10014A6B0(&qword_1008DC0D8, &qword_1008DC0E0);
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_100146E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v46 = a3;
  v48 = type metadata accessor for PPTTestCase.Name();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ScrollViewProxy();
  v43 = *(v44 - 8);
  v49 = *(v43 + 64);
  __chkstk_darwin(v44);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ContentMarginPlacement();
  v39 = *(v41 - 1);
  __chkstk_darwin(v41);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008DC0F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v37 = sub_100140278(&qword_1008DC100);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v35 - v12;
  v40 = sub_100140278(&qword_1008DC108);
  __chkstk_darwin(v40);
  v36 = &v35 - v14;
  v51 = a2;
  static Axis.Set.vertical.getter();
  sub_100140278(&qword_1008DC110);
  sub_10014A6B0(&qword_1008DC118, &qword_1008DC110);
  ScrollView.init(_:showsIndicators:content:)();
  v15 = sub_10014A6B0(&qword_1008DC120, &qword_1008DC0F8);
  View.scrollContentBackground(_:)();
  (*(v9 + 8))(v11, v8);
  static Edge.Set.all.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v52[0] = v8;
  v52[1] = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v36;
  v17 = v37;
  View.contentMargins(_:_:for:)();
  (*(v39 + 8))(v7, v41);
  (*(v38 + 8))(v13, v17);
  v18 = v43;
  v41 = *(v43 + 16);
  v19 = v42;
  v20 = v44;
  v41(v42, v50, v44);
  v21 = *(v18 + 80);
  v22 = v18;
  v23 = swift_allocObject();
  v24 = *(a2 + 176);
  *(v23 + 176) = *(a2 + 160);
  *(v23 + 192) = v24;
  *(v23 + 208) = *(a2 + 192);
  *(v23 + 224) = *(a2 + 208);
  v25 = *(a2 + 112);
  *(v23 + 112) = *(a2 + 96);
  *(v23 + 128) = v25;
  v26 = *(a2 + 144);
  *(v23 + 144) = *(a2 + 128);
  *(v23 + 160) = v26;
  v27 = *(a2 + 48);
  *(v23 + 48) = *(a2 + 32);
  *(v23 + 64) = v27;
  v28 = *(a2 + 80);
  *(v23 + 80) = *(a2 + 64);
  *(v23 + 96) = v28;
  v29 = *(a2 + 16);
  *(v23 + 16) = *a2;
  *(v23 + 32) = v29;
  v30 = *(v22 + 32);
  v30(v23 + ((v21 + 232) & ~v21), v19, v20);
  v31 = (v16 + *(v40 + 36));
  *v31 = sub_100149BB4;
  v31[1] = v23;
  v31[2] = 0;
  v31[3] = 0;
  sub_1000262F0(a2, v52);
  v32 = v45;
  PPTTestCase.Name.init(_:)();
  v41(v19, v50, v20);
  v33 = swift_allocObject();
  v30(v33 + ((v21 + 16) & ~v21), v19, v20);
  sub_100149C88();
  View.onTest(_:handler:)();

  (*(v47 + 8))(v32, v48);
  return sub_10000EA04(v16, &qword_1008DC108);
}

double sub_100147538@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v26 = 0;
  sub_100147718(a1, &v13);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v39[8] = v21;
  v39[9] = v22;
  v39[10] = v23;
  v39[4] = v17;
  v39[5] = v18;
  v39[6] = v19;
  v39[7] = v20;
  v39[0] = v13;
  v39[1] = v14;
  v38 = v24;
  v40 = v24;
  v39[2] = v15;
  v39[3] = v16;
  sub_100149E38(&v27, v12);
  sub_10000EA04(v39, &qword_1008DC130);
  *(&v25[8] + 7) = v35;
  *(&v25[9] + 7) = v36;
  *(&v25[10] + 7) = v37;
  *(&v25[11] + 7) = v38;
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(&v25[6] + 7) = v33;
  *(&v25[7] + 7) = v34;
  *(v25 + 7) = v27;
  *(&v25[1] + 7) = v28;
  *(&v25[2] + 7) = v29;
  *(&v25[3] + 7) = v30;
  v5 = v25[9];
  *(a2 + 145) = v25[8];
  *(a2 + 161) = v5;
  *(a2 + 177) = v25[10];
  *(a2 + 192) = *(&v25[10] + 15);
  v6 = v25[5];
  *(a2 + 81) = v25[4];
  *(a2 + 97) = v6;
  v7 = v25[7];
  *(a2 + 113) = v25[6];
  *(a2 + 129) = v7;
  v8 = v25[1];
  *(a2 + 17) = v25[0];
  *(a2 + 33) = v8;
  result = *&v25[2];
  v10 = v25[3];
  *(a2 + 49) = v25[2];
  v11 = v26;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 65) = v10;
  return result;
}

uint64_t sub_100147718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v39 && (, , v3 = *(v39 + 16), , v3))
  {
    v4 = *(a1 + 56);
    type metadata accessor for ActivitySharingFriendListDataProvider();
    sub_10014A074(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);
    v5 = v4;
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v38 = v41;
    v36 = v39;

    v34 = v40;

    v33 = v5;
    v6 = v5;
    v37 = sub_100147E00;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v39)
  {

    v7 = *(a1 + 56);
    type metadata accessor for ActivitySharingFriendListDataProvider();
    sub_10014A074(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);
    v8 = v7;
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v9 = v39;
    v10 = v40;
    v32 = v41;
    v11 = swift_allocObject();
    v12 = *(a1 + 176);
    *(v11 + 176) = *(a1 + 160);
    *(v11 + 192) = v12;
    *(v11 + 208) = *(a1 + 192);
    *(v11 + 224) = *(a1 + 208);
    v13 = *(a1 + 112);
    *(v11 + 112) = *(a1 + 96);
    *(v11 + 128) = v13;
    v14 = *(a1 + 144);
    *(v11 + 144) = *(a1 + 128);
    *(v11 + 160) = v14;
    v15 = *(a1 + 48);
    *(v11 + 48) = *(a1 + 32);
    *(v11 + 64) = v15;
    v16 = *(a1 + 80);
    *(v11 + 80) = *(a1 + 64);
    *(v11 + 96) = v16;
    v17 = *(a1 + 16);
    *(v11 + 16) = *a1;
    *(v11 + 32) = v17;
    v35 = v8;
    v18 = v8;
    sub_1000262F0(a1, &v39);
    v30 = v9;

    v29 = v10;

    v31 = sub_100149F6C;
    v28 = 1;
  }

  else
  {
    v35 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v11 = 0;
  }

  v19 = *(a1 + 56);
  type metadata accessor for ActivitySharingFriendListDataProvider();
  sub_10014A074(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);
  v20 = v19;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v22 = v39;
  v21 = v40;
  v27 = v41;

  v24 = v20;
  sub_100149EA8(v33);
  sub_100149EA8(v35);
  v25 = v24;

  sub_100149F0C(v35);
  sub_100149F0C(v33);

  *a2 = 0xD000000000000011;
  *(a2 + 8) = 0x8000000100747CB0;
  *(a2 + 16) = v33;
  *(a2 + 24) = 0;
  *(a2 + 32) = v36;
  *(a2 + 40) = v34;
  *(a2 + 48) = v38;
  *(a2 + 56) = v37;
  *(a2 + 64) = 0;
  *(a2 + 72) = v35;
  *(a2 + 80) = v28;
  *(a2 + 88) = v30;
  *(a2 + 96) = v29;
  *(a2 + 104) = v32;
  *(a2 + 112) = v31;
  *(a2 + 120) = v11;
  *(a2 + 128) = v25;
  *(a2 + 136) = 2;
  *(a2 + 144) = v22;
  *(a2 + 152) = v21;
  *(a2 + 160) = v27;
  *(a2 + 168) = sub_100147FF8;
  *(a2 + 176) = 0;

  sub_100149F0C(v35);
  sub_100149F0C(v33);
}

uint64_t sub_100147D08@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100147D88()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_100192D80();
}

uint64_t sub_100147E00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivitySharingFriendListDataProvider();
  sub_10014A074(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for ActivitySharingNavigationCoordinator();
  sub_10014A074(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  static Edge.Set.horizontal.getter();
  sub_100140278(&qword_1008DC138);
  result = SafeAreaPaddingModifier.init(edges:insets:)();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  return result;
}

uint64_t sub_100147F28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 40) + OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider);
  type metadata accessor for ActivitySharingHighlightDataProvider();
  sub_10014A074(&qword_1008DC028, type metadata accessor for ActivitySharingHighlightDataProvider);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result = EnvironmentObject.init()();
  *a2 = result;
  a2[1] = v12;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  return result;
}

uint64_t sub_100147FF8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivitySharingFriendListDataProvider();
  sub_10014A074(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  static Edge.Set.horizontal.getter();
  sub_100140278(&qword_1008DC140);
  result = SafeAreaPaddingModifier.init(edges:insets:)();
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001480C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DBFF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = *(a1 + 208);
  v8 = type metadata accessor for ScrollViewProxy();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a2, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = OBJC_IVAR____TtC10FitnessApp22ScrollToTopCoordinator_scrollViewProxy;
  swift_beginAccess();
  sub_100149DC8(v6, v7 + v10);
  return swift_endAccess();
}

uint64_t sub_1001481F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PPTTestCase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.default.getter();
  v9 = HKLogActivity;
  (*(v5 + 16))(v7, a1, v4);
  if (os_log_type_enabled(v9, v8))
  {
    v19 = v9;
    v10 = swift_slowAlloc();
    v20 = a2;
    v11 = v10;
    v21 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10000AFDC(0xD000000000000016, 0x80000001006D4220, &v21);
    *(v11 + 12) = 2080;
    PPTTestCase.parameters.getter();
    v12 = Dictionary.description.getter();
    v14 = v13;

    (*(v5 + 8))(v7, v4);
    v15 = sub_10000AFDC(v12, v14, &v21);

    *(v11 + 14) = v15;
    v16 = v19;
    _os_log_impl(&_mh_execute_header, v19, v8, "%s Running scroll test with options %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  return PPTTestCase.performScrollTest(_:)();
}

void sub_10014846C()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 144);
  if (v2 && ((v3 = [v2 viewControllers], sub_10014A0BC(), v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v3, v4 >> 62) ? (v5 = _CocoaArrayWrapper.endIndex.getter()) : (v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v5 >= 2))
  {
    v6 = [*(v1 + 144) popToRootViewControllerAnimated:1];
  }

  else
  {
    static Animation.default.getter();
    sub_100140278(&unk_1008E4DC0);
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_1001485A4(char *a1)
{
  v2 = type metadata accessor for UUID();
  v144 = *(v2 - 8);
  v145 = v2;
  __chkstk_darwin(v2);
  v4 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v146 = &v136 - v6;
  v7 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v7 - 8);
  v149 = (&v136 - v8);
  v9 = type metadata accessor for Date();
  isa = v9[-1].isa;
  __chkstk_darwin(v9);
  v150 = (&v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v147 = &v136 - v13;
  __chkstk_darwin(v14);
  v16 = &v136 - v15;
  v17 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v17 - 8);
  v148 = &v136 - v18;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v141 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v136 - v23;
  v25 = static os_log_type_t.default.getter();
  v26 = HKLogActivity;
  v138 = *(v20 + 16);
  v139 = v20 + 16;
  v138(v24, a1, v19);
  v27 = os_log_type_enabled(v26, v25);
  v151 = a1;
  v152 = isa;
  v137 = v4;
  v142 = v20;
  v143 = v19;
  if (v27)
  {
    v136 = v26;
    v28 = swift_slowAlloc();
    v154[0] = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_10000AFDC(0xD000000000000016, 0x80000001006D4220, v154);
    *(v28 + 12) = 2080;
    sub_10014A074(&unk_1008F5500, &type metadata accessor for URL);
    v29 = v9;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v16;
    v33 = v32;
    v140 = *(v20 + 8);
    v140(v24, v19);
    v34 = v30;
    v9 = v29;
    v35 = sub_10000AFDC(v34, v33, v154);
    v16 = v31;

    *(v28 + 14) = v35;
    v36 = v136;
    _os_log_impl(&_mh_execute_header, v136, v25, "%s handling URL %s", v28, 0x16u);
    swift_arrayDestroy();
    a1 = v151;
    isa = v152;
  }

  else
  {
    v140 = *(v20 + 8);
    v140(v24, v19);
  }

  v37 = v153;
  v38 = v153[18].isa;

  v39 = v37[23].isa;
  v40 = type metadata accessor for TaskPriority();
  v41 = v148;
  (*(*(v40 - 8) + 56))(v148, 1, 1, v40);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v39;

  sub_10026E198(0, 0, v41, &unk_1006D4498, v42);

  URL._bridgeToObjectiveC()(v43);
  v45 = v44;
  v46 = ASDateFromActivityAppLaunchURL();

  if (v46)
  {
    v47 = v147;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = *(isa + 4);
    v49 = v149;
    v48(v149, v47, v9);
    (*(isa + 7))(v49, 0, 1, v9);
    v48(v16, v49, v9);
  }

  else
  {
    v50 = v149;
    (*(isa + 7))(v149, 1, 1, v9);
    Date.init()();
    if ((*(isa + 6))(v50, 1, v9) != 1)
    {
      sub_10000EA04(v50, &unk_1008F73A0);
    }
  }

  v51 = static os_log_type_t.default.getter();
  v52 = HKLogActivity;
  v53 = v150;
  (*(isa + 2))(v150, v16, v9);
  if (os_log_type_enabled(v52, v51))
  {
    v54 = v52;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v149 = v38;
    v154[0] = v56;
    *v55 = 136315394;
    *(v55 + 4) = sub_10000AFDC(0xD000000000000016, 0x80000001006D4220, v154);
    *(v55 + 12) = 2080;
    sub_10014A074(&qword_1008DC148, &type metadata accessor for Date);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v16;
    v60 = v59;
    v61 = *(isa + 1);
    v61(v53, v9);
    v62 = sub_10000AFDC(v57, v60, v154);
    v16 = v58;

    *(v55 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v54, v51, "%s date: %s", v55, 0x16u);
    swift_arrayDestroy();
    v38 = v149;
    a1 = v151;
  }

  else
  {
    v61 = *(isa + 1);
    v61(v53, v9);
  }

  v63 = URL.host.getter();
  v65 = v64;
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v65)
  {
    if (v63 == v66 && v65 == v67)
    {

      goto LABEL_17;
    }

    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v68)
    {
LABEL_17:
      v69 = [(objc_class *)v153[7].isa me];
      v70 = static os_log_type_t.default.getter();
      v71 = HKLogActivity;
      v72 = os_log_type_enabled(HKLogActivity, v70);
      if (v69)
      {
        if (v72)
        {
          v73 = v71;
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v154[0] = v75;
          *v74 = 136315138;
          *(v74 + 4) = sub_10000AFDC(0xD000000000000016, 0x80000001006D4220, v154);
          _os_log_impl(&_mh_execute_header, v73, v70, "%s showing me friend detail", v74, 0xCu);
          sub_100005A40(v75);
        }

        sub_100315688(v69, 0);

        goto LABEL_49;
      }

      if (v72)
      {
        v82 = v71;
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v154[0] = v84;
        *v83 = 136315138;
        *(v83 + 4) = sub_10000AFDC(0xD000000000000016, 0x80000001006D4220, v154);
        v85 = "%s failed to show me friend detail";
LABEL_44:
        _os_log_impl(&_mh_execute_header, v82, v70, v85, v83, 0xCu);
        sub_100005A40(v84);

        goto LABEL_49;
      }

      goto LABEL_49;
    }
  }

  else
  {
  }

  v76 = URL.host.getter();
  v78 = v77;
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v78)
  {

    goto LABEL_33;
  }

  if (v76 == v79 && v78 == v80)
  {

    goto LABEL_29;
  }

  v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v86 & 1) == 0)
  {
LABEL_33:
    v109 = URL.host.getter();
    v111 = v110;
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v111)
    {
      if (v109 == v112 && v111 == v113)
      {

LABEL_39:
        v115 = static os_log_type_t.default.getter();
        v116 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v115))
        {
          v117 = v116;
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v154[0] = v119;
          *v118 = 136315138;
          *(v118 + 4) = sub_10000AFDC(0xD000000000000016, 0x80000001006D4220, v154);
          _os_log_impl(&_mh_execute_header, v117, v115, "%s showing friend inbox view", v118, 0xCu);
          sub_100005A40(v119);
        }

        sub_100315C2C();
        goto LABEL_49;
      }

      v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v114)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    v70 = static os_log_type_t.default.getter();
    v120 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v70))
    {
      v82 = v120;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v154[0] = v84;
      *v83 = 136315138;
      *(v83 + 4) = sub_10000AFDC(0xD000000000000016, 0x80000001006D4220, v154);
      v85 = "%s showing friend list";
      goto LABEL_44;
    }

LABEL_49:
    v133 = v16;
    goto LABEL_50;
  }

LABEL_29:
  URL._bridgeToObjectiveC()(v81);
  v88 = v87;
  v89 = ASFriendUUIDFromActivityAppLaunchURL();

  if (!v89)
  {
LABEL_46:
    v121 = static os_log_type_t.default.getter();
    v122 = HKLogActivity;
    v123 = v141;
    v124 = a1;
    v125 = v143;
    v138(v141, v124, v143);
    if (os_log_type_enabled(v122, v121))
    {
      v153 = v122;
      v126 = swift_slowAlloc();
      v154[0] = swift_slowAlloc();
      *v126 = 136315394;
      *(v126 + 4) = sub_10000AFDC(0xD000000000000016, 0x80000001006D4220, v154);
      *(v126 + 12) = 2082;
      sub_10014A074(&unk_1008F5500, &type metadata accessor for URL);
      v127 = dispatch thunk of CustomStringConvertible.description.getter();
      v128 = v16;
      v130 = v129;
      v140(v123, v125);
      v131 = sub_10000AFDC(v127, v130, v154);

      *(v126 + 14) = v131;
      v132 = v153;
      _os_log_impl(&_mh_execute_header, v153, v121, "%s failed to show friend detail for friendUUID %{public}s", v126, 0x16u);
      swift_arrayDestroy();

      v133 = v128;
LABEL_50:
      v134 = v9;
      return (v61)(v133, v134);
    }

    v140(v123, v125);
    goto LABEL_49;
  }

  v90 = v146;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v91 = v153[7].isa;
  v92 = UUID._bridgeToObjectiveC()().super.isa;
  v93 = [(objc_class *)v91 friendWithUUID:v92];

  if (!v93)
  {
    (*(v144 + 8))(v90, v145);
    goto LABEL_46;
  }

  v153 = v9;
  v94 = static os_log_type_t.default.getter();
  v95 = HKLogActivity;
  v96 = v144;
  v97 = v137;
  v98 = v90;
  v99 = v145;
  (*(v144 + 16))(v137, v98, v145);
  if (os_log_type_enabled(v95, v94))
  {
    v150 = v95;
    v100 = swift_slowAlloc();
    v149 = v38;
    v101 = v100;
    v102 = swift_slowAlloc();
    v151 = v16;
    v154[0] = v102;
    *v101 = 136315394;
    *(v101 + 4) = sub_10000AFDC(0xD000000000000016, 0x80000001006D4220, v154);
    *(v101 + 12) = 2082;
    v103 = UUID.description.getter();
    LODWORD(v148) = v94;
    v105 = v104;
    v106 = *(v96 + 8);
    v106(v97, v99);
    v107 = sub_10000AFDC(v103, v105, v154);

    *(v101 + 14) = v107;
    v108 = v150;
    _os_log_impl(&_mh_execute_header, v150, v148, "%s showing friend detail for friendUUID %{public}s", v101, 0x16u);
    swift_arrayDestroy();
    v16 = v151;
  }

  else
  {
    v106 = *(v96 + 8);
    v106(v97, v99);
  }

  sub_100315688(v93, 0);

  v106(v146, v99);
  v134 = v153;
  v133 = v16;
  return (v61)(v133, v134);
}

id sub_10014977C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

double sub_1001497E4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_10014986C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100149F74(v1);

  return static Published.subscript.setter();
}

unint64_t sub_100149900()
{
  result = qword_1008DC080;
  if (!qword_1008DC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC080);
  }

  return result;
}

unint64_t sub_100149954()
{
  result = qword_1008DC090;
  if (!qword_1008DC090)
  {
    sub_100141EEC(&qword_1008DC098);
    sub_100149A0C();
    sub_10014A6B0(&qword_1008DC0D8, &qword_1008DC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC090);
  }

  return result;
}

unint64_t sub_100149A0C()
{
  result = qword_1008DC0A0;
  if (!qword_1008DC0A0)
  {
    sub_100141EEC(&qword_1008DC0A8);
    sub_10014A6B0(&qword_1008DC0B0, &qword_1008DC0B8);
    sub_100149AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC0A0);
  }

  return result;
}

unint64_t sub_100149AC4()
{
  result = qword_1008DC0C0;
  if (!qword_1008DC0C0)
  {
    sub_100141EEC(&qword_1008DC0C8);
    sub_100149B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC0C0);
  }

  return result;
}

unint64_t sub_100149B50()
{
  result = qword_1008DC0D0;
  if (!qword_1008DC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC0D0);
  }

  return result;
}

uint64_t sub_100149BB4()
{
  v1 = *(type metadata accessor for ScrollViewProxy() - 8);
  v2 = v0 + ((*(v1 + 80) + 232) & ~*(v1 + 80));

  return sub_1001480C0(v0 + 16, v2);
}

uint64_t sub_100149C18(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrollViewProxy() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1001481F4(a1, v4);
}

unint64_t sub_100149C88()
{
  result = qword_1008DC128;
  if (!qword_1008DC128)
  {
    sub_100141EEC(&qword_1008DC108);
    sub_100141EEC(&qword_1008DC100);
    sub_100141EEC(&qword_1008DC0F8);
    sub_10014A6B0(&qword_1008DC120, &qword_1008DC0F8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC128);
  }

  return result;
}

uint64_t sub_100149DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DBFF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100149E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DC130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100149EA8(id result)
{
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

void *sub_100149F0C(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100149F74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100149FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_100507304(a1, v4, v5, v6);
}

uint64_t sub_10014A074(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10014A0BC()
{
  result = qword_1008E4DD0;
  if (!qword_1008E4DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E4DD0);
  }

  return result;
}

unint64_t sub_10014A14C()
{
  result = qword_1008DC150;
  if (!qword_1008DC150)
  {
    sub_100141EEC(&qword_1008DC050);
    sub_10014A204();
    sub_10014A6B0(&qword_1008DC1D8, &qword_1008DC1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC150);
  }

  return result;
}

unint64_t sub_10014A204()
{
  result = qword_1008DC158;
  if (!qword_1008DC158)
  {
    sub_100141EEC(&qword_1008DC040);
    sub_10014A2BC();
    sub_10014A6B0(&qword_1008DC1C8, &qword_1008DC1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC158);
  }

  return result;
}

unint64_t sub_10014A2BC()
{
  result = qword_1008DC160;
  if (!qword_1008DC160)
  {
    sub_100141EEC(&qword_1008DC030);
    sub_10014A374();
    sub_10014A6B0(&qword_1008DC1B8, &qword_1008DC1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC160);
  }

  return result;
}

unint64_t sub_10014A374()
{
  result = qword_1008DC168;
  if (!qword_1008DC168)
  {
    sub_100141EEC(&qword_1008DC020);
    sub_10014A42C();
    sub_10014A6B0(&qword_1008DC1A8, &qword_1008DC1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC168);
  }

  return result;
}

unint64_t sub_10014A42C()
{
  result = qword_1008DC170;
  if (!qword_1008DC170)
  {
    sub_100141EEC(&qword_1008DC010);
    sub_10014A510(&qword_1008DC178, &qword_1008DC180, &unk_1006D44A8, sub_10014A58C);
    sub_10014A6B0(&qword_1008DC198, &qword_1008DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC170);
  }

  return result;
}

uint64_t sub_10014A510(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10014A58C()
{
  result = qword_1008DC188;
  if (!qword_1008DC188)
  {
    sub_100141EEC(&qword_1008DC190);
    sub_100149900();
    swift_getOpaqueTypeConformance2();
    sub_100141EEC(&qword_1008DC058);
    sub_10014A510(&qword_1008DC088, &qword_1008DC058, &unk_1006D42D0, sub_100149954);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC188);
  }

  return result;
}

uint64_t sub_10014A6B0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10014A6F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10014A70C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10014A754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10014A7C4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v29 = a1;
  v3 = sub_100140278(&qword_1008DC1F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  v7 = sub_100140278(&qword_1008DC1F8);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v32 = static VerticalAlignment.center.getter();
  LOBYTE(v58) = 1;
  sub_10014B278(&v69);
  v40 = *&v70[48];
  v41 = *&v70[64];
  v42 = *&v70[80];
  v43 = *&v70[96];
  v36 = v69;
  v37 = *v70;
  v38 = *&v70[16];
  v39 = *&v70[32];
  v44[0] = v69;
  v44[1] = *v70;
  v44[2] = *&v70[16];
  v44[3] = *&v70[32];
  v44[4] = *&v70[48];
  v44[5] = *&v70[64];
  v44[6] = *&v70[80];
  v45 = *&v70[96];
  sub_10001B104(&v36, v60, &qword_1008DC200);
  sub_10000EA04(v44, &qword_1008DC200);
  *(&v35[4] + 7) = v40;
  *(&v35[5] + 7) = v41;
  *(&v35[6] + 7) = v42;
  *(v35 + 7) = v36;
  *(&v35[1] + 7) = v37;
  *(&v35[2] + 7) = v38;
  *(&v35[7] + 7) = v43;
  *(&v35[3] + 7) = v39;
  v13 = v58;
  v30 = v58;
  v33 = v29;
  sub_100140278(&qword_1008DC208);
  sub_10014B4D4();
  Chart.init(content:)();
  sub_10014A6B0(&qword_1008DC238, &qword_1008DC1F0);
  View.chartYAxis(_:)();
  (*(v4 + 8))(v6, v3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = &v12[*(v8 + 44)];
  v15 = v35[9];
  *v14 = v35[8];
  *(v14 + 1) = v15;
  *(v14 + 2) = v35[10];
  v16 = static VerticalAlignment.center.getter();
  LOBYTE(v58) = 1;
  sub_10014B278(&v69);
  v50 = *&v70[48];
  v51 = *&v70[64];
  v52 = *&v70[80];
  v53 = *&v70[96];
  v46 = v69;
  v47 = *v70;
  v48 = *&v70[16];
  v49 = *&v70[32];
  v54[0] = v69;
  v54[1] = *v70;
  v54[2] = *&v70[16];
  v54[3] = *&v70[32];
  v54[4] = *&v70[48];
  v54[5] = *&v70[64];
  v54[6] = *&v70[80];
  v55 = *&v70[96];
  sub_10001B104(&v46, v60, &qword_1008DC200);
  sub_10000EA04(v54, &qword_1008DC200);
  *(&v34[4] + 7) = v50;
  *(&v34[5] + 7) = v51;
  *(&v34[6] + 7) = v52;
  *(v34 + 7) = v46;
  *(&v34[1] + 7) = v47;
  *(&v34[2] + 7) = v48;
  *(&v34[7] + 7) = v53;
  *(&v34[3] + 7) = v49;
  LOBYTE(v3) = v58;
  v17 = v31;
  sub_100082E24(v12, v31);
  v56 = v32;
  LOBYTE(v57[0]) = v13;
  *(v57 + 1) = v35[0];
  *(&v57[1] + 1) = v35[1];
  *(&v57[5] + 1) = v35[5];
  *(&v57[4] + 1) = v35[4];
  *(&v57[6] + 1) = v35[6];
  v57[7] = *(&v35[6] + 15);
  *(&v57[2] + 1) = v35[2];
  *(&v57[3] + 1) = v35[3];
  v18 = v57[6];
  a2[6] = v57[5];
  a2[7] = v18;
  a2[8] = v57[7];
  v19 = v57[2];
  a2[2] = v57[1];
  a2[3] = v19;
  v20 = v57[4];
  a2[4] = v57[3];
  a2[5] = v20;
  v21 = v57[0];
  *a2 = v56;
  a2[1] = v21;
  v22 = sub_100140278(&qword_1008DC240);
  sub_100082E24(v17, a2 + *(v22 + 48));
  v23 = (a2 + *(v22 + 64));
  v58 = v16;
  LOBYTE(v59[0]) = v3;
  *(v59 + 1) = v34[0];
  *(&v59[1] + 1) = v34[1];
  *(&v59[4] + 1) = v34[4];
  *(&v59[5] + 1) = v34[5];
  *(&v59[6] + 1) = v34[6];
  v59[7] = *(&v34[6] + 15);
  *(&v59[2] + 1) = v34[2];
  *(&v59[3] + 1) = v34[3];
  v24 = v59[6];
  v23[6] = v59[5];
  v23[7] = v24;
  v23[8] = v59[7];
  v25 = v59[2];
  v23[2] = v59[1];
  v23[3] = v25;
  v26 = v59[4];
  v23[4] = v59[3];
  v23[5] = v26;
  v27 = v59[0];
  *v23 = v58;
  v23[1] = v27;
  sub_10001B104(&v56, &v69, &qword_1008DC248);
  sub_10001B104(&v58, &v69, &qword_1008DC248);
  sub_100082E94(v12);
  v66 = v34[4];
  v67 = v34[5];
  *v68 = v34[6];
  *&v68[15] = *(&v34[6] + 15);
  v62 = v34[0];
  v63 = v34[1];
  v64 = v34[2];
  v60[0] = v16;
  v60[1] = 0;
  v61 = v3;
  v65 = v34[3];
  sub_10000EA04(v60, &qword_1008DC248);
  sub_100082E94(v17);
  *&v70[65] = v35[4];
  *&v70[81] = v35[5];
  *&v70[97] = v35[6];
  *&v70[112] = *(&v35[6] + 15);
  *&v70[1] = v35[0];
  *&v70[17] = v35[1];
  *&v70[33] = v35[2];
  v69 = v32;
  v70[0] = v30;
  *&v70[49] = v35[3];
  return sub_10000EA04(&v69, &qword_1008DC248);
}

uint64_t sub_10014ADC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = sub_100140278(&qword_1008DC258) - 8;
  __chkstk_darwin(v35);
  v36 = &v28 - v3;
  v34 = sub_100140278(&qword_1008DC220);
  v29 = *(v34 - 8);
  v4 = v29;
  v5 = __chkstk_darwin(v34);
  v38 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v43[0] = *(a1 + 16);
  swift_getKeyPath();

  sub_100140278(&qword_1008DC260);
  type metadata accessor for SleepingSampleBaselineBand(0);
  sub_10014A6B0(&qword_1008DC268, &qword_1008DC260);
  sub_10014C3E4(&qword_1008DC270, type metadata accessor for SleepingSampleBaselineBand.Configuration);
  sub_10014C3E4(&qword_1008DC228, type metadata accessor for SleepingSampleBaselineBand);
  v33 = v8;
  ForEach<>.init(_:id:content:)();
  v9 = sub_10014B670(*a1);
  v10 = sub_10014BD08(*(a1 + 8));
  v11 = *(*(a1 + 24) + 16) < 0x1EuLL;
  v32 = v11;
  v12 = *(a1 + 32);
  v13 = *(v4 + 16);
  v14 = v38;
  v15 = v34;
  v13(v38, v8, v34);
  sub_10014B568();
  v16 = v36;
  v13(v36, v14, v15);
  sub_10014B61C();
  v17 = v35;
  v18 = &v16[*(v35 + 56)];
  *&v40 = v9;
  *(&v40 + 1) = v10;
  v41[0] = v11;
  *&v41[1] = *v39;
  *&v41[4] = *&v39[3];
  v31 = xmmword_1006D44E0;
  *&v41[8] = xmmword_1006D44E0;
  *&v41[24] = 0;
  v30 = xmmword_1006D44F0;
  *v42 = xmmword_1006D44F0;
  *&v42[16] = 0x4010000000000000;
  v42[24] = v12;
  v19 = *v41;
  *v18 = v40;
  *(v18 + 1) = v19;
  v20 = *v42;
  *(v18 + 2) = *&v41[16];
  *(v18 + 3) = v20;
  *(v18 + 57) = *&v42[9];
  v21 = v29;
  v22 = v37;
  (*(v29 + 32))(v37, v16, v15);
  v23 = (v22 + *(v17 + 56));
  v24 = *(v18 + 3);
  v23[2] = *(v18 + 2);
  v23[3] = v24;
  *(v23 + 57) = *(v18 + 57);
  v25 = *(v18 + 1);
  *v23 = *v18;
  v23[1] = v25;
  sub_10014C204(&v40, v43);
  v26 = *(v21 + 8);
  v26(v33, v15);
  v43[0] = v9;
  v43[1] = v10;
  v44 = v32;
  *v45 = *v39;
  *&v45[3] = *&v39[3];
  v46 = v31;
  v47 = 0;
  v48 = v30;
  v49 = 0x4010000000000000;
  v50 = v12;
  sub_10014C260(v43);
  return (v26)(v38, v15);
}

uint64_t sub_10014B278@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v21) = 256;
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = v6 & 1;
  v10 = static Font.caption2.getter();
  KeyPath = swift_getKeyPath();
  v12 = [objc_opt_self() tertiaryLabelColor];
  v13 = Color.init(_:)();
  *&v28 = v2;
  *(&v28 + 1) = v4;
  LOBYTE(v29) = v9;
  *(&v29 + 1) = v8;
  v14 = v25;
  v15 = v26;
  v30 = v25;
  v31 = v26;
  *&v23[39] = v25;
  *&v23[23] = v29;
  v16 = v27;
  v32 = v27;
  *&v33 = KeyPath;
  *(&v33 + 1) = v10;
  *&v23[7] = v28;
  *&v23[103] = v13;
  *&v23[87] = v33;
  *&v23[71] = v27;
  *&v23[55] = v26;
  v17 = *&v23[48];
  *(a1 + 41) = *&v23[32];
  v18 = *v23;
  *(a1 + 25) = *&v23[16];
  *(a1 + 9) = v18;
  *(a1 + 104) = *&v23[95];
  v19 = *&v23[64];
  *(a1 + 89) = *&v23[80];
  v24 = 1;
  v34 = v13;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 73) = v19;
  *(a1 + 57) = v17;
  v35[0] = v2;
  v35[1] = v4;
  v36 = v9;
  v37 = v8;
  v40 = v16;
  v39 = v15;
  v38 = v14;
  v41 = KeyPath;
  v42 = v10;
  v43 = v13;
  sub_10001B104(&v28, &v22, &qword_1008DC250);
  return sub_10000EA04(v35, &qword_1008DC250);
}

uint64_t sub_10014B460@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v4 = sub_100140278(&qword_1008DC1E8);
  return sub_10014A7C4(v6, (a1 + *(v4 + 44)));
}

unint64_t sub_10014B4D4()
{
  result = qword_1008DC210;
  if (!qword_1008DC210)
  {
    sub_100141EEC(&qword_1008DC208);
    sub_10014B568();
    sub_10014B61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC210);
  }

  return result;
}

unint64_t sub_10014B568()
{
  result = qword_1008DC218;
  if (!qword_1008DC218)
  {
    sub_100141EEC(&qword_1008DC220);
    sub_10014C3E4(&qword_1008DC228, type metadata accessor for SleepingSampleBaselineBand);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC218);
  }

  return result;
}

unint64_t sub_10014B61C()
{
  result = qword_1008DC230;
  if (!qword_1008DC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC230);
  }

  return result;
}

void *sub_10014B670(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DC278);
  v3 = __chkstk_darwin(v2 - 8);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v54 = &v42 - v5;
  v53 = type metadata accessor for SleepingSampleSingleMetricChartPoint();
  v43 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for BaselineRelativeValue();
  v7 = *(v57 - 8);
  v8 = __chkstk_darwin(v57);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v50 = &v42 - v11;
  v46 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
  v56 = *(v46 - 8);
  v12 = __chkstk_darwin(v46);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = 0;
  v51 = a1;
  v18 = *(a1 + 16);
  LODWORD(v49) = enum case for BaselineRelativeValue.indeterminate(_:);
  v19 = (v7 + 104);
  v42 = v7;
  v45 = (v7 + 8);
  v55 = v18;
  v20 = v57;
  do
  {
    v21 = v17;
    if (!(v18 + v17))
    {
      break;
    }

    --v17;
    sub_10014C42C(v51 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * (v21 - 1 + v18), v16, type metadata accessor for SleepingSampleBaselineRelativeChartPoint);
    v22 = v50;
    (*v19)(v50, v49, v20);
    sub_10014C3E4(&qword_1008DC280, &type metadata accessor for BaselineRelativeValue);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v45)(v22, v20);
    sub_10014C324(v16);
    v18 = v55;
  }

  while ((v23 & 1) == 0);
  if (v21)
  {
    v24 = -v21;
    v25 = v18 + v21;
    v51 += (*(v56 + 80) + 32) & ~*(v56 + 80);
    v26 = *(v46 + 20);
    v49 = (v42 + 2);
    v50 = v26;
    v48 = (v42 + 11);
    v47 = enum case for BaselineRelativeValue.determinate(_:);
    v27 = v44;
    v28 = (v43 + 56);
    v42 += 12;
    v29 = (v43 + 48);
    v30 = _swiftEmptyArrayStorage;
    v31 = v54;
    v32 = v57;
    while (v18 > v25)
    {
      sub_10014C42C(v51 + *(v56 + 72) * v25, v14, type metadata accessor for SleepingSampleBaselineRelativeChartPoint);
      (*v49)(v10, &v50[v14], v32);
      v33 = (*v48)(v10, v32);
      if (v33 == v47)
      {
        (*v42)(v10, v32);
        v34 = *v10;
        v35 = type metadata accessor for Date();
        (*(*(v35 - 8) + 16))(v27, v14, v35);
        v36 = *(v14 + *(v46 + 24));
        v37 = v53;
        *(v27 + *(v53 + 20)) = v34;
        *(v27 + *(v37 + 24)) = v36;
        (*v28)(v27, 0, 1, v37);
        v31 = v54;
      }

      else
      {
        (*v45)(v10, v32);
        v37 = v53;
        (*v28)(v27, 1, 1, v53);
      }

      sub_10014C2B4(v27, v31);
      sub_10014C324(v14);
      if ((*v29)(v31, 1, v37) == 1)
      {
        sub_10000EA04(v31, &qword_1008DC278);
        v32 = v57;
      }

      else
      {
        sub_10014C380(v31, v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_1001A1B88(0, v30[2] + 1, 1, v30);
        }

        v40 = v30[2];
        v39 = v30[3];
        if (v40 >= v39 >> 1)
        {
          v30 = sub_1001A1B88(v39 > 1, v40 + 1, 1, v30);
        }

        v30[2] = v40 + 1;
        sub_10014C380(v52, v30 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v40);
        v27 = v44;
        v31 = v54;
      }

      ++v25;
      --v24;
      v18 = v55;
      if (!v24)
      {
        return v30;
      }
    }

    __break(1u);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10014BD08(uint64_t a1)
{
  v2 = type metadata accessor for BaselineRelativeValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100140278(&qword_1008DC278);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = type metadata accessor for SleepingSampleSingleMetricChartPoint();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v46 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
  v16 = __chkstk_darwin(v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (!v20)
  {
    return _swiftEmptyArrayStorage;
  }

  v21 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v36 = v16;
  v22 = *(v16 + 20);
  v44 = *(v17 + 72);
  v45 = v22;
  v43 = (v3 + 16);
  v42 = (v3 + 88);
  v41 = enum case for BaselineRelativeValue.determinate(_:);
  v34 = (v3 + 96);
  v35 = (v3 + 8);
  v38 = v13;
  v39 = (v13 + 48);
  v40 = (v13 + 56);
  v23 = _swiftEmptyArrayStorage;
  v37 = v2;
  do
  {
    sub_10014C42C(v21, v19, type metadata accessor for SleepingSampleBaselineRelativeChartPoint);
    (*v43)(v5, &v19[v45], v2);
    v24 = (*v42)(v5, v2);
    if (v24 == v41)
    {
      (*v34)(v5, v2);
      v25 = *v5;
      v26 = type metadata accessor for Date();
      (*(*(v26 - 8) + 16))(v9, v19, v26);
      v27 = *&v19[*(v36 + 24)];
      *&v9[*(v12 + 20)] = v25;
      *&v9[*(v12 + 24)] = v27;
      (*v40)(v9, 0, 1, v12);
    }

    else
    {
      (*v35)(v5, v2);
      (*v40)(v9, 1, 1, v12);
    }

    sub_10014C2B4(v9, v11);
    sub_10014C324(v19);
    if ((*v39)(v11, 1, v12) == 1)
    {
      sub_10000EA04(v11, &qword_1008DC278);
    }

    else
    {
      sub_10014C380(v11, v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1001A1B88(0, v23[2] + 1, 1, v23);
      }

      v29 = v23[2];
      v28 = v23[3];
      v30 = v38;
      if (v29 >= v28 >> 1)
      {
        v31 = sub_1001A1B88(v28 > 1, v29 + 1, 1, v23);
        v30 = v38;
        v23 = v31;
      }

      v23[2] = v29 + 1;
      sub_10014C380(v46, v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v29);
      v2 = v37;
    }

    v21 += v44;
    --v20;
  }

  while (v20);
  return v23;
}

uint64_t sub_10014C2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DC278);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014C324(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014C380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleSingleMetricChartPoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014C3E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014C42C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10014C4A8()
{
  result = qword_1008DC298;
  if (!qword_1008DC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC298);
  }

  return result;
}

uint64_t type metadata accessor for MetricDetailView()
{
  result = qword_1008DC308;
  if (!qword_1008DC308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014C570()
{
  sub_10014C794(319, &qword_1008DC318);
  if (v0 <= 0x3F)
  {
    sub_10014C794(319, &qword_1008DC320);
    if (v1 <= 0x3F)
    {
      sub_10014C7E0();
      if (v2 <= 0x3F)
      {
        sub_10014C838(319, &qword_1008DC330, &qword_1008DC338);
        if (v3 <= 0x3F)
        {
          sub_10014C838(319, &qword_1008DC340, &unk_1008EAF50);
          if (v4 <= 0x3F)
          {
            sub_1000059F8(319, &qword_1008F24B0);
            if (v5 <= 0x3F)
            {
              type metadata accessor for MetricFormattingHelper();
              if (v6 <= 0x3F)
              {
                type metadata accessor for MetricsDataProvider();
                if (v7 <= 0x3F)
                {
                  sub_1000059F8(319, &unk_1008DC348);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for WorkoutImageProvider();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for SeymourCatalogItemDataProvider();
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for AAUIAwardsDataProvider();
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for ActivityDashboardViewController();
                          if (v12 <= 0x3F)
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
    }
  }
}

void sub_10014C794(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10014C7E0()
{
  if (!qword_1008DC328)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DC328);
    }
  }
}

void sub_10014C838(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_100141EEC(a3);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10014C8A8()
{
  v0 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for Font.TextStyle.title(_:), v3);
  v7 = enum case for Font.Design.rounded(_:);
  v8 = type metadata accessor for Font.Design();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  static Font.Weight.semibold.getter();
  v10 = static Font.system(_:design:weight:)();
  sub_10000EA04(v2, &qword_1008DC448);
  result = (*(v4 + 8))(v6, v3);
  qword_100924F70 = v10;
  return result;
}

uint64_t sub_10014CAA8()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for Font.TextStyle.footnote(_:), v4);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v5 + 8))(v7, v4);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v8 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_100924F78 = v8;
  return result;
}

uint64_t sub_10014CC80()
{
  v1 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for MetricDetailView();
  v2 = *v0;
  sub_100140278(&qword_1008DC3E8);
  State.wrappedValue.getter();
  sub_1004D37E4(v2);
  sub_10000FCBC();
  StringProtocol.localizedUppercase.getter();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  if (qword_1008DA518 != -1)
  {
    swift_once();
  }

  sub_10005F988();

  return AttributedString.subscript.setter();
}

uint64_t sub_10014CE10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MetricDetailViewModel();
  __chkstk_darwin(v3);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MetricDetailView();
  v6 = *v1;
  sub_10014D018(v5);
  v7 = v1[16];
  v8 = *(v1 + 3);
  v22 = *(v1 + 1);
  v23 = v7;
  v24 = v8;
  sub_100140278(&qword_1008DC3E8);
  State.wrappedValue.getter();
  v9 = v20[1];
  v10 = v21;
  if (qword_1008DA510 != -1)
  {
    swift_once();
  }

  v11 = qword_100924F70;
  v12 = 1;
  if ((v10 & (v9 == 0)) != 0)
  {
    v12 = 0;
  }

  v13 = &v5[v12];
  if (((1 << v6) & 0x2224471F80) != 0)
  {
    v14 = v5 + 1;
  }

  else
  {
    v14 = v13;
  }

  if (((1 << v6) & 0x5DDBB8E070) != 0)
  {
    v15 = v5;
  }

  else
  {
    v15 = v14;
  }

  v16 = *v15;
  v17 = *(v5 + *(v3 + 40));
  v18 = *v15;
  sub_10005C9EC(v16, v6, v11, 0, 0, 0, (v17 & 1) == 0, a1);

  sub_1000292B4(v5, type metadata accessor for MetricDetailViewModel);
  sub_10005C1A0(v6);
  v22 = Color.init(uiColor:)();
  sub_10005FAB0();
  return AttributedString.subscript.setter();
}

uint64_t sub_10014D018@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100140278(&qword_1008DC408);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1001507E0();
  v9 = v8;
  v10 = &v1[*(type metadata accessor for MetricDetailView() + 40)];
  v12 = *v10;
  v11 = *(v10 + 1);
  v33 = v12;
  v34 = v11;
  sub_100140278(&qword_1008DC410);
  State.wrappedValue.getter();
  v13 = v32;
  if (*(v32 + 16) && (v14 = sub_1004C53EC(v7, v9 & 1), (v15 & 1) != 0))
  {
    v16 = v14;
    v17 = *(v13 + 56);
    v18 = type metadata accessor for MetricDetailViewModel();
    v19 = *(v18 - 8);
    sub_100152F70(v17 + *(v19 + 72) * v16, v6, type metadata accessor for MetricDetailViewModel);

    (*(v19 + 56))(v6, 0, 1, v18);
    return sub_1001533D4(v6, a1, type metadata accessor for MetricDetailViewModel);
  }

  else
  {

    v21 = type metadata accessor for MetricDetailViewModel();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v6, 1, 1, v21);
    v23 = sub_1001507E0();
    v25 = v24;
    v26 = sub_1004D3AD8(*v2);
    v27 = objc_opt_self();
    v28 = [v27 quantityWithUnit:v26 doubleValue:0.0];
    v29 = [v27 quantityWithUnit:v26 doubleValue:0.0];
    v30 = v25 & 1;
    sub_100062880(v23, v30, a1 + *(v21 + 36));
    Date.init()();

    *a1 = v28;
    *(a1 + 8) = v29;
    *(a1 + 16) = _swiftEmptyArrayStorage;
    *(a1 + 24) = _swiftEmptyArrayStorage;
    *(a1 + 32) = v23;
    *(a1 + 40) = v30;
    *(a1 + *(v21 + 40)) = 0;
    result = (*(v22 + 48))(v6, 1, v21);
    if (result != 1)
    {
      return sub_10000EA04(v6, &qword_1008DC408);
    }
  }

  return result;
}

uint64_t sub_10014D348@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v67 = sub_100140278(&qword_1008DC3B8);
  __chkstk_darwin(v67);
  v66 = &v55 - v2;
  v3 = sub_100140278(&qword_1008DC3C0);
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v63 = &v55 - v4;
  v62 = sub_100140278(&qword_1008DB018);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v71 = &v55 - v5;
  v57 = sub_100140278(&qword_1008DC3C8);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v70 = &v55 - v6;
  v7 = sub_100140278(&qword_1008DC3D0);
  v60 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v55 - v8;
  v73 = v1;
  static Axis.Set.vertical.getter();
  sub_100140278(&qword_1008DC3D8);
  sub_10014A6B0(&qword_1008DC3E0, &qword_1008DC3D8);
  ScrollView.init(_:showsIndicators:content:)();
  v10 = v1;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  *&v74 = *(v1 + 8);
  BYTE8(v74) = v11;
  v75 = v12;
  sub_100140278(&qword_1008DC3E8);
  State.wrappedValue.getter();
  *&v74 = v77;
  BYTE8(v74) = v78;
  v59 = type metadata accessor for MetricDetailView();
  v13 = *(v59 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v59);
  v56 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (&v55 - v56);
  v55 = type metadata accessor for MetricDetailView;
  sub_100152F70(v10, &v55 - v56, type metadata accessor for MetricDetailView);
  v16 = *(v13 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  v69 = type metadata accessor for MetricDetailView;
  sub_1001533D4(v15, v18 + v17, type metadata accessor for MetricDetailView);
  v19 = sub_10014A6B0(&qword_1008DC3F0, &qword_1008DC3D0);
  v20 = sub_10015243C();
  View.onChange<A>(of:initial:_:)();

  (*(v60 + 8))(v9, v7);
  v21 = v10;
  v72 = v10;
  v74 = *(v10 + 32);
  sub_100140278(&qword_1008DC400);
  v22 = State.wrappedValue.getter();
  __chkstk_darwin(v22);
  v23 = v56;
  v24 = v55;
  sub_100152F70(v21, &v55 - v56, v55);
  v25 = swift_allocObject();
  v60 = v17;
  sub_1001533D4(&v55 - v23, v25 + v17, v69);
  *&v74 = v7;
  v26 = v14;
  *(&v74 + 1) = &type metadata for MetricDataProviderTimeScale;
  v75 = v19;
  v76 = v20;
  swift_getOpaqueTypeConformance2();
  v27 = v70;
  v28 = v57;
  View.onChange<A>(of:initial:_:)();

  v29 = (*(v58 + 8))(v27, v28);
  __chkstk_darwin(v29);
  sub_100152F70(v72, &v55 - v23, v24);
  type metadata accessor for MainActor();
  v30 = static MainActor.shared.getter();
  v70 = v16;
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = &protocol witness table for MainActor;
  sub_1001533D4(&v55 - v23, v31 + ((v16 + 32) & ~v16), v69);
  v32 = type metadata accessor for TaskPriority();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v55 - v35;
  static TaskPriority.userInitiated.getter();
  if (sub_10069AF38(2, 26, 4, 0))
  {
    v58 = type metadata accessor for _TaskModifier2();
    v69 = &v55;
    v57 = *(v58 - 8);
    __chkstk_darwin(v58);
    v56 = &v55 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v74 = 0;
    *(&v74 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    *&v74 = 0xD00000000000002ELL;
    *(&v74 + 1) = 0x8000000100747E60;
    v77 = 171;
    v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v38);

    __chkstk_darwin(v39);
    (*(v33 + 16))(&v55 - v35, &v55 - v35, v32);
    v40 = v56;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v33 + 8))(v36, v32);
    v41 = v63;
    (*(v61 + 32))(v63, v71, v62);
    v42 = sub_100140278(&qword_1008DB020);
    (*(v57 + 32))(&v41[*(v42 + 36)], v40, v58);
  }

  else
  {
    v43 = sub_100140278(&qword_1008DB028);
    v41 = v63;
    v44 = &v63[*(v43 + 36)];
    v45 = type metadata accessor for _TaskModifier();
    (*(v33 + 32))(&v44[*(v45 + 20)], &v55 - v35, v32);
    *v44 = &unk_1006D4830;
    *(v44 + 1) = v31;
    (*(v61 + 32))(v41, v71, v62);
  }

  v46 = *(*(v72 + *(v59 + 56)) + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_metricCategoryUpdates);
  v47 = __chkstk_darwin(v72);
  sub_100152F70(v47, &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MetricDetailView);
  v48 = v60;
  v49 = swift_allocObject();
  sub_1001533D4(&v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48, type metadata accessor for MetricDetailView);
  v50 = v66;
  (*(v64 + 32))(v66, v41, v65);
  v52 = v67;
  v51 = v68;
  *(v50 + *(v67 + 52)) = v46;
  v53 = (v50 + *(v52 + 56));
  *v53 = sub_1001525C0;
  v53[1] = v49;
  sub_100015E80(v50, v51, &qword_1008DC3B8);
}

uint64_t sub_10014DE84@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.top.getter();
  a2[1] = v4;
  v5 = sub_100140278(&qword_1008DC418);
  return sub_10014DED4(a1, a2 + *(v5 + 44));
}

uint64_t sub_10014DED4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v4 = sub_100140278(&qword_1008DC420);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v47 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v38[-v8];
  sub_10005C1A0(*a1);
  v10 = Color.init(uiColor:)();
  v44 = v10;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = v49;
  v12 = v50;
  v42 = v51;
  v43 = v49;
  v13 = v52;
  v14 = v54;
  v41 = v53;
  v39 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v62[0]) = v12;
  v45 = v12;
  v46 = v13;
  LOBYTE(v55) = v13;
  v48 = 0;
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v23 = sub_100140278(&qword_1008DC428);
  sub_10014E1C0(v40, &v9[*(v23 + 44)]);
  v24 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = &v9[*(v5 + 44)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = v47;
  sub_10001B104(v9, v47, &qword_1008DC420);
  *&v55 = v10;
  *(&v55 + 1) = v11;
  LOBYTE(v56) = v12;
  v32 = v41;
  v31 = v42;
  *(&v56 + 1) = v42;
  LOBYTE(v57) = v13;
  *(&v57 + 1) = v41;
  *&v58 = v14;
  LOBYTE(v13) = v39;
  BYTE8(v58) = v39;
  *&v59 = v16;
  *(&v59 + 1) = v18;
  *&v60 = v20;
  *(&v60 + 1) = v22;
  v61 = 0;
  *(a2 + 96) = 0;
  v33 = v60;
  *(a2 + 64) = v59;
  *(a2 + 80) = v33;
  v34 = v56;
  *a2 = v55;
  *(a2 + 16) = v34;
  v35 = v58;
  *(a2 + 32) = v57;
  *(a2 + 48) = v35;
  v36 = a2 + *(sub_100140278(&qword_1008DC430) + 48);
  sub_10001B104(v30, v36, &qword_1008DC420);
  sub_10001B104(&v55, v62, &qword_1008DC438);
  sub_10000EA04(v9, &qword_1008DC420);
  sub_10000EA04(v30, &qword_1008DC420);
  v62[0] = v44;
  v62[1] = v43;
  v63 = v45;
  v64 = v31;
  v65 = v46;
  v66 = v32;
  v67 = v14;
  v68 = v13;
  v69 = v16;
  v70 = v18;
  v71 = v20;
  v72 = v22;
  v73 = 0;
  return sub_10000EA04(v62, &qword_1008DC438);
}

uint64_t sub_10014E1C0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *&v284 = a1;
  v277 = a2;
  v3 = sub_100140278(&qword_1008DC440);
  v274 = *(v3 - 8);
  v275 = v3;
  __chkstk_darwin(v3);
  v279 = &v234 - v4;
  v5 = type metadata accessor for Font.Leading();
  v244 = *(v5 - 8);
  v245 = v5;
  __chkstk_darwin(v5);
  v243 = &v234 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v7 - 8);
  v241 = &v234 - v8;
  v242 = type metadata accessor for Font.TextStyle();
  v240 = *(v242 - 8);
  __chkstk_darwin(v242);
  v239 = &v234 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008DC450);
  v11 = __chkstk_darwin(v10 - 8);
  v278 = &v234 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v283 = &v234 - v13;
  v14 = sub_100140278(&qword_1008DC458);
  v15 = __chkstk_darwin(v14 - 8);
  v276 = &v234 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v295 = &v234 - v17;
  v270 = sub_100140278(&qword_1008DC460);
  v272 = *(v270 - 8);
  __chkstk_darwin(v270);
  v235 = &v234 - v18;
  v19 = sub_100140278(&qword_1008DC468);
  v20 = __chkstk_darwin(v19 - 8);
  v294 = &v234 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v303 = &v234 - v22;
  v264 = sub_100140278(&unk_1008F73A0);
  v23 = __chkstk_darwin(v264);
  v263 = &v234 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v262 = &v234 - v25;
  v26 = sub_100140278(&qword_1008DC470);
  __chkstk_darwin(v26 - 8);
  v261 = &v234 - v27;
  v28 = type metadata accessor for MetricFormattingHelper();
  __chkstk_darwin(v28 - 8);
  v260 = &v234 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MetricDetailViewModel();
  v31 = __chkstk_darwin(v30 - 8);
  v238 = &v234 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v271 = &v234 - v34;
  __chkstk_darwin(v33);
  *&v298 = &v234 - v35;
  v258 = type metadata accessor for MetricDetailChartView() - 8;
  v36 = __chkstk_darwin(v258);
  v259 = &v234 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v266 = &v234 - v38;
  v269 = sub_100140278(&qword_1008DC478) - 8;
  __chkstk_darwin(v269);
  v267 = &v234 - v39;
  v268 = sub_100140278(&qword_1008DC480) - 8;
  v40 = __chkstk_darwin(v268);
  v293 = &v234 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v265 = &v234 - v43;
  __chkstk_darwin(v42);
  v302 = &v234 - v44;
  v45 = sub_100140278(&unk_1008EAF50);
  __chkstk_darwin(v45 - 8);
  v256 = &v234 - v46;
  v254 = sub_100140278(&qword_1008DC488) - 8;
  __chkstk_darwin(v254);
  v253 = &v234 - v47;
  v257 = (sub_100140278(&qword_1008DC490) - 8);
  v48 = __chkstk_darwin(v257);
  v301 = &v234 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v255 = &v234 - v51;
  __chkstk_darwin(v50);
  v300 = &v234 - v52;
  *&v297 = type metadata accessor for Date();
  *&v304 = *(v297 - 8);
  __chkstk_darwin(v297);
  v291 = &v234 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Calendar.Component();
  v251 = *(v54 - 8);
  v252 = v54;
  __chkstk_darwin(v54);
  v250 = &v234 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for Calendar();
  v280 = *(v286 - 8);
  __chkstk_darwin(v286);
  *&v249 = &v234 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for AccessibilityTraits();
  v296 = *(v282 - 8);
  __chkstk_darwin(v282);
  v281 = &v234 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100140278(&qword_1008DC498);
  v59 = __chkstk_darwin(v58 - 8);
  v292 = &v234 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v299 = &v234 - v61;
  LODWORD(v285) = *a1;
  *&v323 = sub_100081E1C(v285);
  *(&v323 + 1) = v62;
  v236 = sub_10000FCBC();
  v63 = Text.init<A>(_:)();
  v65 = v64;
  v67 = v66;
  static Font.largeTitle.getter();
  v68 = Text.font(_:)();
  v70 = v69;
  v72 = v71;

  sub_10004642C(v63, v65, v67 & 1);

  static Font.Weight.bold.getter();
  v73 = Text.fontWeight(_:)();
  v75 = v74;
  LOBYTE(v63) = v76;
  v78 = v77;
  sub_10004642C(v68, v70, v72 & 1);

  *&v323 = v73;
  *(&v323 + 1) = v75;
  LOBYTE(v324) = v63 & 1;
  *(&v324 + 1) = v78;
  v79 = v281;
  static AccessibilityTraits.isHeader.getter();
  View.accessibilityAddTraits(_:)();
  v80 = *(v296 + 8);
  v296 += 8;
  v237 = v80;
  v80(v79, v282);
  sub_10004642C(v73, v75, v63 & 1);

  v81 = v284;
  *&v248 = *(v284 + 8);
  v247 = *(v284 + 16);
  v246 = *(v284 + 24);
  *&v309 = v248;
  BYTE8(v309) = v247;
  *&v310 = v246;
  sub_100140278(&qword_1008DC3E8);
  State.projectedValue.getter();
  v289 = *(&v323 + 1);
  v290 = v323;
  v288 = v324;
  LODWORD(v68) = BYTE8(v324);
  v273 = *(v81 + 1);
  v82 = v249;
  static Calendar.current.getter();
  v84 = v250;
  v83 = v251;
  v85 = v252;
  (*(v251 + 104))(v250, enum case for Calendar.Component.year(_:), v252);
  v86 = v291;
  Date.init()();
  v287 = Calendar.component(_:from:)();
  (*(v304 + 8))(v86, v297);
  (*(v83 + 8))(v84, v85);
  (*(v280 + 8))(v82, v286);
  LODWORD(v286) = static Edge.Set.all.getter();
  LODWORD(v291) = v68;
  v348 = v68;
  v346 = 1;
  v343 = 0;
  v87 = type metadata accessor for MetricDetailHeaderView();
  v88 = v253;
  sub_10014CC80();
  sub_10014CE10(&v88[v87[7]]);
  v89 = v248;
  *&v323 = v248;
  LOBYTE(v84) = v247;
  BYTE8(v323) = v247;
  v90 = v246;
  *&v324 = v246;
  State.wrappedValue.getter();
  v91 = sub_1004A94B8(v309, SBYTE8(v309));
  v250 = v92;
  v251 = v91;
  *&v309 = v89;
  BYTE8(v309) = v84;
  *&v310 = v90;
  State.projectedValue.getter();
  v249 = v323;
  v93 = v324;
  LOBYTE(v90) = BYTE8(v324);
  v309 = *(v81 + 32);
  sub_100140278(&qword_1008DC400);
  State.projectedValue.getter();
  v248 = v323;
  v94 = v324;
  v95 = v87[11];
  v96 = type metadata accessor for MetricDetailView();
  sub_100140278(&qword_1008DC2A0);
  State.wrappedValue.getter();
  v97 = *(v304 + 56);
  *&v304 = v304 + 56;
  v252 = v97;
  v97(&v88[v95], 0, 1, v297);
  *v88 = v285;
  *&v88[v87[6]] = 0x3FE6666666666666;
  v98 = &v88[v87[8]];
  v99 = v250;
  *v98 = v251;
  v98[1] = v99;
  v100 = &v88[v87[9]];
  v101 = v248;
  *v100 = v249;
  *(v100 + 2) = v93;
  v100[24] = v90;
  v102 = &v88[v87[10]];
  *v102 = v101;
  *(v102 + 2) = v94;
  LOBYTE(v86) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v111 = &v88[*(sub_100140278(&qword_1008DC4A0) + 36)];
  *v111 = v86;
  *(v111 + 1) = v104;
  *(v111 + 2) = v106;
  *(v111 + 3) = v108;
  *(v111 + 4) = v110;
  v111[40] = 0;
  LOBYTE(v86) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v112 = &v88[*(v254 + 44)];
  *v112 = v86;
  *(v112 + 1) = v113;
  *(v112 + 2) = v114;
  *(v112 + 3) = v115;
  *(v112 + 4) = v116;
  v112[40] = 0;
  v280 = v96;
  sub_100140278(&qword_1008DC2A8);
  v117 = v256;
  State.wrappedValue.getter();
  v118 = type metadata accessor for MetricChartData();
  if ((*(*(v118 - 8) + 48))(v117, 1, v118) == 1)
  {
    v119 = 1.0;
  }

  else
  {
    v119 = 0.0;
  }

  sub_10000EA04(v117, &unk_1008EAF50);
  v120 = v255;
  sub_100015E80(v88, v255, &qword_1008DC488);
  *(v120 + *(v257 + 11)) = v119;
  sub_100015E80(v120, v300, &qword_1008DC490);
  sub_10014D018(v298);
  v121 = *(v96 + 52);
  v257 = type metadata accessor for MetricFormattingHelper;
  v122 = v260;
  sub_100152F70(v81 + v121, v260, type metadata accessor for MetricFormattingHelper);
  v123 = v261;
  State.projectedValue.getter();
  v124 = v258;
  v125 = v262;
  v252(v262, 1, 1, v297);
  sub_10001B104(v125, v263, &unk_1008F73A0);
  v126 = v259;
  State.init(wrappedValue:)();
  sub_10000EA04(v125, &unk_1008F73A0);
  v127 = &v126[v124[14]];
  LOBYTE(v309) = 0;
  GestureState.init(wrappedValue:)();
  v128 = *(&v323 + 1);
  v129 = v324;
  *v127 = v323;
  *(v127 + 1) = v128;
  *(v127 + 1) = v129;
  v130 = v285;
  *v126 = v285;
  v126[1] = 1;
  v131 = v298;
  sub_100152F70(v298, &v126[v124[8]], type metadata accessor for MetricDetailViewModel);
  sub_100152F70(v122, &v126[v124[9]], v257);
  sub_10001B104(v123, &v126[v124[10]], &qword_1008DC470);
  v132 = *(v131 + 16);
  v305[2] = v122;
  v133 = v122;
  v306 = v130;
  v134 = sub_100062474(sub_100152FD8, v305, v132);
  *&v135 = COERCE_DOUBLE(sub_100062430(v134));
  v137 = v136;

  v138 = *&v135;
  v139 = v270;
  if (v137)
  {
    v138 = 0.0;
  }

  *&v126[v124[12]] = v138;
  v140 = sub_1004D43AC(v130, v138 * 1.05263158);
  sub_10000EA04(v123, &qword_1008DC470);
  sub_1000292B4(v298, type metadata accessor for MetricDetailViewModel);
  v141 = v303;
  *&v126[v124[13]] = v140;
  v142 = v266;
  sub_1001533D4(v126, v266, type metadata accessor for MetricDetailChartView);
  sub_1000292B4(v133, type metadata accessor for MetricFormattingHelper);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v143 = v142;
  v144 = v267;
  sub_1001533D4(v143, v267, type metadata accessor for MetricDetailChartView);
  v145 = (v144 + *(v269 + 44));
  v146 = v350;
  *v145 = v349;
  v145[1] = v146;
  v145[2] = v351;
  v147 = static Edge.Set.all.getter();
  v148 = v144;
  v149 = v265;
  sub_100015E80(v148, v265, &qword_1008DC478);
  v150 = v149 + *(v268 + 44);
  *v150 = v147;
  *(v150 + 8) = 0;
  *(v150 + 16) = 0;
  v304 = xmmword_1006D4680;
  *(v150 + 24) = xmmword_1006D4680;
  *(v150 + 40) = 0;
  sub_100015E80(v149, v302, &qword_1008DC480);
  v151 = v284;
  v152 = 1;
  if (*(v284 + *(v280 + 80)) == 1)
  {
    v153 = v235;
    sub_100150258(v235);
    v154 = static Edge.Set.all.getter();
    v155 = v153 + *(v139 + 36);
    *v155 = v154;
    *(v155 + 8) = 0;
    *(v155 + 16) = 0;
    *(v155 + 24) = v304;
    *(v155 + 40) = 0;
    sub_100015E80(v153, v141, &qword_1008DC460);
    v152 = 0;
  }

  (*(v272 + 56))(v141, v152, 1, v139);
  v156 = v271;
  sub_10014D018(v271);
  v157 = *(v156 + 24);

  sub_1000292B4(v156, type metadata accessor for MetricDetailViewModel);
  if (v157 >> 62)
  {
    v158 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v158 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v158)
  {
    v159 = [objc_opt_self() mainBundle];
    v160 = String._bridgeToObjectiveC()();
    v161 = [v159 localizedStringForKey:v160 value:0 table:0];

    v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v164 = v163;

    *&v323 = v162;
    *(&v323 + 1) = v164;
    *&v304 = Text.init<A>(_:)();
    *&v298 = v165;
    v167 = v166;
    *&v297 = v168;
    LODWORD(v285) = static Edge.Set.all.getter();
    v169 = v167 & 1;
    LOBYTE(v323) = v167 & 1;
    LOBYTE(v309) = 0;
    v171 = v239;
    v170 = v240;
    v172 = v242;
    (*(v240 + 104))(v239, enum case for Font.TextStyle.title2(_:), v242);
    v173 = enum case for Font.Design.rounded(_:);
    v174 = type metadata accessor for Font.Design();
    v175 = *(v174 - 8);
    v176 = v241;
    (*(v175 + 104))(v241, v173, v174);
    (*(v175 + 56))(v176, 0, 1, v174);
    static Font.system(_:design:weight:)();
    sub_10000EA04(v176, &qword_1008DC448);
    (*(v170 + 8))(v171, v172);
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v178 = v243;
    v177 = v244;
    v179 = v245;
    (*(v244 + 104))(v243, enum case for Font.Leading.tight(_:), v245);
    v180 = Font.leading(_:)();

    (*(v177 + 8))(v178, v179);
    KeyPath = swift_getKeyPath();
    *&v323 = v304;
    *(&v323 + 1) = v298;
    LOBYTE(v324) = v169;
    *(&v324 + 1) = v297;
    LOBYTE(v325) = v285;
    *&v326[0] = 0;
    *(&v325 + 1) = 0;
    *(v326 + 8) = xmmword_1006D4690;
    BYTE8(v326[1]) = 0;
    *&v327 = KeyPath;
    *(&v327 + 1) = v180;
    v182 = v281;
    static AccessibilityTraits.isHeader.getter();
    sub_100140278(&qword_1008DC4A8);
    sub_100152FFC();
    View.accessibilityAddTraits(_:)();
    v237(v182, v282);
    v308[2] = v325;
    v308[3] = v326[0];
    v308[4] = v326[1];
    v308[5] = v327;
    v308[0] = v323;
    v308[1] = v324;
    sub_10000EA04(v308, &qword_1008DC4A8);
    v183 = v238;
    sub_10014D018(v238);
    *&v304 = *(v183 + 24);

    sub_1000292B4(v183, type metadata accessor for MetricDetailViewModel);
    sub_1000059F8(0, &unk_1008DC348);
    sub_1001530D4();
    v184 = EnvironmentObject.init()();
    v265 = v185;
    v266 = v184;
    v269 = type metadata accessor for WorkoutImageProvider();
    v272 = sub_10015313C(&qword_1008DC4E0, &type metadata accessor for WorkoutImageProvider);
    v285 = EnvironmentObject.init()();
    v282 = v186;
    type metadata accessor for SeymourCatalogItemDataProvider();
    v263 = sub_10015313C(&qword_1008DC4E8, type metadata accessor for SeymourCatalogItemDataProvider);
    v270 = EnvironmentObject.init()();
    v264 = v187;
    type metadata accessor for AAUIAwardsDataProvider();
    v261 = sub_10015313C(&qword_1008DC4F0, &type metadata accessor for AAUIAwardsDataProvider);
    v267 = EnvironmentObject.init()();
    v268 = v188;
    type metadata accessor for ActivityDashboardViewController();
    sub_10015313C(&qword_1008DC4F8, type metadata accessor for ActivityDashboardViewController);
    *&v298 = EnvironmentObject.init()();
    *&v297 = v189;
    v190 = v280;
    v281 = *(v151 + *(v280 + 60));
    v191 = v281;
    v296 = static ObservableObject.environmentStore.getter();
    v271 = *(v151 + v190[16]);
    v192 = v191;
    v272 = static ObservableObject.environmentStore.getter();
    v193 = *(v151 + v190[17]);

    v269 = static ObservableObject.environmentStore.getter();
    v194 = *(v151 + v190[18]);
    v195 = v193;
    v262 = v193;
    v196 = static ObservableObject.environmentStore.getter();
    v197 = *(v151 + v190[19]);
    v198 = v194;
    v263 = v194;
    v199 = static ObservableObject.environmentStore.getter();
    v200 = v197;
    v201 = v197;
    v202 = static Edge.Set.all.getter();
    LOBYTE(v323) = 0;
    v203 = v278;
    sub_10001B104(v283, v278, &qword_1008DC450);
    v204 = v203;
    v205 = v279;
    sub_10001B104(v204, v279, &qword_1008DC450);
    v206 = v205 + *(sub_100140278(&qword_1008DC500) + 48);
    *&v309 = v304;
    v207 = v265;
    v208 = v266;
    *(&v309 + 1) = v266;
    *&v310 = v265;
    *(&v310 + 1) = v285;
    *&v311 = v282;
    *(&v311 + 1) = v270;
    v209 = v264;
    *&v312 = v264;
    *(&v312 + 1) = v267;
    *&v313 = v268;
    *(&v313 + 1) = v298;
    *&v314 = v297;
    *(&v314 + 1) = v296;
    *&v315 = v281;
    *(&v315 + 1) = v272;
    *&v316 = v271;
    *(&v316 + 1) = v269;
    *&v317 = v193;
    *(&v317 + 1) = v196;
    *&v318 = v194;
    *(&v318 + 1) = v199;
    *&v319 = v201;
    BYTE8(v319) = v202;
    *(&v319 + 9) = *v307;
    HIDWORD(v319) = *&v307[3];
    v320 = 0uLL;
    v284 = xmmword_1006D46A0;
    v321 = xmmword_1006D46A0;
    v322 = 0;
    *(v206 + 208) = 0;
    v210 = v314;
    *(v206 + 64) = v313;
    *(v206 + 80) = v210;
    v211 = v312;
    *(v206 + 32) = v311;
    *(v206 + 48) = v211;
    v212 = v310;
    *v206 = v309;
    *(v206 + 16) = v212;
    v213 = v321;
    v214 = v315;
    v215 = v316;
    v216 = v318;
    *(v206 + 128) = v317;
    *(v206 + 144) = v216;
    *(v206 + 96) = v214;
    *(v206 + 112) = v215;
    v217 = v319;
    *(v206 + 176) = v320;
    *(v206 + 192) = v213;
    *(v206 + 160) = v217;
    sub_10001B104(&v309, &v323, &qword_1008DC508);
    sub_10000EA04(v283, &qword_1008DC450);
    *&v323 = v304;
    *(&v323 + 1) = v208;
    *&v324 = v207;
    *(&v324 + 1) = v285;
    *&v325 = v282;
    *(&v325 + 1) = v270;
    *&v326[0] = v209;
    *(&v326[0] + 1) = v267;
    *&v326[1] = v268;
    *(&v326[1] + 1) = v298;
    *&v327 = v297;
    *(&v327 + 1) = v296;
    v328 = v281;
    v329 = v272;
    v330 = v271;
    v331 = v269;
    v332 = v262;
    v333 = v196;
    v334 = v263;
    v335 = v199;
    v336 = v201;
    v337 = v202;
    *&v338[3] = *&v307[3];
    *v338 = *v307;
    v340 = 0;
    v339 = 0;
    v341 = v284;
    v342 = 0;
    sub_10000EA04(&v323, &qword_1008DC508);
    sub_10000EA04(v278, &qword_1008DC450);
    v218 = v295;
    sub_100015E80(v279, v295, &qword_1008DC440);
    (*(v274 + 56))(v218, 0, 1, v275);
  }

  else
  {
    v218 = v295;
    (*(v274 + 56))(v295, 1, 1, v275);
  }

  v219 = (v273 - 3) < 0xFFFFFFFE;
  *&v304 = v219;
  v220 = v292;
  sub_10001B104(v299, v292, &qword_1008DC498);
  sub_10001B104(v300, v301, &qword_1008DC490);
  v221 = v293;
  sub_10001B104(v302, v293, &qword_1008DC480);
  v222 = v294;
  sub_10001B104(v303, v294, &qword_1008DC468);
  v223 = v218;
  v224 = v276;
  sub_10001B104(v223, v276, &qword_1008DC458);
  v225 = v220;
  v226 = v277;
  sub_10001B104(v225, v277, &qword_1008DC498);
  v227 = sub_100140278(&qword_1008DC510);
  v228 = v226 + v227[12];
  *&v309 = v290;
  *(&v309 + 1) = v289;
  *&v310 = v288;
  BYTE8(v310) = v291;
  *(&v310 + 9) = *v347;
  HIDWORD(v310) = *&v347[3];
  *&v311 = v219;
  BYTE8(v311) = 1;
  HIDWORD(v311) = *&v345[3];
  *(&v311 + 9) = *v345;
  *&v312 = v287;
  BYTE8(v312) = v286;
  HIDWORD(v312) = *&v344[3];
  *(&v312 + 9) = *v344;
  v298 = xmmword_1006D4690;
  v297 = xmmword_1006D46B0;
  v313 = xmmword_1006D4690;
  v314 = xmmword_1006D46B0;
  LOBYTE(v315) = 0;
  *(v228 + 96) = 0;
  *(v228 + 64) = xmmword_1006D4690;
  *(v228 + 80) = xmmword_1006D46B0;
  v229 = v309;
  v230 = v310;
  v231 = v312;
  *(v228 + 32) = v311;
  *(v228 + 48) = v231;
  *v228 = v229;
  *(v228 + 16) = v230;
  sub_10001B104(v301, v226 + v227[16], &qword_1008DC490);
  sub_10001B104(v221, v226 + v227[20], &qword_1008DC480);
  sub_10001B104(v222, v226 + v227[24], &qword_1008DC468);
  sub_10001B104(v224, v226 + v227[28], &qword_1008DC458);
  v232 = v226 + v227[32];
  *v232 = 0;
  *(v232 + 8) = 1;
  sub_10001B104(&v309, &v323, &qword_1008DC518);
  sub_10000EA04(v295, &qword_1008DC458);
  sub_10000EA04(v303, &qword_1008DC468);
  sub_10000EA04(v302, &qword_1008DC480);
  sub_10000EA04(v300, &qword_1008DC490);
  sub_10000EA04(v299, &qword_1008DC498);
  sub_10000EA04(v224, &qword_1008DC458);
  sub_10000EA04(v294, &qword_1008DC468);
  sub_10000EA04(v293, &qword_1008DC480);
  sub_10000EA04(v301, &qword_1008DC490);
  *&v323 = v290;
  *(&v323 + 1) = v289;
  *&v324 = v288;
  BYTE8(v324) = v291;
  *(&v324 + 9) = *v347;
  HIDWORD(v324) = *&v347[3];
  *&v325 = v304;
  BYTE8(v325) = 1;
  *(&v325 + 9) = *v345;
  HIDWORD(v325) = *&v345[3];
  *&v326[0] = v287;
  BYTE8(v326[0]) = v286;
  HIDWORD(v326[0]) = *&v344[3];
  *(v326 + 9) = *v344;
  v326[1] = v298;
  v327 = v297;
  LOBYTE(v328) = 0;
  sub_10000EA04(&v323, &qword_1008DC518);
  return sub_10000EA04(v292, &qword_1008DC498);
}

uint64_t sub_100150258@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v34 = type metadata accessor for BorderedProminentButtonStyle();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricDetailView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100140278(&qword_1008DC520);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = sub_100140278(&qword_1008DC528);
  v12 = *(v11 - 8);
  v35 = v11;
  v36 = v12;
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  sub_100152F70(v1, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MetricDetailView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1001533D4(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for MetricDetailView);
  v39 = v1;
  sub_100140278(&qword_1008DC530);
  sub_1001531EC(&qword_1008DC538, &qword_1008DC530);
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  v17 = sub_10014A6B0(&qword_1008DC540, &qword_1008DC520);
  v18 = sub_10015313C(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle);
  v19 = v34;
  View.buttonStyle<A>(_:)();
  (*(v37 + 8))(v3, v19);
  (*(v8 + 8))(v10, v7);
  Solarium.init()();
  sub_100140278(&qword_1008DC550);
  v40 = v7;
  v41 = v19;
  v42 = v17;
  v43 = v18;
  swift_getOpaqueTypeConformance2();
  sub_10015325C();
  v20 = v38;
  v21 = v35;
  View.staticIf<A, B>(_:then:)();
  (*(v36 + 8))(v14, v21);
  v22 = (v20 + *(sub_100140278(&qword_1008DC570) + 36));
  v23 = v20;
  v24 = *(sub_100140278(&qword_1008DC578) + 28);
  v25 = enum case for ControlSize.large(_:);
  v26 = type metadata accessor for ControlSize();
  (*(*(v26 - 8) + 104))(v22 + v24, v25, v26);
  *v22 = swift_getKeyPath();
  v27 = sub_100046170();
  v28 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v40 = v28;
  v30 = AnyShapeStyle.init<A>(_:)();
  result = sub_100140278(&qword_1008DC580);
  v32 = (v23 + *(result + 36));
  *v32 = KeyPath;
  v32[1] = v30;
  return result;
}

uint64_t sub_1001507E0()
{
  sub_100140278(&qword_1008DC3E8);
  State.wrappedValue.getter();
  if (v2)
  {
    State.wrappedValue.getter();
    return v1;
  }

  else
  {
    sub_100140278(&qword_1008DC400);
    State.wrappedValue.getter();
    return sub_1004ABC14(v1);
  }
}

uint64_t sub_1001508B8()
{
  v0 = sub_100140278(&unk_1008EAF50);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  sub_1001507E0();
  v6 = type metadata accessor for MetricChartData();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MetricDetailView();
  sub_10001B104(v5, v3, &unk_1008EAF50);
  sub_100140278(&qword_1008DC2A8);
  State.wrappedValue.setter();
  sub_10000EA04(v5, &unk_1008EAF50);
  v7 = sub_1001507E0();
  return sub_1001510F4(v7, v8 & 1);
}

uint64_t sub_100150A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = type metadata accessor for MetricDetailView();
  v3[3] = v4;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v3[5] = *(v5 + 64);
  v3[6] = swift_task_alloc();
  sub_100140278(&qword_1008E1760);
  v3[7] = swift_task_alloc();
  sub_100140278(&unk_1008EAF50);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100150B8C, v7, v6);
}

uint64_t sub_100150B8C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[2];

  sub_1001507E0();
  v7 = type metadata accessor for MetricChartData();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_10001B104(v2, v1, &unk_1008EAF50);
  sub_100140278(&qword_1008DC2A8);
  State.wrappedValue.setter();
  sub_10000EA04(v2, &unk_1008EAF50);
  v8 = sub_1001507E0();
  sub_1001510F4(v8, v9 & 1);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_100152F70(v6, v3, type metadata accessor for MetricDetailView);
  v11 = static MainActor.shared.getter();
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_1001533D4(v3, v13 + v12, type metadata accessor for MetricDetailView);
  sub_10026E198(0, 0, v4, &unk_1006D4880, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100150DE0(_BYTE *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for MetricDetailView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100140278(&qword_1008E1760);
  result = __chkstk_darwin(v8 - 8);
  v11 = &v24[-v10];
  v12 = *a1;
  v13 = *a2;
  if (v13 - 4 < 0x22)
  {
    if (v12 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v13 >= 4)
  {
    if (v12 != 2)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (!*a1)
  {
LABEL_3:
    v14 = type metadata accessor for TaskPriority();
    v15 = *(v14 - 8);
    v28 = *(v15 + 56);
    v29 = v15 + 56;
    v28(v11, 1, 1, v14);
    v27 = type metadata accessor for MetricDetailView;
    sub_100152F70(a2, &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MetricDetailView);
    v26 = type metadata accessor for MainActor();
    v16 = static MainActor.shared.getter();
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = &protocol witness table for MainActor;
    sub_1001533D4(v7, v18 + v17, type metadata accessor for MetricDetailView);
    sub_10026E198(0, 0, v11, &unk_1006D4858, v18);

    v19 = sub_1001507E0();
    v25 = v20;
    v28(v11, 1, 1, v14);
    sub_100152F70(a2, v7, v27);
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = &protocol witness table for MainActor;
    sub_1001533D4(v7, v22 + v17, type metadata accessor for MetricDetailView);
    v23 = v22 + ((v17 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v23 = v19;
    *(v23 + 8) = v25 & 1;
    sub_10026E198(0, 0, v11, &unk_1006D4868, v22);
  }

  return result;
}

uint64_t sub_1001510F4(uint64_t (*a1)(char *, uint64_t, uint64_t), char a2)
{
  v5 = type metadata accessor for MetricDetailView();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v7 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for MetricDetailViewModel();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 & 1;
  sub_1003C500C(*v2, a1, v14, v13);
  static Animation.easeInOut.getter();
  v23 = v2;
  v24 = a1;
  v25 = v14;
  v26 = v13;
  withAnimation<A>(_:_:)();

  if ((v13[*(v11 + 48)] & 1) == 0)
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    sub_100152F70(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MetricDetailView);
    type metadata accessor for MainActor();
    v16 = static MainActor.shared.getter();
    v17 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = &protocol witness table for MainActor;
    sub_1001533D4(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for MetricDetailView);
    v19 = v18 + ((v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v19 = a1;
    *(v19 + 8) = v14;
    sub_10026E198(0, 0, v9, &unk_1006D4888, v18);
  }

  return sub_1000292B4(v13, type metadata accessor for MetricDetailViewModel);
}

uint64_t sub_1001513E8(uint64_t a1, Swift::UInt a2, char a3, uint64_t a4)
{
  v8 = sub_100140278(&qword_1008DC408);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  sub_100152F70(a4, v16 - v9, type metadata accessor for MetricDetailViewModel);
  v11 = type metadata accessor for MetricDetailViewModel();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = (a1 + *(type metadata accessor for MetricDetailView() + 40));
  v14 = v12[1];
  v17 = *v12;
  v13 = v17;
  v18 = v14;

  sub_100140278(&qword_1008DC410);
  State.wrappedValue.getter();
  sub_1005595D8(v10, a2, a3 & 1);
  v16[1] = v13;
  v16[2] = v14;
  v16[0] = v19;
  State.wrappedValue.setter();
}

uint64_t sub_100151574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  sub_100140278(&qword_1008DC408);
  *(v6 + 32) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 40) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 48) = v8;
  *(v6 + 56) = v7;

  return _swift_task_switch(sub_100151648, v8, v7);
}

uint64_t sub_100151648()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  type metadata accessor for MetricDetailView();
  v3 = *v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_100151708;
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);

  return sub_1003C59C0(v5, v3, v6, v1 & 1);
}

uint64_t sub_100151708()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100151828, v3, v2);
}

uint64_t sub_100151828()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 72);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  static Animation.easeInOut.getter();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2 & 1;
  *(v5 + 40) = v1;
  withAnimation<A>(_:_:)();

  sub_10000EA04(v1, &qword_1008DC408);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10015192C(uint64_t a1, Swift::UInt a2, char a3, uint64_t a4)
{
  v8 = sub_100140278(&qword_1008DC408);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  sub_10001B104(a4, v15 - v9, &qword_1008DC408);
  v11 = (a1 + *(type metadata accessor for MetricDetailView() + 40));
  v13 = v11[1];
  v16 = *v11;
  v12 = v16;
  v17 = v13;

  sub_100140278(&qword_1008DC410);
  State.wrappedValue.getter();
  sub_1005595D8(v10, a2, a3 & 1);
  v15[1] = v12;
  v15[2] = v13;
  v15[0] = v18;
  State.wrappedValue.setter();
}

uint64_t sub_100151A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Date();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_100151B74, v7, v6);
}

uint64_t sub_100151B74()
{
  v1 = v0[2];
  v0[10] = type metadata accessor for MetricDetailView();
  v2 = *v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100151C28;
  v4 = v0[6];

  return sub_100698DA8(v4, v2);
}

uint64_t sub_100151C28()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100151D48, v3, v2);
}

uint64_t sub_100151D48()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  (*(v3 + 16))(v2, v1, v4);
  sub_100140278(&qword_1008DC2A0);
  State.wrappedValue.setter();
  (*(v3 + 8))(v1, v4);

  v5 = v0[1];

  return v5();
}

void sub_100151E34(uint64_t a1)
{
  type metadata accessor for MetricDetailView();
  LODWORD(a1) = *(a1 + 1);
  sub_100140278(&qword_1008DC3E8);
  State.wrappedValue.getter();
  sub_10038FF78(a1, v2, v3);
}

void sub_100151EC4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v4 - 8);
  v6 = v46 - v5;
  v47 = type metadata accessor for Font.TextStyle();
  v7 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_100140278(&unk_1008E4E50);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D46C0;
  v16 = sub_1000492D8(*(a1 + 1));
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_10000A788();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v46[2] = v14;
  v19 = String.init(format:_:)();
  v21 = v20;
  *&v48 = v19;
  *(&v48 + 1) = v20;
  sub_10000FCBC();
  v46[1] = v21;

  v22 = Text.init<A>(_:)();
  v24 = v23;
  LOBYTE(v16) = v25;
  v26 = v47;
  (*(v7 + 104))(v9, enum case for Font.TextStyle.body(_:), v47);
  v27 = type metadata accessor for Font.Design();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  static Font.system(_:design:weight:)();
  sub_10000EA04(v6, &qword_1008DC448);
  (*(v7 + 8))(v9, v26);
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;

  sub_10004642C(v22, v24, v16 & 1);

  v33 = [objc_opt_self() keyColors];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 nonGradientTextColor];

    if (v35)
    {

      *&v48 = Color.init(uiColor:)();
      v36 = Text.foregroundStyle<A>(_:)();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      sub_10004642C(v28, v30, v32 & 1);

      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v55 = v40 & 1;
      *a2 = v36;
      *(a2 + 8) = v38;
      *(a2 + 16) = v40 & 1;
      *(a2 + 24) = v42;
      v43 = v53;
      *(a2 + 96) = v52;
      *(a2 + 112) = v43;
      *(a2 + 128) = v54;
      v44 = v49;
      *(a2 + 32) = v48;
      *(a2 + 48) = v44;
      v45 = v51;
      *(a2 + 64) = v50;
      *(a2 + 80) = v45;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100152360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_100140278(&qword_1008DC550) + 36));
  sub_100140278(&qword_1008DC568);
  static ButtonBorderShape.capsule.getter();
  *v4 = swift_getKeyPath();
  v5 = sub_100140278(&qword_1008DC528);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

unint64_t sub_10015243C()
{
  result = qword_1008DC3F8;
  if (!qword_1008DC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC3F8);
  }

  return result;
}

uint64_t sub_1001524E4()
{
  v2 = *(type metadata accessor for MetricDetailView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002BBC0;

  return sub_100150A10(v4, v5, v0 + v3);
}

uint64_t sub_1001525C0(_BYTE *a1)
{
  v3 = *(type metadata accessor for MetricDetailView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_100150DE0(a1, v4);
}

uint64_t sub_100152630(uint64_t a1)
{
  v4 = *(type metadata accessor for MetricDetailView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_100151A74(a1, v6, v7, v1 + v5);
}

uint64_t sub_100152720(uint64_t a1)
{
  v4 = *(type metadata accessor for MetricDetailView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002BBC0;

  return sub_100151574(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100152880()
{
  v1 = type metadata accessor for MetricDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = v0 + v3 + v1[9];
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_100140278(&qword_1008DC2A0);

  v8 = (v0 + v3 + v1[11]);
  v9 = type metadata accessor for MetricChartData();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v7(v8 + *(v9 + 20), v6);
  }

  sub_100140278(&qword_1008DC2A8);

  v10 = (v4 + v1[13]);
  v11 = type metadata accessor for MetricFormattingHelper();
  v12 = *(v11 + 20);
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 8))(v10 + v12, v13);

  return _swift_deallocObject(v0, v3 + v15, v2 | 7);
}

uint64_t sub_100152B84()
{
  v1 = type metadata accessor for MetricDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = v0 + v3 + v1[9];
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_100140278(&qword_1008DC2A0);

  v8 = (v0 + v3 + v1[11]);
  v9 = type metadata accessor for MetricChartData();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v7(v8 + *(v9 + 20), v6);
  }

  v10 = (v16 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100140278(&qword_1008DC2A8);

  v11 = (v4 + v1[13]);
  v12 = type metadata accessor for MetricFormattingHelper();
  v13 = *(v12 + 20);
  v14 = type metadata accessor for AttributedString();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);

  return _swift_deallocObject(v0, v10 + 9, v2 | 7);
}

uint64_t sub_100152E3C(uint64_t a1)
{
  v4 = *(type metadata accessor for MetricDetailView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002BACC;

  return sub_100151574(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100152F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100152FFC()
{
  result = qword_1008DC4B0;
  if (!qword_1008DC4B0)
  {
    sub_100141EEC(&qword_1008DC4A8);
    sub_1001531EC(&qword_1008DC4B8, &qword_1008DC4C0);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC4B0);
  }

  return result;
}

unint64_t sub_1001530D4()
{
  result = qword_1008DC4D8;
  if (!qword_1008DC4D8)
  {
    sub_1000059F8(255, &unk_1008DC348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC4D8);
  }

  return result;
}

uint64_t sub_10015313C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100153184()
{
  v1 = *(type metadata accessor for MetricDetailView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_100151E34(v2);
}

uint64_t sub_1001531EC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10015325C()
{
  result = qword_1008DC558;
  if (!qword_1008DC558)
  {
    sub_100141EEC(&qword_1008DC550);
    sub_100141EEC(&qword_1008DC520);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10014A6B0(&qword_1008DC540, &qword_1008DC520);
    sub_10015313C(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DC560, &qword_1008DC568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC558);
  }

  return result;
}

uint64_t sub_1001533D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100153440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10015351C(uint64_t a1)
{
  v2 = sub_10005850C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100153558(uint64_t a1)
{
  v2 = sub_10005850C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100153594(uint64_t a1, void *a2, unsigned int a3)
{
  Hasher.init(_seed:)();
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_100035B30(v7, a3);
  String.hash(into:)();

  if (!a3 || a3 == 2)
  {
    Hasher._combine(_:)(a1);
  }

  else if (a3 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)((a3 >> 8) & 1);
  return Hasher._finalize()();
}

uint64_t sub_100153654()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001536C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100157F78(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

Swift::Int sub_100153700()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_100153594(*v0, *(v0 + 8), v1 | *(v0 + 16));
}

void sub_100153720()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  sub_100035B30(*v0, *(v0 + 16));
  String.hash(into:)();

  if (!v2 || v2 == 2)
  {
    Hasher._combine(_:)(v1);
  }

  else if (v2 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_1001537CC()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  Hasher.init(_seed:)();
  v6._countAndFlagsBits = v2;
  v6._object = v1;
  sub_100035B30(v6, v3);
  String.hash(into:)();

  if (!v3 || v3 == 2)
  {
    Hasher._combine(_:)(v2);
  }

  else if (v3 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_10015388C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 17);
  v3 = *(a2 + 17);
  return sub_100054C8C(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & ~(v2 ^ v3) & 1;
}

id sub_1001538D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryConfigurationProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1001539A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001539B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001539F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100153A40()
{
  result = qword_1008DC5F0;
  if (!qword_1008DC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC5F0);
  }

  return result;
}

uint64_t sub_100153A94(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1005F674C();
  v4 = result;
  v5 = *(result + 16);
  if (!v5)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_20:

    return v8;
  }

  v6 = 0;
  v7 = (result + 48);
  v8 = _swiftEmptyArrayStorage;
  while (v6 < *(v4 + 16))
  {
    v10 = *(v7 - 2);
    v9 = *(v7 - 1);
    v11 = *v7;
    v25[0] = v10;
    v25[1] = v9;
    v26 = v11;
    sub_10001D510(v10, v9, v11);
    sub_100153C4C(v25, a3, a2, a1, v23, &v24);
    result = sub_10001D4F8(v10, v9, v11);
    v12 = v24;
    v13 = *(v24 + 2);
    v14 = *(v8 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      goto LABEL_22;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v8 + 3) >> 1)
    {
      if (*(v12 + 2))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_1001A1BE0(result, v16, 1, v8);
      v8 = result;
      if (*(v12 + 2))
      {
LABEL_15:
        if ((*(v8 + 3) >> 1) - *(v8 + 2) < v13)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v8 + 2);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_25;
          }

          *(v8 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v6;
    v7 += 24;
    if (v5 == v6)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100153C4C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char **a6@<X8>)
{
  v80 = a5;
  v77 = a6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  result = __chkstk_darwin(v11);
  v15 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a1;
  v85 = *(a1 + 8);
  v17 = *(a1 + 16);
  if (v17 == 2)
  {
    if ((~a2 & 0x30) == 0)
    {
      result = sub_100358270(v16, a3);
      if (result)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  if (v17 != 3)
  {
    goto LABEL_24;
  }

  if (!(v85 | v16))
  {
LABEL_23:
    v21 = _swiftEmptyArrayStorage;
LABEL_143:
    *v77 = v21;
    return result;
  }

  if (v16 == 7 && !v85)
  {
    if ((a2 & 2) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v16 != 5 || v85)
  {
    if (v16 == 6 && !v85)
    {
      v79 = a4;
      v18 = type metadata accessor for FitnessPlusFeatures();
      v83 = v18;
      v84 = sub_100158BDC(&qword_1008DC5F8, &type metadata accessor for FitnessPlusFeatures);
      v19 = sub_100005994(v81);
      (*(*(v18 - 8) + 104))(v19, enum case for FitnessPlusFeatures.sampleContent(_:), v18);
      v20 = isFeatureEnabled(_:)();
      result = sub_100005A40(v81);
      v21 = _swiftEmptyArrayStorage;
      if ((v20 & 1) == 0)
      {
        goto LABEL_143;
      }

      a4 = v79;
      if ((a2 & 6) != 2)
      {
        goto LABEL_143;
      }

      goto LABEL_24;
    }

    if (v16 == 8 && !v85 && (a2 & 0x10) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((~a2 & 6) != 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v81[0] = v16;
  v81[1] = v85;
  v82 = v17;
  __chkstk_darwin(result);
  *&v65[-16] = v81;
  result = sub_100321D2C(sub_100158184, &v65[-32], &off_10083DD48);
  v73 = v6;
  if ((result & 1) != 0 && (a2 & 0x40) == 0)
  {
    goto LABEL_26;
  }

  result = &off_10083DEA8;
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      if (v16 != 1 || v85)
      {
        result = off_100847928[v16];
      }

      else
      {
        if ((a2 & 0x89) != 0x80)
        {
LABEL_26:
          v21 = _swiftEmptyArrayStorage;
          goto LABEL_143;
        }

        result = &off_10083DE80;
      }
    }
  }

  else if (v17)
  {
    v85 = *(a4 + 16);
    if (v85)
    {
      v22 = 0;
      v78 = *(v12 + 16);
      v79 = v12 + 16;
      v76 = a4 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v23 = *(v12 + 72);
      v74 = (v12 + 8);
      v75 = v23;
      v21 = _swiftEmptyArrayStorage;
      do
      {
        v24 = v11;
        (v78)(v15, v76 + v75 * v22, v11);
        v25 = UUID.uuidString.getter();
        v27 = v26;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v28 = *(v81[0] + 16);
        if (v28)
        {
          v29 = (v81[0] + 49);
          while (1)
          {
            if ((*v29 & 1) == 0 && *(v29 - 1) == 1)
            {
              v30 = *(v29 - 17) == v25 && *(v29 - 9) == v27;
              if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }
            }

            v29 += 24;
            if (!--v28)
            {
              goto LABEL_44;
            }
          }

          v11 = v24;
          result = (*v74)(v15, v24);
        }

        else
        {
LABEL_44:

          v11 = v24;
          (*v74)(v15, v24);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1001A1BE0(0, *(v21 + 2) + 1, 1, v21);
            v21 = result;
          }

          v32 = *(v21 + 2);
          v31 = *(v21 + 3);
          if (v32 >= v31 >> 1)
          {
            result = sub_1001A1BE0((v31 > 1), v32 + 1, 1, v21);
            v21 = result;
          }

          *(v21 + 2) = v32 + 1;
          v33 = &v21[24 * v32];
          *(v33 + 4) = v25;
          *(v33 + 5) = v27;
          *(v33 + 24) = 1;
        }

        ++v22;
      }

      while (v22 != v85);
      goto LABEL_143;
    }

    goto LABEL_26;
  }

  v79 = *(result + 16);
  if (!v79)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_142:

    goto LABEL_143;
  }

  v34 = 0;
  v78 = (result + 32);
  v35 = v16 != 9;
  v36 = v16 != 8;
  v37 = v16 != 7;
  v38 = v16 != 6;
  v39 = v16 != 5;
  v40 = v16 != 4;
  v41 = v16 != 3;
  v42 = v16 != 2;
  v43 = v16 != 1;
  if (v85)
  {
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
  }

  if (v17 != 3)
  {
    v35 = 1;
  }

  LODWORD(v76) = v35;
  v44 = v17 != 3 || v36;
  LODWORD(v75) = v44;
  v45 = v17 != 3 || v37;
  LODWORD(v74) = v45;
  v46 = v17 != 3 || v38;
  v47 = v17 != 3 || v39;
  v71 = v47;
  v72 = v46;
  v48 = v17 != 3 || v40;
  v49 = v17 != 3 || v41;
  v69 = v49;
  v70 = v48;
  v50 = v17 != 3 || v42;
  v51 = v17 != 3 || v43;
  v67 = v51;
  v68 = v50;
  if (v85 | v16)
  {
    v52 = 0;
  }

  else
  {
    v52 = v17 == 3;
  }

  v66 = v52;
  v21 = _swiftEmptyArrayStorage;
  while (v34 < *(result + 16))
  {
    v53 = result;
    v54 = v78[v34];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v55 = *(v81[0] + 16);
    if (v55)
    {
      v56 = v55 - 1;
      for (i = (v81[0] + 49); ; i += 24)
      {
        if (v54 != *i)
        {
          goto LABEL_94;
        }

        v58 = *(i - 17);
        v59 = *(i - 9);
        if (*(i - 1) <= 1u)
        {
          break;
        }

        if (*(i - 1) == 2)
        {
          if (v17 == 2)
          {
LABEL_102:
            if (v58 == v16)
            {
              goto LABEL_88;
            }
          }

LABEL_94:
          if (!v56)
          {
            goto LABEL_136;
          }

          goto LABEL_95;
        }

        if (v58 > 4)
        {
          if (v58 <= 6)
          {
            if (v58 ^ 5 | v59)
            {
              if ((v72 & 1) == 0)
              {
LABEL_88:

                result = v53;
                goto LABEL_89;
              }
            }

            else if ((v71 & 1) == 0)
            {
              goto LABEL_88;
            }
          }

          else if (v58 ^ 7 | v59)
          {
            if (v58 ^ 8 | v59)
            {
              if ((v76 & 1) == 0)
              {
                goto LABEL_88;
              }
            }

            else if ((v75 & 1) == 0)
            {
              goto LABEL_88;
            }
          }

          else if ((v74 & 1) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_94;
        }

        if (v58 > 1)
        {
          if (v58 ^ 2 | v59)
          {
            if (v58 ^ 3 | v59)
            {
              if ((v70 & 1) == 0)
              {
                goto LABEL_88;
              }
            }

            else if ((v69 & 1) == 0)
            {
              goto LABEL_88;
            }
          }

          else if ((v68 & 1) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_94;
        }

        if (v58 | v59)
        {
          if ((v67 & 1) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_94;
        }

        v60 = v66;
        if (!v56)
        {
          v60 = 1;
        }

        if (v60)
        {
          goto LABEL_136;
        }

LABEL_95:
        --v56;
      }

      if (!*(i - 1) && !v17)
      {
        goto LABEL_102;
      }

      goto LABEL_94;
    }

LABEL_136:

    sub_10001D510(v16, v85, v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1001A1BE0(0, *(v21 + 2) + 1, 1, v21);
    }

    v62 = *(v21 + 2);
    v61 = *(v21 + 3);
    if (v62 >= v61 >> 1)
    {
      v21 = sub_1001A1BE0((v61 > 1), v62 + 1, 1, v21);
    }

    result = v53;
    *(v21 + 2) = v62 + 1;
    v63 = &v21[24 * v62];
    v64 = v85;
    *(v63 + 4) = v16;
    *(v63 + 5) = v64;
    v63[48] = v17;
    v63[49] = v54;
LABEL_89:
    if (++v34 == v79)
    {
      goto LABEL_142;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100154514(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = a2[3];
  v8 = a2[4];
  sub_1000066AC(a2, v7);
  if (v6 != ((*(v8 + 24))(v7, v8) & 1))
  {
    return 0;
  }

  v10 = a2[3];
  v11 = a2[4];
  sub_1000066AC(a2, v10);
  v12 = (*(v11 + 16))(v10, v11);
  v14 = v13;
  LOBYTE(v10) = v15;
  v16 = sub_100054C8C(v3, v4, v5, v12, v13, v15);
  sub_10001D4F8(v12, v14, v10);
  return v16 & 1;
}

BOOL sub_10015461C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = (v7 + 49);
  v3 = *(v7 + 16) + 1;
  while (--v3)
  {
    v4 = v2;
    v2 += 24;
    if ((*v4 & 1) == 0 && !*(v4 - 1) && v1 == *(v4 - 17))
    {
      break;
    }
  }

  v5 = v3 == 0;

  return v5;
}

void sub_1001546E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = static os_log_type_t.default.getter();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v4))
  {
    log = v5;
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10000AFDC(v7, v8, &v14);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    sub_10001D510(v1, v2, v3);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000AFDC(v10, v11, &v14);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, log, v4, "%s loaded card type from stored configuration: %s", v6, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100154884(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 49); ; i += 24)
    {
      v6 = *(i - 17);
      v7 = *(i - 9);
      v8 = *(i - 1);
      v9 = *i;
      v10[0] = v6;
      v10[1] = v7;
      v11 = v8;
      v12 = v9;
      sub_10001D510(v6, v7, v8);
      sub_100156120(v10, a2);
      if (v2)
      {
        break;
      }

      result = sub_10001D4F8(v6, v7, v8);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_10001D4F8(v6, v7, v8);
  }

  return result;
}

uint64_t sub_100154948(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 48); ; i += 24)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9[0] = v6;
      v9[1] = v7;
      v10 = v8;
      sub_10001D510(v6, v7, v8);
      sub_100155B3C(v9, a2);
      if (v2)
      {
        break;
      }

      result = sub_10001D4F8(v6, v7, v8);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_10001D4F8(v6, v7, v8);
  }

  return result;
}

uint64_t sub_100154A0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v24 = _swiftEmptyArrayStorage;
    sub_100185B14(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v5 = a1 + 32;
    do
    {
      sub_100007C5C(v5, v21);
      v6 = v22;
      v7 = v23;
      sub_1000066AC(v21, v22);
      v8 = (*(v7 + 16))(v6, v7);
      v10 = v9;
      v12 = v11;
      v13 = v22;
      v14 = v23;
      sub_1000066AC(v21, v22);
      v15 = (*(v14 + 24))(v13, v14);
      sub_100005A40(v21);
      v24 = v3;
      v17 = v3[2];
      v16 = v3[3];
      if (v17 >= v16 >> 1)
      {
        sub_100185B14((v16 > 1), v17 + 1, 1);
        v3 = v24;
      }

      v3[2] = v17 + 1;
      v18 = &v3[3 * v17];
      v18[4] = v8;
      v18[5] = v10;
      *(v18 + 48) = v12;
      *(v18 + 49) = v15 & 1;
      v5 += 40;
      --v2;
    }

    while (v2);
    v1 = v20;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = v3;
  v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1001588FC();
}

uint64_t sub_100154C08(unsigned int a1)
{
  if (*(v1 + OBJC_IVAR____TtC10FitnessApp28SummaryConfigurationProvider_didSetToDefaultConfiguration))
  {
    sub_100158C24(a1);
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    return static Published.subscript.setter();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = sub_100154D9C(a1, v7);

    sub_100155508(a1, v5);

    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v1;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1001588FC();
  }
}

uint64_t sub_100154D9C(unsigned int a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v72 = _swiftEmptyArrayStorage;
  if ((a1 & 0x40) == 0)
  {
    sub_10019ECD4(&off_10083DD48);
  }

  if ((a1 & 6) != 6)
  {
    v4 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1001A1BC4(0, *(v72 + 2) + 1, 1, v72);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1001A1BC4((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[24 * v6];
    *(v7 + 2) = xmmword_1006D4A80;
    v7[48] = 3;
    v72 = v4;
  }

  v8 = type metadata accessor for FitnessPlusFeatures();
  v70 = v8;
  v71 = sub_100158BDC(&qword_1008DC5F8, &type metadata accessor for FitnessPlusFeatures);
  v9 = sub_100005994(v68);
  (*(*(v8 - 8) + 104))(v9, enum case for FitnessPlusFeatures.sampleContent(_:), v8);
  v10 = isFeatureEnabled(_:)();
  sub_100005A40(v68);
  if ((a1 & 6) != 2 || (v10 & 1) == 0)
  {
    v11 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1001A1BC4(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1001A1BC4((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[24 * v13];
    *(v14 + 2) = xmmword_1006D4A90;
    v14[48] = 3;
    v72 = v11;
  }

  if ((a1 & 2) == 0)
  {
    v15 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1001A1BC4(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1001A1BC4((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[24 * v17];
    *(v18 + 2) = xmmword_1006D4AA0;
    v18[48] = 3;
    v72 = v15;
  }

  v19 = a1 & 1;
  if ((a1 & 9) != 0)
  {
    v20 = static os_log_type_t.default.getter();
    v21 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v20))
    {
      v22 = v21;
      v23 = a2;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v68[0] = v25;
      *v24 = 136315650;
      v26 = _typeName(_:qualified:)();
      v28 = sub_10000AFDC(v26, v27, v68);

      *(v24 + 4) = v28;
      *(v24 + 12) = 1024;
      *(v24 + 14) = (a1 >> 3) & 1;
      *(v24 + 18) = 1024;
      *(v24 + 20) = v19;
      _os_log_impl(&_mh_execute_header, v22, v20, "%s removing load card.\nuserProfile contains standalone: %{BOOL}d,\nuserProfile contains fitnessJr: %{BOOL}d", v24, 0x18u);
      sub_100005A40(v25);

      a2 = v23;
    }

    v29 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_56:
      v29 = sub_1001A1BC4(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1001A1BC4((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[24 * v31];
    *(v32 + 2) = xmmword_1006D4AB0;
    v32[48] = 3;
    v72 = v29;
  }

  if (v19)
  {
    v33 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1001A1BC4(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_1001A1BC4((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v36 = &v33[24 * v35];
    *(v36 + 2) = xmmword_1006D4AC0;
    v36[48] = 3;
    v72 = v33;
  }

  v37 = *(a2 + 16);
  v38 = _swiftEmptyArrayStorage;
  v62 = a2;
  if (v37)
  {
    v68[0] = _swiftEmptyArrayStorage;
    sub_100185B4C(0, v37, 0);
    v38 = v68[0];
    v39 = (a2 + 48);
    do
    {
      v40 = *(v39 - 2);
      v41 = *(v39 - 1);
      v42 = *v39;
      sub_10001D510(v40, v41, *v39);
      v68[0] = v38;
      v19 = v38[2];
      v43 = v38[3];
      if (v19 >= v43 >> 1)
      {
        sub_100185B4C((v43 > 1), v19 + 1, 1);
        v38 = v68[0];
      }

      v39 += 24;
      v38[2] = v19 + 1;
      v44 = &v38[3 * v19];
      v44[4] = v40;
      v44[5] = v41;
      *(v44 + 48) = v42;
      --v37;
    }

    while (v37);
  }

  v45 = v72;
  v46 = *(v72 + 2);
  if (v46)
  {
    a2 = 0;
    v47 = v72 + 48;
    v65 = *(v72 + 2);
    v60 = v46 - 1;
    v64 = _swiftEmptyArrayStorage;
    v66 = v38;
    v61 = v72 + 48;
    do
    {
      v29 = &v47[24 * a2];
      v48 = a2;
      while (1)
      {
        if (v48 >= *(v45 + 2))
        {
          __break(1u);
          goto LABEL_56;
        }

        v49 = v45;
        v51 = *(v29 - 1);
        v52 = *v29;
        a2 = v48 + 1;
        v68[0] = *(v29 - 2);
        v50 = v68[0];
        v68[1] = v51;
        v69 = v52;
        __chkstk_darwin(v45);
        v19 = v59;
        v59[2] = v68;
        sub_10001D510(v50, v51, v52);
        if (sub_100321D2C(sub_100159388, v59, v66))
        {
          break;
        }

        sub_10001D4F8(v50, v51, v52);
        v29 += 24;
        ++v48;
        v45 = v49;
        if (v65 == a2)
        {
          goto LABEL_54;
        }
      }

      v53 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100185B4C(0, v53[2] + 1, 1);
        v53 = v67;
      }

      v45 = v49;
      v19 = v53[2];
      v55 = v53[3];
      if (v19 >= v55 >> 1)
      {
        sub_100185B4C((v55 > 1), v19 + 1, 1);
        v45 = v49;
        v53 = v67;
      }

      v53[2] = v19 + 1;
      v64 = v53;
      v56 = &v53[3 * v19];
      v56[4] = v50;
      v56[5] = v51;
      *(v56 + 48) = v52;
      v47 = v61;
    }

    while (v60 != v48);
  }

  else
  {
    v64 = _swiftEmptyArrayStorage;
  }

LABEL_54:

  v68[0] = v62;
  v57 = v64;

  sub_100154948(v57, v68);

  return v68[0];
}

uint64_t sub_100155508(char a1, uint64_t a2)
{
  LOBYTE(v3) = a1;
  ObjectType = swift_getObjectType();
  v5 = *(a2 + 16);
  v6 = _swiftEmptyArrayStorage;
  v50 = a2;
  if (v5)
  {
    v56[0] = _swiftEmptyArrayStorage;
    sub_100185B4C(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (a2 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      sub_10001D510(v8, v9, *v7);
      v56[0] = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_100185B4C((v11 > 1), v12 + 1, 1);
        v6 = v56[0];
      }

      v7 += 24;
      v6[2] = v12 + 1;
      v13 = &v6[3 * v12];
      v13[4] = v8;
      v13[5] = v9;
      *(v13 + 48) = v10;
      --v5;
    }

    while (v5);
  }

  v55 = v6;
  if ((v3 & 0x40) != 0)
  {
    v15 = sub_1001A1BE0(0, 1, 1, _swiftEmptyArrayStorage);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    v18 = v15;
    v19 = v16 >> 1;
    v20 = (v17 + 1);
    if (v16 >> 1 > v17)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

  v14 = _swiftEmptyArrayStorage;
  while (1)
  {
    if ((~v3 & 6) != 0)
    {
      v26 = v14;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1001A1BE0(0, *(v14 + 2) + 1, 1, v14);
      }

      v25 = *(v14 + 2);
      v24 = *(v14 + 3);
      v26 = v14;
      if (v25 >= v24 >> 1)
      {
        v26 = sub_1001A1BE0((v24 > 1), v25 + 1, 1, v14);
      }

      *(v26 + 2) = v25 + 1;
      v27 = &v26[24 * v25];
      *(v27 + 2) = xmmword_1006D4A80;
      *(v27 + 24) = 259;
    }

    v28 = type metadata accessor for FitnessPlusFeatures();
    v59 = v28;
    v60 = sub_100158BDC(&qword_1008DC5F8, &type metadata accessor for FitnessPlusFeatures);
    v29 = sub_100005994(v56);
    (*(*(v28 - 8) + 104))(v29, enum case for FitnessPlusFeatures.sampleContent(_:), v28);
    LOBYTE(v28) = isFeatureEnabled(_:)();
    sub_100005A40(v56);
    if (v28)
    {
      v17 = v26;
      if ((v3 & 2) == 0)
      {
        goto LABEL_33;
      }

      if ((v3 & 4) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1001A1BE0(0, *(v26 + 2) + 1, 1, v26);
        }

        v31 = *(v17 + 2);
        v30 = *(v17 + 3);
        v32 = v17;
        if (v31 >= v30 >> 1)
        {
          v32 = sub_1001A1BE0((v30 > 1), v31 + 1, 1, v17);
        }

        *(v32 + 2) = v31 + 1;
        v17 = v32;
        v33 = &v32[24 * v31];
        *(v33 + 2) = xmmword_1006D4A90;
        *(v33 + 24) = 259;
      }
    }

    else
    {
      v17 = v26;
      if ((v3 & 2) == 0)
      {
        goto LABEL_33;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1001A1BE0(0, *(v17 + 2) + 1, 1, v17);
    }

    v35 = *(v17 + 2);
    v34 = *(v17 + 3);
    v18 = v17;
    if (v35 >= v34 >> 1)
    {
      v18 = sub_1001A1BE0((v34 > 1), v35 + 1, 1, v17);
    }

    *(v18 + 2) = v35 + 1;
    v17 = v18;
    v36 = &v18[24 * v35];
    *(v36 + 2) = xmmword_1006D4AA0;
    *(v36 + 24) = 3;
LABEL_33:
    if ((v3 & 0x81) != 0x80)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1001A1BE0(0, *(v17 + 2) + 1, 1, v17);
    }

    v37 = v17;
    v38 = *(v17 + 2);
    v18 = v37;
    v39 = *(v37 + 3);
    v54 = v38 + 1;
    if (v38 >= v39 >> 1)
    {
      v18 = sub_1001A1BE0((v39 > 1), v54, 1, v18);
    }

    *(v18 + 2) = v54;
    v40 = &v18[24 * v38];
    v17 = v18;
    *(v40 + 2) = xmmword_1006D4AC0;
    *(v40 + 24) = 259;
LABEL_40:
    v3 = 0;
    v41 = v17 + 49;
    v20 = _swiftEmptyArrayStorage;
    v51 = v17;
    v52 = ObjectType;
    while (1)
    {
      v16 = *(v17 + 2);
      if (v3 >= v16)
      {
        break;
      }

      v42 = *(v41 - 17);
      v43 = *(v41 - 9);
      v44 = *(v41 - 1);
      v45 = *v41;
      v56[0] = v42;
      v56[1] = v43;
      v57 = v44;
      v58 = v45;
      sub_10001D510(v42, v43, v44);
      if (sub_100155D30(v56, v55, v53))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100185B14(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v47 = _swiftEmptyArrayStorage[2];
        v46 = _swiftEmptyArrayStorage[3];
        if (v47 >= v46 >> 1)
        {
          sub_100185B14((v46 > 1), v47 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v47 + 1;
        v48 = &_swiftEmptyArrayStorage[3 * v47];
        v48[4] = v42;
        v48[5] = v43;
        *(v48 + 48) = v44;
        *(v48 + 49) = v45;
        v17 = v51;
        ObjectType = v52;
      }

      else
      {
        sub_10001D4F8(v42, v43, v44);
      }

      ++v3;
      v41 += 24;
      if (v54 == v3)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_52:
    v18 = sub_1001A1BE0((v16 > 1), v20, 1, v18);
    v16 = *(v18 + 3);
    v19 = v16 >> 1;
LABEL_9:
    *(v18 + 2) = v20;
    v21 = &v18[24 * v17];
    *(v21 + 2) = xmmword_1006D4AD0;
    *(v21 + 24) = 0;
    v22 = (v17 + 2);
    if (v19 < v22)
    {
      v18 = sub_1001A1BE0((v16 > 1), v22, 1, v18);
    }

    *(v18 + 2) = v22;
    v14 = v18;
    v23 = &v18[24 * v20];
    *(v23 + 2) = xmmword_1006D4AE0;
    *(v23 + 24) = 0;
  }

  v54 = *(v17 + 2);
  if (v54)
  {
    goto LABEL_40;
  }

LABEL_50:

  v56[0] = v50;

  sub_100154884(_swiftEmptyArrayStorage, v56);

  return v56[0];
}

unint64_t sub_100155B3C(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = static os_log_type_t.default.getter();
  v7 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v6))
  {
    log = v7;
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10000AFDC(v9, v10, &v19);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_10001D510(v3, v4, v5);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000AFDC(v12, v13, &v19);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, log, v6, "%s removing card type %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  sub_10001D510(v3, v4, v5);
  v15 = sub_100158500(a2, v3, v4, v5);
  result = sub_10001D4F8(v3, v4, v5);
  v17 = *(*a2 + 16);
  if (v17 >= v15)
  {
    return sub_1003E2C64(v15, v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_100155D30(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v34 = *(a1 + 17);
  v41[0] = v5;
  v41[1] = v6;
  v42 = v7;
  v36 = v41;
  if ((sub_100321D2C(sub_100159388, v35, a2) & 1) == 0)
  {
    v8 = OBJC_IVAR____TtC10FitnessApp28SummaryConfigurationProvider_userRemovedCardTypes;
    swift_beginAccess();
    v9 = *&a3[v8];

    v10 = sub_1003A58B4(v5, v6, v7, v9);

    if ((v10 & 1) == 0)
    {
      return 1;
    }
  }

  v11 = static os_log_type_t.default.getter();
  v12 = HKLogActivity;
  sub_10001D510(v5, v6, v7);
  sub_10001D510(v5, v6, v7);
  if (os_log_type_enabled(v12, v11))
  {
    sub_10001D510(v5, v6, v7);

    v13 = a3;
    sub_10001D510(v5, v6, v7);

    v14 = v13;
    v33 = v12;
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v15 = 136315906;
    v16 = _typeName(_:qualified:)();
    v31 = v11;
    v18 = sub_10000AFDC(v16, v17, &v43);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v37 = v5;
    v38 = v6;
    v39 = v7;
    v40 = v34;
    sub_10001D510(v5, v6, v7);
    v19 = String.init<A>(describing:)();
    v21 = sub_10000AFDC(v19, v20, &v43);

    *(v15 + 14) = v21;
    *(v15 + 22) = 1024;
    v37 = v5;
    v38 = v6;
    v39 = v7;
    __chkstk_darwin(v22);
    v30[2] = &v37;
    v23 = sub_100321D2C(sub_100159388, v30, a2);

    sub_10001D4F8(v5, v6, v7);
    *(v15 + 24) = v23 & 1;

    sub_10001D4F8(v5, v6, v7);
    *(v15 + 28) = 1024;
    v24 = OBJC_IVAR____TtC10FitnessApp28SummaryConfigurationProvider_userRemovedCardTypes;
    swift_beginAccess();
    v25 = *&v14[v24];

    v26 = sub_1003A58B4(v5, v6, v7, v25);

    sub_10001D4F8(v5, v6, v7);
    *(v15 + 30) = v26 & 1;

    sub_10001D4F8(v5, v6, v7);
    v27 = v33;
    _os_log_impl(&_mh_execute_header, v33, v31, "%s filtering out card template %s from templatesToAdd.\nactiveTypes contains template: %{BOOL}d,\nuserRemovedCardTypes contains template: %{BOOL}d", v15, 0x22u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = v12;
    sub_10001D4F8(v5, v6, v7);
    sub_10001D4F8(v5, v6, v7);
  }

  return 0;
}

uint64_t sub_100156120(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = static os_log_type_t.default.getter();
  v8 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v7))
  {
    log = v8;
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10000AFDC(v10, v11, &v22);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_10001D510(v3, v4, v5);
    v13 = String.init<A>(describing:)();
    v15 = sub_10000AFDC(v13, v14, &v22);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, log, v7, "%s adding card template %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *a2;
  sub_10001D510(v3, v4, v5);
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((result & 1) == 0)
  {
    result = sub_1001A1BE0(0, *(v16 + 16) + 1, 1, v16);
    v16 = result;
    *a2 = result;
  }

  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  if (v19 >= v18 >> 1)
  {
    result = sub_1001A1BE0((v18 > 1), v19 + 1, 1, v16);
    v16 = result;
    *a2 = result;
  }

  *(v16 + 16) = v19 + 1;
  v20 = v16 + 24 * v19;
  *(v20 + 32) = v3;
  *(v20 + 40) = v4;
  *(v20 + 48) = v5;
  *(v20 + 49) = v6;
  return result;
}

void sub_100156360(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = static os_log_type_t.default.getter();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v4))
  {
    log = v5;
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10000AFDC(v7, v8, &v14);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    sub_10001D510(v1, v2, v3);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000AFDC(v10, v11, &v14);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, log, v4, "%s loaded cardType: %s to userRemovedCardTypes.", v6, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1001564EC(unint64_t a1, unint64_t a2, char a3)
{
  swift_getObjectType();
  v6 = static os_log_type_t.default.getter();
  v7 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10000AFDC(v10, v11, v26);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_10001D510(a1, a2, a3);
    v13 = String.init<A>(describing:)();
    v15 = sub_10000AFDC(v13, v14, v26);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v6, "%s Inserting cardType: %s to userRemovedCardTypes.", v9, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  sub_10001D510(a1, a2, a3);
  sub_1001A3EF0(v26, a1, a2, a3);
  v16 = v26[0];
  v17 = v26[1];
  v18 = v27;
  swift_endAccess();
  sub_10001D4F8(v16, v17, v18);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();

  sub_100140278(&qword_1008DC650);
  sub_100158B58();
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v21 = v20;

  v22 = [objc_opt_self() standardUserDefaults];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v24 = @"ActivityDashboardUserRemovedCardTypes";
  [v22 setObject:isa forKey:v24];

  return sub_10000AF88(v19, v21);
}

uint64_t sub_1001567F0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = static os_log_type_t.default.getter();
  v9 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v8))
  {
    v10 = v9;
    v11 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10000AFDC(v12, v13, v31);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v32 = a1;
    v33 = a2;
    v34 = a3;
    sub_10001D510(a1, a2, a3);
    v15 = String.init<A>(describing:)();
    v17 = sub_10000AFDC(v15, v16, v31);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v10, v8, "%s Removing cardType: %s from userRemovedCardTypes.", v11, 0x16u);
    swift_arrayDestroy();
  }

  v18 = OBJC_IVAR____TtC10FitnessApp28SummaryConfigurationProvider_userRemovedCardTypes;
  swift_beginAccess();
  v19 = sub_100156CD0(a1, a2, a3);
  v21 = v20;
  v23 = v22;
  swift_endAccess();
  sub_100158B44(v19, v21, v23);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v32 = *(v4 + v18);

  sub_100140278(&qword_1008DC650);
  sub_100158B58();
  v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v26 = v25;

  v27 = [objc_opt_self() standardUserDefaults];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v29 = @"ActivityDashboardUserRemovedCardTypes";
  [v27 setObject:isa forKey:v29];

  return sub_10000AF88(v24, v26);
}

uint64_t sub_100156AE4(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 48;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = (v3 + 24 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *v5;
    v5 += 24;
    ++v1;
    if (!v7)
    {
      v8 = *(v5 - 40);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1001A1BB0(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_1001A1BB0((v9 > 1), v10 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v10 + 1;
      v4[v10 + 32] = v8;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100156BD8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100156C58(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100156CD0(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = *v3;
  Hasher.init(_seed:)();
  v53._countAndFlagsBits = a1;
  v53._object = a2;
  sub_100035B30(v53, a3);
  String.hash(into:)();

  if (!a3 || a3 == 2)
  {
    Hasher._combine(_:)(a1);
  }

  else if (a3 == 1)
  {
    String.hash(into:)();
  }

  v9 = Hasher._finalize()();
  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  v12 = v9 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  v14 = *(v8 + 48);
  v15 = a1 != 9;
  v16 = a1 != 8;
  v17 = a1 != 7;
  v18 = a1 != 6;
  v19 = a1 != 5;
  v20 = a1 != 4;
  v21 = a1 != 3;
  v22 = a1 == 2;
  v23 = a1 == 1;
  if (a2)
  {
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 0;
    v23 = 0;
  }

  v24 = a3 == 3;
  v25 = a3 == 3 && v22;
  v26 = a3 == 3 && v23;
  v50 = v26;
  v51 = v25;
  if (a3 != 3)
  {
    v15 = 1;
  }

  v49 = v15;
  v27 = a3 != 3 || v16;
  v48 = v27;
  v28 = a3 != 3 || v17;
  v29 = a3 != 3 || v18;
  v46 = v29;
  v47 = v28;
  v30 = a3 != 3 || v19;
  v31 = a3 != 3 || v20;
  v44 = v31;
  v45 = v30;
  v32 = a3 != 3 || v21;
  if (a2 | a1)
  {
    v24 = 0;
  }

  v42 = v24;
  v43 = v32;
  while (1)
  {
    v33 = v14 + 24 * v12;
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (v36 <= 1)
    {
      break;
    }

    if (v36 == 2)
    {
      if (a3 != 2)
      {
        goto LABEL_40;
      }

LABEL_39:
      if (v34 == a1)
      {
        goto LABEL_81;
      }

      goto LABEL_40;
    }

    if (v34 > 4)
    {
      if (v34 <= 6)
      {
        if (v34 ^ 5 | v35)
        {
          if ((v46 & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        else if ((v45 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else if (v34 ^ 7 | v35)
      {
        if (v34 ^ 8 | v35)
        {
          if (!v49)
          {
            goto LABEL_81;
          }
        }

        else if ((v48 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((v47 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (v34 <= 1)
    {
      if (v34 | v35)
      {
        if (v50)
        {
          goto LABEL_81;
        }
      }

      else if (v42)
      {
        goto LABEL_81;
      }
    }

    else if (v34 ^ 2 | v35)
    {
      if (v34 ^ 3 | v35)
      {
        if ((v44 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((v43 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (v51)
    {
      goto LABEL_81;
    }

LABEL_40:
    v12 = (v12 + 1) & v13;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  if (!v36)
  {
    if (a3)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (a3 != 1)
  {
    goto LABEL_40;
  }

  v37 = v34 == a1 && v35 == a2;
  if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_81:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v4;
  v52 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001A7318();
    v39 = v52;
  }

  v40 = *(*(v39 + 48) + 24 * v12);
  sub_100157434(v12);
  result = v40;
  *v4 = v52;
  return result;
}

uint64_t sub_100157084(unsigned __int8 a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 39;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 39;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001A7604();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_1001578DC(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_10015718C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100158BDC(&qword_1008E4E10, &type metadata accessor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100158BDC(&qword_1008EAFA0, &type metadata accessor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001A75DC();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100157A84(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t sub_100157434(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v26 = (v8 + 1) & v7;
      do
      {
        v10 = 24 * v6;
        v11 = *(v3 + 48) + 24 * v6;
        v13 = *v11;
        v12 = *(v11 + 8);
        v14 = *(v11 + 16);
        Hasher.init(_seed:)();
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v16._countAndFlagsBits = 0x5F646E657274;
            v16._object = 0xE600000000000000;
            String.append(_:)(v16);
            goto LABEL_11;
          }

          String.hash(into:)();
        }

        else
        {
          if (!v14)
          {
            v15._countAndFlagsBits = 0x5F63697274656DLL;
            v15._object = 0xE700000000000000;
            String.append(_:)(v15);
LABEL_11:
            _print_unlocked<A, B>(_:_:)();
            String.hash(into:)();

            Hasher._combine(_:)(v13);
            goto LABEL_14;
          }

          sub_10001D510(v13, v12, 1);
          v17._countAndFlagsBits = v13;
          v17._object = v12;
          String.append(_:)(v17);
          String.hash(into:)();

          String.hash(into:)();
        }

LABEL_14:
        v18 = Hasher._finalize()();
        sub_10001D4F8(v13, v12, v14);
        v19 = v18 & v7;
        if (v2 >= v26)
        {
          if (v19 < v26)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v26)
        {
          goto LABEL_19;
        }

        if (v2 >= v19)
        {
LABEL_19:
          v20 = *(v3 + 48);
          v21 = v20 + 24 * v2;
          v22 = (v20 + v10);
          if (24 * v2 < v10 || v21 >= v22 + 24 || v2 != v6)
          {
            v9 = *v22;
            *(v21 + 16) = *(v22 + 2);
            *v21 = v9;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1001578DC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_100157A84(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_100158BDC(&qword_1008E4E10, &type metadata accessor for UUID);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_100157D8C(char a1)
{
  v1 = sub_10069AE0C(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_10057F5B8(v1);
  }

  v2 = v1[2];
  v3 = (v1 + 4);
  v4 = 0;
  if (!v2)
  {
LABEL_18:
    if (v2 != v4)
    {
      sub_100311170(v1, (v1 + 4), 0, (2 * v4) | 1);
      v5 = v1[2];
      if (v5 >= v4)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    v5 = v4;
LABEL_22:
    if (v4)
    {
      goto LABEL_26;
    }

    return;
  }

  while (1)
  {
    v10[0] = v3[v4];
    if (sub_10015461C(v10))
    {
      break;
    }

LABEL_5:
    if (++v4 >= v2)
    {
      goto LABEL_16;
    }
  }

LABEL_8:
  if (v4 < --v2)
  {
    v6 = v3[v2];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = (*v10 + 49);
    v8 = *(*v10 + 16) + 1;
    do
    {
      if (!--v8)
      {

        goto LABEL_8;
      }

      v9 = v7;
      v7 += 24;
    }

    while ((*v9 & 1) != 0 || *(v9 - 1) || v6 != *(v9 - 17));

    if (v4 != v2)
    {
      v5 = v3[v4];
      v3[v4] = v3[v2];
      v3[v2] = v5;
    }

    goto LABEL_5;
  }

LABEL_16:
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v1[2];
    if (v2 >= v4)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_26:
  sub_100311170(v1, (v1 + 4), v4, (2 * v5) | 1);
}

uint64_t sub_100157F78(void *a1)
{
  v3 = sub_100140278(&qword_1008DC600);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = a1[3];
  sub_1000066AC(a1, v7);
  sub_10005850C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    sub_1001581A0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[1];
    v10 = 1;
    sub_1001581F4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005A40(a1);
  return v7;
}

unint64_t sub_1001581A0()
{
  result = qword_1008DC610;
  if (!qword_1008DC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC610);
  }

  return result;
}

unint64_t sub_1001581F4()
{
  result = qword_1008DC618;
  if (!qword_1008DC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC618);
  }

  return result;
}

uint64_t sub_100158248(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 16);
  v6 = a2 != 9;
  v7 = a2 != 8;
  v8 = a2 != 7;
  v9 = a2 != 6;
  v10 = a2 != 5;
  v11 = a2 != 4;
  v12 = a2 != 3;
  v13 = a2 != 2;
  v14 = a2 != 1;
  if (a3)
  {
    v6 = 1;
    v7 = 1;
    v8 = 1;
    v9 = 1;
    v10 = 1;
    v11 = 1;
    v12 = 1;
    v13 = 1;
    v14 = 1;
  }

  v15 = a3 | a2;
  if (a4 != 3)
  {
    v6 = 1;
    v7 = 1;
    v8 = 1;
    v9 = 1;
    v10 = 1;
    v11 = 1;
    v12 = 1;
    v13 = 1;
    v14 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = a4 == 3;
  }

  if (v5)
  {
    v25 = v14;
    v26 = v13;
    v27 = v12;
    v28 = v11;
    v29 = v10;
    v30 = v9;
    v31 = v8;
    v32 = v7;
    v33 = v6;
    v19 = 0;
    for (i = (a1 + 48); ; i += 24)
    {
      v21 = *(i - 2);
      v22 = *(i - 1);
      if (*i > 1u)
      {
        if (*i != 2)
        {
          if (v21 > 4)
          {
            if (v21 <= 6)
            {
              if (v21 ^ 5 | v22)
              {
                if (!v30)
                {
                  return v19;
                }
              }

              else if (!v29)
              {
                return v19;
              }
            }

            else if (v21 ^ 7 | v22)
            {
              if (v21 ^ 8 | v22)
              {
                if (!v33)
                {
                  return v19;
                }
              }

              else if (!v32)
              {
                return v19;
              }
            }

            else if (!v31)
            {
              return v19;
            }
          }

          else if (v21 <= 1)
          {
            if (v21 | v22)
            {
              if (!v25)
              {
                return v19;
              }
            }

            else if (v16)
            {
              return v19;
            }
          }

          else if (v21 ^ 2 | v22)
          {
            if (v21 ^ 3 | v22)
            {
              if (!v28)
              {
                return v19;
              }
            }

            else if (!v27)
            {
              return v19;
            }
          }

          else if (!v26)
          {
            return v19;
          }

          goto LABEL_12;
        }

        if (a4 == 2)
        {
LABEL_11:
          if (v21 == a2)
          {
            return v19;
          }
        }
      }

      else
      {
        if (*i)
        {
          if (a4 == 1)
          {
            v23 = v21 == a2 && v22 == a3;
            if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return v19;
            }
          }

          goto LABEL_12;
        }

        if (!a4)
        {
          goto LABEL_11;
        }
      }

LABEL_12:
      if (v5 == ++v19)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_100158500(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a4;
  v6 = a3;
  v8 = *a1;
  result = sub_100158248(*a1, a2, a3, a4);
  v11 = result;
  if (v4)
  {
    return v11;
  }

  if (v10)
  {
    return *(v8 + 16);
  }

  v12 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_94;
  }

  v13 = a2;
  v14 = *(v8 + 16);
  if (v12 == v14)
  {
    return v11;
  }

  v15 = v13 != 9;
  v16 = v13 != 8;
  v17 = v13 != 7;
  v18 = v13 != 6;
  v19 = v13 != 5;
  v20 = v13 != 4;
  v21 = v13 != 3;
  v22 = v13 != 2;
  v23 = v13 != 1;
  if (v6)
  {
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
  }

  v24 = v5 == 3;
  result = v6 | v13;
  if (v5 != 3)
  {
    v15 = 1;
  }

  v59 = v15;
  v25 = v5 != 3 || v16;
  v58 = v25;
  v26 = v5 != 3 || v17;
  v27 = v5 != 3 || v18;
  v56 = v27;
  v57 = v26;
  v28 = v5 != 3 || v19;
  v29 = v5 != 3 || v20;
  v54 = v29;
  v55 = v28;
  v30 = v5 != 3 || v21;
  v31 = v5 != 3 || v22;
  v52 = v31;
  v53 = v30;
  v32 = v5 != 3 || v23;
  if (result)
  {
    v24 = 0;
  }

  v50 = v24;
  v51 = v32;
  v33 = 24 * v11 + 73;
  v62 = v13;
  v61 = v5;
  v60 = v6;
  while (v12 < v14)
  {
    v38 = *(v8 + v33 - 17);
    v39 = *(v8 + v33 - 9);
    v40 = *(v8 + v33 - 1);
    if (v40 > 1)
    {
      if (v40 == 2)
      {
        if (v5 == 2)
        {
LABEL_48:
          if (v38 == v13)
          {
            goto LABEL_40;
          }
        }
      }

      else if (v38 > 4)
      {
        if (v38 <= 6)
        {
          if (v38 ^ 5 | v39)
          {
            if ((v56 & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          else if ((v55 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else if (v38 ^ 7 | v39)
        {
          if (v38 ^ 8 | v39)
          {
            if (!v59)
            {
              goto LABEL_40;
            }
          }

          else if ((v58 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else if ((v57 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else if (v38 <= 1)
      {
        if (v38 | v39)
        {
          if ((v51 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else if (v50)
        {
          goto LABEL_40;
        }
      }

      else if (v38 ^ 2 | v39)
      {
        if (v38 ^ 3 | v39)
        {
          if ((v54 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else if ((v53 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else if ((v52 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (*(v8 + v33 - 1))
    {
      if (v5 == 1)
      {
        if (v38 == v13 && v39 == v6)
        {
          goto LABEL_40;
        }

        v67 = v11;
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v11 = v67;
        v13 = v62;
        if (result)
        {
          goto LABEL_40;
        }
      }
    }

    else if (!v5)
    {
      goto LABEL_48;
    }

    if (v12 != v11)
    {
      if (v11 >= v14)
      {
        goto LABEL_92;
      }

      v68 = v11;
      v42 = 24 * v11;
      v43 = v8 + 32 + 24 * v11;
      v45 = *v43;
      v44 = *(v43 + 8);
      v63 = *(v43 + 17);
      v64 = *(v43 + 16);
      v65 = *(v8 + v33);
      sub_10001D510(*v43, v44, v64);
      sub_10001D510(v38, v39, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10057F5CC(v8);
      }

      v46 = v8 + v42;
      v47 = *(v8 + v42 + 32);
      v48 = *(v8 + v42 + 40);
      *(v46 + 32) = v38;
      *(v46 + 40) = v39;
      v49 = *(v8 + v42 + 48);
      *(v46 + 48) = v40;
      *(v46 + 49) = v65;
      result = sub_10001D4F8(v47, v48, v49);
      if (v12 >= *(v8 + 16))
      {
        goto LABEL_93;
      }

      v34 = (v8 + v33);
      v35 = *(v8 + v33 - 17);
      v36 = *(v8 + v33 - 9);
      *(v34 - 17) = v45;
      *(v34 - 9) = v44;
      v37 = *(v8 + v33 - 1);
      *(v34 - 1) = v64;
      *v34 = v63;
      result = sub_10001D4F8(v35, v36, v37);
      *a1 = v8;
      v5 = v61;
      v6 = v60;
      v13 = v62;
      v11 = v68;
    }

    ++v11;
LABEL_40:
    ++v12;
    v14 = *(v8 + 16);
    v33 += 24;
    if (v12 == v14)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_1001588FC()
{
  *(v0 + OBJC_IVAR____TtC10FitnessApp28SummaryConfigurationProvider_didSetToDefaultConfiguration) = 0;
  if (qword_1008DAA18 != -1)
  {
    swift_once();
  }

  v1 = sub_100140278(&qword_1008DC638);
  sub_10001AC90(v1, qword_100925830);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100140278(&qword_1008DC5E8);
  sub_1001591B4(&qword_1008DC640, sub_100057B9C);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  v5 = [objc_opt_self() standardUserDefaults];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = @"ActivityDashboardCardConfigurationKey";
  [v5 setObject:isa forKey:v7];

  return sub_10000AF88(v2, v4);
}

uint64_t sub_100158B44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10001D4F8(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_100158B58()
{
  result = qword_1008DC658;
  if (!qword_1008DC658)
  {
    sub_100141EEC(&qword_1008DC650);
    sub_1000585AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC658);
  }

  return result;
}

uint64_t sub_100158BDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100158C24(char a1)
{
  sub_100140278(&qword_1008DC660);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D46C0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 259;
  if ((a1 & 0x40) != 0)
  {
    v2 = sub_1001A1BE0(1, 2, 1, v2);
    *(v2 + 16) = 2;
    *(v2 + 56) = xmmword_1006D4AD0;
    *(v2 + 72) = 0;
    v4 = *(v2 + 24);
    if (v4 <= 5)
    {
      v2 = sub_1001A1BE0((v4 > 1), 3, 1, v2);
      v4 = *(v2 + 24);
    }

    v3 = 3;
    *(v2 + 16) = 3;
    *(v2 + 80) = xmmword_1006D4AE0;
    *(v2 + 96) = 0;
  }

  else
  {
    v3 = 1;
    v4 = 2;
  }

  v5 = v4 >> 1;
  v6 = v3 + 1;
  if (v4 >> 1 <= v3)
  {
    v2 = sub_1001A1BE0((v4 > 1), v3 + 1, 1, v2);
    v4 = *(v2 + 24);
    v5 = v4 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = v2 + 24 * v3;
  v8 = v3 + 2;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  if (v5 < v3 + 2)
  {
    v2 = sub_1001A1BE0((v4 > 1), v3 + 2, 1, v2);
  }

  *(v2 + 16) = v8;
  v9 = v2 + 24 * v6;
  *(v9 + 32) = xmmword_1006D4AB0;
  *(v9 + 48) = 0;
  if ((~a1 & 6) != 0)
  {
    v11 = v3 + 2;
  }

  else
  {
    v10 = *(v2 + 24);
    v11 = v3 + 3;
    if (v3 + 3 > v10 >> 1)
    {
      v2 = sub_1001A1BE0((v10 > 1), v3 + 3, 1, v2);
    }

    *(v2 + 16) = v11;
    v12 = v2 + 24 * v8;
    *(v12 + 32) = xmmword_1006D4A80;
    *(v12 + 48) = 259;
  }

  v13 = *(v2 + 24);
  v14 = v11 + 1;
  if (v11 >= v13 >> 1)
  {
    v2 = sub_1001A1BE0((v13 > 1), v11 + 1, 1, v2);
  }

  *(v2 + 16) = v14;
  v15 = v2 + 24 * v11;
  *(v15 + 32) = xmmword_1006D4AD0;
  *(v15 + 48) = 3;
  v16 = *(v2 + 24);
  v17 = v11 + 2;
  if (v17 > v16 >> 1)
  {
    v2 = sub_1001A1BE0((v16 > 1), v17, 1, v2);
  }

  *(v2 + 16) = v17;
  v18 = v2 + 24 * v14;
  *(v18 + 32) = xmmword_1006D4AE0;
  *(v18 + 48) = 3;
  v19 = type metadata accessor for FitnessPlusFeatures();
  v33[3] = v19;
  v33[4] = sub_100158BDC(&qword_1008DC5F8, &type metadata accessor for FitnessPlusFeatures);
  v20 = sub_100005994(v33);
  (*(*(v19 - 8) + 104))(v20, enum case for FitnessPlusFeatures.sampleContent(_:), v19);
  v21 = isFeatureEnabled(_:)();
  sub_100005A40(v33);
  if ((a1 & 2) != 0 && (v21 & 1) != 0 && (a1 & 4) == 0)
  {
    if (qword_1008DAA30 != -1)
    {
      swift_once();
    }

    v22 = sub_100140278(&qword_1008DC638);
    sub_10001AC90(v22, qword_100925878);
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
    v24 = *(v2 + 16);
    v23 = *(v2 + 24);
    if (v24 >= v23 >> 1)
    {
      v2 = sub_1001A1BE0((v23 > 1), v24 + 1, 1, v2);
    }

    *(v2 + 16) = v24 + 1;
    v25 = v2 + 24 * v24;
    *(v25 + 32) = xmmword_1006D4A90;
    *(v25 + 48) = 259;
  }

  if ((a1 & 0x81) == 0x80)
  {
    v27 = *(v2 + 16);
    v26 = *(v2 + 24);
    if (v27 >= v26 >> 1)
    {
      v2 = sub_1001A1BE0((v26 > 1), v27 + 1, 1, v2);
    }

    *(v2 + 16) = v27 + 1;
    v28 = v2 + 24 * v27;
    *(v28 + 32) = xmmword_1006D4AC0;
    *(v28 + 48) = 259;
  }

  if ((a1 & 2) != 0)
  {
    v30 = *(v2 + 16);
    v29 = *(v2 + 24);
    if (v30 >= v29 >> 1)
    {
      v2 = sub_1001A1BE0((v29 > 1), v30 + 1, 1, v2);
    }

    *(v2 + 16) = v30 + 1;
    v31 = v2 + 24 * v30;
    *(v31 + 32) = xmmword_1006D4AA0;
    *(v31 + 48) = 3;
  }

  return v2;
}

unint64_t sub_100159130()
{
  result = qword_1008DC678;
  if (!qword_1008DC678)
  {
    sub_100141EEC(&qword_1008DC670);
    sub_1001581A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC678);
  }

  return result;
}

uint64_t sub_1001591B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(&qword_1008DC5E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10015922C()
{
  result = qword_1008DC688;
  if (!qword_1008DC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC688);
  }

  return result;
}

unint64_t sub_100159284()
{
  result = qword_1008DC690;
  if (!qword_1008DC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC690);
  }

  return result;
}

unint64_t sub_1001592DC()
{
  result = qword_1008DC698;
  if (!qword_1008DC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC698);
  }

  return result;
}

unint64_t sub_100159334()
{
  result = qword_1008DC6A0;
  if (!qword_1008DC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC6A0);
  }

  return result;
}

__n128 sub_1001593A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001593C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100159410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100159470()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AwardsCard();
    if (v1 <= 0x3F)
    {
      sub_10006D5E0(319, &qword_1008DC728, &qword_1008DC730, &unk_1006E7FA0, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10006D5E0(319, &qword_1008DC738, &unk_1008DC740, &unk_1006D4F00, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10015958C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a2;
  v151 = type metadata accessor for DynamicTypeSize();
  v150 = *(v151 - 8);
  v3 = __chkstk_darwin(v151);
  v149 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v148 = &v144 - v5;
  v147 = type metadata accessor for AdaptiveStackType();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v159 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_100140278(&qword_1008DC7A8);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v153 = &v144 - v7;
  v152 = sub_100140278(&qword_1008DC7B0);
  __chkstk_darwin(v152);
  v155 = &v144 - v8;
  v179 = sub_100140278(&qword_1008DC7B8);
  v9 = __chkstk_darwin(v179);
  v154 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v158 = &v144 - v11;
  v186 = sub_100140278(&qword_1008DC7C0);
  __chkstk_darwin(v186);
  v187 = (&v144 - v12);
  v176 = sub_100140278(&qword_1008DC7C8);
  __chkstk_darwin(v176);
  v177 = &v144 - v13;
  v185 = sub_100140278(&qword_1008DC7D0);
  __chkstk_darwin(v185);
  v178 = &v144 - v14;
  v172 = type metadata accessor for LargeAwardsCardView();
  __chkstk_darwin(v172);
  v161 = (&v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = sub_100140278(&qword_1008DC7D8);
  __chkstk_darwin(v169);
  v171 = &v144 - v16;
  v168 = sub_100140278(&unk_1008DC740);
  v17 = __chkstk_darwin(v168);
  v166 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v167 = &v144 - v19;
  v170 = type metadata accessor for SmallAwardsCardView();
  __chkstk_darwin(v170);
  v160 = (&v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = sub_100140278(&qword_1008DC7E0);
  __chkstk_darwin(v175);
  v173 = &v144 - v21;
  v22 = type metadata accessor for Locale();
  __chkstk_darwin(v22 - 8);
  v165 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v24 - 8);
  v164 = &v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100140278(&qword_1008DC7E8);
  v27 = __chkstk_darwin(v26 - 8);
  v184 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v183 = &v144 - v29;
  v30 = type metadata accessor for AwardsCardView();
  v180 = *(v30 - 1);
  v31 = *(v180 + 64);
  __chkstk_darwin(v30);
  v32 = sub_100140278(&qword_1008DC7F0);
  __chkstk_darwin(v32 - 8);
  v34 = &v144 - v33;
  v35 = sub_100140278(&qword_1008DC7F8);
  v36 = v35 - 8;
  v37 = __chkstk_darwin(v35);
  v182 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v144 - v39;
  v41 = v30[9];
  v42 = sub_100140278(&qword_1008DC6B0);
  v163 = v41;
  v162 = v42;
  State.projectedValue.getter();
  sub_10001B104(v34, v40, &qword_1008DC7F0);
  v43 = *(v36 + 44);
  v181 = v40;
  v44 = &v40[v43];
  *v44 = static HorizontalAlignment.center.getter();
  *(v44 + 1) = 0;
  v44[16] = 0;
  sub_100140278(&qword_1008DC800);
  v45 = a1 + v30[5];
  v46 = type metadata accessor for AwardsCard();
  v194 = v46;
  v195 = &off_100852430;
  v47 = sub_100005994(&v192);
  sub_10015C778(v45, v47, type metadata accessor for AwardsCard);
  sub_10001B104(a1 + v30[7], v196, &qword_1008DC808);
  v196[40] = *(a1 + v30[8]);
  v196[48] = static Edge.Set.all.getter();
  v197 = xmmword_1006D4E50;
  v198 = xmmword_1006D4E60;
  v199 = 0;
  v174 = a1;
  sub_10015C778(a1, &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AwardsCardView);
  v48 = *(v180 + 80);
  v49 = (v48 + 16) & ~v48;
  v144 = v31;
  v180 = v48;
  v50 = swift_allocObject();
  v145 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071020(v145, v50 + v49, type metadata accessor for AwardsCardView);
  sub_100140278(&qword_1008DC810);
  sub_10005250C();
  View.onTapGesture(count:perform:)();

  sub_10000EA04(&v192, &qword_1008DC810);
  sub_10000EA04(v34, &qword_1008DC7F0);
  v51 = *(v45 + v46[9]);
  if (v51 == 2 || (v51 & 1) == 0 || (v52 = *(v45 + v46[10]), v52 == 2) || (v52 & 1) == 0)
  {
    v53 = *(v45 + v46[13]);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v54 = String.init(localized:table:bundle:locale:comment:)();
    v56 = v55;
    if (*(v45 + v46[6]))
    {
      v57 = v172;
      v58 = v161;
      v59 = (v161 + *(v172 + 20));
      v59[3] = v46;
      v59[4] = &off_100852430;
      v60 = sub_100005994(v59);
      sub_10015C778(v45, v60, type metadata accessor for AwardsCard);
      v61 = *(v45 + v46[14]);
      v62 = v58 + v57[11];
      *v62 = 0u;
      *(v62 + 1) = 0u;
      *(v62 + 4) = 0;
      v63 = v61;
      v64 = v53;
      State.projectedValue.getter();
      v65 = type metadata accessor for GeometryProxy();
      v66 = v167;
      (*(*(v65 - 8) + 56))(v167, 1, 1, v65);
      *v58 = swift_getKeyPath();
      sub_100140278(&qword_1008EE6A0);
      swift_storeEnumTagMultiPayload();
      *(v58 + v57[6]) = v53;
      *(v58 + v57[7]) = 1;
      v67 = (v58 + v57[8]);
      *v67 = v54;
      v67[1] = v56;
      v68 = (v58 + v57[9]);
      *v68 = 0;
      v68[1] = 0xE000000000000000;
      *(v58 + v57[10]) = v61;
      v69 = v58 + v57[13];
      v190 = 0;
      v189 = 0;
      v191 = 1;
      sub_100140278(&qword_1008DC848);
      State.init(wrappedValue:)();
      v70 = v193;
      v71 = v194;
      *v69 = v192;
      v69[16] = v70;
      *(v69 + 3) = v71;
      v72 = v57[14];
      v189 = 0;
      sub_100140278(&qword_1008DC850);
      State.init(wrappedValue:)();
      *(v58 + v72) = v192;
      v73 = v58 + v57[15];
      LOBYTE(v189) = 1;
      State.init(wrappedValue:)();
      v74 = *(&v192 + 1);
      *v73 = v192;
      *(v73 + 1) = v74;
      sub_10001B104(v66, v166, &unk_1008DC740);
      State.init(wrappedValue:)();
      sub_10000EA04(v66, &unk_1008DC740);
      sub_10015C778(v58, v171, type metadata accessor for LargeAwardsCardView);
      swift_storeEnumTagMultiPayload();
      sub_10015C93C(&qword_1008DC858, type metadata accessor for SmallAwardsCardView);
      sub_10015C93C(&qword_1008DC860, type metadata accessor for LargeAwardsCardView);
      v75 = v173;
      _ConditionalContent<>.init(storage:)();
      v76 = type metadata accessor for LargeAwardsCardView;
      v77 = v58;
    }

    else
    {
      v78 = v170;
      v79 = v160;
      v80 = (v160 + *(v170 + 20));
      v80[3] = v46;
      v80[4] = &off_100852430;
      v81 = sub_100005994(v80);
      sub_10015C778(v45, v81, type metadata accessor for AwardsCard);
      v82 = *(v174 + v30[6]);
      v83 = *(v45 + v46[14]);
      v84 = v79 + v78[11];
      *v84 = 0u;
      *(v84 + 1) = 0u;
      *(v84 + 4) = 0;
      v85 = v83;
      v86 = v53;
      State.projectedValue.getter();
      v87 = type metadata accessor for GeometryProxy();
      v88 = v167;
      (*(*(v87 - 8) + 56))(v167, 1, 1, v87);
      *v79 = swift_getKeyPath();
      sub_100140278(&qword_1008EE6A0);
      swift_storeEnumTagMultiPayload();
      *(v79 + v78[6]) = v82;
      *(v79 + v78[7]) = v53;
      v89 = (v79 + v78[8]);
      *v89 = v54;
      v89[1] = v56;
      v90 = (v79 + v78[9]);
      *v90 = 0;
      v90[1] = 0xE000000000000000;
      *(v79 + v78[10]) = v83;
      sub_10001B104(v88, v166, &unk_1008DC740);
      State.init(wrappedValue:)();
      sub_10000EA04(v88, &unk_1008DC740);
      v91 = v79 + v78[14];
      v190 = 0;
      v189 = 0;
      v191 = 1;
      sub_100140278(&qword_1008DC848);
      State.init(wrappedValue:)();
      v92 = v193;
      v93 = v194;
      *v91 = v192;
      v91[16] = v92;
      *(v91 + 3) = v93;
      v94 = v78[15];
      v189 = 0;
      sub_100140278(&qword_1008DC850);
      State.init(wrappedValue:)();
      *(v79 + v94) = v192;
      v95 = v79 + v78[16];
      LOBYTE(v189) = 1;
      State.init(wrappedValue:)();
      v96 = *(&v192 + 1);
      *v95 = v192;
      *(v95 + 1) = v96;
      sub_10015C778(v79, v171, type metadata accessor for SmallAwardsCardView);
      swift_storeEnumTagMultiPayload();
      sub_10015C93C(&qword_1008DC858, type metadata accessor for SmallAwardsCardView);
      sub_10015C93C(&qword_1008DC860, type metadata accessor for LargeAwardsCardView);
      v75 = v173;
      _ConditionalContent<>.init(storage:)();
      v76 = type metadata accessor for SmallAwardsCardView;
      v77 = v79;
    }

    sub_10015C7E0(v77, v76);
    sub_10001B104(v75, v177, &qword_1008DC7E0);
    swift_storeEnumTagMultiPayload();
    sub_10015C5D4();
    sub_10015C4FC(&qword_1008DC870, &qword_1008DC7B8, &unk_1006D4F80, sub_100071784);
    v97 = v178;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v97, v187, &qword_1008DC7D0);
    swift_storeEnumTagMultiPayload();
    sub_10015C6C0();
    v98 = v183;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v97, &qword_1008DC7D0);
    sub_10000EA04(v75, &qword_1008DC7E0);
    goto LABEL_12;
  }

  if (*(v45 + v46[6]) != 1)
  {
    v105 = *(v45 + v46[12]);
    if (v105)
    {
      sub_100140278(&unk_1008E4E20);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1006D4E70;
      v173 = v106;
      *(v106 + 32) = v105;
      v107 = v105;
      goto LABEL_15;
    }

LABEL_18:
    v143 = v187;
    *v187 = 0;
    *(v143 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_10015C6C0();
    v98 = v183;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_12;
  }

  if (!*(v45 + v46[11]))
  {
    goto LABEL_18;
  }

  v173 = *(v45 + v46[11]);

LABEL_15:
  v172 = ~v180;
  v108 = v148;
  v109 = v174;
  sub_10005491C(v148);
  v110 = enum case for DynamicTypeSize.xxLarge(_:);
  v111 = v150;
  v169 = *(v150 + 104);
  v112 = v149;
  v113 = v151;
  v169(v149, enum case for DynamicTypeSize.xxLarge(_:), v151);
  sub_10015C93C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v114 = dispatch thunk of static Comparable.< infix(_:_:)();
  v115 = *(v111 + 8);
  v115(v112, v113);
  v115(v108, v113);
  v116 = &enum case for AdaptiveStackType.vertical(_:);
  if ((v114 & 1) == 0)
  {
    v116 = &enum case for AdaptiveStackType.horizontal(_:);
  }

  (*(v146 + 104))(v159, *v116, v147);
  v171 = static VerticalAlignment.top.getter();
  v170 = static HorizontalAlignment.leading.getter();
  sub_10005491C(v108);
  v169(v112, v110, v113);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v115(v112, v113);
  v115(v108, v113);
  v117 = v145;
  sub_10015C778(v109, v145, type metadata accessor for AwardsCardView);
  v118 = (v180 + 24) & v172;
  v119 = swift_allocObject();
  *(v119 + 16) = v173;
  sub_100071020(v117, v119 + v118, type metadata accessor for AwardsCardView);
  sub_100140278(&qword_1008DC8A0);
  sub_100071494();
  v120 = v153;
  AdaptiveStack.init(type:verticalAlignment:horizontalAlignment:spacing:content:)();
  LOBYTE(v117) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v129 = v155;
  (*(v156 + 32))(v155, v120, v157);
  v130 = v129 + *(v152 + 36);
  *v130 = v117;
  *(v130 + 8) = v122;
  *(v130 + 16) = v124;
  *(v130 + 24) = v126;
  *(v130 + 32) = v128;
  *(v130 + 40) = 0;
  LOBYTE(v117) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v139 = v154;
  sub_100015E80(v129, v154, &qword_1008DC7B0);
  v140 = v139 + *(v179 + 36);
  *v140 = v117;
  *(v140 + 8) = v132;
  *(v140 + 16) = v134;
  *(v140 + 24) = v136;
  *(v140 + 32) = v138;
  *(v140 + 40) = 0;
  v141 = v158;
  sub_100015E80(v139, v158, &qword_1008DC7B8);
  sub_10001B104(v141, v177, &qword_1008DC7B8);
  swift_storeEnumTagMultiPayload();
  sub_10015C5D4();
  sub_10015C4FC(&qword_1008DC870, &qword_1008DC7B8, &unk_1006D4F80, sub_100071784);
  v142 = v178;
  _ConditionalContent<>.init(storage:)();
  sub_10001B104(v142, v187, &qword_1008DC7D0);
  swift_storeEnumTagMultiPayload();
  sub_10015C6C0();
  v98 = v183;
  _ConditionalContent<>.init(storage:)();
  sub_10000EA04(v142, &qword_1008DC7D0);
  sub_10000EA04(v141, &qword_1008DC7B8);
LABEL_12:
  v99 = v181;
  v100 = v182;
  sub_10001B104(v181, v182, &qword_1008DC7F8);
  v101 = v184;
  sub_10001B104(v98, v184, &qword_1008DC7E8);
  v102 = v188;
  sub_10001B104(v100, v188, &qword_1008DC7F8);
  v103 = sub_100140278(&qword_1008DC890);
  sub_10001B104(v101, v102 + *(v103 + 48), &qword_1008DC7E8);
  sub_10000EA04(v98, &qword_1008DC7E8);
  sub_10000EA04(v99, &qword_1008DC7F8);
  sub_10000EA04(v101, &qword_1008DC7E8);
  return sub_10000EA04(v100, &qword_1008DC7F8);
}

uint64_t sub_10015AF80(uint64_t a1)
{
  v2 = type metadata accessor for AwardsCardView();
  sub_10001B104(a1 + *(v2 + 28), v7, &qword_1008DC808);
  if (!v8)
  {
    return sub_10000EA04(v7, &qword_1008DC808);
  }

  v3 = sub_1000066AC(v7, v8);
  v4 = *(v2 + 20);
  memset(v6, 0, sizeof(v6));
  sub_10049B018(a1 + v4, v6, *v3);
  sub_10000EA04(v6, &qword_1008E51F0);
  return sub_100005A40(v7);
}

uint64_t sub_10015B03C(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardsCardView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v11[1] = sub_100071D5C(a1);
  swift_getKeyPath();
  sub_10015C778(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AwardsCardView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100071020(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AwardsCardView);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10015C8B4;
  *(v9 + 24) = v8;
  sub_100140278(&qword_1008DC8E0);
  sub_100140278(&qword_1008DC8B8);
  sub_10014A6B0(&qword_1008DC8E8, &qword_1008DC8E0);
  sub_1000723F4();
  sub_100071314();
  return ForEach<>.init(_:id:content:)();
}

void sub_10015B250(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setUniqueName:?];
}

uint64_t sub_10015B2C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v138 = a2;
  v118 = a1;
  v135 = a4;
  v5 = type metadata accessor for LargeAwardsCardView();
  __chkstk_darwin(v5);
  v7 = (&v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = sub_100140278(&qword_1008DC8D0);
  __chkstk_darwin(v137);
  v126 = &v118 - v8;
  v134 = sub_100140278(&qword_1008DC900);
  v123 = *(v134 - 8);
  __chkstk_darwin(v134);
  v122 = &v118 - v9;
  v132 = sub_100140278(&qword_1008DC908);
  __chkstk_darwin(v132);
  v133 = &v118 - v10;
  v11 = type metadata accessor for AppEntityVisualState();
  v129 = *(v11 - 8);
  v130 = v11;
  __chkstk_darwin(v11);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v14 - 8);
  v127 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100140278(&unk_1008DC740);
  v16 = __chkstk_darwin(v125);
  v124 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v118 - v18;
  v20 = type metadata accessor for SmallAwardsCardView();
  __chkstk_darwin(v20);
  v22 = (&v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = sub_100140278(&qword_1008DC8C0);
  __chkstk_darwin(v136);
  v119 = &v118 - v23;
  v131 = sub_100140278(&qword_1008DC910);
  v121 = *(v131 - 8);
  __chkstk_darwin(v131);
  v120 = &v118 - v24;
  v25 = type metadata accessor for AwardsCardView();
  v26 = a3 + v25[5];
  v27 = type metadata accessor for AwardsCard();
  v28 = *(v26 + v27[6]);
  v128 = v13;
  if (v28)
  {
    v29 = (v7 + v5[5]);
    v29[3] = v27;
    v29[4] = &off_100852430;
    v30 = sub_100005994(v29);
    sub_10015C778(v26, v30, type metadata accessor for AwardsCard);
    v31 = *(v26 + v27[15]);
    if (v31)
    {
      v32 = v31;
      v33 = [v32 titleForAchievement:v138];
      if (v33)
      {
        v34 = v33;
        v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v35;

LABEL_10:
        v44 = v138;
        v45 = sub_100073634(v138);
        v47 = v46;
        v48 = *(v26 + v27[14]);
        sub_10001B104(a3 + v25[7], v7 + v5[11], &qword_1008DC808);
        v49 = v48;
        sub_100140278(&qword_1008DC6B0);
        State.projectedValue.getter();
        v50 = type metadata accessor for GeometryProxy();
        (*(*(v50 - 8) + 56))(v19, 1, 1, v50);
        *v7 = swift_getKeyPath();
        sub_100140278(&qword_1008EE6A0);
        swift_storeEnumTagMultiPayload();
        *(v7 + v5[6]) = v44;
        *(v7 + v5[7]) = v118;
        v51 = (v7 + v5[8]);
        v52 = v120;
        *v51 = v121;
        v51[1] = v52;
        v53 = (v7 + v5[9]);
        *v53 = v45;
        v53[1] = v47;
        *(v7 + v5[10]) = v48;
        v54 = v7 + v5[13];
        v139 = 0;
        v140 = 0;
        v141 = 1;
        v55 = v44;
        sub_100140278(&qword_1008DC848);
        State.init(wrappedValue:)();
        v56 = v143;
        v57 = v144;
        *v54 = v142;
        v54[16] = v56;
        *(v54 + 3) = v57;
        v58 = v5[14];
        v139 = 0;
        sub_100140278(&qword_1008DC850);
        State.init(wrappedValue:)();
        *(v7 + v58) = v142;
        v59 = v7 + v5[15];
        LOBYTE(v139) = 1;
        State.init(wrappedValue:)();
        v60 = *(&v142 + 1);
        *v59 = v142;
        *(v59 + 1) = v60;
        sub_10001B104(v19, v124, &unk_1008DC740);
        State.init(wrappedValue:)();
        sub_10000EA04(v19, &unk_1008DC740);
        v61 = [v55 template];
        v62 = [v61 uniqueName];

        if (v62)
        {
          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v64;
        }

        else
        {
          v63 = 0;
          v65 = 0;
        }

        v66 = v126;
        sub_100071020(v7, v126, type metadata accessor for LargeAwardsCardView);
        v67 = (v66 + *(v137 + 52));
        *v67 = v63;
        v67[1] = v65;
        sub_100140278(&unk_1008F8F40);
        v68 = v55;
        LocalizedStringResource.init(stringLiteral:)();
        v69 = EntityProperty<>.init(title:)();
        v70 = v68;
        LOBYTE(v142) = [v70 unearned] ^ 1;
        EntityProperty.wrappedValue.setter();

        *&v142 = v69;
        *(&v142 + 1) = v70;
        v139 = _swiftEmptyArrayStorage;
        sub_10015C93C(&qword_1008DC918, &type metadata accessor for AppEntityVisualState);
        sub_100140278(&unk_1008F8F50);
        sub_10014A6B0(&qword_1008DC920, &unk_1008F8F50);
        v71 = v128;
        v72 = v130;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v138 = sub_10014A6B0(&qword_1008DC8D8, &qword_1008DC8D0);
        v73 = sub_10007151C();
        v74 = v122;
        v75 = v137;
        v76 = v126;
        View.appEntity<A>(_:state:)();
        (*(v129 + 8))(v71, v72);

        sub_10000EA04(v76, &qword_1008DC8D0);
        v77 = v123;
        v78 = v134;
        (*(v123 + 16))(v133, v74, v134);
        swift_storeEnumTagMultiPayload();
        v79 = sub_10014A6B0(&qword_1008DC8C8, &qword_1008DC8C0);
        *&v142 = v136;
        *(&v142 + 1) = &type metadata for AwardEntity;
        v143 = v79;
        v144 = v73;
        swift_getOpaqueTypeConformance2();
        *&v142 = v75;
        *(&v142 + 1) = &type metadata for AwardEntity;
        v143 = v138;
        v144 = v73;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        return (*(v77 + 8))(v74, v78);
      }
    }

    v121 = 0;
    v120 = 0xE000000000000000;
    goto LABEL_10;
  }

  v36 = (v22 + v20[5]);
  v36[3] = v27;
  v36[4] = &off_100852430;
  v37 = sub_100005994(v36);
  sub_10015C778(v26, v37, type metadata accessor for AwardsCard);
  v38 = *(a3 + v25[6]);
  v39 = *(v26 + v27[15]);
  if (!v39)
  {
    goto LABEL_15;
  }

  v40 = v39;
  v41 = [v40 titleForAchievement:v138];
  if (!v41)
  {

LABEL_15:
    v126 = 0;
    v123 = 0xE000000000000000;
    goto LABEL_16;
  }

  v42 = v41;
  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v123 = v43;

LABEL_16:
  v81 = v138;
  v82 = sub_100073634(v138);
  v84 = v83;
  v85 = *(v26 + v27[14]);
  sub_10001B104(a3 + v25[7], v22 + v20[11], &qword_1008DC808);
  v86 = v85;
  sub_100140278(&qword_1008DC6B0);
  State.projectedValue.getter();
  v87 = type metadata accessor for GeometryProxy();
  (*(*(v87 - 8) + 56))(v19, 1, 1, v87);
  *v22 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0);
  swift_storeEnumTagMultiPayload();
  *(v22 + v20[6]) = v38;
  *(v22 + v20[7]) = v81;
  v88 = (v22 + v20[8]);
  v89 = v123;
  *v88 = v126;
  v88[1] = v89;
  v90 = (v22 + v20[9]);
  *v90 = v82;
  v90[1] = v84;
  *(v22 + v20[10]) = v85;
  sub_10001B104(v19, v124, &unk_1008DC740);
  v91 = v81;
  State.init(wrappedValue:)();
  sub_10000EA04(v19, &unk_1008DC740);
  v92 = v22 + v20[14];
  v139 = 0;
  v140 = 0;
  v141 = 1;
  sub_100140278(&qword_1008DC848);
  State.init(wrappedValue:)();
  v93 = v143;
  v94 = v144;
  *v92 = v142;
  v92[16] = v93;
  *(v92 + 3) = v94;
  v95 = v20[15];
  v139 = 0;
  sub_100140278(&qword_1008DC850);
  State.init(wrappedValue:)();
  *(v22 + v95) = v142;
  v96 = v22 + v20[16];
  LOBYTE(v139) = 1;
  State.init(wrappedValue:)();
  v97 = *(&v142 + 1);
  *v96 = v142;
  *(v96 + 1) = v97;
  v98 = [v91 template];
  v99 = [v98 uniqueName];

  if (v99)
  {
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v101;
  }

  else
  {
    v100 = 0;
    v102 = 0;
  }

  v103 = v128;
  v104 = v119;
  sub_100071020(v22, v119, type metadata accessor for SmallAwardsCardView);
  v105 = (v104 + *(v136 + 52));
  *v105 = v100;
  v105[1] = v102;
  sub_100140278(&unk_1008F8F40);
  v106 = v91;
  LocalizedStringResource.init(stringLiteral:)();
  v107 = EntityProperty<>.init(title:)();
  v108 = v106;
  LOBYTE(v142) = [v108 unearned] ^ 1;
  EntityProperty.wrappedValue.setter();

  *&v142 = v107;
  *(&v142 + 1) = v108;
  v139 = _swiftEmptyArrayStorage;
  sub_10015C93C(&qword_1008DC918, &type metadata accessor for AppEntityVisualState);
  sub_100140278(&unk_1008F8F50);
  sub_10014A6B0(&qword_1008DC920, &unk_1008F8F50);
  v109 = v103;
  v110 = v130;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v138 = &protocol conformance descriptor for IDView<A, B>;
  v111 = sub_10014A6B0(&qword_1008DC8C8, &qword_1008DC8C0);
  v112 = sub_10007151C();
  v113 = v120;
  v114 = v136;
  View.appEntity<A>(_:state:)();
  (*(v129 + 8))(v109, v110);

  sub_10000EA04(v104, &qword_1008DC8C0);
  v115 = v121;
  v116 = v131;
  (*(v121 + 16))(v133, v113, v131);
  swift_storeEnumTagMultiPayload();
  *&v142 = v114;
  *(&v142 + 1) = &type metadata for AwardEntity;
  v143 = v111;
  v144 = v112;
  swift_getOpaqueTypeConformance2();
  v117 = sub_10014A6B0(&qword_1008DC8D8, &qword_1008DC8D0);
  *&v142 = v137;
  *(&v142 + 1) = &type metadata for AwardEntity;
  v143 = v117;
  v144 = v112;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v115 + 8))(v113, v116);
}