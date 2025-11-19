uint64_t sub_1000019D0()
{
  v1 = v0;
  v2 = sub_100003960(&qword_100018438, &qword_10000E1C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (v28 - v4);
  v6 = sub_100003960(&qword_100018440, &qword_10000E1C8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v28 - v8;
  v10 = sub_100003960(&qword_100018448, &qword_10000E1D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v28 - v12;
  *v5 = static Alignment.center.getter();
  v5[1] = v14;
  v15 = sub_100003960(&qword_100018450, &qword_10000E1D8);
  sub_100001D3C(v0, v5 + *(v15 + 44));
  v16 = static Animation.easeInOut(duration:)();
  v28[0] = *(v0 + 40);
  sub_100003960(&qword_1000187C0, &qword_10000E1E0);
  State.wrappedValue.getter();
  if (v29)
  {
    v17 = 1;
  }

  else
  {
    v28[0] = *(v0 + 56);
    State.wrappedValue.getter();
    v17 = v29;
  }

  sub_1000039B4(v5, v9, &qword_100018438, &qword_10000E1C0);
  v18 = &v9[*(v6 + 36)];
  *v18 = v16;
  v18[8] = v17;
  v19 = swift_allocObject();
  v20 = *(v1 + 48);
  *(v19 + 48) = *(v1 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(v1 + 64);
  v21 = *(v1 + 16);
  *(v19 + 16) = *v1;
  *(v19 + 32) = v21;
  sub_1000039B4(v9, v13, &qword_100018440, &qword_10000E1C8);
  v22 = &v13[*(v10 + 36)];
  *v22 = sub_1000039AC;
  v22[1] = v19;
  v22[2] = 0;
  v22[3] = 0;
  v29 = *(v1 + 16);
  v30 = *(v1 + 32);
  sub_100003778(v1, v28);
  sub_100003960(&qword_100018458, &qword_10000E1E8);
  Binding.wrappedValue.getter();
  v23 = *&v28[0];
  *&v29 = *&v28[0];
  v24 = swift_allocObject();
  v25 = *(v1 + 48);
  *(v24 + 48) = *(v1 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v1 + 64);
  v26 = *(v1 + 16);
  *(v24 + 16) = *v1;
  *(v24 + 32) = v26;
  sub_100003778(v1, v28);
  sub_100003960(&qword_1000186A0, &qword_10000E1F0);
  sub_100003A84();
  sub_100003C3C();
  View.onChange<A>(of:initial:_:)();

  return sub_100004384(v13, &qword_100018448, &qword_10000E1D0);
}

uint64_t sub_100001D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v39 = sub_100003960(&qword_100018498, &qword_10000E220);
  v3 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v36 = &v36 - v4;
  v41 = sub_100003960(&qword_1000184A0, &qword_10000E228);
  v5 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v43 = (&v36 - v6);
  v38 = sub_100003960(&qword_1000184A8, &qword_10000E230);
  v7 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v9 = &v36 - v8;
  v42 = sub_100003960(&qword_1000184B0, &qword_10000E238);
  v10 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v40 = &v36 - v11;
  v12 = type metadata accessor for OpacityTransition();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (__chkstk_darwin)();
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  v37 = sub_100003960(&qword_1000184B8, &qword_10000E240);
  v20 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v22 = &v36 - v21;
  v46 = *(a1 + 40);
  sub_100003960(&qword_1000187C0, &qword_10000E1E0);
  State.wrappedValue.getter();
  if (v45 == 1)
  {
    v46 = *(a1 + 16);
    v47 = *(a1 + 32);
    sub_100003960(&qword_100018458, &qword_10000E1E8);
    Binding.wrappedValue.getter();
    v23 = v45;
    if (v45)
    {
      v24 = type metadata accessor for AXRTextFormatterPresetsManager();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = v23;
      AXRTextFormatterPresetsManager.init()();
      AXRRootView.init(readerManager:presetsManager:dismiss:)();
      OpacityTransition.init()();
      (*(v13 + 16))(v17, v19, v12);
      sub_100004504(&qword_1000184C0, &type metadata accessor for OpacityTransition);
      v28 = AnyTransition.init<A>(_:)();
      (*(v13 + 8))(v19, v12);
      *&v22[*(v37 + 36)] = v28;
      v29 = &qword_1000184B8;
      v30 = &qword_10000E240;
      sub_10000431C(v22, v9, &qword_1000184B8, &qword_10000E240);
      swift_storeEnumTagMultiPayload();
      sub_10000403C();
      sub_100004124();
      v31 = v40;
      _ConditionalContent<>.init(storage:)();
      sub_10000431C(v31, v43, &qword_1000184B0, &qword_10000E238);
      swift_storeEnumTagMultiPayload();
      sub_100003960(&qword_1000184C8, &qword_10000E248);
      sub_100003FB0();
      sub_100004208();
      _ConditionalContent<>.init(storage:)();

LABEL_6:
      sub_100004384(v31, &qword_1000184B0, &qword_10000E238);
      return sub_100004384(v22, v29, v30);
    }
  }

  v46 = *(a1 + 56);
  State.wrappedValue.getter();
  if (v45 == 1)
  {
    *&v46 = String.localized.getter();
    *(&v46 + 1) = v32;
    __chkstk_darwin(v46);
    v22 = v36;
    ContentUnavailableView.init(label:description:actions:)();

    OpacityTransition.init()();
    (*(v13 + 16))(v17, v19, v12);
    sub_100004504(&qword_1000184C0, &type metadata accessor for OpacityTransition);
    v33 = AnyTransition.init<A>(_:)();
    (*(v13 + 8))(v19, v12);
    *&v22[*(v39 + 36)] = v33;
    v29 = &qword_100018498;
    v30 = &qword_10000E220;
    sub_10000431C(v22, v9, &qword_100018498, &qword_10000E220);
    swift_storeEnumTagMultiPayload();
    sub_10000403C();
    sub_100004124();
    v31 = v40;
    _ConditionalContent<>.init(storage:)();
    sub_10000431C(v31, v43, &qword_1000184B0, &qword_10000E238);
    swift_storeEnumTagMultiPayload();
    sub_100003960(&qword_1000184C8, &qword_10000E248);
    sub_100003FB0();
    sub_100004208();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_6;
  }

  OpacityTransition.init()();
  (*(v13 + 16))(v17, v19, v12);
  sub_100004504(&qword_1000184C0, &type metadata accessor for OpacityTransition);
  v35 = AnyTransition.init<A>(_:)();
  (*(v13 + 8))(v19, v12);
  *v43 = v35;
  swift_storeEnumTagMultiPayload();
  sub_100003960(&qword_1000184C8, &qword_10000E248);
  sub_100003FB0();
  sub_100004208();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10000255C(uint64_t a1)
{
  v2 = sub_100003960(&qword_1000187A0, &qword_10000E200);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13[-v4 - 8];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  sub_100003778(a1, v13);
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v9;
  *(v8 + 96) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v10;
  sub_10000483C(0, 0, v5, &unk_10000E218, v8);
}

uint64_t sub_10000269C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_100003960(&qword_1000187A0, &qword_10000E200);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  if (*a2)
  {
    v15[0] = *(a3 + 40);
    v16 = 1;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.setter();
    v15[0] = *(a3 + 56);
    v16 = 0;
    return State.wrappedValue.setter();
  }

  else
  {
    v15[0] = *(a3 + 40);
    v16 = 0;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.setter();
    v15[0] = *(a3 + 56);
    v16 = 0;
    State.wrappedValue.setter();
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    type metadata accessor for MainActor();
    sub_100003778(a3, v15);
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    v13 = *(a3 + 48);
    *(v12 + 64) = *(a3 + 32);
    *(v12 + 80) = v13;
    *(v12 + 96) = *(a3 + 64);
    v14 = *(a3 + 16);
    *(v12 + 32) = *a3;
    *(v12 + 48) = v14;
    sub_10000483C(0, 0, v8, &unk_10000E210, v12);
  }
}

uint64_t sub_100002888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for Date();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v9;
  v4[17] = v8;

  return _swift_task_switch(sub_100002988, v9, v8);
}

uint64_t sub_100002988()
{
  v1 = *(v0 + 112);
  Date.init()();
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v7 = v6;
  v8 = *(v5 + 8);
  *(v0 + 144) = v8;
  *(v0 + 152) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v4);
  if (v7 >= 5.0)
  {
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);

    *(v0 + 40) = *(v13 + 56);
    *(v0 + 168) = 1;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.setter();
    v8(v12, v14);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v9 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_100002B34;

    return static Task<>.sleep(nanoseconds:)(300000000);
  }
}

uint64_t sub_100002B34()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_1000046DC;
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_100002C58;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100002C58()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 32);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 32) = v2;
  sub_100003960(&qword_100018458, &qword_10000E1E8);
  Binding.wrappedValue.getter();
  v3 = *(v0 + 72);
  if (v3)
  {
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);

    v10 = *(v9 + 40);
    *(v0 + 169) = 1;
    *(v0 + 56) = v10;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.setter();
    v5(v7, v8);
LABEL_8:
    v25 = *(v0 + 104);
    v24 = *(v0 + 112);

    v26 = *(v0 + 8);

    return v26();
  }

  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v16 = v15;
  v17 = *(v14 + 8);
  *(v0 + 144) = v17;
  *(v0 + 152) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v11, v13);
  if (v16 >= 5.0)
  {
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    v22 = *(v0 + 80);
    v23 = *(v0 + 88);

    *(v0 + 40) = *(v22 + 56);
    *(v0 + 168) = 1;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.setter();
    v17(v21, v23);
    goto LABEL_8;
  }

  v18 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v19 = swift_task_alloc();
  *(v0 + 160) = v19;
  *v19 = v0;
  v19[1] = sub_100002B34;

  return static Task<>.sleep(nanoseconds:)(300000000);
}

uint64_t sub_100002E90@<X0>(uint64_t a1@<X8>)
{
  String.localized.getter();
  sub_1000043E4();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.title2.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100004438(v2, v4, v6 & 1);

  v12 = Text.bold()();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100004438(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_100002FB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *a1;
  v22 = a1[1];
  sub_1000043E4();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static HierarchicalShapeStyle.secondary.getter();
  v8 = Text.foregroundStyle<A>(_:)();
  v10 = v9;
  v12 = v11;
  sub_100004438(v3, v5, v7 & 1);

  static Font.subheadline.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_100004438(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_100003118()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_1000019D0();
}

uint64_t sub_10000315C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = type metadata accessor for CircularProgressViewStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003960(&qword_100018530, &qword_10000E2D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  v11 = sub_100003960(&qword_100018538, &qword_10000E2D8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v45 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  ProgressView<>.init<>()();
  CircularProgressViewStyle.init()();
  sub_100004678(&qword_100018540, &qword_100018530, &qword_10000E2D0);
  sub_100004504(&qword_100018548, &type metadata accessor for CircularProgressViewStyle);
  View.progressViewStyle<A>(_:)();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  static UnitPoint.center.getter();
  v18 = &v17[*(v12 + 44)];
  __asm { FMOV            V2.2D, #1.5 }

  *v18 = _Q2;
  *(v18 + 2) = v24;
  *(v18 + 3) = v25;
  v47 = String.localized.getter();
  v48 = v26;
  sub_1000043E4();
  v27 = Text.init<A>(_:)();
  v29 = v28;
  LOBYTE(v5) = v30;
  static Font.body.getter();
  v31 = Text.font(_:)();
  v33 = v32;
  LOBYTE(v2) = v34;

  sub_100004438(v27, v29, v5 & 1);

  static Color.secondary.getter();
  v35 = Text.foregroundColor(_:)();
  v37 = v36;
  LOBYTE(v12) = v38;
  v40 = v39;

  sub_100004438(v31, v33, v2 & 1);

  v41 = v45;
  sub_10000454C(v17, v45);
  v42 = v46;
  sub_10000454C(v41, v46);
  v43 = v42 + *(sub_100003960(&qword_100018550, &qword_10000E2E0) + 48);
  *v43 = v35;
  *(v43 + 8) = v37;
  *(v43 + 16) = v12 & 1;
  *(v43 + 24) = v40;
  sub_1000045BC(v35, v37, v12 & 1);

  sub_1000045CC(v17);
  sub_100004438(v35, v37, v12 & 1);

  return sub_1000045CC(v41);
}

uint64_t sub_100003560@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v2 = sub_100003960(&qword_100018528, &qword_10000E2C8);
  return sub_10000315C(a1 + *(v2 + 44));
}

Swift::Int sub_1000035B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100003624()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

__n128 sub_10000367C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v16.n128_u64[0] = a3;
  v16.n128_u64[1] = a4;
  *&v17 = a5;
  BYTE8(v17) = v20;
  *&v18 = v21;
  BYTE8(v18) = v20;
  v19 = v21;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = BYTE8(v17);
  v26 = v18;
  v27 = BYTE8(v18);
  v28 = v19;
  sub_100003778(&v15, v14);
  sub_1000037B0(&v20);
  v12 = v18;
  *(a6 + 32) = v17;
  *(a6 + 48) = v12;
  *(a6 + 64) = v19;
  result = v16;
  *a6 = v15;
  *(a6 + 16) = result;
  return result;
}

void type metadata accessor for AXNotification()
{
  if (!qword_100018428)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100018428);
    }
  }
}

__n128 sub_100003830(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100003854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000389C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100003960(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000039B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003960(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003A1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_100003A84()
{
  result = qword_100018460;
  if (!qword_100018460)
  {
    sub_100003B10(&qword_100018448, &qword_10000E1D0);
    sub_100003B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018460);
  }

  return result;
}

uint64_t sub_100003B10(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003B58()
{
  result = qword_100018468;
  if (!qword_100018468)
  {
    sub_100003B10(&qword_100018440, &qword_10000E1C8);
    sub_100004678(&qword_100018470, &qword_100018438, &qword_10000E1C0);
    sub_100004678(&qword_100018478, &qword_100018480, &qword_10000E1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018468);
  }

  return result;
}

unint64_t sub_100003C3C()
{
  result = qword_100018488;
  if (!qword_100018488)
  {
    sub_100003B10(&qword_1000186A0, &qword_10000E1F0);
    sub_100004504(&qword_100018490, &type metadata accessor for AXRBlockManager);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018488);
  }

  return result;
}

uint64_t sub_100003CF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000046CC;

  return sub_100002888(a1, v4, v5, v1 + 32);
}

uint64_t sub_100003DA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100003E0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003EBC;

  return sub_100002888(a1, v4, v5, v1 + 32);
}

uint64_t sub_100003EBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100003FB0()
{
  result = qword_1000184D0;
  if (!qword_1000184D0)
  {
    sub_100003B10(&qword_1000184B0, &qword_10000E238);
    sub_10000403C();
    sub_100004124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184D0);
  }

  return result;
}

unint64_t sub_10000403C()
{
  result = qword_1000184D8;
  if (!qword_1000184D8)
  {
    sub_100003B10(&qword_1000184B8, &qword_10000E240);
    sub_100004504(&qword_1000184E0, &type metadata accessor for AXRRootView);
    sub_100004678(&qword_1000184E8, &qword_1000184F0, &qword_10000E250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184D8);
  }

  return result;
}

unint64_t sub_100004124()
{
  result = qword_1000184F8;
  if (!qword_1000184F8)
  {
    sub_100003B10(&qword_100018498, &qword_10000E220);
    sub_100004678(&qword_100018500, &qword_100018508, &qword_10000E258);
    sub_100004678(&qword_1000184E8, &qword_1000184F0, &qword_10000E250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184F8);
  }

  return result;
}

unint64_t sub_100004208()
{
  result = qword_100018510;
  if (!qword_100018510)
  {
    sub_100003B10(&qword_1000184C8, &qword_10000E248);
    sub_1000042C0();
    sub_100004678(&qword_1000184E8, &qword_1000184F0, &qword_10000E250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018510);
  }

  return result;
}

unint64_t sub_1000042C0()
{
  result = qword_100018518;
  if (!qword_100018518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018518);
  }

  return result;
}

uint64_t sub_10000431C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003960(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100004384(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003960(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000043E4()
{
  result = qword_100018520;
  if (!qword_100018520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018520);
  }

  return result;
}

uint64_t sub_100004438(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004458()
{
  sub_100003B10(&qword_100018448, &qword_10000E1D0);
  sub_100003B10(&qword_1000186A0, &qword_10000E1F0);
  sub_100003A84();
  sub_100003C3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100004504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000454C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003960(&qword_100018538, &qword_10000E2D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000045BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000045CC(uint64_t a1)
{
  v2 = sub_100003960(&qword_100018538, &qword_10000E2D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004678(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003B10(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String __swiftcall String.axrDropPrefix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = String.hasPrefix(_:)(a1);

  if (v5)
  {
    v6 = String.count.getter();
    sub_10000478C(v6, v4, v3);

    v4 = static String._fromSubstring(_:)();
    v3 = v7;
  }

  v8 = v4;
  v9 = v3;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t sub_10000478C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_10000483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003960(&qword_1000187A0, &qword_10000E200);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000431C(a3, v27 - v11, &qword_1000187A0, &qword_10000E200);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100004384(v12, &qword_1000187A0, &qword_10000E200);
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

      sub_100004384(a3, &qword_1000187A0, &qword_10000E200);

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

  sub_100004384(a3, &qword_1000187A0, &qword_10000E200);
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

id sub_100004B3C()
{
  result = [objc_allocWithZone(type metadata accessor for AccessibilityReaderProfileObserver()) init];
  qword_100018BB0 = result;
  return result;
}

id sub_100004BF0()
{
  v1 = [objc_opt_self() sharedConnection];
  if (v1)
  {
    v2 = v1;
    [v1 unregisterObserver:v0];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for AccessibilityReaderProfileObserver();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100004D8C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v35 - v9;
  __chkstk_darwin(v8);
  if (qword_100018420 != -1)
  {
    swift_once();
  }

  v11 = qword_100018BB0;
  *a1 = qword_100018BB0;
  v35 = 0;
  v36 = 0;
  v12 = v11;
  sub_100003960(&qword_100018678, &qword_10000E358);
  State.init(wrappedValue:)();
  v13 = v38;
  *(a1 + 8) = v37;
  *(a1 + 24) = v13;
  v35 = 0;
  v36 = 0;
  State.init(wrappedValue:)();
  v14 = v38;
  *(a1 + 32) = v37;
  *(a1 + 48) = v14;
  v15 = type metadata accessor for AccessibilityReaderApp();
  v16 = v15[7];
  *(a1 + v16) = swift_getKeyPath();
  sub_100003960(&qword_1000186F0, &qword_10000E3E0);
  swift_storeEnumTagMultiPayload();
  v17 = v15[8];
  v35 = 0;
  sub_100003960(&qword_100018690, &unk_10000E360);
  State.init(wrappedValue:)();
  *(a1 + v17) = v37;
  v18 = v15[9];
  AXRDataLog.getter();
  sub_10000BD44(&_swiftEmptyArrayStorage);
  v19 = [objc_opt_self() mainRunLoop];
  v20 = objc_allocWithZone(type metadata accessor for AXRuntimeClient());
  *(a1 + v18) = AXRuntimeClient.init(logger:handlers:runloop:)();
  v21 = v15[10];
  v35 = 0;
  sub_100003960(&qword_1000186A0, &qword_10000E1F0);
  State.init(wrappedValue:)();
  *(a1 + v21) = v37;
  v22 = a1 + v15[11];
  LOBYTE(v35) = 0;
  State.init(wrappedValue:)();
  v23 = *(&v37 + 1);
  *v22 = v37;
  *(v22 + 8) = v23;
  v24 = [objc_opt_self() sharedConnection];
  if (v24 && (v25 = v24, v26 = String._bridgeToObjectiveC()(), v27 = [v25 effectiveBoolValueForSetting:v26], v26, v25, v27 == 2))
  {
    AXRDataLog.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Accessibility Reader is not allowed - preventing app launch", v34, 2u);
    }

    (*(v3 + 8))(v10, v2);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    AXRDataLog.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Accessibility Reader is allowed - proceeding with app launch", v30, 2u);
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_100005258@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = type metadata accessor for ScenePhase();
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityReaderApp();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v64 = v11;
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003960(&qword_100018700, &qword_10000E3F0);
  v14 = *(v13 - 8);
  v53 = v13;
  v54 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v51 = &v50 - v16;
  v58 = sub_100003960(&qword_100018708, &qword_10000E3F8);
  v61 = *(v58 - 8);
  v17 = *(v61 + 64);
  __chkstk_darwin(v58);
  v65 = &v50 - v18;
  v19 = sub_100003960(&qword_100018710, &qword_10000E400);
  v20 = *(v19 - 8);
  v59 = v19;
  v60 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v55 = &v50 - v22;
  sub_10000BE54(v2, v12);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = swift_allocObject();
  sub_10000BEBC(v12, v24 + v23);
  sub_100003960(&qword_100018718, &qword_10000E408);
  v25 = sub_100003B10(&qword_100018720, &qword_10000E410);
  v26 = sub_100003B10(&qword_100018728, &qword_10000E418);
  v27 = sub_10000BF90();
  *&v66 = v26;
  *(&v66 + 1) = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v66 = v25;
  *(&v66 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  v29 = v63;
  v30 = v63 + *(v8 + 36);
  v31 = v52;
  sub_100009AE8(v52);
  sub_10000BE54(v29, v12);
  v32 = swift_allocObject();
  sub_10000BEBC(v12, v32 + v23);
  v33 = sub_100004678(&qword_100018750, &qword_100018700, &qword_10000E3F0);
  v34 = sub_10000CBEC(&qword_100018758, &type metadata accessor for ScenePhase);
  v35 = v31;
  v36 = v53;
  v37 = v56;
  v38 = v51;
  Scene.onChange<A>(of:initial:_:)();

  (*(v57 + 8))(v35, v37);
  (*(v54 + 8))(v38, v36);
  v39 = v63;
  v40 = *(v63 + 24);
  v66 = *(v63 + 8);
  v67 = v40;
  sub_100003960(&qword_100018760, &qword_10000E428);
  State.wrappedValue.getter();
  sub_10000BE54(v39, v12);
  v41 = swift_allocObject();
  sub_10000BEBC(v12, v41 + v23);
  v42 = sub_100003960(&qword_100018678, &qword_10000E358);
  *&v66 = v36;
  *(&v66 + 1) = v37;
  v67 = v33;
  v68 = v34;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_10000C19C();
  v45 = v55;
  v46 = v58;
  v47 = v65;
  Scene.onChange<A>(of:initial:_:)();

  (*(v61 + 8))(v47, v46);
  *&v66 = v46;
  *(&v66 + 1) = v42;
  v67 = v43;
  v68 = v44;
  swift_getOpaqueTypeConformance2();
  v48 = v59;
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v60 + 8))(v45, v48);
}

uint64_t sub_1000058F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for AccessibilityReaderApp();
  v4 = v3 - 8;
  v22 = *(v3 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v3);
  v23 = sub_100003960(&qword_100018720, &qword_10000E410);
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v23);
  v9 = &v21 - v8;
  v10 = *(a1 + 24);
  v33 = *(a1 + 8);
  *&v34 = v10;
  sub_100003960(&qword_100018760, &qword_10000E428);
  State.wrappedValue.getter();
  v11 = v25;
  v25 = *(a1 + *(v4 + 48));
  sub_100003960(&qword_100018770, &qword_10000E430);
  State.projectedValue.getter();
  sub_10000367C(v11, *(&v11 + 1), v33, *(&v33 + 1), v34, v31);
  KeyPath = swift_getKeyPath();
  v13 = *(a1 + *(v4 + 44));
  v27 = v31[2];
  v28 = v31[3];
  v25 = v31[0];
  v26 = v31[1];
  *&v29 = v32;
  *(&v29 + 1) = KeyPath;
  v30 = v13;
  sub_10000BE54(a1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v15 = swift_allocObject();
  sub_10000BEBC(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = v13;
  v17 = sub_100003960(&qword_100018728, &qword_10000E418);
  v18 = sub_10000BF90();
  View.onOpenURL(perform:)();

  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v33 = v25;
  v34 = v26;
  sub_100004384(&v33, &qword_100018728, &qword_10000E418);
  sub_10000CE88(&off_100014BB8);
  sub_10000CFF0(&unk_100014BD8);
  sub_10000CE88(&off_100014BE8);
  sub_10000CFF0(&unk_100014C08);
  *&v25 = v17;
  *(&v25 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v23;
  View.handlesExternalEvents(preferring:allowing:)();

  return (*(v6 + 8))(v9, v19);
}

uint64_t sub_100005C58()
{
  v0 = type metadata accessor for AccessibilityReaderApp();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v87 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v91 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v88 = &v78 - v8;
  v9 = type metadata accessor for URLQueryItem();
  v10 = *(v9 - 8);
  v93 = v9;
  v94 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v92 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003960(&qword_1000187F8, &qword_10000E4F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v78 - v15;
  v17 = type metadata accessor for URLComponents();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = URL.scheme.getter();
  if (v23)
  {
    if (v22 == 0x78612D656C707061 && v23 == 0xEE00726564616572)
    {

      goto LABEL_6;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
LABEL_6:
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        return sub_100004384(v16, &qword_1000187F8, &qword_10000E4F0);
      }

      (*(v18 + 32))(v21, v16, v17);
      v30 = URLComponents.queryItems.getter();
      if (!v30)
      {
        return (*(v18 + 8))(v21, v17);
      }

      v31 = v30;
      v84 = v18;
      v85 = v17;
      v32 = *(v30 + 16);
      v82 = v30;
      v83 = v0;
      if (v32)
      {
        v79 = v21;
        v80 = v4;
        v81 = v3;
        *&v98 = _swiftEmptyArrayStorage;
        sub_10000B7F4(0, v32, 0);
        v33 = v98;
        v34 = *(v94 + 16);
        v35 = v31 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
        v90 = *(v94 + 72);
        v91 = v34;
        v94 += 16;
        v89 = (v94 - 8);
        do
        {
          v36 = v92;
          v37 = v93;
          v91(v92, v35, v93);
          v38 = URLQueryItem.name.getter();
          v40 = v39;
          v41 = URLQueryItem.value.getter();
          if (v42)
          {
            v43 = v41;
          }

          else
          {
            v43 = 0;
          }

          if (v42)
          {
            v44 = v42;
          }

          else
          {
            v44 = 0xE000000000000000;
          }

          (*v89)(v36, v37);
          *&v98 = v33;
          v46 = *(v33 + 16);
          v45 = *(v33 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_10000B7F4((v45 > 1), v46 + 1, 1);
            v33 = v98;
          }

          *(v33 + 16) = v46 + 1;
          v47 = (v33 + 32 * v46);
          v47[4] = v38;
          v47[5] = v40;
          v47[6] = v43;
          v47[7] = v44;
          v35 += v90;
          --v32;
        }

        while (v32);
        v3 = v81;
        v4 = v80;
        v48 = v88;
        v21 = v79;
      }

      else
      {
        v48 = v88;
        if (!_swiftEmptyArrayStorage[2])
        {
          v50 = &_swiftEmptyDictionarySingleton;
          v49 = v86;
LABEL_27:
          *&v98 = v50;

          sub_10000AEDC(v51, 1, &v98);
          v52 = v87;

          v53 = v98;
          if (*(v98 + 16) && (v54 = sub_10000B28C(1954047348, 0xE400000000000000), (v55 & 1) != 0))
          {
            v56 = (*(v53 + 56) + 16 * v54);
            v58 = *v56;
            v57 = v56[1];
          }

          else
          {
            v58 = 0;
            v59 = 0;
          }

          v60 = *(v49 + 48);
          v98 = *(v49 + 32);
          v99 = v60;
          v96 = v58;
          v97 = v59;
          sub_100003960(&qword_100018760, &qword_10000E428);
          State.wrappedValue.setter();
          if (*(v53 + 16) && (v61 = sub_10000B28C(0x4449656C646E7562, 0xE800000000000000), (v62 & 1) != 0))
          {
            v63 = (*(v53 + 56) + 16 * v61);
            v65 = *v63;
            v64 = v63[1];
          }

          else
          {
            v65 = 0;
            v64 = 0;
          }

          v66 = *(v49 + 24);
          v98 = *(v49 + 8);
          v99 = v66;
          v96 = v65;
          v97 = v64;
          State.wrappedValue.setter();
          v67 = v49 + *(v83 + 44);
          v68 = *v67;
          v69 = *(v67 + 8);
          LOBYTE(v98) = v68;
          *(&v98 + 1) = v69;
          LOBYTE(v96) = 1;
          sub_100003960(&qword_1000187C0, &qword_10000E1E0);
          State.wrappedValue.setter();
          AXRDataLog.getter();
          sub_10000BE54(v49, v52);
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v95 = v73;
            *v72 = 136315138;
            v74 = *(v52 + 24);
            v98 = *(v52 + 8);
            v99 = v74;
            State.wrappedValue.getter();
            if (v97)
            {
              v75 = v96;
            }

            else
            {
              v75 = 0x6E776F6E6B6E75;
            }

            if (v97)
            {
              v76 = v97;
            }

            else
            {
              v76 = 0xE700000000000000;
            }

            sub_10000C218(v52);
            v77 = sub_10000A934(v75, v76, &v95);

            *(v72 + 4) = v77;
            _os_log_impl(&_mh_execute_header, v70, v71, "URL received, pending refresh set for bundleID: %s", v72, 0xCu);
            sub_10000C274(v73);

            (*(v4 + 8))(v88, v3);
            return (*(v84 + 8))(v21, v85);
          }

          else
          {

            (*(v4 + 8))(v48, v3);
            (*(v84 + 8))(v21, v85);
            return sub_10000C218(v52);
          }
        }
      }

      v49 = v86;
      sub_100003960(&qword_100018800, &qword_10000E4F8);
      v50 = static _DictionaryStorage.allocate(capacity:)();
      goto LABEL_27;
    }
  }

  v26 = v91;
  AXRDataLog.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "AX Reader received an invalid scheme", v29, 2u);
  }

  return (*(v4 + 8))(v26, v3);
}

void sub_100006548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v4 = type metadata accessor for Logger();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v51 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v51 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = type metadata accessor for ScenePhase();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, a2, v20);
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == enum case for ScenePhase.background(_:))
  {
    AXRDataLog.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "AX Reader app entering BACKGROUND phase", v28, 2u);
    }

    (*(v53 + 8))(v11, v4);
LABEL_9:
    sub_10000718C();
    return;
  }

  if (v25 == enum case for ScenePhase.inactive(_:))
  {
    AXRDataLog.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "AX Reader app entering INACTIVE phase", v31, 2u);
    }

    (*(v53 + 8))(v14, v4);
    goto LABEL_9;
  }

  v32 = v4;
  if (v25 == enum case for ScenePhase.active(_:))
  {
    AXRDataLog.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v53;
    if (v35)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "AX Reader app entering ACTIVE phase", v37, 2u);
    }

    v38 = *(v36 + 8);
    v38(v19, v32);
    v39 = v52;
    sub_100006AF0();
    v40 = (v39 + *(type metadata accessor for AccessibilityReaderApp() + 44));
    v41 = *v40;
    v42 = *(v40 + 1);
    v55 = *v40;
    v56 = v42;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.getter();
    if (v54 == 1)
    {
      AXRDataLog.getter();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Processing pending URL refresh", v45, 2u);
      }

      v38(v17, v32);
      sub_100006EC8();
      v55 = v41;
      v56 = v42;
      v54 = 0;
      State.wrappedValue.setter();
    }
  }

  else
  {
    AXRDataLog.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v53;
    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "AX Reader app in an invalid scene phase", v50, 2u);
    }

    (*(v49 + 8))(v8, v32);
    (*(v21 + 8))(v24, v20);
  }
}

uint64_t sub_100006AF0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v30 = *(v1 + *(type metadata accessor for AccessibilityReaderApp() + 32));
    sub_100003960(&qword_1000187C8, &qword_10000E4A8);
    State.wrappedValue.getter();
    v15 = v29;
    if (v29)
    {
      AXRDataLog.getter();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v28 = v1;
        v20 = v19;
        *&v30 = v19;
        *v18 = 136315138;
        v21 = sub_10000A934(v12, v14, &v30);

        *(v18 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v16, v17, "Releasing App Switcher Appearance Assertion for %s", v18, 0xCu);
        sub_10000C274(v20);
        v1 = v28;
      }

      else
      {
      }

      (*(v3 + 8))(v9, v2);
      [v15 invalidate];
    }

    else
    {
      AXRDataLog.getter();

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v30 = v25;
        *v24 = 136315138;
        v26 = sub_10000A934(v12, v14, &v30);

        *(v24 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, "There is no active App Switcher Appearance Assertion for %s", v24, 0xCu);
        sub_10000C274(v25);
      }

      else
      {
      }

      (*(v3 + 8))(v7, v2);
    }
  }

  v30 = *(v1 + *(type metadata accessor for AccessibilityReaderApp() + 32));
  v29 = 0;
  sub_100003960(&qword_1000187C8, &qword_10000E4A8);
  return State.wrappedValue.setter();
}

void sub_100006EC8()
{
  v1 = type metadata accessor for AccessibilityReaderApp();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  sub_100003960(&qword_100018760, &qword_10000E428);
  State.wrappedValue.getter();
  if (v5)
  {

    sub_1000075E4();
  }

  else
  {
    sub_100007FBC();
  }
}

void sub_10000718C()
{
  v1 = v0;
  v2 = type metadata accessor for AccessibilityReaderApp();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v27 = v6;
    v12 = v3;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    aBlock = *(v1 + *(v2 + 32));
    sub_100003960(&qword_1000187C8, &qword_10000E4A8);
    State.wrappedValue.getter();
    v16 = v33;
    if (v33)
    {

      AXRDataLog.getter();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&aBlock = v20;
        *v19 = 136315138;
        v21 = sub_10000A934(v13, v15, &aBlock);

        *(v19 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Already acquired app switcher appearance assertion for %s", v19, 0xCu);
        sub_10000C274(v20);
      }

      else
      {
      }

      (*(v27 + 8))(v9, v5);
    }

    else
    {
      sub_10000BE54(v1, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v23 = swift_allocObject();
      sub_10000BEBC(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
      v24 = (v23 + ((v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v24 = v13;
      v24[1] = v15;
      v31 = sub_10000C890;
      v32 = v23;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v29 = sub_1000094C4;
      v30 = &unk_100014EC0;
      v25 = _Block_copy(&aBlock);

      SBSRequestAppSwitcherAppearanceForHiddenApplication();
      _Block_release(v25);
    }
  }
}

void sub_10000753C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[1];
  v6 = a2[1];
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_10:
    v8 = *(a3 + *(type metadata accessor for AccessibilityReaderApp() + 40));
    sub_100003960(&qword_100018770, &qword_10000E430);
    State.wrappedValue.setter();
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = *a1 == *a2 && v5 == v6;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_100006EC8();
}

void sub_1000075E4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003960(&qword_100018778, &qword_10000E438);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v84 = v76 - v8;
  v9 = sub_100003960(&qword_100018780, &qword_10000E440);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v94 = v76 - v11;
  v95 = type metadata accessor for AXRTextContent();
  v12 = *(v95 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v95);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AXRArticle();
  v85 = *(v16 - 8);
  v17 = *(v85 + 64);
  v18 = __chkstk_darwin(v16);
  v87 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v89 = v76 - v21;
  __chkstk_darwin(v20);
  v91 = v76 - v22;
  v23 = type metadata accessor for AXRPlaybackSpeed();
  v88 = *(v23 - 8);
  v24 = *(v88 + 64);
  v25 = __chkstk_darwin(v23);
  v86 = v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v92 = v76 - v27;
  v28 = *(v0 + 48);
  v98 = *(v0 + 32);
  v99 = v28;
  sub_100003960(&qword_100018760, &qword_10000E428);
  State.wrappedValue.getter();
  v93 = v97;
  if (v97)
  {
    v82 = v23;
    v90 = v16;
    v29 = v96;
    v30 = *(v0 + 24);
    v98 = *(v0 + 8);
    v99 = v30;
    State.wrappedValue.getter();
    v83 = v97;
    if (v97)
    {
      v77 = v2;
      v78 = v1;
      v79 = v0;
      v31 = v96;
      v32 = type metadata accessor for IRSpeechFormatterModel();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      IRSpeechFormatterModel.init()();
      dispatch thunk of IRSpeechFormatterModel.playbackSpeed.getter();

      *&v98 = 10;
      *(&v98 + 1) = 0xE100000000000000;
      __chkstk_darwin(v35);
      v75 = &v98;
      v36 = v93;

      v38 = sub_10000A468(0x7FFFFFFFFFFFFFFFLL, 1, sub_10000C2C0, &v76[-4], v29, v36, v37);
      v39 = v38[2];
      v81 = v5;
      v80 = v31;
      if (v39)
      {
        *&v98 = _swiftEmptyArrayStorage;
        sub_10000B814(0, v39, 0);
        v40 = v98;
        v76[1] = v38;
        v41 = v38 + 7;
        do
        {
          v42 = *(v41 - 3);
          v43 = *(v41 - 2);
          v44 = *(v41 - 1);
          v45 = *v41;

          static String._fromSubstring(_:)();
          v46 = type metadata accessor for AttributedString();
          (*(*(v46 - 8) + 56))(v94, 1, 1, v46);
          LOBYTE(v75) = 0;
          AXRTextContent.init(text:isHeader:headingLevel:isListElement:isLink:attributedText:isFirstElement:isLastElement:)();

          *&v98 = v40;
          v48 = *(v40 + 16);
          v47 = *(v40 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_10000B814(v47 > 1, v48 + 1, 1);
            v40 = v98;
          }

          *(v40 + 16) = v48 + 1;
          (*(v12 + 32))(v40 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v48, v15, v95);
          v41 += 4;
          --v39;
        }

        while (v39);
        v5 = v81;
      }

      v49 = v83;
      v50 = String._bridgeToObjectiveC()();
      v51 = AXAppNameForBundleId();

      v53 = v89;
      v52 = v90;
      if (v51)
      {

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = type metadata accessor for Date();
        (*(*(v54 - 8) + 56))(v84, 1, 1, v54);

        String.localizedData.getter();
        LOWORD(v75) = 0;
        v55 = v91;
        AXRArticle.init(appName:bundleID:content:title:date:isLandingPage:isLoading:)();
        AXRDataLog.getter();
        v56 = v85;
        v94 = *(v85 + 16);
        (v94)(v53, v55, v52);

        v57 = v5;
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          *&v98 = v93;
          *v60 = 136315394;
          v61 = v56;
          v62 = sub_10000A934(v80, v49, &v98);

          *(v60 + 4) = v62;
          *(v60 + 12) = 2080;
          AXRArticle.content.getter();
          v63 = Array.description.getter();
          v65 = v64;

          v66 = *(v61 + 8);
          v66(v53, v90);
          v67 = v66;
          v68 = sub_10000A934(v63, v65, &v98);
          v52 = v90;

          *(v60 + 14) = v68;
          _os_log_impl(&_mh_execute_header, v58, v59, "App Article Content (using text) for %s: %s", v60, 0x16u);
          swift_arrayDestroy();

          (*(v77 + 8))(v81, v78);
        }

        else
        {

          v67 = *(v56 + 8);
          v67(v53, v52);
          (*(v77 + 8))(v57, v78);
        }

        v69 = v91;
        (v94)(v87, v91, v52);
        v70 = v88;
        v71 = v92;
        v72 = v82;
        (*(v88 + 16))(v86, v92, v82);
        v73 = objc_allocWithZone(type metadata accessor for AXRBlockManager());
        v74 = AXRBlockManager.init(article:withPlaybackSpeed:splitStrings:preferredLanguage:useAXRuntimeFetch:)();
        v98 = *(v79 + *(type metadata accessor for AccessibilityReaderApp() + 40));
        v96 = v74;
        sub_100003960(&qword_100018770, &qword_10000E430);
        State.wrappedValue.setter();
        v67(v69, v52);
        (*(v70 + 8))(v71, v72);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100007FBC()
{
  v2 = v0;
  v3 = sub_100003960(&qword_1000187A0, &qword_10000E200);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v94 = &v80 - v5;
  v6 = type metadata accessor for Logger();
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v93 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v92 = &v80 - v11;
  __chkstk_darwin(v10);
  v13 = &v80 - v12;
  v14 = type metadata accessor for AXRPlaybackSpeed();
  v96 = *(v14 - 8);
  v15 = *(v96 + 64);
  v16 = __chkstk_darwin(v14);
  v91 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v99 = &v80 - v18;
  v19 = sub_100003960(&qword_1000187A8, &qword_10000E468);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v80 - v21;
  v106 = type metadata accessor for AXRArticle();
  v101 = *(v106 - 8);
  v23 = *(v101 + 64);
  v24 = __chkstk_darwin(v106);
  v95 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v27 = &v80 - v26;
  __chkstk_darwin(v25);
  v100 = &v80 - v28;
  v29 = *(v0 + 24);
  v104 = *(v0 + 8);
  v105 = v29;
  sub_100003960(&qword_100018760, &qword_10000E428);
  result = State.wrappedValue.getter();
  v31 = v103;
  if (!v103)
  {
    return result;
  }

  v89 = v14;
  v90 = v13;
  v32 = v102;
  v33 = type metadata accessor for AccessibilityReaderApp();
  v34 = *(v0 + *(v33 + 36));

  AXRuntimeClient.currentAppArticle(sceneID:bundleID:)();

  if (v1)
  {
  }

  v87 = v33;
  v88 = 0;
  v35 = v101;
  v36 = v106;
  if ((*(v101 + 48))(v22, 1, v106) == 1)
  {

    return sub_100004384(v22, &qword_1000187A8, &qword_10000E468);
  }

  v37 = v35[4];
  v38 = v100;
  v82 = v35 + 4;
  v81 = v37;
  v37(v100, v22, v36);
  v39 = type metadata accessor for IRSpeechFormatterModel();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v36;
  IRSpeechFormatterModel.init()();
  dispatch thunk of IRSpeechFormatterModel.playbackSpeed.getter();

  AXRDataLog.getter();
  v43 = v35[2];
  v85 = v35 + 2;
  v84 = v43;
  v43(v27, v38, v36);

  v44 = Logger.logObject.getter();
  LODWORD(v38) = static os_log_type_t.debug.getter();

  v83 = v38;
  if (os_log_type_enabled(v44, v38))
  {
    v45 = swift_slowAlloc();
    *&v104 = swift_slowAlloc();
    *v45 = 136315394;
    v46 = v44;
    v47 = sub_10000A934(v32, v31, &v104);

    *(v45 + 4) = v47;
    *(v45 + 12) = 2080;
    AXRArticle.content.getter();
    type metadata accessor for AXRTextContent();
    v48 = Array.description.getter();
    v50 = v49;

    v86 = *(v101 + 8);
    v86(v27, v106);
    v51 = sub_10000A934(v48, v50, &v104);

    *(v45 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v46, v83, "App Article Content (using runtime) for %s: %s", v45, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v86 = v35[1];
    v86(v27, v42);
  }

  v52 = *(v97 + 8);
  v52(v90, v98);
  v53 = v89;
  v54 = *(AXRArticle.content.getter() + 16);

  if (!v54)
  {
    v72 = v92;
    AXRDataLog.getter();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Not refreshing the article in the block manager as we have empty content.", v75, 2u);
    }

    v52(v72, v98);
    (*(v96 + 8))(v99, v53);
    return (v86)(v100, v106);
  }

  v55 = (v2 + *(v87 + 40));
  v56 = *v55;
  v57 = v55[1];
  *&v104 = *v55;
  *(&v104 + 1) = v57;
  sub_100003960(&qword_100018770, &qword_10000E430);
  State.wrappedValue.getter();
  v58 = v102;
  if (!v102)
  {
    v84(v95, v100, v106);
    v76 = v96;
    v77 = v99;
    (*(v96 + 16))(v91, v99, v89);
    v78 = objc_allocWithZone(type metadata accessor for AXRBlockManager());
    v79 = AXRBlockManager.init(article:withPlaybackSpeed:splitStrings:preferredLanguage:useAXRuntimeFetch:)();
    *&v104 = v56;
    *(&v104 + 1) = v57;
    v102 = v79;
    State.wrappedValue.setter();
    (*(v76 + 8))(v77, v89);
    return (v86)(v100, v106);
  }

  v59 = v93;
  AXRDataLog.getter();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "Updating content in existing AXRBlockManager instance", v62, 2u);
  }

  v52(v59, v98);
  AXRBlockManager.reset(_:)(0);
  v63 = type metadata accessor for TaskPriority();
  v64 = v94;
  (*(*(v63 - 8) + 56))(v94, 1, 1, v63);
  v65 = v95;
  v66 = v100;
  v67 = v106;
  v84(v95, v100, v106);
  type metadata accessor for MainActor();
  v68 = v58;
  v69 = static MainActor.shared.getter();
  v70 = (*(v101 + 80) + 40) & ~*(v101 + 80);
  v71 = swift_allocObject();
  *(v71 + 2) = v69;
  *(v71 + 3) = &protocol witness table for MainActor;
  *(v71 + 4) = v68;
  v81(&v71[v70], v65, v67);
  sub_10000483C(0, 0, v64, &unk_10000E478, v71);

  (*(v96 + 8))(v99, v89);
  return (v86)(v66, v67);
}

uint64_t sub_1000089F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v10;
  v5[9] = v9;

  return _swift_task_switch(sub_100008AE4, v10, v9);
}

uint64_t sub_100008AE4()
{
  v1 = *(v0 + 48);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_100008BB0;
  v3 = *(v0 + 48);

  return sub_100009FB0(50000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100008BB0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;

  v6 = v2[6];
  v7 = v2[5];
  v8 = v2[4];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_10000D194;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_100008D44;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100008D44()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];
  v4 = v0[3];

  AXRBlockManager.updateContent(article:splitStrings:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100008DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessibilityReaderApp();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C948();
  v18 = static OS_dispatch_queue.main.getter();
  sub_10000BE54(a2, v17);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_10000BEBC(v17, v21 + v19);
  *(v21 + v20) = a1;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  aBlock[4] = sub_10000CB50;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100009480;
  aBlock[3] = &unk_100014F10;
  v24 = _Block_copy(aBlock);
  v25 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000CBEC(&qword_1000187D8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003960(&qword_1000187E0, &qword_10000E4B0);
  sub_100004678(&qword_1000187E8, &qword_1000187E0, &qword_10000E4B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v32 + 8))(v9, v6);
  return (*(v30 + 8))(v13, v31);
}

uint64_t sub_10000916C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = (a1 + *(type metadata accessor for AccessibilityReaderApp() + 32));
  v18 = v16[1];
  v31 = *v16;
  v17 = v31;
  v32 = v18;
  v30 = a2;
  v19 = a2;
  sub_100003960(&qword_1000187C8, &qword_10000E4A8);
  State.wrappedValue.setter();
  v31 = v17;
  v32 = v18;
  State.wrappedValue.getter();
  if (v30)
  {

    AXRDataLog.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10000A934(a3, a4, &v31);
      _os_log_impl(&_mh_execute_header, v20, v21, "Acquired app switcher appearance for %s", v22, 0xCu);
      sub_10000C274(v23);
    }

    return (*(v9 + 8))(v15, v8);
  }

  else
  {
    AXRDataLog.getter();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_10000A934(a3, a4, &v31);
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to Acquire app switcher appearance for %s", v27, 0xCu);
      sub_10000C274(v28);
    }

    return (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_100009480(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1000094C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AccessibilityReaderApp();
  sub_10000CBEC(&qword_100018570, type metadata accessor for AccessibilityReaderApp);
  static App.main()();
  return 0;
}

uint64_t type metadata accessor for AccessibilityReaderApp()
{
  result = qword_100018660;
  if (!qword_100018660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009628(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003960(&qword_100018600, "<\b");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000096F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003960(&qword_100018600, "<\b");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000097A8()
{
  type metadata accessor for AccessibilityReaderProfileObserver();
  sub_100009938(319, &qword_100018670, &qword_100018678, &qword_10000E358);
  if (v0 <= 0x3F)
  {
    sub_1000098E0();
    if (v1 <= 0x3F)
    {
      sub_100009938(319, &qword_100018688, &qword_100018690, &unk_10000E360);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AXRuntimeClient();
        if (v3 <= 0x3F)
        {
          sub_100009938(319, &qword_100018698, &qword_1000186A0, &qword_10000E1F0);
          if (v4 <= 0x3F)
          {
            sub_10000998C();
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

void sub_1000098E0()
{
  if (!qword_100018680)
  {
    type metadata accessor for ScenePhase();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100018680);
    }
  }
}

void sub_100009938(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100003B10(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10000998C()
{
  if (!qword_1000186A8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1000186A8);
    }
  }
}

uint64_t sub_100009A1C(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_100009AE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003960(&qword_1000186F0, &qword_10000E3E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10000431C(v2, &v17 - v11, &qword_1000186F0, &qword_10000E3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100009CE8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009DE0;

  return v7(a1);
}

uint64_t sub_100009DE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100009ED8(Swift::UInt32 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_100009F44(a1, v4);
}

unint64_t sub_100009F44(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100009FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10000A0B0, 0, 0);
}

uint64_t sub_10000A0B0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_10000CBEC(&qword_1000187B0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000CBEC(&qword_1000187B8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10000A240;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10000A240()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_10000A3FC, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_10000A3FC()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void *sub_10000A468@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10000A828(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10000A828((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10000A828(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10000A828(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10000A828((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_10000A828(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003960(&qword_100018790, &qword_10000E450);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000A934(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000AA00(v11, 0, 0, 1, a1, a2);
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
    sub_10000C31C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C274(v11);
  return v7;
}

unint64_t sub_10000AA00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000AB0C(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10000AB0C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000AB58(a1, a2);
  sub_10000AC88(&off_100014C18);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000AB58(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000AD74(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000AD74(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10000AC88(uint64_t result)
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

  result = sub_10000ADE8(result, v12, 1, v3);
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

void *sub_10000AD74(uint64_t a1, uint64_t a2)
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

  sub_100003960(&qword_100018798, &unk_10000E458);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000ADE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003960(&qword_100018798, &unk_10000E458);
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

uint64_t sub_10000AEDC(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10000B28C(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10000B534(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_10000B28C(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_10000B3BC();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100003960(&qword_100018808, &qword_10000E500);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x800000010000F330;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v25;
  if (v42 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_10000B28C(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_10000B534(v32, 1);
        v33 = *a3;
        v28 = sub_10000B28C(v6, v5);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v6;
      v36[1] = v5;
      v37 = (v35[7] + 16 * v28);
      *v37 = v26;
      v37[1] = v8;
      v38 = v35[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v35[2] = v39;
      v4 += 4;
      if (v42 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

unint64_t sub_10000B28C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000B304(a1, a2, v6);
}

unint64_t sub_10000B304(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10000B3BC()
{
  v1 = v0;
  sub_100003960(&qword_100018800, &qword_10000E4F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_10000B534(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003960(&qword_100018800, &qword_10000E4F8);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_10000B7F4(void *a1, int64_t a2, char a3)
{
  result = sub_10000B834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000B814(size_t a1, int64_t a2, char a3)
{
  result = sub_10000B968(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000B834(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003960(&qword_100018810, &qword_10000E508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003960(&qword_100018818, &unk_10000E510);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10000B968(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003960(&qword_100018788, &qword_10000E448);
  v10 = *(type metadata accessor for AXRTextContent() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AXRTextContent() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_10000BB40()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedConnection];
  if (v5)
  {
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 effectiveBoolValueForSetting:v7];

    if (v8 == 2)
    {
      AXRDataLog.getter();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Accessibility Reader disabled via profile change - exiting app immediately", v11, 2u);
      }

      (*(v1 + 8))(v4, v0);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

unint64_t sub_10000BD44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100003960(&qword_1000186F8, &qword_10000E3E8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_100009ED8(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 2);
    v13 = *v7;

    result = sub_100009ED8(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityReaderApp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BEBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityReaderApp();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BF20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessibilityReaderApp() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000058F4(v4, a1);
}

unint64_t sub_10000BF90()
{
  result = qword_100018730;
  if (!qword_100018730)
  {
    sub_100003B10(&qword_100018728, &qword_10000E418);
    sub_10000C048();
    sub_100004678(&qword_100018740, &qword_100018748, &qword_10000E420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018730);
  }

  return result;
}

unint64_t sub_10000C048()
{
  result = qword_100018738;
  if (!qword_100018738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018738);
  }

  return result;
}

void sub_10000C09C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AccessibilityReaderApp() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100006548(a1, a2, v6);
}

void sub_10000C11C(void *a1, void *a2)
{
  v5 = *(type metadata accessor for AccessibilityReaderApp() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10000753C(a1, a2, v6);
}

unint64_t sub_10000C19C()
{
  result = qword_100018768;
  if (!qword_100018768)
  {
    sub_100003B10(&qword_100018678, &qword_10000E358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018768);
  }

  return result;
}

uint64_t sub_10000C218(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityReaderApp();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C274(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000C2C0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10000C31C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C378()
{
  v1 = type metadata accessor for AXRArticle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C444(uint64_t a1)
{
  v4 = *(type metadata accessor for AXRArticle() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003EBC;

  return sub_1000089F0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10000C53C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C574(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000046CC;

  return sub_100009CE8(a1, v5);
}

uint64_t sub_10000C62C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003EBC;

  return sub_100009CE8(a1, v5);
}

uint64_t sub_10000C6E4()
{
  v1 = type metadata accessor for AccessibilityReaderApp();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 48);

  v10 = v1[7];
  sub_100003960(&qword_1000186F0, &qword_10000E3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v5 + v1[8];

  v15 = *(v14 + 8);

  v16 = v5 + v1[10];
  v17 = *(v16 + 8);

  v18 = *(v5 + v1[11] + 8);

  v19 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16, v2 | 7);
}

uint64_t sub_10000C890(void *a1)
{
  v3 = *(type metadata accessor for AccessibilityReaderApp() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100008DC4(a1, v1 + v4, v6, v7);
}

uint64_t sub_10000C930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000C948()
{
  result = qword_1000187D0;
  if (!qword_1000187D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000187D0);
  }

  return result;
}

uint64_t sub_10000C994()
{
  v1 = type metadata accessor for AccessibilityReaderApp();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 48);

  v10 = v1[7];
  sub_100003960(&qword_1000186F0, &qword_10000E3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = v5 + v1[8];

  v16 = *(v15 + 8);

  v17 = v5 + v1[10];
  v18 = *(v17 + 8);

  v19 = *(v5 + v1[11] + 8);

  v20 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16, v2 | 7);
}

uint64_t sub_10000CB50()
{
  v1 = *(type metadata accessor for AccessibilityReaderApp() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_10000916C(v0 + v2, v4, v6, v7);
}

uint64_t sub_10000CBEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000CC34@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.axRuntimeClient.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000CC90()
{
  v1 = type metadata accessor for AccessibilityReaderApp();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 48);

  v10 = v1[7];
  sub_100003960(&qword_1000186F0, &qword_10000E3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = v5 + v1[8];

  v14 = *(v13 + 8);

  v15 = v5 + v1[10];
  v16 = *(v15 + 8);

  v17 = *(v5 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000CE24()
{
  v1 = *(type metadata accessor for AccessibilityReaderApp() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_100005C58();
}

Swift::Int sub_10000CE88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003960(&qword_1000187F0, &qword_10000E4E8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10000D044()
{
  sub_100003B10(&qword_100018708, &qword_10000E3F8);
  sub_100003B10(&qword_100018678, &qword_10000E358);
  sub_100003B10(&qword_100018700, &qword_10000E3F0);
  type metadata accessor for ScenePhase();
  sub_100004678(&qword_100018750, &qword_100018700, &qword_10000E3F0);
  sub_10000CBEC(&qword_100018758, &type metadata accessor for ScenePhase);
  swift_getOpaqueTypeConformance2();
  sub_10000C19C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}