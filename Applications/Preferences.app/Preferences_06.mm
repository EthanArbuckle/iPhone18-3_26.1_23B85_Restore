uint64_t sub_1000943D8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000943E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PrimarySettingsList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100092B10(a1, v6, a2);
}

unint64_t sub_100094464()
{
  result = qword_10015E5B8;
  if (!qword_10015E5B8)
  {
    sub_100052374(&qword_10015E5B0, &qword_100115698);
    sub_100019FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E5B8);
  }

  return result;
}

uint64_t sub_1000944E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015E5E0, &qword_1001156D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094558()
{
  v0 = *(*(type metadata accessor for ScrollViewProxy() - 8) + 80);

  return sub_100093A30();
}

uint64_t sub_1000945C8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ScrollViewProxy() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PrimarySettingsList() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_100093B50(a1, a2, v2 + v6, v9);
}

unint64_t sub_1000946AC()
{
  result = qword_10015E698;
  if (!qword_10015E698)
  {
    sub_100052374(&qword_10015E620, &qword_100115700);
    sub_100052374(&qword_10015E618, &qword_1001156F8);
    sub_100052374(&qword_10015E610, &qword_1001156F0);
    type metadata accessor for SidebarListStyle();
    sub_100032460();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E698);
  }

  return result;
}

unint64_t sub_1000947D0()
{
  result = qword_10015E6A0;
  if (!qword_10015E6A0)
  {
    sub_100052374(&qword_10015E690, &qword_100115788);
    sub_100022998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E6A0);
  }

  return result;
}

unint64_t sub_100094854()
{
  result = qword_10015E6A8;
  if (!qword_10015E6A8)
  {
    sub_100052374(&qword_10015E628, &qword_100115708);
    sub_100052374(&qword_10015E620, &qword_100115700);
    sub_100052374(&qword_10015E690, &qword_100115788);
    sub_1000946AC();
    sub_1000947D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E6A8);
  }

  return result;
}

uint64_t sub_100094964()
{
  v0 = *(*(type metadata accessor for PrimarySettingsList() - 8) + 80);

  return sub_100093E1C();
}

unint64_t sub_1000949C4()
{
  result = qword_10015D9D8;
  if (!qword_10015D9D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015D9D8);
  }

  return result;
}

unint64_t sub_100094A10()
{
  result = qword_10015E6C8;
  if (!qword_10015E6C8)
  {
    sub_100052374(&qword_10015E5A0, &qword_100115688);
    sub_1000525A0(&qword_10015E6D0, &qword_10015E6D8, &qword_100115798);
    sub_1000525A0(&unk_10015E6E0, &qword_10015E5A8, &qword_100115690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E6C8);
  }

  return result;
}

uint64_t sub_100094AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100059CA0(a3, v27 - v11, &unk_10015D490, &qword_100112150);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000068B0(v12, &unk_10015D490, &qword_100112150);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000068B0(a3, &unk_10015D490, &qword_100112150);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000068B0(a3, &unk_10015D490, &qword_100112150);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100094DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100059CA0(a3, v27 - v11, &unk_10015D490, &qword_100112150);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000068B0(v12, &unk_10015D490, &qword_100112150);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_10004DED0(&unk_10015EB30, &qword_1001161E0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1000068B0(a3, &unk_10015D490, &qword_100112150);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000068B0(a3, &unk_10015D490, &qword_100112150);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10004DED0(&unk_10015EB30, &qword_1001161E0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100095108()
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier);
}

void sub_1000951B0(unsigned __int8 a1)
{
  v2 = v1;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_100169658);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = *v2;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100025CF0(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100025CF0(0xD00000000000001ELL, 0x8000000100123E90, &v16);
    *(v7 + 22) = 2082;
    if (a1 == 10)
    {
      v12 = 0xE300000000000000;
      v13 = 7104878;
    }

    else
    {
      v13 = sub_1000BBA68(a1);
      v12 = v14;
    }

    v15 = sub_100025CF0(v13, v12, &v16);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s), identifier: '%{public}s'…", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (a1 == 10)
  {
    swift_getKeyPath();
    v16 = v2;
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100098AAC(v2, 0xAu);
  }

  else
  {
    sub_100098CC4(a1);

    sub_100098AAC(v2, a1);
  }
}

uint64_t sub_1000954AC(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v46 = *(a1 + 16);
  v47 = *(a1 + 24);
  v48 = *(a1 + 8);
  v45 = *(a1 + 32);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_100169658);

  sub_100059CA0(a1, v60, &qword_10015E690, &qword_100115788);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *&v60[0] = swift_slowAlloc();
    *v8 = 136315650;
    v9 = *v1;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100025CF0(v10, v11, v60);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_100025CF0(0xD000000000000010, 0x8000000100123DE0, v60);
    *(v8 + 14) = v13;
    *(v8 + 22) = 2082;
    v14 = *(a1 + 32);
    if (v14 == 255)
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    else
    {
      v15 = *(a1 + 16);
      v57 = *a1;
      v58 = v15;
      v59 = v14;
      v16 = sub_100026A58(v13);
      v18 = v17;
    }

    v19 = sub_100025CF0(v16, v18, v60);

    *(v8 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Start (%s.%s), identifier: '%{public}s'…", v8, 0x20u);
    swift_arrayDestroy();
  }

  if (*(v2 + 16))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v60[0] = v2;
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + 16) = 0;
  }

  v21 = v45;
  v22 = v48;
  v23 = *(a1 + 32);
  if (v23 != 255)
  {
    v24 = *(a1 + 16);
    v54 = *a1;
    v55 = v24;
    v56 = v23;
    sub_100029920(v4, v48, v46, v47, v45);
    v25 = sub_100027320();
    swift_getKeyPath();
    *&v60[0] = v2;
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
    v60[2] = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
    v60[3] = v26;
    v60[4] = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
    v27 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
    v60[0] = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
    v60[1] = v27;
    sub_100063D94(v60, &v49);
    v28 = sub_100063C90(v25, v60);
    sub_100063DF0(v60);

    if ((v28 & 1) == 0)
    {
      sub_100029920(v4, v48, v46, v47, v45);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v49 = v34;
        *v33 = 136446210;
        v35 = sub_100026A58(v34);
        v37 = v36;
        sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
        v38 = sub_100025CF0(v35, v37, &v49);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "Attempted to select '%{public}s' which is not selectable based on visibility rules.", v33, 0xCu);
        sub_10000665C(v34);
      }

      else
      {

        sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
      }

      if (*(v2 + 16) == 1)
      {
        *(v2 + 16) = 1;
      }

      else
      {
        v43 = swift_getKeyPath();
        __chkstk_darwin(v43);
        v49 = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      goto LABEL_32;
    }

    sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
    v22 = v48;
    v21 = v45;
  }

  v29 = v21;
  sub_10009632C();
  v30 = *(a1 + 32);
  if (v30 >= 3)
  {
    if (v30 != 6)
    {
      goto LABEL_31;
    }

    v39 = *(a1 + 24);
    v40 = *a1;
    v41 = *(a1 + 16) | *(a1 + 8);
    if (v41 | *a1 | v39)
    {
      v42 = v41 | v39;
      if (v40 == 10 && !v42)
      {
        sub_1000A42BC();
        goto LABEL_32;
      }

      if (v40 != 37 || v42)
      {
        goto LABEL_31;
      }
    }

    if (sub_1000966A0())
    {
LABEL_31:
      sub_10009698C(a1);
      goto LABEL_32;
    }

    v49 = v4;
    v50 = v22;
    v51 = v46;
    v52 = v47;
    v53 = v29;
    sub_100029920(v4, v22, v46, v47, v29);
    sub_100096CA8(&v49);
  }

  else
  {
    v49 = v4;
    v50 = v22;
    v51 = v46;
    v52 = v47;
    v53 = v29;
    sub_100029920(v4, v22, v46, v47, v29);
    sub_100097128(&v49);
  }

  sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
LABEL_32:
  sub_100095FF4(v2, a1);
  return sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
}

uint64_t sub_100095C90()
{
  sub_10004DED0(&qword_10015EB28, &qword_100115DA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103F0;
  v1 = FLGroupIdentifierAccount;
  *(inited + 32) = FLGroupIdentifierAccount;
  v2 = FLGroupIdentifierAppleServices;
  v3 = FLGroupIdentifierNewDeviceOutreach;
  *(inited + 40) = FLGroupIdentifierAppleServices;
  *(inited + 48) = v3;
  v4 = FLGroupIdentifierSecureMicrophone;
  *(inited + 56) = FLGroupIdentifierSecureMicrophone;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = sub_100065368(inited);
  swift_setDeallocating();
  type metadata accessor for FLItemGroup(0);
  result = swift_arrayDestroy();
  qword_10015E6F0 = v9;
  return result;
}

uint64_t sub_100095D74()
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_100095E14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_100095EE4(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100095FF4(uint64_t *a1, uint64_t a2)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_100169658);

  sub_100059CA0(a2, v20, &qword_10015E690, &qword_100115788);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  sub_1000068B0(a2, &qword_10015E690, &qword_100115788);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = *a1;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100025CF0(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_100025CF0(0xD000000000000010, 0x8000000100123DE0, &v19);
    *(v7 + 14) = v12;
    *(v7 + 22) = 2082;
    v13 = *(a2 + 32);
    if (v13 == 255)
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v14 = *(a2 + 16);
      v20[0] = *a2;
      v20[1] = v14;
      v21 = v13;
      v15 = sub_100026A58(v12);
      v17 = v16;
    }

    v18 = sub_100025CF0(v15, v17, &v19);

    *(v7 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "...Complete (%s.%s), identifier: '%{public}s'", v7, 0x20u);
    swift_arrayDestroy();
  }
}

__n128 sub_100096244@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v8 = v1;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
  v10 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
  v4 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
  v8 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v9 = v4;
  sub_100063D94(&v8, &v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

void sub_10009632C()
{
  v1 = v0;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169658);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = *v1;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100025CF0(v7, v8, &v20);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000017, 0x8000000100123FA0, &v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "Start (%s.%s)…", v5, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v20 = v1;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  if (v10 == 10)
  {
    if (v13)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No presented item to dismiss, ignoring.", v14, 2u);
    }
  }

  else
  {
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136446210;
      v17 = sub_1000BBA68(v10);
      v19 = sub_100025CF0(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Dismissing identifier '%{public}s'.", v15, 0xCu);
      sub_10000665C(v16);
    }

    sub_1000951B0(0xAu);
  }

  sub_10009E578(v1);
}

uint64_t sub_1000966A0()
{
  v25 = type metadata accessor for PrimarySettingsListItemViewType();
  v0 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PrimarySettingsListItemModel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v24 - v13;
  v15 = sub_10001A1A0(v12);
  v16 = sub_1000C5400(v15);

  v18 = v16[2];
  if (v18)
  {
    v19 = 0;
    while (1)
    {
      if (v19 >= v16[2])
      {
        __break(1u);
        return result;
      }

      sub_10002EA78(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v8, type metadata accessor for PrimarySettingsListItemModel);
      if (v8[32] >= 6u && !(*(v8 + 2) | *(v8 + 3) | *v8 | *(v8 + 1)))
      {
        break;
      }

      ++v19;
      result = sub_10002E948(v8, type metadata accessor for PrimarySettingsListItemModel);
      if (v18 == v19)
      {
        goto LABEL_9;
      }
    }

    sub_1000A4C50(v8, v11, type metadata accessor for PrimarySettingsListItemModel);
    sub_1000A4C50(v11, v14, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002EA78(&v14[*(v3 + 20)], v2, type metadata accessor for PrimarySettingsListItemViewType);
    sub_10002E948(v14, type metadata accessor for PrimarySettingsListItemModel);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10002E948(v2, type metadata accessor for PrimarySettingsListItemViewType);
      return 0;
    }

    v20 = *v2;
    v21 = *(v2 + 1);
    v22 = v2[16];
    v23 = v22 < 0x40;
    sub_100045DB4(v20, v21, v22);
    return v23;
  }

  else
  {
LABEL_9:

    return 0;
  }
}

void sub_10009698C(uint64_t a1)
{
  v2 = v1;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_100169658);

  sub_100059CA0(a1, v21, &qword_10015E690, &qword_100115788);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = *v1;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100025CF0(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_100025CF0(0xD000000000000024, 0x8000000100123F70, &v20);
    *(v7 + 14) = v12;
    *(v7 + 22) = 2082;
    v13 = *(a1 + 32);
    if (v13 == 255)
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v14 = *(a1 + 16);
      v21[0] = *a1;
      v21[1] = v14;
      v22 = v13;
      v15 = sub_100026A58(v12);
      v17 = v16;
    }

    v18 = sub_100025CF0(v15, v17, &v20);

    *(v7 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s), identifier: '%{public}s'…", v7, 0x20u);
    swift_arrayDestroy();
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v20 = v2;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10009E130(v2, a1);
}

void sub_100096CA8(uint64_t a1)
{
  v2 = v1;
  v35 = *(a1 + 16);
  v36 = *a1;
  v4 = *(a1 + 32);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_100169658);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = *v2;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100025CF0(v10, v11, v37);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100025CF0(0xD000000000000041, 0x8000000100123E20, v37);
    _os_log_impl(&_mh_execute_header, v6, v7, "Start (%s.%s)…", v8, 0x16u);
    swift_arrayDestroy();
  }

  v13 = [objc_opt_self() sharedNetworkObserver];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 isNetworkReachable];

    if (v15)
    {
      v16 = v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn;
      v17 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn);
      v18 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 8);
      v19 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 16);
      v20 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 24);
      *v16 = v36;
      *(v16 + 1) = v35;
      v21 = v16[32];
      v16[32] = v4;
      sub_100032660(v17, v18, v19, v20, v21);
      swift_getKeyPath();
      v37[5] = v2;
      sub_10002698C(a1, v37);
      sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
      v23 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 56);
      v24 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      if (v24 >> 6 == 2)
      {
        if (v27)
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          v29 = "Presenting teen shield UI.";
          goto LABEL_16;
        }

LABEL_17:

        sub_100098CC4(8u);
        sub_100045DB4(v22, v23, v24);
LABEL_22:
        sub_10009E740(v2);
        return;
      }

      if (v24 >> 6 == 1)
      {
        if (v27)
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          v29 = "Presenting shield UI.";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v25, v26, v29, v28, 2u);

          goto LABEL_17;
        }

        goto LABEL_17;
      }

      if (v27)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Presenting Primary Apple Account Sign in.", v34, 2u);
      }

      v33 = 2;
    }

    else
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Presenting Network Alert.", v32, 2u);
      }

      v33 = 4;
    }

    sub_100098CC4(v33);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_100097128(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *a1;
  v173 = *(a1 + 16);
  v171 = v4;
  v172 = *(a1 + 32);
  v5 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v174 = &v155 - v7;
  if (qword_10015AAA0 != -1)
  {
    goto LABEL_120;
  }

LABEL_2:
  v8 = type metadata accessor for Logger();
  v9 = sub_10000659C(v8, qword_100169658);

  v177 = v9;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *&v181 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = *v2;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100025CF0(v14, v15, &v181);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v181);
    _os_log_impl(&_mh_execute_header, v10, v11, "Start (%s.%s)…", v12, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  *&v181 = v2;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp;
  if (*(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp + 32) != 255)
  {

    sub_10002698C(v3, &v181);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    sub_100026A04(v3);
    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_14;
    }

    LODWORD(v179) = v19;
    v20 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v180[0] = v178;
    *v20 = 136315906;
    v21 = *v2;
    v22 = _typeName(_:qualified:)();
    v24 = sub_100025CF0(v22, v23, v180);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, v180);
    *(v20 + 14) = v25;
    *(v20 + 22) = 2082;
    v26 = sub_100026A58(v25);
    v28 = sub_100025CF0(v26, v27, v180);

    *(v20 + 24) = v28;
    *(v20 + 32) = 2082;
    swift_getKeyPath();
    *&v181 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v29 = *(v17 + 32);
    if (v29 != 255)
    {
      v31 = *(v17 + 16);
      v30 = *(v17 + 24);
      v32 = *(v17 + 8);
      *&v181 = *v17;
      v33 = v181;
      *(&v181 + 1) = v32;
      *&v182 = v31;
      *(&v182 + 1) = v30;
      v183 = v29;
      sub_100029920(v181, v32, v31, v30, v29);

      v35 = sub_100026A58(v34);
      v37 = v36;
      sub_100032660(v33, v32, v31, v30, v29);
      v38 = sub_100025CF0(v35, v37, v180);

      *(v20 + 34) = v38;
      _os_log_impl(&_mh_execute_header, v18, v179, "…Complete (%s.%s). Ignoring tap on follow up '%{public}s' because currently loading '%{public}s'.", v20, 0x2Au);
      swift_arrayDestroy();

      goto LABEL_8;
    }

LABEL_146:

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    return;
  }

  v39 = *v3;
  v178 = *(v3 + 8);
  v179 = v39;
  v40 = *(v3 + 16);
  v18 = *(v3 + 24);
  v41 = *(v3 + 32);
  if (v41 == 2)
  {
    v163 = *(v3 + 16);
    v168 = 0;
    v170 = v18;
    v18 = 0;
  }

  else if (v41 == 1)
  {
    v168 = 0;
    v18 = 0;
    v163 = 0;
    v170 = 0;
  }

  else
  {
    if (*(v3 + 32))
    {

      sub_10002698C(v3, &v181);
      v18 = Logger.logObject.getter();
      v92 = static os_log_type_t.fault.getter();

      sub_100026A04(v3);
      if (!os_log_type_enabled(v18, v92))
      {
        goto LABEL_14;
      }

      v93 = swift_slowAlloc();
      *&v181 = swift_slowAlloc();
      *v93 = 136315650;
      v94 = *v2;
      v95 = _typeName(_:qualified:)();
      v97 = sub_100025CF0(v95, v96, &v181);

      *(v93 + 4) = v97;
      *(v93 + 12) = 2080;
      v98 = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v181);
      *(v93 + 14) = v98;
      *(v93 + 22) = 2082;
      v99 = sub_100026A58(v98);
      v101 = sub_100025CF0(v99, v100, &v181);

      *(v93 + 24) = v101;
      _os_log_impl(&_mh_execute_header, v18, v92, "…Complete (%s.%s). Ignoring tap on follow up '%{public}s' because its an unsupported case!", v93, 0x20u);
      swift_arrayDestroy();

LABEL_8:

      goto LABEL_14;
    }

    v170 = 0;
    v168 = v40;
    v163 = 0;
  }

  v169 = [objc_allocWithZone(FLTopLevelViewModel) initWithBundleIdentifier:FLFollowUpPreferencesBundleIdentifier clientIdentifier:0];
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v43 = objc_opt_self();
  p_base_meths = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
  v45 = [v43 defaultStore];
  if (!v45)
  {
    goto LABEL_147;
  }

  v46 = v45;
  v47 = [v45 aa_primaryAppleAccount];
  if (!v47 || (v48 = v47, v49 = [v47 identifier], v48, !v49))
  {

    goto LABEL_23;
  }

  v181 = 0uLL;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!*(&v181 + 1))
  {
LABEL_23:
    v50 = 0;
    goto LABEL_24;
  }

  v50 = String._bridgeToObjectiveC()();

LABEL_24:
  v51 = [v43 defaultStore];
  if (!v51)
  {
    goto LABEL_148;
  }

  v52 = v51;
  sub_100104DCC();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v54 = [v169 groupsForPrimaryAccount:v50 secondaryAccounts:isa];

  sub_10004DED0(&unk_10015E8E0, &qword_100115AD0);
  v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v166 = v55;
  if (v55 >> 62)
  {
    goto LABEL_124;
  }

  v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v56)
  {
LABEL_64:

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *&v181 = swift_slowAlloc();
      *v87 = 136315394;
      v88 = *v2;
      v89 = _typeName(_:qualified:)();
      v91 = sub_100025CF0(v89, v90, &v181);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v181);
      _os_log_impl(&_mh_execute_header, v85, v86, "…Complete (%s.%s) no group.", v87, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_101;
  }

LABEL_27:
  v57 = 0;
  v58 = v55 & 0xC000000000000001;
  v158 = v55 & 0xFFFFFFFFFFFFFF8;
  v157 = v55 + 32;
  v59 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v59 = v168 & 0xFFFFFFFFFFFFLL;
  }

  v156 = v59;
  v175 = v3;
  v167 = v42;
  v159 = v55 & 0xC000000000000001;
  v164 = v2;
  v162 = v18;
  v160 = v56;
  while (1)
  {
    if (v58)
    {
      v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v61 = __OFADD__(v57, 1);
      v62 = v57 + 1;
      if (v61)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (v57 >= *(v158 + 16))
      {
        __break(1u);
LABEL_127:
        v106 = _CocoaArrayWrapper.endIndex.getter();
        if (!v106)
        {
          goto LABEL_128;
        }

LABEL_75:
        v107 = 0;
        v2 = v42 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v108 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v107 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_122;
            }

            v108 = *(v42 + 8 * v107 + 32);
          }

          v18 = v108;
          v3 = v107 + 1;
          if (__OFADD__(v107, 1))
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            v134 = _CocoaArrayWrapper.endIndex.getter();
            v55 = v166;
            v56 = v134;
            if (!v134)
            {
              goto LABEL_64;
            }

            goto LABEL_27;
          }

          v109 = [v108 identifier];
          if (!v109)
          {
            v109 = [v18 label];
            if (!v109)
            {
              break;
            }
          }

          v110 = v109;
          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;

          if (v170)
          {
            if (v111 == v163 && v170 == v113)
            {

              v3 = v176;
              swift_unknownObjectRelease();

              goto LABEL_104;
            }

            v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v115)
            {
              goto LABEL_102;
            }

LABEL_92:

            goto LABEL_77;
          }

LABEL_77:
          ++v107;
          v73 = v3 == v106;
          p_base_meths = v175;
          v3 = v176;
          if (v73)
          {
            goto LABEL_128;
          }
        }

        if (!v170)
        {
LABEL_102:

          v3 = v176;
          swift_unknownObjectRelease();
LABEL_104:
          v2 = v164;
          p_base_meths = v175;
          goto LABEL_129;
        }

        goto LABEL_92;
      }

      v60 = *(v157 + 8 * v57);
      swift_unknownObjectRetain();
      v61 = __OFADD__(v57, 1);
      v62 = v57 + 1;
      if (v61)
      {
        goto LABEL_123;
      }
    }

    v63 = [v60 items];
    v161 = sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v176 = v60;
    v165 = v62;
    if (v2 >> 62)
    {
      v64 = _CocoaArrayWrapper.endIndex.getter();
      if (v64)
      {
LABEL_38:
        v3 = 0;
        v18 = v2 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_119;
            }

            v65 = *(v2 + 8 * v3 + 32);
          }

          v66 = v65;
          v67 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          v68 = [v65 uniqueIdentifier];
          if (v68)
          {
            v69 = v68;
            v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v72 = v71;

            v73 = v70 == v179 && v72 == v178;
            if (v73)
            {

LABEL_69:

              v2 = v164;
              p_base_meths = v175;
              v3 = v176;
              v42 = v167;
              goto LABEL_70;
            }

            v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v74)
            {
              goto LABEL_69;
            }
          }

          ++v3;
          if (v67 == v64)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        swift_once();
        goto LABEL_2;
      }
    }

    else
    {
      v64 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v64)
      {
        goto LABEL_38;
      }
    }

LABEL_53:

    v3 = v176;
    v75 = [v176 identifier];
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    p_base_meths = v175;
    if (v76 == v179 && v78 == v178)
    {

      v2 = v164;
      v42 = v167;
      v18 = v162;
      if (!v162)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = v164;
      v42 = v167;
      v18 = v162;
      if ((v79 & 1) == 0 || !v162)
      {
        goto LABEL_63;
      }
    }

    if (!v156)
    {
      goto LABEL_106;
    }

    v80 = [v3 accountID];
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    if (v81 == v168 && v18 == v83)
    {
      break;
    }

    v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v84)
    {
      goto LABEL_106;
    }

LABEL_63:
    swift_unknownObjectRelease();
    v57 = v165;
    v58 = v159;
    if (v165 == v160)
    {
      goto LABEL_64;
    }
  }

LABEL_106:
  v18 = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
  if (([swift_unknownObjectRetain() shouldCoalesceItems] & 1) != 0 || ((v127 = objc_msgSend(v3, "items"), v128 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v127, v128 >> 62) ? (v129 = _CocoaArrayWrapper.endIndex.getter()) : (v129 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v129 != 1))
  {
    v133 = [v3 shouldCoalesceItems];
    swift_unknownObjectRelease();
    if (v133)
    {
      goto LABEL_117;
    }

    goto LABEL_71;
  }

  v130 = [v3 items];
  v131 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v131 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_143;
    }

LABEL_112:
    if ((v131 & 0xC000000000000001) != 0)
    {
      v132 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_146;
      }

      v132 = *(v131 + 32);
    }

    v66 = v132;
    swift_unknownObjectRelease();

    goto LABEL_70;
  }

  if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_112;
  }

LABEL_143:
  swift_unknownObjectRelease();

LABEL_117:
  v66 = 0;
LABEL_70:
  v102 = *(v42 + 16);
  *(v42 + 16) = v66;

LABEL_71:
  v103 = *(v42 + 16);
  swift_unknownObjectRetain();
  if (!v103)
  {
    if ([v3 shouldCoalesceItems])
    {
      v103 = *(v42 + 16);
      if (v103)
      {
        goto LABEL_72;
      }

LABEL_96:
      swift_unknownObjectRelease();
      v18 = 0;
      goto LABEL_130;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRetain();
    v85 = Logger.logObject.getter();
    v116 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v85, v116))
    {
      v117 = swift_slowAlloc();
      *&v181 = swift_slowAlloc();
      *v117 = 136315650;
      v118 = *v2;
      v119 = _typeName(_:qualified:)();
      v121 = sub_100025CF0(v119, v120, &v181);

      *(v117 + 4) = v121;
      *(v117 + 12) = 2080;
      *(v117 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v181);
      *(v117 + 22) = 2082;
      v122 = [v3 identifier];
      v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v125 = v124;

      v126 = sub_100025CF0(v123, v125, &v181);

      *(v117 + 24) = v126;
      _os_log_impl(&_mh_execute_header, v85, v116, "…Complete (%s.%s) item is nil and %{public}s doesn't coalesce items.", v117, 0x20u);
      swift_arrayDestroy();
    }

    swift_unknownObjectRelease();
LABEL_101:

LABEL_140:
    return;
  }

LABEL_72:
  v104 = [v103 actions];
  if (!v104)
  {
    goto LABEL_96;
  }

  v105 = v104;
  sub_100008294(0, &qword_10015E8F0, FLFollowUpAction_ptr);
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v42 >> 62)
  {
    goto LABEL_127;
  }

  v106 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v106)
  {
    goto LABEL_75;
  }

LABEL_128:

  swift_unknownObjectRelease();
  v18 = 0;
  v2 = v164;
LABEL_129:
  v42 = v167;
LABEL_130:
  if (![objc_opt_self() shouldPreflightNetworkAccessForGroup:v3 item:*(v42 + 16)])
  {

LABEL_139:
    v181 = v171;
    v182 = v173;
    v183 = v172;
    sub_10002698C(p_base_meths, v180);
    sub_100099214(&v181, &OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp);
    v148 = type metadata accessor for TaskPriority();
    v149 = v174;
    (*(*(v148 - 8) + 56))(v174, 1, 1, v148);
    type metadata accessor for MainActor();

    sub_10002698C(p_base_meths, v180);
    v150 = v42;
    v151 = v18;
    swift_unknownObjectRetain();

    v152 = static MainActor.shared.getter();
    v153 = swift_allocObject();
    *(v153 + 16) = v152;
    *(v153 + 24) = &protocol witness table for MainActor;
    *(v153 + 32) = v3;
    *(v153 + 40) = v150;
    *(v153 + 48) = v18;
    *(v153 + 56) = v2;
    v154 = *(p_base_meths + 1);
    *(v153 + 64) = *p_base_meths;
    *(v153 + 80) = v154;
    *(v153 + 96) = *(p_base_meths + 32);
    sub_100094AF4(0, 0, v149, &unk_100115AE0, v153);

    swift_unknownObjectRelease();

    goto LABEL_140;
  }

  v135 = [objc_opt_self() sharedNetworkObserver];
  if (!v135)
  {
    goto LABEL_149;
  }

  v136 = v135;

  v137 = [v136 isNetworkReachable];

  if (v137)
  {
    goto LABEL_139;
  }

  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    *v140 = 0;
    _os_log_impl(&_mh_execute_header, v138, v139, "Presenting Network Alert for Follow Up.", v140, 2u);
  }

  sub_100098CC4(5u);

  v141 = Logger.logObject.getter();
  v142 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    *&v181 = swift_slowAlloc();
    *v143 = 136315394;
    v144 = *v2;
    v145 = _typeName(_:qualified:)();
    v147 = sub_100025CF0(v145, v146, &v181);

    *(v143 + 4) = v147;
    *(v143 + 12) = 2080;
    *(v143 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v181);
    _os_log_impl(&_mh_execute_header, v141, v142, "…Complete (%s.%s)", v143, 0x16u);
    swift_arrayDestroy();
  }

  swift_unknownObjectRelease();

LABEL_14:
}

uint64_t sub_10009884C(uint64_t a1)
{
  swift_getKeyPath();
  *&v13[0] = v1;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16);
    v13[0] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection);
    v13[1] = v3;
    v14 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32);
    sub_100059CA0(v13, v12, &qword_10015E690, &qword_100115788);
    sub_1000B4C08(v1, v13, a1);
    swift_unknownObjectRelease();
    sub_1000068B0(v13, &qword_10015E690, &qword_100115788);
  }

  v4 = v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection;
  v5 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection);
  v6 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8);
  v7 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16);
  v8 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24);
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v9;
  v10 = *(v4 + 32);
  *(v4 + 32) = *(a1 + 32);
  sub_100032660(v5, v6, v7, v8, v10);
  swift_getKeyPath();
  v12[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100098A04(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v3 = *a2;
  sub_100059CA0(v6, v5, &qword_10015E690, &qword_100115788);
  return sub_100099214(v6, &OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight);
}

void sub_100098AAC(uint64_t *a1, unsigned __int8 a2)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_100169658);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = *a1;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100025CF0(v8, v9, &v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100025CF0(0xD00000000000001ELL, 0x8000000100123E90, &v16);
    *(v6 + 22) = 2082;
    if (a2 == 10)
    {
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v12 = sub_1000BBA68(a2);
      v11 = v13;
    }

    v14 = sub_100025CF0(v12, v11, &v16);

    *(v6 + 24) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v5, "...Complete (%s.%s), identifier: '%{public}s'", v6, 0x20u);
    swift_arrayDestroy();
  }
}

void sub_100098CC4(unsigned __int8 a1)
{
  v2 = v1;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_100169658);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = *v2;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100025CF0(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100025CF0(0xD000000000000014, 0x8000000100123E70, &v19);
    *(v7 + 22) = 2082;
    v12 = sub_1000BBA68(a1);
    v14 = sub_100025CF0(v12, v13, &v19);

    *(v7 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s), identifier: '%{public}s'…", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (a1 == 3 && (v15 = [objc_opt_self() currentDevice], v16 = objc_msgSend(v15, "sf_isInternalInstall"), v15, (v16 & 1) == 0))
  {

    sub_10009E380(v2, 3u);
  }

  else
  {
    swift_getKeyPath();
    v19 = v2;
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier) == 6)
    {
      v17 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController);
      *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController) = 0;
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v19 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10009E380(v2, a1);
  }
}

uint64_t sub_10009906C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = v2 + *a1;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  result = sub_100031DF8(*v5, v7, v8, v9, v10);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_100099148@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = v5 + *a2;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *a3 = *v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  v11 = *(v6 + 32);
  *(a3 + 32) = v11;
  return sub_100031DF8(v7, v8, v9, v10, v11);
}

uint64_t sub_100099214(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v2 + *a2;
  v11 = *v9;
  v10 = *(v9 + 8);
  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  v14 = *(v9 + 32);
  if (v14 != 255)
  {
    if (v8 != 255)
    {
      v25.i64[0] = *a1;
      v25.i64[1] = v4;
      v26 = v7;
      v27 = v6;
      v28 = v8;
      v23[0] = v11;
      v23[1] = v10;
      v23[2] = v13;
      v23[3] = v12;
      v24 = v14;
      if (sub_10002BB48(v23, &v25))
      {
        goto LABEL_8;
      }

LABEL_7:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
    }

LABEL_6:
    v15 = *v9;
    v16 = *(v9 + 8);
    v21 = v7;
    v22 = v6;
    v17 = v4;
    sub_100031DF8(v15, v16, v13, v12, v14);
    sub_100059CA0(a1, &v25, &qword_10015E690, &qword_100115788);
    sub_100032660(v11, v10, v13, v12, v14);
    sub_100032660(v5, v17, v21, v22, v8);
    goto LABEL_7;
  }

  if (v8 != 255)
  {
    goto LABEL_6;
  }

LABEL_8:
  v20 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 16) = v20;
  *(v9 + 32) = *(a1 + 32);

  return sub_100032660(v11, v10, v13, v12, v14);
}

uint64_t sub_100099444(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = *(a2 + 32);
  sub_100059CA0(a2, v11, &qword_10015E690, &qword_100115788);
  return sub_100032660(v4, v5, v6, v7, v9);
}

uint64_t sub_1000994DC()
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager);
}

uint64_t sub_100099588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager);
}

uint64_t sub_10009963C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100099778()
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel;
  v2 = *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v3 = *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 8);
  v4 = *(v1 + 16);
  sub_100030A7C(v2);
  return v2;
}

uint64_t sub_100099858(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v2 + *a2;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  return result;
}

uint64_t sub_100099904@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v5 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 8);
  v6 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 16);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_100030A7C(v4);
}

void *sub_1000999C4()
{
  v1 = v0;
  v177 = &type metadata for SecurityResearchDeviceSectionModelProvider;
  v178 = &off_100151E98;
  v175 = xmmword_1001157B0;
  v176 = 3;
  v2 = type metadata accessor for StaticPrimarySettingsListSingleSectionCollectionProvider();
  v3 = swift_allocObject();
  sub_100046A2C(&v175, v3 + 16);
  v177 = v2;
  v178 = &off_10014E308;
  *&v175 = v3;
  sub_10004DED0(&qword_10015E960, &unk_100116A50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001103C0;
  v129 = v4;
  sub_100046A2C(&v175, v4 + 32);
  v5 = type metadata accessor for SupervisedDeviceSectionModelProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 3;
  v173 = v5;
  v174 = &off_100151EC0;
  *&v172 = v6;
  v7 = swift_allocObject();
  sub_100046A2C(&v172, v7 + 16);
  v173 = v2;
  v174 = &off_10014E308;
  *&v172 = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001103C0;
  v128 = v8;
  sub_100046A2C(&v172, v8 + 32);
  v9 = type metadata accessor for RemoteControlSectionModelProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100110E00;
  *(v10 + 32) = 3;
  *(v10 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 48) = &off_100150230;
  *(v10 + 56) = 0;
  swift_unknownObjectWeakAssign();
  v170 = v9;
  v171 = &off_100151D78;
  *&v169 = v10;
  v11 = swift_allocObject();
  sub_100046A2C(&v169, v11 + 16);
  v170 = v2;
  v171 = &off_10014E308;
  *&v169 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001103C0;
  v127 = v12;
  sub_100046A2C(&v169, v12 + 32);
  v13 = sub_10009BA14();
  v14 = type metadata accessor for ComposablePrimarySettingsListSectionProvider();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001157C0;
  *(v15 + 32) = 3;
  *(v15 + 40) = v13;
  v167 = v14;
  v168 = &off_10014E2B8;
  *&v166 = v15;
  v16 = swift_allocObject();
  sub_100046A2C(&v166, v16 + 16);
  v167 = v2;
  v168 = &off_10014E308;
  *&v166 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001103C0;
  v126 = v17;
  sub_100046A2C(&v166, v17 + 32);
  v18 = type metadata accessor for CoreFollowUpSectionModelProvider();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();

  v23 = sub_100023268(v22, 2, v21);

  v165 = &off_100151230;
  v164 = v18;
  *&v163 = v23;
  v24 = swift_allocObject();
  sub_100046A2C(&v163, v24 + 16);
  v165 = &off_10014E308;
  v164 = v2;
  *&v163 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001103C0;
  v125 = v25;
  sub_100046A2C(&v163, v25 + 32);
  v26 = type metadata accessor for CoreFollowUpNoGroupSectionCollectionModelProvider();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  v30 = sub_100023898(v29, &off_100150230, 0);

  v162 = &off_100151148;
  v161 = v26;
  *&v160 = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1001103C0;
  v124 = v31;
  sub_100046A2C(&v160, v31 + 32);
  v32 = *(v26 + 48);
  v33 = *(v26 + 52);
  swift_allocObject();

  v35 = sub_100023898(v34, &off_100150230, 2);

  v159 = &off_100151148;
  v158 = v26;
  *&v157 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1001103C0;
  v123 = v36;
  sub_100046A2C(&v157, v36 + 32);
  v37 = sub_10009BDF0();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1001157D0;
  *(v38 + 32) = 3;
  *(v38 + 40) = v37;
  v156 = &off_10014E2B8;
  v155 = v14;
  *&v154 = v38;
  v39 = swift_allocObject();
  sub_100046A2C(&v154, v39 + 16);
  v156 = &off_10014E308;
  v155 = v2;
  *&v154 = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1001103C0;
  v122 = v40;
  sub_100046A2C(&v154, v40 + 32);
  v41 = *(v26 + 48);
  v42 = *(v26 + 52);
  swift_allocObject();

  v44 = sub_100023898(v43, &off_100150230, 1);

  v152 = v26;
  v153 = &off_100151148;
  *&v151 = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1001103C0;
  v121 = v45;
  sub_100046A2C(&v151, v45 + 32);
  v46 = *(v18 + 48);
  v47 = *(v18 + 52);
  v48 = swift_allocObject();

  v50 = sub_100023268(v49, 4, v48);

  v149 = v18;
  v150 = &off_100151230;
  *&v148 = v50;
  v51 = swift_allocObject();
  sub_100046A2C(&v148, v51 + 16);
  v149 = v2;
  v150 = &off_10014E308;
  *&v148 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1001103C0;
  v120 = v52;
  sub_100046A2C(&v148, v52 + 32);
  v53 = *(v18 + 48);
  v54 = *(v18 + 52);
  v55 = swift_allocObject();

  v57 = sub_100023268(v56, 5, v55);

  v146 = v18;
  v147 = &off_100151230;
  *&v145 = v57;
  v58 = swift_allocObject();
  sub_100046A2C(&v145, v58 + 16);
  v146 = v2;
  v147 = &off_10014E308;
  *&v145 = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1001103C0;
  v119 = v59;
  sub_100046A2C(&v145, v59 + 32);
  v60 = *(v18 + 48);
  v61 = *(v18 + 52);
  v62 = swift_allocObject();

  v64 = sub_100023268(v63, 6, v62);

  v143 = v18;
  v144 = &off_100151230;
  *&v142 = v64;
  v65 = swift_allocObject();
  sub_100046A2C(&v142, v65 + 16);
  v143 = v2;
  v144 = &off_10014E308;
  *&v142 = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1001103C0;
  v118 = v66;
  sub_100046A2C(&v142, v66 + 32);
  v67 = [objc_opt_self() currentDevice];
  v68 = [v67 sf_isInternalInstall];

  if (v68)
  {
    v69 = *(v18 + 48);
    v70 = *(v18 + 52);
    v71 = swift_allocObject();

    v73 = sub_100023268(v72, 7, v71);

    v140 = v18;
    v141 = &off_100151230;
    *&v139 = v73;
    v74 = swift_allocObject();
    sub_100046A2C(&v139, v74 + 16);
    v140 = v2;
    v141 = &off_10014E308;
    *&v139 = v74;
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1001103C0;
    sub_100046A2C(&v139, v75 + 32);
    sub_10004DED0(&qword_10015E980, &qword_100115C58);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1001103C0;
    *(v76 + 32) = v75;
    v77 = v76 + 32;
    v117 = sub_100022C64(v76, sub_100023C38, &qword_10015E990, &qword_100115C68);
    swift_setDeallocating();
    sub_1000068B0(v77, &qword_10015E988, &qword_100115C60);
    swift_deallocClassInstance();
  }

  else
  {
    v117 = &_swiftEmptyArrayStorage;
  }

  v78 = sub_100023CA8();
  v140 = type metadata accessor for ConnectedHeadphonesSectionModelProvider();
  v141 = &off_100150F88;
  *&v139 = v78;
  v79 = swift_allocObject();
  sub_100046A2C(&v139, v79 + 16);
  v140 = v2;
  v141 = &off_10014E308;
  *&v139 = v79;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v139, v116 + 32);
  v80 = sub_10009BFA8(v1);
  v81 = type metadata accessor for StaticPrimarySettingsListSectionProvider();
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1001157E0;
  *(v82 + 32) = 3;
  *(v82 + 40) = v80;
  v137 = v81;
  v138 = &off_10014E2E0;
  *&v136 = v82;
  v83 = swift_allocObject();
  sub_100046A2C(&v136, v83 + 16);
  v137 = v2;
  v138 = &off_10014E308;
  *&v136 = v83;
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v136, v115 + 32);
  v84 = sub_10009C690();
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1001157F0;
  *(v85 + 32) = 3;
  *(v85 + 40) = v84;
  v134 = v14;
  v135 = &off_10014E2B8;
  *&v133 = v85;
  v86 = swift_allocObject();
  sub_100046A2C(&v133, v86 + 16);
  v134 = v2;
  v135 = &off_10014E308;
  *&v133 = v86;
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v133, v114 + 32);
  v87 = sub_10009CE6C();
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_100115800;
  *(v88 + 32) = 3;
  *(v88 + 40) = v87;
  v131 = v81;
  v132 = &off_10014E2E0;
  *&v130 = v88;
  v89 = swift_allocObject();
  sub_100046A2C(&v130, v89 + 16);
  v131 = v2;
  v132 = &off_10014E308;
  *&v130 = v89;
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v130, v113 + 32);
  v90 = sub_10009D0B0();
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_100115810;
  *(v91 + 32) = 3;
  *(v91 + 40) = v90;
  v131 = v81;
  v132 = &off_10014E2E0;
  *&v130 = v91;
  v92 = swift_allocObject();
  sub_100046A2C(&v130, v92 + 16);
  v131 = v2;
  v132 = &off_10014E308;
  *&v130 = v92;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v130, v93 + 32);
  v94 = sub_10009D3E0();
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_100115820;
  *(v95 + 32) = 259;
  *(v95 + 40) = v94;
  v131 = v81;
  v132 = &off_10014E2E0;
  *&v130 = v95;
  v96 = swift_allocObject();
  sub_100046A2C(&v130, v96 + 16);
  v131 = v2;
  v132 = &off_10014E308;
  *&v130 = v96;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v130, v97 + 32);
  v131 = &type metadata for PrimarySettingsListItemIdentifier;
  v132 = &off_10014D978;
  v98 = swift_allocObject();
  *&v130 = v98;
  *(v98 + 16) = 45;
  *(v98 + 24) = 0;
  *(v98 + 32) = 0;
  *(v98 + 40) = 0;
  *(v98 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v130, v99 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1001103C0;
  *(v100 + 32) = v99;
  v101 = v100 + 32;
  v102 = sub_100022C64(v100, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_1000068B0(v101, &qword_10015E978, &qword_100115C50);
  swift_deallocClassInstance();
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_100115830;
  *(v103 + 32) = 3;
  *(v103 + 40) = v102;
  v131 = v81;
  v132 = &off_10014E2E0;
  *&v130 = v103;
  v104 = swift_allocObject();
  sub_100046A2C(&v130, v104 + 16);
  v131 = v2;
  v132 = &off_10014E308;
  *&v130 = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v130, v105 + 32);
  v106 = sub_10009D698(v1);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_100115840;
  *(v107 + 32) = 3;
  *(v107 + 40) = v106;
  v131 = v81;
  v132 = &off_10014E2E0;
  *&v130 = v107;
  v108 = swift_allocObject();
  sub_100046A2C(&v130, v108 + 16);
  v131 = v2;
  v132 = &off_10014E308;
  *&v130 = v108;
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v130, v109 + 32);
  sub_10004DED0(&qword_10015E980, &qword_100115C58);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_100115850;
  *(v110 + 32) = v129;
  *(v110 + 40) = v128;
  *(v110 + 48) = v127;
  *(v110 + 56) = v126;
  *(v110 + 64) = v125;
  *(v110 + 72) = v124;
  *(v110 + 80) = v123;
  *(v110 + 88) = v122;
  *(v110 + 96) = v121;
  *(v110 + 104) = v120;
  *(v110 + 112) = v119;
  *(v110 + 120) = v118;
  *(v110 + 128) = v117;
  *(v110 + 136) = v116;
  *(v110 + 144) = v115;
  *(v110 + 152) = v114;
  *(v110 + 160) = v113;
  *(v110 + 168) = v93;
  *(v110 + 176) = v97;
  *(v110 + 184) = v105;
  *(v110 + 192) = v109;
  v111 = sub_100022C64(v110, sub_100023C38, &qword_10015E990, &qword_100115C68);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E988, &qword_100115C60);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v111;
}

uint64_t sub_10009A8A4(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  *&v19[0] = v1;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v5 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
  v19[2] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
  v19[3] = v5;
  v19[4] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
  v6 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
  v19[0] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v19[1] = v6;
  sub_100063D94(v19, &v14);
  v7 = sub_10006D57C(a1, v19);
  sub_100063DF0(v19);
  if (!v7)
  {
    v8 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_invalidationSubject);
    *&v14 = "System State Snapshot Changed";
    *(&v14 + 1) = 29;
    LOBYTE(v15) = 2;
    PassthroughSubject.send(_:)();
  }

  v9 = v4[3];
  v16 = v4[2];
  v17 = v9;
  v18 = v4[4];
  v10 = v4[1];
  v14 = *v4;
  v15 = v10;
  v11 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v11;
  v4[4] = *(a1 + 64);
  v12 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v12;
  return sub_100063DF0(&v14);
}

uint64_t sub_10009A9F4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v12[0] = v3;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v12[0] = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v5 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
  v7 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
  v6 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
  v12[3] = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
  v12[4] = v5;
  v12[1] = v7;
  v12[2] = v6;
  v8 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
  a2[2] = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
  a2[3] = v8;
  a2[4] = v4[4];
  v9 = v4[1];
  *a2 = *v4;
  a2[1] = v9;
  return sub_100063D94(v12, &v11);
}

uint64_t sub_10009AADC(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v7[4] = a1[4];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *a2;
  sub_100063D94(v7, &v6);
  return sub_10009AB30(v7);
}

uint64_t sub_10009AB30(unint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
  v4 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
  v10[3] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
  v10[4] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v10[1] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
  v10[2] = v3;
  v10[0] = v5;
  sub_100063D94(v10, v9);
  v6 = sub_10006D57C(v10, a1);
  sub_100063DF0(v10);
  if (v6)
  {
    return sub_10009A8A4(a1);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v9[0] = v1;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100063DF0(a1);
}

uint64_t sub_10009AC8C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = v5 + *a2;
  result = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10009AD4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_10009AE14()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 setLaunchHasCompleted];
}

uint64_t sub_10009AE74()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_invalidationSubject);
    PassthroughSubject.send(_:)();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10009AF2C();
  }

  return result;
}

uint64_t sub_10009AF2C()
{
  v0 = type metadata accessor for OSSignpostID();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = *(v26 + 64);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;

  sub_100094AF4(0, 0, v12, &unk_100115D60, v16);

  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000659C(v4, qword_100169718);
  (*(v5 + 16))(v8, v17, v4);
  static OSSignpostID.exclusive.getter();
  v18 = swift_slowAlloc();
  *v18 = 0;
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  v21 = OSSignpostID.rawValue.getter();
  v25 = v4;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v20, v21, "PrimarySettingsListDataModelSnapshotProviding.performPostApplicationLaunchSetup()", "", v18, 2u);
  sub_1000A2D88();
  v22 = static os_signpost_type_t.end.getter();
  v23 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v22, v23, "PrimarySettingsListDataModelSnapshotProviding.performPostApplicationLaunchSetup()", "", v18, 2u);

  (*(v26 + 8))(v3, v27);
  return (*(v5 + 8))(v8, v25);
}

void sub_10009B2E0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 launchHasCompleted];

  if (v1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_invalidationSubject);
      PassthroughSubject.send(_:)();
    }
  }
}

uint64_t sub_10009B3A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000659C(v6, qword_1001696D0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136446210;
    v11 = StaticString.description.getter();
    v13 = sub_100025CF0(v11, v12, &v23);

    *(v9 + 4) = v13;
    sub_10000665C(v10);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Requesting new snapshot for data model due to invalidation.", v17, 2u);
    }

    v18 = sub_10001A468();
    v20 = v19;
    v22 = v21;

    *a2 = v18;
    a2[1] = v20;
    a2[2] = v22;
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 1;
  }

  return result;
}

uint64_t sub_10009B5D0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_cancellables;
  swift_beginAccess();
  v32 = v2;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + v2);
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_10000A520(&unk_10015D9E0, &type metadata accessor for AnyCancellable);
    result = Set.Iterator.init(_cocoa:)();
    v3 = v34;
    v6 = v35;
    v7 = v36;
    v8 = v37;
    v9 = v38;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);
    v13 = *(v1 + v2);

    v8 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_1000813A0();
      v19 = *(v1 + v32);
      *(v1 + v32) = &_swiftEmptySetSingleton;

      sub_1000068B0(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingEngagementLinkData, &qword_10015EB40, &qword_1001161A0);
      sub_100032660(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 8), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 16), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 24), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 32));
      sub_100032660(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32));
      sub_100032660(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 8), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 16), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 24), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 32));

      sub_100032660(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp + 8), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp + 16), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp + 24), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp + 32));
      v20 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager);

      v21 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 8);
      v22 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 16);
      sub_100030AC8(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel));

      v23 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___connectedHeadphonesSectionModelProvider);

      v24 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___sectionCollectionDataModelProviders);

      v25 = *(v1 + v32);

      v26 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_invalidationSubject);

      v27 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_systemStateSnapshotProvider);

      v28 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
      v33[2] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
      v33[3] = v28;
      v33[4] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
      v29 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
      v33[0] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
      v33[1] = v29;
      sub_100063DF0(v33);
      sub_1000122B4(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__selectionDelegate);
      sub_1000122B4(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__updateDelegate);
      v30 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel___observationRegistrar;
      v31 = type metadata accessor for ObservationRegistrar();
      (*(*(v31 - 8) + 8))(v1 + v30, v31);
      return v1;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v8 = v16;
      v9 = v17;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (*&v33[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v7 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009B9B4()
{
  sub_10009B5D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_10009BA14()
{
  v0 = sub_10009BC40();
  v1 = type metadata accessor for StaticPrimarySettingsListSectionProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001157C0;
  *(v2 + 32) = 3;
  *(v2 + 40) = v0;
  v27 = v1;
  v28 = &off_10014E2E0;
  *&v26 = v2;
  sub_10004DED0(&qword_10015E9B8, &qword_100115C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v26, inited + 32);
  v4 = type metadata accessor for CoreFollowUpSectionModelProvider();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();

  v9 = sub_100023268(v8, 0, v7);

  v24 = v4;
  v25 = &off_100151230;
  *&v23 = v9;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v23, v10 + 32);
  v11 = *(v4 + 48);
  v12 = *(v4 + 52);
  v13 = swift_allocObject();

  v15 = sub_100023268(v14, 1, v13);

  v21 = v4;
  v22 = &off_100151230;
  *&v20 = v15;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v20, v16 + 32);
  sub_10004DED0(&qword_10015E9C0, &qword_100115C98);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1001103E0;
  *(v17 + 32) = inited;
  *(v17 + 40) = v10;
  *(v17 + 48) = v16;
  v18 = sub_100022C64(v17, sub_1000235E8, &qword_10015E9D0, &qword_100115CA8);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E9C8, &qword_100115CA0);
  swift_arrayDestroy();
  return v18;
}

void *sub_10009BC40()
{
  v0 = type metadata accessor for PrimaryAppleAccountListItemProvider();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 6;
  v17 = v0;
  v18 = &off_100151D50;
  *&v16 = v1;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v16, inited + 32);
  v3 = type metadata accessor for FamilyListItemProvider();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();

  v8 = sub_100022B88(v7, v6);

  v14 = v3;
  v15 = &off_100151B58;
  *&v13 = v8;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v13, v9 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1001103D0;
  *(v10 + 32) = inited;
  *(v10 + 40) = v9;
  v11 = sub_100022C64(v10, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  return v11;
}

void *sub_10009BDF0()
{
  v0 = type metadata accessor for ManagedAppleAccountSectionModelProvider();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001157D0;
  *(v1 + 32) = 3;
  v17 = v0;
  v18 = &off_100151C70;
  *&v16 = v1;
  sub_10004DED0(&qword_10015E9B8, &qword_100115C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v16, inited + 32);
  v3 = type metadata accessor for CoreFollowUpSectionModelProvider();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();

  v8 = sub_100023268(v7, 3, v6);

  v14 = v3;
  v15 = &off_100151230;
  *&v13 = v8;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v13, v9 + 32);
  sub_10004DED0(&qword_10015E9C0, &qword_100115C98);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1001103D0;
  *(v10 + 32) = inited;
  *(v10 + 40) = v9;
  v11 = sub_100022C64(v10, sub_1000235E8, &qword_10015E9D0, &qword_100115CA8);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E9C8, &qword_100115CA0);
  swift_arrayDestroy();
  return v11;
}

void *sub_10009BFA8(uint64_t a1)
{
  v2 = type metadata accessor for AirplaneModeListItemProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 6;
  if (qword_10015AB58 != -1)
  {
    v53 = v3;
    swift_once();
    v3 = v53;
  }

  v4 = qword_100169810;
  *(v3 + 56) = qword_100169810;
  *(v3 + 64) = 0;
  v83 = v2;
  v84 = &off_100151640;
  *&v82 = v3;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  v56 = inited;
  sub_100046A2C(&v82, inited + 32);
  v6 = type metadata accessor for WiFiListItemProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 3;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 6;
  *(v7 + 72) = 0;
  *(v7 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 88) = &off_100150230;
  swift_unknownObjectWeakAssign();
  v80 = v6;
  v81 = &off_1001521A8;
  *&v79 = v7;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1001103C0;
  v55 = v8;
  sub_100046A2C(&v79, v8 + 32);
  v9 = type metadata accessor for EthernetListItemProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = 4;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 6;
  *(v10 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 64) = &off_100150230;
  *(v10 + 72) = 0;
  swift_unknownObjectWeakAssign();
  v78 = &off_1001519F0;
  v77 = v9;
  *&v76 = v10;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1001103C0;
  v54 = v11;
  sub_100046A2C(&v76, v11 + 32);
  v12 = type metadata accessor for BluetoothListItemProvider();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v4;

  v18 = sub_10002437C(v17, v15);

  v75 = &off_100151720;
  v74 = v12;
  *&v73 = v18;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v73, v19 + 32);
  v20 = type metadata accessor for CellularDataListItemProvider();
  v21 = swift_allocObject();
  *(v21 + 16) = 6;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  *(v21 + 48) = 6;
  v72 = &off_100151860;
  v71 = v20;
  *&v70 = v21;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v70, v22 + 32);
  v23 = type metadata accessor for PersonalHotspotListItemProvider();
  v24 = swift_allocObject();
  *(v24 + 16) = 7;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 40) = 0;
  *(v24 + 48) = 6;
  v68 = v23;
  v69 = &off_100151D28;
  *&v67 = v24;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v67, v25 + 32);
  v65 = &type metadata for PrimarySettingsListItemIdentifier;
  v66 = &off_10014D978;
  v26 = swift_allocObject();
  *&v64 = v26;
  *(v26 + 16) = 30;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 40) = 0;
  *(v26 + 48) = 6;
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v64, v27 + 32);
  v28 = type metadata accessor for VPNListItemProvider();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();

  v33 = sub_1000248B0(v32, v31);

  v62 = v28;
  v63 = &off_100151EE8;
  *&v61 = v33;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v61, v34 + 32);
  v35 = [objc_opt_self() currentDevice];
  v36 = [v35 userInterfaceIdiom];

  if (v36 == 1)
  {
    v37 = type metadata accessor for ClassroomListItemProvider();
    v38 = swift_allocObject();
    v59 = v37;
    v60 = &off_100151950;
    *&v58 = sub_1000A423C(a1, v38);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1001103C0;
    sub_100046A2C(&v58, v39 + 32);
    sub_10004DED0(&qword_10015E970, &qword_100115C48);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_1001103C0;
    *(v40 + 32) = v39;
    v41 = v40 + 32;
    v42 = sub_100022C64(v40, sub_100022F00, &qword_10015E998, &qword_100115C70);
    swift_setDeallocating();
    sub_1000068B0(v41, &qword_10015E978, &qword_100115C50);
  }

  else
  {
    v42 = &_swiftEmptyArrayStorage;
  }

  v43 = type metadata accessor for SatelliteListItemProvider();
  v44 = objc_allocWithZone(v43);
  v45 = &v44[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_id];
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *v45 = 10;
  *(v45 + 1) = 0;
  v45[32] = 6;
  *&v44[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_invalidator + 8] = 0;
  v46 = swift_unknownObjectWeakInit();
  v47 = &v44[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState];
  *v47 = 0;
  *(v47 + 1) = 0;
  v47[16] = 2;
  *&v44[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityStateProvider] = 0;
  *&v44[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_updateTask] = 0;
  *(v46 + 8) = &off_100150230;
  swift_unknownObjectWeakAssign();
  v57.receiver = v44;
  v57.super_class = v43;
  v48 = objc_msgSendSuper2(&v57, "init");
  v59 = v43;
  v60 = &off_100151540;
  *&v58 = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v58, v49 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100115860;
  *(v50 + 32) = v56;
  *(v50 + 40) = v55;
  *(v50 + 48) = v54;
  *(v50 + 56) = v19;
  *(v50 + 64) = v22;
  *(v50 + 72) = v25;
  *(v50 + 80) = v27;
  *(v50 + 88) = v34;
  *(v50 + 96) = v42;
  *(v50 + 104) = v49;
  v51 = sub_100022C64(v50, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v51;
}

void *sub_10009C690()
{
  v0 = type metadata accessor for GeneralSettingsListItemProvider();
  v1 = objc_allocWithZone(v0);

  v3 = sub_100024D8C(v2, v1);

  v22 = v0;
  v23 = &off_100151BD0;
  *&v21 = v3;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v21, inited + 32);
  v19 = &type metadata for PrimarySettingsListItemIdentifier;
  v20 = &off_10014D978;
  v5 = swift_allocObject();
  *&v18 = v5;
  *(v5 + 16) = 21;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 6;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v18, v6 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1001103D0;
  *(v7 + 32) = inited;
  *(v7 + 40) = v6;
  v8 = sub_100022C64(v7, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  v9 = type metadata accessor for StaticPrimarySettingsListSectionProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001157F0;
  *(v10 + 32) = 3;
  *(v10 + 40) = v8;
  v22 = v9;
  v23 = &off_10014E2E0;
  *&v21 = v10;
  sub_10004DED0(&qword_10015E9B8, &qword_100115C90);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v21, v11 + 32);
  v12 = sub_10009C9A4();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001157F0;
  *(v13 + 32) = 259;
  *(v13 + 40) = v12;
  v19 = v9;
  v20 = &off_10014E2E0;
  *&v18 = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v18, v14 + 32);
  sub_10004DED0(&qword_10015E9C0, &qword_100115C98);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1001103D0;
  *(v15 + 32) = v11;
  *(v15 + 40) = v14;
  v16 = sub_100022C64(v15, sub_1000235E8, &qword_10015E9D0, &qword_100115CA8);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E9C8, &qword_100115CA0);
  swift_arrayDestroy();
  return v16;
}

void *sub_10009C9A4()
{
  v57 = &type metadata for PrimarySettingsListItemIdentifier;
  v58 = &off_10014D978;
  v0 = swift_allocObject();
  *&v56 = v0;
  *(v0 + 16) = 17;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v56, inited + 32);
  v1 = type metadata accessor for CameraSettingsListItemProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = 35;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 6;
  v54 = v1;
  v55 = &off_100151838;
  *&v53 = v2;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v53, v24 + 32);
  v51 = &type metadata for PrimarySettingsListItemIdentifier;
  v52 = &off_10014D978;
  v3 = swift_allocObject();
  *&v50 = v3;
  *(v3 + 16) = 16;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 6;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v50, v23 + 32);
  v48 = &type metadata for PrimarySettingsListItemIdentifier;
  v49 = &off_10014D978;
  v4 = swift_allocObject();
  *&v47 = v4;
  *(v4 + 16) = 18;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 6;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v47, v22 + 32);
  v45 = &type metadata for PrimarySettingsListItemIdentifier;
  v46 = &off_10014D978;
  v5 = swift_allocObject();
  *&v44 = v5;
  *(v5 + 16) = 19;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 6;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v44, v21 + 32);
  v42 = &type metadata for PrimarySettingsListItemIdentifier;
  v43 = &off_10014D978;
  v6 = swift_allocObject();
  *&v41 = v6;
  *(v6 + 16) = 20;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 6;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v41, v7 + 32);
  v39 = &type metadata for PrimarySettingsListItemIdentifier;
  v40 = &off_10014D978;
  v8 = swift_allocObject();
  *&v38 = v8;
  *(v8 + 16) = 26;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 6;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v38, v9 + 32);
  v36 = &type metadata for PrimarySettingsListItemIdentifier;
  v37 = &off_10014D978;
  v10 = swift_allocObject();
  *&v35 = v10;
  *(v10 + 16) = 25;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 6;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v35, v11 + 32);
  v33 = &type metadata for PrimarySettingsListItemIdentifier;
  v34 = &off_10014D978;
  v12 = swift_allocObject();
  *&v32 = v12;
  *(v12 + 16) = 24;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 6;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v32, v13 + 32);
  v30 = &type metadata for PrimarySettingsListItemIdentifier;
  v31 = &off_10014D978;
  v14 = swift_allocObject();
  *&v29 = v14;
  *(v14 + 16) = 23;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 6;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v29, v15 + 32);
  v27 = &type metadata for PrimarySettingsListItemIdentifier;
  v28 = &off_10014D978;
  v16 = swift_allocObject();
  *&v26 = v16;
  *(v16 + 16) = 22;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 6;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v26, v17 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10010FBE0;
  *(v18 + 32) = inited;
  *(v18 + 40) = v24;
  *(v18 + 48) = v23;
  *(v18 + 56) = v22;
  *(v18 + 64) = v21;
  *(v18 + 72) = v7;
  *(v18 + 80) = v9;
  *(v18 + 88) = v11;
  *(v18 + 96) = v13;
  *(v18 + 104) = v15;
  *(v18 + 112) = v17;
  v19 = sub_100022C64(v18, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v19;
}

void *sub_10009CE6C()
{
  v21 = &type metadata for PrimarySettingsListItemIdentifier;
  v22 = &off_10014D978;
  v0 = swift_allocObject();
  *&v20 = v0;
  *(v0 + 16) = 11;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v20, inited + 32);
  v18 = &type metadata for PrimarySettingsListItemIdentifier;
  v19 = &off_10014D978;
  v2 = swift_allocObject();
  *&v17 = v2;
  *(v2 + 16) = 12;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 6;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v17, v3 + 32);
  v15 = &type metadata for PrimarySettingsListItemIdentifier;
  v16 = &off_10014D978;
  v4 = swift_allocObject();
  *&v14 = v4;
  *(v4 + 16) = 13;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 6;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v14, v5 + 32);
  v12 = &type metadata for PrimarySettingsListItemIdentifier;
  v13 = &off_10014D978;
  v6 = swift_allocObject();
  *&v11 = v6;
  *(v6 + 16) = 14;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 6;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v11, v7 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1001103F0;
  *(v8 + 32) = inited;
  *(v8 + 40) = v3;
  *(v8 + 48) = v5;
  *(v8 + 56) = v7;
  v9 = sub_100022C64(v8, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  return v9;
}

void *sub_10009D0B0()
{
  v22 = &type metadata for PrimarySettingsListItemIdentifier;
  v23 = &off_10014D978;
  v0 = swift_allocObject();
  *&v21 = v0;
  *(v0 + 16) = 27;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v21, inited + 32);
  if ([objc_opt_self() deviceSupportsSOS])
  {
    v19 = &type metadata for PrimarySettingsListItemIdentifier;
    v20 = &off_10014D978;
    v2 = swift_allocObject();
    *&v18 = v2;
    *(v2 + 16) = 28;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 6;
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_1001103C0;
    sub_100046A2C(&v18, v3 + 32);
    sub_10004DED0(&qword_10015E970, &qword_100115C48);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1001103C0;
    *(v4 + 32) = v3;
    v5 = v4 + 32;
    v6 = sub_100022C64(v4, sub_100022F00, &qword_10015E998, &qword_100115C70);
    swift_setDeallocating();
    sub_1000068B0(v5, &qword_10015E978, &qword_100115C50);
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

  v7 = type metadata accessor for ExposureNotificationsItemProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = 29;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 6;
  *(v8 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 80) = 0;
  *(v8 + 64) = &off_100150230;
  *(v8 + 72) = 0;
  swift_unknownObjectWeakAssign();
  v19 = v7;
  v20 = &off_100151A90;
  *&v18 = v8;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v18, v9 + 32);
  v16 = &type metadata for PrimarySettingsListItemIdentifier;
  v17 = &off_10014D978;
  v10 = swift_allocObject();
  *&v15 = v10;
  *(v10 + 16) = 31;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 6;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v15, v11 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1001103F0;
  *(v12 + 32) = inited;
  *(v12 + 40) = v6;
  *(v12 + 48) = v9;
  *(v12 + 56) = v11;
  v13 = sub_100022C64(v12, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  return v13;
}

void *sub_10009D3E0()
{
  v28 = &type metadata for PrimarySettingsListItemIdentifier;
  v29 = &off_10014D978;
  v0 = swift_allocObject();
  *&v27 = v0;
  *(v0 + 16) = 36;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v27, inited + 32);
  v2 = type metadata accessor for iCloudListItemProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 37;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 6;
  v25 = v2;
  v26 = &off_10014DBB8;
  *&v24 = v3;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v24, v4 + 32);
  v5 = type metadata accessor for WalletAndApplePayOrPaymentAndContactlessListItemProvider();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();

  v10 = sub_100025378(v9, v8);

  v22 = v5;
  v23 = &off_100151F60;
  *&v21 = v10;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v21, v11 + 32);
  v12 = type metadata accessor for ClassKitListItemProvider();
  v13 = swift_allocObject();
  *(v13 + 16) = 34;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 6;
  *(v13 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 64) = &off_100150230;
  *(v13 + 72) = &_swiftEmptyArrayStorage;
  swift_unknownObjectWeakAssign();
  v19 = v12;
  v20 = &off_100151888;
  *&v18 = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v18, v14 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1001103F0;
  *(v15 + 32) = inited;
  *(v15 + 40) = v4;
  *(v15 + 48) = v11;
  *(v15 + 56) = v14;
  v16 = sub_100022C64(v15, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  return v16;
}

void *sub_10009D698(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 sf_isDeveloperModeEnabled];

  if (v4)
  {
    v90 = &type metadata for PrimarySettingsListItemIdentifier;
    v91 = &off_10014D978;
    v5 = swift_allocObject();
    *&v89 = v5;
    *(v5 + 16) = 38;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 6;
    sub_10004DED0(&qword_10015E968, &qword_100115C40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001103C0;
    sub_100046A2C(&v89, inited + 32);
    sub_10004DED0(&qword_10015E970, &qword_100115C48);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1001103C0;
    *(v7 + 32) = inited;
    v8 = v7 + 32;
    v9 = sub_100022C64(v7, sub_100022F00, &qword_10015E998, &qword_100115C70);
    swift_setDeallocating();
    sub_1000068B0(v8, &qword_10015E978, &qword_100115C50);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v10 = [v2 currentDevice];
  v11 = [v10 sf_isCarrierInstall];

  if (!v11)
  {
    goto LABEL_10;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  cellularDataCapability = MobileGestalt_get_cellularDataCapability();

  if ((cellularDataCapability & 1) == 0)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v15 = result;
      telephonyCapability = MobileGestalt_get_telephonyCapability();

      if (telephonyCapability)
      {
        goto LABEL_9;
      }

LABEL_10:
      v74 = &_swiftEmptyArrayStorage;
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return result;
  }

LABEL_9:
  v90 = &type metadata for PrimarySettingsListItemIdentifier;
  v91 = &off_10014D978;
  v17 = swift_allocObject();
  *&v89 = v17;
  *(v17 + 16) = 39;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v89, v18 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1001103C0;
  *(v19 + 32) = v18;
  v20 = v19 + 32;
  v74 = sub_100022C64(v19, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_1000068B0(v20, &qword_10015E978, &qword_100115C50);
LABEL_11:
  v21 = [v2 currentDevice];
  v22 = [v21 sf_isInternalInstall];

  v75 = v9;
  if (v22)
  {
    v90 = &type metadata for PrimarySettingsListItemIdentifier;
    v91 = &off_10014D978;
    v23 = swift_allocObject();
    *&v89 = v23;
    *(v23 + 16) = 40;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    *(v23 + 40) = 0;
    *(v23 + 48) = 6;
    sub_10004DED0(&qword_10015E968, &qword_100115C40);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1001103C0;
    sub_100046A2C(&v89, v24 + 32);
    sub_10004DED0(&qword_10015E970, &qword_100115C48);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_1001103C0;
    *(v25 + 32) = v24;
    v26 = v25 + 32;
    v73 = sub_100022C64(v25, sub_100022F00, &qword_10015E998, &qword_100115C70);
    swift_setDeallocating();
    sub_1000068B0(v26, &qword_10015E978, &qword_100115C50);
  }

  else
  {
    v73 = &_swiftEmptyArrayStorage;
  }

  v27 = objc_opt_self();
  v28 = [v27 standardUserDefaults];
  v29 = type metadata accessor for DefaultsObservingPrimarySettingsListItemProvider();
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver];
  *v31 = 0u;
  v31[1] = 0u;
  v32 = &v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id];
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *v32 = 41;
  *(v32 + 1) = 0;
  v32[32] = 6;
  v33 = &v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_invalidator];
  *v33 = a1;
  v33[1] = &off_100150230;
  v34 = &v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey];
  *v34 = 0xD000000000000014;
  v34[1] = 0x80000001001224F0;
  *&v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults] = v28;
  v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shownWhen] = 1;

  v35 = v28;
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 BOOLForKey:v36];

  v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow] = v37;
  v88.receiver = v30;
  v88.super_class = v29;
  v38 = objc_msgSendSuper2(&v88, "init");

  v90 = v29;
  v91 = &off_10014E218;
  *&v89 = v38;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v89, v72 + 32);
  v39 = [v27 standardUserDefaults];
  v40 = objc_allocWithZone(v29);
  v41 = &v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver];
  *v41 = 0u;
  v41[1] = 0u;
  v42 = &v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id];
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *v42 = 42;
  *(v42 + 1) = 0;
  v42[32] = 6;
  v43 = &v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_invalidator];
  *v43 = a1;
  v43[1] = &off_100150230;
  v44 = &v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey];
  *v44 = 0xD00000000000001ALL;
  v44[1] = 0x8000000100122510;
  *&v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults] = v39;
  v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shownWhen] = 1;

  v45 = v39;
  v46 = String._bridgeToObjectiveC()();
  LOBYTE(v35) = [v45 BOOLForKey:v46];

  v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow] = v35;
  v84.receiver = v40;
  v84.super_class = v29;
  v47 = objc_msgSendSuper2(&v84, "init");

  v86 = v29;
  v87 = &off_10014E218;
  *&v85 = v47;
  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v85, v71 + 32);
  v48 = [v27 standardUserDefaults];
  v49 = objc_allocWithZone(v29);
  v50 = &v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver];
  *v50 = 0u;
  v50[1] = 0u;
  v51 = &v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id];
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  *v51 = 43;
  *(v51 + 1) = 0;
  v51[32] = 6;
  v52 = &v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_invalidator];
  *v52 = a1;
  v52[1] = &off_100150230;
  v53 = &v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey];
  *v53 = 0xD000000000000015;
  v53[1] = 0x8000000100122530;
  *&v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults] = v48;
  v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shownWhen] = 1;

  v54 = v48;
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 BOOLForKey:v55];

  v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow] = v56;
  v80.receiver = v49;
  v80.super_class = v29;
  v57 = objc_msgSendSuper2(&v80, "init");

  v83 = &off_10014E218;
  v82 = v29;
  *&v81 = v57;
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v81, v58 + 32);
  v59 = [v27 standardUserDefaults];
  v60 = objc_allocWithZone(v29);
  v61 = &v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver];
  *v61 = 0u;
  v61[1] = 0u;
  v62 = &v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id];
  *(v62 + 2) = 0;
  *(v62 + 3) = 0;
  *v62 = 44;
  *(v62 + 1) = 0;
  v62[32] = 6;
  v63 = &v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_invalidator];
  *v63 = a1;
  v63[1] = &off_100150230;
  v64 = &v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey];
  *v64 = 0xD000000000000019;
  v64[1] = 0x8000000100122550;
  *&v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults] = v59;
  v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shownWhen] = 1;

  v65 = v59;
  v66 = String._bridgeToObjectiveC()();
  LOBYTE(v59) = [v65 BOOLForKey:v66];

  v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow] = v59;
  v76.receiver = v60;
  v76.super_class = v29;
  v67 = objc_msgSendSuper2(&v76, "init");

  v79 = &off_10014E218;
  v78 = v29;
  *&v77 = v67;
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v77, v68 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_100115870;
  *(v69 + 32) = v75;
  *(v69 + 40) = v74;
  *(v69 + 48) = v73;
  *(v69 + 56) = v72;
  *(v69 + 64) = v71;
  *(v69 + 72) = v58;
  *(v69 + 80) = v68;
  v70 = sub_100022C64(v69, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  return v70;
}

void sub_10009E130(uint64_t *a1, uint64_t a2)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_100169658);

  sub_100059CA0(a2, v20, &qword_10015E690, &qword_100115788);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  sub_1000068B0(a2, &qword_10015E690, &qword_100115788);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = *a1;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100025CF0(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_100025CF0(0xD000000000000024, 0x8000000100123F70, &v19);
    *(v7 + 14) = v12;
    *(v7 + 22) = 2082;
    v13 = *(a2 + 32);
    if (v13 == 255)
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v14 = *(a2 + 16);
      v20[0] = *a2;
      v20[1] = v14;
      v21 = v13;
      v15 = sub_100026A58(v12);
      v17 = v16;
    }

    v18 = sub_100025CF0(v15, v17, &v19);

    *(v7 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "...Complete (%s.%s), identifier: '%{public}s'", v7, 0x20u);
    swift_arrayDestroy();
  }
}

void sub_10009E380(uint64_t *a1, unsigned __int8 a2)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_100169658);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = *a1;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100025CF0(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100025CF0(0xD000000000000014, 0x8000000100123E70, &v15);
    *(v6 + 22) = 2082;
    v11 = sub_1000BBA68(a2);
    v13 = sub_100025CF0(v11, v12, &v15);

    *(v6 + 24) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v5, "...Complete (%s.%s), identifier: '%{public}s'", v6, 0x20u);
    swift_arrayDestroy();
  }
}

void sub_10009E578(uint64_t *a1)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169658);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = *a1;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100025CF0(0xD000000000000017, 0x8000000100123FA0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v3, "…Complete (%s.%s)", v4, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10009E740(uint64_t *a1)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169658);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = *a1;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100025CF0(0xD000000000000041, 0x8000000100123E20, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v3, "…Complete (%s.%s)", v4, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10009E908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000659C(v9, qword_100169658);
  (*(v5 + 16))(v8, a3, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    sub_10000A520(&qword_10015E918, &type metadata accessor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_100025CF0(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Done opening URL: %s", v12, 0xCu);
    sub_10000665C(v13);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10009EB78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_10009EC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[37] = a4;
  v5[38] = v4;
  v5[35] = a2;
  v5[36] = a3;
  v5[34] = a1;
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v5[39] = v6;
  v7 = *(v6 - 8);
  v5[40] = v7;
  v8 = *(v7 + 64) + 15;
  v5[41] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[42] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[43] = v10;
  v5[44] = v9;

  return _swift_task_switch(sub_10009ED20, v10, v9);
}

uint64_t sub_10009ED20()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = [objc_allocWithZone(FLTopLevelViewModel) initWithBundleIdentifier:FLFollowUpPreferencesBundleIdentifier clientIdentifier:0];
  v0[45] = v4;
  sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.userInteractive(_:), v3);
  v5 = static OS_dispatch_queue.global(qos:)();
  v0[46] = v5;
  (*(v2 + 8))(v1, v3);
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_10009EEF4;
  v6 = swift_continuation_init();
  v0[17] = sub_10004DED0(&unk_10015FA00, &qword_100115DA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009F7E8;
  v0[13] = &unk_1001503E8;
  v0[14] = v6;
  [v4 sapp_groupsWithQueue:v5 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10009EEF4()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *v0;

  return _swift_task_switch(sub_10009EFFC, v2, v1);
}

id sub_10009EFFC()
{
  v88 = v0;
  v1 = *(v0 + 264);

  if (v1 >> 62)
  {
    goto LABEL_49;
  }

  v83 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v83)
  {
LABEL_50:
    v34 = *(v0 + 336);

    if (qword_10015AAA0 == -1)
    {
      goto LABEL_51;
    }

    goto LABEL_55;
  }

LABEL_3:
  v2 = 0;
  v3 = v1 & 0xC000000000000001;
  v77 = v1 + 32;
  v78 = v1 & 0xFFFFFFFFFFFFFF8;
  v82 = v0;
  v79 = v1 & 0xC000000000000001;
  v80 = v1;
  while (1)
  {
    if (!v3)
    {
      if (v2 >= *(v78 + 16))
      {
        __break(1u);
LABEL_55:
        swift_once();
LABEL_51:
        v35 = *(v0 + 280);
        v36 = type metadata accessor for Logger();
        sub_10000659C(v36, qword_100169658);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        v39 = os_log_type_enabled(v37, v38);
        v40 = *(v0 + 360);
        if (v39)
        {
          v42 = *(v0 + 272);
          v41 = *(v0 + 280);
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v87[0] = v44;
          *v43 = 136446210;
          *(v43 + 4) = sub_100025CF0(v42, v41, v87);
          _os_log_impl(&_mh_execute_header, v37, v38, "Could not resolve follow up item and group for item identifier: %{public}s", v43, 0xCu);
          sub_10000665C(v44);
        }

LABEL_74:
        v75 = *(v0 + 328);

        v76 = *(v0 + 8);

        return v76();
      }

      v7 = *(v77 + 8 * v2);
      v4 = swift_unknownObjectRetain();
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (!v5)
      {
        goto LABEL_11;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      v83 = _CocoaArrayWrapper.endIndex.getter();
      if (!v83)
      {
        goto LABEL_50;
      }

      goto LABEL_3;
    }

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v5 = __OFADD__(v2, 1);
    v6 = v2 + 1;
    if (v5)
    {
      goto LABEL_48;
    }

LABEL_11:
    v84 = v4;
    v1 = [v4 items];
    sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = v6;
    if (v8 >> 62)
    {
      break;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_4:

    swift_unknownObjectRelease();
    v1 = v80;
    v2 = v81;
    v3 = v79;
    if (v81 == v83)
    {
      goto LABEL_50;
    }
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_4;
  }

LABEL_13:
  v10 = 0;
  while (2)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v14 = [v11 uniqueIdentifier];
    if (!v14)
    {
LABEL_14:

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_4;
      }

      continue;
    }

    break;
  }

  v15 = v14;
  v16 = *(v0 + 272);
  v85 = *(v0 + 280);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = v18;

  if (v17 != v16 || v1 != v85)
  {
    v20 = *(v0 + 272);
    v21 = *(v0 + 280);
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_30;
    }

    goto LABEL_14;
  }

LABEL_30:

  v23 = [v12 actions];
  v24 = v84;
  if (v23)
  {
    v25 = v23;
    sub_100008294(0, &qword_10015E8F0, FLFollowUpAction_ptr);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v26 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (v27)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_33:
        v28 = 0;
        v1 = v26 & 0xC000000000000001;
        do
        {
          if (v1)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v29 = *(v26 + 8 * v28 + 32);
          }

          v30 = v29;
          v31 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_46;
          }

          v32 = *(v0 + 288);
          v33 = *(v0 + 296);
          v87[0] = v29;
          if (sub_10009F868(v87, v32, v33))
          {

            goto LABEL_58;
          }

          ++v28;
        }

        while (v31 != v27);
      }
    }

    v30 = 0;
LABEL_58:
    v24 = v84;
  }

  else
  {
    v30 = 0;
  }

  if (qword_10015AB20 != -1)
  {
    swift_once();
  }

  v45 = qword_10015E6F0;
  v46 = [v24 identifier];
  if (!v46)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = String._bridgeToObjectiveC()();
  }

  v47 = sub_1000620C8(v46, v45);

  if ((v47 & 1) != 0 || [v24 shouldCoalesceItems])
  {
    v86 = *(v0 + 360);
    v48 = *(v0 + 336);
    v49 = *(v0 + 304);

    v50 = [v24 identifier];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = [v24 accountID];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    *(v0 + 224) = v51;
    *(v0 + 232) = v53;
    *(v0 + 240) = v55;
    *(v0 + 248) = v57;
    *(v0 + 256) = 0;
    sub_100097128(v0 + 224);

    swift_unknownObjectRelease();
    goto LABEL_74;
  }

  if (!v30)
  {
    v64 = *(v0 + 360);
    v65 = *(v82 + 336);
    v66 = *(v82 + 304);
    v67 = *(v82 + 280);
    v68 = *(v82 + 272);

    *(v82 + 144) = v68;
    *(v82 + 152) = v67;
    *(v82 + 168) = 0;
    *(v82 + 160) = 0;
    *(v82 + 176) = 1;
    sub_100097128(v82 + 144);

    goto LABEL_73;
  }

  v58 = [v30 identifier];
  if (v58)
  {
    v59 = v58;
    v60 = *(v0 + 336);
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    goto LABEL_72;
  }

  result = [v30 label];
  if (result)
  {
    v59 = result;
    v70 = *(v0 + 336);

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v71;
LABEL_72:
    v64 = *(v0 + 360);
    v72 = *(v82 + 304);
    v73 = *(v82 + 280);
    v74 = *(v82 + 272);

    *(v82 + 184) = v74;
    *(v82 + 192) = v73;
    *(v82 + 200) = v61;
    *(v82 + 208) = v63;
    *(v82 + 216) = 2;

    sub_100097128(v82 + 184);

LABEL_73:

    v0 = v82;
    swift_unknownObjectRelease();
    goto LABEL_74;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009F7E8(uint64_t a1)
{
  v1 = *sub_100018544((a1 + 32), *(a1 + 56));
  sub_10004DED0(&unk_10015E8E0, &qword_100115AD0);
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10009F868(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    v5 = *a1;
    v6 = [*a1 identifier];
    if (v6 || (v6 = [v5 label]) != 0)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (v8 == a2 && v10 == v3)
      {
        goto LABEL_21;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_35;
      }
    }

    v13 = [v5 label];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v15 == a2 && v17 == v3)
      {
        goto LABEL_21;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_35;
      }
    }

    v19 = [v5 identifier];
    if (v19 || (v19 = [v5 label]) != 0)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    sub_10002EAE0();
    v24 = StringProtocol.removingPercentEncoding.getter();
    if (v23)
    {
      if (v25)
      {
        if (v21 == v24 && v23 == v25)
        {

LABEL_21:

          LOBYTE(v3) = 1;
          return v3 & 1;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v33)
        {
LABEL_35:
          LOBYTE(v3) = 1;
          return v3 & 1;
        }

LABEL_24:
        v26 = [v5 label];
        if (v26)
        {
          v27 = v26;
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;
        }

        else
        {
          v28 = 0;
          v30 = 0;
        }

        v31 = StringProtocol.removingPercentEncoding.getter();
        if (v30)
        {
          if (v32)
          {
            if (v28 == v31 && v30 == v32)
            {

              LOBYTE(v3) = 1;
            }

            else
            {
              LOBYTE(v3) = _stringCompareWithSmolCheck(_:_:expecting:)();
            }
          }

          else
          {
            LOBYTE(v3) = 0;
          }
        }

        else
        {
          if (!v32)
          {
            goto LABEL_35;
          }

          LOBYTE(v3) = 0;
        }

        return v3 & 1;
      }
    }

    else if (!v25)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  return v3 & 1;
}

uint64_t sub_10009FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 304) = a6;
  *(v8 + 312) = a7;
  *(v8 + 288) = a4;
  *(v8 + 296) = a5;
  v9 = *(a8 + 16);
  *(v8 + 320) = *a8;
  *(v8 + 336) = v9;
  *(v8 + 177) = *(a8 + 32);
  type metadata accessor for MainActor();
  *(v8 + 352) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 360) = v11;
  *(v8 + 368) = v10;

  return _swift_task_switch(sub_10009FC08, v11, v10);
}

uint64_t sub_10009FC08()
{
  v40 = v0;
  v1 = v0;
  v2 = v0 + 10;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v4 = v1[37];
  v3 = v1[38];
  v5 = v1[36];
  v6 = type metadata accessor for Logger();
  v1[47] = sub_10000659C(v6, qword_100169658);
  v7 = v3;
  swift_unknownObjectRetain();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v8, v9))
  {
    v38 = v7;
    v11 = v1[36];
    v10 = v1[37];
    v12 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v12 = 136446722;
    v13 = [v11 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100025CF0(v14, v16, &v39);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    swift_beginAccess();
    v18 = *(v10 + 16);
    if (v18 && (v19 = [v18 uniqueIdentifier]) != 0)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = v1[38];
    v1[10] = v21;
    v1[11] = v23;
    sub_10004DED0(&qword_10015E900, &qword_100114A50);
    v25 = String.init<A>(describing:)();
    v27 = sub_100025CF0(v25, v26, &v39);

    *(v12 + 14) = v27;
    *(v12 + 22) = 2082;
    v1[10] = v24;
    v7 = v38;
    v28 = v38;
    sub_10004DED0(&qword_10015E908, &unk_100115B10);
    v29 = String.init<A>(describing:)();
    v31 = sub_100025CF0(v29, v30, &v39);

    *(v12 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v8, v9, "Performing action on follow up group '%{public}s', item '%{public}s', action: %{public}s.", v12, 0x20u);
    swift_arrayDestroy();
  }

  v32 = v1[36];
  v33 = v1[37];
  v34 = [objc_allocWithZone(FLPreferencesController) init];
  v1[48] = v34;
  swift_beginAccess();
  v35 = *(v33 + 16);
  v1[49] = v35;
  v1[2] = v1;
  v1[7] = v1 + 34;
  v1[3] = sub_10009FFFC;
  v36 = swift_continuation_init();
  v1[17] = sub_10004DED0(&qword_10015E8F8, &unk_100115B00);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000A0918;
  v1[13] = &unk_1001502F8;
  v1[14] = v36;
  [v34 performPreferencesActionForGroup:v32 item:v35 action:v7 completion:v2];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10009FFFC()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *v0;

  return _swift_task_switch(sub_1000A0104, v2, v1);
}

uint64_t sub_1000A0104()
{
  v79 = v0;
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 352);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);

  v8 = *(v0 + 272);

  swift_unknownObjectRetain();

  v9 = v6;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = *(v0 + 288);
    v12 = *(v0 + 296);
    v14 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v14 = 136446722;
    v15 = [v13 identifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100025CF0(v16, v18, &v78);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    swift_beginAccess();
    v20 = *(v12 + 16);
    if (v20 && (v21 = [v20 uniqueIdentifier]) != 0)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v26 = *(v0 + 304);
    *(v0 + 272) = v23;
    *(v0 + 280) = v25;
    sub_10004DED0(&qword_10015E900, &qword_100114A50);
    v27 = String.init<A>(describing:)();
    v29 = sub_100025CF0(v27, v28, &v78);

    *(v14 + 14) = v29;
    *(v14 + 22) = 2082;
    *(v0 + 272) = v26;
    v30 = v26;
    sub_10004DED0(&qword_10015E908, &unk_100115B10);
    v31 = String.init<A>(describing:)();
    v33 = sub_100025CF0(v31, v32, &v78);

    *(v14 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v10, v11, "Requesting view controller to present on follow up group '%{public}s', item '%{public}s', action: %{public}s.", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v34 = [v8 viewControllerToPresent];
  if (v34)
  {
    v35 = *(v0 + 312);
    v36 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController;
    v37 = *(v35 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController);
    *(v35 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController) = v34;
    v38 = v34;

    v39 = [v8 presentationStyle];
    v40 = *(v0 + 376);
    if (v39 == 1)
    {
      v62 = *(v0 + 312);
      sub_100098CC4(6u);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v63 = *(v0 + 312);
        v47 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v47 = 136315394;
        v64 = *v63;
        v65 = _typeName(_:qualified:)();
        v67 = sub_100025CF0(v65, v66, &v78);

        *(v47 + 4) = v67;
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v78);
        v52 = "…Complete (%s.%s) presenting modal.";
        goto LABEL_19;
      }
    }

    else if (v39)
    {
      v68 = *(v0 + 312);
      v69 = *(v35 + v36);
      *(v35 + v36) = 0;

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v70 = *(v0 + 312);
        v47 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v47 = 136315394;
        v71 = *v70;
        v72 = _typeName(_:qualified:)();
        v74 = sub_100025CF0(v72, v73, &v78);

        *(v47 + 4) = v74;
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v78);
        v52 = "…Complete (%s.%s) unknown presentation style.";
        goto LABEL_19;
      }
    }

    else
    {
      v41 = *(v0 + 177);
      v42 = *(v0 + 312);
      v43 = *(v0 + 336);
      *(v0 + 144) = *(v0 + 320);
      *(v0 + 160) = v43;
      *(v0 + 176) = v41;
      sub_10009698C(v0 + 144);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = *(v0 + 312);
        v47 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v47 = 136315394;
        v48 = *v46;
        v49 = _typeName(_:qualified:)();
        v51 = sub_100025CF0(v49, v50, &v78);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v78);
        v52 = "…Complete (%s.%s) updated selection.";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v44, v45, v52, v47, 0x16u);
        swift_arrayDestroy();
      }
    }

    goto LABEL_21;
  }

  v53 = *(v0 + 376);
  v54 = *(v0 + 312);

  v44 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v55))
  {
    v56 = *(v0 + 312);
    v57 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v57 = 136315394;
    v58 = *v56;
    v59 = _typeName(_:qualified:)();
    v61 = sub_100025CF0(v59, v60, &v78);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v78);
    _os_log_impl(&_mh_execute_header, v44, v55, "…Complete (%s.%s) no view controller to present (likely action).", v57, 0x16u);
    swift_arrayDestroy();
  }

LABEL_21:

  v75 = *(v0 + 312);
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 216) = -1;
  sub_100099214(v0 + 184, &OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp);

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1000A0918(uint64_t a1, void *a2)
{
  v3 = sub_100018544((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

void sub_1000A097C(char a1, uint64_t *a2, uint64_t a3)
{
  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000659C(v6, qword_1001696D0);

  sub_10002698C(a3, v18);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  sub_100026A04(a3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v9 = 136315906;
    v10 = *a2;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100025CF0(v11, v12, v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = sub_100025CF0(0xD000000000000019, 0x8000000100124120, v18);
    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    v15 = sub_100026A58(v14);
    v17 = sub_100025CF0(v15, v16, v18);

    *(v9 + 24) = v17;
    *(v9 + 32) = 1024;
    *(v9 + 34) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "…Complete (%s.%s), item: %{public}s, success: %{BOOL}d", v9, 0x26u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000A0B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[272] = a4;
  v5 = sub_10004DED0(&qword_10015EAD0, &unk_100113230);
  v4[273] = v5;
  v6 = *(v5 - 8);
  v4[274] = v6;
  v7 = *(v6 + 64) + 15;
  v4[275] = swift_task_alloc();
  v8 = sub_10004DED0(&qword_10015EAD8, &qword_100115D70);
  v4[276] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[277] = swift_task_alloc();
  v10 = sub_10004DED0(&qword_10015EAE0, &qword_100115D78);
  v4[278] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[279] = swift_task_alloc();
  v4[280] = type metadata accessor for MainActor();
  v4[281] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[282] = v13;
  v4[283] = v12;

  return _swift_task_switch(sub_1000A0D14, v13, v12);
}

uint64_t sub_1000A0D14()
{
  v1 = *(v0 + 2176);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 2232);
    v4 = *(v0 + 2224);
    v5 = *(v0 + 2216);
    v6 = *(v0 + 2200);
    v7 = *(v0 + 2192);
    v8 = *(v0 + 2184);
    v22 = *(v0 + 2208);
    v23 = *(v0 + 2176);
    *(v0 + 2272) = *(Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_systemStateSnapshotProvider);

    sub_1000525A0(&qword_10015EAE8, &qword_10015EAD0, &unk_100113230);
    sub_1000A4DEC();
    AsyncSequence<>.removeDuplicates()();
    (*(v7 + 16))(v6, v5, v8);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    v9 = (v5 + *(v22 + 36));
    v10 = *v9;
    *(v0 + 2280) = *v9;
    v11 = v9[1];
    *(v0 + 2288) = v11;

    sub_1000068B0(v5, &qword_10015EAD8, &qword_100115D70);
    v12 = *(v4 + 40);
    *(v0 + 2148) = v12;
    v13 = (v3 + v12);
    v13[3] = 0u;
    v13[4] = 0u;
    v13[1] = 0u;
    v13[2] = 0u;
    *v13 = 0u;
    v14 = (v3 + *(v4 + 36));
    *v14 = v10;
    v14[1] = v11;
    swift_beginAccess();
    v15 = *(v0 + 2240);
    *(v0 + 2296) = static MainActor.shared.getter();

    return _swift_task_switch(sub_1000A0F7C, 0, 0);
  }

  else
  {
    v16 = *(v0 + 2248);

    v17 = *(v0 + 2232);
    v18 = *(v0 + 2216);
    v19 = *(v0 + 2200);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1000A0F7C()
{
  v1 = (*(v0 + 2232) + *(v0 + 2148));
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 2);
  *(v0 + 2016) = *(v1 + 1);
  *(v0 + 2064) = v5;
  *(v0 + 2048) = v4;
  *(v0 + 2032) = v6;
  if (v2)
  {
    *(v0 + 1136) = v3;
    *(v0 + 1144) = v2;
    v7 = *(v0 + 2016);
    v8 = *(v0 + 2032);
    *(v0 + 1152) = v7;
    *(v0 + 1168) = v8;
    v9 = *(v0 + 2048);
    v10 = *(v0 + 2064);
    *(v0 + 1184) = v9;
    *(v0 + 1200) = v10;
    *(v0 + 128) = v8;
    *(v0 + 144) = v9;
    *(v0 + 160) = v10;
    *(v0 + 96) = *(v0 + 1136);
    *(v0 + 112) = v7;
    sub_100063D94(v0 + 1136, v0 + 1216);
    v11 = sub_10004DED0(&qword_10015EAF8, &unk_100115D80);
    v12 = sub_1000525A0(&unk_10015EB00, &qword_10015EAF8, &unk_100115D80);
    v13 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v14 = swift_task_alloc();
    *(v0 + 2320) = v14;
    *v14 = v0;
    v14[1] = sub_1000A1294;
    v15 = *(v0 + 2232);
    v16 = v0 + 1776;
  }

  else
  {
    v11 = sub_10004DED0(&qword_10015EAF8, &unk_100115D80);
    v12 = sub_1000525A0(&unk_10015EB00, &qword_10015EAF8, &unk_100115D80);
    v17 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v18 = swift_task_alloc();
    *(v0 + 2304) = v18;
    *v18 = v0;
    v18[1] = sub_1000A1180;
    v19 = *(v0 + 2232);
    v16 = v0 + 1296;
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(v16, v11, v12);
}

uint64_t sub_1000A1180()
{
  v2 = *(*v1 + 2304);
  v5 = *v1;
  *(*v1 + 2312) = v0;

  if (v0)
  {
    v3 = sub_1000A2CF4;
  }

  else
  {
    v3 = sub_1000A234C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A1294()
{
  v2 = *(*v1 + 2320);
  v5 = *v1;
  *(*v1 + 2328) = v0;

  if (v0)
  {
    v3 = sub_1000A1594;
  }

  else
  {
    v3 = sub_1000A13A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A13A8()
{
  v1 = (v0 + 1776);
  if (*(v0 + 1784))
  {
    v2 = *(v0 + 1792);
    *(v0 + 1696) = *v1;
    v3 = *(v0 + 1824);
    *(v0 + 1760) = *(v0 + 1840);
    v4 = *(v0 + 1808);
    *(v0 + 1744) = v3;
    *(v0 + 1728) = v4;
    v5 = *(v0 + 2280);
    *(v0 + 1712) = v2;
    v19 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 2336) = v7;
    *v7 = v0;
    v7[1] = sub_1000A1650;
    v8 = *(v0 + 2288);

    return v19(v0 + 96, v0 + 1696);
  }

  else
  {
    v10 = *(v0 + 2296);
    v11 = *(v0 + 144);
    *(v0 + 208) = *(v0 + 128);
    *(v0 + 224) = v11;
    *(v0 + 240) = *(v0 + 160);
    v12 = *(v0 + 112);
    *(v0 + 176) = *(v0 + 96);
    *(v0 + 192) = v12;
    sub_100063DF0(v0 + 176);
    v13 = *v1;
    *(v0 + 1952) = *(v0 + 1792);
    v14 = *(v0 + 1824);
    *(v0 + 1968) = *(v0 + 1808);
    *(v0 + 1984) = v14;
    *(v0 + 2000) = *(v0 + 1840);
    *(v0 + 1936) = v13;
    sub_1000068B0(v0 + 1936, &unk_10015EB10, &qword_100115D90);
    if (v10)
    {
      v15 = *(v0 + 2296);
      swift_getObjectType();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    return _swift_task_switch(sub_1000A1A0C, v16, v18);
  }
}

uint64_t sub_1000A1594()
{
  v1 = *(v0 + 96);
  *(v0 + 1872) = *(v0 + 112);
  v2 = *(v0 + 144);
  *(v0 + 1888) = *(v0 + 128);
  *(v0 + 1904) = v2;
  *(v0 + 1920) = *(v0 + 160);
  *(v0 + 1856) = v1;
  sub_100063DF0(v0 + 1856);
  *(v0 + 2400) = *(v0 + 2328);
  if (*(v0 + 2296))
  {
    v3 = *(v0 + 2296);
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return _swift_task_switch(sub_1000A22C0, v4, v6);
}

uint64_t sub_1000A1650(char a1)
{
  v2 = *(*v1 + 2336);
  v4 = *v1;
  *(*v1 + 2145) = a1;

  return _swift_task_switch(sub_1000A1750, 0, 0);
}

uint64_t sub_1000A1750()
{
  v1 = (v0 + 1696);
  if (*(v0 + 2145) == 1)
  {
    v2 = *(v0 + 1744);
    *(v0 + 48) = *(v0 + 1728);
    *(v0 + 64) = v2;
    *(v0 + 80) = *(v0 + 1760);
    v3 = *(v0 + 1712);
    *(v0 + 16) = *v1;
    *(v0 + 32) = v3;
    sub_100063DF0(v0 + 16);
    v4 = sub_10004DED0(&qword_10015EAF8, &unk_100115D80);
    v5 = sub_1000525A0(&unk_10015EB00, &qword_10015EAF8, &unk_100115D80);
    v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v7 = swift_task_alloc();
    *(v0 + 2320) = v7;
    *v7 = v0;
    v7[1] = sub_1000A1294;
    v8 = *(v0 + 2232);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 1776, v4, v5);
  }

  else
  {
    v9 = *(v0 + 96);
    *(v0 + 1472) = *(v0 + 112);
    v10 = *(v0 + 144);
    *(v0 + 1488) = *(v0 + 128);
    *(v0 + 1504) = v10;
    *(v0 + 1520) = *(v0 + 160);
    v11 = *(v0 + 2296);
    v12 = (*(v0 + 2232) + *(v0 + 2148));
    *(v0 + 1456) = v9;
    sub_100063DF0(v0 + 1456);
    *(v0 + 1536) = *v12;
    v13 = v12[3];
    v14 = v12[4];
    v15 = v12[2];
    *(v0 + 1552) = v12[1];
    *(v0 + 1600) = v14;
    *(v0 + 1584) = v13;
    *(v0 + 1568) = v15;
    sub_1000068B0(v0 + 1536, &unk_10015EB10, &qword_100115D90);
    v16 = *(v0 + 1760);
    *(v0 + 1664) = *(v0 + 1744);
    *(v0 + 1680) = v16;
    v17 = *(v0 + 1728);
    *(v0 + 1632) = *(v0 + 1712);
    *(v0 + 1648) = v17;
    *(v0 + 1616) = *v1;
    *(v0 + 2146) = *(v0 + 1616);
    *(v0 + 2147) = *(v0 + 1617);
    *(v0 + 2408) = *(v0 + 1618);
    *(v0 + 2344) = *(v0 + 1624);
    *(v0 + 2352) = *(v0 + 1632);
    *(v0 + 2368) = *(v0 + 1656);
    *(v0 + 2376) = *(v0 + 1664);
    *(v0 + 2409) = *(v0 + 1680);
    *(v0 + 2392) = *(v0 + 1688);
    memmove(v12, (v0 + 1696), 0x50uLL);
    *(v0 + 2410) = *(v0 + 1728);
    *(v0 + 2411) = *(v0 + 1729);
    *(v0 + 2412) = *(v0 + 1730);
    *(v0 + 2413) = *(v0 + 1731);
    *(v0 + 2414) = *(v0 + 1732);
    *(v0 + 2415) = *(v0 + 1733);
    *(v0 + 2416) = *(v0 + 1734);
    sub_100063D94(v0 + 1616, v0 + 1376);
    if (v11)
    {
      v18 = *(v0 + 2296);
      swift_getObjectType();
      v19 = dispatch thunk of Actor.unownedExecutor.getter();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    return _swift_task_switch(sub_1000A1B1C, v19, v21);
  }
}

uint64_t sub_1000A1A0C()
{
  v1 = v0[287];

  v2 = v0[283];
  v3 = v0[282];

  return _swift_task_switch(sub_1000A1A74, v3, v2);
}

uint64_t sub_1000A1A74()
{
  v1 = v0[284];
  v2 = v0[281];
  sub_1000068B0(v0[279], &qword_10015EAE0, &qword_100115D78);

  v3 = v0[279];
  v4 = v0[277];
  v5 = v0[275];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000A1B1C()
{
  v1 = v0[287];

  v2 = v0[283];
  v3 = v0[282];

  return _swift_task_switch(sub_1000A1B84, v3, v2);
}

uint64_t sub_1000A1B84()
{
  v1 = *(v0 + 2416);
  v2 = *(v0 + 2415);
  v3 = *(v0 + 2414);
  v4 = *(v0 + 2413);
  v5 = *(v0 + 2412);
  v6 = *(v0 + 2411);
  v7 = *(v0 + 2410);
  v8 = *(v0 + 2392);
  v9 = *(v0 + 2409);
  v10 = *(v0 + 2384);
  v11 = *(v0 + 2376);
  v12 = *(v0 + 2368);
  v13 = *(v0 + 2360);
  v14 = *(v0 + 2352);
  v15 = *(v0 + 2344);
  v16 = *(v0 + 2408);
  v17 = *(v0 + 2147);
  v18 = *(v0 + 2146);
  v78 = *(v0 + 2328);
  v19 = *(v0 + 2176);
  *(v0 + 576) = v18;
  *(v0 + 577) = v17;
  *(v0 + 578) = v16;
  *(v0 + 584) = v15;
  v75 = v13;
  v76 = v14;
  *(v0 + 592) = v14;
  *(v0 + 600) = v13;
  v73 = v6;
  v74 = v7;
  *(v0 + 608) = v7;
  *(v0 + 609) = v6;
  v71 = v4;
  v72 = v5;
  *(v0 + 610) = v5;
  *(v0 + 611) = v4;
  v69 = v2;
  v70 = v3;
  *(v0 + 612) = v3;
  *(v0 + 613) = v2;
  v68 = v1;
  *(v0 + 614) = v1;
  v67 = v12;
  *(v0 + 616) = v12;
  *(v0 + 624) = v11;
  *(v0 + 632) = v10;
  *(v0 + 640) = v9;
  *(v0 + 648) = v8;
  v20 = *(v0 + 576);
  v21 = *(v0 + 592);
  v22 = *(v0 + 640);
  *(v0 + 944) = *(v0 + 624);
  *(v0 + 960) = v22;
  v23 = *(v0 + 608);
  *(v0 + 912) = v21;
  *(v0 + 928) = v23;
  *(v0 + 896) = v20;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_100063DF0(v0 + 576);
    goto LABEL_57;
  }

  v25 = Strong;
  v66 = v9;
  v77 = (v0 + 896);
  v26 = (Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  *(v0 + 656) = *(Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v27 = v26[1];
  v28 = v26[2];
  v29 = v26[4];
  *(v0 + 704) = v26[3];
  *(v0 + 720) = v29;
  *(v0 + 672) = v27;
  *(v0 + 688) = v28;
  if (v18 != *(v0 + 656) || ((v17 ^ *(v0 + 657)) & 1) != 0 || ((v16 ^ *(v0 + 658)) & 1) != 0)
  {
    goto LABEL_56;
  }

  *&v65 = v10;
  *(&v65 + 1) = v11;
  v64 = v8;
  v30 = *(v0 + 672);
  v31 = *(v0 + 680);
  v32 = *(v0 + 664);
  sub_100063D94(v0 + 656, v0 + 736);
  if ((sub_1000459A0(v32, v15) & 1) == 0 || (sub_1000459A0(v30, v76) & 1) == 0 || (sub_1000459A0(v31, v75) & 1) == 0 || v74 != *(v0 + 688) || ((v73 ^ *(v0 + 689)) & 1) != 0 || ((v72 ^ *(v0 + 690)) & 1) != 0 || ((v71 ^ *(v0 + 691)) & 1) != 0 || ((v70 ^ *(v0 + 692)) & 1) != 0 || ((v69 ^ *(v0 + 693)) & 1) != 0 || *(v0 + 694) != v68 || (sub_1000459A0(*(v0 + 696), v67) & 1) == 0)
  {
    goto LABEL_55;
  }

  v33 = *(v0 + 704);
  v34 = *(v0 + 712);
  v35 = *(v0 + 720);
  v36 = *(v0 + 728);
  v37 = v35 >> 6;
  if (v35 >> 6 > 1)
  {
    if (v37 == 2)
    {
      if ((v66 & 0xC0) == 0x80 && __PAIR128__(v34, v33) == __PAIR128__(v65, *(&v65 + 1)))
      {
        goto LABEL_33;
      }
    }

    else if (v66 == 192 && v65 == 0)
    {
      goto LABEL_33;
    }

LABEL_55:
    sub_100063DF0(v0 + 656);
    goto LABEL_56;
  }

  if (v37)
  {
    if ((v66 & 0xC0) == 0x40 && v33 == *(&v65 + 1))
    {
      goto LABEL_33;
    }

    goto LABEL_55;
  }

  if (v66 >= 0x40)
  {
    goto LABEL_55;
  }

  if (__PAIR128__(v34, v33) != __PAIR128__(v65, *(&v65 + 1)))
  {
    v38 = *(v0 + 728);
    v39 = *(v0 + 704);
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v36 = v38;
    if ((v40 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  if ((v35 ^ v66))
  {
    goto LABEL_55;
  }

LABEL_33:
  v41 = sub_10006C604(v36, v64);
  sub_100063DF0(v0 + 656);
  if ((v41 & 1) == 0)
  {
LABEL_56:
    swift_getKeyPath();
    v53 = swift_task_alloc();
    *(v53 + 16) = v25;
    *(v53 + 24) = v77;
    *(v0 + 2152) = v25;
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100063DF0(v0 + 576);

    goto LABEL_57;
  }

  swift_getKeyPath();
  *(v0 + 2168) = v25;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 816) = *v26;
  v42 = v26[1];
  v43 = v26[2];
  v44 = v26[4];
  *(v0 + 864) = v26[3];
  *(v0 + 880) = v44;
  *(v0 + 832) = v42;
  *(v0 + 848) = v43;
  if (v18 != *(v0 + 816) || ((v17 ^ *(v0 + 817)) & 1) != 0 || ((v16 ^ *(v0 + 818)) & 1) != 0)
  {
    goto LABEL_73;
  }

  v45 = *(v0 + 832);
  v46 = *(v0 + 840);
  v47 = *(v0 + 824);
  sub_100063D94(v0 + 816, v0 + 1056);
  if (sub_1000459A0(v15, v47) & 1) != 0 && (sub_1000459A0(v76, v45) & 1) != 0 && (sub_1000459A0(v75, v46) & 1) != 0 && v74 == *(v0 + 848) && ((v73 ^ *(v0 + 849)) & 1) == 0 && ((v72 ^ *(v0 + 850)) & 1) == 0 && ((v71 ^ *(v0 + 851)) & 1) == 0 && ((v70 ^ *(v0 + 852)) & 1) == 0 && ((v69 ^ *(v0 + 853)) & 1) == 0 && v68 == *(v0 + 854) && (sub_1000459A0(v67, *(v0 + 856)))
  {
    v48 = *(v0 + 864);
    v49 = *(v0 + 872);
    v50 = *(v0 + 880);
    v51 = *(v0 + 888);
    v52 = v66 >> 6;
    if (v66 >> 6 > 1)
    {
      if (v52 == 2)
      {
        if ((v50 & 0xC0) == 0x80 && v65 == __PAIR128__(v48, v49))
        {
          goto LABEL_70;
        }
      }

      else if (v50 >= 0xC0 && !(v49 | v48) && v50 == 192)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v52)
      {
        if (v50 >= 0x40 || v65 != __PAIR128__(v48, v49) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v50 ^ v66) & 1) != 0)
        {
          goto LABEL_72;
        }

LABEL_70:
        v55 = sub_10006C604(v64, v51);
        sub_100063DF0(v0 + 816);
        if (v55)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      if ((v50 & 0xC0) == 0x40 && *(&v65 + 1) == v48)
      {
        goto LABEL_70;
      }
    }
  }

LABEL_72:
  sub_100063DF0(v0 + 816);
LABEL_73:
  v56 = *(v25 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_invalidationSubject);
  *(v0 + 2128) = "System State Snapshot Changed";
  *(v0 + 2136) = 29;
  *(v0 + 2144) = 2;
  PassthroughSubject.send(_:)();
LABEL_74:
  *(v0 + 976) = *v26;
  v57 = v26[1];
  v58 = v26[2];
  v59 = v26[4];
  *(v0 + 1024) = v26[3];
  *(v0 + 1040) = v59;
  *(v0 + 992) = v57;
  *(v0 + 1008) = v58;
  v60 = *(v0 + 960);
  v62 = *(v0 + 912);
  v61 = *(v0 + 928);
  v26[3] = *(v0 + 944);
  v26[4] = v60;
  v26[1] = v62;
  v26[2] = v61;
  *v26 = *v77;
  sub_100063DF0(v0 + 976);

LABEL_57:
  v54 = *(v0 + 2240);
  *(v0 + 2296) = static MainActor.shared.getter();

  return _swift_task_switch(sub_1000A0F7C, 0, 0);
}

uint64_t sub_1000A22C0()
{
  *(v0 + 2160) = *(v0 + 2400);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000A234C()
{
  v1 = *(v0 + 2296);
  v2 = (*(v0 + 2232) + *(v0 + 2148));
  v3 = *(v0 + 1312);
  v4 = *(v0 + 1344);
  *(v0 + 448) = *(v0 + 1328);
  *(v0 + 464) = v4;
  *(v0 + 480) = *(v0 + 1360);
  *(v0 + 416) = *(v0 + 1296);
  *(v0 + 432) = v3;
  v6 = v2[1];
  v5 = v2[2];
  v7 = v2[4];
  *(v0 + 384) = v2[3];
  *(v0 + 400) = v7;
  *(v0 + 352) = v6;
  *(v0 + 368) = v5;
  *(v0 + 336) = *v2;
  sub_1000068B0(v0 + 336, &unk_10015EB10, &qword_100115D90);
  *v2 = *(v0 + 416);
  v8 = *(v0 + 480);
  v10 = *(v0 + 432);
  v9 = *(v0 + 448);
  v2[3] = *(v0 + 464);
  v2[4] = v8;
  v2[1] = v10;
  v2[2] = v9;
  v11 = *(v0 + 464);
  *(v0 + 288) = *(v0 + 448);
  *(v0 + 304) = v11;
  *(v0 + 320) = *(v0 + 480);
  v12 = *(v0 + 432);
  *(v0 + 256) = *(v0 + 416);
  *(v0 + 272) = v12;
  sub_100059CA0(v0 + 256, v0 + 496, &unk_10015EB10, &qword_100115D90);
  if (v1)
  {
    v13 = *(v0 + 2296);
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  return _swift_task_switch(sub_1000A248C, v14, v16);
}

uint64_t sub_1000A248C()
{
  v1 = v0[287];

  v2 = v0[283];
  v3 = v0[282];

  return _swift_task_switch(sub_1000A24F4, v3, v2);
}

uint64_t sub_1000A24F4(uint8x8_t a1)
{
  v2 = *(v1 + 264);
  if (v2)
  {
    v3 = (v1 + 896);
    v4 = *(v1 + 258);
    v5 = *(v1 + 257);
    v6 = *(v1 + 293);
    v7 = *(v1 + 292);
    v9 = *(v1 + 272);
    v8 = *(v1 + 280);
    v10 = *(v1 + 328);
    v11 = *(v1 + 320);
    v12 = *(v1 + 304);
    v13 = *(v1 + 312);
    v14 = *(v1 + 296);
    v15 = *(v1 + 294);
    v74 = *(v1 + 256);
    a1.i32[0] = *(v1 + 288);
    v80 = a1.i32[0];
    v84 = *(v1 + 2312);
    v16 = *(v1 + 2176);
    *(v1 + 576) = v74 & 1;
    *(v1 + 577) = v5 & 1;
    *(v1 + 578) = v4 & 1;
    *(v1 + 584) = v2;
    v82 = v8;
    v83 = v9;
    *(v1 + 592) = v9;
    *(v1 + 600) = v8;
    v17 = vmovl_u8(a1).u64[0] & 0xFF01FF01FF01FF01;
    *(v1 + 608) = vuzp1_s8(v17, v17).u32[0];
    v78 = v6;
    v79 = v7;
    *(v1 + 612) = v7 & 1;
    *(v1 + 613) = v6 & 1;
    v77 = v15;
    *(v1 + 614) = v15;
    v76 = v14;
    *(v1 + 616) = v14;
    *(v1 + 624) = v12;
    *(v1 + 632) = v13;
    v75 = v11;
    *(v1 + 640) = v11;
    *(v1 + 648) = v10;
    v18 = *(v1 + 576);
    v19 = *(v1 + 592);
    v20 = *(v1 + 640);
    *(v1 + 944) = *(v1 + 624);
    *(v1 + 960) = v20;
    v21 = *(v1 + 608);
    *(v1 + 912) = v19;
    *(v1 + 928) = v21;
    *(v1 + 896) = v18;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      sub_100063DF0(v1 + 576);
LABEL_61:
      v60 = *(v1 + 2240);
      *(v1 + 2296) = static MainActor.shared.getter();

      return _swift_task_switch(sub_1000A0F7C, 0, 0);
    }

    v23 = Strong;
    *&v73 = v13;
    *(&v73 + 1) = v12;
    v72 = v10;
    v24 = (Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
    *(v1 + 656) = *(Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[4];
    *(v1 + 704) = v24[3];
    *(v1 + 720) = v27;
    *(v1 + 672) = v25;
    *(v1 + 688) = v26;
    if (*(v1 + 656) != (v74 & 1) || ((*(v1 + 657) ^ v5) & 1) != 0 || ((*(v1 + 658) ^ v4) & 1) != 0)
    {
      goto LABEL_60;
    }

    v28 = *(v1 + 672);
    v29 = *(v1 + 680);
    v30 = *(v1 + 664);
    sub_100063D94(v1 + 656, v1 + 736);
    if (sub_1000459A0(v30, v2) & 1) != 0 && (sub_1000459A0(v28, v83) & 1) != 0 && (sub_1000459A0(v29, v82))
    {
      v31 = v80;
      v32 = (v80 >> 8) & 1;
      v81 = v80 & 1;
      if (*(v1 + 688) == (v81 & 1) && ((*(v1 + 689) ^ v32) & 1) == 0)
      {
        v33 = HIBYTE(v31) & 1;
        v71 = BYTE2(v31) & 1;
        if ((*(v1 + 690) ^ v71) & 1) == 0 && ((*(v1 + 691) ^ v33) & 1) == 0 && ((*(v1 + 692) ^ v79) & 1) == 0 && ((*(v1 + 693) ^ v78) & 1) == 0 && *(v1 + 694) == v77 && (sub_1000459A0(*(v1 + 696), v76))
        {
          v34 = *(v1 + 704);
          v35 = *(v1 + 712);
          v36 = *(v1 + 720);
          v37 = *(v1 + 728);
          v38 = v36 >> 6;
          if (v36 >> 6 > 1)
          {
            if (v38 == 2)
            {
              if ((v75 & 0xC0) == 0x80 && __PAIR128__(v35, v34) == __PAIR128__(v73, *(&v73 + 1)))
              {
                goto LABEL_37;
              }
            }

            else if (v75 == 192 && v73 == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            if (!v38)
            {
              if (v75 >= 0x40)
              {
                goto LABEL_59;
              }

              if (__PAIR128__(v35, v34) != __PAIR128__(v73, *(&v73 + 1)))
              {
                v69 = *(v1 + 728);
                v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v37 = v69;
                if ((v39 & 1) == 0)
                {
                  goto LABEL_59;
                }
              }

              if ((v36 ^ v75))
              {
                goto LABEL_59;
              }

LABEL_37:
              v47 = sub_10006C604(v37, v72);
              sub_100063DF0(v1 + 656);
              if (v47)
              {
                v70 = (v1 + 976);
                swift_getKeyPath();
                *(v1 + 2168) = v23;
                sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                *(v1 + 816) = *v24;
                v48 = v24[1];
                v49 = v24[2];
                v50 = v24[4];
                *(v1 + 864) = v24[3];
                *(v1 + 880) = v50;
                *(v1 + 832) = v48;
                *(v1 + 848) = v49;
                if (*(v1 + 816) != (v74 & 1) || ((*(v1 + 817) ^ v5) & 1) != 0 || ((*(v1 + 818) ^ v4) & 1) != 0)
                {
                  goto LABEL_77;
                }

                v51 = *(v1 + 832);
                v52 = *(v1 + 840);
                v53 = *(v1 + 824);
                sub_100063D94(v1 + 816, v1 + 1056);
                if (sub_1000459A0(v2, v53) & 1) != 0 && (sub_1000459A0(v83, v51) & 1) != 0 && (sub_1000459A0(v82, v52) & 1) != 0 && *(v1 + 848) == (v81 & 1) && ((*(v1 + 849) ^ v32) & 1) == 0 && ((*(v1 + 850) ^ v71) & 1) == 0 && ((*(v1 + 851) ^ v33) & 1) == 0 && ((*(v1 + 852) ^ v79) & 1) == 0 && ((*(v1 + 853) ^ v78) & 1) == 0 && v77 == *(v1 + 854) && (sub_1000459A0(v76, *(v1 + 856)))
                {
                  v54 = *(v1 + 864);
                  v55 = *(v1 + 872);
                  v56 = *(v1 + 880);
                  v57 = *(v1 + 888);
                  v58 = v75 >> 6;
                  if (v75 >> 6 > 1)
                  {
                    if (v58 == 2)
                    {
                      if ((v56 & 0xC0) == 0x80 && v73 == __PAIR128__(v54, v55))
                      {
                        goto LABEL_74;
                      }
                    }

                    else if (v56 >= 0xC0 && !(v55 | v54) && v56 == 192)
                    {
                      goto LABEL_74;
                    }
                  }

                  else
                  {
                    if (!v58)
                    {
                      if (v56 >= 0x40 || v73 != __PAIR128__(v54, v55) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v56 ^ v75) & 1) != 0)
                      {
                        goto LABEL_76;
                      }

LABEL_74:
                      v61 = sub_10006C604(v72, v57);
                      sub_100063DF0(v1 + 816);
                      if (v61)
                      {
                        goto LABEL_78;
                      }

                      goto LABEL_77;
                    }

                    if ((v56 & 0xC0) == 0x40 && *(&v73 + 1) == v54)
                    {
                      goto LABEL_74;
                    }
                  }
                }

LABEL_76:
                sub_100063DF0(v1 + 816);
LABEL_77:
                v62 = *(v23 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_invalidationSubject);
                *(v1 + 2128) = "System State Snapshot Changed";
                *(v1 + 2136) = 29;
                *(v1 + 2144) = 2;
                PassthroughSubject.send(_:)();
LABEL_78:
                *v70 = *v24;
                v63 = v24[1];
                v64 = v24[2];
                v65 = v24[4];
                *(v1 + 1024) = v24[3];
                *(v1 + 1040) = v65;
                *(v1 + 992) = v63;
                *(v1 + 1008) = v64;
                v66 = *(v1 + 960);
                v68 = *(v1 + 912);
                v67 = *(v1 + 928);
                v24[3] = *(v1 + 944);
                v24[4] = v66;
                v24[1] = v68;
                v24[2] = v67;
                *v24 = *v3;
                sub_100063DF0(v70);

                goto LABEL_61;
              }

LABEL_60:
              swift_getKeyPath();
              v59 = swift_task_alloc();
              *(v59 + 16) = v23;
              *(v59 + 24) = v3;
              *(v1 + 2152) = v23;
              sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
              sub_100063DF0(v1 + 576);

              goto LABEL_61;
            }

            if ((v75 & 0xC0) == 0x40 && v34 == *(&v73 + 1))
            {
              goto LABEL_37;
            }
          }
        }
      }
    }

LABEL_59:
    sub_100063DF0(v1 + 656);
    goto LABEL_60;
  }

  v40 = *(v1 + 2272);
  v41 = *(v1 + 2248);
  sub_1000068B0(*(v1 + 2232), &qword_10015EAE0, &qword_100115D78);

  v42 = *(v1 + 2232);
  v43 = *(v1 + 2216);
  v44 = *(v1 + 2200);

  v45 = *(v1 + 8);

  return v45();
}

uint64_t sub_1000A2CF4()
{
  v0[300] = v0[289];
  if (v0[287])
  {
    v1 = v0[287];
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_1000A22C0, v2, v4);
}

uint64_t sub_1000A2D88()
{
  v0 = sub_10001A920();
  v1 = v0[2];
  if (v1)
  {
    v2 = (v0 + 4);
    do
    {
      sub_10000B270(v2, v6);
      v3 = v7;
      v4 = v8;
      sub_100018544(v6, v7);
      sub_10005F30C(v3, v4);
      sub_10000665C(v6);
      v2 += 40;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1000A2E68(uint64_t a1, uint64_t a2)
{
  v120 = type metadata accessor for PrimarySettingsListItemModel();
  v4 = *(v120 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v120);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v98 - v9;
  v114 = type metadata accessor for LocalizedStringResource();
  v11 = *(v114 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v114);
  v111 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v98 - v16;
  v113 = sub_10004DED0(&qword_10015E940, &unk_100113180);
  v18 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v20 = &v98 - v19;
  v21 = type metadata accessor for PrimarySettingsListSectionModel();
  v22 = *(v21 - 8);
  v117 = v21;
  v118 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v121 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v119 = &v98 - v27;
  __chkstk_darwin(v26);
  v112 = &v98 - v28;
  v29 = sub_10004DED0(&qword_10015E948, &qword_100115C28);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v31);
  v115 = &v98 - v35;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v99 = v4;
  v36 = 0;
  v37 = *(a1 + 64);
  v101 = a1 + 64;
  v38 = 1 << *(a1 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v37;
  v100 = (v38 + 63) >> 6;
  v106 = (v11 + 48);
  v102 = (v11 + 32);
  v103 = (v11 + 8);
  v108 = a2;
  v104 = v17;
  v41 = v119;
  v107 = v20;
  v110 = v33;
  v105 = a1;
  v116 = v8;
  while (v40)
  {
    v109 = (v40 - 1) & v40;
    v42 = __clz(__rbit64(v40)) | (v36 << 6);
LABEL_17:
    v47 = *(a1 + 48) + 24 * v42;
    v48 = *v47;
    v49 = *(v47 + 8);
    v50 = *(a1 + 56) + *(v118 + 72) * v42;
    v51 = *(v47 + 16);
    v52 = v112;
    sub_10002EA78(v50, v112, type metadata accessor for PrimarySettingsListSectionModel);
    v53 = sub_10004DED0(&unk_10015E950, &unk_100115C30);
    v54 = *(v53 + 48);
    v33 = v110;
    *v110 = v48;
    *(v33 + 1) = v49;
    v33[16] = v51;
    sub_1000A4C50(v52, &v33[v54], type metadata accessor for PrimarySettingsListSectionModel);
    (*(*(v53 - 8) + 56))(v33, 0, 1, v53);
    sub_100025974(v48, v49, v51);
LABEL_18:
    v55 = v108;
    v56 = v33;
    v57 = v115;
    sub_1000A4CB8(v56, v115, &qword_10015E948, &qword_100115C28);
    v58 = sub_10004DED0(&unk_10015E950, &unk_100115C30);
    result = (*(*(v58 - 8) + 48))(v57, 1, v58);
    if (result == 1)
    {
      return result;
    }

    v59 = *v57;
    v60 = *(v57 + 8);
    v61 = *(v57 + 16);
    sub_1000A4C50(v57 + *(v58 + 48), v41, type metadata accessor for PrimarySettingsListSectionModel);
    v62 = sub_10002F348(v59, v60, v61);
    v64 = v63;
    sub_100025CD8(v59, v60, v61);
    if ((v64 & 1) == 0)
    {
      goto LABEL_112;
    }

    v65 = v121;
    sub_10002EA78(*(v55 + 56) + *(v118 + 72) * v62, v121, type metadata accessor for PrimarySettingsListSectionModel);
    v66 = *v65;
    v67 = *v41;
    v68 = *(v41 + 8);
    v69 = *(v41 + 16);
    if (*(v65 + 16) <= 1u)
    {
      if (*(v65 + 16))
      {
        if (v69 != 1)
        {
          goto LABEL_111;
        }
      }

      else if (*(v41 + 16))
      {
        goto LABEL_111;
      }

LABEL_28:
      if ((v66 != v67 || *(v65 + 8) != v68) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_88;
    }

    if (*(v65 + 16) == 2)
    {
      if (v69 != 2)
      {
        goto LABEL_111;
      }

      goto LABEL_28;
    }

    v70 = *v65;
    switch(v66)
    {
      case 1:
        if (v69 != 3 || v67 != 1)
        {
          goto LABEL_111;
        }

        break;
      case 2:
        if (v69 != 3 || v67 != 2)
        {
          goto LABEL_111;
        }

        break;
      case 3:
        if (v69 != 3 || v67 != 3)
        {
          goto LABEL_111;
        }

        break;
      case 4:
        if (v69 != 3 || v67 != 4)
        {
          goto LABEL_111;
        }

        break;
      case 5:
        if (v69 != 3 || v67 != 5)
        {
          goto LABEL_111;
        }

        break;
      case 6:
        if (v69 != 3 || v67 != 6)
        {
          goto LABEL_111;
        }

        break;
      case 7:
        if (v69 != 3 || v67 != 7)
        {
          goto LABEL_111;
        }

        break;
      case 8:
        if (v69 != 3 || v67 != 8)
        {
          goto LABEL_111;
        }

        break;
      case 9:
        if (v69 != 3 || v67 != 9)
        {
          goto LABEL_111;
        }

        break;
      case 10:
        if (v69 != 3 || v67 != 10)
        {
          goto LABEL_111;
        }

        break;
      case 11:
        if (v69 != 3 || v67 != 11)
        {
          goto LABEL_111;
        }

        break;
      case 12:
        if (v69 != 3 || v67 != 12)
        {
          goto LABEL_111;
        }

        break;
      case 13:
        if (v69 != 3 || v67 != 13)
        {
          goto LABEL_111;
        }

        break;
      case 14:
        if (v69 != 3 || v67 != 14)
        {
          goto LABEL_111;
        }

        break;
      case 15:
        if (v69 != 3 || v67 != 15)
        {
          goto LABEL_111;
        }

        break;
      case 16:
        if (v69 != 3 || v67 != 16)
        {
          goto LABEL_111;
        }

        break;
      case 17:
        if (v69 != 3 || v67 != 17)
        {
          goto LABEL_111;
        }

        break;
      default:
        if (v69 != 3 || v68 | v67)
        {
          goto LABEL_111;
        }

        goto LABEL_88;
    }

    if (v68)
    {
      goto LABEL_111;
    }

LABEL_88:
    v72 = *(v121 + 32);
    v73 = *(v41 + 32);
    if (v72)
    {
      if (!v73 || (*(v121 + 24) != *(v41 + 24) || v72 != v73) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_111;
      }
    }

    else if (v73)
    {
      goto LABEL_111;
    }

    v74 = *(v117 + 24);
    v75 = *(v113 + 48);
    v76 = v107;
    sub_100059CA0(v121 + v74, v107, &unk_10015FB70, &unk_100112010);
    sub_100059CA0(v41 + v74, v76 + v75, &unk_10015FB70, &unk_100112010);
    v77 = *v106;
    v78 = v114;
    if ((*v106)(v76, 1, v114) == 1)
    {
      if (v77(v76 + v75, 1, v78) != 1)
      {
        goto LABEL_116;
      }

      sub_1000068B0(v76, &unk_10015FB70, &unk_100112010);
    }

    else
    {
      v79 = v104;
      sub_100059CA0(v76, v104, &unk_10015FB70, &unk_100112010);
      if (v77(v76 + v75, 1, v78) == 1)
      {
        (*v103)(v79, v78);
        v41 = v119;
LABEL_116:
        sub_1000068B0(v76, &qword_10015E940, &unk_100113180);
        goto LABEL_111;
      }

      v80 = v111;
      (*v102)(v111, v76 + v75, v78);
      sub_10000A520(&qword_10015BF48, &type metadata accessor for LocalizedStringResource);
      v81 = dispatch thunk of static Equatable.== infix(_:_:)();
      v82 = *v103;
      (*v103)(v80, v78);
      v82(v79, v78);
      sub_1000068B0(v76, &unk_10015FB70, &unk_100112010);
      v41 = v119;
      if ((v81 & 1) == 0)
      {
        goto LABEL_111;
      }
    }

    v83 = *(v117 + 28);
    v84 = *(v121 + v83);
    v85 = *(v41 + v83);
    v86 = *(v84 + 16);
    if (v86 != *(v85 + 16))
    {
      goto LABEL_111;
    }

    if (v86 && v84 != v85)
    {
      v87 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      v88 = v84 + v87;
      v89 = v85 + v87;
      v90 = *(v99 + 72);
      while (1)
      {
        sub_10002EA78(v88, v10, type metadata accessor for PrimarySettingsListItemModel);
        v91 = v116;
        sub_10002EA78(v89, v116, type metadata accessor for PrimarySettingsListItemModel);
        v92 = *(v10 + 1);
        v122[0] = *v10;
        v122[1] = v92;
        v123 = v10[32];
        v93 = *(v91 + 16);
        v124[0] = *v91;
        v124[1] = v93;
        v125 = *(v91 + 32);
        if ((sub_10002BB48(v122, v124) & 1) == 0 || (sub_10003A2B4(&v10[*(v120 + 20)], v91 + *(v120 + 20)) & 1) == 0)
        {
          break;
        }

        v94 = *(v120 + 24);
        v95 = *&v10[v94];
        v96 = v91;
        v97 = *(v91 + v94);
        sub_10002E948(v96, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E948(v10, type metadata accessor for PrimarySettingsListItemModel);
        v41 = v119;
        if (v95 != v97)
        {
          goto LABEL_111;
        }

        v89 += v90;
        v88 += v90;
        if (!--v86)
        {
          goto LABEL_6;
        }
      }

      sub_10002E948(v91, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E948(v10, type metadata accessor for PrimarySettingsListItemModel);
LABEL_111:
      sub_10002E948(v121, type metadata accessor for PrimarySettingsListSectionModel);
LABEL_112:
      sub_10002E948(v41, type metadata accessor for PrimarySettingsListSectionModel);
      return 0;
    }

LABEL_6:
    sub_10002E948(v121, type metadata accessor for PrimarySettingsListSectionModel);
    result = sub_10002E948(v41, type metadata accessor for PrimarySettingsListSectionModel);
    a1 = v105;
    v33 = v110;
    v40 = v109;
  }

  if (v100 <= v36 + 1)
  {
    v43 = v36 + 1;
  }

  else
  {
    v43 = v100;
  }

  v44 = v43 - 1;
  while (1)
  {
    v45 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v45 >= v100)
    {
      v71 = sub_10004DED0(&unk_10015E950, &unk_100115C30);
      (*(*(v71 - 8) + 56))(v33, 1, 1, v71);
      v109 = 0;
      v36 = v44;
      goto LABEL_18;
    }

    v46 = *(v101 + 8 * v45);
    ++v36;
    if (v46)
    {
      v109 = (v46 - 1) & v46;
      v42 = __clz(__rbit64(v46)) | (v45 << 6);
      v36 = v45;
      goto LABEL_17;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1000A3B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemModel();
  v71 = *(v4 - 8);
  v5 = *(v71 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = (&v60 - v10);
  __chkstk_darwin(v9);
  v67 = &v60 - v12;
  v13 = sub_10004DED0(&qword_10015E928, &qword_100115C18);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v68 = &v60 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  v20 = *(a1 + 16);
  v69 = a2;
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  v66 = v8;
  v21 = 0;
  v65 = a1;
  v22 = *(a1 + 64);
  v61 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v64 = v4;
  v63 = v11;
  v62 = v17;
  while (v25)
  {
    v70 = (v25 - 1) & v25;
    v27 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_16:
    v33 = *(v65 + 48) + 40 * v27;
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    v37 = *(v33 + 24);
    v38 = *(v33 + 32);
    v39 = v67;
    sub_10002EA78(*(v65 + 56) + *(v71 + 72) * v27, v67, type metadata accessor for PrimarySettingsListItemModel);
    v40 = sub_10004DED0(&unk_10015E930, &qword_100115C20);
    v41 = *(v40 + 48);
    v42 = v62;
    *v62 = v34;
    v42[1] = v35;
    v42[2] = v36;
    v42[3] = v37;
    *(v42 + 32) = v38;
    v43 = v39;
    v17 = v42;
    sub_1000A4C50(v43, v42 + v41, type metadata accessor for PrimarySettingsListItemModel);
    (*(*(v40 - 8) + 56))(v17, 0, 1, v40);
    sub_100029920(v34, v35, v36, v37, v38);
    v4 = v64;
    v11 = v63;
    v30 = v69;
LABEL_17:
    v44 = v68;
    sub_1000A4CB8(v17, v68, &qword_10015E928, &qword_100115C18);
    v45 = sub_10004DED0(&unk_10015E930, &qword_100115C20);
    v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v48 = *(v45 + 48);
    v49 = *(v44 + 16);
    v76[0] = *v44;
    v76[1] = v49;
    v77 = *(v44 + 32);
    sub_1000A4C50(v44 + v48, v11, type metadata accessor for PrimarySettingsListItemModel);
    v50 = sub_100030300(v76);
    v52 = v51;
    sub_100026A04(v76);
    if ((v52 & 1) == 0)
    {
      goto LABEL_26;
    }

    v53 = v66;
    sub_10002EA78(*(v30 + 56) + *(v71 + 72) * v50, v66, type metadata accessor for PrimarySettingsListItemModel);
    v54 = *(v53 + 16);
    v72[0] = *v53;
    v72[1] = v54;
    v73 = *(v53 + 32);
    v55 = v11[1];
    v74[0] = *v11;
    v74[1] = v55;
    v75 = v11[2].i8[0];
    if ((sub_10002BB48(v72, v74) & 1) == 0 || (sub_10003A2B4(v53 + *(v4 + 20), v11->i64 + *(v4 + 20)) & 1) == 0)
    {
      sub_10002E948(v53, type metadata accessor for PrimarySettingsListItemModel);
LABEL_26:
      sub_10002E948(v11, type metadata accessor for PrimarySettingsListItemModel);
      return 0;
    }

    v56 = *(v4 + 24);
    v57 = *(v53 + v56);
    v58 = *(v11->i64 + v56);
    sub_10002E948(v53, type metadata accessor for PrimarySettingsListItemModel);
    result = sub_10002E948(v11, type metadata accessor for PrimarySettingsListItemModel);
    v25 = v70;
    if (v57 != v58)
    {
      return v47;
    }
  }

  if (v26 <= v21 + 1)
  {
    v28 = v21 + 1;
  }

  else
  {
    v28 = v26;
  }

  v29 = v28 - 1;
  v30 = v69;
  while (1)
  {
    v31 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v31 >= v26)
    {
      v59 = sub_10004DED0(&unk_10015E930, &qword_100115C20);
      (*(*(v59 - 8) + 56))(v17, 1, 1, v59);
      v70 = 0;
      v21 = v29;
      goto LABEL_17;
    }

    v32 = *(v61 + 8 * v31);
    ++v21;
    if (v32)
    {
      v70 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v21 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A4108(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1000B8930(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A423C(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 9;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 6;
  *(a2 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &_swiftEmptyArrayStorage;
  *(a2 + 112) = &_swiftEmptySetSingleton;
  *(a2 + 64) = &off_100150230;
  *(a2 + 72) = 0;
  swift_unknownObjectWeakAssign();
  return a2;
}

void sub_1000A42BC()
{
  v0 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v35 - v9;
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000068B0(v3, &qword_10015E910, &unk_10010FC70);
  }

  else
  {
    v39 = *(v5 + 32);
    v40 = v5 + 32;
    v39(v12, v3, v4);
    v41 = [objc_allocWithZone(_LSOpenConfiguration) init];
    [v41 setSensitive:1];
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000659C(v13, qword_100169658);
    v38 = *(v5 + 16);
    v38(v10, v12, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v37 = v5;
      v17 = v16;
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v17 = 136315138;
      sub_10000A520(&qword_10015E918, &type metadata accessor for URL);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v12;
      v20 = v19;
      v21 = *(v37 + 8);
      v21(v10, v4);
      v22 = sub_100025CF0(v18, v20, aBlock);
      v12 = v35;

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Opening URL: %s", v17, 0xCu);
      sub_10000665C(v36);

      v5 = v37;

      v23 = v21;
    }

    else
    {

      v23 = *(v5 + 8);
      v23(v10, v4);
    }

    v24 = [objc_opt_self() defaultWorkspace];
    if (v24)
    {
      v26 = v24;
      URL._bridgeToObjectiveC()(v25);
      v28 = v27;
      v29 = v42;
      v38(v42, v12, v4);
      v30 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v31 = v12;
      v32 = swift_allocObject();
      v39((v32 + v30), v29, v4);
      aBlock[4] = sub_1000A4A08;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009EB78;
      aBlock[3] = &unk_100150348;
      v33 = _Block_copy(aBlock);
      v34 = v41;

      [v26 openURL:v28 configuration:v34 completionHandler:v33];
      _Block_release(v33);

      v23(v31, v4);
    }

    else
    {
      v23(v12, v4);
    }
  }
}

uint64_t sub_1000A4854(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000A924;

  return sub_10009FB5C(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t sub_1000A492C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000ACE4;

  return sub_100015138(a1, v5);
}

void sub_1000A4A08(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10009E908(a1, a2, v6);
}

uint64_t sub_1000A4A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A4AA0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_100059CA0(v1, v4, &qword_10015E690, &qword_100115788);
  return sub_10009884C(v1);
}

uint64_t sub_1000A4B20()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager);
  *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager) = *(v0 + 24);
}

uint64_t sub_1000A4B64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v11 = *(a1 + 32);
  v7 = *a2;
  sub_100059CA0(v10, v9, &qword_10015E690, &qword_100115788);
  return sub_100099214(v10, a5);
}

uint64_t sub_1000A4C24(void *a1)
{
  v2 = v1[3];
  *(v1[2] + *a1 + 8) = v1[4];
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1000A4C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A4CB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004DED0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000A4D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000A0B94(a1, v4, v5, v6);
}

unint64_t sub_1000A4DEC()
{
  result = qword_10015EAF0;
  if (!qword_10015EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EAF0);
  }

  return result;
}

uint64_t sub_1000A4E40()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_100063D94(v1, &v4);
  return sub_10009A8A4(v1);
}

uint64_t sub_1000A4E90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000ACE4;

  return sub_1000BA1B0(a1, v5);
}

uint64_t sub_1000A4F48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A924;

  return sub_1000BA1B0(a1, v5);
}

void sub_1000A5000(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn);
  v4 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 32);
  if (v4 == 255)
  {
    v7 = v1;
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000659C(v8, qword_100169658);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v11 = 136315650;
      v12 = *v7;
      v13 = _typeName(_:qualified:)();
      v15 = sub_100025CF0(v13, v14, &v16);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_100025CF0(0xD000000000000034, 0x80000001001240E0, &v16);
      *(v11 + 22) = 2082;
      *(v11 + 24) = sub_100025CF0(0xD000000000000013, 0x800000010011F040, &v16);
      _os_log_impl(&_mh_execute_header, v9, v10, "(%s.%s): Application is in an unexpected state (no pending selection when called). Falling back to %{public}s", v11, 0x20u);
      swift_arrayDestroy();
    }

    v5 = 0uLL;
    LOBYTE(v4) = 6;
    v6 = 0uLL;
  }

  else
  {
    v5 = *v3;
    v6 = v3[1];
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
}

uint64_t sub_1000A5248()
{
  v1 = *(v0 + 16);

  sub_10002C5C0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

void sub_1000A52CC(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!a2)
  {
    if (!a1)
    {
      goto LABEL_32;
    }

    v4 = a1;
    v5 = [v4 messageActions];
    if (v5)
    {
      v6 = v5;
      sub_100008294(0, &qword_10015EB50, AMSEngagementMessageEventServiceResponse_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_31;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v8 = *(v7 + 32);
      }

      v9 = v8;

      v10 = [v9 placementsMap];

      if (v10)
      {
        sub_10004DED0(&qword_10015EB58, &qword_100115DE0);
        v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (!*(v11 + 16))
        {
          goto LABEL_31;
        }

        v12 = sub_1000B8930(0x536C6172656E6547, 0xEF73676E69747465);
        if ((v13 & 1) == 0)
        {
          goto LABEL_31;
        }

        v7 = *(*(v11 + 56) + 8 * v12);

        if (!(v7 >> 62))
        {
          if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          goto LABEL_31;
        }

LABEL_38:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_18:
          if ((v7 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
            }

            v14 = *(v7 + 32);
          }

          v15 = v14;

          v16 = [v15 makeDialogRequest];
          if (v16)
          {
            v17 = v16;
            v27 = 0;
            v18 = [objc_opt_self() archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v27];
            v19 = v27;
            if (!v18)
            {
              v26 = v19;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              if (!a3)
              {

                return;
              }

              a3(0);

LABEL_34:
              sub_100080CA4(a3);
              return;
            }

            v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;

            v23 = [objc_opt_self() standardUserDefaults];
            isa = Data._bridgeToObjectiveC()().super.isa;
            v25 = String._bridgeToObjectiveC()();
            [v23 setObject:isa forKey:v25];

            byte_1001697D0 = 1;
            sub_1000A5750(v20, v22);
          }

          else
          {
          }

LABEL_32:
          if (!a3)
          {
            return;
          }

          a3(1);
          goto LABEL_34;
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    goto LABEL_32;
  }

  if (a3)
  {

    a3(0);

    sub_100080CA4(a3);
  }
}

uint64_t sub_1000A5750(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1000A57A4(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = *(a1 + 16);
  *(v3 + 24) = *a1;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(a1 + 32);

  sub_10002698C(a1, v16);
  v5 = sub_100010CD0();
  v6 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation;
  swift_beginAccess();
  v7 = *&v5[v6];
  if (!v7)
  {

    goto LABEL_6;
  }

  v8 = v7;

  v9 = [v8 presentedViewController];

  if (!v9)
  {
LABEL_6:
    sub_1000AC0B4(v1, a1);
    goto LABEL_7;
  }

  v10 = *(v1 + 24);
  v11 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation;
  swift_beginAccess();
  v12 = *(v10 + v11);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1000BB120;
    *(v13 + 24) = v3;
    v16[4] = sub_1000BA4BC;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10000411C;
    v16[3] = &unk_1001507A8;
    v14 = _Block_copy(v16);
    v15 = v12;

    [v15 dismissViewControllerAnimated:1 completion:v14];

    _Block_release(v14);

    return;
  }

LABEL_7:
}

void sub_1000A59A0(uint64_t a1)
{
  v2 = v1;
  v171 = type metadata accessor for SettingsAppDetailContent(0);
  v176 = *(v171 - 8);
  v4 = *(v176 + 64);
  v5 = __chkstk_darwin(v171);
  v178 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v6;
  __chkstk_darwin(v5);
  v179 = &v166 - v7;
  v8 = type metadata accessor for SettingsURLDestination(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v180 = &v166 - v14;
  v15 = __chkstk_darwin(v13);
  v183 = &v166 - v16;
  v17 = __chkstk_darwin(v15);
  v173 = &v166 - v18;
  v19 = __chkstk_darwin(v17);
  v181 = &v166 - v20;
  v21 = __chkstk_darwin(v19);
  v175 = &v166 - v22;
  __chkstk_darwin(v21);
  v174 = &v166 - v23;
  v24 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v172 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v184 = &v166 - v29;
  __chkstk_darwin(v28);
  v31 = &v166 - v30;
  v32 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v166 - v34;
  v36 = type metadata accessor for SettingsURLDestination.Action(0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = &v166 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v8;
  v40 = *(v8 + 20);
  v41 = a1;
  sub_10000822C(a1 + v40, v39, type metadata accessor for SettingsURLDestination.Action);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100046460(v39, type metadata accessor for SettingsURLDestination.Action);
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000659C(v65, qword_100169658);
    sub_10000822C(a1, v12, type metadata accessor for SettingsURLDestination);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v66, v67))
    {

      v89 = type metadata accessor for SettingsURLDestination;
      v90 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_18:
      sub_100046460(v90, v89);
      return;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v68 = 141558275;
    *(v68 + 4) = 1752392040;
    *(v68 + 12) = 2081;
    v70 = sub_1000F41C0();
    v72 = v71;
    sub_100046460(v12, type metadata accessor for SettingsURLDestination);
    v73 = sub_100025CF0(v70, v72, aBlock);

    *(v68 + 14) = v73;
    sub_10000665C(v69);

    goto LABEL_11;
  }

  v182 = v9;
  v42 = *(v39 + 1);
  v187 = *v39;
  v188 = v42;
  v170 = v39[32];
  v189 = v170;
  v43 = *(v39 + 1);
  v169 = *v39;
  v168 = v43;
  v44 = *(v39 + 3);
  v167 = *(v39 + 2);
  sub_100010CD0();
  sub_10001A1A0();
  v46 = v45;

  if (!*(v46 + 16) || (v47 = sub_100030300(&v187), (v48 & 1) == 0))
  {

    v74 = type metadata accessor for PrimarySettingsListItemModel();
    (*(*(v74 - 8) + 56))(v35, 1, 1, v74);
    sub_1000068B0(v35, &unk_10015EDB0, &unk_100111C70);
    if (v170 < 6)
    {
      goto LABEL_13;
    }

    if (v170 == 6)
    {
      v95 = v169 == 1 || v169 == 4 || (v169 - 7) < 2;
      if (v169 == 29 || (v169 & 0xFFFFFFFFFFFFFFFELL) == 32 || (v169 - 9) < 2)
      {
        v95 = 1;
      }

      if (v169 == 34)
      {
        v95 = 1;
      }

      if (!(v167 | v168 | v44) && v95)
      {
LABEL_13:
        if (qword_10015AAA0 != -1)
        {
          swift_once();
        }

        v75 = type metadata accessor for Logger();
        sub_10000659C(v75, qword_100169658);
        v76 = v183;
        sub_10000822C(v41, v183, type metadata accessor for SettingsURLDestination);
        sub_10002698C(&v187, aBlock);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.default.getter();
        sub_100026A04(&v187);
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v79 = 141558531;
          *(v79 + 4) = 1752392040;
          *(v79 + 12) = 2081;
          v80 = sub_1000F41C0();
          v82 = v81;
          sub_100046460(v76, type metadata accessor for SettingsURLDestination);
          v83 = sub_100025CF0(v80, v82, aBlock);

          *(v79 + 14) = v83;
          *(v79 + 22) = 2080;
          v85 = sub_100026A58(v84);
          v87 = v86;
          sub_100026A04(&v187);
          v88 = sub_100025CF0(v85, v87, aBlock);

          *(v79 + 24) = v88;
          _os_log_impl(&_mh_execute_header, v77, v78, "Destination '%{private,mask.hash}s' is for a selection not possible currently '%s' which may be loaded async, stashing as pending and returning.", v79, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          sub_100026A04(&v187);

          sub_100046460(v76, type metadata accessor for SettingsURLDestination);
        }

        v91 = v182;
        v92 = v184;
        sub_10000822C(v41, v184, type metadata accessor for SettingsURLDestination);
        (*(v91 + 56))(v92, 0, 1, v185);
        goto LABEL_54;
      }
    }

    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    sub_10000659C(v98, qword_100169658);
    v99 = v180;
    sub_10000822C(v41, v180, type metadata accessor for SettingsURLDestination);
    sub_10002698C(&v187, aBlock);
    v66 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    sub_100026A04(&v187);
    if (!os_log_type_enabled(v66, v100))
    {
      sub_100026A04(&v187);

      v129 = type metadata accessor for SettingsURLDestination;
LABEL_69:
      v89 = v129;
      v90 = v99;
      goto LABEL_18;
    }

    v101 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v101 = 141558531;
    *(v101 + 4) = 1752392040;
    *(v101 + 12) = 2081;
    v102 = sub_1000F41C0();
    v104 = v103;
    sub_100046460(v99, type metadata accessor for SettingsURLDestination);
    v105 = sub_100025CF0(v102, v104, aBlock);

    *(v101 + 14) = v105;
    *(v101 + 22) = 2080;
    v107 = sub_100026A58(v106);
    v109 = v108;
    sub_100026A04(&v187);
    v110 = sub_100025CF0(v107, v109, aBlock);

    *(v101 + 24) = v110;
    _os_log_impl(&_mh_execute_header, v66, v100, "Destination '%{private,mask.hash}s' is for a selection not possible currently '%s' which doesn't have async loading, returning.", v101, 0x20u);
    swift_arrayDestroy();

LABEL_11:

    return;
  }

  v49 = v47;
  v166 = v44;
  v183 = v41;
  v180 = v2;
  v50 = *(v46 + 56);
  v51 = type metadata accessor for PrimarySettingsListItemModel();
  v52 = *(v51 - 8);
  v53 = v50 + *(v52 + 72) * v49;
  v2 = v180;
  sub_10000822C(v53, v35, type metadata accessor for PrimarySettingsListItemModel);

  (*(v52 + 56))(v35, 0, 1, v51);
  sub_1000068B0(v35, &unk_10015EDB0, &unk_100111C70);
  v54 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
  swift_beginAccess();
  sub_100059CA0(v2 + v54, v31, &qword_10015ED78, &qword_100115FB8);
  v55 = *(v182 + 48);
  v56 = v185;
  if (v55(v31, 1, v185) != 1)
  {
    sub_100026A04(&v187);
    sub_1000068B0(v31, &qword_10015ED78, &qword_100115FB8);
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v111 = type metadata accessor for Logger();
    sub_10000659C(v111, qword_100169658);
    v112 = v181;
    sub_10000822C(v183, v181, type metadata accessor for SettingsURLDestination);

    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v115 = 141558787;
      *(v115 + 4) = 1752392040;
      *(v115 + 12) = 2081;
      v116 = sub_1000F41C0();
      v117 = v112;
      v119 = v118;
      sub_100046460(v117, type metadata accessor for SettingsURLDestination);
      v120 = sub_100025CF0(v116, v119, aBlock);

      *(v115 + 14) = v120;
      *(v115 + 22) = 2160;
      *(v115 + 24) = 1752392040;
      *(v115 + 32) = 2081;
      v2 = v180;
      v121 = v172;
      sub_100059CA0(v180 + v54, v172, &qword_10015ED78, &qword_100115FB8);
      LODWORD(v120) = v55(v121, 1, v185);

      if (v120 == 1)
      {
        __break(1u);
        return;
      }

      v122 = v173;
      sub_100030854(v121, v173, type metadata accessor for SettingsURLDestination);
      v123 = sub_1000F41C0();
      v125 = v124;
      sub_100046460(v122, type metadata accessor for SettingsURLDestination);
      v126 = sub_100025CF0(v123, v125, aBlock);

      *(v115 + 34) = v126;
      _os_log_impl(&_mh_execute_header, v113, v114, "Received new destination request '%{private,mask.hash}s' while one is already in progress ('%{private,mask.hash}s'). Setting as next pending destination.", v115, 0x2Au);
      swift_arrayDestroy();

      v127 = v182;
      v56 = v185;
    }

    else
    {

      sub_100046460(v112, type metadata accessor for SettingsURLDestination);
      v127 = v182;
    }

    v92 = v184;
    sub_10000822C(v183, v184, type metadata accessor for SettingsURLDestination);
    (*(v127 + 56))(v92, 0, 1, v56);
LABEL_54:
    v128 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
    swift_beginAccess();
    sub_1000BB1A0(v92, v2 + v128, &qword_10015ED78, &qword_100115FB8);
    swift_endAccess();
    return;
  }

  v181 = v54;
  sub_1000068B0(v31, &qword_10015ED78, &qword_100115FB8);
  *&v190 = v169;
  *(&v190 + 1) = v168;
  v57 = v166;
  *&v191 = v167;
  *(&v191 + 1) = v166;
  v192 = v170;
  v58 = *(v2 + 24);
  swift_getKeyPath();
  v193.i64[0] = v58;

  sub_10002698C(&v187, aBlock);
  sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v59 = *(v58 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection);
  v60 = *(v58 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8);
  v61 = *(v58 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16);
  v62 = *(v58 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24);
  v63 = *(v58 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32);
  sub_100031DF8(v59, v60, v61, v62, *(v58 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32));

  if (v63 == 255)
  {
    sub_10002698C(&v187, aBlock);
    sub_100032660(v169, v168, v167, v57, v170);
    v64 = 0;
  }

  else
  {
    v193.i64[0] = v59;
    v193.i64[1] = v60;
    v194 = v61;
    v195 = v62;
    v196 = v63;
    v64 = sub_10002BB48(v187.i64, &v193);
  }

  sub_100032660(v59, v60, v61, v62, v63);
  v130 = *(v182 + 56);
  v131 = v184;
  v130(v184, 1, 1, v56);
  v132 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  swift_beginAccess();
  sub_1000BB1A0(v131, v2 + v132, &qword_10015ED78, &qword_100115FB8);
  swift_endAccess();
  sub_10000822C(v183, v131, type metadata accessor for SettingsURLDestination);
  v130(v131, 0, 1, v56);
  v133 = v181;
  swift_beginAccess();
  sub_10003BBC0(v131, v2 + v133, &qword_10015ED78, &qword_100115FB8);
  v134 = swift_endAccess();
  sub_1000A8CB0(v134);
  sub_1000068B0(v131, &qword_10015ED78, &qword_100115FB8);
  if (v189 >= 3u)
  {
    LODWORD(v185) = v64 ^ 1;
    if (v64)
    {
      sub_100026A04(&v187);
      swift_getKeyPath();
      aBlock[0] = v2;
      sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v145 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
      swift_beginAccess();
      v99 = v179;
      sub_10000822C(v2 + v145, v179, type metadata accessor for SettingsAppDetailContent);
    }

    else
    {
      v147 = *(v2 + 24);
      v148 = *(v171 + 20);

      v99 = v179;
      sub_10008F610(v149, (v179 + v148));

      v150 = v191;
      *v99 = v190;
      *(v99 + 16) = v150;
      *(v99 + 32) = v192;
    }

    v151 = v182;
    v152 = swift_allocObject();
    swift_weakInit();
    v153 = v178;
    sub_10000822C(v99, v178, type metadata accessor for SettingsAppDetailContent);
    v154 = v175;
    sub_10000822C(v183, v175, type metadata accessor for SettingsURLDestination);
    v155 = (*(v176 + 80) + 25) & ~*(v176 + 80);
    v156 = (v177 + *(v151 + 80) + v155) & ~*(v151 + 80);
    v157 = swift_allocObject();
    *(v157 + 16) = v152;
    *(v157 + 24) = v185 & 1;
    sub_100030854(v153, v157 + v155, type metadata accessor for SettingsAppDetailContent);
    sub_100030854(v154, v157 + v156, type metadata accessor for SettingsURLDestination);
    v158 = v157 + ((v10 + v156 + 7) & 0xFFFFFFFFFFFFFFF8);
    v159 = v188;
    *v158 = v187;
    *(v158 + 16) = v159;
    *(v158 + 32) = v189;
    v160 = *(v2 + 24);
    v161 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation;
    swift_beginAccess();
    v162 = *(v160 + v161);
    if (!v162)
    {

      sub_100046460(v99, type metadata accessor for SettingsAppDetailContent);
      swift_endAccess();

      return;
    }

    swift_endAccess();
    v163 = swift_allocObject();
    *(v163 + 16) = sub_1000BA4EC;
    *(v163 + 24) = v157;
    aBlock[4] = sub_1000BBA30;
    aBlock[5] = v163;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000411C;
    aBlock[3] = &unk_1001505F0;
    v164 = _Block_copy(aBlock);
    v165 = v162;

    [v165 dismissViewControllerAnimated:1 completion:v164];
    _Block_release(v164);

    v129 = type metadata accessor for SettingsAppDetailContent;
    goto LABEL_69;
  }

  sub_100026A04(&v187);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v135 = type metadata accessor for Logger();
  sub_10000659C(v135, qword_100169658);
  v136 = v174;
  sub_10000822C(v183, v174, type metadata accessor for SettingsURLDestination);
  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    aBlock[0] = v140;
    *v139 = 141558275;
    *(v139 + 4) = 1752392040;
    *(v139 + 12) = 2081;
    v141 = sub_1000F41C0();
    v143 = v142;
    sub_100046460(v136, type metadata accessor for SettingsURLDestination);
    v144 = sub_100025CF0(v141, v143, aBlock);

    *(v139 + 14) = v144;
    _os_log_impl(&_mh_execute_header, v137, v138, "Destination's selection '%{private,mask.hash}s' is a CFU, setting selection and allowing it to handle needed actions.", v139, 0x16u);
    sub_10000665C(v140);
  }

  else
  {

    sub_100046460(v136, type metadata accessor for SettingsURLDestination);
  }

  v146 = *(v2 + 24);

  sub_1000954AC(&v190);
}

void sub_1000A71BC(uint64_t *a1)
{
  v3 = type metadata accessor for EngagementLinkData();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  v5 = __chkstk_darwin(v3);
  v6 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v36 - v7;
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000659C(v9, qword_1001696A0);
  sub_10000822C(a1, v8, type metadata accessor for EngagementLinkData);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v36[1] = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v37 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = v14;
    aBlock[0] = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v16 = &v8[*(v3 + 24)];
    v17 = URL.absoluteString.getter();
    v19 = v18;
    sub_100046460(v8, type metadata accessor for EngagementLinkData);
    v20 = sub_100025CF0(v17, v19, aBlock);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Will evaluate engagement link data for URL '%{private,mask.hash}s'", v13, 0x16u);
    sub_10000665C(v15);
    v6 = v37;
  }

  else
  {

    sub_100046460(v8, type metadata accessor for EngagementLinkData);
  }

  v21 = *a1;
  v22 = a1[1];
  v23 = a1[2];
  v24 = a1[3];
  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  v27 = [objc_opt_self() bagForProfile:v25 profileVersion:v26];

  v28 = [objc_allocWithZone(AMSURLParser) initWithBag:v27];
  URL._bridgeToObjectiveC()(*(v3 + 24));
  v30 = v29;
  v31 = [v28 typeForURL:v29];

  v32 = swift_allocObject();
  swift_weakInit();
  sub_10000822C(a1, v6, type metadata accessor for EngagementLinkData);
  v33 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  sub_100030854(v6, v34 + v33, type metadata accessor for EngagementLinkData);
  aBlock[4] = sub_1000BB12C;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B384C;
  aBlock[3] = &unk_1001507F8;
  v35 = _Block_copy(aBlock);

  [v31 addSuccessBlock:v35];
  _Block_release(v35);
}

uint64_t sub_1000A760C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v4 = type metadata accessor for NavigationPath();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1000A7704(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v3 = *a2;
  sub_100059CA0(v6, v5, &qword_10015E690, &qword_100115788);
  return sub_1000954AC(v6);
}

void sub_1000A7760(char a1)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_100169658);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = a1 & 1;
    *(v6 + 8) = 1024;
    swift_getKeyPath();
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v6 + 10) = *(v1 + 32);

    _os_log_impl(&_mh_execute_header, v4, v5, "Setting selectionClearsNavigationStackPath to %{BOOL}d from %{BOOL}d.", v6, 0xEu);
  }

  else
  {
  }
}

uint64_t sub_1000A791C()
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_1000A79BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

void sub_1000A7A8C(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 32) == (a1 & 1))
  {
    sub_1000A7760(a1 & 1);
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A7BA4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for NavigationPath();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_1000A7C70(v7);
}

uint64_t sub_1000A7C70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NavigationPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_100018684(&qword_10015EDD0, &type metadata accessor for NavigationPath);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (v10)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v9, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[-2] = v2;
    v14[-1] = a1;
    v14[1] = v2;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v11)(a1, v4);
}

uint64_t sub_1000A7EF0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000A7F8C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  return sub_10000822C(v5 + v3, a1, type metadata accessor for SettingsAppDetailContent);
}

uint64_t sub_1000A8068()
{
  v50 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v1 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v51 = (&v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for SettingsURLDestination.Action(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for SettingsURLDestination(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v46 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v45 - v18;
  v20 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
  swift_beginAccess();
  v47 = v20;
  sub_100059CA0(v0 + v20, v12, &qword_10015ED78, &qword_100115FB8);
  v48 = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000068B0(v12, &qword_10015ED78, &qword_100115FB8);
  }

  sub_100030854(v12, v19, type metadata accessor for SettingsURLDestination);
  sub_10000822C(&v19[*(v13 + 20)], v6, type metadata accessor for SettingsURLDestination.Action);
  v22 = v19;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v6[32];
    sub_10002C5C0(*v6, *(v6 + 1), *(v6 + 2), *(v6 + 3), v6[32]);
    if (v23 <= 2)
    {
      swift_getKeyPath();
      v52[3] = v0;
      sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
      v24 = v0;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
      swift_beginAccess();
      v26 = type metadata accessor for SettingsAppDetailContent(0);
      v27 = v51;
      sub_10000822C(v25 + *(v26 + 20), v51, type metadata accessor for SettingsAppDetailContent.ContentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *v27;
        v29 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
        sub_1000AFC44(v19, v29, 0);
      }

      else
      {
        sub_100046460(v27, type metadata accessor for SettingsAppDetailContent.ContentType);
        if (qword_10015AAA0 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_10000659C(v32, qword_100169658);
        v33 = v46;
        sub_10000822C(v19, v46, type metadata accessor for SettingsURLDestination);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v52[0] = v37;
          *v36 = 141558275;
          *(v36 + 4) = 1752392040;
          *(v36 + 12) = 2081;
          v38 = sub_1000F41C0();
          v40 = v39;
          sub_100046460(v33, type metadata accessor for SettingsURLDestination);
          v41 = sub_100025CF0(v38, v40, v52);

          *(v36 + 14) = v41;
          _os_log_impl(&_mh_execute_header, v34, v35, "No valid detail content for destination '%{private,mask.hash}s', bailing.", v36, 0x16u);
          sub_10000665C(v37);
        }

        else
        {

          sub_100046460(v33, type metadata accessor for SettingsURLDestination);
        }

        v42 = v49;
        (*(v48 + 56))(v49, 1, 1, v13);
        v43 = v47;
        swift_beginAccess();
        sub_10003BBC0(v42, v24 + v43, &qword_10015ED78, &qword_100115FB8);
        v44 = swift_endAccess();
        sub_1000A8CB0(v44);
        sub_1000068B0(v42, &qword_10015ED78, &qword_100115FB8);
      }
    }

    v30 = type metadata accessor for SettingsURLDestination;
    v31 = v22;
  }

  else
  {
    sub_100046460(v19, type metadata accessor for SettingsURLDestination);
    v30 = type metadata accessor for SettingsURLDestination.Action;
    v31 = v6;
  }

  return sub_100046460(v31, v30);
}

uint64_t sub_1000A86E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  return sub_10000822C(v3 + v4, a2, type metadata accessor for SettingsAppDetailContent);
}

uint64_t sub_1000A87BC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SettingsAppDetailContent(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000822C(a1, v7, type metadata accessor for SettingsAppDetailContent);
  v8 = *a2;
  return sub_1000A885C(v7);
}

uint64_t sub_1000A885C(uint64_t a1)
{
  v3 = type metadata accessor for SettingsAppDetailContent(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  sub_10000822C(v10, v9, type metadata accessor for SettingsAppDetailContent);
  v11 = sub_1000BAABC(v9, a1);
  sub_100046460(v9, type metadata accessor for SettingsAppDetailContent);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v14[-16] = v1;
    *&v14[-8] = a1;
    v15 = v1;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10000822C(a1, v7, type metadata accessor for SettingsAppDetailContent);
    swift_beginAccess();
    sub_1000BABF8(v7, v10);
    swift_endAccess();
    swift_getKeyPath();
    v15 = v1;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v10 + 32) <= 2u)
    {
      sub_1000A8068();
    }

    sub_100046460(v7, type metadata accessor for SettingsAppDetailContent);
  }

  return sub_100046460(a1, type metadata accessor for SettingsAppDetailContent);
}

uint64_t sub_1000A8B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsAppDetailContent(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000822C(a2, v7, type metadata accessor for SettingsAppDetailContent);
  v8 = a1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  sub_1000BABF8(v7, v8);
  swift_endAccess();
  swift_getKeyPath();
  v10[1] = a1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + 32) <= 2u)
  {
    sub_1000A8068();
  }

  return sub_100046460(v7, type metadata accessor for SettingsAppDetailContent);
}

uint64_t sub_1000A8CB0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v1 - 8);
  v65 = v1;
  v2 = *(v64 + 64);
  __chkstk_darwin(v1);
  v62 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v61 = *(v63 - 8);
  v4 = *(v61 + 64);
  __chkstk_darwin(v63);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsURLDestination(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v56 - v11;
  v12 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v66 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v56 - v20;
  __chkstk_darwin(v19);
  v23 = &v56 - v22;
  v24 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
  swift_beginAccess();
  sub_100059CA0(v0 + v24, v23, &qword_10015ED78, &qword_100115FB8);
  v25 = *(v7 + 48);
  v26 = v25(v23, 1, v6);
  v27 = v23;
  v28 = v0;
  sub_1000068B0(v27, &qword_10015ED78, &qword_100115FB8);
  if (v26 != 1)
  {
LABEL_4:
    sub_100059CA0(v0 + v24, v18, &qword_10015ED78, &qword_100115FB8);
    v29 = v25(v18, 1, v6);
    sub_1000068B0(v18, &qword_10015ED78, &qword_100115FB8);
    if (v29 != 1)
    {
      v30 = *(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_cleanupCurrentlyInProgressURLDestinationSubject);
      sub_10004DED0(&unk_10015ED48, &qword_100115FB0);
      sub_1000525A0(&qword_10015EDA8, &unk_10015ED48, &qword_100115FB0);
      Subject<>.send()();
    }

    goto LABEL_12;
  }

  sub_1000A94D8(v21);
  if (v25(v21, 1, v6) == 1)
  {
    sub_1000068B0(v21, &qword_10015ED78, &qword_100115FB8);
    goto LABEL_4;
  }

  v31 = v21;
  v32 = v59;
  sub_100030854(v31, v59, type metadata accessor for SettingsURLDestination);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000659C(v33, qword_100169658);
  v34 = v58;
  sub_10000822C(v32, v58, type metadata accessor for SettingsURLDestination);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v57 = v25;
    v39 = v6;
    v40 = v0;
    v41 = v38;
    aBlock[0] = v38;
    *v37 = 136315138;
    v42 = sub_1000F41C0();
    v43 = v34;
    v45 = v44;
    sub_100046460(v43, type metadata accessor for SettingsURLDestination);
    v46 = sub_100025CF0(v42, v45, aBlock);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "Found pending URL request '%s', queueing it up.", v37, 0xCu);
    sub_10000665C(v41);
    v28 = v40;
    v6 = v39;
    v25 = v57;

    v32 = v59;
  }

  else
  {

    sub_100046460(v34, type metadata accessor for SettingsURLDestination);
  }

  sub_1000A59A0(v32);
  sub_100046460(v32, type metadata accessor for SettingsURLDestination);
LABEL_12:
  v47 = v66;
  sub_100059CA0(v28 + v24, v66, &qword_10015ED78, &qword_100115FB8);
  v48 = v25(v47, 1, v6);
  result = sub_1000068B0(v47, &qword_10015ED78, &qword_100115FB8);
  if (v48 == 1)
  {
    sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
    v50 = static OS_dispatch_queue.main.getter();
    v51 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000BA4E4;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000411C;
    aBlock[3] = &unk_100150578;
    v52 = _Block_copy(aBlock);

    v53 = v60;
    static DispatchQoS.unspecified.getter();
    v67 = &_swiftEmptyArrayStorage;
    sub_100018684(&unk_10015ED90, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004DED0(&qword_10015D718, &qword_1001141C8);
    sub_1000525A0(&qword_10015EDA0, &qword_10015D718, &qword_1001141C8);
    v54 = v62;
    v55 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);

    (*(v64 + 8))(v54, v55);
    (*(v61 + 8))(v53, v63);
  }

  return result;
}

uint64_t sub_1000A94D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  swift_beginAccess();
  sub_100059CA0(v1 + v10, v9, &qword_10015ED78, &qword_100115FB8);
  v11 = type metadata accessor for SettingsURLDestination(0);
  v12 = (*(v11 - 8) + 48);
  v13 = (*v12)(v9, 1, v11);
  v14 = (v12 + 1);
  if (v13 == 1)
  {
    sub_1000068B0(v9, &qword_10015ED78, &qword_100115FB8);
    return (*v14)(a1, 1, 1, v11);
  }

  else
  {
    sub_100030854(v9, a1, type metadata accessor for SettingsURLDestination);
    v16 = *v14;
    (*v14)(v7, 1, 1, v11);
    swift_beginAccess();
    sub_1000BB1A0(v7, v1 + v10, &qword_10015ED78, &qword_100115FB8);
    swift_endAccess();
    return v16(a1, 0, 1, v11);
  }
}

uint64_t sub_1000A96DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000A9738(1);
  }

  return result;
}

void sub_1000A9738(char a1)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 32) != v3)
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000659C(v4, qword_100169658);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109376;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v7 + 4) = *(v1 + 32);

      *(v7 + 8) = 1024;
      *(v7 + 10) = a1 & 1;
    }

    else
    {
    }

    v8 = a1 & 1;
    if (*(v1 + 32) == v8)
    {
      sub_1000A7760(v8);
      *(v1 + 32) = v8;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_1000A99F4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *a1;
  swift_beginAccess();
  return sub_100059CA0(v11 + v9, a4, a2, a3);
}

uint64_t sub_1000A9AD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *a2;
  swift_beginAccess();
  return sub_100059CA0(v9 + v10, a5, a3, a4);
}

uint64_t sub_1000A9BB8()
{
  v1 = v0;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&qword_10015EF20, &unk_100116140);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v27 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  swift_getKeyPath();
  v28 = v0;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  (*(v3 + 104))(v16, enum case for UserInterfaceSizeClass.regular(_:), v2);
  (*(v3 + 56))(v16, 0, 1, v2);
  v18 = *(v7 + 56);
  sub_100059CA0(v1 + v17, v10, &qword_10015EF28, &qword_100116590);
  sub_100059CA0(v16, &v10[v18], &qword_10015EF28, &qword_100116590);
  v19 = *(v3 + 48);
  if (v19(v10, 1, v2) != 1)
  {
    v21 = v27;
    sub_100059CA0(v10, v27, &qword_10015EF28, &qword_100116590);
    if (v19(&v10[v18], 1, v2) != 1)
    {
      v22 = v26;
      (*(v3 + 32))(v26, &v10[v18], v2);
      sub_100018684(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v3 + 8);
      v23(v22, v2);
      sub_1000068B0(v16, &qword_10015EF28, &qword_100116590);
      v23(v21, v2);
      sub_1000068B0(v10, &qword_10015EF28, &qword_100116590);
      return v20 & 1;
    }

    sub_1000068B0(v16, &qword_10015EF28, &qword_100116590);
    (*(v3 + 8))(v21, v2);
    goto LABEL_6;
  }

  sub_1000068B0(v16, &qword_10015EF28, &qword_100116590);
  if (v19(&v10[v18], 1, v2) != 1)
  {
LABEL_6:
    sub_1000068B0(v10, &qword_10015EF20, &unk_100116140);
    v20 = 0;
    return v20 & 1;
  }

  sub_1000068B0(v10, &qword_10015EF28, &qword_100116590);
  v20 = 1;
  return v20 & 1;
}

void sub_1000AA050()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000659C(v10, qword_100169640);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v2;
    v37[0] = v33;
    *v13 = 136315394;
    v14 = *v1;
    v15 = _typeName(_:qualified:)();
    v17 = v3;
    v18 = sub_100025CF0(v15, v16, v37);

    *(v13 + 4) = v18;
    v3 = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001245D0, v37);
    _os_log_impl(&_mh_execute_header, v11, v12, "Start (%s.%s)…", v13, 0x16u);
    swift_arrayDestroy();
    v2 = v34;
  }

  swift_getKeyPath();
  v37[0] = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  v20 = type metadata accessor for SettingsAppDetailContent(0);
  sub_10000822C(&v19[*(v20 + 20)], v9, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v9;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v3;
      v26 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2113;
      v27 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
      *(v24 + 14) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Calling will become active on %{private,mask.hash}@.", v24, 0x16u);
      sub_1000068B0(v26, &unk_10015F9C0, &unk_100115230);
      v3 = v34;
    }

    v28 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
    if ([v28 respondsToSelector:"willBecomeActive"])
    {
      [v28 willBecomeActive];
    }

    else
    {
    }
  }

  else
  {
    sub_100046460(v9, type metadata accessor for SettingsAppDetailContent.ContentType);
  }

  swift_getKeyPath();
  v36 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v30 = v1 + v29;
  v31 = v35;
  (*(v3 + 16))(v35, v30, v2);
  NavigationPath.withCollectionProxy(_:)();
  (*(v3 + 8))(v31, v2);
  sub_1000B42F8(v1);
}

void sub_1000AA5E4()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000659C(v37, qword_100169640);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v3;
    v41[0] = v13;
    *v12 = 136315394;
    v14 = *v1;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100025CF0(v15, v16, v41);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100025CF0(0xD000000000000020, 0x80000001001245F0, v41);
    _os_log_impl(&_mh_execute_header, v10, v11, "Start (%s.%s)…", v12, 0x16u);
    swift_arrayDestroy();
    v3 = v38;
  }

  swift_getKeyPath();
  v41[0] = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  v19 = type metadata accessor for SettingsAppDetailContent(0);
  sub_10000822C(&v18[*(v19 + 20)], v9, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v9;
    v21 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22 && (v23 = v22, [v22 shouldReloadSpecifiersOnResume]))
    {
      if (qword_10015AA80 != -1)
      {
        swift_once();
      }

      sub_10000659C(v37, qword_1001695F8);
      v24 = v21;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v37 = v24;

      v27 = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38 = v3;
        v30 = v2;
        v31 = v29;
        *v28 = 141558275;
        *(v28 + 4) = 1752392040;
        *(v28 + 12) = 2113;
        *(v28 + 14) = v23;
        *v29 = v23;
        v32 = v37;
        _os_log_impl(&_mh_execute_header, v27, v26, "Reloading specifiers on resume for %{private,mask.hash}@.", v28, 0x16u);
        sub_1000068B0(v31, &unk_10015F9C0, &unk_100115230);
        v2 = v30;
        v3 = v38;
      }

      [v23 reloadSpecifiers];
    }

    else
    {
    }
  }

  else
  {
    sub_100046460(v9, type metadata accessor for SettingsAppDetailContent.ContentType);
  }

  swift_getKeyPath();
  v40 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v34 = v1 + v33;
  v35 = v39;
  (*(v3 + 16))(v39, v34, v2);
  NavigationPath.withCollectionProxy(_:)();
  (*(v3 + 8))(v35, v2);
  sub_1000B44D4(v1);
}

void sub_1000AABD0()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000659C(v11, qword_100169640);

  v63 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v64 = v6;
  v62 = v3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    *&v68 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = *v1;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100025CF0(v18, v19, &v68);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100025CF0(0xD00000000000001FLL, 0x8000000100124590, &v68);
    _os_log_impl(&_mh_execute_header, v13, v14, "Start (%s.%s)…", v16, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  *&v68 = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  v22 = type metadata accessor for SettingsAppDetailContent(0);
  sub_10000822C(&v21[*(v22 + 20)], v10, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v10;
    v24 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
    v25 = [v24 canBeShownFromSuspendedState];

    if ((v25 & 1) == 0)
    {

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v66 = v64;
        *v37 = 136315138;
        LODWORD(v63) = v36;
        v38 = sub_100010CD0();
        swift_getKeyPath();
        *&v68 = v38;
        sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v39 = *&v38[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection];
        v40 = *&v38[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8];
        v42 = *&v38[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16];
        v41 = *&v38[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24];
        v43 = v38[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32];
        sub_100031DF8(v39, v40, v42, v41, v43);

        *&v68 = v39;
        *(&v68 + 1) = v40;
        *&v69 = v42;
        *(&v69 + 1) = v41;
        v70 = v43;
        sub_10004DED0(&qword_10015E690, &qword_100115788);
        v44 = String.init<A>(describing:)();
        v46 = sub_100025CF0(v44, v45, &v66);

        *(v37 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v35, v63, "Root for currentSelection '%s' is a Preferences Controller that cannot be shown from a suspended state.", v37, 0xCu);
        sub_10000665C(v64);
      }

      v68 = 0u;
      v69 = 0u;
      v70 = 6;
      sub_1000A57A4(&v68);

      goto LABEL_27;
    }
  }

  else
  {
    sub_100046460(v10, type metadata accessor for SettingsAppDetailContent.ContentType);
  }

  swift_getKeyPath();
  *&v68 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v27 = v62;
  v28 = v64;
  v29 = (*(v62 + 16))(v64, v1 + v26, v2);
  v67 = &_swiftEmptyArrayStorage;
  __chkstk_darwin(v29);
  *(&v61 - 2) = &v67;
  NavigationPath.withCollectionProxy(_:)();
  v30 = v67[2];
  if (!v30)
  {
LABEL_13:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "There are no controllers on the navigation path that cannot be shown from suspended state.", v34, 2u);
    }

LABEL_16:
    (*(v27 + 8))(v28, v2);
LABEL_27:
    sub_1000B38B4(v1);
    return;
  }

  v31 = 0;
  while (*(v67 + v31 + 32) == 1)
  {
    if (v30 == ++v31)
    {
      goto LABEL_13;
    }
  }

  if (!v31)
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "First controller on the navigation path cannot be shown from suspended state.", v57, 2u);
    }

    v66 = 0;
    Transaction.disablesAnimations.setter();
    withTransaction<A>(_:_:)();

    goto LABEL_16;
  }

  v47 = NavigationPath.count.getter();
  v48 = v47 - v31;
  if (!__OFSUB__(v47, v31))
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134349312;
      *(v51 + 4) = v48;
      *(v51 + 12) = 2050;
      swift_beginAccess();
      *(v51 + 14) = NavigationPath.count.getter();
      _os_log_impl(&_mh_execute_header, v49, v50, "Popping '%{public}ld' items from the navigation path (count is '%{public}ld').", v51, 0x16u);
    }

    v52 = v64;
    swift_beginAccess();
    v53 = NavigationPath.count.getter();
    if (v48 && v53 >= v48)
    {
      swift_beginAccess();
      NavigationPath.removeLast(_:)(v48);
      v54 = swift_endAccess();
      __chkstk_darwin(v54);
      *(&v61 - 2) = v1;
      *(&v61 - 1) = v52;
      v65 = 0;
      Transaction.disablesAnimations.setter();
      withTransaction<A>(_:_:)();

      (*(v27 + 8))(v52, v2);
    }

    else
    {
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 134349312;
        *(v60 + 4) = v48;
        *(v60 + 12) = 2050;
        *(v60 + 14) = NavigationPath.count.getter();
        _os_log_impl(&_mh_execute_header, v58, v59, "Unexpected number of items to pop '%{public}ld' when there are only '%{public}ld' items in the navigation path.", v60, 0x16u);
      }

      (*(v27 + 8))(v64, v2);
    }

    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_1000AB624(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = sub_10004DED0(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v18 - v14;
  sub_100059CA0(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

uint64_t sub_1000AB6D0()
{
  v0 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v28 - v5;
  v7 = type metadata accessor for SettingsURLDestination(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
    swift_beginAccess();
    sub_100059CA0(v16 + v17, v6, &qword_10015ED78, &qword_100115FB8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return sub_1000068B0(v6, &qword_10015ED78, &qword_100115FB8);
    }

    else
    {
      sub_100030854(v6, v14, type metadata accessor for SettingsURLDestination);
      if (qword_10015AAA0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000659C(v18, qword_100169658);
      sub_10000822C(v14, v12, type metadata accessor for SettingsURLDestination);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v29 = v21;
        v30 = swift_slowAlloc();
        v31 = v30;
        *v21 = 136446210;
        v28 = sub_1000F41C0();
        v23 = v22;
        sub_100046460(v12, type metadata accessor for SettingsURLDestination);
        v24 = sub_100025CF0(v28, v23, &v31);

        v25 = v29;
        *(v29 + 1) = v24;
        _os_log_impl(&_mh_execute_header, v19, v20, "It has been 15 seconds since processing for %{public}s started. Assuming client controller didn't call completion. Cleaning up state so navigation isn't stuck.", v25, 0xCu);
        sub_10000665C(v30);
      }

      else
      {

        sub_100046460(v12, type metadata accessor for SettingsURLDestination);
      }

      v26 = *(v8 + 56);
      v26(v4, 1, 1, v7);
      v27 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
      swift_beginAccess();
      sub_1000BB1A0(v4, v16 + v27, &qword_10015ED78, &qword_100115FB8);
      swift_endAccess();
      v26(v4, 1, 1, v7);
      swift_beginAccess();
      sub_10003BBC0(v4, v16 + v17, &qword_10015ED78, &qword_100115FB8);
      swift_endAccess();
      sub_1000A8CB0();

      sub_1000068B0(v4, &qword_10015ED78, &qword_100115FB8);
      return sub_100046460(v14, type metadata accessor for SettingsURLDestination);
    }
  }

  return result;
}

uint64_t sub_1000ABB58()
{
  [objc_opt_self() registerApplicationURLStateProvider:0];
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  v4 = type metadata accessor for NavigationPath();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100046460(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent, type metadata accessor for SettingsAppDetailContent);
  sub_1000068B0(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination, &qword_10015ED78, &qword_100115FB8);
  sub_1000068B0(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination, &qword_10015ED78, &qword_100115FB8);
  v5 = *(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_cleanupCurrentlyInProgressURLDestinationSubject);

  v6 = *(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_observer);

  sub_1000068B0(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass, &qword_10015EF28, &qword_100116590);
  sub_1000068B0(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase, &qword_10015EFB0, &qword_100116220);
  v7 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel___observationRegistrar;
  v8 = type metadata accessor for ObservationRegistrar();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_1000ABCF0()
{
  sub_1000ABB58();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000ABD50(uint64_t a1, char a2)
{
  v3 = type metadata accessor for NavigationPath();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_100010CD0();
    swift_getKeyPath();
    v24.i64[0] = v9;
    sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *&v9[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection];
    v11 = *&v9[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8];
    v12 = *&v9[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16];
    v13 = *&v9[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24];
    v14 = v9[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32];
    sub_100031DF8(v10, v11, v12, v13, v9[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32]);

    v15 = a2;
    v16 = qword_100116280[a2];
    v24 = v16;
    v25 = 0;
    v26 = 0;
    v27 = 6;
    if (v14 == 255)
    {
      sub_100032660(v10, v11, v12, v13, 0xFFu);
      sub_100032660(v16, 0, 0, 0, 6u);
    }

    else
    {
      v22[0] = v10;
      v22[1] = v11;
      v22[2] = v12;
      v22[3] = v13;
      v23 = v14;
      v17 = sub_10002BB48(v22, &v24);
      sub_10002C5C0(v16, 0, 0, 0, 6u);
      sub_100032660(v10, v11, v12, v13, v14);
      if (v17)
      {
        NavigationPath.init()();
        sub_1000A7C70(v6);
      }
    }

    v18 = *(v8 + 24);
    v20[0] = qword_100116280[v15];
    memset(&v20[1], 0, 24);
    v21 = 6;

    sub_1000954AC(v20);
  }

  return result;
}

id sub_1000ABFB4(void *a1)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169658);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finish Setup Completion called, dismissing.", v5, 2u);
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1000AC0B4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v62 = *(a2 + 16);
  v60 = v3;
  v63 = a2;
  v61 = *(a2 + 32);
  v53 = type metadata accessor for SettingsAppDetailContent(0);
  v4 = *(*(v53 - 8) + 64);
  v5 = __chkstk_darwin(v53);
  v55 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v54 = &v49[-v8];
  __chkstk_darwin(v7);
  v56 = &v49[-v9];
  v58 = type metadata accessor for UserInterfaceSizeClass();
  v57 = *(v58 - 8);
  v10 = *(v57 + 64);
  __chkstk_darwin(v58);
  v51 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10004DED0(&qword_10015EF20, &unk_100116140);
  v13 = *(v12 - 8);
  v59 = (v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v49[-v15];
  v17 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v52 = &v49[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v22 = &v49[-v21];
  v23 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v49[-v25];
  v27 = type metadata accessor for SettingsURLDestination(0);
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 1, 1, v27);
  v29 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  swift_beginAccess();
  sub_1000BB1A0(v26, a1 + v29, &qword_10015ED78, &qword_100115FB8);
  swift_endAccess();
  v28(v26, 1, 1, v27);
  v30 = v57;
  v31 = v58;
  v32 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
  swift_beginAccess();
  sub_10003BBC0(v26, a1 + v32, &qword_10015ED78, &qword_100115FB8);
  v33 = swift_endAccess();
  sub_1000A8CB0(v33);
  sub_1000068B0(v26, &qword_10015ED78, &qword_100115FB8);
  sub_100010CD0();
  memset(v67, 0, 32);
  v67[32] = -1;
  sub_1000954AC(v67);

  swift_getKeyPath();
  *&v65[0] = a1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  (*(v30 + 104))(v22, enum case for UserInterfaceSizeClass.regular(_:), v31);
  (*(v30 + 56))(v22, 0, 1, v31);
  v35 = *(v59 + 14);
  sub_100059CA0(a1 + v34, v16, &qword_10015EF28, &qword_100116590);
  sub_100059CA0(v22, &v16[v35], &qword_10015EF28, &qword_100116590);
  v36 = *(v30 + 48);
  if (v36(v16, 1, v31) == 1)
  {
    sub_1000068B0(v22, &qword_10015EF28, &qword_100116590);
    if (v36(&v16[v35], 1, v31) == 1)
    {
      sub_1000068B0(v16, &qword_10015EF28, &qword_100116590);
LABEL_16:
      sub_10003C054();
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v59 = v22;
  v37 = v52;
  sub_100059CA0(v16, v52, &qword_10015EF28, &qword_100116590);
  if (v36(&v16[v35], 1, v31) == 1)
  {
    sub_1000068B0(v59, &qword_10015EF28, &qword_100116590);
    (*(v30 + 8))(v37, v31);
LABEL_6:
    sub_1000068B0(v16, &qword_10015EF20, &unk_100116140);
    goto LABEL_7;
  }

  v45 = v51;
  (*(v30 + 32))(v51, &v16[v35], v31);
  sub_100018684(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v30 + 8);
  v46(v45, v31);
  sub_1000068B0(v59, &qword_10015EF28, &qword_100116590);
  v46(v37, v31);
  sub_1000068B0(v16, &qword_10015EF28, &qword_100116590);
  if (v50)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (qword_10015AB18 != -1)
  {
    swift_once();
  }

  v38 = sub_10000659C(v53, qword_1001697A0);
  v39 = v56;
  sub_10000822C(v38, v56, type metadata accessor for SettingsAppDetailContent);
  v40 = a1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  v41 = v54;
  sub_10000822C(v40, v54, type metadata accessor for SettingsAppDetailContent);
  v42 = sub_1000BAABC(v41, v39);
  sub_100046460(v41, type metadata accessor for SettingsAppDetailContent);
  if (v42)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v49[-16] = a1;
    *&v49[-8] = v39;
    *&v65[0] = a1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v44 = v55;
    sub_10000822C(v39, v55, type metadata accessor for SettingsAppDetailContent);
    swift_beginAccess();
    sub_1000BABF8(v44, v40);
    swift_endAccess();
    swift_getKeyPath();
    *&v65[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v40 + 32) <= 2u)
    {
      sub_1000A8068();
    }

    sub_100046460(v55, type metadata accessor for SettingsAppDetailContent);
  }

  sub_100046460(v39, type metadata accessor for SettingsAppDetailContent);
LABEL_17:
  v47 = *(a1 + 24);
  v65[0] = v60;
  v65[1] = v62;
  v66 = v61;

  sub_10002698C(v63, v64);
  sub_100095C68(v65);
}