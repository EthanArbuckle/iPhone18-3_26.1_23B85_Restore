uint64_t sub_1002FA7C0()
{

  sub_100009DCC(&qword_1006ED030);
  v1._countAndFlagsBits = sub_100572978();
  sub_100572A98(v1);

  return 0x3D676E69646E6942;
}

void *sub_1002FA844(uint64_t a1)
{
  v2 = v1;
  v20 = v2;
  v2[2] = 0;
  v2 += 2;
  *(v2 + 16) = 0;
  v2[3] = _swiftEmptyArrayStorage;
  v4 = v2 + 3;
  v2[1] = 0;
  v5 = *(a1 + 16);
  v19 = v2 + 2;
  swift_beginAccess();
  v18 = v2;
  swift_beginAccess();
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v21 = v5;
      v22 = *v6;
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = v4;
      v11 = *(*(&v22 + 1) + 24);
      swift_unknownObjectRetain_n();

      v11(sub_1002FAD24, v9, ObjectType, *(&v22 + 1));
      v4 = v10;

      swift_beginAccess();
      v12 = v20[5];
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20[5] = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_1000D023C(0, v12[2] + 1, 1, v12);
        *v10 = v12;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        v12 = sub_1000D023C((v14 > 1), v15 + 1, 1, v12);
      }

      v12[2] = v15 + 1;
      *&v12[2 * v15 + 4] = v22;
      *v10 = v12;
      swift_endAccess();
      if (((*(*(&v22 + 1) + 40))(ObjectType, *(&v22 + 1)) & 1) != 0 && (*v19 & 1) == 0 && (*v19 = 1, (v16 = *v18) != 0))
      {

        v16(v7, *(&v22 + 1));
        swift_unknownObjectRelease_n();
        sub_1000F3E14(v16);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v6;
      v5 = v21 - 1;
    }

    while (v21 != 1);
  }

  return v20;
}

uint64_t sub_1002FAADC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002FAB1C()
{

  return swift_deallocObject();
}

uint64_t sub_1002FAB64(uint64_t a1)
{
  result = sub_1002FACD8(&qword_1006ED038, type metadata accessor for GenericRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FABE0(uint64_t a1)
{
  result = sub_1002FACD8(&qword_1006ED040, type metadata accessor for CompoundRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FAC5C(uint64_t a1)
{
  result = sub_1002FACD8(&qword_1006ED048, type metadata accessor for BindingRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FACD8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Logger.sharePlayTogether.unsafeMutableAddressor()
{
  if (qword_1006E5008 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();

  return sub_10000C49C(v0, static Logger.sharePlayTogether);
}

uint64_t SharePlayTogetherSession.isEqual(_:)(uint64_t a1)
{
  sub_10000CC8C(a1, v6, &qword_1006EA040);
  if (!v7)
  {
    sub_10001036C(v6, &qword_1006EA040);
    goto LABEL_9;
  }

  type metadata accessor for SharePlayTogetherSession(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if (*&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier) && *&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8))
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_100574498();
  }

  return v3 & 1;
}

uint64_t SharePlayTogetherSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier);

  return v1;
}

SEL *sub_1002FAFDC(SEL *result)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    return [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session) *result];
  }

  __break(1u);
  return result;
}

void *SharePlayTogetherSession.title.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result localizedSessionName];
    v3 = sub_1005728D8();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SharePlayTogetherSession.joinToken.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result joinToken];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.routeType.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.routeType.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SharePlayTogetherSession.routeSymbolName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t sub_1002FB258@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002FB2D8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10056E488();
}

uint64_t SharePlayTogetherSession.routeSymbolName.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_10056E488();
}

void (*SharePlayTogetherSession.routeSymbolName.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028B698;
}

uint64_t SharePlayTogetherSession.$routeSymbolName.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006ED298);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006ED290);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$routeSymbolName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100009DCC(&qword_1006ED298);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__routeSymbolName;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006ED290);
  sub_10056E448();
  swift_endAccess();
  return sub_10028B69C;
}

uint64_t SharePlayTogetherSession.participants.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t sub_1002FB7FC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  return result;
}

uint64_t sub_1002FB87C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10056E488();
}

uint64_t SharePlayTogetherSession.participants.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_10056E488();
}

void (*SharePlayTogetherSession.participants.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028A32C;
}

uint64_t SharePlayTogetherSession.$participants.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006ED2B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006ED2B0);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$participants.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100009DCC(&qword_1006ED2B8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006ED2B0);
  sub_10056E448();
  swift_endAccess();
  return sub_10028A66C;
}

void (*SharePlayTogetherSession.connectedParticipantsCount.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028B698;
}

uint64_t SharePlayTogetherSession.$connectedParticipantsCount.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006ED2D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006ED2C8);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$connectedParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100009DCC(&qword_1006ED2D0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006ED2C8);
  sub_10056E448();
  swift_endAccess();
  return sub_10028B69C;
}

uint64_t sub_1002FC09C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  return result;
}

uint64_t sub_1002FC11C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10056E488();
}

uint64_t sub_1002FC1A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_10056E488();
}

void (*SharePlayTogetherSession.pendingParticipantsCount.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028B698;
}

uint64_t SharePlayTogetherSession.$pendingParticipantsCount.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006ED2D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006ED2C8);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$pendingParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100009DCC(&qword_1006ED2D0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006ED2C8);
  sub_10056E448();
  swift_endAccess();
  return sub_10028B69C;
}

uint64_t property wrapper backing initializer of SharePlayTogetherSession.host(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006ED2E0);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10000CC8C(a1, &v9 - v6, &qword_1006ED2E0);
  sub_10000CC8C(v7, v5, &qword_1006ED2E0);
  sub_10056E438();
  sub_10001036C(a1, &qword_1006ED2E0);
  return sub_10001036C(v7, &qword_1006ED2E0);
}

uint64_t SharePlayTogetherSession.host.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();
}

uint64_t sub_1002FC700()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();
}

uint64_t sub_1002FC77C(uint64_t a1, void **a2)
{
  v4 = sub_100009DCC(&qword_1006ED2E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_10000CC8C(a1, &v13 - v8, &qword_1006ED2E0);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000CC8C(v9, v7, &qword_1006ED2E0);
  v11 = v10;
  sub_10056E488();
  return sub_10001036C(v9, &qword_1006ED2E0);
}

uint64_t SharePlayTogetherSession.host.setter(uint64_t a1)
{
  v3 = sub_100009DCC(&qword_1006ED2E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000CC8C(a1, v5, &qword_1006ED2E0);
  v6 = v1;
  sub_10056E488();
  return sub_10001036C(a1, &qword_1006ED2E0);
}

void (*SharePlayTogetherSession.host.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028B698;
}

uint64_t SharePlayTogetherSession.$host.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006ED2F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006ED2F0);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$host.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100009DCC(&qword_1006ED2F8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006ED2F0);
  sub_10056E448();
  swift_endAccess();
  return sub_10028B69C;
}

void SharePlayTogetherSession.qrCode.getter(uint64_t *a1@<X8>)
{
  v3 = sub_100572928();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v10 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v9 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 8);
  v11 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 16);
  v12 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 24);
  v13 = v10;
  v14 = v9;
  v15 = v11;
  v16 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  if (v12)
  {
LABEL_8:
    sub_100302A20(v10, v9, v11, v12);
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v15;
    a1[3] = v16;
    a1[4] = v17;
    return;
  }

  v18 = v5;
  v34 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  v35 = 0;
  v32 = v9;
  v33 = v11;
  v31 = v10;
  v19 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v19)
  {
    v20 = [v19 joinToken];
    if (v20 && (v21 = v20, v22 = [v20 joinURLString], v21, sub_1005728D8(), v22, sub_100572918(), v23 = sub_1005728E8(), v25 = v24, , (*(v4 + 8))(v7, v18), v25 >> 60 != 15))
    {
      sub_10035A04C(v23, v25, 76, v36);
      v26 = *v8;
      v27 = v8[1];
      v28 = v8[2];
      v29 = v8[3];
      v30 = v36[1];
      *v8 = v36[0];
      *(v8 + 1) = v30;
      v8[4] = v37;
      sub_100304880(v26, v27, v28, v29);
      v13 = *v8;
      v14 = v8[1];
      v15 = v8[2];
      v16 = v8[3];
      v17 = v8[4];
      sub_100302A20(*v8, v14, v15, v16);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v10 = v31;
    v9 = v32;
    v11 = v33;
    v12 = v35;
    goto LABEL_8;
  }

  __break(1u);
}

void *SharePlayTogetherSession.joinURL.getter@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v4 = [result joinToken];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 joinURLString];

      sub_1005728D8();
      sub_10056C868();
    }

    else
    {
      v7 = sub_10056C8A8();
      v8 = *(*(v7 - 8) + 56);

      return v8(a1, 1, 1, v7);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.isActive.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    if ([result isPlaceholder])
    {
      return 0;
    }

    else if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      return v2 > 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.isPersistent.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.isPersistent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1002FD1F8(void *a1, void *a2)
{
  v80 = a1;
  v81 = a2;
  v3 = sub_100009DCC(&qword_1006ED2F0);
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v77 = &v75 - v4;
  v76 = sub_100009DCC(&qword_1006ED2E0);
  v5 = __chkstk_darwin(v76);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v75 - v8;
  v10 = sub_100009DCC(&qword_1006ED2C8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v75 - v12;
  v14 = sub_100009DCC(&qword_1006ED2B0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v75 - v16;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = 0;
  v18 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v85[0] = _swiftEmptyArrayStorage;
  sub_100009DCC(&qword_1006ED2A0);
  sub_10056E438();
  (*(v15 + 32))(&v2[v18], v17, v14);
  v19 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v85[0] = 0;
  sub_10056E438();
  v20 = *(v11 + 32);
  v20(&v2[v19], v13, v10);
  v21 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v85[0] = 0;
  sub_10056E438();
  v20(&v2[v21], v13, v10);
  v22 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v23 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  sub_10000CC8C(v9, v7, &qword_1006ED2E0);
  v24 = v77;
  sub_10056E438();
  v25 = v9;
  v26 = v80;
  sub_10001036C(v25, &qword_1006ED2E0);
  (*(v78 + 32))(&v2[v22], v24, v79);
  v27 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected] = 0;
  v28 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  *&v2[v28] = sub_1000F4E7C(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually] = 0;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = 0;
  v29 = [v26 identifier];
  v30 = sub_1005728D8();
  v32 = v31;

  v33 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier];
  *v33 = v30;
  v33[1] = v32;
  v34 = [v26 isHosted];
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] = v34;
  v35 = v81;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint] = v81;
  v36 = v35;
  v37 = [v26 hostInfo];
  LOBYTE(v32) = [v37 routeType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType] = v32;
  v38 = [v36 groupLeader];
  v39 = [v38 transportType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent] = v39 != 6;
  v40 = [v26 hostInfo];
  LODWORD(v39) = [v40 routeType];

  if (v39 == 1 || (v41 = [v26 hostInfo], v42 = objc_msgSend(v41, "routeType"), v41, v42 == 2))
  {
    swift_beginAccess();
    v83 = 0x6C6C69662E726163;
    v84 = 0xE800000000000000;
    sub_10056E438();
    swift_endAccess();
    v43 = 1;
  }

  else
  {
    v44 = [v36 outputDevices];
    if (v44)
    {
      v45 = v44;
      sub_1000D3B98(0, &qword_1006ED528);
      sub_100572D28();
    }

    v46 = objc_opt_self();
    sub_1000D3B98(0, &qword_1006ED528);
    isa = sub_100572D08().super.isa;

    v48 = [v46 symbolNameForOutputDevices:isa];

    v49 = sub_1005728D8();
    v51 = v50;

    swift_beginAccess();
    v83 = v49;
    v84 = v51;
    sub_10056E438();
    swift_endAccess();
    v43 = 0;
  }

  v52 = type metadata accessor for SharePlayTogetherSession(0);
  v82.receiver = v2;
  v82.super_class = v52;
  v53 = objc_msgSendSuper2(&v82, "init");
  v54 = [v26 identifier];
  if (!v54)
  {
    sub_1005728D8();
    v54 = sub_100572898();
  }

  v55 = objc_opt_self();
  v56 = v53;
  v57 = [v55 remoteControlGroupSessionWithIdentifier:v54 delegate:v56];

  v58 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  *&v56[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = v57;
  swift_unknownObjectRelease();
  v59 = MRAVEndpointOutputDevicesDidChangeNotification;
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = v43;
  *(v61 + 24) = v60;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v62 = v36;
  *&v56[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v59, v36, 1, 1, sub_10030596C, v61);

  if (qword_1006E5008 != -1)
  {
    swift_once();
  }

  v63 = sub_10056DF88();
  sub_10000C49C(v63, static Logger.sharePlayTogether);
  v64 = sub_10056DF68();
  v65 = sub_100573448();
  if (!os_log_type_enabled(v64, v65))
  {

    goto LABEL_15;
  }

  v66 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  v85[0] = v67;
  *v66 = 136446210;
  v68 = *&v56[v58];
  if (v68)
  {
    v69 = v67;
    swift_unknownObjectRetain();

    v70 = [v68 description];
    swift_unknownObjectRelease();
    v71 = sub_1005728D8();
    v73 = v72;

    v74 = sub_1000C9784(v71, v73, v85);

    *(v66 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v64, v65, "Initialized SharePlayTogetherSession object with MR session %{public}s", v66, 0xCu);
    sub_100010474(v69);

LABEL_15:
    return;
  }

  __break(1u);
}

void sub_1002FDBC4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = *(Strong + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint);

        v5 = [v4 outputDevices];
        if (v5)
        {
          sub_1000D3B98(0, &qword_1006ED528);
          sub_100572D28();
        }
      }

      v6 = objc_opt_self();
      sub_1000D3B98(0, &qword_1006ED528);
      isa = sub_100572D08().super.isa;

      v8 = [v6 symbolNameForOutputDevices:isa];

      sub_1005728D8();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E488();
    }
  }
}

void sub_1002FDD94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1002FDE5C(uint64_t a1, SEL *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v7 = *(v5 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  v12 = sub_100572898();
  v13 = [v7 *a2];

  swift_unknownObjectRelease();
  if (!v13)
  {
    return;
  }

  if (!*(v5 + v6))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15[4] = a3;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1002FDD94;
  v15[3] = a4;
  v14 = _Block_copy(v15);
  [swift_unknownObjectRetain() *a5];
  _Block_release(v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SharePlayTogetherSession.endSession()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    v2[4] = CFRange.init(_:);
    v2[5] = 0;
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_1002FDD94;
    v2[3] = &unk_10069B0C0;
    v1 = _Block_copy(v2);
    [swift_unknownObjectRetain() removeAllParticipantsWithCompletion:v1];
    _Block_release(v1);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.leave()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v1)
  {
    v2 = [v1 identifier];
    if (!v2)
    {
      sub_1005728D8();
      v2 = sub_100572898();
    }

    v4[4] = CFRange.init(_:);
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1001FC868;
    v4[3] = &unk_10069B0E8;
    v3 = _Block_copy(v4);
    MRGroupSessionLeaveSessionWithIdentifier();
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.cleanup(notifyObservers:)(Swift::Bool notifyObservers)
{
  if (notifyObservers)
  {
    v2 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
    swift_beginAccess();
    v3 = *(v1 + v2);
    v4 = *(v3 + 16);
    if (v4)
    {

      v5 = v3 + 40;
      do
      {
        v6 = *(v5 - 8);
        v9[0] = 1;

        v6(v9);

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  *(v1 + v7) = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  *(v1 + v8) = _swiftEmptyArrayStorage;
}

uint64_t SharePlayTogetherSession.addSessionConnectionObserver(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) == 1)
  {
    return a1();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v8 = *(v2 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1000CF944(0, v8[2] + 1, 1, v8);
    *(v2 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1000CF944((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_1000E23F0;
  v12[5] = v6;
  *(v2 + v7) = v8;
  return swift_endAccess();
}

uint64_t SharePlayTogetherSession.addSessionEndedObserver(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1000CFC34(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1000CFC34((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_100304918;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

id SharePlayTogetherSession.assertSessionManagementScreenVisible()()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result assertSessionManagementScreenVisible];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.socialProfile(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 identifierType] == 1 && (v5 = objc_msgSend(a1, "participantIdentifier")) != 0)
  {
    v6 = v5;
    v7 = sub_1005728D8();
    v9 = v8;

    v10 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16) && (, v12 = sub_1000EB89C(v7, v9), v14 = v13, , (v14 & 1) != 0))
    {
      v15 = *(v11 + 56);
      v16 = sub_10056D9E8();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a2, v15 + *(v17 + 72) * v12, v16);

      return (*(v17 + 56))(a2, 0, 1, v16);
    }

    else
    {

      v21 = sub_10056D9E8();
      return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
    }
  }

  else
  {
    v19 = sub_10056D9E8();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

void *SharePlayTogetherSession.isEquivalent(to:)(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = [result isPlaceholder];
  result = *(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v4 == [result isPlaceholder])
  {
    v14 = 0;
  }

  else
  {
    v5 = [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v6 = sub_1005728D8();
    v8 = v7;

    v9 = [*(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v10 = sub_1005728D8();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_100574498();
    }
  }

  return (v14 & 1);
}

void sub_1002FE844()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v2 - 8);
  v118 = &v112 - v3;
  v4 = sub_100009DCC(&qword_1006ED4B8);
  v117 = *(v4 - 8);
  v5 = *(v117 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v116 = &v112 - v8;
  v9 = sub_100009DCC(&qword_1006ED2E0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v120 = &v112 - v13;
  v14 = sub_100009DCC(&unk_1006ED338);
  __chkstk_darwin(v14 - 8);
  v128 = &v112 - v15;
  v119 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v132 = *(v119 - 8);
  __chkstk_darwin(v119);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E5008 != -1)
  {
    swift_once();
  }

  v18 = sub_10056DF88();
  v122 = sub_10000C49C(v18, static Logger.sharePlayTogether);
  v19 = sub_10056DF68();
  v20 = sub_100573448();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Updating participants", v21, 2u);
  }

  v22 = swift_allocObject();
  v133 = v22;
  *(v22 + 16) = &_swiftEmptySetSingleton;
  v124 = v22 + 16;
  v129 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v23 = *&v1[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
  if (!v23)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v24 = [v23 pendingParticipants];
  v25 = sub_1005730F8();

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_100302CA0(*(v25 + 16), 0);
    v28 = sub_1003040B4(v136, (v27 + 4), v26, v25);
    sub_10025A994();
    if (v28 == v26)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_10:
  sub_10025B8C0(v27);

  v136[0] = sub_100304434(v29);
  sub_100302D30(v136);
  v115 = v4;

  v30 = *&v1[v129];
  if (!v30)
  {
    goto LABEL_77;
  }

  v126 = v136[0];
  v31 = [v30 participants];
  v32 = sub_1005730F8();

  v33 = *(v32 + 16);
  if (!v33)
  {
LABEL_14:

    v34 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v34 = sub_100302CA0(*(v32 + 16), 0);
  v35 = sub_1003040B4(v136, (v34 + 4), v33, v32);
  sub_10025A994();
  if (v35 != v33)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  sub_10025B8C0(v34);

  v136[0] = sub_100304434(v36);
  sub_100302D30(v136);

  v125 = v136[0];
  if ((v136[0] & 0x8000000000000000) == 0 && (v136[0] & 0x4000000000000000) == 0)
  {
    v37 = *(v136[0] + 16);
    goto LABEL_18;
  }

  while (1)
  {
    v37 = sub_100574178();
LABEL_18:
    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v37;
    v38 = v1;
    sub_10056E488();
    v39 = v126;
    v114 = v12;
    if (v126 < 0 || (v126 & 0x4000000000000000) != 0)
    {
      v40 = sub_100574178();
    }

    else
    {
      v40 = *(v126 + 16);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v40;
    v41 = v38;
    sub_10056E488();
    v136[0] = v39;

    sub_1000DAAFC(v42);
    v43 = v136[0];
    v113 = v7;
    v112 = v5;
    v123 = v1;
    if (v136[0] >> 62)
    {
      v44 = sub_100574178();
      if (!v44)
      {
LABEL_33:

        v46 = _swiftEmptyArrayStorage;
        goto LABEL_34;
      }
    }

    else
    {
      v44 = *((v136[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
        goto LABEL_33;
      }
    }

    v136[0] = _swiftEmptyArrayStorage;
    sub_1000CC744(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    v45 = 0;
    v46 = v136[0];
    do
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v47 = sub_100573F58();
      }

      else
      {
        v47 = *(v43 + 8 * v45 + 32);
        swift_unknownObjectRetain();
      }

      sub_1002FF8F8(v47, v41, v133, v17);
      swift_unknownObjectRelease();
      v136[0] = v46;
      v49 = v46[2];
      v48 = v46[3];
      v7 = (v49 + 1);
      if (v49 >= v48 >> 1)
      {
        sub_1000CC744(v48 > 1, v49 + 1, 1);
        v46 = v136[0];
      }

      ++v45;
      v46[2] = v7;
      sub_1003052F0(v17, v46 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v49);
    }

    while (v44 != v45);

    v1 = v123;
LABEL_34:
    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v46;
    v130 = v41;
    sub_10056E488();
    v50 = *&v1[v129];
    if (!v50)
    {
      goto LABEL_78;
    }

    v51 = [v50 members];
    v17 = sub_1000D3B98(0, &qword_1006ED4C0);
    sub_100305354();
    v52 = sub_1005730F8();

    v5 = v124;
    if ((v52 & 0xC000000000000001) != 0)
    {
      sub_100573DF8();
      sub_100573138();
      v52 = v136[0];
      v1 = v136[1];
      v53 = v136[2];
      v54 = v136[3];
      v12 = v136[4];
    }

    else
    {
      v54 = 0;
      v55 = -1 << *(v52 + 32);
      v1 = (v52 + 56);
      v53 = ~v55;
      v56 = -v55;
      v57 = v56 < 64 ? ~(-1 << v56) : -1;
      v12 = (v57 & *(v52 + 56));
    }

    v121 = v53;
    v58 = (v53 + 64) >> 6;
    v127 = v17;
    if (v52 < 0)
    {
      break;
    }

    while (1)
    {
      v62 = v54;
      v63 = v12;
      v60 = v54;
      if (!v12)
      {
        break;
      }

LABEL_51:
      v61 = (v63 - 1) & v63;
      v7 = *(*(v52 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v63)))));
      if (!v7)
      {
        goto LABEL_59;
      }

LABEL_52:
      if ([v7 type] == 1)
      {
        v131 = v61;
        v64 = [v7 identifier];
        v65 = sub_1005728D8();
        v67 = v66;

        v68 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
        v69 = v130;
        swift_beginAccess();
        v70 = *&v69[v68];
        if (*(v70 + 16) && (, v71 = sub_1000EB89C(v65, v67), v73 = v72, , (v73 & 1) != 0))
        {
          v74 = *(v70 + 56);
          v75 = sub_10056D9E8();
          v76 = *(v75 - 8);
          v77 = v76;
          v78 = v74 + *(v76 + 72) * v71;
          v79 = v128;
          (*(v76 + 16))(v128, v78, v75);

          (*(v77 + 56))(v79, 0, 1, v75);
          v5 = v124;
          sub_10001036C(v79, &unk_1006ED338);
        }

        else
        {

          v80 = sub_10056D9E8();
          v81 = v128;
          (*(*(v80 - 8) + 56))(v128, 1, 1, v80);
          sub_10001036C(v81, &unk_1006ED338);
          v82 = [v7 identifier];
          sub_1005728D8();

          v83 = sub_1005713D8();
          v85 = v84;
          swift_beginAccess();
          sub_100250CFC(&v135, v83, v85);
          swift_endAccess();
        }

        v54 = v60;
        v12 = v131;
        v17 = v127;
        if (v52 < 0)
        {
          goto LABEL_44;
        }
      }

      else
      {

        v54 = v60;
        v12 = v61;
        if (v52 < 0)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v60 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v60 >= v58)
      {
        goto LABEL_59;
      }

      v63 = *&v1[8 * v60];
      ++v62;
      if (v63)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
  }

LABEL_44:
  v59 = sub_100573E28();
  if (v59)
  {
    v135 = v59;
    swift_dynamicCast();
    v7 = v134[0];
    v60 = v54;
    v61 = v12;
    if (v134[0])
    {
      goto LABEL_52;
    }
  }

LABEL_59:
  sub_10025A994();
  v86 = *&v123[v129];
  if (!v86)
  {
LABEL_79:
    __break(1u);

    __break(1u);
    return;
  }

  swift_unknownObjectRetain();

  v87 = [v86 host];
  swift_unknownObjectRelease();
  if (v87)
  {
    v88 = v120;
    v89 = v130;
    sub_1002FF8F8(v87, v130, v133, v120);
    (*(v132 + 56))(v88, 0, 1, v119);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000CC8C(v88, v114, &qword_1006ED2E0);
    v90 = v89;
    sub_10056E488();
    swift_unknownObjectRelease();
    sub_10001036C(v88, &qword_1006ED2E0);
  }

  swift_beginAccess();
  v91 = *v5;
  v92 = *(*v5 + 16);
  v93 = sub_10056DF68();
  v94 = sub_100573448();
  v95 = os_log_type_enabled(v93, v94);
  if (v92)
  {
    if (v95)
    {
      v96 = swift_slowAlloc();
      *v96 = 134349056;
      *(v96 + 4) = *(v91 + 16);
      _os_log_impl(&_mh_execute_header, v93, v94, "Fetching %{public}ld profiles", v96, 0xCu);
    }

    swift_getKeyPath();
    v97 = *(v91 + 16);
    if (!v97 || (v98 = sub_100302B94(*(v91 + 16), 0), v94 = v98, v99 = sub_100303F5C(v134, v98 + 4, v97, v91), v93 = v134[4], , v95 = sub_10025A994(), v99 == v97))
    {
      sub_10056D9E8();
      sub_100305404(&qword_1006ED4D0, &type metadata accessor for SocialProfile);
      sub_100305404(&qword_1006ED4D8, &type metadata accessor for SocialProfile);
      v101 = v116;
      sub_1005710F8();
      v102 = sub_100572F48();
      v103 = v118;
      (*(*(v102 - 8) + 56))(v118, 1, 1, v102);
      v104 = v117;
      v105 = v113;
      v106 = v115;
      (*(v117 + 16))(v113, v101, v115);
      sub_100572F08();
      v107 = v130;
      v108 = sub_100572EF8();
      v109 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v110 = (v112 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
      v111 = swift_allocObject();
      *(v111 + 16) = v108;
      *(v111 + 24) = &protocol witness table for MainActor;
      (*(v104 + 32))(v111 + v109, v105, v106);
      *(v111 + v110) = v107;
      sub_1002B0D90(0, 0, v103, &unk_1005942F8, v111);

      (*(v104 + 8))(v101, v106);

      return;
    }

    __break(1u);
  }

  if (v95)
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&_mh_execute_header, v93, v94, "No pending profiles to fetch", v100, 2u);
  }
}

uint64_t sub_1002FF8F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100009DCC(&unk_1006ED338);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v49 - v13;
  __chkstk_darwin(v12);
  v16 = v49 - v15;
  v17 = sub_10056D9E8();
  v18 = *(v17 - 8);
  v52 = *(v18 + 56);
  v53 = v17;
  v52(v16, 1, 1);
  v19 = [a1 identity];
  v20 = &selRef_changeItemCommand;
  if (v19)
  {
    v21 = v19;
    if ([v19 type] == 1)
    {
      v49[1] = a3;
      v51 = v16;
      v22 = [v21 identifier];
      v50 = sub_1005728D8();
      v24 = v23;

      v25 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
      swift_beginAccess();
      v26 = *(a2 + v25);
      if (*(v26 + 16) && (, v50 = sub_1000EB89C(v50, v24), v28 = v27, , (v28 & 1) != 0))
      {
        (*(v18 + 16))(v14, *(v26 + 56) + *(v18 + 72) * v50, v53);
        v16 = v51;
        sub_10001036C(v51, &unk_1006ED338);

        v29 = 0;
      }

      else
      {

        v16 = v51;
        sub_10001036C(v51, &unk_1006ED338);
        v29 = 1;
      }

      v30 = v53;
      (v52)(v14, v29, 1, v53);
      sub_1003058C4(v14, v16);
      sub_10000CC8C(v16, v11, &unk_1006ED338);
      if ((*(v18 + 48))(v11, 1, v30) == 1)
      {
        sub_10001036C(v11, &unk_1006ED338);
        v31 = [v21 identifier];
        sub_1005728D8();

        v32 = sub_1005713D8();
        v34 = v33;
        swift_beginAccess();
        sub_100250CFC(&v54, v32, v34);
        swift_endAccess();

        v20 = &selRef_changeItemCommand;
        goto LABEL_12;
      }

      sub_10001036C(v11, &unk_1006ED338);
    }

    else
    {
    }

    v20 = &selRef_changeItemCommand;
  }

LABEL_12:
  v35 = [a1 v20[149]];
  v36 = sub_1005728D8();
  v38 = v37;

  v39 = [a1 identity];
  if (v39 && (v40 = v39, v41 = [v39 displayName], v40, v41))
  {
    v42 = sub_1005728D8();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = [a1 isPending];
  v46 = [a1 isGuest];
  v47 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  (v52)(a4 + v47, 1, 1, v53);
  *a4 = v36;
  *(a4 + 8) = v38;
  *(a4 + 16) = v42;
  *(a4 + 24) = v44;
  *(a4 + 32) = v45;
  *(a4 + 33) = v46;
  return sub_100304940(v16, a4 + v47);
}

uint64_t SharePlayTogetherSession.Participant.init(id:displayName:isPending:isGuest:socialProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v17 = sub_10056D9E8();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;

  return sub_100304940(a7, a8 + v16);
}

uint64_t sub_1002FFE6C(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identity];
  if (v3 && (v4 = v3, v5 = [v3 displayName], v4, v5))
  {
    v6 = sub_1005728D8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = [v2 identity];
  if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
  {
    v12 = sub_1005728D8();
    v14 = v13;

    if (v6 != v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0xE000000000000000;
    if (v6)
    {
LABEL_12:
      v15 = sub_100574498();
      goto LABEL_13;
    }
  }

  if (v8 != v14)
  {
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15 & 1;
}

uint64_t sub_1002FFFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  sub_100009DCC(&qword_1006E6420);
  v5[5] = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006ED4E0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[8] = v7;
  v8 = sub_100009DCC(&qword_1006ED4E8);
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v5[11] = *(v9 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = sub_100572F08();
  v5[16] = sub_100572EF8();
  v10 = swift_task_alloc();
  v5[17] = v10;
  v11 = sub_100009DCC(&qword_1006ED4B8);
  *v10 = v5;
  v10[1] = sub_1003001BC;

  return MusicCatalogResourceRequest.response()(v7, v11);
}

uint64_t sub_1003001BC()
{
  *(*v1 + 144) = v0;

  v3 = sub_100572E78();
  if (v0)
  {
    v4 = sub_10030069C;
  }

  else
  {
    v4 = sub_100300318;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100300318()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_1005711F8();
  (*(v2 + 8))(v1, v3);
  if (qword_1006E5008 != -1)
  {
    swift_once();
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  v8 = sub_10056DF88();
  sub_10000C49C(v8, static Logger.sharePlayTogether);
  v34 = *(v7 + 16);
  v34(v4, v5, v6);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[9];
  v14 = v0[10];
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    sub_1003057A0();
    sub_1005731B8();
    sub_100573208();
    v16 = sub_1005731F8();
    v33 = *(v14 + 8);
    v33(v12, v13);
    *(v15 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Finished fetching %{public}ld profiles", v15, 0xCu);
  }

  else
  {
    v33 = *(v14 + 8);
    v33(v12, v13);
  }

  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[9];
  v23 = v0[4];
  v22 = v0[5];
  v32 = v22;
  v24 = sub_100572F48();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v34(v18, v17, v21);
  v25 = v23;
  v26 = sub_100572EF8();
  v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v28 = (v20 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = &protocol witness table for MainActor;
  (*(v19 + 32))(v29 + v27, v18, v21);
  *(v29 + v28) = v25;
  sub_1001B3FAC(0, 0, v32, &unk_100594318, v29);

  v33(v17, v21);

  v30 = v0[1];

  return v30();
}

uint64_t sub_10030069C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100300748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  sub_100009DCC(&unk_1006ED338);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_100009DCC(&qword_1006ED2E0);
  v5[35] = swift_task_alloc();
  v6 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v7 = sub_10056D9E8();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = sub_100009DCC(&qword_1006ED4F8);
  v5[45] = swift_task_alloc();
  sub_100572F08();
  v5[46] = sub_100572EF8();
  v9 = sub_100572E78();

  return _swift_task_switch(sub_100300974, v9, v8);
}

void sub_100300974()
{
  v1 = v0;
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[30];
  v5 = v0[31];
  v6 = sub_100009DCC(&qword_1006ED4E8);
  (*(*(v6 - 8) + 16))(v3, v4, v6);
  v7 = *(v2 + 36);
  sub_1003057A0();
  sub_1005731B8();
  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  sub_100573208();
  v114 = v1;
  v109 = v5;
  if (*(v3 + v7) != v1[27])
  {
    v57 = v1[41];
    v105 = (v57 + 16);
    v107 = v1 + 2;
    v108 = (v57 + 32);
    v103 = v57;
    v100 = v7;
    do
    {
      v60 = v1[43];
      v113 = v1[42];
      v61 = v1[40];
      v111 = sub_1005732E8();
      (*v105)(v60);
      v111(v107, 0);
      sub_100573218();
      v62 = sub_10056D9B8();
      v64 = v63;
      swift_beginAccess();
      v65 = *v108;
      (*v108)(v113, v60, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *(v109 + v8);
      v115 = v67;
      *(v109 + v8) = 0x8000000000000000;
      v68 = sub_1000EB89C(v62, v64);
      v70 = v67[2];
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_61;
      }

      v74 = v69;
      if (v67[3] >= v73)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = v68;
          sub_1000F1FE8();
          v68 = v81;
        }
      }

      else
      {
        sub_1000EEF68(v73, isUniquelyReferenced_nonNull_native);
        v68 = sub_1000EB89C(v62, v64);
        if ((v74 & 1) != (v75 & 1))
        {

          sub_100574578();
          return;
        }
      }

      v76 = v114[42];
      v77 = v114[40];
      if (v74)
      {
        v58 = v68;

        v59 = v115;
        (*(v103 + 40))(v115[7] + *(v103 + 72) * v58, v76, v77);
      }

      else
      {
        v59 = v115;
        v115[(v68 >> 6) + 8] |= 1 << v68;
        v78 = (v115[6] + 16 * v68);
        *v78 = v62;
        v78[1] = v64;
        v65(v115[7] + *(v103 + 72) * v68, v76, v77);
        v79 = v115[2];
        v72 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v72)
        {
          goto LABEL_62;
        }

        v115[2] = v80;
      }

      v1 = v114;
      *(v109 + v8) = v59;

      swift_endAccess();
      sub_100573208();
    }

    while (*(v3 + v100) != v114[27]);
  }

  v98 = v8;
  sub_10001036C(v1[45], &qword_1006ED4F8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v9 = *(v1[28] + 16);

  v10 = v1;
  if (!v9)
  {
LABEL_31:
    v53 = v10[36];
    v54 = v10[37];
    v55 = v10[35];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v56 = *(v54 + 48);
    if (v56(v55, 1, v53) == 1)
    {
      sub_10001036C(v10[35], &qword_1006ED2E0);
    }

    else
    {
      v82 = v10 + 6;
      v83 = v10[36];
      sub_1003052F0(v10[35], v10[39]);
      v84 = SharePlayTogetherSession.host.modify(v10 + 6);
      v86 = v85;
      v87 = v56(v85, 1, v83);
      v88 = v10[39];
      if (!v87)
      {
        v89 = *v88;
        v90 = v88[1];
        swift_beginAccess();
        v91 = *(v109 + v98);
        if (*(v91 + 16))
        {

          v92 = sub_1000EB89C(v89, v90);
          if (v93)
          {
            v10 = v114;
            (*(v114[41] + 16))(v114[32], *(v91 + 56) + *(v114[41] + 72) * v92, v114[40]);
            v94 = 0;
          }

          else
          {
            v94 = 1;
            v10 = v114;
          }
        }

        else
        {
          v94 = 1;
          v10 = v114;
        }

        v88 = v10[39];
        v95 = v10[36];
        v96 = v10[32];
        (*(v10[41] + 56))(v96, v94, 1, v10[40]);
        sub_100304940(v96, v86 + *(v95 + 32));
      }

      (v84)(v82, 0);
      sub_100305868(v88);
    }

    type metadata accessor for SharePlayTogetherSession(0);
    sub_100305404(&qword_1006ED500, type metadata accessor for SharePlayTogetherSession);
    sub_10056E408();
    sub_10056E428();

    v97 = v10[1];

    v97();
    return;
  }

  v11 = v1[41];
  v13 = v1[37];
  v12 = v1[38];
  v101 = v1[36];
  v110 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v112 = v1[31];
  swift_beginAccess();
  v14 = 0;
  v102 = v9;
  v104 = (v11 + 56);
  v99 = v11;
  v106 = v13;
  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v15 = v10[29];
    if (v14 >= *(v15 + 16))
    {
      break;
    }

    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = *(v13 + 72) * v14;
    sub_100305804(v15 + v16 + v17, v10[38]);

    if (*(v12 + 32) == 1)
    {
      v18 = *(v112 + v110);
      if (!v18)
      {
        goto LABEL_66;
      }

      swift_unknownObjectRetain();
      v19 = sub_100572898();
      v20 = [v18 pendingParticipantForIdentifier:v19];
      swift_unknownObjectRelease();

      if (v20)
      {
        v21 = [v20 identity];
        swift_unknownObjectRelease();
        if (v21)
        {
          v22 = [v21 identifier];

          v23 = sub_1005728D8();
          v25 = v24;

          v26 = *(v109 + v98);
          if (*(v26 + 16) && (, v27 = sub_1000EB89C(v23, v25), v29 = v28, , (v29 & 1) != 0))
          {
            (*(v99 + 16))(v10[34], *(v26 + 56) + *(v99 + 72) * v27, v10[40]);

            v30 = 0;
          }

          else
          {

            v30 = 1;
          }

          (*v104)(v10[34], v30, 1, v10[40]);
          swift_getKeyPath();
          swift_getKeyPath();
          v44 = sub_10056E468();
          v50 = v49;
          v51 = *v49;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *v50 = v51;
          if ((v52 & 1) == 0)
          {
            v51 = sub_1000F242C(v51);
            *v50 = v51;
          }

          v13 = v106;
          if (v14 >= v51[2])
          {
            goto LABEL_64;
          }

          sub_100304940(v10[34], v51 + v16 + v17 + *(v101 + 32));
LABEL_5:
          v44();

          v9 = v102;
          goto LABEL_6;
        }
      }
    }

    v31 = *(v112 + v110);
    if (!v31)
    {
      goto LABEL_65;
    }

    swift_unknownObjectRetain();
    v32 = sub_100572898();
    v33 = [v31 participantForIdentifier:v32];
    swift_unknownObjectRelease();

    if (v33)
    {
      v34 = [v33 identity];
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = [v34 identifier];

        v36 = sub_1005728D8();
        v38 = v37;

        v39 = *(v109 + v98);
        if (*(v39 + 16) && (, v40 = sub_1000EB89C(v36, v38), v42 = v41, , (v42 & 1) != 0))
        {
          (*(v99 + 16))(v10[33], *(v39 + 56) + *(v99 + 72) * v40, v10[40]);

          v43 = 0;
        }

        else
        {

          v43 = 1;
        }

        (*v104)(v10[33], v43, 1, v10[40]);
        swift_getKeyPath();
        swift_getKeyPath();
        v44 = sub_10056E468();
        v46 = v45;
        v47 = *v45;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *v46 = v47;
        if ((v48 & 1) == 0)
        {
          v47 = sub_1000F242C(v47);
          *v46 = v47;
        }

        v13 = v106;
        if (v14 >= v47[2])
        {
          goto LABEL_63;
        }

        sub_100304940(v10[33], v47 + v16 + v17 + *(v101 + 32));
        goto LABEL_5;
      }
    }

LABEL_6:
    ++v14;
    sub_100305868(v10[38]);
    if (v9 == v14)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

id SharePlayTogetherSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharePlayTogetherSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10030185C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharePlayTogetherSession(0);
  result = sub_10056E408();
  *a1 = result;
  return result;
}

uint64_t SharePlayTogetherSession.Participant.socialProfile.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);

  return sub_100304940(a1, v3);
}

uint64_t SharePlayTogetherSession.groupSessionDidConnect(_:)(uint64_t a1)
{
  v3 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_100572F48();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_100572F08();
  swift_unknownObjectRetain();
  v7 = v1;
  v8 = sub_100572EF8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = v7;
  sub_1001B3FAC(0, 0, v5, &unk_100594160, v9);
}

uint64_t sub_100301AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_100572F08();
  v5[12] = sub_100572EF8();
  v7 = sub_100572E78();

  return _swift_task_switch(sub_100301B44, v7, v6);
}

uint64_t sub_100301B44()
{
  v22 = v0;

  if (qword_1006E5008 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, static Logger.sharePlayTogether);
  swift_unknownObjectRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446210;
    v7 = [v4 description];
    v8 = sub_1005728D8();
    v10 = v9;

    v11 = sub_1000C9784(v8, v10, &v21);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "groupSessionDidConnect %{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  v12 = v0[11];
  *(v12 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) = 1;
  v13 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v14 = *(v12 + v13);
  v15 = *(v14 + 16);
  if (v15)
  {

    v16 = v14 + 40;
    do
    {
      v17 = *(v16 - 8);

      v17(v18);

      v16 += 16;
      --v15;
    }

    while (v15);
  }

  *(v12 + v13) = _swiftEmptyArrayStorage;

  SharePlayTogetherSession.qrCode.getter(v0 + 2);
  sub_10001036C((v0 + 2), &qword_1006ED540);
  type metadata accessor for SharePlayTogetherSession(0);
  sub_100305404(&qword_1006ED500, type metadata accessor for SharePlayTogetherSession);
  sub_10056E408();
  sub_10056E428();

  v19 = v0[1];

  return v19();
}

uint64_t SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_100572F48();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_100572F08();
  swift_errorRetain();
  v8 = v2;
  v9 = sub_100572EF8();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a2;
  v10[5] = v8;
  sub_1001B3FAC(0, 0, v6, &unk_100594170, v10);
}

uint64_t sub_1003020A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_100572F08();
  v5[13] = sub_100572EF8();
  v7 = sub_100572E78();

  return _swift_task_switch(sub_100302138, v7, v6);
}

uint64_t sub_100302138()
{
  v32 = v0;

  if (qword_1006E5008 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_10056DF88();
  sub_10000C49C(v2, static Logger.sharePlayTogether);
  swift_errorRetain();
  v3 = v1;
  v4 = sub_10056DF68();
  v5 = sub_100573448();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v6 = 138543618;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2082;
    swift_beginAccess();

    sub_100009DCC(&unk_1006ED530);
    v10 = sub_100572D38();
    v12 = v11;

    v13 = sub_1000C9784(v10, v12, &v31);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Session invalidated with error %{public}@. Calling %{public}s observers.", v6, 0x16u);
    sub_10001036C(v7, &qword_1006E7640);

    sub_100010474(v8);
  }

  v14 = *(v0 + 96);
  v15 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v27 = v15;
    v18 = *(v0 + 96);
    v19 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually;
    v20 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
    v29 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;

    v28 = v0;
    result = swift_beginAccess();
    v0 = 0;
    v22 = v16 + 40;
    while (1)
    {
      if (v0 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v24 = *(v22 - 8);
      if ((*(v18 + v19) & 1) != 0 || *(v18 + v20) == 1)
      {

        v23 = 1;
      }

      else
      {
        v25 = *(v18 + v29);
        if (!v25)
        {
          __break(1u);
          return result;
        }

        v23 = [v25 isPlaceholder];
      }

      ++v0;
      v30 = v23;
      v24(&v30);

      v22 += 16;
      if (v17 == v0)
      {

        v15 = v27;
        v0 = v28;
        break;
      }
    }
  }

  *(v14 + v15) = _swiftEmptyArrayStorage;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10030264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_100572F08();
  *(v4 + 24) = sub_100572EF8();
  v6 = sub_100572E78();

  return _swift_task_switch(sub_100305BF0, v6, v5);
}

void sub_100302770(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_100304B60(a5, a6, a7);
  swift_unknownObjectRelease();
}

uint64_t sub_100302834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_100572F08();
  *(v4 + 24) = sub_100572EF8();
  v6 = sub_100572E78();

  return _swift_task_switch(sub_1003028CC, v6, v5);
}

uint64_t sub_1003028CC()
{

  sub_1002FE844();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100302958()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.sharePlayTogether);
  sub_10000C49C(v0, static Logger.sharePlayTogether);
  return sub_10056DF78();
}

void sub_100302A20(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    sub_1000F54C8(a2, a3);

    v4 = a4;
  }
}

uint64_t static Logger.sharePlayTogether.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006E5008 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v3 = sub_10000C49C(v2, static Logger.sharePlayTogether);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100302B10(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006ED520);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_100302B94(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006ED508);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100302C18(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006E8B80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_100302CA0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006ED518);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_100302D30(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100303F48(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100302DAC(v6);
  return sub_100573FD8();
}

Swift::Int sub_100302DAC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100574388(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100009DCC(&qword_1006ED510);
        v6 = sub_100572D98();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1003030C4(v8, v9, a1, v4);
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
    return sub_100302EBC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100302EBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    v6 = &selRef_changeItemCommand;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v7 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v8 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = [v7 v6[154]];
      if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
      {
        v12 = sub_1005728D8();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      v15 = [v8 v6[154]];
      if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
      {
        v18 = sub_1005728D8();
        v20 = v19;

        if (v12 != v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = 0xE000000000000000;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      if (v14 == v20)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v6 = &selRef_changeItemCommand;
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

LABEL_17:
      v21 = sub_100574498();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v6 = &selRef_changeItemCommand;
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

uint64_t sub_1003030C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v105 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_115:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_156;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_118:
      v118 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v96 = *(result + 16 * v4);
          v97 = result;
          v98 = *(result + 16 * (v4 - 1) + 40);
          sub_100303978((*a3 + 8 * v96), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v98), v5);
          if (v113)
          {
          }

          if (v98 < v96)
          {
            goto LABEL_143;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_100303EF8(v97);
          }

          if (v4 - 2 >= *(v97 + 2))
          {
            goto LABEL_144;
          }

          v99 = &v97[16 * v4];
          *v99 = v96;
          *(v99 + 1) = v98;
          v118 = v97;
          sub_100303E6C(v4 - 1);
          result = v118;
          v4 = *(v118 + 2);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_154;
      }
    }

LABEL_150:
    result = sub_100303EF8(v4);
    goto LABEL_118;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
LABEL_4:
  v9 = v7;
  if (v7 + 1 >= v6)
  {
    v6 = v7 + 1;
    goto LABEL_33;
  }

  v103 = v8;
  v10 = *a3;
  v117 = *(*a3 + 8 * (v7 + 1));
  v5 = *(v10 + 8 * v7);
  v116 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v114 = sub_1002FFE6C(&v117, &v116);
  if (v113)
  {

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v4 = v7 + 2;
  v101 = v7;
  v108 = 8 * v7;
  v110 = v6;
  v11 = (v10 + 8 * v7 + 16);
  while (v6 != v4)
  {
    v13 = *(v11 - 1);
    v14 = *v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = [v14 identity];
    if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
    {
      v18 = sub_1005728D8();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = [v13 identity];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 displayName];

      if (v23)
      {
        v24 = sub_1005728D8();
        v5 = v25;
      }

      else
      {
        v24 = 0;
        v5 = 0xE000000000000000;
      }

      v6 = v110;
      if (v18 != v24)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = 0xE000000000000000;
      if (v18)
      {
        goto LABEL_7;
      }
    }

    if (v20 == v5)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v12 = sub_100574498();
LABEL_8:

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    ++v4;
    ++v11;
    if ((v114 ^ v12))
    {
      v6 = v4 - 1;
      break;
    }
  }

  v9 = v101;
  v8 = v103;
  v26 = v108;
  if ((v114 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v6 < v101)
  {
    goto LABEL_149;
  }

  if (v101 < v6)
  {
    v27 = 8 * v6 - 8;
    v28 = v6;
    v29 = v101;
    do
    {
      if (v29 != --v28)
      {
        v30 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v31 = *(v30 + v26);
        *(v30 + v26) = *(v30 + v27);
        *(v30 + v27) = v31;
      }

      ++v29;
      v27 -= 8;
      v26 += 8;
    }

    while (v29 < v28);
  }

LABEL_33:
  v32 = a3[1];
  if (v6 >= v32)
  {
    goto LABEL_41;
  }

  if (__OFSUB__(v6, v9))
  {
    goto LABEL_146;
  }

  if (v6 - v9 >= a4)
  {
LABEL_41:
    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_145;
    }

    goto LABEL_42;
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_147;
  }

  if (v9 + a4 < v32)
  {
    v32 = v9 + a4;
  }

  if (v32 < v9)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v6 == v32)
  {
    goto LABEL_41;
  }

  v106 = v32;
  v102 = v9;
  v104 = v8;
  v115 = *a3;
  v4 = *a3 + 8 * v6 - 8;
  v79 = v9 - v6;
  while (2)
  {
    v109 = v4;
    v111 = v6;
    v80 = *(v115 + 8 * v6);
    v107 = v79;
LABEL_95:
    v81 = *v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v82 = [v80 identity];
    if (v82 && (v83 = v82, v84 = [v82 displayName], v83, v84))
    {
      v85 = sub_1005728D8();
      v87 = v86;
    }

    else
    {
      v85 = 0;
      v87 = 0xE000000000000000;
    }

    v88 = [v81 identity];
    if (!v88 || (v89 = v88, v90 = [v88 displayName], v89, !v90))
    {
      v5 = 0;
      v92 = 0xE000000000000000;
      if (v85)
      {
        goto LABEL_105;
      }

LABEL_104:
      if (v87 != v92)
      {
        goto LABEL_105;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_93:
      v6 = v111 + 1;
      v4 = v109 + 8;
      v79 = v107 - 1;
      if (v111 + 1 != v106)
      {
        continue;
      }

      v9 = v102;
      v8 = v104;
      v7 = v106;
      if (v106 < v102)
      {
        goto LABEL_145;
      }

LABEL_42:
      v33 = v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v8 = v33;
      }

      else
      {
        result = sub_1000CF5B8(0, *(v33 + 2) + 1, 1, v33);
        v8 = result;
      }

      v4 = *(v8 + 2);
      v34 = *(v8 + 3);
      v35 = v4 + 1;
      if (v4 >= v34 >> 1)
      {
        result = sub_1000CF5B8((v34 > 1), v4 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v35;
      v36 = &v8[16 * v4];
      *(v36 + 4) = v9;
      *(v36 + 5) = v7;
      v37 = *v105;
      if (!*v105)
      {
        goto LABEL_155;
      }

      if (v4)
      {
        while (2)
        {
          v38 = v35 - 1;
          if (v35 >= 4)
          {
            v43 = &v8[16 * v35 + 32];
            v44 = *(v43 - 64);
            v45 = *(v43 - 56);
            v49 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            if (v49)
            {
              goto LABEL_132;
            }

            v48 = *(v43 - 48);
            v47 = *(v43 - 40);
            v49 = __OFSUB__(v47, v48);
            v41 = v47 - v48;
            v42 = v49;
            if (v49)
            {
              goto LABEL_133;
            }

            v50 = &v8[16 * v35];
            v52 = *v50;
            v51 = *(v50 + 1);
            v49 = __OFSUB__(v51, v52);
            v53 = v51 - v52;
            if (v49)
            {
              goto LABEL_135;
            }

            v49 = __OFADD__(v41, v53);
            v54 = v41 + v53;
            if (v49)
            {
              goto LABEL_138;
            }

            if (v54 >= v46)
            {
              v72 = &v8[16 * v38 + 32];
              v74 = *v72;
              v73 = *(v72 + 1);
              v49 = __OFSUB__(v73, v74);
              v75 = v73 - v74;
              if (v49)
              {
                goto LABEL_142;
              }

              if (v41 < v75)
              {
                v38 = v35 - 2;
              }
            }

            else
            {
LABEL_61:
              if (v42)
              {
                goto LABEL_134;
              }

              v55 = &v8[16 * v35];
              v57 = *v55;
              v56 = *(v55 + 1);
              v58 = __OFSUB__(v56, v57);
              v59 = v56 - v57;
              v60 = v58;
              if (v58)
              {
                goto LABEL_137;
              }

              v61 = &v8[16 * v38 + 32];
              v63 = *v61;
              v62 = *(v61 + 1);
              v49 = __OFSUB__(v62, v63);
              v64 = v62 - v63;
              if (v49)
              {
                goto LABEL_140;
              }

              if (__OFADD__(v59, v64))
              {
                goto LABEL_141;
              }

              if (v59 + v64 < v41)
              {
                goto LABEL_75;
              }

              if (v41 < v64)
              {
                v38 = v35 - 2;
              }
            }
          }

          else
          {
            if (v35 == 3)
            {
              v39 = *(v8 + 4);
              v40 = *(v8 + 5);
              v49 = __OFSUB__(v40, v39);
              v41 = v40 - v39;
              v42 = v49;
              goto LABEL_61;
            }

            v65 = &v8[16 * v35];
            v67 = *v65;
            v66 = *(v65 + 1);
            v49 = __OFSUB__(v66, v67);
            v59 = v66 - v67;
            v60 = v49;
LABEL_75:
            if (v60)
            {
              goto LABEL_136;
            }

            v68 = &v8[16 * v38];
            v70 = *(v68 + 4);
            v69 = *(v68 + 5);
            v49 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v49)
            {
              goto LABEL_139;
            }

            if (v71 < v59)
            {
              break;
            }
          }

          v4 = v38 - 1;
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_152;
          }

          v5 = v8;
          v76 = *&v8[16 * v4 + 32];
          v77 = *&v8[16 * v38 + 40];
          sub_100303978((*a3 + 8 * v76), (*a3 + 8 * *&v8[16 * v38 + 32]), (*a3 + 8 * v77), v37);
          if (v113)
          {
          }

          if (v77 < v76)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_100303EF8(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_131;
          }

          v78 = v5 + 16 * v4;
          *(v78 + 32) = v76;
          *(v78 + 40) = v77;
          v118 = v5;
          result = sub_100303E6C(v38);
          v8 = v118;
          v35 = *(v118 + 2);
          if (v35 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    break;
  }

  v5 = sub_1005728D8();
  v92 = v91;

  if (v85 == v5)
  {
    goto LABEL_104;
  }

LABEL_105:
  v93 = sub_100574498();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if ((v93 & 1) == 0)
  {
    goto LABEL_93;
  }

  if (v115)
  {
    v94 = *v4;
    v80 = *(v4 + 8);
    *v4 = v80;
    *(v4 + 8) = v94;
    v4 -= 8;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t sub_100303978(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = a2;
    }

    v63 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_30:
      v34 = v6;
      goto LABEL_61;
    }

    v15 = &selRef_changeItemCommand;
    while (1)
    {
      __dst = v5;
      v16 = *v5;
      v17 = *v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = [v16 v15[154]];
      v59 = v6;
      if (v18 && (v19 = v18, v20 = [v18 displayName], v19, v20))
      {
        v21 = sub_1005728D8();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = [v17 v15[154]];
      if (v24 && (v25 = v24, v26 = [v24 displayName], v25, v26))
      {
        v27 = sub_1005728D8();
        v29 = v28;

        if (v21 != v27)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v29 = 0xE000000000000000;
        if (v21)
        {
          goto LABEL_23;
        }
      }

      if (v23 == v29)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v15 = &selRef_changeItemCommand;
LABEL_26:
        v32 = v13;
        v31 = v59;
        v33 = v59 == v13++;
        v5 = __dst;
        if (v33)
        {
          goto LABEL_28;
        }

LABEL_27:
        *v31 = *v32;
        goto LABEL_28;
      }

LABEL_23:
      v30 = sub_100574498();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v15 = &selRef_changeItemCommand;
      if ((v30 & 1) == 0)
      {
        goto LABEL_26;
      }

      v31 = v59;
      v32 = __dst;
      v5 = __dst + 1;
      if (v59 != __dst)
      {
        goto LABEL_27;
      }

LABEL_28:
      v6 = v31 + 1;
      if (v13 >= v63 || v5 >= v4)
      {
        goto LABEL_30;
      }
    }
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v35 = a4;
    memmove(a4, a2, 8 * v12);
    v5 = a2;
    a4 = v35;
  }

  v63 = &a4[v12];
  v13 = a4;
  if (v10 < 8 || v5 <= v6)
  {
    v34 = v5;
    goto LABEL_61;
  }

  v37 = &selRef_changeItemCommand;
  v58 = a4;
  v60 = v6;
  do
  {
    __dsta = v5;
    v38 = v5 - 1;
    --v4;
    v39 = v63;
    v57 = v38;
    while (1)
    {
      v40 = *--v39;
      v41 = *v38;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v42 = [v40 v37[154]];
      if (v42 && (v43 = v42, v44 = [v42 displayName], v43, v44))
      {
        v45 = sub_1005728D8();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = [v41 v37[154]];
      if (v48 && (v49 = v48, v50 = [v48 displayName], v49, v50))
      {
        v51 = sub_1005728D8();
        v53 = v52;

        if (v45 != v51)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v53 = 0xE000000000000000;
        if (v45)
        {
          goto LABEL_50;
        }
      }

      if (v47 == v53)
      {
        v54 = 0;
        goto LABEL_51;
      }

LABEL_50:
      v54 = sub_100574498();
LABEL_51:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v55 = (v4 + 1);
      if (v54)
      {
        break;
      }

      v38 = v57;
      if (v55 != v63)
      {
        *v4 = *v39;
      }

      --v4;
      v63 = v39;
      v37 = &selRef_changeItemCommand;
      if (v39 <= v58)
      {
        v63 = v39;
        v13 = v58;
        v34 = __dsta;
        goto LABEL_61;
      }
    }

    v34 = v57;
    if (v55 != __dsta)
    {
      *v4 = *v57;
    }

    v13 = v58;
    v37 = &selRef_changeItemCommand;
    if (v63 <= v58)
    {
      break;
    }

    v5 = v57;
  }

  while (v57 > v60);
LABEL_61:
  if (v34 != v13 || v34 >= (v13 + ((v63 - v13 + (v63 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v34, v13, 8 * (v63 - v13));
  }

  return 1;
}

uint64_t sub_100303E6C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100303EF8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_100303F5C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1003040B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      sub_1000F40D4(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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

LABEL_26:
  __break(1u);
  return result;
}

uint64_t (*sub_10030421C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100573F58();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10030429C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1003042A4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100573F58();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100305C08;
  }

  __break(1u);
  return result;
}

void (*sub_100304324(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100573F58();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1003043A4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1003043AC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100573F58();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10030442C;
  }

  __break(1u);
  return result;
}

void *sub_100304434(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_100574178();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100302C18(v3, 0);
  sub_1000DB274((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

BOOL _s9MusicCore24SharePlayTogetherSessionC11ParticipantV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056D9E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&unk_1006ED338);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_100009DCC(&qword_1006ED548);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 24);
  v15 = *(a2 + 24);
  if (v14)
  {
    if (!v15 || (*(a1 + 16) != *(a2 + 16) || v14 != v15) && (sub_100574498() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v16 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v17 = *(v11 + 48);
  sub_10000CC8C(a1 + v16, v13, &unk_1006ED338);
  sub_10000CC8C(a2 + v16, &v13[v17], &unk_1006ED338);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_10001036C(v13, &unk_1006ED338);
      return 1;
    }

    goto LABEL_18;
  }

  sub_10000CC8C(v13, v10, &unk_1006ED338);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_18:
    sub_10001036C(v13, &qword_1006ED548);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_100305404(&unk_1006ED550, &type metadata accessor for SocialProfile);
  v20 = sub_1005727E8();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_10001036C(v13, &unk_1006ED338);
  return (v20 & 1) != 0;
}

void sub_100304880(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    sub_10008246C(a2, a3);
  }
}

uint64_t sub_1003048C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003048E0()
{

  return swift_deallocObject();
}

uint64_t sub_100304940(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&unk_1006ED338);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003049C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_100301AAC(a1, v4, v5, v7, v6);
}

uint64_t sub_100304AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_1003020A0(a1, v4, v5, v7, v6);
}

uint64_t sub_100304B60(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (qword_1006E5008 != -1)
  {
    swift_once();
  }

  v10 = sub_10056DF88();
  sub_10000C49C(v10, static Logger.sharePlayTogether);
  v11 = sub_10056DF68();
  v12 = sub_100573448();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a1, v13, 2u);
  }

  v14 = sub_100572F48();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_100572F08();
  v15 = v6;
  v16 = sub_100572EF8();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_1001B3FAC(0, 0, v9, a3, v17);
}

void sub_100304D44()
{
  sub_1003051B8(319, &qword_1006ED388, &type metadata for String, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_1002CA904(319, &qword_1006ED390, &qword_1006ED2A0);
    if (v1 <= 0x3F)
    {
      sub_1003051B8(319, &qword_1006ED398, &type metadata for Int, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_1002CA904(319, &qword_1006ED3A0, &qword_1006ED2E0);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100304F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009DCC(&unk_1006ED338);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100305048(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&unk_1006ED338);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003050F8()
{
  sub_1003051B8(319, &qword_1006ED410, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100305208();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003051B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100305208()
{
  if (!qword_1006ED418)
  {
    sub_10056D9E8();
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006ED418);
    }
  }
}

uint64_t sub_100305260(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1003052B8()
{

  return swift_deallocObject();
}

uint64_t sub_1003052F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100305354()
{
  result = qword_1006ED4C8;
  if (!qword_1006ED4C8)
  {
    sub_1000D3B98(255, &qword_1006ED4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ED4C8);
  }

  return result;
}

uint64_t sub_1003053BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000C8CC(a1, a1[3]);
  result = sub_10056DAB8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100305404(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100305460(uint64_t a1)
{
  v4 = *(sub_100009DCC(&qword_1006ED4B8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000CB98;

  return sub_1002FFFB4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003055A0(uint64_t *a1)
{
  v2 = sub_100009DCC(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_100305674(uint64_t a1)
{
  v4 = *(sub_100009DCC(&qword_1006ED4E8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_100300748(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_1003057A0()
{
  result = qword_1006ED4F0;
  if (!qword_1006ED4F0)
  {
    sub_100010324(&qword_1006ED4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ED4F0);
  }

  return result;
}

uint64_t sub_100305804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100305868(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003058C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&unk_1006ED338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100305934()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10030597C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CB98;

  return sub_100302834(a1, v4, v5, v6);
}

uint64_t sub_100305A30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_10030264C(a1, v4, v5, v6);
}

uint64_t sub_100305AE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100305B24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_10030264C(a1, v4, v5, v6);
}

uint64_t GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 225) = a3;
  *(v4 + 224) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_100009DCC(&qword_1006E6420);
  *(v4 + 32) = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  sub_100009DCC(&qword_1006ED5A0);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = type metadata accessor for GroupActivitiesManager.PrepareResult(0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v7 = sub_10056D348();
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();
  v8 = sub_10056D368();
  *(v4 + 160) = v8;
  *(v4 + 168) = *(v8 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = sub_100572F08();
  *(v4 + 192) = sub_100572EF8();
  v10 = sub_100572E78();
  *(v4 + 200) = v10;
  *(v4 + 208) = v9;

  return _swift_task_switch(sub_100305EB8, v10, v9);
}

uint64_t sub_100305EB8()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 80);
  v5 = &enum case for AuthorizationPromptOptions.PromptCondition.always(_:);
  if (!*(v0 + 224))
  {
    v5 = &enum case for AuthorizationPromptOptions.PromptCondition.automatic(_:);
  }

  (*(*(v0 + 144) + 104))(*(v0 + 152), *v5, *(v0 + 136));
  sub_10056D358();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_100306024;
  v7 = *(v0 + 128);
  v8 = *(v0 + 80);

  return sub_100312B00(v7, v8);
}

uint64_t sub_100306024()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  sub_10001036C(v2, &qword_1006ED5A0);
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return _swift_task_switch(sub_100306178, v4, v3);
}

uint64_t sub_100306178()
{
  v43 = v0;

  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_10056DF88();
  sub_10000C49C(v3, static Logger.groupActivities);
  sub_100320648(v2, v1, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v4 = sub_10056DF68();
  v5 = sub_100573448();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136446210;
    sub_100320648(v7, v8, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v11 = sub_100572978();
    v13 = v12;
    sub_10032099C(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v14 = sub_1000C9784(v11, v13, &v42);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "prepareForActivation result=%{public}s", v9, 0xCu);
    sub_100010474(v10);
  }

  else
  {

    sub_10032099C(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
  }

  v15 = v0[13];
  v16 = v0[5];
  v17 = v0[6];
  sub_100320648(v0[16], v15, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v18 = *(v17 + 48);
  if (v18(v15, 4, v16))
  {
    v19 = v0[16];
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[5];
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_10032099C(v20, type metadata accessor for GroupActivitiesManager.PrepareResult);
    sub_1003205E0(v19, v21, type metadata accessor for GroupActivitiesManager.PrepareResult);
    if ((v18(v21, 4, v22) | 2) == 3)
    {
      v41 = 0;
    }

    else
    {
      sub_10032099C(v0[12], type metadata accessor for GroupActivitiesManager.PrepareResult);
      v41 = 1;
    }
  }

  else
  {
    v23 = v0[21];
    v39 = v0[20];
    v40 = v0[22];
    v38 = v0[16];
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[6];
    v27 = v0[3];
    v28 = v0[4];
    v37 = v28;
    v29 = v0[2];
    sub_1003205E0(v0[13], v24, type metadata accessor for GroupActivitiesManager.Activity);
    sub_100313528();
    v30 = sub_100572F48();
    v41 = 1;
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    sub_100320648(v24, v25, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = v29;

    v32 = sub_100572EF8();
    v33 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v29;
    v34[5] = v27;
    sub_1003205E0(v25, v34 + v33, type metadata accessor for GroupActivitiesManager.Activity);
    sub_1001B3FAC(0, 0, v37, &unk_1005943B8, v34);

    sub_10032099C(v24, type metadata accessor for GroupActivitiesManager.Activity);
    sub_10032099C(v38, type metadata accessor for GroupActivitiesManager.PrepareResult);
    (*(v23 + 8))(v40, v39);
  }

  v35 = v0[1];

  return v35(v41);
}

uint64_t GroupActivitiesManager.leave(performLeaveCommand:)(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 280) = a1;
  *(v2 + 144) = sub_100572F08();
  *(v2 + 152) = sub_100572EF8();
  v4 = sub_100572E78();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return _swift_task_switch(sub_10030677C, v4, v3);
}

uint64_t sub_10030677C()
{
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  *(v0 + 176) = sub_10000C49C(v1, static Logger.groupActivities);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 280);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "👋🏻 Leaving session. Will perform leaveCommand=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 280);

  if (v6 == 1)
  {
    v7 = *(v0 + 136);
    v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v0 + 184) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v7 + v8) = 1;
    swift_beginAccess();
    v9 = v7[5];
    v10 = v7[6];
    sub_10000C8CC(v7 + 2, v9);
    v11 = *(v9 - 8);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    (*(v11 + 16))();
    v13 = (*(v10 + 48))(v9, v10);
    *(v0 + 200) = v13;
    (*(v11 + 8))(v12, v9);
    if (v13)
    {
      v14 = *(v0 + 136);
      *(v0 + 40) = &type metadata for Player.LeaveSessionCommand;
      *(v0 + 48) = &protocol witness table for Player.LeaveSessionCommand;
      *(v0 + 208) = [objc_opt_self() systemRoute];
      *(v0 + 120) = v14;

      v15 = sub_1005729A8();
      *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 56) = v15;
      *(v0 + 64) = v16;
      *(v0 + 216) = sub_100572EF8();
      v18 = sub_100572E78();
      *(v0 + 224) = v18;
      *(v0 + 232) = v17;

      return _swift_task_switch(sub_100306BDC, v18, v17);
    }

    *(*(v0 + 136) + *(v0 + 184)) = 0;
  }

  else
  {
  }

  v19 = *(v0 + 136);
  v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v19 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_10056D278();
  }

  v21 = *(v0 + 136);
  *(v19 + v20) = 0;

  sub_1003164A4();
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v23 = *(v21 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v23)
  {

    v24 = sub_10056DF68();
    v25 = sub_100573448();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Leave completed, pending session found", v26, 2u);
    }

    *(v19 + v20) = v23;
    swift_retain_n();

    sub_1003164A4();

    *(v21 + v22) = 0;
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100306BDC()
{
  v1 = v0[26];
  sub_100009DCC(&unk_1006EAF50);
  v2 = swift_allocObject();
  v0[30] = v2;
  *(v2 + 16) = xmmword_10057B510;
  sub_10002EA8C((v0 + 2), v2 + 32);
  v0[31] = sub_100572EF8();
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_100306CDC;

  return sub_10029AD70(v2, 0x10000, 1, v1, 0, (v0 + 7));
}

uint64_t sub_100306CDC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = sub_100572E78();
    v6 = v5;
    v7 = sub_100306FD0;
  }

  else
  {
    v4 = sub_100572E78();
    v6 = v8;
    v7 = sub_100306E54;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100306E54()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_100306EC0, v1, v2);
}

uint64_t sub_100306EC0()
{
  v1 = *(v0 + 264);

  if (v1 >> 62)
  {
    v4 = sub_100574178();
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    sub_100573F58();
    swift_unknownObjectRelease();
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return _swift_task_switch(v4, v2, v3);
  }

LABEL_5:
  v5 = *(v0 + 200);

  sub_10001036C(v0 + 56, &qword_1006E6B78);
  sub_100010474(v0 + 16);

  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = sub_100307390;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100306FD0()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_100307034, v1, v2);
}

uint64_t sub_100307034()
{
  v1 = v0[26];
  v2 = v0[25];

  v3 = v0[20];
  v4 = v0[21];

  return _swift_task_switch(sub_1003070A4, v3, v4);
}

uint64_t sub_1003070A4()
{
  v20 = v0;

  sub_10001036C((v0 + 7), &qword_1006E6B78);
  sub_100010474((v0 + 2));

  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573448();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[34];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[16] = v3;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v6 = sub_100572978();
    v8 = sub_1000C9784(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to perform leaveCommand with error=%{public}s", v4, 0xCu);
    sub_100010474(v5);
  }

  else
  {
  }

  *(v0[17] + v0[23]) = 0;
  v9 = v0[17];
  v10 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v9 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_10056D278();
  }

  v11 = v0[17];
  *(v9 + v10) = 0;

  sub_1003164A4();
  v12 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v13 = *(v11 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v13)
  {

    v14 = sub_10056DF68();
    v15 = sub_100573448();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Leave completed, pending session found", v16, 2u);
    }

    *(v9 + v10) = v13;
    swift_retain_n();

    sub_1003164A4();

    *(v11 + v12) = 0;
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100307390()
{

  *(v0[17] + v0[23]) = 0;
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_10056D278();
  }

  v3 = v0[17];
  *(v1 + v2) = 0;

  sub_1003164A4();
  v4 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v5 = *(v3 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v5)
  {

    v6 = sub_10056DF68();
    v7 = sub_100573448();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Leave completed, pending session found", v8, 2u);
    }

    *(v1 + v2) = v5;
    swift_retain_n();

    sub_1003164A4();

    *(v3 + v4) = 0;
  }

  v9 = v0[1];

  return v9();
}

void GroupActivitiesManager.postEvent(_:participantID:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v191 = a3;
  v189 = a2;
  v6 = *(a1 + 8);
  v174 = *a1;
  v173 = v6;
  v7 = *(a1 + 24);
  v172 = *(a1 + 16);
  v171 = v7;
  v8 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v8 - 8);
  v178 = v160 - v9;
  v181 = sub_10056D0F8();
  v180 = *(v181 - 8);
  v10 = __chkstk_darwin(v181);
  v175 = v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v179 = v160 - v13;
  __chkstk_darwin(v12);
  v182 = v160 - v14;
  v170 = sub_10056D038();
  v166 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_10056D058();
  v165 = *(v169 - 8);
  __chkstk_darwin(v169);
  v167 = v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_10056D0E8();
  v184 = *(v185 - 8);
  v17 = __chkstk_darwin(v185);
  v177 = v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v183 = v160 - v19;
  v195 = sub_10056CAE8();
  v188 = *(v195 - 8);
  __chkstk_darwin(v195);
  v194 = v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100009DCC(&qword_1006ED5C0);
  __chkstk_darwin(v21 - 8);
  v186 = v160 - v22;
  v196 = sub_10056D338();
  v197 = *(v196 - 8);
  v23 = __chkstk_darwin(v196);
  v176 = v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v198 = v160 - v26;
  v27 = __chkstk_darwin(v25);
  v193 = v160 - v28;
  __chkstk_darwin(v27);
  v190 = v160 - v29;
  v30 = sub_100009DCC(&qword_1006ED5C8);
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = v160 - v35;
  swift_beginAccess();
  v37 = v3[7];
  v38 = v3[8];
  *(v3 + 7) = xmmword_100582400;
  v3[9] = 0;
  v3[10] = 0;
  sub_1003209FC(v37, v38);
  swift_beginAccess();
  v40 = v3[5];
  v39 = v3[6];
  v41 = sub_10000C8CC(v3 + 2, v40);
  v42 = *(v40 - 8);
  __chkstk_darwin(v41);
  v44 = v160 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v44);
  v45 = (*(v39 + 56))(v40, v39);
  (*(v42 + 8))(v44, v40);
  v46 = [v45 applicationState];

  v187 = a1;
  if ((*(a1 + 48) | 4) == 4 && v46 || !*(v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    return;
  }

  sub_10056D288();
  (*(v31 + 104))(v34, enum case for GroupSession.State.joined<A>(_:), v30);
  v48 = type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_10032101C(&qword_1006ED5D0, type metadata accessor for GroupActivitiesManager.Activity);
  v160[0] = v48;
  v49 = sub_10056D268();
  v50 = *(v31 + 8);
  v50(v34, v30);
  v50(v36, v30);
  if ((v49 & 1) == 0)
  {
LABEL_27:

    return;
  }

  v192 = sub_100315998(v189, v191);
  v164 = v51;
  v160[1] = v47;
  v52 = sub_10056D228();
  v53 = v52;
  v54 = v52 + 56;
  v55 = 1 << *(v52 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v52 + 56);
  v58 = (v55 + 63) >> 6;
  v162 = (v197 + 16);
  v163 = (v197 + 32);
  v161 = v188 + 1;
  v188 = (v197 + 8);

  v59 = 0;
  v60 = v196;
  if (!v57)
  {
LABEL_9:
    while (1)
    {
      v61 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v61 >= v58)
      {

        v73 = 1;
        v74 = v190;
        v75 = v186;
        goto LABEL_22;
      }

      v57 = *(v54 + 8 * v61);
      ++v59;
      if (v57)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  while (1)
  {
    v61 = v59;
LABEL_12:
    v62 = v53;
    v63 = v197;
    v64 = *(v53 + 48) + *(v197 + 72) * (__clz(__rbit64(v57)) | (v61 << 6));
    v65 = v193;
    (*(v197 + 16))(v193, v64, v60);
    v66 = v60;
    v67 = *(v63 + 32);
    v67(v198, v65, v66);
    v68 = v194;
    sub_10056D328();
    v69 = sub_10056CAB8();
    v71 = v70;
    (*v161)(v68, v195);
    if (v69 == v192 && v71 == v164)
    {

      goto LABEL_21;
    }

    v72 = sub_100574498();

    if (v72)
    {
      break;
    }

    v57 &= v57 - 1;
    v60 = v196;
    (*v188)(v198, v196);
    v59 = v61;
    v53 = v62;
    if (!v57)
    {
      goto LABEL_9;
    }
  }

LABEL_21:

  v75 = v186;
  v76 = v196;
  v67(v186, v198, v196);
  v60 = v76;
  v73 = 0;
  v74 = v190;
LABEL_22:
  v77 = v197;
  (*(v197 + 56))(v75, v73, 1, v60);

  if ((*(v77 + 48))(v75, 1, v60) == 1)
  {
    sub_10001036C(v75, &qword_1006ED5C0);
    if (qword_1006E5050 == -1)
    {
LABEL_24:
      v78 = sub_10056DF88();
      sub_10000C49C(v78, static Logger.groupActivities);
      v79 = v191;

      v80 = sub_10056DF68();
      v81 = sub_100573428();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v201[0] = v83;
        *v82 = 136446210;
        *(v82 + 4) = sub_1000C9784(v189, v79, v201);
        _os_log_impl(&_mh_execute_header, v80, v81, "No active participant with identifier=%{public}s", v82, 0xCu);
        sub_100010474(v83);
      }

      goto LABEL_27;
    }

LABEL_82:
    swift_once();
    goto LABEL_24;
  }

  v84 = v60;
  (*v163)(v74, v75, v60);
  v85 = *v187;
  v86 = *(v187 + 8);
  v87 = *(v187 + 9) | ((*(v187 + 13) | (*(v187 + 15) << 16)) << 32);
  v89 = *(v187 + 16);
  v88 = *(v187 + 24);
  v90 = *(v187 + 48);
  v91 = v86 | (v87 << 8);
  if (v90 <= 2)
  {
    if (*(v187 + 48))
    {
      v92 = v60;
      v93 = v185;
      v94 = v187;
      if (v90 != 1)
      {
        if (v90 == 2)
        {
          v95 = v183;
          sub_10056D0A8();
          goto LABEL_53;
        }

        goto LABEL_76;
      }

      v95 = v183;
      sub_10056D0C8();
LABEL_53:
      (*v162)(v176, v74, v92);
      (*(v184 + 16))(v177, v95, v93);
      v122 = *(v94 + 8);
      v123 = *(v94 + 48);
      if (v123 == 4)
      {
        v124 = v181;
      }

      else
      {
        v124 = v181;
        v125 = v178;
        if (v123 == 5)
        {
          v127 = *(v94 + 32);
          v126 = *(v94 + 40);
          v128 = *(v94 + 16);
          v129 = *(v94 + 24);
          if (!(v122 | *v94 | v126 | v127 | v129 | v128) || *v94 == 2 && !(v126 | v122 | v127 | v129 | v128))
          {
            v130 = sub_10056C8A8();
            (*(*(v130 - 8) + 56))(v125, 1, 1, v130);
LABEL_61:
            v131 = v182;
            sub_10056D008();
            sub_10056D1F8();
            v132 = v180;
            v133 = v179;
            if (qword_1006E5050 != -1)
            {
              swift_once();
            }

            v134 = sub_10056DF88();
            sub_10000C49C(v134, static Logger.groupActivities);
            v135 = *(v132 + 16);
            v135(v133, v131, v124);
            v136 = sub_10056DF68();
            v137 = sub_100573448();
            if (os_log_type_enabled(v136, v137))
            {
              v138 = swift_slowAlloc();
              v139 = v124;
              v140 = swift_slowAlloc();
              *&v201[0] = v140;
              *v138 = 136446210;
              v135(v175, v133, v139);
              v141 = sub_100572978();
              v143 = v142;
              v144 = *(v132 + 8);
              v144(v133, v139);
              v145 = sub_1000C9784(v141, v143, v201);

              *(v138 + 4) = v145;
              _os_log_impl(&_mh_execute_header, v136, v137, "Posting event=%{public}s", v138, 0xCu);
              sub_100010474(v140);

              v144(v182, v139);
              (*(v184 + 8))(v183, v185);
              (*v188)(v190, v196);
              return;
            }

            v146 = *(v132 + 8);
            v146(v133, v124);
            v146(v131, v124);
            (*(v184 + 8))(v95, v185);
            goto LABEL_66;
          }
        }
      }

      sub_10056C868();
      goto LABEL_61;
    }

    v97 = (v166 + 8);
    v98 = (v165 + 8);
    v93 = v185;
    v99 = *v187;
    if (v86)
    {
      SharedListening.Event.Content.title.getter(v99, 1);
      v100 = v168;
      sub_10056D028();
    }

    else
    {
      SharedListening.Event.Content.title.getter(v99, 0);
      v100 = v168;
      sub_10056D018();
    }

    v121 = v167;
    sub_10056D048();
    (*v97)(v100, v170);
    v95 = v183;
    sub_10056D078();
    (*v98)(v121, v169);
    v92 = v84;
LABEL_52:
    v94 = v187;
    goto LABEL_53;
  }

  if (v90 == 3)
  {
    sub_10056D0D8();
    v101 = v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v102 = (*(*(v160[0] - 8) + 48))(v101, 1);
    v92 = v60;
    v93 = v185;
    v94 = v187;
    if (v102 || (v147 = *(v101 + 7)) == 0 || (v148 = [*(v147 + 16) identifiers], v149 = objc_msgSend(v85, "identifiers"), v150 = objc_msgSend(v148, "intersectsSet:", v149), v148, v149, v95 = v183, (v150 & 1) == 0))
    {
      if (qword_1006E5050 != -1)
      {
        swift_once();
      }

      v103 = sub_10056DF88();
      sub_10000C49C(v103, static Logger.groupActivities);
      v104 = v174;
      v105 = sub_10056DF68();
      v106 = sub_100573448();
      sub_100320AA0(v94);
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *&v201[0] = v108;
        *v107 = 136446210;
        v109 = v104;
        v110 = [v85 description];
        v111 = sub_1005728D8();
        v113 = v112;

        sub_100320AA0(v94);
        v114 = sub_1000C9784(v111, v113, v201);

        *(v107 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v105, v106, "Dispatching event for=%{public}s", v107, 0xCu);
        sub_100010474(v108);
      }

      sub_1000D3B98(0, &qword_1006E84A0);
      v115 = sub_1005735E8();
      v116 = swift_allocObject();
      *(v116 + 16) = v4;
      v117 = *(v94 + 16);
      *(v116 + 24) = *v94;
      *(v116 + 40) = v117;
      *(v116 + 56) = *(v94 + 32);
      *(v116 + 72) = *(v94 + 48);
      v118 = v191;
      *(v116 + 80) = v189;
      *(v116 + 88) = v118;
      sub_100320A44(v94, v201);

      OS_dispatch_queue.asyncAfter(_:block:)(sub_100320BF8, v116);

      (*(v184 + 8))(v183, v185);
LABEL_66:
      (*v188)(v190, v92);
      return;
    }

    goto LABEL_53;
  }

  if (v90 == 4)
  {
    v119 = v183;
    sub_10056D068();
    v120 = v4[8];
    v198 = v4[7];
    v197 = v120;
    v4[7] = v85;
    *(v4 + 64) = v86;
    *(v4 + 71) = BYTE6(v87);
    *(v4 + 69) = WORD2(v87);
    *(v4 + 65) = v87;
    v4[9] = v89;
    v4[10] = v88;
    v95 = v119;
    sub_100320C28(v174, v173);
    v74 = v190;
    sub_1003209FC(v198, v197);
    v92 = v84;
    v93 = v185;
    goto LABEL_52;
  }

  v92 = v60;
  v93 = v185;
  v94 = v187;
  if (v90 == 5)
  {
    v96 = *(v187 + 40) | *(v187 + 32) | v89 | v88 | v91;
    if (v85 == 1 && !v96)
    {
      v95 = v183;
      sub_10056D098();
      goto LABEL_53;
    }

    if (v85 == 3 && !v96)
    {
      v95 = v183;
      sub_10056D0B8();
      goto LABEL_53;
    }

    if (v85 == 4 && !v96)
    {
      v95 = v183;
      sub_10056D088();
      goto LABEL_53;
    }
  }

LABEL_76:
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v151 = sub_10056DF88();
  sub_10000C49C(v151, static Logger.groupActivities);
  sub_100320A44(v94, v201);
  v152 = sub_10056DF68();
  v153 = sub_100573448();
  sub_100320AA0(v94);
  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v200 = v155;
    *v154 = 136446210;
    v156 = *(v94 + 16);
    v201[0] = *v94;
    v201[1] = v156;
    v201[2] = *(v94 + 32);
    v202 = *(v94 + 48);
    sub_100320A44(v94, v199);
    v157 = sub_100572978();
    v159 = sub_1000C9784(v157, v158, &v200);

    *(v154 + 4) = v159;
    _os_log_impl(&_mh_execute_header, v152, v153, "Event case not handle for event=%{public}s", v154, 0xCu);
    sub_100010474(v155);
  }

  (*v188)(v74, v92);
}

int64x2_t GroupActivitiesManager.Activity.Metadata.init()@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = *(v2 + 28);
  v4 = sub_10056C8A8();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = vdupq_n_s64(0x4072C00000000000uLL);
  *(a1 + *(v2 + 32)) = result;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.artworkSize.setter(double a1, double a2)
{
  result = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.init(modelObject:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  sub_10056CC38();
  v2[21] = swift_task_alloc();
  v3 = sub_100572888();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100309034, 0, 0);
}

uint64_t sub_100309034()
{
  v1 = *(v0 + 152);
  *(v1 + 4) = 0;
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v3 = *(v2 + 28);
  v4 = sub_10056C8A8();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[*(v2 + 32)] = vdupq_n_s64(0x4072C00000000000uLL);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 title];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1005728D8();
      v11 = v10;
    }

    else
    {
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v19 = *(v0 + 176);
      v20 = *(v0 + 184);
      sub_100572818();
      (*(v20 + 16))(v18, v17, v19);
      if (qword_1006E4C60 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 200);
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);
      v24 = qword_1006FC3B8;
      sub_10056CBC8();
      v9 = sub_100572948();
      v11 = v25;
      (*(v23 + 8))(v21, v22);
    }

    v26 = [v6 artist];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 name];

      if (v28)
      {
LABEL_12:
        v29 = sub_1005728D8();
        v31 = v30;

LABEL_15:
        v43 = *(v0 + 152);
        v44 = [v6 artworkCatalog];
        goto LABEL_27;
      }
    }

    v142 = v11;
    v32 = v9;
    v33 = v1;
    v35 = *(v0 + 192);
    v34 = *(v0 + 200);
    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    sub_100572818();
    (*(v37 + 16))(v35, v34, v36);
    if (qword_1006E4C60 == -1)
    {
LABEL_14:
      v38 = *(v0 + 200);
      v39 = *(v0 + 176);
      v40 = *(v0 + 184);
      v41 = qword_1006FC3B8;
      sub_10056CBC8();
      v29 = sub_100572948();
      v31 = v42;
      (*(v40 + 8))(v38, v39);
      v1 = v33;
      v9 = v32;
      v11 = v142;
      goto LABEL_15;
    }

LABEL_69:
    swift_once();
    goto LABEL_14;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      v6 = v45;
      v46 = [v45 name];
      if (v46)
      {
        v47 = v46;
        v9 = sub_1005728D8();
        v11 = v48;
      }

      else
      {
        v74 = *(v0 + 192);
        v73 = *(v0 + 200);
        v75 = *(v0 + 176);
        v76 = *(v0 + 184);
        sub_100572818();
        (*(v76 + 16))(v74, v73, v75);
        if (qword_1006E4C60 != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 200);
        v78 = *(v0 + 176);
        v79 = *(v0 + 184);
        v80 = qword_1006FC3B8;
        sub_10056CBC8();
        v9 = sub_100572948();
        v11 = v81;
        (*(v79 + 8))(v77, v78);
      }

      v82 = [v6 providerName];
      if (v82)
      {
        v83 = v82;
        v29 = sub_1005728D8();
        v31 = v84;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      goto LABEL_15;
    }

    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (v69)
    {
      v6 = v69;
      v70 = [v69 title];
      if (v70)
      {
        v71 = v70;
        v9 = sub_1005728D8();
        v11 = v72;
      }

      else
      {
        v90 = *(v0 + 192);
        v89 = *(v0 + 200);
        v91 = *(v0 + 176);
        v92 = *(v0 + 184);
        sub_100572818();
        (*(v92 + 16))(v90, v89, v91);
        if (qword_1006E4C60 != -1)
        {
          swift_once();
        }

        v93 = *(v0 + 200);
        v94 = *(v0 + 176);
        v95 = *(v0 + 184);
        v96 = qword_1006FC3B8;
        sub_10056CBC8();
        v9 = sub_100572948();
        v11 = v97;
        (*(v95 + 8))(v93, v94);
      }

      v98 = [v6 artist];
      if (v98)
      {
        v99 = v98;
        v28 = [v98 name];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v142 = v11;
      v32 = v9;
      v33 = v1;
      v101 = *(v0 + 192);
      v100 = *(v0 + 200);
      v102 = *(v0 + 176);
      v103 = *(v0 + 184);
      sub_100572818();
      (*(v103 + 16))(v101, v100, v102);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (!v85)
      {
        objc_opt_self();
        v104 = swift_dynamicCastObjCClass();
        if (!v104)
        {
          sub_100573ED8(29);

          v126 = sub_100320E10(&off_100685A98);
          v127 = MPModelObject.humanDescription(including:)(v126);
          v129 = v128;

          v144._countAndFlagsBits = v127;
          v144._object = v129;
          sub_100572A98(v144);

          return sub_1005740F8();
        }

        v105 = v104;
        v106 = [v104 title];
        if (v106)
        {
          v107 = v106;
          v108 = sub_1005728D8();
          v110 = v109;
        }

        else
        {
          v131 = *(v0 + 192);
          v130 = *(v0 + 200);
          v132 = *(v0 + 176);
          v133 = *(v0 + 184);
          sub_100572818();
          (*(v133 + 16))(v131, v130, v132);
          if (qword_1006E4C60 != -1)
          {
            swift_once();
          }

          v134 = *(v0 + 200);
          v135 = *(v0 + 176);
          v136 = *(v0 + 184);
          v137 = qword_1006FC3B8;
          sub_10056CBC8();
          v108 = sub_100572948();
          v110 = v138;
          (*(v136 + 8))(v134, v135);
        }

        v139 = *(v0 + 152);
        v44 = [v105 artworkCatalog];
        *v139 = v108;
        v139[1] = v110;
        *(v1 + 2) = 0;
        *(v1 + 3) = 0;
        if (v44)
        {
          goto LABEL_28;
        }

        goto LABEL_66;
      }

      v6 = v85;
      v86 = [v85 title];
      if (v86)
      {
        v87 = v86;
        v9 = sub_1005728D8();
        v11 = v88;
      }

      else
      {
        v112 = *(v0 + 192);
        v111 = *(v0 + 200);
        v113 = *(v0 + 176);
        v114 = *(v0 + 184);
        sub_100572818();
        (*(v114 + 16))(v112, v111, v113);
        if (qword_1006E4C60 != -1)
        {
          swift_once();
        }

        v115 = *(v0 + 200);
        v116 = *(v0 + 176);
        v117 = *(v0 + 184);
        v118 = qword_1006FC3B8;
        sub_10056CBC8();
        v9 = sub_100572948();
        v11 = v119;
        (*(v117 + 8))(v115, v116);
      }

      v120 = [v6 show];
      if (v120)
      {
        v121 = v120;
        v28 = [v120 title];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v142 = v11;
      v32 = v9;
      v33 = v1;
      v123 = *(v0 + 192);
      v122 = *(v0 + 200);
      v124 = *(v0 + 176);
      v125 = *(v0 + 184);
      sub_100572818();
      (*(v125 + 16))(v123, v122, v124);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_69;
  }

  v13 = v12;
  v14 = [v12 name];
  if (v14)
  {
    v15 = v14;
    v9 = sub_1005728D8();
    v11 = v16;
  }

  else
  {
    v50 = *(v0 + 192);
    v49 = *(v0 + 200);
    v51 = *(v0 + 176);
    v52 = *(v0 + 184);
    sub_100572818();
    (*(v52 + 16))(v50, v49, v51);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 200);
    v54 = *(v0 + 176);
    v55 = *(v0 + 184);
    v56 = qword_1006FC3B8;
    sub_10056CBC8();
    v9 = sub_100572948();
    v11 = v57;
    (*(v55 + 8))(v53, v54);
  }

  v58 = [v13 curator];
  if (v58 && (v59 = v58, v60 = [v58 name], v59, v60))
  {
    v29 = sub_1005728D8();
    v31 = v61;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v43 = *(v0 + 152);
  v44 = MPModelPlaylist.preferredArtworkCatalog.getter();
LABEL_27:
  *v43 = v9;
  v43[1] = v11;
  *(v1 + 2) = v29;
  v43[3] = v31;
  if (v44)
  {
LABEL_28:
    *(v0 + 208) = v44;
    v62 = v44;
    type metadata accessor for GroupActivitiesManager.ArtworkCachingReference();
    v63 = swift_allocObject();
    *(v0 + 216) = v63;
    *(v63 + 16) = 0xD00000000000001ELL;
    *(v63 + 24) = 0x80000001005B53B0;
    v64 = v62;
    v65 = objc_opt_self();
    v66 = sub_100572898();
    [v65 setCacheLimit:0 forCacheIdentifier:v66 cacheReference:v63];

    v67 = sub_100572898();

    [v64 setCacheIdentifier:v67 forCacheReference:v63];

    [v64 setFittingSize:{300.0, 300.0}];
    [v64 setDestinationScale:0.0];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_10030A054;
    v68 = swift_continuation_init();
    *(v0 + 136) = sub_100009DCC(&qword_1006E8F30);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001D44F4;
    *(v0 + 104) = &unk_10069B3A0;
    *(v0 + 112) = v68;
    [v64 requestImageWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

LABEL_66:

  v140 = *(v0 + 8);

  return v140();
}

uint64_t sub_10030A054()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_10030A22C;
  }

  else
  {
    v2 = sub_10030A164;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030A164()
{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = [v4 CGImage];

  *(v3 + 32) = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_10030A22C()
{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  *(v3 + 32) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_10030A2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  sub_100009DCC(&qword_1006ED5E0);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_10030A38C, 0, 0);
}

uint64_t sub_10030A38C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v4 = *(v3 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2 + v4, 1, 1, v5);
  if (v1 && (v7 = v1, v8 = [v7 sharedListeningProperties], v0[24] = v8, v7, v8))
  {
    v9 = v0[22];
    v10 = v0[21];
    v26 = v0[20];
    v27 = v0[23];
    v11 = v0[19];
    sub_10001036C(v11, &qword_1006ED5E8);
    sub_10002EA8C(v9, v11);
    sub_1000F64CC(v10, v2 + v4, &qword_1006ED5E0);
    type metadata accessor for CodableListeningProperties();
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v2 + 40) = v26;
    *(v2 + 48) = v12;
    sub_10000CC8C(v2 + v4, v27, &qword_1006ED5E0);
    v13 = (*(v6 + 48))(v27, 1, v5);
    v14 = v0[23];
    if (v13 == 1)
    {
      v15 = v7;
      v16 = v8;
      sub_10001036C(v14, &qword_1006ED5E0);
      if (qword_1006E5048 != -1)
      {
        swift_once();
      }

      v17 = qword_1006ED590;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_10030A790;
      v18 = swift_continuation_init();
      v0[17] = sub_100009DCC(&qword_1006EDEA8);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_1001D44F4;
      v0[13] = &unk_10069B5E0;
      v0[14] = v18;
      [v15 getRepresentativeObjectWithProperties:v17 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v24 = v0[21];
    sub_100010474(v0[22]);
    sub_10001036C(v24, &qword_1006ED5E0);
    sub_10001036C(v14, &qword_1006ED5E0);

    v23 = v0[1];
  }

  else
  {
    v19 = v0[22];
    v20 = v0[21];
    v21 = v0[19];
    sub_1003227C4();
    swift_allocError();
    *v22 = 96;
    swift_willThrow();

    sub_100010474(v19);
    sub_10001036C(v20, &qword_1006ED5E0);
    sub_10032099C(v21, type metadata accessor for GroupActivitiesManager.Activity);

    v23 = v0[1];
  }

  return v23();
}

uint64_t sub_10030A790()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_10030A980;
  }

  else
  {
    v2 = sub_10030A8A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030A8A0()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v6 = [v4 innermostModelObject];

  sub_100010474(v3);
  sub_10001036C(v2, &qword_1006ED5E0);
  type metadata accessor for CodableModelObjectIdentity();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v5 + 56) = v7;

  v8 = v0[1];

  return v8();
}

uint64_t sub_10030A980()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  swift_willThrow();

  sub_100010474(v2);
  sub_10001036C(v3, &qword_1006ED5E0);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  *(v4 + 56) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t GroupActivitiesManager.Activity.metadata.getter(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006ED5E0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_10056D148();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10030AC04, 0, 0);
}

uint64_t sub_10030AC04()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = sub_10056D1C8();
  v0[17] = v5;
  v6 = swift_allocBox();
  v8 = v7;
  v0[18] = v6;
  v0[19] = v7;
  sub_10056D1B8();
  sub_10056D178();
  sub_10056D138();
  sub_10056D188();
  v9 = type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_10000CC8C(v4 + *(v9 + 32), v3, &qword_1006ED5E0);
  v10 = *(v2 + 48);
  v0[20] = v10;
  v0[21] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v3, 1, v1) != 1)
  {
    v22 = v0[15];
    v23 = v0[12];
    v24 = v0[9];
    v56 = v0[7];
    sub_1003205E0(v0[11], v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    sub_10056D198();

    sub_10056D1A8();
    v25 = *(v22 + 32);
    sub_10056D168();
    sub_10000CC8C(v22 + *(v23 + 28), v24, &qword_1006E5D10);
    sub_10056D158();
    sub_10032099C(v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v5 - 8) + 16))(v56, v8, v5);
    goto LABEL_30;
  }

  v11 = v0[8];
  sub_10001036C(v0[11], &qword_1006ED5E0);
  v12 = *(v11 + 56);
  if (!v12)
  {
    (*(*(v5 - 8) + 16))(v0[7], v8, v5);
    goto LABEL_30;
  }

  v13 = *(v12 + 16);
  v0[22] = v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = qword_1006E5030;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = qword_1006ED578;
    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = v16;
    v20 = [v18 kindWithVariants:3];
    v21 = [v17 kindWithSongKind:v20];

    goto LABEL_25;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v26 = objc_opt_self();
    v27 = v13;
    v28 = _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0();
    v21 = [v26 kindWithPlaylistEntryKind:v28 options:0];

    if (qword_1006E5038 != -1)
    {
      swift_once();
    }

    v29 = qword_1006ED580;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1000D3B98(0, &qword_1006ED5F0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = v13;
      v21 = [ObjCClassFromMetadata identityKind];
      if (qword_1006E5040 != -1)
      {
        swift_once();
      }

      v29 = qword_1006ED588;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v32 = objc_opt_self();
        v33 = v13;
        v34 = [v32 kindWithVariants:7];
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v51 = v13;
            sub_100573ED8(29);

            v52 = sub_100320E10(&off_100685AC0);
            v53 = MPModelObject.humanDescription(including:)(v52);
            v55 = v54;

            v59._countAndFlagsBits = v53;
            v59._object = v55;
            sub_100572A98(v59);

            return sub_1005740F8();
          }

          v49 = objc_opt_self();
          v50 = v13;
          v21 = [v49 kindWithVariants:3];
          if (qword_1006E5020 != -1)
          {
            swift_once();
          }

          v29 = qword_1006ED570;
          goto LABEL_24;
        }

        v35 = objc_opt_self();
        v36 = v13;
        v34 = [v35 kindWithVariants:3];
      }

      v21 = v34;
      if (qword_1006E5010 != -1)
      {
        swift_once();
      }

      v29 = qword_1006ED560;
    }
  }

LABEL_24:
  v19 = v29;
LABEL_25:
  v0[23] = v19;
  v0[24] = v21;
  sub_10000CC8C(v0[8], (v0 + 2), &qword_1006ED5E8);
  v37 = v0[5];
  if (v37)
  {
    v38 = v0[6];
    sub_10000C8CC(v0 + 2, v0[5]);
    v57 = (*(v38 + 8) + **(v38 + 8));
    v39 = swift_task_alloc();
    v0[25] = v39;
    *v39 = v0;
    v39[1] = sub_10030B498;
    v40 = v0[10];

    return v57(v40, v13, v21, v19, v37, v38);
  }

  v42 = v0[12];
  v43 = v0[13];
  v44 = v0[10];

  sub_10001036C((v0 + 2), &qword_1006ED5E8);
  (*(v43 + 56))(v44, 1, 1, v42);
  v45 = v0[19];
  v46 = v0[17];
  v47 = v0[7];
  sub_10001036C(v0[10], &qword_1006ED5E0);
  (*(*(v46 - 8) + 16))(v47, v45, v46);
LABEL_30:
  sub_10030B7D8();

  v48 = v0[1];

  return v48();
}

uint64_t sub_10030B498()
{

  return _swift_task_switch(sub_10030B594, 0, 0);
}

uint64_t sub_10030B594()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[10];
  sub_100010474((v0 + 2));
  v4 = v1(v3, 1, v2);
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  if (v4 == 1)
  {

    v8 = v0[19];
    v9 = v0[17];
    v10 = v0[7];
    sub_10001036C(v0[10], &qword_1006ED5E0);
    (*(*(v9 - 8) + 16))(v10, v8, v9);
  }

  else
  {
    v11 = v0[19];
    v12 = v0[14];
    v13 = v0[9];
    v18 = v0[17];
    v19 = v0[7];
    v17 = v0[12];
    sub_1003205E0(v0[10], v12, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    sub_10056D198();

    sub_10056D1A8();
    v14 = *(v12 + 32);
    sub_10056D168();
    sub_10000CC8C(v12 + *(v17 + 28), v13, &qword_1006E5D10);
    sub_10056D158();

    sub_10032099C(v12, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v18 - 8) + 16))(v19, v11, v18);
  }

  sub_10030B7D8();

  v15 = v0[1];

  return v15();
}

void sub_10030B7D8()
{
  v0 = sub_10056D1C8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v4 = sub_10056DF88();
  sub_10000C49C(v4, static Logger.groupActivities);

  v14 = sub_10056DF68();
  v5 = sub_100573448();

  if (os_log_type_enabled(v14, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = swift_projectBox();
    swift_beginAccess();
    (*(v1 + 16))(v3, v8, v0);
    v9 = sub_1005729A8();
    v11 = sub_1000C9784(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v14, v5, "Sending activity metadata=%{public}s", v6, 0xCu);
    sub_100010474(v7);
  }

  else
  {
    v12 = v14;
  }
}

void sub_10030BA1C()
{
  sub_100009DCC(&unk_1006E8FD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057B500;
  *(v0 + 32) = sub_1005728D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1005728D8();
  *(v0 + 56) = v2;
  sub_100009DCC(&qword_1006E9140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B500;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057B510;
  *(v5 + 32) = sub_1005728D8();
  *(v5 + 40) = v6;
  isa = sub_100572D08().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 propertySetWithProperties:isa];

  *(inited + 48) = v9;
  *(inited + 56) = sub_1005728D8();
  *(inited + 64) = v10;
  v11 = sub_100572D08().super.isa;
  v12 = [v8 propertySetWithProperties:v11];

  *(inited + 72) = v12;
  sub_1000F41EC(inited);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E9148);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  v14 = sub_100572D08().super.isa;

  sub_1000D3B98(0, &qword_1006EADF0);
  v15 = sub_100572688().super.isa;

  v16 = [v13 initWithProperties:v14 relationships:v15];

  qword_1006ED560 = v16;
}

void sub_10030BC9C()
{
  sub_100009DCC(&unk_1006E8FD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057B500;
  *(v0 + 32) = sub_1005728D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1005728D8();
  *(v0 + 56) = v2;
  sub_100009DCC(&qword_1006E9140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057B510;
  *(v5 + 32) = sub_1005728D8();
  *(v5 + 40) = v6;
  isa = sub_100572D08().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_1000F41EC(inited);
  swift_setDeallocating();
  sub_10001036C(inited + 32, &qword_1006E9148);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_100572D08().super.isa;

  sub_1000D3B98(0, &qword_1006EADF0);
  v11 = sub_100572688().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_1006ED568 = v12;
}

void sub_10030BED4()
{
  sub_100009DCC(&qword_1006E9140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100580F90;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v1;
  if (qword_1006E5010 != -1)
  {
    swift_once();
  }

  v2 = qword_1006ED560;
  *(inited + 48) = qword_1006ED560;
  *(inited + 56) = sub_1005728D8();
  *(inited + 64) = v3;
  v4 = qword_1006E5018;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_1006ED568;
  *(inited + 72) = qword_1006ED568;
  *(inited + 80) = sub_1005728D8();
  *(inited + 88) = v7;
  v8 = qword_1006E5020;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1006ED570;
  *(inited + 96) = qword_1006ED570;
  v11 = v10;
  sub_1000F41EC(inited);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E9148);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MPPropertySet);
  isa = sub_100572D08().super.isa;
  sub_1000D3B98(0, &qword_1006EADF0);
  v14 = sub_100572688().super.isa;

  v15 = [v12 initWithProperties:isa relationships:v14];

  static GroupActivitiesManager.Activity.playingProperties = v15;
}

uint64_t *GroupActivitiesManager.Activity.playingProperties.unsafeMutableAddressor()
{
  if (qword_1006E5028 != -1)
  {
    swift_once();
  }

  return &static GroupActivitiesManager.Activity.playingProperties;
}

id static GroupActivitiesManager.Activity.playingProperties.getter()
{
  if (qword_1006E5028 != -1)
  {
    swift_once();
  }

  v1 = static GroupActivitiesManager.Activity.playingProperties;

  return v1;
}

void sub_10030C1B0()
{
  sub_100009DCC(&unk_1006E8FD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057B500;
  *(v0 + 32) = sub_1005728D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1005728D8();
  *(v0 + 56) = v2;
  sub_100009DCC(&qword_1006E9140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057B510;
  *(v5 + 32) = sub_1005728D8();
  *(v5 + 40) = v6;
  isa = sub_100572D08().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_1000F41EC(inited);
  swift_setDeallocating();
  sub_10001036C(inited + 32, &qword_1006E9148);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_100572D08().super.isa;

  sub_1000D3B98(0, &qword_1006EADF0);
  v11 = sub_100572688().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_1006ED578 = v12;
}

void sub_10030C3CC()
{
  sub_100009DCC(&unk_1006E8FD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057B500;
  *(v0 + 32) = sub_1005728D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1005728D8();
  *(v0 + 56) = v2;
  sub_100009DCC(&qword_1006E9140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057B510;
  *(v5 + 32) = sub_1005728D8();
  *(v5 + 40) = v6;
  isa = sub_100572D08().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_1000F41EC(inited);
  swift_setDeallocating();
  sub_10001036C(inited + 32, &qword_1006E9148);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_100572D08().super.isa;

  sub_1000D3B98(0, &qword_1006EADF0);
  v11 = sub_100572688().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_1006ED580 = v12;
}

void sub_10030C604(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100009DCC(&unk_1006E8FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057B500;
  *(v5 + 32) = sub_1005728D8();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_1005728D8();
  *(v5 + 56) = v7;
  isa = sub_100572D08().super.isa;

  v9 = [objc_opt_self() propertySetWithProperties:isa];

  *a4 = v9;
}

id sub_10030C6C8()
{
  result = sub_10030C6E8();
  qword_1006ED590 = result;
  return result;
}

id sub_10030C6E8()
{
  if (qword_1006E5028 != -1)
  {
    swift_once();
  }

  v0 = static GroupActivitiesManager.Activity.playingProperties;
  sub_100009DCC(&qword_1006E9140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100580F90;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v2;
  if (qword_1006E5038 != -1)
  {
    swift_once();
  }

  v3 = qword_1006ED580;
  *(inited + 48) = qword_1006ED580;
  *(inited + 56) = sub_1005728D8();
  *(inited + 64) = v4;
  v5 = qword_1006E5030;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1006ED578;
  *(inited + 72) = qword_1006ED578;
  *(inited + 80) = sub_1005728D8();
  *(inited + 88) = v8;
  v9 = qword_1006E5040;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_1006ED588;
  *(inited + 96) = qword_1006ED588;
  v12 = v11;
  sub_1000F41EC(inited);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E9148);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  isa = sub_100572D08().super.isa;
  sub_1000D3B98(0, &qword_1006EADF0);
  v15 = sub_100572688().super.isa;

  v16 = [v13 initWithProperties:isa relationships:v15];

  v17 = [v0 propertySetByCombiningWithPropertySet:v16];
  return v17;
}

unint64_t sub_10030C970()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_10030C9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001BLL && 0x80000001005B5760 == a2;
  if (v5 || (sub_100574498() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001005B5780 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100574498();

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

uint64_t sub_10030CA90(uint64_t a1)
{
  v2 = sub_100320FA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030CACC(uint64_t a1)
{
  v2 = sub_100320FA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupActivitiesManager.Activity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_100009DCC(&qword_1006ED5F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = *(v9 + 40);
  v13 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  sub_10000C8CC(a1, a1[3]);
  sub_100320FA4();
  sub_100574708();
  if (!v2)
  {
    v14 = v5;
    v15 = v18;
    type metadata accessor for CodableListeningProperties();
    v19 = 0;
    sub_10032101C(&qword_1006ED608, type metadata accessor for CodableListeningProperties);
    sub_1005742D8();
    *(v11 + 6) = v20;
    type metadata accessor for CodableModelObjectIdentity();
    v19 = 1;
    sub_10032101C(&qword_1006ED610, type metadata accessor for CodableModelObjectIdentity);
    sub_1005742D8();
    v16 = v20;
    (*(v14 + 8))(v7, v4);
    *(v11 + 7) = v16;
    sub_100320648(v11, v15, type metadata accessor for GroupActivitiesManager.Activity);
  }

  sub_100010474(a1);
  return sub_10032099C(v11, type metadata accessor for GroupActivitiesManager.Activity);
}

uint64_t GroupActivitiesManager.Activity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006ED618);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_100320FA4();
  sub_100574718();
  v11 = *(v3 + 48);
  HIBYTE(v10) = 0;
  sub_100009DCC(&qword_1006ED620);
  sub_100321088();
  sub_100574368();
  if (!v2)
  {
    v11 = *(v3 + 56);
    HIBYTE(v10) = 1;
    sub_100009DCC(&qword_1006ED638);
    sub_10032113C();
    sub_100574368();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10030CFFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return GroupActivitiesManager.Activity.metadata.getter(a1);
}

uint64_t sub_10030D0CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10032101C(&qword_1006ED658, type metadata accessor for GroupActivitiesManager.State);
  sub_10056CEF8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t GroupActivitiesManager.State.isSharePlaySessionActive.getter()
{
  swift_getKeyPath();
  sub_10032101C(&qword_1006ED658, type metadata accessor for GroupActivitiesManager.State);
  sub_10056CEF8();

  return *(v0 + 16);
}

uint64_t sub_10030D23C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10032101C(&qword_1006ED658, type metadata accessor for GroupActivitiesManager.State);
    sub_10056CEE8();
  }

  return result;
}

uint64_t sub_10030D34C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10032101C(&qword_1006ED658, type metadata accessor for GroupActivitiesManager.State);
  sub_10056CEF8();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t GroupActivitiesManager.State.isLoading.getter()
{
  swift_getKeyPath();
  sub_10032101C(&qword_1006ED658, type metadata accessor for GroupActivitiesManager.State);
  sub_10056CEF8();

  return *(v0 + 17);
}

uint64_t sub_10030D4BC(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10032101C(&qword_1006ED658, type metadata accessor for GroupActivitiesManager.State);
    sub_10056CEE8();
  }

  return result;
}

uint64_t GroupActivitiesManager.State.deinit()
{
  v1 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v2 = sub_10056CF38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GroupActivitiesManager.State.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v2 = sub_10056CF38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t GroupActivitiesManager.coordinator.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_100010474(v1 + 16);
  sub_10002EA74(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t GroupActivitiesManager.pendingNoticeAlert.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_100320C28(v1, *(v0 + 64));
  return v1;
}

uint64_t GroupActivitiesManager.isSharePlaySessionActive.setter(char a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 96);
  v5 = a1 & 1;
  *(v1 + 96) = a1;
  if (v4 != v5)
  {
    v6 = *(v1 + 88);
    if (*(v6 + 16) == v5)
    {
      *(v6 + 16) = v5;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10032101C(&qword_1006ED658, type metadata accessor for GroupActivitiesManager.State);
      sub_10056CEE8();
    }
  }

  return result;
}

void (*GroupActivitiesManager.isSharePlaySessionActive.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + 96);
  return sub_10030D990;
}

void sub_10030D990(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = v2[4];
  if (a2)
  {
    GroupActivitiesManager.isSharePlaySessionActive.setter(v3);
  }

  else
  {
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;
    if (v3 != v5)
    {
      v6 = *(v2[4] + 88);
      if (v3 == *(v6 + 16))
      {
        *(v6 + 16) = v3;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v2[3] = v6;
        sub_10032101C(&qword_1006ED658, type metadata accessor for GroupActivitiesManager.State);
        sub_10056CEE8();
      }
    }
  }

  free(v2);
}

uint64_t GroupActivitiesManager.participantsCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t sub_10030DB50@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  return result;
}

uint64_t sub_10030DBD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E488();
  return sub_10030DC9C(v1);
}

uint64_t sub_10030DC9C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v11 != a1)
  {
    if (qword_1006E5050 != -1)
    {
      swift_once();
    }

    v5 = sub_10056DF88();
    sub_10000C49C(v5, static Logger.groupActivities);

    v6 = sub_10056DF68();
    v7 = sub_100573448();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      *(v8 + 4) = v11;

      _os_log_impl(&_mh_execute_header, v6, v7, "👤 Participants count update=%{public}ld", v8, 0xCu);
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v9 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    result = swift_beginAccess();
    if (*(v2 + v9) < v11)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      *(v2 + v9) = v10;
    }
  }

  return result;
}

uint64_t Logger.groupActivities.unsafeMutableAddressor()
{
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();

  return sub_10000C49C(v0, static Logger.groupActivities);
}

uint64_t sub_10030DF8C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006ED2D0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006ED2C8);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t GroupActivitiesManager.isLoading.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t sub_10030E184@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  return result;
}

uint64_t sub_10030E204()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E488();
  return sub_10030E2D0(v1);
}

uint64_t sub_10030E2D0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v11 != v3)
  {
    if (qword_1006E5050 != -1)
    {
      swift_once();
    }

    v5 = sub_10056DF88();
    sub_10000C49C(v5, static Logger.groupActivities);

    v6 = sub_10056DF68();
    v7 = sub_100573448();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      *(v8 + 4) = v11;

      _os_log_impl(&_mh_execute_header, v6, v7, "⏳ Session is loading=%{BOOL,public}d", v8, 8u);
    }

    else
    {
    }

    v9 = *(v2 + 88);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    if (v11 == *(v9 + 17))
    {
      *(v9 + 17) = v11;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10032101C(&qword_1006ED658, type metadata accessor for GroupActivitiesManager.State);
      sub_10056CEE8();
    }

    return sub_10030E5B0();
  }

  return result;
}

uint64_t sub_10030E5B0()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006ED5C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v64 = &v53[-v4];
  v67 = sub_100009DCC(&qword_1006ED698);
  v5 = __chkstk_darwin(v67);
  v7 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v53[-v8];
  v10 = sub_100009DCC(&qword_1006ED6A0);
  v11 = __chkstk_darwin(v10 - 8);
  v63 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v66 = &v53[-v14];
  v15 = __chkstk_darwin(v13);
  v65 = &v53[-v16];
  v17 = __chkstk_darwin(v15);
  v19 = &v53[-v18];
  v20 = __chkstk_darwin(v17);
  v22 = &v53[-v21];
  __chkstk_darwin(v20);
  v24 = &v53[-v23];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v68)
  {
    goto LABEL_2;
  }

  v57 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v26 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
  v61 = v1;
  v59 = v7;
  if (v26)
  {

    sub_10056D288();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v3[7];
  v28(v24, v27, 1, v2);
  v55 = v3[13];
  v56 = v3 + 13;
  v55(v22, enum case for GroupSession.State.waiting<A>(_:), v2);
  v58 = v28;
  v28(v22, 0, 1, v2);
  v29 = *(v67 + 48);
  sub_10000CC8C(v24, v9, &qword_1006ED6A0);
  sub_10000CC8C(v22, &v9[v29], &qword_1006ED6A0);
  v62 = v3;
  v30 = v3[6];
  if (v30(v9, 1, v2) == 1)
  {
    sub_10001036C(v22, &qword_1006ED6A0);
    sub_10001036C(v24, &qword_1006ED6A0);
    if (v30(&v9[v29], 1, v2) == 1)
    {
      sub_10001036C(v9, &qword_1006ED6A0);
      v25 = 1;
      return GroupActivitiesManager.isSharePlaySessionActive.setter(v25);
    }

    goto LABEL_11;
  }

  sub_10000CC8C(v9, v19, &qword_1006ED6A0);
  if (v30(&v9[v29], 1, v2) == 1)
  {
    sub_10001036C(v22, &qword_1006ED6A0);
    sub_10001036C(v24, &qword_1006ED6A0);
    (v62[1])(v19, v2);
LABEL_11:
    sub_10001036C(v9, &qword_1006ED698);
    v31 = v61;
    goto LABEL_12;
  }

  v35 = v62[4];
  v60 = v30;
  v36 = v64;
  v35(v64, &v9[v29], v2);
  sub_100010BC0(&qword_1006ED6A8, &qword_1006ED5C8);
  v54 = sub_1005727E8();
  v37 = v62[1];
  v38 = v36;
  v30 = v60;
  v37(v38, v2);
  sub_10001036C(v22, &qword_1006ED6A0);
  sub_10001036C(v24, &qword_1006ED6A0);
  v37(v19, v2);
  sub_10001036C(v9, &qword_1006ED6A0);
  v31 = v61;
  if ((v54 & 1) == 0)
  {
LABEL_12:
    v32 = *(v31 + v57);
    v60 = v30;
    if (v32)
    {

      v33 = v65;
      sub_10056D288();

      v34 = 0;
    }

    else
    {
      v34 = 1;
      v33 = v65;
    }

    v39 = v66;
    v40 = v58;
    v58(v33, v34, 1, v2);
    v55(v39, enum case for GroupSession.State.joined<A>(_:), v2);
    v40(v39, 0, 1, v2);
    v41 = *(v67 + 48);
    v42 = v59;
    sub_10000CC8C(v33, v59, &qword_1006ED6A0);
    sub_10000CC8C(v39, v42 + v41, &qword_1006ED6A0);
    v43 = v60;
    if (v60(v42, 1, v2) == 1)
    {
      sub_10001036C(v39, &qword_1006ED6A0);
      sub_10001036C(v33, &qword_1006ED6A0);
      if (v43(v42 + v41, 1, v2) == 1)
      {
        sub_10001036C(v42, &qword_1006ED6A0);
        goto LABEL_2;
      }
    }

    else
    {
      v44 = v63;
      sub_10000CC8C(v42, v63, &qword_1006ED6A0);
      if (v43(v42 + v41, 1, v2) != 1)
      {
        v49 = v62;
        v50 = v64;
        (v62[4])(v64, v42 + v41, v2);
        sub_100010BC0(&qword_1006ED6A8, &qword_1006ED5C8);
        v51 = sub_1005727E8();
        v52 = v49[1];
        v52(v50, v2);
        sub_10001036C(v66, &qword_1006ED6A0);
        sub_10001036C(v33, &qword_1006ED6A0);
        v52(v44, v2);
        sub_10001036C(v42, &qword_1006ED6A0);
        if (v51)
        {
          goto LABEL_2;
        }

LABEL_23:
        v45 = [objc_opt_self() standardUserDefaults];
        v46 = sub_100572898();
        v47 = [v45 BOOLForKey:v46];

        v25 = v47;
        return GroupActivitiesManager.isSharePlaySessionActive.setter(v25);
      }

      sub_10001036C(v39, &qword_1006ED6A0);
      sub_10001036C(v33, &qword_1006ED6A0);
      (v62[1])(v44, v2);
    }

    sub_10001036C(v42, &qword_1006ED698);
    goto LABEL_23;
  }

LABEL_2:
  v25 = 1;
  return GroupActivitiesManager.isSharePlaySessionActive.setter(v25);
}

uint64_t sub_10030EED0(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EAC40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006EA0D8);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

double GroupActivitiesManager.reaction.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_10030F134@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_10030F1BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100323388(v1, v2);
  sub_10056E478();

  v7[0] = v4;
  v7[1] = v5;
  v7[2] = v6;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E488();
  sub_10030F2E8(v7);
  return sub_10001036C(v7, &qword_1006ED680);
}

uint64_t sub_10030F2E8(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v50 = a1[2];
  v52 = v5;
  v6 = a1[5];
  v48 = a1[4];
  v51 = v6;
  v7 = sub_10056CAE8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10056D338();
  v47 = *(v11 - 8);
  __chkstk_darwin(v11);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v1;
  sub_10056E478();

  v14 = v59;
  if (v59)
  {
    v42 = v11;
    v43 = v10;
    v44 = v8;
    v45 = v7;
    v15 = v58;
    v17 = v60;
    v16 = v61;
    v18 = v62;
    v19 = v63;
    v49 = v62;
    if (!v3)
    {

      v40 = v15;
      sub_1000B7624(v15, v14);
      sub_1000B7624(v4, 0);
      v20 = v18;
      goto LABEL_23;
    }

    v41 = v60;
    if (v58 == v4 && v59 == v3 || (sub_100574498() & 1) != 0)
    {
      v17 = v41;
      if (v41 == v50 && v16 == v52 || (sub_100574498() & 1) != 0)
      {
        if (!v19)
        {
          if (!v51)
          {
            return sub_1000B7624(v15, v14);
          }

          sub_10000CC8C(a1, &v58, &qword_1006ED680);

          v40 = v15;
          v21 = v15;
          v22 = v14;
          v20 = v49;
          goto LABEL_22;
        }

        if (v51)
        {
          if (v49 == v48 && v19 == v51)
          {

            sub_10000CC8C(a1, &v58, &qword_1006ED680);

LABEL_39:

            return sub_1000B7624(v15, v14);
          }

          v37 = v49;
          v38 = sub_100574498();

          sub_10000CC8C(a1, &v58, &qword_1006ED680);

          if (v38)
          {
            goto LABEL_39;
          }

          v40 = v15;
          v39 = v41;
          sub_1000B7624(v15, v14);
          v20 = v37;
          v17 = v39;
LABEL_23:
          if (qword_1006E5050 != -1)
          {
            swift_once();
          }

          v23 = sub_10056DF88();
          sub_10000C49C(v23, static Logger.groupActivities);

          v24 = sub_10056DF68();
          v25 = sub_100573408();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            *&v57[0] = v27;
            *v26 = 136446210;
            v58 = v17;
            v59 = v16;

            v28 = sub_1005729A8();
            v30 = sub_1000C9784(v28, v29, v57);

            *(v26 + 4) = v30;
            _os_log_impl(&_mh_execute_header, v24, v25, "🌚 received: %{public}s)", v26, 0xCu);
            sub_100010474(v27);

            v20 = v49;
          }

          if (!v19)
          {
            goto LABEL_36;
          }

          if (*(v53 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
          {

            v31 = v46;
            sub_10056D218();

            v32 = v43;
            sub_10056D328();
            (*(v47 + 8))(v31, v42);
            v33 = sub_10056CAB8();
            v35 = v34;
            (*(v44 + 8))(v32, v45);
            if (v20 == v33 && v19 == v35)
            {

LABEL_36:

              swift_getKeyPath();
              swift_getKeyPath();
              sub_10056E478();

              v57[0] = v54;
              v57[1] = v55;
              v57[2] = v56;
              swift_getKeyPath();
              swift_getKeyPath();
              v55 = 0u;
              v56 = 0u;
              v54 = 0u;

              sub_10056E488();
              sub_10030F2E8(v57);
              return sub_10001036C(v57, &qword_1006ED680);
            }

            v36 = sub_100574498();

            if (v36)
            {

              goto LABEL_36;
            }
          }

          else
          {
          }

          v58 = v40;
          v59 = v14;
          v60 = v17;
          v61 = v16;
          v62 = v20;
          v63 = v19;
          v64 = 1;
          GroupActivitiesManager.postEvent(_:participantID:)(&v58, v20, v19);
          swift_bridgeObjectRelease_n();
          goto LABEL_36;
        }

        sub_10000CC8C(a1, &v58, &qword_1006ED680);
      }

      else
      {

        sub_10000CC8C(a1, &v58, &qword_1006ED680);
      }

      v40 = v15;
      v21 = v15;
      v22 = v14;
    }

    else
    {

      sub_10000CC8C(a1, &v58, &qword_1006ED680);

      v40 = v15;
      v21 = v15;
      v22 = v14;
      v17 = v41;
    }

    v20 = v49;
LABEL_22:
    sub_1000B7624(v21, v22);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_10030FCB0(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EDE78);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006ED690);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t GroupActivitiesManager.maxParticipantsCount.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupActivitiesManager.hasJoined.getter()
{
  v1 = sub_100009DCC(&qword_1006ED5C8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v24 = &v23 - v3;
  v4 = sub_100009DCC(&qword_1006ED698);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_100009DCC(&qword_1006ED6A0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_10056D288();

    v16 = *(v2 + 56);
    v16(v15, 0, 1, v1);
  }

  else
  {
    v16 = *(v2 + 56);
    v16(&v23 - v14, 1, 1, v1);
  }

  (*(v2 + 104))(v13, enum case for GroupSession.State.joined<A>(_:), v1);
  v16(v13, 0, 1, v1);
  v17 = *(v4 + 48);
  sub_10000CC8C(v15, v6, &qword_1006ED6A0);
  sub_10000CC8C(v13, &v6[v17], &qword_1006ED6A0);
  v18 = *(v2 + 48);
  if (v18(v6, 1, v1) != 1)
  {
    sub_10000CC8C(v6, v10, &qword_1006ED6A0);
    if (v18(&v6[v17], 1, v1) != 1)
    {
      v20 = v24;
      (*(v2 + 32))(v24, &v6[v17], v1);
      sub_100010BC0(&qword_1006ED6A8, &qword_1006ED5C8);
      v19 = sub_1005727E8();
      v21 = *(v2 + 8);
      v21(v20, v1);
      sub_10001036C(v13, &qword_1006ED6A0);
      sub_10001036C(v15, &qword_1006ED6A0);
      v21(v10, v1);
      sub_10001036C(v6, &qword_1006ED6A0);
      return v19 & 1;
    }

    sub_10001036C(v13, &qword_1006ED6A0);
    sub_10001036C(v15, &qword_1006ED6A0);
    (*(v2 + 8))(v10, v1);
    goto LABEL_9;
  }

  sub_10001036C(v13, &qword_1006ED6A0);
  sub_10001036C(v15, &qword_1006ED6A0);
  if (v18(&v6[v17], 1, v1) != 1)
  {
LABEL_9:
    sub_10001036C(v6, &qword_1006ED698);
    v19 = 0;
    return v19 & 1;
  }

  sub_10001036C(v6, &qword_1006ED6A0);
  v19 = 1;
  return v19 & 1;
}

uint64_t GroupActivitiesManager.isSessionEligible.getter()
{
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v10[4] = v6;
  v10[5] = v7;
  v11 = v8;
  v12 = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  if ((GroupActivitiesManager.hasJoined.getter() & 1) != 0 || (sub_10056D108() & 1) == 0)
  {
    sub_100108D2C(v10);
    return 0;
  }

  else
  {
    if (v11 == 2)
    {

      sub_100108D2C(v10);
      return BYTE1(v10[0]);
    }

    v1 = sub_100574498();

    sub_100108D2C(v10);
    result = 0;
    if (v1)
    {
      return BYTE1(v10[0]);
    }
  }

  return result;
}

id GroupActivitiesManager.itemProvider(with:metadata:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100009DCC(&qword_1006ED5E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v47 - v9;
  if (a1)
  {
    goto LABEL_2;
  }

  v48 = v7;
  v50 = a2;
  swift_beginAccess();
  v19 = v2[5];
  v20 = v2[6];
  v21 = sub_10000C8CC(v2 + 2, v19);
  v49 = &v47;
  v22 = *(v19 - 8);
  __chkstk_darwin(v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24);
  v25 = (*(v20 + 48))(v19, v20);
  (*(v22 + 8))(v24, v19);
  if (!v25)
  {
LABEL_12:
    if (qword_1006E5050 != -1)
    {
      swift_once();
    }

    v27 = sub_10056DF88();
    v15 = sub_10000C49C(v27, static Logger.groupActivities);

    v28 = sub_10056DF68();
    v29 = sub_100573428();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v30 = 136446466;
    v51 = 0;
    sub_100009DCC(&unk_1006ED6C0);
    v31 = sub_100572978();
    v33 = sub_1000C9784(v31, v32, &v53);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    v34 = v3[5];
    v35 = v3[6];
    v36 = sub_10000C8CC(v3 + 2, v34);
    v50 = &v47;
    v37 = *(v34 - 8);
    __chkstk_darwin(v36);
    v39 = &v47 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v39);
    v40 = (*(v35 + 48))(v34, v35);
    (*(v37 + 8))(v39, v34);
    if (v40)
    {
      v41 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      if (*&v40[v41])
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10056E478();

        v42 = v52;
LABEL_20:
        v52 = v42;
        sub_100009DCC(&qword_1006EB560);
        v43 = sub_100572978();
        v15 = sub_1000C9784(v43, v44, &v53);

        *(v30 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v28, v29, "    Cannot build itemProvider with intent=%{public}s)\n    and player=%{public}s)", v30, 0x16u);
        swift_arrayDestroy();

LABEL_21:

        sub_100321298();
        swift_allocError();
        *v45 = 0;
        *(v45 + 8) = 4;
        swift_willThrow();
        return v15;
      }
    }

    v42 = 0;
    goto LABEL_20;
  }

  v26 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v25[v26])
  {

    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (!v51)
  {
    goto LABEL_12;
  }

  a2 = v50;
  v7 = v48;
LABEL_2:
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v11 = sub_10056DF88();
  sub_10000C49C(v11, static Logger.groupActivities);
  v12 = sub_10056DF68();
  v13 = sub_100573448();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v50 = a2;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Building GroupActivity item provider", v14, 2u);
    a2 = v50;
  }

  v15 = [objc_allocWithZone(NSItemProvider) init];
  sub_10000CC8C(a2, v10, &qword_1006ED5E0);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  sub_100321494(v10, v17 + v16);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_10032101C(&qword_1006ED5D0, type metadata accessor for GroupActivitiesManager.Activity);
  v18 = a1;

  sub_100573458();

  return v15;
}

uint64_t sub_100310C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_100009DCC(&qword_1006ED5E0);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100310D30, 0, 0);
}

uint64_t sub_100310D30()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = sub_100310EC4;

    return sub_10032BD40(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *(v5 + 16) = *(v0 + 96);
    *(v5 + 32) = 0;
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    v7 = type metadata accessor for GroupActivitiesManager.Activity(0);
    *v6 = v0;
    v6[1] = sub_100310FEC;
    v8 = *(v0 + 80);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001CLL, 0x80000001005B57A0, sub_1003227B8, v5, v7);
  }
}

uint64_t sub_100310EC4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_10031132C;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_100311130;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100310FEC()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003115F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100311130()
{
  v1 = v0[20];
  v2 = v0[13];
  sub_10000CC8C(v0[12], v0[14], &qword_1006ED5E0);
  swift_beginAccess();
  sub_10002EA8C(v2 + 16, (v0 + 2));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_100311218;
  v5 = v0[20];
  v6 = v0[14];
  v7 = v0[10];

  return sub_10030A2EC(v7, v5, v6, (v0 + 2));
}

uint64_t sub_100311218()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100311548;
  }

  else
  {
    v2 = sub_1003113D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031132C()
{
  v0[23] = v0[16];
  v1 = v0[11];
  sub_100572F08();
  v2 = v1;
  v0[24] = sub_100572EF8();
  v4 = sub_100572E78();

  return _swift_task_switch(sub_100311444, v4, v3);
}

uint64_t sub_1003113D0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100311444()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);

  sub_100311660(v1, v2);

  return _swift_task_switch(sub_1003114CC, 0, 0);
}

uint64_t sub_1003114CC()
{
  v1 = *(v0 + 88);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100311548()
{
  *(v0 + 184) = *(v0 + 176);
  v1 = *(v0 + 88);
  sub_100572F08();
  v2 = v1;
  *(v0 + 192) = sub_100572EF8();
  v4 = sub_100572E78();

  return _swift_task_switch(sub_100311444, v4, v3);
}

uint64_t sub_1003115F4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100311660(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v23[0] = a1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60);
  if (swift_dynamicCast())
  {
    v5 = *&v27[0];
    v6 = BYTE8(v27[0]);
    swift_beginAccess();
    v7 = v2[5];
    v8 = v2[6];
    v9 = sub_10000C8CC(v2 + 2, v7);
    v10 = *(v7 - 8);
    __chkstk_darwin(v9);
    v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v12);
    v13 = (*(v8 + 48))(v7, v8);
    (*(v10 + 8))(v12, v7);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      v15 = *&v13[v14];
    }

    else
    {
      v15 = 0;
    }

    v16 = a2;

    sub_100325254(v5, v6);
    sub_100325910(a2, v3, v15, v5, v6, v23);
    if (v25)
    {
      v27[0] = v23[0];
      v27[1] = v23[1];
      v27[2] = v23[2];
      v28 = v24;
      v29 = v25;
      v30 = v26;
      sub_10002EA8C(v3 + 16, v20);
      v17 = v21;
      v18 = v22;
      sub_10000C8CC(v20, v21);
      (*(v18 + 32))(v27, v17, v18);
      sub_10001036C(v23, &qword_1006E7A90);

      sub_100322818(v5, v6);
      sub_100010474(v20);
    }

    else
    {

      sub_100322818(v5, v6);
    }
  }
}

uint64_t sub_100311934(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = a3;
  v28 = a4;
  v6 = sub_100009DCC(&unk_1006EDEB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_100009DCC(&qword_1006ED5E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v27 - v14;
  v16 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v19 = sub_100572F48();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_10000CC8C(a2, v15, &qword_1006ED5E0);
  (*(v7 + 16))(v10, a1, v6);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v7 + 80) + v21 + 8) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_100321494(v15, v23 + v20);
  *(v23 + v21) = v27;
  (*(v7 + 32))(v23 + v22, v10, v6);
  v24 = v28;
  *(v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v25 = v24;

  sub_1001B3FAC(0, 0, v18, &unk_100594B70, v23);
}

uint64_t sub_100311C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_100009DCC(&unk_1006EDEB0);
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v7[17] = *(v9 + 64);
  v7[18] = swift_task_alloc();
  v10 = *(sub_100009DCC(&qword_1006ED5E0) - 8);
  v7[19] = v10;
  v7[20] = *(v10 + 64);
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_100311D54, 0, 0);
}

uint64_t sub_100311D54()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[15];
  v7 = v0[13];
  v23 = v0[12];
  sub_10000CC8C(v0[11], v1, &qword_1006ED5E0);
  (*(v5 + 16))(v3, v7, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(v5 + 80) + v9 + 8) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[22] = v11;
  sub_100321494(v1, v11 + v8);
  *(v11 + v9) = v23;
  (*(v5 + 32))(v11 + v10, v3, v6);
  v12 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[6] = CFRange.init(_:);
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001D65E4;
  v0[5] = &unk_10069B658;
  v13 = _Block_copy(v0 + 2);

  v14 = [v12 initWithBlock:v13];
  v0[23] = v14;
  _Block_release(v13);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[12];
    swift_beginAccess();
    v17 = v16[5];
    v18 = v16[6];
    sub_10000C8CC(v16 + 2, v17);
    v19 = *(v17 - 8);
    v20 = swift_task_alloc();
    v0[24] = v20;
    (*(v19 + 16))();
    v21 = (*(v18 + 48))(v17, v18);
    v0[25] = v21;
    (*(v19 + 8))(v20, v17);
    v22 = swift_task_alloc();
    v0[26] = v22;
    *v22 = v0;
    v22[1] = sub_1003120B0;

    return sub_10032C400(v14, sub_100322EB0, v11, v21);
  }

  return result;
}

uint64_t sub_1003120B0()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_100312250;
  }

  else
  {

    v3 = sub_1003121D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003121D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100312250()
{

  sub_100572F08();
  *(v0 + 224) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_1003122F4, v2, v1);
}

uint64_t sub_1003122F4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);

  sub_100311660(v1, v2);

  return _swift_task_switch(sub_100312378, 0, 0);
}

uint64_t sub_100312378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100312400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v6 = sub_100009DCC(&unk_1006EDEB0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v28 = &v27 - v8;
  v10 = sub_100009DCC(&qword_1006ED5E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v27 - v13;
  v15 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = sub_100572F48();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_10000CC8C(a2, v14, &qword_1006ED5E0);
  v19 = v9;
  v20 = v6;
  (*(v7 + 16))(v19, v29, v6);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v7 + 80) + v22 + 8) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a1;
  sub_100321494(v14, &v24[v21]);
  *&v24[v22] = v30;
  (*(v7 + 32))(&v24[v23], v28, v20);
  v25 = a1;

  sub_1002B0D90(0, 0, v17, &unk_100594B80, v24);
}

uint64_t sub_1003126D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  sub_100009DCC(&qword_1006ED5E0);
  v7[14] = swift_task_alloc();
  type metadata accessor for GroupActivitiesManager.Activity(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003127AC, 0, 0);
}

uint64_t sub_1003127AC()
{
  v1 = v0[12];
  v2 = v0[10];
  sub_10000CC8C(v0[11], v0[14], &qword_1006ED5E0);
  swift_beginAccess();
  sub_10002EA8C(v1 + 16, (v0 + 2));
  v3 = v2;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100312894;
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[10];

  return sub_10030A2EC(v5, v7, v6, (v0 + 2));
}

uint64_t sub_100312894()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100312A88;
  }

  else
  {
    v2 = sub_1003129A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003129A8()
{
  v1 = v0[16];
  sub_100320648(v1, v0[15], type metadata accessor for GroupActivitiesManager.Activity);
  sub_100009DCC(&unk_1006EDEB0);
  sub_100572E98();
  sub_10032099C(v1, type metadata accessor for GroupActivitiesManager.Activity);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100312A88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100312B00(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_10056D1E8();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100312C38, 0, 0);
}

uint64_t sub_100312C38()
{
  v26 = v0;
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  *(v0 + 144) = sub_10000C49C(v1, static Logger.groupActivities);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "GroupActivitiesManager prepareForActivation", v4, 2u);
  }

  if ((GroupActivitiesManager.isSessionEligible.getter() & 1) == 0)
  {
    v12 = 1;
LABEL_11:
    (*(*(v0 + 128) + 56))(*(v0 + 56), v12, 4, *(v0 + 120));

    v13 = *(v0 + 8);

    return v13();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (*(v0 + 49))
  {
    v5 = sub_10056DF68();
    v6 = sub_100573428();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136446210;
      *(v0 + 40) = 1;
      *(v0 + 48) = 4;
      v9 = sub_100572978();
      v11 = sub_1000C9784(v9, v10, &v25);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Prepare error=%{public}s", v7, 0xCu);
      sub_100010474(v8);
    }

    v12 = 2;
    goto LABEL_11;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 120);
  v17 = *(v0 + 72);
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v18 = *(v16 + 32);
  v19 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  sub_10001036C(v15, &qword_1006ED5E8);
  swift_beginAccess();
  sub_10002EA8C(v17 + 16, v15);
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  v21 = sub_10032101C(&qword_1006ED5D0, type metadata accessor for GroupActivitiesManager.Activity);
  *v20 = v0;
  v20[1] = sub_100313040;
  v22 = *(v0 + 112);
  v23 = *(v0 + 120);
  v24 = *(v0 + 64);

  return GroupActivity.prepareForActivation(options:)(v22, v24, v23, v21);
}

uint64_t sub_100313040()
{

  return _swift_task_switch(sub_10031313C, 0, 0);
}

uint64_t sub_10031313C()
{
  v38 = v0;
  v1 = *(*(v0 + 88) + 16);
  v1(*(v0 + 104), *(v0 + 112), *(v0 + 80));
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  if (v4)
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v9 = 136446210;
    v1(v6, v5, v8);
    v10 = sub_1005729A8();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v5, v8);
    v14 = v13;
    v15 = sub_1000C9784(v10, v12, &v37);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "User choice=%{public}s", v9, 0xCu);
    sub_100010474(v35);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);

    v14 = *(v17 + 8);
    v14(v5, v16);
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = *(*(v0 + 88) + 104);
  v20(v18, enum case for GroupActivityActivationResult.activationPreferred(_:), v19);
  v21 = sub_10056D1D8();
  v14(v18, v19);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v24 = *(v0 + 112);
  v36 = *(v0 + 120);
  if (v21)
  {
    v34 = *(v0 + 80);
    v25 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v26 = *(v0 + 50);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 51) = 1;

    sub_10056E488();
    sub_10030E2D0(v26);
    v14(v24, v34);
    sub_100320648(v22, v25, type metadata accessor for GroupActivitiesManager.Activity);
    (*(v23 + 56))(v25, 0, 4, v36);
  }

  else
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    v20(v27, enum case for GroupActivityActivationResult.activationDisabled(_:), v28);
    v30 = sub_10056D1D8();
    v14(v27, v28);
    v14(v24, v28);
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 4;
    }

    (*(v23 + 56))(v29, v31, 4, v36);
  }

  sub_10032099C(v22, type metadata accessor for GroupActivitiesManager.Activity);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100313528()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006E8040);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_100009DCC(&qword_1006E87F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Signpost();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v12 = sub_10056DF88();
  sub_10000C49C(v12, static Logger.groupActivities);
  v13 = sub_10056DF68();
  v14 = sub_100573448();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "beginMeasuringInitiationTime", v15, 2u);
  }

  if (qword_1006E5690 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.sharePlay;

  Signpost.init(name:object:log:)("InitiationToFirstAudioFrame", 27, 2, v16, v11);
  Signpost.begin(dso:_:_:)(&_mh_execute_header, "enableTelemetry=YES", 19, 2, _swiftEmptyArrayStorage);
  sub_100320648(v11, v7, type metadata accessor for Signpost);
  (*(v9 + 56))(v7, 0, 1, v8);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  sub_10008B71C(v7, v1 + v17, &qword_1006E87F0);
  swift_endAccess();
  sub_10056CA98();
  sub_10032099C(v11, type metadata accessor for Signpost);
  v18 = sub_10056CAA8();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  sub_10008B71C(v4, v1 + v19, &qword_1006E8040);
  return swift_endAccess();
}

uint64_t sub_1003138EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v6[14] = v7;
  v6[15] = *(v7 + 64);
  v6[16] = swift_task_alloc();
  sub_100572F08();
  v6[17] = sub_100572EF8();
  v9 = sub_100572E78();
  v6[18] = v9;
  v6[19] = v8;

  return _swift_task_switch(sub_1003139E8, v9, v8);
}

uint64_t sub_1003139E8()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_100313D80;

    return sub_10032BD40(v2);
  }

  else
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = v0[12];
    sub_100320648(v0[13], v5, type metadata accessor for GroupActivitiesManager.Activity);
    v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v9 = swift_allocObject();
    v0[22] = v9;
    *(v9 + 16) = v7;
    sub_1003205E0(v5, v9 + v8, type metadata accessor for GroupActivitiesManager.Activity);
    v10 = objc_allocWithZone(ICLiveLinkIdentity);
    v0[6] = CFRange.init(_:);
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1001D65E4;
    v0[5] = &unk_10069B8B0;
    v11 = _Block_copy(v0 + 2);

    v12 = [v10 initWithBlock:v11];
    v0[23] = v12;
    _Block_release(v11);

    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v13 = v0[12];
      swift_beginAccess();
      v14 = v13[5];
      v15 = v13[6];
      sub_10000C8CC(v13 + 2, v14);
      v16 = *(v14 - 8);
      v17 = swift_task_alloc();
      v0[24] = v17;
      (*(v16 + 16))();
      v18 = (*(v15 + 48))(v14, v15);
      v0[25] = v18;
      (*(v16 + 8))(v17, v14);
      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v19[1] = sub_100313F04;

      return sub_10032C400(v12, sub_100323CAC, v9, v18);
    }
  }

  return result;
}

uint64_t sub_100313D80(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = v4[18];
    v7 = v4[19];

    return _swift_task_switch(sub_10031438C, v6, v7);
  }

  else
  {
    v4[28] = a1;
    v8 = swift_task_alloc();
    v4[29] = v8;
    *v8 = v5;
    v8[1] = sub_1003141F4;
    v9 = v4[13];

    return sub_1003144CC(a1, v9);
  }
}

uint64_t sub_100313F04()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_1003140A4;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_100314028;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100314028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003140A4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  LOBYTE(v2) = *(v0 + 240);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 241) = 0;

  sub_10056E488();
  sub_10030E2D0(v2);
  sub_100311660(v1, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1003141F4()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_100314314, v3, v2);
}

uint64_t sub_100314314()
{
  v1 = v0[28];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10031438C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v3 = *(v0 + 242);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 243) = 0;

  sub_10056E488();
  sub_10030E2D0(v3);
  v4 = v2;
  sub_100311660(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003144CC(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v3[34] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_10031457C, 0, 0);
}

uint64_t sub_10031457C()
{
  v22 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 sharedListeningProperties];
    *(v0 + 304) = v3;
    if (v3)
    {
      if (qword_1006E5048 != -1)
      {
        swift_once();
      }

      v4 = qword_1006ED590;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 224;
      *(v0 + 24) = sub_100314938;
      v5 = swift_continuation_init();
      *(v0 + 136) = sub_100009DCC(&qword_1006EDEA8);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1001D44F4;
      *(v0 + 104) = &unk_10069B8D8;
      *(v0 + 112) = v5;
      [v2 getRepresentativeObjectWithProperties:v4 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v6 = *(v0 + 352);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 353) = 0;

  sub_10056E488();
  sub_10030E2D0(v6);
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 248);
  v8 = sub_10056DF88();
  sub_10000C49C(v8, static Logger.groupActivities);
  v9 = v7;
  v10 = sub_10056DF68();
  v11 = sub_100573448();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    *(v0 + 216) = v12;
    v15 = v9;
    sub_100009DCC(&unk_1006ED6C0);
    v16 = sub_1005729A8();
    v18 = sub_1000C9784(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Cannot activate intent=%{public}s", v13, 0xCu);
    sub_100010474(v14);
  }

  v19 = *(v0 + 8);

  return v19();
}