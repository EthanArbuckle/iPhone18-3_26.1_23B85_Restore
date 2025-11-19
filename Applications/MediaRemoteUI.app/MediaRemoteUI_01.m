uint64_t sub_10001DD64()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController_presentableContext;

  return sub_10000630C(v1);
}

id sub_10001DDD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionBannerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10001DEA8()
{
  result = qword_1000712B8;
  if (!qword_1000712B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000712B8);
  }

  return result;
}

void sub_10001DEF4()
{
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___routeIcon) = 0;
  v1 = OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController_trailingIcon;
  *(v0 + v1) = sub_100005380();
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___titleContentItem) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___pillView) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10001E094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10001E0EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_10001E130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001E178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001E1FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v15[10] = *(a1 + 160);
  v15[11] = v2;
  v15[12] = *(a1 + 192);
  v16 = *(a1 + 208);
  v3 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v3;
  v4 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v4;
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 176);
  v17[10] = *(a2 + 160);
  v17[11] = v8;
  v17[12] = *(a2 + 192);
  v18 = *(a2 + 208);
  v9 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v9;
  v10 = *(a2 + 144);
  v17[8] = *(a2 + 128);
  v17[9] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  return sub_10001E874(v15, v17) & 1;
}

uint64_t sub_10001E2B0()
{
  v1 = 0x3E656E6F6E3CLL;
  _StringGuts.grow(_:)(460);
  v2._countAndFlagsBits = 0xD00000000000002FLL;
  v2._object = 0x800000010004CDF0;
  String.append(_:)(v2);
  String.append(_:)(*v0);
  v3._object = 0x800000010004CE20;
  v3._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + 16));
  v4._object = 0x800000010004CE50;
  v4._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 32));
  v5._object = 0x800000010004CE80;
  v5._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v5);
  if (*(v0 + 48))
  {

    sub_100004E6C(&qword_1000712E8);
    sub_10001E780();
    v6 = BidirectionalCollection<>.joined(separator:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE600000000000000;
    v6 = 0x3E656E6F6E3CLL;
  }

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._object = 0x800000010004CEB0;
  v10._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v10);
  if (*(v0 + 64))
  {
    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
  }

  else
  {
    v12 = 0xE600000000000000;
    v11 = 0x3E656E6F6E3CLL;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14._object = 0x800000010004CEE0;
  v14._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v14);
  if (*(v0 + 112))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v0 + 112))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._object = 0x800000010004CF10;
  v18._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v18);
  if (*(v0 + 128))
  {
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);
  }

  else
  {
    v20 = 0xE600000000000000;
    v19 = 0x3E656E6F6E3CLL;
  }

  v21._countAndFlagsBits = v19;
  v21._object = v20;
  String.append(_:)(v21);

  v22._object = 0x800000010004CF40;
  v22._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v22);
  if (*(v0 + 144))
  {
    v23 = *(v0 + 136);
    v24 = *(v0 + 144);
  }

  else
  {
    v24 = 0xE600000000000000;
    v23 = 0x3E656E6F6E3CLL;
  }

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  String.append(_:)(v25);

  v26._object = 0x800000010004CF70;
  v26._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v26);
  if (*(v0 + 160))
  {
    v27 = *(v0 + 152);
    v28 = *(v0 + 160);
  }

  else
  {
    v28 = 0xE600000000000000;
    v27 = 0x3E656E6F6E3CLL;
  }

  v29._countAndFlagsBits = v27;
  v29._object = v28;
  String.append(_:)(v29);

  v30._object = 0x800000010004CFA0;
  v30._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v30);
  if (*(v0 + 176))
  {
    v31 = *(v0 + 168);
    v32 = *(v0 + 176);
  }

  else
  {
    v32 = 0xE600000000000000;
    v31 = 0x3E656E6F6E3CLL;
  }

  v33._countAndFlagsBits = v31;
  v33._object = v32;
  String.append(_:)(v33);

  v34._object = 0x800000010004CFD0;
  v34._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v34);
  if (*(v0 + 184))
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (*(v0 + 184))
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  v37 = v36;
  String.append(_:)(*&v35);

  v38._object = 0x800000010004D000;
  v38._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v38);
  String.append(_:)(*(v0 + 192));
  v39._object = 0x800000010004D030;
  v39._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v39);
  if (*(v0 + 208))
  {

    sub_100004E6C(&qword_1000712E8);
    sub_10001E780();
    v1 = BidirectionalCollection<>.joined(separator:)();
    v41 = v40;
  }

  else
  {
    v41 = 0xE600000000000000;
  }

  v42._countAndFlagsBits = v1;
  v42._object = v41;
  String.append(_:)(v42);

  v43._countAndFlagsBits = 8194619;
  v43._object = 0xE300000000000000;
  String.append(_:)(v43);
  return 0;
}

unint64_t sub_10001E780()
{
  result = qword_1000712F0;
  if (!qword_1000712F0)
  {
    sub_10000CE40(&qword_1000712E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712F0);
  }

  return result;
}

uint64_t sub_10001E7E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10001E874(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (sub_10001E7E4(v6, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9 || (*(a1 + 56) != *(a2 + 56) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    sub_100006334(0, &qword_100071308);
    v12 = v11;
    v13 = v10;
    v14 = static NSObject.== infix(_:_:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100006334(0, &qword_1000712F8);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 104);
  v16 = *(a2 + 104);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_40;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  sub_100006334(0, &qword_100071300);
  v17 = v16;
  v18 = v15;
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  if ((*(a1 + 112) ^ *(a2 + 112)))
  {
    return 0;
  }

  v21 = *(a1 + 128);
  v22 = *(a2 + 128);
  if (v21)
  {
    if (!v22 || (*(a1 + 120) != *(a2 + 120) || v21 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = *(a1 + 144);
  v24 = *(a2 + 144);
  if (v23)
  {
    if (!v24 || (*(a1 + 136) != *(a2 + 136) || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a1 + 160);
  v26 = *(a2 + 160);
  if (v25)
  {
    if (!v26 || (*(a1 + 152) != *(a2 + 152) || v25 != v26) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = *(a1 + 176);
  v28 = *(a2 + 176);
  if (v27)
  {
    if (!v28 || (*(a1 + 168) != *(a2 + 168) || v27 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  if (((*(a1 + 184) ^ *(a2 + 184)) & 1) != 0 || (*(a1 + 192) != *(a2 + 192) || *(a1 + 200) != *(a2 + 200)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v29 = *(a1 + 208);
  v30 = *(a2 + 208);
  if (v29)
  {
    if (!v30 || (sub_10001E7E4(v29, v30) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  return 1;
}

void sub_10001EC84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10001EE08(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  v9 = qword_1000737C8;
  if (os_log_type_enabled(qword_1000737C8, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10003F8C8(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v9, v8, "[MainServer] revokeBanner %s", v10, 0xCu);
    sub_100007FE8(v11);
  }

  return sub_10003190C(a1, a2, 0x757165722044524DLL, 0xEB00000000747365, a3, a4);
}

id sub_10001F030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(v3 + OBJC_IVAR____TtC13MediaRemoteUI6Client_connection) remoteTarget];
  if (result)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000082C0(&v15, &v16);
    sub_100004E6C(&qword_100071548);
    swift_dynamicCast();
    v8 = String._bridgeToObjectiveC()();
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v14 bannerWithIdentifier:v8 postedEvent:isa];

    if (a3 == 2)
    {
      v10 = 0x65727020676E6F6CLL;
      v13 = 0xEC00000064657373;
      v11 = a1;
      v12 = a2;
    }

    else
    {
      if (a3 != 1)
      {
        return swift_unknownObjectRelease();
      }

      v10 = 0x646570706174;
      v11 = a1;
      v12 = a2;
      v13 = 0xE600000000000000;
    }

    sub_10003190C(v11, v12, v10, v13, 0, 0);
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for Client()
{
  result = qword_1000713A0;
  if (!qword_1000713A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F32C()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10001F3D0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() interfaceWithIdentifier:v0];

  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol:&OBJC_PROTOCOL___MRUIServerProtocol];
  [v1 setServer:v3];

  v4 = [v2 protocolForProtocol:&OBJC_PROTOCOL___MRUIClientProtocol];
  [v1 setClient:v4];

  [v1 setClientMessagingExpectation:0];
  [v1 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100006334(0, &qword_100071540);
  swift_dynamicCast();
  return v6;
}

id sub_10001F544()
{
  v1 = v0;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_allowedBundleIDs] = &off_10005D820;
  v12 = OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_connectionQueue;
  v7 = sub_100006334(0, &qword_100070AF0);
  v11[1] = "rviceConnectionContext>8";
  v11[2] = v7;
  static DispatchQoS.userInitiated.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100021CD8(&unk_100071BD0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004E6C(&unk_100071530);
  sub_100021D20(&unk_100071BE0, &unk_100071530);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  *&v0[v12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_listener] = 0;
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_clients] = &_swiftEmptySetSingleton;
  v8 = OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_interface;
  *&v1[v8] = sub_10001F3D0();
  static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v9 = type metadata accessor for ClientConnectionManager();
  v14.receiver = v1;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

void sub_10001F8A0()
{
  v1 = swift_allocObject();
  *(v1 + 16) = sub_100020F80;
  *(v1 + 24) = &v7;
  aBlock[4] = sub_100021DEC;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100021DE8;
  aBlock[3] = &unk_10005E438;
  v2 = _Block_copy(aBlock);
  v3 = objc_opt_self();

  v4 = [v3 listenerWithConfigurator:v2];
  _Block_release(v2);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_listener);
    *(v0 + OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_listener) = v4;
    v6 = v4;

    if (v6)
    {
      [v6 activate];

      return;
    }
  }

  __break(1u);
}

id sub_10001FA18(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

void sub_10001FAD8(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setTargetQueue:*(a2 + OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_connectionQueue)];
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v6];

  [a1 setInterface:*(a2 + OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_interface)];
  [a1 setInterfaceTarget:a3];
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v11[4] = sub_100021C88;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001439C;
  v11[3] = &unk_10005E5A0;
  v10 = _Block_copy(v11);

  [a1 setInvalidationHandler:v10];
  _Block_release(v10);
}

uint64_t sub_10001FC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v12 = *&Strong[OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_connectionQueue];

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  aBlock[4] = sub_100021CD0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015D4C;
  aBlock[3] = &unk_10005E5F0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100021CD8(&qword_100071B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004E6C(&unk_100070B00);
  sub_100021D20(&qword_100071BA0, &unk_100070B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v10, v17);
}

void sub_10001FF68()
{
  v0 = static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  v1 = qword_1000737C8;
  if (os_log_type_enabled(qword_1000737C8, v0))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v12 = v3;
    *v2 = 136446210;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v5 = [Strong description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = sub_10003F8C8(v6, v8, &v12);

    *(v2 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v0, "[ClientConnectionManager] client %{public}s invalidated", v2, 0xCu);
    sub_100007FE8(v3);
  }

  v10 = swift_unknownObjectUnownedLoadStrong();
  v11 = swift_unknownObjectUnownedLoadStrong();
  sub_100020480(v11);
}

uint64_t sub_100020110(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_1000201F8(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_connectionQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    LOBYTE(v3) = static os_log_type_t.default.getter();
    if (qword_10006FF80 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = qword_1000737C8;
  if (os_log_type_enabled(qword_1000737C8, v3))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136446210;
    v12 = a1;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10003F8C8(v14, v16, v19);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v3, "[ClientConnectionManager] adding client %{public}s", v10, 0xCu);
    sub_100007FE8(v11);
  }

  swift_beginAccess();
  sub_100027C24(&v20, a1);
  v18 = v20;
  swift_endAccess();
}

void sub_100020480(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_connectionQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    LOBYTE(v3) = static os_log_type_t.default.getter();
    if (qword_10006FF80 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = qword_1000737C8;
  if (os_log_type_enabled(qword_1000737C8, v3))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136446210;
    v12 = a1;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10003F8C8(v14, v16, v20);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v3, "[ClientConnectionManager] removing client %{public}s", v10, 0xCu);
    sub_100007FE8(v11);
  }

  swift_beginAccess();
  v18 = sub_100020B00(a1);
  swift_endAccess();
}

id sub_100020718(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000207F0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int sub_10002089C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004E6C(&qword_100071460);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Client();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_100027F8C();
        }

        v2 = v14;
        result = NSObject._rawHashValue(seed:)(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_100020A7C(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_100020B00(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100020C88();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for Client();
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000286F4();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100020DE0(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_100020C88()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_10002089C(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for Client();
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_100020DE0(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100020DE0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100020F98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100020FB0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *aBlock)
{
  _Block_copy(aBlock);
  v8 = static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  v9 = qword_1000737C8;
  if (os_log_type_enabled(qword_1000737C8, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    v12 = [a1 requestIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10003F8C8(v13, v15, &v27);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v8, "[Client] postBanner %s", v10, 0xCu);
    sub_100007FE8(v11);
  }

  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v17))
  {
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = [a1 requestIdentifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10003F8C8(v20, v22, &v27);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10003F8C8(a2, a3, &v27);
    _os_log_impl(&_mh_execute_header, v9, v17, "[Client] postBanner %s reason: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  v24 = *(a4 + OBJC_IVAR____TtC13MediaRemoteUI6Client_bannerController);
  _Block_copy(aBlock);
  sub_100032CC8(a1, v24, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void sub_10002126C(uint64_t isEscapingClosureAtFileLocation)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [isEscapingClosureAtFileLocation remoteProcess];
  v11 = [v10 auditToken];

  if (!v11)
  {
    static os_log_type_t.default.getter();
    if (qword_10006FF80 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();

    goto LABEL_8;
  }

  v50 = v7;
  v51 = v4;
  [v11 realToken];
  v54 = v58;
  v55 = aBlock;

  aBlock = v55;
  v58 = v54;
  v12 = MSVBundleIDForAuditToken();
  v52 = v3;
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_allowedBundleIDs];

    v18 = v16;
  }

  else
  {
    v14 = 0;
    v18 = 0;
    v17 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_allowedBundleIDs];
    v16 = 0xE000000000000000;
  }

  *&aBlock = v14;
  *(&aBlock + 1) = v16;
  __chkstk_darwin(v12);
  *(&v48 - 2) = &aBlock;
  v19 = sub_1000207F0(sub_100021B5C, (&v48 - 4), v17);

  if ((v19 & 1) == 0)
  {
    v41 = static os_log_type_t.default.getter();
    if (qword_10006FF80 != -1)
    {
      swift_once();
    }

    v42 = qword_1000737C8;
    if (os_log_type_enabled(qword_1000737C8, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&aBlock = v44;
      *v43 = 136315138;
      if (v18)
      {
        v45 = v14;
      }

      else
      {
        v45 = 7104878;
      }

      if (v18)
      {
        v46 = v18;
      }

      else
      {
        v46 = 0xE300000000000000;
      }

      v47 = sub_10003F8C8(v45, v46, &aBlock);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v42, v41, "[ClientConnectionManager] rejecting connection from unauthorized process %s", v43, 0xCu);
      sub_100007FE8(v44);
    }

    else
    {
    }

    goto LABEL_8;
  }

  v20 = [isEscapingClosureAtFileLocation remoteProcess];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 hasEntitlement:v21];

  static os_log_type_t.default.getter();
  if ((v22 & 1) == 0)
  {
    if (qword_10006FF80 == -1)
    {
LABEL_27:
      os_log(_:dso:log:_:_:)();
LABEL_8:
      [isEscapingClosureAtFileLocation invalidate];
      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_27;
  }

  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v23 = type metadata accessor for Client();
  v24 = objc_allocWithZone(v23);
  v25 = isEscapingClosureAtFileLocation;
  UUID.init()();
  *&v24[OBJC_IVAR____TtC13MediaRemoteUI6Client_connection] = v25;
  v26 = objc_allocWithZone(type metadata accessor for BannerController());
  v27 = v25;
  *&v55 = v27;
  v28 = [v26 init];
  *&v24[OBJC_IVAR____TtC13MediaRemoteUI6Client_bannerController] = v28;
  v61.receiver = v24;
  v61.super_class = v23;
  v29 = objc_msgSendSuper2(&v61, "init");

  *(*&v29[OBJC_IVAR____TtC13MediaRemoteUI6Client_bannerController] + OBJC_IVAR____TtC13MediaRemoteUI16BannerController_delegate + 8) = &off_10005E400;
  swift_unknownObjectWeakAssign();
  *&v54 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI23ClientConnectionManager_connectionQueue];
  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  *(v30 + 24) = v29;
  v59 = sub_100021BF4;
  v60 = v30;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v58 = sub_100015D4C;
  *(&v58 + 1) = &unk_10005E488;
  v31 = _Block_copy(&aBlock);
  v49 = v1;
  v32 = v29;
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_100021CD8(&qword_100071B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004E6C(&unk_100070B00);
  sub_100021D20(&qword_100071BA0, &unk_100070B00);
  v33 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);
  (*(v51 + 8))(v6, v33);
  (*(v53 + 8))(v9, v50);

  v34 = swift_allocObject();
  v35 = v49;
  *(v34 + 16) = v49;
  *(v34 + 24) = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_100021C1C;
  *(v36 + 24) = v34;
  v59 = sub_100021C24;
  v60 = v36;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v58 = sub_100021DE8;
  *(&v58 + 1) = &unk_10005E500;
  v37 = _Block_copy(&aBlock);
  v38 = v35;
  v39 = v32;

  v40 = v55;

  [v40 configureConnection:v37];
  _Block_release(v37);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_30;
  }

  [v40 activate];
}

uint64_t sub_100021B5C(void *a1)
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

uint64_t sub_100021BB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021C4C()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021C90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100021D20(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000CE40(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100021D74()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100021F28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100021F80()
{
  v0 = type metadata accessor for Logger();
  sub_1000238EC(v0, qword_1000716A0);
  sub_10001144C(v0, qword_1000716A0);
  if (qword_10006FF88 != -1)
  {
    swift_once();
  }

  v1 = qword_1000737D0;
  return Logger.init(_:)();
}

char *sub_10002200C(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v51 = a5;
  v64 = a2;
  v62 = type metadata accessor for Logger();
  v9 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = v10;
  v61 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100004E6C(&unk_100071760);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = &v45 - v13;
  v49 = sub_100004E6C(&unk_100070D20);
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v16 = &v45 - v15;
  v56 = sub_100004E6C(&qword_100071770);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v46 = &v45 - v17;
  v59 = sub_100004E6C(&unk_100071778);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v45 - v18;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController____lazy_storage___customView) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_providesHostedContent) = 1;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_presentableBehavior) = 1;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_activeLayoutMode) = 1;
  v19 = (v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_associatedAppBundleIdentifier);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_associatedScenePersistenceIdentifier);
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_elementIdentifier;
  *(v5 + v21) = String._bridgeToObjectiveC()();
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_contentRole) = 1;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_maximumLayoutMode) = 4;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_preferredLayoutMode) = 4;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_preferredCustomLayout) = 4;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_presentationBehaviors) = 1;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_preventsAutomaticDismissal) = 1;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_leadingView) = 0;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_trailingView) = 0;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_minimalView) = 0;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_preferredHeightForBottomSafeArea) = 0x4047AAAAAAAAAAABLL;
  sub_100004DB8(a1, v65);
  swift_unknownObjectRetain();
  v22 = v64;
  v23 = a3;
  v64 = a1;
  v52 = v22;
  v63 = a4;
  v24 = sub_100023CE8(a1, v22, v23, a4, v51);
  v51 = v23;
  v25 = [v23 configuration];
  v26 = [objc_opt_self() mru_suggestedRouteActivityTitleFont];
  [v25 setFont:v26];

  v27 = v24;
  [v27 setPreferredContentSize:{250.0, 50.0}];
  v28 = [*&v27[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_routeTextFormatter] configuration];
  [v27 preferredContentSize];
  v30 = v29;

  [v28 setTextBoundingWidth:v30];
  swift_beginAccess();
  v31 = v27;
  sub_100004E6C(&qword_100070D30);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_100012B78(&qword_100070D38, &unk_100071760);
  sub_1000171E0();
  v32 = v47;
  Publisher<>.removeDuplicates()();
  (*(v48 + 8))(v14, v32);
  v33 = v46;
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v34 = [objc_opt_self() mainRunLoop];
  v65[0] = v34;
  sub_100017234();
  sub_100012B78(&qword_100070D50, &unk_100070D20);
  sub_100017280();
  v35 = v49;
  Publisher.throttle<A>(for:scheduler:latest:)();

  (*(v53 + 8))(v12, v54);
  (*(v50 + 8))(v16, v35);
  if (qword_10006FF78 != -1)
  {
    swift_once();
  }

  v36 = v62;
  v37 = sub_10001144C(v62, qword_1000716A0);
  v38 = v61;
  (*(v9 + 16))(v61, v37, v36);
  v39 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v40 = swift_allocObject();
  (*(v9 + 32))(v40 + v39, v38, v36);
  sub_100012B78(&qword_100070D60, &qword_100071770);
  v41 = v56;
  v42 = v57;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v55 + 8))(v33, v41);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100012B78(&unk_100071788, &unk_100071778);
  v43 = v59;
  Publisher<>.sink(receiveValue:)();

  (*(v58 + 8))(v42, v43);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_unknownObjectRelease();

  sub_100004E14(v64);

  return v31;
}

void sub_100022A80(uint64_t a1)
{
  v1 = *(a1 + 176);
  v17[10] = *(a1 + 160);
  v17[11] = v1;
  v17[12] = *(a1 + 192);
  v18 = *(a1 + 208);
  v2 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v2;
  v3 = *(a1 + 144);
  v17[8] = *(a1 + 128);
  v17[9] = v3;
  v4 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v4;
  v5 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v5;
  v6 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v6;
  sub_100004DB8(v17, v16);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  sub_100004E14(v17);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    sub_100004DB8(v17, v16);
    v11 = sub_10001E2B0();
    v13 = v12;
    sub_100004E14(v17);
    v14 = sub_10003F8C8(v11, v13, &v15);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "[BannerDebug] will update view with %s", v9, 0xCu);
    sub_100007FE8(v10);
  }
}

void sub_100022BF8(uint64_t a1)
{
  v1 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v1;
  v11[12] = *(a1 + 192);
  v12 = *(a1 + 208);
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v3 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v5;
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100024310();
    v9 = sub_100022CC0();
    sub_100004DB8(v11, &v10);
    sub_10000A3D0(v11);
    sub_100004E14(v11);
  }
}

char *sub_100022CC0()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController____lazy_storage___customView;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController____lazy_storage___customView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController____lazy_storage___customView);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25[10] = v21;
    v25[11] = v22;
    v25[12] = v23;
    v26 = v24;
    v25[6] = v17;
    v25[7] = v18;
    v25[8] = v19;
    v25[9] = v20;
    v25[2] = v13;
    v25[3] = v14;
    v25[4] = v15;
    v25[5] = v16;
    v25[0] = v11;
    v25[1] = v12;
    v4 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration);
    objc_allocWithZone(type metadata accessor for SuggestedRouteSystemApertureView());
    swift_unknownObjectRetain();
    v5 = v4;
    v6 = v0;
    v7 = sub_10000838C(v25, v5);
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_100022E6C()
{
  v1 = v0;
  v2 = sub_100004E6C(&unk_100070D70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = sub_100004E6C(&qword_100071798);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SuggestedRouteSystemApertureViewController();
  v20.receiver = v0;
  v20.super_class = v10;
  objc_msgSendSuper2(&v20, "viewDidLoad");
  result = [v0 view];
  if (result)
  {
    v12 = result;
    v13 = [objc_allocWithZone(UIColor) initWithWhite:0.01 alpha:1.0];
    [v12 setBackgroundColor:v13];

    v14 = sub_100022CC0();
    swift_beginAccess();
    sub_100004E6C(&unk_100070140);
    Published.projectedValue.getter();
    swift_endAccess();

    sub_100012B78(&unk_100070D80, &unk_100070D70);
    sub_100023AEC();
    Publisher<>.removeDuplicates()();
    (*(v3 + 8))(v5, v2);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100012B78(&qword_1000717A8, &qword_100071798);
    Publisher<>.sink(receiveValue:)();

    (*(v7 + 8))(v9, v6);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v15 = OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController____lazy_storage___customView;
    v16 = *(*&v1[OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController____lazy_storage___customView] + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_activityRouteView);
    v17 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_activityRouteView];
    *&v1[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_activityRouteView] = v16;
    v18 = v16;

    sub_100024310();
    return [*(*&v1[v15] + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_actionButton) addTarget:v1 action:"actionButtonTappedWithSender:" forControlEvents:64];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100023244(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [*(Strong + OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_routeTextFormatter) configuration];
    [v4 setTextBoundingWidth:v1];

    sub_100024AC4();
  }
}

id sub_1000233D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100023514()
{

  sub_10000630C(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_presentableContext);

  v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_minimalView);
}

id sub_1000235CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedRouteSystemApertureViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SuggestedRouteSystemApertureViewController()
{
  result = qword_1000716F0;
  if (!qword_1000716F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000237B4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10002383C(uint64_t a1)
{
  type metadata accessor for Logger();

  sub_100022A80(a1);
}

uint64_t sub_1000238AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_1000238EC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100023958()
{
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController____lazy_storage___customView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_providesHostedContent) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_presentableBehavior) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_activeLayoutMode) = 1;
  v1 = (v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_associatedAppBundleIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_associatedScenePersistenceIdentifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_elementIdentifier;
  *(v0 + v3) = String._bridgeToObjectiveC()();
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_contentRole) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_maximumLayoutMode) = 4;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_preferredLayoutMode) = 4;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_preferredCustomLayout) = 4;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_presentationBehaviors) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_preventsAutomaticDismissal) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_leadingView) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_trailingView) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_minimalView) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI42SuggestedRouteSystemApertureViewController_preferredHeightForBottomSafeArea) = 0x4047AAAAAAAAAAABLL;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100023AEC()
{
  result = qword_1000717A0;
  if (!qword_1000717A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000717A0);
  }

  return result;
}

uint64_t sub_100023B54()
{
  sub_100023C10();
  result = OS_os_log.init(subsystem:category:)();
  qword_1000737C8 = result;
  return result;
}

uint64_t sub_100023BA8()
{
  sub_100023C10();
  result = OS_os_log.init(subsystem:category:)();
  qword_1000737D0 = result;
  return result;
}

unint64_t sub_100023C10()
{
  result = qword_1000717B0;
  if (!qword_1000717B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000717B0);
  }

  return result;
}

uint64_t sub_100023C5C()
{
  v0 = type metadata accessor for Logger();
  sub_1000238EC(v0, qword_1000737D8);
  sub_10001144C(v0, qword_1000737D8);
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  v1 = qword_1000737C8;
  return Logger.init(_:)();
}

char *sub_100023CE8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_activityRouteView] = 0;
  swift_beginAccess();
  v10 = *(a1 + 176);
  v43[10] = *(a1 + 160);
  v43[11] = v10;
  v43[12] = *(a1 + 192);
  v44 = *(a1 + 208);
  v11 = *(a1 + 112);
  v43[6] = *(a1 + 96);
  v43[7] = v11;
  v12 = *(a1 + 144);
  v43[8] = *(a1 + 128);
  v43[9] = v12;
  v13 = *(a1 + 48);
  v43[2] = *(a1 + 32);
  v43[3] = v13;
  v14 = *(a1 + 80);
  v43[4] = *(a1 + 64);
  v43[5] = v14;
  v15 = *(a1 + 16);
  v43[0] = *a1;
  v43[1] = v15;
  sub_100004DB8(a1, v42);
  Published.init(initialValue:)();
  swift_endAccess();
  v16 = objc_allocWithZone(MRUEndpointController);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithRouteUID:v17 client:0 player:0];

  *&v5[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_endpointController] = v18;
  v19 = [objc_allocWithZone(MRUNowPlayingController) initWithEndpointController:v18];
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_controller] = v19;
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_routeTextFormatter] = a3;
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate + 8] = 0;
  v20 = swift_unknownObjectWeakInit();
  v21 = &v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_requesterIdentifier];
  *v21 = 0xD000000000000017;
  v21[1] = 0x800000010004B7A0;
  v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_sendTapEventForAnyTapInsideView] = 1;
  v22 = &v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimerDuration];
  *v22 = 0;
  v22[8] = 1;
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer] = 0;
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration] = a2;
  *(v20 + 8) = a5;
  swift_unknownObjectWeakAssign();
  v41.receiver = v5;
  v41.super_class = type metadata accessor for BannerBaseViewController();
  v23 = a3;
  v24 = a2;
  v25 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  v26 = OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_controller;
  v27 = *&v25[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_controller];
  v28 = v25;
  [v27 addObserver:v28];
  [*&v25[v26] updateAutomaticResponseLoading];
  v29 = [v24 bannerType] == 0;
  v28[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_sendTapEventForAnyTapInsideView] = v29;
  if (v29)
  {
    v30 = &selRef_oneTapSuggestionInactiveTimeout;
  }

  else
  {
    v30 = &selRef_autoRouteInactiveTimeout;
  }

  v31 = [objc_opt_self() currentSettings];
  [v31 *v30];
  v33 = v32;

  v34 = &v28[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimerDuration];
  *v34 = v33;
  v34[8] = 0;

  sub_100024AC4();
  v35 = [*&v25[v26] metadataController];
  v36 = [v35 artwork];

  swift_getKeyPath();
  swift_getKeyPath();
  v37 = static Published.subscript.modify();
  v39 = *(v38 + 104);
  *(v38 + 104) = v36;

  v37(v43, 0);

  sub_100024C98();

  swift_unknownObjectRelease();
  sub_100004E14(a1);

  return v28;
}

double sub_1000240C0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 160) = v13;
  *(a1 + 176) = v14;
  *(a1 + 192) = v15;
  *(a1 + 208) = v16;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

id sub_1000241D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18[10] = v14;
  v18[11] = v15;
  v18[12] = v16;
  v19 = v17;
  v18[6] = v10;
  v18[7] = v11;
  v18[8] = v12;
  v18[9] = v13;
  v18[2] = v6;
  v18[3] = v7;
  v18[4] = v8;
  v18[5] = v9;
  v18[0] = v4;
  v18[1] = v5;
  v0 = *(&v8 + 1);
  v1 = *(&v8 + 1);
  sub_100004E14(v18);
  if (!*(&v8 + 1))
  {
    v2 = String._bridgeToObjectiveC()();
    v0 = [objc_opt_self() systemImageNamed:v2];
  }

  return v0;
}

void sub_100024310()
{
  v1 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_activityRouteView];
  if (!v1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  v82[10] = v78;
  v82[11] = v79;
  v82[12] = v80;
  v83 = v81;
  v82[6] = v74;
  v82[7] = v75;
  v82[8] = v76;
  v82[9] = v77;
  v82[2] = v70;
  v82[3] = v71;
  v82[4] = v72;
  v82[5] = v73;
  v82[0] = v68;
  v82[1] = v69;

  sub_100004E14(v82);
  if (v78)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v78 = v64;
    v79 = v65;
    v80 = v66;
    v81 = v67;
    v74 = v60;
    v75 = v61;
    v76 = v62;
    v77 = v63;
    v70 = v56;
    v71 = v57;
    v72 = v58;
    v73 = v59;
    v68 = aBlock;
    v69 = v55;

    sub_100004E14(&v68);
    if (v65)
    {
      v3 = [objc_opt_self() sharedManager];
      v4 = String._bridgeToObjectiveC()();

      v5 = String._bridgeToObjectiveC()();

      v6 = swift_allocObject();
      *(v6 + 16) = v2;
      *(v6 + 24) = v0;
      *&v56 = sub_100025AA8;
      *(&v56 + 1) = v6;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v55 = sub_100014598;
      *(&v55 + 1) = &unk_10005E6E0;
      v7 = _Block_copy(&aBlock);
      v8 = v2;
      v9 = v0;

      [v3 imageForModelIdentifier:v4 color:v5 completion:v7];
      _Block_release(v7);

LABEL_8:
      goto LABEL_10;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v78 = v64;
  v79 = v65;
  v80 = v66;
  v81 = v67;
  v74 = v60;
  v75 = v61;
  v76 = v62;
  v77 = v63;
  v70 = v56;
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v68 = aBlock;
  v69 = v55;
  v4 = *(&v58 + 1);
  sub_100004E14(&v68);
  v10 = [v2 deviceIconView];
  v5 = v10;
  if (*(&v58 + 1))
  {
    [v10 setImage:v4];
    goto LABEL_8;
  }

  v11 = sub_1000241D8();
  [v5 setImage:v11];

LABEL_10:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v78 = v64;
  v79 = v65;
  v80 = v66;
  v81 = v67;
  v74 = v60;
  v75 = v61;
  v76 = v62;
  v77 = v63;
  v70 = v56;
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v68 = aBlock;
  v69 = v55;
  sub_100004E14(&v68);
  if (v75 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v64 = v50;
    v65 = v51;
    v66 = v52;
    v67 = v53;
    v60 = v46;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v56 = v42;
    v57 = v43;
    v58 = v44;
    v59 = v45;
    aBlock = v40;
    v55 = v41;
    v12 = *(&v46 + 1);
    sub_100004E14(&aBlock);
    if (*(&v46 + 1))
    {
      v13 = [v2 artworkView];
      [v13 setArtwork:v12];
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v64 = v50;
  v65 = v51;
  v66 = v52;
  v67 = v53;
  v60 = v46;
  v61 = v47;
  v62 = v48;
  v63 = v49;
  v56 = v42;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  aBlock = v40;
  v55 = v41;

  sub_100004E14(&aBlock);
  if (v49)
  {
    v14 = [v2 artworkView];
    v15 = String._bridgeToObjectiveC()();

    [v14 setItemIdentifier:v15];
  }

  v16 = [v2 artworkView];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v36 = v50;
  v37 = v51;
  v38 = v52;
  v39 = v53;
  v32[6] = v46;
  v33 = v47;
  v34 = v48;
  v35 = v49;
  v32[2] = v42;
  v32[3] = v43;
  v32[4] = v44;
  v32[5] = v45;
  v32[0] = v40;
  v32[1] = v41;
  sub_100004E14(v32);
  [v16 setHidden:(v33 & 1) == 0];

  v17 = [v2 artworkView];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v50 = v28;
  v51 = v29;
  v52 = v30;
  v53 = v31;
  v46 = v24;
  v47 = v25;
  v48 = v26;
  v49 = v27;
  v42 = v20;
  v43 = v21;
  v44 = v22;
  v45 = v23;
  v40 = v18;
  v41 = v19;
  sub_100004E14(&v40);
  [v17 setPlaying:v47];
}

uint64_t sub_100024AC8(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24[10] = v20;
  v24[11] = v21;
  v24[12] = v22;
  v25 = v23;
  v24[6] = v16;
  v24[7] = v17;
  v24[8] = v18;
  v24[9] = v19;
  v24[2] = v12[2];
  v24[3] = v13;
  v24[4] = v14;
  v24[5] = v15;
  v24[0] = v12[0];
  v24[1] = v12[1];

  result = sub_100004E14(v24);
  if (v13)
  {
    v4 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_routeTextFormatter);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v4 textForRouteNames:isa textBoundingWidth:a1];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    swift_getKeyPath();
    swift_getKeyPath();
    v10 = static Published.subscript.modify();
    *(v11 + 32) = v7;
    *(v11 + 40) = v9;

    v10(v12, 0);
  }

  return result;
}

uint64_t sub_100024C98()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_controller) metadataController];
  v2 = [v1 nowPlayingInfo];

  v3 = [v2 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = static Published.subscript.modify();
  *(v8 + 136) = v4;
  *(v8 + 144) = v6;

  v7(v20, 0);

  v9 = [v2 stringForComponents:1];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = static Published.subscript.modify();
  *(v15 + 120) = v11;
  *(v15 + 128) = v13;

  v14(v20, 0);

  v16 = [v2 isPlaying];
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = static Published.subscript.modify();
  *(v18 + 112) = v16;
  v17(v20, 0);
}

double sub_100024ED4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 160) = v13;
  *(a1 + 176) = v14;
  *(a1 + 192) = v15;
  *(a1 + 208) = v16;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_100024FF0(__int128 *a1, void **a2)
{
  v3 = a1[11];
  v33[10] = a1[10];
  v33[11] = v3;
  v33[12] = a1[12];
  v34 = *(a1 + 26);
  v4 = a1[7];
  v33[6] = a1[6];
  v33[7] = v4;
  v5 = a1[9];
  v33[8] = a1[8];
  v33[9] = v5;
  v6 = a1[3];
  v33[2] = a1[2];
  v33[3] = v6;
  v7 = a1[5];
  v33[4] = a1[4];
  v33[5] = v7;
  v8 = a1[1];
  v33[0] = *a1;
  v33[1] = v8;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1[11];
  v29 = a1[10];
  v30 = v10;
  v31 = a1[12];
  v32 = *(a1 + 26);
  v11 = a1[7];
  v25 = a1[6];
  v26 = v11;
  v12 = a1[9];
  v27 = a1[8];
  v28 = v12;
  v13 = a1[3];
  v21 = a1[2];
  v22 = v13;
  v14 = a1[5];
  v23 = a1[4];
  v24 = v14;
  v15 = a1[1];
  v19 = *a1;
  v20 = v15;
  v16 = v9;
  sub_100004DB8(v33, v18);
  return static Published.subscript.setter();
}

void sub_100025160(void *a1, int a2, id a3)
{
  if (a1)
  {
    v4 = a1;
    v5 = [a3 deviceIconView];
    v6 = [a3 deviceIconView];
    [v6 frame];
    v8 = v7;
    v10 = v9;

    v11 = [v4 mru_imageFittingSize:{v8, v10}];
    [v5 setImage:?];
  }

  else
  {
    v5 = [a3 deviceIconView];
    v11 = sub_1000241D8();
    [v5 setImage:?];
  }
}

void sub_1000254AC()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController__suggestedRoute;
  v2 = sub_100004E6C(&qword_100070D30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_routeTextFormatter);
}

id sub_100025560()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedRouteBaseBannerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SuggestedRouteBaseBannerViewController()
{
  result = qword_100071850;
  if (!qword_100071850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000256A4()
{
  sub_100025750();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100025750()
{
  if (!qword_100071860)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100071860);
    }
  }
}

uint64_t sub_1000257A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22[10] = v18;
  v22[11] = v19;
  v22[12] = v20;
  v23 = v21;
  v22[6] = v14;
  v22[7] = v15;
  v22[8] = v16;
  v22[9] = v17;
  v22[2] = v10[2];
  v22[3] = v11;
  v22[4] = v12;
  v22[5] = v13;
  v22[0] = v10[0];
  v22[1] = v10[1];

  result = sub_100004E14(v22);
  if (v11)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_routeTextFormatter);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v4 = [v2 textForRouteNames:isa];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    swift_getKeyPath();
    swift_getKeyPath();
    v8 = static Published.subscript.modify();
    *(v9 + 32) = v5;
    *(v9 + 40) = v7;

    v8(v10, 0);
  }

  return result;
}

uint64_t sub_100025968()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer);
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer) = 0;

  v2 = v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = [*(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration) requestIdentifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    (*(v4 + 24))(v7, v9, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100025A68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100025AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100025AC8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

char *sub_100025C80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v4[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController__isShowingOptimisticState] = 1;
  *&v4[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_maximumLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_preferredCustomLayout] = 4;
  *&v4[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_presentationBehaviors] = 1072;
  v4[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_preventsInteractiveDismissal] = 1;
  v4[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_preventsAutomaticDismissal] = 1;
  *&v4[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_preferredHeightForBottomSafeArea] = 0x3FF0000000000000;
  v8 = &v4[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute];
  v9 = *(a1 + 176);
  *(v8 + 10) = *(a1 + 160);
  *(v8 + 11) = v9;
  *(v8 + 12) = *(a1 + 192);
  *(v8 + 26) = *(a1 + 208);
  v10 = *(a1 + 112);
  *(v8 + 6) = *(a1 + 96);
  *(v8 + 7) = v10;
  v11 = *(a1 + 144);
  *(v8 + 8) = *(a1 + 128);
  *(v8 + 9) = v11;
  v12 = *(a1 + 48);
  *(v8 + 2) = *(a1 + 32);
  *(v8 + 3) = v12;
  v13 = *(a1 + 80);
  *(v8 + 4) = *(a1 + 64);
  *(v8 + 5) = v13;
  v14 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 1) = v14;
  sub_100004DB8(a1, v66);
  v15 = [a2 bundleIdentifierAffinity];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v66[0] = 0xD000000000000027;
    v66[1] = 0x800000010004DB00;
    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = String._bridgeToObjectiveC()();
  }

  *&v5[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_elementIdentifier] = v21;
  v22 = [a2 bannerType];
  v23 = objc_opt_self();
  v24 = &selRef_userSelectedEndpointController;
  if (v22 != 3)
  {
    v24 = &selRef_localEndpointController;
  }

  v25 = [v23 *v24];
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_endpointController] = v25;
  v26 = [objc_allocWithZone(MRUNowPlayingController) initWithEndpointController:v25];
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_controller] = v26;
  v27 = [a2 staticRequest];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 actionImageName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v30 = String._bridgeToObjectiveC()();

  v31 = objc_opt_self();
  v32 = [v31 systemImageNamed:v30];

  v33 = objc_opt_self();
  v34 = [v33 systemTealColor];
  v35 = type metadata accessor for AccessoryImageView();
  v65.receiver = objc_allocWithZone(v35);
  v65.super_class = v35;
  v36 = objc_msgSendSuper2(&v65, "initWithImage:", v32);
  [v36 setContentMode:1];
  v37 = v34;
  [v36 setTintColor:v37];

  *&v5[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_airPlayImageView] = v36;
  v38 = [a2 staticRequest];
  if (v38)
  {
    v39 = v38;
    v40 = [v39 routeSymbolName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = String._bridgeToObjectiveC()();

    v42 = [v31 _systemImageNamed:v41];
  }

  else
  {
    v42 = 0;
  }

  v43 = [objc_allocWithZone(UIImageView) init];
  [v43 setImage:v42];
  v44 = [v33 whiteColor];
  [v43 setTintColor:v44];

  v45 = objc_allocWithZone(type metadata accessor for ActivityIndicatorImageAccessoryView());
  v46 = v43;
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_trailingAccessoryView] = sub_10002A820(v46);
  sub_100004DB8(a1, v66);
  LOBYTE(v44) = sub_100028E84(a1);
  v48 = v47;
  v50 = v49;
  sub_100004E14(a1);
  v51 = &v5[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_state];
  *v51 = v44 & 1;
  *(v51 + 1) = v48;
  *(v51 + 2) = v50;
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate + 8] = 0;
  v52 = swift_unknownObjectWeakInit();
  v53 = &v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_requesterIdentifier];
  *v53 = 0xD000000000000017;
  v53[1] = 0x800000010004B7A0;
  v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_sendTapEventForAnyTapInsideView] = 1;
  v54 = &v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimerDuration];
  *v54 = 0;
  v54[8] = 1;
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer] = 0;
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration] = a2;
  *(v52 + 8) = v62;
  swift_unknownObjectWeakAssign();
  v64.receiver = v5;
  v64.super_class = type metadata accessor for BannerBaseViewController();
  v55 = a2;
  v56 = objc_msgSendSuper2(&v64, "initWithNibName:bundle:", 0, 0);
  v57 = OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_controller;
  v58 = *&v56[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_controller];
  v59 = v56;
  [v58 addObserver:v59];
  [*&v56[v57] updateAutomaticResponseLoading];
  sub_1000266E0();

  swift_unknownObjectRelease();
  sub_100004E14(a1);

  return v59;
}

uint64_t sub_100026510()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = [*(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration) requestIdentifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    (*(v3 + 24))(v6, v8, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000266E0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_endpointController) route];
  v31 = [v1 endpointObject];

  if (!v31)
  {
    return;
  }

  v2 = [v31 outputDevices];
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = v2;
  sub_10002902C();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = v4 >> 62;
  if (v4 >> 62)
  {
LABEL_37:
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
LABEL_5:
      v6 = [*(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_controller) metadataController];
      v7 = [v6 nowPlayingInfo];

      v8 = [v7 isPlaying];
      if (v5)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
        if (v9)
        {
LABEL_7:
          v5 = 0;
          v30 = _swiftEmptyArrayStorage;
          do
          {
            v10 = v5;
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v5 = v10 + 1;
                if (__OFADD__(v10, 1))
                {
                  goto LABEL_35;
                }
              }

              else
              {
                if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_36;
                }

                v11 = *(v4 + 8 * v10 + 32);
                v5 = v10 + 1;
                if (__OFADD__(v10, 1))
                {
LABEL_35:
                  __break(1u);
LABEL_36:
                  __break(1u);
                  goto LABEL_37;
                }
              }

              v12 = v11;
              v13 = [v12 uid];
              if (v13)
              {
                break;
              }

              ++v10;
              if (v5 == v9)
              {
                goto LABEL_27;
              }
            }

            v29 = v8;
            v14 = v13;
            v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v28 = v16;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_1000277C4(0, *(v30 + 2) + 1, 1, v30);
            }

            v18 = *(v30 + 2);
            v17 = *(v30 + 3);
            if (v18 >= v17 >> 1)
            {
              v30 = sub_1000277C4((v17 > 1), v18 + 1, 1, v30);
            }

            *(v30 + 2) = v18 + 1;
            v19 = &v30[16 * v18];
            *(v19 + 4) = v15;
            *(v19 + 5) = v28;
            v8 = v29;
          }

          while (v5 != v9);
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_7;
        }
      }

      v30 = _swiftEmptyArrayStorage;
LABEL_27:

      v20 = sub_100028DEC(v30);

      v21 = v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_state;
      *v21 = v8;
      v22 = *(v21 + 8);

      v24 = sub_100025AC8(v23, v22);

      v25 = OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController__isShowingOptimisticState;
      if (*(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController__isShowingOptimisticState))
      {
        *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController__isShowingOptimisticState) = (v24 & 1) == 0;
      }

      sub_100026D94();
      *(v21 + 8) = v20;

      v27 = sub_100025AC8(v26, v20);

      if (*(v0 + v25) == 1)
      {
        *(v0 + v25) = (v27 & 1) == 0;
      }

      sub_100026D94();
LABEL_32:

      return;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_5;
  }
}

void sub_100026AD8()
{
  v1 = [*&v0[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_endpointController] route];
  v15 = [v1 endpointObject];

  if (v15)
  {
    v2 = [v15 outputDevices];
    if (v2)
    {
      v3 = v2;
      sub_10002902C();
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v4 >> 62)
      {
LABEL_24:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
LABEL_5:
          v6 = 0;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v7 = *(v4 + 8 * v6 + 32);
            }

            v8 = v7;
            v9 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            if ([v7 deviceType] == 1)
            {
            }

            else
            {
              v10 = [v8 deviceType];

              if (v10 != 3)
              {

                return;
              }
            }

            ++v6;
          }

          while (v9 != v5);
        }
      }

      v11 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_controller];
      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      aBlock[4] = sub_1000290B0;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001439C;
      aBlock[3] = &unk_10005E7B8;
      v13 = _Block_copy(aBlock);
      v14 = v0;

      [v11 routingDeviceImage:v13];
      _Block_release(v13);

      return;
    }
  }
}

void sub_100026D94()
{
  if (*(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController__isShowingOptimisticState) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_trailingAccessoryView);
    if ((*(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_state) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning) = 0;
      return;
    }

    v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_state + 8);

    v4 = sub_100025AC8(v3, v2);

    v5 = OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning;
    v6 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning);
    v7 = (v4 & 1) == 0;
    *(v1 + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning) = v7;
    if (v6 == v7)
    {
      return;
    }

    v8 = &selRef_stopAnimating;
    if ((v4 & 1) == 0)
    {
      v8 = &selRef_startAnimating;
    }

    [*(v1 + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_activityIndicatorView) *v8];
    v9 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_imageView);
    v10 = *(v1 + v5);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_trailingAccessoryView);
    v12 = OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning;
    v13 = *(v11 + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning);
    *(v11 + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning) = 0;
    if (v13 != 1)
    {
      return;
    }

    [*(v11 + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_activityIndicatorView) stopAnimating];
    v9 = *(v11 + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_imageView);
    v10 = *(v11 + v12);
  }

  [v9 setHidden:v10];
}

void sub_100026F10()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 176);
  v7[10] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 160);
  v7[11] = v1;
  v7[12] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 192);
  v8 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 208);
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 112);
  v7[6] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 96);
  v7[7] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 144);
  v7[8] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 128);
  v7[9] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 48);
  v7[2] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 32);
  v7[3] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 80);
  v7[4] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 64);
  v7[5] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute + 16);
  v7[0] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_suggestedRoute);
  v7[1] = v6;
  sub_100004E14(v7);
}

id sub_100026FF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedRouteConnectedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10002713C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100027150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100027198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000271E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v14 = sub_1000276B8(0, 1, 1, _swiftEmptyArrayStorage);
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
    v14 = sub_1000276B8((a7 > 1), v10, 1, v14);
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

        v14 = sub_1000276B8(0, *(v14 + 16) + 1, 1, v14);
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
      v41 = sub_1000276B8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1000276B8((v28 > 1), v13 + 1, 1, v41);
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

char *sub_1000275A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E6C(&unk_1000719B0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000276B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E6C(&qword_100071990);
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

char *sub_1000277C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E6C(&qword_100071988);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000278D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E6C(&qword_100071998);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1000279D4(char *a1, int64_t a2, char a3)
{
  result = sub_100027A14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000279F4(char *a1, int64_t a2, char a3)
{
  result = sub_100027B18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100027A14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E6C(&qword_100071998);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_100027B18(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E6C(&qword_100071988);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100027C24(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10002089C(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_100027F8C();
    }

    v18 = v8;
    sub_100020A7C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for Client();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_100028414(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_100027E3C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100028574(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100027F8C()
{
  v1 = v0;
  v2 = *v0;
  sub_100004E6C(&qword_100071460);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1000281B4()
{
  v1 = v0;
  v2 = *v0;
  sub_100004E6C(&qword_100071980);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_100028414(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100027F8C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000286F4();
      goto LABEL_12;
    }

    sub_1000289A0();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for Client();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_100028574(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000281B4();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100028844();
      goto LABEL_16;
    }

    sub_100028BB4();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1000286F4()
{
  v1 = v0;
  sub_100004E6C(&qword_100071460);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100028844()
{
  v1 = v0;
  sub_100004E6C(&qword_100071980);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1000289A0()
{
  v1 = v0;
  v2 = *v0;
  sub_100004E6C(&qword_100071460);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100028BB4()
{
  v1 = v0;
  v2 = *v0;
  sub_100004E6C(&qword_100071980);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100028DEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100027E3C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100028E84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v17[0] = 124;
  v17[1] = 0xE100000000000000;
  v16[2] = v17;

  v4 = sub_1000271E8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100021B5C, v16, v1, v2, v3);
  v5 = v4[2];
  if (v5)
  {
    v17[0] = _swiftEmptyArrayStorage;
    result = sub_1000279F4(0, v5, 0);
    v7 = 0;
    v8 = v17[0];
    v9 = v4 + 7;
    while (v7 < v4[2])
    {

      v10 = static String._fromSubstring(_:)();
      v12 = v11;

      v17[0] = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_1000279F4((v13 > 1), v14 + 1, 1);
        v8 = v17[0];
      }

      ++v7;
      v8[2] = v14 + 1;
      v15 = &v8[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v9 += 4;
      if (v5 == v7)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
LABEL_9:
    sub_100028DEC(v8);

    return 0;
  }

  return result;
}

unint64_t sub_10002902C()
{
  result = qword_1000719A0;
  if (!qword_1000719A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000719A0);
  }

  return result;
}

uint64_t sub_100029078()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000290B0(uint64_t a1)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_trailingAccessoryView);
  [*&v2[OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_imageView] setImage:a1];

  return [v2 sizeToFit];
}

uint64_t sub_100029114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10002912C()
{
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController__isShowingOptimisticState) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_contentRole) = 2;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_preferredLayoutMode) = 3;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_maximumLayoutMode) = 3;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_preferredCustomLayout) = 4;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_presentationBehaviors) = 1072;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_preventsInteractiveDismissal) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_preventsAutomaticDismissal) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI37SuggestedRouteConnectedViewController_preferredHeightForBottomSafeArea) = 0x3FF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10002922C()
{
  if (*(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_sendTapEventForAnyTapInsideView) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer);
    *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer) = 0;

    v2 = v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = [*(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration) requestIdentifier];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      (*(v3 + 24))(v6, v8, ObjectType, v3);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100029334()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer);
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer) = 0;

  v2 = v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = [*(v0 + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration) requestIdentifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    (*(v4 + 32))(v7, v9, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100029428()
{
  v0 = type metadata accessor for Logger();
  sub_1000238EC(v0, qword_1000719C0);
  sub_10001144C(v0, qword_1000719C0);
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  v1 = qword_1000737C8;
  return Logger.init(_:)();
}

id sub_100029670()
{
  v1 = &v0[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    v4 = [*&v0[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration] requestIdentifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    (*(v2 + 16))(v5, v7, ObjectType, v2);

    swift_unknownObjectRelease();
  }

  v9.receiver = v0;
  v9.super_class = type metadata accessor for BannerBaseViewController();
  return objc_msgSendSuper2(&v9, "dealloc");
}

void sub_1000297F0()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BannerBaseViewController();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_allocWithZone(UITapGestureRecognizer);
    v4 = v0;
    v5 = [v3 initWithTarget:v4 action:"bannerTapActionWithSender:"];
    [v2 addGestureRecognizer:v5];

    v6 = [v4 view];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v4 action:"bannerLongPressActionWithSender:"];

      [v7 addGestureRecognizer:v8];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10002999C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_100007FE8(&v9);
}

void sub_100029A10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = [*&v1[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration] requestIdentifier];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      (*(v3 + 48))(v6, v8, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100029BA0(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *))
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  a5(a4);
  swift_unknownObjectRelease();
}

void sub_100029C84()
{
  swift_getObjectType();
  v1 = &v0[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    v4 = [*&v0[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration] requestIdentifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    (*(v2 + 8))(v5, v7, ObjectType, v2);

    swift_unknownObjectRelease();
  }

  if (qword_10006FF98 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10001144C(v8, qword_1000719C0);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315650;
    aBlock[0] = v14;
    v15 = _typeName(_:qualified:)();
    v17 = sub_10003F8C8(v15, v16, aBlock);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = [v9 view];
    *(v12 + 14) = v18;
    *v13 = v18;
    *(v12 + 22) = 2080;
    v19 = [v9 view];

    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = [v19 subviews];

    sub_10002A7D4();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = Array.description.getter();
    v23 = v22;

    v24 = sub_10003F8C8(v21, v23, aBlock);

    *(v12 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Did appear with view %@ - %s", v12, 0x20u);
    sub_10000CC78(v13);

    swift_arrayDestroy();
  }

  else
  {
  }

  v25 = &v9[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimerDuration];
  if ((v9[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimerDuration + 8] & 1) == 0)
  {
    v26 = *v25;
    if (*v25 > 0.0)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136315394;
        v31 = _typeName(_:qualified:)();
        v33 = sub_10003F8C8(v31, v32, aBlock);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2048;
        *(v29 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v27, v28, "[%s] Setting idle timer of %f seconds", v29, 0x16u);
        sub_100007FE8(v30);
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10002A7B4;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100015D4C;
      aBlock[3] = &unk_10005E808;
      v35 = _Block_copy(aBlock);

      v36 = [objc_opt_self() timerWithInterval:0 repeats:v35 block:v26];
      _Block_release(v35);

      v37 = *&v9[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer];
      *&v9[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer] = v36;
    }
  }
}

void sub_10002A184(void *a1)
{
  swift_getObjectType();
  if (qword_10006FF98 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10001144C(v3, qword_1000719C0);
  v4 = a1;
  v5 = v1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10003F8C8(v8, v9, &v20);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    if (!a1)
    {

      __break(1u);
      return;
    }

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = sub_10003F8C8(v11, v12, &v20);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    v14 = [*&v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration] description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10003F8C8(v15, v17, &v20);

    *(v7 + 24) = v18;
    _os_log_impl(&_mh_execute_header, oslog, v6, "[%s] Will not appear because: %s - %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10002A3B8(void *a1)
{
  swift_getObjectType();
  if (qword_10006FF98 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10001144C(v3, qword_1000719C0);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v6, v7))
  {

    if (a1)
    {
      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
    return;
  }

  v8 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v8 = 136315650;
  v9 = _typeName(_:qualified:)();
  v11 = sub_10003F8C8(v9, v10, &v34);

  *(v8 + 4) = v11;
  *(v8 + 12) = 2080;
  if (!a1)
  {

    __break(1u);
    goto LABEL_21;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = sub_10003F8C8(v12, v13, &v34);

  *(v8 + 14) = v14;
  *(v8 + 22) = 2080;
  v15 = [*&v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration] description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = sub_10003F8C8(v16, v18, &v34);

  *(v8 + 24) = v19;
  _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Did disappear because: %s - %s", v8, 0x20u);
  swift_arrayDestroy();

LABEL_7:
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {

LABEL_10:

    goto LABEL_12;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v24 & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != 0xD000000000000017 || 0x800000010004DCC0 != v32)
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_12:
  v25 = &v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v25 + 1);
    ObjectType = swift_getObjectType();
    v28 = [*&v5[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration] requestIdentifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    (*(v26 + 40))(v29, v31, ObjectType, v26);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10002A77C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A7BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002A7D4()
{
  result = qword_100071A90;
  if (!qword_100071A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100071A90);
  }

  return result;
}

char *sub_10002A820(void *a1)
{
  v1[OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning] = 0;
  v3 = OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_activityIndicatorView;
  *&v1[v3] = [objc_allocWithZone(UIActivityIndicatorView) init];
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_imageView] = a1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ActivityIndicatorImageAccessoryView();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_imageView;
  v7 = *&v5[OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_imageView];
  v8 = v5;
  [v8 addSubview:{v7, v13.receiver, v13.super_class}];
  v9 = OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_activityIndicatorView;
  [v8 addSubview:*&v8[OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_activityIndicatorView]];
  v10 = OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning;
  if (v8[OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning])
  {
    v11 = &selRef_startAnimating;
  }

  else
  {
    v11 = &selRef_stopAnimating;
  }

  [*&v8[v9] *v11];
  [*&v5[v6] setHidden:v8[v10]];

  return v8;
}

id sub_10002AAE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityIndicatorImageAccessoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10002AB88()
{
  result = [objc_allocWithZone(type metadata accessor for LockScreenCoordinator()) init];
  qword_100073810 = result;
  return result;
}

void sub_10002AC44()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer);
  if (v1)
  {
    v2 = v1;
    [v2 preferredContentSize];
    v3 = v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContentSize;
    *v3 = v4;
    *(v3 + 8) = v5;
    *(v3 + 16) = 0;
    v6 = [v2 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v19.origin.x = v9;
    v19.origin.y = v11;
    v19.size.width = v13;
    v19.size.height = v15;
    Width = CGRectGetWidth(v19);

    v17 = v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterViewWidth;
    *v17 = Width;
    *(v17 + 8) = 0;
  }

  sub_10002E0B4(0, 0, 0);

  sub_10002D890(0, 0xD000000000000019, 0x800000010004E290);
}

void sub_10002AD90()
{
  v1 = v0;
  sub_10002E0B4(0, 0, 0);
  v2 = OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer;
  v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for CoverSheetBackgroundView();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;

        v9 = *(v8 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);
        [v9 addObserver:v1];

        v10 = *(v1 + v2);
        if (v10)
        {
          v11 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
          v12 = *&v10[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork];
          *&v10[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork] = v11;
          v13 = v11;
          v14 = v10;
          sub_10000D03C(v12);
        }

        goto LABEL_6;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

LABEL_6:
  v15 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContentAssertion);
  if (v15)
  {
    LOBYTE(v15) = [v15 isAnimated];
  }

  sub_10002D890(v15, 0xD00000000000001CLL, 0x800000010004E1D0);
  v18 = &type metadata for Feature;
  v19 = sub_100007F94();
  v16 = isFeatureEnabled(_:)();
  sub_100007FE8(v17);
  if (v16)
  {
    if (*(v1 + v2))
    {
      sub_10002AF6C(1);
    }
  }
}

void sub_10002AF6C(int a1)
{
  v17 = &type metadata for Feature;
  v18 = sub_100007F94();
  v3 = isFeatureEnabled(_:)();
  sub_100007FE8(v16);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_isShowingCompactTimeLabel);
      if (v6 == 2 || ((v6 ^ a1) & 1) != 0)
      {
        v7 = a1 & 1;
        *(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_isShowingCompactTimeLabel) = v7;
        v8 = objc_allocWithZone(CAMediaTimingFunction);
        LODWORD(v9) = 1036831949;
        LODWORD(v10) = 1058306785;
        v11 = [v8 initWithControlPoints:v9 :0.0 :v10 :0.0];
        v12 = [objc_opt_self() settingsWithDuration:v11 timingFunction:0.35];

        if (!v12)
        {
          __break(1u);
          return;
        }

        [v5 showCompactTime:v7 withAnimationSettings:v12];

        v5 = v12;
      }
    }

    else
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10001144C(v13, qword_1000737D8);
      v5 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v5, v14, "LockScreenCoordinator showCompactTimeLabel failed: backdropScene is nil.", v15, 2u);
      }
    }
  }
}

void sub_10002B188(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void))
{
  v7 = *&a1[*a4];
  *&a1[*a4] = a3;
  v8 = a3;
  v9 = a1;

  a5();
}

void sub_10002B204()
{
  sub_10002D5E4();
  v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
    v5 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork];
    *&v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork] = v2;
    v3 = v2;
    v4 = v1;
    sub_10000D03C(v5);
  }
}

uint64_t sub_10002B3A0()
{
  result = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
  if (result)
  {
    result = [result catalog];
    if (result)
    {

      v2 = [objc_opt_self() currentDevice];
      v3 = [v2 userInterfaceIdiom];

      if (v3 == 1)
      {
        return 1;
      }

      else
      {
        v4 = [objc_opt_self() sharedApplication];
        v5 = [v4 activeInterfaceOrientation];

        return sub_10001D540(v5);
      }
    }
  }

  return result;
}

unint64_t sub_10002B470()
{
  if (*(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState) != 1)
  {
    return 0;
  }

  result = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
  if (result)
  {
    result = [result catalog];
    if (result)
    {

      v2 = [objc_opt_self() currentDevice];
      v3 = [v2 userInterfaceIdiom];

      if (v3 == 1)
      {
        return *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer) != 0;
      }

      v4 = [objc_opt_self() sharedApplication];
      v5 = [v4 activeInterfaceOrientation];

      result = sub_10001D540(v5);
      if (result)
      {
        return *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer) != 0;
      }
    }
  }

  return result;
}

void sub_10002B574(uint64_t a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_topBounds];
  if (v1[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_topBounds + 32] & 1) != 0 || (v4 = &v1[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_widgetsTopBounds], (v1[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_widgetsTopBounds + 32]) || (v1[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_bottomBounds + 32] & 1) != 0 || (v1[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContentSize + 16] & 1) != 0 || (v1[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterViewWidth + 8])
  {
    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10001144C(v5, qword_1000737D8);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v9 = 136315906;
      sub_100004E6C(&qword_100071BB0);
      v10 = String.init<A>(describing:)();
      v12 = sub_10003F8C8(v10, v11, &v49);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      v13 = String.init<A>(describing:)();
      v15 = sub_10003F8C8(v13, v14, &v49);

      *(v9 + 14) = v15;
      *(v9 + 22) = 2080;
      sub_100004E6C(&qword_100071BB8);
      v16 = String.init<A>(describing:)();
      v18 = sub_10003F8C8(v16, v17, &v49);

      *(v9 + 24) = v18;
      *(v9 + 32) = 2080;
      sub_100004E6C(&unk_100071BC0);
      v19 = String.init<A>(describing:)();
      v21 = sub_10003F8C8(v19, v20, &v49);

      *(v9 + 34) = v21;
      _os_log_impl(&_mh_execute_header, v7, v8, "LockScreenCoordinator: layoutMetrics is nil. topBounds: %s, widgetsTopBounds: %s, platterContentSize: %s, platterViewWidth: %s.", v9, 0x2Au);
      swift_arrayDestroy();
    }

    v22 = 0;
    v23 = 0uLL;
    v24 = 1;
    v25 = 0.0;
  }

  else
  {
    v27 = v3[2];
    v26 = v3[3];
    v29 = *v3;
    v28 = v3[1];
    v30 = v4[2];
    rect = v4[3];
    v32 = *v4;
    v31 = v4[1];
    v22 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterViewWidth];
    v48 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContentSize + 8];
    MaxY = CGRectGetMaxY(*&v1[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_bottomBounds]);
    v50.origin.x = v29;
    v50.origin.y = v28;
    v50.size.width = v27;
    v50.size.height = v26;
    v34 = CGRectGetMaxY(v50) + -80.0;
    if (v34 < MaxY)
    {
      MaxY = v34;
    }

    v51.origin.x = v29;
    v51.origin.y = v28;
    v51.size.width = v27;
    v51.size.height = v26;
    MinY = CGRectGetMinY(v51);
    v52.origin.x = v32;
    v52.origin.y = v31;
    v52.size.width = v30;
    v52.size.height = rect;
    recta = CGRectGetMinY(v52);
    v35 = [objc_opt_self() mainScreen];
    [v35 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v53.origin.x = v37;
    v53.origin.y = v39;
    v53.size.width = v41;
    v53.size.height = v43;
    Height = CGRectGetHeight(v53);
    v24 = 0;
    v25 = v48 + Height - MaxY + 20.0;
    *&v23 = MinY;
    *(&v23 + 1) = recta;
  }

  *a1 = v23;
  *(a1 + 16) = v25;
  *(a1 + 24) = v22;
  *(a1 + 32) = v24;
}

id sub_10002B9C8()
{
  v1 = sub_100004E6C(&qword_100070C60);
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v27 = &v24 - v2;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContentAssertion] = 0;
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artworkCatalogTimer] = 0;
  v7 = &v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_bottomBounds];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = &v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_topBounds];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = &v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_widgetsTopBounds];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContentSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterViewWidth];
  *v11 = 0;
  v11[8] = 1;
  v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_isShowingCompactTimeLabel] = 2;
  v12 = OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_wallpaperService;
  *&v0[v12] = [objc_allocWithZone(SBSWallpaperService) init];
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer] = 0;
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer] = 0;
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork] = 0;
  v13 = OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState;
  v0[v13] = MRPrefersExpandedLockScreenPlatter();
  v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_shouldExpandWhenAmbientSceneDisconnects] = 0;
  v14 = &v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_ambientLifecycleCancellable];
  sub_10000CCE0();
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  static DispatchQoS.unspecified.getter();
  v30[0] = _swiftEmptyArrayStorage;
  sub_100021CD8(&unk_100071BD0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004E6C(&unk_100071530);
  sub_100012B78(&unk_100071BE0, &unk_100071530);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v25 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_workerQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = type metadata accessor for LockScreenCoordinator();
  v31.receiver = v0;
  v31.super_class = v15;
  v16 = objc_msgSendSuper2(&v31, "init");
  v17 = qword_10006FF70;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100004E6C(&unk_100070B30);
  v19 = v27;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100012B78(&qword_100070C90, &qword_100070C60);
  v20 = v29;
  v21 = Publisher<>.sink(receiveValue:)();

  (*(v28 + 8))(v19, v20);
  v30[3] = type metadata accessor for AnyCancellable();
  v30[4] = &protocol witness table for AnyCancellable;
  v30[0] = v21;
  v22 = OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_ambientLifecycleCancellable;
  swift_beginAccess();
  sub_100012AB0(v30, v18 + v22);
  swift_endAccess();

  return v18;
}

void sub_10002BF74(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10002DE54(v1);
  }
}

id LockScreenCoordinator.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_wallpaperService] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002C180(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer);
  if (v3)
  {
    v7 = v3;
    if (![v7 isShowingMediaSuggestions])
    {
      v6 = v2 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContentSize;
      *v6 = a1;
      *(v6 + 8) = a2;
      *(v6 + 16) = 0;
      sub_10002D890(0, 0xD00000000000001CLL, 0x800000010004CBD0);
    }
  }
}

void sub_10002C288(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterViewWidth;
  if ((*(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterViewWidth + 8) & 1) != 0 || *v2 != a1)
  {
    *v2 = a1;
    *(v2 + 8) = 0;
    v3 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer);
    if (v3)
    {
      v4 = v3;
      if (([v4 isShowingMediaSuggestions] & 1) == 0)
      {
        sub_10002D890(0, 0xD00000000000001ALL, 0x800000010004E240);
      }
    }
  }
}

void sub_10002C38C(CGFloat a1, CGFloat a2)
{
  v23 = &type metadata for Feature;
  v24 = sub_100007F94();
  v5 = isFeatureEnabled(_:)();
  sub_100007FE8(v22);
  if (v5)
  {
    v6 = sub_10002ED34();
    if (v6)
    {
      v7 = v6;
      v8 = v6 + 56;
      v9 = -*(v6 + 16);
      v10 = -1;
      do
      {
        if (v9 + v10 == -1)
        {

          return;
        }

        if (++v10 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_20;
        }

        v11 = v8 + 32;
        v25.x = a1;
        v25.y = a2;
        v12 = CGRectContainsPoint(*(v8 - 24), v25);
        v8 = v11;
      }

      while (!v12);

      v13 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState);
      *(v2 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState) = 0;
      if (v13 == 1)
      {
        MRSetPrefersExpandedLockScreenPlatter();
        sub_10002D890(0, 0xD000000000000017, 0x800000010004CBF0);
      }
    }
  }

  else
  {
    if (qword_10006FFA0 != -1)
    {
LABEL_20:
      swift_once();
    }

    v14 = *(qword_100073810 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer);
    if (v14)
    {
      v15 = v14;
      v16 = [v15 view];
      if (v16)
      {
        v17 = v16;
        type metadata accessor for CoverSheetBackgroundView();
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = v18;

          v20 = *(v19 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);
          [v20 frame];
          v26.x = a1;
          v26.y = a2;
          if (CGRectContainsPoint(v27, v26))
          {
            v21 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState);
            *(v2 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState) = 0;
            if (v21)
            {
              MRSetPrefersExpandedLockScreenPlatter();
              sub_10002D890(0, 0xD000000000000017, 0x800000010004CBF0);
            }
          }

          return;
        }
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t sub_10002C658()
{
  v1 = [objc_opt_self() currentSettings];
  v2 = [v1 supportLockScreenBackground];

  if (!v2)
  {
    return 0;
  }

  result = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
  if (result)
  {
    result = [result catalog];
    if (result)
    {

      v4 = [objc_opt_self() currentDevice];
      v5 = [v4 userInterfaceIdiom];

      if (v5 == 1 || (v6 = [objc_opt_self() sharedApplication], v7 = objc_msgSend(v6, "activeInterfaceOrientation"), v6, result = sub_10001D540(v7), result))
      {
        v8 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState);
        result = 1;
        *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState) = 1;
        if ((v8 & 1) == 0)
        {
          MRSetPrefersExpandedLockScreenPlatter();
          sub_10002D890(0, 0xD000000000000017, 0x800000010004CBF0);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002C7E4(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v58 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v6 = *(v65 - 8);
  __chkstk_darwin(v65);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  v60 = v9;
  *(v9 + 48) = 1;
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 1;
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v64 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_workerQueue);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v72 = sub_10002F4B8;
  v73 = v13;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v50[1] = &v70;
  v70 = sub_100015D4C;
  v71 = &unk_10005EAE8;
  v14 = _Block_copy(&aBlock);
  v59 = v11;

  v51 = v12;
  static DispatchQoS.unspecified.getter();
  v67 = &_swiftEmptyArrayStorage;
  v15 = sub_100021CD8(&qword_100071B90, &type metadata accessor for DispatchWorkItemFlags);
  v16 = sub_100004E6C(&unk_100070B00);
  v17 = sub_100012B78(&qword_100071BA0, &unk_100070B00);
  v56 = v16;
  v53 = v17;
  v57 = v15;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  v18 = *(v66 + 8);
  v63 = v5;
  v64 = v3;
  v66 += 8;
  v55 = v18;
  v18(v5, v3);
  v19 = v51;
  v20 = *(v6 + 8);
  v21 = v8;
  v22 = v8;
  v23 = v52;
  v62 = v6 + 8;
  v54 = v20;
  v20(v22, v65);

  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if (v25 == 1)
  {
    dispatch_group_enter(v19);
    v26 = *&v23[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_wallpaperService];
    v27 = swift_allocObject();
    *(v27 + 16) = v10;
    *(v27 + 24) = v19;
    v72 = sub_10002F56C;
    v73 = v27;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_10002D354;
    v71 = &unk_10005EC28;
    v28 = _Block_copy(&aBlock);
    v29 = v19;

    [v26 fetchLockScreenContentCutoutBoundsForOrientation:1 completionHandler:v28];
    _Block_release(v28);
  }

  dispatch_group_enter(v19);
  v71 = &type metadata for Feature;
  v72 = sub_100007F94();
  v30 = isFeatureEnabled(_:)();
  sub_100007FE8(&aBlock);
  if (v30 & 1) != 0 && (sub_10001353C())
  {
    v31 = *&v23[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_wallpaperService];
    v32 = swift_allocObject();
    v33 = v60;
    *(v32 + 16) = v60;
    *(v32 + 24) = v19;
    v72 = sub_10002F948;
    v73 = v32;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_10002D354;
    v71 = &unk_10005EBD8;
    v34 = _Block_copy(&aBlock);
    v35 = v19;

    [v31 fetchExtendedLockScreenContentCutoutBoundsForOrientation:1 completionHandler:v34];
  }

  else
  {
    v36 = *&v23[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_wallpaperService];
    v37 = swift_allocObject();
    v33 = v60;
    *(v37 + 16) = v60;
    *(v37 + 24) = v19;
    v72 = sub_10002F948;
    v73 = v37;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_10002D354;
    v71 = &unk_10005EB38;
    v34 = _Block_copy(&aBlock);
    v38 = v19;

    [v36 fetchMaximalLockScreenContentCutoutBoundsForOrientation:1 completionHandler:v34];
  }

  _Block_release(v34);
  sub_10000CCE0();
  v39 = static OS_dispatch_queue.main.getter();
  v40 = swift_allocObject();
  v41 = v58;
  v42 = v59;
  v40[2] = v33;
  v40[3] = v42;
  v40[4] = v10;
  v40[5] = v23;
  v43 = v61;
  v40[6] = v41;
  v40[7] = v43;
  v72 = sub_10002F518;
  v73 = v40;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_100015D4C;
  v71 = &unk_10005EB88;
  v44 = _Block_copy(&aBlock);

  v45 = v23;

  v46 = v21;
  static DispatchQoS.unspecified.getter();
  v67 = &_swiftEmptyArrayStorage;
  v48 = v63;
  v47 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v44);

  v55(v48, v47);
  v54(v46, v65);
}

id sub_10002CFC0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10002F588();
  if (result)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    sub_10000CCE0();
    v12 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = ObjCClassMetadata;
    v13[4] = a2;
    aBlock[4] = sub_10002F6A8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015D4C;
    aBlock[3] = &unk_10005EC78;
    v14 = _Block_copy(aBlock);

    v15 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100021CD8(&qword_100071B90, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004E6C(&unk_100070B00);
    sub_100012B78(&qword_100071BA0, &unk_100070B00);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v17 + 8))(v6, v4);
    return (*(v7 + 8))(v9, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002D2C8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  [swift_getObjCClassFromMetadata() contentCutoutBoundsForInterfaceOrientation:1];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_beginAccess();
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  dispatch_group_leave(a3);
}

uint64_t sub_10002D354(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v9(v10, a2, a3, a4, a5);
}

void sub_10002D3C8(uint64_t a1, NSObject *a2, double a3, double a4, double a5, double a6)
{
  if (!CGRectIsNull(*&a3))
  {
    swift_beginAccess();
    *(a1 + 16) = a3;
    *(a1 + 24) = a4;
    *(a1 + 32) = a5;
    *(a1 + 40) = a6;
    *(a1 + 48) = 0;
  }

  dispatch_group_leave(a2);
}

uint64_t sub_10002D444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = swift_beginAccess();
  if ((*(a1 + 48) & 1) == 0)
  {
    v31 = *(a1 + 16);
    v33 = *(a1 + 32);
    result = swift_beginAccess();
    if ((*(a2 + 48) & 1) == 0)
    {
      v25 = *(a2 + 32);
      v27 = *(a2 + 16);
      swift_beginAccess();
      v12 = v31;
      v11 = v33;
      if ((*(a3 + 48) & 1) == 0)
      {
        v12 = *(a3 + 16);
        v11 = *(a3 + 32);
      }

      v29 = v12;
      v30 = v11;
      v13 = a4 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_bottomBounds;
      *v13 = v27;
      *(v13 + 16) = v25;
      *(v13 + 32) = 0;
      v14 = objc_opt_self();
      v15 = [v14 mainScreen];
      [v15 bounds];
      v26 = v17;
      v28 = v16;

      v18 = a4 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_topBounds;
      v19.f64[0] = v28;
      v19.f64[1] = v26;
      *v18 = vmulq_f64(v31, v19);
      *(v18 + 16) = vmulq_f64(v33, v19);
      *(v18 + 32) = 0;
      v20 = [v14 mainScreen];
      [v20 bounds];
      v32 = v22;
      v34 = v21;

      v23.f64[0] = v34;
      v23.f64[1] = v32;
      v24 = a4 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_widgetsTopBounds;
      *v24 = vmulq_f64(v29, v23);
      *(v24 + 16) = vmulq_f64(v30, v23);
      *(v24 + 32) = 0;
      return a5();
    }
  }

  return result;
}

void sub_10002D5E4()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artworkCatalogTimer;
  [*(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artworkCatalogTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
  if (v3 && (v4 = [v3 catalog]) != 0 && ((v4, v5 = objc_msgSend(objc_opt_self(), "currentDevice"), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v6 == 1) || (v7 = objc_msgSend(objc_opt_self(), "sharedApplication"), v8 = objc_msgSend(v7, "activeInterfaceOrientation"), v7, sub_10001D540(v8))))
  {

    sub_10002D890(1, 0x206B726F77747261, 0xEF6465676E616863);
  }

  else
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = sub_10002F4A0;
    v13[5] = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100015D4C;
    v13[3] = &unk_10005EA70;
    v10 = _Block_copy(v13);

    v11 = [objc_opt_self() timerWithInterval:0 repeats:v10 block:2.0];
    _Block_release(v10);

    v12 = *(v0 + v1);
    *(v0 + v1) = v11;
  }
}

void sub_10002D820()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10002D890(1, 0xD00000000000001ELL, 0x800000010004E1F0);
  }
}

void sub_10002D890(char a1, uint64_t a2, uint64_t a3)
{
  v17 = &type metadata for Feature;
  v18 = sub_100007F94();
  v7 = isFeatureEnabled(_:)();
  sub_100007FE8(v16);
  if (v7)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v9 = sub_10002B470();
      sub_10002AF6C(v9 & 1);
    }
  }

  if ((sub_10002B470() & 1) == 0)
  {
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = a2;
    v10[4] = a3;
    v11 = v3;

    sub_10002E654(0, a1 & 1, sub_10002F3F8, v10);
LABEL_8:

    return;
  }

  if (*&v3[OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer])
  {
    sub_10002E654(1, a1 & 1, 0, 0);
    return;
  }

  v12 = [objc_opt_self() currentSettings];
  v13 = [v12 supportLockScreenBackground];

  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3;
    *(v14 + 40) = a1 & 1;
    v15 = v3;

    sub_10002C7E4(sub_10002F458, v14);
    goto LABEL_8;
  }
}

void sub_10002DA40(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContentAssertion))
  {
    if (*(a1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState) != 1 || (v6 = *(a1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork)) == 0 || (v7 = [v6 catalog]) == 0 || (v7, v8 = objc_msgSend(objc_opt_self(), "currentDevice"), v9 = objc_msgSend(v8, "userInterfaceIdiom"), v8, v9 != 1) && (v10 = objc_msgSend(objc_opt_self(), "sharedApplication"), v11 = objc_msgSend(v10, "activeInterfaceOrientation"), v10, !sub_10001D540(v11)) || !*(a1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer))
    {
      sub_10002DD10(a2, a3);
    }
  }
}

uint64_t sub_10002DB68(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContentAssertion;
  v9 = *(a1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContentAssertion);
  if (!v9 || (result = [v9 isValid], (result & 1) == 0))
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_10006FF80 != -1)
    {
      swift_once();
    }

    v12 = qword_1000737C8;
    if (os_log_type_enabled(qword_1000737C8, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10003F8C8(a2, a3, &v15);
      _os_log_impl(&_mh_execute_header, v12, v11, "Acquiring background content assertion because %s", v13, 0xCu);
      sub_100007FE8(v14);
    }

    *(a1 + v8) = [objc_allocWithZone(MRUILockScreenAssertion) initWithAnimated:a4 & 1];

    return _objc_release_x1();
  }

  return result;
}

void sub_10002DD10(uint64_t a1, unint64_t a2)
{
  v5 = static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  v6 = qword_1000737C8;
  if (os_log_type_enabled(qword_1000737C8, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10003F8C8(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v6, v5, "Releasing background content assertion because %s", v7, 0xCu);
    sub_100007FE8(v8);
  }

  v9 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContentAssertion);
  *(v2 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContentAssertion) = 0;
}

void sub_10002DE54(char a1)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  v4 = qword_1000737C8;
  if (os_log_type_enabled(qword_1000737C8, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v4, v3, "LockScreenCoordinator handleAmbientSceneIsActive:%{BOOL}d", v5, 8u);
  }

  if (a1)
  {
    v6 = OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState;
    v7 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState);
    *(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_shouldExpandWhenAmbientSceneDisconnects) = v7;
    *(v1 + v6) = 0;
    if ((v7 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  if (*(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_shouldExpandWhenAmbientSceneDisconnects) == 1)
  {
    v8 = [objc_opt_self() currentSettings];
    v9 = [v8 supportLockScreenBackground];

    if (v9)
    {
      v10 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
      if (v10)
      {
        v11 = [v10 catalog];
        if (v11)
        {

          v12 = [objc_opt_self() currentDevice];
          v13 = [v12 userInterfaceIdiom];

          if (v13 == 1 || (v14 = [objc_opt_self() sharedApplication], v15 = objc_msgSend(v14, "activeInterfaceOrientation"), v14, sub_10001D540(v15)))
          {
            v16 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState);
            *(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState) = 1;
            if ((v16 & 1) == 0)
            {
LABEL_7:
              MRSetPrefersExpandedLockScreenPlatter();

              sub_10002D890(0, 0xD000000000000017, 0x800000010004CBF0);
            }
          }
        }
      }
    }
  }
}

id sub_10002E0B4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v43 = *(v11 - 8);
  v44 = v11;
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch_group_create();
  v15 = *(v3 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer);
  if (v15 && *(v3 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState) == (a1 & 1))
  {
    v42 = a3;
    v16 = v15;
    dispatch_group_enter(v14);
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    v51 = sub_10002F3E8;
    v52 = v17;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_100015D4C;
    v50 = &unk_10005E9D0;
    v18 = _Block_copy(&aBlock);
    v19 = v14;

    [v16 setShowArtworkView:(a1 & 1) == 0 completion:v18];
    _Block_release(v18);
    result = [v16 view];
    if (!result)
    {
      __break(1u);
      goto LABEL_17;
    }

    v21 = result;
    [result layoutIfNeeded];

    a3 = v42;
  }

  sub_10002B574(v53);
  if (v54)
  {
    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10001144C(v22, qword_1000737D8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "LockScreenCoordinator updateLayout: layoutMetrics is nil.", v25, 2u);
    }

    goto LABEL_15;
  }

  v26 = OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer;
  v27 = *(v4 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer);
  if (!v27)
  {
LABEL_15:
    sub_10000CCE0();
    v38 = static OS_dispatch_queue.main.getter();
    v39 = swift_allocObject();
    *(v39 + 16) = a2;
    *(v39 + 24) = a3;
    v51 = sub_10002F380;
    v52 = v39;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_100015D4C;
    v50 = &unk_10005E980;
    v40 = _Block_copy(&aBlock);
    sub_10002F330(a2);
    static DispatchQoS.unspecified.getter();
    v46 = &_swiftEmptyArrayStorage;
    sub_100021CD8(&qword_100071B90, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004E6C(&unk_100070B00);
    sub_100012B78(&qword_100071BA0, &unk_100070B00);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v40);

    (*(v45 + 8))(v10, v8);
    (*(v43 + 8))(v13, v44);
  }

  v42 = a2;
  v28 = a3;
  v29 = v53[1];
  v30 = &v27[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_layoutMetrics];
  *v30 = v53[0];
  *(v30 + 1) = v29;
  v30[32] = 0;
  v31 = v27;
  result = [v31 view];
  if (result)
  {
    v32 = result;
    [result bounds];
    v34 = v33;
    v36 = v35;

    sub_10000F700(v34, v36);
    v37 = *(v4 + v26);
    a3 = v28;
    a2 = v42;
    if (v37)
    {
      [v37 setArtworkVisible:a1 & 1];
    }

    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_10002E654(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = a1 & 1;
    v19 = sub_10002F2AC;
    v20 = v9;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100015D4C;
    v18 = &unk_10005E8E0;
    v10 = _Block_copy(&v15);
    v11 = v4;

    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    v19 = sub_10002F2FC;
    v20 = v12;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_10002E860;
    v18 = &unk_10005E930;
    v13 = _Block_copy(&v15);
    sub_10002F330(a3);

    [v8 _animateUsingSpringWithDuration:1 delay:v10 options:v13 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:42.0 completion:0.0];
    _Block_release(v13);
    _Block_release(v10);
  }

  else
  {
    v14 = a1 & 1;

    sub_10002E0B4(v14, a3, a4);
  }
}

uint64_t sub_10002E860(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void LockScreenCoordinator.nowPlayingController(_:metadataController:didChange:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
  *(v3 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork) = a3;
  v5 = a3;

  sub_10002B204();
}

void LockScreenCoordinator.artworkView(_:didChangeArtworkImage:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer);
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    [v2 invalidateAllTimelinesForReason:v3];
  }
}

void sub_10002EABC(void *a1)
{
  *(v1 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_isShowingCompactTimeLabel) = 2;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10001144C(v3, qword_1000737D8);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      v8 = v4;
      v9 = [v8 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_10003F8C8(v10, v12, &v15);

      *(v6 + 4) = v13;
      sub_100007FE8(v7);
    }
  }
}

uint64_t sub_10002ED34()
{
  if (qword_10006FFA0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100073810 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for CoverSheetBackgroundView();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {
LABEL_25:

      goto LABEL_26;
    }

    v5 = *(v4 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView);

    v3 = *&v5[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer];
    if (v3)
    {
      sub_10002B574(v41);
      if (v42)
      {

        if (qword_10006FF90 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_10001144C(v6, qword_1000737D8);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
        }

        return 0;
      }

      v22 = *&v41[3];
      v23 = [v1 view];

      if (v23)
      {
        v39 = v22;
        [v23 bounds];
        v25 = v24;
        v40 = v26;

        sub_100004E6C(&qword_100071998);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_100044BC0;
        v3 = [v1 view];

        if (v3)
        {
          [v3 bounds];

          UIRectInset();
          *(v10 + 32) = v27;
          *(v10 + 40) = v28;
          *(v10 + 48) = v29;
          *(v10 + 56) = v30;
          if (v40 < v25)
          {
            v31 = (v25 - v39) * 0.5;
            inited = swift_initStackObject();
            __asm { FMOV            V3.2D, #12.0 }

            *(inited + 16) = xmmword_100045540;
            *(inited + 32) = _Q3;
            *(inited + 48) = v31 + -24.0;
            *(inited + 56) = v40 + -24.0;
            *(inited + 64) = v25 - v31 + 12.0;
            *(inited + 72) = 0x4028000000000000;
            *(inited + 80) = v31 + -24.0;
            *(inited + 88) = v40 + -24.0;
            sub_10002F188(inited);

            return v10;
          }

LABEL_21:

          return v10;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_25;
    }

    sub_100004E6C(&qword_100071998);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100044BC0;
    v11 = [v1 view];
    if (v11)
    {
      v3 = v11;
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = *(v12 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);

        [v13 frame];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        *(v10 + 32) = v15;
        *(v10 + 40) = v17;
        *(v10 + 48) = v19;
        *(v10 + 56) = v21;
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10002F188(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000278D0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10002F274()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10002F2E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F2FC(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

uint64_t sub_10002F330(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002F340()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F380()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_10002F3B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F40C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10002F468()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F4C0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002F52C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10002F588()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100073340;
  v7 = qword_100073340;
  if (!qword_100073340)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10002F6BC;
    v3[3] = &unk_10005ECA8;
    v3[4] = &v4;
    sub_10002F6BC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10002F650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002F668()
{

  return _swift_deallocObject(v0, 40, 7);
}

Class sub_10002F6BC(void *a1)
{
  v7[0] = 0;
  if (!qword_100073348)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_10002F8AC;
    v7[4] = &unk_10005ECE0;
    v7[5] = v7;
    v8 = off_10005ECC8;
    v9 = 0;
    qword_100073348 = _sl_dlopen();
  }

  if (qword_100073348)
  {
    v2 = v7[0];
    if (!v7[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    a1 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CoverSheetLibrary(void)"];
    [a1 handleFailureInFunction:v4 file:@"MediaRemoteUI-Bridging-Header.h" lineNumber:17 description:{@"%s", v7[0]}];

    __break(1u);
  }

  free(v2);
LABEL_5:
  result = objc_getClass("CSContentCutoutBoundsCalculator");
  *(*(a1[4] + 8) + 24) = result;
  if (!*(*(a1[4] + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getCSContentCutoutBoundsCalculatorClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MediaRemoteUI-Bridging-Header.h" lineNumber:18 description:{@"Unable to find class %s", "CSContentCutoutBoundsCalculator"}];

    __break(1u);
  }

  qword_100073340 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_10002F8AC()
{
  result = _sl_dlopen();
  qword_100073348 = result;
  return result;
}

uint64_t sub_10002F984()
{
  v0 = type metadata accessor for Logger();
  sub_1000238EC(v0, qword_100071BF0);
  sub_10001144C(v0, qword_100071BF0);
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  v1 = qword_1000737C8;
  return Logger.init(_:)();
}

id sub_10002FA40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002FB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5 + OBJC_IVAR____TtC13MediaRemoteUI15BannerPresenter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(a1, a2, a5, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10002FBEC(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

void sub_10002FC28(void *a1, char a2, uint64_t a3)
{
  swift_getObjectType();
  if (qword_10006FFA8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10001144C(v5, qword_100071BF0);
  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = a3;
    v12 = sub_10003F8C8(v9, v10, &v59);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = [a1 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10003F8C8(v14, v16, &v59);

    *(v8 + 14) = v17;
    a3 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Will present %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(a3 + OBJC_IVAR____TtC13MediaRemoteUI15BannerPresenter_source);
  if (!v18)
  {
    goto LABEL_11;
  }

  if (sub_1000302E8(a2 & 1))
  {
    sub_100004E6C(&unk_100071DC0);
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  v59 = 0;
  v20 = [v18 postPresentable:a1 options:1 userInfo:v19.super.isa error:&v59];

  if (v20)
  {
    v21 = v59;
LABEL_11:
    swift_unknownObjectRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    v24 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = _typeName(_:qualified:)();
    v27 = sub_10003F8C8(v25, v26, &v59);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = [a1 requestIdentifier];
    swift_unknownObjectRelease();
    if (v28)
    {
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_10003F8C8(v29, v31, &v59);

      *(v24 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%s] Presented %s", v24, 0x16u);
      swift_arrayDestroy();

LABEL_15:

      return;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = v59;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unknownObjectRetain();
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  p_name = &SuggestedRouteBannerPresenter.name;
  if (!os_log_type_enabled(v34, v35))
  {
    swift_unknownObjectRelease();

    goto LABEL_20;
  }

  v58 = a3;
  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  *v37 = 136315650;
  v39 = _typeName(_:qualified:)();
  v41 = sub_10003F8C8(v39, v40, &v59);

  *(v37 + 4) = v41;
  *(v37 + 12) = 2080;
  v42 = [a1 requestIdentifier];
  if (v42)
  {
    v43 = v42;

    swift_unknownObjectRelease();
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_10003F8C8(v44, v46, &v59);

    *(v37 + 14) = v47;
    *(v37 + 22) = 2112;
    swift_errorRetain();
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 24) = v48;
    *v38 = v48;
    _os_log_impl(&_mh_execute_header, v34, v35, "[%s] Presentable %s failed with: %@", v37, 0x20u);
    sub_10000CC78(v38);

    swift_arrayDestroy();

    a3 = v58;
    p_name = (&SuggestedRouteBannerPresenter + 24);
LABEL_20:
    v49 = a3 + OBJC_IVAR____TtC13MediaRemoteUI15BannerPresenter_delegate;
    if (!swift_unknownObjectWeakLoadStrong())
    {

      return;
    }

    v50 = *(v49 + 8);
    v51 = [a1 p_name[289]];
    if (v51)
    {
      v52 = v51;
      ObjectType = swift_getObjectType();
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      (*(v50 + 8))(v54, v56, 0, ObjectType, v50);

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_25;
  }

LABEL_26:

  swift_unknownObjectRelease();
  __break(1u);
}

unint64_t sub_1000302E8(Swift::Bool a1)
{
  sub_100004E6C(&qword_100071C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045540;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  sub_1000303D4();
  v4 = SBUIIsSystemApertureEnabled();
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(v4);
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v5;
  *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(a1);
  v6 = sub_1000386A4(inited);
  swift_setDeallocating();
  sub_100004E6C(&unk_100071C60);
  swift_arrayDestroy();
  return v6;
}

unint64_t sub_1000303D4()
{
  result = qword_100071C58;
  if (!qword_100071C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100071C58);
  }

  return result;
}

uint64_t sub_100030420(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CCE0();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_100030838;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015D4C;
  aBlock[3] = &unk_10005ED60;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000CD84();
  sub_100004E6C(&unk_100070B00);
  sub_10000CDDC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_1000306C4(void *a1, void *a2, uint64_t (*a3)(void))
{
  if (SBUIIsSystemApertureEnabled())
  {
    objc_allocWithZone(type metadata accessor for GroupSessionSystemApertureViewController());
    v6 = a1;
    v7 = sub_100005474(a2, a1, &off_10005ED00);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for GroupSessionBannerViewController());
    v8 = a1;
    v7 = sub_10001DA34(a2, a1, &off_10005ED00);
  }

  v9 = v7;
  swift_getObjectType();
  sub_10002FC28(v9, 0, a1);
  swift_unknownObjectRelease();
  return a3(0);
}

id sub_100030798()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionBannerPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000307F0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100030844(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003085C()
{
  v1 = v0;
  if (qword_10006FFB0 != -1)
  {
    swift_once();
  }

  v2 = qword_100073830;
  v3 = objc_allocWithZone(type metadata accessor for ClientConnectionManager());
  v4 = v2;
  v5 = [v3 init];
  v6 = *&v4[OBJC_IVAR____TtC13MediaRemoteUI10MainServer_clientConnectionManager];
  *&v4[OBJC_IVAR____TtC13MediaRemoteUI10MainServer_clientConnectionManager] = v5;

  if (v5)
  {
    v7 = OBJC_IVAR____TtC13MediaRemoteUI11AppDelegate_server;
    v8 = v5;
    sub_10001F8A0();

    *&v1[v7] = v4;
    v9.receiver = v1;
    v9.super_class = type metadata accessor for AppDelegate();
    objc_msgSendSuper2(&v9, "init");
  }

  else
  {
    __break(1u);
  }
}

id sub_100030968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000309D0(char a1)
{
  sub_100004E6C(&qword_100070AD0);
  __chkstk_darwin();
  v4 = &v40 - v3;
  v1[OBJC_IVAR____TtC13MediaRemoteUI13RouteIconView_routeType] = a1;
  v5 = type metadata accessor for RouteIconView();
  v40.receiver = v1;
  v40.super_class = v5;
  v6 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = MRGroupCompositionForMRGroupSessionRouteType();
  v8 = [objc_opt_self() symbolNameForComposition:v7];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() _systemImageNamed:v9];

  [v6 setImage:v10];
  [v6 setContentMode:1];
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  [v6 setTintColor:v12];

  v13 = v6;
  [v13 setClipsToBounds:0];
  v14 = [objc_allocWithZone(UIImageView) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = v14;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  v18[5] = v13;
  sub_10000FED0(0, 0, v4, &unk_1000456B0, v18);

  [v16 setContentMode:1];
  v19 = [v16 layer];
  [v19 setShadowRadius:10.0];

  v20 = [v16 layer];
  v21 = [v11 blackColor];
  v22 = [v21 CGColor];

  [v20 setShadowColor:v22];
  [v16 setClipsToBounds:0];
  v23 = [v16 layer];
  [v23 setMasksToBounds:0];

  [v13 addSubview:v16];
  v24 = objc_opt_self();
  sub_100004E6C(&unk_100070270);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100045670;
  v26 = [v16 leadingAnchor];
  v27 = [v13 centerXAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:4.0];

  *(v25 + 32) = v28;
  v29 = [v16 topAnchor];
  v30 = [v13 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:4.0];

  *(v25 + 40) = v31;
  v32 = [v16 widthAnchor];
  v33 = [v13 widthAnchor];

  v34 = [v32 constraintEqualToAnchor:v33 multiplier:0.4];
  *(v25 + 48) = v34;
  v35 = [v16 heightAnchor];
  v36 = [v16 widthAnchor];

  v37 = [v35 constraintEqualToAnchor:v36];
  *(v25 + 56) = v37;
  sub_100004EF4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints:isa];

  return v13;
}

uint64_t sub_100030FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v7;
  v5[23] = v6;

  return _swift_task_switch(sub_10003105C, v7, v6);
}

uint64_t sub_10003105C()
{
  v1 = v0[20];
  v2 = [objc_opt_self() sharedAssetsProvider];
  v0[24] = v2;
  v3 = String._bridgeToObjectiveC()();
  v0[25] = v3;
  v4 = [v1 traitCollection];
  v0[26] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000311FC;
  v5 = swift_continuation_init();
  v0[17] = sub_100004E6C(&unk_100071D60);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000313A8;
  v0[13] = &unk_10005EDB0;
  v0[14] = v5;
  [v2 applicationIconForBundleIdentifier:v3 traitCollection:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000311FC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return _swift_task_switch(sub_100031304, v2, v1);
}

uint64_t sub_100031304()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[19];

  v5 = v0[18];
  [v4 setImage:v5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000313A8(uint64_t a1, void *a2)
{
  v3 = sub_100031670((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

id sub_1000314F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RouteIconView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100031550()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000119FC;

  return sub_100030FC4(a1, v4, v5, v7, v6);
}

void *sub_100031670(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Swift::Int sub_1000316CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100031740()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id sub_100031794()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI16BannerController____lazy_storage___groupSessionPresenter;
  v2 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI16BannerController____lazy_storage___groupSessionPresenter];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI16BannerController____lazy_storage___groupSessionPresenter];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for GroupSessionBannerPresenter());
    v5 = v0;
    v6 = sub_100032B90(v5, v4);

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100031818()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI16BannerController____lazy_storage___suggestedRoutePresenter;
  v2 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI16BannerController____lazy_storage___suggestedRoutePresenter];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI16BannerController____lazy_storage___suggestedRoutePresenter];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for SuggestedRouteBannerPresenter());
    v5 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerPresenter_routeTextFormatter;
    v6 = objc_allocWithZone(MRURouteTextFormatter);
    v7 = v0;
    v8 = [v6 init];
    v9 = [v8 configuration];
    [v9 setOmitGroupLeaderName:1];

    *&v4[v5] = v8;
    v10 = sub_100032B90(v7, v4);

    v11 = *&v0[v1];
    *&v0[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_10003190C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v26 = *(v15 - 8);
  v27 = v15;
  __chkstk_darwin(v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CCE0();
  v25 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = v6;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a5;
  v18[8] = v24;
  aBlock[4] = sub_100032B7C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015D4C;
  aBlock[3] = &unk_10005EE60;
  v19 = _Block_copy(aBlock);

  v20 = v6;

  sub_10002F330(a5);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000CD84();
  sub_100004E6C(&unk_100070B00);
  sub_10000CDDC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v28 + 8))(v14, v12);
  return (*(v26 + 8))(v17, v27);
}

void sub_100031BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v8 = String._bridgeToObjectiveC()();
  v9 = *(a3 + OBJC_IVAR____TtC13MediaRemoteUI16BannerController_source);
  if (!v9)
  {
LABEL_4:
    if (a6)
    {
      a6(0);
    }

    return;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = v8;
  sub_1000386A4(_swiftEmptyArrayStorage);
  sub_100004E6C(&unk_100071DC0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = 0;
  v13 = [v9 revokePresentableWithRequestIdentifier:v10 reason:v11 animated:1 userInfo:isa error:&v22];

  if (v13)
  {
    v14 = v22;

    goto LABEL_4;
  }

  v15 = v22;
  v16 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v17 = static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  v18 = qword_1000737C8;
  if (os_log_type_enabled(qword_1000737C8, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&_mh_execute_header, v18, v17, "revoke banner failed: %@", v19, 0xCu);
    sub_10000CC78(v20);
  }

  if (a6)
  {
    swift_errorRetain();
    a6(v16);
  }
}

uint64_t sub_100031E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CCE0();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v16 = v21;
  v15[4] = v4;
  v15[5] = v16;
  v15[6] = a4;
  aBlock[4] = sub_100032A9C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015D4C;
  aBlock[3] = &unk_10005EE10;
  v17 = _Block_copy(aBlock);

  v18 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000CD84();
  sub_100004E6C(&unk_100070B00);
  sub_10000CDDC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v22);
}

void sub_100032118(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = String._bridgeToObjectiveC()();
  v7 = v6;
  v8 = *(a3 + OBJC_IVAR____TtC13MediaRemoteUI16BannerController_source);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v6;
  sub_1000386A4(_swiftEmptyArrayStorage);
  sub_100004E6C(&unk_100071DC0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = 0;
  v11 = [v8 revokeAllPresentablesWithReason:v9 userInfo:isa error:&v20];

  if (v11)
  {
    v12 = v20;

LABEL_4:
    a4(0);

    return;
  }

  v13 = v20;
  v14 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v15 = static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  v16 = qword_1000737C8;
  if (os_log_type_enabled(qword_1000737C8, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&_mh_execute_header, v16, v15, "revoke banner failed: %@", v17, 0xCu);
    sub_10000CC78(v18);
  }

  swift_errorRetain();
  a4(v14);
}

id sub_100032378()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  aBlock = v9;
  v28 = v11;
  v12._countAndFlagsBits = 0x74696E69656420;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v14 = aBlock;
  v13 = v28;
  sub_10000CCE0();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI16BannerController_source];
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v13;
  v17[4] = v16;
  v31 = sub_100032CBC;
  v32 = v17;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100015D4C;
  v30 = &unk_10005EEB0;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10000CD84();
  sub_100004E6C(&unk_100070B00);
  sub_10000CDDC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v4, v2);
  (*(v23 + 8))(v7, v24);
  v20 = type metadata accessor for BannerController();
  v26.receiver = v1;
  v26.super_class = v20;
  return objc_msgSendSuper2(&v26, "dealloc");
}

void sub_100032674(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  if (a3)
  {
    v5 = v4;
    sub_1000386A4(_swiftEmptyArrayStorage);
    sub_100004E6C(&unk_100071DC0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = 0;
    v7 = [a3 revokeAllPresentablesWithReason:v5 userInfo:isa error:&v10];

    if (v7)
    {
      v8 = v10;
    }

    else
    {
      v9 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
  }
}

id sub_100032884()
{
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI16BannerController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI16BannerController____lazy_storage___groupSessionPresenter] = 0;
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI16BannerController____lazy_storage___suggestedRoutePresenter] = 0;
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI16BannerController____lazy_storage___volumeHUDPresenter] = 0;
  v1 = OBJC_IVAR____TtC13MediaRemoteUI16BannerController_source;
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v2];

  *&v0[v1] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for BannerController();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1000329A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC13MediaRemoteUI16BannerController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(a1, a2, a3, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100032A54()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100032AAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100032AC4(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100032B24()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

id sub_100032B90(uint64_t a1, char *a2)
{
  v3 = &a2[OBJC_IVAR____TtC13MediaRemoteUI15BannerPresenter_delegate];
  *&a2[OBJC_IVAR____TtC13MediaRemoteUI15BannerPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC13MediaRemoteUI15BannerPresenter_source;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v5];

  *&a2[v4] = v6;
  *(v3 + 1) = &off_10005EDD8;
  swift_unknownObjectWeakAssign();
  v8.receiver = a2;
  v8.super_class = type metadata accessor for BannerPresenter();
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_100032C7C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100032CC8(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    _Block_copy(a3);
    _Block_copy(a3);
    v8 = a1;
    v9 = sub_100031818();
    _Block_copy(a3);
    sub_10003FEF4(v7, v9, a3);
    _Block_release(a3);
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    _Block_copy(a3);
    _Block_copy(a3);
    v8 = a1;
    v9 = sub_100031794();
    sub_100030420(v11, sub_100021DAC, v5);
    goto LABEL_5;
  }

  v12 = objc_opt_self();
  v13 = MSVAutoBugCaptureDomainMediaRemote;
  _Block_copy(a3);
  _Block_copy(a3);
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  [v12 snapshotWithDomain:v13 type:v14 subType:v15 context:v16 triggerThresholdValues:0 events:0 completion:0];

  sub_100032F68();
  swift_allocError();
  *v17 = 1;
  v18 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v18);

LABEL_6:

  _Block_release(a3);
}

uint64_t sub_100032F30()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100032F68()
{
  result = qword_100071DD0;
  if (!qword_100071DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071DD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BannerController.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BannerController.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100033130()
{
  result = qword_100071DD8;
  if (!qword_100071DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071DD8);
  }

  return result;
}

char *sub_100033194()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView____lazy_storage___titleView;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView____lazy_storage___titleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView____lazy_storage___titleView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 176);
    v17[10] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 160);
    v17[11] = v4;
    v17[12] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 192);
    v18 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 208);
    v5 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 112);
    v17[6] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 96);
    v17[7] = v5;
    v6 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 144);
    v17[8] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 128);
    v17[9] = v6;
    v7 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 48);
    v17[2] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 32);
    v17[3] = v7;
    v8 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 80);
    v17[4] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 64);
    v17[5] = v8;
    v9 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 16);
    v17[0] = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute);
    v17[1] = v9;
    v10 = objc_allocWithZone(type metadata accessor for SuggestedRouteBannerTitleView());
    sub_100004DB8(v17, v16);
    v11 = v0;
    v12 = sub_100002B04(v17);
    v13 = *(v0 + v1);
    *(v11 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_10003327C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() mru_suggestedRouteBannerSubtitleFont];
  [v0 setFont:v1];

  [v0 setTextAlignment:1];
  LODWORD(v2) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v3];
  v4 = String._bridgeToObjectiveC()();
  [v0 setText:v4];

  return v0;
}

char *sub_10003337C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_activityRouteView;
  v4 = [objc_allocWithZone(MRUActivityRouteView) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_actionButton;
  v6 = [objc_opt_self() buttonWithType:0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView____lazy_storage___titleView] = 0;
  v7 = OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_subtitleView;
  *&v1[v7] = sub_10003327C();
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_titleLabelMaxWidth] = 0x4066400000000000;
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_pillViewMaxWidth] = 0x4072C00000000000;
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_maxActivityRouteViewSide] = 0x4049000000000000;
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_waveformIconPointSizeRatio] = 0x3FEB333333333333;
  v8 = &v1[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute];
  v9 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 1) = v9;
  v10 = *(a1 + 80);
  *(v8 + 4) = *(a1 + 64);
  *(v8 + 5) = v10;
  v11 = *(a1 + 48);
  *(v8 + 2) = *(a1 + 32);
  *(v8 + 3) = v11;
  v12 = *(a1 + 144);
  *(v8 + 8) = *(a1 + 128);
  *(v8 + 9) = v12;
  v13 = *(a1 + 112);
  *(v8 + 6) = *(a1 + 96);
  *(v8 + 7) = v13;
  *(v8 + 26) = *(a1 + 208);
  v14 = *(a1 + 192);
  *(v8 + 11) = *(a1 + 176);
  *(v8 + 12) = v14;
  *(v8 + 10) = *(a1 + 160);
  v15 = *&v1[v3];
  v16 = *&v1[v5];
  v17 = objc_allocWithZone(PLPillView);
  sub_100004DB8(a1, v38);
  v18 = [v17 initWithLeadingAccessoryView:v15 trailingAccessoryView:v16];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_pillView] = v18;
  v35.receiver = v1;
  v35.super_class = type metadata accessor for SuggestedRouteBannerView();
  v19 = objc_msgSendSuper2(&v35, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_pillView;
  v21 = *&v19[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_pillView];
  v22 = v19;
  LODWORD(v23) = 1148846080;
  [v21 setContentCompressionResistancePriority:0 forAxis:v23];
  [*&v19[v20] setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [v22 addSubview:*&v19[v20]];
  [*&v22[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_actionButton] _setTouchInsets:{-8.0, -8.0, -8.0, -8.0}];
  sub_1000337B8();
  v24 = sub_100033194();
  v25 = [objc_allocWithZone(PLPillContentItem) initWithText:0 style:1 accessoryView:v24];

  v26 = [objc_allocWithZone(PLPillContentItem) initWithText:0 style:1 accessoryView:*&v22[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_subtitleView]];
  sub_100004E6C(&unk_100070270);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100044520;
  *(v27 + 32) = v25;
  *(v27 + 40) = v26;
  v28 = *&v19[v20];
  sub_100006334(0, &qword_1000712B8);
  v29 = v25;
  v30 = v26;
  v31 = v28;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 setCenterContentItems:isa animated:0];

  [*&v19[v20] setReferenceContentItemForIntrinsicContentSize:v29];
  v33 = String._bridgeToObjectiveC()();
  [v22 setAccessibilityIdentifier:v33];

  sub_100004EB4(v38);
  v36[10] = v38[10];
  v36[11] = v38[11];
  v36[12] = v38[12];
  v37 = v39;
  v36[6] = v38[6];
  v36[7] = v38[7];
  v36[8] = v38[8];
  v36[9] = v38[9];
  v36[2] = v38[2];
  v36[3] = v38[3];
  v36[4] = v38[4];
  v36[5] = v38[5];
  v36[0] = v38[0];
  v36[1] = v38[1];
  sub_100033BF8(v36);

  sub_100004E14(a1);
  return v22;
}

void sub_1000337B8()
{
  v1 = objc_opt_self();
  sub_100004E6C(&unk_100070270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000457E0;
  v3 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_pillView];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = [v3 centerXAnchor];
  v8 = [v0 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 widthAnchor];
  v11 = [v10 constraintLessThanOrEqualToConstant:300.0];

  *(v2 + 48) = v11;
  sub_100006334(0, &qword_100070620);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

void sub_100033BF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100033194();
  v5 = v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute;
  v6 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 176);
  v48[10] = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 160);
  v48[11] = v6;
  v48[12] = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 192);
  v49 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 208);
  v7 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 112);
  v48[6] = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 96);
  v48[7] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 144);
  v48[8] = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 128);
  v48[9] = v8;
  v9 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 48);
  v48[2] = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 32);
  v48[3] = v9;
  v10 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 80);
  v48[4] = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 64);
  v48[5] = v10;
  v11 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 16);
  v48[0] = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute);
  v48[1] = v11;
  sub_100004DB8(v48, v36);
  sub_100004938(v48);
  sub_100004E14(v48);

  v13 = *(v5 + 56);
  v12 = *(v5 + 64);
  v14 = *(a1 + 176);
  v44 = *(a1 + 160);
  v45 = v14;
  v46 = *(a1 + 192);
  v47 = *(a1 + 208);
  v15 = *(a1 + 112);
  v40 = *(a1 + 96);
  v41 = v15;
  v16 = *(a1 + 144);
  v42 = *(a1 + 128);
  v43 = v16;
  v17 = *(a1 + 48);
  v36[2] = *(a1 + 32);
  v37 = v17;
  v18 = *(a1 + 80);
  v38 = *(a1 + 64);
  v39 = v18;
  v19 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v19;
  v20 = sub_100004EDC(v36);
  if (v20 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(&v37 + 1);
  }

  if (v20 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v38;
  }

  if (!v12)
  {
    if (!v22)
    {
      goto LABEL_16;
    }

    v24 = 0;
    v23 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_subtitleView);
    goto LABEL_15;
  }

  if (!v22 || (v13 != v21 || v12 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v23 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_subtitleView);

    v24 = String._bridgeToObjectiveC()();

LABEL_15:
    [v23 setText:v24];
  }

LABEL_16:
  v25 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_subtitleView);
  v26 = *(v5 + 184);
  v27 = objc_opt_self();
  v28 = &selRef_secondaryLabelColor;
  if (!v26)
  {
    v28 = &selRef_systemBlueColor;
  }

  v29 = [v27 *v28];
  [v25 setTextColor:v29];

  v30 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_actionButton);

  v31 = String._bridgeToObjectiveC()();

  v32 = [objc_opt_self() _systemImageNamed:v31];

  if (v32)
  {
    v33 = [v32 imageWithSymbolConfiguration:*(v5 + 96)];
  }

  else
  {
    v33 = 0;
  }

  [v30 setImage:v33 forState:0];

  v34 = [v30 imageView];
  if (v34)
  {
    v35 = v34;
    [v34 setContentMode:1];
  }
}

void sub_100033EC8()
{
  v1 = sub_100033194();
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_waveformPackageView];
  v5 = objc_opt_self();
  v6 = &selRef_blackColor;
  if (v3 != 1)
  {
    v6 = &selRef_whiteColor;
  }

  v7 = [v5 *v6];
  [v4 setGlyphTintColor:v7];
}

id sub_100034040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedRouteBannerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100034164(uint64_t a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute;
  v4 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 176);
  v5 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 144);
  v62 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 160);
  v63 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 176);
  v64 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 192);
  v7 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 112);
  v8 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 80);
  v58 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 96);
  v59 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 112);
  v10 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 144);
  v60 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 128);
  v61 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 48);
  v12 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 16);
  v54 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 32);
  v55 = v11;
  v13 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 48);
  v14 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 80);
  v56 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 64);
  v57 = v14;
  v15 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 16);
  v53[0] = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute);
  v53[1] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 176);
  v76 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 160);
  v77 = v16;
  v78 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 192);
  v17 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 112);
  v72 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 96);
  v73 = v17;
  v18 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 144);
  v74 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 128);
  v75 = v18;
  v19 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 48);
  v68 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 32);
  v69 = v19;
  v20 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 80);
  v70 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 64);
  v71 = v20;
  v21 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 16);
  v66 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute);
  v67 = v21;
  v80[10] = v62;
  v80[11] = v6;
  v80[12] = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 192);
  v80[6] = v58;
  v80[7] = v9;
  v80[8] = v60;
  v80[9] = v5;
  v80[2] = v54;
  v80[3] = v13;
  v80[4] = v56;
  v80[5] = v8;
  v65 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 208);
  v79 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 208);
  v81 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_suggestedRoute + 208);
  v80[0] = v53[0];
  v80[1] = v12;
  v22 = *(a1 + 176);
  *(v3 + 160) = *(a1 + 160);
  *(v3 + 176) = v22;
  *(v3 + 192) = *(a1 + 192);
  *(v3 + 208) = *(a1 + 208);
  v23 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v23;
  v24 = *(a1 + 144);
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = v24;
  v25 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v25;
  v26 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v26;
  v27 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v27;
  sub_100004DB8(v53, v51);
  sub_100004DB8(v2, v51);
  sub_100004E14(v80);
  v28 = *(v3 + 176);
  v51[10] = *(v3 + 160);
  v51[11] = v28;
  v51[12] = *(v3 + 192);
  v52 = *(v3 + 208);
  v29 = *(v3 + 112);
  v51[6] = *(v3 + 96);
  v51[7] = v29;
  v30 = *(v3 + 144);
  v51[8] = *(v3 + 128);
  v51[9] = v30;
  v31 = *(v3 + 48);
  v51[2] = *(v3 + 32);
  v51[3] = v31;
  v32 = *(v3 + 80);
  v51[4] = *(v3 + 64);
  v51[5] = v32;
  v33 = *(v3 + 16);
  v51[0] = *v3;
  v51[1] = v33;
  sub_100004DB8(v51, v49);
  LOBYTE(v2) = sub_10001E874(v51, v53);
  sub_100004E14(v51);
  if ((v2 & 1) == 0)
  {
    v45 = v76;
    v46 = v77;
    v47 = v78;
    v48 = v79;
    v41 = v72;
    v42 = v73;
    v43 = v74;
    v44 = v75;
    v37 = v68;
    v38 = v69;
    v39 = v70;
    v40 = v71;
    v35 = v66;
    v36 = v67;
    nullsub_1(&v35);
    v49[10] = v45;
    v49[11] = v46;
    v49[12] = v47;
    v50 = v48;
    v49[6] = v41;
    v49[7] = v42;
    v49[8] = v43;
    v49[9] = v44;
    v49[2] = v37;
    v49[3] = v38;
    v49[4] = v39;
    v49[5] = v40;
    v49[0] = v35;
    v49[1] = v36;
    sub_100033BF8(v49);
    [*(v1 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_pillView) invalidateIntrinsicContentSize];
  }

  return sub_100004E14(v53);
}

void sub_1000343E8()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_activityRouteView;
  v2 = [objc_allocWithZone(MRUActivityRouteView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_actionButton;
  v4 = [objc_opt_self() buttonWithType:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView____lazy_storage___titleView) = 0;
  v5 = OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_subtitleView;
  *(v0 + v5) = sub_10003327C();
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_titleLabelMaxWidth) = 0x4066400000000000;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_pillViewMaxWidth) = 0x4072C00000000000;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_maxActivityRouteViewSide) = 0x4049000000000000;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_waveformIconPointSizeRatio) = 0x3FEB333333333333;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10003452C(uint64_t a1)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer;
    v4 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer);
    if (v4)
    {
      v5 = v1;
      v6 = *(a1 + 32);
      swift_getKeyPath();
      sub_100037714(&unk_100070AE0, type metadata accessor for MotionDataContainer);

      v7 = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      LOBYTE(v6) = [v7 isArtworkVisuallyIdenticalToCatalog:*(*(v4 + 16) + 32)];

      if (v6)
      {
        sub_100035030(a1);
      }

      v1 = v5;
    }

    else
    {
    }

    type metadata accessor for MotionDataContainer(0);
    v9 = swift_allocObject();

    ObservationRegistrar.init()();
    *(v9 + 16) = a1;
    v10 = *(v1 + v3);
    *(v1 + v3) = v9;

    sub_100036898(v10);
  }

  v8 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer);
  *(v1 + OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer) = 0;
  sub_100036898(v8);
}

void *sub_100034714()
{
  swift_getKeyPath();
  sub_100037714(&qword_1000722F0, type metadata accessor for MotionData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1000347BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037714(&qword_1000722F0, type metadata accessor for MotionData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_100034874(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000348A4(v1);
}

void sub_1000348A4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
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
    sub_100037714(&qword_1000722F0, type metadata accessor for MotionData);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100006334(0, &qword_100071308);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void *sub_100034A34()
{
  swift_getKeyPath();
  sub_100037714(&qword_1000722F0, type metadata accessor for MotionData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_100034ADC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037714(&qword_1000722F0, type metadata accessor for MotionData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_100034B94(void *a1)
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
    sub_100037714(&qword_1000722F0, type metadata accessor for MotionData);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100006334(0, &unk_100072320);
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

uint64_t sub_100034D24()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI10MotionData___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100034E00()
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

uint64_t sub_100034EB4()
{
  swift_getKeyPath();
  sub_100037714(&unk_100070AE0, type metadata accessor for MotionDataContainer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100034F58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037714(&unk_100070AE0, type metadata accessor for MotionDataContainer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_100035030(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037714(&unk_100070AE0, type metadata accessor for MotionDataContainer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100035164()
{

  v1 = OBJC_IVAR____TtC13MediaRemoteUIP33_D0D794B9E56CABED5FE0D317F57E7E7C19MotionDataContainer___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}