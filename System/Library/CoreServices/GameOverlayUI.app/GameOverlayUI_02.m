void sub_10003E824(id a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100011F80(v16, qword_100135C88);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v44 = a1;
    v19 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v19 = 136315650;
    format = a7;
    v20 = a3;
    if (a2)
    {
      v21 = v44;
    }

    else
    {
      v21 = 7104878;
    }

    v43 = a8;
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    v23 = sub_1000BA5C8(v21, v22, &v46);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    if (a4)
    {
      v24 = v20;
    }

    else
    {
      v24 = 7104878;
    }

    if (a4)
    {
      v25 = a4;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_1000BA5C8(v24, v25, &v46);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    if (a6)
    {
      v27 = a5;
    }

    else
    {
      v27 = 7104878;
    }

    if (a6)
    {
      v28 = a6;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_1000BA5C8(v27, v28, &v46);
    a8 = v43;

    *(v19 + 24) = v29;
    a3 = v20;
    _os_log_impl(&_mh_execute_header, v17, v18, format, v19, 0x20u);
    swift_arrayDestroy();

    a1 = v44;
  }

  v30 = sub_1000D1714(&_swiftEmptyArrayStorage);
  v31 = objc_allocWithZone(type metadata accessor for DashboardRequest());
  v45 = DashboardRequest.init(initialState:)(v30);
  v32 = &v45[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID];
  v33 = *&v45[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID + 8];
  *v32 = a1;
  *(v32 + 1) = a2;

  v34 = &v45[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID];
  v35 = *&v45[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID + 8];
  *v34 = a3;
  *(v34 + 1) = a4;

  v36 = &v45[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
  v37 = *&v45[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
  v38 = *&v45[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 8];
  v39 = *&v45[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 16];
  v40 = *&v45[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 24];
  *v36 = a8;
  *(v36 + 1) = 0;
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  v41 = v36[32];
  v36[32] = 3;

  sub_100030C94(v37, v38, v39, v40, v41);
  sub_10003D490(v45, a5, a6);
}

void sub_10003EB8C(void *a1)
{
  v2 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v6 = [objc_allocWithZone(FBSSystemService) init];
  v7 = [v6 isPasscodeLockedOrBlocked];

  if (v7)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100011F80(v8, qword_100135C88);
    v32 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v32, v9, "Skipping game mode banner request because device is locked or blocked.", v10, 2u);
    }

    v11 = v32;
  }

  else
  {
    v12 = sub_10007C628(8, 0, 0);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = [a1 bundleIdentifier];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [a1 enabled];
      v20 = [a1 actionSymbols];
      if (v20)
      {
        v21 = v20;
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v22 = 0;
      }

      v23 = [objc_opt_self() currentContext];
      type metadata accessor for ConnectionContext();
      swift_allocObject();
      v24 = sub_1000E0554(v23);
      v25 = type metadata accessor for RemoteAlertGameModeBannerContext(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_1000C0278(v14, v15, a1);
      v33[3] = v25;
      v33[4] = &off_100124070;
      v33[0] = v28;
      swift_beginAccess();

      sub_10003EF48(v33, v24 + 64);
      swift_endAccess();
      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = v32;
      *(v30 + 40) = v18;
      *(v30 + 48) = v19;
      *(v30 + 56) = v22;
      *(v30 + 64) = v24;

      sub_100014BBC(0, 0, v5, &unk_1000EA308, v30);
    }
  }
}

uint64_t sub_10003EF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&unk_100131120, &unk_1000EAAF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003EFB8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_10003F008(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014BAC;

  return sub_10003B8F4(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_10003F0E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_10003F12C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10003AFC0(a1, v4, v5, v7, v6);
}

unint64_t sub_10003F1EC()
{
  result = qword_10012E0A0;
  if (!qword_10012E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E0A0);
  }

  return result;
}

uint64_t sub_10003F240()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003F2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F3C0(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteAlertRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100036838(a1, v6, v7, v1 + v5);
}

uint64_t sub_10003F4B0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_10003F4F8()
{
  v1 = type metadata accessor for RemoteAlertRequest();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v0 + v2 + v1[6]);

  v7 = (v0 + v2 + v1[7]);
  if (*v7)
  {
    v8 = v7[1];
  }

  v9 = (v0 + v2 + v1[8]);
  if (*v9)
  {
    v10 = v9[1];
  }

  return swift_deallocObject();
}

uint64_t sub_10003F61C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

void sub_10003F6D0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  sub_100036A18(v0 + v2, v6, v7, v8, v9);
}

uint64_t sub_10003F770(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003F788(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10003F7D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014BAC;

  return sub_100034528(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003F8A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100034ABC(a1, v4, v5, v6, v7);
}

uint64_t sub_10003F9AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  sub_100030784(*(v0 + 96), *(v0 + 104));
  v6 = *(v0 + 120);

  return swift_deallocObject();
}

uint64_t sub_10003FA1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v15 = *(v1 + 88);
  v16 = *(v1 + 72);
  v14 = *(v1 + 104);
  v11 = *(v1 + 120);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014BAC;

  return sub_1000350FC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10003FB38(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10003FB54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RemoteAlertRequest() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for AccessPointUseCase() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014BAC;

  return sub_100032A60(a1, v10, v11, v1 + v6, v13, v14, v1 + v9);
}

uint64_t sub_10003FCC8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_10003FD10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014BAC;

  return sub_100036370(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003FE10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100032C54(a1, v4, v5, v7, v6);
}

uint64_t sub_10003FED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003FF20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_10003FF6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014BAC;

  return sub_100033E8C(a1, v4, v5, v6);
}

uint64_t sub_100040048()
{
  v1 = type metadata accessor for RemoteAlertRequest();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for AccessPointUseCase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v9 - 8) + 8))(v0 + v2, v9);
  v10 = *(v0 + v2 + v1[6]);

  v11 = (v0 + v2 + v1[7]);
  if (*v11)
  {
    v12 = v11[1];
  }

  v13 = (v0 + v2 + v1[8]);
  if (*v13)
  {
    v14 = v13[1];
  }

  v15 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + v6 + 16) & ~v6;
  v17 = *(v0 + v15 + 8);

  (*(v5 + 8))(v0 + v16, v4);

  return swift_deallocObject();
}

uint64_t sub_100040210()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10004027C(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_1000402D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_1000321EC(a1, v4, v5, v7, v6);
}

uint64_t sub_100040418(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100040568(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GameModeBannerView()
{
  result = qword_10012E140;
  if (!qword_10012E140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000406F0()
{
  type metadata accessor for RemoteAlertGameModeBannerContext(319);
  if (v0 <= 0x3F)
  {
    sub_1000407F4();
    if (v1 <= 0x3F)
    {
      sub_10002F480(319, &qword_10012CEE8);
      if (v2 <= 0x3F)
      {
        sub_10002F480(319, &qword_10012DD08);
        if (v3 <= 0x3F)
        {
          sub_100040840();
          if (v4 <= 0x3F)
          {
            sub_1000408A4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000407F4()
{
  result = qword_10012E150;
  if (!qword_10012E150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012E150);
  }

  return result;
}

void sub_100040840()
{
  if (!qword_10012E158)
  {
    sub_100005144(&qword_100132550, &qword_1000EC170);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10012E158);
    }
  }
}

void sub_1000408A4()
{
  if (!qword_10012DAD8)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10012DAD8);
    }
  }
}

double sub_100040918()
{
  v20 = type metadata accessor for EnvironmentValues();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002B38(&qword_100132570, &unk_1000E9C70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GameModeBannerView();
  sub_1000035B4(v0 + *(v14 + 36), v8, &qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  result = -1.0;
  if (v17 != enum case for DynamicTypeSize.xSmall(_:))
  {
    result = -2.0;
    if (v17 != enum case for DynamicTypeSize.small(_:))
    {
      result = -3.0;
      if (v17 != enum case for DynamicTypeSize.medium(_:))
      {
        result = -4.0;
        if (v17 != enum case for DynamicTypeSize.large(_:))
        {
          result = -5.0;
          if (v17 != enum case for DynamicTypeSize.xLarge(_:))
          {
            result = -6.0;
            if (v17 != enum case for DynamicTypeSize.xxLarge(_:))
            {
              (*(v10 + 8))(v13, v9, -6.0);
              return -7.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100040C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v54 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_10012E1A0, &qword_1000EC1F0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = v53 - v10;
  v12 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v56 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v53 - v17;
  __chkstk_darwin(v16);
  v20 = v53 - v19;
  v21 = sub_100002B38(&qword_10012E1A8, &qword_1000EA5B0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v53 - v23;
  v58 = sub_100002B38(&qword_10012E1B0, &qword_1000EA5B8);
  v25 = *(*(v58 - 8) + 64);
  v26 = __chkstk_darwin(v58);
  v60 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v57 = v53 - v29;
  __chkstk_darwin(v28);
  v59 = v53 - v30;
  *v24 = static VerticalAlignment.center.getter();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v31 = sub_100002B38(&qword_10012E1B8, &qword_1000EA5C0);
  sub_1000412F0(a1, &v24[*(v31 + 44)]);
  v55 = static Edge.Set.top.getter();
  v32 = a1 + *(type metadata accessor for GameModeBannerView() + 32);
  sub_10007A224(v20);
  (*(v4 + 104))(v18, enum case for UserInterfaceSizeClass.compact(_:), v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v33 = *(v8 + 56);
  sub_1000035B4(v20, v11, &qword_100132550, &qword_1000EC170);
  sub_1000035B4(v18, &v11[v33], &qword_100132550, &qword_1000EC170);
  v34 = *(v4 + 48);
  if (v34(v11, 1, v3) != 1)
  {
    sub_1000035B4(v11, v56, &qword_100132550, &qword_1000EC170);
    if (v34(&v11[v33], 1, v3) != 1)
    {
      v35 = v54;
      (*(v4 + 32))(v54, &v11[v33], v3);
      sub_1000445C4(&qword_10012E1C8, &type metadata accessor for UserInterfaceSizeClass);
      v36 = v56;
      v53[3] = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v4 + 8);
      v37(v35, v3);
      sub_100005688(v18, &qword_100132550, &qword_1000EC170);
      sub_100005688(v20, &qword_100132550, &qword_1000EC170);
      v37(v36, v3);
      sub_100005688(v11, &qword_100132550, &qword_1000EC170);
      goto LABEL_8;
    }

    sub_100005688(v18, &qword_100132550, &qword_1000EC170);
    sub_100005688(v20, &qword_100132550, &qword_1000EC170);
    (*(v4 + 8))(v56, v3);
    goto LABEL_6;
  }

  sub_100005688(v18, &qword_100132550, &qword_1000EC170);
  sub_100005688(v20, &qword_100132550, &qword_1000EC170);
  if (v34(&v11[v33], 1, v3) != 1)
  {
LABEL_6:
    sub_100005688(v11, &qword_10012E1A0, &qword_1000EC1F0);
    goto LABEL_8;
  }

  sub_100005688(v11, &qword_100132550, &qword_1000EC170);
LABEL_8:
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v57;
  sub_100014830(v24, v57, &qword_10012E1A8, &qword_1000EA5B0);
  v47 = v59;
  v48 = v46 + *(v58 + 36);
  *v48 = v55;
  *(v48 + 8) = v39;
  *(v48 + 16) = v41;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = 0;
  sub_100014830(v46, v47, &qword_10012E1B0, &qword_1000EA5B8);
  v49 = v60;
  sub_1000035B4(v47, v60, &qword_10012E1B0, &qword_1000EA5B8);
  v50 = v61;
  sub_1000035B4(v49, v61, &qword_10012E1B0, &qword_1000EA5B8);
  v51 = v50 + *(sub_100002B38(&qword_10012E1C0, &qword_1000EA5C8) + 48);
  *v51 = 0;
  *(v51 + 8) = 1;
  sub_100005688(v47, &qword_10012E1B0, &qword_1000EA5B8);
  return sub_100005688(v49, &qword_10012E1B0, &qword_1000EA5B8);
}

uint64_t sub_1000412F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v112 = a2;
  v3 = type metadata accessor for GameModeBannerView();
  v110 = *(v3 - 8);
  v4 = *(v110 + 64);
  __chkstk_darwin(v3 - 8);
  v121 = v5;
  v122 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100002B38(&qword_10012E1D0, &qword_1000EA5D0);
  v6 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v120 = &v95 - v7;
  v115 = type metadata accessor for DefaultGlassEffectShape();
  v119 = *(v115 - 8);
  v8 = *(v119 + 64);
  __chkstk_darwin(v115);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Glass();
  v116 = *(v118 - 8);
  v11 = *(v116 + 64);
  __chkstk_darwin(v118);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002B38(&qword_10012E1D8, &qword_1000EA5D8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v95 - v16;
  v117 = sub_100002B38(&qword_10012E1E0, &qword_1000EA5E0);
  v114 = *(v117 - 8);
  v18 = *(v114 + 64);
  __chkstk_darwin(v117);
  v20 = &v95 - v19;
  v21 = sub_100002B38(&qword_10012E1E8, &qword_1000EA5E8);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v95 - v24;
  v113 = sub_100002B38(&qword_10012E1F0, &qword_1000EA5F0);
  v26 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v28 = &v95 - v27;
  v103 = sub_100002B38(&qword_10012E1F8, &qword_1000EA5F8);
  v99 = *(v103 - 8);
  v29 = *(v99 + 64);
  __chkstk_darwin(v103);
  v96 = &v95 - v30;
  v105 = sub_100002B38(&qword_10012E200, &qword_1000EA600);
  v102 = *(v105 - 8);
  v31 = *(v102 + 64);
  __chkstk_darwin(v105);
  v97 = &v95 - v32;
  v95 = sub_100002B38(&qword_10012E208, &qword_1000EA608);
  v33 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v100 = &v95 - v34;
  v98 = sub_100002B38(&qword_10012E210, &qword_1000EA610);
  v35 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v106 = &v95 - v36;
  v104 = sub_100002B38(&qword_10012E218, &qword_1000EA618);
  v37 = *(*(v104 - 8) + 64);
  v38 = __chkstk_darwin(v104);
  v108 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v101 = &v95 - v41;
  __chkstk_darwin(v40);
  v107 = &v95 - v42;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0x4024000000000000;
  v17[16] = 0;
  v43 = &v17[*(sub_100002B38(&qword_10012E220, &qword_1000EA620) + 44)];
  v111 = a1;
  sub_100042084(a1, v43);
  v44 = static Edge.Set.all.getter();
  v45 = &v17[*(sub_100002B38(&qword_10012E228, &qword_1000EA628) + 36)];
  *v45 = v44;
  *(v45 + 8) = xmmword_1000EA4E0;
  *(v45 + 24) = xmmword_1000EA4F0;
  v45[40] = 0;
  v46 = &v17[*(v14 + 36)];
  v47 = enum case for RoundedCornerStyle.continuous(_:);
  v48 = type metadata accessor for RoundedCornerStyle();
  (*(*(v48 - 8) + 104))(v46, v47, v48);
  *&v46[*(sub_100002B38(&qword_10012E230, &qword_1000EA630) + 36)] = 256;
  static Glass.regular.getter();
  DefaultGlassEffectShape.init()();
  sub_100044454();
  sub_1000445C4(&qword_10012DF58, &type metadata accessor for DefaultGlassEffectShape);
  v49 = v115;
  View.glassEffect<A>(_:in:)();
  (*(v119 + 8))(v10, v49);
  v50 = v13;
  v51 = v120;
  (*(v116 + 8))(v50, v118);
  sub_100005688(v17, &qword_10012E1D8, &qword_1000EA5D8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v114 + 32))(v25, v20, v117);
  v52 = &v25[*(v22 + 44)];
  v53 = v133;
  *(v52 + 4) = v132;
  *(v52 + 5) = v53;
  *(v52 + 6) = v134;
  v54 = v129;
  *v52 = v128;
  *(v52 + 1) = v54;
  v55 = v131;
  *(v52 + 2) = v130;
  *(v52 + 3) = v55;
  LOBYTE(v17) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  sub_100014830(v25, v28, &qword_10012E1E8, &qword_1000EA5E8);
  v64 = v113;
  v65 = &v28[*(v113 + 36)];
  *v65 = v17;
  *(v65 + 1) = v57;
  *(v65 + 2) = v59;
  *(v65 + 3) = v61;
  *(v65 + 4) = v63;
  v65[40] = 0;
  v66 = enum case for DynamicTypeSize.xxLarge(_:);
  v67 = type metadata accessor for DynamicTypeSize();
  (*(*(v67 - 8) + 104))(v51, v66, v67);
  sub_1000445C4(&qword_10012E260, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v69 = sub_10004460C();
    v70 = sub_1000057D8(&qword_10012E278, &qword_10012E1D0, &qword_1000EA5D0);
    v71 = v96;
    v72 = v109;
    View.dynamicTypeSize<A>(_:)();
    sub_100005688(v51, &qword_10012E1D0, &qword_1000EA5D0);
    sub_100005688(v28, &qword_10012E1F0, &qword_1000EA5F0);
    v73 = v111;
    v74 = v122;
    sub_1000447B0(v111, v122);
    v75 = (*(v110 + 80) + 16) & ~*(v110 + 80);
    v76 = swift_allocObject();
    sub_100044818(v74, v76 + v75);
    v124 = v64;
    v125 = v72;
    v126 = v69;
    v127 = v70;
    swift_getOpaqueTypeConformance2();
    v77 = v97;
    v78 = v103;
    View.onTapGesture(count:perform:)();

    (*(v99 + 8))(v71, v78);
    v80 = *(v73 + 40);
    v124 = *(v73 + 32);
    v79 = v124;
    v125 = v80;
    sub_100002B38(&qword_10012DD98, &qword_1000EA650);
    State.wrappedValue.getter();
    v81 = v123;
    v82 = v100;
    (*(v102 + 32))(v100, v77, v105);
    v83 = v82 + *(v95 + 36);
    *v83 = v81;
    *(v83 + 8) = v81;
    *(v83 + 16) = xmmword_1000EA500;
    v124 = v79;
    v125 = v80;
    State.wrappedValue.getter();
    v84 = v123 * 4.0 + -3.0;
    v85 = v106;
    sub_100014830(v82, v106, &qword_10012E208, &qword_1000EA608);
    *(v85 + *(v98 + 36)) = v84;
    v86 = v122;
    sub_1000447B0(v73, v122);
    v87 = swift_allocObject();
    sub_100044818(v86, v87 + v75);
    v88 = v101;
    sub_100014830(v85, v101, &qword_10012E210, &qword_1000EA610);
    v89 = (v88 + *(v104 + 36));
    *v89 = sub_1000448DC;
    v89[1] = v87;
    v89[2] = 0;
    v89[3] = 0;
    v90 = v107;
    sub_100014830(v88, v107, &qword_10012E218, &qword_1000EA618);
    v91 = v108;
    sub_1000035B4(v90, v108, &qword_10012E218, &qword_1000EA618);
    v92 = v112;
    *v112 = 0;
    *(v92 + 8) = 0;
    v93 = sub_100002B38(&qword_10012E280, &qword_1000EA658);
    sub_1000035B4(v91, v92 + *(v93 + 48), &qword_10012E218, &qword_1000EA618);
    v94 = v92 + *(v93 + 64);
    *v94 = 0;
    v94[8] = 0;
    sub_100005688(v90, &qword_10012E218, &qword_1000EA618);
    return sub_100005688(v91, &qword_10012E218, &qword_1000EA618);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  v2 = sub_100002B38(&qword_10012E288, &qword_1000EA690);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002B38(&qword_10012E290, &qword_1000EA698);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  Image.init(_internalSystemName:)();
  (*(v9 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v8);
  v21 = Image.resizable(capInsets:resizingMode:)();

  (*(v9 + 8))(v12, v8);
  v22 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  *&v35 = v21;
  *(&v35 + 1) = KeyPath;
  *&v36 = v22;
  static Font.Weight.semibold.getter();
  sub_100002B38(&qword_10012E298, &unk_1000EA6D0);
  sub_10004558C();
  View.fontWeight(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = &v20[*(v14 + 44)];
  v25 = v36;
  *v24 = v35;
  *(v24 + 1) = v25;
  *(v24 + 2) = v37;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v26 = sub_100002B38(&qword_10012E2A8, &qword_1000EA6E0);
  sub_10004246C(v33, &v7[*(v26 + 44)]);
  sub_1000035B4(v20, v18, &qword_10012E290, &qword_1000EA698);
  v27 = v32;
  sub_1000035B4(v7, v32, &qword_10012E288, &qword_1000EA690);
  v28 = v34;
  sub_1000035B4(v18, v34, &qword_10012E290, &qword_1000EA698);
  v29 = sub_100002B38(&qword_10012E2B0, &qword_1000EA6E8);
  sub_1000035B4(v27, v28 + *(v29 + 48), &qword_10012E288, &qword_1000EA690);
  sub_100005688(v7, &qword_10012E288, &qword_1000EA690);
  sub_100005688(v20, &qword_10012E290, &qword_1000EA698);
  sub_100005688(v27, &qword_10012E288, &qword_1000EA690);
  return sub_100005688(v18, &qword_10012E290, &qword_1000EA698);
}

uint64_t sub_10004246C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v84 = a2;
  v80 = sub_100002B38(&qword_10012E2B8, &qword_1000EA6F0);
  v3 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v5 = v74 - v4;
  v81 = sub_100002B38(&qword_10012E2C0, &qword_1000EA6F8);
  v6 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v74[0] = v74 - v7;
  v8 = sub_100002B38(&qword_10012E2C8, &qword_1000EA700);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v83 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v74 - v12;
  v79 = a1;
  v75 = *(a1 + 8);
  v14 = [v75 enabled];
  v82 = v13;
  if (v14)
  {
    if (qword_10012CBD8 != -1)
    {
      swift_once();
    }

    v15 = &qword_100135C00;
  }

  else
  {
    if (qword_10012CBE0 != -1)
    {
      swift_once();
    }

    v15 = &qword_100135C10;
  }

  v17 = *v15;
  v16 = v15[1];

  v86 = v17;
  v87 = v18;
  v74[1] = sub_10000548C();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.subheadline.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_1000054E0(v19, v21, v23 & 1);

  static Font.Weight.semibold.getter();
  v29 = Text.fontWeight(_:)();
  v31 = v30;
  LOBYTE(v21) = v32;
  sub_1000054E0(v24, v26, v28 & 1);

  v86 = static Color.primary.getter();
  v33 = Text.foregroundStyle<A>(_:)();
  v77 = v34;
  v78 = v33;
  v76 = v35;
  v37 = v36;
  sub_1000054E0(v29, v31, v21 & 1);

  v38 = [v75 actionSymbols];
  if (v38)
  {
    v39 = v38;
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v40 + 16))
    {
      v41 = v74[0];
      sub_100042B64(v40, v74[0]);

      sub_1000035B4(v41, v5, &qword_10012E2C0, &qword_1000EA6F8);
      swift_storeEnumTagMultiPayload();
      sub_100002B38(&qword_10012E2D0, &qword_1000EA768);
      sub_1000456FC();
      sub_1000457B4();
      v42 = v82;
      _ConditionalContent<>.init(storage:)();
      sub_100005688(v41, &qword_10012E2C0, &qword_1000EA6F8);
      goto LABEL_15;
    }
  }

  v75 = v37;
  if (qword_10012CBF0 != -1)
  {
    swift_once();
  }

  v86 = qword_100135C30;
  v87 = *algn_100135C38;

  v43 = Text.init<A>(_:)();
  v45 = v44;
  v47 = v46;
  static Font.footnote.getter();
  v48 = Text.font(_:)();
  v50 = v49;
  v52 = v51;

  sub_1000054E0(v43, v45, v47 & 1);

  static Font.Weight.medium.getter();
  v53 = Text.fontWeight(_:)();
  v55 = v54;
  v57 = v56;
  sub_1000054E0(v48, v50, v52 & 1);

  v86 = static Color.secondary.getter();
  v58 = Text.foregroundStyle<A>(_:)();
  v60 = v59;
  LOBYTE(v48) = v61;
  v63 = v62;
  sub_1000054E0(v53, v55, v57 & 1);

  KeyPath = swift_getKeyPath();
  v65 = sub_100040918();
  v66 = swift_getKeyPath();
  LOBYTE(v86) = v48 & 1;
  v85 = 0;
  *v5 = v58;
  *(v5 + 1) = v60;
  v5[16] = v48 & 1;
  *(v5 + 3) = v63;
  *(v5 + 4) = KeyPath;
  *(v5 + 5) = 2;
  v5[48] = 0;
  *(v5 + 7) = v66;
  *(v5 + 8) = v65;
  swift_storeEnumTagMultiPayload();
  sub_100002B38(&qword_10012E2D0, &qword_1000EA768);
  sub_1000456FC();
  sub_1000457B4();
  v42 = v82;
  _ConditionalContent<>.init(storage:)();
  v37 = v75;
LABEL_15:
  v67 = v83;
  sub_1000035B4(v42, v83, &qword_10012E2C8, &qword_1000EA700);
  v68 = v84;
  v70 = v77;
  v69 = v78;
  *v84 = v78;
  v68[1] = v70;
  v71 = v76 & 1;
  *(v68 + 16) = v76 & 1;
  v68[3] = v37;
  v72 = sub_100002B38(&qword_10012E328, &qword_1000EA790);
  sub_1000035B4(v67, v68 + *(v72 + 48), &qword_10012E2C8, &qword_1000EA700);
  sub_1000054F0(v69, v70, v71);

  sub_100005688(v42, &qword_10012E2C8, &qword_1000EA700);
  sub_100005688(v67, &qword_10012E2C8, &qword_1000EA700);
  sub_1000054E0(v69, v70, v71);
}

void sub_100042B64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  if (qword_10012CBE8 != -1)
  {
    swift_once();
  }

  sub_10000548C();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v5 + 2;
  v7 = v5[2];
  if (v7)
  {
    v9 = v5[4];
    v8 = v5[5];

    if (v7 == 1)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      v12 = &v6[2 * v7];
      v10 = *v12;
      v11 = v12[1];
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0xE000000000000000;
    v11 = 0xE000000000000000;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (a1 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;

      Image.init(_internalSystemName:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
      {
        v17 = _swiftEmptyArrayStorage[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  v18 = _swiftEmptyArrayStorage[2];
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v43);
      v44._countAndFlagsBits = v9;
      v44._object = v8;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v44);

      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v45);
      if (_swiftEmptyArrayStorage[2])
      {
        v46 = _swiftEmptyArrayStorage[4];

        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

        v47._countAndFlagsBits = 0;
        v47._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v47);
        if (_swiftEmptyArrayStorage[2] >= 2uLL)
        {
          v48 = _swiftEmptyArrayStorage[5];
          goto LABEL_33;
        }

        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v18 == 3)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
      v24._countAndFlagsBits = v9;
      v24._object = v8;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v24);

      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
      if (_swiftEmptyArrayStorage[2])
      {
        v26 = _swiftEmptyArrayStorage[4];

        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
        if (_swiftEmptyArrayStorage[2] >= 2uLL)
        {
          v28 = _swiftEmptyArrayStorage[5];

          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

          v29._countAndFlagsBits = 0;
          v29._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
          if (_swiftEmptyArrayStorage[2] >= 3uLL)
          {
            v30 = _swiftEmptyArrayStorage[6];
            goto LABEL_33;
          }

          goto LABEL_43;
        }

        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (!v18)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v41);
      v42._countAndFlagsBits = v9;
      v42._object = v8;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v42);

LABEL_34:
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
      v50._countAndFlagsBits = v10;
      v50._object = v11;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v50);

      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v51);
      LocalizedStringKey.init(stringInterpolation:)();
      v52 = Text.init(_:tableName:bundle:comment:)();
      v54 = v53;
      v56 = v55;
      sub_1000054F0(v52, v53, v55 & 1);

      static Font.footnote.getter();
      v57 = v56;
      v81 = v56;
      v58 = Text.font(_:)();
      v60 = v59;
      v62 = v61;

      sub_1000054E0(v52, v54, v57 & 1);

      static Font.Weight.medium.getter();
      v63 = Text.fontWeight(_:)();
      v65 = v64;
      v67 = v66;
      sub_1000054E0(v58, v60, v62 & 1);

      static Color.secondary.getter();
      v68 = Text.foregroundStyle<A>(_:)();
      v70 = v69;
      LOBYTE(v58) = v71;
      v82 = v72;
      sub_1000054E0(v63, v65, v67 & 1);

      KeyPath = swift_getKeyPath();
      v74 = sub_100040918();
      sub_1000054E0(v52, v54, v81 & 1);

      v75 = swift_getKeyPath();
      v76 = (a2 + *(sub_100002B38(&qword_10012E2C0, &qword_1000EA6F8) + 36));
      v77 = *(sub_100002B38(&qword_10012E320, &qword_1000EA788) + 28);
      v78 = enum case for Image.Scale.small(_:);
      v79 = type metadata accessor for Image.Scale();
      (*(*(v79 - 8) + 104))(v76 + v77, v78, v79);
      v80 = swift_getKeyPath();

      *v76 = v80;
      *a2 = v68;
      *(a2 + 8) = v70;
      *(a2 + 16) = v58 & 1;
      *(a2 + 24) = v82;
      *(a2 + 32) = KeyPath;
      *(a2 + 40) = 2;
      *(a2 + 48) = 0;
      *(a2 + 56) = v75;
      *(a2 + 64) = v74;
      return;
    }

    if (v18 == 1)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
      v20._countAndFlagsBits = v9;
      v20._object = v8;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v20);

      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
      if (_swiftEmptyArrayStorage[2])
      {
        v22 = _swiftEmptyArrayStorage[4];
LABEL_33:

        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
  v32._countAndFlagsBits = v9;
  v32._object = v8;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v32);

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
  if (!_swiftEmptyArrayStorage[2])
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v34 = _swiftEmptyArrayStorage[4];

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v35);
  if (_swiftEmptyArrayStorage[2] < 2uLL)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v36 = _swiftEmptyArrayStorage[5];

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
  if (_swiftEmptyArrayStorage[2] < 3uLL)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v38 = _swiftEmptyArrayStorage[6];

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v39);
  if (_swiftEmptyArrayStorage[2] >= 4uLL)
  {
    v40 = _swiftEmptyArrayStorage[7];
    goto LABEL_33;
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_100043308(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AnimationCompletionCriteria();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GameModeBannerView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = *(v1 + 24);
  v27 = *(v1 + 16);
  v28 = v12;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  result = State.wrappedValue.getter();
  if ((v26 & 1) == 0)
  {
    v24 = v10;
    v25 = v4;
    if (a1)
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100011F80(v14, qword_100135C88);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "Preparing to dismiss game mode banner and launch dashboard.";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
        v20 = a1;

LABEL_13:

        v21 = static Animation.easeOut(duration:)();
        __chkstk_darwin(v21);
        *(&v24 - 2) = v2;
        sub_1000447B0(v2, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
        v22 = (*(v24 + 80) + 16) & ~*(v24 + 80);
        v23 = swift_allocObject();
        sub_100044818(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
        *(v23 + v22 + v11) = v20 & 1;
        static AnimationCompletionCriteria.logicallyComplete.getter();
        withAnimation<A>(_:completionCriteria:_:completion:)();

        return (*(v5 + 8))(v8, v25);
      }
    }

    else
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100011F80(v19, qword_100135C88);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "Preparing to dismiss game mode banner.";
        goto LABEL_11;
      }
    }

    v20 = a1;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1000436C4(uint64_t a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for GameModeBannerView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  static Animation.easeOut(duration:)();
  v14 = a1;
  sub_1000447B0(a1, &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_100044818(&v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000438B8(uint64_t a1)
{
  v2 = type metadata accessor for GameModeBannerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1000447B0(a1, v5);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100044818(v5, v13 + v12);
  sub_100014BBC(0, 0, v9, &unk_1000EA670, v13);
}

uint64_t sub_100043A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100043B08, v6, v5);
}

uint64_t sub_100043B08()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v1 = 9.0;
  }

  else
  {
    v1 = 4.0;
  }

  v2 = async function pointer to static Task<>.sleep(seconds:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100043BB0;
  v4.n128_f64[0] = v1;

  return static Task<>.sleep(seconds:)(v4);
}

uint64_t sub_100043BB0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_100043D54;
  }

  else
  {
    v7 = sub_100043CEC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100043CEC()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_100043308(0);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100043D54()
{
  v1 = v0[7];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100043DC0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for GameModeBannerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1000447B0(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_100044818(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + v12 + v6) = a2;
  sub_1000947BC(0, 0, v10, &unk_1000EA688, v13);

  return sub_100005688(v10, &unk_100130F10, &qword_1000EA660);
}

uint64_t sub_100043F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a4;
  return _swift_task_switch(sub_100043FAC, 0, 0);
}

uint64_t sub_100043FAC()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v0[3] = qword_100135CD8;
  v0[4] = type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100044080, v2, v1);
}

uint64_t sub_100044080()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  v0[6] = *v2;

  return _swift_task_switch(sub_1000440F4, v3, 0);
}

uint64_t sub_1000440F4()
{
  v1 = *(v0 + 24);
  sub_10002D9A8(*(v0 + 48), 1, v1);

  return _swift_task_switch(sub_100044168, v1, 0);
}

uint64_t sub_100044168()
{
  v1 = *(v0 + 24);
  sub_1000C75A8();

  return _swift_task_switch(sub_1000441D0, 0, 0);
}

uint64_t sub_1000441D0()
{
  if (*(v0 + 80) == 1)
  {
    v1 = *(v0 + 32);
    v2 = [objc_opt_self() proxyForLocalPlayer];
    *(v0 + 56) = [v2 utilityService];

    *(v0 + 64) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000442D8, v4, v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1000442D8()
{
  v1 = v0[8];
  v2 = v0[2];

  v0[9] = *(v2 + 8);

  return _swift_task_switch(sub_10004434C, 0, 0);
}

uint64_t sub_10004434C()
{
  v1 = [*(v0 + 72) bundleIdentifier];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  [*(v0 + 56) launchOverlaySystemSettingsForGameBundleId:v1];

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100044400@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100002B38(&qword_10012E198, &unk_1000EA5A0);
  return sub_100040C44(v1, a1 + *(v3 + 44));
}

unint64_t sub_100044454()
{
  result = qword_10012E238;
  if (!qword_10012E238)
  {
    sub_100005144(&qword_10012E1D8, &qword_1000EA5D8);
    sub_10004450C();
    sub_1000057D8(&qword_10012E258, &qword_10012E230, &qword_1000EA630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E238);
  }

  return result;
}

unint64_t sub_10004450C()
{
  result = qword_10012E240;
  if (!qword_10012E240)
  {
    sub_100005144(&qword_10012E228, &qword_1000EA628);
    sub_1000057D8(&qword_10012E248, &qword_10012E250, &qword_1000EA638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E240);
  }

  return result;
}

uint64_t sub_1000445C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004460C()
{
  result = qword_10012E268;
  if (!qword_10012E268)
  {
    sub_100005144(&qword_10012E1F0, &qword_1000EA5F0);
    sub_100044698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E268);
  }

  return result;
}

unint64_t sub_100044698()
{
  result = qword_10012E270;
  if (!qword_10012E270)
  {
    sub_100005144(&qword_10012E1E8, &qword_1000EA5E8);
    sub_100005144(&qword_10012E1D8, &qword_1000EA5D8);
    type metadata accessor for DefaultGlassEffectShape();
    sub_100044454();
    sub_1000445C4(&qword_10012DF58, &type metadata accessor for DefaultGlassEffectShape);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E270);
  }

  return result;
}

uint64_t sub_1000447B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameModeBannerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameModeBannerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004487C()
{
  v1 = *(type metadata accessor for GameModeBannerView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_100043308(1);
}

uint64_t sub_100044910()
{
  v1 = type metadata accessor for GameModeBannerView();
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v4 = *v3;

  v5 = v3[3];

  v6 = v3[5];

  v7 = *(v1 + 32);
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v3 + v7, 1, v8))
    {
      (*(v9 + 8))(v3 + v7, v8);
    }
  }

  else
  {
    v10 = *(v3 + v7);
  }

  v11 = *(v1 + 36);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DynamicTypeSize();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
    v13 = *(v3 + v11);
  }

  return swift_deallocObject();
}

uint64_t sub_100044B30(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GameModeBannerView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100044BA4()
{
  v1 = type metadata accessor for GameModeBannerView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 24);

  v8 = *(v0 + v2 + 40);

  v9 = *(v1 + 32);
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
    v12 = *(v5 + v9);
  }

  v13 = *(v1 + 36);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for DynamicTypeSize();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  return swift_deallocObject();
}

uint64_t sub_100044DB4(uint64_t a1)
{
  v4 = *(type metadata accessor for GameModeBannerView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100043A70(a1, v6, v7, v1 + v5);
}

uint64_t sub_100044EC0()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  return State.wrappedValue.setter();
}

uint64_t sub_100044F24()
{
  v1 = type metadata accessor for GameModeBannerView();
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v4 = *v3;

  v5 = v3[3];

  v6 = v3[5];

  v7 = *(v1 + 32);
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v3 + v7, 1, v8))
    {
      (*(v9 + 8))(v3 + v7, v8);
    }
  }

  else
  {
    v10 = *(v3 + v7);
  }

  v11 = *(v1 + 36);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DynamicTypeSize();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
    v13 = *(v3 + v11);
  }

  return swift_deallocObject();
}

uint64_t sub_100045130()
{
  v1 = *(type metadata accessor for GameModeBannerView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_100043DC0(v2, v3);
}

uint64_t sub_1000451B0()
{
  v1 = type metadata accessor for GameModeBannerView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 24);

  v8 = *(v0 + v2 + 40);

  v9 = *(v1 + 32);
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
    v12 = *(v5 + v9);
  }

  v13 = *(v1 + 36);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for DynamicTypeSize();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  return swift_deallocObject();
}

uint64_t sub_1000453C4(uint64_t a1)
{
  v4 = *(type metadata accessor for GameModeBannerView() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100011720;

  return sub_100043F88(a1, v5, v6, v7, v8);
}

uint64_t sub_1000454DC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100045508(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_100045534@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100045560(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

unint64_t sub_10004558C()
{
  result = qword_10012E2A0;
  if (!qword_10012E2A0)
  {
    sub_100005144(&qword_10012E298, &unk_1000EA6D0);
    sub_1000057D8(&qword_10012CDB8, &qword_10012CDC0, &qword_1000E90C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E2A0);
  }

  return result;
}

uint64_t sub_100045644@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100045678(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_1000456A8@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.lineSpacing.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_1000456FC()
{
  result = qword_10012E2D8;
  if (!qword_10012E2D8)
  {
    sub_100005144(&qword_10012E2C0, &qword_1000EA6F8);
    sub_1000457B4();
    sub_1000057D8(&qword_10012E318, &qword_10012E320, &qword_1000EA788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E2D8);
  }

  return result;
}

unint64_t sub_1000457B4()
{
  result = qword_10012E2E0;
  if (!qword_10012E2E0)
  {
    sub_100005144(&qword_10012E2D0, &qword_1000EA768);
    sub_10004586C();
    sub_1000057D8(&qword_10012E308, &qword_10012E310, &qword_1000EA780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E2E0);
  }

  return result;
}

unint64_t sub_10004586C()
{
  result = qword_10012E2E8;
  if (!qword_10012E2E8)
  {
    sub_100005144(&qword_10012E2F0, &qword_1000EA770);
    sub_1000057D8(&qword_10012E2F8, &qword_10012E300, &qword_1000EA778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E2E8);
  }

  return result;
}

uint64_t sub_10004598C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessPointUseCase();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100045AD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessPointUseCase();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for InGameBannerView()
{
  result = qword_10012E398;
  if (!qword_10012E398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100045C4C()
{
  sub_100045E64(319, &qword_10012E3A8, &type metadata accessor for GameDashboardLaunchContext, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_100045E64(319, &qword_10012E3B0, &type metadata accessor for ImpedimentFlowDestinationStates, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100045E64(319, &unk_10012CF00, &type metadata accessor for Game, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AccessPointUseCase();
        if (v3 <= 0x3F)
        {
          sub_100045EC8(319, &qword_10012E3B8);
          if (v4 <= 0x3F)
          {
            sub_100045EC8(319, &qword_10012E3C0);
            if (v5 <= 0x3F)
            {
              sub_100045F14(319, &qword_10012E3C8, &qword_10012E3D0, &qword_1000EA818);
              if (v6 <= 0x3F)
              {
                sub_100045F14(319, &qword_10012E3D8, &qword_10012E0C0, &qword_1000EA820);
                if (v7 <= 0x3F)
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

void sub_100045E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100045EC8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100045F14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100005144(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100045F84@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)@<X8>)
{
  v35 = sub_100002B38(&qword_10012E440, &qword_1000EA890);
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  v4 = __chkstk_darwin(v35);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v33 - v6;
  v7 = type metadata accessor for InGameBannerView();
  v8 = v7 - 8;
  v33 = *(v7 - 8);
  v9 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v33 - v12;
  sub_1000035B4(v1 + *(v8 + 32), &v33 - v12, &qword_100132410, &unk_1000E9F30);
  v14 = type metadata accessor for Game();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100005688(v13, &qword_100132410, &unk_1000E9F30);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = Game.bundleID.getter();
    v17 = v18;
    (*(v15 + 8))(v13, v14);
  }

  sub_100048304(v1, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v20 = swift_allocObject();
  sub_1000485AC(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.registerGamesDefaults()();

  v22 = sub_100002B38(&qword_10012E448, &qword_1000EA898);
  v23 = (a1 + v22[14]);
  *v23 = v16;
  v23[1] = v17;
  *a1 = sub_100048610;
  a1[1] = v20;
  a1[2] = sub_100049778;
  a1[3] = 0;
  a1[4] = sub_100049778;
  a1[5] = 0;
  if (qword_10012CC40 != -1)
  {
    swift_once();
  }

  v24 = *(qword_100135CF0 + 24);
  type metadata accessor for OverlayBootstrap();
  sub_1000496C8(&qword_10012E450, type metadata accessor for OverlayBootstrap);

  v25 = v34;
  Bindable<A>.init(wrappedValue:)();
  v26 = v35;
  Bindable.wrappedValue.getter();
  v27 = *(v38 + 16);

  *(a1 + v22[13]) = v27;
  v28 = v36;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v29 = a1 + v22[11];
  Bindable<A>.subscript.getter();

  v30 = *(v37 + 8);
  v30(v28, v26);
  Bindable.wrappedValue.getter();
  v31 = a1 + v22[12];
  sub_1000BB51C();

  return (v30)(v25, v26);
}

uint64_t sub_100046438@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a2;
  v46 = a4;
  v36[0] = a1;
  v5 = type metadata accessor for BootstrapResult();
  v42 = *(v5 - 8);
  v43 = v5;
  v44 = *(v42 + 64);
  __chkstk_darwin(v5);
  v41 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InGameBannerView();
  v8 = v7 - 8;
  v40 = *(v7 - 8);
  v39 = *(v40 + 64);
  __chkstk_darwin(v7);
  v38 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v37);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ImpedimentFlowConfig();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v36[1] = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Dependency();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ImpedimentFlowDestinationStates();
  v22 = *(a3 + 24);
  v47 = *(a3 + 16);
  v48 = v22;
  sub_100002B38(&qword_10012E460, &qword_1000EA8D0);
  State.wrappedValue.getter();
  Dependency.init<A>(satisfying:with:)();
  v36[2] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v18 + 8))(v21, v17);
  v23 = *(v8 + 80);
  swift_unknownObjectWeakLoadStrong();
  (*(v10 + 104))(v13, enum case for ImpedimentFlowConfig.UseCase.inGame(_:), v37);
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  v24 = v38;
  sub_100048304(a3, v38);
  v26 = v41;
  v25 = v42;
  v27 = v43;
  (*(v42 + 16))(v41, v36[0], v43);
  v28 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v29 = v25;
  v30 = (v39 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v31 = (v44 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  sub_1000485AC(v24, v32 + v28);
  (*(v29 + 32))(v32 + v30, v26, v27);
  v33 = v45;
  *(v32 + v31) = v45;
  v34 = v33;
  sub_100002B38(&qword_10012E468, &qword_1000EA8D8);
  sub_1000057D8(&qword_10012E470, &qword_10012E468, &qword_1000EA8D8);
  return ImpedimentFlowView.init<>(objectGraph:window:config:content:)();
}

id sub_1000468BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v112 = a5;
  v109 = a4;
  v115 = a3;
  v116 = a1;
  v119 = a2;
  v107 = a6;
  v6 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v103 = v90 - v8;
  v102 = type metadata accessor for AccessPointUseCase();
  v100 = *(v102 - 8);
  v9 = *(v100 + 64);
  __chkstk_darwin(v102);
  v117 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for InGameBannerRequiredData();
  v108 = *(v111 - 8);
  v110 = *(v108 + 64);
  v11 = __chkstk_darwin(v111);
  v106 = v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v104 = v90 - v13;
  v114 = type metadata accessor for CommonOnboardingStatus();
  v14 = *(v114 - 8);
  v101 = *(v14 + 64);
  __chkstk_darwin(v114);
  v16 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for InGameBannerView();
  v18 = (v17 - 8);
  v97 = *(v17 - 8);
  v118 = *(v97 + 64);
  __chkstk_darwin(v17);
  v113 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v94 = *(v20 - 8);
  v21 = *(v94 + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v90 - v22;
  v24 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v90 - v26;
  v28 = type metadata accessor for StoreTab.Identifier();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  sub_100002B38(&qword_10012E480, &qword_1000EA8F0);
  v99 = type metadata accessor for StoreTab();
  v98 = *(v99 - 8);
  v30 = *(v98 + 72);
  v31 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000EA7D0;
  v105 = v32;
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  v33 = type metadata accessor for URL();
  (*(*(v33 - 8) + 56))(v27, 1, 1, v33);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  v34 = v116;
  sub_1000035B4(v116, v23, &qword_10012E478, &unk_1000EA8E0);
  v35 = v113;
  sub_100048304(v115, v113);
  v36 = *(v14 + 16);
  v95 = v14 + 16;
  v96 = v36;
  v37 = v16;
  v38 = v16;
  v39 = v114;
  v36(v38, v119, v114);
  v40 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v97 = *(v97 + 80);
  v41 = (v21 + v97 + v40) & ~v97;
  v42 = v14;
  v43 = (v118 + *(v14 + 80) + v41) & ~*(v14 + 80);
  v44 = swift_allocObject();
  v45 = v44 + v40;
  v46 = v44;
  v101 = v44;
  v93 = v23;
  sub_1000490F8(v23, v45);
  sub_1000485AC(v35, v46 + v41);
  (*(v42 + 32))(v46 + v43, v37, v39);
  v47 = v115;
  (*(v100 + 16))(v117, v115 + v18[9], v102);
  sub_1000035B4(v34, v23, &qword_10012E478, &unk_1000EA8E0);
  v48 = v18[11];
  v49 = (v47 + v18[10]);
  v50 = v49[1];
  v102 = *v49;
  v51 = *(v47 + v48 + 8);
  v100 = *(v47 + v48);
  v92 = v51;
  v52 = (v47 + v18[12]);
  v53 = *v52;
  v91 = v52[1];
  v54 = (v47 + v18[15]);
  v55 = v54[1];
  v94 = *v54;
  sub_1000035B4(v47 + v18[8], v103, &qword_100132410, &unk_1000E9F30);
  v56 = *(v47 + v18[16]);
  v57 = v18[14];
  v58 = (v47 + v18[13]);
  v59 = *v58;
  v60 = v58[1];
  v61 = *(v47 + v57 + 8);
  v90[2] = *(v47 + v57);

  sub_1000304CC(v53, v91);

  sub_1000304CC(v59, v60);

  v62 = v104;
  InGameBannerRequiredData.init(useCase:player:title:message:image:identifier:game:playerIDs:clipThumbnailData:imageSymbolName:)();
  v63 = type metadata accessor for BootstrapResult();
  v64 = v107;
  (*(*(v63 - 8) + 16))(v107, v109, v63);
  v65 = sub_100002B38(&qword_10012E468, &qword_1000EA8D8);
  sub_1000035B4(v116, v64 + v65[10], &qword_10012E478, &unk_1000EA8E0);
  (*(v98 + 56))(v64 + v65[12], 1, 1, v99);
  v66 = v47[1];
  v121 = *v47;
  v122 = v66;
  sub_100002B38(&qword_10012E488, &qword_1000EA8F8);
  State.wrappedValue.getter();
  v117 = v120;
  v96(v64 + v65[14], v119, v114);
  v67 = v108;
  v68 = v106;
  v69 = v62;
  v70 = v111;
  (*(v108 + 16))(v106, v62, v111);
  v71 = v47;
  v72 = v113;
  sub_100048304(v71, v113);
  v73 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v74 = (v110 + v97 + v73) & ~v97;
  v75 = swift_allocObject();
  v76 = v68;
  v77 = v70;
  (*(v67 + 32))(v75 + v73, v76, v70);
  sub_1000485AC(v72, v75 + v74);
  v78 = (v64 + v65[18]);
  v79 = sub_100002B38(&qword_10012E490, &qword_1000EA900);
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  v120 = LRUMultiCache.init(keyLimit:valueLimit:)();
  State.init(wrappedValue:)();
  (*(v67 + 8))(v69, v77);
  v82 = v122;
  *v78 = v121;
  v78[1] = v82;
  v83 = v64 + v65[19];
  *v83 = swift_getKeyPath();
  *(v83 + 8) = 0;
  v84 = v112;
  *(v64 + v65[9]) = v112;
  *(v64 + v65[13]) = v117;
  v85 = (v64 + v65[11]);
  *v85 = v105;
  v85[1] = sub_100049168;
  v85[2] = v101;
  v86 = (v64 + v65[15]);
  *v86 = sub_10004958C;
  v86[1] = v75;
  v87 = (v64 + v65[16]);
  *v87 = sub_100049778;
  v87[1] = 0;
  v88 = (v64 + v65[17]);
  *v88 = sub_100049778;
  v88[1] = 0;

  return v84;
}

id sub_100047358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v71 = a4;
  v86 = a3;
  v70 = a2;
  v83 = a1;
  v82 = a5;
  v5 = type metadata accessor for FlowOrigin();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = *(v79 + 64);
  __chkstk_darwin(v5);
  v81 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for FlowAnimationBehavior();
  v75 = *(v76 - 8);
  v8 = *(v75 + 64);
  __chkstk_darwin(v76);
  v78 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for FlowPresentationContext();
  v72 = *(v73 - 8);
  v10 = *(v72 + 64);
  __chkstk_darwin(v73);
  v77 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMetrics();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v74 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v85 = &v64 - v17;
  v18 = sub_100002B38(&qword_10012E4A0, &unk_1000EA940);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v68 = &v64 - v20;
  v21 = sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v89 = &v64 - v23;
  v24 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v64 - v26;
  v84 = type metadata accessor for FlowPage();
  v28 = *(v84 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v84);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StoreTab.Identifier();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v37 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v64 - v38;
  StoreTab.identifier.getter();
  v40 = StoreTab.Identifier.rawValue.getter();
  v42 = v41;
  v43 = *(v33 + 8);
  v44 = v39;
  v45 = v85;
  v67 = v32;
  v66 = v33 + 8;
  v65 = v43;
  v43(v44, v32);
  v46 = v37;
  *&v87 = v40;
  *(&v87 + 1) = v42;
  AnyHashable.init<A>(_:)();
  v47 = *(v28 + 104);
  v69 = v31;
  v47(v31, enum case for FlowPage.games(_:), v84);
  v48 = type metadata accessor for URL();
  v49 = *(*(v48 - 8) + 56);
  v84 = v27;
  v49(v27, 1, 1, v48);
  v50 = type metadata accessor for ReferrerData();
  (*(*(v50 - 8) + 56))(v89, 1, 1, v50);
  StoreTab.identifier.getter();
  v51 = type metadata accessor for InGameBannerView();
  sub_1000035B4(v86 + *(v51 + 24), v45, &qword_100132410, &unk_1000E9F30);
  v52 = type metadata accessor for Game();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v45, 1, v52) == 1)
  {
    sub_100005688(v45, &qword_100132410, &unk_1000E9F30);
  }

  else
  {
    Game.bundleID.getter();
    (*(v53 + 8))(v45, v52);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v55 = result;
    v56 = String._bridgeToObjectiveC()();
    [v55 applicationIsInstalled:v56];

    v57 = v68;
    StoreTab.Identifier.overlayTabDestination(player:bundleID:commonOnboardingStatus:isGamesAppInstalled:)();

    v65(v46, v67);
    v58 = type metadata accessor for FlowDestination();
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v57, 1, v58) == 1)
    {
      sub_100005688(v57, &qword_10012E4A0, &unk_1000EA940);
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v58;
      v60 = sub_100012854(&v87);
      (*(v59 + 32))(v60, v57, v58);
    }

    static ActionMetrics.notInstrumented.getter();
    static FlowActionPresentation.tabSelect.getter();
    (*(v72 + 104))(v77, enum case for FlowPresentationContext.infer(_:), v73);
    (*(v75 + 104))(v78, enum case for FlowAnimationBehavior.infer(_:), v76);
    (*(v79 + 104))(v81, enum case for FlowOrigin.inapp(_:), v80);
    v61 = type metadata accessor for FlowAction();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    result = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    *v82 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100047C68(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v14 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for StoreTab() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = v14[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100047DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a1;
  v7 = type metadata accessor for AccessPointAnchoring();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetricsPipeline();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Bag();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for InGameBannerRequiredData();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  (*(v22 + 16))(&v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v60[3] = type metadata accessor for InGameBannerPageIntent();
  v60[4] = sub_1000496C8(&qword_10012E498, &type metadata accessor for InGameBannerPageIntent);
  sub_100012854(v60);
  InGameBannerPageIntent.init(requiredData:)();
  BaseObjectGraph.inject<A>(_:)();
  v23 = Bag.metricsPageRenderTopic.getter();
  v51 = v24;
  v52 = v23;
  (*(v15 + 8))(v18, v14);
  v49 = v11;
  BaseObjectGraph.inject<A>(_:)();
  v25 = v54;
  v26 = v53;
  (*(v53 + 104))(v10, enum case for AccessPointAnchoring.topCentered(_:), v54);
  v27 = a3[1];
  v58 = *a3;
  v59 = v27;
  sub_100002B38(&qword_10012E488, &qword_1000EA8F8);
  State.wrappedValue.getter();
  v28 = v57;
  v29 = type metadata accessor for InGameBannerView();
  v30 = v29[16];
  v47 = *(a3 + v29[15]);
  v31 = type metadata accessor for AccessPointPageView();
  sub_1000035B4(a3 + v30, a4 + v31[10], &unk_100131120, &unk_1000EAAF0);
  v32 = (a3 + v29[17]);
  v33 = v32[1];
  v48 = *v32;
  v46 = v33;
  type metadata accessor for RemoteAlertAccessPointContext(0);
  sub_1000496C8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);

  *a4 = Environment.init<A>(_:)();
  *(a4 + 8) = v34 & 1;
  v35 = (a4 + v31[12]);
  sub_10002E8A8(v60, a4 + 16);
  v36 = v26;
  v37 = v25;
  (*(v26 + 16))(a4 + v31[8], v10, v25);
  v38 = v51;
  *(a4 + 56) = v52;
  *(a4 + 64) = v38;
  v39 = v55;
  v41 = v49;
  v40 = v50;
  (*(v55 + 16))(a4 + v31[7], v50, v49);
  *(a4 + v31[11]) = v28;
  v42 = a4 + v31[9];
  LOBYTE(v57) = v47;
  State.init(wrappedValue:)();
  (*(v36 + 8))(v10, v37);
  (*(v39 + 8))(v40, v41);
  sub_10002E6CC(v60);
  v43 = v59;
  *v42 = v58;
  *(v42 + 8) = v43;
  v44 = v46;
  *v35 = v48;
  v35[1] = v44;
  *(a4 + v31[13]) = v56;
}

uint64_t sub_1000482C4@<X0>(uint64_t *a1@<X8>)
{
  result = static Color.clear.getter();
  a1[3] = &type metadata for Color;
  a1[4] = &protocol witness table for Color;
  *a1 = result;
  return result;
}

uint64_t sub_100048304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048368()
{
  v1 = type metadata accessor for InGameBannerView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = *(v3 + 2);

  v7 = *(v3 + 3);

  v8 = v1[6];
  v9 = type metadata accessor for Game();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v3[v8], 1, v9))
  {
    (*(v10 + 8))(&v3[v8], v9);
  }

  v11 = v1[7];
  v12 = type metadata accessor for AccessPointUseCase();
  (*(*(v12 - 8) + 8))(&v3[v11], v12);
  v13 = *&v3[v1[8] + 8];

  v14 = *&v3[v1[9] + 8];

  v15 = &v3[v1[10]];
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100030784(*v15, v16);
  }

  v17 = &v3[v1[11]];
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_100030784(*v17, v18);
  }

  v19 = *&v3[v1[12] + 8];

  v20 = *&v3[v1[13] + 8];

  v21 = *&v3[v1[14]];

  v22 = &v3[v1[16]];
  if (v22[3])
  {
    sub_10002E6CC(v22);
  }

  v23 = *&v3[v1[17] + 8];

  v24 = v1[18];
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000485AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048610@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for InGameBannerView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100046438(a1, a2, v8, a3);
}

uint64_t sub_100048698@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shouldPresentOfflineOverlay.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000486F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000496C8(&qword_10012E450, type metadata accessor for OverlayBootstrap);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult;
  swift_beginAccess();
  return sub_1000035B4(v3 + v4, a2, &qword_10012E458, qword_1000ECF80);
}

uint64_t sub_1000487C8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-v6];
  sub_1000035B4(a1, &v10[-v6], &qword_10012E458, qword_1000ECF80);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1000496C8(&qword_10012E450, type metadata accessor for OverlayBootstrap);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100005688(v7, &qword_10012E458, qword_1000ECF80);
}

uint64_t sub_10004893C()
{
  v1 = type metadata accessor for InGameBannerView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v30 = *(*(v1 - 1) + 64);
  v31 = type metadata accessor for BootstrapResult();
  v3 = *(v31 - 8);
  v4 = *(v3 + 80);
  v29 = *(v3 + 64);
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 8);

  v8 = *(v0 + v2 + 16);

  v9 = *(v0 + v2 + 24);

  v10 = v1[6];
  v11 = type metadata accessor for Game();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[7];
  v14 = type metadata accessor for AccessPointUseCase();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = *(v5 + v1[8] + 8);

  v16 = *(v5 + v1[9] + 8);

  v17 = (v5 + v1[10]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_100030784(*v17, v18);
  }

  v19 = (v5 + v1[11]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100030784(*v19, v20);
  }

  v21 = *(v5 + v1[12] + 8);

  v22 = *(v5 + v1[13] + 8);

  v23 = *(v5 + v1[14]);

  v24 = (v5 + v1[16]);
  if (v24[3])
  {
    sub_10002E6CC(v24);
  }

  v25 = (v2 + v30 + v4) & ~v4;
  v26 = *(v5 + v1[17] + 8);

  v27 = v1[18];
  swift_unknownObjectWeakDestroy();
  (*(v3 + 8))(v0 + v25, v31);

  return swift_deallocObject();
}

id sub_100048C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for InGameBannerView() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for BootstrapResult() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000468BC(a1, a2, v3 + v8, v3 + v11, v12, a3);
}

uint64_t sub_100048D40()
{
  v1 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for InGameBannerView();
  v5 = (v2 + v3 + *(*(v4 - 1) + 80)) & ~*(*(v4 - 1) + 80);
  v33 = *(*(v4 - 1) + 64);
  v36 = type metadata accessor for CommonOnboardingStatus();
  v6 = *(v36 - 8);
  v7 = *(v6 + 80);
  v35 = *(v6 + 64);
  v8 = type metadata accessor for Player();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  v34 = v5;
  v10 = v0 + v5;
  v11 = *(v0 + v5);

  v12 = *(v0 + v5 + 8);

  v13 = *(v0 + v5 + 16);

  v14 = *(v0 + v5 + 24);

  v15 = v4[6];
  v16 = type metadata accessor for Game();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v10 + v15, 1, v16))
  {
    (*(v17 + 8))(v10 + v15, v16);
  }

  v18 = v4[7];
  v19 = type metadata accessor for AccessPointUseCase();
  (*(*(v19 - 8) + 8))(v10 + v18, v19);
  v20 = *(v10 + v4[8] + 8);

  v21 = *(v10 + v4[9] + 8);

  v22 = (v10 + v4[10]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_100030784(*v22, v23);
  }

  v24 = (v10 + v4[11]);
  v25 = v24[1];
  if (v25 >> 60 != 15)
  {
    sub_100030784(*v24, v25);
  }

  v26 = *(v10 + v4[12] + 8);

  v27 = *(v10 + v4[13] + 8);

  v28 = *(v10 + v4[14]);

  v29 = (v10 + v4[16]);
  if (v29[3])
  {
    sub_10002E6CC(v29);
  }

  v30 = *(v10 + v4[17] + 8);

  v31 = v4[18];
  swift_unknownObjectWeakDestroy();
  (*(v6 + 8))(v0 + ((v34 + v33 + v7) & ~v7), v36);

  return swift_deallocObject();
}

uint64_t sub_1000490F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100049168(uint64_t a1)
{
  v3 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for InGameBannerView() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for CommonOnboardingStatus() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));
  v12[2] = v1 + v4;
  v12[3] = v1 + v7;
  v12[4] = v10;
  return sub_100047C68(sub_100049710, v12, a1);
}

uint64_t sub_1000492CC()
{
  v1 = type metadata accessor for InGameBannerRequiredData();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for InGameBannerView();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v6;
  v9 = *(v0 + v6);

  v10 = *(v0 + v6 + 8);

  v11 = *(v0 + v6 + 16);

  v12 = *(v0 + v6 + 24);

  v13 = v5[6];
  v14 = type metadata accessor for Game();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v6 + v13, 1, v14))
  {
    (*(v15 + 8))(v8 + v13, v14);
  }

  v16 = v5[7];
  v17 = type metadata accessor for AccessPointUseCase();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);
  v18 = *(v8 + v5[8] + 8);

  v19 = *(v8 + v5[9] + 8);

  v20 = (v8 + v5[10]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100030784(*v20, v21);
  }

  v22 = (v8 + v5[11]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_100030784(*v22, v23);
  }

  v24 = *(v8 + v5[12] + 8);

  v25 = *(v8 + v5[13] + 8);

  v26 = *(v8 + v5[14]);

  v27 = (v8 + v5[16]);
  if (v27[3])
  {
    sub_10002E6CC(v27);
  }

  v28 = *(v8 + v5[17] + 8);

  v29 = v5[18];
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004958C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InGameBannerRequiredData() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for InGameBannerView() - 8);
  v9 = (v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));

  return sub_100047DAC(a1, v2 + v6, v9, a2);
}

uint64_t sub_100049670@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shouldPresentOfflineOverlay.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000496C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100049790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100049870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_100049958()
{
  sub_100049AF0();
  if (v0 <= 0x3F)
  {
    sub_10004DF60(319, &qword_10012E520, &type metadata accessor for GameDashboardDestination, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100045F14(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0);
      if (v2 <= 0x3F)
      {
        sub_10004DF60(319, &qword_10012E538, &type metadata accessor for StoreTab, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_100045F14(319, &qword_10012E3D8, &qword_10012E0C0, &qword_1000EA820);
          if (v4 <= 0x3F)
          {
            sub_100045F14(319, &qword_10012E540, &unk_10012E548, &qword_1000EA9B0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100049AF0()
{
  if (!qword_10012E3B8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10012E3B8);
    }
  }
}

uint64_t sub_100049B5C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = type metadata accessor for FallbackDashboardOverlayView(0);
  v2 = *(v1 - 8);
  Strong = v1;
  v41 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v4;
  v5 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  __chkstk_darwin(v5);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImpedimentFlowConfig();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for BootstrapResult();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  if (qword_10012CC40 != -1)
  {
    swift_once();
  }

  v22 = *(qword_100135CF0 + 24);
  swift_getKeyPath();
  v47 = v22;
  sub_10004D8DC(&qword_10012E450, type metadata accessor for OverlayBootstrap);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult;
  swift_beginAccess();
  sub_1000035B4(v22 + v23, v14, &qword_10012E458, qword_1000ECF80);
  v24 = *(v16 + 48);
  if (v24(v14, 1, v15) == 1)
  {
    sub_10004A0E8(v21);
    v25 = v15;
    if (v24(v14, 1, v15) != 1)
    {
      sub_100005688(v14, &qword_10012E458, qword_1000ECF80);
    }
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    v25 = v15;
  }

  v36 = BootstrapResult.objectGraph.getter();
  v26 = *(Strong + 40);
  v27 = v45;
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(v38 + 104))(v37, enum case for ImpedimentFlowConfig.UseCase.inGame(_:), v39);
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  (*(v16 + 16))(v19, v21, v25);
  v28 = v27;
  v29 = v42;
  sub_10004DA44(v28, v42, type metadata accessor for FallbackDashboardOverlayView);
  v30 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v31 = (v17 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v41 + 80) + v31 + 8) & ~*(v41 + 80);
  v33 = v25;
  v34 = swift_allocObject();
  (*(v16 + 32))(v34 + v30, v19, v33);
  *(v34 + v31) = v22;
  sub_10004D994(v29, v34 + v32, type metadata accessor for FallbackDashboardOverlayView);
  sub_100002B38(&qword_10012E628, &qword_1000EAAC8);
  sub_10004D7F4();
  ImpedimentFlowView.init<>(objectGraph:window:config:content:)();
  return (*(v16 + 8))(v21, v33);
}

uint64_t sub_10004A0E8@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v1 = sub_100002B38(&qword_10012E660, &unk_1000ED030);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v100 = &v79 - v3;
  v4 = sub_100002B38(&qword_10012E668, &qword_1000EAB40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v98 = &v79 - v6;
  v109 = type metadata accessor for MetricsPipeline.Configuration();
  v108 = *(v109 - 8);
  v7 = *(v108 + 64);
  v8 = __chkstk_darwin(v109);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v112 = &v79 - v10;
  v111 = type metadata accessor for Bag();
  v113 = *(v111 - 8);
  v11 = *(v113 + 64);
  __chkstk_darwin(v111);
  v97 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for MetricsFieldsAggregator();
  v101 = *(v107 - 8);
  v13 = *(v101 + 64);
  v14 = __chkstk_darwin(v107);
  v99 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v79 - v16;
  v18 = type metadata accessor for NativeIntentDispatcher();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v79 - v24;
  v26 = type metadata accessor for Bag.Stubs();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v28 = type metadata accessor for Bag.Profile();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v30 = type metadata accessor for FallbackDashboardOverlayView.OfflineBagContract(0);
  v31 = *(*(v30 - 1) + 64);
  __chkstk_darwin(v30);
  v33 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  Bag.Profile.init(name:version:)();
  Bag.Stubs.init()();
  Bag.init(mockProfile:stubs:)();
  v33[v30[5]] = 0;
  v34 = v30[6];
  v35 = type metadata accessor for BagOfflinePolicy();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v93 = v35;
  v92 = v37;
  v91 = v36 + 56;
  (v37)(&v33[v34], 1, 1);
  v33[v30[7]] = 0;
  *&v33[v30[8]] = 0x40BC200000000000;
  *&v33[v30[9]] = 0x407E000000000000;
  makeNetworkInquiry()();
  sub_10002E8A8(&v118, &v115);
  v114[3] = v30;
  v114[4] = sub_10004D8DC(&qword_10012E670, type metadata accessor for FallbackDashboardOverlayView.OfflineBagContract);
  v38 = sub_100012854(v114);
  v39 = v33;
  sub_10004DA44(v33, v38, type metadata accessor for FallbackDashboardOverlayView.OfflineBagContract);
  v40 = type metadata accessor for JSFreshnessWatchdog();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v96 = JSFreshnessWatchdog.init(bagContract:networkInquiry:process:)();
  NativeIntentDispatcher.init()();
  *(&v116 + 1) = v18;
  v117 = &protocol witness table for NativeIntentDispatcher;
  sub_100012854(&v115);
  static GameObjectGraphBuilder.nativeIntentDispatcher()();
  v43 = v19[2];
  v86 = (v19 + 2);
  v88 = v43;
  v43(v25, v23, v18);
  sub_1000035B4(&v115, v114, &qword_10012E678, &qword_1000EAB48);
  NativeIntentDispatcher.next.setter();
  v44 = v19[1];
  v94 = v19 + 1;
  v95 = v44;
  v44(v23, v18);
  sub_100005688(&v115, &qword_10012E678, &qword_1000EAB48);
  v45 = v113 + 16;
  v46 = *(v113 + 16);
  v47 = v97;
  v48 = v111;
  v46(v97, v39);
  v49 = v45;
  v87 = objc_opt_self();
  v50 = [v87 ams_sharedAccountStore];
  v85 = sub_10004DAFC();
  *(&v116 + 1) = v85;
  v117 = &protocol witness table for ACAccountStore;
  *&v115 = v50;
  v84 = objc_opt_self();
  v51 = [v84 mainBundle];
  MetricsFieldsAggregator.init(bag:accountProvider:bundle:)();
  v83 = type metadata accessor for AMSMetricsEventRecorder();
  v113 = v49;
  v103 = v46;
  (v46)(v47, v39, v48);
  v110 = v39;
  Bag.metricsTopic.getter();
  v104 = AMSMetricsEventRecorder.__allocating_init(bag:defaultTopic:)();
  (v46)(v47, v39, v48);
  *(&v116 + 1) = &type metadata for FallbackDashboardOverlayView.OfflineMetricsEventLinter;
  v117 = sub_10004DB48();
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:)();
  v81 = type metadata accessor for ArtworkLoaderURLSession();
  v80 = [swift_getObjCClassFromMetadata() minimalSession];
  type metadata accessor for BaseObjectGraph();
  sub_100002B38(&qword_10012E690, &qword_1000EAB50);
  v52 = *(type metadata accessor for Dependency() - 8);
  v90 = v18;
  v53 = *(v52 + 72);
  v105 = v17;
  v54 = *(v52 + 80);
  v89 = v25;
  *(swift_allocObject() + 16) = xmmword_1000EA7D0;
  sub_100002B38(&qword_10012E698, &qword_1000EAB58);
  *(&v116 + 1) = v18;
  v117 = &protocol witness table for NativeIntentDispatcher;
  v55 = sub_100012854(&v115);
  v88(v55, v25, v18);
  Dependency.init<A>(satisfying:with:)();
  v88 = BaseObjectGraph.__allocating_init(name:_:)();
  v82 = 8 * v53;
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1000EA950;
  v56 = v47;
  v57 = v110;
  v58 = v111;
  v59 = v103;
  (v103)(v47, v110, v111);
  Dependency.init<A>(satisfying:with:)();
  v59(v47, v57, v58);
  v60 = [v87 ams_sharedAccountStore];
  *(&v116 + 1) = v85;
  v117 = &protocol witness table for ACAccountStore;
  *&v115 = v60;
  v61 = [v84 mainBundle];
  v62 = v99;
  MetricsFieldsAggregator.init(bag:accountProvider:bundle:)();
  Dependency.init<A>(satisfying:with:)();
  *&v115 = v104;

  Dependency.init<A>(satisfying:with:)();
  *&v115 = v80;
  v63 = v80;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for ArtworkLoader();
  v87 = v63;
  *&v115 = ArtworkLoader.__allocating_init(cacheLimit:renderIntent:urlSession:)();
  Dependency.init<A>(satisfying:with:)();
  v85 = *(v108 + 16);
  v85(v106, v112, v109);
  Dependency.init<A>(satisfying:with:)();
  v64 = type metadata accessor for ImpedimentFlowDestinationStates();
  v65 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
  (*(*(v65 - 8) + 56))(v98, 1, 1, v65);
  v66 = *(v64 + 48);
  v67 = *(v64 + 52);
  swift_allocObject();
  *&v115 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
  Dependency.init<A>(satisfying:with:)();
  v68 = type metadata accessor for ASKBagContract();
  (v103)(v56, v110, v111);
  v92(v100, 1, 1, v93);
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  *&v115 = ASKBagContract.init(_:isOfflineBag:bagOfflinePolicy:)();
  Dependency.init<A>(satisfying:with:)();
  *&v115 = v86;
  sub_100002B38(&qword_10012E6A8, &qword_1000EAB68);
  sub_1000057D8(&qword_10012E6B0, &qword_10012E6A8, &qword_1000EAB68);
  dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();

  v71 = v101;
  v72 = v107;
  (*(v101 + 16))(v62, v105, v107);
  v73 = v112;
  v74 = v109;
  v85(v106, v112, v109);
  v75 = type metadata accessor for MetricsPipelineTransformer();
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();

  MetricsPipelineTransformer.init(aggregator:recorder:configuration:additionalRecorders:decorators:)();
  sub_10004CA0C();
  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  BootstrapResult.init(objectGraph:freshnessWatchdog:metricsPipelineTransformer:)();

  (*(v108 + 8))(v73, v74);
  (*(v71 + 8))(v105, v72);
  v95(v89, v90);
  sub_10002E6CC(&v118);
  return sub_10004DB9C(v110);
}

int *sub_10004AFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v182 = a4;
  v183 = a3;
  v186 = a2;
  v184 = a1;
  v166 = a6;
  v7 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v159 = &v153 - v9;
  v10 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v176 = &v153 - v12;
  v179 = type metadata accessor for StoreTab();
  v177 = *(v179 - 8);
  v13 = *(v177 + 64);
  v14 = __chkstk_darwin(v179);
  v155 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v160 = &v153 - v17;
  v18 = __chkstk_darwin(v16);
  v157 = &v153 - v19;
  v20 = __chkstk_darwin(v18);
  v163 = &v153 - v21;
  __chkstk_darwin(v20);
  v164 = &v153 - v22;
  v187 = type metadata accessor for StoreTab.Identifier();
  v180 = *(v187 - 8);
  v23 = *(v180 + 64);
  v24 = __chkstk_darwin(v187);
  v158 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v175 = &v153 - v27;
  v28 = __chkstk_darwin(v26);
  v178 = &v153 - v29;
  __chkstk_darwin(v28);
  v188 = &v153 - v30;
  v31 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v154 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v156 = &v153 - v36;
  __chkstk_darwin(v35);
  v185 = &v153 - v37;
  v38 = type metadata accessor for CommonOnboardingStatus();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v153 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v46 = &v153 - v45;
  v47 = type metadata accessor for BootstrapResult();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  v51 = &v153 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v53 = *(*(v52 - 1) + 64);
  v54 = __chkstk_darwin(v52);
  v56 = &v153 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v161 = &v153 - v57;
  v162 = v48;
  v58 = *(v48 + 16);
  v181 = v51;
  v59 = v183;
  v183 = v47;
  v172 = v58;
  v58(v51, v59, v47);
  v60 = *(v182 + 2);
  v61 = a5[1];
  v170 = *a5;
  v182 = v46;
  sub_1000035B4(v184, v46, &qword_10012E478, &unk_1000EA8E0);
  v165 = v39;
  v62 = *(v39 + 16);
  v184 = v42;
  v63 = v186;
  v186 = v38;
  v174 = (v39 + 16);
  v173 = v62;
  (v62)(v42, v63, v38);
  v64 = objc_opt_self();
  v171 = v61;

  v169 = v60;
  result = [v64 defaultWorkspace];
  if (!result)
  {
    goto LABEL_23;
  }

  v66 = result;
  v67 = String._bridgeToObjectiveC()();
  v168 = [v66 applicationIsInstalled:v67];

  v68 = type metadata accessor for FallbackDashboardOverlayView(0);
  v69 = v185;
  sub_1000035B4(a5 + v68[5], v185, &qword_10012E4B0, qword_1000EA960);
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  v70 = v68[8];
  v167 = *(a5 + v68[7]);
  sub_1000035B4(a5 + v70, v192, &unk_100131120, &unk_1000EAAF0);
  v71 = (a5 + v68[6]);
  v72 = *v71;
  v73 = v71[1];
  v74 = v68[10];
  Strong = swift_unknownObjectWeakLoadStrong();
  v76 = &v56[v52[11]];
  *(v76 + 4) = 0;
  *v76 = 0u;
  *(v76 + 1) = 0u;
  v77 = v52[13];
  v78 = &v56[v52[12]];
  swift_unknownObjectWeakInit();
  v172(v56, v181, v183);
  *&v56[v52[5]] = v169;
  v79 = &v56[v52[6]];
  v80 = v171;
  *v79 = v170;
  *(v79 + 1) = v80;
  sub_1000035B4(v182, &v56[v52[7]], &qword_10012E478, &unk_1000EA8E0);
  (v173)(&v56[v52[8]], v184, v186);
  v56[v52[9]] = v168;
  sub_1000035B4(v69, &v56[v52[10]], &qword_10012E4B0, qword_1000EA960);
  sub_10000519C(v72);
  v81 = v76;
  v82 = v167;
  sub_10004D924(v192, v81);
  *v78 = v72;
  v78[1] = v73;
  v174 = Strong;
  swift_unknownObjectWeakAssign();
  v83 = v179;
  if ((Array.isNotEmpty.getter() & 1) == 0)
  {
    static StoreTab.Identifier.overlaySystemSettingsPage.getter();
    v97 = type metadata accessor for URL();
    (*(*(v97 - 8) + 56))(v176, 1, 1, v97);
    sub_1000D9414(_swiftEmptyArrayStorage);
    v98 = v164;
    StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
    sub_100002B38(&qword_10012E480, &qword_1000EA8F0);
    v99 = v177;
    v100 = *(v177 + 72);
    v101 = (*(v177 + 80) + 32) & ~*(v177 + 80);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_1000EA7D0;
    v103 = v52;
    v104 = *(v99 + 16);
    v104(v102 + v101, v98, v83);
    v105 = &v56[v52[15]];
    v189 = v102;
    sub_100002B38(&qword_10012E658, &qword_1000EAB00);
    State.init(wrappedValue:)();
    v106 = v191;
    *v105 = v190;
    *(v105 + 1) = v106;
    v107 = v163;
    v104(v163, v98, v83);
    v108 = v52[16];
    v104(v157, v107, v83);
    v109 = v184;
    v110 = v186;
    State.init(wrappedValue:)();
    v111 = *(v99 + 8);
    v111(v107, v83);
    v111(v98, v83);
    v112 = v187;
    v113 = v180;
LABEL_20:
    v146 = v182;
    v145 = v183;
    v147 = v181;
    BootstrapResult.objectGraph.getter();
    type metadata accessor for DismissDashboardNotifier();
    BaseObjectGraph.inject<A>(_:)();

    sub_100005688(v192, &unk_100131120, &unk_1000EAAF0);
    (*(v113 + 8))(v188, v112);
    sub_100005688(v185, &qword_10012E4B0, qword_1000EA960);
    (*(v165 + 8))(v109, v110);
    sub_100005688(v146, &qword_10012E478, &unk_1000EA8E0);
    (*(v162 + 8))(v147, v145);
    *&v56[v103[14]] = v190;
    v148 = v161;
    sub_10004D994(v56, v161, type metadata accessor for DashboardOverlayView.OverlayContentView);
    KeyPath = swift_getKeyPath();
    v150 = v148;
    v151 = v166;
    sub_10004D994(v150, v166, type metadata accessor for DashboardOverlayView.OverlayContentView);
    result = sub_100002B38(&qword_10012E628, &qword_1000EAAC8);
    v152 = v151 + result[9];
    *v152 = KeyPath;
    *(v152 + 8) = 1;
    return result;
  }

  v84 = v52[15];
  v173 = v56;
  v85 = &v56[v84];
  v189 = v82;

  sub_100002B38(&qword_10012E658, &qword_1000EAB00);
  State.init(wrappedValue:)();
  v86 = v191;
  *v85 = v190;
  *(v85 + 1) = v86;
  v87 = v156;
  sub_1000035B4(v69, v156, &qword_10012E4B0, qword_1000EA960);
  v88 = type metadata accessor for GameDashboardDestination();
  v89 = *(v88 - 8);
  v90 = (*(v89 + 48))(v87, 1, v88);
  v91 = v187;
  v92 = v180;
  v93 = v178;
  v94 = v158;
  if (v90 != 1)
  {
    v95 = v187;
    v114 = v154;
    sub_1000035B4(v87, v154, &qword_10012E4B0, qword_1000EA960);
    v115 = (*(v89 + 88))(v114, v88);
    if (v115 == enum case for GameDashboardDestination.friendInvites(_:))
    {
      v96 = v93;
      static StoreTab.Identifier.overlaySocialPage.getter();
      goto LABEL_10;
    }

    if (v115 == enum case for GameDashboardDestination.systemSettings(_:))
    {
      v96 = v93;
      static StoreTab.Identifier.overlaySystemSettingsPage.getter();
      goto LABEL_10;
    }

    (*(v89 + 8))(v114, v88);
    v91 = v95;
  }

  v95 = v91;
  (*(v92 + 16))(v93, v188);
  v96 = v93;
LABEL_10:
  sub_100005688(v87, &qword_10012E4B0, qword_1000EA960);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v116 = type metadata accessor for Logger();
  sub_100011F80(v116, qword_100135C88);
  v117 = v92;
  v118 = *(v92 + 16);
  v118(v94, v96, v95);
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.info.getter();
  v121 = os_log_type_enabled(v119, v120);
  v153 = v52;
  if (v121)
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v190 = v123;
    *v122 = 136315138;
    v124 = StoreTab.Identifier.rawValue.getter();
    v125 = v94;
    v127 = v126;
    v172 = *(v180 + 8);
    (v172)(v125, v187);
    v128 = sub_1000BA5C8(v124, v127, &v190);
    v129 = v179;

    *(v122 + 4) = v128;
    _os_log_impl(&_mh_execute_header, v119, v120, "OverlayContentView: initial tab set to %s", v122, 0xCu);
    sub_10002E6CC(v123);
    v95 = v187;
  }

  else
  {

    v172 = *(v117 + 8);
    (v172)(v94, v95);
    v129 = v179;
  }

  v118(v175, v178, v95);
  v130 = type metadata accessor for URL();
  (*(*(v130 - 8) + 56))(v176, 1, 1, v130);
  sub_1000D9414(_swiftEmptyArrayStorage);
  v131 = StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  __chkstk_darwin(v131);
  v132 = v159;
  sub_1000979E8(sub_10004DA04, v82, v159);
  v133 = v177;
  v134 = (*(v177 + 48))(v132, 1, v129);
  v56 = v173;
  if (v134 != 1)
  {
    v139 = v155;
    (*(v133 + 32))(v155, v132, v129);
    v140 = *(v133 + 16);
    v141 = v164;
    v140(v164, v139, v129);
    v142 = v153;
    v143 = v153[16];
    v140(v163, v141, v129);
    State.init(wrappedValue:)();
    v138 = *(v133 + 8);
    v138(v141, v129);
    v144 = v139;
    v103 = v142;
    v138(v144, v129);
    goto LABEL_19;
  }

  result = sub_100005688(v132, &qword_10012E650, &qword_1000EDA30);
  if (*(v82 + 16))
  {
    v135 = *(v133 + 16);
    v136 = v164;
    v135(v164, v82 + ((*(v133 + 80) + 32) & ~*(v133 + 80)), v129);
    v103 = v153;
    v137 = v153[16];
    v135(v163, v136, v129);
    State.init(wrappedValue:)();
    v138 = *(v133 + 8);
    v138(v136, v129);
LABEL_19:
    v113 = v180;
    v112 = v187;
    (v172)(v178, v187);
    v138(v160, v129);
    v110 = v186;
    v109 = v184;
    goto LABEL_20;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10004C1A4@<X0>(void *a1@<X8>)
{
  v48 = a1;
  v43 = sub_100002B38(&qword_10012E600, &qword_1000EAA70);
  v1 = *(v43 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v43);
  v4 = &v42 - v3;
  v5 = sub_100002B38(&qword_10012E608, &qword_1000EAA78);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v42 - v7;
  v44 = sub_100002B38(&qword_10012E610, &qword_1000EAA80);
  v9 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v11 = &v42 - v10;
  v46 = sub_100002B38(&qword_10012E618, &qword_1000EAA88);
  v12 = *(*(v46 - 8) + 64);
  v13 = __chkstk_darwin(v46);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - v16;
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  type metadata accessor for ZoomCoordinator();
  v45 = static ZoomCoordinator.isPhone.getter();
  sub_100049B5C(v4);
  if ((static ZoomCoordinator.isPhone.getter() & 1) == 0)
  {
    static ZoomCoordinator.overlayContentWidth.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  (*(v1 + 32))(v8, v4, v43);
  v20 = &v8[*(v5 + 36)];
  v21 = v50;
  *v20 = v49;
  *(v20 + 1) = v21;
  *(v20 + 2) = v51;
  static ZoomCoordinator.isPhone.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100014830(v8, v11, &qword_10012E608, &qword_1000EAA78);
  v22 = &v11[*(v44 + 36)];
  v23 = v57;
  *(v22 + 4) = v56;
  *(v22 + 5) = v23;
  *(v22 + 6) = v58;
  v24 = v53;
  *v22 = v52;
  *(v22 + 1) = v24;
  v25 = v55;
  *(v22 + 2) = v54;
  *(v22 + 3) = v25;
  v26 = static Edge.Set.trailing.getter();
  if ((static ZoomCoordinator.isPhone.getter() & 1) == 0)
  {
    static ZoomCoordinator.iPadTrailingPadding.getter();
  }

  v27 = v45;
  v28 = (v45 & 1) == 0;
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_100014830(v11, v17, &qword_10012E610, &qword_1000EAA80);
  v37 = &v17[*(v46 + 36)];
  *v37 = v26;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_100014830(v17, v19, &qword_10012E618, &qword_1000EAA88);
  v38 = v47;
  sub_1000035B4(v19, v47, &qword_10012E618, &qword_1000EAA88);
  v39 = v48;
  *v48 = 0;
  *(v39 + 8) = v28;
  *(v39 + 9) = v27 & 1;
  v40 = sub_100002B38(&qword_10012E620, &unk_1000EAA90);
  sub_1000035B4(v38, v39 + *(v40 + 48), &qword_10012E618, &qword_1000EAA88);
  sub_100005688(v19, &qword_10012E618, &qword_1000EAA88);
  return sub_100005688(v38, &qword_10012E618, &qword_1000EAA88);
}

uint64_t sub_10004C660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FallbackDashboardOverlayView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = static Color.clear.getter();
  sub_10004DA44(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FallbackDashboardOverlayView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_10004D994(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FallbackDashboardOverlayView);
  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = static SafeAreaRegions.all.getter();
  result = static Edge.Set.all.getter();
  *a2 = v7;
  *(a2 + 8) = sub_10004E0B0;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_10004C7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = type metadata accessor for FallbackDashboardOverlayView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_100002B38(&qword_10012E5D8, &qword_1000EAA50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v19 - v8);
  v10 = static Color.clear.getter();
  v11 = v9 + *(sub_100002B38(&qword_10012E5F0, &unk_1000EAA58) + 36);
  static Material.ultraThin.getter();
  v12 = static Edge.Set.all.getter();
  v11[*(sub_100002B38(&qword_10012CD40, &qword_1000E9070) + 36)] = v12;
  *v9 = v10;
  v13 = static SafeAreaRegions.all.getter();
  v14 = static Edge.Set.all.getter();
  v15 = v9 + *(v6 + 36);
  *v15 = v13;
  v15[8] = v14;
  sub_10004DA44(a1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FallbackDashboardOverlayView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_10004D994(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for FallbackDashboardOverlayView);
  sub_10004D1A0(&qword_10012E5E0, &qword_10012E5D8, &qword_1000EAA50, sub_10004D224);
  View.onTapGesture(count:perform:)();

  return sub_100005688(v9, &qword_10012E5D8, &qword_1000EAA50);
}

uint64_t sub_10004CA0C()
{
  v0 = type metadata accessor for Dependency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v14 - v6;
  static GameObjectGraphBuilder.frameworkObjects(metricsPipelineTransformer:)();
  sub_100002B38(&qword_10012E698, &qword_1000EAB58);

  Dependency.init<A>(satisfying:with:)();
  v8 = type metadata accessor for DismissDashboardNotifier();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v14[1] = DismissDashboardNotifier.init()();
  Dependency.init<A>(satisfying:with:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v11 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v12 = *(v1 + 8);
  v12(v5, v0);
  v12(v7, v0);
  return v11;
}

uint64_t sub_10004CBEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NativeIntentDispatcher();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  NativeIntentDispatcher.init()();
  v10 = v2;
  v11 = &protocol witness table for NativeIntentDispatcher;
  sub_100012854(v9);
  static GameObjectGraphBuilder.nativeIntentDispatcher()();
  a1[3] = v2;
  a1[4] = &protocol witness table for NativeIntentDispatcher;
  sub_100012854(a1);
  (*(v3 + 16))();
  sub_1000035B4(v9, v8, &qword_10012E678, &qword_1000EAB48);
  NativeIntentDispatcher.next.setter();
  (*(v3 + 8))(v6, v2);
  return sub_100005688(v9, &qword_10012E678, &qword_1000EAB48);
}

uint64_t sub_10004CD64@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Bag();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10004CE30()
{
  v0 = type metadata accessor for LintedMetricsEvent();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_100002B38(&qword_10012E780, &qword_1000EAC28);

  LintedMetricsEvent.init(fields:issues:)();
  return Promise.__allocating_init(value:)();
}

uint64_t sub_10004CEDC@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_100002B38(&qword_10012E590, &qword_1000EAA20);
  sub_10004C1A4((a1 + *(v2 + 44)));
  v3 = static Alignment.center.getter();
  v5 = v4;
  v6 = a1 + *(sub_100002B38(&qword_10012E598, &qword_1000EAA28) + 36);
  Solarium.init()();
  sub_100002B38(&qword_10012E5A0, &qword_1000EAA30);
  sub_100002B38(&qword_10012E5A8, &qword_1000EAA38);
  sub_10004D1A0(&qword_10012E5B0, &qword_10012E5A0, &qword_1000EAA30, sub_10004D0E8);
  sub_100005144(&qword_10012E5D8, &qword_1000EAA50);
  sub_10004D1A0(&qword_10012E5E0, &qword_10012E5D8, &qword_1000EAA50, sub_10004D224);
  swift_getOpaqueTypeConformance2();
  StaticIf<>.init(_:then:else:)();
  result = sub_100002B38(&qword_10012E5F8, &qword_1000EAA68);
  v8 = (v6 + *(result + 36));
  *v8 = v3;
  v8[1] = v5;
  return result;
}

unint64_t sub_10004D0E8()
{
  result = qword_10012E5B8;
  if (!qword_10012E5B8)
  {
    sub_100005144(&qword_10012E5C0, &qword_1000EAA40);
    sub_1000057D8(&qword_10012E5C8, &qword_10012E5D0, &qword_1000EAA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E5B8);
  }

  return result;
}

uint64_t sub_10004D1A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005144(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004D224()
{
  result = qword_10012E5E8;
  if (!qword_10012E5E8)
  {
    sub_100005144(&qword_10012E5F0, &unk_1000EAA58);
    sub_1000057D8(&qword_10012CE58, &qword_10012CD40, &qword_1000E9070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E5E8);
  }

  return result;
}

uint64_t sub_10004D2E4()
{
  v1 = type metadata accessor for FallbackDashboardOverlayView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[5];
  v6 = type metadata accessor for GameDashboardDestination();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = (v3 + v1[6]);
  if (*v8)
  {
    v9 = v8[1];
  }

  v10 = *(v3 + v1[7]);

  v11 = (v3 + v1[8]);
  if (v11[3])
  {
    sub_10002E6CC(v11);
  }

  v12 = *(v3 + v1[9]);

  v13 = v1[10];
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004D468()
{
  v1 = type metadata accessor for FallbackDashboardOverlayView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

uint64_t sub_10004D4E4()
{
  v1 = type metadata accessor for BootstrapResult();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for FallbackDashboardOverlayView(0);
  v6 = (v4 + *(*(v5 - 1) + 80) + 8) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);

  v9 = v0 + v6;
  v10 = *(v0 + v6 + 8);

  v11 = v5[5];
  v12 = type metadata accessor for GameDashboardDestination();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = (v9 + v5[6]);
  if (*v14)
  {
    v15 = v14[1];
  }

  v16 = *(v9 + v5[7]);

  v17 = (v9 + v5[8]);
  if (v17[3])
  {
    sub_10002E6CC(v17);
  }

  v18 = *(v9 + v5[9]);

  v19 = v5[10];
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

int *sub_10004D6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for BootstrapResult() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for FallbackDashboardOverlayView(0) - 8);
  v11 = *(v3 + v9);
  v12 = (v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80)));

  return sub_10004AFC0(a1, a2, v3 + v8, v11, v12, a3);
}

unint64_t sub_10004D7F4()
{
  result = qword_10012E630;
  if (!qword_10012E630)
  {
    sub_100005144(&qword_10012E628, &qword_1000EAAC8);
    sub_10004D8DC(&qword_10012E638, type metadata accessor for DashboardOverlayView.OverlayContentView);
    sub_1000057D8(&qword_10012E640, &qword_10012E648, &unk_1000EAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E630);
  }

  return result;
}

uint64_t sub_10004D8DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004D924(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&unk_100131120, &unk_1000EAAF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004DA44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *sub_10004DAAC(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

unint64_t sub_10004DAFC()
{
  result = qword_10012E680;
  if (!qword_10012E680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012E680);
  }

  return result;
}

unint64_t sub_10004DB48()
{
  result = qword_10012E688;
  if (!qword_10012E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E688);
  }

  return result;
}

uint64_t sub_10004DB9C(uint64_t a1)
{
  v2 = type metadata accessor for FallbackDashboardOverlayView.OfflineBagContract(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004DC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_100002B38(&qword_10012E660, &unk_1000ED030);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10004DD6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Bag();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_100002B38(&qword_10012E660, &unk_1000ED030);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10004DE98()
{
  type metadata accessor for Bag();
  if (v0 <= 0x3F)
  {
    sub_10004DF60(319, &unk_10012E720, &type metadata accessor for BagOfflinePolicy, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004DF60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10004DFC8()
{
  result = qword_10012E760;
  if (!qword_10012E760)
  {
    sub_100005144(&qword_10012E598, &qword_1000EAA28);
    sub_1000057D8(&qword_10012E768, &qword_10012E770, &qword_1000EABA8);
    sub_1000057D8(&qword_10012E778, &qword_10012E5F8, &qword_1000EAA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E760);
  }

  return result;
}

void *sub_10004E0BC(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_10004E104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _NavigationStackStyleConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayFlowAuthorityProvider();

  v33 = a2;
  BaseObjectGraph.inject<A>(_:)();
  v11 = v36;
  (*(v7 + 16))(v10, a1, v6);
  swift_getKeyPath();
  *&v36 = v11;
  sub_10006778C(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100067644(v11 + 16, &v36);
  if (swift_dynamicCast())
  {
    v13 = v34;
    v12 = v35;
  }

  else
  {
    v13 = 0;
    v12 = 0xE000000000000000;
  }

  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = type metadata accessor for OverlayStack(0);
  *(a3 + v15[12]) = v14;
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  swift_storeEnumTagMultiPayload();
  (*(v7 + 32))(a3, v10, v6);
  *(a3 + v15[5]) = v33;
  v16 = a3 + v15[6];
  v34 = v13;
  v35 = v12;
  State.init(wrappedValue:)();
  v17 = v37;
  *v16 = v36;
  *(v16 + 16) = v17;
  v18 = a3 + v15[7];
  v34 = 2;
  LOBYTE(v35) = 1;
  State.init(wrappedValue:)();
  v19 = BYTE8(v36);
  v20 = v37;
  *v18 = v36;
  *(v18 + 8) = v19;
  *(v18 + 16) = v20;
  v21 = (a3 + v15[8]);
  v34 = 0;
  State.init(wrappedValue:)();
  v22 = *(&v36 + 1);
  *v21 = v36;
  v21[1] = v22;
  v23 = a3 + v15[9];
  LOBYTE(v34) = 1;
  State.init(wrappedValue:)();
  v24 = *(&v36 + 1);
  *v23 = v36;
  *(v23 + 8) = v24;
  v25 = (a3 + v15[10]);
  v26 = type metadata accessor for AppFocusState();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v34 = AppFocusState.init()();

  State.init(wrappedValue:)();

  v30 = *(&v36 + 1);
  *v25 = v36;
  v25[1] = v30;
  v31 = a3 + v15[11];
  *v31 = KeyPath;
  *(v31 + 8) = 0;
  return result;
}

uint64_t sub_10004E4A8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for OverlayStack(0) + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000682AC(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10004E600@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for OverlayStack(0);
  sub_1000035B4(v1 + *(v12 + 48), v11, &qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for LayoutDirection();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10004E808@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for OverlayStack(0);
  v4 = v3 - 8;
  v57 = *(v3 - 8);
  v5 = *(v57 + 64);
  __chkstk_darwin(v3);
  v7 = v6;
  v8 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002B38(&qword_10012EB08, &qword_1000EAFA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v51 - v11;
  v58 = sub_100002B38(&qword_10012EB10, &qword_1000EAFA8);
  v13 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v15 = &v51 - v14;
  v61 = sub_100002B38(&qword_10012EB18, &qword_1000EAFB0);
  v16 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v59 = &v51 - v17;
  v18 = *(_NavigationStackStyleConfiguration.items.getter() + 16);

  *v12 = static Alignment.top.getter();
  *(v12 + 1) = v19;
  v20 = sub_100002B38(&qword_10012EB20, &qword_1000EAFB8);
  sub_10004EE7C(v2, v18, &v12[*(v20 + 44)]);
  v12[*(sub_100002B38(&qword_10012EB28, &qword_1000EAFC0) + 36)] = v18 > 1;
  v21 = v2 + *(v4 + 36);
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  v62 = v22;
  LOBYTE(v63) = v23;
  v64 = v24;
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  State.wrappedValue.getter();
  v25 = v65;
  v26 = v66;
  v27 = &v12[*(v9 + 36)];
  *v27 = v18 > 1;
  v27[1] = v18 == 2;
  *(v27 + 1) = v25;
  v27[16] = v26;
  sub_100002B38(&qword_10012EB38, &qword_1000EAFD0);
  sub_100067F70();
  sub_100068134();
  sub_100068188();
  v28 = v15;
  View.staticIf<A, B>(_:then:)();
  sub_100005688(v12, &qword_10012EB08, &qword_1000EAFA0);
  sub_100068240(v2, v8, type metadata accessor for OverlayStack);
  v29 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v30 = *(v57 + 80);
  v31 = swift_allocObject();
  sub_10006B690(v8, v31 + v29, type metadata accessor for OverlayStack);
  v32 = *(sub_100002B38(&qword_10012EB98, &qword_1000EAFF0) + 36);
  v56 = v28;
  v33 = &v28[v32];
  *v33 = sub_1000682B8;
  v33[1] = v31;
  v54 = v2;
  v52 = type metadata accessor for OverlayStack;
  sub_100068240(v2, v8, type metadata accessor for OverlayStack);
  v53 = v7;
  v34 = swift_allocObject();
  v55 = type metadata accessor for OverlayStack;
  sub_10006B690(v8, v34 + v29, type metadata accessor for OverlayStack);
  v35 = &v28[*(v58 + 36)];
  *v35 = sub_1000684B8;
  v35[1] = v34;
  v57 = type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.sourceID.getter();

  sub_100068240(v2, v8, type metadata accessor for OverlayStack);
  v51 = v30;
  v36 = swift_allocObject();
  sub_10006B690(v8, v36 + v29, type metadata accessor for OverlayStack);
  sub_100002B38(&qword_10012EBA0, &qword_1000EAFF8);
  sub_100068598();
  sub_10006878C();
  v37 = v59;
  v38 = v56;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(&v62, &qword_10012EBA0, &qword_1000EAFF8);
  sub_100005688(v38, &qword_10012EB10, &qword_1000EAFA8);
  v39 = v54;
  v40 = v8;
  v41 = v8;
  v42 = v52;
  sub_100068240(v54, v41, v52);
  v43 = swift_allocObject();
  v44 = v55;
  sub_10006B690(v40, v43 + v29, v55);
  v45 = (v37 + *(v61 + 36));
  *v45 = sub_100068808;
  v45[1] = v43;
  v45[2] = 0;
  v45[3] = 0;
  static ZoomCoordinator.shared.getter();
  v46 = dispatch thunk of ZoomCoordinator.activeTabIdentifier.getter();
  v48 = v47;

  v62 = v46;
  v63 = v48;
  sub_100068240(v39, v40, v42);
  v49 = swift_allocObject();
  sub_10006B690(v40, v49 + v29, v44);
  sub_100068860();
  View.onChange<A>(of:initial:_:)();

  return sub_100005688(v37, &qword_10012EB18, &qword_1000EAFB0);
}

uint64_t sub_10004EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v57 = a3;
  v54 = sub_100002B38(&qword_10012EC20, &qword_1000EB050);
  v5 = *(*(v54 - 8) + 64);
  v6 = __chkstk_darwin(v54);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v51 - v8;
  v9 = type metadata accessor for OverlayStack(0);
  v10 = (v9 - 8);
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v13 = sub_100002B38(&qword_10012EC28, &qword_1000EB058);
  v55 = *(v13 - 8);
  v56 = v13;
  v14 = *(v55 + 64);
  v15 = __chkstk_darwin(v13);
  v53 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v51 - v17;
  *&v62 = a1;
  v19 = _NavigationStackStyleConfiguration.items.getter();
  v20 = sub_100068954(v19);

  *&v72 = v20;
  swift_getKeyPath();
  sub_100068240(a1, &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverlayStack);
  v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  sub_10006B690(&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for OverlayStack);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100068E70;
  *(v23 + 24) = v22;
  sub_100002B38(&qword_10012EC30, &qword_1000EB080);
  sub_100002B38(&qword_10012EC38, &qword_1000EB088);
  sub_1000057D8(&qword_10012EC40, &qword_10012EC30, &qword_1000EB080);
  sub_100068F64();
  v52 = v18;
  ForEach<>.init(_:id:content:)();
  v63 = a2;
  v60 = a2 == 2;
  v61 = a2 > 1;
  v24 = *(v62 + v10[7]);
  v25 = (v62 + v10[11]);
  v26 = v62;
  v27 = *v25;
  v28 = *(v25 + 1);
  LOBYTE(v65) = v27;
  *(&v65 + 1) = v28;

  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.projectedValue.getter();
  v29 = v72;
  v59 = v73;
  v30 = (v26 + v10[9]);
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = v30[2];
  *&v65 = v31;
  BYTE8(v65) = v32;
  *&v66 = v33;
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  State.projectedValue.getter();
  v62 = v72;
  v34 = v73;
  LOBYTE(v10) = BYTE8(v73);
  LOBYTE(v65) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v22) = v72;
  v35 = *(&v72 + 1);
  LOBYTE(v65) = 0;
  State.init(wrappedValue:)();
  v36 = v72;
  v37 = *(&v72 + 1);
  *&v65 = 0;
  State.init(wrappedValue:)();
  v71 = v10;
  LOBYTE(v65) = v61;
  BYTE1(v65) = v60;
  *(&v65 + 1) = v24;
  v66 = v29;
  LOBYTE(v67[0]) = v59;
  *(v67 + 8) = v62;
  *(&v67[1] + 1) = v34;
  LOBYTE(v68) = v10;
  BYTE8(v68) = v22;
  *&v69 = v35;
  BYTE8(v69) = v36;
  *v70 = v37;
  v38 = v64;
  *&v70[8] = v72;
  sub_100002B38(&qword_10012ED58, &qword_1000EB118);
  sub_1000699FC();
  sub_100068134();
  sub_100069A50();
  View.staticIf<A, B>(_:then:)();
  v76 = v68;
  v77 = v69;
  v78 = *v70;
  v79 = *&v70[16];
  v72 = v65;
  v73 = v66;
  v74 = v67[0];
  v75 = v67[1];
  result = sub_100069ADC(&v72);
  if ((v63 * 10) >> 64 == (10 * v63) >> 63)
  {
    v40 = v55;
    v41 = v38;
    *&v38[*(v54 + 36)] = (10 * v63);
    v42 = *(v40 + 16);
    v43 = v52;
    v44 = v53;
    v45 = v56;
    v42(v53, v52, v56);
    v46 = v38;
    v47 = v58;
    sub_1000035B4(v46, v58, &qword_10012EC20, &qword_1000EB050);
    v48 = v57;
    v42(v57, v44, v45);
    v49 = sub_100002B38(&qword_10012ED70, &qword_1000EB120);
    sub_1000035B4(v47, &v48[*(v49 + 48)], &qword_10012EC20, &qword_1000EB050);
    sub_100005688(v41, &qword_10012EC20, &qword_1000EB050);
    v50 = *(v40 + 8);
    v50(v43, v45);
    sub_100005688(v47, &qword_10012EC20, &qword_1000EB050);
    return (v50)(v44, v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004F520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v203 = a2;
  v178 = a5;
  v195 = sub_100002B38(&qword_10012ECE0, &qword_1000EB0D8);
  v194 = *(v195 - 8);
  v8 = *(v194 + 64);
  __chkstk_darwin(v195);
  v193 = &v153 - v9;
  v10 = type metadata accessor for OverlayStack(0);
  v196 = *(v10 - 8);
  v11 = *(v196 + 64);
  __chkstk_darwin(v10);
  v12 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for OverlayNavigationStackItem(0);
  v18 = *(*(v191 - 8) + 64);
  __chkstk_darwin(v191);
  v20 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_100002B38(&qword_10012ED80, &qword_1000EB130);
  v183 = *(v187 - 8);
  v21 = *(v183 + 64);
  __chkstk_darwin(v187);
  v192 = &v153 - v22;
  v182 = sub_100002B38(&qword_10012ECD8, &qword_1000EB0D0);
  v23 = *(*(v182 - 8) + 64);
  __chkstk_darwin(v182);
  v185 = &v153 - v24;
  v186 = sub_100002B38(&qword_10012ECC0, &qword_1000EB0C8);
  v25 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v184 = &v153 - v26;
  v165 = sub_100002B38(&qword_10012ED88, &qword_1000EB138);
  v164 = *(v165 - 8);
  v27 = *(v164 + 64);
  __chkstk_darwin(v165);
  v188 = &v153 - v28;
  v161 = sub_100002B38(&qword_10012ECB8, &qword_1000EB0C0);
  v29 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v163 = &v153 - v30;
  v162 = sub_100002B38(&qword_10012ECA8, &qword_1000EB0B8);
  v31 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v189 = &v153 - v32;
  v166 = sub_100002B38(&qword_10012EC98, &qword_1000EB0B0);
  v33 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v190 = &v153 - v34;
  v167 = sub_100002B38(&qword_10012EC88, &qword_1000EB0A8);
  v35 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167);
  v170 = &v153 - v36;
  v168 = sub_100002B38(&qword_10012EC78, &qword_1000EB0A0);
  v37 = *(*(v168 - 8) + 64);
  __chkstk_darwin(v168);
  v169 = &v153 - v38;
  v172 = sub_100002B38(&qword_10012EC60, &qword_1000EB098);
  v39 = *(*(v172 - 8) + 64);
  __chkstk_darwin(v172);
  v173 = &v153 - v40;
  v175 = sub_100002B38(&qword_10012ED90, &qword_1000EB140);
  v174 = *(v175 - 8);
  v41 = *(v174 + 64);
  __chkstk_darwin(v175);
  v171 = &v153 - v42;
  v176 = sub_100002B38(&qword_10012EC50, &qword_1000EB090);
  v43 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v177 = &v153 - v44;
  v45 = sub_100002B38(&qword_10012ED98, &qword_1000EB148);
  v46 = *(*(v45 - 8) + 64);
  result = __chkstk_darwin(v45);
  v50 = &v153 - v49;
  v204 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v153 = v50;
  v154 = v48;
  v155 = result;
  v202 = v14;
  v51 = *(v14 + 16);
  v181 = v17;
  v52 = v13;
  v51(v17, v203, v13);
  v53 = a4 + *(v10 + 28);
  v54 = *v53;
  v55 = *(v53 + 8);
  v56 = *(v53 + 16);
  v200 = v54;
  v207 = v54;
  v160 = v55;
  LOBYTE(v208) = v55;
  v201 = v56;
  v209 = v56;
  v199 = sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  State.wrappedValue.getter();
  if (v206)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = v205;
  }

  v158 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v11;
  v198 = a3;
  if (a1)
  {
    sub_100068240(a4, &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverlayStack);
    v58 = (*(v196 + 80) + 16) & ~*(v196 + 80);
    v59 = swift_allocObject();
    sub_10006B690(v12, v59 + v58, type metadata accessor for OverlayStack);
    v180 = sub_100069B44;
  }

  else
  {
    v180 = 0;
    v59 = 0;
  }

  v179 = a1 == 1;
  LODWORD(v203) = a1 == 0;
  v159 = a1;
  v60 = v204 == a1;
  v61 = v10;
  v62 = *(a4 + *(v10 + 20));
  v156 = v61;
  v63 = a4 + *(v61 + 36);
  LOBYTE(v61) = *v63;
  v64 = *(v63 + 8);
  LOBYTE(v205) = v61;
  v206 = v64;

  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.projectedValue.getter();
  v65 = v207;
  v66 = v208;
  v197 = a4;
  v67 = v209;
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;

  v210.origin.x = v69;
  v210.origin.y = v71;
  v210.size.width = v73;
  v210.size.height = v75;
  Width = CGRectGetWidth(v210);
  static ZoomCoordinator.overlayContentWidth.getter();
  v78 = fmax(Width / v77, 0.25);
  (*(v202 + 32))(v20, v181, v52);
  v79 = v191;
  v80 = *(v191 + 20);
  LODWORD(v202) = v60;
  v20[v80] = v60;
  v20[v79[6]] = v179;
  *&v20[v79[7]] = v57;
  v81 = &v20[v79[8]];
  *v81 = v180;
  v81[1] = v59;
  *&v20[v79[9]] = v62;
  v82 = &v20[v79[10]];
  *v82 = v65;
  *(v82 + 1) = v66;
  v82[16] = v67;
  v83 = &v20[v79[11]];
  v205 = 0.0;
  State.init(wrappedValue:)();
  v84 = v208;
  *v83 = v207;
  v83[1] = v84;
  v85 = &v20[v79[12]];
  v205 = v78;
  State.init(wrappedValue:)();
  v86 = v208;
  *v85 = v207;
  v85[1] = v86;
  v87 = &v20[v79[13]];
  v205 = 0.0;
  State.init(wrappedValue:)();
  v88 = v208;
  *v87 = v207;
  v87[1] = v88;
  v89 = sub_100069844();
  v90 = v193;
  v91 = static ViewInputPredicate.! prefix(_:)();
  __chkstk_darwin(v91);
  sub_100002B38(&qword_10012ECE8, &qword_1000EB0E0);
  sub_10006778C(&qword_10012ECF0, type metadata accessor for OverlayNavigationStackItem);
  v207 = &type metadata for GameOverlayOnPhonePredicate;
  v208 = v89;
  swift_getOpaqueTypeConformance2();
  v92 = sub_100005144(&qword_10012ED00, &qword_1000EB0E8);
  v93 = sub_100069898();
  v207 = v92;
  v208 = v93;
  swift_getOpaqueTypeConformance2();
  v94 = v192;
  v95 = v195;
  View.staticIf<A, B>(_:then:)();
  (*(v194 + 8))(v90, v95);
  result = sub_100069B78(v20, type metadata accessor for OverlayNavigationStackItem);
  if (__OFSUB__(v198, 2))
  {
    goto LABEL_33;
  }

  v96 = v159;
  v97 = v204 == v159;
  if (v198 - 2 <= v159)
  {
    v98 = 1.0;
  }

  else
  {
    v98 = 0.0;
  }

  v99 = v185;
  (*(v183 + 32))(v185, v94, v187);
  *(v99 + *(v182 + 36)) = v98;
  v100 = static Alignment.leading.getter();
  v102 = v101;
  v103 = v184;
  v104 = &v184[*(v186 + 36)];
  v105 = v197;
  sub_100050A68(v97, v96 == 0, v197, v104);
  v106 = (v104 + *(sub_100002B38(&qword_10012ED18, &unk_1000EB0F0) + 36));
  *v106 = v100;
  v106[1] = v102;
  sub_100014830(v99, v103, &qword_10012ECD8, &qword_1000EB0D0);
  sub_1000695B8();
  v107 = v188;
  View.tapToDismiss(enabled:)();
  result = sub_100005688(v103, &qword_10012ECC0, &qword_1000EB0C8);
  v108 = v105;
  if (!v96)
  {
    v112 = 1000.0;
    v109 = v190;
    v110 = v189;
    v111 = v160;
    goto LABEL_16;
  }

  v109 = v190;
  v110 = v189;
  v111 = v160;
  if ((v96 * 10) >> 64 != (10 * v96) >> 63)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v112 = (10 * v96);
LABEL_16:
  v113 = v163;
  (*(v164 + 32))(v163, v107, v165);
  *(v113 + *(v161 + 36)) = v112;
  v114 = sub_10004E4A8();
  v207 = v200;
  LOBYTE(v208) = v111;
  v209 = v201;
  State.wrappedValue.getter();
  v115 = v205;
  v116 = v206;
  sub_100014830(v113, v110, &qword_10012ECB8, &qword_1000EB0C0);
  v119 = v110 + *(v162 + 36);
  *v119 = v202;
  *(v119 + 1) = v203;
  *(v119 + 2) = v114 & 1;
  *(v119 + 8) = v115;
  *(v119 + 16) = v116;
  v120 = v198;
  if (v96 == 1)
  {
    v121 = &type metadata for ChildZoomTransition;
    v122 = sub_100069EEC;
  }

  else
  {
    v121 = &type metadata for ChildSlideTransition;
    v122 = sub_100069F40;
  }

  v123 = sub_100051324(v122, v121, v117, v118);
  v124 = v166;
  v125 = v204;
  sub_100014830(v110, v109, &qword_10012ECA8, &qword_1000EB0B8);
  *(v109 + *(v124 + 36)) = v123;
  v126 = 0.0;
  if (v120 >= 3)
  {
    if (v125 == v96)
    {
      v207 = v200;
      LOBYTE(v208) = v111;
      v209 = v201;
      State.wrappedValue.getter();
      if (v206)
      {
        v126 = 0.0;
      }

      else
      {
        v126 = v205;
      }
    }

    else
    {
      v126 = sub_10005140C();
    }
  }

  v127 = v109;
  v128 = v170;
  sub_100014830(v127, v170, &qword_10012EC98, &qword_1000EB0B0);
  *(v128 + *(v167 + 36)) = v126;
  v129 = v200;
  v130 = v201;
  v207 = v200;
  LOBYTE(v208) = v111;
  v209 = v201;
  State.wrappedValue.getter();
  v207 = v129;
  if (v125 == v96)
  {
    v131 = (v120 == 2) & ~v206;
  }

  else
  {
    v131 = 0;
  }

  LOBYTE(v208) = v111;
  v209 = v130;
  State.wrappedValue.getter();
  if (v206)
  {
    v132 = 0.0;
  }

  else
  {
    v132 = v205;
  }

  v133 = v169;
  sub_100014830(v128, v169, &qword_10012EC88, &qword_1000EB0A8);
  v134 = v133 + *(v168 + 36);
  *v134 = v131;
  *(v134 + 8) = v132;
  KeyPath = swift_getKeyPath();
  v136 = v173;
  sub_100014830(v133, v173, &qword_10012EC78, &qword_1000EB0A0);
  v137 = v136 + *(v172 + 36);
  *v137 = KeyPath;
  *(v137 + 8) = v203;
  v138 = (v108 + *(v156 + 40));
  v140 = *v138;
  v139 = v138[1];
  v207 = v140;
  v208 = v139;
  sub_100002B38(&qword_10012EDA0, &qword_1000EB180);
  State.wrappedValue.getter();
  type metadata accessor for AppFocusState();
  sub_100069184();
  sub_10006778C(&qword_10012ED50, &type metadata accessor for AppFocusState);
  v141 = v171;
  View.environment<A>(_:)();

  sub_100005688(v136, &qword_10012EC60, &qword_1000EB098);
  v142 = swift_getKeyPath();
  v143 = v177;
  (*(v174 + 32))(v177, v141, v175);
  v144 = v143 + *(v176 + 36);
  *v144 = v142;
  *(v144 + 8) = v202;
  v145 = *(_NavigationStackStyleConfiguration.items.getter() + 16);

  v207 = v145;
  v146 = v158;
  sub_100068240(v108, v158, type metadata accessor for OverlayStack);
  v147 = *(v196 + 80);
  v148 = swift_allocObject();
  sub_10006B690(v146, v148 + ((v147 + 16) & ~v147), type metadata accessor for OverlayStack);
  sub_100069040();
  v149 = v153;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v143, &qword_10012EC50, &qword_1000EB090);
  sub_100068240(v197, v146, type metadata accessor for OverlayStack);
  v150 = swift_allocObject();
  *(v150 + 16) = v202;
  sub_10006B690(v146, v150 + ((v147 + 17) & ~v147), type metadata accessor for OverlayStack);
  v151 = v178;
  (*(v154 + 32))(v178, v149, v155);
  result = sub_100002B38(&qword_10012EC38, &qword_1000EB088);
  v152 = (v151 + *(result + 36));
  *v152 = sub_100069E88;
  v152[1] = v150;
  v152[2] = 0;
  v152[3] = 0;
  return result;
}

uint64_t sub_100050920(uint64_t a1)
{
  v2 = sub_100002B38(&qword_10012ED00, &qword_1000EB0E8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = static Edge.Set.top.getter();
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.iPadTopPadding.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_100068240(a1, v5, type metadata accessor for OverlayNavigationStackItem);
  v15 = &v5[*(v2 + 36)];
  *v15 = v6;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  sub_100069898();
  View.scrollClipDisabled(_:)();
  return sub_100005688(v5, &qword_10012ED00, &qword_1000EB0E8);
}

uint64_t sub_100050A68@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v29 = a1;
  v5 = sub_100002B38(&qword_10012EDB8, &qword_1000EB1B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-v8];
  v10 = sub_100002B38(&qword_10012EDC0, &qword_1000EB1C0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v28[-v13];
  v15 = sub_100002B38(&qword_10012EDC8, &qword_1000EB1C8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v28[-v17];
  v19 = static Color.clear.getter();
  v20 = v14 + *(sub_100002B38(&qword_10012EDD0, &qword_1000EB1D0) + 36);
  v21 = &v20[*(sub_100002B38(&qword_10012EDD8, &qword_1000EB1D8) + 40)];
  static ContentShapeKinds.interaction.getter();
  *v20 = 0;
  *v14 = v19;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v22 = (v14 + *(sub_100002B38(&qword_10012EDE0, &qword_1000EB1E0) + 36));
  v23 = v33;
  *v22 = v32;
  v22[1] = v23;
  v22[2] = v34;
  v24 = static SafeAreaRegions.all.getter();
  v25 = static Edge.Set.all.getter();
  v26 = v14 + *(v11 + 44);
  *v26 = v24;
  v26[8] = v25;
  LOBYTE(v20) = v29 & (a2 ^ 1);
  sub_100014830(v14, v18, &qword_10012EDC0, &qword_1000EB1C0);
  v18[*(v15 + 36)] = v20;
  sub_100050D64(v9);
  static GestureMask.all.getter();
  sub_100069F94();
  sub_1000057D8(&qword_10012EE10, &qword_10012EDB8, &qword_1000EB1B8);
  View.gesture<A>(_:including:)();
  (*(v6 + 8))(v9, v5);
  return sub_100005688(v18, &qword_10012EDC8, &qword_1000EB1C8);
}

uint64_t sub_100050D64@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for OverlayStack(0);
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  __chkstk_darwin(v2 - 8);
  v44 = v4;
  v45 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LayoutDirection();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for _EventDirections();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v37 = type metadata accessor for LocalCoordinateSpace();
  v15 = *(*(v37 - 1) + 64);
  __chkstk_darwin(v37);
  v16 = type metadata accessor for DragGesture();
  v39 = *(v16 - 8);
  v40 = v16;
  v17 = *(v39 + 64);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100002B38(&qword_10012EE18, &qword_1000EB1E8);
  v42 = *(v20 - 8);
  v43 = v20;
  v21 = *(v42 + 64);
  __chkstk_darwin(v20);
  v38 = &v35 - v22;
  static CoordinateSpaceProtocol<>.local.getter();
  v23 = v1;
  sub_10004E600(v12);
  (*(v6 + 104))(v10, enum case for LayoutDirection.rightToLeft(_:), v5);
  v24 = static LayoutDirection.== infix(_:_:)();
  v25 = *(v6 + 8);
  v25(v10, v5);
  v25(v12, v5);
  if (v24)
  {
    static _EventDirections.right.getter();
  }

  else
  {
    static _EventDirections.left.getter();
  }

  DragGesture.init<A>(minimumDistance:coordinateSpace:allowedDirections:)();
  v36 = v23;
  v37 = type metadata accessor for OverlayStack;
  v26 = v23;
  v27 = v45;
  sub_100068240(v26, v45, type metadata accessor for OverlayStack);
  v28 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v29 = swift_allocObject();
  sub_10006B690(v27, v29 + v28, type metadata accessor for OverlayStack);
  sub_10006778C(&qword_10012EE20, &type metadata accessor for DragGesture);
  sub_10006778C(&qword_10012EE28, &type metadata accessor for DragGesture.Value);
  v30 = v38;
  v31 = v40;
  Gesture<>.onChanged(_:)();

  (*(v39 + 8))(v19, v31);
  sub_100068240(v36, v27, v37);
  v32 = swift_allocObject();
  sub_10006B690(v27, v32 + v28, type metadata accessor for OverlayStack);
  sub_1000057D8(&qword_10012EE30, &qword_10012EE18, &qword_1000EB1E8);
  v33 = v43;
  Gesture.onEnded(_:)();

  return (*(v42 + 8))(v30, v33);
}

uint64_t sub_100051324(void (*a1)(void, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1(a1, a2, a3, a4);
  static AnyTransition.modifier<A>(active:identity:)();
  static AnyTransition.modifier<A>(active:identity:)();
  static AnyTransition.asymmetric(insertion:removal:)();

  static Animation.easeOut(duration:)();
  v4 = AnyTransition.animation(_:)();

  return v4;
}

double sub_10005140C()
{
  v1 = (v0 + *(type metadata accessor for OverlayStack(0) + 28));
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  State.wrappedValue.getter();
  v5 = 0.0;
  if (v13 != 1 || v12 <= 1)
  {
    State.wrappedValue.getter();
    if (v13 != 1 || v12 != 1)
    {
      type metadata accessor for ZoomCoordinator();
      static ZoomCoordinator.overlayContentWidth.getter();
      v8 = v7 * 0.3;
      State.wrappedValue.getter();
      if (v13)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = *&v12;
      }

      static ZoomCoordinator.overlayContentWidth.getter();
      return v8 * (v9 / v10) - v8;
    }
  }

  return v5;
}

void *sub_10005154C(void *result, void *a2, uint64_t a3)
{
  if (*result >= *a2)
  {
    if (*a2 >= *result)
    {
      return result;
    }

    v4 = (a3 + *(type metadata accessor for OverlayStack(0) + 40));
    v6 = *v4;
    v8 = v4[1];
    sub_100002B38(&qword_10012EDA0, &qword_1000EB180);
    State.wrappedValue.getter();
    dispatch thunk of AppFocusState.popFocus()();
  }

  else
  {
    v3 = (a3 + *(type metadata accessor for OverlayStack(0) + 40));
    v5 = *v3;
    v7 = v3[1];
    sub_100002B38(&qword_10012EDA0, &qword_1000EB180);
    State.wrappedValue.getter();
    dispatch thunk of AppFocusState.pushFocus()();
  }
}

uint64_t sub_100051618(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = (a2 + *(type metadata accessor for OverlayStack(0) + 28));
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = v2[2];
    sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000516A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v4 = *(a1 + 96);
  v12 = *(a1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(a1 + 112);
  v5 = v14;
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a2 = v11[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  *(a2 + 112) = v5;
  *(a2 + 120) = xmmword_1000EAC30;
  return sub_100069B0C(v11, v10);
}

uint64_t sub_100051720(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for OverlayStack(0);
  v5 = (a2 + *(v4 + 36));
  v9 = *v5;
  v11 = *(v5 + 1);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  result = State.wrappedValue.getter();
  if (v8 == 1)
  {
    v7 = (a2 + *(v4 + 32));
    v10 = *v7;
    v12 = v7[1];
    sub_100002B38(&qword_10012EC18, &qword_1000EB048);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000517F0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for OverlayStack(0) + 36));
  v6 = *v3;
  v7 = *(v3 + 1);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  result = State.wrappedValue.getter();
  if (v5 == 1)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.presentingOverlay.setter();
  }

  return result;
}

uint64_t sub_10005188C(uint64_t a1)
{
  v69 = a1;
  v1 = sub_100002B38(&qword_10012EBF0, &unk_1000EB020);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v60 - v4;
  v6 = sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v66 = &v60 - v9;
  v10 = sub_100002B38(&qword_10012EC00, &qword_1000EB030);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v60 - v12;
  v14 = type metadata accessor for CompoundAction();
  v65 = *(v14 - 8);
  v15 = *(v65 + 64);
  __chkstk_darwin(v14);
  v64 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  v17 = dispatch thunk of ZoomCoordinator.actions.getter();

  v18 = *(v17 + 16);
  v68 = v5;
  v67 = v7;
  if (v18)
  {
    sub_10002E8A8(v17 + 32, v74);
  }

  else
  {

    v75 = 0;
    memset(v74, 0, sizeof(v74));
  }

  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.actions.setter();

  v19 = type metadata accessor for OverlayStack(0);
  v20 = (v69 + *(v19 + 36));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v73[0]) = v21;
  v73[1] = v22;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v71 != 1)
  {
    goto LABEL_39;
  }

  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.sourceID.getter();

  if (v73[3])
  {
    sub_100005688(v73, &qword_10012EBA0, &qword_1000EAFF8);
    sub_1000035B4(v74, &v71, &qword_10012EC08, &qword_1000EB038);
    if (v72)
    {
      v62 = v2;
      sub_10003FB38(&v71, v73);
      sub_10002E8A8(v73, &v71);
      sub_100002B38(&qword_10012EC10, &qword_1000EB040);
      v23 = type metadata accessor for FlowAction();
      v24 = swift_dynamicCast();
      v63 = v23;
      if (v24)
      {
        v25 = FlowAction.presentation.getter();
        v27 = v26;
        if (v25 == static FlowActionPresentation.sheetPresent.getter() && v27 == v28)
        {
          goto LABEL_10;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
          goto LABEL_14;
        }

        v33 = FlowAction.presentation.getter();
        v35 = v34;
        if (v33 == static FlowActionPresentation.sheetPopover.getter() && v35 == v36)
        {
LABEL_10:

LABEL_14:
          static FlowActionPresentation.stackPush.getter();
          FlowAction.presentation.setter();

LABEL_38:
          v55 = v62;
          v56 = *(v69 + *(v19 + 20));
          v57 = v66;
          BaseObjectGraph.inject<A>(_:)();
          v58 = v68;
          (*(v55 + 104))(v68, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v1);
          ActionDispatcher.perform(_:withMetrics:asPartOf:)();

          (*(v55 + 8))(v58, v1);
          (*(v67 + 8))(v57, v6);
          sub_10002E6CC(v73);
LABEL_39:
          v29 = &qword_10012EC08;
          v30 = &qword_1000EB038;
          v31 = v74;
          return sub_100005688(v31, v29, v30);
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v37)
        {
          goto LABEL_14;
        }
      }

      sub_10002E8A8(v73, &v71);
      v38 = swift_dynamicCast();
      v39 = *(v65 + 56);
      if ((v38 & 1) == 0)
      {
        v39(v13, 1, 1, v14);
        sub_100005688(v13, &qword_10012EC00, &qword_1000EB030);
        goto LABEL_38;
      }

      v61 = v1;
      v40 = v65;
      v39(v13, 0, 1, v14);
      (*(v40 + 32))(v64, v13, v14);
      v41 = CompoundAction.subactions.getter();
      v42 = *(v41 + 16);
      if (!v42)
      {
LABEL_37:

        (*(v65 + 8))(v64, v14);
        v1 = v61;
        goto LABEL_38;
      }

      v60 = v41;
      v43 = v41 + 32;
      while (1)
      {
        sub_10002E8A8(v43, &v71);
        sub_10002E8A8(&v71, v70);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_10002E6CC(&v71);
LABEL_23:
        v43 += 40;
        if (!--v42)
        {
          goto LABEL_37;
        }
      }

      v44 = FlowAction.presentation.getter();
      v46 = v45;
      if (v44 != static FlowActionPresentation.sheetPresent.getter() || v46 != v47)
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v49)
        {
LABEL_33:
          static FlowActionPresentation.stackPush.getter();
          FlowAction.presentation.setter();

          sub_10002E6CC(&v71);
          goto LABEL_23;
        }

        v50 = FlowAction.presentation.getter();
        v52 = v51;
        if (v50 != static FlowActionPresentation.sheetPopover.getter() || v52 != v53)
        {
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v54 & 1) == 0)
          {
            sub_10002E6CC(&v71);

            goto LABEL_23;
          }

          goto LABEL_33;
        }
      }

      goto LABEL_33;
    }

    sub_100005688(v74, &qword_10012EC08, &qword_1000EB038);
    v31 = &v71;
    v29 = &qword_10012EC08;
    v30 = &qword_1000EB038;
  }

  else
  {
    sub_100005688(v74, &qword_10012EC08, &qword_1000EB038);
    v29 = &qword_10012EBA0;
    v30 = &qword_1000EAFF8;
    v31 = v73;
  }

  return sub_100005688(v31, v29, v30);
}

uint64_t sub_1000520C4(uint64_t a1)
{
  v2 = type metadata accessor for OverlayStack(0);
  v3 = (a1 + *(v2 + 24));
  v11 = *v3;
  v14 = *(v3 + 2);
  sub_100002B38(&qword_10012EBE8, &unk_1000EB010);
  State.wrappedValue.getter();
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  v4 = dispatch thunk of ZoomCoordinator.activeTabIdentifier.getter();
  v6 = v5;

  if (v9 != v4 || v10 != v6)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v7 = (a1 + *(v2 + 36));
  v12 = *v7;
  v13 = *(v7 + 1);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  return State.wrappedValue.setter();
}

void sub_100052200()
{
  v0 = type metadata accessor for TransientToolbarItem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(_NavigationStackStyleConfiguration.items.getter() + 16);

  _NavigationStackStyleConfiguration.pop()();
  if (v5 == 2)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    dispatch thunk of ZoomCoordinator.sourceID.setter();

    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.presentingOverlay.setter();

    static ZoomCoordinator.shared.getter();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    v6 = enum case for TransientToolbarItem.title(_:);
    v7 = *(v1 + 104);
    v7(v4, enum case for TransientToolbarItem.title(_:), v0);
    dispatch thunk of ZoomCoordinator.principalNavBarItem.setter();

    static ZoomCoordinator.shared.getter();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    v7(v4, v6, v0);
    dispatch thunk of ZoomCoordinator.topTrailingTransientNavBarItem.setter();

    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.topTrailingNavBarItems.setter();
  }
}

uint64_t sub_1000523C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LayoutDirection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  DragGesture.Value.translation.getter();
  v12 = v11;
  sub_10004E600(v10);
  (*(v4 + 104))(v8, enum case for LayoutDirection.rightToLeft(_:), v3);
  v13 = static LayoutDirection.== infix(_:_:)();
  v14 = *(v4 + 8);
  v14(v8, v3);
  v14(v10, v3);
  if (v13)
  {
    v12 = -v12;
  }

  v15 = (a2 + *(type metadata accessor for OverlayStack(0) + 28));
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = v15[2];
  v22 = v16;
  v23 = v17;
  v24 = v18;
  *&v20[1] = v12;
  v21 = 0;
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  return State.wrappedValue.setter();
}

uint64_t sub_100052580()
{
  v0 = type metadata accessor for LayoutDirection();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  DragGesture.Value.predictedEndTranslation.getter();
  v9 = v8;
  sub_10004E600(v7);
  (*(v1 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v0);
  v10 = static LayoutDirection.== infix(_:_:)();
  v11 = *(v1 + 8);
  v11(v5, v0);
  v11(v7, v0);
  v12 = -v9;
  if ((v10 & 1) == 0)
  {
    v12 = v9;
  }

  return sub_1000526EC(v12);
}

uint64_t sub_1000526EC(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for OverlayStack(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for AnimationCompletionCriteria();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  if (v13 * 0.25 <= a1)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100011F80(v21, qword_100135C88);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "handleInteractiveDismiss - completing interactive dismiss: popping the stack", v24, 2u);
    }

    static Animation.easeIn(duration:)();
    v25 = static AnimationCompletionCriteria.logicallyComplete.getter();
    __chkstk_darwin(v25);
    *&v29[-16] = v2;
    sub_100068240(v2, &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for OverlayStack);
    v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v27 = swift_allocObject();
    sub_10006B690(v7, v27 + v26, type metadata accessor for OverlayStack);
  }

  else
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100011F80(v14, qword_100135C88);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "handleInteractiveDismiss - canceling interactive dismiss", v17, 2u);
    }

    static Animation.easeOut(duration:)();
    v18 = static AnimationCompletionCriteria.logicallyComplete.getter();
    __chkstk_darwin(v18);
    *&v29[-16] = v2;
    sub_100068240(v2, &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for OverlayStack);
    v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v20 = swift_allocObject();
    sub_10006B690(v7, v20 + v19, type metadata accessor for OverlayStack);
  }

  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100052B98(uint64_t a1)
{
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  v2 = (a1 + *(type metadata accessor for OverlayStack(0) + 28));
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v2[2];
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  return State.wrappedValue.setter();
}

void sub_100052C40(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for OverlayStack(0) + 28));
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  State.wrappedValue.setter();
  sub_100052200();
}

uint64_t sub_100052CC8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for OverlayStack(0) + 28));
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  return State.wrappedValue.setter();
}

uint64_t sub_100052D50(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for OverlayStack(0) + 28));
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  return State.wrappedValue.setter();
}

uint64_t sub_100052DD8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_100002B38(&qword_10012EF28, &qword_1000EB8F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v16 - v6);
  v8 = sub_100002B38(&qword_10012EF30, &qword_1000EB8F8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v16 - v12;
  if (a1)
  {
    v16[3] = v16;
    v14 = __chkstk_darwin(v11);
    v16[2] = &v16[-6];
    __chkstk_darwin(v14);
    sub_100002B38(&qword_10012EF48, &qword_1000EB900);
    sub_100002B38(&qword_10012EF90, &qword_1000EB920);
    sub_100069844();
    sub_10006AC70();
    v16[1] = a2;
    sub_10006AF60();
    StaticIf<>.init(_:then:else:)();
    (*(v9 + 16))(v7, v13, v8);
    swift_storeEnumTagMultiPayload();
    sub_10006ABD0();
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    *v7 = static Color.clear.getter();
    swift_storeEnumTagMultiPayload();
    sub_10006ABD0();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000530D8@<X0>(unsigned int a1@<W0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v50 = a4;
  v48 = (a1 >> 8) & 1;
  v49 = a3;
  v46 = type metadata accessor for Material._GlassVariant();
  v44 = *(v46 - 8);
  v4 = *(v44 + 64);
  __chkstk_darwin(v46);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Material();
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v43);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for _Glass();
  v42 = *(v45 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v45);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002B38(&qword_10012EF68, &qword_1000EB910);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  v19 = sub_100002B38(&qword_10012EF58, &qword_1000EB908);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = &v41 - v22;
  static Color.black.getter();
  v24 = Color.opacity(_:)();

  v51 = v24;
  static Material._GlassVariant.controlCenter.getter();
  static Material._glass(_:)();
  (*(v44 + 8))(v6, v46);
  static _Glass.explicit(_:)();
  (*(v7 + 8))(v10, v43);
  sub_10006AF0C();
  View._glassEffect<A>(_:in:)();
  (*(v42 + 8))(v13, v45);

  static UnitPoint.center.getter();
  v26 = v25;
  v28 = v27;
  v29 = &v18[*(sub_100002B38(&qword_10012EF78, &qword_1000EB918) + 36)];
  *v29 = vdupq_n_s64(0x3FF051EB851EB852uLL);
  v29[1].i64[0] = v26;
  v29[1].i64[1] = v28;
  v30 = static SafeAreaRegions.all.getter();
  v31 = static Edge.Set.all.getter();
  v32 = &v18[*(v15 + 44)];
  *v32 = v30;
  v32[8] = v31;
  if (v49)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v47;
  }

  v34 = v48 & ~v49;
  sub_100014830(v18, v23, &qword_10012EF68, &qword_1000EB910);
  v35 = &v23[*(v20 + 44)];
  *v35 = v34;
  *(v35 + 1) = v33;
  v38 = sub_100051324(sub_100069EEC, &type metadata for ChildZoomTransition, v36, v37);
  v39 = v50;
  sub_100014830(v23, v50, &qword_10012EF58, &qword_1000EB908);
  result = sub_100002B38(&qword_10012EF48, &qword_1000EB900);
  *(v39 + *(result + 36)) = v38;
  return result;
}

uint64_t sub_100053508@<X0>(unsigned int a1@<W0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v72 = a2;
  v75 = a4;
  v73 = (a1 >> 8) & 1;
  v74 = a3;
  v4 = type metadata accessor for RoundedRectangle();
  v57 = v4;
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v71 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Material._GlassVariant();
  v65 = *(v68 - 8);
  v7 = *(v65 + 64);
  __chkstk_darwin(v68);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Material();
  v62 = *(v64 - 8);
  v9 = *(v62 + 64);
  __chkstk_darwin(v64);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _Glass();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  __chkstk_darwin(v12);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002B38(&qword_10012EFB8, &qword_1000EB938);
  v58 = v15;
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v56 - v17);
  v19 = sub_100002B38(&qword_10012EFB0, &qword_1000EB930);
  v20 = *(v19 - 8);
  v67 = v19 - 8;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19 - 8);
  v60 = &v56 - v22;
  v23 = sub_100002B38(&qword_10012EFA0, &qword_1000EB928);
  v24 = *(v23 - 8);
  v66 = v23 - 8;
  v25 = *(v24 + 64);
  __chkstk_darwin(v23 - 8);
  v63 = &v56 - v26;
  static Color.black.getter();
  v27 = Color.opacity(_:)();

  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.cornerRadius.getter();
  v29 = v28;
  v30 = v18 + *(v15 + 36);
  v31 = *(v4 + 20);
  v32 = enum case for RoundedCornerStyle.continuous(_:);
  v33 = type metadata accessor for RoundedCornerStyle();
  v34 = *(*(v33 - 8) + 104);
  v34(&v30[v31], v32, v33);
  *v30 = v29;
  *(v30 + 1) = v29;
  *v18 = v27;
  v35 = v61;
  static Material._GlassVariant.controlCenter.getter();
  static Material._glass(_:)();
  (*(v65 + 8))(v35, v68);
  v36 = v59;
  static _Glass.explicit(_:)();
  (*(v62 + 8))(v11, v64);
  static ZoomCoordinator.cornerRadius.getter();
  v38 = v37;
  v39 = v71;
  v34(&v71[*(v57 + 20)], v32, v33);
  *v39 = v38;
  v39[1] = v38;
  sub_10006B1BC();
  sub_10006778C(&qword_10012EFD8, &type metadata accessor for RoundedRectangle);
  v40 = v60;
  View._glassEffect<A>(_:in:)();
  sub_100069B78(v39, &type metadata accessor for RoundedRectangle);
  (*(v69 + 8))(v36, v70);
  sub_100005688(v18, &qword_10012EFB8, &qword_1000EB938);
  LOBYTE(v33) = static Edge.Set.top.getter();
  static ZoomCoordinator.iPadTopPadding.getter();
  EdgeInsets.init(_all:)();
  v41 = v40 + *(v67 + 44);
  *v41 = v33;
  *(v41 + 8) = v42;
  *(v41 + 16) = v43;
  *(v41 + 24) = v44;
  *(v41 + 32) = v45;
  *(v41 + 40) = 0;
  if (v74)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = v72;
  }

  v47 = v73 & ~v74;
  v48 = v63;
  sub_100014830(v40, v63, &qword_10012EFB0, &qword_1000EB930);
  v49 = v48 + *(v66 + 44);
  *v49 = v47;
  *(v49 + 8) = v46;
  v52 = sub_100051324(sub_100069EEC, &type metadata for ChildZoomTransition, v50, v51);
  v53 = v48;
  v54 = v75;
  sub_100014830(v53, v75, &qword_10012EFA0, &qword_1000EB928);
  result = sub_100002B38(&qword_10012EF90, &qword_1000EB920);
  *(v54 + *(result + 36)) = v52;
  return result;
}

uint64_t sub_100053ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = static Alignment.center.getter();
  v11 = v10;
  v12 = a2 + *(sub_100002B38(&qword_10012EF10, &qword_1000EB8D8) + 36);
  sub_100052DD8(v5, v12);
  v13 = (v12 + *(sub_100002B38(&qword_10012EF18, &qword_1000EB8E0) + 36));
  *v13 = v9;
  v13[1] = v11;
  v14 = sub_100002B38(&qword_10012EF20, &qword_1000EB8E8);
  v15 = *(*(v14 - 8) + 16);

  return v15(a2, a1, v14);
}

BOOL sub_100053BF4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      v6 = *a1;
      return v2 == *a2;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v5 = *&v3 == 0;
  }

  else
  {
    if (*&v2 != 1)
    {
      if (*&v3 > 1uLL)
      {
        v9 = *(a2 + 8);
      }

      else
      {
        v9 = 0;
      }

      return v9 == 1;
    }

    v5 = *&v3 == 1;
  }

  if (v5)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
  }

  return (v8 & 1) != 0;
}

CGFloat sub_100053C68@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformTranslate(&v7, &v8, v3, 0.0);
  result = v7.a;
  v5 = *&v7.c;
  v6 = *&v7.tx;
  *a1 = *&v7.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = v6;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

double sub_100053CD8@<D0>(double *a1@<X8>)
{
  v5 = *v1;
  sub_10006CE68();
  sub_10006A9F8();
  Animatable<>.animatableData.getter();
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_100053D40(uint64_t *a1)
{
  v2 = *a1;
  sub_10006CE68();
  sub_10006A9F8();
  return Animatable<>.animatableData.setter();
}

void (*sub_100053D90(void *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v3[1] = *v1;
  v3[3] = sub_10006CE68();
  v4[4] = sub_10006A9F8();
  Animatable<>.animatableData.getter();
  return sub_100053E38;
}

void sub_100053E38(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[4];
  v4 = (*a1)[2];
  (*a1)[1] = **a1;
  Animatable<>.animatableData.setter();

  free(v1);
}

uint64_t sub_100053E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10006DAAC();

  return static GeometryEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_100053F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10006DAAC();

  return static GeometryEffect._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_100053FF4@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v6 = sub_100002B38(&qword_10012F3B8, &qword_1000EBC58);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v91 - v8;
  v10 = sub_100002B38(&qword_10012F3C0, &qword_1000EBC60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v91 - v12;
  v14 = sub_100002B38(&qword_10012F3C8, &qword_1000EBC68);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v91 - v19;
  if (a1)
  {
    v91[1] = a2;
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.cornerRadius.getter();
    v22 = v21;
    v23 = *(type metadata accessor for RoundedRectangle() + 20);
    v24 = enum case for RoundedCornerStyle.continuous(_:);
    v25 = type metadata accessor for RoundedCornerStyle();
    (*(*(v25 - 8) + 104))(&v13[v23], v24, v25);
    *v13 = v22;
    *(v13 + 1) = v22;
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v95.origin.x = v27;
    v95.origin.y = v29;
    v95.size.width = v31;
    v95.size.height = v33;
    CGRectGetWidth(v95);
    static ZoomCoordinator.overlayContentWidth.getter();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v96.origin.x = v35;
    v96.origin.y = v37;
    v96.size.width = v39;
    v96.size.height = v41;
    CGRectGetWidth(v96);
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v97.origin.x = v43;
    v97.origin.y = v45;
    v97.size.width = v47;
    v97.size.height = v49;
    CGRectGetHeight(v97);
    static ZoomCoordinator.containerSize.getter();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v98.origin.x = v51;
    v98.origin.y = v53;
    v98.size.width = v55;
    v98.size.height = v57;
    CGRectGetHeight(v98);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v58 = &v13[*(sub_100002B38(&qword_10012F3F0, &qword_1000EBC78) + 36)];
    v59 = v93;
    *v58 = v92;
    *(v58 + 1) = v59;
    *(v58 + 2) = v94;
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;

    v99.origin.x = v61;
    v99.origin.y = v63;
    v99.size.width = v65;
    v99.size.height = v67;
    v68 = 1.0 - a3;
    v69 = (1.0 - a3) * CGRectGetMinX(v99);
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;

    v100.origin.x = v71;
    v100.origin.y = v73;
    v100.size.width = v75;
    v100.size.height = v77;
    MinY = CGRectGetMinY(v100);
    v79 = &v13[*(v10 + 36)];
    *v79 = v69;
    v79[1] = v68 * MinY;
    v80 = static Edge.Set.all.getter();
    v81 = [objc_opt_self() currentDevice];
    v82 = [v81 userInterfaceIdiom];

    if (v82)
    {
      v80 = Edge.Set.init(rawValue:)();
    }

    v83 = static SafeAreaRegions.all.getter();
    sub_100014830(v13, v18, &qword_10012F3C0, &qword_1000EBC60);
    v84 = &v18[*(v14 + 36)];
    *v84 = v83;
    v84[8] = v80;
    sub_100014830(v18, v20, &qword_10012F3C8, &qword_1000EBC68);
    sub_1000035B4(v20, v9, &qword_10012F3C8, &qword_1000EBC68);
    swift_storeEnumTagMultiPayload();
    sub_100002B38(&qword_10012F3D0, &qword_1000EBC70);
    sub_10006CEC4();
    sub_10006D098(&qword_10012F400, &qword_10012F3D0, &qword_1000EBC70);
    _ConditionalContent<>.init(storage:)();
    return sub_100005688(v20, &qword_10012F3C8, &qword_1000EBC68);
  }

  else
  {
    v86 = static Color.black.getter();
    v87 = static Edge.Set.all.getter();
    v88 = [objc_opt_self() currentDevice];
    v89 = [v88 userInterfaceIdiom];

    if (v89)
    {
      v87 = Edge.Set.init(rawValue:)();
    }

    v90 = static SafeAreaRegions.all.getter();
    *v9 = v86;
    *(v9 + 1) = v90;
    v9[16] = v87;
    swift_storeEnumTagMultiPayload();
    sub_100002B38(&qword_10012F3D0, &qword_1000EBC70);
    sub_10006CEC4();
    sub_10006D098(&qword_10012F400, &qword_10012F3D0, &qword_1000EBC70);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100054620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006D108();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_1000546A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006D108();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_100054728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  v8 = fmin(1.0 - v6 / (v7 + -10.0), 1.0);
  if (v8 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = static Alignment.topLeading.getter();
  v12 = v11;
  v13 = (a2 + *(sub_100002B38(&qword_10012F3A0, &qword_1000EBC40) + 36));
  v14 = sub_100002B38(&qword_10012F3A8, &qword_1000EBC48);
  sub_100053FF4(v5, v13 + *(v14 + 36), v9);
  *v13 = v10;
  v13[1] = v12;
  v15 = sub_100002B38(&qword_10012F3B0, &qword_1000EBC50);
  v16 = *(*(v15 - 8) + 16);

  return v16(a2, a1, v15);
}

double sub_10005484C@<D0>(double *a1@<X8>)
{
  v5 = *(v1 + 8);
  sub_10006CE68();
  sub_10006A9F8();
  Animatable<>.animatableData.getter();
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1000548B4(uint64_t *a1)
{
  v2 = *a1;
  sub_10006CE68();
  sub_10006A9F8();
  return Animatable<>.animatableData.setter();
}

void (*sub_100054908(void *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v3[1] = *(v1 + 8);
  v3[3] = sub_10006CE68();
  v4[4] = sub_10006A9F8();
  Animatable<>.animatableData.getter();
  return sub_1000549B0;
}

void sub_1000549B0(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[4];
  v4 = (*a1)[2];
  (*a1)[1] = **a1;
  Animatable<>.animatableData.setter();

  free(v1);
}

uint64_t sub_100054A0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v206 = a1;
  v3 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  v174 = *(v3 - 8);
  v175 = v3;
  v4 = *(v174 + 64);
  __chkstk_darwin(v3);
  v173 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_100002B38(&qword_10012EFE0, &qword_1000EB948);
  v6 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v178 = &v172 - v7;
  v177 = sub_100002B38(&qword_10012EFE8, &qword_1000EB950);
  v8 = *(*(v177 - 8) + 64);
  __chkstk_darwin(v177);
  v179 = &v172 - v9;
  v180 = sub_100002B38(&qword_10012EFF0, &qword_1000EB958);
  v10 = *(*(v180 - 8) + 64);
  __chkstk_darwin(v180);
  v12 = (&v172 - v11);
  v13 = sub_100002B38(&qword_10012EFF8, &qword_1000EB960);
  v181 = *(v13 - 8);
  v14 = *(v181 + 64);
  __chkstk_darwin(v13);
  v16 = &v172 - v15;
  v208 = sub_100002B38(&qword_10012F000, &qword_1000EB968);
  v17 = *(*(v208 - 8) + 64);
  __chkstk_darwin(v208);
  v19 = &v172 - v18;
  v204 = sub_100002B38(&qword_10012F008, &qword_1000EB970);
  v182 = *(v204 - 8);
  v20 = *(v182 + 8);
  __chkstk_darwin(v204);
  v22 = &v172 - v21;
  v205 = sub_100002B38(&qword_10012F010, &qword_1000EB978);
  v183 = *(v205 - 8);
  v23 = *(v183 + 64);
  __chkstk_darwin(v205);
  v25 = &v172 - v24;
  v202 = sub_100002B38(&qword_10012F018, &qword_1000EB980);
  v26 = *(*(v202 - 8) + 64);
  __chkstk_darwin(v202);
  v203 = &v172 - v27;
  v28 = sub_100002B38(&qword_10012ECE0, &qword_1000EB0D8);
  v195 = *(v28 - 8);
  v196 = v28;
  v29 = *(v195 + 8);
  __chkstk_darwin(v28);
  v194 = &v172 - v30;
  v31 = type metadata accessor for OverlayNavigationStackItem(0);
  v199 = *(v31 - 1);
  v32 = *(v199 + 8);
  __chkstk_darwin(v31);
  v207 = v33;
  v34 = &v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_100002B38(&qword_10012F020, &qword_1000EB988);
  v188 = *(v191 - 8);
  v35 = *(v188 + 64);
  __chkstk_darwin(v191);
  v184 = &v172 - v36;
  v37 = sub_100002B38(&qword_10012F028, &qword_1000EB990);
  v192 = *(v37 - 1);
  v193 = v37;
  v38 = *(v192 + 64);
  __chkstk_darwin(v37);
  v189 = &v172 - v39;
  v186 = sub_100002B38(&qword_10012F030, &qword_1000EB998);
  v40 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v187 = &v172 - v41;
  v185 = sub_100002B38(&qword_10012F038, &qword_1000EB9A0);
  v42 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185);
  v190 = &v172 - v43;
  v209 = sub_100002B38(&qword_10012F040, &qword_1000EB9A8);
  v44 = *(*(v209 - 8) + 64);
  __chkstk_darwin(v209);
  v197 = &v172 - v45;
  v201 = sub_100002B38(&qword_10012F048, &qword_1000EB9B0);
  v46 = *(*(v201 - 8) + 64);
  __chkstk_darwin(v201);
  v49 = &v172 - v48;
  v50 = (v2 + v31[8]);
  v51 = *v50;
  v200 = v34;
  v210 = v2;
  if (v51)
  {
    v198 = v51;
    v182 = v49;
    v183 = v47;
    v52 = *(v2 + v31[6]);
    v181 = v50[1];
    if (v52 == 1 && *(v2 + v31[5]) == 1)
    {
      v53 = *(v2 + v31[7]);
      type metadata accessor for ZoomCoordinator();

      static ZoomCoordinator.overlayContentWidth.getter();
      v55 = 1.0 - v53 / v54;
    }

    else
    {

      v55 = 1.0;
    }

    v56 = (v2 + v31[11]);
    v57 = *v56;
    v58 = v56[1];
    *&v221 = v57;
    *(&v221 + 1) = v58;
    sub_100002B38(&qword_10012DD98, &qword_1000EA650);
    State.wrappedValue.getter();
    if (*&v211 >= v55)
    {
      v59 = v55;
    }

    else
    {
      v59 = *&v211;
    }

    v60 = type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v233.origin.x = v62;
    v233.origin.y = v64;
    v233.size.width = v66;
    v233.size.height = v68;
    Width = CGRectGetWidth(v233);
    static ZoomCoordinator.overlayContentWidth.getter();
    v71 = v70;
    v72 = *(v2 + v31[7]);
    v179 = v60;
    static ZoomCoordinator.overlayContentWidth.getter();
    v74 = v73;
    v75 = (v2 + v31[12]);
    v76 = *v75;
    v77 = v75[1];
    *&v221 = v76;
    *(&v221 + 1) = v77;
    State.wrappedValue.getter();
    v78 = 1.0;
    LODWORD(v180) = v52;
    if (v52 && *(v2 + v31[5]) == 1)
    {
      v78 = 1.0 - v72 * (1.0 - fmax(Width / v71, 0.25)) / v74;
    }

    if (v78 >= *&v211)
    {
      v79 = *&v211;
    }

    else
    {
      v79 = v78;
    }

    sub_100068240(v2, v34, type metadata accessor for OverlayNavigationStackItem);
    v80 = (*(v199 + 80) + 16) & ~*(v199 + 80);
    v199 = *(v199 + 80);
    v178 = (v80 + v207);
    v81 = swift_allocObject();
    v207 = v80;
    sub_10006B690(v34, v81 + v80, type metadata accessor for OverlayNavigationStackItem);
    v82 = 1;
    if (*(v2 + v31[5]) == 1)
    {
      v83 = v2 + v31[10];
      v84 = *v83;
      v85 = *(v83 + 8);
      LOBYTE(v83) = *(v83 + 16);
      *&v221 = v84;
      *(&v221 + 1) = v85;
      LOBYTE(v222) = v83;
      sub_100002B38(&qword_10012F160, &qword_1000EBA58);
      Binding.wrappedValue.getter();
      v82 = v211 ^ 1;
    }

    KeyPath = swift_getKeyPath();
    v87 = swift_allocObject();
    *(v87 + 16) = v82 & 1;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v211 = sub_10006C238;
    *(&v211 + 1) = v81;
    *&v212 = KeyPath;
    *(&v212 + 1) = sub_100070378;
    *&v213 = v87;
    static HorizontalAlignment.leading.getter();
    v88 = sub_100002B38(&qword_10012F108, &qword_1000EBA28);
    v89 = sub_100002B38(&qword_10012F0B0, &qword_1000EBA10);
    v90 = sub_10006BE68();
    v91 = sub_10006D098(&qword_10012F0A8, &qword_10012F0B0, &qword_1000EBA10);
    v92 = v184;
    View.topToolbarSafeAreaInset<A>(alignment:spacing:content:)();
    v227 = v217;
    v228 = v218;
    v229 = v219;
    v230 = v220;
    v223 = v213;
    v224 = v214;
    v225 = v215;
    v226 = v216;
    v221 = v211;
    v222 = v212;
    sub_100005688(&v221, &qword_10012F108, &qword_1000EBA28);
    v93 = sub_100069844();
    v94 = v194;
    static ViewInputPredicate.! prefix(_:)();
    sub_100002B38(&qword_10012F100, &qword_1000EBA20);
    *&v211 = v88;
    *(&v211 + 1) = v89;
    *&v212 = v90;
    *(&v212 + 1) = v91;
    swift_getOpaqueTypeConformance2();
    *&v211 = &type metadata for GameOverlayOnPhonePredicate;
    *(&v211 + 1) = v93;
    swift_getOpaqueTypeConformance2();
    sub_10006C064();
    v95 = v189;
    v96 = v191;
    v97 = v196;
    View.staticIf<A, B>(_:then:)();
    (*(v195 + 1))(v94, v97);
    (*(v188 + 8))(v92, v96);
    v98 = v200;
    sub_100068240(v210, v200, type metadata accessor for OverlayNavigationStackItem);
    v99 = v178;
    v100 = swift_allocObject();
    v101 = v207;
    sub_10006B690(v98, v100 + v207, type metadata accessor for OverlayNavigationStackItem);
    v102 = v187;
    (*(v192 + 32))(v187, v95, v193);
    v103 = &v102[*(v186 + 36)];
    *v103 = sub_10006C2B8;
    v103[1] = v100;
    v103[2] = 0;
    v103[3] = 0;
    v104 = v102;
    v105 = v190;
    sub_100014830(v104, v190, &qword_10012F030, &qword_1000EB998);
    v106 = v180 == 0;
    if (v180)
    {
      v107 = v59;
    }

    else
    {
      v107 = 1.0;
    }

    *(v105 + *(v185 + 36)) = v107;
    if (v106)
    {
      v108 = 1.0;
    }

    else
    {
      v108 = v79;
    }

    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.currentAnchor.getter();
    v110 = v109;
    v112 = v111;

    v113 = v197;
    sub_100014830(v105, v197, &qword_10012F038, &qword_1000EB9A0);
    v114 = v113 + *(v209 + 36);
    *v114 = v108;
    *(v114 + 8) = v108;
    *(v114 + 16) = v110;
    *(v114 + 24) = v112;
    if (qword_10012CBB8 != -1)
    {
      swift_once();
    }

    v115 = qword_100135BC0;
    swift_getKeyPath();
    *&v211 = v115;
    sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v116 = *(v115 + 24);
    *&v211 = *(v115 + 16);
    *(&v211 + 1) = v116;
    sub_100068240(v210, v98, type metadata accessor for OverlayNavigationStackItem);
    v117 = swift_allocObject();
    sub_10006B690(v98, v117 + v101, type metadata accessor for OverlayNavigationStackItem);
    v118 = (v117 + ((v99 + 7) & 0xFFFFFFFFFFFFFFF8));
    v119 = v198;
    v120 = v181;
    *v118 = v198;
    v118[1] = v120;
    sub_10000519C(v119);
    v121 = sub_10006BB74();

    v122 = v182;
    v123 = v209;
    View.onChange<A>(of:initial:_:)();

    sub_100005688(v113, &qword_10012F040, &qword_1000EB9A8);
    v124 = v183;
    v125 = v201;
    (*(v183 + 16))(v203, v122, v201);
    swift_storeEnumTagMultiPayload();
    *&v211 = v123;
    *(&v211 + 1) = &type metadata for String;
    *&v212 = v121;
    *(&v212 + 1) = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    v126 = sub_10006B93C();
    v127 = sub_10006BAF4();
    *&v211 = v208;
    *(&v211 + 1) = &type metadata for CGFloat;
    *&v212 = v126;
    *(&v212 + 1) = v127;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v211 = v204;
    *(&v211 + 1) = &type metadata for String;
    *&v212 = OpaqueTypeConformance2;
    *(&v212 + 1) = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_10006C574(v198);
    return (*(v124 + 8))(v122, v125);
  }

  else
  {
    v193 = v12;
    v194 = v13;
    v197 = v25;
    v198 = v16;
    v195 = v19;
    v196 = v22;
    v130 = v174;
    v131 = v173;
    v132 = v175;
    (*(v174 + 16))();
    v133 = 1;
    if (*(v2 + v31[5]) == 1)
    {
      v134 = v2 + v31[10];
      v135 = *v134;
      v136 = *(v134 + 8);
      LOBYTE(v134) = *(v134 + 16);
      *&v221 = v135;
      *(&v221 + 1) = v136;
      LOBYTE(v222) = v134;
      sub_100002B38(&qword_10012F160, &qword_1000EBA58);
      Binding.wrappedValue.getter();
      v133 = v211 ^ 1;
    }

    v137 = swift_getKeyPath();
    v138 = swift_allocObject();
    *(v138 + 16) = v133 & 1;
    v139 = v178;
    (*(v130 + 32))(v178, v131, v132);
    v140 = (v139 + *(v176 + 36));
    *v140 = v137;
    v140[1] = sub_10006B2F0;
    v140[2] = v138;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v141 = v179;
    sub_100014830(v139, v179, &qword_10012EFE0, &qword_1000EB948);
    v142 = (v141 + *(v177 + 36));
    v143 = v226;
    v142[4] = v225;
    v142[5] = v143;
    v142[6] = v227;
    v144 = v222;
    *v142 = v221;
    v142[1] = v144;
    v145 = v224;
    v142[2] = v223;
    v142[3] = v145;
    v146 = v193;
    sub_100014830(v141, v193, &qword_10012EFE8, &qword_1000EB950);
    Solarium.init()();
    sub_100002B38(&qword_10012F050, &qword_1000EB9E8);
    sub_100002B38(&qword_10012F058, &qword_1000EB9F0);
    v147 = sub_10006B2F8();
    v148 = sub_100005144(&qword_10012F090, &qword_1000EBA00);
    v149 = sub_100005144(&qword_10012F098, &qword_1000EBA08);
    v150 = sub_10006B4F8();
    *&v211 = v149;
    *(&v211 + 1) = v150;
    v151 = swift_getOpaqueTypeConformance2();
    *&v211 = v180;
    *(&v211 + 1) = v148;
    *&v212 = v147;
    *(&v212 + 1) = v151;
    swift_getOpaqueTypeConformance2();
    sub_10006B5D0();
    View.staticIf<A, B, C>(_:then:else:)();
    sub_100005688(v146, &qword_10012EFF0, &qword_1000EB958);
    v152 = v210;
    v153 = v200;
    v193 = type metadata accessor for OverlayNavigationStackItem;
    sub_100068240(v210, v200, type metadata accessor for OverlayNavigationStackItem);
    v154 = (*(v199 + 80) + 16) & ~*(v199 + 80);
    v192 = *(v199 + 80);
    v155 = swift_allocObject();
    v199 = type metadata accessor for OverlayNavigationStackItem;
    sub_10006B690(v153, v155 + v154, type metadata accessor for OverlayNavigationStackItem);
    v156 = v195;
    (*(v181 + 32))(v195, v198, v194);
    v157 = (v156 + *(v208 + 36));
    *v157 = sub_10006B6F8;
    v157[1] = v155;
    v157[2] = 0;
    v157[3] = 0;
    sub_100068240(v152, v153, type metadata accessor for OverlayNavigationStackItem);
    v158 = swift_allocObject();
    sub_10006B690(v153, v158 + v154, type metadata accessor for OverlayNavigationStackItem);
    v159 = sub_10006B93C();
    v198 = sub_10006BAF4();
    v160 = v196;
    v161 = v208;
    View.onScrollGeometryChange<A>(for:of:action:)();

    sub_100005688(v156, &qword_10012F000, &qword_1000EB968);
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    v162 = dispatch thunk of ZoomCoordinator.navigationCancelCommandNotificationId.getter();
    v164 = v163;

    v231 = v162;
    v232 = v164;
    sub_100068240(v210, v153, v193);
    v165 = swift_allocObject();
    sub_10006B690(v153, v165 + v154, v199);
    *&v211 = v161;
    *(&v211 + 1) = &type metadata for CGFloat;
    *&v212 = v159;
    *(&v212 + 1) = v198;
    v166 = swift_getOpaqueTypeConformance2();
    v167 = v197;
    v168 = v204;
    View.onChange<A>(of:initial:_:)();

    (*(v182 + 1))(v160, v168);
    v169 = v183;
    v170 = v205;
    (*(v183 + 16))(v203, v167, v205);
    swift_storeEnumTagMultiPayload();
    v171 = sub_10006BB74();
    *&v211 = v209;
    *(&v211 + 1) = &type metadata for String;
    *&v212 = v171;
    *(&v212 + 1) = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    *&v211 = v168;
    *(&v211 + 1) = &type metadata for String;
    *&v212 = v166;
    *(&v212 + 1) = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v169 + 8))(v167, v170);
  }
}

uint64_t sub_1000561BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScrollViewProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  type metadata accessor for ZoomCoordinator.ScrollGeometry();
  type metadata accessor for _NavigationStackStyleConfiguration.Item();
  sub_10006778C(&qword_10012F078, &type metadata accessor for _NavigationStackStyleConfiguration.Item);
  sub_10006778C(&qword_10012F168, &type metadata accessor for ZoomCoordinator.ScrollGeometry);
  View.onScrollGeometryChange<A>(for:of:action:)();
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = sub_100002B38(&qword_10012F170, &qword_1000EBA70);
  v10 = (a2 + *(result + 36));
  *v10 = sub_10006C7F8;
  v10[1] = v8;
  return result;
}

uint64_t sub_1000563E4()
{
  ScrollGeometry.contentOffset.getter();
  v1 = v0;
  ScrollGeometry.contentInsets.getter();
  v3 = v2;
  v4 = ScrollGeometry.contentSize.getter();
  v5.n128_u64[0] = v7.n128_u64[0];
  v6.n128_u64[0] = v1;
  v7.n128_u64[0] = v3;

  return ZoomCoordinator.ScrollGeometry.init(contentOffsetY:contentInsetTop:contentHeight:)(v4, v6, v7, v5);
}

uint64_t sub_100056444(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ZoomCoordinator.ScrollGeometry();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  (*(v4 + 16))(v7, a2, v3);
  dispatch thunk of ZoomCoordinator.scrollGeometry.setter();
}

_BYTE *sub_100056530(_BYTE *result)
{
  if (*result == 1)
  {
    v1 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v1);
    withAnimation<A>(_:_:)();
  }

  return result;
}

double sub_1000565F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolbarProxy_V1();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v15 + v14, v7, v4);
  sub_100014BBC(0, 0, v11, &unk_1000EBA68, v15);

  v16 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = v22;
  v18 = v23;
  v19 = v24;
  v20 = v25;
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  result = *&v26;
  *(a2 + 40) = v26;
  return result;
}

uint64_t sub_100056838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000568D0, v6, v5);
}

uint64_t sub_1000568D0()
{
  v1 = v0[3];

  if (qword_10012CBB8 != -1)
  {
    swift_once();
  }

  sub_100066F50(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100056970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.cornerRadius.getter();
  v5 = v4;
  v6 = (a2 + *(sub_100002B38(&qword_10012F158, &unk_1000EBA48) + 36));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  *&v6[*(sub_100002B38(&qword_10012CDE0, &qword_1000E90D0) + 36)] = 256;
  v10 = sub_100002B38(&qword_10012F020, &qword_1000EB988);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  LOBYTE(v8) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = sub_100002B38(&qword_10012F100, &qword_1000EBA20);
  v20 = a2 + *(result + 36);
  *v20 = v8;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_100056AF0()
{
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100056B68(uint64_t a1)
{
  v2 = type metadata accessor for OverlayNavigationStackItem(0);
  v3 = (a1 + *(v2 + 44));
  v6 = *v3;
  v8 = v3[1];
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  State.wrappedValue.setter();
  v4 = (a1 + *(v2 + 48));
  v7 = *v4;
  v9 = v4[1];
  return State.wrappedValue.setter();
}

uint64_t sub_100056C28(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for OverlayNavigationStackItem(0);
  if (*(a3 + *(result + 20)) == 1)
  {
    v8 = a2[1];
    if ((v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : *a2 & 0xFFFFFFFFFFFFLL)
    {
      if (*(a3 + *(result + 24)) == 1)
      {
        v10 = static Animation.easeIn(duration:)();
        __chkstk_darwin(v10);
        withAnimation<A>(_:_:)();
      }

      return a4(result);
    }
  }

  return result;
}

uint64_t sub_100056D20(uint64_t a1)
{
  v2 = type metadata accessor for OverlayNavigationStackItem(0);
  v3 = (a1 + *(v2 + 44));
  v14 = *v3;
  v16 = v3[1];
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  State.wrappedValue.setter();
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  CGRectGetWidth(v18);
  static ZoomCoordinator.overlayContentWidth.getter();
  v12 = (a1 + *(v2 + 48));
  v17 = v12[1];
  v15 = *v12;
  return State.wrappedValue.setter();
}

uint64_t sub_100056E48()
{
  static HorizontalAlignment.center.getter();
  sub_100002B38(&qword_10012EFF0, &qword_1000EB958);
  sub_100002B38(&qword_10012F090, &qword_1000EBA00);
  sub_10006B2F8();
  sub_100005144(&qword_10012F098, &qword_1000EBA08);
  sub_10006B4F8();
  swift_getOpaqueTypeConformance2();
  return View.safeAreaBar<A>(edge:alignment:spacing:content:)();
}

uint64_t sub_100056F48()
{
  v0 = type metadata accessor for BarMagicPocketStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = v5;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  static Color.black.getter();
  v6 = Color.opacity(_:)();

  sub_10005713C(v6, v8);

  static BarMagicPocketStyle.automatic.getter();
  sub_100002B38(&qword_10012F098, &qword_1000EBA08);
  sub_10006B4F8();
  View.scrollPocketTag_v1(style:)();
  (*(v1 + 8))(v4, v0);
  v21[6] = v8[6];
  v21[7] = v8[7];
  v22 = v9;
  v21[2] = v8[2];
  v21[3] = v8[3];
  v21[4] = v8[4];
  v21[5] = v8[5];
  v21[0] = v8[0];
  v21[1] = v8[1];
  return sub_100005688(v21, &qword_10012F098, &qword_1000EBA08);
}

uint64_t sub_10005713C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v5 = v31;
  v6 = v31 * 0.5;
  v7 = v32;
  v8 = DWORD1(v32);
  v9 = *(&v32 + 1);
  v10 = v33;

  v11 = static Alignment.center.getter();
  *v34 = v31 * 0.5;
  *(v34 + 1) = v31;
  v34[1] = v32;
  *v35 = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  v29 = v32;
  *v30 = v33;
  *&v30[10] = *&v35[10];
  v28 = v34[0];
  v12 = *v30;
  v13 = *&v30[16];
  v38 = *v30;
  v39 = *&v30[16];
  v36 = v34[0];
  v37 = v32;
  *&v40 = v11;
  *(&v40 + 1) = v14;
  v15 = *v2;
  v16 = *(v2 + 32);
  *(a2 + 16) = *(v2 + 16);
  *(a2 + 32) = v16;
  *a2 = v15;
  v17 = v37;
  *(a2 + 56) = v36;
  v18 = v39;
  *(a2 + 120) = v40;
  v19 = v38;
  *(a2 + 104) = v18;
  *(a2 + 48) = *(v2 + 48);
  *(a2 + 88) = v19;
  *(a2 + 72) = v17;
  v41[2] = v12;
  v41[3] = v13;
  v41[0] = v28;
  v41[1] = v29;
  v42 = v11;
  v43 = v14;
  sub_1000035B4(v34, v21, &qword_10012F178, &qword_1000EBA88);
  sub_1000035B4(v2, v21, &qword_10012F0B0, &qword_1000EBA10);
  sub_1000035B4(&v36, v21, &qword_10012F0C0, &qword_1000EBA18);
  sub_100005688(v41, &qword_10012F0C0, &qword_1000EBA18);
  *v21 = v6;
  *&v21[1] = v5;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = a1;
  v27 = 256;
  return sub_100005688(v21, &qword_10012F178, &qword_1000EBA88);
}

uint64_t sub_100057314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v4 = a2 + *(sub_100002B38(&qword_10012F058, &qword_1000EB9F0) + 36);
  SafeAreaPaddingModifier.init(edges:insets:)();
  return sub_1000035B4(a1, a2, &qword_10012EFF0, &qword_1000EB958);
}

uint64_t sub_1000573AC(uint64_t a1)
{
  v2 = type metadata accessor for OverlayNavigationStackItem(0);
  v3 = (a1 + *(v2 + 40));
  v7 = *v3;
  v9 = v3[1];
  v11 = *(v3 + 16);
  sub_100002B38(&qword_10012F160, &qword_1000EBA58);
  result = Binding.wrappedValue.getter();
  if (v6 == 1)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    v5 = (a1 + *(v2 + 52));
    v8 = *v5;
    v10 = v5[1];
    sub_100002B38(&qword_10012EC18, &qword_1000EB048);
    State.wrappedValue.getter();
    dispatch thunk of ZoomCoordinator.visibleRootContentHeight.setter();
  }

  return result;
}

double sub_10005748C@<D0>(double *a1@<X8>)
{
  ScrollGeometry.contentSize.getter();
  v3 = v2;
  ScrollGeometry.contentOffset.getter();
  v5 = v3 - v4;
  ScrollGeometry.contentInsets.getter();
  result = v5 + v6 + -70.0;
  *a1 = result;
  return result;
}

uint64_t sub_1000574E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = type metadata accessor for OverlayNavigationStackItem(0);
  v6 = (a3 + *(v5 + 52));
  v9 = *v6;
  v11 = v6[1];
  sub_100002B38(&qword_10012EC18, &qword_1000EB048);
  State.wrappedValue.setter();
  v7 = (a3 + *(v5 + 40));
  v10 = *v7;
  v12 = v7[1];
  v13 = *(v7 + 16);
  sub_100002B38(&qword_10012F160, &qword_1000EBA58);
  result = Binding.wrappedValue.getter();
  if (v4 == 1)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.visibleRootContentHeight.setter();
  }

  return result;
}

uint64_t sub_1000575D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15[-v6];
  result = type metadata accessor for OverlayNavigationStackItem(0);
  if (*(a3 + *(result + 20)) == 1)
  {
    v9 = (a3 + *(result + 40));
    v10 = *v9;
    v11 = v9[1];
    LOBYTE(v9) = *(v9 + 16);
    v16 = v10;
    v17 = v11;
    v18 = v9;
    sub_100002B38(&qword_10012F160, &qword_1000EBA58);
    result = Binding.wrappedValue.getter();
    if (v15[7] == 1)
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
      type metadata accessor for MainActor();
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = &protocol witness table for MainActor;
      sub_100014BBC(0, 0, v7, &unk_1000EBA80, v14);
    }
  }

  return result;
}

uint64_t sub_100057744()
{
  v1 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100057834, v5, v4);
}

uint64_t sub_100057834()
{
  v1 = v0[5];

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Dismissing dashboard overlay due to controller back button press.", v5, 2u);
  }

  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  (*(v7 + 104))(v6, enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:), v8);
  dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000579AC@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v69 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  v2 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v70 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OverlayNavigationBar(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v59 = type metadata accessor for ZoomCoordinator.ScrollGeometry();
  v60 = *(v59 - 8);
  v7 = *(v60 + 64);
  __chkstk_darwin(v59);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002B38(&qword_10012F700, &qword_1000EBEF8);
  v56 = v10;
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v54 - v12;
  v62 = sub_100002B38(&qword_10012F708, &qword_1000EBF00);
  v64 = *(v62 - 8);
  v14 = *(v64 + 64);
  __chkstk_darwin(v62);
  v73 = &v54 - v15;
  v63 = sub_100002B38(&qword_10012F710, &qword_1000EBF08);
  v65 = *(v63 - 8);
  v16 = *(v65 + 64);
  __chkstk_darwin(v63);
  v58 = &v54 - v17;
  v18 = sub_100002B38(&qword_10012F718, &qword_1000EBF10);
  v66 = *(v18 - 8);
  v67 = v18;
  v19 = *(v66 + 64);
  __chkstk_darwin(v18);
  v61 = &v54 - v20;
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  v21 = &v13[*(sub_100002B38(&qword_10012F720, &qword_1000EBF18) + 44)];
  v75 = v1;
  sub_100058390(v1, v21);
  v22 = &v13[*(sub_100002B38(&qword_10012F728, &qword_1000EBF20) + 36)];
  static ShapeStyle<>.componentForeground.getter();
  v23 = *(v10 + 36);
  *&v13[v23] = swift_getKeyPath();
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  swift_storeEnumTagMultiPayload();
  v57 = type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.scrollGeometry.getter();

  v72 = type metadata accessor for OverlayNavigationBar;
  v24 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068240(v1, v24, type metadata accessor for OverlayNavigationBar);
  v25 = *(v5 + 80);
  v26 = ((v25 + 16) & ~v25);
  v74 = v6;
  v27 = swift_allocObject();
  v71 = type metadata accessor for OverlayNavigationBar;
  sub_10006B690(v24, v26 + v27, type metadata accessor for OverlayNavigationBar);
  v55 = sub_10006E974();
  v54 = sub_10006778C(&qword_10012F168, &type metadata accessor for ZoomCoordinator.ScrollGeometry);
  v28 = v9;
  v29 = v56;
  v30 = v59;
  View.onChange<A>(of:initial:_:)();

  (*(v60 + 8))(v28, v30);
  sub_100005688(v13, &qword_10012F700, &qword_1000EBEF8);
  v31 = v75;
  LOBYTE(v76) = sub_10005ADB4(&dispatch thunk of ZoomCoordinator.principalNavBarItem.getter);
  sub_100068240(v31, v24, v72);
  v32 = swift_allocObject();
  sub_10006B690(v24, v26 + v32, v71);
  v78 = v29;
  v79 = v30;
  v80 = v55;
  v81 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v58;
  v35 = v62;
  v36 = v73;
  View.onChange<A>(of:initial:_:)();

  (*(v64 + 8))(v36, v35);
  static ZoomCoordinator.shared.getter();
  v37 = dispatch thunk of ZoomCoordinator.navigationCancelCommandNotificationId.getter();
  v39 = v38;

  v76 = v37;
  v77 = v39;
  sub_100068240(v75, v24, v72);
  v64 = v25;
  v40 = swift_allocObject();
  v72 = v26;
  v73 = v24;
  v41 = v61;
  sub_10006B690(v24, v26 + v40, v71);
  v78 = v35;
  v79 = &type metadata for Bool;
  v80 = OpaqueTypeConformance2;
  v42 = v63;
  v81 = &protocol witness table for Bool;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v41;
  View.onChange<A>(of:initial:_:)();

  (*(v65 + 8))(v34, v42);
  if (qword_10012CBB8 != -1)
  {
    swift_once();
  }

  v45 = qword_100135BC0;
  swift_getKeyPath();
  v78 = v45;
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer;
  swift_beginAccess();
  v47 = v45 + v46;
  v48 = v70;
  sub_100068240(v47, v70, type metadata accessor for NavigationPopEventCoordinator.Container);
  v49 = v73;
  sub_100068240(v75, v73, type metadata accessor for OverlayNavigationBar);
  v50 = v72;
  v51 = swift_allocObject();
  sub_10006B690(v49, v50 + v51, type metadata accessor for OverlayNavigationBar);
  v78 = v42;
  v79 = &type metadata for String;
  v80 = v43;
  v81 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  sub_10006778C(&qword_10012F768, type metadata accessor for NavigationPopEventCoordinator.Container);
  v52 = v67;
  View.onChange<A>(of:initial:_:)();

  sub_100069B78(v48, type metadata accessor for NavigationPopEventCoordinator.Container);
  return (*(v66 + 8))(v44, v52);
}

uint64_t sub_100058390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_100002B38(&qword_10012F788, &qword_1000EBF98);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v69 = &v66 - v5;
  v70 = type metadata accessor for Font.TextStyle();
  v68 = *(v70 - 8);
  v6 = *(v68 + 64);
  __chkstk_darwin(v70);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012F790, &qword_1000EBFA0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v66 - v11;
  v13 = sub_100002B38(&qword_10012F798, &qword_1000EBFA8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v66 - v16;
  v18 = sub_100002B38(&qword_10012F7A0, &qword_1000EBFB0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18);
  v71 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = (&v66 - v23);
  *v24 = static Alignment.center.getter();
  v24[1] = v25;
  v26 = sub_100002B38(&qword_10012F7A8, &qword_1000EBFB8);
  sub_100058A64(a1, v24 + *(v26 + 44));
  v27 = static Alignment.top.getter();
  v76 = v28;
  v82 = static Color.clear.getter();
  v29 = 1.0;
  View.magicPocketBackdrop(backDropHeight:cornerRadius:opacity:)();

  *&v12[*(v9 + 44)] = xmmword_1000EAC40;
  if (*(a1 + 1))
  {
    v29 = 0.0;
  }

  v30 = v24 + *(v19 + 44);
  sub_100014830(v12, v17, &qword_10012F790, &qword_1000EBFA0);
  *&v17[*(v14 + 44)] = v29;
  sub_100014830(v17, v30, &qword_10012F798, &qword_1000EBFA8);
  v31 = (v30 + *(sub_100002B38(&qword_10012F7B0, &qword_1000EBFC0) + 36));
  v32 = v76;
  *v31 = v27;
  v31[1] = v32;
  v33 = a1 + *(type metadata accessor for OverlayNavigationBar(0) + 68);
  v34 = *v33;
  v35 = *(v33 + 8);
  LOBYTE(v82) = v34;
  v83 = v35;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  v36 = 0;
  v74 = 0;
  v73 = 0;
  v76 = 0;
  KeyPath = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v75 = 0;
  if (v77 == 1)
  {
    sub_10005B220(a1, &v82);
    v41 = v82;
    v74 = v83;
    v73 = v84;
    v76 = v85;
    v75 = v86;
    v42 = v68;
    v43 = v67;
    v44 = v70;
    (*(v68 + 104))(v67, enum case for Font.TextStyle.largeTitle(_:), v70);
    v45 = type metadata accessor for Font.Design();
    v46 = v69;
    (*(*(v45 - 8) + 56))(v69, 1, 1, v45);
    static Font.Weight.bold.getter();
    v38 = static Font.system(_:design:weight:)();
    v47 = v46;
    v36 = v41;
    sub_100005688(v47, &qword_10012F788, &qword_1000EBF98);
    (*(v42 + 8))(v43, v44);
    KeyPath = swift_getKeyPath();
    v48 = *(a1 + 64);
    LOBYTE(v82) = *(a1 + 56);
    v83 = v48;
    State.wrappedValue.getter();
    v49 = v77;
    v50 = *(a1 + 112);
    v82 = *(a1 + 104);
    v83 = v50;
    sub_100002B38(&qword_10012EC18, &qword_1000EB048);
    State.wrappedValue.getter();
    v40 = v77;
    if (v49)
    {
      v39 = 0;
    }

    else
    {
      v39 = 0x3FF0000000000000;
    }
  }

  v70 = KeyPath;
  v51 = v71;
  v52 = v39;
  sub_1000035B4(v24, v71, &qword_10012F7A0, &qword_1000EBFB0);
  v53 = v72;
  sub_1000035B4(v51, v72, &qword_10012F7A0, &qword_1000EBFB0);
  v54 = (v53 + *(sub_100002B38(&qword_10012F7B8, &qword_1000EBFC8) + 48));
  *&v77 = v36;
  v55 = v74;
  v56 = v73;
  *(&v77 + 1) = v74;
  *&v78 = v73;
  v57 = v76;
  v58 = v75;
  *(&v78 + 1) = v76;
  *&v79 = v75;
  *(&v79 + 1) = KeyPath;
  *&v80 = v38;
  v59 = v38;
  *(&v80 + 1) = v52;
  *&v81 = 0;
  *(&v81 + 1) = v40;
  v60 = v40;
  v61 = v78;
  *v54 = v77;
  v54[1] = v61;
  v62 = v80;
  v54[2] = v79;
  v54[3] = v62;
  v54[4] = v81;
  v63 = v55;
  v64 = v56;
  sub_1000035B4(&v77, &v82, &qword_10012F7C0, &qword_1000EBFD0);
  sub_100005688(v24, &qword_10012F7A0, &qword_1000EBFB0);
  v82 = v36;
  v83 = v63;
  v84 = v64;
  v85 = v57;
  v86 = v58;
  v87 = v70;
  v88 = v59;
  v89 = v52;
  v90 = 0;
  v91 = v60;
  sub_100005688(&v82, &qword_10012F7C0, &qword_1000EBFD0);
  return sub_100005688(v51, &qword_10012F7A0, &qword_1000EBFB0);
}

uint64_t sub_100058A64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for TransientToolbarItem();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100002B38(&qword_10012F7C8, &qword_1000EC008);
  v7 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v9 = &v56 - v8;
  v58 = sub_100002B38(&qword_10012F7D0, &qword_1000EC010);
  v10 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v12 = (&v56 - v11);
  v13 = sub_100002B38(&qword_10012F7D8, &qword_1000EC018);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v64 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  v19 = sub_100002B38(&qword_10012F7E0, &qword_1000EC020);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  v62 = sub_100002B38(&qword_10012F7E8, &qword_1000EC028);
  v59 = *(v62 - 8);
  v23 = *(v59 + 64);
  v24 = __chkstk_darwin(v62);
  v61 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v56 - v26;
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v28 = sub_100002B38(&qword_10012F7F0, &qword_1000EC030);
  sub_10005922C(a1, &v22[*(v28 + 44)]);
  sub_1000057D8(&qword_10012F7F8, &qword_10012F7E0, &qword_1000EC020);
  v60 = v27;
  View._platformFocusSection()();
  sub_100005688(v22, &qword_10012F7E0, &qword_1000EC020);
  if (sub_10005ADB4(&dispatch thunk of ZoomCoordinator.principalNavBarItem.getter))
  {
    v57 = v18;
    v29 = *(a1 + 72);
    v30 = *(a1 + 80);
    v66 = v29;
    v67 = v30;
    sub_100002B38(&qword_10012DD98, &qword_1000EA650);
    State.wrappedValue.getter();
    if (v71 <= 0.0 && (v31 = a1 + *(type metadata accessor for OverlayNavigationBar(0) + 68), v32 = *v31, v33 = *(v31 + 8), LOBYTE(v66) = v32, v67 = v33, sub_100002B38(&qword_10012CFF0, &qword_1000ED780), State.wrappedValue.getter(), (LOBYTE(v71) & 1) != 0))
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 254;
    }

    else
    {
      sub_10005AF14(a1, &v66);
      v34 = v66;
      v35 = v67;
      v36 = v68;
      v37 = v69;
      v39 = v70;
      v42 = a1 + *(type metadata accessor for OverlayNavigationBar(0) + 68);
      v43 = *v42;
      v44 = *(v42 + 8);
      LOBYTE(v66) = v43;
      v67 = v44;
      sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
      State.wrappedValue.getter();
      if (LOBYTE(v71) == 1)
      {
        v66 = v29;
        v67 = v30;
        State.wrappedValue.getter();
        v38 = *&v71;
      }

      else
      {
        v38 = 0x3FF0000000000000;
      }

      sub_10006F3EC(v34, v35, v36, v37, v39);
    }

    *v12 = v34;
    v12[1] = v35;
    v12[2] = v36;
    v12[3] = v37;
    v12[4] = v39;
    v12[5] = v38;
    swift_storeEnumTagMultiPayload();
    v45 = v34;
    sub_100002B38(&qword_10012F800, &qword_1000EC038);
    sub_10006F248(&qword_10012F808, &qword_10012F800, &qword_1000EC038, sub_10006F10C);
    sub_10006F348();
    v18 = v57;
    _ConditionalContent<>.init(storage:)();
    sub_10006F454(v45, v35, v36, v37, v39);
  }

  else
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.principalNavBarItem.getter();

    v40 = *(a1 + 24);
    type metadata accessor for ASKBagContract();
    BaseObjectGraph.inject<A>(_:)();
    TransientToolbarItem.content(bagContract:)();

    (*(v56 + 8))(v6, v57);
    v41 = *(a1 + 96);
    v66 = *(a1 + 88);
    v67 = v41;
    sub_100002B38(&qword_10012DD98, &qword_1000EA650);
    State.wrappedValue.getter();
    *&v9[*(v63 + 36)] = v71;
    sub_1000035B4(v9, v12, &qword_10012F7C8, &qword_1000EC008);
    swift_storeEnumTagMultiPayload();
    sub_100002B38(&qword_10012F800, &qword_1000EC038);
    sub_10006F248(&qword_10012F808, &qword_10012F800, &qword_1000EC038, sub_10006F10C);
    sub_10006F348();
    _ConditionalContent<>.init(storage:)();
    sub_100005688(v9, &qword_10012F7C8, &qword_1000EC008);
  }

  v46 = v59;
  v47 = v60;
  v48 = *(v59 + 16);
  v50 = v61;
  v49 = v62;
  v48(v61, v60, v62);
  v51 = v64;
  sub_1000035B4(v18, v64, &qword_10012F7D8, &qword_1000EC018);
  v52 = v65;
  v48(v65, v50, v49);
  v53 = sub_100002B38(&qword_10012F858, &qword_1000EC060);
  sub_1000035B4(v51, &v52[*(v53 + 48)], &qword_10012F7D8, &qword_1000EC018);
  sub_100005688(v18, &qword_10012F7D8, &qword_1000EC018);
  v54 = *(v46 + 8);
  v54(v47, v49);
  sub_100005688(v51, &qword_10012F7D8, &qword_1000EC018);
  return (v54)(v50, v49);
}

uint64_t sub_10005922C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v148 = sub_100002B38(&qword_10012F860, &qword_1000EC068);
  v3 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148);
  v142 = &v117 - v4;
  v135 = type metadata accessor for TransientToolbarItem();
  v134 = *(v135 - 8);
  v5 = *(v134 + 64);
  __chkstk_darwin(v135);
  v133 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_100002B38(&qword_10012F868, &qword_1000EC070);
  v137 = *(v138 - 8);
  v7 = *(v137 + 64);
  __chkstk_darwin(v138);
  v132 = &v117 - v8;
  v9 = sub_100002B38(&qword_10012F870, &qword_1000EC078);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v139 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v145 = &v117 - v13;
  v141 = sub_100002B38(&qword_10012F878, &qword_1000EC080);
  v140 = *(v141 - 8);
  v14 = *(v140 + 64);
  v15 = __chkstk_darwin(v141);
  v136 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v153 = &v117 - v17;
  v144 = sub_100002B38(&qword_10012F880, &qword_1000EC088);
  v18 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v146 = (&v117 - v19);
  v20 = sub_100002B38(&qword_10012F888, &qword_1000EC090);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v147 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v151 = &v117 - v24;
  v131 = sub_100002B38(&qword_10012F890, &qword_1000EC098);
  v130 = *(v131 - 8);
  v25 = *(v130 + 64);
  __chkstk_darwin(v131);
  v129 = &v117 - v26;
  v27 = type metadata accessor for PlainButtonStyle();
  v125 = *(v27 - 8);
  v28 = *(v125 + 64);
  __chkstk_darwin(v27);
  v30 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100002B38(&qword_10012F898, &qword_1000EC0A0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = &v117 - v33;
  v35 = sub_100002B38(&qword_10012F8A0, &qword_1000EC0A8);
  v126 = *(v35 - 8);
  v36 = *(v126 + 64);
  __chkstk_darwin(v35);
  v38 = &v117 - v37;
  v127 = sub_100002B38(&qword_10012F8A8, &qword_1000EC0B0);
  v39 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v128 = &v117 - v40;
  v41 = sub_100002B38(&qword_10012F8B0, &qword_1000EC0B8);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v117 - v44;
  v46 = sub_100002B38(&qword_10012F8B8, &qword_1000EC0C0);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v143 = &v117 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v152 = &v117 - v50;
  v51 = *a1;
  v150 = a1;
  if ((v51 & 1) != 0 || (v52 = *(a1 + 1)) == 0)
  {
    (*(v42 + 56))(v152, 1, 1, v41);
  }

  else
  {
    v120 = v35;
    v53 = *(a1 + 2);
    v119 = v27;
    v54 = v52;
    v55 = swift_allocObject();
    v118 = v38;
    v124 = v54;
    *(v55 + 16) = v54;
    *(v55 + 24) = v53;
    v123 = v53;
    sub_10000519C(v54);

    sub_100002B38(&qword_10012F8F8, &qword_1000EC0E0);
    v122 = v41;
    v56 = sub_100005144(&qword_10012F900, &qword_1000EC0E8);
    v121 = v45;
    v57 = v56;
    v58 = sub_10006F508();
    v157 = v57;
    v158 = v58;
    swift_getOpaqueTypeConformance2();
    Button.init(action:label:)();
    v59 = a1[2];
    KeyPath = swift_getKeyPath();
    v61 = swift_allocObject();
    *(v61 + 16) = (v59 & 1) == 0;
    v62 = &v34[*(v31 + 36)];
    *v62 = KeyPath;
    v62[1] = sub_100070378;
    v62[2] = v61;
    PlainButtonStyle.init()();
    v63 = sub_10006F9A8();
    v64 = sub_10006778C(&qword_10012CE30, &type metadata accessor for PlainButtonStyle);
    v65 = v118;
    v66 = v119;
    View.buttonStyle<A>(_:)();
    (*(v125 + 8))(v30, v66);
    sub_100005688(v34, &qword_10012F898, &qword_1000EC0A0);
    v160 = &type metadata for Circle;
    v161 = sub_10006FA8C();
    *&v154 = v31;
    *(&v154 + 1) = v66;
    v155 = v63;
    v156 = v64;
    swift_getOpaqueTypeConformance2();
    v67 = v129;
    v68 = v120;
    StrokeFocusEffect.init(shape:)();
    sub_1000057D8(&qword_10012F998, &qword_10012F890, &qword_1000EC098);
    v69 = v128;
    v70 = v131;
    View.focusEffect<A>(_:)();
    (*(v130 + 8))(v67, v70);
    (*(v126 + 8))(v65, v68);
    LOBYTE(v70) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v71 = v69 + *(v127 + 36);
    *v71 = v70;
    *(v71 + 8) = v72;
    *(v71 + 16) = v73;
    *(v71 + 24) = v74;
    *(v71 + 32) = v75;
    *(v71 + 40) = 0;
    v76 = &v150[*(type metadata accessor for OverlayNavigationBar(0) + 84)];
    LODWORD(v131) = *v76;
    v77 = *(v76 + 1);
    v78 = v76[16];
    LOBYTE(v157) = v131;
    v158 = v77;
    v159 = v78;
    sub_100002B38(&qword_10012F9A0, &qword_1000EC140);
    FocusState.projectedValue.getter();
    sub_10006FAE0();
    v79 = v121;
    View.focused(_:)();

    sub_100005688(v69, &qword_10012F8A8, &qword_1000EC0B0);
    LOBYTE(v157) = v131;
    v158 = v77;
    v159 = v78;
    FocusState.wrappedValue.getter();
    sub_10006C574(v124);
    v80 = v122;
    *(v79 + *(v122 + 36)) = v154;
    v81 = v152;
    sub_100014830(v79, v152, &qword_10012F8B0, &qword_1000EC0B8);
    (*(v42 + 56))(v81, 0, 1, v80);
  }

  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  v82 = dispatch thunk of ZoomCoordinator.topTrailingNavBarItems.getter();

  v83 = *(v82 + 16);

  v84 = v151;
  v85 = v145;
  if (!v83 && sub_10005ADB4(&dispatch thunk of ZoomCoordinator.topTrailingTransientNavBarItem.getter))
  {
    v86 = *(type metadata accessor for OverlayNavigationBar(0) + 72);
    sub_100002B38(&qword_10012F780, &qword_1000EBF80);
    State.wrappedValue.getter();
    if (v156)
    {
      sub_10003FB38(&v154, &v157);
      v87 = v160;
      v88 = sub_10002D754(&v157, v160);
      v89 = *(*(v87 - 1) + 64);
      __chkstk_darwin(v88);
      (*(v91 + 16))(&v117 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
      *v146 = AnyView.init<A>(_:)();
      swift_storeEnumTagMultiPayload();
      sub_1000057D8(&qword_10012F8E8, &qword_10012F860, &qword_1000EC068);
      _ConditionalContent<>.init(storage:)();
      sub_10002E6CC(&v157);
      v92 = v84;
      goto LABEL_14;
    }

    sub_100005688(&v154, &qword_10012F438, &qword_1000EBCA8);
  }

  static ZoomCoordinator.shared.getter();
  v93 = dispatch thunk of ZoomCoordinator.topTrailingNavBarItems.getter();

  v157 = v93;
  sub_100002B38(&qword_10012F8C0, &qword_1000EC0C8);
  type metadata accessor for OverlayPageToolbarItemView();
  sub_1000057D8(&qword_10012F8C8, &qword_10012F8C0, &qword_1000EC0C8);
  sub_10006778C(&qword_10012F8D0, &type metadata accessor for OverlayPageToolbarItemView);
  sub_10006778C(&qword_10012F8D8, &type metadata accessor for PageToolbarItem);
  ForEach<>.init(_:content:)();
  v94 = v150;
  if (sub_10005ADB4(&dispatch thunk of ZoomCoordinator.topTrailingTransientNavBarItem.getter))
  {
    v95 = 1;
    v96 = v138;
    v97 = v137;
  }

  else
  {
    static ZoomCoordinator.shared.getter();
    v98 = v133;
    dispatch thunk of ZoomCoordinator.topTrailingTransientNavBarItem.getter();

    v99 = *(v94 + 3);
    type metadata accessor for ASKBagContract();
    BaseObjectGraph.inject<A>(_:)();
    v100 = v132;
    TransientToolbarItem.content(bagContract:)();

    (*(v134 + 8))(v98, v135);
    v97 = v137;
    v96 = v138;
    (*(v137 + 32))(v85, v100, v138);
    v95 = 0;
  }

  (*(v97 + 56))(v85, v95, 1, v96);
  v101 = v85;
  v102 = v140;
  v103 = *(v140 + 16);
  v104 = v136;
  v105 = v141;
  v103(v136, v153, v141);
  v106 = v139;
  sub_1000035B4(v101, v139, &qword_10012F870, &qword_1000EC078);
  v107 = v142;
  v103(v142, v104, v105);
  v108 = sub_100002B38(&qword_10012F8E0, &qword_1000EC0D0);
  sub_1000035B4(v106, v107 + *(v108 + 48), &qword_10012F870, &qword_1000EC078);
  sub_100005688(v106, &qword_10012F870, &qword_1000EC078);
  v109 = *(v102 + 8);
  v109(v104, v105);
  sub_1000035B4(v107, v146, &qword_10012F860, &qword_1000EC068);
  swift_storeEnumTagMultiPayload();
  sub_1000057D8(&qword_10012F8E8, &qword_10012F860, &qword_1000EC068);
  v92 = v151;
  _ConditionalContent<>.init(storage:)();
  sub_100005688(v107, &qword_10012F860, &qword_1000EC068);
  sub_100005688(v101, &qword_10012F870, &qword_1000EC078);
  v109(v153, v105);
LABEL_14:
  v110 = v152;
  v111 = v143;
  sub_1000035B4(v152, v143, &qword_10012F8B8, &qword_1000EC0C0);
  v112 = v147;
  sub_1000035B4(v92, v147, &qword_10012F888, &qword_1000EC090);
  v113 = v149;
  sub_1000035B4(v111, v149, &qword_10012F8B8, &qword_1000EC0C0);
  v114 = sub_100002B38(&qword_10012F8F0, &qword_1000EC0D8);
  v115 = v113 + *(v114 + 48);
  *v115 = 0;
  *(v115 + 8) = 1;
  sub_1000035B4(v112, v113 + *(v114 + 64), &qword_10012F888, &qword_1000EC090);
  sub_100005688(v92, &qword_10012F888, &qword_1000EC090);
  sub_100005688(v110, &qword_10012F8B8, &qword_1000EC0C0);
  sub_100005688(v112, &qword_10012F888, &qword_1000EC090);
  return sub_100005688(v111, &qword_10012F8B8, &qword_1000EC0C0);
}

uint64_t sub_10005A478@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v22 = type metadata accessor for FocusInteractions();
  v20 = *(v22 - 8);
  v1 = *(v20 + 64);
  __chkstk_darwin(v22);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002B38(&qword_10012F900, &qword_1000EC0E8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = Image.init(systemName:)();
  v9 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v11 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v28 = 0;
  *&v23 = v8;
  *(&v23 + 1) = KeyPath;
  *&v24 = v9;
  BYTE8(v24) = v11;
  *&v25 = v12;
  *(&v25 + 1) = v13;
  *&v26 = v14;
  *(&v26 + 1) = v15;
  v27 = 0;
  Solarium.init()();
  sub_100002B38(&qword_10012F910, &qword_1000EC0F0);
  sub_100002B38(&qword_10012F918, &qword_1000EC0F8);
  sub_100002B38(&qword_10012F920, &unk_1000EC100);
  sub_10006F668();
  sub_10006F6F4();
  sub_10006F838();
  View.staticIf<A, B, C>(_:then:else:)();
  v29[2] = v25;
  v29[3] = v26;
  v30 = v27;
  v29[0] = v23;
  v29[1] = v24;
  sub_100005688(v29, &qword_10012F910, &qword_1000EC0F0);
  v16 = &v7[*(v4 + 36)];
  v17 = &v16[*(sub_100002B38(&qword_10012F970, &qword_1000EC130) + 40)];
  static ContentShapeKinds.interaction.getter();
  *v16 = 0;
  static FocusInteractions.automatic.getter();
  sub_10006F508();
  View.componentFocusable(_:interactions:)();
  (*(v20 + 8))(v3, v22);
  return sub_100005688(v7, &qword_10012F900, &qword_1000EC0E8);
}

uint64_t sub_10005A778(__int128 *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v18 = a1[2];
  v19 = v2;
  v3 = a1[1];
  v17[0] = *a1;
  v17[1] = v3;
  v4 = *a1;
  v14 = a1[2];
  v15 = a1[3];
  v12 = *a1;
  v13 = a1[1];
  v11 = v18;
  v20 = *(a1 + 64);
  v16 = *(a1 + 64);
  v9 = v4;
  v10 = v1;
  sub_1000035B4(v17, &v23, &qword_10012F910, &qword_1000EC0F0);
  sub_1000035B4(v17, &v23, &qword_10012F910, &qword_1000EC0F0);
  sub_100002B38(&qword_10012F9B0, &qword_1000EC148);
  sub_100002B38(&qword_10012F920, &unk_1000EC100);
  sub_100069844();
  v5 = sub_100005144(&qword_10012F910, &qword_1000EC0F0);
  v6 = sub_10006F668();
  v7 = sub_10006F7E4();
  *&v23 = v5;
  *(&v23 + 1) = &type metadata for Circle;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  swift_getOpaqueTypeConformance2();
  sub_10006F838();
  StaticIf<>.init(_:then:else:)();
  v21[2] = v11;
  v21[3] = v15;
  v22 = v16;
  v21[0] = v9;
  v21[1] = v10;
  sub_100005688(v21, &qword_10012F910, &qword_1000EC0F0);
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v23 = v12;
  v24 = v13;
  return sub_100005688(&v23, &qword_10012F910, &qword_1000EC0F0);
}

uint64_t sub_10005A980@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = type metadata accessor for Material._GlassVariant();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Material();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _Glass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v24 = a1[2];
  v25 = v18;
  v26 = *(a1 + 64);
  v19 = a1[1];
  v22 = *a1;
  v23 = v19;
  static Material._GlassVariant.controlCenter.getter();
  static Material._glass(_:)();
  (*(v4 + 8))(v7, v3);
  static _Glass.explicit(_:)();
  (*(v9 + 8))(v12, v8);
  sub_100002B38(&qword_10012F910, &qword_1000EC0F0);
  sub_10006F668();
  sub_10006F7E4();
  View._glassEffect<A>(_:in:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_10005AC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v13 = *(a1 + 64);
  v5 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v5;
  v6 = a2 + *(sub_100002B38(&qword_10012F950, &unk_1000EC118) + 36);
  static Material.ultraThin.getter();
  v7 = static Edge.Set.all.getter();
  *(v6 + *(sub_100002B38(&qword_10012CD40, &qword_1000E9070) + 36)) = v7;
  *(a2 + 64) = *(a1 + 64);
  v8 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v8;
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  *(a2 + *(sub_100002B38(&qword_10012F920, &unk_1000EC100) + 36)) = 256;
  return sub_1000035B4(v12, v11, &qword_10012F910, &qword_1000EC0F0);
}

uint64_t sub_10005ACE8(uint64_t a1)
{
  v2 = type metadata accessor for PageToolbarItem();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return OverlayPageToolbarItemView.init(item:)();
}

BOOL sub_10005ADB4(void (*a1)(void))
{
  v2 = type metadata accessor for TransientToolbarItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  a1();

  if ((*(v3 + 88))(v6, v2) == enum case for TransientToolbarItem.title(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v7 = v6[1];

    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    return v9 == 0;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_10005AF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverlayNavigationBar(0);
  v5 = (a1 + *(v4 + 64));
  v6 = *(v5 + 4);
  v7 = v5[1];
  v25 = *v5;
  v26 = v7;
  v27 = v6;
  sub_100002B38(&qword_10012F770, &qword_1000EBF70);
  State.wrappedValue.getter();
  if (v23)
  {
    v8 = v21;
    static Font.headline.getter();
    LOBYTE(v25) = v22 & 1;
    v9 = Text.font(_:)();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    *&v21 = v9;
    *(&v21 + 1) = v11;
    v22 = v13 & 1;
    v23 = v15;
    v24 = 0;
    sub_1000054F0(v9, v11, v13 & 1);

    sub_1000054F0(v9, v11, v13 & 1);

    _ConditionalContent<>.init(storage:)();
    sub_1000054E0(v8, *(&v8 + 1), v25);

    sub_1000054E0(v9, v11, v13 & 1);

    sub_1000054E0(v9, v11, v13 & 1);

    v17 = v25;
    v18 = v26;
    v19 = v27;
  }

  else
  {
    v20 = *(v4 + 76);
    sub_100002B38(&qword_10012F780, &qword_1000EBF80);
    State.wrappedValue.getter();
    result = sub_100005688(&v21, &qword_10012F438, &qword_1000EBCA8);
    v17 = 0uLL;
    v19 = -1;
    v18 = 0uLL;
  }

  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  return result;
}

uint64_t sub_10005B220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverlayNavigationBar(0);
  v5 = (a1 + *(v4 + 64));
  v6 = *(v5 + 4);
  v7 = v5[1];
  v17 = *v5;
  v18 = v7;
  v19 = v6;
  sub_100002B38(&qword_10012F770, &qword_1000EBF70);
  State.wrappedValue.getter();
  if (v15)
  {
    v14 &= 1u;
    v16 = 0;
    result = _ConditionalContent<>.init(storage:)();
    v9 = v17;
    v10 = v18;
    v11 = v19;
  }

  else
  {
    v12 = *(v4 + 80);
    sub_100002B38(&qword_10012F780, &qword_1000EBF80);
    State.wrappedValue.getter();
    result = sub_100005688(&v13, &qword_10012F438, &qword_1000EBCA8);
    v9 = 0uLL;
    v11 = -1;
    v10 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_10005B464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *(a3 + 32);
  v18 = *(a3 + 40);
  v21 = *(a3 + 48);
  sub_100002B38(&qword_10012F160, &qword_1000EBA58);
  result = Binding.wrappedValue.getter();
  if (LOBYTE(v14) == 1)
  {
    v5 = (a3 + *(type metadata accessor for OverlayNavigationBar(0) + 68));
    v16 = *v5;
    v19 = *(v5 + 1);
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.getter();
    result = ZoomCoordinator.ScrollGeometry.contentInsetTop.getter();
    if (v6 > 0.0)
    {
      ZoomCoordinator.ScrollGeometry.contentOffsetY.getter();
      v8 = v7;
      ZoomCoordinator.ScrollGeometry.contentInsetTop.getter();
      v10 = v8 + v9;
      if (v10 < 0.0)
      {
        v17 = *(a3 + 104);
        v20 = *(a3 + 112);
        v14 = -v10;
        sub_100002B38(&qword_10012EC18, &qword_1000EB048);
        State.wrappedValue.setter();
      }

      v11 = *(a3 + 56);
      v12 = *(a3 + 64);
      State.wrappedValue.getter();
      if (v10 <= 54.0 && (LOBYTE(v14) & 1) != 0 || (result = State.wrappedValue.getter(), v10 >= 56.0) && (LOBYTE(v14) & 1) == 0)
      {

        State.wrappedValue.getter();
        State.wrappedValue.setter();

        __chkstk_darwin(v13);
        static Animation.default.getter();
        withAnimation<A>(_:_:)();
      }
    }
  }

  return result;
}

uint64_t sub_10005B6B0(uint64_t a1)
{
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  v4 = *(a1 + 72);
  v6 = *(a1 + 80);
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  return State.wrappedValue.setter();
}

uint64_t sub_10005B764(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = *(a3 + 32);
  v7 = *(a3 + 40);
  v8 = *(a3 + 48);
  sub_100002B38(&qword_10012F160, &qword_1000EBA58);
  result = Binding.wrappedValue.getter();
  if (v5 == 1)
  {
    __chkstk_darwin(result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10005B840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16[-v6];
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v17 = *(a3 + 32);
  v18 = v8;
  v19 = v9;
  sub_100002B38(&qword_10012F160, &qword_1000EBA58);
  result = Binding.wrappedValue.getter();
  if (v16[7] == 1 && *(a3 + 2) == 1)
  {
    v11 = *(a3 + 8);
    if (v11)
    {
      v12 = *(a3 + 16);
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
      type metadata accessor for MainActor();
      sub_10000519C(v11);

      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v11;
      v15[5] = v12;
      sub_100014BBC(0, 0, v7, &unk_1000EBF90, v15);
      sub_10006C574(v11);
    }
  }

  return result;
}

uint64_t sub_10005B9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005BA74, v7, v6);
}

uint64_t sub_10005BA74()
{
  v1 = v0[4];

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "OverlayNavigationBar: popping current view due to controller back button press.", v5, 2u);
  }

  v6 = v0[2];
  v7 = v0[3];

  v6();
  v8 = v0[1];

  return v8();
}

uint64_t sub_10005BB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = type metadata accessor for ToolbarItemPlacement();
  v65 = *(v68 - 8);
  v5 = *(v65 + 64);
  __chkstk_darwin(v68);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarTitleDisplayMode();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  v9 = __chkstk_darwin(v7);
  v61 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v59 - v11;
  v12 = type metadata accessor for ToolbarProxy_V1();
  v69 = *(v12 - 8);
  v13 = *(v69 + 64);
  __chkstk_darwin(v12);
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v59 - v21;
  __chkstk_darwin(v20);
  v24 = &v59 - v23;
  v25 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  sub_1000035B4(a2 + *(v25 + 20), v24, &qword_10012E960, &qword_1000EAD08);
  v66 = type metadata accessor for OverlayNavigationBar(0);
  v26 = v66[15];
  sub_1000035B4(v24, v22, &qword_10012E960, &qword_1000EAD08);
  sub_100002B38(&qword_10012F598, &qword_1000EBE28);
  State.wrappedValue.setter();
  sub_100005688(v24, &qword_10012E960, &qword_1000EAD08);
  State.wrappedValue.getter();
  v27 = v69;
  if ((*(v69 + 48))(v19, 1, v12) == 1)
  {
    v28 = &qword_10012E960;
    v29 = &qword_1000EAD08;
    v30 = v19;
  }

  else
  {
    v31 = *(v27 + 32);
    v59 = v12;
    v31(v67, v19, v12);
    v32 = ToolbarProxy_V1.title.getter();
    v33 = v66;
    v34 = (a3 + v66[16]);
    v35 = *(v34 + 4);
    v36 = v34[1];
    v71 = *v34;
    v72 = v36;
    v73 = v35;
    v70[0] = v32;
    v70[1] = v37;
    v70[2] = v38;
    v70[3] = v39;
    sub_100002B38(&qword_10012F770, &qword_1000EBF70);
    State.wrappedValue.setter();
    v40 = v60;
    ToolbarProxy_V1.titleDisplayMode.getter();
    v41 = v61;
    static ToolbarTitleDisplayMode.large.getter();
    v42 = static ToolbarTitleDisplayMode.== infix(_:_:)();
    v43 = *(v62 + 8);
    v44 = v41;
    v45 = v63;
    v43(v44, v63);
    v43(v40, v45);
    v46 = (a3 + v33[17]);
    v47 = *v46;
    v48 = *(v46 + 1);
    LOBYTE(v71) = v47;
    *(&v71 + 1) = v48;
    LOBYTE(v70[0]) = v42 & 1;
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.setter();
    v49 = v64;
    static ToolbarItemPlacement.topBarTrailing.getter();
    v63 = sub_100002B38(&qword_10012F778, &qword_1000EBF78);
    *(&v72 + 1) = v63;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v73 = OpaqueTypeConformance2;
    v62 = OpaqueTypeConformance2;
    sub_100012854(&v71);
    ToolbarProxy_V1.subscript.getter();
    v51 = *(v65 + 8);
    v52 = v68;
    v51(v49, v68);
    v53 = v33[18];
    sub_1000035B4(&v71, v70, &qword_10012F438, &qword_1000EBCA8);
    v65 = sub_100002B38(&qword_10012F780, &qword_1000EBF80);
    State.wrappedValue.setter();
    sub_100005688(&v71, &qword_10012F438, &qword_1000EBCA8);
    static ToolbarItemPlacement.largeTitle.getter();
    v54 = v63;
    *(&v72 + 1) = v63;
    v73 = OpaqueTypeConformance2;
    sub_100012854(&v71);
    v55 = v67;
    ToolbarProxy_V1.subscript.getter();
    v51(v49, v52);
    v56 = v33[20];
    sub_1000035B4(&v71, v70, &qword_10012F438, &qword_1000EBCA8);
    State.wrappedValue.setter();
    sub_100005688(&v71, &qword_10012F438, &qword_1000EBCA8);
    static ToolbarItemPlacement.principal.getter();
    *(&v72 + 1) = v54;
    v73 = v62;
    sub_100012854(&v71);
    ToolbarProxy_V1.subscript.getter();
    v51(v49, v68);
    v57 = v66[19];
    sub_1000035B4(&v71, v70, &qword_10012F438, &qword_1000EBCA8);
    State.wrappedValue.setter();
    (*(v69 + 8))(v55, v59);
    v30 = &v71;
    v28 = &qword_10012F438;
    v29 = &qword_1000EBCA8;
  }

  return sub_100005688(v30, v28, v29);
}

uint64_t sub_10005C210@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v97 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
  v4 = *(*(v97 - 8) + 64);
  v5 = __chkstk_darwin(v97);
  v96 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v86[-v7];
  v98 = sub_100002B38(&qword_10012F410, &qword_1000EBC80);
  v9 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v11 = &v86[-v10];
  v12 = sub_100002B38(&qword_10012F418, &qword_1000EBC88);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v86[-v15];
  v17 = sub_100002B38(&qword_10012F420, &qword_1000EBC90);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v86[-v19];
  v21 = sub_100002B38(&qword_10012F428, &qword_1000EBC98);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  if (*v2)
  {
    v88 = v16;
    v89 = v13;
    v90 = v12;
    v91 = &v86[-v25];
    v92 = v17;
    v93 = v20;
    v99 = v24;
    v94 = v23;
    v95 = a1;
    v100[0] = *(v2 + 72);
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.getter();
    v87 = LOBYTE(v108[0]);
    v100[0] = *(v2 + 88);
    State.wrappedValue.getter();
    v26 = v108[0];
    v27 = *(v2 + 8);
    v100[0] = *(v2 + 16);
    LOBYTE(v100[1]) = *(v2 + 32);

    sub_100002B38(&qword_10012F160, &qword_1000EBA58);
    Binding.projectedValue.getter();
    v28 = v108[0];
    v29 = v108[1];
    v30 = type metadata accessor for ToolbarProxy_V1();
    (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
    v101 = 0;
    memset(v100, 0, sizeof(v100));
    v109 = 0;
    memset(v108, 0, sizeof(v108));
    v107 = 0;
    memset(v106, 0, sizeof(v106));
    *v11 = v87;
    v11[1] = v26;
    v11[2] = 1;
    *(v11 + 1) = sub_10005CDF0;
    *(v11 + 2) = 0;
    *(v11 + 3) = v27;
    *(v11 + 2) = v28;
    v11[48] = v29;
    LOBYTE(v102) = 0;
    State.init(wrappedValue:)();
    v31 = *(&v104[0] + 1);
    v11[56] = v104[0];
    *(v11 + 8) = v31;
    *&v102 = 0;
    State.init(wrappedValue:)();
    v32 = *(&v104[0] + 1);
    *(v11 + 9) = *&v104[0];
    *(v11 + 10) = v32;
    *&v102 = 0;
    State.init(wrappedValue:)();
    v33 = *(&v104[0] + 1);
    *(v11 + 11) = *&v104[0];
    *(v11 + 12) = v33;
    *&v102 = 0;
    State.init(wrappedValue:)();
    v34 = *(&v104[0] + 1);
    *(v11 + 13) = *&v104[0];
    *(v11 + 14) = v34;
    *&v102 = 0;
    State.init(wrappedValue:)();
    v35 = *(&v104[0] + 1);
    *(v11 + 15) = *&v104[0];
    *(v11 + 16) = v35;
    v36 = type metadata accessor for OverlayNavigationBar(0);
    v37 = v36[15];
    sub_1000035B4(v8, v96, &qword_10012E960, &qword_1000EAD08);
    State.init(wrappedValue:)();
    sub_100005688(v8, &qword_10012E960, &qword_1000EAD08);
    v38 = &v11[v36[16]];
    v102 = 0u;
    v103 = 0u;
    sub_100002B38(&qword_10012F430, &qword_1000EBCA0);
    State.init(wrappedValue:)();
    v39 = v105;
    v40 = v104[1];
    *v38 = v104[0];
    *(v38 + 1) = v40;
    *(v38 + 4) = v39;
    v41 = &v11[v36[17]];
    LOBYTE(v102) = 0;
    State.init(wrappedValue:)();
    v42 = *(&v104[0] + 1);
    *v41 = v104[0];
    *(v41 + 1) = v42;
    v43 = v36[18];
    sub_1000035B4(v100, v104, &qword_10012F438, &qword_1000EBCA8);
    sub_100002B38(&qword_10012F438, &qword_1000EBCA8);
    State.init(wrappedValue:)();
    sub_100005688(v100, &qword_10012F438, &qword_1000EBCA8);
    v44 = v36[19];
    sub_1000035B4(v108, v104, &qword_10012F438, &qword_1000EBCA8);
    State.init(wrappedValue:)();
    sub_100005688(v108, &qword_10012F438, &qword_1000EBCA8);
    v45 = v36[20];
    sub_1000035B4(v106, v104, &qword_10012F438, &qword_1000EBCA8);
    State.init(wrappedValue:)();
    sub_100005688(v106, &qword_10012F438, &qword_1000EBCA8);
    v46 = &v11[v36[21]];
    *v46 = FocusState.init<>()() & 1;
    *(v46 + 1) = v47;
    v46[16] = v48 & 1;
    v50 = sub_100051324(sub_100069EEC, &type metadata for ChildZoomTransition, v48, v49);
    *&v11[*(sub_100002B38(&qword_10012F440, &qword_1000EBCB0) + 36)] = v50;
    v51 = swift_allocObject();
    v52 = *(v2 + 80);
    *(v51 + 80) = *(v2 + 64);
    *(v51 + 96) = v52;
    *(v51 + 112) = *(v2 + 96);
    *(v51 + 128) = *(v2 + 112);
    v53 = *(v2 + 16);
    *(v51 + 16) = *v2;
    *(v51 + 32) = v53;
    v54 = *(v2 + 48);
    *(v51 + 48) = *(v2 + 32);
    *(v51 + 64) = v54;
    v55 = &v11[*(sub_100002B38(&qword_10012F448, &qword_1000EBCB8) + 36)];
    *v55 = sub_10006D180;
    v55[1] = v51;
    v56 = swift_allocObject();
    v57 = *(v2 + 80);
    *(v56 + 80) = *(v2 + 64);
    *(v56 + 96) = v57;
    *(v56 + 112) = *(v2 + 96);
    *(v56 + 128) = *(v2 + 112);
    v58 = *(v2 + 16);
    *(v56 + 16) = *v2;
    *(v56 + 32) = v58;
    v59 = *(v2 + 48);
    *(v56 + 48) = *(v2 + 32);
    *(v56 + 64) = v59;
    v60 = &v11[*(sub_100002B38(&qword_10012F450, &qword_1000EBCC0) + 36)];
    *v60 = sub_10006D1D8;
    v60[1] = v56;
    v61 = swift_allocObject();
    v62 = *(v2 + 80);
    *(v61 + 80) = *(v2 + 64);
    *(v61 + 96) = v62;
    *(v61 + 112) = *(v2 + 96);
    *(v61 + 128) = *(v2 + 112);
    v63 = *(v2 + 16);
    *(v61 + 16) = *v2;
    *(v61 + 32) = v63;
    v64 = *(v2 + 48);
    *(v61 + 48) = *(v2 + 32);
    *(v61 + 64) = v64;
    v65 = &v11[*(sub_100002B38(&qword_10012F458, &qword_1000EBCC8) + 36)];
    *v65 = sub_10006D230;
    v65[1] = v61;
    v65[2] = 0;
    v65[3] = 0;
    v108[0] = *(v2 + 104);
    sub_100069B0C(v2, v100);
    sub_100069B0C(v2, v100);
    sub_100069B0C(v2, v100);
    sub_100002B38(&qword_10012DD98, &qword_1000EA650);
    State.wrappedValue.getter();
    *&v11[*(v98 + 36)] = *&v100[0];
    if (qword_10012CBB8 != -1)
    {
      swift_once();
    }

    v66 = qword_100135BC0;
    swift_getKeyPath();
    *&v100[0] = v66;
    sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v67 = *(v66 + 24);
    *&v108[0] = *(v66 + 16);
    *(&v108[0] + 1) = v67;
    v68 = swift_allocObject();
    v69 = *(v2 + 80);
    *(v68 + 80) = *(v2 + 64);
    *(v68 + 96) = v69;
    *(v68 + 112) = *(v2 + 96);
    *(v68 + 128) = *(v2 + 112);
    v70 = *(v2 + 16);
    *(v68 + 16) = *v2;
    *(v68 + 32) = v70;
    v71 = *(v2 + 48);
    *(v68 + 48) = *(v2 + 32);
    *(v68 + 64) = v71;
    sub_100069B0C(v2, v100);
    sub_10006D240();

    v72 = v88;
    View.onChange<A>(of:initial:_:)();

    sub_100005688(v11, &qword_10012F410, &qword_1000EBC80);
    v108[0] = *(v2 + 40);
    *(v108 + 9) = *(v2 + 49);
    v100[0] = *(v2 + 40);
    *(v100 + 9) = *(v2 + 49);
    sub_100002B38(&qword_10012F4B0, &qword_1000EBCE0);
    Binding.wrappedValue.getter();
    v73 = *(v2 + 1) & ~BYTE8(v106[0]);
    v100[0] = v108[0];
    *(v100 + 9) = *(v108 + 9);
    Binding.wrappedValue.getter();
    if (BYTE8(v106[0]))
    {
      v74 = 0.0;
    }

    else
    {
      v74 = *v106;
    }

    v75 = v93;
    (*(v89 + 32))(v93, v72, v90);
    v76 = v75 + *(v92 + 36);
    *v76 = v73 & 1;
    *(v76 + 8) = v74;
    v100[0] = v108[0];
    *(v100 + 9) = *(v108 + 9);
    Binding.wrappedValue.getter();
    v77 = swift_allocObject();
    v78 = *(v2 + 80);
    *(v77 + 80) = *(v2 + 64);
    *(v77 + 96) = v78;
    *(v77 + 112) = *(v2 + 96);
    *(v77 + 128) = *(v2 + 112);
    v79 = *(v2 + 16);
    *(v77 + 16) = *v2;
    *(v77 + 32) = v79;
    v80 = *(v2 + 48);
    *(v77 + 48) = *(v2 + 32);
    *(v77 + 64) = v80;
    sub_100069B0C(v2, v100);
    sub_10006D628();
    sub_10006D704();
    v81 = v91;
    View.onChange<A>(of:initial:_:)();

    sub_100005688(v75, &qword_10012F420, &qword_1000EBC90);
    v83 = v94;
    v82 = v95;
    (*(v99 + 32))(v95, v81, v94);
    return (*(v99 + 56))(v82, 0, 1, v83);
  }

  else
  {
    v85 = *(v24 + 56);

    return v85(a1, 1, 1);
  }
}