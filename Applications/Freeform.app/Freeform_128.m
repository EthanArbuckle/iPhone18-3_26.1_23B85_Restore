uint64_t sub_100F81FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_100F8201C()
{
  sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.merge(delta:)();
}

uint64_t sub_100F82098(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100F8211C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100F821A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_100F82234(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_100F822B0()
{
  sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_100F8231C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_100F82398()
{
  sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.merge(_:)();
}

uint64_t sub_100F8241C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.merge(_:)(a1, a2, v4);
}

uint64_t sub_100F826A0(uint64_t a1)
{
  v2 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.minEncodingVersion.getter(a1, v2);
}

Swift::Int sub_100F82740()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014BAAA0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100F827C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014BAAA0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100F8282C()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65737341656C6966;
  }
}

uint64_t sub_100F8289C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F85B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F828EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F854FC();
  v5 = sub_100F85554();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100F82944(uint64_t a1)
{
  v2 = sub_100F85554();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F82980(uint64_t a1)
{
  v2 = sub_100F85554();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F829BC(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A24700);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100F85554();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for CRLAssetData();
  sub_100F85328(&qword_1019F5F38, type metadata accessor for CRLAssetData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
    v13 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[1] = *(v3 + *(v9 + 24));
    v12 = 2;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100F82BE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v23 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v23);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_1005B981C(&qword_101A246F8);
  v21 = *(v9 - 8);
  v22 = v9;
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v24 = a1;
  sub_100020E58(a1, v15);
  sub_100F85554();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v24);
  }

  v16 = v14;
  v28 = 0;
  sub_100F85328(&qword_1019F5F28, type metadata accessor for CRLAssetData);
  v17 = v22;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1006008F0(v8, v16);
  v27 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1006008F0(v5, v16 + *(v12 + 20));
  sub_1005B981C(&unk_101A0D960);
  v26 = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = *(v12 + 24);
  (*(v21 + 8))(v11, v17);
  *(v16 + v18) = v25;
  sub_100F85AD0(v16, v20, type metadata accessor for CRLFileItemAtomicDataStruct);
  sub_100005070(v24);
  return sub_100F85B38(v16, type metadata accessor for CRLFileItemAtomicDataStruct);
}

uint64_t sub_100F82FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for CRLAssetData();
  v7 = *(v6 + 20);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100B3216C(*(a1 + *(v6 + 24)), *(a2 + *(v6 + 24))) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a3 + 20);
  v13 = a1 + v12;
  v14 = a2 + v12;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v6 + 20);
  v16 = *(v13 + v15);
  v17 = *(v13 + v15 + 8);
  v18 = (v14 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_100B3216C(*(v13 + *(v6 + 24)), *(v14 + *(v6 + 24))) & 1) == 0)
  {
    return 0;
  }

  v20 = *(a3 + 24);
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);

  return sub_100B3216C(v21, v22);
}

uint64_t sub_100F8312C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F85328(&qword_101A24708, type metadata accessor for CRLFileItemAtomicDataStruct);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100F831B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F85328(&qword_101A24708, type metadata accessor for CRLFileItemAtomicDataStruct);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100F83234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100F85328(&qword_101A14FE0, type metadata accessor for CRLFileItemAtomicDataStruct);
  v7 = sub_100F85328(&qword_101A24710, type metadata accessor for CRLFileItemAtomicDataStruct);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100F83300(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F85328(&qword_101A24708, type metadata accessor for CRLFileItemAtomicDataStruct);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100F83474(uint64_t a1)
{
  v2 = sub_100F85328(&qword_101A246A8, type metadata accessor for CRLFileItemAtomicDataStruct);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

void sub_100F83508(_UNKNOWN ****a1)
{
  v2 = type metadata accessor for CRLFileItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MergeResult();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == &off_101A241E8)
  {
    v9 = qword_101AD89B8;
    swift_beginAccess();
    sub_100F85AD0(a1 + v9, v4, type metadata accessor for CRLFileItemCRDTData);
    swift_beginAccess();
    sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

    CRStruct_1.merge(_:)();
    swift_endAccess();

    sub_100F85B38(v4, type metadata accessor for CRLFileItemCRDTData);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100F83738(uint64_t a1)
{
  v54 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v54);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v51 - v6;
  v7 = type metadata accessor for CRLFileItemCRDTData(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v51 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  if (*a1 == &off_101A241E8)
  {
    v53 = v9;
    v51 = v4;
    v25 = *(*v1 + 736);
    swift_beginAccess();
    v52 = v1;
    sub_10000BE14(v1 + v25, v24, &unk_101A226A0);
    v26 = *(*a1 + 736);
    swift_beginAccess();
    sub_10000BE14(a1 + v26, v21, &unk_101A226A0);

    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    CRRegister.wrappedValue.getter();
    v27 = static UUID.== infix(_:_:)();
    v28 = *(v13 + 8);
    v28(v15, v12);
    v28(v18, v12);
    if (v27)
    {
      v29 = sub_101279020();
      sub_10000CAAC(v21, &unk_101A226A0);
      sub_10000CAAC(v24, &unk_101A226A0);
      if (v29)
      {
        v30 = qword_101AD89B8;
        v31 = v52;
        swift_beginAccess();
        v32 = v55;
        sub_100F85AD0(v31 + v30, v55, type metadata accessor for CRLFileItemCRDTData);
        v33 = qword_101AD89B8;
        swift_beginAccess();
        sub_100F85AD0(a1 + v33, v53, type metadata accessor for CRLFileItemCRDTData);
        sub_1005B981C(&qword_101A0B528);
        v34 = v56;
        CRRegister.wrappedValue.getter();
        v35 = v51;
        CRRegister.wrappedValue.getter();
        if (static UUID.== infix(_:_:)() & 1) != 0 && ((v36 = type metadata accessor for CRLAssetData(), v37 = *(v36 + 20), v38 = *(v34 + v37), v39 = *(v34 + v37 + 8), v40 = (v35 + v37), v38 == *v40) && v39 == v40[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100B3216C(*(v34 + *(v36 + 24)), *(v35 + *(v36 + 24))) & 1) != 0 && (v41 = v54, v42 = *(v54 + 20), v43 = v34 + v42, v44 = v35 + v42, (static UUID.== infix(_:_:)()) && ((v45 = *(v36 + 20), v46 = *(v43 + v45), v47 = *(v43 + v45 + 8), v48 = (v44 + v45), v46 == *v48) && v47 == v48[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100B3216C(*(v43 + *(v36 + 24)), *(v44 + *(v36 + 24))))
        {
          v49 = sub_100B3216C(*(v34 + *(v41 + 24)), *(v35 + *(v41 + 24)));
        }

        else
        {
          v49 = 0;
        }

        sub_100F85B38(v53, type metadata accessor for CRLFileItemCRDTData);
        sub_100F85B38(v32, type metadata accessor for CRLFileItemCRDTData);
        sub_100F85B38(v35, type metadata accessor for CRLFileItemAtomicDataStruct);
        sub_100F85B38(v34, type metadata accessor for CRLFileItemAtomicDataStruct);
      }

      else
      {

        v49 = 0;
      }
    }

    else
    {

      sub_10000CAAC(v21, &unk_101A226A0);
      sub_10000CAAC(v24, &unk_101A226A0);
      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  return v49 & 1;
}

uint64_t sub_100F83D34(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CRLFileItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = qword_101AD89B8;
  swift_beginAccess();
  if (a2)
  {
    sub_100F85AD0(v2 + v10, v6, type metadata accessor for CRLFileItemCRDTData);
    sub_100F85328(&qword_101A15000, type metadata accessor for CRLFileItemCRDTData);
    CRType.copy(renamingReferences:)();
    sub_100F85B38(v6, type metadata accessor for CRLFileItemCRDTData);
  }

  else
  {
    sub_100F85AD0(v2 + v10, v9, type metadata accessor for CRLFileItemCRDTData);
  }

  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v11, qword_101AD6348);
  sub_100F85328(&qword_101A12900, type metadata accessor for CRLFileItemCRDTData);
  v12 = CRDT.serializedData(_:version:)();
  sub_100F85B38(v9, type metadata accessor for CRLFileItemCRDTData);
  return v12;
}

uint64_t sub_100F83F84(_UNKNOWN ****a1)
{
  v3 = type metadata accessor for CRLFileItemCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  if (*a1 == &off_101A241E8)
  {
    v9 = qword_101AD89B8;
    swift_beginAccess();
    sub_100F85AD0(v1 + v9, v8, type metadata accessor for CRLFileItemCRDTData);
    v10 = qword_101AD89B8;
    swift_beginAccess();
    sub_100F85AD0(a1 + v10, v5, type metadata accessor for CRLFileItemCRDTData);
    sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);
    v11 = CRStruct_1.hasDelta(from:)();
    sub_100F85B38(v5, type metadata accessor for CRLFileItemCRDTData);
    sub_100F85B38(v8, type metadata accessor for CRLFileItemCRDTData);
    return v11 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100F8419C(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = type metadata accessor for CRLFileItemCRDTData(0);
  __chkstk_darwin(v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_1005B981C(&qword_101A24718);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = qword_101AD89B8;
    swift_beginAccess();
    sub_100F85AD0(v2 + v15, v7, type metadata accessor for CRLFileItemCRDTData);
    v16 = qword_101AD89B8;
    swift_beginAccess();
    sub_100F85AD0(v14 + v16, v4, type metadata accessor for CRLFileItemCRDTData);
    sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

    CRStruct_1.delta(_:from:)();
    sub_100F85B38(v4, type metadata accessor for CRLFileItemCRDTData);
    sub_100F85B38(v7, type metadata accessor for CRLFileItemCRDTData);
    v17 = v26;
    sub_10000BE14(v12, v26, &qword_101A24718);
    v18 = sub_1005B981C(&qword_101A246D0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_10000CAAC(v12, &qword_101A24718);

      sub_10000CAAC(v17, &qword_101A24718);
      return 0;
    }

    else
    {
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v21, qword_101AD6348);
      sub_10001A2F8(&qword_101A246C8, &qword_101A246D0);
      v22 = v29;
      v23 = PartialCRDT.deltaSerializedData(_:version:)();
      if (v22)
      {
        sub_10000CAAC(v12, &qword_101A24718);

        return (*(v19 + 8))(v17, v18);
      }

      else
      {
        v24 = v23;
        sub_10000CAAC(v12, &qword_101A24718);

        (*(v19 + 8))(v17, v18);
        return v24;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100F84650(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v33 = *v3;
  v6 = type metadata accessor for UUID();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &unk_1014BA7F0;
  v10 = sub_1005B981C(&qword_101A246D0);
  v34 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  sub_100024E98(a1, a2);
  sub_10001A2F8(&qword_101A246C8, &qword_101A246D0);
  v13 = v35;
  PartialCRDT.init(serializedData:)();
  if (!v13)
  {
    v31 = v8;
    v35 = 0;
    swift_beginAccess();
    type metadata accessor for CRLFileItemCRDTData(0);
    sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);
    LOBYTE(v9) = CRStruct_1.merge(delta:)();
    swift_endAccess();
    if ((v9 & 1) == 0)
    {
      v14 = v3;
      v30 = v12;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v29 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v16 = *(*v3 + 744);
      swift_beginAccess();
      v17 = v32;
      v18 = v3 + v16;
      v19 = v31;
      (*(v32 + 16))(v31, v18, v6);
      v20 = UUID.uuidString.getter();
      v22 = v21;
      (*(v17 + 8))(v19, v6);
      *(inited + 56) = &type metadata for String;
      v23 = sub_1000053B0();
      *(inited + 64) = v23;
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v36 = v14;

      v24 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v23;
      *(inited + 72) = v24;
      *(inited + 80) = v25;
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v29, &_mh_execute_header, v26, "Delta failed to apply for %{public}@%{public}@", 46, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v12 = v30;
    }

    (*(v34 + 8))(v12, v10);
  }

  return v9 & 1;
}

unint64_t sub_100F84A78()
{
  v1 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v1 - 8);
  v35 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v34 = type metadata accessor for CRLFileItemAtomicDataStruct(0) - 8;
  __chkstk_darwin(v34);
  v33 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  sub_1005B981C(&qword_1019F5F50);
  v10 = sub_1005B981C(&qword_101A22780);
  v36 = v10;
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  v32 = v13;
  *(v13 + 16) = xmmword_10146BDE0;
  v14 = (v13 + v12);
  v15 = *(v10 + 48);
  *v14 = 1701603686;
  *(v14 + 1) = 0xE400000000000000;
  v28 = v0;
  swift_beginAccess();
  v31 = sub_1005B981C(&qword_101A0B528);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  v30 = type metadata accessor for CRLAssetData;
  sub_100F85AD0(v9, v5, type metadata accessor for CRLAssetData);
  v29 = type metadata accessor for CRLFileItemAtomicDataStruct;
  sub_100F85B38(v9, type metadata accessor for CRLFileItemAtomicDataStruct);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v27 = *(v17 + 16);
  v18 = v15;
  v27(&v14[v15], v5, v16);
  sub_100F85B38(v5, type metadata accessor for CRLAssetData);
  v19 = *(v17 + 56);
  v19(&v14[v18], 0, 1, v16);
  v20 = &v14[v11];
  v21 = *(v36 + 48);
  strcpy(v20, "linkMetadata");
  v20[13] = 0;
  *(v20 + 7) = -5120;
  swift_beginAccess();
  v22 = v33;
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  v23 = v35;
  sub_100F85AD0(v22 + *(v34 + 28), v35, v30);
  sub_100F85B38(v22, v29);
  v27(&v20[v21], v23, v16);
  sub_100F85B38(v23, type metadata accessor for CRLAssetData);
  v19(&v20[v21], 0, 1, v16);
  v24 = sub_100BD5554(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v24;
}

uint64_t sub_100F84EB4()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A226A0);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100F85B38(v0 + qword_101AD89B8, type metadata accessor for CRLFileItemCRDTData);

  return swift_deallocClassInstance();
}

uint64_t sub_100F84FCC()
{
  result = type metadata accessor for CRLFileItemCRDTData(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100F850A4()
{
  sub_100F85154();
  if (v0 <= 0x3F)
  {
    sub_1005FEEE8(319, &qword_1019F48F8, &type metadata accessor for AnyCRDT);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100F85154()
{
  if (!qword_101A24588)
  {
    type metadata accessor for CRLFileItemAtomicDataStruct(255);
    sub_100F85328(&qword_101A14FE0, type metadata accessor for CRLFileItemAtomicDataStruct);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_101A24588);
    }
  }
}

void sub_100F85230()
{
  type metadata accessor for CRLAssetData();
  if (v0 <= 0x3F)
  {
    sub_1005FEEE8(319, &qword_1019F5D58, &type metadata accessor for AnyCRValue);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100F85328(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100F8544C()
{
  result = qword_101A24668;
  if (!qword_101A24668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24668);
  }

  return result;
}

unint64_t sub_100F854A4()
{
  result = qword_101A24670;
  if (!qword_101A24670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24670);
  }

  return result;
}

unint64_t sub_100F854FC()
{
  result = qword_101A24678;
  if (!qword_101A24678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24678);
  }

  return result;
}

unint64_t sub_100F85554()
{
  result = qword_101A24680;
  if (!qword_101A24680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24680);
  }

  return result;
}

unint64_t sub_100F855AC()
{
  result = qword_101A24688;
  if (!qword_101A24688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24688);
  }

  return result;
}

unint64_t sub_100F85604()
{
  result = qword_101A24690;
  if (!qword_101A24690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24690);
  }

  return result;
}

uint64_t sub_100F859AC(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CRLAssetData();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100B3216C(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  v11 = *(v10 + 20);
  v12 = a1 + v11;
  v13 = a2 + v11;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v4 + 20);
  v15 = *(v12 + v14);
  v16 = *(v12 + v14 + 8);
  v17 = (v13 + v14);
  v18 = v15 == *v17 && v16 == v17[1];
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_100B3216C(*(v12 + *(v4 + 24)), *(v13 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v19 = *(v10 + 24);
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);

  return sub_100B3216C(v20, v21);
}

uint64_t sub_100F85AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F85B38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100F85B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65737341656C6966 && a2 == 0xED00006174614474;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010159C6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_100F85CE0()
{
  result = qword_101A24720;
  if (!qword_101A24720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24720);
  }

  return result;
}

uint64_t sub_100F85D6C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v9[0] = sub_10067F244(a1.n128_u32[0]);
  v9[1] = sub_10067F244(a1.n128_u32[1]);
  v9[2] = sub_10067F244(a1.n128_u32[2]);
  v9[3] = sub_10067F244(a1.n128_u32[3]);
  v9[4] = sub_10067F244(a2.n128_u32[0]);
  v9[5] = sub_10067F244(a2.n128_u32[1]);
  v9[6] = sub_10067F244(a2.n128_u32[2]);
  v9[7] = sub_10067F244(a2.n128_u32[3]);
  v9[8] = sub_10067F244(a3.n128_u32[0]);
  v9[9] = sub_10067F244(a3.n128_u32[1]);
  v9[10] = sub_10067F244(a3.n128_u32[2]);
  v9[11] = sub_10067F244(a3.n128_u32[3]);
  v9[12] = sub_10067F244(a4.n128_u32[0]);
  v9[13] = sub_10067F244(a4.n128_u32[1]);
  v9[14] = sub_10067F244(a4.n128_u32[2]);
  v9[15] = sub_10067F244(a4.n128_u32[3]);
  return sub_100AE5050(v9, &v10);
}

__n128 sub_100F85EA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100F86828(*a1, *(a1 + 8), v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100F85EF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100F85D6C(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100F85F24()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  Hasher.init(_seed:)();
  CRL3DRotation.hash(into:)(v2);
  CRL3DRotation.hash(into:)(v3);
  CRL3DRotation.hash(into:)(v4);
  CRL3DRotation.hash(into:)(v5);
  return Hasher._finalize()();
}

void sub_100F85F9C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  CRL3DRotation.hash(into:)(*v0);
  CRL3DRotation.hash(into:)(v1);
  CRL3DRotation.hash(into:)(v2);

  CRL3DRotation.hash(into:)(v3);
}

Swift::Int sub_100F86008()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  Hasher.init(_seed:)();
  CRL3DRotation.hash(into:)(v2);
  CRL3DRotation.hash(into:)(v3);
  CRL3DRotation.hash(into:)(v4);
  CRL3DRotation.hash(into:)(v5);
  return Hasher._finalize()();
}

__n128 sub_100F8607C@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_100F86090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100F86C20();
  v7 = sub_100F8669C();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100F86100()
{
  sub_100F86C20();
  sub_100F86C74();
  return CRValue<>.init(from:)();
}

uint64_t sub_100F8616C()
{
  sub_100F86C20();
  sub_100F86C74();
  return CRValue<>.encode(to:)();
}

uint64_t sub_100F861C8(uint64_t a1)
{
  v2 = sub_100F86C20();
  v3 = sub_100F86C74();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Data);
}

uint64_t sub_100F86280(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F86C74();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Data);
}

uint64_t sub_100F862E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F86CC8(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100F86310@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform25CRLiCloudConnectionStatusO8rawValueACSgSi_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100F86338(uint64_t a1)
{
  v2 = sub_100F8708C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F86374(uint64_t a1)
{
  v2 = sub_100F8708C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F863B0(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v7 = sub_1005B981C(&qword_101A24760);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100020E58(a1, a1[3]);
  sub_100F8708C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v15;
  v17 = 0;
  sub_1005B981C(&qword_101A173B8);
  sub_100C793FC(&qword_101A173C0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v16 = v14;
  v17 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v16 = v13;
  v17 = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v16 = v12;
  v17 = 3;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100F865F0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_100F86E0C(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

unint64_t sub_100F86644()
{
  result = qword_101A24728;
  if (!qword_101A24728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24728);
  }

  return result;
}

unint64_t sub_100F8669C()
{
  result = qword_101A24730;
  if (!qword_101A24730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24730);
  }

  return result;
}

unint64_t sub_100F866F4()
{
  result = qword_101A24738;
  if (!qword_101A24738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24738);
  }

  return result;
}

char *sub_100F86748(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

char *sub_100F867B8(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 2 * v5);
    v4 += 2 * v5;
  }

  return v4;
}

uint64_t sub_100F86828@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (v8)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v9 != 64)
    {
      goto LABEL_19;
    }

LABEL_8:
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        __src = a1;
        v12 = a1;
        v55 = a2;
        v56 = BYTE2(a2);
        v57 = BYTE3(a2);
        v58 = BYTE4(a2);
        v37 = (a2 >> 50) & 0x3F;
        v59 = BYTE5(a2);
        if (v37)
        {
          v33 = sub_100B39FD8((a2 >> 50) & 0x3F, 0);
          v35 = 4 * v37;
          v34 = v33 + 4;
          p_src = &__src;
          goto LABEL_34;
        }

LABEL_40:
        v33 = _swiftEmptyArrayStorage;
        v38 = _swiftEmptyArrayStorage[2];
        if (!v38)
        {
          goto LABEL_35;
        }

        goto LABEL_41;
      }

      v10 = a1;
      v11 = (a1 >> 32) - a1;
      if (a1 >> 32 < a1)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v12 = a1;
      v13 = __DataStorage._bytes.getter();
      if (v13)
      {
        v14 = v13;
        v15 = __DataStorage._offset.getter();
        if (__OFSUB__(v10, v15))
        {
          goto LABEL_60;
        }

        v16 = (v10 - v15 + v14);
        v17 = __DataStorage._length.getter();
        if (!v16)
        {
          goto LABEL_40;
        }

        if (v17 >= v11)
        {
          v18 = v11;
        }

        else
        {
          v18 = v17;
        }

        goto LABEL_27;
      }

LABEL_39:
      __DataStorage._length.getter();
      goto LABEL_40;
    }

    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    v12 = a1;
    v27 = __DataStorage._bytes.getter();
    if (v27)
    {
      v28 = v27;
      v29 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v29))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
      }

      v16 = (v25 - v29 + v28);
      v30 = v26 - v25;
      if (!__OFSUB__(v26, v25))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
      v30 = v26 - v25;
      if (!__OFSUB__(v26, v25))
      {
LABEL_23:
        v31 = __DataStorage._length.getter();
        if (!v16)
        {
          goto LABEL_40;
        }

        if (v31 >= v30)
        {
          v18 = v30;
        }

        else
        {
          v18 = v31;
        }

LABEL_27:
        if ((v18 + 3) >= 7)
        {
          if (v18 >= 0)
          {
            v32 = v18;
          }

          else
          {
            v32 = v18 + 3;
          }

          v33 = sub_100B39FD8(v32 >> 2, 0);
          v34 = v33 + 4;
          v35 = v32 & 0xFFFFFFFFFFFFFFFCLL;
          p_src = v16;
LABEL_34:
          memcpy(v34, p_src, v35);
          v38 = v33[2];
          if (!v38)
          {
LABEL_35:

            v39 = _swiftEmptyArrayStorage;
            goto LABEL_46;
          }

LABEL_41:
          __src = _swiftEmptyArrayStorage;
          sub_100776624(0, v38, 0);
          v40 = 32;
          v39 = __src;
          do
          {
            v41 = sub_10067F244(*(v33 + v40));
            __src = v39;
            v43 = v39[2];
            v42 = v39[3];
            if (v43 >= v42 >> 1)
            {
              v44 = v41;
              sub_100776624((v42 > 1), v43 + 1, 1);
              v41 = v44;
              v39 = __src;
            }

            v39[2] = v43 + 1;
            *(v39 + v43 + 8) = v41;
            v40 += 4;
            --v38;
          }

          while (v38);

LABEL_46:
          v45 = v39[2];
          if (v45 < 4)
          {
            __break(1u);
          }

          else
          {
            sub_100CF01EC((v39 + 4), 0, 9uLL);
            if (v45 >= 8)
            {
              v53 = v46;
              sub_100CF01EC((v39 + 4), 4, 0x11uLL);
              if (v45 >= 0xC)
              {
                v52 = v47;
                sub_100CF01EC((v39 + 4), 8, 0x19uLL);
                if (v45 >= 0x10)
                {
                  v51 = v48;
                  sub_100CF01EC((v39 + 4), 12, 0x21uLL);
                  v50 = v49;

                  result = sub_10002640C(v12, a2);
                  v24 = v50;
                  v23 = v51;
                  v20 = 0;
                  v22 = v52;
                  v21 = v53;
                  goto LABEL_51;
                }

                goto LABEL_55;
              }

LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }
          }

          __break(1u);
          goto LABEL_54;
        }

        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  if (!v5)
  {
    if (BYTE6(a2) != 64)
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (HIDWORD(a1) - a1 == 64)
  {
    goto LABEL_8;
  }

LABEL_19:
  result = sub_10002640C(a1, a2);
  v20 = 1;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
LABEL_51:
  *a3 = v21;
  *(a3 + 16) = v22;
  *(a3 + 32) = v23;
  *(a3 + 48) = v24;
  *(a3 + 64) = v20;
  return result;
}

unint64_t sub_100F86C20()
{
  result = qword_101A24740;
  if (!qword_101A24740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24740);
  }

  return result;
}

unint64_t sub_100F86C74()
{
  result = qword_101A24748;
  if (!qword_101A24748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24748);
  }

  return result;
}

uint64_t sub_100F86CC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12387 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12643 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12899 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 13155 && a2 == 0xE200000000000000)
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

uint64_t sub_100F86E0C(void *a1)
{
  v3 = sub_1005B981C(&qword_101A24750);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  sub_100020E58(a1, a1[3]);
  sub_100F8708C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1005B981C(&qword_101A173B8);
    v9 = 0;
    sub_100C793FC(&qword_101A17AD0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8[3] = v10;
    v9 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8[2] = v10;
    v9 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8[1] = v10;
    v9 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v8[0] = v10;
  }

  return sub_100005070(a1);
}

unint64_t sub_100F8708C()
{
  result = qword_101A24758;
  if (!qword_101A24758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24758);
  }

  return result;
}

unint64_t sub_100F87120()
{
  result = qword_101A24768;
  if (!qword_101A24768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24768);
  }

  return result;
}

unint64_t sub_100F87178()
{
  result = qword_101A24770;
  if (!qword_101A24770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24770);
  }

  return result;
}

unint64_t sub_100F871D0()
{
  result = qword_101A24778;
  if (!qword_101A24778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24778);
  }

  return result;
}

uint64_t sub_100F87224(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) == 0)
  {
    return 0x6E776F6E6B6E55;
  }

  if (!(a2 | a1) && !a3)
  {
    return 0x70756F7247;
  }

  if (a1 == 1 && !a2 && !a3)
  {
    return 0x6570616853;
  }

  if (a1 == 2 && !a2 && !a3)
  {
    return 0x697463656E6E6F43;
  }

  if (a1 == 3 && !a2 && !a3)
  {
    return 0x6567616D49;
  }

  if (a1 == 4 && !a2 && !a3)
  {
    return 0x41724F6569766F4DLL;
  }

  if (a1 == 5 && !a2 && !a3)
  {
    return 1701603654;
  }

  if (a1 == 6 && !a2 && !a3)
  {
    return 0x65746973626557;
  }

  if (a1 == 7 && !a2 && !a3)
  {
    return 0x7463656A624F4433;
  }

  if (a1 == 8 && !a2 && !a3)
  {
    return 0x676E6977617244;
  }

  if (a1 == 9 && !a2 && !a3)
  {
    return 0x6168536E77617244;
  }

  if (a1 == 10 && !a2 && !a3)
  {
    return 0x6F4E796B63697453;
  }

  v5 = a1 == 11 && a2 == 0;
  if (v5 && a3 == 0)
  {
    return 0x656C626154;
  }

  else
  {
    return 0x65636166727553;
  }
}

uint64_t sub_100F87498(void *a1)
{
  v2 = type metadata accessor for CRLMovieItemAssetData(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*((swift_isaMask & *a1) + 0xC8))(v3);
  v8 = v7;
  v10 = v9;
  v11._countAndFlagsBits = sub_100F87224(v6, v7, v9 & 0x1FF);
  v29 = 0x657079546D657469;
  v30 = 0xE800000000000000;
  String.append(_:)(v11);

  result = v29;
  if ((v10 & 0x100) != 0 && (v6 | v8 || v10 != 0))
  {
    v14 = v6 == 1 && v8 == 0;
    if (!v14 || v10 != 0)
    {
      v16 = v6 == 2 && v8 == 0;
      if (!v16 || v10 != 0)
      {
        v18 = v6 == 3 && v8 == 0;
        if (!v18 || v10 != 0)
        {
          v20 = v6 == 4 && v8 == 0;
          if (v20 && v10 == 0)
          {
            v22 = v29;
            type metadata accessor for CRLMovieItem();
            v23 = swift_dynamicCastClass();
            if (v23)
            {
              v24 = v23;
              v25 = a1;

              if (**(v24 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
              {
                swift_beginAccess();

                sub_1005B981C(&qword_101A28680);
                CRRegister.wrappedValue.getter();
                v26 = v5[*(v2 + 36)];
                swift_endAccess();

                sub_1005CAA84(v5);
                if (v26)
                {
                  v27 = 0x6F69647541;
                }

                else
                {
                  v27 = 0x6569766F4DLL;
                }

                v29 = 0x657079546D657469;
                v30 = 0xE800000000000000;
                v28 = 0xE500000000000000;
                String.append(_:)(*&v27);

                return v29;
              }

              else
              {
                __break(1u);
              }
            }

            else
            {
              return v22;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100F877AC()
{
  type metadata accessor for CRLFileReadWriteUserOptions();
  v0 = swift_allocObject();
  result = sub_100F87B88();
  qword_101AD89C0 = v0;
  return result;
}

void sub_100F87800()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v0 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = String._bridgeToObjectiveC()();
  [v0 setBool:v2 forKey:v1];
}

void sub_100F87938()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v0 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = String._bridgeToObjectiveC()();
  [v0 setBool:v2 forKey:v1];
}

uint64_t sub_100F87A5C()
{
  v1 = OBJC_IVAR____TtC8Freeform27CRLFileReadWriteUserOptions__preserveObjectUUIDs;
  v2 = sub_1005B981C(&unk_101A08DC0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Freeform27CRLFileReadWriteUserOptions__preserveCRDTMetadata, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLFileReadWriteUserOptions()
{
  result = qword_101A24860;
  if (!qword_101A24860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F87B88()
{
  v1 = sub_1005B981C(&unk_101A08DC0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-v3];
  v5 = OBJC_IVAR____TtC8Freeform27CRLFileReadWriteUserOptions__preserveObjectUUIDs;
  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 BOOLForKey:v8];

  v16[15] = v9;
  Published.init(initialValue:)();
  v10 = *(v2 + 32);
  v10(v0 + v5, v4, v1);
  v11 = OBJC_IVAR____TtC8Freeform27CRLFileReadWriteUserOptions__preserveCRDTMetadata;
  v12 = [v6 standardUserDefaults];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 BOOLForKey:v13];

  v16[14] = v14;
  Published.init(initialValue:)();
  v10(v0 + v11, v4, v1);
  return v0;
}

uint64_t sub_100F87D8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRLFileReadWriteUserOptions();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100F87E04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v2, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_100F8AFAC(*v12, a1);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10000CCD0(v12, v9, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10003E264(a1);
    v14 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    v15 = v9;
  }

  else
  {
    sub_10000CCD0(v12, v6, _s5BoardVMa);
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 16))(a1, v6, v17);
    v14 = _s5BoardVMa;
    v15 = v6;
  }

  return sub_10000CD38(v15, v14);
}

uint64_t sub_100F8801C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_1000094E4(v1, &v17 - v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1000094E4(v10, v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v14 = _s5BoardVMa;
    v15 = v7;
LABEL_8:
    sub_10000CD38(v15, v14);
    v13 = 1;
    goto LABEL_9;
  }

  sub_1000094E4(v10, v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v12 = sub_1005B981C(&qword_1019F3480);
  if (!(*(*(v12 - 8) + 48))(v4, 5, v12))
  {
    v14 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
    v15 = v4;
    goto LABEL_8;
  }

  sub_10000CD38(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_5:
  v13 = 0;
LABEL_9:
  sub_10000CD38(v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
  return v13;
}

uint64_t sub_100F88220()
{
  v1 = v0;
  v2 = _s5BoardVMa(0);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v1, v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10000CCD0(v10, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v12 = sub_10006A888();
      v13 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v14 = v7;
    }

    else
    {
      sub_10000CCD0(v10, v4, _s5BoardVMa);
      v12 = *&v4[*(v2 + 24)];

      v13 = _s5BoardVMa;
      v14 = v4;
    }

    sub_10000CD38(v14, v13);
  }

  else if (*v10)
  {
    return 0x737265646C6F46;
  }

  else
  {
    v16 = [objc_opt_self() mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v12;
}

void sub_100F884C8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v1, v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000CCD0(v7, v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10006E0EC();
    v8 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    v9 = v4;
LABEL_5:
    sub_10000CD38(v9, v8);
    return;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() colorNamed:v10];

  if (v11)
  {
    v8 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v9 = v7;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_100F88674@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardLibraryViewModel.LegacyItem(0);
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v2, v12, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_100F8AFAC(*v12, a1);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10000CCD0(v12, v9, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10003E264(a1);
    v14 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    v15 = v9;
  }

  else
  {
    sub_1005B981C(&unk_101A23BD0);

    sub_10000CCD0(v12, v6, type metadata accessor for CRLBoardIdentifier);
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 16))(a1, v6, v17);
    v14 = type metadata accessor for CRLBoardIdentifier;
    v15 = v6;
  }

  return sub_10000CD38(v15, v14);
}

uint64_t sub_100F888B8()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v0, v3, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10000CD38(v3, type metadata accessor for CRLBoardLibraryViewModel.Item);
      return 0x7265646C6F46;
    }

    else
    {
      v10 = [objc_opt_self() mainBundle];
      v11 = String._bridgeToObjectiveC()();
      v12 = String._bridgeToObjectiveC()();
      v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000CD38(v3, _s5BoardVMa);
    }
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v7 = String._bridgeToObjectiveC()();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v5;
}

uint64_t sub_100F88AF8(void *a1)
{
  v40 = a1;
  v44 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v44);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s5BoardVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v41 = v1;
  sub_100F87E04(v11);
  sub_100F8E720(&qword_1019F43C0, &type metadata accessor for UUID);
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v15 = v13;
    v38 = v7;
    v39 = 0;
    v16 = v40;
    v17 = v12;
    (*(v9 + 8))(v11, v8);

    sub_1005B981C(&qword_1019FB8A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v42 = 0xD000000000000017;
    v43 = 0x80000001015647C0;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v17;
    *(inited + 80) = v15;
    sub_100024E98(v17, v15);
    sub_100078EA4(inited);
    v19 = v15;
    swift_setDeallocating();
    sub_10000CAAC(inited + 32, &unk_1019FB8B0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 addUserInfoEntriesFromDictionary:isa];

    sub_1000094E4(v41, v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v21 = v38;
      sub_10000CCD0(v4, v38, _s5BoardVMa);
      if (qword_1019F19B0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for UTType();
      sub_1005EB3DC(v22, qword_101AD6CD0);
      v23 = objc_allocWithZone(CSSearchableItemAttributeSet);
      v24 = UTType._bridgeToObjectiveC()().super.isa;
      v25 = [v23 initWithContentType:v24];

      v42 = UUID.uuidString.getter();
      v43 = v26;

      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);

      v29 = v42;
      v28 = v43;
      v30 = (v21 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
      v31 = *v30;
      v32 = v30[1];
      v42 = v29;
      v43 = v28;

      v33._countAndFlagsBits = v31;
      v33._object = v32;
      String.append(_:)(v33);

      v34 = String._bridgeToObjectiveC()();

      [v25 setRelatedUniqueIdentifier:v34];

      [v16 setContentAttributeSet:v25];
      [v16 setEligibleForSearch:1];
      [v16 setEligibleForHandoff:1];
      [v16 setEligibleForPublicIndexing:0];

      sub_10002640C(v17, v19);
      v35 = _s5BoardVMa;
      v36 = v21;
    }

    else
    {
      sub_10002640C(v17, v15);
      v35 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v36 = v4;
    }

    return sub_10000CD38(v36, v35);
  }
}

uint64_t sub_100F8903C()
{
  v1 = _s5BoardVMa(0);
  __chkstk_darwin(v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  sub_1000094E4(v0, &v26 - v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_10000CCD0(v12, v3, _s5BoardVMa);
      v26 = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v26 = 0x203A6472616F42;
      v27 = 0xE700000000000000;
      String.append(_:)(*&v3[*(v1 + 24)]);
      v19._countAndFlagsBits = 0x69746E656469202CLL;
      v19._object = 0xEE00203A72656966;
      String.append(_:)(v19);
      v20._countAndFlagsBits = sub_10084B8C8();
      String.append(_:)(v20);

      v18 = v26;
      v21 = _s5BoardVMa;
      v22 = v3;
LABEL_11:
      sub_10000CD38(v22, v21);
      return v18;
    }

    sub_1000094E4(v0, v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10000CCD0(v10, v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v14 = sub_1005B981C(&qword_1019F3480);
      if (!(*(*(v14 - 8) + 48))(v6, 5, v14))
      {
        sub_10000CD38(v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v23 = 1684827974;
        goto LABEL_10;
      }

      v15 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v16 = v6;
    }

    else
    {
      v15 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v16 = v10;
    }

    sub_10000CD38(v16, v15);
    v23 = 1953261894;
LABEL_10:
    v26 = v23 | 0x203A726500000000;
    v27 = 0xE800000000000000;
    v24._countAndFlagsBits = sub_100F88220();
    String.append(_:)(v24);

    v18 = v26;
    v21 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v22 = v12;
    goto LABEL_11;
  }

  v26 = 0x3A7972617262694CLL;
  v27 = 0xE900000000000020;
  v17._countAndFlagsBits = sub_100F88220();
  String.append(_:)(v17);

  return v26;
}

uint64_t sub_100F89404()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v1);
  v3 = &v33[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000094E4(v0, v3, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10000CD38(v3, _s5BoardVMa);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v8;
  }

  else
  {
    sub_10000CD38(v3, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v10 = objc_opt_self();
    v11 = [v10 _atomicIncrementAssertCount];
    v34 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v34);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_1005CF000();
    *(inited + 96) = v20;
    v21 = sub_100F8E720(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 276;
    v23 = v34;
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "Unexpected case.", 16, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v10 handleFailureInFunction:v30 file:v31 lineNumber:276 isFatal:0 format:v32 args:v29];

    return 0;
  }
}

uint64_t sub_100F89924()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v1);
  v3 = &v33[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000094E4(v0, v3, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10000CD38(v3, _s5BoardVMa);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v8;
  }

  else
  {
    sub_10000CD38(v3, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v10 = objc_opt_self();
    v11 = [v10 _atomicIncrementAssertCount];
    v34 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v34);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_1005CF000();
    *(inited + 96) = v20;
    v21 = sub_100F8E720(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 286;
    v23 = v34;
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "Unexpected case.", 16, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v10 handleFailureInFunction:v30 file:v31 lineNumber:286 isFatal:0 format:v32 args:v29];

    return 0;
  }
}

uint64_t sub_100F89E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = _s5BoardVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(a1, v17, type metadata accessor for CRLBoardIdentifier);
  v18 = *(a2 + 16);
  if (!v18)
  {
LABEL_15:
    sub_10000CD38(v17, type metadata accessor for CRLBoardIdentifier);
    v29 = 1;
    v30 = v34;
    return (*(v9 + 56))(v30, v29, 1, v8);
  }

  v19 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v20 = *(v9 + 72);
  while (1)
  {
    sub_1000094E4(v19, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_1000094E4(v14, v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v21 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v22 = v11;
LABEL_4:
      sub_10000CD38(v22, v21);
      goto LABEL_5;
    }

    sub_10000CCD0(v11, v7, _s5BoardVMa);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      v21 = _s5BoardVMa;
      v22 = v7;
      goto LABEL_4;
    }

    v23 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
    v24 = *&v7[v23];
    v25 = *&v7[v23 + 8];
    v26 = &v17[v23];
    if (v24 == *v26 && v25 == *(v26 + 1))
    {
      break;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10000CD38(v7, _s5BoardVMa);
    if (v28)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_10000CD38(v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v19 += v20;
    if (!--v18)
    {
      goto LABEL_15;
    }
  }

  sub_10000CD38(v7, _s5BoardVMa);
LABEL_17:
  sub_10000CD38(v17, type metadata accessor for CRLBoardIdentifier);
  v31 = v34;
  sub_10000CCD0(v14, v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v30 = v31;
  v29 = 0;
  return (*(v9 + 56))(v30, v29, 1, v8);
}

void *sub_100F8A1C8(uint64_t a1)
{
  v2 = _s5BoardVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v28 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v16 = &v25 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v19 = *(v14 + 72);
  v20 = _swiftEmptyArrayStorage;
  v26 = v9;
  do
  {
    sub_1000094E4(v18, v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000CCD0(v16, v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10000CCD0(v13, v4, _s5BoardVMa);
      v21 = v27;
      sub_1000094E4(v4, v27, type metadata accessor for CRLBoardIdentifier);
      sub_10000CD38(v4, _s5BoardVMa);
      sub_10000CCD0(v21, v9, type metadata accessor for CRLBoardIdentifier);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100B36BE4(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_100B36BE4(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      v9 = v26;
      sub_10000CCD0(v26, v20 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      sub_10000CD38(v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    v18 += v19;
    --v17;
  }

  while (v17);
  return v20;
}

void *sub_100F8A554(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v42 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s5BoardVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v19 = *(a1 + 16);
  swift_beginAccess();
  if (v19)
  {
    v20 = 0;
    v40 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v50 = a1 + v40;
    v51 = *(v11 + 72);
    v44 = _swiftEmptyArrayStorage;
    v41 = a2;
    v47 = v15;
    v48 = v10;
    v45 = v19;
    v46 = v18;
    while (1)
    {
      sub_1000094E4(v50 + v51 * v20, v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1000094E4(v18, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_10000CD38(v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
        goto LABEL_4;
      }

      v49 = v20;
      sub_10000CCD0(v15, v9, _s5BoardVMa);
      v21 = *a2;
      if (!*(*a2 + 16))
      {
        goto LABEL_20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100F8E720(&qword_1019FB870, &type metadata accessor for UUID);

      dispatch thunk of Hashable.hash(into:)();
      v52 = type metadata accessor for CRLBoardIdentifierStorage(0);
      v22 = &v9[*(v52 + 20)];
      v23 = *v22;
      v24 = *(v22 + 1);
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v21 + 32);
      v27 = v25 & ~v26;
      if (((*(v21 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {

        v15 = v47;
        v19 = v45;
        v18 = v46;
LABEL_20:
        sub_10000CD38(v9, _s5BoardVMa);
        v20 = v49;
LABEL_4:
        sub_10000CD38(v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
        goto LABEL_5;
      }

      v28 = ~v26;
      v29 = *(v42 + 72);
      while (1)
      {
        sub_1000094E4(*(v21 + 48) + v29 * v27, v6, type metadata accessor for CRLBoardIdentifier);
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          sub_10000CD38(v6, type metadata accessor for CRLBoardIdentifier);
          goto LABEL_11;
        }

        v30 = &v6[*(v52 + 20)];
        if (*v30 == v23 && *(v30 + 1) == v24)
        {
          break;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10000CD38(v6, type metadata accessor for CRLBoardIdentifier);
        if (v32)
        {
          goto LABEL_23;
        }

LABEL_11:
        v27 = (v27 + 1) & v28;
        if (((*(v21 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {

          sub_10000CD38(v9, _s5BoardVMa);
          a2 = v41;
          v15 = v47;
          v19 = v45;
          v18 = v46;
          v20 = v49;
          goto LABEL_4;
        }
      }

      sub_10000CD38(v6, type metadata accessor for CRLBoardIdentifier);
LABEL_23:

      sub_10000CD38(v9, _s5BoardVMa);
      v18 = v46;
      sub_10000CCD0(v46, v43, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v33 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v33;
      v53 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776764(0, v33[2] + 1, 1);
        v35 = v53;
      }

      a2 = v41;
      v15 = v47;
      v19 = v45;
      v37 = v35[2];
      v36 = v35[3];
      if (v37 >= v36 >> 1)
      {
        sub_100776764(v36 > 1, v37 + 1, 1);
        v35 = v53;
      }

      v35[2] = v37 + 1;
      v44 = v35;
      sub_10000CCD0(v43, v35 + v40 + v37 * v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v20 = v49;
LABEL_5:
      if (++v20 == v19)
      {
        return v44;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100F8AB98(uint64_t a1)
{
  v2 = _s5BoardVMa(0);
  v29 = *(v2 - 8);
  v3 = __chkstk_darwin(v2 - 8);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v27 = &v26 - v6;
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v26 - v14;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v18 = *(v13 + 72);
  v19 = _swiftEmptyArrayStorage;
  do
  {
    sub_1000094E4(v17, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000CCD0(v15, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v20 = v28;
      sub_10000CCD0(v12, v28, _s5BoardVMa);
      v21 = v20;
      v22 = v27;
      sub_10000CCD0(v21, v27, _s5BoardVMa);
      sub_10000CCD0(v22, v8, _s5BoardVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100B36CD4(0, v19[2] + 1, 1, v19);
      }

      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        v19 = sub_100B36CD4(v23 > 1, v24 + 1, 1, v19);
      }

      v19[2] = v24 + 1;
      sub_10000CCD0(v8, v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, _s5BoardVMa);
    }

    else
    {
      sub_10000CD38(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    v17 += v18;
    --v16;
  }

  while (v16);
  return v19;
}

uint64_t sub_100F8AEC8(char a1)
{
  if (a1)
  {
    return 0x737265646C6F46;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

uint64_t sub_100F8AFAC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_1019F6990);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  if (a1)
  {
    UUID.init(uuidString:)();
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    result = (*(v11 + 48))(v7, 1, v10);
    if (result != 1)
    {
      return (*(v11 + 32))(a2, v7, v10);
    }

    __break(1u);
    goto LABEL_8;
  }

  UUID.init(uuidString:)();
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v9, 1, v13);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return (*(v14 + 32))(a2, v9, v13);
}

uint64_t sub_100F8B180(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1005B981C(&qword_101A24CB8);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1005B981C(&qword_101A24CC0);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1005B981C(&qword_101A24CC8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100020E58(a1, a1[3]);
  sub_100F9353C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_100F93590();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_100F935E4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_100F8B43C(uint64_t a1)
{
  v2 = sub_100F9353C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8B478(uint64_t a1)
{
  v2 = sub_100F9353C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8B4B4(uint64_t a1)
{
  v2 = sub_100F935E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8B4F0(uint64_t a1)
{
  v2 = sub_100F935E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8B52C(uint64_t a1)
{
  v2 = sub_100F93590();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8B568(uint64_t a1)
{
  v2 = sub_100F93590();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8B5B4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100F93080(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

BOOL sub_100F8B608()
{
  sub_100F88220();
  sub_100F88220();
  sub_100017CD8();
  v0 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

  return v0 == -1;
}

void sub_100F8B698()
{
  v1 = v0;
  v2 = _s5BoardVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v1, v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10000CCD0(v10, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100F8D588();
      v12 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v13 = v7;
    }

    else
    {
      sub_10000CCD0(v10, v4, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_100F8E720(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v12 = _s5BoardVMa;
      v13 = v4;
    }

    sub_10000CD38(v13, v12);
  }

  else
  {
    Hasher._combine(_:)(*v10);
  }
}

uint64_t sub_100F8B8DC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v1, v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10000CD38(v10, _s5BoardVMa);
    return 0xD000000000000013;
  }

  sub_10000CCD0(v10, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_1000094E4(v7, v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v12 = sub_1005B981C(&qword_1019F3480);
  v13 = (*(*(v12 - 8) + 48))(v5, 5, v12);
  if (v13 > 2)
  {
    if (v13 == 4)
    {
      sub_10000CD38(v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      return 0xD000000000000014;
    }
  }

  else
  {
    if (!v13)
    {
      sub_10000CD38(v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_10000CD38(v5, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      return 0x7265646C6F66;
    }

    if (v13 == 1)
    {
      sub_10000CD38(v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      return 0xD000000000000022;
    }
  }

  sub_10000CD38(v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  return 0xD000000000000011;
}

uint64_t sub_100F8BC00(void *a1)
{
  v2 = sub_1005B981C(&qword_101A24D20);
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v29 - v3;
  v34 = _s5BoardVMa(0);
  __chkstk_darwin(v34);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A24D28);
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = &v29 - v6;
  v30 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A24D30);
  v29 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_101A24D38);
  v40 = *(v15 - 8);
  v41 = v15;
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  sub_100020E58(a1, a1[3]);
  sub_100F93638();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000094E4(v39, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10000CCD0(v14, v8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v44 = 1;
      sub_100F936E0();
      v19 = v31;
      v20 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100F8E720(&qword_1019FAC30, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v21 = v33;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v32 + 8))(v19, v21);
      v22 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v23 = v8;
    }

    else
    {
      v25 = v35;
      sub_10000CCD0(v14, v35, _s5BoardVMa);
      v45 = 2;
      sub_100F9368C();
      v26 = v36;
      v20 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100F8E720(&qword_101A24D40, _s5BoardVMa);
      v27 = v38;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v37 + 8))(v26, v27);
      v22 = _s5BoardVMa;
      v23 = v25;
    }

    sub_10000CD38(v23, v22);
  }

  else
  {
    v24 = *v14;
    v43 = 0;
    sub_100F93734();
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v42 = v24;
    sub_100F937DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v29 + 8))(v11, v9);
  }

  return (*(v40 + 8))(v17, v20);
}

uint64_t sub_100F8C218@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v58 = sub_1005B981C(&qword_101A24CD0);
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v65 = &v51 - v3;
  v57 = sub_1005B981C(&qword_101A24CD8);
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v64 = &v51 - v4;
  v62 = sub_1005B981C(&qword_101A24CE0);
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v51 - v5;
  v63 = sub_1005B981C(&qword_101A24CE8);
  v67 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v51 - v6;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = a1[3];
  v69 = a1;
  sub_100020E58(a1, v20);
  sub_100F93638();
  v21 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v51 = v16;
    v52 = v13;
    v22 = v61;
    v23 = v62;
    v53 = v10;
    v54 = v19;
    v24 = v64;
    v25 = v65;
    v55 = 0;
    v68 = v8;
    v26 = v66;
    v27 = v63;
    v28 = KeyedDecodingContainer.allKeys.getter();
    v29 = (2 * *(v28 + 16)) | 1;
    v70 = v28;
    v71 = v28 + 32;
    v72 = 0;
    v73 = v29;
    v30 = sub_10074DC2C();
    v31 = v27;
    if (v30 == 3 || v72 != v73 >> 1)
    {
      v38 = type metadata accessor for DecodingError();
      swift_allocError();
      v40 = v39;
      sub_1005B981C(&qword_101A0AEE0);
      *v40 = v68;
      v33 = v31;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
      swift_willThrow();
    }

    else
    {
      if (!v30)
      {
        v74 = 0;
        sub_100F93734();
        v42 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v42)
        {
          sub_100F93788();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v56 + 8))(v22, v23);
          (*(v67 + 8))(v7, v27);
          swift_unknownObjectRelease();
          v48 = v51;
          *v51 = v74;
          swift_storeEnumTagMultiPayload();
          v49 = v54;
          sub_10000CCD0(v48, v54, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v35 = v26;
LABEL_18:
          sub_10000CCD0(v49, v35, type metadata accessor for CRLBoardLibraryViewModel.Item);
          return sub_100005070(v69);
        }

        (*(v67 + 8))(v7, v27);
        goto LABEL_10;
      }

      if (v30 == 1)
      {
        v74 = 1;
        sub_100F936E0();
        v32 = v24;
        v33 = v31;
        v34 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v34)
        {
          v35 = v26;
          type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
          sub_100F8E720(&qword_1019FAC00, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v36 = v52;
          v37 = v57;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v59 + 8))(v32, v37);
          (*(v67 + 8))(v7, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v36;
LABEL_17:
          v49 = v54;
          sub_10000CCD0(v50, v54, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_18;
        }
      }

      else
      {
        v74 = 2;
        sub_100F9368C();
        v43 = v25;
        v33 = v27;
        v44 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          v35 = v26;
          _s5BoardVMa(0);
          sub_100F8E720(&qword_101A24D00, _s5BoardVMa);
          v45 = v53;
          v46 = v58;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v47 = v67;
          (*(v60 + 8))(v43, v46);
          (*(v47 + 8))(v7, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v45;
          goto LABEL_17;
        }
      }
    }

    (*(v67 + 8))(v7, v33);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return sub_100005070(v69);
}

uint64_t sub_100F8CABC(uint64_t a1)
{
  v2 = sub_100F9368C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8CAF8(uint64_t a1)
{
  v2 = sub_100F9368C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8CB34(uint64_t a1)
{
  v2 = sub_100F93638();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8CB70(uint64_t a1)
{
  v2 = sub_100F93638();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8CBAC(uint64_t a1)
{
  v2 = sub_100F936E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8CBE8(uint64_t a1)
{
  v2 = sub_100F936E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8CC24(uint64_t a1)
{
  v2 = sub_100F93734();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8CC60(uint64_t a1)
{
  v2 = sub_100F93734();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100F8CD54()
{
  result = qword_101A24B88;
  if (!qword_101A24B88)
  {
    sub_1005C4E5C(&qword_101A24B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24B88);
  }

  return result;
}

uint64_t sub_100F8CDB8(void *a1)
{
  v2 = sub_1005B981C(&qword_101A24C48);
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v36 - v3;
  v48 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v48);
  v49 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A24C50);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v36 - v6;
  v7 = sub_1005B981C(&qword_101A24C58);
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v42 = &v36 - v8;
  v9 = sub_1005B981C(&qword_101A24C60);
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_1005B981C(&qword_101A24C68);
  v38 = *(v12 - 8);
  v39 = v12;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = sub_1005B981C(&qword_101A24C70);
  v37 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1005B981C(&qword_101A24C78);
  v53 = *(v21 - 8);
  v54 = v21;
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  sub_100020E58(a1, a1[3]);
  sub_100F92E34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000094E4(v55, v20, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v24 = sub_1005B981C(&qword_1019F3480);
  v25 = (*(*(v24 - 8) + 48))(v20, 5, v24);
  if (v25 <= 2)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        v56 = 0;
        sub_100F9302C();
        v26 = v54;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v37 + 8))(v17, v15);
        return (*(v53 + 8))(v23, v26);
      }

      v57 = 1;
      sub_100F92FD8();
      v35 = v54;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v14, v39);
      return (*(v53 + 8))(v23, v35);
    }

    v32 = v49;
    sub_10000CCD0(v20, v49, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v61 = 5;
    sub_100F92E88();
    v33 = v50;
    v29 = v54;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100F8E720(&qword_101A24C80, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v34 = v52;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v51 + 8))(v33, v34);
    sub_10000CD38(v32, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    return (*(v53 + 8))(v23, v29);
  }

  if (v25 != 3)
  {
    if (v25 == 4)
    {
      v59 = 3;
      sub_100F92F30();
      v28 = v42;
      v29 = v54;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v31 = v43;
      v30 = v44;
    }

    else
    {
      v60 = 4;
      sub_100F92EDC();
      v28 = v45;
      v29 = v54;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v31 = v46;
      v30 = v47;
    }

    (*(v31 + 8))(v28, v30);
    return (*(v53 + 8))(v23, v29);
  }

  v58 = 2;
  sub_100F92F84();
  v35 = v54;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v40 + 8))(v11, v41);
  return (*(v53 + 8))(v23, v35);
}

void sub_100F8D588()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v0, v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v7 = sub_1005B981C(&qword_1019F3480);
  v8 = (*(*(v7 - 8) + 48))(v6, 5, v7);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v9 = 2;
    }

    else if (v8 == 4)
    {
      v9 = 3;
    }

    else
    {
      v9 = 4;
    }
  }

  else
  {
    if (!v8)
    {
      sub_10000CCD0(v6, v3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      Hasher._combine(_:)(5uLL);
      sub_100F8ED58();
      sub_10000CD38(v3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      return;
    }

    v9 = v8 != 1;
  }

  Hasher._combine(_:)(v9);
}

uint64_t sub_100F8D748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_1005B981C(&qword_101A24BD0);
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v77 = &v58 - v4;
  v5 = sub_1005B981C(&qword_101A24BD8);
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v76 = &v58 - v6;
  v7 = sub_1005B981C(&qword_101A24BE0);
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v79 = &v58 - v8;
  v9 = sub_1005B981C(&qword_101A24BE8);
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v75 = &v58 - v10;
  v65 = sub_1005B981C(&qword_101A24BF0);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v74 = &v58 - v11;
  v62 = sub_1005B981C(&qword_101A24BF8);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v13 = &v58 - v12;
  v14 = sub_1005B981C(&qword_101A24C00);
  v78 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  v23 = a1[3];
  v82 = a1;
  sub_100020E58(a1, v23);
  sub_100F92E34();
  v24 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    v60 = v13;
    v59 = v19;
    v26 = v78;
    v25 = v79;
    v81 = 0;
    v61 = v22;
    v27 = v80;
    v28 = KeyedDecodingContainer.allKeys.getter();
    v29 = (2 * *(v28 + 16)) | 1;
    v83 = v28;
    v84 = v28 + 32;
    v85 = 0;
    v86 = v29;
    v30 = sub_10074DC28();
    if (v30 == 6 || v85 != v86 >> 1)
    {
      v39 = type metadata accessor for DecodingError();
      swift_allocError();
      v41 = v40;
      sub_1005B981C(&qword_101A0AEE0);
      *v41 = v17;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v39 - 8) + 104))(v41, enum case for DecodingError.typeMismatch(_:), v39);
      swift_willThrow();
      (*(v26 + 8))(v16, v14);
    }

    else
    {
      if (v30 <= 2u)
      {
        v31 = v14;
        v32 = v27;
        v33 = v26;
        v34 = v16;
        if (v30)
        {
          v35 = v81;
          if (v30 == 1)
          {
            v87 = 1;
            sub_100F92FD8();
            v36 = v74;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v35)
            {
              (*(v64 + 8))(v36, v65);
              (*(v33 + 8))(v34, v31);
              swift_unknownObjectRelease();
              v37 = sub_1005B981C(&qword_1019F3480);
              v38 = v61;
              (*(*(v37 - 8) + 56))(v61, 2, 5, v37);
LABEL_27:
              sub_10000CCD0(v38, v32, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              return sub_100005070(v82);
            }
          }

          else
          {
            v87 = 2;
            sub_100F92F84();
            v51 = v75;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v35)
            {
              (*(v66 + 8))(v51, v67);
              (*(v33 + 8))(v34, v31);
              swift_unknownObjectRelease();
              v54 = sub_1005B981C(&qword_1019F3480);
              v38 = v61;
              (*(*(v54 - 8) + 56))(v61, 3, 5, v54);
              goto LABEL_27;
            }
          }
        }

        else
        {
          v87 = 0;
          sub_100F9302C();
          v46 = v60;
          v47 = v81;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v47)
          {
            (*(v63 + 8))(v46, v62);
            (*(v26 + 8))(v34, v31);
            swift_unknownObjectRelease();
            v48 = sub_1005B981C(&qword_1019F3480);
            v38 = v61;
            (*(*(v48 - 8) + 56))(v61, 1, 5, v48);
            goto LABEL_27;
          }
        }

        (*(v33 + 8))(v34, v31);
        goto LABEL_10;
      }

      if (v30 == 3)
      {
        v87 = 3;
        sub_100F92F30();
        v49 = v81;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v49)
        {
          (*(v68 + 8))(v25, v69);
          (*(v26 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v50 = sub_1005B981C(&qword_1019F3480);
          v38 = v61;
          (*(*(v50 - 8) + 56))(v61, 4, 5, v50);
          goto LABEL_20;
        }
      }

      else
      {
        v43 = v81;
        if (v30 == 4)
        {
          v87 = 4;
          sub_100F92EDC();
          v44 = v76;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v43)
          {
            (*(v70 + 8))(v44, v71);
            (*(v26 + 8))(v16, v14);
            swift_unknownObjectRelease();
            v45 = sub_1005B981C(&qword_1019F3480);
            v38 = v61;
            (*(*(v45 - 8) + 56))(v61, 5, 5, v45);
LABEL_20:
            v32 = v27;
            goto LABEL_27;
          }
        }

        else
        {
          v87 = 5;
          sub_100F92E88();
          v52 = v77;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v43)
          {
            type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
            sub_100F8E720(&qword_101A24C18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v53 = v73;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v72 + 8))(v52, v53);
            (*(v26 + 8))(v16, v14);
            swift_unknownObjectRelease();
            v55 = sub_1005B981C(&qword_1019F3480);
            v56 = v59;
            (*(*(v55 - 8) + 56))(v59, 0, 5, v55);
            v57 = v56;
            v38 = v61;
            sub_10000CCD0(v57, v61, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            goto LABEL_20;
          }
        }
      }

      (*(v26 + 8))(v16, v14);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return sub_100005070(v82);
}

uint64_t sub_100F8E324(uint64_t a1)
{
  v2 = sub_100F9302C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8E360(uint64_t a1)
{
  v2 = sub_100F9302C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8E39C(uint64_t a1)
{
  v2 = sub_100F92E34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8E3D8(uint64_t a1)
{
  v2 = sub_100F92E34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8E414(uint64_t a1)
{
  v2 = sub_100F92F84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8E450(uint64_t a1)
{
  v2 = sub_100F92F84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8E48C(uint64_t a1)
{
  v2 = sub_100F92E88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8E4C8(uint64_t a1)
{
  v2 = sub_100F92E88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8E504(uint64_t a1)
{
  v2 = sub_100F92EDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8E540(uint64_t a1)
{
  v2 = sub_100F92EDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8E57C(uint64_t a1)
{
  v2 = sub_100F92FD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8E5B8(uint64_t a1)
{
  v2 = sub_100F92FD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8E5F4(uint64_t a1)
{
  v2 = sub_100F92F30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8E630(uint64_t a1)
{
  v2 = sub_100F92F30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F8E720(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100F8E7B0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v1 = 0x656C746974;
    v6 = 0x6E6F697469736F70;
    if (a1 != 3)
    {
      v6 = 0x6E6F697461657263;
    }

    if (a1 != 2)
    {
      v1 = v6;
    }

    v3 = 0xD000000000000010;
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    v5 = a1 <= 1u;
  }

  else
  {
    v1 = 0x7473626D6F547369;
    v2 = 0x707075736E557369;
    if (a1 != 9)
    {
      v2 = 0x74654D6572616873;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7974697669746361;
    v4 = 0x6C68676948736168;
    if (a1 != 6)
    {
      v4 = 0x617469766E497369;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    v5 = a1 <= 7u;
  }

  if (v5)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100F8E944(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A24BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100F92DE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for CRLFolderIdentifier(0);
  sub_100F8E720(&qword_101A019D8, type metadata accessor for CRLFolderIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    sub_1009D1870();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 4;
    type metadata accessor for Date();
    sub_100F8E720(&qword_101A19AD0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 10;
    _s5BoardV13ShareMetadataVMa(0);
    sub_100F8E720(&qword_101A24BC8, _s5BoardV13ShareMetadataVMa);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100F8ED58()
{
  v1 = type metadata accessor for URL();
  v41 = *(v1 - 8);
  v42 = v1;
  __chkstk_darwin(v1);
  v37 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v39 = &v37 - v4;
  v5 = _s5BoardV13ShareMetadataVMa(0);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v7 - 8);
  v45 = &v37 - v8;
  v9 = type metadata accessor for CRLDisjointPosition.Element();
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  __chkstk_darwin(v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for CRLFolderIdentifier(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v38 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - v17;
  type metadata accessor for UUID();
  sub_100F8E720(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  String.hash(into:)();
  v19 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v20 = v19[5];
  v48 = v0;
  sub_10000BE14(v0 + v20, v18, &qword_1019F33E0);
  if ((*(v14 + 48))(v18, 1, v13) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v21 = v38;
    sub_10000CCD0(v18, v38, type metadata accessor for CRLFolderIdentifier);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    String.hash(into:)();
    sub_10000CD38(v21, type metadata accessor for CRLFolderIdentifier);
  }

  v22 = v48;
  String.hash(into:)();
  v23 = *(v22 + v19[7]);
  Hasher._combine(_:)(*(v23 + 16));
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v23 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v26 = *(v44 + 72);
    do
    {
      sub_1000094E4(v25, v12, type metadata accessor for CRLDisjointPosition.Element);
      Hasher._combine(_:)(*v12);
      dispatch thunk of Hashable.hash(into:)();
      sub_10000CD38(v12, type metadata accessor for CRLDisjointPosition.Element);
      v25 += v26;
      --v24;
    }

    while (v24);
  }

  type metadata accessor for Date();
  sub_100F8E720(&qword_101A1EB18, &type metadata accessor for Date);
  v27 = v48;
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v27 + v19[10]));
  Hasher._combine(_:)(*(v27 + v19[11]));
  Hasher._combine(_:)(*(v27 + v19[12]));
  Hasher._combine(_:)(*(v27 + v19[13]));
  v28 = v45;
  sub_10000BE14(v27 + v19[14], v45, &qword_1019F33D0);
  v29 = v47;
  if ((*(v46 + 48))(v28, 1, v47) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v30 = v40;
    sub_10000CCD0(v28, v40, _s5BoardV13ShareMetadataVMa);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*v30);
    v31 = v39;
    sub_10000BE14(&v30[v29[5]], v39, &unk_1019F33C0);
    v33 = v41;
    v32 = v42;
    if ((*(v41 + 48))(v31, 1, v42) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v34 = v37;
      (*(v33 + 32))(v37, v31, v32);
      Hasher._combine(_:)(1u);
      sub_100F8E720(&qword_101A00578, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v33 + 8))(v34, v32);
    }

    String.hash(into:)();
    Hasher._combine(_:)(*&v30[v29[7]]);
    v35 = &v30[v29[8]];
    v36 = *(v35 + 1);
    v49 = *v35;
    v50 = v36;
    v51 = *(v35 + 2);
    v52 = v35[48];
    sub_10130047C();
    sub_10000CD38(v30, _s5BoardV13ShareMetadataVMa);
  }
}

uint64_t sub_100F8F50C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v3 - 8);
  v45 = v42 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  __chkstk_darwin(v5);
  v46 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = v42 - v9;
  v10 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v10 - 8);
  v50 = v42 - v11;
  v12 = type metadata accessor for CRLFolderIdentifier(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = (v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1005B981C(&qword_101A24BA8);
  v52 = *(v15 - 8);
  v53 = v15;
  __chkstk_darwin(v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v19 = __chkstk_darwin(v18);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 20);
  v24 = *(v13 + 56);
  v54 = v12;
  v24(&v21[v23], 1, 1, v12, v19);
  v25 = *(v18 + 56);
  v26 = _s5BoardV13ShareMetadataVMa(0);
  v27 = *(*(v26 - 8) + 56);
  v57 = v25;
  v27(&v21[v25], 1, 1, v26);
  sub_100020E58(a1, a1[3]);
  sub_100F92DE0();
  v55 = v17;
  v28 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    sub_100005070(a1);
    sub_10000CAAC(&v21[v23], &qword_1019F33E0);
    return sub_10000CAAC(&v21[v57], &qword_1019F33D0);
  }

  else
  {
    v29 = v50;
    v42[1] = v26;
    v43 = v18;
    v56 = v23;
    v30 = a1;
    LOBYTE(v59) = 0;
    sub_100F8E720(&qword_101A019C8, type metadata accessor for CRLFolderIdentifier);
    v31 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10000CCD0(v31, v21, type metadata accessor for CRLFolderIdentifier);
    LOBYTE(v59) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10002C638(v29, &v21[v56], &qword_1019F33E0);
    LOBYTE(v59) = 2;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = v49;
    v34 = v43;
    v35 = &v21[v43[6]];
    *v35 = v32;
    v35[1] = v36;
    v58 = 3;
    sub_1009D1818();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v21[v34[7]] = v59;
    LOBYTE(v59) = 4;
    v37 = sub_100F8E720(&qword_101A19C70, &type metadata accessor for Date);
    v38 = v47;
    v39 = v48;
    v54 = v37;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = &v21[v34[8]];
    v51 = *(v33 + 32);
    v51(v40, v38, v39);
    LOBYTE(v59) = 5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v51(&v21[v34[9]], v46, v39);
    LOBYTE(v59) = 6;
    v21[v34[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v59) = 7;
    v21[v43[11]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v59) = 8;
    v21[v43[12]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v59) = 9;
    v21[v43[13]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v59) = 10;
    sub_100F8E720(&qword_101A24BB8, _s5BoardV13ShareMetadataVMa);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v52 + 8))(v55, v53);
    sub_10002C638(v45, &v21[v57], &qword_1019F33D0);
    sub_1000094E4(v21, v44, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_100005070(v30);
    return sub_10000CD38(v21, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  }
}

uint64_t sub_100F8FF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F94784(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F8FF60(uint64_t a1)
{
  v2 = sub_100F92DE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F8FF9C(uint64_t a1)
{
  v2 = sub_100F92DE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F90040()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.LegacyItem(0);
  __chkstk_darwin(v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  sub_1000094E4(v1, &v54 - v15, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v54 = 0x203A7265746C6946;
      v55 = 0xE800000000000000;
      sub_1000094E4(v1, v10, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
      v18 = swift_getEnumCaseMultiPayload();
      if (v18)
      {
        if (v18 == 1)
        {
          sub_10000CCD0(v10, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v19 = sub_10006A888();
          v21 = v20;
          v22 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
          v23 = v7;
        }

        else
        {
          v39 = &v10[*(sub_1005B981C(&unk_101A23BD0) + 48)];
          v19 = *v39;
          v21 = v39[1];
          v22 = type metadata accessor for CRLBoardIdentifier;
          v23 = v10;
        }

        sub_10000CD38(v23, v22);
      }

      else if (*v10)
      {
        v19 = 0x737265646C6F46;
        v21 = 0xE700000000000000;
      }

      else
      {
        v44 = [objc_opt_self() mainBundle];
        v45 = String._bridgeToObjectiveC()();
        v46 = String._bridgeToObjectiveC()();
        v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v48;
      }

      v40._countAndFlagsBits = v19;
      v40._object = v21;
      String.append(_:)(v40);

      v36 = v54;
      v37 = type metadata accessor for CRLBoardLibraryViewModel.LegacyItem;
      v38 = v16;
    }

    else
    {
      v30 = &v16[*(sub_1005B981C(&unk_101A23BD0) + 48)];
      v31 = *v30;
      v32 = v30[1];
      sub_10000CCD0(v16, v4, type metadata accessor for CRLBoardIdentifier);
      v54 = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v54 = 0x203A6472616F42;
      v55 = 0xE700000000000000;
      v33._countAndFlagsBits = v31;
      v33._object = v32;
      String.append(_:)(v33);

      v34._countAndFlagsBits = 0x69746E656469202CLL;
      v34._object = 0xEE00203A72656966;
      String.append(_:)(v34);
      v35._countAndFlagsBits = sub_10084B8C8();
      String.append(_:)(v35);

      v36 = v54;
      v37 = type metadata accessor for CRLBoardIdentifier;
      v38 = v4;
    }

    sub_10000CD38(v38, v37);
  }

  else
  {
    v54 = 0x3A7972617262694CLL;
    v55 = 0xE900000000000020;
    sub_1000094E4(v1, v13, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
    v24 = swift_getEnumCaseMultiPayload();
    if (v24)
    {
      if (v24 == 1)
      {
        sub_10000CCD0(v13, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v25 = sub_10006A888();
        v27 = v26;
        v28 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v29 = v7;
      }

      else
      {
        v41 = &v13[*(sub_1005B981C(&unk_101A23BD0) + 48)];
        v25 = *v41;
        v27 = v41[1];
        v28 = type metadata accessor for CRLBoardIdentifier;
        v29 = v13;
      }

      sub_10000CD38(v29, v28);
    }

    else if (*v13)
    {
      v25 = 0x737265646C6F46;
      v27 = 0xE700000000000000;
    }

    else
    {
      v49 = [objc_opt_self() mainBundle];
      v50 = String._bridgeToObjectiveC()();
      v51 = String._bridgeToObjectiveC()();
      v52 = [v49 localizedStringForKey:v50 value:v51 table:0];

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v53;
    }

    v42._countAndFlagsBits = v25;
    v42._object = v27;
    String.append(_:)(v42);

    return v54;
  }

  return v36;
}

uint64_t sub_100F90638(void *a1)
{
  v2 = sub_1005B981C(&qword_101A24F78);
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v28 - v3;
  v33 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v33);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A24F80);
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v30 = &v28 - v6;
  v29 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A24F88);
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.LegacyItem(0);
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_101A24F90);
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  sub_100020E58(a1, a1[3]);
  sub_100F94B28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000094E4(v38, v14, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10000CCD0(v14, v8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v44 = 1;
      sub_100F94BD0();
      v19 = v30;
      v20 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100F8E720(&qword_1019FAC30, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v21 = v32;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v31 + 8))(v19, v21);
      v22 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    }

    else
    {
      sub_1005B981C(&unk_101A23BD0);
      v8 = v34;
      sub_10000CCD0(v14, v34, type metadata accessor for CRLBoardIdentifier);
      v47 = 2;
      sub_100F94B7C();
      v24 = v35;
      v20 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v46 = 0;
      sub_100F8E720(&qword_1019F4780, type metadata accessor for CRLBoardIdentifier);
      v25 = v37;
      v26 = v41;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v26)
      {
        v45 = 1;
        KeyedEncodingContainer.encode(_:forKey:)();

        (*(v36 + 8))(v24, v25);
        sub_10000CD38(v8, type metadata accessor for CRLBoardIdentifier);
        return (*(v39 + 8))(v17, v20);
      }

      (*(v36 + 8))(v24, v25);
      v22 = type metadata accessor for CRLBoardIdentifier;
    }

    sub_10000CD38(v8, v22);
  }

  else
  {
    v23 = *v14;
    v43 = 0;
    sub_100F94C24();
    v20 = v40;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v42 = v23;
    sub_100F937DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v28 + 8))(v11, v9);
  }

  return (*(v39 + 8))(v17, v20);
}

void sub_100F90D04()
{
  v1 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.LegacyItem(0);
  __chkstk_darwin(v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v0, v9, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10000CCD0(v9, v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      Hasher._combine(_:)(1uLL);
      sub_100F8D588();
      v11 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v12 = v6;
    }

    else
    {
      sub_1005B981C(&unk_101A23BD0);
      sub_10000CCD0(v9, v3, type metadata accessor for CRLBoardIdentifier);
      Hasher._combine(_:)(2uLL);
      type metadata accessor for UUID();
      sub_100F8E720(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      String.hash(into:)();

      v11 = type metadata accessor for CRLBoardIdentifier;
      v12 = v3;
    }

    sub_10000CD38(v12, v11);
  }

  else
  {
    v13 = *v9;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v13);
  }
}

uint64_t sub_100F90FA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v68 = sub_1005B981C(&qword_101A24F38);
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v75 = &v60 - v3;
  v67 = sub_1005B981C(&qword_101A24F40);
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v74 = &v60 - v4;
  v5 = sub_1005B981C(&qword_101A24F48);
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  __chkstk_darwin(v5);
  v72 = &v60 - v7;
  v73 = sub_1005B981C(&qword_101A24F50);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v9 = &v60 - v8;
  v10 = type metadata accessor for CRLBoardLibraryViewModel.LegacyItem(0);
  __chkstk_darwin(v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  v22 = a1[3];
  v78 = a1;
  sub_100020E58(a1, v22);
  sub_100F94B28();
  v23 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v61 = v18;
    v63 = v15;
    v64 = v12;
    v25 = v74;
    v24 = v75;
    v62 = v21;
    v77 = v10;
    v26 = v71;
    v27 = v72;
    v28 = v76;
    v29 = v73;
    v30 = KeyedDecodingContainer.allKeys.getter();
    v31 = (2 * *(v30 + 16)) | 1;
    v79 = v30;
    v80 = v30 + 32;
    v81 = 0;
    v82 = v31;
    v32 = sub_10074DC2C();
    if (v32 == 3 || v81 != v82 >> 1)
    {
      v38 = type metadata accessor for DecodingError();
      swift_allocError();
      v40 = v39;
      sub_1005B981C(&qword_101A0AEE0);
      *v40 = v77;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
      swift_willThrow();
      (*(v26 + 8))(v9, v29);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32)
      {
        if (v32 == 1)
        {
          v83 = 1;
          sub_100F94BD0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v33 = v9;
          v34 = v28;
          v35 = v33;
          type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
          sub_100F8E720(&qword_1019FAC00, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v36 = v63;
          v37 = v67;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v69 + 8))(v25, v37);
          (*(v26 + 8))(v35, v29);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v36;
        }

        else
        {
          v83 = 2;
          sub_100F94B7C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v42 = v9;
          v34 = v28;
          v74 = v42;
          type metadata accessor for CRLBoardIdentifier(0);
          v83 = 0;
          sub_100F8E720(&qword_1019F4758, type metadata accessor for CRLBoardIdentifier);
          v48 = v68;
          v49 = v24;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v83 = 1;
          v51 = KeyedDecodingContainer.decode(_:forKey:)();
          v72 = v52;
          v53 = v70;
          v54 = v51;
          v55 = *(sub_1005B981C(&unk_101A23BD0) + 48);
          v56 = v49;
          v57 = v64;
          v58 = &v64[v55];
          (*(v53 + 8))(v56, v48);
          (*(v26 + 8))(v74, v29);
          swift_unknownObjectRelease();
          v59 = v72;
          *v58 = v54;
          v58[1] = v59;
          swift_storeEnumTagMultiPayload();
          v50 = v57;
        }

        v47 = v62;
        sub_10000CCD0(v50, v62, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
      }

      else
      {
        v83 = 0;
        sub_100F94C24();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_100F93788();
        v43 = v27;
        v44 = v65;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v66 + 8))(v43, v44);
        (*(v26 + 8))(v9, v29);
        swift_unknownObjectRelease();
        v45 = v61;
        *v61 = v83;
        swift_storeEnumTagMultiPayload();
        v46 = v45;
        v47 = v62;
        sub_10000CCD0(v46, v62, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
        v34 = v28;
      }

      sub_10000CCD0(v47, v34, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
    }
  }

  return sub_100005070(v78);
}

uint64_t sub_100F918BC()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 0x6564496472616F62;
  }
}

uint64_t sub_100F91900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
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

uint64_t sub_100F919E0(uint64_t a1)
{
  v2 = sub_100F94B7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F91A1C(uint64_t a1)
{
  v2 = sub_100F94B7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F91A58(uint64_t a1)
{
  v2 = sub_100F94B28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F91A94(uint64_t a1)
{
  v2 = sub_100F94B28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F91AD0(uint64_t a1)
{
  v2 = sub_100F94BD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F91B0C(uint64_t a1)
{
  v2 = sub_100F94BD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F91B48(uint64_t a1)
{
  v2 = sub_100F94C24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F91B84(uint64_t a1)
{
  v2 = sub_100F94C24();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100F91C0C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_100F91C70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100F91CB8(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = _s5BoardVMa(0);
  v4 = __chkstk_darwin(v3 - 8);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v34 - v6;
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v34 - v18;
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = sub_1005B981C(&qword_101A000E0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v34 - v24;
  v26 = *(v23 + 56);
  sub_1000094E4(a1, &v34 - v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_1000094E4(v37, &v25[v26], type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000094E4(v25, v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10000CCD0(v19, v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_10000CCD0(&v25[v26], v10, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v28 = sub_100068604(v12, v10);
        v29 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_9:
        v30 = v29;
        sub_10000CD38(v10, v29);
        sub_10000CD38(v12, v30);
        goto LABEL_10;
      }

      v31 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v32 = v19;
    }

    else
    {
      sub_1000094E4(v25, v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v12 = v35;
        sub_10000CCD0(v16, v35, _s5BoardVMa);
        v10 = v36;
        sub_10000CCD0(&v25[v26], v36, _s5BoardVMa);
        v28 = sub_1013030EC(v12, v10);
        v29 = _s5BoardVMa;
        goto LABEL_9;
      }

      v31 = _s5BoardVMa;
      v32 = v16;
    }

    sub_10000CD38(v32, v31);
LABEL_14:
    sub_10000CAAC(v25, &qword_101A000E0);
    v28 = 0;
    return v28 & 1;
  }

  sub_1000094E4(v25, v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_14;
  }

  v28 = *v21 ^ v25[v26] ^ 1;
LABEL_10:
  sub_10000CD38(v25, type metadata accessor for CRLBoardLibraryViewModel.Item);
  return v28 & 1;
}

uint64_t sub_100F920F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.LegacyItem(0);
  __chkstk_darwin(v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = sub_1005B981C(&qword_101A24F98);
  __chkstk_darwin(v18 - 8);
  v20 = &v43 - v19;
  v22 = &v43 + *(v21 + 56) - v19;
  sub_1000094E4(a1, &v43 - v19, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
  sub_1000094E4(a2, v22, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1000094E4(v20, v17, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
    if (!swift_getEnumCaseMultiPayload())
    {
      v25 = *v17 ^ *v22;
      sub_10000CD38(v20, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
      v24 = v25 ^ 1;
      return v24 & 1;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1000094E4(v20, v11, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
    v26 = *(sub_1005B981C(&unk_101A23BD0) + 48);
    v28 = *&v11[v26];
    v27 = *&v11[v26 + 8];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      v37 = type metadata accessor for CRLBoardIdentifier;
      v38 = v11;
      goto LABEL_14;
    }

    v30 = *&v22[v26];
    v29 = *&v22[v26 + 8];
    v31 = v22;
    v32 = v44;
    sub_10000CCD0(v31, v44, type metadata accessor for CRLBoardIdentifier);
    if (static UUID.== infix(_:_:)())
    {
      v33 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
      v34 = *&v11[v33];
      v35 = *&v11[v33 + 8];
      v36 = (v32 + v33);
      if (v34 == *v36 && v35 == v36[1])
      {
        sub_10000CD38(v11, type metadata accessor for CRLBoardIdentifier);
LABEL_22:
        if (v28 == v30 && v27 == v29)
        {

          sub_10000CD38(v32, type metadata accessor for CRLBoardIdentifier);
LABEL_29:
          sub_10000CD38(v20, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
          v24 = 1;
          return v24 & 1;
        }

        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10000CD38(v32, type metadata accessor for CRLBoardIdentifier);
        if (v42)
        {
          goto LABEL_29;
        }

LABEL_20:
        sub_10000CD38(v20, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
        goto LABEL_16;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10000CD38(v11, type metadata accessor for CRLBoardIdentifier);
      if (v40)
      {
        goto LABEL_22;
      }
    }

    else
    {

      sub_10000CD38(v11, type metadata accessor for CRLBoardIdentifier);
    }

    sub_10000CD38(v32, type metadata accessor for CRLBoardIdentifier);
    goto LABEL_20;
  }

  sub_1000094E4(v20, v14, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    v38 = v14;
LABEL_14:
    sub_10000CD38(v38, v37);
LABEL_15:
    sub_10000CAAC(v20, &qword_101A24F98);
LABEL_16:
    v24 = 0;
    return v24 & 1;
  }

  sub_10000CCD0(v22, v8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v24 = sub_100068604(v14, v8);
  sub_10000CD38(v8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10000CD38(v14, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10000CD38(v20, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
  return v24 & 1;
}

BOOL sub_100F92694(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardV13ShareMetadataVMa(0);
  v62 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v55 - v8;
  v61 = sub_1005B981C(&qword_1019F33D8);
  __chkstk_darwin(v61);
  v11 = &v55 - v10;
  v12 = type metadata accessor for CRLFolderIdentifier(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v15 - 8);
  v64 = &v55 - v16;
  v17 = sub_1005B981C(&qword_1019F33E8);
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v58 = v9;
  v60 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v20 = *(v60 + 20);
  v21 = a1;
  v22 = *(a1 + v20);
  v23 = *(a1 + v20 + 8);
  v24 = a2;
  v25 = (a2 + v20);
  if ((v22 != *v25 || v23 != v25[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v56 = v4;
  v57 = v11;
  v55 = v6;
  v59 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v26 = *(v59 + 20);
  v27 = *(v17 + 48);
  v28 = v21;
  sub_10000BE14(v21 + v26, v19, &qword_1019F33E0);
  v29 = v24 + v26;
  v30 = v24;
  sub_10000BE14(v29, &v19[v27], &qword_1019F33E0);
  v31 = *(v13 + 48);
  if (v31(v19, 1, v12) == 1)
  {
    if (v31(&v19[v27], 1, v12) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v32 = v64;
  sub_10000BE14(v19, v64, &qword_1019F33E0);
  if (v31(&v19[v27], 1, v12) == 1)
  {
    sub_10000CD38(v32, type metadata accessor for CRLFolderIdentifier);
LABEL_10:
    v33 = &qword_1019F33E8;
LABEL_30:
    v49 = v19;
LABEL_31:
    sub_10000CAAC(v49, v33);
    return 0;
  }

  v34 = v63;
  sub_10000CCD0(&v19[v27], v63, type metadata accessor for CRLFolderIdentifier);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v35 = *(v60 + 20), v36 = *(v32 + v35), v37 = *(v32 + v35 + 8), v38 = (v34 + v35), v36 != *v38) || v37 != v38[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10000CD38(v34, type metadata accessor for CRLFolderIdentifier);
    sub_10000CD38(v32, type metadata accessor for CRLFolderIdentifier);
    v33 = &qword_1019F33E0;
    goto LABEL_30;
  }

  sub_10000CD38(v34, type metadata accessor for CRLFolderIdentifier);
  sub_10000CD38(v32, type metadata accessor for CRLFolderIdentifier);
LABEL_16:
  sub_10000CAAC(v19, &qword_1019F33E0);
  v39 = v59;
  v40 = *(v59 + 24);
  v41 = *(v28 + v40);
  v42 = *(v28 + v40 + 8);
  v43 = (v30 + v40);
  if ((v41 != *v43 || v42 != v43[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_1006707A4(*(v28 + v39[7]), *(v30 + v39[7])) & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || *(v28 + v39[10]) != *(v30 + v39[10]) || *(v28 + v39[11]) != *(v30 + v39[11]) || *(v28 + v39[12]) != *(v30 + v39[12]) || *(v28 + v39[13]) != *(v30 + v39[13]))
  {
    return 0;
  }

  v44 = v39[14];
  v45 = *(v61 + 48);
  v46 = v57;
  sub_10000BE14(v28 + v44, v57, &qword_1019F33D0);
  sub_10000BE14(v30 + v44, v46 + v45, &qword_1019F33D0);
  v47 = *(v62 + 48);
  v48 = v56;
  if (v47(v46, 1, v56) != 1)
  {
    v51 = v58;
    sub_10000BE14(v46, v58, &qword_1019F33D0);
    if (v47(v46 + v45, 1, v48) != 1)
    {
      v52 = v46 + v45;
      v53 = v55;
      sub_10000CCD0(v52, v55, _s5BoardV13ShareMetadataVMa);
      v54 = sub_1013038D4(v51, v53);
      sub_10000CD38(v53, _s5BoardV13ShareMetadataVMa);
      sub_10000CD38(v51, _s5BoardV13ShareMetadataVMa);
      sub_10000CAAC(v46, &qword_1019F33D0);
      return (v54 & 1) != 0;
    }

    sub_10000CD38(v51, _s5BoardV13ShareMetadataVMa);
    goto LABEL_35;
  }

  if (v47(v46 + v45, 1, v48) != 1)
  {
LABEL_35:
    v33 = &qword_1019F33D8;
    v49 = v46;
    goto LABEL_31;
  }

  sub_10000CAAC(v46, &qword_1019F33D0);
  return 1;
}

unint64_t sub_100F92DE0()
{
  result = qword_101A24BB0;
  if (!qword_101A24BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24BB0);
  }

  return result;
}

unint64_t sub_100F92E34()
{
  result = qword_101A24C08;
  if (!qword_101A24C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24C08);
  }

  return result;
}

unint64_t sub_100F92E88()
{
  result = qword_101A24C10;
  if (!qword_101A24C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24C10);
  }

  return result;
}

unint64_t sub_100F92EDC()
{
  result = qword_101A24C20;
  if (!qword_101A24C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24C20);
  }

  return result;
}

unint64_t sub_100F92F30()
{
  result = qword_101A24C28;
  if (!qword_101A24C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24C28);
  }

  return result;
}

unint64_t sub_100F92F84()
{
  result = qword_101A24C30;
  if (!qword_101A24C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24C30);
  }

  return result;
}

unint64_t sub_100F92FD8()
{
  result = qword_101A24C38;
  if (!qword_101A24C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24C38);
  }

  return result;
}

unint64_t sub_100F9302C()
{
  result = qword_101A24C40;
  if (!qword_101A24C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24C40);
  }

  return result;
}

uint64_t sub_100F93080(void *a1)
{
  v2 = sub_1005B981C(&qword_101A24C88);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_1005B981C(&qword_101A24C90);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_1005B981C(&qword_101A24C98);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_100020E58(a1, a1[3]);
  sub_100F9353C();
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_100005070(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = KeyedDecodingContainer.allKeys.getter();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_10074DC24();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    sub_1005B981C(&qword_101A0AEE0);
    *v19 = &type metadata for CRLBoardLibraryViewModel.Library;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100005070(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_100F93590();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_100F935E4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_100005070(v26);
  return v31 & 1;
}

unint64_t sub_100F9353C()
{
  result = qword_101A24CA0;
  if (!qword_101A24CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24CA0);
  }

  return result;
}

unint64_t sub_100F93590()
{
  result = qword_101A24CA8;
  if (!qword_101A24CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24CA8);
  }

  return result;
}

unint64_t sub_100F935E4()
{
  result = qword_101A24CB0;
  if (!qword_101A24CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24CB0);
  }

  return result;
}

unint64_t sub_100F93638()
{
  result = qword_101A24CF0;
  if (!qword_101A24CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24CF0);
  }

  return result;
}

unint64_t sub_100F9368C()
{
  result = qword_101A24CF8;
  if (!qword_101A24CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24CF8);
  }

  return result;
}

unint64_t sub_100F936E0()
{
  result = qword_101A24D08;
  if (!qword_101A24D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24D08);
  }

  return result;
}

unint64_t sub_100F93734()
{
  result = qword_101A24D10;
  if (!qword_101A24D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24D10);
  }

  return result;
}

unint64_t sub_100F93788()
{
  result = qword_101A24D18;
  if (!qword_101A24D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24D18);
  }

  return result;
}

unint64_t sub_100F937DC()
{
  result = qword_101A24D48;
  if (!qword_101A24D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24D48);
  }

  return result;
}

void sub_100F93850()
{
  type metadata accessor for CRLBoardLibraryViewModel.Filter(319);
  if (v0 <= 0x3F)
  {
    sub_100F938D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100F938D0()
{
  if (!qword_101A24DD0)
  {
    type metadata accessor for CRLBoardIdentifier(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101A24DD0);
    }
  }
}

unint64_t sub_100F93A30()
{
  result = qword_101A24E00;
  if (!qword_101A24E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E00);
  }

  return result;
}

unint64_t sub_100F93A88()
{
  result = qword_101A24E08;
  if (!qword_101A24E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E08);
  }

  return result;
}

unint64_t sub_100F93AE0()
{
  result = qword_101A24E10;
  if (!qword_101A24E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E10);
  }

  return result;
}

unint64_t sub_100F93B38()
{
  result = qword_101A24E18;
  if (!qword_101A24E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E18);
  }

  return result;
}

unint64_t sub_100F93B90()
{
  result = qword_101A24E20;
  if (!qword_101A24E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E20);
  }

  return result;
}

unint64_t sub_100F93BE8()
{
  result = qword_101A24E28;
  if (!qword_101A24E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E28);
  }

  return result;
}

unint64_t sub_100F93C40()
{
  result = qword_101A24E30;
  if (!qword_101A24E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E30);
  }

  return result;
}

unint64_t sub_100F93C98()
{
  result = qword_101A24E38;
  if (!qword_101A24E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E38);
  }

  return result;
}

unint64_t sub_100F93D38()
{
  result = qword_101A24E48;
  if (!qword_101A24E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E48);
  }

  return result;
}

unint64_t sub_100F93D90()
{
  result = qword_101A24E50;
  if (!qword_101A24E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E50);
  }

  return result;
}

unint64_t sub_100F93DE8()
{
  result = qword_101A24E58;
  if (!qword_101A24E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E58);
  }

  return result;
}

unint64_t sub_100F93E40()
{
  result = qword_101A24E60;
  if (!qword_101A24E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E60);
  }

  return result;
}

unint64_t sub_100F93E98()
{
  result = qword_101A24E68;
  if (!qword_101A24E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E68);
  }

  return result;
}

unint64_t sub_100F93EF0()
{
  result = qword_101A24E70;
  if (!qword_101A24E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E70);
  }

  return result;
}

unint64_t sub_100F93F48()
{
  result = qword_101A24E78;
  if (!qword_101A24E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E78);
  }

  return result;
}

unint64_t sub_100F93FA0()
{
  result = qword_101A24E80;
  if (!qword_101A24E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E80);
  }

  return result;
}

unint64_t sub_100F93FF8()
{
  result = qword_101A24E88;
  if (!qword_101A24E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E88);
  }

  return result;
}

unint64_t sub_100F94050()
{
  result = qword_101A24E90;
  if (!qword_101A24E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E90);
  }

  return result;
}

unint64_t sub_100F940A8()
{
  result = qword_101A24E98;
  if (!qword_101A24E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24E98);
  }

  return result;
}

unint64_t sub_100F94100()
{
  result = qword_101A24EA0;
  if (!qword_101A24EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24EA0);
  }

  return result;
}

unint64_t sub_100F94158()
{
  result = qword_101A24EA8;
  if (!qword_101A24EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24EA8);
  }

  return result;
}

unint64_t sub_100F941B0()
{
  result = qword_101A24EB0;
  if (!qword_101A24EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24EB0);
  }

  return result;
}

unint64_t sub_100F94208()
{
  result = qword_101A24EB8;
  if (!qword_101A24EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24EB8);
  }

  return result;
}

unint64_t sub_100F94260()
{
  result = qword_101A24EC0;
  if (!qword_101A24EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24EC0);
  }

  return result;
}

unint64_t sub_100F942B8()
{
  result = qword_101A24EC8;
  if (!qword_101A24EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24EC8);
  }

  return result;
}

unint64_t sub_100F94310()
{
  result = qword_101A24ED0;
  if (!qword_101A24ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24ED0);
  }

  return result;
}

unint64_t sub_100F94368()
{
  result = qword_101A24ED8;
  if (!qword_101A24ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24ED8);
  }

  return result;
}

unint64_t sub_100F943C0()
{
  result = qword_101A24EE0;
  if (!qword_101A24EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24EE0);
  }

  return result;
}

unint64_t sub_100F94418()
{
  result = qword_101A24EE8;
  if (!qword_101A24EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24EE8);
  }

  return result;
}

unint64_t sub_100F94470()
{
  result = qword_101A24EF0;
  if (!qword_101A24EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24EF0);
  }

  return result;
}

unint64_t sub_100F944C8()
{
  result = qword_101A24EF8;
  if (!qword_101A24EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24EF8);
  }

  return result;
}

unint64_t sub_100F94520()
{
  result = qword_101A24F00;
  if (!qword_101A24F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24F00);
  }

  return result;
}

unint64_t sub_100F94578()
{
  result = qword_101A24F08;
  if (!qword_101A24F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24F08);
  }

  return result;
}

unint64_t sub_100F945D0()
{
  result = qword_101A24F10;
  if (!qword_101A24F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24F10);
  }

  return result;
}

unint64_t sub_100F94628()
{
  result = qword_101A24F18;
  if (!qword_101A24F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24F18);
  }

  return result;
}

unint64_t sub_100F94680()
{
  result = qword_101A24F20;
  if (!qword_101A24F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24F20);
  }

  return result;
}

unint64_t sub_100F946D8()
{
  result = qword_101A24F28;
  if (!qword_101A24F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24F28);
  }

  return result;
}

unint64_t sub_100F94730()
{
  result = qword_101A24F30;
  if (!qword_101A24F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24F30);
  }

  return result;
}

uint64_t sub_100F94784(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101569B50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001015890F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC000000656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEC000000656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C68676948736168 && a2 == 0xEC00000074686769 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617469766E497369 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7473626D6F547369 && a2 == 0xEC00000064656E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x707075736E557369 && a2 == 0xED0000646574726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74654D6572616873 && a2 == 0xED00006174616461)
  {

    return 10;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_100F94B28()
{
  result = qword_101A24F58;
  if (!qword_101A24F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24F58);
  }

  return result;
}

unint64_t sub_100F94B7C()
{
  result = qword_101A24F60;
  if (!qword_101A24F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24F60);
  }

  return result;
}

unint64_t sub_100F94BD0()
{
  result = qword_101A24F68;
  if (!qword_101A24F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24F68);
  }

  return result;
}

unint64_t sub_100F94C24()
{
  result = qword_101A24F70;
  if (!qword_101A24F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24F70);
  }

  return result;
}

unint64_t sub_100F94CBC()
{
  result = qword_101A24FA0;
  if (!qword_101A24FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FA0);
  }

  return result;
}

unint64_t sub_100F94D14()
{
  result = qword_101A24FA8;
  if (!qword_101A24FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FA8);
  }

  return result;
}

unint64_t sub_100F94D6C()
{
  result = qword_101A24FB0;
  if (!qword_101A24FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FB0);
  }

  return result;
}

unint64_t sub_100F94DC4()
{
  result = qword_101A24FB8;
  if (!qword_101A24FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FB8);
  }

  return result;
}

unint64_t sub_100F94E1C()
{
  result = qword_101A24FC0;
  if (!qword_101A24FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FC0);
  }

  return result;
}

unint64_t sub_100F94E74()
{
  result = qword_101A24FC8;
  if (!qword_101A24FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FC8);
  }

  return result;
}

unint64_t sub_100F94ECC()
{
  result = qword_101A24FD0;
  if (!qword_101A24FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FD0);
  }

  return result;
}

unint64_t sub_100F94F24()
{
  result = qword_101A24FD8;
  if (!qword_101A24FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FD8);
  }

  return result;
}

unint64_t sub_100F94F7C()
{
  result = qword_101A24FE0;
  if (!qword_101A24FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FE0);
  }

  return result;
}

unint64_t sub_100F94FD4()
{
  result = qword_101A24FE8;
  if (!qword_101A24FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FE8);
  }

  return result;
}

unint64_t sub_100F9502C()
{
  result = qword_101A24FF0;
  if (!qword_101A24FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FF0);
  }

  return result;
}

unint64_t sub_100F95084()
{
  result = qword_101A24FF8;
  if (!qword_101A24FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24FF8);
  }

  return result;
}

uint64_t sub_100F950D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972617262696CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6472616F62 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100F951FC(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v5 = a1;
  if (a3 <= 1u)
  {
    if (a3)
    {
      v24 = [objc_opt_self() mainBundle];
      v25 = String._bridgeToObjectiveC()();
      v26 = String._bridgeToObjectiveC()();
      v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v5 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_58;
        }
      }

      else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      if ((v5 & 0xC000000000000001) == 0)
      {
        if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_23:
          v28 = *(v5 + 32);
          goto LABEL_24;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_35;
      }
    }

    else
    {
      v10 = [objc_opt_self() mainBundle];
      v11 = String._bridgeToObjectiveC()();
      v12 = String._bridgeToObjectiveC()();
      v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v5 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_58;
        }
      }

      else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      if ((v5 & 0xC000000000000001) == 0)
      {
        if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        __break(1u);
        goto LABEL_63;
      }
    }

    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
    v29 = v28;
    v30 = [v28 displayName];

    if (v30)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      sub_1005B981C(&qword_1019F54E0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_10146C6B0;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_1000053B0();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
LABEL_26:
      v35 = String.init(format:_:)();
LABEL_27:

      return v35;
    }

LABEL_58:

    return 0;
  }

  if (a3 == 2)
  {
    v6 = [objc_opt_self() mainBundle];
    v76 = 0x80000001015B54D0;
    v7 = 0xD000000000000017;
    v8 = 0x80000001015B54B0;
    v9 = 0xD00000000000003FLL;
    goto LABEL_12;
  }

  if (a3 == 3)
  {
    v6 = [objc_opt_self() mainBundle];
    v76 = 0x80000001015B5470;
    v7 = 0xD000000000000015;
    v8 = 0x80000001015B5450;
    v9 = 0xD00000000000003DLL;
LABEL_12:
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v6, v14, *&v9);

    sub_1005B981C(&qword_1019F54E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10146C6B0;
    if (v5 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 56) = &type metadata for Int;
    *(v15 + 64) = &protocol witness table for Int;
    *(v15 + 32) = v16;
    goto LABEL_26;
  }

  v3 = a2;
  if (a1 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  v4 = &selRef_isEnumeratingForUserSearch;
  if (v17 >= 2)
  {
    v19 = [objc_opt_self() mainBundle];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v18 = &selRef_isEnumeratingForUserSearch;
    v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B981C(&qword_1019F54E0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10146C6B0;
    *(v23 + 56) = &type metadata for Int;
    *(v23 + 64) = &protocol witness table for Int;
    *(v23 + 32) = v17;
    goto LABEL_37;
  }

  v36 = [objc_opt_self() mainBundle];
  v37 = String._bridgeToObjectiveC()();
  v38 = String._bridgeToObjectiveC()();
  v39 = [v36 localizedStringForKey:v37 value:v38 table:0];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_58;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_58;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_64;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_66:
    v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_48:
    v61 = v60;
    v62 = [v60 displayName];

    if (v62)
    {
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      sub_1005B981C(&qword_1019F54E0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_10146C6B0;
      *(v66 + 56) = &type metadata for String;
      *(v66 + 64) = sub_1000053B0();
      *(v66 + 32) = v63;
      *(v66 + 40) = v65;
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  v41 = *(v5 + 32);
LABEL_35:
  v42 = v41;
  v43 = [v41 displayName];

  if (!v43)
  {
    goto LABEL_58;
  }

  v18 = v4;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  sub_1005B981C(&qword_1019F54E0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10146C6B0;
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = sub_1000053B0();
  *(v47 + 32) = v44;
  *(v47 + 40) = v46;
LABEL_37:
  v40 = String.init(format:_:)();
  v5 = v48;

  if (v3 >> 62)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = [objc_opt_self() mainBundle];
  if (v49 >= 2)
  {
    v51 = String._bridgeToObjectiveC()();
    v52 = String._bridgeToObjectiveC()();
    v53 = [v50 v18[489]];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B981C(&qword_1019F54E0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10146C6B0;
    *(v54 + 56) = &type metadata for Int;
    *(v54 + 64) = &protocol witness table for Int;
    *(v54 + 32) = v49;
LABEL_50:
    v67 = String.init(format:_:)();
    v69 = v68;

    v70 = [objc_opt_self() mainBundle];
    v71 = String._bridgeToObjectiveC()();
    v72 = String._bridgeToObjectiveC()();
    v73 = [v70 v18[489]];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B981C(&qword_1019F54E0);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_10146BDE0;
    *(v74 + 56) = &type metadata for String;
    v75 = sub_1000053B0();
    *(v74 + 32) = v40;
    *(v74 + 40) = v5;
    *(v74 + 96) = &type metadata for String;
    *(v74 + 104) = v75;
    *(v74 + 64) = v75;
    *(v74 + 72) = v67;
    *(v74 + 80) = v69;
    v35 = static String.localizedStringWithFormat(_:_:)();

    goto LABEL_27;
  }

  v55 = String._bridgeToObjectiveC()();
  v56 = String._bridgeToObjectiveC()();
  v57 = [v50 v18[489]];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v58 = v3;
    if (!result)
    {
LABEL_51:

      goto LABEL_58;
    }
  }

  else
  {
    v58 = v3;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_51;
    }
  }

  if ((v58 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v60 = *(v58 + 32);
    goto LABEL_48;
  }

  __break(1u);
  return result;
}

id sub_100F95D3C()
{
  v1 = OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi__cachedAccessoryView;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi__cachedAccessoryView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi__cachedAccessoryView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi_event + 16);
    if ((v4 - 2) >= 3)
    {
      if (*(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi_event + 16))
      {
        v5 = 0xD000000000000015;
        v6 = 0x80000001015B5510;
        LOBYTE(v4) = 1;
      }

      else
      {
        v6 = 0x80000001015B5530;
        v5 = 0xD000000000000013;
      }
    }

    else
    {
      v5 = 0xD000000000000019;
      v6 = 0x800000010156AAE0;
    }

    v7 = sub_100F96094(v5, v6, *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi_event), *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi_event + 8), v4);
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_100F95E1C()
{
  sub_100F96038(*(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi_event), *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi_event + 8), *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi_event + 16));
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi__cachedAccessoryView);
}

id sub_100F95E64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCollaboratorStatusHUDController_mi();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCollaboratorStatusHUDController_mi()
{
  result = qword_101A25028;
  if (!qword_101A25028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F95F9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100F95FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_100F96038(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 < 4u)
  {
  }

  if (a3 == 4)
  {
  }

  return result;
}

id sub_100F96094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 imageNamed:v6];

  if (!v8)
  {
    v9 = String._bridgeToObjectiveC()();
    v8 = [v7 systemImageNamed:v9];
  }

  v10 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 22.0, 22.0}];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setContentMode:4];

  [v10 setImage:v8];
  v11 = [objc_opt_self() *off_1018AB280[a5]];
  v12 = [objc_opt_self() configurationWithHierarchicalColor:v11];
  [v10 setPreferredSymbolConfiguration:v12];

  return v10;
}

uint64_t sub_100F96228()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator__lastPencilModeType) >= 3uLL)
  {
    type metadata accessor for CRLiOSPencilModeType(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator__lastPencilModeType);
    v8 = 0;
    v9 = _swiftEmptyDictionarySingleton;
    type metadata accessor for CRContext();
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    v1 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
    sub_100F97230(v5);
    if (qword_1019F1520 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v2, qword_101AD6348);
    sub_100F971DC();
    v3 = CRValue.serializedData(_:version:)();

    return v3;
  }

  return result;
}

unint64_t sub_100F966F4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_100F96730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000012 && 0x800000010156D710 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_100F96824(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F97468();
  v5 = sub_100F974C0();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100F9687C(uint64_t a1)
{
  v2 = sub_100F974C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F968B8(uint64_t a1)
{
  v2 = sub_100F974C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F968F4(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_1005B981C(&qword_101A250C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100020E58(a1, a1[3]);
  sub_100F974C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1005B981C(&qword_101A250B0);
  sub_100F979A4(&qword_101A250C8);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100F96AFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100F97780(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100F96B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F97A14();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100F96BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F97A14();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100F96BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100F971DC();
  v7 = sub_100F97A68();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100F96C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F97A14();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100F96D50(uint64_t a1)
{
  v2 = sub_100F97630();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100F96D9C(uint64_t a1, unint64_t a2)
{
  sub_100024E98(a1, a2);
  sub_100F971DC();
  CRValue.init(serializedData:)();
  if (v5 != 255 && (v5 & 1) == 0 && v4)
  {
    if (v4 == 1)
    {
      v2 = v4;
    }

    else
    {
      v2 = 2;
    }

    CRLiOSPencilMediator.setNextPencilModeType(_:)(v2);
  }
}

unint64_t sub_100F971DC()
{
  result = qword_101A25038;
  if (!qword_101A25038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25038);
  }

  return result;
}

uint64_t sub_100F97230(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A07B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100F972AC()
{
  result = qword_101A25040;
  if (!qword_101A25040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25040);
  }

  return result;
}

unint64_t sub_100F97308()
{
  result = qword_101A25048;
  if (!qword_101A25048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25048);
  }

  return result;
}

unint64_t sub_100F97360()
{
  result = qword_101A25050;
  if (!qword_101A25050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25050);
  }

  return result;
}

unint64_t sub_100F973B8()
{
  result = qword_101A25058;
  if (!qword_101A25058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25058);
  }

  return result;
}

unint64_t sub_100F97410()
{
  result = qword_101A25060;
  if (!qword_101A25060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25060);
  }

  return result;
}

unint64_t sub_100F97468()
{
  result = qword_101A25068;
  if (!qword_101A25068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25068);
  }

  return result;
}

unint64_t sub_100F974C0()
{
  result = qword_101A25070;
  if (!qword_101A25070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25070);
  }

  return result;
}

unint64_t sub_100F97518()
{
  result = qword_101A25078;
  if (!qword_101A25078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25078);
  }

  return result;
}

unint64_t sub_100F97570()
{
  result = qword_101A25080;
  if (!qword_101A25080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25080);
  }

  return result;
}

unint64_t sub_100F975C8()
{
  result = qword_101A25088;
  if (!qword_101A25088)
  {
    sub_1005C4E5C(&qword_101A25090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25088);
  }

  return result;
}

unint64_t sub_100F97630()
{
  result = qword_101A25098;
  if (!qword_101A25098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25098);
  }

  return result;
}

unint64_t sub_100F97688()
{
  result = qword_101A250A0;
  if (!qword_101A250A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A250A0);
  }

  return result;
}

uint64_t sub_100F976DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a2 != -1)
  {
    if (a5 != -1)
    {
      sub_100B4EF30();
      if (static CRExtensible.== infix(_:_:)())
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    v8 = 0;
    return v8 & 1;
  }

  if (a5 != -1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = sub_100B3216C(a3, a6);
  return v8 & 1;
}

uint64_t sub_100F97780(void *a1)
{
  v2 = sub_1005B981C(&qword_101A250A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100F974C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1005B981C(&qword_101A250B0);
  v9 = 0;
  sub_100F979A4(&qword_101A250B8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v6 = v10;
  sub_1005B981C(&unk_101A0D960);
  v9 = 1;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v6;
}

uint64_t sub_100F979A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A250B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100F97A14()
{
  result = qword_101A250D0;
  if (!qword_101A250D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A250D0);
  }

  return result;
}

unint64_t sub_100F97A68()
{
  result = qword_101A250D8;
  if (!qword_101A250D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A250D8);
  }

  return result;
}

unint64_t sub_100F97AD0()
{
  result = qword_101A250E0;
  if (!qword_101A250E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A250E0);
  }

  return result;
}

void sub_100F97B24(char a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v3)
  {
    v4 = v3[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying];
    v3[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying] = 0;
    if (v4 == 1)
    {
      v5 = a1;
      v6 = v3;
      sub_10072A460();

      a1 = v5;
    }
  }

  sub_100F984C4((a1 & 1) == 0);
  if ((*(v2 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState) & 0xFE) == 2)
  {
    v7 = objc_opt_self();

    [v7 cancelPreviousPerformRequestsWithTarget:v2 selector:"hideWithImmediately:" object:0];
  }
}

void sub_100F97BFC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_100729EF8();
    v4 = OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_currentKnobs;
    v5 = swift_beginAccess();
    v6 = *(v2 + v4);
    v32 = v3;
    __chkstk_darwin(v5);
    v31[2] = &v32;

    v7 = sub_100C33540(sub_100F98A78, v31, v6);

    if ((v7 & 1) == 0)
    {
LABEL_22:

      return;
    }

    v8 = [v3 rep];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for CRLUSDZRep(0);
      v10 = swift_dynamicCastClassUnconditional();
      v11 = v9;
      [v10 boundsForStandardKnobs];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [v10 canvas];

      if (v20)
      {
        [v20 viewScale];
        v22 = v21;
      }

      else
      {
        v22 = 1.0;
      }

      sub_10011FFD8(v13, v15, v17, v19, v22);
      v25 = v23 < 174.0 || v24 < 53.0;
      if (!v25 || (v23 >= 53.0 ? (v26 = v24 < 174.0) : (v26 = 1), !v26))
      {
        v27 = v11;
        v11 = v3;
        goto LABEL_21;
      }

      swift_beginAccess();
      v27 = v3;
      v28 = sub_1007E0EEC((v2 + v4));

      v29 = *(v2 + v4);
      if (v29 >> 62)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
        if (v30 >= v28)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30 >= v28)
        {
LABEL_19:
          sub_10067DADC(v28, v30);
          swift_endAccess();
LABEL_21:

          v3 = v11;
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100F97EA4(char a1)
{
  v3 = OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState;
  v4 = v1[OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"hideWithImmediately:" object:0];
      v1[v3] = 2;
      goto LABEL_7;
    }
  }

  else if (v4 - 1 < 2)
  {
    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"hideWithImmediately:" object:0];
    goto LABEL_7;
  }

  sub_100F984C4(0);
LABEL_7:
  if ((a1 & 1) != 0 && v1[v3] - 1 <= 1)
  {
    [v1 performSelector:"hideWithImmediately:" withObject:0 afterDelay:3.25];
    v1[v3] = 3;
  }
}

void sub_100F97F98(char a1)
{
  v2 = OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState;
  if ((v1[OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState] | 4) != 4)
  {
    v4 = OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_currentKnobs;
    swift_beginAccess();
    v5 = *&v1[v4];
    if (!(v5 >> 62))
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

LABEL_4:
      if ((v1[v2] & 0xFE) == 2)
      {
        [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"hideWithImmediately:" object:0];
      }

      v1[v2] = 4;
      v6 = String._bridgeToObjectiveC()();
      v7 = [objc_opt_self() animationWithKeyPath:v6];

      isa = Int._bridgeToObjectiveC()().super.super.isa;
      [v7 setFromValue:isa];

      v9 = Int._bridgeToObjectiveC()().super.super.isa;
      [v7 setToValue:v9];

      v10 = 0.2;
      if (a1)
      {
        v10 = 0.01;
      }

      [v7 setDuration:v10];
      v11 = objc_opt_self();
      [v11 begin];
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      aBlock[4] = sub_100F98A0C;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018AB4C0;
      v13 = _Block_copy(aBlock);
      v14 = v1;

      [v11 setCompletionBlock:v13];
      _Block_release(v13);
      v15 = *&v1[v4];
      if (v15 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
LABEL_10:
          v25 = v11;
          if (v16 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v16; ++i)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            v20 = [v18 renderable];
            if (v20)
            {
              v21 = v20;
              [v20 setOpacity:0.0];
            }

            v22 = [v19 renderable];
            if (v22)
            {
              v23 = v22;
              v24 = String._bridgeToObjectiveC()();
              [v23 addAnimation:v7 forKey:v24];
            }
          }

          v11 = v25;
        }
      }

      [v11 commit];

      return;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }
}

uint64_t sub_100F98338(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState) == 4)
  {
    *(result + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState) = 0;
    v1 = OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_currentKnobs;
    v2 = result;
    result = swift_beginAccess();
    v3 = *(v2 + v1);
    if (v3 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        return result;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        v8 = [v6 renderable];
        if (v8)
        {
          v9 = v8;
          [v8 setHidden:1];
        }
      }
    }
  }

  return result;
}

void sub_100F984C4(char a1)
{
  v3 = OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_currentKnobs;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (!(v4 >> 62))
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    if ((v1[OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState] | 4) != 4)
    {
      return;
    }

    v1[OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState] = 1;
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() animationWithKeyPath:v5];

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v6 setFromValue:isa];

    v8 = Int._bridgeToObjectiveC()().super.super.isa;
    [v6 setToValue:v8];

    v9 = 0.2;
    if (a1)
    {
      v9 = 0.01;
    }

    [v6 setDuration:v9];
    v10 = objc_opt_self();
    [v10 begin];
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    aBlock[4] = sub_100F989F4;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018AB470;
    v12 = _Block_copy(aBlock);
    v13 = v1;

    [v10 setCompletionBlock:v12];
    _Block_release(v12);
    v14 = *&v1[v3];
    if (v14 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (v15)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_8:
        if (v15 < 1)
        {
          __break(1u);
          return;
        }

        v27 = v10;

        for (i = 0; i != v15; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v17 = *(v14 + 8 * i + 32);
          }

          v18 = v17;
          v19 = [v17 renderable];
          if (v19)
          {
            LODWORD(v20) = 1.0;
            v21 = v19;
            [v19 setOpacity:v20];
          }

          v22 = [v18 renderable];
          if (v22)
          {
            v23 = v22;
            [v22 setHidden:0];
          }

          v24 = [v18 renderable];
          if (v24)
          {
            v25 = v24;
            v26 = String._bridgeToObjectiveC()();
            [v25 addAnimation:v6 forKey:v26];
          }
        }

        v10 = v27;
      }
    }

    [v10 commit];

    return;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_3;
  }
}

id sub_100F988D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDZKnobController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100F989A0()
{
  result = qword_101A25130;
  if (!qword_101A25130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25130);
  }

  return result;
}

uint64_t sub_100F98AE0(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = a2;
  [a1 boundsForStandardKnobs];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [a1 canvas];
  if (v14)
  {
    v15 = v14;
    [v14 viewScale];
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  sub_10011FFD8(v7, v9, v11, v13, v17);
  v20 = v18;
  v21 = v19;
  if ((v5 | 2) != 2)
  {
    v23 = 0;
    v25 = (v3 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_rotationKnob);
    v24 = 1;
    goto LABEL_11;
  }

  v22 = fmax(v18, v19);
  v23 = v22 >= 68.0;
  v24 = v22 < 68.0;
  v25 = (v3 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_rotationKnob);
  v26 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_rotationKnob);
  if (v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = v22 < 68.0;
  }

  if (!v27)
  {
    v28 = objc_allocWithZone(type metadata accessor for CRLUSDZRotationKnob());
    v29 = sub_101001CB4(a1);
    v30 = *v25;
    *v25 = v29;

    v23 = 1;
LABEL_11:
    v26 = *v25;
  }

  if (v26)
  {
    v31 = [v26 renderable];
    if (v31)
    {
      v32 = v31;
      [v31 setHidden:v24];
    }
  }

  v33 = *v25;
  if (*v25)
  {
    v34 = v5 == 3;
    v35 = v33[OBJC_IVAR____TtC8Freeform19CRLUSDZRotationKnob_isError];
    v33[OBJC_IVAR____TtC8Freeform19CRLUSDZRotationKnob_isError] = v34;
    if (v34 != v35)
    {
      v36 = v33;
      sub_10100209C();
    }
  }

  if ((v5 - 1) > 1)
  {
    goto LABEL_25;
  }

  if (v20 < 174.0 || v21 < 53.0)
  {
    if (v20 >= 53.0)
    {
      v40 = v21 >= 174.0;
      goto LABEL_27;
    }

LABEL_25:
    v40 = 0;
    v38 = (v3 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
    v39 = 1;
LABEL_30:
    v41 = *v38;
    goto LABEL_31;
  }

  v40 = 1;
LABEL_27:
  v38 = (v3 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  v41 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  v39 = !v40;
  if (!v41 && v40)
  {
    v42 = objc_allocWithZone(type metadata accessor for CRLUSDZPlayPauseKnob());
    v43 = sub_100729D50(a1);
    v44 = *v38;
    *v38 = v43;

    v40 = 1;
    goto LABEL_30;
  }

LABEL_31:
  if (v41)
  {
    v45 = [v41 renderable];
    if (v45)
    {
      v46 = v45;
      [v45 setHidden:v39];
    }
  }

  v47 = OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_currentKnobs;
  swift_beginAccess();
  *(v3 + v47) = _swiftEmptyArrayStorage;

  v48 = *v25;
  if (*v25 && v23)
  {
    swift_beginAccess();
    v49 = v48;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v3 + v47) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v47) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v50 = *v38;
  if (*v38 && v40)
  {
    swift_beginAccess();
    v51 = v50;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v3 + v47) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v47) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_100F97BFC();
  }

  return *(v3 + v47);
}

id sub_100F98EF0()
{
  v1 = OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanFromKeyboard;
  result = *(v0 + OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanFromKeyboard);
  if (result)
  {
    result = [result gestureState];
    if (result != 1)
    {
      result = *(v0 + v1);
      if (result)
      {
        return ([result gestureState] == 2);
      }
    }
  }

  return result;
}

void sub_100F98F50(uint64_t a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  sub_100F993E0(&v22);
  v7 = v22;
  if (v22)
  {
    if ((sub_100F98EF0() & 1) == 0)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = [v8 wantsVisibleKeyboard];
        swift_unknownObjectRelease();
        if (v9)
        {
          v10 = OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanFromKeyboard;
          v11 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanFromKeyboard);
          if (!v11)
          {
            goto LABEL_9;
          }

          if (![v11 gestureState])
          {
            v12 = *(a1 + v10);
            if (v12)
            {
LABEL_10:
              [v12 setTargetRep:{v7, v21}];
              v12 = *(a1 + v10);
LABEL_11:
              [v12 gestureBeganAtLocation:{a2, a3}];
              v18 = *(a1 + v10);
              if (!v18 || [v18 gestureState] != 5)
              {

                v20 = a1 + OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanLastKnownPoint;
                *v20 = a2;
                *(v20 + 8) = a3;
                *(v20 + 16) = 0;
                return;
              }

              v19 = *(a1 + v10);
              [v19 reset];

              goto LABEL_14;
            }

LABEL_9:
            v13 = [v21 gestureDispatcher];
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = objc_allocWithZone(CRLBaseGesture);
            v15 = String._bridgeToObjectiveC()();

            v16 = [v14 initWithGestureDispatcher:v13 gestureKind:v15];

            v17 = *(a1 + v10);
            *(a1 + v10) = v16;

            v12 = *(a1 + v10);
            if (!v12)
            {
              goto LABEL_11;
            }

            goto LABEL_10;
          }
        }
      }
    }

LABEL_14:
  }
}

void sub_100F99178(uint64_t a1, double a2, double a3)
{
  sub_100F993E0(&v15);
  v14 = v15;
  if (v15)
  {
    v6 = OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanFromKeyboard;
    v7 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanFromKeyboard);
    if (v7)
    {
      [v7 setTargetRep:v15];
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v9 = [Strong wantsVisibleKeyboard], swift_unknownObjectRelease(), (v9 & 1) != 0) && (v10 = *(a1 + v6)) != 0 && (objc_msgSend(v10, "gestureState") == 1 || (v11 = *(a1 + v6)) != 0 && objc_msgSend(v11, "gestureState") == 2))
    {
      v12 = *(a1 + v6);
      [v12 gestureMovedToLocation:{a2, a3}];

      v13 = a1 + OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanLastKnownPoint;
      *v13 = a2;
      *(v13 + 8) = a3;
      *(v13 + 16) = 0;
    }

    else
    {
    }
  }
}

void sub_100F992C4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanFromKeyboard;
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanFromKeyboard);
  if (v3)
  {
    if ([v3 gestureState] == 1 || (v4 = *(a1 + v2)) != 0 && objc_msgSend(v4, "gestureState") == 2)
    {
      v5 = *(a1 + v2);
      if (v5)
      {
        if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanLastKnownPoint + 16))
        {
          __break(1u);
          return;
        }

        [v5 gestureEndedAtLocation:{*(a1 + OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanLastKnownPoint), *(a1 + OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanLastKnownPoint + 8)}];
        v5 = *(a1 + v2);
      }

      [v5 reset];
      v6 = *(a1 + v2);
      if (v6)
      {
        v7 = [v6 gestureDelegate];
        v6 = *(a1 + v2);
        if (v7)
        {
          v8 = v6;
          [v7 didReset:v8];

          swift_unknownObjectRelease();
          v6 = *(a1 + v2);
        }
      }

      *(a1 + v2) = 0;
    }
  }
}

uint64_t sub_100F993E0@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_18;
  }

  v3 = result;
  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_17;
  }

  type metadata accessor for CRLWPEditor();
  result = swift_dynamicCastClass();
  if (!result)
  {

    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  if (*(*(result + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
  {
    v4 = [v3 repsForInfo:?];
    sub_100006370(0, &qword_1019FB7A0);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v5 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter() == 1)
      {
        goto LABEL_14;
      }
    }

    else if (*(v5 + 16) == 1)
    {
      goto LABEL_14;
    }

    v30 = objc_opt_self();
    v6 = [v30 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31);
    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v10;
    v27 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v13;
    *(inited + 72) = v29;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v27;
    *(inited + 120) = v26;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 94;
    v15 = v31;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v29;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v19, "Should only ever be one editing text rep.", 41, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v22 file:v23 lineNumber:94 isFatal:0 format:v24 args:v21];

LABEL_14:
    v25 = sub_100BC17E0(v5);

    swift_unknownObjectRelease();

    if (v25)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
LABEL_18:
        *a1 = result;
        return result;
      }
    }

LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id sub_100F99968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFloatingCursor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100F99A2C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = type metadata accessor for CRLCanvasLayerAnimationProvider();
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLCanvasLayerAnimation();
  sub_10000630C(v3 + *(v9 + 48), &v56);
  sub_1005B981C(&qword_1019FA4B0);
  if (swift_dynamicCast())
  {
    v58 = v55[0];
    memcpy(v57, &v55[1] + 8, sizeof(v57));
    sub_100F9B5E0(v3, a1);
    *(&v55[1] + 1) = &type metadata for CRLSpringLayerAnimation.Def;
    *&v55[2] = sub_1008DA198();
    v10 = swift_allocObject();
    *&v55[0] = v10;
    *(v10 + 16) = v58;
    *(v10 + 32) = a2;
    memcpy((v10 + 40), v57, 0x124uLL);
    v11 = *(v9 + 48);
    sub_100005070(a1 + v11);
    return sub_100050F74(v55, a1 + v11);
  }

  v53 = a1;
  memset(v55, 0, 304);
  *&v55[19] = 1;
  DWORD2(v55[19]) = 0;
  sub_100F9B644(v55);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v52 = v3;
  sub_100F9B5E0(v3, v8);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(inited + 56) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 32) = v14;
  v54 = inited + 32;
  *(inited + 64) = v17;
  *(inited + 40) = v16;
  v50 = objc_opt_self();
  LODWORD(v3) = [v50 _atomicIncrementAssertCount];
  *&v55[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, v55);
  StaticString.description.getter();
  v18 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v19 = String._bridgeToObjectiveC()();

  v20 = [v19 lastPathComponent];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (qword_1019F20A0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v24 = static OS_os_log.crlAssert;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_10146CA70;
  *(v25 + 56) = &type metadata for Int32;
  *(v25 + 64) = &protocol witness table for Int32;
  *(v25 + 32) = v3;
  v26 = sub_1005CF000();
  *(v25 + 96) = v26;
  v27 = sub_1005CF04C();
  *(v25 + 72) = v18;
  *(v25 + 136) = &type metadata for String;
  *(v25 + 144) = v17;
  *(v25 + 104) = v27;
  *(v25 + 112) = v21;
  *(v25 + 120) = v23;
  *(v25 + 176) = &type metadata for UInt;
  *(v25 + 184) = &protocol witness table for UInt;
  *(v25 + 152) = 153;
  v28 = *&v55[0];
  *(v25 + 216) = v26;
  *(v25 + 224) = v27;
  *(v25 + 192) = v28;
  v29 = v18;
  v30 = v28;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v25);
  swift_setDeallocating();
  v49 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v32, "Incorrect API usage. Tried to call mass() modifier on a non-spring layer animation %@.", 86, 2, inited);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v3 = v18 + 3;
  v18[4] = 0;
  v18[5] = 0;
  v51 = inited;
  v23 = *(inited + 16);
  if (!v23)
  {
LABEL_28:
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v46 file:v47 lineNumber:153 isFatal:0 format:v48 args:v45];

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_100F9B5E0(v52, v53);
  }

  inited = 0;
  v17 = 40;
  while (1)
  {
    sub_100020E58((v54 + 40 * inited), *(v54 + 40 * inited + 24));
    v33 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v21 = *v3;
    v34 = *(v33 + 16);
    v35 = __OFADD__(*v3, v34);
    v36 = *v3 + v34;
    if (v35)
    {
      goto LABEL_30;
    }

    v37 = v33;
    v38 = v18[4];
    if (v38 >= v36)
    {
      goto LABEL_21;
    }

    if (v38 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v39 = v18[5];
    if (2 * v38 > v36)
    {
      v36 = 2 * v38;
    }

    v18[4] = v36;
    if ((v36 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    result = swift_slowAlloc();
    v18[5] = result;
    if (v39)
    {
      if (result != v39 || result >= &v39[8 * v21])
      {
        memmove(result, v39, 8 * v21);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_21:
      result = v18[5];
    }

    if (!result)
    {
      break;
    }

    v41 = *(v37 + 16);
    if (v41)
    {
      v42 = (v37 + 32);
      v43 = *v3;
      while (1)
      {
        v44 = *v42++;
        *&result[8 * v43] = v44;
        v43 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v43;
        if (!--v41)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    if (++inited == v23)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

char *sub_100F9A0F0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = type metadata accessor for CRLCanvasLayerAnimationProvider();
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLCanvasLayerAnimation();
  sub_10000630C(v3 + *(v9 + 48), &v58);
  sub_1005B981C(&qword_1019FA4B0);
  if (swift_dynamicCast())
  {
    v60 = v55;
    v61 = v56;
    memcpy(v59, v57, sizeof(v59));
    sub_100F9B5E0(v3, a1);
    *(&v56 + 1) = &type metadata for CRLSpringLayerAnimation.Def;
    v57[0] = sub_1008DA198();
    v10 = swift_allocObject();
    *&v55 = v10;
    *(v10 + 16) = v60;
    *(v10 + 32) = v61;
    *(v10 + 40) = a2;
    memcpy((v10 + 48), v59, 0x11CuLL);
    v11 = *(v9 + 48);
    sub_100005070(a1 + v11);
    return sub_100050F74(&v55, a1 + v11);
  }

  v53 = a1;
  v56 = 0u;
  memset(v57, 0, 272);
  v55 = 0u;
  v57[34] = 1;
  LODWORD(v57[35]) = 0;
  sub_100F9B644(&v55);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v52 = v3;
  sub_100F9B5E0(v3, v8);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(inited + 56) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 32) = v14;
  v54 = inited + 32;
  *(inited + 64) = v17;
  *(inited + 40) = v16;
  v50 = objc_opt_self();
  LODWORD(v3) = [v50 _atomicIncrementAssertCount];
  *&v55 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v55);
  StaticString.description.getter();
  v18 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v19 = String._bridgeToObjectiveC()();

  v20 = [v19 lastPathComponent];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (qword_1019F20A0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v24 = static OS_os_log.crlAssert;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_10146CA70;
  *(v25 + 56) = &type metadata for Int32;
  *(v25 + 64) = &protocol witness table for Int32;
  *(v25 + 32) = v3;
  v26 = sub_1005CF000();
  *(v25 + 96) = v26;
  v27 = sub_1005CF04C();
  *(v25 + 72) = v18;
  *(v25 + 136) = &type metadata for String;
  *(v25 + 144) = v17;
  *(v25 + 104) = v27;
  *(v25 + 112) = v21;
  *(v25 + 120) = v23;
  *(v25 + 176) = &type metadata for UInt;
  *(v25 + 184) = &protocol witness table for UInt;
  *(v25 + 152) = 168;
  v28 = v55;
  *(v25 + 216) = v26;
  *(v25 + 224) = v27;
  *(v25 + 192) = v28;
  v29 = v18;
  v30 = v28;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v25);
  swift_setDeallocating();
  v49 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v32, "Incorrect API usage. Tried to call damping() modifier on a non-spring layer animation %@.", 89, 2, inited);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v3 = v18 + 3;
  v18[4] = 0;
  v18[5] = 0;
  v51 = inited;
  v23 = *(inited + 16);
  if (!v23)
  {
LABEL_28:
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v46 file:v47 lineNumber:168 isFatal:0 format:v48 args:v45];

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_100F9B5E0(v52, v53);
  }

  inited = 0;
  v17 = 40;
  while (1)
  {
    sub_100020E58((v54 + 40 * inited), *(v54 + 40 * inited + 24));
    v33 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v21 = *v3;
    v34 = *(v33 + 16);
    v35 = __OFADD__(*v3, v34);
    v36 = *v3 + v34;
    if (v35)
    {
      goto LABEL_30;
    }

    v37 = v33;
    v38 = v18[4];
    if (v38 >= v36)
    {
      goto LABEL_21;
    }

    if (v38 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v39 = v18[5];
    if (2 * v38 > v36)
    {
      v36 = 2 * v38;
    }

    v18[4] = v36;
    if ((v36 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    result = swift_slowAlloc();
    v18[5] = result;
    if (v39)
    {
      if (result != v39 || result >= &v39[8 * v21])
      {
        memmove(result, v39, 8 * v21);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_21:
      result = v18[5];
    }

    if (!result)
    {
      break;
    }

    v41 = *(v37 + 16);
    if (v41)
    {
      v42 = (v37 + 32);
      v43 = *v3;
      while (1)
      {
        v44 = *v42++;
        *&result[8 * v43] = v44;
        v43 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v43;
        if (!--v41)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    if (++inited == v23)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

char *sub_100F9A7C4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = type metadata accessor for CRLCanvasLayerAnimationProvider();
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLCanvasLayerAnimation();
  sub_10000630C(v3 + *(v9 + 48), &v56);
  sub_1005B981C(&qword_1019FA4B0);
  if (swift_dynamicCast())
  {
    memcpy(v57, v55 + 8, sizeof(v57));
    sub_100F9B5E0(v3, a1);
    *(&v55[1] + 1) = &type metadata for CRLSpringLayerAnimation.Def;
    *&v55[2] = sub_1008DA198();
    v10 = swift_allocObject();
    *&v55[0] = v10;
    *(v10 + 16) = a2;
    memcpy((v10 + 24), v57, 0x134uLL);
    v11 = *(v9 + 48);
    sub_100005070(a1 + v11);
    return sub_100050F74(v55, a1 + v11);
  }

  v53 = a1;
  memset(v55, 0, 304);
  *&v55[19] = 1;
  DWORD2(v55[19]) = 0;
  sub_100F9B644(v55);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v52 = v3;
  sub_100F9B5E0(v3, v8);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(inited + 56) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 32) = v14;
  v54 = inited + 32;
  *(inited + 64) = v17;
  *(inited + 40) = v16;
  v50 = objc_opt_self();
  LODWORD(v3) = [v50 _atomicIncrementAssertCount];
  *&v55[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, v55);
  StaticString.description.getter();
  v18 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v19 = String._bridgeToObjectiveC()();

  v20 = [v19 lastPathComponent];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (qword_1019F20A0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v24 = static OS_os_log.crlAssert;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_10146CA70;
  *(v25 + 56) = &type metadata for Int32;
  *(v25 + 64) = &protocol witness table for Int32;
  *(v25 + 32) = v3;
  v26 = sub_1005CF000();
  *(v25 + 96) = v26;
  v27 = sub_1005CF04C();
  *(v25 + 72) = v18;
  *(v25 + 136) = &type metadata for String;
  *(v25 + 144) = v17;
  *(v25 + 104) = v27;
  *(v25 + 112) = v21;
  *(v25 + 120) = v23;
  *(v25 + 176) = &type metadata for UInt;
  *(v25 + 184) = &protocol witness table for UInt;
  *(v25 + 152) = 123;
  v28 = *&v55[0];
  *(v25 + 216) = v26;
  *(v25 + 224) = v27;
  *(v25 + 192) = v28;
  v29 = v18;
  v30 = v28;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v25);
  swift_setDeallocating();
  v49 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v32, "Incorrect API usage. Tried to call damping() modifier on a non-spring layer animation %@.", 89, 2, inited);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v3 = v18 + 3;
  v18[4] = 0;
  v18[5] = 0;
  v51 = inited;
  v23 = *(inited + 16);
  if (!v23)
  {
LABEL_28:
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v46 file:v47 lineNumber:123 isFatal:0 format:v48 args:v45];

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_100F9B5E0(v52, v53);
  }

  inited = 0;
  v17 = 40;
  while (1)
  {
    sub_100020E58((v54 + 40 * inited), *(v54 + 40 * inited + 24));
    v33 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v21 = *v3;
    v34 = *(v33 + 16);
    v35 = __OFADD__(*v3, v34);
    v36 = *v3 + v34;
    if (v35)
    {
      goto LABEL_30;
    }

    v37 = v33;
    v38 = v18[4];
    if (v38 >= v36)
    {
      goto LABEL_21;
    }

    if (v38 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v39 = v18[5];
    if (2 * v38 > v36)
    {
      v36 = 2 * v38;
    }

    v18[4] = v36;
    if ((v36 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    result = swift_slowAlloc();
    v18[5] = result;
    if (v39)
    {
      if (result != v39 || result >= &v39[8 * v21])
      {
        memmove(result, v39, 8 * v21);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_21:
      result = v18[5];
    }

    if (!result)
    {
      break;
    }

    v41 = *(v37 + 16);
    if (v41)
    {
      v42 = (v37 + 32);
      v43 = *v3;
      while (1)
      {
        v44 = *v42++;
        *&result[8 * v43] = v44;
        v43 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v43;
        if (!--v41)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    if (++inited == v23)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

char *sub_100F9AE78@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = type metadata accessor for CRLCanvasLayerAnimationProvider();
  __chkstk_darwin(v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLCanvasLayerAnimation();
  sub_10000630C(v3 + *(v9 + 48), &v58);
  sub_1005B981C(&qword_1019FA4B0);
  if (swift_dynamicCast())
  {
    v10 = v56;
    memcpy(v59, v57, sizeof(v59));
    sub_100F9B5E0(v3, a1);
    v57[1] = &type metadata for CRLSpringLayerAnimation.Def;
    v57[2] = sub_1008DA198();
    v11 = swift_allocObject();
    *&v56 = v11;
    *(v11 + 16) = v10;
    *(v11 + 24) = a2;
    memcpy((v11 + 32), v59, 0x12CuLL);
    v12 = *(v9 + 48);
    sub_100005070(a1 + v12);
    return sub_100050F74(&v56, a1 + v12);
  }

  v54 = a1;
  memset(v57, 0, 288);
  v56 = 0u;
  v57[36] = 1;
  LODWORD(v57[37]) = 0;
  sub_100F9B644(&v56);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v53 = v3;
  sub_100F9B5E0(v3, v8);
  v15 = String.init<A>(describing:)();
  v17 = v16;
  *(inited + 56) = &type metadata for String;
  v18 = sub_1000053B0();
  *(inited + 32) = v15;
  v55 = inited + 32;
  *(inited + 64) = v18;
  *(inited + 40) = v17;
  v51 = objc_opt_self();
  LODWORD(v3) = [v51 _atomicIncrementAssertCount];
  *&v56 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v56);
  StaticString.description.getter();
  v19 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  v21 = [v20 lastPathComponent];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (qword_1019F20A0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v25 = static OS_os_log.crlAssert;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_10146CA70;
  *(v26 + 56) = &type metadata for Int32;
  *(v26 + 64) = &protocol witness table for Int32;
  *(v26 + 32) = v3;
  v27 = sub_1005CF000();
  *(v26 + 96) = v27;
  v28 = sub_1005CF04C();
  *(v26 + 72) = v19;
  *(v26 + 136) = &type metadata for String;
  *(v26 + 144) = v18;
  *(v26 + 104) = v28;
  *(v26 + 112) = v22;
  *(v26 + 120) = v24;
  *(v26 + 176) = &type metadata for UInt;
  *(v26 + 184) = &protocol witness table for UInt;
  *(v26 + 152) = 138;
  v29 = v56;
  *(v26 + 216) = v27;
  *(v26 + 224) = v28;
  *(v26 + 192) = v29;
  v30 = v19;
  v31 = v29;
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v26);
  swift_setDeallocating();
  v50 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v33, "Incorrect API usage. Tried to call initialVelocity() modifier on a non-spring layer animation %@.", 97, 2, inited);

  type metadata accessor for __VaListBuilder();
  v19 = swift_allocObject();
  v19[2] = 8;
  v19[3] = 0;
  v3 = v19 + 3;
  v19[4] = 0;
  v19[5] = 0;
  v52 = inited;
  v24 = *(inited + 16);
  if (!v24)
  {
LABEL_28:
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    [v51 handleFailureInFunction:v47 file:v48 lineNumber:138 isFatal:0 format:v49 args:v46];

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_100F9B5E0(v53, v54);
  }

  inited = 0;
  v18 = 40;
  while (1)
  {
    sub_100020E58((v55 + 40 * inited), *(v55 + 40 * inited + 24));
    v34 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v22 = *v3;
    v35 = *(v34 + 16);
    v36 = __OFADD__(*v3, v35);
    v37 = *v3 + v35;
    if (v36)
    {
      goto LABEL_30;
    }

    v38 = v34;
    v39 = v19[4];
    if (v39 >= v37)
    {
      goto LABEL_21;
    }

    if (v39 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v40 = v19[5];
    if (2 * v39 > v37)
    {
      v37 = 2 * v39;
    }

    v19[4] = v37;
    if ((v37 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    result = swift_slowAlloc();
    v19[5] = result;
    if (v40)
    {
      if (result != v40 || result >= &v40[8 * v22])
      {
        memmove(result, v40, 8 * v22);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_21:
      result = v19[5];
    }

    if (!result)
    {
      break;
    }

    v42 = *(v38 + 16);
    if (v42)
    {
      v43 = (v38 + 32);
      v44 = *v3;
      while (1)
      {
        v45 = *v43++;
        *&result[8 * v44] = v45;
        v44 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v44;
        if (!--v42)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    if (++inited == v24)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100F9B530@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_100F9B5E0(v2, a1);
  v5 = a1 + *(type metadata accessor for CRLCanvasLayerAnimation() + 48);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  sub_10002A948(v5, v6);
  v8 = (*(*(v7 + 32) + 24))(v11, v6);
  *v9 = *v9 + a2;
  return v8(v11, 0);
}

uint64_t sub_100F9B5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLCanvasLayerAnimationProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F9B644(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A00A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100F9B6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  type metadata accessor for UUID();
  v6[25] = swift_task_alloc();

  return _swift_task_switch(sub_100F9B744, 0, 0);
}

uint64_t sub_100F9B744()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[19];
  UUID.init()();
  sub_10084BD4C(v2, 0, 0xE000000000000000, v3);
  v4 = sub_100F9E50C(v3);
  v0[26] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100F9B89C;
  v5 = swift_continuation_init();
  v0[17] = sub_1005B981C(&qword_101A25190);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = *"";
  v0[12] = sub_100843BE0;
  v0[13] = &unk_1018AB5A0;
  v0[14] = v5;
  [v1 saveRecordZone:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100F9B89C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_100F9BC40;
  }

  else
  {
    v2 = sub_100F9B9AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F9B9AC()
{
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v4 = *(v0 + 152);

  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  *(v1 + 48) = vextq_s8(v4, v4, 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_100F9BAB8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v2, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1014BCE58, v1, &type metadata for () + 8);
}

uint64_t sub_100F9BAB8()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100F9BCC4;
  }

  else
  {

    v2 = sub_100F9BBD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F9BBD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F9BC40()
{
  v1 = v0[26];
  swift_willThrow();

  sub_100086F34(v0[19]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100F9BCC4()
{

  sub_100086F34(*(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F9BD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[87] = a8;
  v8[86] = a7;
  v8[85] = a6;
  v8[84] = a5;
  v8[83] = a4;
  v8[82] = a3;
  v8[81] = a2;
  sub_1005B981C(&qword_1019FB750);
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v8[90] = v9;
  v8[91] = *(v9 - 8);
  v8[92] = swift_task_alloc();

  return _swift_task_switch(sub_100F9BE64, 0, 0);
}

Swift::Int sub_100F9BE64()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 656);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1005B981C(&qword_101A25198);
  OS_dispatch_queue.sync<A>(execute:)();

  v4 = *(v0 + 600);
  *(v0 + 744) = v4;
  if (!v4)
  {
    sub_100F9EBF8();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    goto LABEL_4;
  }

  v5 = *(v0 + 688);
  v6 = *(v0 + 656);
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1005B981C(&qword_101A21EB0);
  OS_dispatch_queue.sync<A>(execute:)();
  v9 = *(v0 + 688);
  v10 = *(v0 + 656);

  v11 = *(v0 + 608);
  v12 = swift_task_alloc();
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  sub_1005B981C(&qword_101A251A8);
  OS_dispatch_queue.sync<A>(execute:)();
  v15 = *(v0 + 696);

  v16 = *(v0 + 616);
  *(v0 + 624) = _swiftEmptyArrayStorage;

  v18 = sub_100A1E27C(v17, &off_1018A82C8, v15);

  v171 = v16;
  v179 = (v0 + 664);
  v197 = v0;
  if (!v18)
  {

    v49 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

  v165 = v18;
  if (v11 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v180 = (v0 + 624);
    if (!i)
    {
      break;
    }

    v20 = 0;
    v21 = *(v0 + 728);
    v22 = *(v0 + 656);
    v23 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v24 = *(v22 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock);
    v189 = v11 & 0xC000000000000001;
    v166 = v11 & 0xFFFFFFFFFFFFFF8;
    v169 = (v21 + 16);
    v170 = (v21 + 8);
    v174 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v176 = v22;
    v173 = v24;
    v184 = v11;
    v168 = i;
    while (1)
    {
      if (v189)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v166 + 16))
        {
          goto LABEL_57;
        }

        v33 = *(v11 + 8 * v20 + 32);
      }

      if (__OFADD__(v20, 1))
      {
        break;
      }

      v34 = i;
      v193 = v20 + 1;
      os_unfair_lock_lock(*(v24 + 16));
      v35 = *(v22 + v23);
      if (v35)
      {
        v36 = *(v22 + v23);
      }

      else
      {
        v37 = *(v197 + 656);
        v38 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
        v39 = v23;
        v40 = v37;
        v41 = sub_10001F1A0(v40);

        v42 = *(v22 + v39);
        *(v22 + v39) = v41;
        v24 = v173;
        v36 = v41;

        v35 = 0;
      }

      v43 = *(v24 + 16);
      v44 = v35;
      os_unfair_lock_unlock(v43);
      LOBYTE(v43) = sub_101089A84(v33);

      if (v43)
      {
        if (qword_1019F2168 != -1)
        {
          swift_once();
        }

        v0 = v197;
        v25 = *(v197 + 736);
        v26 = *(v197 + 720);
        v27 = static OS_os_log.crlSendACopy;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        (*v169)(v25, v33 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, v26);
        v29 = UUID.uuidString.getter();
        v31 = v30;
        (*v170)(v25, v26);
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v29;
        *(inited + 40) = v31;
        v32 = static os_log_type_t.default.getter();
        sub_100005404(v27, &_mh_execute_header, v32, "Skipping item %{public}@ due to checkIfAssetIsStillDownloading being true", 73, 2, inited);

        swift_setDeallocating();
        sub_100005070(inited + 32);
        v11 = v184;
        i = v168;
        v24 = v173;
      }

      else
      {
        v45 = *(v197 + 696);

        v47 = sub_100A1E27C(v46, &off_1018A8400, v45);

        if (!v47)
        {

          if (qword_1019F2168 != -1)
          {
            swift_once();
          }

          v0 = v197;
          v62 = *(v197 + 736);
          v63 = *(v197 + 720);
          v64 = static OS_os_log.crlSendACopy;
          sub_1005B981C(&qword_1019F54E0);
          v65 = swift_initStackObject();
          *(v65 + 16) = xmmword_10146C6B0;
          (*v169)(v62, v33 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, v63);
          v66 = UUID.uuidString.getter();
          v68 = v67;
          (*v170)(v62, v63);
          *(v65 + 56) = &type metadata for String;
          *(v65 + 64) = sub_1000053B0();
          *(v65 + 32) = v66;
          *(v65 + 40) = v68;
          v69 = static os_log_type_t.error.getter();
          sub_100005404(v64, &_mh_execute_header, v69, "Upload failed to create board item %{public}@", 45, 2, v65);
          swift_setDeallocating();
          sub_100005070(v65 + 32);
          sub_100F9EBF8();
          swift_allocError();
          *v70 = 4;
          swift_willThrow();

          goto LABEL_4;
        }

        v48 = v47;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        i = v34;
        v11 = v184;
      }

      ++v20;
      v23 = v174;
      v22 = v176;
      if (v193 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

LABEL_30:

  v50 = v171;
  if (v171 >> 62)
  {
    v51 = _CocoaArrayWrapper.endIndex.getter();
    v50 = v171;
    if (v51)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

  v51 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v51)
  {
LABEL_60:

    v81 = v165;
    v82 = v180;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v82 = v180;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v49 = *v82;
    v0 = v197;
LABEL_63:
    v83 = v49 >> 62;
    if (v49 >> 62)
    {
      goto LABEL_219;
    }

    v191 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_65:
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v84 = static OS_os_log.crlSendACopy;
    *(v0 + 752) = static OS_os_log.crlSendACopy;
    *(v0 + 760) = sub_1005B981C(&qword_1019F54E0);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_10146C6B0;
    *(v0 + 632) = v191;
    v86 = dispatch thunk of CustomStringConvertible.description.getter();
    v88 = v87;
    *(v85 + 56) = &type metadata for String;
    v89 = sub_1000053B0();
    *(v0 + 768) = v89;
    v164 = v89;
    *(v85 + 64) = v89;
    *(v85 + 32) = v86;
    *(v85 + 40) = v88;
    v90 = static os_log_type_t.default.getter();
    sub_100005404(v84, &_mh_execute_header, v90, "Starting to upload [%{public}@] records to public publicDatabase", 64, 2, v85);
    swift_setDeallocating();
    sub_100005070(v85 + 32);
    if (v191 < 1)
    {
      v92 = 0;
    }

    else
    {
      v91 = 0;
      v92 = 0;
      do
      {
        ++v92;
        v93 = v91 + 50;
        if (__OFADD__(v91, 50))
        {
          break;
        }

        v91 += 50;
      }

      while (v93 < v191);
    }

    result = sub_100776D24(0, v92, 0);
    v94 = _swiftEmptyArrayStorage;
    v181 = v83;
    v167 = v84;
    if (v92)
    {
      if (v83)
      {
        v182 = _CocoaArrayWrapper.endIndex.getter();
        v178 = _CocoaArrayWrapper.endIndex.getter();
        v175 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v175 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v178 = v175;
        v182 = v175;
      }

      v145 = 0;
      v146 = 0;
      v172 = v92;
      while (1)
      {
        if (v146 >= v191)
        {
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          v191 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_65;
        }

        v147 = 0x7FFFFFFFFFFFFFFFLL;
        if (!__OFADD__(v146, 50))
        {
          v147 = v146 + 50;
        }

        if (v146 > 0x7FFFFFFFFFFFFFCDLL)
        {
          goto LABEL_204;
        }

        if (v182 >= v146 + 50)
        {
          v148 = v146 + 50;
        }

        else
        {
          v148 = v182;
        }

        if (v148 < v146)
        {
          goto LABEL_205;
        }

        if (v178 < v146)
        {
          goto LABEL_206;
        }

        if (v146 < 0)
        {
          goto LABEL_207;
        }

        if (v175 < v148)
        {
          goto LABEL_208;
        }

        v188 = v147;
        if ((v49 & 0xC000000000000001) == 0 || v146 == v148)
        {

          v196 = v94;
          if (!v83)
          {
            goto LABEL_171;
          }
        }

        else
        {
          if (v146 >= v148)
          {
            goto LABEL_215;
          }

          sub_100006370(0, &unk_101A22DC0);

          result = v146;
          do
          {
            v149 = result + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(result);
            result = v149;
          }

          while (v148 != v149);
          v196 = v94;
          if (!v83)
          {
LABEL_171:
            v150 = (2 * v148) | 1;
            if ((v150 & 1) == 0)
            {
              goto LABEL_183;
            }

            goto LABEL_172;
          }
        }

        result = _CocoaArrayWrapper.subscript.getter();
        v146 = v158;
        v150 = v159;
        if ((v159 & 1) == 0)
        {
LABEL_183:
          v152 = v150 >> 1;
          v110 = __OFSUB__(v150 >> 1, v146);
          v154 = (v150 >> 1) - v146;
          v160 = v110;
          if (v160)
          {
LABEL_202:
            __break(1u);
            goto LABEL_203;
          }

LABEL_187:
          if (v154)
          {
            v157 = v172;
            if (v154 < 1)
            {
              v156 = _swiftEmptyArrayStorage;
            }

            else
            {
              sub_1005B981C(&unk_1019F4D60);
              v156 = swift_allocObject();
              result = j__malloc_size_1(v156);
              v83 = v181;
              v161 = result - 32;
              if (result < 32)
              {
                v161 = result - 25;
              }

              v156[2] = v154;
              v156[3] = (2 * (v161 >> 3)) | 1;
            }

            if (v146 == v152)
            {
              goto LABEL_221;
            }

            sub_100006370(0, &unk_101A22DC0);
            swift_arrayInitWithCopy();
          }

          else
          {
            v156 = _swiftEmptyArrayStorage;
            v157 = v172;
          }

LABEL_196:
          result = swift_unknownObjectRelease();
          goto LABEL_197;
        }

LABEL_172:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v151 = swift_dynamicCastClass();
        if (!v151)
        {
          swift_unknownObjectRelease();
          v151 = _swiftEmptyArrayStorage;
        }

        v83 = v151[2];

        v152 = v150 >> 1;
        v153 = __OFSUB__(v150 >> 1, v146);
        v154 = (v150 >> 1) - v146;
        v155 = v153;
        if (v153)
        {
          goto LABEL_216;
        }

        if (v83 != v154)
        {
          result = swift_unknownObjectRelease();
          v83 = v181;
          if (v155)
          {
            goto LABEL_202;
          }

          goto LABEL_187;
        }

        v156 = swift_dynamicCastClass();
        result = swift_unknownObjectRelease();
        v83 = v181;
        v157 = v172;
        if (!v156)
        {
          v156 = _swiftEmptyArrayStorage;
          goto LABEL_196;
        }

LABEL_197:
        v94 = v196;
        v163 = v196[2];
        v162 = v196[3];
        if (v163 >= v162 >> 1)
        {
          result = sub_100776D24((v162 > 1), v163 + 1, 1);
          v94 = v196;
        }

        ++v145;
        v94[2] = v163 + 1;
        v94[v163 + 4] = v156;
        v95 = v188;
        v146 = v188;
        if (v145 == v157)
        {
          goto LABEL_77;
        }
      }
    }

    v95 = 0;
LABEL_77:
    if (v95 >= v191)
    {
      goto LABEL_137;
    }

    v96 = v49 & 0xFFFFFFFFFFFFFF8;
    v97 = v95;
    v186 = v95;
    while (1)
    {
      v98 = v97 + 50;
      if (__OFADD__(v97, 50))
      {
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
        return result;
      }

      v99 = v97 + 50;
      if (v83)
      {
        v102 = _CocoaArrayWrapper.endIndex.getter();
        if (v102 < v97)
        {
          goto LABEL_210;
        }

        if (v102 >= v99)
        {
          v101 = v97 + 50;
        }

        else
        {
          v101 = v102;
        }

        v100 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v100 = *(v96 + 16);
        if (v100 >= v99)
        {
          v101 = v97 + 50;
        }

        else
        {
          v101 = *(v96 + 16);
        }

        if (v100 < v97)
        {
          goto LABEL_210;
        }
      }

      if (v100 < v97)
      {
        goto LABEL_211;
      }

      if (v95 < 0)
      {
        goto LABEL_212;
      }

      if (v83)
      {
        v103 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v103 = *(v96 + 16);
      }

      if (v103 < v101)
      {
        goto LABEL_213;
      }

      if (v101 < 0)
      {
        goto LABEL_214;
      }

      if ((v49 & 0xC000000000000001) == 0 || v97 == v101)
      {

        v194 = v94;
        if (!v83)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v97 >= v101)
        {
          goto LABEL_217;
        }

        sub_100006370(0, &unk_101A22DC0);

        v104 = v97;
        do
        {
          v105 = v104 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v104);
          v104 = v105;
        }

        while (v101 != v105);
        v194 = v94;
        if (!v83)
        {
LABEL_104:
          v106 = (2 * v101) | 1;
          v94 = v96;
          goto LABEL_105;
        }
      }

      result = _CocoaArrayWrapper.subscript.getter();
      v94 = result;
      v97 = v114;
      v106 = v115;
      if ((v115 & 1) == 0)
      {
        v109 = v115 >> 1;
        v111 = (v115 >> 1) - v114;
        if (__OFSUB__(v115 >> 1, v114))
        {
LABEL_136:
          __break(1u);
LABEL_137:
          v120 = v197;

          v121 = v94[2];
          v122 = swift_initStackObject();
          *(v122 + 16) = xmmword_10146C6B0;
          v192 = v121;
          *(v197 + 640) = v121;
          v123 = dispatch thunk of CustomStringConvertible.description.getter();
          *(v122 + 56) = &type metadata for String;
          *(v122 + 64) = v164;
          *(v122 + 32) = v123;
          *(v122 + 40) = v124;
          v125 = static os_log_type_t.default.getter();
          sub_100005404(v167, &_mh_execute_header, v125, "Uploading as [%{public}@] chunks", 32, 2, v122);
          swift_setDeallocating();
          sub_100005070(v122 + 32);
          v187 = v94[2];
          if (!v187)
          {
LABEL_149:

            v144 = swift_task_alloc();
            v120[97] = v144;
            *v144 = v120;
            v144[1] = sub_100F9D72C;

            return sub_100F9DFB8(0, 0);
          }

          v0 = 0;
          v183 = v94 + 4;
          v195 = v94;
          while (2)
          {
            if (v0 >= v94[2])
            {
              goto LABEL_209;
            }

            v128 = v120[89];
            v129 = v120[88];
            v130 = *(v197 + 680);
            v49 = *(v197 + 656);
            v131 = v183[v0];
            v132 = type metadata accessor for TaskPriority();
            v133 = *(v132 - 8);
            v198 = *v179;
            (*(v133 + 56))(v128, 1, 1, v132);
            v134 = swift_allocObject();
            *(v134 + 16) = 0;
            v135 = (v134 + 16);
            *(v134 + 24) = 0;
            *(v134 + 32) = v49;
            *(v134 + 40) = v198;
            *(v134 + 56) = v130;
            *(v134 + 64) = v131;
            *(v134 + 72) = v0;
            *(v134 + 80) = v192;
            sub_100041E54(v128, v129);
            LODWORD(v129) = (*(v133 + 48))(v129, 1, v132);
            v136 = v49;

            swift_unknownObjectRetain();
            v137 = v130;
            v138 = *(v197 + 704);
            if (v129 == 1)
            {
              sub_10000CAAC(*(v197 + 704), &qword_1019FB750);
              v83 = 12544;
              if (*v135)
              {
                goto LABEL_144;
              }

LABEL_146:
              v139 = 0;
              v141 = 0;
            }

            else
            {
              v142 = TaskPriority.rawValue.getter();
              (*(v133 + 8))(v138, v132);
              v83 = v142 | 0x3100;
              if (!*v135)
              {
                goto LABEL_146;
              }

LABEL_144:
              swift_getObjectType();
              swift_unknownObjectRetain();
              v139 = dispatch thunk of Actor.unownedExecutor.getter();
              v141 = v140;
              swift_unknownObjectRelease();
            }

            v120 = v197;
            v143 = **(v197 + 648);

            if (v141 | v139)
            {
              v126 = v197 + 528;
              *(v197 + 528) = 0;
              *(v197 + 536) = 0;
              *(v197 + 544) = v139;
              *(v197 + 552) = v141;
            }

            else
            {
              v126 = 0;
            }

            v94 = v195;
            ++v0;
            v127 = *(v197 + 712);
            *(v197 + 560) = 1;
            *(v197 + 568) = v126;
            *(v197 + 576) = v143;
            swift_task_create();

            sub_10000CAAC(v127, &qword_1019FB750);
            if (v187 == v0)
            {
              goto LABEL_149;
            }

            continue;
          }
        }

LABEL_120:
        if (v111)
        {
          if (v111 < 1)
          {
            v113 = _swiftEmptyArrayStorage;
          }

          else
          {
            sub_1005B981C(&unk_1019F4D60);
            v113 = swift_allocObject();
            result = j__malloc_size_1(v113);
            v117 = result - 32;
            if (result < 32)
            {
              v117 = result - 25;
            }

            v113[2] = v111;
            v113[3] = (2 * (v117 >> 3)) | 1;
          }

          if (v97 == v109)
          {
            goto LABEL_222;
          }

          sub_100006370(0, &unk_101A22DC0);
          swift_arrayInitWithCopy();
        }

        else
        {
          v113 = _swiftEmptyArrayStorage;
        }

        v95 = v186;
LABEL_130:
        result = swift_unknownObjectRelease();
        goto LABEL_131;
      }

LABEL_105:
      v83 = type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v107 = swift_dynamicCastClass();
      if (!v107)
      {
        swift_unknownObjectRelease();
        v107 = _swiftEmptyArrayStorage;
      }

      v108 = v107[2];

      v109 = v106 >> 1;
      v110 = __OFSUB__(v106 >> 1, v97);
      v111 = (v106 >> 1) - v97;
      v112 = v110;
      if (v110)
      {
        goto LABEL_218;
      }

      if (v108 != v111)
      {
        result = swift_unknownObjectRelease();
        v96 = v49 & 0xFFFFFFFFFFFFFF8;
        if (v112)
        {
          goto LABEL_136;
        }

        goto LABEL_120;
      }

      v113 = swift_dynamicCastClass();
      result = swift_unknownObjectRelease();
      v95 = v186;
      v96 = v49 & 0xFFFFFFFFFFFFFF8;
      if (!v113)
      {
        v113 = _swiftEmptyArrayStorage;
        goto LABEL_130;
      }

LABEL_131:
      v94 = v194;
      v119 = v194[2];
      v118 = v194[3];
      if (v119 >= v118 >> 1)
      {
        result = sub_100776D24((v118 > 1), v119 + 1, 1);
        v94 = v194;
      }

      v94[2] = v119 + 1;
      v94[v119 + 4] = v113;
      v97 = v98;
      v83 = v181;
      if (v98 >= v191)
      {
        goto LABEL_137;
      }
    }
  }

LABEL_32:
  v52 = 0;
  v53 = v197 + 488;
  v177 = *v179;
  v185 = v50 & 0xFFFFFFFFFFFFFF8;
  v190 = v50 & 0xC000000000000001;
  while (1)
  {
    if (v190)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v52 >= *(v185 + 16))
      {
        goto LABEL_56;
      }

      v54 = *(v50 + 8 * v52 + 32);

      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_55;
      }
    }

    v0 = v197;
    *(v197 + 584) = v54;
    *(v197 + 592) = &off_1018A8190;
    swift_retain_n();
    sub_1005B981C(&qword_101A00168);
    sub_1005B981C(&qword_101A0CDA0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v56 = *(v197 + 696);
    v11 = v54;
    v57 = v53;
    sub_100050F74(v53, v197 + 448);
    v58 = *(v197 + 472);
    v59 = *(v197 + 480);
    sub_100020E58((v197 + 448), v58);
    v60 = (*(v59 + 8))(*(v177 + 16), v56, v58, v59);
    sub_100005070(v197 + 448);

    if (!v60)
    {

      if (qword_1019F2168 != -1)
      {
        swift_once();
      }

      v78 = static OS_os_log.crlSendACopy;
      v79 = static os_log_type_t.error.getter();
      sub_100005404(v78, &_mh_execute_header, v79, "Upload failed to create cloud record for freehand drawing item records.", 71, 2, _swiftEmptyArrayStorage);
      sub_100F9EBF8();
      swift_allocError();
      *v80 = 5;
      swift_willThrow();

      v0 = v197;
      goto LABEL_4;
    }

    v61 = v60;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    ++v52;
    v50 = v171;
    v53 = v57;
    if (v55 == v51)
    {
      goto LABEL_60;
    }
  }

  *(v53 + 32) = 0;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  sub_10000CAAC(v53, &qword_101A0CDA8);
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v71 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v0 = v197;
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_10146C6B0;
  swift_getObjectType();
  v73 = _typeName(_:qualified:)();
  v75 = v74;
  *(v72 + 56) = &type metadata for String;
  *(v72 + 64) = sub_1000053B0();
  *(v72 + 32) = v73;
  *(v72 + 40) = v75;
  v76 = static os_log_type_t.error.getter();
  sub_100005404(v71, &_mh_execute_header, v76, "CRLBoardLogicProvider cannot create a cloud record from an unknown local record. Local Record: %{public}@", 105, 2, v72);
  swift_setDeallocating();
  sub_100005070(v72 + 32);
  sub_100A1E518();
  swift_allocError();
  *v77 = 1;
  swift_willThrow();

LABEL_4:

  v13 = *(v0 + 8);

  return v13();
}