unint64_t sub_1004E8CC4()
{
  result = qword_1019240A0;
  if (!qword_1019240A0)
  {
    sub_1000D6664(&qword_1019240A8);
    sub_1000D6664(&qword_1019240B0);
    sub_1004E8DB8();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190A108, &qword_10190A110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019240A0);
  }

  return result;
}

unint64_t sub_1004E8DB8()
{
  result = qword_1019240B8;
  if (!qword_1019240B8)
  {
    sub_1000D6664(&qword_1019240B0);
    sub_1000D6664(&qword_1019240C0);
    sub_1000D6664(&qword_1019240C8);
    sub_1000414C8(&qword_1019240D0, &qword_1019240C8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_1019240D8, &qword_1019240E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019240B8);
  }

  return result;
}

uint64_t sub_1004E8F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteItemsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E8F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteItemsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1004E9000(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for RouteItemsView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1004E7B54(a1, a2, v6);
}

uint64_t sub_1004E9080@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_1004E9214(v4);
}

uint64_t sub_1004E9134()
{
  swift_getKeyPath();
  sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1004E9214(uint64_t a1)
{
  if (a1 < 0)
  {
  }
}

uint64_t sub_1004E9284()
{
  type metadata accessor for RouteItemsView();

  return sub_1004E8584();
}

uint64_t sub_1004E9304(uint64_t a1)
{

  if (a1 < 0)
  {
  }

  return result;
}

uint64_t sub_1004E9374@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1004E9444@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001574D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1004E9530(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001574D4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000D3B90(v4, v3);
}

uint64_t sub_1004E968C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100060ED0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1004E9778(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001552C0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000D3B90(v4, v3);
}

uint64_t sub_1004E98EC()
{
  type metadata accessor for RouteItemsView();

  return sub_1004E7A54();
}

uint64_t sub_1004E99B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_1000CE6B8(a5);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_1000D2DFC(a1, &v14 - v11, a5);
  return a7(v12);
}

unint64_t sub_1004E9A64()
{
  result = qword_1019241B0;
  if (!qword_1019241B0)
  {
    sub_1000D6664(&qword_101924118);
    sub_1004E9B1C();
    sub_1000414C8(&qword_10190A118, &qword_10190A120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019241B0);
  }

  return result;
}

unint64_t sub_1004E9B1C()
{
  result = qword_1019241B8;
  if (!qword_1019241B8)
  {
    sub_1000D6664(&qword_1019241A0);
    sub_1004E9BD4();
    sub_1000414C8(&qword_10190A3B8, &qword_10190A3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019241B8);
  }

  return result;
}

unint64_t sub_1004E9BD4()
{
  result = qword_1019241C0;
  if (!qword_1019241C0)
  {
    sub_1000D6664(&qword_101924198);
    sub_1004E9C8C();
    sub_1000414C8(&qword_10190CD48, &qword_10190CD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019241C0);
  }

  return result;
}

unint64_t sub_1004E9C8C()
{
  result = qword_1019241C8;
  if (!qword_1019241C8)
  {
    sub_1000D6664(&qword_101924190);
    sub_1004EA2AC(&qword_1019241D0, &qword_1019241D8, &unk_10120C598, sub_1004E9D70);
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019241C8);
  }

  return result;
}

unint64_t sub_1004E9D70()
{
  result = qword_1019241E0;
  if (!qword_1019241E0)
  {
    sub_1000D6664(&qword_1019241E8);
    sub_1000414C8(&qword_101924188, &qword_101924110);
    sub_1004EA814(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019241E0);
  }

  return result;
}

uint64_t sub_1004E9E70(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RouteItemsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1004E9EFC()
{
  result = qword_1019241F8;
  if (!qword_1019241F8)
  {
    sub_1000D6664(&qword_1019241F0);
    sub_1004EA994(&qword_101924200, &qword_101924208, &unk_10120C5B0, sub_1004E9FB4);
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019241F8);
  }

  return result;
}

unint64_t sub_1004E9FB4()
{
  result = qword_101924210;
  if (!qword_101924210)
  {
    sub_1000D6664(&qword_101924218);
    sub_1000D6664(&qword_10190C920);
    sub_1000D6664(&qword_10190C918);
    sub_1000414C8(&qword_10190C940, &qword_10190C920);
    sub_1000414C8(&qword_10190C948, &qword_10190C918);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924210);
  }

  return result;
}

unint64_t sub_1004EA110()
{
  result = qword_101924228;
  if (!qword_101924228)
  {
    sub_1000D6664(&qword_101924168);
    sub_1004EA1C8();
    sub_1000414C8(&qword_10190CD48, &qword_10190CD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924228);
  }

  return result;
}

unint64_t sub_1004EA1C8()
{
  result = qword_101924230;
  if (!qword_101924230)
  {
    sub_1000D6664(&qword_101924238);
    sub_1004EA2AC(&qword_101924240, &qword_101924248, &unk_10120C5D0, sub_1004EA330);
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924230);
  }

  return result;
}

uint64_t sub_1004EA2AC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004EA330()
{
  result = qword_101924250;
  if (!qword_101924250)
  {
    sub_1000D6664(&qword_101924258);
    sub_1000414C8(&qword_101924260, &qword_101924160);
    sub_1004EA814(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924250);
  }

  return result;
}

uint64_t sub_1004EA418()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 16);
  if (*(v0 + 18))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_1004E4C38(v2 | v3, *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

unint64_t sub_1004EA450()
{
  result = qword_101924280;
  if (!qword_101924280)
  {
    sub_1000D6664(&qword_101924278);
    sub_1004EA4D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924280);
  }

  return result;
}

unint64_t sub_1004EA4D4()
{
  result = qword_101924288;
  if (!qword_101924288)
  {
    sub_1000D6664(&qword_101924290);
    sub_1004EA560();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924288);
  }

  return result;
}

unint64_t sub_1004EA560()
{
  result = qword_101924298;
  if (!qword_101924298)
  {
    sub_1000D6664(&qword_1019242A0);
    sub_1004EA5F8();
    sub_1004EA64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924298);
  }

  return result;
}

unint64_t sub_1004EA5F8()
{
  result = qword_1019242A8;
  if (!qword_1019242A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019242A8);
  }

  return result;
}

unint64_t sub_1004EA64C()
{
  result = qword_1019242B0;
  if (!qword_1019242B0)
  {
    sub_1000D6664(&qword_1019242B8);
    sub_1001D31B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019242B0);
  }

  return result;
}

id sub_1004EA6E0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = UIView.annotateView(with:);
  a1[2] = 0;
  return v2;
}

uint64_t sub_1004EA718(uint64_t (*a1)(void, void, void, void))
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 24);
  if (*(v1 + 26))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return a1(*(v1 + 16), v3 | v4, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1004EA758()
{
  v1 = *(type metadata accessor for RouteItemsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[2];
  v6 = *(v3 + 1);
  if (v3[1])
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v4;
  if (v5)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  return sub_1004E5468(v0 + v2, v8 | v9, v6);
}

uint64_t sub_1004EA814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004EA85C()
{
  type metadata accessor for RouteItemsView();

  return sub_1004E5E58();
}

unint64_t sub_1004EA8DC()
{
  result = qword_1019242F0;
  if (!qword_1019242F0)
  {
    sub_1000D6664(&qword_1019242E8);
    sub_1004EA994(&qword_1019242F8, &qword_101924300, L"^'(", sub_1004EAA1C);
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019242F0);
  }

  return result;
}

uint64_t sub_1004EA994(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004EAA1C()
{
  result = qword_101924308;
  if (!qword_101924308)
  {
    sub_1000D6664(&qword_101924310);
    sub_1004EA5F8();
    sub_1000414C8(&unk_10190D690, &qword_10190BE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924308);
  }

  return result;
}

uint64_t sub_1004EAAE8()
{
  v1 = *(type metadata accessor for RouteItemsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);

  return sub_1004E673C(v0 + v2, v4, v5, v6);
}

uint64_t sub_1004EABA0()
{
  v1 = *(type metadata accessor for RouteItemsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004E605C((v0 + v2), v3);
}

uint64_t sub_1004EAC2C()
{
  v1 = (type metadata accessor for RouteItemsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[7];
  v7 = type metadata accessor for EditMode();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_1000CE6B8(&qword_10190CA30);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1004EADA4(uint64_t a1)
{
  v3 = *(type metadata accessor for RouteItemsView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004E6208(a1, (v1 + v4), v5);
}

uint64_t sub_1004EAE74()
{
  swift_getKeyPath();
  sub_1004EC2B8(&qword_101923F38, type metadata accessor for RouteItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded);
}

uint64_t sub_1004EAF1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004EC2B8(&qword_101923F38, type metadata accessor for RouteItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded);
  return result;
}

uint64_t sub_1004EAFF4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1004EC2B8(&qword_101923F38, type metadata accessor for RouteItem);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_1004EB10C(void *a1)
{
  v2 = v1;
  v101 = type metadata accessor for RichTextType();
  v4 = *(v101 - 8);
  __chkstk_darwin(v101);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for RichTextViewModel();
  v102 = *(v97 - 8);
  v7 = __chkstk_darwin(v97);
  v96 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v99 = &v95 - v10;
  __chkstk_darwin(v9);
  v98 = &v95 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObservationRegistrar.init()();
  v16 = [a1 routeID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v13 + 32))(v2 + OBJC_IVAR____TtC4Maps9RouteItem_id, v15, v12);
  v17 = [a1 userProvidedName];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = (v2 + OBJC_IVAR____TtC4Maps9RouteItem_title);
  *v21 = v18;
  v21[1] = v20;
  if ([a1 isAvailableForCurrentCountry] && (v22 = objc_msgSend(a1, "address")) != 0)
  {

    v23 = [a1 address];
    v24 = [v23 cityAndAboveNoCurrentCountryWithFallback:1];

    if (!v24)
    {
      v25 = [a1 address];
      v24 = [v25 name];

      if (!v24)
      {
        __break(1u);
        return;
      }
    }

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = (v2 + OBJC_IVAR____TtC4Maps9RouteItem_subtitle);
  *v29 = v26;
  v29[1] = v28;
  v30 = type metadata accessor for RouteItemImageProvider();
  v31 = swift_allocObject();
  v32 = a1;
  UUID.init()();
  *(v31 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__image) = 0;
  v33 = String._bridgeToObjectiveC()();
  v34 = [objc_opt_self() imageNamed:v33];

  *(v31 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__placeholderImage) = v34;
  *(v31 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__cacheKey) = 0;
  ObservationRegistrar.init()();
  *(v31 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData) = v32;
  v35 = (v2 + OBJC_IVAR____TtC4Maps9RouteItem_imageProvider);
  *(v2 + OBJC_IVAR____TtC4Maps9RouteItem_imageProvider + 24) = v30;
  v35[4] = sub_1004EC2B8(&unk_101924450, type metadata accessor for RouteItemImageProvider);
  *v35 = v31;
  v36 = [v32 isAvailableForCurrentCountry];
  *(v2 + OBJC_IVAR____TtC4Maps9RouteItem_isAvailable) = v36;
  *(v2 + OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded) = 0;
  *(v2 + OBJC_IVAR____TtC4Maps9RouteItem_isRouteCreationAvailable) = GEOConfigGetBOOL();
  [v32 distance];
  v37 = GEOStringForDistance();
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = (v2 + OBJC_IVAR____TtC4Maps9RouteItem_routeLength);
  *v41 = v38;
  v41[1] = v40;
  v42 = [v32 elevationProfile];
  v43 = [v42 isValid];
  v100 = v42;
  if (v43)
  {
    [v42 sumElevationGainCm];
    v44 = GEOStringForDistance();
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v42 = v100;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  v48 = (v2 + OBJC_IVAR____TtC4Maps9RouteItem_totalAscent);
  *v48 = v45;
  v48[1] = v47;
  if ([v42 isValid])
  {
    [v42 sumElevationLossCm];
    v49 = GEOStringForDistance();
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  v53 = v97;
  v54 = (v2 + OBJC_IVAR____TtC4Maps9RouteItem_totalDescent);
  *v54 = v50;
  v54[1] = v52;
  v55 = v41[1];
  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = *v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {
    v57 = v101;
    (*(v4 + 104))(v6, enum case for RichTextType.hikeLength(_:), v101);

    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v4 + 8))(v6, v57);
    v58 = sub_100355BD8(0, 1, 1, &_swiftEmptyArrayStorage);
    v60 = v58[2];
    v59 = v58[3];
    if (v60 >= v59 >> 1)
    {
      v58 = sub_100355BD8(v59 > 1, v60 + 1, 1, v58);
    }

    v58[2] = v60 + 1;
    (*(v102 + 32))(v58 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v60, v98, v53);
  }

  else
  {
    v58 = &_swiftEmptyArrayStorage;
  }

  v61 = *v48;
  v62 = v48[1];
  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {
    v64 = v101;
    (*(v4 + 104))(v6, enum case for RichTextType.hikeAscent(_:), v101);

    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v4 + 8))(v6, v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_100355BD8(0, v58[2] + 1, 1, v58);
    }

    v66 = v58[2];
    v65 = v58[3];
    v67 = v96;
    if (v66 >= v65 >> 1)
    {
      v58 = sub_100355BD8(v65 > 1, v66 + 1, 1, v58);
    }

    v58[2] = v66 + 1;
    (*(v102 + 32))(v58 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v66, v99, v53);
  }

  else
  {
    v67 = v96;
  }

  v68 = *v54;
  v69 = v54[1];
  v70 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v70 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (v70)
  {
    v71 = v101;
    (*(v4 + 104))(v6, enum case for RichTextType.hikeDescent(_:), v101);

    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v4 + 8))(v6, v71);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_100355BD8(0, v58[2] + 1, 1, v58);
    }

    v73 = v58[2];
    v72 = v58[3];
    v74 = v100;
    if (v73 >= v72 >> 1)
    {
      v58 = sub_100355BD8(v72 > 1, v73 + 1, 1, v58);
    }

    v58[2] = v73 + 1;
    (*(v102 + 32))(v58 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v73, v67, v53);
  }

  else
  {
    v74 = v100;
  }

  *(v2 + OBJC_IVAR____TtC4Maps9RouteItem_hikeInfoViewModel) = v58;
  v75 = [v32 userProvidedNotes];
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  v79 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v79 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (v79)
  {
    v80 = [v32 userProvidedNotes];
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
  }

  else
  {
    v81 = 0;
    v83 = 0xE000000000000000;
  }

  v84 = (v2 + OBJC_IVAR____TtC4Maps9RouteItem_notes);
  *v84 = v81;
  v84[1] = v83;
  v85 = objc_opt_self();
  v86 = [v32 boundingMapRegion];
  v87 = [v85 _maps_offlineCoverageRegionForRouteBounds:v86];

  v88 = [objc_opt_self() sharedHelper];
  v89 = [v88 subscriptionInfoForRegion:v87];

  if (!v89)
  {

    return;
  }

  v90 = [v89 state];
  v91 = [v90 loadState];

  if ((v91 - 1) < 2)
  {
    v93 = OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded;
    if (*(v2 + OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded) == 1)
    {

      *(v2 + v93) = 1;
      return;
    }

    goto LABEL_54;
  }

  if (v91 && v91 != 3)
  {
    v92 = OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded;
    if (*(v2 + OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded))
    {
LABEL_54:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v103 = v2;
      sub_1004EC2B8(&qword_101923F38, type metadata accessor for RouteItem);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }
  }

  else
  {
    v92 = OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded;
    if (*(v2 + OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded))
    {
      goto LABEL_54;
    }
  }

  *(v2 + v92) = 0;
}

uint64_t sub_1004EBEF8()
{
  v1 = OBJC_IVAR____TtC4Maps9RouteItem_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10004E3D0(v0 + OBJC_IVAR____TtC4Maps9RouteItem_imageProvider);

  v3 = OBJC_IVAR____TtC4Maps9RouteItem___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1004EC030()
{
  sub_1004EBEF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RouteItem()
{
  result = qword_101924368;
  if (!qword_101924368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004EC0DC()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1004EC224@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC4Maps9RouteItem_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1004EC2B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004EC360@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1004EF7FC(&qword_101924580, type metadata accessor for RouteItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1004EC438()
{
  swift_getKeyPath();
  sub_1004EF7FC(&qword_101924580, type metadata accessor for RouteItemsController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1004EC4F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004EF7FC(&qword_101924580, type metadata accessor for RouteItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps20RouteItemsController__isAllSavedRoutes);
  return result;
}

uint64_t sub_1004EC5CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004EF7FC(&qword_101924580, type metadata accessor for RouteItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps20RouteItemsController__routeById;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1004EC6C0()
{
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_1004E9214(v1);
  return v1;
}

uint64_t sub_1004EC780(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v28 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_22:
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_23:
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_3:
  v8 = 0;
  v26 = a1 & 0xC000000000000001;
  v23 = (v5 + 2);
  v24 = (v5 + 1);
  v9 = _swiftEmptyArrayStorage;
  v25 = a1;
  do
  {
    v22 = v9;
    v10 = v8;
    v11 = v28;
    while (1)
    {
      if (v26)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v27 + 16))
        {
          goto LABEL_21;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v14 = v2;
      v15 = v2[6];
      (*v23)(v11, *&v12[OBJC_IVAR____TtC4Maps21RouteItemRowViewModel_routeItem] + OBJC_IVAR____TtC4Maps9RouteItem_id, v4);
      swift_getKeyPath();
      v29 = v15;
      sub_1004EF7FC(&qword_101924580, type metadata accessor for RouteItemsController);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = OBJC_IVAR____TtC4Maps20RouteItemsController__routeById;
      swift_beginAccess();
      v5 = *(v15 + v16);
      if (v5[2])
      {
        break;
      }

LABEL_6:
      v2 = v14;
      v11 = v28;
      (*v24)(v28, v4);
      ++v10;
      a1 = v25;
      if (v8 == v7)
      {
        v9 = v22;
        goto LABEL_24;
      }
    }

    v17 = sub_1002972F8(v11);
    if ((v18 & 1) == 0)
    {

      goto LABEL_6;
    }

    v19 = *(v5[7] + 8 * v17);

    (*v24)(v28, v4);

    v5 = &v30;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v2 = v14;
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v30;
    a1 = v25;
  }

  while (v8 != v7);
LABEL_24:
  swift_getKeyPath();
  v30 = v2;
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = v2[21];
  if (v20)
  {

    v20(v9);
    sub_1000588AC(v20);
  }
}

void sub_1004ECB8C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(a1 + OBJC_IVAR____TtC4Maps21RouteItemRowViewModel_routeItem) + OBJC_IVAR____TtC4Maps9RouteItem_id, v3, v5);
  v8 = sub_1004E095C(v7);
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    swift_getKeyPath();
    v10[1] = v1;
    sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v1 + 88);
    if (v9)
    {

      v9(v8);
      sub_1000588AC(v9);
    }
  }
}

void sub_1004ECD44(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(a1 + OBJC_IVAR____TtC4Maps21RouteItemRowViewModel_routeItem) + OBJC_IVAR____TtC4Maps9RouteItem_id, v3, v5);
  v8 = sub_1004E095C(v7);
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    swift_getKeyPath();
    v10[1] = v1;
    sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v1 + 184);
    if (v9)
    {

      v9(v8);
      sub_1000588AC(v9);
    }
  }
}

uint64_t sub_1004ECEFC()
{
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

uint64_t sub_1004ECF9C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v32 = type metadata accessor for UUID();
  v7 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_22:
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_3:
  v11 = 0;
  v28 = (v7 + 16);
  v29 = (v7 + 8);
  v30 = a1 & 0xC000000000000001;
  v12 = _swiftEmptyArrayStorage;
  do
  {
    v24 = v12;
    v13 = v11;
    while (1)
    {
      if (v30)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v31 + 16))
        {
          goto LABEL_21;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v16 = v5;
      v17 = v5[6];
      (*v28)(v9, *&v14[OBJC_IVAR____TtC4Maps21RouteItemRowViewModel_routeItem] + OBJC_IVAR____TtC4Maps9RouteItem_id, v32);
      swift_getKeyPath();
      v33 = v17;
      sub_1004EF7FC(&qword_101924580, type metadata accessor for RouteItemsController);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v7 = OBJC_IVAR____TtC4Maps20RouteItemsController__routeById;
      swift_beginAccess();
      v18 = *(v17 + v7);
      if (*(v18 + 16))
      {
        break;
      }

LABEL_6:
      v5 = v16;
      (*v29)(v9, v32);
      ++v13;
      if (v11 == v10)
      {
        v12 = v24;
        goto LABEL_24;
      }
    }

    v19 = sub_1002972F8(v9);
    if ((v20 & 1) == 0)
    {

      goto LABEL_6;
    }

    v21 = *(*(v18 + 56) + 8 * v19);

    (*v29)(v9, v32);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v5 = v16;
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = v34;
  }

  while (v11 != v10);
LABEL_24:
  swift_getKeyPath();
  v34 = v5;
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = v5[13];
  if (v22)
  {

    v22(v12, v25, v26, v27);
    sub_1000588AC(v22);
  }
}

uint64_t sub_1004ED394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  sub_1004E9214(a2);
  return sub_1004E9304(v4);
}

uint64_t sub_1004ED3F0(uint64_t result)
{
  if (*(v1 + 40) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1004ED4F4()
{
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004ED5A8()
{
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004ED65C()
{
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004ED710@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1004ED7FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1004ED958()
{
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 104);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004EDA0C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2, uint64_t *a3)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1004EF898;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1004EDAF8(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(v5, v6, sub_1001552C0, v9);
}

uint64_t sub_1004EDBA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1004EF890;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1004EDCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t *, void *))
{
  v11 = a2;
  v12 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_100060ED0;
  v10[1] = v8;

  a5(&v12, &v11, v10);
}

uint64_t sub_1004EDDA4()
{
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 120);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004EDE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1004EDEA4()
{
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 136);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004EDF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 136);
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1004EDFA4()
{
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 152);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004EE058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 152);
  *(a1 + 152) = a2;
  *(a1 + 160) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1004EE0A4()
{
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 168);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004EE158@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 168);
  v5 = *(v3 + 176);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100186B88;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1004EE244(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1004EE3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  *(a1 + 168) = a2;
  *(a1 + 176) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1004EE3EC()
{
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 184);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004EE4A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 184);
  v5 = *(v3 + 192);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1004EE58C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1004EE6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  *(a1 + 184) = a2;
  *(a1 + 192) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1004EE734(unint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  *(v4 + 184) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 56) = 0u;
  ObservationRegistrar.init()();
  *(v4 + 16) = 0x10000;
  *(v4 + 24) = _swiftEmptyArrayStorage;
  v8 = type metadata accessor for RouteItemsController();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v9 = objc_allocWithZone(v8);
  *(v4 + 48) = sub_1004E02D8(a1, a2, a3);
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1004EE890();
  return v4;
}

uint64_t sub_1004EE890()
{
  withObservationTracking<A>(_:onChange:)();
  swift_getKeyPath();
  sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1004E9304(v5);

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v2 = *(v0 + 40);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 40) = v4;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

void sub_1004EEA74(unsigned __int8 a1, uint64_t a2)
{
  v4 = sub_1004E095C(a2 + OBJC_IVAR____TtC4Maps9RouteItem_id);
  if (v4)
  {
    v5 = v4;
    if (a1 > 2u)
    {
      if (a1 - 4 < 2)
      {
        swift_getKeyPath();
        sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v7 = v2[13];
        if (v7)
        {
          sub_1000CE6B8(&qword_101908400);
          v8 = swift_allocObject();
          *(v8 + 16) = xmmword_1011E47B0;
          *(v8 + 32) = v5;
          sub_1000CD9D4(v7);
          v9 = v5;
          v7(v8, 0, UIView.annotateView(with:), 0);

          sub_1000588AC(v7);

          return;
        }

        goto LABEL_13;
      }

      swift_getKeyPath();
      sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = v2[19];
      if (v6)
      {
        goto LABEL_12;
      }
    }

    else if (a1)
    {
      swift_getKeyPath();
      sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = v2[17];
      if (v6)
      {
LABEL_12:

        v6(v5);
        sub_1000588AC(v6);
      }
    }

    else
    {
      swift_getKeyPath();
      sub_1004EF7FC(&unk_101924650, type metadata accessor for RouteItemsViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = v2[15];
      if (v6)
      {
        goto LABEL_12;
      }
    }

LABEL_13:
  }
}

void sub_1004EED80(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(a1 + 48);
  swift_getKeyPath();
  sub_1004EF7FC(&qword_101924580, type metadata accessor for RouteItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = v2;
  v3 = *(v2 + OBJC_IVAR____TtC4Maps20RouteItemsController__availableRoutes);
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v4 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v6;
      objc_allocWithZone(type metadata accessor for RouteItemRowViewModel());

      sub_1004DD570(v10, sub_1004EFB40, v9);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v5;
    }

    while (v7 != v4);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v27 + OBJC_IVAR____TtC4Maps20RouteItemsController__unavailableRoutes);
  if (v3 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v13 = *(v3 + 8 * v12 + 32);

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_34;
        }
      }

      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v13;
      objc_allocWithZone(type metadata accessor for RouteItemRowViewModel());

      sub_1004DD570(v17, sub_1004EFAEC, v16);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v12;
    }

    while (v14 != v11);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_31;
    }
  }

  else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    v18 = 0x8000000000000000;
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v27 + OBJC_IVAR____TtC4Maps20RouteItemsController__isAllSavedRoutes);
  BOOL = GEOConfigGetBOOL();
  v22 = [objc_opt_self() sharedHelper];
  v23 = [v22 isUsingOfflineMaps];

  if (v23)
  {
    v24 = 0x10000;
  }

  else if (GEOConfigGetBOOL())
  {
    v24 = 0;
  }

  else
  {
    v24 = 0x10000;
  }

  v19 = 0;
  v25 = 256;
  if (!BOOL)
  {
    v25 = 0;
  }

  v18 = v25 | v24 | v20 ^ 1u;
LABEL_47:
  *a2 = v18;
  a2[1] = _swiftEmptyArrayStorage;
  a2[2] = v19;
}

uint64_t sub_1004EF2D4(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004EEA74(a1, a3);
  }

  return result;
}

uint64_t sub_1004EF348()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10020AAE4(0, 0, v2, &unk_10120CA28, v6);
}

uint64_t sub_1004EF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004EF534, v6, v5);
}

uint64_t sub_1004EF534()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1004EE890();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004EF5C4()
{
  sub_1004E9304(*(v0 + 16));

  sub_1000588AC(*(v0 + 56));
  sub_1000588AC(*(v0 + 72));
  sub_1000588AC(*(v0 + 88));
  sub_1000588AC(*(v0 + 104));
  sub_1000588AC(*(v0 + 120));
  sub_1000588AC(*(v0 + 136));
  sub_1000588AC(*(v0 + 152));
  sub_1000588AC(*(v0 + 168));
  sub_1000588AC(*(v0 + 184));
  v1 = OBJC_IVAR____TtC4Maps19RouteItemsViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1004EF680()
{
  sub_1004EF5C4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RouteItemsViewModel()
{
  result = qword_101924490;
  if (!qword_101924490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004EF72C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004EF7FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004EF844()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 104);
  *(v2 + 104) = v1;
  *(v2 + 112) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_1004EF8A0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 168);
  *(v2 + 168) = v1;
  *(v2 + 176) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_1004EF8F8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 184);
  *(v2 + 184) = v1;
  *(v2 + 192) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_1004EF944()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 56);
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_1004EF9D8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v2[2];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  sub_1004E9214(v1);
  return sub_1004E9304(v5);
}

uint64_t sub_1004EFA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1004EF49C(a1, v4, v5, v6);
}

uint64_t sub_1004EFB44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004F3510(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1004F4170;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1004EFC30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1004F41E0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1004F3510(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1004EFD8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004F3510(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 136);
  v5 = *(v3 + 144);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1004F4170;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1004EFE78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1004F41E0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1004F3510(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1004EFFD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004F3510(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 152);
  v5 = *(v3 + 160);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000F1DB8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1004F00C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000F1DB0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1004F3510(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

id sub_1004F021C(unint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC4Maps24RouteItemsViewController_activeConversionRouteData] = 0;
  *&v4[OBJC_IVAR____TtC4Maps24RouteItemsViewController_selectedRouteData] = 0;
  *&v4[OBJC_IVAR____TtC4Maps24RouteItemsViewController_availableRoutes] = a1;
  *&v4[OBJC_IVAR____TtC4Maps24RouteItemsViewController_unavailableRoutes] = a2;
  v4[OBJC_IVAR____TtC4Maps24RouteItemsViewController_isAllSavedRoutes] = a3;
  type metadata accessor for RouteItemsViewModel();
  swift_allocObject();

  *&v4[OBJC_IVAR____TtC4Maps24RouteItemsViewController_viewModel] = sub_1004EE734(a1, a2, a3);
  v10.receiver = v4;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1004F0408@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for RouteItemsView();
  a1[4] = sub_1004F3510(&qword_101924648, type metadata accessor for RouteItemsView);
  v2 = sub_10001A848(a1);

  return sub_1004E86D4(v3, v2);
}

void sub_1004F0494()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v0 cardPresentationController];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  [v2 setPresentedModally:1];

  v4 = [v1 cardPresentationController];
  if (!v4)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setTakesAvailableHeight:1];

  v6 = *&v1[OBJC_IVAR____TtC4Maps24RouteItemsViewController_viewModel];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1004F3510(&unk_101924650, type metadata accessor for RouteItemsViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_getKeyPath();
  __chkstk_darwin(v8);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_getKeyPath();
  __chkstk_darwin(v9);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_getKeyPath();
  __chkstk_darwin(v10);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_getKeyPath();
  __chkstk_darwin(v11);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_getKeyPath();
  __chkstk_darwin(v12);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_getKeyPath();
  __chkstk_darwin(v13);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_getKeyPath();
  __chkstk_darwin(v14);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_getKeyPath();
  __chkstk_darwin(v15);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v6 + 16) & 0x8000000000000000) != 0)
  {
    v16 = *(v6 + 24);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v17 = [objc_opt_self() sharedService];
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = v17;
  if (v16 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  dispatch thunk of CustomStringConvertible.description.getter();
  v19 = String._bridgeToObjectiveC()();

  [v18 captureUserAction:21 onTarget:135 eventValue:v19];
}

void sub_1004F0DF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1004F0E48();
  }
}

void sub_1004F0E48()
{
  v1 = [objc_opt_self() sharedService];
  if (!v1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v1;
  [v1 captureUserAction:465 onTarget:135 eventValue:0];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 window];

  if (v5)
  {
    v6 = [v5 windowScene];

    if (v6)
    {
      v7 = [v6 delegate];

      if (v7)
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = [v8 appCoordinator];
          [v9 enterRouteCreation];
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_1004F0FD0(void *a1)
{
  v20 = [objc_allocWithZone(GEORouteBuilder_PersistentData) initWithPersistentData:a1];
  v3 = [v20 buildRoute];
  v4 = [v1 _maps_platformController];
  if (!v4 || (v5 = v4, v6 = [v4 chromeViewController], v5, !v6) || (v21 = objc_msgSend(v6, "currentTraits"), v6, (v7 = v21) == 0))
  {
    v7 = [objc_allocWithZone(GEOMapServiceTraits) init];
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_9:
    v23 = v7;

    v19 = v23;
    goto LABEL_11;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v7)
  {
    v22 = v7;
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = a1;
    v28 = sub_1004F4144;
    v29 = v8;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_1004F41DC;
    v27 = &unk_10161F1D0;
    v9 = _Block_copy(&aBlock);
    v10 = v3;
    v11 = a1;
    v12 = v22;

    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = sub_1004F414C;
    v29 = v13;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_1001FDE68;
    v27 = &unk_10161F1F8;
    v14 = _Block_copy(&aBlock);

    v15 = [v10 _maps_convertToNavigableRouteWithTraits:v12 errorHandler:v9 completionHandler:v14];
    _Block_release(v14);
    _Block_release(v9);

    v16 = [objc_opt_self() sharedService];
    if (v16)
    {
      v17 = v16;
      aBlock = [v11 mapItemMuid];
      dispatch thunk of CustomStringConvertible.description.getter();
      v18 = String._bridgeToObjectiveC()();

      [v17 captureUserAction:480 onTarget:135 eventValue:v18];
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v19 = v20;
LABEL_11:
}

void sub_1004F1338(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      swift_unknownObjectWeakInit();

      sub_1004F378C(a1, v8, a1, a3, a4);

      swift_unknownObjectWeakDestroy();
      return;
    }
  }
}

void sub_1004F1420(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps24RouteItemsViewController_activeConversionRouteData))
  {
    if (qword_101906900 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100021540(v3, qword_1019604B8);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v4;
      *v7 = v4;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Ignoring menu option as there's already an active route conversion: %@", v6, 0xCu);
      sub_100024F64(v7, &qword_1019144F0);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC4Maps24RouteItemsViewController_activeConversionRouteData) = a1;
    v9 = objc_opt_self();
    v10 = a1;
    v11 = [v9 sharedLocationManager];
    if (v11)
    {
      v12 = v11;
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v10;
      aBlock[4] = sub_1004F36F0;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100113C68;
      aBlock[3] = &unk_10161F040;
      v15 = _Block_copy(aBlock);
      v16 = v10;

      v17 = [v12 singleLocationUpdateWithHandler:v15];
      _Block_release(v15);

      if (v17)
      {
        [v17 start];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004F16C8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_1004F1738(void *a1)
{
  v3 = objc_opt_self();
  v4 = [a1 boundingMapRegion];
  v47 = [v3 _maps_offlineDownloadRegionForRouteBounds:v4];

  v5 = [a1 boundingMapRegion];
  v48 = [v3 _maps_offlineCoverageRegionForRouteBounds:v5];

  if (![v1 containeeDelegate])
  {

    v10 = v48;
    goto LABEL_6;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    swift_unknownObjectRelease();
    return;
  }

  v7 = v6;
  v8 = [objc_opt_self() sharedHelper];
  v9 = [v8 subscriptionInfoForRegion:v48];

  if (v9)
  {

    [v7 viewControllerShowOfflineMaps:v1];
    swift_unknownObjectRelease();
    v10 = v47;
LABEL_6:

    return;
  }

  v46 = [objc_allocWithZone(GEORouteBuilder_PersistentData) initWithPersistentData:a1];
  v11 = [v46 buildRoute];
  if (!v11)
  {

    swift_unknownObjectRelease();
    v10 = v46;
    goto LABEL_6;
  }

  v12 = v11;
  v13 = [v11 userProvidedName];
  if (!v13)
  {
    __break(1u);
    goto LABEL_39;
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = [v12 userProvidedName];
    if (v19)
    {
LABEL_18:
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      goto LABEL_22;
    }
  }

  else
  {
    v19 = [v12 name];
    if (v19)
    {
      goto LABEL_18;
    }
  }

  v22 = 0;
LABEL_22:
  v23 = [v1 _maps_platformController];
  if (v23 && (v24 = v23, v25 = [v23 chromeViewController], v24, v25))
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      v28 = [v26 mapView];
      if (v28)
      {
        v29 = v28;
        v30 = swift_allocObject();
        v31 = [v27 acquireHikingMapToken];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        v32 = [v29 _mapLayer];
        if (v32)
        {
          v33 = v32;
          v44 = [v32 applicationSubState];

          v34 = [v29 _mapLayer];
          if (v34)
          {
            v35 = v34;
            [v34 setApplicationSubState:1];

            v36 = v47;
            if (v22)
            {
              v45 = String._bridgeToObjectiveC()();
            }

            else
            {
              v45 = 0;
            }

            v37 = v12;
            v38 = [a1 mapItemMuid];
            v39 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v40 = swift_allocObject();
            *(v40 + 16) = v39;
            *(v40 + 24) = v30;
            *(v40 + 32) = v29;
            *(v40 + 40) = v44;
            aBlock[4] = sub_1004F36E0;
            aBlock[5] = v40;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100271778;
            aBlock[3] = &unk_10161EFA0;
            v41 = _Block_copy(aBlock);

            v42 = v29;

            LOWORD(v43) = 256;
            [v7 viewController:v1 showOfflineMapRegionSelectorForRegion:v47 name:v45 route:v37 muid:v38 shouldUseSessionlessAnalytics:0 shouldShowDataManagementAfterDownload:v43 shouldShowDataManagementAfterDownloadIfRegionDiffers:v41 dismissalBlock:?];

            swift_unknownObjectRelease();
            _Block_release(v41);

            return;
          }

LABEL_40:
          __break(1u);
          return;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_1004F1DD0(void *a1, char a2, char a3)
{
  v7 = *&v3[OBJC_IVAR____TtC4Maps24RouteItemsViewController_selectedRouteData];
  *&v3[OBJC_IVAR____TtC4Maps24RouteItemsViewController_selectedRouteData] = a1;

  v8 = a1;
  if ([v3 containeeDelegate])
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v14 = [objc_allocWithZone(MapsSaveRouteContainee) initWithDelegate:v3 isEditing:a2 & 1 showInitialKeyboard:a3 & 1];
      v11 = [v10 containerViewController];
      if (v11)
      {
        v13 = v11;
        [v11 presentController:v14 animated:1 useDefaultContaineeLayout:0];
        swift_unknownObjectRelease();

        v12 = v13;
      }

      else
      {
        swift_unknownObjectRelease();
        v12 = v14;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1004F1F40(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong containeeDelegate])
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        objc_allocWithZone(type metadata accessor for RouteItemsViewController());

        v6 = sub_1004F021C(_swiftEmptyArrayStorage, a1, 0);
        [v6 setContaineeDelegate:v5];
        v7 = [v5 containerViewController];
        if (v7)
        {
          v8 = v7;
          [v7 presentController:v6 animated:1 useDefaultContaineeLayout:0];

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_1004F2094(void *a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1004F1DD0(a1, a3 & 1, a3 & 1);
  }
}

void sub_1004F2150(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedMapsDelegate];
  if (v12)
  {
    v13 = v12;
    v14 = [a3 storageID];
    if (v14)
    {
      v15 = v14;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v16.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v16.super.isa = 0;
    }

    v17 = [a4 titleString];
    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = String._bridgeToObjectiveC()();
    }

    if (a1)
    {
      a1 = _convertErrorToNSError(_:)();
    }

    [v13 interruptConvertToNavigableSavedRouteID:v16.super.isa routeName:v17 error:a1 directionsError:a2];
  }
}

void sub_1004F2308(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong _maps_mapsSceneDelegate];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 appCoordinator];

      if (v6)
      {
        aBlock[4] = UIView.annotateView(with:);
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100039C64;
        aBlock[3] = &unk_10161F220;
        v7 = _Block_copy(aBlock);
        [v6 enterRouteCreationWithRoute:a1 originMapItem:0 destinationMapItem:0 userInfo:0 completion:v7];
        _Block_release(v7);

        v3 = v6;
      }
    }
  }
}

id sub_1004F2438(char a1, unint64_t a2, uint64_t (*a3)(void))
{
  if ((a1 & 1) == 0)
  {
    return a3();
  }

  if (!(a2 >> 62))
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

    return a3();
  }

LABEL_15:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    return a3();
  }

LABEL_4:
  for (i = 0; ; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(a2 + 8 * i + 32);
    }

    v7 = v6;
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    result = [objc_opt_self() sharedService];
    if (!result)
    {
      break;
    }

    v10 = result;
    aBlock[0] = [v7 mapItemMuid];
    dispatch thunk of CustomStringConvertible.description.getter();
    v11 = String._bridgeToObjectiveC()();

    [v10 captureUserAction:479 onTarget:135 eventValue:v11];

    v12 = objc_opt_self();
    aBlock[4] = UIView.annotateView(with:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002B0058;
    aBlock[3] = &unk_10161F180;
    v13 = _Block_copy(aBlock);
    [v12 deleteRoute:v7 completion:v13];
    _Block_release(v13);

    if (v8 == v4)
    {
      return a3();
    }
  }

  __break(1u);
  return result;
}

void sub_1004F2658(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [objc_allocWithZone(GEORouteBuilder_PersistentData) initWithPersistentData:a4];
    v9 = [v8 buildRoute];
    if (!v9)
    {

      return;
    }

    v10 = v9;
    v68 = v8;
    v11 = [v9 userProvidedName];
    if (!v11)
    {
      __break(1u);
      goto LABEL_44;
    }

    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = [v10 userProvidedName];
      if (v17)
      {
LABEL_8:
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

LABEL_12:
        v22 = [v10 suggestedNavigationModeForLocation:a1 context:1];
        if (!v22)
        {
          if (qword_101906900 != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_100021540(v23, qword_1019604B8);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            aBlock = v65;
            *v26 = 136315138;
            v67 = v21;
            v27 = @"None";
            v28 = v10;
            v29 = v19;
            v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;

            v33 = v30;
            v19 = v29;
            v10 = v28;
            v34 = sub_10004DEB8(v33, v32, &aBlock);

            *(v26 + 4) = v34;
            v21 = v67;
            _os_log_impl(&_mh_execute_header, v24, v25, "Coercing navigation mode to route planning from %s", v26, 0xCu);
            sub_10004E3D0(v65);
          }

          v22 = 4;
        }

        if ([a4 mapItemMuid])
        {
          aBlock = [a4 mapItemMuid];
          dispatch thunk of CustomStringConvertible.description.getter();
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        v37 = [objc_opt_self() sharedService];
        v38 = v37;
        if (v22 != 4)
        {
          if (v37)
          {
            if (v36)
            {
              v40 = String._bridgeToObjectiveC()();
            }

            else
            {
              v40 = 0;
            }

            [v38 captureUserAction:3001 onTarget:135 eventValue:v40];

            v58 = [v7 _maps_platformController];
            if (v58)
            {
              v59 = v58;
              v60 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v61 = swift_allocObject();
              v61[2] = v10;
              v61[3] = v19;
              v61[4] = v21;
              v61[5] = v60;
              v73 = sub_1004F3780;
              v74 = v61;
              aBlock = _NSConcreteStackBlock;
              v70 = 1107296256;
              v71 = sub_1004F41DC;
              v72 = &unk_10161F090;
              v62 = _Block_copy(&aBlock);
              v63 = v10;

              [v59 pushNavigationWithRoute:v63 navigationMode:v22 shouldCheckNavSafetyAlert:1 completion:v62];
              _Block_release(v62);

              return;
            }

LABEL_41:

            return;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v37)
        {
          if (v36)
          {

            v39 = String._bridgeToObjectiveC()();
          }

          else
          {
            v39 = 0;
          }

          [v38 captureUserAction:6003 onTarget:135 eventValue:v39];

          if ([v7 containeeDelegate])
          {
            objc_opt_self();
            v41 = swift_dynamicCastObjCClass();
            if (v41)
            {
              v66 = v41;
              v42 = [objc_allocWithZone(SearchResult) init];
              if (v42)
              {
                v43 = v42;
                [v42 setRouteData:a4];
                v44 = [objc_allocWithZone(SearchFieldItem) init];
                v45 = [objc_opt_self() currentLocationSearchResult];
                [v44 setSearchResult:v45];

                v46 = [objc_allocWithZone(SearchFieldItem) init];
                [v46 setSearchResult:v43];
                sub_1000CE6B8(&qword_101908400);
                v47 = swift_allocObject();
                *(v47 + 16) = xmmword_1011E4FD0;
                *(v47 + 32) = v44;
                *(v47 + 40) = v46;
                v48 = objc_allocWithZone(DirectionItem);
                sub_100014C84(0, &unk_101909910);
                v64 = v44;
                v49 = v46;
                isa = Array._bridgeToObjectiveC()().super.isa;

                v51 = [v48 initWithItems:isa transportType:0];

                if (v51)
                {

                  sub_1000CE6B8(&qword_101917C68);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1011E1D30;
                  aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v70 = v53;
                  AnyHashable.init<A>(_:)();
                  *(inited + 96) = &type metadata for UInt;
                  *(inited + 72) = 1;
                  sub_1000D0EC4(inited);
                  swift_setDeallocating();
                  sub_100024F64(inited + 32, &qword_101907F90);
                  v54 = v7;
                  v55 = v51;
                  v56 = Dictionary._bridgeToObjectiveC()().super.isa;

                  [v66 viewController:v54 doDirectionItem:v55 withUserInfo:v56];

                  swift_unknownObjectRelease();
                  v57 = *&v54[OBJC_IVAR____TtC4Maps24RouteItemsViewController_activeConversionRouteData];
                  *&v54[OBJC_IVAR____TtC4Maps24RouteItemsViewController_activeConversionRouteData] = 0;

                  return;
                }

                goto LABEL_47;
              }

LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
              return;
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          goto LABEL_41;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      v17 = [v10 name];
      if (v17)
      {
        goto LABEL_8;
      }
    }

    v19 = 0;
    v21 = 0;
    goto LABEL_12;
  }
}

void sub_1004F2EA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 | a2))
  {
    goto LABEL_8;
  }

  v14 = v11;
  v15 = [objc_opt_self() sharedMapsDelegate];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = [a3 storageID];
  if (v17)
  {
    v18 = v17;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v13, v14);
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_12:
    v20 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v19.super.isa = 0;
  if (!a5)
  {
    goto LABEL_12;
  }

LABEL_5:
  v20 = String._bridgeToObjectiveC()();
  if (a1)
  {
LABEL_6:
    a1 = _convertErrorToNSError(_:)();
  }

LABEL_7:
  [v16 interruptConvertToNavigableSavedRouteID:v19.super.isa routeName:v20 error:a1 directionsError:a2];

LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = *&Strong[OBJC_IVAR____TtC4Maps24RouteItemsViewController_activeConversionRouteData];
    *&Strong[OBJC_IVAR____TtC4Maps24RouteItemsViewController_activeConversionRouteData] = 0;
  }
}

void sub_1004F3090(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v5(a2, a3);
}

void sub_1004F311C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    memset(v12, 0, sizeof(v12));
    swift_beginAccess();
    sub_100109484(v12, a3 + 16);
    v10 = [a4 _mapLayer];
    if (v10)
    {
      v11 = v10;
      [v10 setApplicationSubState:a5];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004F3210()
{

  v1 = *(v0 + OBJC_IVAR____TtC4Maps24RouteItemsViewController_selectedRouteData);
}

uint64_t sub_1004F3510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004F36F8()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_1019604B8);
  sub_100021540(v0, qword_1019604B8);
  return Logger.init(subsystem:category:)();
}

void sub_1004F378C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v12 = 0xD00000000000001DLL;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  if (a1 >> 62)
  {
    if (a1 < 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14 >= 2)
    {
      goto LABEL_3;
    }

    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 > 1)
    {
LABEL_3:
      v61 = a2;
      v15 = qword_101906768;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = qword_1019600D8;
      v17 = String._bridgeToObjectiveC()();
      v18 = String._bridgeToObjectiveC()();
      v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000CE6B8(&unk_10190D5C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1011E1D30;
      *(v20 + 56) = &type metadata for Int;
      *(v20 + 64) = &protocol witness table for Int;
      *(v20 + 32) = v14;
      static String.localizedStringWithFormat(_:_:)();

      goto LABEL_32;
    }
  }

  if (v14)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {

      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_38;
      }

      v21 = *(a1 + 32);

      v22 = v21;
    }

    v14 = v22;
    v23 = [v22 userProvidedName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = &selRef_userProvidedName;
    }

    else
    {
      v28 = &selRef_routeName;
    }

    v29 = [v14 *v28];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v30;

    v31 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v31 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v61 = a2;
    if (!v31)
    {

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v16 = qword_1019600D8;
      v70._object = 0x800000010123D600;
      v36._countAndFlagsBits = 0xD00000000000002CLL;
      v36._object = 0x800000010123D6B0;
      v37._countAndFlagsBits = 0xD00000000000002BLL;
      v37._object = 0x800000010123D6E0;
      v70._countAndFlagsBits = 0xD00000000000002ALL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, qword_1019600D8, v37, v70);
      goto LABEL_31;
    }

    a2 = "8@GEODirectionsError16";
    p_cache = "Delete Alert Message";
    v12 = 0x800000010123D600;
    if (qword_101906768 == -1)
    {
LABEL_24:
      v16 = qword_1019600D8;
      v69._object = v12;
      v32._countAndFlagsBits = 0xD000000000000024;
      v32._object = (a2 | 0x8000000000000000);
      v33._object = (p_cache | 0x8000000000000000);
      v69._countAndFlagsBits = 0xD00000000000002ALL;
      v33._countAndFlagsBits = 0x1000000000000033;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, qword_1019600D8, v33, v69);
      sub_1000CE6B8(&unk_10190D5C0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1011E1D30;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_1000DA61C();
      *(v34 + 32) = v6;
      *(v34 + 40) = a4;
      String.init(format:_:)();

LABEL_31:

LABEL_32:
      v38 = String._bridgeToObjectiveC()();

      v39 = [objc_opt_self() alertControllerWithTitle:0 message:v38 preferredStyle:0];

      v40 = v39;
      v41 = [v40 view];
      if (v41)
      {
        v42 = v41;
        v43 = String._bridgeToObjectiveC()();
        [v42 setAccessibilityIdentifier:v43];

        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v71._countAndFlagsBits = 0xD000000000000016;
        v71._object = 0x800000010123D650;
        v44._countAndFlagsBits = 0x6574656C6544;
        v45._object = 0x800000010123D630;
        v45._countAndFlagsBits = 0xD00000000000001DLL;
        v44._object = 0xE600000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v16, v44, v71);
        v46 = swift_allocObject();
        *(v46 + 16) = sub_1004F40E0;
        *(v46 + 24) = v13;

        v47 = String._bridgeToObjectiveC()();

        v66 = sub_1004F40EC;
        v67 = v46;
        aBlock = _NSConcreteStackBlock;
        v63 = 1107296256;
        v64 = sub_1001FDE68;
        v65 = &unk_10161F108;
        v48 = _Block_copy(&aBlock);

        v49 = objc_opt_self();
        v50 = [v49 actionWithTitle:v47 style:2 handler:v48];
        _Block_release(v48);

        v51 = v50;
        v52 = String._bridgeToObjectiveC()();
        [v51 setAccessibilityIdentifier:v52];

        [v40 addAction:v51];
        v72._object = 0x800000010123D690;
        v53._countAndFlagsBits = 0x6C65636E6143;
        v54._object = 0x800000010123D670;
        v72._countAndFlagsBits = 0xD00000000000001FLL;
        v54._countAndFlagsBits = 0xD00000000000001DLL;
        v53._object = 0xE600000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v54, 0, v16, v53, v72);
        v55 = swift_allocObject();
        *(v55 + 16) = sub_1004F40E0;
        *(v55 + 24) = v13;

        v56 = String._bridgeToObjectiveC()();

        v66 = sub_1004F4118;
        v67 = v55;
        aBlock = _NSConcreteStackBlock;
        v63 = 1107296256;
        v64 = sub_1001FDE68;
        v65 = &unk_10161F158;
        v57 = _Block_copy(&aBlock);

        v58 = [v49 actionWithTitle:v56 style:1 handler:v57];
        _Block_release(v57);

        v59 = v58;
        v60 = String._bridgeToObjectiveC()();
        [v59 setAccessibilityIdentifier:v60];

        [v40 addAction:v59];
        [v61 _maps_topMostPresentViewController:v40 animated:1 completion:0];
      }

      else
      {

        __break(1u);
      }

      return;
    }

LABEL_38:
    swift_once();
    goto LABEL_24;
  }

  (a4)(v35);
}

id sub_1004F41E4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101923DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10004E374(a1, v14);
  v9 = swift_dynamicCast();
  v10 = *(v6 + 56);
  if (v9)
  {
    v10(v4, 0, 1, v5);
    sub_10027579C(v4, v8);
    v11 = *&v8[*(v5 + 20)];
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v13 = result;
      [result displayRoutePlanningForDestination:v11];

      return sub_10017F128(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10(v4, 1, 1, v5);
    return sub_100339EAC(v4);
  }

  return result;
}

unint64_t sub_1004F43B8()
{
  result = qword_101924660;
  if (!qword_101924660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924660);
  }

  return result;
}

uint64_t sub_1004F440C()
{
  v1 = v0[9];
  v2 = [v1 displayName];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = *v0;
  }

  v11 = v4;
  v5 = v0[7];
  if (v5)
  {
    v6 = v0[6];

    v7._countAndFlagsBits = v6;
    v7._object = v5;
    String.append(_:)(v7);

    v11 = v4;
  }

  [v1 stopId];
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 2108704;
  v9._object = 0xE300000000000000;
  String.append(_:)(v9);

  return v11;
}

uint64_t sub_1004F452C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004F440C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1004F4554(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1004F4808(v7, v9) & 1;
}

void sub_1004F45C0()
{
  String.hash(into:)();
  if (*(v0 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  if (*(v0 + 56))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + 64));
  Hasher._combine(_:)(*(v0 + 80));
  v1 = [*(v0 + 72) departures];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_1000CE6B8(&qword_101924668);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_10:
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        Hasher._combine(_:)([v6 tripIdentifier]);
        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::Int sub_1004F4788()
{
  Hasher.init(_seed:)();
  sub_1004F45C0();
  return Hasher._finalize()();
}

Swift::Int sub_1004F47CC()
{
  Hasher.init(_seed:)();
  sub_1004F45C0();
  return Hasher._finalize()();
}

id sub_1004F4808(uint64_t a1, void *a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == a2[2] && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((*(a1 + 32) != a2[4] || *(a1 + 40) != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v9 = a2[7];
  if (v8)
  {
    if (!v9 || (*(a1 + 48) != a2[6] || v8 != v9) && ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (*(a1 + 64) == a2[8] && *(a1 + 80) == a2[10])
  {
    return [*(a1 + 72) isEqual:a2[9]];
  }

  return 0;
}

void sub_1004F4960(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v30 = v27 - v7;
  __chkstk_darwin(v8);
  v33 = v27 - v9;
  if (a1)
  {
    if (a1 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return;
      }
    }

    if (v10 < 1)
    {
      __break(1u);
    }

    else
    {
      v11 = 0;
      v12 = a1 & 0xC000000000000001;
      v32 = (v31 + 32);
      v28 = (v31 + 16);
      v27[1] = a2;
      v27[2] = v31 + 8;
      v13 = _swiftEmptyArrayStorage;
      v29 = a1;
      do
      {
        if (v12)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(a1 + 8 * v11 + 32);
          swift_unknownObjectRetain();
        }

        if (([v14 isCanceled] & 1) != 0 || (v15 = objc_msgSend(v14, "departureDate")) == 0)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = v30;
          v17 = v15;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v18 = v33;
          v19 = *v32;
          (*v32)(v33, v16, v4);
          (*v28)(v34, v18, v4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_100356378(0, *(v13 + 2) + 1, 1, v13);
          }

          v21 = *(v13 + 2);
          v20 = *(v13 + 3);
          if (v21 >= v20 >> 1)
          {
            v13 = sub_100356378(v20 > 1, v21 + 1, 1, v13);
          }

          swift_unknownObjectRelease();
          v22 = v31;
          (*(v31 + 8))(v33, v4);
          *(v13 + 2) = v21 + 1;
          v19(&v13[((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21], v34, v4);
          a1 = v29;
        }

        ++v11;
      }

      while (v10 != v11);
      v23 = objc_opt_self();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v25 = Date._bridgeToObjectiveC()().super.isa;
      v26 = [v23 _stringForCountdownDepartures:isa referenceDate:v25 isShowingNoConnectionEmDash:0];

      if (v26)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }
  }
}

uint64_t sub_1004F4CEC(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  v7 = type metadata accessor for Date();
  v74 = *(v7 - 8);
  __chkstk_darwin(v7);
  v72 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v69 - v10;
  v12 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  __chkstk_darwin(v18);
  v20 = &v69 - v19;
  v22 = __chkstk_darwin(v21);
  v24 = &v69 - v23;
  v25 = a1;
  v26 = sub_1004F62E4([a1 departureTimeDisplayStyle]);
  if (v26 >= 2)
  {
    v73 = a3;
    if (v26 == 2)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v32 = [a1 firstDepartureOnOrAfterDate:isa];

      if (!v32)
      {
        v28 = 0;
        v29 = v25;
        goto LABEL_25;
      }

      v33 = [v32 scheduledDepartureDate];
      v71 = v32;
      if (v33)
      {
        v34 = v33;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = v74;
        v36 = *(v74 + 32);
        v36(v20, v11, v7);
        v37 = *(v35 + 56);
        v37(v20, 0, 1, v7);
        v36(v24, v20, v7);
        v37(v24, 0, 1, v7);
      }

      else
      {
        v35 = v74;
        v49 = 1;
        v70 = *(v74 + 56);
        v70(v20, 1, 1, v7);
        v50 = [v32 departureDate];
        if (v50)
        {
          v51 = v50;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v49 = 0;
        }

        v70(v17, v49, 1, v7);
        sub_100335D8C(v17, v24);
        if ((*(v35 + 48))(v20, 1, v7) != 1)
        {
          sub_100024F64(v20, &qword_10190EBD0);
        }
      }

      sub_1000D2DFC(v24, v14, &qword_10190EBD0);
      v29 = v25;
      if ((*(v35 + 48))(v14, 1, v7) == 1)
      {
        sub_100024F64(v24, &qword_10190EBD0);
        swift_unknownObjectRelease();
        v52 = v14;
      }

      else
      {
        v53 = v72;
        (*(v35 + 32))(v72, v14, v7);
        v54 = objc_opt_self();
        v55 = Date._bridgeToObjectiveC()().super.isa;
        v56 = TimeZone._bridgeToObjectiveC()().super.isa;
        v57 = [v54 _navigation_localizedTimestampStringForDepartureArrivalDate:v55 inTimeZone:v56 canIncludeDate:0 showTimeZone:0 useShortFormat:0];

        if (v57)
        {
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          swift_unknownObjectRelease();
          (*(v35 + 8))(v53, v7);
          sub_100024F64(v24, &qword_10190EBD0);
          return v28;
        }

        swift_unknownObjectRelease();
        (*(v35 + 8))(v53, v7);
        v52 = v24;
      }

      sub_100024F64(v52, &qword_10190EBD0);
    }

    else
    {
      v38 = v26;
      if (qword_101906708 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100021540(v39, qword_10195FFB8);
      v29 = v25;
      swift_unknownObjectRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v76 = v43;
        *v42 = 134218242;
        *(v42 + 4) = v38;
        *(v42 + 12) = 2080;
        v44 = [v29 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_10004DEB8(v45, v47, &v76);

        *(v42 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v40, v41, "Unknown departureTimeDisplayStyle %lu for departureSequence %s", v42, 0x16u);
        sub_10004E3D0(v43);
      }
    }

    v28 = 0;
    goto LABEL_25;
  }

  sub_1004F4960(a2, a3);
  v28 = v27;
  v29 = a1;
  if (!v30)
  {
LABEL_25:
    v58 = Date._bridgeToObjectiveC()().super.isa;
    v59 = [v29 frequencyToDescribeAtDate:v58];

    if (v59)
    {

      v60 = [objc_opt_self() _navigation_formattedDescriptionForFrequency:v59];
      if (v60)
      {
        v61 = v60;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        swift_unknownObjectRelease();
        return v28;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v62 = Date._bridgeToObjectiveC()().super.isa;
      v63 = TimeZone._bridgeToObjectiveC()().super.isa;
      v64 = [v29 operatingHoursForDate:v62 inTimeZone:v63];

      if (!v64)
      {
        return v28;
      }

      v65 = objc_opt_self();
      v66 = TimeZone._bridgeToObjectiveC()().super.isa;
      v67 = [v65 _navigation_formattedStringForOperatingHours:v64 timeZone:v66];

      if (v67)
      {
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v28;
      }
    }

    return 0;
  }

  return v28;
}

id sub_1004F54D8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v11 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for TimeZone();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  sub_1000D2DFC(a2, v13, &unk_10190A800);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100024F64(v13, &unk_10190A800);
    return 0;
  }

  (*(v15 + 32))(v17, v13, v14);
  v18 = [swift_unknownObjectRetain() liveStatus];
  if ((v18 - 3) > 2)
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_10;
  }

  v45 = v18;
  v19 = [a1 liveStatusString];
  if (v19)
  {
    v20 = v19;
    MKFormattedStringOptionsMakeDefault();
    v21 = v46[0];
    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = v51;
    v27 = objc_allocWithZone(MKServerFormattedStringParameters);
    v46[0] = v21;
    v47 = v22;
    v48 = v23;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    v28 = [v27 initWithOptions:v46 variableOverrides:0];
    v29 = [objc_allocWithZone(MKServerFormattedString) initWithGeoServerString:v20 parameters:v28];
    sub_1000D0EC4(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v31 = [v29 multiPartAttributedStringWithAttributes:isa];

    if (v31)
    {
      v45 = v28;
      result = [v31 attributedString];
      if (result)
      {
        v33 = result;
        v34 = [result string];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (*(v15 + 8))(v17, v14);
        return v35;
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    (*(v15 + 8))(v17, v14);
    swift_unknownObjectRelease();

LABEL_10:
    swift_unknownObjectRelease();
    return 0;
  }

  v36 = [a1 departureDate];
  if (!v36)
  {
    swift_unknownObjectRelease();
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  v37 = v36;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v10, v7, v4);
  v38 = objc_opt_self();
  v39 = Date._bridgeToObjectiveC()().super.isa;
  v40 = TimeZone._bridgeToObjectiveC()().super.isa;
  v41 = [v38 _stringFromTimestampDate:v39 departureTimeZone:v40];

  v42 = [objc_opt_self() _navigation_formattedDescriptionForLiveStatus:v45 updatedDepartureTimeString:v41];
  if (v42)
  {
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v43 = 0;
  }

  (*(v5 + 8))(v10, v4);
  (*(v15 + 8))(v17, v14);
  return v43;
}

id sub_1004F5A8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v95 = a3;
  v92 = a4;
  v6 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v6 - 8);
  v91 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v84 - v9;
  __chkstk_darwin(v11);
  v94 = &v84 - v12;
  v13 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v13 - 8);
  v89 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v84 - v16;
  v18 = type metadata accessor for TimeZone();
  v19 = *(v18 - 8);
  v96 = v18;
  v97 = v19;
  __chkstk_darwin(v18);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v26 = [a1 departuresValidForDate:isa];

  if (v26)
  {
    sub_1000CE6B8(&qword_101924668);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v27 = 0;
  }

  v28 = [a1 timeZone];
  if (v28)
  {
    v29 = v28;
    static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = v27;
    v31 = v24;
    v32 = v97;
    v33 = *(v97 + 32);
    v34 = v21;
    v35 = v96;
    v33(v17, v34, v96);
    v36 = v32;
    v24 = v31;
    v27 = v30;
    v88 = *(v36 + 56);
    v88(v17, 0, 1, v35);
    v33(v24, v17, v35);
  }

  else
  {
    v37 = v96;
    v38 = v97;
    v88 = *(v97 + 56);
    v88(v17, 1, 1, v96);
    static TimeZone.current.getter();
    if ((*(v38 + 48))(v17, 1, v37) != 1)
    {
      sub_100024F64(v17, &unk_10190A800);
    }
  }

  v39 = a2;
  v40 = Date._bridgeToObjectiveC()().super.isa;
  v41 = TimeZone._bridgeToObjectiveC()().super.isa;
  v42 = [a1 isValidForDate:v40 inTimeZone:v41];

  v93 = a1;
  if ((v42 & 1) == 0)
  {
    v47 = Date._bridgeToObjectiveC()().super.isa;
    v48 = [a1 serviceResumesAfterDate:v47];

    if (v48)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v50 = type metadata accessor for Date();
    v51 = *(v50 - 8);
    (*(v51 + 56))(v10, v49, 1, v50);
    v52 = v94;
    sub_100335D8C(v10, v94);
    v53 = v91;
    sub_1000D2DFC(v52, v91, &qword_10190EBD0);
    v54 = 0;
    if ((*(v51 + 48))(v53, 1, v50) != 1)
    {
      v54 = Date._bridgeToObjectiveC()().super.isa;
      (*(v51 + 8))(v53, v50);
    }

    v55 = Date._bridgeToObjectiveC()().super.isa;
    v56 = TimeZone._bridgeToObjectiveC()().super.isa;
    v57 = MKServiceGapDescription();

    if (v57)
    {
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v58;
    }

    else
    {
      v90 = 0;
      v91 = 0;
    }

    v59 = v39;
    result = [a1 displayName];
    if (result)
    {
      v60 = result;

      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      (*(v51 + 8))(v59, v50);
      sub_100024F64(v94, &qword_10190EBD0);
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0xE000000000000000;
      v68 = 0xE000000000000000;
      v69 = v96;
      v43 = v97;
LABEL_49:
      result = (*(v43 + 8))(v24, v69);
      v81 = v92;
      *v92 = v64;
      v81[1] = v67;
      v81[2] = v65;
      v81[3] = v68;
      v81[4] = v61;
      v81[5] = v63;
      v82 = v91;
      v81[6] = v90;
      v81[7] = v82;
      v83 = v93;
      v81[8] = v66;
      v81[9] = v83;
      v81[10] = v95;
      return result;
    }

    goto LABEL_52;
  }

  v43 = v97;
  if (!v27)
  {
    goto LABEL_28;
  }

  if (v27 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_12;
    }

LABEL_28:
    v45 = 0;
LABEL_29:
    v46 = [a1 displayName];
    if (!v46)
    {
      v86 = 0;
      v87 = 0;
LABEL_32:
      if (v95 == 4 && (v73 = [a1 originName]) != 0)
      {
        v74 = v73;
        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v75;
      }

      else
      {
        v90 = 0;
        v91 = 0;
      }

      v94 = v39;
      v64 = sub_1004F4CEC(a1, v27, v39, v24);
      v77 = v76;

      if (v45)
      {
        v85 = [v45 liveStatus];
      }

      else
      {
        v85 = 0;
      }

      v78 = v89;
      v69 = v96;
      (*(v43 + 16))(v89, v24, v96);
      v88(v78, 0, 1, v69);
      v65 = sub_1004F54D8(v45, v78);
      v68 = v79;
      sub_100024F64(v78, &unk_10190A800);
      if (v77)
      {
        v67 = v77;
      }

      else
      {
        v64 = 0;
        v67 = 0xE000000000000000;
      }

      swift_unknownObjectRelease();
      if (v86)
      {
        v61 = v87;
      }

      else
      {
        v61 = 0;
      }

      if (v86)
      {
        v63 = v86;
      }

      else
      {
        v63 = 0xE000000000000000;
      }

      v80 = type metadata accessor for Date();
      (*(*(v80 - 8) + 8))(v94, v80);
      v66 = v85;
      goto LABEL_49;
    }

LABEL_30:
    v70 = v46;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v72;
    v87 = v71;

    goto LABEL_32;
  }

  result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v27 & 0xC000000000000001) != 0)
  {

    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_15:
    v46 = [v45 displayName];
    if (v46)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v45 = *(v27 + 32);
    swift_unknownObjectRetain();
    goto LABEL_15;
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1004F62E4(uint64_t a1)
{
  if ((a1 - 2) > 3)
  {
    return 1;
  }

  else
  {
    return qword_10120CE38[a1 - 2];
  }
}

Swift::Int sub_1004F6318(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10056D5B4(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1000CE6B8(&qword_1019188A8);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1004F9768(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1004F646C@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W3>, char *a4@<X4>, char *a5@<X5>, Class a6@<X8>, double a7@<D0>)
{
  v151 = a5;
  v160 = a4;
  v147 = a3;
  v146 = a2;
  v148 = a1;
  v9 = type metadata accessor for MapsElevationChartViewModel(0);
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = (&v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v167 = (&v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000CE6B8(&qword_10191B3A0);
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v144 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v145 = &v138 - v18;
  __chkstk_darwin(v19);
  v155 = &v138 - v20;
  __chkstk_darwin(v21);
  v150 = &v138 - v22;
  __chkstk_darwin(v23);
  v162 = (&v138 - v24);
  __chkstk_darwin(v25);
  v149 = &v138 - v26;
  v27 = [objc_opt_self() standardUserDefaults];
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 objectForKey:v28];

  if (v29)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v169 = 0u;
    v170 = 0u;
  }

  v173[0] = v169;
  v173[1] = v170;
  sub_10017A750(v173, &v169);
  v30 = v160;
  if (!*(&v170 + 1))
  {
    sub_100024F64(&v169, &unk_101908380);
LABEL_19:
    sub_1004F7BB8(v148, v146 & 1, v147 & 1, v30, v151, a6, a7);
    return sub_100024F64(v173, &unk_101908380);
  }

  sub_1000D2BE0(&v169, &v172);
  sub_10004E374(&v172, &v169);
  sub_100014C84(0, &qword_101909920);
  swift_dynamicCast();
  v31 = v171;
  v32 = [v171 BOOLValue];

  if (!v32)
  {
    sub_10004E3D0(&v172);
    goto LABEL_19;
  }

  v33 = [v148 points];
  if (!v33)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v34 = v33;
  *&v169 = 0;
  v154 = sub_100014C84(0, &qword_101924708);
  static Array._forceBridgeFromObjectiveC(_:result:)();
  isa = v169;
  if (!v169)
  {
    goto LABEL_98;
  }

  v36 = isa & 0xFFFFFFFFFFFFFF8;
  if (!(isa >> 62))
  {
    v37 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_10;
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_87:
  v37 = _CocoaArrayWrapper.endIndex.getter();
  if (!v37)
  {
    goto LABEL_88;
  }

LABEL_10:
  _VF = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (_VF)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v142 = v12;
  v12 = (isa & 0xC000000000000001);
  v143 = v10;
  if ((isa & 0xC000000000000001) == 0)
  {
    if ((v39 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v39 < *(v36 + 16))
    {
      v40 = isa;
      v41 = *(isa + v39 + 4);
      goto LABEL_15;
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_90:
  v40 = isa;
  v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v42 = v41;
  v43 = [v41 offsetM];

  if (v12)
  {
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (!*(v36 + 16))
  {
    goto LABEL_93;
  }

  v44 = *(v40 + 4);
LABEL_22:
  v46 = v44;
  v47 = v149;
  v48 = v160;
  v49 = v43;
  v50 = [v44 offsetM];

  v51 = v49 - v50;
  v52 = sub_1007A6C70(v51, *&v48[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barWidth] + 1.0, a7);
  v53 = v51 / v52;
  v165 = objc_opt_self();
  v36 = [v165 meters];
  v54 = sub_100014C84(0, &qword_10191B3B0);
  Measurement.init(value:unit:)();
  if (!v52)
  {
    goto LABEL_71;
  }

  v166 = v54;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v55 = sub_1007A631C(isa, v52);

  sub_1000CE6B8(&qword_101924710);
  v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v153 = *(v56 + 16);
  if (!v153)
  {

LABEL_71:

    (*(v15 + 1))(v47, v14);
    sub_10004E3D0(&v172);
    sub_100024F64(v173, &unk_101908380);
    return (*(v143 + 56))(a6, 1, 1, v9);
  }

  v140 = v40;
  v141 = v9;
  v139 = a6;
  v10 = 0;
  LODWORD(v161) = 0;
  v12 = (v15 + 16);
  v57 = _swiftEmptyArrayStorage;
  v159 = (v15 + 8);
  v152 = OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_usesCurrentPosition;
  v9 = &selRef_idleStateChangeHandler;
  v168 = v14;
  do
  {
    if (v10 >= *(v56 + 16))
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    isa = *(v56 + 8 * v10 + 32);
    if (isa >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (!v36)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v36 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_78;
      }
    }

    v164 = v57;
    if ((isa & 0xC000000000000001) != 0)
    {

      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_96;
      }

      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v58 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v58)
      {
        goto LABEL_79;
      }

      v59 = v36 - 1;
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_80;
      }

      if (v59 >= v58)
      {
        goto LABEL_81;
      }

      v60 = *(isa + 4);
      v61 = *(isa + v59 + 4);

      v15 = v60;
      v62 = v61;
    }

    v14 = v62;
    v63 = v12;
    v64 = [objc_allocWithZone(GEOPoint) v9[268]];
    if (!v64)
    {
      goto LABEL_95;
    }

    v36 = v64;
    v12 = &selRef_notifyPPTDidChangeSearchResults;
    v9 = [v15 offsetM];
    a6 = [v14 offsetM];
    v65 = [v15 offsetM];
    v66 = a6 - v65;
    if (a6 < v65)
    {
      goto LABEL_82;
    }

    if (__CFADD__(v9, v66 >> 1))
    {
      goto LABEL_83;
    }

    [v36 setOffsetM:v9 + (v66 >> 1)];
    a6 = Array._bridgeToObjectiveC()().super.isa;

    v67 = sub_1007A5FF4(a6);

    v68 = v67 / v53;
    if (COERCE__INT64(fabs(v67 / v53)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_84;
    }

    if (v68 <= -2147483650.0)
    {
      goto LABEL_85;
    }

    if (v68 >= 2147483650.0)
    {
      goto LABEL_86;
    }

    v163 = v14;
    v69 = v56;
    [v36 setElevationCm:v68];
    [v36 offsetM];
    v70 = [v165 meters];
    a6 = v162;
    Measurement.init(value:unit:)();
    v12 = v63;
    v71 = *v63;
    _ZF = v160[v152] == 1;
    v158 = *v63;
    if (!_ZF)
    {
      v77 = v168;
      v78 = v161;
      goto LABEL_49;
    }

    v73 = a6;
    v74 = v150;
    (v71)(v150, v73, v168);
    static Measurement<>.+ infix(_:_:)();
    sub_1002BFDA8();
    v75 = dispatch thunk of static Comparable.< infix(_:_:)();
    if (!v10 && (v75 & 1) == 0)
    {
      v76 = *v159;
      v77 = v168;
      (*v159)(v155, v168);
      (v76)(v74, v77);
      v78 = 1;
LABEL_47:
      a6 = v162;
      v12 = v63;
      goto LABEL_48;
    }

    v77 = v168;
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      v80 = v155;
      v81 = static Measurement.< infix<A, B>(_:_:)();
      v82 = *v159;
      (*v159)(v80, v77);
      (v82)(v150, v77);
      v78 = v81 | v161;
      goto LABEL_47;
    }

    v79 = *v159;
    (*v159)(v155, v77);
    (v79)(v74, v77);
    a6 = v162;
    v12 = v63;
    v78 = v161;
LABEL_48:
    v71 = v158;
LABEL_49:
    v83 = v157;
    v84 = v167;
    (v71)(v167 + *(v157 + 20), a6, v77);
    [v36 elevationCm];
    v85 = [v165 centimeters];
    Measurement.init(value:unit:)();
    *v84 = v10;
    *(v84 + *(v83 + 28)) = (v78 & 1) == 0;
    v57 = v164;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    LODWORD(v161) = v78;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_1003580D0(0, v57[2] + 1, 1, v57);
    }

    v88 = v57[2];
    v87 = v57[3];
    v56 = v69;
    if (v88 >= v87 >> 1)
    {
      v57 = sub_1003580D0(v87 > 1, v88 + 1, 1, v57);
    }

    v89 = v163;
    ++v10;

    v15 = *v159;
    v14 = v168;
    (*v159)(a6, v168);
    v57[2] = v88 + 1;
    isa = (v57 + ((*(v156 + 80) + 32) & ~*(v156 + 80)));
    v36 = *(v156 + 72);
    sub_1004F9700(v167, isa + v36 * v88, type metadata accessor for MapsElevationChartViewModel.ElevationDatum);
    v9 = &selRef_idleStateChangeHandler;
  }

  while (v153 != v10);

  v90 = v12;
  if (v146)
  {
    v91 = &selRef_meters;
  }

  else
  {
    v91 = &selRef_feet;
  }

  if (v146)
  {
    v92 = &selRef_kilometers;
  }

  else
  {
    v92 = &selRef_miles;
  }

  v163 = sub_1004FA328(v148, v146 & 1);
  v162 = v93;
  v166 = v94;
  v164 = v95;
  v96 = *v91;
  v97 = v165;
  v98 = [v165 v96];
  v99 = [v97 *v92];
  v100 = v145;
  v167 = v90;
  (v158)(v145, v151, v14);
  v101 = swift_allocObject();
  *(v101 + 16) = v160;
  v165 = v101;
  *(v101 + 24) = v147 & 1;
  __asm { FMOV            V0.2D, #12.0 }

  v105 = v14;
  v106 = v142;
  *v142 = _Q0;
  v161 = v57[2];
  if (!v161)
  {
    goto LABEL_101;
  }

  v106[2] = v57;
  *(v106 + 3) = a7;
  v106[4] = v98;
  v106[5] = 0x4059000000000000;
  v106[6] = v99;
  v107 = v141;
  v108 = v100;
  v109 = v158;
  (v158)(v106 + v141[11], v108, v105);
  v110 = (v106 + v107[12]);
  v111 = v162;
  *v110 = v163;
  v110[1] = v111;
  v112 = (v106 + v107[13]);
  v113 = v164;
  *v112 = v166;
  v112[1] = v113;
  v114 = v160;
  *(v106 + v107[14]) = v160;
  v115 = v106 + v107[15];
  *v115 = 0;
  *(v115 + 1) = 0;
  v115[16] = 1;
  v116 = (v106 + v107[16]);
  v117 = v165;
  *v116 = sub_1004FA830;
  v116[1] = v117;
  v118 = isa + v36 * (v161 - 1) + *(v157 + 20);
  v119 = v144;
  (v109)(v144, v118, v105);
  v120 = v114;

  Measurement.value.getter();
  v122 = v121;
  (v15)(v119, v105);

  v124 = 0;
  v125 = sub_1004F9EF4(v123, v57, v122 * 0.25);
  swift_bridgeObjectRelease_n();
  v126 = *(v125 + 16);
  if (v126)
  {
    v167 = 0;
    v127 = sub_100358E58(v126, 0);
    v128 = sub_100416B60(&v169, v127 + 4, v126, v125);

    sub_10005F150();
    if (v128 != v126)
    {
      goto LABEL_94;
    }

    v107 = v141;
    v129 = v142;
    v124 = v167;
  }

  else
  {
    v127 = _swiftEmptyArrayStorage;
    v129 = v142;
  }

  *&v169 = v127;
  sub_1004F6318(&v169);
  if (!v124)
  {

    *(v129 + v107[17]) = v169;
    v130 = [objc_allocWithZone(NSLengthFormatter) init];
    v131 = [v130 numberFormatter];
    v132 = v168;
    if (!v131)
    {
      goto LABEL_99;
    }

    v133 = v131;
    [v131 setMaximumFractionDigits:1];

    *(v129 + v107[18]) = v130;
    v134 = [objc_allocWithZone(NSLengthFormatter) init];
    v135 = [v134 numberFormatter];
    if (v135)
    {
      v136 = v135;
      [v135 setMaximumFractionDigits:0];

      (v15)(v145, v132);
      (v15)(v149, v132);
      sub_10004E3D0(&v172);
      sub_100024F64(v173, &unk_101908380);
      *(v129 + v107[19]) = v134;
      v137 = v139;
      sub_1004F9700(v129, v139, type metadata accessor for MapsElevationChartViewModel);
      return (*(v143 + 56))(v137, 0, 1, v107);
    }

LABEL_100:
    __break(1u);
LABEL_101:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004F76EC(void *a1, char a2, uint64_t a3, char a4, char *a5, char *a6, double a7)
{
  v33 = a6;
  v31 = a3;
  v32 = a5;
  v11 = type metadata accessor for MapsElevationChart();
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = sub_1000CE6B8(&qword_10191B3A8);
  __chkstk_darwin(v17 - 8);
  v19 = (&v31 - v18);
  v20 = type metadata accessor for MapsElevationChartViewModel(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v24 = a1;
  if (![v24 isValid])
  {

LABEL_6:
    v28 = objc_allocWithZone(sub_1000CE6B8(&qword_1019246F8));
    return UIHostingController.init(rootView:)();
  }

  sub_1004F646C(v24, a2 & 1, a4 & 1, v32, v33, v19, a7);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100024F64(v19, &qword_10191B3A8);
    v25 = objc_allocWithZone(sub_1000CE6B8(&qword_1019246F8));
    v26 = UIHostingController.init(rootView:)();

    return v26;
  }

  else
  {
    sub_1004F9700(v19, v23, type metadata accessor for MapsElevationChartViewModel);
    sub_1004FA6EC(v23, v16, type metadata accessor for MapsElevationChartViewModel);
    *&v16[*(v11 + 20)] = 0x4024000000000000;
    v29 = objc_allocWithZone(sub_1000CE6B8(&qword_101924700));
    sub_1004FA6EC(v16, v13, type metadata accessor for MapsElevationChart);
    v30 = UIHostingController.init(rootView:)();

    sub_1004F96A0(v16, type metadata accessor for MapsElevationChart);
    sub_1004F96A0(v23, type metadata accessor for MapsElevationChartViewModel);
    return v30;
  }
}

uint64_t sub_1004F7BB8@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W3>, char *a4@<X4>, char *a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v222 = a4;
  v221 = a2;
  v217 = a6;
  v219 = type metadata accessor for MapsElevationChartViewModel(0);
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v209 = (&v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v210 = (&v207 - v13);
  v231 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v244 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_1000CE6B8(&qword_101924718);
  v246 = *(v241 - 8);
  __chkstk_darwin(v241);
  v243 = &v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v242 = &v207 - v17;
  v18 = sub_1000CE6B8(&qword_10191B3A0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v214 = &v207 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v207 - v22;
  __chkstk_darwin(v24);
  v215 = &v207 - v25;
  __chkstk_darwin(v26);
  v28 = &v207 - v27;
  __chkstk_darwin(v29);
  v229 = &v207 - v30;
  __chkstk_darwin(v31);
  v223 = &v207 - v32;
  __chkstk_darwin(v33);
  v247 = &v207 - v34;
  v36 = __chkstk_darwin(v35);
  v224 = &v207 - v37;
  v213 = a1;
  v38 = [a1 points];
  if (!v38)
  {
    goto LABEL_89;
  }

  v39 = v38;
  v208 = v23;
  v212 = v28;
  v248 = v18;
  v250 = 0;
  sub_100014C84(0, &qword_101924708);
  static Array._forceBridgeFromObjectiveC(_:result:)();
  v40 = v250;
  if (!v250)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (!(v40 >> 62))
  {
    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_5;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v42 = _CocoaArrayWrapper.endIndex.getter();
  if (!v42)
  {
    goto LABEL_77;
  }

LABEL_5:
  v43 = v42 - 1;
  if (__OFSUB__(v42, 1))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v18 = v40 & 0xC000000000000001;
  v225 = a5;
  v211 = a3;
  if ((v40 & 0xC000000000000001) == 0)
  {
    if ((v43 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v43 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v44 = *(v40 + 8 * v43 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v206 = v41;
    v68 = _CocoaArrayWrapper.endIndex.getter();
    v41 = v206;
    if (v68 >= 1)
    {
      goto LABEL_32;
    }

LABEL_84:
    (*(v249 + 1))(v224, v41);

    return (*(v218 + 56))(v217, 1, 1, v219);
  }

LABEL_79:
  v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v45 = v44;
  v46 = [v44 offsetM];

  v249 = v19;
  if (v18)
  {
    v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_86;
    }

    v47 = *(v40 + 32);
  }

  v48 = v47;
  v49 = v46;
  v50 = [v47 offsetM];

  v51 = *&v222[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barWidth] + 1.0;
  v52 = sub_1007A6C70(v49 - v50, v51, a7);
  v53 = objc_opt_self();
  v54 = [v53 meters];
  v19 = sub_100014C84(0, &qword_10191B3B0);
  Measurement.init(value:unit:)();
  v232 = v40;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v56 = sub_1007A697C(isa, v52, v51);

  sub_100014C84(0, &qword_101924720);
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = &selRef_feet;
  if (v221)
  {
    v57 = &selRef_meters;
    v58 = &selRef_kilometers;
  }

  else
  {
    v58 = &selRef_miles;
  }

  v220 = [v53 *v57];
  v59 = *v58;
  v207 = v53;
  v60 = [v53 v59];
  if (v42 < 1)
  {
    goto LABEL_82;
  }

  v233 = v40;
  v216 = v60;
  v61 = 0;
  v62 = INFINITY;
  v63 = -INFINITY;
  v64 = v232;
  do
  {
    if (v18)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v65 = *(v64 + 8 * v61 + 32);
    }

    v66 = v65;
    if (v62 > [v65 elevationCm])
    {
      v62 = [v66 elevationCm];
    }

    if (v63 >= [v66 elevationCm])
    {
    }

    else
    {
      v67 = [v66 elevationCm];

      v63 = v67;
    }

    ++v61;
  }

  while (v42 != v61);
  v41 = v248;
  v40 = v233;
  if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_84;
  }

  if (v233 >> 62)
  {
    goto LABEL_83;
  }

  v68 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v68 < 1)
  {
    goto LABEL_84;
  }

LABEL_32:
  v234 = 0;
  v69 = 0;
  v227 = v222[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_usesCurrentPosition];
  v226 = v40 & 0xC000000000000001;
  v239 = (v246 + 8);
  v236 = v249 + 16;
  v237 = v249 + 8;
  v240 = _swiftEmptyArrayStorage;
  v245 = v19;
  v228 = v68;
  do
  {
    v246 = v69;
    if (v226)
    {
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v70 = *(v233 + 8 * v69 + 32);
    }

    v71 = v70;
    v72 = v248;
    v249 = v70;
    v73 = [v70 offsetMeasurement];
    sub_100014C84(0, &qword_101924728);
    v74 = v242;
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = v241;
    Measurement.value.getter();
    v76 = *v239;
    (*v239)(v74, v75);
    v77 = [v71 offsetMeasurement];
    v78 = v243;
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    Measurement.unit.getter();
    v238 = v76;
    v76(v78, v75);
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v79 = v247;
    Measurement.init(value:unit:)();
    v80 = *v236;
    v235 = *v236;
    if (v227)
    {
      v81 = v223;
      v80(v223, v79, v72);
      static Measurement<>.+ infix(_:_:)();
      sub_1002BFDA8();
      if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 || v246)
      {
        v83 = v248;
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          v84 = *v237;
          (*v237)(v229, v83);
          v84(v81, v83);
        }

        else
        {
          v85 = v229;
          v86 = static Measurement.< infix<A, B>(_:_:)();
          v87 = *v237;
          (*v237)(v85, v83);
          v87(v81, v83);
          v234 |= v86;
        }

        v72 = v83;
      }

      else
      {
        v82 = *v237;
        v72 = v248;
        (*v237)(v229, v248);
        v82(v81, v72);
        v234 = 1;
      }

      v79 = v247;
      v80 = v235;
    }

    v88 = v231;
    v89 = v244;
    v80(&v244[*(v231 + 20)], v79, v72);
    v90 = v249;
    v91 = [v249 elevationMeasurement];
    v92 = v242;
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v93 = v241;
    Measurement.value.getter();
    v94 = v238;
    v238(v92, v93);
    v95 = [v90 elevationMeasurement];
    v96 = v243;
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    Measurement.unit.getter();
    v94(v96, v93);
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    Measurement.init(value:unit:)();
    v97 = v246;
    *v89 = v246;
    *(v89 + *(v88 + 28)) = (v234 & 1) == 0;
    v98 = v240;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_1003580D0(0, v98[2] + 1, 1, v98);
    }

    v100 = v98[2];
    v99 = v98[3];
    if (v100 >= v99 >> 1)
    {
      v98 = sub_1003580D0(v99 > 1, v100 + 1, 1, v98);
    }

    v69 = v97 + 1;

    v101 = *v237;
    (*v237)(v247, v248);
    v98[2] = v100 + 1;
    v102 = (*(v230 + 80) + 32) & ~*(v230 + 80);
    v240 = v98;
    v103 = v98 + v102;
    v104 = *(v230 + 72);
    sub_1004F9700(v244, &v103[v104 * v100], type metadata accessor for MapsElevationChartViewModel.ElevationDatum);
  }

  while (v228 != v69);
  v105 = v213;
  v244 = sub_1004FA328(v213, v221 & 1);
  v246 = v106;
  v247 = v107;
  v249 = v108;
  if (!GEOConfigGetBOOL())
  {
    if ([v105 hasMinimumVisibleElevationRange] && (GEOConfigGetBOOL() & 1) == 0)
    {
      v166 = [v105 minimumVisibleElevationRange];
      if (!v166)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v167 = v166;

      [v167 lowerBoundCm];
      v168 = v207;
      v169 = [v207 centimeters];
      v170 = v208;
      Measurement.init(value:unit:)();
      v171 = v215;
      v146 = v248;
      Measurement<>.converted(to:)();
      v101(v170, v146);
      Measurement.value.getter();
      v152 = v172;
      v101(v171, v146);
      [v167 upperBoundCm];
      v173 = [v168 centimeters];
      Measurement.init(value:unit:)();
      Measurement<>.converted(to:)();
      v101(v170, v146);
      Measurement.value.getter();
      v157 = v174;

      v101(v171, v146);
      v140 = v219;
    }

    else
    {

      GEOConfigGetDouble();
      v142 = v207;
      v143 = [v207 meters];
      v144 = v208;
      Measurement.init(value:unit:)();
      v145 = v215;
      v146 = v248;
      Measurement<>.converted(to:)();
      v101(v144, v146);
      Measurement.value.getter();
      v148 = v147;
      v101(v145, v146);
      v149 = [v142 centimeters];
      Measurement.init(value:unit:)();
      Measurement<>.converted(to:)();
      v101(v144, v146);
      Measurement.value.getter();
      v151 = v150;
      v101(v145, v146);
      v152 = v148 + v151;
      v153 = v142;
      v140 = v219;
      v154 = [v153 centimeters];
      Measurement.init(value:unit:)();
      Measurement<>.converted(to:)();
      v101(v144, v146);
      Measurement.value.getter();
      v156 = v155;
      v101(v145, v146);
      v157 = v156 - v148;
    }

    v235(v214, v225, v146);
    if (v152 <= v157)
    {
      v175 = swift_allocObject();
      *(v175 + 16) = v222;
      *(v175 + 24) = v211 & 1;
      __asm { FMOV            V0.2D, #12.0 }

      v161 = v209;
      *v209 = _Q0;
      v177 = v240;
      v245 = v240[2];
      if (v245)
      {
        v178 = v175;
        *(v161 + 16) = v240;
        *(v161 + 24) = a7;
        *(v161 + 32) = v220;
        *(v161 + 40) = 0x4059000000000000;
        *(v161 + 48) = v216;
        v179 = v248;
        v180 = v235;
        v235((v161 + v140[11]), v214, v248);
        v181 = (v161 + v140[12]);
        v182 = v246;
        *v181 = v244;
        v181[1] = v182;
        v183 = (v161 + v140[13]);
        v184 = v249;
        *v183 = v247;
        v183[1] = v184;
        v185 = v222;
        *(v161 + v140[14]) = v222;
        v186 = v161 + v140[15];
        *v186 = v152;
        *(v186 + 8) = v157;
        *(v186 + 16) = 0;
        v187 = (v161 + v140[16]);
        *v187 = sub_1004FA7FC;
        v187[1] = v178;
        v188 = v215;
        v180(v215, &v103[(v245 - 1) * v104 + *(v231 + 20)], v179);
        v189 = v185;

        Measurement.value.getter();
        v191 = v190;
        v101(v188, v179);

        v193 = 0;
        v194 = sub_1004F9EF4(v192, v177, v191 * 0.25);
        swift_bridgeObjectRelease_n();
        v195 = *(v194 + 16);
        if (v195)
        {
          v249 = 0;
          v196 = sub_100358E58(v195, 0);
          v197 = sub_100416B60(&v250, v196 + 4, v195, v194);

          sub_10005F150();
          if (v197 != v195)
          {
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          v140 = v219;
          v141 = v224;
          v161 = v209;
          v193 = v249;
        }

        else
        {
          v196 = _swiftEmptyArrayStorage;
          v141 = v224;
        }

        v250 = v196;
        sub_1004F6318(&v250);
        if (!v193)
        {

          *(v161 + v140[17]) = v250;
          v198 = [objc_allocWithZone(NSLengthFormatter) init];
          v199 = [v198 numberFormatter];
          if (v199)
          {
            v200 = v199;
            [v199 setMaximumFractionDigits:1];

            *(v161 + v140[18]) = v198;
            v162 = [objc_allocWithZone(NSLengthFormatter) init];
            v201 = [v162 numberFormatter];
            if (v201)
            {
              v202 = v201;
              [v201 setMaximumFractionDigits:0];

              v165 = &v246;
              goto LABEL_75;
            }

            goto LABEL_94;
          }

LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        goto LABEL_97;
      }

LABEL_96:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_97;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v109 = v212;
  v110 = v248;
  v235(v212, v225, v248);
  v111 = swift_allocObject();
  *(v111 + 16) = v222;
  *(v111 + 24) = v211 & 1;
  __asm { FMOV            V0.2D, #12.0 }

  v117 = v210;
  *v210 = _Q0;
  v118 = v240;
  v119 = v219;
  v245 = v240[2];
  if (!v245)
  {
    goto LABEL_96;
  }

  v120 = v111;
  *(v117 + 2) = v240;
  *(v117 + 3) = a7;
  *(v117 + 4) = v220;
  *(v117 + 5) = 0x4059000000000000;
  *(v117 + 6) = v216;
  v121 = v235;
  v235(v117 + v119[11], v109, v110);
  v122 = (v117 + v119[12]);
  v123 = v246;
  *v122 = v244;
  v122[1] = v123;
  v124 = (v117 + v119[13]);
  v125 = v249;
  *v124 = v247;
  v124[1] = v125;
  v126 = v110;
  v127 = v222;
  *(v117 + v119[14]) = v222;
  v128 = v117 + v119[15];
  *v128 = 0;
  *(v128 + 1) = 0;
  v128[16] = 1;
  v129 = (v117 + v119[16]);
  *v129 = sub_1004FA830;
  v129[1] = v120;
  v130 = v215;
  v121(v215, &v103[(v245 - 1) * v104 + *(v231 + 20)], v126);
  v131 = v127;

  Measurement.value.getter();
  v133 = v132;
  v101(v130, v126);

  v135 = 0;
  v136 = sub_1004F9EF4(v134, v118, v133 * 0.25);
  swift_bridgeObjectRelease_n();
  v137 = *(v136 + 16);
  if (v137)
  {
    v249 = 0;
    v138 = sub_100358E58(v137, 0);
    v139 = sub_100416B60(&v250, v138 + 4, v137, v136);

    sub_10005F150();
    if (v139 == v137)
    {
      v140 = v219;
      v141 = v224;
      v117 = v210;
      v135 = v249;
      goto LABEL_59;
    }

    goto LABEL_87;
  }

  v138 = _swiftEmptyArrayStorage;
  v140 = v119;
  v141 = v224;
LABEL_59:
  v250 = v138;
  sub_1004F6318(&v250);
  if (!v135)
  {

    *(v117 + v140[17]) = v250;
    v158 = [objc_allocWithZone(NSLengthFormatter) init];
    v159 = [v158 numberFormatter];
    if (v159)
    {
      v160 = v159;
      v161 = v117;
      [v159 setMaximumFractionDigits:1];

      *(v117 + v140[18]) = v158;
      v162 = [objc_allocWithZone(NSLengthFormatter) init];
      v163 = [v162 numberFormatter];
      if (v163)
      {
        v164 = v163;
        [v163 setMaximumFractionDigits:0];

        v165 = &v244;
LABEL_75:
        v203 = v248;
        v101(*(v165 - 32), v248);
        v101(v141, v203);
        *(v161 + v140[19]) = v162;
        v204 = v217;
        sub_1004F9700(v161, v217, type metadata accessor for MapsElevationChartViewModel);
        return (*(v218 + 56))(v204, 0, 1, v140);
      }

      goto LABEL_92;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_97:

  __break(1u);
  return result;
}

id sub_1004F9648()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsElevationGraphViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004F96A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004F9700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004F9768(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10056D550(v8);
      v8 = result;
    }

    v82 = v8 + 2;
    v83 = v8[2];
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v8[2 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1004F9CF0((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100097874(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v36 = v8[3];
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_100097874((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v37;
    v38 = v8 + 4;
    v39 = &v8[2 * v5 + 4];
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = v8[4];
          v41 = v8[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[2 * v37];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v38[2 * v5];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v8[2 * v37];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v38[2 * v5];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = &v38[2 * v5 - 2];
        v78 = *v77;
        v79 = &v38[2 * v5];
        v80 = v79[1];
        sub_1004F9CF0((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = v8[2];
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove(&v38[2 * v5], v79 + 2, 16 * (v81 - 1 - v5));
        v8[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[2 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[2 * v37];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v38[2 * v5];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1004F9CF0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1004F9EF4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  __chkstk_darwin(v6);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  v12 = _swiftEmptyDictionarySingleton;
  v52 = _swiftEmptyDictionarySingleton;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v45 = *(v9 + 80);
  v14 = (v45 + 32) & ~v45;
  v15 = *(v9 + 72);
  v16 = a1 + v14;
  v49 = v14;
  v50 = a2 + v14;
  v44 = xmmword_1011E1D30;
  v47 = v15;
  v48 = v6;
  v46 = &v43 - v10;
  while (1)
  {
    sub_1004FA6EC(v16, v11, type metadata accessor for MapsElevationChartViewModel.ElevationDatum);
    if (!*(a2 + 16))
    {
      break;
    }

    sub_100014C84(0, &qword_10191B3B0);
    if (static Measurement.== infix<A, B>(_:_:)())
    {
      v19 = 3;
    }

    else
    {
      sub_1000CE6B8(&qword_10191B3A0);
      Measurement.value.getter();
      v21 = floor(v20 / a3);
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_26;
      }

      if (v21 <= -9.22337204e18)
      {
        goto LABEL_27;
      }

      if (v21 >= 9.22337204e18)
      {
        goto LABEL_28;
      }

      v19 = v21;
    }

    v23 = sub_100298E64(v19);
    v24 = v12[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v12[3] < v26)
    {
      sub_1001286BC(v26, 1);
      v12 = v52;
      v28 = sub_100298E64(v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_30;
      }

      v23 = v28;
    }

    if (v27)
    {
      v30 = v11;
      v31 = a2;
      v32 = v12[7];
      sub_1004F9700(v30, v51, type metadata accessor for MapsElevationChartViewModel.ElevationDatum);
      v33 = *(v32 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v23) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_1003580D0(0, v33[2] + 1, 1, v33);
        *(v32 + 8 * v23) = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = sub_1003580D0(v35 > 1, v36 + 1, 1, v33);
        *(v32 + 8 * v23) = v33;
      }

      a2 = v31;
      v33[2] = v36 + 1;
      v17 = v33 + v49 + v36 * v47;
      v18 = v47;
      sub_1004F9700(v51, v17, type metadata accessor for MapsElevationChartViewModel.ElevationDatum);
      v11 = v46;
    }

    else
    {
      sub_1000CE6B8(&qword_10191AEC0);
      v37 = v49;
      v38 = swift_allocObject();
      *(v38 + 16) = v44;
      sub_1004F9700(v11, v38 + v37, type metadata accessor for MapsElevationChartViewModel.ElevationDatum);
      v12[(v23 >> 6) + 8] |= 1 << v23;
      *(v12[6] + 8 * v23) = v19;
      *(v12[7] + 8 * v23) = v38;
      v39 = v12[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_29;
      }

      v12[2] = v41;
      v18 = v47;
    }

    v16 += v18;
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1004FA328(void *a1, char a2)
{
  v4 = sub_1000CE6B8(&qword_10191B3A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = [objc_allocWithZone(NSLengthFormatter) init];
  result = [v11 numberFormatter];
  if (result)
  {
    v13 = result;
    [result setMaximumFractionDigits:1];

    [v11 setUnitStyle:2];
    v14 = objc_opt_self();
    if (a2)
    {
      v15 = 11;
    }

    else
    {
      v15 = 1282;
    }

    v30 = v15;
    v16 = &selRef_feet;
    if (a2)
    {
      v16 = &selRef_meters;
    }

    v31 = [v14 *v16];
    [a1 sumElevationGainCm];
    v32 = objc_opt_self();
    v17 = [v32 meters];
    sub_100014C84(0, &qword_10191B3B0);
    Measurement.init(value:unit:)();
    Measurement<>.converted(to:)();
    v29 = v11;
    v18 = *(v5 + 8);
    v18(v7, v4);
    Measurement.value.getter();
    v20 = v19;
    v18(v10, v4);
    v21 = [v11 stringFromValue:v15 unit:ceil(v20)];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    countAndFlagsBits = String.uppercased()()._countAndFlagsBits;

    [a1 sumElevationLossCm];
    v22 = [v32 meters];
    Measurement.init(value:unit:)();
    v23 = v31;
    Measurement<>.converted(to:)();
    v18(v7, v4);
    Measurement.value.getter();
    v25 = v24;
    v18(v10, v4);
    v26 = v29;
    v27 = [v29 stringFromValue:v30 unit:ceil(v25)];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.uppercased()();

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004FA6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004FA754(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = *(a3 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barHighlightColor);
  if (!result)
  {
    if (*(a3 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_usesCurrentPosition) == 1)
    {
      v6 = *(a3 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barElapsedColor);
      if (v6)
      {
        v7 = a1;
        v8 = a3;
        v9 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
        a3 = v8;
        if (*(v7 + *(v9 + 28)))
        {
          return v6;
        }
      }
    }

    return *(a3 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barColor);
  }

  if ((a4 & 1) == 0)
  {
    return *(a3 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barColor);
  }

  return result;
}

id sub_1004FA7FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004FA754(a1, a2, *(v2 + 16), *(v2 + 24));

  return v3;
}

void MSPSharedTripContact.fetchImage(for:imageLoaded:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedCache];
  if (v6)
  {
    v7 = v6;
    v8 = [v3 contact];
    ImageProvidingSpecs.preferredSize.getter();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    v13[4] = sub_1000D2C74;
    v13[5] = v11;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100271778;
    v13[3] = &unk_10161F3C8;
    v12 = _Block_copy(v13);

    [v7 getImageForContact:v8 size:v12 completion:v10];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void MSPSharedTripCapabilityType.fetchImage(for:imageLoaded:)(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4)
{
  if ((a4 - 2) >= 2)
  {
    if (a4 != 4)
    {
      a2(0);
      return;
    }

    v8 = objc_opt_self();
    v6 = MapsAppBundleId;
    ImageProvidingSpecs.displayScale.getter();
    v7 = [v8 _applicationIconImageForBundleIdentifier:v6 format:0 scale:?];
  }

  else
  {
    v5 = objc_opt_self();
    v6 = String._bridgeToObjectiveC()();
    ImageProvidingSpecs.displayScale.getter();
    v7 = [v5 _applicationIconImageForBundleIdentifier:v6 format:0 scale:?];
  }

  v9 = v7;

  a2(v9);
}

void *ShareETAAccessoryModel.state.getter()
{
  v1 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ShareETAAccessoryModel.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ShareETAAccessoryModel.title.getter()
{
  v1 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_title;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ShareETAAccessoryModel.title.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_title;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *ShareETAAccessoryModel.shortTitle.getter()
{
  v1 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ShareETAAccessoryModel.shortTitle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ShareETAAccessoryModel.__allocating_init(title:shortTitle:state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state;
  *&v7[OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state] = 0;
  v9 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle;
  *&v7[OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle] = 0;
  *&v7[OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_title] = a1;
  swift_beginAccess();
  *&v7[v9] = a2;
  swift_beginAccess();
  *&v7[v8] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, "init");
}

id ShareETAAccessoryModel.init(title:shortTitle:state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state;
  *&v3[OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state] = 0;
  v7 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle;
  *&v3[OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle] = 0;
  *&v3[OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_title] = a1;
  swift_beginAccess();
  *&v3[v7] = a2;
  swift_beginAccess();
  *&v3[v6] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ShareETAAccessoryModel();
  return objc_msgSendSuper2(&v9, "init");
}

void *WaldoAccessoryModel.state.getter()
{
  v1 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_state;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void WaldoAccessoryModel.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_state;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id WaldoAccessoryModel.contact.getter()
{
  v1 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WaldoAccessoryModel.contact.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *WaldoAccessoryModel.trailingLabel.getter()
{
  v1 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_trailingLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1004FB650(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void WaldoAccessoryModel.trailingLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_trailingLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t WaldoAccessoryModel.capabilityType.getter()
{
  v1 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_capabilityType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WaldoAccessoryModel.capabilityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_capabilityType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id WaldoAccessoryModel.serviceName.getter()
{
  v1 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_serviceName;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WaldoAccessoryModel.serviceName.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_serviceName;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id WaldoAccessoryModel.footerText.getter()
{
  v1 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_footerText;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WaldoAccessoryModel.footerText.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_footerText;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id WaldoAccessoryModel.__allocating_init(contact:capabilityType:serviceName:footerText:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_state;
  *&v11[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_state] = 0;
  *&v11[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_trailingLabel] = 0;
  *&v11[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_contact] = a1;
  *&v11[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_capabilityType] = a2;
  *&v11[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_serviceName] = a3;
  *&v11[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_footerText] = a4;
  swift_beginAccess();
  *&v11[v12] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, "init");
}

id WaldoAccessoryModel.init(contact:capabilityType:serviceName:footerText:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_state;
  *&v5[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_state] = 0;
  *&v5[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_trailingLabel] = 0;
  *&v5[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_contact] = a1;
  *&v5[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_capabilityType] = a2;
  *&v5[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_serviceName] = a3;
  *&v5[OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_footerText] = a4;
  swift_beginAccess();
  *&v5[v7] = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for WaldoAccessoryModel();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_1004FBEF0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004FBFA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004FBFF0()
{
  result = qword_101924788;
  if (!qword_101924788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924788);
  }

  return result;
}

void *sub_1004FC130(double a1, double a2)
{
  v3 = &v2[OBJC_IVAR____TtC4Maps14NavMetricsView_viewSize];
  v4 = *&v2[OBJC_IVAR____TtC4Maps14NavMetricsView_viewSize + 8];
  *v3 = a1;
  v3[1] = a2;
  [v2 invalidateIntrinsicContentSize];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (v4 != v3[1])
    {
      [result didUpdateSize];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1004FC2DC(void *a1, SEL *a2, double a3, double a4)
{
  v7 = (v4 + *a1);
  v8 = v7[1];
  *v7 = a3;
  v7[1] = a4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (v8 != a4)
    {
      [result *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004FC398()
{

  v0 = dispatch thunk of NavigationTray.AccessoriesViewModel.evAccessory.getter();

  if (!v0)
  {

    v1 = dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripAccessory.getter();

    if (!v1)
    {

      v2 = dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripWaldo.getter();

      if (!v2)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_1004FC47C()
{
  v1 = sub_1000CE6B8(&qword_101924900);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for NavigationTray.AccessoriesViewModel.SharedTripState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_shareETAAccessoryModel);
  if (v8)
  {

    v9 = v8;
    dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripWaldo.setter();

    v10 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state;
    swift_beginAccess();
    v11 = *&v9[v10];
    if (!v11)
    {

      dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripAccessory.setter();
    }

    swift_beginAccess();
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v12;
    v13 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle;
    swift_beginAccess();
    v14 = *&v9[v13];
    if (v14)
    {
      v26 = 0;
      v27 = 0;

      v15 = v14;
      v16 = v11;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v17 = v27;
      if (v27)
      {
        v18 = v26;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {

      v20 = v11;
      v18 = 0;
      v17 = 0;
    }

    v21 = [v11 integerValue];
    v22 = &enum case for NavigationTray.AccessoriesViewModel.SharedTripState.hint(_:);
    if (v21)
    {
      if (v21 != 2)
      {
        (*(v5 + 56))(v3, 1, 1, v4);
        (*(v5 + 104))(v7, enum case for NavigationTray.AccessoriesViewModel.SharedTripState.hint(_:), v4);
        goto LABEL_17;
      }

      v22 = &enum case for NavigationTray.AccessoriesViewModel.SharedTripState.sharing(_:);
    }

    (*(v5 + 104))(v3, *v22, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    (*(v5 + 32))(v7, v3, v4);
LABEL_17:
    sub_1004FC820(v24, v25, v18, v17, v7);

    return (*(v5 + 8))(v7, v4);
  }

  dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripAccessory.setter();
}

uint64_t sub_1004FC820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for NavigationTray.AccessoriesViewModel.SharedTripState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripAccessory.getter())
  {

    dispatch thunk of NavigationTray.AccessoryItemViewModel.title.setter();

    dispatch thunk of NavigationTray.AccessoryItemViewModel.shortTitle.setter();
  }

  else
  {
    type metadata accessor for NavigationTray.AccessoryItemViewModel();
    swift_allocObject();

    NavigationTray.AccessoryItemViewModel.init(title:shortTitle:)();
    dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripAccessory.setter();
  }

  (*(v7 + 16))(v9, a5, v6);
  return dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripAccessoryState.setter();
}

void sub_1004FC9C8(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void))
{
  v7 = *&a1[*a4];
  *&a1[*a4] = a3;
  v8 = a3;
  v9 = a1;

  a5();
}

uint64_t sub_1004FCA44()
{
  v1 = sub_1000CE6B8(&qword_1019248E8);
  __chkstk_darwin(v1 - 8);
  v3 = v32 - v2;
  v4 = type metadata accessor for SharedTripCellViewModel.SharedTripState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_waldoAccessoryModel);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC4Maps14NavMetricsView_accessoriesModel;

    v13 = v11;
    dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripAccessory.setter();

    v14 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_state;
    swift_beginAccess();
    v15 = *&v13[v14];
    if (v15)
    {
      v33 = v15;
      v16 = [v33 integerValue];
      v32[1] = v12;
      if (v16 > 2)
      {
        (*(v5 + 56))(v3, 1, 1, v4);
        (*(v5 + 104))(v10, enum case for SharedTripCellViewModel.SharedTripState.notSharing(_:), v4);
      }

      else
      {
        (*(v5 + 104))(v3, **(&off_10161F460 + v16), v4);
        (*(v5 + 56))(v3, 0, 1, v4);
        (*(v5 + 32))(v10, v3, v4);
      }

      v18 = *(v5 + 16);
      v34 = v10;
      v18(v7, v10, v4);
      v19 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_contact;
      swift_beginAccess();
      v20 = *&v13[v19];
      v41 = sub_100014C84(0, &unk_101911D50);
      v42 = sub_1004FEEDC(&qword_1019248F0);
      v40 = v20;
      v21 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_capabilityType;
      swift_beginAccess();
      v22 = *&v13[v21];
      type metadata accessor for MSPSharedTripCapabilityType(0);
      v38 = v23;
      v39 = sub_1004FBFA4(&qword_1019248F8, type metadata accessor for MSPSharedTripCapabilityType);
      v37 = v22;
      v24 = [v20 displayName];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v26;
      v36 = v25;

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v27.super.isa = qword_1019600D8;
      v44._object = 0x800000010123DDF0;
      v28._countAndFlagsBits = 0x20676E6972616853;
      v28._object = 0xEB00000000415445;
      v29._countAndFlagsBits = 0xD00000000000001ALL;
      v29._object = 0x800000010123DDD0;
      v44._countAndFlagsBits = 0xD00000000000003CLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, qword_1019600D8, v28, v44);
      v45._object = 0x800000010123DE50;
      v30._countAndFlagsBits = 0xD00000000000001DLL;
      v30._object = 0x800000010123DE30;
      v31._object = 0x8000000101229390;
      v45._countAndFlagsBits = 0xD000000000000041;
      v31._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v27, v31, v45);
      type metadata accessor for SharedTripCellViewModel();
      swift_allocObject();
      SharedTripCellViewModel.init(state:imageProvider:appIconProvider:title:sharingSubtitle:handleSubtitle:stopSubtitle:trailingLabel:)();
      swift_beginAccess();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripWaldo.getter())
      {
        dispatch thunk of NavigationTray.AccessoryWaldoViewModel.sharedTripCell.getter();
        sub_1004FEC24();

        dispatch thunk of NavigationTray.AccessoryWaldoViewModel.footer.setter();
      }

      else
      {
        type metadata accessor for NavigationTray.AccessoryWaldoViewModel();
        swift_allocObject();

        NavigationTray.AccessoryWaldoViewModel.init(sharedTripCell:footer:)();
        dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripWaldo.setter();
      }

      return (*(v5 + 8))(v34, v4);
    }

    else
    {

      dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripWaldo.setter();
    }
  }

  else
  {

    dispatch thunk of NavigationTray.AccessoriesViewModel.sharedTripWaldo.setter();
  }
}

uint64_t sub_1004FD128(double a1)
{
  *(v1 + OBJC_IVAR____TtC4Maps14NavMetricsView_expansionProgress) = a1;

  dispatch thunk of NavigationTray.MetricsViewModel.expansionProgress.setter();

  dispatch thunk of NavigationTray.AccessoriesViewModel.expansionProgress.setter();
}

void sub_1004FD1C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps14NavMetricsView_metricsViewContainerVC;
  v4 = *(v1 + OBJC_IVAR____TtC4Maps14NavMetricsView_metricsViewContainerVC);
  if (v4)
  {
    v5 = v4;
    [v5 willMoveToParentViewController:0];
    v6 = [v5 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 removeFromSuperview];

    [v5 removeFromParentViewController];
    v8 = *(v1 + v3);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + v3) = a1;
}

id sub_1004FD280(void *a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v34 = a4;
  v8 = type metadata accessor for NavigationTray.AccessoriesViewModel.SharedTripState();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v35 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for NavigationTray.MetricsViewModel.MetricsViewState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = &v4[OBJC_IVAR____TtC4Maps14NavMetricsView_disableNavigationTrayAnimationsListener];
  *v14 = 0u;
  v14[1] = 0u;
  v15 = &v4[OBJC_IVAR____TtC4Maps14NavMetricsView_viewSize];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR____TtC4Maps14NavMetricsView_metricsViewSize];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC4Maps14NavMetricsView_accessoriesViewSize];
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC4Maps14NavMetricsView_metricsView;
  v19 = type metadata accessor for NavigationTray.Metrics();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC4Maps14NavMetricsView_accessoriesView;
  v21 = type metadata accessor for NavigationTray.Accessories();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC4Maps14NavMetricsView_eta;
  *&v5[OBJC_IVAR____TtC4Maps14NavMetricsView_eta] = 0;
  *&v5[OBJC_IVAR____TtC4Maps14NavMetricsView_shareETAAccessoryModel] = 0;
  *&v5[OBJC_IVAR____TtC4Maps14NavMetricsView_waldoAccessoryModel] = 0;
  *&v5[OBJC_IVAR____TtC4Maps14NavMetricsView_expansionProgress] = 0;
  *&v5[OBJC_IVAR____TtC4Maps14NavMetricsView_metricsViewContainerVC] = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v23 = *&v5[v22];
  *&v5[v22] = a3;
  v38 = a3;

  v5[OBJC_IVAR____TtC4Maps14NavMetricsView_isCarPlay] = v34;
  (*(v11 + 104))(v13, enum case for NavigationTray.MetricsViewModel.MetricsViewState.eta(_:), v10);
  type metadata accessor for NavigationTray.MetricSection();
  swift_allocObject();
  NavigationTray.MetricSection.init(unit:value:unitAccessibilityLabel:)();
  swift_allocObject();
  NavigationTray.MetricSection.init(unit:value:unitAccessibilityLabel:)();
  swift_allocObject();
  NavigationTray.MetricSection.init(unit:value:unitAccessibilityLabel:)();
  GEOConfigGetBOOL();
  type metadata accessor for NavigationTray.MetricsViewModel();
  swift_allocObject();
  *&v5[OBJC_IVAR____TtC4Maps14NavMetricsView_metricsModel] = NavigationTray.MetricsViewModel.init(state:eta:time:distance:disableAnimations:navigationTrayHasAccessories:expansionProgress:)();
  (*(v36 + 104))(v35, enum case for NavigationTray.AccessoriesViewModel.SharedTripState.hint(_:), v37);
  type metadata accessor for NavigationTray.AccessoriesViewModel();
  swift_allocObject();
  *&v5[OBJC_IVAR____TtC4Maps14NavMetricsView_accessoriesModel] = NavigationTray.AccessoriesViewModel.init(evAccessory:sharedTripAccessory:sharedTripAccessoryState:sharedTripWaldo:expansionProgress:)();
  v24 = type metadata accessor for NavMetricsView();
  v40.receiver = v5;
  v40.super_class = v24;
  v25 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100014C84(0, &qword_10190B4F0);
  v26 = v25;
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004FEED4;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054183C;
  aBlock[3] = &unk_10161F438;
  v29 = _Block_copy(aBlock);

  v30 = _GEOConfigAddBlockListenerForKey();
  _Block_release(v29);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v31 = OBJC_IVAR____TtC4Maps14NavMetricsView_disableNavigationTrayAnimationsListener;
  swift_beginAccess();
  sub_1002761D8(aBlock, v26 + v31, &unk_101908380);
  swift_endAccess();
  sub_10006DBC0();

  swift_unknownObjectRelease();
  return v26;
}

uint64_t sub_1004FD860()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    GEOConfigGetBOOL();
    dispatch thunk of NavigationTray.MetricsViewModel.disableAnimations.setter();
  }

  return result;
}

id sub_1004FD95C()
{
  v1 = OBJC_IVAR____TtC4Maps14NavMetricsView_disableNavigationTrayAnimationsListener;
  swift_beginAccess();
  sub_1000D2DFC(v0 + v1, &v4, &unk_101908380);
  if (v5)
  {
    sub_1000D2BE0(&v4, &v6);
    sub_10005E838(&v6, v7);
    _bridgeAnythingToObjectiveC<A>(_:)();
    GEOConfigRemoveBlockListener();
    swift_unknownObjectRelease();
    sub_10004E3D0(&v6);
  }

  else
  {
    sub_100024F64(&v4, &unk_101908380);
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for NavMetricsView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004FDBE4()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationTray.MetricsViewModel.MetricsViewState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;

  if (_UISolariumEnabled() && !*(v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_eta))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v31 = [Strong lastGuidanceETA], swift_unknownObjectRelease(), v31))
    {

      v9 = &enum case for NavigationTray.MetricsViewModel.MetricsViewState.rerouting(_:);
    }

    else
    {
      v9 = &enum case for NavigationTray.MetricsViewModel.MetricsViewState.loading(_:);
    }
  }

  else
  {
    v9 = &enum case for NavigationTray.MetricsViewModel.MetricsViewState.eta(_:);
  }

  (*(v3 + 104))(v8, *v9, v2);
  sub_10006F728();
  v33 = v8;
  sub_10006F7C4();
  v32[0] = v10;
  v11 = sub_10006F564();
  v32[1] = v12;
  v32[2] = v11;
  v13 = sub_10006F988();
  v32[3] = v14;
  v32[4] = v13;
  v15 = sub_1004FDBA4();
  v32[5] = v16;
  v32[6] = v15;
  v17 = sub_10006F9F8();
  v32[7] = v18;
  v32[8] = v17;
  v19 = sub_10006FA14();
  v32[9] = v20;
  v32[10] = v19;
  v21 = sub_1004FDBC4();
  v32[11] = v22;
  v32[12] = v21;
  (*(v3 + 16))(v5, v8, v2);
  dispatch thunk of NavigationTray.MetricsViewModel.state.setter();
  dispatch thunk of NavigationTray.MetricsViewModel.eta.getter();
  dispatch thunk of NavigationTray.MetricSection.unit.setter();

  dispatch thunk of NavigationTray.MetricsViewModel.eta.getter();
  dispatch thunk of NavigationTray.MetricSection.value.setter();

  dispatch thunk of NavigationTray.MetricsViewModel.time.getter();
  dispatch thunk of NavigationTray.MetricSection.unit.setter();

  dispatch thunk of NavigationTray.MetricsViewModel.time.getter();
  dispatch thunk of NavigationTray.MetricSection.value.setter();

  dispatch thunk of NavigationTray.MetricsViewModel.time.getter();
  dispatch thunk of NavigationTray.MetricSection.unitAccessibilityLabel.setter();

  dispatch thunk of NavigationTray.MetricsViewModel.distance.getter();
  dispatch thunk of NavigationTray.MetricSection.unit.setter();

  dispatch thunk of NavigationTray.MetricsViewModel.distance.getter();
  dispatch thunk of NavigationTray.MetricSection.value.setter();

  dispatch thunk of NavigationTray.MetricsViewModel.distance.getter();
  dispatch thunk of NavigationTray.MetricSection.unitAccessibilityLabel.setter();

  (*(v3 + 8))(v33, v2);
  v23 = *(v1 + OBJC_IVAR____TtC4Maps14NavMetricsView_eta);
  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = v23;
  v25 = [v24 arrivalBatteryCharge];
  if (!v25)
  {

LABEL_10:

    dispatch thunk of NavigationTray.AccessoriesViewModel.evAccessory.setter();

    return;
  }

  v26 = [v24 arrivalChargeString];
  if (v26)
  {
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = [v24 shortArrivalChargeString];
    if (v28)
    {
      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    if (dispatch thunk of NavigationTray.AccessoriesViewModel.evAccessory.getter())
    {
      dispatch thunk of NavigationTray.AccessoryItemViewModel.title.setter();
      dispatch thunk of NavigationTray.AccessoryItemViewModel.shortTitle.setter();
    }

    else
    {
      type metadata accessor for NavigationTray.AccessoryItemViewModel();
      swift_allocObject();
      NavigationTray.AccessoryItemViewModel.init(title:shortTitle:)();
      dispatch thunk of NavigationTray.AccessoriesViewModel.evAccessory.setter();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1004FE048(uint64_t a1)
{
  v2 = type metadata accessor for NavigationTray.Accessories.AccessoryButtonType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for NavigationTray.Accessories.AccessoryButtonType.sharedTripSuggested(_:))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = swift_unknownObjectWeakLoadStrong();

      if (v10)
      {
        [v10 didTapShareETAHintButton];
LABEL_13:
        swift_unknownObjectRelease();
      }
    }
  }

  else if (v7 == enum case for NavigationTray.Accessories.AccessoryButtonType.sharedTripSharing(_:))
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = swift_unknownObjectWeakLoadStrong();

      if (v13)
      {
        [v13 didTapShareETASharingButton];
        goto LABEL_13;
      }
    }
  }

  else if (v7 == enum case for NavigationTray.Accessories.AccessoryButtonType.sharedTripWaldo(_:))
  {
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      v16 = swift_unknownObjectWeakLoadStrong();

      if (v16)
      {
        [v16 didTapShareETAContactButton];
        goto LABEL_13;
      }
    }
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1004FE280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1000CE6B8(&qword_1019248C0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_1000CE6B8(&qword_101924898);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1000CE6B8(&qword_1019248C8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v19 = OBJC_IVAR____TtC4Maps14NavMetricsView_metricsView;
  swift_beginAccess();
  sub_1000D2DFC(a1 + v19, v11, &qword_101924898);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1004FEB18();

  View.onTapGesture(count:perform:)();

  sub_100024F64(v11, &qword_101924898);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = &v18[*(v13 + 44)];
  *v21 = sub_1004FEF44;
  *(v21 + 1) = 0;
  *(v21 + 2) = sub_1004FEBCC;
  *(v21 + 3) = v20;
  v22 = OBJC_IVAR____TtC4Maps14NavMetricsView_accessoriesView;
  swift_beginAccess();
  sub_1000D2DFC(a1 + v22, v8, &qword_101924890);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = &v8[*(v4 + 44)];
  *v24 = sub_1004FEF44;
  *(v24 + 1) = 0;
  *(v24 + 2) = sub_1004FEBF8;
  *(v24 + 3) = v23;
  sub_1000BEAF4(v18, v15);
  v25 = v29;
  sub_1000D2DFC(v8, v29, &qword_1019248C0);
  v26 = v30;
  sub_1000BEAF4(v15, v30);
  v27 = sub_1000CE6B8(&qword_1019248E0);
  sub_1000D2DFC(v25, v26 + *(v27 + 48), &qword_1019248C0);
  sub_100024F64(v8, &qword_1019248C0);
  sub_1000BEB64(v18);
  sub_100024F64(v25, &qword_1019248C0);
  return sub_1000BEB64(v15);
}

void sub_1004FE64C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 didTapMetricsView];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1004FE6CC(double *a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = *a1;
  v6 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = Strong + *a3;
    v11 = *(v10 + 8);
    *v10 = v7;
    *(v10 + 8) = v6;
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      if (v11 != v6)
      {
        [v12 *a4];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1004FE780(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = &Strong[OBJC_IVAR____TtC4Maps14NavMetricsView_viewSize];
    v6 = *&Strong[OBJC_IVAR____TtC4Maps14NavMetricsView_viewSize + 8];
    *v5 = v1;
    *(v5 + 1) = v2;
    [Strong invalidateIntrinsicContentSize];
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      if (v6 != v5[1])
      {
        [v7 didUpdateSize];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1004FE86C()
{
  sub_1004FE9C8(319, &qword_101924878, &type metadata accessor for NavigationTray.Metrics);
  if (v0 <= 0x3F)
  {
    sub_1004FE9C8(319, &qword_101924880, &type metadata accessor for NavigationTray.Accessories);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004FE9C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1004FEA2C()
{
  result = qword_1019248A8;
  if (!qword_1019248A8)
  {
    sub_1000D6664(&qword_101924888);
    sub_1000414C8(&qword_1019248B0, &qword_1019248B8);
    sub_1000414C8(&qword_10190B750, &qword_10190B758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019248A8);
  }

  return result;
}

unint64_t sub_1004FEB18()
{
  result = qword_1019248D0;
  if (!qword_1019248D0)
  {
    sub_1000D6664(&qword_101924898);
    sub_1004FBFA4(&qword_1019248D8, &type metadata accessor for NavigationTray.Metrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019248D0);
  }

  return result;
}

uint64_t sub_1004FEC24()
{
  v0 = type metadata accessor for SharedTripCellViewModel.SharedTripState();
  __chkstk_darwin(v0 - 8);
  dispatch thunk of SharedTripCellViewModel.state.getter();
  dispatch thunk of SharedTripCellViewModel.state.setter();
  dispatch thunk of SharedTripCellViewModel.imageProvider.getter();
  dispatch thunk of SharedTripCellViewModel.imageProvider.setter();
  dispatch thunk of SharedTripCellViewModel.appIconProvider.getter();
  dispatch thunk of SharedTripCellViewModel.appIconProvider.setter();
  dispatch thunk of SharedTripCellViewModel.title.getter();
  dispatch thunk of SharedTripCellViewModel.title.setter();
  dispatch thunk of SharedTripCellViewModel.sharingSubtitle.getter();
  dispatch thunk of SharedTripCellViewModel.sharingSubtitle.setter();
  dispatch thunk of SharedTripCellViewModel.handleSubtitle.getter();
  dispatch thunk of SharedTripCellViewModel.handleSubtitle.setter();
  dispatch thunk of SharedTripCellViewModel.stopSubtitle.getter();
  dispatch thunk of SharedTripCellViewModel.stopSubtitle.setter();
  dispatch thunk of SharedTripCellViewModel.trailingLabel.getter();
  return dispatch thunk of SharedTripCellViewModel.trailingLabel.setter();
}

void sub_1004FED34()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_disableNavigationTrayAnimationsListener);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = (v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_viewSize);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_metricsViewSize);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_accessoriesViewSize);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC4Maps14NavMetricsView_metricsView;
  v6 = type metadata accessor for NavigationTray.Metrics();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC4Maps14NavMetricsView_accessoriesView;
  v8 = type metadata accessor for NavigationTray.Accessories();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_eta) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_shareETAAccessoryModel) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_waldoAccessoryModel) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_expansionProgress) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps14NavMetricsView_metricsViewContainerVC) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004FEEDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100014C84(255, &unk_101911D50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004FEF6C()
{
  result = qword_101924908;
  if (!qword_101924908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924908);
  }

  return result;
}

void sub_1004FEFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_1000D2C74;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100271778;
  v9[3] = &unk_10161F4E8;
  v8 = _Block_copy(v9);

  [v6 imageWithResultHandler:v8];
  _Block_release(v8);
}

unint64_t sub_1004FF0A8()
{
  result = qword_101924910;
  if (!qword_101924910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924910);
  }

  return result;
}

void sub_1004FF0FC(uint64_t a1@<X8>)
{
  v3 = *&v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration + 64];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v4 homeResult];
  if (!v5)
  {

    goto LABEL_8;
  }

  v6 = v5;
  v7 = [v5 isCuratedCollectionSectionValid];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  v8 = v4;
  v9 = sub_100068674();
  v19[0] = v8;
  swift_unknownObjectWeakInit();
  v18 = sub_1000CE6B8(&qword_101924968);
  v16 = v1;
  v17 = &off_10161F510;
  sub_10005E838(&v16, v18);
  DynamicType = swift_getDynamicType();
  v11 = v8;
  v12 = v1;
  v13 = v11;
  v14 = v12;
  sub_10004E3D0(&v16);
  if (swift_isClassType() && DynamicType)
  {
    v16 = v14;
    v17 = &off_10161F510;
    swift_unknownObjectRetain();
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectWeakAssign();
  }

  *(a1 + 32) = &type metadata for HomePublisherGuidesCollectionRowCellModel;
  *(a1 + 40) = sub_100500D40();
  v15 = swift_allocObject();
  *(a1 + 8) = v15;
  sub_100500D94(v19, v15 + 16);

  *a1 = v9;
}

void sub_1004FF2E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController____lazy_storage___curatedCollectionsIdentifierPath);
}

id sub_1004FF324()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeListCuratedCollectionsSectionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004FF3A4(uint64_t a1@<X8>)
{
  v3 = *&v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration + 64];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v4 homeResult];
  if (!v5)
  {
LABEL_7:

LABEL_8:
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  v6 = v5;
  v7 = [v5 isCuratedCollectionSectionValid];

  if (!v7)
  {
    v4 = v6;
    goto LABEL_7;
  }

  v8 = [v6 curatedCollectionSectionName];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = 256;
  swift_unknownObjectWeakInit();
  v18 = sub_1000CE6B8(&qword_101915FE8);
  v16 = v1;
  v17 = &off_10161F530;
  sub_10005E838(&v16, v18);
  DynamicType = swift_getDynamicType();
  v14 = v1;
  sub_10004E3D0(&v16);
  if (swift_isClassType() && DynamicType)
  {
    v16 = v14;
    v17 = &off_10161F530;
    v15 = v14;
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectWeakAssign();
  }

  *(a1 + 32) = 0xD000000000000016;
  *(a1 + 40) = 0x800000010123DF60;
}

char *sub_1004FF578()
{
  sub_1004FF0FC(v14);
  sub_100500CD0(v14, &v11);
  v7[0] = v11;
  v7[1] = v12;
  v7[2] = v13;
  if (v11)
  {
    v8 = v11;
    v9 = v12;
    v10 = v13;
    v0 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_100355784(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v2 = *(v0 + 2);
    v1 = *(v0 + 3);
    if (v2 >= v1 >> 1)
    {
      v0 = sub_100355784((v1 > 1), v2 + 1, 1, v0);
    }

    *(v0 + 2) = v2 + 1;
    v3 = &v0[48 * v2];
    v4 = v8;
    v5 = v10;
    *(v3 + 3) = v9;
    *(v3 + 4) = v5;
    *(v3 + 2) = v4;
  }

  else
  {
    sub_100024F64(v7, &qword_101916000);
    v0 = _swiftEmptyArrayStorage;
  }

  sub_100024F64(v14, &qword_101916000);
  return v0;
}

uint64_t sub_1004FF6AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v64 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v55 - v15;
  v61 = v10[13];
  v62 = v10 + 13;
  v61(&v55 - v15, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v9, v14);
  v17 = v10[2];
  v65 = v16;
  v66 = v9;
  v17(v12, v16, v9);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v63 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
  sub_10003E48C(v2 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, &v67);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(&v67);
  if (Strong)
  {
    v56 = v4;
    v59 = a1;
    v60 = v6;
    swift_getObjectType();
    if (!swift_conformsToProtocol2() || !v2)
    {
      goto LABEL_22;
    }

    v19 = v2;
    v20 = sub_10053C718();
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    v24 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
    if (v24)
    {
      v25 = v21;
      v55 = v2;
      v26 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

      v27 = v20;
      sub_1000F0120(v24);
      sub_100368A2C(v27, v25, v23, 0, v26, &v67);

      swift_bridgeObjectRelease_n();
      if (v67)
      {
        sub_100024F64(&v67, &unk_101915FD0);
        (*(v58 + 104))(v57, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v56);
        UICollectionLayoutListConfiguration.headerMode.setter();
        swift_unknownObjectRelease();
        v2 = v55;
        v6 = v60;
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
      v2 = v55;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
    }

    v6 = v60;
    sub_100024F64(&v67, &unk_101915FD0);
  }

LABEL_10:
  v28 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  sub_100014C84(0, &unk_101910E00);
  v29 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v29 contentInsets];
  [v29 setContentInsets:0.0];
  [v29 contentInsets];
  [v29 setContentInsets:?];
  v30 = v66;
  (v61)(v12, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v66);
  v31 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
  v32 = v10[1];
  v32(v12, v30);
  if (v31)
  {
    static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  }

  [v29 contentInsets];
  [v29 setContentInsets:?];
  [v29 contentInsets];
  [v29 setContentInsets:?];
  (*(v64 + 8))(v8, v6);
  v32(v65, v66);
  sub_10003E48C(v2 + v63, &v67);
  v33 = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(&v67);
  if (!v33)
  {
    return v29;
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2() && v2)
  {
    v34 = v2;
    v35 = sub_10053C718();
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    v39 = *(v33 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
    if (v39)
    {
      v40 = v36;
      v41 = *(v33 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

      v42 = v35;
      sub_1000F0120(v39);
      sub_100368A2C(v42, v40, v38, 0, v41, &v67);

      swift_bridgeObjectRelease_n();
      if (v67)
      {
        sub_100024F64(&v67, &unk_101915FD0);
        v43 = objc_opt_self();
        v44 = [v43 fractionalWidthDimension:1.0];
        [objc_opt_self() estimatedHeight];
        v45 = [v43 estimatedDimension:?];
        v46 = [objc_opt_self() sizeWithWidthDimension:v44 heightDimension:v45];

        v47 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v46 elementKind:UICollectionElementKindSectionHeader alignment:1];
        static MapsDesignConstants.Spacing.textHorizontalPadding.getter();
        v49 = v48;
        v50 = v47;
        [v50 setContentInsets:{0.0, v49, 0.0, v49}];

        swift_unknownObjectRelease();
        sub_1000CE6B8(&qword_101908400);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1011E47B0;
        *(v51 + 32) = v50;
        sub_100014C84(0, &unk_101910E10);
        v52 = v50;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v29 setBoundarySupplementaryItems:isa];

        return v29;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
    }

    sub_100024F64(&v67, &unk_101915FD0);
    return v29;
  }

LABEL_22:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1004FFFAC()
{
  v1 = v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homeResult];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 exploreGuides];

      if (v5)
      {
        sub_10003E48C(v1, v8);
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_10003E4E8(v8);
        if (Strong)
        {
          v7 = [v5 guideLocation];
          [Strong homeItemTapped:v7];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }
}

void sub_100500414(void *a1, uint64_t a2)
{
  sub_10003E48C(v2 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v11);
  if (Strong)
  {
    [Strong homeItemTapped:a1];
    swift_unknownObjectRelease();
  }

  v6 = [objc_opt_self() sharedManager];
  v7 = [a1 collectionIdentifier];
  v8 = [v6 collectionIsSavedWithIdentifier:v7];

  v9 = objc_opt_self();
  v10 = [a1 collectionIdentifier];
  [v9 captureCuratedCollectionCarouselTapCollectionWithIdentifier:v10 atIndex:a2 isSaved:v8];
}

void sub_100500548(id a1, unint64_t a2, unint64_t a3, void *a4, void *a5, NSObject *a6)
{
  v7 = a3;
  if (a3 || !a1)
  {
    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

  if (!(a2 >> 62))
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      v32 = a5;
      oslog = a6;
      v35[0] = _swiftEmptyArrayStorage;
      goto LABEL_7;
    }

LABEL_28:
    if (qword_101906710 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100021540(v23, qword_10195FFD0);
    v24 = a4;
    swift_errorRetain();
    osloga = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(osloga, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412546;
      v28 = [v24 collectionIdentifier];
      *(v26 + 4) = v28;
      *v27 = v28;
      *(v26 + 12) = 2112;
      if (v7)
      {
        swift_errorRetain();
        v29 = _swift_stdlib_bridgeErrorToNSError();
        v30 = v29;
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      *(v26 + 14) = v29;
      v27[1] = v30;
      _os_log_impl(&_mh_execute_header, osloga, v25, "Failed to resolve curated collection with id: %@ error: %@", v26, 0x16u);
      sub_1000CE6B8(&qword_1019144F0);
      swift_arrayDestroy();
    }

    return;
  }

LABEL_26:
  v22 = a1;
  v32 = a5;
  oslog = a6;
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_28;
  }

  v35[0] = _swiftEmptyArrayStorage;
  v9 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v22;
LABEL_7:
  a1 = a1;
  v31 = a1;
  v10 = 0;
  a4 = _swiftEmptyArrayStorage;
  while (v9 != v10)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      a1 = *(a2 + 8 * v10 + 32);
    }

    v11 = a1;
    v7 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v12 = [a1 mapItem];

    ++v10;
    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      a1 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a4 = v35[0];
      v10 = v7;
    }
  }

  v13 = objc_allocWithZone(CuratedCollectionShareItemSource);
  sub_100014C84(0, &unk_101918390);
  v14 = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithPlaceCollection:v14 refinedMapItems:isa];

  v35[0] = v32;
  v17 = v32;
  sub_1000CE6B8(&qword_101924978);
  v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v19 = [objc_opt_self() optionsWithSender:v18];
  swift_unknownObjectRelease();
  sub_10003E48C(oslog + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v35);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v35);
  if (Strong && (v21 = [Strong homeShareDelegate], swift_unknownObjectRelease(), v21))
  {
    v16 = v16;
    [v21 shareItem:v16 presentationOptions:v19 completion:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100500A04(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 || !a1)
  {
    if (qword_101906710 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100021540(v11, qword_10195FFD0);
    v12 = a4;
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      v16 = [v12 collectionIdentifier];
      *(v14 + 4) = v16;
      *v15 = v16;
      *(v14 + 12) = 2112;
      if (a3)
      {
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v14 + 14) = v17;
      v15[1] = v18;
      _os_log_impl(&_mh_execute_header, v19, v13, "Failed to resolve curated collection with id: %@ error: %@", v14, 0x16u);
      sub_1000CE6B8(&qword_1019144F0);
      swift_arrayDestroy();
    }
  }

  else
  {
    v19 = a1;
    v6 = [v19 publisher];
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        sub_10003E48C(Strong + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v20);

        v10 = swift_unknownObjectWeakLoadStrong();
        sub_10003E4E8(v20);
        if (v10)
        {
          v7 = v7;
          [v10 homeItemTapped:v7];
          swift_unknownObjectRelease();
        }
      }

      return;
    }
  }
}

uint64_t sub_100500CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101916000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100500D40()
{
  result = qword_101924970;
  if (!qword_101924970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924970);
  }

  return result;
}

void *sub_100500E04()
{
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem);
  v2 = v1;
  return v1;
}

uint64_t sub_100500EA0()
{
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem);
  if (v1)
  {
    v2 = v1;
    if ([v2 type] == 6)
    {

      LOBYTE(v1) = 0;
    }

    else
    {
      v3 = *(v2 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup);

      LOBYTE(v1) = v3 ^ 1;
    }
  }

  return v1 & 1;
}

uint64_t sub_100500F7C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps19HomePinnedItemModel__pinnedTileImageProvider;
  swift_beginAccess();
  return sub_10005EB40(v5 + v3, a1);
}

uint64_t sub_100501030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps19HomePinnedItemModel__pinnedTileImageProvider;
  swift_beginAccess();
  return sub_10005EB40(v3 + v4, a2);
}

uint64_t sub_1005010E4(uint64_t a1, uint64_t *a2)
{
  sub_10005EB40(a1, v13);
  v3 = *a2;
  v4 = v14;
  v5 = v15;
  v6 = sub_1000FA458(v13, v14);
  v7 = __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v10 + 16))(v9, v7);
  sub_1005037D8(v9, v3, v4, v5);
  return sub_10004E3D0(v13);
}

uint64_t sub_1005011D4(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC4Maps19HomePinnedItemModel__pinnedTileImageProvider;
  swift_beginAccess();
  sub_1003C1E34((a1 + v4), a2);
  return swift_endAccess();
}

uint64_t sub_100501254(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1005012F4()
{
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__subtitle);

  return v1;
}

uint64_t sub_10050139C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__subtitle + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__subtitle);
  a2[1] = v4;
}

uint64_t sub_100501440(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__subtitle);
  v6 = *(v2 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__subtitle + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005036F8(&qword_101916010);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1005015BC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_10050165C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_100501704(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005036F8(&qword_101916010);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10050186C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_10050190C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005036F8(&qword_101916010);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_100501A24()
{
  v0 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100501BBC()[2];

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000CE6B8(&unk_10190D580);
  type metadata accessor for TrailingAccessoryViewModel();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E1D30;
  *v3 = sub_100501BBC();
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  (*(v1 + 104))(v3, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.more(_:), v0);
  TrailingAccessoryViewModel.init(type:)();
  return v5;
}