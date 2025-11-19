id sub_100B7F840()
{
  v1 = v0 + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_exporter;
  swift_beginAccess();
  v2 = *(v1 + 8);
  if (!v2)
  {
    return [*(v0 + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printInfo) orientation];
  }

  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return [*(v0 + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printInfo) orientation];
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return [*(v0 + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printInfo) orientation];
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v4 = v11;
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = *&v4[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect];
  v6 = *&v4[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8];
  v7 = *&v4[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16];
  v8 = *&v4[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24];

  if (*(v0 + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printScenesUsingDeviceSize) == 1)
  {
    if (*(v1 + 88))
    {
      return [*(v0 + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printInfo) orientation];
    }

    sub_100121F30(1, *(v1 + 72), *(v1 + 80), v5, v6, v7, v8);
    v7 = v9;
    v8 = v10;
  }

  return (v7 / v8 > 1.0);
}

id sub_100B7F9C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSPrintPageRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *sub_100B7FA8C(_OWORD *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_defaultPaperSize] = xmmword_10149B570;
  v4 = OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printScenes;
  v2[OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printScenes] = 0;
  v5 = OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printScenesUsingDeviceSize;
  v2[OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printScenesUsingDeviceSize] = 1;
  v6 = &v2[OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_exporter];
  v7 = a1[5];
  v6[4] = a1[4];
  v6[5] = v7;
  v8 = a1[7];
  v6[6] = a1[6];
  v6[7] = v8;
  v9 = a1[1];
  *v6 = *a1;
  v6[1] = v9;
  v10 = a1[3];
  v6[2] = a1[2];
  v6[3] = v10;
  *&v2[OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printInfo] = a2;
  sub_1008BE39C(a1, v17);
  v11 = a2;
  v2[v4] = sub_1008BCCEC() & 1;
  v2[v5] = sub_1008BCE2C() & 1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CRLiOSPrintPageRenderer();
  v12 = objc_msgSendSuper2(&v16, "init");
  v13 = v12[OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printScenes];
  v14 = &v12[OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_exporter];
  swift_beginAccess();
  v14[49] = v13;
  v14[50] = v12[OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printScenesUsingDeviceSize];
  return v12;
}

id sub_100B7FBAC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1005B981C(&unk_1019FFD10);
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
  result = NSNotFound.getter();
  if (v15 == result || a1 == 0)
  {
    v18 = objc_allocWithZone(ObjectType);
    return [v18 init:v15 caretAffinity:{0, v32}];
  }

  v34 = a1;
  v32 = ObjectType;
  v35 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v36 = a2;
  v19 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  (*(*v19 + 896))();
  sub_1005E0A78(&v11[*(v9 + 20)], v14);
  sub_1005E0ADC(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  v20 = v37;
  v33 = *(v37 + 16);
  v33(v8, v14, v6);
  sub_1005E0ADC(v14, type metadata accessor for CRLWPStorageCRDTData);
  v21 = CRAttributedString.attributedString.getter();
  v37 = *(v20 + 8);
  (v37)(v8, v6);
  v22 = [v21 length];

  result = 0;
  if ((v15 & 0x8000000000000000) == 0 && v22 >= v15)
  {
    v23 = *(v36 + v35);
    if (v23)
    {
      (*(*v23 + 896))(0);
      sub_1005E0A78(&v11[*(v9 + 20)], v14);
      sub_1005E0ADC(v11, type metadata accessor for CRLWPShapeItemCRDTData);
      v33(v8, v14, v6);
      sub_1005E0ADC(v14, type metadata accessor for CRLWPStorageCRDTData);
      v24 = CRAttributedString.attributedString.getter();
      (v37)(v8, v6);
      v25 = [v24 string];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v38 = v26;
      v39 = v28;
      sub_100017CD8();

      String.Index.init<A>(utf16Offset:in:)();
      String.UTF16View.index(_:offsetBy:limitedBy:)();
      if (v29)
      {

        return 0;
      }

      else
      {
        v38 = v26;
        v39 = v28;
        v30 = String.Index.utf16Offset<A>(in:)();

        v31 = objc_allocWithZone(v32);
        return [v31 init:v30 caretAffinity:{0, v32}];
      }
    }

LABEL_16:
    __break(1u);
  }

  return result;
}

id sub_100B80030(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8Freeform15CRLTextPosition_insertionEdge] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location] = a1;
  *&v5[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100B802EC(uint64_t a1)
{
  swift_getObjectType();
  sub_100601584(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location) == *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location])
      {
        v3 = *(v1 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity) == 1;
        v4 = *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];

        return v3 ^ (v4 != 1);
      }
    }
  }

  else
  {
    sub_1005E09AC(v7);
  }

  return 0;
}

uint64_t sub_100B80434()
{
  ObjectType = swift_getObjectType();
  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v14, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v15 = v3;
  v16 = v5;
  v6._countAndFlagsBits = 0x7461636F6C207B20;
  v6._object = 0xED0000203A6E6F69;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x6666416C6F65202CLL;
  v8._object = 0xEF203A7974696E69;
  String.append(_:)(v8);
  if (*&v0[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity] == 1)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*&v0[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity] == 1)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._countAndFlagsBits = 8200236;
  v12._object = 0xE300000000000000;
  String.append(_:)(v12);
  return v15;
}

id sub_100B805B8(void *a1)
{
  v1 = a1;
  sub_100B80434();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

unint64_t sub_100B806C0()
{
  result = qword_101A130F0;
  if (!qword_101A130F0)
  {
    type metadata accessor for CRLTextPosition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A130F0);
  }

  return result;
}

uint64_t sub_100B807A4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return 1;
  }

  v4 = *(a2 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
  v5 = *(v3 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
  if (v5 < v4)
  {
    return 1;
  }

  if (v4 >= v5)
  {
    return 0;
  }

  return -1;
}

uint64_t sub_100B80810(uint64_t a1, void *a2)
{
  v13[3] = swift_getObjectType();
  v13[0] = a2;
  sub_100601584(v13, v11);
  if (!v12)
  {
    v8 = a2;
    sub_1005E09AC(v11);
    goto LABEL_7;
  }

  v4 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (*(a1 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location) != *&v10[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location])
  {

    goto LABEL_7;
  }

  v5 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity) == 1;
  v6 = *&v10[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];

  v7 = v5 ^ (v6 != 1);
LABEL_8:
  sub_1005E09AC(v13);
  return v7;
}

uint64_t sub_100B80908@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v65 = a3;
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v57 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v9 - 8);
  v67 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v71 = &v57 - v12;
  v70 = type metadata accessor for CRLProto_Data(0);
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (&v57 - v15);
  v17 = type metadata accessor for UUID();
  v69 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v57 - v21;
  v23 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v23 - 8);
  v24 = type metadata accessor for CRLProto_StartOrEndFollow(0);
  __chkstk_darwin(v24);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100B818F4();
  v27 = v76;
  Message.init(serializedData:extensions:partial:options:)();
  if (v27)
  {
    return sub_10002640C(a1, a2);
  }

  v60 = v17;
  v61 = v19;
  v76 = v22;
  v62 = a1;
  v63 = a2;
  v29 = v71;
  sub_10000BE14(&v26[*(v24 + 20)], v71, &qword_1019F67C0);
  v31 = v72 + 48;
  v30 = *(v72 + 48);
  v32 = v70;
  v33 = v30(v29, 1, v70);
  v59 = v30;
  v72 = v31;
  if (v33 == 1)
  {
    *v16 = xmmword_10146F370;
    UnknownStorage.init()();
    v34 = v32;
    if (v30(v71, 1, v32) != 1)
    {
      sub_10000CAAC(v71, &qword_1019F67C0);
    }
  }

  else
  {
    v34 = v32;
    sub_100683F6C(v71, v16);
  }

  v35 = *v16;
  v36 = v16[1];
  sub_100024E98(*v16, v36);
  sub_100B8194C(v16, type metadata accessor for CRLProto_Data);
  UUID.init(crl_data:)(v35, v36);
  v37 = &v26[*(v24 + 24)];
  v38 = v67;
  sub_10000BE14(v37, v67, &qword_1019F67C0);
  v39 = v34;
  v40 = v34;
  v41 = v59;
  v42 = v59(v38, 1, v40);
  v58 = v26;
  if (v42 == 1)
  {
    v43 = v66;
    *v66 = xmmword_10146F370;
    UnknownStorage.init()();
    v44 = v41(v38, 1, v39);
    v45 = v68;
    v46 = v69;
    v47 = v61;
    if (v44 != 1)
    {
      sub_10000CAAC(v38, &qword_1019F67C0);
    }
  }

  else
  {
    v43 = v66;
    sub_100683F6C(v38, v66);
    v45 = v68;
    v46 = v69;
    v47 = v61;
  }

  v48 = *v43;
  v49 = v43[1];
  sub_100024E98(*v43, v49);
  sub_100B8194C(v43, type metadata accessor for CRLProto_Data);
  UUID.init(crl_data:)(v48, v49);
  v51 = v62;
  v50 = v63;
  v52 = v60;
  v72 = 0;
  v53 = *(v46 + 16);
  v53(v45, v76, v60);
  v54 = *(v46 + 56);
  v54(v45, 0, 1, v52);
  v55 = v64;
  v53(v64, v47, v52);
  v54(v55, 0, 1, v52);
  sub_100B81020(v68, v55, v65);
  sub_10002640C(v51, v50);
  v56 = *(v69 + 8);
  v56(v61, v52);
  v56(v76, v52);
  return sub_100B8194C(v58, type metadata accessor for CRLProto_StartOrEndFollow);
}

uint64_t sub_100B81020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v26 = a2;
  v25 = a3;
  v4 = sub_1005B981C(&qword_1019F6990);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v27 = a1;
  sub_10000BE14(a1, v9, &qword_1019F6990);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v7 = v9;
    v18 = v26;
LABEL_5:
    sub_10000CAAC(v7, &qword_1019F6990);
    sub_1006B305C();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    sub_10000CAAC(v18, &qword_1019F6990);
    return sub_10000CAAC(v27, &qword_1019F6990);
  }

  v24 = *(v11 + 32);
  v24(v16, v9, v10);
  v18 = v26;
  sub_10000BE14(v26, v7, &qword_1019F6990);
  if (v17(v7, 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_5;
  }

  sub_10000CAAC(v18, &qword_1019F6990);
  sub_10000CAAC(v27, &qword_1019F6990);
  v21 = v24;
  v24(v14, v7, v10);
  v22 = v25;
  v21(v25, v16, v10);
  v23 = type metadata accessor for CRLStartOrEndFollow();
  return (v21)(&v22[*(v23 + 20)], v14, v10);
}

uint64_t sub_100B8134C()
{
  v0 = sub_1005B981C(&qword_1019F67C0);
  v1 = __chkstk_darwin(v0 - 8);
  v40 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v39 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v10 = &v32 - v9;
  __chkstk_darwin(v8);
  v12 = (&v32 - v11);
  v13 = type metadata accessor for CRLProto_StartOrEndFollow(0);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v16 = *(v13 + 20);
  v17 = *(v5 + 56);
  v17(&v15[v16], 1, 1, v4);
  v38 = v13;
  v35 = *(v13 + 24);
  v17(&v15[v35], 1, 1, v4);
  v41 = xmmword_10146F370;
  *v12 = xmmword_10146F370;
  UnknownStorage.init()();
  sub_10000CAAC(&v15[v16], &qword_1019F67C0);
  sub_100683F6C(v12, &v15[v16]);
  v37 = v17;
  v42 = v5 + 56;
  v17(&v15[v16], 0, 1, v4);
  v18 = v33;
  v32 = UUID.crl_data()();
  v20 = v19;
  sub_10000BE14(&v15[v16], v18, &qword_1019F67C0);
  v21 = *(v5 + 48);
  v22 = v21(v18, 1, v4);
  v36 = v5 + 48;
  v34 = v21;
  if (v22 == 1)
  {
    *v10 = v41;
    UnknownStorage.init()();
    if (v21(v18, 1, v4) != 1)
    {
      sub_10000CAAC(v18, &qword_1019F67C0);
    }
  }

  else
  {
    sub_100683F6C(v18, v10);
  }

  sub_10002640C(*v10, *(v10 + 1));
  *v10 = v32;
  *(v10 + 1) = v20;
  sub_10000CAAC(&v15[v16], &qword_1019F67C0);
  sub_100683F6C(v10, &v15[v16]);
  v23 = v37;
  v37(&v15[v16], 0, 1, v4);
  *v12 = v41;
  UnknownStorage.init()();
  v24 = v35;
  sub_10000CAAC(&v15[v35], &qword_1019F67C0);
  sub_100683F6C(v12, &v15[v24]);
  v23(&v15[v24], 0, 1, v4);
  type metadata accessor for CRLStartOrEndFollow();
  v43 = UUID.crl_data()();
  v26 = v25;
  v27 = v40;
  sub_10000BE14(&v15[v24], v40, &qword_1019F67C0);
  v28 = v34;
  if (v34(v27, 1, v4) == 1)
  {
    v29 = v39;
    *v39 = v41;
    UnknownStorage.init()();
    if (v28(v27, 1, v4) != 1)
    {
      sub_10000CAAC(v27, &qword_1019F67C0);
    }
  }

  else
  {
    v29 = v39;
    sub_100683F6C(v27, v39);
  }

  sub_10002640C(*v29, *(v29 + 1));
  *v29 = v43;
  *(v29 + 1) = v26;
  sub_10000CAAC(&v15[v24], &qword_1019F67C0);
  sub_100683F6C(v29, &v15[v24]);
  v23(&v15[v24], 0, 1, v4);
  sub_100B818F4();
  v30 = Message.serializedData(partial:)();
  sub_100B8194C(v15, type metadata accessor for CRLProto_StartOrEndFollow);
  return v30;
}

uint64_t type metadata accessor for CRLStartOrEndFollow()
{
  result = qword_101A13158;
  if (!qword_101A13158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100B818F4()
{
  result = qword_101A130F8;
  if (!qword_101A130F8)
  {
    type metadata accessor for CRLProto_StartOrEndFollow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A130F8);
  }

  return result;
}

uint64_t sub_100B8194C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B819D4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100B81A40()
{
  v1[7] = v0;
  v1[8] = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v3;
  v1[13] = v2;

  return _swift_task_switch(sub_100B81B0C, v3, v2);
}

uint64_t sub_100B81B0C()
{
  v1 = static MainActor.shared.getter();
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  v3 = sub_100006370(0, &qword_101A13590);
  *v2 = v0;
  v2[1] = sub_100B81C14;
  v4 = v0[7];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 5, v1, &protocol witness table for MainActor, 0xD000000000000016, 0x800000010158D4D0, sub_100B86C88, v4, v3);
}

uint64_t sub_100B81C14()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100B82028;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100B81D30;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100B81D30()
{
  v1 = v0[7];

  v2 = v0[5];
  [v2 resume];
  if (*(v1 + 40) == 2)
  {
    v4 = *(v1 + 24);
    v3 = *(v1 + 32);
    v5 = v0[9];
    v6 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_cancellationState;
    swift_beginAccess();
    sub_100B86C90(v4 + v6, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v8 = v0[9];
        v9 = *(sub_1005B981C(&qword_101A13598) + 48);

        Strong = sub_100B86CF4(v10);
        Task.cancel()();
        sub_100B86F74(v4, v3, 2);

        v12 = type metadata accessor for UUID();
        (*(*(v12 - 8) + 8))(v8 + v9, v12);
      }

      else
      {

        Strong = sub_100B86CF4(v20);
        sub_100B86F74(v4, v3, 2);
      }
    }

    else
    {
      sub_100B86FD8(v0[9], (v0 + 6));
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {

        Strong = sub_100B86CF4(v16);
        sub_100B86F74(v4, v3, 2);
      }

      v17 = v0[9];
      v18 = *(sub_1005B981C(&unk_101A135A0) + 48);
      sub_10000CAAC((v0 + 6), &qword_101A13530);
      v19 = type metadata accessor for UUID();
      (*(*(v19 - 8) + 8))(v17 + v18, v19);
    }

    type metadata accessor for CRLUSDRenderingExtensionConnector.APIEndpointProxy();
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    *(v21 + 24) = Strong;

    v22 = v0[1];

    return v22(v21);
  }

  else
  {
    sub_1008CF11C();
    swift_allocError();
    *v13 = xmmword_101463530;
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100B82028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B820A0()
{
  v1 = v0;
  v2 = type metadata accessor for _AppExtensionProcess();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 40);
  if (v7 == 2)
  {
    (*(v3 + 16))(v6, *(v1 + 24) + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_process, v2, v4);
    _AppExtensionProcess.invalidate()();
    (*(v3 + 8))(v6, v2);
    LOBYTE(v7) = *(v1 + 40);
  }

  sub_100B86F74(*(v1 + 24), *(v1 + 32), v7);
  return swift_deallocClassInstance();
}

uint64_t sub_100B821D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A135B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a2;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_10064191C(0, 0, v10, &unk_10149B820, v14);
}

uint64_t sub_100B823E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1005B981C(&unk_101A135B0);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v8;
  v5[18] = v7;

  return _swift_task_switch(sub_100B82504, v8, v7);
}

uint64_t sub_100B82504()
{
  isa = v0[8].super.isa;
  v2 = *(isa + 3);
  v3 = *(isa + 4);
  if (*(isa + 40) <= 1u)
  {
    if (*(isa + 40))
    {
      v18 = v0[14].super.isa;
      v19 = v0[10].super.isa;
      v20 = v0[11].super.isa;
      v21 = v0[9].super.isa;

      (*(v20 + 2))(v18, v21, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_100B38A10(0, v2[2] + 1, 1, v2);
      }

      v23 = v2[2];
      v22 = v2[3];
      if (v23 >= v22 >> 1)
      {
        v2 = sub_100B38A10(v22 > 1, v23 + 1, 1, v2);
      }

      v24 = v0[14].super.isa;
      v25 = v0[10].super.isa;
      v26 = v0[11].super.isa;
      v2[2] = v23 + 1;
      (*(v26 + 4))(v2 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 9) * v23, v24, v25);
      v27 = *(isa + 3);
      v28 = *(isa + 4);
      *(isa + 3) = v2;
      *(isa + 4) = 0;
      v29 = *(isa + 40);
      *(isa + 40) = 1;
      sub_100B86F74(v27, v28, v29);
    }

    else
    {
      v4 = v0[15].super.isa;
      v5 = v0[10].super.isa;
      v6 = v0[11].super.isa;
      v7 = v0[9].super.isa;

      (*(v6 + 2))(v4, v7, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100B38A10(0, v3[2] + 1, 1, v3);
      }

      v9 = v3[2];
      v8 = v3[3];
      if (v9 >= v8 >> 1)
      {
        v3 = sub_100B38A10(v8 > 1, v9 + 1, 1, v3);
      }

      v10 = v0[15].super.isa;
      v11 = v0[10].super.isa;
      v12 = v0[11].super.isa;
      v3[2] = v9 + 1;
      (*(v12 + 4))(v3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 9) * v9, v10, v11);
      v13 = *(isa + 3);
      v14 = *(isa + 4);
      *(isa + 3) = v2;
      *(isa + 4) = v3;
      v15 = *(isa + 40);
      *(isa + 40) = 0;
      sub_100B86F74(v13, v14, v15);
    }

LABEL_22:

    v35 = v0[1].super.isa;

    return v35();
  }

  if (*(isa + 40) == 2)
  {

    v16.super.isa = _AppExtensionProcess.makeXPCConnection()().super.isa;
    if (v17.super.isa)
    {
      v0[2].super.isa = v17.super.isa;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
      sub_100B86F74(v2, v3, 2);
    }

    else
    {
      if (qword_1019F1938 != -1)
      {
        v36 = v16.super.isa;
        swift_once();
        v16.super.isa = v36;
      }

      v33 = v16.super.isa;
      [(objc_class *)v16.super.isa setRemoteObjectInterface:qword_101AD6B40];
      v0[3].super.isa = v33;
      v34 = v33;
      CheckedContinuation.resume(returning:)();
      sub_100B86F74(v2, v3, 2);
    }

    goto LABEL_22;
  }

  v30 = swift_task_alloc();
  v0[19].super.isa = v30;
  *v30 = v0;
  *(v30 + 1) = sub_100B828F4;
  v31 = v0[9].super.isa;

  return sub_100B82D68(v31);
}

uint64_t sub_100B828F4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100B82ABC;
  }

  else
  {
    v5 = sub_100B82A30;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B82A30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B82ABC()
{
  v1 = v0[8];

  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 3;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v0[7] = v0[20];
      CheckedContinuation.resume(throwing:)();
      goto LABEL_19;
    }

    v17 = v0[20];

    _AppExtensionProcess.invalidate()();
    v0[4] = v17;
    CheckedContinuation.resume(throwing:)();
    sub_100B86F74(v3, v2, 2);
    v15 = v3;
    v16 = v2;
    v18 = 2;
  }

  else if (v4)
  {
    v19 = *(v3 + 16);
    if (v19)
    {
      v32 = v3;
      v20 = v0[11];
      v23 = *(v20 + 16);
      v21 = v20 + 16;
      v22 = v23;
      v24 = v3 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v25 = *(v21 + 56);
      do
      {
        v26 = v0[20];
        v27 = v0[12];
        v28 = v0[10];
        v22(v27, v24, v28);
        v0[5] = v26;
        swift_errorRetain();
        CheckedContinuation.resume(throwing:)();
        (*(v21 - 8))(v27, v28);
        v24 += v25;
        --v19;
      }

      while (v19);

      v15 = v32;
      v16 = v2;
    }

    else
    {

      v15 = v3;
      v16 = v2;
    }

    v18 = 1;
  }

  else
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      v31 = v3;
      v6 = v0[11];
      v9 = *(v6 + 16);
      v7 = v6 + 16;
      v8 = v9;
      v10 = v2 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
      v11 = *(v7 + 56);
      do
      {
        v12 = v0[20];
        v13 = v0[13];
        v14 = v0[10];
        v8(v13, v10, v14);
        v0[6] = v12;
        swift_errorRetain();
        CheckedContinuation.resume(throwing:)();
        (*(v7 - 8))(v13, v14);
        v10 += v11;
        --v5;
      }

      while (v5);

      v15 = v31;
      v16 = v2;
    }

    else
    {

      v15 = v3;
      v16 = v2;
    }

    v18 = 0;
  }

  sub_100B86F74(v15, v16, v18);
LABEL_19:

  v29 = v0[1];

  return v29();
}

uint64_t sub_100B82D68(uint64_t a1)
{
  v2[46] = a1;
  v2[47] = v1;
  v3 = type metadata accessor for _AppExtensionProcess();
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v4 = type metadata accessor for _AppExtensionProcess.Configuration();
  v2[52] = v4;
  v2[53] = *(v4 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v5 = type metadata accessor for _AppExtensionIdentity();
  v2[56] = v5;
  v2[57] = *(v5 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v2[60] = swift_task_alloc();
  v2[61] = type metadata accessor for MainActor();
  v2[62] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[63] = v6;
  v2[64] = v7;

  return _swift_task_switch(sub_100B82FA8, v6, v7);
}

uint64_t sub_100B82FA8()
{
  v44 = v0;
  v1 = v0[47];
  if (*(v1 + 40) == 3 && *(v1 + 24) == 0)
  {
    v28 = v0[60];
    v29 = v0[46];
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    v32 = sub_100797040(0, 0, v28, &unk_10149B830, v31);
    v0[65] = v32;
    sub_1005B981C(&qword_101A11B80);
    v33 = sub_1005B981C(&unk_101A135B0);
    v34 = *(v33 - 8);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10146C6B0;
    (*(v34 + 16))(v36 + v35, v29, v33);
    v37 = *(v1 + 24);
    v38 = *(v1 + 32);
    *(v1 + 24) = v32;
    *(v1 + 32) = v36;
    LOBYTE(v36) = *(v1 + 40);
    *(v1 + 40) = 0;

    sub_100B86F74(v37, v38, v36);
    v39 = swift_task_alloc();
    v0[66] = v39;
    v40 = sub_1005B981C(&unk_1019F6B40);
    *v39 = v0;
    v39[1] = sub_100B835E4;
    v41 = v0[59];
    v42 = v0[56];

    return Task.value.getter(v41, v32, v42, v40, &protocol self-conformance witness table for Error);
  }

  else
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v43 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v43);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 243;
    v15 = v43;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Can only connect when in .disconnected state.", 45, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Can only connect when in .disconnected state.");
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

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:243 isFatal:1 format:v24 args:v21];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, v26);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_100B835E4()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = *(v2 + 512);
  v4 = *(v2 + 504);
  if (v0)
  {
    v5 = sub_100B849F8;
  }

  else
  {
    v5 = sub_100B8374C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B8374C()
{
  v1 = v0[47];
  if (*(v1 + 40))
  {
    v2 = v0[59];
    v3 = v0[56];
    v4 = v0[57];

    (*(v4 + 8))(v2, v3);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[58];
    v7 = v0[59];
    v9 = v0[56];
    v10 = v0[55];
    v11 = v0[53];
    v20 = v0[52];
    v21 = v0[54];
    v12 = *(v1 + 32);
    v13 = *(v0[57] + 16);

    v13(v8, v7, v9);
    swift_allocObject();
    swift_weakInit();
    _AppExtensionProcess.Configuration.init(appExtension:onInterruption:)();
    v14 = *(v1 + 24);
    v15 = *(v1 + 32);
    *(v1 + 24) = v12;
    *(v1 + 32) = 0;
    v16 = *(v1 + 40);
    *(v1 + 40) = 1;
    sub_100B86F74(v14, v15, v16);
    (*(v11 + 16))(v21, v10, v20);
    v17 = swift_task_alloc();
    v0[68] = v17;
    *v17 = v0;
    v17[1] = sub_100B839C8;
    v18 = v0[54];
    v19 = v0[51];

    return _AppExtensionProcess.init(configuration:)(v19, v18);
  }
}

uint64_t sub_100B839C8()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 512);
  v4 = *(v2 + 504);
  if (v0)
  {
    v5 = sub_100B84AF0;
  }

  else
  {
    v5 = sub_100B83B30;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B83B30()
{
  v1.super.isa = _AppExtensionProcess.makeXPCConnection()().super.isa;
  v0[70].super.isa = v1.super.isa;
  if (v2)
  {
    isa = v0[57].super.isa;
    v18 = v0[56].super.isa;
    v19 = v0[59].super.isa;
    v4 = v0[55].super.isa;
    v6 = v0[52].super.isa;
    v5 = v0[53].super.isa;
    v7 = v0[51].super.isa;
    v9 = v0[48].super.isa;
    v8 = v0[49].super.isa;

    (*(v8 + 1))(v7, v9);
    (*(v5 + 1))(v4, v6);
    (*(isa + 1))(v19, v18);

    v10 = v0[1].super.isa;

    return v10();
  }

  else
  {
    if (qword_1019F1938 != -1)
    {
      v17 = v1.super.isa;
      swift_once();
      v1.super.isa = v17;
    }

    v12 = v1.super.isa;
    [(objc_class *)v1.super.isa setRemoteObjectInterface:qword_101AD6B40];
    [(objc_class *)v12 resume];
    type metadata accessor for AnyCancellable();
    swift_allocObject();
    v13 = v12;
    v14 = AnyCancellable.init(_:)();
    type metadata accessor for CRLUSDRenderingExtensionConnector.APIEndpointProxy();
    inited = swift_initStackObject();
    v0[71].super.isa = inited;
    *(inited + 16) = v13;
    *(inited + 24) = v14;
    v0[72].super.isa = static MainActor.shared.getter();
    v16 = swift_task_alloc();
    v0[73].super.isa = v16;
    *v16 = v0;
    *(v16 + 1) = sub_100B83E40;

    return sub_100861764(0xD000000000000017, 0x800000010158D890, sub_100B85928, 0);
  }
}

uint64_t sub_100B83E40(int a1)
{
  v4 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = sub_100B83FEC;
  }

  else
  {
    *(v4 + 600) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = sub_100B84210;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100B83FEC()
{

  v1 = *(v0 + 504);
  v2 = *(v0 + 512);

  return _swift_task_switch(sub_100B8407C, v1, v2);
}

uint64_t sub_100B8407C()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[57];
  v13 = v0[56];
  v14 = v0[59];
  v4 = v0[53];
  v11 = v0[52];
  v12 = v0[55];
  v5 = v0[51];
  v7 = v0[48];
  v6 = v0[49];

  swift_setDeallocating();
  v8 = *(v1 + 16);
  [v8 invalidate];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v12, v11);
  (*(v3 + 8))(v14, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100B84210()
{

  v1 = *(v0 + 504);
  v2 = *(v0 + 512);

  return _swift_task_switch(sub_100B842A0, v1, v2);
}

uint64_t sub_100B842A0()
{
  v1 = *(v0 + 150);

  v2 = [objc_opt_self() targetWithPid:v1];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() attributeWithDomain:v3 name:v4];

  sub_1005B981C(&qword_1019F54E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10146C6B0;
  *(v6 + 56) = &type metadata for Int32;
  *(v6 + 64) = &protocol witness table for Int32;
  *(v6 + 32) = v1;
  String.init(format:_:)();
  sub_1005B981C(&unk_1019F4D60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101465920;
  *(v7 + 32) = v5;
  v8 = objc_allocWithZone(RBSAssertion);
  v9 = v2;
  v10 = v5;
  v11 = String._bridgeToObjectiveC()();

  sub_100006370(0, &unk_101A135C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v8 initWithExplanation:v11 target:v9 attributes:isa];

  v14 = swift_allocObject();
  swift_weakInit();
  v0[35] = sub_100B892AC;
  v0[36] = v14;
  v0[31] = _NSConcreteStackBlock;
  v0[32] = *"";
  v0[33] = sub_100B8535C;
  v0[34] = &unk_1018986E0;
  v15 = _Block_copy(v0 + 31);

  [v13 setInvalidationHandler:v15];
  _Block_release(v15);
  v0[44] = 0;
  v16 = [v13 acquireWithError:v0 + 44];
  v17 = v0[44];
  v66 = v9;
  if (v16)
  {
    v64 = v10;
    v18 = v0[47];
    v19 = v0[71];
    v58 = v0[70];
    v20 = v0[59];
    v21 = v0[57];
    v54 = v0[56];
    v22 = v0[53];
    v60 = v0[52];
    v62 = v0[55];
    v23 = v0[51];
    if (*(v18 + 40) == 1)
    {
      v52 = v0[59];
      v24 = v0[49];
      v25 = v0[50];
      v51 = v0[53];
      v26 = v0[48];
      v49 = *(v18 + 24);
      v50 = *(v18 + 32);
      v48 = v0[51];
      (*(v24 + 16))(v25, v23, v26);
      type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess(0);
      v27 = swift_allocObject();
      v56 = v26;
      v28 = v26;
      v22 = v51;
      (*(v24 + 32))(v27 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_process, v25, v28);
      *(v27 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_foregroundAssertion) = v13;
      type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
      v20 = v52;
      swift_storeEnumTagMultiPayload();
      *(v18 + 24) = v27;
      *(v18 + 32) = 0;
      *(v18 + 40) = 2;
      v29 = v48;
      v30 = v17;
      v31 = v13;
      sub_100B892B4(v49, v48);
      swift_setDeallocating();
      v32 = *(v19 + 16);
      [v32 invalidate];

      sub_100B86F74(v49, v50, 1);
    }

    else
    {
      v24 = v0[49];
      v56 = v0[48];
      swift_setDeallocating();
      v45 = *(v19 + 16);
      v46 = v17;
      [v45 invalidate];

      v29 = v23;
    }

    (*(v24 + 8))(v29, v56);
    (*(v22 + 8))(v62, v60);
    (*(v21 + 8))(v20, v54);

    v44 = v0[1];
  }

  else
  {
    v33 = v0[71];
    v34 = v0[57];
    v63 = v0[56];
    v65 = v0[59];
    v61 = v0[55];
    v35 = v0[53];
    v59 = v0[52];
    v55 = v0[70];
    v57 = v0[51];
    v36 = v0[49];
    v53 = v0[48];
    v37 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    [v13 invalidate];
    swift_getErrorValue();
    v38 = Error.localizedDescription.getter();
    v39 = v10;
    v41 = v40;
    sub_1008CF11C();
    swift_allocError();
    *v42 = v38;
    v42[1] = v41;
    swift_willThrow();
    swift_setDeallocating();
    v43 = *(v33 + 16);
    [v43 invalidate];

    (*(v36 + 8))(v57, v53);
    (*(v35 + 8))(v61, v59);
    (*(v34 + 8))(v65, v63);

    v44 = v0[1];
  }

  return v44();
}

uint64_t sub_100B849F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B84AF0()
{
  v1 = v0[59];
  v2 = v0[56];
  v3 = v0[57];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100B84C28()
{
  v1 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_process;
  v2 = type metadata accessor for _AppExtensionProcess();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100B88FC0(v0 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_cancellationState);

  return swift_deallocClassInstance();
}

uint64_t sub_100B84D0C()
{
  result = type metadata accessor for _AppExtensionProcess();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100B84E04()
{
  v0 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v4;
    sub_10064191C(0, 0, v2, &unk_10149B850, v7);
  }

  return result;
}

uint64_t sub_100B84F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B84FF0, v6, v5);
}

uint64_t sub_100B84FF0()
{
  v1 = *(v0 + 16);

  if (*(v1 + 40) == 2)
  {
    v2 = *(v0 + 16);
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v1 + 40) = 3;
    [*(v4 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_foregroundAssertion) invalidate];
    _AppExtensionProcess.invalidate()();
    sub_100B86F74(v4, v3, 2);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100B850B0(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100B85124(a1, a2);
  }

  return result;
}

void sub_100B85124(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = (v2 + 24);
  v4 = *(v2 + 24);
  if (*(v2 + 40) == 2)
  {
    v7 = *(v2 + 32);
    sub_100006370(0, &qword_1019F54D0);
    v8 = *(v4 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_foregroundAssertion);
    sub_100B8948C(v4, v7, 2);
    v9 = v8;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      if (qword_1019F21E0 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.crlThreeDimensionalObjects;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      if (a2)
      {
        swift_getErrorValue();
        v13 = Error.localizedDescription.getter();
        a2 = v14;
      }

      else
      {
        v13 = 0;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      v15 = 0x6E776F6E6B6E7528;
      if (a2)
      {
        v15 = v13;
      }

      v16 = 0xE900000000000029;
      if (a2)
      {
        v16 = a2;
      }

      *(inited + 32) = v15;
      *(inited + 40) = v16;
      v17 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v17, "System invalidated USD renderer runtime assertion: %{public}@", 61, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      _AppExtensionProcess.invalidate()();
      sub_100B86F74(v4, v7, 2);
      v18 = *(v3 + 24);
      v19 = *(v3 + 32);
      *v5 = 0;
      v5[1] = 0;
      v20 = *(v3 + 40);
      *(v3 + 40) = 3;
      sub_100B86F74(v18, v19, v20);
    }

    else
    {

      sub_100B86F74(v4, v7, 2);
    }
  }
}

void sub_100B8535C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_100B855C4()
{
  sub_100B85654();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100B85654()
{
  if (!qword_101A133D0)
  {
    sub_1005C4E5C(&unk_101A050F0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A133D0);
    }
  }
}

uint64_t sub_100B856B8()
{
  [*(v0 + 16) invalidate];

  return swift_deallocClassInstance();
}

void sub_100B8572C()
{
  sub_100B857E0(319, &qword_101A13528, &qword_101A13530);
  if (v0 <= 0x3F)
  {
    sub_100B857E0(319, &qword_101A13538, &unk_101A13540);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100B857E0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1005C4E5C(a3);
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_100B85858(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100B85874(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100B858BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_100B85900(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_100B85928(void **a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A135D0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *a1;
  (*(v5 + 16))(aBlock - v7, a2, v4, v6);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_100B894F0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100B85E28;
  aBlock[3] = &unk_101898730;
  v12 = _Block_copy(aBlock);

  [v9 getExtensionProcessIDWithResponse:v12];
  _Block_release(v12);
}

uint64_t sub_100B85AE4(int a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A135D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a2, v4);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v16 + v14, v8, v4);
  *(v16 + v15) = a1;
  sub_10064191C(0, 0, v11, &unk_10149B840, v16);
}

uint64_t sub_100B85CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 36) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B85D94, v7, v6);
}

uint64_t sub_100B85D94()
{
  v1 = *(v0 + 36);

  *(v0 + 32) = v1;
  sub_1005B981C(&qword_101A135D0);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100B85E28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100B85E7C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v8 = sub_1005B981C(&qword_101A04C00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = *a1;
  UUID.uuidString.getter();
  v13 = String._bridgeToObjectiveC()();

  (*(v9 + 16))(v11, a2, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = sub_100B86B08;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1007A5954;
  aBlock[3] = &unk_101898578;
  v16 = _Block_copy(aBlock);

  [v12 makeCoreRERendererProxyForUUID:v13 delegateProxy:a4 flags:v18 response:v16];
  _Block_release(v16);
}

uint64_t sub_100B86074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A04C00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_10064191C(0, 0, v10, &unk_10149B7D0, v14);
}

uint64_t sub_100B8627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_100B86314, v7, v6);
}

uint64_t sub_100B86314()
{
  v0[2] = &OBJC_PROTOCOL___NSXPCProxyCreating;
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CRLUSDRendererExtensionShared.AsyncRendererSenderProxy();
    swift_allocObject();
    swift_unknownObjectRetain_n();
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100B86484;

    return sub_1008C5230(v2);
  }

  else
  {

    sub_1008CF11C();
    v5 = swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    v0[3] = v5;
    sub_1005B981C(&qword_101A04C00);
    CheckedContinuation.resume(throwing:)();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100B86484(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_100B8665C;
  }

  else
  {
    v4[13] = a1;
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_100B865AC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100B865AC()
{
  v1 = v0[13];

  v0[5] = v1;

  sub_1005B981C(&qword_101A04C00);
  CheckedContinuation.resume(returning:)();
  swift_unknownObjectRelease();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100B8665C()
{
  v1 = v0[12];

  v0[4] = v1;
  swift_errorRetain();
  sub_1005B981C(&qword_101A04C00);
  CheckedContinuation.resume(throwing:)();
  swift_unknownObjectRelease();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100B8670C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100B867A4, v7, v6);
}

uint64_t sub_100B867A4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100B86898;

  return sub_100863AC4(0xD00000000000001FLL, 0x800000010158D480, sub_100B86AEC, v2);
}

uint64_t sub_100B86898()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100B869F0;
  }

  else
  {
    v5 = sub_100658F10;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B869F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B86A5C(void **a1)
{
  v1 = *a1;
  UUID.uuidString.getter();
  v2 = String._bridgeToObjectiveC()();

  [v1 didTeardownCoreRERendererForUUID:v2];

  sub_1005B981C(&unk_101A050F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100B86B08(uint64_t a1)
{
  v3 = *(sub_1005B981C(&qword_101A04C00) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100B86074(a1, v4);
}

uint64_t sub_100B86B84(uint64_t a1)
{
  v4 = *(sub_1005B981C(&qword_101A04C00) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100B8627C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B86C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B86CF4(uint64_t a1)
{
  v2 = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  UUID.init()();
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, v11, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = *(v6 + 32);
  v15(v14 + v13, v8, v5);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v16 = AnyCancellable.init(_:)();
  v17 = *(sub_1005B981C(&unk_101A135A0) + 48);
  swift_weakInit();
  swift_weakAssign();
  v15(&v4[v17], v11, v5);
  swift_storeEnumTagMultiPayload();
  v18 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_cancellationState;
  swift_beginAccess();
  sub_100B872A8(v4, a1 + v18);
  swift_endAccess();
  return v16;
}

uint64_t sub_100B86F74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return result;
      }
    }
  }
}

uint64_t sub_100B86FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A13530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B87048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_10064191C(0, 0, v10, &unk_10149B7F8, v14);
}

uint64_t sub_100B87244()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100B87048(v2, v3);
}

uint64_t sub_100B872A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B8730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[93] = a5;
  v5[92] = a4;
  sub_1005B981C(&qword_1019FB750);
  v5[94] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[95] = v6;
  v7 = *(v6 - 8);
  v5[96] = v7;
  v5[97] = *(v7 + 64);
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v5[101] = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  v5[104] = type metadata accessor for MainActor();
  v5[105] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B8749C, v9, v8);
}

uint64_t sub_100B8749C()
{
  v102 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (byte_1019F2C60 == 2 && (v2 = qword_1019F2C50, Strong == qword_1019F2C50))
    {
      v99 = qword_1019F2C58;
      v5 = qword_1019F21E0;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = v0[103];
      v7 = static OS_os_log.crlThreeDimensionalObjects;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      UUID.uuidString.getter();
      String.index(_:offsetBy:)();
      String.subscript.getter();

      v9 = static String._fromSubstring(_:)();
      v11 = v10;

      *(inited + 56) = &type metadata for String;
      v98 = sub_1000053B0();
      *(inited + 64) = v98;
      *(inited + 32) = v9;
      *(inited + 40) = v11;
      v12 = static os_log_type_t.debug.getter();
      sub_100005404(v7, &_mh_execute_header, v12, "[ExtGracePeriod] Cancellation triggered for extension. (uuid: %{public}@)", 73, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      v13 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_cancellationState;
      swift_beginAccess();
      sub_100B86C90(v2 + v13, v6);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v100 = v2;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v94 = v0[103];

          v91 = *(sub_1005B981C(&qword_101A13598) + 48);
          v89 = objc_opt_self();
          v15 = [v89 _atomicIncrementAssertCount];
          v101 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v101);
          StaticString.description.getter();
          v16 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v17 = String._bridgeToObjectiveC()();

          v18 = [v17 lastPathComponent];

          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v22 = v0[96];
          v86 = v0[95];
          v23 = static OS_os_log.crlAssert;
          v24 = swift_initStackObject();
          *(v24 + 16) = xmmword_10146CA70;
          *(v24 + 56) = &type metadata for Int32;
          *(v24 + 64) = &protocol witness table for Int32;
          *(v24 + 32) = v15;
          v25 = sub_100006370(0, &qword_1019F4D30);
          *(v24 + 96) = v25;
          v26 = sub_1005CF04C();
          *(v24 + 72) = v16;
          *(v24 + 136) = &type metadata for String;
          *(v24 + 144) = v98;
          *(v24 + 104) = v26;
          *(v24 + 112) = v19;
          *(v24 + 120) = v21;
          *(v24 + 176) = &type metadata for UInt;
          *(v24 + 184) = &protocol witness table for UInt;
          *(v24 + 152) = 599;
          v27 = v101;
          *(v24 + 216) = v25;
          *(v24 + 224) = v26;
          *(v24 + 192) = v27;
          v28 = v16;
          v29 = v27;
          v30 = static os_log_type_t.error.getter();
          sub_100005404(v23, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v31 = static os_log_type_t.error.getter();
          sub_100005404(v23, &_mh_execute_header, v31, "[ExtGracePeriod] Unexpected ExtensionProcess cancellation state: .timingOut", 75, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v32 = swift_allocObject();
          v32[2] = 8;
          v32[3] = 0;
          v32[4] = 0;
          v32[5] = 0;
          v33 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v34 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v35 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v36 = String._bridgeToObjectiveC()();

          [v89 handleFailureInFunction:v34 file:v35 lineNumber:599 isFatal:0 format:v36 args:v33];

          sub_100B86F74(v100, v99, 2);
          (*(v22 + 8))(&v94[v91], v86);
        }

        else
        {
          v96 = objc_opt_self();
          v55 = [v96 _atomicIncrementAssertCount];
          v101 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v101);
          StaticString.description.getter();
          v56 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v57 = String._bridgeToObjectiveC()();

          v58 = [v57 lastPathComponent];

          v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v60;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v62 = static OS_os_log.crlAssert;
          v63 = swift_initStackObject();
          *(v63 + 16) = xmmword_10146CA70;
          *(v63 + 56) = &type metadata for Int32;
          *(v63 + 64) = &protocol witness table for Int32;
          *(v63 + 32) = v55;
          v64 = sub_100006370(0, &qword_1019F4D30);
          *(v63 + 96) = v64;
          v65 = sub_1005CF04C();
          *(v63 + 72) = v56;
          *(v63 + 136) = &type metadata for String;
          *(v63 + 144) = v98;
          *(v63 + 104) = v65;
          *(v63 + 112) = v59;
          *(v63 + 120) = v61;
          *(v63 + 176) = &type metadata for UInt;
          *(v63 + 184) = &protocol witness table for UInt;
          *(v63 + 152) = 584;
          v66 = v101;
          *(v63 + 216) = v64;
          *(v63 + 224) = v65;
          *(v63 + 192) = v66;
          v67 = v56;
          v68 = v66;
          v69 = static os_log_type_t.error.getter();
          sub_100005404(v62, &_mh_execute_header, v69, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v63);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v70 = static os_log_type_t.error.getter();
          sub_100005404(v62, &_mh_execute_header, v70, "[ExtGracePeriod] Unexpected ExtensionProcess cancellation state: .initializing", 78, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v71 = swift_allocObject();
          v71[2] = 8;
          v71[3] = 0;
          v71[4] = 0;
          v71[5] = 0;
          v72 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v73 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v74 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v75 = String._bridgeToObjectiveC()();

          [v96 handleFailureInFunction:v73 file:v74 lineNumber:584 isFatal:0 format:v75 args:v72];

          sub_100B86F74(v2, v99, 2);
        }
      }

      else
      {
        v37 = v0[103];
        v38 = v0[100];
        v39 = v0[96];
        v40 = v0[95];
        v41 = sub_1005B981C(&unk_101A135A0);
        v42 = *(v39 + 32);
        v42(v38, v37 + *(v41 + 48), v40);
        if (static UUID.== infix(_:_:)())
        {
          v97 = v0[102];
          v43 = v0[99];
          v44 = v0[98];
          v85 = v44;
          v45 = v0[96];
          v46 = v0[95];
          v84 = v46;
          v47 = v0[94];
          v87 = v0[97];
          v92 = v43;
          v95 = v0[100];
          UUID.init()();
          v48 = type metadata accessor for TaskPriority();
          (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
          v49 = swift_allocObject();
          swift_weakInit();
          (*(v45 + 16))(v44, v43, v46);

          v50 = static MainActor.shared.getter();
          v51 = (*(v45 + 80) + 32) & ~*(v45 + 80);
          v52 = swift_allocObject();
          *(v52 + 16) = v50;
          *(v52 + 24) = &protocol witness table for MainActor;
          v42(v52 + v51, v85, v84);
          *(v52 + ((v87 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v49;

          v53 = sub_10064191C(0, 0, v47, &unk_10149B808, v52);

          (*(v45 + 8))(v95, v84);
          v54 = *(sub_1005B981C(&qword_101A13598) + 48);
          *v97 = v53;
          v42(v97 + v54, v92, v84);
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100B872A8(v97, v100 + v13);
          swift_endAccess();
          sub_100B86F74(v100, v99, 2);
        }

        else
        {
          v88 = v0[100];
          v90 = v0[96];
          v93 = v0[95];
          v76 = swift_initStackObject();
          *(v76 + 16) = xmmword_10146BDE0;
          UUID.uuidString.getter();
          String.index(_:offsetBy:)();
          String.subscript.getter();

          v77 = static String._fromSubstring(_:)();
          v79 = v78;

          *(v76 + 56) = &type metadata for String;
          *(v76 + 64) = v98;
          *(v76 + 32) = v77;
          *(v76 + 40) = v79;
          UUID.uuidString.getter();
          String.index(_:offsetBy:)();
          String.subscript.getter();

          v80 = static String._fromSubstring(_:)();
          v82 = v81;

          *(v76 + 96) = &type metadata for String;
          *(v76 + 104) = v98;
          *(v76 + 72) = v80;
          *(v76 + 80) = v82;
          v83 = static os_log_type_t.debug.getter();
          sub_100005404(v7, &_mh_execute_header, v83, "[ExtGracePeriod]   (Cancellation ignored: UUID mismatch) (uuid: %{public}@, found: %{public}@)", 94, 2, v76);

          sub_100B86F74(v2, v99, 2);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v90[1](v88, v93);
        }

        sub_10000CAAC(v0[103], &qword_101A13530);
      }
    }

    else
    {
    }
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100B8828C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100B8730C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B88384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  v5[46] = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  v5[47] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[48] = v6;
  v5[49] = *(v6 - 8);
  v5[50] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[51] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[52] = v8;
  v5[53] = v7;

  return _swift_task_switch(sub_100B884A8, v8, v7);
}

uint64_t sub_100B884A8()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlThreeDimensionalObjects;
  v0[54] = static OS_os_log.crlThreeDimensionalObjects;
  v0[55] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  v0[56] = v6;
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v1, &_mh_execute_header, v7, "[ExtGracePeriod] Grace period begins. (uuid: %{public}@)", 56, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v8 = swift_task_alloc();
  v0[57] = v8;
  *v8 = v0;
  v8[1] = sub_100B886A4;

  return static Task<>.sleep(nanoseconds:)(30000000000);
}

uint64_t sub_100B886A4()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_100B88D18;
  }

  else
  {
    v5 = sub_100B887E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B887E0()
{
  v1 = v0[58];

  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[56];
    v3 = v0[54];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v5 = static String._fromSubstring(_:)();
    v7 = v6;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v2;
    *(inited + 32) = v5;
    *(inited + 40) = v7;
    v8 = static os_log_type_t.debug.getter();
    sub_100005404(v3, &_mh_execute_header, v8, "[ExtGracePeriod] Grace period cancelled (new API endpoint created). (uuid: %{public}@)", 86, 2, inited);

    swift_setDeallocating();
    v9 = inited + 32;
LABEL_8:
    sub_100005070(v9);
    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    v12 = v0[56];
    v13 = v0[54];
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_10146C6B0;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v15 = static String._fromSubstring(_:)();
    v17 = v16;

    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = v12;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v18 = static os_log_type_t.debug.getter();
    sub_100005404(v13, &_mh_execute_header, v18, "[ExtGracePeriod] Grace period cancelled (state changed). (uuid: %{public}@)", 75, 2, v14);
    swift_setDeallocating();
    v9 = v14 + 32;
    goto LABEL_8;
  }

  if (byte_1019F2C60 != 2 || (v11 = qword_1019F2C50, Strong != qword_1019F2C50))
  {

    goto LABEL_7;
  }

  v21 = qword_1019F2C58;
  v22 = v0[47];
  v23 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_cancellationState;
  swift_beginAccess();
  sub_100B86C90(v11 + v23, v22);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = v0[47];

    sub_100B88FC0(v37);
    goto LABEL_7;
  }

  v25 = v0[49];
  v24 = v0[50];
  v27 = v0[47];
  v26 = v0[48];

  v28 = sub_1005B981C(&qword_101A13598);
  (*(v25 + 32))(v24, v27 + *(v28 + 48), v26);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    v39 = v0[49];
    v38 = v0[50];
    v40 = v0[48];

    sub_100B86F74(v11, v21, 2);
    (*(v39 + 8))(v38, v40);
    goto LABEL_7;
  }

  v41 = v0[56];
  v42 = v0[54];
  v43 = v0[49];
  v44 = v0[48];
  v45 = v0[50];
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146C6B0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v30 = static String._fromSubstring(_:)();
  v32 = v31;

  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = v41;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v33 = static os_log_type_t.debug.getter();
  sub_100005404(v42, &_mh_execute_header, v33, "[ExtGracePeriod] Grace period ended. Extension process invalidated. (uuid: %{public}@)", 86, 2, v29);
  swift_setDeallocating();
  sub_100005070(v29 + 32);
  v34 = qword_1019F2C50;
  v35 = qword_1019F2C58;
  qword_1019F2C50 = 0;
  qword_1019F2C58 = 0;
  v36 = byte_1019F2C60;
  byte_1019F2C60 = 3;
  sub_100B86F74(v34, v35, v36);
  [*(v11 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_foregroundAssertion) invalidate];
  _AppExtensionProcess.invalidate()();
  sub_100B86F74(v11, v21, 2);

  (*(v43 + 8))(v45, v44);
LABEL_9:

  v19 = v0[1];

  return v19();
}

uint64_t sub_100B88D18()
{

  v1 = v0[56];
  v2 = v0[54];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "[ExtGracePeriod] Grace period cancelled (new API endpoint created). (uuid: %{public}@)", 86, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100B88EA0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100B88384(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100B88FC0(uint64_t a1)
{
  v2 = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B8901C(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_1005B981C(a1);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  a3(*(v3 + 32));
  (*(v6 + 8))(v3 + v8, v5);

  return _swift_deallocObject(v3, v8 + v9, v7 | 7);
}

uint64_t sub_100B890F4(uint64_t a1)
{
  v4 = *(sub_1005B981C(&unk_101A135B0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100B823E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B891F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_1008BE798(a1);
}

void sub_100B892B4(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v3 = sub_1005B981C(&unk_101A135B0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v20 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    v14 = (v9 - 8);
    v11(v7, v12, v3, v5);
    while (1)
    {
      v16.super.isa = _AppExtensionProcess.makeXPCConnection()().super.isa;
      if (v17.super.isa)
      {
        isa = v17.super.isa;
        CheckedContinuation.resume(throwing:)();
        (*v14)(v7, v3);
      }

      else
      {
        if (qword_1019F1938 != -1)
        {
          v19 = v16.super.isa;
          swift_once();
          v16.super.isa = v19;
        }

        v18 = v16.super.isa;
        [(objc_class *)v16.super.isa setRemoteObjectInterface:qword_101AD6B40];
        isa = v18;
        CheckedContinuation.resume(returning:)();
        (*v14)(v7, v3);
      }

      v12 += v13;
      if (!--v8)
      {
        break;
      }

      v10(v7, v12, v3, v15);
    }
  }
}

uint64_t sub_100B8948C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return result;
      }
    }
  }
}

uint64_t sub_100B894F0(int a1)
{
  v3 = *(sub_1005B981C(&qword_101A135D0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100B85AE4(a1, v4);
}

uint64_t sub_100B8956C(uint64_t a1)
{
  v4 = *(sub_1005B981C(&qword_101A135D0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100B85CF8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100B89698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100B84F58(a1, v4, v5, v6);
}

uint64_t sub_100B8974C()
{
  v1 = sub_1005B981C(&qword_101A135D8);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v13[-v5];
  v7 = sub_1005B981C(&unk_101A050F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  v11 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F22ViewControllerDelegate_continuation;
  swift_beginAccess();
  sub_100B89BB4(v0 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CAAC(v6, &qword_101A135D8);
  }

  (*(v8 + 32))(v10, v6, v7);
  (*(v8 + 56))(v3, 1, 1, v7);
  swift_beginAccess();
  sub_100B89C24(v3, v0 + v11);
  swift_endAccess();
  CheckedContinuation.resume(returning:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100B89974(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A135D8);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  v9 = sub_1005B981C(&unk_101A050F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - v11;
  v13 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F22ViewControllerDelegate_continuation;
  swift_beginAccess();
  sub_100B89BB4(v1 + v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000CAAC(v8, &qword_101A135D8);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a1)
  {
    (*(v10 + 56))(v5, 1, 1, v9);
    swift_beginAccess();
    swift_errorRetain();
    sub_100B89C24(v5, v1 + v13);
    swift_endAccess();
    v15[0] = a1;
    CheckedContinuation.resume(throwing:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100B89BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A135D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B89C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A135D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_100B89C9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A13608))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 canvasEditorHelper];
    swift_unknownObjectRelease();
    v6 = [v5 layoutsForAlignAndDistribute];

    sub_100006370(0, &qword_101A287B0);
    sub_100B8A580();
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v7 + 16);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = 0;
  }

  return v8 > 2;
}

BOOL sub_100B89DF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A13608))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 canvasEditorHelper];
    swift_unknownObjectRelease();
    v6 = [v5 layoutsForAlignAndDistribute];

    sub_100006370(0, &qword_101A287B0);
    sub_100B8A580();
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v7 + 16);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = 0;
  }

  return v8 > 1;
}

uint64_t sub_100B89F44()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v2 = sub_100006370(0, &qword_101A13608);
  if (v2)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v4 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 canvasEditorHelper];
    swift_unknownObjectRelease();
    v7 = [v6 canvasEditorCanPerformGroupActionWithSender:v0];

    v8 = v7 == 1;
    if (v2)
    {
LABEL_6:
      v9 = swift_getObjCClassFromMetadata();
      goto LABEL_9;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = 0;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_9:
  v10 = [v1 mostSpecificCurrentEditorOfClass:v9];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = [v11 canvasEditorHelper];
    swift_unknownObjectRelease();
    v13 = [v12 canvasEditorCanPerformUngroupActionWithSender:v0] == 1;

    v14 = v13 << 8;
  }

  else
  {
    swift_unknownObjectRelease();
    v14 = 0;
  }

  return v14 | v8;
}

uint64_t sub_100B8A0E4(uint64_t result)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        v10 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
        if (sub_100006370(0, &qword_101A13608))
        {
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        }

        else
        {
          ObjCClassFromMetadata = 0;
        }

        [v10 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (!v14)
        {
          goto LABEL_40;
        }

        v15 = &selRef_alignDrawablesByVerticalCenter_;
      }

      else
      {
        if (result != 2)
        {
          return result;
        }

        v2 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
        if (sub_100006370(0, &qword_101A13608))
        {
          v3 = swift_getObjCClassFromMetadata();
        }

        else
        {
          v3 = 0;
        }

        [v2 mostSpecificCurrentEditorOfClass:v3];
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (!v14)
        {
          goto LABEL_40;
        }

        v15 = &selRef_alignDrawablesByRightEdge_;
      }
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
      if (sub_100006370(0, &qword_101A13608))
      {
        v7 = swift_getObjCClassFromMetadata();
      }

      else
      {
        v7 = 0;
      }

      [v6 mostSpecificCurrentEditorOfClass:v7];
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (!v14)
      {
        goto LABEL_40;
      }

      v15 = &selRef_alignDrawablesByLeftEdge_;
    }

    goto LABEL_39;
  }

  if (result == 3)
  {
    v8 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    if (sub_100006370(0, &qword_101A13608))
    {
      v9 = swift_getObjCClassFromMetadata();
    }

    else
    {
      v9 = 0;
    }

    [v8 mostSpecificCurrentEditorOfClass:v9];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      goto LABEL_40;
    }

    v15 = &selRef_alignDrawablesByTopEdge_;
    goto LABEL_39;
  }

  if (result == 4)
  {
    v12 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    if (sub_100006370(0, &qword_101A13608))
    {
      v13 = swift_getObjCClassFromMetadata();
    }

    else
    {
      v13 = 0;
    }

    [v12 mostSpecificCurrentEditorOfClass:v13];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      goto LABEL_40;
    }

    v15 = &selRef_alignDrawablesByHorizontalCenter_;
    goto LABEL_39;
  }

  if (result != 5)
  {
    return result;
  }

  v4 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A13608))
  {
    v5 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v5 = 0;
  }

  [v4 mostSpecificCurrentEditorOfClass:v5];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = &selRef_alignDrawablesByBottomEdge_;
LABEL_39:
    [v14 *v15];
  }

LABEL_40:

  return swift_unknownObjectRelease();
}

BOOL sub_100B8A45C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A12078))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 canPerformEditorAction:"mergeDrawings:" withSender:v0];
    swift_unknownObjectRelease();
    return v5 == 1;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

id sub_100B8A528()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterArrangeDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100B8A580()
{
  result = qword_101A13610;
  if (!qword_101A13610)
  {
    sub_100006370(255, &qword_101A287B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13610);
  }

  return result;
}

unint64_t sub_100B8A5E8()
{
  result = sub_100078EA4(_swiftEmptyArrayStorage);
  qword_101AD75E8 = result;
  return result;
}

uint64_t sub_100B8A6DC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100B8AB34();
  v8 = static OS_os_log.default.getter();
  sub_1005B981C(&qword_1019F54E0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_10146BDE0;
  if (!a3)
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = result;
  *(result + 56) = &type metadata for String;
  result = sub_1000053B0();
  v10[8] = result;
  v10[4] = a2;
  v10[5] = a3;
  if (!a4)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v10[12] = sub_1005B981C(&unk_101A07740);
  v10[13] = sub_100B8AB80();
  v10[9] = a4;
  v34 = a3;

  v11 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v11, "[CARMEL-PPT] Running test %@ options %@", 39, 2, v10);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  if (qword_1019F1DB0 != -1)
  {
LABEL_21:
    swift_once();
  }

  swift_beginAccess();
  qword_101AD75E8 = a4;

  v12 = sub_100C8E23C();
  v13 = v12;
  v14 = *(v12 + 16);
  if (!v14)
  {

LABEL_15:
    if (a1)
    {
      v22 = String._bridgeToObjectiveC()();
      _StringGuts.grow(_:)(20);

      strcpy(v35, "No class for ");
      HIWORD(v35[1]) = -4864;

      sub_1005B981C(&unk_1019F6C70);
      v23._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v23);

      v24._countAndFlagsBits = 23328;
      v24._object = 0xE200000000000000;
      String.append(_:)(v24);
      sub_100C8E23C();
      sub_1005B981C(&qword_101A13688);
      v25 = Array.description.getter();
      v27 = v26;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      String.append(_:)(v28);

      v29._countAndFlagsBits = 93;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v30 = String._bridgeToObjectiveC()();

      [a1 failedTest:v22 withFailure:v30];

      return 0;
    }

    goto LABEL_24;
  }

  v33 = a1;
  a1 = 0;
  v15 = (v12 + 48);
  while (1)
  {
    if (a1 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v16 = *(v15 - 2);
    v17 = *(v15 - 1);
    a4 = *v15;
    if ((*(v17 + 8))(v16, v17) == a2 && v18 == v34)
    {
      break;
    }

    v20 = a2;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_18;
    }

    ++a1;
    v15 += 3;
    a2 = v20;
    if (v14 == a1)
    {

      a1 = v33;
      goto LABEL_15;
    }
  }

LABEL_18:

  (*(a4 + 8))(v35, v16, a4);
  v31 = v35[0];
  qword_101AD75D0 = v35[0];
  *algn_101AD75D8 = v17;
  qword_101AD75E0 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v35[0] = v31;
  result = v33;
  if (!v33)
  {
    goto LABEL_25;
  }

  (*(a4 + 16))(v33, ObjectType, a4);
  swift_unknownObjectRelease();
  return 1;
}

unint64_t sub_100B8AB34()
{
  result = qword_1019F6EE0;
  if (!qword_1019F6EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F6EE0);
  }

  return result;
}

unint64_t sub_100B8AB80()
{
  result = qword_101A13680;
  if (!qword_101A13680)
  {
    sub_1005C4E5C(&unk_101A07740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13680);
  }

  return result;
}

uint64_t sub_100B8ABF4()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  sub_10061655C(v0, qword_101AD75F0);
  sub_1005EB3DC(v0, qword_101AD75F0);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_100B8AC90()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD7620);
  sub_1005EB3DC(v0, qword_101AD7620);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100B8AD40()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD7638);
  sub_1005EB3DC(v0, qword_101AD7638);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100B8ADF0()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD7650);
  sub_1005EB3DC(v0, qword_101AD7650);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100B8AECC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v3, a2);
  sub_1005EB3DC(v3, a2);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100B8AF78()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  sub_10061655C(v0, qword_101AD7680);
  sub_1005EB3DC(v0, qword_101AD7680);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_100B8AFE8@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v13 = a1;
  v3 = sub_1005B981C(&qword_1019FE720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = sub_1005B981C(&qword_1019FE728);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10001A2F8(&qword_1019FE730, &qword_1019FE728);
  static PredicateExpressions.build_Arg<A>(_:)();
  v14 = v13;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_1005B981C(&qword_1019FE738);
  a2[4] = sub_100758DC4();
  sub_10002C58C(a2);
  sub_10001A2F8(&qword_1019FE758, &qword_1019FE720);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100B8B250@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019FE6A0);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  __chkstk_darwin(v3);
  v27 = &v26 - v5;
  v6 = sub_1005B981C(&qword_1019FE6A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_1005B981C(&qword_1019FE6B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v28 = sub_1005B981C(&qword_101A0F770);
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  sub_10001A2F8(&qword_101A0F778, &qword_1019FE6B0);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v13, v10);
  v35 = 1;
  v17 = v27;
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = v29;
  v18 = v30;
  v20 = v31;
  (*(v30 + 104))(v29, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v31);
  v21 = sub_1005B981C(&qword_101A0F780);
  v22 = v32;
  v32[3] = v21;
  v22[4] = sub_100B8C80C(&qword_101A0F788, &qword_101A0F780, &unk_1014D4B40, sub_100AC3AF4);
  sub_10002C58C(v22);
  sub_10001A2F8(&qword_101A0F798, &qword_101A0F770);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0);
  v23 = v28;
  v24 = v33;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v17, v24);
  return (*(v14 + 8))(v16, v23);
}

uint64_t sub_100B8B7A4@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v44 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019FE6A0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  __chkstk_darwin(v3);
  v43 = &v35 - v5;
  v6 = type metadata accessor for Tips.DonationTimeRange();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019FE6A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = sub_1005B981C(&qword_1019FE6B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_1005B981C(&qword_1019FE6B8);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v21 = sub_1005B981C(&qword_1019FE6C0);
  v22 = *(v21 - 8);
  v41 = v21;
  v42 = v22;
  __chkstk_darwin(v21);
  v36 = &v35 - v23;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  static Tips.DonationTimeRange.day.getter();
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  sub_100758BAC();
  static PredicateExpressions.build_donatedWithin<A, B>(_:_:)();
  (*(v39 + 8))(v8, v40);
  (*(v14 + 8))(v16, v13);
  swift_getKeyPath();
  sub_10001A2F8(&qword_1019FE6E0, &qword_1019FE6B8);
  v25 = v36;
  v24 = v37;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v38 + 8))(v20, v24);
  v50 = 1;
  v26 = v43;
  static PredicateExpressions.build_Arg<A>(_:)();
  v28 = v44;
  v27 = v45;
  v29 = v46;
  (*(v45 + 104))(v44, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v46);
  v30 = sub_1005B981C(&qword_1019FE6E8);
  v31 = v47;
  v47[3] = v30;
  v31[4] = sub_100B8C80C(&qword_1019FE6F0, &qword_1019FE6E8, &unk_10147A1C0, sub_100758D14);
  sub_10002C58C(v31);
  sub_10001A2F8(&qword_1019FE710, &qword_1019FE6C0);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0);
  v32 = v41;
  v33 = v48;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v27 + 8))(v28, v29);
  (*(v49 + 8))(v26, v33);
  return (*(v42 + 8))(v25, v32);
}

uint64_t sub_100B8BEE0@<X0>(uint64_t *a1@<X8>)
{
  sub_10067E168();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100B8BF24()
{
  result = qword_101A13690;
  if (!qword_101A13690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13690);
  }

  return result;
}

unint64_t sub_100B8BF78(uint64_t a1)
{
  result = sub_10067E168();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100B8BFA0()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  v23 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v22 - v1;
  v3 = sub_1005B981C(&unk_1019F6CF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - v5;
  v7 = type metadata accessor for Tips.Rule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F1DC0 != -1)
  {
    swift_once();
  }

  v11 = sub_1005EB3DC(v3, qword_101AD7608);
  swift_beginAccess();
  v12 = *(v4 + 16);
  v12(v6, v11, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[4] = static Tips.RuleBuilder.buildExpression(_:)();
  v25 = *(v8 + 8);
  v25(v10, v7);
  if (qword_1019F1DD8 != -1)
  {
    swift_once();
  }

  v13 = sub_1005EB3DC(v3, qword_101AD7650);
  swift_beginAccess();
  v12(v6, v13, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[3] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  if (qword_1019F1DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_1005EB3DC(v3, qword_101AD7620);
  swift_beginAccess();
  v12(v6, v14, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[2] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  if (qword_1019F1DD0 != -1)
  {
    swift_once();
  }

  v15 = sub_1005EB3DC(v3, qword_101AD7638);
  swift_beginAccess();
  v12(v6, v15, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[1] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  if (qword_1019F1DE0 != -1)
  {
    swift_once();
  }

  v16 = sub_1005EB3DC(v3, qword_101AD7668);
  swift_beginAccess();
  v12(v6, v16, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[0] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  v24 = v7;
  if (qword_1019F1DB8 != -1)
  {
    swift_once();
  }

  v17 = sub_1005EB3DC(v0, qword_101AD75F0);
  v18 = *(v23 + 16);
  v18(v2, v17, v0);
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v24);
  if (qword_1019F1DE8 != -1)
  {
    swift_once();
  }

  v19 = sub_1005EB3DC(v0, qword_101AD7680);
  v18(v2, v19, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v24);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v20 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v20;
}

uint64_t sub_100B8C80C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    a4();
    sub_10001A2F8(&qword_1019FE708, &qword_1019FE6A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100B8C8C4(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for Locale();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v29[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1005B981C(&qword_101A13698);
  __chkstk_darwin(v4 - 8);
  v6 = &v29[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TimeZone();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  v15 = static AASApplicationManager.shared;
  v16 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_isSaltRegenerated;
  swift_beginAccess();
  v30 = *(v15 + v16);
  v17 = [objc_opt_self() defaultManager];
  v18 = [v17 ubiquityIdentityToken];

  if (v18)
  {
    swift_unknownObjectRelease();
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  static TimeZone.current.getter();
  Date.init()();
  v20 = TimeZone.secondsFromGMT(for:)();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  if (v20 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = [objc_opt_self() currentLocale];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  v23 = [v21 locale];

  if (!v23)
  {
LABEL_17:
    __break(1u);
    return;
  }

  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  Locale.region.getter();
  (*(v31 + 8))(v3, v32);
  v24 = type metadata accessor for Locale.Region();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v6, 1, v24) == 1)
  {
    sub_10000CAAC(v6, &qword_101A13698);
    v26 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E75;
  }

  else
  {
    v27 = Locale.Region.identifier.getter();
    v26 = v28;
    (*(v25 + 8))(v6, v24);
  }

  v34 = v20;
  v35 = v27;
  v36 = v26;
  v37 = v19;
  v38 = v30;
  sub_100B8D2C4();
  SessionData.init(key:data:)();
}

uint64_t sub_100B8CD6C(uint64_t a1)
{
  v1[11] = a1;
  sub_1005B981C(&qword_1019FBE50);
  v1[12] = swift_task_alloc();
  v2 = type metadata accessor for AASUserInfo();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_1005B981C(&qword_101A136A8);
  v3 = swift_task_alloc();
  v1[16] = v3;
  v4 = swift_task_alloc();
  v1[17] = v4;
  *v4 = v1;
  v4[1] = sub_100B8CED8;

  return static Storefront.current.getter(v3);
}

uint64_t sub_100B8CED8()
{

  return _swift_task_switch(sub_100B8CFD4, 0, 0);
}

uint64_t sub_100B8CFD4()
{
  v1 = *(v0 + 128);
  v2 = type metadata accessor for Storefront();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000CAAC(v1, &qword_101A136A8);
    v4 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = Storefront.id.getter();
    v4 = v6;
    (*(v3 + 8))(v1, v2);
  }

  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  v10 = static AASApplicationManager.shared;
  v11 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_userInfo;
  swift_beginAccess();
  sub_10005FE44(v10 + v11, v9);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v12 = *(v0 + 96);

    sub_10000CAAC(v12, &qword_1019FBE50);
    v13 = 1;
  }

  else
  {
    v14 = *(v0 + 120);
    sub_10005EC6C(*(v0 + 96), v14);
    v15 = UUID.uuidString.getter();
    v16 = *(v10 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager);
    v17 = *(v16 + 20);
    LOBYTE(v16) = *(v16 + 24);
    *(v0 + 16) = v15;
    *(v0 + 24) = v18;
    *(v0 + 32) = -1;
    *(v0 + 40) = v5;
    *(v0 + 48) = v4;
    *(v0 + 56) = v17;
    *(v0 + 60) = v16;
    sub_100B8D318();
    SessionData.init(key:data:)();
    sub_10005EC10(v14);
    v13 = 0;
  }

  v19 = *(v0 + 88);
  v20 = sub_1005B981C(&qword_101A136B0);
  (*(*(v20 - 8) + 56))(v19, v13, 1, v20);

  v21 = *(v0 + 8);

  return v21();
}

unint64_t sub_100B8D2C4()
{
  result = qword_101A136A0;
  if (!qword_101A136A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A136A0);
  }

  return result;
}

unint64_t sub_100B8D318()
{
  result = qword_101A136B8;
  if (!qword_101A136B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A136B8);
  }

  return result;
}

uint64_t sub_100B8D36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B8D3B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100B8D408()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 16;
  }

  v3 = 0;
  v4 = (v1 + 48);
  while (1)
  {
    v5 = *(v4 - 1);
    v6 = *v4 >> 62;
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v9 = v5 + 16;
        v7 = *(v5 + 16);
        v8 = *(v9 + 8);
        v10 = __OFSUB__(v8, v7);
        v5 = v8 - v7;
        if (v10)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else if (v6)
    {
      v10 = __OFSUB__(HIDWORD(v5), v5);
      LODWORD(v5) = HIDWORD(v5) - v5;
      if (v10)
      {
        goto LABEL_23;
      }

      v5 = v5;
    }

    else
    {
      v5 = BYTE6(*v4);
    }

    v10 = __OFADD__(v5, 24);
    v11 = v5 + 24;
    if (v10)
    {
      break;
    }

    v10 = __OFADD__(v3, v11);
    v3 += v11;
    if (v10)
    {
      goto LABEL_21;
    }

    v4 += 3;
    if (!--v2)
    {
      result = v3 + 16;
      if (!__OFADD__(v3, 16))
      {
        return result;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100B8D4B0()
{
  v1 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v1 - 8);
  v78 = &v61 - v2;
  v76 = type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord(0);
  __chkstk_darwin(v76);
  v82 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for CRLProto_Data(0);
  v69 = *(v80 - 8);
  __chkstk_darwin(v80);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = (&v61 - v7);
  __chkstk_darwin(v8);
  v67 = (&v61 - v9);
  __chkstk_darwin(v10);
  v81 = (&v61 - v11);
  v12 = type metadata accessor for CRLProto_RealTimeMessage(0);
  __chkstk_darwin(v12);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14[1] = _swiftEmptyArrayStorage;
  v61 = v15;
  result = UnknownStorage.init()();
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v62 = v14;
  *v14 = v17;
  v66 = *(v18 + 16);
  if (v66)
  {
    v19 = 0;
    v20 = (v69 + 56);
    v21 = (v69 + 48);
    v22 = (v18 + 48);
    v23 = _swiftEmptyArrayStorage;
    v24 = xmmword_10146F370;
    v63 = (v69 + 56);
    v64 = v18;
    v70 = (v69 + 48);
    v79 = xmmword_10146F370;
    v65 = v5;
    while (v19 < *(v18 + 16))
    {
      v71 = v22;
      v72 = v19;
      v75 = v23;
      v26 = *(v22 - 1);
      v25 = *v22;
      v27 = *(v22 - 2);
      v28 = v80;
      *v81 = v24;
      v73 = v25;
      sub_100024E98(v26, v25);
      UnknownStorage.init()();
      v29 = v76;
      v30 = v82;
      UnknownStorage.init()();
      v31 = *(v29 + 24);
      v32 = *v20;
      (*v20)(&v30[v31], 1, 1, v28);
      *v30 = v27;
      v33 = v67;
      *v67 = v79;
      UnknownStorage.init()();
      sub_1009DCE5C(&v30[v31]);
      sub_100683F6C(v33, &v30[v31]);
      v74 = v32;
      v32(&v30[v31], 0, 1, v28);
      v34 = v78;
      sub_10084DD24(&v30[v31], v78);
      v35 = *v21;
      if ((*v21)(v34, 1, v28) == 1)
      {
        v36 = v68;
        *v68 = v79;
        v37 = v80;
        v38 = v73;
        sub_100024E98(v26, v73);
        v39 = v78;
        UnknownStorage.init()();
        v40 = v35(v39, 1, v37);
        v41 = v38;
        if (v40 != 1)
        {
          sub_1009DCE5C(v78);
        }
      }

      else
      {
        v36 = v68;
        sub_100683F6C(v78, v68);
        v41 = v73;
        sub_100024E98(v26, v73);
      }

      sub_10002640C(*v36, *(v36 + 1));
      *v36 = v26;
      *(v36 + 1) = v41;
      v42 = v82;
      sub_1009DCE5C(&v82[v31]);
      sub_100683F6C(v36, v42 + v31);
      v74((v42 + v31), 0, 1, v80);
      sub_100B8E448(&qword_101A137B0, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord);
      v43 = v77;
      v44 = Message.serializedData(partial:)();
      v77 = v43;
      if (v43)
      {
        sub_10002640C(v26, v41);
        sub_100B8E384(v82, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord);

        sub_100B8E384(v81, type metadata accessor for CRLProto_Data);
        v57 = v62;
        return sub_100B8E384(v57, type metadata accessor for CRLProto_RealTimeMessage);
      }

      v46 = v44;
      v47 = v45;
      sub_100B8E384(v82, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord);
      v48 = v81;
      sub_10002640C(*v81, v81[1]);
      *v48 = v46;
      v48[1] = v47;
      v49 = v48;
      v50 = v65;
      sub_100B8E3E4(v49, v65);
      v51 = v75;
      v52 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_100B37164(0, v51[2] + 1, 1, v51);
      }

      v54 = v51[2];
      v53 = v51[3];
      v55 = v51;
      if (v54 >= v53 >> 1)
      {
        v55 = sub_100B37164(v53 > 1, v54 + 1, 1, v51);
      }

      v19 = v72 + 1;
      sub_10002640C(v26, v52);
      *(v55 + 16) = v54 + 1;
      v23 = v55;
      sub_100683F6C(v50, v55 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v54);
      result = sub_100B8E384(v81, type metadata accessor for CRLProto_Data);
      v21 = v70;
      v22 = v71 + 3;
      v20 = v63;
      v18 = v64;
      v24 = v79;
      if (v66 == v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_16:
    v56 = v23;
    v57 = v62;
    v62[1] = v56;
    sub_100B8E448(&qword_101A137B8, type metadata accessor for CRLProto_RealTimeMessage);
    v58 = v77;
    v59 = Message.serializedData(partial:)();
    v77 = v58;
    if (v58)
    {
      return sub_100B8E384(v57, type metadata accessor for CRLProto_RealTimeMessage);
    }

    else
    {
      v60 = v59;
      sub_100B8E384(v57, type metadata accessor for CRLProto_RealTimeMessage);
      return v60;
    }
  }

  return result;
}

uint64_t sub_100B8DB78()
{
  if (*v0)
  {
    return 0x7365676E616863;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_100B8DBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365676E616863 && a2 == 0xE700000000000000)
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

uint64_t sub_100B8DC88(uint64_t a1)
{
  v2 = sub_100B8E210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B8DCC4(uint64_t a1)
{
  v2 = sub_100B8E210();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B8DD00()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100B8DD5C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A13798);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100B8E210();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v10[15] = 1;
    sub_1005B981C(&qword_101A13780);
    sub_100B8E2B8(&qword_101A137A0, sub_100B8E330);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B8DF1C(void *a1)
{
  v10[0] = sub_1005B981C(&qword_101A13770);
  v4 = *(v10[0] - 8);
  __chkstk_darwin(v10[0]);
  v6 = v10 - v5;
  sub_100020E58(a1, a1[3]);
  sub_100B8E210();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    v12 = 0;
    v8 = v10[0];
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1005B981C(&qword_101A13780);
    v11 = 1;
    sub_100B8E2B8(&qword_101A13788, sub_100B8E264);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v6, v8);
    *(v1 + 24) = v10[1];
  }

  sub_100005070(a1);
  return v1;
}

uint64_t sub_100B8E168@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_100B8DF1C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100B8E1E4(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16))
  {
    return sub_100671DB4(*(*a1 + 24), *(*a2 + 24));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100B8E210()
{
  result = qword_101A13778;
  if (!qword_101A13778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13778);
  }

  return result;
}

unint64_t sub_100B8E264()
{
  result = qword_101A13790;
  if (!qword_101A13790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13790);
  }

  return result;
}

uint64_t sub_100B8E2B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A13780);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B8E330()
{
  result = qword_101A137A8;
  if (!qword_101A137A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A137A8);
  }

  return result;
}

uint64_t sub_100B8E384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B8E3E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B8E448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B8E490(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for CRLProto_RealTimeMessage(0);
  __chkstk_darwin(v6);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100B8E448(&qword_101A137B8, type metadata accessor for CRLProto_RealTimeMessage);
  Message.init(serializedData:extensions:partial:options:)();
  if (v2)
  {
    return sub_10002640C(a1, a2);
  }

  v28 = a1;
  v29 = a2;
  v26 = *v8;
  v27 = v8;
  v10 = v8[1];
  v11 = *(v10 + 16);

  v33 = v11;
  if (v11)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    while (v12 < *(v10 + 16))
    {
      v14 = *(type metadata accessor for CRLProto_Data(0) - 8);
      v15 = (v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12);
      v16 = *v15;
      v17 = v15[1];
      sub_100024E98(*v15, v17);
      v18 = sub_100BF0FE8(v16, v17);
      v20 = v19;
      v22 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100B36FF8(0, *(v13 + 2) + 1, 1, v13);
        v13 = result;
      }

      v24 = *(v13 + 2);
      v23 = *(v13 + 3);
      if (v24 >= v23 >> 1)
      {
        result = sub_100B36FF8((v23 > 1), v24 + 1, 1, v13);
        v13 = result;
      }

      ++v12;
      *(v13 + 2) = v24 + 1;
      v25 = &v13[24 * v24];
      *(v25 + 4) = v18;
      *(v25 + 5) = v20;
      *(v25 + 6) = v22;
      if (v33 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_13:

    sub_10002640C(v28, v29);
    sub_100B8E384(v27, type metadata accessor for CRLProto_RealTimeMessage);
    type metadata accessor for CRLRealTimeMessage();
    result = swift_allocObject();
    *(result + 16) = v26;
    *(result + 24) = v13;
  }

  return result;
}

unint64_t sub_100B8E7F8()
{
  result = qword_101A137C0;
  if (!qword_101A137C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A137C0);
  }

  return result;
}

unint64_t sub_100B8E850()
{
  result = qword_101A137C8;
  if (!qword_101A137C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A137C8);
  }

  return result;
}

unint64_t sub_100B8E8A8()
{
  result = qword_101A137D0;
  if (!qword_101A137D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A137D0);
  }

  return result;
}

id sub_100B8E950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLObservableDelta();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void __swiftcall CRLCanvas.textRenderer(forLayer:context:)(CRLWPRenderer *__return_ptr retstr, CALayer_optional forLayer, CGContextRef context)
{
  if (![objc_allocWithZone(CRLWPRenderer) initWithContext:*&forLayer.is_nil])
  {
    __break(1u);
  }
}

void CRLWPRep.hyperlinkRegions.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v76 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v74 - v6;
  v8 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v8 - 8);
  v80 = v74 - v9;
  v10 = sub_1005B981C(&unk_101A096C0);
  __chkstk_darwin(v10 - 8);
  v12 = v74 - v11;
  v81 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v13 = *(v81 - 8);
  *&v14 = __chkstk_darwin(v81).n128_u64[0];
  v89 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98.receiver = v1;
  v98.super_class = CRLWPRep;
  v16 = objc_msgSendSuper2(&v98, "hyperlinkRegions", v14);
  sub_100006370(0, &qword_101A13808);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v94 = v17;
  v99 = v17;
  v18 = [v1 storage];
  v83 = v1;
  v19 = [v1 range];
  v21 = [v18 smartFieldsWithAttributeKind:6 intersectingRange:{v19, v20}];

  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = *(v22 + 16);
  if (!v88)
  {
LABEL_40:

    return;
  }

  v23 = 0;
  v86 = v22 + 32;
  v87 = v2;
  v85 = (v13 + 56);
  v79 = (v3 + 48);
  v82 = (v3 + 8);
  v75 = (v3 + 32);
  v24 = v81;
  v95 = v7;
  v78 = v12;
  v84 = v22;
  while (1)
  {
    if (v23 >= *(v22 + 16))
    {
      goto LABEL_44;
    }

    v90 = v23;
    sub_100064288(v86 + 32 * v23, v97);
    v25 = swift_dynamicCast();
    v26 = *v85;
    if (v25)
    {
      break;
    }

    v26(v12, 1, 1, v24);
    sub_100B8F674(v12);
LABEL_4:
    v23 = v90 + 1;
    v22 = v84;
    if (v90 + 1 == v88)
    {
      goto LABEL_40;
    }
  }

  v26(v12, 0, 1, v24);
  v27 = v89;
  sub_100962540(v12, v89);
  v28 = v24;
  v29 = [v83 storage];
  sub_100A3400C(*(v27 + *(v28 + 24)), *(v27 + *(v28 + 24) + 8));
  v31 = v30;
  v33 = v32;
  v34 = v80;
  sub_10001ACF0(v27 + *(v28 + 20), v80);
  v96 = v31;
  v35 = [v29 stringEquivalentFromRange:{v31, v33}];
  v36 = v87;
  if ((*v79)(v34, 1, v87) == 1)
  {
    v38 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v37);
    v38 = v39;
    (*v82)(v34, v36);
  }

  v40 = objc_allocWithZone(CRLWPHyperlinkField);
  v41 = String._bridgeToObjectiveC()();
  v42 = [v40 initWithURL:v38 range:v96 displayText:v33 uuidString:{v35, v41}];

  v43 = v42;
  v44 = [v42 url];
  if (!v44)
  {
    goto LABEL_35;
  }

  v45 = v76;
  v46 = v44;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = v95;
  v48 = v87;
  (*v75)(v95, v45, v87);
  v49 = [v43 range];
  v96 = [objc_allocWithZone(CRLWPSelection) initWithRange:{v49, v50}];
  if (!v96)
  {
    (*v82)(v47, v48);
LABEL_35:

LABEL_37:
    sub_100B8F6DC(v89);
    v12 = v78;
    v24 = v81;
    goto LABEL_4;
  }

  v77 = v43;
  v51 = [objc_allocWithZone(CRLBezierPath) init];
  v52 = [v83 columns];
  sub_100006370(0, &unk_1019FFD00);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v53 >> 62))
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

  v54 = _CocoaArrayWrapper.endIndex.getter();
  if (!v54)
  {
LABEL_36:

    (*v82)(v47, v87);
    goto LABEL_37;
  }

LABEL_14:
  v55 = 0;
  v93 = v53 & 0xFFFFFFFFFFFFFF8;
  v94 = v53 & 0xC000000000000001;
  v74[1] = v53;
  v91 = v54;
  v92 = v53 + 32;
  while (1)
  {
    if (v94)
    {
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v55 >= *(v93 + 16))
      {
        goto LABEL_42;
      }

      v56 = *(v92 + 8 * v55);
    }

    v57 = v56;
    if (__OFADD__(v55++, 1))
    {
      break;
    }

    v59 = v96;
    v60 = [v96 range];
    v62 = [v57 rectsForSelectionRange:v60 selectionType:v61 forParagraphMode:objc_msgSend(v59 includeRuby:"type") includePaginatedAttachments:{0, 0, 0}];
    if (!v62)
    {
      goto LABEL_45;
    }

    v63 = v62;
    sub_100006370(0, &qword_101A04270);
    v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v64 >> 62)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
      if (!v65)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v65)
      {
        goto LABEL_30;
      }
    }

    if (v65 < 1)
    {
      goto LABEL_43;
    }

    v66 = 0;
    do
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v67 = *(v64 + 8 * v66 + 32);
      }

      v68 = v67;
      ++v66;
      [v67 CGRectValue];
      [v51 appendBezierPathWithRect:?];
    }

    while (v65 != v66);
LABEL_30:

    v69 = objc_allocWithZone(CRLHyperlinkRegion);
    v70 = v51;
    v47 = v95;
    URL._bridgeToObjectiveC()(v71);
    v73 = v72;
    [v69 initWithURL:v72 bezierPath:v70];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (v55 == v91)
    {
      v94 = v99;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_100B8F430()
{
  v1 = [v0 columns];
  sub_100006370(0, &unk_1019FFD00);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if (!v3)
  {
LABEL_12:

    return;
  }

  if (v3 >= 1)
  {
    v8 = 0;
    v22 = CGRectNull.origin.y;
    v20 = CGRectNull.size.height;
    v21 = CGRectNull.size.width;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v2 + 8 * v8 + 32);
      }

      v10 = v9;
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v26.origin.y = v22;
      v26.origin.x = CGRectNull.origin.x;
      v26.size.height = v20;
      v26.size.width = v21;
      v11 = CGRectEqualToRect(v23, v26);
      [v10 typographicBounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      if (!v11)
      {
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v27.origin.x = v13;
        v27.origin.y = v15;
        v27.size.width = v17;
        v27.size.height = v19;
        v25 = CGRectUnion(v24, v27);
        v13 = v25.origin.x;
        v15 = v25.origin.y;
        v17 = v25.size.width;
        v19 = v25.size.height;
      }

      ++v8;

      x = v13;
      y = v15;
      width = v17;
      height = v19;
    }

    while (v3 != v8);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_100B8F674(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A096C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B8F6DC(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B8F738(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B8F780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100B8F7D4()
{
  sub_1005B981C(&qword_1019FE480);
  v9 = type metadata accessor for DataEventTrait();
  v0 = *(v9 - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146C6B0;
  v3 = enum case for DataEventTrait.unique(_:);
  v4 = *(v0 + 104);
  v8 = enum case for DataEventTrait.unique(_:);
  v4(v2 + v1, enum case for DataEventTrait.unique(_:), v9);
  sub_100011D20();
  AccessSessionManager.push<A>(_:traits:file:line:)();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  v4(v5 + v1, v3, v9);
  sub_100011D88();
  AccessSessionManager.push<A>(_:traits:file:line:)();

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10146C6B0;
  v4(v6 + v1, v8, v9);
  sub_100011DE8();
  AccessSessionManager.push<A>(_:traits:file:line:)();
}

uint64_t sub_100B8FA20()
{
  sub_1005B981C(&qword_101A13818);
  sub_1005B981C(&qword_101A13810);
  sub_1005B981C(&qword_1019FBEE0);

  return sub_100B8F7D4();
}

uint64_t sub_100B8FB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1005B981C(&qword_101A13830);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_100B8FC8C;

  return sub_100B8FECC();
}

uint64_t sub_100B8FC8C()
{

  return _swift_task_switch(sub_100B8FD88, 0, 0);
}

uint64_t sub_100B8FD88()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[3];
  sub_100B8C8C4(v2);
  (*(v3 + 16))(v1, v2, v4);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v4);
  SessionManager.transaction(_:)();

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100B8FECC()
{
  v1[2] = v0;
  sub_1005B981C(&qword_101A13838);
  v2 = swift_task_alloc();
  v1[3] = v2;
  v3 = sub_1005B981C(&qword_101A136B0);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v1[6] = *(v4 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_100B90048;

  return sub_100B8CD6C(v2);
}

uint64_t sub_100B90048()
{

  return _swift_task_switch(sub_100B90144, 0, 0);
}

uint64_t sub_100B90144()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100B90844(v3);
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = *(v2 + 32);
    v6(v4, v3, v1);
    (*(v2 + 16))(v5, v4, v1);
    v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v8 = swift_allocObject();
    v6(v8 + v7, v5, v1);
    SessionManager.transaction(_:)();

    (*(v2 + 8))(v4, v1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100B902DC()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "update sessionData", 18, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480);
  v2 = type metadata accessor for DataEventTrait();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  (*(v3 + 104))(v5 + v4, enum case for DataEventTrait.unique(_:), v2);
  sub_100B8D2C4();
  AccessSessionManager.push<A>(_:traits:file:line:)();
}

uint64_t sub_100B904C4()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "update debugData", 16, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480);
  v2 = type metadata accessor for DataEventTrait();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  (*(v3 + 104))(v5 + v4, enum case for DataEventTrait.unique(_:), v2);
  sub_100011DE8();
  AccessSessionManager.push<A>(_:traits:file:line:)();
}

uint64_t sub_100B90684()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "update userData", 15, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480);
  v2 = type metadata accessor for DataEventTrait();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  (*(v3 + 104))(v5 + v4, enum case for DataEventTrait.unique(_:), v2);
  sub_100B8D318();
  AccessSessionManager.push<A>(_:traits:file:line:)();
}

uint64_t sub_100B90844(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A13838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B908D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1005B981C(a2) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_100B9095C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100B90974(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100B9098C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_100B909D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B90A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
      *(result + 232) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100B90ACC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D710[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B90B54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D710[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100B90BB8()
{
  v1 = 0x6573616870;
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
    return 0x6E726574746170;
  }
}

uint64_t sub_100B90C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B97450(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B90C90(uint64_t a1)
{
  v2 = sub_100B99308();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B90CCC(uint64_t a1)
{
  v2 = sub_100B99308();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B90D08(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1005B981C(&qword_101A13B28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100020E58(a1, a1[3]);
  sub_100B99308();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  HIBYTE(v12) = 0;
  sub_1005B981C(&qword_101A13AF8);
  sub_100B99D44(&qword_101A13B30);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = a3;
    HIBYTE(v12) = 2;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100B90F5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1006709AC(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_100B3216C(v3, v5);
}

void sub_100B90FDC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_100B9756C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
  }
}

uint64_t sub_100B91034(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99FBC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B91088(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99FBC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B91108(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99FBC();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100B911EC(uint64_t a1)
{
  v2 = sub_100B99440();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

id sub_100B91238(uint64_t a1, float a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100776504(0, v3, 0);
    v5 = a1;
    v6 = _swiftEmptyArrayStorage[2];
    v7 = 32;
    do
    {
      v8 = *(v5 + v7);
      v9 = _swiftEmptyArrayStorage[3];
      if (v6 >= v9 >> 1)
      {
        sub_100776504((v9 > 1), v6 + 1, 1);
        v5 = a1;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[v6 + 4] = v8;
      v7 += 4;
      ++v6;
      --v3;
    }

    while (v3);
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPattern:&_swiftEmptyArrayStorage[4] count:_swiftEmptyArrayStorage[2] phase:a2];

  return v10;
}

unint64_t sub_100B91378@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B977E8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B91584(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B944A4();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100B915D8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7274537472616D73;
  }
}

uint64_t sub_100B91624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7274537472616D73 && a2 == 0xEF65707954656B6FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t sub_100B9174C(uint64_t a1)
{
  v2 = sub_100B996B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B91788(uint64_t a1)
{
  v2 = sub_100B996B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B917C4(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_1005B981C(&qword_101A13B38);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100020E58(a1, a1[3]);
  sub_100B996B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3 & 1;
  v17 = 0;
  sub_1005B981C(&qword_101A13B10);
  sub_100B99DB0(&qword_101A13B40, &qword_101A13B10);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
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

uint64_t sub_100B919C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  sub_100B944A4();
  if (static CRExtensible.== infix(_:_:)())
  {
    v4 = sub_100B3216C(v2, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100B91A54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100B977F8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100B91AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99F14();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B91B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99F14();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B91B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a5();
  v11 = a6();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v10, v11);
}

uint64_t sub_100B91C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99F14();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100B91CF4(uint64_t a1)
{
  v2 = sub_100B997E8();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

Swift::Int sub_100B91D64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D728[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B91DEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D728[v1]);
  return Hasher._finalize()();
}

unint64_t sub_100B91E50()
{
  v1 = 0x657079546B6E69;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6874646977;
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

uint64_t sub_100B91ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B97A2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B91F50(uint64_t a1)
{
  v2 = sub_100B99A58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B91F8C(uint64_t a1)
{
  v2 = sub_100B99A58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B91FC8(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A13B48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100B99A58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 24);
    v10[15] = 3;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B921DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a1 + 24);
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  v7 = *(a2 + 24);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v2 != v5)
  {
    return 0;
  }

  if (v3 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else if (v6 == 2 || ((v6 ^ v3) & 1) != 0)
  {
    return 0;
  }

  return sub_100B3216C(v4, v7);
}

double sub_100B922A8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100B97B9C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100B92318(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99E6C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B9236C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99E6C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B923C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B998F0();
  v7 = sub_100B99EC0();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100B92430(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99E6C();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100B92514(uint64_t a1)
{
  v2 = sub_100B99B90();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100B92740(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B94320();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100B92974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B94374();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100B92AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a5();
  v11 = a6();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v10, v11);
}

uint64_t sub_100B92B68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return CRValue<>.init(from:)();
}

uint64_t sub_100B92C20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return CRValue<>.encode(to:)();
}

uint64_t sub_100B92CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a3();
  v7 = a4();

  return CRValue<>.minEncodingVersion.getter(a1, v6, v7, &protocol witness table for Int);
}

uint64_t sub_100B92D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B943C8();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100B92DDC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7274537472616D73;
    v6 = 0xD000000000000016;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6D694C726574696DLL;
    if (a1 != 5)
    {
      v7 = 0x6E726574746170;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 0x6874646977;
    v3 = 7364963;
    if (a1 != 3)
    {
      v3 = 1852403562;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x726F6C6F63;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_100B92F38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D748[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B92FC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D748[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100B9300C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B97E30(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B93058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B97E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B93098@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B97E30(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B930FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static CodingKey<>.intCases.getter(a1, a2, v7, v8);
}

uint64_t sub_100B93168(uint64_t a1)
{
  v2 = sub_100B93CD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B931A4(uint64_t a1)
{
  v2 = sub_100B93CD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B931E4(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A13920);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B93CD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v19 = *v3;
  BYTE8(v19) = *(v3 + 8);
  LOBYTE(v17[0]) = 0;
  sub_1005B981C(&qword_101A138D8);
  sub_100B99DB0(&qword_101A13928, &qword_101A138D8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 64);
    v10 = *(v3 + 32);
    v26 = *(v3 + 48);
    v27 = v9;
    v11 = *(v3 + 64);
    v28 = *(v3 + 80);
    v12 = *(v3 + 32);
    v25[0] = *(v3 + 16);
    v25[1] = v12;
    v21 = v26;
    v22 = v11;
    v23 = *(v3 + 80);
    v29 = *(v3 + 96);
    v24 = *(v3 + 96);
    v19 = v25[0];
    v20 = v10;
    v31 = 1;
    sub_10074A990(v25, v17);
    sub_1008B28D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[2] = v21;
    v17[3] = v22;
    v17[4] = v23;
    v18 = v24;
    v17[0] = v19;
    v17[1] = v20;
    sub_1008B2660(v17);
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v15 = *(v3 + 112);
    BYTE8(v15) = *(v3 + 120);
    v30 = 3;
    sub_1005B981C(&qword_101A138E8);
    sub_100B99DB0(&qword_101A13930, &qword_101A138E8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v15 = *(v3 + 128);
    BYTE8(v15) = *(v3 + 136);
    v30 = 4;
    sub_1005B981C(&qword_101A138F8);
    sub_100B99DB0(&qword_101A13938, &qword_101A138F8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 144);
    *&v16 = *(v3 + 160);
    v30 = 6;
    sub_100B98BB0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + 168);
    *&v16 = *(v3 + 184);
    v30 = 7;
    sub_100B98C04();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 208);
    v15 = *(v3 + 192);
    v16 = v13;
    v30 = 8;
    sub_100B98C58();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v15 = *(v3 + 224);
    v30 = 9;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B936F0(uint64_t a1)
{

  *(v1 + 224) = a1;
  return result;
}

uint64_t sub_100B9371C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  v17[12] = *(a1 + 192);
  v17[13] = v2;
  v18 = *(a1 + 224);
  v3 = *(a1 + 144);
  v17[8] = *(a1 + 128);
  v17[9] = v3;
  v4 = *(a1 + 176);
  v17[10] = *(a1 + 160);
  v17[11] = v4;
  v5 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v5;
  v6 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v6;
  v7 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v7;
  v8 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v8;
  v9 = *(a2 + 208);
  v19[12] = *(a2 + 192);
  v19[13] = v9;
  v20 = *(a2 + 224);
  v10 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v10;
  v11 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v11;
  v12 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v12;
  v13 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v13;
  v14 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v14;
  v15 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v15;
  return sub_100B931E0(v17, v19) & 1;
}

__n128 sub_100B937D0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B98198(a1, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v5;
    *(a2 + 224) = v12;
    v6 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v6;
    v7 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v7;
    v8 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v8;
    v9 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v9;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
    result = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_100B93878(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B98CAC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B938CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B98CAC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B93920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005FEA64();
  v7 = sub_100B98D00();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100B93990(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B98CAC();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100B93A74(uint64_t a1)
{
  v2 = sub_100B93E10();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100B93AC4()
{
  result = qword_101A13840;
  if (!qword_101A13840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13840);
  }

  return result;
}

unint64_t sub_100B93B20()
{
  result = qword_101A13848;
  if (!qword_101A13848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13848);
  }

  return result;
}

unint64_t sub_100B93B78()
{
  result = qword_101A13850;
  if (!qword_101A13850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13850);
  }

  return result;
}

unint64_t sub_100B93BD0()
{
  result = qword_101A13858;
  if (!qword_101A13858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13858);
  }

  return result;
}

unint64_t sub_100B93C28()
{
  result = qword_101A13860;
  if (!qword_101A13860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13860);
  }

  return result;
}

unint64_t sub_100B93C80()
{
  result = qword_101A13868;
  if (!qword_101A13868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13868);
  }

  return result;
}

unint64_t sub_100B93CD8()
{
  result = qword_101A13870;
  if (!qword_101A13870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13870);
  }

  return result;
}

unint64_t sub_100B93D30()
{
  result = qword_101A13878;
  if (!qword_101A13878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13878);
  }

  return result;
}

unint64_t sub_100B93D88()
{
  result = qword_101A13880;
  if (!qword_101A13880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13880);
  }

  return result;
}

unint64_t sub_100B93E10()
{
  result = qword_101A13898;
  if (!qword_101A13898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13898);
  }

  return result;
}

unint64_t sub_100B93E68()
{
  result = qword_101A138A0;
  if (!qword_101A138A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A138A0);
  }

  return result;
}

uint64_t sub_100B93EBC(uint64_t a1, uint64_t a2)
{
  *&v34[0] = *a1;
  BYTE8(v34[0]) = *(a1 + 8);
  *&v32[0] = *a2;
  BYTE8(v32[0]) = *(a2 + 8);
  sub_100B94320();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 64);
  v34[2] = *(a1 + 48);
  v34[3] = v4;
  v34[4] = *(a1 + 80);
  v35 = *(a1 + 96);
  v5 = *(a1 + 32);
  v34[0] = *(a1 + 16);
  v34[1] = v5;
  v6 = *(a2 + 64);
  v32[2] = *(a2 + 48);
  v32[3] = v6;
  v32[4] = *(a2 + 80);
  v33 = *(a2 + 96);
  v7 = *(a2 + 32);
  v32[0] = *(a2 + 16);
  v32[1] = v7;
  if ((sub_1008AFE44(v34, v32) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    goto LABEL_14;
  }

  sub_100B94374();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_100B943C8();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0 || *(a1 + 140) != *(a2 + 140))
  {
    goto LABEL_14;
  }

  v8 = *(a1 + 144);
  v9 = *(a2 + 144);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    v11 = *(a1 + 152);
    v10 = *(a1 + 160);
    v13 = *(a2 + 152);
    v12 = *(a2 + 160);
    if ((sub_1006709AC(v8, *(a2 + 144)) & 1) == 0)
    {
      goto LABEL_14;
    }

    if (*&v11 != *&v13)
    {
      goto LABEL_14;
    }

    v14 = sub_100B3216C(v10, v12);

    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v9)
  {
    goto LABEL_14;
  }

  v17 = *(a1 + 184);
  v18 = *(a2 + 184);
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_14;
    }

    sub_100B944A4();

    if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
    {

      goto LABEL_14;
    }

    v19 = sub_100B3216C(v17, v18);

    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v18)
  {
    goto LABEL_14;
  }

  v21 = *(a1 + 192);
  v20 = *(a1 + 200);
  v23 = *(a1 + 208);
  v22 = *(a1 + 216);
  v25 = *(a2 + 192);
  v24 = *(a2 + 200);
  v27 = *(a2 + 208);
  v26 = *(a2 + 216);
  if (!v20)
  {
    if (!v24)
    {
      goto LABEL_37;
    }

LABEL_33:
    sub_100B9441C(*(a2 + 192), *(a2 + 200));
    sub_100B9441C(v21, v20);
    sub_100B94460(v21, v20);
    v29 = v25;
    v30 = v24;
LABEL_39:
    sub_100B94460(v29, v30);
    goto LABEL_14;
  }

  if (!v24)
  {
    goto LABEL_33;
  }

  if ((v21 != v25 || v20 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v23 != *&v27)
  {
    goto LABEL_38;
  }

  v28 = v27 & 0xFF00000000;
  if ((v23 & 0xFF00000000) == 0x200000000)
  {
    if (v28 != 0x200000000)
    {
LABEL_38:
      sub_100B9441C(v25, v24);
      sub_100B9441C(v21, v20);

      v29 = v21;
      v30 = v20;
      goto LABEL_39;
    }
  }

  else if (v28 == 0x200000000 || ((v23 & &_mh_execute_header) == 0) == (BYTE4(v27) & 1))
  {
    goto LABEL_38;
  }

  sub_100B9441C(v25, v24);
  sub_100B9441C(v21, v20);
  v31 = sub_100B3216C(v22, v26);

  sub_100B94460(v21, v20);
  if (v31)
  {
LABEL_37:
    v15 = sub_100B3216C(*(a1 + 224), *(a2 + 224));
    return v15 & 1;
  }

LABEL_14:
  v15 = 0;
  return v15 & 1;
}

unint64_t sub_100B94320()
{
  result = qword_101A138A8;
  if (!qword_101A138A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A138A8);
  }

  return result;
}

unint64_t sub_100B94374()
{
  result = qword_101A138B0;
  if (!qword_101A138B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A138B0);
  }

  return result;
}

unint64_t sub_100B943C8()
{
  result = qword_101A138B8;
  if (!qword_101A138B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A138B8);
  }

  return result;
}

uint64_t sub_100B9441C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100B94460(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100B944A4()
{
  result = qword_101A138C0;
  if (!qword_101A138C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A138C0);
  }

  return result;
}

id sub_100B944F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A138C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (!*(a1 + 200) || (v7 = *(a1 + 208), v8 = *(a1 + 212), , PKInkingTool.InkType.init(rawValue:)(), v9 = type metadata accessor for PKInkingTool.InkType(), v10 = (*(*(v9 - 8) + 48))(v6, 1, v9), sub_100B95B9C(v6), v10 == 1))
  {
    if (!*(a1 + 184) || (*(a1 + 176) & 1) != 0)
    {
      goto LABEL_8;
    }

    v11 = *(a1 + 168);
    if (v11 == 5)
    {
      v12 = &PKInkTypeCrayon;
      return [objc_allocWithZone(CRLPencilKitInkStroke) initWithInkType:*v12 color:a2 adjustedWidth:*(a1 + 104)];
    }

    if (v11 == 4)
    {
      v12 = &PKInkTypePencil;
    }

    else
    {
LABEL_8:
      v12 = &PKInkTypeMonoline;
    }

    return [objc_allocWithZone(CRLPencilKitInkStroke) initWithInkType:*v12 color:a2 adjustedWidth:*(a1 + 104)];
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_allocWithZone(CRLPencilKitInkStroke) initWithInkType:v14 color:a2 adjustedWidth:v8 & 1 isFountainPenInkV2:v7];

  return v15;
}

id sub_100B946C8(uint64_t a1, char a2)
{
  sub_100006370(0, &qword_101A00EB0);
  v3 = *(a1 + 64);
  v140[2] = *(a1 + 48);
  v140[3] = v3;
  v140[4] = *(a1 + 80);
  v141 = *(a1 + 96);
  v4 = *(a1 + 32);
  v140[0] = *(a1 + 16);
  v140[1] = v4;
  sub_10074A990(v140, v139);
  v138 = sub_1008B0490(v140);
  v5 = *(a1 + 104);
  if ((*(a1 + 120) & 1) == 0)
  {
    v133 = *(a1 + 112);
    if ((*(a1 + 136) & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v30 = objc_opt_self();
    v31 = [v30 _atomicIncrementAssertCount];
    v139[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v139);
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    v34 = [v33 lastPathComponent];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v31;
    v40 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v40;
    v41 = sub_1005CF04C();
    *(inited + 104) = v41;
    *(inited + 72) = v32;
    *(inited + 136) = &type metadata for String;
    v42 = sub_1000053B0();
    *(inited + 112) = v35;
    *(inited + 120) = v37;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v42;
    *(inited + 152) = 318;
    v43 = v139[0];
    *(inited + 216) = v40;
    *(inited + 224) = v41;
    *(inited + 192) = v43;
    v44 = v32;
    v45 = v43;
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v47, "Tried to decode unknown line join value. Falling back to unarchiving miter.", 75, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v48 = swift_allocObject();
    v48[2] = 8;
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = 0;
    v49 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v50 file:v51 lineNumber:318 isFatal:0 format:v52 args:v49];

    v29 = 0;
    if (a2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = objc_opt_self();
  v7 = [v6 _atomicIncrementAssertCount];
  v139[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v139);
  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v9 lastPathComponent];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_10146CA70;
  *(v15 + 56) = &type metadata for Int32;
  *(v15 + 64) = &protocol witness table for Int32;
  *(v15 + 32) = v7;
  v16 = sub_100006370(0, &qword_1019F4D30);
  *(v15 + 96) = v16;
  v17 = sub_1005CF04C();
  *(v15 + 104) = v17;
  *(v15 + 72) = v8;
  *(v15 + 136) = &type metadata for String;
  v18 = sub_1000053B0();
  *(v15 + 112) = v11;
  *(v15 + 120) = v13;
  *(v15 + 176) = &type metadata for UInt;
  *(v15 + 184) = &protocol witness table for UInt;
  *(v15 + 144) = v18;
  *(v15 + 152) = 303;
  v19 = v139[0];
  *(v15 + 216) = v16;
  *(v15 + 224) = v17;
  *(v15 + 192) = v19;
  v20 = v8;
  v21 = v19;
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v15);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v23, "Tried to decode unknown line cap value. Falling back to unarchiving butt.", 73, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v24 = swift_allocObject();
  v24[2] = 8;
  v24[3] = 0;
  v24[4] = 0;
  v24[5] = 0;
  v25 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  [v6 handleFailureInFunction:v26 file:v27 lineNumber:303 isFatal:0 format:v28 args:v25];

  v133 = 0;
  if (*(a1 + 136))
  {
    goto LABEL_8;
  }

LABEL_5:
  v29 = *(a1 + 128);
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_11:
  if (*(a1 + 200))
  {
LABEL_12:
    v53 = v138;
    v54 = sub_100B944F8(a1, v138);
    goto LABEL_13;
  }

  v56 = v5;
  v57 = *(a1 + 140);
  if (*(a1 + 184))
  {
    if ((*(a1 + 176) & 1) == 0)
    {
      if (*(a1 + 168) <= 4u || *(a1 + 168) == 5)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = [objc_opt_self() solidPattern];
        v106 = objc_allocWithZone(CRLBrushStroke);
        v107 = String._bridgeToObjectiveC()();

        v54 = [v106 initWithName:v107 color:v138 width:v133 cap:v29 join:v53 pattern:v56 miterLimit:v57];

        goto LABEL_13;
      }

      v108 = [objc_opt_self() solidPattern];
      v109 = CRLCalligraphyStroke;
LABEL_34:
      v54 = [objc_allocWithZone(v109) initWithColor:v138 width:v133 cap:v29 join:v108 pattern:v56 miterLimit:v57];

      v53 = v108;
      goto LABEL_13;
    }

    v135 = objc_opt_self();
    v58 = [v135 _atomicIncrementAssertCount];
    v139[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v139);
    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    v61 = [v60 lastPathComponent];

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v65 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_10146CA70;
    *(v66 + 56) = &type metadata for Int32;
    *(v66 + 64) = &protocol witness table for Int32;
    *(v66 + 32) = v58;
    v67 = sub_100006370(0, &qword_1019F4D30);
    *(v66 + 96) = v67;
    v68 = sub_1005CF04C();
    *(v66 + 104) = v68;
    *(v66 + 72) = v59;
    *(v66 + 136) = &type metadata for String;
    v69 = sub_1000053B0();
    *(v66 + 112) = v62;
    *(v66 + 120) = v64;
    *(v66 + 176) = &type metadata for UInt;
    *(v66 + 184) = &protocol witness table for UInt;
    *(v66 + 144) = v69;
    *(v66 + 152) = 350;
    v70 = v139[0];
    *(v66 + 216) = v67;
    *(v66 + 224) = v68;
    *(v66 + 192) = v70;
    v71 = v59;
    v72 = v70;
    v73 = static os_log_type_t.error.getter();
    sub_100005404(v65, &_mh_execute_header, v73, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v66);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v74 = static os_log_type_t.error.getter();
    sub_100005404(v65, &_mh_execute_header, v74, "Tried to decode unknown smart stroke type. Falling back to unarchiving plain stroke.", 84, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v75 = swift_allocObject();
    v75[2] = 8;
    v75[3] = 0;
    v75[4] = 0;
    v75[5] = 0;
    v76 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v78 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v79 = String._bridgeToObjectiveC()();

    [v135 handleFailureInFunction:v77 file:v78 lineNumber:350 isFatal:0 format:v79 args:v76];

    v80 = [objc_opt_self() solidPattern];
LABEL_33:
    v108 = v80;
    v109 = CRLStroke;
    goto LABEL_34;
  }

  if (*(a1 + 8))
  {
    v136 = objc_opt_self();
    v81 = [v136 _atomicIncrementAssertCount];
    v139[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v139);
    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v83 = String._bridgeToObjectiveC()();

    v84 = [v83 lastPathComponent];

    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v88 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_10146CA70;
    *(v89 + 56) = &type metadata for Int32;
    *(v89 + 64) = &protocol witness table for Int32;
    *(v89 + 32) = v81;
    v90 = sub_100006370(0, &qword_1019F4D30);
    *(v89 + 96) = v90;
    v91 = sub_1005CF04C();
    *(v89 + 104) = v91;
    *(v89 + 72) = v82;
    *(v89 + 136) = &type metadata for String;
    v92 = sub_1000053B0();
    *(v89 + 112) = v85;
    *(v89 + 120) = v87;
    *(v89 + 176) = &type metadata for UInt;
    *(v89 + 184) = &protocol witness table for UInt;
    *(v89 + 144) = v92;
    *(v89 + 152) = 373;
    v93 = v139[0];
    *(v89 + 216) = v90;
    *(v89 + 224) = v91;
    *(v89 + 192) = v93;
    v94 = v82;
    v95 = v93;
    v96 = static os_log_type_t.error.getter();
    sub_100005404(v88, &_mh_execute_header, v96, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v89);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v97 = static os_log_type_t.error.getter();
    sub_100005404(v88, &_mh_execute_header, v97, "Tried to decode unknown stroke type. Falling back to unarchiving solid.", 71, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v98 = swift_allocObject();
    v98[2] = 8;
    v98[3] = 0;
    v98[4] = 0;
    v98[5] = 0;
    v99 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v100 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v101 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v102 = String._bridgeToObjectiveC()();

    [v136 handleFailureInFunction:v100 file:v101 lineNumber:373 isFatal:0 format:v102 args:v99];

    v80 = [objc_opt_self() solidPattern];
    goto LABEL_33;
  }

  if (!*a1)
  {
    v80 = [objc_opt_self() solidPattern];
    goto LABEL_33;
  }

  if (*a1 != 1)
  {
    v80 = [objc_opt_self() emptyPattern];
    goto LABEL_33;
  }

  v103 = *(a1 + 144);
  if (v103)
  {
    v104 = *(a1 + 152);
    sub_100006370(0, &qword_101A05138);

    v105 = sub_100B91238(v103, v104);
  }

  else
  {
    v137 = objc_opt_self();
    v110 = [v137 _atomicIncrementAssertCount];
    v139[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v139);
    StaticString.description.getter();
    v111 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v112 = String._bridgeToObjectiveC()();

    v113 = [v112 lastPathComponent];

    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v117 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_10146CA70;
    *(v118 + 56) = &type metadata for Int32;
    *(v118 + 64) = &protocol witness table for Int32;
    *(v118 + 32) = v110;
    v119 = sub_100006370(0, &qword_1019F4D30);
    *(v118 + 96) = v119;
    v120 = sub_1005CF04C();
    *(v118 + 104) = v120;
    *(v118 + 72) = v111;
    *(v118 + 136) = &type metadata for String;
    v121 = sub_1000053B0();
    *(v118 + 112) = v114;
    *(v118 + 120) = v116;
    *(v118 + 176) = &type metadata for UInt;
    *(v118 + 184) = &protocol witness table for UInt;
    *(v118 + 144) = v121;
    *(v118 + 152) = 364;
    v122 = v139[0];
    *(v118 + 216) = v119;
    *(v118 + 224) = v120;
    *(v118 + 192) = v122;
    v123 = v111;
    v124 = v122;
    v125 = static os_log_type_t.error.getter();
    sub_100005404(v117, &_mh_execute_header, v125, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v118);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v126 = static os_log_type_t.error.getter();
    sub_100005404(v117, &_mh_execute_header, v126, "Stroke with pattern type should have pattern data. Falling back to unarchiving solid pattern.", 93, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v127 = swift_allocObject();
    v127[2] = 8;
    v127[3] = 0;
    v127[4] = 0;
    v127[5] = 0;
    v128 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v129 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v130 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v131 = String._bridgeToObjectiveC()();

    [v137 handleFailureInFunction:v129 file:v130 lineNumber:364 isFatal:0 format:v131 args:v128];

    v105 = [objc_opt_self() solidPattern];
  }

  v132 = v105;
  v53 = v138;
  v54 = [objc_allocWithZone(CRLStroke) initWithColor:v138 width:v133 cap:v29 join:v105 pattern:v56 miterLimit:v57];

LABEL_13:
  return v54;
}

uint64_t sub_100B95B9C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A138C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100B95C04(void *a1)
{
  v2 = [a1 pattern];
  v3 = [a1 count];
  if (v3)
  {
    v4 = v3;
    result = sub_100B35838(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = result;
    v7 = 0x8000000000000000;
    while (v7)
    {
      v8 = v2[v7];
      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_100B35838((v9 > 1), v10 + 1, 1, v6);
        v6 = result;
      }

      v11 = v8;
      *(v6 + 2) = v10 + 1;
      *&v6[4 * v10 + 32] = v11;
      ++v7;
      if (!--v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_9:
    [a1 phase];
    return v6;
  }

  return result;
}

uint64_t sub_100B95D10(void *a1)
{
  v2 = [a1 strokeName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v6 == v5)
  {

    return 0;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {

    return 0;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v10 == v5)
  {

    return 1;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {

    goto LABEL_15;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v13 == v5)
  {

    return 2;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {

    return 2;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v15 == v5)
  {

    return 3;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {

    return 3;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v17 == v5)
  {

    return 4;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {

    return 4;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v19 == v5)
  {

    return 5;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {

    return 5;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v21 == v5)
  {

    return 6;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {

    return 6;
  }

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v24 = [a1 strokeName];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(inited + 56) = &type metadata for String;
  v28 = sub_1000053B0();
  *(inited + 32) = v25;
  v67 = inited + 32;
  v29 = v28;
  *(inited + 64) = v28;
  *(inited + 40) = v27;
  v65 = objc_opt_self();
  LODWORD(v30) = [v65 _atomicIncrementAssertCount];
  v68 = [objc_allocWithZone(NSString) init];
  v66 = inited;
  sub_100604538(inited, &v68);
  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  v33 = [v32 lastPathComponent];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_74;
  }

LABEL_44:
  v37 = static OS_os_log.crlAssert;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_10146CA70;
  *(v38 + 56) = &type metadata for Int32;
  *(v38 + 64) = &protocol witness table for Int32;
  *(v38 + 32) = v30;
  v39 = sub_100006370(0, &qword_1019F4D30);
  *(v38 + 96) = v39;
  v40 = sub_1005CF04C();
  *(v38 + 72) = v31;
  *(v38 + 136) = &type metadata for String;
  *(v38 + 144) = v29;
  *(v38 + 104) = v40;
  *(v38 + 112) = v34;
  *(v38 + 120) = v36;
  *(v38 + 176) = &type metadata for UInt;
  *(v38 + 184) = &protocol witness table for UInt;
  *(v38 + 152) = 102;
  v41 = v68;
  *(v38 + 216) = v39;
  *(v38 + 224) = v40;
  *(v38 + 192) = v41;
  v42 = v31;
  v43 = v41;
  v44 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v38);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v45 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v45, "Unknown smart stroke type %@. Falling back to archiving dryBrush.", 65, 2, v66);

  type metadata accessor for __VaListBuilder();
  v31 = swift_allocObject();
  v31[2] = 8;
  v31[3] = 0;
  v46 = v31 + 3;
  v31[4] = 0;
  v31[5] = 0;
  v36 = *(v66 + 16);
  if (v36)
  {
    v47 = 0;
    while (1)
    {
      v48 = (v67 + 40 * v47);
      v34 = v48[3];
      v30 = v48[4];
      sub_100020E58(v48, v34);
      v49 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v29 = *v46;
      v50 = *(v49 + 16);
      v51 = __OFADD__(*v46, v50);
      v52 = *v46 + v50;
      if (v51)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        swift_once();
        goto LABEL_44;
      }

      v53 = v31[4];
      if (v53 >= v52)
      {
        goto LABEL_61;
      }

      if (v53 + 0x4000000000000000 < 0)
      {
        goto LABEL_72;
      }

      v34 = v31[5];
      if (2 * v53 > v52)
      {
        v52 = 2 * v53;
      }

      v31[4] = v52;
      if ((v52 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_73;
      }

      v30 = v49;
      v54 = swift_slowAlloc();
      v55 = v54;
      v31[5] = v54;
      if (v34)
      {
        break;
      }

      v49 = v30;
      if (!v55)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_62:
      v57 = *(v49 + 16);
      if (v57)
      {
        v58 = (v49 + 32);
        v59 = *v46;
        while (1)
        {
          v60 = *v58++;
          *&v55[8 * v59] = v60;
          v59 = *v46 + 1;
          if (__OFADD__(*v46, 1))
          {
            break;
          }

          *v46 = v59;
          if (!--v57)
          {
            goto LABEL_46;
          }
        }

        __break(1u);
        goto LABEL_71;
      }

LABEL_46:

      if (++v47 == v36)
      {
        goto LABEL_69;
      }
    }

    if (v54 != v34 || v54 >= &v34[8 * v29])
    {
      memmove(v54, v34, 8 * v29);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v49 = v30;
LABEL_61:
    v55 = v31[5];
    if (!v55)
    {
      goto LABEL_68;
    }

    goto LABEL_62;
  }

LABEL_69:
  v61 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v62 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v63 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v64 = String._bridgeToObjectiveC()();

  [v65 handleFailureInFunction:v62 file:v63 lineNumber:102 isFatal:0 format:v64 args:v61];

  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_15:

  return 1;
}

float sub_100B965E4@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 pattern];
  v5 = [v4 patternType];

  if (v5)
  {
    if (v5 == 2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v132 = 0;
      v127 = 2;
    }

    else if (v5 == 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v127 = 0;
      v132 = 0;
    }

    else
    {
      v128 = objc_opt_self();
      v13 = [v128 _atomicIncrementAssertCount];
      *&v133[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v133);
      StaticString.description.getter();
      v14 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v15 = String._bridgeToObjectiveC()();

      v16 = [v15 lastPathComponent];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v20 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v13;
      v22 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v22;
      v23 = sub_1005CF04C();
      *(inited + 104) = v23;
      *(inited + 72) = v14;
      *(inited + 136) = &type metadata for String;
      v24 = sub_1000053B0();
      *(inited + 112) = v17;
      *(inited + 120) = v19;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v24;
      *(inited + 152) = 236;
      v25 = *&v133[0];
      *(inited + 216) = v22;
      *(inited + 224) = v23;
      *(inited + 192) = v25;
      v26 = v14;
      v27 = v25;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v29, "Unknown stroke pattern type. Falling back to archiving solid.", 61, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v30 = swift_allocObject();
      v30[2] = 8;
      v30[3] = 0;
      v30[4] = 0;
      v30[5] = 0;
      v31 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      [v128 handleFailureInFunction:v32 file:v33 lineNumber:236 isFatal:0 format:v34 args:v31];

      v6 = 0;
      v7 = 0;
      v8 = 0;
      v127 = 0;
      v132 = 0;
    }
  }

  else
  {
    v132 = 0;
    v9 = [a1 pattern];
    v6 = sub_100B95C04(v9);
    v11 = v10;
    v8 = v12;

    v7 = v11;
    v127 = 1;
  }

  sub_1008B2170([a1 color], v133);
  *(&v131[2] + 7) = v133[2];
  *(&v131[3] + 7) = v133[3];
  *(&v131[4] + 7) = v133[4];
  *(&v131[5] + 7) = v134;
  *(v131 + 7) = v133[0];
  *(&v131[1] + 7) = v133[1];
  [a1 widthForDefaultAndDowngradePersistence];
  v36 = v35;
  v37 = [a1 cap];
  if (v37 == 2)
  {
    v130 = 0;
    v125 = 2;
  }

  else if (v37 == 1)
  {
    v130 = 0;
    v125 = 1;
  }

  else if (v37)
  {
    v119 = v6;
    v122 = v7;
    v116 = v8;
    v126 = objc_opt_self();
    v38 = [v126 _atomicIncrementAssertCount];
    v129 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v129);
    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    v41 = [v40 lastPathComponent];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v45 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_10146CA70;
    *(v46 + 56) = &type metadata for Int32;
    *(v46 + 64) = &protocol witness table for Int32;
    *(v46 + 32) = v38;
    v47 = sub_100006370(0, &qword_1019F4D30);
    *(v46 + 96) = v47;
    v48 = sub_1005CF04C();
    *(v46 + 104) = v48;
    *(v46 + 72) = v39;
    *(v46 + 136) = &type metadata for String;
    v49 = sub_1000053B0();
    *(v46 + 112) = v42;
    *(v46 + 120) = v44;
    *(v46 + 176) = &type metadata for UInt;
    *(v46 + 184) = &protocol witness table for UInt;
    *(v46 + 144) = v49;
    *(v46 + 152) = 252;
    v50 = v129;
    *(v46 + 216) = v47;
    *(v46 + 224) = v48;
    *(v46 + 192) = v50;
    v51 = v39;
    v52 = v50;
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v45, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v46);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v54 = static os_log_type_t.error.getter();
    sub_100005404(v45, &_mh_execute_header, v54, "Unknown stroke cap type. Falling back to archiving butt.", 56, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v55 = swift_allocObject();
    v55[2] = 8;
    v55[3] = 0;
    v55[4] = 0;
    v55[5] = 0;
    v56 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    [v126 handleFailureInFunction:v57 file:v58 lineNumber:252 isFatal:0 format:v59 args:v56];

    v125 = 0;
    v130 = 0;
    v8 = v116;
    v6 = v119;
    v7 = v122;
  }

  else
  {
    v125 = 0;
    v130 = 0;
  }

  v60 = [a1 join];
  if (v60 == 2)
  {
    LOBYTE(v129) = 0;
    v61 = 2;
  }

  else if (v60 == 1)
  {
    LOBYTE(v129) = 0;
    v61 = 1;
  }

  else if (v60)
  {
    v120 = v6;
    v123 = v7;
    v117 = v8;
    v115 = objc_opt_self();
    v62 = [v115 _atomicIncrementAssertCount];
    v129 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v129);
    StaticString.description.getter();
    v63 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v64 = String._bridgeToObjectiveC()();

    v65 = [v64 lastPathComponent];

    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v69 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_10146CA70;
    *(v70 + 56) = &type metadata for Int32;
    *(v70 + 64) = &protocol witness table for Int32;
    *(v70 + 32) = v62;
    v71 = sub_100006370(0, &qword_1019F4D30);
    *(v70 + 96) = v71;
    v72 = sub_1005CF04C();
    *(v70 + 104) = v72;
    *(v70 + 72) = v63;
    *(v70 + 136) = &type metadata for String;
    v73 = sub_1000053B0();
    *(v70 + 112) = v66;
    *(v70 + 120) = v68;
    *(v70 + 176) = &type metadata for UInt;
    *(v70 + 184) = &protocol witness table for UInt;
    *(v70 + 144) = v73;
    *(v70 + 152) = 264;
    v74 = v129;
    *(v70 + 216) = v71;
    *(v70 + 224) = v72;
    *(v70 + 192) = v74;
    v75 = v63;
    v76 = v74;
    v77 = static os_log_type_t.error.getter();
    sub_100005404(v69, &_mh_execute_header, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v70);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v78 = static os_log_type_t.error.getter();
    sub_100005404(v69, &_mh_execute_header, v78, "Unknown stroke cap type. Falling back to archiving miter.", 57, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v79 = swift_allocObject();
    v79[2] = 8;
    v79[3] = 0;
    v79[4] = 0;
    v79[5] = 0;
    v80 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v83 = String._bridgeToObjectiveC()();

    [v115 handleFailureInFunction:v81 file:v82 lineNumber:264 isFatal:0 format:v83 args:v80];

    v61 = 0;
    LOBYTE(v129) = 0;
    v8 = v117;
    v6 = v120;
    v7 = v123;
  }

  else
  {
    v61 = 0;
    LOBYTE(v129) = 0;
  }

  [a1 miterLimit];
  v85 = v84;
  objc_opt_self();
  v86 = swift_dynamicCastObjCClass();
  if (v86)
  {
    v87 = sub_100B95D10(v86);
    v90 = v89;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
  }

  else
  {
    v124 = v7;
    objc_opt_self();
    v95 = swift_dynamicCastObjCClass();
    if (v95)
    {
      v96 = v95;
      v118 = v8;
      v121 = v6;
      v97 = a1;
      v98 = [v96 inkType];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v99;

      [v96 width];
      v101 = v100;
      LODWORD(v98) = [v96 isFountainPenInkV2];

      v102 = &_mh_execute_header;
      if (!v98)
      {
        v102 = 0;
      }

      v93 = v102 | LODWORD(v101);
      v103 = [v96 fallbackSmartStrokeForPersistence];
      if (v103)
      {
        v104 = sub_100B95D10(v103);
        v90 = v105;
        v107 = v106;

        v88 = v107;
        v87 = v104;
      }

      else
      {

        v87 = 0;
        v90 = 0;
        v88 = 0;
      }

      v94 = _swiftEmptyDictionarySingleton;
      v8 = v118;
      v6 = v121;
    }

    else
    {

      v87 = 0;
      v90 = 0;
      v88 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
    }

    v7 = v124;
  }

  v108 = v131[3];
  *(a2 + 41) = v131[2];
  *(a2 + 57) = v108;
  *(a2 + 73) = v131[4];
  *(a2 + 88) = *(&v131[4] + 15);
  v109 = v131[1];
  *(a2 + 9) = v131[0];
  result = v85;
  v111 = v36;
  v112 = v132;
  v113 = v130;
  v114 = v129;
  *a2 = v127;
  *(a2 + 8) = v112;
  *(a2 + 25) = v109;
  *(a2 + 104) = v111;
  *(a2 + 112) = v125;
  *(a2 + 120) = v113;
  *(a2 + 128) = v61;
  *(a2 + 136) = v114;
  *(a2 + 140) = result;
  *(a2 + 144) = v6;
  *(a2 + 152) = v7;
  *(a2 + 160) = v8;
  *(a2 + 168) = v87;
  *(a2 + 176) = v90 & 1;
  *(a2 + 184) = v88;
  *(a2 + 192) = v91;
  *(a2 + 200) = v92;
  *(a2 + 208) = v93;
  *(a2 + 216) = v94;
  *(a2 + 224) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100B97450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E726574746170 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573616870 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

float sub_100B9756C(void *a1)
{
  v2 = sub_1005B981C(&qword_101A13AF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100B99308();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1005B981C(&qword_101A13AF8);
  v10 = 0;
  sub_100B99D44(&qword_101A13B00);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LOBYTE(v11) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = v6;
  sub_1005B981C(&unk_101A0D960);
  v10 = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v7;
}

unint64_t sub_100B977E8(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_100B977F8(void *a1)
{
  v2 = sub_1005B981C(&qword_101A13B08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100B996B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1005B981C(&qword_101A13B10);
  v9 = 0;
  sub_100B99DB0(&qword_101A13B18, &qword_101A13B10);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  sub_1005B981C(&unk_101A0D960);
  v9 = 1;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v6;
}

uint64_t sub_100B97A2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546B6E69 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010158DF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_100B97B9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A13B20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B99A58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v23 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v21 = 2;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_1005B981C(&unk_101A0D960);
  v19 = 3;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v20;
  result = sub_100005070(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 20) = v18;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_100B97E30(uint64_t a1)
{
  if ((a1 + 1) > 9)
  {
    return 10;
  }

  else
  {
    return byte_10149D798[a1 + 1];
  }
}

uint64_t sub_100B97E54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7364963 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852403562 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D694C726574696DLL && a2 == 0xEA00000000007469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E726574746170 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7274537472616D73 && a2 == 0xEF61746144656B6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010158DF70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_100B98198@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = sub_1005B981C(&qword_101A138D0);
  v5 = *(v81 - 8);
  __chkstk_darwin(v81);
  v7 = &v26 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100B93CD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v38 = v5;
  sub_1005B981C(&qword_101A138D8);
  LOBYTE(v39[0]) = 0;
  sub_100B99DB0(&qword_101A138E0, &qword_101A138D8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = *v48;
  v80 = v48[8];
  v70 = 1;
  sub_1008B287C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v8;
  *&v79[39] = v73;
  *&v79[55] = v74;
  *&v79[71] = v75;
  *&v79[7] = v71;
  *&v79[87] = v76;
  *&v79[23] = v72;
  v48[0] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  sub_1005B981C(&qword_101A138E8);
  LOBYTE(v39[0]) = 3;
  sub_100B99DB0(&qword_101A138F0, &qword_101A138E8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = *v48;
  v78 = v48[8];
  sub_1005B981C(&qword_101A138F8);
  LOBYTE(v39[0]) = 4;
  sub_100B99DB0(&qword_101A13900, &qword_101A138F8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = *v48;
  v77 = v48[8];
  v48[0] = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v39[0]) = 6;
  sub_100B98A4C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = *v48;
  v36 = *&v48[16];
  LOBYTE(v39[0]) = 7;
  sub_100B98AA0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = *&v48[8];
  v32 = *v48;
  v13 = *&v48[16];
  LOBYTE(v39[0]) = 8;
  sub_100B98AF4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29 = *v48;
  v30 = *&v48[16];
  v28 = *&v48[24];
  sub_1005B981C(&unk_101A0D960);
  v68 = 9;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v38 + 8))(v7, v81);
  *(&v39[2] + 9) = *&v79[32];
  *(&v39[3] + 9) = *&v79[48];
  *(&v39[4] + 9) = *&v79[64];
  *(&v39[5] + 8) = *&v79[79];
  *(v39 + 9) = *v79;
  v26 = v69;
  *&v39[0] = v37;
  LODWORD(v81) = v80;
  BYTE8(v39[0]) = v80;
  *(&v39[1] + 9) = *&v79[16];
  DWORD2(v39[6]) = v10;
  v14 = v36;
  *&v40 = v35;
  LODWORD(v38) = v78;
  BYTE8(v40) = v78;
  v15 = *(&v33 + 1);
  *&v41 = v34;
  v27 = v77;
  BYTE8(v41) = v77;
  HIDWORD(v41) = v12;
  v16 = v33;
  v42 = v33;
  *&v43 = v36;
  *(&v43 + 1) = v32;
  *&v44 = v31;
  *(&v44 + 1) = v13;
  v45 = v29;
  v17 = v28;
  *&v46 = v30;
  *(&v46 + 1) = v28;
  v47 = v69;
  sub_100B98B48(v39, v48);
  sub_100005070(a1);
  v49 = *&v79[32];
  v50 = *&v79[48];
  *v51 = *&v79[64];
  *&v51[15] = *&v79[79];
  *&v48[9] = *v79;
  *v48 = v37;
  v48[8] = v81;
  *&v48[25] = *&v79[16];
  v52 = v10;
  v53 = v35;
  v54 = v38;
  v55 = v34;
  v56 = v27;
  v57 = v12;
  v58 = v16;
  v59 = v15;
  v60 = v14;
  v61 = v32;
  v62 = v31;
  v63 = v13;
  v64 = v29;
  v65 = v30;
  v66 = v17;
  v67 = v26;
  result = sub_100B98B80(v48);
  v19 = v46;
  *(a2 + 192) = v45;
  *(a2 + 208) = v19;
  *(a2 + 224) = v47;
  v20 = v42;
  *(a2 + 128) = v41;
  *(a2 + 144) = v20;
  v21 = v44;
  *(a2 + 160) = v43;
  *(a2 + 176) = v21;
  v22 = v39[5];
  *(a2 + 64) = v39[4];
  *(a2 + 80) = v22;
  v23 = v40;
  *(a2 + 96) = v39[6];
  *(a2 + 112) = v23;
  v24 = v39[1];
  *a2 = v39[0];
  *(a2 + 16) = v24;
  v25 = v39[3];
  *(a2 + 32) = v39[2];
  *(a2 + 48) = v25;
  return result;
}

uint64_t sub_100B98A0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100B98A4C()
{
  result = qword_101A13908;
  if (!qword_101A13908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13908);
  }

  return result;
}

unint64_t sub_100B98AA0()
{
  result = qword_101A13910;
  if (!qword_101A13910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13910);
  }

  return result;
}

unint64_t sub_100B98AF4()
{
  result = qword_101A13918;
  if (!qword_101A13918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13918);
  }

  return result;
}

unint64_t sub_100B98BB0()
{
  result = qword_101A13940;
  if (!qword_101A13940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13940);
  }

  return result;
}

unint64_t sub_100B98C04()
{
  result = qword_101A13948;
  if (!qword_101A13948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13948);
  }

  return result;
}

unint64_t sub_100B98C58()
{
  result = qword_101A13950;
  if (!qword_101A13950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13950);
  }

  return result;
}

unint64_t sub_100B98CAC()
{
  result = qword_101A13958;
  if (!qword_101A13958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13958);
  }

  return result;
}

unint64_t sub_100B98D00()
{
  result = qword_101A13960;
  if (!qword_101A13960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13960);
  }

  return result;
}

unint64_t sub_100B98DD8()
{
  result = qword_101A13968;
  if (!qword_101A13968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13968);
  }

  return result;
}

unint64_t sub_100B98E30()
{
  result = qword_101A13970;
  if (!qword_101A13970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13970);
  }

  return result;
}

unint64_t sub_100B98E88()
{
  result = qword_101A13978;
  if (!qword_101A13978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13978);
  }

  return result;
}

unint64_t sub_100B98EE0()
{
  result = qword_101A13980;
  if (!qword_101A13980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13980);
  }

  return result;
}

unint64_t sub_100B98F38()
{
  result = qword_101A13988;
  if (!qword_101A13988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13988);
  }

  return result;
}

unint64_t sub_100B98F90()
{
  result = qword_101A13990;
  if (!qword_101A13990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13990);
  }

  return result;
}

unint64_t sub_100B98FE8()
{
  result = qword_101A13998;
  if (!qword_101A13998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13998);
  }

  return result;
}

unint64_t sub_100B99040()
{
  result = qword_101A139A0;
  if (!qword_101A139A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A139A0);
  }

  return result;
}

unint64_t sub_100B99098()
{
  result = qword_101A139A8;
  if (!qword_101A139A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A139A8);
  }

  return result;
}

unint64_t sub_100B990F0()
{
  result = qword_101A139B0;
  if (!qword_101A139B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A139B0);
  }

  return result;
}

unint64_t sub_100B99148()
{
  result = qword_101A139B8;
  if (!qword_101A139B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A139B8);
  }

  return result;
}

unint64_t sub_100B991A0()
{
  result = qword_101A139C0;
  if (!qword_101A139C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A139C0);
  }

  return result;
}

unint64_t sub_100B99200()
{
  result = qword_101A139C8;
  if (!qword_101A139C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A139C8);
  }

  return result;
}

unint64_t sub_100B99258()
{
  result = qword_101A139D0;
  if (!qword_101A139D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A139D0);
  }

  return result;
}

unint64_t sub_100B992B0()
{
  result = qword_101A139D8;
  if (!qword_101A139D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A139D8);
  }

  return result;
}

unint64_t sub_100B99308()
{
  result = qword_101A139E0;
  if (!qword_101A139E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A139E0);
  }

  return result;
}

unint64_t sub_100B99360()
{
  result = qword_101A139E8;
  if (!qword_101A139E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A139E8);
  }

  return result;
}

unint64_t sub_100B993B8()
{
  result = qword_101A139F0;
  if (!qword_101A139F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A139F0);
  }

  return result;
}

unint64_t sub_100B99440()
{
  result = qword_101A13A08;
  if (!qword_101A13A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A08);
  }

  return result;
}

unint64_t sub_100B99498()
{
  result = qword_101A13A10;
  if (!qword_101A13A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A10);
  }

  return result;
}

unint64_t sub_100B994F0()
{
  result = qword_101A13A18;
  if (!qword_101A13A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A18);
  }

  return result;
}

unint64_t sub_100B99548()
{
  result = qword_101A13A20;
  if (!qword_101A13A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A20);
  }

  return result;
}

unint64_t sub_100B995A8()
{
  result = qword_101A13A28;
  if (!qword_101A13A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A28);
  }

  return result;
}

unint64_t sub_100B99600()
{
  result = qword_101A13A30;
  if (!qword_101A13A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A30);
  }

  return result;
}

unint64_t sub_100B99658()
{
  result = qword_101A13A38;
  if (!qword_101A13A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A38);
  }

  return result;
}

unint64_t sub_100B996B0()
{
  result = qword_101A13A40;
  if (!qword_101A13A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A40);
  }

  return result;
}

unint64_t sub_100B99708()
{
  result = qword_101A13A48;
  if (!qword_101A13A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A48);
  }

  return result;
}

unint64_t sub_100B99760()
{
  result = qword_101A13A50;
  if (!qword_101A13A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A50);
  }

  return result;
}

unint64_t sub_100B997E8()
{
  result = qword_101A13A68;
  if (!qword_101A13A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A68);
  }

  return result;
}

unint64_t sub_100B99840()
{
  result = qword_101A13A70;
  if (!qword_101A13A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A70);
  }

  return result;
}

unint64_t sub_100B99898()
{
  result = qword_101A13A78;
  if (!qword_101A13A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A78);
  }

  return result;
}

unint64_t sub_100B998F0()
{
  result = qword_101A13A80;
  if (!qword_101A13A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A80);
  }

  return result;
}

unint64_t sub_100B99950()
{
  result = qword_101A13A88;
  if (!qword_101A13A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A88);
  }

  return result;
}

unint64_t sub_100B999A8()
{
  result = qword_101A13A90;
  if (!qword_101A13A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A90);
  }

  return result;
}

unint64_t sub_100B99A00()
{
  result = qword_101A13A98;
  if (!qword_101A13A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13A98);
  }

  return result;
}

unint64_t sub_100B99A58()
{
  result = qword_101A13AA0;
  if (!qword_101A13AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13AA0);
  }

  return result;
}

unint64_t sub_100B99AB0()
{
  result = qword_101A13AA8;
  if (!qword_101A13AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13AA8);
  }

  return result;
}

unint64_t sub_100B99B08()
{
  result = qword_101A13AB0;
  if (!qword_101A13AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13AB0);
  }

  return result;
}

unint64_t sub_100B99B90()
{
  result = qword_101A13AC8;
  if (!qword_101A13AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13AC8);
  }

  return result;
}

unint64_t sub_100B99BE8()
{
  result = qword_101A13AD0;
  if (!qword_101A13AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13AD0);
  }

  return result;
}

unint64_t sub_100B99C40()
{
  result = qword_101A13AD8;
  if (!qword_101A13AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13AD8);
  }

  return result;
}

unint64_t sub_100B99C98()
{
  result = qword_101A13AE0;
  if (!qword_101A13AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13AE0);
  }

  return result;
}

unint64_t sub_100B99CF0()
{
  result = qword_101A13AE8;
  if (!qword_101A13AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13AE8);
  }

  return result;
}

uint64_t sub_100B99D44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A13AF8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100B99DB0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B99E18()
{
  result = qword_101A13B50;
  if (!qword_101A13B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13B50);
  }

  return result;
}

unint64_t sub_100B99E6C()
{
  result = qword_101A13B58;
  if (!qword_101A13B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13B58);
  }

  return result;
}

unint64_t sub_100B99EC0()
{
  result = qword_101A13B60;
  if (!qword_101A13B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13B60);
  }

  return result;
}

unint64_t sub_100B99F14()
{
  result = qword_101A13B68;
  if (!qword_101A13B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13B68);
  }

  return result;
}

unint64_t sub_100B99F68()
{
  result = qword_101A13B70;
  if (!qword_101A13B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13B70);
  }

  return result;
}

unint64_t sub_100B99FBC()
{
  result = qword_101A13B78;
  if (!qword_101A13B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13B78);
  }

  return result;
}

unint64_t sub_100B9A010()
{
  result = qword_101A13B80;
  if (!qword_101A13B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13B80);
  }

  return result;
}

unint64_t sub_100B9A064()
{
  result = qword_101A13B88;
  if (!qword_101A13B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13B88);
  }

  return result;
}

unint64_t sub_100B9A0B8()
{
  result = qword_101A13B90;
  if (!qword_101A13B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13B90);
  }

  return result;
}

unint64_t sub_100B9A10C()
{
  result = qword_101A13B98;
  if (!qword_101A13B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13B98);
  }

  return result;
}

unint64_t sub_100B9A194()
{
  result = qword_101A13BA0;
  if (!qword_101A13BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13BA0);
  }

  return result;
}

unint64_t sub_100B9A1EC()
{
  result = qword_101A13BA8;
  if (!qword_101A13BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13BA8);
  }

  return result;
}

unint64_t sub_100B9A244()
{
  result = qword_101A13BB0;
  if (!qword_101A13BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13BB0);
  }

  return result;
}

uint64_t sub_100B9A4CC()
{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_100B9A558;

  return sub_100B9AEA0();
}

uint64_t sub_100B9A558()
{
  v2 = *v1;
  *(v2 + 336) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100B9A68C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100B9A68C()
{
  v50 = v0;
  v7 = *(v0 + 336);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(v0 + 320) = v7;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  *(inited + 56) = &type metadata for String;
  v5 = sub_1000053B0();
  *(inited + 32) = v2;
  v6 = inited + 32;
  v48 = v5;
  *(inited + 64) = v5;
  *(inited + 40) = v4;
  v46 = objc_opt_self();
  LODWORD(v7) = [v46 _atomicIncrementAssertCount];
  v49 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v49);
  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v9 lastPathComponent];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v14 = static OS_os_log.crlAssert;
    v47 = v0;
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_10146CA70;
    *(v15 + 56) = &type metadata for Int32;
    *(v15 + 64) = &protocol witness table for Int32;
    *(v15 + 32) = v7;
    v16 = sub_1005CF000();
    *(v15 + 96) = v16;
    v17 = sub_100BA3138(&qword_1019F52E0, 255, sub_1005CF000);
    *(v15 + 72) = v8;
    v18 = v49;
    *(v15 + 136) = &type metadata for String;
    *(v15 + 144) = v48;
    *(v15 + 104) = v17;
    *(v15 + 112) = v11;
    *(v15 + 120) = v13;
    *(v15 + 176) = &type metadata for UInt;
    *(v15 + 184) = &protocol witness table for UInt;
    *(v15 + 152) = 63;
    *(v15 + 216) = v16;
    *(v15 + 224) = v17;
    *(v15 + 192) = v18;
    v19 = v8;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v15);
    swift_setDeallocating();
    v48 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "Unable to create CRLUSDZItem: %@", 32, 2, inited);

    type metadata accessor for __VaListBuilder();
    v13 = swift_allocObject();
    v13[2] = 8;
    v13[3] = 0;
    v23 = v13 + 3;
    v13[4] = 0;
    v13[5] = 0;
    v8 = *(inited + 16);
    if (!v8)
    {
      break;
    }

    v24 = 0;
    while (1)
    {
      v25 = (v6 + 40 * v24);
      v11 = v25[4];
      LODWORD(v7) = sub_100020E58(v25, v25[3]);
      v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v0 = *v23;
      v27 = *(v26 + 16);
      v28 = __OFADD__(*v23, v27);
      v29 = *v23 + v27;
      if (v28)
      {
        break;
      }

      v7 = v13[4];
      if (v7 >= v29)
      {
        goto LABEL_19;
      }

      if (v7 + 0x4000000000000000 < 0)
      {
        goto LABEL_32;
      }

      v11 = v13[5];
      if (2 * v7 > v29)
      {
        v29 = 2 * v7;
      }

      v13[4] = v29;
      if ((v29 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_33;
      }

      v30 = v6;
      v31 = inited;
      v32 = v26;
      v33 = swift_slowAlloc();
      v34 = v33;
      v13[5] = v33;
      if (v11)
      {
        if (v33 != v11 || v33 >= &v11[8 * v0])
        {
          memmove(v33, v11, 8 * v0);
        }

        LODWORD(v7) = v13;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v26 = v32;
        inited = v31;
        v6 = v30;
LABEL_19:
        v34 = v13[5];
        if (!v34)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }

      v26 = v32;
      inited = v31;
      v6 = v30;
      if (!v34)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_20:
      v36 = *(v26 + 16);
      if (v36)
      {
        v37 = (v26 + 32);
        v38 = *v23;
        while (1)
        {
          v39 = *v37++;
          *&v34[8 * v38] = v39;
          v38 = *v23 + 1;
          if (__OFADD__(*v23, 1))
          {
            break;
          }

          *v23 = v38;
          if (!--v36)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:

      if (++v24 == v8)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_27:
  v40 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  [v46 handleFailureInFunction:v41 file:v42 lineNumber:63 isFatal:0 format:v43 args:v40];

  swift_setDeallocating();
  swift_arrayDestroy();

  v44 = *(v47 + 8);

  return v44();
}