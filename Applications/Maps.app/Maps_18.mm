uint64_t sub_10024EE60@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10024EEE0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10024EF58@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10024EFD8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t sub_10024F058()
{
  result = qword_101915758;
  if (!qword_101915758)
  {
    sub_1000D6664(&qword_101915748);
    sub_10024ECA0(&qword_10190D640, &type metadata accessor for PlaceCell);
    sub_1000414C8(&unk_10190F410, &qword_101915760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915758);
  }

  return result;
}

uint64_t sub_10024F154@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

id sub_10024F1D8(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v3 = sub_1000CE6B8(&qword_1019157A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = sub_1000CE6B8(&qword_1019157A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController__waypointViewModels;
  v17 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101915448);
  Published.init(initialValue:)();
  (*(v8 + 32))(&v2[v11], v10, v7);
  v12 = OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController__addStopViewModel;
  v17 = 0;
  sub_1000CE6B8(&qword_101915458);
  Published.init(initialValue:)();
  (*(v4 + 32))(&v2[v12], v6, v3);
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController_waypoints] = v15;
  v13 = type metadata accessor for CarWaypointsOverviewCardViewController(0);
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
}

void sub_10024F418()
{
  v1 = sub_1000CE6B8(&qword_1019157A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - v3;
  v5 = sub_1000CE6B8(&qword_1019157A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController__waypointViewModels;
  v12 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101915448);
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController__addStopViewModel;
  v12 = 0;
  sub_1000CE6B8(&qword_101915458);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v10, v4, v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10024F640(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = a1;
  v45 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v4);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v46 = &v37 - v10;
  if (v8)
  {
    v11 = [v8 legInfos];
    sub_100014C84(0, &unk_101915780);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = _swiftEmptyArrayStorage;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v13 = v49;
    if (v49 >> 62)
    {
LABEL_35:
      v14 = _CocoaArrayWrapper.endIndex.getter();
      v37 = v1;
      if (v14)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v14 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = v1;
      if (v14)
      {
LABEL_4:
        v42 = v12 & 0xFFFFFFFFFFFFFF8;
        if (v12 >> 62)
        {
          v47 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v47 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 = 0;
        v48 = v13 & 0xC000000000000001;
        v43 = v12 & 0xC000000000000001;
        v38 = v13 & 0xFFFFFFFFFFFFFF8;
        v39 = (v5 + 8);
        v16 = _swiftEmptyArrayStorage;
        v40 = v12;
        v41 = v13;
        while (1)
        {
          if (v48)
          {
            v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v15 >= *(v38 + 16))
            {
              goto LABEL_34;
            }

            v5 = *(v13 + 8 * v15 + 32);

            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }
          }

          if (v47)
          {
            if (v43)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v18 = v46;
            }

            else
            {
              v18 = v46;
              if (!*(v42 + 16))
              {
                goto LABEL_33;
              }

              v19 = *(v12 + 32);
            }

            v20 = [v19 waypointID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v21 = [*(v5 + 24) uniqueID];
            if (!v21)
            {
              __break(1u);
              goto LABEL_40;
            }

            v22 = v21;
            v23 = v44;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            LOBYTE(v22) = static UUID.== infix(_:_:)();
            v24 = *v39;
            v25 = v23;
            v26 = v45;
            (*v39)(v25, v45);
            v24(v18, v26);
            if ((v22 & 1) != 0 && ((v27 = *(v5 + 32), v28 = v27, v29 = v19, v27) || v19) && (v30 = [v28 isEqual:v29], v28, v29, (v30 & 1) == 0))
            {
              v31 = *(v5 + 16);
              v32 = *(v5 + 24);
              v33 = *(v5 + 40);
              type metadata accessor for CarWaypointsOverviewView.WaypointViewModel();
              swift_allocObject();
              v34 = v32;
              v35 = v29;
              sub_10024CCD0(v34, v31, v29, v33);

              v1 = &v50;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            else
            {

              v1 = &v50;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            v16 = v50;
            v12 = v40;
            v13 = v41;
          }

          else
          {
          }

          ++v15;
          if (v17 == v14)
          {
            goto LABEL_37;
          }
        }
      }
    }

    v16 = _swiftEmptyArrayStorage;
LABEL_37:

    swift_getKeyPath();
    swift_getKeyPath();
    v49 = v16;
    v36 = v37;
    static Published.subscript.setter();
  }

  else
  {
LABEL_40:
    __break(1u);
  }
}

unint64_t sub_10024FB58()
{
  result = qword_1019157C8;
  if (!qword_1019157C8)
  {
    sub_1000D6664(&qword_1019157C0);
    sub_10024FBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019157C8);
  }

  return result;
}

unint64_t sub_10024FBE4()
{
  result = qword_1019157D0;
  if (!qword_1019157D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019157D0);
  }

  return result;
}

uint64_t sub_10024FC6C()
{
  v20 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CenteredCardHeaderNavigation();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for MainActor();
  v4 = v0;
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;
  v7 = v4;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  Binding.init(get:set:)();
  v18 = v21;
  v10 = v7;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v13 = v10;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  Binding.init(get:set:)();
  v16 = OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_viewModel;
  swift_beginAccess();
  (*(v1 + 16))(v19, &v13[v16], v20);

  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  dispatch thunk of _UIHostingView.rootView.setter();
}

id sub_10024FF84(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for CenteredCardHeaderNavigation();
  __chkstk_darwin(v10 - 8);
  v45 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CardHeaderSize();
  v43 = *(v12 - 8);
  v44 = v12;
  __chkstk_darwin(v12);
  v42 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v14 - 8);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  __chkstk_darwin(v20);
  v22 = v39 - v21;
  v23 = type metadata accessor for CardHeaderTextViewModel();
  __chkstk_darwin(v23 - 8);
  v39[1] = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v40 = *(v25 - 8);
  v41 = v25;
  __chkstk_darwin(v25);
  v27 = v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_leadingButtonsWidth] = 0;
  *&v4[OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_trailingButtonsWidth] = 0;
  v28 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v29 = type metadata accessor for MapsDesignAccessibilityString();
  v30 = *(v29 - 8);
  v31 = *(v30 + 104);
  v31(v22, v28, v29);
  v32 = *(v30 + 56);
  v32(v22, 0, 1, v29);
  v31(v19, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v29);
  v32(v19, 0, 1, v29);
  v31(v16, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v29);
  v32(v16, 0, 1, v29);
  static HorizontalAlignment.center.getter();
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  (*(v43 + 104))(v42, enum case for CardHeaderSize.large(_:), v44);
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  v33 = OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_viewModel;
  v35 = v40;
  v34 = v41;
  (*(v40 + 32))(&v5[OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_viewModel], v27, v41);
  swift_beginAccess();
  (*(v35 + 16))(v27, &v5[v33], v34);
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  v36 = objc_allocWithZone(sub_1000CE6B8(&unk_101915850));
  *&v5[OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_contentView] = _UIHostingView.init(rootView:)();
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  sub_1002504AC();
  sub_10024FC6C();

  return v37;
}

void sub_1002504AC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_contentView];
  [v0 addSubview:v2];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E5C00;
  v5 = [v2 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v2 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

uint64_t type metadata accessor for CenteredCardHeaderNavigationView()
{
  result = qword_101915840;
  if (!qword_101915840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100250884()
{
  result = type metadata accessor for CenteredCardHeaderNavigationViewModel();
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

double sub_100250934@<D0>(double *a1@<X8>)
{
  result = *(*(v1 + 32) + OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_leadingButtonsWidth);
  *a1 = result;
  return result;
}

double sub_10025094C(double *a1)
{
  result = *a1;
  *(*(v1 + 32) + OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_leadingButtonsWidth) = *a1;
  return result;
}

double sub_100250964@<D0>(double *a1@<X8>)
{
  result = *(*(v1 + 32) + OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_trailingButtonsWidth);
  *a1 = result;
  return result;
}

double sub_10025097C(double *a1)
{
  result = *a1;
  *(*(v1 + 32) + OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_trailingButtonsWidth) = *a1;
  return result;
}

void sub_100250994()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC4Maps17GuidesHomeContext_configuration];
  v3 = *(v2 + OBJC_IVAR____TtC4Maps30GuidesHomeContextConfiguration_location);
  if (*(v2 + OBJC_IVAR____TtC4Maps30GuidesHomeContextConfiguration_skipToCitySelector) == 1)
  {
    v4 = [objc_allocWithZone(CitySelectorViewController) initWithSourceGuideLocation:v3];
    v5 = [v1 iosChromeViewController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 currentTraits];

      goto LABEL_8;
    }

    v12 = [objc_opt_self() sharedService];
    if (v12)
    {
      v13 = v12;
      v7 = [v12 defaultTraits];

      if (v7)
      {
LABEL_8:
        [v4 setTraits:v7];

        [v4 setActionDelegate:v1];
        [v4 setContaineeDelegate:v1];
        v14 = OBJC_IVAR____TtC4Maps17GuidesHomeContext_containees;
        swift_beginAccess();
        v15 = v4;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

LABEL_15:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        return;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v3;
  v9 = [v1 iosChromeViewController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 currentTraits];

    goto LABEL_13;
  }

  v16 = [objc_opt_self() sharedService];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  v11 = [v16 defaultTraits];

  if (v11)
  {
LABEL_13:
    v18 = [objc_allocWithZone(GuidesHomeViewController) initWithGuideLocation:v8 withTraits:v11];

    [v18 setContaineeDelegate:v1];
    [v18 setActionDelegate:v1];
    v19 = OBJC_IVAR____TtC4Maps17GuidesHomeContext_containees;
    swift_beginAccess();
    v15 = v18;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
}

char *sub_100250F1C()
{
  v0 = sub_10003E578();
  v1 = [v0 features];

  sub_100014C84(0, &qword_101915910);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v21 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v19 = v2;
    v20 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v21)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v20 + 16))
        {
          goto LABEL_18;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 _maps_diffableDataSourceIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = i;
        v12 = sub_100062A9C();
        v13 = [v12 identifierPathByAppendingIdentifier:v10];

        v14 = sub_100251710();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100355784(0, *(v5 + 2) + 1, 1, v5);
        }

        v16 = *(v5 + 2);
        v15 = *(v5 + 3);
        if (v16 >= v15 >> 1)
        {
          v5 = sub_100355784((v15 > 1), v16 + 1, 1, v5);
        }

        *(v5 + 2) = v16 + 1;
        v17 = &v5[48 * v16];
        *(v17 + 4) = v13;
        *(v17 + 5) = v7;
        *(v17 + 3) = v22;
        *(v17 + 8) = &type metadata for HomeListFeatureDiscoveryCellModel;
        *(v17 + 9) = v14;
        i = v11;
        v2 = v19;
      }

      else
      {
      }

      ++v4;
      if (v8 == i)
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

  v5 = _swiftEmptyArrayStorage;
LABEL_21:

  return v5;
}

id sub_10025115C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeListFeatureDiscoverySectionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1002511A0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

id sub_1002512C8()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension:1.0];
  [objc_opt_self() estimatedHeightForContext:0];
  v2 = [v0 estimatedDimension:?];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  v4 = [objc_opt_self() itemWithLayoutSize:v3];
  v5 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E47B0;
  *(v6 + 32) = v4;
  sub_100014C84(0, &qword_101915908);
  v7 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v5 verticalGroupWithLayoutSize:v3 subitems:isa];

  v10 = [objc_opt_self() sectionWithGroup:v9];
  return v10;
}

uint64_t sub_100251494()
{
  sub_10003E48C(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v8);
  if (!Strong)
  {
    goto LABEL_10;
  }

  v2 = sub_100059F34();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v3 = *&v8[0];
  if (!*&v8[0])
  {
LABEL_9:
    swift_unknownObjectRelease();
LABEL_10:
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    return sub_100251638(&v9);
  }

  if (!*(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot))
  {

    goto LABEL_9;
  }

  v4 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

  sub_100368890(v3, 2, 0, 2, v4, &v9);

  swift_unknownObjectRelease();
  if (!v9)
  {
    return sub_100251638(&v9);
  }

  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  sub_1002516A0(v8 + 8, v7);
  sub_10005E7BC(v7, &v9);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    v5 = v7[0];
    [v7[0] markAsDisplayed];
  }

  return sub_10019D044(v8);
}

uint64_t sub_100251638(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101916000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002516A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10191C220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100251710()
{
  result = qword_101915918;
  if (!qword_101915918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915918);
  }

  return result;
}

uint64_t sub_100251774(uint64_t a1)
{
  v3 = sub_1000CE6B8(&unk_10190EB90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = v15 - v5;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_1005112F0(0, v7, 0);
    v8 = v18;
    v9 = a1 + 32;
    do
    {
      sub_10005EB40(v9, v15);
      v10 = v16;
      v11 = v17;
      sub_10005E838(v15, v16);
      (*(v11 + 16))(v10, v11);
      sub_10004E3D0(v15);
      v18 = v8;
      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        sub_1005112F0(v12 > 1, v13 + 1, 1);
        v8 = v18;
      }

      v8[2] = v13 + 1;
      sub_1001FA208(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13);
      v9 += 40;
      --v7;
    }

    while (v7);
  }

  *(v1 + 16) = v8;
  return result;
}

uint64_t sub_100251924(char a1)
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
      v8 = 0x80000001012279D0;
      v2 = 0x726165592031;
      v3 = 0x80000001012279B0;
      v4 = 0xD000000000000050;
      v5 = 0xD000000000000017;
      v6 = 0xE600000000000000;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v8 = 0x8000000101227950;
      v2 = 0x7368746E6F4D2033;
      v5 = 0xD000000000000019;
      v3 = 0x8000000101227930;
      v4 = 0xD000000000000052;
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v8 = 0x8000000101227A50;
    v2 = 0x72657665726F46;
    v5 = 0xD000000000000018;
    v3 = 0x8000000101227A30;
    v4 = 0xD00000000000004DLL;
    v6 = 0xE700000000000000;
  }

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v1, *&v2, *&v4)._countAndFlagsBits;
}

Swift::Int sub_100251B10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1011F5040[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100251B98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1011F5040[v1]);
  return Hasher._finalize()();
}

uint64_t *sub_100251BE4@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 90)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 365)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100251C3C()
{
  type metadata accessor for MapsSyncStore();
  v0 = static MapsSyncStore.sharedStore.getter();
  type metadata accessor for VisitedPlacesDataOperationsProvider();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_10195FD78 = result;
  return result;
}

uint64_t sub_100251C88(uint64_t a1)
{
  *(v2 + 232) = a1;
  *(v2 + 240) = v1;
  return _swift_task_switch(sub_100251CA8, 0, 0);
}

uint64_t sub_100251CA8()
{
  v1 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
  *&v5 = 0;
  *&v4 = _swiftEmptyArrayStorage;
  *(&v4 + 1) = _swiftEmptyArrayStorage;
  BYTE8(v5) = 0;
  v6 = MapsSyncRange.init(offset:limit:)();
  sub_100251774(_swiftEmptyArrayStorage);
  *(v0 + 104) = _swiftEmptyArrayStorage;
  *(v0 + 120) = 0uLL;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 88) = v4;
  *(v0 + 48) = 0uLL;
  *(v0 + 64) = v5;
  *(v0 + 80) = v6;
  *(v0 + 16) = v4;
  *(v0 + 32) = _swiftEmptyArrayStorage;
  sub_10019C99C(v0 + 88, v0 + 160);
  sub_10019C9F8(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_100251DD0;

  return sub_100251F34(v0 + 88);
}

uint64_t sub_100251DD0(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_100251ED0, 0, 0);
}

uint64_t sub_100251ED0()
{
  sub_10019C9F8(v0 + 88);
  v1 = *(v0 + 8);
  v2 = *(v0 + 256);

  return v1(v2);
}

uint64_t sub_100251F34(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return _swift_task_switch(sub_100251F54, 0, 0);
}

uint64_t sub_100251F54()
{
  isa = v0[27].super.isa;
  sub_10025248C(&v0[18].super.isa);
  v2 = *(isa + 2);
  v3 = objc_allocWithZone(type metadata accessor for VisitRequest());
  v4 = v2;
  v13 = VisitRequest.init(store:)();
  v0[28].super.isa = v13;
  if (v0[19].super.isa)
  {

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v0[29].super.isa = v5;
  if (v0[20].super.isa)
  {

    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v0[30].super.isa = v6.super.isa;
  if (v0[21].super.isa)
  {
    sub_100014C84(0, &qword_101909920);

    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v0[31].super.isa = v7.super.isa;
  if (v0[22].super.isa)
  {
    type metadata accessor for MapsSyncDateRange();

    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v0[32].super.isa = v8.super.isa;
  if (v0[23].super.isa)
  {
    sub_100014C84(0, &qword_101915AA8);

    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = v0[24].super.isa;
  v0[33].super.isa = v9.super.isa;
  v0[34].super.isa = v10;
  v0[2].super.isa = v0;
  v0[7].super.isa = &v0[25];
  v0[3].super.isa = sub_100252210;
  v11 = swift_continuation_init();
  v0[17].super.isa = sub_1000CE6B8(&qword_101915AB8);
  v0[10].super.isa = _NSConcreteStackBlock;
  v0[11].super.isa = 1107296256;
  v0[12].super.isa = sub_10025294C;
  v0[13].super.isa = &unk_10160CC00;
  v0[14].super.isa = v11;
  [(objc_class *)v13 fetchWithSearchTerm:v5 topLevelCategories:v6.super.isa regions:v7.super.isa dateRanges:v8.super.isa sortDescriptors:v9.super.isa range:v10 completionHandler:&v0[10]];

  return _swift_continuation_await(&v0[2]);
}

uint64_t sub_100252210()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1002523CC;
  }

  else
  {
    v2 = sub_100252320;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100252320()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  sub_1002597A0((v0 + 18));
  v8 = v0[25];

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1002523CC()
{
  v1 = v0[34];
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  swift_willThrow();

  sub_1002597A0((v0 + 18));

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_10025248C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for Date();
  v50 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = sub_1000CE6B8(&unk_10190EB90);
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v13 = v1[1];
  v14 = *(v13 + 16);
  v59 = v8;
  v51 = v5;
  v52 = v3;
  if (v14)
  {
    v15 = v10;
    v60 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v16 = (v13 + 48);
    do
    {
      v17 = *v16;
      v16 += 3;
      v18 = v17;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v14;
    }

    while (v14);
    v8 = v59;
    v53 = v60;
    v10 = v15;
  }

  else
  {
    v53 = 0;
  }

  v19 = *v1;
  v20 = *(*v1 + 16);
  v55 = v1;
  v58 = v10;
  if (v20)
  {
    v60 = _swiftEmptyArrayStorage;
    result = sub_100511310(0, v20, 0);
    v22 = v60;
    v23 = (v19 + 32);
    while (1)
    {
      v25 = *v23++;
      v24 = v25;
      if (v25 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v24 > 0x7FFFFFFF)
      {
        goto LABEL_28;
      }

      v60 = v22;
      v27 = v22[2];
      v26 = v22[3];
      if (v27 >= v26 >> 1)
      {
        result = sub_100511310((v26 > 1), v27 + 1, 1);
        v22 = v60;
      }

      v22[2] = v27 + 1;
      *(v22 + v27 + 8) = v24;
      if (!--v20)
      {
        v2 = v55;
        v8 = v59;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v22 = 0;
LABEL_15:
    v28 = v2[2];
    v29 = *(v28 + 16);
    if (v29)
    {
      v60 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v30 = type metadata accessor for MapsSyncDateRange();
      v31 = v28 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v56 = *(v56 + 72);
      v57 = v30;
      v32 = v51;
      v33 = (v50 + 16);
      v34 = v52;
      do
      {
        sub_1002597D0(v31, v12);
        v35 = *v33;
        (*v33)(v8, v12, v34);
        v35(v32, &v12[*(v58 + 36)], v34);
        MapsSyncDateRange.__allocating_init(startDate:endDate:)();
        sub_100024F64(v12, &unk_10190EB90);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v8 = v59;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v31 += v56;
        --v29;
      }

      while (v29);
      v36 = v60;
      v2 = v55;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(v2 + 56);
    if (v37 == 2)
    {
      v38 = 0;
    }

    else
    {
      sub_1000CE6B8(&qword_101908400);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1011E47B0;
      v39 = objc_allocWithZone(NSSortDescriptor);
      if (v37)
      {
        v40 = String._bridgeToObjectiveC()();
        v41 = [v39 initWithKey:v40 ascending:1];
      }

      else
      {
        v40 = String._bridgeToObjectiveC()();
        v41 = [v39 initWithKey:v40 ascending:0];
      }

      v42 = v41;

      *(v38 + 32) = v42;
    }

    v44 = v2[3];
    v43 = v2[4];
    v45 = v2[8];
    v46 = v45;

    v48 = v53;
    v47 = v54;
    *v54 = v44;
    v47[1] = v43;
    v47[2] = v22;
    v47[3] = v48;
    v47[4] = v36;
    v47[5] = v38;
    v47[6] = v45;
  }

  return result;
}

uint64_t sub_10025294C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10005E838((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000CE6B8(&qword_101915AB0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for Visit();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100252A2C(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return _swift_task_switch(sub_100252A4C, 0, 0);
}

uint64_t sub_100252A4C()
{
  isa = v0[27].super.isa;
  sub_10025248C(&v0[18].super.isa);
  v2 = *(isa + 2);
  v3 = objc_allocWithZone(type metadata accessor for VisitRequest());
  v4 = v2;
  v13 = VisitRequest.init(store:)();
  v0[28].super.isa = v13;
  if (v0[19].super.isa)
  {

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v0[29].super.isa = v5;
  if (v0[20].super.isa)
  {

    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v0[30].super.isa = v6.super.isa;
  if (v0[21].super.isa)
  {
    sub_100014C84(0, &qword_101909920);

    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v0[31].super.isa = v7.super.isa;
  if (v0[22].super.isa)
  {
    type metadata accessor for MapsSyncDateRange();

    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v0[32].super.isa = v8.super.isa;
  if (v0[23].super.isa)
  {
    sub_100014C84(0, &qword_101915AA8);

    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = v0[24].super.isa;
  v0[33].super.isa = v9.super.isa;
  v0[34].super.isa = v10;
  v0[2].super.isa = v0;
  v0[7].super.isa = &v0[25];
  v0[3].super.isa = sub_100252D08;
  v11 = swift_continuation_init();
  v0[17].super.isa = sub_1000CE6B8(&qword_101915AA0);
  v0[10].super.isa = _NSConcreteStackBlock;
  v0[11].super.isa = 1107296256;
  v0[12].super.isa = sub_100252F98;
  v0[13].super.isa = &unk_10160CBD8;
  v0[14].super.isa = v11;
  [(objc_class *)v13 countWithSearchTerm:v5 topLevelCategories:v6.super.isa regions:v7.super.isa dateRanges:v8.super.isa sortDescriptors:v9.super.isa range:v10 completionHandler:&v0[10]];

  return _swift_continuation_await(&v0[2]);
}

uint64_t sub_100252D08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_100252ED0;
  }

  else
  {
    v2 = sub_100252E18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100252E18()
{
  sub_1002597A0(v0 + 144);
  v1 = *(v0 + 200);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 232);

  v9 = *(v0 + 8);

  return v9(v1, v2 != 0);
}

uint64_t sub_100252ED0()
{
  swift_willThrow();

  sub_1002597A0(v0 + 144);
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 232);

  v8 = *(v0 + 8);

  return v8(0, v2 != 0);
}

uint64_t sub_100252F98(uint64_t a1, uint64_t a2, void *a3)
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
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100253084()
{
  v1 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
  *&v5 = 0;
  *&v4 = _swiftEmptyArrayStorage;
  *(&v4 + 1) = _swiftEmptyArrayStorage;
  BYTE8(v5) = 2;
  v6 = MapsSyncRange.init(offset:limit:)();
  sub_100251774(_swiftEmptyArrayStorage);
  *(v0 + 104) = _swiftEmptyArrayStorage;
  *(v0 + 120) = 0uLL;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 88) = v4;
  *(v0 + 48) = 0uLL;
  *(v0 + 64) = v5;
  *(v0 + 80) = v6;
  *(v0 + 16) = v4;
  *(v0 + 32) = _swiftEmptyArrayStorage;
  sub_10019C99C(v0 + 88, v0 + 160);
  sub_10019C9F8(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *v2 = v0;
  v2[1] = sub_1002531A8;

  return sub_100252A2C(v0 + 88);
}

uint64_t sub_1002531A8(uint64_t a1, int a2)
{
  v5 = *v2;
  v8 = *v2;

  sub_10019C9F8(v5 + 88);
  v6 = *(v8 + 8);

  return v6((a1 > 0) & ~a2);
}

uint64_t sub_1002532E0()
{
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithKey:v2 ascending:1];
  v0[3] = v3;

  sub_1000CE6B8(&qword_101908400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E47B0;
  Predicate = type metadata accessor for MapsSyncQueryPredicate();
  *(v4 + 32) = static MapsSyncQueryPredicate.withFormat(_:_:)();
  v6 = objc_allocWithZone(Predicate);
  MapsSyncQueryPredicate.init(and:)();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E47B0;
  *(v7 + 32) = v3;
  v8 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
  v9 = v3;
  MapsSyncRange.init(offset:limit:)();
  v10 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v11 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[4] = v11;
  type metadata accessor for VisitRequest();
  v0[5] = VisitRequest.__allocating_init()();
  v15 = (&async function pointer to dispatch thunk of VisitRequest.fetch(options:) + async function pointer to dispatch thunk of VisitRequest.fetch(options:));
  v12 = v11;
  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_1002534FC;

  return v15(v11);
}

uint64_t sub_1002534FC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 56) = a1;

  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  if (v1)
  {

    v6 = sub_1002537C0;
  }

  else
  {

    v6 = sub_100253660;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100253660()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];

    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[7] + 32);
  }

  v5 = v0[3];
  v4 = v0[4];

  v6 = v3;
  dispatch thunk of Visit.startDate.getter();

LABEL_9:
  v11 = v0[1];

  return v11();
}

uint64_t sub_1002537C0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100253868(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 144) = a4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  return _swift_task_switch(sub_100253890, 0, 0);
}

uint64_t sub_100253890()
{
  v1 = [*(v0 + 48) _identifier];
  if (v1 && (v2 = v1, v3 = [v1 mapsIdentifierString], v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;

    *(v0 + 72) = v6;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_1002539CC;
    v8 = *(v0 + 40);

    return sub_100258DB4(v8);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_1002539CC(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100253ACC, 0, 0);
}

uint64_t sub_100253ACC()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[2];
    sub_1000CE6B8(&qword_101908400);
    v3 = swift_allocObject();
    v0[12] = v3;
    *(v3 + 16) = xmmword_1011E47B0;
    *(v3 + 32) = v1;
    v0[4] = v3;
    v4 = v1;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_100253CBC;
    v6 = v0[9];

    return sub_100259310(v2, v6);
  }

  else
  {

    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100021540(v8, qword_10195FE70);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "[Change Visit Location] failed to find given visit", v11, 2u);
    }

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_100253CBC(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100253DDC, 0, 0);
}

uint64_t sub_100253DDC()
{
  v1 = *(v0 + 112);
  if (!v1)
  {
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 144);
    v7 = *(v0 + 48);
    type metadata accessor for VisitedLocation();
    v11 = v8[2];
    v12 = MapsSyncObject.__allocating_init(store:)();
    v13 = v7;
    dispatch thunk of VisitedLocation.mapItemStorage.setter();
    if (v10)
    {
      v14 = 0;
    }

    else
    {
      v14 = v9;
    }

    if (v14 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v14 <= 0x7FFFFFFF)
    {
      v7 = (v0 + 32);
      dispatch thunk of VisitedLocation.mapItemTopLevelCategory.setter();
      v15 = v12;
      dispatch thunk of Visit.location.setter();
      dispatch thunk of Visit.visitClassification.getter();
      dispatch thunk of Visit.visitClassification.setter();
      v8 = v15;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_13:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_14;
      }

LABEL_19:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_19;
  }

  v2 = v1;
  dispatch thunk of Visit.location.setter();
  if (qword_101906660 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10195FE70);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[Change Visit Location] Associating with existing location", v6, 2u);
  }

  v7 = (v0 + 96);
LABEL_14:
  v16 = *v7;
  *(v0 + 120) = v16;
  v19 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = sub_100254060;

  return v19(v16);
}

uint64_t sub_100254060()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100254294;
  }

  else
  {

    v2 = sub_10025417C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025417C()
{
  if (qword_101906660 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FE70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Change Visit Location] success updating visit location", v4, 2u);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_100254294()
{

  if (qword_101906660 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FE70);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 88);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Saving objects after updating location objects failed: %@", v6, 0xCu);
    sub_100024F64(v7, &qword_1019144F0);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_100254450(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = type metadata accessor for UUID();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[9] = v5;
  *v5 = v2;
  v5[1] = sub_100254574;

  return sub_100258DB4(a1);
}

uint64_t sub_100254574(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100254674, 0, 0);
}

uint64_t sub_100254674()
{
  v26 = v0;
  v1 = *(v0 + 80);
  if (v1)
  {
    [*(v0 + 80) removeVisit];
    sub_1000CE6B8(&qword_101908400);
    v2 = swift_allocObject();
    *(v0 + 88) = v2;
    *(v2 + 16) = xmmword_1011E47B0;
    *(v2 + 32) = v1;
    v24 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
    v3 = v1;
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_100254984;

    return v24(v2);
  }

  else
  {
    if (qword_101906618 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 32);
    v9 = *(v0 + 16);
    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_101915950);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    v16 = *(v0 + 32);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      sub_100259250();
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_10004DEB8(v19, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "visit asked to remove not found not found: %s", v17, 0xCu);
      sub_10004E3D0(v18);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v23 = *(v0 + 8);

    return v23(0);
  }
}

uint64_t sub_100254984()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100254CD8;
  }

  else
  {

    v2 = sub_100254AA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100254AA0()
{
  v23 = v0;
  if (qword_101906618 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_101915950);
  (*(v3 + 16))(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[4];
  v12 = v0[5];
  if (v8)
  {
    v21 = v0[10];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    sub_100259250();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_10004DEB8(v15, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Visit: %s removed", v13, 0xCu);
    sub_10004E3D0(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = v0[1];

  return v19(1);
}

uint64_t sub_100254CD8()
{
  v25 = v0;

  if (qword_101906618 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_101915950);
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 56);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  if (v8)
  {
    v23 = *(v0 + 80);
    log = v6;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v12 = 136315394;
    sub_100259250();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10004DEB8(v14, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, log, v7, "error removing Visit: %s | %@", v12, 0x16u);
    sub_100024F64(v13, &qword_1019144F0);

    sub_10004E3D0(v22);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 8);

  return v19(0);
}

uint64_t sub_100254FA4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100254FC4, 0, 0);
}

uint64_t sub_100254FC4()
{
  v1 = *(v0 + 16);
  Predicate = type metadata accessor for MapsSyncQueryPredicate();
  v3 = static MapsSyncQueryPredicate.withFormat(_:_:)();
  v4 = v3;
  *(v0 + 32) = v3;
  if (!v1)
  {
    v16 = v3;
    goto LABEL_13;
  }

  v5 = [*(v0 + 16) _identifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 mapsIdentifierString];

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      sub_1000CE6B8(&unk_10190D5C0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1011E1D30;
      *(v11 + 56) = &type metadata for String;
      *(v11 + 64) = sub_1000DA61C();
      *(v11 + 32) = v8;
      *(v11 + 40) = v10;
      v12 = static MapsSyncQueryPredicate.withFormat(_:_:)();

      sub_1000CE6B8(&qword_101908400);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1011E4FD0;
      *(v13 + 32) = v4;
      *(v13 + 40) = v12;
      v14 = objc_allocWithZone(Predicate);
      v15 = v4;
      v16 = MapsSyncQueryPredicate.init(and:)();
LABEL_13:
      v23 = v16;
      *(v0 + 40) = v16;
      v24 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
      v25 = v23;
      v26 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
      *(v0 + 48) = v26;
      dispatch thunk of MapsSyncQueryOptions.lazyLoad.setter();
      type metadata accessor for VisitRequest();
      *(v0 + 56) = VisitRequest.__allocating_init()();
      v29 = (&async function pointer to dispatch thunk of VisitRequest.fetch(options:) + async function pointer to dispatch thunk of VisitRequest.fetch(options:));
      v27 = v26;
      v28 = swift_task_alloc();
      *(v0 + 64) = v28;
      *v28 = v0;
      v28[1] = sub_100255338;

      return v29(v26);
    }
  }

  if (qword_101906618 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100021540(v17, qword_101915950);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "[Remove Visits] asked to remove visits for place with nil geoMapItem identifier", v20, 2u);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100255338(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_100255990;
  }

  else
  {
    v5 = *(v3 + 56);

    v4 = sub_100255458;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100255458()
{
  v1 = v0[9];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = v0[9] + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v4 + 8 * v3);
    }

    v6 = v5;
    ++v3;
    [v5 removeVisit];
  }

  while (v2 != v3);
LABEL_10:
  if (v1 >> 62)
  {
    type metadata accessor for MapsSyncObject();

    v7 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MapsSyncObject();
    v7 = v0[9];
  }

  v0[11] = v7;
  v9 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_100255610;

  v9(v7);
}

uint64_t sub_100255610()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100255C0C;
  }

  else
  {

    v2 = sub_10025572C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025572C()
{
  v24 = v0;
  if (qword_101906618 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101915950);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315394;
    if (v8)
    {
      v11 = 0xD00000000000001BLL;
    }

    else
    {
      v11 = 0x69736956206C6C41;
    }

    if (v8)
    {
      v12 = 0x8000000101227B30;
    }

    else
    {
      v12 = 0xEA00000000007374;
    }

    v13 = sub_10004DEB8(v11, v12, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    if (v7 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v0[5];
    v18 = v0[6];
    v20 = v0[4];

    *(v9 + 14) = v14;

    _os_log_impl(&_mh_execute_header, v4, v5, "[Remove Visits] Criteria: %s | Removed %ld visits", v9, 0x16u);
    sub_10004E3D0(v10);
  }

  else
  {
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[4];
    swift_bridgeObjectRelease_n();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100255990()
{
  v23 = v0;
  v1 = v0[6];
  v2 = v0[7];

  if (qword_101906618 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101915950);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[4];
  v10 = v0[5];
  if (v8)
  {
    v11 = v0[2];
    v21 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 136315394;
    if (v11)
    {
      v15 = 0xD00000000000001BLL;
    }

    else
    {
      v15 = 0x69736956206C6C41;
    }

    if (v11)
    {
      v16 = 0x8000000101227B30;
    }

    else
    {
      v16 = 0xEA00000000007374;
    }

    v17 = sub_10004DEB8(v15, v16, &v22);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Remove Visits] Criteria: %s | Failed to clear visits: %@", v12, 0x16u);
    sub_100024F64(v13, &qword_1019144F0);

    sub_10004E3D0(v14);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_100255C0C()
{
  v22 = v0;
  v1 = v0[6];

  if (qword_101906618 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_101915950);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[4];
  v9 = v0[5];
  if (v7)
  {
    v10 = v0[2];
    v20 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    if (v10)
    {
      v14 = 0xD00000000000001BLL;
    }

    else
    {
      v14 = 0x69736956206C6C41;
    }

    if (v10)
    {
      v15 = 0x8000000101227B30;
    }

    else
    {
      v15 = 0xEA00000000007374;
    }

    v16 = sub_10004DEB8(v14, v15, &v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "[Remove Visits] Criteria: %s | Failed to clear visits: %@", v11, 0x16u);
    sub_100024F64(v12, &qword_1019144F0);

    sub_10004E3D0(v13);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100255E94(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = type metadata accessor for UUID();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[10] = v5;
  *v5 = v2;
  v5[1] = sub_100255FC4;

  return sub_100258DB4(a1);
}

uint64_t sub_100255FC4(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1002560C4, 0, 0);
}

uint64_t sub_1002560C4()
{
  v43 = v0;
  v1 = v0[11];
  if (!v1)
  {
    if (qword_101906618 != -1)
    {
      swift_once();
    }

    v18 = v0[7];
    v19 = v0[4];
    v20 = v0[5];
    v21 = v0[2];
    v22 = type metadata accessor for Logger();
    sub_100021540(v22, qword_101915950);
    (*(v20 + 16))(v18, v21, v19);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[7];
    v27 = v0[4];
    v28 = v0[5];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136315138;
      sub_100259250();
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v28 + 8))(v26, v27);
      v34 = sub_10004DEB8(v31, v33, &v42);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "[accepting low confidence visit] id: %s | Visit found not found", v29, 0xCu);
      sub_10004E3D0(v30);
    }

    else
    {

      (*(v28 + 8))(v26, v27);
    }

    goto LABEL_16;
  }

  if ((dispatch thunk of Visit.visitClassification.getter() & 2) == 0)
  {
    if (qword_101906618 != -1)
    {
      swift_once();
    }

    v2 = v0[8];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[2];
    v6 = type metadata accessor for Logger();
    sub_100021540(v6, qword_101915950);
    (*(v4 + 16))(v2, v5, v3);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[8];
    v12 = v0[4];
    v11 = v0[5];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v13 = 136315138;
      sub_100259250();
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = sub_10004DEB8(v14, v16, &v42);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "[accepting low confidence visit] id: %s | This is not a low confidence visit", v13, 0xCu);
      sub_10004E3D0(v40);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

LABEL_16:

    v39 = v0[1];

    return v39();
  }

  dispatch thunk of Visit.visitClassification.getter();
  dispatch thunk of Visit.visitClassification.setter();
  sub_1000CE6B8(&qword_101908400);
  v35 = swift_allocObject();
  v0[12] = v35;
  *(v35 + 16) = xmmword_1011E47B0;
  *(v35 + 32) = v1;
  v41 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v36 = v1;
  v37 = swift_task_alloc();
  v0[13] = v37;
  *v37 = v0;
  v37[1] = sub_10025657C;

  return v41(v35);
}

uint64_t sub_10025657C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1002568D4;
  }

  else
  {

    v2 = sub_100256698;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100256698()
{
  v23 = v0;
  if (qword_101906618 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_101915950);
  (*(v3 + 16))(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  v10 = v0[9];
  v11 = v0[4];
  v12 = v0[5];
  if (v8)
  {
    v21 = v0[11];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    sub_100259250();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_10004DEB8(v15, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "[accepting low confidence visit] id: %s | successfully completed", v13, 0xCu);
    sub_10004E3D0(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1002568D4()
{
  v25 = v0;

  if (qword_101906618 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_101915950);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 32);
  if (v8)
  {
    v23 = *(v0 + 88);
    log = v6;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v12 = 136315394;
    sub_100259250();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_10004DEB8(v14, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, log, v7, "[accepting low confidence visit] %s | Failed to save visit with error %@", v12, 0x16u);
    sub_100024F64(v13, &qword_1019144F0);

    sub_10004E3D0(v22);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t VisitedPlacesDataOperationsProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100256C34()
{
  result = qword_101915A80;
  if (!qword_101915A80)
  {
    sub_1000D6664(&qword_101915A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915A80);
  }

  return result;
}

unint64_t sub_100256C9C()
{
  result = qword_101915A90;
  if (!qword_101915A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915A90);
  }

  return result;
}

uint64_t sub_100256CF0()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101915950);
  sub_100021540(v0, qword_101915950);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100256D98()
{
  v1 = [*(v0 + 16) _identifier];
  if (v1 && (v2 = v1, v3 = [v1 mapsIdentifierString], v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_1000CE6B8(&qword_101908400);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1011E4FD0;
    Predicate = type metadata accessor for MapsSyncQueryPredicate();
    sub_1000CE6B8(&unk_10190D5C0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1011E1D30;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1000DA61C();
    *(v9 + 32) = v4;
    *(v9 + 40) = v6;
    v10 = static MapsSyncQueryPredicate.withFormat(_:_:)();

    *(v7 + 32) = v10;
    *(v7 + 40) = static MapsSyncQueryPredicate.withFormat(_:_:)();
    v11 = objc_allocWithZone(Predicate);
    v12 = MapsSyncQueryPredicate.init(and:)();
    *(v0 + 24) = v12;
    v13 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
    v14 = v12;
    v15 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    *(v0 + 32) = v15;
    type metadata accessor for VisitRequest();
    *(v0 + 40) = VisitRequest.__allocating_init()();
    v20 = (&async function pointer to dispatch thunk of MapsSyncRequest.count(options:) + async function pointer to dispatch thunk of MapsSyncRequest.count(options:));
    v16 = v15;
    v17 = swift_task_alloc();
    *(v0 + 48) = v17;
    *v17 = v0;
    v17[1] = sub_100257040;

    return v20(v15);
  }

  else
  {
    v19 = *(v0 + 8);

    return v19(0, 1);
  }
}

uint64_t sub_100257040(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[5];
  v6 = v4[4];
  if (v1)
  {

    v7 = sub_100257224;
  }

  else
  {

    v4[8] = a1;
    v7 = sub_1002571AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002571AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  v3 = *(v0 + 56) != 0;
  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t sub_100257224()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56) != 0;
  v3 = *(v0 + 8);

  return v3(0, v2);
}

uint64_t sub_1002572B4()
{
  sub_1000CE6B8(&unk_101916430);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D30;

  v2 = String._bridgeToObjectiveC()();

  v3 = objc_opt_self();
  v4 = [v3 expressionForKeyPath:v2];

  *(v1 + 56) = sub_100014C84(0, &unk_101921940);
  *(v1 + 32) = v4;
  v5 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v3 expressionForFunction:v5 arguments:isa];

  v8 = objc_allocWithZone(type metadata accessor for MapsSyncExpression());

  v9 = MapsSyncExpression.init(expression:key:returnType:)();
  v0[17] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E1D30;
  v12 = qword_101915920;
  v11 = off_101915928;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 32) = v12;
  *(v10 + 40) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1011E1D30;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = v12;
  *(v13 + 40) = v11;
  v14 = objc_allocWithZone(type metadata accessor for MapsSyncDictionaryQueryOptions());
  swift_bridgeObjectRetain_n();
  v15 = v9;
  v16 = MapsSyncDictionaryQueryOptions.init(propertiesToFetch:groupBy:expression:)();
  v0[18] = v16;
  sub_1000CE6B8(&qword_101908400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1011E47B0;
  Predicate = type metadata accessor for MapsSyncQueryPredicate();
  v19 = v16;
  _StringGuts.grow(_:)(50);

  v20._countAndFlagsBits = 0x206C696E203D2120;
  v20._object = 0xEC00000020444E41;
  String.append(_:)(v20);
  v21 = aMapitemcity[0];
  v22 = aMapitemcity[1];

  v23._countAndFlagsBits = v21;
  v23._object = v22;
  String.append(_:)(v23);

  v24._object = 0x8000000101227C90;
  v24._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v24);
  v25 = static MapsSyncQueryPredicate.withFormat(_:_:)();

  *(v17 + 32) = v25;
  v26 = objc_allocWithZone(Predicate);
  MapsSyncQueryPredicate.init(and:)();
  dispatch thunk of MapsSyncQueryOptions.predicate.setter();

  type metadata accessor for VisitedLocationRequest();
  v0[19] = VisitedLocationRequest.__allocating_init()();
  v29 = (&async function pointer to dispatch thunk of MapsSyncRequest.fetchProperties(options:) + async function pointer to dispatch thunk of MapsSyncRequest.fetchProperties(options:));
  v27 = swift_task_alloc();
  v0[20] = v27;
  *v27 = v0;
  v27[1] = sub_10025769C;

  return v29(v19);
}

uint64_t sub_10025769C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 168) = a1;

  v4 = *(v3 + 152);
  if (v1)
  {

    v5 = sub_100257C18;
  }

  else
  {

    v5 = sub_1002577E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002577E4()
{
  v1 = *(v0 + 168);
  result = sub_1000D0C9C(_swiftEmptyArrayStorage);
  v3 = result;
  if (v1 >> 62)
  {
LABEL_40:
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_41:
    v27 = *(v0 + 144);

    v28 = *(v0 + 8);

    return v28(v3);
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_41;
  }

LABEL_3:
  if (v4 < 1)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v32 = *(v0 + 168) + 32;
  v29 = v6;
  v30 = v4;
  while (1)
  {
    if (v6)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v32 + 8 * v5);
    }

    v8 = v7;
    v9 = off_101915928;
    *(v0 + 80) = qword_101915920;
    *(v0 + 88) = v9;

    v10 = [v8 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    *(v0 + 16) = v33;
    *(v0 + 32) = v34;
    if (!*(v0 + 40))
    {

      v14 = v0 + 16;
LABEL_27:
      sub_100024F64(v14, &unk_101908380);
      goto LABEL_6;
    }

    sub_100014C84(0, &qword_101909920);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_6:
    if (v4 == ++v5)
    {
      goto LABEL_41;
    }
  }

  v11 = *(v0 + 128);
  v12 = aMapitemcity[1];
  *(v0 + 96) = aMapitemcity[0];
  *(v0 + 104) = v12;

  v13 = [v8 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  *(v0 + 48) = v33;
  *(v0 + 64) = v34;
  if (!*(v0 + 72))
  {

    v14 = v0 + 48;
    goto LABEL_27;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_6;
  }

  v1 = *(v0 + 112);
  v31 = *(v0 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v33 = v3;
  v17 = sub_10029709C(v11);
  v18 = v3[2];
  v19 = (v16 & 1) == 0;
  result = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_40;
  }

  v20 = v16;
  if (v3[3] >= result)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      result = sub_10012C1C0();
      if ((v20 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_31;
  }

  sub_1001263E0(result, isUniquelyReferenced_nonNull_native);
  result = sub_10029709C(v11);
  if ((v20 & 1) == (v21 & 1))
  {
    v17 = result;
    if ((v20 & 1) == 0)
    {
LABEL_33:
      v3[(v17 >> 6) + 8] |= 1 << v17;
      *(v3[6] + 8 * v17) = v11;
      v23 = (v3[7] + 16 * v17);
      *v23 = v1;
      v23[1] = v31;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        goto LABEL_45;
      }

      v3[2] = v26;
      goto LABEL_35;
    }

LABEL_31:
    v22 = (v3[7] + 16 * v17);
    *v22 = v1;
    v22[1] = v31;

LABEL_35:
    v6 = v29;
    v4 = v30;
    goto LABEL_6;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100257C18()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = sub_1000D0C9C(_swiftEmptyArrayStorage);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100257C98(char a1, uint64_t a2, char a3)
{
  *(v3 + 225) = a3;
  *(v3 + 128) = a2;
  *(v3 + 224) = a1;
  return _swift_task_switch(sub_100257CC0, 0, 0);
}

uint64_t sub_100257CC0()
{
  v40 = *(v0 + 225);
  v42 = xmmword_101915930;

  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2 = qword_101915920;
  v3 = off_101915928;

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  *(v0 + 136) = v42;
  sub_1000CE6B8(&unk_101916430);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E1D30;
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 expressionForKeyPath:v6];

  *(v5 + 56) = sub_100014C84(0, &unk_101921940);
  *(v5 + 32) = v8;
  v9 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v7 expressionForFunction:v9 arguments:isa];

  v12 = objc_allocWithZone(type metadata accessor for MapsSyncExpression());
  v13 = MapsSyncExpression.init(expression:key:returnType:)();
  *(v0 + 152) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1011E1D30;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 32) = v42;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1011E1D30;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = v42;
  objc_allocWithZone(type metadata accessor for MapsSyncDictionaryQueryOptions());
  swift_bridgeObjectRetain_n();
  v16 = v13;
  v17 = MapsSyncDictionaryQueryOptions.init(propertiesToFetch:groupBy:expression:)();
  *(v0 + 160) = v17;
  Predicate = type metadata accessor for MapsSyncQueryPredicate();
  _StringGuts.grow(_:)(35);

  v19._countAndFlagsBits = 0x206C696E203D2120;
  v19._object = 0xEC00000020444E41;
  String.append(_:)(v19);
  String.append(_:)(v42);
  v20._countAndFlagsBits = 0x4E412030203D2120;
  v20._object = 0xEA00000000002044;
  String.append(_:)(v20);
  String.append(_:)(v42);
  v21._countAndFlagsBits = 0x6C696E203D2120;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22 = static MapsSyncQueryPredicate.withFormat(_:_:)();
  *(v0 + 168) = v22;

  sub_1000CE6B8(&qword_101908400);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1011E4FD0;
  v24 = v17;
  *(v23 + 32) = static MapsSyncQueryPredicate.withFormat(_:_:)();
  *(v23 + 40) = v22;
  v25 = objc_allocWithZone(Predicate);
  v26 = v22;
  MapsSyncQueryPredicate.init(and:)();
  dispatch thunk of MapsSyncQueryOptions.predicate.setter();
  if ((v40 & 1) == 0)
  {
    v27 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
    MapsSyncRange.init(offset:limit:)();
    dispatch thunk of MapsSyncQueryOptions.range.setter();
  }

  v28 = *(v0 + 224);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1011E47B0;
  if (v28 > 1)
  {
    v33 = aMapitemcity[0];
    v34 = aMapitemcity[1];

    v35._countAndFlagsBits = v33;
    v35._object = v34;
    String.append(_:)(v35);

    v36 = objc_allocWithZone(NSSortDescriptor);
    v31 = String._bridgeToObjectiveC()();

    v32 = [v36 initWithKey:v31 ascending:1];
  }

  else
  {
    v30 = objc_allocWithZone(NSSortDescriptor);
    v31 = String._bridgeToObjectiveC()();
    v32 = [v30 initWithKey:v31 ascending:0];
  }

  v37 = v32;

  *(v29 + 32) = v37;
  dispatch thunk of MapsSyncQueryOptions.sortDescriptors.setter();

  type metadata accessor for VisitRequest();
  *(v0 + 176) = VisitRequest.__allocating_init()();
  v41 = (&async function pointer to dispatch thunk of MapsSyncRequest.fetchProperties(options:) + async function pointer to dispatch thunk of MapsSyncRequest.fetchProperties(options:));
  v38 = swift_task_alloc();
  *(v0 + 184) = v38;
  *v38 = v0;
  v38[1] = sub_1002582B8;

  return v41(v24);
}

uint64_t sub_1002582B8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 192) = a1;

  v4 = *(v3 + 176);
  if (v1)
  {

    v5 = sub_100258B5C;
  }

  else
  {

    v5 = sub_10025840C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10025840C()
{
  v1 = *(v0 + 192);
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (!v22)
      {
        v31 = _swiftEmptyArrayStorage;
LABEL_36:

        *(v0 + 200) = v31;
        v28 = swift_task_alloc();
        *(v0 + 208) = v28;
        *v28 = v0;
        v28[1] = sub_100258868;

        return sub_100257298();
      }

      v2 = v22;
      if (v22 >= 1)
      {
        v3 = *(v0 + 192);
LABEL_3:
        v4 = 0;
        v5 = v1 & 0xC000000000000001;
        v6 = v3 + 32;
        v31 = _swiftEmptyArrayStorage;
        v7 = &type metadata for String;
        v8 = &stru_10185C000;
        v29 = v3 + 32;
        v30 = v5;
        do
        {
          if (v5)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v9 = *(v6 + 8 * v4);
          }

          v10 = v9;
          v11 = *(v0 + 144);
          *(v0 + 80) = *(v0 + 136);
          *(v0 + 88) = v11;

          v12 = [v10 v8[182].attr];
          swift_unknownObjectRelease();
          if (v12)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v32 = 0u;
            v33 = 0u;
          }

          *(v0 + 16) = v32;
          *(v0 + 32) = v33;
          if (*(v0 + 40))
          {
            sub_100014C84(0, &qword_101909920);
            if (swift_dynamicCast())
            {
              v13 = v8;
              v14 = *(v0 + 112);
              *(v0 + 96) = 0xD000000000000015;
              *(v0 + 104) = 0x8000000101227C50;
              v15 = v7;
              v16 = v13;
              v17 = [v10 v13[182].attr];
              swift_unknownObjectRelease();
              if (v17)
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
              }

              else
              {
                v32 = 0u;
                v33 = 0u;
              }

              *(v0 + 48) = v32;
              *(v0 + 64) = v33;
              if (*(v0 + 72))
              {
                if (swift_dynamicCast())
                {
                  v18 = *(v0 + 120);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v31 = sub_100097B7C(0, v31[2] + 1, 1, v31);
                  }

                  v20 = v31[2];
                  v19 = v31[3];
                  if (v20 >= v19 >> 1)
                  {
                    v31 = sub_100097B7C((v19 > 1), v20 + 1, 1, v31);
                  }

                  v31[2] = v20 + 1;
                  v21 = &v31[2 * v20];
                  v21[4] = v14;
                  v21[5] = v18;
                  v6 = v29;
                }

                else
                {
                }
              }

              else
              {

                sub_100024F64(v0 + 48, &unk_101908380);
              }

              v8 = v16;
              v7 = v15;
              v5 = v30;
            }

            else
            {
            }
          }

          else
          {

            sub_100024F64(v0 + 16, &unk_101908380);
          }

          ++v4;
        }

        while (v2 != v4);
        goto LABEL_36;
      }

      __break(1u);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = *(v0 + 192);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  v25 = *(v0 + 152);

  v26 = *(v0 + 8);

  return v26(_swiftEmptyArrayStorage);
}

uint64_t sub_100258868(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_100258968, 0, 0);
}

void sub_100258968()
{
  v1 = 0;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v3 + 16);
  v5 = v3 + 40;
  v24 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = (v5 + 16 * v1);
  while (v4 != v1)
  {
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v10 = *v6;
    v7 = *(v2 + 16);
    v11 = *(v6 - 1);
    v12 = v11;
    if (v7)
    {
      v13 = sub_10029709C(v11);
      if (v14)
      {
        v15 = (*(v2 + 56) + 16 * v13);
        v7 = *v15;
        v8 = v15[1];
        v16 = v12;

        v9 = v12;
        goto LABEL_5;
      }

      v7 = 0;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_5:
    v6 += 2;
    ++v1;
    sub_100259840(v7, v8, v9);
    sub_100259884(v7, v8, v9);

    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100355AA4(0, v24[2] + 1, 1, v24);
      }

      v18 = v24[2];
      v17 = v24[3];
      if (v18 >= v17 >> 1)
      {
        v24 = sub_100355AA4((v17 > 1), v18 + 1, 1, v24);
      }

      v5 = v3 + 40;
      v24[2] = v18 + 1;
      v19 = &v24[4 * v18];
      v19[4] = v7;
      v19[5] = v8;
      v19[6] = v9;
      v19[7] = v10;
      goto LABEL_2;
    }
  }

  v20 = v25[20];
  v21 = v25[21];
  v22 = v25[19];

  v23 = v25[1];

  v23(v24);
}

uint64_t sub_100258B5C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(_swiftEmptyArrayStorage);
}

uint64_t sub_100258BD0()
{
  type metadata accessor for MapsSyncKeyedStore();
  v0 = static MapsSyncKeyedStore.shared.getter();
  dispatch thunk of MapsSyncKeyedStore.object(forKey:)();

  if (!v5)
  {
    sub_100024F64(v4, &unk_101908380);
    return 0;
  }

  sub_100014C84(0, &qword_101909920);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = [v3 integerValue];

  if (v1 == 90)
  {
    return 2;
  }

  else
  {
    return v1 == 365;
  }
}

uint64_t sub_100258CC0(uint64_t result)
{
  if (result > 1u)
  {
    if (result != 2)
    {
      return result;
    }

    v1 = 90;
  }

  else if (result)
  {
    v1 = 365;
  }

  else
  {
    v1 = result;
  }

  v2 = [objc_allocWithZone(NSNumber) initWithInteger:v1];
  type metadata accessor for MapsSyncKeyedStore();
  v3 = static MapsSyncKeyedStore.shared.getter();
  v5[3] = sub_100014C84(0, &qword_101909920);
  v5[0] = v2;
  v4 = v2;
  dispatch thunk of MapsSyncKeyedStore.setObject(_:key:)();

  return sub_100024F64(v5, &unk_101908380);
}

uint64_t sub_100258DD4()
{
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_10190D5C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D30;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v1 + 56) = sub_100014C84(0, &qword_101922DA0);
  *(v1 + 64) = sub_1002592A8();
  *(v1 + 32) = isa;
  static MapsSyncQueryPredicate.withFormat(_:_:)();

  v3 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
  MapsSyncRange.init(offset:limit:)();
  v4 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v5 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[3] = v5;
  type metadata accessor for VisitRequest();
  v0[4] = VisitRequest.__allocating_init()();
  v9 = (&async function pointer to dispatch thunk of VisitRequest.fetch(options:) + async function pointer to dispatch thunk of VisitRequest.fetch(options:));
  v6 = v5;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_100258F90;

  return v9(v5);
}

uint64_t sub_100258F90(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 48) = a1;

  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  if (v1)
  {

    v6 = sub_1002591EC;
  }

  else
  {

    v6 = sub_1002590F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002590F4()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = v0[3];

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[6] + 32);
  }

  v4 = v0[3];

LABEL_9:
  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_1002591EC()
{
  v1 = *(v0 + 8);

  return v1(0);
}

unint64_t sub_100259250()
{
  result = qword_101915A98;
  if (!qword_101915A98)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915A98);
  }

  return result;
}

unint64_t sub_1002592A8()
{
  result = qword_101924FF0;
  if (!qword_101924FF0)
  {
    sub_100014C84(255, &qword_101922DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924FF0);
  }

  return result;
}

uint64_t sub_100259310(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100259330, 0, 0);
}

uint64_t sub_100259330()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_10190D5C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E1D30;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000DA61C();
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  static MapsSyncQueryPredicate.withFormat(_:_:)();

  v4 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
  MapsSyncRange.init(offset:limit:)();
  v5 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v6 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[4] = v6;
  type metadata accessor for VisitedLocationRequest();
  v0[5] = VisitedLocationRequest.__allocating_init()();
  v10 = (&async function pointer to dispatch thunk of VisitedLocationRequest.fetch(options:) + async function pointer to dispatch thunk of VisitedLocationRequest.fetch(options:));
  v7 = v6;
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1002594E0;

  return v10(v6);
}

uint64_t sub_1002594E0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 56) = a1;

  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  if (v1)
  {

    v6 = sub_10025973C;
  }

  else
  {

    v6 = sub_100259644;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100259644()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = v0[4];

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[7] + 32);
  }

  v4 = v0[4];

LABEL_9:
  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_10025973C()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1002597D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190EB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100259840(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

void sub_100259884(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1002598C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100259924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100259994(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1002599DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id MapsHomeQuickActionMenuPresenter.__allocating_init(collectionView:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC4Maps32MapsHomeQuickActionMenuPresenter_collectionView] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "initWithView:", a1);
}

id MapsHomeQuickActionMenuPresenter.init(collectionView:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC4Maps32MapsHomeQuickActionMenuPresenter_collectionView] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MapsHomeQuickActionMenuPresenter();
  return objc_msgSendSuper2(&v4, "initWithView:", a1);
}

uint64_t MapsHomeQuickActionMenuPresenter.shouldBeginOrbGesture(atLocation:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = v26 - v14;
  v16 = OBJC_IVAR____TtC4Maps32MapsHomeQuickActionMenuPresenter_collectionView;
  result = [a1 isDescendantOfView:{*&v4[OBJC_IVAR____TtC4Maps32MapsHomeQuickActionMenuPresenter_collectionView], v13}];
  if (!result)
  {
    return result;
  }

  [*&v4[v16] convertPoint:a1 fromCoordinateSpace:{a2, a3}];
  result = [*&v4[v16] indexPathForItemAtPoint:?];
  if (!result)
  {
    return result;
  }

  v18 = result;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 32))(v15, v11, v8);
  v19 = *&v4[v16];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v21 = [v19 cellForItemAtIndexPath:isa];

  if (!v21)
  {
    goto LABEL_10;
  }

  v26[1] = &OBJC_PROTOCOL____TtP4Maps31MapsHomeQuickActionMenuProvider_;
  v22 = swift_dynamicCastObjCProtocolConditional();
  if (!v22)
  {

LABEL_10:
    (*(v9 + 8))(v15, v8);
    return 0;
  }

  v23 = [v22 personalizedItemForQuickActionMenu];
  if (!v23)
  {
    (*(v9 + 8))(v15, v8);

    return 0;
  }

  [v4 setPlace:v23];
  v24 = [v4 delegate];
  if (v24)
  {
    v25 = [v24 uiTargetForQuickActionMenu];
    swift_unknownObjectRelease();
    [v4 setUiTarget:v25];
  }

  swift_unknownObjectRelease();

  (*(v9 + 8))(v15, v8);
  return 1;
}

id MapsHomeQuickActionMenuPresenter.__allocating_init(view:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithView:a1];

  return v3;
}

id MapsHomeQuickActionMenuPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsHomeQuickActionMenuPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id TwoLineCollectionViewListCell.personalizedItemForQuickActionMenu.getter()
{
  result = [v0 viewModel];
  if (result)
  {
    v2 = [result personalizedItemForQuickActionMenuCreator];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = v2[2](v2);
      _Block_release(v2);
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id _s4Maps0A28HomeQuickActionMenuPresenterC07contextE11Interaction_13configuration37highlightPreviewForItemWithIdentifierSo010UITargetedK0CSgSo09UIContexteH0C_So0qE13ConfigurationCSo9NSCopying_ptF_0()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = OBJC_IVAR____TtC4Maps32MapsHomeQuickActionMenuPresenter_collectionView;
  if (![PlaceSummaryTableViewCell canBecomeFirstResponder]_0(*&v0[OBJC_IVAR____TtC4Maps32MapsHomeQuickActionMenuPresenter_collectionView]))
  {
    v9 = *&v0[v8];
    [v0 location];
    v10 = [v9 indexPathForItemAtPoint:?];

    if (v10)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v2 + 32))(v7, v4, v1);
      v11 = *&v0[v8];
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v13 = [v11 cellForItemAtIndexPath:isa];

      if (v13)
      {
        v14 = [objc_allocWithZone(UITargetedPreview) initWithView:v13];
        v15 = [v14 parameters];
        v16 = [objc_opt_self() clearColor];
        [v15 setBackgroundColor:v16];

        (*(v2 + 8))(v7, v1);
        return v14;
      }

      (*(v2 + 8))(v7, v1);
    }
  }

  return 0;
}

uint64_t sub_10025A324@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v57 = type metadata accessor for MapsDesignAccessibilityString();
  v2 = *(v57 - 8);
  __chkstk_darwin(v57);
  v4 = (&v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_1000CE6B8(&qword_101915B28);
  __chkstk_darwin(v59);
  v6 = &v54 - v5;
  v61 = sub_1000CE6B8(&qword_101915B30);
  v67 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v65 = &v54 - v9;
  v10 = sub_1000CE6B8(&qword_101915B38);
  __chkstk_darwin(v10 - 8);
  v66 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = type metadata accessor for VerticalSpacing.SpacingType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for VerticalSpacing();
  v56 = *(v64 - 8);
  v19 = v56;
  __chkstk_darwin(v64);
  v63 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v54 - v23;
  (*(v16 + 104))(v18, enum case for VerticalSpacing.SpacingType.large(_:), v15, v22);
  v55 = v24;
  VerticalSpacing.init(_:)();
  static VerticalSpacing.SpacingSize.small.getter();
  v26 = v25;
  v27 = v14;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = v26;
  v14[16] = 0;
  v28 = &v14[*(sub_1000CE6B8(&qword_101915B40) + 44)];
  v54 = v14;
  v29 = v58;
  sub_10025A958(v58, v28);
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v30 = sub_1000CE6B8(&qword_101915B48);
  sub_10025C1C8(v29, &v6[*(v30 + 44)]);
  LOBYTE(v29) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v31 = &v6[*(v59 + 36)];
  *v31 = v29;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  *v4 = 0xD000000000000012;
  v4[1] = 0x8000000101227DD0;
  v36 = v57;
  (*(v2 + 104))(v4, enum case for MapsDesignAccessibilityString.button(_:), v57);
  sub_10025CA94();
  v37 = v65;
  View.mapsDesignAXCombinedContainer(withID:)();
  (*(v2 + 8))(v4, v36);
  sub_100024F64(v6, &qword_101915B28);
  v38 = *(v19 + 16);
  v40 = v63;
  v39 = v64;
  v38(v63, v24, v64);
  v41 = v66;
  sub_1000D2DFC(v27, v66, &qword_101915B38);
  v42 = *(v67 + 16);
  v43 = v60;
  v44 = v61;
  v42(v60, v37, v61);
  v45 = v42;
  v46 = v62;
  v38(v62, v40, v39);
  v47 = sub_1000CE6B8(&qword_101915B68);
  sub_1000D2DFC(v41, &v46[*(v47 + 48)], &qword_101915B38);
  v48 = &v46[*(v47 + 64)];
  v49 = v43;
  v45(v48, v43, v44);
  v50 = *(v67 + 8);
  v50(v65, v44);
  sub_100024F64(v54, &qword_101915B38);
  v51 = *(v56 + 8);
  v52 = v64;
  v51(v55, v64);
  v50(v49, v44);
  sub_100024F64(v66, &qword_101915B38);
  return (v51)(v63, v52);
}

uint64_t sub_10025A958@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v121 = a1;
  v120 = a2;
  v110 = sub_1000CE6B8(&qword_101915BB0);
  __chkstk_darwin(v110);
  v111 = &v95 - v2;
  v99 = sub_1000CE6B8(&qword_101915BB8);
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v95 - v3;
  v102 = sub_1000CE6B8(&qword_101915BC0);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v95 - v4;
  v109 = sub_1000CE6B8(&qword_101915BC8);
  __chkstk_darwin(v109);
  v101 = &v95 - v5;
  v118 = sub_1000CE6B8(&qword_101915BD0);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v7 = &v95 - v6;
  v8 = sub_1000CE6B8(&qword_101915BD8);
  __chkstk_darwin(v8 - 8);
  v119 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v95 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v124 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for GridButtonViewModel.ButtonProminence();
  v122 = *(v129 - 8);
  __chkstk_darwin(v129);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for GridButtonViewModel.ButtonMetrics();
  v134 = *(v128 - 8);
  __chkstk_darwin(v128);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GridButton();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v112 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v131 = &v95 - v24;
  __chkstk_darwin(v25);
  v125 = &v95 - v26;
  v27 = sub_1000CE6B8(&qword_101915BE0);
  __chkstk_darwin(v27 - 8);
  v116 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v95 - v30;
  v32 = sub_1004270D4();
  v126 = v20;
  v127 = v21;
  v132 = v12;
  v133 = v31;
  v108 = v7;
  v130 = v13;
  v135 = v14;
  v123 = v19;
  if (v32)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v33._countAndFlagsBits = 0xD000000000000011;
    v34._countAndFlagsBits = 0xD00000000000001DLL;
    v142._object = 0x8000000101227FB0;
    v34._object = 0x8000000101227F70;
    v33._object = 0x8000000101227F90;
    v142._countAndFlagsBits = 0xD000000000000024;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, qword_1019600D8, v33, v142)._countAndFlagsBits;
    v35 = swift_allocObject();
    v36 = v121;
    *(v35 + 16) = v121;
    (*(v134 + 13))(v19, enum case for GridButtonViewModel.ButtonMetrics.large(_:), v128);
    v37 = v17;
    (*(v122 + 13))(v17, enum case for GridButtonViewModel.ButtonProminence.secondary(_:), v129);
    v38 = v36;
    static Color.blue.getter();
    v39 = v124;
    UUID.init()();
    UUID.uuidString.getter();
    v135[1](v39, v130);
    type metadata accessor for GridButtonViewModel();
    swift_allocObject();
    GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_10025D150;
    *(v40 + 24) = v35;
    v41 = v125;
    GridButton.init(model:tapHandler:)();
    v42 = v127;
    v43 = v133;
    v44 = v41;
    v45 = v126;
    (*(v127 + 32))(v133, v44, v126);
    (*(v42 + 56))(v43, 0, 1, v45);
  }

  else
  {
    (*(v21 + 56))(v31, 1, 1, v20);
    v37 = v17;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v46._countAndFlagsBits = 0xD000000000000010;
  v47._countAndFlagsBits = 0xD00000000000001CLL;
  v143._object = 0x8000000101227EB0;
  v47._object = 0x8000000101227E70;
  v46._object = 0x8000000101227E90;
  v107.super.isa = qword_1019600D8;
  v143._countAndFlagsBits = 0xD000000000000024;
  v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, qword_1019600D8, v46, v143);
  countAndFlagsBits = v48._countAndFlagsBits;
  object = v48._object;
  v113 = " marking my location";
  v49 = swift_allocObject();
  v50 = v121;
  *(v49 + 16) = v121;
  v51 = *(v134 + 13);
  v106 = enum case for GridButtonViewModel.ButtonMetrics.large(_:);
  v134 = (v134 + 104);
  v105 = v51;
  v51(v123);
  v52 = *(v122 + 13);
  v104 = enum case for GridButtonViewModel.ButtonProminence.secondary(_:);
  v103 = v52;
  v52(v37);
  v53 = v50;
  static Color.blue.getter();
  v54 = v124;
  UUID.init()();
  UUID.uuidString.getter();
  v55 = v135[1];
  ++v135;
  v121 = v55;
  v55(v54, v130);
  type metadata accessor for GridButtonViewModel();
  swift_allocObject();
  v122 = v37;
  GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_10025CD68;
  *(v56 + 24) = v49;
  GridButton.init(model:tapHandler:)();
  swift_getKeyPath();
  v136 = v53;
  v57 = sub_10025D1EC(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v53 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP) == 1)
  {
    v58._countAndFlagsBits = 0xD00000000000001BLL;
    v144._countAndFlagsBits = 0xD000000000000023;
    v144._object = 0x8000000101227F20;
    v59._countAndFlagsBits = 0x612074726F706552;
    v59._object = 0xEF6575737349206ELL;
    v58._object = 0x8000000101227F00;
    v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v107, v59, v144);
    countAndFlagsBits = v60._countAndFlagsBits;
    object = v57;
    v107.super.isa = " reporting an issue";
    v113 = swift_allocObject();
    *(v113 + 2) = v53;
    v105(v123, v106, v128);
    v103(v122, v104, v129);
    v134 = v53;

    static Color.blue.getter();
    UUID.init()();
    UUID.uuidString.getter();
    v121(v54, v130);
    swift_allocObject();
    v135 = v60._object;
    v61 = v134;
    GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)();
    v62 = swift_allocObject();
    v63 = v113;
    *(v62 + 16) = sub_10025CE6C;
    *(v62 + 24) = v63;
    v64 = v112;
    GridButton.init(model:tapHandler:)();
    swift_getKeyPath();
    v136 = v61;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v65 = *(v61 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__rapMenuProvider);
    if (v65)
    {

      v66 = v65(v61);
      sub_1000588AC(v65);
    }

    else
    {
      v66 = _swiftEmptyArrayStorage;
    }

    v69 = v126;
    v68 = v127;
    if (v66 >> 62)
    {
      v71 = _CocoaArrayWrapper.endIndex.getter();
      if (v71 >= 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v71 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v71 >= 1)
      {
LABEL_15:
        __chkstk_darwin(v71);
        __chkstk_darwin(v72);
        v73 = v69;
        sub_1000CE6B8(&qword_101915C08);
        sub_10025D1EC(&qword_10190A3F8, &type metadata accessor for GridButton);
        sub_10025D0A0();
        v74 = v96;
        Menu.init(content:label:)();

        v75 = swift_allocObject();
        *(v75 + 16) = v61;
        v136 = sub_10025D238;
        v137 = v75;
        v76 = sub_1000414C8(&qword_101915BF8, &qword_101915BB8);
        v77 = sub_10025CFD8();
        v78 = v61;
        v79 = v98;
        v80 = v99;
        View.buttonStyle<A>(_:)();

        (*(v97 + 8))(v74, v80);
        v140 = countAndFlagsBits;
        v141 = v135;
        v136 = v80;
        v137 = &type metadata for HomeActionButtonStyle;
        v138 = v76;
        v139 = v77;
        v64 = v112;
        swift_getOpaqueTypeConformance2();
        sub_1000E5580();
        v81 = v101;
        v82 = v102;
        View.accessibilityLabel<A>(_:)();
        (*(v100 + 8))(v79, v82);

        sub_1000D2DFC(v81, v111, &qword_101915BC8);
        swift_storeEnumTagMultiPayload();
        sub_10025CE98();
        v83 = v108;
        v68 = v127;
        _ConditionalContent<>.init(storage:)();
        v84 = v81;
        v69 = v73;
        sub_100024F64(v84, &qword_101915BC8);
LABEL_18:
        v67 = v132;
        v70 = v133;
        sub_1000AD084(v83, v132);
        (*(v117 + 56))(v67, 0, 1, v118);
        (*(v68 + 8))(v64, v69);
        goto LABEL_19;
      }
    }

    (*(v68 + 16))(v111, v64, v69);
    swift_storeEnumTagMultiPayload();
    sub_10025CE98();
    sub_10025D1EC(&qword_10190A3F8, &type metadata accessor for GridButton);
    v83 = v108;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_18;
  }

  v67 = v132;
  (*(v117 + 56))(v132, 1, 1, v118);
  v69 = v126;
  v68 = v127;
  v70 = v133;
LABEL_19:
  v85 = v116;
  sub_10025CD94(v70, v116);
  v86 = *(v68 + 16);
  v87 = v125;
  v88 = v131;
  v86(v125, v131, v69);
  v89 = v119;
  sub_1000D2DFC(v67, v119, &qword_101915BD8);
  v90 = v69;
  v91 = v120;
  sub_10025CD94(v85, v120);
  v92 = sub_1000CE6B8(&qword_101915BE8);
  v86((v91 + *(v92 + 48)), v87, v90);
  sub_1000D2DFC(v89, v91 + *(v92 + 64), &qword_101915BD8);
  sub_100024F64(v132, &qword_101915BD8);
  v93 = *(v68 + 8);
  v93(v88, v90);
  sub_10025CE04(v133);
  sub_100024F64(v89, &qword_101915BD8);
  v93(v87, v90);
  return sub_10025CE04(v85);
}

uint64_t sub_10025BD6C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_10025D1EC(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(a1 + *a3);
  if (v6)
  {

    v6(a1);
    return sub_1000588AC(v6);
  }

  return result;
}

uint64_t sub_10025BE3C(unint64_t a1)
{
  sub_10048527C(a1);
  swift_getKeyPath();
  sub_1000CE6B8(&qword_101915C28);
  sub_1000CE6B8(&qword_101915C20);
  sub_1000414C8(&qword_101915C30, &qword_101915C28);
  sub_1000414C8(&qword_101915C18, &qword_101915C20);
  return ForEach<>.init(_:id:content:)();
}

__n128 sub_10025BF68@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  sub_10025BFDC(a1, &v8);
  v5 = v9;
  result = v8;
  v7 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_10025BFDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 title];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v17 = v5;
  v18 = v7;
  sub_1000E5580();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  LOBYTE(v7) = v11;
  v13 = v12;
  v14 = [a1 image];
  v15 = Image.init(uiImage:)();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  sub_1001C8AFC(v8, v10, v7 & 1);

  sub_1000F0A40(v8, v10, v7 & 1);
}

uint64_t sub_10025C0C8(uint64_t a1)
{
  v1 = [*(a1 + 8) actionHandler];
  *(swift_allocObject() + 16) = v1;
  sub_1000CE6B8(&qword_101915C38);
  sub_1000414C8(&qword_101915C40, &qword_101915C38);
  return Button.init(action:label:)();
}

uint64_t sub_10025C1C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000CE6B8(&qword_101915B70);
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v26 - v8;
  v10 = sub_1000CE6B8(&qword_101915B78);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  *(swift_allocObject() + 16) = a1;
  v17 = a1;
  sub_1000CE6B8(&qword_101915B80);
  sub_1000414C8(&qword_101915B88, &qword_101915B80);
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_1000414C8(&qword_101915B90, &qword_101915B70);
  sub_10025D1EC(&qword_10190C670, &type metadata accessor for PlainButtonStyle);
  v19 = v26;
  v18 = v27;
  View.buttonStyle<A>(_:)();
  (*(v28 + 8))(v6, v18);
  (*(v7 + 8))(v9, v19);
  LODWORD(a1) = static HierarchicalShapeStyle.secondary.getter();
  *&v16[*(sub_1000CE6B8(&qword_101915B98) + 36)] = a1;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  v20 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v22 = &v16[*(v11 + 44)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_1000D2DFC(v16, v13, &qword_101915B78);
  v23 = v29;
  sub_1000D2DFC(v13, v29, &qword_101915B78);
  v24 = v23 + *(sub_1000CE6B8(&qword_101915BA0) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_100024F64(v16, &qword_101915B78);
  return sub_100024F64(v13, &qword_101915B78);
}

__n128 sub_10025C5C8@<Q0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  sub_10025C64C(v5);
  *&v4[48] = *&v6[9];
  *&v4[39] = *v6;
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 17) = *v4;
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 65) = *&v4[48];
  return result;
}

uint64_t sub_10025C64C@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v33._object = 0x8000000101227E30;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x8000000101227DF0;
  v2._object = 0x8000000101227E10;
  v33._countAndFlagsBits = 0xD000000000000031;
  v2._countAndFlagsBits = 0xD000000000000012;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v2, v33);
  sub_1000E5580();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v13 = static Text.+ infix(_:_:)();
  v30 = v14;
  v31 = v13;
  v29 = v15;
  sub_1000F0A40(v8, v10, v12 & 1);

  sub_1000F0A40(v3, v5, v7 & 1);

  Image.init(systemName:)();
  v16 = Text.init(_:)();
  v18 = v17;
  v20 = v19;
  v21 = static Text.+ infix(_:_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1000F0A40(v16, v18, v20 & 1);

  sub_1000F0A40(v31, v30, v29 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v21;
  *(a1 + 24) = v23;
  *(a1 + 32) = v25 & 1;
  *(a1 + 40) = v27;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_1001C8AFC(v21, v23, v25 & 1);

  sub_1000F0A40(v21, v23, v25 & 1);
}

uint64_t sub_10025C8FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_1000CE6B8(&qword_101915B20);
  return sub_10025A324(v3, (a1 + *(v4 + 44)));
}

unint64_t sub_10025CA94()
{
  result = qword_101915B50;
  if (!qword_101915B50)
  {
    sub_1000D6664(&qword_101915B28);
    sub_1000414C8(&qword_101915B58, &qword_101915B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915B50);
  }

  return result;
}

uint64_t sub_10025CB78()
{
  v1 = type metadata accessor for ButtonStyleConfiguration.Label();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  v5 = v0[1];
  ButtonStyleConfiguration.label.getter();
  v9[15] = ButtonStyleConfiguration.isPressed.getter() & 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_10025D1EC(&qword_101910A80, &type metadata accessor for ButtonStyleConfiguration.Label);

  View.onChange<A>(of:initial:_:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10025CD10@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10025CD94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101915BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10025CE04(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101915BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10025CE98()
{
  result = qword_101915BF0;
  if (!qword_101915BF0)
  {
    sub_1000D6664(&qword_101915BC8);
    sub_1000D6664(&qword_101915BB8);
    sub_1000414C8(&qword_101915BF8, &qword_101915BB8);
    sub_10025CFD8();
    swift_getOpaqueTypeConformance2();
    sub_10025D1EC(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915BF0);
  }

  return result;
}

unint64_t sub_10025CFD8()
{
  result = qword_101915C00;
  if (!qword_101915C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915C00);
  }

  return result;
}

uint64_t sub_10025D034@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for GridButton();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_10025D0A0()
{
  result = qword_101915C10;
  if (!qword_101915C10)
  {
    sub_1000D6664(&qword_101915C08);
    sub_1000414C8(&qword_101915C18, &qword_101915C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915C10);
  }

  return result;
}

_BYTE *sub_10025D1B0(_BYTE *result, _BYTE *a2)
{
  if ((*result & 1) == 0)
  {
    if (*a2)
    {
      return (*(v2 + 16))();
    }
  }

  return result;
}

uint64_t sub_10025D1EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10025D338(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = [v2 iosChromeViewController];
  if (!v6)
  {
    v9 = [objc_opt_self() sharedService];
    if (v9)
    {
      v10 = v9;
      v8 = [v9 defaultTraits];

      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 currentTraits];

LABEL_6:
  v11 = [objc_allocWithZone(GuidesHomeViewController) initWithGuideLocation:a1 withTraits:v8];

  [v11 setContaineeDelegate:v2];
  [v11 setActionDelegate:v2];
  v12 = OBJC_IVAR____TtC4Maps17GuidesHomeContext_containees;
  swift_beginAccess();
  v13 = sub_1003989D0();
  swift_endAccess();

  swift_beginAccess();
  v14 = v11;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v5 setNeedsUpdateComponent:@"cards" animated:1];
}

void sub_10025D544(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = [objc_allocWithZone(CitySelectorViewController) initWithSourceGuideLocation:a1];
  v7 = [v2 iosChromeViewController];
  if (!v7)
  {
    v10 = [objc_opt_self() sharedService];
    if (v10)
    {
      v11 = v10;
      v9 = [v10 defaultTraits];

      if (v9)
      {
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 currentTraits];

LABEL_6:
  [v6 setTraits:v9];

  [v6 setContaineeDelegate:v2];
  [v6 setActionDelegate:v2];
  v12 = OBJC_IVAR____TtC4Maps17GuidesHomeContext_containees;
  swift_beginAccess();
  v13 = v6;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v5 setNeedsUpdateComponent:@"cards" animated:1];
}

uint64_t sub_10025D76C()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10025D810(uint64_t a1)
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 104);
  swift_getKeyPath();
  sub_100263198(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 80))
  {

    sub_10019617C(a1);
  }

  return sub_100260674();
}

uint64_t sub_10025D964()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10025DA08()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E310, type metadata accessor for VisitHistoryFilterViewModel.HeaderViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_10025DAB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v28[0] = a1;
  v36 = type metadata accessor for DispatchTimeInterval();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for DispatchTime();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v32 = v28 - v8;
  v30 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v12);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC4Maps27VisitHistoryFilterViewModel___observationRegistrar;
  aBlock[0] = v3;
  v28[1] = sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  v28[2] = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 248))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v28[0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v29;
  aBlock[4] = sub_1002635E8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_10160D1B8;
  _Block_copy(aBlock);
  v37 = _swiftEmptyArrayStorage;
  sub_100263198(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);

  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v17 = DispatchWorkItem.init(flags:block:)();

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v28[-2] = v3;
  v28[-1] = v17;
  aBlock[0] = v3;

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100109428();
  v19 = v30;
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v30);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v19);
  v21 = v31;
  static DispatchTime.now()();
  *v5 = 200;
  v22 = v34;
  v23 = v36;
  (*(v34 + 104))(v5, enum case for DispatchTimeInterval.milliseconds(_:), v36);
  v24 = v32;
  + infix(_:_:)();
  (*(v22 + 8))(v5, v23);
  v25 = *(v33 + 8);
  v26 = v35;
  v25(v21, v35);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v25)(v24, v26);
}

uint64_t sub_10025E094(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v7 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  __chkstk_darwin(v7 - 8);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisitHistoryFilterState.DropdownFilterSelectionResult(0);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v24 - v13);
  swift_getKeyPath();
  *&v28 = v4;
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100195790(a1, a2, v26, v27, v14);

  sub_100263694(v14, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v11 + 1);
      v28 = *v11;
      v29 = v16;
      v30 = *(v11 + 2);
      v31 = v11[48];
      swift_getKeyPath();
      *&v33 = v4;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v4 + 40);
        ObjectType = swift_getObjectType();
        (*(v17 + 8))(v4, &v28, ObjectType, v17);
        swift_unknownObjectRelease();
      }

      v32 = v28;
      sub_1002637C0(&v32);
      v33 = v29;
      sub_1002637C0(&v33);
      v34 = v30;
      sub_100024F64(&v34, &qword_101915F00);
    }

    else
    {
      sub_100260674();
    }
  }

  else
  {
    v19 = v11;
    v20 = v25;
    sub_1002636F8(v19, v25, type metadata accessor for VisitHistoryFilterDatePickerMode);
    swift_getKeyPath();
    *&v28 = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v4 + 40);
      v22 = swift_getObjectType();
      (*(v21 + 16))(v4, v20, v22, v21);
      swift_unknownObjectRelease();
    }

    sub_100263760(v20, type metadata accessor for VisitHistoryFilterDatePickerMode);
  }

  return sub_100263760(v14, type metadata accessor for VisitHistoryFilterState.DropdownFilterSelectionResult);
}

uint64_t sub_10025E404()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 224))
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return 0;
    }

LABEL_7:
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    return *(v0 + 120);
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_10025E54C()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 224);
}

uint64_t sub_10025E5EC()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 216))
  {

    Task.cancel()();
  }

  if (*(v0 + 224))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0 + 224) = 0;
  }

  return result;
}

uint64_t sub_10025E760@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 80);
}

uint64_t sub_10025E80C()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10025E8D8()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10025E980(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + 232);
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 24);
  swift_unknownObjectRelease();
  *(v3 + 24) = v4;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_10025EABC()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10025EB84()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 120);
}

uint64_t sub_10025EC24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
}

uint64_t sub_10025ECFC(uint64_t a1)
{
  if (*(v1 + 104) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10025EE30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 112);
}

uint64_t sub_10025EEFC()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10025EFB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_10025F088(uint64_t result)
{
  if (*(v1 + 120) == (result & 1))
  {
    *(v1 + 120) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10025F198()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 121);
}

uint64_t sub_10025F238(uint64_t result)
{
  if (*(v1 + 121) == (result & 1))
  {
    *(v1 + 121) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10025F348(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 112) = _swiftEmptyArrayStorage;
  *(v1 + 120) = 0;
  type metadata accessor for VisitHistoryHomeDataProvider();
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for MapsSyncStore();
  v5 = static MapsSyncStore.sharedStore.getter();
  type metadata accessor for VisitedPlacesDataOperationsProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v4 + 112) = v6;
  *(v4 + 120) = 2;
  *(v2 + 208) = v4;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  type metadata accessor for VisitedPlacesCellActionHandler();
  v7 = swift_allocObject();
  v7[3] = 0;
  swift_unknownObjectWeakInit();
  v7[5] = 0;
  swift_unknownObjectWeakInit();
  v7[6] = 0;
  v7[7] = 0;
  *(v2 + 232) = v7;
  type metadata accessor for VisitHistoryItem.Configuration();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 240) = v8;
  *(v2 + 248) = 0;
  ObservationRegistrar.init()();
  sub_100191458(a1, v2 + 48);
  sub_100191458(a1, &v13);
  type metadata accessor for VisitHistoryFilterViewModel.HeaderViewModel(0);
  v9 = swift_allocObject();
  sub_1002627A8(&v13);
  *(v2 + 96) = v9;
  sub_100191458(a1, &v13);
  type metadata accessor for VisitHistoryFilterState(0);
  v10 = swift_allocObject();
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  ObservationRegistrar.init()();
  v11 = v14[0];
  *(v10 + 16) = v13;
  *(v10 + 32) = v11;
  *(v10 + 41) = *(v14 + 9);
  *(v10 + 104) = 0;
  *(v2 + 104) = v10;
  *(*(v2 + 232) + 40) = &off_10160D058;
  swift_unknownObjectWeakAssign();
  swift_getKeyPath();
  *&v13 = v2;
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000F1E68(a1);
  *(*(v2 + 240) + 24) = &off_1016103C0;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t sub_10025F5D4(uint64_t result)
{
  if (*(v1 + 224) == (result & 1))
  {
    *(v1 + 224) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10025F6E4(uint64_t a1)
{
  if (*(v1 + 240) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10025F818()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10025F8BC()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 128);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_10025F970@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 128);
  v5 = *(v3 + 136);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10025FA5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10025FBB8()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 144);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_10025FC6C()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 160);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_10025FD20()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 176);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_10025FDD4()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 192);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_10025FE88@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 192);
  v5 = *(v3 + 200);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100060EA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10025FF74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1002634DC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1002600D0()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100260174@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 216);
}

uint64_t sub_100260220(uint64_t a1)
{
  if (!*(v1 + 216))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 216) = a1;
}

uint64_t sub_1002603A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 224);
  return result;
}

uint64_t sub_100260478@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 240);
}

uint64_t sub_100260524()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1002605C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 248);
}

uint64_t sub_100260674()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-1] - v3;
  swift_getKeyPath();
  *&v15[0] = v0;
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100196808(v15);

  swift_getKeyPath();
  v14[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 216))
  {

    Task.cancel()();
  }

  if (*(v0 + 224) == 1)
  {
    *(v0 + 224) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v13 - 2) = v0;
    *(&v13 - 8) = 1;
    v14[0] = v0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();

  sub_10019C99C(v15, v14);
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = v15[0];
  *(v8 + 56) = v15[1];
  v10 = v15[3];
  *(v8 + 72) = v15[2];
  *(v8 + 88) = v10;
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  *(v8 + 32) = v1;
  *(v8 + 104) = v16;
  *(v8 + 40) = v9;
  v11 = sub_10020AAE4(0, 0, v4, &unk_1011F5788, v8);
  sub_100260220(v11);
  return sub_10019C9F8(v15);
}

uint64_t sub_100260974()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  sub_100191458(v0 + 48, v11);
  if (v12 > 1u)
  {
    if (v12 == 2)
    {
      sub_1000F1E68(v11);
    }

    v5 = 1;
  }

  else
  {
    if (v12)
    {
      v6 = 0;
      v5 = 1;
      goto LABEL_9;
    }

    sub_1000F1E68(v11);
    v5 = 0;
  }

  v6 = 1;
LABEL_9:
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = v6;
  *(v9 + 33) = v5;
  *(v9 + 40) = v1;
  sub_10020AAE4(0, 0, v4, &unk_1011F5990, v9);
}

uint64_t sub_100260AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100109428();
    v19 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    v20 = v9;
    v15 = v14;
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a2;
    v16[4] = a3;
    aBlock[4] = sub_10026364C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_10160D208;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_100263198(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000CE6B8(&unk_10190B500);
    sub_1000DB3BC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v20);
  }

  return result;
}

uint64_t sub_100260E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_100194DF4(a2, a3);

    sub_100260674();
  }

  return result;
}

uint64_t sub_100260F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_100260FBC, v7, v6);
}

uint64_t sub_100260FBC()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[7];
    swift_getKeyPath();
    v0[12] = OBJC_IVAR____TtC4Maps27VisitHistoryFilterViewModel___observationRegistrar;
    v0[2] = v3;
    v0[13] = sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v3 + 240);
    v0[14] = v4;

    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_100261144;
    v6 = v0[8];

    return sub_1001F8F08(v6, v4);
  }
}

uint64_t sub_100261144(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_100261290, v4, v3);
}

uint64_t sub_100261290()
{

  if (static Task<>.isCancelled.getter())
  {
  }

  else
  {
    v1 = v0[7];
    if (*(v1 + 224))
    {
      swift_getKeyPath();
      v2 = swift_task_alloc();
      *(v2 + 16) = v1;
      *(v2 + 24) = 0;
      v0[6] = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v1 + 224) = 0;
    }

    v3 = v0[16];
    v4 = v0[7];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v0[3] = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (v3 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v0[7];

    sub_100261560(v6, 0);
    if (*(v7 + 120) == 1)
    {
      *(v7 + 120) = 1;
    }

    else
    {
      v8 = v0[7];
      swift_getKeyPath();
      v9 = swift_task_alloc();
      *(v9 + 16) = v8;
      *(v9 + 24) = 1;
      v0[4] = v8;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v10 = v0[7];
    swift_getKeyPath();
    v0[5] = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v10 + 128);
    if (v11)
    {
      v12 = v0[7];

      v11(v12);
      sub_1000588AC(v11);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100261560(uint64_t a1, char a2)
{
  if (*(v2 + 72))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100263198(&qword_10190E310, type metadata accessor for VisitHistoryFilterViewModel.HeaderViewModel);
      goto LABEL_10;
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 64) != a1)
  {
    goto LABEL_9;
  }

  *(v2 + 64) = a1;
  *(v2 + 72) = a2 & 1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E310, type metadata accessor for VisitHistoryFilterViewModel.HeaderViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 72))
  {
    if (*(v2 + 56))
    {
      v4 = swift_getKeyPath();
      __chkstk_darwin(v4);
LABEL_10:
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
  }

  else
  {
    v6 = sub_1003A77CC(*(v2 + 64));
    return sub_100262370(v6, v7);
  }

  return result;
}

uint64_t sub_1002617A4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  *(v5 + 32) = a5;
  *(v5 + 120) = a4;
  *(v5 + 40) = type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return _swift_task_switch(sub_100261844, v7, v6);
}

uint64_t sub_100261844()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_10026199C;

    return sub_1001F5D70();
  }

  else
  {
    *(v0 + 88) = 0;
    if ((v1 & 0x100) != 0)
    {
      v4 = swift_task_alloc();
      *(v0 + 96) = v4;
      *v4 = v0;
      v4[1] = sub_100261C78;

      return sub_1001F61D4(2, 0, 1);
    }

    else
    {
      *(v0 + 104) = 0;

      return _swift_task_switch(sub_100261D7C, 0, 0);
    }
  }
}

uint64_t sub_10026199C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_100261AC4, v4, v3);
}

uint64_t sub_100261AC4()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100511538(0, v2, 0);
    v3 = (v1 + 32);
    v4 = _swiftEmptyArrayStorage[2];
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = _swiftEmptyArrayStorage[3];
      if (v4 >= v7 >> 1)
      {
        sub_100511538((v7 > 1), v4 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      _swiftEmptyArrayStorage[v4++ + 4] = v5;
      --v2;
    }

    while (v2);
  }

  *(v0 + 88) = _swiftEmptyArrayStorage;
  if ((*(v0 + 120) & 0x100) != 0)
  {
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_100261C78;

    return sub_1001F61D4(2, 0, 1);
  }

  else
  {
    *(v0 + 104) = 0;

    return _swift_task_switch(sub_100261D7C, 0, 0);
  }
}

uint64_t sub_100261C78(uint64_t a1)
{
  v3 = *v1;

  *(v3 + 104) = a1;

  return _swift_task_switch(sub_100261D7C, 0, 0);
}

uint64_t sub_100261D7C()
{
  *(v0 + 112) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100261E08, v2, v1);
}

uint64_t sub_100261E08()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[4];

  swift_getKeyPath();
  v0[2] = v3;
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100194A08(v2, v1);

  if (*(v3 + 121) == 1)
  {
    *(v3 + 121) = 1;
  }

  else
  {
    v4 = v0[4];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;
    v0[3] = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = v0[7];
  v7 = v0[8];

  return _swift_task_switch(sub_100261FB8, v6, v7);
}

uint64_t sub_100261FB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t *sub_100262030()
{
  sub_1000A09E0((v0 + 2));
  sub_1000A09E0((v0 + 4));
  sub_1000F1E68((v0 + 6));

  sub_1000588AC(v0[16]);
  sub_1000588AC(v0[18]);
  sub_1000588AC(v0[20]);
  sub_1000588AC(v0[22]);
  sub_1000588AC(v0[24]);

  v1 = OBJC_IVAR____TtC4Maps27VisitHistoryFilterViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100262110()
{
  sub_100262030();

  return swift_deallocClassInstance();
}

uint64_t sub_100262190()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100262284@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E310, type metadata accessor for VisitHistoryFilterViewModel.HeaderViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_100262330(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100262370(v1, v2);
}

uint64_t sub_100262370(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100263198(&qword_10190E310, type metadata accessor for VisitHistoryFilterViewModel.HeaderViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_1002624E0()
{
  swift_getKeyPath();
  sub_100263198(&qword_10190E310, type metadata accessor for VisitHistoryFilterViewModel.HeaderViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

uint64_t sub_100262584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E310, type metadata accessor for VisitHistoryFilterViewModel.HeaderViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 72);
  *a2 = *(v3 + 64);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100262634(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 64) = a2;
  *(a1 + 72) = a3 & 1;
  swift_getKeyPath();
  sub_100263198(&qword_10190E310, type metadata accessor for VisitHistoryFilterViewModel.HeaderViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 72))
  {
    if (*(a1 + 56))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
    }
  }

  else
  {
    v6 = sub_1003A77CC(*(a1 + 64));
    return sub_100262370(v6, v7);
  }

  return result;
}

uint64_t sub_1002627A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date.FormatStyle();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_101915EE8);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v10 = type metadata accessor for VisitedPlacesCalendarYear(0);
  v47 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CE6B8(&qword_101915EF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for VisitedPlacesCalendarMonth(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 1;
  ObservationRegistrar.init()();
  sub_100191458(a1, &v51);
  if (v53 > 1u)
  {
    v44 = a1;
    if (v53 == 2)
    {
      sub_10005E7BC(&v51, &v49);
      sub_10005EB40(&v49, v48);
      sub_1000CE6B8(&qword_101915EF8);
      v22 = swift_dynamicCast();
      v23 = *(v17 + 56);
      if (v22)
      {
        v23(v15, 0, 1, v16);
        sub_1002636F8(v15, v19, type metadata accessor for VisitedPlacesCalendarMonth);
        *(v2 + 32) = sub_10051DFEC();
        *(v2 + 40) = v24;
        sub_1000F1E68(v44);
        sub_100263760(v19, type metadata accessor for VisitedPlacesCalendarMonth);
        v25 = 0xE500000000000000;
        v26 = 0x68746E6F4DLL;
      }

      else
      {
        v23(v15, 1, 1, v16);
        sub_100024F64(v15, &qword_101915EF0);
        sub_10005EB40(&v49, v48);
        v35 = swift_dynamicCast();
        v36 = *(v47 + 56);
        if (v35)
        {
          v36(v9, 0, 1, v10);
          sub_1002636F8(v9, v12, type metadata accessor for VisitedPlacesCalendarYear);
          v37 = v44;
          if (qword_101906920 != -1)
          {
            swift_once();
          }

          v38 = v46;
          v39 = sub_100021540(v46, qword_101960530);
          v40 = v45;
          (*(v45 + 16))(v6, v39, v38);
          sub_100263198(&qword_10190EC28, &type metadata accessor for Date.FormatStyle);
          Date.formatted<A>(_:)();
          (*(v40 + 8))(v6, v38);
          v41 = v48[1];
          *(v2 + 32) = v48[0];
          *(v2 + 40) = v41;
          sub_1000F1E68(v37);
          sub_100263760(v12, type metadata accessor for VisitedPlacesCalendarYear);
          v25 = 0xE400000000000000;
          v26 = 1918985561;
        }

        else
        {
          v36(v9, 1, 1, v10);
          sub_100024F64(v9, &qword_101915EE8);
          v25 = 0xE000000000000000;
          *(v2 + 32) = 0;
          *(v2 + 40) = 0xE000000000000000;
          sub_1000F1E68(v44);
          v26 = 0;
        }
      }

      sub_10004E3D0(&v49);
      *(v2 + 16) = v26;
      *(v2 + 24) = v25;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v54._object = 0x8000000101228200;
      v33._object = 0x80000001012281D0;
      v54._countAndFlagsBits = 0xD000000000000029;
      v33._countAndFlagsBits = 0xD000000000000028;
      v34._countAndFlagsBits = 0x69736956206C6C41;
      v34._object = 0xEA00000000007374;
      *(v2 + 32) = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, qword_1019600D8, v34, v54);
      sub_1000F1E68(v44);
      *(v2 + 16) = 0x69736956206C6C41;
      *(v2 + 24) = 0xEA00000000007374;
    }
  }

  else if (v53)
  {
    v27 = v51;
    *(v2 + 32) = sub_1002132FC(v51);
    *(v2 + 40) = v28;
    v29._countAndFlagsBits = sub_1002132FC(v27);
    v30 = a1;
    v49 = 0x79726F6765746143;
    v50 = 0xE90000000000002ELL;
    String.append(_:)(v29);

    v31 = v49;
    v32 = v50;
    sub_1000F1E68(v30);
    *(v2 + 16) = v31;
    *(v2 + 24) = v32;
  }

  else
  {
    v20 = *(&v51 + 1);
    v21 = v52;
    *(v2 + 32) = v51;
    *(v2 + 40) = v20;

    sub_1000F1E68(a1);
    *(v2 + 16) = 2037672259;
    *(v2 + 24) = 0xE400000000000000;
  }

  return v2;
}

uint64_t sub_100262E54()
{

  v1 = OBJC_IVAR____TtCC4Maps27VisitHistoryFilterViewModel15HeaderViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100262F30()
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

uint64_t sub_100262FE0(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_100262FFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100263010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026304C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100263098(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1002630D0()
{
  sub_100260674();
  swift_getKeyPath();
  sub_100263198(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 192);
  if (v2)
  {

    v2(v3);
    return sub_1000588AC(v2);
  }

  return result;
}

uint64_t sub_100263198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002631F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100260F24(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1002632B0()
{
  *(*(v0 + 16) + 216) = *(v0 + 24);
}

uint64_t sub_100263380()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_1002633C0()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

uint64_t sub_1002633FC()
{
  *(*(v0 + 16) + 240) = *(v0 + 24);
}

uint64_t sub_100263454()
{
  *(*(v0 + 16) + 104) = *(v0 + 24);
}

uint64_t sub_100263490()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 192);
  *(v2 + 192) = v1;
  *(v2 + 200) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_100263504(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (*(v1 + 33))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_1002617A4(a1, v4, v5, v7 | v6, v8);
}

uint64_t sub_10026360C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100263658()
{
  *(*(v0 + 16) + 248) = *(v0 + 24);
}

uint64_t sub_100263694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitHistoryFilterState.DropdownFilterSelectionResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002636F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100263760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall VisitedPlacesLibraryContext.viewControllerClearInjectedSearchPins(_:)(UIViewController a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong searchPinsManager];

    [v3 clearSearchPins];
  }
}

Swift::Void __swiftcall VisitedPlacesLibraryContext.injectSearchPins(from:)(SearchInfo *from)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_searchInfo);
  *(v1 + OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_searchInfo) = from;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = from;
  if (Strong)
  {
    v6 = v5;
    v7 = [Strong searchPinsManager];

    if (v7)
    {
      [v7 setSearchPinsFromSearchInfo:v6 scrollToResults:1 displayPlaceCardForResult:0 animated:1 completion:0];
    }
  }
}

void sub_100263B90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong mapCameraController];

    if (v2)
    {
      sub_10019152C();
      isa = Array._bridgeToObjectiveC()().super.isa;
      LOBYTE(v4) = 0;
      [v2 frameSearchResults:isa withResultToSelect:0 historyItem:0 suggestedMapRegion:0 minZoom:0 maxZoom:0 disableAdditionalViewportPadding:v4 completion:0];
    }
  }
}

void *_s4Maps27VisitedPlacesLibraryContextC13searchResults3forSaySo12SearchResultCGSo16UIViewControllerC_tF_0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = Strong;
  v2 = [Strong searchPinsManager];

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = [v2 allSearchResults];
  if (result)
  {
    v4 = result;
    sub_10019152C();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100263DA4(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 2) = v17;
  *(v18 + 3) = a8;
  *(v18 + 4) = a9;
  type metadata accessor for RefinementsMultiSelectCellViewModel(0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  swift_beginAccess();

  sub_1000CD9D4(a8);

  Published.init(initialValue:)();
  swift_endAccess();
  v20 = v19 + OBJC_IVAR____TtC4Maps35RefinementsMultiSelectCellViewModel_labelWidth;
  *v20 = a3;
  *(v20 + 8) = 0;
  *(v19 + OBJC_IVAR____TtC4Maps35RefinementsMultiSelectCellViewModel_maxWidth) = a4;
  v21 = (v19 + OBJC_IVAR____TtC4Maps35RefinementsMultiSelectCellViewModel_allowsSelection);
  *v21 = a6;
  v21[1] = a7;
  v22 = (v19 + OBJC_IVAR____TtC4Maps35RefinementsMultiSelectCellViewModel_tapHandler);
  *v22 = sub_10026463C;
  v22[1] = v18;

  *(v9 + OBJC_IVAR____TtC4Maps36AllRefinementsMultiSelectElementCell_viewModel) = v19;
}

void sub_100263F54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + OBJC_IVAR____TtC4Maps36AllRefinementsMultiSelectElementCell_viewModel))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      Strong = static Published.subscript.setter();
    }

    if (a3)
    {
      a3(Strong);
    }
  }
}

void sub_10026416C()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_101915F38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-1] - v4;
  if (*(v1 + OBJC_IVAR____TtC4Maps36AllRefinementsMultiSelectElementCell_viewModel))
  {
    type metadata accessor for RefinementMultiSelectButton(0);
    sub_1002647A8(&qword_101915F40, type metadata accessor for RefinementMultiSelectButton);

    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v7[3] = v2;
    v7[4] = sub_100264744();
    sub_10001A848(v7);
    UIHostingConfiguration.margins(_:_:)();
    (*(v3 + 8))(v5, v2);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10026430C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RefinementsMultiSelectCellViewModel(0);
  sub_1002647A8(&qword_101915F50, type metadata accessor for RefinementsMultiSelectCellViewModel);

  *a1 = ObservedObject.init(wrappedValue:)();
  a1[1] = v2;
  v3 = *(type metadata accessor for RefinementMultiSelectButton(0) + 20);
  v4 = enum case for RoundedCornerStyle.continuous(_:);
  v5 = type metadata accessor for RoundedCornerStyle();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v3, v4, v5);
}

id sub_1002645D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllRefinementsMultiSelectElementCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100264648@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1002646C8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100264744()
{
  result = qword_101915F48;
  if (!qword_101915F48)
  {
    sub_1000D6664(&qword_101915F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915F48);
  }

  return result;
}

uint64_t sub_1002647A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100264824@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10026654C(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectAddNewPinnedItem);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectAddNewPinnedItem + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10026491C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10026654C(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100264A78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10026654C(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectOpenPinnedItem);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectOpenPinnedItem + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10026664C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100264B70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100266644;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10026654C(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100264CCC()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_10026654C(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100264FD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10026532C();
  }
}

void sub_100265028(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1002651C8(a2);
  }
}

void sub_100265084(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_getKeyPath();
    v11[0] = a2;
    sub_10026654C(&qword_101916010, type metadata accessor for HomePinnedItemModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(a2 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem);
    if (v8)
    {
      sub_10003E48C(v7 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v11);
      v9 = swift_unknownObjectWeakLoadStrong();
      v10 = v8;
      sub_10003E4E8(v11);
      if (v9)
      {
        [v9 *a4];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_1002651C8(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v8[0] = a1;
  sub_10026654C(&qword_101916010, type metadata accessor for HomePinnedItemModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = v4;
    [v5 captureUserAction:2007 target:8 value:0];
    [objc_opt_self() captureTapActionWithFavorite:v6];
    sub_10003E48C(v2 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10003E4E8(v8);
    if (Strong)
    {
      [Strong homeItemTapped:v6];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10026532C()
{
  v1 = objc_opt_self();
  [v1 captureUserAction:2007 target:8 value:0];
  [v1 captureUserAction:2044 target:8 value:0];
  sub_10003E48C(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_10003E4E8(v5);
  if (Strong)
  {
    v4 = String._bridgeToObjectiveC()();
    [Strong homeItemTapped:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10026540C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Maps34HomeListFavoritesSectionController____lazy_storage___pinnedItemsCellSnapshot;
  swift_beginAccess();
  result = sub_1000D2DFC(v1 + v3, v9, &qword_101916000);
  if (*&v9[0])
  {
    v5 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v9[2];
  }

  else
  {
    sub_100024F64(v9, &qword_101916000);
    v6 = sub_100062B44();
    v7 = *(v1 + OBJC_IVAR____TtC4Maps34HomeListFavoritesSectionController_viewModel);
    *(a1 + 32) = type metadata accessor for HomePinnedItemCarouselViewModel();
    *(a1 + 40) = sub_10026654C(&qword_101916008, type metadata accessor for HomePinnedItemCarouselViewModel);
    *a1 = v6;
    *(a1 + 8) = v7;
    sub_100098118(a1, v9);
    swift_beginAccess();
    v8 = v7;
    sub_1002664B4(v9, v1 + v3);
    return swift_endAccess();
  }

  return result;
}

id sub_1002655AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeListFavoritesSectionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100265650@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906798 != -1)
  {
    swift_once();
  }

  if (byte_101960110 == 1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v3.super.isa = qword_1019600D8;
    v12 = 0x800000010121DB50;
    v4 = 0x736563616C50;
    v5 = 0x8000000101228420;
    v6 = 0xD000000000000035;
    v7 = 0xD00000000000001FLL;
    v8 = 0xE600000000000000;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v3.super.isa = qword_1019600D8;
    v12 = 0x80000001012283E0;
    v4 = 0x657469726F766146;
    v7 = 0xD000000000000022;
    v5 = 0x80000001012283B0;
    v6 = 0xD000000000000034;
    v8 = 0xE900000000000073;
  }

  *a1 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v3, *&v4, *&v6);
  *(a1 + 16) = 256;
  swift_unknownObjectWeakInit();
  v15 = sub_1000CE6B8(&qword_101915FE8);
  v13 = v1;
  v14 = &off_10160D320;
  sub_10005E838(&v13, v15);
  DynamicType = swift_getDynamicType();
  v10 = v1;
  sub_10004E3D0(&v13);
  if (swift_isClassType() && DynamicType)
  {
    v13 = v10;
    v14 = &off_10160D320;
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    swift_unknownObjectWeakAssign();
    result = swift_unknownObjectRelease();
  }

  else
  {

    result = swift_unknownObjectWeakAssign();
  }

  strcpy((a1 + 32), "HomeShortcuts");
  *(a1 + 46) = -4864;
  return result;
}

uint64_t sub_1002658B8()
{
  sub_1000CE6B8(&qword_101915FE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1011E1D30;
  sub_10026540C(v0 + 32);
  return v0;
}

id sub_100265A04()
{
  sub_10003E48C(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v3);
  if (Strong)
  {
    [Strong homeSectionHeaderButtonTapped:2];
    swift_unknownObjectRelease();
  }

  return [objc_opt_self() captureUserAction:2045 target:8 value:0];
}

void sub_100265AB8(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  sub_10003E48C(a1 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = a3;
  v9 = a1;
  sub_10003E4E8(v10);
  if (Strong)
  {
    [Strong *a4];
    swift_unknownObjectRelease();
  }
}

void sub_100265C04(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10003E48C(a1 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = a4;
  v8 = a1;
  sub_10003E4E8(v9);
  if (Strong)
  {
    [Strong homeItemTapped:v7];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100265CA0()
{
  sub_100265650(v7);
  if (!v8)
  {
    v4 = &qword_101915FF0;
    v5 = v7;
    return sub_100024F64(v5, v4);
  }

  sub_1000D2DFC(&v9, v6, &qword_101915FF8);
  sub_100266460(v7);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v4 = &qword_101915FF8;
    v5 = v6;
    return sub_100024F64(v5, v4);
  }

  swift_unknownObjectRetain();
  swift_getObjectType();
  v0 = swift_conformsToProtocol2();
  if (v0)
  {
    v1 = v0;
    sub_100024F64(v6, &qword_101915FF8);
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100265DF4()
{
  sub_100265650(v2);
  if (v2[1])
  {
    v0 = v3;
    sub_100266460(v2);
  }

  else
  {
    sub_100024F64(v2, &qword_101915FF0);
    return 0;
  }

  return v0;
}

id PlaceLibraryHomeAction.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100265F1C()
{
  v1 = objc_opt_self();
  v2 = [v1 fractionalWidthDimension:1.0];
  v3 = [v1 estimatedDimension:120.0];
  v4 = objc_opt_self();
  v5 = [v4 sizeWithWidthDimension:v2 heightDimension:v3];

  v6 = [objc_opt_self() itemWithLayoutSize:v5];
  v7 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1011E47B0;
  *(v8 + 32) = v6;
  sub_100014C84(0, &qword_101915908);
  v9 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v7 verticalGroupWithLayoutSize:v5 subitems:isa];

  v12 = [objc_opt_self() sectionWithGroup:v11];
  sub_10003E48C(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v38);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v38);
  if (!Strong)
  {

LABEL_12:
    return v12;
  }

  v34 = v4;
  v35 = v11;
  v36 = v12;
  v37 = v9;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v0)
  {
    v14 = v0;
    v15 = sub_10053C718();
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v19 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
    if (v19)
    {
      v20 = v16;
      v21 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

      v22 = v15;
      sub_1000F0120(v19);
      sub_100368A2C(v22, v20, v18, 0, v21, v38);

      swift_bridgeObjectRelease_n();
      if (*&v38[0])
      {
        sub_100024F64(v38, &unk_101915FD0);
        v23 = [v1 fractionalWidthDimension:1.0];
        [objc_opt_self() estimatedHeight];
        v24 = [v1 estimatedDimension:?];
        v25 = [v34 sizeWithWidthDimension:v23 heightDimension:v24];

        v26 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v25 elementKind:UICollectionElementKindSectionHeader alignment:1];
        static MapsDesignConstants.Spacing.textHorizontalPadding.getter();
        v28 = v27;
        v29 = v26;
        [v29 setContentInsets:{0.0, v28, 0.0, v28}];

        swift_unknownObjectRelease();
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1011E47B0;
        *(v30 + 32) = v29;
        sub_100014C84(0, &unk_101910E10);
        v31 = v29;
        v32 = Array._bridgeToObjectiveC()().super.isa;

        v12 = v36;
        [v36 setBoundarySupplementaryItems:v32];

LABEL_11:
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      memset(v38, 0, 64);
    }

    v12 = v36;
    sub_100024F64(v38, &unk_101915FD0);

    goto LABEL_11;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002664B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101916000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026654C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for VisitHistoryCategoryPickerView()
{
  result = qword_101916070;
  if (!qword_101916070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100266738()
{
  sub_10024A860();
  if (v0 <= 0x3F)
  {
    type metadata accessor for VisitHistoryCategoryPickerViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002667D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_1019160B8);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_1000CE6B8(&qword_1019160E0);
  sub_1002669C0(a1, &v6[*(v7 + 44)]);
  v8 = &v6[*(v4 + 36)];
  sub_1002672E0(a1, v8);
  *(v8 + *(sub_1000CE6B8(&qword_10190A5D8) + 36)) = 1;
  sub_1000CE6B8(&qword_10190A5F0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  static ToolbarPlacement.navigationBar.getter();
  sub_1002679F8();
  View.toolbarVisibility(_:for:)();

  sub_100267ADC(v6);
  LOBYTE(v4) = static Edge.Set.bottom.getter();
  v9 = static SafeAreaRegions.all.getter();
  result = sub_1000CE6B8(&qword_1019160A8);
  v11 = a2 + *(result + 36);
  *v11 = v9;
  *(v11 + 8) = v4;
  return result;
}

uint64_t sub_1002669C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v21 = *(v3 - 8);
  v22 = v3;
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GridLayoutConfig();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CE6B8(&unk_1019153D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = *(a1 + *(type metadata accessor for VisitHistoryCategoryPickerView() + 20));
  swift_getKeyPath();
  v25 = v14;
  sub_100267DFC(&qword_1019160E8, type metadata accessor for VisitHistoryCategoryPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10015507C(v5);
  static MapsDesignConstants.GridLayouts.visitedPlacesByCategoryGridLayoutConfig(count:dynamicType:)();
  (*(v21 + 8))(v5, v22);
  v24 = a1;
  sub_1000CE6B8(&qword_101915378);
  sub_10024B108();
  GridLayout.init(config:content:)();
  v15 = *(v8 + 16);
  v15(v10, v13, v7);
  v16 = v23;
  v15(v23, v10, v7);
  v17 = &v16[*(sub_1000CE6B8(&qword_1019160F0) + 48)];
  *v17 = 0;
  v17[8] = 1;
  v18 = *(v8 + 8);
  v18(v13, v7);
  return (v18)(v10, v7);
}

uint64_t sub_100266CFC(uint64_t a1)
{
  v2 = type metadata accessor for VisitHistoryCategoryPickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = *(a1 + *(v5 + 28));
  swift_getKeyPath();
  v11 = v6;
  sub_100267DFC(&qword_1019160E8, type metadata accessor for VisitHistoryCategoryPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v6 + 48);
  sub_100267B44(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_100267BA8(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  sub_1000CE6B8(&qword_1019153A8);
  sub_1000CE6B8(&qword_101915390);
  sub_1000414C8(&qword_1019153B0, &qword_1019153A8);
  sub_10024B18C();
  sub_10024B3B8();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100266F24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v4 = type metadata accessor for VisitHistoryCategoryPickerView();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_1002132FC(*a1);
  v17[0] = v9;
  v17[1] = v8;
  sub_1003A77CC(v7);
  sub_1000F1178();
  sub_100364108(v6);
  v10 = static UIImage.mapsDesignImage(_:)();

  v22 = sub_1000CE6B8(&unk_101916610);
  v23 = sub_1000414C8(&qword_10190A530, &unk_101916610);
  v21 = v10;
  sub_100363EE4(v6);
  static Color.mapsDesignColor(_:)();
  static Color.mapsDesignColor(_:)();

  sub_100363EE4(v6);
  static Color.mapsDesignColor(_:)();

  static Color.mapsDesignColor(_:)();

  type metadata accessor for CategoryTileViewModel();
  swift_allocObject();
  CategoryTileViewModel.init(title:subtitle:imageProvider:colorGradient:)();
  sub_100267B44(v19, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v12 = swift_allocObject();
  sub_100267BA8(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = (v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v6;
  v13[1] = v7;
  v14 = v20;
  CategoryTile.init(model:tapHandler:)();
  result = sub_1000CE6B8(&qword_101915390);
  v16 = v14 + *(result + 36);
  *v16 = 0xD000000000000016;
  *(v16 + 8) = 0x8000000101227260;
  *(v16 + 16) = 1;
  return result;
}

uint64_t sub_1002671F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + *(type metadata accessor for VisitHistoryCategoryPickerView() + 20));
  swift_getKeyPath();
  sub_100267DFC(&qword_1019160E8, type metadata accessor for VisitHistoryCategoryPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v5 + 32);
  if (v7)
  {

    v7(a2, a3);
    return sub_1000588AC(v7);
  }

  return result;
}

uint64_t sub_1002672E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v2 = type metadata accessor for VisitHistoryCategoryPickerView();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for CardHeaderSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = type metadata accessor for LeadingCardHeaderViewModel();
  __chkstk_darwin(v11 - 8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v12.super.isa = qword_1019600D8;
  v31._object = 0x80000001012284E0;
  v13._countAndFlagsBits = 0x6765746143207942;
  v13._object = 0xEB0000000079726FLL;
  v14._countAndFlagsBits = 0xD000000000000031;
  v14._object = 0x80000001012284A0;
  v31._countAndFlagsBits = 0xD00000000000005CLL;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, qword_1019600D8, v13, v31);
  v24[1] = v15._object;
  v24[2] = v15._countAndFlagsBits;
  v16 = type metadata accessor for MapsDesignAccessibilityString();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v32._object = 0x80000001012285B0;
  v17._countAndFlagsBits = 0xD000000000000033;
  v17._object = 0x8000000101228540;
  v18._countAndFlagsBits = 0xD000000000000020;
  v18._object = 0x8000000101228580;
  v32._countAndFlagsBits = 0xD00000000000005FLL;
  v24[0] = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v12, v18, v32)._object;
  (*(v5 + 104))(v7, enum case for CardHeaderSize.medium(_:), v4);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  sub_100267B44(v26, v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = swift_allocObject();
  sub_100267BA8(v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  v21 = v27;
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  result = sub_1000CE6B8(&qword_10190A5F8);
  v23 = v21 + *(result + 36);
  *v23 = 0xD00000000000001ALL;
  *(v23 + 8) = 0x8000000101228480;
  *(v23 + 16) = 12;
  return result;
}

uint64_t sub_1002677A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + *(type metadata accessor for VisitHistoryCategoryPickerView() + 20));
  swift_getKeyPath();
  sub_100267DFC(&qword_1019160E8, type metadata accessor for VisitHistoryCategoryPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + 16);
  if (v4)
  {

    v4(v2);
    return sub_1000588AC(v4);
  }

  return result;
}

uint64_t sub_100267878@<X0>(uint64_t a1@<X8>)
{
  sub_1000CE6B8(&qword_1019160A8);
  sub_100267930();
  NavigationStack.init<>(root:)();
  result = sub_1000CE6B8(&qword_1019160D8);
  v3 = a1 + *(result + 36);
  *v3 = 0xD00000000000001ALL;
  *(v3 + 8) = 0x8000000101228480;
  *(v3 + 16) = 13;
  return result;
}

unint64_t sub_100267930()
{
  result = qword_1019160B0;
  if (!qword_1019160B0)
  {
    sub_1000D6664(&qword_1019160A8);
    sub_1000D6664(&qword_1019160B8);
    sub_1002679F8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019160B0);
  }

  return result;
}

unint64_t sub_1002679F8()
{
  result = qword_1019160C0;
  if (!qword_1019160C0)
  {
    sub_1000D6664(&qword_1019160B8);
    sub_1000414C8(&qword_1019160C8, &qword_1019160D0);
    sub_1000414C8(&qword_10190A5D0, &qword_10190A5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019160C0);
  }

  return result;
}

uint64_t sub_100267ADC(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_1019160B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100267B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitHistoryCategoryPickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100267BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitHistoryCategoryPickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100267C0C(uint64_t a1)
{
  v3 = *(type metadata accessor for VisitHistoryCategoryPickerView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002677A0(a1, v4);
}

uint64_t sub_100267C7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100267DFC(&qword_1019160E8, type metadata accessor for VisitHistoryCategoryPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);
}

uint64_t sub_100267D28()
{
  swift_getKeyPath();
  sub_100267DFC(&qword_1019160E8, type metadata accessor for VisitHistoryCategoryPickerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100267DFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100267E44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VisitHistoryCategoryPickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100266F24(a1, v6, a2);
}

uint64_t sub_100267EC4()
{
  v1 = *(type metadata accessor for VisitHistoryCategoryPickerView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1002671F4(v0 + v2, v4, v5);
}

unint64_t sub_100267F70()
{
  result = qword_1019160F8;
  if (!qword_1019160F8)
  {
    sub_1000D6664(&qword_1019160D8);
    sub_1000414C8(&qword_101916100, &qword_101916108);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019160F8);
  }

  return result;
}

void sub_1002680E8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong searchPinsManager];

    if (!v2)
    {
      __break(1u);
      goto LABEL_21;
    }

    v3 = [v2 parkedCarItemSource];

    if (v3)
    {
      v4 = v3;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v7 = [v5 searchPinsManager];

  if (!v7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = [v7 singleSearchResultItemSource];

  if (v8)
  {
    v9 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_13:
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = [v10 searchPinsManager];

  if (!v12)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v13 = [v12 droppedPinsItemSource];

  if (v13)
  {
    v14 = v13;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

void sub_1002683CC(void *a1, void *a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedManager];
  [v6 informCoreRoutineOfEngagementWithParkedCar:*(*(v3 + OBJC_IVAR____TtC4Maps16ParkedCarContext_configuration) + OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_parkedCar)];

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_100268C0C;
  v18 = v7;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1002ABAC8;
  v16 = &unk_10160D560;
  v8 = _Block_copy(&v13);

  [a2 addCompletion:v8];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v17 = sub_100268C14;
  v18 = v10;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100039C64;
  v16 = &unk_10160D5B0;
  v11 = _Block_copy(&v13);
  v12 = a1;

  [a2 addPreparation:v11];
  _Block_release(v11);
}

void sub_1002685D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(*(Strong + OBJC_IVAR____TtC4Maps16ParkedCarContext_configuration) + OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_initialAction))
    {
      [*(Strong + OBJC_IVAR____TtC4Maps16ParkedCarContext_viewController) performAction:?];
    }
  }
}

void sub_100268668(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 mapView];
    if (!v5)
    {
LABEL_30:

      return;
    }

    v6 = v5;
    v7 = [*&v4[OBJC_IVAR____TtC4Maps16ParkedCarContext_viewController] parkedCar];
    [v7 coordinate];
    v9 = v8;
    v11 = v10;
    v12 = v6;
    [v12 convertCoordinate:v12 toPointToView:{v9, v11}];
    v14 = v13;
    v16 = v15;
    [v12 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v12 _edgeInsets];
    v56.origin.x = sub_100268C1C(v18, v20, v22, v24, v25, v26);
    v55.x = v14;
    v55.y = v16;
    v27 = CGRectContainsPoint(v56, v55);
    [v7 horizontalAccuracy];
    if (v28 > 1000.0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 1000.0;
    }

    [v7 horizontalAccuracy];
    if (v30 > 1000.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 1000.0;
    }

    v54.latitude = v9;
    v54.longitude = v11;
    MKCoordinateRegionMakeWithDistance(v54, v29, v31);
    MKMapRectForCoordinateRegion();
    [v12 mapRectThatFits:?];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [v12 visibleMapRect];
    if (v40 > v37)
    {
      v42 = v40;
    }

    else
    {
      v42 = v37;
    }

    if (v39 >= v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = v39;
    }

    v44 = v42 / v43;
    if (v27)
    {
      if (v44 <= 4.0)
      {
        goto LABEL_21;
      }
    }

    else if (v44 <= 4.0)
    {
      [v12 setCenterCoordinate:1 animated:{v9, v11}];
      goto LABEL_21;
    }

    [v12 setVisibleMapRect:1 animated:{v33, v35, v37, v39}];
LABEL_21:
    if (*(*&v4[OBJC_IVAR____TtC4Maps16ParkedCarContext_configuration] + OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_selectOnMap))
    {
      v45 = swift_unknownObjectWeakLoadStrong();
      if (v45)
      {
        v46 = v45;
        v47 = [v45 searchPinsManager];

        if (v47)
        {
          v48 = [v47 customPOIsController];

          if (v48)
          {
            v49 = [objc_opt_self() personalizedItemKey];
            if (!v49)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v49 = String._bridgeToObjectiveC()();
            }

            v50 = swift_allocObject();
            *(v50 + 16) = v4;
            aBlock[4] = sub_100268C38;
            aBlock[5] = v50;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100235E24;
            aBlock[3] = &unk_10160D600;
            v51 = _Block_copy(aBlock);
            v52 = v4;

            [v48 customFeatureForKey:v49 completion:v51];

            _Block_release(v51);
            v12 = v49;
            goto LABEL_29;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }

    v48 = v7;
LABEL_29:

    v4 = v12;
    goto LABEL_30;
  }
}

void sub_100268A70(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong mapView];

    if (v4)
    {
      v8 = [v4 _labelMarkerForCustomFeatureAnnotation:a1];

      if (v8)
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          v7 = [v5 mapSelectionManager];

          if (!v7)
          {
            __break(1u);
            return;
          }

          [v7 selectLabelMarker:v8 animated:1];
        }
      }
    }
  }
}

uint64_t sub_100268C4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000CE6B8(&qword_10190BB30);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_100014C84(0, &qword_101909920);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000D2BE0(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000D2BE0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000D2BE0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100268F1C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000CE6B8(&qword_10190BB30);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10004E374(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000D2BE0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000D2BE0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000D2BE0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000D2BE0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1002691E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000CE6B8(&qword_10190BB30);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_10004E374(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for Key(0);
    v15 = v14;
    swift_dynamicCast();
    sub_1000D2BE0((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1000D2BE0(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1000D2BE0(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~v7[v17 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = v7[v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~v7[v17 >> 6])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_1000D2BE0(v31, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_100269564()
{
  v1 = OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView____lazy_storage___descriptionStackView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView____lazy_storage___descriptionStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView____lazy_storage___descriptionStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setAxis:1];
    [v4 setSpacing:4.0];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10026965C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_horizontalMargin;
  [objc_opt_self() horizontalContentInset];
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_verticalMargin] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_bottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView____lazy_storage___descriptionStackView] = 0;
  v11 = &v4[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler];
  v12 = type metadata accessor for RoutingAdvisoryInfoFooterView();
  *v11 = 0;
  *(v11 + 1) = 0;
  v15.receiver = v4;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_10026973C();

  return v13;
}

void sub_10026973C()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v1];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = sub_100269564();
  [v0 addSubview:v2];

  v3 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E5C00;
  v5 = OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView____lazy_storage___descriptionStackView;
  v6 = [*&v0[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView____lazy_storage___descriptionStackView] leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = *&v0[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_horizontalMargin];
  v9 = [v6 constraintEqualToAnchor:v7 constant:v8];

  *(v4 + 32) = v9;
  v10 = [*&v0[v5] topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:8.0];

  *(v4 + 40) = v12;
  v13 = [*&v0[v5] trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-v8];

  *(v4 + 48) = v15;
  v16 = [*&v0[v5] bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-8.0];

  *(v4 + 56) = v18;
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_100269A48(void *a1)
{
  v3 = OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_horizontalMargin;
  [objc_opt_self() horizontalContentInset];
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_verticalMargin] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_bottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView____lazy_storage___descriptionStackView] = 0;
  v5 = &v1[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler];
  v6 = type metadata accessor for RoutingAdvisoryInfoFooterView();
  *v5 = 0;
  *(v5 + 1) = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_100269B34()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for RoutingAdvisoryInfoFooterView();
  objc_msgSendSuper2(&v14, "prepareForReuse");
  v1 = sub_100269564();
  v2 = [v1 arrangedSubviews];

  sub_100014C84(0, &qword_10190CA10);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = v7;
        v12 = String._bridgeToObjectiveC()();
        [v10 setText:v12];
      }

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id sub_100269E88(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  sub_10026A564();
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_21:
    v33 = (v42 + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler);
    v34 = *(v42 + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler);
    v35 = *(v42 + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler + 8);
    *v33 = v36;
    v33[1] = v37;
    sub_1000CD9D4(v36);
    return sub_1000D3B90(v34, v35);
  }

LABEL_20:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_3:
  v5 = 0;
  v40 = a1 & 0xFFFFFFFFFFFFFF8;
  v41 = a1 & 0xC000000000000001;
  v38 = a1;
  v39 = v4;
  while (1)
  {
    if (v41)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v5 >= *(v40 + 16))
      {
        goto LABEL_19;
      }

      v7 = *(a1 + 8 * v5 + 32);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v43 = v8;
    v9 = v7;
    v6 = sub_10026A2D0([v7 shouldAlwaysShowAdvisoryCard]);
    v10 = sub_100269564();
    [v10 addArrangedSubview:v6];

    v11 = v9;
    result = [v9 noticeText];
    if (!result)
    {
      break;
    }

    v13 = result;
    v14 = [objc_allocWithZone(GEOComposedString) initWithGeoFormattedString:result];

    v15 = [objc_allocWithZone(MKServerFormattedString) initWithComposedString:v14];
    v16 = [objc_opt_self() systemGrayColor];
    sub_1000CE6B8(&qword_10191BE70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E1D60;
    *(inited + 32) = NSForegroundColorAttributeName;
    v18 = sub_100014C84(0, &qword_10190CA00);
    *(inited + 40) = v16;
    *(inited + 64) = v18;
    *(inited + 72) = NSFontAttributeName;
    v19 = objc_opt_self();
    v20 = NSForegroundColorAttributeName;
    v21 = v16;
    v22 = NSFontAttributeName;
    v23 = v15;
    v24 = [v19 system15];
    *(inited + 104) = sub_1000CE6B8(&qword_101916160);
    *(inited + 80) = v24;
    v25 = sub_1000D131C(inited);
    swift_setDeallocating();
    sub_1000CE6B8(&qword_101908020);
    swift_arrayDestroy();

    sub_1002691E4(v25);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = [v15 multiPartAttributedStringWithAttributes:isa];

    if (v27)
    {
      v28 = [v27 attributedString];

      a1 = v38;
      v29 = v11;
      if (v28)
      {
        v30 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v28];
        v31 = v39;
        if ([v11 shouldAlwaysShowAdvisoryCard])
        {
          v32 = sub_10026A8A4();
          [v30 appendAttributedString:v32];

          v29 = v11;
        }

        [v6 setAttributedText:v30];

        v6 = v23;
      }

      else
      {
        v28 = v11;
        v30 = v15;
        v31 = v39;
      }
    }

    else
    {
      v28 = v11;
      v30 = v15;
      a1 = v38;
      v31 = v39;
    }

    ++v5;
    if (v43 == v31)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

id sub_10026A2D0(char a1)
{
  v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor:v4];

  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v3 setFont:v5];

  v6 = v3;
  v7 = String._bridgeToObjectiveC()();
  [v6 setAccessibilityIdentifier:v7];

  [v6 setNumberOfLines:0];
  v8 = &selRef_footerTappedGesture_;
  if (a1)
  {
    v8 = &selRef_advisoryCardInfoTapped_;
  }

  v9 = *v8;
  [v6 setUserInteractionEnabled:1];
  v10 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:v9];
  [v6 addGestureRecognizer:v10];

  return v6;
}

uint64_t sub_10026A564()
{
  v0 = sub_100269564();
  v1 = [v0 arrangedSubviews];

  sub_100014C84(0, &qword_10190CA10);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

id sub_10026A74C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutingAdvisoryInfoFooterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10026A814(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *&result[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler];
  if (v4)
  {
    v6 = *&result[OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler + 8];
    v7 = result;
    sub_1000CD9D4(v4);
    v4(a4 & 1);

    return sub_1000D3B90(v4, v6);
  }

  return result;
}

id sub_10026A8A4()
{
  v0 = objc_allocWithZone(NSMutableAttributedString);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithString:v1];

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v18._object = 0x8000000101228750;
  v3._countAndFlagsBits = 0x6F4D206E7261654CLL;
  v4._object = 0x8000000101228730;
  v18._countAndFlagsBits = 0xD000000000000045;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0xEA00000000006572;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, qword_1019600D8, v3, v18);
  v5 = [objc_opt_self() systemBlueColor];
  sub_1000CE6B8(&qword_10191BE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D60;
  *(inited + 32) = NSForegroundColorAttributeName;
  v7 = sub_100014C84(0, &qword_10190CA00);
  *(inited + 40) = v5;
  *(inited + 64) = v7;
  *(inited + 72) = NSFontAttributeName;
  v8 = objc_opt_self();
  v9 = NSForegroundColorAttributeName;
  v10 = v5;
  v11 = NSFontAttributeName;
  v12 = [v8 system15];
  *(inited + 104) = sub_1000CE6B8(&qword_101916160);
  *(inited + 80) = v12;
  sub_1000D131C(inited);
  swift_setDeallocating();
  sub_1000CE6B8(&qword_101908020);
  swift_arrayDestroy();

  v13 = objc_allocWithZone(NSAttributedString);
  v14 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10026AB84();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithString:v14 attributes:isa];

  [v2 appendAttributedString:v16];
  return v2;
}

unint64_t sub_10026AB84()
{
  result = qword_10190EEE0;
  if (!qword_10190EEE0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190EEE0);
  }

  return result;
}

void sub_10026ABDC(uint64_t a1, double a2)
{
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  v6 = v5;
  sub_1000CE6B8(&qword_10191BE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D30;
  *(inited + 32) = NSFontAttributeName;
  v8 = objc_opt_self();
  v9 = NSFontAttributeName;
  v10 = [v8 system15];
  *(inited + 64) = sub_1000CE6B8(&qword_101916160);
  *(inited + 40) = v10;
  v33 = sub_1000D131C(inited);
  swift_setDeallocating();
  sub_1001A1AFC(inited + 32);
  sub_100014C84(0, &qword_101916170);
  AttributedString.init(stringLiteral:)();
  v34 = a1 >> 62;
  v35 = NSAttributedString.init(_:)();
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v33;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_30:

    [v35 boundingRectWithSize:1 options:0 context:{a2 - (v6 + v6), 1.79769313e308}];

    return;
  }

LABEL_29:
  v11 = _CocoaArrayWrapper.endIndex.getter();
  v12 = v33;
  if (!v11)
  {
    goto LABEL_30;
  }

LABEL_3:
  v13 = 0;
  v36 = a1 & 0xC000000000000001;
  v14 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v15 = a1;
  }

  else
  {
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v32 = v15;
  while (1)
  {
    if (v36)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v14 + 16))
      {
        goto LABEL_27;
      }

      v17 = *(a1 + 8 * v13 + 32);
    }

    v18 = v17;
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v20 = [v17 noticeText];
    if (!v20)
    {
      break;
    }

    v21 = v20;
    v22 = [objc_allocWithZone(GEOComposedString) initWithGeoFormattedString:v20];

    v23 = [objc_allocWithZone(MKServerFormattedString) initWithComposedString:v22];
    sub_1002691E4(v12);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v25 = [v23 multiPartAttributedStringWithAttributes:isa];

    if (v25 && (v16 = [v25 attributedString], v25, v16))
    {
      [v35 appendAttributedString:v16];
      if ([v18 shouldAlwaysShowAdvisoryCard])
      {
        v26 = sub_10026A8A4();
        [v35 appendAttributedString:v26];
      }

      if (v34)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v27 = *(v14 + 16);
      }

      if (__OFSUB__(v27, 1))
      {
        goto LABEL_28;
      }

      if (v13 < v27 - 1)
      {
        v28 = objc_allocWithZone(NSAttributedString);
        v29 = a1;
        v30 = String._bridgeToObjectiveC()();
        v31 = [v28 initWithString:v30];

        a1 = v29;
        v12 = v33;
        [v35 appendAttributedString:v31];
      }

      v18 = v23;
    }

    else
    {
      v16 = v23;
    }

    ++v13;
    if (v19 == v11)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
}