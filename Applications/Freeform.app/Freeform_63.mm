uint64_t sub_100969804(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TSCLVersion();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100969848()
{
  result = qword_101A098E8;
  if (!qword_101A098E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A098E8);
  }

  return result;
}

uint64_t sub_1009698A0()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier);
  sub_10002640C(*(v0 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v0 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
  sub_10002640C(*(v0 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v0 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v0 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLUserBoardMetadataDatabaseRow()
{
  result = qword_101A09918;
  if (!qword_101A09918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100969994()
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

unint64_t sub_100969A78()
{
  result = qword_101A09A28;
  if (!qword_101A09A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09A28);
  }

  return result;
}

unint64_t sub_100969AD0()
{
  result = qword_101A09A30;
  if (!qword_101A09A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09A30);
  }

  return result;
}

unint64_t sub_100969B28()
{
  result = qword_101A09A38;
  if (!qword_101A09A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09A38);
  }

  return result;
}

unint64_t sub_100969B80()
{
  result = qword_101A09A40;
  if (!qword_101A09A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09A40);
  }

  return result;
}

uint64_t sub_100969BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1005B981C(&unk_101A22E60);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  sub_100024E98(*(v3 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v3 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
  sub_100969FF0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData);
  CRDT.init(serializedData:)();
  if (v2)
  {

    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_100969F88(v7);
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v15 = 0xD000000000000027;
    v16 = 0x800000010157C450;
    type metadata accessor for UUID();
    sub_100969FF0(&qword_101A02180, &type metadata accessor for UUID);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11 = v15;
    v12 = v16;
    sub_10089C7D0();
    swift_allocError();
    *v13 = 1;
    *(v13 + 8) = v11;
    *(v13 + 16) = v12;
    return swift_willThrow();
  }

  else
  {
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    return sub_10096A038(v7, a1);
  }
}

uint64_t sub_100969E64(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier;
  v4 = a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier;
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v5 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20), v6 = *(v3 + v5), v7 = *(v3 + v5 + 8), v8 = (v4 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    if (*(v1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite) == *(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite) && *(v1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors) == *(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors) && (sub_1009F9488(*(v1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8), *(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8)) & 1) != 0 && *(v1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled) == *(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled) && *(v1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isConnectorModeEnabled) == *(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isConnectorModeEnabled))
    {
      v10 = *(v1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isScenesNavigatorOpen) ^ *(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isScenesNavigatorOpen);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_100969F88(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A22E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100969FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10096A038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10096A0C0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!(v1 >> 6))
  {
    v14 = objc_opt_self();
    v12 = @"Feathered Brush";
    v9 = [v14 blackColor];
    v13 = [objc_allocWithZone(CRLBrushStroke) initWithName:v12 color:v9 width:8.0];
    goto LABEL_9;
  }

  if (v1 >> 6 != 1)
  {
    result = [objc_opt_self() emptyStroke];
    if (result)
    {
      return result;
    }

    return [objc_opt_self() emptyStroke];
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v1 & 0x3F;
  v9 = [objc_opt_self() blackColor];
  if (v7 != 2)
  {
    v10 = [objc_allocWithZone(CRLColor) initWithRed:(v7 & 1) == 0 green:v2 blue:v3 alpha:v4 colorSpace:v5];

    v9 = v10;
  }

  if (v8 <= 4)
  {
    if (v8 < 4)
    {
LABEL_7:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = objc_allocWithZone(CRLBrushStroke);
      v12 = String._bridgeToObjectiveC()();

      v13 = [v11 initWithName:v12 color:v9 width:v6];
LABEL_9:
      v15 = v13;

      return v15;
    }

    goto LABEL_22;
  }

  if (v8 <= 6)
  {
    if (v8 != 5)
    {
      goto LABEL_7;
    }

LABEL_22:
    v20 = 0;
    v19 = &selRef_shortDashPattern;
    goto LABEL_23;
  }

  v17 = &selRef_solidPattern;
  if (v8 == 8)
  {
    v17 = &selRef_shortDashPattern;
  }

  v18 = v8 == 7;
  if (v8 == 7)
  {
    v19 = &selRef_roundDashPattern;
  }

  else
  {
    v19 = v17;
  }

  v20 = v18;
LABEL_23:
  v21 = [objc_opt_self() *v19];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_allocWithZone(CRLStroke) initWithColor:v9 width:v20 cap:v20 join:v21 pattern:v6 miterLimit:4.0];

    result = v23;
    if (v23)
    {
      return result;
    }
  }

  else
  {
  }

  return [objc_opt_self() emptyStroke];
}

uint64_t sub_10096A390()
{
  result = MTLCreateSystemDefaultDevice();
  if (!result)
  {
    goto LABEL_7;
  }

  v1 = swift_dynamicCastObjCProtocolConditional();
  if (!v1)
  {
    result = swift_unknownObjectRelease();
LABEL_7:
    v4 = 4096;
    goto LABEL_8;
  }

  v2 = v1;
  swift_unknownObjectRetain();
  v3 = [v2 maxTextureWidth2D];
  result = swift_unknownObjectRelease_n();
  v4 = 4096;
  if (v3 < 4096)
  {
    v4 = v3;
  }

LABEL_8:
  qword_101AD6E58 = v4;
  return result;
}

uint64_t sub_10096A5FC(double *a1, uint64_t a2)
{
  v3 = a1[8];
  v4 = a1[4];
  v5 = v3 * v4;
  if (v5 <= -9.2234e18)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = a1[5];
  v7 = v3 * v6;
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_25;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 < 9.2234e18)
  {
    v2 = v5;
    a2 = v7;
    if (qword_1019F19D8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  v13 = a2;
  swift_once();
  a2 = v13;
LABEL_8:
  result = qword_101AD6E58;
  if (qword_101AD6E58 >= v2 && qword_101AD6E58 >= a2)
  {
    return v2;
  }

  if (v2 != a2)
  {
    v10 = qword_101AD6E58;
    if (a2 >= v2)
    {
      v12 = (v2 / a2) * v10;
      if ((LODWORD(v12) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v12 > -9.2234e18)
        {
          if (v12 < 9.2234e18)
          {
            return v12;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v11 = (a2 / v2) * v10;
      if ((LODWORD(v11) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v11 > -9.2234e18)
        {
          if (v11 < 9.2234e18)
          {
            return result;
          }

          goto LABEL_33;
        }

        goto LABEL_31;
      }

      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  return result;
}

id sub_10096A7DC(uint64_t a1, id a2)
{
  v2 = [a2 newSharedTextureWithDescriptor:a1];
  if (v2)
  {
    v3 = _s19SharedTextureHandleCMa();
    v4 = objc_allocWithZone(v3);
    v5 = [swift_unknownObjectRetain() newSharedTextureHandle];
    if (v5)
    {
      *&v4[OBJC_IVAR___CRLUSDRenderingCoreRESharedTextureHandle_handle] = v5;
      v7.receiver = v4;
      v7.super_class = v3;
      objc_msgSendSuper2(&v7, "init");
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease_n();
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  return v2;
}

void *sub_10096A8B0(void *a1, id a2, void *a3, void *a4)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10096A7DC(a2, a1);
  if (!v14)
  {
    goto LABEL_15;
  }

  v5 = v14;
  v34 = v15;
  if (!a3)
  {
    v30 = [a1 newSharedEvent];
    if (!v30)
    {
      swift_unknownObjectRelease();

      goto LABEL_15;
    }

    v31 = a2;
    if (a4)
    {
      v29 = v4;
      swift_unknownObjectRetain();
      v28 = a4;
LABEL_11:
      swift_unknownObjectRetain();
      UUID.init()();
      v18 = UUID.uuidString.getter();
      v20 = v19;
      (*(v11 + 8))(v13, v10);
      v32 = 0x72657265646E6572;
      v33 = 0xE90000000000003ALL;
      v21._countAndFlagsBits = v18;
      v21._object = v20;
      String.append(_:)(v21);
      v22 = String._bridgeToObjectiveC()();

      [v30 setLabel:v22];

      v16 = &selRef_setFill_;
      v32 = 0x6579616C70736964;
      v33 = 0xEA00000000003A72;
      v23._countAndFlagsBits = v18;
      v23._object = v20;
      String.append(_:)(v23);

      v24 = String._bridgeToObjectiveC()();

      [v28 setLabel:v24];

      goto LABEL_12;
    }

LABEL_9:
    swift_unknownObjectRetain();
    v17 = [a1 newSharedEvent];
    if (v17)
    {
      v28 = v17;
      v29 = v4;
      goto LABEL_11;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    a2 = v31;
LABEL_15:
    sub_10086E6A0();
    swift_allocError();
    *v26 = 0xD00000000000001ELL;
    *(v26 + 8) = 0x800000010157C510;
    *(v26 + 16) = 5;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v5;
  }

  v31 = a2;
  if (!a4)
  {
    v30 = a3;
    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = &selRef_setFill_;
LABEL_12:
  v25 = String._bridgeToObjectiveC()();
  [v5 v16[183]];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

unint64_t sub_10096AC24()
{
  result = qword_101A09C48;
  if (!qword_101A09C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A09C48);
  }

  return result;
}

void sub_10096AC70(uint64_t a1, void *a2)
{
  v4 = sub_1005B981C(&unk_101A050F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10096B150;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1008BE72C;
  aBlock[3] = &unk_10188EC30;
  v11 = _Block_copy(aBlock);

  [a2 deleteSearchableItemsWithIdentifiers:isa completionHandler:v11];
  _Block_release(v11);
}

void sub_10096AE40(uint64_t a1, void *a2)
{
  v4 = sub_1005B981C(&unk_101A050F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  sub_10096B014();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10096B0D4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1008BE72C;
  aBlock[3] = &unk_10188EBE0;
  v11 = _Block_copy(aBlock);

  [a2 indexSearchableItems:isa completionHandler:v11];
  _Block_release(v11);
}

unint64_t sub_10096B014()
{
  result = qword_101A09CB0;
  if (!qword_101A09CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A09CB0);
  }

  return result;
}

uint64_t sub_10096B060(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1005B981C(&unk_101A050F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1005B981C(&unk_101A050F0);
    return CheckedContinuation.resume(returning:)();
  }
}

void *sub_10096B154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*((swift_isaMask & *v4) + 0x660))(a2, a4);
  if (!v5)
  {
    v9 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v10 = *(v4 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
    if (!v10)
    {
      sub_10096C7D4();
      v10 = *(v4 + v9);
    }

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    sub_100972DB0(v11, a3, a4);

    if (a3)
    {
      v12 = v8;
      sub_101107D04();
    }
  }

  return v8;
}

uint64_t sub_10096B260(uint64_t a1)
{
  swift_getObjectType();

  return sub_100978C8C(a1, v1);
}

uint64_t sub_10096B2B0(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A09E58);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_1005B981C(&qword_101A09E60);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  result = sub_1009B611C(a1);
  if (!v1)
  {
    v14 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v15 = *(a1 + v14);
    if (*(v15 + 16))
    {

      v16 = sub_1007C8124(1);
      if (v17)
      {
        sub_10000BE14(*(v15 + 56) + 32 * v16, &v25, &unk_1019F4D00);

        v27[0] = v25;
        v27[1] = v26;
        if (*(&v26 + 1))
        {
          v18 = swift_dynamicCast();
          v19 = *(v10 + 56);
          v19(v8, v18 ^ 1u, 1, v9);
          if ((*(v10 + 48))(v8, 1, v9) != 1)
          {
            (*(v10 + 32))(v12, v8, v9);
            type metadata accessor for CRLContainerItemData(0);
            v20 = v19;
            v21 = swift_dynamicCastClassUnconditional();
            (*(v10 + 16))(v5, v12, v9);
            v20(v5, 0, 1, v9);
            v22 = *(*v21 + 856);

            v23 = v22(v27);
            type metadata accessor for CRLContainerItemCRDTData(0);
            sub_10097AF90(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData);
            CRStruct_1.apply(_:)();
            sub_10000CAAC(v5, &qword_101A09E58);
            v23(v27, 0);

            return (*(v10 + 8))(v12, v9);
          }

          return sub_10000CAAC(v8, &qword_101A09E58);
        }

        sub_10000CAAC(v27, &unk_1019F4D00);
      }

      else
      {
      }
    }

    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_10000CAAC(v8, &qword_101A09E58);
  }

  return result;
}

uint64_t sub_10096B6D8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = v4;
  if (a3 == 1)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      swift_getObjectType();

      return sub_1009BE298(a1, a2, a3, a4, v5);
    }
  }

  v12 = *(a2 + 16);
  if (!v12)
  {
    return result;
  }

  v13 = 0;
  v99 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v14 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v97 = a2 + 32;
  v94 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs;
  v95 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v96 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v89 = *(a2 + 16);
  v90 = a1;
  while (1)
  {
    v15 = (v97 + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    v18 = *v15 == 0x736D657469 && v17 == 0xE500000000000000;
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v31 = v16 == 0x6564724F6D657469 && v17 == 0xE900000000000072;
    if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v103 = &type metadata for Bool;
      LOBYTE(v102[0]) = 1;
      swift_beginAccess();
      sub_10000BE14(v102, &v100, &unk_1019F4D00);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(a1 + v99);
      v23 = sub_1007CF108();
      v34 = v22[2];
      v35 = (v33 & 1) == 0;
      v27 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v27)
      {
        goto LABEL_83;
      }

      v37 = v33;
      if (v22[3] >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v88 = v23;
          sub_100AA3EA4();
          v23 = v88;
          if (v37)
          {
            goto LABEL_22;
          }

LABEL_34:
          v22[(v23 >> 6) + 8] |= 1 << v23;
          *(v22[6] + 8 * v23) = 5;
          v39 = (v22[7] + 32 * v23);
          v40 = v101;
          *v39 = v100;
          v39[1] = v40;
          v41 = v22[2];
          v27 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v27)
          {
            goto LABEL_84;
          }

LABEL_67:
          v22[2] = v42;
          goto LABEL_68;
        }
      }

      else
      {
        sub_100A890C0(v36, isUniquelyReferenced_nonNull_native);
        v23 = sub_1007CF108();
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_86;
        }
      }

      if (v37)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }

    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    v44 = sub_1000053B0();
    *(inited + 32) = v16;
    v98 = inited + 32;
    v92 = v44;
    *(inited + 64) = v44;
    *(inited + 40) = v17;
    v45 = objc_opt_self();

    v91 = v45;
    v46 = [v45 _atomicIncrementAssertCount];
    v102[0] = [objc_allocWithZone(NSString) init];
    v93 = inited;
    sub_100604538(inited, v102);
    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    v49 = [v48 lastPathComponent];

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v53 = static OS_os_log.crlAssert;
    v54 = swift_initStackObject();
    *(v54 + 16) = xmmword_10146CA70;
    *(v54 + 56) = &type metadata for Int32;
    *(v54 + 64) = &protocol witness table for Int32;
    *(v54 + 32) = v46;
    v55 = sub_1005CF000();
    *(v54 + 96) = v55;
    v56 = sub_10097AF90(&qword_1019F52E0, sub_1005CF000);
    *(v54 + 72) = v47;
    *(v54 + 136) = &type metadata for String;
    *(v54 + 144) = v92;
    *(v54 + 104) = v56;
    *(v54 + 112) = v50;
    *(v54 + 120) = v52;
    *(v54 + 176) = &type metadata for UInt;
    *(v54 + 152) = 700;
    v57 = v102[0];
    *(v54 + 216) = v55;
    *(v54 + 224) = v56;
    *(v54 + 184) = &protocol witness table for UInt;
    *(v54 + 192) = v57;
    v58 = v47;
    v59 = v57;
    v60 = static os_log_type_t.error.getter();
    sub_100005404(v53, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v54);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v61 = static os_log_type_t.error.getter();

    type metadata accessor for __VaListBuilder();
    v62 = swift_allocObject();
    v62[2] = 8;
    v62[3] = 0;
    v63 = v62 + 3;
    v62[4] = 0;
    v62[5] = 0;
    v64 = *(v93 + 16);
    if (v64)
    {
      v65 = 0;
      while (1)
      {
        sub_100020E58((v98 + 40 * v65), *(v98 + 40 * v65 + 24));
        v66 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v67 = *v63;
        v68 = *(v66 + 16);
        v27 = __OFADD__(*v63, v68);
        v69 = *v63 + v68;
        if (v27)
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v70 = v62[4];
        if (v70 >= v69)
        {
          goto LABEL_56;
        }

        if (v70 + 0x4000000000000000 < 0)
        {
          goto LABEL_80;
        }

        v71 = v62[5];
        if (2 * v70 > v69)
        {
          v69 = 2 * v70;
        }

        v62[4] = v69;
        if ((v69 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_81;
        }

        v72 = v66;
        v73 = swift_slowAlloc();
        v74 = v73;
        v62[5] = v73;
        if (v71)
        {
          break;
        }

        v66 = v72;
        if (!v74)
        {
          goto LABEL_85;
        }

LABEL_57:
        v76 = *(v66 + 16);
        if (v76)
        {
          v77 = (v66 + 32);
          v78 = *v63;
          while (1)
          {
            v79 = *v77++;
            *&v74[8 * v78] = v79;
            v78 = *v63 + 1;
            if (__OFADD__(*v63, 1))
            {
              break;
            }

            *v63 = v78;
            if (!--v76)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
          goto LABEL_78;
        }

LABEL_41:

        if (++v65 == v64)
        {
          goto LABEL_64;
        }
      }

      if (v73 != v71 || v73 >= &v71[8 * v67])
      {
        memmove(v73, v71, 8 * v67);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v66 = v72;
LABEL_56:
      v74 = v62[5];
      if (!v74)
      {
        goto LABEL_85;
      }

      goto LABEL_57;
    }

LABEL_64:
    v80 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v83 = String._bridgeToObjectiveC()();

    [v91 handleFailureInFunction:v81 file:v82 lineNumber:700 isFatal:0 format:v83 args:v80];

    swift_setDeallocating();
    result = swift_arrayDestroy();
    v12 = v89;
    a1 = v90;
    v14 = v96;
LABEL_69:
    if (++v13 == v12)
    {
      return result;
    }
  }

  v19 = *(v5 + v14);
  if (!v19)
  {
    sub_10096C7D4();
    v19 = *(v5 + v14);
  }

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v103 = sub_1005B981C(&qword_101A0A360);
  v102[0] = v20;
  swift_beginAccess();
  sub_10000BE14(v102, &v100, &unk_1019F4D00);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + v99);
  v23 = sub_1007CF108();
  v25 = v22[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (!v27)
  {
    v29 = v24;
    if (v22[3] >= v28)
    {
      if ((v21 & 1) == 0)
      {
        v84 = v23;
        sub_100AA3EA4();
        v23 = v84;
        if (v29)
        {
          goto LABEL_22;
        }

LABEL_66:
        v22[(v23 >> 6) + 8] |= 1 << v23;
        *(v22[6] + 8 * v23) = 4;
        v85 = (v22[7] + 32 * v23);
        v86 = v101;
        *v85 = v100;
        v85[1] = v86;
        v87 = v22[2];
        v27 = __OFADD__(v87, 1);
        v42 = v87 + 1;
        if (v27)
        {
          goto LABEL_82;
        }

        goto LABEL_67;
      }
    }

    else
    {
      sub_100A890C0(v28, v21);
      v23 = sub_1007CF108();
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_86;
      }
    }

    if (v29)
    {
LABEL_22:
      sub_10002C638(&v100, v22[7] + 32 * v23, &unk_1019F4D00);
LABEL_68:
      *(a1 + v99) = v22;
      swift_endAccess();
      sub_10000CAAC(v102, &unk_1019F4D00);
      *(v5 + v95) = 0;

      v14 = v96;
      *(v5 + v96) = 0;

      *(v5 + v94) = 0;

      goto LABEL_69;
    }

    goto LABEL_66;
  }

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
  type metadata accessor for CRLChangeProperty(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10096C300(char a1)
{

  v3 = sub_100743DF0();

  v13 = v3;
  if ((a1 & 1) == 0)
  {
    return v3;
  }

  v4 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  result = *(v1 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!result)
  {
    sub_10096C7D4();
    result = *(v1 + v4);
  }

  if (result)
  {
    v6 = result;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v12 = result;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  result = v12;
  if (!v7)
  {
LABEL_17:

    return v3;
  }

LABEL_9:
  if (v7 >= 1)
  {

    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = (*((swift_isaMask & *v9) + 0x3E0))(1);
      sub_100636EA0(v11);
    }

    while (v7 != v8);

    return v13;
  }

  __break(1u);
  return result;
}

__n128 sub_10096C494@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1009B64DC(a1, a2, v18);
  if (!v4)
  {
    v15 = v18[2];
    v16 = v18[3];
    v17 = v19;
    v13 = v18[0];
    v14 = v18[1];
    v7 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    if (*(v3 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems))
    {
      sub_10097AF34(&v13, v12);
    }

    else
    {
      sub_10097AF34(&v13, v12);
      sub_10096C7D4();
    }

    if (*(v3 + v7))
    {
      v8 = *(v3 + v7);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v9 = sub_100640564(v8);

    sub_10063F93C(v18);
    v10 = v16;
    *(a3 + 32) = v15;
    *(a3 + 48) = v10;
    v11 = v17;
    result = v14;
    *a3 = v13;
    *(a3 + 16) = result;
    *(a3 + 64) = v11;
    *(a3 + 72) = v9;
  }

  return result;
}

void *sub_10096C578(uint64_t a1)
{
  swift_getObjectType();

  return sub_1009793D8(a1);
}

uint64_t sub_10096C5C8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems) = 0;

  *(v1 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs) = 0;

  *(v1 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs) = 0;

  *(v1 + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items) = a1;
}

void *sub_10096C644()
{
  v1 = _swiftEmptyArrayStorage;
  v2 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  result = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!result)
  {
    sub_10096C7D4();
    result = *(v0 + v2);
  }

  if (result)
  {
    v1 = result;
  }

  if (!(v1 >> 62))
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_19:

LABEL_20:

    return _swiftEmptyArrayStorage;
  }

  v10 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v10;
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v4 >= 1)
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v1 + 8 * i + 32);
      }

      v7 = v6;
      type metadata accessor for CRLContainerItem(0);
      if (swift_dynamicCastClass())
      {
        v8 = sub_10096C644();
        sub_100798D00(v8);
      }

      v9 = v7;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_10096C7D4()
{
  v1 = type metadata accessor for UUID();
  v99 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v88 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v104 = &v85 - v5;
  v6 = __chkstk_darwin(v4);
  v86 = &v85 - v7;
  v8 = __chkstk_darwin(v6);
  v87 = &v85 - v9;
  v10 = __chkstk_darwin(v8);
  v105 = &v85 - v11;
  __chkstk_darwin(v10);
  v102 = &v85 - v12;
  v13 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v13 - 8);
  v94 = &v85 - v14;
  v103 = sub_1005B981C(&unk_101A28650);
  v15 = *(v103 - 1);
  __chkstk_darwin(v103);
  v17 = &v85 - v16;
  v18 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1005B981C(&unk_101A22740);
  v85 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v85 - v22;
  v108 = _swiftEmptySetSingleton;
  v107 = _swiftEmptyArrayStorage;
  v98 = v0;
  type metadata accessor for CRLContainerItemData(0);
  v24 = *(*swift_dynamicCastClassUnconditional() + 840);

  v24(v25);

  v26 = v103;
  (*(v15 + 16))(v17, v20, v103);
  v27 = v20;
  v28 = v102;
  sub_10097AE44(v27, type metadata accessor for CRLContainerItemCRDTData);
  CROrderedSet.makeIterator()();
  (*(v15 + 8))(v17, v26);
  v29 = v94;
  v97 = OBJC_IVAR____TtC8Freeform16CRLContainerItem_items;
  v93 = v21;
  v92 = v23;
  CROrderedSet.Iterator.next()();
  v30 = *(v99 + 48);
  v91 = (v99 + 48);
  v90 = v30;
  v31 = v30(v29, 1, v1);
  v96 = _swiftEmptyArrayStorage;
  v89 = _swiftEmptyArrayStorage;
  if (v31 != 1)
  {
    goto LABEL_5;
  }

LABEL_2:
  (*(v85 + 8))(v92, v93);
  v28 = *(v98 + v97);
  v29 = *(v28 + 16);
  if (v29)
  {
    v32 = sub_100B39BF4(*(v28 + 16), 0);
    v33 = sub_100B3A290(&v106, &v32[(*(v99 + 80) + 32) & ~*(v99 + 80)], v29, v28);
    swift_bridgeObjectRetain_n();
    sub_100035F90();
    if (v33 != v29)
    {
      __break(1u);
LABEL_5:
      v95 = *(v99 + 32);
      v100 = v99 + 32;
      v101 = (v99 + 16);
      v103 = (v99 + 8);
      v89 = _swiftEmptyArrayStorage;
      v96 = _swiftEmptyArrayStorage;
      v34 = v105;
      v95(v28, v29, v1);
      while (1)
      {
        v36 = v108;
        if (v108[2] && (sub_10097AF90(&qword_1019FB870, &type metadata accessor for UUID), v28 = v102, v37 = dispatch thunk of Hashable._rawHashValue(seed:)(), v38 = -1 << *(v36 + 32), v39 = v37 & ~v38, ((*(v36 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v39) & 1) != 0))
        {
          v40 = ~v38;
          v41 = *(v99 + 72);
          v42 = *(v99 + 16);
          while (1)
          {
            v42(v34, v36[6] + v41 * v39, v1);
            sub_10097AF90(&qword_1019F37C0, &type metadata accessor for UUID);
            v43 = dispatch thunk of static Equatable.== infix(_:_:)();
            v44 = *v103;
            (*v103)(v34, v1);
            if (v43)
            {
              break;
            }

            v39 = (v39 + 1) & v40;
            v28 = v102;
            if (((*(v36 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v39) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v28 = v102;
          v44(v102, v1);
        }

        else
        {
LABEL_15:
          v45 = *(v98 + v97);
          if (!*(v45 + 16))
          {
            goto LABEL_7;
          }

          v46 = sub_10003E994(v28);
          if ((v47 & 1) == 0)
          {

LABEL_7:
            (*v103)(v28, v1);
            goto LABEL_8;
          }

          v48 = v28;
          v49 = *(*(v45 + 56) + 8 * v46);

          v50 = *v101;
          v51 = v87;
          (*v101)(v87, v48, v1);
          v52 = v105;
          sub_100E6AF38(v105, v51);
          v53 = *v103;
          (*v103)(v52, v1);
          v50(v86, v48, v1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_100B356D0(0, v96[2] + 1, 1, v96);
          }

          v55 = v96[2];
          v54 = v96[3];
          if (v55 >= v54 >> 1)
          {
            v96 = sub_100B356D0(v54 > 1, v55 + 1, 1, v96);
          }

          v56 = v96;
          v96[2] = v55 + 1;
          v95(v56 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v55, v86, v1);
          v57 = v49;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v28 = v102;
          v53(v102, v1);
          v89 = v107;
        }

LABEL_8:
        v35 = v94;
        CROrderedSet.Iterator.next()();
        if (v90(v35, 1, v1) == 1)
        {
          goto LABEL_2;
        }

        v95(v28, v35, v1);
      }
    }
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  v106 = v32;
  sub_100974300(&v106);

  v58 = v106;
  v95 = v106[2];
  if (!v95)
  {
LABEL_47:

    v83 = v98;
    *(v98 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs) = v108;

    *(v83 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs) = v96;

    *(v83 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems) = v89;
  }

  v59 = 0;
  v92 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v93 = v106 + v92;
  v102 = (v99 + 8);
  v103 = (v99 + 16);
  v91 = (v99 + 32);
  v94 = v106;
  while (v59 < v58[2])
  {
    v60 = *(v99 + 72);
    v100 = v59;
    v101 = v60;
    v61 = *(v99 + 16);
    v61(v104, &v93[v60 * v59], v1);
    v62 = v108;
    if (v108[2])
    {
      sub_10097AF90(&qword_1019FB870, &type metadata accessor for UUID);
      v63 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v64 = -1 << *(v62 + 32);
      v65 = v63 & ~v64;
      if ((*(v62 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v65))
      {
        v66 = ~v64;
        while (1)
        {
          v67 = v105;
          v61(v105, (v62[6] + v65 * v101), v1);
          sub_10097AF90(&qword_1019F37C0, &type metadata accessor for UUID);
          v68 = v104;
          v69 = dispatch thunk of static Equatable.== infix(_:_:)();
          v70 = *v102;
          (*v102)(v67, v1);
          if (v69)
          {
            break;
          }

          v65 = (v65 + 1) & v66;
          if (((*(v62 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v65) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        v70(v68, v1);
        goto LABEL_30;
      }
    }

LABEL_37:
    v71 = *(v98 + v97);
    if (*(v71 + 16))
    {

      v72 = sub_10003E994(v104);
      if (v73)
      {
        v74 = *(*(v71 + 56) + 8 * v72);

        v75 = v87;
        v76 = v104;
        v61(v87, v104, v1);
        v77 = v105;
        sub_100E6AF38(v105, v75);
        v78 = *v102;
        (*v102)(v77, v1);
        v61(v88, v76, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_100B356D0(0, v96[2] + 1, 1, v96);
        }

        v80 = v96[2];
        v79 = v96[3];
        if (v80 >= v79 >> 1)
        {
          v96 = sub_100B356D0(v79 > 1, v80 + 1, 1, v96);
        }

        v81 = v96;
        v96[2] = v80 + 1;
        (*v91)(&v81[v92 + v80 * v101], v88, v1);
        v82 = v74;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v78(v104, v1);
        v89 = v107;
        goto LABEL_30;
      }
    }

    (*v102)(v104, v1);
LABEL_30:
    v59 = v100 + 1;
    v58 = v94;
    if ((v100 + 1) == v95)
    {
      goto LABEL_47;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10096D57C(uint64_t a1)
{
  v125 = type metadata accessor for UUID();
  v3 = *(v125 - 8);
  v4 = __chkstk_darwin(v125);
  v123 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v103 - v6;
  v8 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A28650);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v103 - v17;
  result = sub_1011255D4(v16);
  if ((result & 1) == 0)
  {
    return result;
  }

  v117 = v1;
  v118 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v113 = v11;
  v115 = type metadata accessor for CRLContainerItemData(0);
  v20 = *swift_dynamicCastClassUnconditional();
  v108 = a1;
  v21 = *(v20 + 840);

  v21(v22);
  v23 = v108;

  v105 = v12;
  v24 = *(v12 + 16);
  v25 = v113;
  v24(v18, v10, v113);
  sub_10097AE44(v10, type metadata accessor for CRLContainerItemCRDTData);
  v112 = v15;
  v24(v15, v18, v25);
  v26 = *(v23 + 16);
  v27 = _swiftEmptyArrayStorage;
  v110 = v18;
  if (!v26)
  {
    v29 = v18;
    goto LABEL_6;
  }

  v27 = sub_100B39D30(v26, 0);
  v28 = sub_100B3A950(&v126, v27 + 4, v26, v23);

  sub_100035F90();
  if (v28 == v26)
  {
    v29 = v110;
LABEL_6:
    v126 = v27;
    v30 = 0;
    sub_1009743A8(&v126);
    v31 = v126;
    v32 = *(v126 + 2);
    v33 = v108;
    v34 = v112;
    v109 = v126;
    v120 = v32;
    if (v32)
    {
      v35 = 0;
      v119 = v126 + 32;
      v124 = v3 + 32;
      while (1)
      {
        if (v35 >= *(v31 + 2))
        {
          goto LABEL_72;
        }

        if (!*(v33 + 16))
        {
          break;
        }

        v36 = *&v119[8 * v35];
        v37 = sub_1007C7EC0(v36);
        if ((v38 & 1) == 0)
        {
          goto LABEL_74;
        }

        v121 = v36;
        v39 = *(*(v33 + 56) + 8 * v37);
        __chkstk_darwin(v37);
        *(&v103 - 2) = v29;

        v40 = sub_1009ADBA8(sub_10097AEA4, &v103 - 4, v39);
        v41 = v40;
        if (v40 >> 62)
        {
          v42 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v116 = v30;
        v122 = v35;
        if (v42)
        {
          v126 = _swiftEmptyArrayStorage;
          sub_100776524(0, v42 & ~(v42 >> 63), 0);
          if (v42 < 0)
          {
            goto LABEL_75;
          }

          v43 = 0;
          v44 = v126;
          do
          {
            if ((v41 & 0xC000000000000001) != 0)
            {
              v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v45 = *(v41 + 8 * v43 + 32);
            }

            v46 = v45;
            (*((swift_isaMask & *v45) + 0x88))();

            v126 = v44;
            v48 = *(v44 + 2);
            v47 = *(v44 + 3);
            if (v48 >= v47 >> 1)
            {
              sub_100776524(v47 > 1, v48 + 1, 1);
              v44 = v126;
            }

            ++v43;
            *(v44 + 2) = v48 + 1;
            (*(v3 + 32))(&v44[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v48], v7, v125);
          }

          while (v42 != v43);

          v33 = v108;
        }

        else
        {

          v44 = _swiftEmptyArrayStorage;
        }

        v49 = NSNotFound.getter();
        v50 = v121;
        if (v121 == v49 || CROrderedSet.count.getter() < v50)
        {
          v126 = v44;
          sub_1005B981C(&qword_101A0A360);
          sub_10001A2F8(&unk_101A09E20, &qword_101A0A360);
          v34 = v112;
          CROrderedSet.append<A>(contentsOf:)();
        }

        else
        {
          v126 = v44;
          sub_1005B981C(&qword_101A0A360);
          sub_10001A2F8(&unk_101A09E20, &qword_101A0A360);
          v34 = v112;
          CROrderedSet.insert<A>(contentsOf:at:)();
        }

        v35 = v122 + 1;
        v29 = v110;
        v31 = v109;
        v30 = v116;
        if (v122 + 1 == v120)
        {
          goto LABEL_30;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_30:
    v116 = v30;
    v51 = v34;
    v52 = *(*swift_dynamicCastClassUnconditional() + 856);

    v53 = v52(&v126);
    v54 = v117;
    v55 = v53;
    (*(v105 + 24))(v56, v51, v113);
    v55(&v126, 0);

    v57 = *(v33 + 64);
    v104 = v33 + 64;
    v58 = 1 << *(v33 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & v57;
    v61 = OBJC_IVAR____TtC8Freeform16CRLContainerItem_items;
    v119 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
    v120 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v118 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs;
    v103 = (v58 + 63) >> 6;
    v115 = v3 + 16;
    v121 = (v3 + 8);

    v62 = v60;
    v107 = 0;
    v114 = v3;
    do
    {
LABEL_34:
      if (v62)
      {
        v63 = v107;
        if (*(v33 + 16))
        {
          goto LABEL_42;
        }

LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v64 = v107;
      do
      {
        v65 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_70;
        }

        if (v65 >= v103)
        {
          v101 = *(v105 + 8);
          v102 = v113;
          v101(v112, v113);

          return (v101)(v110, v102);
        }

        v62 = *(v104 + 8 * v65);
        ++v64;
      }

      while (!v62);
      v63 = v65;
      if (!*(v33 + 16))
      {
        goto LABEL_76;
      }

LABEL_42:
      v66 = v62;
      v67 = *(v33 + 48);
      v107 = v63;
      v68 = sub_1007C7EC0(*(v67 + ((v63 << 9) | (8 * __clz(__rbit64(v62))))));
      if ((v69 & 1) == 0)
      {
        goto LABEL_77;
      }

      v70 = *(*(v33 + 56) + 8 * v68);
      if (v70 >> 62)
      {
        v71 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = (v66 - 1) & v66;
    }

    while (!v71);
    v106 = (v66 - 1) & v66;
    v72 = v70 & 0xC000000000000001;
    v111 = v70 & 0xFFFFFFFFFFFFFF8;

    v73 = 0;
    v124 = v70;
    v122 = v71;
    while (1)
    {
      if (v72)
      {
        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v73 >= *(v111 + 16))
        {
          goto LABEL_71;
        }

        v76 = *(v70 + 8 * v73 + 32);
      }

      v77 = v76;
      v78 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v79 = v123;
      (*((swift_isaMask & *v76) + 0x88))();
      v80 = v61;
      v81 = *(v54 + v61);
      v82 = v77;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v126 = v81;
      v84 = sub_10003E994(v79);
      v86 = *(v81 + 16);
      v87 = (v85 & 1) == 0;
      v88 = __OFADD__(v86, v87);
      v89 = v86 + v87;
      if (v88)
      {
        goto LABEL_68;
      }

      v90 = v85;
      if (*(v81 + 24) < v89)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_59;
      }

      v100 = v84;
      sub_100AA4030();
      v84 = v100;
      v54 = v117;
      v92 = v126;
      if (v90)
      {
LABEL_47:
        v74 = *(v92 + 7);
        v75 = *(v74 + 8 * v84);
        *(v74 + 8 * v84) = v82;

        (*v121)(v123, v125);
        v61 = v80;
        goto LABEL_48;
      }

LABEL_60:
      v93 = v72;
      *&v92[8 * (v84 >> 6) + 64] |= 1 << v84;
      v94 = v114;
      v95 = v84;
      v96 = v123;
      v97 = v125;
      (*(v114 + 16))(*(v92 + 6) + *(v114 + 72) * v84, v123, v125);
      *(*(v92 + 7) + 8 * v95) = v82;
      (*(v94 + 8))(v96, v97);
      v98 = *(v92 + 2);
      v88 = __OFADD__(v98, 1);
      v99 = v98 + 1;
      if (v88)
      {
        goto LABEL_69;
      }

      *(v92 + 2) = v99;
      v54 = v117;
      v61 = v80;
      v72 = v93;
LABEL_48:
      *(v54 + v120) = 0;

      *&v119[v54] = 0;

      *(v54 + v118) = 0;

      *(v54 + v61) = v92;

      [v54 _setParentItemReferenceWithItem:v82 parent:v54];
      [v54 _setParentItemUUIDWithItem:v82 parent:v54];

      ++v73;
      v70 = v124;
      if (v78 == v122)
      {

        v33 = v108;
        v62 = v106;
        goto LABEL_34;
      }
    }

    sub_100A89368(v89, isUniquelyReferenced_nonNull_native);
    v84 = sub_10003E994(v123);
    if ((v90 & 1) != (v91 & 1))
    {
      goto LABEL_79;
    }

LABEL_59:
    v92 = v126;
    if (v90)
    {
      goto LABEL_47;
    }

    goto LABEL_60;
  }

LABEL_78:
  __break(1u);
LABEL_79:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

id sub_10096E1AC(void *a1, void (*a2)(void))
{
  v3 = v2;
  v6 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v6 - 8);
  v160 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A28650);
  v165 = *(v8 - 8);
  v166 = v8;
  __chkstk_darwin(v8);
  v164 = &v158 - v9;
  v10 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v163 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v159 = (&v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v162 = &v158 - v16;
  __chkstk_darwin(v17);
  v161 = &v158 - v18;
  __chkstk_darwin(v19);
  v168 = &v158 - v20;
  v21 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v21);
  v23 = &v158 - v22;
  v24 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v24 - 8);
  v167 = (&v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v28 = &v158 - v27;
  v30 = __chkstk_darwin(v29);
  v32 = &v158 - v31;
  if ((a2 & 1) != 0 && *(v3 + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext))
  {
    __break(1u);
  }

  else
  {
    v33 = *((swift_isaMask & *a1) + 0xB8);
    v170 = a1;
    v34 = v33(v30);
    v172 = v3;
    v169 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    (*(**(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v34);
    (*(v13 + 56))(v28, 0, 1, v12);
    v35 = v13;
    v36 = *(v21 + 48);
    sub_10000BE14(v32, v23, &qword_1019F6990);
    sub_10000BE14(v28, &v23[v36], &qword_1019F6990);
    v173 = v35;
    v37 = *(v35 + 48);
    v38 = v37(v23, 1, v12);
    v171 = v12;
    if (v38 == 1)
    {
      sub_10000CAAC(v28, &qword_1019F6990);
      sub_10000CAAC(v32, &qword_1019F6990);
      if (v37(&v23[v36], 1, v12) == 1)
      {
        sub_10000CAAC(v23, &qword_1019F6990);
        v39 = v168;
        goto LABEL_8;
      }

      goto LABEL_21;
    }

    v158 = v32;
    a2 = v167;
    sub_10000BE14(v23, v167, &qword_1019F6990);
    if (v37(&v23[v36], 1, v12) != 1)
    {
      v40 = v173;
      v39 = v168;
      (*(v173 + 32))(v168, &v23[v36], v12);
      sub_10097AF90(&qword_1019F37C0, &type metadata accessor for UUID);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v40 + 8);
      v42(v39, v12);
      sub_10000CAAC(v28, &qword_1019F6990);
      sub_10000CAAC(v158, &qword_1019F6990);
      v42(v167, v12);
      sub_10000CAAC(v23, &qword_1019F6990);
      v43 = v172;
      if (v41)
      {
LABEL_8:
        type metadata accessor for CRLContainerItemData(0);
        v44 = *(*swift_dynamicCastClassUnconditional() + 840);

        v46 = v163;
        v44(v45);

        v47 = v164;
        v48 = v165;
        v49 = v166;
        (*(v165 + 16))(v164, v46, v166);
        v50 = sub_10097AE44(v46, type metadata accessor for CRLContainerItemCRDTData);
        v51 = v170;
        v52 = (swift_isaMask & *v170) + 136;
        v167 = *((swift_isaMask & *v170) + 0x88);
        v163 = v52;
        v167(v50);
        v53 = CROrderedSet.contains(_:)();
        v54 = v39;
        v55 = v171;
        v56 = v173 + 8;
        v57 = *(v173 + 8);
        v57(v54, v171);
        (*(v48 + 8))(v47, v49);
        if (v53)
        {
          return sub_10096F7D0(v51);
        }

        v58 = v55;
        if (qword_1019F22B8 != -1)
        {
          swift_once();
        }

        v166 = static OS_os_log.boardItemLifecycle;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        v60 = v172;
        v61 = v161;
        (*(**(v169 + v172) + 264))();
        v62 = UUID.uuidString.getter();
        v64 = v63;
        v65 = v61;
        v66 = v56;
        v159 = v57;
        v57(v65, v58);
        *(inited + 56) = &type metadata for String;
        v67 = sub_1000053B0();
        *(inited + 32) = v62;
        v169 = (inited + 32);
        *(inited + 64) = v67;
        *(inited + 40) = v64;
        v68 = v60;
        v69 = [v68 description];
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v71;

        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v67;
        *(inited + 72) = v70;
        *(inited + 80) = v72;
        v73 = v162;
        v74 = v170;
        (v167)();
        v75 = UUID.uuidString.getter();
        v77 = v76;
        v78 = v73;
        v173 = v66;
        v79 = v159;
        v159(v78, v171);
        v80 = v79;
        *(inited + 136) = &type metadata for String;
        *(inited + 144) = v67;
        *(inited + 112) = v75;
        *(inited + 120) = v77;
        v81 = v74;
        v82 = [v81 description];
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        *(inited + 176) = &type metadata for String;
        *(inited + 184) = v67;
        *(inited + 152) = v83;
        *(inited + 160) = v85;
        v86 = (*((swift_isaMask & *v81) + 0x380))();
        if (v86)
        {
          v87 = *(v86 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
          v88 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          v89 = v86;
          swift_beginAccess();
          v90 = v87 + v88;
          v91 = v160;
          sub_10097ADDC(v90, v160, type metadata accessor for CRLBoardCRDTData);
          sub_1005B981C(&unk_1019F5250);
          v92 = v168;
          CRRegister.wrappedValue.getter();

          sub_10097AE44(v91, type metadata accessor for CRLBoardCRDTData);
          v93 = UUID.uuidString.getter();
          v95 = v94;
          v80(v92, v171);
          v96 = (inited + 192);
          *(inited + 216) = &type metadata for String;
          *(inited + 224) = v67;
          if (v95)
          {
            *v96 = v93;
            v51 = v170;
LABEL_17:
            *(inited + 200) = v95;
            v97 = static os_log_type_t.default.getter();
            sub_100005404(v166, &_mh_execute_header, v97, "Parent %{public}@%{public}@ tried to fixup insert a child %{public}@%{public}@ we don't think we have. Board: %{public}@", 120, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            return sub_10096F7D0(v51);
          }

          v51 = v170;
        }

        else
        {
          v96 = (inited + 192);
          *(inited + 216) = &type metadata for String;
          *(inited + 224) = v67;
          v51 = v74;
        }

        *v96 = 7104878;
        v95 = 0xE300000000000000;
        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }

  sub_10000CAAC(v28, &qword_1019F6990);
  sub_10000CAAC(v158, &qword_1019F6990);
  (*(v173 + 8))(a2, v12);
LABEL_21:
  sub_10000CAAC(v23, &unk_101A0AFE0);
  v43 = v172;
  v39 = v168;
LABEL_22:
  v172 = sub_1005B981C(&qword_1019F54E0);
  v99 = swift_initStackObject();
  *(v99 + 16) = xmmword_10146D2A0;
  (*(**(v169 + v43) + 264))();
  v100 = UUID.uuidString.getter();
  v102 = v101;
  v169 = *(v173 + 8);
  v103 = v171;
  v169(v39, v171);
  *(v99 + 56) = &type metadata for String;
  v104 = sub_1000053B0();
  *(v99 + 32) = v100;
  v173 = v99 + 32;
  *(v99 + 64) = v104;
  *(v99 + 40) = v102;
  v105 = v43;
  v106 = [v105 description];
  v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v108;

  *(v99 + 96) = &type metadata for String;
  *(v99 + 104) = v104;
  *(v99 + 72) = v107;
  *(v99 + 80) = v109;
  v110 = v170;
  v111 = v159;
  (*((swift_isaMask & *v170) + 0x88))();
  v112 = UUID.uuidString.getter();
  v114 = v113;
  v169(v111, v103);
  *(v99 + 136) = &type metadata for String;
  *(v99 + 144) = v104;
  *(v99 + 112) = v112;
  *(v99 + 120) = v114;
  v120 = v110;
  v115 = [v120 description];
  v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = v117;

  *(v99 + 176) = &type metadata for String;
  *(v99 + 184) = v104;
  v119 = v104;
  *(v99 + 152) = v116;
  *(v99 + 160) = v118;
  v171 = objc_opt_self();
  LODWORD(v120) = [v171 _atomicIncrementAssertCount];
  v174 = [objc_allocWithZone(NSString) init];
  sub_100604538(v99, &v174);
  StaticString.description.getter();
  v121 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v122 = String._bridgeToObjectiveC()();

  v123 = [v122 lastPathComponent];

  v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v126 = v125;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v127 = static OS_os_log.crlAssert;
    v128 = swift_initStackObject();
    *(v128 + 16) = xmmword_10146CA70;
    *(v128 + 56) = &type metadata for Int32;
    *(v128 + 64) = &protocol witness table for Int32;
    *(v128 + 32) = v120;
    v129 = sub_1005CF000();
    *(v128 + 96) = v129;
    v130 = sub_10097AF90(&qword_1019F52E0, sub_1005CF000);
    *(v128 + 72) = v121;
    *(v128 + 136) = &type metadata for String;
    *(v128 + 144) = v119;
    *(v128 + 104) = v130;
    *(v128 + 112) = v124;
    *(v128 + 120) = v126;
    *(v128 + 176) = &type metadata for UInt;
    *(v128 + 184) = &protocol witness table for UInt;
    *(v128 + 152) = 235;
    v131 = v174;
    *(v128 + 216) = v129;
    *(v128 + 224) = v130;
    *(v128 + 192) = v131;
    v132 = v121;
    v133 = v131;
    v134 = static os_log_type_t.error.getter();
    sub_100005404(v127, &_mh_execute_header, v134, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v128);

    v135 = static os_log_type_t.error.getter();
    sub_100005404(v127, &_mh_execute_header, v135, "Parent %@%@ tried to fixup insert a child %@%@ that doesn't think we're its parent", 82, 2, v99);

    sub_10063DF98(v99, "Parent %@%@ tried to fixup insert a child %@%@ that doesn't think we're its parent");
    type metadata accessor for __VaListBuilder();
    v136 = swift_allocObject();
    v136[2] = 8;
    v136[3] = 0;
    v126 = v136 + 3;
    v136[4] = 0;
    v136[5] = 0;
    v137 = *(v99 + 16);
    if (!v137)
    {
      break;
    }

    v124 = 0;
    v99 = 40;
    while (1)
    {
      v138 = (v173 + 40 * v124);
      v121 = v138[3];
      LODWORD(v120) = sub_100020E58(v138, v121);
      v139 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v119 = *v126;
      v140 = *(v139 + 16);
      v141 = __OFADD__(*v126, v140);
      v142 = *v126 + v140;
      if (v141)
      {
        break;
      }

      v143 = v139;
      v120 = v136[4];
      if (v120 >= v142)
      {
        goto LABEL_40;
      }

      v144 = v139;
      if (v120 + 0x4000000000000000 < 0)
      {
        goto LABEL_50;
      }

      v121 = v136[5];
      v145 = 2 * v120;
      if (2 * v120 <= v142)
      {
        v145 = v142;
      }

      v136[4] = v145;
      if ((v145 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_51;
      }

      v146 = swift_slowAlloc();
      v136[5] = v146;
      if (v121)
      {
        if (v146 != v121 || v146 >= &v121[8 * v119])
        {
          memmove(v146, v121, 8 * v119);
        }

        LODWORD(v120) = v136;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v143 = v144;
LABEL_40:
        v146 = v136[5];
        if (!v146)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      v143 = v144;
      if (!v146)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        break;
      }

LABEL_41:
      v148 = *(v143 + 16);
      if (v148)
      {
        v149 = (v143 + 32);
        v150 = *v126;
        do
        {
          v151 = *v149++;
          *&v146[8 * v150] = v151;
          v150 = *v126 + 1;
          if (__OFADD__(*v126, 1))
          {
            goto LABEL_48;
          }

          *v126 = v150;
        }

        while (--v148);
      }

      if (++v124 == v137)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

LABEL_53:
  v152 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v153 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v154 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v155 = String._bridgeToObjectiveC()();

  [v171 handleFailureInFunction:v153 file:v154 lineNumber:235 isFatal:1 format:v155 args:v152];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v156, v157);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10096F3C0(uint64_t a1, char a2)
{
  v32 = a1;
  v4 = type metadata accessor for UUID();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A28650);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) != 0 && *(v2 + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext))
  {
    __break(1u);
  }

  else
  {
    v28 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    type metadata accessor for CRLContainerItemData(0);
    v13 = v2;
    v14 = *(*swift_dynamicCastClassUnconditional() + 840);

    v14(v15);

    (*(v7 + 16))(v9, v12, v6);
    sub_10097AE44(v12, type metadata accessor for CRLContainerItemCRDTData);
    v16 = v32;
    v17 = CROrderedSet.contains(_:)();
    (*(v7 + 8))(v9, v6);
    if (v17)
    {
      if (qword_1019F22B8 != -1)
      {
        swift_once();
      }

      v18 = static OS_os_log.boardItemLifecycle;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v20 = v29;
      (*(**(v13 + v28) + 264))();
      v21 = UUID.uuidString.getter();
      v23 = v22;
      (*(v30 + 8))(v20, v31);
      *(inited + 56) = &type metadata for String;
      v24 = sub_1000053B0();
      *(inited + 64) = v24;
      *(inited + 32) = v21;
      *(inited + 40) = v23;
      v25 = UUID.uuidString.getter();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v24;
      *(inited + 72) = v25;
      *(inited + 80) = v26;
      v27 = static os_log_type_t.default.getter();
      sub_100005404(v18, &_mh_execute_header, v27, "Parent %{public}@ tried to fixup remove a child %{public}@ we still think we have.", 82, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
    }

    sub_100972BE4(v16);
  }
}

id sub_10096F7D0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a1) + 0x88))(v6);
  v9 = OBJC_IVAR____TtC8Freeform16CRLContainerItem_items;
  v10 = *&v2[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items];
  v11 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v10;
  sub_100A9B06C(v11, v8, isUniquelyReferenced_nonNull_native);
  (*(v5 + 8))(v8, v4);
  v13 = v16;
  *&v2[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;

  *&v2[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;

  *&v2[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;

  *&v2[v9] = v13;

  return [v2 _setParentItemReferenceWithItem:v11 parent:v2];
}

uint64_t sub_10096F978(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v106 = a5;
  v97 = a4;
  v98 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v100 = v7;
  v101 = v8;
  __chkstk_darwin(v7);
  v99 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A28650);
  v95 = *(v10 - 8);
  v96 = v10;
  __chkstk_darwin(v10);
  v94 = &v89 - v11;
  v12 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v93 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v15 = a1;
  v16 = [v15 description];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v102 = v15;

  *(inited + 56) = &type metadata for String;
  v20 = sub_1000053B0();
  *(inited + 32) = v17;
  *(inited + 64) = v20;
  *(inited + 40) = v19;
  v21 = v104;
  v22 = a2;
  v23 = [v21 description];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v20;
  *(inited + 72) = v24;
  *(inited + 80) = v26;
  type metadata accessor for CRLContainerItem(0);
  if (static NSObject.== infix(_:_:)())
  {
    v106 = inited + 32;
    v103 = objc_opt_self();
    LODWORD(v104) = [v103 _atomicIncrementAssertCount];
    v105[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v105);
    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    v56 = [v55 lastPathComponent];

    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    if (qword_1019F20A0 != -1)
    {
LABEL_39:
      swift_once();
    }

    v60 = static OS_os_log.crlAssert;
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_10146CA70;
    *(v61 + 56) = &type metadata for Int32;
    *(v61 + 64) = &protocol witness table for Int32;
    *(v61 + 32) = v104;
    v62 = sub_1005CF000();
    *(v61 + 96) = v62;
    v63 = sub_10097AF90(&qword_1019F52E0, sub_1005CF000);
    *(v61 + 72) = v54;
    *(v61 + 136) = &type metadata for String;
    *(v61 + 144) = v20;
    *(v61 + 104) = v63;
    *(v61 + 112) = v57;
    *(v61 + 120) = v59;
    *(v61 + 176) = &type metadata for UInt;
    *(v61 + 184) = &protocol witness table for UInt;
    *(v61 + 152) = 284;
    v64 = v105[0];
    *(v61 + 216) = v62;
    *(v61 + 224) = v63;
    *(v61 + 192) = v64;
    v65 = v54;
    v66 = v64;
    v67 = static os_log_type_t.error.getter();
    sub_100005404(v60, &_mh_execute_header, v67, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v61);

    v68 = static os_log_type_t.error.getter();
    sub_100005404(v60, &_mh_execute_header, v68, "Should not try to reparent an item (%{public}@) to its current parent (%{public}@).", 83, 2, inited);

    sub_10063DF98(inited, "Should not try to reparent an item (%{public}@) to its current parent (%{public}@).");
    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v69 = v20 + 3;
    v20[4] = 0;
    v20[5] = 0;
    v70 = *(inited + 16);
    if (!v70)
    {
LABEL_41:
      v83 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v84 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v85 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v86 = String._bridgeToObjectiveC()();

      [v103 handleFailureInFunction:v84 file:v85 lineNumber:284 isFatal:1 format:v86 args:v83];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v87, v88);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    inited = 0;
    while (1)
    {
      v71 = (v106 + 40 * inited);
      v57 = v71[3];
      v54 = v71[4];
      v59 = sub_100020E58(v71, v57);
      v72 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v73 = *v69;
      v74 = *(v72 + 16);
      v75 = __OFADD__(*v69, v74);
      v76 = *v69 + v74;
      if (v75)
      {
        goto LABEL_36;
      }

      v54 = v72;
      v59 = v20[4];
      if (v59 >= v76)
      {
        goto LABEL_28;
      }

      if (v59 + 0x4000000000000000 < 0)
      {
        goto LABEL_37;
      }

      v57 = v20[5];
      if (2 * v59 > v76)
      {
        v76 = 2 * v59;
      }

      v20[4] = v76;
      if ((v76 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_38;
      }

      v77 = swift_slowAlloc();
      v20[5] = v77;
      if (v57)
      {
        break;
      }

LABEL_29:
      if (!v77)
      {
        __break(1u);
        goto LABEL_41;
      }

      v79 = v54[2];
      if (v79)
      {
        v80 = v54 + 4;
        v81 = *v69;
        while (1)
        {
          v82 = *v80++;
          *&v77[8 * v81] = v82;
          v81 = *v69 + 1;
          if (__OFADD__(*v69, 1))
          {
            break;
          }

          *v69 = v81;
          if (!--v79)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_13:

      if (++inited == v70)
      {
        goto LABEL_41;
      }
    }

    if (v77 != v57 || v77 >= &v57[8 * v73])
    {
      memmove(v77, v57, 8 * v73);
    }

    v59 = v20;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_28:
    v77 = v20[5];
    goto LABEL_29;
  }

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v27 = v103;
  result = sub_1012E0400(v21, &off_10188FE10);
  if (!v27)
  {
    sub_1012E0400(v22, &off_10188FE10);
    v29 = v102;
    sub_1012E0400(v102, &off_10188FE10);
    v104 = 0;
    v92 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v91 = type metadata accessor for CRLContainerItemData(0);
    v30 = *(*swift_dynamicCastClassUnconditional() + 840);

    v32 = v93;
    v30(v31);

    v33 = v94;
    v34 = v95;
    v35 = v96;
    (*(v95 + 16))(v94, v32, v96);
    v36 = sub_10097AE44(v32, type metadata accessor for CRLContainerItemCRDTData);
    v37 = (swift_isaMask & *v29) + 136;
    v38 = v99;
    v103 = *((swift_isaMask & *v29) + 0x88);
    v93 = v37;
    (v103)(v36);
    v90 = sub_10100EF9C();
    v40 = v39;
    v41 = *(v101 + 8);
    v101 += 8;
    v41(v38, v100);
    v42 = (*(v34 + 8))(v33, v35);
    if ((v40 & 1) == 0)
    {
      v43 = *(*swift_dynamicCastClassUnconditional() + 856);

      v44 = v43(v105);
      CROrderedSet.remove(at:)(v90);
      v44(v105, 0);
    }

    v45 = v99;
    v46 = v102;
    (v103)(v42);
    sub_100972BE4(v45);
    v41(v45, v100);
    sub_1005B981C(&unk_1019F4D60);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_101465920;
    *(v47 + 32) = v46;
    v48 = v46;
    v49 = v98;
    if (v97)
    {
      v49 = NSNotFound.getter();
    }

    sub_1005B981C(&unk_101A09DB0);
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_10146C6B0;
    *(v50 + 32) = v49;
    v51 = v50 + 32;
    *(v50 + 40) = v47;
    v52 = sub_100BD4E94(v50);
    swift_setDeallocating();
    sub_10000CAAC(v51, &qword_101A039D0);
    sub_10096D57C(v52);

    v53 = v104;
    result = sub_1012CF6CC(v21, &off_10188FE10, 2);
    if (!v53)
    {
      sub_1012CF6CC(v22, &off_10188FE10, 2);
      return sub_1012CF6CC(v48, &off_10188FE10, 2);
    }
  }

  return result;
}

uint64_t sub_10097049C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1012E0400(v5, &off_10188FE10);
  if (!v4)
  {
    v39 = a3;
    v41 = 0;
    v38 = sub_100970AC8(a2, a1);
    if (v15)
    {
      if (v15 == 1)
      {
        type metadata accessor for CRLContainerItemData(0);
        v16 = swift_dynamicCastClassUnconditional();
        (*((swift_isaMask & *a1) + 0x88))();
        v17 = *(*v16 + 856);

        v18 = v17(v40);
        sub_1005B981C(&unk_101A28650);
        v19 = v38;
        CROrderedSet.insert(_:at:)();
        (*(v10 + 8))(v12, v9);
        v18(v40, 0);

        if (qword_1019F22B8 != -1)
        {
          swift_once();
        }

        v20 = static OS_os_log.boardItemLifecycle;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        *(inited + 56) = &type metadata for Int;
        *(inited + 64) = &protocol witness table for Int;
        *(inited + 32) = v19;
        v22 = static os_log_type_t.default.getter();
        sub_100005404(v20, &_mh_execute_header, v22, "CRLContainerItem reorder resulted in inserting the child into index %{public}d", 78, 2, inited);
        swift_setDeallocating();
        v23 = inited + 32;
      }

      else
      {
        if (qword_1019F22B8 != -1)
        {
          swift_once();
        }

        v31 = static OS_os_log.boardItemLifecycle;
        sub_1005B981C(&qword_1019F54E0);
        v32 = swift_initStackObject();
        *(v32 + 16) = xmmword_10146C6B0;
        (*((swift_isaMask & *a1) + 0x88))();
        v33 = UUID.uuidString.getter();
        v35 = v34;
        (*(v10 + 8))(v12, v9);
        *(v32 + 56) = &type metadata for String;
        *(v32 + 64) = sub_1000053B0();
        *(v32 + 32) = v33;
        *(v32 + 40) = v35;
        v36 = static os_log_type_t.error.getter();
        sub_100005404(v31, &_mh_execute_header, v36, "Aborting CRLContainerItem reorder operation for item: %{public}@", 64, 2, v32);
        swift_setDeallocating();
        v23 = v32 + 32;
      }

      sub_100005070(v23);
    }

    else
    {
      v24 = v14;
      type metadata accessor for CRLContainerItemData(0);
      v25 = *(*swift_dynamicCastClassUnconditional() + 856);

      v26 = v25(v40);
      sub_1005B981C(&unk_101A28650);
      v27 = v38;
      CROrderedSet.move(from:to:)(v38, v24);
      v26(v40, 0);

      if (qword_1019F22B8 != -1)
      {
        swift_once();
      }

      v28 = static OS_os_log.boardItemLifecycle;
      sub_1005B981C(&qword_1019F54E0);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_10146BDE0;
      *(v29 + 56) = &type metadata for Int;
      *(v29 + 64) = &protocol witness table for Int;
      *(v29 + 32) = v27;
      *(v29 + 96) = &type metadata for Int;
      *(v29 + 104) = &protocol witness table for Int;
      *(v29 + 72) = v24;
      v30 = static os_log_type_t.default.getter();
      sub_100005404(v28, &_mh_execute_header, v30, "CRLContainerItem reorder child from %{public}d to %{public}d", 60, 2, v29);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
    }

    *(v5 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems) = 0;

    *(v5 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs) = 0;

    *(v5 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs) = 0;

    return sub_1012CF6CC(v5, &off_10188FE10, 2);
  }

  return result;
}

uint64_t sub_100970AC8(uint64_t a1, void *a2)
{
  v3 = v2;
  v143 = a2;
  v133 = a1;
  v144 = type metadata accessor for UUID();
  v136 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v142 = v127 - v6;
  v7 = sub_1005B981C(&unk_101A28650);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v127 - v9;
  v11 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v141 = (v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = v127 - v14;
  v135 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v134 = type metadata accessor for CRLContainerItemData(0);
  v16 = *(*swift_dynamicCastClassUnconditional() + 840);

  v16(v17);
  v18 = v7;

  (*(v8 + 16))(v10, v15, v7);
  v132 = v15;
  sub_10097AE44(v15, type metadata accessor for CRLContainerItemCRDTData);
  v19 = CROrderedSet.count.getter();
  (*(v8 + 8))(v10, v7);
  v20 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v21 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v21)
  {
    sub_10096C7D4();
    v21 = *(v2 + v20);
  }

  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  if (v22 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v142;

  if (!v23)
  {
    v59 = v136;
    if (qword_1019F22B8 != -1)
    {
      swift_once();
    }

    v60 = static OS_os_log.boardItemLifecycle;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    (*((swift_isaMask & *v143) + 0x88))();
    v61 = UUID.uuidString.getter();
    v63 = v62;
    (*(v59 + 8))(v24, v144);
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v61;
    v54 = inited + 32;
    *(inited + 40) = v63;
    v55 = static os_log_type_t.error.getter();
    v56 = "Trying to reorder a board item on a parent that has no children.";
    v57 = v60;
    v58 = 64;
    goto LABEL_26;
  }

  if (!v19)
  {
    return 0;
  }

  v128 = v20;
  v129 = v23;
  v130 = v19;
  v131 = v3;
  v25 = *(*swift_dynamicCastClassUnconditional() + 840);

  v27 = v141;
  v25(v26);

  sub_10001A2F8(&unk_101A09E10, &unk_101A28650);
  v28 = v27;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v29 = v146;
  v127[1] = v18;
  if (v146 == v145[0])
  {
LABEL_14:
    result = sub_10097AE44(v28, type metadata accessor for CRLContainerItemCRDTData);
LABEL_15:
    v39 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
    v40 = v131;
    v41 = *(v131 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs);
    if (!v41)
    {
      result = sub_10096C7D4();
      v41 = *(v40 + v39);
    }

    if (v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = _swiftEmptyArrayStorage;
    }

    v43 = *((swift_isaMask & *v143) + 0x88);
    (v43)(result);

    v44 = sub_10100F218(v24, v42);
    v46 = v45;

    v47 = *(v136 + 8);
    (v47)(v24, v144);
    v48 = &unk_10146C000;
    if (v46)
    {
      if (qword_1019F22B8 == -1)
      {
LABEL_22:
        v49 = static OS_os_log.boardItemLifecycle;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = v48[107];
        v43();
        v51 = UUID.uuidString.getter();
        v53 = v52;
        (v47)(v24, v144);
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v51;
        v54 = inited + 32;
        *(inited + 40) = v53;
        v55 = static os_log_type_t.error.getter();
        v56 = "Trying to reorder a board item that we don't know of as a child: %{public}@.";
        v57 = v49;
        v58 = 76;
LABEL_26:
        sub_100005404(v57, &_mh_execute_header, v55, v56, v58, 2, inited);
        swift_setDeallocating();
        sub_100005070(v54);
        return 0;
      }

LABEL_94:
      swift_once();
      goto LABEL_22;
    }

    v137 = v47;
    if (qword_1019F22B8 != -1)
    {
      swift_once();
    }

    v141 = static OS_os_log.boardItemLifecycle;
    sub_1005B981C(&qword_1019F54E0);
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_10146C6B0;
    v43();
    v65 = UUID.uuidString.getter();
    v67 = v66;
    v137(v24, v144);
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_1000053B0();
    *(v47 + 32) = v65;
    *(v47 + 40) = v67;
    v68 = static os_log_type_t.default.getter();
    sub_100005404(v141, &_mh_execute_header, v68, "Trying to reorder a child that we don't have a z-order for yet: %{public}@. Will add into z-order list.", 103, 2, v47);
    swift_setDeallocating();
    sub_100005070(v47 + 32);
    v43 = v135;
    v48 = v133;
    if ((v133 & 0x8000000000000000) == 0)
    {
      LODWORD(v138) = 1;
      v69 = v133;
      v70 = v131;
      if (v129 > v133)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    LODWORD(v138) = 1;
    v70 = v131;
    goto LABEL_42;
  }

  v137 = (v136 + 16);
  v138 = v136 + 8;
  v30 = (v136 + 8);
  while (1)
  {
    v139 = v29;
    v31 = dispatch thunk of Collection.subscript.read();
    (*v137)(v24);
    v32 = (v31)(v145, 0);
    v33 = *((swift_isaMask & *v143) + 0x88);
    v34 = v140;
    v33(v32);
    LOBYTE(v31) = static UUID.== infix(_:_:)();
    v35 = *v30;
    v36 = v34;
    v37 = v144;
    (*v30)(v36, v144);
    v35(v24, v37);
    if (v31)
    {
      break;
    }

    v28 = v141;
    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v29 = v146;
    v24 = v142;
    if (v146 == v145[0])
    {
      goto LABEL_14;
    }
  }

  v71 = v33;
  v137 = v35;
  v72 = sub_10097AE44(v141, type metadata accessor for CRLContainerItemCRDTData);
  v73 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v74 = *(v131 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs);
  if (!v74)
  {
    v75 = v131;
    v72 = sub_10096C7D4();
    v74 = *(v75 + v73);
  }

  if (v74)
  {
    v76 = v74;
  }

  else
  {
    v76 = _swiftEmptyArrayStorage;
  }

  v24 = v142;
  v71(v72);

  sub_10100F218(v24, v76);
  v78 = v77;

  result = (v137)(v24, v144);
  if (v78)
  {
    goto LABEL_15;
  }

  v47 = v130;
  v70 = v131;
  if (v130 == v129)
  {
    v64 = v133;
    goto LABEL_69;
  }

  v44 = v139;
  v48 = v133;
  if ((v133 & 0x8000000000000000) == 0)
  {
    LODWORD(v138) = 0;
    v69 = v133;
    v43 = v135;
    if (v129 > v133)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  LODWORD(v138) = 0;
  v43 = v135;
LABEL_42:
  if (qword_1019F22B8 != -1)
  {
    swift_once();
  }

  v79 = static OS_os_log.boardItemLifecycle;
  sub_1005B981C(&qword_1019F54E0);
  v80 = swift_initStackObject();
  *(v80 + 16) = xmmword_10146BDE0;
  *(v80 + 56) = &type metadata for Int;
  *(v80 + 64) = &protocol witness table for Int;
  *(v80 + 32) = v44;
  *(v80 + 96) = &type metadata for Int;
  *(v80 + 104) = &protocol witness table for Int;
  *(v80 + 72) = v48;
  v81 = static os_log_type_t.error.getter();
  sub_100005404(v79, &_mh_execute_header, v81, "Coherence list divergence. Trying to reorder a child to an index that is out of bounds of the current known child items list. From %{public}d to %{public}d. Setting to 0.", 170, 2, v80);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  if (v129 > v48)
  {
    v69 = 0;
    goto LABEL_51;
  }

LABEL_48:
  if (qword_1019F22B8 != -1)
  {
    swift_once();
  }

  v82 = static OS_os_log.boardItemLifecycle;
  sub_1005B981C(&qword_1019F54E0);
  v83 = swift_initStackObject();
  *(v83 + 16) = xmmword_10146BDE0;
  *(v83 + 56) = &type metadata for Int;
  *(v83 + 64) = &protocol witness table for Int;
  *(v83 + 32) = v44;
  *(v83 + 96) = &type metadata for Int;
  *(v83 + 104) = &protocol witness table for Int;
  *(v83 + 72) = v48;
  v84 = static os_log_type_t.error.getter();
  sub_100005404(v82, &_mh_execute_header, v84, "Coherence list divergence. Trying to reorder a child to an index that is out of bounds of the current known child items list. From %{public}d to %{public}d. Setting to max count.", 178, 2, v83);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v69 = v129 - 1;
  if (__OFSUB__(v129, 1))
  {
    __break(1u);
    goto LABEL_96;
  }

LABEL_51:
  v85 = v128;
  v86 = *(v70 + v128);
  if (!v86)
  {
    sub_10096C7D4();
    v86 = *(v70 + v85);
  }

  if (v86)
  {
    v64 = v86;
  }

  else
  {
    v64 = _swiftEmptyArrayStorage;
  }

  v139 = v44;
  if ((v64 & 0xC000000000000001) != 0)
  {

    v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_60:
    v89 = v88;
    v141 = v88;

    v90 = *(*swift_dynamicCastClassUnconditional() + 840);

    v92 = v132;
    v90(v91);

    __chkstk_darwin(v93);
    v127[-2] = v89;
    v64 = CROrderedSet.index(where:)();
    v95 = v94;
    sub_10097AE44(v92, type metadata accessor for CRLContainerItemCRDTData);
    if ((v95 & 1) == 0)
    {
      v47 = v130;
LABEL_64:
      if (qword_1019F22B8 == -1)
      {
        goto LABEL_65;
      }

      goto LABEL_92;
    }

    if (qword_1019F22B8 == -1)
    {
LABEL_62:
      v134 = static OS_os_log.boardItemLifecycle;
      sub_1005B981C(&qword_1019F54E0);
      v96 = swift_initStackObject();
      *(v96 + 16) = xmmword_10146D2A0;
      *(v96 + 56) = &type metadata for Int;
      *(v96 + 64) = &protocol witness table for Int;
      *(v96 + 32) = v139;
      v132 = (v96 + 32);
      *(v96 + 96) = &type metadata for Int;
      *(v96 + 104) = &protocol witness table for Int;
      *(v96 + 72) = v133;
      (*((swift_isaMask & *v143) + 0x88))();
      v97 = UUID.uuidString.getter();
      v99 = v98;
      v100 = v137;
      v101 = v144;
      v137(v24, v144);
      *(v96 + 136) = &type metadata for String;
      v102 = v24;
      v103 = sub_1000053B0();
      *(v96 + 144) = v103;
      *(v96 + 112) = v97;
      *(v96 + 120) = v99;
      v104 = v140;
      (*((swift_isaMask & *v141) + 0x88))();
      v105 = UUID.uuidString.getter();
      v107 = v106;
      v100(v104, v101);
      *(v96 + 176) = &type metadata for String;
      *(v96 + 184) = v103;
      v24 = v102;
      *(v96 + 152) = v105;
      *(v96 + 160) = v107;
      v108 = static os_log_type_t.default.getter();
      sub_100005404(v134, &_mh_execute_header, v108, "Coherence list divergence. Trying to reorder a child to an index that contains a child that is not present in the Coherence list. Sending to back. From %{public}d to %{public}d for child item %{public}@ where the missing child item is %{public}@", 245, 2, v96);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v47 = v130;
      v70 = v131;
      v64 = v130;
      goto LABEL_64;
    }

LABEL_96:
    swift_once();
    goto LABEL_62;
  }

  if ((v69 & 0x8000000000000000) == 0)
  {
    if (v69 < *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v87 = *(v64 + 8 * v69 + 32);

      v88 = v87;
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_94;
  }

  __break(1u);
LABEL_92:
  swift_once();
LABEL_65:
  v109 = static OS_os_log.boardItemLifecycle;
  sub_1005B981C(&qword_1019F54E0);
  v110 = swift_initStackObject();
  *(v110 + 16) = xmmword_10146BDE0;
  *(v110 + 56) = &type metadata for Int;
  *(v110 + 64) = &protocol witness table for Int;
  *(v110 + 32) = v133;
  *(v110 + 96) = &type metadata for Int;
  *(v110 + 104) = &protocol witness table for Int;
  *(v110 + 72) = v64;
  v111 = static os_log_type_t.default.getter();
  sub_100005404(v109, &_mh_execute_header, v111, "Coherence list divergence. Translated initial toIndex %{public}d into %{public}d", 80, 2, v110);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  result = swift_arrayDestroy();
  if (v138)
  {
    v112 = v139;
    v113 = 1;
    if ((v64 & 0x8000000000000000) == 0)
    {
      if (v47 >= v64)
      {
        return v64;
      }

      goto LABEL_82;
    }

LABEL_76:
    if (qword_1019F22B8 != -1)
    {
      swift_once();
    }

    v115 = static OS_os_log.boardItemLifecycle;
    sub_1005B981C(&qword_1019F54E0);
    v116 = swift_initStackObject();
    *(v116 + 16) = xmmword_10146BDE0;
    *(v116 + 56) = &type metadata for Int;
    *(v116 + 64) = &protocol witness table for Int;
    *(v116 + 32) = v64;
    (*(**(v70 + v135) + 264))();
    v117 = UUID.uuidString.getter();
    v119 = v118;
    v137(v24, v144);
    *(v116 + 96) = &type metadata for String;
    *(v116 + 104) = sub_1000053B0();
    *(v116 + 72) = v117;
    *(v116 + 80) = v119;
    v120 = static os_log_type_t.error.getter();
    sub_100005404(v115, &_mh_execute_header, v120, "Avoid crashing due to out of bounds error: %{public}d < 0 for %{public}@", 72, 2, v116);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    if ((v130 & 0x8000000000000000) == 0)
    {
      v64 = 0;
      if (v113)
      {
        return v64;
      }

      return v112;
    }

    v64 = 0;
    goto LABEL_82;
  }

LABEL_69:
  v112 = v139;
  if (v64 < v139)
  {
    if ((v64 & 0x8000000000000000) == 0)
    {
LABEL_71:
      if (v47 >= v64)
      {
        return v112;
      }

      v113 = 0;
LABEL_82:
      v139 = v112;
      if (qword_1019F22B8 != -1)
      {
        swift_once();
      }

      v121 = static OS_os_log.boardItemLifecycle;
      sub_1005B981C(&qword_1019F54E0);
      v122 = swift_initStackObject();
      *(v122 + 16) = xmmword_10146C4D0;
      *(v122 + 56) = &type metadata for Int;
      *(v122 + 64) = &protocol witness table for Int;
      *(v122 + 32) = v64;
      *(v122 + 96) = &type metadata for Int;
      *(v122 + 104) = &protocol witness table for Int;
      v112 = v130;
      *(v122 + 72) = v130;
      (*(**(v70 + v135) + 264))();
      v123 = UUID.uuidString.getter();
      v125 = v124;
      v137(v24, v144);
      *(v122 + 136) = &type metadata for String;
      *(v122 + 144) = sub_1000053B0();
      *(v122 + 112) = v123;
      *(v122 + 120) = v125;
      v126 = static os_log_type_t.error.getter();
      sub_100005404(v121, &_mh_execute_header, v126, "Avoid crashing due to out of bounds error: %{public}d > %{public}d for %{public}@", 81, 2, v122);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      if ((v113 & 1) == 0)
      {
        return v139;
      }

      return v112;
    }

    goto LABEL_75;
  }

  if (!__OFADD__(v64++, 1))
  {
    if ((v64 & 0x8000000000000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_75:
    v113 = 0;
    goto LABEL_76;
  }

  __break(1u);
  return result;
}

void sub_100971EFC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1009738F0(a1);
  sub_1012E0400(v2, &off_10188FE10);
  v6 = v3;
  if (v3)
  {
  }

  else
  {
    v48 = v2;
    v52 = a2;
    v7 = v5 + 64;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;

    v49 = v5;
    v50 = v5 + 64;
    v47 = v11;
    while (v10)
    {
      if (!*(v5 + 16))
      {
        goto LABEL_79;
      }

LABEL_8:
      v12 = sub_1007C7EC0(*(*(v5 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v10))))));
      if ((v13 & 1) == 0)
      {
        goto LABEL_80;
      }

      v14 = *(*(v5 + 56) + 8 * v12);
      if (v14 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v15)
      {
        v16 = 0;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v17 = *(v14 + 8 * v16 + 32);
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
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
              goto LABEL_85;
            }
          }

          v19 = v17;
          sub_1012E0400(v19, &off_10188FE10);

          ++v16;
        }

        while (v18 != v15);
      }

      v10 &= v10 - 1;

      v5 = v49;
      v7 = v50;
      v11 = v47;
    }

    while (1)
    {
      v20 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_76;
      }

      if (v20 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v20);
      ++v6;
      if (v10)
      {
        v6 = v20;
        if (!*(v5 + 16))
        {
          goto LABEL_79;
        }

        goto LABEL_8;
      }
    }

    sub_10096D57C(v5);
    v21 = 1 << *(v5 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v5 + 64);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    while (v23)
    {
      if (!*(v5 + 16))
      {
        goto LABEL_81;
      }

LABEL_33:
      v26 = sub_1007C7EC0(*(*(v5 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v23))))));
      if ((v27 & 1) == 0)
      {
        goto LABEL_82;
      }

      v28 = *(*(v5 + 56) + 8 * v26);
      if (v28 >> 62)
      {
        v29 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 &= v23 - 1;
      if (v29)
      {
        if (v29 < 1)
        {
          goto LABEL_83;
        }

        for (i = 0; i != v29; ++i)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v31 = *(v28 + 8 * i + 32);
          }

          v32 = v31;
          sub_1010F8AD4(v31, 2, v52);
        }

        v7 = v50;
      }
    }

    while (1)
    {
      v33 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_77;
      }

      if (v33 >= v24)
      {
        break;
      }

      v23 = *(v7 + 8 * v33);
      ++v25;
      if (v23)
      {
        v25 = v33;
        if (!*(v5 + 16))
        {
          goto LABEL_81;
        }

        goto LABEL_33;
      }
    }

    sub_1012CF6CC(v48, &off_10188FE10, 2);
    v34 = 1 << *(v5 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v5 + 64);
    v37 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable;
    v38 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate;
    v51 = (v34 + 63) >> 6;

    v39 = 0;
    while (v36)
    {
LABEL_60:
      if (!*(v5 + 16))
      {
        goto LABEL_84;
      }

      v41 = sub_1007C7EC0(*(*(v5 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v36))))));
      if ((v42 & 1) == 0)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        return;
      }

      v43 = *(*(v5 + 56) + 8 * v41);
      if (v43 >> 62)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 &= v36 - 1;
      if (v44)
      {
        if (v44 < 1)
        {
          goto LABEL_86;
        }

        v45 = 0;
        v46 = v52;
        do
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            swift_unknownObjectRelease();
            v46 = v52;
          }

          if (*(v46 + v37) == 1)
          {
            *(v46 + v38) = 1;
          }

          ++v45;
        }

        while (v44 != v45);

        v7 = v50;
      }
    }

    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_78;
      }

      if (v40 >= v51)
      {
        break;
      }

      v36 = *(v7 + 8 * v40);
      ++v39;
      if (v36)
      {
        v39 = v40;
        goto LABEL_60;
      }
    }
  }
}

uint64_t sub_100972450(uint64_t a1)
{
  v3 = v1;
  v72 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v69 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v57 - v8;
  v9 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v9 - 8);
  v66 = &v57 - v10;
  v11 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&unk_101A28650);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v57 - v16;
  result = sub_1011255D4(v18);
  if ((result & 1) == 0)
  {
    return result;
  }

  v67 = v4;
  v68 = v5;
  v64 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v65 = type metadata accessor for CRLContainerItemData(0);
  v20 = *(*swift_dynamicCastClassUnconditional() + 840);

  v20(v21);

  v59 = v15;
  v22 = *(v15 + 16);
  v61 = v14;
  v22(v17, v13, v14);
  v23 = sub_10097AE44(v13, type metadata accessor for CRLContainerItemCRDTData);
  __chkstk_darwin(v23);
  v58 = v17;
  *(&v57 - 2) = v17;
  v24 = v72;

  v25 = sub_1009A3C8C(sub_10097AD34, (&v57 - 4), v24);
  v26 = *(v25 + 16);
  if (!v26)
  {

LABEL_7:
    v29 = v67;
    v34 = v68;
    goto LABEL_8;
  }

  if (v26 != 1)
  {
    v35 = sub_100E93A84(v25);

    v36 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v36);
    *(&v57 - 2) = v35;
    v38 = *(*v37 + 856);

    v39 = v38(v71);
    CROrderedSet.removeAll(where:)();

    v39(v71, 0);

    goto LABEL_7;
  }

  v27 = v25;
  v64 = *&v3[v64];
  v28 = swift_dynamicCastClassUnconditional();
  v29 = v67;
  v30 = v68;
  v31 = v70;
  (*(v68 + 16))(v70, v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v67);

  v32 = (*(*v28 + 856))(v71);
  v33 = v66;
  CROrderedSet.remove(_:)();
  sub_10000CAAC(v33, &qword_1019F6990);
  v32(v71, 0);
  v34 = v30;

  (*(v30 + 8))(v31, v29);
LABEL_8:
  v60 = v2;
  v40 = *(v24 + 16);
  v41 = v69;
  if (v40)
  {
    v42 = OBJC_IVAR____TtC8Freeform16CRLContainerItem_items;
    v64 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
    v65 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v44 = *(v34 + 16);
    v43 = v34 + 16;
    v70 = v44;
    v45 = v24 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v72 = *(v43 + 56);
    v46 = (v43 - 8);
    v62 = (v43 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs;
    v66 = v3;
    v68 = v43;
    (v44)(v69, v45, v29);
    while (1)
    {
      v47 = *&v3[v42];
      if (!*(v47 + 16))
      {
        goto LABEL_11;
      }

      v48 = sub_10003E994(v41);
      if ((v49 & 1) == 0)
      {
        break;
      }

      v50 = *(*(v47 + 56) + 8 * v48);

      [v3 _setParentItemReferenceWithItem:v50 parent:0];
      v51 = *&v3[v42];

      v52 = sub_10003E994(v41);
      if (v53)
      {
        v54 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71[0] = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100AA4030();
          v51 = v71[0];
        }

        v56 = *v46;
        v29 = v67;
        (*v46)(*(v51 + 48) + v54 * v72, v67);

        sub_100BDBB9C(v54, v51);
      }

      else
      {

        v56 = *v46;
        v29 = v67;
      }

      v41 = v69;
      v56(v69, v29);
      v3 = v66;
      *&v66[v65] = 0;

      *&v3[v64] = 0;

      *&v3[v63] = 0;

      *&v3[v42] = v51;

LABEL_12:
      v45 += v72;
      if (!--v40)
      {
        return (*(v59 + 8))(v58, v61);
      }

      (v70)(v41, v45, v29);
    }

LABEL_11:
    (*v46)(v41, v29);
    goto LABEL_12;
  }

  return (*(v59 + 8))(v58, v61);
}

void sub_100972BE4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Freeform16CRLContainerItem_items;
  v9 = *&v1[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items];
  if (*(v9 + 16))
  {

    v10 = sub_10003E994(a1);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      [v2 _setParentItemReferenceWithItem:v12 parent:0];
      (*(v5 + 16))(v7, a1, v4);
      v15 = *&v2[v8];

      sub_100BC200C(0, v7);

      v13 = v15;
      *&v2[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;

      *&v2[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;

      *&v2[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;

      *&v2[v8] = v13;
    }

    else
    {
    }
  }
}

void sub_100972DB0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || (sub_1012E0400(v3, &off_10188FE10), !v4))
  {
    if (a1 >> 62)
    {
      goto LABEL_16;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v3; v7; i = v3)
    {
      v8 = 0;
      v9 = a1 & 0xC000000000000001;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v9)
        {
          v3 = a1;
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v10 + 16))
          {
            goto LABEL_15;
          }

          v3 = a1;
          v11 = *(a1 + 8 * v8 + 32);
        }

        a1 = v11;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v15 = v11;
        sub_100975248(&v15, i, a2, a3);

        if (v4)
        {
          return;
        }

        ++v8;
        a1 = v3;
        if (v12 == v7)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_17:
    if (a2)
    {
      sub_1012CF6CC(i, &off_10188FE10, 2);
    }
  }
}

uint64_t sub_100972F14(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v58 = a1;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v2 - 8);
  v65 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v55 - v7;
  __chkstk_darwin(v8);
  v62 = &v55 - v9;
  __chkstk_darwin(v10);
  v57 = &v55 - v11;
  __chkstk_darwin(v12);
  v71 = &v55 - v13;
  v14 = type metadata accessor for CRLContainerItemCRDTData(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v64 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v75 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v75);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v55 - v23;
  __chkstk_darwin(v25);
  v27 = &v55 - v26;
  v63 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  type metadata accessor for CRLContainerItemData(0);
  v28 = swift_dynamicCastClassUnconditional();
  v29 = *(*v28 + 736);
  swift_beginAccess();
  sub_10000BE14(v28 + v29, v24, &unk_101A226A0);
  sub_10001A2F8(&qword_101A09E00, &unk_101A226A0);
  CRType.copy(renamingReferences:)();
  sub_10000CAAC(v24, &unk_101A226A0);
  *&v19[*(v15 + 28)] = _swiftEmptyDictionarySingleton;
  v30 = type metadata accessor for UUID();
  sub_10097AF90(&qword_1019FB870, &type metadata accessor for UUID);
  v56 = v30;
  CROrderedSet.init()();
  v68 = v27;
  sub_10000BE14(v27, v24, &unk_101A226A0);
  v69 = v19;
  v31 = v19;
  v32 = v64;
  sub_10097ADDC(v31, v64, type metadata accessor for CRLContainerItemCRDTData);
  v33 = swift_dynamicCastClassUnconditional();
  v34 = *(v33 + 40);
  v73[0] = *(v33 + 24);
  v73[1] = v34;
  v74 = *(v33 + 56);
  v63 = *(swift_dynamicCastClassUnconditional() + 16);
  v35 = swift_allocObject();
  sub_10097ADDC(v32, v35 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000BE14(v24, v21, &unk_101A226A0);
  sub_10000BE14(v21, v35 + *(*v35 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v21, &unk_101A226A0);
  v36 = v71;
  sub_10097AE44(v32, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v24, &unk_101A226A0);
  v37 = sub_100747AF0(v73, v63);
  v38 = v37 + *(*v37 + 736);
  swift_beginAccess();
  sub_10000BE14(v38, v24, &unk_101A226A0);

  v39 = sub_1005B981C(&qword_101A01F08);
  v40 = v65;
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v24, &unk_101A226A0);
  sub_10000BE14(v40, v36, &qword_1019F6990);
  sub_10097AE44(v40, type metadata accessor for CRLBoardItemParentAffinity);
  v41 = v37;
  v42 = v67;
  (*(*v37 + 704))(v66);
  if (v42)
  {

    sub_10000CAAC(v36, &qword_1019F6990);
    sub_10097AE44(v69, type metadata accessor for CRLContainerItemCRDTData);
    sub_10000CAAC(v68, &unk_101A226A0);
  }

  else
  {
    v66 = v38;
    v67 = v39;
    v43 = v62;
    sub_10000BE14(v58, v62, &qword_1019F6990);
    v44 = v56;
    v45 = *(v56 - 8);
    v46 = *(v45 + 48);
    if (v46(v43, 1, v56) == 1)
    {
      v47 = v57;
      sub_10000BE14(v71, v57, &qword_1019F6990);
      v48 = v46(v62, 1, v44);
      v49 = ObjectType;
      if (v48 != 1)
      {
        sub_10000CAAC(v62, &qword_1019F6990);
      }
    }

    else
    {
      v47 = v57;
      (*(v45 + 32))(v57, v62, v44);
      (*(v45 + 56))(v47, 0, 1, v44);
      v49 = ObjectType;
    }

    v50 = v61;
    sub_10000BE14(v47, v61, &qword_1019F6990);
    swift_beginAccess();
    v51 = v59;
    sub_10000BE14(v50, v59, &qword_1019F6990);
    v52 = CRRegister.wrappedValue.modify();
    sub_10002C638(v51, v53, &qword_1019F6990);
    v52(v72, 0);
    sub_10000CAAC(v50, &qword_1019F6990);
    swift_endAccess();

    sub_10000CAAC(v47, &qword_1019F6990);
    v41 = (*(v49 + 1416))(*(v70 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store), v37);
    sub_10000CAAC(v71, &qword_1019F6990);
    sub_10097AE44(v69, type metadata accessor for CRLContainerItemCRDTData);
    sub_10000CAAC(v68, &unk_101A226A0);
  }

  return v41;
}

uint64_t sub_1009738F0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (!v7)
  {
    do
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
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
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      if (v10 >= v8)
      {

        return v3;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
    }

    while (!v7);
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v9;
LABEL_8:

    if (sub_100979EA4(v11, v1))
    {
      break;
    }

    v7 &= v7 - 1;

    v9 = v10;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v13 = sub_100BD4E94(_swiftEmptyArrayStorage);
  v14 = 1 << *(v3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v3 + 64);
  v17 = (v14 + 63) >> 6;

  v104 = 0;
  v18 = 0;
LABEL_16:
  if (v16)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_84;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_80;
    }

    if (v24 >= v17)
    {
      break;
    }

    v16 = *(v4 + 8 * v24);
    ++v18;
    if (v16)
    {
      v18 = v24;
      if (!*(v3 + 16))
      {
        goto LABEL_84;
      }

LABEL_18:
      v105 = *(*(v3 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v16)))));
      v19 = sub_1007C7EC0(v105);
      if ((v20 & 1) == 0)
      {
        goto LABEL_85;
      }

      v21 = *(*(v3 + 56) + 8 * v19);
      if (v21 >> 62)
      {
        v88 = v21;
        v89 = _CocoaArrayWrapper.endIndex.getter();
        v21 = v88;
        v22 = v89;
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 &= v16 - 1;
      if (v22)
      {
        v90 = v16;
        v101 = *((swift_isaMask & *v2) + 0x600);
        v102 = v21 & 0xC000000000000001;
        v91 = v21 + 32;
        v92 = v21 & 0xFFFFFFFFFFFFFF8;

        v23 = 0;
        v93 = v2;
        v94 = v3;
        v99 = v22;
        v100 = v17;
        while (1)
        {
          if (v102)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= *(v92 + 16))
            {
              goto LABEL_88;
            }

            v29 = *(v91 + 8 * v23);
          }

          v103 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_86;
          }

          v30 = v29;
          if ((v101() & 1) == 0)
          {
            v97 = v13;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C6B0;
            v96 = v30;
            swift_getObjectType();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v43 = NSStringFromClass(ObjCClassFromMetadata);
            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v45;

            *(inited + 56) = &type metadata for String;
            v47 = sub_1000053B0();
            *(inited + 32) = v44;
            v107 = inited + 32;
            *(inited + 64) = v47;
            *(inited + 40) = v46;
            v95 = objc_opt_self();
            v48 = [v95 _atomicIncrementAssertCount];
            v109 = [objc_allocWithZone(NSString) init];
            v98 = inited;
            sub_100604538(inited, &v109);
            StaticString.description.getter();
            v49 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v50 = String._bridgeToObjectiveC()();

            v51 = [v50 lastPathComponent];

            v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v54 = v53;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v55 = static OS_os_log.crlAssert;
            v56 = swift_initStackObject();
            *(v56 + 16) = xmmword_10146CA70;
            *(v56 + 56) = &type metadata for Int32;
            *(v56 + 64) = &protocol witness table for Int32;
            *(v56 + 32) = v48;
            v57 = sub_1005CF000();
            *(v56 + 96) = v57;
            v58 = sub_10097AF90(&qword_1019F52E0, sub_1005CF000);
            *(v56 + 72) = v49;
            *(v56 + 136) = &type metadata for String;
            *(v56 + 144) = v47;
            *(v56 + 104) = v58;
            *(v56 + 112) = v52;
            *(v56 + 120) = v54;
            *(v56 + 176) = &type metadata for UInt;
            *(v56 + 152) = 762;
            v59 = v109;
            *(v56 + 216) = v57;
            *(v56 + 224) = v58;
            *(v56 + 184) = &protocol witness table for UInt;
            *(v56 + 192) = v59;
            v60 = v49;
            v61 = v59;
            v62 = static os_log_type_t.error.getter();
            sub_100005404(v55, &_mh_execute_header, v62, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v56);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v63 = static os_log_type_t.error.getter();
            v64 = v98;
            sub_100005404(v55, &_mh_execute_header, v63, "Item of type %@ is not permitted on the surface", 47, 2, v98);

            type metadata accessor for __VaListBuilder();
            v65 = swift_allocObject();
            v65[2] = 8;
            v65[3] = 0;
            v66 = v65 + 3;
            v65[4] = 0;
            v65[5] = 0;
            v108 = v65;
            v106 = *(v98 + 16);
            if (!v106)
            {
LABEL_28:
              v25 = __VaListBuilder.va_list()();
              StaticString.description.getter();
              v26 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v27 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v28 = String._bridgeToObjectiveC()();

              [v95 handleFailureInFunction:v26 file:v27 lineNumber:762 isFatal:0 format:v28 args:v25];

              swift_setDeallocating();
              swift_arrayDestroy();

              v2 = v93;
              v3 = v94;
              v13 = v97;
              goto LABEL_29;
            }

            v67 = 0;
            while (2)
            {
              v68 = v64;
              sub_100020E58((v107 + 40 * v67), *(v107 + 40 * v67 + 24));
              v69 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
              v70 = *v66;
              v71 = *(v69 + 16);
              v37 = __OFADD__(*v66, v71);
              v72 = *v66 + v71;
              if (v37)
              {
                goto LABEL_81;
              }

              v73 = v69;
              v74 = v108;
              v75 = v108[4];
              if (v75 >= v72)
              {
LABEL_59:
                v77 = v74[5];
              }

              else
              {
                if (v75 + 0x4000000000000000 < 0)
                {
                  goto LABEL_82;
                }

                v76 = v108[5];
                if (2 * v75 > v72)
                {
                  v72 = 2 * v75;
                }

                v108[4] = v72;
                if ((v72 - 0x1000000000000000) >> 61 != 7)
                {
                  goto LABEL_83;
                }

                v77 = swift_slowAlloc();
                v108[5] = v77;
                if (v76)
                {
                  if (v77 != v76 || v77 >= &v76[8 * v70])
                  {
                    memmove(v77, v76, 8 * v70);
                  }

                  __VaListBuilder.deallocStorage(wordCount:storage:)();
                  v74 = v108;
                  goto LABEL_59;
                }
              }

              if (!v77)
              {
                goto LABEL_90;
              }

              v64 = v68;
              v79 = *(v73 + 16);
              if (v79)
              {
                v80 = (v73 + 32);
                v81 = *v66;
                do
                {
                  v82 = *v80++;
                  *&v77[8 * v81] = v82;
                  v81 = *v66 + 1;
                  if (__OFADD__(*v66, 1))
                  {
                    goto LABEL_79;
                  }

                  *v66 = v81;
                }

                while (--v79);
              }

              if (++v67 == v106)
              {
                goto LABEL_28;
              }

              continue;
            }
          }

          sub_1000C1014(v104);
          v31 = v13;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v31;
          v33 = sub_1007C7EC0(v105);
          v35 = v31[2];
          v36 = (v34 & 1) == 0;
          v37 = __OFADD__(v35, v36);
          v38 = v35 + v36;
          if (v37)
          {
            goto LABEL_87;
          }

          v39 = v34;
          if (v31[3] >= v38)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v87 = v33;
              sub_100AA46EC();
              v33 = v87;
              v13 = v109;
              if (v39)
              {
                goto LABEL_70;
              }

              goto LABEL_68;
            }
          }

          else
          {
            sub_100A89AD4(v38, isUniquelyReferenced_nonNull_native);
            v33 = sub_1007C7EC0(v105);
            if ((v39 & 1) != (v40 & 1))
            {
              goto LABEL_91;
            }
          }

          v13 = v109;
          if (v39)
          {
            goto LABEL_70;
          }

LABEL_68:
          v13[(v33 >> 6) + 8] |= 1 << v33;
          *(v13[6] + 8 * v33) = v105;
          *(v13[7] + 8 * v33) = _swiftEmptyArrayStorage;
          v83 = v13[2];
          v37 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v37)
          {
            goto LABEL_89;
          }

          v13[2] = v84;
LABEL_70:
          v85 = (v13[7] + 8 * v33);
          v86 = v30;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v104 = sub_100975C10;
LABEL_29:
          v17 = v100;
          v23 = v103;
          if (v103 == v99)
          {

            v16 = v90;
            goto LABEL_16;
          }
        }
      }

      goto LABEL_16;
    }
  }

  sub_1000C1014(v104);
  return v13;
}

Swift::Int sub_100974300(void **a1)
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10113DE5C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100977140(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1009743A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10113DEA8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
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
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100977F58(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Class sub_10097471C(char *a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v5 = *&a1[*a3];
  v6 = a1;
  if (!v5)
  {
    sub_10096C7D4();
  }

  a4(0);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

id sub_1009749CC(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a2;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for CRLBoardItemBase(0);
  return objc_msgSendSuper2(&v7, "init");
}

BOOL sub_100974A8C(void **a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & **a1) + 0x88))(v4);
  sub_1005B981C(&unk_101A28650);
  LOBYTE(a1) = CROrderedSet.contains(_:)();
  (*(v3 + 8))(v6, v2);
  return (a1 & 1) == 0;
}

uint64_t sub_100974E5C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a2) + 0x88))(v5);
  LOBYTE(a2) = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return a2 & 1;
}

void sub_100975248(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_1005B981C(&qword_1019F6990);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = *a1;
  v12 = *(*(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  (*(**(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v8);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  v14 = *((swift_isaMask & *v11) + 0x288);
  v15 = v12;
  v16 = v28;
  v17 = v14(v12, v10, a3, v27);
  if (v16)
  {
    sub_10000CAAC(v10, &qword_1019F6990);

    v30 = v16;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    if (swift_dynamicCast() && v29 == 14)
    {
    }

    else
    {
    }
  }

  else
  {
    v18 = v17;
    sub_10000CAAC(v10, &qword_1019F6990);

    if (a3)
    {
      v19 = v18;
      sub_1012E0400(v19, &off_10188FE10);
    }

    sub_1005B981C(&unk_1019F4D60);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101465920;
    *(v20 + 32) = v18;
    v21 = v18;
    v22 = NSNotFound.getter();
    sub_1005B981C(&unk_101A09DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 32) = v22;
    v24 = inited + 32;
    *(inited + 40) = v20;
    v25 = sub_100BD4E94(inited);
    swift_setDeallocating();
    sub_10000CAAC(v24, &qword_101A039D0);
    sub_10096D57C(v25);
  }
}

id sub_10097581C()
{
  v1 = v0;
  type metadata accessor for CRLContainerItemData(0);
  v2 = *(*swift_dynamicCastClassUnconditional() + 504);

  v3 = v2(0);

  v4 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v5 = objc_allocWithZone(type metadata accessor for CRLContainerItem(0));
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v4;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v3;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for CRLBoardItemBase(0);
  v6 = v4;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_100975C20()
{
}

uint64_t sub_100975D90(uint64_t a1, uint64_t a2, void *a3)
{
  v92 = a1;
  v86 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v86);
  v90 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v67 - v7;
  v8 = sub_1005B981C(&unk_101A09DC0);
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v83 = &v67 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v82 = &v67 - v14;
  v78 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v78);
  v87 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v88 = &v67 - v17;
  __chkstk_darwin(v18);
  v89 = &v67 - v19;
  v20 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v20 - 8);
  v73 = (&v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = &v67 - v23;
  v25 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v25 - 8);
  v70 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v67 - v28;
  v75 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v75);
  v74 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v76 = &v67 - v32;
  v34 = __chkstk_darwin(v33);
  v93 = &v67 - v35;
  if (a3)
  {
    v36 = a3;
  }

  else
  {
    v36 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  }

  v37 = *(v11 + 16);
  v71 = v11 + 16;
  v72 = v37;
  (v37)(v29, a2, v10, v34);
  v95 = v11;
  v38 = *(v11 + 56);
  v68 = v29;
  v38(v29, 0, 1, v10);
  v104 = 1;
  v39 = type metadata accessor for CRLTableAnchorHint();
  v40 = *(v39 - 8);
  v81 = a2;
  v69 = *(v40 + 56);
  v69(v24, 1, 1, v39);
  v80 = a3;
  v41 = v36;
  v79 = v41;
  sub_101271CCC(v41, v113);

  v94 = v10;
  v42 = v29;
  v43 = v70;
  sub_10000BE14(v42, v70, &qword_1019F6990);
  v44 = v73;
  sub_10000BE14(v24, v73, &unk_101A09DD0);
  v45 = v93;
  v38(v93, 1, 1, v10);
  v46 = v75;
  v47 = *(v75 + 28);
  v48 = v45 + *(v75 + 24);
  v69((v45 + v47), 1, 1, v39);
  *(v45 + *(v46 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v43, v45, &qword_1019F6990);
  sub_10000CAAC(v24, &unk_101A09DD0);
  sub_10000CAAC(v68, &qword_1019F6990);
  v49 = (v45 + *(v46 + 20));
  v50 = v113[1];
  *v49 = v113[0];
  v49[1] = v50;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 0u;
  *(v48 + 48) = 0u;
  *(v48 + 64) = v104;
  sub_10002C638(v44, v45 + v47, &unk_101A09DD0);
  v51 = v45;
  v52 = v76;
  sub_10097ADDC(v51, v76, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v105);
  v53 = v82;
  UUID.init()();
  v54 = v78;
  v70 = *(v78 + 52);
  v100 = v109;
  v101 = v110;
  v102 = v111;
  v103 = v112;
  v96 = v105;
  v97 = v106;
  v98 = v107;
  v99 = v108;
  v69 = sub_1005B981C(&unk_101A09DE0);
  sub_1007492B8();
  v55 = v89;
  CRRegister.init(wrappedValue:)();
  *(v55 + *(v54 + 56)) = _swiftEmptyDictionarySingleton;
  v72(v77, v53, v94);
  CRRegister.init(_:)();
  v73 = type metadata accessor for CRLBoardItemParentAffinity;
  sub_10097ADDC(v52, v74, type metadata accessor for CRLBoardItemParentAffinity);
  sub_10097AF90(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity);
  CRRegister.init(_:)();
  LOBYTE(v96) = 0;
  CRRegister.init(_:)();
  LOBYTE(v96) = 0;
  CRRegister.init(_:)();
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v100 = v109;
  v101 = v110;
  v102 = v111;
  v103 = v112;
  v96 = v105;
  v97 = v106;
  v98 = v107;
  v99 = v108;
  v56 = v83;
  CRRegister.init(_:)();
  v57 = *(v95 + 8);
  v95 += 8;
  v78 = v57;
  v57(v53, v94);
  sub_10097AE44(v52, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v84 + 40))(v55 + v70, v56, v85);
  v58 = v91;
  *&v91[*(v86 + 20)] = _swiftEmptyDictionarySingleton;
  sub_10097AF90(&qword_1019FB870, &type metadata accessor for UUID);
  CROrderedSet.init()();
  v59 = v88;
  sub_10000BE14(v55, v88, &unk_101A226A0);
  v60 = v90;
  sub_10097ADDC(v58, v90, type metadata accessor for CRLContainerItemCRDTData);
  *&v96 = 0x1000000000000;
  *(&v96 + 1) = 0x2000400000000;
  v97 = 0x1000000000000uLL;
  LOBYTE(v98) = 1;
  type metadata accessor for CRLContainerItemData(0);
  v61 = swift_allocObject();
  sub_10097ADDC(v60, v61 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  v62 = v87;
  sub_10000BE14(v59, v87, &unk_101A226A0);
  sub_10000BE14(v62, v61 + *(*v61 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v62, &unk_101A226A0);
  sub_10097AE44(v60, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v59, &unk_101A226A0);
  v63 = sub_100747AF0(&v96, 4);
  ObjectType = swift_getObjectType();
  v65 = (*(ObjectType + 1416))(v92, v63);

  (v78)(v81, v94);
  sub_10097AE44(v58, type metadata accessor for CRLContainerItemCRDTData);
  sub_10097AE44(v93, v73);
  sub_10000CAAC(v55, &unk_101A226A0);
  swift_deallocPartialClassInstance();
  return v65;
}

uint64_t sub_1009769B0()
{

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_100976A5C()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v3 = v1(v2);

  return v3;
}

void sub_100976B00()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v25 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v25);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_1005CF000();
  *(inited + 96) = v10;
  v11 = sub_10097AF90(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 873;
  v13 = v25;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "Root container items should never be duplicated!", 48, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Root container items should never be duplicated!");
  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:873 isFatal:1 format:v22 args:v19];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v23, v24);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100976F24(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a2;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for CRLBoardItemBase(0);
  return objc_msgSendSuper2(&v7, "init");
}

id sub_100977020(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_100977140(uint64_t *a1)
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
        type metadata accessor for UUID();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UUID() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100977530(v8, v9, a1, v4);
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
    return sub_10097726C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10097726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_10097AF90(&unk_101A09E30, &type metadata accessor for UUID);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100977530(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v119 - v15;
  result = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_10113DE48(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1009784A4(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10113DE48(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_10113DDBC(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_10097AF90(&unk_101A09E30, &type metadata accessor for UUID);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100B355CC(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_100B355CC((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1009784A4(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10113DE48(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_10113DDBC(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_10097AF90(&unk_101A09E30, &type metadata accessor for UUID);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_100977F58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10113DE48(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_100978A98((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_100B355CC(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_100B355CC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_100978A98((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_1009784A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for UUID();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_10097AF90(&unk_101A09E30, &type metadata accessor for UUID);
          LOBYTE(v35) = dispatch thunk of static Comparable.< infix(_:_:)();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_10097AF90(&unk_101A09E30, &type metadata accessor for UUID);
        LOBYTE(v22) = dispatch thunk of static Comparable.< infix(_:_:)();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_10063F77C(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_100978A98(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100978C8C(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v48);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = sub_1005B981C(&qword_101A09E58);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  type metadata accessor for CRLContainerItem(0);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v50 = a1;
    swift_unknownObjectRetain();
    v49 = sub_1011F0C64(v13, a2);
    type metadata accessor for CRLContainerItemData(0);
    v14 = *(*swift_dynamicCastClassUnconditional() + 840);

    v14(v15);

    v16 = *(*swift_dynamicCastClassUnconditional() + 840);

    v16(v17);

    sub_10097AF90(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData);
    CRStruct_1.actionUndoingDifference(from:)();
    sub_10097AE44(v5, type metadata accessor for CRLContainerItemCRDTData);
    sub_10097AE44(v8, type metadata accessor for CRLContainerItemCRDTData);
    v18 = sub_1005B981C(&qword_101A09E60);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v11, 1, v18) == 1)
    {
      sub_10000CAAC(v11, &qword_101A09E58);
      memset(v51, 0, sizeof(v51));
      v52 = 1;
    }

    else
    {
      v52 = v18;
      v20 = sub_10002C58C(v51);
      (*(v19 + 32))(v20, v11, v18);
    }

    v21 = v49;
    swift_beginAccess();
    sub_100BC1DF4(v51, 1);
    swift_endAccess();
    swift_unknownObjectRelease();
    return v21;
  }

  else
  {
    v23 = objc_opt_self();
    v24 = [v23 _atomicIncrementAssertCount];
    v51[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v51);
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    v27 = [v26 lastPathComponent];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v24;
    v33 = sub_1005CF000();
    *(inited + 96) = v33;
    v34 = sub_10097AF90(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v34;
    *(inited + 72) = v25;
    *(inited + 136) = &type metadata for String;
    v35 = sub_1000053B0();
    *(inited + 112) = v28;
    *(inited + 120) = v30;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v35;
    *(inited + 152) = 645;
    v36 = v51[0];
    *(inited + 216) = v33;
    *(inited + 224) = v34;
    *(inited + 192) = v36;
    v37 = v25;
    v38 = v36;
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v40 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v40, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
    type metadata accessor for __VaListBuilder();
    v41 = swift_allocObject();
    v41[2] = 8;
    v41[3] = 0;
    v41[4] = 0;
    v41[5] = 0;
    v42 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    [v23 handleFailureInFunction:v43 file:v44 lineNumber:645 isFatal:1 format:v45 args:v42];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v46, v47);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_1009793D8(uint64_t a1)
{
  v67 = sub_1005B981C(&unk_101A2C9A0);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v62 - v2;
  v71 = sub_1005B981C(&unk_101A09E40);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v62 - v5;
  v68 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v68);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  v11 = sub_1005B981C(&qword_101A2C960);
  __chkstk_darwin(v11 - 8);
  v69 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  type metadata accessor for CRLContainerItem(0);
  if (swift_dynamicCastClass())
  {
    type metadata accessor for CRLContainerItemData(0);
    v16 = *(*swift_dynamicCastClassUnconditional() + 840);
    v72 = a1;
    swift_unknownObjectRetain();

    v16(v17);

    v18 = *(*swift_dynamicCastClassUnconditional() + 840);

    v18(v19);

    sub_10097AF90(&qword_101A09E50, type metadata accessor for CRLContainerItemCRDTData);
    CRType.observableDifference(from:)();
    sub_10097AE44(v7, type metadata accessor for CRLContainerItemCRDTData);
    sub_10097AE44(v10, type metadata accessor for CRLContainerItemCRDTData);
    v20 = v69;
    sub_10000BE14(v15, v69, &qword_101A2C960);
    if ((*(v70 + 48))(v20, 1, v71) == 1)
    {
      v21 = &qword_101A2C960;
    }

    else
    {
      v22 = v65;
      sub_10097AEC4(v20, v65);
      v20 = v64;
      sub_10000BE14(v22, v64, &unk_101A09E40);
      v23 = v66;
      v24 = v67;
      if ((*(v66 + 48))(v20, 1, v67) != 1)
      {
        v29 = v63;
        (*(v23 + 32))(v63, v20, v24);
        v25 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v31 = *(v25 + 2);
        v30 = *(v25 + 3);
        if (v31 >= v30 >> 1)
        {
          v25 = sub_100024CBC((v30 > 1), v31 + 1, 1, v25);
        }

        *(v25 + 2) = v31 + 1;
        v32 = &v25[16 * v31];
        *(v32 + 4) = 0x736D657469;
        *(v32 + 5) = 0xE500000000000000;
        v33 = *(CROrderedSet.ObservableDifference.moved.getter() + 16);

        if (v33)
        {
          v35 = *(v25 + 2);
          v34 = *(v25 + 3);
          if (v35 >= v34 >> 1)
          {
            v25 = sub_100024CBC((v34 > 1), v35 + 1, 1, v25);
          }

          (*(v23 + 8))(v29, v24);
          sub_10000CAAC(v22, &unk_101A09E40);
          *(v25 + 2) = v35 + 1;
          v36 = &v25[16 * v35];
          *(v36 + 4) = 0x6564724F6D657469;
          *(v36 + 5) = 0xE900000000000072;
        }

        else
        {
          (*(v23 + 8))(v29, v24);
          sub_10000CAAC(v22, &unk_101A09E40);
        }

        goto LABEL_7;
      }

      sub_10000CAAC(v22, &unk_101A09E40);
      v21 = &unk_101A2C9B0;
    }

    sub_10000CAAC(v20, v21);
    v25 = _swiftEmptyArrayStorage;
LABEL_7:
    if (*(v25 + 2))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = _swiftEmptyDictionarySingleton;
      sub_100A9B080(v25, 1, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
      v27 = v73;
      sub_10000CAAC(v15, &qword_101A2C960);
    }

    else
    {
      sub_10000CAAC(v15, &qword_101A2C960);

      swift_unknownObjectRelease();
      return _swiftEmptyDictionarySingleton;
    }

    return v27;
  }

  v37 = objc_opt_self();
  v38 = [v37 _atomicIncrementAssertCount];
  v73 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v73);
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
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v38;
  v47 = sub_1005CF000();
  *(inited + 96) = v47;
  v48 = sub_10097AF90(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v48;
  *(inited + 72) = v39;
  *(inited + 136) = &type metadata for String;
  v49 = sub_1000053B0();
  *(inited + 112) = v42;
  *(inited + 120) = v44;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v49;
  *(inited + 152) = 657;
  v50 = v73;
  *(inited + 216) = v47;
  *(inited + 224) = v48;
  *(inited + 192) = v50;
  v51 = v39;
  v52 = v50;
  v53 = static os_log_type_t.error.getter();
  sub_100005404(v45, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v54 = static os_log_type_t.error.getter();
  sub_100005404(v45, &_mh_execute_header, v54, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
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

  [v37 handleFailureInFunction:v57 file:v58 lineNumber:657 isFatal:1 format:v59 args:v56];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v60, v61);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL sub_100979EA4(unint64_t a1, void *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_14;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = (*((swift_isaMask & *a2) + 0x600))(v8);

    v6 = v7 + 1;
  }

  while ((v10 & 1) != 0);
  return v5 != v7;
}

void sub_100979FBC()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v25 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v25);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_1005CF000();
  *(inited + 96) = v10;
  v11 = sub_10097AF90(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 857;
  v13 = v25;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "Root container items should never asked to change their geometry!", 65, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Root container items should never asked to change their geometry!");
  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:857 isFatal:1 format:v22 args:v19];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v23, v24);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10097A374(unint64_t a1)
{
  v2 = v1;
  type metadata accessor for CRLSerializableObjectReader.PartialTreeOwner();
  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptyDictionarySingleton;
  strcpy((v4 + 24), "Partial Tree");
  *(v4 + 37) = 0;
  *(v4 + 38) = -5120;

  v6 = sub_100822918(v5, 1);

  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    do
    {
      v9 = 0;
      v24 = a1 & 0xFFFFFFFFFFFFFF8;
      v25 = a1 & 0xC000000000000001;
      v23 = a1;
      while (1)
      {
        if (v25)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v24 + 16))
          {
            goto LABEL_14;
          }

          v10 = *(a1 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        sub_1005B981C(&unk_1019F4D60);
        v27 = v2;
        v13 = v6;
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_101465920;
        *(v14 + 32) = v11;
        v26 = v11;
        v15 = NSNotFound.getter();
        sub_1005B981C(&unk_101A09DB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        *(inited + 32) = v15;
        v17 = inited + 32;
        *(inited + 40) = v14;
        v6 = v13;
        v18 = sub_100BD4E94(inited);
        swift_setDeallocating();
        sub_10000CAAC(v17, &qword_101A039D0);
        sub_100971EFC(v18, v13);
        v2 = v27;

        if (v27)
        {
        }

        ++v9;
        a1 = v23;
        if (v12 == v8)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v7 = _CocoaArrayWrapper.endIndex.getter();
      v8 = v7;
    }

    while (v7);
  }

LABEL_16:
  (*(*v6 + 720))(v7);

  if (v2)
  {
  }

  v20 = *(v6 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v22 = *(v20 + 48);
  swift_unknownObjectRetain();
  v22(ObjectType, v20);

  return swift_unknownObjectRelease();
}

uint64_t sub_10097A674(unint64_t a1, uint64_t a2)
{
  type metadata accessor for CRLSerializableObjectReader.PartialTreeOwner();
  v5 = swift_allocObject();
  *(v5 + 16) = _swiftEmptyDictionarySingleton;
  strcpy((v5 + 24), "Partial Tree");
  *(v5 + 37) = 0;
  *(v5 + 38) = -5120;

  v7 = sub_100822918(v6, 1);

  if (a1 >> 62)
  {
LABEL_22:
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    v27 = v8;
  }

  else
  {
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v26 = a1 & 0xC000000000000001;
  v24 = a1;
  while (v27 != v9)
  {
    if (v26)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v25 + 16))
      {
        goto LABEL_20;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1005B981C(&unk_1019F4D60);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101465920;
    *(v12 + 32) = v11;
    sub_1005B981C(&unk_101A09DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v14 = v7;
    *(inited + 32) = a2;
    v15 = inited + 32;
    *(inited + 40) = v12;
    v16 = sub_100BD4E94(inited);
    swift_setDeallocating();
    v17 = v11;
    v18 = v15;
    v7 = v14;
    sub_10000CAAC(v18, &qword_101A039D0);
    sub_100971EFC(v16, v14);

    if (v2)
    {
    }

    ++v9;
    v19 = __OFADD__(a2++, 1);
    a1 = v24;
    if (v19)
    {
      goto LABEL_21;
    }
  }

  (*(*v7 + 720))(v8);
  if (!v2)
  {

    v21 = *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
    ObjectType = swift_getObjectType();
    v23 = *(v21 + 48);
    swift_unknownObjectRetain();
    v23(ObjectType, v21);
    swift_unknownObjectRelease();
  }
}

void sub_10097A97C()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v25 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v25);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_1005CF000();
  *(inited + 96) = v10;
  v11 = sub_10097AF90(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 850;
  v13 = v25;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "Root container items should never asked to make a layout!", 57, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Root container items should never asked to make a layout!");
  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:850 isFatal:1 format:v22 args:v19];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v23, v24);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10097ADDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10097AE44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10097AEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A09E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10097AF90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10097AFF8(SEL *a1)
{
  result = sub_10068AFC0();
  if (!result)
  {
    return 1;
  }

  v3 = result;
  v4 = (result >> 62);
  if (result >> 62)
  {
    goto LABEL_36;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_37:
    v8 = 0;
LABEL_38:

    return v8;
  }

  while ((v3 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v7 = v6;
    v22 = objc_opt_self();
    result = [v22 *a1];
    if (v5 < 0)
    {
      goto LABEL_44;
    }

    v8 = result;
    if (v4)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 1)
      {
        goto LABEL_42;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_42;
      }
    }

    if (result < v5)
    {
      goto LABEL_43;
    }

    v21 = v7;
    if ((v3 & 0xC000000000000001) == 0)
    {

LABEL_22:
      v11 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
      v12 = 1;
      if (v5 != 1)
      {
        goto LABEL_28;
      }

LABEL_34:

      swift_unknownObjectRelease();
      goto LABEL_38;
    }

    if (v5 == 1)
    {
    }

    else
    {
      type metadata accessor for CRLShapeItem();

      v9 = 1;
      do
      {
        v10 = v9 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v9);
        v9 = v10;
      }

      while (v5 != v10);
    }

    if (!v4)
    {
      goto LABEL_22;
    }

    _CocoaArrayWrapper.subscript.getter();
    v11 = v13;
    v12 = v14;
    v5 = v15 >> 1;
    if (v14 == v15 >> 1)
    {
      goto LABEL_34;
    }

LABEL_28:
    while (v12 < v5)
    {
      v16 = [v22 *a1];
      if (v16)
      {
        v17 = v16;
        if (!v8)
        {

          goto LABEL_34;
        }

        sub_100006370(0, &qword_101A14D70);
        v18 = a1;
        v19 = v8;
        v4 = v17;
        v20 = static NSObject.== infix(_:_:)();

        a1 = v18;
        if ((v20 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v8)
      {
        goto LABEL_34;
      }

      if (v5 == ++v12)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_36:
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      goto LABEL_37;
    }
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_10097B2C0(uint64_t a1, char a2)
{
  v7 = [objc_opt_self() lineEndWithType:a1];
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A0C7E0))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  [v4 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    [v6 setLineEnd:v7 isLeftLineEnd:a2 & 1];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_10097B3F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A1CE20))
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
  if (!v4)
  {
    swift_unknownObjectRelease();
    return;
  }

  v5 = [v4 connectionLines];
  swift_unknownObjectRelease();
  sub_100006370(0, &qword_101A06118);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_32;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_33:

    return;
  }

  while ((v6 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
    v10 = v9;
    v11 = [v9 connectionType];
    if (v8 < 0)
    {
      goto LABEL_38;
    }

    v12 = v11;
    if (v7)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_36;
      }

      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_36;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_37;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {

      if (v8 != 1)
      {
        v14 = 1;
        do
        {
          v15 = v14 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v14);
          v14 = v15;
        }

        while (v8 != v15);
      }

      if (!v7)
      {
LABEL_23:
        v16 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
        v7 = 1;
        v17 = v8;
        if (v8 != 1)
        {
          goto LABEL_24;
        }

LABEL_30:

        swift_unknownObjectRelease();
        goto LABEL_33;
      }
    }

    else
    {

      if (!v7)
      {
        goto LABEL_23;
      }
    }

    _CocoaArrayWrapper.subscript.getter();
    v16 = v18;
    v7 = v19;
    v17 = v20 >> 1;
    if (v19 == v20 >> 1)
    {
      goto LABEL_30;
    }

LABEL_24:
    while (v7 < v17)
    {
      if ([*(v16 + 8 * v7) connectionType] == v12 && v17 != ++v7)
      {
        continue;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_32:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      goto LABEL_33;
    }
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v6 + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

id sub_10097B6B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterLineDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10097B710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1005B981C(&unk_1019F52D0);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10097B7B0, 0, 0);
}

uint64_t sub_10097B7B0()
{
  *(v0 + 56) = *sub_100020E58(*(v0 + 40), *(*(v0 + 40) + 24));
  *(v0 + 64) = type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10097B85C, v2, v1);
}

uint64_t sub_10097B85C()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];

  v5 = *(v2 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = v5;
  v0[10] = sub_1007B196C(v4, v3, 0, v1, v7);
  v0[11] = v8;

  sub_1006C3618(v1);

  return _swift_task_switch(sub_10097B9A8, 0, 0);
}

uint64_t sub_10097B9A8()
{
  sub_100020E58(*(v0 + 40), *(*(v0 + 40) + 24));
  *(v0 + 96) = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_10097BA64;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);

  return sub_1010B3FC4(v4, v2, v3, 0);
}

uint64_t sub_10097BA64()
{
  *(*v1 + 112) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10097BC60;
  }

  else
  {
    v4 = sub_10097BBEC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10097BBEC()
{

  v1 = v0[1];
  v2 = v0[10];
  v3 = v0[11];

  return v1(v2, v3);
}

uint64_t sub_10097BC60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10097BCDC()
{
  v0 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10061655C(v10, qword_101AD6E78);
  sub_1005EB3DC(v10, qword_101AD6E78);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10097BFC8()
{
  v0 = sub_1005B981C(&qword_1019F8B00);
  __chkstk_darwin(v0 - 8);
  v65 = v44 - v1;
  v2 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v2 - 8);
  v61 = v44 - v3;
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for LocalizedStringResource();
  v66 = *(v63 - 8);
  __chkstk_darwin(v63);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A09EE8);
  v16 = sub_1005B981C(&qword_101A09EF0);
  v17 = *(v16 - 8);
  v52 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v48 = v19;
  *(v19 + 16) = xmmword_101478A90;
  v57 = v16;
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  String.LocalizationValue.init(stringLiteral:)();
  v51 = v10;
  static Locale.current.getter();
  v53 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v5 + 104);
  v55 = v5 + 104;
  v56 = v21;
  v64 = v4;
  (v21)(v7);
  v49 = v15;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v22 = *(v66 + 56);
  v66 += 56;
  v60 = v22;
  v23 = v63;
  v22(v61, 1, 1, v63);
  v58 = type metadata accessor for DisplayRepresentation.Image();
  v24 = *(v58 - 8);
  v54 = *(v24 + 56);
  v59 = v24 + 56;
  v54(v65, 1, 1, v58);
  v62 = v20;
  DisplayRepresentation.init(title:subtitle:image:)();
  v25 = v52;
  v47 = *(v16 + 48);
  *(v20 + v52) = 1;
  v44[1] = v13;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50 = v7;
  v26 = v7;
  v27 = v53;
  v28 = v56;
  v56(v26, v53, v64);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v29 = v61;
  v60(v61, 1, 1, v23);
  v54(v65, 1, 1, v58);
  DisplayRepresentation.init(title:subtitle:image:)();
  v47 = 2 * v25;
  v45 = (v62 + 2 * v25);
  v46 = *(v57 + 48);
  *v45 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = v50;
  v28(v50, v27, v64);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = v60;
  v60(v29, 1, 1, v63);
  v32 = v58;
  v33 = v54;
  v54(v65, 1, 1, v58);
  DisplayRepresentation.init(title:subtitle:image:)();
  v34 = v52;
  v46 = v62 + v47 + v52;
  v47 = *(v57 + 48);
  *v46 = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v56(v30, v53, v64);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31(v61, 1, 1, v63);
  v33(v65, 1, 1, v32);
  DisplayRepresentation.init(title:subtitle:image:)();
  v47 = 4 * v34;
  v35 = v62;
  v46 = *(v57 + 48);
  *(v62 + 4 * v34) = 4;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v36 = v50;
  v37 = v53;
  v56(v50, v53, v64);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v38 = v61;
  v60(v61, 1, 1, v63);
  v39 = v65;
  v40 = v54;
  v54(v65, 1, 1, v58);
  DisplayRepresentation.init(title:subtitle:image:)();
  v41 = (v35 + v47 + v52);
  v52 = *(v57 + 48);
  *v41 = 5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v56(v36, v37, v64);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v60(v38, 1, 1, v63);
  v40(v39, 1, 1, v58);
  DisplayRepresentation.init(title:subtitle:image:)();
  v42 = sub_100BD7508(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101AD6E90 = v42;
  return result;
}

uint64_t sub_10097CA10()
{
  String.hash(into:)();
}

unint64_t sub_10097CAF4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10097D158(*a1);
  *a2 = result;
  return result;
}

void sub_10097CB24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656C63726963;
  v5 = 0xE600000000000000;
  v6 = 0x657261757173;
  v7 = 0xE400000000000000;
  v8 = 1918989427;
  if (v2 != 4)
  {
    v8 = 0x656C676E61697274;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701734764;
  if (v2 != 1)
  {
    v10 = 0xD000000000000010;
    v9 = 0x8000000101551A80;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10097CBD4()
{
  result = qword_101A09E98;
  if (!qword_101A09E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09E98);
  }

  return result;
}

unint64_t sub_10097CC2C()
{
  result = qword_101A09EA0;
  if (!qword_101A09EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09EA0);
  }

  return result;
}

unint64_t sub_10097CC84()
{
  result = qword_101A09EA8;
  if (!qword_101A09EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09EA8);
  }

  return result;
}

unint64_t sub_10097CCDC()
{
  result = qword_101A09EB0;
  if (!qword_101A09EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09EB0);
  }

  return result;
}

unint64_t sub_10097CD30()
{
  result = qword_101A09EB8;
  if (!qword_101A09EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09EB8);
  }

  return result;
}

unint64_t sub_10097CD88()
{
  result = qword_101A09EC0;
  if (!qword_101A09EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09EC0);
  }

  return result;
}

uint64_t sub_10097CDDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F19E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1005EB3DC(v2, qword_101AD6E78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10097CED4(uint64_t a1)
{
  v2 = sub_1007969F8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10097CF24()
{
  result = qword_101A09EC8;
  if (!qword_101A09EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09EC8);
  }

  return result;
}

unint64_t sub_10097CF7C()
{
  result = qword_101A09ED0;
  if (!qword_101A09ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09ED0);
  }

  return result;
}

unint64_t sub_10097CFD4()
{
  result = qword_101A09ED8;
  if (!qword_101A09ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09ED8);
  }

  return result;
}

uint64_t sub_10097D028()
{
  if (qword_1019F19E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10097D084(uint64_t a1)
{
  v2 = sub_10097CD88();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10097D0D4()
{
  result = qword_101A09EE0;
  if (!qword_101A09EE0)
  {
    sub_1005C4E5C(&qword_1019FFBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09EE0);
  }

  return result;
}

unint64_t sub_10097D158(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101874F38, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10097D1AC()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform15CRLCommandGroup__actionString + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8Freeform15CRLCommandGroup__actionString);
LABEL_14:

    return v1;
  }

  v2 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_12;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {

    specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_8:
    type metadata accessor for CRLCommand();
    sub_1005B981C(&qword_101A056C0);
    if (swift_dynamicCast())
    {
      v6 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v7 = v10;
        sub_100020E58(&v8, *(&v9 + 1));
        v1 = (*(v7 + 8))(v6, v7);
        sub_100005070(&v8);
        goto LABEL_14;
      }

LABEL_13:
      sub_10097E538(&v8);
      v1 = 0;
      goto LABEL_14;
    }

LABEL_12:
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_13;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10097D344()
{
  v1 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_10097DCE4();
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v3 ^ 1; v4; i = v9 ^ 1)
  {
    v6 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v3 = *(v2 + 8 * v6 + 32);
      }

      v7 = v3;
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (i)
      {
        i = (*((swift_isaMask & *v3) + 0x60))();
      }

      else
      {
        i = 0;
      }

      ++v6;
      if (v8 == v4)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v9 = v3;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v9;
  }

LABEL_16:

  return i & 1;
}

void sub_10097D4A8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    do
    {
      v7 = *(v3 + v5);
      if (v7 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v8)
        {
          return;
        }
      }

      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v11 = *(v7 + 8 * v9 + 32);
        }

        v10 = v11;
        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        type metadata accessor for CRLCommandGroup();
        if (swift_dynamicCastClass() && (v12 = v10, v3 = sub_10097DCE4(), v12, (v3 & 1) != 0))
        {
          v10 = v12;
        }

        else
        {
          v3 = v10;
          if (((*((swift_isaMask & *v10) + 0x60))() & 1) == 0)
          {
            v3 = v10;
            (*((swift_isaMask & *v10) + 0x80))(a1, a2, a3);
            if (v4)
            {

LABEL_19:

              return;
            }

            *(v10 + OBJC_IVAR____TtC8Freeform10CRLCommand_committed) = 1;
          }
        }

        ++v9;
        if (v5 == v8)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    while (_CocoaArrayWrapper.endIndex.getter() >= 1);
  }

  v37 = objc_opt_self();
  v13 = [v37 _atomicIncrementAssertCount];
  v39 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v39);
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
  v22 = sub_1005CF000();
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
  *(inited + 152) = 42;
  v25 = v39;
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
  sub_100005404(v20, &_mh_execute_header, v29, "Trying to commit command group with zero commands.", 50, 2, _swiftEmptyArrayStorage);

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

  [v37 handleFailureInFunction:v32 file:v33 lineNumber:42 isFatal:0 format:v34 args:v31];
}

uint64_t sub_10097DA14()
{
  v1 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      v9 = (*((swift_isaMask & *v7) + 0x88))();
      if (v9)
      {
        if (v5)
        {
          v10 = v5;
        }

        else
        {
          v10 = _swiftEmptySetSingleton;
        }

        v11 = v10;
        sub_100636BB4(v9);

        v5 = v11;
      }

      else
      {
      }
    }

    return v5;
  }

  __break(1u);
  return result;
}

BOOL sub_10097DB74()
{
  v1 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_18:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return 1;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return 1;
    }
  }

  v4 = 0;
  v5 = 0;
  do
  {
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v9 = (*((swift_isaMask & *v6) + 0xB8))();

      if (v9)
      {
        break;
      }

      v4 = 1;
      ++v5;
      if (v8 == v3)
      {

        return 0;
      }
    }

    ++v5;
  }

  while (v8 != v3);

  return (v4 & 1) == 0;
}

uint64_t sub_10097DCE4()
{
  v1 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = 1;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      type metadata accessor for CRLCommandGroup();
      if (swift_dynamicCastClass())
      {
        v6 = sub_10097DCE4();
      }

      else
      {
        v6 = 0;
      }

      v5 &= v6;
      ++v4;
      if (v9 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v5 = 1;
LABEL_15:

  return v5 & 1;
}

uint64_t sub_10097DE1C(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
    swift_beginAccess();
    v5 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10097E148(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8Freeform15CRLCommandGroup__actionString);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_10097E3F0()
{
}

id sub_10097E434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandGroup();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10097E538(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A056C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10097E5A0(uint64_t a1, double a2)
{
  v4 = sub_1005B981C(&qword_101A09F90);
  __chkstk_darwin(v4 - 8);
  v78 = &v74 - v5;
  v80 = type metadata accessor for CRLTweenLayerAnimation();
  v6 = *(v80 - 8);
  v7 = __chkstk_darwin(v80);
  v77 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v74 - v9;
  *(&v94 + 1) = &type metadata for CRLLayerAnimationFlatGroup;
  v95 = &off_1018A0308;
  *&v93 = a1;
  *(&v93 + 1) = a2;
  v10 = sub_100020E58(&v93, &type metadata for CRLLayerAnimationFlatGroup);
  v11 = __chkstk_darwin(v10);
  v13 = (&v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *v11;
  v15 = *(v11 + 1);
  v79 = a1;

  *v13 = sub_100CCF120(v14, v15);
  v13[1] = v16;
  v17 = sub_100CCF57C();
  v19 = v18;
  (_swift_cvw_destroy)(v13, &type metadata for CRLLayerAnimationFlatGroup, v17);
  sub_100005070(&v93);
  v84 = *(v19 + 16);
  if (v84)
  {
    v20 = 0;
    v21 = v19 + 32;
    v75 = (v6 + 48);
    v81 = _swiftEmptyArrayStorage;
    v82 = v19 + 32;
    v83 = v19;
    while (1)
    {
      sub_10000630C(v21 + 40 * v20, v99);
      v22 = v100;
      v23 = v101;
      sub_100020E58(v99, v100);
      v24 = (*(v23 + 64))(v22, v23);
      if (v24)
      {
        v25 = v24;
        v85 = v20;
        v26 = v100;
        v27 = v101;
        sub_100020E58(v99, v100);
        (*(v27 + 88))(&v96, v26, v27);
        v28 = v97;
        v29 = v98;
        sub_100020E58(&v96, v97);
        (*(v29 + 56))(&v93, v28, v29);
        v30 = sub_100B7694C();
        sub_100687CF4(&v93);
        v31 = *(v19 + 16);
        if (v31)
        {
          v32 = v21;
          v33 = _swiftEmptyArrayStorage;
          while (1)
          {
            sub_10000630C(v32, &v89);
            v34 = v90;
            v35 = v91;
            sub_100020E58(&v89, v90);
            v36 = (*(v35 + 64))(v34, v35);
            if (v36)
            {
              v37 = v36;
              sub_1009354E4();
              v38 = v25;
              v39 = static NSObject.== infix(_:_:)();

              if (v39)
              {
                v40 = v90;
                v41 = v91;
                sub_100020E58(&v89, v90);
                (*(v41 + 88))(&v86, v40, v41);
                v42 = v87;
                v43 = v88;
                sub_100020E58(&v86, v87);
                v44 = (*(v43 + 80))(v42, v43);
                v45 = sub_100B76520(v44);
                v47 = v46;
                if (v45 == sub_100B76520(v30) && v47 == v48)
                {

                  sub_100005070(&v86);
LABEL_19:
                  sub_100050F74(&v89, &v86);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v92 = v33;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1007767E4(0, v33[2] + 1, 1);
                    v33 = v92;
                  }

                  v53 = v33[2];
                  v52 = v33[3];
                  if (v53 >= v52 >> 1)
                  {
                    sub_1007767E4((v52 > 1), v53 + 1, 1);
                    v33 = v92;
                  }

                  v33[2] = v53 + 1;
                  sub_100050F74(&v86, &v33[5 * v53 + 4]);
                  goto LABEL_9;
                }

                v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

                sub_100005070(&v86);
                if (v50)
                {
                  goto LABEL_19;
                }
              }
            }

            sub_100005070(&v89);
LABEL_9:
            v32 += 40;
            if (!--v31)
            {
              goto LABEL_25;
            }
          }
        }

        v33 = _swiftEmptyArrayStorage;
LABEL_25:
        *&v89 = v33;

        sub_101137F0C(&v89);

        v54 = v89;
        v55 = sub_100005070(&v96);
        __chkstk_darwin(v55);
        *(&v74 - 2) = v99;
        v56 = *(v54 + 16);
        v57 = 0;
        if (v56)
        {
          v58 = (v54 + 32);
          while (1)
          {
            v59 = sub_10098B274(v58);
            if (v59)
            {
              break;
            }

            ++v57;
            v58 += 5;
            if (v56 == v57)
            {
              v57 = 0;
              break;
            }
          }

          v60 = v59 ^ 1;
        }

        else
        {
          v60 = 1;
        }

        if (v60)
        {

          v21 = v82;
          v19 = v83;
          v20 = v85;
        }

        else
        {
          v61 = *(v54 + 16);
          if (v57 >= (v61 - 1))
          {

            v95 = 0;
            v93 = 0u;
            v94 = 0u;
          }

          else
          {
            if (v57 + 1 >= v61)
            {
              __break(1u);

              __break(1u);
              return result;
            }

            sub_10000630C(v54 + 32 + 40 * (v57 + 1), &v93);
          }

          sub_100CCF400(v79);
          v63 = v62 + a2;
          sub_10000630C(v99, &v96);
          sub_10000BE14(&v93, &v89, &qword_1019F57A0);
          v64 = v78;
          sub_1005F6F18(&v96, &v89, v78, v63);
          v65 = (*v75)(v64, 1, v80);
          v21 = v82;
          v19 = v83;
          v20 = v85;
          if (v65 == 1)
          {
            sub_10000CAAC(&v93, &qword_1019F57A0);

            sub_10000CAAC(v64, &qword_101A09F90);
          }

          else
          {
            v66 = v64;
            v67 = v76;
            sub_10098C6F8(v66, v76, type metadata accessor for CRLTweenLayerAnimation);
            sub_10098C630(v67, v77, type metadata accessor for CRLTweenLayerAnimation);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v81 = sub_100B36A2C(0, v81[2] + 1, 1, v81);
            }

            v69 = v81[2];
            v68 = v81[3];
            if (v69 >= v68 >> 1)
            {
              v81 = sub_100B36A2C((v68 > 1), v69 + 1, 1, v81);
            }

            sub_10098C698(v76, type metadata accessor for CRLTweenLayerAnimation);
            sub_10000CAAC(&v93, &qword_1019F57A0);
            v97 = v80;
            v98 = sub_10098B468(&unk_101A092B0, type metadata accessor for CRLTweenLayerAnimation);
            v70 = sub_10002C58C(&v96);
            v71 = v77;
            sub_10098C630(v77, v70, type metadata accessor for CRLTweenLayerAnimation);
            v72 = v81;
            v81[2] = v69 + 1;
            sub_100050F74(&v96, &v72[5 * v69 + 4]);
            sub_10098C698(v71, type metadata accessor for CRLTweenLayerAnimation);
          }
        }
      }

      ++v20;
      sub_100005070(v99);
      if (v20 == v84)
      {
        goto LABEL_45;
      }
    }
  }

  v81 = _swiftEmptyArrayStorage;
LABEL_45:
  *&v93 = v19;
  sub_100799EE8(v81);
  return v93;
}