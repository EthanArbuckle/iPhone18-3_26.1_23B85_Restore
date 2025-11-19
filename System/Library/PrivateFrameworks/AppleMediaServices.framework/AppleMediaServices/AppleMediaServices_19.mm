unint64_t sub_1001BD118()
{
  result = qword_1002E08B8;
  if (!qword_1002E08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E08B8);
  }

  return result;
}

unint64_t sub_1001BD170()
{
  result = qword_1002E08C0;
  if (!qword_1002E08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E08C0);
  }

  return result;
}

unint64_t sub_1001BD1C8()
{
  result = qword_1002E08C8;
  if (!qword_1002E08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E08C8);
  }

  return result;
}

unint64_t sub_1001BD220()
{
  result = qword_1002E08D0;
  if (!qword_1002E08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E08D0);
  }

  return result;
}

void sub_1001BD290(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  PIKeypairsRotationReason.init(rawValue:)();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
  *(a2 + 9) = 0;
}

uint64_t sub_1001BD2C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = PIScheduledRotationConfiguration.rotationInterval.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t PIKeypairsRotationReason.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        result = 0xD000000000000011;
        break;
      case 2:
        sub_10002F438();
        result = v6 + 5;
        break;
      case 3:
        sub_10002F438();
        result = v7 | 4;
        break;
      case 4:
        sub_10002F438();
        result = v5 + 3;
        break;
      case 5:
        sub_10002F438();
        result = v8 | 8;
        break;
      default:
        result = 0xD000000000000011;
        break;
    }
  }

  else
  {
    _StringGuts.grow(_:)(17);

    strcpy(v9, "futureUnknown(");
    HIBYTE(v9[1]) = -18;
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 41;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    return v9[0];
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PIKeypairsRotationReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PIKeypairsRotationReason(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1001BD574(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001BD590(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_1001BD5C0()
{
  result = qword_1002E08D8;
  if (!qword_1002E08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E08D8);
  }

  return result;
}

uint64_t sub_1001BD614()
{
  v1 = v0;
  v2 = type metadata accessor for PIDeviceKeypair(0);
  v3 = sub_10000307C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_10000307C(v9);
  v11 = *(v10 + 64);
  sub_100003774();
  __chkstk_darwin(v12);
  v14 = (&v27 - v13);
  sub_1001BDF08(v1, &v27 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v14[1];
    v16 = v14[4];
    v18 = v14[6];
    v17._countAndFlagsBits = v14[7];
    v19 = v14[8];
    v20 = v14[10];
    v21 = v14[11];
    v27 = 0x286572756C696166;
    v28 = 0xE800000000000000;
    v17._object = v19;
    String.append(_:)(v17);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    return v27;
  }

  else
  {
    sub_10002FD34(v14, v8, type metadata accessor for PIDeviceKeypair);
    v27 = 0;
    v28 = 0xE000000000000000;
    v24._countAndFlagsBits = 0x2873736563637573;
    v24._object = 0xE800000000000000;
    String.append(_:)(v24);
    _print_unlocked<A, B>(_:_:)();
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v23 = v27;
    sub_10002F56C(v8, type metadata accessor for PIDeviceKeypair);
  }

  return v23;
}

uint64_t sub_1001BD90C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000100276840 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001BD9E4(char a1)
{
  if (a1)
  {
    return 0x63617073656D616ELL;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1001BDA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BD90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BDA54(uint64_t a1)
{
  v2 = sub_1001BDC1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BDA90(uint64_t a1)
{
  v2 = sub_1001BDC1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void PIPersonalizedPrivateIdentifierMapping.Key.encode(to:)()
{
  sub_100004868();
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002E08E0, &qword_100245370);
  sub_100003724(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100004880();
  v10 = v3[4];
  sub_10000C4FC(v3, v3[3]);
  sub_1001BDC1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  sub_100005074();
}

unint64_t sub_1001BDC1C()
{
  result = qword_1002E08E8;
  if (!qword_1002E08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E08E8);
  }

  return result;
}

void PIPersonalizedPrivateIdentifierMapping.Key.init(from:)()
{
  sub_100004868();
  v2 = v1;
  v3 = sub_100099DF4(&qword_1002E08F0, &qword_100245378);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100004880();
  v7 = v2[4];
  sub_10000C4FC(v2, v2[3]);
  sub_1001BDC1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v8 = sub_100002960();
    v9(v8);
  }

  sub_100004118(v2);
  sub_100005074();
}

Swift::Int sub_1001BDE14()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001BDE78(void *a1@<X8>)
{
  PIPersonalizedPrivateIdentifierMapping.Key.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_1001BDEA8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  PIPersonalizedPrivateIdentifierMapping.Key.encode(to:)();
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.generationCounter.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_1001BDF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PIPersonalizedPrivateIdentifierMapping.HistoryItem.validityStartDate.getter()
{
  v2 = sub_10000309C();
  v3 = *(type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(v2) + 28);
  v4 = type metadata accessor for Date();
  v5 = sub_10000307C(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t PIPersonalizedPrivateIdentifierMapping.HistoryItem.rotationReason.getter()
{
  v1 = (v0 + *(type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1001BE050(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000100276880 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100276BE0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4B746E756F636361 && a2 == 0xEE00726961707965;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000100276C00 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461746F72 && a2 == 0xEE006E6F73616552;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x8000000100276C20 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001BE250(char a1)
{
  result = 0x4B746E756F636361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6E6F697461746F72;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1001BE334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BE050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BE35C(uint64_t a1)
{
  v2 = sub_1001BE68C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BE398(uint64_t a1)
{
  v2 = sub_1001BE68C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIPersonalizedPrivateIdentifierMapping.HistoryItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E08F8, &qword_100245388);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001BE68C();
  sub_10000A484();
  v27 = *v3;
  v26 = 0;
  sub_1001BE6E0();
  sub_100003B2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
    v15 = v14[5];
    LOBYTE(v27) = 1;
    sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_10002FE30(&qword_1002E0910);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v14[6];
    LOBYTE(v27) = 2;
    type metadata accessor for PIAccountKeypair();
    sub_10002FDAC();
    sub_10002F474(v17, v18);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v14[7];
    LOBYTE(v27) = 3;
    type metadata accessor for Date();
    sub_10002FD94();
    sub_10002F474(v20, v21);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v3 + v14[8];
    v23 = *v22;
    LOBYTE(v22) = v22[8];
    *&v27 = v23;
    BYTE8(v27) = v22;
    v26 = 4;
    sub_1001BE734();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v27) = *(v3 + v14[9]);
    v26 = 5;
    sub_1001BE788();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1001BE68C()
{
  result = qword_1002E0900;
  if (!qword_1002E0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0900);
  }

  return result;
}

unint64_t sub_1001BE6E0()
{
  result = qword_1002E0908;
  if (!qword_1002E0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0908);
  }

  return result;
}

unint64_t sub_1001BE734()
{
  result = qword_1002E0920;
  if (!qword_1002E0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0920);
  }

  return result;
}

unint64_t sub_1001BE788()
{
  result = qword_1002E0928;
  if (!qword_1002E0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0928);
  }

  return result;
}

void PIPersonalizedPrivateIdentifierMapping.HistoryItem.init(from:)()
{
  sub_100004868();
  v67 = v0;
  v2 = v1;
  v60 = v3;
  v4 = type metadata accessor for Date();
  v5 = sub_100003724(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v61 = v10 - v9;
  v62 = type metadata accessor for PIAccountKeypair();
  v11 = sub_10000307C(v62);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v16 = v15 - v14;
  v17 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_10000307C(v17);
  v19 = *(v18 + 64);
  sub_100003774();
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  v23 = sub_100099DF4(&qword_1002E0930, &qword_100245390);
  v24 = sub_100003724(v23);
  v63 = v25;
  v64 = v24;
  v27 = *(v26 + 64);
  sub_100003774();
  __chkstk_darwin(v28);
  sub_100004880();
  v68 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
  v29 = sub_10000307C(v68);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_10000306C();
  v34 = (v33 - v32);
  v36 = v2[3];
  v35 = v2[4];
  v69 = v2;
  v37 = sub_10000C4FC(v2, v36);
  sub_1001BE68C();
  v38 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    sub_10002FE9C();
    v39 = v34;
    v40 = v68;
    sub_100004118(v69);
    if (v37)
    {
      v41 = *(v40 + 24);
      sub_10002FE18();
      sub_10002F56C(&v39[v42], v43);
      if ((v35 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v35)
    {
      goto LABEL_9;
    }

    (*(v65 + 8))(&v39[*(v40 + 28)], v66);
    goto LABEL_9;
  }

  v67 = v16;
  sub_1001BEDE8();
  sub_10002FEA8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = v34;
  *v34 = v70;
  LOBYTE(v70) = 1;
  sub_10002FE54(&qword_1002E0940);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v68;
  sub_1001BEE3C(v22, v44 + v68[5]);
  LOBYTE(v70) = 2;
  sub_10002FDAC();
  sub_10002F474(v46, v47);
  v48 = v67;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v49 = v45[6];
  sub_10002FE00();
  sub_10002FD34(v48, v44 + v50, v51);
  LOBYTE(v70) = 3;
  sub_10002FD94();
  sub_10002F474(v52, v53);
  v54 = v61;
  v55 = v66;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v65 + 32))(v44 + v45[7], v54, v55);
  sub_1001BEEAC();
  sub_10002FEA8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v56 = BYTE8(v70);
  v57 = v44 + v45[8];
  *v57 = v70;
  *(v57 + 8) = v56;
  sub_1001BEF00();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v58 = sub_10002FDD8();
  v59(v58);
  *(v44 + v45[9]) = v70;
  sub_10002F50C(v44, v60, type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem);
  sub_100004118(v69);
  sub_10002F56C(v44, type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem);
LABEL_9:
  sub_100005074();
}

uint64_t sub_1001BED80(uint64_t a1)
{
  v2 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001BEDE8()
{
  result = qword_1002E0938;
  if (!qword_1002E0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0938);
  }

  return result;
}

uint64_t sub_1001BEE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001BEEAC()
{
  result = qword_1002E0950;
  if (!qword_1002E0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0950);
  }

  return result;
}

unint64_t sub_1001BEF00()
{
  result = qword_1002E0958;
  if (!qword_1002E0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0958);
  }

  return result;
}

uint64_t PIPersonalizedPrivateIdentifierMapping.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  return v1;
}

uint64_t PIPersonalizedPrivateIdentifierMapping.metadata.getter()
{
  v2 = sub_10000309C();
  v3 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(v2);
  return sub_10002F50C(v1 + *(v3 + 28), v0, type metadata accessor for PIPrivateIdentifierMetadata);
}

uint64_t PIPersonalizedPrivateIdentifierMapping.validityStartDate.getter()
{
  v2 = sub_10000309C();
  v3 = *(type metadata accessor for PIPersonalizedPrivateIdentifierMapping(v2) + 32);
  v4 = type metadata accessor for Date();
  v5 = sub_10000307C(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t PIPersonalizedPrivateIdentifierMapping.history.getter()
{
  v1 = *(v0 + *(type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0) + 36));
}

uint64_t sub_1001BF10C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100276BE0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4B746E756F636361 && a2 == 0xEE00726961707965;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000100276C00 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x79726F74736968 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001BF304(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x4B746E756F636361;
      break;
    case 3:
      result = 0x617461646174656DLL;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x79726F74736968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001BF3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BF10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BF3F4(uint64_t a1)
{
  v2 = sub_1001BF778();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BF430(uint64_t a1)
{
  v2 = sub_1001BF778();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIPersonalizedPrivateIdentifierMapping.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E0960, &qword_100245398);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001BF778();
  sub_10000A484();
  v14 = *(v3 + 2);
  v15 = *(v3 + 3);
  v30 = *v3;
  v31 = v14;
  v32 = v15;
  v29 = 0;
  sub_1001BF7CC();
  sub_100003B2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
    v17 = v16[5];
    LOBYTE(v30) = 1;
    sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_10002FE30(&qword_1002E0910);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v16[6];
    LOBYTE(v30) = 2;
    type metadata accessor for PIAccountKeypair();
    sub_10002FDAC();
    sub_10002F474(v19, v20);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v16[7];
    LOBYTE(v30) = 3;
    type metadata accessor for PIPrivateIdentifierMetadata();
    sub_10002FDE8();
    sub_10002F474(v22, v23);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = v16[8];
    LOBYTE(v30) = 4;
    type metadata accessor for Date();
    sub_10002FD94();
    sub_10002F474(v25, v26);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v30 = *(v3 + v16[9]);
    v29 = 5;
    sub_100099DF4(&qword_1002E0980, &qword_1002453A0);
    sub_10002F674(&qword_1002E0988, &qword_1002E0990);
    sub_10002FDC4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1001BF778()
{
  result = qword_1002E0968;
  if (!qword_1002E0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0968);
  }

  return result;
}

unint64_t sub_1001BF7CC()
{
  result = qword_1002E0970;
  if (!qword_1002E0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0970);
  }

  return result;
}

void PIPersonalizedPrivateIdentifierMapping.init(from:)()
{
  sub_100004868();
  v73 = v0;
  v2 = v1;
  v63 = v3;
  v4 = type metadata accessor for Date();
  v5 = sub_100003724(v4);
  v68 = v6;
  v69 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v64 = v10 - v9;
  v65 = type metadata accessor for PIPrivateIdentifierMetadata();
  v11 = sub_10000307C(v65);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v66 = v15 - v14;
  v67 = type metadata accessor for PIAccountKeypair();
  v16 = sub_10000307C(v67);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000306C();
  v21 = v20 - v19;
  v22 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_10000307C(v22);
  v24 = *(v23 + 64);
  sub_100003774();
  __chkstk_darwin(v25);
  v27 = &v63 - v26;
  v28 = sub_100099DF4(&qword_1002E0998, &qword_1002453A8);
  v29 = sub_100003724(v28);
  v70 = v30;
  v71 = v29;
  v32 = *(v31 + 64);
  sub_100003774();
  __chkstk_darwin(v33);
  v72 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
  v34 = sub_10000307C(v72);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_10000306C();
  v39 = v38 - v37;
  v41 = v2[3];
  v40 = v2[4];
  v74 = v2;
  sub_10000C4FC(v2, v41);
  sub_1001BF778();
  v42 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v42)
  {
    sub_100004118(v74);
  }

  else
  {
    v73 = v21;
    sub_1001BFE9C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = v76;
    v44 = v77;
    v45 = v39;
    *v39 = v75;
    *(v39 + 16) = v43;
    *(v39 + 24) = v44;
    LOBYTE(v75) = 1;
    sub_10002FE54(&qword_1002E0940);
    sub_10002FEC0();
    v46 = v27;
    sub_10002FED8();
    v47 = v72;
    sub_1001BEE3C(v46, v45 + v72[5]);
    LOBYTE(v75) = 2;
    sub_10002FDAC();
    sub_10002F474(v48, v49);
    sub_10002FEC0();
    v50 = v73;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v51 = v47[6];
    sub_10002FE00();
    sub_10002FD34(v50, v45 + v52, v53);
    LOBYTE(v75) = 3;
    sub_10002FDE8();
    sub_10002F474(v54, v55);
    sub_10002FEC0();
    v56 = v66;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10002FD34(v56, v45 + v47[7], type metadata accessor for PIPrivateIdentifierMetadata);
    LOBYTE(v75) = 4;
    sub_10002FD94();
    sub_10002F474(v57, v58);
    sub_10002FEC0();
    v59 = v64;
    v60 = v69;
    sub_10002FED8();
    (*(v68 + 32))(v45 + v47[8], v59, v60);
    sub_100099DF4(&qword_1002E0980, &qword_1002453A0);
    sub_10002F674(&qword_1002E09B0, &qword_1002E09B8);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v61 = sub_10002FE84();
    v62(v61, v71);
    *(v45 + v47[9]) = v75;
    sub_10002F50C(v45, v63, type metadata accessor for PIPersonalizedPrivateIdentifierMapping);
    sub_100004118(v74);
    sub_10002F56C(v45, type metadata accessor for PIPersonalizedPrivateIdentifierMapping);
  }

  sub_100005074();
}

unint64_t sub_1001BFE9C()
{
  result = qword_1002E09A0;
  if (!qword_1002E09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E09A0);
  }

  return result;
}

uint64_t sub_1001BFEF0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

unint64_t PIPersonalizedPrivateIdentifierMapping.Key.description.getter(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(39);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x7073656D616E202CLL;
  v9._object = 0xEC0000003D656361;
  String.append(_:)(v9);
  v10._countAndFlagsBits = a3;
  v10._object = a4;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0xD000000000000017;
}

uint64_t PIPersonalizedPrivateIdentifierMapping.HistoryItem.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(130);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x4979726F74736948;
  v3._object = 0xEB000000006D6574;
  String.append(_:)(v3);
  sub_10002FE90();
  String.append(_:)(v4);
  v5 = *v0;
  v6 = v0[1];
  v7._countAndFlagsBits = PIGenerationCounter.description.getter();
  String.append(_:)(v7);

  sub_10002FE90();
  String.append(_:)(v8);
  v9 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
  v10 = v0 + v9[5];
  v21._countAndFlagsBits = sub_1001BD614();
  sub_10002FEF8(v21);

  sub_10002FE90();
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  v12 = v1 + v9[6];
  v22._countAndFlagsBits = PIAccountKeypair.description.getter();
  sub_10002FEF8(v22);

  sub_10002FE90();
  String.append(_:)(v13);
  v14 = v9[7];
  type metadata accessor for Date();
  sub_10002FD94();
  sub_10002F474(v15, v16);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  sub_10002FEF8(v23);

  sub_10002FE90();
  v17._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v17);
  v24._countAndFlagsBits = PIKeypairsRotationReason.description.getter(*(v1 + v9[8]), *(v1 + v9[8] + 8));
  sub_10002FEF8(v24);

  sub_10002FE90();
  String.append(_:)(v18);
  sub_1001BD80C(*(v1 + v9[9]));
  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return 0;
}

uint64_t sub_1001C04C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
  result = Array.description.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_1001C0504()
{
  result = qword_1002E09C0;
  if (!qword_1002E09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E09C0);
  }

  return result;
}

unint64_t sub_1001C055C()
{
  result = qword_1002E09C8;
  if (!qword_1002E09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E09C8);
  }

  return result;
}

void sub_1001C05D8()
{
  sub_1001C06B4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PIAccountKeypair();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PIPrivateIdentifierMetadata();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          sub_1001C0780();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001C06B4()
{
  if (!qword_1002E0A38)
  {
    type metadata accessor for PIDeviceKeypair(255);
    sub_10002F474(&qword_1002E0A40, type metadata accessor for PIDeviceKeypair);
    sub_10002F474(&qword_1002E0A48, type metadata accessor for PIDeviceKeypair);
    v0 = type metadata accessor for PICodableResult();
    if (!v1)
    {
      atomic_store(v0, &qword_1002E0A38);
    }
  }
}

void sub_1001C0780()
{
  if (!qword_1002E0A50)
  {
    sub_10009A468(&qword_1002E0980, &qword_1002453A0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002E0A50);
    }
  }
}

void sub_1001C081C()
{
  sub_1001C06B4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PIAccountKeypair();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PIPersonalizedPrivateIdentifierMapping.Key.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001C09E0()
{
  result = qword_1002E0B30;
  if (!qword_1002E0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0B30);
  }

  return result;
}

unint64_t sub_1001C0A38()
{
  result = qword_1002E0B38;
  if (!qword_1002E0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0B38);
  }

  return result;
}

unint64_t sub_1001C0A90()
{
  result = qword_1002E0B40;
  if (!qword_1002E0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0B40);
  }

  return result;
}

unint64_t sub_1001C0AE8()
{
  result = qword_1002E0B48;
  if (!qword_1002E0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0B48);
  }

  return result;
}

unint64_t sub_1001C0B40()
{
  result = qword_1002E0B50;
  if (!qword_1002E0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0B50);
  }

  return result;
}

unint64_t sub_1001C0B98()
{
  result = qword_1002E0B58;
  if (!qword_1002E0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0B58);
  }

  return result;
}

unint64_t sub_1001C0BF0()
{
  result = qword_1002E0B60;
  if (!qword_1002E0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0B60);
  }

  return result;
}

unint64_t sub_1001C0C48()
{
  result = qword_1002E0B68;
  if (!qword_1002E0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0B68);
  }

  return result;
}

unint64_t sub_1001C0CA0()
{
  result = qword_1002E0B70;
  if (!qword_1002E0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0B70);
  }

  return result;
}

uint64_t sub_1001C0CFC(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000077;
  v3 = 0x6F4E657461746F72;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000020;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001002767F0;
    }

    else
    {
      v6 = 0x8000000100276820;
    }
  }

  else
  {
    v5 = 0x6F4E657461746F72;
    v6 = 0xE900000000000077;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000020;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001002767F0;
    }

    else
    {
      v2 = 0x8000000100276820;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1001C0DEC(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x63617073656D616ELL;
  v4 = a1;
  v5 = 0x63617073656D616ELL;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      goto LABEL_9;
    case 2:
      v5 = 0x4B746E756F636361;
      v8 = 0x726961707965;
      goto LABEL_7;
    case 3:
      v5 = 0x6E6F697461746F72;
      v8 = 0x6E6F73616552;
LABEL_7:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      goto LABEL_9;
    case 4:
      v5 = 0xD000000000000011;
      v7 = "untKeypair";
      goto LABEL_4;
    case 5:
      v6 = 0x80000001002768A0;
      v5 = 0xD000000000000010;
      goto LABEL_9;
    default:
      v5 = 0xD000000000000011;
      v7 = "resetLastRotationDateToNow";
LABEL_4:
      v6 = v7 | 0x8000000000000000;
LABEL_9:
      switch(a2)
      {
        case 1:
          goto LABEL_17;
        case 2:
          v3 = 0x4B746E756F636361;
          v10 = 0x726961707965;
          goto LABEL_15;
        case 3:
          v3 = 0x6E6F697461746F72;
          v10 = 0x6E6F73616552;
LABEL_15:
          v2 = v10 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          goto LABEL_17;
        case 4:
          v3 = 0xD000000000000011;
          v9 = "untKeypair";
          goto LABEL_12;
        case 5:
          v2 = 0x80000001002768A0;
          v3 = 0xD000000000000010;
          goto LABEL_17;
        default:
          v3 = 0xD000000000000011;
          v9 = "resetLastRotationDateToNow";
LABEL_12:
          v2 = v9 | 0x8000000000000000;
LABEL_17:
          if (v5 == v3 && v6 == v2)
          {
            v12 = 1;
          }

          else
          {
            v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          return v12 & 1;
      }
  }
}

uint64_t sub_1001C0FC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461746F72 && a2 == 0xEE006E6F73616552;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000100276DF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000100276880 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1684632949 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x8000000100276E10 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001002768A0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001DLL && 0x8000000100276E30 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000100276E50 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ELL && 0x8000000100276E70 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001CLL && 0x8000000100276E90 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000021 && 0x8000000100276EB0 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001C131C(char a1)
{
  result = 0x6E6F697461746F72;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 1684632949;
      break;
    case 4:
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001C147C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C0FC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C14A4(uint64_t a1)
{
  v2 = sub_1001C2B64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C14E0(uint64_t a1)
{
  v2 = sub_1001C2B64();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static PIPrivateIdentifierMetadata.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v13);
  v15 = *(v14 + 64);
  sub_100003774();
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v19 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C(v19);
  v21 = *(v20 + 64);
  sub_100003774();
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  v25 = *a1;
  v26 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v26)
    {
      case 1:
        if (v25 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v25 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v25 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v25 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v25 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v25)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v25 != v26)
  {
    return 0;
  }

LABEL_6:
  if (*(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v27 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v27)
  {
    return 0;
  }

  v28 = type metadata accessor for PIPrivateIdentifierMetadata();
  sub_10003CF3C(v28[7]);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10003CF3C(v28[8]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10003CF3C(v28[9]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10003CF3C(v28[10]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v29 = v28[11];
  v30 = *(v19 + 48);
  sub_1000A9914(a1 + v29, v24);
  sub_1000A9914(a2 + v29, &v24[v30]);
  sub_1000071D8(v24);
  if (v27)
  {
    sub_1000071D8(&v24[v30]);
    if (v27)
    {
      sub_100004E24(v24, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_36;
    }

LABEL_34:
    sub_100004E24(v24, &qword_1002DACF0, &qword_100232140);
    return 0;
  }

  sub_1000A9914(v24, v18);
  sub_1000071D8(&v24[v30]);
  if (v32)
  {
    (*(v7 + 8))(v18, v4);
    goto LABEL_34;
  }

  (*(v7 + 32))(v12, &v24[v30], v4);
  sub_100030218();
  sub_10002FF90(v33, v34);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v7 + 8);
  v36(v12, v4);
  v36(v18, v4);
  sub_100004E24(v24, &qword_1002DA970, &qword_1002318B0);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v37 = v28[12];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 32);
  v40 = a2 + v37;
  v41 = *(v40 + 32);
  if (v39)
  {
    if ((*(v40 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(v40 + 32) & 1) != 0 || !static PIScheduledRotationConfiguration.__derived_struct_equals(_:_:)(*v38, v38[1], v38[2], v38[3], *v40, *(v40 + 8), *(v40 + 16), *(v40 + 24)))
  {
    return 0;
  }

  sub_10003CF48(v28[13]);
  if (v43)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    sub_10003CF28();
    if (v44)
    {
      return 0;
    }
  }

  sub_10003CF48(v28[14]);
  if (v46)
  {
    return (v45 & 1) != 0;
  }

  sub_10003CF28();
  return (v47 & 1) == 0;
}

uint64_t type metadata accessor for PIPrivateIdentifierMetadata()
{
  result = qword_1002E0C08;
  if (!qword_1002E0C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PIPrivateIdentifierMetadata.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E0B78, &qword_100245990);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = v38 - v11;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = sub_10000492C();
  sub_10000C4FC(v15, v16);
  sub_1001C2B64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *(v3 + 8);
  *&v38[0] = *v3;
  BYTE8(v38[0]) = v17;
  v40 = 0;
  sub_1001BE734();
  sub_100030264();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v38[0]) = *(v3 + 9);
    v40 = 1;
    sub_1001BE788();
    sub_100030264();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v38[0] = *(v3 + 16);
    v40 = 2;
    sub_1001BE6E0();
    sub_100030264();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = type metadata accessor for PIPrivateIdentifierMetadata();
    v19 = v18[7];
    LOBYTE(v38[0]) = 3;
    type metadata accessor for UUID();
    sub_100030230();
    sub_10002FF90(v20, v21);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v18[8];
    LOBYTE(v38[0]) = 4;
    type metadata accessor for Date();
    sub_100030218();
    sub_10002FF90(v23, v24);
    sub_100030248();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = v18[9];
    LOBYTE(v38[0]) = 5;
    sub_100030248();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = v18[10];
    LOBYTE(v38[0]) = 6;
    sub_100030248();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v18[11];
    LOBYTE(v38[0]) = 7;
    sub_100030248();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28 = v3 + v18[12];
    v29 = *(v28 + 32);
    v30 = *(v28 + 16);
    v38[0] = *v28;
    v38[1] = v30;
    v39 = v29;
    v40 = 8;
    sub_1001C2BB8();
    sub_100030264();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31 = (v3 + v18[13]);
    v32 = *v31;
    v33 = *(v31 + 8);
    sub_100030300(9);
    v34 = (v3 + v18[14]);
    v35 = *v34;
    v36 = *(v34 + 8);
    sub_100030300(10);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t PIPrivateIdentifierMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  v78 = &v73 - v7;
  v85 = type metadata accessor for Date();
  v8 = sub_100003724(v85);
  v87 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v73 - v15;
  __chkstk_darwin(v17);
  v18 = type metadata accessor for UUID();
  v19 = sub_100003724(v18);
  v81 = v20;
  v82 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_10000306C();
  v25 = v24 - v23;
  v80 = sub_100099DF4(&qword_1002E0B98, &qword_100245998);
  sub_100003724(v80);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_100003774();
  __chkstk_darwin(v30);
  v32 = &v73 - v31;
  v88 = type metadata accessor for PIPrivateIdentifierMetadata();
  v33 = sub_10000307C(v88);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_10000306C();
  v86 = (v37 - v36);
  v38 = a1[3];
  v39 = a1[4];
  v84 = a1;
  v40 = sub_10000C4FC(a1, v38);
  sub_1001C2B64();
  v79 = v32;
  v41 = v83;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v41)
  {
    v83 = v16;
    v76 = v13;
    v92 = 0;
    sub_1001BEEAC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = BYTE8(v89);
    v48 = v86;
    *v86 = v89;
    *(v48 + 8) = v47;
    v92 = 1;
    sub_1001BEF00();
    sub_1000302A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v48 + 9) = v89;
    v92 = 2;
    sub_1001BEDE8();
    sub_1000302A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v48 + 1) = v89;
    LOBYTE(v89) = 3;
    sub_100030230();
    sub_10002FF90(v49, v50);
    v51 = v82;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v81 + 32))(v48 + v88[7], v25, v51);
    LOBYTE(v89) = 4;
    sub_100030218();
    sub_10002FF90(v52, v53);
    sub_10003027C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v54 = v88;
    v55 = *(v87 + 32);
    v56 = sub_1000302E0(v88[8]);
    v74 = v58;
    v75 = v57;
    v58(v56);
    LOBYTE(v89) = 5;
    sub_10003027C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v59 = sub_1000302E0(v54[9]);
    v74(v59);
    LOBYTE(v89) = 6;
    sub_10003027C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v83 = v27;
    v60 = sub_1000302E0(v54[10]);
    v74(v60);
    LOBYTE(v89) = 7;
    v61 = v78;
    sub_10003027C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v61, v48 + v88[11]);
    v92 = 8;
    sub_1001C2C0C();
    sub_1000302A8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v62 = v91;
    v63 = v48 + v88[12];
    v64 = v90;
    *v63 = v89;
    *(v63 + 1) = v64;
    v63[32] = v62;
    LOBYTE(v89) = 9;
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v86 + v88[13];
    *v66 = v65;
    v66[8] = v67 & 1;
    LOBYTE(v89) = 10;
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v70 = v69;
    (*(v27 + 1))(v79, v80);
    v71 = v86;
    v72 = v86 + v88[14];
    *v72 = v68;
    v72[8] = v70 & 1;
    sub_1001C2C60(v71, v77);
    sub_100004118(v84);
    return sub_1001C2CC4(v71);
  }

  sub_100030294();
  v42 = v85;
  v43 = v86;
  result = sub_100004118(v84);
  v46 = v88;
  if (v32)
  {
    v45 = *(v87 + 8);
    result = v45(&v43[v88[8]], v42);
    if (v38)
    {
      goto LABEL_9;
    }

LABEL_11:
    if (!v40)
    {
      goto LABEL_15;
    }

    v45 = *(v87 + 8);
    goto LABEL_13;
  }

  if (!v38)
  {
    goto LABEL_11;
  }

  v45 = *(v87 + 8);
LABEL_9:
  result = v45(&v43[v46[9]], v42);
  if ((v40 & 1) == 0)
  {
LABEL_15:
    if (!v25)
    {
      return result;
    }

    return sub_100004E24(&v43[v46[11]], &qword_1002DA970, &qword_1002318B0);
  }

LABEL_13:
  result = v45(&v43[v46[10]], v42);
  if (v25)
  {
    return sub_100004E24(&v43[v46[11]], &qword_1002DA970, &qword_1002318B0);
  }

  return result;
}

uint64_t sub_1001C24D8()
{
  v1 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v1);
  v3 = *(v2 + 64);
  sub_100003774();
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Date();
  v8 = sub_100003724(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000306C();
  v15 = v14 - v13;
  v16 = type metadata accessor for PIPrivateIdentifierMetadata();
  sub_1000A9914(v0 + *(v16 + 44), v6);
  if (sub_100004DFC(v6, 1, v7) == 1)
  {
    sub_100004E24(v6, &qword_1002DA970, &qword_1002318B0);
    v17 = 0;
  }

  else
  {
    (*(v10 + 32))(v15, v6, v7);
    v18 = *(v16 + 36);
    v17 = static Date.> infix(_:_:)();
    (*(v10 + 8))(v15, v7);
  }

  return v17 & 1;
}

unint64_t sub_1001C2B64()
{
  result = qword_1002E0B80;
  if (!qword_1002E0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0B80);
  }

  return result;
}

unint64_t sub_1001C2BB8()
{
  result = qword_1002E0B90;
  if (!qword_1002E0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0B90);
  }

  return result;
}

unint64_t sub_1001C2C0C()
{
  result = qword_1002E0BA8;
  if (!qword_1002E0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0BA8);
  }

  return result;
}

uint64_t sub_1001C2C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIPrivateIdentifierMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C2CC4(uint64_t a1)
{
  v2 = type metadata accessor for PIPrivateIdentifierMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001C2D48()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1000A1F0C();
      if (v2 <= 0x3F)
      {
        sub_10003D104(319, &unk_1002E0C18);
        if (v3 <= 0x3F)
        {
          sub_10003D104(319, &qword_1002DC7B8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PIPrivateIdentifierMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001C2F44()
{
  result = qword_1002E0C70;
  if (!qword_1002E0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0C70);
  }

  return result;
}

unint64_t sub_1001C2F9C()
{
  result = qword_1002E0C78;
  if (!qword_1002E0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0C78);
  }

  return result;
}

unint64_t sub_1001C2FF4()
{
  result = qword_1002E0C80;
  if (!qword_1002E0C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0C80);
  }

  return result;
}

uint64_t PIScheduledRotationConfiguration.description.getter()
{
  sub_100030404();
  _StringGuts.grow(_:)(48);
  v0._countAndFlagsBits = 60;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000020;
  v1._object = 0x8000000100245B60;
  String.append(_:)(v1);
  v2._object = 0x8000000100276EE0;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000100276F00;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

uint64_t sub_1001C3174(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7889261 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F697463617266 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1001C328C(char a1)
{
  if (!a1)
  {
    return 7235949;
  }

  if (a1 == 1)
  {
    return 7889261;
  }

  return 0x6E6F697463617266;
}

uint64_t sub_1001C32DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C3174(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C3304(uint64_t a1)
{
  v2 = sub_1001C34F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C3340(uint64_t a1)
{
  v2 = sub_1001C34F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static PIScheduledRotationConfiguration.JitterConfiguration.__derived_struct_equals(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 == a4;
  if (a2 != a5)
  {
    v6 = 0;
  }

  return a3 == a6 && v6;
}

uint64_t PIScheduledRotationConfiguration.JitterConfiguration.encode(to:)(void *a1)
{
  v3 = sub_100099DF4(&qword_1002E0C88, &qword_100245BA8);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v13[-v9];
  v11 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001C34F8();
  sub_100030418();
  v13[15] = 0;
  sub_1000303A8();
  if (!v1)
  {
    v13[14] = 1;
    sub_1000303A8();
    v13[13] = 2;
    sub_1000303A8();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_1001C34F8()
{
  result = qword_1002E0C90;
  if (!qword_1002E0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0C90);
  }

  return result;
}

double PIScheduledRotationConfiguration.JitterConfiguration.init(from:)(uint64_t *a1)
{
  v2 = sub_100099DF4(&qword_1002E0C98, &qword_100245BB0);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  v6 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001C34F8();
  sub_1000303E0();
  sub_1000303C4();
  v8 = v7;
  sub_1000303C4();
  sub_1000303C4();
  v10 = sub_10000BD0C();
  v11(v10);
  sub_100004118(a1);
  return v8;
}

void sub_1001C36E4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = PIScheduledRotationConfiguration.JitterConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1001C3714(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return PIScheduledRotationConfiguration.JitterConfiguration.encode(to:)(a1);
}

uint64_t sub_1001C3744(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000100276F20 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100276F40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1001C3818(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1001C3858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C3744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C3880(uint64_t a1)
{
  v2 = sub_1001C3A7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C38BC(uint64_t a1)
{
  v2 = sub_1001C3A7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static PIScheduledRotationConfiguration.__derived_struct_equals(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a2 == a6;
  if (a3 != a7)
  {
    v8 = 0;
  }

  if (a4 != a8)
  {
    v8 = 0;
  }

  return a1 == a5 && v8;
}

uint64_t PIScheduledRotationConfiguration.encode(to:)()
{
  sub_100030404();
  v5 = v4;
  v6 = sub_100099DF4(&qword_1002E0CA0, &qword_100245BB8);
  sub_100003724(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  v14 = v5[4];
  sub_10000C4FC(v5, v5[3]);
  sub_1001C3A7C();
  sub_100030418();
  LOBYTE(v17) = 0;
  sub_1000303A8();
  if (!v0)
  {
    v17 = v3;
    v18 = v2;
    v19 = v1;
    v20 = 1;
    sub_1001C3AD0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v13, v6);
}

unint64_t sub_1001C3A7C()
{
  result = qword_1002E0CA8;
  if (!qword_1002E0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0CA8);
  }

  return result;
}

unint64_t sub_1001C3AD0()
{
  result = qword_1002E0CB0;
  if (!qword_1002E0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0CB0);
  }

  return result;
}

double PIScheduledRotationConfiguration.init(from:)(uint64_t *a1)
{
  v2 = sub_100099DF4(&qword_1002E0CB8, &qword_100245BC0);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  v6 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001C3A7C();
  sub_1000303E0();
  sub_1000303C4();
  v8 = v7;
  sub_1001C3CC0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = sub_10000BD0C();
  v10(v9);
  sub_100004118(a1);
  return v8;
}

unint64_t sub_1001C3CC0()
{
  result = qword_1002E0CC0;
  if (!qword_1002E0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0CC0);
  }

  return result;
}

void sub_1001C3D28(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = PIScheduledRotationConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1001C3D58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return PIScheduledRotationConfiguration.encode(to:)();
}

uint64_t sub_1001C3D78()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return PIScheduledRotationConfiguration.description.getter();
}

uint64_t sub_1001C3D84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C3DA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PIScheduledRotationConfiguration.JitterConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PIScheduledRotationConfiguration.JitterConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PIScheduledRotationConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIScheduledRotationConfiguration.JitterConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001C3FF8()
{
  result = qword_1002E0CC8;
  if (!qword_1002E0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0CC8);
  }

  return result;
}

unint64_t sub_1001C4050()
{
  result = qword_1002E0CD0;
  if (!qword_1002E0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0CD0);
  }

  return result;
}

unint64_t sub_1001C40A8()
{
  result = qword_1002E0CD8;
  if (!qword_1002E0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0CD8);
  }

  return result;
}

unint64_t sub_1001C4100()
{
  result = qword_1002E0CE0;
  if (!qword_1002E0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0CE0);
  }

  return result;
}

unint64_t sub_1001C4158()
{
  result = qword_1002E0CE8;
  if (!qword_1002E0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0CE8);
  }

  return result;
}

unint64_t sub_1001C41B0()
{
  result = qword_1002E0CF0;
  if (!qword_1002E0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0CF0);
  }

  return result;
}

__n128 PIScheduledRotationConfigurationUpdate.scheduledRotationConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t PIScheduledRotationConfigurationUpdate.deviceKeypairOnlyRotationInterval.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_1001C4230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F697661686562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x8000000100276E70 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000021 && 0x8000000100276EB0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1001C434C(char a1)
{
  if (!a1)
  {
    return 0x726F697661686562;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ELL;
  }

  return 0xD000000000000021;
}

uint64_t sub_1001C43B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C4230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C43D8(uint64_t a1)
{
  v2 = sub_1001C45F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C4414(uint64_t a1)
{
  v2 = sub_1001C45F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIScheduledRotationConfigurationUpdate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E0CF8, &qword_100245F50);
  v6 = sub_100003724(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = v18 - v11;
  v13 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001C45F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18[0]) = *v3;
  v20 = 0;
  sub_1001C4644();
  sub_10003054C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 24);
    v18[0] = *(v3 + 8);
    v18[1] = v14;
    v19 = *(v3 + 40);
    v20 = 1;
    sub_1001C2BB8();
    sub_10003054C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    LOBYTE(v18[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1001C45F0()
{
  result = qword_1002E0D00;
  if (!qword_1002E0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D00);
  }

  return result;
}

unint64_t sub_1001C4644()
{
  result = qword_1002E0D08;
  if (!qword_1002E0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D08);
  }

  return result;
}

uint64_t PIScheduledRotationConfigurationUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100099DF4(&qword_1002E0D10, &qword_100245F58);
  v6 = sub_100003724(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v20 - v11;
  v13 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001C45F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004118(a1);
  }

  v26 = 0;
  sub_1001C48AC();
  sub_100030530();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v23;
  v26 = 1;
  sub_1001C2C0C();
  sub_100030530();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v24;
  v21 = v23;
  v27 = v25;
  LOBYTE(v23) = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v8 + 8))(v12, v5);
  v26 = v27;
  v22 = v17 & 1;
  result = sub_100004118(a1);
  *a2 = v14;
  v19 = v21;
  *(a2 + 24) = v20;
  *(a2 + 8) = v19;
  *(a2 + 40) = v26;
  *(a2 + 48) = v15;
  *(a2 + 56) = v22;
  return result;
}

unint64_t sub_1001C48AC()
{
  result = qword_1002E0D18;
  if (!qword_1002E0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D18);
  }

  return result;
}

double sub_1001C4900@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  PIScheduledRotationConfigurationUpdate.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

PrivateIdentifiers::PIScheduledRotationConfigurationUpdate::Behavior_optional __swiftcall PIScheduledRotationConfigurationUpdate.Behavior.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BCC58, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t PIScheduledRotationConfigurationUpdate.Behavior.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4E657461746F72;
  }

  if (a1 == 1)
  {
    return 0xD000000000000020;
  }

  return 0xD00000000000001ALL;
}

PrivateIdentifiers::PIScheduledRotationConfigurationUpdate::Behavior_optional sub_1001C4A3C@<W0>(Swift::String *a1@<X0>, PrivateIdentifiers::PIScheduledRotationConfigurationUpdate::Behavior_optional *a2@<X8>)
{
  result.value = PIScheduledRotationConfigurationUpdate.Behavior.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001C4A6C@<X0>(uint64_t *a1@<X8>)
{
  result = PIScheduledRotationConfigurationUpdate.Behavior.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001C4CEC()
{
  result = qword_1002E0D20;
  if (!qword_1002E0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D20);
  }

  return result;
}

uint64_t sub_1001C4D44(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[57])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C4D80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1001C4E08()
{
  result = qword_1002E0D28;
  if (!qword_1002E0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D28);
  }

  return result;
}

unint64_t sub_1001C4E60()
{
  result = qword_1002E0D30;
  if (!qword_1002E0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D30);
  }

  return result;
}

unint64_t sub_1001C4EB8()
{
  result = qword_1002E0D38;
  if (!qword_1002E0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D38);
  }

  return result;
}

unint64_t sub_1001C4F0C()
{
  result = qword_1002E0D40;
  if (!qword_1002E0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D40);
  }

  return result;
}

uint64_t sub_1001C4F68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
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

uint64_t sub_1001C5008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C4F68(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001C5034(uint64_t a1)
{
  v2 = sub_1001C51D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C5070(uint64_t a1)
{
  v2 = sub_1001C51D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.Key.encode(to:)(void *a1)
{
  v3 = sub_100099DF4(&qword_1002E0D48, &qword_100246230);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100003B38();
  v9 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001C51D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_1001C51D4()
{
  result = qword_1002E0D50;
  if (!qword_1002E0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D50);
  }

  return result;
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.Key.init(from:)(uint64_t *a1)
{
  v3 = sub_100099DF4(&qword_1002E0D58, &unk_100246238);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = sub_10000C4FC(a1, a1[3]);
  sub_1001C51D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v10, v3);
  }

  sub_100004118(a1);
  return v12;
}

Swift::Int sub_1001C5374()
{
  v1 = *v0;
  v2 = v0[1];
  return PIUnpersonalizedPrivateIdentifierMapping.Key.hashValue.getter();
}

uint64_t sub_1001C537C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = PIUnpersonalizedPrivateIdentifierMapping.Key.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1001C53A8(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return PIUnpersonalizedPrivateIdentifierMapping.Key.encode(to:)(a1);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.validityStartDate.getter()
{
  v2 = sub_10000309C();
  v3 = *(type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(v2) + 24);
  v4 = type metadata accessor for Date();
  v5 = sub_10000307C(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.rotationReason.getter()
{
  v1 = (v0 + *(type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1001C54BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000100276880 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100276BE0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000100276C00 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461746F72 && a2 == 0xEE006E6F73616552;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x8000000100276C20 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1001C566C(char a1)
{
  result = 0x6E6F697461746F72;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1001C572C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C54BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C5754(uint64_t a1)
{
  v2 = sub_1001C5A08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C5790(uint64_t a1)
{
  v2 = sub_1001C5A08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E0D60, &qword_100246248);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = a1[3];
  sub_10000C4FC(a1, v13);
  sub_1001C5A08();
  sub_10000A484();
  v22 = *v3;
  v21 = 0;
  sub_1001BE6E0();
  sub_100030CBC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(0);
    sub_100030D30(v14);
    sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_10002FE30(&qword_1002E0910);
    sub_100030CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100030D44();
    type metadata accessor for Date();
    sub_100030C90();
    sub_100030578(v15, v16);
    sub_100030CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v3 + *(v13 + 28);
    v18 = *v17;
    LOBYTE(v17) = v17[8];
    *&v22 = v18;
    BYTE8(v22) = v17;
    v21 = 3;
    sub_1001BE734();
    sub_100030CBC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = *(v3 + *(v13 + 32));
    v21 = 4;
    sub_1001BE788();
    sub_100030CBC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1001C5A08()
{
  result = qword_1002E0D68;
  if (!qword_1002E0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D68);
  }

  return result;
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = type metadata accessor for Date();
  v5 = sub_100003724(v4);
  v42 = v6;
  v43 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_10000307C(v12);
  v14 = *(v13 + 64);
  sub_100003774();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v45 = sub_100099DF4(&qword_1002E0D70, &qword_100246250);
  sub_100003724(v45);
  v19 = *(v18 + 64);
  sub_100003774();
  __chkstk_darwin(v20);
  sub_100003B38();
  v47 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(0);
  v21 = sub_10000307C(v47);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10000306C();
  v26 = (v25 - v24);
  v27 = a1[3];
  v28 = a1[4];
  v48 = a1;
  sub_10000C4FC(a1, v27);
  sub_1001C5A08();
  v44 = v2;
  v29 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    return sub_100004118(v48);
  }

  v50 = 0;
  sub_1001BEDE8();
  sub_100030CE8();
  *v26 = v49;
  LOBYTE(v49) = 1;
  sub_10002FE54(&qword_1002E0940);
  sub_100030D0C();
  v30 = v17;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v47;
  sub_1001BEE3C(v30, &v26[v47[5]]);
  LOBYTE(v49) = 2;
  sub_100030C90();
  sub_100030578(v32, v33);
  sub_100030D0C();
  v34 = v11;
  v35 = v43;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v42 + 32))(&v26[v31[6]], v34, v35);
  v50 = 3;
  sub_1001BEEAC();
  sub_100030CE8();
  v36 = BYTE8(v49);
  v37 = &v26[v31[7]];
  *v37 = v49;
  v37[8] = v36;
  v50 = 4;
  sub_1001BEF00();
  sub_100030CE8();
  v38 = sub_100030D18();
  v39(v38);
  v26[v31[8]] = v49;
  sub_100030608(v26, v41, type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem);
  sub_100004118(v48);
  return sub_10003067C(v26, type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.metadata.getter()
{
  v2 = sub_10000309C();
  v3 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(v2);
  return sub_100030608(v1 + *(v3 + 24), v0, type metadata accessor for PIPrivateIdentifierMetadata);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.validityStartDate.getter()
{
  v2 = sub_10000309C();
  v3 = *(type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(v2) + 28);
  v4 = type metadata accessor for Date();
  v5 = sub_10000307C(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.history.getter()
{
  v1 = *(v0 + *(type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0) + 32));
}

uint64_t sub_1001C6004(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100276BE0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000100276C00 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x79726F74736968 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1001C61AC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x617461646174656DLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x79726F74736968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001C6250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C6004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C6278(uint64_t a1)
{
  v2 = sub_1001C6598();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C62B4(uint64_t a1)
{
  v2 = sub_1001C6598();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E0D78, &qword_100246258);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = a1[3];
  sub_10000C4FC(a1, v13);
  sub_1001C6598();
  sub_10000A484();
  v14 = v3[1];
  v24 = *v3;
  v25 = v14;
  v23 = 0;
  sub_1001C65EC();
  sub_100030CBC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
    sub_100030D30(v15);
    sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_10002FE30(&qword_1002E0910);
    sub_100030CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100030D44();
    type metadata accessor for PIPrivateIdentifierMetadata();
    sub_100030CD0();
    sub_100030578(v16, v17);
    sub_100030CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v13 + 28);
    LOBYTE(v24) = 3;
    type metadata accessor for Date();
    sub_100030C90();
    sub_100030578(v19, v20);
    sub_100030CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *(v3 + *(v13 + 32));
    v23 = 4;
    sub_100099DF4(&qword_1002E0D90, &qword_100246260);
    sub_1000306D4(&qword_1002E0D98, &qword_1002E0DA0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1001C6598()
{
  result = qword_1002E0D80;
  if (!qword_1002E0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D80);
  }

  return result;
}

unint64_t sub_1001C65EC()
{
  result = qword_1002E0D88;
  if (!qword_1002E0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0D88);
  }

  return result;
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = type metadata accessor for Date();
  v51 = sub_100003724(v4);
  v52 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v51);
  sub_10000306C();
  v48 = v9 - v8;
  v49 = type metadata accessor for PIPrivateIdentifierMetadata();
  v10 = sub_10000307C(v49);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v50 = v14 - v13;
  v15 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_10000307C(v15);
  v17 = *(v16 + 64);
  sub_100003774();
  __chkstk_darwin(v18);
  sub_100003B38();
  v55 = sub_100099DF4(&qword_1002E0DA8, &qword_100246268);
  sub_100003724(v55);
  v53 = v19;
  v21 = *(v20 + 64);
  sub_100003774();
  __chkstk_darwin(v22);
  v24 = v46 - v23;
  v25 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
  v26 = sub_10000307C(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_10000306C();
  v31 = (v30 - v29);
  v32 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001C6598();
  v54 = v24;
  v33 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    return sub_100004118(a1);
  }

  v56 = v25;
  v59 = 0;
  sub_1001C6BFC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v58;
  *v31 = v57;
  *(v31 + 1) = v34;
  v46[1] = v34;
  LOBYTE(v57) = 1;
  sub_10002FE54(&qword_1002E0940);
  sub_100030D0C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v56;
  sub_1001BEE3C(v2, &v31[v56[5]]);
  LOBYTE(v57) = 2;
  sub_100030CD0();
  sub_100030578(v36, v37);
  sub_100030D0C();
  v38 = v50;
  v49 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1001C6C50(v38, &v31[v35[6]]);
  LOBYTE(v57) = 3;
  sub_100030C90();
  sub_100030578(v39, v40);
  sub_100030D0C();
  v41 = v48;
  v42 = v51;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v52 + 32))(&v31[v35[7]], v41, v42);
  sub_100099DF4(&qword_1002E0D90, &qword_100246260);
  v59 = 4;
  sub_1000306D4(&qword_1002E0DB8, &qword_1002E0DC0);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v43 = sub_100030D24();
  v44(v43);
  *&v31[v35[8]] = v57;
  sub_100030608(v31, v47, type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping);
  sub_100004118(a1);
  return sub_10003067C(v31, type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping);
}

unint64_t sub_1001C6BFC()
{
  result = qword_1002E0DB0;
  if (!qword_1002E0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0DB0);
  }

  return result;
}

uint64_t sub_1001C6C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIPrivateIdentifierMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C6CB4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.Key.description.getter(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(17);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0x6D616E2079654B3CLL;
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(111);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x4979726F74736948;
  v3._object = 0xEB000000006D6574;
  String.append(_:)(v3);
  sub_10002FE90();
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  v5 = *v0;
  v6 = v0[1];
  v7._countAndFlagsBits = PIGenerationCounter.description.getter();
  String.append(_:)(v7);

  sub_10002FE90();
  String.append(_:)(v8);
  v9 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(0);
  v10 = v0 + v9[5];
  v11._countAndFlagsBits = sub_1001BD614();
  String.append(_:)(v11);

  sub_10002FE90();
  String.append(_:)(v12);
  v13 = v9[6];
  type metadata accessor for Date();
  sub_100030C90();
  sub_100030578(v14, v15);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  sub_10002FE90();
  String.append(_:)(v17);
  v18._countAndFlagsBits = PIKeypairsRotationReason.description.getter(*(v1 + v9[7]), *(v1 + v9[7] + 8));
  String.append(_:)(v18);

  sub_10002FE90();
  v19._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v19);
  sub_1001BD80C(*(v1 + v9[8]));
  v20._countAndFlagsBits = 62;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return 0;
}

uint64_t sub_1001C71C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(0);
  result = Array.description.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_1001C7200()
{
  result = qword_1002E0DC8;
  if (!qword_1002E0DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0DC8);
  }

  return result;
}

unint64_t sub_1001C7258()
{
  result = qword_1002E0DD0;
  if (!qword_1002E0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0DD0);
  }

  return result;
}

void sub_1001C72D8()
{
  sub_1001C06B4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PIPrivateIdentifierMetadata();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_1001C739C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001C739C()
{
  if (!qword_1002E0E40)
  {
    sub_10009A468(&qword_1002E0D90, &qword_100246260);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002E0E40);
    }
  }
}

void sub_1001C7438()
{
  sub_1001C06B4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PIUnpersonalizedPrivateIdentifierMapping.Key.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1001C75B4()
{
  result = qword_1002E0F20;
  if (!qword_1002E0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F20);
  }

  return result;
}

unint64_t sub_1001C760C()
{
  result = qword_1002E0F28;
  if (!qword_1002E0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F28);
  }

  return result;
}

unint64_t sub_1001C7664()
{
  result = qword_1002E0F30;
  if (!qword_1002E0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F30);
  }

  return result;
}

unint64_t sub_1001C76BC()
{
  result = qword_1002E0F38;
  if (!qword_1002E0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F38);
  }

  return result;
}

unint64_t sub_1001C7714()
{
  result = qword_1002E0F40;
  if (!qword_1002E0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F40);
  }

  return result;
}

unint64_t sub_1001C776C()
{
  result = qword_1002E0F48;
  if (!qword_1002E0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F48);
  }

  return result;
}

unint64_t sub_1001C77C4()
{
  result = qword_1002E0F50;
  if (!qword_1002E0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F50);
  }

  return result;
}

unint64_t sub_1001C781C()
{
  result = qword_1002E0F58;
  if (!qword_1002E0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F58);
  }

  return result;
}

unint64_t sub_1001C7874()
{
  result = qword_1002E0F60;
  if (!qword_1002E0F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F60);
  }

  return result;
}

uint64_t sub_1001C78CC(void *a1, void *a2)
{
  v3 = a1[1];
  if (v3)
  {
    v9[0] = *a1;
    v9[1] = v3;
    memcpy(v10, a1 + 2, sizeof(v10));
    v4 = a2[1];
    if (v4)
    {
      v7[0] = *a2;
      v7[1] = v4;
      memcpy(v8, a2 + 2, sizeof(v8));
      v5 = static PICodableError.__derived_struct_equals(_:_:)(v9, v7);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = a2[1] == 0;
  }

  return v5 & 1;
}

uint64_t sub_1001C7964(void *a1)
{
  v2 = v1;
  v4 = sub_100099DF4(&qword_1002E0F70, &qword_1002469A0);
  v5 = sub_100003724(v4);
  v35 = v6;
  v36 = v5;
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v12 = sub_100099DF4(&qword_1002E0F78, &qword_1002469A8);
  v13 = sub_100003724(v12);
  v33 = v14;
  v34 = v13;
  v16 = *(v15 + 64);
  sub_100003774();
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  v20 = sub_100099DF4(&qword_1002E0F80, &qword_1002469B0);
  sub_100003724(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  sub_100003774();
  __chkstk_darwin(v25);
  v27 = &v33 - v26;
  v28 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001C87AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = v2[1];
  if (v29)
  {
    v30 = *v2;
    LOBYTE(v37) = 1;
    sub_1001C8800();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v37 = v30;
    v38 = v29;
    memcpy(v39, v2 + 2, sizeof(v39));
    sub_1001B6C10();
    v31 = v36;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v35 + 8))(v11, v31);
  }

  else
  {
    LOBYTE(v37) = 0;
    sub_1001C8854();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v19, v34);
  }

  return (*(v22 + 8))(v27, v20);
}

void sub_1001C7C50(uint64_t a1)
{
  if (v1[1])
  {
    v3 = *v1;
    v4 = v1[1];
    memcpy(v5, v1 + 2, sizeof(v5));
    Hasher._combine(_:)(1uLL);
    PICodableError.hash(into:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1001C7CC4()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  if (v1)
  {
    v4 = *v0;
    v5 = v1;
    memcpy(v6, v0 + 2, sizeof(v6));
    Hasher._combine(_:)(1uLL);
    PICodableError.hash(into:)(v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1001C7D48(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v53 = a2;
  *&v55 = sub_100099DF4(&qword_1002E0FA0, &qword_1002469B8);
  sub_100003724(v55);
  *&v52 = v3;
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  v7 = sub_100099DF4(&qword_1002E0FA8, &qword_1002469C0);
  sub_100003724(v7);
  *&v51 = v8;
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  v13 = &v47[-v12];
  v14 = sub_100099DF4(&qword_1002E0FB0, &unk_1002469C8);
  sub_100003724(v14);
  *&v54 = v15;
  v17 = *(v16 + 64);
  sub_100003774();
  __chkstk_darwin(v18);
  v20 = &v47[-v19];
  v21 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001C87AC();
  v22 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    goto LABEL_8;
  }

  *&v50 = v13;
  *&v49 = v7;
  v62 = a1;
  v23 = KeyedDecodingContainer.allKeys.getter();
  sub_10003CDEC(v23, 0);
  if (v25 == v26 >> 1)
  {
    goto LABEL_7;
  }

  if (v25 >= (v26 >> 1))
  {
    __break(1u);
    return;
  }

  v48 = *(v24 + v25);
  sub_1001BD27C(v25 + 1);
  v28 = v27;
  v30 = v29;
  swift_unknownObjectRelease();
  if (v28 != v30 >> 1)
  {
LABEL_7:
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    v35 = *(sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0) + 48);
    *v34 = &type metadata for PIVoidCodableResult;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, enum case for DecodingError.typeMismatch(_:), v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    v36 = sub_100030DA8();
    v37(v36);
    a1 = v62;
LABEL_8:
    sub_100004118(a1);
    return;
  }

  if (v48)
  {
    LOBYTE(v56) = 1;
    sub_1001C8800();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v53;
    sub_1001B7BAC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v54;
    swift_unknownObjectRelease();
    v42 = sub_100030DBC();
    v43(v42);
    (*(v39 + 8))(v20, v14);
    v54 = v57;
    v55 = v56;
    v51 = v59;
    v52 = v58;
    v49 = v61;
    v50 = v60;
  }

  else
  {
    LOBYTE(v56) = 0;
    sub_1001C8854();
    v38 = v50;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v53;
    swift_unknownObjectRelease();
    (*(v51 + 8))(v38, v49);
    v40 = sub_100030DA8();
    v41(v40);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
  }

  sub_100004118(v62);
  v44 = v54;
  *v31 = v55;
  v31[1] = v44;
  v45 = v51;
  v31[2] = v52;
  v31[3] = v45;
  v46 = v49;
  v31[4] = v50;
  v31[5] = v46;
}

uint64_t sub_1001C830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B80DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C8334(uint64_t a1)
{
  v2 = sub_1001C87AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C8370(uint64_t a1)
{
  v2 = sub_1001C87AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C83B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002EBD4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001C83DC(uint64_t a1)
{
  v2 = sub_1001C8800();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C8418(uint64_t a1)
{
  v2 = sub_1001C8800();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C8454(uint64_t a1)
{
  v2 = sub_1001C8854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C8490(uint64_t a1)
{
  v2 = sub_1001C8854();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001C84CC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1001C7D48(a1, v4);
  if (!v2)
  {
    memcpy(a2, v4, 0x60uLL);
  }
}

Swift::Int sub_1001C8538()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    v5 = v1;
    v6 = v2;
    memcpy(v7, v0 + 2, sizeof(v7));
    Hasher._combine(_:)(1uLL);
    PICodableError.hash(into:)(v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1001C85C0()
{
  if (!*(v0 + 8))
  {
    return 0x73736563637573;
  }

  String.append(_:)(*(v0 + 56));
  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x286572756C696166;
}

uint64_t sub_1001C8640(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001C8658(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C86A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1001C8708(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1001C8758()
{
  result = qword_1002E0F68;
  if (!qword_1002E0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F68);
  }

  return result;
}

unint64_t sub_1001C87AC()
{
  result = qword_1002E0F88;
  if (!qword_1002E0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F88);
  }

  return result;
}

unint64_t sub_1001C8800()
{
  result = qword_1002E0F90;
  if (!qword_1002E0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F90);
  }

  return result;
}

unint64_t sub_1001C8854()
{
  result = qword_1002E0F98;
  if (!qword_1002E0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0F98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIVoidCodableResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIVoidCodableResult.FailureCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1001C8A44()
{
  result = qword_1002E0FB8;
  if (!qword_1002E0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0FB8);
  }

  return result;
}

unint64_t sub_1001C8A9C()
{
  result = qword_1002E0FC0;
  if (!qword_1002E0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0FC0);
  }

  return result;
}

unint64_t sub_1001C8AF4()
{
  result = qword_1002E0FC8;
  if (!qword_1002E0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0FC8);
  }

  return result;
}

unint64_t sub_1001C8B4C()
{
  result = qword_1002E0FD0;
  if (!qword_1002E0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0FD0);
  }

  return result;
}

unint64_t sub_1001C8BA4()
{
  result = qword_1002E0FD8;
  if (!qword_1002E0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0FD8);
  }

  return result;
}

unint64_t sub_1001C8BFC()
{
  result = qword_1002E0FE0;
  if (!qword_1002E0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0FE0);
  }

  return result;
}

unint64_t sub_1001C8C54()
{
  result = qword_1002E0FE8;
  if (!qword_1002E0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0FE8);
  }

  return result;
}

unint64_t sub_1001C8CAC()
{
  result = qword_1002E0FF0;
  if (!qword_1002E0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0FF0);
  }

  return result;
}

uint64_t sub_1001C8D00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001002770A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001002770C0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x80000001002770E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001ELL && 0x8000000100277100 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1001C8E5C(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001C8ED8(void *a1)
{
  v97 = sub_100099DF4(&qword_1002E1130, &qword_100246DB8);
  sub_100003724(v97);
  v96 = v2;
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100003018();
  sub_10000A1C0(v6);
  v93 = sub_100099DF4(&qword_1002E1138, &qword_100246DC0);
  sub_100003724(v93);
  v92 = v7;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v99 = sub_100099DF4(&qword_1002E1140, &qword_100246DC8);
  sub_100003724(v99);
  v98 = v11;
  v13 = *(v12 + 64);
  sub_100003774();
  __chkstk_darwin(v14);
  sub_100003018();
  sub_10000A1C0(v15);
  v95 = sub_100099DF4(&qword_1002E1148, &qword_100246DD0);
  sub_100003724(v95);
  v94 = v16;
  v18 = *(v17 + 64);
  sub_100003774();
  __chkstk_darwin(v19);
  sub_100003018();
  sub_10000A1C0(v20);
  v21 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v91 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  sub_10000A1C0(&v90 - v25);
  v26 = type metadata accessor for PIXPCMessage();
  v27 = sub_10000307C(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_10000306C();
  v32 = v31 - v30;
  v33 = sub_100099DF4(&qword_1002E1150, &qword_100246DD8);
  sub_100003724(v33);
  v102 = v34;
  v36 = *(v35 + 64);
  sub_100003774();
  __chkstk_darwin(v37);
  v38 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001CAF68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001CAE28(v100, v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v69 = *v32;
      v68 = *(v32 + 8);
      v70 = sub_100099DF4(&qword_1002E2730, &qword_100246D10);
      v71 = sub_100031440(v70);
      v72 = v91;
      sub_1000A99D8(v71, v91);
      LOBYTE(v103) = 1;
      sub_1001CB11C();
      sub_1000314D4(&v115);
      v103 = v69;
      v104 = v68;
      v112 = 0;
      sub_1001C65EC();
      sub_100031668();
      v73 = v99;
      v74 = v101;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v74)
      {
        v75 = sub_1000313EC(&v117);
        v76(v75, v73);
        sub_1000ACD3C(v72);
        v77 = sub_10003140C();
        v78(v77);
      }

      LOBYTE(v103) = 1;
      type metadata accessor for Date();
      sub_10003148C(&qword_1002DACE8);
      sub_1000315D4();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      sub_10003153C();
      sub_100031668();
      sub_1000315D4();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v86 = sub_1000313EC(&v117);
      v87(v86, v73);
      v85 = v72;
      goto LABEL_21;
    case 2u:
      v51 = *v32;
      v50 = *(v32 + 8);
      v53 = *(v32 + 16);
      v52 = *(v32 + 24);
      LODWORD(v100) = *(v32 + 32);
      LOBYTE(v107) = 2;
      sub_1001CB0C8();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v107 = v51;
      v108 = v50;
      v109 = v53;
      v110 = v52;
      LOBYTE(v103) = 0;
      sub_1001BF7CC();
      sub_100031634();
      v54 = v101;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v54)
      {
        v55 = sub_1000315B0();
        v56(v55);
        goto LABEL_6;
      }

      LOBYTE(v107) = v100;
      LOBYTE(v103) = 1;
      sub_1001CB218();
      sub_100031634();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v80 = sub_1000315B0();
      goto LABEL_14;
    case 3u:
      v60 = *v32;
      v59 = *(v32 + 8);
      v61 = *(v32 + 16);
      LOBYTE(v107) = 3;
      sub_1001CAFBC();
      sub_1000314D4(&v113);
      v107 = v60;
      v108 = v59;
      LOBYTE(v103) = 0;
      sub_1001C65EC();
      sub_100031634();
      v62 = v97;
      v63 = v101;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v63)
      {
        v64 = sub_1000313EC(&v116);
        v65(v64, v62);
        v66 = sub_10003140C();
        v67(v66);
      }

      LOBYTE(v107) = v61;
      LOBYTE(v103) = 1;
      sub_1001CB218();
      sub_100031634();
      sub_1000315D4();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v80 = sub_1000313EC(&v116);
      v81 = v62;
LABEL_14:
      v82(v80, v81);
      goto LABEL_22;
    default:
      v40 = *v32;
      v39 = *(v32 + 8);
      v41 = *(v32 + 16);
      v42 = *(v32 + 24);
      v43 = sub_100099DF4(&qword_1002E0FF8, &qword_100246D18);
      v44 = sub_100031440(v43);
      v45 = v90;
      sub_1000A99D8(v44, v90);
      LOBYTE(v103) = 0;
      sub_1001CB1C4();
      sub_1000314D4(&v111);
      v103 = v40;
      v104 = v39;
      v105 = v41;
      v106 = v42;
      v112 = 0;
      sub_1001BF7CC();
      sub_100031668();
      v46 = v95;
      v47 = v101;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v47)
      {
        v48 = sub_1000313EC(&v114);
        v49(v48, v46);
        sub_1000ACD3C(v45);
LABEL_6:
        v57 = sub_10003140C();
        v58(v57);
      }

      else
      {

        LOBYTE(v103) = 1;
        type metadata accessor for Date();
        sub_10003148C(&qword_1002DACE8);
        sub_1000315D4();
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        sub_10003153C();
        sub_100031668();
        sub_1000315D4();
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        v83 = sub_1000313EC(&v114);
        v84(v83, v46);
        v85 = v45;
LABEL_21:
        sub_1000ACD3C(v85);
LABEL_22:
        v88 = sub_10003140C();
        return v89(v88);
      }
  }
}

void sub_1001C9738(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v4 = sub_100099DF4(&qword_1002E10D0, &qword_100246D88);
  v5 = sub_100003724(v4);
  v120 = v6;
  v121 = v5;
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100003018();
  v124 = v10;
  v119 = sub_100099DF4(&qword_1002E10D8, &qword_100246D90);
  sub_100003724(v119);
  v126 = v11;
  v13 = *(v12 + 64);
  sub_100003774();
  __chkstk_darwin(v14);
  sub_100003018();
  v123 = v15;
  v16 = sub_100099DF4(&qword_1002E10E0, &qword_100246D98);
  v17 = sub_100003724(v16);
  v127 = v18;
  v128 = v17;
  v20 = *(v19 + 64);
  sub_100003774();
  __chkstk_darwin(v21);
  sub_100003018();
  v132 = v22;
  v122 = sub_100099DF4(&qword_1002E10E8, &qword_100246DA0);
  sub_100003724(v122);
  v118 = v23;
  v25 = *(v24 + 64);
  sub_100003774();
  __chkstk_darwin(v26);
  sub_100003018();
  v125 = v27;
  v133 = sub_100099DF4(&qword_1002E10F0, &unk_100246DA8);
  sub_100003724(v133);
  v131 = v28;
  v30 = *(v29 + 64);
  sub_100003774();
  __chkstk_darwin(v31);
  v33 = &v113 - v32;
  v130 = type metadata accessor for PIXPCMessage();
  v34 = sub_10000307C(v130);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_10000BA50();
  __chkstk_darwin(v37);
  v39 = &v113 - v38;
  __chkstk_darwin(v40);
  v42 = &v113 - v41;
  __chkstk_darwin(v43);
  v45 = &v113 - v44;
  __chkstk_darwin(v46);
  v48 = &v113 - v47;
  v50 = a1[3];
  v49 = a1[4];
  v134 = a1;
  sub_10000C4FC(a1, v50);
  sub_1001CAF68();
  v51 = v135;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v51)
  {
LABEL_8:
    v69 = v134;
LABEL_9:
    sub_100004118(v69);
    return;
  }

  v114 = v39;
  v115 = v2;
  v117 = v42;
  v135 = v45;
  v116 = v48;
  v52 = v133;
  v53 = KeyedDecodingContainer.allKeys.getter();
  sub_1001BCDF0(v53, 0);
  if (v55 == v56 >> 1)
  {
    goto LABEL_7;
  }

  v113 = 0;
  if (v55 >= (v56 >> 1))
  {
    __break(1u);
    return;
  }

  v57 = *(v54 + v55);
  sub_1001BD27C(v55 + 1);
  v59 = v58;
  v61 = v60;
  swift_unknownObjectRelease();
  if (v59 != v61 >> 1)
  {
LABEL_7:
    v63 = type metadata accessor for DecodingError();
    swift_allocError();
    v65 = v64;
    v66 = *(sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0) + 48);
    *v65 = v130;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v63 - 8) + 104))(v65, enum case for DecodingError.typeMismatch(_:), v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    v67 = sub_10003CD30();
    v68(v67, v52);
    goto LABEL_8;
  }

  switch(v57)
  {
    case 1:
      v71 = v129;
      LOBYTE(v136) = 1;
      sub_1001CB11C();
      sub_100031420();
      v135 = v33;
      LOBYTE(v136) = 0;
      sub_1001C6BFC();
      v74 = v117;
      sub_10003CF68();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v126 = sub_100099DF4(&qword_1002E2730, &qword_100246D10);
      v88 = *(v126 + 48);
      type metadata accessor for Date();
      LOBYTE(v136) = 1;
      sub_1000314B0(&qword_1002DACC8);
      sub_100031620();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v125 = v88;
      v104 = *(v126 + 64);
      LOBYTE(v136) = 2;
      sub_1001CB170();
      v77 = v128;
      sub_10003CF68();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v113 = 0;
      swift_unknownObjectRelease();
      v109 = sub_100031674();
      v110(v109);
      v111 = sub_10003147C();
      v112(v111);
      swift_storeEnumTagMultiPayload();
      v102 = v74;
      goto LABEL_17;
    case 2:
      LOBYTE(v136) = 2;
      sub_1001CB0C8();
      sub_100031420();
      v141 = 0;
      sub_1001BFE9C();
      v70 = v119;
      sub_10003CF68();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v75 = v52;
      v135 = v136;
      v76 = v70;
      v77 = v137;
      v78 = v138;
      v79 = v139;
      v140 = 1;
      sub_1001CB010();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v89 = sub_10003CD30();
      v90(v89, v76);
      sub_1000315C8();
      v91(v33, v75);
      v92 = v141;
      v93 = v114;
      *v114 = v135;
      *(v93 + 8) = v77;
      *(v93 + 16) = v78;
      *(v93 + 24) = v79;
      *(v93 + 32) = v92;
      swift_storeEnumTagMultiPayload();
      sub_100031604(v93);
      v94 = v134;
      v113 = 0;
      goto LABEL_16;
    case 3:
      v71 = v129;
      LOBYTE(v136) = 3;
      sub_1001CAFBC();
      sub_100031420();
      v141 = 0;
      sub_1001C6BFC();
      v72 = v121;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v73 = v131;
      v135 = v136;
      v77 = v137;
      v140 = 1;
      sub_1001CB010();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v113 = 0;
      swift_unknownObjectRelease();
      v95 = sub_10003CD30();
      v96(v95, v72);
      v97 = *(v73 + 8);
      v98 = sub_10003CF5C();
      v99(v98);
      v100 = v141;
      v101 = v115;
      *v115 = v135;
      v101[1] = v77;
      *(v101 + 16) = v100;
      swift_storeEnumTagMultiPayload();
      v102 = v101;
LABEL_17:
      sub_100031604(v102);
      v94 = v134;
      v108 = v71;
      goto LABEL_18;
    default:
      LOBYTE(v136) = 0;
      sub_1001CB1C4();
      sub_100031420();
      LOBYTE(v136) = 0;
      sub_1001BFE9C();
      v62 = v135;
      sub_10003CF68();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v80 = sub_100099DF4(&qword_1002E0FF8, &qword_100246D18);
      v113 = 0;
      v132 = v80;
      v81 = *(v80 + 48);
      type metadata accessor for Date();
      LOBYTE(v136) = 1;
      sub_1000314B0(&qword_1002DACC8);
      sub_100031620();
      v82 = v113;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      if (v82)
      {
        swift_unknownObjectRelease();
        sub_1000313FC();
        v83(v125, v122);
        v84 = sub_1000314F8();
        v85(v84);
        v86 = *(v62 + 8);

        v87 = *(v62 + 24);

        v69 = v134;
        goto LABEL_9;
      }

      v128 = v81;
      v103 = *(v132 + 64);
      LOBYTE(v136) = 2;
      sub_1001CB170();
      v77 = v122;
      sub_10003CF68();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v113 = 0;
      swift_unknownObjectRelease();
      sub_1000313FC();
      v105(v125, v77);
      v106 = sub_1000314F8();
      v107(v106);
      swift_storeEnumTagMultiPayload();
      sub_100031604(v62);
      v94 = v134;
LABEL_16:
      v108 = v129;
LABEL_18:
      sub_1001CB064(v77, v108);
      sub_100004118(v94);
      break;
  }
}

uint64_t sub_1001CA484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C8D00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001CA4AC(uint64_t a1)
{
  v2 = sub_1001CAF68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CA4E8(uint64_t a1)
{
  v2 = sub_1001CAF68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CA524(uint64_t a1)
{
  v2 = sub_1001CB1C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CA560(uint64_t a1)
{
  v2 = sub_1001CB1C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CA59C(uint64_t a1)
{
  v2 = sub_1001CB0C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CA5D8(uint64_t a1)
{
  v2 = sub_1001CB0C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CA614(uint64_t a1)
{
  v2 = sub_1001CB11C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CA650(uint64_t a1)
{
  v2 = sub_1001CB11C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CA68C(uint64_t a1)
{
  v2 = sub_1001CAFBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CA6C8(uint64_t a1)
{
  v2 = sub_1001CAFBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for PIXPCMessage()
{
  result = qword_1002E1070;
  if (!qword_1002E1070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CAE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIXPCMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001CAE8C()
{
  sub_100031074(319, &qword_1002E1080);
  if (v0 <= 0x3F)
  {
    sub_100031074(319, &qword_1002E1090);
    if (v1 <= 0x3F)
    {
      sub_100031108(319, &qword_1002E1098);
      if (v2 <= 0x3F)
      {
        sub_100031108(319, &unk_1002E10A0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1001CAF68()
{
  result = qword_1002E10F8;
  if (!qword_1002E10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E10F8);
  }

  return result;
}

unint64_t sub_1001CAFBC()
{
  result = qword_1002E1100;
  if (!qword_1002E1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1100);
  }

  return result;
}

unint64_t sub_1001CB010()
{
  result = qword_1002E1108;
  if (!qword_1002E1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1108);
  }

  return result;
}

uint64_t sub_1001CB064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIXPCMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001CB0C8()
{
  result = qword_1002E1110;
  if (!qword_1002E1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1110);
  }

  return result;
}

unint64_t sub_1001CB11C()
{
  result = qword_1002E1118;
  if (!qword_1002E1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1118);
  }

  return result;
}

unint64_t sub_1001CB170()
{
  result = qword_1002E1120;
  if (!qword_1002E1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1120);
  }

  return result;
}

unint64_t sub_1001CB1C4()
{
  result = qword_1002E1128;
  if (!qword_1002E1128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1128);
  }

  return result;
}

unint64_t sub_1001CB218()
{
  result = qword_1002E1158;
  if (!qword_1002E1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1158);
  }

  return result;
}

unint64_t sub_1001CB26C()
{
  result = qword_1002E1160;
  if (!qword_1002E1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1160);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIXPCMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001CB3E0()
{
  result = qword_1002E1168;
  if (!qword_1002E1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1168);
  }

  return result;
}

unint64_t sub_1001CB438()
{
  result = qword_1002E1170;
  if (!qword_1002E1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1170);
  }

  return result;
}

unint64_t sub_1001CB490()
{
  result = qword_1002E1178;
  if (!qword_1002E1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1178);
  }

  return result;
}

unint64_t sub_1001CB4E8()
{
  result = qword_1002E1180;
  if (!qword_1002E1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1180);
  }

  return result;
}

unint64_t sub_1001CB540()
{
  result = qword_1002E1188;
  if (!qword_1002E1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1188);
  }

  return result;
}

unint64_t sub_1001CB598()
{
  result = qword_1002E1190;
  if (!qword_1002E1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1190);
  }

  return result;
}

unint64_t sub_1001CB5F0()
{
  result = qword_1002E1198;
  if (!qword_1002E1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1198);
  }

  return result;
}

unint64_t sub_1001CB648()
{
  result = qword_1002E11A0;
  if (!qword_1002E11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E11A0);
  }

  return result;
}

unint64_t sub_1001CB6A0()
{
  result = qword_1002E11A8;
  if (!qword_1002E11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E11A8);
  }

  return result;
}

unint64_t sub_1001CB6F8()
{
  result = qword_1002E11B0;
  if (!qword_1002E11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E11B0);
  }

  return result;
}

unint64_t sub_1001CB750()
{
  result = qword_1002E11B8;
  if (!qword_1002E11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E11B8);
  }

  return result;
}

unint64_t sub_1001CB7A8()
{
  result = qword_1002E11C0;
  if (!qword_1002E11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E11C0);
  }

  return result;
}

unint64_t sub_1001CB800()
{
  result = qword_1002E11C8;
  if (!qword_1002E11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E11C8);
  }

  return result;
}

unint64_t sub_1001CB858()
{
  result = qword_1002E11D0;
  if (!qword_1002E11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E11D0);
  }

  return result;
}

unint64_t sub_1001CB8B0()
{
  result = qword_1002E11D8;
  if (!qword_1002E11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E11D8);
  }

  return result;
}

uint64_t static PIAccountKeypair.== infix(_:_:)()
{
  v0 = P384.Signing.PrivateKey.rawRepresentation.getter();
  v2 = v1;
  v3 = P384.Signing.PrivateKey.rawRepresentation.getter();
  v5 = v4;
  v6 = static Data.== infix(_:_:)();
  sub_10000D170(v3, v5);
  sub_10000D170(v0, v2);
  return v6 & 1;
}

unint64_t sub_1001CB9B0(uint64_t a1)
{
  result = sub_1001CB9D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001CB9D8()
{
  result = qword_1002E11E0;
  if (!qword_1002E11E0)
  {
    type metadata accessor for PIAccountKeypair();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E11E0);
  }

  return result;
}

void sub_1001CBA30(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_errorRetain();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v4 = a1;
  }

  v5 = _convertErrorToNSError(_:)();

  v6 = [v5 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v8;
  v30 = v7;

  v28 = [v5 code];
  v9 = [v5 localizedDescription];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v11;
  v27 = v10;

  v12 = [v5 localizedFailureReason];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = String.init<A>(describing:)();
  v19 = v18;
  v20 = String.init<A>(reflecting:)();
  v22 = v21;
  v23 = [v5 userInfo];
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = sub_1001CBF64(v24);

  *a2 = v30;
  a2[1] = v29;
  a2[2] = v28;
  a2[3] = v27;
  a2[4] = v26;
  a2[5] = v14;
  a2[6] = v16;
  a2[7] = v17;
  a2[8] = v19;
  a2[9] = v20;
  a2[10] = v22;
  a2[11] = v25;
}

uint64_t sub_1001CBC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v49 = *(v6 + 16);
  v49(&v40 - v12, a1, a2, v11);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v6 + 8))(v13, a2);
  }

  else
  {
    swift_allocError();
    (*(v6 + 32))(v14, v13, a2);
  }

  v15 = _convertErrorToNSError(_:)();

  v16 = [v15 domain];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v18;
  v48 = v17;

  v46 = [v15 code];
  v19 = [v15 localizedDescription];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v21;
  v45 = v20;

  v22 = [v15 localizedFailureReason];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v25;
    v43 = v24;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v26 = v49;
  (v49)(v9, a1, a2);
  v27 = String.init<A>(describing:)();
  v41 = v28;
  v26(v9, a1, a2);
  v29 = String.init<A>(reflecting:)();
  v31 = v30;
  v32 = [v15 userInfo];
  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = sub_1001CBF64(v33);

  result = (*(v6 + 8))(a1, a2);
  v36 = v47;
  *a3 = v48;
  a3[1] = v36;
  v37 = v45;
  a3[2] = v46;
  a3[3] = v37;
  v38 = v43;
  a3[4] = v44;
  a3[5] = v38;
  v39 = v41;
  a3[6] = v42;
  a3[7] = v27;
  a3[8] = v39;
  a3[9] = v29;
  a3[10] = v31;
  a3[11] = v34;
  return result;
}

void *sub_1001CBF64(uint64_t a1)
{
  v31 = _swiftEmptyArrayStorage;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001ABEF4(v2, v3, a1, v33);

  if (*(&v33[1] + 1))
  {
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    if (swift_dynamicCast())
    {
      ErrorValue = swift_getErrorValue();
      v5 = v28;
      v6 = v29;
      v7 = *(*(v28 - 8) + 64);
      v8 = __chkstk_darwin(ErrorValue);
      v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v11 + 16))(v10, v8);
      sub_1001CBC4C(__src, v10, v5, v6);
      sub_1001DE9FC(0, 1, 1, _swiftEmptyArrayStorage);
      v13 = v12;
      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        sub_1001DE9FC(v14 > 1, v15 + 1, 1, v12);
        v13 = v26;
      }

      v13[2] = v15 + 1;
      memcpy(&v13[12 * v15 + 4], __src, 0x60uLL);
      v31 = v13;
    }
  }

  else
  {
    sub_100009DF4(v33);
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001ABEF4(v16, v17, a1, v33);

  if (*(&v33[1] + 1))
  {
    sub_100099DF4(&qword_1002E11E8, &qword_100247428);
    if (swift_dynamicCast())
    {
      v18 = v30;
      v19 = v30[2];
      if (v19)
      {
        v30 = _swiftEmptyArrayStorage;
        sub_1001CC554(0, v19, 0);
        v20 = 4;
        v21 = v30;
        do
        {
          v22 = v18[v20];
          swift_errorRetain();
          sub_1001CBA30(v22, v33);
          v30 = v21;
          v24 = v21[2];
          v23 = v21[3];
          if (v24 >= v23 >> 1)
          {
            sub_1001CC554((v23 > 1), v24 + 1, 1);
            v21 = v30;
          }

          v21[2] = v24 + 1;
          memcpy(&v21[12 * v24 + 4], v33, 0x60uLL);
          ++v20;
          --v19;
        }

        while (v19);
      }

      else
      {

        v21 = _swiftEmptyArrayStorage;
      }

      sub_1001DD2CC(v21);
    }
  }

  else
  {
    sub_100009DF4(v33);
  }

  return v31;
}

unint64_t sub_1001CC2C8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100099DF4(&qword_1002E11F8, &qword_100247430);
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001CC444(a1, v4);
}

unint64_t sub_1001CC344(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000316A8(a1, v4, &qword_1002E27F0, CKRecordID_ptr);
}

unint64_t sub_1001CC394(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000316A8(a1, v4, &qword_1002E1208, CKRecord_ptr);
}

unint64_t sub_1001CC3E4()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1001CC528(v2);
}

unint64_t sub_1001CC444(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100099DF4(&qword_1002E11F8, &qword_100247430);
    v6 = *(*(v2 + 48) + 8 * i);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1001CC528(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

char *sub_1001CC554(char *a1, int64_t a2, char a3)
{
  result = sub_1001CC684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001CC574(size_t a1, int64_t a2, char a3)
{
  result = sub_1001CC78C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001CC594(size_t a1, int64_t a2, char a3)
{
  result = sub_100031778(a1, a2, a3, *v3, &qword_1002E1238, &qword_100247460, &type metadata accessor for UUID, sub_1001DF168);
  *v3 = result;
  return result;
}

char *sub_1001CC5EC(char *a1, int64_t a2, char a3)
{
  result = sub_1001CC958(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001CC60C(char *a1, int64_t a2, char a3)
{
  result = sub_1001CCA68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001CC62C(size_t a1, int64_t a2, char a3)
{
  result = sub_100031778(a1, a2, a3, *v3, &qword_1002E1200, &qword_100247438, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange, sub_1001DF1C8);
  *v3 = result;
  return result;
}

char *sub_1001CC684(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002E11F0, &qword_100248000);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 96);
      if (v5)
      {
LABEL_13:
        sub_1001DF080((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1001CC78C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_100099DF4(&qword_1002E1228, &qword_100247458);
  v10 = *(sub_100099DF4(&qword_1002E1230, &qword_1002479B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(sub_100099DF4(&qword_1002E1230, &qword_1002479B0) - 8) + 80);
  if (v5)
  {
    sub_1001DF0A8();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1001CC958(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002E1210, &qword_100247440);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_1001DF180((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100099DF4(&qword_1002E1218, &qword_100247448);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1001CCA68(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002E1220, &qword_100247450);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_1001DF1A0((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CCB54@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = type metadata accessor for PIDeviceKeypair.SEP(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_10000306C();
  v13 = v12 - v11;
  v14 = type metadata accessor for PIDeviceKeypair(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  sub_10000306C();
  v18 = v17 - v16;
  if (static SecureEnclave.isAvailable.getter())
  {
    result = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0, 0);
    if (result)
    {
      result = SecureEnclave.P384.Signing.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
      if (!v1)
      {
        (*(v4 + 32))(v13, v8, v3);
        sub_100031940(v13, v18, type metadata accessor for PIDeviceKeypair.SEP);
        swift_storeEnumTagMultiPayload();
        return sub_100031940(v18, a1, type metadata accessor for PIDeviceKeypair);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    P384.Signing.PrivateKey.init(compactRepresentable:)();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t static PIDeviceKeypair.== infix(_:_:)()
{
  v0 = sub_1001BA3B8();
  v2 = v1;
  v3 = sub_1001BA3B8();
  v5 = v4;
  v6 = static Data.== infix(_:_:)();
  sub_10000D170(v3, v5);
  sub_10000D170(v0, v2);
  return v6 & 1;
}

unint64_t sub_1001CCE00(uint64_t a1)
{
  result = sub_1001CCE28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001CCE28()
{
  result = qword_1002E1240[0];
  if (!qword_1002E1240[0])
  {
    type metadata accessor for PIDeviceKeypair(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002E1240);
  }

  return result;
}

uint64_t sub_1001CCE88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v63 = a3;
  v64 = a5;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v20 = a6[30];
  v21 = sub_10003CF74();
  v22(v21);
  sub_1001CD1B0();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    swift_unknownObjectRelease();
    v23 = v11[1];
    v23(a2, v10);
    v23(v19, v10);
    return 0;
  }

  else
  {
    *&v68 = a1;
    v25 = a6[2];
    dispatch thunk of Identifiable.id.getter();
    v59 = v65;
    v60 = v6;
    v61 = a2;
    v26 = v66;
    v27 = v67;
    v28 = a6[15];
    v29 = sub_10003CF74();
    v31 = v30(v29);
    v68 = v59;
    v69 = v26;
    v70 = v27;
    v71 = v31;
    v72 = v32;
    v33 = a6[3];
    v34 = sub_10003CF74();
    v36 = v35(v34);
    v58 = v37;
    *&v59 = v36;
    v38 = a6[6];
    v39 = sub_10003CF74();
    v41 = v40(v39);
    v56 = v42;
    v57 = v41;
    v43 = v11[2];
    v43(v16, v19, v10);
    v44 = v62;
    v43(v62, v61, v10);
    v45 = a6[9];
    v46 = sub_10003CF74();
    v55 = v47(v46);
    LOBYTE(v43) = v48;
    v49 = a6[12];
    v50 = sub_10003CF74();
    HIBYTE(v54) = v51(v50);
    LOBYTE(v54) = v43 & 1;
    v24 = (*(v64 + 120))(&v68, v59, v58, v57, v56, v16, v44, v55, v54, v63, v64);
    swift_unknownObjectRelease();
    v52 = v11[1];
    v52(v61, v10);
    v52(v19, v10);
  }

  return v24;
}

unint64_t sub_1001CD1B0()
{
  result = qword_1002E27C0;
  if (!qword_1002E27C0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E27C0);
  }

  return result;
}

uint64_t sub_1001CD208@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v29 = a4;
  v30 = a1;
  v31 = a3;
  v27 = *(a2 - 8);
  v28 = a2;
  v7 = *(v27 + 64);
  __chkstk_darwin(a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v19);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v24, v20);
  v25 = 1;
  if (sub_100004DFC(v22, 1, v11) != 1)
  {
    (*(v12 + 32))(v16, v22, v11);
    v30(v16, v9);
    (*(v12 + 8))(v16, v11);
    if (v5)
    {
      return (*(v27 + 32))(v29, v9, v28);
    }

    v25 = 0;
  }

  return sub_100002728(a5, v25, 1, v31);
}

uint64_t sub_1001CD47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SingleRotationOutcome() + 60);
  v6 = type metadata accessor for Optional();
  return (*(*(v6 - 8) + 32))(&a3[v5], a2, v6);
}

uint64_t sub_1001CD514(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  v16 = swift_unknownObjectRetain();
  return sub_1001CCE88(v16, v14, a3, a2, a5, a4);
}

uint64_t sub_1001CD614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = type metadata accessor for Date();
  v13 = sub_100003724(v12);
  v44 = v14;
  v45 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_10000306C();
  v19 = v18 - v17;
  swift_unknownObjectRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    sub_100031BA8();
    v39 = swift_slowAlloc();
    sub_100031B9C();
    v40 = swift_slowAlloc();
    v48 = v40;
    *v39 = 136315138;
    v22 = *(a6 + 16);
    dispatch thunk of Identifiable.id.getter();
    v42 = a6;
    v23 = a2;
    v24 = a8;
    v25 = sub_1001ECC0C();
    v41 = a4;
    v27 = v26;

    swift_unknownObjectRelease();

    v28 = v25;
    a8 = v24;
    a2 = v23;
    v29 = sub_100009E5C(v28, v27, &v48);
    a4 = v41;

    *(v39 + 4) = v29;
    a6 = v42;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: Generating new device keypair", v39, 0xCu);
    sub_100004118(v40);
    sub_100031B34();

    sub_100031B34();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v44 + 16))(v19, a2, v45);
  (*(a6 + 248))(v19, a4, a6);
  (*(a8 + 8))(a5, a8);
  if (v46)
  {
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      sub_100031BA8();
      v32 = a6;
      v33 = swift_slowAlloc();
      v34 = a4;
      v35 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to generate device keypair: %@. Clearing device keypair data to try regenerating device keypair later.", v33, 0xCu);
      sub_100004E7C(v35, &qword_1002E2700, &unk_1002474D0);
      a4 = v34;
      sub_100031B34();

      a6 = v32;
      sub_100031B34();
    }

    (*(a6 + 56))(0, 0xF000000000000000, a4, a6);
    return swift_willThrow();
  }

  else
  {
    v38 = (*(a7 + 24))(a5);
    return (*(a6 + 56))(v38);
  }
}

void sub_1001CD9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004168();
  v23 = v22;
  v71 = v24;
  v72 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v75 = a22;
  v76 = v36;
  v74 = type metadata accessor for Optional();
  sub_100003724(v74);
  v38 = v37;
  v40 = *(v39 + 64);
  sub_100003774();
  __chkstk_darwin(v41);
  v43 = &v66 - v42;
  swift_unknownObjectRetain();
  v70 = v35;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  v46 = os_log_type_enabled(v44, v45);
  v73 = v43;
  if (v46)
  {
    sub_100031BA8();
    v47 = swift_slowAlloc();
    v66 = v47;
    sub_100031B9C();
    v67 = swift_slowAlloc();
    v77 = v23;
    v78 = v67;
    *v47 = 136315138;
    v48 = *(v27 + 16);
    dispatch thunk of Identifiable.id.getter();
    v49 = sub_1001ECC0C();
    v68 = v31;
    v69 = v33;
    v50 = v38;
    v51 = v29;
    v52 = v49;
    v54 = v53;

    swift_unknownObjectRelease();

    v55 = v52;
    v29 = v51;
    v38 = v50;
    v33 = v69;
    v56 = sub_100009E5C(v55, v54, &v78);
    v31 = v68;

    v57 = v66;
    *(v66 + 1) = v56;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s: Attempting to rotate device keypair", v57, 0xCu);
    sub_100004118(v67);
    sub_100031B34();

    sub_100031B34();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1001CD514(v33, v31, v76, v27, v75);
  v58 = v31;
  v59 = v33;
  v60 = (*(v27 + 136))(v79, v58, v27);
  v62 = *(v61 + 8);
  v63 = __CFADD__(v62, 1);
  v64 = v62 + 1;
  if (v63)
  {
    __break(1u);
  }

  else
  {
    *(v61 + 8) = v64;
    v60(v79, 0);
    (*(v27 + 104))(4, v58, v27);
    v65 = v73;
    sub_1001CD614(v70, v59, v71, v58, v29, v27, v72, a21);
    sub_100002728(v65, 0, 1, v29);
    (*(v38 + 8))(v65, v74);
    sub_1000027F8();
  }
}

unint64_t sub_1001CDCF8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 120))(a3, a4);
  if (result == a1)
  {
    v10 = v9 > a2;
  }

  else
  {
    v10 = result > a1;
  }

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v11 = *(a4 + 128);

    return v11(a1, a2, a3, a4);
  }

  return result;
}

void sub_1001CDD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_100004168();
  v34 = v33;
  v36 = v35;
  v121 = v37;
  v112 = v38;
  v113 = v39;
  v111 = v40;
  v123 = v41;
  v124 = v42;
  v126 = v43;
  v125 = type metadata accessor for Date();
  v44 = sub_100003724(v125);
  v122 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_10000306C();
  v120 = v49 - v48;
  v127 = a25;
  v50 = type metadata accessor for Optional();
  v51 = sub_100003724(v50);
  v116 = v52;
  v117 = v51;
  v54 = *(v53 + 64);
  sub_100003774();
  __chkstk_darwin(v55);
  v57 = &v107[-v56];
  v114 = type metadata accessor for Optional();
  sub_100003724(v114);
  v110 = v58;
  v60 = *(v59 + 64);
  sub_100003774();
  __chkstk_darwin(v61);
  v63 = &v107[-v62];
  swift_unknownObjectRetain();
  v115 = v36;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  v66 = os_log_type_enabled(v64, v65);
  v118 = a26;
  v119 = v57;
  v109 = v63;
  if (v66)
  {
    sub_100031BA8();
    v67 = swift_slowAlloc();
    sub_100031B9C();
    v68 = swift_slowAlloc();
    v128 = v34;
    v129[0] = v68;
    *v67 = 136315138;
    v69 = *(a28 + 16);
    v108 = v65;
    dispatch thunk of Identifiable.id.getter();
    v70 = sub_1001ECC0C();
    v72 = v71;

    swift_unknownObjectRelease();

    v73 = sub_100009E5C(v70, v72, v129);

    *(v67 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v64, v108, "%s: Setting new account keypair", v67, 0xCu);
    sub_100004118(v68);
    sub_100031B34();

    sub_100031B34();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v74 = sub_100007B1C();
  v76 = sub_1000319A8(v74, v75);
  v77 = sub_100004DFC(v126, 1, v127);
  if (v76)
  {
    if (v77 != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (v77 != 1)
  {
    __break(1u);
    return;
  }

LABEL_9:
  v78 = *(a28 + 120);
  v79 = sub_100007B1C();
  v81 = v80(v79);
  v83 = v82 < v113;
  if (v81 != v111)
  {
    v83 = v81 < v111;
  }

  if (v83)
  {
    sub_1001CD514(a21, a24, a27, a28, a33);
    sub_100031C08();
    sub_1001CDCF8(v84, v85, v86, v87);
  }

  v88 = v109;
  v89 = v118;
  sub_1001CD614(v115, a21, a22, a24, v118, a28, a31, a32);
  v90 = v119;
  v91 = v117;
  sub_100002728(v88, 0, 1, v89);
  (*(v110 + 8))(v88, v114);
  v92 = v116;
  (*(v116 + 16))(v90, v126, v91);
  if (sub_100004DFC(v90, 1, v127) == 1)
  {
    (*(v92 + 8))(v90, v91);
  }

  else
  {
    v93 = v127;
    (*(a30 + 24))(v127);
    sub_10000B7EC(v93);
    (*(v94 + 8))(v90, v93);
  }

  v95 = *(a28 + 32);
  sub_100031C08();
  v96();
  v97 = *(v122 + 16);
  v98 = v120;
  v99 = v125;
  v97(v120, a21, v125);
  (*(a28 + 200))(v98, a24, a28);
  v100 = *(a28 + 80);
  sub_100031C08();
  v101();
  (*(a28 + 104))(v112, a24, a28);
  v97(v98, v121, v99);
  (*(a28 + 176))(v98, a24, a28);
  v102 = *(a28 + 288);
  v103 = sub_100007B1C();
  v104(v103);
  if ((v130 & 1) == 0)
  {
    sub_1001CE3D0(*&v129[2], *&v129[3], *&v129[4], *&v129[5]);
  }

  v105 = *(a28 + 320);
  sub_100031C08();
  v106();
  sub_1000027F8();
}

void sub_1001CE3D0(double a1, double a2, double a3, double a4)
{
  v4 = a1 * a4;
  if (v4 <= a2)
  {
    v4 = a2;
  }

  if (v4 <= a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = a3;
  }

  v6 = v5 * -0.5;
  v7 = v5 * 0.5;
  if (v6 > v7)
  {
    __break(1u);
  }

  else
  {
    sub_1001D0240(v6, v7);
  }
}

void sub_1001CE404(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v26 = (*(a14 + 120))(a10, a14);
  if (v26 == -1)
  {
    __break(1u);
  }

  else
  {
    sub_1001CDD9C(a1, a2, a3 & 1, v26 + 1, 0, a4, a5, a6, a7, a8, a13, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v27, a6, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  }
}

void sub_1001CE4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = *(*(sub_100099DF4(&qword_1002DA970, &qword_1002318B0) - 8) + 64);
  sub_100003774();
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  if (sub_1000319A8(v25, v23))
  {
    v30 = *(v23 + 368);
    v31 = sub_10000AE2C();
    sub_10000FF98(v31, v32);
    v33 = sub_10000AE2C();
    v30(v33);
    v34 = type metadata accessor for Date();
    sub_10000B7EC(v34);
    v36 = *(v35 + 16);
    v37 = sub_100007B1C();
    v38(v37);
    sub_100002728(v29, 0, 1, v34);
    (*(v23 + 224))(v29, v25, v23);
    sub_1000027F8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1001CE75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100004168();
  v121 = v35;
  v113 = v36;
  v38 = v37;
  v105 = v39;
  v119 = v40;
  v120 = v41;
  v116 = v42;
  v123 = v43;
  v124 = a31;
  v44 = a25;
  v125 = a26;
  v126 = a22;
  v118 = type metadata accessor for Optional();
  sub_100003724(v118);
  v115 = v45;
  v47 = *(v46 + 64);
  sub_100003774();
  __chkstk_darwin(v48);
  v114 = &v104 - v49;
  v112 = type metadata accessor for UUID();
  v50 = sub_100003724(v112);
  v111 = v51;
  v53 = *(v52 + 64);
  __chkstk_darwin(v50);
  sub_10000306C();
  v110 = v55 - v54;
  swift_unknownObjectRetain();
  v117 = a21;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();
  v58 = os_log_type_enabled(v56, v57);
  v122 = a25;
  if (v58)
  {
    sub_100031BA8();
    v59 = swift_slowAlloc();
    sub_100031B9C();
    v60 = swift_slowAlloc();
    v109 = v38;
    v61 = v60;
    v128 = v60;
    *v59 = 136315138;
    v127 = v34;
    v62 = *(a29 + 16);
    dispatch thunk of Identifiable.id.getter();
    v63 = sub_1001ECC0C();
    v65 = v64;

    swift_unknownObjectRelease();

    v66 = v63;
    v44 = v122;
    v67 = sub_100009E5C(v66, v65, &v128);

    *(v59 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v56, v57, "%s: Updating record from the cloud", v59, 0xCu);
    sub_100004118(v61);
    v38 = v109;
    sub_100031B34();

    sub_100031B34();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1001CE4E8(v105, v38, v126, v44, a29, v68, v69, v70, v104, v105, a32, a30, a27, a23, v110, v111, v112, v113, v114, v115);
  (*(a29 + 24))(v44, a29);
  v72 = v71;
  (*(v124 + 24))(v125);
  if (v72 >> 60 != 15)
  {
    if (v73 >> 60 != 15)
    {
      v81 = sub_10000AE2C();
      sub_1001D035C(v81, v82);
      v83 = sub_100031BFC();
      sub_10000FF98(v83, v84);
      sub_10000AE2C();
      v85 = static Data.== infix(_:_:)();
      v86 = sub_100031BFC();
      sub_10009A7A0(v86, v87);
      v88 = sub_100031BFC();
      sub_10000D170(v88, v89);
      v90 = sub_10000AE2C();
      sub_10009A7A0(v90, v91);
      v92 = sub_10000AE2C();
      sub_10009A7A0(v92, v93);
      v76 = v117;
      if ((v85 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_8:
    v77 = sub_10000AE2C();
    sub_10009A7A0(v77, v78);
    v79 = sub_100031BFC();
    sub_10009A7A0(v79, v80);
    v76 = v117;
    goto LABEL_13;
  }

  if (v73 >> 60 != 15)
  {
    goto LABEL_8;
  }

  v74 = sub_10000AE2C();
  sub_10009A7A0(v74, v75);
  v76 = v117;
LABEL_10:
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&_mh_execute_header, v94, v95, "Account keypair from cloud update unexpectedly same as existing one.", v96, 2u);
    sub_100031B34();
  }

LABEL_13:
  v97 = v110;
  (*(v111 + 16))(v110, v113, v112);
  v98 = v122;
  (*(a29 + 152))(v97, v122, a29);
  v99 = v125;
  sub_10000B7EC(v125);
  v101 = v114;
  (*(v100 + 16))(v114, v123, v99);
  sub_100002728(v101, 0, 1, v99);
  if ((*(a29 + 96))(v98, a29))
  {
    v102 = 3;
  }

  else
  {
    v102 = 2;
  }

  sub_1001CDD9C(v101, v119, v116 & 1, v120, 0, v102, v121, v76, v126, v109, a28, v98, v99, v108, a28, a29, v107, v124, v106, a33, a34, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
  (*(v115 + 8))(v101, v118);
  sub_1000027F8();
}

void sub_1001CECC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_100004168();
  v30 = v29;
  v32 = v31;
  v83 = v33;
  v35 = v34;
  v37 = v36;
  v79 = v38;
  v81 = v39;
  v41 = v40;
  v42 = type metadata accessor for Optional();
  v43 = sub_100003724(v42);
  v82 = v44;
  v46 = *(v45 + 64);
  __chkstk_darwin(v43);
  sub_10000308C();
  v80 = v47 - v48;
  v50 = __chkstk_darwin(v49);
  v52 = &v71 - v51;
  v53 = *(a23 + 96);
  v84 = a23;
  if (v53(v32, a23, v50))
  {
    v85 = v32;
    v77 = v35;
    v78 = v41;
    swift_unknownObjectRetain();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    v56 = os_log_type_enabled(v54, v55);
    v75 = v37;
    v76 = v42;
    v73 = a24;
    v74 = v30;
    if (v56)
    {
      sub_100031BA8();
      v57 = swift_slowAlloc();
      sub_100031B9C();
      v71 = swift_slowAlloc();
      v87 = v71;
      *v57 = 136315138;
      v86 = v28;
      v72 = v52;
      v58 = v84;
      v59 = *(v84 + 16);
      dispatch thunk of Identifiable.id.getter();
      v60 = sub_1001ECC0C();
      v62 = v61;

      swift_unknownObjectRelease();
      v63 = v58;
      v52 = v72;

      v64 = sub_100009E5C(v60, v62, &v87);

      *(v57 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v54, v55, "%s: Rotating both keypairs once", v57, 0xCu);
      sub_100004118(v71);
      sub_100031B34();

      sub_100031B34();
    }

    else
    {
      swift_unknownObjectRelease();

      v63 = v84;
    }

    v72 = v28;
    if (sub_1000319A8(v85, v63))
    {
      v65 = v73;
      v66 = v74;
      (*(v73 + 8))(v74, v73);
      v67 = 0;
    }

    else
    {
      v67 = 1;
      v65 = v73;
      v66 = v74;
    }

    sub_100002728(v52, v67, 1, v66);
    sub_1001CE404(v52, v81, v79 & 1, 1, v77, v75, v77, v83, a22, v85, v66, a21, a22, v84, v65, a25, a26, a27, a28);
    v69 = v68;
    v70 = v80;
    (*(v82 + 32))(v80, v52, v76);
    sub_1001CD47C(v69, v70, v78);
    sub_1000027F8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001CF02C(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17)
{
  v176 = a7;
  v166 = a6;
  HIDWORD(v156) = a5;
  v180 = a4;
  HIDWORD(v164) = a2;
  v165 = a1;
  v162 = type metadata accessor for Optional();
  v20 = sub_100003724(v162);
  v192 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_10000308C();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v159 = &v153 - v28;
  v187 = a11;
  v199[0] = a11;
  v199[1] = a9;
  v179 = a9;
  v191 = a17;
  v200 = a17;
  v201 = a13;
  v177 = a13;
  v178 = a14;
  v202 = a14;
  v167 = type metadata accessor for SingleRotationOutcome();
  v29 = sub_100003724(v167);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29);
  sub_10000308C();
  v36 = v34 - v35;
  __chkstk_darwin(v37);
  v39 = &v153 - v38;
  v40 = type metadata accessor for Date();
  v41 = sub_100003724(v40);
  v170 = v42;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v45);
  sub_10000690C();
  __chkstk_darwin(v46);
  sub_10000690C();
  __chkstk_darwin(v47);
  v49 = &v153 - v48;
  v51 = __chkstk_darwin(v50);
  v186 = &v153 - v52;
  v53 = *(a12 + 96);
  v194 = a12;
  v195 = v17;
  v193 = a8;
  result = v53(a8, a12, v51);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v171 = v39;
  swift_unknownObjectRetain();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  v57 = os_log_type_enabled(v55, v56);
  v174 = a3;
  v185 = v49;
  v154 = v26;
  v155 = v36;
  v169 = v31;
  if (v57)
  {
    v58 = swift_slowAlloc();
    sub_100031B9C();
    v59 = swift_slowAlloc();
    v203 = v59;
    *v58 = 136315394;
    a3 = v56;
    v198 = v195;
    v60 = *(v194 + 16);
    v61 = v55;
    dispatch thunk of Identifiable.id.getter();
    v190 = sub_1001ECC0C();
    v63 = v62;
    v64 = v185;

    swift_unknownObjectRelease();

    v65 = sub_100009E5C(v190, v63, &v203);

    *(v58 + 4) = v65;
    *(v58 + 12) = 1024;
    *(v58 + 14) = BYTE4(v156) & 1;
    _os_log_impl(&_mh_execute_header, v61, v56, "%s: Populating history since last rotation according to current rotation schedule, performRotationNow=%{BOOL}d", v58, 0x12u);
    sub_100004118(v59);
    sub_100031B34();

    sub_100031B34();
  }

  else
  {
    v64 = v49;
    swift_unknownObjectRelease();
  }

  v66 = v188;
  v190 = a16;
  v173 = a15;
  v172 = a10;
  v198 = static Array._allocateUninitialized(_:)();
  v67 = v194;
  v68 = v186;
  v69 = v193;
  (*(v194 + 240))(v193, v194);
  (*(v67 + 192))(v69, v67);
  v184 = 0;
  v70 = 0;
  v183 = v67 + 336;
  v182 = *(v67 + 336);
  v181 = v67 + 288;
  v168 = v67 + 312;
  v189 = (v170 + 8);
  v160 = (v192 + 16);
  v163 = v169 + 1;
  v161 = v192 + 8;
  v170 += 32;
  v175 = v40;
  while (1)
  {
    v182(v193, v194);
    v192 = v70;
    if (v71)
    {
      (*(v194 + 288))(v199, v193);
      if (v202)
      {
        goto LABEL_25;
      }

      v72 = sub_100031BE4();
      v73(v72);
      if (v74)
      {
        goto LABEL_25;
      }

      goto LABEL_9;
    }

    (*(v194 + 288))(&v203, v193);
    if ((v204 & 1) == 0)
    {
      v75 = sub_100031BE4();
      v76(v75);
      if ((v77 & 1) == 0)
      {
        v78 = v157;
        static Date.+ infix(_:_:)();
        a3 = v158;
        static Date.+ infix(_:_:)();
        v79 = static Date.< infix(_:_:)();
        v80 = *v189;
        (*v189)(a3, v40);
        v80(v78, v40);
        if ((v79 & 1) == 0)
        {
          v66 = v188;
LABEL_9:
          static Date.+ infix(_:_:)();
          v69 = 0;
          goto LABEL_15;
        }

        v66 = v188;
      }
    }

    static Date.+ infix(_:_:)();
    v69 = 1;
LABEL_15:
    if (static Date.> infix(_:_:)())
    {
      break;
    }

    if (v69)
    {
      a3 = v191;
      v81 = v190;
      v83 = v193;
      v82 = v194;
      v84 = v172;
      v85 = v187;
      v86 = v173;
      sub_1001CD9F4(v174, v66, v176, v193, v172, v187, v194, v173, v190, v191, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
      v169 = &v153;
      v196 = v87;
      __chkstk_darwin(v87);
      v69 = (&v153 - 14);
      v88 = v179;
      *(&v153 - 12) = v83;
      *(&v153 - 11) = v88;
      *(&v153 - 10) = v84;
      *(&v153 - 9) = v85;
      v145 = v82;
      v146 = v177;
      v147 = v178;
      v148 = v86;
      v149 = v81;
      v150 = a3;
      v151 = &v198;
      type metadata accessor for Optional();
      v70 = v192;
      sub_1001CD208(sub_100031B1C, &type metadata for Never, &type metadata for ()[8], v89, &v197);
      v66 = v188;
      swift_unknownObjectRelease();
      sub_100008AA4(&v205);
      v68 = v186;
      v40 = v175;
      v90(v186, v175);
      v64 = v185;
    }

    else
    {
      v91 = v193;
      v92 = v194;
      sub_100031B40();
      v150 = *(v93 - 256);
      v94 = v150;
      v95 = v178;
      v149 = v178;
      v96 = v177;
      v147 = v92;
      v148 = v177;
      v97 = v187;
      v146 = v187;
      v98 = v172;
      v145 = v172;
      v99 = sub_100031C14(&v201);
      sub_100031B68(v99, v100, v174, v101, v102, v103, v104, v105, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
      v169 = &v153;
      v69 = *v69;
      v196 = v69;
      __chkstk_darwin(v106);
      a3 = &v153 - 14;
      *(&v153 - 12) = v91;
      *(&v153 - 11) = v107;
      v108 = v107;
      *(&v153 - 10) = v98;
      *(&v153 - 9) = v97;
      v145 = v92;
      v146 = v96;
      v147 = v95;
      v148 = v94;
      sub_100031BB4(&v153);
      swift_unknownObjectRetain();
      v70 = v192;
      sub_1001CD208(sub_100031A5C, &type metadata for Never, &type metadata for ()[8], v109, &v197);
      swift_unknownObjectRelease();
      sub_100008AA4(&v205);
      v64 = v185;
      v40 = v175;
      v110(v185, v175);
      if (v184)
      {
        sub_100008AA4(&v195);
        v111(v171, v167);
        v184 = 1;
      }

      else
      {
        v112 = v167;
        v113 = v171;
        v114 = v159;
        v69 = v162;
        (*v160)(v159, &v171[*(v167 + 60)], v162);
        sub_100008AA4(&v195);
        v115(v113, v112);
        v184 = sub_100004DFC(v114, 1, v108) != 1;
        sub_100008AA4(&v193);
        v116(v114, v69);
      }

      v68 = v186;
      v66 = v188;
    }

    sub_100008AA4(&v200);
    v117();
  }

  sub_100008AA4(&v205);
  v118(v66, v40);
LABEL_25:
  if ((v156 & 0x100000000) != 0)
  {
    v119 = v193;
    sub_100031B40();
    v150 = *(v120 - 256);
    v121 = v150;
    v122 = v178;
    v149 = v178;
    v123 = v177;
    v148 = v177;
    v147 = v194;
    v124 = v187;
    v146 = v187;
    v125 = v172;
    v145 = v172;
    v126 = sub_100031C14(&v187);
    sub_100031B68(v126, v127, v128, v180, v129, v130, v131, v132, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
    v195 = &v153;
    v196 = *v69;
    __chkstk_darwin(v133);
    *(&v153 - 12) = v119;
    *(&v153 - 11) = a3;
    *(&v153 - 10) = v125;
    *(&v153 - 9) = v124;
    v145 = v194;
    v146 = v123;
    v147 = v122;
    v148 = v121;
    sub_100031BB4(&v153);
    swift_unknownObjectRetain();
    sub_1001CD208(sub_100031B04, &type metadata for Never, &type metadata for ()[8], v134, &v197);
    swift_unknownObjectRelease();
    v135 = *v189;
    v136 = v175;
    (*v189)(v185, v175);
    v135(v186, v136);
    if (v184)
    {
      sub_100008AA4(&v195);
      v137(v155, v167);
    }

    else
    {
      v139 = v167;
      v140 = v155;
      v141 = v154;
      v142 = v162;
      (*v160)(v154, (v155 + *(v167 + 60)), v162);
      sub_100008AA4(&v195);
      v143(v140, v139);
      sub_100004DFC(v141, 1, v179);
      sub_100008AA4(&v193);
      v144(v141, v142);
    }
  }

  else
  {
    v138 = *v189;
    (*v189)(v64, v40);
    v138(v68, v40);
  }

  return v198;
}

uint64_t sub_1001CFDE8(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16)
{
  swift_unknownObjectRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    sub_100031BA8();
    v36 = a6;
    buf = swift_slowAlloc();
    sub_100031B9C();
    v34 = swift_slowAlloc();
    v39 = v34;
    *buf = 136315138;
    v24 = *(a11 + 16);
    dispatch thunk of Identifiable.id.getter();
    v25 = a1;
    v26 = a3;
    v27 = sub_1001ECC0C();
    v35 = a7;
    v29 = v28;

    swift_unknownObjectRelease();

    v30 = v27;
    a3 = v26;
    a1 = v25;
    v31 = sub_100009E5C(v30, v29, &v39);
    a7 = v35;

    *(buf + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: Rotating keypairs on schedule if needed", buf, 0xCu);
    sub_100004118(v34);
    sub_100031B34();

    a6 = v36;
    sub_100031B34();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_1001CF02C(a1, a2 & 1, a3, a4, 0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1001D0040(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[1] = a3;
  v7 = *(*(sub_100099DF4(&qword_1002DA970, &qword_1002318B0) - 8) + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  v11 = type metadata accessor for Date();
  v12 = sub_100003724(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10000308C();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = v29 - v21;
  if (a2)
  {
    v23 = 0;
  }

  else
  {
    v24 = *(a5 + 264);
    v25 = sub_10000AE2C();
    v26(v25);
    if (sub_100004DFC(v10, 1, v11) == 1)
    {
      sub_100004E7C(v10, &qword_1002DA970, &qword_1002318B0);
      v23 = 1;
    }

    else
    {
      (*(v14 + 32))(v22, v10, v11);
      static Date.- infix(_:_:)();
      v23 = static Date.< infix(_:_:)();
      v27 = *(v14 + 8);
      v27(v19, v11);
      v27(v22, v11);
    }
  }

  return v23 & 1;
}

void sub_1001D0240(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1001D02B8(0x20000000000001uLL);
  }
}

unint64_t sub_1001D02B8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D035C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000FF98(a1, a2);
  }

  return a1;
}

uint64_t sub_1001D0378(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D0404(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 8) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if (v7 > 0x7FFFFFFE)
      {
        v19 = sub_100004DFC((a1 + v9 + 8) & ~v9, v6, v4);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1001D05C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 8) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v10 > 0x7FFFFFFE)
          {
            v24 = (&a1[v12 + 8] & ~v12);
            if (v10 >= a2)
            {
              v28 = a2 + 1;
              v29 = &a1[v12 + 8] & ~v12;

              sub_100002728(v29, v28, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v25 = ~(-1 << (8 * v14));
              }

              else
              {
                v25 = -1;
              }

              if (v14)
              {
                v26 = v25 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v27 = v14;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v14);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *a1 = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *a1 = a2;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1001D08D0()
{
  v0 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  UUID.init()();
  v4 = type metadata accessor for UUID();
  sub_100002728(v3, 0, 1, v4);
  v5 = sub_100031C28();
  return v6(v5);
}

uint64_t sub_1001D0980(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for UUID();
  sub_100002728(v7, 1, 1, v8);
  v9 = sub_100031C28();
  v10(v9);
  return (*(a2 + 72))(0, 0xF000000000000000, a1, a2);
}

unint64_t sub_1001D0A64(uint64_t a1)
{
  result = sub_1001D0A8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001D0A8C()
{
  result = qword_1002E12D0;
  if (!qword_1002E12D0)
  {
    _s20GlobalSyncStateModelCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E12D0);
  }

  return result;
}

uint64_t sub_1001D0AF0(_OWORD *a1)
{
  v4 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  result = type metadata accessor for Persistence.Mode();
  if (v2 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D0BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(qword_1002E12D8, &unk_100247550);
  if (!sub_100004DFC(a1, 1, v4))
  {
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 8))(a1, v5);
  }

  v6 = *(a2 + 68);
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = *(a1 + *(a2 + 72));
}

char *sub_1001D0CB8(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100099DF4(qword_1002E12D8, &unk_100247550);
  if (sub_100004DFC(a2, 1, v6))
  {
    v12 = *(a3 + 16);
    v13 = *(a3 + 32);
    v14 = *(a3 + 48);
    v7 = type metadata accessor for Persistence.Mode();
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    sub_100002728(a1, 0, 1, v6);
  }

  v9 = *(a3 + 68);
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
  *&a1[*(a3 + 72)] = *&a2[*(a3 + 72)];
  return a1;
}

char *sub_1001D0E14(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100099DF4(qword_1002E12D8, &unk_100247550);
  v7 = sub_100004DFC(a1, 1, v6);
  v8 = sub_100004DFC(a2, 1, v6);
  if (!v7)
  {
    if (!v8)
    {
      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 40))(a1, a2, v16);
      goto LABEL_7;
    }

    sub_10003CD48(a1, qword_1002E12D8, &unk_100247550);
    goto LABEL_6;
  }

  if (v8)
  {
LABEL_6:
    v17 = *(a3 + 16);
    v18 = *(a3 + 32);
    v19 = *(a3 + 48);
    v10 = type metadata accessor for Persistence.Mode();
    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 32))(a1, a2, v9);
  sub_100002728(a1, 0, 1, v6);
LABEL_7:
  v11 = *(a3 + 68);
  v12 = type metadata accessor for Logger();
  (*(*(v12 - 8) + 40))(&a1[v11], &a2[v11], v12);
  v13 = *(a3 + 72);
  v14 = *&a1[v13];
  *&a1[v13] = *&a2[v13];

  return a1;
}

uint64_t sub_1001D101C()
{
  sub_1001D109C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1001D109C()
{
  if (!qword_1002E13E0)
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &qword_1002E13E0);
    }
  }
}

void sub_1001D10E4()
{
  sub_100004868();
  v4 = v3;
  v102 = type metadata accessor for Logger();
  v5 = sub_100003724(v102);
  v99 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v101 = v10 - v9;
  v93 = type metadata accessor for URL.DirectoryHint();
  v11 = sub_100003724(v93);
  v96 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v94 = v16 - v15;
  v17 = type metadata accessor for URL();
  v18 = sub_100003724(v17);
  v97 = v19;
  v98 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_10000308C();
  v95 = v22 - v23;
  __chkstk_darwin(v24);
  v26 = &v85 - v25;
  v27 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v28 = sub_1000030B8(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_10000306C();
  v33 = v32 - v31;
  v34 = type metadata accessor for ModelConfiguration.GroupContainer();
  v35 = sub_1000030B8(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_10000306C();
  v38 = *(v4 + 32);
  v103 = *(v4 + 16);
  v104 = v38;
  v105 = *(v4 + 48);
  v39 = type metadata accessor for Persistence.Mode();
  sub_100003724(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  sub_100003774();
  __chkstk_darwin(v44);
  sub_100002970();
  v45 = type metadata accessor for ModelConfiguration();
  v46 = sub_100003724(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  sub_10000306C();
  v53 = v52 - v51;
  v54 = *(v4 + 72);
  if (*(v0 + v54))
  {
    v55 = *(v0 + v54);
LABEL_3:

    goto LABEL_11;
  }

  v56 = v0;
  v87 = v4;
  v88 = v33;
  v86 = v54;
  v92 = v53;
  v89 = v50;
  v90 = v49;
  type metadata accessor for Schema();
  sub_1001DABAC();
  v100 = Schema.__allocating_init(versionedSchema:)();
  (*(v41 + 16))(v2, v0, v39);
  v57 = sub_100099DF4(qword_1002E12D8, &unk_100247550);
  v58 = sub_100004DFC(v2, 1, v57);
  v91 = v0;
  if (v58 == 1)
  {

    static ModelConfiguration.GroupContainer.none.getter();
    static ModelConfiguration.CloudKitDatabase.none.getter();
    sub_1000328D8();
    ModelConfiguration.init(_:schema:isStoredInMemoryOnly:allowsSave:groupContainer:cloudKitDatabase:)();
  }

  else
  {
    v59 = v97;
    v60 = v26;
    v61 = v26;
    v62 = v98;
    (*(v97 + 32))(v61, v2, v98);
    *&v103 = 0xD000000000000012;
    *(&v103 + 1) = 0x8000000100247540;
    v63 = v96;
    v64 = v93;
    v65 = v94;
    (*(v96 + 104))(v94, enum case for URL.DirectoryHint.notDirectory(_:), v93);
    sub_1000BBBB0();
    URL.append<A>(path:directoryHint:)();
    v66 = *(v63 + 8);
    v56 = v63 + 8;
    v66(v65, v64);
    v67._countAndFlagsBits = 0x6574696C7173;
    v67._object = 0xE600000000000000;
    URL.appendPathExtension(_:)(v67);
    (*(v59 + 16))(v95, v60, v62);

    static ModelConfiguration.CloudKitDatabase.none.getter();
    sub_1000328D8();
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    (*(v59 + 8))(v60, v62);
  }

  v68 = v101;
  v69 = v87;
  type metadata accessor for ModelContainer();
  sub_1001DAC00();
  sub_100099DF4(qword_1002E1440, qword_100247608);
  v70 = v89;
  v71 = *(v89 + 72);
  v72 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_10022E400;
  v74 = v90;
  (*(v70 + 16))(v73 + v72, v56, v90);

  v75 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (!v1)
  {
    (*(v70 + 8))(v56, v74);

    *(v91 + v86) = v75;

    goto LABEL_3;
  }

  v76 = *(v69 + 68);
  v77 = v99;
  (*(v99 + 16))(v68, v91 + v76, v102);
  swift_errorRetain();
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138412290;
    swift_errorRetain();
    v82 = _swift_stdlib_bridgeErrorToNSError();
    *(v80 + 4) = v82;
    *v81 = v82;
    sub_10003292C(&_mh_execute_header, v83, v84, "Failed to create model container: %@");
    sub_10003CD48(v81, &qword_1002E2700, &unk_1002474D0);
    sub_1000327B4();
    sub_100032798();
  }

  (*(v77 + 8))(v68, v102);
  swift_willThrow();

  (*(v70 + 8))(v92, v74);
LABEL_11:
  sub_100005074();
}

void sub_1001D1814(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = objc_autoreleasePoolPush();
  sub_1001D18C0(v5, a1, a2, *(a3 + 16), *(a3 + 24), *(a3 + 32), a4, *(a3 + 40), a5, *(a3 + 48), *(a3 + 56), &v12);
  objc_autoreleasePoolPop(v11);
}

void sub_1001D18C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v74 = a6;
  v75 = a8;
  v64 = a2;
  v65 = a3;
  v72 = a1;
  v58 = a9;
  v59 = type metadata accessor for Logger();
  v61 = *(v59 - 8);
  v15 = *(v61 + 64);
  __chkstk_darwin(v59);
  v60 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100099DF4(&qword_1002E1410, &qword_1002475E0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v62 = &v54 - v19;
  v20 = sub_100099DF4(&qword_1002E1418, &unk_1002475E8);
  v63 = *(v20 - 8);
  v21 = *(v63 + 64);
  __chkstk_darwin(v20);
  v23 = &v54 - v22;
  v71 = a7;
  v24 = type metadata accessor for Optional();
  v66 = *(v24 - 8);
  v25 = *(v66 + 64);
  __chkstk_darwin(v24);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v54 - v29;
  v69 = a4;
  v70 = a5;
  v76 = a4;
  v77 = a5;
  v78 = v74;
  v79 = v75;
  v67 = a10;
  v68 = a11;
  v80 = a10;
  v81 = a11;
  v31 = v72;
  v32 = type metadata accessor for Persistence();
  v33 = v73;
  sub_1001D10E4();
  if (v33)
  {
    *a12 = v33;
  }

  else
  {
    v56 = v32;
    v55 = v27;
    v57 = v23;
    v73 = v24;
    v34 = type metadata accessor for ModelContext();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v37 = ModelContext.init(_:)();
    v38 = v71;
    v39 = sub_100002728(v30, 1, 1, v71);
    __chkstk_darwin(v39);
    v40 = v70;
    *(&v54 - 12) = v69;
    *(&v54 - 11) = v40;
    v41 = v75;
    *(&v54 - 10) = v74;
    *(&v54 - 9) = v38;
    v43 = v67;
    v42 = v68;
    *(&v54 - 8) = v41;
    *(&v54 - 7) = v43;
    *(&v54 - 6) = v42;
    *(&v54 - 5) = v30;
    v44 = v65;
    *(&v54 - 4) = v64;
    *(&v54 - 3) = v44;
    *(&v54 - 2) = v37;
    *(&v54 - 1) = v31;
    dispatch thunk of ModelContext.transaction(block:)();
    v74 = v37;
    v75 = v30;
    v45 = v71;
    v46 = v20;
    v47 = v63;
    v48 = v62;
    v49 = sub_100099DF4(&qword_1002E1420, &unk_1002475F8);
    sub_100002728(v48, 1, 1, v49);
    type metadata accessor for DefaultHistoryTransaction();
    sub_100032658(&qword_1002E1428, &type metadata accessor for DefaultHistoryTransaction);
    HistoryDescriptor.init(predicate:)();
    dispatch thunk of ModelContext.deleteHistory<A>(_:)();
    v50 = v66;
    v51 = v55;
    v52 = v75;
    v53 = v73;
    (*(v66 + 16))(v55, v75, v73);
    if (sub_100004DFC(v51, 1, v45) == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v47 + 8))(v57, v46);

      (*(*(v45 - 8) + 32))(v58, v51, v45);
      (*(v50 + 8))(v52, v53);
    }
  }
}

uint64_t sub_1001D2020(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32 = a1;
  v33 = a8;
  v35 = a5;
  v36 = a4;
  v37 = a3;
  v38 = a2;
  v34 = type metadata accessor for Logger();
  v14 = *(v34 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v34);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a9;
  v18 = type metadata accessor for Optional();
  v29 = *(v18 - 8);
  v30 = v18;
  v19 = *(v29 + 64);
  __chkstk_darwin(v18);
  v21 = &v29 - v20;
  v39 = a6;
  v40 = a7;
  v22 = a7;
  v23 = v33;
  v41 = v33;
  v42 = a10;
  v43 = a11;
  v44 = a12;
  v24 = type metadata accessor for Persistence();
  (*(v14 + 16))(v17, v35 + *(v24 + 68), v34);
  v39 = a6;
  v40 = v22;
  v41 = v23;
  v42 = a10;
  v43 = a11;
  v44 = a12;
  v45[3] = sub_1001DAB94();
  v45[4] = swift_getWitnessTable();
  v25 = sub_100007914(v45);
  sub_1001D22E4(v36, v17, v25);

  v26 = v45[7];
  v38(v45);
  if (v26)
  {
    v39 = a6;
    v40 = v22;
    v41 = v23;
    v42 = a10;
    v43 = a11;
    v44 = a12;
    type metadata accessor for Persistence.TransactionBodyError();
    swift_getWitnessTable();
    swift_allocError();
    *v27 = v26;
    return swift_willThrow();
  }

  else
  {
    sub_100002728(v21, 0, 1, v31);
    return (*(v29 + 40))(v32, v21, v30);
  }
}

uint64_t sub_1001D22E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  sub_100032824();
  v5 = *(sub_1001DAB94() + 68);
  v6 = type metadata accessor for Logger();
  sub_100003BF0(v6);
  return (*(v7 + 32))(&a3[v5], a2);
}

uint64_t sub_1001D2364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100032824();
  v8 = type metadata accessor for Persistence.Mode();
  sub_100003BF0(v8);
  (*(v9 + 32))(a4, a1);
  sub_100032824();
  v10 = type metadata accessor for Persistence();
  v11 = *(v10 + 68);
  v12 = type metadata accessor for Logger();
  sub_100003BF0(v12);
  result = (*(v13 + 32))(a4 + v11, a2);
  *(a4 + *(v10 + 72)) = a3;
  return result;
}

void sub_1001D249C()
{
  sub_100004868();
  v38 = v4;
  v5 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  sub_1000030B8(v5);
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v37 = &v37 - v9;
  v10 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
  sub_1000030B8(v10);
  v12 = *(v11 + 64);
  sub_100003774();
  __chkstk_darwin(v13);
  sub_100002970();
  v14 = sub_100099DF4(&qword_1002E1AC0, &qword_100247AD8);
  sub_1000030B8(v14);
  v16 = *(v15 + 64);
  sub_100003774();
  __chkstk_darwin(v17);
  sub_10003CF80();
  v18 = sub_100099DF4(&qword_1002E1AC8, &qword_100247AE0);
  sub_100003724(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_100003774();
  __chkstk_darwin(v23);
  sub_100004880();
  v24 = _s20GlobalSyncStateModelCMa_0();
  v39 = v24;
  sub_100032848();
  v25 = sub_100099DF4(&qword_1002E1AD0, &qword_100247AE8);
  sub_1000327CC(v25);
  sub_100032658(&qword_1002E1AD8, _s20GlobalSyncStateModelCMa_0);
  sub_10003290C();
  FetchDescriptor.fetchLimit.setter();
  v26 = *v0;
  v27 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v1)
  {
    (*(v20 + 8))(v3, v18);
  }

  else
  {
    v28 = v27;
    if (sub_1001FEDE4())
    {
      sub_1001FEDE8(0, (v28 & 0xC000000000000001) == 0, v28);
      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v28 + 32);
      }
    }

    else
    {

      v30 = type metadata accessor for CKSyncEngine.State.Serialization();
      sub_100002728(v2, 1, 1, v30);
      v31 = type metadata accessor for UUID();
      v32 = v37;
      sub_100002728(v37, 1, 1, v31);
      v33 = *(v24 + 48);
      v34 = *(v24 + 52);
      swift_allocObject();
      v29 = sub_1001E3174(v2, v32, 0, 0xF000000000000000);
      dispatch thunk of ModelContext.insert<A>(_:)();
    }

    v35 = v38;
    (*(v20 + 8))(v3, v18);
    v36 = *(v35 + 16);
    (*(*(v35 + 40) + 88))(v29);
  }

  sub_100005074();
}