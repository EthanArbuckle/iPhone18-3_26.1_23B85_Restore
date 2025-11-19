uint64_t SharePlayTogetherSession.routeSymbolName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100A9C5DC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100A9C65C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t SharePlayTogetherSession.routeSymbolName.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
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
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t SharePlayTogetherSession.$routeSymbolName.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AED78);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AED70);
  Published.projectedValue.setter();
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
  v5 = sub_10010FC20(&qword_1011AED78);
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
  v4[16] = sub_10010FC20(&qword_1011AED70);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t SharePlayTogetherSession.participants.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100A9CB80@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100A9CC00(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t SharePlayTogetherSession.participants.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
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
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A360A8;
}

uint64_t SharePlayTogetherSession.$participants.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AED98);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AED90);
  Published.projectedValue.setter();
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
  v5 = sub_10010FC20(&qword_1011AED98);
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
  v4[16] = sub_10010FC20(&qword_1011AED90);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36370;
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
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t SharePlayTogetherSession.$connectedParticipantsCount.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AEDB0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AEDA8);
  Published.projectedValue.setter();
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
  v5 = sub_10010FC20(&qword_1011AEDB0);
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
  v4[16] = sub_10010FC20(&qword_1011AEDA8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t sub_100A9D420@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100A9D4A0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100A9D524()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
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
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t SharePlayTogetherSession.$pendingParticipantsCount.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AEDB0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AEDA8);
  Published.projectedValue.setter();
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
  v5 = sub_10010FC20(&qword_1011AEDB0);
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
  v4[16] = sub_10010FC20(&qword_1011AEDA8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t property wrapper backing initializer of SharePlayTogetherSession.host(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AEDC0);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000089F8(a1, &v9 - v6, &qword_1011AEDC0);
  sub_1000089F8(v7, v4, &qword_1011AEDC0);
  Published.init(initialValue:)();
  sub_1000095E8(a1, &qword_1011AEDC0);
  return sub_1000095E8(v7, &qword_1011AEDC0);
}

uint64_t SharePlayTogetherSession.host.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100A9DA84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100A9DB00(uint64_t a1, void **a2)
{
  v4 = sub_10010FC20(&qword_1011AEDC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_1000089F8(a1, &v13 - v8, &qword_1011AEDC0);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v9, v6, &qword_1011AEDC0);
  v11 = v10;
  static Published.subscript.setter();
  return sub_1000095E8(v9, &qword_1011AEDC0);
}

uint64_t SharePlayTogetherSession.host.setter(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011AEDC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(a1, v5, &qword_1011AEDC0);
  v6 = v1;
  static Published.subscript.setter();
  return sub_1000095E8(a1, &qword_1011AEDC0);
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
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t SharePlayTogetherSession.$host.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AEDD8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AEDD0);
  Published.projectedValue.setter();
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
  v5 = sub_10010FC20(&qword_1011AEDD8);
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
  v4[16] = sub_10010FC20(&qword_1011AEDD0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void SharePlayTogetherSession.qrCode.getter(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v11 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v10 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 8);
  v12 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 16);
  v13 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 24);
  v14 = v11;
  v15 = v10;
  v16 = v12;
  v17 = v13;
  v18 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  if (v13)
  {
LABEL_8:
    sub_100AA3B3C(v11, v10, v12, v13);
    *a1 = v14;
    a1[1] = v15;
    a1[2] = v16;
    a1[3] = v17;
    a1[4] = v18;
    return;
  }

  v19 = v5;
  v35 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  v36 = 0;
  v33 = v10;
  v34 = v12;
  v32 = v11;
  v20 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v20)
  {
    v21 = [v20 joinToken];
    if (v21 && (v22 = v21, v23 = [v21 joinURLString], v22, static String._unconditionallyBridgeFromObjectiveC(_:)(), v23, static String.Encoding.utf8.getter(), v24 = String.data(using:allowLossyConversion:)(), v26 = v25, , (*(v4 + 8))(v8, v19), v26 >> 60 != 15))
    {
      sub_100AF2B78(v24, v26, 76, v37);
      v27 = *v9;
      v28 = v9[1];
      v29 = v9[2];
      v30 = v9[3];
      v31 = v37[1];
      *v9 = v37[0];
      *(v9 + 1) = v31;
      v9[4] = v38;
      sub_100AA5978(v27, v28, v29, v30);
      v14 = *v9;
      v15 = v9[1];
      v16 = v9[2];
      v17 = v9[3];
      v18 = v9[4];
      sub_100AA3B3C(*v9, v15, v16, v17);
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v11 = v32;
    v10 = v33;
    v12 = v34;
    v13 = v36;
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

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.init(string:)();
    }

    else
    {
      v7 = type metadata accessor for URL();
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
      static Published.subscript.getter();

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

void sub_100A9E57C(void *a1, void *a2)
{
  v80 = a1;
  v81 = a2;
  v3 = sub_10010FC20(&qword_1011AEDD0);
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v77 = &v75 - v4;
  v76 = sub_10010FC20(&qword_1011AEDC0);
  v5 = __chkstk_darwin(v76);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v75 - v8;
  v10 = sub_10010FC20(&qword_1011AEDA8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v75 - v12;
  v14 = sub_10010FC20(&qword_1011AED90);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v75 - v16;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = 0;
  v18 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v85[0] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011AED80);
  Published.init(initialValue:)();
  (*(v15 + 32))(&v2[v18], v17, v14);
  v19 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v85[0] = 0;
  Published.init(initialValue:)();
  v20 = *(v11 + 32);
  v20(&v2[v19], v13, v10);
  v21 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v85[0] = 0;
  Published.init(initialValue:)();
  v20(&v2[v21], v13, v10);
  v22 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v23 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  sub_1000089F8(v9, v7, &qword_1011AEDC0);
  v24 = v77;
  Published.init(initialValue:)();
  v25 = v9;
  v26 = v80;
  sub_1000095E8(v25, &qword_1011AEDC0);
  (*(v78 + 32))(&v2[v22], v24, v79);
  v27 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected] = 0;
  v28 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  *&v2[v28] = sub_1008BD9CC(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually] = 0;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = 0;
  v29 = [v26 identifier];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    Published.init(initialValue:)();
    swift_endAccess();
    v43 = 1;
  }

  else
  {
    v44 = [v36 outputDevices];
    if (v44)
    {
      v45 = v44;
      sub_100009F78(0, &qword_1011AF008);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v46 = objc_opt_self();
    sub_100009F78(0, &qword_1011AF008);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v48 = [v46 symbolNameForOutputDevices:isa];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    swift_beginAccess();
    v83 = v49;
    v84 = v51;
    Published.init(initialValue:)();
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
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = String._bridgeToObjectiveC()();
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
  *&v56[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v59, v36, 1, 1, sub_10006D1A8, v61);

  if (qword_1011A6AE8 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_1000060E4(v63, static Logger.sharePlayTogether);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
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
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74 = sub_100010678(v71, v73, v85);

    *(v66 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v64, v65, "Initialized SharePlayTogetherSession object with MR session %{public}s", v66, 0xCu);
    sub_10000959C(v69);

LABEL_15:
    return;
  }

  __break(1u);
}

void sub_100A9EF78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100A9F040(uint64_t a1, SEL *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v7 = *(v5 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  v12 = String._bridgeToObjectiveC()();
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
  v15[2] = sub_100A9EF78;
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
    v2[4] = UIScreen.Dimensions.size.getter;
    v2[5] = 0;
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_100A9EF78;
    v2[3] = &unk_1010DE3F8;
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
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = String._bridgeToObjectiveC()();
    }

    v4[4] = UIScreen.Dimensions.size.getter;
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1001D5D0C;
    v4[3] = &unk_1010DE420;
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
    v8 = sub_1000642C0(0, v8[2] + 1, 1, v8);
    *(v2 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1000642C0((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_100029B6C;
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
    v7 = sub_10089CD9C(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_10089CD9C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_100547098;
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
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16) && (, v12 = sub_100019C28(v7, v9), v14 = v13, , (v14 & 1) != 0))
    {
      v15 = *(v11 + 56);
      v16 = type metadata accessor for SocialProfile();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a2, v15 + *(v17 + 72) * v12, v16);

      return (*(v17 + 56))(a2, 0, 1, v16);
    }

    else
    {

      v21 = type metadata accessor for SocialProfile();
      return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
    }
  }

  else
  {
    v19 = type metadata accessor for SocialProfile();
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
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [*(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v14 & 1);
}

void sub_100A9FA28()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v2 - 8);
  v118 = &v112 - v3;
  v4 = sub_10010FC20(&qword_1011AEF98);
  v117 = *(v4 - 8);
  v5 = *(v117 + 64);
  __chkstk_darwin(v4);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v116 = &v112 - v8;
  v9 = sub_10010FC20(&qword_1011AEDC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v120 = &v112 - v13;
  v14 = sub_10010FC20(&unk_1011AEE18);
  __chkstk_darwin(v14 - 8);
  v128 = &v112 - v15;
  v119 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v132 = *(v119 - 8);
  __chkstk_darwin(v119);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A6AE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v122 = sub_1000060E4(v18, static Logger.sharePlayTogether);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
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
  v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_100AA3DBC(*(v25 + 16), 0);
    v28 = sub_100AA51BC(v136, (v27 + 4), v26, v25);
    sub_10005C9F8();
    if (v28 == v26)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_10:
  sub_100A09BC4(v27);

  v136[0] = sub_100AA552C(v29);
  sub_100AA3E4C(v136);
  v115 = v4;

  v30 = *&v1[v129];
  if (!v30)
  {
    goto LABEL_77;
  }

  v126 = v136[0];
  v31 = [v30 participants];
  v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = *(v32 + 16);
  if (!v33)
  {
LABEL_14:

    v34 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v34 = sub_100AA3DBC(*(v32 + 16), 0);
  v35 = sub_100AA51BC(v136, (v34 + 4), v33, v32);
  sub_10005C9F8();
  if (v35 != v33)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  sub_100A09BC4(v34);

  v136[0] = sub_100AA552C(v36);
  sub_100AA3E4C(v136);

  v125 = v136[0];
  if ((v136[0] & 0x8000000000000000) == 0 && (v136[0] & 0x4000000000000000) == 0)
  {
    v37 = *(v136[0] + 16);
    goto LABEL_18;
  }

  while (1)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:
    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v37;
    v38 = v1;
    static Published.subscript.setter();
    v39 = v126;
    v114 = v11;
    if (v126 < 0 || (v126 & 0x4000000000000000) != 0)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *(v126 + 16);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v40;
    v41 = v38;
    static Published.subscript.setter();
    v136[0] = v39;

    sub_1008A6A04(v42);
    v43 = v136[0];
    v113 = v6;
    v112 = v5;
    v123 = v1;
    if (v136[0] >> 62)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
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
    sub_10089A030(0, v44 & ~(v44 >> 63), 0);
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
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v47 = *(v43 + 8 * v45 + 32);
        swift_unknownObjectRetain();
      }

      sub_100AA0ADC(v47, v41, v133, v17);
      swift_unknownObjectRelease();
      v136[0] = v46;
      v49 = v46[2];
      v48 = v46[3];
      v6 = (v49 + 1);
      if (v49 >= v48 >> 1)
      {
        sub_10089A030(v48 > 1, v49 + 1, 1);
        v46 = v136[0];
      }

      ++v45;
      v46[2] = v6;
      sub_100AA5E14(v17, v46 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v49);
    }

    while (v44 != v45);

    v1 = v123;
LABEL_34:
    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v46;
    v130 = v41;
    static Published.subscript.setter();
    v50 = *&v1[v129];
    if (!v50)
    {
      goto LABEL_78;
    }

    v51 = [v50 members];
    v17 = sub_100009F78(0, &qword_1011AEFA0);
    sub_100AA5E78();
    v52 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v124;
    if ((v52 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v52 = v136[0];
      v1 = v136[1];
      v53 = v136[2];
      v54 = v136[3];
      v11 = v136[4];
    }

    else
    {
      v54 = 0;
      v55 = -1 << *(v52 + 32);
      v1 = (v52 + 56);
      v53 = ~v55;
      v56 = -v55;
      v57 = v56 < 64 ? ~(-1 << v56) : -1;
      v11 = (v57 & *(v52 + 56));
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
      v63 = v11;
      v60 = v54;
      if (!v11)
      {
        break;
      }

LABEL_51:
      v61 = (v63 - 1) & v63;
      v6 = *(*(v52 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v63)))));
      if (!v6)
      {
        goto LABEL_59;
      }

LABEL_52:
      if ([v6 type] == 1)
      {
        v131 = v61;
        v64 = [v6 identifier];
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v68 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
        v69 = v130;
        swift_beginAccess();
        v70 = *&v69[v68];
        if (*(v70 + 16) && (, v71 = sub_100019C28(v65, v67), v73 = v72, , (v73 & 1) != 0))
        {
          v74 = *(v70 + 56);
          v75 = type metadata accessor for SocialProfile();
          v76 = *(v75 - 8);
          v77 = v76;
          v78 = v74 + *(v76 + 72) * v71;
          v79 = v128;
          (*(v76 + 16))(v128, v78, v75);

          (*(v77 + 56))(v79, 0, 1, v75);
          v5 = v124;
          sub_1000095E8(v79, &unk_1011AEE18);
        }

        else
        {

          v80 = type metadata accessor for SocialProfile();
          v81 = v128;
          (*(*(v80 - 8) + 56))(v128, 1, 1, v80);
          sub_1000095E8(v81, &unk_1011AEE18);
          v82 = [v6 identifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v83 = MusicItemID.init(_:)();
          v85 = v84;
          swift_beginAccess();
          sub_100A00B70(&v135, v83, v85);
          swift_endAccess();
        }

        v54 = v60;
        v11 = v131;
        v17 = v127;
        if (v52 < 0)
        {
          goto LABEL_44;
        }
      }

      else
      {

        v54 = v60;
        v11 = v61;
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
  v59 = __CocoaSet.Iterator.next()();
  if (v59)
  {
    v135 = v59;
    swift_dynamicCast();
    v6 = v134[0];
    v60 = v54;
    v61 = v11;
    if (v134[0])
    {
      goto LABEL_52;
    }
  }

LABEL_59:
  sub_10005C9F8();
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
    sub_100AA0ADC(v87, v130, v133, v120);
    (*(v132 + 56))(v88, 0, 1, v119);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v88, v114, &qword_1011AEDC0);
    v90 = v89;
    static Published.subscript.setter();
    swift_unknownObjectRelease();
    sub_1000095E8(v88, &qword_1011AEDC0);
  }

  swift_beginAccess();
  v91 = *v5;
  v92 = *(*v5 + 16);
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
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
    if (!v97 || (v98 = sub_100AA3CB0(*(v91 + 16), 0), v94 = v98, v99 = sub_100AA5064(v134, v98 + 4, v97, v91), v93 = v134[4], , v95 = sub_10005C9F8(), v99 == v97))
    {
      type metadata accessor for SocialProfile();
      sub_100AA5EE0(&qword_1011AEFB0, &type metadata accessor for SocialProfile);
      sub_100AA5EE0(&qword_1011AEFB8, &type metadata accessor for SocialProfile);
      v101 = v116;
      MusicCatalogResourceRequest.init<A>(matching:memberOf:)();
      v102 = type metadata accessor for TaskPriority();
      v103 = v118;
      (*(*(v102 - 8) + 56))(v118, 1, 1, v102);
      v104 = v117;
      v105 = v113;
      v106 = v115;
      (*(v117 + 16))(v113, v101, v115);
      type metadata accessor for MainActor();
      v107 = v130;
      v108 = static MainActor.shared.getter();
      v109 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v110 = (v112 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
      v111 = swift_allocObject();
      *(v111 + 16) = v108;
      *(v111 + 24) = &protocol witness table for MainActor;
      (*(v104 + 32))(v111 + v109, v105, v106);
      *(v111 + v110) = v107;
      sub_100A5932C(0, 0, v103, &unk_100EFB138, v111);

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

uint64_t sub_100AA0ADC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10010FC20(&unk_1011AEE18);
  __chkstk_darwin(v8 - 8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v49 - v12;
  __chkstk_darwin(v14);
  v16 = v49 - v15;
  v17 = type metadata accessor for SocialProfile();
  v18 = *(v17 - 8);
  v52 = *(v18 + 56);
  v53 = v17;
  v52(v16, 1, 1);
  v19 = [a1 identity];
  v20 = &stru_101148000;
  if (v19)
  {
    v21 = v19;
    if ([v19 type] == 1)
    {
      v49[1] = a3;
      v51 = v16;
      v22 = [v21 identifier];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
      swift_beginAccess();
      v26 = *(a2 + v25);
      if (*(v26 + 16) && (, v50 = sub_100019C28(v50, v24), v28 = v27, , (v28 & 1) != 0))
      {
        (*(v18 + 16))(v13, *(v26 + 56) + *(v18 + 72) * v50, v53);
        v16 = v51;
        sub_1000095E8(v51, &unk_1011AEE18);

        v29 = 0;
      }

      else
      {

        v16 = v51;
        sub_1000095E8(v51, &unk_1011AEE18);
        v29 = 1;
      }

      v30 = v53;
      (v52)(v13, v29, 1, v53);
      sub_100AA6378(v13, v16);
      sub_1000089F8(v16, v10, &unk_1011AEE18);
      if ((*(v18 + 48))(v10, 1, v30) == 1)
      {
        sub_1000095E8(v10, &unk_1011AEE18);
        v31 = [v21 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = MusicItemID.init(_:)();
        v34 = v33;
        swift_beginAccess();
        sub_100A00B70(&v54, v32, v34);
        swift_endAccess();

        v20 = &stru_101148000;
        goto LABEL_12;
      }

      sub_1000095E8(v10, &unk_1011AEE18);
    }

    else
    {
    }

    v20 = &stru_101148000;
  }

LABEL_12:
  v35 = [a1 v20[142].name];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = [a1 identity];
  if (v39 && (v40 = v39, v41 = [v39 displayName], v40, v41))
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
  return sub_100AA59C0(v16, a4 + v47);
}

uint64_t SharePlayTogetherSession.Participant.init(id:displayName:isPending:isGuest:socialProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v17 = type metadata accessor for SocialProfile();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;

  return sub_100AA59C0(a7, a8 + v16);
}

uint64_t sub_100AA1050(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identity];
  if (v3 && (v4 = v3, v5 = [v3 displayName], v4, v5))
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
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

uint64_t sub_100AA1198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  sub_10010FC20(&qword_1011A7F00);
  v5[5] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_1011AEFC0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[8] = v7;
  v8 = sub_10010FC20(&qword_1011AEFC8);
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v5[11] = *(v9 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[17] = v10;
  v11 = sub_10010FC20(&qword_1011AEF98);
  *v10 = v5;
  v10[1] = sub_100AA13A0;

  return MusicCatalogResourceRequest.response()(v7, v11);
}

uint64_t sub_100AA13A0()
{
  *(*v1 + 144) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100AA1880;
  }

  else
  {
    v4 = sub_100AA14FC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100AA14FC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  MusicCatalogResourceResponse.items.getter();
  (*(v2 + 8))(v1, v3);
  if (qword_1011A6AE8 != -1)
  {
    swift_once();
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, static Logger.sharePlayTogether);
  v34 = *(v7 + 16);
  v34(v4, v5, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[9];
  v14 = v0[10];
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    sub_100AA6254();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v16 = dispatch thunk of Collection.distance(from:to:)();
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
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v34(v18, v17, v21);
  v25 = v23;
  v26 = static MainActor.shared.getter();
  v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v28 = (v20 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = &protocol witness table for MainActor;
  (*(v19 + 32))(v29 + v27, v18, v21);
  *(v29 + v28) = v25;
  sub_100969440(0, 0, v32, &unk_100EFB158, v29);

  v33(v17, v21);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100AA1880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100AA192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  sub_10010FC20(&unk_1011AEE18);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_10010FC20(&qword_1011AEDC0);
  v5[35] = swift_task_alloc();
  v6 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v7 = type metadata accessor for SocialProfile();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = sub_10010FC20(&qword_1011AEFD8);
  v5[45] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AA1B58, v9, v8);
}

void sub_100AA1B58()
{
  v1 = v0;
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[30];
  v5 = v0[31];
  v6 = sub_10010FC20(&qword_1011AEFC8);
  (*(*(v6 - 8) + 16))(v3, v4, v6);
  v7 = *(v2 + 36);
  sub_100AA6254();
  dispatch thunk of Collection.startIndex.getter();
  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  dispatch thunk of Collection.endIndex.getter();
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
      v111 = dispatch thunk of Collection.subscript.read();
      (*v105)(v60);
      v111(v107, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v62 = SocialProfile.id.getter();
      v64 = v63;
      swift_beginAccess();
      v65 = *v108;
      (*v108)(v113, v60, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *(v109 + v8);
      v115 = v67;
      *(v109 + v8) = 0x8000000000000000;
      v68 = sub_100019C28(v62, v64);
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
          sub_1008BBD50();
          v68 = v81;
        }
      }

      else
      {
        sub_1008B90F8(v73, isUniquelyReferenced_nonNull_native);
        v68 = sub_100019C28(v62, v64);
        if ((v74 & 1) != (v75 & 1))
        {

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v3 + v100) != v114[27]);
  }

  v98 = v8;
  sub_1000095E8(v1[45], &qword_1011AEFD8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

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
    static Published.subscript.getter();

    v56 = *(v54 + 48);
    if (v56(v55, 1, v53) == 1)
    {
      sub_1000095E8(v10[35], &qword_1011AEDC0);
    }

    else
    {
      v82 = v10 + 6;
      v83 = v10[36];
      sub_100AA5E14(v10[35], v10[39]);
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

          v92 = sub_100019C28(v89, v90);
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
        sub_100AA59C0(v96, v86 + *(v95 + 32));
      }

      (v84)(v82, 0);
      sub_100AA631C(v88);
    }

    type metadata accessor for SharePlayTogetherSession(0);
    sub_100AA5EE0(&qword_1011AEFE0, type metadata accessor for SharePlayTogetherSession);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

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
    static Published.subscript.getter();

    v15 = v10[29];
    if (v14 >= *(v15 + 16))
    {
      break;
    }

    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = *(v13 + 72) * v14;
    sub_100AA62B8(v15 + v16 + v17, v10[38]);

    if (*(v12 + 32) == 1)
    {
      v18 = *(v112 + v110);
      if (!v18)
      {
        goto LABEL_66;
      }

      swift_unknownObjectRetain();
      v19 = String._bridgeToObjectiveC()();
      v20 = [v18 pendingParticipantForIdentifier:v19];
      swift_unknownObjectRelease();

      if (v20)
      {
        v21 = [v20 identity];
        swift_unknownObjectRelease();
        if (v21)
        {
          v22 = [v21 identifier];

          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          v26 = *(v109 + v98);
          if (*(v26 + 16) && (, v27 = sub_100019C28(v23, v25), v29 = v28, , (v29 & 1) != 0))
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
          v44 = static Published.subscript.modify();
          v50 = v49;
          v51 = *v49;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *v50 = v51;
          if ((v52 & 1) == 0)
          {
            v51 = sub_1008BC130(v51);
            *v50 = v51;
          }

          v13 = v106;
          if (v14 >= v51[2])
          {
            goto LABEL_64;
          }

          sub_100AA59C0(v10[34], v51 + v16 + v17 + *(v101 + 32));
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
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 participantForIdentifier:v32];
    swift_unknownObjectRelease();

    if (v33)
    {
      v34 = [v33 identity];
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = [v34 identifier];

        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = *(v109 + v98);
        if (*(v39 + 16) && (, v40 = sub_100019C28(v36, v38), v42 = v41, , (v42 & 1) != 0))
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
        v44 = static Published.subscript.modify();
        v46 = v45;
        v47 = *v45;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *v46 = v47;
        if ((v48 & 1) == 0)
        {
          v47 = sub_1008BC130(v47);
          *v46 = v47;
        }

        v13 = v106;
        if (v14 >= v47[2])
        {
          goto LABEL_63;
        }

        sub_100AA59C0(v10[33], v47 + v16 + v17 + *(v101 + 32));
        goto LABEL_5;
      }
    }

LABEL_6:
    ++v14;
    sub_100AA631C(v10[38]);
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

uint64_t sub_100AA2A40@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharePlayTogetherSession(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t SharePlayTogetherSession.Participant.socialProfile.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);

  return sub_100AA59C0(a1, v3);
}

uint64_t SharePlayTogetherSession.groupSessionDidConnect(_:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v7 = v1;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = v7;
  sub_100969440(0, 0, v5, &unk_100EFAFA0, v9);
}

uint64_t sub_100AA2C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AA2D28, v7, v6);
}

uint64_t sub_100AA2D28()
{
  v22 = v0;

  if (qword_1011A6AE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.sharePlayTogether);
  swift_unknownObjectRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446210;
    v7 = [v4 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_100010678(v8, v10, &v21);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "groupSessionDidConnect %{public}s", v5, 0xCu);
    sub_10000959C(v6);
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
  sub_1000095E8((v0 + 2), &qword_1011AF020);
  type metadata accessor for SharePlayTogetherSession(0);
  sub_100AA5EE0(&qword_1011AEFE0, type metadata accessor for SharePlayTogetherSession);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v19 = v0[1];

  return v19();
}

uint64_t SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  swift_errorRetain();
  v8 = v2;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a2;
  v10[5] = v8;
  sub_100969440(0, 0, v6, &unk_100EFAFB0, v10);
}

uint64_t sub_100AA3284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AA331C, v7, v6);
}

uint64_t sub_100AA331C()
{
  v32 = v0;

  if (qword_1011A6AE8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, static Logger.sharePlayTogether);
  swift_errorRetain();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

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

    sub_10010FC20(&unk_1011AF010);
    v10 = Array.description.getter();
    v12 = v11;

    v13 = sub_100010678(v10, v12, &v31);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Session invalidated with error %{public}@. Calling %{public}s observers.", v6, 0x16u);
    sub_1000095E8(v7, &qword_1011A9120);

    sub_10000959C(v8);
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

uint64_t sub_100AA3830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AA6614, v6, v5);
}

void sub_100AA3954(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_100AA5BB0(a5, a6, a7);
  swift_unknownObjectRelease();
}

uint64_t sub_100AA3A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AA3AB0, v6, v5);
}

uint64_t sub_100AA3AB0()
{

  sub_100A9FA28();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100AA3B3C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    sub_10002BC44(a2, a3);

    v4 = a4;
  }
}

uint64_t static Logger.sharePlayTogether.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6AE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.sharePlayTogether);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100AA3C2C(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011AF000);
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

void *sub_100AA3CB0(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011AEFE8);
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

void *sub_100AA3D34(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011AA660);
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

void *sub_100AA3DBC(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011AEFF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_100AA3E4C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000D9158(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100AA3EC8(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100AA3EC8(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10010FC20(&qword_1011AEFF0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100AA41E0(v8, v9, a1, v4);
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
    return sub_100AA3FD8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100AA3FD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    v6 = &selRef_compoundStringWithElements_;
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
      v9 = [v7 v6[83]];
      if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      v15 = [v8 v6[83]];
      if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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

        v6 = &selRef_compoundStringWithElements_;
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
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v6 = &selRef_compoundStringWithElements_;
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

uint64_t sub_100AA41E0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
          sub_100AA4A94((*a3 + 8 * v96), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v98), v5);
          if (v113)
          {
          }

          if (v98 < v96)
          {
            goto LABEL_143;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_100AA5014(v97);
          }

          if (v4 - 2 >= *(v97 + 2))
          {
            goto LABEL_144;
          }

          v99 = &v97[16 * v4];
          *v99 = v96;
          *(v99 + 1) = v98;
          v118 = v97;
          sub_100AA4F88(v4 - 1);
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
    result = sub_100AA5014(v4);
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
  v114 = sub_100AA1050(&v117, &v116);
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
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
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
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
        result = sub_10089C854(0, *(v33 + 2) + 1, 1, v33);
        v8 = result;
      }

      v4 = *(v8 + 2);
      v34 = *(v8 + 3);
      v35 = v4 + 1;
      if (v4 >= v34 >> 1)
      {
        result = sub_10089C854((v34 > 1), v4 + 1, 1, v8);
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
          sub_100AA4A94((*a3 + 8 * v76), (*a3 + 8 * *&v8[16 * v38 + 32]), (*a3 + 8 * v77), v37);
          if (v113)
          {
          }

          if (v77 < v76)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_100AA5014(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_131;
          }

          v78 = v5 + 16 * v4;
          *(v78 + 32) = v76;
          *(v78 + 40) = v77;
          v118 = v5;
          result = sub_100AA4F88(v38);
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

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;

  if (v85 == v5)
  {
    goto LABEL_104;
  }

LABEL_105:
  v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
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

uint64_t sub_100AA4A94(void **__src, void **a2, void **a3, void **a4)
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

    v15 = &selRef_compoundStringWithElements_;
    while (1)
    {
      __dst = v5;
      v16 = *v5;
      v17 = *v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = [v16 v15[83]];
      v59 = v6;
      if (v18 && (v19 = v18, v20 = [v18 displayName], v19, v20))
      {
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = [v17 v15[83]];
      if (v24 && (v25 = v24, v26 = [v24 displayName], v25, v26))
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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

        v15 = &selRef_compoundStringWithElements_;
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
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v15 = &selRef_compoundStringWithElements_;
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

  v37 = &selRef_compoundStringWithElements_;
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
      v42 = [v40 v37[83]];
      if (v42 && (v43 = v42, v44 = [v42 displayName], v43, v44))
      {
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = [v41 v37[83]];
      if (v48 && (v49 = v48, v50 = [v48 displayName], v49, v50))
      {
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
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
      v37 = &selRef_compoundStringWithElements_;
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
    v37 = &selRef_compoundStringWithElements_;
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

uint64_t sub_100AA4F88(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100AA5014(v3);
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

void *sub_100AA5064(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_100AA51BC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_1000160F8(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
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

uint64_t (*sub_100AA5324(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_1006CB01C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100AA53A4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_100AA661C;
  }

  __break(1u);
  return result;
}

void (*sub_100AA5424(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_1006CAF14;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100AA54A4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_100AA5524;
  }

  __break(1u);
  return result;
}

void *sub_100AA552C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100AA3D34(v3, 0);
  sub_1008A717C((v5 + 4), v4, a1);
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
  v4 = type metadata accessor for SocialProfile();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011AEE18);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_10010FC20(&qword_1011AF028);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 24);
  v15 = *(a2 + 24);
  if (v14)
  {
    if (!v15 || (*(a1 + 16) != *(a2 + 16) || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
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
  sub_1000089F8(a1 + v16, v13, &unk_1011AEE18);
  sub_1000089F8(a2 + v16, &v13[v17], &unk_1011AEE18);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1000095E8(v13, &unk_1011AEE18);
      return 1;
    }

    goto LABEL_18;
  }

  sub_1000089F8(v13, v10, &unk_1011AEE18);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_18:
    sub_1000095E8(v13, &qword_1011AF028);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_100AA5EE0(&unk_1011AF030, &type metadata accessor for SocialProfile);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_1000095E8(v13, &unk_1011AEE18);
  return (v20 & 1) != 0;
}

void sub_100AA5978(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    sub_10002C064(a2, a3);
  }
}

uint64_t sub_100AA59C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011AEE18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AA5A30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100AA2C90(a1, v4, v5, v7, v6);
}

uint64_t sub_100AA5AF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100AA3284(a1, v4, v5, v7, v6);
}

uint64_t sub_100AA5BB0(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (qword_1011A6AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, static Logger.sharePlayTogether);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a1, v13, 2u);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = v6;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_100969440(0, 0, v9, a3, v17);
}

uint64_t sub_100AA5DBC(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_100AA5E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100AA5E78()
{
  result = qword_1011AEFA8;
  if (!qword_1011AEFA8)
  {
    sub_100009F78(255, &qword_1011AEFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AEFA8);
  }

  return result;
}

uint64_t sub_100AA5EE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100AA5F28(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_1011AEF98) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_100AA1198(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100AA6054(uint64_t *a1)
{
  v2 = sub_10010FC20(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_100AA6128(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_1011AEFC8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100AA192C(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_100AA6254()
{
  result = qword_1011AEFD0;
  if (!qword_1011AEFD0)
  {
    sub_1001109D0(&qword_1011AEFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AEFD0);
  }

  return result;
}

uint64_t sub_100AA62B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AA631C(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100AA6378(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011AEE18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AA63E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100AA3A18(a1, v4, v5, v6);
}

uint64_t sub_100AA649C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100AA3830(a1, v4, v5, v6);
}

uint64_t sub_100AA6550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100AA3830(a1, v4, v5, v6);
}

uint64_t GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 225) = a3;
  *(v4 + 224) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_10010FC20(&qword_1011A7F00);
  *(v4 + 32) = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  sub_10010FC20(&qword_1011AF080);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = type metadata accessor for GroupActivitiesManager.PrepareResult(0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v7 = type metadata accessor for AuthorizationPromptOptions.PromptCondition();
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();
  v8 = type metadata accessor for AuthorizationPromptOptions();
  *(v4 + 160) = v8;
  *(v4 + 168) = *(v8 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = type metadata accessor for MainActor();
  *(v4 + 192) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 200) = v10;
  *(v4 + 208) = v9;

  return _swift_task_switch(sub_100AA68CC, v10, v9);
}

uint64_t sub_100AA68CC()
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
  AuthorizationPromptOptions.init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_100AA6A38;
  v7 = *(v0 + 128);
  v8 = *(v0 + 80);

  return sub_100AB2CC0(v7, v8);
}

uint64_t sub_100AA6A38()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  sub_1000095E8(v2, &qword_1011AF080);
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return _swift_task_switch(sub_100AA6B8C, v4, v3);
}

uint64_t sub_100AA6B8C()
{
  v43 = v0;

  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, static Logger.groupActivities);
  sub_100ABFB10(v2, v1, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136446210;
    sub_100ABFB10(v7, v8, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_100ABFC7C(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v14 = sub_100010678(v11, v13, &v42);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "prepareForActivation result=%{public}s", v9, 0xCu);
    sub_10000959C(v10);
  }

  else
  {

    sub_100ABFC7C(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
  }

  v15 = v0[13];
  v16 = v0[5];
  v17 = v0[6];
  sub_100ABFB10(v0[16], v15, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v18 = *(v17 + 48);
  if (v18(v15, 4, v16))
  {
    v19 = v0[16];
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[5];
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_100ABFC7C(v20, type metadata accessor for GroupActivitiesManager.PrepareResult);
    sub_100ABFAA8(v19, v21, type metadata accessor for GroupActivitiesManager.PrepareResult);
    if ((v18(v21, 4, v22) | 2) == 3)
    {
      v41 = 0;
    }

    else
    {
      sub_100ABFC7C(v0[12], type metadata accessor for GroupActivitiesManager.PrepareResult);
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
    sub_100ABFAA8(v0[13], v24, type metadata accessor for GroupActivitiesManager.Activity);
    sub_100AB36E8();
    v30 = type metadata accessor for TaskPriority();
    v41 = 1;
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    sub_100ABFB10(v24, v25, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = v29;

    v32 = static MainActor.shared.getter();
    v33 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v29;
    v34[5] = v27;
    sub_100ABFAA8(v25, v34 + v33, type metadata accessor for GroupActivitiesManager.Activity);
    sub_100969440(0, 0, v37, &unk_100EFB1F8, v34);

    sub_100ABFC7C(v24, type metadata accessor for GroupActivitiesManager.Activity);
    sub_100ABFC7C(v38, type metadata accessor for GroupActivitiesManager.PrepareResult);
    (*(v23 + 8))(v40, v39);
  }

  v35 = v0[1];

  return v35(v41);
}

uint64_t GroupActivitiesManager.leave(performLeaveCommand:)(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 280) = a1;
  *(v2 + 144) = type metadata accessor for MainActor();
  *(v2 + 152) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return _swift_task_switch(sub_100AA7170, v4, v3);
}

uint64_t sub_100AA7170()
{
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 176) = sub_1000060E4(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
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
    sub_10000954C(v7 + 2, v9);
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

      v15 = String.init<A>(reflecting:)();
      *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 56) = v15;
      *(v0 + 64) = v16;
      *(v0 + 216) = static MainActor.shared.getter();
      v18 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 224) = v18;
      *(v0 + 232) = v17;

      return _swift_task_switch(sub_100AA75D0, v18, v17);
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

    GroupSession.leave()();
  }

  v21 = *(v0 + 136);
  *(v19 + v20) = 0;

  sub_100AB6664();
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v23 = *(v21 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v23)
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Leave completed, pending session found", v26, 2u);
    }

    *(v19 + v20) = v23;
    swift_retain_n();

    sub_100AB6664();

    *(v21 + v22) = 0;
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100AA75D0()
{
  v1 = v0[26];
  sub_10010FC20(&unk_1011ACA30);
  v2 = swift_allocObject();
  v0[30] = v2;
  *(v2 + 16) = xmmword_100EBC6B0;
  sub_100008FE4((v0 + 2), v2 + 32);
  v0[31] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_100AA76D0;

  return sub_100A43F80(v2, 0x10000, 1, v1, 0, (v0 + 7));
}

uint64_t sub_100AA76D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_100AA79C4;
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = sub_100AA7848;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100AA7848()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_100AA78B4, v1, v2);
}

uint64_t sub_100AA78B4()
{
  v1 = *(v0 + 264);

  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
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
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return _swift_task_switch(v4, v2, v3);
  }

LABEL_5:
  v5 = *(v0 + 200);

  sub_1000095E8(v0 + 56, &qword_1011A8658);
  sub_10000959C(v0 + 16);

  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = sub_100AA7D84;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100AA79C4()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_100AA7A28, v1, v2);
}

uint64_t sub_100AA7A28()
{
  v1 = v0[26];
  v2 = v0[25];

  v3 = v0[20];
  v4 = v0[21];

  return _swift_task_switch(sub_100AA7A98, v3, v4);
}

uint64_t sub_100AA7A98()
{
  v20 = v0;

  sub_1000095E8((v0 + 7), &qword_1011A8658);
  sub_10000959C((v0 + 2));

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[34];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[16] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to perform leaveCommand with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  else
  {
  }

  *(v0[17] + v0[23]) = 0;
  v9 = v0[17];
  v10 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v9 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    GroupSession.leave()();
  }

  v11 = v0[17];
  *(v9 + v10) = 0;

  sub_100AB6664();
  v12 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v13 = *(v11 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v13)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Leave completed, pending session found", v16, 2u);
    }

    *(v9 + v10) = v13;
    swift_retain_n();

    sub_100AB6664();

    *(v11 + v12) = 0;
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100AA7D84()
{

  *(v0[17] + v0[23]) = 0;
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    GroupSession.leave()();
  }

  v3 = v0[17];
  *(v1 + v2) = 0;

  sub_100AB6664();
  v4 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v5 = *(v3 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v5)
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Leave completed, pending session found", v8, 2u);
    }

    *(v1 + v2) = v5;
    swift_retain_n();

    sub_100AB6664();

    *(v3 + v4) = 0;
  }

  v9 = v0[1];

  return v9();
}

void GroupActivitiesManager.postEvent(_:participantID:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v192 = a3;
  v190 = a2;
  v6 = *(a1 + 8);
  v175 = *a1;
  v174 = v6;
  v7 = *(a1 + 24);
  v173 = *(a1 + 16);
  v172 = v7;
  v8 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v8 - 8);
  v179 = v161 - v9;
  v182 = type metadata accessor for GroupSessionEvent();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v176 = v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v180 = v161 - v12;
  __chkstk_darwin(v13);
  v183 = v161 - v14;
  v171 = type metadata accessor for GroupSessionEvent.Action.QueueChange.Item();
  v167 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for GroupSessionEvent.Action.QueueChange();
  v166 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for GroupSessionEvent.Action();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v178 = v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v184 = v161 - v19;
  v196 = type metadata accessor for UUID();
  v189 = *(v196 - 8);
  __chkstk_darwin(v196);
  v195 = v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&qword_1011AF0A0);
  __chkstk_darwin(v21 - 8);
  v187 = v161 - v22;
  v197 = type metadata accessor for Participant();
  v198 = *(v197 - 8);
  __chkstk_darwin(v197);
  v177 = v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v199 = v161 - v25;
  __chkstk_darwin(v26);
  v194 = v161 - v27;
  __chkstk_darwin(v28);
  v191 = v161 - v29;
  v30 = sub_10010FC20(&qword_1011AF0A8);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = v161 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = v161 - v35;
  swift_beginAccess();
  v37 = v3[7];
  v38 = v3[8];
  *(v3 + 7) = xmmword_100EBCEE0;
  v3[9] = 0;
  v3[10] = 0;
  sub_1005FF454(v37, v38);
  swift_beginAccess();
  v40 = v3[5];
  v39 = v3[6];
  v41 = sub_10000954C(v3 + 2, v40);
  v42 = *(v40 - 8);
  v43 = __chkstk_darwin(v41);
  v45 = v161 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v45, v43);
  v46 = (*(v39 + 56))(v40, v39);
  (*(v42 + 8))(v45, v40);
  v47 = [v46 applicationState];

  v188 = a1;
  if ((*(a1 + 48) | 4) == 4 && v47 || !*(v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    return;
  }

  GroupSession.state.getter();
  (*(v31 + 104))(v33, enum case for GroupSession.State.joined<A>(_:), v30);
  v49 = type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_100053024(&qword_1011AF0B0, type metadata accessor for GroupActivitiesManager.Activity);
  v161[0] = v49;
  v50 = static GroupSession.State.== infix(_:_:)();
  v51 = *(v31 + 8);
  v51(v33, v30);
  v51(v36, v30);
  if ((v50 & 1) == 0)
  {
LABEL_27:

    return;
  }

  v193 = sub_100AB5B58(v190, v192);
  v165 = v52;
  v161[1] = v48;
  v53 = GroupSession.activeParticipants.getter();
  v54 = v53;
  v55 = v53 + 56;
  v56 = 1 << *(v53 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v53 + 56);
  v59 = (v56 + 63) >> 6;
  v163 = (v198 + 16);
  v164 = (v198 + 32);
  v162 = v189 + 1;
  v189 = (v198 + 8);

  v60 = 0;
  v61 = v197;
  if (!v58)
  {
LABEL_9:
    while (1)
    {
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v62 >= v59)
      {

        v74 = 1;
        v75 = v191;
        v76 = v187;
        goto LABEL_22;
      }

      v58 = *(v55 + 8 * v62);
      ++v60;
      if (v58)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  while (1)
  {
    v62 = v60;
LABEL_12:
    v63 = v54;
    v64 = v198;
    v65 = *(v54 + 48) + *(v198 + 72) * (__clz(__rbit64(v58)) | (v62 << 6));
    v66 = v194;
    (*(v198 + 16))(v194, v65, v61);
    v67 = v61;
    v68 = *(v64 + 32);
    v68(v199, v66, v67);
    v69 = v195;
    Participant.id.getter();
    v70 = UUID.uuidString.getter();
    v72 = v71;
    (*v162)(v69, v196);
    if (v70 == v193 && v72 == v165)
    {

      goto LABEL_21;
    }

    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v73)
    {
      break;
    }

    v58 &= v58 - 1;
    v61 = v197;
    (*v189)(v199, v197);
    v60 = v62;
    v54 = v63;
    if (!v58)
    {
      goto LABEL_9;
    }
  }

LABEL_21:

  v76 = v187;
  v77 = v197;
  v68(v187, v199, v197);
  v61 = v77;
  v74 = 0;
  v75 = v191;
LABEL_22:
  v78 = v198;
  (*(v198 + 56))(v76, v74, 1, v61);

  if ((*(v78 + 48))(v76, 1, v61) == 1)
  {
    sub_1000095E8(v76, &qword_1011AF0A0);
    if (qword_1011A6B30 == -1)
    {
LABEL_24:
      v79 = type metadata accessor for Logger();
      sub_1000060E4(v79, static Logger.groupActivities);
      v80 = v192;

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *&v202[0] = v84;
        *v83 = 136446210;
        *(v83 + 4) = sub_100010678(v190, v80, v202);
        _os_log_impl(&_mh_execute_header, v81, v82, "No active participant with identifier=%{public}s", v83, 0xCu);
        sub_10000959C(v84);
      }

      goto LABEL_27;
    }

LABEL_82:
    swift_once();
    goto LABEL_24;
  }

  v85 = v61;
  (*v164)(v75, v76, v61);
  v86 = *v188;
  v87 = *(v188 + 8);
  v88 = *(v188 + 9) | ((*(v188 + 13) | (*(v188 + 15) << 16)) << 32);
  v90 = *(v188 + 16);
  v89 = *(v188 + 24);
  v91 = *(v188 + 48);
  v92 = v87 | (v88 << 8);
  if (v91 <= 2)
  {
    if (*(v188 + 48))
    {
      v93 = v61;
      v94 = v186;
      v95 = v188;
      if (v91 != 1)
      {
        if (v91 == 2)
        {
          v96 = v184;
          static GroupSessionEvent.Action.skip(item:)();
          goto LABEL_53;
        }

        goto LABEL_76;
      }

      v96 = v184;
      static GroupSessionEvent.Action.react(with:)();
LABEL_53:
      (*v163)(v177, v75, v93);
      (*(v185 + 16))(v178, v96, v94);
      v123 = *(v95 + 8);
      v124 = *(v95 + 48);
      if (v124 == 4)
      {
        v125 = v182;
      }

      else
      {
        v125 = v182;
        v126 = v179;
        if (v124 == 5)
        {
          v128 = *(v95 + 32);
          v127 = *(v95 + 40);
          v129 = *(v95 + 16);
          v130 = *(v95 + 24);
          if (!(v123 | *v95 | v127 | v128 | v130 | v129) || *v95 == 2 && !(v127 | v123 | v128 | v130 | v129))
          {
            v131 = type metadata accessor for URL();
            (*(*(v131 - 8) + 56))(v126, 1, 1, v131);
LABEL_61:
            v132 = v183;
            GroupSessionEvent.init(originator:action:url:)();
            GroupSession.showNotice(_:)();
            v133 = v181;
            v134 = v180;
            if (qword_1011A6B30 != -1)
            {
              swift_once();
            }

            v135 = type metadata accessor for Logger();
            sub_1000060E4(v135, static Logger.groupActivities);
            v136 = *(v133 + 16);
            v136(v134, v132, v125);
            v137 = Logger.logObject.getter();
            v138 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v137, v138))
            {
              v139 = swift_slowAlloc();
              v140 = v125;
              v141 = swift_slowAlloc();
              *&v202[0] = v141;
              *v139 = 136446210;
              v136(v176, v134, v140);
              v142 = String.init<A>(describing:)();
              v144 = v143;
              v145 = *(v133 + 8);
              v145(v134, v140);
              v146 = sub_100010678(v142, v144, v202);

              *(v139 + 4) = v146;
              _os_log_impl(&_mh_execute_header, v137, v138, "Posting event=%{public}s", v139, 0xCu);
              sub_10000959C(v141);

              v145(v183, v140);
              (*(v185 + 8))(v184, v186);
              (*v189)(v191, v197);
              return;
            }

            v147 = *(v133 + 8);
            v147(v134, v125);
            v147(v132, v125);
            (*(v185 + 8))(v96, v186);
            goto LABEL_66;
          }
        }
      }

      URL.init(string:)();
      goto LABEL_61;
    }

    v98 = (v167 + 8);
    v99 = (v166 + 8);
    v94 = v186;
    v100 = *v188;
    if (v87)
    {
      SharedListening.Event.Content.title.getter(v100, 1);
      v101 = v169;
      static GroupSessionEvent.Action.QueueChange.Item.container(_:)();
    }

    else
    {
      SharedListening.Event.Content.title.getter(v100, 0);
      v101 = v169;
      static GroupSessionEvent.Action.QueueChange.Item.song(_:)();
    }

    v122 = v168;
    static GroupSessionEvent.Action.QueueChange.added(_:)();
    (*v98)(v101, v171);
    v96 = v184;
    static GroupSessionEvent.Action.updatedQueue(_:)();
    (*v99)(v122, v170);
    v93 = v85;
LABEL_52:
    v95 = v188;
    goto LABEL_53;
  }

  if (v91 == 3)
  {
    static GroupSessionEvent.Action.start.getter();
    v102 = v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v103 = (*(*(v161[0] - 8) + 48))(v102, 1);
    v93 = v61;
    v94 = v186;
    v95 = v188;
    if (v103 || (v148 = *(v102 + 7)) == 0 || (v149 = [*(v148 + 16) identifiers], v150 = objc_msgSend(v86, "identifiers"), v151 = objc_msgSend(v149, "intersectsSet:", v150), v149, v150, v96 = v184, (v151 & 1) == 0))
    {
      if (qword_1011A6B30 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_1000060E4(v104, static Logger.groupActivities);
      v105 = v175;
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      sub_100ABFD38(v95);
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *&v202[0] = v109;
        *v108 = 136446210;
        v110 = v105;
        v111 = [v86 description];
        v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v114 = v113;

        sub_100ABFD38(v95);
        v115 = sub_100010678(v112, v114, v202);

        *(v108 + 4) = v115;
        _os_log_impl(&_mh_execute_header, v106, v107, "Dispatching event for=%{public}s", v108, 0xCu);
        sub_10000959C(v109);
      }

      sub_100009F78(0, &qword_1011A9F80);
      v116 = static OS_dispatch_queue.main.getter();
      v117 = swift_allocObject();
      *(v117 + 16) = v4;
      v118 = *(v95 + 16);
      *(v117 + 24) = *v95;
      *(v117 + 40) = v118;
      *(v117 + 56) = *(v95 + 32);
      *(v117 + 72) = *(v95 + 48);
      v119 = v192;
      *(v117 + 80) = v190;
      *(v117 + 88) = v119;
      sub_100ABFCDC(v95, v202);

      OS_dispatch_queue.asyncAfter(_:block:)(sub_100ABFE3C, v117);

      (*(v185 + 8))(v184, v186);
LABEL_66:
      (*v189)(v191, v93);
      return;
    }

    goto LABEL_53;
  }

  if (v91 == 4)
  {
    v120 = v184;
    static GroupSessionEvent.Action.updatedQueue.getter();
    v121 = v4[8];
    v199 = v4[7];
    v198 = v121;
    v4[7] = v86;
    *(v4 + 64) = v87;
    *(v4 + 71) = BYTE6(v88);
    *(v4 + 69) = WORD2(v88);
    *(v4 + 65) = v88;
    v4[9] = v90;
    v4[10] = v89;
    v96 = v120;
    sub_100ABFE6C(v175, v174);
    v75 = v191;
    sub_1005FF454(v199, v198);
    v93 = v85;
    v94 = v186;
    goto LABEL_52;
  }

  v93 = v61;
  v94 = v186;
  v95 = v188;
  if (v91 == 5)
  {
    v97 = *(v188 + 40) | *(v188 + 32) | v90 | v89 | v92;
    if (v86 == 1 && !v97)
    {
      v96 = v184;
      static GroupSessionEvent.Action.seek.getter();
      goto LABEL_53;
    }

    if (v86 == 3 && !v97)
    {
      v96 = v184;
      static GroupSessionEvent.Action.pause.getter();
      goto LABEL_53;
    }

    if (v86 == 4 && !v97)
    {
      v96 = v184;
      static GroupSessionEvent.Action.play.getter();
      goto LABEL_53;
    }
  }

LABEL_76:
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v152 = type metadata accessor for Logger();
  sub_1000060E4(v152, static Logger.groupActivities);
  sub_100ABFCDC(v95, v202);
  v153 = Logger.logObject.getter();
  v154 = static os_log_type_t.default.getter();
  sub_100ABFD38(v95);
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v201 = v156;
    *v155 = 136446210;
    v157 = *(v95 + 16);
    v202[0] = *v95;
    v202[1] = v157;
    v202[2] = *(v95 + 32);
    v203 = *(v95 + 48);
    sub_100ABFCDC(v95, v200);
    v158 = String.init<A>(describing:)();
    v160 = sub_100010678(v158, v159, &v201);

    *(v155 + 4) = v160;
    _os_log_impl(&_mh_execute_header, v153, v154, "Event case not handle for event=%{public}s", v155, 0xCu);
    sub_10000959C(v156);
  }

  (*v189)(v75, v93);
}

int64x2_t GroupActivitiesManager.Activity.Metadata.init()@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = *(v2 + 28);
  v4 = type metadata accessor for URL();
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
  type metadata accessor for Locale();
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for String.LocalizationValue();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100AA9A28, 0, 0);
}

uint64_t sub_100AA9A28()
{
  v1 = *(v0 + 152);
  *(v1 + 4) = 0;
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for URL();
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
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v19 = *(v0 + 176);
      v20 = *(v0 + 184);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v20 + 16))(v18, v17, v19);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 200);
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);
      v24 = qword_101219808;
      static Locale.current.getter();
      v9 = String.init(localized:table:bundle:locale:comment:)();
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
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

LABEL_15:
        v43 = *(v0 + 152);
        v44 = [v6 artworkCatalog];
        goto LABEL_27;
      }
    }

    v143 = v11;
    v32 = v9;
    v33 = v1;
    v35 = *(v0 + 192);
    v34 = *(v0 + 200);
    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v37 + 16))(v35, v34, v36);
    if (qword_1011A6740 == -1)
    {
LABEL_14:
      v38 = *(v0 + 200);
      v39 = *(v0 + 176);
      v40 = *(v0 + 184);
      v41 = qword_101219808;
      static Locale.current.getter();
      v29 = String.init(localized:table:bundle:locale:comment:)();
      v31 = v42;
      (*(v40 + 8))(v38, v39);
      v1 = v33;
      v9 = v32;
      v11 = v143;
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
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v48;
      }

      else
      {
        v74 = *(v0 + 192);
        v73 = *(v0 + 200);
        v75 = *(v0 + 176);
        v76 = *(v0 + 184);
        String.LocalizationValue.init(stringLiteral:)();
        (*(v76 + 16))(v74, v73, v75);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 200);
        v78 = *(v0 + 176);
        v79 = *(v0 + 184);
        v80 = qword_101219808;
        static Locale.current.getter();
        v9 = String.init(localized:table:bundle:locale:comment:)();
        v11 = v81;
        (*(v79 + 8))(v77, v78);
      }

      v82 = [v6 providerName];
      if (v82)
      {
        v83 = v82;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v72;
      }

      else
      {
        v90 = *(v0 + 192);
        v89 = *(v0 + 200);
        v91 = *(v0 + 176);
        v92 = *(v0 + 184);
        String.LocalizationValue.init(stringLiteral:)();
        (*(v92 + 16))(v90, v89, v91);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v93 = *(v0 + 200);
        v94 = *(v0 + 176);
        v95 = *(v0 + 184);
        v96 = qword_101219808;
        static Locale.current.getter();
        v9 = String.init(localized:table:bundle:locale:comment:)();
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

      v143 = v11;
      v32 = v9;
      v33 = v1;
      v101 = *(v0 + 192);
      v100 = *(v0 + 200);
      v102 = *(v0 + 176);
      v103 = *(v0 + 184);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v103 + 16))(v101, v100, v102);
      if (qword_1011A6740 == -1)
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
          _StringGuts.grow(_:)(29);

          v126 = sub_100AC0054(&off_1010C8DD0);
          v127 = MPModelObject.humanDescription(including:)(v126);
          v129 = v128;

          v130._countAndFlagsBits = v127;
          v130._object = v129;
          String.append(_:)(v130);

          return _assertionFailure(_:_:file:line:flags:)();
        }

        v105 = v104;
        v106 = [v104 title];
        if (v106)
        {
          v107 = v106;
          v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v110 = v109;
        }

        else
        {
          v132 = *(v0 + 192);
          v131 = *(v0 + 200);
          v133 = *(v0 + 176);
          v134 = *(v0 + 184);
          String.LocalizationValue.init(stringLiteral:)();
          (*(v134 + 16))(v132, v131, v133);
          if (qword_1011A6740 != -1)
          {
            swift_once();
          }

          v135 = *(v0 + 200);
          v136 = *(v0 + 176);
          v137 = *(v0 + 184);
          v138 = qword_101219808;
          static Locale.current.getter();
          v108 = String.init(localized:table:bundle:locale:comment:)();
          v110 = v139;
          (*(v137 + 8))(v135, v136);
        }

        v140 = *(v0 + 152);
        v44 = [v105 artworkCatalog];
        *v140 = v108;
        v140[1] = v110;
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
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v88;
      }

      else
      {
        v112 = *(v0 + 192);
        v111 = *(v0 + 200);
        v113 = *(v0 + 176);
        v114 = *(v0 + 184);
        String.LocalizationValue.init(stringLiteral:)();
        (*(v114 + 16))(v112, v111, v113);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v115 = *(v0 + 200);
        v116 = *(v0 + 176);
        v117 = *(v0 + 184);
        v118 = qword_101219808;
        static Locale.current.getter();
        v9 = String.init(localized:table:bundle:locale:comment:)();
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

      v143 = v11;
      v32 = v9;
      v33 = v1;
      v123 = *(v0 + 192);
      v122 = *(v0 + 200);
      v124 = *(v0 + 176);
      v125 = *(v0 + 184);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v125 + 16))(v123, v122, v124);
      if (qword_1011A6740 == -1)
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
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v16;
  }

  else
  {
    v50 = *(v0 + 192);
    v49 = *(v0 + 200);
    v51 = *(v0 + 176);
    v52 = *(v0 + 184);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v52 + 16))(v50, v49, v51);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 200);
    v54 = *(v0 + 176);
    v55 = *(v0 + 184);
    v56 = qword_101219808;
    static Locale.current.getter();
    v9 = String.init(localized:table:bundle:locale:comment:)();
    v11 = v57;
    (*(v55 + 8))(v53, v54);
  }

  v58 = [v13 curator];
  if (v58 && (v59 = v58, v60 = [v58 name], v59, v60))
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    *(v63 + 24) = 0x8000000100E62510;
    v64 = v62;
    v65 = objc_opt_self();
    v66 = String._bridgeToObjectiveC()();
    [v65 setCacheLimit:0 forCacheIdentifier:v66 cacheReference:v63];

    v67 = String._bridgeToObjectiveC()();

    [v64 setCacheIdentifier:v67 forCacheReference:v63];

    [v64 setFittingSize:{300.0, 300.0}];
    [v64 setDestinationScale:0.0];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_100AAAA48;
    v68 = swift_continuation_init();
    *(v0 + 136) = sub_10010FC20(&qword_1011AAA10);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100988A84;
    *(v0 + 104) = &unk_1010DE6D8;
    *(v0 + 112) = v68;
    [v64 requestImageWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

LABEL_66:

  v141 = *(v0 + 8);

  return v141();
}

uint64_t sub_100AAAA48()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_100AAAC20;
  }

  else
  {
    v2 = sub_100AAAB58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AAAB58()
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

uint64_t sub_100AAAC20()
{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  *(v3 + 32) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_100AAACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  sub_10010FC20(&qword_1011AF0C0);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100AAAD80, 0, 0);
}

uint64_t sub_100AAAD80()
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
    sub_1000095E8(v11, &qword_1011AF0C8);
    sub_100008FE4(v9, v11);
    sub_1002190E0(v10, v2 + v4, &qword_1011AF0C0);
    type metadata accessor for CodableListeningProperties();
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v2 + 40) = v26;
    *(v2 + 48) = v12;
    sub_1000089F8(v2 + v4, v27, &qword_1011AF0C0);
    v13 = (*(v6 + 48))(v27, 1, v5);
    v14 = v0[23];
    if (v13 == 1)
    {
      v15 = v7;
      v16 = v8;
      sub_1000095E8(v14, &qword_1011AF0C0);
      if (qword_1011A6B28 != -1)
      {
        swift_once();
      }

      v17 = qword_1011AF070;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_100AAB184;
      v18 = swift_continuation_init();
      v0[17] = sub_10010FC20(&qword_1011AF988);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100988A84;
      v0[13] = &unk_1010DE918;
      v0[14] = v18;
      [v15 getRepresentativeObjectWithProperties:v17 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v24 = v0[21];
    sub_10000959C(v0[22]);
    sub_1000095E8(v24, &qword_1011AF0C0);
    sub_1000095E8(v14, &qword_1011AF0C0);

    v23 = v0[1];
  }

  else
  {
    v19 = v0[22];
    v20 = v0[21];
    v21 = v0[19];
    sub_100AC0A04();
    swift_allocError();
    *v22 = 96;
    swift_willThrow();

    sub_10000959C(v19);
    sub_1000095E8(v20, &qword_1011AF0C0);
    sub_100ABFC7C(v21, type metadata accessor for GroupActivitiesManager.Activity);

    v23 = v0[1];
  }

  return v23();
}

uint64_t sub_100AAB184()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_100AAB374;
  }

  else
  {
    v2 = sub_100AAB294;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AAB294()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v6 = [v4 innermostModelObject];

  sub_10000959C(v3);
  sub_1000095E8(v2, &qword_1011AF0C0);
  type metadata accessor for CodableModelObjectIdentity();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v5 + 56) = v7;

  v8 = v0[1];

  return v8();
}

uint64_t sub_100AAB374()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  swift_willThrow();

  sub_10000959C(v2);
  sub_1000095E8(v3, &qword_1011AF0C0);
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
  sub_10010FC20(&qword_1011A77F0);
  v2[9] = swift_task_alloc();
  sub_10010FC20(&qword_1011AF0C0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  type metadata accessor for GroupActivityMetadata.ActivityType();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100AAB5F8, 0, 0);
}

uint64_t sub_100AAB5F8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = type metadata accessor for GroupActivityMetadata();
  v0[17] = v5;
  v6 = swift_allocBox();
  v8 = v7;
  v0[18] = v6;
  v0[19] = v7;
  GroupActivityMetadata.init()();
  GroupActivityMetadata.supportsContinuationOnTV.setter();
  static GroupActivityMetadata.ActivityType.listenTogether.getter();
  GroupActivityMetadata.type.setter();
  v9 = type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_1000089F8(v4 + *(v9 + 32), v3, &qword_1011AF0C0);
  v10 = *(v2 + 48);
  v0[20] = v10;
  v0[21] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v3, 1, v1) != 1)
  {
    v22 = v0[15];
    v23 = v0[12];
    v24 = v0[9];
    v57 = v0[7];
    sub_100ABFAA8(v0[11], v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    GroupActivityMetadata.title.setter();

    GroupActivityMetadata.subtitle.setter();
    v25 = *(v22 + 32);
    GroupActivityMetadata.previewImage.setter();
    sub_1000089F8(v22 + *(v23 + 28), v24, &qword_1011A77F0);
    GroupActivityMetadata.fallbackURL.setter();
    sub_100ABFC7C(v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v5 - 8) + 16))(v57, v8, v5);
    goto LABEL_30;
  }

  v11 = v0[8];
  sub_1000095E8(v0[11], &qword_1011AF0C0);
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
    v14 = qword_1011A6B10;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = qword_1011AF058;
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

    if (qword_1011A6B18 != -1)
    {
      swift_once();
    }

    v29 = qword_1011AF060;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100009F78(0, &qword_1011AF0D0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = v13;
      v21 = [ObjCClassFromMetadata identityKind];
      if (qword_1011A6B20 != -1)
      {
        swift_once();
      }

      v29 = qword_1011AF068;
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
            _StringGuts.grow(_:)(29);

            v52 = sub_100AC0054(&off_1010C8DF8);
            v53 = MPModelObject.humanDescription(including:)(v52);
            v55 = v54;

            v56._countAndFlagsBits = v53;
            v56._object = v55;
            String.append(_:)(v56);

            return _assertionFailure(_:_:file:line:flags:)();
          }

          v49 = objc_opt_self();
          v50 = v13;
          v21 = [v49 kindWithVariants:3];
          if (qword_1011A6B00 != -1)
          {
            swift_once();
          }

          v29 = qword_1011AF050;
          goto LABEL_24;
        }

        v35 = objc_opt_self();
        v36 = v13;
        v34 = [v35 kindWithVariants:3];
      }

      v21 = v34;
      if (qword_1011A6AF0 != -1)
      {
        swift_once();
      }

      v29 = qword_1011AF040;
    }
  }

LABEL_24:
  v19 = v29;
LABEL_25:
  v0[23] = v19;
  v0[24] = v21;
  sub_1000089F8(v0[8], (v0 + 2), &qword_1011AF0C8);
  v37 = v0[5];
  if (v37)
  {
    v38 = v0[6];
    sub_10000954C(v0 + 2, v0[5]);
    v58 = (*(v38 + 8) + **(v38 + 8));
    v39 = swift_task_alloc();
    v0[25] = v39;
    *v39 = v0;
    v39[1] = sub_100AABE8C;
    v40 = v0[10];

    return v58(v40, v13, v21, v19, v37, v38);
  }

  v42 = v0[12];
  v43 = v0[13];
  v44 = v0[10];

  sub_1000095E8((v0 + 2), &qword_1011AF0C8);
  (*(v43 + 56))(v44, 1, 1, v42);
  v45 = v0[19];
  v46 = v0[17];
  v47 = v0[7];
  sub_1000095E8(v0[10], &qword_1011AF0C0);
  (*(*(v46 - 8) + 16))(v47, v45, v46);
LABEL_30:
  sub_100AAC1CC();

  v48 = v0[1];

  return v48();
}

uint64_t sub_100AABE8C()
{

  return _swift_task_switch(sub_100AABF88, 0, 0);
}

uint64_t sub_100AABF88()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[10];
  sub_10000959C((v0 + 2));
  v4 = v1(v3, 1, v2);
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  if (v4 == 1)
  {

    v8 = v0[19];
    v9 = v0[17];
    v10 = v0[7];
    sub_1000095E8(v0[10], &qword_1011AF0C0);
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
    sub_100ABFAA8(v0[10], v12, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    GroupActivityMetadata.title.setter();

    GroupActivityMetadata.subtitle.setter();
    v14 = *(v12 + 32);
    GroupActivityMetadata.previewImage.setter();
    sub_1000089F8(v12 + *(v17 + 28), v13, &qword_1011A77F0);
    GroupActivityMetadata.fallbackURL.setter();

    sub_100ABFC7C(v12, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v18 - 8) + 16))(v19, v11, v18);
  }

  sub_100AAC1CC();

  v15 = v0[1];

  return v15();
}

void sub_100AAC1CC()
{
  v0 = type metadata accessor for GroupActivityMetadata();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.groupActivities);

  v14 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = swift_projectBox();
    swift_beginAccess();
    (*(v1 + 16))(v3, v8, v0);
    v9 = String.init<A>(reflecting:)();
    v11 = sub_100010678(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v14, v5, "Sending activity metadata=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
    v12 = v14;
  }
}

id static GroupActivitiesManager.Activity.playingProperties.getter()
{
  if (qword_1011A6B08 != -1)
  {
    swift_once();
  }

  v1 = static GroupActivitiesManager.Activity.playingProperties;

  return v1;
}

void sub_100AAC46C()
{
  sub_10010FC20(&unk_1011AAAB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBDC20;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  sub_10010FC20(&qword_1011AAC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBC6B0;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_10000C0A4(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &qword_1011AAC28);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F78(0, &qword_1011AC8D0);
  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_1011AF058 = v12;
}

void sub_100AAC688()
{
  sub_10010FC20(&unk_1011AAAB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBDC20;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  sub_10010FC20(&qword_1011AAC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBC6B0;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_10000C0A4(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &qword_1011AAC28);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F78(0, &qword_1011AC8D0);
  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_1011AF060 = v12;
}

id sub_100AAC8C0()
{
  result = sub_100AAC8E0();
  qword_1011AF070 = result;
  return result;
}

id sub_100AAC8E0()
{
  if (qword_1011A6B08 != -1)
  {
    swift_once();
  }

  v0 = static GroupActivitiesManager.Activity.playingProperties;
  sub_10010FC20(&qword_1011AAC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  if (qword_1011A6B18 != -1)
  {
    swift_once();
  }

  v3 = qword_1011AF060;
  *(inited + 48) = qword_1011AF060;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v4;
  v5 = qword_1011A6B10;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1011AF058;
  *(inited + 72) = qword_1011AF058;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  v9 = qword_1011A6B20;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_1011AF068;
  *(inited + 96) = qword_1011AF068;
  v12 = v11;
  sub_10000C0A4(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011AAC28);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100009F78(0, &qword_1011AC8D0);
  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithProperties:isa relationships:v15];

  v17 = [v0 propertySetByCombiningWithPropertySet:v16];
  return v17;
}

unint64_t sub_100AACB68()
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

uint64_t sub_100AACBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001BLL && 0x8000000100E628A0 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100E628C0 == a2)
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

uint64_t sub_100AACC88(uint64_t a1)
{
  v2 = sub_100AC01BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100AACCC4(uint64_t a1)
{
  v2 = sub_100AC01BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupActivitiesManager.Activity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_10010FC20(&qword_1011AF0D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = type metadata accessor for GroupActivitiesManager.Activity(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v12 = *(v11 + 40);
  v13 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
  sub_10000954C(a1, a1[3]);
  sub_100AC01BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v5;
    v15 = v18;
    type metadata accessor for CodableListeningProperties();
    v19 = 0;
    sub_100053024(&qword_1011AF0E8, type metadata accessor for CodableListeningProperties);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v10 + 6) = v20;
    type metadata accessor for CodableModelObjectIdentity();
    v19 = 1;
    sub_100053024(&qword_1011AF0F0, type metadata accessor for CodableModelObjectIdentity);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v20;
    (*(v14 + 8))(v7, v4);
    *(v10 + 7) = v16;
    sub_100ABFB10(v10, v15, type metadata accessor for GroupActivitiesManager.Activity);
  }

  sub_10000959C(a1);
  return sub_100ABFC7C(v10, type metadata accessor for GroupActivitiesManager.Activity);
}

uint64_t GroupActivitiesManager.Activity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011AF0F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100AC01BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 48);
  HIBYTE(v10) = 0;
  sub_10010FC20(&qword_1011AF100);
  sub_100AC0210();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 56);
    HIBYTE(v10) = 1;
    sub_10010FC20(&qword_1011AF118);
    sub_100AC02C4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100AAD1F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return GroupActivitiesManager.Activity.metadata.getter(a1);
}

uint64_t sub_100AAD2C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100053024(&qword_1011AF138, type metadata accessor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t GroupActivitiesManager.State.isSharePlaySessionActive.getter()
{
  swift_getKeyPath();
  sub_100053024(&qword_1011AF138, type metadata accessor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_100AAD434(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100053024(&qword_1011AF138, type metadata accessor for GroupActivitiesManager.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100AAD544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100053024(&qword_1011AF138, type metadata accessor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t GroupActivitiesManager.State.isLoading.getter()
{
  swift_getKeyPath();
  sub_100053024(&qword_1011AF138, type metadata accessor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_100AAD6B4(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100053024(&qword_1011AF138, type metadata accessor for GroupActivitiesManager.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t GroupActivitiesManager.State.deinit()
{
  v1 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GroupActivitiesManager.State.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t GroupActivitiesManager.coordinator.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_10000959C(v1 + 16);
  sub_100059A8C(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t GroupActivitiesManager.pendingNoticeAlert.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_100ABFE6C(v1, *(v0 + 64));
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
      sub_100053024(&qword_1011AF138, type metadata accessor for GroupActivitiesManager.State);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
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
  return sub_100AADB88;
}

void sub_100AADB88(uint64_t a1, char a2)
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
        sub_100053024(&qword_1011AF138, type metadata accessor for GroupActivitiesManager.State);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  free(v2);
}

uint64_t GroupActivitiesManager.participantsCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100AADD48@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100AADDC8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_100AADE94(v1);
}

uint64_t sub_100AADE94(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11 != a1)
  {
    if (qword_1011A6B30 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, static Logger.groupActivities);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v8 + 4) = v11;

      _os_log_impl(&_mh_execute_header, v6, v7, "👤 Participants count update=%{public}ld", v8, 0xCu);
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v9 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    result = swift_beginAccess();
    if (*(v2 + v9) < v11)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v2 + v9) = v10;
    }
  }

  return result;
}

uint64_t Logger.groupActivities.unsafeMutableAddressor()
{
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.groupActivities);
}

uint64_t sub_100AAE168(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AEDB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AEDA8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GroupActivitiesManager.isLoading.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100AAE360@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100AAE3E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_100AAE4AC(v1);
}

uint64_t sub_100AAE4AC(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11 != v3)
  {
    if (qword_1011A6B30 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, static Logger.groupActivities);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v8 + 4) = v11;

      _os_log_impl(&_mh_execute_header, v6, v7, "⏳ Session is loading=%{BOOL,public}d", v8, 8u);
    }

    else
    {
    }

    v9 = *(v2 + 88);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v11 == *(v9 + 17))
    {
      *(v9 + 17) = v11;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100053024(&qword_1011AF138, type metadata accessor for GroupActivitiesManager.State);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    return sub_100AAE78C();
  }

  return result;
}

uint64_t sub_100AAE78C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011AF0A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v64 = &v53[-v4];
  v67 = sub_10010FC20(&qword_1011AF178);
  v5 = __chkstk_darwin(v67);
  v7 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v53[-v8];
  v10 = sub_10010FC20(&qword_1011AF180);
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
  static Published.subscript.getter();

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

    GroupSession.state.getter();

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
  sub_1000089F8(v24, v9, &qword_1011AF180);
  sub_1000089F8(v22, &v9[v29], &qword_1011AF180);
  v62 = v3;
  v30 = v3[6];
  if (v30(v9, 1, v2) == 1)
  {
    sub_1000095E8(v22, &qword_1011AF180);
    sub_1000095E8(v24, &qword_1011AF180);
    if (v30(&v9[v29], 1, v2) == 1)
    {
      sub_1000095E8(v9, &qword_1011AF180);
      v25 = 1;
      return GroupActivitiesManager.isSharePlaySessionActive.setter(v25);
    }

    goto LABEL_11;
  }

  sub_1000089F8(v9, v19, &qword_1011AF180);
  if (v30(&v9[v29], 1, v2) == 1)
  {
    sub_1000095E8(v22, &qword_1011AF180);
    sub_1000095E8(v24, &qword_1011AF180);
    (v62[1])(v19, v2);
LABEL_11:
    sub_1000095E8(v9, &qword_1011AF178);
    v31 = v61;
    goto LABEL_12;
  }

  v35 = v62[4];
  v60 = v30;
  v36 = v64;
  v35(v64, &v9[v29], v2);
  sub_100020674(&qword_1011AF188, &qword_1011AF0A8);
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = v62[1];
  v38 = v36;
  v30 = v60;
  v37(v38, v2);
  sub_1000095E8(v22, &qword_1011AF180);
  sub_1000095E8(v24, &qword_1011AF180);
  v37(v19, v2);
  sub_1000095E8(v9, &qword_1011AF180);
  v31 = v61;
  if ((v54 & 1) == 0)
  {
LABEL_12:
    v32 = *(v31 + v57);
    v60 = v30;
    if (v32)
    {

      v33 = v65;
      GroupSession.state.getter();

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
    sub_1000089F8(v33, v59, &qword_1011AF180);
    sub_1000089F8(v39, v42 + v41, &qword_1011AF180);
    v43 = v60;
    if (v60(v42, 1, v2) == 1)
    {
      sub_1000095E8(v39, &qword_1011AF180);
      sub_1000095E8(v33, &qword_1011AF180);
      if (v43(v42 + v41, 1, v2) == 1)
      {
        sub_1000095E8(v42, &qword_1011AF180);
        goto LABEL_2;
      }
    }

    else
    {
      v44 = v63;
      sub_1000089F8(v42, v63, &qword_1011AF180);
      if (v43(v42 + v41, 1, v2) != 1)
      {
        v49 = v62;
        v50 = v64;
        (v62[4])(v64, v42 + v41, v2);
        sub_100020674(&qword_1011AF188, &qword_1011AF0A8);
        v51 = dispatch thunk of static Equatable.== infix(_:_:)();
        v52 = v49[1];
        v52(v50, v2);
        sub_1000095E8(v66, &qword_1011AF180);
        sub_1000095E8(v33, &qword_1011AF180);
        v52(v44, v2);
        sub_1000095E8(v42, &qword_1011AF180);
        if (v51)
        {
          goto LABEL_2;
        }

LABEL_23:
        v45 = [objc_opt_self() standardUserDefaults];
        v46 = String._bridgeToObjectiveC()();
        v47 = [v45 BOOLForKey:v46];

        v25 = v47;
        return GroupActivitiesManager.isSharePlaySessionActive.setter(v25);
      }

      sub_1000095E8(v39, &qword_1011AF180);
      sub_1000095E8(v33, &qword_1011AF180);
      (v62[1])(v44, v2);
    }

    sub_1000095E8(v42, &qword_1011AF178);
    goto LABEL_23;
  }

LABEL_2:
  v25 = 1;
  return GroupActivitiesManager.isSharePlaySessionActive.setter(v25);
}

uint64_t sub_100AAF090(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

double GroupActivitiesManager.reaction.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_100AAF2F4@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_100AAF37C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100AC0ECC(v1, v2);
  static Published.subscript.getter();

  v7[0] = v4;
  v7[1] = v5;
  v7[2] = v6;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_100AAF4A8(v7);
  return sub_1000095E8(v7, &qword_1011AF160);
}

uint64_t sub_100AAF4A8(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v50 = a1[2];
  v52 = v5;
  v6 = a1[5];
  v48 = a1[4];
  v51 = v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Participant();
  v47 = *(v11 - 8);
  __chkstk_darwin(v11);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v1;
  static Published.subscript.getter();

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
      sub_100AC0F1C(v15, v14);
      sub_100AC0F1C(v4, 0);
      v20 = v18;
      goto LABEL_23;
    }

    v41 = v60;
    if (v58 == v4 && v59 == v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v17 = v41;
      if (v41 == v50 && v16 == v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v19)
        {
          if (!v51)
          {
            return sub_100AC0F1C(v15, v14);
          }

          sub_1000089F8(a1, &v58, &qword_1011AF160);

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

            sub_1000089F8(a1, &v58, &qword_1011AF160);

LABEL_39:

            return sub_100AC0F1C(v15, v14);
          }

          v37 = v49;
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_1000089F8(a1, &v58, &qword_1011AF160);

          if (v38)
          {
            goto LABEL_39;
          }

          v40 = v15;
          v39 = v41;
          sub_100AC0F1C(v15, v14);
          v20 = v37;
          v17 = v39;
LABEL_23:
          if (qword_1011A6B30 != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_1000060E4(v23, static Logger.groupActivities);

          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            *&v57[0] = v27;
            *v26 = 136446210;
            v58 = v17;
            v59 = v16;

            v28 = String.init<A>(reflecting:)();
            v30 = sub_100010678(v28, v29, v57);

            *(v26 + 4) = v30;
            _os_log_impl(&_mh_execute_header, v24, v25, "🌚 received: %{public}s)", v26, 0xCu);
            sub_10000959C(v27);

            v20 = v49;
          }

          if (!v19)
          {
            goto LABEL_36;
          }

          if (*(v53 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
          {

            v31 = v46;
            GroupSession.localParticipant.getter();

            v32 = v43;
            Participant.id.getter();
            (*(v47 + 8))(v31, v42);
            v33 = UUID.uuidString.getter();
            v35 = v34;
            (*(v44 + 8))(v32, v45);
            if (v20 == v33 && v19 == v35)
            {

LABEL_36:

              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v57[0] = v54;
              v57[1] = v55;
              v57[2] = v56;
              swift_getKeyPath();
              swift_getKeyPath();
              v55 = 0u;
              v56 = 0u;
              v54 = 0u;

              static Published.subscript.setter();
              sub_100AAF4A8(v57);
              return sub_1000095E8(v57, &qword_1011AF160);
            }

            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

        sub_1000089F8(a1, &v58, &qword_1011AF160);
      }

      else
      {

        sub_1000089F8(a1, &v58, &qword_1011AF160);
      }

      v40 = v15;
      v21 = v15;
      v22 = v14;
    }

    else
    {

      sub_1000089F8(a1, &v58, &qword_1011AF160);

      v40 = v15;
      v21 = v15;
      v22 = v14;
      v17 = v41;
    }

    v20 = v49;
LABEL_22:
    sub_100AC0F1C(v21, v22);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_100AAFE70(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AF958);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AF170);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GroupActivitiesManager.maxParticipantsCount.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupActivitiesManager.hasJoined.getter()
{
  v1 = sub_10010FC20(&qword_1011AF0A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v24 = &v23 - v3;
  v4 = sub_10010FC20(&qword_1011AF178);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_10010FC20(&qword_1011AF180);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    GroupSession.state.getter();

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
  sub_1000089F8(v15, v6, &qword_1011AF180);
  sub_1000089F8(v13, &v6[v17], &qword_1011AF180);
  v18 = *(v2 + 48);
  if (v18(v6, 1, v1) != 1)
  {
    sub_1000089F8(v6, v10, &qword_1011AF180);
    if (v18(&v6[v17], 1, v1) != 1)
    {
      v20 = v24;
      (*(v2 + 32))(v24, &v6[v17], v1);
      sub_100020674(&qword_1011AF188, &qword_1011AF0A8);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v2 + 8);
      v21(v20, v1);
      sub_1000095E8(v13, &qword_1011AF180);
      sub_1000095E8(v15, &qword_1011AF180);
      v21(v10, v1);
      sub_1000095E8(v6, &qword_1011AF180);
      return v19 & 1;
    }

    sub_1000095E8(v13, &qword_1011AF180);
    sub_1000095E8(v15, &qword_1011AF180);
    (*(v2 + 8))(v10, v1);
    goto LABEL_9;
  }

  sub_1000095E8(v13, &qword_1011AF180);
  sub_1000095E8(v15, &qword_1011AF180);
  if (v18(&v6[v17], 1, v1) != 1)
  {
LABEL_9:
    sub_1000095E8(v6, &qword_1011AF178);
    v19 = 0;
    return v19 & 1;
  }

  sub_1000095E8(v6, &qword_1011AF180);
  v19 = 1;
  return v19 & 1;
}

uint64_t GroupActivitiesManager.isSessionEligible.getter()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10[4] = v6;
  v10[5] = v7;
  v11 = v8;
  v12 = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  if ((GroupActivitiesManager.hasJoined.getter() & 1) != 0 || (GroupStateObserver.isEligibleForGroupSession.getter() & 1) == 0)
  {
    sub_100014984(v10);
    return 0;
  }

  else
  {
    if (v11 == 2)
    {

      sub_100014984(v10);
      return BYTE1(v10[0]);
    }

    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_100014984(v10);
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
  v6 = sub_10010FC20(&qword_1011AF0C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v49 - v9;
  if (a1)
  {
    goto LABEL_2;
  }

  v50 = v7;
  v52 = a2;
  swift_beginAccess();
  v19 = v2[5];
  v20 = v2[6];
  v21 = sub_10000954C(v2 + 2, v19);
  v51 = &v49;
  v22 = *(v19 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v23);
  v26 = (*(v20 + 48))(v19, v20);
  (*(v22 + 8))(v25, v19);
  if (!v26)
  {
LABEL_12:
    if (qword_1011A6B30 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    v15 = sub_1000060E4(v28, static Logger.groupActivities);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_21;
    }

    v31 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v31 = 136446466;
    v53 = 0;
    sub_10010FC20(&unk_1011AF1A0);
    v32 = String.init<A>(describing:)();
    v34 = sub_100010678(v32, v33, &v55);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2082;
    v35 = v3[5];
    v36 = v3[6];
    v37 = sub_10000954C(v3 + 2, v35);
    v52 = &v49;
    v38 = *(v35 - 8);
    v39 = __chkstk_darwin(v37);
    v41 = &v49 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v41, v39);
    v42 = (*(v36 + 48))(v35, v36);
    (*(v38 + 8))(v41, v35);
    if (v42)
    {
      v43 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      if (*&v42[v43])
      {

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v44 = v54;
LABEL_20:
        v54 = v44;
        sub_10010FC20(&qword_1011AD040);
        v45 = String.init<A>(describing:)();
        v15 = sub_100010678(v45, v46, &v55);

        *(v31 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v29, v30, "    Cannot build itemProvider with intent=%{public}s)\n    and player=%{public}s)", v31, 0x16u);
        swift_arrayDestroy();

LABEL_21:

        sub_100AC0378();
        swift_allocError();
        *v47 = 0;
        *(v47 + 8) = 4;
        swift_willThrow();
        return v15;
      }
    }

    v44 = 0;
    goto LABEL_20;
  }

  v27 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v26[v27])
  {

    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v53)
  {
    goto LABEL_12;
  }

  a2 = v52;
  v7 = v50;
LABEL_2:
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, static Logger.groupActivities);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v52 = a2;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Building GroupActivity item provider", v14, 2u);
    a2 = v52;
  }

  v15 = [objc_allocWithZone(NSItemProvider) init];
  sub_1000089F8(a2, v10, &qword_1011AF0C0);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  sub_100AC03CC(v10, v17 + v16);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_100053024(&qword_1011AF0B0, type metadata accessor for GroupActivitiesManager.Activity);
  v18 = a1;

  NSItemProvider.registerGroupActivity<A>(preparationHandler:)();

  return v15;
}

uint64_t sub_100AB0E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_10010FC20(&qword_1011AF0C0);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100AB0EF0, 0, 0);
}

uint64_t sub_100AB0EF0()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = sub_100AB1084;

    return sub_100AC96C4(v2);
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
    v6[1] = sub_100AB11AC;
    v8 = *(v0 + 80);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001CLL, 0x8000000100E628E0, sub_100AC09F8, v5, v7);
  }
}

uint64_t sub_100AB1084(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_100AB14EC;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_100AB12F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100AB11AC()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100AB17B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100AB12F0()
{
  v1 = v0[20];
  v2 = v0[13];
  sub_1000089F8(v0[12], v0[14], &qword_1011AF0C0);
  swift_beginAccess();
  sub_100008FE4(v2 + 16, (v0 + 2));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_100AB13D8;
  v5 = v0[20];
  v6 = v0[14];
  v7 = v0[10];

  return sub_100AAACE0(v7, v5, v6, (v0 + 2));
}

uint64_t sub_100AB13D8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100AB1708;
  }

  else
  {
    v2 = sub_100AB1590;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AB14EC()
{
  v0[23] = v0[16];
  v1 = v0[11];
  type metadata accessor for MainActor();
  v2 = v1;
  v0[24] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AB1604, v4, v3);
}

uint64_t sub_100AB1590()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100AB1604()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);

  sub_100AB1820(v1, v2);

  return _swift_task_switch(sub_100AB168C, 0, 0);
}

uint64_t sub_100AB168C()
{
  v1 = *(v0 + 88);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100AB1708()
{
  *(v0 + 184) = *(v0 + 176);
  v1 = *(v0 + 88);
  type metadata accessor for MainActor();
  v2 = v1;
  *(v0 + 192) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AB1604, v4, v3);
}

uint64_t sub_100AB17B4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100AB1820(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v24[0] = a1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640);
  if (swift_dynamicCast())
  {
    v5 = *&v28[0];
    v6 = BYTE8(v28[0]);
    swift_beginAccess();
    v7 = v2[5];
    v8 = v2[6];
    v9 = sub_10000954C(v2 + 2, v7);
    v10 = *(v7 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v13, v11);
    v14 = (*(v8 + 48))(v7, v8);
    (*(v10 + 8))(v13, v7);
    if (v14)
    {
      v15 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      v16 = *&v14[v15];
    }

    else
    {
      v16 = 0;
    }

    v17 = a2;

    sub_100AC2940(v5, v6);
    sub_100AC2FFC(a2, v3, v16, v5, v6, v24);
    if (v26)
    {
      v28[0] = v24[0];
      v28[1] = v24[1];
      v28[2] = v24[2];
      v29 = v25;
      v30 = v26;
      v31 = v27;
      sub_100008FE4(v3 + 16, v21);
      v18 = v22;
      v19 = v23;
      sub_10000954C(v21, v22);
      (*(v19 + 32))(v28, v18, v19);
      sub_1000095E8(v24, &qword_1011A9570);

      sub_100AC0A58(v5, v6);
      sub_10000959C(v21);
    }

    else
    {

      sub_100AC0A58(v5, v6);
    }
  }
}

uint64_t sub_100AB1AF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = a3;
  v28 = a4;
  v6 = sub_10010FC20(&unk_1011AF990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_10010FC20(&qword_1011AF0C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v27 - v14;
  v16 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1000089F8(a2, v15, &qword_1011AF0C0);
  (*(v7 + 16))(v10, a1, v6);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v7 + 80) + v21 + 8) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_100AC03CC(v15, v23 + v20);
  *(v23 + v21) = v27;
  (*(v7 + 32))(v23 + v22, v10, v6);
  v24 = v28;
  *(v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v25 = v24;

  sub_100969440(0, 0, v18, &unk_100EFB9A0, v23);
}

uint64_t sub_100AB1DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_10010FC20(&unk_1011AF990);
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v7[17] = *(v9 + 64);
  v7[18] = swift_task_alloc();
  v10 = *(sub_10010FC20(&qword_1011AF0C0) - 8);
  v7[19] = v10;
  v7[20] = *(v10 + 64);
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_100AB1F14, 0, 0);
}

uint64_t sub_100AB1F14()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[15];
  v7 = v0[13];
  v23 = v0[12];
  sub_1000089F8(v0[11], v1, &qword_1011AF0C0);
  (*(v5 + 16))(v3, v7, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(v5 + 80) + v9 + 8) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[22] = v11;
  sub_100AC03CC(v1, v11 + v8);
  *(v11 + v9) = v23;
  (*(v5 + 32))(v11 + v10, v3, v6);
  v12 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[6] = UIScreen.Dimensions.size.getter;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10006BD7C;
  v0[5] = &unk_1010DE990;
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
    sub_10000954C(v16 + 2, v17);
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
    v22[1] = sub_100AB2270;

    return sub_100AC9D84(v14, sub_100AC0C44, v11, v21);
  }

  return result;
}

uint64_t sub_100AB2270()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_100AB2410;
  }

  else
  {

    v3 = sub_100AB2394;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100AB2394()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100AB2410()
{

  type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AB24B4, v2, v1);
}

uint64_t sub_100AB24B4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);

  sub_100AB1820(v1, v2);

  return _swift_task_switch(sub_100AB2538, 0, 0);
}

uint64_t sub_100AB2538()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100AB25C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v6 = sub_10010FC20(&unk_1011AF990);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v28 = &v27 - v8;
  v10 = sub_10010FC20(&qword_1011AF0C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v27 - v13;
  v15 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1000089F8(a2, v14, &qword_1011AF0C0);
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
  sub_100AC03CC(v14, &v24[v21]);
  *&v24[v22] = v30;
  (*(v7 + 32))(&v24[v23], v28, v20);
  v25 = a1;

  sub_100A5932C(0, 0, v17, &unk_100EFB9B0, v24);
}

uint64_t sub_100AB2894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  sub_10010FC20(&qword_1011AF0C0);
  v7[14] = swift_task_alloc();
  type metadata accessor for GroupActivitiesManager.Activity(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_100AB296C, 0, 0);
}

uint64_t sub_100AB296C()
{
  v1 = v0[12];
  v2 = v0[10];
  sub_1000089F8(v0[11], v0[14], &qword_1011AF0C0);
  swift_beginAccess();
  sub_100008FE4(v1 + 16, (v0 + 2));
  v3 = v2;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100AB2A54;
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[10];

  return sub_100AAACE0(v5, v7, v6, (v0 + 2));
}

uint64_t sub_100AB2A54()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100AB2C48;
  }

  else
  {
    v2 = sub_100AB2B68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AB2B68()
{
  v1 = v0[16];
  sub_100ABFB10(v1, v0[15], type metadata accessor for GroupActivitiesManager.Activity);
  sub_10010FC20(&unk_1011AF990);
  CheckedContinuation.resume(returning:)();
  sub_100ABFC7C(v1, type metadata accessor for GroupActivitiesManager.Activity);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100AB2C48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100AB2CC0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for GroupActivityActivationResult();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100AB2DF8, 0, 0);
}

uint64_t sub_100AB2DF8()
{
  v26 = v0;
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 144) = sub_1000060E4(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
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
  static Published.subscript.getter();

  if (*(v0 + 49))
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136446210;
      *(v0 + 40) = 1;
      *(v0 + 48) = 4;
      v9 = String.init<A>(describing:)();
      v11 = sub_100010678(v9, v10, &v25);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Prepare error=%{public}s", v7, 0xCu);
      sub_10000959C(v8);
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
  sub_1000095E8(v15, &qword_1011AF0C8);
  swift_beginAccess();
  sub_100008FE4(v17 + 16, v15);
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  v21 = sub_100053024(&qword_1011AF0B0, type metadata accessor for GroupActivitiesManager.Activity);
  *v20 = v0;
  v20[1] = sub_100AB3200;
  v22 = *(v0 + 112);
  v23 = *(v0 + 120);
  v24 = *(v0 + 64);

  return GroupActivity.prepareForActivation(options:)(v22, v24, v23, v21);
}

uint64_t sub_100AB3200()
{

  return _swift_task_switch(sub_100AB32FC, 0, 0);
}

uint64_t sub_100AB32FC()
{
  v38 = v0;
  v1 = *(*(v0 + 88) + 16);
  v1(*(v0 + 104), *(v0 + 112), *(v0 + 80));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
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
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v5, v8);
    v14 = v13;
    v15 = sub_100010678(v10, v12, &v37);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "User choice=%{public}s", v9, 0xCu);
    sub_10000959C(v35);
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
  v21 = static GroupActivityActivationResult.== infix(_:_:)();
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
    static Published.subscript.getter();

    v26 = *(v0 + 50);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 51) = 1;

    static Published.subscript.setter();
    sub_100AAE4AC(v26);
    v14(v24, v34);
    sub_100ABFB10(v22, v25, type metadata accessor for GroupActivitiesManager.Activity);
    (*(v23 + 56))(v25, 0, 4, v36);
  }

  else
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    v20(v27, enum case for GroupActivityActivationResult.activationDisabled(_:), v28);
    v30 = static GroupActivityActivationResult.== infix(_:_:)();
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

  sub_100ABFC7C(v22, type metadata accessor for GroupActivitiesManager.Activity);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100AB36E8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_10010FC20(&qword_1011AA2D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Signpost();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, static Logger.groupActivities);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "beginMeasuringInitiationTime", v15, 2u);
  }

  if (qword_1011A7170 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.sharePlay;

  Signpost.init(name:object:log:)("InitiationToFirstAudioFrame", 27, 2, v16, v11);
  Signpost.begin(dso:_:_:)(&_mh_execute_header, "enableTelemetry=YES", 19, 2, _swiftEmptyArrayStorage);
  sub_100ABFB10(v11, v7, type metadata accessor for Signpost);
  (*(v9 + 56))(v7, 0, 1, v8);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  sub_10006B010(v7, v1 + v17, &qword_1011AA2D0);
  swift_endAccess();
  Date.init()();
  sub_100ABFC7C(v11, type metadata accessor for Signpost);
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  sub_10006B010(v4, v1 + v19, &qword_1011A9B20);
  return swift_endAccess();
}

uint64_t sub_100AB3AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v6[14] = v7;
  v6[15] = *(v7 + 64);
  v6[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[18] = v9;
  v6[19] = v8;

  return _swift_task_switch(sub_100AB3BA8, v9, v8);
}

uint64_t sub_100AB3BA8()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_100AB3F40;

    return sub_100AC96C4(v2);
  }

  else
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = v0[12];
    sub_100ABFB10(v0[13], v5, type metadata accessor for GroupActivitiesManager.Activity);
    v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v9 = swift_allocObject();
    v0[22] = v9;
    *(v9 + 16) = v7;
    sub_100ABFAA8(v5, v9 + v8, type metadata accessor for GroupActivitiesManager.Activity);
    v10 = objc_allocWithZone(ICLiveLinkIdentity);
    v0[6] = UIScreen.Dimensions.size.getter;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10006BD7C;
    v0[5] = &unk_1010DEBE8;
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
      sub_10000954C(v13 + 2, v14);
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
      v19[1] = sub_100AB40C4;

      return sub_100AC9D84(v12, sub_100AC1594, v9, v18);
    }
  }

  return result;
}

uint64_t sub_100AB3F40(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = v4[18];
    v7 = v4[19];

    return _swift_task_switch(sub_100AB454C, v6, v7);
  }

  else
  {
    v4[28] = a1;
    v8 = swift_task_alloc();
    v4[29] = v8;
    *v8 = v5;
    v8[1] = sub_100AB43B4;
    v9 = v4[13];

    return sub_100AB468C(a1, v9);
  }
}

uint64_t sub_100AB40C4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_100AB4264;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_100AB41E8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100AB41E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100AB4264()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v2) = *(v0 + 240);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 241) = 0;

  static Published.subscript.setter();
  sub_100AAE4AC(v2);
  sub_100AB1820(v1, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100AB43B4()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_100AB44D4, v3, v2);
}

uint64_t sub_100AB44D4()
{
  v1 = v0[28];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100AB454C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(v0 + 242);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 243) = 0;

  static Published.subscript.setter();
  sub_100AAE4AC(v3);
  v4 = v2;
  sub_100AB1820(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100AB468C(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v3[34] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_100AB473C, 0, 0);
}

uint64_t sub_100AB473C()
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
      if (qword_1011A6B28 != -1)
      {
        swift_once();
      }

      v4 = qword_1011AF070;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 224;
      *(v0 + 24) = sub_100AB4AF8;
      v5 = swift_continuation_init();
      *(v0 + 136) = sub_10010FC20(&qword_1011AF988);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100988A84;
      *(v0 + 104) = &unk_1010DEC10;
      *(v0 + 112) = v5;
      [v2 getRepresentativeObjectWithProperties:v4 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = *(v0 + 352);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 353) = 0;

  static Published.subscript.setter();
  sub_100AAE4AC(v6);
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 248);
  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, static Logger.groupActivities);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    *(v0 + 216) = v12;
    v15 = v9;
    sub_10010FC20(&unk_1011AF1A0);
    v16 = String.init<A>(reflecting:)();
    v18 = sub_100010678(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Cannot activate intent=%{public}s", v13, 0xCu);
    sub_10000959C(v14);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100AB4AF8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_100AB5274;
  }

  else
  {
    v2 = sub_100AB4C08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AB4C08()
{
  v36 = v0;
  v1 = v0[28];
  v0[40] = v1;
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[41] = sub_1000060E4(v2, static Logger.groupActivities);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136446210;
    v0[30] = v1;
    v8 = v3;
    sub_10010FC20(&qword_1011AFAF8);
    v9 = String.init<A>(describing:)();
    v11 = sub_100010678(v9, v10, &v35);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Activity starting item=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  v12 = v0[37];
  v13 = v0[33];
  sub_100ABFB10(v0[32], v12, type metadata accessor for GroupActivitiesManager.Activity);
  sub_1000095E8(v12, &qword_1011AF0C8);
  swift_beginAccess();
  sub_100008FE4(v13 + 16, v12);
  if (v3)
  {
    v14 = [v3 innermostModelObject];
    type metadata accessor for CodableModelObjectIdentity();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
  }

  else
  {
    type metadata accessor for CodableModelObjectIdentity();
    swift_allocObject();
    swift_deallocPartialClassInstance();
    v15 = 0;
  }

  v17 = v0[37];
  v16 = v0[38];

  *(v17 + 56) = v15;
  type metadata accessor for CodableListeningProperties();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v17 + 48) = v18;
  v19 = v16;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[36];
    v22 = v0[37];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136446210;
    swift_beginAccess();
    sub_100ABFB10(v22, v23, type metadata accessor for GroupActivitiesManager.Activity);
    v26 = String.init<A>(describing:)();
    v28 = sub_100010678(v26, v27, &v35);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "🚀 Activiting activity=%{public}s", v24, 0xCu);
    sub_10000959C(v25);
  }

  v29 = v0[37];
  v30 = v0[35];
  swift_beginAccess();
  sub_100ABFB10(v29, v30, type metadata accessor for GroupActivitiesManager.Activity);
  v31 = swift_task_alloc();
  v0[42] = v31;
  v32 = sub_100053024(&qword_1011AF0B0, type metadata accessor for GroupActivitiesManager.Activity);
  *v31 = v0;
  v31[1] = sub_100AB507C;
  v33 = v0[34];

  return GroupActivity.activate()(v33, v32);
}

uint64_t sub_100AB507C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  sub_100ABFC7C(*(v2 + 280), type metadata accessor for GroupActivitiesManager.Activity);
  if (v0)
  {
    v3 = sub_100AB56A4;
  }

  else
  {
    v3 = sub_100AB51C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100AB51C4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);

  sub_100ABFC7C(v2, type metadata accessor for GroupActivitiesManager.Activity);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100AB5274()
{
  v31 = v0;
  swift_willThrow();

  v0[40] = 0;
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[41] = sub_1000060E4(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30[0] = v5;
    *v4 = 136446210;
    v0[30] = 0;
    sub_10010FC20(&qword_1011AFAF8);
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, v30);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activity starting item=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[37];
  v10 = v0[33];
  sub_100ABFB10(v0[32], v9, type metadata accessor for GroupActivitiesManager.Activity);
  sub_1000095E8(v9, &qword_1011AF0C8);
  swift_beginAccess();
  sub_100008FE4(v10 + 16, v9);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v12 = v0[37];
  v11 = v0[38];

  *(v12 + 56) = 0;
  type metadata accessor for CodableListeningProperties();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 48) = v13;
  v14 = v11;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[36];
    v17 = v0[37];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30[0] = v20;
    *v19 = 136446210;
    swift_beginAccess();
    sub_100ABFB10(v17, v18, type metadata accessor for GroupActivitiesManager.Activity);
    v21 = String.init<A>(describing:)();
    v23 = sub_100010678(v21, v22, v30);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "🚀 Activiting activity=%{public}s", v19, 0xCu);
    sub_10000959C(v20);
  }

  v24 = v0[37];
  v25 = v0[35];
  swift_beginAccess();
  sub_100ABFB10(v24, v25, type metadata accessor for GroupActivitiesManager.Activity);
  v26 = swift_task_alloc();
  v0[42] = v26;
  v27 = sub_100053024(&qword_1011AF0B0, type metadata accessor for GroupActivitiesManager.Activity);
  *v26 = v0;
  v26[1] = sub_100AB507C;
  v28 = v0[34];

  return GroupActivity.activate()(v28, v27);
}

uint64_t sub_100AB56A4()
{
  v20 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 320);
    v17 = *(v0 + 304);
    v18 = *(v0 + 296);
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v0 + 232) = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v8 = String.init<A>(describing:)();
    v10 = sub_100010678(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activation failed=%{public}s", v6, 0xCu);
    sub_10000959C(v7);

    v11 = v18;
  }

  else
  {
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 248);

    v11 = v13;
  }

  sub_100ABFC7C(v11, type metadata accessor for GroupActivitiesManager.Activity);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100AB58C8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_100ABFB10(a3, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupActivitiesManager.Activity);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a1;
  sub_100ABFAA8(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for GroupActivitiesManager.Activity);
  v15 = a1;

  sub_100969440(0, 0, v11, &unk_100EFBAF8, v14);
}

uint64_t sub_100AB5AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100008F30;

  return sub_100AB468C(a5, a6);
}

uint64_t sub_100AB5B58(uint64_t a1, unint64_t a2)
{
  v4._countAndFlagsBits = 0x616C506572616853;
  v4._object = 0xEC0000003D444979;
  if (String.hasPrefix(_:)(v4))
  {
    sub_100ABEA60(0xC0007uLL, a1, a2);
    a1 = static String._fromSubstring(_:)();
  }

  else
  {
  }

  return a1;
}

uint64_t GroupActivitiesManager.sessionForReactionAssociation()()
{
  if (GroupActivitiesManager.hasJoined.getter())
  {
  }

  else
  {
    return 0;
  }
}

void sub_100AB5C28()
{
  v1 = sub_10010FC20(&qword_1011AFAF0);
  __chkstk_darwin(v1);
  v75 = &v67 - v2;
  v3 = sub_10010FC20(&qword_1011AF1E8);
  v4 = __chkstk_darwin(v3 - 8);
  v74 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v67 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v67 - v10;
  __chkstk_darwin(v9);
  v13 = &v67 - v12;
  v14 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  v22 = &v67 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v67 - v24;
  v26 = __chkstk_darwin(v23);
  v29 = &v67 - v28;
  v77 = v0;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    v71 = v27;
    v72 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
    v76 = v26;

    GroupSession.activity.getter();

    v30 = *(v29 + 6);
    if (!v30)
    {
      v37 = v29;
LABEL_9:
      sub_100ABFC7C(v37, type metadata accessor for GroupActivitiesManager.Activity);
      return;
    }

    v69 = v18;
    v70 = v25;
    v73 = *(v30 + 16);
    sub_100ABFC7C(v29, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = v77 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v32 = *(v15 + 48);
    if (!v32(v31, 1, v76))
    {
      type metadata accessor for CodableListeningProperties();
      v33 = swift_allocObject();
      v34 = v73;
      *(v33 + 16) = v73;
      *(v31 + 48) = v33;
      v35 = v34;
    }

    swift_endAccess();
    if ((GroupActivitiesManager.hasJoined.getter() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1000089F8(v31, v13, &qword_1011AF1E8);
    v36 = v76;
    if (v32(v13, 1, v76) == 1)
    {

      sub_1000095E8(v13, &qword_1011AF1E8);
      return;
    }

    v38 = v70;
    sub_100ABFAA8(v13, v70, type metadata accessor for GroupActivitiesManager.Activity);
    sub_100ABFB10(v38, v11, type metadata accessor for GroupActivitiesManager.Activity);
    v39 = 1;
    v68 = *(v15 + 56);
    v68(v11, 0, 1, v36);
    if (*(v77 + v72))
    {

      GroupSession.activity.getter();

      v39 = 0;
    }

    v41 = v75;
    v40 = v76;
    v68(v8, v39, 1, v76);
    v42 = *(v1 + 48);
    sub_1000089F8(v11, v41, &qword_1011AF1E8);
    sub_1000089F8(v8, v41 + v42, &qword_1011AF1E8);
    if (v32(v41, 1, v40) == 1)
    {
      sub_1000095E8(v8, &qword_1011AF1E8);
      sub_1000095E8(v11, &qword_1011AF1E8);
      v43 = v32(v41 + v42, 1, v40);
      v44 = v70;
      if (v43 == 1)
      {
        sub_1000095E8(v41, &qword_1011AF1E8);
LABEL_15:
        sub_100ABFC7C(v44, type metadata accessor for GroupActivitiesManager.Activity);
LABEL_16:

        return;
      }
    }

    else
    {
      v45 = v74;
      sub_1000089F8(v41, v74, &qword_1011AF1E8);
      if (v32(v41 + v42, 1, v40) != 1)
      {
        sub_100ABFAA8(v41 + v42, v22, type metadata accessor for GroupActivitiesManager.Activity);
        v48 = *(v45 + 56);
        v44 = v70;
        if (v48)
        {
          v49 = *(v22 + 7);
          if (v49)
          {
            v50 = *(v49 + 16);
            v51 = *(v48 + 16);
            v52 = v50;
            v53 = [v51 identifiers];
            v54 = v41;
            v55 = [v52 identifiers];
            v56 = [v53 intersectsSet:v55];

            sub_100ABFC7C(v22, type metadata accessor for GroupActivitiesManager.Activity);
            sub_1000095E8(v8, &qword_1011AF1E8);
            sub_1000095E8(v11, &qword_1011AF1E8);
            sub_100ABFC7C(v74, type metadata accessor for GroupActivitiesManager.Activity);
            sub_1000095E8(v54, &qword_1011AF1E8);
            if (v56)
            {
              goto LABEL_15;
            }

            goto LABEL_27;
          }
        }

        sub_100ABFC7C(v22, type metadata accessor for GroupActivitiesManager.Activity);
        sub_1000095E8(v8, &qword_1011AF1E8);
        sub_1000095E8(v11, &qword_1011AF1E8);
        sub_100ABFC7C(v74, type metadata accessor for GroupActivitiesManager.Activity);
        v47 = v41;
        v46 = &qword_1011AF1E8;
LABEL_26:
        sub_1000095E8(v47, v46);
LABEL_27:
        if (*(v77 + v72))
        {
          sub_100ABFB10(v44, v71, type metadata accessor for GroupActivitiesManager.Activity);

          GroupSession.activity.setter();
        }

        if (qword_1011A6B30 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_1000060E4(v57, static Logger.groupActivities);
        v58 = v69;
        sub_100ABFB10(v44, v69, type metadata accessor for GroupActivitiesManager.Activity);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v78[0] = v62;
          *v61 = 136446210;
          sub_100ABFB10(v58, v71, type metadata accessor for GroupActivitiesManager.Activity);
          v63 = String.init<A>(describing:)();
          v65 = v64;
          sub_100ABFC7C(v58, type metadata accessor for GroupActivitiesManager.Activity);
          v66 = sub_100010678(v63, v65, v78);

          *(v61 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v59, v60, "Updating session activity=%{public}s", v61, 0xCu);
          sub_10000959C(v62);
        }

        else
        {

          sub_100ABFC7C(v58, type metadata accessor for GroupActivitiesManager.Activity);
        }

        v37 = v44;
        goto LABEL_9;
      }

      sub_1000095E8(v8, &qword_1011AF1E8);
      sub_1000095E8(v11, &qword_1011AF1E8);
      sub_100ABFC7C(v45, type metadata accessor for GroupActivitiesManager.Activity);
      v44 = v70;
    }

    v46 = &qword_1011AFAF0;
    v47 = v41;
    goto LABEL_26;
  }
}