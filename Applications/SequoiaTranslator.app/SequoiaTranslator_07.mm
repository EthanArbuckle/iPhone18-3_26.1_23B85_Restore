uint64_t sub_1000CCA04()
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000CCABC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1000CCB7C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_100162788(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000CCCC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

void *sub_1000CCD2C()
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_1000CCDD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1000CCE8C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000A2CC(0, &qword_1003AFB08);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void *sub_1000CD01C()
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_1000CD0C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_1000CD17C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000A2CC(0, &qword_1003AFB00);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

uint64_t sub_1000CD30C()
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000CD3C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1000CD484(uint64_t a1)
{
  swift_beginAccess();

  sub_1000D9EC8(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000CD5CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
}

uint64_t sub_1000CD634@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1000CD72C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1000CD824(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1000CD8F0(v4);
}

uint64_t sub_1000CD8F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1000DC250(&qword_1003AFAF8, &type metadata accessor for Date);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1000CDB90(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000CDC7C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000CDD1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar);
  return result;
}

uint64_t sub_1000CDE1C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000CDF20()
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000CDFCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices;
  if (sub_1000FAD14(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

__n128 sub_1000CE17C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v11.n128_u64[0] = v1;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16[0] = v4;
  *(v16 + 9) = *(v3 + 89);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = *(v3 + 3);
  v13 = v3[2];
  v14 = v6;
  sub_1000DA0C8(&v11, v10);
  v7 = v16[0];
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 89) = *(v16 + 9);
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000CE294(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v4 = v3[5];
  v18[4] = v3[4];
  v19[0] = v4;
  *(v19 + 9) = *(v3 + 89);
  v5 = v3[1];
  v18[0] = *v3;
  v18[1] = v5;
  v6 = v3[3];
  v18[2] = v3[2];
  v18[3] = v6;
  sub_1000DA0C8(v18, v16);
  v7 = sub_1000DA1D0(v18, a1);
  sub_100009EBC(v18, &qword_1003A93C8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v16[0] = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100009EBC(a1, &qword_1003A93C8);
  }

  else
  {
    v10 = v3[5];
    v16[4] = v3[4];
    v17[0] = v10;
    *(v17 + 9) = *(v3 + 89);
    v11 = v3[1];
    v16[0] = *v3;
    v16[1] = v11;
    v12 = v3[3];
    v16[2] = v3[2];
    v16[3] = v12;
    v13 = a1[1];
    *v3 = *a1;
    v3[1] = v13;
    *(v3 + 89) = *(a1 + 89);
    v14 = a1[5];
    v3[4] = a1[4];
    v3[5] = v14;
    v15 = a1[3];
    v3[2] = a1[2];
    v3[3] = v15;
    return sub_100009EBC(v16, &qword_1003A93C8);
  }
}

uint64_t sub_1000CE488(uint64_t a1, _OWORD *a2)
{
  v3 = a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v17 = *(v3 + 48);
  v18 = *v3;
  v16 = *(v3 + 56);
  v14 = *(v3 + 80);
  v15 = *(v3 + 64);
  v9 = *(v3 + 96);
  v10 = a2[5];
  *(v3 + 64) = a2[4];
  *(v3 + 80) = v10;
  *(v3 + 89) = *(a2 + 89);
  v11 = a2[1];
  *v3 = *a2;
  *(v3 + 16) = v11;
  v12 = a2[3];
  *(v3 + 32) = a2[2];
  *(v3 + 48) = v12;
  sub_1000DA0C8(a2, v19);
  return sub_1000DC178(v18, v4, v5, v6, v7, v8, v17, v16, v15, *(&v15 + 1), v14, *(&v14 + 1), v9);
}

void (*sub_1000CE57C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1000CE118();
  return sub_1000CE6B4;
}

void sub_1000CE6B4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

__n128 sub_1000CE748@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v10 = v1;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
  v14 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
  v15[0] = v3;
  *(v15 + 9) = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 89);
  v4 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
  v10 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v11 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
  v12 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
  v13 = v5;
  sub_1000DA0C8(&v10, &v9);
  v6 = v15[0];
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  *(a1 + 89) = *(v15 + 9);
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000CE84C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v16[0] = v3;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v5 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v6 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
  v16[1] = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
  v16[2] = v6;
  v16[0] = v5;
  v7 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
  v8 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
  v9 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
  *&v17[9] = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 89);
  v16[4] = v8;
  *v17 = v9;
  v16[3] = v7;
  v10 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  a2[1] = v10;
  v11 = v4[2];
  v12 = v4[3];
  *(a2 + 89) = *(v4 + 89);
  v13 = v4[5];
  a2[4] = v4[4];
  a2[5] = v13;
  a2[2] = v11;
  a2[3] = v12;
  return sub_1000DA0C8(v16, &v15);
}

uint64_t sub_1000CE954(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v4 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
  v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
  v6 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
  v19[3] = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
  v19[4] = v4;
  v20[0] = v5;
  *(v20 + 9) = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 89);
  v7 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
  v19[0] = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v19[1] = v7;
  v19[2] = v6;
  sub_1000DA0C8(v19, v17);
  v8 = sub_1000DA1D0(v19, a1);
  sub_100009EBC(v19, &qword_1003A93C8);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v17[0] = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100009EBC(a1, &qword_1003A93C8);
  }

  else
  {
    v11 = v3[5];
    v17[4] = v3[4];
    v18[0] = v11;
    *(v18 + 9) = *(v3 + 89);
    v12 = v3[1];
    v17[0] = *v3;
    v17[1] = v12;
    v13 = v3[3];
    v17[2] = v3[2];
    v17[3] = v13;
    v14 = a1[1];
    *v3 = *a1;
    v3[1] = v14;
    *(v3 + 89) = *(a1 + 89);
    v15 = a1[5];
    v3[4] = a1[4];
    v3[5] = v15;
    v16 = a1[3];
    v3[2] = a1[2];
    v3[3] = v16;
    return sub_100009EBC(v17, &qword_1003A93C8);
  }
}

uint64_t sub_1000CEB44(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v3 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 8);
  v17 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v4 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
  v5 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 24);
  v6 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
  v7 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 40);
  v8 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
  v9 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 56);
  v15 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
  v16 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
  v10 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 96);
  v11 = a2[5];
  v2[4] = a2[4];
  v2[5] = v11;
  *(v2 + 89) = *(a2 + 89);
  v12 = a2[1];
  *v2 = *a2;
  v2[1] = v12;
  v13 = a2[3];
  v2[2] = a2[2];
  v2[3] = v13;
  sub_1000DA0C8(a2, v18);
  return sub_1000DC178(v17, v3, v4, v5, v6, v7, v8, v9, v16, *(&v16 + 1), v15, *(&v15 + 1), v10);
}

void sub_1000CEC24()
{
  v1 = v0;
  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2728);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 8) = 1024;
    v36 = &type metadata for TranslateFeatures;
    v37 = sub_100009DF8();
    LOBYTE(v33) = 10;
    v6 = isFeatureEnabled(_:)();
    sub_100008664(&v33);
    if (v6)
    {
      v7 = MobileGestalt_get_current_device();
      if (!v7)
      {
LABEL_21:
        __break(1u);
        return;
      }

      v8 = v7;
      deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();

      if (deviceSupportsPersonalTranslator)
      {
        v10 = 1;
LABEL_11:
        *(v5 + 10) = v10;
        _os_log_impl(&_mh_execute_header, v3, v4, "initializeAudioAccessoryDeviceManager setting up AADeviceManager peerToPeerConversation:%{BOOL}d ptEnabled:%{BOOL}d", v5, 0xEu);

        goto LABEL_12;
      }

      if (_LTIsInternalInstall())
      {
        v11 = [objc_opt_self() standardUserDefaults];
        v12 = String._bridgeToObjectiveC()();
        v10 = [v11 BOOLForKey:v12];

        goto LABEL_11;
      }
    }

    v10 = 0;
    goto LABEL_11;
  }

LABEL_12:

  v36 = &type metadata for TranslateFeatures;
  v37 = sub_100009DF8();
  LOBYTE(v33) = 10;
  v13 = isFeatureEnabled(_:)();
  sub_100008664(&v33);
  if ((v13 & 1) == 0)
  {
    return;
  }

  v14 = MobileGestalt_get_current_device();
  if (!v14)
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  v16 = MobileGestalt_get_deviceSupportsPersonalTranslator();

  if ((v16 & 1) != 0 || _LTIsInternalInstall() && (v30 = [objc_opt_self() standardUserDefaults], v31 = String._bridgeToObjectiveC()(), v32 = objc_msgSend(v30, "BOOLForKey:", v31), v30, v31, v32))
  {
    sub_1000CD17C([objc_allocWithZone(AADeviceManager) init]);
    swift_getKeyPath();
    v33 = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v1 + 48);
    if (v17)
    {
      v18 = *(v1 + 32);
      v19 = v17;
      [v19 setDispatchQueue:v18];
      v20 = swift_allocObject();
      swift_weakInit();
      v37 = sub_1000DC104;
      v38 = v20;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_1000CF44C;
      v36 = &unk_100383488;
      v21 = _Block_copy(&v33);

      [v19 setDeviceFoundHandler:v21];
      _Block_release(v21);
      v22 = swift_allocObject();
      swift_weakInit();
      v37 = sub_1000DC10C;
      v38 = v22;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_1000CF44C;
      v36 = &unk_1003834B0;
      v23 = _Block_copy(&v33);

      [v19 setDeviceLostHandler:v23];
      _Block_release(v23);
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      v37 = sub_1000DC14C;
      v38 = v24;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100096948;
      v36 = &unk_100383500;
      v25 = _Block_copy(&v33);
      v26 = v19;

      [v26 setInterruptionHandler:v25];
      _Block_release(v25);
      v27 = swift_allocObject();
      swift_weakInit();
      v37 = sub_1000DC154;
      v38 = v27;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100096948;
      v36 = &unk_100383528;
      v28 = _Block_copy(&v33);

      [v26 setInvalidationHandler:v28];
      _Block_release(v28);
      v37 = sub_1000CF978;
      v38 = 0;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100227798;
      v36 = &unk_100383550;
      v29 = _Block_copy(&v33);
      [v26 activateWithCompletion:v29];
      _Block_release(v29);
    }
  }
}

uint64_t sub_1000CF278(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2728);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = v4;
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10028D78C(v11, v13, &v15);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Found Audio Accessory Device %s", v7, 0xCu);
      sub_100008664(v8);
    }

    sub_1000D35C0(v4, 0);
  }

  return result;
}

void sub_1000CF44C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000CF4B4(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2728);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = [v4 bluetoothAddress];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;
      }

      else
      {
        v13 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E55;
      }

      v14 = sub_10028D78C(v11, v13, &v15);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Lost Audio Accessory Device %s", v7, 0xCu);
      sub_100008664(v8);
    }

    sub_1000D35C0(v4, 1);
  }

  return result;
}

void sub_1000CF69C(void *a1)
{
  [a1 invalidate];
  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2728);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "AADeviceManager interruptionHandler called", v3, 2u);
  }
}

uint64_t sub_1000CF790()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2728);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "AADeviceManager invalidationHandler called", v5, 2u);
    }

    if (*(v1 + 48))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    sub_1000CEC24();
  }

  return result;
}

void sub_1000CF978(uint64_t a1)
{
  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2728);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      v7 = v6;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *(v4 + 4) = v6;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "AudioAccessoryDeviceManager activation with %@", v4, 0xCu);
    sub_100009EBC(v5, &unk_1003AECA0);
  }
}

void sub_1000CFAE8()
{
  v9[3] = &type metadata for TranslateFeatures;
  v9[4] = sub_100009DF8();
  LOBYTE(v9[0]) = 10;
  v1 = isFeatureEnabled(_:)();
  sub_100008664(v9);
  if (v1)
  {
    v2 = MobileGestalt_get_current_device();
    if (v2)
    {
      v3 = v2;
      deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();

      if ((deviceSupportsPersonalTranslator & 1) != 0 || _LTIsInternalInstall() && (v6 = [objc_opt_self() standardUserDefaults], v7 = String._bridgeToObjectiveC()(), v8 = objc_msgSend(v6, "BOOLForKey:", v7), v6, v7, v8))
      {
        swift_getKeyPath();
        v9[0] = v0;
        sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [*(v0 + 48) invalidate];
        if (*(v0 + 48))
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          v9[0] = v0;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1000CFCFC()
{
  v1 = v0;
  v28[0] = 0;
  v2 = type metadata accessor for Date();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v0[2] = &_swiftEmptySetSingleton;
  v0[3] = 0;
  v9 = sub_10000A2CC(0, &qword_1003A9C40);
  v28[1] = "_builtInAudioDevice";
  v28[2] = v9;
  static DispatchQoS.unspecified.getter();
  v33[0] = &_swiftEmptyArrayStorage;
  sub_1000DC250(&qword_1003AED78, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005AD4(&qword_1003AED80);
  sub_1000A5708(&qword_1003AED88, &qword_1003AED80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = objc_allocWithZone(AVAudioSession);
  v0[5] = [v10 init];
  v0[6] = 0;
  v0[7] = sub_100292388(&_swiftEmptyArrayStorage);
  v11 = v30;
  static Date.distantPast.getter();
  (*(v31 + 32))(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery, v11, v32);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper_minTimeIntervalDeviceDiscovery) = 0x3FB999999999999ALL;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected) = 0;
  v12 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) = 0;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices) = &_swiftEmptyArrayStorage;
  v13 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  *(v13 + 89) = 0u;
  v14 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  *(v14 + 89) = 0u;
  ObservationRegistrar.init()();
  v33[3] = &type metadata for TranslateFeatures;
  v33[4] = sub_100009DF8();
  LOBYTE(v33[0]) = 8;
  LOBYTE(v11) = isFeatureEnabled(_:)();
  sub_100008664(v33);
  if (v11)
  {
    v15 = v1[5];
    v33[0] = 0;
    if ([v15 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:12 error:v33])
    {
      v16 = v33[0];
    }

    else
    {
      v17 = v33[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v28[0] = 0;
    }

    v18 = objc_opt_self();
    v19 = [v18 defaultCenter];
    [v19 addObserver:v1 selector:"handleRouteChangeWithNotification:" name:AVAudioSessionRouteChangeNotification object:v1[5]];

    v20 = [v18 defaultCenter];
    [v20 addObserver:v1 selector:"handlePickableRouteChangeWithNotification:" name:AVAudioSessionPickableRouteChangeNotification object:v1[5]];

    v21 = [v18 defaultCenter];
    v22 = AVOutputDeviceDiscoverySessionAvailableOutputDevicesDidChangeNotification;
    swift_getKeyPath();
    v33[0] = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [v21 addObserver:v1 selector:"availableOutputDeviceChangedWithNotification:" name:v22 object:v1[3]];
  }

  sub_1000D0678();
  if (_LTIsInternalInstall())
  {
    v23 = [objc_opt_self() standardUserDefaults];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 BOOLForKey:v24];

    if (v25)
    {
      if (*(v1 + v12) == 1)
      {
        *(v1 + v12) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v28[-2] = v1;
        LOBYTE(v28[-1]) = 1;
        v33[0] = v1;
        sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  return v1;
}

id *sub_1000D043C()
{
  v8 = &type metadata for TranslateFeatures;
  v9 = sub_100009DF8();
  v7[0] = 8;
  v1 = isFeatureEnabled(_:)();
  sub_100008664(v7);
  if (v1)
  {
    sub_1000D07C0();
  }

  v2 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1000DC178(*(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 8), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 16), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 24), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 32), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 40), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 48), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 56), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 64), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 72), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 80), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 88), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 96));
  sub_1000DC178(*(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 8), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 24), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 40), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 56), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 72), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 88), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 96));
  v4 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1000D05CC()
{
  sub_1000D043C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceHelper()
{
  result = qword_1003AF6F0;
  if (!qword_1003AF6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D0698(uint64_t a1)
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(a1 + 24))
  {
    sub_1000CCE8C([objc_allocWithZone(AVOutputDeviceDiscoverySession) initWithDeviceFeatures:1]);
    sub_1000D2E94();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(a1 + 24);
  if (v2)
  {
    [v2 setDiscoveryMode:1];
  }

  sub_1000CEC24();
}

uint64_t sub_1000D07E0(unint64_t a1, ValueMetadata *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &type metadata for TranslateFeatures;
  v20 = sub_100009DF8();
  LOBYTE(aBlock[0]) = 8;
  v12 = isFeatureEnabled(_:)();
  result = sub_100008664(aBlock);
  if (v12)
  {
    v15[1] = *(v2 + 32);
    v20 = a1;
    v21 = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100096948;
    v19 = a2;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v17 = &_swiftEmptyArrayStorage;
    sub_1000DC250(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);
    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v16);
  }

  return result;
}

void sub_1000D0AA4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_1000CFAE8();
}

void sub_1000D0BD0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notification();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (v31)
  {
    sub_10000A2CC(0, &qword_1003AED38);
    if (swift_dynamicCast())
    {
      v25 = v34;
      sub_10000A2CC(0, &qword_1003A9C40);
      v26 = static OS_dispatch_queue.main.getter();
      v13 = swift_allocObject();
      swift_weakInit();
      (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
      v14 = *(v10 + 80);
      v27 = v3;
      v15 = (v14 + 32) & ~v14;
      v16 = swift_allocObject();
      v17 = v25;
      *(v16 + 16) = v13;
      *(v16 + 24) = v17;
      (*(v10 + 32))(v16 + v15, v12, v9);
      v32 = sub_1000DC020;
      v33 = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100096948;
      v31 = &unk_100383410;
      v18 = _Block_copy(aBlock);
      v19 = v17;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000DC250(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
      sub_100005AD4(&unk_1003A9C50);
      sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v20 = v26;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v18);

      (*(v27 + 8))(v5, v2);
      (*(v28 + 8))(v8, v29);
      return;
    }
  }

  else
  {
    sub_100009EBC(aBlock, &unk_1003AB9C0);
  }

  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000078E8(v21, qword_1003D2728);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Audio route changed but cannot find session", v24, 2u);
  }
}

void sub_1000D10D0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = [a2 currentRoute];
    v4 = Notification.userInfo.getter();
    if (v4)
    {
      v5 = v4;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      AnyHashable.init<A>(_:)();
      if (*(v5 + 16) && (v6 = sub_10028DF68(v67), (v7 & 1) != 0))
      {
        sub_10000A37C(*(v5 + 56) + 32 * v6, v68);
        sub_100078028(v67);

        if (swift_dynamicCast())
        {
          if (qword_1003A9208 != -1)
          {
            swift_once();
          }

          v8 = type metadata accessor for Logger();
          sub_1000078E8(v8, qword_1003D2728);
          v9 = v3;
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v10, v11))
          {
LABEL_37:

            if (v66 == 2)
            {
              v33 = [v9 outputs];
              sub_10000A2CC(0, &unk_1003AED40);
              v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v34 >> 62)
              {
LABEL_78:
                v64 = v34 & 0xFFFFFFFFFFFFFF8;
                v65 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v64 = v34 & 0xFFFFFFFFFFFFFF8;
                v65 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v35 = 0;
              while (v65 != v35)
              {
                if ((v34 & 0xC000000000000001) != 0)
                {
                  v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v35 >= *(v64 + 16))
                  {
                    goto LABEL_77;
                  }

                  v37 = *(v34 + 8 * v35 + 32);
                }

                v38 = v37;
                if (__OFADD__(v35, 1))
                {
                  __break(1u);
LABEL_77:
                  __break(1u);
                  goto LABEL_78;
                }

                v39 = [v37 portType];
                v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v42 = v41;
                if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
                {
                  goto LABEL_72;
                }

                v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v45)
                {
                  goto LABEL_67;
                }

                v39 = [v38 portType];
                v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v48 = v47;
                if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
                {
                  goto LABEL_72;
                }

                v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v50)
                {
                  goto LABEL_67;
                }

                v39 = [v38 portType];
                v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v53 = v52;
                if (v51 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
                {
LABEL_72:

                  goto LABEL_73;
                }

                v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v55)
                {
LABEL_67:

                  goto LABEL_74;
                }

                v56 = [v38 portType];
                v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v59 = v58;
                if (v57 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v59 == v60)
                {

LABEL_73:

                  goto LABEL_74;
                }

                v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                ++v35;
                if (v36)
                {
                  goto LABEL_73;
                }
              }

              v61 = Logger.logObject.getter();
              v62 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                *v63 = 0;
                _os_log_impl(&_mh_execute_header, v61, v62, "Route outputs do not contain headphones", v63, 2u);
              }
            }

            else if (v66 != 1)
            {
              if (v66)
              {
                goto LABEL_75;
              }

              sub_1002C2E20();
              if (v30)
              {
                v31 = v30;
                v32 = [v30 activationState];

                if (!v32)
                {
                  goto LABEL_75;
                }
              }
            }

LABEL_74:
            sub_1000D2E94();
LABEL_75:

LABEL_20:

            return;
          }

          v12 = swift_slowAlloc();
          v67[0] = swift_slowAlloc();
          *v12 = 136315650;
          if (v66 > 3)
          {
            if (v66 > 6)
            {
              if (v66 == 7)
              {
                v14 = 0x80000001002F3760;
                v13 = 0xD00000000000001ALL;
                goto LABEL_36;
              }

              if (v66 == 8)
              {
                v14 = 0x80000001002F3740;
                v13 = 0xD000000000000018;
                goto LABEL_36;
              }
            }

            else
            {
              if (v66 == 4)
              {
                v14 = 0xE800000000000000;
                v13 = 0x656469727265766FLL;
                goto LABEL_36;
              }

              if (v66 == 6)
              {
                v14 = 0xED00007065656C53;
                v13 = 0x6D6F7246656B6177;
                goto LABEL_36;
              }
            }
          }

          else
          {
            if (v66 > 1)
            {
              if (v66 == 2)
              {
                v14 = 0x80000001002F3780;
                v13 = 0xD000000000000014;
              }

              else
              {
                v14 = 0xEE0065676E616843;
                v13 = 0x79726F6765746163;
              }

              goto LABEL_36;
            }

            if (!v66)
            {
              v14 = 0xE700000000000000;
              v13 = 0x6E776F6E6B6E75;
              goto LABEL_36;
            }

            if (v66 == 1)
            {
              v13 = 0xD000000000000012;
              v14 = 0x80000001002F37A0;
LABEL_36:
              v19 = sub_10028D78C(v13, v14, v67);

              *(v12 + 4) = v19;
              *(v12 + 12) = 2080;
              v20 = [v9 inputs];
              sub_10000A2CC(0, &unk_1003AED40);
              static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v21 = Array.description.getter();
              v23 = v22;

              v24 = sub_10028D78C(v21, v23, v67);

              *(v12 + 14) = v24;
              *(v12 + 22) = 2080;
              v25 = [v9 outputs];
              static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v26 = Array.description.getter();
              v28 = v27;

              v29 = sub_10028D78C(v26, v28, v67);

              *(v12 + 24) = v29;
              _os_log_impl(&_mh_execute_header, v10, v11, "Audio route changed for reason: %s\nInputs: %s\nOutputs: %s", v12, 0x20u);
              swift_arrayDestroy();

              goto LABEL_37;
            }
          }

          v14 = 0xEE006E6F69747069;
          v13 = 0x7263736564206F6ELL;
          goto LABEL_36;
        }
      }

      else
      {

        sub_100078028(v67);
      }
    }

    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000078E8(v15, qword_1003D2728);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Audio route changed but cannot find reason", v18, 2u);
    }

    goto LABEL_20;
  }
}

uint64_t sub_1000D1B94(uint64_t a1, const char *a2)
{
  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000078E8(v3, qword_1003D2728);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  return sub_1000D2E94();
}

uint64_t sub_1000D1CA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v9);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000D1D94()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000D1EB0()
{
  swift_getKeyPath();
  *&v24 = v0;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *(v1 + 16);
      v7 = (v1 + 32 + 112 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);
          return result;
        }

        v9 = v7[5];
        v10 = *(v7 + 89);
        v11 = v7[3];
        v28 = v7[4];
        v12 = v7[1];
        v13 = v7[2];
        v24 = *v7;
        v25 = v12;
        *(v29 + 9) = v10;
        v29[0] = v9;
        v26 = v13;
        v27 = v11;
        if (v28 == 1 && (*(&v28 + 1) & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          break;
        }

        ++v8;
        v7 += 7;
        if (v2 == v8)
        {
          goto LABEL_15;
        }
      }

      sub_10001F5C4(&v24, &v23);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10028CBB8(0, *(v5 + 2) + 1, 1, v5);
        v5 = result;
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_10028CBB8((v14 > 1), v15 + 1, 1, v5);
        v5 = result;
      }

      v4 = v8 + 1;
      *(v5 + 2) = v15 + 1;
      v16 = &v5[112 * v15];
      v17 = v24;
      v18 = v26;
      *(v16 + 3) = v25;
      *(v16 + 4) = v18;
      *(v16 + 2) = v17;
      v19 = v27;
      v20 = v28;
      v21 = v29[0];
      *(v16 + 121) = *(v29 + 9);
      *(v16 + 6) = v20;
      *(v16 + 7) = v21;
      *(v16 + 5) = v19;
    }

    while (v2 - 1 != v8);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  v22 = *(v5 + 2);

  return v22 < 2;
}

void sub_1000D20D8(void *a1, char a2)
{
  v3 = a1;
  if ((a2 & 0x80) == 0)
  {
    if ((a2 & 0x40) != 0)
    {
      swift_getKeyPath();
      *&v117 = v2;
      sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v28 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
      v139 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
      *v140 = v28;
      *&v140[9] = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 89);
      v29 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
      v135 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
      v136 = v29;
      v31 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
      v30 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
    }

    else
    {
      if ((a2 & 1) == 0)
      {
        swift_getKeyPath();
        *&v117 = v2;
        sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v4 = (v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
        swift_beginAccess();
        v5 = v4[5];
        v131 = v4[4];
        v132[0] = v5;
        *(v132 + 9) = *(v4 + 89);
        v6 = v4[1];
        v127 = *v4;
        v128 = v6;
        v7 = v4[3];
        v129 = v4[2];
        v130 = v7;
        swift_getKeyPath();
        *&v110 = v2;
        sub_1000DA0C8(&v127, &v117);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v8 = (v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
        v9 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
        v133[4] = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
        v134[0] = v9;
        *(v134 + 9) = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 89);
        v10 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
        v133[0] = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
        v133[1] = v10;
        v11 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
        v133[2] = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
        v133[3] = v11;
        v12 = v127;
        v13 = v128;
        v125 = v129;
        v126 = v130;
        v14 = v131;
        v124[0] = v132[0];
        *(v124 + 9) = *(v132 + 9);
        if (*(&v127 + 1))
        {
          if (*(&v133[0] + 1))
          {
            v117 = v133[0];
            v15 = v8[4];
            v120 = v8[3];
            v121 = v15;
            v122[0] = v8[5];
            *(v122 + 9) = *(v8 + 89);
            v16 = v8[2];
            v118 = v8[1];
            v119 = v16;
            v17 = v15;
            v105 = *(&v131 + 1);
            if (v128 == v118)
            {
              sub_1000DA0C8(v133, &v110);
              sub_100009EBC(&v117, &qword_1003A93C8);
            }

            else
            {
              v91 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_1000DA0C8(v133, &v110);
              sub_100009EBC(&v117, &qword_1003A93C8);
              if ((v91 & 1) == 0)
              {
LABEL_56:
                v110 = v12;
                v111 = v13;
                v112 = v125;
                v113 = v126;
                v114 = v14;
                v115 = v105;
                v116[0] = v124[0];
                *(v116 + 9) = *(v124 + 9);
                v64 = &qword_1003A93C8;
                v65 = &v110;
                goto LABEL_57;
              }
            }

            if (v14 == v17)
            {
              v110 = v12;
              v111 = v13;
              v112 = v125;
              v113 = v126;
              v114 = v14;
              v115 = v105;
              v116[0] = v124[0];
              *(v116 + 9) = *(v124 + 9);
              sub_100009EBC(&v110, &qword_1003A93C8);
              if (v105 == *(&v17 + 1))
              {
                goto LABEL_70;
              }

LABEL_58:
              swift_getKeyPath();
              *&v117 = v2;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v92 = v4[5];
              v139 = v4[4];
              *v140 = v92;
              *&v140[9] = *(v4 + 89);
              v93 = v4[1];
              v135 = *v4;
              v136 = v93;
              v94 = v4[3];
              v137 = v4[2];
              v138 = v94;
              v3 = a1;
              if (!*(&v135 + 1))
              {
                goto LABEL_59;
              }

              goto LABEL_19;
            }

            goto LABEL_56;
          }
        }

        else if (!*(&v133[0] + 1))
        {
          v117 = v127;
          v118 = v128;
          v119 = v129;
          v120 = v130;
          v121 = v131;
          v122[0] = v132[0];
          *(v122 + 9) = *(v132 + 9);
          sub_1000DA0C8(v133, &v110);
          sub_100009EBC(&v117, &qword_1003A93C8);
LABEL_70:
          v145 = 0u;
          memset(v146, 0, 25);
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v3 = a1;
          goto LABEL_60;
        }

        v117 = v127;
        v118 = v128;
        v119 = v129;
        v120 = v130;
        v121 = v131;
        v122[0] = v132[0];
        *(v122 + 9) = *(v132 + 9);
        v122[2] = v133[0];
        v60 = v8[2];
        v122[3] = v8[1];
        v122[4] = v60;
        v61 = v8[3];
        v62 = v8[4];
        v63 = v8[5];
        *(v123 + 9) = *(v8 + 89);
        v122[6] = v62;
        v123[0] = v63;
        v122[5] = v61;
        sub_1000DA0C8(v133, &v110);
        v64 = &qword_1003AFAC8;
        v65 = &v117;
LABEL_57:
        sub_100009EBC(v65, v64);
        goto LABEL_58;
      }

      swift_getKeyPath();
      *&v117 = v2;
      sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = (v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
      swift_beginAccess();
      v33 = v32[5];
      v139 = v32[4];
      *v140 = v33;
      *&v140[9] = *(v32 + 89);
      v34 = v32[1];
      v135 = *v32;
      v136 = v34;
      v31 = v32[2];
      v30 = v32[3];
    }

    v137 = v31;
    v138 = v30;
    if (!*(&v135 + 1))
    {
LABEL_59:
      v145 = v139;
      v146[0] = *v140;
      *(v146 + 9) = *&v140[9];
      v141 = v135;
      v142 = v136;
      v143 = v137;
      v144 = v138;
LABEL_60:
      if (qword_1003A9208 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_1000078E8(v95, qword_1003D2728);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "Preferred persistent reset, audioDevice is not defined", v98, 2u);
      }

      *&v133[0] = 0;
      v99 = [v3 setPreferredPersistentInputUIDs:0 outputUIDs:0 error:v133];
      v100 = *&v133[0];
      if (v99 && (*&v133[0] = 0, v101 = v100, v102 = [v3 setPreferredInput:0 error:v133], v100 = *&v133[0], v102))
      {
        v103 = *&v133[0];
      }

      else
      {
        v104 = v100;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      sub_100009EBC(&v141, &qword_1003A93C8);
      return;
    }

LABEL_19:
    v35 = v136;
    v36 = v139;
    v37 = *&v140[8];
    v38 = *&v140[16];

    v39 = v37;
    v40 = v38;

    v41 = [v3 availableInputs];
    if (v41)
    {
      v42 = v41;
      sub_10000A2CC(0, &unk_1003AED40);
      v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_1000DA554(v35, *(&v35 + 1), v36, v43);

    v45 = v44;
    v109 = v3;
    v46 = [v3 availableOutputs];
    if (v46)
    {
      v47 = v46;
      sub_10000A2CC(0, &unk_1003AED40);
      v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v48 = 0;
    }

    v49 = sub_1000DA554(v35, *(&v35 + 1), v36, v48);

    if (v44)
    {
    }

    else
    {
      if (!v49)
      {
        v55 = 0;
        v50 = 0;
        v44 = 0;
        goto LABEL_35;
      }

      v45 = v49;
      v44 = v49;
    }

    sub_100005AD4(&unk_1003BA780);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1002D3160;
    v51 = [v45 UID];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    if (v49)
    {
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1002D3160;
      v56 = [v49 UID];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      *(v55 + 32) = v57;
      *(v55 + 40) = v59;
    }

    else
    {
      v55 = 0;
    }

LABEL_35:
    v107 = v49;
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_1000078E8(v66, qword_1003D2728);
    v67 = v44;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();

    v106 = v67;
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *&v133[0] = swift_slowAlloc();
      *v70 = 136315650;
      if (v50)
      {
        v71 = Array.debugDescription.getter();
        v73 = v72;
      }

      else
      {
        v71 = 0;
        v73 = 0xE000000000000000;
      }

      v74 = sub_10028D78C(v71, v73, v133);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      *&v127 = v55;
      sub_100005AD4(&qword_1003AFAE8);
      v75 = Optional.debugDescription.getter();
      v77 = sub_10028D78C(v75, v76, v133);

      *(v70 + 14) = v77;
      *(v70 + 22) = 2080;
      *&v127 = v44;
      sub_100005AD4(&qword_1003AFAF0);
      v78 = Optional.debugDescription.getter();
      v80 = sub_10028D78C(v78, v79, v133);

      *(v70 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v68, v69, "Preferred persistent input %s, and output %s with inputPort %s", v70, 0x20u);
      swift_arrayDestroy();
    }

    if (v50)
    {
      v81.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v82 = v109;
      if (v55)
      {
LABEL_44:
        v83.super.isa = Array._bridgeToObjectiveC()().super.isa;

        goto LABEL_47;
      }
    }

    else
    {
      v81.super.isa = 0;
      v82 = v109;
      if (v55)
      {
        goto LABEL_44;
      }
    }

    v83.super.isa = 0;
LABEL_47:
    *&v133[0] = 0;
    v84 = [v82 setPreferredPersistentInputUIDs:v81.super.isa outputUIDs:v83.super.isa error:v133];

    v85 = *&v133[0];
    if (v84)
    {
      *&v133[0] = 0;
      v86 = v85;
      v87 = [v82 setPreferredInput:v106 error:v133];
      v88 = *&v133[0];
      if (!v87)
      {
        v89 = v88;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      sub_100009EBC(&v135, &qword_1003A93C8);
    }

    else
    {
      v90 = *&v133[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100009EBC(&v135, &qword_1003A93C8);
    }

    return;
  }

  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000078E8(v18, qword_1003D2728);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Skip setting preferred input for farFieldInput mode. Resetting preferred input", v21, 2u);
  }

  *&v117 = 0;
  v22 = [v3 setPreferredPersistentInputUIDs:0 outputUIDs:0 error:&v117];
  v23 = v117;
  if (v22 && (*&v117 = 0, v24 = v23, v25 = [v3 setPreferredInput:0 error:&v117], v23 = v117, v25))
  {
    v26 = v117;
  }

  else
  {
    v27 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000D2E94()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000DBF44;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003833C0;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = &_swiftEmptyArrayStorage;
  sub_1000DC250(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void sub_1000D3168()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    v25[1] = v5;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
    swift_beginAccess();
    (*(v1 + 16))(v3, v5 + v6, v0);
    Date.timeIntervalSinceNow.getter();
    v8 = v7;
    (*(v1 + 8))(v3, v0);
    if (v8 <= -0.1)
    {
      static Date.now.getter();
      sub_1000CD8F0(v3);
      v13 = [objc_allocWithZone(AVOutputDeviceDiscoverySession) initWithDeviceFeatures:1];
      [v13 setDiscoveryMode:1];
      v14 = [v13 availableOutputDevices];
      sub_10000A2CC(0, &qword_1003AFAE0);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (qword_1003A9208 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000078E8(v16, qword_1003D2728);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25[0] = v20;
        *v19 = 136315138;
        v21 = Array.description.getter();
        v23 = sub_10028D78C(v21, v22, v25);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "availableOutputDevices: %s", v19, 0xCu);
        sub_100008664(v20);
      }

      sub_1000D4E24(v15);
    }

    else
    {
      if (qword_1003A9208 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000078E8(v9, qword_1003D2728);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Throttling device discovery", v12, 2u);
      }
    }
  }
}

uint64_t sub_1000D35C0(void *a1, char a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a2 & 1;
  *(v12 + 32) = a1;
  aBlock[4] = sub_1000DBF10;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100383398;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000DC250(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_1000D38D8(uint64_t a1, char a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000078E8(v7, qword_1003D2728);
    v8 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    v11 = &selRef_oneSelectedWithSender_;
    if (os_log_type_enabled(v9, v10))
    {
      v12 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v12 = 136316162;
      if (a2)
      {
        v13 = 1953722220;
      }

      else
      {
        v13 = 0x646E756F66;
      }

      if (a2)
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      v15 = sub_10028D78C(v13, v14, v48);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = [v8 identifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_10028D78C(v17, v19, v48);

      *(v12 + 14) = v20;
      *(v12 + 22) = 2080;
      v21 = [v8 name];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
      }

      else
      {
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v26 = sub_10028D78C(v23, v25, v48);

      *(v12 + 24) = v26;
      *(v12 + 32) = 2080;
      v11 = &selRef_oneSelectedWithSender_;
      v27 = [v8 bluetoothAddress];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v31 = 0xE300000000000000;
        v29 = 7104878;
      }

      v32 = sub_10028D78C(v29, v31, v48);

      *(v12 + 34) = v32;
      *(v12 + 42) = 2080;
      sub_1000DBF20([v8 personalTranslatorCapability]);
      v33 = String.init(cString:)();
      v35 = sub_10028D78C(v33, v34, v48);

      *(v12 + 44) = v35;
      _os_log_impl(&_mh_execute_header, v9, v10, "Updating available audio accessory devices: %s device identifier: %s name: %s bluetoothAddress: %s personalTranslator: %s", v12, 0x34u);
      swift_arrayDestroy();
    }

    v36 = [v8 v11[319]];
    if (a2)
    {
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        swift_getKeyPath();
        v48[0] = v6;
        sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v48[0] = v6;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        sub_1000CC7AC(0, v38, v40);
        swift_endAccess();
        v48[0] = v6;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        sub_1000D491C();
      }
    }

    else if (v36)
    {
      v41 = v36;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      swift_getKeyPath();
      v48[0] = v6;
      sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
      v45 = v8;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v48[0] = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *(v6 + 56);
      *(v6 + 56) = 0x8000000000000000;
      sub_100291650(v45, v42, v44, isUniquelyReferenced_nonNull_native);

      *(v6 + 56) = v47;
      swift_endAccess();
      v48[0] = v6;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      sub_1000D491C();
      sub_1000D3E8C();
    }
  }

  return result;
}

void sub_1000D3E8C()
{
  v1 = v0;
  if (_LTIsInternalInstall())
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];

    if (v4)
    {
      if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) == 1)
      {
        *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) = 1;
        return;
      }

      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v52 = v1;
      sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      goto LABEL_39;
    }
  }

  v5 = 0x6E776F6E6B6E75;
  swift_getKeyPath();
  v51 = v1;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v7 = v6[3];
  v54 = v6[2];
  v55 = v7;
  v8 = v6[5];
  v56 = v6[4];
  *v57 = v8;
  *&v57[9] = *(v6 + 89);
  v9 = v6[1];
  v52 = *v6;
  v53 = v9;
  if (*(&v52 + 1))
  {
    if (*(&v54 + 1))
    {
      v50 = v54;
      v49[0] = 45;
      v49[1] = 0xE100000000000000;
      sub_10001F278();

      v10 = *&v57[8];
      v11 = *&v57[16];
      v12 = StringProtocol.components<A>(separatedBy:)();
      if (v12[2])
      {
        v5 = v12[4];
        v13 = v12[5];
      }

      else
      {

        v13 = 0xE700000000000000;
        v5 = 0x6E776F6E6B6E75;
      }
    }

    else
    {

      v14 = *&v57[8];
      v15 = *&v57[16];
      v13 = 0xE700000000000000;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  swift_getKeyPath();
  *&v50 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v17 = *(v1 + 56);
  if (!*(v17 + 16))
  {
    goto LABEL_25;
  }

  v18 = sub_10028DD34(v5, v13);
  if ((v19 & 1) == 0)
  {

LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  v21 = v20;
  if ([v21 primaryPlacement] != 1 && objc_msgSend(v21, "secondaryPlacement") != 1)
  {
    v46 = [v21 placementMode];

    if (v46 == 2)
    {

      goto LABEL_18;
    }

LABEL_26:
    if (*(&v52 + 1))
    {
      v27 = *(&v53 + 1);
      v48 = v53;
    }

    else
    {
      v27 = 0xE300000000000000;
      v48 = 7104878;
    }

    swift_getKeyPath();
    v49[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = qword_1003A92B0;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000078E8(v29, qword_1003D2920);
    v30 = v20;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v47 = v32;
      v33 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v33 = 136316162;
      *(v33 + 4) = sub_10028D78C(0xD00000000000001ALL, 0x80000001002F3720, v49);
      *(v33 + 12) = 2080;
      v34 = sub_10028D78C(v48, v27, v49);

      *(v33 + 14) = v34;
      *(v33 + 22) = 2080;
      v35 = sub_10028D78C(v5, v13, v49);

      *(v33 + 24) = v35;
      *(v33 + 32) = 2080;
      sub_10000A2CC(0, &qword_1003AFAD0);
      v36 = Dictionary.Keys.description.getter();
      v38 = sub_10028D78C(v36, v37, v49);

      *(v33 + 34) = v38;
      *(v33 + 42) = 2080;
      v49[2] = v20;
      v39 = v30;
      sub_100005AD4(&qword_1003AFAD8);
      v40 = String.init<A>(describing:)();
      v42 = sub_10028D78C(v40, v41, v49);

      *(v33 + 44) = v42;
      _os_log_impl(&_mh_execute_header, v31, v47, "%s AirPods are not in ear .... ownerDevice: %s, btwAddress: %s, aaDevice: %s aaDevice: %s", v33, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v43 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar;
    if ((*(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) & 1) == 0)
    {

      sub_100009EBC(&v52, &qword_1003A93C8);
      *(v1 + v43) = 0;
      return;
    }

    v44 = swift_getKeyPath();
    __chkstk_darwin(v44);
    v49[0] = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_38;
  }

LABEL_18:
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000078E8(v22, qword_1003D2920);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Detected audio device is in ear", v25, 2u);
  }

  v26 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar;
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) == 1)
  {

    sub_100009EBC(&v52, &qword_1003A93C8);
    *(v1 + v26) = 1;
    return;
  }

  v45 = swift_getKeyPath();
  __chkstk_darwin(v45);
  v49[0] = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_38:
  sub_100009EBC(&v52, &qword_1003A93C8);
LABEL_39:
}

void sub_1000D4868(void **a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a2 + 48);
  v5 = *a1;
  *a1 = v4;
  v6 = v4;
}

uint64_t sub_1000D491C()
{
  swift_getKeyPath();
  v1 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
  *&v57 = v0;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = &_swiftEmptyArrayStorage;
    do
    {
      v7 = *(v2 + 16);
      v8 = (v2 + 32 + 112 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v7)
        {
          __break(1u);
          goto LABEL_28;
        }

        v10 = v8[5];
        v11 = *(v8 + 89);
        v12 = v8[3];
        v61 = v8[4];
        v13 = v8[1];
        v14 = v8[2];
        v57 = *v8;
        v58 = v13;
        *&v62[9] = v11;
        *v62 = v10;
        v59 = v14;
        v60 = v12;
        if (v61 == 1 && (*(&v61 + 1) & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          break;
        }

        ++v9;
        v8 += 7;
        if (v3 == v9)
        {
          goto LABEL_15;
        }
      }

      sub_10001F5C4(&v57, &v51);
      result = swift_isUniquelyReferenced_nonNull_native();
      v42 = v1;
      v43[0] = v6;
      if ((result & 1) == 0)
      {
        result = sub_1000C4CEC(0, v6[2] + 1, 1);
        v6 = v43[0];
      }

      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_1000C4CEC((v15 > 1), v16 + 1, 1);
        v6 = v43[0];
      }

      v5 = v9 + 1;
      v6[2] = v16 + 1;
      v17 = &v6[14 * v16];
      v18 = v57;
      v19 = v59;
      v17[3] = v58;
      v17[4] = v19;
      v17[2] = v18;
      v20 = v60;
      v21 = v61;
      v22 = *v62;
      *(v17 + 121) = *&v62[9];
      v17[6] = v21;
      v17[7] = v22;
      v17[5] = v20;
      v1 = v42;
    }

    while (v3 - 1 != v9);
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

LABEL_15:

  v23 = v6[2];
  if (v23)
  {
    v24 = v23 - 1;
    for (i = 4; ; i += 14)
    {
      v26 = *&v6[i];
      v27 = *&v6[i + 4];
      v52 = *&v6[i + 2];
      v53 = v27;
      v51 = v26;
      v28 = *&v6[i + 6];
      v29 = *&v6[i + 8];
      v30 = *&v6[i + 10];
      *&v56[9] = *(&v6[i + 11] + 1);
      v55 = v29;
      *v56 = v30;
      v54 = v28;
      v31 = v53;
      v48 = v29;
      v49 = v30;
      v50 = *&v56[16];
      v44 = v51;
      v45 = v52;
      v46 = v53;
      v47 = v28;
      sub_10001F5C4(&v51, v43);
      v32 = sub_1000DB018(v31, *(&v31 + 1));
      v61 = v48;
      *v62 = v49;
      *&v62[16] = v50;
      v57 = v44;
      v58 = v45;
      v59 = v46;
      v60 = v47;
      v62[24] = v32;
      sub_1000DA154(&v57);
      if (!v24)
      {
        break;
      }

      --v24;
    }
  }

  swift_getKeyPath();
  *&v57 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  result = swift_beginAccess();
  if (*(v33 + 1))
  {
    swift_getKeyPath();
    *&v57 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v33 + 1))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*(v33 + 8) == 1 && (*(v33 + 9) & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      swift_getKeyPath();
      *&v57 = v0;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v34 = v33[5];
      v61 = v33[4];
      *v62 = v34;
      *&v62[9] = *(v33 + 89);
      v35 = v33[1];
      v57 = *v33;
      v58 = v35;
      v36 = v33[3];
      v59 = v33[2];
      v60 = v36;
      if (*(&v57 + 1))
      {
        v37 = v59;
        v38 = v33[5];
        v55 = v33[4];
        *v56 = v38;
        *&v56[9] = *(v33 + 89);
        v39 = v33[1];
        v51 = *v33;
        v52 = v39;
        v40 = v33[3];
        v53 = v33[2];
        v54 = v40;
        sub_10001F5C4(&v51, v43);
        v41 = sub_1000DB018(v37, *(&v37 + 1));
        sub_100009EBC(&v57, &qword_1003A93C8);
        swift_getKeyPath();
        v43[0] = v0;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v43[0] = v0;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        if (*(v33 + 1))
        {
          *(v33 + 104) = v41;
          v43[0] = v0;
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();
        }

LABEL_30:
        __break(1u);
        return result;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t sub_1000D4E24(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  __chkstk_darwin(v13);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000DA484;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003832A8;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000DC250(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v14 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v13);
}

uint64_t sub_1000D5114(void *a1, unint64_t a2)
{
  v309 = type metadata accessor for UUID();
  v4 = *(v309 - 8);
  __chkstk_darwin(v309);
  v308 = v295 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9208 != -1)
  {
    goto LABEL_189;
  }

LABEL_2:
  v6 = type metadata accessor for Logger();
  v322 = sub_1000078E8(v6, qword_1003D2728);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updating available audio devices", v9, 2u);
  }

  v10 = a1[5];
  v11 = [v10 availableInputs];
  if (v11)
  {
    v12 = v11;
    sub_10000A2CC(0, &unk_1003AED40);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

  v14 = [v10 availableOutputs];
  if (v14)
  {
    v15 = v14;
    sub_10000A2CC(0, &unk_1003AED40);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  *&v341 = v13;
  sub_1000D9A34(v16);
  *&v319 = v341;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
  *&v341 = a1;
  v18 = sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *&v341 = a1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  a1[2] = &_swiftEmptySetSingleton;

  *&v341 = a1;
  KeyPath = swift_getKeyPath();
  v317 = v17;
  v20 = (a1 + v17);
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (a2 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v320 = a1;
  v316 = v18;
  if (!v21)
  {
    *&v303 = 0;
LABEL_112:
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&_mh_execute_header, v148, v149, "Did not discover headphones", v150, 2u);
    }

    sub_1000D86C4();
    goto LABEL_115;
  }

  *(&v321 + 1) = a2 & 0xC000000000000001;
  v297 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected;
  v298 = a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice;
  swift_beginAccess();
  v299 = 0;
  v22 = 0;
  *&v303 = 0;
  v315 = a2 & 0xFFFFFFFFFFFFFF8;
  v300 = AVAudioSessionPortBuiltInMic;
  v301 = (v4 + 8);
  *v302 = 0x80000001002F36E0;
  *&v23 = 136315138;
  v313 = v23;
  v296 = xmmword_1002D3160;
  v310 = xmmword_1002DBEF0;
  *&v302[8] = 0x8000100uLL;
  v318 = a2;
  *(&v319 + 1) = v21;
  do
  {
LABEL_14:
    v4 = v22;
    while (1)
    {
      if (*(&v321 + 1))
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v315 + 16))
        {
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          swift_once();
          goto LABEL_2;
        }

        v30 = *(a2 + 8 * v4 + 32);
      }

      v31 = v30;
      v29 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_177:
        v280 = v21;
        sub_1000DA0C8(&v353, &v341);

        sub_1000DA154(&v335);
LABEL_181:
        v288 = *(&v321 + 1);
        *&v341 = v321;
        *(&v341 + 1) = KeyPath;
        *&v342 = v322;
        v306 = v4;
        v307 = KeyPath;
        *(&v342 + 1) = v4;
        v343 = v319;
        *&v344 = v318;
        v289 = v280;
        *(&v344 + 1) = v280;
        *&v345 = *(&v321 + 1);
        v290 = v315;
        *(&v345 + 1) = v315;
        *&v346[0] = v314;
        v291 = v312;
        v292 = v313;
        *(&v346[0] + 1) = v313;
        *&v346[1] = v312;
        v293 = BYTE8(v311);
        BYTE8(v346[1]) = BYTE8(v311);
        *&v347 = v20;
        *(&v347 + 1) = v29;
        v348 = v330;
        v349 = v331;
        v294 = *(v31 + 73);
        v276 = v314;
        v270 = v319;
        *(v352 + 9) = v294;
        v351 = v333;
        v352[0] = v334[0];
        v350 = v332;
        sub_100009EBC(&v341, &qword_1003AFAC8);
        v274 = v288;
        v269 = v306;
        v267 = v307;
        v268 = v322;
        v273 = v289;
        v279 = v293;
        v278 = v291;
        v277 = v292;
        v272 = v318;
        v266 = v321;
        v271 = *(&v319 + 1);
        v275 = v290;
        goto LABEL_182;
      }

      v32 = [v30 deviceType];
      if (v32 == 1)
      {
        break;
      }

      if (v32 == 3)
      {
        if ([v31 deviceSubType])
        {
          KeyPath = v31;
          v20 = Logger.logObject.getter();
          v38 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v20, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = *&v302[8];
            *(v39 + 4) = [KeyPath deviceSubType];

            _os_log_impl(&_mh_execute_header, v20, v38, "Discovered builtIn non-standard device subType: %ld", v39, 0xCu);
            v21 = *(&v319 + 1);
          }

          else
          {
          }

          v29 = (v4 + 1);
          goto LABEL_16;
        }

        a2 = sub_1000DB960(v31);
        v52 = v51;
        *&v341 = a2;
        *(&v341 + 1) = v51;
        *&v367 = 46;
        *(&v367 + 1) = 0xE100000000000000;
        sub_10001F278();
        v53 = StringProtocol.components<A>(separatedBy:)();
        if (!v53[2])
        {
          goto LABEL_188;
        }

        *&v321 = v4 + 1;
        v54 = v53[4];
        v55 = v53[5];

        v56 = v319;

        v57 = sub_1000DA554(v54, v55, 3, v56);

        if (v57)
        {
          v58 = [objc_opt_self() currentDevice];
          v59 = [v58 name];

          v312 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v60;

          v62 = [v31 deviceID];
          if (v62)
          {
            v63 = v62;
            v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v314 = v65;
          }

          else
          {
            v64 = 0;
            v314 = 0;
          }

          v304 = v64;
          *(&v311 + 1) = v300;
          *&v311 = v57;
          v79 = v308;
          UUID.init()();
          v80 = UUID.uuidString.getter();
          v82 = v81;
          (*v301)(v79, v309);
          *v428 = v359[0];
          *&v428[3] = *(v359 + 3);
          *&v421[3] = *(v359 + 3);
          v306 = v82;
          v307 = v80;
          v425[0] = v80;
          v425[1] = v82;
          v425[2] = v312;
          v425[3] = v61;
          v425[4] = v64;
          v425[5] = v314;
          v425[6] = a2;
          v425[7] = v52;
          v426 = v310;
          v427 = 3;
          v429 = *(&v311 + 1);
          v430 = v311;
          v431 = 0;
          *v421 = v359[0];
          *&v367 = v80;
          *(&v367 + 1) = v82;
          *&v368 = v312;
          *(&v368 + 1) = v61;
          *&v369 = v64;
          *(&v369 + 1) = v314;
          *&v370 = a2;
          *(&v370 + 1) = v52;
          v371 = v310;
          LOBYTE(v372[0]) = 3;
          *(v372 + 1) = v359[0];
          DWORD1(v372[0]) = *(v359 + 3);
          *(&v372[0] + 1) = *(&v311 + 1);
          *&v372[1] = v311;
          BYTE8(v372[1]) = 0;
          sub_10001F5C4(v425, &v361);
          sub_1000DA154(&v367);
          *(&v303 + 1) = a2;
          swift_getKeyPath();
          v305 = v61;
          v83 = v320;
          *&v359[0] = v320;
          sub_10001F5C4(v425, &v361);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          *&v361 = v83;
          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v353 = v83[2];
          v83[2] = 0x8000000000000000;
          sub_1000D9B24(v425, isUniquelyReferenced_nonNull_native, &v361);
          v345 = v365;
          v346[0] = v366[0];
          *(v346 + 9) = *(v366 + 9);
          v341 = v361;
          v342 = v362;
          v343 = v363;
          v344 = v364;
          sub_100009EBC(&v341, &qword_1003A93C8);
          v83[2] = v353;
          swift_endAccess();
          *&v359[0] = v83;
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          *&v412 = v307;
          *(&v412 + 1) = v306;
          v413 = v312;
          v414 = v305;
          v415 = v304;
          v416 = v314;
          v417 = *(&v303 + 1);
          v418 = v52;
          v419 = v310;
          v420 = 3;
          v422 = *(&v311 + 1);
          v85 = v311;
          v423 = v311;
          v424 = 0;
          sub_10001F5C4(v425, &v361);
          sub_1000CE954(&v412);
          v20 = Logger.logObject.getter();
          KeyPath = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v20, KeyPath))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&_mh_execute_header, v20, KeyPath, "Discovered builtIn device", v86, 2u);
          }

          sub_1000DA154(v425);
          v21 = *(&v319 + 1);
          a1 = v320;
          a2 = v318;
          v29 = v321;
          goto LABEL_16;
        }

        KeyPath = v31;
        v20 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(v20, v71))
        {
          goto LABEL_15;
        }

LABEL_61:
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v341 = v78;
        *v77 = v313;
        v24 = [KeyPath debugDescription];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_10028D78C(v25, v27, &v341);

        *(v77 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v20, v71, "Found no port match for %s", v77, 0xCu);
        sub_100008664(v78);
        a1 = v320;

        goto LABEL_15;
      }

      if (v32 != 4)
      {
        v20 = Logger.logObject.getter();
        KeyPath = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v20, KeyPath))
        {
          v45 = a1;
          v46 = (v4 + 1);
          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = KeyPath;
          v49 = v20;
          v50 = "Discovered device that is not a headphone or builtIn";
          goto LABEL_38;
        }

LABEL_39:

        goto LABEL_16;
      }

      if ([v31 deviceSubType] != 2 && objc_msgSend(v31, "deviceSubType") != 3)
      {
        v20 = Logger.logObject.getter();
        KeyPath = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v20, KeyPath))
        {
          goto LABEL_39;
        }

        v45 = a1;
        v46 = (v4 + 1);
        v47 = swift_slowAlloc();
        *v47 = 0;
        v48 = KeyPath;
        v49 = v20;
        v50 = "Discovered wired non-headphone device";
LABEL_38:
        _os_log_impl(&_mh_execute_header, v49, v48, v50, v47, 2u);
        v29 = v46;
        a1 = v45;

        goto LABEL_39;
      }

      *&v321 = v4 + 1;
      v33 = [v31 deviceName];
      if (v33)
      {
        v34 = v33;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v37 = 0xEA00000000007365;
        v35 = 0x6E6F687064616548;
      }

      *&v341 = v35;
      *(&v341 + 1) = v37;
      *&v367 = 59;
      *(&v367 + 1) = 0xE100000000000000;
      sub_10001F278();
      v72 = StringProtocol.components<A>(separatedBy:)();

      if (!v72[2])
      {
        goto LABEL_186;
      }

      v74 = v72[4];
      v73 = v72[5];

      v75 = v319;

      v76 = sub_1000DA554(v74, v73, 4, v75);

      if (v76)
      {
        v90 = [v31 deviceID];
        if (v90)
        {
          v91 = v90;
          v314 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v312 = v92;
        }

        else
        {
          v314 = 0;
          v312 = 0;
        }

        v129 = sub_1000DB960(v31);
        *&v311 = v130;
        *(&v311 + 1) = v129;
        v307 = [v31 deviceSubType];
        v131 = [v76 portType];

        v132 = v76;
        v133 = v308;
        UUID.init()();
        v134 = UUID.uuidString.getter();
        v136 = v135;
        (*v301)(v133, v309);
        *v456 = v359[0];
        *&v456[3] = *(v359 + 3);
        *(&v353 + 3) = *(v359 + 3);
        v446[0] = v134;
        v446[1] = v136;
        v447 = v74;
        v448 = v73;
        v449 = v314;
        v450 = v312;
        v451 = *(&v311 + 1);
        v452 = v311;
        v453 = 4;
        v454 = v307;
        v455 = 1;
        v457 = v131;
        v458 = v132;
        v459 = 0;
        LODWORD(v353) = v359[0];
        *(&v303 + 1) = v136;
        v304 = v134;
        *&v367 = v134;
        *(&v367 + 1) = v136;
        *&v368 = v74;
        *(&v368 + 1) = v73;
        *&v369 = v314;
        *(&v369 + 1) = v312;
        *&v370 = *(&v311 + 1);
        *(&v370 + 1) = v311;
        *&v371 = 4;
        *(&v371 + 1) = v307;
        LOBYTE(v372[0]) = 1;
        *(v372 + 1) = v359[0];
        DWORD1(v372[0]) = *(v359 + 3);
        v305 = v131;
        v306 = v132;
        *(&v372[0] + 1) = v131;
        *&v372[1] = v132;
        BYTE8(v372[1]) = 0;
        sub_10001F5C4(v446, &v361);
        sub_1000DA154(&v367);
        swift_getKeyPath();
        *&v359[0] = a1;
        sub_10001F5C4(v446, &v361);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *&v361 = a1;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        sub_10021A3F8(&v361, v446);
        v345 = v365;
        v346[0] = v366[0];
        *(v346 + 9) = *(v366 + 9);
        v341 = v361;
        v342 = v362;
        v343 = v363;
        v344 = v364;
        swift_endAccess();
        sub_1000DA154(&v341);
        *&v359[0] = a1;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        v137 = v297;
        if (*(a1 + v297) == 1)
        {

          *(a1 + v137) = 1;
        }

        else
        {
          v138 = swift_getKeyPath();
          __chkstk_darwin(v138);
          v295[-2] = v320;
          LOBYTE(v295[-1]) = 1;
          *&v361 = v320;
          v139 = v303;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          *&v303 = v139;

          a1 = v320;
        }

        swift_getKeyPath();
        *&v361 = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (!*(v298 + 1))
        {
          *v442 = v353;
          *&v442[3] = *(&v353 + 3);
          *&v432 = v304;
          *(&v432 + 1) = *(&v303 + 1);
          v433 = v74;
          v434 = v73;
          v435 = v314;
          v436 = v312;
          v437 = *(&v311 + 1);
          v438 = v311;
          v439 = 4;
          v440 = v307;
          v441 = 1;
          v443 = v305;
          v444 = v306;
          v445 = 0;
          sub_10001F5C4(v446, &v361);
          sub_1000CE294(&v432);
          sub_10001F5C4(v446, &v361);
          v140 = Logger.logObject.getter();
          v141 = static os_log_type_t.info.getter();
          sub_1000DA154(v446);
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            *&v361 = v143;
            *v142 = v313;
            v144 = v447;
            v145 = v448;

            v146 = sub_10028D78C(v144, v145, &v361);
            a1 = v320;

            *(v142 + 4) = v146;
            _os_log_impl(&_mh_execute_header, v140, v141, "Set ownerAudioDevice to %s", v142, 0xCu);
            sub_100008664(v143);
          }
        }

        v20 = Logger.logObject.getter();
        KeyPath = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v20, KeyPath))
        {
          v147 = swift_slowAlloc();
          *v147 = 0;
          _os_log_impl(&_mh_execute_header, v20, KeyPath, "Discovered wired headphones", v147, 2u);
        }

        sub_1000DA154(v446);
        v299 = 1;
        v21 = *(&v319 + 1);
        v22 = v321;
        a2 = v318;
        if (v321 == *(&v319 + 1))
        {
          goto LABEL_115;
        }

        goto LABEL_14;
      }

      KeyPath = v31;
      v20 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v71))
      {
        goto LABEL_61;
      }

LABEL_15:

      a2 = v318;
      v21 = *(&v319 + 1);
      v29 = v321;
LABEL_16:
      ++v4;
      if (v29 == v21)
      {
        if (v299)
        {
          goto LABEL_115;
        }

        goto LABEL_112;
      }
    }

    if ([v31 deviceSubType] != 2 && objc_msgSend(v31, "deviceSubType") != 3)
    {
      v20 = Logger.logObject.getter();
      KeyPath = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v20, KeyPath))
      {
        goto LABEL_39;
      }

      v45 = a1;
      v46 = (v4 + 1);
      v47 = swift_slowAlloc();
      *v47 = 0;
      v48 = KeyPath;
      v49 = v20;
      v50 = "Discovered Bluetooth non-headphone device";
      goto LABEL_38;
    }

    *&v321 = v4 + 1;
    v40 = [v31 deviceName];
    if (v40)
    {
      v41 = v40;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
    }

    else
    {
      v42 = 0xD000000000000014;
      v44 = *v302;
    }

    *&v341 = v42;
    *(&v341 + 1) = v44;
    *&v367 = 59;
    *(&v367 + 1) = 0xE100000000000000;
    sub_10001F278();
    v66 = StringProtocol.components<A>(separatedBy:)();

    if (!v66[2])
    {
      goto LABEL_187;
    }

    v68 = v66[4];
    v67 = v66[5];

    v69 = v319;

    v70 = sub_1000DA554(v68, v67, 1, v69);

    if (!v70)
    {

      KeyPath = v31;
      v20 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v71))
      {
        goto LABEL_61;
      }

      goto LABEL_15;
    }

    v87 = MRAVOutputDeviceCreateFromAVOutputDevice();
    if (v87 && (v88 = v87, v89 = [v87 isAirpodsDevice], v88, (v89 & 1) != 0))
    {
      LODWORD(v314) = 0;
    }

    else
    {
      LODWORD(v314) = 2;
    }

    v93 = [v31 deviceID];
    if (v93)
    {
      v94 = v93;
      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v311 + 1) = v96;
      v312 = v95;
    }

    else
    {
      *(&v311 + 1) = 0;
      v312 = 0;
    }

    *&v311 = sub_1000DB960(v31);
    v307 = v97;
    v306 = [v70 portType];
    v98 = [v31 deviceID];
    if (v98)
    {
      v99 = v98;
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;
    }

    else
    {
      v100 = 0;
      v102 = 0;
    }

    LODWORD(v305) = sub_1000DB018(v100, v102);

    v103 = v70;
    v104 = v308;
    UUID.init()();
    v105 = UUID.uuidString.getter();
    v107 = v106;
    (*v301)(v104, v309);
    *v408 = v359[0];
    *&v408[3] = *(v359 + 3);
    *(&v335 + 3) = *(v359 + 3);
    v108 = v305 & 1;
    v399[0] = v105;
    v399[1] = v107;
    v400 = v68;
    v401 = v67;
    v402 = v312;
    v403 = *(&v311 + 1);
    v404 = v311;
    v405 = v307;
    v406 = v296;
    v407 = v314;
    v409 = v306;
    v410 = v103;
    v411 = v305 & 1;
    LODWORD(v335) = v359[0];
    *(&v303 + 1) = v107;
    v304 = v105;
    *&v367 = v105;
    *(&v367 + 1) = v107;
    *&v368 = v68;
    *(&v368 + 1) = v67;
    *&v369 = v312;
    *(&v369 + 1) = *(&v311 + 1);
    *&v370 = v311;
    *(&v370 + 1) = v307;
    v371 = v296;
    LOBYTE(v372[0]) = v314;
    DWORD1(v372[0]) = *(v359 + 3);
    *(v372 + 1) = v359[0];
    *(&v372[0] + 1) = v306;
    v305 = v103;
    *&v372[1] = v103;
    v299 = v108;
    BYTE8(v372[1]) = v108;
    sub_10001F5C4(v399, &v361);
    sub_1000DA154(&v367);
    swift_getKeyPath();
    *&v359[0] = a1;
    sub_10001F5C4(v399, &v361);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *&v361 = a1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v109 = swift_isUniquelyReferenced_nonNull_native();
    *&v353 = a1[2];
    a1[2] = 0x8000000000000000;
    sub_1000D9B24(v399, v109, &v361);
    v345 = v365;
    v346[0] = v366[0];
    *(v346 + 9) = *(v366 + 9);
    v341 = v361;
    v342 = v362;
    v343 = v363;
    v344 = v364;
    sub_100009EBC(&v341, &qword_1003A93C8);
    a1[2] = v353;
    swift_endAccess();
    *&v359[0] = a1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    if (*(a1 + v297) == 1)
    {
      *(a1 + v297) = 1;
    }

    else
    {
      v110 = swift_getKeyPath();
      v295[1] = v295;
      __chkstk_darwin(v110);
      v295[-2] = a1;
      LOBYTE(v295[-1]) = 1;
      *&v361 = a1;
      v111 = v303;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      *&v303 = v111;
    }

    swift_getKeyPath();
    *&v361 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v112 = v298;
    if (!*(v298 + 1))
    {
      *v395 = v335;
      *&v395[3] = *(&v335 + 3);
      *&v386 = v304;
      *(&v386 + 1) = *(&v303 + 1);
      v387 = v68;
      v388 = v67;
      v389 = v312;
      v390 = *(&v311 + 1);
      v391 = v311;
      v392 = v307;
      v393 = v296;
      v394 = v314;
      v396 = v306;
      v397 = v305;
      v398 = v299;
      sub_10001F5C4(v399, &v361);
      sub_1000CE294(&v386);
      sub_10001F5C4(v399, &v361);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.info.getter();
      sub_1000DA154(v399);
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *&v361 = v116;
        *v115 = v313;
        v117 = v400;
        v118 = v401;

        v119 = sub_10028D78C(v117, v118, &v361);

        *(v115 + 4) = v119;
        _os_log_impl(&_mh_execute_header, v113, v114, "Set ownerAudioDevice to %s", v115, 0xCu);
        sub_100008664(v116);
        a1 = v320;
      }

      v112 = v298;
    }

    swift_getKeyPath();
    *&v361 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v112 + 1))
    {

      goto LABEL_93;
    }

    swift_getKeyPath();
    *&v361 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v112 + 1))
    {
      goto LABEL_192;
    }

    v120 = v112[104];

    if (v120 & 1) == 0 && (v411)
    {
      sub_10001F5C4(v399, &v361);
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.info.getter();
      sub_1000DA154(v399);
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *&v361 = v124;
        *v123 = v313;
        v125 = v400;
        v126 = v401;

        v127 = sub_10028D78C(v125, v126, &v361);

        *(v123 + 4) = v127;
        a1 = v320;
        _os_log_impl(&_mh_execute_header, v121, v122, "Set ownerAudioDevice to %s as it supports personal translation", v123, 0xCu);
        sub_100008664(v124);
      }

      *v382 = v335;
      *&v382[3] = *(&v335 + 3);
      *&v373 = v304;
      *(&v373 + 1) = *(&v303 + 1);
      v374 = v68;
      v375 = v67;
      v376 = v312;
      v377 = *(&v311 + 1);
      v378 = v311;
      v379 = v307;
      v380 = v296;
      v381 = v314;
      v383 = v306;
      v384 = v305;
      v385 = v299;
      sub_10001F5C4(v399, &v361);
      sub_1000CE294(&v373);
    }

LABEL_93:
    v20 = Logger.logObject.getter();
    KeyPath = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, KeyPath))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&_mh_execute_header, v20, KeyPath, "Discovered Bluetooth headphones", v128, 2u);
    }

    sub_1000DA154(v399);
    v299 = 1;
    v21 = *(&v319 + 1);
    v22 = v321;
    a2 = v318;
  }

  while (v321 != *(&v319 + 1));
LABEL_115:
  swift_getKeyPath();
  *&v341 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *&v341 = sub_1000D8364(v151);

  v152 = v303;
  sub_1000D8EB0(&v341);
  if (!v152)
  {

    v153 = v341;
    swift_getKeyPath();
    *&v341 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    a2 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices;
    if (sub_1000FAD14(*(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices), v153))
    {
    }

    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&_mh_execute_header, v155, v156, "newAudioDevices device array has changed", v157, 2u);
    }

    sub_1000CDFCC(v153);
    swift_getKeyPath();
    *&v341 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v158 = a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice;
    swift_beginAccess();
    v159 = *(v158 + 1);
    v361 = *v158;
    v362 = v159;
    v160 = *(v158 + 5);
    v365 = *(v158 + 4);
    v366[0] = v160;
    *(v366 + 9) = *(v158 + 89);
    v161 = *(v158 + 2);
    v364 = *(v158 + 3);
    v363 = v161;
    if (*(&v361 + 1))
    {
      *v302 = v362;
      v303 = v364;
      swift_getKeyPath();
      *&v367 = a1;
      v359[4] = v365;
      v360[0] = v366[0];
      *(v360 + 9) = *(v366 + 9);
      v359[0] = v361;
      v359[1] = v362;
      v359[2] = v363;
      v359[3] = v364;
      sub_10001F5C4(v359, &v341);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v304 = a2;
      v162 = *(*(a1 + a2) + 16);

      *&v310 = v162;
      if (v162)
      {
        v4 = 0;
        v164 = 32;
        v309 = v163;
        while (1)
        {
          if (v4 >= *(v163 + 16))
          {
            goto LABEL_185;
          }

          v168 = *(v163 + v164 + 16);
          v167 = *(v163 + v164 + 32);
          v353 = *(v163 + v164);
          v354 = v168;
          v355 = v167;
          v169 = *(v163 + v164 + 89);
          v171 = *(v163 + v164 + 64);
          v170 = *(v163 + v164 + 80);
          v356 = *(v163 + v164 + 48);
          v357 = v171;
          v358[0] = v170;
          *(v358 + 9) = v169;
          v172 = *(&v353 + 1);
          *&v321 = *(&v354 + 1);
          *(&v321 + 1) = v354;
          v318 = v353;
          *&v319 = *(&v355 + 1);
          v311 = v356;
          *(&v319 + 1) = v171;
          v312 = v170;
          *&v313 = *(&v171 + 1);
          v314 = *(&v358[0] + 1);
          v315 = v355;
          v173 = (v169 >> 56);
          v174 = HIBYTE(v169);
          swift_getKeyPath();
          *&v335 = v320;
          sub_10001F5C4(&v353, &v341);
          sub_10001F5C4(&v353, &v341);
          sub_10001F5C4(&v353, &v341);
          v175 = v172;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v176 = *(v158 + 3);
          v177 = *(v158 + 5);
          v371 = *(v158 + 4);
          v372[0] = v177;
          *(v372 + 9) = *(v158 + 89);
          v178 = *(v158 + 1);
          v367 = *v158;
          v368 = v178;
          v180 = *(v158 + 1);
          v179 = *(v158 + 2);
          v370 = *(v158 + 3);
          v369 = v179;
          v325 = v176;
          v326 = v371;
          v327[0] = *(v158 + 5);
          *(v327 + 9) = *(v158 + 89);
          v181 = v367;
          v323 = v180;
          v324 = v179;
          if (!v172)
          {
            break;
          }

          a2 = v174;
          if (!*(&v367 + 1))
          {
            sub_1000DA0C8(&v367, &v341);
            sub_1000DA154(&v353);
            a1 = v173;
LABEL_124:
            sub_1000DA154(&v353);
            *&v341 = v318;
            *(&v341 + 1) = v175;
            *&v342 = *(&v321 + 1);
            *(&v342 + 1) = v321;
            *&v343 = v315;
            *(&v343 + 1) = v319;
            v344 = v311;
            *&v345 = *(&v319 + 1);
            *(&v345 + 1) = v313;
            *&v346[0] = v312;
            *(&v346[0] + 1) = v314;
            *&v346[1] = a1;
            BYTE8(v346[1]) = a2;
            v347 = v181;
            v348 = v323;
            v349 = v324;
            *(v352 + 9) = *(v327 + 9);
            v351 = v326;
            v352[0] = v327[0];
            v350 = v325;
            v165 = &v341;
            v166 = &qword_1003AFAC8;
LABEL_125:
            sub_100009EBC(v165, v166);
            goto LABEL_126;
          }

          LODWORD(v308) = v174;
          v341 = v367;
          v182 = *(v158 + 2);
          v342 = *(v158 + 1);
          v343 = v182;
          *(v346 + 9) = *(v158 + 89);
          v183 = *(v158 + 5);
          v345 = *(v158 + 4);
          v346[0] = v183;
          v344 = *(v158 + 3);
          v307 = *(&v345 + 1);
          v184 = v345;
          a1 = v173;
          if (v321 == __PAIR128__(v342, *(&v342 + 1)))
          {
            sub_1000DA0C8(&v367, &v335);
            sub_1000DA154(&v353);
            v185 = *(&v319 + 1);
            v186 = *(&v321 + 1);
            a2 = v321;
            if (*(&v319 + 1) != v184)
            {
              goto LABEL_138;
            }
          }

          else
          {
            v186 = *(&v321 + 1);
            a2 = v321;
            v187 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1000DA0C8(&v367, &v335);
            sub_1000DA154(&v353);
            v185 = *(&v319 + 1);
            if ((v187 & 1) == 0 || *(&v319 + 1) != v184)
            {
LABEL_138:
              sub_1000DA154(&v353);
              sub_100009EBC(&v341, &qword_1003A93C8);
              *&v335 = v318;
              *(&v335 + 1) = v175;
              *&v336 = v186;
              *(&v336 + 1) = a2;
              *&v337 = v315;
              *(&v337 + 1) = v319;
              v338 = v311;
              *&v339 = *(&v319 + 1);
              *(&v339 + 1) = v313;
              *&v340[0] = v312;
              *(&v340[0] + 1) = v314;
              *&v340[1] = a1;
              BYTE8(v340[1]) = v308;
              v165 = &v335;
              v166 = &qword_1003A93C8;
              goto LABEL_125;
            }
          }

          v188 = v185;
          sub_100009EBC(&v341, &qword_1003A93C8);
          *&v335 = v318;
          *(&v335 + 1) = v175;
          *&v336 = v186;
          *(&v336 + 1) = a2;
          *&v337 = v315;
          *(&v337 + 1) = v319;
          v189 = *(&v311 + 1);
          a2 = v311;
          v338 = v311;
          *&v339 = v188;
          v190 = a1;
          v191 = v312;
          a1 = v313;
          *(&v339 + 1) = v313;
          *&v340[0] = v312;
          v192 = v314;
          *(&v340[0] + 1) = v314;
          v305 = v175;
          v306 = v190;
          *&v340[1] = v190;
          v193 = v308;
          BYTE8(v340[1]) = v308;
          sub_100009EBC(&v335, &qword_1003A93C8);
          if (a1 == v307)
          {

            v202 = v191;
            v200 = v189;
            v199 = a2;
            v196 = *(&v321 + 1);
            v197 = v321;
            v198 = v315;
            v194 = v318;
            v195 = v305;
            v203 = v306;
            v201 = *(&v319 + 1);
            v204 = v193;
            goto LABEL_140;
          }

          sub_1000DA154(&v353);
LABEL_126:
          v163 = v309;
          ++v4;
          v164 += 112;
          if (v310 == v4)
          {
            goto LABEL_139;
          }
        }

        sub_1000DA0C8(&v367, &v341);
        sub_1000DA154(&v353);
        a2 = v174;
        a1 = v173;
        if (!*(&v181 + 1))
        {

          v341 = v318;
          v264 = a2;
          LODWORD(v308) = a2;
          v196 = *(&v321 + 1);
          *&v342 = *(&v321 + 1);
          *(&v342 + 1) = v321;
          v192 = v314;
          v198 = v315;
          *&v343 = v315;
          v265 = *(&v319 + 1);
          *(&v343 + 1) = v319;
          v200 = *(&v311 + 1);
          v199 = v311;
          v344 = v311;
          *&v345 = *(&v319 + 1);
          v306 = a1;
          v202 = v312;
          a1 = v313;
          *(&v345 + 1) = v313;
          *&v346[0] = v312;
          *(&v346[0] + 1) = v314;
          *&v346[1] = v306;
          BYTE8(v346[1]) = v264;
          sub_100009EBC(&v341, &qword_1003A93C8);
          v194 = v318;
          v204 = v308;
          v197 = v321;
          v201 = v265;
          v203 = v306;
          v195 = 0;
          goto LABEL_140;
        }

        goto LABEL_124;
      }

LABEL_139:

      v194 = 0;
      v195 = 0;
      v196 = 0;
      v197 = 0;
      v198 = 0;
      *&v319 = 0;
      v199 = 0;
      v200 = 0;
      v201 = 0;
      a1 = 0;
      v202 = 0;
      v192 = 0;
      v203 = 0;
      v204 = 0;
LABEL_140:
      *&v367 = v194;
      *(&v367 + 1) = v195;
      *&v368 = v196;
      *(&v368 + 1) = v197;
      *&v369 = v198;
      *(&v369 + 1) = v319;
      *&v370 = v199;
      *(&v370 + 1) = v200;
      *&v371 = v201;
      *(&v371 + 1) = a1;
      *&v372[0] = v202;
      *(&v372[0] + 1) = v192;
      *&v372[1] = v203;
      BYTE8(v372[1]) = v204;
      a1 = v320;
      sub_1000CE294(&v367);
      sub_1000DA0C8(&v361, &v341);

      v205 = Logger.logObject.getter();
      v206 = static os_log_type_t.default.getter();
      sub_100009EBC(&v361, &qword_1003A93C8);

      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        *(&v321 + 1) = swift_slowAlloc();
        *&v330 = *(&v321 + 1);
        *v207 = 136315650;
        v208 = *&v302[8];

        v209 = sub_10028D78C(*v302, v208, &v330);

        *(v207 + 4) = v209;
        *(v207 + 12) = 2080;
        swift_getKeyPath();
        *&v341 = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v210 = *(v158 + 1);
        v341 = *v158;
        v342 = v210;
        v211 = *(v158 + 5);
        v345 = *(v158 + 4);
        v346[0] = v211;
        *(v346 + 9) = *(v158 + 89);
        v212 = *(v158 + 3);
        v343 = *(v158 + 2);
        v344 = v212;
        v213 = *(&v342 + 1);
        v214 = v342;
        if (*(&v341 + 1))
        {
          v353 = v341;
          v354 = v342;
          v215 = *(v158 + 5);
          v357 = *(v158 + 4);
          v358[0] = v215;
          *(v358 + 9) = *(v158 + 89);
          v216 = *(v158 + 3);
          v355 = *(v158 + 2);
          v356 = v216;
          sub_1000DA0C8(&v341, &v335);

          sub_100009EBC(&v353, &qword_1003A93C8);
        }

        else
        {
          v353 = v341;
          v354 = v342;
          v218 = *(v158 + 5);
          v357 = *(v158 + 4);
          v358[0] = v218;
          *(v358 + 9) = *(v158 + 89);
          v219 = *(v158 + 3);
          v355 = *(v158 + 2);
          v356 = v219;
          sub_1000DA0C8(&v341, &v335);
          sub_100009EBC(&v353, &qword_1003A93C8);
          v213 = 0xE700000000000000;
          v214 = 0x6E776F6E6B6E75;
        }

        v220 = sub_10028D78C(v214, v213, &v330);

        *(v207 + 14) = v220;
        *(v207 + 22) = 2080;
        swift_getKeyPath();
        *&v353 = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v221 = *(v158 + 3);
        v355 = *(v158 + 2);
        v356 = v221;
        v222 = *(v158 + 5);
        v357 = *(v158 + 4);
        v358[0] = v222;
        *(v358 + 9) = *(v158 + 89);
        v223 = *(v158 + 1);
        v353 = *v158;
        v354 = v223;
        v225 = *(&v355 + 1);
        v224 = v355;
        if (!*(&v353 + 1))
        {
          v335 = v353;
          v336 = *(v158 + 1);
          v337 = v355;
          v227 = *(v158 + 4);
          v338 = *(v158 + 3);
          v339 = v227;
          v340[0] = *(v158 + 5);
          *(v340 + 9) = *(v158 + 89);
          sub_1000DA0C8(&v353, &v323);
          sub_100009EBC(&v335, &qword_1003A93C8);
          v217 = v304;
          goto LABEL_149;
        }

        v335 = v353;
        v336 = *(v158 + 1);
        v337 = v355;
        v226 = *(v158 + 4);
        v338 = *(v158 + 3);
        v339 = v226;
        v340[0] = *(v158 + 5);
        *(v340 + 9) = *(v158 + 89);
        sub_1000DA0C8(&v353, &v323);

        sub_100009EBC(&v335, &qword_1003A93C8);
        v217 = v304;
        if (!v225)
        {
LABEL_149:
          v224 = 0x6E776F6E6B6E75;

          v225 = 0xE700000000000000;
        }

        v228 = sub_10028D78C(v224, v225, &v330);

        *(v207 + 24) = v228;
        _os_log_impl(&_mh_execute_header, v205, v206, "ownerAudioDevice name: %s was updated to name: %s deviceID: %s", v207, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v217 = v304;
      }

      v230 = sub_1000CE57C(&v341);
      if (v229[1])
      {
        v231 = *(&v303 + 1);
        v229[6] = v303;
        v229[7] = v231;
      }

      (v230)(&v341, 0);
      swift_getKeyPath();
      *&v341 = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v158 + 1) || (swift_getKeyPath(), *&v341 = a1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected) != 1))
      {
        sub_100009EBC(&v361, &qword_1003A93C8);
      }

      else
      {
        v232 = Logger.logObject.getter();
        v233 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v232, v233))
        {
          v234 = swift_slowAlloc();
          *v234 = 0;
          _os_log_impl(&_mh_execute_header, v232, v233, "ownerAudioDevice is nil and is being set to the first available connected headset", v234, 2u);
        }

        swift_getKeyPath();
        *&v341 = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v235 = *(*(a1 + v217) + 16);
        v236 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice;

        v308 = v235;
        if (v235)
        {
          v238 = 0;
          v239 = (v320 + v236);
          v240 = 32;
          v309 = v237;
          while (v238 < *(v237 + 16))
          {
            v242 = *(v237 + v240 + 16);
            v241 = *(v237 + v240 + 32);
            v335 = *(v237 + v240);
            v336 = v242;
            v337 = v241;
            v243 = *(v237 + v240 + 89);
            v245 = *(v237 + v240 + 64);
            v244 = *(v237 + v240 + 80);
            v338 = *(v237 + v240 + 48);
            v339 = v245;
            v340[0] = v244;
            *(v340 + 9) = v243;
            KeyPath = *(&v335 + 1);
            v4 = *(&v336 + 1);
            v322 = v336;
            v319 = v337;
            v21 = *(&v338 + 1);
            v318 = v338;
            *&v321 = v335;
            *(&v321 + 1) = v245;
            v314 = v244;
            v315 = *(&v245 + 1);
            v312 = v243 >> 56;
            *&v313 = *(&v340[0] + 1);
            DWORD2(v311) = HIBYTE(v243);
            swift_getKeyPath();
            *&v323 = v320;
            sub_10001F5C4(&v335, &v341);
            sub_10001F5C4(&v335, &v341);
            sub_10001F5C4(&v335, &v341);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v246 = v239[3];
            v247 = v239[5];
            v357 = v239[4];
            v358[0] = v247;
            *(v358 + 9) = *(v239 + 89);
            v248 = v239[1];
            v353 = *v239;
            v354 = v248;
            v249 = v239[1];
            v250 = v239[3];
            v355 = v239[2];
            v356 = v250;
            v332 = v246;
            v333 = v357;
            v334[0] = v239[5];
            v31 = &v330;
            *(v334 + 9) = *(v239 + 89);
            v29 = *(&v353 + 1);
            v20 = v353;
            v330 = v249;
            v331 = v355;
            if (KeyPath)
            {
              if (!*(&v353 + 1))
              {
                goto LABEL_177;
              }

              *&v311 = v21;
              v341 = v353;
              v251 = v239[2];
              v342 = v239[1];
              v343 = v251;
              *(v346 + 9) = *(v239 + 89);
              v252 = v239[5];
              v345 = v239[4];
              v346[0] = v252;
              v344 = v239[3];
              v253 = v345;
              v254 = v321;
              v306 = v4;
              v307 = KeyPath;
              if (__PAIR128__(v4, v322) == v342)
              {
                sub_1000DA0C8(&v353, &v323);
                sub_1000DA154(&v335);
              }

              else
              {
                v255 = _stringCompareWithSmolCheck(_:_:expecting:)();
                sub_1000DA0C8(&v353, &v323);
                sub_1000DA154(&v335);
                if ((v255 & 1) == 0)
                {
                  goto LABEL_178;
                }
              }

              if (*(&v321 + 1) != v253)
              {
LABEL_178:

                sub_100009EBC(&v341, &qword_1003A93C8);
                *&v323 = v254;
                *(&v323 + 1) = KeyPath;
                *&v324 = v322;
                *(&v324 + 1) = v4;
                v281 = *(&v319 + 1);
                v325 = v319;
                v282 = v318;
                v283 = v311;
                *&v326 = v318;
                *(&v326 + 1) = v311;
                v276 = v314;
                v284 = v315;
                *&v327[0] = *(&v321 + 1);
                *(&v327[0] + 1) = v315;
                v285 = v312;
                v286 = v313;
                *&v327[1] = v314;
                *(&v327[1] + 1) = v313;
                v328 = v312;
                v287 = BYTE8(v311);
                v329 = BYTE8(v311);
                v268 = v322;
                sub_100009EBC(&v323, &qword_1003A93C8);
                v273 = v283;
                v270 = v319;
                v279 = v287;
                v278 = v285;
                v277 = v286;
                v272 = v282;
                v271 = v281;
                v269 = v306;
                v267 = v307;
                v275 = v284;
                a1 = v320;
                v274 = *(&v321 + 1);
                v266 = v321;
                goto LABEL_183;
              }

              sub_100009EBC(&v341, &qword_1003A93C8);
              *&v323 = v254;
              *(&v323 + 1) = KeyPath;
              *&v324 = v322;
              *(&v324 + 1) = v4;
              v325 = v319;
              *&v310 = *(&v253 + 1);
              v256 = v318;
              *&v326 = v318;
              *(&v326 + 1) = v311;
              v257 = v314;
              v258 = v315;
              *&v327[0] = *(&v321 + 1);
              *(&v327[0] + 1) = v315;
              v259 = v312;
              v260 = v313;
              *&v327[1] = v314;
              *(&v327[1] + 1) = v313;
              v328 = v312;
              v261 = BYTE8(v311);
              v329 = BYTE8(v311);
              sub_100009EBC(&v323, &qword_1003A93C8);
              if (v258 != v310)
              {

                v271 = *(&v319 + 1);
                a1 = v320;
                v274 = *(&v321 + 1);
                v266 = v321;
                v269 = v306;
                v267 = v307;
                v272 = v256;
                v275 = v258;
                v276 = v257;
                v277 = v260;
                v278 = v259;
                v279 = v261;
                v273 = v311;
                v270 = v319;
                v268 = v322;
                goto LABEL_183;
              }

              sub_1000DA154(&v335);
            }

            else
            {
              sub_1000DA0C8(&v353, &v341);
              sub_1000DA154(&v335);
              if (v29)
              {
                v280 = v21;

                goto LABEL_181;
              }

              sub_1000DA154(&v335);
              v341 = v321;
              *&v342 = v322;
              *(&v342 + 1) = v4;
              v343 = v319;
              *&v344 = v318;
              *(&v344 + 1) = v21;
              *&v345 = *(&v321 + 1);
              *(&v345 + 1) = v315;
              *&v346[0] = v314;
              *(&v346[0] + 1) = v313;
              *&v346[1] = v312;
              BYTE8(v346[1]) = BYTE8(v311);
              sub_100009EBC(&v341, &qword_1003A93C8);
            }

            ++v238;
            v240 += 112;
            v237 = v309;
            if (v308 == v238)
            {
              goto LABEL_174;
            }
          }

          __break(1u);
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

LABEL_174:

        v266 = 0;
        v267 = 0;
        v268 = 0;
        v269 = 0;
        v270 = 0;
        v271 = 0;
        v272 = 0;
        v273 = 0;
        v274 = 0;
        v275 = 0;
        v276 = 0;
        v277 = 0;
        v278 = 0;
        v279 = 0;
LABEL_182:
        a1 = v320;
LABEL_183:
        *&v341 = v266;
        *(&v341 + 1) = v267;
        *&v342 = v268;
        *(&v342 + 1) = v269;
        *&v343 = v270;
        *(&v343 + 1) = v271;
        *&v344 = v272;
        *(&v344 + 1) = v273;
        *&v345 = v274;
        *(&v345 + 1) = v275;
        *&v346[0] = v276;
        *(&v346[0] + 1) = v277;
        *&v346[1] = v278;
        BYTE8(v346[1]) = v279;
        sub_1000CE294(&v341);
        sub_100009EBC(&v361, &qword_1003A93C8);
      }
    }

    swift_getKeyPath();
    *&v359[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v263 = sub_1000D83F4(v262);

    return sub_1000CDFCC(v263);
  }

LABEL_193:

  __break(1u);
  return result;
}

char *sub_1000D8364(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1002BF814(*(a1 + 16), 0);
  v4 = sub_1001F3AFC(&v6, v3 + 32, v2, a1);
  sub_10000C1D0();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

char *sub_1000D83F4(char *a1)
{
  v2 = a1;
  v17 = a1;
  swift_getKeyPath();
  *&v20 = v1;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v4 = v3[1];
  v20 = *v3;
  v21 = v4;
  v5 = v3[5];
  v24 = v3[4];
  v25[0] = v5;
  *(v25 + 9) = *(v3 + 89);
  v6 = v3[3];
  v22 = v3[2];
  v23 = v6;
  v7 = v20;
  v8 = v21;
  *(v29 + 9) = *(v25 + 9);
  v28 = v24;
  v29[0] = v5;
  v26 = v22;
  v27 = v6;
  if (*(&v20 + 1))
  {
    v9 = *(v2 + 2);
    if (v9)
    {
      v10 = 0;
      for (i = v2 + 56; ; i += 14)
      {
        v12 = *(i - 1) == v21 && *i == *(&v21 + 1);
        if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        if (v9 == ++v10)
        {
          return v2;
        }
      }

      sub_1000DA0C8(&v20, v18);
      sub_1000D8614(v10, v16);
      sub_1000DA154(v16);
      v2 = v17;
      v13 = *(v17 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v13 >= *(v2 + 3) >> 1)
      {
        v2 = sub_10028CBB8(isUniquelyReferenced_nonNull_native, (v13 + 1), 1, v2);
        v17 = v2;
      }

      v18[4] = v28;
      v19[0] = v29[0];
      *(v19 + 9) = *(v29 + 9);
      v18[2] = v26;
      v18[3] = v27;
      v18[0] = v7;
      v18[1] = v8;
      sub_1002B5360(v13, v13, 1uLL, v18);
      sub_100009EBC(&v20, &qword_1003A93C8);
    }
  }

  return v2;
}

uint64_t sub_1000D8614@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000A3944(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 112 * a1);
    v9 = v8[7];
    v10 = v7 - 1;
    a2[4] = v8[6];
    a2[5] = v9;
    *(a2 + 89) = *(v8 + 121);
    v11 = v8[3];
    *a2 = v8[2];
    a2[1] = v11;
    v12 = v8[5];
    a2[2] = v8[4];
    a2[3] = v12;
    result = memmove(v8 + 2, v8 + 9, 112 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000D86C4()
{
  v1 = v0;
  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2728);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Clearing headset connection", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v9[0] = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected) = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar))
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    *&v9[0] = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) = 0;
  }

  memset(v9, 0, 105);
  return sub_1000CE294(v9);
}

uint64_t sub_1000D8984(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v17[0] = v4;
  *(v17 + 9) = *(a1 + 89);
  v5 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v5;
  v6 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v6;
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D2770);
  sub_10001F5C4(a1, v15);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  sub_1000DA154(a1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10028D78C(*(a1 + 16), *(a1 + 24), v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "setOwnerDevice: ownerAudioDevice set to %s", v10, 0xCu);
    sub_100008664(v11);
  }

  sub_10001F5C4(a1, v15);
  sub_1000CE294(v16);
  swift_getKeyPath();
  v15[0] = v2;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = sub_1000D83F4(v12);

  return sub_1000CDFCC(v13);
}

unint64_t sub_1000D8BAC()
{
  v1 = v0;
  swift_getKeyPath();
  *&v28[0] = v0;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v3 = v2[1];
  v28[0] = *v2;
  v4 = v2[3];
  v29 = v2[2];
  v30 = v4;
  v5 = v2[5];
  v31 = v2[4];
  v32[0] = v5;
  *(v32 + 9) = *(v2 + 89);
  v28[1] = v3;
  v6 = v29;
  if (!*(&v28[0] + 1))
  {
    v22 = *&v28[0];
    v23 = v2[1];
    v24 = v29;
LABEL_9:
    v19 = v2[4];
    v25 = v2[3];
    v26 = v19;
    v27[0] = v2[5];
    *(v27 + 9) = *(v2 + 89);
    sub_1000DA0C8(v28, v21);
    sub_100009EBC(&v22, &qword_1003A93C8);
LABEL_11:
    v18 = 0;
    v17 = 1;
    return v18 | (v17 << 32);
  }

  if (!*(&v29 + 1))
  {
    v22 = v28[0];
    v23 = v2[1];
    v24 = v29;
    goto LABEL_9;
  }

  v22 = v28[0];
  v23 = v2[1];
  v24 = v29;
  v7 = v2[4];
  v25 = v2[3];
  v26 = v7;
  v27[0] = v2[5];
  *(v27 + 9) = *(v2 + 89);
  sub_1000DA0C8(v28, v21);

  sub_100009EBC(&v22, &qword_1003A93C8);
  v21[0] = v6;
  sub_10001F278();
  v8 = StringProtocol.components<A>(separatedBy:)();

  if (!v8[2] || (v10 = v8[4], v9 = v8[5], , , swift_getKeyPath(), *&v21[0] = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v11 = *(v1 + 56), !*(v11 + 16)) || (, v12 = sub_10028DD34(v10, v9), v14 = v13, , (v14 & 1) == 0))
  {

    goto LABEL_11;
  }

  v15 = *(*(v11 + 56) + 8 * v12);

  v16 = [v15 productID];

  v17 = 0;
  v18 = v16;
  return v18 | (v17 << 32);
}

Swift::Int sub_1000D8EB0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002C11CC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000D8F1C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000D8F1C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000D9134(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1000D9014(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000D9014(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 112 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 - 96);
      v11 = result == *(v10 + 16) && *(v10 - 88) == *(v10 + 24);
      if (v11 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 112;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = (v10 - 112);
      v23 = *(v10 + 64);
      *v24 = *(v10 + 80);
      *&v24[9] = *(v10 + 89);
      v19 = *v10;
      v20 = *(v10 + 16);
      v21 = *(v10 + 32);
      v22 = *(v10 + 48);
      v13 = *(v10 - 96);
      *v10 = *(v10 - 112);
      *(v10 + 16) = v13;
      v14 = *(v10 - 80);
      v15 = *(v10 - 64);
      v16 = *(v10 - 16);
      *(v10 + 80) = *(v10 - 32);
      *(v10 + 96) = v16;
      v17 = *(v10 - 48);
      *(v10 + 48) = v15;
      *(v10 + 64) = v17;
      *(v10 + 32) = v14;
      v12[4] = v23;
      v12[5] = *v24;
      *(v12 + 89) = *&v24[9];
      *v12 = v19;
      v12[1] = v20;
      v10 -= 112;
      v12[2] = v21;
      v12[3] = v22;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000D9134(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  __dst = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1002C08D4(v8);
      v8 = result;
    }

    v87 = v8 + 16;
    v88 = *(v8 + 2);
    if (v88 >= 2)
    {
      while (1)
      {
        v89 = *v5;
        if (!*v5)
        {
          goto LABEL_142;
        }

        v90 = &v8[16 * v88];
        v5 = *v90;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1000D979C((v89 + 112 * *v90), (v89 + 112 * *v91), (v89 + 112 * v92), __dst);
        if (v4)
        {
        }

        if (v92 < v5)
        {
          goto LABEL_130;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_131;
        }

        *v90 = v5;
        *(v90 + 1) = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_132;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        v5 = a3;
        if (v88 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 112 * v7;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v14 = *v5 + 112 * v9;
      result = *(v14 + 16);
      if (result == v12 && *(v14 + 24) == v13)
      {
        v16 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v17 = (v10 + 112 * v9 + 248);
        do
        {
          result = *(v17 - 15);
          if (result == *(v17 - 1) && *(v17 - 14) == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          v17 += 14;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 112 * v7 - 112;
          v20 = v9;
          v21 = 112 * v9;
          v22 = v7;
          v94 = v20;
          do
          {
            if (v20 != --v22)
            {
              v24 = *v5;
              if (!*v5)
              {
                goto LABEL_141;
              }

              v23 = (v24 + v19);
              v107 = *(v24 + v21 + 64);
              *v109 = *(v24 + v21 + 80);
              *&v109[9] = *(v24 + v21 + 89);
              v99 = *(v24 + v21);
              v101 = *(v24 + v21 + 16);
              v103 = *(v24 + v21 + 32);
              v105 = *(v24 + v21 + 48);
              result = memmove((v24 + v21), (v24 + v19), 0x70uLL);
              v23[4] = v107;
              v23[5] = *v109;
              *(v23 + 89) = *&v109[9];
              *v23 = v99;
              v23[1] = v101;
              v23[2] = v103;
              v23[3] = v105;
            }

            ++v20;
            v19 -= 112;
            v21 += 112;
          }

          while (v20 < v22);
          v9 = v94;
        }
      }
    }

    v25 = v5[1];
    if (v7 < v25)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_136;
        }

        if (v9 + a4 >= v25)
        {
          v26 = v5[1];
        }

        else
        {
          v26 = v9 + a4;
        }

        if (v26 < v9)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v7 != v26)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10028C748(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v41 = *(v8 + 2);
    v40 = *(v8 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_10028C748((v40 > 1), v41 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v42;
    v43 = &v8[16 * v41];
    *(v43 + 4) = v9;
    *(v43 + 5) = v7;
    v44 = *__dst;
    if (!*__dst)
    {
      goto LABEL_143;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v8 + 4);
          v47 = *(v8 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_75:
          if (v49)
          {
            goto LABEL_121;
          }

          v62 = &v8[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_124;
          }

          v68 = &v8[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_128;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v72 = &v8[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_89:
        if (v67)
        {
          goto LABEL_123;
        }

        v75 = &v8[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_126;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_96:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
          goto LABEL_137;
        }

        if (!*v5)
        {
          goto LABEL_140;
        }

        v84 = *&v8[16 * v83 + 32];
        v85 = *&v8[16 * v45 + 40];
        sub_1000D979C((*v5 + 112 * v84), (*v5 + 112 * *&v8[16 * v45 + 32]), (*v5 + 112 * v85), v44);
        if (v4)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1002C08D4(v8);
        }

        if (v83 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v86 = &v8[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_1002C0848(v45);
        v42 = *(v8 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v8[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_119;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_120;
      }

      v57 = &v8[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_122;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_125;
      }

      if (v61 >= v53)
      {
        v79 = &v8[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_129;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  v27 = *v5;
  v28 = *v5 + 112 * v7;
  v95 = v9;
  v29 = v9 - v7;
LABEL_44:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 - 96) == *(v31 + 16) && *(v31 - 88) == *(v31 + 24);
    if (v32 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_43:
      ++v7;
      v28 += 112;
      --v29;
      if (v7 != v26)
      {
        goto LABEL_44;
      }

      v7 = v26;
      v5 = a3;
      v9 = v95;
      goto LABEL_55;
    }

    if (!v27)
    {
      break;
    }

    v33 = (v31 - 112);
    v108 = *(v31 + 64);
    *v110 = *(v31 + 80);
    *&v110[9] = *(v31 + 89);
    v100 = *v31;
    v102 = *(v31 + 16);
    v104 = *(v31 + 32);
    v106 = *(v31 + 48);
    v34 = *(v31 - 96);
    *v31 = *(v31 - 112);
    *(v31 + 16) = v34;
    v35 = *(v31 - 80);
    v36 = *(v31 - 64);
    v37 = *(v31 - 16);
    *(v31 + 80) = *(v31 - 32);
    *(v31 + 96) = v37;
    v38 = *(v31 - 48);
    *(v31 + 48) = v36;
    *(v31 + 64) = v38;
    *(v31 + 32) = v35;
    v33[4] = v108;
    v33[5] = *v110;
    *(v33 + 89) = *&v110[9];
    *v33 = v100;
    v33[1] = v102;
    v31 -= 112;
    v33[2] = v104;
    v33[3] = v106;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_43;
    }
  }

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
  return result;
}

uint64_t sub_1000D979C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 112;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 112;
  if (v9 < v11)
  {
    v12 = 112 * v9;
    if (__dst != __src || &__src[v12] <= __dst)
    {
      memmove(__dst, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 112 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v14 = *(v4 + 2) == *(v6 + 2) && *(v4 + 3) == *(v6 + 3);
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v15 = v6;
      v14 = v7 == v6;
      v6 += 112;
      if (!v14)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 112;
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v15 = v4;
    v14 = v7 == v4;
    v4 += 112;
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v15, 0x70uLL);
    goto LABEL_17;
  }

  v16 = 112 * v11;
  if (__dst != a2 || &a2[v16] <= __dst)
  {
    memmove(__dst, a2, 112 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 112 && v6 > v7)
  {
    do
    {
      v5 -= 112;
      while (1)
      {
        v17 = *(v6 - 12) == *(v13 - 12) && *(v6 - 11) == *(v13 - 11);
        if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v18 = (v13 - 112);
        if (v5 + 112 != v13)
        {
          memmove(v5, v13 - 112, 0x70uLL);
        }

        v5 -= 112;
        v13 -= 112;
        if (v18 <= v4)
        {
          v13 = v18;
          goto LABEL_41;
        }
      }

      v19 = v6 - 112;
      if (v5 + 112 != v6)
      {
        memmove(v5, v6 - 112, 0x70uLL);
      }

      if (v13 <= v4)
      {
        break;
      }

      v6 -= 112;
    }

    while (v19 > v7);
    v6 = v19;
  }

LABEL_41:
  v20 = 112 * ((v13 - v4) / 112);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20);
  }

  return 1;
}

uint64_t sub_1000D9A34(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1002B5AF0();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1002C0CE4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::Int sub_1000D9B24@<X0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  Hasher.init(_seed:)();
  v8 = a1[2];
  v9 = a1[3];
  String.hash(into:)();
  v59 = a1[8];
  Hasher._combine(_:)(v59);
  v57 = a1;
  v10 = a1[9];
  Hasher._combine(_:)(v10);
  v11 = Hasher._finalize()();
  v12 = v7 + 56;
  v13 = -1 << *(v7 + 32);
  v14 = v11 & ~v13;
  v58 = v3;
  if ((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v54 = a2;
    v15 = ~v13;
    v53 = v7;
    v16 = *(v7 + 48);
    while (1)
    {
      v17 = (v16 + 112 * v14);
      v19 = v17[8];
      v18 = v17[9];
      v20 = v17[2] == v8 && v17[3] == v9;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v19 == v59 && v18 == v10)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 0;
        v4 = v58;
        a2 = v54;
        v7 = v53;
        v23 = 1;
        goto LABEL_16;
      }
    }

    v23 = 0;
    v22 = 1;
    v4 = v58;
    a2 = v54;
    v7 = v53;
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

LABEL_16:
  v24 = *(v7 + 16);
  result = v24 + v23;
  if (__OFADD__(v24, v23))
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v26 = *(v7 + 24);
  if (v26 >= result && (a2 & 1) != 0)
  {
    if (v22)
    {
LABEL_20:
      v27 = 112 * v14;
LABEL_43:
      v46 = (*(*v4 + 48) + v27);
      v47 = v46[5];
      a3[4] = v46[4];
      a3[5] = v47;
      *(a3 + 89) = *(v46 + 89);
      v48 = v46[1];
      *a3 = *v46;
      a3[1] = v48;
      v49 = v46[3];
      a3[2] = v46[2];
      a3[3] = v49;
      v50 = v57[1];
      *v46 = *v57;
      v46[1] = v50;
      *(v46 + 89) = *(v57 + 89);
      v51 = v57[5];
      v46[4] = v57[4];
      v46[5] = v51;
      v52 = v57[3];
      v46[2] = v57[2];
      v46[3] = v52;
      return result;
    }

    goto LABEL_40;
  }

  if (a2)
  {
    v55 = v22;
    sub_10021ABB0();
  }

  else
  {
    if (v26 >= result)
    {
      result = sub_10021BEA8();
      if (v22)
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }

    v55 = v22;
    sub_10021C42C();
  }

  v28 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v59);
  Hasher._combine(_:)(v10);
  result = Hasher._finalize()();
  v29 = v28 + 56;
  v30 = -1 << *(v28 + 32);
  v14 = result & ~v30;
  if (((*(v28 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_39:
    v4 = v58;
    if (v55)
    {
      goto LABEL_46;
    }

LABEL_40:
    v38 = *v4;
    *(*v4 + 8 * (v14 >> 6) + 56) |= 1 << v14;
    v39 = (*(v38 + 48) + 112 * v14);
    v40 = v57[1];
    *v39 = *v57;
    v39[1] = v40;
    *(v39 + 89) = *(v57 + 89);
    v41 = v57[5];
    v39[4] = v57[4];
    v39[5] = v41;
    v42 = v57[3];
    v39[2] = v57[2];
    v39[3] = v42;
    v43 = *(v38 + 16);
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (!v44)
    {
      *(v38 + 16) = v45;
      *a3 = 0u;
      a3[1] = 0u;
      a3[2] = 0u;
      a3[3] = 0u;
      a3[4] = 0u;
      a3[5] = 0u;
      *(a3 + 89) = 0u;
      return result;
    }

    goto LABEL_45;
  }

  v31 = ~v30;
  v32 = *(v28 + 48);
  while (1)
  {
    v27 = 112 * v14;
    v33 = (v32 + 112 * v14);
    result = v33[2];
    v35 = v33[8];
    v34 = v33[9];
    v36 = result == v8 && v33[3] == v9;
    if (v36 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      if (v35 == v59 && v34 == v10)
      {
        break;
      }
    }

    v14 = (v14 + 1) & v31;
    if (((*(v29 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v4 = v58;
  if (v55)
  {
    goto LABEL_43;
  }

LABEL_46:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000D9EC8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_10028DD34(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_10000A2CC(0, &qword_1003AFAD0);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      if ((v22 & 1) == 0)
      {
        return;
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
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1000DA090(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000CCE8C(v1);
}

uint64_t sub_1000DA0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003A93C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DA1D0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 48);
  v48 = *(a1 + 32);
  v49 = v7;
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v47[0] = *(a1 + 80);
  *(v47 + 9) = *(a1 + 89);
  v11 = *a2;
  v10 = *(a2 + 8);
  if (v4)
  {
    if (v10)
    {
      v33 = *a2;
      v34 = v10;
      v12 = *(a2 + 64);
      v37 = *(a2 + 48);
      v38 = v12;
      v39[0] = *(a2 + 80);
      *(v39 + 9) = *(a2 + 89);
      v13 = *(a2 + 32);
      v35 = *(a2 + 16);
      v36 = v13;
      v14 = *(&v12 + 1);
      v15 = v12;
      if (__PAIR128__(v5, v6) == v35)
      {
        sub_1000DA0C8(a1, v27);
        sub_1000DA0C8(a2, v27);
        sub_100009EBC(&v33, &qword_1003A93C8);
        if (v9 != v15)
        {
          v16 = 1;
LABEL_11:
          v27[0] = v3;
          v27[1] = v4;
          v27[2] = v6;
          v27[3] = v5;
          v28 = v48;
          v29 = v49;
          v30 = v9;
          v31 = v8;
          v32[0] = v47[0];
          *(v32 + 9) = *(v47 + 9);
          sub_100009EBC(v27, &qword_1003A93C8);
          return v16;
        }
      }

      else
      {
        v26 = v38;
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1000DA0C8(a1, v27);
        sub_1000DA0C8(a2, v27);
        sub_100009EBC(&v33, &qword_1003A93C8);
        v16 = 1;
        if ((v23 & 1) == 0)
        {
          goto LABEL_11;
        }

        v14 = *(&v26 + 1);
        if (v9 != v26)
        {
          goto LABEL_11;
        }
      }

      v16 = v8 != v14;
      goto LABEL_11;
    }
  }

  else if (!v10)
  {
    v33 = v3;
    v34 = 0;
    *&v35 = v6;
    *(&v35 + 1) = v5;
    v24 = *(a1 + 48);
    v36 = *(a1 + 32);
    v37 = v24;
    *&v38 = v9;
    *(&v38 + 1) = v8;
    v39[0] = *(a1 + 80);
    *(v39 + 9) = *(a1 + 89);
    sub_1000DA0C8(a1, v27);
    sub_1000DA0C8(a2, v27);
    sub_100009EBC(&v33, &qword_1003A93C8);
    return 0;
  }

  v33 = v3;
  v34 = v4;
  *&v35 = v6;
  *(&v35 + 1) = v5;
  v17 = *(a1 + 48);
  v36 = *(a1 + 32);
  v37 = v17;
  *&v38 = v9;
  *(&v38 + 1) = v8;
  v39[0] = *(a1 + 80);
  *(v39 + 9) = *(a1 + 89);
  v40 = v11;
  v41 = v10;
  v18 = *(a2 + 32);
  v42 = *(a2 + 16);
  v43 = v18;
  v19 = *(a2 + 48);
  v20 = *(a2 + 64);
  v21 = *(a2 + 80);
  *(v46 + 9) = *(a2 + 89);
  v45 = v20;
  v46[0] = v21;
  v44 = v19;
  sub_1000DA0C8(a1, v27);
  sub_1000DA0C8(a2, v27);
  sub_100009EBC(&v33, &qword_1003AFAC8);
  return 1;
}

uint64_t sub_1000DA444()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000DA48C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DA4F8(_OWORD *a1)
{
  v1 = a1[5];
  v6[4] = a1[4];
  v7[0] = v1;
  *(v7 + 9) = *(a1 + 89);
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  sub_1000DA0C8(v6, &v5);
  return sub_1000CE954(v6);
}

void *sub_1000DA554(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v95 = a1;
  v96 = a2;
  v7 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v91 - v8;
  if (!a4)
  {
    return 0;
  }

  v94 = a4;
  if (a3 == 4)
  {
    v38 = a4 & 0xFFFFFFFFFFFFFF8;
    if (a4 >> 62)
    {
      v92 = _CocoaArrayWrapper.endIndex.getter();
      if (!v92)
      {
        return 0;
      }
    }

    else
    {
      v92 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v92)
      {
        return 0;
      }
    }

    v39 = 0;
    v91 = AVAudioSessionPortHeadsetMic;
    v93 = a4 & 0xC000000000000001;
    while (1)
    {
      if (v93)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v39 >= *(v38 + 16))
        {
          goto LABEL_100;
        }

        v46 = *(a4 + 8 * v39 + 32);
      }

      v21 = v46;
      v47 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v48 = [v46 portType];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
      if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
      {
        break;
      }

      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v4)
      {
        goto LABEL_42;
      }

LABEL_43:

      ++v39;
      v27 = v47 == v92;
      v38 = a4 & 0xFFFFFFFFFFFFFF8;
      if (v27)
      {
        v53 = 0;
        v91 = AVAudioSessionPortHeadphones;
        a4 = v92;
        while (1)
        {
          if (v93)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v53 >= *(v38 + 16))
            {
              goto LABEL_106;
            }

            v60 = *(v94 + 8 * v53 + 32);
          }

          v21 = v60;
          v61 = (v53 + 1);
          if (__OFADD__(v53, 1))
          {
            goto LABEL_104;
          }

          v62 = [v60 portType];
          v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
          if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
          {
          }

          else
          {
            v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v4 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          v54 = [v21 portName];
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v99 = v55;
          v100 = v57;
          v97 = v95;
          v98 = v96;
          v58 = type metadata accessor for Locale();
          (*(*(v58 - 8) + 56))(v9, 1, 1, v58);
          sub_10001F278();
          StringProtocol.range<A>(of:options:range:locale:)();
          LOBYTE(v54) = v59;
          sub_100009EBC(v9, &qword_1003AFCE0);

          if ((v54 & 1) == 0)
          {
            return v21;
          }

LABEL_58:

          v21 = 0;
          ++v53;
          if (v61 == a4)
          {
            return v21;
          }
        }
      }
    }

LABEL_42:
    v40 = [v21 portName];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v99 = v41;
    v100 = v43;
    v97 = v95;
    v98 = v96;
    v44 = type metadata accessor for Locale();
    (*(*(v44 - 8) + 56))(v9, 1, 1, v44);
    sub_10001F278();
    StringProtocol.range<A>(of:options:range:locale:)();
    LOBYTE(v40) = v45;
    sub_100009EBC(v9, &qword_1003AFCE0);

    if ((v40 & 1) == 0)
    {
      return v21;
    }

    goto LABEL_43;
  }

  if (a3 == 3)
  {
    v4 = a4 & 0xFFFFFFFFFFFFFF8;
    if (a4 >> 62)
    {
      goto LABEL_110;
    }

    v96 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v96)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a3 != 1)
  {
    return 0;
  }

  v10 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v11 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return 0;
    }
  }

  v12 = 0;
  v92 = AVAudioSessionPortBluetoothA2DP;
  v93 = a4 & 0xC000000000000001;
  v13 = a4 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v93)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_101;
      }

      v20 = *(v94 + 8 * v12 + 32);
    }

    v21 = v20;
    v22 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_99;
    }

    a4 = v11;
    v23 = [v20 portType];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    v27 = v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26;
    if (v27)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v14 = [v21 portName];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v99 = v15;
    v100 = v17;
    v97 = v95;
    v98 = v96;
    v18 = type metadata accessor for Locale();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    sub_10001F278();
    StringProtocol.range<A>(of:options:range:locale:)();
    LOBYTE(v14) = v19;
    sub_100009EBC(v9, &qword_1003AFCE0);

    if ((v14 & 1) == 0)
    {
      return v21;
    }

LABEL_10:

    ++v12;
    v11 = a4;
    v27 = v22 == a4;
    v10 = v13;
  }

  while (!v27);
  v67 = 0;
  v92 = AVAudioSessionPortBluetoothHFP;
  while (1)
  {
    if (v93)
    {
      v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v67 >= *(v10 + 16))
      {
        goto LABEL_107;
      }

      v74 = *(v94 + 8 * v67 + 32);
    }

    v21 = v74;
    v75 = (v67 + 1);
    if (__OFADD__(v67, 1))
    {
      break;
    }

    v76 = [v74 portType];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
    {

LABEL_72:
      v68 = [v21 portName];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v99 = v69;
      v100 = v71;
      v97 = v95;
      v98 = v96;
      v72 = type metadata accessor for Locale();
      (*(*(v72 - 8) + 56))(v9, 1, 1, v72);
      sub_10001F278();
      StringProtocol.range<A>(of:options:range:locale:)();
      LOBYTE(v68) = v73;
      sub_100009EBC(v9, &qword_1003AFCE0);

      if ((v68 & 1) == 0)
      {
        return v21;
      }

      goto LABEL_73;
    }

    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      goto LABEL_72;
    }

LABEL_73:

    v21 = 0;
    ++v67;
    if (v75 == a4)
    {
      return v21;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    v96 = _CocoaArrayWrapper.endIndex.getter();
    if (!v96)
    {
      return 0;
    }

LABEL_24:
    v28 = 0;
    v95 = a4 & 0xC000000000000001;
    v29 = v4;
    while (1)
    {
      if (v95)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *(v4 + 16))
        {
          goto LABEL_103;
        }

        v30 = *(a4 + 8 * v28 + 32);
      }

      v21 = v30;
      v4 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v31 = [v30 portType];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
      if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
      {
LABEL_97:

        return v21;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        return v21;
      }

      ++v28;
      v27 = v4 == v96;
      v4 = v29;
      if (v27)
      {
        v81 = 0;
        a4 = AVAudioSessionPortBuiltInSpeaker;
        while (1)
        {
          if (v95)
          {
            v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v81 >= *(v29 + 16))
            {
              goto LABEL_109;
            }

            v82 = *(v94 + 8 * v81 + 32);
          }

          v21 = v82;
          v83 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_108;
          }

          v31 = [v82 portType];
          v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v86 = v85;
          if (v84 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v86 == v87)
          {
            goto LABEL_97;
          }

          v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v89 & 1) == 0)
          {

            v21 = 0;
            ++v81;
            if (v83 != v96)
            {
              continue;
            }
          }

          return v21;
        }
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
  }
}

BOOL sub_1000DB018(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = v2;
  v42 = a1;
  v43 = a2;
  v48[1] = 45;
  v48[2] = 0xE100000000000000;
  sub_10001F278();
  v4 = StringProtocol.components<A>(separatedBy:)();
  if (!v4[2])
  {
    goto LABEL_28;
  }

  v6 = v4[4];
  v5 = v4[5];

  swift_getKeyPath();
  v42 = v2;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v7 = *(v2 + 56);
  if (*(v7 + 16))
  {

    v8 = sub_10028DD34(v6, v5);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

LABEL_16:
      swift_getKeyPath();
      v42 = v3;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v42 = v3;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v27 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = *(v3 + 56);
      *(v3 + 56) = 0x8000000000000000;
      sub_100291650(v27, v6, v5, isUniquelyReferenced_nonNull_native);

      *(v3 + 56) = v48[0];
      swift_endAccess();
      v42 = v3;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v29 = [v27 personalTranslatorCapability];

      return v29 == 2;
    }
  }

  sub_1002C2E20();
  p_base_props = (&WaveformUIKitView + 64);
  if (v11)
  {
    v13 = v11;
    v14 = [v11 activationState];

    if (!v14)
    {
      goto LABEL_23;
    }
  }

  v48[0] = 0;
  v15 = *(v3 + 32);
  v16 = swift_allocObject();
  *(v16 + 16) = v48;
  *(v16 + 24) = v3;
  v17 = swift_allocObject();
  v17[2] = sub_1000DBE24;
  v17[3] = v16;
  v46 = sub_1000DBE3C;
  v47 = v17;
  v42 = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_1000CC9DC;
  v45 = &unk_100383320;
  v18 = _Block_copy(&v42);

  dispatch_sync(v15, v18);
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_12;
  }

  p_base_props = &WaveformUIKitView.base_props;
  if (!v48[0])
  {
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000078E8(v31, qword_1003D2728);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to sync fetching aaDevice", v34, 2u);
    }

    v35 = v48[0];

    goto LABEL_23;
  }

  v19 = qword_1003A9208;
  v17 = v48[0];
  if (v19 != -1)
  {
    goto LABEL_31;
  }

LABEL_12:
  v20 = type metadata accessor for Logger();
  sub_1000078E8(v20, qword_1003D2728);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "Sync fetching aaDevice %{BOOL}d", v23, 8u);
  }

  if ([v17 respondsToSelector:"fetchAudioAccessoryDeviceForBTAddress:"])
  {
    v24 = v17;
    v25 = String._bridgeToObjectiveC()();
    v10 = [v24 fetchAudioAccessoryDeviceForBTAddress:v25];

    v26 = v48[0];

    p_base_props = (&WaveformUIKitView + 64);
    if (v10)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v36 = v48[0];

    p_base_props = &WaveformUIKitView.base_props;
  }

LABEL_23:
  if (p_base_props[65] != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000078E8(v37, qword_1003D2728);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v38, v39))
  {

LABEL_28:

    return 0;
  }

  v40 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  *v40 = 136315394;
  *(v40 + 4) = sub_10028D78C(0xD000000000000019, 0x80000001002F3700, &v42);
  *(v40 + 12) = 2080;
  v41 = sub_10028D78C(v6, v5, &v42);

  *(v40 + 14) = v41;
  _os_log_impl(&_mh_execute_header, v38, v39, "%s no AudioAccessoryDevice for %s", v40, 0x16u);
  swift_arrayDestroy();

  return 0;
}

uint64_t sub_1000DB764(void *a1)
{
  if ([a1 deviceType] == 1 && (objc_msgSend(a1, "deviceSubType") == 2 || objc_msgSend(a1, "deviceSubType") == 3) || objc_msgSend(a1, "deviceType") == 4 && (objc_msgSend(a1, "deviceSubType") == 2 || objc_msgSend(a1, "deviceSubType") == 3) || objc_msgSend(a1, "deviceType") == 3)
  {
    return 1;
  }

  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000078E8(v3, qword_1003D2728);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    v8 = [v4 deviceType];
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v8);
    *(v7 + 4) = Hasher._finalize()();
    *(v7 + 12) = 2048;
    *(v7 + 14) = [v4 deviceSubType];

    _os_log_impl(&_mh_execute_header, v5, v6, "Invalid audio device: device type: %ld device subtype: %ld", v7, 0x16u);
  }

  else
  {

    v5 = v4;
  }

  return 0;
}

uint64_t sub_1000DB960(void *a1)
{
  v2 = 0x6C6C69662E63696DLL;
  v26[3] = &type metadata for TranslateFeatures;
  v26[4] = sub_100009DF8();
  LOBYTE(v26[0]) = 8;
  v3 = isFeatureEnabled(_:)();
  sub_100008664(v26);
  if (v3)
  {
    if (sub_1000DB764(a1))
    {
      if (([a1 deviceSubType] == 2 || objc_msgSend(a1, "deviceSubType") == 3) && !objc_msgSend(a1, "isAppleAccessory"))
      {
        return 0x6E6F687064616568;
      }

      v4 = MRAVOutputDeviceCreateFromAVOutputDevice();
      if (!v4)
      {
        return v2;
      }

      v5 = v4;
      v6 = [objc_opt_self() symbolNameForOutputDevice:v4];
      if (!v6)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = String._bridgeToObjectiveC()();
      }

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      v9 = qword_1003A9208;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000078E8(v10, qword_1003D2728);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v26[0] = v14;
        *v13 = 136446210;
        v15 = sub_10028D78C(v2, v8, v26);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v11, v12, "MRAVOutputDeviceSymbolProvider found symbol %{public}s", v13, 0xCu);
        sub_100008664(v14);
      }

      else
      {
      }

      v20 = [objc_opt_self() systemImageNamed:v6];

      if (v20)
      {

        v5 = v20;
      }

      else
      {

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v26[0] = v24;
          *v23 = 136446210;
          v25 = sub_10028D78C(v2, v8, v26);

          *(v23 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v21, v22, "Invalid symbol %{public}s: returning generic symbol", v23, 0xCu);
          sub_100008664(v24);
        }

        else
        {
        }

        v2 = 0x6E6F687064616568;
      }
    }

    else
    {
      if (qword_1003A9208 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000078E8(v16, qword_1003D2728);
      v5 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v5, v17, "Invalid audio device: returning generic symbol", v18, 2u);
      }
    }
  }

  return v2;
}

uint64_t sub_1000DBDEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000DBE68(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000CD17C(v1);
}

uint64_t sub_1000DBE98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DBED0()
{

  return _swift_deallocObject(v0, 40, 7);
}

const char *sub_1000DBF20(unsigned int a1)
{
  if (a1 > 2)
  {
    return "?";
  }

  else
  {
    return off_100383578[a1];
  }
}

uint64_t sub_1000DBF54()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000DC020()
{
  type metadata accessor for Notification();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1000D10D0(v1, v2);
}

void sub_1000DC08C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

void sub_1000DC0CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

uint64_t sub_1000DC114()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DC178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000DC20C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices) = *(v0 + 24);
}

uint64_t sub_1000DC250(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000DC400()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v1 - 8);
  v12 = v1;
  __chkstk_darwin(v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_availableDictionaries] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_pairAvailability] = &_swiftEmptySetSingleton;
  result = [objc_opt_self() assetManager];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryManager] = result;
    v10 = OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryQueue;
    v9[1] = sub_100026AA0();
    static DispatchQoS.unspecified.getter();
    v14 = _swiftEmptyArrayStorage;
    sub_1000DE000(&qword_1003AED78, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100005AD4(&qword_1003AED80);
    sub_1000A5708(&qword_1003AED88, &qword_1003AED80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v11 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
    *&v0[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v7 = type metadata accessor for DictionaryManager();
    v13.receiver = v0;
    v13.super_class = v7;
    v8 = objc_msgSendSuper2(&v13, "init");
    sub_1000DC704();

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000DC704()
{
  v1 = v0;
  if (qword_1003A9230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D27A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Update available dictionaries cache", v5, 2u);
  }

  result = [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryManager) _allAvailableDefinitionDictionaries];
  if (result)
  {
    v7 = result;
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_1001750A0(v8);

    if (v9)
    {
      *(v1 + OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_availableDictionaries) = v9;
    }
  }

  return result;
}

void sub_1000DC868(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_pairAvailability;
  swift_beginAccess();
  v5 = *(v1 + v4);

  v6 = [a1 canonicalIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  LOBYTE(v6) = sub_10022B6B4(v7, v9, v5);

  if ((v6 & 1) == 0)
  {
    sub_1000DC704();
    v25[3] = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_availableDictionaries);
    v10 = a1;

    v12 = sub_1000DDE68(v11, v10);
    v14 = v13;

    __chkstk_darwin(v15);
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v25[0] = v12;
      sub_1000DE060(v25, &v24);
      v16 = v24;
    }

    if (v16)
    {
      v17 = [v16 rawAsset];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 wasLocal];

        if (v19)
        {
          v20 = [v10 canonicalIdentifier];
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          swift_beginAccess();
          sub_10021A60C(v25, v21, v23);
          swift_endAccess();
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
        __break(1u);
      }
    }
  }
}

uint64_t sub_1000DCA80(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000DDFD8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003836D0;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v1;
  v22 = a1;
  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v25 + 8))(v5, v3);
  (*(v23 + 8))(v8, v24);

  v14 = OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_pairAvailability;
  swift_beginAccess();
  v15 = *&v13[v14];

  v16 = [v22 canonicalIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  LOBYTE(v16) = sub_10022B6B4(v17, v19, v15);

  return v16 & 1;
}

uint64_t sub_1000DCDF8(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000DDDF4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100383680;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v1;
  v14 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v18 + 8))(v5, v3);
  (*(v6 + 8))(v8, v17);
}

void sub_1000DD0C8(uint64_t a1, void *a2)
{
  sub_1000DC868(a2);
  v4 = OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_pairAvailability;
  swift_beginAccess();
  v5 = *(a1 + v4);

  v6 = [a2 canonicalIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  LOBYTE(v6) = sub_10022B6B4(v7, v9, v5);

  if (v6)
  {
    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000078E8(v10, qword_1003D27A0);
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      v17 = "Dictionary already available for pair: %{public}@";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v12, v13, v17, v14, 0xCu);
      sub_1000DDF70(v15);
    }
  }

  else
  {
    v18 = a2;

    v20 = sub_1000DDE68(v19, v18);
    v22 = v21;

    __chkstk_darwin(v23);
    if (v22)
    {
      v12 = 0;
    }

    else
    {
      v34 = v20;
      sub_1000DDF50(&v34, &v35);
      v12 = v35;
    }

    if (v12)
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000078E8(v24, qword_1003D27A0);
      v25 = v18;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138543362;
        *(v28 + 4) = v25;
        *v29 = v25;
        v30 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "Starting download for dictionary: %{public}@", v28, 0xCu);
        sub_1000DDF70(v29);
      }

      sub_1000DD4F4(v12);
    }

    else
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000078E8(v31, qword_1003D27A0);
      v32 = v18;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138543362;
        *(v14 + 4) = v32;
        *v15 = v32;
        v33 = v32;
        v17 = "Dictionary not available for: %{public}@";
        goto LABEL_19;
      }
    }
  }
}

void sub_1000DD4F4(void *a1)
{
  v10 = [objc_allocWithZone(MADownloadOptions) init];
  [v10 setAllowsCellularAccess:0];
  [v10 setDiscretionary:1];
  v2 = [a1 rawAsset];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = a1;
    v5[4] = v3;
    aBlock[4] = sub_1000DDD3C;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DDBA4;
    aBlock[3] = &unk_1003835E0;
    v6 = _Block_copy(aBlock);
    v7 = v3;
    v8 = v10;
    v9 = a1;

    [v7 startDownload:v8 then:v6];

    _Block_release(v6);
  }

  else
  {
  }
}

uint64_t sub_1000DD6B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryQueue);
    v24 = v11;
    v17 = result;
    v23 = v16;

    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a2;
    v18[4] = a4;
    aBlock[4] = sub_1000DDDA8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100096948;
    aBlock[3] = &unk_100383630;
    v19 = _Block_copy(aBlock);
    v20 = a4;
    v21 = a3;

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v23;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v24);
  }

  return result;
}

void sub_1000DD9C0(void *a1, uint64_t a2, void *a3)
{
  if (qword_1003A9230 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D27A0);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136446210;
    v11 = [v6 localizedLanguageName];

    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10028D78C(v12, v14, v18);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Finished downloading dictionary %{public}s; updating local dictionaries", v9, 0xCu);
    sub_100008664(v10);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_1000DC704();
  }

  [a3 refreshState];
}

uint64_t sub_1000DDBA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1000DDBF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DictionaryManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000DDCBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DDCF4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000DDD48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DDD60()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000DDDB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000DDDFC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000DDE68(unint64_t a1, void *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = v5;
    if (!v5)
    {
      return v5;
    }

    --v5;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }

    if (v5 >= *(v4 + 16))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *(a1 + 32 + 8 * v5);
LABEL_9:
      v8 = v7;
      sub_1000DE394(a2);
      v10 = v9;

      if (v10)
      {
        return v5;
      }
    }
  }
}

uint64_t sub_1000DDF70(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003AECA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DE000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DE07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = Locale.ltLanguageCode.getter();
  if (!v6)
  {
    goto LABEL_12;
  }

  if (v5 == a2 && v6 == a3)
  {
    goto LABEL_7;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_12:
    if (Locale.identifier.getter() == a2 && v8 == a3)
    {
      goto LABEL_7;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_8;
    }

    Locale.identifier.getter();
    sub_10001F278();
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v14 = v13;

    if (v12 == a2 && v14 == a3)
    {
      goto LABEL_7;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_8;
    }

    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v18 = v17;
    v19 = Locale.ltLanguageCode.getter();
    if (v20)
    {
      if (v16 == v19 && v20 == v18)
      {
LABEL_23:

LABEL_7:

        goto LABEL_8;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v24 = v23;
    v25 = Locale.ltLanguageCode.getter();
    if (!v26)
    {

      v9 = 0;
      return v9 & 1;
    }

    if (v22 != v25 || v26 != v24)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v9 & 1;
    }

    goto LABEL_23;
  }

LABEL_8:
  v9 = 1;
  return v9 & 1;
}

void sub_1000DE394(void *a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 rawAsset];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [v7 attributes];

  if (!v9)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v28, "IndexLanguages");
  HIBYTE(v28[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v11 = sub_10028DF68(v29), (v12 & 1) == 0))
  {

    sub_100078028(v29);
    return;
  }

  sub_10000A37C(*(v10 + 56) + 32 * v11, v30);
  sub_100078028(v29);

  sub_100005AD4(&qword_1003A95C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v13 = v28[0];
  if (*(v28[0] + 16) < 2uLL)
  {
    goto LABEL_10;
  }

  v14 = *(v28[0] + 32);
  v15 = *(v28[0] + 40);

  v16 = [a1 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v14) = sub_1000DE07C(v6, v14, v15);

  v17 = *(v4 + 8);
  v17(v6, v3);
  if (v14)
  {
    if (v13[2] < 2uLL)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v18 = v13[6];
    v19 = v13[7];

    v20 = [a1 targetLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v18) = sub_1000DE07C(v6, v18, v19);

    v17(v6, v3);
    if (v18)
    {
LABEL_10:

      return;
    }
  }

  if (v13[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = v13[6];
  v22 = v13[7];

  v23 = [a1 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v21) = sub_1000DE07C(v6, v21, v22);

  v17(v6, v3);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

  v24 = v13[4];
  v25 = v13[5];

  v26 = [a1 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000DE07C(v6, v24, v25);

  v17(v6, v3);
}

id sub_1000DE7A0(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1000DE81C()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___queue;
  v9 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___queue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___queue);
  }

  else
  {
    v11 = sub_10000A2CC(0, &qword_1003A9C40);
    v18 = "lable=no>\n</head>";
    v19 = v11;
    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    v16[1] = sub_1000DE000(&qword_1003AED78, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100005AD4(&qword_1003AED80);
    v17 = v2;
    sub_1000A5708(&qword_1003AED88, &qword_1003AED80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
    v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

id sub_1000DEAB4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___dictionaryManager;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___dictionaryManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___dictionaryManager);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = [objc_opt_self() assetManager];
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1000DEB38(uint64_t a1, uint64_t a2, void *a3)
{
  v20[1] = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_sourceLocale;
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 56);
  v12(&v3[v10], 1, 1, v11);
  v12(&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_targetLocale], 1, 1, v11);
  v13 = &v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___queue] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___dictionaryManager] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_analytics] = &_swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordsInspected] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordCountNotFound] = 0;
  v14 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_timeStamp;
  v15 = [objc_opt_self() now];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v7 + 32))(&v3[v14], v9, v6);
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_observer] = 0;
  if (a2)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for DictionaryViewController();
  v21.receiver = v3;
  v21.super_class = v17;
  v18 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", v16, a3);

  return v18;
}

id sub_1000DEE0C(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_sourceLocale;
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 56);
  v9(&v1[v7], 1, 1, v8);
  v9(&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_targetLocale], 1, 1, v8);
  v10 = &v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___queue] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___dictionaryManager] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_analytics] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordsInspected] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordCountNotFound] = 0;
  v11 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_timeStamp;
  v12 = [objc_opt_self() now];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(&v1[v11], v6, v3);
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_observer] = 0;
  v13 = type metadata accessor for DictionaryViewController();
  v16.receiver = v1;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v14)
  {
  }

  return v14;
}

void sub_1000DF16C()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DictionaryViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemGroupedBackgroundColor];
    [v2 setBackgroundColor:v3];

    v4 = [objc_opt_self() mainBundle];
    v11._object = 0x80000001002F3DC0;
    v5._object = 0x80000001002F3DA0;
    v5._countAndFlagsBits = 0xD000000000000010;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v11);

    v7 = String._bridgeToObjectiveC()();

    [v0 setTitle:v7];

    sub_1000DF714();
    sub_1000DF87C();
    v8 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"closeActionWithSender:"];
    v9 = [v0 navigationItem];
    [v9 setRightBarButtonItem:v8];

    sub_1000E0A1C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000DF37C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_analytics;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordCountNotFound);
  v9 = objc_allocWithZone(NSNumber);

  v10 = [v9 initWithInteger:v8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v7;
  sub_10029163C(v10, 0xD000000000000011, 0x80000001002F3A60, isUniquelyReferenced_nonNull_native);
  v12 = v21;
  v13 = [objc_allocWithZone(NSNumber) initWithInteger:*(a1 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordsInspected)];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v12;
  sub_10029163C(v13, 0x736E497364726F77, 0xEE00646574636570, v14);
  v15 = v21;
  (*(v3 + 16))(v5, a1 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_timeStamp, v2);
  Date.timeIntervalSinceNow.getter();
  v17 = v16;
  (*(v3 + 8))(v5, v2);
  v18 = [objc_allocWithZone(NSNumber) initWithDouble:-v17];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v15;
  sub_10029163C(v18, 0x7275446C61746F74, 0xED00006E6F697461, v19);
  return v21;
}

void sub_1000DF714()
{
  v1 = sub_1000DE778();
  [v1 setHidden:1];

  v2 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview) setOpaque:0];
  v3 = [*(v0 + v2) scrollView];
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor:v5];

  v6 = sub_1000DE78C();
  [v6 setHidden:1];

  v7 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel) setNumberOfLines:0];
  [*(v0 + v7) setTextAlignment:1];
  v8 = *(v0 + v7);
  v9 = [v4 secondaryLabelColor];
  [v8 setTextColor:v9];
}

void sub_1000DF87C()
{
  v1 = sub_1000DE778();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = sub_1000DE78C();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_100005AD4(&unk_1003AFCC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002DC210;
  v4 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel;
  v5 = [*&v0[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel] leadingAnchor];
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 leadingAnchor];

  v9 = [v5 constraintEqualToSystemSpacingAfterAnchor:v8 multiplier:2.0];
  *(v3 + 32) = v9;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 trailingAnchor];

  v13 = [*&v0[v4] trailingAnchor];
  v14 = [v12 constraintEqualToSystemSpacingAfterAnchor:v13 multiplier:2.0];

  *(v3 + 40) = v14;
  v15 = [v0 view];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v16 centerYAnchor];

  v19 = [*&v0[v4] centerYAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v3 + 48) = v20;
  sub_10000A2CC(0, &qword_1003B3480);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:isa];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview];
  sub_1002C31A4(v24);
}

void sub_1000DFB64()
{
  v1 = v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    oslog = Strong;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
  }

  else
  {
    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000078E8(v5, qword_1003D27A0);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "User pressed dictionary close button but there's no delegate to handle dismissal", v7, 2u);
    }
  }
}

void sub_1000DFCF8(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003AFCE0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v60 - v11;
  v13 = type metadata accessor for Locale();
  v71 = *(v13 - 1);
  v14 = __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = &v60 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v21 = sub_1000DE81C();
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v22 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v24 = sub_1000DEAB4();
    v25 = [v24 _allAvailableDefinitionDictionaries];

    if (!v25)
    {
      return;
    }

    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = sub_1001750A0(v26);

    if (!v18)
    {
      return;
    }

    v62 = v2;
    sub_1000E1D20(a1, v12);
    v27 = v71;
    v28 = *(v71 + 48);
    if (v28(v12, 1, v13) == 1)
    {

      v29 = v12;
LABEL_8:
      sub_1000E20D4(v29);
      return;
    }

    v61 = v16;
    v30 = *(v27 + 32);
    v31 = v70;
    v30(v70, v12, v13);
    sub_1000E1D20(v69, v10);
    if (v28(v10, 1, v13) == 1)
    {
      (*(v27 + 8))(v31, v13);

      v29 = v10;
      goto LABEL_8;
    }

    v12 = v13;
    v30(v61, v10, v13);
    v32 = objc_allocWithZone(_LTLocalePair);
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v34 = Locale._bridgeToObjectiveC()().super.isa;
    v13 = [v32 initWithSourceLocale:isa targetLocale:v34];

    v23 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!(v18 >> 62))
    {
      v35 = v18 & 0xFFFFFFFFFFFFFF8;
      v36 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v69 = v12;
      if (v36)
      {
        goto LABEL_11;
      }

LABEL_27:

      v58 = *(v71 + 8);
      v59 = v69;
      v58(v61, v69);
      v58(v70, v59);
      return;
    }
  }

  else
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v35 = v23;
  v36 = _CocoaArrayWrapper.endIndex.getter();
  v69 = v12;
  if (!v36)
  {
    goto LABEL_27;
  }

LABEL_11:
  v37 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *(v35 + 16))
      {
        goto LABEL_25;
      }

      v38 = *(v18 + 8 * v37 + 32);
    }

    v39 = v38;
    v12 = (v37 + 1);
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if ([v38 activated])
    {
      sub_1000DE394(v13);
      if (v40)
      {
        break;
      }
    }

    ++v37;
    if (v12 == v36)
    {
      goto LABEL_27;
    }
  }

  v41 = [v39 rawAsset];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 assetId];

    if (v43)
    {

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      sub_10000A2CC(0, &qword_1003A9C40);
      v60 = static OS_dispatch_queue.main.getter();
      v47 = swift_allocObject();
      v48 = v62;
      v47[2] = v62;
      v47[3] = v13;
      v47[4] = v44;
      v47[5] = v46;
      aBlock[4] = sub_1000E2420;
      aBlock[5] = v47;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100096948;
      aBlock[3] = &unk_1003837E8;
      v49 = _Block_copy(aBlock);
      v50 = v48;
      v51 = v13;
      v52 = v63;
      static DispatchQoS.unspecified.getter();
      v72 = _swiftEmptyArrayStorage;
      sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
      sub_100005AD4(&unk_1003A9C50);
      sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
      v53 = v65;
      v54 = v68;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v55 = v60;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v49);

      (*(v67 + 8))(v53, v54);
      (*(v64 + 8))(v52, v66);
      v56 = *(v71 + 8);
      v57 = v69;
      v56(v61, v69);
      v56(v70, v57);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000E0510(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  Locale.ltIdentifier.getter();
  v11 = *(v7 + 8);
  v11(v9, v6);
  v12 = String._bridgeToObjectiveC()();

  v13 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_analytics;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_10029163C(v12, 0x6F4C656372756F73, 0xEC000000656C6163, isUniquelyReferenced_nonNull_native);
  *(a1 + v13) = v25;
  swift_endAccess();
  v15 = [a2 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  Locale.ltIdentifier.getter();
  v11(v9, v6);
  v16 = String._bridgeToObjectiveC()();

  swift_beginAccess();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_10029163C(v16, 0x6F4C746567726174, 0xEC000000656C6163, v17);
  *(a1 + v13) = v25;
  swift_endAccess();
  sub_100003754();
  v18 = String._bridgeToObjectiveC()();

  swift_beginAccess();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_10029163C(v18, 0x6150656C61636F6CLL, 0xEA00000000007269, v19);
  *(a1 + v13) = v25;
  swift_endAccess();
  v20 = String._bridgeToObjectiveC()();
  swift_beginAccess();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_10029163C(v20, 0x44497465737361, 0xE700000000000000, v21);
  *(a1 + v13) = v25;
  return swift_endAccess();
}

void sub_1000E085C(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = sub_1000DE81C();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_1000DFCF8(a3, a4);
    if (v12)
    {
      v13 = v12;
      if (a2)
      {
        v14 = String._bridgeToObjectiveC()();
      }

      else
      {
        v14 = 0;
      }

      v15 = [v13 _hasDefinitionForTerm:v14];

      if (v15)
      {
        if (a2)
        {
          a2 = String._bridgeToObjectiveC()();
        }

        [v13 _definitionValueForTerm:a2];
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E0A1C()
{
  v1 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v1 - 8);
  v3 = &v42 - v2;
  v4 = sub_100005AD4(&qword_1003AFCE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v45 = &v42 - v9;
  __chkstk_darwin(v8);
  v47 = (&v42 - v10);
  if (qword_1003A9230 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000078E8(v11, qword_1003D27A0);
  v12 = v0;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v43 = v5;
    v44 = v3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48[0] = v16;
    *v15 = 136643075;
    v17 = &v12[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
    if (*&v12[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text + 8])
    {
      v18 = *v17;
      v19 = *&v12[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text + 8];
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_10028D78C(v18, v19, v48);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2048;
    if (v17[1])
    {

      v21 = String.count.getter();
    }

    else
    {

      v21 = 0;
    }

    v5 = v43;
    *(v15 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v13, v14, "Load dictionary item for: %{sensitive}s of length %ld", v15, 0x16u);
    sub_100008664(v16);

    v3 = v44;
  }

  else
  {
  }

  v22 = [v12 viewIfLoaded];
  if (v22)
  {

    v23 = *&v12[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text + 8];
    v44 = *&v12[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
    v24 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_sourceLocale;
    swift_beginAccess();
    v25 = v47;
    sub_1000E1D20(&v12[v24], v47);
    v26 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_targetLocale;
    swift_beginAccess();
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v3, 1, 1, v27);
    v28 = v45;
    sub_1000E1D20(v25, v45);
    v29 = v46;
    sub_1000E1D20(&v12[v26], v46);
    type metadata accessor for MainActor();

    v30 = v6;
    v31 = v3;
    v32 = v12;
    v33 = static MainActor.shared.getter();
    v34 = *(v5 + 80);
    v35 = (v34 + 56) & ~v34;
    v36 = (v30 + v34 + v35) & ~v34;
    v37 = swift_allocObject();
    v37[2] = v33;
    v37[3] = &protocol witness table for MainActor;
    v38 = v44;
    v37[4] = v32;
    v37[5] = v38;
    v37[6] = v23;
    sub_1000E1F14(v28, v37 + v35);
    sub_1000E1F14(v29, v37 + v36);
    sub_10005E36C(0, 0, v31, &unk_1002DC2C0, v37);

    sub_1000E20D4(v25);
  }

  else
  {
    v47 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v47, v39, "Not updating currentText yet because view hasn't loaded yet; it will be updated when the view loads", v40, 2u);
    }

    v41 = v47;
  }
}

uint64_t sub_1000E0F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v11 = *(sub_100005AD4(&qword_1003AFCE0) - 8);
  v8[20] = v11;
  v8[21] = *(v11 + 64);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[24] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E112C, v13, v12);
}

uint64_t sub_1000E112C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v18 = v0[19];
  v23 = v0[18];
  v24 = v0[17];
  v22 = v0[15];
  v5 = v0[13];
  v20 = v0[16];
  v21 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];

  v19 = sub_1000DE81C();
  sub_1000E1D20(v6, v1);
  sub_1000E1D20(v5, v3);
  v10 = *(v4 + 80);
  v11 = (v10 + 40) & ~v10;
  v12 = (v2 + v10 + v11) & ~v10;
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v8;
  v13[4] = v7;
  sub_1000E1F14(v1, v13 + v11);
  sub_1000E1F14(v3, v13 + v12);
  v0[6] = sub_1000E22B8;
  v0[7] = v13;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100096948;
  v0[5] = &unk_100383748;
  v14 = _Block_copy(v0 + 2);

  v15 = v9;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v22 + 8))(v20, v21);
  (*(v23 + 8))(v18, v24);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000E13E8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v25 = *(v13 - 8);
  v26 = v13;
  __chkstk_darwin(v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E085C(a2, a3, a4, a5);
  v17 = v16;
  sub_10000A2CC(0, &qword_1003A9C40);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1000E23B0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100383798;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  v22 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v27 + 8))(v12, v10);
  return (*(v25 + 8))(v15, v26);
}

void sub_1000E16FC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordsInspected);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v1;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordsInspected) = v4;
  if (a1)
  {
    v6 = a1;
    v7 = [v6 longDefinition];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v30 = v9;
      v29 = sub_10001F278();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v12 = sub_1000DE778();
      v13 = String._bridgeToObjectiveC()();

      v14 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview;
      [*(v5 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview) setHidden:0];
      v15 = sub_1000DE78C();
      [v15 setHidden:1];

      v16 = *(v5 + v14);
      sub_1002C33E4();

      return;
    }

    goto LABEL_10;
  }

  v17 = sub_1000DE778();
  v18 = String._bridgeToObjectiveC()();

  [*(v5 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview) setHidden:1];
  v19 = sub_1000DE78C();
  [v19 setHidden:0];

  v20 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel);
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 mainBundle];
  v31._object = 0x80000001002F3AB0;
  v24._object = 0x80000001002F3A90;
  v31._countAndFlagsBits = 0xD00000000000001ELL;
  v24._countAndFlagsBits = 0xD000000000000010;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v31);

  v26 = String._bridgeToObjectiveC()();

  [v22 setText:v26];

  v27 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordCountNotFound);
  v3 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  *(v5 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordCountNotFound) = v28;
}

id sub_1000E1A20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DictionaryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DictionaryViewController()
{
  result = qword_1003AFBA8;
  if (!qword_1003AFBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E1BBC()
{
  sub_1000E1CC8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000E1CC8()
{
  if (!qword_1003B3410)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B3410);
    }
  }
}

uint64_t sub_1000E1D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AFCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E1D90()
{
  v1 = *(sub_100005AD4(&qword_1003AFCE0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 56) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  swift_unknownObjectRelease();

  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, v5 + v3, v2 | 7);
}

uint64_t sub_1000E1F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AFCE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E1F84(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100005AD4(&qword_1003AFCE0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 56) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1[6];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001B16C;

  return sub_1000E0F5C(a1, v9, v10, v11, v12, v13, v1 + v7, v1 + v8);
}