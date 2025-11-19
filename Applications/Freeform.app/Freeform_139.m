uint64_t sub_1010A07F0@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  result = sub_10109F9F8(v9, a2, v17);
  v11 = *(v9 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v11)
  {
    sub_100A1B8A0(v11, &v17[600]);
    type metadata accessor for CRLWPShapeItemData(0);
    v12 = *swift_dynamicCastClassUnconditional();
    (*(v12 + 896))();
    sub_1005B981C(&unk_101A0D9C0);
    CRRegister.wrappedValue.getter();
    sub_1010A1234(v8, type metadata accessor for CRLWPShapeItemCRDTData);
    v13 = v16;
    swift_dynamicCastClassUnconditional();

    v14 = sub_100693C3C();

    if ((v14 - 1) >= 3)
    {
      v14 = 0;
    }

    LOBYTE(v16) = 0;
    result = memcpy(a3, v17, 0x350uLL);
    *(a3 + 848) = v13;
    *(a3 + 856) = v14;
    *(a3 + 864) = 0;
    *(a3 + 872) = _swiftEmptyDictionarySingleton;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010A0A00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974536570616873 && a2 == 0xEA0000000000656CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365725074786574 && a2 == 0xEB00000000737465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E4974786574 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001015BFAD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

void *sub_1010A0BD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = sub_1005B981C(&qword_101A2A288);
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v14 - v6;
  sub_100020E58(a1, a1[3]);
  sub_10109D77C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v14 = a2;
  v41 = 0;
  sub_1010A1090();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  memcpy(v44, v42, 0x258uLL);
  v24 = 1;
  sub_100A1AC6C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v44[99] = v37;
  *&v44[101] = v38;
  *&v44[103] = v39;
  *&v44[91] = v33;
  *&v44[93] = v34;
  *&v44[95] = v35;
  *&v44[97] = v36;
  *&v44[83] = v29;
  *&v44[85] = v30;
  *&v44[87] = v31;
  *&v44[89] = v32;
  *&v44[75] = v25;
  *&v44[77] = v26;
  *&v44[79] = v27;
  *&v44[81] = v28;
  v44[105] = v40;
  LOBYTE(v17[0]) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9 = v8;
  sub_1005B981C(&qword_1019F7D38);
  LOBYTE(v16[0]) = 3;
  sub_1010A1170(&qword_101A2A298);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v17[0];
  v43 = v17[1];
  sub_1005B981C(&unk_101A0D960);
  v22 = 4;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v15);
  v11 = v23;
  memcpy(v16, v44, 0x350uLL);
  LODWORD(v16[106]) = v9;
  v16[107] = v10;
  v12 = v43;
  LOBYTE(v16[108]) = v43;
  v16[109] = v23;
  sub_1010A10E4(v16, v17);
  sub_100005070(a1);
  memcpy(v17, v44, sizeof(v17));
  v18 = v9;
  v19 = v10;
  v20 = v12;
  v21 = v11;
  sub_1009CCD88(v17);
  return memcpy(v14, v16, 0x370uLL);
}

unint64_t sub_1010A1090()
{
  result = qword_101A2A290;
  if (!qword_101A2A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A290);
  }

  return result;
}

unint64_t sub_1010A111C()
{
  result = qword_101A2A2A8;
  if (!qword_101A2A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A2A8);
  }

  return result;
}

uint64_t sub_1010A1170(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_1019F7D38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1010A11E0()
{
  result = qword_101A2A2B8;
  if (!qword_101A2A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A2B8);
  }

  return result;
}

uint64_t sub_1010A1234(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1010A12AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 600))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 592);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1010A12F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 600) = 1;
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
      *(result + 592) = (a2 - 1);
      return result;
    }

    *(result + 600) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1010A13E4()
{
  result = qword_101A2A2C0;
  if (!qword_101A2A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A2C0);
  }

  return result;
}

unint64_t sub_1010A1448()
{
  result = qword_101A2A2C8;
  if (!qword_101A2A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A2C8);
  }

  return result;
}

unint64_t sub_1010A14A0()
{
  result = qword_101A2A2D0;
  if (!qword_101A2A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A2D0);
  }

  return result;
}

unint64_t sub_1010A14F8()
{
  result = qword_101A2A2D8;
  if (!qword_101A2A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A2D8);
  }

  return result;
}

unint64_t sub_1010A1550()
{
  result = qword_101A2A2E0;
  if (!qword_101A2A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A2E0);
  }

  return result;
}

unint64_t sub_1010A15A8()
{
  result = qword_101A2A2E8;
  if (!qword_101A2A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A2E8);
  }

  return result;
}

unint64_t sub_1010A1600()
{
  result = qword_101A2A2F0;
  if (!qword_101A2A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A2F0);
  }

  return result;
}

unint64_t sub_1010A1688()
{
  result = qword_101A2A308;
  if (!qword_101A2A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A308);
  }

  return result;
}

unint64_t sub_1010A16E0()
{
  result = qword_101A2A310;
  if (!qword_101A2A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A310);
  }

  return result;
}

unint64_t sub_1010A1738()
{
  result = qword_101A2A318;
  if (!qword_101A2A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A318);
  }

  return result;
}

uint64_t sub_1010A178C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B6F727473 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819044198 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F64616873 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001015BFAF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E694C7466656CLL && a2 == 0xEB00000000646E45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E694C7468676972 && a2 == 0xEC000000646E4565 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

void *sub_1010A19E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A2A320);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = a1[3];
  v96 = a1;
  sub_100020E58(a1, v9);
  sub_1010A1550();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v96);
  }

  v10 = v6;
  v41 = a2;
  v79 = 0;
  sub_100B93B20();
  v11 = v5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v95[12] = v92;
  v95[13] = v93;
  *&v95[14] = v94;
  v95[8] = v88;
  v95[9] = v89;
  v95[11] = v91;
  v95[10] = v90;
  v95[4] = v84;
  v95[5] = v85;
  v95[7] = v87;
  v95[6] = v86;
  v95[0] = v80;
  v95[1] = v81;
  v95[3] = v83;
  v95[2] = v82;
  v71 = 1;
  sub_100A1D404();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v95[18] + 8) = v76;
  *(&v95[19] + 8) = v77;
  *(&v95[20] + 8) = v78;
  *(&v95[16] + 8) = v74;
  *(&v95[17] + 8) = v75;
  *(&v95[14] + 8) = v72;
  *(&v95[15] + 8) = v73;
  v62 = 2;
  sub_100A72188();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v95[25] + 8) = v67;
  *(&v95[26] + 8) = v68;
  *(&v95[27] + 8) = v69;
  *(&v95[28] + 8) = v70;
  *(&v95[21] + 8) = v63;
  *(&v95[22] + 8) = v64;
  *(&v95[23] + 8) = v65;
  *(&v95[24] + 8) = v66;
  LOBYTE(v43[0]) = 3;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v42[0]) = 4;
  v40 = sub_1009CDCD8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v12;
  v29 = v43[1];
  v30 = v43[2];
  v31 = v43[3];
  v32 = v43[4];
  v34 = v43[0];
  v35 = v43[5];
  v13 = v43[6];
  LOBYTE(v42[0]) = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v13;
  v14 = v43[0];
  v39 = v43[1];
  v40 = v43[2];
  v15 = v43[3];
  v26 = v43[4];
  v27 = v43[5];
  v38 = v43[6];
  sub_1005B981C(&unk_101A0D960);
  v60 = 6;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v14;
  v37 = v15;
  v28 &= 1u;
  v16 = v28;
  (*(v10 + 8))(v8, v11);
  v17 = v61;
  memcpy(v42, v95, 0x1D8uLL);
  LOBYTE(v42[59]) = v16;
  v42[60] = v34;
  v19 = v29;
  v18 = v30;
  v42[61] = v29;
  v42[62] = v30;
  v20 = v31;
  v21 = v32;
  v42[63] = v31;
  v42[64] = v32;
  v42[65] = v35;
  v22 = v15;
  v23 = v33;
  v42[66] = v33;
  v42[67] = v14;
  v42[68] = v39;
  v42[69] = v40;
  v42[70] = v22;
  v24 = v26;
  v42[71] = v26;
  v42[72] = v27;
  v42[73] = v38;
  v42[74] = v61;
  sub_1009CCF30(v42, v43);
  sub_100005070(v96);
  memcpy(v43, v95, sizeof(v43));
  v44 = v28;
  v45 = v34;
  v46 = v19;
  v47 = v18;
  v48 = v20;
  v49 = v21;
  v50 = v35;
  v51 = v23;
  v52 = v36;
  v53 = v39;
  v54 = v40;
  v55 = v37;
  v56 = v24;
  v57 = v27;
  v58 = v38;
  v59 = v17;
  sub_1009CCEDC(v43);
  return memcpy(v41, v42, 0x258uLL);
}

unint64_t sub_1010A2168()
{
  result = qword_101A2A330;
  if (!qword_101A2A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A330);
  }

  return result;
}

unint64_t sub_1010A21D0()
{
  result = qword_101A2A338;
  if (!qword_101A2A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A338);
  }

  return result;
}

uint64_t sub_1010A2250()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
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

uint64_t sub_1010A2358()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier);

  return swift_deallocClassInstance();
}

uint64_t sub_1010A242C()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform39CRLBoardShareSyncRemoteRecordIdentifier_boardIdentifier);

  return swift_deallocClassInstance();
}

uint64_t sub_1010A24BC()
{
  v0 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = type metadata accessor for CRLProto_Data(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for CRLProto_BoardItemIdentifier(0);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v24 = v10;
  v13 = *(v10 + 20);
  v14 = *(v4 + 56);
  v14(&v12[v13], 1, 1, v3);
  v21 = xmmword_10146F370;
  *v9 = xmmword_10146F370;
  UnknownStorage.init()();
  sub_1009DCE5C(&v12[v13]);
  sub_100683F6C(v9, &v12[v13]);
  v23 = v14;
  v14(&v12[v13], 0, 1, v3);
  v15 = v2;
  v22 = UUID.crl_data()();
  v17 = v16;
  sub_10084DD24(&v12[v13], v2);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    *v6 = v21;
    UnknownStorage.init()();
    if (v18(v15, 1, v3) != 1)
    {
      sub_1009DCE5C(v15);
    }
  }

  else
  {
    sub_100683F6C(v15, v6);
  }

  sub_10002640C(*v6, *(v6 + 1));
  *v6 = v22;
  *(v6 + 1) = v17;
  sub_1009DCE5C(&v12[v13]);
  sub_100683F6C(v6, &v12[v13]);
  v23(&v12[v13], 0, 1, v3);
  sub_1010A27CC();
  v19 = Message.serializedData(partial:)();
  sub_1010A2824(v12);
  return v19;
}

unint64_t sub_1010A27CC()
{
  result = qword_1019F67D8;
  if (!qword_1019F67D8)
  {
    type metadata accessor for CRLProto_BoardItemIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F67D8);
  }

  return result;
}

uint64_t sub_1010A2824(uint64_t a1)
{
  v2 = type metadata accessor for CRLProto_BoardItemIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CRLServerSyncedPeerAddedItemEvent()
{
  result = qword_101A2A698;
  if (!qword_101A2A698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1010A2908(char a1)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  v1 = sub_100EA63DC();
  v2 = objc_opt_self();
  if (![v2 crl_iPadDevice])
  {
    if (v1)
    {
      goto LABEL_4;
    }

LABEL_7:
    [v2 crl_iPadDevice];
    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    goto LABEL_5;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
LABEL_5:
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

id sub_1010A2B50(char a1)
{
  v2 = objc_opt_self();
  if (a1)
  {
    v3 = [v2 preferredFontForTextStyle:UIFontTextStyleCaption1];

    return v3;
  }

  else
  {
    v5 = v2;
    v6 = [v2 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v7 = [v6 fontDescriptor];
    v8 = [v7 fontDescriptorWithSymbolicTraits:2];

    if (v8)
    {
      [v6 pointSize];
      v9 = [v5 fontWithDescriptor:v8 size:?];

      return v9;
    }

    else
    {
      return v6;
    }
  }
}

id sub_1010A2C64(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() currentTraitCollection];
    v2 = [v1 accessibilityContrast];

    v3 = objc_opt_self();
    v4 = &selRef_grayColor;
    if (v2 == 1)
    {
      v4 = &selRef_darkGrayColor;
    }
  }

  else
  {
    v3 = objc_opt_self();
    v4 = &selRef_darkGrayColor;
  }

  v5 = [v3 *v4];

  return v5;
}

unint64_t sub_1010A2D14(char a1)
{
  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  *(inited + 32) = NSFontAttributeName;
  v3 = NSFontAttributeName;
  v4 = sub_1010A2B50(a1 & 1);
  v5 = sub_100006370(0, &qword_101A0DE60);
  *(inited + 40) = v4;
  *(inited + 64) = v5;
  *(inited + 72) = NSForegroundColorAttributeName;
  v6 = NSForegroundColorAttributeName;
  v7 = sub_1010A2C64(a1 & 1);
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(inited + 80) = v8;
  *(inited + 104) = v9;
  *(inited + 112) = NSBackgroundColorAttributeName;
  v11 = objc_opt_self();
  v12 = NSBackgroundColorAttributeName;
  v13 = [v11 clearColor];
  v14 = [v13 CGColor];

  *(inited + 144) = v10;
  *(inited + 120) = v14;
  v15 = sub_10006E310(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0DE70);
  swift_arrayDestroy();
  return v15;
}

void sub_1010A2EA0(CGContext *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CGPathFillRule();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 layout];
  [v9 boundsForStandardKnobs];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v58 = [objc_allocWithZone(CRLColor) initWithRed:0.819607843 green:0.819607843 blue:0.839215686 alpha:1.0];
  v18 = [objc_opt_self() bezierPathWithContinuousCornerRoundedRect:v11 cornerRadius:{v13, v15, v17, 10.0}];
  v19 = [v18 CGPath];

  if (v19)
  {
    v56 = v19;
    CGContextAddPath(a1, v19);
    (*(v5 + 104))(v8, enum case for CGPathFillRule.winding(_:), v4);
    CGContextRef.clip(using:)();
    (*(v5 + 8))(v8, v4);
    v20 = [v58 CGColor];
    CGContextSetFillColorWithColor(a1, v20);

    v57 = v2;
    [v2 naturalBounds];
    CGContextFillRect(a1, v60);
    v21 = [objc_opt_self() mainBundle];
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1010A2D14(0);
    v25 = objc_allocWithZone(NSAttributedString);
    v26 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_1005CAB2C();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v28 = [v25 initWithString:v26 attributes:isa];

    v29 = CTLineCreateWithAttributedString(v28);
    BoundsWithOptions = CTLineGetBoundsWithOptions(v29, 0);
    x = BoundsWithOptions.origin.x;
    y = BoundsWithOptions.origin.y;
    width = BoundsWithOptions.size.width;
    height = BoundsWithOptions.size.height;
    v55 = CGRectGetWidth(BoundsWithOptions);
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v34 = CGRectGetHeight(v62);

    sub_1010A2908(1);
    sub_1010A2D14(1);
    v35 = objc_allocWithZone(NSAttributedString);
    v36 = String._bridgeToObjectiveC()();

    v37 = Dictionary._bridgeToObjectiveC()().super.isa;

    v38 = [v35 initWithString:v36 attributes:v37];

    v39 = CTLineCreateWithAttributedString(v38);
    v63 = CTLineGetBoundsWithOptions(v39, 0);
    v40 = v63.origin.x;
    v41 = v63.origin.y;
    v42 = v63.size.width;
    v43 = v63.size.height;
    v44 = CGRectGetWidth(v63);
    v64.origin.x = v40;
    v64.origin.y = v41;
    v64.size.width = v42;
    v64.size.height = v43;
    v45 = CGRectGetHeight(v64);

    sub_1010A2908(1);
    sub_1010A2D14(1);
    v46 = objc_allocWithZone(NSAttributedString);
    v47 = String._bridgeToObjectiveC()();

    v48 = Dictionary._bridgeToObjectiveC()().super.isa;

    v49 = [v46 initWithString:v47 attributes:v48];

    v50 = CTLineCreateWithAttributedString(v49);
    v65 = CTLineGetBoundsWithOptions(v50, 0);
    v51 = CGRectGetWidth(v65);

    if (v51 + 24.0 > v15)
    {
      goto LABEL_3;
    }

    v53 = v45 + v45;
    if (v15 + -24.0 >= v44)
    {
      v53 = v45;
    }

    v54 = v15 + -24.0 >= v55 ? v34 : v34 + v34;
    if (v54 + v53 + 12.0 > v17 || v15 / (v51 + 24.0) > 3.0)
    {
LABEL_3:
      sub_1010A3FD4(a1);
    }

    else
    {
      sub_1010A3544(a1);
    }
  }

  else
  {
    v52 = v58;
  }
}

void sub_1010A3544(CGContext *a1)
{
  v2 = v1;
  v3 = [v1 layout];
  [v3 boundsForStandardKnobs];
  v103 = v5;
  v105 = v4;
  v7 = v6;
  v102 = v8;

  v107 = objc_opt_self();
  v9 = [v107 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1010A2D14(0);
  v13 = objc_allocWithZone(NSAttributedString);
  v14 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithString:v14 attributes:isa];

  v17 = CTLineCreateWithAttributedString(v16);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v17, 0);
  x = BoundsWithOptions.origin.x;
  y = BoundsWithOptions.origin.y;
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  v100 = CGRectGetWidth(BoundsWithOptions);
  v112.origin.x = x;
  v112.origin.y = y;
  v112.size.width = width;
  v112.size.height = height;
  v22 = CGRectGetHeight(v112);

  sub_1010A2908(1);
  sub_1010A2D14(1);
  v23 = objc_allocWithZone(NSAttributedString);
  v24 = String._bridgeToObjectiveC()();

  v25 = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithString:v24 attributes:v25];

  v27 = CTLineCreateWithAttributedString(v26);
  v113 = CTLineGetBoundsWithOptions(v27, 0);
  v28 = v113.origin.x;
  v29 = v113.origin.y;
  v30 = v113.size.width;
  v31 = v113.size.height;
  v32 = CGRectGetWidth(v113);
  v114.origin.x = v28;
  v114.origin.y = v29;
  v114.size.width = v30;
  v114.size.height = v31;
  v33 = CGRectGetHeight(v114);

  v34 = [v2 layout];
  [v34 boundsForStandardKnobs];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  CGContextSaveGState(a1);
  v43 = [objc_allocWithZone(CATextLayer) init];
  v44 = objc_opt_self();
  v45 = [v44 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v46 = [v45 fontDescriptor];
  v47 = [v46 fontDescriptorWithSymbolicTraits:2];

  if (v47)
  {
    [v45 pointSize];
    v48 = [v44 fontWithDescriptor:v47 size:?];

    v45 = v48;
  }

  [v43 setFont:{v45, *&v100}];

  v49 = [v44 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v50 = [v49 fontDescriptor];
  v51 = [v50 fontDescriptorWithSymbolicTraits:2];

  if (v51)
  {
    [v49 pointSize];
    v52 = [v44 fontWithDescriptor:v51 size:?];

    v49 = v52;
  }

  v53 = sub_100120414(v36, v38, v40, v42);
  v54 = v40 + -24.0;
  v55 = v53 - v54 * 0.5;
  sub_100120414(v105, *&v103, v7, v102);
  v57 = v7 + -24.0;
  v58 = v7 + -24.0 < v101;
  if (v7 + -24.0 >= v101)
  {
    v59 = v22;
  }

  else
  {
    v59 = v22 + v22;
  }

  v106 = v57 < v32;
  if (v57 >= v32)
  {
    v60 = v33;
  }

  else
  {
    v60 = v33 + v33;
  }

  v61 = v56 - (v59 + v60) * 0.5;
  [v49 pointSize];
  v63 = v62;

  [v43 setFontSize:v63];
  v104 = objc_opt_self();
  v64 = [v104 darkGrayColor];
  v65 = [v64 CGColor];

  [v43 setForegroundColor:v65];
  v66 = [v107 mainBundle];
  v67 = String._bridgeToObjectiveC()();
  v68 = String._bridgeToObjectiveC()();
  v69 = [v66 localizedStringForKey:v67 value:v68 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1010A2D14(0);
  v70 = objc_allocWithZone(NSAttributedString);
  v71 = String._bridgeToObjectiveC()();

  v72 = Dictionary._bridgeToObjectiveC()().super.isa;

  v73 = [v70 initWithString:v71 attributes:v72];

  [v43 setString:v73];
  CGContextTranslateCTM(a1, 12.0, v61);
  [v43 setWrapped:v58];
  [v43 setTruncationMode:kCATruncationEnd];
  [v43 setAlignmentMode:kCAAlignmentCenter];
  [v43 setBounds:{v55, v61, v54, v59}];
  [v43 drawInContext:a1];
  CGContextRestoreGState(a1);

  v74 = [v2 layout];
  [v74 boundsForStandardKnobs];
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;

  CGContextSaveGState(a1);
  v109 = [objc_allocWithZone(CATextLayer) init];
  v83 = [v44 preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v109 setFont:v83];

  v84 = [v44 preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v84 pointSize];
  v86 = v85;

  [v109 setFontSize:v86];
  v87 = [objc_opt_self() currentTraitCollection];
  v88 = [v87 accessibilityContrast];

  v89 = &selRef_grayColor;
  if (v88 == 1)
  {
    v89 = &selRef_darkGrayColor;
  }

  v90 = [v104 *v89];
  v91 = sub_100120414(v76, v78, v80, v82);
  v92 = v80 + -24.0;
  v93 = v91 - v92 * 0.5;
  v94 = v59 + v61;
  v95 = [v90 CGColor];

  [v109 setForegroundColor:v95];
  sub_1010A2908(1);
  sub_1010A2D14(1);
  v96 = objc_allocWithZone(NSAttributedString);
  v97 = String._bridgeToObjectiveC()();

  v98 = Dictionary._bridgeToObjectiveC()().super.isa;

  v99 = [v96 initWithString:v97 attributes:v98];

  [v109 setString:v99];
  CGContextTranslateCTM(a1, 12.0, v94);
  [v109 setWrapped:v106];
  [v109 setTruncationMode:kCATruncationEnd];
  [v109 setAlignmentMode:kCAAlignmentCenter];
  [v109 setBounds:{v93, v94, v92, v60}];
  [v109 drawInContext:a1];
  CGContextRestoreGState(a1);
}

void sub_1010A3FD4(CGContext *a1)
{
  v2 = v1;
  [v2 boundsForStandardKnobs];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 configurationWithPointSize:4 weight:28.0];
  v112 = [objc_opt_self() darkGrayColor];
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v16 = objc_opt_self();
  v17 = [v16 systemImageNamed:v15 withConfiguration:v14];

  v111 = v14;
  if (v17)
  {
    v114 = v17;
    v18 = [v2 canvas];
    if (v18)
    {
      v19 = v18;
      [v18 contentsScale];
      v21 = v20;

      [v114 size];
      v24 = sub_10011F340(v22, v23, v21);
      v26 = v24;
      v27 = v25;
      if (v25 < v24)
      {
        v24 = v25;
      }

      v28 = [v12 configurationWithPointSize:4 weight:v24];
      v29 = String._bridgeToObjectiveC()();
      v30 = [v16 systemImageNamed:v29 withConfiguration:v28];

      if (v30)
      {
        v31 = v112;
        v110 = [v30 imageWithTintColor:v112];
      }

      else
      {

        v110 = 0;
        v31 = v112;
      }

      v117.width = v26;
      v117.height = v27;
      UIGraphicsBeginImageContextWithOptions(v117, 0, v21);
      v56 = UIGraphicsGetCurrentContext();
      if (v56)
      {
        v57 = v56;
        if (v110)
        {
          [v110 drawInRect:sub_10011ECB4()];
        }

        v58 = CGBitmapContextCreateImage(v57);
        UIGraphicsEndImageContext();
        if (v58)
        {
          CGContextTranslateCTM(a1, 0.0, v11);
          CGContextScaleCTM(a1, 1.0, -1.0);
          [v114 size];
          v60 = v59;
          v61 = sub_100120414(v5, v7, v9, v11);
          sub_10011EC70(v61, v62, v60);
          CGContextRef.draw(_:in:byTiling:)();

          v55 = v110;
          goto LABEL_17;
        }

        v109 = v28;
        v107 = objc_opt_self();
        v85 = [v107 _atomicIncrementAssertCount];
        v115[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v115);
        StaticString.description.getter();
        v86 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v87 = String._bridgeToObjectiveC()();

        v88 = [v87 lastPathComponent];

        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v92 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v85;
        v94 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v94;
        v95 = sub_1005CF04C();
        *(inited + 104) = v95;
        *(inited + 72) = v86;
        *(inited + 136) = &type metadata for String;
        v96 = sub_1000053B0();
        *(inited + 112) = v89;
        *(inited + 120) = v91;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v96;
        *(inited + 152) = 261;
        v97 = v115[0];
        *(inited + 216) = v94;
        *(inited + 224) = v95;
        *(inited + 192) = v97;
        v98 = v86;
        v99 = v97;
        v100 = static os_log_type_t.error.getter();
        sub_100005404(v92, &_mh_execute_header, v100, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v101 = static os_log_type_t.error.getter();
        sub_100005404(v92, &_mh_execute_header, v101, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v102 = swift_allocObject();
        v102[2] = 8;
        v102[3] = 0;
        v102[4] = 0;
        v102[5] = 0;
        v103 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v104 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v105 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v106 = String._bridgeToObjectiveC()();

        [v107 handleFailureInFunction:v104 file:v105 lineNumber:261 isFatal:0 format:v106 args:v103];
      }

      else
      {
        v108 = v28;
        v113 = objc_opt_self();
        v63 = [v113 _atomicIncrementAssertCount];
        v115[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v115);
        StaticString.description.getter();
        v64 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v65 = String._bridgeToObjectiveC()();

        v66 = [v65 lastPathComponent];

        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v70 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v71 = swift_initStackObject();
        *(v71 + 16) = xmmword_10146CA70;
        *(v71 + 56) = &type metadata for Int32;
        *(v71 + 64) = &protocol witness table for Int32;
        *(v71 + 32) = v63;
        v72 = sub_100006370(0, &qword_1019F4D30);
        *(v71 + 96) = v72;
        v73 = sub_1005CF04C();
        *(v71 + 104) = v73;
        *(v71 + 72) = v64;
        *(v71 + 136) = &type metadata for String;
        v74 = sub_1000053B0();
        *(v71 + 112) = v67;
        *(v71 + 120) = v69;
        *(v71 + 176) = &type metadata for UInt;
        *(v71 + 184) = &protocol witness table for UInt;
        *(v71 + 144) = v74;
        *(v71 + 152) = 253;
        v75 = v115[0];
        *(v71 + 216) = v72;
        *(v71 + 224) = v73;
        *(v71 + 192) = v75;
        v76 = v64;
        v77 = v75;
        v78 = static os_log_type_t.error.getter();
        sub_100005404(v70, &_mh_execute_header, v78, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v71);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v79 = static os_log_type_t.error.getter();
        sub_100005404(v70, &_mh_execute_header, v79, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v80 = swift_allocObject();
        v80[2] = 8;
        v80[3] = 0;
        v80[4] = 0;
        v80[5] = 0;
        v81 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v82 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v83 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v84 = String._bridgeToObjectiveC()();

        [v113 handleFailureInFunction:v82 file:v83 lineNumber:253 isFatal:0 format:v84 args:v81];
      }

      return;
    }

    v55 = v114;
LABEL_17:

    return;
  }

  v32 = objc_opt_self();
  v33 = [v32 _atomicIncrementAssertCount];
  v115[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v115);
  StaticString.description.getter();
  v34 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  v36 = [v35 lastPathComponent];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v40 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_10146CA70;
  *(v41 + 56) = &type metadata for Int32;
  *(v41 + 64) = &protocol witness table for Int32;
  *(v41 + 32) = v33;
  v42 = sub_100006370(0, &qword_1019F4D30);
  *(v41 + 96) = v42;
  v43 = sub_1005CF04C();
  *(v41 + 104) = v43;
  *(v41 + 72) = v34;
  *(v41 + 136) = &type metadata for String;
  v44 = sub_1000053B0();
  *(v41 + 112) = v37;
  *(v41 + 120) = v39;
  *(v41 + 176) = &type metadata for UInt;
  *(v41 + 184) = &protocol witness table for UInt;
  *(v41 + 144) = v44;
  *(v41 + 152) = 244;
  v45 = v115[0];
  *(v41 + 216) = v42;
  *(v41 + 224) = v43;
  *(v41 + 192) = v45;
  v46 = v34;
  v47 = v45;
  v48 = static os_log_type_t.error.getter();
  sub_100005404(v40, &_mh_execute_header, v48, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v41);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v49 = static os_log_type_t.error.getter();
  sub_100005404(v40, &_mh_execute_header, v49, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v50 = swift_allocObject();
  v50[2] = 8;
  v50[3] = 0;
  v50[4] = 0;
  v50[5] = 0;
  v51 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v52 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v53 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v54 = String._bridgeToObjectiveC()();

  [v32 handleFailureInFunction:v52 file:v53 lineNumber:244 isFatal:0 format:v54 args:v51];
}

id sub_1010A4E94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUnknownRep();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1010A4EEC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1010A4FDC(char a1)
{
  v2 = sub_100EA63DC();
  v3 = objc_opt_self();
  v4 = [v3 crl_iPadDevice];
  if (a1)
  {
    if (v4)
    {
      if (v2)
      {
        goto LABEL_11;
      }
    }

    else if (v2)
    {
      goto LABEL_11;
    }

LABEL_12:
    [v3 crl_iPadDevice];
    v5 = [objc_opt_self() mainBundle];
    v6 = String._bridgeToObjectiveC()();
    goto LABEL_14;
  }

  if (v4)
  {
    if (v2)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
LABEL_14:
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

void sub_1010A52D4(uint64_t a1, char a2)
{
  sub_1010A4EEC();
  v3 = sub_100EA63DC();
  sub_1010A4FDC(a2);
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  if (v3)
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v28[4] = sub_1000A2100;
    v28[5] = 0;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = *"";
    v28[2] = sub_10068B39C;
    v28[3] = &unk_1018B08C8;
    v13 = _Block_copy(v28);

    v14 = objc_opt_self();
    v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
    _Block_release(v13);

    v16 = [v7 mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v14 actionWithTitle:v20 style:1 handler:0];

    [v6 addAction:v15];
    [v6 addAction:v21];
  }

  else
  {
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v8 localizedStringForKey:v22 value:v23 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();

    v26 = [objc_opt_self() actionWithTitle:v25 style:0 handler:0];

    [v6 addAction:v26];
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    [v27 presentViewController:v6 animated:1 completion:0];
  }

  sub_1011047E4(v6);
}

BOOL sub_1010A572C()
{
  v1 = [v0 interactiveCanvasController];
  v2 = [v1 layerHost];

  if (v2)
  {
    sub_1010A52D4(v2, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 161;
    v16 = v27;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:161 isFatal:0 format:v25 args:v22];
  }

  return v2 != 0;
}

uint64_t sub_1010A5B2C(void *a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = *a1;
  sub_1010A6788();

  CRStruct_0.merge(_:)();
  (*(v3 + 8))(v5, v2);

  return 1;
}

uint64_t sub_1010A5C7C@<X0>(void *a1@<X8>)
{
  sub_1010A6788();
  result = CRStruct_0.init(from:)();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_1010A5CDC()
{
  sub_1010A6788();

  CRStruct_0.encode(to:)();
}

uint64_t sub_1010A5D54(uint64_t a1)
{
  v2 = sub_1010A6788();

  return static CRStruct_0.fieldKeys.getter(a1, v2);
}

uint64_t sub_1010A5DE8(uint64_t a1)
{
  v2 = sub_1010A657C();

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1010A5E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1010A6788();

  return CRStruct_0.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1010A5E70@<X0>(_BYTE *a1@<X8>)
{
  sub_1010A6788();
  result = CRStruct_0.actionUndoingDifference(from:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1010A5EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1010A6788();

  return CRStruct_0.apply(_:)(a1, a2, v4);
}

uint64_t sub_1010A5F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1010A6788();

  return CRStruct_0.hasDelta(from:)(a1, a2, v4);
}

uint64_t sub_1010A5F54(void *a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = *a1;
  sub_1010A6788();

  CRStruct_0.merge(_:)();
  (*(v3 + 8))(v5, v2);

  return 1;
}

uint64_t sub_1010A6060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1010A6788();

  return CRStruct_0.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1010A60B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1010A6788();

  return CRStruct_0.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1010A6108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1010A6788();

  return CRStruct_0.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1010A616C()
{
  sub_1010A6788();

  return CRStruct_0.visitReferences(_:)();
}

BOOL sub_1010A61B8()
{
  sub_1010A6788();

  return CRStruct_0.needToFinalizeTimestamps()();
}

uint64_t sub_1010A61F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1010A6788();

  return CRStruct_0.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1010A6240()
{
  sub_1010A6788();

  return CRStruct_0.merge(_:)();
}

uint64_t sub_1010A6294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1010A6788();

  return CRStruct_0.merge(_:)(a1, a2, v4);
}

uint64_t sub_1010A6390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B6D3AC();

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1010A647C(uint64_t a1)
{
  v2 = sub_1010A6788();

  return CRStruct_0.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_1010A64CC()
{
  result = qword_101A2A708;
  if (!qword_101A2A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A708);
  }

  return result;
}

unint64_t sub_1010A6524()
{
  result = qword_101A2A710;
  if (!qword_101A2A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A710);
  }

  return result;
}

unint64_t sub_1010A657C()
{
  result = qword_101A2A718;
  if (!qword_101A2A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A718);
  }

  return result;
}

unint64_t sub_1010A65D4()
{
  result = qword_101A2A720;
  if (!qword_101A2A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A720);
  }

  return result;
}

unint64_t sub_1010A662C()
{
  result = qword_101A2A728;
  if (!qword_101A2A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A728);
  }

  return result;
}

unint64_t sub_1010A6684()
{
  result = qword_101A2A730;
  if (!qword_101A2A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A730);
  }

  return result;
}

unint64_t sub_1010A66DC()
{
  result = qword_101A2A738;
  if (!qword_101A2A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A738);
  }

  return result;
}

unint64_t sub_1010A6734()
{
  result = qword_101A2A740;
  if (!qword_101A2A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A740);
  }

  return result;
}

unint64_t sub_1010A6788()
{
  result = qword_101A2A748;
  if (!qword_101A2A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A748);
  }

  return result;
}

uint64_t Optional<A>.isEquivalent(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v3 = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v30 = &v30 - v9;
  v11 = *(v10 - 8);
  __chkstk_darwin(v12);
  v35 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = __chkstk_darwin(TupleTypeMetadata2);
  v18 = &v30 - v17;
  v20 = *(v19 + 48);
  v33 = v11;
  v21 = *(v11 + 16);
  v21(&v30 - v17, v34, v3, v16);
  (v21)(&v18[v20], a1, v3);
  v34 = v6;
  v22 = *(v6 + 48);
  if (v22(v18, 1, v5) == 1)
  {
    v23 = 1;
    if (v22(&v18[v20], 1, v5) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v21)(v35, v18, v3);
    if (v22(&v18[v20], 1, v5) != 1)
    {
      v24 = v34;
      v25 = *(v34 + 32);
      v26 = v30;
      v25(v30, v35, v5);
      v27 = v31;
      v25(v31, &v18[v20], v5);
      v23 = (*(v32 + 8))(v27, v5);
      v28 = *(v24 + 8);
      v28(v27, v5);
      v28(v26, v5);
LABEL_8:
      v15 = v33;
      goto LABEL_9;
    }

    (*(v34 + 8))(v35, v5);
  }

  v23 = 0;
  v3 = TupleTypeMetadata2;
LABEL_9:
  (*(v15 + 8))(v18, v3);
  return v23 & 1;
}

BOOL sub_1010A6BE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v9 = v1[2];
  v10 = *(v1 + 48);
  return sub_100B1BE18(v5);
}

BOOL sub_1010A6C58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v9 = *(v1 + 32);
  return sub_100B1BCC0(v5);
}

uint64_t sub_1010A6CC4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v4;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO4FillO21__derived_enum_equalsySbAG_AGtFZ_0(v7, v9) & 1;
}

uint64_t Array<A>.isEquivalent(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v21[3] = v13;
  v14 = Array.count.getter();
  v21[2] = a1;
  result = Array.count.getter();
  if (v14 != result)
  {
    return 0;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v21[1] = a4 + 8;
    v17 = (v7 + 8);
    while (1)
    {
      v18 = v14 == v16;
      if (v14 == v16)
      {
        return v18;
      }

      if (__OFADD__(v16, 1))
      {
        __break(1u);
        break;
      }

      Array.subscript.getter();
      Array.subscript.getter();
      v19 = (*(a4 + 8))(v9, a3, a4);
      v20 = *v17;
      (*v17)(v9, a3);
      result = (v20)(v12, a3);
      ++v16;
      if ((v19 & 1) == 0)
      {
        return v18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1010A6EF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v9 = v1[2];
  v10 = *(v1 + 48);
  return sub_100B1BDA8(v5) & 1;
}

BOOL sub_1010A6F68(_OWORD *a1)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v8[4] = a1[4];
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  v7[4] = v1[4];
  v5 = v1[1];
  v7[0] = *v1;
  v7[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO6ShadowO21__derived_enum_equalsySbAG_AGtFZ_0(v7, v8);
}

uint64_t sub_1010A6FC4(uint64_t a1)
{
  sub_100810AD0(a1, v3);
  sub_100810AD0(v1, v4);
  return sub_100B1BBC8(v3) & 1;
}

uint64_t sub_1010A7018(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v9 = v1[2];
  v10 = *(v1 + 48);
  return sub_100B1C7DC(v5) & 1;
}

BOOL sub_1010A70C4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (!*(v1 + 16))
  {
    if (*(a1 + 16))
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (*(v1 + 16) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

LABEL_13:
    v8 = *v1 == v2;
    return *(v1 + 8) == v3 && v8;
  }

  v6 = *&v3 | *&v2;
  return v4 == 2 && v6 == 0;
}

uint64_t sub_1010A7208(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(v1 + 96);
  if (v3 == 3)
  {
    v4 = *(a1 + 96) == 3;
  }

  else
  {
    v5 = *(v1 + 48);
    v12[2] = *(v1 + 32);
    v12[3] = v5;
    v6 = *(v1 + 80);
    v12[4] = *(v1 + 64);
    v12[5] = v6;
    v7 = *(v1 + 16);
    v12[0] = *v1;
    v12[1] = v7;
    v13 = v3;
    if (v2 == 3)
    {
      v4 = 0;
    }

    else
    {
      v8 = *(a1 + 48);
      v14[2] = *(a1 + 32);
      v14[3] = v8;
      v9 = *(a1 + 80);
      v14[4] = *(a1 + 64);
      v14[5] = v9;
      v10 = *(a1 + 16);
      v14[0] = *a1;
      v14[1] = v10;
      v15 = v2;
      v4 = _s8Freeform17TSContentLanguageO6ModelsO14ScaffoldShadowO0eF4TypeV23__derived_struct_equalsySbAI_AItFZ_0(v12, v14);
    }
  }

  return v4 & 1;
}

uint64_t sub_1010A72A4(__int128 *a1)
{
  v3 = *(v1 + 208);
  v108[12] = *(v1 + 192);
  v108[13] = v3;
  v109 = *(v1 + 224);
  v4 = *(v1 + 144);
  v108[8] = *(v1 + 128);
  v108[9] = v4;
  v5 = *(v1 + 176);
  v108[10] = *(v1 + 160);
  v108[11] = v5;
  v6 = *(v1 + 80);
  v108[4] = *(v1 + 64);
  v108[5] = v6;
  v7 = *(v1 + 112);
  v108[6] = *(v1 + 96);
  v108[7] = v7;
  v8 = *(v1 + 16);
  v108[0] = *v1;
  v108[1] = v8;
  v9 = *(v1 + 48);
  v108[2] = *(v1 + 32);
  v108[3] = v9;
  v10 = sub_1007CE5F0(v108);
  if (!v10)
  {
    v37 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v108, v11);
    v38 = v37[9];
    v88 = v37[8];
    v89 = v38;
    v90 = v37[10];
    v39 = v37[5];
    v84 = v37[4];
    v85 = v39;
    v40 = v37[7];
    v86 = v37[6];
    v87 = v40;
    v41 = v37[1];
    v80 = *v37;
    v81 = v41;
    v42 = v37[3];
    v82 = v37[2];
    v83 = v42;
    v79 = *(a1 + 224);
    v43 = a1[13];
    v77 = a1[12];
    v78 = v43;
    v44 = a1[11];
    v75 = a1[10];
    v76 = v44;
    v45 = a1[9];
    v73 = a1[8];
    v74 = v45;
    v46 = a1[7];
    v71 = a1[6];
    v72 = v46;
    v47 = a1[5];
    v69 = a1[4];
    v70 = v47;
    v48 = a1[3];
    v67 = a1[2];
    v68 = v48;
    v49 = a1[1];
    v65 = *a1;
    v66 = v49;
    if (!sub_1007CE5F0(&v65))
    {
      v58 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v65, v50);
      v59 = v58[9];
      v102 = v58[8];
      v103 = v59;
      v104 = v58[10];
      v60 = v58[5];
      v98 = v58[4];
      v99 = v60;
      v61 = v58[7];
      v100 = v58[6];
      v101 = v61;
      v62 = v58[1];
      v94 = *v58;
      v95 = v62;
      v63 = v58[3];
      v96 = v58[2];
      v97 = v63;
      v36 = _s8Freeform17TSContentLanguageO6ModelsO14ListPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v80, &v94);
      return v36 & 1;
    }

LABEL_6:
    v36 = 0;
    return v36 & 1;
  }

  if (v10 != 1)
  {
    v51 = a1[13];
    v77 = a1[12];
    v78 = v51;
    v79 = *(a1 + 224);
    v52 = a1[9];
    v73 = a1[8];
    v74 = v52;
    v53 = a1[11];
    v75 = a1[10];
    v76 = v53;
    v54 = a1[5];
    v69 = a1[4];
    v70 = v54;
    v55 = a1[7];
    v71 = a1[6];
    v72 = v55;
    v56 = a1[1];
    v65 = *a1;
    v66 = v56;
    v57 = a1[3];
    v67 = a1[2];
    v68 = v57;
    v36 = sub_1007CE5F0(&v65) == 2;
    return v36 & 1;
  }

  v12 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v108, v11);
  v13 = v12[11];
  v90 = v12[10];
  v91 = v13;
  v14 = v12[13];
  v92 = v12[12];
  v93 = v14;
  v15 = v12[7];
  v86 = v12[6];
  v87 = v15;
  v16 = v12[9];
  v88 = v12[8];
  v89 = v16;
  v17 = v12[3];
  v82 = v12[2];
  v83 = v17;
  v18 = v12[5];
  v84 = v12[4];
  v85 = v18;
  v19 = v12[1];
  v80 = *v12;
  v81 = v19;
  v79 = *(a1 + 224);
  v20 = a1[13];
  v77 = a1[12];
  v78 = v20;
  v21 = a1[11];
  v75 = a1[10];
  v76 = v21;
  v22 = a1[9];
  v73 = a1[8];
  v74 = v22;
  v23 = a1[7];
  v71 = a1[6];
  v72 = v23;
  v24 = a1[5];
  v69 = a1[4];
  v70 = v24;
  v25 = a1[3];
  v67 = a1[2];
  v68 = v25;
  v26 = a1[1];
  v65 = *a1;
  v66 = v26;
  if (sub_1007CE5F0(&v65) != 1)
  {
    goto LABEL_6;
  }

  v28 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v65, v27);
  v29 = v28[11];
  v104 = v28[10];
  v105 = v29;
  v30 = v28[13];
  v106 = v28[12];
  v107 = v30;
  v31 = v28[7];
  v100 = v28[6];
  v101 = v31;
  v32 = v28[9];
  v102 = v28[8];
  v103 = v32;
  v33 = v28[3];
  v96 = v28[2];
  v97 = v33;
  v34 = v28[5];
  v98 = v28[4];
  v99 = v34;
  v35 = v28[1];
  v94 = *v28;
  v95 = v35;
  v36 = _s8Freeform17TSContentLanguageO6ModelsO17ScaffoldListStyleV23__derived_struct_equalsySbAG_AGtFZ_0(&v80, &v94);
  return v36 & 1;
}

BOOL sub_1010A7528(__int128 *a1)
{
  v3 = v1[7];
  v68[6] = v1[6];
  v68[7] = v3;
  v69[0] = v1[8];
  *(v69 + 14) = *(v1 + 142);
  v4 = v1[3];
  v68[2] = v1[2];
  v68[3] = v4;
  v5 = v1[5];
  v68[4] = v1[4];
  v68[5] = v5;
  v6 = v1[1];
  v68[0] = *v1;
  v68[1] = v6;
  v7 = sub_1007CF090(v68);
  if (!v7)
  {
    v25 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v68, v8);
    v26 = v25[5];
    v56 = v25[4];
    *v57 = v26;
    *&v57[13] = *(v25 + 93);
    v27 = v25[1];
    v52 = *v25;
    v53 = v27;
    v28 = v25[3];
    v54 = v25[2];
    v55 = v28;
    v29 = a1[1];
    v43 = *a1;
    v44 = v29;
    v30 = a1[5];
    v47 = a1[4];
    v48 = v30;
    v31 = a1[3];
    v45 = a1[2];
    v46 = v31;
    *(v51 + 14) = *(a1 + 142);
    v32 = a1[8];
    v50 = a1[7];
    v51[0] = v32;
    v49 = a1[6];
    if (!sub_1007CF090(&v43))
    {
      v38 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v43, v33);
      v39 = v38[5];
      v64 = v38[4];
      *v65 = v39;
      *&v65[13] = *(v38 + 93);
      v40 = v38[1];
      v60 = *v38;
      v61 = v40;
      v41 = v38[3];
      v62 = v38[2];
      v63 = v41;
      return _s8Freeform17TSContentLanguageO6ModelsO16LayoutPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v52, &v60);
    }

    return 0;
  }

  if (v7 != 1)
  {
    v34 = a1[7];
    v49 = a1[6];
    v50 = v34;
    v51[0] = a1[8];
    *(v51 + 14) = *(a1 + 142);
    v35 = a1[3];
    v45 = a1[2];
    v46 = v35;
    v36 = a1[5];
    v47 = a1[4];
    v48 = v36;
    v37 = a1[1];
    v43 = *a1;
    v44 = v37;
    return sub_1007CF090(&v43) == 2;
  }

  v9 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v68, v8);
  v10 = v9[7];
  *&v57[16] = v9[6];
  v58 = v10;
  v59[0] = v9[8];
  *(v59 + 13) = *(v9 + 141);
  v11 = v9[3];
  v54 = v9[2];
  v55 = v11;
  v12 = v9[5];
  v56 = v9[4];
  *v57 = v12;
  v13 = v9[1];
  v52 = *v9;
  v53 = v13;
  v14 = a1[1];
  v43 = *a1;
  v44 = v14;
  v15 = a1[3];
  v45 = a1[2];
  v46 = v15;
  v16 = a1[5];
  v47 = a1[4];
  v48 = v16;
  v17 = a1[7];
  v49 = a1[6];
  v50 = v17;
  v51[0] = a1[8];
  *(v51 + 14) = *(a1 + 142);
  if (sub_1007CF090(&v43) != 1)
  {
    return 0;
  }

  v19 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v43, v18);
  v20 = v19[7];
  *&v65[16] = v19[6];
  v66 = v20;
  v67[0] = v19[8];
  *(v67 + 13) = *(v19 + 141);
  v21 = v19[3];
  v62 = v19[2];
  v63 = v21;
  v22 = v19[5];
  v64 = v19[4];
  *v65 = v22;
  v23 = v19[1];
  v60 = *v19;
  v61 = v23;
  return _s8Freeform17TSContentLanguageO6ModelsO19ScaffoldLayoutStyleV23__derived_struct_equalsySbAG_AGtFZ_0(&v52, &v60);
}

BOOL sub_1010A7760(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  memcpy(v17, v1, 0x5C5uLL);
  v4 = sub_1007CF078(v17);
  if (!v4)
  {
    v10 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, v5);
    memcpy(__dst, v10, 0x594uLL);
    memcpy(v14, v3, 0x5C5uLL);
    if (!sub_1007CF078(v14))
    {
      v12 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v14, v11);
      memcpy(v16, v12, 0x594uLL);
      return _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(__dst);
    }

    return 0;
  }

  if (v4 != 1)
  {
    memcpy(v14, v3, 0x5C5uLL);
    return sub_1007CF078(v14) == 2;
  }

  v6 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, v5);
  memcpy(__dst, v6, 0x5C4uLL);
  memcpy(v14, v3, 0x5C5uLL);
  if (sub_1007CF078(v14) != 1)
  {
    return 0;
  }

  v8 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v14, v7);
  memcpy(v16, v8, sizeof(v16));
  return _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldParagraphStyleV23__derived_struct_equalsySbAG_AGtFZ_0(__dst);
}

BOOL sub_1010A7920(int8x16_t *a1)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v10 = a1[4].i8[0];
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v4;
  v8 = *(v1 + 64);
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO13ListLabelTypeO21__derived_enum_equalsySbAG_AGtFZ_0(v7, v9);
}

BOOL sub_1010A7998(const void *a1)
{
  memcpy(__dst, v1, 0x3ADuLL);
  v3 = sub_10067EF20(__dst);
  if (!v3)
  {
    v9 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, v4);
    memcpy(v14, v9, 0x37CuLL);
    memcpy(v13, a1, 0x3ADuLL);
    if (!sub_10067EF20(v13))
    {
      v11 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v13, v10);
      memcpy(v15, v11, 0x37CuLL);
      return _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v14);
    }

    return 0;
  }

  if (v3 != 1)
  {
    memcpy(v13, a1, 0x3ADuLL);
    return sub_10067EF20(v13) == 2;
  }

  v5 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, v4);
  memcpy(v14, v5, 0x3ACuLL);
  memcpy(v13, a1, 0x3ADuLL);
  if (sub_10067EF20(v13) != 1)
  {
    return 0;
  }

  v7 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v13, v6);
  memcpy(v15, v7, sizeof(v15));
  return _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldCharacterStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v14);
}

uint64_t sub_1010A7AE4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = *a1;
  v8 = a4(v6);
  v10 = v9;
  if (v8 == a4(v7) && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_1010A7B8C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return _s8Freeform17TSContentLanguageO6ModelsO12ScaffoldFillV0eF4TypeO21__derived_enum_equalsySbAI_AItFZ_0(v3, __dst) & 1;
}

unint64_t sub_1010A7C1C()
{
  result = qword_101A04708;
  if (!qword_101A04708)
  {
    type metadata accessor for AttributedString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04708);
  }

  return result;
}

unint64_t sub_1010A7CA4(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 16))
  {
    sub_1005B981C(&qword_101A0BA60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_100006370(0, a2);

        v20 = v19;
        swift_dynamicCast();
        sub_10000BF3C(&v27, v29);
        sub_10000BF3C(v29, v30);
        sub_10000BF3C(v30, &v28);
        result = sub_10000BE7C(v18, v17);
        if (v21)
        {
          v10 = (v3[6] + 16 * result);
          *v10 = v18;
          v10[1] = v17;
          v11 = result;

          v12 = (v3[7] + 32 * v11);
          sub_100005070(v12);
          result = sub_10000BF3C(&v28, v12);
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v3[2] >= v3[3])
          {
            goto LABEL_20;
          }

          *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v3[6] + 16 * result);
          *v22 = v18;
          v22[1] = v17;
          result = sub_10000BF3C(&v28, (v3[7] + 32 * result));
          v23 = v3[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v3[2] = v25;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1010A7F08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1005B981C(&qword_101A0EFB0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + v13);
    sub_100064288(*(a1 + 56) + 32 * v13, v26 + 8);
    LOBYTE(v26[0]) = v14;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v25 = v27;
    sub_10000BF3C((v24 + 8), &v22);
    sub_1005B981C(&unk_1019F4D00);
    swift_dynamicCast();
    *v23 = *&v23[8];
    *&v23[16] = *&v23[24];
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(v2[6] + v10) = v14;
    v11 = (v2[7] + 32 * v10);
    *v11 = *v23;
    v11[1] = *&v23[16];
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1010A8348(uint64_t a1)
{
  v44 = type metadata accessor for UUID();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1005B981C(&qword_101A22DF0);
  __chkstk_darwin(v42);
  v41 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = v37 - v5;
  v46 = a1;
  if (*(a1 + 16))
  {
    sub_1005B981C(&qword_101A0F030);
    v6 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v6 = _swiftEmptyDictionarySingleton;
  }

  v7 = v46 + 64;
  v8 = 1 << *(v46 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v46 + 64);
  v11 = (v8 + 63) >> 6;
  v37[2] = v45 + 16;
  v37[1] = v45 + 32;
  v12 = v6 + 8;

  v14 = 0;
  v39 = v6;
  v38 = v7;
  v15 = v45;
  v16 = v42;
  while (v10)
  {
LABEL_15:
    v20 = __clz(__rbit64(v10)) | (v14 << 6);
    v21 = (*(v46 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = v40;
    v25 = v44;
    (*(v15 + 16))(&v40[*(v16 + 48)], *(v46 + 56) + *(v15 + 72) * v20, v44);
    *v24 = v23;
    v24[1] = v22;
    v26 = v24;
    v27 = v41;
    sub_10003DFF8(v26, v41, &qword_101A22DF0);
    v28 = *(v16 + 48);
    v29 = *(v27 + 1);
    *&v55 = *v27;
    *(&v55 + 1) = v29;

    swift_dynamicCast();
    (*(v15 + 32))(v43, &v27[v28], v25);
    swift_dynamicCast();
    v51 = v47;
    v52 = v48;
    v53 = v49;
    sub_10000BF3C(&v50, v54);
    v47 = v51;
    v48 = v52;
    v49 = v53;
    sub_10000BF3C(v54, &v55);
    v6 = v39;
    result = AnyHashable._rawHashValue(seed:)(v39[5]);
    v30 = -1 << *(v6 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~v12[v31 >> 6]) == 0)
    {
      v33 = 0;
      v34 = (63 - v30) >> 6;
      v7 = v38;
      while (++v32 != v34 || (v33 & 1) == 0)
      {
        v35 = v32 == v34;
        if (v32 == v34)
        {
          v32 = 0;
        }

        v33 |= v35;
        v36 = v12[v32];
        if (v36 != -1)
        {
          v17 = __clz(__rbit64(~v36)) + (v32 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v31) & ~v12[v31 >> 6])) | v31 & 0x7FFFFFFFFFFFFFC0;
    v7 = v38;
LABEL_9:
    v10 &= v10 - 1;
    *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = v6[6] + 40 * v17;
    *v18 = v47;
    *(v18 + 16) = v48;
    *(v18 + 32) = v49;
    result = sub_10000BF3C(&v55, (v6[7] + 32 * v17));
    ++v6[2];
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v19);
    ++v14;
    if (v10)
    {
      v14 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1010A882C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1005B981C(&qword_101A0F030);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    *&v30[0] = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
    v13 = *&v30[0];
    type metadata accessor for Name(0);
    v14 = v13;

    swift_dynamicCast();
    sub_1005B981C(&unk_101A00BF8);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000BF3C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000BF3C(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_10000BF3C(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1010A8B04(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v30 = v1;
  v42 = _swiftEmptyArrayStorage;
  sub_100776524(0, v9, 0);
  v10 = v42;
  v11 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v36 = (v13 + 16);
  v37 = v13;
  v34 = a1;
  v35 = v13 + 32;
  v31 = a1 + 64;
  v32 = v9;
  v33 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v40 = v15;
    v41 = v18;
    v19 = v38;
    sub_10005006C(*(a1 + 48) + *(v39 + 72) * v14, v38, type metadata accessor for CRLBoardIdentifier);
    (*v36)(v8, v19, v5);
    sub_10003D87C(v19, type metadata accessor for CRLBoardIdentifier);
    v42 = v10;
    v20 = v5;
    v22 = v10[2];
    v21 = v10[3];
    if (v22 >= v21 >> 1)
    {
      sub_100776524(v21 > 1, v22 + 1, 1);
      v10 = v42;
    }

    v10[2] = v22 + 1;
    result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v8, v20);
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v33;
    v23 = *(v33 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v5 = v20;
    a1 = v34;
    if (v41 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1000341AC(v14, v41, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v14, v41, 0);
    }

LABEL_4:
    v15 = v40 + 1;
    v14 = v16;
    if (v40 + 1 == v32)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1010A8ECC(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v33 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v28 = v1;
  v36 = _swiftEmptyArrayStorage;
  sub_100034080(0, v5, 0);
  v6 = v36;
  v7 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v29 = a1 + 64;
  v30 = v5;
  v31 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v34 = *(a1 + 36);
    v14 = v32;
    sub_10005006C(*(a1 + 48) + *(v33 + 72) * v9, v32, type metadata accessor for CRLBoardIdentifier);
    v35 = UUID.uuidString.getter();
    v16 = v15;
    result = sub_10003D87C(v14, type metadata accessor for CRLBoardIdentifier);
    v36 = v6;
    v18 = v6[2];
    v17 = v6[3];
    v19 = v6;
    if (v18 >= v17 >> 1)
    {
      result = sub_100034080((v17 > 1), v18 + 1, 1);
      v19 = v36;
    }

    v19[2] = v18 + 1;
    v20 = &v19[2 * v18];
    v20[4] = v35;
    v20[5] = v16;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v31;
    v21 = *(v31 + 8 * v13);
    if ((v21 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v19;
    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v9 & 0x3F));
    if (v22)
    {
      v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v12 = v30;
    }

    else
    {
      v23 = v13 << 6;
      v24 = v13 + 1;
      v12 = v30;
      v25 = (v29 + 8 * v13);
      while (v24 < (v11 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1000341AC(v9, v34, 0);
          v11 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v9, v34, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v12)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1010A91B4(uint64_t a1, char a2)
{
  *(v3 + 208) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  type metadata accessor for MainActor();
  *(v3 + 104) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 112) = v5;
  *(v3 + 120) = v4;

  return _swift_task_switch(sub_1010A9250, v5, v4);
}

uint64_t sub_1010A9250()
{
  if ((*(v0 + 208) & 1) == 0)
  {
    v1 = *(v0 + 96);
    v2 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (*(v3 + 16))
    {
      v4 = sub_1000486F0(*(v0 + 88));
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);
        swift_endAccess();

        v7 = *(*(v6 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);

        v8 = *(*&v7[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] + 16);
        if (v8)
        {
          v9 = v8;
          [v9 copy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          sub_100006370(0, &qword_1019F52C0);
          if (swift_dynamicCast())
          {
            v10 = *(v0 + 80);
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {

          v10 = 0;
        }

        v11 = *(v0 + 8);

        return v11(v10);
      }
    }

    swift_endAccess();
  }

  *(v0 + 128) = *(*(v0 + 96) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);

  return _swift_task_switch(sub_1010A942C, 0, 0);
}

uint64_t sub_1010A942C()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_1005B981C(&qword_101A21F40);
  *v4 = v0;
  v4[1] = sub_1010A9538;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 9, 0, 0, 0xD000000000000017, 0x80000001015C1040, sub_101104B88, v3, v5);
}

uint64_t sub_1010A9538()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1010A9760;
  }

  else
  {

    v2 = sub_1010A9654;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010A9674()
{
  if (v0[20])
  {

    v1 = v0[20];
    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[21] = v4;
    *v4 = v0;
    v4[1] = sub_1010A9828;
    v5 = v0[11];

    return sub_101239018(v5);
  }
}

uint64_t sub_1010A9760()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1010A97C4, v1, v2);
}

uint64_t sub_1010A97C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010A9828(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 120);
  v6 = *(v3 + 112);
  if (v1)
  {
    v7 = sub_1010A9BE4;
  }

  else
  {
    v7 = sub_1010A996C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1010A996C()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[24] = v3;
    *v3 = v0;
    v3[1] = sub_1010A9A58;
    v4 = v0[22];
    v5 = v0[11];

    return sub_1010A9CB4(v5, v4, 1);
  }

  else
  {

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_1010A9A58()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1010A9C48;
  }

  else
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1010A9B74;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1010A9B74()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 176);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1010A9BE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010A9C48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010A9CB4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 136) = a2;
  *(v4 + 144) = v3;
  *(v4 + 192) = a3;
  *(v4 + 128) = a1;
  type metadata accessor for MainActor();
  *(v4 + 152) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 160) = v6;
  *(v4 + 168) = v5;

  return _swift_task_switch(sub_1010A9D54, v6, v5);
}

uint64_t sub_1010A9D54()
{
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v4 = inited;
  *(inited + 16) = xmmword_10146C6B0;
  v5 = *(v0 + 136);
  if (v1)
  {
    *(v0 + 112) = sub_100006370(0, &qword_1019F52C0);
    *(v0 + 120) = sub_10000FDE0(&qword_101A1BA40, &qword_1019F52C0);
    *(v0 + 88) = v5;
    sub_100050F74((v0 + 88), v4 + 32);
  }

  else
  {
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(v4 + 32) = 7104878;
    *(v4 + 40) = 0xE300000000000000;
  }

  v5;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Trying to update saved share with: %@", 37, 2, v4);
  swift_setDeallocating();
  sub_100005070(v4 + 32);
  if (v1)
  {
    sub_100CE94A4();
  }

  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_1010A9F4C;
  v8 = *(v0 + 136);
  v9 = *(v0 + 192);
  v10 = *(v0 + 128);

  return sub_1010C3780(v10, v8, v9);
}

uint64_t sub_1010A9F4C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_1010AA088;
  }

  else
  {
    v5 = sub_100BF994C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010AA088()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1010AA0EC(uint64_t a1, void *a2)
{
  v60 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v60);
  v59 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for UUID();
  v7 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v51 - v10;
  v51 = type metadata accessor for CRLBoardIdentifier(0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v56 = (v7 + 16);
    v54 = (v7 + 8);
    v55 = CKCurrentUserDefaultName;
    v53 = (v7 + 32);
    v14 = (a1 + 40);
    v57 = a2;
    while (1)
    {
      v17 = *(v14 - 1);
      v18 = *v14;
      v19 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v20 = v17 + v19;
      v21 = v58;
      sub_10005006C(v20, v58, type metadata accessor for CRLBoardCRDTData);
      v61 = v18;
      v22 = v18;

      sub_1005B981C(&unk_1019F5250);
      v23 = v62;
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v21, type metadata accessor for CRLBoardCRDTData);
      v24 = *(v17 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v25 = *(v17 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);
      (*v56)(v63, v23, v64);
      v27 = v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26;
      if (v27 || (v28 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v28 & 1) != 0))
      {

        v24 = 0;
        v25 = 0xE000000000000000;
      }

      v29 = v64;
      (*v54)(v62, v64);
      v30 = v59;
      (*v53)(v59, v63, v29);
      v31 = (v30 + *(v60 + 20));
      *v31 = v24;
      v31[1] = v25;
      sub_100025738(v30, v12, type metadata accessor for CRLBoardIdentifierStorage);

      v32 = v22;
      v33 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = *v33;
      v35 = v65;
      *v33 = 0x8000000000000000;
      v36 = sub_1000486F0(v12);
      v38 = v35[2];
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        break;
      }

      v42 = v37;
      if (v35[3] >= v41)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = v36;
          sub_100AAD37C();
          v36 = v50;
        }
      }

      else
      {
        sub_100A98CC0(v41, isUniquelyReferenced_nonNull_native);
        v36 = sub_1000486F0(v12);
        if ((v42 & 1) != (v43 & 1))
        {
          goto LABEL_23;
        }
      }

      v44 = v61;
      v45 = v65;
      if (v42)
      {
        v15 = (v65[7] + 16 * v36);
        v16 = v15[1];
        *v15 = v17;
        v15[1] = v44;
      }

      else
      {
        v65[(v36 >> 6) + 8] |= 1 << v36;
        v46 = v36;
        sub_10005006C(v12, v45[6] + *(v52 + 72) * v36, type metadata accessor for CRLBoardIdentifier);
        v47 = (v45[7] + 16 * v46);
        *v47 = v17;
        v47[1] = v44;
        v48 = v45[2];
        v40 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v40)
        {
          goto LABEL_22;
        }

        v45[2] = v49;
      }

      v14 += 2;
      *v33 = v45;
      sub_10003D87C(v12, type metadata accessor for CRLBoardIdentifier);

      if (!--v13)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_1010AA640(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (v11 << 9) | (8 * __clz(__rbit64(v8)));
      v13 = *(*(a3 + 56) + v12);
      v16[0] = *(*(a3 + 48) + v12);
      v16[1] = v13;
      v14 = v16[0];

      v15 = v17(v16);
      if (v3)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;

      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1010AA810(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = (a3 + 40);
  while (1)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v12[0] = v7;
    v12[1] = v8;
    v9 = v8;

    v10 = a1(v12);
    if (v3)
    {
      break;
    }

    if (v10)
    {
      return v7;
    }

    v6 += 2;

    if (!--v4)
    {
      return 0;
    }
  }

  return v7;
}

id sub_1010AA8D4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v10 = *i;
    v7 = v10;
    v8 = a1(&v10);
    if (v3)
    {
      break;
    }

    if (v8)
    {
      return v7;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v7;
}

void *sub_1010AA984(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_1010AAB00@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v28 = a6;
  v13 = a3(0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v18 = *(a2 + 16);
  if (v18)
  {
    v26 = v14;
    v27 = a7;
    v19 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v25 = v15;
    v20 = *(v15 + 72);
    while (1)
    {
      sub_10005006C(v19, v17, a4);
      v21 = a1(v17);
      if (v7)
      {
        return sub_10003D87C(v17, a5);
      }

      if (v21)
      {
        break;
      }

      sub_10003D87C(v17, a5);
      v19 += v20;
      if (!--v18)
      {
        v22 = 1;
        a7 = v27;
        goto LABEL_10;
      }
    }

    a7 = v27;
    sub_100025738(v17, v27, v28);
    v22 = 0;
LABEL_10:
    v15 = v25;
    v14 = v26;
  }

  else
  {
    v22 = 1;
  }

  return (*(v15 + 56))(a7, v22, 1, v14);
}

uint64_t sub_1010AACA0(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    _s8ItemDataCMa();
    sub_101104B20(&qword_101A1F168, _s8ItemDataCMa);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v27 = v18;
        v19 = a1(&v27);
        if (v4)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_23;
        }

        v9 = v16;
        v10 = v17;
        v5 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          _s8ItemDataCMa();
          swift_dynamicCast();
          v18 = v27;
          v16 = v9;
          v17 = v10;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

LABEL_23:
      sub_100035F90();
    }

    else
    {
LABEL_20:
      sub_100035F90();
      return 0;
    }

    return v18;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1010AAEFC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v22 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v25 = *(v22 - 8);
  v5 = __chkstk_darwin(v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      sub_10005006C(*(a2 + 48) + *(v25 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v9, type metadata accessor for CRLSELibraryViewModel.Item);
      sub_100025738(v9, v7, type metadata accessor for CRLSELibraryViewModel.Item);
      v17 = v24(v7);
      if (v3)
      {
        sub_10003D87C(v7, type metadata accessor for CRLSELibraryViewModel.Item);
      }

      if (v17)
      {
        break;
      }

      v12 &= v12 - 1;
      result = sub_10003D87C(v7, type metadata accessor for CRLSELibraryViewModel.Item);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v20 = v23;
    sub_100025738(v7, v23, type metadata accessor for CRLSELibraryViewModel.Item);
    v19 = v20;
    v18 = 0;
    return (*(v25 + 56))(v19, v18, 1, v22);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        v18 = 1;
        v19 = v23;
        return (*(v25 + 56))(v19, v18, 1, v22);
      }

      v12 = *(a2 + 56 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1010AB188(uint64_t a1, uint64_t *a2)
{
  v17 = a2;
  v4 = _s5BoardVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (v10)
  {
LABEL_9:
    sub_10005006C(*(a1 + 56) + *(v5 + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v7, _s5BoardVMa);
    v15 = sub_1010F0AB8(v7, v17);
    result = sub_10003D87C(v7, _s5BoardVMa);
    if (v2)
    {
      goto LABEL_13;
    }

    v10 &= v10 - 1;
    if (v15)
    {
      LOBYTE(v10) = 1;
LABEL_13:

      return v10 & 1;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      LOBYTE(v10) = 0;
      goto LABEL_13;
    }

    v10 = *(a1 + 64 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1010AB348(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v4;
  v2[15] = v3;

  return _swift_task_switch(sub_1010AB3E0, v4, v3);
}

uint64_t sub_1010AB3E0()
{
  v1 = v0[11];
  v2 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  if (*v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2[1] == 0xE000000000000000;
  }

  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v0[16] = *(v0[12] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);

    return _swift_task_switch(sub_1010AB4CC, 0, 0);
  }

  else
  {

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_1010AB4CC()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1010AB5C8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 20, 0, 0, 0xD000000000000039, 0x80000001015C1060, sub_101104BA8, v3, &type metadata for Bool);
}

uint64_t sub_1010AB5C8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1010AB7E4;
  }

  else
  {

    v2 = sub_1010AB6E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010AB704()
{
  v1 = *(v0 + 161);

  if ((v1 & 1) == 0)
  {
    v2 = [objc_opt_self() defaultCenter];
    if (qword_1019F2898 != -1)
    {
      swift_once();
    }

    [v2 postNotificationName:qword_101AD8F58 object:*(v0 + 96)];
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1010AB7E4()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1010AB848, v1, v2);
}

uint64_t sub_1010AB848()
{

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v3 = UUID.uuidString.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Failed to check fetchBoardExistsAndHasSyncedAtLeastOnce for %{public}@", 70, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1010AB99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v128 = a2;
  v6 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v6 - 8);
  v127 = &v109 - v7;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v126 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for CRLBoardCRDTData(0);
  v10 = __chkstk_darwin(v123);
  v120 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v109 - v12);
  v14 = type metadata accessor for Date();
  v121 = *(v14 - 8);
  v122 = v14;
  v15 = __chkstk_darwin(v14);
  v125 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v124 = &v109 - v18;
  v19 = __chkstk_darwin(v17);
  v133 = &v109 - v20;
  __chkstk_darwin(v19);
  v129 = &v109 - v21;
  v22 = _s5BoardVMa(0);
  v23 = *(v22 - 1);
  __chkstk_darwin(v22);
  v25 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  swift_beginAccess();
  v27 = *(v4 + v26);
  if (*(v27 + 16))
  {
    v28 = sub_1000486F0(a1);
    if (v29)
    {
      sub_10005006C(*(v27 + 56) + *(v23 + 72) * v28, v25, _s5BoardVMa);
      sub_100025738(v25, v128, _s5BoardVMa);
      return swift_endAccess();
    }
  }

  swift_endAccess();
  v31 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v32 = *(v4 + v31);
  if (!*(v32 + 16) || (v33 = sub_1000486F0(a1), (v34 & 1) == 0))
  {
    swift_endAccess();
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v66 = UUID.uuidString.getter();
    v68 = v67;
    *(inited + 56) = &type metadata for String;
    v69 = sub_1000053B0();
    *(inited + 32) = v66;
    v133 = (inited + 32);
    v129 = v69;
    *(inited + 64) = v69;
    *(inited + 40) = v68;
    v125 = objc_opt_self();
    LODWORD(v70) = [v125 _atomicIncrementAssertCount];
    v132 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v132);
    StaticString.description.getter();
    v127 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v71 = String._bridgeToObjectiveC()();

    v72 = [v71 lastPathComponent];

    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v74;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v75 = static OS_os_log.crlAssert;
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_10146CA70;
      *(v76 + 56) = &type metadata for Int32;
      *(v76 + 64) = &protocol witness table for Int32;
      *(v76 + 32) = v70;
      v77 = sub_100006370(0, &qword_1019F4D30);
      *(v76 + 96) = v77;
      v78 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      v79 = v127;
      *(v76 + 72) = v127;
      v80 = v129;
      *(v76 + 136) = &type metadata for String;
      *(v76 + 144) = v80;
      *(v76 + 104) = v78;
      *(v76 + 112) = v73;
      *(v76 + 120) = v126;
      *(v76 + 176) = &type metadata for UInt;
      *(v76 + 184) = &protocol witness table for UInt;
      *(v76 + 152) = 1239;
      v81 = v132;
      *(v76 + 216) = v77;
      *(v76 + 224) = v78;
      *(v76 + 192) = v81;
      v82 = v79;
      v83 = v81;
      v84 = static os_log_type_t.error.getter();
      sub_100005404(v75, &_mh_execute_header, v84, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v76);
      swift_setDeallocating();
      v127 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v85 = static os_log_type_t.error.getter();
      sub_100005404(v75, &_mh_execute_header, v85, "No metadata for board identifier: %@", 36, 2, inited);

      type metadata accessor for __VaListBuilder();
      v86 = swift_allocObject();
      v86[2] = 8;
      v86[3] = 0;
      v87 = v86 + 3;
      v86[4] = 0;
      v86[5] = 0;
      v73 = *(inited + 16);
      if (!v73)
      {
LABEL_37:
        v103 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v104 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v105 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v106 = String._bridgeToObjectiveC()();

        v107 = v125;
        [v125 handleFailureInFunction:v104 file:v105 lineNumber:1239 isFatal:0 format:v106 args:v103];

        swift_setDeallocating();
        swift_arrayDestroy();
        [v107 logFullBacktrace];
        sub_1006A3EB0();
        swift_allocError();
        *v108 = 0;
        return swift_willThrow();
      }

      v88 = 0;
      v128 = inited;
      v129 = v73;
      while (1)
      {
        sub_100020E58(&v133[40 * v88], *&v133[40 * v88 + 24]);
        v89 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v70 = *v87;
        v90 = *(v89 + 16);
        v91 = __OFADD__(*v87, v90);
        v92 = *v87 + v90;
        if (v91)
        {
          break;
        }

        v93 = v86[4];
        if (v93 >= v92)
        {
          goto LABEL_29;
        }

        if (v93 + 0x4000000000000000 < 0)
        {
          goto LABEL_40;
        }

        v94 = v86[5];
        if (2 * v93 > v92)
        {
          v92 = 2 * v93;
        }

        v86[4] = v92;
        if ((v92 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_41;
        }

        v95 = v89;
        v96 = swift_slowAlloc();
        v97 = v96;
        v86[5] = v96;
        if (v94)
        {
          if (v96 != v94 || v96 >= &v94[8 * v70])
          {
            memmove(v96, v94, 8 * v70);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v89 = v95;
          inited = v128;
          v73 = v129;
LABEL_29:
          v97 = v86[5];
          if (!v97)
          {
            goto LABEL_36;
          }

          goto LABEL_30;
        }

        v89 = v95;
        v73 = v129;
        inited = v128;
        if (!v97)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_30:
        v99 = *(v89 + 16);
        if (v99)
        {
          v100 = (v89 + 32);
          v101 = *v87;
          while (1)
          {
            v102 = *v100++;
            *&v97[8 * v101] = v102;
            v101 = *v87 + 1;
            if (__OFADD__(*v87, 1))
            {
              break;
            }

            *v87 = v101;
            if (!--v99)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          break;
        }

LABEL_14:

        if (++v88 == v73)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      swift_once();
    }
  }

  v35 = a1;
  v119 = v3;
  v36 = *(*(v32 + 56) + 8 * v33);
  swift_endAccess();
  v37 = qword_1019F2130;

  if (v37 != -1)
  {
    swift_once();
  }

  v118 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_10146C6B0;
  v112 = v35;
  v39 = UUID.uuidString.getter();
  v41 = v40;
  *(v38 + 56) = &type metadata for String;
  *(v38 + 64) = sub_1000053B0();
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  v42 = static os_log_type_t.debug.getter();
  sub_100005404(v118, &_mh_execute_header, v42, "No metadata in snapshot; returning metadata for open board with identifier: %@", 78, 2, v38);
  swift_setDeallocating();
  sub_100005070(v38 + 32);
  v117 = v36;
  v43 = *(*(*(v36 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v44 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v118 = type metadata accessor for CRLBoardCRDTData;
  sub_10005006C(v43 + v44, v13, type metadata accessor for CRLBoardCRDTData);

  sub_1005B981C(&qword_1019F4858);
  CRMaxRegister.wrappedValue.getter();
  sub_10003D87C(v13, type metadata accessor for CRLBoardCRDTData);
  Date.init(timeIntervalSinceReferenceDate:)();
  v115 = v44;
  v116 = v43;
  sub_10005006C(v43 + v44, v13, v118);
  v45 = v112;
  v113 = type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_1019F4850);
  CRRegister.wrappedValue.getter();
  v118 = v13;
  sub_10003D87C(v13, type metadata accessor for CRLBoardCRDTData);
  v46 = Date.init(timeIntervalSinceReferenceDate:)();
  v47 = *(*(v4 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
  __chkstk_darwin(v46);
  *(&v109 - 2) = v45;

  v48 = v119;
  v49 = sub_1010AA984(sub_1008F65DC, (&v109 - 4), v47);
  v119 = v48;

  if (v49)
  {
  }

  v114 = v49 != 0;
  sub_10005006C(v45, v126, type metadata accessor for CRLBoardIdentifier);
  v50 = type metadata accessor for CRLFolderIdentifier(0);
  (*(*(v50 - 8) + 56))(v127, 1, 1, v50);
  v111 = type metadata accessor for CRLBoardCRDTData;
  v52 = v115;
  v51 = v116;
  v53 = v120;
  sub_10005006C(v116 + v115, v120, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  v110 = type metadata accessor for CRLBoardCRDTData;
  sub_10003D87C(v53, type metadata accessor for CRLBoardCRDTData);
  v120 = v130;
  v112 = v131;
  v54 = v121;
  v55 = v122;
  v56 = *(v121 + 16);
  v56(v124, v133, v122);
  v56(v125, v129, v55);
  v57 = v118;
  sub_10005006C(v51 + v52, v118, v111);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v57, v110);
  LOBYTE(v52) = v130;
  v58 = *(v51 + 24);
  LODWORD(v123) = sub_10001FF1C() < v58;
  v59 = v128;
  sub_1010D85C8(v128 + v22[20]);

  v60 = *(v54 + 8);
  v60(v133, v55);
  v60(v129, v55);
  sub_100025738(v126, v59, type metadata accessor for CRLBoardIdentifier);
  sub_10003DFF8(v127, v59 + v22[5], &qword_1019F33E0);
  v61 = (v59 + v22[6]);
  v62 = v112;
  *v61 = v120;
  v61[1] = v62;
  v63 = *(v54 + 32);
  v63(v59 + v22[7], v124, v55);
  result = (v63)(v59 + v22[8], v125, v55);
  *(v59 + v22[9]) = 1;
  *(v59 + v22[10]) = v114;
  *(v59 + v22[11]) = 1;
  *(v59 + v22[12]) = 0;
  *(v59 + v22[13]) = v52;
  *(v59 + v22[14]) = 0;
  *(v59 + v22[15]) = 0;
  *(v59 + v22[16]) = 0;
  *(v59 + v22[17]) = 0;
  *(v59 + v22[18]) = v123;
  v64 = v59 + v22[19];
  *v64 = 0;
  *(v64 + 8) = 1;
  return result;
}

uint64_t sub_1010AC864(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_101104B20(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_100035F90();
      return v16;
    }

    while (1)
    {
      sub_100E6B218(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for CRLTransactableHashableWrapper();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1010ACAA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - v10;
  result = __chkstk_darwin(v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_100E6AF38(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1010ACCC0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100E6DE34(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1010ACDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - v10;
  result = __chkstk_darwin(v9);
  v14 = &v22 - v13;
  v15 = 0;
  v23 = a2;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  for (i = (v16 + 63) >> 6; v18; result = sub_10003D87C(v11, type metadata accessor for CRLBoardIdentifier))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_10005006C(*(a1 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v14, type metadata accessor for CRLBoardIdentifier);
    sub_100025738(v14, v8, type metadata accessor for CRLBoardIdentifier);
    sub_100031F10(v11, v8);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 56 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1010AD00C(unint64_t a1, void *a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), void (*a6)(id *))
{
  v8 = a1;
  v23[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    a3(0);
    sub_101104B20(a4, a5);
    Set.Iterator.init(_cocoa:)();
    v8 = v23[2];
    v11 = v23[3];
    v12 = v23[4];
    v13 = v23[5];
    v14 = v23[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_100035F90();
      return;
    }

    while (1)
    {
      a6(v23);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        a3(0);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v23[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1010AD20C(uint64_t a1, uint64_t a2)
{
  v4 = _s17CategoryViewModelVMa();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - v10;
  result = __chkstk_darwin(v9);
  v14 = &v22 - v13;
  v15 = 0;
  v23 = a2;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  for (i = (v16 + 63) >> 6; v18; result = sub_10003D87C(v11, _s17CategoryViewModelVMa))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_10005006C(*(a1 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v14, _s17CategoryViewModelVMa);
    sub_100025738(v14, v8, _s17CategoryViewModelVMa);
    sub_100E70E80(v11, v8);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 56 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1010AD40C(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F69D0);
    sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_100035F90();
      return;
    }

    while (1)
    {
      sub_100E71568(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100006370(0, &qword_1019F69D0);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1010AD620()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1010AD740, v3, v2);
}

uint64_t sub_1010AD740()
{
  v1 = *(v0 + 128);

  sub_1010C78DC();
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController);
  v3 = OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_highlightObservers;
  if (([*(v2 + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_highlightObservers) containsObject:v1] & 1) == 0)
  {
    [*(v2 + v3) addObject:*(v0 + 128)];
  }

  sub_1010C613C();
  sub_1010C22F4();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1010AD7F8()
{
  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Failed to mark all existing boards as not discardable: %@", 57, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_1010AD620;

  return sub_10007CEB8(_swiftEmptySetSingleton);
}

uint64_t sub_1010AD998(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v2[40] = type metadata accessor for MainActor();
  v2[41] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v2[42] = v4;
  *v4 = v2;
  v4[1] = sub_1010ADA5C;

  return sub_1010A91B4(a1, 1);
}

uint64_t sub_1010ADA5C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 344) = a1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_1010AE26C;
    v8 = v4;
    v9 = v6;
  }

  else
  {
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    *(v3 + 352) = v10;
    *(v3 + 360) = v11;
    v7 = sub_1010ADC00;
    v8 = v10;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1010ADC00()
{
  v1 = *(v0 + 344);
  if (v1)
  {
    v2 = [*(v0 + 344) participants];
    sub_100006370(0, &qword_1019F5520);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4 == 1 && [v1 publicPermission] == 1)
    {
      if (qword_1019F22C8 != -1)
      {
        swift_once();
      }

      v5 = static OS_os_log.shareState;
      *(v0 + 368) = static OS_os_log.shareState;
      *(v0 + 376) = sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v7 = UUID.uuidString.getter();
      v9 = v8;
      *(inited + 56) = &type metadata for String;
      v10 = sub_1000053B0();
      *(v0 + 384) = v10;
      *(inited + 64) = v10;
      *(inited + 32) = v7;
      *(inited + 40) = v9;
      v11 = static os_log_type_t.default.getter();
      sub_100005404(v5, &_mh_execute_header, v11, "There are no participants. Deleting the share for board with UUID: %@.", 70, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      v12 = swift_task_alloc();
      *(v0 + 392) = v12;
      *v12 = v0;
      v12[1] = sub_1010ADF54;
      v13 = *(v0 + 304);

      return sub_10123AD70(v13);
    }
  }

  else
  {

    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_10146C6B0;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000053B0();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v20, "No share found for board with UUID: %@.", 39, 2, v16);
    swift_setDeallocating();
    sub_100005070(v16 + 32);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1010ADF54()
{
  v2 = *v1;
  v2[50] = v0;

  if (v0)
  {
    v3 = v2[44];
    v4 = v2[45];

    return _swift_task_switch(sub_1010AE3B0, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[51] = v5;
    *v5 = v2;
    v5[1] = sub_1010AE0C8;
    v6 = v2[38];

    return sub_1010A9CB4(v6, 0, 1);
  }
}

uint64_t sub_1010AE0C8()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_1010AE4FC;
  }

  else
  {
    v5 = sub_1010AE204;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010AE204()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010AE26C()
{

  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v3 = UUID.uuidString.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "No share found for board with UUID: %@.", 39, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1010AE3B0()
{
  v1 = v0[48];
  v2 = v0[46];
  v3 = v0[43];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v5 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  swift_getErrorValue();
  v7 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v1;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v9, "Unsharing board failed. Board UUID: %@. Error: %@.", 50, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1010AE4FC()
{
  v1 = v0[48];
  v2 = v0[46];
  v3 = v0[43];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v5 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  swift_getErrorValue();
  v7 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v1;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v9, "Unsharing board failed. Board UUID: %@. Error: %@.", 50, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1010AE648()
{

  sub_1005B981C(&qword_1019FFCC0);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v16 == 1)
  {
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v0 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v2 = Error.publicDescription.getter(v13, v14);
    v4 = v3;
    *(inited + 56) = &type metadata for String;
    v5 = sub_1000053B0();
    *(inited + 64) = v5;
    *(inited + 32) = v2;
    *(inited + 40) = v4;
    swift_getErrorValue();
    v6 = Error.fullDescription.getter(v12);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v5;
    *(inited + 72) = v6;
    *(inited + 80) = v7;
    v8 = static os_log_type_t.error.getter();
    sub_100005404(v0, &_mh_execute_header, v8, "Failed to clean up board load marks for app termination. Error: %{public}@ %@", 77, 2, inited);
    sub_1007987E8(v15, 1);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    return swift_arrayDestroy();
  }

  else
  {
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlBoardLibrary;
    v11 = static os_log_type_t.default.getter();
    return sub_100005404(v10, &_mh_execute_header, v11, "Successfully cleaned up board load marks for app termination.", 61, 2, _swiftEmptyArrayStorage);
  }
}

Swift::Int sub_1010AE8B0(void **a1)
{
  v2 = *(_s5BoardVMa(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10113DFE8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1010F6A38(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1010AE958(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1005B981C(&unk_1019FA3E0);
  v2[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_1010AEA28, v4, v3);
}

uint64_t sub_1010AEA28()
{
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardShareController);
  v0[11] = v2;
  v3 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = sub_1000486F0(v0[5]);
    v6 = v0[7];
    if (v7)
    {
      v8 = v5;
      v9 = *(v4 + 56);
      v10 = _s5BoardVMa(0);
      v11 = *(v10 - 8);
      sub_10005006C(v9 + *(v11 + 72) * v8, v6, _s5BoardVMa);
      (*(v11 + 56))(v6, 0, 1, v10);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = v0[7];
  }

  v10 = _s5BoardVMa(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
LABEL_6:
  v12 = v0[7];
  _s5BoardVMa(0);
  if ((*(*(v10 - 8) + 48))(v12, 1, v10))
  {
    sub_10000CAAC(v12, &unk_1019FA3E0);
    swift_endAccess();
    v13 = [objc_opt_self() mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v20 = (v12 + *(v10 + 24));
    v17 = *v20;
    v19 = v20[1];

    sub_10000CAAC(v12, &unk_1019FA3E0);
    swift_endAccess();
  }

  v0[12] = v17;
  v0[13] = v19;

  return _swift_task_switch(sub_1010AED08, v2, 0);
}

uint64_t sub_1010AED08()
{
  v1 = v0[13];
  v2 = sub_100EFF9E4(v0[5]);
  v0[14] = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1010AEDCC;
  v4 = v0[12];

  return sub_1008421B0(v2, v4, v1, 0, 0xF000000000000000);
}

uint64_t sub_1010AEDCC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = *(v3 + 88);
    v5 = sub_1010AF128;
  }

  else
  {
    v6 = *(v3 + 88);

    v5 = sub_1010AEEF4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1010AEEF4()
{
  v1 = v0[16];

  v2 = v1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1010AEFAC;
  v4 = v0[5];

  return sub_1010A9CB4(v4, v1, 1);
}

uint64_t sub_1010AEFAC()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);

    return _swift_task_switch(sub_1010AF390, v3, v4);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v2 + 160) = v5;
    *v5 = v2;
    v5[1] = sub_1010AF200;

    return sub_10007CEB8(_swiftEmptySetSingleton);
  }
}

uint64_t sub_1010AF128()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_1010AF194, v1, v2);
}

uint64_t sub_1010AF194()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010AF200()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1010AF320, v3, v2);
}

uint64_t sub_1010AF320()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

uint64_t sub_1010AF390()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010AF408(uint64_t a1)
{
  type metadata accessor for CRLBoardCRDTData(0);
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v1[25] = swift_task_alloc();
  v1[26] = type metadata accessor for MainActor();
  v1[27] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v1[28] = v4;
  *v4 = v1;
  v4[1] = sub_1010AF578;

  return sub_1010BEF80(a1);
}

uint64_t sub_1010AF578(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_1010AFAC4;
  }

  else
  {
    v6 = sub_1010AF6D8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1010AF6D8()
{
  v1 = *(v0 + 232);

  v2 = *(v1 + 16);
  v3 = type metadata accessor for CRLBoardLibraryHeadlessController();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_offset] = vdupq_n_s64(0x4049000000000000uLL);
  *&v4[OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator] = v2;
  v5 = objc_allocWithZone(CRLCanvas);
  v6 = v2;
  v7 = [v5 init];
  *&v4[OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_canvas] = v7;
  *(v0 + 152) = v4;
  *(v0 + 160) = v3;
  v8 = objc_msgSendSuper2((v0 + 152), "init");

  [*(v1 + 32) addObject:v8];
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 192);
  v10 = *(v0 + 184);
  v31 = *(v0 + 200);
  v32 = *(v0 + 176);
  v35 = *(v0 + 168);
  v34 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v33 = v8;
  v12 = [v33 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 56) = &type metadata for String;
  v16 = sub_1000053B0();
  *(inited + 64) = v16;
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  v17 = *(*(v1 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v18 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v19 = *&v17[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v20 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v19 + v20, v35, type metadata accessor for CRLBoardCRDTData);
  v21 = v17;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v35, type metadata accessor for CRLBoardCRDTData);
  v22 = (*&v17[v18] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v23 = *v22;
  v24 = v22[1];

  sub_10084BD4C(v9, v23, v24, v31);

  (*(v10 + 16))(v9, v31, v32);
  sub_10003D87C(v31, type metadata accessor for CRLBoardIdentifier);
  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v10 + 8))(v9, v32);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v16;
  *(inited + 72) = v25;
  *(inited + 80) = v27;
  v28 = static os_log_type_t.default.getter();
  sub_100005404(v34, &_mh_execute_header, v28, "Created headless controller %@ for identifier: %{public}@", 57, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();

  v29 = *(v0 + 8);

  return v29(v33);
}

uint64_t sub_1010AFAC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010AFB50(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v13 = *(*&a1[OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v14 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v15 = *&v13[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v15 + v16, v6, type metadata accessor for CRLBoardCRDTData);
  v17 = v13;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v6, type metadata accessor for CRLBoardCRDTData);
  v18 = (*&v13[v14] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v20 = *v18;
  v19 = v18[1];

  sub_10084BD4C(v9, v20, v19, v12);
  v21 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v22 = *(v2 + v21);
  if (!*(v22 + 16) || (v23 = sub_1000486F0(v12), (v24 & 1) == 0))
  {
    swift_endAccess();
    sub_1006A3EB0();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
LABEL_15:

    return sub_10003D87C(v12, type metadata accessor for CRLBoardIdentifier);
  }

  v25 = *(*(v22 + 56) + 8 * v23);
  swift_endAccess();
  v26 = *(v25 + 32);

  v27 = v26;
  v28 = v67;
  if (![v27 containsObject:v67])
  {
    sub_1006A3EB0();
    swift_allocError();
    *v51 = 7;
    swift_willThrow();

    v17 = v27;
    goto LABEL_15;
  }

  [v27 removeObject:v28];
  [*&v28[OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_canvas] teardown];
  v65 = *(v25 + 24);
  v29 = [v65 allObjects];
  type metadata accessor for CRLiOSBoardViewController();
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = v27;
  if (v30 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
    v27 = v66;
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v31 || ((v32 = [v27 allObjects], type metadata accessor for CRLBoardLibraryHeadlessController(), v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v32, v33 >> 62) ? (v34 = _CocoaArrayWrapper.endIndex.getter()) : (v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v34))
  {
    v63 = v25;
    v64 = v17;
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v62 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146D2A0;
    v36 = v67;
    v37 = [v36 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    *(inited + 56) = &type metadata for String;
    v41 = sub_1000053B0();
    *(inited + 64) = v41;
    *(inited + 32) = v38;
    v67 = (inited + 32);
    *(inited + 40) = v40;
    v42 = v66;
    v43 = [v66 count];
    *(inited + 96) = &type metadata for Int;
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = v43;
    v44 = v65;
    v45 = [v65 count];
    *(inited + 136) = &type metadata for Int;
    *(inited + 144) = &protocol witness table for Int;
    *(inited + 112) = v45;
    v46 = UUID.uuidString.getter();
    *(inited + 176) = &type metadata for String;
    *(inited + 184) = v41;
    *(inited + 152) = v46;
    *(inited + 160) = v47;
    v48 = static os_log_type_t.default.getter();
    sub_100005404(v62, &_mh_execute_header, v48, "Removing %@, %li headless controllers, %li view controllers remain before tearing down BoardInfo for %{public}@", 111, 2, inited);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v64 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_10146BDE0;
    v53 = v67;
    v54 = [v53 description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v56;
    v63 = v55;

    *(v52 + 56) = &type metadata for String;
    v57 = sub_1000053B0();
    *(v52 + 64) = v57;
    *(v52 + 32) = v63;
    v67 = (v52 + 32);
    *(v52 + 40) = v62;
    v58 = UUID.uuidString.getter();
    *(v52 + 96) = &type metadata for String;
    *(v52 + 104) = v57;
    *(v52 + 72) = v58;
    *(v52 + 80) = v59;
    v60 = static os_log_type_t.default.getter();
    sub_100005404(v64, &_mh_execute_header, v60, "Tearing down BoardInfo after removing %@ for %{public}@", 55, 2, v52);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    sub_1010C04E8(v25);
  }

  return sub_10003D87C(v12, type metadata accessor for CRLBoardIdentifier);
}

uint64_t sub_1010B029C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v5;
  v3[16] = v4;

  return _swift_task_switch(sub_1010B0338, v5, v4);
}

uint64_t sub_1010B0338()
{
  v1 = v0[12];
  v2 = *(*(v0[13] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;

  v4 = sub_1010AA984(sub_1008F65DC, v3, v2);

  if (v4)
  {
    if ((*(v4 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_accepted) & 1) == 0)
    {
      sub_1005EE20C(v4);
    }
  }

  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1010B0470;
  v6 = v0[12];

  return sub_1010C30A4(v6);
}

uint64_t sub_1010B0470(char a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    v7 = sub_1010B0974;
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    v7 = sub_1010B059C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1010B059C()
{
  if (*(v0 + 176) == 1)
  {

    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v1 = static OS_os_log.shareState;
    v2 = static os_log_type_t.default.getter();
    sub_100005404(v1, &_mh_execute_header, v2, "Found an existing board.", 24, 2, _swiftEmptyArrayStorage);
    v3 = *(v0 + 8);

    return v3(0);
  }

  else
  {
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v7 = UUID.uuidString.getter();
    v9 = v8;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v7;
    *(inited + 40) = v9;
    v10 = static os_log_type_t.default.getter();
    sub_100005404(v5, &_mh_execute_header, v10, "Accepting shared board with UUID: %@.", 37, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_1010B07E0;
    v12 = *(v0 + 88);

    return sub_10123AA54(v12);
  }
}

uint64_t sub_1010B07E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1010B09D8;
  }

  else
  {
    v4[21] = a1;
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1010B0908;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1010B0908()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1010B0974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010B09D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010B0A3C(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  type metadata accessor for CRLBoardCRDTData(0);
  v2[51] = swift_task_alloc();
  type metadata accessor for UUID();
  v2[52] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[53] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[54] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010B0B58, v4, v3);
}

void sub_1010B0B58()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[49];
  v5 = v0[50];

  v6 = *(*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v8 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v8 + v9, v2, type metadata accessor for CRLBoardCRDTData);
  v10 = v6;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v2, type metadata accessor for CRLBoardCRDTData);
  v11 = (*&v6[v7] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v12 = *v11;
  v13 = v11[1];

  sub_10084BD4C(v3, v12, v13, v1);
  v14 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v15 = *(v5 + v14);
  if (!*(v15 + 16) || (v16 = sub_1000486F0(v0[53]), (v17 & 1) == 0))
  {
    swift_endAccess();
    sub_1006A3EB0();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v18 = *(*(v15 + 56) + 8 * v16);
  swift_endAccess();
  v19 = objc_opt_self();

  v20 = [v19 sharedApplication];
  v21 = [v20 delegate];

  if (!v21)
  {
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for CRLiOSAppDelegate();
  v22 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharedBoardThumbnailManager);

  swift_unknownObjectRelease();
  if (!v22)
  {
LABEL_34:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v23 = *(v22 + 32);
  if (*(v23 + 16))
  {
    v24 = v0[53];

    v25 = sub_1000486F0(v24);
    if (v26)
    {
      v27 = *(*(v23 + 56) + 8 * v25);

      if (qword_1019F22C8 != -1)
      {
        swift_once();
      }

      v28 = static OS_os_log.shareState;
      v29 = static os_log_type_t.default.getter();
      sub_100005404(v28, &_mh_execute_header, v29, "Share thumbnail timer firing early because board closed.", 56, 2, _swiftEmptyArrayStorage);
      [v27 fire];
    }

    else
    {
    }
  }

  v32 = v0[49];
  v33 = *(v18 + 24);
  if ([v33 containsObject:v32])
  {
    [v33 removeObject:v0[49]];
    v34 = *(v18 + 32);
    v35 = [v33 allObjects];
    type metadata accessor for CRLiOSBoardViewController();
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v36 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = v34;
    if (v37 || ((v38 = [v34 allObjects], type metadata accessor for CRLBoardLibraryHeadlessController(), v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v38, v39 >> 62) ? (v40 = _CocoaArrayWrapper.endIndex.getter()) : (v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v40))
    {
      if (qword_1019F2130 != -1)
      {
        swift_once();
      }

      v41 = v0[49];
      v66 = static OS_os_log.crlBoardLibrary;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146D2A0;
      v43 = v41;
      v44 = [v43 description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      *(inited + 56) = &type metadata for String;
      v48 = sub_1000053B0();
      *(inited + 64) = v48;
      *(inited + 32) = v45;
      *(inited + 40) = v47;
      v49 = [v33 count];
      *(inited + 96) = &type metadata for Int;
      *(inited + 104) = &protocol witness table for Int;
      *(inited + 72) = v49;
      v50 = [v68 count];
      *(inited + 136) = &type metadata for Int;
      *(inited + 144) = &protocol witness table for Int;
      *(inited + 112) = v50;
      v51 = UUID.uuidString.getter();
      *(inited + 176) = &type metadata for String;
      *(inited + 184) = v48;
      *(inited + 152) = v51;
      *(inited + 160) = v52;
      v53 = static os_log_type_t.default.getter();
      sub_100005404(v66, &_mh_execute_header, v53, "Removing %@, %li view controllers, %li headless controllers remain before tearing down BoardInfo for %{public}@", 111, 2, inited);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
    }

    else
    {
      if (qword_1019F2130 != -1)
      {
        swift_once();
      }

      v55 = v0[49];
      v67 = static OS_os_log.crlBoardLibrary;
      sub_1005B981C(&qword_1019F54E0);
      v56 = swift_initStackObject();
      *(v56 + 16) = xmmword_10146BDE0;
      v57 = v55;
      v58 = [v57 description];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      *(v56 + 56) = &type metadata for String;
      v62 = sub_1000053B0();
      *(v56 + 64) = v62;
      *(v56 + 32) = v59;
      *(v56 + 40) = v61;
      v63 = UUID.uuidString.getter();
      *(v56 + 96) = &type metadata for String;
      *(v56 + 104) = v62;
      *(v56 + 72) = v63;
      *(v56 + 80) = v64;
      v65 = static os_log_type_t.default.getter();
      sub_100005404(v67, &_mh_execute_header, v65, "Tearing down BoardInfo after removing %@ for %{public}@", 55, 2, v56);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      sub_1010C04E8(v18);
    }

    sub_10003D87C(v0[53], type metadata accessor for CRLBoardIdentifier);

    v31 = v0[1];
    goto LABEL_12;
  }

  sub_1006A3EB0();
  swift_allocError();
  *v54 = 6;
  swift_willThrow();

LABEL_11:

  sub_10003D87C(v0[53], type metadata accessor for CRLBoardIdentifier);

  v31 = v0[1];
LABEL_12:

  v31();
}

uint64_t sub_1010B139C(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v4;
  v2[15] = v3;

  return _swift_task_switch(sub_1010B1434, v4, v3);
}

uint64_t sub_1010B1434()
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v14 = UUID.uuidString.getter();
  v15 = v4;

  v5._countAndFlagsBits = 58;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v7 = *v6;
  v8 = v6[1];

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v14;
  *(inited + 40) = v15;
  v10 = static os_log_type_t.info.getter();
  sub_100005404(v2, &_mh_execute_header, v10, "Board Library attempting to make boardViewController for ID %@", 62, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *v11 = v0;
  v11[1] = sub_1010B1618;
  v12 = *(v0 + 88);

  return sub_1010BEF80(v12);
}

uint64_t sub_1010B1618(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1010B17C4;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1010B1740;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1010B1740()
{
  v1 = v0[18];
  v2 = v0[12];

  v3 = sub_1010BF428(v1, v2);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1010B17C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010B1828@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v115 = a1;
  v122 = a2;
  v126 = type metadata accessor for URLQueryItem();
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v114 = &v110 - v5;
  v6 = sub_1005B981C(&qword_101A00288);
  __chkstk_darwin(v6 - 8);
  v127 = &v110 - v7;
  v129 = type metadata accessor for URLComponents();
  v140 = *(v129 - 8);
  __chkstk_darwin(v129);
  v128 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v9 - 8);
  v130 = &v110 - v10;
  v11 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v11 - 8);
  v138 = &v110 - v12;
  v142 = _s5BoardVMa(0);
  v137 = *(v142 - 8);
  __chkstk_darwin(v142);
  v144 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v136 = &v110 - v15;
  v16 = sub_1005B981C(&qword_101A11B18);
  __chkstk_darwin(v16 - 8);
  v141 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v110 - v19;
  v21 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v21 - 8);
  v23 = &v110 - v22;
  v24 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v24 - 8);
  v26 = &v110 - v25;
  v27 = type metadata accessor for CRLBoardIdentifier(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v143 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v135 = &v110 - v31;
  __chkstk_darwin(v32);
  v34 = &v110 - v33;
  sub_1007AE7E8(v26);
  v139 = v28;
  v35 = *(v28 + 48);
  v121 = v27;
  if (v35(v26, 1, v27) != 1)
  {
    sub_100025738(v26, v34, type metadata accessor for CRLBoardIdentifier);
    sub_1010AB99C(v34, v23);
    (*(v137 + 56))(v23, 0, 1, v142);
    sub_10000CAAC(v23, &unk_1019FA3E0);
    v108 = v34;
    goto LABEL_76;
  }

  sub_10000CAAC(v26, &unk_1019F52D0);
  v36 = sub_1007AF7B4();
  v38 = v130;
  v39 = v143;
  v40 = v144;
  v120 = v37;
  if (!v37)
  {
    return (*(v139 + 56))(v122, 1, 1, v121);
  }

  v113 = v36;
  v110 = 0;
  v41 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  swift_beginAccess();
  v42 = *(v2 + v41);
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 64);
  v131 = (v44 + 63) >> 6;
  v123 = (v140 + 48);
  v119 = (v140 + 32);
  v118 = (v140 + 8);
  v117 = v124 + 16;
  v116 = (v124 + 8);
  v111 = (v124 + 32);
  v134 = v42;

  v47 = 0;
  v133 = v20;
  v140 = v43;
  while (v46)
  {
    v50 = v38;
    v51 = v47;
LABEL_20:
    v54 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v55 = v54 | (v51 << 6);
    v56 = v134;
    v57 = v135;
    sub_10005006C(*(v134 + 48) + *(v139 + 72) * v55, v135, type metadata accessor for CRLBoardIdentifier);
    v58 = v136;
    sub_10005006C(*(v56 + 56) + *(v137 + 72) * v55, v136, _s5BoardVMa);
    v59 = sub_1005B981C(&qword_101A11B20);
    v60 = *(v59 + 48);
    v61 = v141;
    sub_100025738(v57, v141, type metadata accessor for CRLBoardIdentifier);
    sub_100025738(v58, v61 + v60, _s5BoardVMa);
    (*(*(v59 - 8) + 56))(v61, 0, 1, v59);
    v20 = v133;
    v38 = v50;
    v39 = v143;
    v40 = v144;
LABEL_21:
    sub_10003DFF8(v61, v20, &qword_101A11B18);
    v62 = sub_1005B981C(&qword_101A11B20);
    if ((*(*(v62 - 8) + 48))(v20, 1, v62) == 1)
    {

      return (*(v139 + 56))(v122, 1, 1, v121);
    }

    v63 = *(v62 + 48);
    sub_100025738(v20, v39, type metadata accessor for CRLBoardIdentifier);
    sub_100025738(&v20[v63], v40, _s5BoardVMa);
    sub_10000BE14(v40 + *(v142 + 80), v38, &qword_1019F33D0);
    v64 = _s5BoardV13ShareMetadataVMa(0);
    if ((*(*(v64 - 8) + 48))(v38, 1, v64) == 1)
    {
      sub_10003D87C(v40, _s5BoardVMa);
      sub_10003D87C(v39, type metadata accessor for CRLBoardIdentifier);
      v48 = v38;
      v49 = &qword_1019F33D0;
      goto LABEL_9;
    }

    v65 = v38 + *(v64 + 20);
    v66 = v138;
    sub_10000BE14(v65, v138, &unk_1019F33C0);
    sub_10003D87C(v38, _s5BoardV13ShareMetadataVMa);
    v67 = type metadata accessor for URL();
    v132 = *(v67 - 8);
    if ((*(v132 + 48))(v66, 1, v67) == 1)
    {
      v40 = v144;
      sub_10003D87C(v144, _s5BoardVMa);
      sub_10003D87C(v39, type metadata accessor for CRLBoardIdentifier);
      v48 = v66;
      v49 = &unk_1019F33C0;
LABEL_9:
      sub_10000CAAC(v48, v49);
      v43 = v140;
    }

    else
    {
      v68 = URL.scheme.getter();
      if (!v69)
      {
        goto LABEL_34;
      }

      if (v68 == 0x7370747468 && v69 == 0xE500000000000000)
      {

        goto LABEL_31;
      }

      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v72)
      {
LABEL_31:
        v73 = v138;
        v147 = URL.path.getter();
        v148 = v74;
        v145 = 0x726F66656572662FLL;
        v146 = 0xEA00000000002F6DLL;
        sub_100017CD8();
        v75 = StringProtocol.contains<A>(_:)();

        if ((v75 & 1) == 0 || (URL.lastPathComponent.getter(), v76 = String.count.getter(), , v76 < 16))
        {
          v77 = v144;
          sub_10003D87C(v144, _s5BoardVMa);
          v78 = v143;
          sub_10003D87C(v143, type metadata accessor for CRLBoardIdentifier);
          v79 = v73;
          v39 = v78;
          v80 = v67;
          v40 = v77;
          (*(v132 + 8))(v79, v80);
          goto LABEL_69;
        }

        v86 = URL.lastPathComponent.getter();
        v88 = v87;
        v89 = v73;
LABEL_41:
        v39 = v143;
        (*(v132 + 8))(v89, v67);
        if (v86 == v113 && v120 == v88)
        {

          v38 = v130;
          goto LABEL_52;
        }

        v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v38 = v130;
        if (v95)
        {
LABEL_52:
          v43 = v140;
          if (v115)
          {
            goto LABEL_79;
          }

          v40 = v144;
          v96 = *(v144 + *(v142 + 60));
          sub_10003D87C(v144, _s5BoardVMa);
          if ((v96 & 1) == 0)
          {
            goto LABEL_80;
          }

          sub_10003D87C(v39, type metadata accessor for CRLBoardIdentifier);
        }

        else
        {
          v40 = v144;
          sub_10003D87C(v144, _s5BoardVMa);
          sub_10003D87C(v39, type metadata accessor for CRLBoardIdentifier);
          v43 = v140;
        }
      }

      else
      {
LABEL_34:
        v81 = v127;
        URLComponents.init(url:resolvingAgainstBaseURL:)();
        v82 = v129;
        if ((*v123)(v81, 1, v129) == 1)
        {
          sub_10000CAAC(v81, &qword_101A00288);
LABEL_67:
          v90 = v138;
          goto LABEL_68;
        }

        v83 = v128;
        (*v119)(v128, v81, v82);
        v84 = URLComponents.scheme.getter();
        if (v85)
        {
          if (v84 == 0x6D726F6665657266 && v85 == 0xE800000000000000)
          {

            v39 = v143;
          }

          else
          {
            v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v39 = v143;
            if ((v91 & 1) == 0)
            {
              goto LABEL_66;
            }
          }

          v92 = v128;
          v93 = URLComponents.host.getter();
          if (!v94)
          {
LABEL_65:
            (*v118)(v92, v129);
            goto LABEL_67;
          }

          if (v93 == 0x6472616F62 && v94 == 0xE500000000000000)
          {
          }

          else
          {
            v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v97 & 1) == 0)
            {
LABEL_66:
              (*v118)(v128, v129);
              goto LABEL_67;
            }
          }

          v92 = v128;
          result = URLComponents.queryItems.getter();
          if (!result)
          {
            goto LABEL_65;
          }

          v99 = result;
          v100 = *(result + 16);
          v101 = v129;
          if (v100)
          {
            v102 = 0;
            v112 = result + ((*(v124 + 80) + 32) & ~*(v124 + 80));
            while (1)
            {
              if (v102 >= *(v99 + 16))
              {
                __break(1u);
                return result;
              }

              (*(v124 + 16))(v125, v112 + *(v124 + 72) * v102, v126);
              if (URLQueryItem.name.getter() == 0x54676E6972616873 && v103 == 0xEC0000006E656B6FLL)
              {
                break;
              }

              v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v104)
              {
                goto LABEL_72;
              }

              ++v102;
              result = (*v116)(v125, v126);
              v101 = v129;
              v92 = v128;
              if (v100 == v102)
              {
                goto LABEL_64;
              }
            }

LABEL_72:

            v105 = v114;
            v106 = v126;
            (*v111)(v114, v125, v126);
            v86 = URLQueryItem.value.getter();
            v88 = v107;
            (*v116)(v105, v106);
            (*v118)(v128, v129);
            if (!v88)
            {
              goto LABEL_45;
            }

            v89 = v138;
            goto LABEL_41;
          }

LABEL_64:

          (*v118)(v92, v101);
        }

        else
        {
          (*v118)(v83, v82);
        }

LABEL_45:
        v90 = v138;
        v39 = v143;
LABEL_68:
        (*(v132 + 8))(v90, v67);
        v40 = v144;
        sub_10003D87C(v144, _s5BoardVMa);
        sub_10003D87C(v39, type metadata accessor for CRLBoardIdentifier);
LABEL_69:
        v38 = v130;
        v43 = v140;
      }
    }
  }

  if (v131 <= v47 + 1)
  {
    v52 = v47 + 1;
  }

  else
  {
    v52 = v131;
  }

  v53 = v52 - 1;
  while (1)
  {
    v51 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v51 >= v131)
    {
      v70 = sub_1005B981C(&qword_101A11B20);
      v71 = v141;
      (*(*(v70 - 8) + 56))(v141, 1, 1, v70);
      v46 = 0;
      v47 = v53;
      v61 = v71;
      goto LABEL_21;
    }

    v46 = *(v43 + 8 * v51);
    ++v47;
    if (v46)
    {
      v50 = v38;
      v47 = v51;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_79:
  sub_10003D87C(v144, _s5BoardVMa);
LABEL_80:

  v108 = v39;
LABEL_76:
  v109 = v122;
  sub_100025738(v108, v122, type metadata accessor for CRLBoardIdentifier);
  return (*(v139 + 56))(v109, 0, 1, v121);
}

uint64_t sub_1010B2B24(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v3[60] = swift_task_alloc();
  sub_1005B981C(&unk_1019FB770);
  v3[61] = swift_task_alloc();
  v3[62] = type metadata accessor for CRLBoardCRDTData(0);
  v3[63] = swift_task_alloc();
  type metadata accessor for UUID();
  v3[64] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[67] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[68] = v5;
  v3[69] = v4;

  return _swift_task_switch(sub_1010B2CBC, v5, v4);
}

uint64_t sub_1010B2CBC()
{
  v99 = v0;
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[57];
  v5 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v0[70] = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v6 = *(v5 + v4);
  v7 = &OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  v8 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v6 + v8, v2, type metadata accessor for CRLBoardCRDTData);
  v0[71] = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v2, type metadata accessor for CRLBoardCRDTData);
  v9 = (*(v5 + v4) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v10 = *v9;
  v11 = v9[1];

  sub_10084BD4C(v3, v10, v11, v1);
  v12 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v13 = v0[66];
  if (*v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12[1] == 0xE000000000000000;
  }

  if (v14)
  {
    sub_10003D87C(v0[66], type metadata accessor for CRLBoardIdentifier);
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10003D87C(v13, type metadata accessor for CRLBoardIdentifier);
    if ((v15 & 1) == 0)
    {

      if (qword_1019F2130 != -1)
      {
        goto LABEL_56;
      }

      goto LABEL_7;
    }
  }

  v19 = v0[61];
  v20 = v0[58];
  v21 = *(v0[59] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v22 = swift_task_alloc();
  *(v22 + 16) = v20;

  sub_10003CF3C(1, sub_101107D10, v22, v21, v19);

  v23 = _s4NodeVMa(0);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v19, 1, v23) != 1)
  {
LABEL_38:
    v63 = v0[63];
    v64 = v0[58];
    v65 = *(v0[59] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
    v0[72] = v65;
    v66 = *(v5 + v4);
    v67 = *v7;
    swift_beginAccess();
    sub_10005006C(v66 + v67, v63, type metadata accessor for CRLBoardCRDTData);
    v68 = v65;
    sub_1005B981C(&qword_101A1A020);
    CRRegister.wrappedValue.getter();
    sub_10003D87C(v63, type metadata accessor for CRLBoardCRDTData);
    v75 = sub_1007B1254(v0[55], v0[56], v64, 0, v68, 0);
    v77 = v76;

    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v78 = v0[57];
    v79 = static OS_os_log.crlBoardLibrary;
    v80 = static os_log_type_t.default.getter();
    sub_100005404(v79, &_mh_execute_header, v80, "Import board from file will save to database.", 45, 2, _swiftEmptyArrayStorage);
    v81 = sub_100822664(v78, 1);
    v0[73] = v81;
    sub_1010F83A4(v78, 2, v81);
    sub_100EBA32C(v75, v77);

    (*(*v81 + 720))(v82);
    v84 = v0[57];

    [v84 fixUp];
    v85 = *&v84[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges];
    v86 = *(v85 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
    v87 = swift_allocObject();
    *(v87 + 16) = v81;
    *(v87 + 24) = v85;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_100896980;
    *(v88 + 24) = v87;
    v0[44] = sub_10002AAE0;
    v0[45] = v88;
    v0[40] = _NSConcreteStackBlock;
    v0[41] = *"";
    v0[42] = sub_10002AAB8;
    v0[43] = &unk_1018B15D0;
    v89 = _Block_copy(v0 + 40);

    dispatch_sync(v86, v89);
    _Block_release(v89);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v0[57] savePendingChanges];
      v92 = swift_task_alloc();
      v0[74] = v92;
      *v92 = v0;
      v92[1] = sub_1010B39EC;

      return sub_10007CEB8(_swiftEmptySetSingleton);
    }

    return result;
  }

  v25 = v0[60];
  v26 = v0[61];
  v27 = v0[58];

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  sub_10005006C(v27, v25, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v29 = sub_10006A888();
  v31 = v30;
  sub_10003D87C(v25, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  *(inited + 56) = &type metadata for String;
  v32 = sub_1000053B0();
  *(inited + 32) = v29;
  v97 = inited + 32;
  *(inited + 64) = v32;
  *(inited + 40) = v31;
  if (v24(v26, 1, v23) != 1)
  {
LABEL_41:

    v73 = v0[61];
    sub_1006A3EB0();
    swift_allocError();
    *v74 = 1;
    swift_willThrow();
    sub_10000CAAC(v73, &unk_1019FB770);
    goto LABEL_45;
  }

  v93 = objc_opt_self();
  v33 = [v93 _atomicIncrementAssertCount];
  v98 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v98);
  StaticString.description.getter();
  v95 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v34 = String._bridgeToObjectiveC()();

  v35 = [v34 lastPathComponent];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v37;

  v96 = inited;
  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v38 = static OS_os_log.crlAssert;
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10146CA70;
  *(v39 + 56) = &type metadata for Int32;
  *(v39 + 64) = &protocol witness table for Int32;
  *(v39 + 32) = v33;
  v40 = sub_100006370(0, &qword_1019F4D30);
  *(v39 + 96) = v40;
  v41 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v39 + 72) = v95;
  *(v39 + 136) = &type metadata for String;
  *(v39 + 144) = v32;
  *(v39 + 104) = v41;
  *(v39 + 112) = v36;
  *(v39 + 120) = v94;
  *(v39 + 176) = &type metadata for UInt;
  *(v39 + 184) = &protocol witness table for UInt;
  *(v39 + 152) = 1715;
  v42 = v98;
  *(v39 + 216) = v40;
  *(v39 + 224) = v41;
  *(v39 + 192) = v42;
  v43 = v95;
  v44 = v42;
  v45 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v39);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v46, "Filter not found: %@", 20, 2, v96);

  type metadata accessor for __VaListBuilder();
  v47 = swift_allocObject();
  v47[2] = 8;
  v47[3] = 0;
  v5 = v47 + 3;
  v47[4] = 0;
  v47[5] = 0;
  v7 = *(v96 + 16);
  if (!v7)
  {
LABEL_40:
    v69 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v70 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v71 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v72 = String._bridgeToObjectiveC()();

    [v93 handleFailureInFunction:v70 file:v71 lineNumber:1715 isFatal:0 format:v72 args:v69];

    goto LABEL_41;
  }

  v48 = 0;
  while (1)
  {
    sub_100020E58((v97 + 40 * v48), *(v97 + 40 * v48 + 24));
    v49 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v4 = *v5;
    v50 = *(v49 + 16);
    v51 = __OFADD__(*v5, v50);
    v52 = *v5 + v50;
    if (v51)
    {
      break;
    }

    v53 = v47[4];
    if (v53 >= v52)
    {
      goto LABEL_30;
    }

    if (v53 + 0x4000000000000000 < 0)
    {
      goto LABEL_54;
    }

    v54 = v47[5];
    if (2 * v53 > v52)
    {
      v52 = 2 * v53;
    }

    v47[4] = v52;
    if ((v52 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_55;
    }

    v55 = v49;
    v56 = swift_slowAlloc();
    v57 = v56;
    v47[5] = v56;
    if (v54)
    {
      if (v56 != v54 || v56 >= &v54[8 * v4])
      {
        memmove(v56, v54, 8 * v4);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v49 = v55;
LABEL_30:
      v57 = v47[5];
      if (!v57)
      {
        goto LABEL_37;
      }

      goto LABEL_31;
    }

    v49 = v55;
    if (!v57)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_31:
    v59 = *(v49 + 16);
    if (v59)
    {
      v60 = (v49 + 32);
      v61 = *v5;
      while (1)
      {
        v62 = *v60++;
        *&v57[8 * v61] = v62;
        v61 = *v5 + 1;
        if (__OFADD__(*v5, 1))
        {
          break;
        }

        *v5 = v61;
        if (!--v59)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:

    if (++v48 == v7)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  swift_once();
LABEL_7:
  v16 = static OS_os_log.crlBoardLibrary;
  v17 = static os_log_type_t.default.getter();
  sub_100005404(v16, &_mh_execute_header, v17, "Import board from file failed because .boardIdentifierMustBeOwnerForCreation", 76, 2, _swiftEmptyArrayStorage);
  sub_1006A3EB0();
  swift_allocError();
  *v18 = 9;
  swift_willThrow();
LABEL_45:

  v83 = v0[1];

  return v83();
}

uint64_t sub_1010B39EC()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_1010B3B0C, v3, v2);
}

uint64_t sub_1010B3B0C()
{
  v1 = v0[70];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[57];
  v6 = *(v5 + v1);
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v6 + v7, v4, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v4, type metadata accessor for CRLBoardCRDTData);
  v8 = (*(v5 + v1) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v9 = *v8;
  v10 = v8[1];

  sub_10084BD4C(v3, v9, v10, v2);
  v11 = swift_task_alloc();
  v0[75] = v11;
  *v11 = v0;
  v11[1] = sub_1010B3C74;
  v12 = v0[65];

  return sub_1010BF958(v12);
}

uint64_t sub_1010B3C74()
{
  v2 = *v1;
  v2[76] = v0;

  v3 = v2[65];
  if (v0)
  {
    sub_10003D87C(v3, type metadata accessor for CRLBoardIdentifier);
    v4 = v2[69];
    v5 = v2[68];
    v6 = sub_1010B3EE0;
  }

  else
  {

    sub_10003D87C(v3, type metadata accessor for CRLBoardIdentifier);
    v4 = v2[69];
    v5 = v2[68];
    v6 = sub_1010B3DF8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1010B3DF8()
{
  v1 = v0[72];
  v2 = v0[61];

  sub_10000CAAC(v2, &unk_1019FB770);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1010B3EE0()
{
  v1 = *(v0 + 488);

  sub_10000CAAC(v1, &unk_1019FB770);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010B3FC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 456) = a4;
  *(v5 + 232) = a3;
  *(v5 + 240) = v4;
  *(v5 + 216) = a1;
  *(v5 + 224) = a2;
  v6 = type metadata accessor for CharacterSet();
  *(v5 + 248) = v6;
  *(v5 + 256) = *(v6 - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = type metadata accessor for CRLBoardCRDTData(0);
  *(v5 + 280) = swift_task_alloc();
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  *(v5 + 288) = v7;
  *(v5 + 296) = *(v7 - 8);
  *(v5 + 304) = swift_task_alloc();
  sub_1005B981C(&unk_1019F52D0);
  *(v5 + 312) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 320) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 328) = v9;
  *(v5 + 336) = v8;

  return _swift_task_switch(sub_1010B4184, v9, v8);
}

uint64_t sub_1010B4184()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 456);
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v8 = *(*(v0 + 240) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  *(v0 + 344) = v8;
  sub_10005006C(v6, v1, type metadata accessor for CRLBoardIdentifier);
  (*(v3 + 56))(v1, 0, 1, v2);
  v9 = v8;
  *(v0 + 352) = sub_1007B196C(v7, v5, v4, v1, v9);
  *(v0 + 360) = v10;
  v13 = *(v0 + 240);
  sub_10000CAAC(*(v0 + 312), &unk_1019F52D0);
  v14 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v15 = *(v13 + v14);
  if (*(v15 + 16) && (v16 = sub_1000486F0(*(v0 + 216)), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();
    v19 = *(v18 + 16);
    *(v0 + 392) = v19;
    v20 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
    v21 = *&v19[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];
    v22 = *(*(v21 + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
    v23 = v19;
    if (v22)
    {

      v24 = v22;
      v25 = [v24 currentUserParticipant];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 permission];
      }

      else
      {
        v27 = [v24 publicPermission];
      }

      if (v27 == 2)
      {
        v33 = *(v0 + 344);

        sub_1011072F4();
        swift_allocError();
        swift_willThrow();

LABEL_2:

        v11 = *(v0 + 8);

        return v11();
      }

      v21 = *&v19[v20];
    }

    v34 = *(v0 + 352);
    v35 = *(v0 + 360);
    v36 = *(v0 + 280);
    v37 = *(v21 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v38 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10005006C(v37 + v38, v36, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&qword_101A1A020);
    CRRegister.wrappedValue.getter();
    sub_10003D87C(v36, type metadata accessor for CRLBoardCRDTData);
    v39 = *(v0 + 120);
    v40 = *(v0 + 128);
    *(v0 + 400) = v39;
    *(v0 + 408) = v40;
    if ((v39 != v34 || v40 != v35) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v82 = v35;
      v87 = v23;
      v83 = v20;
      v84 = v19;
      v41 = *(v0 + 344);
      v42 = *(v0 + 256);
      v43 = *(v0 + 264);
      v44 = *(v0 + 248);
      v86 = type metadata accessor for CRLCommandSetBoardTitle();
      v85 = objc_allocWithZone(v86);
      v45 = v41;
      v46 = String._bridgeToObjectiveC()();
      v47 = [v46 crl_stringByFixingBrokenSurrogatePairs];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      *(v0 + 136) = v48;
      *(v0 + 144) = v50;

      static CharacterSet.whitespacesAndNewlines.getter();
      sub_100017CD8();
      v51 = StringProtocol.trimmingCharacters(in:)();
      v53 = v52;
      v54 = *(v42 + 8);
      v54(v43, v44);

      while (1)
      {
        v55 = *(v0 + 264);
        v56 = *(v0 + 248);
        *(v0 + 152) = v51;
        *(v0 + 160) = v53;
        static CharacterSet.newlines.getter();
        v57 = StringProtocol.rangeOfCharacter(from:options:range:)();
        v59 = v58;
        v61 = v60;
        v54(v55, v56);

        if (v61)
        {
          break;
        }

        v51 = sub_1007B0BC0(v57, v59, 32, 0xE100000000000000, v51, v53);
        v63 = v62;

        v53 = v63;
      }

      v64 = HIBYTE(v53) & 0xF;
      if ((v53 & 0x2000000000000000) == 0)
      {
        v64 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (!v64)
      {
        v80 = *(v0 + 344);
        v79 = *(v0 + 352);
        sub_10070C224();
        swift_allocError();
        *v81 = v79;
        *(v81 + 8) = v82;
        *(v81 + 16) = 0;
        swift_willThrow();

        swift_deallocPartialClassInstance();
        goto LABEL_2;
      }

      v65 = *(v0 + 344);
      v66 = &v85[OBJC_IVAR____TtC8Freeform23CRLCommandSetBoardTitle_boardTitle];
      *v66 = v51;
      v66[1] = v53;
      *(v0 + 168) = v85;
      *(v0 + 176) = v86;
      v67 = objc_msgSendSuper2((v0 + 168), "init");

      v68 = *&v87[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];
      v69 = OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue;
      swift_beginAccess();
      v70 = *&v68[v69];
      v71 = v68;
      v72 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v68[v69] = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = sub_100B36334(0, v70[2] + 1, 1, v70);
        *&v68[v69] = v70;
      }

      v75 = v70[2];
      v74 = v70[3];
      if (v75 >= v74 >> 1)
      {
        v70 = sub_100B36334((v74 > 1), v75 + 1, 1, v70);
      }

      v70[2] = v75 + 1;
      v76 = &v70[2 * v75];
      v76[4] = v72;
      *(v76 + 40) = 1;
      *&v68[v69] = v70;
      swift_endAccess();
      sub_10088DA18();

      [*&v84[v83] savePendingChanges];
    }

    v77 = swift_task_alloc();
    *(v0 + 416) = v77;
    *v77 = v0;
    v77[1] = sub_1010B5168;
    v78 = *(v0 + 216);

    return sub_1010A91B4(v78, 0);
  }

  else
  {
    v28 = *(v0 + 304);
    v29 = *(v0 + 216);
    swift_endAccess();
    sub_10005006C(v29, v28, type metadata accessor for CRLBoardIdentifier);
    v30 = v9;
    v31 = swift_task_alloc();
    *(v0 + 368) = v31;
    *v31 = v0;
    v31[1] = sub_1010B4980;
    v32 = *(v0 + 304);

    return sub_10092DE14(v32, v30, 0);
  }
}

uint64_t sub_1010B4980(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {

    v5 = *(v4 + 328);
    v6 = *(v4 + 336);
    v7 = sub_1010B50C8;
  }

  else
  {
    *(v4 + 384) = a1;
    v5 = *(v4 + 328);
    v6 = *(v4 + 336);
    v7 = sub_1010B4AC0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1010B4AC0()
{
  v1 = *(v0 + 384);
  *(v0 + 392) = v1;
  v2 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];
  v4 = *(*(v3 + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v4)
  {

    v5 = v4;
    v6 = [v5 currentUserParticipant];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 permission];
    }

    else
    {
      v8 = [v5 publicPermission];
    }

    if (v8 == 2)
    {
      v9 = *(v0 + 344);

      sub_1011072F4();
      swift_allocError();
      swift_willThrow();

LABEL_7:

      v10 = *(v0 + 8);

      return v10();
    }

    v3 = *&v1[v2];
  }

  v12 = *(v0 + 352);
  v13 = *(v0 + 360);
  v14 = *(v0 + 280);
  v15 = *(v3 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v15 + v16, v14, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v14, type metadata accessor for CRLBoardCRDTData);
  v17 = *(v0 + 120);
  v18 = *(v0 + 128);
  *(v0 + 400) = v17;
  *(v0 + 408) = v18;
  if ((v17 != v12 || v18 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v59 = v13;
    v64 = v1;
    v19 = *(v0 + 344);
    v20 = *(v0 + 256);
    v21 = *(v0 + 264);
    v60 = v2;
    v61 = *(v0 + 248);
    v63 = type metadata accessor for CRLCommandSetBoardTitle();
    v62 = objc_allocWithZone(v63);
    v22 = v19;
    v23 = String._bridgeToObjectiveC()();
    v24 = [v23 crl_stringByFixingBrokenSurrogatePairs];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *(v0 + 136) = v25;
    *(v0 + 144) = v27;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_100017CD8();
    v28 = StringProtocol.trimmingCharacters(in:)();
    v30 = v29;
    v31 = *(v20 + 8);
    v31(v21, v61);

    while (1)
    {
      v32 = *(v0 + 264);
      v33 = *(v0 + 248);
      *(v0 + 152) = v28;
      *(v0 + 160) = v30;
      static CharacterSet.newlines.getter();
      v34 = StringProtocol.rangeOfCharacter(from:options:range:)();
      v36 = v35;
      v38 = v37;
      v31(v32, v33);

      if (v38)
      {
        break;
      }

      v28 = sub_1007B0BC0(v34, v36, 32, 0xE100000000000000, v28, v30);
      v40 = v39;

      v30 = v40;
    }

    v41 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v41 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41)
    {
      v57 = *(v0 + 344);
      v56 = *(v0 + 352);
      sub_10070C224();
      swift_allocError();
      *v58 = v56;
      *(v58 + 8) = v59;
      *(v58 + 16) = 0;
      swift_willThrow();

      swift_deallocPartialClassInstance();
      goto LABEL_7;
    }

    v42 = *(v0 + 344);
    v43 = &v62[OBJC_IVAR____TtC8Freeform23CRLCommandSetBoardTitle_boardTitle];
    *v43 = v28;
    v43[1] = v30;
    *(v0 + 168) = v62;
    *(v0 + 176) = v63;
    v44 = objc_msgSendSuper2((v0 + 168), "init");

    v45 = *&v64[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];
    v46 = OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue;
    swift_beginAccess();
    v47 = *&v45[v46];
    v48 = v45;
    v49 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v45[v46] = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = sub_100B36334(0, v47[2] + 1, 1, v47);
      *&v45[v46] = v47;
    }

    v52 = v47[2];
    v51 = v47[3];
    if (v52 >= v51 >> 1)
    {
      v47 = sub_100B36334((v51 > 1), v52 + 1, 1, v47);
    }

    v47[2] = v52 + 1;
    v53 = &v47[2 * v52];
    v53[4] = v49;
    *(v53 + 40) = 1;
    *&v45[v46] = v47;
    swift_endAccess();
    sub_10088DA18();

    [*&v64[v60] savePendingChanges];
  }

  v54 = swift_task_alloc();
  *(v0 + 416) = v54;
  *v54 = v0;
  v54[1] = sub_1010B5168;
  v55 = *(v0 + 216);

  return sub_1010A91B4(v55, 0);
}

uint64_t sub_1010B50C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010B5168(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 424) = a1;

  if (v1)
  {

    v4 = *(v3 + 328);
    v5 = *(v3 + 336);
    v6 = sub_1010B5790;
  }

  else
  {
    v4 = *(v3 + 328);
    v5 = *(v3 + 336);
    v6 = sub_1010B529C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1010B529C()
{
  v1 = v0[53];
  if (!v1)
  {
    v5 = v0[49];
    v6 = v0[43];

LABEL_16:

    goto LABEL_17;
  }

  v2 = v1;
  static CKShare.SystemFieldKey.title.getter();
  v3 = CKRecord.subscript.getter();

  if (v3)
  {
    v0[26] = v3;
    sub_1005B981C(&qword_101A1B0B0);
    if (swift_dynamicCast())
    {
      if (v0[44] == v0[23] && v0[45] == v0[24])
      {
        v4 = v0[43];

LABEL_10:

        v8 = v0[49];

LABEL_17:

        v16 = v0[1];
        v17 = v0[50];
        v18 = v0[51];

        return v16(v17, v18);
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v7)
      {
        v4 = v0[43];
        goto LABEL_10;
      }
    }
  }

  [v2 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &qword_1019F52C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v14 = v0[49];
    v15 = v0[43];

    goto LABEL_16;
  }

  v9 = v0[25];
  v0[54] = v9;
  static CKShare.SystemFieldKey.title.getter();
  CKRecordKeyValueSetting.subscript.setter();
  v10 = v9;
  v11 = swift_task_alloc();
  v0[55] = v11;
  *v11 = v0;
  v11[1] = sub_1010B5594;
  v12 = v0[27];

  return sub_1010A9CB4(v12, v9, 1);
}

uint64_t sub_1010B5594()
{
  v2 = *v1;
  *(v2 + 448) = v0;

  if (v0)
  {

    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_1010B5838;
  }

  else
  {
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_1010B56D8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1010B56D8()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 392);

  v4 = *(v0 + 8);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);

  return v4(v5, v6);
}

uint64_t sub_1010B5790()
{
  v1 = v0[49];
  v2 = v0[43];

  v3 = v0[1];
  v4 = v0[50];
  v5 = v0[51];

  return v3(v4, v5);
}

uint64_t sub_1010B5838()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 392);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1010B58EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1010B5984, v4, v3);
}

uint64_t sub_1010B59B4()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1010B5AB4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x726F766146746573, 0xEF293A5F28657469, sub_10110737C, v3, &type metadata for () + 8);
}

uint64_t sub_1010B5AB4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1010B5BE8;
  }

  else
  {

    v2 = sub_1010B5BD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010B5BE8()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1006DED10, v1, v2);
}

uint64_t sub_1010B5C4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1010B5CE4, v4, v3);
}

uint64_t sub_1010B5D14()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1010B5E0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001BLL, 0x80000001015C23F0, sub_1011072E4, v3, &type metadata for () + 8);
}

uint64_t sub_1010B5E0C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1010B5F40;
  }

  else
  {

    v2 = sub_1010B5F28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010B5F40()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_101107D08, v1, v2);
}

uint64_t sub_1010B5FA4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1010B603C, v4, v3);
}

uint64_t sub_1010B606C()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1010B5E0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001BLL, 0x80000001015C23D0, sub_1011072DC, v3, &type metadata for () + 8);
}

uint64_t sub_1010B6164(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 305) = a5;
  *(v6 + 304) = a4;
  *(v6 + 152) = a3;
  *(v6 + 160) = v5;
  *(v6 + 136) = a1;
  *(v6 + 144) = a2;
  type metadata accessor for UUID();
  *(v6 + 168) = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = type metadata accessor for MainActor();
  *(v6 + 192) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 200) = v8;
  *(v6 + 208) = v7;

  return _swift_task_switch(sub_1010B6264, v8, v7);
}

uint64_t sub_1010B6264()
{
  v1 = v0[22];
  v2 = v0[21];
  UUID.init()();
  sub_10084BD4C(v2, 0, 0xE000000000000000, v1);
  v0[27] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[28] = v4;
  v0[29] = v3;

  return _swift_task_switch(sub_1010B6318, v4, v3);
}

uint64_t sub_1010B6318()
{
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlBoardLibrary;
  *(v0 + 240) = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v3 = UUID.uuidString.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Creating new board with Board UUID (%@).", 40, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_1010B64A0;
  v8 = *(v0 + 176);
  v9 = *(v0 + 305);
  v10 = *(v0 + 152);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);

  return sub_1010C0B98(v8, v11, v12, v10, v9);
}

uint64_t sub_1010B64A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v1;

  v5 = *(v3 + 232);
  v6 = *(v3 + 224);
  if (v1)
  {
    v7 = sub_1010B688C;
  }

  else
  {
    v7 = sub_1010B65E4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1010B65E4()
{
  v1 = *(v0 + 304);

  if (v1 == 1)
  {
    v2 = *(v0 + 264);
    sub_100822BB8(*(v0 + 256));
    v4 = *(v0 + 256);
    if (v2)
    {
      v5 = *(v0 + 240);
      v6 = static os_log_type_t.error.getter();
      sub_100005404(v5, &_mh_execute_header, v6, "Loading demo contents failed", 28, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v7 = v3;
      [*(v0 + 256) fixUp];
      v8 = *&v4[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges];
      v9 = *(v8 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      *(v10 + 24) = v8;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_100798CD8;
      *(v11 + 24) = v10;
      *(v0 + 120) = sub_10002AAE4;
      *(v0 + 128) = v11;
      *(v0 + 88) = _NSConcreteStackBlock;
      *(v0 + 96) = *"";
      *(v0 + 104) = sub_10002AAB8;
      *(v0 + 112) = &unk_1018B0D60;
      v12 = _Block_copy((v0 + 88));
      swift_retain_n();

      dispatch_sync(v9, v12);
      _Block_release(v12);
      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if (v9)
      {
        __break(1u);
        return result;
      }

      v14 = *(v0 + 256);
      [v14 savePendingChanges];
    }
  }

  else
  {
  }

  v15 = swift_task_alloc();
  *(v0 + 272) = v15;
  *v15 = v0;
  v15[1] = sub_1010B698C;

  return sub_10007CEB8(_swiftEmptySetSingleton);
}

uint64_t sub_1010B688C()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_1010B68F0, v1, v2);
}

uint64_t sub_1010B68F0()
{
  v1 = *(v0 + 176);

  sub_10003D87C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010B698C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 280) = v3;
  *v3 = v2;
  v3[1] = sub_1010B6AE4;
  v4 = *(v1 + 176);

  return sub_1010BF958(v4);
}

uint64_t sub_1010B6AE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_1010B6CA4;
  }

  else
  {
    v4[37] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_1010B6C0C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1010B6C0C()
{
  v1 = v0[22];

  sub_10003D87C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = v0[1];
  v3 = v0[37];

  return v2(v3);
}

uint64_t sub_1010B6CA4()
{
  v1 = *(v0 + 176);

  sub_10003D87C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010B6D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = swift_getObjectType();
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_1010B6DE8, v6, v5);
}

uint64_t sub_1010B6DE8()
{
  v5 = v0;
  v1 = v0[6];
  v4[3] = v0[7];
  v4[4] = &off_1018B0BE8;
  v4[0] = v1;
  type metadata accessor for CRLBoardSearchHelper();
  swift_allocObject();
  v2 = v1;
  v0[11] = sub_100050DA4(v4);

  return _swift_task_switch(sub_1010B6E8C, 0, 0);
}

uint64_t sub_1010B6E8C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v7 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  v5 = sub_1005B981C(&qword_101A2ADE8);
  *v4 = v0;
  v4[1] = sub_1010B6FB4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000024, 0x80000001015C34F0, sub_101107BE4, v3, v5);
}

uint64_t sub_1010B6FB4()
{

  return _swift_task_switch(sub_1010B70CC, 0, 0);
}

uint64_t sub_1010B70CC()
{

  v0[14] = v0[2];
  v1 = v0[9];
  v2 = v0[10];

  return _swift_task_switch(sub_1010B7138, v1, v2);
}

uint64_t sub_1010B7138()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_1010B719C(uint64_t a1)
{
  v2[126] = v1;
  v2[125] = a1;
  v2[127] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  sub_1005B981C(&qword_101A23C28);
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = type metadata accessor for MainActor();
  v2[134] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[135] = v4;
  v2[136] = v3;

  return _swift_task_switch(sub_1010B72F4, v4, v3);
}

uint64_t sub_1010B72F4()
{
  v1 = sub_1010A8ECC(v0[125]);
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlBoardLibrary;
  v0[137] = static OS_os_log.crlBoardLibrary;
  v0[138] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v4 = *(v1 + 16);
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v4;
  v0[118] = v1;
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v5 = BidirectionalCollection<>.joined(separator:)();
  v7 = v6;

  *(inited + 96) = &type metadata for String;
  v8 = sub_1000053B0();
  v0[139] = v8;
  *(inited + 104) = v8;
  *(inited + 72) = v5;
  *(inited + 80) = v7;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v9, "Deleting %d board(s): %@", 24, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_1010C9804();
  v0[119] = _swiftEmptySetSingleton;
  v0[120] = _swiftEmptySetSingleton;
  v0[121] = _swiftEmptySetSingleton;
  v0[140] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[141] = v11;
  v0[142] = v10;

  return _swift_task_switch(sub_1010B754C, v11, v10);
}

uint64_t sub_1010B754C()
{
  v1 = sub_1005B981C(&qword_101A2AD50);
  v7 = *(v0 + 1000);
  v2 = static MainActor.shared.getter();
  *(v0 + 1144) = v2;
  v3 = swift_task_alloc();
  *(v0 + 1152) = v3;
  *(v3 + 16) = v7;
  v4 = sub_1005B981C(&qword_101A2AD58);
  v5 = swift_task_alloc();
  *(v0 + 1160) = v5;
  *v5 = v0;
  v5[1] = sub_1010B7690;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 976, v1, v4, v2, &protocol witness table for MainActor, &unk_1014C6068, v3, v1);
}

uint64_t sub_1010B7690()
{
  v1 = *v0;

  v2 = *(v1 + 1136);
  v3 = *(v1 + 1128);

  return _swift_task_switch(sub_1010B77F0, v3, v2);
}

uint64_t sub_1010B77F0()
{

  v0[146] = v0[122];
  v1 = v0[136];
  v2 = v0[135];

  return _swift_task_switch(sub_1010B7860, v2, v1);
}

uint64_t sub_1010B7860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(v3 + 1168);
  v6 = *(v5 + 32);
  *(v3 + 1504) = v6;
  if (1 << v6 < 64)
  {
    v7 = ~(-1 << (1 << v6));
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v5 + 64);
  *(v3 + 1176) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_isNetworkReachable;
  *(v3 + 1184) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardShareController;
  while (v8)
  {
    v18 = *(v3 + 1168);
LABEL_17:
    v23 = *(v3 + 1048);
    v24 = *(v3 + 1040);
    v25 = (v8 - 1) & v8;
    v26 = __clz(__rbit64(v8)) | (v4 << 6);
    sub_10005006C(*(v18 + 48) + *(*(v3 + 1016) + 72) * v26, v24, type metadata accessor for CRLBoardIdentifier);
    LOBYTE(v26) = *(*(v18 + 56) + v26);
    v27 = sub_1005B981C(&unk_101A23C30);
    v28 = *(v27 + 48);
    sub_100025738(v24, v23, type metadata accessor for CRLBoardIdentifier);
    *(v23 + v28) = v26;
    (*(*(v27 - 8) + 56))(v23, 0, 1, v27);
    v21 = v4;
LABEL_18:
    *(v3 + 1200) = v21;
    *(v3 + 1192) = v25;
    v29 = *(v3 + 1056);
    sub_10003DFF8(*(v3 + 1048), v29, &qword_101A23C28);
    v30 = sub_1005B981C(&unk_101A23C30);
    if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
    {

      v35 = *(v3 + 952);
      *(v3 + 1352) = v35;
      v36 = *(v35 + 16);
      if (v36)
      {
        v37 = *(v3 + 1096);
        v38 = *(v3 + 1008);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        *(inited + 56) = &type metadata for Int;
        *(inited + 64) = &protocol witness table for Int;
        *(inited + 32) = v36;
        v40 = static os_log_type_t.default.getter();
        sub_100005404(v37, &_mh_execute_header, v40, "Encountered error while deleting %d board(s). Adding them to the list of boards to retry deletion.", 98, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        *(v3 + 1360) = *(v38 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
        v41 = sub_1010BAA78;
      }

      else
      {
        v56 = *(v3 + 1000);

        sub_1012D515C(v35);
        *(v3 + 1392) = v56;
        v48 = *(v56 + 16);
        if (v48)
        {
          v49 = *(v3 + 1096);
          v50 = *(v3 + 1008);
          v51 = swift_initStackObject();
          *(v51 + 16) = xmmword_10146C6B0;
          *(v51 + 56) = &type metadata for Int;
          *(v51 + 64) = &protocol witness table for Int;
          *(v51 + 32) = v48;
          v52 = static os_log_type_t.default.getter();
          sub_100005404(v49, &_mh_execute_header, v52, "Successfully deleted %d boards", 30, 2, v51);
          swift_setDeallocating();
          sub_100005070(v51 + 32);
          *(v3 + 1400) = *(v50 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
          v41 = sub_1010BAF74;
        }

        else
        {

          *(v3 + 1432) = *(*(v3 + 1008) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
          *(v3 + 1440) = *(v3 + 960);
          v41 = sub_1010BB330;
        }
      }

      a1 = v41;
      a2 = 0;
      a3 = 0;
      goto LABEL_33;
    }

    v31 = *(v3 + 1056);
    v32 = *(v31 + *(v30 + 48));
    sub_100025738(v31, *(v3 + 1032), type metadata accessor for CRLBoardIdentifier);
    if (v32 <= 1)
    {
      v9 = *(v3 + 1112);
      v10 = *(v3 + 1096);
      v11 = *(v3 + 1040);
      v12 = *(v3 + 1032);
      v13 = *(v3 + 1024);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_10146C6B0;
      v15 = UUID.uuidString.getter();
      *(v14 + 56) = &type metadata for String;
      *(v14 + 64) = v9;
      *(v14 + 32) = v15;
      *(v14 + 40) = v16;
      v17 = static os_log_type_t.default.getter();
      sub_100005404(v10, &_mh_execute_header, v17, "Local deletion for: %{public}@", 30, 2, v14);
      swift_setDeallocating();
      sub_100005070(v14 + 32);
      sub_10005006C(v12, v13, type metadata accessor for CRLBoardIdentifier);
      sub_100031F10(v11, v13);
      sub_10003D87C(v11, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      if (v32 != 4)
      {
        v42 = *(v3 + 1040);
        v43 = *(v3 + 1024);
        sub_10005006C(*(v3 + 1032), v43, type metadata accessor for CRLBoardIdentifier);
        sub_100031F10(v42, v43);
        sub_10003D87C(v42, type metadata accessor for CRLBoardIdentifier);
        v44 = static MainActor.shared.getter();
        if (v32 == 2)
        {
          *(v3 + 1208) = v44;
          v45 = dispatch thunk of Actor.unownedExecutor.getter();
          a3 = v46;
          *(v3 + 1216) = v45;
          *(v3 + 1224) = v46;
          v47 = sub_1010B7F78;
        }

        else
        {
          *(v3 + 1304) = v44;
          v45 = dispatch thunk of Actor.unownedExecutor.getter();
          a3 = v53;
          *(v3 + 1312) = v45;
          *(v3 + 1320) = v53;
          v47 = sub_1010B96B8;
        }

        a1 = v47;
        a2 = v45;
LABEL_33:

        return _swift_task_switch(a1, a2, a3);
      }

      LOBYTE(v55) = 2;
      sub_10098EE94("Do not call method", 18, 2, &_mh_execute_header, "deleteBoards(boardIdentifiers:)", 31, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardLibrary.swift", 87, v55, 1505);
    }

    a1 = sub_10003D87C(*(v3 + 1032), type metadata accessor for CRLBoardIdentifier);
    v4 = *(v3 + 1200);
    v8 = *(v3 + 1192);
  }

  v19 = ((1 << *(v3 + 1504)) + 63) >> 6;
  if (v19 <= (v4 + 1))
  {
    v20 = v4 + 1;
  }

  else
  {
    v20 = ((1 << *(v3 + 1504)) + 63) >> 6;
  }

  v21 = v20 - 1;
  while (1)
  {
    v22 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v33 = *(v3 + 1048);
      v34 = sub_1005B981C(&unk_101A23C30);
      (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
      v25 = 0;
      goto LABEL_18;
    }

    v18 = *(v3 + 1168);
    v8 = *(v18 + 8 * v22 + 64);
    ++v4;
    if (v8)
    {
      v4 = v22;
      goto LABEL_17;
    }
  }

  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1010B7F78()
{
  if (*(v0[126] + v0[147]) == 1)
  {
    v0[154] = static MainActor.shared.getter();
    v0[155] = static MainActor.shared.getter();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v0[156] = v1;
    v0[157] = v2;
    v4 = sub_1010B8048;
    v5 = v1;
  }

  else
  {

    v3 = v0[136];
    v5 = v0[135];
    v4 = sub_101107CFC;
  }

  return _swift_task_switch(v4, v5, v3);
}

uint64_t sub_1010B8048()
{
  v1 = swift_task_alloc();
  *(v0 + 1264) = v1;
  *v1 = v0;
  v1[1] = sub_1010B80E8;
  v2 = *(v0 + 1032);

  return sub_10123AD70(v2);
}

uint64_t sub_1010B80E8()
{
  v2 = *v1;
  v2[159] = v0;

  if (v0)
  {
    v3 = v2[157];
    v4 = v2[156];

    return _swift_task_switch(sub_1010B83A0, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[160] = v5;
    *v5 = v2;
    v5[1] = sub_1010B8264;
    v6 = v2[129];

    return sub_1010C3780(v6, 0, 1);
  }
}

uint64_t sub_1010B8264()
{
  v2 = *v1;
  *(*v1 + 1288) = v0;

  v3 = *(v2 + 1256);
  v4 = *(v2 + 1248);
  if (v0)
  {
    v5 = sub_1010B8CD0;
  }

  else
  {
    v5 = sub_1010B8430;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010B83A0()
{
  *(v0 + 1296) = *(v0 + 1272);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010B8D60, v2, v1);
}

uint64_t sub_1010B8430()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010B84B8, v1, v0);
}

uint64_t sub_1010B84B8()
{

  v1 = *(v0 + 1224);
  v2 = *(v0 + 1216);

  return _swift_task_switch(sub_1010B8520, v2, v1);
}

uint64_t sub_1010B8520()
{

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);

  return _swift_task_switch(sub_1010B8588, v2, v1);
}

uint64_t sub_1010B8588()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1096);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v4 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Owned share deletion for: %{public}@", 36, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  while (1)
  {
    v16 = sub_10003D87C(*(v0 + 1032), type metadata accessor for CRLBoardIdentifier);
    v19 = *(v0 + 1200);
    v20 = *(v0 + 1192);
    if (!v20)
    {
      break;
    }

    v21 = *(v0 + 1168);
LABEL_13:
    v26 = *(v0 + 1048);
    v27 = *(v0 + 1040);
    v28 = (v20 - 1) & v20;
    v29 = __clz(__rbit64(v20)) | (v19 << 6);
    sub_10005006C(*(v21 + 48) + *(*(v0 + 1016) + 72) * v29, v27, type metadata accessor for CRLBoardIdentifier);
    LOBYTE(v29) = *(*(v21 + 56) + v29);
    v30 = sub_1005B981C(&unk_101A23C30);
    v31 = *(v30 + 48);
    sub_100025738(v27, v26, type metadata accessor for CRLBoardIdentifier);
    *(v26 + v31) = v29;
    (*(*(v30 - 8) + 56))(v26, 0, 1, v30);
    v24 = v19;
LABEL_14:
    *(v0 + 1200) = v24;
    *(v0 + 1192) = v28;
    v32 = *(v0 + 1056);
    sub_10003DFF8(*(v0 + 1048), v32, &qword_101A23C28);
    v33 = sub_1005B981C(&unk_101A23C30);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
    {

      v38 = *(v0 + 952);
      *(v0 + 1352) = v38;
      v39 = *(v38 + 16);
      if (v39)
      {
        v40 = *(v0 + 1096);
        v41 = *(v0 + 1008);
        v42 = swift_initStackObject();
        *(v42 + 16) = xmmword_10146C6B0;
        *(v42 + 56) = &type metadata for Int;
        *(v42 + 64) = &protocol witness table for Int;
        *(v42 + 32) = v39;
        v43 = static os_log_type_t.default.getter();
        sub_100005404(v40, &_mh_execute_header, v43, "Encountered error while deleting %d board(s). Adding them to the list of boards to retry deletion.", 98, 2, v42);
        swift_setDeallocating();
        sub_100005070(v42 + 32);
        *(v0 + 1360) = *(v41 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
        v44 = sub_1010BAA78;
      }

      else
      {
        v59 = *(v0 + 1000);

        sub_1012D515C(v38);
        *(v0 + 1392) = v59;
        v51 = *(v59 + 16);
        if (v51)
        {
          v52 = *(v0 + 1096);
          v53 = *(v0 + 1008);
          v54 = swift_initStackObject();
          *(v54 + 16) = xmmword_10146C6B0;
          *(v54 + 56) = &type metadata for Int;
          *(v54 + 64) = &protocol witness table for Int;
          *(v54 + 32) = v51;
          v55 = static os_log_type_t.default.getter();
          sub_100005404(v52, &_mh_execute_header, v55, "Successfully deleted %d boards", 30, 2, v54);
          swift_setDeallocating();
          sub_100005070(v54 + 32);
          *(v0 + 1400) = *(v53 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
          v44 = sub_1010BAF74;
        }

        else
        {

          *(v0 + 1432) = *(*(v0 + 1008) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
          *(v0 + 1440) = *(v0 + 960);
          v44 = sub_1010BB330;
        }
      }

      v16 = v44;
      v17 = 0;
      v18 = 0;
      goto LABEL_29;
    }

    v34 = *(v0 + 1056);
    v35 = *(v34 + *(v33 + 48));
    sub_100025738(v34, *(v0 + 1032), type metadata accessor for CRLBoardIdentifier);
    if (v35 <= 1)
    {
      v7 = *(v0 + 1112);
      v8 = *(v0 + 1096);
      v9 = *(v0 + 1040);
      v10 = *(v0 + 1032);
      v11 = *(v0 + 1024);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10146C6B0;
      v13 = UUID.uuidString.getter();
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = v7;
      *(v12 + 32) = v13;
      *(v12 + 40) = v14;
      v15 = static os_log_type_t.default.getter();
      sub_100005404(v8, &_mh_execute_header, v15, "Local deletion for: %{public}@", 30, 2, v12);
      swift_setDeallocating();
      sub_100005070(v12 + 32);
      sub_10005006C(v10, v11, type metadata accessor for CRLBoardIdentifier);
      sub_100031F10(v9, v11);
      sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      if (v35 != 4)
      {
        v45 = *(v0 + 1040);
        v46 = *(v0 + 1024);
        sub_10005006C(*(v0 + 1032), v46, type metadata accessor for CRLBoardIdentifier);
        sub_100031F10(v45, v46);
        sub_10003D87C(v45, type metadata accessor for CRLBoardIdentifier);
        v47 = static MainActor.shared.getter();
        if (v35 == 2)
        {
          *(v0 + 1208) = v47;
          v48 = dispatch thunk of Actor.unownedExecutor.getter();
          v18 = v49;
          *(v0 + 1216) = v48;
          *(v0 + 1224) = v49;
          v50 = sub_1010B7F78;
        }

        else
        {
          *(v0 + 1304) = v47;
          v48 = dispatch thunk of Actor.unownedExecutor.getter();
          v18 = v56;
          *(v0 + 1312) = v48;
          *(v0 + 1320) = v56;
          v50 = sub_1010B96B8;
        }

        v16 = v50;
        v17 = v48;
LABEL_29:

        return _swift_task_switch(v16, v17, v18);
      }

      LOBYTE(v58) = 2;
      sub_10098EE94("Do not call method", 18, 2, &_mh_execute_header, "deleteBoards(boardIdentifiers:)", 31, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardLibrary.swift", 87, v58, 1505);
    }
  }

  v22 = ((1 << *(v0 + 1504)) + 63) >> 6;
  if (v22 <= (v19 + 1))
  {
    v23 = v19 + 1;
  }

  else
  {
    v23 = ((1 << *(v0 + 1504)) + 63) >> 6;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      v36 = *(v0 + 1048);
      v37 = sub_1005B981C(&unk_101A23C30);
      (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
      v28 = 0;
      goto LABEL_14;
    }

    v21 = *(v0 + 1168);
    v20 = *(v21 + 8 * v25 + 64);
    ++v19;
    if (v20)
    {
      v19 = v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1010B8CD0()
{
  *(v0 + 1296) = *(v0 + 1288);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010B8D60, v2, v1);
}

uint64_t sub_1010B8D60()
{

  v1 = *(v0 + 1224);
  v2 = *(v0 + 1216);

  return _swift_task_switch(sub_1010B8DC8, v2, v1);
}

uint64_t sub_1010B8DC8()
{

  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v1 = v0[139];
  v2 = static OS_os_log.shareState;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Unable to unshare board before deleting due to error, will reattempt again later %@", 83, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = v0[136];
  v8 = v0[135];

  return _swift_task_switch(sub_1010B8F1C, v8, v7);
}

uint64_t sub_1010B8F1C()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v7 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v9, "Owned share deletion failed, retrying: %{public}@", 49, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_10005006C(v4, v5, type metadata accessor for CRLBoardIdentifier);
  sub_100031F10(v3, v5);
  sub_10003D87C(v3, type metadata accessor for CRLBoardIdentifier);
  while (1)
  {
    v19 = sub_10003D87C(*(v0 + 1032), type metadata accessor for CRLBoardIdentifier);
    v22 = *(v0 + 1200);
    v23 = *(v0 + 1192);
    if (!v23)
    {
      break;
    }

    v24 = *(v0 + 1168);
LABEL_13:
    v29 = *(v0 + 1048);
    v30 = *(v0 + 1040);
    v31 = (v23 - 1) & v23;
    v32 = __clz(__rbit64(v23)) | (v22 << 6);
    sub_10005006C(*(v24 + 48) + *(*(v0 + 1016) + 72) * v32, v30, type metadata accessor for CRLBoardIdentifier);
    LOBYTE(v32) = *(*(v24 + 56) + v32);
    v33 = sub_1005B981C(&unk_101A23C30);
    v34 = *(v33 + 48);
    sub_100025738(v30, v29, type metadata accessor for CRLBoardIdentifier);
    *(v29 + v34) = v32;
    (*(*(v33 - 8) + 56))(v29, 0, 1, v33);
    v27 = v22;
LABEL_14:
    *(v0 + 1200) = v27;
    *(v0 + 1192) = v31;
    v35 = *(v0 + 1056);
    sub_10003DFF8(*(v0 + 1048), v35, &qword_101A23C28);
    v36 = sub_1005B981C(&unk_101A23C30);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {

      v41 = *(v0 + 952);
      *(v0 + 1352) = v41;
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = *(v0 + 1096);
        v44 = *(v0 + 1008);
        v45 = swift_initStackObject();
        *(v45 + 16) = xmmword_10146C6B0;
        *(v45 + 56) = &type metadata for Int;
        *(v45 + 64) = &protocol witness table for Int;
        *(v45 + 32) = v42;
        v46 = static os_log_type_t.default.getter();
        sub_100005404(v43, &_mh_execute_header, v46, "Encountered error while deleting %d board(s). Adding them to the list of boards to retry deletion.", 98, 2, v45);
        swift_setDeallocating();
        sub_100005070(v45 + 32);
        *(v0 + 1360) = *(v44 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
        v47 = sub_1010BAA78;
      }

      else
      {
        v62 = *(v0 + 1000);

        sub_1012D515C(v41);
        *(v0 + 1392) = v62;
        v54 = *(v62 + 16);
        if (v54)
        {
          v55 = *(v0 + 1096);
          v56 = *(v0 + 1008);
          v57 = swift_initStackObject();
          *(v57 + 16) = xmmword_10146C6B0;
          *(v57 + 56) = &type metadata for Int;
          *(v57 + 64) = &protocol witness table for Int;
          *(v57 + 32) = v54;
          v58 = static os_log_type_t.default.getter();
          sub_100005404(v55, &_mh_execute_header, v58, "Successfully deleted %d boards", 30, 2, v57);
          swift_setDeallocating();
          sub_100005070(v57 + 32);
          *(v0 + 1400) = *(v56 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
          v47 = sub_1010BAF74;
        }

        else
        {

          *(v0 + 1432) = *(*(v0 + 1008) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
          *(v0 + 1440) = *(v0 + 960);
          v47 = sub_1010BB330;
        }
      }

      v19 = v47;
      v20 = 0;
      v21 = 0;
      goto LABEL_29;
    }

    v37 = *(v0 + 1056);
    v38 = *(v37 + *(v36 + 48));
    sub_100025738(v37, *(v0 + 1032), type metadata accessor for CRLBoardIdentifier);
    if (v38 <= 1)
    {
      v10 = *(v0 + 1112);
      v11 = *(v0 + 1096);
      v12 = *(v0 + 1040);
      v13 = *(v0 + 1032);
      v14 = *(v0 + 1024);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_10146C6B0;
      v16 = UUID.uuidString.getter();
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = v10;
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
      v18 = static os_log_type_t.default.getter();
      sub_100005404(v11, &_mh_execute_header, v18, "Local deletion for: %{public}@", 30, 2, v15);
      swift_setDeallocating();
      sub_100005070(v15 + 32);
      sub_10005006C(v13, v14, type metadata accessor for CRLBoardIdentifier);
      sub_100031F10(v12, v14);
      sub_10003D87C(v12, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      if (v38 != 4)
      {
        v48 = *(v0 + 1040);
        v49 = *(v0 + 1024);
        sub_10005006C(*(v0 + 1032), v49, type metadata accessor for CRLBoardIdentifier);
        sub_100031F10(v48, v49);
        sub_10003D87C(v48, type metadata accessor for CRLBoardIdentifier);
        v50 = static MainActor.shared.getter();
        if (v38 == 2)
        {
          *(v0 + 1208) = v50;
          v51 = dispatch thunk of Actor.unownedExecutor.getter();
          v21 = v52;
          *(v0 + 1216) = v51;
          *(v0 + 1224) = v52;
          v53 = sub_1010B7F78;
        }

        else
        {
          *(v0 + 1304) = v50;
          v51 = dispatch thunk of Actor.unownedExecutor.getter();
          v21 = v59;
          *(v0 + 1312) = v51;
          *(v0 + 1320) = v59;
          v53 = sub_1010B96B8;
        }

        v19 = v53;
        v20 = v51;
LABEL_29:

        return _swift_task_switch(v19, v20, v21);
      }

      LOBYTE(v61) = 2;
      sub_10098EE94("Do not call method", 18, 2, &_mh_execute_header, "deleteBoards(boardIdentifiers:)", 31, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardLibrary.swift", 87, v61, 1505);
    }
  }

  v25 = ((1 << *(v0 + 1504)) + 63) >> 6;
  if (v25 <= (v22 + 1))
  {
    v26 = v22 + 1;
  }

  else
  {
    v26 = ((1 << *(v0 + 1504)) + 63) >> 6;
  }

  v27 = v26 - 1;
  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      v39 = *(v0 + 1048);
      v40 = sub_1005B981C(&unk_101A23C30);
      (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
      v31 = 0;
      goto LABEL_14;
    }

    v24 = *(v0 + 1168);
    v23 = *(v24 + 8 * v28 + 64);
    ++v22;
    if (v23)
    {
      v22 = v28;
      goto LABEL_13;
    }
  }

  __break(1u);
  return _swift_task_switch(v19, v20, v21);
}