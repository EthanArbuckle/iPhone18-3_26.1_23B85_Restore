unint64_t sub_10019036C()
{
  result = qword_10023EA88;
  if (!qword_10023EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA88);
  }

  return result;
}

unint64_t sub_1001903C4()
{
  result = qword_10023EA90;
  if (!qword_10023EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA90);
  }

  return result;
}

unint64_t sub_10019041C()
{
  result = qword_10023EA98;
  if (!qword_10023EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA98);
  }

  return result;
}

unint64_t sub_100190474()
{
  result = qword_10023EAA0;
  if (!qword_10023EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EAA0);
  }

  return result;
}

unint64_t sub_1001904CC()
{
  result = qword_10023EAA8;
  if (!qword_10023EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EAA8);
  }

  return result;
}

unint64_t sub_100190524()
{
  result = qword_10023EAB0;
  if (!qword_10023EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EAB0);
  }

  return result;
}

unint64_t sub_10019057C()
{
  result = qword_10023EAB8;
  if (!qword_10023EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EAB8);
  }

  return result;
}

uint64_t sub_1001905D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001905F8()
{
  v0 = objc_allocWithZone(NSXPCConnection);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_;
  v5 = [v3 interfaceWithProtocol:v4];

  [v2 setExportedInterface:v5];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  [v2 setExportedObject:v6];

  v7 = &OBJC_PROTOCOL____TtP20AttributionKitCommon27TokenHandoffServiceProtocol_;
  v8 = [v3 interfaceWithProtocol:v7];

  [v2 setRemoteObjectInterface:v8];
  v16 = sub_10017E9F0;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_100225878;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler:v9];
  _Block_release(v9);
  v16 = sub_10017E9FC;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_1002258A0;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler:v10];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for TokenHandoffServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_10023FDA8 = result;
  return result;
}

uint64_t sub_10019089C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100190B44()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, static Logger.impressionIntake);
  sub_10000DAC0(v0, static Logger.impressionIntake);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100190EC8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100026610(v3, a2);
  sub_10000DAC0(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100190F64(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_10000DAC0(v3, a2);
}

uint64_t sub_100190FDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_10000DAC0(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100191098(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000070;
  v3 = 0xD000000000000015;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000001001CA450;
    v12 = 0xD00000000000001ALL;
    if (a1 == 6)
    {
      v12 = 0xD000000000000015;
    }

    else
    {
      v11 = 0x80000001001CA490;
    }

    v13 = 0x6973736572706D69;
    v14 = 0xEF657079742D6E6FLL;
    if (a1 == 4)
    {
      v13 = 0x6D617473656D6974;
      v14 = 0xE900000000000070;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x80000001001CA470;
    v6 = 0xD00000000000001ALL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
      v5 = 0x80000001001CA1F0;
    }

    v7 = 0x80000001001CA410;
    v8 = 0xD000000000000019;
    if (a1)
    {
      v7 = 0x80000001001CA430;
    }

    else
    {
      v8 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001001CA430;
        v3 = 0xD000000000000019;
        goto LABEL_41;
      }

      v15 = "impression-identifier";
      goto LABEL_35;
    }

    if (a2 != 2)
    {
      v2 = 0x80000001001CA1F0;
      v3 = 0xD000000000000011;
      goto LABEL_41;
    }

    v16 = "advertised-item-identifier";
    goto LABEL_40;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = "ad-network-identifier";
LABEL_35:
      v2 = (v15 - 32) | 0x8000000000000000;
      goto LABEL_41;
    }

    v16 = "eligible-for-re-engagement";
LABEL_40:
    v2 = (v16 - 32) | 0x8000000000000000;
    v3 = 0xD00000000000001ALL;
    goto LABEL_41;
  }

  if (a2 == 4)
  {
    v3 = 0x6D617473656D6974;
  }

  else
  {
    v3 = 0x6973736572706D69;
    v2 = 0xEF657079742D6E6FLL;
  }

LABEL_41:
  if (v9 == v3 && v10 == v2)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t sub_1001912D8()
{
  String.hash(into:)();
}

Swift::Int sub_100191428()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10019158C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100223FD8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1001915EC@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100223FD8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100191650(uint64_t a1)
{
  v2 = sub_10019185C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019168C(uint64_t a1)
{
  v2 = sub_10019185C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppImpressionHeader.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10000CDE0(&qword_10023EC50, &qword_1001C57E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10019185C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_10019185C()
{
  result = qword_10023EC58;
  if (!qword_10023EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EC58);
  }

  return result;
}

uint64_t AppImpressionHeader.init(from:)(uint64_t *a1)
{
  result = sub_100192530(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1001918DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100192530(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t AppImpressionPayload.impressionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppImpressionPayload.adNetworkID.getter()
{
  v1 = (v0 + *(type metadata accessor for AppImpressionPayload() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_100191AB0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100192E4C(*a1);
  *a2 = result;
  return result;
}

void sub_100191AE0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xE900000000000070;
    v9 = 0x6D617473656D6974;
    v10 = 0xD000000000000015;
    v11 = 0x80000001001CA450;
    if (v2 != 6)
    {
      v10 = 0xD00000000000001ALL;
      v11 = 0x80000001001CA490;
    }

    if (v2 != 4)
    {
      v9 = 0x6973736572706D69;
      v8 = 0xEF657079742D6E6FLL;
    }

    if (*v1 <= 5u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    if (*v1 > 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001001CA470;
    v4 = 0xD000000000000011;
    if (v2 == 2)
    {
      v4 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0x80000001001CA1F0;
    }

    v5 = 0xD000000000000015;
    v6 = 0x80000001001CA410;
    if (*v1)
    {
      v5 = 0xD000000000000019;
      v6 = 0x80000001001CA430;
    }

    if (*v1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_100191C04()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6D617473656D6974;
    v6 = 0xD000000000000015;
    if (v1 != 6)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (v1 != 4)
    {
      v5 = 0x6973736572706D69;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 == 2)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000015;
    if (*v0)
    {
      v3 = 0xD000000000000019;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_100191D20@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100192E4C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100191D54(uint64_t a1)
{
  v2 = sub_100192760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100191D90(uint64_t a1)
{
  v2 = sub_100192760();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppImpressionPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023EC60, &qword_1001C57E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100192760();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21[15] = 0;
  type metadata accessor for UUID();
  sub_100192808(&qword_10023A108);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for AppImpressionPayload();
    v12 = *(v3 + v11[5]);
    v21[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + v11[6]);
    v21[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + v11[7]);
    v21[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + v11[8]);
    v21[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21[10] = 5;
    sub_1001927B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = (v3 + v11[10]);
    v17 = *v16;
    v18 = v16[1];
    v21[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + v11[11]);
    v21[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AppImpressionPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for UUID();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000CDE0(&qword_10023EC78, &qword_1001C57F0);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AppImpressionPayload();
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100192760();
  v30 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v16 = v26;
  v38 = 0;
  sub_100192808(&qword_10023A0E0);
  v17 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 32))(v14, v17, v4);
  v37 = 1;
  *&v14[v11[5]] = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 2;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v28;
  *&v14[v11[6]] = v18;
  v35 = 3;
  *&v14[v11[7]] = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = 4;
  *&v14[v11[8]] = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = 5;
  sub_10019284C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = 6;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = &v14[v11[10]];
  *v21 = v20;
  v21[1] = v22;
  v31 = 7;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v19 + 8))(v30, v29);
  v14[v11[11]] = v23;
  sub_1001928A0(v14, v25);
  sub_10000DB58(a1);
  return sub_100192904(v14);
}

uint64_t sub_100192530(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023ED68, &unk_1001C5BB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10019185C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000DB58(a1);
  return v8;
}

uint64_t type metadata accessor for AppImpressionPayload()
{
  result = qword_10023ECE0;
  if (!qword_10023ECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100192760()
{
  result = qword_10023EC68;
  if (!qword_10023EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EC68);
  }

  return result;
}

unint64_t sub_1001927B4()
{
  result = qword_10023EC70;
  if (!qword_10023EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EC70);
  }

  return result;
}

uint64_t sub_100192808(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019284C()
{
  result = qword_10023EC80;
  if (!qword_10023EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EC80);
  }

  return result;
}

uint64_t sub_1001928A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppImpressionPayload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100192904(uint64_t a1)
{
  v2 = type metadata accessor for AppImpressionPayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100192984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100192A58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100192B14()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100192BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100192BCC()
{
  if (!qword_10023ECF0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10023ECF0);
    }
  }
}

unint64_t sub_100192C40()
{
  result = qword_10023ED38;
  if (!qword_10023ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED38);
  }

  return result;
}

unint64_t sub_100192C98()
{
  result = qword_10023ED40;
  if (!qword_10023ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED40);
  }

  return result;
}

unint64_t sub_100192CF0()
{
  result = qword_10023ED48;
  if (!qword_10023ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED48);
  }

  return result;
}

unint64_t sub_100192D48()
{
  result = qword_10023ED50;
  if (!qword_10023ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED50);
  }

  return result;
}

unint64_t sub_100192DA0()
{
  result = qword_10023ED58;
  if (!qword_10023ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED58);
  }

  return result;
}

unint64_t sub_100192DF8()
{
  result = qword_10023ED60;
  if (!qword_10023ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED60);
  }

  return result;
}

unint64_t sub_100192E4C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100224028, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t ConversionType.isInstall.getter(char a1)
{
  if (!a1)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t ConversionType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64616F6C6E776F64;
  }

  if (a1 == 1)
  {
    return 0x6F6C6E776F646572;
  }

  return 0x6761676E652D6572;
}

uint64_t sub_100193044(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6C6E776F646572;
  v4 = 0xEA00000000006461;
  if (v2 != 1)
  {
    v3 = 0x6761676E652D6572;
    v4 = 0xED0000746E656D65;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6F6C6E776F646572;
  v8 = 0xEA00000000006461;
  if (*a2 != 1)
  {
    v7 = 0x6761676E652D6572;
    v8 = 0xED0000746E656D65;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100193168()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10019321C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001932BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10019336C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20AttributionKitCommon14ConversionTypeO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10019339C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000006461;
  v5 = 0x6F6C6E776F646572;
  if (v2 != 1)
  {
    v5 = 0x6761676E652D6572;
    v4 = 0xED0000746E656D65;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64616F6C6E776F64;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s20AttributionKitCommon14ConversionTypeO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100224180, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10019351C()
{
  result = qword_10023ED70;
  if (!qword_10023ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED70);
  }

  return result;
}

unint64_t sub_100193574()
{
  result = qword_10023ED78;
  if (!qword_10023ED78)
  {
    sub_10000CCC0(&qword_10023ED80, &qword_1001C5CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED78);
  }

  return result;
}

AttributionKitCommon::SystemEnvironment_optional __swiftcall SystemEnvironment.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100224210, v2);

  if (v3 == 1)
  {
    v4.value = AttributionKitCommon_SystemEnvironment_production;
  }

  else
  {
    v4.value = AttributionKitCommon_SystemEnvironment_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t SystemEnvironment.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x69746375646F7270;
  }

  else
  {
    return 0x6D706F6C65766564;
  }
}

uint64_t sub_100193680(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x69746375646F7270;
  }

  else
  {
    v4 = 0x6D706F6C65766564;
  }

  if (v3)
  {
    v5 = 0xEB00000000746E65;
  }

  else
  {
    v5 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v6 = 0x69746375646F7270;
  }

  else
  {
    v6 = 0x6D706F6C65766564;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006E6FLL;
  }

  else
  {
    v7 = 0xEB00000000746E65;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t sub_100193738()
{
  result = qword_10023ED88;
  if (!qword_10023ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED88);
  }

  return result;
}

Swift::Int sub_10019378C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10019381C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100193898()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100193924@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100224210, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100193984(uint64_t *a1@<X8>)
{
  v2 = 0x6D706F6C65766564;
  if (*v1)
  {
    v2 = 0x69746375646F7270;
  }

  v3 = 0xEB00000000746E65;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100193A90()
{
  result = qword_10023ED90;
  if (!qword_10023ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ED90);
  }

  return result;
}

uint64_t sub_100193B30()
{
  if (qword_10023E530 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = sub_100193EF8;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100193C64;

  return sub_10017F6F0(sub_1001889A0, v3);
}

uint64_t sub_100193C64(char a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  v5[6] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100193DC0, 0, 0);
  }

  else
  {
    v7 = v5[3];
    v6 = v5[4];

    v8 = v5[1];

    return v8(a1 & 1);
  }
}

uint64_t sub_100193DC0()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3(0);
}

void sub_100193E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[4] = a4;
  v9[5] = a5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001A9410;
  v9[3] = &unk_100225C28;
  v8 = _Block_copy(v9);

  [a1 isEligibleForPurchaseProcessingWithAppItemID:a6 reply:v8];
  _Block_release(v8);
}

uint64_t PurchaseIntakeRequest.processInAppPurchase(appItemID:inAppPurchaseDetails:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100193F20, 0, 0);
}

uint64_t sub_100193F20()
{
  if (qword_10023E530 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = sub_10019432C;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10019405C;
  v5 = v0[3];

  return sub_10017FAF4(v5, sub_100188BBC, v3);
}

uint64_t sub_10019405C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1001941DC;
  }

  else
  {
    v3 = sub_100194170;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100194170()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001941DC()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

void sub_100194248(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1001A9410;
  v12[3] = &unk_100225C00;
  v11 = _Block_copy(v12);

  [a1 processInAppPurchaseWithAppItemID:a6 inAppPurchaseData:isa reply:v11];
  _Block_release(v11);
}

uint64_t PurchaseIntakeRequest.reportPurchaseIntakeFailure(appItemID:error:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100194354, 0, 0);
}

uint64_t sub_100194354()
{
  if (qword_10023E530 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = sub_100194680;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_10019448C;

  return sub_10017FE68(sub_100188BBC, v4);
}

uint64_t sub_10019448C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_100194964;
  }

  else
  {
    v3 = sub_100194958;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1001945A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = _convertErrorToNSError(_:)();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1001A9410;
  v12[3] = &unk_100225BD8;
  v11 = _Block_copy(v12);

  [a1 reportPurchaseIntakeFailureWithAppItemID:a6 error:v10 reply:v11];
  _Block_release(v11);
}

uint64_t sub_100194688(uint64_t a1)
{
  v2 = sub_100194814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001946C4(uint64_t a1)
{
  v2 = sub_100194814();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseIntakeRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023ED98, &qword_1001C5E88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100194814();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100194814()
{
  result = qword_10023EDA0;
  if (!qword_10023EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDA0);
  }

  return result;
}

unint64_t sub_10019488C()
{
  result = qword_10023EDA8;
  if (!qword_10023EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDA8);
  }

  return result;
}

unint64_t sub_1001948E4()
{
  result = qword_10023EDB0;
  if (!qword_10023EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDB0);
  }

  return result;
}

uint64_t sub_100194938(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100194968()
{
  if (*v0)
  {
    result = 0x746E756F63736964;
  }

  else
  {
    result = 0x6169725465657266;
  }

  *v0;
  return result;
}

uint64_t sub_1001949AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6169725465657266 && a2 == 0xE90000000000006CLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63736964 && a2 == 0xEA00000000006465)
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

uint64_t sub_100194A98(uint64_t a1)
{
  v2 = sub_100194ECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194AD4(uint64_t a1)
{
  v2 = sub_100194ECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100194B10(uint64_t a1)
{
  v2 = sub_100194F20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194B4C(uint64_t a1)
{
  v2 = sub_100194F20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100194B88(uint64_t a1)
{
  v2 = sub_100194F74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194BC4(uint64_t a1)
{
  v2 = sub_100194F74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseIntakeOfferType.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_10000CDE0(&qword_10023EDB8, &qword_1001C5FD0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = sub_10000CDE0(&qword_10023EDC0, &qword_1001C5FD8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19);
  v10 = &v19 - v9;
  v11 = sub_10000CDE0(&qword_10023EDC8, &qword_1001C5FE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100194ECC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_100194F20();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_100194F74();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_100194ECC()
{
  result = qword_10023EDD0;
  if (!qword_10023EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDD0);
  }

  return result;
}

unint64_t sub_100194F20()
{
  result = qword_10023EDD8;
  if (!qword_10023EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDD8);
  }

  return result;
}

unint64_t sub_100194F74()
{
  result = qword_10023EDE0;
  if (!qword_10023EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDE0);
  }

  return result;
}

Swift::Int PurchaseIntakeOfferType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100195054@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001950A0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1001950A0(uint64_t *a1)
{
  v2 = sub_10000CDE0(&qword_10023EE28, &qword_1001C6380);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - v4;
  v6 = sub_10000CDE0(&qword_10023EE30, &qword_1001C6388);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = sub_10000CDE0(&qword_10023EE38, &unk_1001C6390);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100194ECC();
  v15 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_10000DB58(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1001A9350();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    v25 = *(sub_10000CDE0(&qword_10023E930, &qword_1001C4C60) + 48);
    *v24 = &type metadata for PurchaseIntakeOfferType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return sub_10000DB58(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_100194F20();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_100194F74();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  sub_10000DB58(v32);
  return v37 & 1;
}

unint64_t sub_100195560()
{
  result = qword_10023EDE8;
  if (!qword_10023EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDE8);
  }

  return result;
}

unint64_t sub_1001955F8()
{
  result = qword_10023EDF0;
  if (!qword_10023EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDF0);
  }

  return result;
}

unint64_t sub_100195650()
{
  result = qword_10023EDF8;
  if (!qword_10023EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EDF8);
  }

  return result;
}

unint64_t sub_1001956A8()
{
  result = qword_10023EE00;
  if (!qword_10023EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE00);
  }

  return result;
}

unint64_t sub_100195700()
{
  result = qword_10023EE08;
  if (!qword_10023EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE08);
  }

  return result;
}

unint64_t sub_100195758()
{
  result = qword_10023EE10;
  if (!qword_10023EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE10);
  }

  return result;
}

unint64_t sub_1001957B0()
{
  result = qword_10023EE18;
  if (!qword_10023EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE18);
  }

  return result;
}

unint64_t sub_100195808()
{
  result = qword_10023EE20;
  if (!qword_10023EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE20);
  }

  return result;
}

void __swiftcall PostbackProxyRequest.init(advertisedItemID:fineConversionValue:coarseConversionValue:lockPostback:conversionTag:)(AttributionKitCommon::PostbackProxyRequest *__return_ptr retstr, Swift::UInt64 advertisedItemID, Swift::Int fineConversionValue, AttributionKitCommon::CoarseConversionValue_optional coarseConversionValue, Swift::Bool lockPostback, Swift::String_optional conversionTag)
{
  retstr->advertisedItemID = advertisedItemID;
  retstr->fineConversionValue = fineConversionValue;
  retstr->coarseConversionValue = coarseConversionValue;
  retstr->lockPostback = lockPostback;
  retstr->conversionTag = conversionTag;
}

uint64_t sub_1001958AC()
{
  if (qword_10023E5B8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100181A08;
  v2 = *(v0 + 16);

  return sub_100180080(v2, sub_100195D84, 0);
}

unint64_t sub_1001959A4()
{
  v1 = *v0;
  v2 = 0x74736F506B636F6CLL;
  if (v1 != 3)
  {
    v2 = 0x69737265766E6F63;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000015;
  }

  v3 = 0xD000000000000010;
  if (*v0)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100195A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100195EB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100195A8C(uint64_t a1)
{
  v2 = sub_100195E60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100195AC8(uint64_t a1)
{
  v2 = sub_100195E60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PostbackProxyRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023EE40, &qword_1001C63A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100195E60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[1];
    v17[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17[13] = *(v3 + 16);
    v17[12] = 2;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 17);
    v17[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[3];
    v16 = v3[4];
    v17[10] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double PostbackProxyRequest.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10019607C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

void sub_100195D84(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100225ED0;
  v9 = _Block_copy(v10);

  [v7 updateConversionValue:isa reply:v9];
  _Block_release(v9);
}

unint64_t sub_100195E60()
{
  result = qword_10023EE48;
  if (!qword_10023EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE48);
  }

  return result;
}

uint64_t sub_100195EB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001001CE7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001001CE910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001001CE930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736F506B636F6CLL && a2 == 0xEC0000006B636162 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10019607C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023EE68, &qword_1001C6578);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100195E60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 2;
  sub_100070E98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v25;
  v23 = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v12;
  v20 = v13;
  v22 = 4;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  result = sub_10000DB58(a1);
  v18 = v21;
  *a2 = v11;
  *(a2 + 8) = v18;
  LOBYTE(v18) = v20;
  *(a2 + 16) = v19;
  *(a2 + 17) = v18 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_1001962D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100196330(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1001963B0()
{
  result = qword_10023EE50;
  if (!qword_10023EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE50);
  }

  return result;
}

unint64_t sub_100196408()
{
  result = qword_10023EE58;
  if (!qword_10023EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE58);
  }

  return result;
}

unint64_t sub_100196460()
{
  result = qword_10023EE60;
  if (!qword_10023EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE60);
  }

  return result;
}

uint64_t sub_1001964B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

AttributionKitCommon::MeasurementWindowConfiguration __swiftcall MeasurementWindowConfiguration.init(sourceIDDigits:conversionValueTier:isPublisherItemIDIncluded:isMarketplaceIDIncluded:isCountryCodeIncluded:)(Swift::Int sourceIDDigits, AttributionKitCommon::ConversionValueTier conversionValueTier, Swift::Bool isPublisherItemIDIncluded, Swift::Bool isMarketplaceIDIncluded, Swift::Bool isCountryCodeIncluded)
{
  if (isPublisherItemIDIncluded)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFF00 | conversionValueTier;
  if (isMarketplaceIDIncluded)
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  if (isCountryCodeIncluded)
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 | v7 | v8;
  result.sourceIDDigits = sourceIDDigits;
  result.conversionValueTier = v9;
  result.isPublisherItemIDIncluded = BYTE1(v9);
  result.isMarketplaceIDIncluded = BYTE2(v9);
  result.isCountryCodeIncluded = HIBYTE(v9);
  return result;
}

unint64_t sub_100196520()
{
  v1 = *v0;
  v2 = 0x4449656372756F73;
  v3 = 0xD000000000000015;
  if (v1 == 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001965D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001969E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001965FC(uint64_t a1)
{
  v2 = sub_10019686C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196638(uint64_t a1)
{
  v2 = sub_10019686C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MeasurementWindowConfiguration.encode(to:)(void *a1, uint64_t a2, char a3)
{
  v6 = sub_10000CDE0(&qword_10023EE70, &qword_1001C6580);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10019686C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v18 = a3;
    v17 = 1;
    sub_1001968C0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_10019686C()
{
  result = qword_10023EE78;
  if (!qword_10023EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE78);
  }

  return result;
}

unint64_t sub_1001968C0()
{
  result = qword_10023EE80;
  if (!qword_10023EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE80);
  }

  return result;
}

uint64_t MeasurementWindowConfiguration.init(from:)(uint64_t *a1)
{
  result = sub_100196BA4(a1);
  if (v1)
  {
    return v3 & 0x10101FF;
  }

  return result;
}

uint64_t sub_100196944@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100196BA4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 9) = BYTE1(v5) & 1;
    *(a2 + 10) = BYTE2(v5) & 1;
    *(a2 + 11) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t sub_10019698C(void *a1)
{
  v2 = *(v1 + 10);
  v3 = *(v1 + 11);
  return MeasurementWindowConfiguration.encode(to:)(a1, *v1, *(v1 + 8));
}

uint64_t sub_1001969E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656372756F73 && a2 == 0xEE00737469676944;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001001CE950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001001CE970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001CE990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001001CE9B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100196BA4(uint64_t *a1)
{
  v2 = sub_10000CDE0(&qword_10023EEA0, &qword_1001C6758);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10019686C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v15 = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 1;
  sub_100196FD8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = 2;
  v10[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 3;
  v10[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000DB58(a1);
  return v8;
}

uint64_t initializeBufferWithCopyOfBuffer for MeasurementWindowConfiguration(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MeasurementWindowConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MeasurementWindowConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100196ED4()
{
  result = qword_10023EE88;
  if (!qword_10023EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE88);
  }

  return result;
}

unint64_t sub_100196F2C()
{
  result = qword_10023EE90;
  if (!qword_10023EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE90);
  }

  return result;
}

unint64_t sub_100196F84()
{
  result = qword_10023EE98;
  if (!qword_10023EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EE98);
  }

  return result;
}

unint64_t sub_100196FD8()
{
  result = qword_10023EEA8;
  if (!qword_10023EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EEA8);
  }

  return result;
}

void sub_100197038(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100226140;
  v9 = _Block_copy(v10);

  [v7 updateConversionValue:isa reply:v9];
  _Block_release(v9);
}

void __swiftcall PostbackUpdateTestingRequest.init(fineCV:coarseCV:conversionTag:clientBundleID:)(AttributionKitCommon::PostbackUpdateTestingRequest *__return_ptr retstr, Swift::Int fineCV, AttributionKitCommon::CoarseConversionValue_optional coarseCV, Swift::String_optional conversionTag, Swift::String clientBundleID)
{
  retstr->fineCV = fineCV;
  retstr->coarseCV = coarseCV;
  retstr->conversionTag = conversionTag;
  retstr->clientBundleID = clientBundleID;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PostbackUpdateTestingRequest.updateConversionValue()()
{
  if (qword_10023E528 != -1)
  {
    swift_once();
  }

  if (qword_10023FDA0)
  {
    sub_10018A5AC(v0, sub_100197038);
  }
}

uint64_t sub_1001971B4()
{
  v1 = 0x5643656E6966;
  v2 = 0x69737265766E6F63;
  if (*v0 != 2)
  {
    v2 = 0x7542746E65696C63;
  }

  if (*v0)
  {
    v1 = 0x5643657372616F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100197244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100197560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10019726C(uint64_t a1)
{
  v2 = sub_1001974B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001972A8(uint64_t a1)
{
  v2 = sub_1001974B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PostbackUpdateTestingRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023EEB0, &qword_1001C6760);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001974B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v17[14] = *(v3 + 8);
    v17[13] = 1;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[2];
    v13 = v3[3];
    v17[12] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v3[4];
    v15 = v3[5];
    v17[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1001974B0()
{
  result = qword_10023EEB8;
  if (!qword_10023EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EEB8);
  }

  return result;
}

double PostbackUpdateTestingRequest.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001976D0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100197560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5643656E6966 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5643657372616F63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7542746E65696C63 && a2 == 0xEE004449656C646ELL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001976D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023EED8, qword_1001C6940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001974B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 1;
  sub_100070E98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v26;
  v24 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v14;
  HIDWORD(v21) = v12;
  v22 = v13;
  v23 = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v9;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  result = sub_10000DB58(a1);
  *a2 = v11;
  *(a2 + 8) = BYTE4(v21);
  *(a2 + 16) = v22;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v19;
  return result;
}

uint64_t sub_100197924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019796C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001979DC()
{
  result = qword_10023EEC0;
  if (!qword_10023EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EEC0);
  }

  return result;
}

unint64_t sub_100197A34()
{
  result = qword_10023EEC8;
  if (!qword_10023EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EEC8);
  }

  return result;
}

unint64_t sub_100197A8C()
{
  result = qword_10023EED0;
  if (!qword_10023EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EED0);
  }

  return result;
}

uint64_t sub_100197AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100197AF8()
{
  result = sub_100197C68();
  qword_10023FF00 = result;
  return result;
}

uint64_t sub_100197B18()
{
  v1 = v0;
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, static Logger.xpc);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinitializing ServiceConnection", v5, 2u);
  }

  [*(v1 + 16) invalidate];
  return v1;
}

uint64_t sub_100197C10()
{
  sub_100197B18();

  return swift_deallocClassInstance();
}

uint64_t sub_100197C68()
{
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000DAC0(v0, static Logger.xpc);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "initializing ServiceConnection", v3, 2u);
  }

  v4 = objc_allocWithZone(NSXPCConnection);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithMachServiceName:v5 options:0];

  v7 = objc_opt_self();
  v8 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
  [v6 setExportedInterface:v8];

  v9 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  [v6 setExportedObject:v9];

  v10 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon15ServiceProtocol_];
  [v6 setRemoteObjectInterface:v10];

  v18 = sub_10017E9F0;
  v19 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10001F3F8;
  v17 = &unk_100226168;
  v11 = _Block_copy(&v14);
  [v6 setInterruptionHandler:v11];
  _Block_release(v11);
  v18 = sub_10017E9FC;
  v19 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10001F3F8;
  v17 = &unk_100226190;
  v12 = _Block_copy(&v14);
  [v6 setInvalidationHandler:v12];
  _Block_release(v12);
  [v6 resume];
  type metadata accessor for ServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

uint64_t sub_100197F6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TokenHandoffRequest.handoffUTToken(advertisedItemID:tokenData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_100197FB4, 0, 0);
}

uint64_t sub_100197FB4()
{
  if (qword_10023E530 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_10019820C;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100188038;
  v5 = *(v0 + 72);

  return sub_1001803CC(v5, sub_100198218, v3);
}

void sub_100198100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = Data._bridgeToObjectiveC()().super.isa;
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001A9410;
  v13[3] = &unk_100226318;
  v12 = _Block_copy(v13);

  [a1 handoffTokenWithAdvertisedItemID:a6 tokenData:isa requestData:v11 reply:v12];
  _Block_release(v12);
}

void sub_10019820C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[3];
  v7 = v5[4];
  sub_100198100(a1, a2, a3, a4, a5, v5[2]);
}

uint64_t TokenHandoffRequest.handoffUTMetrics(advertisedItemID:eventsData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_100198248, 0, 0);
}

uint64_t sub_100198248()
{
  if (qword_10023E530 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_100198394;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100187DBC;
  v5 = *(v0 + 72);

  return sub_1001803CC(v5, sub_100198C78, v3);
}

uint64_t TokenHandoffRequest.handoffPODToken(advertisedItemID:tokenData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_10023E530 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v7 = __chkstk_darwin(a1);
  __chkstk_darwin(v7);
  return sub_10018A968(a4, sub_100198C78);
}

void sub_1001984D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v16[4] = a4;
  v16[5] = a5;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1001A9410;
  v16[3] = a9;
  v15 = _Block_copy(v16);

  [a1 *a10];
  _Block_release(v15);
}

uint64_t sub_10019861C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69766E456E616B73 && a2 == 0xEF746E656D6E6F72)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001986AC(uint64_t a1)
{
  v2 = sub_10019886C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001986E8(uint64_t a1)
{
  v2 = sub_10019886C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TokenHandoffRequest.encode(to:)(void *a1, char a2)
{
  v4 = sub_10000CDE0(&qword_10023EFA0, &qword_1001C69A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10019886C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = a2;
  sub_10004CEFC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_10019886C()
{
  result = qword_10023EFA8;
  if (!qword_10023EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFA8);
  }

  return result;
}

void *sub_1001988D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100198920(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_100198920(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023EFC8, &qword_1001C6B68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_10000DA7C(a1, a1[3]);
  sub_10019886C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_10004DBC4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_10000DB58(a1);
  }

  return v9;
}

uint64_t getEnumTagSinglePayload for TokenHandoffRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_100198B54()
{
  result = qword_10023EFB0;
  if (!qword_10023EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFB0);
  }

  return result;
}

unint64_t sub_100198BAC()
{
  result = qword_10023EFB8;
  if (!qword_10023EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFB8);
  }

  return result;
}

unint64_t sub_100198C04()
{
  result = qword_10023EFC0;
  if (!qword_10023EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFC0);
  }

  return result;
}

uint64_t sub_100198C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100198C84(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1001A9410;
  v7[3] = &unk_100226380;
  v6 = _Block_copy(v7);

  [v5 getSnoutStoriesWithReply:v6];
  _Block_release(v6);
}

uint64_t SnoutRequest.getSnoutStories()()
{
  if (qword_10023E528 != -1)
  {
    swift_once();
  }

  if (!qword_10023FDA0)
  {
    return 0;
  }

  result = sub_10018AD18(sub_100198C84, &v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100198DDC(uint64_t a1)
{
  v2 = sub_100198F68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198E18(uint64_t a1)
{
  v2 = sub_100198F68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SnoutRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023EFD0, &qword_1001C6B70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100198F68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100198F68()
{
  result = qword_10023EFD8;
  if (!qword_10023EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFD8);
  }

  return result;
}

unint64_t sub_100198FE0()
{
  result = qword_10023EFE0;
  if (!qword_10023EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFE0);
  }

  return result;
}

unint64_t sub_100199038()
{
  result = qword_10023EFE8;
  if (!qword_10023EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFE8);
  }

  return result;
}

uint64_t sub_10019908C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DeveloperBillingEvent.price.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  return result;
}

uint64_t DeveloperBillingEvent.purchaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperBillingEvent() + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeveloperBillingEvent()
{
  result = qword_10023F080;
  if (!qword_10023F080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeveloperBillingEvent.init(price:quantity:offerType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = type metadata accessor for DeveloperBillingEvent();
  v9 = a6 + *(v8 + 24);
  result = Date.init()();
  *(a6 + *(v8 + 28)) = a5;
  return result;
}

uint64_t sub_100199234()
{
  v1 = 0x6563697270;
  v2 = 0x6573616863727570;
  if (*v0 != 2)
  {
    v2 = 0x707954726566666FLL;
  }

  if (*v0)
  {
    v1 = 0x797469746E617571;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001992B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019A028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001992E0(uint64_t a1)
{
  v2 = sub_100199614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019931C(uint64_t a1)
{
  v2 = sub_100199614();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DeveloperBillingEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023EFF0, &qword_1001C6CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100199614();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  v18 = *(v3 + 4);
  v16 = 0;
  type metadata accessor for Decimal(0);
  sub_100199AE4(&qword_10023AF98, type metadata accessor for Decimal);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 3);
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = type metadata accessor for DeveloperBillingEvent();
    v14 = *(v13 + 24);
    LOBYTE(v17) = 2;
    type metadata accessor for Date();
    sub_100199AE4(&qword_10023F000, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = *(v3 + *(v13 + 28));
    v16 = 3;
    sub_100199668();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100199614()
{
  result = qword_10023EFF8;
  if (!qword_10023EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EFF8);
  }

  return result;
}

unint64_t sub_100199668()
{
  result = qword_10023F008;
  if (!qword_10023F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F008);
  }

  return result;
}

uint64_t DeveloperBillingEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for Date();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000CDE0(&qword_10023F010, &qword_1001C6CF8);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for DeveloperBillingEvent();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  sub_10000DA7C(a1, v16);
  sub_100199614();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(v29);
  }

  v24 = v7;
  v18 = v27;
  type metadata accessor for Decimal(0);
  v34 = 0;
  sub_100199AE4(&qword_10023A6C0, type metadata accessor for Decimal);
  v19 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v15 = v30;
  *(v15 + 4) = v31;
  v33 = 1;
  *(v15 + 3) = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = 2;
  sub_100199AE4(&qword_10023F018, &type metadata accessor for Date);
  v20 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v26 + 32);
  v23 = *(v12 + 24);
  v21(&v15[v23], v20, v4);
  v32 = 3;
  sub_100199B2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v18 + 8))(v11, v19);
  v15[*(v12 + 28)] = v33;
  sub_100199B80(v15, v25);
  sub_10000DB58(v29);
  return sub_100199BE4(v15);
}

uint64_t sub_100199AE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100199B2C()
{
  result = qword_10023F020;
  if (!qword_10023F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F020);
  }

  return result;
}

uint64_t sub_100199B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeveloperBillingEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100199BE4(uint64_t a1)
{
  v2 = type metadata accessor for DeveloperBillingEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100199C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 <= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(a1 + *(a3 + 28));
    }

    v14 = v13 - 2;
    if (v12 >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100199D60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void sub_100199E1C()
{
  type metadata accessor for Decimal(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100199EC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100199EC0()
{
  if (!qword_10023F090)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10023F090);
    }
  }
}

unint64_t sub_100199F24()
{
  result = qword_10023F0C8;
  if (!qword_10023F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F0C8);
  }

  return result;
}

unint64_t sub_100199F7C()
{
  result = qword_10023F0D0;
  if (!qword_10023F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F0D0);
  }

  return result;
}

unint64_t sub_100199FD4()
{
  result = qword_10023F0D8[0];
  if (!qword_10023F0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10023F0D8);
  }

  return result;
}

uint64_t sub_10019A028(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10019A198(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  type metadata accessor for Result();
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10019A23C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  type metadata accessor for Result();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  return v0;
}

uint64_t sub_10019A2F4()
{
  sub_10019A23C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int JWSError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t static JWS.headerDictionary(fromJWS:)(uint64_t a1, unint64_t a2)
{
  v41 = 46;
  v42 = 0xE100000000000000;
  v40 = &v41;

  v5 = sub_100146984(0x7FFFFFFFFFFFFFFFLL, 0, sub_10019C2D8, v39, a1, a2, v4);
  if (v5[2] != 3)
  {

    sub_10009DAF4();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }

  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];

  v10 = static String._fromSubstring(_:)();
  v12 = v11;

  v41 = v10;
  v42 = v12;
  v13 = sub_10003E5C8();
  v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v16 = v15;

  v41 = v14;
  v42 = v16;
  v37 = v13;
  v38 = v13;
  v36 = v13;
  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;

  v41 = v17;
  v42 = v19;

  v20 = String.count.getter();

  v21 = v20 & 3;
  if (v20 <= 0)
  {
    v21 = -(-v20 & 3);
  }

  if (v21)
  {
    v22._countAndFlagsBits = 61;
    v22._object = 0xE100000000000000;
    v23 = String.init(repeating:count:)(v22, 4 - v21);
    String.append(_:)(v23);
  }

  v24 = Data.init(base64Encoded:options:)();
  v26 = v25;

  if (v26 >> 60 == 15)
  {
    sub_10009DAF4();
    swift_allocError();
    *v27 = 1;
    return swift_willThrow();
  }

  v30 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v41 = 0;
  v32 = [v30 JSONObjectWithData:isa options:0 error:{&v41, &type metadata for String, v36, v37, v38, 47, 0xE100000000000000}];

  if (v32)
  {
    v33 = v41;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&qword_10023B938, &qword_1001C6F00);
    if (swift_dynamicCast())
    {
      sub_10005CB30(v24, v26);
      return 95;
    }

    sub_10009DAF4();
    swift_allocError();
    *v35 = 1;
  }

  else
  {
    v34 = v41;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  return sub_10005CB30(v24, v26);
}

Swift::String __swiftcall String.base64URLEncodedToBase64()()
{
  sub_10003E5C8();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v2 = v1;

  v10 = v0;

  v3 = String.count.getter();

  v4 = v3 & 3;
  if (v3 <= 0)
  {
    v4 = -(-v3 & 3);
  }

  if (v4)
  {
    v5._countAndFlagsBits = 61;
    v5._object = 0xE100000000000000;
    v6 = String.init(repeating:count:)(v5, 4 - v4);
    String.append(_:)(v6);
  }

  v7 = v10;
  v8 = v2;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t static JWS.payloadDictionary(fromJWS:)(uint64_t a1, unint64_t a2)
{
  v41 = 46;
  v42 = 0xE100000000000000;
  v40 = &v41;

  v5 = sub_100146984(0x7FFFFFFFFFFFFFFFLL, 0, sub_10019C8BC, v39, a1, a2, v4);
  if (v5[2] != 3)
  {

    sub_10009DAF4();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }

  v6 = v5[8];
  v7 = v5[9];
  v8 = v5[10];
  v9 = v5[11];

  v10 = static String._fromSubstring(_:)();
  v12 = v11;

  v41 = v10;
  v42 = v12;
  v13 = sub_10003E5C8();
  v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v16 = v15;

  v41 = v14;
  v42 = v16;
  v37 = v13;
  v38 = v13;
  v36 = v13;
  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;

  v41 = v17;
  v42 = v19;

  v20 = String.count.getter();

  v21 = v20 & 3;
  if (v20 <= 0)
  {
    v21 = -(-v20 & 3);
  }

  if (v21)
  {
    v22._countAndFlagsBits = 61;
    v22._object = 0xE100000000000000;
    v23 = String.init(repeating:count:)(v22, 4 - v21);
    String.append(_:)(v23);
  }

  v24 = Data.init(base64Encoded:options:)();
  v26 = v25;

  if (v26 >> 60 == 15)
  {
    sub_10009DAF4();
    swift_allocError();
    *v27 = 2;
    return swift_willThrow();
  }

  v30 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v41 = 0;
  v32 = [v30 JSONObjectWithData:isa options:0 error:{&v41, &type metadata for String, v36, v37, v38, 47, 0xE100000000000000}];

  if (v32)
  {
    v33 = v41;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&qword_10023B938, &qword_1001C6F00);
    if (swift_dynamicCast())
    {
      sub_10005CB30(v24, v26);
      return 95;
    }

    sub_10009DAF4();
    swift_allocError();
    *v35 = 2;
  }

  else
  {
    v34 = v41;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  return sub_10005CB30(v24, v26);
}

char *static JWS.compactJWS(from:payload:signingKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v86 = a4;
  v87 = a7;
  v84 = a2;
  v85 = a5;
  v82 = a3;
  v9 = type metadata accessor for P256.Signing.ECDSASignature();
  v81 = *(v9 - 8);
  v10 = *(v81 + 64);
  __chkstk_darwin(v9);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.Encoding();
  v83 = *(v13 - 8);
  v14 = *(v83 + 64);
  __chkstk_darwin(v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for JSONEncoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = JSONEncoder.init()();
  (*(v18 + 104))(v21, enum case for JSONEncoder.DateEncodingStrategy.millisecondsSince1970(_:), v17);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v26 = v93;
  v27 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v26)
  {
    goto LABEL_2;
  }

  v29 = v27;
  v30 = v28;
  v78 = v16;
  v79 = v13;
  v76 = v9;
  v77 = v12;
  v86 = a9;
  v31 = Data.base64EncodedString(options:)(0);
  v93 = v25;
  v92 = v31;
  v90 = 43;
  v91 = 0xE100000000000000;
  v88 = 45;
  v89 = 0xE100000000000000;
  sub_10003E5C8();
  v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v34 = v33;

  v92._countAndFlagsBits = v32;
  v92._object = v34;
  v90 = 47;
  v91 = 0xE100000000000000;
  v88 = 95;
  v89 = 0xE100000000000000;
  v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v37 = v36;

  v92._countAndFlagsBits = v35;
  v92._object = v37;
  v90 = 61;
  v91 = 0xE100000000000000;
  v88 = 0;
  v89 = 0xE000000000000000;
  v80 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v87 = v38;
  sub_10001BABC(v29, v30);

  v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v85 = 0;
  v86 = v39;
  v42 = v40;
  v92 = Data.base64EncodedString(options:)(0);
  v90 = 43;
  v91 = 0xE100000000000000;
  v88 = 45;
  v89 = 0xE100000000000000;
  v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v45 = v44;

  v92._countAndFlagsBits = v43;
  v92._object = v45;
  v90 = 47;
  v91 = 0xE100000000000000;
  v88 = 95;
  v89 = 0xE100000000000000;
  v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v48 = v47;

  v92._countAndFlagsBits = v46;
  v92._object = v48;
  v90 = 61;
  v91 = 0xE100000000000000;
  v88 = 0;
  v89 = 0xE000000000000000;
  v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v50 = v49;
  sub_10001BABC(v86, v42);

  v92._countAndFlagsBits = v80;
  v92._object = v87;

  v51._countAndFlagsBits = 46;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);

  v52._countAndFlagsBits = v12;
  v52._object = v50;
  String.append(_:)(v52);

  v53 = v78;
  static String.Encoding.utf8.getter();
  v54 = String.data(using:allowLossyConversion:)();
  v56 = v55;

  (*(v83 + 8))(v53, v79);
  if (v56 >> 60 == 15)
  {

    sub_10009DAF4();
    swift_allocError();
    *v57 = 4;
    swift_willThrow();
LABEL_2:

    return v12;
  }

  v86 = v50;
  v58 = v54;
  v92._countAndFlagsBits = v54;
  v92._object = v56;
  sub_10019C2F4();
  v59 = v77;
  v60 = v85;
  P256.Signing.PrivateKey.signature<A>(for:)();
  if (v60)
  {

    sub_10005CB30(v54, v56);
  }

  else
  {
    v61 = P256.Signing.ECDSASignature.rawRepresentation.getter();
    v83 = v62;
    v84 = v61;
    v63 = Data.base64EncodedString(options:)(0);
    v85 = 0;
    v92 = v63;
    v90 = 43;
    v91 = 0xE100000000000000;
    v88 = 45;
    v89 = 0xE100000000000000;
    v64 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v66 = v65;

    v92._countAndFlagsBits = v64;
    v92._object = v66;
    v90 = 47;
    v91 = 0xE100000000000000;
    v88 = 95;
    v89 = 0xE100000000000000;
    v67 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v69 = v68;

    v92._countAndFlagsBits = v67;
    v92._object = v69;
    v90 = 61;
    v91 = 0xE100000000000000;
    v88 = 0;
    v89 = 0xE000000000000000;
    v70 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v72 = v71;
    sub_10001BABC(v84, v83);

    sub_10000CDE0(&qword_10023BC10, &qword_1001BA520);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1001B75D0;
    v74 = v86;
    v75 = v87;
    *(v73 + 32) = v80;
    *(v73 + 40) = v75;
    *(v73 + 48) = v12;
    *(v73 + 56) = v74;
    *(v73 + 64) = v70;
    *(v73 + 72) = v72;
    v92._countAndFlagsBits = v73;
    sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
    sub_1000B5134();
    v12 = BidirectionalCollection<>.joined(separator:)();
    sub_10005CB30(v58, v56);

    (*(v81 + 8))(v59, v76);
  }

  return v12;
}

Swift::String __swiftcall Data.base64URLEncodedString()()
{
  Data.base64EncodedString(options:)(0);
  sub_10003E5C8();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t JWS.signature.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t JWS.compactJWS.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 76));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t JWS.init(compactJWS:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v125 = a5;
  v126 = a7;
  v145 = a4;
  v127 = *(a3 - 8);
  v128 = a6;
  v13 = *(v127 + 64);
  v14 = __chkstk_darwin(a1);
  v124 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = *(v16 - 8);
  v132 = v16;
  v17 = *(v131 + 64);
  __chkstk_darwin(v14);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = 46;
  v136 = 0xE100000000000000;
  v134 = &v135;

  v123 = a1;
  v25 = sub_100146984(0x7FFFFFFFFFFFFFFFLL, 0, sub_10019C8BC, v133, a1, a2, &v146);
  if (v25[2] != 3)
  {

    sub_10009DAF4();
    swift_allocError();
    *v53 = 0;
    return swift_willThrow();
  }

  v122 = v8;
  v26 = type metadata accessor for JSONDecoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = JSONDecoder.init()();
  (*(v21 + 104))(v24, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v20);
  v130 = v29;
  result = dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  if (!v25[2])
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v121 = a3;
  v129 = a8;
  v32 = v25[4];
  v31 = v25[5];
  v33 = v25[6];
  v34 = v25[7];

  v35 = static String._fromSubstring(_:)();
  v37 = v36;

  v135 = v35;
  v136 = v37;
  v143 = 45;
  v144 = 0xE100000000000000;
  v141 = 43;
  v142 = 0xE100000000000000;
  sub_10003E5C8();
  v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v40 = v39;

  v135 = v38;
  v136 = v40;
  v143 = 95;
  v144 = 0xE100000000000000;
  v141 = 47;
  v142 = 0xE100000000000000;
  v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v43 = v42;

  v135 = v41;
  v136 = v43;

  v44 = String.count.getter();

  v45 = v44 & 3;
  if (v44 <= 0)
  {
    v45 = -(-v44 & 3);
  }

  if (v45)
  {
    v46._countAndFlagsBits = 61;
    v46._object = 0xE100000000000000;
    v47 = String.init(repeating:count:)(v46, 4 - v45);
    String.append(_:)(v47);
  }

  v48 = Data.init(base64Encoded:options:)();
  v50 = v49;

  v51 = v129;
  if (v50 >> 60 == 15)
  {

    sub_10009DAF4();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();
  }

  v120 = a2;
  v54 = v132;
  v55 = v122;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v55)
  {

    sub_10005CB30(v48, v50);
  }

  v119 = v48;
  v122 = v50;
  result = (*(v131 + 32))(v51, v19, v54);
  if (v25[2] < 2uLL)
  {
    goto LABEL_36;
  }

  v57 = v25[8];
  v56 = v25[9];
  v58 = v25[10];
  v59 = v25[11];

  v60 = static String._fromSubstring(_:)();
  v62 = v61;

  v135 = v60;
  v136 = v62;
  v143 = 45;
  v144 = 0xE100000000000000;
  v141 = 43;
  v142 = 0xE100000000000000;
  v63 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v65 = v64;

  v135 = v63;
  v136 = v65;
  v143 = 95;
  v144 = 0xE100000000000000;
  v141 = 47;
  v142 = 0xE100000000000000;
  v66 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v68 = v67;

  v135 = v66;
  v136 = v68;

  v69 = String.count.getter();

  v70 = v69 & 3;
  if (v69 <= 0)
  {
    v70 = -(-v69 & 3);
  }

  if (v70)
  {
    v71._countAndFlagsBits = 61;
    v71._object = 0xE100000000000000;
    v72 = String.init(repeating:count:)(v71, 4 - v70);
    String.append(_:)(v72);
  }

  v73 = Data.init(base64Encoded:options:)();
  v75 = v74;

  v76 = v121;
  v77 = v128;
  if (v75 >> 60 != 15)
  {
    v83 = v124;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v84 = v76;
    v85 = v75;
    v86 = v73;
    v87 = v129;
    v118 = v85;
    v135 = v132;
    v136 = v84;
    v137 = v145;
    v138 = v125;
    v139 = v77;
    v140 = v126;
    v88 = v84;
    v117 = type metadata accessor for JWS();
    result = (*(v127 + 32))(v87 + *(v117 + 68), v83, v88);
    if (v25[2] >= 3uLL)
    {
      v89 = v25[12];
      v90 = v25[13];
      v92 = v25[14];
      v91 = v25[15];

      v93 = static String._fromSubstring(_:)();
      v95 = v94;

      v135 = v93;
      v136 = v95;
      v143 = 45;
      v144 = 0xE100000000000000;
      v141 = 43;
      v142 = 0xE100000000000000;
      v135 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v136 = v96;
      v143 = 95;
      v144 = 0xE100000000000000;
      v141 = 47;
      v142 = 0xE100000000000000;
      v97 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v99 = v98;

      v135 = v97;
      v136 = v99;

      v100 = String.count.getter();

      v101 = v100 & 3;
      if (v100 <= 0)
      {
        v101 = -(-v100 & 3);
      }

      if (v101)
      {
        v102._countAndFlagsBits = 61;
        v102._object = 0xE100000000000000;
        v103 = String.init(repeating:count:)(v102, 4 - v101);
        String.append(_:)(v103);
      }

      v104 = HIBYTE(v95) & 0xF;
      if ((v95 & 0x2000000000000000) == 0)
      {
        v104 = v93 & 0xFFFFFFFFFFFFLL;
      }

      v105 = v86;
      if (v104)
      {
        v106 = Data.init(base64Encoded:options:)();
        v108 = v107;

        v109 = v118;
        if (v108 >> 60 != 15)
        {
          sub_10005CB30(v106, v108);

          sub_10005CB30(v119, v122);
          result = sub_10005CB30(v105, v109);
          v112 = v117;
          v113 = v129;
          v114 = (v129 + *(v117 + 72));
          *v114 = v93;
          v114[1] = v95;
          v115 = (v113 + *(v112 + 76));
          v116 = v120;
          *v115 = v123;
          v115[1] = v116;
          return result;
        }
      }

      else
      {

        v109 = v118;
      }

      sub_10009DAF4();
      swift_allocError();
      *v110 = 3;
      swift_willThrow();
      sub_10005CB30(v105, v109);
      sub_10005CB30(v119, v122);

      v79 = 1;
      v77 = v128;
      v80 = v129;
      v81 = v145;
      v82 = v132;
      v76 = v121;
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    return result;
  }

  sub_10009DAF4();
  swift_allocError();
  *v78 = 2;
  swift_willThrow();
  sub_10005CB30(v119, v122);

  v79 = 0;
  v80 = v129;
  v81 = v145;
  v82 = v132;
LABEL_31:
  result = (*(v131 + 8))(v80, v82);
  if (v79)
  {
    v135 = v82;
    v136 = v76;
    v137 = v81;
    v138 = v125;
    v139 = v77;
    v140 = v126;
    v111 = type metadata accessor for JWS();
    return (*(v127 + 8))(v80 + *(v111 + 68), v76);
  }

  return result;
}

unint64_t sub_10019C2F4()
{
  result = qword_10023F160;
  if (!qword_10023F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F160);
  }

  return result;
}

unint64_t sub_10019C364()
{
  result = qword_10023F168[0];
  if (!qword_10023F168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10023F168);
  }

  return result;
}

uint64_t sub_10019C3D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10019C46C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_BYTE *sub_10019C644(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((v11 + 7 + v14) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&result[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v16] = 0;
      }

      else if (v20)
      {
        result[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = (&result[v13] & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          v27 = (&result[v15] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v27 = a2 & 0x7FFFFFFF;
            v27[1] = 0;
          }

          else
          {
            v27[1] = a2 - 1;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *&result[v16] = v22;
    }

    else
    {
      *&result[v16] = v22;
    }
  }

  else if (v20)
  {
    result[v16] = v22;
  }

  return result;
}

uint64_t InAppPurchaseDetails.purchaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseDetails() + 28);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for InAppPurchaseDetails()
{
  result = qword_10023F2C8;
  if (!qword_10023F2C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InAppPurchaseDetails.subscriptionDuration.getter()
{
  v1 = (v0 + *(type metadata accessor for InAppPurchaseDetails() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InAppPurchaseDetails.init(price:quantity:currencyCode:purchaseDate:purchaseType:subscriptionDuration:offerType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v15 = type metadata accessor for InAppPurchaseDetails();
  v16 = v15[7];
  v17 = type metadata accessor for Date();
  result = (*(*(v17 - 8) + 32))(a9 + v16, a7, v17);
  *(a9 + v15[8]) = a8;
  v19 = (a9 + v15[9]);
  *v19 = a10;
  v19[1] = a11;
  *(a9 + v15[10]) = a12;
  return result;
}

uint64_t sub_10019CAF4(uint64_t a1)
{
  v2 = sub_10019D2F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019CB30(uint64_t a1)
{
  v2 = sub_10019D2F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10019CB6C()
{
  v1 = 0x62616D75736E6F63;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x75736E6F436E6F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10019CC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019DE7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10019CC2C(uint64_t a1)
{
  v2 = sub_10019D248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019CC68(uint64_t a1)
{
  v2 = sub_10019D248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019CCA4(uint64_t a1)
{
  v2 = sub_10019D398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019CCE0(uint64_t a1)
{
  v2 = sub_10019D398();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019CD1C(uint64_t a1)
{
  v2 = sub_10019D344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019CD58(uint64_t a1)
{
  v2 = sub_10019D344();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019CD94(uint64_t a1)
{
  v2 = sub_10019D29C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019CDD0(uint64_t a1)
{
  v2 = sub_10019D29C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InAppPurchaseDetails.InAppPurchaseType.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = sub_10000CDE0(&qword_10023F1F0, &qword_1001C7000);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  __chkstk_darwin(v3);
  v32 = &v26 - v5;
  v6 = sub_10000CDE0(&qword_10023F1F8, &qword_1001C7008);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v29 = &v26 - v8;
  v9 = sub_10000CDE0(&qword_10023F200, &qword_1001C7010);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = sub_10000CDE0(&qword_10023F208, &qword_1001C7018);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = sub_10000CDE0(&qword_10023F210, &qword_1001C7020);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10019D248();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_10019D2F0();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_10019D29C();
      v12 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_10019D344();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_10019D398();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_10019D248()
{
  result = qword_10023F218;
  if (!qword_10023F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F218);
  }

  return result;
}

unint64_t sub_10019D29C()
{
  result = qword_10023F220;
  if (!qword_10023F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F220);
  }

  return result;
}

unint64_t sub_10019D2F0()
{
  result = qword_10023F228;
  if (!qword_10023F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F228);
  }

  return result;
}

unint64_t sub_10019D344()
{
  result = qword_10023F230;
  if (!qword_10023F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F230);
  }

  return result;
}

unint64_t sub_10019D398()
{
  result = qword_10023F238;
  if (!qword_10023F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F238);
  }

  return result;
}

void *sub_10019D404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10019DFFC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10019D44C()
{
  v1 = *v0;
  v2 = 0x6563697270;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0x707954726566666FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x797469746E617571;
  if (v1 != 1)
  {
    v4 = 0x79636E6572727563;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10019D544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019EF44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10019D56C(uint64_t a1)
{
  v2 = sub_10019E63C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019D5A8(uint64_t a1)
{
  v2 = sub_10019E63C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InAppPurchaseDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023F240, &qword_1001C7028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10019E63C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *v3;
  v23 = *(v3 + 4);
  v21 = 0;
  type metadata accessor for Decimal(0);
  sub_100199AE4(&qword_10023AF98, type metadata accessor for Decimal);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 3);
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 4);
    v13 = *(v3 + 5);
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = type metadata accessor for InAppPurchaseDetails();
    v15 = v14[7];
    LOBYTE(v22) = 3;
    type metadata accessor for Date();
    sub_100199AE4(&qword_10023F000, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = *(v3 + v14[8]);
    v21 = 4;
    sub_10019E690();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = (v3 + v14[9]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v22) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v22) = *(v3 + v14[10]);
    v21 = 6;
    sub_100199668();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InAppPurchaseDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for Date();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000CDE0(&qword_10023F258, &qword_1001C7030);
  v29 = *(v31 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v31);
  v10 = &v27 - v9;
  v11 = type metadata accessor for InAppPurchaseDetails();
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v33 = a1;
  sub_10000DA7C(a1, v15);
  sub_10019E63C();
  v32 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(v33);
  }

  v27 = v7;
  v17 = v29;
  v18 = v30;
  type metadata accessor for Decimal(0);
  v38 = 0;
  sub_100199AE4(&qword_10023A6C0, type metadata accessor for Decimal);
  v19 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v14;
  *v14 = v34;
  *(v14 + 4) = v35;
  v37 = 1;
  *(v14 + 3) = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = 2;
  *(v14 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v14 + 5) = v21;
  v37 = 3;
  sub_100199AE4(&qword_10023F018, &type metadata accessor for Date);
  v22 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 32))(v20 + v11[7], v22, v4);
  v36 = 4;
  sub_10019E6E4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v20 + v11[8]) = v37;
  v37 = 5;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = (v20 + v11[9]);
  *v24 = v23;
  v24[1] = v25;
  v36 = 6;
  sub_100199B2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v17 + 8))(v32, v19);
  *(v20 + v11[10]) = v37;
  sub_1000E1A30(v20, v28);
  sub_10000DB58(v33);
  return sub_1000A0B90(v20);
}

uint64_t sub_10019DE7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x62616D75736E6F63 && a2 == 0xEA0000000000656CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75736E6F436E6F6ELL && a2 == 0xED0000656C62616DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001001CEA70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001CEA90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_10019DFFC(uint64_t *a1)
{
  v46 = sub_10000CDE0(&qword_10023F388, &qword_1001C76D8);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  __chkstk_darwin(v46);
  v49 = &v38 - v3;
  v47 = sub_10000CDE0(&qword_10023F390, &qword_1001C76E0);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v47);
  v48 = &v38 - v5;
  v6 = sub_10000CDE0(&qword_10023F398, &qword_1001C76E8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = sub_10000CDE0(&qword_10023F3A0, &qword_1001C76F0);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_10000CDE0(&qword_10023F3A8, &qword_1001C76F8);
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  sub_10000DA7C(a1, v20);
  sub_10019D248();
  v21 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_1001A5460();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_10019D344();
        v36 = v40;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_10019D398();
        v29 = v40;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          sub_10000DB58(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_10019D2F0();
      v35 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_10019D29C();
      v37 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = type metadata accessor for DecodingError();
  swift_allocError();
  v15 = v31;
  v32 = *(sub_10000CDE0(&qword_10023E930, &qword_1001C4C60) + 48);
  *v15 = &type metadata for InAppPurchaseDetails.InAppPurchaseType;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v30 - 8) + 104))(v15, enum case for DecodingError.typeMismatch(_:), v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_10000DB58(v51);
  return v15;
}

unint64_t sub_10019E63C()
{
  result = qword_10023F248;
  if (!qword_10023F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F248);
  }

  return result;
}

unint64_t sub_10019E690()
{
  result = qword_10023F250;
  if (!qword_10023F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F250);
  }

  return result;
}

unint64_t sub_10019E6E4()
{
  result = qword_10023F260;
  if (!qword_10023F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F260);
  }

  return result;
}

unint64_t sub_10019E73C()
{
  result = qword_10023F268;
  if (!qword_10023F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F268);
  }

  return result;
}

uint64_t sub_10019E7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10019E864(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10019E908()
{
  type metadata accessor for Decimal(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100079458(319, &qword_10023A190);
      if (v2 <= 0x3F)
      {
        sub_100079458(319, &qword_10023F090);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10019EA78()
{
  result = qword_10023F318;
  if (!qword_10023F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F318);
  }

  return result;
}

unint64_t sub_10019EAD0()
{
  result = qword_10023F320;
  if (!qword_10023F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F320);
  }

  return result;
}

unint64_t sub_10019EB28()
{
  result = qword_10023F328;
  if (!qword_10023F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F328);
  }

  return result;
}

unint64_t sub_10019EB80()
{
  result = qword_10023F330;
  if (!qword_10023F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F330);
  }

  return result;
}

unint64_t sub_10019EBD8()
{
  result = qword_10023F338;
  if (!qword_10023F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F338);
  }

  return result;
}

unint64_t sub_10019EC30()
{
  result = qword_10023F340;
  if (!qword_10023F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F340);
  }

  return result;
}

unint64_t sub_10019EC88()
{
  result = qword_10023F348;
  if (!qword_10023F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F348);
  }

  return result;
}

unint64_t sub_10019ECE0()
{
  result = qword_10023F350;
  if (!qword_10023F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F350);
  }

  return result;
}

unint64_t sub_10019ED38()
{
  result = qword_10023F358;
  if (!qword_10023F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F358);
  }

  return result;
}

unint64_t sub_10019ED90()
{
  result = qword_10023F360;
  if (!qword_10023F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F360);
  }

  return result;
}

unint64_t sub_10019EDE8()
{
  result = qword_10023F368;
  if (!qword_10023F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F368);
  }

  return result;
}

unint64_t sub_10019EE40()
{
  result = qword_10023F370;
  if (!qword_10023F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F370);
  }

  return result;
}

unint64_t sub_10019EE98()
{
  result = qword_10023F378;
  if (!qword_10023F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F378);
  }

  return result;
}

unint64_t sub_10019EEF0()
{
  result = qword_10023F380;
  if (!qword_10023F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F380);
  }

  return result;
}

uint64_t sub_10019EF44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001CEAB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

AttributionKitCommon::InteractionType_optional __swiftcall InteractionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100224260, v2);

  if (v3 == 1)
  {
    v4.value = AttributionKitCommon_InteractionType_click;
  }

  else
  {
    v4.value = AttributionKitCommon_InteractionType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t InteractionType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6B63696C63;
  }

  else
  {
    return 2003134838;
  }
}

unint64_t sub_10019F230()
{
  result = qword_10023F3B0;
  if (!qword_10023F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F3B0);
  }

  return result;
}

uint64_t sub_10019F284@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100224260, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_10019F3A4()
{
  result = qword_10023F3B8;
  if (!qword_10023F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F3B8);
  }

  return result;
}

uint64_t sub_10019F3F8()
{
  v0 = objc_allocWithZone(NSXPCConnection);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_;
  v5 = [v3 interfaceWithProtocol:v4];

  [v2 setExportedInterface:v5];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  [v2 setExportedObject:v6];

  v7 = &OBJC_PROTOCOL____TtP20AttributionKitCommon31ImpressionIntakeServiceProtocol_;
  v8 = [v3 interfaceWithProtocol:v7];

  [v2 setRemoteObjectInterface:v8];
  v16 = sub_10017E9F0;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_1002268D8;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler:v9];
  _Block_release(v9);
  v16 = sub_10017E9FC;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_100226900;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler:v10];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for ImpressionIntakeServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_10023FF08 = result;
  return result;
}

uint64_t sub_10019F69C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DevelopmentPostbackConfiguration.postbackURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DevelopmentPostbackConfiguration() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DevelopmentPostbackConfiguration()
{
  result = qword_10023F528;
  if (!qword_10023F528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DevelopmentPostbackConfiguration.marketplaceID.getter()
{
  v1 = (v0 + *(type metadata accessor for DevelopmentPostbackConfiguration() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DevelopmentPostbackConfiguration.countryCode.getter()
{
  v1 = (v0 + *(type metadata accessor for DevelopmentPostbackConfiguration() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DevelopmentPostbackConfiguration.measurementWindowConfigurations.getter()
{
  v1 = *(v0 + *(type metadata accessor for DevelopmentPostbackConfiguration() + 44));
}

uint64_t DevelopmentPostbackConfiguration.conversionTag.getter()
{
  v1 = (v0 + *(type metadata accessor for DevelopmentPostbackConfiguration() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t DevelopmentPostbackConfiguration.init(bundleID:postbackURL:marketplaceID:sourceID:countryCode:interactionType:conversionType:measurementWindowConfigurations:conversionTag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v19 = type metadata accessor for DevelopmentPostbackConfiguration();
  v20 = v19[5];
  v21 = type metadata accessor for URL();
  result = (*(*(v21 - 8) + 32))(&a9[v20], a3, v21);
  v23 = &a9[v19[6]];
  *v23 = a4;
  *(v23 + 1) = a5;
  *&a9[v19[7]] = a6;
  v24 = &a9[v19[8]];
  *v24 = a7;
  *(v24 + 1) = a8;
  a9[v19[9]] = a10 & 1;
  a9[v19[10]] = a11;
  *&a9[v19[11]] = a12;
  v25 = &a9[v19[12]];
  *v25 = a13;
  v25[8] = a14 & 1;
  return result;
}

uint64_t sub_10019F9FC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4449656C646E7562;
    v6 = 0x6C7074656B72616DLL;
    if (a1 != 2)
    {
      v6 = 0x4449656372756F73;
    }

    if (a1)
    {
      v5 = 0x6B63616274736F70;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x69737265766E6F63;
    v2 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v2 = 0x69737265766E6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x437972746E756F63;
    if (a1 != 4)
    {
      v3 = 0x7463617265746E69;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10019FB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A0C0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10019FB8C(uint64_t a1)
{
  v2 = sub_10019FF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019FBC8(uint64_t a1)
{
  v2 = sub_10019FF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DevelopmentPostbackConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023F480, &qword_1001C7880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10019FF7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v26) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for DevelopmentPostbackConfiguration();
    v14 = v13[5];
    LOBYTE(v26) = 1;
    type metadata accessor for URL();
    sub_1001A0670(&qword_10023F490);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v26) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + v13[7]);
    LOBYTE(v26) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = (v3 + v13[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v26) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v26) = *(v3 + v13[9]);
    v27 = 5;
    sub_10018D5FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v26) = *(v3 + v13[10]);
    v27 = 6;
    sub_100047180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = *(v3 + v13[11]);
    v27 = 7;
    sub_10000CDE0(&qword_10023F498, &qword_1001C7888);
    sub_1001A06B4(&qword_10023F4A0, sub_10019FFD0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v3 + v13[12];
    v23 = *v22;
    v24 = v22[8];
    LOBYTE(v26) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10019FF7C()
{
  result = qword_10023F488;
  if (!qword_10023F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F488);
  }

  return result;
}

unint64_t sub_10019FFD0()
{
  result = qword_10023F4A8;
  if (!qword_10023F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F4A8);
  }

  return result;
}

uint64_t DevelopmentPostbackConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10000CDE0(&qword_10023F4B0, &qword_1001C7890);
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v40);
  v10 = &v36 - v9;
  v11 = type metadata accessor for DevelopmentPostbackConfiguration();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v42 = a1;
  sub_10000DA7C(a1, v16);
  sub_10019FF7C();
  v41 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(v42);
  }

  v17 = v7;
  v18 = v38;
  v19 = v39;
  v36 = v11;
  LOBYTE(v43) = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v20;
  LOBYTE(v43) = 1;
  sub_1001A0670(&qword_10023F4B8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v36;
  (*(v19 + 32))(v14 + *(v36 + 20), v17, v4);
  LOBYTE(v43) = 2;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = (v14 + v21[6]);
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v43) = 3;
  v25 = v21;
  v26 = v18;
  *(v14 + v25[7]) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v43) = 4;
  v27 = v40;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = (v14 + v25[8]);
  *v29 = v28;
  v29[1] = v30;
  v44 = 5;
  sub_10018DDDC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + v25[9]) = v43;
  v44 = 6;
  sub_1000470F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + v25[10]) = v43;
  sub_10000CDE0(&qword_10023F498, &qword_1001C7888);
  v44 = 7;
  sub_1001A06B4(&qword_10023F4C0, sub_1001A072C);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + v25[11]) = v43;
  LOBYTE(v43) = 8;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v25) = v32;
  (*(v26 + 8))(v41, v27);
  v33 = v37;
  v34 = v14 + *(v36 + 48);
  *v34 = v31;
  v34[8] = v25 & 1;
  sub_1001A0780(v14, v33);
  sub_10000DB58(v42);
  return sub_100028928(v14);
}

uint64_t sub_1001A0670(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A06B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(&qword_10023F498, &qword_1001C7888);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001A072C()
{
  result = qword_10023F4C8;
  if (!qword_10023F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F4C8);
  }

  return result;
}

uint64_t sub_1001A0780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DevelopmentPostbackConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A0828(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001A08E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001A098C()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_1001A0AA4(319, &unk_10023F538, &type metadata for MeasurementWindowConfiguration, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1001A0AA4(319, &qword_10023A198, &type metadata for UInt64, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001A0AA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1001A0B08()
{
  result = qword_10023F588;
  if (!qword_10023F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F588);
  }

  return result;
}

unint64_t sub_1001A0B60()
{
  result = qword_10023F590;
  if (!qword_10023F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F590);
  }

  return result;
}

unint64_t sub_1001A0BB8()
{
  result = qword_10023F598;
  if (!qword_10023F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F598);
  }

  return result;
}

uint64_t sub_1001A0C0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEB000000004C5255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xED00004449656361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657079546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001001CEB10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void sub_1001A0F2C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100226AD8;
  v9 = _Block_copy(v10);

  [v7 updateConversionValue:isa reply:v9];
  _Block_release(v9);
}

uint64_t PostbackRequest.init(fineConversionValue:coarseConversionValue:lockPostback:conversionTypes:conversionTag:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 9) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t sub_1001A1050()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100181A08;
  v2 = *(v0 + 16);

  return sub_100180604(v2, sub_1001A0F2C, 0);
}

unint64_t sub_1001A1148()
{
  v1 = 0x74736F506B636F6CLL;
  if (*v0 != 2)
  {
    v1 = 0x69737265766E6F63;
  }

  v2 = 0xD000000000000013;
  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001A1208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A15AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001A1230(uint64_t a1)
{
  v2 = sub_1001A14F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A126C(uint64_t a1)
{
  v2 = sub_1001A14F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PostbackRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023F5A0, &qword_1001C7A58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001A14F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v21 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v20 = *(v3 + 8);
    v19 = 1;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 9);
    v18 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[2];
    v16[15] = 3;
    sub_10000CDE0(&unk_10023D8E8, &qword_1001C7A60);
    sub_1001A1C38(&qword_10023F5B0, sub_100047180);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v3[3];
    v14 = v3[4];
    v16[14] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1001A14F8()
{
  result = qword_10023F5A8;
  if (!qword_10023F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F5A8);
  }

  return result;
}

double PostbackRequest.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001A1778(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1001A15AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001001CE910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001001CE930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736F506B636F6CLL && a2 == 0xEC0000006B636162 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEF73657079546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1001A1778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023F5D0, &unk_1001C7C28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001A14F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 1;
  sub_100070E98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v26;
  v24 = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10000CDE0(&unk_10023D8E8, &qword_1001C7A60);
  v23 = 3;
  sub_1001A1C38(&qword_10023F5D8, sub_1000470F4);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v21;
  v22 = 4;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v9;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_10000DB58(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 9) = v20 & 1;
  *(a2 + 16) = v19;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_1001A1A58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001A1AB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1001A1B34()
{
  result = qword_10023F5B8;
  if (!qword_10023F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F5B8);
  }

  return result;
}

unint64_t sub_1001A1B8C()
{
  result = qword_10023F5C0;
  if (!qword_10023F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F5C0);
  }

  return result;
}

unint64_t sub_1001A1BE4()
{
  result = qword_10023F5C8;
  if (!qword_10023F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F5C8);
  }

  return result;
}

uint64_t sub_1001A1C38(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(&unk_10023D8E8, &qword_1001C7A60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A1CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Result.init<>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for ServiceResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *a1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a3, a1, a2);
  }

  sub_100080044();
  type metadata accessor for Result();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001A1DCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001A1E98(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1001A1EC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_1001A1F38(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return static PurchaseIntakeOfferType.__derived_enum_equals(_:_:)(*a1, *a2);
}

Swift::Int sub_1001A1F50(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return PurchaseIntakeOfferType.hashValue.getter(*v1);
}

void sub_1001A1F64(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  PurchaseIntakeOfferType.hash(into:)(a1, *v2);
}

Swift::Int sub_1001A1F78(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  PurchaseIntakeOfferType.hash(into:)(v8, *v2);
  return Hasher._finalize()();
}

uint64_t sub_1001A1FC4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1001A1E98(*v1);
}

uint64_t sub_1001A1FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1001A1DCC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1001A200C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1001A34F8();
  *a2 = result;
  return result;
}

uint64_t sub_1001A2040(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001A2094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001A20F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1001A1EC8(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1001A212C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = static MessageRegistration.__derived_enum_equals(_:_:)();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1001A2164(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001A21B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001A220C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001A2260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t ServiceResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for ServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v47 = v7;
  v8 = type metadata accessor for KeyedEncodingContainer();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v48 = v40 - v10;
  v11 = type metadata accessor for ServiceResult.SuccessCodingKeys();
  v12 = swift_getWitnessTable();
  v42 = v11;
  v40[1] = v12;
  v13 = type metadata accessor for KeyedEncodingContainer();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  v15 = __chkstk_darwin(v13);
  v41 = v40 - v16;
  v43 = *(v4 - 8);
  v17 = *(v43 + 64);
  v18 = __chkstk_darwin(v15);
  v40[0] = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v6;
  v52 = v4;
  type metadata accessor for ServiceResult.CodingKeys();
  swift_getWitnessTable();
  v24 = type metadata accessor for KeyedEncodingContainer();
  v54 = *(v24 - 8);
  v55 = v24;
  v25 = *(v54 + 64);
  __chkstk_darwin(v24);
  v27 = v40 - v26;
  v28 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v20 + 16))(v23, v53, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v23;
    v58 = 1;
    v30 = v48;
    v31 = v55;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v57 = v29;
    sub_1001A2810();
    v32 = v50;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v49 + 8))(v30, v32);
    return (*(v54 + 8))(v27, v31);
  }

  else
  {
    v34 = v43;
    v35 = v40[0];
    v36 = v52;
    (*(v43 + 32))(v40[0], v23, v52);
    v56 = 0;
    v37 = v41;
    v38 = v55;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v45;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v44 + 8))(v37, v39);
    (*(v34 + 8))(v35, v36);
    return (*(v54 + 8))(v27, v38);
  }
}

unint64_t sub_1001A2810()
{
  result = qword_10023F5E0;
  if (!qword_10023F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F5E0);
  }

  return result;
}

uint64_t ServiceResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a1;
  v70 = a4;
  v6 = type metadata accessor for ServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v67 = v6;
  v60 = type metadata accessor for KeyedDecodingContainer();
  v59 = *(v60 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v60);
  v68 = &v55 - v8;
  v9 = type metadata accessor for ServiceResult.SuccessCodingKeys();
  v63 = swift_getWitnessTable();
  v64 = v9;
  v58 = type metadata accessor for KeyedDecodingContainer();
  v57 = *(v58 - 8);
  v10 = *(v57 + 64);
  __chkstk_darwin(v58);
  v65 = &v55 - v11;
  type metadata accessor for ServiceResult.CodingKeys();
  v73 = swift_getWitnessTable();
  v12 = type metadata accessor for KeyedDecodingContainer();
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v55 - v15;
  v61 = a2;
  v62 = a3;
  v17 = type metadata accessor for ServiceResult();
  v69 = *(v17 - 8);
  v18 = *(v69 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v55 - v23;
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  v27 = v79[4];
  sub_10000DA7C(v79, v79[3]);
  v28 = v74;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v28)
  {
    v74 = v24;
    v56 = v21;
    v73 = v26;
    v29 = v71;
    v30 = v16;
    *&v75 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v77 = ArraySlice.init<A>(_:)();
    *(&v77 + 1) = v31;
    *&v78 = v32;
    *(&v78 + 1) = v33;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v34 = v75;
    if (v75 == 2 || (v55 = v77, v75 = v77, v76 = v78, (Collection.isEmpty.getter() & 1) == 0))
    {
      v43 = type metadata accessor for DecodingError();
      swift_allocError();
      v45 = v44;
      v46 = v29;
      v47 = *(sub_10000CDE0(&qword_10023E930, &qword_1001C4C60) + 48);
      *v45 = v17;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v43 - 8) + 104))(v45, enum case for DecodingError.typeMismatch(_:), v43);
      swift_willThrow();
      (*(v72 + 8))(v16, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        LOBYTE(v75) = 1;
        v35 = v68;
        v36 = v30;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v37 = v70;
        v38 = v72;
        sub_1001A3028();
        v39 = v60;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v59 + 8))(v35, v39);
        (*(v38 + 8))(v36, v29);
        swift_unknownObjectRelease();
        v40 = v56;
        *v56 = v75;
        swift_storeEnumTagMultiPayload();
        v41 = *(v69 + 32);
        v42 = v73;
        v41(v73, v40, v17);
      }

      else
      {
        LOBYTE(v75) = 0;
        v48 = v65;
        v49 = v30;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v50 = v72;
        v51 = v69;
        v52 = v58;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v57 + 8))(v48, v52);
        (*(v50 + 8))(v49, v29);
        swift_unknownObjectRelease();
        v54 = v74;
        swift_storeEnumTagMultiPayload();
        v41 = *(v51 + 32);
        v42 = v73;
        v41(v73, v54, v17);
        v37 = v70;
      }

      v41(v37, v42, v17);
    }
  }

  return sub_10000DB58(v79);
}

unint64_t sub_1001A3028()
{
  result = qword_10023F5E8[0];
  if (!qword_10023F5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10023F5E8);
  }

  return result;
}

uint64_t sub_1001A30C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001A312C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1001A3240(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1001A353C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v8 = *a1;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = a6;
  v9 = _Block_copy(v10);

  [v8 *a7];
  _Block_release(v9);
}

uint64_t sub_1001A3610()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100180A28(sub_1001A3528, 0);
}

uint64_t sub_1001A371C()
{
  if (qword_10023E528 != -1)
  {
    swift_once();
  }

  if (qword_10023FDA0)
  {
    sub_10018B0D0(sub_1001A3514);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A37F0(uint64_t a1)
{
  v2 = sub_1001A397C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A382C(uint64_t a1)
{
  v2 = sub_1001A397C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WoofRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023F7F0, &qword_1001C8070);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001A397C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1001A397C()
{
  result = qword_10023F7F8;
  if (!qword_10023F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F7F8);
  }

  return result;
}

unint64_t sub_1001A39F4()
{
  result = qword_10023F800;
  if (!qword_10023F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F800);
  }

  return result;
}

unint64_t sub_1001A3A4C()
{
  result = qword_10023F808;
  if (!qword_10023F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F808);
  }

  return result;
}

uint64_t sub_1001A3AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001A3AD4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100226DF0;
  v9 = _Block_copy(v10);

  [v7 createDevelopmentPostbacksWithConfigurationData:isa reply:v9];
  _Block_release(v9);
}

uint64_t sub_1001A3BF4()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001A3CE4;

  return sub_100180DCC(sub_1001A3AC0, 0);
}

uint64_t sub_1001A3CE4(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1001A3E0C()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = sub_1001A41F4;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1001A3F40;

  return sub_1001810F4(sub_1001889A0, v3);
}

uint64_t sub_1001A3F40()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1001A40C0;
  }

  else
  {
    v3 = sub_1001A4054;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A4054()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001A40C0()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];
  v4 = v0[5];

  return v3();
}

void sub_1001A412C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[4] = a4;
  v9[5] = a5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001A9410;
  v9[3] = &unk_100226E40;
  v8 = _Block_copy(v9);

  [a1 setDeveloperModeEnabled:a6 & 1 reply:v8];
  _Block_release(v8);
}

uint64_t DeveloperModeRequest.retrieveDeveloperPostbackURL(forBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1001A4220, 0, 0);
}

uint64_t sub_1001A4220()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = sub_1001A4584;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1001A4360;
  v6 = v0[2];

  return sub_10018130C(v6, sub_100188BBC, v4);
}

uint64_t sub_1001A4360()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10018814C, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

void sub_1001A44A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100226E18;
  v9 = _Block_copy(v10);

  [a1 retrieveDeveloperPostbackURLForBundleID:v8 reply:v9];
  _Block_release(v9);
}

void sub_1001A4584(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_1001A44A8(a1, a2, a3, a4, a5);
}

uint64_t sub_1001A45AC()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100181A08;
  v2 = *(v0 + 16);

  return sub_100181698(v2, sub_1001A3AD4, 0);
}

uint64_t sub_1001A46C0()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000152E0;

  return sub_1001810F4(sub_1001A3BB0, 0);
}

uint64_t sub_1001A47CC()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_1001810F4(sub_1001A3BC4, 0);
}

uint64_t sub_1001A48BC(uint64_t a1)
{
  v2 = sub_1001A4A48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A48F8(uint64_t a1)
{
  v2 = sub_1001A4A48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DeveloperModeRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023F810, &qword_1001C81D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001A4A48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1001A4A48()
{
  result = qword_10023F818;
  if (!qword_10023F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F818);
  }

  return result;
}

unint64_t sub_1001A4AC0()
{
  result = qword_10023F820;
  if (!qword_10023F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F820);
  }

  return result;
}

unint64_t sub_1001A4B18()
{
  result = qword_10023F828;
  if (!qword_10023F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F828);
  }

  return result;
}

uint64_t sub_1001A4B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static XPCClient.interface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];

  return v0;
}

id XPCClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCClient.init()()
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

void _s20AttributionKitCommon9XPCClientC14handleMessagesyy10Foundation4DataVF_0()
{
  v0 = type metadata accessor for PropertyListDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10000CDE0(&qword_10023E868, &unk_1001C8330);
  sub_1001A5244();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v11 = v22;
  v12 = v22[2];
  if (v12)
  {
    v13 = 0;
    v14 = v22 + 5;
    while (v13 < *(v11 + 16))
    {
      v17 = *v14;
      if (*v14)
      {
        v15 = *(v14 - 1);
        sub_10000CDE0(&qword_10023D638, qword_1001C8340);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1001B93B0;
        *(v16 + 56) = &type metadata for String;
        *(v16 + 32) = v15;
        *(v16 + 40) = v17;

        print(_:separator:terminator:)();
      }

      else
      {
        if (qword_10023E548 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_10000DAC0(v18, static Logger.xpc);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Connection established", v21, 2u);
        }
      }

      ++v13;
      v14 += 2;
      if (v12 == v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    swift_once();
    v3 = type metadata accessor for Logger();
    sub_10000DAC0(v3, static Logger.xpc);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
      v8 = String.init<A>(describing:)();
      v10 = sub_10017AD04(v8, v9, &v22);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error decoding XPC client message: %{public}s", v6, 0xCu);
      sub_10000DB58(v7);
    }

    else
    {
    }
  }

  else
  {
LABEL_15:
  }
}

uint64_t type metadata accessor for XPCClient()
{
  result = qword_10023F860;
  if (!qword_10023F860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A51B4()
{
  result = type metadata accessor for UUID();
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

unint64_t sub_1001A5244()
{
  result = qword_10023F870;
  if (!qword_10023F870)
  {
    sub_10000CCC0(&qword_10023E868, &unk_1001C8330);
    sub_1001A52C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F870);
  }

  return result;
}

unint64_t sub_1001A52C8()
{
  result = qword_10023F878;
  if (!qword_10023F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F878);
  }

  return result;
}

Swift::Bool __swiftcall isTestingEnabled()()
{
  v2[3] = &type metadata for FeatureFlag;
  v2[4] = sub_10017EEFC();
  v0 = isFeatureEnabled(_:)();
  sub_10000DB58(v2);
  return v0 & 1;
}

unint64_t sub_1001A5380()
{
  result = qword_10023F880;
  if (!qword_10023F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F880);
  }

  return result;
}

BOOL sub_1001A53FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1001A542C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A5460()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A5494(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6165627472616568;
      break;
    case 2:
      result = 0x6F68747541746F6ELL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD00000000000002ELL;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001A56A8(uint64_t a1)
{
  v2 = sub_1001A6CF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A56E4(uint64_t a1)
{
  v2 = sub_1001A6CF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5720(uint64_t a1)
{
  v2 = sub_1001A6CA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A575C(uint64_t a1)
{
  v2 = sub_1001A6CA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A57A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A71F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001A57C8(uint64_t a1)
{
  v2 = sub_1001A6C50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5804(uint64_t a1)
{
  v2 = sub_1001A6C50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5840(uint64_t a1)
{
  v2 = sub_1001A6E48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A587C(uint64_t a1)
{
  v2 = sub_1001A6E48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A58B8(uint64_t a1)
{
  v2 = sub_1001A6DA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A58F4(uint64_t a1)
{
  v2 = sub_1001A6DA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5930(uint64_t a1)
{
  v2 = sub_1001A6D4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A596C(uint64_t a1)
{
  v2 = sub_1001A6D4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A59A8(uint64_t a1)
{
  v2 = sub_1001A6FEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A59E4(uint64_t a1)
{
  v2 = sub_1001A6FEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5A20(uint64_t a1)
{
  v2 = sub_1001A70E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5A5C(uint64_t a1)
{
  v2 = sub_1001A70E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5A98(uint64_t a1)
{
  v2 = sub_1001A6F44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5AD4(uint64_t a1)
{
  v2 = sub_1001A6F44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5B10(uint64_t a1)
{
  v2 = sub_1001A6DF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5B4C(uint64_t a1)
{
  v2 = sub_1001A6DF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5B88(uint64_t a1)
{
  v2 = sub_1001A6EF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5BC4(uint64_t a1)
{
  v2 = sub_1001A6EF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5C00(uint64_t a1)
{
  v2 = sub_1001A6E9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5C3C(uint64_t a1)
{
  v2 = sub_1001A6E9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5C78(uint64_t a1)
{
  v2 = sub_1001A6F98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5CB4(uint64_t a1)
{
  v2 = sub_1001A6F98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5CF0(uint64_t a1)
{
  v2 = sub_1001A7094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5D2C(uint64_t a1)
{
  v2 = sub_1001A7094();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5D68(uint64_t a1)
{
  v2 = sub_1001A7040();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5DA4(uint64_t a1)
{
  v2 = sub_1001A7040();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5DE0(uint64_t a1)
{
  v2 = sub_1001A713C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5E1C(uint64_t a1)
{
  v2 = sub_1001A713C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AttributionKitError.encode(to:)(void *a1, uint64_t a2)
{
  v109 = a2;
  v3 = sub_10000CDE0(&qword_10023F888, &qword_1001C8410);
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  __chkstk_darwin(v3);
  v106 = &v67 - v5;
  v6 = sub_10000CDE0(&qword_10023F890, &qword_1001C8418);
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  __chkstk_darwin(v6);
  v103 = &v67 - v8;
  v9 = sub_10000CDE0(&qword_10023F898, &qword_1001C8420);
  v101 = *(v9 - 8);
  v102 = v9;
  v10 = *(v101 + 64);
  __chkstk_darwin(v9);
  v100 = &v67 - v11;
  v12 = sub_10000CDE0(&qword_10023F8A0, &qword_1001C8428);
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = *(v98 + 64);
  __chkstk_darwin(v12);
  v97 = &v67 - v14;
  v15 = sub_10000CDE0(&qword_10023F8A8, &qword_1001C8430);
  v95 = *(v15 - 8);
  v96 = v15;
  v16 = *(v95 + 64);
  __chkstk_darwin(v15);
  v94 = &v67 - v17;
  v93 = sub_10000CDE0(&qword_10023F8B0, &qword_1001C8438);
  v92 = *(v93 - 8);
  v18 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v67 - v19;
  v90 = sub_10000CDE0(&qword_10023F8B8, &qword_1001C8440);
  v89 = *(v90 - 8);
  v20 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v67 - v21;
  v87 = sub_10000CDE0(&qword_10023F8C0, &qword_1001C8448);
  v86 = *(v87 - 8);
  v22 = *(v86 + 64);
  __chkstk_darwin(v87);
  v85 = &v67 - v23;
  v84 = sub_10000CDE0(&qword_10023F8C8, &qword_1001C8450);
  v83 = *(v84 - 8);
  v24 = *(v83 + 64);
  __chkstk_darwin(v84);
  v82 = &v67 - v25;
  v81 = sub_10000CDE0(&qword_10023F8D0, &qword_1001C8458);
  v80 = *(v81 - 8);
  v26 = *(v80 + 64);
  __chkstk_darwin(v81);
  v79 = &v67 - v27;
  v78 = sub_10000CDE0(&qword_10023F8D8, &qword_1001C8460);
  v77 = *(v78 - 8);
  v28 = *(v77 + 64);
  __chkstk_darwin(v78);
  v76 = &v67 - v29;
  v75 = sub_10000CDE0(&qword_10023F8E0, &qword_1001C8468);
  v74 = *(v75 - 8);
  v30 = *(v74 + 64);
  __chkstk_darwin(v75);
  v73 = &v67 - v31;
  v72 = sub_10000CDE0(&qword_10023F8E8, &qword_1001C8470);
  v71 = *(v72 - 8);
  v32 = *(v71 + 64);
  __chkstk_darwin(v72);
  v70 = &v67 - v33;
  v34 = sub_10000CDE0(&qword_10023F8F0, &qword_1001C8478);
  v69 = *(v34 - 8);
  v35 = *(v69 + 64);
  __chkstk_darwin(v34);
  v37 = &v67 - v36;
  v38 = sub_10000CDE0(&qword_10023F8F8, &qword_1001C8480);
  v68 = *(v38 - 8);
  v39 = *(v68 + 64);
  __chkstk_darwin(v38);
  v41 = &v67 - v40;
  v111 = sub_10000CDE0(&qword_10023F900, &qword_1001C8488);
  v42 = *(v111 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v111);
  v45 = &v67 - v44;
  v46 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001A6C50();
  v110 = v45;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v47 = (v42 + 8);
  switch(v109)
  {
    case 1:
      v112[2] = 1;
      sub_1001A70E8();
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v69 + 8))(v37, v34);
      goto LABEL_19;
    case 2:
      v112[3] = 2;
      sub_1001A7094();
      v61 = v70;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = *(v71 + 8);
      v58 = v61;
      v59 = &v104;
      goto LABEL_18;
    case 3:
      v112[4] = 3;
      sub_1001A7040();
      v62 = v73;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = *(v74 + 8);
      v58 = v62;
      v59 = &v107;
      goto LABEL_18;
    case 4:
      v112[5] = 4;
      sub_1001A6FEC();
      v56 = v76;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = *(v77 + 8);
      v58 = v56;
      v59 = &v110;
      goto LABEL_18;
    case 5:
      v112[6] = 5;
      sub_1001A6F98();
      v64 = v79;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = *(v80 + 8);
      v58 = v64;
      v59 = v112;
      goto LABEL_18;
    case 6:
      v112[7] = 6;
      sub_1001A6F44();
      v65 = v82;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = *(v83 + 8);
      v58 = v65;
      v59 = v113;
      goto LABEL_18;
    case 7:
      v113[0] = 7;
      sub_1001A6EF0();
      v63 = v85;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = *(v86 + 8);
      v58 = v63;
      v59 = &v114;
      goto LABEL_18;
    case 8:
      v113[1] = 8;
      sub_1001A6E9C();
      v66 = v88;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = *(v89 + 8);
      v58 = v66;
      v59 = &v115;
LABEL_18:
      v57(v58, *(v59 - 32));
      goto LABEL_19;
    case 9:
      v113[2] = 9;
      sub_1001A6E48();
      v60 = v91;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v92 + 8))(v60, v93);
      goto LABEL_19;
    case 10:
      v113[3] = 10;
      sub_1001A6DF4();
      v51 = v94;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v95;
      v54 = v96;
      goto LABEL_16;
    case 11:
      v113[4] = 11;
      sub_1001A6DA0();
      v51 = v97;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v98;
      v54 = v99;
      goto LABEL_16;
    case 12:
      v113[5] = 12;
      sub_1001A6D4C();
      v51 = v100;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v101;
      v54 = v102;
      goto LABEL_16;
    case 13:
      v113[6] = 13;
      sub_1001A6CF8();
      v51 = v103;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v104;
      v54 = v105;
      goto LABEL_16;
    case 14:
      v113[7] = 14;
      sub_1001A6CA4();
      v51 = v106;
      v53 = v110;
      v52 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v107;
      v54 = v108;
LABEL_16:
      (*(v55 + 8))(v51, v54);
LABEL_19:
      result = (*v47)(v53, v52);
      break;
    default:
      v112[1] = 0;
      sub_1001A713C();
      v48 = v110;
      v49 = v111;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v68 + 8))(v41, v38);
      result = (*v47)(v48, v49);
      break;
  }

  return result;
}

unint64_t sub_1001A6C50()
{
  result = qword_10023F908;
  if (!qword_10023F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F908);
  }

  return result;
}

unint64_t sub_1001A6CA4()
{
  result = qword_10023F910;
  if (!qword_10023F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F910);
  }

  return result;
}

unint64_t sub_1001A6CF8()
{
  result = qword_10023F918;
  if (!qword_10023F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F918);
  }

  return result;
}

unint64_t sub_1001A6D4C()
{
  result = qword_10023F920;
  if (!qword_10023F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F920);
  }

  return result;
}

unint64_t sub_1001A6DA0()
{
  result = qword_10023F928;
  if (!qword_10023F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F928);
  }

  return result;
}

unint64_t sub_1001A6DF4()
{
  result = qword_10023F930;
  if (!qword_10023F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F930);
  }

  return result;
}

unint64_t sub_1001A6E48()
{
  result = qword_10023F938;
  if (!qword_10023F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F938);
  }

  return result;
}

unint64_t sub_1001A6E9C()
{
  result = qword_10023F940;
  if (!qword_10023F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F940);
  }

  return result;
}

unint64_t sub_1001A6EF0()
{
  result = qword_10023F948;
  if (!qword_10023F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F948);
  }

  return result;
}

unint64_t sub_1001A6F44()
{
  result = qword_10023F950;
  if (!qword_10023F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F950);
  }

  return result;
}

unint64_t sub_1001A6F98()
{
  result = qword_10023F958;
  if (!qword_10023F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F958);
  }

  return result;
}

unint64_t sub_1001A6FEC()
{
  result = qword_10023F960;
  if (!qword_10023F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F960);
  }

  return result;
}

unint64_t sub_1001A7040()
{
  result = qword_10023F968;
  if (!qword_10023F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F968);
  }

  return result;
}

unint64_t sub_1001A7094()
{
  result = qword_10023F970;
  if (!qword_10023F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F970);
  }

  return result;
}

unint64_t sub_1001A70E8()
{
  result = qword_10023F978;
  if (!qword_10023F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F978);
  }

  return result;
}

unint64_t sub_1001A713C()
{
  result = qword_10023F980;
  if (!qword_10023F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F980);
  }

  return result;
}

uint64_t sub_1001A71A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001A7694(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001A71F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6165627472616568 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F68747541746F6ELL && a2 == 0xED000064657A6972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001001CEBB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001001CEBD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001001CEBF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001001CEC10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001001CEC30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001001CEC50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001001CEC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001CEC90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001001CECB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000002ELL && 0x80000001001CECD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001CED00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001001CED20 == a2)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1001A7694(uint64_t *a1)
{
  v111 = sub_10000CDE0(&qword_10023FA98, &qword_1001C92B0);
  v97 = *(v111 - 8);
  v2 = *(v97 + 64);
  __chkstk_darwin(v111);
  v107 = &v66 - v3;
  v4 = sub_10000CDE0(&qword_10023FAA0, &qword_1001C92B8);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  __chkstk_darwin(v4);
  v106 = &v66 - v6;
  v94 = sub_10000CDE0(&qword_10023FAA8, &qword_1001C92C0);
  v93 = *(v94 - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin(v94);
  v105 = &v66 - v8;
  v92 = sub_10000CDE0(&qword_10023FAB0, &qword_1001C92C8);
  v91 = *(v92 - 8);
  v9 = *(v91 + 64);
  __chkstk_darwin(v92);
  v104 = &v66 - v10;
  v90 = sub_10000CDE0(&qword_10023FAB8, &qword_1001C92D0);
  v89 = *(v90 - 8);
  v11 = *(v89 + 64);
  __chkstk_darwin(v90);
  v103 = &v66 - v12;
  v88 = sub_10000CDE0(&qword_10023FAC0, &qword_1001C92D8);
  v87 = *(v88 - 8);
  v13 = *(v87 + 64);
  __chkstk_darwin(v88);
  v102 = &v66 - v14;
  v86 = sub_10000CDE0(&qword_10023FAC8, &qword_1001C92E0);
  v85 = *(v86 - 8);
  v15 = *(v85 + 64);
  __chkstk_darwin(v86);
  v101 = &v66 - v16;
  v84 = sub_10000CDE0(&qword_10023FAD0, &qword_1001C92E8);
  v83 = *(v84 - 8);
  v17 = *(v83 + 64);
  __chkstk_darwin(v84);
  v100 = &v66 - v18;
  v82 = sub_10000CDE0(&qword_10023FAD8, &qword_1001C92F0);
  v81 = *(v82 - 8);
  v19 = *(v81 + 64);
  __chkstk_darwin(v82);
  v110 = &v66 - v20;
  v79 = sub_10000CDE0(&qword_10023FAE0, &qword_1001C92F8);
  v80 = *(v79 - 8);
  v21 = *(v80 + 64);
  __chkstk_darwin(v79);
  v109 = &v66 - v22;
  v78 = sub_10000CDE0(&qword_10023FAE8, &qword_1001C9300);
  v77 = *(v78 - 8);
  v23 = *(v77 + 64);
  __chkstk_darwin(v78);
  v108 = &v66 - v24;
  v76 = sub_10000CDE0(&qword_10023FAF0, &qword_1001C9308);
  v75 = *(v76 - 8);
  v25 = *(v75 + 64);
  __chkstk_darwin(v76);
  v99 = &v66 - v26;
  v74 = sub_10000CDE0(&qword_10023FAF8, &qword_1001C9310);
  v73 = *(v74 - 8);
  v27 = *(v73 + 64);
  __chkstk_darwin(v74);
  v98 = &v66 - v28;
  v72 = sub_10000CDE0(&qword_10023FB00, &qword_1001C9318);
  v71 = *(v72 - 8);
  v29 = *(v71 + 64);
  __chkstk_darwin(v72);
  v31 = &v66 - v30;
  v32 = sub_10000CDE0(&qword_10023FB08, &qword_1001C9320);
  v70 = *(v32 - 8);
  v33 = *(v70 + 64);
  __chkstk_darwin(v32);
  v35 = &v66 - v34;
  v36 = sub_10000CDE0(&qword_10023FB10, &qword_1001C9328);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v66 - v39;
  v42 = a1[3];
  v41 = a1[4];
  v113 = a1;
  sub_10000DA7C(a1, v42);
  sub_1001A6C50();
  v43 = v112;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v43)
  {
    goto LABEL_7;
  }

  v67 = v35;
  v66 = v32;
  v68 = v31;
  v44 = v108;
  v45 = v109;
  v47 = v110;
  v46 = v111;
  v69 = v37;
  v112 = KeyedDecodingContainer.allKeys.getter();
  if (*(v112 + 16) != 1 || (v48 = *(v112 + 32), v48 == 15))
  {
    v50 = type metadata accessor for DecodingError();
    swift_allocError();
    v52 = v51;
    v53 = *(sub_10000CDE0(&qword_10023E930, &qword_1001C4C60) + 48);
    *v52 = &type metadata for AttributionKitError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v50 - 8) + 104))(v52, enum case for DecodingError.typeMismatch(_:), v50);
    swift_willThrow();
    (*(v69 + 8))(v40, v36);
    swift_unknownObjectRelease();
LABEL_7:
    sub_10000DB58(v113);
    return 0;
  }

  switch(*(v112 + 32))
  {
    case 1:
      v115 = 1;
      sub_1001A70E8();
      v62 = v68;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v71 + 8))(v62, v72);
      break;
    case 2:
      v116 = 2;
      sub_1001A7094();
      v59 = v98;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v73 + 8))(v59, v74);
      break;
    case 3:
      v117 = 3;
      sub_1001A7040();
      v60 = v99;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v75 + 8))(v60, v76);
      break;
    case 4:
      v118 = 4;
      sub_1001A6FEC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v77 + 8))(v44, v78);
      break;
    case 5:
      v119 = 5;
      sub_1001A6F98();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v80 + 8))(v45, v79);
      break;
    case 6:
      v120 = 6;
      sub_1001A6F44();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v81 + 8))(v47, v82);
      break;
    case 7:
      v121 = 7;
      sub_1001A6EF0();
      v61 = v100;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v83 + 8))(v61, v84);
      break;
    case 8:
      v122 = 8;
      sub_1001A6E9C();
      v65 = v101;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v85 + 8))(v65, v86);
      break;
    case 9:
      v123 = 9;
      sub_1001A6E48();
      v58 = v102;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v87 + 8))(v58, v88);
      break;
    case 0xA:
      v124 = 10;
      sub_1001A6DF4();
      v64 = v103;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v89 + 8))(v64, v90);
      break;
    case 0xB:
      v125 = 11;
      sub_1001A6DA0();
      v56 = v104;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v91 + 8))(v56, v92);
      break;
    case 0xC:
      v126 = 12;
      sub_1001A6D4C();
      v57 = v105;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v93 + 8))(v57, v94);
      break;
    case 0xD:
      v127 = 13;
      sub_1001A6CF8();
      v63 = v106;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v95 + 8))(v63, v96);
      break;
    case 0xE:
      v128 = 14;
      sub_1001A6CA4();
      v55 = v107;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v97 + 8))(v55, v46);
      break;
    default:
      v114 = 0;
      sub_1001A713C();
      v49 = v67;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v70 + 8))(v49, v66);
      break;
  }

  (*(v69 + 8))(v40, v36);
  swift_unknownObjectRelease();
  sub_10000DB58(v113);
  return v48;
}

unint64_t sub_1001A8688()
{
  result = qword_10023F988;
  if (!qword_10023F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F988);
  }

  return result;
}

unint64_t sub_1001A87F8()
{
  result = qword_10023F990;
  if (!qword_10023F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F990);
  }

  return result;
}

unint64_t sub_1001A8850()
{
  result = qword_10023F998;
  if (!qword_10023F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F998);
  }

  return result;
}

unint64_t sub_1001A88A8()
{
  result = qword_10023F9A0;
  if (!qword_10023F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9A0);
  }

  return result;
}

unint64_t sub_1001A8900()
{
  result = qword_10023F9A8;
  if (!qword_10023F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9A8);
  }

  return result;
}

unint64_t sub_1001A8958()
{
  result = qword_10023F9B0;
  if (!qword_10023F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9B0);
  }

  return result;
}

unint64_t sub_1001A89B0()
{
  result = qword_10023F9B8;
  if (!qword_10023F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9B8);
  }

  return result;
}

unint64_t sub_1001A8A08()
{
  result = qword_10023F9C0;
  if (!qword_10023F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9C0);
  }

  return result;
}

unint64_t sub_1001A8A60()
{
  result = qword_10023F9C8;
  if (!qword_10023F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9C8);
  }

  return result;
}

unint64_t sub_1001A8AB8()
{
  result = qword_10023F9D0;
  if (!qword_10023F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9D0);
  }

  return result;
}

unint64_t sub_1001A8B10()
{
  result = qword_10023F9D8;
  if (!qword_10023F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9D8);
  }

  return result;
}

unint64_t sub_1001A8B68()
{
  result = qword_10023F9E0;
  if (!qword_10023F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9E0);
  }

  return result;
}

unint64_t sub_1001A8BC0()
{
  result = qword_10023F9E8;
  if (!qword_10023F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9E8);
  }

  return result;
}

unint64_t sub_1001A8C18()
{
  result = qword_10023F9F0;
  if (!qword_10023F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9F0);
  }

  return result;
}

unint64_t sub_1001A8C70()
{
  result = qword_10023F9F8;
  if (!qword_10023F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9F8);
  }

  return result;
}

unint64_t sub_1001A8CC8()
{
  result = qword_10023FA00;
  if (!qword_10023FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA00);
  }

  return result;
}

unint64_t sub_1001A8D20()
{
  result = qword_10023FA08;
  if (!qword_10023FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA08);
  }

  return result;
}

unint64_t sub_1001A8D78()
{
  result = qword_10023FA10;
  if (!qword_10023FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA10);
  }

  return result;
}

unint64_t sub_1001A8DD0()
{
  result = qword_10023FA18;
  if (!qword_10023FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA18);
  }

  return result;
}

unint64_t sub_1001A8E28()
{
  result = qword_10023FA20;
  if (!qword_10023FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA20);
  }

  return result;
}

unint64_t sub_1001A8E80()
{
  result = qword_10023FA28;
  if (!qword_10023FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA28);
  }

  return result;
}

unint64_t sub_1001A8ED8()
{
  result = qword_10023FA30;
  if (!qword_10023FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA30);
  }

  return result;
}

unint64_t sub_1001A8F30()
{
  result = qword_10023FA38;
  if (!qword_10023FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA38);
  }

  return result;
}

unint64_t sub_1001A8F88()
{
  result = qword_10023FA40;
  if (!qword_10023FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA40);
  }

  return result;
}

unint64_t sub_1001A8FE0()
{
  result = qword_10023FA48;
  if (!qword_10023FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA48);
  }

  return result;
}

unint64_t sub_1001A9038()
{
  result = qword_10023FA50;
  if (!qword_10023FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA50);
  }

  return result;
}

unint64_t sub_1001A9090()
{
  result = qword_10023FA58;
  if (!qword_10023FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA58);
  }

  return result;
}

unint64_t sub_1001A90E8()
{
  result = qword_10023FA60;
  if (!qword_10023FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA60);
  }

  return result;
}

unint64_t sub_1001A9140()
{
  result = qword_10023FA68;
  if (!qword_10023FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA68);
  }

  return result;
}

unint64_t sub_1001A9198()
{
  result = qword_10023FA70;
  if (!qword_10023FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA70);
  }

  return result;
}

unint64_t sub_1001A91F0()
{
  result = qword_10023FA78;
  if (!qword_10023FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA78);
  }

  return result;
}

unint64_t sub_1001A9248()
{
  result = qword_10023FA80;
  if (!qword_10023FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA80);
  }

  return result;
}

unint64_t sub_1001A92A0()
{
  result = qword_10023FA88;
  if (!qword_10023FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA88);
  }

  return result;
}

unint64_t sub_1001A92F8()
{
  result = qword_10023FA90;
  if (!qword_10023FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA90);
  }

  return result;
}

void sub_1001A9358(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1001A9410;
  v7[3] = &unk_100227260;
  v6 = _Block_copy(v7);

  [v5 fetchReengagementTokensWithReply:v6];
  _Block_release(v6);
}

uint64_t sub_1001A9410(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v4(v6, v8);
  sub_10001BABC(v6, v8);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenFetchRequest.fetchReengagementTokens()()
{
  if (qword_10023E528 != -1)
  {
    swift_once();
  }

  if (qword_10023FDA0)
  {
    sub_10018B470(sub_1001A9358);
  }
}

uint64_t sub_1001A9514(uint64_t a1)
{
  v2 = sub_1001A96A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A9550(uint64_t a1)
{
  v2 = sub_1001A96A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TokenFetchRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023FB18, &qword_1001C9330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001A96A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1001A96A0()
{
  result = qword_10023FB20;
  if (!qword_10023FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FB20);
  }

  return result;
}

unint64_t sub_1001A9718()
{
  result = qword_10023FB28;
  if (!qword_10023FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FB28);
  }

  return result;
}

unint64_t sub_1001A9770()
{
  result = qword_10023FB30;
  if (!qword_10023FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FB30);
  }

  return result;
}

uint64_t sub_1001A97C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001A97DC()
{
  v0 = objc_allocWithZone(NSXPCConnection);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_;
  v5 = [v3 interfaceWithProtocol:v4];

  [v2 setExportedInterface:v5];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  [v2 setExportedObject:v6];

  v7 = &OBJC_PROTOCOL____TtP20AttributionKitCommon28PostbackProxyServiceProtocol_;
  v8 = [v3 interfaceWithProtocol:v7];

  [v2 setRemoteObjectInterface:v8];
  v16 = sub_10017E9F0;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_100227288;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler:v9];
  _Block_release(v9);
  v16 = sub_10017E9FC;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_1002272B0;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler:v10];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for PostbackProxyServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_10023FF10 = result;
  return result;
}

uint64_t sub_1001A9A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

const char *LogKey.Prefix.fallbackActivityName.getter(char a1)
{
  if (!a1)
  {
    return "General";
  }

  if (a1 == 1)
  {
    return "woofctl";
  }

  return "nope nope";
}

uint64_t LogKey.Prefix.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 5129543;
  }

  if (a1 == 1)
  {
    return 4931905;
  }

  return 1162891086;
}

uint64_t sub_1001A9B2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 4931905;
  if (v2 != 1)
  {
    v5 = 1162891086;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 5129543;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 4931905;
  if (*a2 != 1)
  {
    v8 = 1162891086;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 5129543;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001A9C04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001A9C90()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001A9D08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001A9D90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20AttributionKitCommon6LogKeyV6PrefixO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001A9DC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 4931905;
  if (v2 != 1)
  {
    v5 = 1162891086;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5129543;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t LogKey.Representation.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_10000DA7C(v6, v6[3]);
    v4 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_10000DB58(v6);
  }

  sub_10000DB58(a1);
  return v4;
}

uint64_t LogKey.Representation.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  LogKey.stringValue.getter(a2, a3, a4 & 1);
  sub_100054C30(v9, v9[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_10000DB58(v9);
}

uint64_t sub_1001A9FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  sub_10000DA7C(v10, v10[3]);
  v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v8 = v7;
  sub_10000DB58(v10);
  result = sub_10000DB58(a1);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_1001AA084(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  LogKey.stringValue.getter(v2, v3, v4);
  sub_100054C30(v7, v7[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_10000DB58(v7);
}

void *LogKey.init(from:)(uint64_t *a1)
{
  result = sub_1001AA534(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t LogKey.encode(to:)(void *a1)
{
  v1 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100054C30(v3, v3[3]);
  sub_1001AA61C();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_10000DB58(v3);
}

void *sub_1001AA3A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001AA534(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1001AA3DC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100054C30(v7, v7[3]);
  sub_1001AA61C();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_10000DB58(v7);
}

unint64_t _s20AttributionKitCommon6LogKeyV6PrefixO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002242B0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001AA4E0()
{
  result = qword_10023FBF8;
  if (!qword_10023FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FBF8);
  }

  return result;
}

void *sub_1001AA534(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_10000DA7C(v7, v7[3]);
    sub_1001AA7A4();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v4 = v6;
    sub_10000DB58(v7);
  }

  sub_10000DB58(a1);
  return v4;
}

unint64_t sub_1001AA61C()
{
  result = qword_10023FC00;
  if (!qword_10023FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FC00);
  }

  return result;
}

unint64_t sub_1001AA674()
{
  result = qword_10023FC08;
  if (!qword_10023FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FC08);
  }

  return result;
}

uint64_t sub_1001AA6F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001AA744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1001AA7A4()
{
  result = qword_10023FC10;
  if (!qword_10023FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FC10);
  }

  return result;
}

uint64_t CoarseConversionValue.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1751607656;
  }

  if (a1 == 1)
  {
    return 7827308;
  }

  return 0x6D756964656DLL;
}

uint64_t sub_1001AA84C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7827308;
  if (v2 != 1)
  {
    v4 = 0x6D756964656DLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1751607656;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7827308;
  if (*a2 != 1)
  {
    v8 = 0x6D756964656DLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1751607656;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001AA930()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001AA9C0()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001AAA3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001AAAC8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20AttributionKitCommon21CoarseConversionValueO03rawF0ACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001AAAF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7827308;
  if (v2 != 1)
  {
    v5 = 0x6D756964656DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1751607656;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s20AttributionKitCommon21CoarseConversionValueO03rawF0ACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100224318, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001AAC44()
{
  result = qword_10023FC18;
  if (!qword_10023FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FC18);
  }

  return result;
}

unint64_t sub_1001AACA8()
{
  result = qword_10023FC20;
  if (!qword_10023FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FC20);
  }

  return result;
}

id sub_1001AAD08(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_opt_class();
  [v4 databaseTable];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003D40;
  v10[3] = &unk_100212C48;
  v11 = v13 = v4;
  v5 = v3;
  v12 = v5;
  v6 = v11;
  [v2 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v12;
  v8 = v5;

  return v8;
}

uint64_t sub_1001AAE0C(uint64_t a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [[NSString alloc] initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", v6, v5];

    v8 = *(v3 + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003E54;
    v10[3] = &unk_100212C70;
    v10[4] = v3;
    v3 = sub_1001ABB68(v8, v7, 0, v10);
  }

  return v3;
}

id sub_1001AAEE8(id result, uint64_t a2)
{
  if (result)
  {
    v2 = sub_1001AAF28(result, a2);
    v3 = [v2 BOOLValue];

    return v3;
  }

  return result;
}

id sub_1001AAF28(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    v3 = sub_100003E84();
    v4 = sub_100003E9C(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1001AAF90(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    v3 = sub_100003E84();
    v4 = sub_100003E9C(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1001AAFF8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001AB09C(id result, uint64_t a2)
{
  if (result)
  {
    v2 = sub_1001AAF28(result, a2);
    v3 = [v2 integerValue];

    return v3;
  }

  return result;
}

id sub_1001AB0DC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    v3 = sub_100003E84();
    v4 = sub_100003E9C(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1001AB144(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    v3 = sub_100003E84();
    v4 = sub_100003E9C(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1001AB1AC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    v3 = sub_100003E84();
    v4 = sub_100003E9C(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_1001AB214(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SQLiteQueryResults;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void sub_1001AB28C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_1001AD0C4([SQLiteCursor alloc], *(a1 + 8));
    v5 = sub_1001AB474(*(a1 + 8));
    v6 = sub_1001ACFB4(*(a1 + 8));
    v15 = v5;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100004020;
    v12[3] = &unk_100212C98;
    v7 = v3;
    v14 = v7;
    v8 = v4;
    v13 = v8;
    v9 = sub_1001AC08C(v6, &v16, v12);
    v10 = v16;

    if (v9)
    {
      sub_1001ACED0(*(a1 + 8));
    }

    else
    {
      v11 = 0;
      (*(v7 + 2))(v7, 0, v10, &v11);
    }
  }
}

void *sub_1001AB3DC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SQLiteConnectionOptions;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[3];
      a1[3] = v4;

      a1[2] = -64;
    }
  }

  return a1;
}

uint64_t sub_1001AB458(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 16) = -a2;
  }

  return result;
}

uint64_t sub_1001AB468(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_1001AB474(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

id sub_1001AB480(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 24, 1);
  }

  return result;
}

uint64_t sub_1001AB494(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void sub_1001AB4A0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 32);
  }
}

uint64_t sub_1001AB4B4(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

void sub_1001AB4C0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 40);
  }
}

uint64_t sub_1001AB4D4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1001AB4EC(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

__CFString *sub_1001AB4F8(__CFString *result)
{
  if (result)
  {
    v1 = [(__CFString *)result comparisonType];
    if ((v1 - 1) > 6)
    {
      return 0;
    }

    else
    {
      return off_100212CE0[(v1 - 1)];
    }
  }

  return result;
}

void *sub_1001AB538(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = SQLiteConnection;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[7];
      a1[7] = v4;

      v6 = +[NSMapTable strongToStrongObjectsMapTable];
      v7 = a1[4];
      a1[4] = v6;
    }
  }

  return a1;
}

uint64_t sub_1001AB5C8(uint64_t result)
{
  if (result)
  {
    return sub_1001AB5D4(result);
  }

  return result;
}

uint64_t sub_1001AB5D4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      sub_1001AC250(result);
      if (sqlite3_close(*(v1 + 16)))
      {
        return 0;
      }

      else
      {
        v2 = *(v1 + 8);
        *(v1 + 8) = 0;

        *(v1 + 16) = 0;
        *(v1 + 40) = 0;
        result = 1;
        *(v1 + 48) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_1001AB644(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    if (*(a1 + 40))
    {
      if (!*(a1 + 8))
      {
        v4 = objc_alloc_init(NSMutableArray);
        v5 = *(a1 + 8);
        *(a1 + 8) = v4;
      }

      v6 = [v9 copy];
      v7 = *(a1 + 8);
      v8 = objc_retainBlock(v6);
      [v7 addObject:v8];
    }

    else
    {
      v3[2](v3);
    }

    v3 = v9;
  }
}

void sub_1001AB870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __CFString *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a1)
  {
    sub_1001AB880(a1, a2, a3, 0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

void sub_1001AB880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __CFString *a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100006B88();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (v25)
  {
    sub_100006B34();
    v29 = sub_1001AB6FC(v25, v23, v28);
    v30 = a10;
    if (v29)
    {
      if (v27)
      {
        v33 = sub_100006B60();
        v34(v33);
      }

      a9 = v30;
      v31 = sub_1001AB964(v25, v29, &a9);
      v35 = a9;

      if (v27)
      {
        [v29 clearBindings];
      }

      v30 = v35;
    }

    else
    {
      v31 = 0;
    }

    sub_1001ACED0(v29);
    if (v21 && (v31 & 1) == 0)
    {
      v32 = v30;
      *v21 = v30;
    }
  }

  sub_100006B74();
}

uint64_t sub_1001AB964(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = a2;
  if (a1)
  {
    sub_100006AF4();
    v10 = 3221225472;
    v11 = sub_10000689C;
    v12 = &unk_100212D20;
    v6 = v5;
    v13 = v6;
    v7 = sub_1001AC098(a1, a3, v9);
    if (v7)
    {
      sub_1001ACED0(v6);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1001ABB58(uint64_t result, void *a2, __CFString **a3)
{
  if (result)
  {
    return sub_1001ABB68(result, a2, a3, 0);
  }

  return result;
}

uint64_t sub_1001ABB68(uint64_t a1, void *a2, __CFString **a3, void *a4)
{
  v7 = a4;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v19 = 0;
  v8 = a2;
  v9 = sub_1001ABA14(a1, v8, &v19);
  v10 = v19;
  v11 = sub_1001ADD04([SQLitePreparedStatement alloc], *(a1 + 16), v8);

  if (v11)
  {
    [*(a1 + 32) setObject:v9 forKey:v11];
  }

  if (v9)
  {
    if (v7)
    {
      v15 = sub_100006B60();
      v16(v15);
    }

    v18 = v10;
    v12 = sub_1001AB964(a1, v9, &v18);
    v17 = v18;

    sub_1001ACE2C(v9);
    if (v11)
    {
      [*(a1 + 32) removeObjectForKey:v11];
    }

    v10 = v17;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v12 = 0;
  if (a3)
  {
LABEL_6:
    if ((v12 & 1) == 0)
    {
      v13 = v10;
      *a3 = v10;
    }
  }

LABEL_8:

LABEL_9:
  return v12;
}

BOOL sub_1001ABCB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_6;
  }

  sub_100006B34();
  v7 = sub_1001AB6FC(a1, v5, v6);
  v8 = v14;
  if (!v7)
  {
    v11 = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = sub_1001ACE2C(v7);
  v10 = SQLiteCreateErrorForResultCode(v9);

  v11 = v10 == 0;
  [*(a1 + 32) removeObjectForKey:v5];
  v8 = v10;
  if (a3)
  {
LABEL_4:
    v12 = v8;
    *a3 = v8;
  }

LABEL_5:

LABEL_6:
  return v11;
}

void sub_1001ABDD0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, sqlite3 *db, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100006B88();
  a17 = v18;
  a18 = v20;
  if (v19)
  {
    v21 = v19;
    if (!*(v19 + 16))
    {
      db = 0;
      v22 = 1;
      while (1)
      {
        v23 = SQLiteOpenDatabaseAndApplyOptions(&db, *(v21 + 56));
        if (!v23)
        {
          break;
        }

        if (v23 <= 0x1Au && ((1 << v23) & 0x4000C02) != 0)
        {
          v25 = sub_1001AC380(v21) & v22;
          v22 = 0;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_3;
      }

      v26 = db;
      *(v21 + 16) = db;
      sqlite3_create_function(v26, "timestamp", 0, 1, 0, sub_100006998, 0, 0);
    }
  }

LABEL_3:
  sub_100006B74();
}

void sub_1001ABEB4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, sqlite3 *db, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a1)
  {
    sub_1001ABDD0(a1, a2, a3, a4, a5, a6, a7, a8, a9, db, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

void sub_1001ABEC0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = [v2 copy];
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;

      v5 = dispatch_get_global_queue(0, 0);
      sub_100006AF4();
      v8 = 3221225472;
      v9 = sub_1000068A4;
      v10 = &unk_100212D48;
      v11 = v3;
      v6 = v3;
      dispatch_async(v5, block);
    }
  }
}

uint64_t sub_1001AC08C(uint64_t a1, __CFString **a2, void *a3)
{
  if (a1)
  {
    return sub_1001AC098(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1001AC098(uint64_t a1, __CFString **a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v6 = 0;
  v7 = 0;
  v8 = @"SQLiteErrorDomain";
  while (2)
  {
    v9 = objc_autoreleasePoolPush();
    v16 = 0;
    v10 = v5[2](v5, &v16);
    switch(v10)
    {
      case 0:
        goto LABEL_13;
      case 1:
      case 2:
      case 3:
      case 4:
      case 7:
      case 8:
      case 9:
        goto LABEL_12;
      case 5:
      case 6:
        if (v6 < 10)
        {
          usleep(0xF4240u);
          ++v6;
          goto LABEL_8;
        }

        v12 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:-7702 userInfo:0];
        goto LABEL_15;
      case 10:
        SQLiteCreateErrorForResultCode(v10);
        objc_claimAutoreleasedReturnValue();
        objc_autoreleasePoolPop(sub_100006B40());
        sub_1001AC554(a1);
        goto LABEL_17;
      case 11:
        goto LABEL_22;
      default:
        if (v10 != 100)
        {
          if (v10 == 101)
          {
LABEL_13:
            v8 = 0;
            v7 = 1;
          }

          else
          {
            if (v10 == 26)
            {
LABEL_22:
              SQLiteCreateErrorForResultCode(v10);
              objc_claimAutoreleasedReturnValue();
              objc_autoreleasePoolPop(sub_100006B40());
              sub_1001AC380(a1);
              goto LABEL_17;
            }

LABEL_12:
            v12 = SQLiteCreateErrorForResultCode(v10);
LABEL_15:
            v8 = v12;
          }

          objc_autoreleasePoolPop(v9);
          goto LABEL_17;
        }

        v7 = 1;
LABEL_8:
        v11 = v16;
        objc_autoreleasePoolPop(v9);
        if ((v11 & 1) == 0)
        {
          continue;
        }

        v8 = 0;
LABEL_17:
        if (a2 && (v7 & 1) == 0)
        {
          v13 = v8;
          *a2 = v8;
        }

        v17 = v7;

        v14 = v17;
LABEL_21:

        return v14;
    }
  }
}

sqlite3_stmt *sub_1001AC250(sqlite3_stmt *result)
{
  if (result)
  {
    v1 = result;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(result + 4) objectEnumerator];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          sub_1001ACE2C(*(*(&v8 + 1) + 8 * v6));
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    [*(v1 + 4) removeAllObjects];
    result = sqlite3_next_stmt(*(v1 + 2), 0);
    if (result)
    {
      v7 = result;
      do
      {
        sqlite3_finalize(v7);
        result = sqlite3_next_stmt(*(v1 + 2), v7);
        v7 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_1001AC380(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = os_log_create("com.apple.AdAttributionKit", "SQL");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = *(v2 + 56);
        v11 = v9;
        v12 = sub_100006B40();
        v14 = sub_1001AB480(v12, v13);
        sub_100006ADC();
        sub_100006B14(&_mh_execute_header, v15, v16, "[%@]: Asking delegate to reset database after corruption: %{public}@", v17, v18, v19, v20, v35);
      }

      v6 = objc_loadWeakRetained((v2 + 24));
      v7 = [v6 connectionNeedsResetForCorruption:v2];
    }

    else
    {
      if (sub_1001AB4D4(*(v2 + 56)))
      {
        return 0;
      }

      v21 = os_log_create("com.apple.AdAttributionKit", "SQL");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = *(v2 + 56);
        v24 = v22;
        v25 = sub_100006B40();
        v27 = sub_1001AB480(v25, v26);
        sub_100006ADC();
        sub_100006B14(&_mh_execute_header, v28, v29, "[%@]: Deleting database after corruption: %{public}@", v30, v31, v32, v33, v35);
      }

      v6 = sub_1001AB480(*(v2 + 56), v34);
      sub_1001AB5D4(v2);
      v7 = SQLiteDeleteDatabase(v6, 0);
    }

    v2 = v7;
  }

  return v2;
}

uint64_t sub_1001AC554(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = os_log_create("com.apple.AdAttributionKit", "SQL");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = *(v2 + 56);
      v6 = v4;
      v7 = sub_100006B40();
      v9 = sub_1001AB480(v7, v8);
      sub_100006ADC();
      sub_100006B14(&_mh_execute_header, v10, v11, "[%@]: Reopening database after IO error: %{public}@", v12, v13, v14, v15, v37[0]);
    }

    v16 = *(v2 + 8);
    v17 = v16;
    v18 = *(v2 + 40);
    if (sub_1001AB5D4(v2))
    {
      sub_1001ABDD0(v2, v19, v20, v21, v22, v23, v24, v25, *v37, *&v37[8], *&v37[16], v38, v39, v40, v41, v42, v43, v44);
      if (v26)
      {
        if (!v18)
        {
          goto LABEL_9;
        }

        if (!sqlite3_exec(*(v2 + 16), "BEGIN DEFERRED TRANSACTION", 0, 0, 0))
        {
          objc_storeStrong((v2 + 8), v16);
          *(v2 + 40) = v18;
          *(v2 + 48) = 1;
LABEL_9:
          WeakRetained = objc_loadWeakRetained((v2 + 24));
          v28 = objc_opt_respondsToSelector();

          if (v28)
          {
            v29 = os_log_create("com.apple.AdAttributionKit", "SQL");
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v32 = objc_opt_class();
              v33 = *(v2 + 56);
              v34 = v32;
              v36 = sub_1001AB480(v33, v35);
              *v37 = 138412546;
              *&v37[4] = v32;
              *&v37[12] = 2114;
              *&v37[14] = v36;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%@]: Asking delegate to reset database after reopen: %{public}@", v37, 0x16u);
            }

            v30 = objc_loadWeakRetained((v2 + 24));
            v2 = [v30 connectionNeedsResetForReopen:v2];
          }

          else
          {
            v2 = 1;
          }

          goto LABEL_15;
        }
      }
    }

    v2 = sub_1001AC380(v2);
LABEL_15:
  }

  return v2;
}

id sub_1001AC798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_100006B88();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (v13)
  {
    [*(v13 + 32) objectForKey:v15];
    if (objc_claimAutoreleasedReturnValue())
    {
      v16 = 0;
    }

    else
    {
      v17 = sub_1001AB474(v15);
      sub_100006B34();
      v19 = sub_1000065E0(v13, v17, v18);
      v16 = a10;

      if (v19)
      {
        [*(v13 + 32) setObject:v19 forKey:v15];
      }

      else if (v11)
      {
        v20 = v16;
        *v11 = v16;
      }
    }
  }

  sub_100006B74();

  return v21;
}

id *sub_1001AC888(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    v1 = vars8;
  }

  return WeakRetained;
}

id *sub_1001AC8B8(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 3, a2);
  }

  return result;
}

uint64_t sub_1001AC8C8(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

id sub_1001AC8D4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    v3 = sub_100003E84();
    v4 = sub_100003E9C(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1001AC93C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    v3 = sub_100003E84();
    v4 = sub_100003E9C(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

_BYTE *sub_1001AC9A4(_BYTE *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SQLiteDatabaseStoreMigrator;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      a1[24] = 1;
    }
  }

  return a1;
}

id *sub_1001ACA24(id *a1)
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

void sub_1001ACA54(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100007660(a1, a2, 0);
  }
}

void sub_1001ACA64(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    if (*(a1 + 24) == 1)
    {
      v9 = *(a1 + 8);
      v13 = 0;
      v10 = sub_1001ABB68(v9, v7, &v13, v8);
      v11 = v13;
      v12 = v13;
      if (a3)
      {
        *(a1 + 24) &= v10;
      }

      if ((v10 & 1) == 0)
      {
        objc_storeStrong((a1 + 16), v11);
      }
    }

    else
    {
      v12 = 0;
    }
  }
}

void sub_1001ACB28(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_1001ACA64(a1, a2, 0, a3);
  }
}

void sub_1001ACB3C(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100007660(a1, a2, 1);
  }
}

void sub_1001ACB4C(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_1001ACA64(a1, a2, 1, a3);
  }
}

void sub_1001ACB60(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_1001ACB74(a1, a2, 0, a3);
  }
}

void sub_1001ACB74(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a1 && *(a1 + 24) == 1)
  {
    v10 = *(a1 + 8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007580;
    v11[3] = &unk_100212DC8;
    v13 = a3;
    v11[4] = a1;
    v12 = v8;
    sub_1000061F0(v10, v7, v11);
  }
}

void sub_1001ACC4C(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_1001ACB74(a1, a2, 1, a3);
  }
}

id sub_1001ACC60(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 16, 1);
  }

  return result;
}

uint64_t sub_1001ACC74(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id *sub_1001ACC8C(id *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = SQLiteStatement;
    v7 = objc_msgSendSuper2(&v9, "init");
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a3);
      a1[2] = a2;
      objc_storeStrong(a1 + 3, a1);
    }
  }

  return a1;
}

id sub_1001ACD18(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = sqlite3_column_count(v2);
  v4 = [NSMutableDictionary dictionaryWithCapacity:v3];
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [[NSNumber alloc] initWithInt:v5];
      v7 = [[NSString alloc] initWithUTF8String:{sqlite3_column_name(*(a1 + 16), v5)}];
      [v4 setObject:v6 forKey:v7];

      v5 = (v5 + 1);
    }

    while (v3 != v5);
  }

LABEL_9:

  return v4;
}

uint64_t sub_1001ACE2C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = sqlite3_finalize(v2);
  v4 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return v3;
}

uint64_t sub_1001ACE78(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      return sqlite3_stmt_readonly(v1) != 0;
    }

    else
    {
      [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
      return 1;
    }
  }

  return result;
}

uint64_t sub_1001ACED0(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      return sqlite3_reset(v1);
    }

    else
    {
      return 21;
    }
  }

  return result;
}

__CFString *sub_1001ACEE8(__CFString *a1)
{
  if (a1)
  {
    data = a1->data;
    if (data)
    {
      a1 = [NSString stringWithUTF8String:sqlite3_sql(data)];
    }

    else
    {
      [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
      a1 = &stru_100227AF8;
    }

    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1001ACF5C(uint64_t result)
{
  if (result)
  {
    v3 = *(result + 16);
    if (v3)
    {

      return sqlite3_step(v3);
    }

    else
    {
      [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized", v1, v2];
      return 21;
    }
  }

  return result;
}

uint64_t sub_1001ACFB4(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_1001ACFC0(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t sub_1001ACFCC(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void sub_1001ACFD8(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 48);
  }
}

void sub_1001ACFEC(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 56);
  }
}

void *sub_1001AD000(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = SQLiteQueryDescriptor;
    result = objc_msgSendSuper2(&v5, "init");
    if (result)
    {
      result[1] = a2;
      result[4] = a3;
    }
  }

  return result;
}

uint64_t sub_1001AD05C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_1001AD068(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

uint64_t sub_1001AD074(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

uint64_t sub_1001AD080(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t sub_1001AD08C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 72);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1001AD0A4(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

void sub_1001AD0B0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 64);
  }
}

int *sub_1001AD0C4(int *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = SQLiteCursor;
    a1 = objc_msgSendSuper2(&v17, "init");
    if (a1)
    {
      *(a1 + 6) = sub_1001AB474(v4);
      objc_storeStrong(a1 + 7, a2);
      v5 = sqlite3_column_count(*(a1 + 6));
      a1[2] = v5;
      v6 = [NSMutableArray arrayWithCapacity:v5];
      v7 = *(a1 + 5);
      *(a1 + 5) = v6;

      *(a1 + 2) = malloc_type_calloc(a1[2], 1uLL, 0x100004077774924uLL);
      if (a1[2] >= 1)
      {
        for (i = 0; i < a1[2]; ++i)
        {
          v9 = *(a1 + 5);
          v10 = [NSString stringWithUTF8String:sqlite3_column_name(*(a1 + 6), i)];
          [v9 addObject:v10];

          v11 = sqlite3_column_decltype(*(a1 + 6), i);
          if (v11)
          {
            v12 = v11;
            if (!strcmp(v11, "DATETIME"))
            {
              *(*(a1 + 2) + i) = 1;
              continue;
            }

            if (!strcmp(v12, "JSON"))
            {
              v14 = *(a1 + 2);
              v15 = 2;
              goto LABEL_20;
            }

            if (!strcmp(v12, "UUID"))
            {
              v14 = *(a1 + 2);
              v15 = 3;
              goto LABEL_20;
            }

            if (!strcmp(v12, "URL"))
            {
              v14 = *(a1 + 2);
              v15 = 4;
              goto LABEL_20;
            }

            if (!strcmp(v12, "STRING"))
            {
              v14 = *(a1 + 2);
              v15 = 5;
              goto LABEL_20;
            }

            v13 = strcmp(v12, "BOOLEAN");
            v14 = *(a1 + 2);
            if (!v13)
            {
              v15 = 6;
LABEL_20:
              *(v14 + i) = v15;
              continue;
            }
          }

          else
          {
            v14 = *(a1 + 2);
          }

          *(v14 + i) = 0;
        }
      }
    }
  }

  return a1;
}

id sub_1001AD2F4(void *a1, int a2)
{
  if (a1)
  {
    if (sub_10000B034(a1, a2) == 1)
    {
      v3 = sub_10000B028();
      a1 = [NSNumber numberWithBool:sqlite3_column_int64(v3, v4) != 0];
    }

    else
    {
      a1 = 0;
    }

    v2 = vars8;
  }

  return a1;
}

id sub_1001AD364(void *a1, int a2)
{
  if (a1)
  {
    if (sub_10000B034(a1, a2) == 5)
    {
      a1 = 0;
    }

    else
    {
      v3 = sub_10000B028();
      v5 = sqlite3_column_blob(v3, v4);
      v6 = sub_10000B028();
      a1 = [NSData dataWithBytes:v5 length:sqlite3_column_bytes(v6, v7)];
    }

    v2 = vars8;
  }

  return a1;
}

id sub_1001AD3E0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001AD364(a1, v4);
    }
  }

  return a1;
}

id *sub_1001AD448(id *result, uint64_t a2)
{
  if (result)
  {
    return [result[5] indexOfObject:a2];
  }

  return result;
}

id sub_1001AD470(void *a1, int a2)
{
  if (a1)
  {
    v3 = sub_10000B034(a1, a2);
    if (v3 == 1)
    {
      v7 = sub_10000B028();
      v6 = sqlite3_column_int64(v7, v8);
    }

    else
    {
      if (v3 != 2)
      {
        a1 = 0;
        goto LABEL_8;
      }

      v4 = sub_10000B028();
      v6 = sqlite3_column_double(v4, v5);
    }

    a1 = [NSDate dateWithTimeIntervalSinceReferenceDate:v6];
LABEL_8:
    v2 = vars8;
  }

  return a1;
}

id sub_1001AD4F8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001AD470(a1, v4);
    }
  }

  return a1;
}

double sub_1001AD560(uint64_t a1, int a2)
{
  if (a1)
  {
    return sqlite3_column_double(*(a1 + 48), a2);
  }

  else
  {
    return 0.0;
  }
}

double sub_1001AD574(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0.0;
  if (a1)
  {
    v5 = sub_10000B050();
    if ((v5 & 0x80000000) == 0)
    {
      v4 = sqlite3_column_double(*(a1 + 48), v5);
    }
  }

  return v4;
}

uint64_t sub_1001AD5CC(uint64_t result, int a2)
{
  if (result)
  {
    return sqlite3_column_int(*(result + 48), a2);
  }

  return result;
}

uint64_t sub_1001AD5DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sqlite3_column_int(*(a1 + 48), v4);
    }
  }

  return a1;
}

sqlite3_int64 sub_1001AD630(sqlite3_int64 result, int a2)
{
  if (result)
  {
    return sqlite3_column_int64(*(result + 48), a2);
  }

  return result;
}

sqlite3_int64 sub_1001AD640(sqlite3_int64 a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sqlite3_column_int64(*(a1 + 48), v4);
    }
  }

  return a1;
}

id sub_1001AD694(id *a1, int a2)
{
  if (a1)
  {
    v4 = sub_1001AD364(a1, a2);
    if (v4)
    {
      v11 = 0;
      v5 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v11];
      v6 = v11;
      if (v5)
      {
LABEL_9:
        v8 = v5;

        goto LABEL_10;
      }

      v7 = os_log_create("com.apple.AdAttributionKit", "SQL");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = [a1[5] objectAtIndexedSubscript:a2];
        *buf = 138543618;
        v13 = v10;
        v14 = 2114;
        v15 = v6;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

id sub_1001AD804(void *a1, int a2)
{
  if (a1)
  {
    v3 = sub_10000B034(a1, a2);
    if (v3 == 1)
    {
      v6 = sub_10000B028();
      a1 = [NSNumber numberWithLongLong:sqlite3_column_int64(v6, v7)];
    }

    else if (v3 == 2)
    {
      v4 = sub_10000B028();
      a1 = [NSNumber numberWithDouble:sqlite3_column_double(v4, v5)];
    }

    else
    {
      a1 = 0;
    }

    v2 = vars8;
  }

  return a1;
}

id sub_1001AD898(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001AD804(a1, v4);
    }
  }

  return a1;
}

uint64_t sub_1001AD900(uint64_t result)
{
  if (result)
  {
    return sqlite3_column_count(*(result + 48));
  }

  return result;
}

id sub_1001AD928(void *a1, int a2)
{
  if (a1)
  {
    if (sub_10000B034(a1, a2) == 5)
    {
      a1 = 0;
    }

    else
    {
      v3 = sub_10000B028();
      a1 = sqlite3_column_text(v3, v4);
      if (a1)
      {
        a1 = [NSString stringWithUTF8String:a1];
      }
    }

    v2 = vars8;
  }

  return a1;
}

id sub_1001AD98C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001AD928(a1, v4);
    }
  }

  return a1;
}

id sub_1001AD9F4(void *a1, int a2)
{
  if (a1)
  {
    v2 = sub_1001AD928(a1, a2);
    if (v2)
    {
      v3 = [[NSUUID alloc] initWithUUIDString:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001ADA64(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001AD9F4(a1, v4);
    }
  }

  return a1;
}

id sub_1001ADACC(void *a1, int a2)
{
  if (a1)
  {
    v2 = sub_1001AD928(a1, a2);
    if (v2)
    {
      v3 = [NSURL URLWithString:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001ADB3C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001ADACC(a1, v4);
    }
  }

  return a1;
}

void *sub_1001ADBA4(void *a1)
{
  if (a1)
  {
    a1 = sub_1001ADBD8(a1, 0);
    v1 = vars8;
  }

  return a1;
}

void *sub_1001ADBD8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[4];
    if (!v4)
    {
      v5 = [NSDictionary sharedKeySetForKeys:a1[5]];
      v6 = a1[4];
      a1[4] = v5;

      v4 = a1[4];
    }

    v7 = [NSMutableDictionary dictionaryWithSharedKeySet:v4];
    v8 = a1[5];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000AD50;
    v11[3] = &unk_100212FE0;
    v12 = v3;
    v13 = v7;
    v14 = a1;
    v9 = v7;
    [v8 enumerateObjectsUsingBlock:v11];
    a1 = [v9 copy];
  }

  return a1;
}

uint64_t sub_1001ADCF4(uint64_t result, int a2)
{
  if (result)
  {
    return sqlite3_column_type(*(result + 48), a2);
  }

  return result;
}

void *sub_1001ADD04(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = SQLitePreparedStatement;
    v6 = objc_msgSendSuper2(&v10, "init");
    a1 = v6;
    if (v6)
    {
      v6[1] = a2;
      v7 = [v5 copy];
      v8 = a1[2];
      a1[2] = v7;
    }
  }

  return a1;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}