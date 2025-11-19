uint64_t sub_1007EC0B0(unsigned __int8 a1, int a2)
{
  v5 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v41 = v2;
  *(v2 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier) = a1;
  v8._countAndFlagsBits = Library.Menu.Identifier.rawValue.getter(a1);
  v50 = 0xD000000000000014;
  v51 = 0x8000000100E3E560;
  String.append(_:)(v8);

  v10 = v50;
  v9 = v51;
  v11 = Library.Menu.Identifier.name(for:)();
  v13 = v12;
  v42 = a2;
  Library.Menu.Identifier.symbolName(for:)(a2, a1);
  v14 = String._bridgeToObjectiveC()();

  v40 = [objc_opt_self() _systemImageNamed:v14];

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v50 = v10;
  v51 = v9;
  aBlock = 0xD000000000000014;
  v44 = 0x8000000100E3E560;
  v16 = type metadata accessor for Locale();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v18 = v17;
  LOBYTE(a2) = v19;
  result = sub_1000095E8(v7, &unk_101182EA0);
  if (a2)
  {
    v50 = 0xD000000000000014;
    v51 = 0x8000000100E3E560;
    v21._countAndFlagsBits = v10;
    v21._object = v9;
    String.append(_:)(v21);
    v22 = v10;
    v10 = v50;
    v23 = v51;
  }

  else
  {
    v24 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v24 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v24 < v18 >> 14)
    {
      __break(1u);
      return result;
    }

    String.subscript.getter();

    v22 = static String._fromSubstring(_:)();
    v26 = v25;

    v23 = v9;
    v9 = v26;
  }

  v50 = v10;
  v51 = v23;
  v52 = v22;
  v53 = v9;
  v54 = v11;
  v55 = v13;
  v56 = v40;
  v57 = sub_1007ED92C;
  v58 = v15;
  v27 = String._bridgeToObjectiveC()();
  v28 = String._bridgeToObjectiveC()();
  if (v57)
  {
    v47 = v57;
    v48 = v58;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_10003640C;
    v46 = &unk_1010C1098;
    v29 = _Block_copy(&aBlock);
  }

  else
  {
    v29 = 0;
  }

  v30 = v56;
  v31 = type metadata accessor for MusicTab();
  v49.receiver = v41;
  v49.super_class = v31;
  v32 = objc_msgSendSuper2(&v49, "initWithTitle:image:identifier:viewControllerProvider:", v27, v30, v28, v29);
  _Block_release(v29);

  sub_100036360(&v50);
  v33 = a1;
  v34 = Library.Menu.Identifier.musicAccessibilityIdentifier.getter(a1);
  v36 = v35;
  _s8FacetTabCMa();
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v34, v36);
  v38 = v33 != 1 || v42 == 2;
  [v32 setAllowsHiding:v38];
  return v32;
}

id sub_1007EC514(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1007EC580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11 + 64;
  static Library.Menu.Request.with(_:)(sub_1007ED758, v24);
  if (a1 && (RequestResponse.Revision.content.getter(&v23), (v13 = v23) != 0))
  {

    if (v13 >> 62)
    {
      sub_100009F78(0, &qword_101181F70);

      v14 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F78(0, &qword_101181F70);
      v14 = v13;
    }
  }

  else
  {
    v15 = [a4 children];
    sub_100009F78(0, &qword_101181F70);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static TaskPriority.userInitiated.getter();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  type metadata accessor for MainActor();
  sub_1003E1510(v24, &v23);

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  v19 = v24[3];
  *(v18 + 64) = v24[2];
  *(v18 + 80) = v19;
  *(v18 + 96) = v24[4];
  v20 = v24[1];
  *(v18 + 32) = v24[0];
  *(v18 + 48) = v20;
  *(v18 + 112) = v14;
  *(v18 + 120) = a2;
  *(v18 + 128) = a3;
  v21 = sub_10035EB10(0, 0, v12, &unk_100EE40E0, v18);
  sub_1000095E8(v12, &unk_101181520);
  a5[3] = sub_10010FC20(&qword_1011A0D90);
  a5[4] = &protocol witness table for Task<A, B>;
  result = sub_100400A60(v24);
  *a5 = v21;
  return result;
}

uint64_t sub_1007EC84C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = a7;
  *(v7 + 168) = a5;
  *(v7 + 192) = type metadata accessor for MainActor();
  *(v7 + 200) = static MainActor.shared.getter();
  v9 = a4[3];
  *(v7 + 48) = a4[2];
  *(v7 + 64) = v9;
  *(v7 + 80) = a4[4];
  v10 = a4[1];
  *(v7 + 16) = *a4;
  *(v7 + 32) = v10;
  v11 = swift_task_alloc();
  *(v7 + 208) = v11;
  v12 = sub_1007ED834();
  *v11 = v7;
  v11[1] = sub_1007EC938;

  return Request.response(previousRevision:)(v7 + 96, 0, &type metadata for Library.Menu.Request, v12);
}

uint64_t sub_1007EC938(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007ECA7C, v5, v4);
}

uint64_t sub_1007ECA7C()
{
  v55 = v0;

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  if (*(v0 + 144))
  {
    *(v0 + 152) = v2;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    swift_willThrowTypedImpl();
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_101218E00);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v51 = v1;
    sub_1007ED888(v2, v1, v4, v3, v6, v5, 1);
    v10 = v6;
    v11 = v4;
    v12 = v2;
    if (os_log_type_enabled(v8, v9))
    {
      v53 = v3;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v54[0] = v14;
      *v13 = 136446210;
      *(v0 + 160) = v12;
      swift_errorRetain();
      v15 = String.init<A>(describing:)();
      v17 = sub_1000105AC(v15, v16, v54);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to load library facets with error: %{public}s", v13, 0xCu);
      sub_10000959C(v14);

      v3 = v53;
    }

    v18 = *(v0 + 216);
    v19 = *(v0 + 224);
    v20 = *(v0 + 176);
    swift_errorRetain();
    v20(v12, 0, 1, v18, v19);
    sub_1007ED888(v12, v51, v11, v3, v10, v5, 1);
    swift_unknownObjectRelease();
    sub_1007ED888(v12, v51, v11, v3, v10, v5, 1);
    sub_1007ED888(v12, v51, v11, v3, v10, v5, 1);
  }

  else
  {
    v21 = *(v2 + 16);
    v50 = *(v0 + 128);
    if (v21)
    {
      v54[0] = _swiftEmptyArrayStorage;

      v52 = v1;
      v22 = v1;

      specialized ContiguousArray.reserveCapacity(_:)();
      v49 = v2;
      v23 = (v2 + 32);
      v24 = (v2 + 32);
      do
      {
        v27 = *(v0 + 168);
        v29 = *v24++;
        v28 = v29;
        KeyPath = swift_getKeyPath();
        v31 = sub_1002D1A7C(v29, KeyPath, v27);

        if (!v31)
        {
          v32 = objc_allocWithZone(_s8FacetTabCMa());
          v31 = sub_1007EC0B0(v28, 0);
        }

        v25 = v31;

        v26 = sub_10048CAB4(v28, v5);

        [v25 setHidden:(v26 & 1) == 0];
        [v25 setHiddenByDefault:{(sub_10048CAB4(v28, v3) & 1) == 0}];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v21;
      }

      while (v21);
      v33 = v54[0];
      v34 = *(v49 + 16);
      if (v34)
      {
        v48 = v54[0];
        sub_100015C04(0, v34, 0);
        do
        {
          v35 = *v23++;
          v36 = 0xD000000000000029;
          v37 = "nt";
          switch(v35)
          {
            case 1:
              v36 = 0xD000000000000025;
              v37 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v36 = 0xD000000000000023;
              v37 = "LibraryView.Playlists";
              break;
            case 3:
              v36 = 0xD000000000000022;
              v37 = "LibraryView.Artists";
              break;
            case 4:
              v36 = 0xD000000000000021;
              v37 = "LibraryView.Albums";
              break;
            case 5:
              v36 = 0xD000000000000026;
              v37 = "LibraryView.Songs";
              break;
            case 6:
              v36 = 0xD000000000000027;
              v37 = "LibraryView.MadeForYou";
              break;
            case 7:
              v36 = 0xD000000000000022;
              v37 = "LibraryView.MusicVideos";
              break;
            case 8:
              v36 = 0xD000000000000028;
              v37 = "LibraryView.Genres";
              break;
            case 9:
              v36 = 0xD000000000000025;
              v37 = "LibraryView.Compilations";
              break;
            case 10:
              v36 = 0xD000000000000021;
              v37 = "LibraryView.Composers";
              break;
            case 11:
              v36 = 0xD000000000000026;
              v37 = "LibraryView.Shows";
              break;
            case 12:
              v36 = 0xD000000000000027;
              v37 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          v54[0] = 0xD000000000000014;
          v54[1] = 0x8000000100E3E560;
          v38 = v37 | 0x8000000000000000;
          String.append(_:)(*&v36);

          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_100015C04((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = 0xD000000000000014;
          v41[5] = 0x8000000100E3E560;
          --v34;
        }

        while (v34);
        v33 = v48;
        v42 = v4;
        v43 = v52;
        v44 = v49;
      }

      else
      {
        v42 = v4;
        v44 = v49;
        v43 = v52;
      }
    }

    else
    {

      v45 = v1;

      v33 = _swiftEmptyArrayStorage;
      v44 = v2;
      v43 = v1;
      v42 = v4;
    }

    (*(v0 + 176))(v33, _swiftEmptyArrayStorage, 0, *(v0 + 216), *(v0 + 224));
    sub_1007ED888(v44, v43, v42, v3, v50, v5, 0);

    swift_unknownObjectRelease();
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1007ED1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = *v4;

  sub_1007EC580(a1, sub_1007ED710, v9, v10, a4);
}

uint64_t sub_1007ED29C()
{
  sub_100009F78(0, &qword_101197A30);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicLibrary();
  return static MusicLibrary.== infix(_:_:)() & 1;
}

unint64_t sub_1007ED31C(uint64_t a1)
{
  result = sub_1007ED344();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1007ED344()
{
  result = qword_1011A4060;
  if (!qword_1011A4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4060);
  }

  return result;
}

uint64_t sub_1007ED398(uint64_t a1)
{
  Library.Menu.Request.MediaLibrarySource.init(_:)();
  v3 = v2;
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);

  sub_1003E156C(v6, v7);
  *a1 = v3;
  *(a1 + 8) = v5 & 1;
  *(a1 + 40) = 0;
  v16 = sub_10010F828(&off_10109C528);
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = &v14;
    v11 = 11;
  }

  else
  {
    v10 = &v15;
    v11 = 12;
  }

  sub_1003B4C48(v10, v11);
  v12 = v16;

  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_1007ED490()
{
  v0 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UICellAccessory.DisplayedState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184740);
  type metadata accessor for UICellAccessory();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBC6B0;
  (*(v5 + 104))(v7, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v4);
  if (qword_10117F290 != -1)
  {
    swift_once();
  }

  v9 = sub_1000060E4(v0, qword_101218718);
  (*(v1 + 16))(v3, v9, v0);
  static UICellAccessory.multiselect(displayed:options:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1007ED710(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3 & 1;
  return v6(v8, a4, a5);
}

uint64_t sub_1007ED760(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1007EC84C(a1, v4, v5, (v1 + 32), v6, v7, v8);
}

unint64_t sub_1007ED834()
{
  result = qword_1011A4068;
  if (!qword_1011A4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4068);
  }

  return result;
}

uint64_t sub_1007ED888(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }
}

uint64_t sub_1007ED934(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  v54 = a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = qword_10117F7B0;

  v12 = v5;

  if (v11 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218E30);

    v14 = v12;

    v15 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v55 = v8;
    v56 = v7;
    v59 = v10;
    v60 = v9;
    v65 = a4;
    v61 = v14;
    if (os_log_type_enabled(v15, v12))
    {
      v16 = swift_slowAlloc();
      loga = v12;
      v12 = swift_slowAlloc();
      v76 = v12;
      *v16 = 136446210;
      v70 = v6;
      v71 = v14;
      v72 = v7;
      v73 = v8;
      v74 = v9;
      v75 = v10;

      v17 = v14;

      v18 = String.init<A>(describing:)();
      v20 = sub_1000105AC(v18, v19, &v76);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, loga, "Updating menu selection %{public}s", v16, 0xCu);
      sub_10000959C(v12);

      a4 = v65;
    }

    v7 = a3;
    v10 = v6;
    v64 = v6;
    v9 = v14;
    log = *(v6 + 16);
    if (!log)
    {
      break;
    }

    v8 = 0;
    v66 = v6 + 32;
    while (v8 < *(v10 + 16))
    {
      v6 = *(&v8->isa + v66);
      KeyPath = swift_getKeyPath();

      v22 = sub_1002D1A7C(v6, KeyPath, v7);

      if (v22 || (v12 = swift_getKeyPath(), v22 = sub_1002D1A7C(v6, v12, a4), , v22))
      {
        v12 = [v22 isHidden];

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v25 = 136315394;
          if (v12)
          {
            v26 = 0x7463656C65736544;
          }

          else
          {
            v26 = 0x6E697463656C6553;
          }

          if (v12)
          {
            v27 = 0xEB00000000676E69;
          }

          else
          {
            v27 = 0xE900000000000067;
          }

          v28 = sub_1000105AC(v26, v27, &v70);

          *(v25 + 4) = v28;
          *(v25 + 12) = 2082;
          v29 = Library.Menu.Identifier.description.getter(v6);
          v31 = sub_1000105AC(v29, v30, &v70);
          a4 = v65;

          *(v25 + 14) = v31;
          v9 = v61;
          _os_log_impl(&_mh_execute_header, v23, v24, "%s identifier=%{public}s", v25, 0x16u);
          swift_arrayDestroy();
          v10 = v64;

          v7 = a3;
        }

        Library.Menu.setSelectionState(_:for:)(v12, v6);
      }

      v8 = (v8 + 1);

      if (log == v8)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_19:

  v67 = v9;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v62 = v33;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v34 = 136446466;
    v70 = v10;
    v71 = v67;
    v72 = v56;
    v73 = v55;
    v74 = v60;
    v75 = v59;

    v35 = v67;

    v36 = String.init<A>(describing:)();
    v38 = sub_1000105AC(v36, v37, &v76);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    v39 = Array.description.getter();
    v41 = sub_1000105AC(v39, v40, &v76);

    *(v34 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v32, v62, "Re-ordering menu %{public}s with identifiers=%{public}s", v34, 0x16u);
    swift_arrayDestroy();
  }

  v42 = v57;
  v43 = *(v54 + 16);
  if (v43)
  {
    if (v43 == *(v10 + 16))
    {
      v44 = 0;
      do
      {
        if (v43 == v44)
        {
          break;
        }

        v45 = *(v54 + 32 + v44);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v58 = v42;
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v70 = v49;
          *v48 = 136446466;
          v50 = Library.Menu.Identifier.description.getter(v45);
          v52 = sub_1000105AC(v50, v51, &v70);

          *(v48 + 4) = v52;
          *(v48 + 12) = 2050;
          *(v48 + 14) = v44;
          _os_log_impl(&_mh_execute_header, v46, v47, "Moving identifier=%{public}s to index=%{public}ld", v48, 0x16u);
          sub_10000959C(v49);

          v42 = v58;
        }

        Library.Menu.move(_:to:)(v45, v44++);
      }

      while (!v42);
    }

    else
    {
      sub_1007EE1D8();
      swift_allocError();
      swift_willThrow();
    }
  }
}

unint64_t sub_1007EE1D8()
{
  result = qword_1011A4070;
  if (!qword_1011A4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4070);
  }

  return result;
}

unint64_t sub_1007EE250()
{
  result = qword_1011A4078;
  if (!qword_1011A4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4078);
  }

  return result;
}

uint64_t sub_1007EE2AC@<X0>(id a1@<X1>, char a2@<W0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a1)
  {
    result = [a1 horizontalSizeClass];
  }

  else
  {
    result = 1;
  }

  v10 = 0uLL;
  if (!a4)
  {
    goto LABEL_40;
  }

  if (a4 != 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a2)
        {
          static CAPackageDefinition.pause.getter(v24);
LABEL_23:
          CAPackageDefinition.scaled(byX:y:)(&v25, 0.92, 0.92);
LABEL_50:
          v22 = v26;
          v23 = v25;
          v20 = v28;
          v21 = v27;
          v18 = v30;
          v19 = v29;
          a4 = v31;
          result = sub_10002A3D4(v24);
          v15 = v18;
          v14 = v19;
          v13 = v20;
          v12 = v21;
          v11 = v22;
          v10 = v23;
          goto LABEL_51;
        }

        if (result != 2)
        {
          if (result != 1)
          {
            goto LABEL_39;
          }

          static CAPackageDefinition.pause.getter(v24);
          v16 = 0x4032000000000000;
          v17 = 0x4032000000000000;
LABEL_49:
          CAPackageDefinition.with(size:)(v16, v17, 0, &v25);
          goto LABEL_50;
        }

        static CAPackageDefinition.pause.getter(v24);
LABEL_48:
        v16 = 0x403B000000000000;
        v17 = 0x403B000000000000;
        goto LABEL_49;
      }

      if (a2)
      {
        static CAPackageDefinition.stop.getter(v24);
        goto LABEL_23;
      }

      if (result == 2)
      {
        static CAPackageDefinition.stop.getter(v24);
        goto LABEL_48;
      }

      if (result != 1)
      {
        goto LABEL_39;
      }

      static CAPackageDefinition.stop.getter(v24);
    }

    else
    {
      if (a2)
      {
        static CAPackageDefinition.play.getter(v24);
        goto LABEL_23;
      }

      if (result == 2)
      {
        static CAPackageDefinition.play.getter(v24);
        v16 = 0x403E000000000000;
        v17 = 0x403E000000000000;
        goto LABEL_49;
      }

      if (result != 1)
      {
        goto LABEL_39;
      }

      static CAPackageDefinition.play.getter(v24);
    }

    v16 = 0x4030000000000000;
    v17 = 0x4030000000000000;
    goto LABEL_49;
  }

  if ((a2 & 1) == 0)
  {
    if (result == 2)
    {
      if (a3 == -1)
      {
        static CAPackageDefinition.skipBackward.getter(v24);
      }

      else
      {
        if (a3 != 1)
        {
          goto LABEL_39;
        }

        static CAPackageDefinition.skipForward.getter(v24);
      }

      v16 = 0x403E000000000000;
      v17 = 0x4031000000000000;
      goto LABEL_49;
    }

    if (result == 1)
    {
      if (a3 == -1)
      {
        static CAPackageDefinition.skipBackward.getter(v24);
        goto LABEL_42;
      }

      if (a3 == 1)
      {
        static CAPackageDefinition.skipForward.getter(v24);
LABEL_42:
        v16 = 0x4039000000000000;
        v17 = 0x402C000000000000;
        goto LABEL_49;
      }
    }

LABEL_39:
    a4 = 0;
LABEL_40:
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_51;
  }

  if (a3 == -1)
  {
    result = static CAPackageDefinition.skipBackward.getter(&v25);
    goto LABEL_25;
  }

  if (a3 != 1)
  {
    goto LABEL_39;
  }

  result = static CAPackageDefinition.skipForward.getter(&v25);
LABEL_25:
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = v28;
  v14 = v29;
  v15 = v30;
  a4 = v31;
LABEL_51:
  *a5 = v10;
  *(a5 + 16) = v11;
  *(a5 + 32) = v12;
  *(a5 + 48) = v13;
  *(a5 + 64) = v14;
  *(a5 + 80) = v15;
  *(a5 + 96) = a4;
  return result;
}

void sub_1007EE550(id a1@<X1>, char a2@<W0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = [a1 tracklist];
  v14 = [v9 playingItem];

  if (!a4)
  {
    v10 = v14;
    if (!a2)
    {
      v11 = &type metadata for Player.JumpCommand;
      v12 = &protocol witness table for Player.JumpCommand;
      goto LABEL_8;
    }

LABEL_20:

    goto LABEL_21;
  }

  v10 = v14;
  if (a4 != 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (!a2)
        {
          *(a5 + 24) = &type metadata for Player.PlaybackCommand;
          *(a5 + 32) = &protocol witness table for Player.PlaybackCommand;

          *a5 = 1;
          return;
        }
      }

      else if (!a2)
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        if (MPCPlayerResponseItem.isLiveContent.getter())
        {
          *(a5 + 24) = &type metadata for Player.PlaybackCommand;
          *(a5 + 32) = &protocol witness table for Player.PlaybackCommand;

          *a5 = 2;
          return;
        }

        v10 = v14;
      }
    }

    else if (!a2)
    {
      *(a5 + 24) = &type metadata for Player.PlaybackCommand;
      *(a5 + 32) = &protocol witness table for Player.PlaybackCommand;

      *a5 = 0;
      return;
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    if (a3 == 1)
    {
      v13 = &v26;
      v28 = &type metadata for Player.ChangeCommand;
      v29 = &protocol witness table for Player.ChangeCommand;
      v27 = 3;
      v31 = &type metadata for Player.ChangeCommand;
      v32 = &protocol witness table for Player.ChangeCommand;
      v30 = 5;
      v34 = &type metadata for Player.ChangeCommand;
      v35 = &protocol witness table for Player.ChangeCommand;
      v33 = 1;
    }

    else
    {
      if (a3 != -1)
      {
        *(a5 + 32) = 0;
        *a5 = 0u;
        *(a5 + 16) = 0u;

        return;
      }

      v13 = &v15;
      v17 = &type metadata for Player.ChangeCommand;
      v18 = &protocol witness table for Player.ChangeCommand;
      v16 = 2;
      v20 = &type metadata for Player.ChangeCommand;
      v21 = &protocol witness table for Player.ChangeCommand;
      v19 = 4;
      v23 = &type metadata for Player.ChangeCommand;
      v24 = &protocol witness table for Player.ChangeCommand;
      v22 = 0;
    }

    sub_100008FE4((v13 + 32), v25);
    if (MPCPlayerResponse.canPerform(_:)(v25) || (sub_10000959C(v25), sub_100008FE4((v13 + 72), v25), MPCPlayerResponse.canPerform(_:)(v25)) || (sub_10000959C(v25), sub_100008FE4((v13 + 112), v25), MPCPlayerResponse.canPerform(_:)(v25)))
    {

      sub_10010FC20(&qword_101192050);
      swift_arrayDestroy();
      sub_100059A8C(v25, a5);
      return;
    }

    sub_10000959C(v25);

    sub_10010FC20(&qword_101192050);
    swift_arrayDestroy();
LABEL_21:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  if (a2 == 1)
  {
    v11 = &type metadata for Player.SeekCommand;
    v12 = &protocol witness table for Player.SeekCommand;
LABEL_8:
    *(a5 + 24) = v11;
    *(a5 + 32) = v12;

    *a5 = a3;
    *(a5 + 8) = 0;
    return;
  }

  *(a5 + 24) = &type metadata for Player.SeekCommand;
  *(a5 + 32) = &protocol witness table for Player.SeekCommand;

  *a5 = 0;
  *(a5 + 8) = 2;
}

id sub_1007EE8A4(char a1, id a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2)
  {
    v8 = [a2 horizontalSizeClass];
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [objc_opt_self() currentTraitCollection];
    v8 = [v12 horizontalSizeClass];

    if (a1)
    {
LABEL_3:
      v9 = objc_opt_self();
      if (a4 >= 2u)
      {
        v10 = 44.0;
        v11 = 7;
      }

      else
      {
        v10 = 28.0;
        v11 = 5;
      }

      goto LABEL_18;
    }
  }

  if (v8 == 1)
  {
    v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:a2];
    [v14 pointSize];
    v16 = v15;

    v9 = objc_opt_self();
    if (a4 < 2u || a3 != 1)
    {
      goto LABEL_16;
    }

    v10 = v16;
    v11 = 7;
  }

  else
  {
    if (v8 != 2)
    {
      v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:a2];
      goto LABEL_15;
    }

    if (a4 < 2u)
    {
      v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:a2];
LABEL_15:
      v17 = v13;
      [v17 pointSize];
      v16 = v18;

      v9 = objc_opt_self();
LABEL_16:
      v10 = v16;
      v11 = 7;
      v19 = 2;
      goto LABEL_19;
    }

    v20 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:a2];
    [v20 pointSize];
    v22 = v21;

    v9 = objc_opt_self();
    v10 = v22;
    v11 = 8;
  }

LABEL_18:
  v19 = 3;
LABEL_19:
  v23 = [v9 configurationWithPointSize:v11 weight:v19 scale:v10];

  return v23;
}

uint64_t sub_1007EEB38(uint64_t result, char a2)
{
  if (!a2)
  {
    if (*&result <= 0.0)
    {
      if (*&result >= 0.0)
      {
        *&result = 0.0;
        return result;
      }

      v4 = 0x61776B6361626F67;
      if ((result & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (fabs(*&result) < 9.22337204e18)
        {
          goto LABEL_18;
        }

LABEL_22:
        __break(1u);
        return result;
      }
    }

    else
    {
      v4 = 0x726177726F666F67;
      if ((~result & 0x7FF0000000000000) != 0)
      {
        if (*&result > -9.22337204e18)
        {
          if (*&result >= 9.22337204e18)
          {
            __break(1u);
            return *&aPlayFilpauseFi[8 * result];
          }

LABEL_18:
          v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v3);

          return v4;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (a2 != 1)
  {
    return *&aPlayFilpauseFi[8 * result];
  }

  v2 = 0x2E64726177726F66;
  if (result != 1)
  {
    v2 = 0;
  }

  if (*&result == NAN)
  {
    *&result = 7.27378071e175;
  }

  else
  {
    return v2;
  }

  return result;
}

unint64_t sub_1007EECDC(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = a4;
  v9 = sub_10010DD70(_swiftEmptyArrayStorage);
  if (v8 != 2 || a3)
  {
    sub_1007EE550(a1, 0, a3, a4, &v35);
    if (v36)
    {
      sub_100059A8C(&v35, v37);
      if (MPCPlayerResponse.canPerform(_:)(v37))
      {
        sub_100008FE4(v37, &v35);
        sub_1007F033C(a2, &v32);
        v13 = swift_allocObject();
        sub_100059A8C(&v35, v13 + 16);
        v14 = v33;
        *(v13 + 56) = v32;
        *(v13 + 72) = v14;
        *(v13 + 88) = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v29 = v9;
        sub_1006C7638(sub_1007F03AC, v13, 0, isUniquelyReferenced_nonNull_native);
        v16 = [a1 tracklist];
        v17 = [v16 playingItem];

        if (a4 == 1)
        {
          *(&v33 + 1) = &type metadata for Player.SeekCommand;
          v34 = &protocol witness table for Player.SeekCommand;

          *&v32 = a3;
          BYTE8(v32) = 0;
          sub_100059A8C(&v32, &v35);
          if (MPCPlayerResponse.canPerform(_:)(&v35))
          {
            sub_100008FE4(&v35, &v32);
            sub_1007F033C(a2, &v29);
            v18 = swift_allocObject();
            sub_100059A8C(&v32, v18 + 16);
            v19 = v30;
            *(v18 + 56) = v29;
            *(v18 + 72) = v19;
            *(v18 + 88) = v31;
            v20 = swift_isUniquelyReferenced_nonNull_native();
            v28 = v9;
            sub_1006C7638(sub_1007F044C, v18, 1u, v20);
          }

          sub_10000959C(&v35);
        }

        else
        {
        }

        v21 = a4;
        v22 = [a1 tracklist];
        v23 = [v22 playingItem];

        if (v21 == 1)
        {
          *(&v33 + 1) = &type metadata for Player.SeekCommand;
          v34 = &protocol witness table for Player.SeekCommand;

          *&v32 = 0;
          BYTE8(v32) = 2;
          sub_100059A8C(&v32, &v35);
          if (MPCPlayerResponse.canPerform(_:)(&v35))
          {
            sub_100008FE4(&v35, &v32);
            sub_1007F033C(a2, &v29);
            v24 = swift_allocObject();
            sub_100059A8C(&v32, v24 + 16);
            v25 = v30;
            *(v24 + 56) = v29;
            *(v24 + 72) = v25;
            *(v24 + 88) = v31;
            v26 = swift_isUniquelyReferenced_nonNull_native();
            sub_1006C7638(sub_1007F03FC, v24, 2u, v26);
          }

          sub_10000959C(&v35);
        }

        else
        {
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1007EE550(a1, 0, 0, 2, &v35);
    if (v36)
    {
      sub_100059A8C(&v35, v37);
      if (MPCPlayerResponse.canPerform(_:)(v37))
      {
        sub_100008FE4(v37, &v35);
        sub_1007F033C(a2, &v32);
        v10 = swift_allocObject();
        sub_100059A8C(&v35, v10 + 16);
        v11 = v33;
        *(v10 + 56) = v32;
        *(v10 + 72) = v11;
        *(v10 + 88) = v34;
        v12 = swift_isUniquelyReferenced_nonNull_native();
        *&v29 = v9;
        sub_1006C7638(sub_1007F04E4, v10, 0, v12);
      }

LABEL_19:
      sub_10000959C(v37);
      return v9;
    }
  }

  sub_1000095E8(&v35, &qword_1011A4140);
  return v9;
}

uint64_t sub_1007EF128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1007EF148, 0, 0);
}

uint64_t sub_1007EF148()
{
  *(v0 + 32) = type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EF1E0, v2, v1);
}

uint64_t sub_1007EF1E0()
{

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1007EF278, 0, 0);
}

uint64_t sub_1007EF278()
{
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EF304, v2, v1);
}

uint64_t sub_1007EF304()
{

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1007EF3B0;

  return GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(0, 0, 0);
}

uint64_t sub_1007EF3B0(char a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1007EF4B0, 0, 0);
}

uint64_t sub_1007EF4B0()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 64) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1007EF578, v4, v3);
  }
}

uint64_t sub_1007EF578()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1007EF610, 0, 0);
}

uint64_t sub_1007EF610()
{
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EF69C, v2, v1);
}

uint64_t sub_1007EF69C()
{

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1007EF74C;
  v3 = v0[2];
  v2 = v0[3];

  return PlaybackController.perform(_:route:intent:issuer:)(v3, 0, 0, v2);
}

uint64_t sub_1007EF74C(void *a1)
{
  v4 = *v2;

  if (!v1)
  {
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1007EF84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1007EF870, 0, 0);
}

uint64_t sub_1007EF870()
{
  *(v0 + 40) = type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EF908, v2, v1);
}

uint64_t sub_1007EF908()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1007EF9A0, 0, 0);
}

uint64_t sub_1007EF9A0()
{
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EFA2C, v2, v1);
}

uint64_t sub_1007EFA2C()
{

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1007EFADC;
  v3 = v0[3];
  v2 = v0[4];

  return PlaybackController.perform(_:route:intent:issuer:)(v3, 0, 0, v2);
}

uint64_t sub_1007EFADC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_1007EFC28, 0, 0);
  }
}

uint64_t sub_1007EFC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1007EFC70, 0, 0);
}

uint64_t sub_1007EFC70()
{
  *(v0 + 40) = type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EFD08, v2, v1);
}

uint64_t sub_1007EFD08()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1007EFDA0, 0, 0);
}

uint64_t sub_1007EFDA0()
{
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EFE2C, v2, v1);
}

uint64_t sub_1007EFE2C()
{

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1007EFEDC;
  v3 = v0[3];
  v2 = v0[4];

  return PlaybackController.perform(_:route:intent:issuer:)(v3, 0, 0, v2);
}

uint64_t sub_1007EFEDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_1007F08E4, 0, 0);
  }
}

uint64_t sub_1007F0028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, char *, uint64_t, uint64_t))
{
  v10 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v10 - 8);
  v12 = v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_100008FE4(a2, v19);
  sub_1007F033C(a3, v17);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_100059A8C(v19, v14 + 32);
  v15 = v17[1];
  *(v14 + 72) = v17[0];
  *(v14 + 88) = v15;
  *(v14 + 104) = v18;
  a6(0, 0, v12, a5, v14);
}

uint64_t sub_1007F016C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1007F0190, 0, 0);
}

uint64_t sub_1007F0190()
{
  *(v0 + 40) = type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007EFD08, v2, v1);
}

uint64_t sub_1007F0228@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_1007F033C(a3, v10);
  v8 = sub_1007EECDC(a2, v10, v6, v7);
  result = sub_1000095E8(v10, &unk_101183910);
  *a4 = v6;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  return result;
}

uint64_t sub_1007F02BC()
{

  sub_100020438(*(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1007F033C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007F049C()
{
  sub_10000959C(v0 + 16);
  if (*(v0 + 80))
  {
    sub_10000959C(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_1007F0534(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1007EF128(a1, v4, v5, v1 + 32, v1 + 72);
}

uint64_t sub_1007F05E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1007EFC4C(a1, v4, v5, v1 + 32, v1 + 72);
}

uint64_t sub_1007F069C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1007F016C(a1, v4, v5, v1 + 32, v1 + 72);
}

uint64_t sub_1007F0750()
{
  swift_unknownObjectRelease();
  sub_10000959C(v0 + 32);
  if (*(v0 + 96))
  {
    sub_10000959C(v0 + 72);
  }

  return swift_deallocObject();
}

uint64_t sub_1007F07A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1007EF84C(a1, v4, v5, v1 + 32, v1 + 72);
}

unint64_t sub_1007F0878()
{
  result = qword_1011A4148;
  if (!qword_1011A4148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4148);
  }

  return result;
}

uint64_t sub_1007F08E8(unsigned __int8 a1)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 != 1)
    {
      if (a1 == 128)
      {
        return 0x6165707061736944;
      }

      else
      {
        return 0x6465726165707041;
      }
    }

    v1 = 0x6165707061736944;
  }

  else
  {
    v1 = 0x6E69726165707041;
  }

  v7 = v1;
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x646574616D696E61;
  }

  else
  {
    v3 = 0x6D696E61206E6F6ELL;
  }

  if (v2)
  {
    v4 = 0xEC00000064657461;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  return v7;
}

uint64_t sub_1007F09F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return 1;
      }
    }

    else if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1007F0A50(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (v3 ^ v2 ^ 1) & 1;
    }

    if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_1007F0AC4()
{
  result = swift_slowAlloc();
  qword_1011A4150 = result;
  return result;
}

id sub_1007F0B30()
{
  if (qword_10117FDA0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011A4150))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_1005954F4();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_100011DF0(v6);
  }

  v2 = [objc_opt_self() systemBackgroundColor];

  return v2;
}

uint64_t getEnumTagSinglePayload for AppearanceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AppearanceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1007F0DFC(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_1007F0E28(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

void sub_1007F0E64(id value)
{
  v2 = value;
  if (qword_10117FDA0 != -1)
  {
    swift_once();
    v2 = value;
  }

  objc_setAssociatedObject(v1, qword_1011A4150, v2, 1);
  if ([v1 isViewLoaded])
  {
    v3 = [v1 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setBackgroundColor:value];
  }
}

void sub_1007F0F38()
{
  sub_100009F78(0, &qword_101183A00);
  v0 = UIFontTextStyleTitle2;
  v1 = static UIFont.preferredFont(forTextStyle:weight:)();

  qword_101219640 = v1;
}

id sub_1007F0FB0()
{
  result = [objc_opt_self() whiteColor];
  qword_101219648 = result;
  return result;
}

void sub_1007F0FEC()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent:0.08];

  v2 = [v1 CGColor];
  qword_101219650 = v2;
}

void sub_1007F1078()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent:0.7];

  qword_101219658 = v1;
}

id sub_1007F1110(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = [objc_opt_self() secondaryLabelColor];
  v3 = v2;
  v4 = 0.7;
  if (v1 == 2)
  {
    v4 = 0.2;
  }

  v5 = [v2 colorWithAlphaComponent:v4];

  return v5;
}

id sub_1007F11C4(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    sub_100009F78(0, &qword_101180C98);
    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(53, 53, 53, 1.0);
  }

  else
  {
    v2 = [objc_opt_self() whiteColor];

    return v2;
  }
}

id sub_1007F1284(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  result = [objc_opt_self() quaternarySystemFillColor];
  if (v1 == 2)
  {
    v3 = result;
    v4 = [result colorWithAlphaComponent:0.09];

    return v4;
  }

  return result;
}

id sub_1007F132C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  v3 = 0.0;
  if (v1 == 2)
  {
    v3 = 1.0;
  }

  return [v2 initWithWhite:v3 alpha:0.1];
}

CGFloat sub_1007F1394()
{
  CGAffineTransformMakeScale(&v1, 0.99, 0.99);
  result = v1.a;
  *byte_101219680 = v1;
  return result;
}

double sub_1007F13DC()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.06, 8.0, 0.0, 2.0);
  result = *v2;
  xmmword_1012196B0 = v2[0];
  unk_1012196C0 = v2[1];
  qword_1012196D0 = v3;
  return result;
}

double sub_1007F1450()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.25, 8.0, 0.0, 2.0);
  result = *v2;
  xmmword_1012196D8 = v2[0];
  *algn_1012196E8 = v2[1];
  qword_1012196F8 = v3;
  return result;
}

double sub_1007F14C0()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.3, 8.0, 0.0, 2.0);
  result = *v2;
  xmmword_101219700 = v2[0];
  unk_101219710 = v2[1];
  qword_101219720 = v3;
  return result;
}

double sub_1007F1538()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.5, 8.0, 0.0, 2.0);
  result = *v2;
  xmmword_101219728 = v2[0];
  *algn_101219738 = v2[1];
  qword_101219748 = v3;
  return result;
}

double sub_1007F15C8()
{
  v0 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorBrightness];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];

  v3 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v4 = Double._bridgeToObjectiveC()().super.super.isa;
  v5 = kCAFilterInputAmount;
  [v3 setValue:v4 forKey:kCAFilterInputAmount];

  v6 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorContrast];
  v7 = Double._bridgeToObjectiveC()().super.super.isa;
  [v6 setValue:v7 forKey:v5];

  sub_10010FC20(&qword_101183990);
  v8 = swift_allocObject();
  *&result = 3;
  *(v8 + 16) = xmmword_100EBE270;
  *(v8 + 32) = v0;
  *(v8 + 40) = v3;
  *(v8 + 48) = v6;
  return result;
}

id sub_1007F1758()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:630.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_101219758 = result;
  return result;
}

id sub_1007F17A8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:211.0 damping:9.0 initialVelocity:{0.0, 0.0}];
  qword_101219760 = result;
  return result;
}

id sub_1007F17F8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_101219768 = result;
  return result;
}

void sub_1007F1910(char a1)
{
  if ([v1 isHighlighted] == (a1 & 1))
  {
    return;
  }

  v2 = [v1 isHighlighted];
  v3 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state;
  v4 = v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state];
  if (!v2)
  {
    if (v4 != 3)
    {
      goto LABEL_16;
    }

    v17 = v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousState];
    if (v17 == 3 || v17 == 5)
    {
      goto LABEL_16;
    }

    v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state] = v17;
    if (qword_10117FE28 != -1)
    {
      swift_once();
    }

    v19 = qword_101219768;
    v6 = objc_opt_self();
    [v19 settlingDuration];
    v8 = v20;
    [v19 mass];
    v10 = v21;
    [v19 stiffness];
    v12 = v22;
    [v19 damping];
    v14 = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    v46 = sub_1007F4D6C;
    v47 = v24;
    v42 = _NSConcreteStackBlock;
    v43 = 1107296256;
    v16 = &unk_1010C17D8;
    goto LABEL_15;
  }

  v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousState] = v4;
  if (v4 != 3)
  {
    v1[v3] = 3;
    if (qword_10117FE28 != -1)
    {
      swift_once();
    }

    v5 = qword_101219768;
    v6 = objc_opt_self();
    [v5 settlingDuration];
    v8 = v7;
    [v5 mass];
    v10 = v9;
    [v5 stiffness];
    v12 = v11;
    [v5 damping];
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v46 = sub_1007F4DB8;
    v47 = v15;
    v42 = _NSConcreteStackBlock;
    v43 = 1107296256;
    v16 = &unk_1010C1828;
LABEL_15:
    v44 = sub_10002BC98;
    v45 = v16;
    v25 = _Block_copy(&v42);
    v26 = v1;

    [v6 _animateUsingSpringWithDuration:6 delay:v25 options:0 mass:v8 stiffness:0.0 damping:v10 initialVelocity:v12 animations:v14 completion:{0.0, v42, v43}];
    _Block_release(v25);
  }

LABEL_16:
  if ([v1 isHighlighted])
  {
    if (qword_10117FE18 != -1)
    {
      swift_once();
    }

    v27 = &qword_101219758;
  }

  else
  {
    if (qword_10117FE20 != -1)
    {
      swift_once();
    }

    v27 = &qword_101219760;
  }

  v28 = *v27;
  [v28 settlingDuration];
  v30 = v29;
  if ([v1 isHighlighted])
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 0.1;
  }

  v32 = objc_opt_self();
  [v28 mass];
  v34 = v33;
  [v28 stiffness];
  v36 = v35;
  [v28 damping];
  v38 = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = v1;
  v46 = sub_1007F4D64;
  v47 = v39;
  v42 = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_10002BC98;
  v45 = &unk_1010C1788;
  v40 = _Block_copy(&v42);
  v41 = v1;

  [v32 _animateUsingSpringWithDuration:6 delay:v40 options:0 mass:v30 stiffness:v31 damping:v34 initialVelocity:v36 animations:v38 completion:0.0];

  _Block_release(v40);
}

id sub_1007F1E28(void *a1)
{
  if ([a1 isHighlighted])
  {
    if (qword_10117FDE8 != -1)
    {
      swift_once();
    }

    v3 = *byte_101219680;
    v2 = *&byte_101219680[16];
    v4 = *&byte_101219680[32];
  }

  else
  {
    v2 = xmmword_100EBEF30;
    v3 = xmmword_100EBEF40;
    v4 = 0uLL;
  }

  v6[0] = v3;
  v6[1] = v2;
  v6[2] = v4;
  return [a1 setTransform:v6];
}

char *sub_1007F1EFC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v10 - 8);
  v12 = &v165 - v11;
  v13 = &v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_text];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_textAlignment] = 4;
  v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position] = 0;
  v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousState] = 5;
  v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state] = 0;
  v14 = &v4[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousContainerViewFrame];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v15 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView;
  v16 = [objc_allocWithZone(UIView) init];
  v17 = UIView.forAutolayout.getter();

  *&v5[v15] = v17;
  v18 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
  v19 = [objc_allocWithZone(UIView) init];
  v20 = UIView.forAutolayout.getter();

  *&v5[v18] = v20;
  v21 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView;
  v22 = [objc_allocWithZone(UIView) init];
  v23 = UIView.forAutolayout.getter();

  *&v5[v21] = v23;
  v24 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView;
  v25 = objc_allocWithZone(type metadata accessor for BackdropView());
  v26 = sub_100453A34();
  v27 = UIView.forAutolayout.getter();

  *&v5[v24] = v27;
  v28 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label;
  v29 = [objc_allocWithZone(UILabel) init];
  v30 = UIView.forAutolayout.getter();

  *&v5[v28] = v30;
  v31 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView;
  v32 = [objc_allocWithZone(UILabel) init];
  v33 = UIView.forAutolayout.getter();

  *&v5[v31] = v33;
  v34 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer;
  *&v5[v34] = [objc_allocWithZone(CAShapeLayer) init];
  v35 = _s8LineCellCMa();
  v170.receiver = v5;
  v170.super_class = v35;
  v36 = objc_msgSendSuper2(&v170, "initWithFrame:", a1, a2, a3, a4);
  v37 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView;
  v38 = *&v36[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView];
  v39 = v36;
  v40 = v38;
  UIView.shadowPathIsBounds.setter(1);

  v41 = v37;
  v42 = *&v36[v37];
  v43 = [v39 traitCollection];
  v44 = [v43 userInterfaceStyle];

  if (v44 == 2)
  {
    if (qword_10117FE00 != -1)
    {
      swift_once();
    }

    v45 = &xmmword_101219700;
  }

  else
  {
    if (qword_10117FDF0 != -1)
    {
      swift_once();
    }

    v45 = &xmmword_1012196B0;
  }

  v46 = *v45;
  v169 = *(v45 + 8);
  v47 = *(v45 + 3);
  v48 = *(v45 + 4);
  v171 = v46;
  v172 = v169;
  v173 = v47;
  v174 = v48;
  UIView.shadow.setter(&v171);

  v49 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
  v50 = [*&v39[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView] layer];
  [v50 setMasksToBounds:1];

  v51 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView;
  v52 = [*&v39[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView] layer];
  [v52 setMasksToBounds:1];

  v53 = *&v39[v51];
  static UIView.Corner.value(_:continuous:)();
  v54 = type metadata accessor for UIView.Corner();
  (*(*(v54 - 8) + 56))(v12, 0, 1, v54);
  UIView.corner.setter();

  v55 = *&v39[v49];
  v168 = v51;
  [v55 addSubview:*&v39[v51]];
  v56 = [v39 traitCollection];
  v57 = [v56 userInterfaceStyle];

  if (v57 == 2)
  {
    v58 = [*&v39[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView] layer];
    objc_opt_self();
    v59 = swift_dynamicCastObjCClassUnconditional();
    if (qword_10117FE10 != -1)
    {
      swift_once();
    }

    sub_10018DC74(qword_101219750);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v59 setFilters:isa];
  }

  v61 = *&v39[v49];
  v165 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView;
  [v61 addSubview:{*&v39[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView], OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView}];
  v62 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label;
  v63 = qword_10117FDA8;
  v64 = *&v39[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label];
  if (v63 != -1)
  {
    swift_once();
  }

  [v64 setFont:qword_101219640];

  [*&v39[v62] setNumberOfLines:0];
  v65 = *&v39[v49];
  *&v169 = v62;
  [v65 addSubview:*&v39[v62]];
  v66 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView;
  [*&v39[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView] setClipsToBounds:1];
  v67 = qword_10117FDE0;
  v68 = *&v39[v66];
  if (v67 != -1)
  {
    swift_once();
  }

  [v68 setBackgroundColor:qword_101219678];

  [*&v39[v49] addSubview:*&v39[v66]];
  v69 = v39;
  v70 = [v69 contentView];
  [v70 addSubview:*&v36[v41]];

  v71 = [v69 contentView];
  [v71 addSubview:*&v39[v49]];

  v72 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer;
  [*&v69[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer] setFillColor:0];
  v73 = *&v69[v72];
  v74 = [v69 traitCollection];
  v166 = v66;
  v75 = v74;

  [v75 displayScale];
  v77 = v76;

  [v73 setLineWidth:1.0 / v77];
  v78 = qword_10117FDB8;
  v79 = *&v69[v72];
  if (v78 != -1)
  {
    swift_once();
  }

  [v79 setStrokeColor:qword_101219650];

  [*&v69[v72] setCompositingFilter:kCAFilterPlusL];
  v80 = [*&v39[v49] layer];
  [v80 addSublayer:*&v69[v72]];

  v167 = objc_opt_self();
  sub_10010FC20(&qword_101183990);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_100EE44F0;
  v82 = [*&v36[v41] leadingAnchor];
  v83 = v41;
  v84 = [*&v39[v49] leadingAnchor];
  v85 = [v82 constraintEqualToAnchor:v84];

  *(v81 + 32) = v85;
  v86 = [*&v36[v83] trailingAnchor];
  v87 = [*&v39[v49] trailingAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];

  *(v81 + 40) = v88;
  v89 = [*&v36[v83] topAnchor];
  v90 = [*&v39[v49] topAnchor];
  v91 = [v89 constraintEqualToAnchor:v90];

  *(v81 + 48) = v91;
  v92 = [*&v36[v83] bottomAnchor];
  v93 = [*&v39[v49] bottomAnchor];
  v94 = [v92 constraintEqualToAnchor:v93];

  *(v81 + 56) = v94;
  v95 = [*&v39[v49] leadingAnchor];
  v96 = [v69 contentView];
  v97 = [v96 leadingAnchor];

  v98 = [v95 constraintEqualToAnchor:v97 constant:32.0];
  *(v81 + 64) = v98;
  v99 = [*&v39[v49] trailingAnchor];
  v100 = [v69 contentView];
  v101 = [v100 trailingAnchor];

  v102 = [v99 constraintEqualToAnchor:v101 constant:-32.0];
  *(v81 + 72) = v102;
  v103 = [*&v39[v49] topAnchor];
  v104 = [v69 contentView];
  v105 = [v104 topAnchor];

  v106 = [v103 constraintEqualToAnchor:v105 constant:4.0];
  *(v81 + 80) = v106;
  v107 = [*&v39[v49] bottomAnchor];
  v108 = [v69 contentView];

  v109 = [v108 bottomAnchor];
  v110 = [v107 constraintEqualToAnchor:v109 constant:-4.0];

  *(v81 + 88) = v110;
  v111 = v165;
  v112 = [*&v39[v165] leadingAnchor];
  v113 = [*&v39[v49] leadingAnchor];
  v114 = [v112 constraintEqualToAnchor:v113];

  *(v81 + 96) = v114;
  v115 = [*&v39[v111] trailingAnchor];
  v116 = [*&v39[v49] trailingAnchor];
  v117 = [v115 constraintEqualToAnchor:v116];

  *(v81 + 104) = v117;
  v118 = [*&v39[v111] topAnchor];
  v119 = [*&v39[v49] topAnchor];
  v120 = [v118 constraintEqualToAnchor:v119];

  *(v81 + 112) = v120;
  v121 = [*&v39[v111] bottomAnchor];
  v122 = [*&v39[v49] bottomAnchor];
  v123 = [v121 constraintEqualToAnchor:v122];

  *(v81 + 120) = v123;
  v124 = v168;
  v125 = [*&v39[v168] leadingAnchor];
  v126 = [*&v39[v49] leadingAnchor];
  v127 = [v125 constraintEqualToAnchor:v126];

  *(v81 + 128) = v127;
  v128 = [*&v39[v124] trailingAnchor];
  v129 = [*&v39[v49] trailingAnchor];
  v130 = [v128 constraintEqualToAnchor:v129];

  *(v81 + 136) = v130;
  v131 = [*&v39[v124] topAnchor];
  v132 = [*&v39[v49] topAnchor];
  v133 = [v131 constraintEqualToAnchor:v132];

  *(v81 + 144) = v133;
  v134 = [*&v39[v124] bottomAnchor];
  v135 = [*&v39[v49] bottomAnchor];
  v136 = [v134 constraintEqualToAnchor:v135];

  *(v81 + 152) = v136;
  v137 = v166;
  v138 = [*&v39[v166] leadingAnchor];
  v139 = [*&v39[v49] leadingAnchor];
  v140 = [v138 constraintEqualToAnchor:v139];

  *(v81 + 160) = v140;
  v141 = [*&v39[v137] trailingAnchor];
  v142 = [*&v39[v49] trailingAnchor];
  v143 = [v141 constraintEqualToAnchor:v142];

  *(v81 + 168) = v143;
  v144 = [*&v39[v137] topAnchor];
  v145 = [*&v39[v49] topAnchor];
  v146 = [v144 constraintEqualToAnchor:v145];

  *(v81 + 176) = v146;
  v147 = [*&v39[v137] bottomAnchor];
  v148 = [*&v39[v49] bottomAnchor];
  v149 = [v147 constraintEqualToAnchor:v148];

  *(v81 + 184) = v149;
  v150 = v169;
  v151 = [*&v39[v169] leadingAnchor];
  v152 = [*&v39[v49] leadingAnchor];
  v153 = [v151 constraintEqualToAnchor:v152 constant:16.0];

  *(v81 + 192) = v153;
  v154 = [*&v39[v150] trailingAnchor];
  v155 = [*&v39[v49] trailingAnchor];
  v156 = [v154 constraintEqualToAnchor:v155 constant:-16.0];

  *(v81 + 200) = v156;
  v157 = [*&v39[v150] topAnchor];
  v158 = [*&v39[v49] topAnchor];
  v159 = [v157 constraintEqualToAnchor:v158 constant:12.0];

  *(v81 + 208) = v159;
  v160 = [*&v39[v150] bottomAnchor];
  v161 = [*&v39[v49] bottomAnchor];
  v162 = [v160 constraintEqualToAnchor:v161 constant:-12.0];

  *(v81 + 216) = v162;
  sub_100009F78(0, &qword_1011838A0);
  v163 = Array._bridgeToObjectiveC()().super.isa;

  [v167 activateConstraints:v163];

  return v69;
}

id sub_1007F3124()
{
  v8.receiver = v0;
  v8.super_class = _s8LineCellCMa();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
  [*&v0[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView] frame];
  v2 = &v0[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousContainerViewFrame];
  result = CGRectEqualToRect(v9, *&v0[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousContainerViewFrame]);
  if ((result & 1) == 0)
  {
    sub_1007F3A40();
    result = [*&v0[v1] frame];
    *v2 = v4;
    *(v2 + 1) = v5;
    *(v2 + 2) = v6;
    *(v2 + 3) = v7;
  }

  return result;
}

void sub_1007F31FC()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    if (qword_10117FE00 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_101219700;
  }

  else
  {
    if (qword_10117FDF0 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1012196B0;
  }

  v41 = *(v4 + 8);
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  v43 = *v4;
  v44 = v43;
  v45 = v41;
  v46 = v5;
  v47 = v6;
  v7 = [v1 traitCollection];
  v8 = [v7 accessibilityContrast];

  v9 = v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state];
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v19 = qword_10117FDC0;
      v20 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label];
      if (v19 != -1)
      {
        swift_once();
      }

      [v20 setTextColor:{qword_101219658, v41}];

      v21 = qword_10117FDD0;
      v22 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView];
      if (v21 != -1)
      {
        swift_once();
      }

      [v22 setBackgroundColor:qword_101219668];

      v23 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView];
      v24 = v43;
      v25 = &v44;
    }

    else
    {
      if (v9 == 3)
      {
        v10 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView];
        v11 = v43;
        v12 = v10;
        UIView.shadow.setter(&v44);

        v13 = 1;
        v14 = 1.0;
        goto LABEL_39;
      }

      v26 = qword_10117FDC8;
      v27 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label];
      if (v26 != -1)
      {
        swift_once();
      }

      [v27 setTextColor:{qword_101219660, v41}];

      v28 = qword_10117FDD8;
      v29 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView];
      if (v28 != -1)
      {
        swift_once();
      }

      [v29 setBackgroundColor:qword_101219670];

      v23 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView];
      v30 = UIView.Shadow.identity.unsafeMutableAddressor();
      v31 = *(v30 + 1);
      *v48 = *v30;
      *&v48[16] = v31;
      v49 = v30[4];
      v32 = *v48;
      v25 = v48;
    }

    UIView.shadow.setter(v25);

    v14 = 0.0;
    [*&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView] setAlpha:0.0];
    v13 = 1;
    goto LABEL_39;
  }

  if (!v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state])
  {
    goto LABEL_40;
  }

  v15 = qword_10117FDB0;
  v16 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label];
  if (v15 != -1)
  {
    swift_once();
  }

  [v16 setTextColor:{qword_101219648, v41}];

  v17 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView];
  if (v8 == 1)
  {
    v18 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  else
  {
    v18 = 0;
  }

  [v17 setBackgroundColor:v18];

  v33 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView];
  v34 = [v1 traitCollection];
  v35 = [v34 userInterfaceStyle];

  if (v35 == 2)
  {
    if (qword_10117FE08 != -1)
    {
      swift_once();
    }

    v36 = &xmmword_101219728;
  }

  else
  {
    if (qword_10117FDF8 != -1)
    {
      swift_once();
    }

    v36 = &xmmword_1012196D8;
  }

  v42 = *(v36 + 8);
  v37 = *(v36 + 3);
  v38 = *(v36 + 4);
  *v48 = *v36;
  *&v48[8] = v42;
  *&v48[24] = v37;
  v49 = v38;
  UIView.shadow.setter(v48);

  v39 = 1.0;
  v14 = 0.0;
  if (v8 == 1)
  {
    v39 = 0.0;
  }

  [*&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView] setAlpha:{v39, v42}];
  v13 = 0;
LABEL_39:
  [*&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView] setAlpha:{v14, v41}];
  v40 = *&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer];
  [v40 setHidden:v13];

LABEL_40:
}

void sub_1007F37B8(id a1)
{
  v14.receiver = v1;
  v14.super_class = _s8LineCellCMa();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (a1)
  {
    v6 = v3 == v5;
    a1 = [a1 accessibilityContrast];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v1 traitCollection];
  v8 = [v7 accessibilityContrast];

  if (!v6 || a1 != v8)
  {
    sub_1007F31FC();
    v9 = [v1 traitCollection];
    v10 = [v9 userInterfaceStyle];

    v11 = [*&v1[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView] layer];
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    if (v10 == 2)
    {
      if (qword_10117FE10 != -1)
      {
        swift_once();
      }

      sub_10018DC74(qword_101219750);
      v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v12 setFilters:v13.super.isa];
  }
}

void sub_1007F3A40()
{
  v1 = v0;
  v2 = type metadata accessor for UIView.Corner.Radius();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101183A90);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v57 - v8;
  v10 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView);
  v11 = (v3 + 104);
  if (*(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position) != 2)
    {
      *v5 = 0x4030000000000000;
      v5[8] = 1;
      v58 = enum case for UIView.Corner.Radius.value(_:);
      v60 = *v11;
      v60(v5, v7);
      v41 = v10;
      UIView.Corner.init(radius:mask:)();
      v42 = type metadata accessor for UIView.Corner();
      v43 = *(*(v42 - 8) + 56);
      v43(v9, 0, 1, v42);
      UIView.corner.setter();

      v59 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
      v44 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView);
      *v5 = 0x4020000000000000;
      v5[8] = 1;
      v45 = v2;
      v46 = v58;
      (v60)(v5, v58, v45);
      v47 = v44;
      UIView.Corner.init(radius:mask:)();
      v43(v9, 0, 1, v42);
      UIView.corner.setter();

      v48 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView);
      *v5 = 0x4030000000000000;
      v5[8] = 1;
      (v60)(v5, v46, v45);
      v49 = v48;
      UIView.Corner.init(radius:mask:)();
      v43(v9, 0, 1, v42);
      UIView.corner.setter();

      [*(v59 + v1) bounds];
      v22 = 8.0;
      goto LABEL_8;
    }

    *v5 = 0x4020000000000000;
    v5[8] = 1;
    v58 = enum case for UIView.Corner.Radius.value(_:);
    v60 = *v11;
    v60(v5, v7);
    v23 = v10;
    UIView.Corner.init(radius:mask:)();
    v24 = type metadata accessor for UIView.Corner();
    v25 = *(*(v24 - 8) + 56);
    v25(v9, 0, 1, v24);
    UIView.corner.setter();

    v59 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
    v26 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView);
    *v5 = 0x4020000000000000;
    v5[8] = 1;
    v27 = v58;
    (v60)(v5, v58, v2);
    v28 = v26;
    UIView.Corner.init(radius:mask:)();
    v25(v9, 0, 1, v24);
    UIView.corner.setter();

    v29 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView);
    *v5 = 0x4020000000000000;
    v5[8] = 1;
    (v60)(v5, v27, v2);
    v30 = v29;
    UIView.Corner.init(radius:mask:)();
    v25(v9, 0, 1, v24);
    UIView.corner.setter();

    [*(v59 + v1) bounds];
    v22 = 8.0;
    v31 = 8.0;
  }

  else
  {
    if (!*(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position))
    {
      *v5 = 0x4030000000000000;
      v5[8] = 1;
      LODWORD(v60) = enum case for UIView.Corner.Radius.value(_:);
      v59 = *v11;
      v59(v5, v7);
      v12 = v10;
      UIView.Corner.init(radius:mask:)();
      v13 = type metadata accessor for UIView.Corner();
      v14 = *(*(v13 - 8) + 56);
      v14(v9, 0, 1, v13);
      UIView.corner.setter();

      v15 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
      v16 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView);
      *v5 = 0x4030000000000000;
      v5[8] = 1;
      (v59)(v5, v60, v2);
      v17 = v16;
      static CACornerMask.all.getter();
      UIView.Corner.init(radius:mask:)();
      v14(v9, 0, 1, v13);
      UIView.corner.setter();

      [*(v1 + v15) bounds];
      v22 = 16.0;
LABEL_8:
      v31 = 16.0;
      goto LABEL_9;
    }

    *v5 = 0x4020000000000000;
    v5[8] = 1;
    v58 = enum case for UIView.Corner.Radius.value(_:);
    v60 = *v11;
    v57 = v2;
    v60(v5, v7);
    v32 = v10;
    UIView.Corner.init(radius:mask:)();
    v33 = type metadata accessor for UIView.Corner();
    v34 = *(*(v33 - 8) + 56);
    v34(v9, 0, 1, v33);
    UIView.corner.setter();

    v59 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
    v35 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView);
    *v5 = 0x4030000000000000;
    v5[8] = 1;
    v36 = v58;
    v37 = v57;
    (v60)(v5, v58, v57);
    v38 = v35;
    UIView.Corner.init(radius:mask:)();
    v34(v9, 0, 1, v33);
    UIView.corner.setter();

    v39 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView);
    *v5 = 0x4020000000000000;
    v5[8] = 1;
    (v60)(v5, v36, v37);
    v40 = v39;
    UIView.Corner.init(radius:mask:)();
    v34(v9, 0, 1, v33);
    UIView.corner.setter();

    [*(v59 + v1) bounds];
    v22 = 16.0;
    v31 = 8.0;
  }

LABEL_9:
  v50 = sub_1007F4900(v18, v19, v20, v21, v22, v31);
  v51 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer;
  v52 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer);
  v53 = *(v1 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView);
  v54 = v50;
  v55 = v52;
  [v53 bounds];
  [v55 setFrame:?];

  v56 = *(v1 + v51);
  [v56 setPath:v54];
}

id sub_1007F4410()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  if (*(v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) == 4)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = _s8LineCellCMa();
    result = objc_msgSendSuper2(&v6, "accessibilityHint");
    if (result)
    {
      v4 = result;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }
  }

  return result;
}

void sub_1007F457C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = _s8LineCellCMa();
  objc_msgSendSuper2(&v9, *a4, v7);
}

UIAccessibilityTraits sub_1007F4640()
{
  v7.receiver = v0;
  v7.super_class = _s8LineCellCMa();
  v1 = objc_msgSendSuper2(&v7, "accessibilityTraits");
  v2 = UIAccessibilityTraitButton;
  if ((UIAccessibilityTraitButton & ~v1) == 0)
  {
    v2 = 0;
  }

  result = v2 | v1;
  v4 = v0[OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state];
  if (v4 == 4)
  {
    v5 = &UIAccessibilityTraitNotEnabled;
  }

  else
  {
    if (v4 != 1)
    {
      return result;
    }

    v5 = &UIAccessibilityTraitSelected;
  }

  v6 = *v5;
  if ((v6 & ~result) == 0)
  {
    v6 = 0;
  }

  result |= v6;
  return result;
}

id sub_1007F46D8(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = _s8LineCellCMa();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_1007F4728()
{
  v2.receiver = v0;
  v2.super_class = _s8LineCellCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1007F4854()
{
  result = qword_1011A41E8;
  if (!qword_1011A41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A41E8);
  }

  return result;
}

unint64_t sub_1007F48AC()
{
  result = qword_1011A41F0;
  if (!qword_1011A41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A41F0);
  }

  return result;
}

id sub_1007F4900(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  MinX = CGRectGetMinX(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v18 = CGRectGetMinY(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  v21 = CGRectGetMaxX(v26);
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  MaxY = CGRectGetMaxY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v22 = CGRectGetMinX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v14 = CGRectGetMaxY(v29);
  v15 = [objc_allocWithZone(UIBezierPath) init];
  [v15 moveToPoint:{MinX, MinY + a5}];
  [v15 _addRoundedCornerWithTrueCorner:1 radius:0 corner:MinX clockwise:{MinY, a5, a5}];
  [v15 addLineToPoint:{MaxX - a5, v18}];
  [v15 _addRoundedCornerWithTrueCorner:2 radius:0 corner:MaxX clockwise:{v18, a5, a5}];
  [v15 addLineToPoint:{v21, MaxY - a6}];
  [v15 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v21 clockwise:{MaxY, a6, a6}];
  [v15 addLineToPoint:{v22 + a6, v14}];
  [v15 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v22 clockwise:{v14, a6, a6}];
  [v15 closePath];
  v16 = [v15 CGPath];

  return v16;
}

void sub_1007F4B60()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_text);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_textAlignment) = 4;
  *(v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position) = 0;
  *(v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousState) = 5;
  *(v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) = 0;
  v3 = (v0 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_previousContainerViewFrame);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_shadowView;
  v5 = [objc_allocWithZone(UIView) init];
  v6 = UIView.forAutolayout.getter();

  *(v1 + v4) = v6;
  v7 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView;
  v8 = [objc_allocWithZone(UIView) init];
  v9 = UIView.forAutolayout.getter();

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backgroundColorView;
  v11 = [objc_allocWithZone(UIView) init];
  v12 = UIView.forAutolayout.getter();

  *(v1 + v10) = v12;
  v13 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_backdropView;
  v14 = objc_allocWithZone(type metadata accessor for BackdropView());
  v15 = sub_100453A34();
  v16 = UIView.forAutolayout.getter();

  *(v1 + v13) = v16;
  v17 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label;
  v18 = [objc_allocWithZone(UILabel) init];
  v19 = UIView.forAutolayout.getter();

  *(v1 + v17) = v19;
  v20 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_highlightOverlayView;
  v21 = [objc_allocWithZone(UILabel) init];
  v22 = UIView.forAutolayout.getter();

  *(v1 + v20) = v22;
  v23 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_borderLayer;
  *(v1 + v23) = [objc_allocWithZone(CAShapeLayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007F4DC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of PlaylistFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1007F4E08(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = type metadata accessor for IndexPath();
  __chkstk_darwin(v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = _swiftEmptyArrayStorage;
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10066CB48(0, v23[2] + 1, 1);
          v23 = v39;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_10066CB48(v25 > 1, v26 + 1, 1);
          v23 = v39;
        }

        v23[2] = v26 + 1;
        v36 = v23;
        v22(v23 + v13 + v26 * v14, v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
LABEL_14:
  }
}

id sub_1007F5184(void (*a1)(char *, uint64_t, uint64_t), void *a2, uint64_t a3)
{
  v115 = a3;
  v120 = a2;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v117 = v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v116 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  v112 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v113 = v9;
  v114 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v107 - v15;
  v111 = sub_100009F78(0, &unk_1011A49E0);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v17 = qword_101218AC8;
  type metadata accessor for MusicVideo();
  sub_100866F00(&unk_101193C00, &type metadata accessor for MusicVideo);
  v121 = v17;
  v18 = *Player.state<A>(for:)(a1);
  (*(v18 + 256))();

  v19 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:);
  v20 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v21 = *(v20 - 8);
  v119 = *(v21 + 104);
  v118 = (v21 + 104);
  v119(v13, v19, v20);
  v22 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  v23 = *(v11 + 104);
  v23(v13, enum case for MusicPlayer.PlayabilityStatus.unplayable(_:), v10);
  sub_100866F00(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v11 + 8);
  v25 = (v11 + 8);
  v122 = v26;
  v26(v13, v10);
  if (v24 & 1) != 0 || (v119(v13, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.accountRequired(_:), v20), v23(v13, v22, v10), v27 = dispatch thunk of static Equatable.== infix(_:_:)(), v28 = (v122)(v13, v10), (v27))
  {
    v122(v16, v10);
    return 0;
  }

  else
  {
    v108 = v16;
    v119 = v10;
    v133 = _swiftEmptyArrayStorage;
    v30 = v120;
    v31 = PlaybackIntentDescriptor.intent.getter(v28);
    v32 = Player.InsertCommand.init(location:playbackIntent:)(2, v31);
    v34 = v33;
    v131 = &type metadata for Player.InsertCommand;
    v132 = &protocol witness table for Player.InsertCommand;
    v129 = v32;
    v130 = v33;
    v35 = (*v121 + 760);
    v36 = *v35;
    v37 = v32;
    sub_1001DFD48(v34);
    v118 = v36;
    v38 = v36(&v129);
    v39 = sub_10000959C(&v129);
    v107[1] = v35;
    if (v38)
    {
      v40 = v114;
      sub_10086772C(v30, v114, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v115, &v129);
      v41 = (*(v112 + 80) + 24) & ~*(v112 + 80);
      v42 = (v113 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = swift_allocObject();
      *(v43 + 16) = v111;
      sub_100869470(v40, v43 + v41, type metadata accessor for PlaybackIntentDescriptor);
      v44 = (v43 + v42);
      *v44 = v37;
      v44[1] = v34;
      sub_10012B828(&v129, v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8));
      v127 = sub_10086E320;
      v128 = v43;
      aBlock = _NSConcreteStackBlock;
      v124 = 1107296256;
      v125 = sub_1001D72A4;
      v126 = &unk_1010C2F68;
      v45 = _Block_copy(&aBlock);
      v46 = objc_opt_self();
      v47 = v37;
      sub_1001DFD48(v34);
      v48 = [v46 contextualActionWithStyle:0 title:0 handler:v45];
      _Block_release(v45);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v49 = qword_101183DF8;
      v50 = String._bridgeToObjectiveC()();
      v51 = [objc_opt_self() systemImageNamed:v50 withConfiguration:v49];

      [v48 setImage:v51];
      v52 = [objc_opt_self() systemOrangeColor];
      [v48 setBackgroundColor:v52];

      v53 = v48;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v54 = String._bridgeToObjectiveC()();

      [v53 setAccessibilityLabel:v54];

      v55 = v53;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v30 = v120;
    }

    v56 = PlaybackIntentDescriptor.intent.getter(v39);
    v57 = Player.InsertCommand.init(location:playbackIntent:)(0, v56);
    v59 = v58;
    v131 = &type metadata for Player.InsertCommand;
    v132 = &protocol witness table for Player.InsertCommand;
    v129 = v57;
    v130 = v58;
    v109 = v57;
    v110 = v59;
    sub_1001DFD48(v59);
    LOBYTE(v59) = v118(&v129);
    v60 = sub_10000959C(&v129);
    v61 = v119;
    if (v59)
    {
      v62 = v114;
      sub_10086772C(v30, v114, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v115, &v129);
      v63 = (*(v112 + 80) + 24) & ~*(v112 + 80);
      v64 = (v113 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      *(v65 + 16) = v111;
      sub_100869470(v62, v65 + v63, type metadata accessor for PlaybackIntentDescriptor);
      v66 = (v65 + v64);
      v67 = v109;
      v68 = v110;
      *v66 = v109;
      v66[1] = v68;
      sub_10012B828(&v129, v65 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8));
      v127 = sub_10086E31C;
      v128 = v65;
      aBlock = _NSConcreteStackBlock;
      v124 = 1107296256;
      v125 = sub_1001D72A4;
      v126 = &unk_1010C2F18;
      v69 = _Block_copy(&aBlock);
      v70 = objc_opt_self();
      v71 = v67;
      sub_1001DFD48(v68);
      v72 = [v70 contextualActionWithStyle:0 title:0 handler:v69];
      _Block_release(v69);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v73 = qword_101183DF8;
      v74 = String._bridgeToObjectiveC()();
      v75 = [objc_opt_self() systemImageNamed:v74 withConfiguration:v73];

      [v72 setImage:v75];
      v76 = [objc_opt_self() systemIndigoColor];
      [v72 setBackgroundColor:v76];

      v77 = v72;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v78 = String._bridgeToObjectiveC()();

      [v77 setAccessibilityLabel:v78];

      v79 = v77;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v61 = v119;
      v30 = v120;
    }

    v80 = PlaybackIntentDescriptor.intent.getter(v60);
    v81 = Player.InsertCommand.init(location:playbackIntent:)(1, v80);
    v83 = v82;
    v131 = &type metadata for Player.InsertCommand;
    v132 = &protocol witness table for Player.InsertCommand;
    v129 = v81;
    v130 = v82;
    v84 = v81;
    sub_1001DFD48(v83);
    v85 = v118(&v129);
    sub_10000959C(&v129);
    v86 = v122;
    if (v85)
    {
      v121 = v25;
      v120 = v37;
      v87 = v34;
      v88 = v122;
      v89 = v114;
      sub_10086772C(v30, v114, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v115, &v129);
      v90 = (*(v112 + 80) + 24) & ~*(v112 + 80);
      v91 = (v113 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = swift_allocObject();
      *(v92 + 16) = v111;
      sub_100869470(v89, v92 + v90, type metadata accessor for PlaybackIntentDescriptor);
      v93 = (v92 + v91);
      *v93 = v84;
      v93[1] = v83;
      sub_10012B828(&v129, v92 + ((v91 + 23) & 0xFFFFFFFFFFFFFFF8));
      v127 = sub_10086E318;
      v128 = v92;
      aBlock = _NSConcreteStackBlock;
      v124 = 1107296256;
      v125 = sub_1001D72A4;
      v126 = &unk_1010C2EC8;
      v94 = _Block_copy(&aBlock);
      v95 = objc_opt_self();
      v96 = v84;
      sub_1001DFD48(v83);
      v97 = [v95 contextualActionWithStyle:0 title:0 handler:v94];
      _Block_release(v94);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v98 = qword_101183DF8;
      v99 = String._bridgeToObjectiveC()();
      v100 = [objc_opt_self() systemImageNamed:v99 withConfiguration:v98];

      [v97 setImage:v100];
      v101 = [objc_opt_self() systemOrangeColor];
      [v97 setBackgroundColor:v101];

      v102 = v97;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v103 = String._bridgeToObjectiveC()();

      [v102 setAccessibilityLabel:v103];

      v104 = v102;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v61 = v119;
      v86 = v88;
      v34 = v87;
      v37 = v120;
    }

    sub_100009F78(0, &unk_1011A49F0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v106 = [objc_opt_self() configurationWithActions:isa];

    [v106 _setSwipeActionsStyle:1];
    sub_100309AD8(v83);

    sub_100309AD8(v110);
    sub_100309AD8(v34);
    v86(v108, v61);
    return v106;
  }
}

id sub_1007F63C4(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14)
{
  v128 = a8;
  v127 = a7;
  v126 = a6;
  v133 = a3;
  v139 = a2;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v135 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v134 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PlaybackIntentDescriptor(0);
  v130 = *(v20 - 8);
  __chkstk_darwin(v20 - 8);
  v131 = v21;
  v132 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v122 - v27;
  v129 = sub_100009F78(0, &unk_1011A49E0);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v29 = qword_101218AC8;
  a4(0);
  v140 = v29;
  v30 = *Player.state<A>(for:)(a1);
  (*(v30 + 256))();

  v31 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:);
  v32 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v33 = *(v32 - 8);
  v138 = *(v33 + 104);
  v137 = (v33 + 104);
  v138(v25, v31, v32);
  v34 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  v136 = *(v23 + 104);
  v136(v25, enum case for MusicPlayer.PlayabilityStatus.unplayable(_:), v22);
  sub_100866F00(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v23 + 8);
  v36 = (v23 + 8);
  v37 = v38;
  v38(v25, v22);
  if (v35 & 1) != 0 || (v138(v25, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.accountRequired(_:), v32), v136(v25, v34, v22), v39 = dispatch thunk of static Equatable.== infix(_:_:)(), v40 = (v37)(v25, v22), (v39))
  {
    v37(v28, v22);
    return 0;
  }

  else
  {
    v125 = v37;
    v124 = v28;
    v123 = v22;
    v136 = v36;
    v151 = _swiftEmptyArrayStorage;
    v42 = v139;
    v43 = PlaybackIntentDescriptor.intent.getter(v40);
    v44 = Player.InsertCommand.init(location:playbackIntent:)(2, v43);
    v46 = v45;
    v149 = &type metadata for Player.InsertCommand;
    v150 = &protocol witness table for Player.InsertCommand;
    v147 = v44;
    v148 = v45;
    v47 = *(*v140 + 760);
    v48 = v44;
    sub_1001DFD48(v46);
    v49 = v47(&v147);
    v50 = sub_10000959C(&v147);
    if (v49)
    {
      v51 = v42;
      v52 = v132;
      sub_10086772C(v51, v132, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v133, &v147);
      v53 = (*(v130 + 80) + 24) & ~*(v130 + 80);
      v54 = (v131 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      *(v55 + 16) = v129;
      sub_100869470(v52, v55 + v53, type metadata accessor for PlaybackIntentDescriptor);
      v56 = (v55 + v54);
      *v56 = v48;
      v56[1] = v46;
      sub_10012B828(&v147, v55 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8));
      v145 = v127;
      v146 = v55;
      aBlock = _NSConcreteStackBlock;
      v142 = 1107296256;
      v143 = sub_1001D72A4;
      v144 = v128;
      v57 = _Block_copy(&aBlock);
      v58 = objc_opt_self();
      v59 = v48;
      sub_1001DFD48(v46);
      v60 = [v58 contextualActionWithStyle:0 title:0 handler:v57];
      _Block_release(v57);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v61 = qword_101183DF8;
      v62 = String._bridgeToObjectiveC()();
      v63 = [objc_opt_self() systemImageNamed:v62 withConfiguration:v61];

      [v60 setImage:v63];
      v64 = [objc_opt_self() systemOrangeColor];
      [v60 setBackgroundColor:v64];

      v65 = v60;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v66 = String._bridgeToObjectiveC()();

      [v65 setAccessibilityLabel:v66];

      v67 = v65;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v42 = v139;
    }

    v128 = v48;
    v68 = PlaybackIntentDescriptor.intent.getter(v50);
    v69 = Player.InsertCommand.init(location:playbackIntent:)(0, v68);
    v71 = v70;
    v149 = &type metadata for Player.InsertCommand;
    v150 = &protocol witness table for Player.InsertCommand;
    v147 = v69;
    v148 = v70;
    v137 = v69;
    v138 = v71;
    sub_1001DFD48(v71);
    v72 = v47(&v147);
    v73 = sub_10000959C(&v147);
    if (v72)
    {
      v74 = v46;
      v75 = v42;
      v76 = v132;
      sub_10086772C(v75, v132, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v133, &v147);
      v77 = (*(v130 + 80) + 24) & ~*(v130 + 80);
      v78 = (v131 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v79 = (v78 + 23) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      *(v80 + 16) = v129;
      sub_100869470(v76, v80 + v77, type metadata accessor for PlaybackIntentDescriptor);
      v81 = (v80 + v78);
      v82 = v137;
      v83 = v138;
      *v81 = v137;
      v81[1] = v83;
      sub_10012B828(&v147, v80 + v79);
      v145 = a10;
      v146 = v80;
      aBlock = _NSConcreteStackBlock;
      v142 = 1107296256;
      v143 = sub_1001D72A4;
      v144 = a11;
      v84 = _Block_copy(&aBlock);
      v85 = objc_opt_self();
      v86 = v82;
      sub_1001DFD48(v83);
      v87 = [v85 contextualActionWithStyle:0 title:0 handler:v84];
      _Block_release(v84);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v88 = qword_101183DF8;
      v89 = String._bridgeToObjectiveC()();
      v90 = [objc_opt_self() systemImageNamed:v89 withConfiguration:v88];

      [v87 setImage:v90];
      v91 = [objc_opt_self() systemIndigoColor];
      [v87 setBackgroundColor:v91];

      v92 = v87;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v93 = String._bridgeToObjectiveC()();

      [v92 setAccessibilityLabel:v93];

      v94 = v92;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v46 = v74;
      v42 = v139;
    }

    v95 = PlaybackIntentDescriptor.intent.getter(v73);
    v96 = Player.InsertCommand.init(location:playbackIntent:)(1, v95);
    v97 = v42;
    v99 = v98;
    v149 = &type metadata for Player.InsertCommand;
    v150 = &protocol witness table for Player.InsertCommand;
    v147 = v96;
    v148 = v98;
    v100 = v96;
    sub_1001DFD48(v99);
    v101 = v47(&v147);
    sub_10000959C(&v147);
    v102 = v123;
    v103 = v125;
    if (v101)
    {
      v140 = v46;
      v104 = v132;
      sub_10086772C(v97, v132, type metadata accessor for PlaybackIntentDescriptor);
      sub_10012B7A8(v133, &v147);
      v105 = (*(v130 + 80) + 24) & ~*(v130 + 80);
      v106 = (v131 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
      v107 = swift_allocObject();
      *(v107 + 16) = v129;
      sub_100869470(v104, v107 + v105, type metadata accessor for PlaybackIntentDescriptor);
      v108 = (v107 + v106);
      *v108 = v100;
      v108[1] = v99;
      sub_10012B828(&v147, v107 + ((v106 + 23) & 0xFFFFFFFFFFFFFFF8));
      v145 = a13;
      v146 = v107;
      aBlock = _NSConcreteStackBlock;
      v142 = 1107296256;
      v143 = sub_1001D72A4;
      v144 = a14;
      v109 = _Block_copy(&aBlock);
      v110 = objc_opt_self();
      v111 = v100;
      sub_1001DFD48(v99);
      v112 = [v110 contextualActionWithStyle:0 title:0 handler:v109];
      _Block_release(v109);

      if (qword_10117F320 != -1)
      {
        swift_once();
      }

      v113 = qword_101183DF8;
      v114 = String._bridgeToObjectiveC()();
      v115 = [objc_opt_self() systemImageNamed:v114 withConfiguration:v113];

      [v112 setImage:v115];
      v116 = [objc_opt_self() systemOrangeColor];
      [v112 setBackgroundColor:v116];

      v117 = v112;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v118 = String._bridgeToObjectiveC()();

      [v117 setAccessibilityLabel:v118];

      v119 = v117;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v46 = v140;
      v103 = v125;
    }

    sub_100009F78(0, &unk_1011A49F0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v121 = [objc_opt_self() configurationWithActions:isa];

    [v121 _setSwipeActionsStyle:1];
    sub_100309AD8(v99);

    sub_100309AD8(v138);
    sub_100309AD8(v46);
    v103(v124, v102);
    return v121;
  }
}

uint64_t sub_1007F74DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_101184730);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_101184730);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184750);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184750);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_101184730);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007F7A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_101184730);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_101184730);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_101184730);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007F7F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for MusicVideo();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_1011846B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_1011846B0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184750);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184750);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_1011846B0);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007F8490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for MusicVideo();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_1011846B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_1011846B0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_1011846B0);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007F89CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Track();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &qword_10118A530);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &qword_10118A530);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &qword_10118A530);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007F8F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_10118C4F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Composer();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_10118C4F0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_10118C4F0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_10118C4F0);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007F9444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Playlist();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_1011814D0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_1011814D0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184750);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184750);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_1011814D0);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007F9980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Playlist.Folder();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_10118F670);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_10118F670);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184750);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184750);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_10118F670);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007F9EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Playlist();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_1011814D0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_1011814D0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_1011814D0);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007FA3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Playlist.Folder();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_10118F670);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_10118F670);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_10118F670);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007FA934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_10118DE80);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Genre();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &qword_10118DE80);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &qword_10118DE80);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &qword_10118DE80);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007FAEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v24 = a3;
    type metadata accessor for BannerCell();
    type metadata accessor for BannerProvider.Banner();

    v10 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    v23[1] = v3;
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_10118E548);
    (*(v7 + 16))(v9, a2, v6);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v7 + 8))(v9, v6);
      v19 = sub_1000105AC(v16, v18, &v24);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v14, 0xCu);
      sub_10000959C(v15);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    type metadata accessor for BannerCell();
    v24 = static UICollectionReusableView.reuseIdentifier.getter();
    v25 = v20;
    v21._object = 0x8000000100E58BF0;
    v21._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v21);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v10 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  return v10;
}

uint64_t sub_1007FB20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101192800);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_101192800);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_101192800);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    _s13TracklistCellCMa();
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    sub_100869470(v13, v17, type metadata accessor for AlbumDetailDataSource.CellType);
    sub_10086772C(v17, v10, type metadata accessor for AlbumDetailDataSource.CellType);
    (*(v15 + 56))(v10, 0, 1, v14);
    _s13TracklistCellCMa();
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_101192800);
    sub_100867794(v17, type metadata accessor for AlbumDetailDataSource.CellType);
  }

  return v29;
}

uint64_t sub_1007FB728(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEF8)
  {
    v27 = v5;
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_10118E548);
    (*(v11 + 16))(v13, a2, v10);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v11 + 8))(v13, v10);
      v22 = sub_1000105AC(v19, v21, &v28);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v17, 0xCu);
      sub_10000959C(v18);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v28 = static UICollectionReusableView.reuseIdentifier.getter();
    v29 = v24;
    v25._object = 0x8000000100E58BF0;
    v25._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v25);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v23 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    v28 = a3;
    v29 = a4;
    v30 = a5;
    sub_1004EA174(a3);
    sub_100009F78(0, &unk_101184790);
    v23 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1004E5B40(a3);
  }

  return v23;
}

uint64_t sub_1007FBAE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v26 = a3;
    sub_100009F78(0, &unk_101184750);
    a4(0);

    v12 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    v25[1] = v4;
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_10118E548);
    (*(v9 + 16))(v11, a2, v8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v9 + 8))(v11, v8);
      v21 = sub_1000105AC(v18, v20, &v26);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v16, 0xCu);
      sub_10000959C(v17);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184750);
    v26 = static UICollectionReusableView.reuseIdentifier.getter();
    v27 = v22;
    v23._object = 0x8000000100E58BF0;
    v23._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v23);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v12 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  return v12;
}

uint64_t sub_1007FBE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Song();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_101183960);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_101183960);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_101183960);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007FC3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for LibraryImport.ViewModel(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_1011A4B90);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_1011A4B90);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184750);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    sub_100869470(v13, v17, type metadata accessor for LibraryImport.ViewModel);
    sub_10086772C(v17, v10, type metadata accessor for LibraryImport.ViewModel);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184750);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_1011A4B90);
    sub_100867794(v17, type metadata accessor for LibraryImport.ViewModel);
  }

  return v29;
}

uint64_t sub_1007FC938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(void, __n128), void (*a7)(void))
{
  v45 = a7;
  v42[1] = a1;
  v11 = type metadata accessor for IndexPath();
  v43 = *(v11 - 8);
  v44 = v11;
  __chkstk_darwin(v11);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(a4);
  __chkstk_darwin(v14 - 8);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v42 - v19;
  v21 = a6(0, v18);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v42 - v23;
  sub_1000089F8(a3, v20, a4);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v25 = v45;
    sub_1000095E8(v20, a4);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000060E4(v26, qword_10118E548);
    v27 = v43;
    v28 = v44;
    (*(v43 + 16))(v13, a2, v44);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46 = v32;
      *v31 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v28;
      v36 = v35;
      (*(v27 + 8))(v13, v34);
      v37 = sub_1000105AC(v33, v36, &v46);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v31, 0xCu);
      sub_10000959C(v32);
    }

    else
    {

      (*(v27 + 8))(v13, v28);
    }

    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v25(0);
    v46 = static UICollectionReusableView.reuseIdentifier.getter();
    v47 = v39;
    v40._object = 0x8000000100E58BF0;
    v40._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v40);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v38 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    (*(v22 + 16))(v16, v24, v21);
    (*(v22 + 56))(v16, 0, 1, v21);
    v45(0);
    v38 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v16, a4);
    (*(v22 + 8))(v24, v21);
  }

  return v38;
}

uint64_t sub_1007FCE50(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = a3;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 == 13)
  {
    v24[1] = v3;
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_10118E548);
    (*(v8 + 16))(v10, a2, v7);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v8 + 8))(v10, v7);
      v19 = sub_1000105AC(v16, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v14, 0xCu);
      sub_10000959C(v15);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v25 = static UICollectionReusableView.reuseIdentifier.getter();
    v26 = v21;
    v22._object = 0x8000000100E58BF0;
    v22._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v22);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v23 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

    return v23;
  }

  else
  {
    LOBYTE(v25) = a3;
    sub_100009F78(0, &unk_101184790);
    return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }
}

uint64_t sub_1007FD1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for RecentlyAddedMusicItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_101197040);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_101197040);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184750);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184750);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_101197040);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007FD6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011996D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for TVEpisode();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_1011996D0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_1011996D0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_1011996D0);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007FDC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Artist();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_101184930);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_101184930);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_101184930);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007FE16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011A38A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for TVShow();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_1011A38A0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_1011A38A0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184750);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184750);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_1011A38A0);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007FE6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011803F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for MusicMovie();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_1011803F0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_1011803F0);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_1011803F0);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007FEBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for RecentlyAddedMusicItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a3, v13, &unk_101197040);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_101197040);
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_10118E548);
    v20 = v34;
    v19 = v35;
    (*(v34 + 16))(v7, a2, v35);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v20 + 8))(v7, v19);
      v28 = sub_1000105AC(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      (*(v20 + 8))(v7, v19);
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v36 = static UICollectionReusableView.reuseIdentifier.getter();
    v37 = v30;
    v31._object = 0x8000000100E58BF0;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v29 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_100009F78(0, &unk_101184790);
    v29 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v10, &unk_101197040);
    (*(v15 + 8))(v17, v14);
  }

  return v29;
}

uint64_t sub_1007FF120(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v25 = a3;
    sub_100009F78(0, &unk_101184790);
    type metadata accessor for ContainerDetail.ViewController(0);
    v10 = a3;
    v11 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    v24[1] = v3;
    if (qword_10117F6A8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_10118E548);
    (*(v7 + 16))(v9, a2, v6);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v7 + 8))(v9, v6);
      v20 = sub_1000105AC(v17, v19, &v25);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing item when attempting to dequeue a configured reusable cell for index=%{public}s", v15, 0xCu);
      sub_10000959C(v16);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    sub_100009F78(0, &unk_101184790);
    v25 = static UICollectionReusableView.reuseIdentifier.getter();
    v26 = v21;
    v22._object = 0x8000000100E58BF0;
    v22._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v22);
    UICollectionView.register<A>(_:reuseIdentifier:)();
    v11 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  return v11;
}

uint64_t sub_1007FF4C0(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v2 - 8);
  sub_1000089F8(a1, &v5 - v3, &unk_101184290);
  return EnvironmentValues.horizontalSizeClass.setter();
}

void *sub_1007FF568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Album();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Track();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v9 + 16);
  v26 = a1;
  v25(v11, a1, v8);
  v12 = *(v5 + 16);
  v27 = a2;
  v24 = v12;
  v12(v7, a2, v4);
  v30 = dispatch thunk of MusicItem.id.getter();
  v14 = v13;
  v29 = dispatch thunk of MusicItem.id.getter();
  v31 = v15;
  (*(v5 + 8))(v7, v4);
  v16 = v14;
  v17 = v28;
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v18 = *(v17 + 48);
  if (*(v18 + 16) && (v19 = sub_1006BE598(v30, v16, v29, v31), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v25(v11, v26, v8);
    v24(v7, v27, v4);
    type metadata accessor for WaveformPlayer.ListenerToken();
    swift_allocObject();
    v21 = sub_1007FFBF8(v11, v7);
    sub_10027317C(v21);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v17 + 48);
    *(v17 + 48) = 0x8000000000000000;
    sub_1006C5CBC(v21, v30, v16, v29, v31, isUniquelyReferenced_nonNull_native);

    *(v17 + 48) = v32;
    swift_endAccess();
    sub_1002732FC();
  }

  return v21;
}

void *sub_1007FF8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Entry();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v9 + 16);
  v26 = a1;
  v25(v11, a1, v8);
  v12 = *(v5 + 16);
  v27 = a2;
  v24 = v12;
  v12(v7, a2, v4);
  v30 = dispatch thunk of MusicItem.id.getter();
  v14 = v13;
  v29 = dispatch thunk of MusicItem.id.getter();
  v31 = v15;
  (*(v5 + 8))(v7, v4);
  v16 = v14;
  v17 = v28;
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v18 = *(v17 + 48);
  if (*(v18 + 16) && (v19 = sub_1006BE598(v30, v16, v29, v31), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v25(v11, v26, v8);
    v24(v7, v27, v4);
    type metadata accessor for WaveformPlayer.ListenerToken();
    swift_allocObject();
    v21 = sub_10080011C(v11, v7);
    sub_10027317C(v21);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v17 + 48);
    *(v17 + 48) = 0x8000000000000000;
    sub_1006C5CBC(v21, v30, v16, v29, v31, isUniquelyReferenced_nonNull_native);

    *(v17 + 48) = v32;
    swift_endAccess();
    sub_1002732FC();
  }

  return v21;
}

void *sub_1007FFBF8(char *a1, uint64_t a2)
{
  v58 = a2;
  v72 = a1;
  v69 = sub_10010FC20(&unk_1011A4BB0) - 8;
  __chkstk_darwin(v69);
  v73 = &v53 - v5;
  v71 = type metadata accessor for Album();
  v6 = *(v71 - 8);
  v68 = v6[8];
  v7 = __chkstk_darwin(v71);
  v67 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v53 - v9;
  v11 = type metadata accessor for Track();
  v12 = *(v11 - 8);
  v66 = v12[8];
  v13 = __chkstk_darwin(v11);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v17 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  v18 = type metadata accessor for WaveformState();
  v19 = *(*(v18 - 8) + 56);
  v57 = v2;
  v19(v2 + v17, 1, 1, v18);
  ObservationRegistrar.init()();
  v20 = v12[2];
  v55 = v12;
  v56 = v20;
  v20(v16, a1, v11);
  v60 = v6[2];
  v54 = v10;
  v21 = v71;
  v60(v10, a2, v71);
  v70 = v16;
  v59 = dispatch thunk of MusicItem.id.getter();
  v53 = v22;
  v23 = dispatch thunk of MusicItem.id.getter();
  v25 = v24;
  v63 = v6[1];
  v64 = v6 + 1;
  v63(v10, v21);
  v26 = v12[1];
  v61 = v12 + 1;
  v62 = v26;
  v26(v16, v11);
  v27 = v56;
  v28 = v57;
  v29 = v53;
  v57[2] = v59;
  v28[3] = v29;
  v28[4] = v23;
  v28[5] = v25;
  v30 = *(v69 + 56);
  v31 = v73;
  v27(v73, v72, v11);
  v32 = v6[4];
  v69 = (v6 + 4);
  v59 = v30;
  v32(&v31[v30], v58, v21);
  v33 = v70;
  v27(v70, v31, v11);
  v34 = &v31[v30];
  v35 = v54;
  v36 = v21;
  v60(v54, v34, v21);
  v37 = v55 + 4;
  v38 = v55[4];
  v39 = v65;
  v38(v65, v33, v11);
  v40 = v67;
  v41 = v36;
  v42 = v69;
  v32(v67, v35, v41);
  v43 = *(v37 + 48);
  v44 = (v43 + 16) & ~v43;
  v66 += v44;
  v60 = (v43 | 7);
  v45 = (v66 + *(v42 + 48)) & ~*(v42 + 48);
  v46 = swift_allocObject();
  v38((v46 + v44), v39, v11);
  v47 = v46 + v45;
  v48 = v71;
  v32(v47, v40, v71);
  v49 = v73;
  v63(&v73[v59], v48);
  v62(v49, v11);
  v28[6] = sub_10086D9B0;
  v28[7] = v46;
  v50 = v70;
  v38(v70, v72, v11);
  v51 = swift_allocObject();
  v38((v51 + v44), v50, v11);
  v28[8] = sub_10086DB7C;
  v28[9] = v51;
  return v28;
}

void *sub_10080011C(char *a1, uint64_t a2)
{
  v58 = a2;
  v72 = a1;
  v69 = sub_10010FC20(&qword_1011A4B40) - 8;
  __chkstk_darwin(v69);
  v73 = &v53 - v5;
  v71 = type metadata accessor for Playlist();
  v6 = *(v71 - 8);
  v68 = v6[8];
  v7 = __chkstk_darwin(v71);
  v67 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v53 - v9;
  v11 = type metadata accessor for Playlist.Entry();
  v12 = *(v11 - 8);
  v66 = v12[8];
  v13 = __chkstk_darwin(v11);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v17 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  v18 = type metadata accessor for WaveformState();
  v19 = *(*(v18 - 8) + 56);
  v57 = v2;
  v19(v2 + v17, 1, 1, v18);
  ObservationRegistrar.init()();
  v20 = v12[2];
  v55 = v12;
  v56 = v20;
  v20(v16, a1, v11);
  v60 = v6[2];
  v54 = v10;
  v21 = v71;
  v60(v10, a2, v71);
  v70 = v16;
  v59 = dispatch thunk of MusicItem.id.getter();
  v53 = v22;
  v23 = dispatch thunk of MusicItem.id.getter();
  v25 = v24;
  v63 = v6[1];
  v64 = v6 + 1;
  v63(v10, v21);
  v26 = v12[1];
  v61 = v12 + 1;
  v62 = v26;
  v26(v16, v11);
  v27 = v56;
  v28 = v57;
  v29 = v53;
  v57[2] = v59;
  v28[3] = v29;
  v28[4] = v23;
  v28[5] = v25;
  v30 = *(v69 + 56);
  v31 = v73;
  v27(v73, v72, v11);
  v32 = v6[4];
  v69 = (v6 + 4);
  v59 = v30;
  v32(&v31[v30], v58, v21);
  v33 = v70;
  v27(v70, v31, v11);
  v34 = &v31[v30];
  v35 = v54;
  v36 = v21;
  v60(v54, v34, v21);
  v37 = v55 + 4;
  v38 = v55[4];
  v39 = v65;
  v38(v65, v33, v11);
  v40 = v67;
  v41 = v36;
  v42 = v69;
  v32(v67, v35, v41);
  v43 = *(v37 + 48);
  v44 = (v43 + 16) & ~v43;
  v66 += v44;
  v60 = (v43 | 7);
  v45 = (v66 + *(v42 + 48)) & ~*(v42 + 48);
  v46 = swift_allocObject();
  v38((v46 + v44), v39, v11);
  v47 = v46 + v45;
  v48 = v71;
  v32(v47, v40, v71);
  v49 = v73;
  v63(&v73[v59], v48);
  v62(v49, v11);
  v28[6] = sub_10086B4F8;
  v28[7] = v46;
  v50 = v70;
  v38(v70, v72, v11);
  v51 = swift_allocObject();
  v38((v51 + v44), v50, v11);
  v28[8] = sub_10086B538;
  v28[9] = v51;
  return v28;
}

uint64_t sub_100800640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return String.init<A>(describing:)();
}

uint64_t sub_10080070C(void *a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v42 = &v34 - v3;
  v4 = sub_10010FC20(&unk_1011842D0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v7 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v34 - v8;
  v9 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Album();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v34 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    if ([a1 state] == 1 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v40 = Strong;
      v22 = *(*v20 + 128);
      swift_beginAccess();
      sub_1000089F8(v20 + v22, v11, &unk_101184730);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {

        return sub_1000095E8(v11, &unk_101184730);
      }

      else
      {
        v23 = *(v13 + 32);
        v36 = v13 + 32;
        v37 = v23;
        v23(v18, v11, v12);
        v35 = *(v13 + 16);
        v35(v16, v18, v12);
        Album.tracks.getter();
        v25 = *(v13 + 8);
        v24 = v13 + 8;
        v39 = v25;
        v25(v16, v12);
        v38 = v24;
        v26 = type metadata accessor for TaskPriority();
        (*(*(v26 - 8) + 56))(v42, 1, 1, v26);
        v35(v16, v18, v12);
        sub_1000089F8(v43, v7, &unk_1011842D0);
        type metadata accessor for MainActor();
        v40 = v40;
        v35 = static MainActor.shared.getter();
        v27 = (*(v24 + 72) + 32) & ~*(v24 + 72);
        v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
        v29 = (*(v41 + 80) + v28 + 8) & ~*(v41 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = v35;
        *(v30 + 24) = &protocol witness table for MainActor;
        v37(v30 + v27, v16, v12);
        v31 = v40;
        *(v30 + v28) = v40;
        sub_10003D17C(v7, v30 + v29, &unk_1011842D0);
        sub_1001F4CB8(0, 0, v42, &unk_100EE5618, v30);

        sub_10010FC20(&unk_101182D80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_100EBC6B0;
        v33 = sub_100137E8C();
        *(v32 + 32) = &type metadata for MusicLibraryTrait;
        *(v32 + 40) = v33;
        swift_allocObject();
        swift_weakInit();
        type metadata accessor for ContainerDetail.ViewController(0);
        UIViewController.registerForTraitChanges<A>(_:handler:)();

        swift_unknownObjectRelease();

        sub_1000095E8(v43, &unk_1011842D0);
        return v39(v18, v12);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100800CD8(void *a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v42 = &v34 - v3;
  v4 = sub_10010FC20(&unk_1011842D0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v7 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v34 - v8;
  v9 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v34 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    if ([a1 state] == 1 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v40 = Strong;
      v22 = *(*v20 + 128);
      swift_beginAccess();
      sub_1000089F8(v20 + v22, v11, &unk_1011814D0);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {

        return sub_1000095E8(v11, &unk_1011814D0);
      }

      else
      {
        v23 = *(v13 + 32);
        v36 = v13 + 32;
        v37 = v23;
        v23(v18, v11, v12);
        v35 = *(v13 + 16);
        v35(v16, v18, v12);
        Playlist.tracks.getter();
        v25 = *(v13 + 8);
        v24 = v13 + 8;
        v39 = v25;
        v25(v16, v12);
        v38 = v24;
        v26 = type metadata accessor for TaskPriority();
        (*(*(v26 - 8) + 56))(v42, 1, 1, v26);
        v35(v16, v18, v12);
        sub_1000089F8(v43, v7, &unk_1011842D0);
        type metadata accessor for MainActor();
        v40 = v40;
        v35 = static MainActor.shared.getter();
        v27 = (*(v24 + 72) + 32) & ~*(v24 + 72);
        v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
        v29 = (*(v41 + 80) + v28 + 8) & ~*(v41 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = v35;
        *(v30 + 24) = &protocol witness table for MainActor;
        v37(v30 + v27, v16, v12);
        v31 = v40;
        *(v30 + v28) = v40;
        sub_10003D17C(v7, v30 + v29, &unk_1011842D0);
        sub_1001F4CB8(0, 0, v42, &unk_100EE51B8, v30);

        sub_10010FC20(&unk_101182D80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_100EBC6B0;
        v33 = sub_100137E8C();
        *(v32 + 32) = &type metadata for MusicLibraryTrait;
        *(v32 + 40) = v33;
        swift_allocObject();
        swift_weakInit();
        type metadata accessor for ContainerDetail.ViewController(0);
        UIViewController.registerForTraitChanges<A>(_:handler:)();

        swift_unknownObjectRelease();

        sub_1000095E8(v43, &unk_1011842D0);
        return v39(v18, v12);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008012A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  type metadata accessor for MainActor();
  v6[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[25] = v8;
  v6[26] = v7;

  return _swift_task_switch(sub_100801340, v8, v7);
}

uint64_t sub_100801340()
{
  v1 = *(v0 + 176);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v1, v0 + 112, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_100801424;
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  return sub_10086250C(v4, v0 + 16, v3);
}

uint64_t sub_100801424()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return _swift_task_switch(sub_100801550, v3, v2);
}

uint64_t sub_100801550()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008015B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  type metadata accessor for MainActor();
  v6[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[25] = v8;
  v6[26] = v7;

  return _swift_task_switch(sub_10080164C, v8, v7);
}

uint64_t sub_10080164C()
{
  v1 = *(v0 + 176);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v1, v0 + 112, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_100801730;
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  return sub_100863048(v4, v0 + 16, v3);
}

uint64_t sub_100801730()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return _swift_task_switch(sub_10086E324, v3, v2);
}

uint64_t sub_10080185C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v7 = *(Strong + *(*Strong + 136)), , , v7))
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  if (v8)
  {
    type metadata accessor for MusicLibrary();
    sub_100866F00(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v10)
    {
      return result;
    }
  }

  else
  {
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    *(v12 + *(*v12 + 136)) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
  }

  return result;
}

void *sub_100801A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + *(*v3 + 136));
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v9 = *(*v4 + 256);

  v11 = v9(v10);
  if (static MusicLibrary.ActionableState.__derived_enum_equals(_:_:)(v11, v12, 0, 0x8000u))
  {

    return 0;
  }

  v14 = sub_100804004(a1, a2, a3);
  v15 = [v14 customView];

  if (v15)
  {
    v16 = sub_100801BE0(v4);
    v18 = v17;
    sub_100009F78(0, &qword_101181620);
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v16, v18);
  }

  v19 = *(v5 + *(*v5 + 152));
  v20 = v19;
  return v19;
}

uint64_t sub_100801BE0(uint64_t a1)
{
  v1 = (*(*a1 + 256))();
  if (v2 >> 14)
  {
    if (v2 >> 14 == 1)
    {
      if ((v2 & 0x100) != 0)
      {
        v3 = AccessibilityIdentifier.containerDetailDownloadPausedButton.unsafeMutableAddressor();
      }

      else if (v2)
      {
        v3 = AccessibilityIdentifier.containerDetailDownloadQueuedButton.unsafeMutableAddressor();
      }

      else
      {
        v3 = AccessibilityIdentifier.containerDetailDownloadingButton.unsafeMutableAddressor();
      }
    }

    else if (v1 | v2 ^ 0x8000)
    {
      if (v2 == 0x8000 && v1 == 1)
      {
        v3 = AccessibilityIdentifier.containerDetailDownloadButton.unsafeMutableAddressor();
      }

      else
      {
        v3 = AccessibilityIdentifier.containerDetailDownloadedButton.unsafeMutableAddressor();
      }
    }

    else
    {
      v3 = AccessibilityIdentifier.containerDetailStateButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v3 = AccessibilityIdentifier.containerDetailAddButton.unsafeMutableAddressor();
  }

  v5 = *v3;

  return v5;
}

void sub_100801CC4()
{
  v1 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for Album();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - v10;
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = *(*v0 + 128);
  swift_beginAccess();
  sub_1000089F8(v0 + v14, v3, &unk_101184730);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &unk_101184730);
    *(v0 + *(*v0 + 136)) = 0;

    return;
  }

  (*(v5 + 32))(v13, v3, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(v0 + *(*v0 + 136));
    if (v17)
    {
      (*(v5 + 16))(v11, v13, v4);
      v18 = *(*v17 + 216);

      v18(v11);
    }

    else
    {
      v37 = *(*v0 + 136);
      v38 = v0;
      (*(v5 + 16))(v8, v13, v4);
      v19 = v16;
      v20 = [v19 traitCollection];
      sub_100137E8C();
      UITraitCollection.subscript.getter();

      v36 = v39;
      v21 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
      swift_beginAccess();
      v22 = *&v19[v21];
      swift_getObjectType();
      v23 = swift_conformsToProtocol2();
      v24 = 0;
      v25 = 0;
      if (v23)
      {
        v26 = v38;
        if (v22)
        {
          v27 = v23;
          swift_unknownObjectRetain();
          v24 = v22;
          v25 = v27;
        }
      }

      else
      {
        v26 = v38;
      }

      v28 = swift_allocObject();
      swift_weakInit();
      sub_10010FC20(&unk_1011A4BA0);
      swift_allocObject();
      v29 = MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(v8, v36, v24, v25, sub_10086D14C, v28);
      *(v26 + v37) = v29;

      v30 = *(*v29 + 256);

      v32 = v30(v31);
      v34 = v33;

      if (static MusicLibrary.ActionableState.__derived_enum_equals(_:_:)(v32, v34, 0, 0x8000u))
      {
        (*(v5 + 8))(v13, v4);

        return;
      }

      sub_10080276C(0, 0x8000u, v32, v34, &unk_1010C30E0, sub_10086D1A0, sub_10086D1D8);
    }
  }

  (*(v5 + 8))(v13, v4);
}

void sub_1008021C4()
{
  v1 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - v10;
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = *(*v0 + 128);
  swift_beginAccess();
  sub_1000089F8(v0 + v14, v3, &unk_1011814D0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &unk_1011814D0);
    *(v0 + *(*v0 + 136)) = 0;

    return;
  }

  (*(v5 + 32))(v13, v3, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(v0 + *(*v0 + 136));
    if (v17)
    {
      (*(v5 + 16))(v11, v13, v4);
      v18 = *(*v17 + 216);

      v18(v11);
    }

    else
    {
      v37 = *(*v0 + 136);
      v38 = v0;
      (*(v5 + 16))(v8, v13, v4);
      v19 = v16;
      v20 = [v19 traitCollection];
      sub_100137E8C();
      UITraitCollection.subscript.getter();

      v36 = v39;
      v21 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
      swift_beginAccess();
      v22 = *&v19[v21];
      swift_getObjectType();
      v23 = swift_conformsToProtocol2();
      v24 = 0;
      v25 = 0;
      if (v23)
      {
        v26 = v38;
        if (v22)
        {
          v27 = v23;
          swift_unknownObjectRetain();
          v24 = v22;
          v25 = v27;
        }
      }

      else
      {
        v26 = v38;
      }

      v28 = swift_allocObject();
      swift_weakInit();
      sub_10010FC20(&qword_1011A49C0);
      swift_allocObject();
      v29 = MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(v8, v36, v24, v25, sub_10086A7BC, v28);
      *(v26 + v37) = v29;

      v30 = *(*v29 + 256);

      v32 = v30(v31);
      v34 = v33;

      if (static MusicLibrary.ActionableState.__derived_enum_equals(_:_:)(v32, v34, 0, 0x8000u))
      {
        (*(v5 + 8))(v13, v4);

        return;
      }

      sub_10080276C(0, 0x8000u, v32, v34, &unk_1010C25F0, sub_10086A810, sub_10086E3A0);
    }
  }

  (*(v5 + 8))(v13, v4);
}

uint64_t sub_1008026C4(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10080276C(a2, a3, a4, a5, a7, a8, a9);
  }

  return result;
}

void sub_10080276C(uint64_t a1, unsigned __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  v54 = a4;
  v15 = type metadata accessor for PopoverProvider.PopoverSource();
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = __chkstk_darwin(v15);
  v49 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v48 = &v47 - v18;
  v19 = type metadata accessor for PlacementID();
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = __chkstk_darwin(v19);
  v55 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v47 = &v47 - v23;
  __chkstk_darwin(v22);
  v25 = &v47 - v24;
  v26 = sub_10010FC20(&qword_1011A49C8);
  __chkstk_darwin(v26 - 8);
  v28 = &v47 - v27;
  v29 = sub_100802C84(a5, a6, a7);
  v30 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
  if (static MusicLibrary.ActionableState.__derived_enum_equals(_:_:)(a1, a2, 0, 0x8000u))
  {
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v28, 0, 0, 0, 1);

    sub_1000095E8(v28, &qword_1011A49C8);
    v31 = v54;
  }

  else
  {
    v32 = SymbolButton.Animation.eased.unsafeMutableAddressor();
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v28, *v32, *(v32 + 1), *(v32 + 2), 0);

    sub_1000095E8(v28, &qword_1011A49C8);
    v31 = v54;
    if ((static MusicLibrary.ActionableState.__derived_enum_equals(_:_:)(a3, v54, 0, 0x8000u) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    sub_10069F67C();
  }

LABEL_6:
  v35 = swift_unknownObjectWeakLoadStrong();
  v36 = v55;
  if (!v35)
  {
    return;
  }

  v37 = v35;
  if (!sub_1006A4900())
  {

    return;
  }

  if (!(v31 >> 14))
  {
    if (a3 == 5 || !static NSDirectionalEdgeInsets.Edge.__derived_enum_equals(_:_:)(a3, 2))
    {
      static PlacementID.BubbleTip.downloadButton.getter();
      dispatch thunk of PopoverProvider.removeRegistration(for:)();
      v38 = v53;
      v39 = *(v52 + 8);
      v39(v25, v53);
      static PlacementID.BubbleTip.addToLibraryButton.getter();
      v40 = *(v11 + *(*v11 + 144));
      v41 = v49;
      goto LABEL_18;
    }

LABEL_16:
    static PlacementID.BubbleTip.downloadButton.getter();
    dispatch thunk of PopoverProvider.removeRegistration(for:)();
    v42 = v53;
    v43 = *(v52 + 8);
    v43(v25, v53);
    static PlacementID.BubbleTip.addToLibraryButton.getter();
    dispatch thunk of PopoverProvider.removeRegistration(for:)();

    v43(v25, v42);
    return;
  }

  if (v31 >> 14 != 2 || a3 != 1 || v31 != 0x8000)
  {
    goto LABEL_16;
  }

  static PlacementID.BubbleTip.addToLibraryButton.getter();
  dispatch thunk of PopoverProvider.removeRegistration(for:)();
  v38 = v53;
  v39 = *(v52 + 8);
  v39(v25, v53);
  v36 = v47;
  static PlacementID.BubbleTip.downloadButton.getter();
  v40 = *(v11 + *(*v11 + 144));
  v41 = v48;
LABEL_18:
  *v41 = v40;
  v45 = v50;
  v44 = v51;
  (*(v50 + 104))(v41, enum case for PopoverProvider.PopoverSource.sourceItem(_:), v51);
  v46 = v40;
  dispatch thunk of PopoverProvider.registerPlacement(for:presentingViewController:popoverSource:)();

  (*(v45 + 8))(v41, v44);
  v39(v36, v38);
}

void *sub_100802C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 144);
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = *(v3 + v4);
  }

  else
  {
    v7 = sub_100802D00(v3, a1, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

void *sub_100802D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  SymbolButton.Configuration.init()(v9);
  v12 = objc_opt_self();
  v13 = [v12 currentTraitCollection];
  SymbolButton.Configuration.forBarButtonItem(_:)(v11);

  sub_100867794(v9, type metadata accessor for SymbolButton.Configuration);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v16 = SymbolButton.init(configuration:handler:)(v11, a3, v14);
  v17 = swift_allocObject();
  swift_weakInit();

  v18 = SymbolButton.withProvider(_:)(a4, v17);

  v19 = [v12 currentTraitCollection];
  SymbolButton.configureForToolbar(_:)(v19);

  [v18 sizeToFit];
  (*((swift_isaMask & *v18) + 0x108))(0xD00000000000001BLL, 0x8000000100E58A30);
  v20 = sub_1008040A0();
  [v18 addGestureRecognizer:v20];

  return v18;
}

uint64_t sub_100802F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + *(*result + 136));
    if (v9)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
        type metadata accessor for MainActor();
        swift_retain_n();
        v13 = v11;
        v14 = static MainActor.shared.getter();
        v15 = swift_allocObject();
        v15[2] = v14;
        v15[3] = &protocol witness table for MainActor;
        v15[4] = v13;
        v15[5] = v9;
        sub_1001F4CB8(0, 0, v7, a4, v15);
      }
    }
  }

  return result;
}

uint64_t sub_100803108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  sub_10010FC20(&unk_1011838F0);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = type metadata accessor for Actions.MetricsReportingContext();
  v5[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v7;
  v5[37] = v6;

  return _swift_task_switch(sub_100803214, v7, v6);
}

uint64_t sub_100803214()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  v4 = v3;
  PresentationSource.init(viewController:position:)(v4, v0 + 112, v0 + 16);
  v5 = &v4[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  ObjectType = swift_getObjectType();
  *(v0 + 216) = v7;
  (*(v6 + 256))(ObjectType, v6);
  sub_10010FC20(&unk_1011927C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  v11 = *v5;
  v10 = *(v5 + 1);
  v12 = swift_getObjectType();
  *(v0 + 224) = v11;
  v13 = *(v10 + 264);
  swift_unknownObjectRetain();
  *(v9 + 32) = v13(v12, v10);
  swift_unknownObjectRelease();
  sub_1000089F8(v1, v2, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v14 = sub_10053771C();
  v35 = v15;
  v36 = v14;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 264);
  v16 = *(v0 + 272);
  v18 = *(v0 + 256);
  v32 = *(v0 + 248);
  v19 = *(v0 + 240);
  v20 = qword_101218AD0;
  v34 = GroupActivitiesManager.hasJoined.getter();
  v33 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v18, &unk_1011838F0);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v17[5];
  v24 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v24 - 8) + 56))(&v16[v23], 1, 1, v24);
  v25 = v17[7];
  v26 = &v16[v17[6]];
  v27 = v17[8];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_10006B010(v32, &v16[v23], &unk_1011838F0);
  *v26 = v36;
  v26[1] = v35;
  *&v16[v25] = v9;
  *&v16[v27] = 0;
  v28 = &v16[v17[9]];
  *v28 = v34 & 1;
  *(v28 + 1) = v33;
  *(v28 + 2) = v22;
  v37 = (*(*v19 + 280) + **(*v19 + 280));
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *v29 = v0;
  v29[1] = sub_1008035C8;
  v30 = *(v0 + 272);

  return v37(v0 + 16, v30);
}

uint64_t sub_1008035C8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 272);
  if (v0)
  {

    sub_100867794(v4, type metadata accessor for Actions.MetricsReportingContext);
    v5 = *(v3 + 288);
    v6 = *(v3 + 296);
    v7 = sub_10086E2EC;
  }

  else
  {
    sub_100867794(v4, type metadata accessor for Actions.MetricsReportingContext);
    v5 = *(v3 + 288);
    v6 = *(v3 + 296);
    v7 = sub_100803734;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100803734()
{

  sub_10012BA6C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008037C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  sub_10010FC20(&unk_1011838F0);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = type metadata accessor for Actions.MetricsReportingContext();
  v5[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v7;
  v5[37] = v6;

  return _swift_task_switch(sub_1008038CC, v7, v6);
}

uint64_t sub_1008038CC()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  v4 = v3;
  PresentationSource.init(viewController:position:)(v4, v0 + 112, v0 + 16);
  v5 = &v4[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  ObjectType = swift_getObjectType();
  *(v0 + 216) = v7;
  (*(v6 + 256))(ObjectType, v6);
  sub_10010FC20(&unk_1011927C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  v11 = *v5;
  v10 = *(v5 + 1);
  v12 = swift_getObjectType();
  *(v0 + 224) = v11;
  v13 = *(v10 + 264);
  swift_unknownObjectRetain();
  *(v9 + 32) = v13(v12, v10);
  swift_unknownObjectRelease();
  sub_1000089F8(v1, v2, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v14 = sub_10053771C();
  v35 = v15;
  v36 = v14;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 264);
  v16 = *(v0 + 272);
  v18 = *(v0 + 256);
  v32 = *(v0 + 248);
  v19 = *(v0 + 240);
  v20 = qword_101218AD0;
  v34 = GroupActivitiesManager.hasJoined.getter();
  v33 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v18, &unk_1011838F0);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v17[5];
  v24 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v24 - 8) + 56))(&v16[v23], 1, 1, v24);
  v25 = v17[7];
  v26 = &v16[v17[6]];
  v27 = v17[8];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_10006B010(v32, &v16[v23], &unk_1011838F0);
  *v26 = v36;
  v26[1] = v35;
  *&v16[v25] = v9;
  *&v16[v27] = 0;
  v28 = &v16[v17[9]];
  *v28 = v34 & 1;
  *(v28 + 1) = v33;
  *(v28 + 2) = v22;
  v37 = (*(*v19 + 280) + **(*v19 + 280));
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *v29 = v0;
  v29[1] = sub_100803C80;
  v30 = *(v0 + 272);

  return v37(v0 + 16, v30);
}

uint64_t sub_100803C80()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 272);
  if (v0)
  {
  }

  sub_100867794(v4, type metadata accessor for Actions.MetricsReportingContext);
  v5 = *(v3 + 288);
  v6 = *(v3 + 296);

  return _swift_task_switch(sub_10086E2EC, v5, v6);
}

uint64_t sub_100803DEC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + *(*result + 136));
    if (v7 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v9 = Strong;
      sub_100869470(a2, v5, type metadata accessor for SymbolButton.Configuration);
      v10 = *(*v7 + 256);

      v12 = v10(v11);
      v14 = [v9 traitCollection];
      v15 = UITraitCollection.supportedMaterials.getter();

      LOBYTE(v14) = sub_100042A50(1, v15);

      if (v14)
      {
        sub_100282F24(*(v5 + 25), *(v5 + 26));
        *(v5 + 200) = xmmword_100EBCEE0;
        *(v5 + 27) = 0;
        *(v5 + 28) = 0;
        sub_1002ACCD0(*(v5 + 29), *(v5 + 30), *(v5 + 31));
        *(v5 + 29) = 1;
        *(v5 + 15) = 0u;
        *(v5 + 16) = 0u;
        *(v5 + 34) = 0;
      }

      return sub_100869470(v5, a2, type metadata accessor for SymbolButton.Configuration);
    }

    else
    {
    }
  }

  return result;
}

id sub_100804004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 152);
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = *(v3 + v4);
  }

  else
  {
    v7 = sub_100802C84(a1, a2, a3);
    v8 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v7];

    v9 = *(v3 + v4);
    *(v3 + v4) = v8;
    v6 = v8;

    v5 = 0;
  }

  v10 = v5;
  return v6;
}

id sub_1008040A0()
{
  v1 = *(*v0 + 160);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100804120(void *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v38 = type metadata accessor for IndexPath();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v38);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  Date.init()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v8 + 8))(v12, v7);
  }

  v14 = Strong;
  v36 = v7;
  v15 = a2;
  v16 = sub_100391EC8(a2);

  if (!v16)
  {
    return (*(v8 + 8))(v12, v36);
  }

  v34 = *(v3 + 88);
  v17 = swift_allocObject();
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v17;
  swift_weakInit();
  (*(v5 + 16))(v37, v15, v38);
  (*(v8 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v36);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = v16;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = v35;
  v31 = (*(v8 + 80) + v22 + 10) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  (*(v5 + 32))(v24 + v19, v37, v38);
  *(v24 + v20) = v23;
  v25 = v23;
  v26 = v31;
  *(v24 + v21) = v32;
  v27 = v24 + v22;
  *v27 = 0;
  *(v27 + 8) = 1025;
  v28 = v36;
  (*(v8 + 32))(v24 + v26, v33, v36);

  v29 = v25;
  sub_100534EE4(sub_10086DF90, v24);

  (*(v8 + 8))(v12, v28);
}

uint64_t sub_100804470(void *a1, uint64_t a2)
{
  v45 = a2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  Date.init()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v8 + 8))(v12, v7);
  }

  v37 = v2;
  v38 = v6;
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v4;
  v39 = v5;
  v40 = a1;
  v43 = v7;
  v14 = (Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  v15 = Strong;
  swift_beginAccess();
  v17 = *v14;
  v16 = v14[1];
  ObjectType = swift_getObjectType();
  v46 = v17;
  v19 = *(v16 + 448);
  swift_unknownObjectRetain();
  v20 = v19(v45, ObjectType, v16);
  swift_unknownObjectRelease();

  if (!v20)
  {
    return (*(v8 + 8))(v12, v43);
  }

  v35 = v20;
  v36 = *(v37 + 88);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v39;
  (*(v39 + 16))(v41, v45, v42);
  (*(v8 + 16))(v44, v12, v43);
  v23 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v24 = (v38 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v8 + 80) + v26 + 10) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  (*(v22 + 32))(v28 + v23, v41, v42);
  v29 = v40;
  *(v28 + v24) = v40;
  *(v28 + v25) = v35;
  v30 = v28 + v26;
  *v30 = 0;
  *(v30 + 8) = 1025;
  v31 = v43;
  (*(v8 + 32))(v28 + v27, v44, v43);

  v32 = v29;
  sub_100534EE4(sub_10086C97C, v28);

  (*(v8 + 8))(v12, v31);
}

uint64_t sub_100804814(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, double), uint64_t *a11, uint64_t a12, void (*a13)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    swift_beginAccess();
    if (*(*(v21 + 112) + 16))
    {

      sub_1006BE9F0(a3);
      if (v22)
      {

        swift_unknownObjectWeakAssign();
LABEL_9:

        a10(v25, a3, a9, a1);
      }
    }

    if (a8 == 4)
    {
      a8 = *(v21 + 40);
    }

    sub_10010FC20(a11);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v23 + 16) = a5;
    swift_unknownObjectWeakAssign();
    *(v23 + 24) = a6;
    *(v23 + 32) = a7 & 1;
    *(v23 + 48) = a8;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v21 + 112);
    *(v21 + 112) = 0x8000000000000000;
    a13(v23, a3, isUniquelyReferenced_nonNull_native);
    *(v21 + 112) = v26;
    swift_endAccess();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100804A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v10 = sub_100805058(a2, sub_10040E394, sub_1006C8E74);
    swift_endAccess();

    if (v10)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        v13 = sub_100431E88(*(v10 + 16));
        v15 = v14;
        swift_beginAccess();
        v16 = *(v12 + 104);

        if (*(v16 + 16))
        {
          v17 = sub_100019C10(v13, v15);
          v19 = v18;

          if (v19)
          {
            v20 = *(*(v16 + 56) + 8 * v17);

            swift_beginAccess();
            v21 = *(v20 + 48);
            v24 = *(v21 + 16);
            v22 = v21 + 16;
            v23 = v24;
            if (v24 && (*(v22 + 16 * v23 + 8) & 1) == 0)
            {
              (*(v6 + 16))(v8, a3, v5);
              Date.timeIntervalSince1970.getter();
              v26 = v25;
              (*(v6 + 8))(v8, v5);
              swift_beginAccess();
              v27 = *(v20 + 48);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v20 + 48) = v27;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v27 = sub_100499F10(0, *(v27 + 2) + 1, 1, v27);
                *(v20 + 48) = v27;
              }

              v30 = *(v27 + 2);
              v29 = *(v27 + 3);
              if (v30 >= v29 >> 1)
              {
                v27 = sub_100499F10((v29 > 1), v30 + 1, 1, v27);
              }

              *(v27 + 2) = v30 + 1;
              v31 = &v27[16 * v30];
              *(v31 + 4) = v26;
              v31[40] = 1;
              *(v20 + 48) = v27;
              swift_endAccess();
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_100804D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v10 = sub_100805058(a2, sub_10040E394, sub_1006C92C8);
    swift_endAccess();

    if (v10)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        v13 = sub_100431E88(*(v10 + 16));
        v15 = v14;
        swift_beginAccess();
        v16 = *(v12 + 104);

        if (*(v16 + 16))
        {
          v17 = sub_100019C10(v13, v15);
          v19 = v18;

          if (v19)
          {
            v20 = *(*(v16 + 56) + 8 * v17);

            swift_beginAccess();
            v21 = *(v20 + 48);
            v24 = *(v21 + 16);
            v22 = v21 + 16;
            v23 = v24;
            if (v24 && (*(v22 + 16 * v23 + 8) & 1) == 0)
            {
              (*(v6 + 16))(v8, a3, v5);
              Date.timeIntervalSince1970.getter();
              v26 = v25;
              (*(v6 + 8))(v8, v5);
              swift_beginAccess();
              v27 = *(v20 + 48);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v20 + 48) = v27;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v27 = sub_100499F24(0, *(v27 + 2) + 1, 1, v27);
                *(v20 + 48) = v27;
              }

              v30 = *(v27 + 2);
              v29 = *(v27 + 3);
              if (v30 >= v29 >> 1)
              {
                v27 = sub_100499F24((v29 > 1), v30 + 1, 1, v27);
              }

              *(v27 + 2) = v30 + 1;
              v31 = &v27[16 * v30];
              *(v31 + 4) = v26;
              v31[40] = 1;
              *(v20 + 48) = v27;
              swift_endAccess();
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_100805058(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_1006BE9F0(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for IndexPath();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

uint64_t sub_10080516C(char a1, void (*a2)(void, __n128), uint64_t a3, void (*a4)(uint64_t))
{
  v51 = a4;
  v6 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v6 - 8);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for EditorialVideoArtworkFlavor();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v17 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v17 - 8);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v48 - v23;
  if (!a1)
  {
    a2(0, v22);
    v33 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
    if (v33)
    {
      v34 = v33;
      static EditorialVideoArtworkFlavor.motionDetailTall.getter();
      if (*(v34 + 16) && (v35 = sub_1006BE63C(v16), (v36 & 1) != 0))
      {
        v37 = v35;
        v38 = *(v34 + 56);
        v39 = type metadata accessor for VideoArtwork();
        v40 = *(v39 - 8);
        (*(v40 + 16))(v24, v38 + *(v40 + 72) * v37, v39);
        (*(v50 + 8))(v16, v11);

        (*(v40 + 56))(v24, 0, 1, v39);
      }

      else
      {

        (*(v50 + 8))(v16, v11);
        v39 = type metadata accessor for VideoArtwork();
        (*(*(v39 - 8) + 56))(v24, 1, 1, v39);
      }

      type metadata accessor for VideoArtwork();
      v41 = 1;
      if ((*(*(v39 - 8) + 48))(v24, 1, v39) != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v42 = type metadata accessor for VideoArtwork();
      (*(*(v42 - 8) + 56))(v24, 1, 1, v42);
    }

    v41 = 0;
LABEL_19:
    v43 = &unk_101192950;
    v44 = v24;
LABEL_23:
    sub_1000095E8(v44, v43);
    return v41;
  }

  if (a1 == 1)
  {
LABEL_22:
    v51(v21);
    v46 = type metadata accessor for Artwork();
    v41 = (*(*(v46 - 8) + 48))(v10, 1, v46) != 1;
    v43 = &unk_101188920;
    v44 = v10;
    goto LABEL_23;
  }

  a2(0, v22);
  v25 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
  if (!v25)
  {
    v45 = type metadata accessor for VideoArtwork();
    (*(*(v45 - 8) + 56))(v19, 1, 1, v45);
LABEL_21:
    v21 = sub_1000095E8(v19, &unk_101192950);
    v10 = v49;
    goto LABEL_22;
  }

  v26 = v25;
  static EditorialVideoArtworkFlavor.motionDetailTall.getter();
  if (*(v26 + 16) && (v27 = sub_1006BE63C(v13), (v28 & 1) != 0))
  {
    v29 = v27;
    v30 = *(v26 + 56);
    v31 = type metadata accessor for VideoArtwork();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v19, v30 + *(v32 + 72) * v29, v31);
    (*(v50 + 8))(v13, v11);

    (*(v32 + 56))(v19, 0, 1, v31);
  }

  else
  {

    (*(v50 + 8))(v13, v11);
    v31 = type metadata accessor for VideoArtwork();
    (*(*(v31 - 8) + 56))(v19, 1, 1, v31);
  }

  type metadata accessor for VideoArtwork();
  if ((*(*(v31 - 8) + 48))(v19, 1, v31) == 1)
  {
    goto LABEL_21;
  }

  sub_1000095E8(v19, &unk_101192950);
  return 1;
}

uint64_t sub_100805804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000089F8(a3, v22 - v9, &unk_101181520);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &unk_101181520);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_100805A70(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011928B0);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_10010FC20(&qword_1011928C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(a1, 1, v8) == 1)
  {
    return 0xD000000000000021;
  }

  v11 = 0x206E776F6E6B6E55;
  sub_1000089F8(a1, v7, &qword_1011928B0);
  if (v10(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &qword_1011928B0);
  }

  else
  {
    v12 = MusicLibrarySectionedResponse.sections.getter();
    (*(v9 + 8))(v7, v8);
    v13 = *(v12 + 16);

    if (!v13)
    {
      v17 = 0;
      v18 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v17 = 0xD000000000000022;
      v18 = 0x8000000100E58A00;
      sub_1000089F8(a1, v4, &qword_1011928B0);
      v14._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 46;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      return v17;
    }
  }

  return v11;
}

unint64_t sub_100805CEC(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011A4900);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_10010FC20(&qword_10119A840);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(a1, 1, v8) == 1)
  {
    return 0xD000000000000021;
  }

  v11 = 0x206E776F6E6B6E55;
  sub_1000089F8(a1, v7, &unk_1011A4900);
  if (v10(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_1011A4900);
  }

  else
  {
    v12 = MusicLibrarySectionedResponse.sections.getter();
    (*(v9 + 8))(v7, v8);
    v13 = *(v12 + 16);

    if (!v13)
    {
      v17 = 0;
      v18 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v17 = 0xD000000000000022;
      v18 = 0x8000000100E58A00;
      sub_1000089F8(a1, v4, &unk_1011A4900);
      v14._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 46;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      return v17;
    }
  }

  return v11;
}

uint64_t sub_100805F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v47 = a2;
  v4 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v14 = *(v53 - 8);
  __chkstk_darwin(v53);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v52 = &v45 - v18;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v19 = qword_101218AC8;
  v20 = (*(*qword_101218AC8 + 528))();
  if (v20)
  {

    return 0;
  }

  (*(*a1 + 256))();
  if ((*(v11 + 88))(v13, v10) != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  (*(v11 + 96))(v13, v10);
  v21 = v14;
  v22 = *(v14 + 32);
  v24 = v52;
  v23 = v53;
  v22(v52, v13, v53);
  (*(v21 + 104))(v16, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v23);
  v25 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
  v26 = *(v21 + 8);
  v27 = v26(v16, v23);
  if ((v25 & 1) == 0)
  {
    v26(v24, v23);
    return 0;
  }

  v46 = v26;
  (*(*a1 + 304))(v27);
  v29 = v50;
  v28 = v51;
  (*(v50 + 104))(v6, enum case for MusicPlayer.PreviewCapabilityStatus.previewable(_:), v51);
  v30 = static MusicPlayer.PreviewCapabilityStatus.== infix(_:_:)();
  v31 = *(v29 + 8);
  v31(v6, v28);
  v31(v9, v28);
  if ((v30 & 1) == 0)
  {
    v46(v24, v23);
    return 0;
  }

  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  v32 = v49;
  v33 = Song.id.getter();
  sub_10012BF2C(v33, v34);
  v36 = v35;

  v38 = (*(*v19 + 432))(v37);
  if (v38)
  {
    v39 = v38;
    v40 = [v38 isSharedListeningSession];
  }

  else
  {
    v40 = 0;
  }

  if (v36 > 1u)
  {
    if (v36 == 2)
    {
      sub_10012F360();
      v42 = v53;
    }

    else
    {
      if (v48 && (sub_10012F6B8(v47, v48) & 1) != 0)
      {
        v43 = type metadata accessor for Song();
        v54[3] = v43;
        v54[4] = &protocol witness table for Song;
        v44 = sub_10001C8B8(v54);
        (*(*(v43 - 8) + 16))(v44, v32, v43);
        v55 = 0;
        static SubscriptionUpsellPresenter.present(for:)(v54);
        sub_100309980(v54);
      }

      sub_10012C194(v32, 1);
      v42 = v53;
    }
  }

  else
  {
    v42 = v53;
    if (v36)
    {
      sub_10012E578();
    }

    else if (v40)
    {
      sub_10012F360();
    }

    else
    {
      sub_10012F0E8();
    }
  }

  v46(v52, v42);
  return 1;
}

uint64_t sub_10080658C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v6 = sub_10010FC20(&unk_1011842D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v21 - v9;
  v11 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  if (*(v3 + 16))
  {

    sub_10010FC20(&qword_1011824A0);
    Task.cancel()();
  }

  TaskPriority.init(rawValue:)();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  sub_10010FC20(&unk_1011841D0);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0);
  type metadata accessor for Track();
  v15 = *a1;
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 16))(v10, v15, v16);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_10003D17C(v10, v18 + v17, &unk_1011842D0);
  v19 = (v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v22;
  v19[1] = a3;

  *(v3 + 16) = sub_10086E3AC(0, 0, v13, &unk_100EE55E8, v18);
}

uint64_t sub_10080686C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v6 = sub_10010FC20(&qword_1011A4718);
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  if (*(v3 + 16))
  {

    sub_10010FC20(&qword_1011824A0);
    Task.cancel()();
  }

  TaskPriority.init(rawValue:)();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_10010FC20(&qword_10118C2B0);
  sub_100020674(&unk_10119F050, &qword_10118C2B0);
  type metadata accessor for Playlist.Entry();
  v14 = *a1;
  v15 = type metadata accessor for Optional();
  (*(*(v15 - 8) + 16))(v9, v14, v15);
  sub_10010FC20(&qword_10119ED90);
  sub_100020674(&qword_101192820, &qword_10119ED90);
  type metadata accessor for Track();
  v16 = a1[1];
  v17 = *(v6 + 48);
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 16))(&v9[v17], v16, v18);
  v19 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_10003D17C(v9, v20 + v19, &qword_1011A4718);
  v21 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v24;
  v21[1] = a3;

  *(v3 + 16) = sub_10086E3AC(0, 0, v12, &unk_100EE4BC0, v20);
}

uint64_t sub_100806BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&unk_101181520);
  v6[5] = swift_task_alloc();
  v6[6] = sub_10010FC20(&unk_1011841D0);
  v6[7] = sub_100020674(&unk_10118C0A0, &unk_1011841D0);
  type metadata accessor for Track();

  return _swift_task_switch(sub_100806CE4, 0, 0);
}

uint64_t sub_100806CE4()
{
  v1 = v0[2];
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  v5 = *(v3 + 16);
  v5(v4, v1, v2);
  if (static Task<>.isCancelled.getter())
  {
    (*(v3 + 8))(v4, v2);
  }

  else
  {
    v6 = v0[6];
    v7 = swift_task_alloc();
    v5(v7, v4, v2);
    v8 = *(v6 - 8);
    if ((*(v8 + 48))(v7, 1, v6) == 1)
    {
      v9 = *(v3 + 8);
      v9(v4, v2);
      v9(v7, v2);
      v10 = 0.0;
    }

    else
    {
      v11 = v0[6];
      v12 = sub_100557C00(v11, v0[7], &off_1010B22C8);
      (*(v3 + 8))(v4, v2);
      (*(v8 + 8))(v7, v11);
      v10 = v12 + 0.0;
    }

    v14 = v0[4];
    v13 = v0[5];
    v15 = v0[3];

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    *(v18 + 32) = v15;
    *(v18 + 40) = v14;
    *(v18 + 48) = v10;
    sub_1001F4CB8(0, 0, v13, &unk_100EE55F0, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_100806FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a4;
  sub_10010FC20(&unk_101181520);
  *(v6 + 40) = swift_task_alloc();
  *(v6 + 48) = sub_10010FC20(&qword_10118C2B0);
  *(v6 + 56) = sub_100020674(&unk_10119F050, &qword_10118C2B0);
  type metadata accessor for Playlist.Entry();
  *(v6 + 64) = sub_10010FC20(&qword_10119ED90);
  *(v6 + 72) = sub_100020674(&qword_101192820, &qword_10119ED90);
  type metadata accessor for Track();
  *(v6 + 80) = *(sub_10010FC20(&qword_1011A4718) + 48);

  return _swift_task_switch(sub_10080713C, 0, 0);
}

uint64_t sub_10080713C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  v5 = *(v3 + 16);
  v5(v4, v1, v2);
  if (static Task<>.isCancelled.getter() & 1) != 0 || ((v6 = *(v0 + 48), v7 = swift_task_alloc(), v5(v7, v4, v2), v8 = *(v6 - 8), (*(v8 + 48))(v7, 1, v6) != 1) ? (v11 = *(v0 + 48), v12 = sub_100557C00(v11, *(v0 + 56), &off_1010B22D8), (*(v3 + 8))(v4, v2), (*(v8 + 8))(v7, v11), v10 = v12 + 0.0) : (v9 = *(v3 + 8), v9(v4, v2), v9(v7, v2), v10 = 0.0), v13 = *(v0 + 80), v14 = *(v0 + 16), , , v2 = type metadata accessor for Optional(), v3 = *(v2 - 8), v4 = swift_task_alloc(), v15 = *(v3 + 16), v15(v4, v14 + v13, v2), (static Task<>.isCancelled.getter()))
  {
    (*(v3 + 8))(v4, v2);
  }

  else
  {
    v16 = *(v0 + 64);
    v17 = swift_task_alloc();
    v15(v17, v4, v2);
    v18 = *(v16 - 8);
    if ((*(v18 + 48))(v17, 1, v16) == 1)
    {
      v19 = *(v3 + 8);
      v19(v4, v2);
      v20 = 0.0;
    }

    else
    {
      v20 = sub_100557C00(*(v0 + 64), *(v0 + 72), &off_1010B22C8);
      (*(v3 + 8))(v4, v2);
      v19 = *(v18 + 8);
      v2 = *(v0 + 64);
    }

    v22 = *(v0 + 32);
    v21 = *(v0 + 40);
    v23 = *(v0 + 24);
    v19(v17, v2);

    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
    type metadata accessor for MainActor();

    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = &protocol witness table for MainActor;
    *(v26 + 32) = v23;
    *(v26 + 40) = v22;
    *(v26 + 48) = v10 + v20;
    sub_1001F4CB8(0, 0, v21, &unk_100EE4BC8, v26);
  }

  v27 = *(v0 + 8);

  return v27();
}

char *sub_1008075B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v201 = a7;
  v202 = a6;
  v183 = a5;
  v181 = a4;
  v213 = a3;
  v174 = a2;
  v173 = a1;
  v9 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v9 - 8);
  v196 = &v146 - v10;
  v197 = sub_10010FC20(&unk_101183D80);
  v195 = *(v197 - 8);
  __chkstk_darwin(v197);
  v194 = &v146 - v11;
  v12 = sub_10010FC20(&qword_101189DE0);
  v199 = *(v12 - 8);
  v200 = v12;
  __chkstk_darwin(v12);
  v198 = &v146 - v13;
  v14 = sub_10010FC20(&unk_1011A4560);
  v210 = *(v14 - 8);
  v211 = v14;
  __chkstk_darwin(v14);
  v193 = &v146 - v15;
  v16 = sub_10010FC20(&unk_1011A4550);
  v208 = *(v16 - 8);
  v209 = v16;
  __chkstk_darwin(v16);
  v192 = &v146 - v17;
  v18 = sub_10010FC20(&qword_1011A4530);
  v207 = *(v18 - 8);
  __chkstk_darwin(v18);
  v190 = &v146 - v19;
  v20 = sub_10010FC20(&qword_1011A4520);
  v206 = *(v20 - 8);
  __chkstk_darwin(v20);
  v188 = &v146 - v21;
  v22 = sub_10010FC20(&unk_1011A4510);
  v205 = *(v22 - 8);
  __chkstk_darwin(v22);
  v186 = &v146 - v23;
  v24 = sub_10010FC20(&unk_1011A4500);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v182 = &v146 - v26;
  v27 = sub_10010FC20(&qword_1011A44F0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v178 = &v146 - v29;
  v30 = sub_10010FC20(&qword_1011A44E0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v175 = &v146 - v32;
  v166 = type metadata accessor for ContainerDetail.Source(0);
  v33 = __chkstk_darwin(v166);
  v172 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v171 = &v146 - v36;
  v37 = __chkstk_darwin(v35);
  v170 = &v146 - v38;
  __chkstk_darwin(v37);
  v167 = &v146 - v39;
  v212 = type metadata accessor for MusicPropertySource();
  v162 = *(v212 - 8);
  v40 = __chkstk_darwin(v212);
  v169 = &v146 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v168 = &v146 - v42;
  v165 = sub_10010FC20(&unk_1011A4630);
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v146 - v43;
  v160 = sub_10010FC20(&unk_101184D60);
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v157 = &v146 - v44;
  v155 = sub_10010FC20(&unk_1011A4640);
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v151 = &v146 - v45;
  v158 = sub_10010FC20(&unk_101192700);
  v46 = __chkstk_darwin(v158);
  v156 = &v146 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v153 = &v146 - v49;
  __chkstk_darwin(v48);
  v204 = &v146 - v50;
  v51 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v51 - 8);
  v203 = &v146 - v52;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController] = 0;
  v176 = v31;
  v53 = *(v31 + 56);
  v177 = v30;
  v53(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerRegistration], 1, 1, v30);
  v179 = v28;
  v54 = *(v28 + 56);
  v180 = v27;
  v54(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderRegistration], 1, 1, v27);
  v55 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_waveformPlayer;
  type metadata accessor for WaveformPlayer();
  swift_allocObject();
  *&v8[v55] = sub_10026FF78();
  v184 = v25;
  v56 = *(v25 + 56);
  v185 = v24;
  v56(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___trackCellRegistration], 1, 1, v24);
  v57 = *(v205 + 56);
  v187 = v22;
  v57(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___temporaryTrackCellRegistration], 1, 1, v22);
  v58 = *(v206 + 56);
  v189 = v20;
  v58(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___noContentCellRegistration], 1, 1, v20);
  v59 = *(v207 + 56);
  v59(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___emptyTrackCellRegistration], 1, 1, v18);
  v191 = v18;
  v59(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___addMusicCellRegistration], 1, 1, v18);
  sub_100009F78(0, &unk_101184790);
  v148 = type metadata accessor for TracklistFooter.ViewModel(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v208 + 56))(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___suggestedSongsCellRegistration], 1, 1, v209);
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for RelatedContentSpacing.Data(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v210 + 56))(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___symphonyRelatedContentCellRegistration], 1, 1, v211);
  v60 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController];
  *v60 = 0;
  v60[8] = 1;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playActivityFeatureIdentifier] = 12;
  v61 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID];
  v152 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID];
  *v61 = 0;
  v61[1] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___dragDropController] = 1;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent] = 0;
  v62 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  v63 = type metadata accessor for IndexPath();
  v149 = *(*(v63 - 8) + 56);
  v149(&v8[v62], 1, 1, v63);
  v64 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState];
  *v64 = 0x3FFFFFEFELL;
  v64[1] = 0;
  v64[2] = 0;
  v65 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_artwork;
  v66 = type metadata accessor for Artwork();
  (*(*(v66 - 8) + 56))(&v8[v65], 1, 1, v66);
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___relatedContentProvider] = 1;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage____needsToResolveLayout] = 2;
  v67 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  v68 = type metadata accessor for Playlist();
  v69 = *(*(v68 - 8) + 56);
  v69(&v8[v67], 1, 1, v68);
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isPendingLocalAddAction] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController] = 0;
  v70 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sourceURL;
  v71 = type metadata accessor for URL();
  v72 = *(*(v71 - 8) + 56);
  v161 = v70;
  v72(&v8[v70], 1, 1, v71);
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prepareVocalsObserver] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing] = 1;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_actionableStateController] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse] = 0xF000000000000007;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponse] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponseSubscription] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_asyncSetupTask] = 0;
  v73 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
  v74 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
  (*(*(v74 - 8) + 56))(&v8[v73], 1, 1, v74);
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___collaborationBarButton] = 0;
  v150 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationURL;
  v72(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationURL], 1, 1, v71);
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___reactionController] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponse] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponseSubscription] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask] = 0;
  v69(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist], 1, 1, v68);
  v75 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  v76 = sub_10010FC20(&qword_10118C2B0);
  v77 = *(*(v76 - 8) + 56);
  v77(&v8[v75], 1, 1, v76);
  v78 = v149;
  v149(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_largestPrefetchIndexPath], 1, 1, v63);
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_shouldRequestForPlaylistSubscriptionUpdate] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections] = &off_101099378;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeSectionUpdate] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderConfiguration] = 0;
  v79 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_libraryStateCache;
  *&v8[v79] = sub_10010BFD8(_swiftEmptyArrayStorage);
  v80 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playerStateCache;
  *&v8[v80] = sub_10010BFEC(_swiftEmptyArrayStorage);
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeStaticEntriesUpdates] = 0;
  v77(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries], 1, 1, v76);
  v77(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries], 1, 1, v76);
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemTask] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch] = 0;
  v78(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_opportunisticProminentItemIndexPath], 1, 1, v63);
  v81 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID];
  *v81 = 0;
  v81[1] = 0;
  v149 = v81;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks] = _swiftEmptyArrayStorage;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection] = 0;
  v147 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_tracklistFooterViewModel;
  v82 = type metadata accessor for Date();
  v83 = *(*(v82 - 8) + 56);
  v83(v203, 1, 1, v82);
  v84 = sub_10010FC20(&qword_101184C70);
  v85 = *(*(v84 - 8) + 56);
  v85(v204, 1, 1, v84);
  v86 = swift_allocObject();
  *(v86 + 16) = 2;
  v87 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate;
  v83(v86 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate, 1, 1, v82);
  v88 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__trackCount;
  v215 = 0;
  v216 = 1;
  sub_10010FC20(&qword_101184A70);
  v89 = v151;
  Published.init(initialValue:)();
  (*(v154 + 32))(v86 + v88, v89, v155);
  v90 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__duration;
  v215 = 0;
  v91 = v157;
  Published.init(initialValue:)();
  (*(v159 + 32))(v86 + v90, v91, v160);
  v92 = (v86 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright);
  *v92 = 0;
  v92[1] = 0;
  v93 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__recordLabels;
  v94 = v153;
  v85(v153, 1, 1, v84);
  v95 = v156;
  sub_1000089F8(v94, v156, &unk_101192700);
  v96 = v163;
  Published.init(initialValue:)();
  sub_1000095E8(v94, &unk_101192700);
  (*(v164 + 32))(v86 + v93, v96, v165);
  *(v86 + 16) = 2;
  swift_beginAccess();
  v97 = v86 + v87;
  v98 = v203;
  sub_1002190E0(v203, v97, &qword_101188C20);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v215 = 0;
  v216 = 1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v215 = 0;

  static Published.subscript.setter();
  *v92 = 0;
  v92[1] = 0;

  v99 = v204;
  sub_1000089F8(v204, v94, &unk_101192700);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v94, v95, &unk_101192700);

  static Published.subscript.setter();
  v100 = v94;
  v101 = v162;
  sub_1000095E8(v100, &unk_101192700);
  sub_1000095E8(v99, &unk_101192700);
  sub_1000095E8(v98, &qword_101188C20);
  *&v8[v147] = v86;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsDurationUpdate] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingAddMusicSection] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsCell] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_maintainSuggestedSongsPosition] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_hasNetworkConnectivityDidChangeNotificationObserver] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingSuggestedSongsSection] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___filterKeyCommand] = 0;
  v102 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText];
  *v102 = 0;
  v102[1] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchController] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearchEnabled] = 0;
  v103 = v152;
  v104 = v174;
  *v152 = v173;
  v103[1] = v104;

  v105 = v167;
  sub_10086772C(v213, v167, type metadata accessor for ContainerDetail.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v107 = *(v101 + 104);
  v108 = v168;
  if (EnumCaseMultiPayload == 1)
  {
    v107(v168, enum case for MusicPropertySource.catalog(_:), v212);
  }

  else
  {
    v107(v168, enum case for MusicPropertySource.library(_:), v212);
    sub_1000095E8(v105, &unk_1011926F0);
  }

  v109 = *(v101 + 32);
  v109(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource], v108, v212);
  v110 = v170;
  sub_10086772C(v213, v170, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v111 = v169;
    v107(v169, enum case for MusicPropertySource.catalog(_:), v212);
  }

  else
  {
    v111 = v169;
    v107(v169, enum case for MusicPropertySource.library(_:), v212);
    sub_1000095E8(v110, &unk_1011926F0);
  }

  v109(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source], v111, v212);
  v112 = v149;
  v113 = v183;
  *v149 = v181;
  v112[1] = v113;

  v114 = v150;
  swift_beginAccess();
  v115 = v202;
  sub_1002190E0(v202, &v8[v114], &qword_101183A20);
  swift_endAccess();
  v116 = v161;
  swift_beginAccess();
  v117 = v201;
  sub_1002190E0(v201, &v8[v116], &qword_101183A20);
  swift_endAccess();
  v118 = v171;
  sub_10086772C(v213, v171, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v119 = *v118;
  }

  else
  {
    sub_1000095E8(v118, &unk_1011926F0);
    v119 = 1;
  }

  v120 = v172;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeEquivalents] = v119;
  sub_10086772C(v213, v120, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v121 = 0;
  }

  else
  {
    v121 = *(v120 + *(sub_10010FC20(&qword_10118A430) + 64));
    sub_1000095E8(v120, &unk_1011926F0);
  }

  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_allowsCatalogFallback] = v121;
  v122 = type metadata accessor for PlaylistDetailDataSource(0);
  v214.receiver = v8;
  v214.super_class = v122;
  v123 = objc_msgSendSuper2(&v214, "init");
  v124 = v175;
  sub_100809DE4(v175);
  (*(v176 + 8))(v124, v177);
  v125 = v178;
  sub_10080A8B0(v178);
  (*(v179 + 8))(v125, v180);
  v126 = v182;
  sub_10080ACDC(v182);
  (*(v184 + 8))(v126, v185);
  v127 = v186;
  sub_10080C92C(v186);
  (*(v205 + 8))(v127, v187);
  v128 = v188;
  sub_10080D440(v188);
  (*(v206 + 8))(v128, v189);
  v129 = v190;
  sub_10080D8F8(v190);
  v130 = *(v207 + 8);
  v131 = v191;
  v130(v129, v191);
  sub_10080DF4C(v129);
  v130(v129, v131);
  v132 = v192;
  sub_10080E784(v192);
  (*(v208 + 8))(v132, v209);
  v133 = v193;
  sub_10080F2CC(v193);
  (*(v210 + 8))(v133, v211);
  v134 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v135 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v136 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *&v123[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_hasNetworkConnectivityDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v134, v135, 1, 1, sub_100866E90, v136);

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v137 = v194;
  (*(*qword_101218AC8 + 456))();
  sub_100009F78(0, &qword_101182960);
  v138 = static OS_dispatch_queue.main.getter();
  v215 = v138;
  v139 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v140 = v196;
  (*(*(v139 - 8) + 56))(v196, 1, 1, v139);
  sub_100020674(&unk_1011A4650, &unk_101183D80);
  sub_1000206BC();
  v141 = v198;
  v142 = v197;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v140, &qword_101182140);

  (*(v195 + 8))(v137, v142);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100020674(&unk_10118ACC0, &qword_101189DE0);
  v143 = v200;
  v144 = Publisher<>.sink(receiveValue:)();

  sub_1000095E8(v117, &qword_101183A20);
  sub_1000095E8(v115, &qword_101183A20);
  sub_100867794(v213, type metadata accessor for ContainerDetail.Source);
  (*(v199 + 8))(v141, v143);
  *&v123[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prepareVocalsObserver] = v144;

  return v123;
}

void sub_100809498()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    static ApplicationCapabilities.shared.getter(v5);
    sub_100014984(v5);
    if (BYTE1(v5[0]))
    {
      sub_10081B700();
    }

    else
    {
      v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v1 + v2, v4, &unk_1011926C0);
      if (v4[8] == 1)
      {
        sub_1000095E8(v4, &unk_1011926C0);
      }

      else
      {
        v3 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v4, &unk_1011926C0);
        if (v3)
        {
          sub_10069F67C();
        }
      }

      sub_10084E17C();
    }
  }
}

void sub_1008095A4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing);
    *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing) = 1;
    if ((v4 & 1) == 0)
    {
      v5 = v1;
      sub_100840468();

      v3 = v5;
    }
  }

  else
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      return;
    }

    v3 = v6;
    v7 = *(v6 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing);
    *(v6 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing) = 0;
    if (v7 == 1)
    {
      sub_100840468();
    }
  }
}

id sub_100809674()
{
  if (*&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_asyncSetupTask])
  {

    sub_10010FC20(&qword_1011824A0);
    Task.cancel()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistDetailDataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100809DE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011A4B68);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011A4B68);
  v10 = sub_10010FC20(&qword_1011A44E0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_1011A4B68);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s10HeaderCellCMa();
  type metadata accessor for Playlist();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_1011A4B68);
  return swift_endAccess();
}

void sub_10080A04C(void *a1)
{
  v2 = sub_10010FC20(&qword_101192B60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - v8;
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v13[v14], &v39, &unk_1011926C0);
    if (v40 == 1)
    {

      sub_1000095E8(&v39, &unk_1011926C0);
    }

    else
    {
      v15 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v39, &unk_1011926C0);
      if (v15)
      {
        v16 = *&v13[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController];
        if (v16)
        {
          v36 = a1;
          v37 = v16;
          v38 = v15;
          v17 = sub_10083D5A8();
          swift_getKeyPath();
          v39 = v17;
          sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v18 = *(v17 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

          v19 = sub_1006A6078();
          [v19 adjustedContentInset];
          v21 = v20;

          v22 = *(v18 + 32);
          v35 = v3;
          if (v22 == v21)
          {
            *(v18 + 32) = v21;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            *(&v35 - 2) = v18;
            *(&v35 - 1) = v21;
            v39 = v18;
            sub_100866F00(&qword_101192A00, _s7MetricsCMa);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          v24 = AccessibilityIdentifier.containerDetailHeader.unsafeMutableAddressor();
          v25 = *v24;
          v26 = v24[1];
          _s10HeaderCellCMa();

          v27 = v36;
          UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v25, v26);
          __chkstk_darwin(v28);
          *(&v35 - 4) = v13;
          *(&v35 - 3) = v27;
          *(&v35 - 2) = v37;
          sub_10010FC20(&qword_101192B68);
          v29 = type metadata accessor for Header(255);
          v30 = sub_100866F00(&qword_101192B70, type metadata accessor for Header);
          v39 = v29;
          v40 = v30;
          swift_getOpaqueTypeConformance2();
          UIHostingConfiguration<>.init(content:)();
          static Edge.Set.vertical.getter();
          UIHostingConfiguration.margins(_:_:)();
          v31 = *(v35 + 8);
          v31(v6, v2);
          static Edge.Set.horizontal.getter();
          UIHostingConfiguration.margins(_:_:)();
          v31(v9, v2);
          v41 = v2;
          v42 = sub_100020674(&qword_101192B78, &qword_101192B60);
          sub_10001C8B8(&v39);
          UIHostingConfiguration.animatedSizeInvalidationDisabled()();
          v31(v11, v2);
          UICollectionViewCell.contentConfiguration.setter();
          v32 = v38;
          v33 = sub_10069F9B8();
          v15 = *(v33 + 24);
          *(v33 + 24) = v27;
          v34 = v27;
          sub_1005599F8(v15);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10080A610(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Header(0);
  __chkstk_darwin(v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10083D5A8();
  type metadata accessor for MainActor();
  v7 = a2;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v10 = v7;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_10010FC20(&unk_101192B80);
  Binding.init(get:set:)();
  v13 = v19[1];
  v14 = v19[2];
  v15 = v21;
  *v5 = v6;
  *(v5 + 1) = v13;
  *(v5 + 2) = v14;
  *(v5 + 24) = v20;
  v5[40] = v15;
  v16 = *(v3 + 24);
  *&v5[v16] = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250);
  swift_storeEnumTagMultiPayload();
  v17 = &v5[*(v3 + 28)];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  sub_100866F00(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100866F00(&qword_101192B70, type metadata accessor for Header);

  View.artworkCaching(owner:)();

  return sub_100867794(v5, type metadata accessor for Header);
}