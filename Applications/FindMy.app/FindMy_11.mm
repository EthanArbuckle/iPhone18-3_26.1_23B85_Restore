void sub_10013020C(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v2 = Strong;
    sub_10013A78C();
  }

  else
  {
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      return;
    }

    v2 = v3;
    sub_10013A808();
  }
}

void sub_100130290(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001389E0(0, a2 & 1);
  }
}

void sub_1001302F0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_10013034C(uint64_t a1)
{
  v44 = a1;
  v1 = type metadata accessor for OfferLocationDuration();
  v46 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FriendshipExpiration();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v6 - 8);
  v8 = (&v40 - v7);
  v9 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for FMFFriend();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v42 = v3;
  v43 = v1;
  v41 = v4;
  v40 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v18 = *(Strong + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
  v19 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v18 + v19, v8, &qword_1006B3260);
  v20 = type metadata accessor for FMPersonDetailViewModel(0);
  if ((*(*(v20 - 8) + 48))(v8, 1, v20) == 1)
  {
    __break(1u);
    return;
  }

  v21 = *v8;
  v22 = v8[1];
  v23 = v17;

  sub_100140DB8(v8, type metadata accessor for FMPersonDetailViewModel);
  sub_1000BD300(v21, v22, v11);

  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v28 = v46;
    v30 = v42;
    v29 = v43;
    (*(v46 + 16))(v42, v44, v43);
    v31 = (*(v28 + 88))(v30, v29);
    v32 = v41;
    v33 = v45;
    v34 = v47;
    if (v31 != enum case for OfferLocationDuration.oneHour(_:))
    {
      if (v31 == enum case for OfferLocationDuration.endOfDay(_:))
      {
        v35 = &enum case for FriendshipExpiration.endOfDay(_:);
        goto LABEL_15;
      }

      if (v31 == enum case for OfferLocationDuration.indefinitely(_:))
      {
        v35 = &enum case for FriendshipExpiration.forever(_:);
        goto LABEL_15;
      }

      if (v31 != enum case for OfferLocationDuration.pin(_:))
      {
        (*(v45 + 104))(v47, enum case for FriendshipExpiration.oneHour(_:), v41);
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100005B14(v36, qword_1006D4630);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "FMPersonDetailContentViewController: unknown case when handling start sharing", v39, 2u);
        }

        (*(v46 + 8))(v42, v43);
        v34 = v47;
        goto LABEL_16;
      }
    }

    v35 = &enum case for FriendshipExpiration.oneHour(_:);
LABEL_15:
    (*(v45 + 104))(v47, *v35, v41);
LABEL_16:

    sub_1000F8E3C(v15, v34, 0, 0);

    (*(v33 + 8))(v34, v32);
    (*(v13 + 8))(v15, v12);
    return;
  }

  sub_100012DF0(v11, &qword_1006B0050);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100005B14(v24, qword_1006D4630);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "FMPersonDetailContentViewController: failed to retrieve a person from the dataSource when handling start sharing", v27, 2u);
  }
}

uint64_t sub_100130A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[89] = a6;
  v6[88] = a5;
  v6[87] = a4;
  v6[90] = type metadata accessor for FindingMode(0);
  v6[91] = swift_task_alloc();
  v7 = type metadata accessor for FMPersonDetailViewModel(0);
  v6[92] = v7;
  v6[93] = *(v7 - 8);
  v6[94] = swift_task_alloc();
  v8 = type metadata accessor for FMFindingType();
  v6[95] = v8;
  v6[96] = *(v8 - 8);
  v6[97] = swift_task_alloc();
  sub_10007EBC0(&qword_1006B32A8);
  v6[98] = swift_task_alloc();
  v9 = type metadata accessor for FMFindingProductType();
  v6[99] = v9;
  v6[100] = *(v9 - 8);
  v6[101] = swift_task_alloc();
  v10 = type metadata accessor for FMFindingTechnology();
  v6[102] = v10;
  v6[103] = *(v10 - 8);
  v6[104] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v6[105] = v11;
  v6[106] = *(v11 - 8);
  v6[107] = swift_task_alloc();
  v12 = type metadata accessor for FMFindableObject();
  v6[108] = v12;
  v6[109] = *(v12 - 8);
  v6[110] = swift_task_alloc();
  v13 = type metadata accessor for Handle();
  v6[111] = v13;
  v6[112] = *(v13 - 8);
  v6[113] = swift_task_alloc();
  sub_10007EBC0(&qword_1006B3260);
  v6[114] = swift_task_alloc();
  sub_10007EBC0(&unk_1006B0000);
  v6[115] = swift_task_alloc();
  v14 = type metadata accessor for ClientOrigin();
  v6[116] = v14;
  v6[117] = *(v14 - 8);
  v6[118] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v6[119] = swift_task_alloc();
  v6[120] = type metadata accessor for MainActor();
  v6[121] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[122] = v16;
  v6[123] = v15;

  return _swift_task_switch(sub_100130EE4, v16, v15);
}

uint64_t sub_100130EE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenSession);
    v3 = Strong;

    if (v2)
    {
      goto LABEL_5;
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    (*(v0[117] + 104))(v0[118], enum case for ClientOrigin.findMyApp(_:), v0[116]);
    RequestOrigin.init(_:)();
    type metadata accessor for Session();
    swift_allocObject();
    *&v5[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenSession] = Session.init(_:)();

LABEL_5:
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager);
    v8 = v6;
    v9 = v7;

    if (v7)
    {
      v10 = UUID.uuidString.getter();
      v12 = v11;
      v13 = v9;
      v14 = FMConnectionManager.identifiers.getter();

      v0[85] = v10;
      v0[86] = v12;
      v15 = swift_task_alloc();
      *(v15 + 16) = v0 + 85;
      LOBYTE(v10) = sub_10008A40C(sub_1001413D4, v15, v14);

      if (v10)
      {

LABEL_42:
        swift_beginAccess();
        v59 = swift_unknownObjectWeakLoadStrong();
        if (v59)
        {
          *&v59[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask] = 0;
        }

        v60 = v0[1];

        return v60();
      }

      swift_beginAccess();
      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        v17 = *(v16 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager);
        v18 = v16;
        v19 = v17;

        if (v17)
        {
          dispatch thunk of FMConnectionManager.disconnect()();
        }
      }

      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = *&v20[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager];
        *&v20[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager] = 0;
      }

      swift_beginAccess();
      v22 = swift_unknownObjectWeakLoadStrong();
      if (v22)
      {
        v23 = v22;
        v24 = v0[115];
        v25 = type metadata accessor for Date();
        (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
        v26 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startDiscoveryTimestamp;
        swift_beginAccess();
        sub_1000BBF40(v24, v23 + v26, &unk_1006B0000);
        swift_endAccess();
      }

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100005B14(v27, qword_1006D4630);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "FMPersonDetailContentViewController: Existing connection manager was discarded due to friend change", v30, 2u);
      }

      swift_beginAccess();
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31)
      {
        v32 = v31;
        v33 = *(v31 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable);
        v32[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable] = 0;
        sub_10012A29C(v33);
      }
    }
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v0[124] = sub_100005B14(v34, qword_1006D4630);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "FMPersonDetailContentViewController: Trying to get peer token for discovery", v37, 2u);
  }

  swift_beginAccess();
  v38 = swift_unknownObjectWeakLoadStrong();
  v0[125] = v38;
  if (!v38)
  {

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "FMPersonDetailContentViewController: No peer token! Not setting up finding and revoking old state", v43, 2u);
    }

    swift_beginAccess();
    v44 = swift_unknownObjectWeakLoadStrong();
    if (v44)
    {
      v45 = v44;
      v46 = *(v44 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken);
      *(v44 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken) = 0;

      v47 = sub_10012A7F8();
      v49 = v48;
      v50 = type metadata accessor for FMIPPeopleFindingEvent();
      if (!(*(*(v50 - 8) + 48))(v49, 1, v50))
      {
        FMIPPeopleFindingEvent.hasToken.setter();
      }

      (v47)(v0 + 6, 0);
    }

    swift_beginAccess();
    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      v53 = *(v51 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable);
      v52[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable] = 0;
      sub_10012A29C(v53);
    }

    swift_beginAccess();
    v54 = swift_unknownObjectWeakLoadStrong();
    if (v54)
    {
      v55 = v54;
      v56 = v0[115];
      v57 = type metadata accessor for Date();
      (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
      v58 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startDiscoveryTimestamp;
      swift_beginAccess();
      sub_1000BBF40(v56, v55 + v58, &unk_1006B0000);
      swift_endAccess();
    }

    goto LABEL_42;
  }

  v0[126] = static MainActor.shared.getter();
  v40 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[127] = v40;
  v0[128] = v39;

  return _swift_task_switch(sub_1001317AC, v40, v39);
}

uint64_t sub_1001317AC()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  v4 = *(*(v0 + 1000) + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
  v5 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v4 + v5, v1, &qword_1006B3260);
  v6 = (*(v2 + 48))(v1, 1, v3);
  if (v6 == 1)
  {
LABEL_19:
    __break(1u);
    return Session.peerToken(peer:)(v6);
  }

  else
  {
    v7 = *(v0 + 912);
    v8 = *(v7 + *(*(v0 + 736) + 64));
    *(v0 + 1032) = v8;

    v6 = sub_100140DB8(v7, type metadata accessor for FMPersonDetailViewModel);
    v9 = 0;
    v10 = *(v8 + 32);
    *(v0 + 1088) = v10;
    v11 = 1 << v10;
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v8 + 56);
    v14 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenSession;
    *(v0 + 1040) = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenSession;
    v15 = (v11 + 63) >> 6;
    while (v13)
    {
      v16 = v13;
LABEL_11:
      *(v0 + 1056) = v9;
      *(v0 + 1048) = v16;
      v13 = (v16 - 1) & v16;
      v18 = *(*(v0 + 1000) + v14);
      *(v0 + 1064) = v18;
      if (v18)
      {

        Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
        v19 = swift_task_alloc();
        *(v0 + 1072) = v19;
        *v19 = v0;
        v19[1] = sub_100131DE4;
        v6 = *(v0 + 904);

        return Session.peerToken(peer:)(v6);
      }
    }

    while (1)
    {
      v17 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v17 >= v15)
      {
        break;
      }

      v16 = *(*(v0 + 1032) + 8 * v17 + 56);
      ++v9;
      if (v16)
      {
        v9 = v17;
        goto LABEL_11;
      }
    }

    v20 = *(v0 + 1000);

    v21 = *(v0 + 984);
    v22 = *(v0 + 976);

    return _swift_task_switch(sub_100131A64, v22, v21);
  }
}

uint64_t sub_100131A64()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMPersonDetailContentViewController: No peer token! Not setting up finding and revoking old state", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken);
    *(Strong + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken) = 0;

    v7 = sub_10012A7F8();
    v9 = v8;
    v10 = type metadata accessor for FMIPPeopleFindingEvent();
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      FMIPPeopleFindingEvent.hasToken.setter();
    }

    (v7)(v0 + 48, 0);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable);
    v12[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable] = 0;
    sub_10012A29C(v13);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 920);
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startDiscoveryTimestamp;
    swift_beginAccess();
    sub_1000BBF40(v16, v15 + v18, &unk_1006B0000);
    swift_endAccess();
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    *&v19[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask] = 0;
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100131DE4(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = v4[113];
  v7 = v4[112];
  v8 = v4[111];
  v9 = (v7 + 8);
  if (v1)
  {

    (*v9)(v6, v8);
    v10 = v5[128];
    v11 = v5[127];
    v12 = sub_1001321D8;
  }

  else
  {
    v5[135] = a1;
    (*v9)(v6, v8);

    v10 = v5[128];
    v11 = v5[127];
    v12 = sub_100131FB8;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_100131FB8(uint64_t a1)
{
  if (*(v1 + 1080))
  {
    v2 = *(v1 + 1000);

    v3 = *(v1 + 984);
    v4 = *(v1 + 976);
    v5 = sub_1001323BC;
LABEL_15:

    return _swift_task_switch(v5, v4, v3);
  }

  else
  {
    v6 = *(v1 + 1056);
    v7 = (*(v1 + 1048) - 1) & *(v1 + 1048);
    while (v7)
    {
      v8 = v7;
LABEL_10:
      *(v1 + 1056) = v6;
      *(v1 + 1048) = v8;
      v7 = (v8 - 1) & v8;
      v10 = *(*(v1 + 1000) + *(v1 + 1040));
      *(v1 + 1064) = v10;
      if (v10)
      {

        Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
        v11 = swift_task_alloc();
        *(v1 + 1072) = v11;
        *v11 = v1;
        v11[1] = sub_100131DE4;
        a1 = *(v1 + 904);

        return Session.peerToken(peer:)(a1);
      }
    }

    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v9 >= (((1 << *(v1 + 1088)) + 63) >> 6))
      {
        v12 = *(v1 + 1000);

        v3 = *(v1 + 984);
        v4 = *(v1 + 976);
        v5 = sub_100131A64;
        goto LABEL_15;
      }

      v8 = *(*(v1 + 1032) + 8 * v9 + 56);
      ++v6;
      if (v8)
      {
        v6 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
    return Session.peerToken(peer:)(a1);
  }
}

uint64_t sub_1001321D8(uint64_t a1)
{
  v2 = *(v1 + 1056);
  v3 = (*(v1 + 1048) - 1) & *(v1 + 1048);
  while (v3)
  {
    v4 = v3;
LABEL_8:
    *(v1 + 1056) = v2;
    *(v1 + 1048) = v4;
    v3 = (v4 - 1) & v4;
    v6 = *(*(v1 + 1000) + *(v1 + 1040));
    *(v1 + 1064) = v6;
    if (v6)
    {

      Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
      v7 = swift_task_alloc();
      *(v1 + 1072) = v7;
      *v7 = v1;
      v7[1] = sub_100131DE4;
      a1 = *(v1 + 904);

      return Session.peerToken(peer:)(a1);
    }
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return Session.peerToken(peer:)(a1);
    }

    if (v5 >= (((1 << *(v1 + 1088)) + 63) >> 6))
    {
      break;
    }

    v4 = *(*(v1 + 1032) + 8 * v5 + 56);
    ++v2;
    if (v4)
    {
      v2 = v5;
      goto LABEL_8;
    }
  }

  v8 = *(v1 + 1000);

  v9 = *(v1 + 984);
  v10 = *(v1 + 976);

  return _swift_task_switch(sub_100131A64, v10, v9);
}

uint64_t sub_1001323BC()
{
  v86 = v0;
  v1 = v0[135];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken);
    *(Strong + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken) = v0[135];
    v5 = v1;

    v6 = sub_10012A7F8();
    v8 = v7;
    v9 = type metadata accessor for FMIPPeopleFindingEvent();
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      FMIPPeopleFindingEvent.hasToken.setter();
    }

    (v6)(v0 + 2, 0);
  }

  v76 = v1;
  v77 = v0[110];
  v10 = v0[104];
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v14 = v0[100];
  v74 = v0[99];
  v75 = v0[98];
  v81 = v0[97];
  v82 = v0[109];
  v15 = v0[96];
  v79 = v0[95];
  v80 = v0[108];
  v16 = v0[92];
  v17 = v0[89];
  (*(v0[106] + 16))();
  v18 = *(sub_10007EBC0(&qword_1006C0020) + 48);
  *v10 = 1;
  v78 = enum case for FMFindingType.friend(_:);
  v19 = *(v15 + 104);
  v19(&v10[v18]);
  (*(v11 + 104))(v10, enum case for FMFindingTechnology.precision(_:), v12);
  v20 = *(v17 + *(v16 + 68));
  v21 = (v17 + *(v16 + 60));
  v22 = *v21;
  v23 = v21[1];
  *v13 = v20;
  v13[1] = v22;
  v13[2] = v23;
  (*(v14 + 104))(v13, enum case for FMFindingProductType.person(_:), v74);
  v24 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
  (*(*(v24 - 8) + 56))(v75, 1, 1, v24);
  v25 = v20;
  v26 = v76;

  FMFindableObject.init(name:findingIdentifier:findingTechnology:findingProductType:videoInfo:discoveryToken:)();
  sub_10007EBC0(&qword_1006B32C8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100552220;
  *(v27 + 56) = v80;
  *(v27 + 64) = &protocol witness table for FMFindableObject;
  v28 = sub_100008FC0((v27 + 32));
  (*(v82 + 16))(v28, v77, v80);
  (v19)(v81, v78, v79);
  [objc_allocWithZone(ARSession) init];
  v29 = objc_allocWithZone(type metadata accessor for FMPrecisionConnectionManager());
  v30 = FMPrecisionConnectionManager.init(findables:connectionContext:arSession:)();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100141248(&qword_1006B32D0, type metadata accessor for FMPersonDetailContentViewController);
  }

  dispatch thunk of FMPrecisionConnectionManager.delegate.setter();
  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = *(v31 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager);
    *(v31 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager) = v30;
    v33 = v31;
    v34 = v30;
  }

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = *(v35 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
    v37 = v35;

    LOBYTE(v37) = *(v36 + 104);

    if (v37)
    {
      sub_10014101C(v0[89], v0[94], type metadata accessor for FMPersonDetailViewModel);
      v38 = v26;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v83 = v0[135];
        v41 = v0[94];
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v85 = v84;
        *v42 = 136315394;
        v44 = v38;
        v46 = *(v41 + 96);
        v45 = *(v41 + 104);

        sub_100140DB8(v41, type metadata accessor for FMPersonDetailViewModel);
        v47 = v46;
        v38 = v44;
        v48 = sub_100005B4C(v47, v45, &v85);

        *(v42 + 4) = v48;
        *(v42 + 12) = 2112;
        *(v42 + 14) = v44;
        *v43 = v83;
        v49 = v44;
        _os_log_impl(&_mh_execute_header, v39, v40, "FMPersonDetailContentViewController: Connecting for friend: %s with token: %@", v42, 0x16u);
        sub_100012DF0(v43, &unk_1006AF760);

        sub_100006060(v84);
      }

      else
      {
        v53 = v0[94];

        sub_100140DB8(v53, type metadata accessor for FMPersonDetailViewModel);
      }

      swift_beginAccess();
      v54 = swift_unknownObjectWeakLoadStrong();
      if (v54)
      {
        v55 = *(v54 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager);
        v56 = v54;
        v57 = v55;

        if (v55)
        {
          dispatch thunk of FMConnectionManager.connect()();
        }
      }

      swift_beginAccess();
      v58 = swift_unknownObjectWeakLoadStrong();
      if (v58)
      {
        v59 = v58;
        v60 = v0[115];
        Date.init()();
        v61 = type metadata accessor for Date();
        (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
        v62 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startDiscoveryTimestamp;
        swift_beginAccess();
        sub_1000BBF40(v60, v59 + v62, &unk_1006B0000);
        swift_endAccess();
      }

      swift_beginAccess();
      v63 = swift_unknownObjectWeakLoadStrong();
      v64 = v0[110];
      v65 = v0[109];
      v66 = v0[108];
      if (v63)
      {
        v67 = v0[91];
        v68 = v63;
        v69 = *(v63 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_findingExperiencePresenter);

        *v67 = v30;
        swift_storeEnumTagMultiPayload();
        v70 = v30;
        sub_100162FAC(v67);

        sub_100140DB8(v67, type metadata accessor for FindingMode);
      }

      else
      {
      }

      (*(v65 + 8))(v64, v66);
    }

    else
    {
      (*(v0[109] + 8))(v0[110], v0[108]);
    }
  }

  else
  {
    v50 = v0[110];
    v51 = v0[109];
    v52 = v0[108];

    (*(v51 + 8))(v50, v52);
  }

  swift_beginAccess();
  v71 = swift_unknownObjectWeakLoadStrong();
  if (v71)
  {
    *&v71[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask] = 0;
  }

  v72 = v0[1];

  return v72();
}

uint64_t sub_100132D54()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenReevaluationTask) = sub_10047F498(0, 0, v4, &unk_100555088, v8);
}

uint64_t sub_100132EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a4;
  sub_10007EBC0(&unk_1006B0000);
  v4[43] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v4[44] = v5;
  v4[45] = *(v5 - 8);
  v4[46] = swift_task_alloc();
  sub_10007EBC0(&qword_1006B3260);
  v4[47] = swift_task_alloc();
  v4[48] = type metadata accessor for MainActor();
  v4[49] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[50] = v7;
  v4[51] = v6;

  return _swift_task_switch(sub_10013302C, v7, v6);
}

uint64_t sub_10013302C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[52] = Strong;
  if (Strong)
  {
    v0[53] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[54] = v3;
    v0[55] = v2;

    return _swift_task_switch(sub_100133620, v3, v2);
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4 && (v5 = *(v4 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken), v6 = v4, v7 = v5, v6, v5))
  {

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "FMPersonDetailContentViewController: Peer tokens don't match, discarding connection manager for reconfigure", v11, 2u);
    }

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = *(v12 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken);
      *(v12 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken) = 0;

      v15 = sub_10012A7F8();
      v17 = v16;
      v18 = type metadata accessor for FMIPPeopleFindingEvent();
      if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
      {
        FMIPPeopleFindingEvent.hasToken.setter();
      }

      (v15)(v0 + 2, 0);
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = *(v19 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable);
      v20[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable] = 0;
      sub_10012A29C(v21);
    }

    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v24 = v0[43];
      v25 = type metadata accessor for Date();
      (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
      v26 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startDiscoveryTimestamp;
      swift_beginAccess();
      sub_1000BBF40(v24, v23 + v26, &unk_1006B0000);
      swift_endAccess();
    }

    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = *(v27 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager);
      v29 = v27;
      v30 = v28;

      if (v28)
      {
        dispatch thunk of FMConnectionManager.disconnect()();
      }
    }

    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = *&v31[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager];
      *&v31[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager] = 0;
    }

    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = *(v33 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask);
      v35 = v33;

      if (v34)
      {
        sub_10007EBC0(&unk_1006AF7B0);
        Task.cancel()();
      }
    }

    swift_beginAccess();
    v36 = swift_unknownObjectWeakLoadStrong();
    if (!v36)
    {
      goto LABEL_36;
    }

    v37 = &OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask;
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100005B14(v38, qword_1006D4630);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "FMPersonDetailContentViewController: Peer token has not changed. No need to reconfigure", v41, 2u);
    }

    swift_beginAccess();
    v36 = swift_unknownObjectWeakLoadStrong();
    if (!v36)
    {
      goto LABEL_36;
    }

    v37 = &OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenReevaluationTask;
  }

  *&v36[*v37] = 0;

LABEL_36:

  v42 = v0[1];

  return v42();
}

uint64_t sub_100133620()
{
  v1 = *(v0 + 376);
  v2 = *(*(v0 + 416) + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
  v3 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v2 + v3, v1, &qword_1006B3260);
  v4 = type metadata accessor for FMPersonDetailViewModel(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  if (v5 == 1)
  {
LABEL_19:
    __break(1u);
    return Session.peerToken(peer:)(v5);
  }

  else
  {
    v6 = *(v0 + 376);
    v7 = *(v6 + *(v4 + 64));
    *(v0 + 448) = v7;

    v5 = sub_100140DB8(v6, type metadata accessor for FMPersonDetailViewModel);
    v8 = 0;
    v9 = *(v7 + 32);
    *(v0 + 512) = v9;
    v10 = 1 << v9;
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v7 + 56);
    v13 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenSession;
    *(v0 + 456) = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenSession;
    v14 = (v10 + 63) >> 6;
    while (v12)
    {
      v15 = v12;
LABEL_11:
      *(v0 + 464) = v15;
      *(v0 + 472) = v8;
      v12 = (v15 - 1) & v15;
      v17 = *(*(v0 + 416) + v13);
      *(v0 + 480) = v17;
      if (v17)
      {

        Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
        v18 = swift_task_alloc();
        *(v0 + 488) = v18;
        *v18 = v0;
        v18[1] = sub_1001338E8;
        v5 = *(v0 + 368);

        return Session.peerToken(peer:)(v5);
      }
    }

    while (1)
    {
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v16 >= v14)
      {
        break;
      }

      v15 = *(*(v0 + 448) + 8 * v16 + 56);
      ++v8;
      if (v15)
      {
        v8 = v16;
        goto LABEL_11;
      }
    }

    v19 = *(v0 + 416);

    *(v0 + 504) = 0;
    v20 = *(v0 + 400);
    v21 = *(v0 + 408);

    return _swift_task_switch(sub_100133E90, v20, v21);
  }
}

uint64_t sub_1001338E8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = v4[46];
  v7 = v4[45];
  v8 = v4[44];
  v9 = (v7 + 8);
  if (v1)
  {

    (*v9)(v6, v8);
    v10 = v5[54];
    v11 = v5[55];
    v12 = sub_100133CB8;
  }

  else
  {
    v5[62] = a1;
    (*v9)(v6, v8);

    v10 = v5[54];
    v11 = v5[55];
    v12 = sub_100133AB4;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100133AB4(uint64_t a1)
{
  if (*(v1 + 496))
  {
    v2 = *(v1 + 416);

    v3 = *(v1 + 496);
LABEL_15:
    *(v1 + 504) = v3;
    v11 = *(v1 + 400);
    v12 = *(v1 + 408);

    return _swift_task_switch(sub_100133E90, v11, v12);
  }

  else
  {
    v4 = *(v1 + 472);
    v5 = (*(v1 + 464) - 1) & *(v1 + 464);
    while (v5)
    {
      v6 = v5;
LABEL_10:
      *(v1 + 464) = v6;
      *(v1 + 472) = v4;
      v5 = (v6 - 1) & v6;
      v8 = *(*(v1 + 416) + *(v1 + 456));
      *(v1 + 480) = v8;
      if (v8)
      {

        Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
        v9 = swift_task_alloc();
        *(v1 + 488) = v9;
        *v9 = v1;
        v9[1] = sub_1001338E8;
        a1 = *(v1 + 368);

        return Session.peerToken(peer:)(a1);
      }
    }

    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v7 >= (((1 << *(v1 + 512)) + 63) >> 6))
      {
        v10 = *(v1 + 416);

        v3 = 0;
        goto LABEL_15;
      }

      v6 = *(*(v1 + 448) + 8 * v7 + 56);
      ++v4;
      if (v6)
      {
        v4 = v7;
        goto LABEL_10;
      }
    }

    __break(1u);
    return Session.peerToken(peer:)(a1);
  }
}

uint64_t sub_100133CB8(uint64_t a1)
{
  v2 = *(v1 + 472);
  v3 = (*(v1 + 464) - 1) & *(v1 + 464);
  while (v3)
  {
    v4 = v3;
LABEL_8:
    *(v1 + 464) = v4;
    *(v1 + 472) = v2;
    v3 = (v4 - 1) & v4;
    v6 = *(*(v1 + 416) + *(v1 + 456));
    *(v1 + 480) = v6;
    if (v6)
    {

      Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
      v7 = swift_task_alloc();
      *(v1 + 488) = v7;
      *v7 = v1;
      v7[1] = sub_1001338E8;
      a1 = *(v1 + 368);

      return Session.peerToken(peer:)(a1);
    }
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return Session.peerToken(peer:)(a1);
    }

    if (v5 >= (((1 << *(v1 + 512)) + 63) >> 6))
    {
      break;
    }

    v4 = *(*(v1 + 448) + 8 * v5 + 56);
    ++v2;
    if (v4)
    {
      v2 = v5;
      goto LABEL_8;
    }
  }

  v8 = *(v1 + 416);

  *(v1 + 504) = 0;
  v9 = *(v1 + 400);
  v10 = *(v1 + 408);

  return _swift_task_switch(sub_100133E90, v9, v10);
}

uint64_t sub_100133E90()
{

  v1 = v0[63];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken);
    v4 = Strong;
    v5 = v3;

    if (v1)
    {
      if (v3)
      {
        sub_10000905C(0, &qword_1006B32C0);
        v6 = v1;
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {
LABEL_32:
          if (qword_1006AEBE0 != -1)
          {
            swift_once();
          }

          v38 = type metadata accessor for Logger();
          sub_100005B14(v38, qword_1006D4630);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&_mh_execute_header, v39, v40, "FMPersonDetailContentViewController: Peer token has not changed. No need to reconfigure", v41, 2u);
          }

          swift_beginAccess();
          v36 = swift_unknownObjectWeakLoadStrong();

          if (v36)
          {
            v37 = &OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenReevaluationTask;
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }
    }

    else
    {
      if (!v3)
      {
        goto LABEL_32;
      }
    }
  }

  else if (!v1)
  {
    goto LABEL_32;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMPersonDetailContentViewController: Peer tokens don't match, discarding connection manager for reconfigure", v11, 2u);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = *(v12 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken);
    *(v12 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken) = 0;

    v15 = sub_10012A7F8();
    v17 = v16;
    v18 = type metadata accessor for FMIPPeopleFindingEvent();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      FMIPPeopleFindingEvent.hasToken.setter();
    }

    (v15)(v0 + 2, 0);
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(v19 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable);
    v20[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable] = 0;
    sub_10012A29C(v21);
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    v24 = v0[43];
    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    v26 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startDiscoveryTimestamp;
    swift_beginAccess();
    sub_1000BBF40(v24, v23 + v26, &unk_1006B0000);
    swift_endAccess();
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager);
    v29 = v27;
    v30 = v28;

    if (v28)
    {
      dispatch thunk of FMConnectionManager.disconnect()();
    }
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = *&v31[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager];
    *&v31[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager] = 0;
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = *(v33 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask);
    v35 = v33;

    if (v34)
    {
      sub_10007EBC0(&unk_1006AF7B0);
      Task.cancel()();
    }
  }

  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();

  if (v36)
  {
    v37 = &OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask;
LABEL_38:
    *&v36[*v37] = 0;
  }

LABEL_39:

  v42 = v0[1];

  return v42();
}

uint64_t sub_100134454()
{
  v1 = type metadata accessor for FMIPAnalyticsProductType();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin(v1);
  v34 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FMIPAnalyticsOwnerContext();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPActionEvent();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FMIPAnalyticsActionType();
  v8 = *(v27 - 8);
  v9 = __chkstk_darwin(v27);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v13 - 8);
  v15 = (&v26 - v14);
  v16 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v16 - 8);
  v18 = &v26 - v17;
  v33 = v0;
  v19 = *(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
  v20 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v19 + v20, v15, &qword_1006B3260);
  v21 = type metadata accessor for FMPersonDetailViewModel(0);
  result = (*(*(v21 - 8) + 48))(v15, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = *v15;
    v24 = v15[1];

    sub_100140DB8(v15, type metadata accessor for FMPersonDetailViewModel);
    sub_1000BD300(v23, v24, v18);

    sub_1000FE31C(v18);
    v25 = v27;
    (*(v8 + 104))(v12, enum case for FMIPAnalyticsActionType.directions(_:), v27);
    (*(v8 + 16))(v26, v12, v25);
    (*(v28 + 104))(v30, enum case for FMIPAnalyticsOwnerContext.none(_:), v29);
    (*(v35 + 104))(v34, enum case for FMIPAnalyticsProductType.person(_:), v36);

    FMIPActionEvent.init(type:ownerContext:productType:)();
    FMIPManager.enqueue(actionEvent:)();
    (*(v31 + 8))(v7, v32);
    (*(v8 + 8))(v12, v25);
    sub_100012DF0(v18, &qword_1006B0050);
  }

  return result;
}

void sub_1001349A0()
{
  v201 = type metadata accessor for FMIPAnalyticsProductType();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v199 = &v184 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for FMIPAnalyticsOwnerContext();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v196 = &v184 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for FMIPActionEvent();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v192 = &v184 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for FMIPAnalyticsActionType();
  v191 = *(v193 - 8);
  v4 = __chkstk_darwin(v193);
  v189 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v190 = &v184 - v6;
  v7 = sub_10007EBC0(&qword_1006B32A8);
  __chkstk_darwin(v7 - 8);
  v208 = &v184 - v8;
  v206 = type metadata accessor for FMFindingProductType();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v207 = (&v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v215 = type metadata accessor for FMFindingTechnology();
  v218 = *(v215 - 8);
  v10 = __chkstk_darwin(v215);
  v209 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v214 = &v184 - v12;
  v13 = type metadata accessor for FMFindableObject();
  v211 = *(v13 - 8);
  __chkstk_darwin(v13);
  v216 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v15 - 8);
  v223 = &v184 - v16;
  v226._countAndFlagsBits = type metadata accessor for UUID();
  v225 = *(v226._countAndFlagsBits - 8);
  v17 = __chkstk_darwin(v226._countAndFlagsBits);
  v213 = &v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v224 = &v184 - v19;
  v222 = type metadata accessor for HashAlgorithm();
  v221 = *(v222 - 1);
  __chkstk_darwin(v222);
  v220 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227._object = type metadata accessor for String.Encoding();
  v227._countAndFlagsBits = *(v227._object - 1);
  __chkstk_darwin(v227._object);
  v226._object = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007EBC0(&qword_1006B3260);
  v23 = __chkstk_darwin(v22 - 8);
  v217 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v184 - v26;
  v28 = __chkstk_darwin(v25);
  v204 = &v184 - v29;
  v30 = __chkstk_darwin(v28);
  v203 = &v184 - v31;
  v32 = __chkstk_darwin(v30);
  v210 = (&v184 - v33);
  __chkstk_darwin(v32);
  v35 = &v184 - v34;
  v187 = type metadata accessor for FindingMode(0);
  v36 = __chkstk_darwin(v187);
  v186 = &v184 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v40 = &v184 - v39;
  __chkstk_darwin(v38);
  v202 = (&v184 - v41);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v228 = v27;
  v188 = v40;
  v212 = v13;
  v230 = v0;
  v42 = type metadata accessor for Logger();
  v219 = sub_100005B14(v42, qword_1006D4630);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "FMPersonDetailContentViewController Handle Find", v45, 2u);
  }

  v46 = objc_opt_self();
  v47 = [v46 mainBundle];
  v232._object = 0x80000001005800E0;
  v48._countAndFlagsBits = 0xD00000000000003ALL;
  v48._object = 0x8000000100580080;
  v49.value._object = 0x80000001005800C0;
  v232._countAndFlagsBits = 0xD00000000000001ALL;
  v49.value._countAndFlagsBits = 0xD000000000000019;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v232);

  v51 = [v46 mainBundle];
  v233._object = 0x80000001005800E0;
  v52._countAndFlagsBits = 0xD000000000000040;
  v52._object = 0x8000000100580100;
  v229 = "_ACCOUNT_STATE_ALERT_TITLE";
  v53.value._object = 0x80000001005800C0;
  v233._countAndFlagsBits = 0xD00000000000001ALL;
  v53.value._countAndFlagsBits = 0xD000000000000019;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v233);

  v55 = v230;
  v56 = sub_100431578(v230);

  if (!v56)
  {
    return;
  }

  if (v55[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable] != 1)
  {
    v79 = [v46 mainBundle];
    v234._object = 0x80000001005800E0;
    v80._countAndFlagsBits = 0xD000000000000029;
    v80._object = 0x8000000100580150;
    v81 = v229;
    v82.value._object = (v229 | 0x8000000000000000);
    v234._countAndFlagsBits = 0xD00000000000001ALL;
    v82.value._countAndFlagsBits = 0xD000000000000019;
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    v227 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v82, v79, v83, v234);

    v84 = [v46 mainBundle];
    v235._object = 0x80000001005800E0;
    v85._countAndFlagsBits = 0xD00000000000002CLL;
    v85._object = 0x8000000100580180;
    v86.value._object = (v81 | 0x8000000000000000);
    v235._countAndFlagsBits = 0xD00000000000001ALL;
    v86.value._countAndFlagsBits = 0xD000000000000019;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    v226 = NSLocalizedString(_:tableName:bundle:value:comment:)(v85, v86, v84, v87, v235);

    sub_10007EBC0(&unk_1006B20B0);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_100552220;
    v89 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource;
    v90 = *&v55[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource];
    v91 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
    swift_beginAccess();
    v92 = v228;
    sub_100007204(v90 + v91, v228, &qword_1006B3260);
    v93 = type metadata accessor for FMPersonDetailViewModel(0);
    v94 = *(*(v93 - 8) + 48);
    if (v94(v92, 1, v93) != 1)
    {
      v95 = *(v92 + 128);
      v96 = *(v92 + 136);

      sub_100140DB8(v92, type metadata accessor for FMPersonDetailViewModel);
      *(v88 + 56) = &type metadata for String;
      *(v88 + 64) = sub_10008EE84();
      if (!v96)
      {
        v97 = *&v230[v89];
        v98 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
        swift_beginAccess();
        v99 = v97 + v98;
        v100 = v217;
        sub_100007204(v99, v217, &qword_1006B3260);
        if (v94(v100, 1, v93) == 1)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v95 = *(v100 + 96);
        v96 = *(v100 + 104);

        sub_100140DB8(v100, type metadata accessor for FMPersonDetailViewModel);
      }

      *(v88 + 32) = v95;
      *(v88 + 40) = v96;
      String.init(format:_:)();

      v101 = String._bridgeToObjectiveC()();

      v102 = String._bridgeToObjectiveC()();

      v103 = [objc_opt_self() alertControllerWithTitle:v101 message:v102 preferredStyle:1];

      v104 = [v46 mainBundle];
      v236._object = 0x80000001005800E0;
      v105._countAndFlagsBits = 0xD00000000000002ELL;
      v105._object = 0x80000001005801B0;
      v106.value._object = (v229 | 0x8000000000000000);
      v236._countAndFlagsBits = 0xD00000000000001ALL;
      v106.value._countAndFlagsBits = 0xD000000000000019;
      v107._countAndFlagsBits = 0;
      v107._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v105, v106, v104, v107, v236);

      v108 = String._bridgeToObjectiveC()();

      v76 = [objc_opt_self() actionWithTitle:v108 style:1 handler:0];

      [v103 addAction:v76];
      v109 = v103;
      v110 = [v109 popoverPresentationController];
      v111 = v230;
      if (v110)
      {
        v112 = v110;
        [v110 setSourceView:*&v230[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_findButton]];
      }

      v113 = [v109 popoverPresentationController];

      if (v113)
      {
        [*&v111[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_findButton] bounds];
        [v113 setSourceRect:?];
      }

      [v111 presentViewController:v109 animated:1 completion:0];

      goto LABEL_24;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v57 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource;
  v58 = *&v55[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource];
  v59 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v58 + v59, v35, &qword_1006B3260);
  v60 = type metadata accessor for FMPersonDetailViewModel(0);
  v229 = *(*(v60 - 8) + 48);
  if ((v229)(v35, 1, v60) == 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  sub_100140DB8(v35, type metadata accessor for FMPersonDetailViewModel);
  object = v226._object;
  static String.Encoding.utf8.getter();
  v62 = String.data(using:allowLossyConversion:)();
  v64 = v63;

  (*(v227._countAndFlagsBits + 8))(object, v227._object);
  if (v64 >> 60 == 15)
  {
    return;
  }

  v65 = v221;
  v66 = v220;
  v67 = v222;
  v221[13](v220, enum case for HashAlgorithm.sha256(_:), v222);
  v68 = Data.hash(algorithm:)();
  v70 = v69;
  sub_10005BA6C(v62, v64);
  (v65[1])(v66, v67);
  v227._object = v68;
  v231[0] = v68;
  v231[1] = v70;
  v228 = v70;
  sub_100140D64();
  v71 = DataProtocol.deprecated_bytes.getter();
  if (*(v71 + 16) >= 0x11uLL)
  {
    sub_10013C838(v71, v71 + 32, 0, 0x21uLL);
  }

  v72 = v230;
  v73 = v225;
  countAndFlagsBits = v226._countAndFlagsBits;
  v75 = v223;

  UUID.init(bytes:)();
  if ((*(v73 + 48))(v75, 1, countAndFlagsBits) == 1)
  {

    sub_100012DF0(v75, &unk_1006B20C0);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "FMPersonDetailContentViewController handle find error: no friendUUID", v78, 2u);
    }

    sub_10000A858(v227._object, v228);
LABEL_24:

    return;
  }

  v114 = v57;
  (*(v73 + 32))(v224, v75, countAndFlagsBits);
  v115 = *&v72[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken];
  if (v115)
  {
    v116 = *&v72[v57];
    v117 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
    swift_beginAccess();
    v118 = v116 + v117;
    v119 = v210;
    sub_100007204(v118, v210, &qword_1006B3260);
    v120 = v229;
    if ((v229)(v119, 1, v60) != 1)
    {
      v121 = v119[13];
      v227._countAndFlagsBits = v119[12];
      v222 = v115;
      v226._object = v121;

      sub_100140DB8(v119, type metadata accessor for FMPersonDetailViewModel);
      (*(v73 + 16))(v213, v224, v226._countAndFlagsBits);
      v122 = sub_10007EBC0(&qword_1006C0020);
      v123 = *(v122 + 48);
      v124 = v214;
      *v214 = 1;
      v125 = enum case for FMFindingType.friend(_:);
      v126 = type metadata accessor for FMFindingType();
      v127 = *(v126 - 8);
      v128 = *(v127 + 104);
      LODWORD(v223) = v125;
      v129 = v125;
      v130 = v126;
      v221 = v128;
      v220 = (v127 + 104);
      (v128)(&v124[v123], v129, v126);
      v131 = *(v218 + 104);
      LODWORD(v217) = enum case for FMFindingTechnology.precision(_:);
      v218 += 104;
      v210 = v131;
      v131(v124);
      v132 = *&v72[v114];
      v133 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
      swift_beginAccess();
      v134 = v132 + v133;
      v135 = v203;
      sub_100007204(v134, v203, &qword_1006B3260);
      if (v120(v135, 1, v60) != 1)
      {
        v185 = v122;
        v136 = *(v135 + *(v60 + 68));
        v137 = v136;
        sub_100140DB8(v135, type metadata accessor for FMPersonDetailViewModel);
        v138 = *&v72[v114];
        v139 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
        swift_beginAccess();
        v140 = v138 + v139;
        v141 = v204;
        sub_100007204(v140, v204, &qword_1006B3260);
        if (v120(v141, 1, v60) != 1)
        {

          v142 = (v141 + *(v60 + 60));
          v144 = *v142;
          v143 = v142[1];

          sub_100140DB8(v141, type metadata accessor for FMPersonDetailViewModel);
          v145 = v207;
          *v207 = v136;
          v145[1] = v144;
          v145[2] = v143;
          (*(v205 + 104))(v145, enum case for FMFindingProductType.person(_:), v206);
          v146 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
          (*(*(v146 - 8) + 56))(v208, 1, 1, v146);
          v147 = v222;
          v148 = v216;
          FMFindableObject.init(name:findingIdentifier:findingTechnology:findingProductType:videoInfo:discoveryToken:)();
          v149 = v212;
          v231[3] = v212;
          v231[4] = &protocol witness table for FMFindableObject;
          v150 = sub_100008FC0(v231);
          v151 = v211;
          v152 = v149;
          (*(v211 + 16))(v150, v148, v149);
          v153 = *(v185 + 48);
          v154 = v209;
          *v209 = 1;
          (v221)(&v154[v153], v223, v130);
          (v210)(v154, v217, v215);
          v155 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager;
          v156 = *&v72[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager];
          if (v156)
          {
            v157 = v156;
            dispatch thunk of FMPrecisionConnectionManager.arSession.getter();
          }

          v161 = v225;
          type metadata accessor for FMFindingSession();
          v162 = FMFindingSession.__allocating_init(findable:findingTechnology:arSession:)();
          v163 = *&v72[v155];
          if (v163)
          {
            v227._countAndFlagsBits = v147;
            v164 = v202;
            *v202 = v162;
            v164[1] = v163;
            v165 = v162;
            swift_storeEnumTagMultiPayload();
            v166 = v164;
            v167 = v188;
            sub_10014101C(v166, v188, type metadata accessor for FindingMode);
            v226._object = v163;
            v229 = v165;

            v168 = Logger.logObject.getter();
            v169 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v168, v169))
            {
              v170 = swift_slowAlloc();
              v171 = swift_slowAlloc();
              v231[0] = v171;
              *v170 = 136315138;
              sub_10014101C(v167, v186, type metadata accessor for FindingMode);
              v172 = String.init<A>(describing:)();
              v174 = v173;
              sub_100140DB8(v167, type metadata accessor for FindingMode);
              v175 = sub_100005B4C(v172, v174, v231);
              v151 = v211;

              *(v170 + 4) = v175;
              _os_log_impl(&_mh_execute_header, v168, v169, "FMPersonDetailContentViewController: Present finding experience: %s", v170, 0xCu);
              sub_100006060(v171);
              v72 = v230;
            }

            else
            {

              sub_100140DB8(v167, type metadata accessor for FindingMode);
            }

            v179 = v191;
            v180 = v190;
            v181 = v193;
            (*(v191 + 104))(v190, enum case for FMIPAnalyticsActionType.precisionFind(_:), v193);
            (*(v179 + 16))(v189, v180, v181);
            (*(v194 + 104))(v196, enum case for FMIPAnalyticsOwnerContext.none(_:), v195);
            (*(v200 + 104))(v199, enum case for FMIPAnalyticsProductType.person(_:), v201);

            v182 = v192;
            FMIPActionEvent.init(type:ownerContext:productType:)();
            FMIPManager.enqueue(actionEvent:)();
            (*(v197 + 8))(v182, v198);
            (*(v179 + 8))(v180, v181);

            v183 = v202;
            sub_100161B04(v202, v72);
            sub_10000A858(v227._object, v228);

            (*(v151 + 8))(v216, v212);
            (*(v225 + 8))(v224, v226._countAndFlagsBits);
            sub_100140DB8(v183, type metadata accessor for FindingMode);
          }

          else
          {
            v176 = Logger.logObject.getter();
            v177 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v176, v177))
            {
              v178 = swift_slowAlloc();
              *v178 = 0;
              _os_log_impl(&_mh_execute_header, v176, v177, "FMPersonDetailContentViewController handle find error: no connection manager", v178, 2u);
            }

            sub_10000A858(v227._object, v228);

            (*(v151 + 8))(v216, v152);
            (*(v161 + 8))(v224, v226._countAndFlagsBits);
          }

          return;
        }

LABEL_48:
        __break(1u);
        return;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v158 = Logger.logObject.getter();
  v159 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    *v160 = 0;
    _os_log_impl(&_mh_execute_header, v158, v159, "FMPersonDetailContentViewController handle find error: no peer token", v160, 2u);
  }

  sub_10000A858(v227._object, v228);

  (*(v73 + 8))(v224, countAndFlagsBits);
}

uint64_t sub_100136700()
{
  v95 = type metadata accessor for FMFFriend();
  v0 = *(v95 - 8);
  __chkstk_darwin(v95);
  v88 = &v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10007EBC0(&qword_1006B3260);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = (&v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = (&v86 - v6);
  v8 = sub_10007EBC0(&qword_1006B0050);
  v9 = __chkstk_darwin(v8 - 8);
  v89 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v86 - v11;
  v13 = sub_10007EBC0(&qword_1006AF740);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v86 - v18;
  v20 = __chkstk_darwin(v17);
  v93 = &v86 - v21;
  __chkstk_darwin(v20);
  v96 = &v86 - v22;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v91 = v19;
  v23 = type metadata accessor for Logger();
  sub_100005B14(v23, qword_1006D4630);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "FMPersonDetailContentViewController: handleLocationLabel", v26, 2u);
  }

  v90 = v16;

  v94 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v92 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource;
  v27 = *&v97[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource];
  v28 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v27 + v28, v7, &qword_1006B3260);
  v29 = type metadata accessor for FMPersonDetailViewModel(0);
  v30 = *(*(v29 - 8) + 48);
  result = v30(v7, 1, v29);
  if (result == 1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v32 = *v7;
  v33 = v7[1];

  sub_100140DB8(v7, type metadata accessor for FMPersonDetailViewModel);
  sub_1000BD300(v32, v33, v12);

  v34 = v0;
  v35 = *(v0 + 48);
  v36 = v95;
  v37 = v35(v12, 1, v95);
  v87 = v34;
  if (v37 == 1)
  {
    sub_100012DF0(v12, &qword_1006B0050);
    v38 = type metadata accessor for FMFLocation();
    (*(*(v38 - 8) + 56))(v96, 1, 1, v38);
  }

  else
  {
    FMFFriend.location.getter();
    (*(v34 + 8))(v12, v36);
  }

  v39 = *&v97[v92];
  v40 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v39 + v40, v5, &qword_1006B3260);
  result = v30(v5, 1, v29);
  if (result == 1)
  {
    goto LABEL_27;
  }

  v41 = *v5;
  v42 = v5[1];

  sub_100140DB8(v5, type metadata accessor for FMPersonDetailViewModel);
  v43 = v89;
  sub_1000BD300(v41, v42, v89);

  v44 = v95;
  v45 = v35(v43, 1, v95);
  v46 = v91;
  if (v45 == 1)
  {

    sub_100012DF0(v43, &qword_1006B0050);
    v47 = type metadata accessor for FMFLocation();
    v48 = v93;
    (*(*(v47 - 8) + 56))(v93, 1, 1, v47);
  }

  else
  {
    v49 = v87;
    v50 = v88;
    (*(v87 + 32))(v88, v43, v44);
    v48 = v93;
    dispatch thunk of FMFManager.unshiftedLocation(for:)();
    (*(v49 + 8))(v50, v44);
  }

  v51 = v90;
  v52 = *&v97[v94];
  sub_100007204(v48, v90, &qword_1006AF740);
  v53 = type metadata accessor for FMFLocation();
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  if (v55(v51, 1, v53) == 1)
  {
    sub_100007204(v96, v46, &qword_1006AF740);
    v56 = v55(v51, 1, v53);

    if (v56 != 1)
    {
      sub_100012DF0(v51, &qword_1006AF740);
    }
  }

  else
  {
    (*(v54 + 32))(v46, v51, v53);
    (*(v54 + 56))(v46, 0, 1, v53);
  }

  v57 = objc_allocWithZone(type metadata accessor for FMLabelViewController());
  v58 = sub_1003D8234(v52, v46, 0);

  v59 = v96;
  v60 = sub_100050DA8(v96, 1);
  v62 = v61;
  v64 = v63;
  v66 = v65;
  sub_10007EBC0(&unk_1006AF770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552210;
  v68 = [objc_opt_self() mainBundle];
  v99._object = 0x8000000100579940;
  v69._object = 0x8000000100579920;
  v99._countAndFlagsBits = 0xD000000000000030;
  v69._countAndFlagsBits = 0xD00000000000001ELL;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v99);

  *(inited + 32) = v71;
  v72 = static PublishedLocation.Label.noLocationLabel.getter();
  *(inited + 48) = v72;
  *(inited + 56) = v73;
  v98[0] = v64;
  v98[1] = v66;
  __chkstk_darwin(v72);
  v99._object = v98;
  v74 = sub_10008A40C(sub_10011F7D4, (&v86 - 4), inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v75 = HIBYTE(v66) & 0xF;
  if ((v66 & 0x2000000000000000) == 0)
  {
    v75 = v64 & 0xFFFFFFFFFFFFLL;
  }

  v76 = &v58[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress];
  v77 = *&v58[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress];
  v78 = *&v58[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 8];
  if (v74)
  {
    v79 = 256;
  }

  else
  {
    v79 = 0;
  }

  if (v75)
  {
    v80 = v79 + 1;
  }

  else
  {
    v80 = v79;
  }

  v81 = *(v76 + 2);
  v82 = *(v76 + 3);
  *v76 = v60;
  *(v76 + 1) = v62;
  *(v76 + 2) = v64;
  *(v76 + 3) = v66;
  *(v76 + 16) = v80;
  sub_10008ECE4(v77, v78, v81, v82);
  v83 = objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
  v84 = v58;
  v85 = sub_1000CC510(v84, 2);
  [v97 presentViewController:v85 animated:1 completion:0];

  sub_100012DF0(v93, &qword_1006AF740);
  return sub_100012DF0(v59, &qword_1006AF740);
}

uint64_t sub_100137198()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v2 - 8);
  v4 = (&v18 - v3);
  v5 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMPersonDetailContentViewController: handleContact", v11, 2u);
  }

  v12 = *&v1[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource];
  v13 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v12 + v13, v4, &qword_1006B3260);
  v14 = type metadata accessor for FMPersonDetailViewModel(0);
  result = (*(*(v14 - 8) + 48))(v4, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = *v4;
    v17 = v4[1];

    sub_100140DB8(v4, type metadata accessor for FMPersonDetailViewModel);
    sub_1000BD300(v16, v17, v7);

    sub_1000FBCEC(v7, v1);

    return sub_100012DF0(v7, &qword_1006B0050);
  }

  return result;
}

uint64_t sub_1001374A0()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v2 - 8);
  v4 = (&v24 - v3);
  v5 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for FMFFriend();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v24 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v15 = *&v1[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource];
  v16 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v15 + v16, v4, &qword_1006B3260);
  v17 = type metadata accessor for FMPersonDetailViewModel(0);
  result = (*(*(v17 - 8) + 48))(v4, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = *v4;
    v20 = v4[1];

    sub_100140DB8(v4, type metadata accessor for FMPersonDetailViewModel);
    sub_1000BD300(v19, v20, v7);

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_100012DF0(v7, &qword_1006B0050);
    }

    else
    {
      (*(v9 + 32))(v14, v7, v8);
      (*(v9 + 16))(v12, v14, v8);
      type metadata accessor for FMFAskToFollowAction();
      swift_allocObject();
      v21 = FMFAskToFollowAction.init(friend:)();
      v22 = swift_allocObject();
      *(v22 + 16) = v1;

      v23 = v1;
      sub_1000FB600(v21, sub_100140D5C, v22);

      return (*(v9 + 8))(v14, v8);
    }
  }

  return result;
}

void sub_100137844(uint64_t a1, uint64_t a2, char *a3)
{
  v56 = a3;
  v5 = type metadata accessor for FMFActionStatus();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v54 - v9;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = *(v6 + 16);
  v60 = a1;
  v12(v10, a1, v5);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v55 = a2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 136315394;
    v61 = 0;
    v62 = 0xE000000000000000;
    v63[0] = v17;
    _print_unlocked<A, B>(_:_:)();
    v18 = v61;
    v19 = v62;
    v20 = *(v6 + 8);
    v57 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v58 = v20;
    v20(v10, v5);
    v21 = sub_100005B4C(v18, v19, v63);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v61 = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v22 = String.init<A>(describing:)();
    v24 = sub_100005B4C(v22, v23, v63);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMPersonDetailContentViewController: Stop following completed with status: %s, error: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v25 = *(v6 + 8);
    v57 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v58 = v25;
    v25(v10, v5);
  }

  v26 = objc_opt_self();
  v27 = [v26 mainBundle];
  v28._countAndFlagsBits = 0xD00000000000001FLL;
  v64._object = 0x800000010057FEC0;
  v28._object = 0x800000010057FEA0;
  v64._countAndFlagsBits = 0xD000000000000031;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v64);

  v30.super.isa = [v26 mainBundle];
  v31._countAndFlagsBits = 0xD000000000000021;
  v65._object = 0x800000010057FF30;
  v31._object = 0x800000010057FF00;
  v65._countAndFlagsBits = 0xD000000000000033;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v65);

  v33 = v59;
  (*(v6 + 104))(v59, enum case for FMFActionStatus.success(_:), v5);
  sub_100141248(&qword_1006B32A0, &type metadata accessor for FMFActionStatus);
  LOBYTE(v30.super.isa) = dispatch thunk of static Equatable.== infix(_:_:)();
  v58(v33, v5);
  if (v30.super.isa)
  {
    v34 = &selRef__enter3DMode;
  }

  else
  {

    if (v55)
    {
      swift_getErrorValue();
      if (sub_100272000(v63[2]))
      {
        return;
      }
    }

    v34 = &selRef__enter3DMode;
    v35 = [v26 mainBundle];
    v36._countAndFlagsBits = 0xD000000000000019;
    v66._object = 0x800000010057FF90;
    v36._object = 0x800000010057FF70;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    v66._countAndFlagsBits = 0xD00000000000002BLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v66);

    v38 = [v26 mainBundle];
    v39._countAndFlagsBits = 0xD000000000000018;
    v67._countAndFlagsBits = 0xD00000000000002ALL;
    v67._object = 0x800000010057FFE0;
    v39._object = 0x800000010057FFC0;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v67);
  }

  v41 = String._bridgeToObjectiveC()();

  v42 = String._bridgeToObjectiveC()();

  v43 = [objc_opt_self() alertControllerWithTitle:v41 message:v42 preferredStyle:1];

  v44 = [v26 v34[272]];
  v68._object = 0x8000000100580040;
  v45._object = 0x8000000100580010;
  v68._countAndFlagsBits = 0xD00000000000003DLL;
  v45._countAndFlagsBits = 0xD00000000000002BLL;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v68);

  v47 = String._bridgeToObjectiveC()();

  v48 = [objc_opt_self() actionWithTitle:v47 style:1 handler:0];

  [v43 addAction:v48];
  v49 = v43;
  v50 = [v49 popoverPresentationController];
  v51 = v56;
  if (v50)
  {
    v52 = v50;
    [v50 setSourceView:*&v56[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startFollowingButton]];
  }

  v53 = [v49 popoverPresentationController];

  if (v53)
  {
    [*&v51[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startFollowingButton] bounds];
    [v53 setSourceRect:?];
  }

  [v51 presentViewController:v49 animated:1 completion:0];
}

uint64_t sub_10013801C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v2 - 8);
  v4 = (&v14 - v3);
  v5 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
  v9 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v8 + v9, v4, &qword_1006B3260);
  v10 = type metadata accessor for FMPersonDetailViewModel(0);
  result = (*(*(v10 - 8) + 48))(v4, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = *v4;
    v13 = v4[1];

    sub_100140DB8(v4, type metadata accessor for FMPersonDetailViewModel);
    sub_1000BD300(v12, v13, v7);

    sub_1000FD204(v7, State.rawValue.getter, 0);

    return sub_100012DF0(v7, &qword_1006B0050);
  }

  return result;
}

uint64_t sub_100138248()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v2 - 8);
  v4 = (&v19 - v3);
  v5 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_removeFriendButton;
  v9 = [*&v1[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_removeFriendButton] superview];
  if (v9)
  {

    v10 = *&v1[v8];
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  v12 = *&v1[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource];
  v13 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v12 + v13, v4, &qword_1006B3260);
  v14 = type metadata accessor for FMPersonDetailViewModel(0);
  result = (*(*(v14 - 8) + 48))(v4, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = *v4;
    v17 = v4[1];

    sub_100140DB8(v4, type metadata accessor for FMPersonDetailViewModel);
    sub_1000BD300(v16, v17, v7);

    v18 = v10;
    sub_1000FC6C0(v7, v10, v1, State.rawValue.getter, 0);

    return sub_100012DF0(v7, &qword_1006B0050);
  }

  return result;
}

void sub_100138504()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v2 - 8);
  v4 = (&v29 - v3);
  v5 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for FMFFriend();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMPersonDetailContentViewController: Start Sharing Location button pressed", v14, 2u);
  }

  v15 = *&v1[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource];
  v16 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v15 + v16, v4, &qword_1006B3260);
  v17 = type metadata accessor for FMPersonDetailViewModel(0);
  if ((*(*(v17 - 8) + 48))(v4, 1, v17) == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = *v4;
    v19 = v4[1];

    sub_100140DB8(v4, type metadata accessor for FMPersonDetailViewModel);
    sub_1000BD300(v18, v19, v7);

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100012DF0(v7, &qword_1006B0050);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "FMPersonDetailContentViewController: cannot start sharing with unknown person", v22, 2u);
      }
    }

    else
    {
      v23 = v29;
      (*(v9 + 32))(v29, v7, v8);
      v24 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startSharingButton;
      [*&v1[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startSharingButton] setUserInteractionEnabled:0];
      v25 = *&v1[v24];
      v26 = swift_allocObject();
      *(v26 + 16) = v1;

      v27 = v25;
      v28 = v1;
      sub_1000F7A2C(v23, 1, v1, v25, sub_100140D3C, v26);

      (*(v9 + 8))(v23, v8);
    }
  }
}

void sub_1001389E0(void *a1, int a2)
{
  v3 = v2;
  v35 = a2;
  v5 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v5 - 8);
  v7 = (&v34 - v6);
  v8 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v37 = type metadata accessor for FMFFriend();
  v11 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v34 = a1;
  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMPersonDetailContentViewController: Stop Sharing Location button pressed", v16, 2u);
  }

  v17 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource;
  v18 = *&v3[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource];
  v19 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v18 + v19, v7, &qword_1006B3260);
  v20 = type metadata accessor for FMPersonDetailViewModel(0);
  if ((*(*(v20 - 8) + 48))(v7, 1, v20) == 1)
  {
    __break(1u);
    return;
  }

  v21 = *v7;
  v22 = v7[1];

  sub_100140DB8(v7, type metadata accessor for FMPersonDetailViewModel);
  sub_1000BD300(v21, v22, v10);

  v23 = v37;
  if ((*(v11 + 48))(v10, 1, v37) != 1)
  {
    v27 = v36;
    (*(v11 + 32))(v36, v10, v23);
    v28 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stopSharingButton;
    [*&v3[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stopSharingButton] setUserInteractionEnabled:0];
    [*&v3[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startSharingButton] setUserInteractionEnabled:0];
    [*&v3[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_timeRemaining] setUserInteractionEnabled:0];
    *(*&v3[v17] + 104) = 0;

    sub_1003C80C8(v29);

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if ((v35 & 1) == 0)
    {

      sub_1000F9F94(v27, sub_100140D34, v30);
LABEL_18:

      (*(v11 + 8))(v27, v23);
      return;
    }

    v39 = &type metadata for SolariumFeatureFlag;
    v40 = sub_10000BD04();
    v31 = isFeatureEnabled(_:)();
    sub_100006060(v38);
    v32 = v34;
    if (v34)
    {

      v33 = [v32 view];
      if (v33)
      {
LABEL_17:

        sub_1000F992C(v27, (v31 & 1) == 0, v3, v33, sub_100140D34, v30);

        goto LABEL_18;
      }
    }

    else
    {
    }

    v33 = *&v3[v28];
    goto LABEL_17;
  }

  sub_100012DF0(v10, &qword_1006B0050);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "FMPersonDetailContentViewController: cannot stop sharing with unknown person", v26, 2u);
  }
}

uint64_t sub_100138F88(uint64_t a1)
{
  v2 = type metadata accessor for FMFActionStatus();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v13 = 136315138;
    v10(v6, v8, v2);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    (*(v3 + 8))(v8, v2);
    v17 = sub_100005B4C(v14, v16, v32);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMPersonDetailContentViewController: handleStopSharing completion handler. Status %s", v13, 0xCu);
    sub_100006060(v31);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(Strong + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stopSharingButton);

    [v20 setUserInteractionEnabled:1];
  }

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v23 = *(v21 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startSharingButton);

    [v23 setUserInteractionEnabled:1];
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = *(v24 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_timeRemaining);

    [v26 setUserInteractionEnabled:1];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(result + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
    v29 = result;

    *(v28 + 104) = 1;
    sub_1003C80C8();
  }

  return result;
}

uint64_t sub_10013947C@<X0>(char *a1@<X8>)
{
  v60 = a1;
  v58 = type metadata accessor for FMFLocationAlert();
  v62 = *(v58 - 8);
  v2 = __chkstk_darwin(v58);
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v56 = &v53 - v4;
  v5 = sub_10007EBC0(&unk_1006B0000);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v53 - v9;
  v63 = type metadata accessor for Date();
  v61 = *(v63 - 8);
  v10 = __chkstk_darwin(v63);
  v54 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v53 - v12;
  v13 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v13 - 8);
  v15 = (&v53 - v14);
  v16 = sub_10007EBC0(&qword_1006B0050);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v53 - v20;
  v22 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
  v23 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v22 + v23, v15, &qword_1006B3260);
  v24 = type metadata accessor for FMPersonDetailViewModel(0);
  result = (*(*(v24 - 8) + 48))(v15, 1, v24);
  if (result != 1)
  {
    v26 = *v15;
    v27 = v15[1];

    sub_100140DB8(v15, type metadata accessor for FMPersonDetailViewModel);
    sub_1000BD300(v26, v27, v21);

    sub_100007204(v21, v19, &qword_1006B0050);
    v28 = type metadata accessor for FMFFriend();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v19, 1, v28) == 1)
    {
      sub_100012DF0(v21, &qword_1006B0050);
      v30 = v19;
    }

    else
    {
      v31 = FMFFriend.locationAlertsOnFriend.getter();
      result = (*(v29 + 8))(v19, v28);
      if (v31)
      {
        v53 = v21;
        v32 = *(v31 + 16);
        v34 = v58;
        v33 = v59;
        if (v32)
        {
          v35 = 0;
          v36 = (v61 + 48);
          v37 = (v62 + 8);
          while (1)
          {
            if (v35 >= *(v31 + 16))
            {
              __break(1u);
              goto LABEL_21;
            }

            (*(v62 + 16))(v33, v31 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v35, v34);
            FMFLocationAlert.muteEndDate.getter();
            v38 = *v36;
            if ((*v36)(v8, 1, v63) != 1)
            {
              break;
            }

            ++v35;
            sub_100012DF0(v8, &unk_1006B0000);
            result = (*v37)(v33, v34);
            if (v32 == v35)
            {
              goto LABEL_10;
            }
          }

          sub_100012DF0(v8, &unk_1006B0000);
          v45 = v62 + 32;
          v46 = v56;
          (*(v62 + 32))(v56, v33, v34);
          v40 = v57;
          FMFLocationAlert.muteEndDate.getter();
          (*(v45 - 24))(v46, v34);
          v41 = v63;
          if (v38(v40, 1, v63) == 1)
          {
            sub_100012DF0(v53, &qword_1006B0050);
            v42 = v60;
            v39 = v61;
            goto LABEL_11;
          }

          v39 = v61;
          v47 = *(v61 + 32);
          v48 = v55;
          v47(v55, v40, v41);
          v49 = v54;
          Date.init()();
          v50 = static Date.> infix(_:_:)();
          v51 = *(v39 + 8);
          v51(v49, v41);
          sub_100012DF0(v53, &qword_1006B0050);
          if (v50)
          {
            v52 = v60;
            v47(v60, v48, v41);
            v44 = v52;
            v43 = 0;
          }

          else
          {
            v51(v48, v41);
            v43 = 1;
            v44 = v60;
          }
        }

        else
        {
LABEL_10:

          sub_100012DF0(v53, &qword_1006B0050);
          v39 = v61;
          v40 = v57;
          v41 = v63;
          (*(v61 + 56))(v57, 1, 1, v63);
          v42 = v60;
LABEL_11:
          sub_100012DF0(v40, &unk_1006B0000);
          v43 = 1;
          v44 = v42;
        }

        return (*(v39 + 56))(v44, v43, 1, v41);
      }

      v30 = v21;
    }

    sub_100012DF0(v30, &qword_1006B0050);
    v43 = 1;
    v44 = v60;
    v39 = v61;
    v41 = v63;
    return (*(v39 + 56))(v44, v43, 1, v41);
  }

LABEL_21:
  __break(1u);
  return result;
}

BOOL sub_100139BF4()
{
  v1 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMFFriend();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 56);
  v9 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10014101C(v8 + v9, v3, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = FMFFriend.locationAlertsOnFriend.getter();
    (*(v5 + 8))(v7, v4);
    if (v10)
    {
      v11 = *(v10 + 16);

      return v11 != 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_100140DB8(v3, type metadata accessor for FMSelectedSection);
    return 0;
  }
}

void sub_100139DE4()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v2 - 8);
  v4 = &v62 - v3;
  v5 = type metadata accessor for Date();
  v72 = *(v5 - 8);
  __chkstk_darwin(v5);
  v71 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B8DD0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v70 = &v62 - v12;
  __chkstk_darwin(v11);
  v14 = &v62 - v13;
  v15 = type metadata accessor for FMSelectionPendingAction(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v69 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v62 - v20;
  __chkstk_darwin(v19);
  v23 = &v62 - v22;
  if (sub_100139BF4())
  {
    v65 = v10;
    v68 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
    v24 = *(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
    v25 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
    swift_beginAccess();
    sub_100007204(v24 + v25, v14, &unk_1006B8DD0);
    v67 = v16;
    v26 = *(v16 + 48);
    if (v26(v14, 1, v15) == 1)
    {
      sub_100012DF0(v14, &unk_1006B8DD0);
    }

    else
    {
      sub_100140CCC(v14, v23, type metadata accessor for FMSelectionPendingAction);
      swift_storeEnumTagMultiPayload();
      v27 = sub_100247790(v23, v21);
      sub_100140DB8(v21, type metadata accessor for FMSelectionPendingAction);
      if (v27)
      {
        v28 = *(*&v1[v68] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
        swift_beginAccess();
        v29 = *(v28 + 8);
        if (v29)
        {
          v63 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention;
          v66 = v5;
          v30 = *&v1[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention];
          v64 = *v28;
          v30[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed] = 0;

          v31 = v30;
          v5 = v66;
          v32 = v31;
          sub_1002B20D8();

          v33 = *&v1[v63];
          sub_10017CC9C(1, v64, v29);
        }
      }

      sub_100140DB8(v23, type metadata accessor for FMSelectionPendingAction);
    }

    sub_10013947C(v4);
    v34 = v72;
    if ((*(v72 + 48))(v4, 1, v5) == 1)
    {
      sub_100012DF0(v4, &unk_1006B0000);
      sub_10013A5BC();
    }

    else
    {
      v64 = v26;
      v35 = *(v34 + 32);
      v66 = v5;
      v35(v71, v4, v5);
      v36 = objc_opt_self();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v38 = [v36 localizedStringFromDate:isa dateStyle:3 timeStyle:0];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention;
      v43 = *&v1[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention];
      sub_10017CC9C(0, 0, 0);

      v44 = *&v1[v42];
      sub_10017CF4C(v39, v41);

      v45 = *&v1[v42];
      v45[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed] = 0;
      v46 = v45;
      sub_1002B20D8();

      v47 = [v1 view];
      if (v47)
      {
        v48 = v47;

        [v48 layoutIfNeeded];

        v49 = *(*&v1[v68] + 56);
        v50 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
        swift_beginAccess();
        v51 = v49 + v50;
        v52 = v70;
        sub_100007204(v51, v70, &unk_1006B8DD0);
        v53 = v64(v52, 1, v15);
        v54 = v67;
        if (v53 == 1)
        {
          (*(v72 + 8))(v71, v66);
          sub_100012DF0(v52, &unk_1006B8DD0);
        }

        else
        {
          v55 = v69;
          sub_100140CCC(v52, v69, type metadata accessor for FMSelectionPendingAction);
          swift_storeEnumTagMultiPayload();
          v56 = sub_100247790(v55, v21);
          sub_100140DB8(v21, type metadata accessor for FMSelectionPendingAction);
          sub_100140DB8(v55, type metadata accessor for FMSelectionPendingAction);
          (*(v72 + 8))(v71, v66);
          if (v56)
          {
            v57 = v68;
            v58 = *(*&v1[v68] + 56);
            v59 = v65;
            (*(v54 + 56))(v65, 1, 1, v15);
            v60 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
            swift_beginAccess();

            sub_1000BBF40(v59, v58 + v60, &unk_1006B8DD0);
            swift_endAccess();

            v61 = (*(*&v1[v57] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo);
            swift_beginAccess();
            *v61 = 0;
            v61[1] = 0;
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {

    sub_10013A5BC();
  }
}

void sub_10013A5BC()
{
  v1 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-v2];
  v4 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v5 = *(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v6 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();
  sub_100007204(v5 + v6, v3, &unk_1006B8DD0);
  v7 = type metadata accessor for FMSelectionPendingAction(0);
  LODWORD(v5) = (*(*(v7 - 8) + 48))(v3, 1, v7);
  sub_100012DF0(v3, &unk_1006B8DD0);
  if (v5 == 1 || (v8 = *(*&v0[v4] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo, swift_beginAccess(), !*(v8 + 8)))
  {
    v9 = *&v0[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention];
    v9[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed] = 1;
    v10 = v9;
    sub_1002B20D8();

    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10013A83C(const char *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v7 = v3;
  v8 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v8 - 8);
  v10 = (&v25 - v9);
  v11 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, a1, v17, 2u);
  }

  v18 = *(v7 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
  v19 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v18 + v19, v10, &qword_1006B3260);
  v20 = type metadata accessor for FMPersonDetailViewModel(0);
  result = (*(*(v20 - 8) + 48))(v10, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = *v10;
    v23 = v10[1];

    sub_100140DB8(v10, type metadata accessor for FMPersonDetailViewModel);
    sub_1000BD300(v22, v23, v13);

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();

    a3(v13, a2, v24);

    sub_100012DF0(v13, &qword_1006B0050);
  }

  return result;
}

void sub_10013AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, const char *a7)
{
  v43 = a7;
  v11 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for FMFActionStatus();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for FMFActionStatus.error(_:))
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4630);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_29;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    if (a2)
    {
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = v24;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    *(v22 + 4) = v24;
    *v23 = v25;
    _os_log_impl(&_mh_execute_header, v20, v21, a5, v22, 0xCu);
    sub_100012DF0(v23, &unk_1006AF760);

LABEL_28:

LABEL_29:

    return;
  }

  if (v18 == enum case for FMFActionStatus.unknown(_:))
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100005B14(v26, qword_1006D4630);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v20, v27))
    {
      goto LABEL_29;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    if (a2)
    {
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v30;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    *(v28 + 4) = v30;
    *v29 = v31;
    _os_log_impl(&_mh_execute_header, v20, v27, a6, v28, 0xCu);
    sub_100012DF0(v29, &unk_1006AF760);

    goto LABEL_28;
  }

  if (v18 == enum case for FMFActionStatus.success(_:))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      v34 = *(Strong + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
      v35 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
      swift_beginAccess();
      sub_100007204(v34 + v35, v13, &qword_1006B3260);
      v36 = type metadata accessor for FMPersonDetailViewModel(0);
      if ((*(*(v36 - 8) + 48))(v13, 1, v36) == 1)
      {
        __break(1u);
      }

      else
      {
        v37 = v13[*(v36 + 88)];
        sub_100140DB8(v13, type metadata accessor for FMPersonDetailViewModel);
        if (v37 == 1)
        {
          PeopleManagementSectionViewModel.isFavorite.setter();
        }
      }
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100005B14(v38, qword_1006D4630);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, v43, v41, 2u);
    }

    (*(v15 + 8))(v17, v14);
  }
}

void sub_10013B150()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v17._object = 0x800000010057FC90;
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x800000010057FC60;
  v17._countAndFlagsBits = 0xD000000000000035;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v17);

  v5 = [v1 mainBundle];
  v18._object = 0x800000010057FE60;
  v6._countAndFlagsBits = 0xD000000000000029;
  v6._object = 0x800000010057FE30;
  v18._countAndFlagsBits = 0xD00000000000003BLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v18);

  v8 = [v1 mainBundle];
  v19._object = 0x8000000100579B60;
  v9._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v9._object = 0xEF454C5449545F4ELL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v19);

  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() actionWithTitle:v11 style:0 handler:0];

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  [v15 addAction:v12];
  [v0 presentViewController:v15 animated:1 completion:0];
}

void sub_10013B49C()
{
  sub_10013C6DC(319, &qword_1006B3F80, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_10013C6DC(319, &qword_1006B3258, &type metadata accessor for FMIPPeopleFindingEvent);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10013B614()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v46 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMFFriend();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = *(*(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource) + 40);
  v15 = *(*v14 + class metadata base offset for ManagedBuffer + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v14 + v16));
  sub_100007204(v14 + v15, v13, &qword_1006B0050);
  os_unfair_lock_unlock((v14 + v16));

  if ((*(v8 + 48))(v13, 1, v7))
  {
    sub_100012DF0(v13, &qword_1006B0050);
  }

  else
  {
    v21 = v48;
    (*(v8 + 16))(v10, v13, v7);
    sub_100012DF0(v13, &qword_1006B0050);
    v22 = FMFFriend.contactHandles.getter();
    (*(v8 + 8))(v10, v7);
    v23 = *(v22 + 16);
    v24 = _swiftEmptyArrayStorage;
    if (v23)
    {
      v24 = sub_10002E21C(*(v22 + 16), 0);
      v25 = sub_100016318(aBlock, v24 + 4, v23, v22);

      sub_10000BEC8();
      if (v25 != v23)
      {
        __break(1u);

        __break(1u);
        return;
      }
    }

    v26 = v21;
    v28 = v45;
    v27 = v46;
    v30 = v43;
    v29 = v44;
    aBlock[0] = v24;
    sub_10000BED0(aBlock);
    v31 = v47;

    if (*(aBlock[0] + 2))
    {
      v32 = v27;
      v34 = *(aBlock[0] + 4);
      v33 = *(aBlock[0] + 5);

      sub_10000905C(0, &qword_1006AEDC0);
      v35 = v40;
      (*(v30 + 104))(v40, enum case for DispatchQoS.QoSClass.default(_:), v29);
      v48 = static OS_dispatch_queue.global(qos:)();
      (*(v30 + 8))(v35, v29);
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      *(v36 + 24) = v33;
      aBlock[4] = sub_100140C54;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_1006289A8;
      v37 = _Block_copy(aBlock);
      static DispatchQoS.unspecified.getter();
      v49 = _swiftEmptyArrayStorage;
      sub_100141248(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v38 = v48;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);

      (*(v31 + 8))(v32, v26);
      (*(v41 + 8))(v28, v42);

      return;
    }
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMPersonDetailContentViewController: Cannot donate to biome, no contact handle", v20, 2u);
  }
}

void sub_10013BD40()
{
  v0 = sub_10007EBC0(&unk_1006B0000);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v19 - v4;
  v6 = [BiomeLibrary() FindMy];
  swift_unknownObjectRelease();
  v7 = [v6 ContactActivity];
  swift_unknownObjectRelease();
  v8 = [v7 source];
  static Date.now.getter();
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v5, 0, 1, v9);
  v11(v3, 1, 1, v9);
  v12 = String._bridgeToObjectiveC()();
  v13 = *(v10 + 48);
  isa = 0;
  if (v13(v5, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v5, v9);
  }

  if (v13(v3, 1, v9) == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v3, v9);
  }

  v16 = objc_allocWithZone(BMFindMyContactActivity);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithHandle:v12 actionType:1 eventTimestampBegin:isa eventTimestampEnd:v15 bundleID:v17];

  [v8 sendEvent:v18];
}

uint64_t sub_10013C018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v33 = a2;
  v4 = sub_10007EBC0(&unk_1006BEF80);
  __chkstk_darwin(v4 - 8);
  v34 = &v30 - v5;
  v31 = type metadata accessor for FMFLocationAlertTarget();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v9 - 8);
  v11 = (&v30 - v10);
  v12 = sub_10007EBC0(&qword_1006B0050);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = *&v3[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource];
  v19 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v18 + v19, v11, &qword_1006B3260);
  v20 = type metadata accessor for FMPersonDetailViewModel(0);
  result = (*(*(v20 - 8) + 48))(v11, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = *v11;
    v23 = v11[1];

    sub_100140DB8(v11, type metadata accessor for FMPersonDetailViewModel);
    sub_1000BD300(v22, v23, v17);

    (*(v6 + 16))(v8, v32, v31);
    sub_100007204(v17, v15, &qword_1006B0050);
    v24 = v34;
    sub_100007204(v33, v34, &unk_1006BEF80);
    v25 = objc_allocWithZone(type metadata accessor for FMLocationAlertViewController(0));

    v27 = sub_100098BC0(v26, v8, v15, 0, v24, 1, 1);
    objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
    v28 = v27;
    v29 = sub_1000CC510(v28, 2);
    [v3 presentViewController:v29 animated:1 completion:0];

    return sub_100012DF0(v17, &qword_1006B0050);
  }

  return result;
}

void sub_10013C424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = a2;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100004AE4;
  v10[3] = a3;
  v8 = _Block_copy(v10);
  v9 = v3;

  [v6 animateWithDuration:v8 animations:0.2];
  _Block_release(v8);
}

uint64_t sub_10013C508()
{
  v1 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for FMPersonDetailViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
  v9 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v8 + v9, v3, &qword_1006B3260);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100012DF0(v3, &qword_1006B3260);
  }

  sub_100140CCC(v3, v7, type metadata accessor for FMPersonDetailViewModel);
  sub_10012D9BC(v7);
  return sub_100140DB8(v7, type metadata accessor for FMPersonDetailViewModel);
}

void sub_10013C6DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10013C734()
{
  sub_10000905C(0, &qword_1006B4980);
  if (static NSObject.== infix(_:_:)())
  {
    sub_1004242D0();
  }

  result = static NSObject.== infix(_:_:)();
  if (result)
  {

    return sub_1004244CC();
  }

  return result;
}

uint64_t sub_10013C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(*(v6 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource) + 104) = a6;

  sub_1003C80C8();
}

void sub_10013C838(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10007EBC0(&qword_1006B32B8);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_10013C8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v135 = a4;
  v133 = a3;
  v126 = a1;
  v5 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v5 - 8);
  v132 = (v111 - v6);
  v134 = type metadata accessor for FMPersonDetailViewModel(0);
  v137 = *(v134 - 8);
  __chkstk_darwin(v134);
  v111[1] = v7;
  v114 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v8 - 8);
  v113 = v111 - v9;
  v10 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v10 - 8);
  v119 = v111 - v11;
  v122 = type metadata accessor for UUID();
  v120 = *(v122 - 8);
  v12 = __chkstk_darwin(v122);
  v112 = v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111[0] = v13;
  __chkstk_darwin(v12);
  v121 = v111 - v14;
  v118 = type metadata accessor for HashAlgorithm();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.Encoding();
  v124 = *(v16 - 8);
  v125 = v16;
  __chkstk_darwin(v16);
  v123 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMFRelationshipType();
  v129 = *(v18 - 8);
  v130 = v18;
  v19 = __chkstk_darwin(v18);
  v128 = v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v127 = v111 - v21;
  v22 = type metadata accessor for FMFFriend();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v131 = v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10007EBC0(&qword_1006B3260);
  __chkstk_darwin(v25 - 8);
  v27 = (v111 - v26);
  v28 = sub_10007EBC0(&qword_1006B0050);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v111 - v32;
  v136 = a2;
  v34 = *(a2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
  v35 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
  swift_beginAccess();
  sub_100007204(v34 + v35, v27, &qword_1006B3260);
  v36 = v134;
  if ((*(v137 + 48))(v27, 1) != 1)
  {
    v37 = *v27;
    v38 = v27[1];

    sub_100140DB8(v27, type metadata accessor for FMPersonDetailViewModel);
    sub_1000BD300(v37, v38, v33);

    sub_100007204(v33, v31, &qword_1006B0050);
    if ((v23[6])(v31, 1, v22) == 1)
    {
      sub_100012DF0(v31, &qword_1006B0050);
      v39 = v136;
    }

    else
    {
      v115 = v33;
      v40 = v131;
      v23[4](v131, v31, v22);
      v41 = v127;
      FMFFriend.relationshipType.getter();
      v42 = v128;
      static FMFRelationshipType.sharesLocationWithMe.getter();
      sub_100141248(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
      v43 = v130;
      v44 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v45 = *(v129 + 8);
      v45(v42, v43);
      v45(v41, v43);
      v39 = v136;
      if (v44)
      {
        v46 = v22;
        v47 = v126;
        if (*(v126 + *(v36 + 136)))
        {
          v48 = [objc_msgSend(objc_opt_self() "deviceCapabilities")];
          swift_unknownObjectRelease();
          if (v48 & 1) != 0 || (sub_10012A6F0())
          {
            v49 = v123;
            static String.Encoding.utf8.getter();
            v50 = String.data(using:allowLossyConversion:)();
            v52 = v51;
            (*(v124 + 8))(v49, v125);
            v53 = v115;
            if (v52 >> 60 == 15)
            {
              (v23[1])(v131, v22);
              v54 = sub_100012DF0(v53, &qword_1006B0050);
            }

            else
            {
              v132 = v23;
              v134 = v22;
              v88 = v117;
              v89 = v116;
              v90 = v118;
              (*(v117 + 104))(v116, enum case for HashAlgorithm.sha256(_:), v118);
              v91 = Data.hash(algorithm:)();
              v93 = v92;
              sub_10005BA6C(v50, v52);
              (*(v88 + 8))(v89, v90);
              v138[0] = v91;
              v138[1] = v93;
              sub_100140D64();
              v94 = DataProtocol.deprecated_bytes.getter();
              if (*(v94 + 16) >= 0x11uLL)
              {
                sub_10013C838(v94, v94 + 32, 0, 0x21uLL);
              }

              v95 = v122;
              v96 = v120;
              v97 = v121;
              v98 = v119;
              UUID.init(bytes:)();
              if ((*(v96 + 48))(v98, 1, v95) == 1)
              {
                sub_10000A858(v91, v93);
                v132[1](v131, v134);
                sub_100012DF0(v115, &qword_1006B0050);
                v54 = sub_100012DF0(v98, &unk_1006B20C0);
              }

              else
              {
                v99 = v98;
                v100 = *(v96 + 32);
                v100(v97, v99, v95);
                if (*(v39 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask))
                {
                  sub_10000A858(v91, v93);
                  (*(v96 + 8))(v97, v95);
                  v132[1](v131, v134);
                  v54 = sub_100012DF0(v115, &qword_1006B0050);
                }

                else
                {
                  v130 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask;
                  v101 = type metadata accessor for TaskPriority();
                  (*(*(v101 - 8) + 56))(v113, 1, 1, v101);
                  v102 = v47;
                  v103 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  (*(v96 + 16))(v112, v97, v95);
                  sub_10014101C(v102, v114, type metadata accessor for FMPersonDetailViewModel);
                  type metadata accessor for MainActor();

                  v104 = static MainActor.shared.getter();
                  v105 = (*(v96 + 80) + 40) & ~*(v96 + 80);
                  v106 = (v111[0] + *(v137 + 80) + v105) & ~*(v137 + 80);
                  v107 = swift_allocObject();
                  v107[2] = v104;
                  v107[3] = &protocol witness table for MainActor;
                  v107[4] = v103;
                  v108 = v107 + v105;
                  v109 = v122;
                  v100(v108, v112, v122);
                  sub_100140CCC(v114, v107 + v106, type metadata accessor for FMPersonDetailViewModel);

                  v110 = sub_10047F498(0, 0, v113, &unk_1005550A0, v107);
                  sub_10000A858(v91, v93);
                  (*(v96 + 8))(v121, v109);
                  v132[1](v131, v134);
                  sub_100012DF0(v115, &qword_1006B0050);
                  *(v136 + v130) = v110;
                }
              }
            }

            return v133(v54);
          }
        }

        v74 = v115;
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v75 = type metadata accessor for Logger();
        sub_100005B14(v75, qword_1006D4630);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&_mh_execute_header, v76, v77, "FMPersonDetailContentViewController: Can start discoverying nearby is false or precision finding is not supported", v78, 2u);
        }

        v79 = *(v39 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken);
        *(v39 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken) = 0;

        v80 = sub_10012A7F8();
        v82 = v81;
        v83 = type metadata accessor for FMIPPeopleFindingEvent();
        if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
        {
          FMIPPeopleFindingEvent.hasToken.setter();
        }

        (v80)(v138, 0);
        v84 = *(v39 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable);
        *(v39 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable) = 0;
        sub_10012A29C(v84);
        v65 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager;
        v85 = *(v39 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager);
        v86 = v131;
        if (v85)
        {
          v87 = v85;
          dispatch thunk of FMConnectionManager.disconnect()();
        }

        (v23[1])(v86, v46);
        v68 = v74;
LABEL_20:
        sub_100012DF0(v68, &qword_1006B0050);
        v69 = *(v39 + v65);
        *(v39 + v65) = 0;

        v70 = type metadata accessor for Date();
        v71 = v132;
        (*(*(v70 - 8) + 56))(v132, 1, 1, v70);
        v72 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startDiscoveryTimestamp;
        swift_beginAccess();
        sub_1000BBF40(v71, v39 + v72, &unk_1006B0000);
        v54 = swift_endAccess();
        return v133(v54);
      }

      (v23[1])(v40, v22);
      v33 = v115;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100005B14(v55, qword_1006D4630);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "FMPersonDetailContentViewController: Not fetching peer token, person does not share location. Revoking find", v58, 2u);
    }

    v59 = *(v39 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken);
    *(v39 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken) = 0;

    v60 = sub_10012A7F8();
    v62 = v61;
    v63 = type metadata accessor for FMIPPeopleFindingEvent();
    if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
    {
      FMIPPeopleFindingEvent.hasToken.setter();
    }

    (v60)(v138, 0);
    v64 = *(v39 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable);
    *(v39 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable) = 0;
    sub_10012A29C(v64);
    v65 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager;
    v66 = *(v39 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager);
    if (v66)
    {
      v67 = v66;
      dispatch thunk of FMConnectionManager.disconnect()();
    }

    v68 = v33;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

char *sub_10013D9A0(uint64_t a1)
{
  v2 = v1;
  v150 = a1;
  v157 = type metadata accessor for UIHostingControllerSizingOptions();
  v155 = *(v157 - 8);
  __chkstk_darwin(v157);
  v156 = &v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PeopleManagementSectionView();
  __chkstk_darwin(v4 - 8);
  v154 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for ManagedPerson.Properties();
  __chkstk_darwin(v153);
  v151 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ManagedPerson();
  __chkstk_darwin(v7 - 8);
  v152 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B3268);
  __chkstk_darwin(v9 - 8);
  v149 = &v146 - v10;
  v163 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v163);
  v12 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_conditionsSubscription) = 0;
  *(&v173 + 1) = &type metadata for SolariumFeatureFlag;
  *&v174 = sub_10000BD04();
  v13 = isFeatureEnabled(_:)();
  sub_100006060(&v172);
  v14 = objc_opt_self();
  v15 = &selRef_systemBrownColor;
  if ((v13 & 1) == 0)
  {
    v15 = &selRef_systemGreenColor;
  }

  v16 = [v14 *v15];
  v164 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_contactButton;
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for FMIconPlatterButton();
  v18 = objc_allocWithZone(v17);
  v19 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v18[v19] = [objc_allocWithZone(UIImageView) init];
  v20 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v18[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v18[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v18[v22] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v23 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v24 = type metadata accessor for FMPlatterBackgroundView();
  v158 = v24;
  v25 = objc_allocWithZone(v24);
  v25[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v171.receiver = v25;
  v171.super_class = v24;
  v26 = objc_msgSendSuper2(&v171, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v18[v23] = v26;
  v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v27 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v16;
  v162 = type metadata accessor for FMPlatterIcon;
  sub_10014101C(v12, &v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], type metadata accessor for FMPlatterIcon);
  v28 = &v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v28 = 0xD00000000000001CLL;
  *(v28 + 1) = 0x800000010057F960;
  v28[40] = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = 0;
  *(v28 + 2) = 0;
  v18[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v18[v27] = 0;
  v170.receiver = v18;
  v170.super_class = v17;
  v29 = v16;
  v30 = objc_msgSendSuper2(&v170, "init");
  sub_1000D3C9C();
  v31 = objc_opt_self();
  v160 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = 0;
  *&v174 = sub_100140B98;
  *(&v174 + 1) = v32;
  *&v172 = _NSConcreteStackBlock;
  *(&v172 + 1) = 1107296256;
  v161 = &v173;
  *&v173 = sub_100004AE4;
  *(&v173 + 1) = &unk_100628818;
  v33 = _Block_copy(&v172);
  v34 = v30;

  [v31 animateWithDuration:v33 animations:0.35];
  _Block_release(v33);

  v159 = type metadata accessor for FMPlatterIcon;
  sub_100140DB8(v12, type metadata accessor for FMPlatterIcon);
  *&v164[v2] = v34;
  v148 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_directionsButton;
  v164 = objc_opt_self();
  v35 = [v164 systemBlueColor];
  swift_storeEnumTagMultiPayload();
  v36 = objc_allocWithZone(v17);
  v37 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v36[v37] = [objc_allocWithZone(UIImageView) init];
  v38 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v36[v38] = [objc_allocWithZone(UILabel) init];
  v39 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v36[v39] = [objc_allocWithZone(UILabel) init];
  v40 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v36[v40] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v41 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v42 = v158;
  v43 = objc_allocWithZone(v158);
  v43[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v169.receiver = v43;
  v169.super_class = v42;
  v44 = objc_msgSendSuper2(&v169, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v36[v41] = v44;
  v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v45 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v35;
  sub_10014101C(v12, &v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v162);
  v46 = &v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v46 = 0xD00000000000001FLL;
  *(v46 + 1) = 0x800000010057F980;
  v46[40] = 0;
  *(v46 + 3) = 0;
  *(v46 + 4) = 0;
  *(v46 + 2) = 0;
  v36[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v36[v45] = 0;
  v168.receiver = v36;
  v168.super_class = v17;
  v147 = v17;
  v47 = v35;
  v48 = objc_msgSendSuper2(&v168, "init");
  sub_1000D3C9C();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = 0;
  *&v174 = sub_100141408;
  *(&v174 + 1) = v49;
  *&v172 = _NSConcreteStackBlock;
  *(&v172 + 1) = 1107296256;
  *&v173 = sub_100004AE4;
  *(&v173 + 1) = &unk_100628868;
  v50 = _Block_copy(&v172);
  v51 = v48;

  [v160 animateWithDuration:v50 animations:0.35];
  _Block_release(v50);

  sub_100140DB8(v12, v159);
  *(v2 + v148) = v51;
  v148 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_findButton;
  v52 = [v164 systemGreenColor];
  v53 = *(sub_10007EBC0(&qword_1006C0020) + 48);
  *v12 = 1;
  v54 = enum case for FMFindingType.friend(_:);
  v55 = type metadata accessor for FMFindingType();
  (*(*(v55 - 8) + 104))(&v12[v53], v54, v55);
  v56 = enum case for FMFindingTechnology.precision(_:);
  v57 = type metadata accessor for FMFindingTechnology();
  (*(*(v57 - 8) + 104))(v12, v56, v57);
  swift_storeEnumTagMultiPayload();
  v58 = objc_allocWithZone(v17);
  v59 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v58[v59] = [objc_allocWithZone(UIImageView) init];
  v60 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v58[v60] = [objc_allocWithZone(UILabel) init];
  v61 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v58[v61] = [objc_allocWithZone(UILabel) init];
  v62 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v58[v62] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v63 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v64 = v158;
  v65 = objc_allocWithZone(v158);
  v65[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v167.receiver = v65;
  v167.super_class = v64;
  v66 = objc_msgSendSuper2(&v167, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v58[v63] = v66;
  v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v67 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v52;
  sub_10014101C(v12, &v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v162);
  v68 = &v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v68 = 0xD000000000000019;
  *(v68 + 1) = 0x800000010057F9A0;
  *(v68 + 3) = 0;
  *(v68 + 4) = 0;
  *(v68 + 2) = 0;
  v68[40] = 3;
  v58[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v58[v67] = 1;
  v166.receiver = v58;
  v166.super_class = v147;
  v69 = v52;
  v70 = objc_msgSendSuper2(&v166, "init");
  sub_1000D3C9C();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = 0;
  *&v174 = sub_100141408;
  *(&v174 + 1) = v71;
  *&v172 = _NSConcreteStackBlock;
  *(&v172 + 1) = 1107296256;
  *&v173 = sub_100004AE4;
  *(&v173 + 1) = &unk_1006288B8;
  v72 = _Block_copy(&v172);
  v73 = v70;

  [v160 animateWithDuration:v72 animations:0.35];
  _Block_release(v72);

  sub_100140DB8(v12, v159);
  *(v2 + v148) = v73;
  v74 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_timeRemaining;
  v75 = type metadata accessor for FMExtendedPlatterInfoView();
  v76 = objc_allocWithZone(v75);
  *(v2 + v74) = sub_10032B2F8(1, 0);
  v77 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_inaccurateAttention;
  v78 = objc_allocWithZone(v75);
  *(v2 + v77) = sub_10032B2F8(1, 0);
  v79 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention;
  v80 = [v164 systemPinkColor];
  v81 = objc_allocWithZone(type metadata accessor for FMNotificationPlatterView());
  *&v81[OBJC_IVAR____TtC6FindMy25FMNotificationPlatterView_attentionColor] = v80;
  v82 = objc_opt_self();
  v83 = v80;
  v84 = v82;
  v85 = v149;
  v86 = [v84 preferredFontForTextStyle:UIFontTextStyleBody];
  *&v81[OBJC_IVAR____TtC6FindMy25FMNotificationPlatterView_preferredFont] = v86;
  v87 = sub_1002AEC90(0);

  *(v2 + v79) = v87;
  v88 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stewieLocationAttention;
  v89 = objc_allocWithZone(v75);
  *(v2 + v88) = sub_10032B2F8(0, 1);
  v90 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsOffAttention;
  v91 = objc_allocWithZone(v75);
  *(v2 + v90) = sub_10032B2F8(1, 1);
  v92 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_favoriteButton;
  v93 = type metadata accessor for FMSingleLinePlatterButton();
  v94 = objc_allocWithZone(v93);
  *(v2 + v92) = sub_100038758(0, 0, 0, 1);
  v95 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_unfavoriteButton;
  v96 = objc_allocWithZone(v93);
  *(v2 + v95) = sub_100038758(0, 0, 0, 1);
  v97 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_nameThisLocationButton;
  v98 = objc_allocWithZone(v93);
  *(v2 + v97) = sub_100038758(0, 0, 0, 1);
  v99 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startFollowingButton;
  v100 = objc_allocWithZone(v93);
  *(v2 + v99) = sub_100038758(0, 0, 0, 1);
  v101 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startSharingButton;
  v102 = objc_allocWithZone(v93);
  *(v2 + v101) = sub_100038758(0, 0, 0, 1);
  v103 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stopSharingButton;
  v104 = objc_allocWithZone(v93);
  *(v2 + v103) = sub_100038758(0, 0, 0, 1);
  v105 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_removeFriendButton;
  v106 = objc_allocWithZone(v93);
  *(v2 + v105) = sub_100038758(0, 0, 0, 1);
  v107 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_firstButtonsStackView;
  *(v2 + v107) = [objc_allocWithZone(UIStackView) init];
  v108 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackView;
  *(v2 + v108) = [objc_allocWithZone(UIStackView) init];
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackBottomConstraint) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_presentedModelViewController) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenSession) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_discoveryAnimationEndTask) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenReevaluationTask) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_canShowDiscoveryConnecting) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isNearbyForDiscovery) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable) = 0;
  v109 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startDiscoveryTimestamp;
  v110 = type metadata accessor for Date();
  (*(*(v110 - 8) + 56))(v2 + v109, 1, 1, v110);
  v111 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleFindingAnalytics;
  FMIPPeopleFindingEvent.init(hasToken:findButtonAvailable:availabilityLatency:withinNearbyRange:startedDiscovering:)();
  v112 = type metadata accessor for FMIPPeopleFindingEvent();
  (*(*(v112 - 8) + 56))(v2 + v111, 0, 1, v112);
  type metadata accessor for FMPersonDetailDataSource();
  swift_allocObject();

  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource) = sub_1003C8C08(v113);
  v114 = objc_allocWithZone(type metadata accessor for FMFindingExperiencePresenter(0));

  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_findingExperiencePresenter) = sub_100160AB0(v115);
  v116 = objc_allocWithZone(type metadata accessor for FMErrorConditionsAttentionModule());

  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_errorConditionsAttentionModule) = sub_1004F28B0(v117);
  dispatch thunk of FMFManager.config.getter();
  v118 = type metadata accessor for FMFConfig();
  v119 = *(v118 - 8);
  if ((*(v119 + 48))(v85, 1, v118) == 1)
  {
    sub_100012DF0(v85, &qword_1006B3268);
    v120 = 20;
  }

  else
  {
    v120 = FMFConfig.maxNotifyMeFences.getter();
    (*(v119 + 8))(v85, v118);
  }

  v121 = objc_allocWithZone(type metadata accessor for FMLocationAlertsView());
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notifications) = sub_100375A90(v120);
  *&v172 = 0;
  sub_100141248(&qword_1006B3270, &type metadata accessor for ManagedPerson.Properties);
  dispatch thunk of OptionSet.init(rawValue:)();
  ManagedPerson.init(firstName:properties:isFavorite:)();
  type metadata accessor for PeopleManagementSectionViewModel();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleManagementViewModel) = PeopleManagementSectionViewModel.init(managedPerson:)();

  PeopleManagementSectionView.init(viewModel:)();
  v122 = objc_allocWithZone(sub_10007EBC0(&qword_1006B3278));
  v123 = UIHostingController.init(rootView:)();
  v124 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleManagementHostingController;
  *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleManagementHostingController) = v123;
  sub_10007EBC0(&qword_1006B3280);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_100552220;
  v126 = v123;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  *&v172 = v125;
  sub_100141248(&qword_1006C1310, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_10007EBC0(&qword_1006B3288);
  sub_100004044(&qword_1006C1320, &qword_1006B3288);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v127 = *(v2 + v124);
  UIHostingController.safeAreaRegions.setter();

  result = [*(v2 + v124) view];
  if (result)
  {
    v129 = result;
    v130 = [v164 clearColor];
    [v129 setBackgroundColor:v130];

    v165 = 0;
    v172 = xmmword_100554AC0;
    v173 = xmmword_100554AD0;
    v174 = xmmword_100552170;
    v175 = xmmword_100552180;
    v176 = xmmword_100552190;
    v177 = xmmword_1005521A0;
    v178 = xmmword_1005521B0;
    v179 = xmmword_1005521C0;
    v180 = xmmword_1005521D0;
    v181 = xmmword_1005521E0;
    v182 = 0;
    v183 = 0x403A000000000000;
    v184 = 0;
    __asm { FMOV            V0.2D, #16.0 }

    v185 = _Q0;
    v186 = 0x4046000000000000;
    v187 = 0;

    v137 = sub_100278C9C(v136, &v172);
    *(*&v137[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_findingExperiencePresenter] + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate + 8) = &off_100628710;
    swift_unknownObjectWeakAssign();
    *(*&v137[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource] + 32) = &off_1006287E0;
    swift_unknownObjectWeakAssign();
    v138 = qword_1006AEBE0;
    v139 = v137;
    if (v138 != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    sub_100005B14(v140, qword_1006D4630);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      *v143 = 138412290;
      *(v143 + 4) = v139;
      *v144 = v137;
      v145 = v139;
      _os_log_impl(&_mh_execute_header, v141, v142, "FMPersonDetailContentViewController%@: init", v143, 0xCu);
      sub_100012DF0(v144, &unk_1006AF760);
    }

    return v139;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10013F10C()
{
  v1 = v0;
  v102 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v102);
  v3 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_conditionsSubscription) = 0;
  v115 = &type metadata for SolariumFeatureFlag;
  v116 = sub_10000BD04();
  v4 = isFeatureEnabled(_:)();
  sub_100006060(&aBlock);
  v5 = objc_opt_self();
  v6 = &selRef_systemBrownColor;
  if ((v4 & 1) == 0)
  {
    v6 = &selRef_systemGreenColor;
  }

  v7 = [v5 *v6];
  v103 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_contactButton;
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for FMIconPlatterButton();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v9[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v9[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v9[v12] = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v9[v13] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v14 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v15 = type metadata accessor for FMPlatterBackgroundView();
  v16 = objc_allocWithZone(v15);
  v16[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v119.receiver = v16;
  v119.super_class = v15;
  v17 = objc_msgSendSuper2(&v119, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v9[v14] = v17;
  v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v18 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v7;
  v107 = type metadata accessor for FMPlatterIcon;
  sub_10014101C(v3, &v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], type metadata accessor for FMPlatterIcon);
  v19 = &v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v19 = 0xD00000000000001CLL;
  *(v19 + 1) = 0x800000010057F960;
  v19[40] = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0;
  *(v19 + 2) = 0;
  v9[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v9[v18] = 0;
  v118.receiver = v9;
  v118.super_class = v8;
  v20 = v7;
  v21 = objc_msgSendSuper2(&v118, "init");
  sub_1000D3C9C();
  v22 = objc_opt_self();
  v105 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = 0;
  v116 = sub_100141408;
  v117 = v23;
  aBlock = _NSConcreteStackBlock;
  v113 = 1107296256;
  v106 = &v114;
  v114 = sub_100004AE4;
  v115 = &unk_100628C00;
  v24 = _Block_copy(&aBlock);
  v25 = v21;

  [v22 animateWithDuration:v24 animations:0.35];
  _Block_release(v24);

  v104 = type metadata accessor for FMPlatterIcon;
  sub_100140DB8(v3, type metadata accessor for FMPlatterIcon);
  *&v103[v1] = v25;
  v101 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_directionsButton;
  v103 = objc_opt_self();
  v26 = [v103 systemBlueColor];
  swift_storeEnumTagMultiPayload();
  v27 = v8;
  v28 = objc_allocWithZone(v8);
  v29 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v28[v29] = [objc_allocWithZone(UIImageView) init];
  v30 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v28[v30] = [objc_allocWithZone(UILabel) init];
  v31 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v28[v31] = [objc_allocWithZone(UILabel) init];
  v32 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v28[v32] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v33 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v34 = objc_allocWithZone(v15);
  v34[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v111.receiver = v34;
  v111.super_class = v15;
  v35 = objc_msgSendSuper2(&v111, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v28[v33] = v35;
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v36 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v26;
  sub_10014101C(v3, &v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v107);
  v37 = &v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v37 = 0xD00000000000001FLL;
  *(v37 + 1) = 0x800000010057F980;
  v37[40] = 0;
  *(v37 + 3) = 0;
  *(v37 + 4) = 0;
  *(v37 + 2) = 0;
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v28[v36] = 0;
  v110.receiver = v28;
  v110.super_class = v27;
  v38 = v26;
  v39 = objc_msgSendSuper2(&v110, "init");
  sub_1000D3C9C();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = 0;
  v116 = sub_100141408;
  v117 = v40;
  aBlock = _NSConcreteStackBlock;
  v113 = 1107296256;
  v114 = sub_100004AE4;
  v115 = &unk_100628C50;
  v41 = _Block_copy(&aBlock);
  v42 = v39;

  [v105 animateWithDuration:v41 animations:0.35];
  _Block_release(v41);

  sub_100140DB8(v3, v104);
  *(v1 + v101) = v42;
  v101 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_findButton;
  v43 = [v103 systemGreenColor];
  v44 = *(sub_10007EBC0(&qword_1006C0020) + 48);
  *v3 = 1;
  v45 = enum case for FMFindingType.friend(_:);
  v46 = type metadata accessor for FMFindingType();
  (*(*(v46 - 8) + 104))(&v3[v44], v45, v46);
  v47 = enum case for FMFindingTechnology.precision(_:);
  v48 = type metadata accessor for FMFindingTechnology();
  (*(*(v48 - 8) + 104))(v3, v47, v48);
  swift_storeEnumTagMultiPayload();
  v49 = objc_allocWithZone(v27);
  v50 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v49[v50] = [objc_allocWithZone(UIImageView) init];
  v51 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v49[v51] = [objc_allocWithZone(UILabel) init];
  v52 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v49[v52] = [objc_allocWithZone(UILabel) init];
  v53 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v49[v53] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v54 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v55 = objc_allocWithZone(v15);
  v55[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v109.receiver = v55;
  v109.super_class = v15;
  v56 = objc_msgSendSuper2(&v109, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v49[v54] = v56;
  v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v57 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v43;
  sub_10014101C(v3, &v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v107);
  v58 = &v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v58 = 0xD000000000000019;
  *(v58 + 1) = 0x800000010057F9A0;
  *(v58 + 3) = 0;
  *(v58 + 4) = 0;
  *(v58 + 2) = 0;
  v58[40] = 3;
  v49[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v49[v57] = 1;
  v108.receiver = v49;
  v108.super_class = v27;
  v59 = v43;
  v60 = objc_msgSendSuper2(&v108, "init");
  sub_1000D3C9C();
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = 0;
  v116 = sub_100141408;
  v117 = v61;
  aBlock = _NSConcreteStackBlock;
  v113 = 1107296256;
  v114 = sub_100004AE4;
  v115 = &unk_100628CA0;
  v62 = _Block_copy(&aBlock);
  v63 = v60;

  [v105 animateWithDuration:v62 animations:0.35];
  _Block_release(v62);

  sub_100140DB8(v3, v104);
  *(v1 + v101) = v63;
  v64 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_timeRemaining;
  v65 = type metadata accessor for FMExtendedPlatterInfoView();
  v66 = objc_allocWithZone(v65);
  *(v1 + v64) = sub_10032B2F8(1, 0);
  v67 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_inaccurateAttention;
  v68 = objc_allocWithZone(v65);
  *(v1 + v67) = sub_10032B2F8(1, 0);
  v69 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention;
  v70 = [v103 systemPinkColor];
  v71 = objc_allocWithZone(type metadata accessor for FMNotificationPlatterView());
  *&v71[OBJC_IVAR____TtC6FindMy25FMNotificationPlatterView_attentionColor] = v70;
  v72 = objc_opt_self();
  v73 = v70;
  v74 = [v72 preferredFontForTextStyle:UIFontTextStyleBody];
  *&v71[OBJC_IVAR____TtC6FindMy25FMNotificationPlatterView_preferredFont] = v74;
  v75 = sub_1002AEC90(0);

  *(v1 + v69) = v75;
  v76 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stewieLocationAttention;
  v77 = objc_allocWithZone(v65);
  *(v1 + v76) = sub_10032B2F8(0, 1);
  v78 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsOffAttention;
  v79 = objc_allocWithZone(v65);
  *(v1 + v78) = sub_10032B2F8(1, 1);
  v80 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_favoriteButton;
  v81 = type metadata accessor for FMSingleLinePlatterButton();
  v82 = objc_allocWithZone(v81);
  *(v1 + v80) = sub_100038758(0, 0, 0, 1);
  v83 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_unfavoriteButton;
  v84 = objc_allocWithZone(v81);
  *(v1 + v83) = sub_100038758(0, 0, 0, 1);
  v85 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_nameThisLocationButton;
  v86 = objc_allocWithZone(v81);
  *(v1 + v85) = sub_100038758(0, 0, 0, 1);
  v87 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startFollowingButton;
  v88 = objc_allocWithZone(v81);
  *(v1 + v87) = sub_100038758(0, 0, 0, 1);
  v89 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startSharingButton;
  v90 = objc_allocWithZone(v81);
  *(v1 + v89) = sub_100038758(0, 0, 0, 1);
  v91 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stopSharingButton;
  v92 = objc_allocWithZone(v81);
  *(v1 + v91) = sub_100038758(0, 0, 0, 1);
  v93 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_removeFriendButton;
  v94 = objc_allocWithZone(v81);
  *(v1 + v93) = sub_100038758(0, 0, 0, 1);
  v95 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_firstButtonsStackView;
  *(v1 + v95) = [objc_allocWithZone(UIStackView) init];
  v96 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackView;
  *(v1 + v96) = [objc_allocWithZone(UIStackView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_presentedModelViewController) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManager) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenSession) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_discoveryAnimationEndTask) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenReevaluationTask) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_canShowDiscoveryConnecting) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isNearbyForDiscovery) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable) = 0;
  v97 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startDiscoveryTimestamp;
  v98 = type metadata accessor for Date();
  (*(*(v98 - 8) + 56))(v1 + v97, 1, 1, v98);
  v99 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleFindingAnalytics;
  FMIPPeopleFindingEvent.init(hasToken:findButtonAvailable:availabilityLatency:withinNearbyRange:startedDiscovering:)();
  v100 = type metadata accessor for FMIPPeopleFindingEvent();
  (*(*(v100 - 8) + 56))(v1 + v99, 0, 1, v100);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100140184()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMPersonDetailContentViewController: Entering foreground, checking peer token", v3, 2u);
  }

  return sub_100132D54();
}

void sub_100140270()
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100012DF0(v2, &unk_1006B0120);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "FMPersonDetailContentViewController: Error opening settings. Invalid URL", v10, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v13 = v11;
      URL._bridgeToObjectiveC()(v12);
      v15 = v14;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v13 openSensitiveURL:v15 withOptions:isa];
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_10014052C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v44 = a1;
  v3 = sub_10007EBC0(&unk_1006BEF80);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for FMFLocationAlertTarget();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMFLocationAlert();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v38 = &v33 - v15;
  __chkstk_darwin(v14);
  v39 = &v33 - v16;

  v17 = dispatch thunk of FMFManager.locationAlerts.getter();

  if (v17)
  {
    v37 = v8;
    v41 = *(v17 + 16);
    if (v41)
    {
      v34 = v5;
      v35 = v6;
      v36 = v2;
      v18 = 0;
      v19 = v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v43 = v10 + 16;
      while (v18 < *(v17 + 16))
      {
        v21 = *(v10 + 16);
        v21(v13, v19 + *(v10 + 72) * v18, v9);
        v22 = FMFLocationAlert.identifier.getter();
        if (v23)
        {
          if (v22 == v44 && v23 == v42)
          {

LABEL_16:

            v28 = *(v10 + 32);
            v29 = v38;
            v28(v38, v13, v9);
            v30 = v39;
            v28(v39, v29, v9);
            v31 = v37;
            FMFLocationAlert.locationAlertTarget.getter();
            v32 = v34;
            v21(v34, v30, v9);
            (*(v10 + 56))(v32, 0, 1, v9);
            sub_10013C018(v31, v32);
            sub_100012DF0(v32, &unk_1006BEF80);
            (*(v40 + 8))(v31, v35);
            (*(v10 + 8))(v30, v9);
            return;
          }

          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
            goto LABEL_16;
          }
        }

        ++v18;
        (*(v10 + 8))(v13, v9);
        if (v41 == v18)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_11:
  }

  if (qword_1006AEBE0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100005B14(v24, qword_1006D4630);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Trying to open edit location alert view controller for alert id that does not exist.", v27, 2u);
  }
}

uint64_t sub_1001409DC(char a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 67109378;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_100005B4C(v11, v13, &v17);

    *(v9 + 10) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMPersonDetailContentViewController: isPrecisionFindingAvailable: %{BOOL}d, error: %s", v9, 0x12u);
    sub_100006060(v10);
  }

  v15 = *(v3 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable);
  *(v3 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable) = a1 & 1;
  return sub_10012A29C(v15);
}

uint64_t sub_100140BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3298);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100140CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100140D64()
{
  result = qword_1006B32B0;
  if (!qword_1006B32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B32B0);
  }

  return result;
}

uint64_t sub_100140DB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100140E18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_100132EC4(a1, v4, v5, v6);
}

uint64_t sub_10014101C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100141084()
{
  v1 = *(type metadata accessor for FMPersonDetailViewModel(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10012EFEC(v2, v3);
}

uint64_t sub_1001410E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FMPersonDetailViewModel(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000EE760;

  return sub_100130A58(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100141248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001412B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001412F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000E3478;

  return sub_100129BDC(a1, v4, v5, v6);
}

void sub_100141530()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for FMContentUnavailableView();
  objc_msgSendSuper2(&v30, "_updateViewHierarchy");
  v2 = [v0 subviews];
  v3 = sub_100141CA8();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_31:
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_11;
        }

        v5 = *(v4 + 32);
      }

      v6 = v5;

      v7 = [v6 subviews];

      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if (v8 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          break;
        }
      }

      else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        goto LABEL_31;
      }

      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v9 = *(v8 + 32);
LABEL_11:
      v4 = v9;

      v10 = [v4 subviews];
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = v4;
      if (v11 >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
LABEL_33:

LABEL_34:
          v1 = v29;
          v19 = [v29 subviews];
          v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v3 >> 62)
          {
            goto LABEL_49;
          }

          for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
          {
            v21 = 0;
            while (1)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v21 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_47;
                }

                v22 = *(v3 + 8 * v21 + 32);
              }

              v23 = v22;
              v24 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                break;
              }

              objc_opt_self();
              v25 = swift_dynamicCastObjCClass();
              if (v25)
              {
                v26 = v25;

                v27 = [objc_opt_self() systemBlueColor];
                [v26 setTitleColor:v27 forState:0];

                [v26 setBackgroundImage:0 forState:0];
                v28 = v23;
                [v26 setAlpha:1.0];

                return;
              }

              ++v21;
              if (v24 == i)
              {
                goto LABEL_50;
              }
            }

            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            ;
          }

LABEL_50:

          break;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_33;
        }
      }

      v13 = 0;
      v1 = (v11 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (v16)
        {
          v17 = v16;

          v18 = [objc_opt_self() labelColor];
          [v17 setTextColor:v18];

          [v17 setAlpha:1.0];
          goto LABEL_34;
        }

        ++v13;
        if (v4 == v12)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    while (_CocoaArrayWrapper.endIndex.getter());
  }
}

id sub_100141C50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMContentUnavailableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100141CA8()
{
  result = qword_1006BA410;
  if (!qword_1006BA410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BA410);
  }

  return result;
}

unint64_t sub_100141D08(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_10000905C(0, a3);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

char *sub_100141E10(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC6FindMy20FMPageViewController_pages] = _swiftEmptyArrayStorage;
  v4 = [objc_allocWithZone(UIPageViewController) initWithTransitionStyle:1 navigationOrientation:0 options:0];
  *&v2[OBJC_IVAR____TtC6FindMy20FMPageViewController_pageViewController] = v4;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FMPageViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);

  *&v5[OBJC_IVAR____TtC6FindMy20FMPageViewController_pages] = a2;

  return v5;
}

void sub_100141F38()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for FMPageViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v1 = OBJC_IVAR____TtC6FindMy20FMPageViewController_pageViewController;
  [*&v0[OBJC_IVAR____TtC6FindMy20FMPageViewController_pageViewController] setDelegate:v0];
  [*&v0[v1] setDataSource:v0];
  [v0 addChildViewController:*&v0[v1]];
  v2 = [v0 view];
  if (!v2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [*&v0[v1] view];
  if (v4)
  {
    v5 = v4;
    [v3 addSubview:v4];

    v6 = *&v0[v1];
    sub_10007EBC0(&qword_1006AFC30);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1005528C0;
    v8 = *&v0[OBJC_IVAR____TtC6FindMy20FMPageViewController_pages];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = v6;

      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v11 = v14;
      goto LABEL_6;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 32);
      v10 = v6;
      v11 = v9;
LABEL_6:
      *(v7 + 32) = v11;
      sub_10000905C(0, &qword_1006B87E0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v6 setViewControllers:isa direction:0 animated:1 completion:0];

      return;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
}

id sub_100142264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100142308(char a1, void *a2, uint64_t a3)
{
  v7 = [v3 viewControllers];
  if (v7)
  {
    v8 = v7;
    sub_10000905C(0, &qword_1006B87E0);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v10 = *(v9 + 32);
    }

    v16 = v10;

    v11 = [v3 dataSource];
    if (v11 && (v12 = [v11 pageViewController:v3 viewControllerAfterViewController:v16], swift_unknownObjectRelease(), v12))
    {
      sub_10007EBC0(&qword_1006AFC30);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1005528C0;
      *(v13 + 32) = v12;
      v14 = v12;
      v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (a2)
      {
        aBlock[4] = a2;
        aBlock[5] = a3;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10037A044;
        aBlock[3] = &unk_100628CC8;
        a2 = _Block_copy(aBlock);
      }

      [v3 setViewControllers:v15.super.isa direction:0 animated:a1 & 1 completion:a2];

      _Block_release(a2);
    }

    else
    {
    }
  }
}

void sub_100142550()
{
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = v1;
  v3 = [v1 subviews];

  sub_10000905C(0, &qword_1006BA410);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v7 = *(v4 + 8 * i + 32);
          }

          v8 = v7;
          objc_opt_self();
          v9 = swift_dynamicCastObjCClass();
          if (v9)
          {
            [v9 setScrollEnabled:0];
          }
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }
  }

LABEL_13:
}

id sub_1001426AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6FindMy20FMPageViewController_pages;
  v4 = *(v1 + OBJC_IVAR____TtC6FindMy20FMPageViewController_pages);

  v5 = sub_100141D08(a1, v4, &qword_1006B87E0);
  LOBYTE(a1) = v6;

  result = 0;
  if ((a1 & 1) == 0 && v5 >= 1)
  {
    v8 = *(v1 + v3);
    if ((v8 & 0xC000000000000001) != 0)
    {

      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      return v9;
    }

    else if (v5 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    else
    {
      return *(v8 + 8 * (v5 - 1) + 32);
    }
  }

  return result;
}

char *sub_100142780(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6FindMy20FMPageViewController_pages;
  v4 = *(v1 + OBJC_IVAR____TtC6FindMy20FMPageViewController_pages);

  v5 = sub_100141D08(a1, v4, &qword_1006B87E0);
  v7 = v6;

  if (v7)
  {
    return 0;
  }

  v8 = *(v1 + v3);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_4;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v10 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 >= v10)
  {
    return 0;
  }

  v11 = v5 + 1;
  v12 = *(v1 + v3);
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_13:

    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    return v13;
  }

  if (v5 < -1)
  {
    __break(1u);
  }

  else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v12 + 8 * v11 + 32);
  }

  __break(1u);
  return result;
}

void sub_1001428A4(void *a1, uint64_t a2)
{
  v5 = [v2 viewControllers];
  if (v5)
  {
    v6 = v5;
    sub_10000905C(0, &qword_1006B87E0);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v8 = *(v7 + 32);
    }

    v14 = v8;

    v9 = [v2 dataSource];
    if (v9 && (v10 = [v9 pageViewController:v2 viewControllerBeforeViewController:v14], swift_unknownObjectRelease(), v10))
    {
      sub_10007EBC0(&qword_1006AFC30);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1005528C0;
      *(v11 + 32) = v10;
      v12 = v10;
      v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (a1)
      {
        aBlock[4] = a1;
        aBlock[5] = a2;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10037A044;
        aBlock[3] = &unk_100628CF0;
        a1 = _Block_copy(aBlock);
      }

      [v2 setViewControllers:v13.super.isa direction:1 animated:1 completion:a1];

      _Block_release(a1);
    }

    else
    {
    }
  }
}

void sub_100142AE4()
{
  if (*(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_maxMessageLength + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType;
    v2 = *v1;
    v3 = *(v1 + 8);
    *v1 = 0;
    *(v1 + 8) = 0;
    v4 = *(v1 + 16);
    *(v1 + 16) = -1;
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType;
    v2 = *v5;
    v3 = *(v5 + 8);
    *v5 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_maxMessageLength);
    *(v5 + 8) = 0;
    v4 = *(v5 + 16);
    *(v5 + 16) = 0;
  }

  sub_1001443E8(v2, v3, v4);
  sub_1002CFC18();
}

char *sub_100142B80()
{
  v1 = &v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_maxMessageLength];
  *v1 = 0;
  v1[8] = 1;
  v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_canEnableNotifyWhenFound] = 1;
  v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowNotifyWhenFound] = 1;
  v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowMessageView] = 1;
  v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowDisableButton] = 0;
  v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowEmailUpdates] = 1;
  v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowEmail] = 1;
  v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isEditable] = 0;
  v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isMessageEditable] = 1;
  v2 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView;
  v3 = type metadata accessor for FMLostModeSummaryToggleView();
  *&v0[v2] = [objc_allocWithZone(v3) init];
  v4 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView;
  *&v0[v4] = [objc_allocWithZone(v3) init];
  v5 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView;
  v6 = type metadata accessor for FMLostModeSummaryTextView();
  *&v0[v5] = [objc_allocWithZone(v6) init];
  v7 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView;
  *&v0[v7] = [objc_allocWithZone(v6) init];
  v8 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView;
  *&v0[v8] = [objc_allocWithZone(v6) init];
  v9 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_disableButton;
  *&v0[v9] = [objc_allocWithZone(type metadata accessor for FMLostModeSummaryButton()) init];
  v10 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_footerLabel;
  *&v0[v10] = [objc_allocWithZone(UILabel) init];
  *&v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageViewGestureRecognizer] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16.receiver = v0;
  v16.super_class = type metadata accessor for FMLostModeSummaryContentView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100142F64();
  sub_10014378C();
  sub_10000905C(0, &qword_1006AF730);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = v11;
  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [*&v13[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_disableButton] addAction:v14 forControlEvents:{64, 0, 0, 0, sub_100144714, v12}];

  sub_100143398();
  sub_100142E74();

  return v13;
}

uint64_t sub_100142E74()
{
  *(*(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_delegate + 8) = &off_100628D18;
  swift_unknownObjectWeakAssign();
  *(*(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_delegate + 8) = &off_100628D18;
  swift_unknownObjectWeakAssign();
  *(*(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_delegate + 8) = &off_100628D18;
  swift_unknownObjectWeakAssign();
  *(*(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView) + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_delegate + 8) = &off_100628D30;
  swift_unknownObjectWeakAssign();
  *(*(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView) + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_delegate + 8) = &off_100628D30;

  return swift_unknownObjectWeakAssign();
}

void sub_100142F64()
{
  [v0 setAxis:1];
  [v0 setSpacing:12.0];
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100555120;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_footerLabel];
  *(inited + 72) = v7;
  v8 = *&v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_disableButton];
  *(inited + 80) = v8;
  v35 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  for (i = v35; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v17 = i;
    [v0 addArrangedSubview:i];

    if (v15)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_23;
      }

      v18 = *(inited + 40);
    }

    v19 = v18;
    [v0 addArrangedSubview:v18];

    if (v15)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_23;
      }

      v20 = *(inited + 48);
    }

    v21 = v20;
    [v0 addArrangedSubview:v20];

    if (v15)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_23;
      }

      v22 = *(inited + 56);
    }

    v23 = v22;
    [v0 addArrangedSubview:v22];

    if (v15)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_23;
      }

      v24 = *(inited + 64);
    }

    v25 = v24;
    [v0 addArrangedSubview:v24];

    if (v15)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_23;
      }

      v26 = *(inited + 72);
    }

    v27 = v26;
    [v0 addArrangedSubview:v26];

    if (v15)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 7uLL)
    {
      v28 = *(inited + 80);
      goto LABEL_22;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
  v29 = v28;
  [v0 addArrangedSubview:v28];

  swift_setDeallocating();
  swift_arrayDestroy();
  v30 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTryInteractWithDisabledMessageView"];
  [v11 addGestureRecognizer:v30];
  v31 = *&v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageViewGestureRecognizer];
  *&v0[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageViewGestureRecognizer] = v30;
  v32 = v30;

  [v13 setNumberOfLines:0];
  [v13 setTextAlignment:4];
  v33 = [objc_opt_self() secondaryLabelColor];
  [v13 setTextColor:v33];

  v34 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
  [v13 setFont:v34];
}

void sub_100143398()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100555120;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView);
  *(inited + 48) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView);
  *(inited + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView);
  *(inited + 64) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_footerLabel);
  *(inited + 72) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_disableButton);
  *(inited + 80) = v8;
  v9 = inited & 0xC000000000000001;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  for (i = v10; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v18 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_23;
      }

      v19 = *(inited + 40);
    }

    v20 = v19;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_23;
      }

      v21 = *(inited + 48);
    }

    v22 = v21;
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_23;
      }

      v23 = *(inited + 56);
    }

    v24 = v23;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_23;
      }

      v25 = *(inited + 64);
    }

    v26 = v25;
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_23;
      }

      v27 = *(inited + 72);
    }

    v28 = v27;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 7uLL)
    {
      v29 = *(inited + 80);
      goto LABEL_22;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
  v30 = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = objc_opt_self();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1005528C0;
  v33 = [*&v14[OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter] heightAnchor];
  v34 = [v33 constraintGreaterThanOrEqualToConstant:92.0];

  type metadata accessor for UILayoutPriority(0);
  sub_1000394CC();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v35) = v37;
  [v34 setPriority:v35];
  *(v32 + 32) = v34;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:isa];
}

void sub_10014378C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v71._object = 0x8000000100579A00;
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001005808F0;
  v5.value._object = 0x80000001005799E0;
  v71._countAndFlagsBits = 0xD000000000000018;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v71);

  v7 = *(*(v1 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView) + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_label);
  v8 = String._bridgeToObjectiveC()();

  [v7 setText:v8];

  v9 = [v2 mainBundle];
  v72._object = 0x8000000100580950;
  v10._countAndFlagsBits = 0xD00000000000002ALL;
  v10._object = 0x8000000100580920;
  v72._countAndFlagsBits = 0xD00000000000003CLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v72);

  v12 = *(*(v1 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView) + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_label);
  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  v14 = *(v1 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView);
  v15 = [v2 mainBundle];
  v73._object = 0x8000000100579A00;
  v16._countAndFlagsBits = 0xD00000000000002DLL;
  v16._object = 0x8000000100580990;
  v17.value._object = 0x80000001005799E0;
  v73._countAndFlagsBits = 0xD000000000000018;
  v17.value._countAndFlagsBits = 0xD000000000000013;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v73);

  v67 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_placeholderTextView;
  v19 = *&v14[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_placeholderTextView];
  v20 = String._bridgeToObjectiveC()();

  [v19 setText:v20];

  v68 = v2;
  v21 = *(v1 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView);
  v22 = [v2 mainBundle];
  v74._object = 0x8000000100579A00;
  v23._countAndFlagsBits = 0xD00000000000002ALL;
  v23._object = 0x80000001005809C0;
  v24.value._object = 0x80000001005799E0;
  v74._countAndFlagsBits = 0xD000000000000018;
  v24.value._countAndFlagsBits = 0xD000000000000013;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v74);

  v26 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_placeholderTextView;
  v27 = *&v21[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_placeholderTextView];
  v28 = String._bridgeToObjectiveC()();

  [v27 setText:v28];

  v29 = &v14[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType];
  v30 = *&v14[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType];
  v31 = *&v14[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType + 8];
  *v29 = 0;
  *(v29 + 1) = 0;
  v32 = v29[16];
  v29[16] = 2;
  sub_1001443E8(v30, v31, v32);
  sub_1002CFC18();
  v33 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView;
  [*&v14[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView] setKeyboardType:5];
  [*&v14[v33] setTextContentType:UITextContentTypeTelephoneNumber];
  [*&v14[v33] setScrollEnabled:0];
  [*&v14[v67] setScrollEnabled:0];
  v34 = String._bridgeToObjectiveC()();
  [v14 setAccessibilityIdentifier:v34];

  v35 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView;
  v36 = [*&v21[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView] text];
  if (v36)
  {
    v37 = v36;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = &v21[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType];
  v42 = *&v21[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType];
  v43 = *&v21[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType + 8];
  *v41 = v38;
  *(v41 + 1) = v40;
  v44 = v41[16];
  v41[16] = 1;
  sub_1001443E8(v42, v43, v44);
  sub_1002CFC18();
  [*&v21[v35] setKeyboardType:7];
  [*&v21[v35] setTextContentType:UITextContentTypeEmailAddress];
  [*&v21[v35] setScrollEnabled:0];
  [*&v21[v26] setScrollEnabled:0];
  v45 = String._bridgeToObjectiveC()();
  [v21 setAccessibilityIdentifier:v45];

  v46 = *(v1 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView);
  v47 = [v68 mainBundle];
  v75._object = 0x8000000100579A00;
  v48._countAndFlagsBits = 0xD00000000000002FLL;
  v48._object = 0x80000001005809F0;
  v49.value._object = 0x80000001005799E0;
  v75._countAndFlagsBits = 0xD000000000000018;
  v49.value._countAndFlagsBits = 0xD000000000000013;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v75);

  v51 = *&v46[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_placeholderTextView];
  v52 = String._bridgeToObjectiveC()();

  [v51 setText:v52];

  v53 = String._bridgeToObjectiveC()();
  [v46 setAccessibilityIdentifier:v53];

  v54 = *(v1 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_disableButton);
  v55 = [objc_opt_self() systemBlueColor];
  [v54 setTitleColor:v55 forState:0];

  v56 = [v54 titleLabel];
  if (v56)
  {
    v57 = v56;
    v58 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v57 setFont:v58];
  }

  v59 = [v54 titleLabel];
  if (v59)
  {
    v60 = v59;
    [v59 setLineBreakMode:0];
  }

  v61 = [v54 titleLabel];
  if (v61)
  {
    v62 = v61;
    [v61 setAdjustsFontForContentSizeCategory:1];
  }

  v63 = [v68 mainBundle];
  v76._object = 0x8000000100580A40;
  v64._countAndFlagsBits = 0xD00000000000001BLL;
  v64._object = 0x8000000100580A20;
  v76._countAndFlagsBits = 0xD00000000000002DLL;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v64, 0, v63, v65, v76);

  v66 = String._bridgeToObjectiveC()();

  [v54 setTitle:v66 forState:0];

  v69 = String._bridgeToObjectiveC()();
  [v54 setAccessibilityIdentifier:v69];
}

uint64_t sub_100143F80(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100318B10(*(a2 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_disableButton));

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100143FE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView);
  v2 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isEditable;
  v3 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_isEnabled;
  *(v1 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_isEnabled) = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isEditable);
  v4 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView;
  [*(v1 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView) setUserInteractionEnabled:?];
  v5 = *(v1 + v4);
  LODWORD(v1) = *(v1 + v3);
  v6 = objc_opt_self();
  if (v1)
  {
    v7 = &selRef_labelColor;
  }

  else
  {
    v7 = &selRef_secondaryLabelColor;
  }

  v8 = [v6 *v7];
  [v5 setTextColor:v8];

  v9 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView);
  v10 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_isEnabled;
  *(v9 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_isEnabled) = *(v0 + v2);
  v11 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView;
  [*(v9 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView) setUserInteractionEnabled:?];
  v12 = *(v9 + v11);
  LODWORD(v9) = *(v9 + v10);
  v13 = objc_opt_self();
  if (v9)
  {
    v14 = &selRef_labelColor;
  }

  else
  {
    v14 = &selRef_secondaryLabelColor;
  }

  v15 = [v13 *v14];
  [v12 setTextColor:v15];

  v16 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView);
  if (*(v0 + v2) == 1)
  {
    v17 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isMessageEditable);
  }

  else
  {
    v17 = 0;
  }

  v18 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_isEnabled;
  *(v16 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_isEnabled) = v17;
  v19 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView;
  [*(v16 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView) setUserInteractionEnabled:?];
  v20 = *(v16 + v19);
  v21 = *(v16 + v18);
  v22 = objc_opt_self();
  if (v21)
  {
    v23 = &selRef_labelColor;
  }

  else
  {
    v23 = &selRef_secondaryLabelColor;
  }

  v24 = [v22 *v23];
  [v20 setTextColor:v24];

  result = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageViewGestureRecognizer);
  if (result)
  {
    if (*(v0 + v2) == 1)
    {
      v26 = *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isMessageEditable) ^ 1;
    }

    else
    {
      v26 = 0;
    }

    return [result setEnabled:v26 & 1];
  }

  return result;
}

id sub_1001442D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeSummaryContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001443E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001443FC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1001443FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

void sub_100144414(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView);
  type metadata accessor for FMLostModeSummaryTextView();
  v4 = v3;
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = 0x4000000000000000;
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v6 = 0x6000000000000000;
    }

    else
    {
      v9 = *(v1 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView);
      v10 = static NSObject.== infix(_:_:)();

      if ((v10 & 1) == 0)
      {
        return;
      }

      v6 = 0x2000000000000000;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = a1;
    sub_100319A10(v6 | a1);

    swift_unknownObjectRelease();
  }
}

void sub_100144534()
{
  v1 = v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_maxMessageLength;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_canEnableNotifyWhenFound) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowNotifyWhenFound) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowMessageView) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowDisableButton) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowEmailUpdates) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowEmail) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isEditable) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isMessageEditable) = 1;
  v2 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView;
  v3 = type metadata accessor for FMLostModeSummaryToggleView();
  *(v0 + v2) = [objc_allocWithZone(v3) init];
  v4 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView;
  *(v0 + v4) = [objc_allocWithZone(v3) init];
  v5 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView;
  v6 = type metadata accessor for FMLostModeSummaryTextView();
  *(v0 + v5) = [objc_allocWithZone(v6) init];
  v7 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView;
  *(v0 + v7) = [objc_allocWithZone(v6) init];
  v8 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView;
  *(v0 + v8) = [objc_allocWithZone(v6) init];
  v9 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_disableButton;
  *(v0 + v9) = [objc_allocWithZone(type metadata accessor for FMLostModeSummaryButton()) init];
  v10 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_footerLabel;
  *(v0 + v10) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageViewGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10014498C()
{
  v28 = [v0 contentView];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && (v27 = v1, (v2 = [v1 imageLayoutGuide]) != 0))
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC6FindMy33FMAccessoryDiscoverySearchingCell_activityIndicator];
    v26 = [v4 isHidden];
    v5 = [v4 constraints];
    sub_10002B27C();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = v4;
      if (!i)
      {
        break;
      }

      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        [v4 removeConstraint:v9];

        ++v8;
        if (v11 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_15:

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 startAnimating];
    [v4 setHidden:v26];
    [v27 addSubview:v4];
    v13 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1005521F0;
    v15 = [v4 centerXAnchor];
    v16 = [v3 centerXAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v14 + 32) = v17;
    v18 = [v4 centerYAnchor];
    v19 = [v3 centerYAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(v14 + 40) = v20;
    v21 = [v4 widthAnchor];
    v22 = [v21 constraintEqualToConstant:44.0];

    *(v14 + 48) = v22;
    v23 = [v4 heightAnchor];
    v24 = [v23 constraintEqualToConstant:44.0];

    *(v14 + 56) = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 activateConstraints:isa];

    v12 = isa;
  }

  else
  {
    v12 = v28;
  }
}

id sub_100144D68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryDiscoverySearchingCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100144DD0(signed __int8 a1)
{
  v16 = type metadata accessor for UIButton.Configuration.Size();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100144FE0(a1);
  v5 = objc_opt_self();
  v6 = off_100628D80[a1];
  v7 = [v5 *off_100628D68[a1]];
  UIButton.Configuration.baseForegroundColor.setter();
  v8 = [objc_opt_self() *v6];
  UIButton.Configuration.baseBackgroundColor.setter();
  v9 = [objc_opt_self() *v6];
  v10 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v10(v17, 0);
  v11 = [objc_opt_self() *off_100628D98[a1]];
  v12 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.strokeColor.setter();
  v12(v17, 0);
  v13 = &enum case for UIButton.Configuration.Size.medium(_:);
  if ((a1 & 0xFE) != 0)
  {
    v13 = &enum case for UIButton.Configuration.Size.large(_:);
  }

  (*(v2 + 104))(v4, *v13, v16);
  return UIButton.Configuration.buttonSize.setter();
}

uint64_t sub_100144FE0(unsigned __int8 a1)
{
  v1 = a1;
  v2 = type metadata accessor for UIButton.Configuration.MacIdiomStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIButton.Configuration.plain()();
  v10 = *(v7 + 104);
  if (v1 == 2)
  {
    v10(v9, enum case for UIButton.Configuration.CornerStyle.dynamic(_:), v6);
    UIButton.Configuration.cornerStyle.setter();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.MacIdiomStyle.bordered(_:), v2);
    UIButton.Configuration.macIdiomStyle.setter();
    v11 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    return v11(v13, 0);
  }

  else
  {
    v10(v9, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v6);
    UIButton.Configuration.cornerStyle.setter();
    return UIButton.Configuration.imagePadding.setter();
  }
}

id sub_10014521C(char *a1)
{
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result setUserInteractionEnabled:1];

  result = [a1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.1];
  [v4 setBackgroundColor:v5];

  [*&a1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_visualEffectView] setAlpha:1.0];
  v6 = *&a1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_darkenerView];
  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceStyle];

  v9 = 0.07;
  if (v8 == 2)
  {
    v9 = 0.25;
  }

  [v6 setAlpha:v9];
  [*&a1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageView] setAlpha:1.0];
  v10 = *&a1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageView];

  return [v10 setAlpha:1.0];
}

uint64_t sub_100145398()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_isNoLocationShowing] == 1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005B14(v11, qword_1006D4630);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "FMNoLocationViewController: dismissing.", v14, 2u);
    }

    [*&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_visualEffectView] setHidden:1];
    [*&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_darkenerView] setHidden:1];
    [*&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageView] setHidden:1];
    [*&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageView] setHidden:1];
    sub_10000905C(0, &qword_1006AEDC0);
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    aBlock[4] = sub_10014B3C0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_1006291D8;
    v17 = _Block_copy(aBlock);
    v18 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100009FE8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

void sub_100145788(_BYTE *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_isNoLocationShowing] = a2;
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v12[4] = a4;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100004AE4;
  v12[3] = a5;
  v10 = _Block_copy(v12);
  v11 = a1;

  [v8 animateWithDuration:4 delay:v10 options:0 animations:0.4 completion:0.0];
  _Block_release(v10);
}

id sub_100145888(char *a1)
{
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  [result setUserInteractionEnabled:0];

  result = [a1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  [*&a1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_visualEffectView] setAlpha:0.0];
  [*&a1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_darkenerView] setAlpha:0.0];
  [*&a1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageView] setAlpha:0.0];
  v6 = *&a1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageView];

  return [v6 setAlpha:0.0];
}

uint64_t sub_1001459B4()
{
  v1 = v0;
  v2 = type metadata accessor for FMSelectedSection();
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMNoLocationViewController: previous selection tapped", v11, 2u);
  }

  v12 = *(*(v1 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator) + 56);
  v13 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
  swift_beginAccess();
  sub_100062074(v12 + v13, v7);
  v14 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v12 + v14, v5);
  swift_beginAccess();

  sub_100058530(v7, v12 + v14);
  swift_endAccess();
  sub_100058594(v5);

  sub_10005D4E4(v5);
  return sub_10005D4E4(v7);
}

uint64_t sub_100145C04()
{
  if ((FMIPDevice.hasLocation.getter() & 1) != 0 && (FMIPDevice.pairingIncomplete.getter() & 1) == 0)
  {
    return sub_100145398();
  }

  else
  {
    return sub_100148348();
  }
}

uint64_t sub_100145C4C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchQoS();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v54 = &v52 - v13;
  v52 = v14;
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  v17 = sub_10007EBC0(&unk_1006BBCE0);
  v18 = __chkstk_darwin(v17 - 8);
  v62 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = v9;
  v20 = *(v9 + 7);
  v21 = v8;
  v23 = (&v52 - v22);
  v20();
  sub_100012DF0(v23, &unk_1006BBCE0);
  v55 = v1;
  v24 = *(*&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator] + 56);
  v25 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v24 + v25, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 7)
    {
      return sub_10005D4E4(v7);
    }

    v27 = v63;
    v28 = v63[4];
    v28(v16, v7, v21);
  }

  else
  {
    v29 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v27 = v63;
    v28 = v63[4];
    v28(v16, v7, v21);
    sub_100012DF0(&v7[v29], &qword_1006B07D0);
  }

  v28(v23, v16, v21);
  (v20)(v23, 0, 1, v21);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100005B14(v30, qword_1006D4630);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v62;
  if (v33)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "FMNoLocationViewController: continuing to updateDeviceImage", v35, 2u);
    v27 = v63;
  }

  sub_100007204(v23, v34, &unk_1006BBCE0);
  if ((v27[6])(v34, 1, v21) == 1)
  {
    sub_100012DF0(v23, &unk_1006BBCE0);
    v36 = v34;
  }

  else
  {
    v63 = v23;
    v37 = v54;
    v28(v54, v34, v21);
    sub_10000905C(0, &qword_1006AEDC0);
    v62 = static OS_dispatch_queue.main.getter();
    v38 = v28;
    v39 = v53;
    v27[2](v53, v37, v21);
    v40 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v41 = swift_allocObject();
    v42 = v21;
    v43 = v55;
    *(v41 + 16) = v55;
    v38((v41 + v40), v39, v42);
    aBlock[4] = sub_10014B314;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100629188;
    v44 = _Block_copy(aBlock);
    v45 = v43;

    v46 = v56;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100009FE8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v47 = v58;
    v48 = v27;
    v49 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v50 = v62;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);

    (*(v60 + 8))(v47, v49);
    (*(v57 + 8))(v46, v59);
    (v48[1])(v37, v42);
    v36 = v63;
  }

  return sub_100012DF0(v36, &unk_1006BBCE0);
}

void sub_1001463D8(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v23 = a1;
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPDeviceImageSize();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  (*(v10 + 104))(&v22 - v14, enum case for FMIPDeviceImageSize.infobox(_:), v9);
  (*(v3 + 16))(v5, v22, v2);
  (*(v10 + 16))(v13, v15, v9);
  v16 = objc_opt_self();

  v17 = [v16 mainScreen];
  [v17 scale];

  FMIPDeviceImageCacheRequest.init(device:size:scale:)();
  dispatch thunk of FMImageCache.cachedImage(for:completion:)();
  (*(v6 + 8))(v8, v24);

  v18 = v25;
  (*(v10 + 8))(v15, v9);
  v19 = v23;
  [*(v23 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageView) setImage:v18];
  v20 = *(v19 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageViewWidthConstraint);
  if (v20)
  {
    v21 = v20;
    [v21 setConstant:56.0];
  }
}

uint64_t sub_100146730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1001467D4()
{
  v0 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  FMIPItem.location.getter();
  v3 = type metadata accessor for FMIPLocation();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_100012DF0(v2, &unk_1006C0220);
  if (v4 == 1)
  {
    return sub_100148348();
  }

  else
  {
    return sub_100145398();
  }
}

uint64_t sub_1001468D4()
{
  v1 = v0;
  v79 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for UUID();
  v84 = *(v100 - 8);
  __chkstk_darwin(v100);
  v82 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10007EBC0(&qword_1006B22E8);
  __chkstk_darwin(v89);
  v6 = &v68 - v5;
  v7 = sub_10007EBC0(&unk_1006B20C0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v86 = &v68 - v12;
  __chkstk_darwin(v11);
  v94 = &v68 - v13;
  v14 = type metadata accessor for FMIPBeaconShare();
  v91 = *(v14 - 8);
  v92 = v14;
  __chkstk_darwin(v14);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FMIPItem();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v74 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v23;
  __chkstk_darwin(v22);
  v25 = &v68 - v24;
  v83 = v1;
  v99 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator;
  v26 = *(*&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator] + 56);
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v26 + v27, v19);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    return sub_10005D4E4(v19);
  }

  v28 = *(v21 + 32);
  v93 = v25;
  v71 = v21 + 32;
  v70 = v28;
  v28(v25, v19, v20);
  v69 = v20;
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_26;
  }

LABEL_3:
  v90 = v21;
  v29 = type metadata accessor for Logger();
  sub_100005B14(v29, qword_1006D4630);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "FMNoLocationViewController: updateItemImage", v32, 2u);
  }

  v21 = *(*&v83[v99] + 24);
  v33 = *(v21 + 64);
  __chkstk_darwin(v34);
  v35 = v93;
  *(&v68 - 2) = v93;

  v36 = sub_1001048C4(sub_1001098B0, (&v68 - 4), v33);

  v37 = v36;
  v38 = v80;
  v39 = v92;
  v99 = *(v36 + 16);
  if (v99)
  {
    v40 = 0;
    v41 = v91;
    v98 = v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v96 = (v91 + 8);
    v97 = v91 + 16;
    v88 = (v84 + 7);
    v42 = (v84 + 6);
    v72 = (v84 + 4);
    ++v84;
    v43 = v90;
    v44 = v86;
    v95 = v37;
    v85 = v10;
    v87 = v42;
    while (1)
    {
      if (v40 >= *(v37 + 16))
      {
        __break(1u);
LABEL_26:
        swift_once();
        goto LABEL_3;
      }

      (*(v41 + 16))(v16, v98 + *(v41 + 72) * v40, v39);
      v21 = v16;
      if (FMIPBeaconShare.isSharedLostItem.getter())
      {
        v45 = v94;
        FMIPBeaconShare.beaconIdentifier.getter();
        v46 = v100;
        (*v88)(v45, 0, 1, v100);
        FMIPItem.identifier.getter();
        UUID.init(uuidString:)();

        v21 = *(v89 + 48);
        sub_100007204(v45, v6, &unk_1006B20C0);
        sub_100007204(v44, &v6[v21], &unk_1006B20C0);
        v10 = v16;
        v47 = *v87;
        if ((*v87)(v6, 1, v46) == 1)
        {
          sub_100012DF0(v44, &unk_1006B20C0);
          sub_100012DF0(v45, &unk_1006B20C0);
          v39 = v92;
          (*v96)(v16, v92);
          v48 = v47(&v6[v21], 1, v100);
          v43 = v90;
          if (v48 == 1)
          {
            sub_100012DF0(v6, &unk_1006B20C0);
LABEL_22:

            v55 = 1;
LABEL_23:
            v56 = v79;
            v38 = v80;
            v57 = v69;
            v35 = v93;
            goto LABEL_24;
          }
        }

        else
        {
          v49 = v85;
          v10 = &unk_100552E10;
          sub_100007204(v6, v85, &unk_1006B20C0);
          v50 = v100;
          if (v47(&v6[v21], 1, v100) != 1)
          {
            v10 = v49;
            v51 = v82;
            (*v72)(v82, &v6[v21], v50);
            sub_100009FE8(&qword_1006B22F0, &type metadata accessor for UUID);
            v81 = dispatch thunk of static Equatable.== infix(_:_:)();
            v21 = v84;
            v52 = *v84;
            (*v84)(v51, v50);
            v53 = v86;
            sub_100012DF0(v86, &unk_1006B20C0);
            sub_100012DF0(v94, &unk_1006B20C0);
            v39 = v92;
            (*v96)(v16, v92);
            v52(v10, v50);
            sub_100012DF0(v6, &unk_1006B20C0);
            v44 = v53;
            v43 = v90;
            v41 = v91;
            if (v81)
            {
              goto LABEL_22;
            }

            goto LABEL_8;
          }

          v21 = v86;
          sub_100012DF0(v86, &unk_1006B20C0);
          sub_100012DF0(v94, &unk_1006B20C0);
          v39 = v92;
          (*v96)(v16, v92);
          v44 = v21;
          (*v84)(v49, v50);
          v43 = v90;
        }

        sub_100012DF0(v6, &qword_1006B22E8);
        v41 = v91;
      }

      else
      {
        (*v96)(v16, v39);
      }

LABEL_8:
      ++v40;
      v37 = v95;
      if (v99 == v40)
      {

        v55 = 0;
        goto LABEL_23;
      }
    }
  }

  v55 = 0;
  v43 = v90;
  v56 = v79;
  v57 = v69;
LABEL_24:
  sub_10000905C(0, &qword_1006AEDC0);
  v58 = static OS_dispatch_queue.main.getter();
  v59 = v74;
  (*(v43 + 16))(v74, v35, v57);
  v60 = v57;
  v61 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = v55;
  v63 = v83;
  *(v62 + 24) = v83;
  v70(v62 + v61, v59, v60);
  aBlock[4] = sub_10014B1E0;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100629138;
  v64 = _Block_copy(aBlock);
  v65 = v63;

  v66 = v75;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009FE8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v67 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v64);

  (*(v38 + 8))(v67, v56);
  (*(v76 + 8))(v66, v78);
  return (*(v43 + 8))(v93, v60);
}

void sub_1001475F8(char a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPItemImageSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = sub_1001C91BC();
  }

  else
  {
    (*(v7 + 104))(v9, enum case for FMIPItemImageSize.infobox(_:), v6);

    v11 = [a2 traitCollection];
    v12 = [v11 userInterfaceStyle];

    v10 = sub_1001C8A1C(a3, v9, v12 == 2);

    (*(v7 + 8))(v9, v6);
  }

  [*&a2[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageView] setImage:v10];
  v13 = *&a2[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageViewWidthConstraint];
  if (v13)
  {
    v14 = v13;
    [v14 setConstant:66.0];
  }
}

uint64_t sub_1001477CC(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for FMFFriend();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - v8;
  v23[2] = a1;
  FMFFriend.location.getter();
  v10 = type metadata accessor for FMFLocation();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100012DF0(v9, &qword_1006AF740);
  }

  else
  {
    v12 = FMFLocation.location.getter();
    (*(v11 + 8))(v9, v10);
    if (v12)
    {

      return sub_100145398();
    }
  }

  v23[1] = a2;

  v14 = dispatch thunk of FMFManager.pendingDeleteFriends.getter();

  v15 = 0;
  v16 = *(v14 + 16);
  v17 = (v4 + 8);
  while (1)
  {
    if (v16 == v15)
    {

      return sub_100148348();
    }

    if (v15 >= *(v14 + 16))
    {
      break;
    }

    (*(v4 + 16))(v6, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v24);
    v19 = FMFFriend.identifier.getter();
    v21 = v20;
    if (v19 == FMFFriend.identifier.getter() && v21 == v22)
    {

      (*v17)(v6, v24);
    }

    ++v15;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v17)(v6, v24);
    if (v18)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100147AE0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMFFriend();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v33 = v0;
  v14 = *(*&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator] + 56);
  v15 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v14 + v15, v6);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_10005D4E4(v6);
  }

  v31 = *(v8 + 32);
  v31(v13, v6, v7);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "FMNoLocationViewController: updatePersonImage", v19, 2u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v20 = static OS_dispatch_queue.main.getter();
  (*(v8 + 16))(v11, v13, v7);
  v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = v33;
  *(v22 + 16) = v33;
  v31((v22 + v21), v11, v7);
  aBlock[4] = sub_10014B1B4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006290E8;
  v24 = _Block_copy(aBlock);
  v25 = v23;

  v26 = v32;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009FE8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v27 = v35;
  v28 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v37 + 8))(v27, v28);
  (*(v34 + 8))(v26, v36);
  return (*(v8 + 8))(v13, v7);
}

void sub_10014803C(uint64_t a1, uint64_t a2)
{

  v6 = sub_10002DCD8(a2, 1);

  [*(a1 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageView) setImage:v6];
  v4 = *(a1 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageViewWidthConstraint);
  if (v4)
  {
    v5 = v4;
    [v5 setConstant:66.0];
  }
}

id sub_100148138()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNoLocationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100148348()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMSelectedSection();
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  if (v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_isNoLocationShowing] != 1 || (v16 = *(*&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator] + 56), v35 = v9, v17 = v5, v18 = v2, v19 = v7, v20 = v3, v21 = v6, v22 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection, swift_beginAccess(), sub_100062074(v16 + v22, v15), v23 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection, swift_beginAccess(), v24 = v16 + v23, v6 = v21, v3 = v20, v7 = v19, v2 = v18, v5 = v17, v9 = v35, sub_100062074(v24, v13), LOBYTE(v16) = sub_10005F7D0(v15, v13), sub_10005D4E4(v13), result = sub_10005D4E4(v15), (v16 & 1) == 0))
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100005B14(v26, qword_1006D4630);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "FMNoLocationViewController: showing.", v29, 2u);
    }

    [*&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_visualEffectView] setHidden:0];
    [*&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_darkenerView] setHidden:0];
    [*&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageView] setHidden:0];
    [*&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageView] setHidden:0];
    sub_10000905C(0, &qword_1006AEDC0);
    v30 = static OS_dispatch_queue.main.getter();
    v31 = swift_allocObject();
    *(v31 + 16) = v1;
    aBlock[4] = sub_1001496B0;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100628F58;
    v32 = _Block_copy(aBlock);
    v33 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100009FE8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_100148858(uint64_t a1)
{
  v105 = a1;
  v2 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v2 - 8);
  v90 = &v86 - v3;
  v97 = type metadata accessor for FMFFriend();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v5 - 8);
  v88 = &v86 - v6;
  v7 = sub_10007EBC0(&unk_1006C0220);
  v8 = __chkstk_darwin(v7 - 8);
  v86 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v91 = &v86 - v10;
  v92 = type metadata accessor for FMIPItem();
  v98 = *(v92 - 8);
  v11 = __chkstk_darwin(v92);
  v87 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v86 - v13;
  v14 = type metadata accessor for FMIPDevice();
  v15 = *(v14 - 8);
  v102 = v14;
  v103 = v15;
  v16 = __chkstk_darwin(v14);
  v100 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v86 - v18;
  v20 = type metadata accessor for FMSelectedSection();
  v21 = __chkstk_darwin(v20);
  v93 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v99 = &v86 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v86 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v86 - v29;
  __chkstk_darwin(v28);
  v32 = &v86 - v31;
  v101 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_devicesSubscription;
  v33 = *(v1 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_devicesSubscription);
  v104 = v1;
  if (v33)
  {
    v34 = *(*(*(v1 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator) + 24) + 16);

    os_unfair_lock_lock((v34 + 24));
    sub_10008FB6C((v34 + 16));
    os_unfair_lock_unlock((v34 + 24));

    v1 = v104;
  }

  v89 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_peopleSubscription;
  if (*(v1 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_peopleSubscription))
  {
    v35 = *(*(*(v1 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator) + 48) + 32);

    os_unfair_lock_lock((v35 + 24));
    sub_10008FB88((v35 + 16));
    os_unfair_lock_unlock((v35 + 24));
  }

  swift_storeEnumTagMultiPayload();
  v36 = v105;
  v37 = sub_10005F7D0(v105, v32);
  result = sub_10005D4E4(v32);
  if (v37)
  {
    return result;
  }

  swift_storeEnumTagMultiPayload();
  v39 = sub_10005F7D0(v36, v32);
  result = sub_10005D4E4(v32);
  if (v39)
  {
    return result;
  }

  sub_100062074(v36, v30);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v40 = v102;
    (*(v103 + 32))(v19, v30, v102);
    v41 = FMIPDevice.hasLocation.getter();
    v42 = v104;
    if (v41 & 1) == 0 || (FMIPDevice.pairingIncomplete.getter())
    {
      v43 = *(*(v42 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator) + 24);
      type metadata accessor for FMDevicesSubscription();
      v44 = swift_allocObject();
      *(v44 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
      swift_unknownObjectWeakInit();

      UUID.init()();
      *(v44 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100628E50;
      swift_unknownObjectWeakAssign();
      v45 = *(v43 + 16);

      os_unfair_lock_lock((v45 + 24));
      sub_100012470((v45 + 16));
      os_unfair_lock_unlock((v45 + 24));

      *(v42 + v101) = v44;

      sub_100145C4C();
      sub_100148348();
      return (*(v103 + 8))(v19, v40);
    }

    (*(v103 + 8))(v19, v40);
  }

  else
  {
    sub_10005D4E4(v30);
    v42 = v104;
    v40 = v102;
  }

  sub_100062074(v36, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = v100;
  if (EnumCaseMultiPayload)
  {
    sub_10005D4E4(v27);
  }

  else
  {
    v61 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    (*(v103 + 32))(v47, v27, v40);
    sub_100012DF0(&v27[v61], &qword_1006B07D0);
    if (FMIPDevice.hasLocation.getter() & 1) == 0 || (FMIPDevice.pairingIncomplete.getter())
    {
      v62 = *(*(v42 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator) + 24);
      type metadata accessor for FMDevicesSubscription();
      v63 = swift_allocObject();
      *(v63 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
      swift_unknownObjectWeakInit();

      UUID.init()();
      *(v63 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100628E50;
      swift_unknownObjectWeakAssign();
      v64 = *(v62 + 16);

      os_unfair_lock_lock((v64 + 24));
      sub_100012470((v64 + 16));
      os_unfair_lock_unlock((v64 + 24));

      *(v42 + v101) = v63;

      sub_100145C4C();
      sub_100148348();
      return (*(v103 + 8))(v47, v40);
    }

    (*(v103 + 8))(v47, v40);
  }

  v48 = v99;
  sub_100062074(v36, v99);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10005D4E4(v48);
    goto LABEL_24;
  }

  v49 = v98;
  v50 = *(v98 + 32);
  v51 = v96;
  v52 = v92;
  v50(v96, v48, v92);
  v53 = v91;
  FMIPItem.location.getter();
  v54 = type metadata accessor for FMIPLocation();
  v103 = *(*(v54 - 8) + 48);
  if ((v103)(v53, 1, v54) != 1)
  {
    (*(v49 + 8))(v51, v52);
    sub_100012DF0(v53, &unk_1006C0220);
    v42 = v104;
    v36 = v105;
LABEL_24:
    v65 = v93;
    sub_100062074(v36, v93);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      (*(v95 + 32))(v94, v65, v97);
      v66 = v90;
      FMFFriend.location.getter();
      v67 = type metadata accessor for FMFLocation();
      v68 = *(v67 - 8);
      if ((*(v68 + 48))(v66, 1, v67) == 1)
      {
        sub_100012DF0(v66, &qword_1006AF740);
LABEL_31:
        v70 = *(*(v42 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator) + 48);
        type metadata accessor for FMPeopleSubscription();
        v71 = swift_allocObject();
        *(v71 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v71 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100628DE8;
        swift_unknownObjectWeakAssign();
        v72 = *(v70 + 32);

        os_unfair_lock_lock((v72 + 24));
        sub_10000E7C0((v72 + 16));
        os_unfair_lock_unlock((v72 + 24));

        *(v42 + v89) = v71;

        sub_100147AE0();
        sub_100148348();
        return (*(v95 + 8))(v94, v97);
      }

      v69 = FMFLocation.location.getter();
      (*(v68 + 8))(v66, v67);
      if (!v69)
      {
        goto LABEL_31;
      }

      (*(v95 + 8))(v94, v97);
    }

    else
    {
      sub_10005D4E4(v65);
    }

    return sub_100145398();
  }

  v102 = v50;
  sub_100012DF0(v53, &unk_1006C0220);
  v105 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator;

  v55 = FMIPItem.identifier.getter();
  v56 = v88;
  sub_1000E5FF8(v55, v57, v88);

  if ((*(v49 + 48))(v56, 1, v52) == 1)
  {
    sub_100012DF0(v56, &qword_1006B07D0);
    v58 = v104;
    v59 = v98;
    v60 = v96;
LABEL_36:
    v77 = *(*(v58 + v105) + 24);
    type metadata accessor for FMDevicesSubscription();
    v78 = swift_allocObject();
    *(v78 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
    swift_unknownObjectWeakInit();

    UUID.init()();
    *(v78 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100628E50;
    swift_unknownObjectWeakAssign();
    v79 = *(v77 + 16);

    os_unfair_lock_lock((v79 + 24));
    sub_10000E7C0((v79 + 16));
    os_unfair_lock_unlock((v79 + 24));

    *(v58 + v101) = v78;

    sub_1001468D4();
    sub_100148348();
    return (*(v59 + 8))(v60, v92);
  }

  v73 = v52;
  v74 = v87;
  v102(v87, v56, v52);
  v75 = v86;
  FMIPItem.location.getter();
  v76 = (v103)(v75, 1, v54);
  v60 = v96;
  if (v76 == 1)
  {
    v59 = v98;
    (*(v98 + 8))(v74, v73);
    sub_100012DF0(v75, &unk_1006C0220);
    v58 = v104;
    goto LABEL_36;
  }

  sub_100012DF0(v75, &unk_1006C0220);
  v80 = v98;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  sub_100005B14(v81, qword_1006D4630);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "FMNoLocationViewController: Refreshed selected item has location. Hiding", v84, 2u);
  }

  sub_100145398();
  v85 = *(v80 + 8);
  v85(v87, v73);
  return (v85)(v60, v73);
}

uint64_t sub_1001496FC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v1 - 8);
  v45 = v1;
  __chkstk_darwin(v1);
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFFriend();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v39 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v46 = &v39 - v15;
  __chkstk_darwin(v14);
  v47 = &v39 - v16;
  v48 = v0;
  v17 = *(*&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator] + 56);
  v18 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v17 + v18, v9);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v19 = v11;
    v20 = v9;
    v21 = *(v11 + 32);
    v22 = v10;
    v21(v47, v20, v10);

    v23 = FMFFriend.identifier.getter();
    sub_1000BD300(v23, v24, v6);

    if ((*(v19 + 48))(v6, 1, v10) == 1)
    {
      (*(v19 + 8))(v47, v10);
      sub_100012DF0(v6, &qword_1006B0050);
    }

    else
    {
      v25 = v46;
      v21(v46, v6, v22);
      sub_10000905C(0, &qword_1006AEDC0);
      v26 = static OS_dispatch_queue.main.getter();
      v27 = v39;
      (*(v19 + 16))(v39, v25, v22);
      v28 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v29 = swift_allocObject();
      v21((v29 + v28), v27, v22);
      v30 = v48;
      *(v29 + ((v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v48;
      aBlock[4] = sub_10014B0E0;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100629098;
      v31 = _Block_copy(aBlock);
      v32 = v30;

      v33 = v19;
      v34 = v40;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100009FE8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v35 = v42;
      v36 = v45;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v31);

      (*(v44 + 8))(v35, v36);
      (*(v41 + 8))(v34, v43);
      v37 = *(v33 + 8);
      v37(v46, v22);
      v37(v47, v22);
    }
  }

  else
  {
    sub_10005D4E4(v9);
  }

  return sub_100147AE0();
}

uint64_t sub_100149D00(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPDevice();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  v13 = __chkstk_darwin(v11);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v51 = &v43 - v15;
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v19, v20, "FMNoLocationViewController: didUpdate %ld devices", v21, 0xCu);
  }

  else
  {
  }

  v22 = *(*&v53[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator] + 56);
  v23 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v22 + v23, v10);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10005D4E4(v10);
  }

  else
  {
    v24 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v25 = v52;
    v26 = *(v52 + 32);
    v26(v17, v10, v11);
    v27 = sub_100012DF0(&v10[v24], &qword_1006B07D0);
    __chkstk_darwin(v27);
    *(&v43 - 2) = v17;
    sub_1001108AC(sub_10014AFDC, a1, v7);
    if ((*(v25 + 48))(v7, 1, v11) == 1)
    {
      sub_100012DF0(v7, &unk_1006BBCE0);
      (*(v25 + 8))(v17, v11);
    }

    else
    {
      v28 = v51;
      v26(v51, v7, v11);
      sub_10000905C(0, &qword_1006AEDC0);
      v29 = v25;
      v43 = static OS_dispatch_queue.main.getter();
      v30 = v44;
      (*(v25 + 16))(v44, v28, v11);
      v31 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v32 = swift_allocObject();
      v26((v32 + v31), v30, v11);
      v33 = v53;
      *(v32 + ((v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v53;
      aBlock[4] = sub_10014B010;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100629048;
      v34 = _Block_copy(aBlock);
      v35 = v33;

      v36 = v17;
      v37 = v45;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100009FE8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v38 = v47;
      v39 = v50;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v40 = v43;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v34);

      (*(v49 + 8))(v38, v39);
      (*(v46 + 8))(v37, v48);
      v41 = *(v29 + 8);
      v41(v51, v11);
      v41(v36, v11);
    }
  }

  return sub_100145C4C();
}

uint64_t sub_10014A438(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPItem();
  v14 = *(v13 - 8);
  v57 = v13;
  v58 = v14;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v56 = &v47 - v18;
  __chkstk_darwin(v17);
  v20 = &v47 - v19;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100005B14(v21, qword_1006D4630);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v2;
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v22, v23, "FMNoLocationViewController: didUpdate %ld items", v25, 0xCu);
    v2 = v24;
  }

  else
  {
  }

  v59 = v2;
  v26 = *(*&v2[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator] + 56);
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v26 + v27, v12);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v29 = v57;
    v28 = v58;
    v30 = *(v58 + 32);
    v31 = v30(v20, v12, v57);
    __chkstk_darwin(v31);
    v48 = v20;
    *(&v47 - 2) = v20;
    sub_10011FB64(sub_10014AF7C, a1, v9);
    if ((*(v28 + 48))(v9, 1, v29) == 1)
    {
      sub_100012DF0(v9, &qword_1006B07D0);
      (*(v28 + 8))(v48, v29);
    }

    else
    {
      v32 = v56;
      v30(v56, v9, v29);
      sub_10000905C(0, &qword_1006AEDC0);
      v33 = v28;
      v47 = static OS_dispatch_queue.main.getter();
      v34 = v49;
      (*(v28 + 16))(v49, v32, v29);
      v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
      v36 = (v15 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      v30((v37 + v35), v34, v29);
      v38 = v59;
      *(v37 + v36) = v59;
      aBlock[4] = sub_10014AFB0;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100628FF8;
      v39 = _Block_copy(aBlock);
      v40 = v38;

      v41 = v50;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100009FE8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v42 = v52;
      v43 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v44 = v47;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v39);

      (*(v54 + 8))(v42, v43);
      (*(v51 + 8))(v41, v53);
      v45 = *(v33 + 8);
      v45(v56, v29);
      v45(v48, v29);
    }
  }

  else
  {
    sub_10005D4E4(v12);
  }

  return sub_1001468D4();
}

void sub_10014AB60()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_visualEffectView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_darkenerView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for FMNoLocationBackgroundView()) initWithFrame:{0.0, 0.0, 80.0, 80.0}];
  v4 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageView;
  *(v0 + v4) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageViewTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_selectionSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_devicesSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_peopleSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_isNoLocationShowing) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_compactConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_regularConstraints) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10014ACC8(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(id), const char *a5, uint64_t (*a6)(void))
{
  v30 = a4;
  v31 = a5;
  v9 = a3(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  (*(v10 + 16))(v12, a2, v9);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2080;
    v21 = v14;
    v22 = v30(v21);
    v24 = v23;
    (*(v10 + 8))(v12, v9);
    v25 = sub_100005B4C(v22, v24, &v32);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, v31, v18, 0x16u);
    sub_100012DF0(v19, &unk_1006AF760);

    sub_100006060(v20);

    a6 = v29;
  }

  else
  {

    v26 = (*(v10 + 8))(v12, v9);
  }

  return a6(v26);
}

uint64_t sub_10014B03C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_10014B10C(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v4, v5);
}

void sub_10014B1E0()
{
  v1 = *(type metadata accessor for FMIPItem() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1001475F8(v2, v3, v4);
}

uint64_t sub_10014B248(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10014B340(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

id sub_10014B454()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled;
  [v0 setUserInteractionEnabled:v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled]];
  v2 = v0[v1];
  v3 = UIAccessibilityTraitNotEnabled;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch];
  v5 = [v4 accessibilityTraits];
  v6 = v5 & v3;
  if (v2 == 1)
  {
    v7 = v6 == 0;
    v8 = -1;
    if (!v7)
    {
      v8 = ~v3;
    }

    [v4 setAccessibilityTraits:v8 & v5];

    v9 = *&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 labelColor];
    [v11 setTextColor:v12];
  }

  else
  {
    if (v6 == v3)
    {
      v13 = 0;
    }

    else
    {
      v13 = v3;
    }

    [v4 setAccessibilityTraits:v13 | v5];

    v14 = *&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];
    v22 = &type metadata for SolariumFeatureFlag;
    v23 = sub_10000BD04();
    v15 = v14;
    v16 = isFeatureEnabled(_:)();
    sub_100006060(v21);
    v17 = objc_opt_self();
    v18 = &selRef_tertiaryLabelColor;
    if ((v16 & 1) == 0)
    {
      v18 = &selRef_quaternaryLabelColor;
    }

    v19 = [v17 *v18];
    [v15 setTextColor:v19];
  }

  return [*&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] setEnabled:v0[v1]];
}

char *sub_10014B62C()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel;
  *&v0[v1] = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleLabel;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch;
  *&v0[v3] = [objc_allocWithZone(UISwitch) init];
  v4 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator;
  *&v0[v4] = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleShowingConstraints] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = &v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitle];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn] = 0;
  v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated] = 1;
  v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_showSubtitle] = 1;
  v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled] = 1;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FMSettingSwitchView();
  v7 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10014BA88();
  sub_10014BD30();
  v8 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v7 action:"subtitleLabelSelected"];
  [*&v7[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleLabel] addGestureRecognizer:v8];

  return v7;
}

id sub_10014B978()
{
  v1 = [v0 isUserInteractionEnabled];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn;
    v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn] = (v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn] & 1) == 0;
    v3 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch;
    [*&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] setOn:?];
    [*&v0[v3] setOn:v0[v2]];
    v4 = &v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v0, v0[v2], ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  return v1;
}

id sub_10014BA88()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  [v4 setFont:v5];

  [*&v0[v1] setNumberOfLines:0];
  [*&v0[v1] setAdjustsFontForContentSizeCategory:1];
  v6 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 labelColor];
  v11 = [v10 colorWithAlphaComponent:0.1];

  [v9 setBackgroundColor:v11];
  v12 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleLabel;
  v13 = *&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleLabel];
  v14 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  [v13 setFont:v14];

  [*&v0[v12] setNumberOfLines:0];
  [*&v0[v12] setAdjustsFontForContentSizeCategory:1];
  v15 = *&v0[v12];
  v16 = [v8 secondaryLabelColor];
  [v15 setColor:v16];

  [*&v0[v12] setUserInteractionEnabled:1];
  v17 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch;
  [*&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] addTarget:v0 action:"switchChanged" forControlEvents:4096];
  [*&v0[v17] setPreferredStyle:2];
  [v0 addSubview:*&v0[v1]];
  [v0 addSubview:*&v0[v17]];
  [v0 addSubview:*&v0[v12]];
  v18 = *&v0[v6];

  return [v0 addSubview:v18];
}

void sub_10014BD30()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch;
  [*&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] setTranslatesAutoresizingMaskIntoConstraints:0];
  v74 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator;
  [*&v0[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v80 = _swiftEmptyArrayStorage;
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552F00;
  v5 = [*&v0[v3] topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintGreaterThanOrEqualToAnchor:v6 constant:8.0];

  *(inited + 32) = v7;
  v8 = [*&v1[v3] leadingAnchor];
  v9 = [*&v1[v2] trailingAnchor];
  v78 = &type metadata for SolariumFeatureFlag;
  v76 = sub_10000BD04();
  v79 = v76;
  v10 = isFeatureEnabled(_:)();
  sub_100006060(v77);
  v11 = 16.0;
  if ((v10 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v11 = *&qword_1006D4798;
  }

  v12 = [v8 constraintEqualToAnchor:v9 constant:v11];

  *(inited + 40) = v12;
  v13 = [*&v1[v3] centerYAnchor];
  v14 = [v1 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(inited + 48) = v15;
  v16 = [*&v1[v3] trailingAnchor];
  v17 = [v1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(inited + 56) = v18;
  v19 = [*&v1[v3] bottomAnchor];
  v20 = [v1 bottomAnchor];
  v21 = [v19 constraintLessThanOrEqualToAnchor:v20];

  *(inited + 64) = v21;
  sub_10001FF64(inited);
  v78 = &type metadata for SolariumFeatureFlag;
  v79 = v76;
  LOBYTE(v19) = isFeatureEnabled(_:)();
  sub_100006060(v77);
  v23 = *&v1[v3];
  if (v19)
  {
    LODWORD(v22) = 1148846080;
    [v23 setContentCompressionResistancePriority:0 forAxis:v22];
  }

  else
  {
    v24 = [v23 widthAnchor];
    v25 = [v24 constraintEqualToConstant:52.0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v73 = objc_opt_self();
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v73 activateConstraints:isa];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100552EF0;
  v28 = [*&v1[v2] topAnchor];
  v29 = [v1 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:15.0];

  *(v27 + 32) = v30;
  v31 = [*&v1[v2] leadingAnchor];
  v32 = [v1 leadingAnchor];
  v33 = 0.0;
  v34 = [v31 constraintEqualToAnchor:v32 constant:0.0];

  *(v27 + 40) = v34;
  v35 = [*&v1[v2] bottomAnchor];
  v36 = [v1 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:-15.0];

  *(v27 + 48) = v37;
  *&v1[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleHiddenConstraints] = v27;

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100555280;
  v39 = [*&v1[v2] topAnchor];
  v40 = [v1 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:15.0];

  *(v38 + 32) = v41;
  v42 = [*&v1[v2] leadingAnchor];
  v43 = [v1 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:0.0];

  *(v38 + 40) = v44;
  v45 = [*&v1[v2] bottomAnchor];
  v46 = [*&v1[v74] topAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-10.0];

  *(v38 + 48) = v47;
  v48 = [*&v1[v74] topAnchor];
  v49 = [*&v1[v2] bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:10.0];

  *(v38 + 56) = v50;
  v51 = [*&v1[v74] leadingAnchor];
  v52 = [v1 leadingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:0.0];

  *(v38 + 64) = v53;
  v54 = [*&v1[v74] bottomAnchor];
  v55 = [v1 bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:-6.0];

  *(v38 + 72) = v56;
  *&v1[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleShowingConstraints] = v38;

  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v73 deactivateConstraints:v57];

  v58 = Array._bridgeToObjectiveC()().super.isa;

  [v73 activateConstraints:v58];

  v78 = &type metadata for SolariumFeatureFlag;
  v79 = v76;
  LOBYTE(v38) = isFeatureEnabled(_:)();
  sub_100006060(v77);
  if ((v38 & 1) == 0)
  {
    v78 = &type metadata for SolariumFeatureFlag;
    v79 = v76;
    v59 = isFeatureEnabled(_:)();
    sub_100006060(v77);
    v33 = 16.0;
    if ((v59 & 1) == 0)
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v33 = *&qword_1006D4798;
    }
  }

  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1005521F0;
  v61 = [*&v1[v75] leadingAnchor];
  v62 = [v1 leadingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v60 + 32) = v63;
  v64 = [*&v1[v75] trailingAnchor];
  v65 = [v1 trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:v33];

  *(v60 + 40) = v66;
  v67 = [*&v1[v75] bottomAnchor];
  v68 = [v1 bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:0.0];

  *(v60 + 48) = v69;
  v70 = [*&v1[v75] heightAnchor];
  v71 = [v70 constraintEqualToConstant:1.0];

  *(v60 + 56) = v71;
  v72 = Array._bridgeToObjectiveC()().super.isa;

  [v73 activateConstraints:v72];
}

uint64_t sub_10014C838()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch;
  v2 = [*(v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch) isOn];
  v3 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = v2;
  [*(v0 + v1) setOn:v2];
  v4 = v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v0, *(v0 + v3), ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10014CA0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSettingSwitchView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10014CB28()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch;
  *(v0 + v3) = [objc_allocWithZone(UISwitch) init];
  v4 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleShowingConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitleHiddenConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = (v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_subtitle);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_showSubtitle) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_10014CCF4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_10000BEC8();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v6;
}

void *sub_10014CD94(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_10016715C(0, v2, 0);
    v32 = _swiftEmptyArrayStorage;
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v27 = v1 + 72;
    v28 = v2;
    v29 = v7;
    v30 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v31 = v6;
      v10 = (*(v1 + 48) + 16 * v5);
      v11 = v1;
      v13 = *v10;
      v12 = v10[1];

      swift_errorRetain();
      v14._countAndFlagsBits = v13;
      v14._object = v12;
      String.append(_:)(v14);
      v15._countAndFlagsBits = 8250;
      v15._object = 0xE200000000000000;
      String.append(_:)(v15);
      sub_10007EBC0(&unk_1006AF7B0);
      _print_unlocked<A, B>(_:_:)();

      v16 = v32;
      v18 = v32[2];
      v17 = v32[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10016715C((v17 > 1), v18 + 1, 1);
        v16 = v32;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = 0;
      v19[5] = 0xE000000000000000;
      v8 = 1 << *(v11 + 32);
      if (v5 >= v8)
      {
        goto LABEL_25;
      }

      v1 = v11;
      v4 = v30;
      v20 = *(v30 + 8 * v9);
      if ((v20 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v32 = v16;
      v7 = v29;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_27;
      }

      v21 = v20 & (-2 << (v5 & 0x3F));
      if (v21)
      {
        v8 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (v27 + 8 * v9);
        while (v23 < (v8 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000F6E08(v5, v29, 0);
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000F6E08(v5, v29, 0);
      }

LABEL_4:
      v6 = v31 + 1;
      v5 = v8;
      if (v31 + 1 == v28)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_10014D064(uint64_t a1, uint64_t a2, char *a3)
{
  v45 = a3;
  v46 = a2;
  v5 = sub_10007EBC0(&qword_1006B3658);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for FMIPProductType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC6FindMy40FMItemSharingContactPickerViewController_item;
  v13 = type metadata accessor for FMIPItem();
  v42 = *(v13 - 8);
  v43 = v13;
  (*(v42 + 16))(v3 + v12, a1);
  v44 = a1;
  FMIPItem.productType.getter();
  v14 = FMIPProductType.isAirTag.getter();
  (*(v9 + 8))(v11, v8);
  v15 = [objc_opt_self() mainBundle];
  v16 = "tPickerViewController";
  if (v14)
  {
    v16 = "SHARE_ITEM_BUTTON_TITLE";
    v17 = 0xD000000000000021;
  }

  else
  {
    v17 = 0xD00000000000001FLL;
  }

  v48._object = 0x800000010057D3F0;
  v18 = v16 | 0x8000000000000000;
  v19.value._object = 0x800000010057D3D0;
  v48._countAndFlagsBits = 0xD000000000000018;
  v19.value._countAndFlagsBits = 0xD000000000000013;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v17, v19, v15, v20, v48);

  v22 = objc_opt_self();
  v23 = v45;

  v24 = [v22 mainBundle];
  v49._object = 0x800000010057D3F0;
  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x8000000100580E60;
  v26.value._object = 0x800000010057D3D0;
  v49._countAndFlagsBits = 0xD000000000000018;
  v26.value._countAndFlagsBits = 0xD000000000000013;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v49);

  v29 = sub_100190CDC(v23, v21._countAndFlagsBits, v21._object, v28._countAndFlagsBits, v28._object);
  v29[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiresReachability] = 1;
  v30 = enum case for MessagingCapability.supportsBeaconSharingV3(_:);
  v31 = type metadata accessor for MessagingCapability();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v7, v30, v31);
  (*(v32 + 56))(v7, 0, 1, v31);
  v33 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiredCapability;
  swift_beginAccess();
  v34 = v29;
  v35 = &v29[v33];
  v36 = v46;
  sub_10014FE48(v7, v35);
  swift_endAccess();
  v37 = *(v36 + 16);
  if (!v37)
  {

    v38 = _swiftEmptyArrayStorage;
    goto LABEL_8;
  }

  v38 = sub_10002E21C(*(v36 + 16), 0);
  v39 = sub_100016318(&v47, v38 + 4, v37, v36);
  result = sub_10000BEC8();
  if (v39 == v37)
  {

LABEL_8:
    (*(v42 + 8))(v44, v43);
    *&v34[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_excludedSuggestedContactHandles] = v38;

    return v34;
  }

  __break(1u);
  return result;
}

void sub_10014D528(char a1)
{
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4CD8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemSharingContactPickerViewController: addRecipientTextAsRecipient - %{BOOL}d", v5, 8u);
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_10014DF3C();
    }
  }
}

id sub_10014D6B8(uint64_t a1, uint64_t a2)
{
  v28 = objc_opt_self();
  v4 = [v28 mainBundle];
  v30._object = 0x800000010057D3F0;
  v5._countAndFlagsBits = 0xD000000000000034;
  v5._object = 0x8000000100580F70;
  v6.value._object = 0x800000010057D3D0;
  v30._countAndFlagsBits = 0xD000000000000018;
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v30);

  sub_10007EBC0(&unk_1006B20B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100552220;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_10008EE84();
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  String.init(format:_:)();

  sub_10014FEB8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100552220;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = v9;
  *(v10 + 32) = 0xD000000000000029;
  *(v10 + 40) = 0x8000000100580FB0;
  v11 = NSPredicate.init(format:_:)();
  v12 = String._bridgeToObjectiveC()();
  LODWORD(a1) = [v11 evaluateWithObject:v12];

  v13 = [v28 mainBundle];
  v14 = "SHARE_ITEM_CONTACT_PICKER_ERROR_OUT_OF_NETWORK_MESSAGE_TITLE";
  if (a1)
  {
    v14 = "SHARE_ITEM_CONTACT_PICKER_ERROR_OUT_OF_NETWORK_MESSAGE_EMAIL";
  }

  v31._object = 0x800000010057D3F0;
  v15._countAndFlagsBits = 0xD00000000000003CLL;
  v15._object = ((v14 - 32) | 0x8000000000000000);
  v16.value._object = 0x800000010057D3D0;
  v31._countAndFlagsBits = 0xD000000000000018;
  v16.value._countAndFlagsBits = 0xD000000000000013;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v13, v17, v31);

  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];

  v21 = [v28 mainBundle];
  v32._object = 0x8000000100579B60;
  v22._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v22._object = 0xEF454C5449545F4ELL;
  v32._countAndFlagsBits = 0xD000000000000021;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v32);

  v24 = String._bridgeToObjectiveC()();

  aBlock[4] = State.rawValue.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100629278;
  v25 = _Block_copy(aBlock);

  v26 = [objc_opt_self() actionWithTitle:v24 style:0 handler:v25];
  _Block_release(v25);

  [v20 addAction:v26];
  return v20;
}

id sub_10014DAFC(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v2 = type metadata accessor for FMIPProductType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPItem.productType.getter();
  v6 = FMIPProductType.isAirTag.getter();
  (*(v3 + 8))(v5, v2);
  v7 = [objc_opt_self() mainBundle];
  v8 = "TACT_PICKER_TITLE";
  if (v6)
  {
    v8 = "INELIGIBLE_MESSAGE";
    v9 = 0xD000000000000037;
  }

  else
  {
    v9 = 0xD000000000000035;
  }

  v33._object = 0x800000010057D3F0;
  v10 = v8 | 0x8000000000000000;
  v11.value._object = 0x800000010057D3D0;
  v33._countAndFlagsBits = 0xD000000000000018;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, v11, v7, v12, v33);

  v13 = objc_opt_self();
  v14 = [v13 mainBundle];
  v34._object = 0x800000010057D3F0;
  v15._countAndFlagsBits = 0xD000000000000032;
  v15._object = 0x8000000100580EF0;
  v16.value._object = 0x800000010057D3D0;
  v34._countAndFlagsBits = 0xD000000000000018;
  v16.value._countAndFlagsBits = 0xD000000000000013;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v34);

  sub_10007EBC0(&unk_1006B20B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100552220;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10008EE84();
  v19 = v31;
  *(v18 + 32) = v30;
  *(v18 + 40) = v19;

  String.init(format:_:)();

  v20 = String._bridgeToObjectiveC()();

  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  v23 = [v13 mainBundle];
  v35._object = 0x8000000100579B60;
  v24._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v24._object = 0xEF454C5449545F4ELL;
  v35._countAndFlagsBits = 0xD000000000000021;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v35);

  v26 = String._bridgeToObjectiveC()();

  aBlock[4] = State.rawValue.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100629250;
  v27 = _Block_copy(aBlock);

  v28 = [objc_opt_self() actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  [v22 addAction:v28];
  return v22;
}