unint64_t sub_100055A88()
{
  result = qword_1000E0C08;
  if (!qword_1000E0C08)
  {
    sub_100015288(&qword_1000E0C10, &qword_100084A98);
    sub_100055B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0C08);
  }

  return result;
}

unint64_t sub_100055B14()
{
  result = qword_1000E0C18;
  if (!qword_1000E0C18)
  {
    sub_100015288(&qword_1000E0C20, &qword_100084AA0);
    swift_getOpaqueTypeConformance2();
    sub_10002DDAC(&qword_1000E0C28, &qword_1000E0C30, &qword_100084AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0C18);
  }

  return result;
}

uint64_t sub_100055BFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007D5F8();

  return v1;
}

id sub_100055C74()
{
  result = [objc_allocWithZone(type metadata accessor for LocationAuthorizationMonitor()) init];
  qword_1000E4B58 = result;
  return result;
}

uint64_t sub_100055CA8()
{
  v1 = sub_10007DEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DED8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v12 = objc_opt_self();
  v13 = v0;
  if ([v12 isMainThread])
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v14 = sub_10007D5C8();
    sub_1000046BC(v14, qword_1000E4B28);
    v15 = sub_10007D5A8();
    v16 = sub_10007E298();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "LocationAuthorizationMonitor: startMonitoring (on main queue)", v17, 2u);
    }

    sub_100056104(v13);
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v26 = v2;
    v19 = sub_10007D5C8();
    sub_1000046BC(v19, qword_1000E4B28);
    v20 = sub_10007D5A8();
    v21 = sub_10007E2A8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "LocationAuthorizationMonitor: startMonitoring (on NON-MAIN queue?!?)", v22, 2u);
    }

    sub_100056B3C();
    v23 = sub_10007E328();
    aBlock[4] = sub_100056B34;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C9420;
    v24 = _Block_copy(aBlock);

    sub_10007DEC8();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100002E64();
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    sub_10007E338();
    _Block_release(v24);

    (*(v26 + 8))(v5, v1);
    return (*(v7 + 8))(v10, v6);
  }
}

void sub_100056104(uint64_t a1)
{
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100056B3C();
  *v6 = sub_10007E328();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = sub_10007DF68();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v8 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_bundleIdentifier);
    v9 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_bundleIdentifier + 8);
    v10 = sub_10007E328();
    v11 = objc_allocWithZone(CLLocationManager);
    v12 = sub_10007E138();
    v13 = [v11 initWithEffectiveBundleIdentifier:v12 delegate:a1 onQueue:v10];

    v14 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_locationManager);
    *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_locationManager) = v13;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005628C(void *a1)
{
  v2 = v1;
  v4 = [a1 authorizationStatus];
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v5 = sub_10007D5C8();
  sub_1000046BC(v5, qword_1000E4B28);
  v6 = sub_10007D5A8();
  v7 = sub_10007E2C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136446210;
    type metadata accessor for CLAuthorizationStatus(0);
    v10 = sub_10007E178();
    v12 = sub_100051190(v10, v11, &v27);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "LocationAuthorizationMonitor: authorization changed: %{public}s", v8, 0xCu);
    sub_1000250AC(v9);
  }

  if (v4 - 3 > 1)
  {
    v22 = sub_10007D5A8();
    v23 = sub_10007E298();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "LocationAuthorizationMonitor: not authorized", v24, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = 0;
    v28 = 1;
    v25 = v2;
  }

  else
  {
    v13 = [a1 accuracyAuthorization];
    v14 = sub_10007D5A8();
    v15 = sub_10007E298();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446210;
      type metadata accessor for CLAccuracyAuthorization(0);
      v18 = sub_10007E178();
      v20 = sub_100051190(v18, v19, &v27);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "LocationAuthorizationMonitor: authorized with %{public}s", v16, 0xCu);
      sub_1000250AC(v17);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v13;
    v28 = 0;
    v21 = v2;
  }

  return sub_10007D608();
}

id sub_1000567B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationAuthorizationMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LocationAuthorizationMonitor()
{
  result = qword_1000E0CB8;
  if (!qword_1000E0CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000568D8()
{
  sub_10005697C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10005697C()
{
  if (!qword_1000E0CC8)
  {
    sub_100015288(&qword_1000E0CD0, &qword_100084448);
    v0 = sub_10007D618();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E0CC8);
    }
  }
}

uint64_t sub_1000569EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationAuthorizationMonitor();
  result = sub_10007D5D8();
  *a1 = result;
  return result;
}

uint64_t sub_100056A2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007D5F8();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_100056AB4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_10007D608();
}

unint64_t sub_100056B3C()
{
  result = qword_1000E0890;
  if (!qword_1000E0890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E0890);
  }

  return result;
}

void sub_100056BD0()
{
  type metadata accessor for SuggestedDestinationEntryContent(319);
  if (v0 <= 0x3F)
  {
    sub_100056C54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100056C54()
{
  if (!qword_1000DEBB0)
  {
    sub_10007DFF8();
    v0 = sub_10007D648();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DEBB0);
    }
  }
}

uint64_t sub_100056CC8@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v45 = &v42 - v3;
  v4 = sub_100015240(&qword_1000E1030, &qword_100085510);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v50 = &v42 - v6;
  v7 = sub_10007DA88();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  __chkstk_darwin(v7);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100015240(&qword_1000E10A0, &qword_100085008);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = (&v42 - v16);
  v18 = sub_100015240(&qword_1000E10A8, &qword_100085010);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v42 - v20;
  v22 = sub_100015240(&qword_1000E10B0, &qword_100085018);
  v43 = *(v22 - 8);
  v44 = v22;
  v23 = *(v43 + 64);
  __chkstk_darwin(v22);
  v25 = &v42 - v24;
  *v21 = sub_10007D948();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v26 = &v21[*(sub_100015240(&qword_1000E10B8, &qword_100085020) + 44)];
  *v17 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v17 + *(v11 + 44)) = 0x4024000000000000;
  v27 = v17 + *(v11 + 48);
  v28 = v51;
  sub_100059128(v51, v27, type metadata accessor for SuggestedDestinationEntryContent);
  sub_100026310(v17, v15, &qword_1000E10A0, &qword_100085008);
  *v26 = 0;
  v26[8] = 1;
  *(v26 + 2) = 0x3FF0000000000000;
  v29 = sub_100015240(&qword_1000E10C0, qword_100085028);
  sub_100026310(v15, &v26[*(v29 + 48)], &qword_1000E10A0, &qword_100085008);
  sub_1000256C0(v17, &qword_1000E10A0, &qword_100085008);
  sub_1000256C0(v15, &qword_1000E10A0, &qword_100085008);
  v30 = v47;
  sub_10007DA78();
  v52 = v28;
  sub_10007DE88();
  v31 = sub_100015240(&qword_1000E1068, &qword_100084F40);
  v32 = sub_10002DDAC(&qword_1000E10C8, &qword_1000E10A8, &qword_100085010);
  v33 = v18;
  v34 = sub_10002DDAC(&qword_1000E1078, &qword_1000E1068, &qword_100084F40);
  v42 = v25;
  sub_10007DCB8();
  (*(v48 + 8))(v30, v49);
  sub_1000256C0(v21, &qword_1000E10A8, &qword_100085010);
  v35 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v36 = v50;
  sub_100026310(v51 + *(v35 + 40), v50, &qword_1000E1030, &qword_100085510);
  v37 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  result = (*(*(v37 - 8) + 48))(v36, 1, v37);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v39 = v45;
    sub_100026310(v36 + *(v37 + 28), v45, &qword_1000DEEE0, &qword_100082E30);
    sub_10005943C(v36, type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent);
    v53 = v33;
    v54 = v31;
    v55 = v32;
    v56 = v34;
    swift_getOpaqueTypeConformance2();
    v40 = v44;
    v41 = v42;
    sub_10007DC18();
    sub_1000256C0(v39, &qword_1000DEEE0, &qword_100082E30);
    return (*(v43 + 8))(v41, v40);
  }

  return result;
}

uint64_t sub_100057324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = v2;
  v48 = a2;
  v4 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v47 = &v43 - v6;
  v7 = sub_100015240(&qword_1000E1030, &qword_100085510);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v53 = &v43 - v9;
  v10 = sub_10007DA88();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100015240(&qword_1000E1038, &qword_100084F10);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v43 - v19;
  v50 = sub_100015240(&qword_1000E1040, &qword_100084F18);
  v21 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v23 = &v43 - v22;
  v24 = sub_100015240(&qword_1000E1048, &qword_100084F20);
  v45 = *(v24 - 8);
  v46 = v24;
  v25 = *(v45 + 64);
  __chkstk_darwin(v24);
  v27 = &v43 - v26;
  *v23 = sub_10007D948();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v28 = &v23[*(sub_100015240(&qword_1000E1050, &qword_100084F28) + 44)];
  *v20 = sub_10007D878();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v29 = &v20[*(sub_100015240(&qword_1000E1058, &qword_100084F30) + 44)];
  v49 = v3;
  sub_1000578DC(v3, v29);
  sub_100026310(v20, v18, &qword_1000E1038, &qword_100084F10);
  *v28 = 0;
  v28[8] = 1;
  *(v28 + 2) = 0x3FF0000000000000;
  v30 = sub_100015240(&qword_1000E1060, &qword_100084F38);
  sub_100026310(v18, &v28[*(v30 + 48)], &qword_1000E1038, &qword_100084F10);
  sub_1000256C0(v20, &qword_1000E1038, &qword_100084F10);
  sub_1000256C0(v18, &qword_1000E1038, &qword_100084F10);
  sub_10007DA78();
  v55 = v3;
  sub_10007DE88();
  v31 = sub_100015240(&qword_1000E1068, &qword_100084F40);
  v32 = sub_10002DDAC(&qword_1000E1070, &qword_1000E1040, &qword_100084F18);
  v33 = v50;
  v34 = sub_10002DDAC(&qword_1000E1078, &qword_1000E1068, &qword_100084F40);
  v44 = v27;
  v54 = v31;
  sub_10007DCB8();
  (*(v51 + 8))(v13, v52);
  v35 = v23;
  v36 = v53;
  sub_1000256C0(v35, &qword_1000E1040, &qword_100084F18);
  v37 = type metadata accessor for SuggestedDestinationEntryContent(0);
  sub_100026310(v49 + *(v37 + 40), v36, &qword_1000E1030, &qword_100085510);
  v38 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  result = (*(*(v38 - 8) + 48))(v36, 1, v38);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v47;
    sub_100026310(v36 + *(v38 + 28), v47, &qword_1000DEEE0, &qword_100082E30);
    sub_10005943C(v36, type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent);
    v56 = v33;
    v57 = v54;
    v58 = v32;
    v59 = v34;
    swift_getOpaqueTypeConformance2();
    v41 = v46;
    v42 = v44;
    sub_10007DC18();
    sub_1000256C0(v40, &qword_1000DEEE0, &qword_100082E30);
    return (*(v45 + 8))(v42, v41);
  }

  return result;
}

uint64_t sub_1000578DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = sub_10007E0C8();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000E1030, &qword_100085510);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v35 - v9;
  v11 = sub_100015240(&qword_1000E1080, &qword_100084FB8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = (&v35 - v14);
  v37 = sub_100015240(&qword_1000E1088, &qword_100084FC0);
  v16 = *(*(v37 - 8) + 64);
  v17 = __chkstk_darwin(v37);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v35 - v21;
  __chkstk_darwin(v20);
  v24 = &v35 - v23;
  *v15 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v15 + *(v12 + 44)) = 0x4024000000000000;
  v25 = (v15 + *(v12 + 48));
  v26 = type metadata accessor for SuggestedDestinationMediumLargePlatterContent(0);
  sub_100059128(a1, v25 + *(v26 + 24), type metadata accessor for SuggestedDestinationEntryContent);
  *v25 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(v25 + *(v26 + 20)) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  swift_storeEnumTagMultiPayload();
  v27 = type metadata accessor for SuggestedDestinationEntryContent(0);
  sub_100026310(a1 + *(v27 + 40), v10, &qword_1000E1030, &qword_100085510);
  v28 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  result = (*(*(v28 - 8) + 48))(v10, 1, v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = v36;
    (*(v3 + 16))(v6, v10, v36);
    sub_10005943C(v10, type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent);
    sub_10007E0A8();
    (*(v3 + 8))(v6, v30);
    sub_10007DE88();
    sub_10007D668();
    sub_10002DB0C(v15, v22, &qword_1000E1080, &qword_100084FB8);
    v31 = &v22[*(v37 + 36)];
    v32 = v40;
    *v31 = v39;
    *(v31 + 1) = v32;
    *(v31 + 2) = v41;
    sub_10002DB0C(v22, v24, &qword_1000E1088, &qword_100084FC0);
    sub_100026310(v24, v19, &qword_1000E1088, &qword_100084FC0);
    v33 = v38;
    sub_100026310(v19, v38, &qword_1000E1088, &qword_100084FC0);
    v34 = v33 + *(sub_100015240(&qword_1000E1090, &qword_100085000) + 48);
    sub_1000256C0(v24, &qword_1000E1088, &qword_100084FC0);
    *v34 = 0;
    *(v34 + 8) = 1;
    return sub_1000256C0(v19, &qword_1000E1088, &qword_100084FC0);
  }

  return result;
}

uint64_t sub_100057D98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E1068, &qword_100084F40);
  sub_100059128(a1, a2 + v4[10], type metadata accessor for SuggestedDestinationEntryContent);
  *a2 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[9]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v4[11]) = 2;
  return result;
}

uint64_t sub_100057EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SuggestedDestinationWidgetView(0);
  sub_100026310(v1 + *(v12 + 20), v11, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007DFF8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1000580AC()
{
  v1 = v0;
  v2 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_100015240(&qword_1000E1030, &qword_100085510);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SuggestedDestinationAccessoryRectangularPlatterContent(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100059128(v1, v13, type metadata accessor for SuggestedDestinationEntryContent);
  v14 = type metadata accessor for SuggestedDestinationEntryContent(0);
  sub_100026310(v1 + *(v14 + 40), v9, &qword_1000E1030, &qword_100085510);
  v15 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  result = (*(*(v15 - 8) + 48))(v9, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100026310(&v9[*(v15 + 28)], v5, &qword_1000DEEE0, &qword_100082E30);
    sub_10005943C(v9, type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent);
    sub_100059190(&qword_1000E1098, type metadata accessor for SuggestedDestinationAccessoryRectangularPlatterContent);
    sub_10007DC18();
    sub_1000256C0(v5, &qword_1000DEEE0, &qword_100082E30);
    return sub_10005943C(v13, type metadata accessor for SuggestedDestinationAccessoryRectangularPlatterContent);
  }

  return result;
}

uint64_t sub_10005831C@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v59 = type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView(0);
  v2 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v54 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100015240(&qword_1000E0D70, &qword_100084CC0);
  v4 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v58 = &v52 - v5;
  v65 = sub_100015240(&qword_1000E0D78, &qword_100084CC8);
  v6 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v60 = &v52 - v7;
  v57 = type metadata accessor for SuggestedDestinationLargeWidgetView(0);
  v8 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SuggestedDestinationMediumWidgetView(0);
  v10 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100015240(&qword_1000E0D80, &qword_100084CD0);
  v12 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v64 = &v52 - v13;
  v62 = sub_100015240(&qword_1000E0D88, &qword_100084CD8);
  v14 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v61 = &v52 - v15;
  v16 = sub_100015240(&qword_1000E0D90, &qword_100084CE0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v52 - v18;
  v66 = sub_100015240(&qword_1000E0D98, &qword_100084CE8);
  v20 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v22 = &v52 - v21;
  v68 = sub_100015240(&qword_1000E0DA0, &unk_100084CF0);
  v23 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v25 = &v52 - v24;
  v26 = type metadata accessor for SuggestedDestinationSmallWidgetView(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10007DFF8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057EA4(v34);
  v35 = (*(v31 + 88))(v34, v30);
  if (v35 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100059128(v1, v29, type metadata accessor for SuggestedDestinationEntryContent);
    sub_100059128(v29, v19, type metadata accessor for SuggestedDestinationSmallWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100059190(&qword_1000E0DC0, type metadata accessor for SuggestedDestinationSmallWidgetView);
    sub_100059190(&qword_1000E0DC8, type metadata accessor for SuggestedDestinationMediumWidgetView);
    sub_10007D9D8();
    sub_100026310(v22, v61, &qword_1000E0D98, &qword_100084CE8);
    swift_storeEnumTagMultiPayload();
    sub_1000591D8();
    sub_1000592C4();
    sub_10007D9D8();
    sub_1000256C0(v22, &qword_1000E0D98, &qword_100084CE8);
    sub_100026310(v25, v64, &qword_1000E0DA0, &unk_100084CF0);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_1000593B0();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v25, &qword_1000E0DA0, &unk_100084CF0);
    v36 = type metadata accessor for SuggestedDestinationSmallWidgetView;
  }

  else
  {
    v39 = v61;
    v52 = v25;
    v40 = v64;
    if (v35 == enum case for WidgetFamily.systemMedium(_:))
    {
      v41 = v22;
      v42 = v55;
      sub_100059128(v1, v55, type metadata accessor for SuggestedDestinationEntryContent);
      sub_100059128(v42, v19, type metadata accessor for SuggestedDestinationMediumWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_100059190(&qword_1000E0DC0, type metadata accessor for SuggestedDestinationSmallWidgetView);
      sub_100059190(&qword_1000E0DC8, type metadata accessor for SuggestedDestinationMediumWidgetView);
      sub_10007D9D8();
      sub_100026310(v41, v39, &qword_1000E0D98, &qword_100084CE8);
      swift_storeEnumTagMultiPayload();
      sub_1000591D8();
      sub_1000592C4();
      v43 = v52;
      sub_10007D9D8();
      sub_1000256C0(v41, &qword_1000E0D98, &qword_100084CE8);
      sub_100026310(v43, v40, &qword_1000E0DA0, &unk_100084CF0);
      swift_storeEnumTagMultiPayload();
      sub_100015240(&qword_1000DEC58, &unk_100082C50);
      sub_1000593B0();
      sub_10002D148();
      sub_10007D9D8();
      sub_1000256C0(v43, &qword_1000E0DA0, &unk_100084CF0);
      v37 = type metadata accessor for SuggestedDestinationMediumWidgetView;
      v38 = v42;
      return sub_10005943C(v38, v37);
    }

    v44 = v64;
    if (v35 == enum case for WidgetFamily.systemLarge(_:))
    {
      v45 = v53;
      sub_100059128(v1, v53, type metadata accessor for SuggestedDestinationEntryContent);
      sub_100059128(v45, v58, type metadata accessor for SuggestedDestinationLargeWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_100059190(&qword_1000E0DA8, type metadata accessor for SuggestedDestinationLargeWidgetView);
      sub_100059190(&qword_1000E0DB0, type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView);
      v46 = v60;
      sub_10007D9D8();
      sub_100026310(v46, v39, &qword_1000E0D78, &qword_100084CC8);
      swift_storeEnumTagMultiPayload();
      sub_1000591D8();
      sub_1000592C4();
      v47 = v52;
      sub_10007D9D8();
      sub_1000256C0(v46, &qword_1000E0D78, &qword_100084CC8);
      sub_100026310(v47, v44, &qword_1000E0DA0, &unk_100084CF0);
      swift_storeEnumTagMultiPayload();
      sub_100015240(&qword_1000DEC58, &unk_100082C50);
      sub_1000593B0();
      sub_10002D148();
      sub_10007D9D8();
      sub_1000256C0(v47, &qword_1000E0DA0, &unk_100084CF0);
      v37 = type metadata accessor for SuggestedDestinationLargeWidgetView;
      v38 = v45;
      return sub_10005943C(v38, v37);
    }

    v49 = v52;
    if (v35 == enum case for WidgetFamily.systemExtraLarge(_:) || v35 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v35 == enum case for WidgetFamily.accessoryCorner(_:) || v35 == enum case for WidgetFamily.accessoryCircular(_:) || v35 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      while (1)
      {
        sub_10007E518();
        __break(1u);
      }
    }

    v50 = v61;
    v29 = v54;
    sub_100059128(v1, v54, type metadata accessor for SuggestedDestinationEntryContent);
    sub_100059128(v29, v58, type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100059190(&qword_1000E0DA8, type metadata accessor for SuggestedDestinationLargeWidgetView);
    sub_100059190(&qword_1000E0DB0, type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView);
    v51 = v60;
    sub_10007D9D8();
    sub_100026310(v51, v50, &qword_1000E0D78, &qword_100084CC8);
    swift_storeEnumTagMultiPayload();
    sub_1000591D8();
    sub_1000592C4();
    sub_10007D9D8();
    sub_1000256C0(v51, &qword_1000E0D78, &qword_100084CC8);
    sub_100026310(v49, v44, &qword_1000E0DA0, &unk_100084CF0);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_1000593B0();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v49, &qword_1000E0DA0, &unk_100084CF0);
    v36 = type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView;
  }

  v37 = v36;
  v38 = v29;
  return sub_10005943C(v38, v37);
}

uint64_t sub_100059128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100059190(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000591D8()
{
  result = qword_1000E0DB8;
  if (!qword_1000E0DB8)
  {
    sub_100015288(&qword_1000E0D98, &qword_100084CE8);
    sub_100059190(&qword_1000E0DC0, type metadata accessor for SuggestedDestinationSmallWidgetView);
    sub_100059190(&qword_1000E0DC8, type metadata accessor for SuggestedDestinationMediumWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0DB8);
  }

  return result;
}

unint64_t sub_1000592C4()
{
  result = qword_1000E0DD0;
  if (!qword_1000E0DD0)
  {
    sub_100015288(&qword_1000E0D78, &qword_100084CC8);
    sub_100059190(&qword_1000E0DA8, type metadata accessor for SuggestedDestinationLargeWidgetView);
    sub_100059190(&qword_1000E0DB0, type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0DD0);
  }

  return result;
}

unint64_t sub_1000593B0()
{
  result = qword_1000E0DD8;
  if (!qword_1000E0DD8)
  {
    sub_100015288(&qword_1000E0DA0, &unk_100084CF0);
    sub_1000591D8();
    sub_1000592C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0DD8);
  }

  return result;
}

uint64_t sub_10005943C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100059528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000595A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100059618()
{
  result = type metadata accessor for SuggestedDestinationEntryContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100059684()
{
  result = qword_1000E1020;
  if (!qword_1000E1020)
  {
    sub_100015288(&qword_1000E1028, &qword_100084DC8);
    sub_1000593B0();
    sub_10002D148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1020);
  }

  return result;
}

void sub_1000597EC()
{
  type metadata accessor for NavigationETAEntryContent(319);
  if (v0 <= 0x3F)
  {
    sub_10002D330(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000598A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v29 = &v25 - v5;
  v27 = sub_10007DA88();
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100015240(&qword_1000E1360, &qword_100085328);
  v10 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v12 = &v25 - v11;
  v26 = sub_100015240(&qword_1000E1368, &qword_100085330);
  v28 = *(v26 - 8);
  v13 = *(v28 + 64);
  __chkstk_darwin(v26);
  v15 = &v25 - v14;
  *v12 = sub_10007D948();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v16 = sub_100015240(&qword_1000E1370, &qword_100085338);
  sub_100059C90(v2, &v12[*(v16 + 44)]);
  sub_10007DA78();
  v31 = v2;
  sub_10007DE88();
  v17 = sub_100015240(&qword_1000E1328, &qword_100085260);
  v18 = sub_10002DDAC(&qword_1000E1378, &qword_1000E1360, &qword_100085328);
  v24 = sub_10002DDAC(&qword_1000E1338, &qword_1000E1328, &qword_100085260);
  v19 = v25;
  sub_10007DCB8();
  (*(v6 + 8))(v9, v27);
  sub_1000256C0(v12, &qword_1000E1360, &qword_100085328);
  v20 = sub_10007D288();
  v21 = v29;
  (*(*(v20 - 8) + 56))(v29, 1, 1, v20);
  v32 = v19;
  v33 = v17;
  v34 = v18;
  v35 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_10007DC18();
  sub_1000256C0(v21, &qword_1000DEEE0, &qword_100082E30);
  return (*(v28 + 8))(v15, v22);
}

uint64_t sub_100059C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E1380, &qword_100085340);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v21 - v10);
  *v11 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v5 + 44)) = 0x4024000000000000;
  v12 = v11 + *(v5 + 48);
  v13 = type metadata accessor for NavigationETASmallWidgetView(0);
  sub_10005BA68(a1 + *(v13 + 20), v12, type metadata accessor for NavigationETAEntryContent);
  v14 = *(type metadata accessor for NavigationETASmallPlatterContent(0) + 20);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v15 = (v12 + v14);
  v16.super.isa = qword_1000E4B68;
  v20._countAndFlagsBits = 0x8000000100090730;
  v22._countAndFlagsBits = 0x402520415445;
  v22._object = 0xE600000000000000;
  v23.value._countAndFlagsBits = 0;
  v23.value._object = 0;
  v24._countAndFlagsBits = 0x402520415445;
  v24._object = 0xE600000000000000;
  *v15 = sub_10007D258(v22, v23, v16, v24, v20);
  v15[1] = v17;
  sub_100026310(v11, v9, &qword_1000E1380, &qword_100085340);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0x3FF0000000000000;
  v18 = sub_100015240(&qword_1000E1388, qword_100085348);
  sub_100026310(v9, a2 + *(v18 + 48), &qword_1000E1380, &qword_100085340);
  sub_1000256C0(v11, &qword_1000E1380, &qword_100085340);
  return sub_1000256C0(v9, &qword_1000E1380, &qword_100085340);
}

uint64_t sub_100059EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v42 = &v36 - v5;
  v6 = sub_10007DA88();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100015240(&qword_1000E12F8, &qword_100085230);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v37 = sub_100015240(&qword_1000E1300, &qword_100085238);
  v17 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v19 = &v36 - v18;
  v20 = sub_100015240(&qword_1000E1308, &qword_100085240);
  v21 = *(v20 - 8);
  v38 = v20;
  v39 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v36 - v23;
  *v19 = sub_10007D948();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v25 = &v19[*(sub_100015240(&qword_1000E1310, &qword_100085248) + 44)];
  *v16 = sub_10007D878();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v26 = sub_100015240(&qword_1000E1318, &qword_100085250);
  sub_10005A3B8(v2, &v16[*(v26 + 44)]);
  sub_100026310(v16, v14, &qword_1000E12F8, &qword_100085230);
  *v25 = 0;
  v25[8] = 1;
  *(v25 + 2) = 0x3FF0000000000000;
  v27 = sub_100015240(&qword_1000E1320, &qword_100085258);
  sub_100026310(v14, &v25[*(v27 + 48)], &qword_1000E12F8, &qword_100085230);
  sub_1000256C0(v16, &qword_1000E12F8, &qword_100085230);
  sub_1000256C0(v14, &qword_1000E12F8, &qword_100085230);
  sub_10007DA78();
  v44 = v2;
  sub_10007DE88();
  v28 = sub_100015240(&qword_1000E1328, &qword_100085260);
  v29 = sub_10002DDAC(&qword_1000E1330, &qword_1000E1300, &qword_100085238);
  v35 = sub_10002DDAC(&qword_1000E1338, &qword_1000E1328, &qword_100085260);
  v30 = v37;
  sub_10007DCB8();
  (*(v40 + 8))(v9, v41);
  sub_1000256C0(v19, &qword_1000E1300, &qword_100085238);
  v31 = sub_10007D288();
  v32 = v42;
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v45 = v30;
  v46 = v28;
  v47 = v29;
  v48 = v35;
  swift_getOpaqueTypeConformance2();
  v33 = v38;
  sub_10007DC18();
  sub_1000256C0(v32, &qword_1000DEEE0, &qword_100082E30);
  return (*(v39 + 8))(v24, v33);
}

uint64_t sub_10005A3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v41 = sub_10007E0C8();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v41);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000E1340, &qword_1000852A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v40 - v9;
  v11 = sub_100015240(&qword_1000E1348, &qword_1000852A8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = (&v40 - v14);
  v40 = sub_100015240(&qword_1000E1350, &qword_1000852B0);
  v16 = *(*(v40 - 8) + 64);
  v17 = __chkstk_darwin(v40);
  v42 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v40 - v20;
  __chkstk_darwin(v19);
  v23 = &v40 - v22;
  *v15 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v15 + *(v12 + 44)) = 0x4024000000000000;
  v24 = (v15 + *(v12 + 48));
  v25 = a1 + *(type metadata accessor for NavigationETAMediumLargeWidgetView(0) + 20);
  v26 = type metadata accessor for NavigationETAMediumLargePlatterContent(0);
  sub_10005BA68(v25, v24 + v26[6], type metadata accessor for NavigationETAEntryContent);
  *v24 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(v24 + v26[5]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  v27 = (v24 + v26[7]);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v28.super.isa = qword_1000E4B68;
  v39._countAndFlagsBits = 0x8000000100090730;
  v47._countAndFlagsBits = 0x402520415445;
  v47._object = 0xE600000000000000;
  v48.value._countAndFlagsBits = 0;
  v48.value._object = 0;
  v49._countAndFlagsBits = 0x402520415445;
  v49._object = 0xE600000000000000;
  *v27 = sub_10007D258(v47, v48, v28, v49, v39);
  v27[1] = v29;
  v30 = type metadata accessor for NavigationETAEntryContent(0);
  sub_100026310(v25 + *(v30 + 36), v10, &qword_1000E1340, &qword_1000852A0);
  v31 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
  result = (*(*(v31 - 8) + 48))(v10, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v33 = v41;
    (*(v3 + 16))(v6, v10, v41);
    sub_10005BD7C(v10, type metadata accessor for NavigationETAEntryContent.ResolvedContent);
    sub_10007E0A8();
    (*(v3 + 8))(v6, v33);
    sub_10007DE88();
    sub_10007D668();
    sub_10002DB0C(v15, v21, &qword_1000E1348, &qword_1000852A8);
    v34 = &v21[*(v40 + 36)];
    v35 = v45;
    *v34 = v44;
    *(v34 + 1) = v35;
    *(v34 + 2) = v46;
    sub_10002DB0C(v21, v23, &qword_1000E1350, &qword_1000852B0);
    v36 = v42;
    sub_100026310(v23, v42, &qword_1000E1350, &qword_1000852B0);
    v37 = v43;
    sub_100026310(v36, v43, &qword_1000E1350, &qword_1000852B0);
    v38 = v37 + *(sub_100015240(&qword_1000E1358, &qword_100085320) + 48);
    sub_1000256C0(v23, &qword_1000E1350, &qword_1000852B0);
    *v38 = 0;
    *(v38 + 8) = 1;
    return sub_1000256C0(v36, &qword_1000E1350, &qword_1000852B0);
  }

  return result;
}

uint64_t sub_10005A914@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2(0) + 20);
  v6 = sub_100015240(&qword_1000E1328, &qword_100085260);
  sub_10005BA68(a1 + v5, a3 + v6[10], type metadata accessor for NavigationETAEntryContent);
  *a3 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[9]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v6[11]) = 4;
  return result;
}

uint64_t sub_10005AA04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NavigationETAWidgetView(0);
  sub_100026310(v1 + *(v12 + 20), v11, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007DFF8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10005AC10@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v64 = type metadata accessor for NavigationETAAccessoryRectangularPlatterContent(0);
  v2 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v61 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_100015240(&qword_1000E1160, &qword_1000850B8);
  v4 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v63 = &v60 - v5;
  v75 = sub_100015240(&qword_1000E1168, &qword_1000850C0);
  v6 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v65 = &v60 - v7;
  v68 = type metadata accessor for NavigationETAMediumLargeWidgetView(0);
  v8 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v66 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_100015240(&qword_1000E1170, &qword_1000850C8);
  v10 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v69 = &v60 - v11;
  v71 = sub_100015240(&qword_1000E1178, &qword_1000850D0);
  v12 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v67 = &v60 - v13;
  v14 = sub_100015240(&qword_1000E1180, &qword_1000850D8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v72 = sub_100015240(&qword_1000E1188, &qword_1000850E0);
  v18 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v20 = &v60 - v19;
  v74 = sub_100015240(&qword_1000E1190, &unk_1000850E8);
  v21 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v23 = &v60 - v22;
  v24 = type metadata accessor for NavigationETASmallWidgetView(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_10007DFF8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005AA04(v32);
  v33 = (*(v29 + 88))(v32, v28);
  if (v33 != enum case for WidgetFamily.systemSmall(_:))
  {
    v36 = v17;
    v37 = v20;
    v38 = v67;
    v39 = v23;
    if (v33 == enum case for WidgetFamily.systemMedium(_:))
    {
      v40 = v66;
      sub_10005BA68(v1, v66 + *(v68 + 20), type metadata accessor for NavigationETAEntryContent);
      *v40 = swift_getKeyPath();
      sub_100015240(&qword_1000DEC18, &qword_100082C10);
      swift_storeEnumTagMultiPayload();
      sub_10005BA68(v40, v36, type metadata accessor for NavigationETAMediumLargeWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_10005BAD0(&qword_1000E11B0, type metadata accessor for NavigationETASmallWidgetView);
      sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView);
      sub_10007D9D8();
      v41 = &qword_1000E1188;
      v42 = &qword_1000850E0;
      sub_100026310(v37, v38, &qword_1000E1188, &qword_1000850E0);
      swift_storeEnumTagMultiPayload();
      sub_10005BB18();
      sub_10005BC04();
      sub_10007D9D8();
      v43 = v37;
    }

    else
    {
      if (v33 != enum case for WidgetFamily.systemLarge(_:))
      {
        v47 = v69;
        if (v33 == enum case for WidgetFamily.systemExtraLarge(_:) || v33 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v33 == enum case for WidgetFamily.accessoryCorner(_:) || v33 == enum case for WidgetFamily.accessoryCircular(_:) || (v48 = v64, v40 = v61, v33 != enum case for WidgetFamily.accessoryRectangular(_:)))
        {
          while (1)
          {
            sub_10007E518();
            __break(1u);
          }
        }

        sub_10005BA68(v1, v61, type metadata accessor for NavigationETAEntryContent);
        v49 = (v40 + *(v48 + 20));
        if (qword_1000DE280 != -1)
        {
          swift_once();
        }

        v50 = qword_1000E4B68;
        v58._countAndFlagsBits = 0x8000000100090730;
        v76._countAndFlagsBits = 0x402520415445;
        v76._object = 0xE600000000000000;
        v78.value._countAndFlagsBits = 0;
        v78.value._object = 0;
        v51.super.isa = qword_1000E4B68;
        v80._countAndFlagsBits = 0x402520415445;
        v80._object = 0xE600000000000000;
        *v49 = sub_10007D258(v76, v78, v51, v80, v58);
        v49[1] = v52;
        v53 = (v40 + *(v48 + 24));
        v59._countAndFlagsBits = 0x8000000100090750;
        v77._countAndFlagsBits = 0x70614D206E65704FLL;
        v77._object = 0xE900000000000073;
        v79.value._countAndFlagsBits = 0;
        v79.value._object = 0;
        v54.super.isa = v50;
        v81._countAndFlagsBits = 0x70614D206E65704FLL;
        v81._object = 0xE900000000000073;
        *v53 = sub_10007D258(v77, v79, v54, v81, v59);
        v53[1] = v55;
        sub_10005BA68(v40, v63, type metadata accessor for NavigationETAAccessoryRectangularPlatterContent);
        swift_storeEnumTagMultiPayload();
        sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView);
        sub_10005BAD0(&qword_1000E11A0, type metadata accessor for NavigationETAAccessoryRectangularPlatterContent);
        v56 = v65;
        sub_10007D9D8();
        sub_100026310(v56, v38, &qword_1000E1168, &qword_1000850C0);
        swift_storeEnumTagMultiPayload();
        sub_10005BB18();
        sub_10005BC04();
        sub_10007D9D8();
        sub_1000256C0(v56, &qword_1000E1168, &qword_1000850C0);
        sub_100026310(v39, v47, &qword_1000E1190, &unk_1000850E8);
        swift_storeEnumTagMultiPayload();
        sub_100015240(&qword_1000DEC58, &unk_100082C50);
        sub_10005BCF0();
        sub_10002D148();
        sub_10007D9D8();
        sub_1000256C0(v39, &qword_1000E1190, &unk_1000850E8);
        v46 = type metadata accessor for NavigationETAAccessoryRectangularPlatterContent;
        goto LABEL_16;
      }

      v44 = v67;
      v40 = v66;
      sub_10005BA68(v1, v66 + *(v68 + 20), type metadata accessor for NavigationETAEntryContent);
      *v40 = swift_getKeyPath();
      sub_100015240(&qword_1000DEC18, &qword_100082C10);
      swift_storeEnumTagMultiPayload();
      sub_10005BA68(v40, v63, type metadata accessor for NavigationETAMediumLargeWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView);
      sub_10005BAD0(&qword_1000E11A0, type metadata accessor for NavigationETAAccessoryRectangularPlatterContent);
      v45 = v65;
      sub_10007D9D8();
      v41 = &qword_1000E1168;
      v42 = &qword_1000850C0;
      sub_100026310(v45, v44, &qword_1000E1168, &qword_1000850C0);
      swift_storeEnumTagMultiPayload();
      sub_10005BB18();
      sub_10005BC04();
      sub_10007D9D8();
      v43 = v45;
    }

    sub_1000256C0(v43, v41, v42);
    sub_100026310(v39, v69, &qword_1000E1190, &unk_1000850E8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_10005BCF0();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v39, &qword_1000E1190, &unk_1000850E8);
    v46 = type metadata accessor for NavigationETAMediumLargeWidgetView;
LABEL_16:
    v34 = v46;
    v35 = v40;
    return sub_10005BD7C(v35, v34);
  }

  sub_10005BA68(v1, v27 + *(v24 + 20), type metadata accessor for NavigationETAEntryContent);
  *v27 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  sub_10005BA68(v27, v17, type metadata accessor for NavigationETASmallWidgetView);
  swift_storeEnumTagMultiPayload();
  sub_10005BAD0(&qword_1000E11B0, type metadata accessor for NavigationETASmallWidgetView);
  sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView);
  sub_10007D9D8();
  sub_100026310(v20, v67, &qword_1000E1188, &qword_1000850E0);
  swift_storeEnumTagMultiPayload();
  sub_10005BB18();
  sub_10005BC04();
  sub_10007D9D8();
  sub_1000256C0(v20, &qword_1000E1188, &qword_1000850E0);
  sub_100026310(v23, v69, &qword_1000E1190, &unk_1000850E8);
  swift_storeEnumTagMultiPayload();
  sub_100015240(&qword_1000DEC58, &unk_100082C50);
  sub_10005BCF0();
  sub_10002D148();
  sub_10007D9D8();
  sub_1000256C0(v23, &qword_1000E1190, &unk_1000850E8);
  v34 = type metadata accessor for NavigationETASmallWidgetView;
  v35 = v27;
  return sub_10005BD7C(v35, v34);
}

uint64_t sub_10005BA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005BAD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005BB18()
{
  result = qword_1000E11A8;
  if (!qword_1000E11A8)
  {
    sub_100015288(&qword_1000E1188, &qword_1000850E0);
    sub_10005BAD0(&qword_1000E11B0, type metadata accessor for NavigationETASmallWidgetView);
    sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E11A8);
  }

  return result;
}

unint64_t sub_10005BC04()
{
  result = qword_1000E11B8;
  if (!qword_1000E11B8)
  {
    sub_100015288(&qword_1000E1168, &qword_1000850C0);
    sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView);
    sub_10005BAD0(&qword_1000E11A0, type metadata accessor for NavigationETAAccessoryRectangularPlatterContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E11B8);
  }

  return result;
}

unint64_t sub_10005BCF0()
{
  result = qword_1000E11C0;
  if (!qword_1000E11C0)
  {
    sub_100015288(&qword_1000E1190, &unk_1000850E8);
    sub_10005BB18();
    sub_10005BC04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E11C0);
  }

  return result;
}

uint64_t sub_10005BD7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10005BE04()
{
  sub_10002D330(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NavigationETAEntryContent(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10005BEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for NavigationETAEntryContent(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10005BFC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for NavigationETAEntryContent(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

unint64_t sub_10005C0D0()
{
  result = qword_1000E12E8;
  if (!qword_1000E12E8)
  {
    sub_100015288(&qword_1000E12F0, &qword_100085180);
    sub_10005BCF0();
    sub_10002D148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E12E8);
  }

  return result;
}

void sub_10005C2D0()
{
  sub_1000368BC(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_1000368BC(319, &qword_1000DF920, &type metadata accessor for RedactionReasons);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SuggestedDestinationEntryContent(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10005C3C0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E1558, &qword_100085520);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100015240(&qword_1000E1560, &qword_100085528);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  *v17 = sub_10007D878();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = sub_100015240(&qword_1000E1568, &qword_100085530);
  sub_10005C608(a1, &v17[*(v18 + 44)]);
  *v10 = sub_10007D878();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = sub_100015240(&qword_1000E1570, &qword_100085538);
  sub_10005C9C8(a1, &v10[*(v19 + 44)]);
  sub_100026310(v17, v15, &qword_1000E1560, &qword_100085528);
  sub_100026310(v10, v8, &qword_1000E1558, &qword_100085520);
  sub_100026310(v15, a2, &qword_1000E1560, &qword_100085528);
  v20 = sub_100015240(&qword_1000E1578, &unk_100085540);
  sub_100026310(v8, a2 + *(v20 + 48), &qword_1000E1558, &qword_100085520);
  sub_1000256C0(v10, &qword_1000E1558, &qword_100085520);
  sub_1000256C0(v17, &qword_1000E1560, &qword_100085528);
  sub_1000256C0(v8, &qword_1000E1558, &qword_100085520);
  return sub_1000256C0(v15, &qword_1000E1560, &qword_100085528);
}

uint64_t sub_10005C608@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v45 = &v42 - v6;
  v7 = sub_100015240(&qword_1000DF278, &qword_100083420);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v42 - v11;
  v12 = *a1;
  v13 = a1[1];
  v51 = v12;
  v52 = v13;
  sub_10002D9A8();

  v14 = sub_10007DBF8();
  v42 = v15;
  v43 = v14;
  LOBYTE(v13) = v16;
  v44 = v17;
  LODWORD(v51) = sub_10007DA38();
  v18 = sub_10007DBA8();
  v20 = v19;
  v22 = v21;
  sub_10007DAF8();
  v23 = sub_10007DBB8();
  v25 = v24;
  v27 = v26;

  sub_10002D9FC(v18, v20, v22 & 1);

  sub_10007DB18();
  v28 = sub_10007DB88();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_10002D9FC(v23, v25, v27 & 1);

  sub_10002D9FC(v43, v42, v13 & 1);

  v51 = v28;
  v52 = v30;
  v53 = v32 & 1;
  v54 = v34;
  v35 = v45;
  sub_10007DCA8();
  sub_10002D9FC(v28, v30, v32 & 1);

  v51 = &type metadata for Text;
  v52 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v36 = v46;
  v37 = v48;
  sub_10007DC78();
  (*(v49 + 8))(v35, v37);
  v38 = v47;
  sub_100026310(v36, v47, &qword_1000DF278, &qword_100083420);
  v39 = v50;
  sub_100026310(v38, v50, &qword_1000DF278, &qword_100083420);
  v40 = v39 + *(sub_100015240(&qword_1000E1598, &qword_100085568) + 48);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_1000256C0(v36, &qword_1000DF278, &qword_100083420);
  return sub_1000256C0(v38, &qword_1000DF278, &qword_100083420);
}

uint64_t sub_10005C9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v46 = &v43 - v6;
  v7 = sub_100015240(&qword_1000E1580, &qword_100085550);
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v47 = &v43 - v10;
  v11 = sub_100015240(&qword_1000E1588, &qword_100085558);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v49 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v43 - v15;
  v16 = *(a1 + 24);
  v55 = *(a1 + 16);
  v56 = v16;
  sub_10002D9A8();

  v17 = sub_10007DBF8();
  v43 = v18;
  v44 = v17;
  v20 = v19;
  v45 = v21;
  LODWORD(v55) = sub_10007DA58();
  v22 = sub_10007DBA8();
  v24 = v23;
  v26 = v25;
  sub_10007DB58();
  v27 = sub_10007DBB8();
  v29 = v28;
  LOBYTE(a1) = v30;
  v32 = v31;

  sub_10002D9FC(v22, v24, v26 & 1);

  sub_10002D9FC(v44, v43, v20 & 1);

  v55 = v27;
  v56 = v29;
  v57 = a1 & 1;
  v58 = v32;
  v33 = v46;
  sub_10007DC08();
  sub_10002D9FC(v27, v29, a1 & 1);

  v55 = &type metadata for Text;
  v56 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v47;
  v36 = v50;
  sub_10007DCA8();
  (*(v51 + 8))(v33, v36);
  v55 = v36;
  v56 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v48;
  v38 = v52;
  sub_10007DC78();
  (*(v53 + 8))(v35, v38);
  v39 = v49;
  sub_100026310(v37, v49, &qword_1000E1588, &qword_100085558);
  v40 = v54;
  sub_100026310(v39, v54, &qword_1000E1588, &qword_100085558);
  v41 = v40 + *(sub_100015240(&qword_1000E1590, &qword_100085560) + 48);
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_1000256C0(v37, &qword_1000E1588, &qword_100085558);
  return sub_1000256C0(v39, &qword_1000E1588, &qword_100085558);
}

uint64_t sub_10005CE24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100026310(v2, &v17 - v11, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007D638();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10005D024@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEF28, &qword_100083930);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SuggestedDestinationMediumLargePlatterContent(0);
  sub_100026310(v1 + *(v12 + 20), v11, &qword_1000DEF28, &qword_100083930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007D708();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10005D258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_100015240(&qword_1000E1558, &qword_100085520);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = (&v51 - v7);
  v8 = sub_100015240(&qword_1000E1560, &qword_100085528);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = (&v51 - v13);
  v14 = sub_100015240(&qword_1000E15A8, &qword_100085578);
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  __chkstk_darwin(v14);
  v17 = &v51 - v16;
  v18 = sub_10007D638();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  v26 = sub_100015240(&qword_1000E15B0, &qword_100085580);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v56 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v51 - v30;
  v32 = a1 + *(type metadata accessor for SuggestedDestinationMediumLargePlatterContent(0) + 24);
  v33 = *(v32 + 56);
  v34 = 1;
  if (v33 == 1)
  {
    goto LABEL_7;
  }

  v52 = *(v32 + 64);
  v53 = a1;
  sub_10005CE24(v25);
  (*(v19 + 16))(v23, v25, v18);
  v35 = (*(v19 + 88))(v23, v18);
  if (v35 == enum case for ColorScheme.light(_:) || (v33 = v52, v35 == enum case for ColorScheme.dark(_:)))
  {
    v36 = *(v19 + 8);
    v37 = v33;
    v36(v25, v18);
    v34 = 1;
    if (v33)
    {
      *v17 = sub_10007D878();
      *(v17 + 1) = 0;
      v17[16] = 1;
      v38 = sub_100015240(&qword_1000E15C0, &qword_100085590);
      a1 = v53;
      sub_10005D85C(v37, v53, &v17[*(v38 + 44)]);

      sub_10000A46C(v17, v31);
      v34 = 0;
    }

    else
    {
      a1 = v53;
    }

LABEL_7:
    (*(v54 + 56))(v31, v34, 1, v55);
    v39 = sub_10007D878();
    v40 = v57;
    *v57 = v39;
    *(v40 + 8) = 0;
    *(v40 + 16) = 1;
    v41 = sub_100015240(&qword_1000E1568, &qword_100085530);
    sub_10005E230(a1, v40 + *(v41 + 44));
    v42 = sub_10007D878();
    v43 = v58;
    *v58 = v42;
    *(v43 + 8) = 0;
    *(v43 + 16) = 1;
    v44 = sub_100015240(&qword_1000E1570, &qword_100085538);
    sub_10005E600(a1, v43 + *(v44 + 44));
    v45 = v56;
    sub_100026310(v31, v56, &qword_1000E15B0, &qword_100085580);
    sub_100026310(v40, v12, &qword_1000E1560, &qword_100085528);
    v46 = v59;
    sub_100026310(v43, v59, &qword_1000E1558, &qword_100085520);
    v47 = v12;
    v48 = v60;
    sub_100026310(v45, v60, &qword_1000E15B0, &qword_100085580);
    v49 = sub_100015240(&qword_1000E15B8, &qword_100085588);
    sub_100026310(v47, v48 + *(v49 + 48), &qword_1000E1560, &qword_100085528);
    sub_100026310(v46, v48 + *(v49 + 64), &qword_1000E1558, &qword_100085520);
    sub_1000256C0(v43, &qword_1000E1558, &qword_100085520);
    sub_1000256C0(v40, &qword_1000E1560, &qword_100085528);
    sub_1000256C0(v31, &qword_1000E15B0, &qword_100085580);
    sub_1000256C0(v46, &qword_1000E1558, &qword_100085520);
    sub_1000256C0(v47, &qword_1000E1560, &qword_100085528);
    return sub_1000256C0(v45, &qword_1000E15B0, &qword_100085580);
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_10005D85C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v91 = a3;
  v90 = sub_100015240(&qword_1000E15C8, &qword_100085598);
  v4 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v77 = &v75 - v5;
  v85 = sub_100015240(&qword_1000E15D0, &qword_1000855A0);
  v6 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v89 = &v75 - v7;
  v87 = sub_100015240(&qword_1000E15D8, &qword_1000855A8);
  v8 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v76 = &v75 - v9;
  v82 = sub_10007D708();
  v83 = *(v82 - 8);
  v10 = *(v83 + 64);
  v11 = __chkstk_darwin(v82);
  v81 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v80 = &v75 - v13;
  v14 = sub_100015240(&qword_1000E15E0, &qword_1000855B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v88 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v75 - v18;
  v19 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v75 - v21;
  v23 = sub_10007DD98();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v75 - v30;
  v78 = sub_100015240(&qword_1000E15E8, &qword_1000855B8);
  v79 = *(v78 - 8);
  v32 = *(v79 + 64);
  __chkstk_darwin(v78);
  v34 = &v75 - v33;
  v35 = sub_100015240(&qword_1000E15F0, &qword_1000855C0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = &v75 - v37;
  v39 = a1;
  sub_10007DD78();
  (*(v24 + 104))(v27, enum case for Image.ResizingMode.stretch(_:), v23);
  sub_10007DDE8();

  (*(v24 + 8))(v27, v23);
  sub_10007DFA8();
  v40 = sub_10007DFC8();
  (*(*(v40 - 8) + 56))(v22, 0, 1, v40);
  sub_10007DDD8();
  v41 = v38;

  sub_100037C7C(v22);
  sub_10007DE88();
  sub_10007D668();
  v42 = &v31[*(v28 + 36)];
  v43 = v95;
  *v42 = v94;
  *(v42 + 1) = v43;
  *(v42 + 2) = v96;
  v44 = sub_10002DDF4();
  sub_10007DCA8();
  sub_1000256C0(v31, &qword_1000DF1F8, &qword_100084360);
  v92 = v28;
  v93 = v44;
  swift_getOpaqueTypeConformance2();
  v45 = v78;
  sub_10007DC78();
  (*(v79 + 8))(v34, v45);
  v46 = v80;
  sub_10005D024(v80);
  v47 = v81;
  sub_10007D6F8();
  sub_10005EFE0(&qword_1000DF958, &type metadata accessor for RedactionReasons);
  v48 = v82;
  LOBYTE(v45) = sub_10007E3E8();
  v49 = *(v83 + 8);
  v49(v47, v48);
  v49(v46, v48);
  if (v45)
  {
    v50 = v76;
    sub_100026310(v41, v76, &qword_1000E15F0, &qword_1000855C0);
    *(v50 + *(sub_100015240(&qword_1000E1608, &qword_1000855C8) + 36)) = 256;
    v51 = sub_10007DAD8();
    sub_10007D628();
    v52 = v50 + *(v87 + 36);
    *v52 = v51;
    *(v52 + 8) = v53;
    *(v52 + 16) = v54;
    *(v52 + 24) = v55;
    *(v52 + 32) = v56;
    *(v52 + 40) = 0;
    v57 = &qword_1000E15D8;
    v58 = &qword_1000855A8;
    sub_100026310(v50, v89, &qword_1000E15D8, &qword_1000855A8);
  }

  else
  {
    v60 = sub_10007DAD8();
    sub_10007D628();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v50 = v77;
    sub_100026310(v41, v77, &qword_1000E15F0, &qword_1000855C0);
    v69 = v89;
    v70 = v50 + *(v90 + 36);
    *v70 = v60;
    *(v70 + 8) = v62;
    *(v70 + 16) = v64;
    *(v70 + 24) = v66;
    *(v70 + 32) = v68;
    *(v70 + 40) = 0;
    v57 = &qword_1000E15C8;
    v58 = &qword_100085598;
    sub_100026310(v50, v69, &qword_1000E15C8, &qword_100085598);
  }

  swift_storeEnumTagMultiPayload();
  sub_10005F028(&qword_1000E15F8, &qword_1000E15D8, &qword_1000855A8, sub_10005EE30);
  sub_10005F028(&qword_1000E1628, &qword_1000E15C8, &qword_100085598, sub_10005EEE8);
  v59 = v86;
  sub_10007D9D8();
  sub_1000256C0(v50, v57, v58);
  v71 = v88;
  sub_100026310(v59, v88, &qword_1000E15E0, &qword_1000855B0);
  v72 = v91;
  sub_100026310(v71, v91, &qword_1000E15E0, &qword_1000855B0);
  v73 = v72 + *(sub_100015240(&qword_1000E1630, &qword_1000855D8) + 48);
  *v73 = 0;
  *(v73 + 8) = 1;
  sub_1000256C0(v59, &qword_1000E15E0, &qword_1000855B0);
  sub_1000256C0(v41, &qword_1000E15F0, &qword_1000855C0);
  return sub_1000256C0(v71, &qword_1000E15E0, &qword_1000855B0);
}

uint64_t sub_10005E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v45 = &v42 - v6;
  v7 = sub_100015240(&qword_1000DF278, &qword_100083420);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v42 - v11;
  v12 = a1 + *(type metadata accessor for SuggestedDestinationMediumLargePlatterContent(0) + 24);
  v13 = *(v12 + 8);
  v51 = *v12;
  v52 = v13;
  sub_10002D9A8();

  v14 = sub_10007DBF8();
  v42 = v15;
  v43 = v14;
  LOBYTE(v13) = v16;
  v44 = v17;
  LODWORD(v51) = sub_10007DA38();
  v18 = sub_10007DBA8();
  v20 = v19;
  v22 = v21;
  sub_10007DAF8();
  v23 = sub_10007DBB8();
  v25 = v24;
  v27 = v26;

  sub_10002D9FC(v18, v20, v22 & 1);

  sub_10007DB18();
  v28 = sub_10007DB88();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_10002D9FC(v23, v25, v27 & 1);

  sub_10002D9FC(v43, v42, v13 & 1);

  v51 = v28;
  v52 = v30;
  v53 = v32 & 1;
  v54 = v34;
  v35 = v45;
  sub_10007DCA8();
  sub_10002D9FC(v28, v30, v32 & 1);

  v51 = &type metadata for Text;
  v52 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v36 = v46;
  v37 = v48;
  sub_10007DC78();
  (*(v49 + 8))(v35, v37);
  v38 = v47;
  sub_100026310(v36, v47, &qword_1000DF278, &qword_100083420);
  v39 = v50;
  sub_100026310(v38, v50, &qword_1000DF278, &qword_100083420);
  v40 = v39 + *(sub_100015240(&qword_1000E1598, &qword_100085568) + 48);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_1000256C0(v36, &qword_1000DF278, &qword_100083420);
  return sub_1000256C0(v38, &qword_1000DF278, &qword_100083420);
}

uint64_t sub_10005E600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v47 = &v44 - v6;
  v7 = sub_100015240(&qword_1000E1580, &qword_100085550);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v48 = &v44 - v10;
  v11 = sub_100015240(&qword_1000E1588, &qword_100085558);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = &v44 - v15;
  v16 = a1 + *(type metadata accessor for SuggestedDestinationMediumLargePlatterContent(0) + 24);
  v17 = *(v16 + 24);
  v56 = *(v16 + 16);
  v57 = v17;
  sub_10002D9A8();

  v18 = sub_10007DBF8();
  v44 = v19;
  v45 = v18;
  v21 = v20;
  v46 = v22;
  LODWORD(v56) = sub_10007DA58();
  v23 = sub_10007DBA8();
  v25 = v24;
  v27 = v26;
  sub_10007DB58();
  v28 = sub_10007DBB8();
  v30 = v29;
  LOBYTE(a1) = v31;
  v33 = v32;

  sub_10002D9FC(v23, v25, v27 & 1);

  sub_10002D9FC(v45, v44, v21 & 1);

  v56 = v28;
  v57 = v30;
  v58 = a1 & 1;
  v59 = v33;
  v34 = v47;
  sub_10007DC08();
  sub_10002D9FC(v28, v30, a1 & 1);

  v56 = &type metadata for Text;
  v57 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v48;
  v37 = v51;
  sub_10007DCA8();
  (*(v52 + 8))(v34, v37);
  v56 = v37;
  v57 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v38 = v49;
  v39 = v53;
  sub_10007DC78();
  (*(v54 + 8))(v36, v39);
  v40 = v50;
  sub_100026310(v38, v50, &qword_1000E1588, &qword_100085558);
  v41 = v55;
  sub_100026310(v40, v55, &qword_1000E1588, &qword_100085558);
  v42 = v41 + *(sub_100015240(&qword_1000E1590, &qword_100085560) + 48);
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_1000256C0(v38, &qword_1000E1588, &qword_100085558);
  return sub_1000256C0(v40, &qword_1000E1588, &qword_100085558);
}

uint64_t sub_10005EA98@<X0>(char a1@<W2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  *a5 = sub_10007D948();
  *(a5 + 8) = 0;
  *(a5 + 16) = a1;
  v11 = a5 + *(sub_100015240(a2, a3) + 44);
  return a4(v5);
}

uint64_t sub_10005EB3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100015240(&qword_1000E1030, &qword_100085510);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = *(type metadata accessor for SuggestedDestinationEntryContent(0) + 40);
  sub_100026310(v1 + v10, v9, &qword_1000E1030, &qword_100085510);
  v11 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  v12 = *(*(v11 - 8) + 48);
  result = v12(v9, 1, v11);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = &v9[*(v11 + 32)];
  v16 = *v14;
  v15 = *(v14 + 1);

  sub_10005EDD4(v9);
  v37 = v16;
  v38 = v15;
  sub_10002D9A8();
  v17 = sub_10007DBF8();
  v19 = v18;
  v21 = v20;
  v36 = v22;
  sub_100026310(v1 + v10, v7, &qword_1000E1030, &qword_100085510);
  result = v12(v7, 1, v11);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v23 = &v7[*(v11 + 36)];
  v25 = *v23;
  v24 = *(v23 + 1);

  sub_10005EDD4(v7);
  v27 = *v1;
  v26 = v1[1];
  v29 = v1[2];
  v28 = v1[3];
  LOBYTE(v37) = v21 & 1;
  v30 = qword_1000DE280;

  if (v30 != -1)
  {
    swift_once();
  }

  v31.super.isa = qword_1000E4B68;
  v34._countAndFlagsBits = 0x8000000100090480;
  v39._countAndFlagsBits = 0x4024322540243125;
  v39._object = 0xE800000000000000;
  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v41._countAndFlagsBits = 0x4024322540243125;
  v41._object = 0xE800000000000000;
  result = sub_10007D258(v39, v40, v31, v41, v34);
  v32 = v37;
  *a1 = v25;
  *(a1 + 8) = v24;
  *(a1 + 16) = v27;
  *(a1 + 24) = v26;
  *(a1 + 32) = v29;
  *(a1 + 40) = v28;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v32;
  *(a1 + 72) = v36;
  *(a1 + 80) = result;
  *(a1 + 88) = v33;
  return result;
}

uint64_t sub_10005EDD4(uint64_t a1)
{
  v2 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005EE30()
{
  result = qword_1000E1600;
  if (!qword_1000E1600)
  {
    sub_100015288(&qword_1000E1608, &qword_1000855C8);
    sub_10005EEE8();
    sub_10002DDAC(&qword_1000E1618, &qword_1000E1620, &qword_1000855D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1600);
  }

  return result;
}

unint64_t sub_10005EEE8()
{
  result = qword_1000E1610;
  if (!qword_1000E1610)
  {
    sub_100015288(&qword_1000E15F0, &qword_1000855C0);
    sub_100015288(&qword_1000DF1F8, &qword_100084360);
    sub_10002DDF4();
    swift_getOpaqueTypeConformance2();
    sub_10005EFE0(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1610);
  }

  return result;
}

uint64_t sub_10005EFE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005F028(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CommuteWindowPlatterContent()
{
  result = qword_1000E16B0;
  if (!qword_1000E16B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005F120()
{
  sub_10005F230(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_10005F230(319, &qword_1000DF920, &type metadata accessor for RedactionReasons);
    if (v1 <= 0x3F)
    {
      sub_10005F230(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CommuteWindowEntryContent(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10005F230(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10005F2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100026310(v2, &v17 - v11, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007D638();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10005F4A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEF28, &qword_100083930);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CommuteWindowPlatterContent();
  sub_100026310(v1 + *(v12 + 20), v11, &qword_1000DEF28, &qword_100083930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007D708();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10005F6A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CommuteWindowPlatterContent();
  sub_100026310(v1 + *(v12 + 24), v11, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007DFF8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10005F8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = sub_100015240(&qword_1000E1828, &unk_1000857C0);
  v4 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v86 = v66 - v5;
  v85 = sub_100015240(&qword_1000E1608, &qword_1000855C8);
  v6 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v69 = v66 - v7;
  v8 = sub_10007D708();
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  v10 = __chkstk_darwin(v8);
  v80 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v79 = v66 - v12;
  v13 = sub_100015240(&qword_1000E1830, &unk_1000857D0);
  v87 = *(v13 - 8);
  v14 = *(v87 + 64);
  __chkstk_darwin(v13);
  v83 = v66 - v15;
  v16 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v66 - v18;
  v71 = sub_10007DD98();
  v70 = *(v71 - 8);
  v20 = *(v70 + 64);
  __chkstk_darwin(v71);
  v22 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  v23 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v72 = v66 - v24;
  v25 = sub_100015240(&qword_1000E15E8, &qword_1000855B8);
  v75 = *(v25 - 8);
  v76 = v25;
  v26 = *(v75 + 64);
  __chkstk_darwin(v25);
  v73 = v66 - v27;
  v77 = sub_100015240(&qword_1000E15F0, &qword_1000855C0);
  v28 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v78 = v66 - v29;
  v30 = sub_10007D638();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v35 = v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = v66 - v36;
  v38 = a1;
  v39 = a1 + *(type metadata accessor for CommuteWindowPlatterContent() + 28);
  v40 = *v39;
  if (*v39 == 1)
  {
    v41 = 1;
    return (*(v87 + 56))(a2, v41, 1, v13);
  }

  v67 = v13;
  v68 = a2;
  v42 = *(v39 + 8);
  v66[1] = v38;
  sub_10005F2A0(v37);
  (*(v31 + 16))(v35, v37, v30);
  v43 = (*(v31 + 88))(v35, v30);
  if (v43 == enum case for ColorScheme.light(_:) || (v40 = v42, v43 == enum case for ColorScheme.dark(_:)))
  {
    v44 = *(v31 + 8);
    v45 = v40;
    v44(v37, v30);
    if (v40)
    {
      v46 = v45;
      sub_10007DD78();
      v47 = v70;
      v48 = v71;
      (*(v70 + 104))(v22, enum case for Image.ResizingMode.stretch(_:), v71);
      sub_10007DDE8();

      (*(v47 + 8))(v22, v48);
      sub_10007DFA8();
      v49 = sub_10007DFC8();
      (*(*(v49 - 8) + 56))(v19, 0, 1, v49);
      v50 = v72;
      sub_10007DDD8();

      sub_1000256C0(v19, &qword_1000DF1E8, &unk_100084A40);
      sub_10007DE88();
      sub_10007D668();
      v51 = v74;
      v52 = (v50 + *(v74 + 36));
      v53 = v91;
      *v52 = v90;
      v52[1] = v53;
      v52[2] = v92;
      v54 = sub_10002DDF4();
      v55 = v73;
      sub_10007DCA8();
      sub_1000256C0(v50, &qword_1000DF1F8, &qword_100084360);
      v88 = v51;
      v89 = v54;
      swift_getOpaqueTypeConformance2();
      v56 = v78;
      v57 = v76;
      sub_10007DC78();
      (*(v75 + 8))(v55, v57);
      v58 = v79;
      sub_10005F4A0(v79);
      v59 = v80;
      sub_10007D6F8();
      sub_100064350(&qword_1000DF958, &type metadata accessor for RedactionReasons);
      v60 = v82;
      LOBYTE(v57) = sub_10007E3E8();
      v61 = *(v81 + 8);
      v61(v59, v60);
      v61(v58, v60);
      if (v57)
      {
        v62 = v69;
        sub_100026310(v56, v69, &qword_1000E15F0, &qword_1000855C0);
        v63 = v86;
        *(v62 + *(v85 + 36)) = 256;
        sub_100026310(v62, v63, &qword_1000E1608, &qword_1000855C8);
        swift_storeEnumTagMultiPayload();
        sub_10005EE30();
        sub_10005EEE8();
        v64 = v83;
        sub_10007D9D8();

        sub_1000256C0(v62, &qword_1000E1608, &qword_1000855C8);
      }

      else
      {
        sub_100026310(v56, v86, &qword_1000E15F0, &qword_1000855C0);
        swift_storeEnumTagMultiPayload();
        sub_10005EE30();
        sub_10005EEE8();
        v64 = v83;
        sub_10007D9D8();
      }

      a2 = v68;
      v13 = v67;
      sub_1000256C0(v56, &qword_1000E15F0, &qword_1000855C0);
      sub_10002DB0C(v64, a2, &qword_1000E1830, &unk_1000857D0);
      v41 = 0;
    }

    else
    {
      v41 = 1;
      a2 = v68;
      v13 = v67;
    }

    return (*(v87 + 56))(a2, v41, 1, v13);
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_1000602A8@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v73 = sub_10007DA68();
  v74 = *(v73 - 8);
  v2 = *(v74 + 64);
  __chkstk_darwin(v73);
  v72 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10007D378();
  v59 = *(v61 - 8);
  v4 = v59;
  v5 = *(v59 + 64);
  __chkstk_darwin(v61);
  v6 = sub_10007D3B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10007D868();
  v11 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v12 = sub_100015240(&qword_1000E0000, &qword_100083E38);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v69 = sub_100015240(&qword_1000E17E8, &qword_100085750);
  v68 = *(v69 - 8);
  v14 = *(v68 + 64);
  __chkstk_darwin(v69);
  v62 = &v58 - v15;
  v16 = sub_100015240(&qword_1000E17F0, &qword_100085758);
  v17 = *(v16 - 8);
  v66 = v16 - 8;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v63 = &v58 - v19;
  v67 = sub_100015240(&qword_1000E17F8, &qword_100085760);
  v20 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v65 = &v58 - v21;
  v70 = sub_100015240(&qword_1000E1800, &unk_100085768);
  v71 = *(v70 - 8);
  v22 = *(v71 + 64);
  __chkstk_darwin(v70);
  v64 = &v58 - v23;
  sub_10007D698();
  v24 = v1 + *(type metadata accessor for CommuteWindowPlatterContent() + 28);
  v25 = type metadata accessor for CommuteWindowEntryContent(0);
  (*(v7 + 16))(v10, v24 + *(v25 + 36), v6);
  sub_100015240(&qword_1000E0018, &qword_100083E50);
  v26 = *(v4 + 72);
  v27 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100083D80;
  sub_10007D348();
  sub_10007D358();
  sub_10007D328();
  sub_10007D338();
  sub_10007D368();
  sub_1000446F4(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10007D328();
  sub_10007D858();
  sub_100064350(&qword_1000E0020, &type metadata accessor for SystemFormatStyle.DateReference);
  v60 = sub_10007DBC8();
  v59 = v29;
  v31 = v30;
  v61 = v32;
  LODWORD(v78) = sub_10007DA48();
  v33 = sub_10007DBA8();
  v35 = v34;
  LOBYTE(v10) = v36;
  sub_10007DB48();
  v37 = sub_10007DBB8();
  v39 = v38;
  v41 = v40;

  sub_10002D9FC(v33, v35, v10 & 1);

  sub_10002D9FC(v60, v59, v31 & 1);

  v42 = v72;
  sub_10007DA28();
  v43 = v62;
  v44 = v73;
  sub_10007DB98();
  sub_10002D9FC(v37, v39, v41 & 1);

  (*(v74 + 8))(v42, v44);
  sub_10007DE88();
  sub_10007D728();
  v45 = v63;
  (*(v68 + 32))(v63, v43, v69);
  v46 = (v45 + *(v66 + 44));
  v47 = v83;
  v46[4] = v82;
  v46[5] = v47;
  v46[6] = v84;
  v48 = v79;
  *v46 = v78;
  v46[1] = v48;
  v49 = v81;
  v46[2] = v80;
  v46[3] = v49;
  KeyPath = swift_getKeyPath();
  v51 = v65;
  sub_10002DB0C(v45, v65, &qword_1000E17F0, &qword_100085758);
  v52 = v67;
  v53 = v51 + *(v67 + 36);
  *v53 = KeyPath;
  *(v53 + 8) = 1;
  *(v53 + 16) = 0;
  v54 = sub_1000641DC();
  v55 = v64;
  sub_10007DCA8();
  sub_1000256C0(v51, &qword_1000E17F8, &qword_100085760);
  v76 = v52;
  v77 = v54;
  swift_getOpaqueTypeConformance2();
  v56 = v70;
  sub_10007DC78();
  return (*(v71 + 8))(v55, v56);
}

uint64_t sub_100060B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_100015240(&qword_1000E1858, &qword_100085800);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v75 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v73 = &v63 - v7;
  v8 = sub_10007D8E8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v11 = *(v10 - 8);
  v71 = v10;
  v72 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v68 = &v63 - v13;
  v70 = sub_100015240(&qword_1000E1790, &qword_1000856F8);
  v14 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v69 = &v63 - v15;
  v16 = sub_100015240(&qword_1000E1798, &unk_100085700);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v74 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v77 = &v63 - v20;
  v21 = sub_100015240(&qword_1000E1860, &qword_100085808);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v78 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v63 - v25;
  *v26 = sub_10007D878();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v79 = v26;
  v27 = sub_100015240(&qword_1000E1868, &qword_100085810);
  sub_10006135C(a1, &v26[*(v27 + 44)]);
  sub_10007D8D8();
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  sub_10007D8C8(v84);
  v28 = a1 + *(type metadata accessor for CommuteWindowPlatterContent() + 28);
  sub_10007D8B8(*(v28 + 40));
  v85._countAndFlagsBits = 548913696;
  v85._object = 0xA400000000000000;
  sub_10007D8C8(v85);
  v67 = v28;
  sub_10007D8B8(*(v28 + 56));
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  sub_10007D8C8(v86);
  sub_10007D908();
  v65 = sub_10007DBD8();
  v64 = v29;
  v31 = v30;
  v66 = v32;
  LODWORD(v80) = sub_10007DA38();
  v33 = sub_10007DBA8();
  v35 = v34;
  v37 = v36;
  sub_10007DAF8();
  v38 = sub_10007DBB8();
  v40 = v39;
  v42 = v41;
  v44 = v43;

  sub_10002D9FC(v33, v35, v37 & 1);

  sub_10002D9FC(v65, v64, v31 & 1);

  v80 = v38;
  v81 = v40;
  v82 = v42 & 1;
  v83 = v44;
  v45 = v68;
  sub_10007DC08();
  sub_10002D9FC(v38, v40, v42 & 1);

  v80 = &type metadata for Text;
  v81 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v46 = v69;
  v47 = v71;
  sub_10007DCA8();
  (*(v72 + 8))(v45, v47);
  LOBYTE(v47) = sub_10007DAD8();
  sub_10007D628();
  v48 = v46 + *(v70 + 36);
  *v48 = v47;
  *(v48 + 8) = v49;
  *(v48 + 16) = v50;
  *(v48 + 24) = v51;
  *(v48 + 32) = v52;
  *(v48 + 40) = 0;
  sub_100063FF8();
  v53 = v77;
  sub_10007DC78();
  sub_1000256C0(v46, &qword_1000E1790, &qword_1000856F8);
  v54 = sub_10007DAA8();
  v55 = v73;
  *v73 = v54;
  LODWORD(v45) = *(sub_100015240(&qword_1000E1870, &qword_100085818) + 44);
  v80 = *(v67 + 32);

  sub_100015240(&qword_1000E17B8, &unk_100085728);
  sub_10007D3E8();
  sub_100015240(&qword_1000DF278, &qword_100083420);
  sub_10002DDAC(&qword_1000E17C0, &qword_1000E17B8, &unk_100085728);
  sub_1000640F0();
  sub_100064350(&qword_1000E17D0, type metadata accessor for CommuteWindowDetailsString);
  sub_10007DE38();
  v56 = v78;
  sub_100026310(v79, v78, &qword_1000E1860, &qword_100085808);
  v57 = v74;
  sub_100026310(v53, v74, &qword_1000E1798, &unk_100085700);
  v58 = v75;
  sub_100026310(v55, v75, &qword_1000E1858, &qword_100085800);
  v59 = v56;
  v60 = v76;
  sub_100026310(v59, v76, &qword_1000E1860, &qword_100085808);
  v61 = sub_100015240(&qword_1000E1878, &qword_100085820);
  sub_100026310(v57, v60 + *(v61 + 48), &qword_1000E1798, &unk_100085700);
  sub_100026310(v58, v60 + *(v61 + 64), &qword_1000E1858, &qword_100085800);
  sub_1000256C0(v55, &qword_1000E1858, &qword_100085800);
  sub_1000256C0(v77, &qword_1000E1798, &unk_100085700);
  sub_1000256C0(v79, &qword_1000E1860, &qword_100085808);
  sub_1000256C0(v58, &qword_1000E1858, &qword_100085800);
  sub_1000256C0(v57, &qword_1000E1798, &unk_100085700);
  return sub_1000256C0(v78, &qword_1000E1860, &qword_100085808);
}

uint64_t sub_10006135C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v68 = a2;
  v3 = sub_100015240(&qword_1000E1880, &qword_100085828);
  v4 = *(v3 - 8);
  v66 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v67 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v55 - v8;
  v9 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v59 = &v55 - v12;
  v13 = sub_100015240(&qword_1000DF278, &qword_100083420);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v64 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = &v55 - v17;
  v18 = a1 + *(type metadata accessor for CommuteWindowPlatterContent() + 28);
  v19 = *(v18 + 24);
  v69 = *(v18 + 16);
  v70 = v19;
  sub_10002D9A8();

  v20 = sub_10007DBF8();
  v56 = v21;
  v57 = v20;
  v23 = v22;
  v58 = v24;
  LODWORD(v69) = sub_10007DA38();
  v25 = sub_10007DBA8();
  v27 = v26;
  v29 = v28;
  sub_10007DAF8();
  v30 = sub_10007DBB8();
  v32 = v31;
  v34 = v33;

  sub_10002D9FC(v25, v27, v29 & 1);

  sub_10007DB18();
  v35 = sub_10007DB88();
  v37 = v36;
  LOBYTE(v25) = v38;
  v40 = v39;
  sub_10002D9FC(v30, v32, v34 & 1);

  sub_10002D9FC(v57, v56, v23 & 1);

  v69 = v35;
  v70 = v37;
  v71 = v25 & 1;
  v72 = v40;
  v41 = v59;
  sub_10007DCA8();
  sub_10002D9FC(v35, v37, v25 & 1);

  v69 = &type metadata for Text;
  v70 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v42 = v60;
  v43 = v62;
  sub_10007DC78();
  (*(v63 + 8))(v41, v43);
  v44 = v65;
  sub_1000602A8(v65);
  KeyPath = swift_getKeyPath();
  v46 = v44 + *(sub_100015240(&qword_1000E1888, &qword_100085860) + 36);
  *v46 = KeyPath;
  *(v46 + 8) = 2;
  v47 = swift_getKeyPath();
  v48 = v44 + *(v66 + 44);
  *v48 = v47;
  *(v48 + 8) = 1;
  *(v48 + 16) = 0;
  v49 = v64;
  sub_100026310(v42, v64, &qword_1000DF278, &qword_100083420);
  v50 = v67;
  sub_100026310(v44, v67, &qword_1000E1880, &qword_100085828);
  v51 = v68;
  sub_100026310(v49, v68, &qword_1000DF278, &qword_100083420);
  v52 = sub_100015240(&qword_1000E1890, &qword_100085868);
  v53 = v51 + *(v52 + 48);
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_100026310(v50, v51 + *(v52 + 64), &qword_1000E1880, &qword_100085828);
  sub_1000256C0(v44, &qword_1000E1880, &qword_100085828);
  sub_1000256C0(v42, &qword_1000DF278, &qword_100083420);
  sub_1000256C0(v50, &qword_1000E1880, &qword_100085828);
  return sub_1000256C0(v49, &qword_1000DF278, &qword_100083420);
}

uint64_t sub_100061874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v3 = sub_100015240(&qword_1000E1770, &qword_1000856D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v130 = &v113 - v5;
  v133 = sub_100015240(&qword_1000E1778, &qword_1000856D8);
  v6 = *(*(v133 - 8) + 64);
  v7 = __chkstk_darwin(v133);
  v136 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v132 = &v113 - v10;
  __chkstk_darwin(v9);
  v135 = &v113 - v11;
  v129 = sub_100015240(&qword_1000E1780, &qword_1000856E0);
  v128 = *(v129 - 8);
  v12 = *(v128 + 64);
  v13 = __chkstk_darwin(v129);
  v127 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v126 = &v113 - v15;
  v16 = sub_100015240(&qword_1000E1788, &qword_1000856E8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v134 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v125 = &v113 - v20;
  v21 = sub_10007D8E8();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v123 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v124 = *(v123 - 8);
  v23 = *(v124 + 64);
  __chkstk_darwin(v123);
  v118 = &v113 - v24;
  v122 = sub_100015240(&qword_1000E1790, &qword_1000856F8);
  v25 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v119 = &v113 - v26;
  v27 = sub_100015240(&qword_1000E1798, &unk_100085700);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v131 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v120 = &v113 - v31;
  v32 = sub_100015240(&qword_1000E1560, &qword_100085528);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v141 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v113 - v36;
  v38 = sub_100015240(&qword_1000E17A0, &unk_100085710);
  v39 = v38 - 8;
  v40 = *(*(v38 - 8) + 64);
  v41 = __chkstk_darwin(v38);
  v140 = &v113 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v113 - v43;
  sub_10005F8B0(a1, &v113 - v43);
  v45 = sub_10007DAD8();
  sub_10007D628();
  v46 = *(v39 + 44);
  v138 = v44;
  v47 = &v44[v46];
  *v47 = v45;
  *(v47 + 1) = v48;
  *(v47 + 2) = v49;
  *(v47 + 3) = v50;
  *(v47 + 4) = v51;
  v47[40] = 0;
  *v37 = sub_10007D878();
  *(v37 + 1) = 0;
  v37[16] = 1;
  v52 = *(sub_100015240(&qword_1000E1568, &qword_100085530) + 44);
  v139 = v37;
  v121 = a1;
  sub_1000625C0(a1, &v37[v52]);
  sub_10007D8D8();
  v146._countAndFlagsBits = 0;
  v146._object = 0xE000000000000000;
  sub_10007D8C8(v146);
  v53 = a1 + *(type metadata accessor for CommuteWindowPlatterContent() + 28);
  sub_10007D8B8(*(v53 + 40));
  v147._countAndFlagsBits = 548913696;
  v147._object = 0xA400000000000000;
  sub_10007D8C8(v147);
  v117 = v53;
  sub_10007D8B8(*(v53 + 56));
  v148._countAndFlagsBits = 0;
  v148._object = 0xE000000000000000;
  sub_10007D8C8(v148);
  sub_10007D908();
  v115 = sub_10007DBD8();
  v114 = v54;
  v56 = v55;
  v116 = v57;
  LODWORD(v142) = sub_10007DA38();
  v58 = sub_10007DBA8();
  v60 = v59;
  LOBYTE(a1) = v61;
  sub_10007DAF8();
  v62 = sub_10007DBB8();
  v64 = v63;
  v66 = v65;
  v68 = v67;

  sub_10002D9FC(v58, v60, a1 & 1);

  sub_10002D9FC(v115, v114, v56 & 1);

  v142 = v62;
  v143 = v64;
  v144 = v66 & 1;
  v145 = v68;
  v69 = v118;
  sub_10007DC08();
  sub_10002D9FC(v62, v64, v66 & 1);

  v142 = &type metadata for Text;
  v143 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v70 = v119;
  v71 = v123;
  sub_10007DCA8();
  (*(v124 + 8))(v69, v71);
  LOBYTE(v71) = sub_10007DAD8();
  sub_10007D628();
  v72 = v70 + *(v122 + 36);
  *v72 = v71;
  *(v72 + 8) = v73;
  *(v72 + 16) = v74;
  *(v72 + 24) = v75;
  *(v72 + 32) = v76;
  *(v72 + 40) = 0;
  sub_100063FF8();
  v77 = v120;
  sub_10007DC78();
  sub_1000256C0(v70, &qword_1000E1790, &qword_1000856F8);
  v78 = sub_10007DAA8();
  v79 = v125;
  *v125 = v78;
  v80 = v79;
  v81 = &v79[*(sub_100015240(&qword_1000E17B0, &qword_100085720) + 44)];
  v142 = *(v117 + 32);

  sub_100015240(&qword_1000E17B8, &unk_100085728);
  sub_10007D3E8();
  sub_100015240(&qword_1000DF278, &qword_100083420);
  sub_10002DDAC(&qword_1000E17C0, &qword_1000E17B8, &unk_100085728);
  sub_1000640F0();
  sub_100064350(&qword_1000E17D0, type metadata accessor for CommuteWindowDetailsString);
  v82 = v126;
  sub_10007DE38();
  v83 = v128;
  v84 = *(v128 + 16);
  v85 = v127;
  v86 = v129;
  v84(v127, v82, v129);
  v84(v81, v85, v86);
  v87 = v130;
  v88 = &v81[*(sub_100015240(&qword_1000E17D8, &qword_100085738) + 48)];
  *v88 = 0;
  v88[8] = 0;
  v89 = *(v83 + 8);
  v89(v82, v86);
  v89(v85, v86);
  sub_1000602A8(v87);
  v90 = sub_10007DAD8();
  v91 = sub_10007DAE8();
  sub_10007DAE8();
  if (sub_10007DAE8() != v90)
  {
    v91 = sub_10007DAE8();
  }

  sub_10007D628();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = v132;
  sub_10002DB0C(v87, v132, &qword_1000E1770, &qword_1000856D0);
  v101 = v100 + *(v133 + 36);
  *v101 = v91;
  *(v101 + 8) = v93;
  *(v101 + 16) = v95;
  *(v101 + 24) = v97;
  *(v101 + 32) = v99;
  *(v101 + 40) = 0;
  v102 = v135;
  sub_10002DB0C(v100, v135, &qword_1000E1778, &qword_1000856D8);
  v103 = v140;
  sub_100026310(v138, v140, &qword_1000E17A0, &unk_100085710);
  v104 = v141;
  sub_100026310(v139, v141, &qword_1000E1560, &qword_100085528);
  v105 = v77;
  v106 = v131;
  sub_100026310(v77, v131, &qword_1000E1798, &unk_100085700);
  v107 = v134;
  sub_100026310(v80, v134, &qword_1000E1788, &qword_1000856E8);
  v108 = v136;
  sub_100026310(v102, v136, &qword_1000E1778, &qword_1000856D8);
  v109 = v137;
  sub_100026310(v103, v137, &qword_1000E17A0, &unk_100085710);
  v110 = sub_100015240(&qword_1000E17E0, &unk_100085740);
  sub_100026310(v104, v109 + v110[12], &qword_1000E1560, &qword_100085528);
  sub_100026310(v106, v109 + v110[16], &qword_1000E1798, &unk_100085700);
  sub_100026310(v107, v109 + v110[20], &qword_1000E1788, &qword_1000856E8);
  v111 = v109 + v110[24];
  *v111 = 0x4010000000000000;
  *(v111 + 8) = 0;
  sub_100026310(v108, v109 + v110[28], &qword_1000E1778, &qword_1000856D8);
  sub_1000256C0(v102, &qword_1000E1778, &qword_1000856D8);
  sub_1000256C0(v80, &qword_1000E1788, &qword_1000856E8);
  sub_1000256C0(v105, &qword_1000E1798, &unk_100085700);
  sub_1000256C0(v139, &qword_1000E1560, &qword_100085528);
  sub_1000256C0(v138, &qword_1000E17A0, &unk_100085710);
  sub_1000256C0(v108, &qword_1000E1778, &qword_1000856D8);
  sub_1000256C0(v107, &qword_1000E1788, &qword_1000856E8);
  sub_1000256C0(v106, &qword_1000E1798, &unk_100085700);
  sub_1000256C0(v141, &qword_1000E1560, &qword_100085528);
  return sub_1000256C0(v140, &qword_1000E17A0, &unk_100085710);
}

uint64_t sub_1000625C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v45 = &v42 - v6;
  v7 = sub_100015240(&qword_1000DF278, &qword_100083420);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v42 - v11;
  v12 = a1 + *(type metadata accessor for CommuteWindowPlatterContent() + 28);
  v13 = *(v12 + 24);
  v51 = *(v12 + 16);
  v52 = v13;
  sub_10002D9A8();

  v14 = sub_10007DBF8();
  v42 = v15;
  v43 = v14;
  LOBYTE(v13) = v16;
  v44 = v17;
  LODWORD(v51) = sub_10007DA38();
  v18 = sub_10007DBA8();
  v20 = v19;
  v22 = v21;
  sub_10007DAF8();
  v23 = sub_10007DBB8();
  v25 = v24;
  v27 = v26;

  sub_10002D9FC(v18, v20, v22 & 1);

  sub_10007DB18();
  v28 = sub_10007DB88();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_10002D9FC(v23, v25, v27 & 1);

  sub_10002D9FC(v43, v42, v13 & 1);

  v51 = v28;
  v52 = v30;
  v53 = v32 & 1;
  v54 = v34;
  v35 = v45;
  sub_10007DCA8();
  sub_10002D9FC(v28, v30, v32 & 1);

  v51 = &type metadata for Text;
  v52 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v36 = v46;
  v37 = v48;
  sub_10007DC78();
  (*(v49 + 8))(v35, v37);
  v38 = v47;
  sub_100026310(v36, v47, &qword_1000DF278, &qword_100083420);
  v39 = v50;
  sub_100026310(v38, v50, &qword_1000DF278, &qword_100083420);
  v40 = v39 + *(sub_100015240(&qword_1000E1598, &qword_100085568) + 48);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_1000256C0(v36, &qword_1000DF278, &qword_100083420);
  return sub_1000256C0(v38, &qword_1000DF278, &qword_100083420);
}

uint64_t sub_100062990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_10007D238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v36 = &v32 - v11;
  v12 = type metadata accessor for CommuteWindowDetailsString(0);
  (*(v4 + 16))(v7, a1 + *(v12 + 20), v3);
  v13 = sub_10007DBE8();
  v33 = v14;
  v34 = v13;
  v16 = v15;
  v35 = v17;
  LODWORD(v40) = sub_10007DA58();
  v18 = sub_10007DBA8();
  v20 = v19;
  v22 = v21;
  sub_10007DB58();
  v23 = sub_10007DBB8();
  v25 = v24;
  LOBYTE(a1) = v26;
  v28 = v27;

  sub_10002D9FC(v18, v20, v22 & 1);

  sub_10002D9FC(v34, v33, v16 & 1);

  v40 = v23;
  v41 = v25;
  v42 = a1 & 1;
  v43 = v28;
  v29 = v36;
  sub_10007DCA8();
  sub_10002D9FC(v23, v25, a1 & 1);

  v40 = &type metadata for Text;
  v41 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v30 = v37;
  sub_10007DC78();
  return (*(v38 + 8))(v29, v30);
}

uint64_t sub_100062C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E1838, &qword_1000857E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100015240(&qword_1000E1840, &qword_1000857E8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  sub_10005F8B0(a1, &v21 - v16);
  *v10 = sub_10007D958();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v18 = sub_100015240(&qword_1000E1848, &qword_1000857F0);
  sub_100060B78(a1, &v10[*(v18 + 44)]);
  sub_100026310(v17, v15, &qword_1000E1840, &qword_1000857E8);
  sub_100026310(v10, v8, &qword_1000E1838, &qword_1000857E0);
  sub_100026310(v15, a2, &qword_1000E1840, &qword_1000857E8);
  v19 = sub_100015240(&qword_1000E1850, &qword_1000857F8);
  sub_100026310(v8, a2 + *(v19 + 48), &qword_1000E1838, &qword_1000857E0);
  sub_1000256C0(v10, &qword_1000E1838, &qword_1000857E0);
  sub_1000256C0(v17, &qword_1000E1840, &qword_1000857E8);
  sub_1000256C0(v8, &qword_1000E1838, &qword_1000857E0);
  return sub_1000256C0(v15, &qword_1000E1840, &qword_1000857E8);
}

uint64_t sub_100062E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100015240(&qword_1000E1898, &unk_100085870);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v41 - v5;
  v7 = sub_10007D238();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007D8E8();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = v1 + *(type metadata accessor for CommuteWindowPlatterContent() + 28);
  v15 = *(v14 + 48);
  v44 = *(v14 + 40);
  v45 = v15;

  v46._countAndFlagsBits = 548913696;
  v46._object = 0xA400000000000000;
  sub_10007E198(v46);
  sub_10007E198(*(v14 + 56));
  v42 = v45;
  v43 = v44;
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v16 = qword_1000E4B68;
  v39._countAndFlagsBits = 0x8000000100090750;
  v47._countAndFlagsBits = 0x70614D206E65704FLL;
  v47._object = 0xE900000000000073;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v17.super.isa = qword_1000E4B68;
  v53._countAndFlagsBits = 0x70614D206E65704FLL;
  v53._object = 0xE900000000000073;
  sub_10007D258(v47, v51, v17, v53, v39);

  sub_10007D8D8();
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  sub_10007D8C8(v48);
  v18 = *(v14 + 32);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v19 - 1;
    v21 = type metadata accessor for CommuteWindowDetailsString(0);
    (*(v8 + 16))(v6, v18 + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80)) + *(*(v21 - 8) + 72) * v20 + *(v21 + 20), v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v11, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_10007D228();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_1000256C0(v6, &qword_1000E1898, &unk_100085870);
    }
  }

  sub_10007D888();
  (*(v8 + 8))(v11, v7);
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_10007D8C8(v49);
  sub_10007D908();
  LOWORD(v40._object) = 256;
  v22 = sub_10007DBD8();
  v24 = v23;
  v26 = v25;
  v41 = 0x80000001000908B0;
  v28 = *(v14 + 16);
  v27 = *(v14 + 24);
  v30 = v29 & 1;
  LOBYTE(v44) = v29 & 1;

  sub_10002DA0C(v22, v24, v30);

  v40._countAndFlagsBits = 0x8000000100090480;
  v50._countAndFlagsBits = 0x4024322540243125;
  v50._object = 0xE800000000000000;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v31.super.isa = v16;
  v54._countAndFlagsBits = 0x4024322540243125;
  v54._object = 0xE800000000000000;
  v32 = sub_10007D258(v50, v52, v31, v54, v40);
  v34 = v33;
  sub_10002D9FC(v22, v24, v30);

  v36 = v44;
  v37 = v41;
  *a1 = 0xD000000000000032;
  *(a1 + 8) = v37;
  *(a1 + 16) = v28;
  *(a1 + 24) = v27;
  v38 = v42;
  *(a1 + 32) = v43;
  *(a1 + 40) = v38;
  *(a1 + 48) = v22;
  *(a1 + 56) = v24;
  *(a1 + 64) = v36;
  *(a1 + 72) = v26;
  *(a1 + 80) = v32;
  *(a1 + 88) = v34;
  return result;
}

uint64_t sub_100063378@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v44 = sub_100015240(&qword_1000E16F8, &qword_100085680);
  v2 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v43 = (&v43 - v3);
  v50 = sub_100015240(&qword_1000E1700, &qword_100085688);
  v4 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v51 = &v43 - v5;
  v46 = sub_100015240(&qword_1000E1708, &qword_100085690);
  v6 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v8 = &v43 - v7;
  v9 = sub_100015240(&qword_1000E1710, &qword_100085698);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v47 = sub_100015240(&qword_1000E1718, &qword_1000856A0);
  v13 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v45 = &v43 - v14;
  v48 = sub_100015240(&qword_1000E1720, &qword_1000856A8);
  v15 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v49 = &v43 - v16;
  v17 = sub_100015240(&qword_1000E1728, &qword_1000856B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v43 - v19;
  v21 = sub_10007DFF8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005F6A8(v25);
  v26 = (*(v22 + 88))(v25, v21);
  if (v26 == enum case for WidgetFamily.systemSmall(_:) || v26 == enum case for WidgetFamily.systemMedium(_:))
  {
    *v20 = sub_10007D958();
    *(v20 + 1) = 0;
    v20[16] = 0;
    v35 = sub_100015240(&qword_1000E1768, &qword_1000856C8);
    sub_100061874(v1, &v20[*(v35 + 44)]);
    sub_100026310(v20, v12, &qword_1000E1728, &qword_1000856B0);
    swift_storeEnumTagMultiPayload();
    sub_10002DDAC(&qword_1000E1740, &qword_1000E1728, &qword_1000856B0);
    sub_10002DDAC(&qword_1000E1748, &qword_1000E16F8, &qword_100085680);
    v36 = v45;
    sub_10007D9D8();
    sub_100026310(v36, v8, &qword_1000E1718, &qword_1000856A0);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000E1730, &qword_1000856B8);
    sub_100063E08();
    sub_100064398(&qword_1000E1750, &qword_1000E1730, &qword_1000856B8, sub_1000558E4);
    v37 = v49;
    sub_10007D9D8();
    sub_1000256C0(v36, &qword_1000E1718, &qword_1000856A0);
    sub_100026310(v37, v51, &qword_1000E1720, &qword_1000856A8);
    swift_storeEnumTagMultiPayload();
    sub_100063EEC();
    sub_10007D9D8();
    sub_1000256C0(v37, &qword_1000E1720, &qword_1000856A8);
    v32 = v20;
    v33 = &qword_1000E1728;
    v34 = &qword_1000856B0;
  }

  else if (v26 == enum case for WidgetFamily.systemLarge(_:))
  {
    v27 = sub_10007D878();
    v28 = v43;
    *v43 = v27;
    *(v28 + 8) = 0x4020000000000000;
    *(v28 + 16) = 0;
    v29 = sub_100015240(&qword_1000E1760, &qword_1000856C0);
    sub_100062C80(v1, v28 + *(v29 + 44));
    sub_100026310(v28, v12, &qword_1000E16F8, &qword_100085680);
    swift_storeEnumTagMultiPayload();
    sub_10002DDAC(&qword_1000E1740, &qword_1000E1728, &qword_1000856B0);
    sub_10002DDAC(&qword_1000E1748, &qword_1000E16F8, &qword_100085680);
    v30 = v45;
    sub_10007D9D8();
    sub_100026310(v30, v8, &qword_1000E1718, &qword_1000856A0);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000E1730, &qword_1000856B8);
    sub_100063E08();
    sub_100064398(&qword_1000E1750, &qword_1000E1730, &qword_1000856B8, sub_1000558E4);
    v31 = v49;
    sub_10007D9D8();
    sub_1000256C0(v30, &qword_1000E1718, &qword_1000856A0);
    sub_100026310(v31, v51, &qword_1000E1720, &qword_1000856A8);
    swift_storeEnumTagMultiPayload();
    sub_100063EEC();
    sub_10007D9D8();
    sub_1000256C0(v31, &qword_1000E1720, &qword_1000856A8);
    v32 = v28;
    v33 = &qword_1000E16F8;
    v34 = &qword_100085680;
  }

  else
  {
    if (v26 == enum case for WidgetFamily.systemExtraLarge(_:) || v26 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v26 == enum case for WidgetFamily.accessoryCorner(_:) || v26 == enum case for WidgetFamily.accessoryCircular(_:) || v26 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      while (1)
      {
        sub_10007E518();
        __break(1u);
      }
    }

    sub_100062E9C(v62);
    v55 = v62[2];
    v56 = v62[3];
    v57 = v62[4];
    v58 = v62[5];
    v53 = v62[0];
    v54 = v62[1];
    v63 = 0;
    v59 = 0;
    sub_100063DAC(v62, v60);
    sub_1000558E4();
    sub_10007D9D8();
    v38 = v60[5];
    *(v8 + 4) = v60[4];
    *(v8 + 5) = v38;
    v8[96] = v61;
    v39 = v60[1];
    *v8 = v60[0];
    *(v8 + 1) = v39;
    v40 = v60[3];
    *(v8 + 2) = v60[2];
    *(v8 + 3) = v40;
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000E1730, &qword_1000856B8);
    sub_100063E08();
    sub_100064398(&qword_1000E1750, &qword_1000E1730, &qword_1000856B8, sub_1000558E4);
    v41 = v49;
    sub_10007D9D8();
    sub_100026310(v41, v51, &qword_1000E1720, &qword_1000856A8);
    swift_storeEnumTagMultiPayload();
    sub_100063EEC();
    sub_10007D9D8();
    sub_100063FA4(v62);
    v32 = v41;
    v33 = &qword_1000E1720;
    v34 = &qword_1000856A8;
  }

  return sub_1000256C0(v32, v33, v34);
}

unint64_t sub_100063E08()
{
  result = qword_1000E1738;
  if (!qword_1000E1738)
  {
    sub_100015288(&qword_1000E1718, &qword_1000856A0);
    sub_10002DDAC(&qword_1000E1740, &qword_1000E1728, &qword_1000856B0);
    sub_10002DDAC(&qword_1000E1748, &qword_1000E16F8, &qword_100085680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1738);
  }

  return result;
}

unint64_t sub_100063EEC()
{
  result = qword_1000E1758;
  if (!qword_1000E1758)
  {
    sub_100015288(&qword_1000E1720, &qword_1000856A8);
    sub_100063E08();
    sub_100064398(&qword_1000E1750, &qword_1000E1730, &qword_1000856B8, sub_1000558E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1758);
  }

  return result;
}

unint64_t sub_100063FF8()
{
  result = qword_1000E17A8;
  if (!qword_1000E17A8)
  {
    sub_100015288(&qword_1000E1790, &qword_1000856F8);
    sub_100015288(&qword_1000E0B88, &qword_1000856F0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17A8);
  }

  return result;
}

unint64_t sub_1000640F0()
{
  result = qword_1000E17C8;
  if (!qword_1000E17C8)
  {
    sub_100015288(&qword_1000DF278, &qword_100083420);
    swift_getOpaqueTypeConformance2();
    sub_100064350(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17C8);
  }

  return result;
}

unint64_t sub_1000641DC()
{
  result = qword_1000E1808;
  if (!qword_1000E1808)
  {
    sub_100015288(&qword_1000E17F8, &qword_100085760);
    sub_100064294();
    sub_10002DDAC(&qword_1000E1818, &qword_1000E1820, &qword_1000857A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1808);
  }

  return result;
}

unint64_t sub_100064294()
{
  result = qword_1000E1810;
  if (!qword_1000E1810)
  {
    sub_100015288(&qword_1000E17F0, &qword_100085758);
    sub_10007DA68();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1810);
  }

  return result;
}

uint64_t sub_100064350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100064398(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100064420(unsigned int a1)
{
  if (a1 <= 3)
  {
    v1 = **(&off_1000C9448 + a1);
  }

  return sub_10007E158();
}

uint64_t sub_10006445C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v9 = "ort type bicycle";
      if (qword_1000DE280 != -1)
      {
        swift_once();
      }

      v5.super.isa = qword_1000E4B68;
      v7._countAndFlagsBits = 0xD000000000000012;
      v12._countAndFlagsBits = 0x8000000100090A00;
      v6._countAndFlagsBits = 0x6B6C6177204025;
    }

    else
    {
      if (a3 != 3)
      {
LABEL_12:
        if (qword_1000DE280 != -1)
        {
          swift_once();
        }

        v5.super.isa = qword_1000E4B68;
        v7._countAndFlagsBits = 0xD00000000000001BLL;
        v12._countAndFlagsBits = 0x8000000100090940;
        v7._object = 0x8000000100090920;
        v8.value._countAndFlagsBits = 0;
        v8.value._object = 0;
        v6._countAndFlagsBits = 16421;
        v6._object = 0xE200000000000000;
        goto LABEL_22;
      }

      v9 = "n transport type";
      if (qword_1000DE280 != -1)
      {
        swift_once();
      }

      v5.super.isa = qword_1000E4B68;
      v7._countAndFlagsBits = 0xD000000000000012;
      v12._countAndFlagsBits = 0x80000001000909A0;
      v6._countAndFlagsBits = 0x65646972204025;
    }

    v7._object = (v9 | 0x8000000000000000);
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0;
    v6._object = 0xE700000000000000;
    goto LABEL_22;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      if (qword_1000DE280 != -1)
      {
        swift_once();
      }

      v5.super.isa = qword_1000E4B68;
      v7._countAndFlagsBits = 0xD000000000000012;
      v12._countAndFlagsBits = 0x8000000100090A60;
      v6._countAndFlagsBits = 0x7274207962204025;
      v6._object = 0xED00007469736E61;
      v7._object = 0x8000000100090A40;
      v8.value._countAndFlagsBits = 0;
      v8.value._object = 0;
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v5.super.isa = qword_1000E4B68;
  v7._countAndFlagsBits = 0xD000000000000012;
  v12._countAndFlagsBits = 0x8000000100090AC0;
  v6._countAndFlagsBits = 0x6576697264204025;
  v7._object = 0x8000000100090AA0;
  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v6._object = 0xE800000000000000;
LABEL_22:
  sub_10007D258(v7, v8, v5, v6, v12);
  if (a2)
  {
    sub_100015240(&qword_1000E1948, qword_1000858B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100082820;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000647D8();
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;

    a2 = sub_10007E148();
  }

  return a2;
}

unint64_t sub_1000647D8()
{
  result = qword_1000E1950;
  if (!qword_1000E1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1950);
  }

  return result;
}

void sub_100064874()
{
  type metadata accessor for MapsSuggestionsEntryType(319);
  if (v0 <= 0x3F)
  {
    sub_1000649A8(319, &qword_1000E19C0);
    if (v1 <= 0x3F)
    {
      sub_1000649A8(319, &qword_1000E05F0);
      if (v2 <= 0x3F)
      {
        sub_1000649F4(319, &qword_1000E19C8, type metadata accessor for GEOTransportType);
        if (v3 <= 0x3F)
        {
          sub_1000649F4(319, &unk_1000E19D0, type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000649A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10007E3A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1000649F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007E3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100064A90()
{
  sub_10007E0C8();
  if (v0 <= 0x3F)
  {
    sub_1000649A8(319, &qword_1000E05F0);
    if (v1 <= 0x3F)
    {
      sub_1000649F4(319, &unk_1000E1A80, type metadata accessor for CGPoint);
      if (v2 <= 0x3F)
      {
        sub_1000649F4(319, &unk_1000E0740, &type metadata accessor for URL);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100064C24()
{
  type metadata accessor for SuggestedDestinationEntryContent(319);
  if (v0 <= 0x3F)
  {
    sub_100064D7C(319, &qword_1000E1B58, &qword_1000DF538, CLLocation_ptr);
    if (v1 <= 0x3F)
    {
      sub_10002620C(319, &qword_1000E0810, MKMapItem_ptr);
      if (v2 <= 0x3F)
      {
        sub_100064D7C(319, &qword_1000E0818, &qword_1000E0820, GEOFeatureStyleAttributes_ptr);
        if (v3 <= 0x3F)
        {
          sub_100064D7C(319, &qword_1000E1B60, &qword_1000DE968, GEOComposedRoute_ptr);
          if (v4 <= 0x3F)
          {
            sub_1000649F4(319, &unk_1000E1B68, &type metadata accessor for UUID);
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

void sub_100064D7C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10002620C(255, a3, a4);
    v5 = sub_10007E3A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100064DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v41 = a3;
  v42 = a4;
  v39 = a2;
  v44 = sub_10007DEB8();
  v47 = *(v44 - 8);
  v4 = *(v47 + 64);
  __chkstk_darwin(v44);
  v43 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DED8();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10007D3B8();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v35);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10007E0C8();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v34);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v38 = sub_10007E328();
  sub_100066E88(v37, v16, type metadata accessor for SuggestedDestinationEntryContentResolver);
  v17 = v34;
  (*(v11 + 16))(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v34);
  v18 = v35;
  (*(v9 + 16))(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v35);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = (v15 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = (v12 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  sub_100066C5C(v16, v22 + v19);
  (*(v11 + 32))(v22 + v20, v32, v17);
  (*(v9 + 32))(v22 + v21, v33, v18);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v42;
  *v23 = v41;
  v23[1] = v24;
  aBlock[4] = sub_100066CC0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C94C0;
  v25 = _Block_copy(aBlock);

  v26 = v40;
  sub_10007DEC8();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  v28 = v43;
  v27 = v44;
  sub_10007E3F8();
  v29 = v38;
  sub_10007E338();
  _Block_release(v25);

  (*(v47 + 8))(v28, v27);
  return (*(v45 + 8))(v26, v46);
}

uint64_t sub_1000652EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v145 = a4;
  v146 = a5;
  v131 = a3;
  v150 = a2;
  v6 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v133 = &v126 - v8;
  v130 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v9 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v132 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007E0C8();
  v142 = *(v11 - 8);
  v143 = v11;
  v12 = *(v142 + 64);
  __chkstk_darwin(v11);
  v129 = v13;
  v140 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  v127 = *(v14 - 8);
  v15 = *(v127 + 64);
  __chkstk_darwin(v14);
  v128 = v16;
  v138 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v139 = &v126 - v19;
  v20 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v126 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v126 - v24;
  v26 = sub_10007DFF8();
  v147 = *(v26 - 8);
  v148 = v26;
  v27 = *(v147 + 64);
  v28 = __chkstk_darwin(v26);
  v136 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v126 - v30;
  v144 = swift_allocBox();
  v33 = v32;
  v34 = sub_10007D288();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v137 = v33;
  v134 = v35 + 56;
  v135 = v36;
  v36(v33, 1, 1, v34);
  v37 = *(a1 + *(v14 + 32));
  v149 = a1;
  if (v37)
  {
    goto LABEL_2;
  }

  v54 = [*(a1 + *(v14 + 24)) _canGetDirections];
  v55 = *(a1 + 32);
  if (v54)
  {
    if (v55 != 25)
    {
LABEL_2:
      v141[1] = 0x8000000100090450;
      v38 = 0xD000000000000020;
LABEL_3:
      v141[0] = v38;
      goto LABEL_4;
    }
  }

  else if (v55 != 25)
  {
    v141[1] = 0x8000000100090B10;
    v38 = 0xD00000000000001ALL;
    goto LABEL_3;
  }

  strcpy(v141, "location.fill");
  HIWORD(v141[1]) = -4864;
LABEL_4:
  sub_100015240(&qword_1000E0860, &qword_1000846C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100083D00;
  v155 = sub_10007E158();
  v156 = v40;
  sub_10007E438();
  sub_10007E0B8();
  v41 = sub_100066380();
  (*(v147 + 8))(v31, v148);
  *(inited + 96) = &type metadata for Int32;
  *(inited + 72) = v41;
  v155 = sub_10007E158();
  v156 = v42;
  sub_10007E438();
  *(inited + 168) = &type metadata for Int32;
  *(inited + 144) = 696;
  v155 = sub_10007E158();
  v156 = v43;
  sub_10007E438();
  v44 = v149;
  v45 = *(v149 + 32);
  v155 = v45;
  v46 = sub_10007E588();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v46;
  *(inited + 224) = v47;
  v48 = sub_100024DB4(inited);
  swift_setDeallocating();
  sub_100015240(&unk_1000DEB30, &qword_1000846D0);
  swift_arrayDestroy();
  if (v37)
  {
    *&v153 = sub_10007E158();
    *(&v153 + 1) = v49;
    v50 = v37;
    sub_10007E438();
    v51 = sub_100064420([v50 transportType]);
    v154 = &type metadata for String;
    *&v153 = v51;
    *(&v153 + 1) = v52;
    sub_100026378(&v153, v152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v151 = v48;
    sub_10003FFB0(v152, &v155, isUniquelyReferenced_nonNull_native);

LABEL_12:
    sub_1000415FC(&v155);
    v61 = objc_opt_self();
    sub_100015240(&qword_1000E0868, &qword_1000846D8);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_100082810;
    v63 = [v61 mapItemForCurrentLocation];
    v64 = sub_10002620C(0, &qword_1000E0810, MKMapItem_ptr);
    *(v62 + 56) = v64;
    *(v62 + 32) = v63;
    v65 = v149;
    v66 = *(v149 + *(v14 + 24));
    *(v62 + 88) = v64;
    *(v62 + 64) = v66;
    v67 = v66;
    isa = sub_10007E1C8().super.isa;

    v69 = sub_10007E0E8().super.isa;

    v70 = [v61 urlForMapItems:isa options:v69];

    if (v70)
    {
      sub_10007D278();

      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    v72 = v137;
    v135(v25, v71, 1, v34);
    sub_100066E18(v25, v72);
    if (qword_1000DE280 != -1)
    {
      swift_once();
    }

    v73.super.isa = qword_1000E4B68;
    v125._countAndFlagsBits = 0x8000000100090B70;
    v74._countAndFlagsBits = 0x6572694420746547;
    v74._object = 0xEE00736E6F697463;
    v75.value._countAndFlagsBits = 0;
    v75.value._object = 0;
    v76._countAndFlagsBits = 0x6572694420746547;
    v76._object = 0xEE00736E6F697463;
    goto LABEL_18;
  }

  v56 = *(v44 + *(v14 + 24));
  if ([v56 _canGetDirections] && v45 != 25)
  {
    *&v153 = sub_10007E158();
    *(&v153 + 1) = v57;
    sub_10007E438();
    v58 = sub_10007E158();
    v154 = &type metadata for String;
    *&v153 = v58;
    *(&v153 + 1) = v59;
    sub_100026378(&v153, v152);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v48;
    sub_10003FFB0(v152, &v155, v60);
    goto LABEL_12;
  }

  v120 = objc_opt_self();
  v121 = sub_10007E0E8().super.isa;

  v122 = [v120 urlForMapItem:v56 options:v121];

  v72 = v137;
  if (v122)
  {
    v123 = v126;
    sub_10007D278();

    v124 = 0;
    v65 = v149;
  }

  else
  {
    v124 = 1;
    v65 = v149;
    v123 = v126;
  }

  v135(v123, v124, 1, v34);
  sub_100066E18(v123, v72);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v73.super.isa = qword_1000E4B68;
  v125._countAndFlagsBits = 0x8000000100090750;
  v74._countAndFlagsBits = 0x70614D206E65704FLL;
  v74._object = 0xE900000000000073;
  v75.value._countAndFlagsBits = 0;
  v75.value._object = 0;
  v76._countAndFlagsBits = 0x70614D206E65704FLL;
  v76._object = 0xE900000000000073;
LABEL_18:
  v77 = sub_10007D258(v74, v75, v73, v76, v125);
  v79 = v78;
  v80 = v136;
  sub_10007E0B8();
  v81 = (*(v147 + 88))(v80, v148);
  if (v81 == enum case for WidgetFamily.systemSmall(_:) || v81 == enum case for WidgetFamily.systemMedium(_:) || v81 == enum case for WidgetFamily.systemLarge(_:))
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v148 = v77;
    v149 = v79;
    v95 = sub_10007D5C8();
    sub_1000046BC(v95, qword_1000E4B28);
    v96 = sub_10007D5A8();
    v97 = sub_10007E288();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "SuggestedDestinationEntryContentResolver: generating map snapshot (supported for this family)", v98, 2u);
    }

    v99 = v150;
    v100 = v131;
    v147 = sub_10006659C(v150);
    v101 = sub_10007D3B8();
    v102 = *(v101 - 8);
    v103 = v139;
    (*(v102 + 16))(v139, v100, v101);
    (*(v102 + 56))(v103, 0, 1, v101);
    sub_100066E88(v65, v138, type metadata accessor for SuggestedDestinationEntryContentResolver);
    v104 = v142;
    v105 = v143;
    (*(v142 + 16))(v140, v99, v143);
    v106 = (*(v127 + 80) + 16) & ~*(v127 + 80);
    v107 = (v128 + *(v104 + 80) + v106) & ~*(v104 + 80);
    v108 = (v129 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
    v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
    v110 = (v109 + 23) & 0xFFFFFFFFFFFFFFF8;
    v111 = swift_allocObject();
    sub_100066C5C(v138, v111 + v106);
    (*(v104 + 32))(v111 + v107, v140, v105);
    *(v111 + v108) = v144;
    v112 = (v111 + v109);
    v113 = v149;
    *v112 = v148;
    v112[1] = v113;
    v114 = (v111 + v110);
    v115 = v141[1];
    *v114 = v141[0];
    v114[1] = v115;
    v116 = (v111 + ((v110 + 23) & 0xFFFFFFFFFFFFFFF8));
    v117 = v146;
    *v116 = v145;
    v116[1] = v117;

    v118 = v139;
    sub_10003AB38(v139, sub_100066F4C, v111);

    sub_1000256C0(v118, &qword_1000DE928, &unk_100082900);
  }

  else
  {
    if (v81 == enum case for WidgetFamily.systemExtraLarge(_:) || v81 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v81 == enum case for WidgetFamily.accessoryCorner(_:) || v81 == enum case for WidgetFamily.accessoryCircular(_:) || v81 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      while (1)
      {
        sub_10007E518();
        __break(1u);
      }
    }

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v82 = sub_10007D5C8();
    sub_1000046BC(v82, qword_1000E4B28);
    v83 = sub_10007D5A8();
    v84 = sub_10007E288();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "SuggestedDestinationEntryContentResolver: skipping map snapshot (not supported for this family)", v85, 2u);
    }

    v86 = v132;
    sub_100066E88(v65, v132, type metadata accessor for SuggestedDestinationEntryContent);
    v87 = v86 + *(v130 + 40);
    sub_1000256C0(v87, &qword_1000E1030, &qword_100085510);
    (*(v142 + 16))(v87, v150, v143);
    v88 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
    sub_100026310(v72, v87 + v88[7], &qword_1000DEEE0, &qword_100082E30);
    *(v87 + v88[5]) = xmmword_1000845B0;
    v89 = v87 + v88[6];
    *v89 = 0;
    *(v89 + 8) = 0;
    *(v89 + 16) = 1;
    v90 = (v87 + v88[8]);
    *v90 = v77;
    v90[1] = v79;
    v91 = (v87 + v88[9]);
    v92 = v141[1];
    *v91 = v141[0];
    v91[1] = v92;
    (*(*(v88 - 1) + 56))(v87, 0, 1, v88);
    v93 = v133;
    sub_100066E88(v86, v133, type metadata accessor for SuggestedDestinationEntryContent);
    v94 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
    v145(v93);
    sub_1000256C0(v93, &qword_1000DE630, &unk_1000861F0);
    sub_100066EF0(v86);
  }
}

uint64_t sub_100066380()
{
  v1 = sub_10007DFF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for WidgetFamily.systemSmall(_:))
  {
    return 94;
  }

  if (v6 == enum case for WidgetFamily.systemMedium(_:))
  {
    return 95;
  }

  if (v6 == enum case for WidgetFamily.systemLarge(_:))
  {
    return 96;
  }

  v10 = v6 == enum case for WidgetFamily.systemExtraLarge(_:) || v6 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v6 == enum case for WidgetFamily.accessoryCorner(_:) || v6 == enum case for WidgetFamily.accessoryCircular(_:);
  if (!v10 && v6 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    return 94;
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_10006659C(uint64_t a1)
{
  v2 = v1;
  v43 = sub_10007E0C8();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v43);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007DFF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007DF48();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v16 = sub_10007E328();
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = sub_10007DF68();
  result = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v19 = type metadata accessor for MapSnapshotter();
  v20 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  v21 = v20[9];
  sub_10007E0B8();
  v42 = v21;
  v22 = sub_10003D474(v2 + v21, v11);
  v41 = *(v8 + 8);
  v41(v11, v7);
  v23 = v8 + 8;
  if (v22)
  {
    type metadata accessor for SuggestedDestinationSnapshotter();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  v24 = *(v4 + 16);
  v40 = v19;
  v25 = v44;
  v24(v44, a1, v43);
  v26 = *(v2 + v20[5]);
  v27 = *(v2 + v20[6]);
  v28 = v20[8];
  v29 = *(v2 + v20[7]);
  v43 = v23;
  v38 = *(v2 + 72);
  v30 = *(v2 + 76);
  v31 = *(v2 + v28);
  type metadata accessor for SuggestedDestinationSnapshotter();
  swift_allocObject();
  v39 = v7;
  v32 = v31;
  v33 = v26;
  v34 = v27;
  v35 = v29;
  v45 = v30;
  sub_100041650(v25, v26, v34, v29, v38 | (v30 << 32), v31);
  v37 = v36;
  sub_10007E0B8();
  sub_10003DC98(v37, v2 + v42, v11);
  v41(v11, v39);
  return v37;
}

uint64_t sub_100066940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *), uint64_t a10)
{
  v42 = a7;
  v43 = a8;
  v40 = a5;
  v41 = a6;
  v44 = a9;
  v45 = a10;
  v12 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v39 - v14;
  v16 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_projectBox();
  type metadata accessor for SuggestedDestinationSnapshotter();
  v22 = swift_dynamicCastClassUnconditional();
  v39 = type metadata accessor for SuggestedDestinationEntryContent;
  sub_100066E88(a2, v20, type metadata accessor for SuggestedDestinationEntryContent);
  v23 = &v20[*(v17 + 48)];
  sub_1000256C0(v23, &qword_1000E1030, &qword_100085510);
  v24 = sub_10007E0C8();
  (*(*(v24 - 8) + 16))(v23, a3, v24);
  v26 = *(v22 + 24);
  v25 = *(v22 + 32);
  v27 = *(v22 + 80);
  v28 = *(v22 + 88);
  v29 = *(v22 + 96);
  swift_beginAccess();
  v30 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  sub_100026310(v21, v23 + v30[7], &qword_1000DEEE0, &qword_100082E30);
  v31 = (v23 + v30[5]);
  *v31 = v26;
  v31[1] = v25;
  v32 = v23 + v30[6];
  *v32 = v27;
  *(v32 + 8) = v28;
  *(v32 + 16) = v29;
  v33 = (v23 + v30[8]);
  v34 = v41;
  *v33 = v40;
  v33[1] = v34;
  v35 = (v23 + v30[9]);
  v36 = v43;
  *v35 = v42;
  v35[1] = v36;
  (*(*(v30 - 1) + 56))(v23, 0, 1, v30);
  sub_100066E88(v20, v15, v39);
  v37 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v37 - 8) + 56))(v15, 0, 1, v37);
  sub_1000301E4(v26, v25);

  v44(v15);
  sub_1000256C0(v15, &qword_1000DE630, &unk_1000861F0);
  return sub_100066EF0(v20);
}

uint64_t sub_100066C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066CC0()
{
  v1 = *(type metadata accessor for SuggestedDestinationEntryContentResolver(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_10007E0C8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_10007D3B8() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1000652EC(v0 + v2, v0 + v5, v0 + v8, v10, v11);
}

uint64_t sub_100066E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100066EF0(uint64_t a1)
{
  v2 = type metadata accessor for SuggestedDestinationEntryContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100066F4C(uint64_t a1)
{
  v3 = *(type metadata accessor for SuggestedDestinationEntryContentResolver(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10007E0C8() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_100066940(a1, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10), *(v1 + v10 + 8), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_100067090()
{
  result = qword_1000DFCE8;
  if (!qword_1000DFCE8)
  {
    sub_10007DFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFCE8);
  }

  return result;
}

void sub_1000670FC(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v7 = objc_opt_self();
  sub_100015240(&qword_1000E0860, &qword_1000846C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085980;
  v9 = *a2;
  sub_10007E158();
  sub_10007E438();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_10007E158();
  sub_10007E438();
  *(inited + 168) = &type metadata for Int32;
  *(inited + 144) = a3;
  sub_10007E158();
  sub_10007E438();
  *(inited + 240) = &type metadata for Int32;
  *(inited + 216) = a4;
  v15 = sub_10007E158();
  v16 = v10;
  sub_10007E438();
  sub_10007DFF8();
  sub_100067090();
  v11 = sub_10007E588();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v11;
  *(inited + 296) = v12;
  sub_100024DB4(inited);
  swift_setDeallocating();
  sub_100015240(&unk_1000DEB30, &qword_1000846D0);
  swift_arrayDestroy();
  isa = sub_10007E0E8().super.isa;

  v14 = [v7 urlForMapItem:0 options:{isa, v15, v16}];

  if (v14)
  {
    sub_10007D278();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100067354()
{
  v0 = sub_10007DFF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E0B8();
  result = (*(v1 + 88))(v4, v0);
  if (result != enum case for WidgetFamily.systemSmall(_:))
  {
    if (result == enum case for WidgetFamily.systemMedium(_:))
    {
      return sub_10007E0A8();
    }

    else if (result != enum case for WidgetFamily.systemLarge(_:))
    {
      result = sub_10007E518();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10006758C(uint64_t a1, void *a2)
{
  v3 = sub_10007DFF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E0B8();
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for WidgetFamily.systemSmall(_:))
  {
    MKMapRectMakeWithRadialDistance();
LABEL_6:
    sub_10007E0A8();
    sub_100067354();
    return _MKMapRectThatFits();
  }

  if (v8 == enum case for WidgetFamily.systemMedium(_:) || v8 == enum case for WidgetFamily.systemLarge(_:))
  {
    v9 = [a2 boundingMapRegion];
    GEOMapRectForMapRegion();

    goto LABEL_6;
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

id sub_100067850(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 16) = xmmword_1000834F0;
  *(v3 + 32) = 0;
  *(v3 + 40) = dispatch_group_create();
  *(v3 + 48) = 0;
  *(v3 + 56) = sub_100024EF0(&_swiftEmptyArrayStorage);
  *(v3 + 64) = 0;
  *(v3 + 72) = &_swiftEmptyArrayStorage;
  v6 = objc_allocWithZone(MKMapSnapshotOptions);

  v7 = [v6 init];
  v8 = *(v3 + 16);
  *(v3 + 16) = v7;

  result = *(v3 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = [result _setShowsAppleLogo:0];
  v10 = *(v3 + 16);
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  sub_10007E0A8();
  [v11 setSize:?];

  [a2 pointAtRouteCoordinate:{objc_msgSend(a2, "endRouteCoordinate")}];
  nullsub_1(v12, v13, v14);
  result = CLLocationCoordinate2DFromGEOLocationCoordinate2D();
  v15 = *(v3 + 16);
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = v15;
  sub_10006758C(a1, a2);
  [v16 setMapRect:?];

  result = *(v3 + 16);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [result _setComposedRouteForRouteLine:a2];
  v17 = *(v3 + 16);
  v18 = v17;

  if (v17)
  {
    [v18 setMapType:{objc_msgSend(a2, "mapType")}];

    v19 = sub_10007E0C8();
    (*(*(v19 - 8) + 8))(a1, v19);
    return v3;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UserLocationState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UserLocationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UserLocationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100067B04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100067B18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100067B6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100067BE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v30 = a2;
  v32 = a3;
  v6 = type metadata accessor for PreciseUserLocationView(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_100015240(&qword_1000E1D60, &qword_100085B60);
  v10 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v12 = &v29 - v11;
  v13 = sub_100015240(&qword_1000E1D68, &qword_100085B68);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = sub_100015240(&qword_1000E1D70, &qword_100085B70);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v29 - v19;
  v21 = type metadata accessor for CoarseUserLocationView(0);
  v22 = *(*(v21 - 1) + 64);
  __chkstk_darwin(v21);
  v24 = (&v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    *v9 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    *(v9 + *(v6 + 20)) = swift_getKeyPath();
    sub_100015240(&qword_1000DEF58, &qword_100083AB0);
    swift_storeEnumTagMultiPayload();
    *(v9 + *(v6 + 24)) = v30 & 1;
    v25 = type metadata accessor for PreciseUserLocationView;
    sub_100069D34(v9, v16, type metadata accessor for PreciseUserLocationView);
    swift_storeEnumTagMultiPayload();
    sub_100069C00(&qword_1000E1D78, type metadata accessor for CoarseUserLocationView);
    sub_100069C00(&qword_1000E1D80, type metadata accessor for PreciseUserLocationView);
    sub_10007D9D8();
    sub_100026310(v20, v12, &qword_1000E1D70, &qword_100085B70);
    swift_storeEnumTagMultiPayload();
    sub_100069C48();
    sub_10007D9D8();
    sub_1000256C0(v20, &qword_1000E1D70, &qword_100085B70);
    v26 = v9;
    return sub_100069D9C(v26, v25);
  }

  v27 = v30;
  v29 = v17;
  if (a1 == 1)
  {
    *v24 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    *(v24 + v21[5]) = swift_getKeyPath();
    sub_100015240(&qword_1000DEF58, &qword_100083AB0);
    swift_storeEnumTagMultiPayload();
    *(v24 + v21[6]) = v27 & 1;
    *(v24 + v21[7]) = a4;
    v25 = type metadata accessor for CoarseUserLocationView;
    sub_100069D34(v24, v16, type metadata accessor for CoarseUserLocationView);
    swift_storeEnumTagMultiPayload();
    sub_100069C00(&qword_1000E1D78, type metadata accessor for CoarseUserLocationView);
    sub_100069C00(&qword_1000E1D80, type metadata accessor for PreciseUserLocationView);
    sub_10007D9D8();
    sub_100026310(v20, v12, &qword_1000E1D70, &qword_100085B70);
    swift_storeEnumTagMultiPayload();
    sub_100069C48();
    sub_10007D9D8();
    sub_1000256C0(v20, &qword_1000E1D70, &qword_100085B70);
    v26 = v24;
    return sub_100069D9C(v26, v25);
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

double sub_10006819C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10007D948();
  v5 = *a1;
  v6 = *(a1 + 8);
  result = *(a1 + 4);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = *(a1 + 1);
  *(a2 + 88) = result;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  return result;
}

__n128 sub_100068234@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v8 = *(v1 + 32);
  v4 = sub_10007D878();
  sub_10006819C(v7, v9);
  *&v6[71] = v9[4];
  *&v6[87] = v9[5];
  *&v6[103] = v10[0];
  *&v6[112] = *(v10 + 9);
  *&v6[7] = v9[0];
  *&v6[23] = v9[1];
  *&v6[39] = v9[2];
  *&v6[55] = v9[3];
  *(a1 + 81) = *&v6[64];
  *(a1 + 97) = *&v6[80];
  *(a1 + 113) = *&v6[96];
  *(a1 + 129) = *&v6[112];
  *(a1 + 17) = *v6;
  *(a1 + 33) = *&v6[16];
  result = *&v6[32];
  *(a1 + 49) = *&v6[32];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 65) = *&v6[48];
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for UserLocationView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UserLocationView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UserLocationView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10006842C(SEL *a1, SEL *a2, SEL *a3)
{
  v7 = sub_10007D638();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for ColorScheme.light(_:))
  {
    v13 = [objc_opt_self() *a3];
    return sub_10007DD68();
  }

  if (v12 == enum case for ColorScheme.dark(_:))
  {
    v14 = [objc_opt_self() *a1];
    v15 = [objc_opt_self() *a2];
    [v14 resolvedColorWithTraitCollection:v15];

    return sub_10007DD68();
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_100068620@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CoarseUserLocationView(0);
  sub_100026310(v1 + *(v12 + 20), v11, &qword_1000DEF58, &qword_100083AB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007DF98();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100068828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_10007DF98();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v62 - v8;
  v10 = sub_10007D638();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v69 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v73 = &v62 - v16;
  __chkstk_darwin(v15);
  v18 = &v62 - v17;
  v19 = sub_100015240(&qword_1000E1EF8, &qword_100085CD8);
  v67 = *(v19 - 8);
  v68 = v19;
  v20 = *(v67 + 64);
  __chkstk_darwin(v19);
  v22 = &v62 - v21;
  v64 = sub_100015240(&qword_1000E1F00, &qword_100085CE0);
  v23 = *(*(v64 - 8) + 64);
  v24 = __chkstk_darwin(v64);
  v74 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v63 = &v62 - v27;
  __chkstk_darwin(v26);
  v76 = &v62 - v28;
  sub_100068FC0(v18);
  v29 = *(type metadata accessor for CoarseUserLocationView(0) + 24);
  v72 = a1;
  if (*(a1 + v29) == 1)
  {
    sub_10006842C(&selRef_systemGray2Color, &selRef_traitCollectionWithAccessibilityContrast_, &selRef_systemGray2Color);
  }

  else
  {
    sub_10007DCF8();
  }

  v30 = sub_10007DD38();

  v65 = *(v11 + 8);
  v66 = v11 + 8;
  v65(v18, v10);
  v31 = sub_10007DAC8();
  v32 = 1.0;
  sub_10007D628();
  v93 = 0;
  *&v82 = v30;
  WORD4(v82) = 256;
  LOBYTE(v83) = v31;
  *(&v83 + 1) = v33;
  *v84 = v34;
  *&v84[8] = v35;
  *&v84[16] = v36;
  v84[24] = 0;
  sub_100015240(&qword_1000E1F08, &unk_100085CE8);
  sub_10006A408();
  sub_10007DC08();
  v91[0] = v82;
  v91[1] = v83;
  v92[0] = *v84;
  *(v92 + 9) = *&v84[9];
  sub_1000256C0(v91, &qword_1000E1F08, &unk_100085CE8);
  sub_100068620(v9);
  sub_10007DF88();
  v37 = sub_10007DF78();
  v38 = v71;
  v39 = *(v70 + 8);
  v39(v7, v71);
  v39(v9, v38);
  if (v37)
  {
    v32 = 0.8;
  }

  v40 = v63;
  (*(v67 + 32))(v63, v22, v68);
  *(v40 + *(v64 + 36)) = v32;
  sub_10000B764(v40, v76);
  v41 = v73;
  sub_100068FC0(v73);
  v42 = v69;
  (*(v11 + 16))(v69, v41, v10);
  v43 = (*(v11 + 88))(v42, v10);
  if (v43 == enum case for ColorScheme.light(_:))
  {
    v72 = sub_10006842C(&selRef_systemGray3Color, &selRef_traitCollectionWithUserInterfaceStyle_, &selRef_whiteColor);
LABEL_10:
    v65(v41, v10);
    sub_10007D658();
    v44 = v94;
    v45 = v95;
    LODWORD(v73) = v96;
    v46 = v97;
    v47 = v98;
    v48 = v99;
    v49 = sub_10007DE88();
    v51 = v50;
    v52 = v76;
    v53 = v74;
    sub_100026310(v76, v74, &qword_1000E1F00, &qword_100085CE0);
    v54 = v75;
    sub_100026310(v53, v75, &qword_1000E1F00, &qword_100085CE0);
    v55 = (v54 + *(sub_100015240(&qword_1000E1F18, &qword_100085CF8) + 48));
    *&v77 = v44 * 0.5;
    *(&v77 + 1) = v44;
    LODWORD(v54) = v73;
    *&v78 = __PAIR64__(v73, v45);
    *(&v78 + 1) = v46;
    *&v79 = v47;
    *(&v79 + 1) = v48;
    v56 = v72;
    *&v80 = v72;
    WORD4(v80) = 256;
    *(&v80 + 10) = v89;
    HIWORD(v80) = v90;
    *&v81 = v49;
    *(&v81 + 1) = v51;
    v57 = v77;
    v58 = v78;
    v59 = v81;
    v60 = v79;
    v55[3] = v80;
    v55[4] = v59;
    v55[1] = v58;
    v55[2] = v60;
    *v55 = v57;
    sub_100026310(&v77, &v82, &qword_1000E1F20, &qword_100085D00);
    sub_1000256C0(v52, &qword_1000E1F00, &qword_100085CE0);
    *&v82 = v44 * 0.5;
    *(&v82 + 1) = v44;
    *&v83 = __PAIR64__(v54, v45);
    *(&v83 + 1) = v46;
    *v84 = v47;
    *&v84[8] = v48;
    *&v84[16] = v56;
    *&v84[24] = 256;
    v85 = v89;
    v86 = v90;
    v87 = v49;
    v88 = v51;
    sub_1000256C0(&v82, &qword_1000E1F20, &qword_100085D00);
    return sub_1000256C0(v53, &qword_1000E1F00, &qword_100085CE0);
  }

  if (v43 == enum case for ColorScheme.dark(_:))
  {
    sub_10006842C(&selRef_systemGray3Color, &selRef_traitCollectionWithUserInterfaceStyle_, &selRef_whiteColor);
    v72 = sub_10007DD38();

    goto LABEL_10;
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_100068FC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100026310(v2, &v17 - v11, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007D638();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000691C0(uint64_t a1)
{
  v3 = sub_100015240(&qword_1000E1ED0, &qword_100085CC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (v13 - v5);
  v7 = *(v1 + *(a1 + 28));
  *v6 = sub_10007DE88();
  v6[1] = v8;
  v9 = sub_100015240(&qword_1000E1ED8, &qword_100085CC8);
  sub_100068828(v1, v6 + *(v9 + 44));
  sub_10007DE88();
  sub_10007D668();
  v10 = (v6 + *(v3 + 36));
  v11 = v13[1];
  *v10 = v13[0];
  v10[1] = v11;
  v10[2] = v13[2];
  sub_10006A350();
  sub_10007DC78();
  return sub_1000256C0(v6, &qword_1000E1ED0, &qword_100085CC0);
}

uint64_t sub_100069324()
{
  v1 = v0;
  v2 = sub_10007DE88();
  v4 = v3;
  sub_100069558(v1, __dst);
  v17 = __dst[10];
  v18 = __dst[11];
  v19 = __dst[12];
  v20 = __dst[13];
  v13 = __dst[6];
  v14 = __dst[7];
  v15 = __dst[8];
  v16 = __dst[9];
  v9 = __dst[2];
  v10 = __dst[3];
  v11 = __dst[4];
  v12 = __dst[5];
  v7 = __dst[0];
  v8 = __dst[1];
  v21[10] = __dst[10];
  v21[11] = __dst[11];
  v21[12] = __dst[12];
  v21[13] = __dst[13];
  v21[6] = __dst[6];
  v21[7] = __dst[7];
  v21[8] = __dst[8];
  v21[9] = __dst[9];
  v21[2] = __dst[2];
  v21[3] = __dst[3];
  v21[4] = __dst[4];
  v21[5] = __dst[5];
  v21[0] = __dst[0];
  v21[1] = __dst[1];
  sub_100026310(&v7, v6, &qword_1000E1F28, &qword_100085D08);
  sub_1000256C0(v21, &qword_1000E1F28, &qword_100085D08);
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v22 = v7;
  v23 = v8;
  sub_10007DE88();
  sub_10007D668();
  *&v6[0] = v2;
  *(&v6[0] + 1) = v4;
  v6[11] = v32;
  v6[12] = v33;
  v6[13] = v34;
  v6[14] = v35;
  v6[7] = v28;
  v6[8] = v29;
  v6[9] = v30;
  v6[10] = v31;
  v6[3] = v24;
  v6[4] = v25;
  v6[5] = v26;
  v6[6] = v27;
  v6[1] = v22;
  v6[2] = v23;
  sub_100015240(&qword_1000E1F30, &qword_100085D10);
  sub_10006A4C0();
  sub_10007DC78();
  memcpy(__dst, v6, sizeof(__dst));
  return sub_1000256C0(__dst, &qword_1000E1F30, &qword_100085D10);
}

uint64_t sub_100069558@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v66 = sub_10007DCE8();
  v4 = *(v66 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v66);
  v7 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10007D638();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v58[-v15];
  __chkstk_darwin(v14);
  v18 = &v58[-v17];
  *&v60 = a1;
  sub_100068FC0(&v58[-v17]);
  (*(v9 + 16))(v16, v18, v8);
  v19 = (*(v9 + 88))(v16, v8);
  if (v19 == enum case for ColorScheme.light(_:) || v19 == enum case for ColorScheme.dark(_:))
  {
    (*(v4 + 104))(v7, enum case for Color.RGBColorSpace.sRGB(_:), v66);
    v66 = sub_10007DD48();
    v20 = *(v9 + 8);
    v20(v18, v8);
    v65 = sub_10007DAC8();
    sub_10007D628();
    v63 = v22;
    v64 = v21;
    v61 = v24;
    v62 = v23;
    v129 = 0;
    v25 = *(v60 + *(type metadata accessor for PreciseUserLocationView(0) + 24));
    sub_100068FC0(v13);
    if (v25 == 1)
    {
      v26 = sub_10006842C(&selRef_systemGray2Color, &selRef_traitCollectionWithAccessibilityContrast_, &selRef_systemGray2Color);
    }

    else
    {
      v26 = sub_10007DCF8();
    }

    v27 = v26;
    v20(v13, v8);
    v28 = sub_10007DAC8();
    v29 = v28;
    v59 = v28;
    sub_10007D628();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v125 = 0;
    sub_100068FC0(v13);
    v38 = sub_10006842C(&selRef_systemGray3Color, &selRef_traitCollectionWithUserInterfaceStyle_, &selRef_whiteColor);
    v20(v13, v8);
    sub_10007D658();
    v39 = v131;
    v40 = v132;
    v41 = v133;
    v42 = v134;
    v43 = v135;
    v44 = v136;
    v45 = sub_10007DE88();
    v60 = xmmword_1000859F0;
    *(v91 + 8) = xmmword_1000859F0;
    *&v91[0] = v66;
    *(&v91[1] + 1) = 0x3FF0000000000000;
    LOBYTE(v92) = v65;
    *(&v92 + 1) = *v130;
    DWORD1(v92) = *&v130[3];
    *(&v92 + 1) = v64;
    *&v93[0] = v63;
    *(&v93[0] + 1) = v62;
    *&v93[1] = v61;
    BYTE8(v93[1]) = 0;
    *(v80 + 9) = *(v93 + 9);
    v79 = v92;
    v80[0] = v93[0];
    v77 = v91[0];
    v78 = v91[1];
    *&v94 = v27;
    WORD4(v94) = 256;
    HIWORD(v94) = v128;
    *(&v94 + 10) = v127;
    LOBYTE(v95) = v29;
    DWORD1(v95) = *&v126[3];
    *(&v95 + 1) = *v126;
    *(&v95 + 1) = v31;
    *&v96[0] = v33;
    *(&v96[0] + 1) = v35;
    *&v96[1] = v37;
    BYTE8(v96[1]) = 0;
    *(v83 + 9) = *(v96 + 9);
    v81 = v94;
    v82 = v95;
    *&v97 = v39 * 0.5;
    *(&v97 + 1) = v39;
    *&v98 = __PAIR64__(v41, v40);
    *(&v98 + 1) = v42;
    *&v99 = v43;
    *(&v99 + 1) = v44;
    *&v100 = v38;
    WORD4(v100) = 256;
    HIWORD(v100) = v90;
    *(&v100 + 10) = v89;
    *&v101 = v45;
    *(&v101 + 1) = v46;
    v83[0] = v96[0];
    v84 = v97;
    v85 = v98;
    v87 = v100;
    v88 = v101;
    v86 = v99;
    v47 = v91[1];
    *a2 = v91[0];
    a2[1] = v47;
    v48 = v79;
    v49 = v80[0];
    v50 = v81;
    a2[4] = v80[1];
    a2[5] = v50;
    a2[2] = v48;
    a2[3] = v49;
    v51 = v82;
    v52 = v83[0];
    v53 = v84;
    a2[8] = v83[1];
    a2[9] = v53;
    a2[6] = v51;
    a2[7] = v52;
    v54 = v85;
    v55 = v86;
    v56 = v88;
    a2[12] = v87;
    a2[13] = v56;
    a2[10] = v54;
    a2[11] = v55;
    v102[0] = v39 * 0.5;
    v102[1] = v39;
    v103 = v40;
    v104 = v41;
    v105 = v42;
    v106 = v43;
    v107 = v44;
    v108 = v38;
    v109 = 256;
    v110 = v89;
    v111 = v90;
    v112 = v45;
    v113 = v46;
    sub_100026310(v91, &v67, &qword_1000E1F50, &qword_100085D20);
    sub_100026310(&v94, &v67, &qword_1000E1F08, &unk_100085CE8);
    sub_100026310(&v97, &v67, &qword_1000E1F20, &qword_100085D00);
    sub_1000256C0(v102, &qword_1000E1F20, &qword_100085D00);
    v114 = v27;
    v115 = 256;
    v116 = v127;
    v117 = v128;
    v118 = v59;
    *v119 = *v126;
    *&v119[3] = *&v126[3];
    v120 = v31;
    v121 = v33;
    v122 = v35;
    v123 = v37;
    v124 = 0;
    sub_1000256C0(&v114, &qword_1000E1F08, &unk_100085CE8);
    v67 = v66;
    v68 = v60;
    v69 = 0x3FF0000000000000;
    v70 = v65;
    *v71 = *v130;
    *&v71[3] = *&v130[3];
    v72 = v64;
    v73 = v63;
    v74 = v62;
    v75 = v61;
    v76 = 0;
    return sub_1000256C0(&v67, &qword_1000E1F50, &qword_100085D20);
  }

  else
  {
    result = sub_10007E518();
    __break(1u);
  }

  return result;
}

uint64_t sub_100069C00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100069C48()
{
  result = qword_1000E1D88;
  if (!qword_1000E1D88)
  {
    sub_100015288(&qword_1000E1D70, &qword_100085B70);
    sub_100069C00(&qword_1000E1D78, type metadata accessor for CoarseUserLocationView);
    sub_100069C00(&qword_1000E1D80, type metadata accessor for PreciseUserLocationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1D88);
  }

  return result;
}

uint64_t sub_100069D34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100069D9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100069E24()
{
  sub_100069EE8(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_100069EE8(319, &qword_1000DF9F0, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100069EE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100069F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100015240(&qword_1000E04A0, &unk_1000844A0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10006A098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100015240(&qword_1000E04A0, &unk_1000844A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10006A1B8()
{
  sub_100069EE8(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_100069EE8(319, &qword_1000DF9F0, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10006A28C()
{
  result = qword_1000E1EC0;
  if (!qword_1000E1EC0)
  {
    sub_100015288(&qword_1000E1EC8, &qword_100085C18);
    sub_100069C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1EC0);
  }

  return result;
}

unint64_t sub_10006A350()
{
  result = qword_1000E1EE0;
  if (!qword_1000E1EE0)
  {
    sub_100015288(&qword_1000E1ED0, &qword_100085CC0);
    sub_10002DDAC(&qword_1000E1EE8, &qword_1000E1EF0, &qword_100085CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1EE0);
  }

  return result;
}

unint64_t sub_10006A408()
{
  result = qword_1000E1F10;
  if (!qword_1000E1F10)
  {
    sub_100015288(&qword_1000E1F08, &unk_100085CE8);
    sub_10002DDAC(&qword_1000E0568, &qword_1000E0570, &qword_1000845A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1F10);
  }

  return result;
}

unint64_t sub_10006A4C0()
{
  result = qword_1000E1F38;
  if (!qword_1000E1F38)
  {
    sub_100015288(&qword_1000E1F30, &qword_100085D10);
    sub_10002DDAC(&qword_1000E1F40, &qword_1000E1F48, &qword_100085D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1F38);
  }

  return result;
}

uint64_t sub_10006A578(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    a4();
    sub_100069C00(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10006A674()
{
  sub_10004999C();
  if (v0 <= 0x3F)
  {
    sub_10006A760(319, &qword_1000E19C8, type metadata accessor for GEOTransportType);
    if (v1 <= 0x3F)
    {
      sub_10006A760(319, &unk_1000E1FE0, type metadata accessor for NavigationETAEntryContent.ResolvedContent);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006A760(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007E3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006A844(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E1340, &qword_1000852A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006A9B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v66 = a3;
  v67 = a4;
  v6 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v60 = &v56 - v8;
  v58 = type metadata accessor for NavigationETAEntryContent(0);
  v9 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v61 = &v56 - v13;
  v14 = sub_10007E0C8();
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  v16 = __chkstk_darwin(v14);
  v57 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v56 - v17;
  v19 = type metadata accessor for NavigationETAEntryContentResolver(0);
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  __chkstk_darwin(v19);
  v21 = sub_10007DFF8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  sub_10007E0B8();
  v26 = (*(v22 + 88))(v25, v21);
  if (v26 == enum case for WidgetFamily.systemSmall(_:) || v26 == enum case for WidgetFamily.systemMedium(_:) || v26 == enum case for WidgetFamily.systemLarge(_:))
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v60 = a2;
    v37 = sub_10007D5C8();
    sub_1000046BC(v37, qword_1000E4B28);
    v38 = sub_10007D5A8();
    v39 = sub_10007E288();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "NavigationETAEntryContentResolver: generating map snapshot (supported for this family)", v40, 2u);
    }

    v59 = *(v62 + *(v19 + 20));
    v41 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_10006B590(v62, v41, type metadata accessor for NavigationETAEntryContentResolver);
    v42 = v63;
    v43 = v64;
    v62 = *(v63 + 16);
    v44 = v65;
    v62(v18, v65, v64);
    v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v46 = (v20 + *(v42 + 80) + v45) & ~*(v42 + 80);
    v47 = swift_allocObject();
    sub_10006B5F8(v41, v47 + v45);
    (*(v42 + 32))(v47 + v46, v18, v43);
    v48 = (v47 + ((v15 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
    v49 = v67;
    *v48 = v66;
    v48[1] = v49;
    v50 = v57;
    v62(v57, v44, v43);
    type metadata accessor for NavigationETASnapshotter();
    swift_allocObject();

    v51 = v59;
    sub_100067850(v50, v51);

    v52 = sub_10007D3B8();
    v53 = *(v52 - 8);
    v54 = v61;
    (*(v53 + 16))(v61, v60, v52);
    (*(v53 + 56))(v54, 0, 1, v52);
    v55 = swift_allocObject();
    *(v55 + 16) = sub_10006B65C;
    *(v55 + 24) = v47;

    sub_10003AB38(v54, sub_10004B290, v55);

    return sub_1000256C0(v54, &qword_1000DE928, &unk_100082900);
  }

  else
  {
    if (v26 == enum case for WidgetFamily.systemExtraLarge(_:) || v26 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v26 == enum case for WidgetFamily.accessoryCorner(_:) || v26 == enum case for WidgetFamily.accessoryCircular(_:) || v26 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      while (1)
      {
        sub_10007E518();
        __break(1u);
      }
    }

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v27 = sub_10007D5C8();
    sub_1000046BC(v27, qword_1000E4B28);
    v28 = sub_10007D5A8();
    v29 = sub_10007E288();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "NavigationETAEntryContentResolver: skipping map snapshot (not supported for this family)", v30, 2u);
    }

    v31 = v59;
    sub_10006B590(v62, v59, type metadata accessor for NavigationETAEntryContent);
    v32 = v31 + *(v58 + 36);
    sub_1000256C0(v32, &qword_1000E1340, &qword_1000852A0);
    (*(v63 + 16))(v32, v65, v64);
    v33 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
    *(v32 + *(v33 + 20)) = xmmword_1000845B0;
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    v34 = v60;
    sub_10006B590(v31, v60, type metadata accessor for NavigationETAEntryContent);
    v35 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v66(v34);
    sub_1000256C0(v34, &qword_1000DE630, &unk_1000861F0);
    return sub_10006B534(v31);
  }
}

uint64_t sub_10006B2DC(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v10 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for NavigationETAEntryContent(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006B590(a3, v18, type metadata accessor for NavigationETAEntryContent);
  v19 = &v18[*(v15 + 44)];
  sub_1000256C0(v19, &qword_1000E1340, &qword_1000852A0);
  v20 = sub_10007E0C8();
  (*(*(v20 - 8) + 16))(v19, a4, v20);
  v21 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
  v22 = (v19 + *(v21 + 20));
  *v22 = a1;
  v22[1] = a2;
  (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
  sub_10006B590(v18, v13, type metadata accessor for NavigationETAEntryContent);
  v23 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
  sub_1000301E4(a1, a2);
  a5(v13);
  sub_1000256C0(v13, &qword_1000DE630, &unk_1000861F0);
  return sub_10006B534(v18);
}

uint64_t sub_10006B534(uint64_t a1)
{
  v2 = type metadata accessor for NavigationETAEntryContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006B5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationETAEntryContentResolver(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B65C(void *a1, void *a2)
{
  v5 = *(type metadata accessor for NavigationETAEntryContentResolver(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10007E0C8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_10006B2DC(a1, a2, v2 + v6, v2 + v9, v11);
}

uint64_t sub_10006B770@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10006C83C(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007DFF8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10006B958@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v61 = sub_100015240(&qword_1000DE2A0, &qword_1000822A8);
  v62 = *(v61 - 8);
  v1 = *(v62 + 64);
  __chkstk_darwin(v61);
  v64 = &v59 - v2;
  v67 = sub_100015240(&qword_1000DE298, &qword_1000822A0);
  v65 = *(v67 - 8);
  v3 = *(v65 + 64);
  __chkstk_darwin(v67);
  v60 = &v59 - v4;
  v74 = sub_100015240(&qword_1000DE290, &qword_100082298);
  v71 = *(v74 - 8);
  v5 = *(v71 + 64);
  __chkstk_darwin(v74);
  v66 = &v59 - v6;
  v76 = sub_100015240(&qword_1000DE288, &qword_100082290);
  v72 = *(v76 - 8);
  v7 = *(v72 + 64);
  __chkstk_darwin(v76);
  v68 = &v59 - v8;
  v77 = sub_100015240(&qword_1000DE2B8, &qword_1000822B8);
  v73 = *(v77 - 8);
  v9 = *(v73 + 64);
  __chkstk_darwin(v77);
  v69 = &v59 - v10;
  v80 = sub_100015240(&qword_1000DE2B0, &qword_1000822B0);
  v75 = *(v80 - 8);
  v11 = *(v75 + 64);
  __chkstk_darwin(v80);
  v70 = &v59 - v12;
  v81 = sub_100015240(&qword_1000E2220, &qword_100085E48);
  v79 = *(v81 - 8);
  v13 = *(v79 + 64);
  __chkstk_darwin(v81);
  v78 = &v59 - v14;
  v15 = sub_10007DFF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for GeneralMapsWidget();
  v20 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v23 = sub_10007D5C8();
  sub_1000046BC(v23, qword_1000E4B28);
  sub_10000413C(v83, v22, type metadata accessor for GeneralMapsWidget);
  v24 = sub_10007D5A8();
  v25 = sub_10007E288();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v84 = v27;
    *v26 = 136446210;
    sub_10006B770(v19);
    sub_10006C7F4(&qword_1000DFCE8, &type metadata accessor for WidgetFamily);
    v28 = sub_10007E588();
    v30 = v29;
    (*(v16 + 8))(v19, v15);
    sub_10006C798(v22);
    v31 = sub_100051190(v28, v30, &v84);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "GeneralMapsWidget: Avocado called GeneralMapsWidget 'body' (requesting size %{public}s)", v26, 0xCu);
    sub_1000250AC(v27);
  }

  else
  {

    sub_10006C798(v22);
  }

  v32 = v63;
  v33 = v83;
  v84 = *(v83 + *(v63 + 20));
  type metadata accessor for WidgetContentView();
  type metadata accessor for GeneralMapsTimelineProvider(0);
  sub_10006C7F4(&qword_1000E2228, type metadata accessor for WidgetContentView);
  sub_10006C7F4(&qword_1000E2230, type metadata accessor for GeneralMapsTimelineProvider);

  v34 = v64;
  sub_10007E058();
  sub_10007D8F8();
  v35 = sub_1000152D0();
  v36 = v60;
  v37 = v61;
  sub_10007D9A8();

  (*(v62 + 8))(v34, v37);
  v38 = *(v33 + *(v32 + 32));
  v84 = v37;
  v85 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v66;
  v40 = v67;
  sub_10007D978();
  (*(v65 + 8))(v36, v40);
  sub_10007D8F8();
  v84 = v40;
  v85 = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v68;
  v44 = v74;
  sub_10007D968();

  (*(v71 + 8))(v41, v44);
  v84 = v44;
  v85 = v42;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v69;
  v47 = v76;
  sub_10007D9B8();
  (*(v72 + 8))(v43, v47);
  v84 = v47;
  v85 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v70;
  v50 = v77;
  sub_10007D9C8();
  (*(v73 + 8))(v46, v50);
  v84 = v50;
  v85 = v48;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v78;
  v53 = v80;
  sub_10007D998();
  (*(v75 + 8))(v49, v53);
  sub_100015240(&qword_1000E2238, &unk_100085E50);
  v54 = *(sub_10007E028() - 8);
  v55 = *(v54 + 72);
  v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  *(swift_allocObject() + 16) = xmmword_100082810;
  sub_10007E018();
  sub_10007E008();
  v84 = v53;
  v85 = v51;
  swift_getOpaqueTypeConformance2();
  v57 = v81;
  sub_10007D988();

  return (*(v79 + 8))(v52, v57);
}

uint64_t sub_10006C4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000413C(a1, a2, type metadata accessor for GeneralMapsTimelineEntry);
  v3 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GeneralMapsWidget();
  sub_10006C7F4(&qword_1000E2170, type metadata accessor for GeneralMapsWidget);
  sub_10007DDF8();
  return 0;
}

uint64_t type metadata accessor for GeneralMapsWidget()
{
  result = qword_1000E21D0;
  if (!qword_1000E21D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C614()
{
  sub_10006C6F8(319, &qword_1000DEBB0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GeneralMapsTimelineProvider(319);
    if (v1 <= 0x3F)
    {
      sub_10006C6F8(319, &unk_1000E21E0, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006C6F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10007DFF8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10006C798(uint64_t a1)
{
  v2 = type metadata accessor for GeneralMapsWidget();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006C7F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006C83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10006C8AC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_10007E4F8();

    if (v4)
    {
      sub_10002620C(0, &qword_1000DE968, GEOComposedRoute_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100077B00(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_10006C970()
{
  v1 = OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_expiration;
  v2 = sub_10007D3B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10006CA2C()
{
  v1 = v0;
  v17 = sub_10007E318();
  v2 = *(v17 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10007E2F8() - 8) + 64);
  __chkstk_darwin();
  v7 = *(*(sub_10007DED8() - 8) + 64);
  __chkstk_darwin();
  v8 = sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v16[0] = "n";
  v16[1] = v8;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  sub_10007DEC8();
  v18 = &_swiftEmptyArrayStorage;
  sub_100077AB8(&qword_1000E0968, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100015240(&qword_1000E0970, &unk_100085FE0);
  sub_100077198(&qword_1000E0978, &qword_1000E0970, &unk_100085FE0);
  sub_10007E3F8();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *(v0 + 120) = sub_10007E348();
  *(v0 + 128) = 0;
  v9 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
  v10 = type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_maxTimelineAge) = 0x402E000000000000;
  *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_maxFreshLocationAge) = 0x4072C00000000000;
  *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount) = 0;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v11 = sub_10007D5C8();
  sub_1000046BC(v11, qword_1000E4B28);
  v12 = sub_10007D5A8();
  v13 = sub_10007E298();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "GeneralMapsTimelineProvider init", v14, 2u);
  }

  return v1;
}

uint64_t sub_10006CDD0()
{
  v1 = v0;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B28);
  v3 = sub_10007D5A8();
  v4 = sub_10007E298();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "GeneralMapsTimelineProvider deinit", v5, 2u);
  }

  v10 = *(v1 + 112);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  sub_100025EF8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));

  v6 = *(v1 + 128);

  sub_1000256C0(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline, &qword_1000E24F0, &qword_100085FF0);
  return v1;
}

uint64_t sub_10006CF14()
{
  sub_10006CDD0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10006CF94()
{
  sub_10006D058();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10006D058()
{
  if (!qword_1000E22A0)
  {
    type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(255);
    v0 = sub_10007E3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E22A0);
    }
  }
}

uint64_t sub_10006D0F8()
{
  result = sub_10007D3B8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10006D1C0()
{
  sub_10006D244();
  if (v0 <= 0x3F)
  {
    sub_10007D3B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006D244()
{
  if (!qword_1000E24B0)
  {
    sub_100015288(&unk_1000E24B8, qword_100085F70);
    v0 = sub_10007E1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E24B0);
    }
  }
}

uint64_t sub_10006D2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v6 = sub_10007DEB8();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007DED8();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007D3B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v3 + 120);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  (*(v15 + 32))(v20 + v18, v17, v14);
  v21 = (v20 + v19);
  v22 = v27;
  *v21 = v26;
  v21[1] = v22;
  aBlock[4] = sub_100077840;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C97B8;
  v23 = _Block_copy(aBlock);

  sub_10007DEC8();
  v32 = _swiftEmptyArrayStorage;
  sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v23);
  (*(v31 + 8))(v9, v6);
  (*(v29 + 8))(v13, v30);
}

void sub_10006D698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 128);
  if (v3)
  {
    v4 = v3 == a3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v10 = *(a2 + 96);
    v20[4] = *(a2 + 80);
    v20[5] = v10;
    v21 = *(a2 + 112);
    v11 = *(a2 + 32);
    v20[0] = *(a2 + 16);
    v20[1] = v11;
    v12 = *(a2 + 64);
    v20[2] = *(a2 + 48);
    v20[3] = v12;
    v13 = *(a1 + 16);
    *(a2 + 16) = *a1;
    *(a2 + 32) = v13;
    v14 = *(a1 + 80);
    *(a2 + 80) = *(a1 + 64);
    *(a2 + 96) = v14;
    v15 = *(a1 + 48);
    *(a2 + 48) = *(a1 + 32);
    *(a2 + 64) = v15;
    *(a2 + 112) = *(a1 + 96);
    sub_1000256C0(v20, &qword_1000DE950, &qword_100082918);
    sub_100025354(a1, v19);
    sub_10006D840();
    v17 = *(a2 + 128);
    *(a2 + 128) = 0;

    dispatch_group_leave(*(a3 + OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_group));
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v5 = sub_10007D5C8();
    sub_1000046BC(v5, qword_1000E4B28);
    oslog = sub_10007D5A8();
    v6 = sub_10007E2A8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "GeneralMapsTimelineProvider: refreshIfNeeded: ignoring expired state collector", v7, 2u);
    }
  }
}

void sub_10006D840()
{
  v607 = type metadata accessor for NearbyEntryContent(0);
  v2 = *(*(v607 - 8) + 64);
  v3 = __chkstk_darwin(v607);
  v606 = &v587 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v611 = (&v587 - v5);
  v652 = sub_10007D3E8();
  v613 = *(v652 - 8);
  v6 = *(v613 + 64);
  v7 = __chkstk_darwin(v652);
  v610 = &v587 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v644 = &v587 - v9;
  v633 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v10 = *(*(v633 - 8) + 64);
  v11 = __chkstk_darwin(v633);
  v638 = &v587 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v625 = &v587 - v14;
  __chkstk_darwin(v13);
  v659 = &v587 - v15;
  v622 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v16 = *(*(v622 - 8) + 64);
  v17 = __chkstk_darwin(v622);
  v632 = &v587 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v618 = &v587 - v20;
  v21 = __chkstk_darwin(v19);
  v641 = &v587 - v22;
  v23 = __chkstk_darwin(v21);
  v621 = &v587 - v24;
  v25 = __chkstk_darwin(v23);
  v640 = &v587 - v26;
  v27 = __chkstk_darwin(v25);
  v619 = &v587 - v28;
  v29 = __chkstk_darwin(v27);
  v655 = &v587 - v30;
  __chkstk_darwin(v29);
  v669 = &v587 - v31;
  v627 = type metadata accessor for CommuteWindowEntryContent(0);
  v32 = *(*(v627 - 8) + 64);
  __chkstk_darwin(v627);
  v645 = &v587 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v668 = sub_10007D238();
  v605 = *(v668 - 8);
  v34 = *(v605 + 8);
  __chkstk_darwin(v668);
  v664 = &v587 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v663 = type metadata accessor for CommuteWindowDetailsString(0);
  v658 = *(v663 - 8);
  v36 = v658[8];
  __chkstk_darwin(v663);
  v646 = &v587 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100015240(&qword_1000E24F0, &qword_100085FF0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v624 = &v587 - v40;
  v649 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  v650 = *(v649 - 8);
  v41 = *(v650 + 64);
  v42 = __chkstk_darwin(v649);
  v600 = &v587 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v602 = &v587 - v45;
  v46 = __chkstk_darwin(v44);
  v604 = &v587 - v47;
  v48 = __chkstk_darwin(v46);
  v601 = &v587 - v49;
  v50 = __chkstk_darwin(v48);
  v631 = &v587 - v51;
  v52 = __chkstk_darwin(v50);
  v626 = &v587 - v53;
  v54 = __chkstk_darwin(v52);
  v617 = &v587 - v55;
  v56 = __chkstk_darwin(v54);
  v628 = (&v587 - v57);
  __chkstk_darwin(v56);
  v642 = &v587 - v58;
  v636 = type metadata accessor for NavigationETAEntryContent(0);
  v59 = *(*(v636 - 8) + 64);
  __chkstk_darwin(v636);
  v651 = &v587 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v670 = sub_10007D3B8();
  v653 = *(v670 - 8);
  v61 = *(v653 + 64);
  v62 = __chkstk_darwin(v670);
  v630 = &v587 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v612 = &v587 - v65;
  v66 = __chkstk_darwin(v64);
  v614 = &v587 - v67;
  v68 = __chkstk_darwin(v66);
  v657 = &v587 - v69;
  v70 = __chkstk_darwin(v68);
  v639 = &v587 - v71;
  v72 = __chkstk_darwin(v70);
  v648 = &v587 - v73;
  v74 = __chkstk_darwin(v72);
  v647 = &v587 - v75;
  v76 = __chkstk_darwin(v74);
  v78 = &v587 - v77;
  v79 = __chkstk_darwin(v76);
  v81 = &v587 - v80;
  v82 = __chkstk_darwin(v79);
  v635 = &v587 - v83;
  v84 = __chkstk_darwin(v82);
  v637 = &v587 - v85;
  v86 = __chkstk_darwin(v84);
  v88 = &v587 - v87;
  __chkstk_darwin(v86);
  v656 = (&v587 - v89);
  v643 = type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(0);
  v623 = *(v643 - 8);
  v90 = *(v623 + 64);
  __chkstk_darwin(v643);
  v666 = (&v587 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = sub_10007DF48();
  v93 = *(v92 - 8);
  v94 = *(v93 + 64);
  __chkstk_darwin(v92);
  v96 = &v587 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(v0 + 120);
  *v96 = v97;
  (*(v93 + 104))(v96, enum case for DispatchPredicate.onQueue(_:), v92);
  v98 = v97;
  v99 = sub_10007DF68();
  v101 = *(v93 + 8);
  v100 = (v93 + 8);
  v101(v96, v92);
  if ((v99 & 1) == 0)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    swift_once();
    goto LABEL_4;
  }

  v609 = v81;
  v102 = *(v0 + 32);
  v678 = *(v0 + 16);
  v679 = v102;
  v103 = *(v0 + 64);
  v680 = *(v0 + 48);
  v681 = v103;
  v104 = *(v0 + 96);
  v682 = *(v0 + 80);
  v683 = v104;
  v105 = *(v0 + 112);
  v684 = *(v0 + 112);
  v106 = v681;
  if (!v681)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v128 = sub_10007D5C8();
    sub_1000046BC(v128, qword_1000E4B28);
    v129 = sub_10007D5A8();
    v130 = sub_10007E2A8();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&_mh_execute_header, v129, v130, "GeneralMapsTimelineProvider: generateResolvableTimeline (failed: invalid state)", v131, 2u);
    }

    return;
  }

  v634 = v88;
  LODWORD(v598) = v105;
  v667 = v78;
  v615 = v0;
  v593 = *(&v678 + 1);
  v107 = v678;
  v591 = v679;
  v108 = *(&v679 + 1);
  v110 = *(&v680 + 1);
  v109 = v680;
  v111 = *(&v681 + 1);
  v112 = *(&v682 + 1);
  v113 = v682;
  v114 = *(&v683 + 1);
  v597 = v683;
  v1 = v666;
  *v666 = _swiftEmptyArrayStorage;
  *&v665 = *(v643 + 20);
  v660 = v114;

  v616 = v107;
  v608 = v107;
  v590 = v108;
  v589 = v108;
  v592 = v109;

  v654 = v110;

  v620 = v106;

  v603 = v111;
  v595 = v111;
  *&v596 = v113;
  *&v594 = v113;
  v629 = v112;
  v599 = v112;
  v115 = v665;
  sub_10007D3A8();
  v81 = v653;
  v96 = v653 + 16;
  v99 = *(v653 + 16);
  v116 = v1 + v115;
  v0 = v656;
  v100 = v670;
  (v99)(v656, v116, v670);
  if (qword_1000DE268 != -1)
  {
    goto LABEL_84;
  }

LABEL_4:
  v117 = sub_10007D5C8();
  v118 = sub_1000046BC(v117, qword_1000E4B28);
  v119 = v634;
  v662 = v96;
  v661 = v99;
  (v99)(v634, v0, v100);
  *&v665 = v118;
  v120 = sub_10007D5A8();
  v121 = sub_10007E288();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *&v673 = v123;
    *v122 = 136446210;
    sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
    v124 = sub_10007E588();
    v126 = v125;
    v81 = *(v81 + 8);
    (v81)(v119, v100);
    v127 = sub_100051190(v124, v126, &v673);
    v1 = v666;

    *(v122 + 4) = v127;
    _os_log_impl(&_mh_execute_header, v120, v121, "GeneralMapsTimelineProvider: generateResolvableTimeline, starting at %{public}s", v122, 0xCu);
    sub_1000250AC(v123);
  }

  else
  {

    v81 = *(v81 + 8);
    (v81)(v119, v100);
  }

  v132 = v660;
  v133 = v656;
  v134 = v646;
  v660 = v81;
  if (v629 && v132)
  {
    v135 = v599;

    v136 = [v135 waypoints];
    if (v136)
    {
      v137 = v136;
      sub_10002620C(0, &qword_1000E2510, GEOComposedWaypoint_ptr);
      v138 = sub_10007E1D8();

      if (v138 >> 62)
      {
        v139 = sub_10007E528();
      }

      else
      {
        v139 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v140 = [v135 nextWaypoint];
      v141 = [v140 name];

      v81 = v1;
      if (v139 < 3)
      {
        if (!v141)
        {
          v1 = v670;
          if (qword_1000DE280 != -1)
          {
            swift_once();
          }

          v142.super.isa = qword_1000E4B68;
          v586._countAndFlagsBits = 0x8000000100090FD0;
          v145._countAndFlagsBits = 0x74616E6974736544;
          v145._object = 0xEB000000006E6F69;
          v143._object = 0x8000000100090FB0;
          v143._countAndFlagsBits = 0xD00000000000001DLL;
          v144.value._countAndFlagsBits = 0;
          v144.value._object = 0;
          goto LABEL_39;
        }
      }

      else if (!v141)
      {
        v0 = "dance/Route Genius.";
        v100 = 0x8000000100091090;
        v1 = v670;
        if (qword_1000DE280 == -1)
        {
LABEL_20:
          v142.super.isa = qword_1000E4B68;
          v143._countAndFlagsBits = 0xD00000000000001BLL;
          v586._countAndFlagsBits = v100;
          v145._countAndFlagsBits = 0x6F7453207478654ELL;
          v143._object = (v0 | 0x8000000000000000);
          v144.value._countAndFlagsBits = 0;
          v144.value._object = 0;
          v145._object = 0xE900000000000070;
LABEL_39:
          v156 = sub_10007D258(v143, v144, v142, v145, v586);
          v158 = v160;
          v159 = v636;
          goto LABEL_40;
        }

LABEL_225:
        swift_once();
        goto LABEL_20;
      }

      v156 = sub_10007E158();
      v158 = v157;

      v159 = v636;
      v1 = v670;
LABEL_40:
      v161 = *(v159 + 36);
      v162 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
      v163 = v651;
      (*(*(v162 - 8) + 56))(&v651[v161], 1, 1, v162);
      *(v163 + 2) = v156;
      *(v163 + 3) = v158;
      *(v163 + 5) = v597;
      *(v163 + 6) = v132;
      v163[56] = v598 & 1;
      *v163 = sub_10002E01C();
      *(v163 + 1) = v164;
      *(v163 + 8) = [v135 transportType];
      v163[36] = 0;
      v165 = v637;
      v661(v637, v133, v1);
      v166 = sub_10007D5A8();
      v167 = v1;
      v168 = sub_10007E288();
      if (os_log_type_enabled(v166, v168))
      {
        v169 = v165;
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        *&v673 = v171;
        *v170 = 136446210;
        sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
        v172 = sub_10007E588();
        v174 = v173;
        (v660)(v169, v167);
        v175 = sub_100051190(v172, v174, &v673);
        v133 = v656;

        *(v170 + 4) = v175;
        _os_log_impl(&_mh_execute_header, v166, v168, "GeneralMapsTimelineProvider: generateResolvableTimeline added NavigationETA entry at %{public}s", v170, 0xCu);
        sub_1000250AC(v171);
        v81 = v666;
      }

      else
      {

        (v660)(v165, v1);
      }

      v176 = v167;
      v177 = v623;
      v178 = v642;
      v179 = type metadata accessor for NavigationETAEntryContentResolver(0);
      v675 = v179;
      v676 = &off_1000C96B0;
      v180 = sub_1000779DC(&v673);
      sub_1000797A8(v651, v180, type metadata accessor for NavigationETAEntryContent);
      *(v180 + *(v179 + 20)) = v135;
      v181 = *(v649 + 48);
      v661(v178, v133, v167);
      sub_100077A40(&v673, v178 + v181);
      v182 = v135;
      v183 = sub_100077348(0, 1, 1, _swiftEmptyArrayStorage);
      v185 = v183[2];
      v184 = v183[3];
      if (v185 >= v184 >> 1)
      {
        v183 = sub_100077348(v184 > 1, v185 + 1, 1, v183);
      }

      sub_1000256C0(&v678, &qword_1000DE950, &qword_100082918);

      (v660)(v133, v176);
      v183[2] = v185 + 1;
      sub_10002DB0C(v178, v183 + ((*(v650 + 80) + 32) & ~*(v650 + 80)) + *(v650 + 72) * v185, &unk_1000E24B8, qword_100085F70);
      *v81 = v183;
      v186 = v624;
      sub_100077E94(v81, v624, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
      (*(v177 + 56))(v186, 0, 1, v643);
      v187 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
      v188 = v615;
      swift_beginAccess();
      sub_10007796C(v186, v188 + v187);
      swift_endAccess();
      sub_100077A58(v651, type metadata accessor for NavigationETAEntryContent);
      return;
    }

LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  if (!v603 || !v596)
  {
LABEL_88:
    v661(v667, v133, v670);
    v256 = v654;
    if (v654)
    {
      v257 = (v654 & 0xFFFFFFFFFFFFFF8);
      if (v654 >> 62)
      {
LABEL_217:
        v258 = sub_10007E528();
        v256 = v654;
        if (v258)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v258 = *((v654 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v258)
        {
LABEL_91:
          v636 = v256 & 0xC000000000000001;

          swift_beginAccess();
          v645 = (v653 + 32);
          v627 = v653 + 56;
          v658 = (v653 + 48);
          v637 = (v653 + 8);
          v599 = "SuggestionsWidgetExpirationKey";
          v598 = 0x8000000100090F50;
          if (v616)
          {
            v260 = v593 == 0;
          }

          else
          {
            v260 = 0;
          }

          v261 = v260;
          LODWORD(v597) = v261;
          v603 = (v613 + 56);
          v595 = (v613 + 16);
          v609 = (v653 + 40);
          v588 = (v613 + 8);
          v262 = _swiftEmptyArrayStorage;
          *&v259 = 136380675;
          v587 = v259;
          *&v259 = 136381187;
          v596 = v259;
          *&v259 = 136446210;
          v594 = v259;
          v634 = v258;
          v635 = v257;
          v263 = 0;
          while (1)
          {
            if (v636)
            {
              v272 = sub_10007E468();
            }

            else
            {
              if (v263 >= *(v257 + 2))
              {
                goto LABEL_214;
              }

              v272 = *(v654 + 8 * v263 + 32);
            }

            v257 = v272;
            if (__OFADD__(v263, 1))
            {
              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              __break(1u);
              goto LABEL_217;
            }

            v663 = v263 + 1;
            v273 = [v272 MKMapItem];
            v664 = v263;
            if (v273)
            {
              v274 = v273;
              v275 = [v257 dateForKey:@"MapsSuggestionsWidgetExpirationKey"];
              v651 = v274;
              if (v275)
              {
                v276 = v647;
                v277 = v275;
                sub_10007D388();

                v278 = *v645;
                v279 = v655;
                v280 = v670;
                (*v645)(v655, v276, v670);
                v281 = *v627;
                (*v627)(v279, 0, 1, v280);
                v282 = v669;
                v278(v669, v279, v280);
                v283 = v282;
                v284 = v262;
                v285 = v280;
                (v281)(v283, 0, 1, v280);
                v133 = &qword_1000DE928;
              }

              else
              {
                v289 = *v627;
                v290 = v670;
                (*v627)(v655, 1, 1, v670);
                v291 = [v257 expires];
                if (v291)
                {
                  v292 = v619;
                  v293 = v291;
                  sub_10007D388();

                  v294 = v292;
                }

                else
                {
                  v294 = v619;
                }

                v284 = v262;
                v295 = v294;
                v289();
                v296 = v295;
                v283 = v669;
                v133 = &qword_1000DE928;
                sub_10002DB0C(v296, v669, &qword_1000DE928, &unk_100082900);
                v285 = v290;
                if ((*v658)(v655, 1, v290) != 1)
                {
                  sub_1000256C0(v655, &qword_1000DE928, &unk_100082900);
                }
              }

              v297 = v640;
              sub_100026310(v283, v640, &qword_1000DE928, &unk_100082900);
              v298 = v257;
              v299 = sub_10007D5A8();
              v300 = sub_10007E298();

              v301 = os_log_type_enabled(v299, v300);
              *&v668 = v298;
              if (v301)
              {
                v302 = swift_slowAlloc();
                v646 = swift_slowAlloc();
                *&v673 = v646;
                *v302 = v596;
                v303 = [v298 undecoratedTitle];
                v304 = v297;
                v305 = sub_10007E158();
                v306 = v284;
                v308 = v307;

                v309 = sub_100051190(v305, v308, &v673);
                v284 = v306;
                v133 = &qword_1000DE928;

                *(v302 + 4) = v309;
                *(v302 + 12) = 2082;
                sub_100026310(v304, v621, &qword_1000DE928, &unk_100082900);
                v310 = sub_10007E168();
                v312 = v311;
                sub_1000256C0(v304, &qword_1000DE928, &unk_100082900);
                v313 = sub_100051190(v310, v312, &v673);

                *(v302 + 14) = v313;
                *(v302 + 22) = 2082;
                sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
                v314 = sub_10007E588();
                v316 = sub_100051190(v314, v315, &v673);

                *(v302 + 24) = v316;
                _os_log_impl(&_mh_execute_header, v299, v300, "GeneralMapsTimelineProvider: generateResolvableTimeline suggestions entry (%{private}s) suggestionEnd: %{public}s lastEnd: %{public}s", v302, 0x20u);
                swift_arrayDestroy();
                v1 = v670;

                v317 = v641;
              }

              else
              {

                sub_1000256C0(v297, &qword_1000DE928, &unk_100082900);
                v317 = v641;
                v1 = v285;
              }

              sub_100026310(v669, v317, &qword_1000DE928, &unk_100082900);
              v646 = *v658;
              v318 = (v646)(v317, 1, v1);
              v319 = v639;
              v320 = v648;
              v262 = v284;
              if (v318 == 1)
              {
                sub_1000256C0(v317, &qword_1000DE928, &unk_100082900);
                v321 = v668;
                goto LABEL_122;
              }

              (*v645)(v648, v317, v1);
              sub_100077AB8(&qword_1000E2500, &type metadata accessor for Date);
              v322 = sub_10007E118();
              v321 = v668;
              if (v322)
              {
                (v660)(v320, v1);
LABEL_122:
                v323 = sub_10006C8AC(v321, v620);
                v324 = [v321 undecoratedTitle];
                v325 = sub_10007E158();
                v327 = v326;

                if (qword_1000DE280 != -1)
                {
                  swift_once();
                }

                v328.super.isa = qword_1000E4B68;
                v586._countAndFlagsBits = v598;
                v687._countAndFlagsBits = 0xD00000000000002BLL;
                v687._object = (v599 | 0x8000000000000000);
                v690.value._countAndFlagsBits = 0;
                v690.value._object = 0;
                v693._countAndFlagsBits = 45;
                v693._object = 0xE100000000000000;
                v330 = sub_10007D258(v687, v690, v328, v693, v586);
                v331 = v329;
                v642 = v323;
                v629 = v327;
                if (v323)
                {
                  v332 = v329;
                  v333 = v323;
                  v334 = sub_100040C54();
                  v336 = sub_10006445C(v334, v335, [v333 transportType]);
                  v331 = v337;

                  if (v331)
                  {

                    v330 = v336;
                    v1 = v670;
                  }

                  else
                  {
                    v1 = v670;
                    v331 = v332;
                  }
                }

                else
                {
                  v338 = [v668 undecoratedSubtitle];
                  if (v338)
                  {
                    v339 = v338;
                    v330 = sub_10007E158();
                    v331 = v340;
                  }
                }

                v360 = v668;
                v361 = [v668 type];
                v362 = *(v633 + 40);
                v363 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
                v133 = v659;
                (*(*(v363 - 8) + 56))(&v659[v362], 1, 1, v363);
                v364 = v629;
                *v133 = v325;
                *(v133 + 8) = v364;
                *(v133 + 16) = v330;
                *(v133 + 24) = v331;
                v629 = v331;
                *(v133 + 32) = v361;
                *(v133 + 40) = 0;
                *(v133 + 48) = 2;
                *(v133 + 56) = sub_10002E2C0();
                *(v133 + 64) = v365;
                v366 = v642;
                if (v642)
                {
                  LODWORD(v257) = [v642 transportType];
                  goto LABEL_138;
                }

                v257 = GEOTransportTypeFromUserPreference();
                if ([v360 containsKey:@"MapsSuggestionsTransportTypeKey"])
                {
                  v367 = [v360 integerForKey:@"MapsSuggestionsTransportTypeKey"];
                  if (v367 < 0xFFFFFFFF80000000)
                  {
                    goto LABEL_215;
                  }

                  v257 = v367;
                  v133 = v659;
                  if (v367 > 0x7FFFFFFF)
                  {
                    goto LABEL_216;
                  }
                }

                else
                {
LABEL_138:
                  v133 = v659;
                }

                *(v133 + 72) = v257;
                *(v133 + 76) = 0;
                if (v597)
                {
                  v661(v657, v667, v1);
                  v368 = v608;
                  sub_10007D3D8();
                  swift_beginAccess();
                  v605 = v368;
                  v369 = [v368 timestamp];
                  v370 = v647;
                  sub_10007D388();

                  sub_10007D2B8();
                  v372 = v371;
                  v373 = v370;
                  v374 = v1;
                  (v660)(v373, v1);
                  v1 = v666;
                  if (v372 < 300.0)
                  {
                    v628 = v262;
                    v375 = v625;
                    sub_1000797A8(v133, v625, type metadata accessor for SuggestedDestinationEntryContent);
                    *(v375 + 40) = 0;
                    *(v375 + 48) = 0;
                    v376 = sub_10007D5A8();
                    v377 = sub_10007E288();
                    if (os_log_type_enabled(v376, v377))
                    {
                      v378 = swift_slowAlloc();
                      v379 = swift_slowAlloc();
                      *&v673 = v379;
                      *v378 = v594;
                      sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
                      v380 = sub_10007E588();
                      v382 = v374;
                      v383 = sub_100051190(v380, v381, &v673);

                      *(v378 + 4) = v383;
                      _os_log_impl(&_mh_execute_header, v376, v377, "GeneralMapsTimelineProvider: generateResolvableTimeline added fresh-location SuggestedDestination entry at %{public}s", v378, 0xCu);
                      sub_1000250AC(v379);
                    }

                    else
                    {

                      v382 = v374;
                    }

                    v404 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
                    v675 = v404;
                    v676 = &off_1000C9480;
                    v405 = sub_1000779DC(&v673);
                    sub_1000797A8(v625, v405, type metadata accessor for SuggestedDestinationEntryContent);
                    v406 = v605;
                    v407 = v651;
                    v408 = [v668 styleAttributes];
                    v409 = v404[9];
                    v410 = v652;
                    (*v595)(v405 + v409, v644, v652);
                    (*v603)(v405 + v409, 0, 1, v410);
                    v411 = v617;
                    *(v405 + v404[5]) = v616;
                    *(v405 + v404[6]) = v407;
                    *(v405 + v404[7]) = v408;
                    v366 = v642;
                    *(v405 + v404[8]) = v642;
                    v412 = *(v649 + 48);
                    v661(v411, v657, v382);
                    sub_100077A40(&v673, v411 + v412);
                    v413 = v366;
                    v262 = v628;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v262 = sub_100077348(0, v262[2] + 1, 1, v262);
                    }

                    v1 = v666;
                    v415 = v262[2];
                    v414 = v262[3];
                    v360 = v668;
                    if (v415 >= v414 >> 1)
                    {
                      v262 = sub_100077348(v414 > 1, v415 + 1, 1, v262);
                    }

                    v262[2] = v415 + 1;
                    sub_10002DB0C(v617, v262 + ((*(v650 + 80) + 32) & ~*(v650 + 80)) + *(v650 + 72) * v415, &unk_1000E24B8, qword_100085F70);
                    *v1 = v262;
                    v416 = [v406 timestamp];
                    v417 = v614;
                    sub_10007D388();

                    v418 = v647;
                    sub_10007D2F8();
                    v374 = v670;
                    (v660)(v417, v670);
                    sub_100077A58(v625, type metadata accessor for SuggestedDestinationEntryContent);
                    v419 = v657;
                    swift_beginAccess();
                    (*v609)(v419, v418, v374);
                  }

                  v420 = v618;
                  sub_100026310(v669, v618, &qword_1000DE928, &unk_100082900);
                  if ((v646)(v420, 1, v374) == 1)
                  {
                    sub_1000256C0(v420, &qword_1000DE928, &unk_100082900);
                    goto LABEL_161;
                  }

                  v421 = v612;
                  (*v645)(v612, v420, v374);
                  sub_100077AB8(&qword_1000E2500, &type metadata accessor for Date);
                  v422 = sub_10007E118();
                  v423 = v421;
                  v424 = v660;
                  (v660)(v423, v374);
                  if (v422)
                  {
LABEL_161:
                    v628 = v262;
                    v425 = v638;
                    sub_1000797A8(v133, v638, type metadata accessor for SuggestedDestinationEntryContent);
                    *(v425 + 40) = 0;
                    *(v425 + 48) = 1;
                    v426 = sub_10007D5A8();
                    v427 = sub_10007E288();
                    if (os_log_type_enabled(v426, v427))
                    {
                      v428 = swift_slowAlloc();
                      v429 = swift_slowAlloc();
                      *&v673 = v429;
                      *v428 = v594;
                      sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
                      v430 = v657;
                      v431 = v670;
                      v432 = sub_10007E588();
                      v434 = sub_100051190(v432, v433, &v673);

                      *(v428 + 4) = v434;
                      _os_log_impl(&_mh_execute_header, v426, v427, "GeneralMapsTimelineProvider: generateResolvableTimeline added stale-location SuggestedDestination entry at %{public}s", v428, 0xCu);
                      sub_1000250AC(v429);
                      v360 = v668;
                    }

                    else
                    {

                      v431 = v670;
                      v430 = v657;
                    }

                    v435 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
                    v675 = v435;
                    v676 = &off_1000C9480;
                    v436 = sub_1000779DC(&v673);
                    sub_1000797A8(v638, v436, type metadata accessor for SuggestedDestinationEntryContent);
                    v437 = v605;
                    v438 = v651;
                    v439 = [v360 styleAttributes];
                    v440 = v435[9];
                    v441 = v652;
                    (*v595)(v436 + v440, v644, v652);
                    (*v603)(v436 + v440, 0, 1, v441);
                    *(v436 + v435[5]) = v616;
                    *(v436 + v435[6]) = v438;
                    *(v436 + v435[7]) = v439;
                    v442 = v642;
                    *(v436 + v435[8]) = v642;
                    v443 = *(v649 + 48);
                    v444 = v626;
                    v661(v626, v430, v431);
                    sub_100077A40(&v673, v444 + v443);
                    v445 = v442;
                    v262 = v628;
                    v401 = v431;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v262 = sub_100077348(0, v262[2] + 1, 1, v262);
                    }

                    v1 = v666;
                    v447 = v262[2];
                    v446 = v262[3];
                    if (v447 >= v446 >> 1)
                    {
                      v262 = sub_100077348(v446 > 1, v447 + 1, 1, v262);
                    }

                    sub_100077A58(v638, type metadata accessor for SuggestedDestinationEntryContent);
                    (*v588)(v644, v652);
                    v262[2] = v447 + 1;
                    sub_10002DB0C(v626, v262 + ((*(v650 + 80) + 32) & ~*(v650 + 80)) + *(v650 + 72) * v447, &unk_1000E24B8, qword_100085F70);
                    (v660)(v657, v401);
                    *v1 = v262;
                    v133 = v659;
                    v402 = v669;
                    goto LABEL_169;
                  }

                  (*v588)(v644, v652);

                  v401 = v670;
                  (v424)(v657, v670);
                }

                else
                {
                  v384 = sub_10007D5A8();
                  v385 = sub_10007E288();
                  if (os_log_type_enabled(v384, v385))
                  {
                    v386 = swift_slowAlloc();
                    v387 = swift_slowAlloc();
                    *&v673 = v387;
                    *v386 = v594;
                    sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
                    v388 = sub_10007E588();
                    v390 = v262;
                    v391 = sub_100051190(v388, v389, &v673);

                    *(v386 + 4) = v391;
                    v262 = v390;
                    v1 = v670;
                    _os_log_impl(&_mh_execute_header, v384, v385, "GeneralMapsTimelineProvider: generateResolvableTimeline added no-location SuggestedDestination entry at %{public}s", v386, 0xCu);
                    sub_1000250AC(v387);
                    v360 = v668;
                  }

                  v392 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
                  v675 = v392;
                  v676 = &off_1000C9480;
                  v393 = sub_1000779DC(&v673);
                  sub_1000797A8(v133, v393, type metadata accessor for SuggestedDestinationEntryContent);
                  v394 = v651;
                  v395 = [v360 styleAttributes];
                  (*v603)(v393 + v392[9], 1, 1, v652);
                  *(v393 + v392[5]) = 0;
                  *(v393 + v392[6]) = v394;
                  *(v393 + v392[7]) = v395;
                  *(v393 + v392[8]) = v366;
                  v396 = *(v649 + 48);
                  v397 = v631;
                  v661(v631, v667, v1);
                  sub_100077A40(&v673, v397 + v396);
                  v398 = v366;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v262 = sub_100077348(0, v262[2] + 1, 1, v262);
                  }

                  v400 = v262[2];
                  v399 = v262[3];
                  v401 = v1;
                  if (v400 >= v399 >> 1)
                  {
                    v262 = sub_100077348(v399 > 1, v400 + 1, 1, v262);
                  }

                  v262[2] = v400 + 1;
                  sub_10002DB0C(v631, v262 + ((*(v650 + 80) + 32) & ~*(v650 + 80)) + *(v650 + 72) * v400, &unk_1000E24B8, qword_100085F70);
                  v1 = v666;
                  *v666 = v262;
                }

                v402 = v669;
LABEL_169:
                v448 = v632;
                sub_10002DB0C(v402, v632, &qword_1000DE928, &unk_100082900);
                if ((v646)(v448, 1, v401) == 1)
                {
                  v482 = v660;
                  (v660)(v656, v401);
                  sub_1000256C0(&v678, &qword_1000DE950, &qword_100082918);

                  sub_1000256C0(v448, &qword_1000DE928, &unk_100082900);
                  v483 = v624;
                  sub_100077E94(v1, v624, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
                  (*(v623 + 56))(v483, 0, 1, v643);
                  v484 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
                  v485 = v615;
                  swift_beginAccess();
                  sub_10007796C(v483, v485 + v484);
                  swift_endAccess();
                  sub_100077A58(v133, type metadata accessor for SuggestedDestinationEntryContent);
                  (v482)(v667, v401);
                  return;
                }

                v449 = v630;
                (*v645)(v630, v448, v401);
                (*v609)(v667, v449, v401);
                sub_100077A58(v133, type metadata accessor for SuggestedDestinationEntryContent);
                goto LABEL_99;
              }

              v661(v319, v320, v1);
              v341 = v321;
              v342 = sub_10007D5A8();
              v343 = v1;
              v344 = sub_10007E288();

              if (os_log_type_enabled(v342, v344))
              {
                v345 = swift_slowAlloc();
                *&v668 = swift_slowAlloc();
                *&v673 = v668;
                *v345 = v596;
                v346 = [v341 undecoratedTitle];
                LODWORD(v646) = v344;
                v347 = v346;
                v348 = v319;
                v349 = sub_10007E158();
                v628 = v284;
                v351 = v350;

                v352 = sub_100051190(v349, v351, &v673);

                *(v345 + 4) = v352;
                v133 = 2082;
                *(v345 + 12) = 2082;
                sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
                v353 = sub_10007E588();
                v355 = v354;
                (v660)(v348, v343);
                v356 = sub_100051190(v353, v355, &v673);

                *(v345 + 14) = v356;
                *(v345 + 22) = 2082;
                v357 = sub_10007E588();
                v359 = sub_100051190(v357, v358, &v673);

                *(v345 + 24) = v359;
                _os_log_impl(&_mh_execute_header, v342, v646, "GeneralMapsTimelineProvider: generateResolvableTimeline skipping suggestions entry (%{private}s) ending at %{public}s because timeline already populated up to %{public}s", v345, 0x20u);
                swift_arrayDestroy();

                (v660)(v648, v343);
                sub_1000256C0(v669, &qword_1000DE928, &unk_100082900);
                v262 = v628;
                v1 = v666;
              }

              else
              {

                v403 = v660;
                (v660)(v319, v1);
                (v403)(v648, v1);
                sub_1000256C0(v669, &qword_1000DE928, &unk_100082900);
                v1 = v666;
                v262 = v284;
              }
            }

            else
            {
              v286 = v257;
              v287 = sub_10007D5A8();
              v288 = sub_10007E288();

              if (os_log_type_enabled(v287, v288))
              {
                v264 = swift_slowAlloc();
                v265 = swift_slowAlloc();
                *&v673 = v265;
                *v264 = v587;
                v133 = v262;
                v266 = [v286 undecoratedTitle];
                v267 = sub_10007E158();
                v269 = v268;

                v270 = v267;
                v1 = v666;
                v271 = sub_100051190(v270, v269, &v673);

                *(v264 + 4) = v271;
                v262 = v133;
                _os_log_impl(&_mh_execute_header, v287, v288, "GeneralMapsTimelineProvider: generateResolvableTimeline skipping suggestions entry (%{private}s) because no map item was available", v264, 0xCu);
                sub_1000250AC(v265);
              }

              else
              {
              }
            }

LABEL_99:
            v263 = (v664 + 1);
            v257 = v635;
            if (v663 == v634)
            {

              v133 = v656;
              if (v262[2])
              {
                goto LABEL_219;
              }

LABEL_173:
              if ((v591 - 1) > 3)
              {
                v669 = 0;
              }

              else
              {
                v669 = qword_100086050[v591 - 1];
              }

              v450 = v611;
              v628 = v262;
              if (v616)
              {
                *v611 = 0;
                *(v450 + 8) = 2;
                v451 = *(v607 + 20);
                v452 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
                (*(*(v452 - 8) + 56))(v450 + v451, 1, 1, v452);
                v453 = v608;
                sub_10007D3D8();
                [v453 coordinate];
                MKMapRectMakeWithRadialDistance();
                v455 = v454;
                v457 = v456;
                v459 = v458;
                v461 = v460;
                swift_beginAccess();
                v462 = [v453 timestamp];
                v463 = v647;
                sub_10007D388();

                sub_10007D2B8();
                v465 = v464;
                v466 = v653 + 8;
                v467 = v670;
                (v660)(v463, v670);
                *&v668 = v466;
                v664 = v453;
                if (v465 < 300.0)
                {
                  v468 = v606;
                  sub_1000797A8(v450, v606, type metadata accessor for NearbyEntryContent);
                  v469 = v593;
                  *v468 = v593;
                  *(v468 + 8) = 0;
                  v470 = v453;
                  v471 = sub_10007D5A8();
                  v472 = sub_10007E288();

                  if (os_log_type_enabled(v471, v472))
                  {
                    v473 = swift_slowAlloc();
                    v663 = swift_slowAlloc();
                    v672[0] = v663;
                    *v473 = 136380931;
                    *&v673 = v470;
                    *(&v673 + 1) = v469;
                    v474 = v470;
                    v475 = sub_10007E178();
                    v477 = sub_100051190(v475, v476, v672);

                    *(v473 + 4) = v477;
                    *(v473 + 12) = 2082;
                    sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
                    v478 = v670;
                    v479 = sub_10007E588();
                    v481 = sub_100051190(v479, v480, v672);

                    *(v473 + 14) = v481;
                    v133 = v656;
                    _os_log_impl(&_mh_execute_header, v471, v472, "GeneralMapsTimelineProvider: generateResolvableTimeline added Nearby entry (with fresh location: %{private}s) at %{public}s", v473, 0x16u);
                    swift_arrayDestroy();
                  }

                  else
                  {

                    v478 = v670;
                  }

                  v518 = v470;
                  v519 = type metadata accessor for NearbyEntryContentResolver(0);
                  v675 = v519;
                  v676 = &off_1000C9A50;
                  v520 = sub_1000779DC(&v673);
                  sub_1000797A8(v606, v520, type metadata accessor for NearbyEntryContent);
                  v521 = v519[9];
                  v522 = v613;
                  v523 = v652;
                  (*(v613 + 16))(v520 + v521, v610, v652);
                  (*(v522 + 56))(v520 + v521, 0, 1, v523);
                  *(v520 + v519[5]) = v616;
                  *(v520 + v519[6]) = v669;
                  v524 = (v520 + v519[7]);
                  *v524 = v455;
                  v524[1] = v457;
                  v524[2] = v459;
                  v524[3] = v461;
                  *(v520 + v519[8]) = v592;
                  v525 = *(v649 + 48);
                  v526 = v601;
                  v661(v601, v667, v478);
                  sub_100077A40(&v673, v526 + v525);
                  v527 = v518;

                  v467 = v478;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v628 = sub_100077348(0, v628[2] + 1, 1, v628);
                  }

                  v529 = v628[2];
                  v528 = v628[3];
                  if (v529 >= v528 >> 1)
                  {
                    v628 = sub_100077348(v528 > 1, v529 + 1, 1, v628);
                  }

                  v530 = v628;
                  v628[2] = v529 + 1;
                  sub_10002DB0C(v526, v530 + ((*(v650 + 80) + 32) & ~*(v650 + 80)) + *(v650 + 72) * v529, &unk_1000E24B8, qword_100085F70);
                  v531 = [v527 timestamp];
                  v532 = v614;
                  sub_10007D388();

                  v533 = v647;
                  sub_10007D2F8();
                  (v660)(v532, v478);
                  sub_100077A58(v606, type metadata accessor for NearbyEntryContent);
                  v534 = v667;
                  swift_beginAccess();
                  (*(v653 + 40))(v534, v533, v478);
                }

                v535 = v611;
                v536 = v593;
                *v611 = v593;
                *(v535 + 8) = 1;
                v537 = v664;
                v538 = sub_10007D5A8();
                v539 = sub_10007E288();

                v540 = os_log_type_enabled(v538, v539);
                v664 = v537;
                if (v540)
                {
                  v541 = swift_slowAlloc();
                  v671 = swift_slowAlloc();
                  *v541 = 136380931;
                  *&v673 = v537;
                  *(&v673 + 1) = v536;
                  v542 = v537;
                  v543 = sub_10007E178();
                  v545 = sub_100051190(v543, v544, &v671);

                  *(v541 + 4) = v545;
                  *(v541 + 12) = 2082;
                  sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
                  v546 = sub_10007E588();
                  v548 = sub_100051190(v546, v547, &v671);

                  *(v541 + 14) = v548;
                  _os_log_impl(&_mh_execute_header, v538, v539, "GeneralMapsTimelineProvider: generateResolvableTimeline added Nearby entry (with stale location: %{private}s) at %{public}s", v541, 0x16u);
                  swift_arrayDestroy();
                  v549 = v670;
                }

                else
                {

                  v549 = v467;
                }

                v550 = type metadata accessor for NearbyEntryContentResolver(0);
                v675 = v550;
                v676 = &off_1000C9A50;
                v551 = sub_1000779DC(&v673);
                sub_1000797A8(v611, v551, type metadata accessor for NearbyEntryContent);
                v552 = v550[9];
                v553 = v613;
                v554 = v652;
                (*(v613 + 16))(v551 + v552, v610, v652);
                (*(v553 + 56))(v551 + v552, 0, 1, v554);
                *(v551 + v550[5]) = v616;
                *(v551 + v550[6]) = v669;
                v555 = (v551 + v550[7]);
                *v555 = v455;
                v555[1] = v457;
                v555[2] = v459;
                v555[3] = v461;
                *(v551 + v550[8]) = v592;
                v556 = *(v649 + 48);
                v557 = v604;
                v661(v604, v667, v549);
                sub_100077A40(&v673, v557 + v556);
                v558 = v664;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v628 = sub_100077348(0, v628[2] + 1, 1, v628);
                }

                v560 = v628[2];
                v559 = v628[3];
                if (v560 >= v559 >> 1)
                {
                  v628 = sub_100077348(v559 > 1, v560 + 1, 1, v628);
                }

                sub_1000256C0(&v678, &qword_1000DE950, &qword_100082918);

                (*(v613 + 8))(v610, v652);
                sub_100077A58(v611, type metadata accessor for NearbyEntryContent);
                v516 = v660;
                (v660)(v133, v549);
                v561 = v628;
                v628[2] = v560 + 1;
                sub_10002DB0C(v557, v561 + ((*(v650 + 80) + 32) & ~*(v650 + 80)) + *(v650 + 72) * v560, &unk_1000E24B8, qword_100085F70);
                v498 = v549;
                v1 = v666;
                *v666 = v561;
              }

              else if (v590)
              {
                v486 = v589;
                sub_100040B7C();
                v488 = v487;
                v490 = v489;
                v492 = v491;
                v494 = v493;
                v495 = sub_10007D5A8();
                v496 = sub_10007E288();
                v497 = os_log_type_enabled(v495, v496);
                v498 = v670;
                if (v497)
                {
                  v499 = swift_slowAlloc();
                  v677[0] = swift_slowAlloc();
                  *v499 = 136380931;
                  *&v673 = v488;
                  *(&v673 + 1) = v490;
                  v674 = v492;
                  v675 = v494;
                  type metadata accessor for MKMapRect(0);
                  v500 = sub_10007E178();
                  v502 = sub_100051190(v500, v501, v677);

                  *(v499 + 4) = v502;
                  *(v499 + 12) = 2082;
                  swift_beginAccess();
                  sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
                  v503 = sub_10007E588();
                  v505 = sub_100051190(v503, v504, v677);

                  *(v499 + 14) = v505;
                  _os_log_impl(&_mh_execute_header, v495, v496, "GeneralMapsTimelineProvider: generateResolvableTimeline added Nearby entry (with map rect: %{private}s) at %{public}s", v499, 0x16u);
                  swift_arrayDestroy();
                  v498 = v670;
                }

                v506 = v667;
                swift_beginAccess();
                v507 = type metadata accessor for NearbyEntryContentResolver(0);
                v675 = v507;
                v676 = &off_1000C9A50;
                v508 = sub_1000779DC(&v673);
                *v508 = 0;
                *(v508 + 8) = 2;
                v509 = *(v607 + 20);
                v510 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
                (*(*(v510 - 8) + 56))(v508 + v509, 1, 1, v510);
                (*(v613 + 56))(v508 + v507[9], 1, 1, v652);
                *(v508 + v507[5]) = 0;
                *(v508 + v507[6]) = v669;
                v511 = (v508 + v507[7]);
                *v511 = v488;
                v511[1] = v490;
                v511[2] = v492;
                v511[3] = v494;
                *(v508 + v507[8]) = v592;
                v512 = *(v649 + 48);
                v513 = v602;
                v661(v602, v506, v498);
                sub_100077A40(&v673, v513 + v512);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v628 = sub_100077348(0, v628[2] + 1, 1, v628);
                }

                v515 = v628[2];
                v514 = v628[3];
                if (v515 >= v514 >> 1)
                {
                  v628 = sub_100077348(v514 > 1, v515 + 1, 1, v628);
                }

                sub_1000256C0(&v678, &qword_1000DE950, &qword_100082918);
                v516 = v660;
                (v660)(v133, v498);
                v517 = v628;
                v628[2] = v515 + 1;
                sub_10002DB0C(v602, v517 + ((*(v650 + 80) + 32) & ~*(v650 + 80)) + *(v650 + 72) * v515, &unk_1000E24B8, qword_100085F70);
                v1 = v666;
                *v666 = v517;
              }

              else
              {
                v562 = sub_10007D5A8();
                v563 = sub_10007E288();
                if (os_log_type_enabled(v562, v563))
                {
                  v564 = swift_slowAlloc();
                  v565 = swift_slowAlloc();
                  *&v673 = v565;
                  *v564 = 136446210;
                  swift_beginAccess();
                  sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
                  v566 = sub_10007E588();
                  v568 = sub_100051190(v566, v567, &v673);

                  *(v564 + 4) = v568;
                  _os_log_impl(&_mh_execute_header, v562, v563, "GeneralMapsTimelineProvider: generateResolvableTimeline added Nearby entry (with fallback region) at %{public}s", v564, 0xCu);
                  sub_1000250AC(v565);
                }

                v569 = v607;
                v570 = v600;
                swift_beginAccess();
                v571 = type metadata accessor for NearbyEntryContentResolver(0);
                v675 = v571;
                v676 = &off_1000C9A50;
                v572 = sub_1000779DC(&v673);
                *v572 = 0;
                *(v572 + 8) = 2;
                v573 = *(v569 + 20);
                v574 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
                (*(*(v574 - 8) + 56))(v572 + v573, 1, 1, v574);
                if (qword_1000DE260 != -1)
                {
                  swift_once();
                }

                v575 = v571[9];
                v576 = *(v613 + 56);
                v668 = xmmword_1000E4B08;
                v665 = *&qword_1000E4B18;
                v576(v572 + v575, 1, 1, v652);
                *(v572 + v571[5]) = 0;
                *(v572 + v571[6]) = v669;
                v577 = (v572 + v571[7]);
                v578 = v665;
                *v577 = v668;
                v577[1] = v578;
                *(v572 + v571[8]) = 0;
                v579 = *(v649 + 48);
                v498 = v670;
                v661(v570, v667, v670);
                sub_100077A40(&v673, v570 + v579);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v628 = sub_100077348(0, v628[2] + 1, 1, v628);
                }

                v581 = v628[2];
                v580 = v628[3];
                if (v581 >= v580 >> 1)
                {
                  v628 = sub_100077348(v580 > 1, v581 + 1, 1, v628);
                }

                sub_1000256C0(&v678, &qword_1000DE950, &qword_100082918);
                v516 = v660;
                (v660)(v133, v498);
                v582 = v628;
                v628[2] = v581 + 1;
                sub_10002DB0C(v570, v582 + ((*(v650 + 80) + 32) & ~*(v650 + 80)) + *(v650 + 72) * v581, &unk_1000E24B8, qword_100085F70);
                v1 = v666;
                *v666 = v582;
              }

              goto LABEL_220;
            }
          }
        }
      }
    }

    v262 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_173;
    }

LABEL_219:
    v516 = v660;
    v498 = v670;
    (v660)(v133, v670);
    sub_1000256C0(&v678, &qword_1000DE950, &qword_100082918);
LABEL_220:
    v583 = v624;
    sub_100077E94(v1, v624, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
    (*(v623 + 56))(v583, 0, 1, v643);
    v584 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
    v585 = v615;
    swift_beginAccess();
    sub_10007796C(v583, v585 + v584);
    swift_endAccess();
    (v516)(v667, v498);
    return;
  }

  v651 = v595;
  v642 = v594;
  v100 = [v642 routes];
  v132 = sub_10002620C(0, &qword_1000DE968, GEOComposedRoute_ptr);
  v146 = sub_10007E1D8();

  if (!(v146 >> 62))
  {
    if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    goto LABEL_87;
  }

  if (!sub_10007E528())
  {
LABEL_87:

    goto LABEL_88;
  }

LABEL_25:
  v637 = v132;
  if ((v146 & 0xC000000000000001) != 0)
  {
    v132 = sub_10007E468();
    v99 = v662;
    v133 = v661;
  }

  else
  {
    v99 = v662;
    v133 = v661;
    if (!*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_223:
      v135 = sub_10007E528();
      goto LABEL_52;
    }

    v132 = *(v146 + 32);
  }

  v147 = [v642 fetchDate];
  sub_10007D388();

  v148 = [v132 destination];
  if (!v148)
  {
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v149 = v148;
  v150 = [v148 geoMapItem];

  v100 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v150 isPlaceHolderPlace:0];
  swift_unknownObjectRelease();
  if (!v100)
  {
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    return;
  }

  v151 = [v651 preferredName];
  if (v151)
  {
    v152 = v151;
    [v100 setName:v151];
  }

  v153 = [v100 name];
  if (v153)
  {
    v154 = v153;
    v654 = sub_10007E158();
    v652 = v155;
  }

  else
  {
    if (qword_1000DE280 != -1)
    {
      swift_once();
    }

    v189.super.isa = qword_1000E4B68;
    v586._countAndFlagsBits = 0x8000000100090FD0;
    v691._countAndFlagsBits = 0x74616E6974736544;
    v691._object = 0xEB000000006E6F69;
    v685._object = 0x8000000100090FB0;
    v685._countAndFlagsBits = 0xD00000000000001DLL;
    v688.value._countAndFlagsBits = 0;
    v688.value._object = 0;
    v654 = sub_10007D258(v685, v688, v189, v691, v586);
    v652 = v190;
  }

  v191 = [v132 mutableData];
  if (!v191)
  {
    goto LABEL_230;
  }

  v192 = v191;
  v193 = [v191 routeOverviewDescriptionStrings];

  sub_10002620C(0, &qword_1000E2508, GEOComposedString_ptr);
  v81 = sub_10007E1D8();

  if (v81 >> 62)
  {
    goto LABEL_223;
  }

  v135 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_52:
  v655 = v132;
  v648 = v100;
  if (v135)
  {
    *&v673 = _swiftEmptyArrayStorage;
    v0 = &v673;
    sub_100077E74(0, v135 & ~(v135 >> 63), 0);
    v667 = v135;
    if (v135 < 0)
    {
      __break(1u);
      goto LABEL_225;
    }

    v1 = v673;
    v659 = objc_opt_self();
    v96 = 0;
    v669 = v81 & 0xC000000000000001;
    v657 = (v81 & 0xFFFFFFFFFFFFFF8);
    v194 = v605 + 32;
    while (1)
    {
      v195 = (v96 + 1);
      if (__OFADD__(v96, 1))
      {
        __break(1u);
        goto LABEL_82;
      }

      if (v669)
      {
        v196 = sub_10007E468();
      }

      else
      {
        if (v96 >= *(v657 + 2))
        {
          goto LABEL_83;
        }

        v196 = *(v81 + 8 * v96 + 32);
      }

      v0 = v196;
      v100 = v81;
      if (![v659 _mapkit_attributedStringForComposedString:v196 defaultAttributes:0])
      {
        break;
      }

      v197 = v664;
      sub_10007D248();
      sub_10007D3D8();

      (*v194)(v134 + *(v663 + 20), v197, v668);
      *&v673 = v1;
      v99 = v1[2];
      v198 = v1[3];
      if (v99 >= v198 >> 1)
      {
        v0 = &v673;
        sub_100077E74(v198 > 1, v99 + 1, 1);
        v1 = v673;
      }

      v1[2] = v99 + 1;
      sub_100077E94(v134, v1 + ((*(v658 + 80) + 32) & ~*(v658 + 80)) + v658[9] * v99, type metadata accessor for CommuteWindowDetailsString);
      ++v96;
      if (v195 == v667)
      {

        v199 = v661;
        v132 = v655;
        goto LABEL_66;
      }
    }

    __break(1u);
    goto LABEL_227;
  }

  v199 = v133;

  v1 = _swiftEmptyArrayStorage;
LABEL_66:
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v200.super.isa = qword_1000E4B68;
  v686._countAndFlagsBits = 0xD000000000000013;
  v586._countAndFlagsBits = 0x8000000100091030;
  v692._countAndFlagsBits = 0x415445204025;
  v686._object = 0x8000000100091010;
  v689.value._countAndFlagsBits = 0;
  v689.value._object = 0;
  v692._object = 0xE600000000000000;
  sub_10007D258(v686, v689, v200, v692, v586);
  v201 = [v132 guidanceETA];
  v202 = [v201 etaDateString];

  if (!v202)
  {
    goto LABEL_231;
  }

  v203 = sub_10007E158();
  v205 = v204;

  v206 = sub_100040C54();
  v208 = v207;
  v209 = v627;
  v210 = v645;
  v199(&v645[*(v627 + 36)], v635, v670);
  v211 = *(v209 + 40);
  v212 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  (*(*(v212 - 8) + 56))(&v210[v211], 1, 1, v212);
  v213 = v652;
  *(v210 + 2) = v654;
  *(v210 + 3) = v213;
  *(v210 + 4) = v1;
  *(v210 + 5) = v203;
  *(v210 + 6) = v205;
  *(v210 + 7) = v206;
  *(v210 + 8) = v208;
  v214 = [v651 styleAttributes];
  v215 = objc_opt_self();
  v216 = [v215 mainScreen];
  [v216 scale];
  v218 = v217;

  if (!v214 || (v219 = [objc_opt_self() imageForStyle:v214 size:3 forScale:0 format:0 nightMode:v218]) == 0)
  {
    v220 = objc_opt_self();
    v221 = [objc_opt_self() markerStyleAttributes];
    v219 = [v220 imageForStyle:v221 size:3 forScale:0 format:0 nightMode:v218];
  }

  v222 = [v215 mainScreen];
  [v222 scale];
  v224 = v223;

  if (!v214 || (v225 = [objc_opt_self() imageForStyle:v214 size:3 forScale:0 format:1 nightMode:v224]) == 0)
  {
    v226 = objc_opt_self();
    v227 = [objc_opt_self() markerStyleAttributes];
    v225 = [v226 imageForStyle:v227 size:3 forScale:0 format:1 nightMode:v224];
  }

  v228 = v645;
  *v645 = v219;
  *(v228 + 1) = v225;
  v229 = v609;
  v230 = v670;
  v661(v609, v656, v670);
  v231 = sub_10007D5A8();
  v232 = sub_10007E288();
  if (os_log_type_enabled(v231, v232))
  {
    v233 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    *&v673 = v234;
    *v233 = 136446210;
    sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date);
    v235 = sub_10007E588();
    v237 = v236;
    v238 = v660;
    (v660)(v229, v230);
    v239 = sub_100051190(v235, v237, &v673);

    *(v233 + 4) = v239;
    _os_log_impl(&_mh_execute_header, v231, v232, "GeneralMapsTimelineProvider: generateResolvableTimeline added CommuteWindow entry at %{public}s", v233, 0xCu);
    sub_1000250AC(v234);
  }

  else
  {

    v238 = v660;
    (v660)(v229, v230);
  }

  v240 = type metadata accessor for CommuteWindowEntryContentResolver(0);
  v675 = v240;
  v676 = &off_1000C9228;
  v241 = sub_1000779DC(&v673);
  sub_1000797A8(v645, v241, type metadata accessor for CommuteWindowEntryContent);
  v242 = v648;
  v243 = [v651 styleAttributes];
  v244 = [v642 routes];
  v245 = sub_10007E1D8();

  *(v241 + v240[5]) = v242;
  *(v241 + v240[6]) = v243;
  *(v241 + v240[7]) = v245;
  v246 = *(v649 + 48);
  v247 = v628;
  v661(v628, v656, v230);
  sub_100077A40(&v673, v247 + v246);
  v248 = sub_100077348(0, 1, 1, _swiftEmptyArrayStorage);
  v250 = v248[2];
  v249 = v248[3];
  if (v250 >= v249 >> 1)
  {
    v248 = sub_100077348(v249 > 1, v250 + 1, 1, v248);
  }

  v251 = v623;
  v252 = v666;

  sub_1000256C0(&v678, &qword_1000DE950, &qword_100082918);
  (v238)(v635, v230);
  (v238)(v656, v230);
  v248[2] = v250 + 1;
  sub_10002DB0C(v247, v248 + ((*(v650 + 80) + 32) & ~*(v650 + 80)) + *(v650 + 72) * v250, &unk_1000E24B8, qword_100085F70);
  *v252 = v248;
  v253 = v624;
  sub_100077E94(v252, v624, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
  (*(v251 + 56))(v253, 0, 1, v643);
  v254 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
  v255 = v615;
  swift_beginAccess();
  sub_10007796C(v253, v255 + v254);
  swift_endAccess();
  sub_100077A58(v645, type metadata accessor for CommuteWindowEntryContent);
}

void sub_1000725C8()
{
  v1 = v0;
  v2 = sub_10007DFF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007DF48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v11 = sub_10007E328();
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = sub_10007DF68();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  type metadata accessor for MapSnapshotter();
  sub_10007E0B8();
  sub_10003E4A0(v6);
  (*(v3 + 8))(v6, v2);
  v13 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount);
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount) = v15;
  if (v15)
  {
    return;
  }

  if (qword_1000DE268 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v16 = sub_10007D5C8();
  sub_1000046BC(v16, qword_1000E4B28);
  v17 = sub_10007D5A8();
  v18 = sub_10007E288();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "GeneralMapsTimelineProvider: all widget request completions called; purging icon manager", v19, 2u);
  }

  v20 = [objc_opt_self() iconManager];
  if (v20)
  {
    v21 = v20;
    [v20 purge];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000728C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v29 = a2;
  v34 = sub_10007DEB8();
  v37 = *(v34 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007DED8();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007E0C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v30 = sub_10007E328();
  sub_1000797A8(v28, v17, type metadata accessor for GeneralMapsTimelineEntry);
  (*(v12 + 16))(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v12 + 80) + v19 + 8) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v29;
  *(v21 + 24) = a3;
  sub_100077E94(v17, v21 + v18, type metadata accessor for GeneralMapsTimelineEntry);
  *(v21 + v19) = v32;
  (*(v12 + 32))(v21 + v20, &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_100079CA8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C9A10;
  v22 = _Block_copy(aBlock);

  v23 = v31;
  sub_10007DEC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
  v25 = v33;
  v24 = v34;
  sub_10007E3F8();
  v26 = v30;
  sub_10007E338();
  _Block_release(v22);

  (*(v37 + 8))(v25, v24);
  return (*(v35 + 8))(v23, v36);
}

uint64_t sub_100072D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v34 = a3;
  v31 = a1;
  v38 = sub_10007DEB8();
  v41 = *(v38 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007DED8();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007E0C8();
  v30 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100015240(&qword_1000E2528, &qword_100086008);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v32 = sub_10007E328();
  (*(v15 + 16))(v18, a4, v14);
  (*(v11 + 16))(v13, v31, v10);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v11 + 80) + v20 + 8) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v34;
  *(v22 + 16) = v33;
  *(v22 + 24) = v23;
  (*(v15 + 32))(v22 + v19, v18, v14);
  *(v22 + v20) = v36;
  (*(v11 + 32))(v22 + v21, v13, v30);
  aBlock[4] = sub_100079810;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C9920;
  v24 = _Block_copy(aBlock);

  v25 = v35;
  sub_10007DEC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
  v27 = v37;
  v26 = v38;
  sub_10007E3F8();
  v28 = v32;
  sub_10007E338();
  _Block_release(v24);

  (*(v41 + 8))(v27, v26);
  return (*(v39 + 8))(v25, v40);
}

uint64_t sub_100073248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v78 = a1;
  v7 = sub_10007DFF8();
  v8 = *(v7 - 8);
  v65 = v7;
  v66 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10007E0C8();
  v74 = *(v80 - 8);
  v12 = *(v74 + 64);
  v13 = __chkstk_darwin(v80);
  v79 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v14;
  __chkstk_darwin(v13);
  v16 = &v64 - v15;
  v17 = sub_10007D3B8();
  v18 = *(v17 - 8);
  v71 = v17;
  v72 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v76 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v75 = &v64 - v22;
  v23 = __chkstk_darwin(v21);
  v77 = &v64 - v24;
  __chkstk_darwin(v23);
  v81 = &v64 - v25;
  v26 = sub_10007DF48();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = (&v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v30 = sub_10007E328();
  (*(v27 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v31 = sub_10007DF68();
  (*(v27 + 8))(v30, v26);
  if (v31)
  {
    v32 = *(v4 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (!v33)
    {
      v69 = a3;
      *(v4 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount) = v34;
      sub_10007D3A8();
      if (qword_1000DE268 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  swift_once();
LABEL_4:
  v68 = a2;
  v70 = v4;
  v35 = sub_10007D5C8();
  sub_1000046BC(v35, qword_1000E4B28);
  v36 = v74;
  v37 = v80;
  v67 = *(v74 + 16);
  v67(v16, v78, v80);
  v38 = sub_10007D5A8();
  v39 = sub_10007E288();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v82 = v64;
    *v40 = 136446210;
    sub_10007E0B8();
    sub_100077AB8(&qword_1000DFCE8, &type metadata accessor for WidgetFamily);
    v41 = v65;
    v42 = sub_10007E588();
    v43 = v16;
    v45 = v44;
    (*(v66 + 8))(v11, v41);
    (*(v74 + 8))(v43, v80);
    v46 = sub_100051190(v42, v45, &v82);

    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "GeneralMapsTimelineProvider: 'snapshot' requested (of size %{public}s)", v40, 0xCu);
    sub_1000250AC(v64);
    v36 = v74;

    v37 = v80;
  }

  else
  {

    (*(v36 + 8))(v16, v37);
  }

  sub_10007DFD8();
  v47 = v77;
  v48 = v81;
  sub_10007D2F8();
  v49 = v71;
  v50 = v72;
  v51 = *(v72 + 16);
  v51(v75, v48, v71);
  v67(v79, v78, v37);
  v51(v76, v47, v49);
  v52 = *(v50 + 80);
  v53 = (v52 + 16) & ~v52;
  v54 = (v19 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (*(v36 + 80) + v54 + 8) & ~*(v36 + 80);
  v56 = (v73 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v52 + 16 + v56) & ~v52;
  v57 = swift_allocObject();
  v58 = *(v50 + 32);
  v58(v57 + v53, v75, v49);
  *(v57 + v54) = v70;
  (*(v36 + 32))(v57 + v55, v79, v80);
  v59 = (v57 + v56);
  v60 = v69;
  *v59 = v68;
  v59[1] = v60;
  v58(v57 + v78, v76, v49);

  v61 = v77;
  sub_10006D2F0(v77, sub_1000799BC, v57);

  v62 = *(v50 + 8);
  v62(v61, v49);
  return (v62)(v81, v49);
}

uint64_t sub_100073954(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v91 = a5;
  v89 = a4;
  v93 = a3;
  v82 = sub_10007E0C8();
  v76 = *(v82 - 8);
  v8 = *(v76 + 64);
  __chkstk_darwin(v82);
  v75 = v9;
  v80 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007D3B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v83 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v14;
  __chkstk_darwin(v13);
  v84 = &v70 - v15;
  v72 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  v71 = *(v72 - 8);
  v16 = *(v71 + 64);
  v17 = __chkstk_darwin(v72);
  v79 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v18;
  __chkstk_darwin(v17);
  v81 = &v70 - v19;
  v20 = sub_100015240(&qword_1000E24F0, &qword_100085FF0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v70 - v22;
  v24 = type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v86 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v29 = (v28 - 8);
  v70 = *(v28 - 8);
  v30 = *(v70 + 64);
  v31 = __chkstk_darwin(v28);
  v78 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v70 - v32;
  v34 = v29[7];
  v87 = a1;
  v88 = v11;
  v35 = *(v11 + 16);
  v92 = v10;
  v85 = v35;
  v35(&v70 + v34 - v32, a1, v10);
  v36 = v29[8];
  v37 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  (*(*(v37 - 8) + 56))(&v33[v36], 1, 1, v37);
  v38 = v29[9];
  v39 = sub_10007E098();
  (*(*(v39 - 8) + 56))(&v33[v38], 1, 1, v39);
  sub_10007D398();
  v40 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
  swift_beginAccess();
  v90 = a2;
  sub_100026310(a2 + v40, v23, &qword_1000E24F0, &qword_100085FF0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1000256C0(v23, &qword_1000E24F0, &qword_100085FF0);
  }

  else
  {
    v41 = v86;
    sub_100077E94(v23, v86, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
    v42 = *v41;
    if (*(*v41 + 16))
    {
      v43 = *(v71 + 80);
      v44 = v81;
      sub_100026310(v42 + ((v43 + 32) & ~v43), v81, &unk_1000E24B8, qword_100085F70);
      v45 = (v44 + *(v72 + 48));
      v46 = v45[4];
      v83 = v45[3];
      v71 = v46;
      v72 = sub_1000781E0(v45, v83);
      v85(v84, v87, v92);
      v47 = v76;
      (*(v76 + 16))(v80, v93, v82);
      sub_1000797A8(v33, v78, type metadata accessor for GeneralMapsTimelineEntry);
      sub_100026310(v44, v79, &unk_1000E24B8, qword_100085F70);
      v48 = v88;
      v49 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v50 = (v74 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = (*(v47 + 80) + v50 + 8) & ~*(v47 + 80);
      v52 = (v75 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v87 = (*(v70 + 80) + v52 + 16) & ~*(v70 + 80);
      v53 = (v30 + v43 + v87) & ~v43;
      v54 = swift_allocObject();
      (*(v48 + 32))(v54 + v49, v84, v92);
      *(v54 + v50) = v90;
      (*(v47 + 32))(v54 + v51, v80, v82);
      v55 = (v54 + v52);
      v56 = v91;
      *v55 = v89;
      v55[1] = v56;
      sub_100077E94(v78, v54 + v87, type metadata accessor for GeneralMapsTimelineEntry);
      sub_10002DB0C(v79, v54 + v53, &unk_1000E24B8, qword_100085F70);
      v57 = v71;
      v58 = *(v71 + 16);

      v58(v93, v77, sub_100079ADC, v54, v83, v57);

      sub_100077A58(v33, type metadata accessor for GeneralMapsTimelineEntry);
      sub_100077A58(v86, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
      return sub_1000256C0(v81, &unk_1000E24B8, qword_100085F70);
    }

    sub_100077A58(v86, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
  }

  v60 = v92;
  v61 = v83;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v62 = sub_10007D5C8();
  sub_1000046BC(v62, qword_1000E4B28);
  v85(v61, v87, v60);
  v63 = sub_10007D5A8();
  v64 = sub_10007E2A8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 134349056;
    v66 = v84;
    sub_10007D3A8();
    sub_10007D2B8();
    v68 = v67;
    v69 = *(v88 + 8);
    v69(v66, v60);
    v69(v61, v60);
    *(v65 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v63, v64, "GeneralMapsTimelineProvider: no timeline; will call 'snapshot' completion with empty entry (%{public}f seconds elapsed)", v65, 0xCu);
  }

  else
  {

    (*(v88 + 8))(v61, v60);
  }

  sub_1000728C4(v93, v89, v91, v33);
  return sub_100077A58(v33, type metadata accessor for GeneralMapsTimelineEntry);
}

uint64_t sub_1000742D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a7;
  v81 = a8;
  v90 = a3;
  v91 = a4;
  v87 = a1;
  v88 = a2;
  v10 = sub_100015240(&qword_1000DE638, &unk_1000826F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v86 = &v74 - v12;
  v82 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  v13 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v85 = &v74 - v14;
  v83 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v15 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v84 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10007D3B8();
  v89 = *(v92 - 8);
  v17 = *(v89 + 64);
  v18 = __chkstk_darwin(v92);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v78 = &v74 - v22;
  __chkstk_darwin(v21);
  v24 = &v74 - v23;
  v25 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v79 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v74 - v29;
  v31 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v77 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v74 - v36;
  sub_100026310(v87, v30, &qword_1000DE630, &unk_1000861F0);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    v38 = a5;
    v39 = a6;
    sub_1000256C0(v30, &qword_1000DE630, &unk_1000861F0);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v40 = sub_10007D5C8();
    sub_1000046BC(v40, qword_1000E4B28);
    v41 = v89;
    v42 = v92;
    (*(v89 + 16))(v20, v88, v92);
    v43 = sub_10007D5A8();
    v44 = sub_10007E2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v41;
      v46 = swift_slowAlloc();
      *v46 = 134349056;
      v47 = v78;
      sub_10007D3A8();
      sub_10007D2B8();
      v49 = v48;
      v50 = *(v45 + 8);
      v50(v47, v42);
      v50(v20, v42);
      *(v46 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "GeneralMapsTimelineProvider: could not resolve content; will call 'snapshot' completion with empty entry (%{public}f seconds elapsed)", v46, 0xCu);
    }

    else
    {

      (*(v41 + 8))(v20, v42);
    }

    return sub_1000728C4(v91, v38, v39, v80);
  }

  else
  {
    v76 = a5;
    v51 = a6;
    v87 = v37;
    sub_100077E94(v30, v37, type metadata accessor for GeneralMapsTimelineEntryContent);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v52 = sub_10007D5C8();
    sub_1000046BC(v52, qword_1000E4B28);
    v53 = v89;
    v54 = v92;
    (*(v89 + 16))(v24, v88, v92);
    v55 = sub_10007D5A8();
    v56 = sub_10007E288();
    v57 = os_log_type_enabled(v55, v56);
    v75 = v51;
    if (v57)
    {
      v58 = swift_slowAlloc();
      *v58 = 134349056;
      v59 = v78;
      sub_10007D3A8();
      sub_10007D2B8();
      v61 = v60;
      v62 = *(v53 + 8);
      v62(v59, v92);
      v62(v24, v92);
      *(v58 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "GeneralMapsTimelineProvider: will call 'snapshot' completion with entry (%{public}f seconds elapsed)", v58, 0xCu);
      v54 = v92;
    }

    else
    {

      (*(v53 + 8))(v24, v54);
    }

    v64 = v85;
    sub_100026310(v81, v85, &unk_1000E24B8, qword_100085F70);
    v65 = v87;
    v66 = v79;
    sub_1000797A8(v87, v79, type metadata accessor for GeneralMapsTimelineEntryContent);
    (*(v32 + 56))(v66, 0, 1, v31);
    v67 = v77;
    sub_1000797A8(v65, v77, type metadata accessor for GeneralMapsTimelineEntryContent);
    v68 = dword_100086070[swift_getEnumCaseMultiPayload()];
    v69 = v86;
    sub_10007E088();
    v70 = *(v82 + 48);
    sub_100077A58(v67, type metadata accessor for GeneralMapsTimelineEntryContent);
    v71 = sub_10007E098();
    (*(*(v71 - 8) + 56))(v69, 0, 1, v71);
    v72 = v84;
    sub_10007D398();
    v73 = v83;
    (*(v53 + 32))(v72 + *(v83 + 20), v64, v54);
    sub_10002DB0C(v66, v72 + *(v73 + 24), &qword_1000DE630, &unk_1000861F0);
    sub_10002DB0C(v69, v72 + *(v73 + 28), &qword_1000DE638, &unk_1000826F0);
    sub_1000250AC((v64 + v70));
    sub_1000728C4(v91, v76, v75, v72);
    sub_100077A58(v72, type metadata accessor for GeneralMapsTimelineEntry);
    return sub_100077A58(v65, type metadata accessor for GeneralMapsTimelineEntryContent);
  }
}

uint64_t sub_100074B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v27[1] = a4;
  v28 = a2;
  v7 = v6;
  v30 = a3;
  v9 = sub_10007DEB8();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007DED8();
  v33 = *(v13 - 8);
  v34 = v13;
  v14 = *(v33 + 64);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007E0C8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v29 = sub_10007E328();
  (*(v18 + 16))(v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17);
  v20 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v7;
  (*(v18 + 32))(v21 + v20, v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v22 = (v21 + ((v19 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = v28;
  v22[1] = v23;
  aBlock[4] = v31;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = v32;
  v24 = _Block_copy(aBlock);

  sub_10007DEC8();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
  sub_10007E3F8();
  v25 = v29;
  sub_10007E338();
  _Block_release(v24);

  (*(v35 + 8))(v12, v9);
  return (*(v33 + 8))(v16, v34);
}

uint64_t sub_100074EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v71 = a2;
  v74 = a1;
  v3 = sub_10007DFF8();
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007E0C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v78 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v11;
  __chkstk_darwin(v10);
  v13 = &v61 - v12;
  v14 = sub_10007D3B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v76 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v75 = &v61 - v19;
  v20 = __chkstk_darwin(v18);
  v77 = &v61 - v21;
  __chkstk_darwin(v20);
  v79 = &v61 - v22;
  v23 = sub_10007DF48();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v27 = sub_10007E328();
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v28 = sub_10007DF68();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    v29 = *(v80 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      v68 = v15;
      *(v80 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount) = v31;
      sub_10007D3A8();
      if (qword_1000DE268 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  swift_once();
LABEL_4:
  v32 = sub_10007D5C8();
  sub_1000046BC(v32, qword_1000E4B28);
  v73 = v8;
  v67 = *(v8 + 16);
  v67(v13, v74, v7);
  v33 = sub_10007D5A8();
  v34 = sub_10007E288();
  v35 = os_log_type_enabled(v33, v34);
  v72 = v7;
  if (v35)
  {
    v36 = v13;
    v37 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v81 = v62;
    *v37 = 136446210;
    v38 = v64;
    sub_10007E0B8();
    sub_100077AB8(&qword_1000DFCE8, &type metadata accessor for WidgetFamily);
    v39 = v65;
    v40 = sub_10007E588();
    v63 = v14;
    v42 = v41;
    v43 = v39;
    v7 = v72;
    (*(v66 + 8))(v38, v43);
    (*(v73 + 8))(v36, v7);
    v44 = sub_100051190(v40, v42, &v81);
    v14 = v63;

    *(v37 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v33, v34, "GeneralMapsTimelineProvider: 'timeline' requested (of size %{public}s)", v37, 0xCu);
    sub_1000250AC(v62);
  }

  else
  {

    (*(v73 + 8))(v13, v7);
  }

  sub_10007DFE8();
  v45 = v77;
  v46 = v79;
  sub_10007D2F8();
  v47 = v68;
  v48 = *(v68 + 16);
  v48(v75, v46, v14);
  v67(v78, v74, v7);
  v48(v76, v45, v14);
  v49 = *(v47 + 80);
  v50 = (v49 + 24) & ~v49;
  v51 = v73;
  v52 = (v16 + *(v73 + 80) + v50) & ~*(v73 + 80);
  v53 = (v69 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v49 + v53 + 16) & ~v49;
  v54 = swift_allocObject();
  *(v54 + 16) = v80;
  v55 = *(v47 + 32);
  v55(v54 + v50, v75, v14);
  (*(v51 + 32))(v54 + v52, v78, v72);
  v56 = (v54 + v53);
  v57 = v70;
  *v56 = v71;
  v56[1] = v57;
  v55(v54 + v74, v76, v14);

  v58 = v77;
  sub_10006D2F0(v77, sub_100003F48, v54);

  v59 = *(v47 + 8);
  v59(v58, v14);
  return (v59)(v79, v14);
}

uint64_t sub_100075618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v117 = a6;
  v108 = a5;
  v107 = a4;
  v121 = a3;
  v106 = a2;
  v7 = sub_10007E078();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v122 = (&v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100015240(&qword_1000E2528, &qword_100086008);
  v123 = *(v10 - 8);
  v124 = v10;
  v11 = *(v123 + 64);
  __chkstk_darwin(v10);
  v116 = &v91 - v12;
  v102 = sub_10007DEB8();
  v101 = *(v102 - 8);
  v13 = *(v101 + 64);
  __chkstk_darwin(v102);
  v99 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10007DED8();
  v98 = *(v100 - 8);
  v15 = *(v98 + 64);
  __chkstk_darwin(v100);
  v97 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10007E0C8();
  v96 = *(v105 - 8);
  v17 = *(v96 + 64);
  __chkstk_darwin(v105);
  v95 = v18;
  v104 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10007D3B8();
  v109 = *(v120 - 8);
  v19 = *(v109 + 64);
  v20 = __chkstk_darwin(v120);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v21;
  __chkstk_darwin(v20);
  v103 = &v91 - v23;
  v119 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  v112 = *(v119 - 8);
  v24 = *(v112 + 64);
  v25 = __chkstk_darwin(v119);
  v118 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v125 = &v91 - v28;
  v93 = v29;
  __chkstk_darwin(v27);
  v31 = &v91 - v30;
  v32 = sub_100015240(&qword_1000E24F0, &qword_100085FF0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v91 - v34;
  v36 = type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = (&v91 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
  swift_beginAccess();
  v110 = a1;
  sub_100026310(a1 + v41, v35, &qword_1000E24F0, &qword_100085FF0);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    v42 = v108;
    sub_1000256C0(v35, &qword_1000E24F0, &qword_100085FF0);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v43 = sub_10007D5C8();
    sub_1000046BC(v43, qword_1000E4B28);
    v44 = v109;
    v45 = v120;
    (*(v109 + 16))(v22, v106, v120);
    v46 = sub_10007D5A8();
    v47 = sub_10007E2A8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134349056;
      v49 = v103;
      sub_10007D3A8();
      sub_10007D2B8();
      v51 = v50;
      v52 = *(v44 + 8);
      v52(v49, v45);
      v52(v22, v45);
      *(v48 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v46, v47, "GeneralMapsTimelineProvider: no timeline; will call 'timeline' completion with empty array (%{public}f seconds elapsed)", v48, 0xCu);
    }

    else
    {

      (*(v44 + 8))(v22, v45);
    }

    v85 = v107;
    v86 = v121;
    v87 = v42;
    v89 = v123;
    v88 = v124;
    v90 = v116;
    sub_10007E068();
    type metadata accessor for GeneralMapsTimelineEntry(0);
    sub_100077AB8(&qword_1000E24E8, type metadata accessor for GeneralMapsTimelineEntry);
    sub_10007E0D8();
    sub_100072D68(v86, v85, v87, v90);
    return (*(v89 + 8))(v90, v88);
  }

  else
  {
    sub_100077E94(v35, v40, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
    v116 = swift_allocObject();
    *(v116 + 2) = _swiftEmptyArrayStorage;
    v92 = v40;
    v53 = *v40;
    v54 = dispatch_group_create();
    v55 = *(v53 + 16);
    v56 = v119;
    v57 = v120;
    v58 = v118;
    if (v55)
    {
      v59 = v31;
      v115 = *(v119 + 48);
      v114 = *(v112 + 80);
      v113 = (v114 + 32) & ~v114;
      v60 = v53 + v113;
      v112 = *(v112 + 72);
      v111 = (v109 + 32);
      do
      {
        v124 = v55;
        sub_100026310(v60, v59, &unk_1000E24B8, qword_100085F70);
        v61 = (v125 + *(v56 + 48));
        (*v111)(v125, v59, v57);
        sub_100077A40((v59 + v115), v61);
        dispatch_group_enter(v54);
        v62 = v61[4];
        v123 = v61[3];
        v122 = sub_1000781E0(v61, v123);
        sub_100026310(v125, v58, &unk_1000E24B8, qword_100085F70);
        v63 = v113;
        v64 = swift_allocObject();
        *(v64 + 16) = v54;
        *(v64 + 24) = v116;
        sub_10002DB0C(v58, v64 + v63, &unk_1000E24B8, qword_100085F70);
        v65 = v59;
        v66 = *(v62 + 16);
        v67 = v121;

        v68 = v54;
        v57 = v120;
        v66(v67, v117, sub_100078224, v64, v123, v62);
        v59 = v65;
        v58 = v118;
        v56 = v119;

        sub_1000256C0(v125, &unk_1000E24B8, qword_100085F70);
        v60 += v112;
        v55 = v124 - 1;
      }

      while (v124 != 1);
    }

    v91 = v54;
    v125 = *(v110 + 120);
    v69 = v109;
    v70 = v103;
    (*(v109 + 16))(v103, v106, v57);
    v71 = v96;
    (*(v96 + 16))(v104, v121, v105);
    v72 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v73 = (v94 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = (*(v71 + 80) + v73 + 8) & ~*(v71 + 80);
    v75 = (v95 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = v116;
    (*(v69 + 32))(v76 + v72, v70, v57);
    *(v76 + v73) = v110;
    (*(v71 + 32))(v76 + v74, v104, v105);
    v77 = (v76 + v75);
    v78 = v108;
    *v77 = v107;
    v77[1] = v78;
    aBlock[4] = sub_1000782A4;
    aBlock[5] = v76;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C98D0;
    v79 = _Block_copy(aBlock);

    v80 = v97;
    sub_10007DEC8();
    v126 = _swiftEmptyArrayStorage;
    sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags);
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
    v81 = v99;
    v82 = v102;
    sub_10007E3F8();
    v83 = v91;
    sub_10007E2E8();
    _Block_release(v79);

    (*(v101 + 8))(v81, v82);
    (*(v98 + 8))(v80, v100);
    sub_100077A58(v92, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
  }
}