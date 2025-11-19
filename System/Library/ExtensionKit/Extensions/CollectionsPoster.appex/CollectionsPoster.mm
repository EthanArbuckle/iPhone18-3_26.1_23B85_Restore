id sub_100001960()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void type metadata accessor for PRPosterAdaptiveTimeMode()
{
  if (!qword_100020178)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100020178);
    }
  }
}

uint64_t sub_100001AF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10001092C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10001093C();
  v5 = sub_1000108FC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_10001090C();
  sub_100001FDC(&qword_100020260, qword_100011F78);
  v8 = *(sub_10001041C() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100011ED0;
  sub_100002024(&qword_100020268, &type metadata accessor for PRRenderingConfiguration);

  sub_10001040C();
  sub_100002024(&qword_100020270, &type metadata accessor for PREditingConfiguration);

  sub_10001040C();

  *a1 = v11;
  return result;
}

id sub_100001D50(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100001D94()
{
  [objc_allocWithZone(type metadata accessor for CollectionsPosterUpdateDelegate()) init];
  v0 = sub_100001FDC(&qword_100020250, qword_100011EE0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_10001091C();
  sub_1000020A0(&qword_100020258);
  sub_1000107EC();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001EF8();
  sub_1000020A0(&qword_100020248);
  sub_1000107CC();
  return 0;
}

unint64_t sub_100001EF8()
{
  result = qword_100020240;
  if (!qword_100020240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020240);
  }

  return result;
}

uint64_t sub_100001F4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001FDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000020A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100001F4C(&qword_100020250, qword_100011EE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100002154()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) targetConfiguration];
  isa = sub_10001094C().super.isa;
  v6 = 0;
  v3 = [v1 storeUserInfo:isa error:&v6];

  if (v3)
  {
    return v6;
  }

  v5 = v6;
  sub_10001038C();

  return swift_willThrow();
}

id sub_10000225C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) context];
  if (v1)
  {
    v2 = type metadata accessor for CollectionsPosterEnvironmentContext();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEnvironmentContext_posterKitEnvironmentContext] = v1;
    v6.receiver = v3;
    v6.super_class = v2;
    v4 = v1;
    v1 = objc_msgSendSuper2(&v6, "init");

    sub_100002664(&qword_100020318, 255, type metadata accessor for CollectionsPosterEnvironmentContext);
  }

  return v1;
}

uint64_t sub_10000233C()
{
  v2 = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) sourceContents];
  v8 = 0;
  v3 = [v2 loadUserInfoWithError:&v8];
  swift_unknownObjectRelease();
  v4 = v8;
  if (v3)
  {
    v1 = sub_10001095C();
    v5 = v4;
  }

  else
  {
    v6 = v8;
    sub_10001038C();

    swift_willThrow();
  }

  return v1;
}

void sub_100002448()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) targetConfiguration];
  v2 = [v1 assetDirectory];

  sub_1000103CC();
}

id sub_100002500()
{
  result = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) traitCollection];
  if (result)
  {
    v2 = result;
    v3 = [result userInterfaceStyle];

    return v3;
  }

  return result;
}

void sub_100002578()
{
  v1 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) "sourceContents")];
  swift_unknownObjectRelease();
  sub_1000103CC();
}

uint64_t sub_100002664(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000027F0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment) context];
  if (v1)
  {
    v2 = type metadata accessor for CollectionsPosterEnvironmentContext();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEnvironmentContext_posterKitEnvironmentContext] = v1;
    v6.receiver = v3;
    v6.super_class = v2;
    v4 = v1;
    v1 = objc_msgSendSuper2(&v6, "init");

    sub_100002C0C(&qword_100020318, 255, type metadata accessor for CollectionsPosterEnvironmentContext);
  }

  return v1;
}

uint64_t sub_1000028D0()
{
  v2 = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment) contents];
  v8 = 0;
  v3 = [v2 loadUserInfoWithError:&v8];
  swift_unknownObjectRelease();
  v4 = v8;
  if (v3)
  {
    v1 = sub_10001095C();
    v5 = v4;
  }

  else
  {
    v6 = v8;
    sub_10001038C();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1000029DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment);
  swift_getObjectType();
  return sub_10000F51C();
}

uint64_t sub_100002A18()
{
  v1 = *(v0 + OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment);
  swift_getObjectType();
  return sub_10000F654();
}

id sub_100002AA8()
{
  result = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment) traitCollection];
  if (result)
  {
    v2 = result;
    v3 = [result userInterfaceStyle];

    return v3;
  }

  return result;
}

void sub_100002B20()
{
  v1 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment) "contents")];
  swift_unknownObjectRelease();
  sub_1000103CC();
}

uint64_t sub_100002C0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100002D10()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderer] = 0;
  v2 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_environmentSnapshot;
  v3 = sub_1000105BC();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment] = 0;
  *&v0[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_wallpaperPosterRenderController] = 0;
  v4 = qword_100020068;
  v5 = v0;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1000108CC();
  sub_100004CC4(v6, qword_100020D20);
  v7 = v5;
  v8 = sub_1000108AC();
  v9 = sub_100010A8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v10 = 136446466;
    swift_getObjectType();

    v11 = sub_100010C2C();
    v13 = sub_10000EF40(v11, v12, &v16);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10000EF40(0x292874696E69, 0xE600000000000000, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%{public}s.%{public}s)…", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17.receiver = v7;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, "init");
  sub_100002F68(v14);

  return v14;
}

void sub_100002F68(void *a1)
{
  if (qword_100020068 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D20);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0x292874696E69, 0xE600000000000000, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t type metadata accessor for CollectionsPosterRenderDelegate()
{
  result = qword_1000204B0;
  if (!qword_1000204B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000031E8()
{
  sub_100003288();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100003288()
{
  if (!qword_1000204C0)
  {
    sub_1000105BC();
    v0 = sub_100010ACC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000204C0);
    }
  }
}

uint64_t sub_1000032E0(void *a1, void *a2)
{
  v20 = a2;
  v21 = a1;
  v2 = sub_10001081C();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001084C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020078 != -1)
  {
    swift_once();
  }

  v11 = sub_100004CC4(v6, qword_100020D50);
  (*(v7 + 16))(v10, v11, v6);
  sub_10001080C();
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = sub_10001083C();
  v14 = sub_100010AAC();
  v15 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v15, "CollectionsPosterRenderDelegate.Initialize", "", v12, 2u);
  sub_100003570(v19, v20, v21);
  v16 = sub_100010A9C();
  v17 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v16, v17, "CollectionsPosterRenderDelegate.Initialize", "", v12, 2u);

  (*(v22 + 8))(v5, v23);
  return (*(v7 + 8))(v10, v6);
}

void sub_100003570(void *a1, void *a2, void *a3)
{
  v6 = *(*(sub_100001FDC(&qword_100020528, &qword_100012278) - 8) + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  if (qword_100020068 != -1)
  {
    swift_once();
  }

  v50 = v9;
  v12 = sub_1000108CC();
  sub_100004CC4(v12, qword_100020D20);
  swift_unknownObjectRetain_n();
  v13 = a1;
  v14 = sub_1000108AC();
  v15 = sub_100010A8C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48[0] = v46;
    *v16 = 136447234;
    swift_getObjectType();
    v17 = sub_100010C2C();
    v19 = sub_10000EF40(v17, v18, v48);

    *(v16 + 4) = v19;
    v47 = a3;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_10000EF40(0xD00000000000001ELL, 0x80000001000129A0, v48);
    *(v16 + 22) = 1026;
    LODWORD(v19) = [a2 isPreview];
    swift_unknownObjectRelease();
    *(v16 + 24) = v19;
    swift_unknownObjectRelease();
    *(v16 + 28) = 1026;
    LODWORD(v19) = [a2 isSnapshot];
    swift_unknownObjectRelease();
    *(v16 + 30) = v19;
    swift_unknownObjectRelease();
    *(v16 + 34) = 2082;
    [a2 deviceOrientation];
    v20 = WKStringForInterfaceOrientation();
    v21 = sub_10001097C();
    v23 = v22;

    v24 = sub_10000EF40(v21, v23, v48);
    a3 = v47;

    *(v16 + 36) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Start (%{public}s.%{public}s); isPreview: '%{BOOL,public}d', isSnapshot: '%{BOOL,public}d', orientation: '%{public}s'…", v16, 0x2Cu);
    swift_arrayDestroy();
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  v25 = *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderer];
  *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderer] = a3;

  v26 = type metadata accessor for CollectionsPosterRenderingEnvironment();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment] = a2;
  v49.receiver = v27;
  v49.super_class = v26;
  swift_unknownObjectRetain();
  v28 = a3;
  v29 = objc_msgSendSuper2(&v49, "init");
  v30 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment;
  v31 = *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment];
  *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment] = v29;
  v32 = v29;

  v33 = sub_100004CFC();
  sub_100004E9C(v33, 0, v11);
  v34 = sub_1000105BC();
  v35 = *(v34 - 8);
  (*(v35 + 56))(v11, 0, 1, v34);
  v36 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_environmentSnapshot;
  swift_beginAccess();
  sub_100004D54(v11, &v13[v36]);
  swift_endAccess();
  v37 = sub_10001070C();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = v28;
  v41 = sub_1000106DC();
  v42 = *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_wallpaperPosterRenderController];
  *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_wallpaperPosterRenderController] = v41;

  v43 = *&v13[v30];
  if (v43)
  {
    v44 = v50;
    sub_100004DC4(&v13[v36], v50);
    if ((*(v35 + 48))(v44, 1, v34) != 1)
    {
      v45 = v43;
      sub_1000106EC();

      (*(v35 + 8))(v44, v34);
      sub_100003A64(v13);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100003A64(void *a1)
{
  if (qword_100020068 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D20);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0xD00000000000001ELL, 0x80000001000129A0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100003C88(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v23 = a1;
  v24 = a3;
  v3 = sub_10001081C();
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001084C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020078 != -1)
  {
    swift_once();
  }

  v12 = sub_100004CC4(v7, qword_100020D50);
  (*(v8 + 16))(v11, v12, v7);
  sub_10001080C();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = sub_10001083C();
  v15 = sub_100010AAC();
  v16 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v16, "CollectionsPosterRenderDelegate.Update", "", v13, 2u);
  sub_100003F18(v22, v21, v24, v23);
  v17 = sub_100010A9C();
  v18 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v17, v18, "CollectionsPosterRenderDelegate.Update", "", v13, 2u);

  (*(v25 + 8))(v6, v26);
  return (*(v8 + 8))(v11, v7);
}

void sub_100003F18(void *a1, void *a2, void *a3, uint64_t a4)
{
  v43 = a4;
  v47 = a3;
  v6 = sub_100001FDC(&qword_100020528, &qword_100012278);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v13 = sub_1000108CC();
  sub_100004CC4(v13, qword_100020D08);
  swift_unknownObjectRetain_n();
  v14 = a1;
  v15 = sub_1000108AC();
  v16 = sub_100010A8C();

  v17 = os_log_type_enabled(v15, v16);
  v44 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45[0] = v42;
    *v18 = 136447234;
    swift_getObjectType();
    v19 = sub_100010C2C();
    v21 = sub_10000EF40(v19, v20, v45);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_10000EF40(0xD00000000000001BLL, 0x8000000100012950, v45);
    *(v18 + 22) = 1026;
    LODWORD(v21) = [a2 isPreview];
    swift_unknownObjectRelease();
    *(v18 + 24) = v21;
    swift_unknownObjectRelease();
    *(v18 + 28) = 1026;
    LODWORD(v21) = [a2 isSnapshot];
    swift_unknownObjectRelease();
    *(v18 + 30) = v21;
    swift_unknownObjectRelease();
    *(v18 + 34) = 2082;
    [a2 deviceOrientation];
    v22 = WKStringForInterfaceOrientation();
    v23 = sub_10001097C();
    v25 = v24;

    v26 = sub_10000EF40(v23, v25, v45);

    *(v18 + 36) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "Start (%{public}s.%{public}s); isPreview: '%{BOOL,public}d', isSnapshot: '%{BOOL,public}d', orientation: '%{public}s'…", v18, 0x2Cu);
    swift_arrayDestroy();
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  v27 = type metadata accessor for CollectionsPosterRenderingEnvironment();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment] = a2;
  v46.receiver = v28;
  v46.super_class = v27;
  swift_unknownObjectRetain();
  v29 = objc_msgSendSuper2(&v46, "init");
  v30 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment;
  v31 = *&v14[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment];
  *&v14[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment] = v29;
  v32 = v29;

  v33 = sub_100004CFC();
  sub_100004E9C(v33, [v47 animationSettings], v12);
  v34 = sub_1000105BC();
  v35 = *(v34 - 8);
  (*(v35 + 56))(v12, 0, 1, v34);
  v36 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_environmentSnapshot;
  swift_beginAccess();
  sub_100004D54(v12, &v14[v36]);
  swift_endAccess();
  if (!*&v14[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_wallpaperPosterRenderController])
  {
    __break(1u);
    goto LABEL_11;
  }

  v37 = *&v14[v30];
  if (!v37)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v38 = v44;
  sub_100004DC4(&v14[v36], v44);
  if ((*(v35 + 48))(v38, 1, v34) != 1)
  {

    v39 = v37;
    v40 = [v47 animationSettings];
    sub_1000106FC();

    (*(v35 + 8))(v38, v34);
    sub_1000043F4(v14);
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1000043F4(void *a1)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0xD00000000000001BLL, 0x8000000100012950, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100004634()
{
  v0 = sub_10001081C();
  v18 = *(v0 - 8);
  v19 = v0;
  v1 = *(v18 + 64);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001084C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020078 != -1)
  {
    swift_once();
  }

  v9 = sub_100004CC4(v4, qword_100020D50);
  (*(v5 + 16))(v8, v9, v4);
  sub_10001080C();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_10001083C();
  v12 = sub_100010AAC();
  v13 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "CollectionsPosterRenderDelegate.Invalidate", "", v10, 2u);
  sub_1000048C4(v17);
  v14 = sub_100010A9C();
  v15 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v14, v15, "CollectionsPosterRenderDelegate.Invalidate", "", v10, 2u);

  (*(v18 + 8))(v3, v19);
  return (*(v5 + 8))(v8, v4);
}

void sub_1000048C4(void *a1)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = a1;
  v4 = sub_1000108AC();
  v5 = sub_100010A8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136446466;
    swift_getObjectType();
    v7 = sub_100010C2C();
    v9 = sub_10000EF40(v7, v8, &v12);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_10000EF40(0xD000000000000019, 0x8000000100012900, &v12);
    _os_log_impl(&_mh_execute_header, v4, v5, "Start (%{public}s.%{public}s)…", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (*&v3[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_wallpaperPosterRenderController])
  {
    v10 = *&v3[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_wallpaperPosterRenderController];

    sub_1000106CC();

    v11 = *&v3[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderer];
    *&v3[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderer] = 0;

    sub_100004AB8(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_100004AB8(void *a1)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0xD000000000000019, 0x8000000100012900, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100004CC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100004CFC()
{
  result = qword_100020530;
  if (!qword_100020530)
  {
    type metadata accessor for CollectionsPosterRenderingEnvironment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020530);
  }

  return result;
}

uint64_t sub_100004D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&qword_100020528, &qword_100012278);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&qword_100020528, &qword_100012278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004E34(uint64_t a1)
{
  v2 = sub_100001FDC(&qword_100020528, &qword_100012278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100004E9C(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v16[3] = a3;
  v5 = *(*(sub_1000104FC() - 8) + 64);
  __chkstk_darwin();
  v16[1] = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10001045C() - 8) + 64);
  __chkstk_darwin();
  v16[2] = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001059C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_10000B070(a2);
  (*(v10 + 104))(v13, enum case for WKPosterEnvironmentSnapshot.PosterEnvironmentMode.rendering(_:), v9);
  swift_getObjectType();
  sub_1000105EC();
  sub_1000105CC();
  v14 = *(a1 + 8);
  sub_100005128(a2);

  v15 = v16[0];
  sub_10001049C();
  sub_1000104AC();
  sub_1000105DC();
  sub_1000105AC();
  swift_unknownObjectRelease();
}

uint64_t sub_100005128(uint64_t a1)
{
  v1 = a1 == 0;
  if (sub_1000104BC())
  {
    swift_getObjectType();
    if (sub_10001058C())
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_10001057C();
    }

    swift_unknownObjectRelease();
  }

  return v1 & 1;
}

void sub_1000051A4(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a3;
  v4 = sub_1000104FC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10001045C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10001059C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v13 = sub_10000B070(a2);
  (*(v9 + 104))(v12, enum case for WKPosterEnvironmentSnapshot.PosterEnvironmentMode.editing(_:), v8);
  sub_10001044C();
  sub_1000104EC();
  swift_getObjectType();
  v14 = *(v18 + 8);
  sub_100005128(a2);

  v15 = v13;
  sub_10001049C();
  sub_1000104AC();
  sub_1000105AC();

  swift_unknownObjectRelease();
}

id sub_10000540C()
{
  v1 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterUpdateDelegate_wallpaperRepresentingCollectionsManager;
  v2 = sub_1000107BC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = v0;
  *&v0[v1] = sub_1000107AC();
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v6 = sub_1000108CC();
  sub_100004CC4(v6, qword_100020D08);
  v7 = v5;
  v8 = sub_1000108AC();
  v9 = sub_100010A8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446466;
    swift_getObjectType();

    v11 = sub_100010C2C();
    v13 = sub_10000EF40(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10000EF40(0x292874696E69, 0xE600000000000000, &v17);
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%{public}s.%{public}s)…", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  updated = type metadata accessor for CollectionsPosterUpdateDelegate();
  v18.receiver = v7;
  v18.super_class = updated;
  v15 = objc_msgSendSuper2(&v18, "init");
  sub_10000561C(v15);

  return v15;
}

void sub_10000561C(void *a1)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0x292874696E69, 0xE600000000000000, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000057DC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000103DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = sub_100001FDC(&qword_1000205D8, &qword_100012320);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v60[0] = 0;
  v17 = [a1 loadUserInfoWithError:v60];
  v18 = v60[0];
  if (!v17)
  {
    v40 = v60[0];
    sub_10001038C();

    swift_willThrow();
    if (qword_100020060 != -1)
    {
      swift_once();
    }

    v41 = sub_1000108CC();
    sub_100004CC4(v41, qword_100020D08);
    v42 = a1;
    swift_errorRetain();
    v43 = sub_1000108AC();
    v44 = sub_100010A7C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v45 = 136446466;
      v46 = [v42 identifier];
      v47 = sub_10001097C();
      v49 = v48;

      v50 = sub_10000EF40(v47, v49, v60);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      swift_getErrorValue();
      v51 = sub_100010BFC();
      v53 = sub_10000EF40(v51, v52, v60);

      *(v45 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to load userInfo from poster descriptor '%{public}s' with error '%s'.", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_18;
  }

  v56 = v5;
  v57 = a2;
  v19 = v17;
  v20 = sub_10001095C();
  v21 = v18;

  v58 = sub_1000105FC();
  v59 = v22;
  sub_100010B0C();
  if (!*(v20 + 16) || (v23 = sub_100006DD0(v60), (v24 & 1) == 0))
  {

    sub_10000A888(v60);
    goto LABEL_8;
  }

  sub_10000A9E4(*(v20 + 56) + 32 * v23, v61);
  sub_10000A888(v60);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    a2 = v57;
    if (qword_100020060 != -1)
    {
      swift_once();
    }

    v29 = sub_1000108CC();
    sub_100004CC4(v29, qword_100020D08);
    v30 = a1;
    v31 = sub_1000108AC();
    v32 = sub_100010A7C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v60[0] = v34;
      *v33 = 136446210;
      v35 = [v30 identifier];
      v36 = sub_10001097C();
      v38 = v37;

      v39 = sub_10000EF40(v36, v38, v60);

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to load wallpaperRepresentingFileName from poster descriptor '%{public}s'.", v33, 0xCu);
      sub_10000A7C8(v34);
    }

LABEL_18:
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    return;
  }

  v25 = [a1 assetDirectory];
  sub_1000103CC();

  sub_1000103AC();

  (*(v56 + 8))(v9, v4);
  sub_10001047C();
  sub_10000AD30(v16, v14, &qword_1000205D8, &qword_100012320);
  v26 = sub_10001048C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v14, 1, v26) == 1)
  {
    sub_10000AC88(v16, &qword_1000205D8, &qword_100012320);
    sub_10000AC88(v14, &qword_1000205D8, &qword_100012320);
    v28 = v57;
    *v57 = 0u;
    *(v28 + 1) = 0u;
    v28[4] = 0;
  }

  else
  {
    v54 = v57;
    v57[3] = v26;
    v54[4] = sub_10000A8DC(&qword_100020608, &type metadata accessor for WKWallpaperBundle);
    v55 = sub_10000A924(v54);
    (*(v27 + 32))(v55, v14, v26);
    sub_10000AC88(v16, &qword_1000205D8, &qword_100012320);
  }
}

id sub_100005F14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionsPosterUpdateDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100005F7C(void *a1)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0xD00000000000001ALL, 0x8000000100012B10, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000062B0(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_10000ACE8(0, &qword_100020618, PRPosterDescriptor_ptr);
  v7 = sub_10001095C();
  v4[6] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[7] = v9;
  *v9 = v4;
  v9[1] = sub_1000063CC;

  return sub_100008148(v7);
}

uint64_t sub_1000063CC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = sub_10001037C();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = *(v3 + 40);
    isa = sub_1000109DC().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v14 = *(v3 + 32);
  (v14)[2](v14, v11, v10);

  _Block_release(v14);
  v15 = *(v8 + 8);

  return v15();
}

void sub_10000658C(void *a1)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0xD00000000000001CLL, 0x8000000100012AF0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000068C0(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1000069A8;

  return (sub_100008E80)(v8);
}

uint64_t sub_1000069A8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 40);
  if (v3)
  {
    v12 = sub_10001037C();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 40), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_100006B84()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000ADA8;

  return sub_1000068C0(v2, v3, v5, v4);
}

uint64_t sub_100006C44()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000ADA8;

  return sub_10000E5C0(v2, v3, v5);
}

uint64_t sub_100006D04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000ADA8;

  return sub_10000E6AC(a1, v4, v5, v7);
}

unint64_t sub_100006DD0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100010AEC(*(v2 + 40));

  return sub_10000730C(a1, v4);
}

unint64_t sub_100006E14(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100010C0C();
  sub_10001099C();
  v6 = sub_100010C1C();

  return sub_1000073D4(a1, a2, v6);
}

uint64_t sub_100006E8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001FDC(&qword_100020610, &qword_100012340);
  result = sub_100010BBC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_10000A878((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_10000A988(v24, &v37);
        sub_10000A9E4(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_100010AEC(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_10000A878(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

_OWORD *sub_100007144(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100006DD0(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10000748C();
      goto LABEL_7;
    }

    sub_100006E8C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_100006DD0(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10000A988(a2, v22);
      return sub_100007290(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_100010BEC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000A7C8(v17);

  return sub_10000A878(a1, v17);
}

_OWORD *sub_100007290(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000A878(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_10000730C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000A988(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100010AFC();
      sub_10000A888(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000073D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100010BDC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10000748C()
{
  v1 = v0;
  sub_100001FDC(&qword_100020610, &qword_100012340);
  v2 = *v0;
  v3 = sub_100010BAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_10000A988(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000A9E4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10000A878(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_100007630(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001FDC(&qword_100020610, &qword_100012340);
    v3 = sub_100010BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000AD30(v4, v13, &qword_100020628, qword_100012378);
      result = sub_100006DD0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000A878(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void *sub_10000776C(void *a1, char a2, char a3, char a4)
{
  v8 = sub_1000103DC();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  v10 = __chkstk_darwin(v8);
  v77 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v78 = &v76 - v12;
  v13 = a1[3];
  v14 = a1[4];
  v81 = sub_10000A784(a1, v13);
  v82 = v14;
  v83 = v13;
  sub_10001054C();
  v15 = sub_10001096C();

  v16 = [objc_opt_self() mutableDescriptorWithIdentifier:v15];

  v17 = a1[4];
  sub_10000A784(a1, a1[3]);
  if (sub_10001055C())
  {
    sub_10000ACE8(0, &unk_100020630, PRPosterColor_ptr);
    isa = sub_1000109DC().super.isa;

    [v16 setPreferredTitleColors:isa];
  }

  v19 = a1[4];
  sub_10000A784(a1, a1[3]);
  v20 = [objc_allocWithZone(PRMutablePosterDescriptorHomeScreenConfiguration) initWithPreferredStyle:0 allowsModifyingLegibilityBlur:(sub_10001056C() & 1) == 0 preferredSolidColors:0 preferredGradientColors:0];
  [v16 setPreferredHomeScreenConfiguration:v20];

  v21 = [objc_allocWithZone(PRPosterRenderingConfiguration) initWithDepthEffectDisabled:a3 & 1 motionEffectsDisabled:a4 & 1];
  [v16 setPreferredRenderingConfiguration:v21];

  v22 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
  [v22 setAllowsSystemSuggestedComplications:0];
  if (a2)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  [v22 setFeaturedConfidenceLevel:v23];
  v24 = [objc_opt_self() mainBundle];
  v25 = sub_10001096C();
  v26 = [v24 localizedStringForKey:v25 value:0 table:0];

  v27 = v16;
  if (!v26)
  {
    sub_10001097C();
    v26 = sub_10001096C();
  }

  [v22 setDisplayNameLocalizationKey:v26];

  v89[0] = 0;
  v28 = [v16 storeGalleryOptions:v22 error:v89];
  v29 = v89[0];
  if (!v28)
  {
    v50 = v89[0];
    sub_10001038C();

    swift_willThrow();
    if (qword_100020060 != -1)
    {
      swift_once();
    }

    v51 = sub_1000108CC();
    sub_100004CC4(v51, qword_100020D08);
    swift_errorRetain();
    v52 = sub_1000108AC();
    v53 = sub_100010A7C();

    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_29;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v83 = v27;
    v56 = v55;
    v89[0] = v55;
    *v54 = 136446210;
    swift_getErrorValue();
    v57 = sub_100010BFC();
    v59 = sub_10000EF40(v57, v58, v89);

    *(v54 + 4) = v59;
    v60 = "Failed store gallery options %{public}s";
    goto LABEL_28;
  }

  sub_100001FDC(&qword_100020620, &qword_100012370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000122A0;
  v31 = v29;
  v89[0] = sub_10001060C();
  v89[1] = v32;
  sub_100010B0C();
  v33 = sub_10001054C();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v33;
  *(inited + 80) = v34;
  v35 = sub_100007630(inited);
  swift_setDeallocating();
  sub_10000AC88(inited + 32, &qword_100020628, qword_100012378);
  v36 = a1[4];
  sub_10000A784(a1, a1[3]);
  if (sub_10001053C())
  {
    v37 = a1[4];
    sub_10000A784(a1, a1[3]);
    v83 = v27;
    v38 = [v27 assetDirectory];
    v39 = v77;
    sub_1000103CC();

    v40 = v78;
    v41 = v84;
    sub_10001050C();
    if (v41)
    {
      (*(v79 + 8))(v39, v80);

      if (qword_100020060 != -1)
      {
        swift_once();
      }

      v42 = sub_1000108CC();
      sub_100004CC4(v42, qword_100020D08);
      swift_errorRetain();
      v43 = sub_1000108AC();
      v44 = sub_100010A7C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v89[0] = v46;
        *v45 = 136446210;
        swift_getErrorValue();
        v47 = sub_100010BFC();
        v49 = sub_10000EF40(v47, v48, v89);

        *(v45 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v43, v44, "Failed copy WKWallpaperRepresenting %{public}s", v45, 0xCu);
        sub_10000A7C8(v46);
      }

      v27 = v83;
      goto LABEL_30;
    }

    v61 = v80;
    v84 = *(v79 + 8);
    v84(v39, v80);
    *&v87 = sub_1000105FC();
    *(&v87 + 1) = v62;
    sub_100010B0C();
    v63 = sub_10001039C();
    v88 = &type metadata for String;
    *&v87 = v63;
    *(&v87 + 1) = v64;
    sub_10000A878(&v87, v86);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v35;
    sub_100007144(v86, v89, isUniquelyReferenced_nonNull_native);
    sub_10000A888(v89);
    v84(v40, v61);
    v27 = v83;
  }

  v66 = sub_10001094C().super.isa;

  v89[0] = 0;
  v67 = [v27 storeUserInfo:v66 error:v89];

  if ((v67 & 1) == 0)
  {
    v69 = v89[0];
    sub_10001038C();

    swift_willThrow();
    if (qword_100020060 != -1)
    {
      swift_once();
    }

    v70 = sub_1000108CC();
    sub_100004CC4(v70, qword_100020D08);
    swift_errorRetain();
    v52 = sub_1000108AC();
    v53 = sub_100010A7C();

    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_29;
    }

    v54 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v83 = v27;
    v56 = v71;
    v89[0] = v71;
    *v54 = 136446210;
    swift_getErrorValue();
    v72 = sub_100010BFC();
    v74 = sub_10000EF40(v72, v73, v89);

    *(v54 + 4) = v74;
    v60 = "Failed store userInfo %{public}s";
LABEL_28:
    _os_log_impl(&_mh_execute_header, v52, v53, v60, v54, 0xCu);
    sub_10000A7C8(v56);
    v27 = v83;

LABEL_29:

LABEL_30:
    swift_willThrow();

    goto LABEL_31;
  }

  v68 = v89[0];
LABEL_31:

  return v27;
}

uint64_t sub_100008148(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v3 = sub_1000103FC();
  v2[47] = v3;
  v4 = *(v3 - 8);
  v2[48] = v4;
  v5 = *(v4 + 64) + 15;
  v2[49] = swift_task_alloc();
  v6 = sub_10001078C();
  v2[50] = v6;
  v7 = *(v6 - 8);
  v2[51] = v7;
  v8 = *(v7 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();

  return _swift_task_switch(sub_10000827C, 0, 0);
}

uint64_t sub_10000827C()
{
  v110 = v0;
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v1 = v0[46];
  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = v1;
  v4 = sub_1000108AC();
  v5 = sub_100010A8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[46];
    v7 = swift_slowAlloc();
    v109[0] = swift_slowAlloc();
    *v7 = 136446466;
    swift_getObjectType();
    v8 = sub_100010C2C();
    v10 = sub_10000EF40(v8, v9, v109);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_10000EF40(0xD00000000000001ALL, 0x8000000100012B10, v109);
    _os_log_impl(&_mh_execute_header, v4, v5, "Start (%{public}s.%{public}s)…", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v0[46] + OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterUpdateDelegate_wallpaperRepresentingCollectionsManager);
  v0[43] = v11;
  sub_1000107BC();
  sub_10000A8DC(&qword_1000205F8, &type metadata accessor for WKWallpaperRepresentingCollectionsManager);

  sub_100010A3C();
  v0[41] = v11;
  sub_100010A4C();
  if (v0[42] != v0[44])
  {
    v19 = v0[51];
    v105 = v0[45];
    v20 = (v19 + 16);
    v107 = (v19 + 32);
    v108 = (v19 + 8);
    v102 = (v0[48] + 8);
    while (1)
    {
      v22 = v0[53];
      v21 = v0[54];
      v23 = v0[50];
      v24 = sub_100010A6C();
      v25 = *v20;
      (*v20)(v21);
      v24(v0 + 37, 0);
      sub_100010A5C();
      (*v107)(v22, v21, v23);
      v26 = sub_10001074C();
      v27 = v0[53];
      if ((v26 & 1) == 0)
      {
        break;
      }

      (*v108)(v0[53], v0[50]);
LABEL_12:
      sub_100010A4C();
      if (v0[42] == v0[44])
      {
        goto LABEL_6;
      }
    }

    v28 = v0[52];
    v29 = v0[50];
    sub_10001071C();
    sub_10000A814((v0 + 2), (v0 + 7));
    (v25)(v28, v27, v29);
    v30 = sub_1000108AC();
    v31 = sub_100010A8C();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[52];
    v34 = v0[50];
    if (v32)
    {
      v94 = v0[49];
      v103 = v0[47];
      v35 = swift_slowAlloc();
      v109[0] = swift_slowAlloc();
      *v35 = 136446466;
      v93 = v33;
      v95 = v34;
      v36 = v0[11];
      sub_10000A784(v0 + 7, v0[10]);
      v97 = v31;
      v37 = sub_10001054C();
      v39 = v38;
      sub_10000A7C8(v0 + 7);
      v40 = sub_10000EF40(v37, v39, v109);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;
      sub_10001072C();
      v41 = sub_1000103EC();
      v43 = v42;
      (*v102)(v94, v103);
      v104 = *v108;
      (*v108)(v93, v95);
      v44 = sub_10000EF40(v41, v43, v109);

      *(v35 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v30, v97, "Using wallpaper (id: '%{public}s') as previewWallpaperRepresenting for collection %{public}s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v104 = *v108;
      (*v108)(v33, v34);
      sub_10000A7C8(v0 + 7);
    }

    v45 = v0[6];
    sub_10000A784(v0 + 2, v0[5]);
    v46 = sub_10001054C();
    if (*(v105 + 16))
    {
      v48 = v0[45];
      v49 = sub_100006E14(v46, v47);
      v51 = v50;

      if (v51)
      {
        v52 = *(*(v105 + 56) + 8 * v49);
        sub_1000057DC(v52, v0 + 27);
        if (v0[30])
        {
          sub_10000A76C((v0 + 27), (v0 + 22));
          v53 = v0[26];
          sub_10000A784(v0 + 22, v0[25]);
          sub_10001052C();
          v55 = v54;
          v56 = v0[6];
          sub_10000A784(v0 + 2, v0[5]);
          sub_10001052C();
          if (v57 <= v55)
          {
            sub_10000A814((v0 + 22), (v0 + 32));
            v76 = v52;
            v77 = sub_1000108AC();
            v78 = sub_100010A8C();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v109[0] = v101;
              *v79 = 136446466;
              v99 = v77;
              v80 = [v76 identifier];
              log = v78;
              v81 = sub_10001097C();
              v106 = v76;
              v83 = v82;

              v84 = sub_10000EF40(v81, v83, v109);

              *(v79 + 4) = v84;
              *(v79 + 12) = 2050;
              v85 = v0[36];
              sub_10000A784(v0 + 32, v0[35]);
              v76 = v106;
              sub_10001052C();
              v87 = v86;
              sub_10000A7C8(v0 + 32);
              *(v79 + 14) = v87;
              _os_log_impl(&_mh_execute_header, v99, log, "Using existing descriptor with identifier '%{public}s' since the content version matched '%{public}f'.", v79, 0x16u);
              sub_10000A7C8(v101);
            }

            else
            {

              sub_10000A7C8(v0 + 32);
            }

            v88 = v76;
            sub_1000109CC();
            if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v92 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1000109EC();
            }

            v89 = v0[53];
            v90 = v0[50];
            sub_1000109FC();

            v104(v89, v90);
            sub_10000A7C8(v0 + 22);
            goto LABEL_30;
          }

          sub_10000A7C8(v0 + 22);
        }

        else
        {

          sub_10000AC88((v0 + 27), &qword_1000205E8, &qword_100012330);
        }
      }
    }

    else
    {
    }

    sub_10000A814((v0 + 2), (v0 + 12));
    sub_10000A814((v0 + 2), (v0 + 17));
    v58 = sub_1000108AC();
    v59 = sub_100010A8C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v109[0] = v100;
      *v60 = 136446466;
      v61 = v0[16];
      sub_10000A784(v0 + 12, v0[15]);
      v98 = v59;
      v62 = sub_10001054C();
      v64 = v63;
      sub_10000A7C8(v0 + 12);
      v65 = sub_10000EF40(v62, v64, v109);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2050;
      v66 = v0[21];
      sub_10000A784(v0 + 17, v0[20]);
      sub_10001052C();
      v68 = v67;
      sub_10000A7C8(v0 + 17);
      *(v60 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v58, v98, "Creating new descriptor with identifier '%{public}s' for version '%{public}f'.", v60, 0x16u);
      sub_10000A7C8(v100);
    }

    else
    {

      sub_10000A7C8(v0 + 17);
      sub_10000A7C8(v0 + 12);
    }

    v69 = v0[53];
    sub_10001073C();
    v70 = sub_10001075C();
    v71 = sub_10001076C();
    v72 = sub_10000776C(v0 + 2, 0, v70 & 1, v71 & 1);

    v73 = v72;
    sub_1000109CC();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v91 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000109EC();
    }

    v74 = v0[53];
    v75 = v0[50];
    sub_1000109FC();

    v104(v74, v75);
LABEL_30:
    sub_10000A7C8(v0 + 2);
    goto LABEL_12;
  }

LABEL_6:
  v12 = v0[53];
  v13 = v0[54];
  v14 = v0[52];
  v15 = v0[49];
  v16 = v0[46];

  sub_100005F7C(v16);

  v17 = v0[1];

  return v17(&_swiftEmptyArrayStorage);
}

uint64_t sub_100008E80(uint64_t a1)
{
  v2[95] = v1;
  v2[94] = a1;
  v3 = sub_10001078C();
  v2[96] = v3;
  v4 = *(v3 - 8);
  v2[97] = v4;
  v5 = *(v4 + 64) + 15;
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v6 = sub_1000103DC();
  v2[101] = v6;
  v7 = *(v6 - 8);
  v2[102] = v7;
  v8 = *(v7 + 64) + 15;
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v9 = *(*(sub_100001FDC(&qword_1000205D8, &qword_100012320) - 8) + 64) + 15;
  v2[107] = swift_task_alloc();
  v10 = sub_10001048C();
  v2[108] = v10;
  v11 = *(v10 - 8);
  v2[109] = v11;
  v12 = *(v11 + 64) + 15;
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();

  return _swift_task_switch(sub_1000090A8, 0, 0);
}

uint64_t sub_1000090A8()
{
  v198 = v0;
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 760);
  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = v1;
  v4 = sub_1000108AC();
  v5 = sub_100010A8C();

  v195 = v0;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 760);
    v7 = swift_slowAlloc();
    *&v196 = swift_slowAlloc();
    *v7 = 136446466;
    swift_getObjectType();
    v8 = sub_100010C2C();
    v10 = sub_10000EF40(v8, v9, &v196);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_10000EF40(0xD00000000000001CLL, 0x8000000100012AF0, &v196);
    _os_log_impl(&_mh_execute_header, v4, v5, "Start (%{public}s.%{public}s)…", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 752);
  sub_1000105FC();
  v12 = sub_10001096C();

  v13 = &off_10001F000;
  v14 = [v11 objectForUserInfoKey:v12];

  if (v14)
  {
    sub_100010ADC();
    swift_unknownObjectRelease();
  }

  else
  {
    v196 = 0u;
    v197 = 0u;
  }

  v15 = v0 + 296;
  v16 = v197;
  *(v0 + 448) = v196;
  *(v0 + 464) = v16;
  if (*(v0 + 472))
  {
    if (swift_dynamicCast())
    {
      v181 = (v0 + 296);
      v17 = *(v0 + 872);
      v190 = *(v0 + 864);
      v18 = *(v0 + 856);
      v19 = *(v0 + 848);
      v20 = *(v0 + 840);
      v21 = *(v0 + 816);
      v22 = *(v0 + 808);
      v23 = *(v0 + 640);
      v24 = *(v0 + 648);
      v25 = [*(v0 + 752) assetDirectory];
      sub_1000103CC();

      sub_1000103BC();

      (*(v21 + 8))(v20, v22);
      sub_10001047C();
      if ((*(v17 + 48))(v18, 1, v190) != 1)
      {
        v42 = *(v0 + 888);
        v43 = *(v0 + 880);
        v44 = *(v0 + 872);
        v45 = *(v0 + 864);
        (*(v44 + 32))(v42, *(v0 + 856), v45);
        v46 = *(v44 + 16);
        v46(v43, v42, v45);
        v47 = sub_1000108AC();
        v48 = sub_100010A8C();
        v49 = os_log_type_enabled(v47, v48);
        v50 = *(v0 + 880);
        v51 = *(v0 + 872);
        v52 = *(v0 + 864);
        if (v49)
        {
          v192 = v46;
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *&v196 = v54;
          *v53 = 136446210;
          v185 = sub_10001046C();
          v56 = v55;
          v57 = *(v51 + 8);
          v57(v50, v52);
          v58 = sub_10000EF40(v185, v56, &v196);

          *(v53 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v47, v48, "Resolved wallpaperRepresentingIdentifier from wallpaper bundle '%{public}s'.", v53, 0xCu);
          sub_10000A7C8(v54);

          v46 = v192;
        }

        else
        {

          v57 = *(v51 + 8);
          v57(v50, v52);
        }

        v0 = v195;
        v59 = *(v195 + 888);
        v60 = *(v195 + 864);
        *(v195 + 320) = v60;
        *(v195 + 328) = sub_10000A8DC(&qword_100020608, &type metadata accessor for WKWallpaperBundle);
        v61 = sub_10000A924(v181);
        v46(v61, v59, v60);
        v187 = sub_10001046C();
        v31 = v62;
        v57(v59, v60);
        goto LABEL_29;
      }

      sub_10000AC88(*(v0 + 856), &qword_1000205D8, &qword_100012320);
      v15 = v0 + 296;
      v13 = &off_10001F000;
    }
  }

  else
  {
    sub_10000AC88(v0 + 448, &qword_1000205E0, &qword_100012328);
  }

  v26 = *(v0 + 752);
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  sub_10001060C();
  v27 = sub_10001096C();

  v28 = [v26 v13[125]];

  if (v28)
  {
    sub_100010ADC();
    swift_unknownObjectRelease();
  }

  else
  {
    v196 = 0u;
    v197 = 0u;
  }

  v29 = v197;
  *(v0 + 480) = v196;
  *(v0 + 496) = v29;
  if (*(v0 + 504))
  {
    if (swift_dynamicCast())
    {
      v30 = *(v0 + 704);
      v31 = *(v0 + 712);

      v32 = sub_1000108AC();
      v33 = sub_100010A8C();

      v181 = v15;
      v187 = v30;
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v196 = v35;
        *v34 = 136446210;
        *(v34 + 4) = sub_10000EF40(v30, v31, &v196);
        _os_log_impl(&_mh_execute_header, v32, v33, "Resolved wallpaperRepresentingIdentifier from userInfo '%{public}s'.", v34, 0xCu);
        sub_10000A7C8(v35);
      }

LABEL_29:
      v63 = *(v0 + 760);

      *(v0 + 728) = *(v63 + OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterUpdateDelegate_wallpaperRepresentingCollectionsManager);
      sub_1000107BC();
      sub_10000A8DC(&qword_1000205F0, &type metadata accessor for WKWallpaperRepresentingCollectionsManager);

      sub_1000109BC();
      sub_10000A8DC(&qword_1000205F8, &type metadata accessor for WKWallpaperRepresentingCollectionsManager);
      sub_100010A4C();
      if (*(v0 + 696) == *(v0 + 720))
      {
LABEL_33:

        v72 = *(v0 + 688);

        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        v73 = v187;
      }

      else
      {
        v64 = *(v0 + 776);
        v65 = (v64 + 16);
        v184 = v31;
        v186 = (v64 + 32);
        v182 = (v64 + 8);
        while (1)
        {
          v66 = *(v0 + 792);
          v67 = *(v0 + 784);
          v68 = *(v0 + 768);
          v69 = sub_100010A6C();
          (*v65)(v66);
          v69(v0 + 576, 0);
          sub_100010A5C();
          v70 = *v186;
          v71 = v68;
          v31 = v184;
          (*v186)(v67, v66, v71);
          v200._countAndFlagsBits = v187;
          v200._object = v184;
          if (sub_10001077C(v200))
          {
            break;
          }

          (*v182)(*(v0 + 784), *(v0 + 768));
          sub_100010A4C();
          if (*(v0 + 696) == *(v0 + 720))
          {
            goto LABEL_33;
          }
        }

        v91 = *(v0 + 800);
        v92 = *(v0 + 784);
        v93 = *(v0 + 768);

        v94 = *(v0 + 688);

        v70(v91, v92, v93);
        v73 = v187;
        sub_10001079C();
        (*v182)(v91, v93);
        if (*(v0 + 120))
        {
          sub_10000A76C((v0 + 96), v0 + 56);
          v95 = *(v0 + 88);
          sub_10000A784((v0 + 56), *(v0 + 80));
          v74 = v181;
          if (sub_10001051C())
          {
            sub_10000A7C8((v0 + 56));
            goto LABEL_35;
          }

          sub_10000AD30(v181, v0 + 176, &qword_1000205E8, &qword_100012330);
          if (*(v0 + 200))
          {
            v96 = *(v0 + 208);
            sub_10000A784((v0 + 176), *(v0 + 200));
            sub_10001052C();
            v98 = v97;
            sub_10000A7C8((v0 + 176));
            v99 = *(v0 + 88);
            sub_10000A784((v0 + 56), *(v0 + 80));
            sub_10001052C();
            if (v98 < v100)
            {
              sub_10000A814(v0 + 56, v0 + 216);

              v101 = sub_1000108AC();
              v102 = sub_100010A8C();

              if (os_log_type_enabled(v101, v102))
              {
                v103 = swift_slowAlloc();
                v104 = swift_slowAlloc();
                *&v196 = v104;
                *v103 = 136446722;
                *(v103 + 4) = sub_10000EF40(v187, v184, &v196);
                *(v103 + 12) = 2050;
                *(v103 + 14) = v98;
                *(v103 + 22) = 2050;
                v105 = *(v0 + 248);
                sub_10000A784((v0 + 216), *(v0 + 240));
                sub_10001052C();
                v107 = v106;
                sub_10000A7C8((v0 + 216));
                *(v103 + 24) = v107;
                _os_log_impl(&_mh_execute_header, v101, v102, "Updated configuration needed for '%{public}s', existingContentVersion '%{public}f', currentContentVersion '%{public}f'.", v103, 0x20u);
                sub_10000A7C8(v104);
              }

              else
              {

                sub_10000A7C8((v0 + 216));
              }

              v122 = *(v0 + 832);
              v123 = *(v0 + 824);
              v124 = [objc_opt_self() mutableConfiguration];
              v125 = *(v0 + 88);
              sub_10000A784((v0 + 56), *(v0 + 80));
              v126 = v124;
              v127 = [v126 assetDirectory];
              sub_1000103CC();

              sub_10001050C();
              v137 = *(v0 + 832);
              v138 = *(v0 + 752);
              v139 = *(*(v0 + 816) + 8);
              v139(*(v0 + 824), *(v0 + 808));
              v140 = sub_10001039C();
              v142 = v141;
              *(v0 + 744) = 0;
              v143 = [v138 loadUserInfoWithError:v0 + 744];
              v144 = *(v0 + 744);
              if (v143)
              {
                v145 = v143;
                v183 = v139;
                v191 = v126;
                v146 = sub_10001095C();
                v147 = v144;

                *(v0 + 656) = sub_1000105FC();
                *(v0 + 664) = v148;
                sub_100010B0C();
                *(v0 + 632) = &type metadata for String;
                *(v0 + 608) = v140;
                *(v0 + 616) = v142;
                sub_10000A878((v0 + 608), (v0 + 416));
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v196 = v146;
                sub_100007144((v0 + 416), v0 + 336, isUniquelyReferenced_nonNull_native);
                sub_10000A888(v0 + 336);
                v150 = v196;
                *(v0 + 672) = sub_10001060C();
                *(v0 + 680) = v151;
                sub_100010B0C();
                v152 = *(v0 + 88);
                sub_10000A784((v0 + 56), *(v0 + 80));
                v153 = sub_10001054C();
                *(v0 + 568) = &type metadata for String;
                *(v0 + 544) = v153;
                *(v0 + 552) = v154;
                sub_10000A878((v0 + 544), (v0 + 512));
                v155 = swift_isUniquelyReferenced_nonNull_native();
                *&v196 = v150;
                sub_100007144((v0 + 512), v0 + 376, v155);
                sub_10000A888(v0 + 376);
                isa = sub_10001094C().super.isa;

                *(v0 + 736) = 0;
                v157 = [v126 storeUserInfo:isa error:v0 + 736];

                v158 = *(v0 + 736);
                if (v157)
                {
                  v159 = v158;

                  sub_10000A814(v0 + 56, v0 + 136);
                  sub_10000A814(v0 + 56, v0 + 16);
                  v160 = sub_1000108AC();
                  v161 = sub_100010A8C();
                  v162 = os_log_type_enabled(v160, v161);
                  v163 = *(v0 + 832);
                  v164 = *(v0 + 808);
                  if (v162)
                  {
                    v165 = swift_slowAlloc();
                    v166 = swift_slowAlloc();
                    *&v196 = v166;
                    *v165 = 136446466;
                    v167 = *(v0 + 168);
                    sub_10000A784((v0 + 136), *(v0 + 160));
                    v189 = v163;
                    v168 = sub_10001054C();
                    v170 = v169;
                    sub_10000A7C8((v0 + 136));
                    v171 = sub_10000EF40(v168, v170, &v196);

                    *(v165 + 4) = v171;
                    *(v165 + 12) = 2050;
                    v172 = *(v0 + 48);
                    sub_10000A784((v0 + 16), *(v0 + 40));
                    sub_10001052C();
                    v174 = v173;
                    sub_10000A7C8((v0 + 16));
                    *(v165 + 14) = v174;
                    _os_log_impl(&_mh_execute_header, v160, v161, "Updated configuration for wallpaper identifier '%{public}s' to contentVersion '%{public}f'.", v165, 0x16u);
                    sub_10000A7C8(v166);

                    v183(v189, v164);
                  }

                  else
                  {

                    v139(v163, v164);
                    sub_10000A7C8((v0 + 16));
                    sub_10000A7C8((v0 + 136));
                  }

                  sub_10000AC88(v181, &qword_1000205E8, &qword_100012330);
                  sub_10000A7C8((v0 + 56));
                  goto LABEL_39;
                }

                v178 = *(v0 + 832);
                v179 = *(v0 + 808);
                v180 = v158;

                sub_10001038C();
                swift_willThrow();

                v139(v178, v179);
              }

              else
              {
                v175 = v0;
                v194 = *(v0 + 832);
                v176 = *(v0 + 808);
                v177 = v144;

                sub_10001038C();

                swift_willThrow();
                v0 = v175;
                v139(v194, v176);
              }

              sub_10000A814(v0 + 56, v0 + 256);

              swift_errorRetain();
              v128 = sub_1000108AC();
              v129 = sub_100010A7C();

              if (os_log_type_enabled(v128, v129))
              {
                v130 = swift_slowAlloc();
                v131 = swift_slowAlloc();
                v193 = swift_slowAlloc();
                *&v196 = v193;
                *v130 = 136446722;
                v132 = sub_10000EF40(v187, v184, &v196);

                *(v130 + 4) = v132;
                *(v130 + 12) = 2050;
                v133 = *(v0 + 288);
                sub_10000A784((v0 + 256), *(v0 + 280));
                sub_10001052C();
                v135 = v134;
                sub_10000A7C8((v0 + 256));
                *(v130 + 14) = v135;
                *(v130 + 22) = 2114;
                swift_errorRetain();
                v136 = _swift_stdlib_bridgeErrorToNSError();
                *(v130 + 24) = v136;
                *v131 = v136;
                _os_log_impl(&_mh_execute_header, v128, v129, "Failed to update configuration for identifier '%{public}s' to contentVersion '%{public}f'  with error, using existing configuration '%{public}@'.", v130, 0x20u);
                sub_10000AC88(v131, &qword_100020600, &qword_100012338);

                sub_10000A7C8(v193);
              }

              else
              {

                sub_10000A7C8((v0 + 256));
              }

              goto LABEL_56;
            }

            v108 = sub_1000108AC();
            v118 = sub_100010A8C();

            if (os_log_type_enabled(v108, v118))
            {
              v119 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              *&v196 = v111;
              *v119 = 136446466;
              v120 = sub_10000EF40(v187, v184, &v196);

              *(v119 + 4) = v120;
              *(v119 + 12) = 2050;
              *(v119 + 14) = v98;
              v113 = "No update needed for '%{public}s', contentVersion matches '%{public}f'.";
              v114 = v118;
              v115 = v108;
              v116 = v119;
              v117 = 22;
              goto LABEL_53;
            }
          }

          else
          {
            sub_10000AC88(v0 + 176, &qword_1000205E8, &qword_100012330);

            v108 = sub_1000108AC();
            v109 = sub_100010A8C();

            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              *&v196 = v111;
              *v110 = 136446210;
              v112 = sub_10000EF40(v187, v184, &v196);

              *(v110 + 4) = v112;
              v113 = "No update needed for %{public}s, no contentVersion could be found.";
              v114 = v109;
              v115 = v108;
              v116 = v110;
              v117 = 12;
LABEL_53:
              _os_log_impl(&_mh_execute_header, v115, v114, v113, v116, v117);
              sub_10000A7C8(v111);

LABEL_55:

LABEL_56:
              sub_10000AC88(v181, &qword_1000205E8, &qword_100012330);
              v121 = *(v0 + 752);
              sub_10000A7C8((v0 + 56));
              v191 = *(v0 + 752);
              goto LABEL_39;
            }
          }

          goto LABEL_55;
        }
      }

      sub_10000AC88(v0 + 96, &qword_1000205E8, &qword_100012330);
      v74 = v181;
LABEL_35:

      v75 = sub_1000108AC();
      v76 = sub_100010A8C();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v196 = v78;
        *v77 = 136446210;
        v79 = sub_10000EF40(v73, v31, &v196);

        *(v77 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v75, v76, "No updated wallpaper asset found for identifier %{public}s, returning current poster configuration.", v77, 0xCu);
        sub_10000A7C8(v78);
      }

      else
      {
      }

      sub_10000AC88(v74, &qword_1000205E8, &qword_100012330);
      v191 = *(v0 + 752);
      goto LABEL_39;
    }
  }

  else
  {
    sub_10000AC88(v0 + 480, &qword_1000205E0, &qword_100012328);
  }

  v36 = sub_1000108AC();
  v37 = sub_100010A7C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Unable to resolve wallpaperRepresentingIdentifier.", v38, 2u);
  }

  v39 = v0;
  v40 = *(v0 + 752);

  sub_10000AC88(v15, &qword_1000205E8, &qword_100012330);
  v41 = v40;
  v0 = v39;
  v191 = *(v39 + 752);
LABEL_39:
  v80 = *(v0 + 888);
  v81 = *(v0 + 880);
  v82 = *(v0 + 856);
  v83 = *(v0 + 848);
  v84 = *(v195 + 840);
  v85 = *(v195 + 832);
  v86 = *(v195 + 824);
  v87 = *(v195 + 800);
  v88 = *(v195 + 792);
  v188 = *(v195 + 784);
  sub_10000658C(*(v195 + 760));

  v89 = *(v195 + 8);

  return v89(v191);
}

uint64_t sub_10000A76C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10000A784(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000A7C8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000A814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000A878(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000A8DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10000A924(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000A9E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000AA40()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AA90()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000AB50;

  return sub_1000062B0(v2, v3, v5, v4);
}

uint64_t sub_10000AB50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000AC48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AC88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001FDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000ACE8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000AD30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001FDC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000AE08(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000108CC();
  sub_10000B00C(v3, a2);
  sub_100004CC4(v3, a2);
  return sub_1000108BC();
}

uint64_t sub_10000AED8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1000108CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001084C();
  sub_10000B00C(v12, a2);
  sub_100004CC4(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = sub_100004CC4(v7, a4);
  (*(v8 + 16))(v11, v13, v7);
  return sub_10001082C();
}

uint64_t *sub_10000B00C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_10000B070(id a1)
{
  if (a1)
  {
    [a1 duration];
    [a1 delay];
  }

  v2 = [a1 timingFunction];
  if (!v2)
  {
    v2 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  }

  sub_10000B15C();
  sub_1000108EC();

  return v2;
}

uint64_t sub_10000B15C()
{
  v3 = 0;
  v2 = 0;
  [v0 getControlPointAtIndex:1 values:&v3];
  [v0 getControlPointAtIndex:2 values:&v2];
  return sub_1000108DC();
}

id sub_10000B1F4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editor] = 0;
  v2 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_environmentSnapshot;
  v3 = sub_1000105BC();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment] = 0;
  *&v0[OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController] = 0;
  v4 = qword_100020060;
  v5 = v0;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1000108CC();
  sub_100004CC4(v6, qword_100020D08);
  v7 = v5;
  v8 = sub_1000108AC();
  v9 = sub_100010A8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v10 = 136446466;
    swift_getObjectType();

    v11 = sub_100010C2C();
    v13 = sub_10000EF40(v11, v12, &v16);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10000EF40(0x292874696E69, 0xE600000000000000, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%{public}s.%{public}s)…", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10001062C();
  sub_10001061C();

  v17.receiver = v7;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, "init");
  sub_10000561C(v14);

  return v14;
}

uint64_t type metadata accessor for CollectionsPosterEditDelegate()
{
  result = qword_100020670;
  if (!qword_100020670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B554()
{
  sub_100003288();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10000B5F4(void *a1, uint64_t a2)
{
  v20 = a2;
  v19[0] = a1;
  v2 = sub_10001081C();
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001084C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v11 = sub_100004CC4(v6, qword_100020D68);
  (*(v7 + 16))(v10, v11, v6);
  sub_10001080C();
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = sub_10001083C();
  v14 = sub_100010AAC();
  v15 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v15, "CollectionsPosterEditDelegate.Initialize", "", v12, 2u);
  sub_10000B884(v19[1], v19[0], v20);
  v16 = sub_100010A9C();
  v17 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v16, v17, "CollectionsPosterEditDelegate.Initialize", "", v12, 2u);

  (*(v21 + 8))(v5, v22);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10000B884(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100001FDC(&qword_100020528, &qword_100012278);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editor);
  *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editor) = a2;

  v14 = type metadata accessor for CollectionsPosterEditingEnvironment();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment] = a3;
  v35.receiver = v15;
  v35.super_class = v14;
  v16 = a2;
  swift_unknownObjectRetain();
  v17 = objc_msgSendSuper2(&v35, "init");
  v18 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment;
  v19 = *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment);
  *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment) = v17;
  v20 = v17;

  v21 = sub_10000EE28();
  sub_1000051A4(v21, 0, v12);
  v22 = sub_1000105BC();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v12, 0, 1, v22);
  v24 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_environmentSnapshot;
  swift_beginAccess();
  sub_100004D54(v12, a1 + v24);
  swift_endAccess();
  v25 = sub_1000106BC();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = v16;
  v29 = sub_10001067C();
  v30 = *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController);
  *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController) = v29;

  v32 = *(a1 + v18);
  if (v32)
  {
    sub_10000AD30(a1 + v24, v10, &qword_100020528, &qword_100012278);
    result = (*(v23 + 48))(v10, 1, v22);
    if (result != 1)
    {
      v33 = v32;
      sub_10001068C();

      return (*(v23 + 8))(v10, v22);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BBBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v50 = a1;
  v7 = sub_100001FDC(&qword_100020528, &qword_100012278);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v47 - v12;
  v14 = sub_10001081C();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001084C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v23 = sub_100004CC4(v18, qword_100020D68);
  v51 = v19;
  v52 = v18;
  (*(v19 + 16))(v22, v23, v18);
  sub_10001080C();
  v24 = swift_slowAlloc();
  *v24 = 0;
  v49 = v22;
  v25 = sub_10001083C();
  v26 = sub_100010AAC();
  v53 = v17;
  v27 = sub_1000107FC();
  v47 = v25;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v27, "CollectionsPosterEditDelegate.Update", "", v24, 2u);
  v28 = type metadata accessor for CollectionsPosterEditingEnvironment();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment] = a2;
  v56.receiver = v29;
  v56.super_class = v28;
  swift_unknownObjectRetain();
  v30 = objc_msgSendSuper2(&v56, "init");
  v31 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment;
  v32 = *(v4 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment);
  *(v4 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment) = v30;
  v33 = v30;

  v34 = sub_10000EE28();
  v48 = a3;
  sub_1000051A4(v34, [a3 animationSettings], v13);
  v35 = sub_1000105BC();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v13, 0, 1, v35);
  v37 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_environmentSnapshot;
  swift_beginAccess();
  sub_100004D54(v13, v4 + v37);
  result = swift_endAccess();
  if (!*(v4 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {
    __break(1u);
    goto LABEL_8;
  }

  v39 = *(v4 + v31);
  if (!v39)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_10000AD30(v4 + v37, v11, &qword_100020528, &qword_100012278);
  result = (*(v36 + 48))(v11, 1, v35);
  if (result != 1)
  {

    v40 = v39;
    v41 = [v48 animationSettings];
    sub_1000106AC();

    (*(v36 + 8))(v11, v35);
    v42 = sub_100010A9C();
    v43 = v53;
    v44 = sub_1000107FC();
    v45 = v42;
    v46 = v47;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, v45, v44, "CollectionsPosterEditDelegate.Update", "", v24, 2u);

    (*(v54 + 8))(v43, v55);
    return (*(v51 + 8))(v49, v52);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10000C158()
{
  v0 = sub_10001081C();
  v19 = *(v0 - 8);
  v20 = v0;
  v1 = *(v19 + 64);
  __chkstk_darwin(v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001084C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v9 = sub_100004CC4(v4, qword_100020D68);
  (*(v5 + 16))(v8, v9, v4);
  sub_10001080C();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_10001083C();
  v12 = sub_100010AAC();
  v13 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "CollectionsPosterEditDelegate.Looks", "", v10, 2u);
  sub_10000C3F4(v18[1], &v21);
  v14 = sub_100010A9C();
  v15 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v14, v15, "CollectionsPosterEditDelegate.Looks", "", v10, 2u);

  v16 = v21;

  (*(v19 + 8))(v3, v20);
  (*(v5 + 8))(v8, v4);
  return v16;
}

uint64_t sub_10000C3F4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (!*(result + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {
    goto LABEL_19;
  }

  v4 = *(result + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController);

  v5 = sub_10001066C();

  if (v5 >> 62)
  {
    v6 = sub_100010B9C();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_16:

LABEL_17:
    *a2 = _swiftEmptyArrayStorage;
    return result;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  result = sub_100010B6C();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v12 = a2;
    v13 = v2;
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_100010B2C();
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      v10 = [v9 identifier];
      if (!v10)
      {
        sub_10001097C();
        v10 = sub_10001096C();
      }

      v11 = [v9 displayName];
      if (!v11)
      {
        sub_10001097C();
        v11 = sub_10001096C();
      }

      ++v7;
      [objc_allocWithZone(PREditingLook) initWithIdentifier:v10 displayName:v11];
      swift_unknownObjectRelease();

      sub_100010B4C();
      v8 = _swiftEmptyArrayStorage[2];
      sub_100010B7C();
      sub_100010B8C();
      sub_100010B5C();
    }

    while (v6 != v7);

    a2 = v12;
    goto LABEL_17;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_10000C69C()
{
  v1 = sub_10001081C();
  v18 = *(v1 - 8);
  v19 = v1;
  v2 = *(v18 + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001084C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v10 = sub_100004CC4(v5, qword_100020D68);
  (*(v6 + 16))(v9, v10, v5);
  sub_10001080C();
  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = sub_10001083C();
  v13 = sub_100010AAC();
  v14 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v14, "CollectionsPosterEditDelegate.InitialLook", "", v11, 2u);
  if (*(v0 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {
    v15 = *(v0 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController);

    sub_10001065C();

    v16 = sub_100010A9C();
    v17 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v16, v17, "CollectionsPosterEditDelegate.InitialLook", "", v11, 2u);

    (*(v18 + 8))(v4, v19);
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }
}

Class sub_10000CA58(void *a1, uint64_t a2, void *a3, const char *a4, void (*a5)(uint64_t))
{
  v8 = a3;
  v9 = a1;
  sub_10000CB24(v8, a4, a5);
  v11 = v10;

  if (v11)
  {
    sub_10000ACE8(0, &qword_1000206F0, UIMenuElement_ptr);
    v12.super.isa = sub_1000109DC().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  return v12.super.isa;
}

void sub_10000CB24(uint64_t a1, const char *a2, void (*a3)(uint64_t))
{
  v21 = a1;
  v22 = a3;
  v24 = a2;
  v23 = sub_10001081C();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001084C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v13 = sub_100004CC4(v8, qword_100020D68);
  (*(v9 + 16))(v12, v13, v8);
  sub_10001080C();
  v14 = swift_slowAlloc();
  *v14 = 0;
  v15 = sub_10001083C();
  v16 = sub_100010AAC();
  v17 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v17, v24, "", v14, 2u);
  if (*(v3 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {
    v18 = *(v3 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController);

    v22(v21);

    v19 = sub_100010A9C();
    v20 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v19, v20, v24, "", v14, 2u);

    (*(v4 + 8))(v7, v23);
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000CEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = a3;
  v24 = sub_10001081C();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v24);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001084C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v13 = sub_100004CC4(v8, qword_100020D68);
  (*(v9 + 16))(v12, v13, v8);
  sub_10001080C();
  v14 = swift_slowAlloc();
  *v14 = 0;
  v15 = sub_10001083C();
  v16 = sub_100010AAC();
  v17 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v17, "CollectionsPosterEditDelegate.PopulateViews", "", v14, 2u);
  if (*(v25 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {
    v18 = type metadata accessor for CollectionsPosterEditorLookViewProviding();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC17CollectionsPoster40CollectionsPosterEditorLookViewProviding_posterKitViewProviding] = a2;
    v26.receiver = v19;
    v26.super_class = v18;

    swift_unknownObjectRetain();
    v20 = objc_msgSendSuper2(&v26, "init", v22, v23);
    sub_10001069C();

    LOBYTE(v20) = sub_100010A9C();
    v21 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v20, v21, "CollectionsPosterEditDelegate.PopulateViews", "", v14, 2u);

    (*(v4 + 8))(v7, v24);
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000D2B0(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(uint64_t, uint64_t))
{
  v24 = a2;
  v25 = a4;
  v23 = a1;
  v26 = sub_10001081C();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001084C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v14 = sub_100004CC4(v9, qword_100020D68);
  (*(v10 + 16))(v13, v14, v9);
  sub_10001080C();
  v15 = swift_slowAlloc();
  *v15 = 0;
  v16 = sub_10001083C();
  v17 = sub_100010AAC();
  v18 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v18, a3, "", v15, 2u);
  if (*(v27 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {
    v19 = *(v27 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController);

    v25(v23, v24);

    v20 = sub_100010A9C();
    v21 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v20, v21, a3, "", v15, 2u);

    (*(v5 + 8))(v8, v26);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000D608(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10001085C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_10001081C();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10000D73C, 0, 0);
}

uint64_t sub_10000D73C()
{
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_10001084C();
  v0[12] = sub_100004CC4(v2, qword_100020D68);
  sub_10001080C();
  v3 = sub_10001083C();
  v4 = sub_100010AAC();
  if (sub_100010ABC())
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "CollectionsPosterEditDelegate.Finalize", "", v6, 2u);
  }

  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[3];

  (*(v11 + 16))(v8, v9, v10);
  v13 = sub_10001088C();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[13] = sub_10001087C();
  v16 = *(v11 + 8);
  v0[14] = v16;
  v0[15] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17 = v16(v9, v10);
  v20 = *(v12 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController);
  v0[16] = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = *(v0[3] + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment);
  v0[17] = v21;
  if (!v21)
  {
LABEL_11:
    __break(1u);
    return WKWallpaperPosterEditorController.editorFinalize(_:with:)(v17, v18, v19);
  }

  v22 = sub_10000EE28();
  v23 = async function pointer to WKWallpaperPosterEditorController.editorFinalize(_:with:)[1];

  v24 = v21;
  v25 = swift_task_alloc();
  v0[18] = v25;
  *v25 = v0;
  v25[1] = sub_10000D990;
  v17 = v0[2];
  v18 = v24;
  v19 = v22;

  return WKWallpaperPosterEditorController.editorFinalize(_:with:)(v17, v18, v19);
}

uint64_t sub_10000D990()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v5 = *v0;

  return _swift_task_switch(sub_10000DAC0, 0, 0);
}

uint64_t sub_10000DAC0()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = sub_10001083C();
  sub_10001086C();
  v5 = sub_100010A9C();
  if (sub_100010ABC())
  {
    v6 = v0[13];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];

    sub_10001089C();

    if ((*(v8 + 88))(v7, v9) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[5] + 8))(v0[6], v0[4]);
      v10 = "";
    }

    v11 = v0[9];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v13, "CollectionsPosterEditDelegate.Finalize", v10, v12, 2u);
  }

  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[13];
  v18 = v0[10];
  v17 = v0[11];
  v19 = v0[9];
  v21 = v0[6];
  v20 = v0[7];

  v15(v19, v20);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10000DE04(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000DEC8;

  return sub_10000D608(v6);
}

uint64_t sub_10000DEC8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10000E020()
{
  v0 = sub_10001081C();
  v18 = *(v0 - 8);
  v19 = v0;
  v1 = *(v18 + 64);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001084C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v9 = sub_100004CC4(v4, qword_100020D68);
  (*(v5 + 16))(v8, v9, v4);
  sub_10001080C();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_10001083C();
  v12 = sub_100010AAC();
  v13 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "CollectionsPosterEditDelegate.Invalidate", "", v10, 2u);
  sub_10000E2B0(v17);
  v14 = sub_100010A9C();
  v15 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v14, v15, "CollectionsPosterEditDelegate.Invalidate", "", v10, 2u);

  (*(v18 + 8))(v3, v19);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000E2B0(uint64_t a1)
{
  v2 = sub_100001FDC(&qword_100020528, &qword_100012278);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController;
  if (*(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {
    v8 = *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController);

    sub_10001064C();

    v9 = *(a1 + v7);
    *(a1 + v7) = 0;

    v10 = *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment);
    *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment) = 0;

    v11 = sub_1000105BC();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_environmentSnapshot;
    swift_beginAccess();
    sub_100004D54(v6, a1 + v12);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E468(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000E4B4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E4C4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E50C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000AB50;

  return sub_10000DE04(v2, v3, v4);
}

uint64_t sub_10000E5C0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000ADA8;

  return v7();
}

uint64_t sub_10000E6AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000AB50;

  return v8();
}

uint64_t sub_10000E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001FDC(&qword_1000205D0, &qword_1000122F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000AD30(a3, v25 - v11, &qword_1000205D0, &qword_1000122F0);
  v13 = sub_100010A2C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000AC88(v12, &qword_1000205D0, &qword_1000122F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100010A1C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_100010A0C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_10001098C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10000AC88(a3, &qword_1000205D0, &qword_1000122F0);

    return v23;
  }

LABEL_8:
  sub_10000AC88(a3, &qword_1000205D0, &qword_1000122F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000EA90(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EB88;

  return v7(a1);
}

uint64_t sub_10000EB88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000EC80()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ECB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000ADA8;

  return sub_10000EA90(a1, v5);
}

uint64_t sub_10000ED70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000AB50;

  return sub_10000EA90(a1, v5);
}

unint64_t sub_10000EE28()
{
  result = qword_1000206E8;
  if (!qword_1000206E8)
  {
    type metadata accessor for CollectionsPosterEditingEnvironment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206E8);
  }

  return result;
}

uint64_t sub_10000EE80(void (*a1)(void))
{
  a1();

  return sub_100010C2C();
}

uint64_t sub_10000EEE4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10000EF40(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10000EF40(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000F00C(v11, 0, 0, 1, a1, a2);
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
    sub_10000A9E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000A7C8(v11);
  return v7;
}

unint64_t sub_10000F00C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000F118(a5, a6);
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
    result = sub_100010B3C();
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

char *sub_10000F118(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000F164(a1, a2);
  sub_10000F294(&off_100018AE0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000F164(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000F380(v5, 0);
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

  result = sub_100010B3C();
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
        v10 = sub_1000109AC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000F380(v10, 0);
        result = sub_100010B1C();
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

uint64_t sub_10000F294(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000F3F4(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000F380(uint64_t a1, uint64_t a2)
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

  sub_100001FDC(&unk_100020700, &qword_100012428);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000F3F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001FDC(&unk_100020700, &qword_100012428);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_10000F4E8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10000F51C()
{
  v1 = sub_10001042C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 backlightProgress];
  if (v6 == 0.0)
  {
    (*(v2 + 104))(v5, enum case for WKPosterWakeState.ScreenState.off(_:), v1);
  }

  else
  {
    [v0 backlightProgress];
    if (v7 == 1.0)
    {
      v8 = &enum case for WKPosterWakeState.ScreenState.on(_:);
    }

    else
    {
      v8 = &enum case for WKPosterWakeState.ScreenState.transitioning(_:);
    }

    (*(v2 + 104))(v5, *v8, v1);
  }

  [v0 backlightProgress];
  return sub_10001043C();
}

uint64_t sub_10000F654()
{
  v1 = sub_1000104CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 unlockProgress];
  if (v6 == 0.0)
  {
    (*(v2 + 104))(v5, enum case for WKPosterUnlockState.ScreenState.locked(_:), v1);
  }

  else
  {
    [v0 unlockProgress];
    if (v7 == 1.0)
    {
      v8 = &enum case for WKPosterUnlockState.ScreenState.unlocked(_:);
    }

    else
    {
      v8 = &enum case for WKPosterUnlockState.ScreenState.transitioning(_:);
    }

    (*(v2 + 104))(v5, *v8, v1);
  }

  [v0 unlockProgress];
  return sub_1000104DC();
}

id PRRenderer.wk_extendRenderSession(forReason:)()
{
  v1 = sub_10001096C();
  v2 = [v0 extendRenderingSessionForReason:v1];

  v3 = type metadata accessor for CollectionsPosterInvalidatable();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC17CollectionsPoster30CollectionsPosterInvalidatable_posterKitInvalidatable] = v2;
  v6.receiver = v4;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, "init");
}

Swift::Void __swiftcall PRRenderer.wk_setPreferredProminentColor(_:)(UIColor_optional a1)
{
  isa = a1.value.super.isa;
  v3 = swift_allocObject();
  *(v3 + 16) = isa;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10000FA68;
  *(v4 + 24) = v3;
  v8[4] = sub_100010300;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001033C;
  v8[3] = &unk_100018D50;
  v5 = _Block_copy(v8);
  v6 = isa;

  [v1 updatePreferences:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_10000FA30()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FA78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id PREditor.wk_currentLook.getter()
{
  v1 = [v0 currentLook];

  return v1;
}

uint64_t PREditor.wk_setAdaptiveTimeMode(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100010280;
  *(v5 + 24) = v4;
  v8[4] = sub_100010290;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001033C;
  v8[3] = &unk_100018DC8;
  v6 = _Block_copy(v8);

  [v2 updatePreferences:v6];
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000FDF4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, v7);

  return swift_unknownObjectRelease();
}

uint64_t PREditor.wk_setMaximumAdaptiveTimeHeight(_:)(double a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000102C8;
  *(v4 + 24) = v3;
  v8[4] = sub_100010300;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001033C;
  v8[3] = &unk_100018E40;
  v5 = _Block_copy(v8);

  [v1 updatePreferences:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010290()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}