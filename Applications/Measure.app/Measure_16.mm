void sub_100152C58(uint64_t *a1)
{
  v55 = type metadata accessor for String.Encoding();
  v2 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *a1;
  v56 = [objc_opt_self() generalPasteboard];
  if (qword_1004A0350 != -1)
  {
LABEL_27:
    swift_once();
  }

  v5 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  *(v5 + 56) = *(v5 + 56) + 1.0;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v63 = "storyDetailSheetViewController";
    v64 = v4 + 32;
    v62 = NSDocumentTypeDocumentAttribute;
    v53 = (v2 + 1);
    v61 = v6;
    v59 = v6 - 1;
    v60 = _swiftEmptyArrayStorage;
    v52 = kUTTypeRTF;
    v50 = kUTTypeUTF8PlainText;
    v51 = xmmword_1003D5730;
    while (1)
    {
      v8 = v7;
      while (1)
      {
        if (v8 >= *(v4 + 16))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v9 = *(v64 + 8 * v8);
        v10 = *(v9 + 16);

        if (!v10)
        {
          goto LABEL_16;
        }

        v11 = sub_100198230(0xD00000000000001ALL, v63 | 0x8000000000000000);
        if ((v12 & 1) == 0)
        {
          goto LABEL_16;
        }

        sub_10000FE60(*(v9 + 56) + 32 * v11, &v66);
        sub_100018630(0, &qword_1004ABA98);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_16;
        }

        v13 = v65;
        v14 = [v65 length];
        v15 = v62;
        v68[0] = v62;
        type metadata accessor for DocumentType(0);
        v68[4] = v16;
        v68[1] = NSRTFTextDocumentType;
        sub_10000F974(&unk_1004ABAA0);
        v2 = static _DictionaryStorage.allocate(capacity:)();
        v17 = v15;
        v18 = NSRTFTextDocumentType;
        sub_10006C92C(v68, &v66, &qword_1004AA938);
        v19 = v66;
        v20 = sub_10019C358(v66);
        if (v21)
        {
          goto LABEL_25;
        }

        v2[(v20 >> 6) + 8] |= 1 << v20;
        *(v2[6] + 8 * v20) = v19;
        sub_1000C0FAC(&v67, (v2[7] + 32 * v20));
        v22 = v2[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_26;
        }

        v2[2] = v24;
        sub_100018F04(v68, &qword_1004AA938);
        type metadata accessor for DocumentAttributeKey(0);
        sub_10015941C(&qword_1004A0C80, type metadata accessor for DocumentAttributeKey);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v66 = 0;
        v26 = [v13 dataFromRange:0 documentAttributes:v14 error:{isa, &v66}];

        v27 = v66;
        if (v26)
        {
          break;
        }

        v28 = v27;
        ++v8;
        v2 = _convertNSErrorToError(_:)();

        swift_willThrow();

        if (v61 == v8)
        {
          goto LABEL_23;
        }
      }

      v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v30;
      v58 = v29;

      sub_10000F974(&qword_1004A7558);
      inited = swift_initStackObject();
      *(inited + 16) = v51;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48[1] = inited + 32;
      *(inited + 40) = v32;
      sub_1000C94CC(v29, v57);
      v33 = v54;
      static String.Encoding.utf8.getter();
      v49 = String.Encoding.rawValue.getter();
      (*v53)(v33, v55);
      v34 = objc_allocWithZone(NSString);
      v35 = Data._bridgeToObjectiveC()().super.isa;
      v36 = [v34 initWithData:v35 encoding:v49];

      sub_100038FD4(v58, v57);
      if (!v36)
      {
        break;
      }

      *(inited + 72) = sub_100018630(0, &qword_1004ABAB0);
      *(inited + 48) = v36;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v37;
      v38 = [v13 string];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v40;

      *(inited + 120) = &type metadata for String;
      v41 = v49;
      *(inited + 96) = v39;
      *(inited + 104) = v41;
      v42 = sub_10019AC90(inited);
      swift_setDeallocating();
      sub_10000F974(&qword_1004A7560);
      swift_arrayDestroy();
      sub_100038FD4(v58, v57);

      v9 = v42;
LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_100068884(0, *(v60 + 2) + 1, 1, v60);
      }

      v44 = *(v60 + 2);
      v43 = *(v60 + 3);
      v2 = (v44 + 1);
      if (v44 >= v43 >> 1)
      {
        v60 = sub_100068884((v43 > 1), v44 + 1, 1, v60);
      }

      v7 = v8 + 1;
      v45 = v60;
      *(v60 + 2) = v2;
      *&v45[v44 + 4] = v9;
      if (v59 == v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v60 = _swiftEmptyArrayStorage;
LABEL_23:
    sub_10000F974(&unk_1004ABAC0);
    v46 = Array._bridgeToObjectiveC()().super.isa;

    v47 = v56;
    [v56 setItems:v46];
  }
}

void sub_100153360(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_10000F974(&qword_1004ABB68);
  swift_allocObject();
  v2 = a1;
  Future.init(_:)();
  sub_10001D47C(&unk_1004ABB70, &qword_1004ABB68);
  v3 = Publisher.sink(receiveCompletion:receiveValue:)();

  *&v2[qword_1004AB638] = v3;

  sub_100159044(0);
}

void sub_1001534B0(void *a1)
{
  v1 = a1;
  sub_100159044(0);
}

void sub_100153500(uint64_t a1)
{
  v2 = sub_10000F974(&unk_1004ABA88);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-v3];
  v5 = *(a1 + qword_1004AB570);
  if (v5)
  {
    v6 = v5;
    sub_1001938F0(0);
    v7 = *(**(a1 + qword_1004AB558) + 400);

    v8 = v7(v10);
    swift_unknownObjectWeakAssign();
    v8(v10, 0);

    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_1001501AC(0, v4, 1);

    sub_100018F04(v4, &unk_1004ABA88);
  }
}

void sub_1001536AC(void *a1)
{
  v1 = a1;
  sub_10014F314();
}

uint64_t sub_100153724()
{

  sub_100018F04(v0 + qword_1004AB578, &unk_1004ABA88);

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
}

uint64_t sub_100153934(uint64_t a1)
{

  sub_100018F04(a1 + qword_1004AB578, &unk_1004ABA88);

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for HistoryViewCoordinator()
{
  result = qword_1004AB670;
  if (!qword_1004AB670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100153B9C()
{
  sub_100153CE4();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_100153CE4()
{
  if (!qword_1004AB680)
  {
    type metadata accessor for IndexPath();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AB680);
    }
  }
}

void sub_100153D44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100150714();
  }
}

void *sub_100153E50(id a1)
{
  v2 = v1;
  v4 = type metadata accessor for SpatialPlattersHistoryItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1004AB560;
  swift_beginAccess();
  v9 = *(*(v1 + v8) + 16);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = IndexPath.item.getter();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = *(v1 + v8);
  if (v10 >= *(v11 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1001594B8(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, type metadata accessor for SpatialPlattersHistoryItem);
  v12 = type metadata accessor for MeasurementHistoryItem();
  memcpy(v39, &v7[*(v12 + 28)], 0x346uLL);
  v13 = sub_1000218D8(v39);
  sub_1000218E4(v39);
  v38[0] = v9;
  if (v13)
  {
    if (v13 == 1)
    {
      if (*&v7[*(v4 + 20)])
      {
        v14 = String._bridgeToObjectiveC()();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v16 = [a1 dequeueReusableCellWithIdentifier:v14 forIndexPath:isa];

        swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          __break(1u);
LABEL_9:
          type metadata accessor for LineHistoryCell();
          return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        }

LABEL_18:
        v26 = result;
        ObjectType = swift_getObjectType();
        v28 = v26[2];
        a1 = v16;
        v28(v7, ObjectType, v26);
        [a1 setSelectionStyle:2];
        v29 = [objc_opt_self() clearColor];
        [a1 setBackgroundColor:v29];

        if (IndexPath.row.getter() == v38[0] - 1)
        {
          v30 = *(v2 + qword_1004AB508);
          v31 = a1;
          [v30 bounds];
          [v31 setSeparatorInset:{0.0, CGRectGetWidth(v40), 0.0, 0.0, v38[0]}];
LABEL_22:
          swift_getObjectType();
          v38[2] = _typeName(_:qualified:)();
          v38[3] = v33;
          v34._countAndFlagsBits = 45;
          v34._object = 0xE100000000000000;
          String.append(_:)(v34);
          v38[1] = IndexPath.row.getter();
          v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v35);

          v36 = String._bridgeToObjectiveC()();

          [a1 setAccessibilityIdentifier:v36];

          sub_10015A064(v7, type metadata accessor for SpatialPlattersHistoryItem);
          return a1;
        }

        v32 = qword_1004A0068;
        v10 = a1;
        if (v32 == -1)
        {
LABEL_21:
          [v10 setSeparatorInset:{xmmword_1004D4990, *&qword_1004D49A0, *&qword_1004D49A8, v38[0]}];
          goto LABEL_22;
        }

LABEL_26:
        v37 = v10;
        swift_once();
        v10 = v37;
        goto LABEL_21;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (!*&v7[*(v4 + 20)])
    {
      goto LABEL_17;
    }

    v18 = String._bridgeToObjectiveC()();
    v19 = IndexPath._bridgeToObjectiveC()().super.isa;
    v16 = [a1 dequeueReusableCellWithIdentifier:v18 forIndexPath:v19];

    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v20 = String._bridgeToObjectiveC()();
  v21 = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = [a1 dequeueReusableCellWithIdentifier:v20 forIndexPath:v21];

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_15:
  v22 = String._bridgeToObjectiveC()();
  v23 = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = [a1 dequeueReusableCellWithIdentifier:v22 forIndexPath:v23];

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_17:
  v24 = String._bridgeToObjectiveC()();
  v25 = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = [a1 dequeueReusableCellWithIdentifier:v24 forIndexPath:v25];

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id sub_1001545B4(char *a1, uint64_t a2)
{
  v7 = v2;
  v10 = sub_10000F974(&unk_1004ABA88);
  v112 = *(v10 - 8);
  v11 = *(v112 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = (&v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v91 - v14;
  v16 = type metadata accessor for SpatialPlattersHistoryItem();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  KeyPath = (&v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = qword_1004AB560;
  result = swift_beginAccess();
  if (*(*&v7[v20] + 16))
  {
    result = [*&v7[qword_1004AB508] superview];
    if (result)
    {
      v22 = result;
      v110 = v15;
      v23 = a2;
      v24 = IndexPath.item.getter();
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v25 = *&v7[v20];
        if (v24 < *(v25 + 16))
        {
          sub_1001594B8(v25 + ((v17[80] + 32) & ~v17[80]) + *(v17 + 9) * v24, KeyPath, type metadata accessor for SpatialPlattersHistoryItem);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v27 = [a1 cellForRowAtIndexPath:isa];

          if (v27)
          {
            ObjectType = swift_getObjectType();
            v29 = swift_conformsToProtocol2();
            if (v29)
            {
              (*(v29 + 24))(ObjectType, v29);
            }
          }

          v97 = v11;
          v96 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
          v102 = sub_10019B2F4(KeyPath);
          v31 = v30;
          v33 = v32;
          v34 = type metadata accessor for IndexPath();
          v35 = *(v34 - 8);
          v36 = *(v35 + 16);
          v37 = v110;
          v94 = v35 + 16;
          v93 = v36;
          v36(v110, a2, v34);
          v38 = *(v35 + 56);
          v91 = v34;
          v95 = v35 + 56;
          v92 = v38;
          v38(v37, 0, 1, v34);
          v39 = qword_1004AB578;
          swift_beginAccess();
          sub_100158C64(v37, &v7[v39]);
          swift_endAccess();
          v40 = KeyPath[1];
          v103 = *KeyPath;
          v105 = v40;
          v3 = *&v7[qword_1004AB588];
          v4 = *&v7[qword_1004AB588 + 8];
          v5 = *&v7[qword_1004AB588 + 16];
          v6 = *&v7[qword_1004AB588 + 24];
          v41 = swift_getObjectType();
          v42 = *(v33 + 72);
          v108 = v33;
          v43 = v42(v41, v33);
          v100 = KeyPath;
          v99 = a2;
          if (v43)
          {
            v44 = v43;
            objc_opt_self();
            v111 = swift_dynamicCastObjCClass();
            if (v111)
            {
              goto LABEL_13;
            }
          }

          v111 = 0;
LABEL_13:
          v98 = v22;
          v45 = type metadata accessor for SpatialGenericPlatter();
          v107 = *&v7[qword_1004AB5A0];
          v12 = v45;
          a1 = objc_allocWithZone(v45);
          v106 = qword_1004ADDB8;
          *&a1[qword_1004ADDB8] = 0;
          v17 = &a1[qword_1004ADDC0];
          *&a1[qword_1004ADDC0 + 8] = 0;
          swift_unknownObjectWeakInit();
          *&a1[qword_1004ADDC8 + 8] = 0;
          swift_unknownObjectWeakInit();
          a1[qword_1004ADDD0] = 0;
          v101 = qword_1004ADDE0;
          swift_unknownObjectWeakInit();
          v104 = qword_1004ADDE8;
          swift_unknownObjectWeakInit();
          *&a1[qword_1004ADDF0] = 0;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          a1[qword_1004ADE08] = 0;
          v20 = qword_1004ADE10;
          v23 = sub_10000F974(&unk_1004A6940);
          KeyPath = swift_getKeyPath();
          v46 = qword_1004A04D8;
          v109 = v31;
          v102 = v102;
          if (v46 == -1)
          {
            goto LABEL_14;
          }

          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_19:
      swift_once();
LABEL_14:
      v47 = qword_1004D5058;
      v48 = *(v23 + 272);
      swift_retain_n();
      *&a1[v20] = v48(KeyPath, v47);
      v49 = qword_1004ADE18;
      sub_10000F974(&unk_1004ABB10);
      swift_getKeyPath();
      v50 = v12;
      *&a1[v49] = MutableStateValue.__allocating_init(_:_:)();
      v51 = qword_1004ADE20;
      v52 = sub_10000F974(&unk_1004A6950);
      v53 = swift_getKeyPath();
      *&a1[v51] = (*(v52 + 272))(v53, v47);
      v54 = qword_1004ADE28;
      v55 = sub_10000F974(&qword_1004A3F50);
      v56 = swift_getKeyPath();
      *&a1[v54] = (*(v55 + 272))(v56, v47);
      v57 = qword_1004ADE30;
      sub_10000F974(&unk_1004A6960);
      swift_getKeyPath();
      *&a1[v57] = MutableStateValue.__allocating_init(_:_:)();
      v58 = qword_1004ADE38;
      sub_10000F974(&qword_1004ABB20);
      swift_getKeyPath();
      *&a1[v58] = MutableStateValue.__allocating_init(_:_:)();
      a1[qword_1004ADE40] = 0;
      swift_unknownObjectWeakInit();
      a1[qword_1004ADE50] = 1;
      v59 = &a1[qword_1004ADDD8];
      *v59 = v3;
      v59[1] = v4;
      v59[2] = v5;
      v59[3] = v6;
      v60 = &a1[qword_1004ADDB0];
      v61 = v105;
      *v60 = v103;
      v60[1] = v61;
      swift_unknownObjectWeakAssign();
      v62 = v109;
      *(v17 + 1) = v108;
      swift_unknownObjectWeakAssign();
      v63 = v102;
      v64 = *(*&v102[OBJC_IVAR____TtC7Measure17CardContainerView_titleView] + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView);
      v65 = objc_opt_self();

      v66 = v64;
      v67 = [v65 mainBundle];
      v117._object = 0xE000000000000000;
      v68._object = 0x8000000100404760;
      v68._countAndFlagsBits = 0xD00000000000001DLL;
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      v117._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v67, v69, v117);

      v70 = String._bridgeToObjectiveC()();

      [v66 setPlaceholder:v70];

      v71 = objc_allocWithZone(type metadata accessor for CardContainerController());
      v72 = v63;
      v73 = sub_10018E2F0(v72);
      v74 = *&a1[v106];
      *&a1[v106] = v73;

      swift_unknownObjectWeakAssign();
      v114.receiver = a1;
      v114.super_class = v50;
      v75 = objc_msgSendSuper2(&v114, "initWithFrame:", v3, v4, v5, v6);
      sub_1001940A0(1);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v76 = result;

        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakDestroy();
        v77 = *&v7[qword_1004AB570];
        *&v7[qword_1004AB570] = v75;
        v78 = v75;

        v79 = v110;
        v80 = v91;
        v93(v110, v99, v91);
        v92(v79, 0, 1, v80);
        *&v78[qword_1004ADDC8 + 8] = &off_10046F4F8;
        swift_unknownObjectWeakAssign();
        v81 = v96;
        sub_10006C92C(v79, v96, &unk_1004ABA88);
        v82 = (*(v112 + 80) + 16) & ~*(v112 + 80);
        v83 = (v97 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
        v84 = swift_allocObject();
        sub_100158B04(v81, v84 + v82);
        *(v84 + v83) = v7;
        v85 = v7;
        sub_10014FD38(sub_10015AD14, v84);

        UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, v78);

        sub_100018F04(v79, &unk_1004ABA88);
        swift_getObjectType();
        v86 = v72;
        v115 = _typeName(_:qualified:)();
        v116 = v87;
        v88._countAndFlagsBits = 45;
        v88._object = 0xE100000000000000;
        String.append(_:)(v88);
        v113 = IndexPath.row.getter();
        v89._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v89);

        v90 = String._bridgeToObjectiveC()();

        [v86 setAccessibilityIdentifier:v90];

        return sub_10015A064(v100, type metadata accessor for SpatialPlattersHistoryItem);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_10015532C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SpatialPlattersHistoryItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 1)
  {
    return;
  }

  *(v4 + qword_1004AB598) = 0;
  v16 = IndexPath.item.getter();
  v17 = qword_1004AB560;
  swift_beginAccess();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = *(v4 + v17);
  if (v16 >= *(v18 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v19 = (v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v16);
  v48 = v8;
  v20 = *v19;
  v21 = v19[1];
  swift_beginAccess();
  sub_10009F3F0(v20, v21);
  swift_endAccess();

  v22 = IndexPath.item.getter();
  v47 = a3;
  v23 = v22;
  swift_beginAccess();
  sub_100054DDC(v23, v15);
  swift_endAccess();
  sub_10015A064(v15, type metadata accessor for SpatialPlattersHistoryItem);
  v24 = **(v4 + qword_1004AB550);
  v46 = a1;
  v25 = *(v24 + 400);

  v26 = v25(v50);
  v28 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v28;
  *v28 = 0x8000000000000000;
  sub_100158D14(v20, v21, isUniquelyReferenced_nonNull_native);

  *v28 = v49;

  v26(v50, 0);

  sub_10000F974(&qword_1004ABB60);
  v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1003D5360;
  v32 = v48;
  (*(v9 + 16))(v31 + v30, v47, v48);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v34 = v46;
  [v46 deleteRowsAtIndexPaths:isa withRowAnimation:100];

  v35 = *(*(v4 + v17) + 16);
  v36 = *(**(v4 + qword_1004AB530) + 400);

  v37 = v36(v50);
  *v38 = v35;
  v37(v50, 0);

  IndexPath.init(row:section:)();
  v39 = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v32);
  v40 = [v34 cellForRowAtIndexPath:v39];

  if (v40)
  {
    [v40 setSeparatorInset:{0.0, 375.0, 0.0, 0.0}];
  }

  if (!*(*(v4 + v17) + 16))
  {
    v41 = *(v4 + qword_1004AB518);
    if (v41)
    {
      [v41 dismissViewControllerAnimated:1 completion:0];
    }

    [*(*(v4 + qword_1004AB508) + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
    v42 = *(**(v4 + qword_1004AB540) + 400);

    v43 = v42(v50);
    *(v44 + 4) = 0;
    v43(v50, 0);
  }
}

void sub_100155C4C()
{
  v1 = v0;
  v2 = sub_10000F974(&unk_1004ABA88);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  v5 = [objc_opt_self() sharedMenuController];
  [v5 hideMenu];

  v6 = *(v1 + qword_1004AB570);
  if (v6)
  {
    v7 = v6;
    sub_1001938F0(0);
    v8 = *(**(v1 + qword_1004AB558) + 400);

    v9 = v8(v11);
    swift_unknownObjectWeakAssign();
    v9(v11, 0);

    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_1001501AC(0, v4, 0);

    sub_100018F04(v4, &unk_1004ABA88);
  }
}

void sub_100155E2C()
{
  v1 = sub_10000F974(&unk_1004ABA88);
  __chkstk_darwin(v1 - 8);
  v3 = &v9[-v2];
  v4 = *(v0 + qword_1004AB570);
  if (v4)
  {
    v5 = v4;
    sub_1001938F0(0);
    v6 = *(**(v0 + qword_1004AB558) + 400);

    v7 = v6(v9);
    swift_unknownObjectWeakAssign();
    v7(v9, 0);

    v8 = type metadata accessor for IndexPath();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_1001501AC(0, v3, 0);

    sub_100018F04(v3, &unk_1004ABA88);
  }
}

void sub_100155FE0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = qword_1004AB560;
  swift_beginAccess();
  if (*(*(v4 + v9) + 16))
  {
    v10 = [*(v4 + qword_1004AB508) superview];
    if (v10)
    {
      v11 = v10;
      *&a2[qword_1004ADDC8 + 8] = &off_10046F4F8;
      swift_unknownObjectWeakAssign();
      *(a1 + qword_1004ADDC8 + 8) = 0;
      swift_unknownObjectWeakAssign();
      v12 = *(v4 + qword_1004AB520);
      if (v12)
      {
        *(v4 + qword_1004AB580) = 1;
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = a3;
        v14[4] = a4;
        aBlock[4] = sub_1001592CC;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100041180;
        aBlock[3] = &unk_10046F800;
        v15 = _Block_copy(aBlock);
        v16 = v12;

        [v16 dismissViewControllerAnimated:1 completion:v15];
        _Block_release(v15);
        UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, a2);

        v11 = v16;
      }
    }
  }
}

void sub_1001561D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *(Strong + qword_1004AB580) = 1;
    v7 = *(Strong + qword_1004AB570);
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = *(Strong + qword_1004AB520);
    if (!v8)
    {
      goto LABEL_12;
    }

    sub_100018630(0, &qword_1004A1930);
    v9 = v7;
    v10 = v8;
    if (static UIDevice.isIPhone()())
    {
      v11 = [v10 sheetPresentationController];
      if (!v11)
      {
LABEL_11:

        v6 = v10;
LABEL_12:

        return;
      }

      v12 = v11;
      sub_10000F974(&unk_1004A3F10);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1003D6280;
      v14 = objc_opt_self();
      *(v13 + 32) = [v14 mediumDetent];
      *(v13 + 40) = [v14 largeDetent];
      sub_100018630(0, &qword_1004A6920);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v12 setDetents:isa];
    }

    v16 = *&v9[qword_1004ADDB8];
    if (!v16)
    {
      __break(1u);
      return;
    }

    [v10 setView:*(v16 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView)];
    v17 = [v10 presentationController];
    if (v17)
    {
      v18 = v17;
      [v17 setDelegate:v6];
    }

    v19 = *&v6[qword_1004AB5A0];
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    aBlock[4] = sub_10008E154;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046F850;
    v21 = _Block_copy(aBlock);
    v22 = v19;

    [v22 presentViewController:v10 animated:1 completion:v21];
    _Block_release(v21);

    v6 = v9;
    v9 = v10;
    v10 = v22;
    goto LABEL_11;
  }
}

uint64_t sub_100156514@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_10000F974(&unk_1004ABA88);
  __chkstk_darwin(v3 - 8);
  v5 = &v20[-v4];
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  v13 = qword_1004AB560;
  swift_beginAccess();
  if (!*(*(v1 + v13) + 16) || !*(v1 + qword_1004AB570))
  {
    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  v14 = qword_1004AB578;
  swift_beginAccess();
  sub_10006C92C(v1 + v14, v5, &unk_1004ABA88);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100018F04(v5, &unk_1004ABA88);
    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  v16 = *(v7 + 32);
  v16(v12, v5, v6);
  result = IndexPath.item.getter();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    IndexPath.section.getter();
    IndexPath.init(item:section:)();
    sub_10015941C(&unk_1004ABB00, &type metadata accessor for IndexPath);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v7 + 8);
    v18(v12, v6);
    v19 = (v7 + 56);
    if (v17)
    {
      v18(v9, v6);
      return (*v19)(a1, 1, 1, v6);
    }

    else
    {
      v16(a1, v9, v6);
      return (*v19)(a1, 0, 1, v6);
    }
  }

  return result;
}

void sub_100156864(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v129 = a2;
  v130 = a1;
  v9 = type metadata accessor for SpatialPlattersHistoryItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = (&v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10000F974(&unk_1004ABA88);
  __chkstk_darwin(v13 - 8);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v105 - v17;
  __chkstk_darwin(v19);
  v21 = &v105 - v20;
  v22 = type metadata accessor for IndexPath();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  __chkstk_darwin(v24);
  v26 = &v105 - v25;
  __chkstk_darwin(v27);
  v32 = *(v3 + qword_1004AB570);
  if (v32)
  {
    v126 = v10;
    v122 = qword_1004AB570;
    v123 = v31;
    v124 = v30;
    v127 = v12;
    v128 = &v105 - v29;
    v125 = a3;
    v33 = qword_1004AB578;
    v34 = v28;
    swift_beginAccess();
    v121 = v33;
    sub_10006C92C(v3 + v33, v21, &unk_1004ABA88);
    v35 = *(v23 + 48);
    if (v35(v21, 1, v34) == 1)
    {
      v36 = v21;
LABEL_6:
      sub_100018F04(v36, &unk_1004ABA88);
      return;
    }

    v118 = v15;
    v120 = v26;
    KeyPath = v3;
    v38 = v128;
    v39 = v21;
    v40 = (v23 + 32);
    v119 = *(v23 + 32);
    v119(v128, v39, v34);
    v41 = v32;
    v130();
    if (v35(v18, 1, v34) == 1)
    {
      (*(v23 + 8))(v38, v34);

      v36 = v18;
      goto LABEL_6;
    }

    v116 = v41;
    v117 = v23;
    v114 = v34;
    v115 = v23 + 32;
    v119(v120, v18, v34);
    v42 = IndexPath.row.getter();
    v43 = qword_1004AB560;
    swift_beginAccess();
    if ((v42 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v44 = *(v43 + KeyPath);
      v43 = v127;
      if (v42 < *(v44 + 16))
      {
        sub_1001594B8(v44 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + v126[9] * v42, v127, type metadata accessor for SpatialPlattersHistoryItem);
        v45 = sub_10019B2F4(v43);
        v47 = v46;
        v49 = v48;
        v51 = *v43;
        v50 = v43[1];
        v4 = *(KeyPath + qword_1004AB588);
        v5 = *(KeyPath + qword_1004AB588 + 8);
        v6 = *(KeyPath + qword_1004AB588 + 16);
        v7 = *(KeyPath + qword_1004AB588 + 24);
        ObjectType = swift_getObjectType();
        v53 = (*(v49 + 72))(ObjectType, v49);
        v112 = v50;
        v110 = v49;
        v109 = v51;
        if (v53)
        {
          v54 = v53;
          objc_opt_self();
          v53 = swift_dynamicCastObjCClass();
          if (!v53)
          {

            v53 = 0;
          }
        }

        v126 = v53;
        v55 = type metadata accessor for SpatialGenericPlatter();
        v106 = KeyPath;
        v113 = *(KeyPath + qword_1004AB5A0);
        v40 = v55;
        v34 = objc_allocWithZone(v55);
        v108 = qword_1004ADDB8;
        *&v34[qword_1004ADDB8] = 0;
        v38 = &v34[qword_1004ADDC0];
        *&v34[qword_1004ADDC0 + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v34[qword_1004ADDC8 + 8] = 0;
        swift_unknownObjectWeakInit();
        v34[qword_1004ADDD0] = 0;
        swift_unknownObjectWeakInit();
        v111 = qword_1004ADDE8;
        swift_unknownObjectWeakInit();
        *&v34[qword_1004ADDF0] = 0;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        v34[qword_1004ADE08] = 0;
        v43 = qword_1004ADE10;
        v42 = sub_10000F974(&unk_1004A6940);
        KeyPath = swift_getKeyPath();
        v56 = qword_1004A04D8;
        v130 = v47;
        v107 = v45;
        if (v56 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
LABEL_13:
    v57 = qword_1004D5058;
    v58 = *(v42 + 272);
    swift_retain_n();
    *(v43 + v34) = v58(KeyPath, v57);
    v59 = qword_1004ADE18;
    sub_10000F974(&unk_1004ABB10);
    swift_getKeyPath();
    *&v34[v59] = MutableStateValue.__allocating_init(_:_:)();
    v60 = qword_1004ADE20;
    v61 = sub_10000F974(&unk_1004A6950);
    v62 = swift_getKeyPath();
    *&v34[v60] = (*(v61 + 272))(v62, v57);
    v63 = qword_1004ADE28;
    v64 = sub_10000F974(&qword_1004A3F50);
    v65 = swift_getKeyPath();
    *&v34[v63] = (*(v64 + 272))(v65, v57);
    v66 = qword_1004ADE30;
    sub_10000F974(&unk_1004A6960);
    swift_getKeyPath();
    *&v34[v66] = MutableStateValue.__allocating_init(_:_:)();
    v67 = qword_1004ADE38;
    sub_10000F974(&qword_1004ABB20);
    swift_getKeyPath();
    *&v34[v67] = MutableStateValue.__allocating_init(_:_:)();
    v34[qword_1004ADE40] = 0;
    swift_unknownObjectWeakInit();
    v34[qword_1004ADE50] = 1;
    v68 = &v34[qword_1004ADDD8];
    *v68 = v4;
    v68[1] = v5;
    v68[2] = v6;
    v68[3] = v7;
    v69 = &v34[qword_1004ADDB0];
    v70 = v112;
    *v69 = v109;
    v69[1] = v70;
    v71 = v126;
    swift_unknownObjectWeakAssign();
    *(v38 + 1) = v110;
    v72 = v130;
    swift_unknownObjectWeakAssign();
    v73 = v107;
    v74 = *(*&v107[OBJC_IVAR____TtC7Measure17CardContainerView_titleView] + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView);
    v75 = objc_opt_self();

    v76 = v74;
    v77 = [v75 mainBundle];
    v132._object = 0xE000000000000000;
    v78._object = 0x8000000100404760;
    v78._countAndFlagsBits = 0xD00000000000001DLL;
    v79._countAndFlagsBits = 0;
    v79._object = 0xE000000000000000;
    v132._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v78, 0, v77, v79, v132);

    v80 = String._bridgeToObjectiveC()();

    [v76 setPlaceholder:v80];

    v81 = objc_allocWithZone(type metadata accessor for CardContainerController());
    v82 = v73;
    v83 = sub_10018E2F0(v82);
    v84 = *&v34[v108];
    *&v34[v108] = v83;

    swift_unknownObjectWeakAssign();
    v131.receiver = v34;
    v131.super_class = v40;
    v85 = objc_msgSendSuper2(&v131, "initWithFrame:", v4, v5, v6, v7);
    sub_1001940A0(1);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v87 = Strong;

      swift_unknownObjectWeakInit();
      v88 = v85;

      swift_unknownObjectWeakDestroy();
      v89 = v117;
      v126 = v82;
      v90 = *(v117 + 16);
      v91 = v118;
      v92 = v120;
      v93 = v114;
      v90(v118, v120, v114);
      (*(v89 + 56))(v91, 0, 1, v93);
      v94 = v121;
      v95 = v106;
      swift_beginAccess();
      sub_100158C64(v91, &v95[v94]);
      swift_endAccess();
      v96 = *&v95[v122];
      *&v95[v122] = v85;

      v97 = v92;
      v98 = v124;
      v99 = v128;
      v90(v124, v128, v93);
      v100 = (*(v89 + 80) + 24) & ~*(v89 + 80);
      v101 = swift_allocObject();
      *(v101 + 16) = v95;
      v119((v101 + v100), v98, v93);
      v102 = v95;
      v103 = v116;
      sub_100155FE0(v116, v88, v125, v101);

      sub_10015A064(v127, type metadata accessor for SpatialPlattersHistoryItem);
      v104 = *(v89 + 8);
      v104(v97, v93);
      v104(v99, v93);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100157414(char *a1@<X8>)
{
  v3 = sub_10000F974(&unk_1004ABA88);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = qword_1004AB560;
  swift_beginAccess();
  if (!*(*(v1 + v13) + 16) || !*(v1 + qword_1004AB570))
  {
    goto LABEL_5;
  }

  v14 = qword_1004AB578;
  swift_beginAccess();
  sub_10006C92C(v1 + v14, v5, &unk_1004ABA88);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100018F04(v5, &unk_1004ABA88);
LABEL_5:
    (*(v7 + 56))(a1, 1, 1, v6);
    return;
  }

  v21 = *(v7 + 32);
  v21(v12, v5, v6);
  if (__OFADD__(IndexPath.item.getter(), 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = *(*(v1 + qword_1004AB508) + OBJC_IVAR____TtC7Measure11HistoryView_tableView);
  v16 = [v15 numberOfRowsInSection:IndexPath.section.getter()];

  if (__OFSUB__(v16, 1))
  {
LABEL_14:
    __break(1u);
    return;
  }

  IndexPath.section.getter();
  IndexPath.init(item:section:)();
  sub_10015941C(&unk_1004ABB00, &type metadata accessor for IndexPath);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v12, v6);
  v19 = (v7 + 56);
  if (v17)
  {
    v18(v9, v6);
    (*v19)(a1, 1, 1, v6);
  }

  else
  {
    v21(a1, v9, v6);
    (*v19)(a1, 0, 1, v6);
  }
}

void sub_100157794(uint64_t a1)
{
  v1 = *(*(a1 + qword_1004AB508) + OBJC_IVAR____TtC7Measure11HistoryView_tableView);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v1 deselectRowAtIndexPath:isa animated:0];
}

uint64_t sub_100157818@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(v1 + qword_1004AB588);
  v6 = *(v1 + qword_1004AB588 + 8);
  v7 = *(v1 + qword_1004AB588 + 16);
  v8 = *(v1 + qword_1004AB588 + 24);
  v9 = *(v1 + qword_1004AB5A0);
  v10 = *(v1 + qword_1004AB5F8);
  v11 = objc_allocWithZone(ObjectType);
  v12 = v9;

  result = sub_10014B4D0(v12, v10, 1, v5, v6, v7, v8);
  v14 = result;
  if (*(v2 + qword_1004AB5B8))
  {

    AnyCancellable.cancel()();
  }

  if (*(v2 + qword_1004AB5B0))
  {

    AnyCancellable.cancel()();
  }

  a1[3] = ObjectType;
  *a1 = v14;
  return result;
}

uint64_t sub_100157984(void *a1, id a2)
{
  v5 = [a2 view];
  v6 = [a1 view];
  if (!v5)
  {
    if (!v6)
    {
      return 1;
    }

    goto LABEL_8;
  }

  if (!v6)
  {
    v6 = v5;
LABEL_8:

    goto LABEL_9;
  }

  v7 = v6;

  if (v5 == v7)
  {
    return 1;
  }

LABEL_9:
  result = [a2 view];
  if (result)
  {
    v9 = *(v2 + qword_1004AB510);
    v10 = result;

    return v10 == v9;
  }

  return result;
}

void sub_100157AB4(void *a1)
{
  v36.receiver = v1;
  v36.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v36, "buildMenuWithBuilder:", a1);
  sub_100018630(0, &unk_1004A1910);
  v3 = [a1 system];
  v4 = [objc_opt_self() mainSystem];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    sub_100018630(0, &unk_1004A6980);
    v6 = objc_opt_self();
    v7 = [v6 mainBundle];
    swift__string._object = 0xE000000000000000;
    v8._countAndFlagsBits = 0x4E454D5F4F444E55;
    v8._object = 0xEF454C5449545F55;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    swift__string._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, swift__string);

    v10 = String._bridgeToObjectiveC()();
    v11 = objc_opt_self();
    v12 = [v11 systemImageNamed:v10];

    v13 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v14 = [v6 mainBundle];
    swift__stringa._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0x4C415F5241454C43;
    v15._object = 0xE90000000000004CLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    swift__stringa._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, swift__stringa);

    v17 = String._bridgeToObjectiveC()();
    v18 = [v11 systemImageNamed:v17];

    v19 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    sub_100018630(0, &unk_1004A1920);
    LOBYTE(v11) = String._bridgeToObjectiveC()();
    sub_10000F974(&unk_1004A3F10);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_1003D56B0;
    *(preferredElementSize + 32) = v13;
    v21 = v13;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v37.value.super.isa = 0;
    v37.is_nil = v11;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v22, 0, v37, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
    LOBYTE(v11) = String._bridgeToObjectiveC()();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1003D56B0;
    *(v24 + 32) = v19;
    v25 = v19;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v38.value.super.isa = 0;
    v38.is_nil = v11;
    v27 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v38, 1, 0xFFFFFFFFFFFFFFFFLL, v24, v34).super.super.isa;
    v28 = swift_allocObject();
    *(v28 + 16) = isa;
    *(v28 + 24) = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1000250D0;
    *(v29 + 24) = v28;
    aBlock[4] = sub_10015A628;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10014B1C8;
    aBlock[3] = &unk_10046FAD0;
    v30 = _Block_copy(aBlock);
    v31 = isa;
    v32 = v27;

    [a1 replaceChildrenOfMenuForIdentifier:UIMenuEdit fromChildrenBlock:v30];

    _Block_release(v30);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_100158070(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (static Selector.== infix(_:_:)())
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      goto LABEL_3;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      goto LABEL_21;
    }

    v10 = result;
    v11 = *(**(result + qword_1004AF9D0) + 144);

    v11(v24, v12);

    v13 = sub_1001C95B8(1, v24[0], v24[1]);

    if (v13)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        __break(1u);
        goto LABEL_12;
      }

LABEL_3:
      a1 = result;
      v7 = *(result + qword_1004AF910);
      if (v7)
      {
        v8 = v7;
        v9 = sub_10014B260();

        a1 = v8;
LABEL_13:

        v14 = *(v9 + 2);

        return v14 != 0;
      }

LABEL_12:
      v9 = _swiftEmptyArrayStorage;
      goto LABEL_13;
    }

    sub_10006C92C(a2, v24, &unk_1004A6970);
    v15 = v25;
    if (v25)
    {
      v16 = sub_10000FEBC(v24, v25);
      v17 = *(v15 - 8);
      v18 = __chkstk_darwin(v16);
      v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      sub_10000FF00(v24);
    }

    else
    {
      v21 = 0;
    }

    v23.receiver = v2;
    v23.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v23, "canPerformAction:withSender:", a1, v21);
    swift_unknownObjectRelease();
    return v22;
  }
}

void sub_10015851C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[qword_1004AF910];
    if (v1)
    {
      v8 = Strong;
      *(swift_allocObject() + 16) = v1;
      sub_10000F974(&qword_1004ABB68);
      swift_allocObject();
      v2 = v1;
      v9[0] = Future.init(_:)();
      sub_10001D47C(&unk_1004ABB70, &qword_1004ABB68);
      v3 = Publisher.sink(receiveCompletion:receiveValue:)();

      *&v2[qword_1004AB638] = v3;

      v4 = *&v2[qword_1004AB518];
      if (v4)
      {
        [v4 dismissViewControllerAnimated:1 completion:0];
      }

      [*(*&v2[qword_1004AB508] + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
      v5 = *(**&v2[qword_1004AB540] + 400);

      v6 = v5(v9);
      *(v7 + 4) = 0;
      v6(v9, 0);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100158914()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[qword_1004AF910];
    if (v1)
    {
      v3 = Strong;
      v2 = v1;
      sub_10014F314();

      Strong = v3;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100158A70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100158AA8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100158AEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100158B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&unk_1004ABA88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100158B78()
{
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100158BF0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100158C34()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100158C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&unk_1004ABA88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100158D14(uint64_t a1, uint64_t a2, char a3)
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
      v13 = *v12 == a1 && v12[1] == a2;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v14 = 1;
        v15 = 1;
        goto LABEL_12;
      }
    }

    v15 = 0;
    v14 = 0;
  }

  else
  {
    v15 = 1;
    v14 = 1;
  }

LABEL_12:
  v16 = *(v7 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = *(v7 + 24);
  if (v18 < v17 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100199730();
    }

    else
    {
      if (v18 >= v17)
      {
        sub_10009F52C();
        if ((v15 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      sub_1001994F8();
    }

    v19 = *v3;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v20 = Hasher._finalize()();
    v21 = -1 << *(v19 + 32);
    v10 = v20 & ~v21;
    if ((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v22 = ~v21;
      while (1)
      {
        v23 = (*(v19 + 48) + 16 * v10);
        v24 = *v23 == a1 && v23[1] == a2;
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v10 = (v10 + 1) & v22;
        if (((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_31:
      if (v15)
      {
LABEL_32:
        v25 = *v3;
        *(*v3 + 8 * (v10 >> 6) + 56) |= 1 << v10;
        v26 = (*(v25 + 48) + 16 * v10);
        *v26 = a1;
        v26[1] = a2;
        v27 = *(v25 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (!v28)
        {
          result = 0;
          *(v25 + 16) = v29;
          return result;
        }

        goto LABEL_38;
      }
    }

LABEL_39:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if (v15)
  {
    goto LABEL_32;
  }

LABEL_35:
  v31 = (*(*v3 + 48) + 16 * v10);
  result = *v31;
  *v31 = a1;
  v31[1] = a2;
  return result;
}

uint64_t sub_100158F80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100158FB8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_100158FF8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100159044(char a1)
{
  if (a1)
  {
    v3 = *(**(v1 + qword_1004AB558) + 400);

    v4 = v3(v12);
    swift_unknownObjectWeakAssign();
    v4(v12, 0);

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[3] = 0;
    v6[4] = 0;
    v6[2] = v5;

    sub_10014FBDC(sub_10015AD64, v6);
  }

  else
  {
    v7 = *(v1 + qword_1004AB518);
    if (v7)
    {
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }

  [*(*(v1 + qword_1004AB508) + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
  v8 = *(**(v1 + qword_1004AB540) + 400);

  v9 = v8(v12);
  *(v10 + 4) = a1 & 1;
  v9(v12, 0);
}

uint64_t sub_10015928C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001592D8()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10015941C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015946C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001594B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100159520()
{
  v1 = v0;
  v2 = type metadata accessor for MeasurementsHistory();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;

  v7 = v0 + v4 + *(v2 + 20);
  v8 = type metadata accessor for MeasurementHistoryItem();
  v9 = *(*(v8 - 8) + 48);
  if (!v9(v7, 1, v8))
  {
    v51 = v9;
    v52 = v5;

    v10 = v7 + *(v8 + 24);
    v11 = type metadata accessor for MeasurementCapture();
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v12 = type metadata accessor for URL();
      v13 = *(*(v12 - 8) + 8);
      v13(v10, v12);
      v14 = v12;
      v4 = (v3 + 16) & ~v3;
      v13(v10 + *(v11 + 20), v14);
      v1 = v0;
    }

    v15 = v7 + *(v8 + 28);
    v49 = *(v15 + 432);
    v45 = *(v15 + 400);
    v47 = *(v15 + 416);
    v41 = *(v15 + 368);
    v43 = *(v15 + 384);
    v37 = *(v15 + 336);
    v39 = *(v15 + 352);
    v33 = *(v15 + 304);
    v35 = *(v15 + 320);
    v29 = *(v15 + 272);
    v31 = *(v15 + 288);
    v25 = *(v15 + 240);
    v27 = *(v15 + 256);
    sub_100159AC8(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64), *(v15 + 72), *(v15 + 80), *(v15 + 88), *(v15 + 96), *(v15 + 104), *(v15 + 112), *(v15 + 120), *(v15 + 128), *(v15 + 136), *(v15 + 144), *(v15 + 152), *(v15 + 160), *(v15 + 168), *(v15 + 176), *(v15 + 184), *(v15 + 192), *(v15 + 200), *(v15 + 208), *(v15 + 216), *(v15 + 224), *(v15 + 232), v25, *(&v25 + 1), v27, *(&v27 + 1), v29, *(&v29 + 1), v31, *(&v31 + 1), v33, *(&v33 + 1), v35, *(&v35 + 1), v37, *(&v37 + 1), v39, *(&v39 + 1), v41, *(&v41 + 1), v43, *(&v43 + 1), v45, *(&v45 + 1), v47, *(&v47 + 1), v49, *(&v49 + 1), *(v15 + 448));
    v5 = v52;
    v9 = v51;
  }

  v16 = v6 + *(v2 + 24);
  if (!v9(v16, 1, v8))
  {

    v17 = v16 + *(v8 + 24);
    v18 = type metadata accessor for MeasurementCapture();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      v53 = v5;
      v19 = type metadata accessor for URL();
      v20 = *(*(v19 - 8) + 8);
      v20(v17, v19);
      v21 = v19;
      v5 = v53;
      v20(v17 + *(v18 + 20), v21);
    }

    v22 = v16 + *(v8 + 28);
    v50 = *(v22 + 432);
    v46 = *(v22 + 400);
    v48 = *(v22 + 416);
    v42 = *(v22 + 368);
    v44 = *(v22 + 384);
    v38 = *(v22 + 336);
    v40 = *(v22 + 352);
    v34 = *(v22 + 304);
    v36 = *(v22 + 320);
    v30 = *(v22 + 272);
    v32 = *(v22 + 288);
    v26 = *(v22 + 240);
    v28 = *(v22 + 256);
    sub_100159AC8(*v22, *(v22 + 8), *(v22 + 16), *(v22 + 24), *(v22 + 32), *(v22 + 40), *(v22 + 48), *(v22 + 56), *(v22 + 64), *(v22 + 72), *(v22 + 80), *(v22 + 88), *(v22 + 96), *(v22 + 104), *(v22 + 112), *(v22 + 120), *(v22 + 128), *(v22 + 136), *(v22 + 144), *(v22 + 152), *(v22 + 160), *(v22 + 168), *(v22 + 176), *(v22 + 184), *(v22 + 192), *(v22 + 200), *(v22 + 208), *(v22 + 216), *(v22 + 224), *(v22 + 232), v26, *(&v26 + 1), v28, *(&v28 + 1), v30, *(&v30 + 1), v32, *(&v32 + 1), v34, *(&v34 + 1), v36, *(&v36 + 1), v38, *(&v38 + 1), v40, *(&v40 + 1), v42, *(&v42 + 1), v44, *(&v44 + 1), v46, *(&v46 + 1), v48, *(&v48 + 1), v50, *(&v50 + 1), *(v22 + 448));
  }

  v23 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v1, v23 + 8, v3 | 7);
}

uint64_t sub_100159AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  result = a57;
  v58 = (STACK[0x460] >> 38) & 3;
  if (((STACK[0x460] >> 38) & 3) > 1)
  {
    if (v58 != 2)
    {
      return result;
    }
  }

  else
  {
    if (!v58)
    {

      return sub_100159F54(a19, a20);
    }
  }
}

uint64_t sub_100159F54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

size_t sub_100159FD8()
{
  v1 = *(type metadata accessor for MeasurementsHistory() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10014C488(v0 + v2, v3);
}

uint64_t sub_10015A064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10015A0C4()
{
  v1 = v0;
  v2 = type metadata accessor for MeasurementHistoryItem();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v33 = *(*(v2 - 8) + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v34 = *(v6 + 64);

  v8 = v0 + v4;

  v9 = v8 + *(v2 + 24);
  v10 = type metadata accessor for MeasurementCapture();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v32 = v1;
    v11 = type metadata accessor for URL();
    v31 = v6;
    v12 = *(*(v11 - 8) + 8);
    v12(v9, v11);
    v13 = v11;
    v1 = v32;
    v12(v9 + *(v10 + 20), v13);
    v6 = v31;
  }

  v14 = *(v2 + 28);
  v15 = (v4 + v33 + v7) & ~v7;
  v16 = v8 + v14;
  v30 = *(v16 + 432);
  v28 = *(v16 + 400);
  v29 = *(v16 + 416);
  v26 = *(v16 + 368);
  v27 = *(v16 + 384);
  v24 = *(v16 + 336);
  v25 = *(v16 + 352);
  v22 = *(v16 + 304);
  v23 = *(v16 + 320);
  v20 = *(v16 + 272);
  v21 = *(v16 + 288);
  v18 = *(v16 + 240);
  v19 = *(v16 + 256);
  sub_100159AC8(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 40), *(v16 + 48), *(v16 + 56), *(v16 + 64), *(v16 + 72), *(v16 + 80), *(v16 + 88), *(v16 + 96), *(v16 + 104), *(v16 + 112), *(v16 + 120), *(v16 + 128), *(v16 + 136), *(v16 + 144), *(v16 + 152), *(v16 + 160), *(v16 + 168), *(v16 + 176), *(v16 + 184), *(v16 + 192), *(v16 + 200), *(v16 + 208), *(v16 + 216), *(v16 + 224), *(v16 + 232), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), *(v16 + 448));
  (*(v6 + 8))(v1 + v15, v5);

  return _swift_deallocObject(v1, v15 + v34, v3 | v7 | 7);
}

void sub_10015A458()
{
  v1 = *(type metadata accessor for MeasurementHistoryItem() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_10015094C(v5, v0 + v2, v6);
}

uint64_t sub_10015A540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015A5A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015A5E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10015A650()
{
  if (*(v0 + qword_1004AB570))
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    v3[2] = v2;
    v3[3] = sub_10015ABC0;
    v3[4] = v1;
    swift_retain_n();

    sub_10014FBDC(sub_10015AD64, v3);
  }

  else
  {
    v5 = *(**(v0 + qword_1004AB540) + 400);

    v6 = v5(v8);
    *(v7 + 4) = 0;
    v6(v8, 0);

    return [*(*(v0 + qword_1004AB508) + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
  }
}

uint64_t sub_10015A818()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + qword_1004AB508);
  v7 = OBJC_IVAR____TtC7Measure11HistoryView_tableView;
  result = [*(v6 + OBJC_IVAR____TtC7Measure11HistoryView_tableView) numberOfRowsInSection:{0, v3}];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = 0;
    v11 = (v2 + 8);
    while (1)
    {
      IndexPath.init(row:section:)();
      v12 = *(v6 + v7);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v14 = [v12 cellForRowAtIndexPath:isa];

      if (!v14)
      {
        return (*v11)(v5, v1);
      }

      ObjectType = swift_getObjectType();
      v16 = swift_conformsToProtocol2();
      if (!v16)
      {
        goto LABEL_9;
      }

      (*(v16 + 24))(ObjectType, v16);

      result = (*v11)(v5, v1);
      if (v9 == v10)
      {
        return result;
      }

      if (__OFADD__(v10++, 1))
      {
        __break(1u);
LABEL_9:

        return (*v11)(v5, v1);
      }
    }
  }

  return result;
}

uint64_t sub_10015A9FC()
{
  v1 = *(sub_10000F974(&unk_1004ABA88) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_10015AB28()
{
  v1 = *(sub_10000F974(&unk_1004ABA88) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100150444(v0 + v2, v3);
}

uint64_t sub_10015ABC8()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10015AC40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015AD68()
{
  _StringGuts.grow(_:)(27);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 592172;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 592172;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 592172;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 592172;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 592172;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  Double.write<A>(to:)();
  return 0;
}

void sub_10015AFA8(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 decodeIntegerForKey:v3];

  v5 = sub_100074810(v4);
  if (v5 == 10)
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return;
  }

  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 decodeIntegerForKey:v7];

  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = [a1 decodeObjectForKey:v9];

    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      if (swift_dynamicCast())
      {
        v11 = String._bridgeToObjectiveC()();

        v12 = CGPointFromString(v11);
        x = v12.x;
        y = v12.y;

LABEL_12:
        v15 = String._bridgeToObjectiveC()();
        [a1 decodeDoubleForKey:v15];
        v17 = v16;

        v18 = objc_allocWithZone(ObjectType);
        v18[OBJC_IVAR____TtC7Measure10FrameEvent_replayed] = 0;
        *&v18[OBJC_IVAR____TtC7Measure10FrameEvent_index] = v8;
        v18[OBJC_IVAR____TtC7Measure10FrameEvent_button] = v6;
        v19 = &v18[OBJC_IVAR____TtC7Measure10FrameEvent_position];
        *v19 = x;
        v19[1] = y;
        *&v18[OBJC_IVAR____TtC7Measure10FrameEvent_timestamp] = v17;
        v20.receiver = v18;
        v20.super_class = ObjectType;
        objc_msgSendSuper2(&v20, "init");

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return;
      }
    }

    else
    {
      sub_10002D238(v23);
    }

    x = 0.0;
    y = 0.0;
    goto LABEL_12;
  }

  __break(1u);
}

void sub_10015B274(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Measure10FrameEvent_index);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    [a1 encodeInteger:v2 forKey:v4];

    v5 = qword_1003DF600[*(v1 + OBJC_IVAR____TtC7Measure10FrameEvent_button)];
    v6 = String._bridgeToObjectiveC()();
    [a1 encodeInteger:v5 forKey:v6];

    v7 = NSStringFromPoint(*(v1 + OBJC_IVAR____TtC7Measure10FrameEvent_position));
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    v8 = String._bridgeToObjectiveC()();
    [a1 encodeObject:v7 forKey:v8];

    v9 = *(v1 + OBJC_IVAR____TtC7Measure10FrameEvent_timestamp);
    v10 = String._bridgeToObjectiveC()();
    [a1 encodeDouble:v10 forKey:v9];
  }
}

uint64_t sub_10015B47C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10015B7D4(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unsigned __int8 *sub_10015B7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10015C2E4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10015BD60(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10015C2E4();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10015C2E4()
{
  v0 = String.subscript.getter();
  v4 = sub_10015C364(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10015C364(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10015C4BC(v9, 0), v12 = sub_10015C530(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *sub_10015C4BC(uint64_t a1, uint64_t a2)
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

  sub_10000F974(&unk_1004ABBF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_10015C530(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10015C750(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10015C750(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10015C750(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_10015C7CC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unsigned __int8 *sub_10015C8C4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (v56 = a1, v57 = a2, v54 = 44, v55 = 0xE100000000000000, sub_1000748A4(), v9 = StringProtocol.components<A>(separatedBy:)(), , v9[2] < 6uLL))
  {
LABEL_74:

    return 0;
  }

  v10 = v9[5];
  v56 = v9[4];
  v57 = v10;

  static CharacterSet.whitespaces.getter();
  v11 = StringProtocol.trimmingCharacters(in:)();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);

  v16 = HIBYTE(v13) & 0xF;
  v17 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v18 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    goto LABEL_74;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    LOBYTE(v54) = 0;
    v20 = sub_10015BD60(v11, v13, 10);
    v33 = v51;
    goto LABEL_70;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v56 = v11;
    v57 = v13 & 0xFFFFFFFFFFFFFFLL;
    if (v11 == 43)
    {
      if (v16)
      {
        if (--v16)
        {
          v20 = 0;
          v28 = &v56 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              break;
            }

            v23 = __CFADD__(10 * v20, v29);
            v20 = 10 * v20 + v29;
            if (v23)
            {
              break;
            }

            ++v28;
            if (!--v16)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if (v11 != 45)
      {
        if (v16)
        {
          v20 = 0;
          v31 = &v56;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              break;
            }

            v23 = __CFADD__(10 * v20, v32);
            v20 = 10 * v20 + v32;
            if (v23)
            {
              break;
            }

            v31 = (v31 + 1);
            if (!--v16)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v16)
      {
        if (--v16)
        {
          v20 = 0;
          v24 = &v56 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              break;
            }

            v23 = 10 * v20 >= v25;
            v20 = 10 * v20 - v25;
            if (!v23)
            {
              break;
            }

            ++v24;
            if (!--v16)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

    __break(1u);
LABEL_87:
    __break(1u);
    return result;
  }

  if ((v11 & 0x1000000000000000) == 0)
  {
    goto LABEL_82;
  }

  for (result = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = _StringObject.sharedUTF8.getter())
  {
    v19 = *result;
    if (v19 == 43)
    {
      if (v17 < 1)
      {
        goto LABEL_85;
      }

      v16 = v17 - 1;
      if (v17 == 1)
      {
        goto LABEL_68;
      }

      v20 = 0;
      if (result)
      {
        v26 = result + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            goto LABEL_68;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            goto LABEL_68;
          }

          v23 = __CFADD__(10 * v20, v27);
          v20 = 10 * v20 + v27;
          if (v23)
          {
            goto LABEL_68;
          }

          ++v26;
          if (!--v16)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v19 == 45)
    {
      if (v17 < 1)
      {
        __break(1u);
        goto LABEL_84;
      }

      v16 = v17 - 1;
      if (v17 == 1)
      {
        goto LABEL_68;
      }

      v20 = 0;
      if (result)
      {
        v21 = result + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            break;
          }

          v23 = 10 * v20 >= v22;
          v20 = 10 * v20 - v22;
          if (!v23)
          {
            break;
          }

          ++v21;
          if (!--v16)
          {
            goto LABEL_69;
          }
        }

LABEL_68:
        v20 = 0;
        LOBYTE(v16) = 1;
        goto LABEL_69;
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_68;
      }

      v20 = 0;
      if (result)
      {
        do
        {
          v30 = *result - 48;
          if (v30 > 9)
          {
            goto LABEL_68;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            goto LABEL_68;
          }

          v23 = __CFADD__(10 * v20, v30);
          v20 = 10 * v20 + v30;
          if (v23)
          {
            goto LABEL_68;
          }

          ++result;
        }

        while (--v17);
      }
    }

    LOBYTE(v16) = 0;
LABEL_69:
    LOBYTE(v54) = v16;
    v33 = v16;
LABEL_70:

    if (v33)
    {
      goto LABEL_74;
    }

    if (v9[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_82:
    ;
  }

  v34 = v9[7];
  v56 = v9[6];
  v57 = v34;

  static CharacterSet.whitespaces.getter();
  v35 = StringProtocol.trimmingCharacters(in:)();
  v37 = v36;
  v14(v7, v4);

  v38 = sub_10015B47C(v35, v37);
  if (v39)
  {
    goto LABEL_74;
  }

  result = sub_100074810(v38);
  if (result == 10)
  {
    goto LABEL_74;
  }

  if (v9[2] < 6uLL)
  {
    goto LABEL_87;
  }

  v40 = result;
  v41 = v9[14];
  v42 = v9[15];

  v56 = v41;
  v57 = v42;
  static CharacterSet.whitespaces.getter();
  v43 = StringProtocol.trimmingCharacters(in:)();
  v45 = v44;
  v14(v7, v4);

  v56 = 0;
  v46 = sub_10015C7CC(v43, v45);

  if (v46)
  {
    v47 = v56;
    v48 = type metadata accessor for FrameEvent();
    v49 = objc_allocWithZone(v48);
    v49[OBJC_IVAR____TtC7Measure10FrameEvent_replayed] = 0;
    *&v49[OBJC_IVAR____TtC7Measure10FrameEvent_index] = v20;
    v49[OBJC_IVAR____TtC7Measure10FrameEvent_button] = v40;
    v50 = &v49[OBJC_IVAR____TtC7Measure10FrameEvent_position];
    *v50 = 0;
    v50[1] = 0;
    *&v49[OBJC_IVAR____TtC7Measure10FrameEvent_timestamp] = v47;
    v53.receiver = v49;
    v53.super_class = v48;
    return objc_msgSendSuper2(&v53, "init");
  }

  return 0;
}

_BYTE *sub_10015CEA4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

double *sub_10015CF24(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1000A27B4(0, v2, 0);
    v32 = _swiftEmptyArrayStorage;
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v33 = *(v1 + 36);
    v28 = v1 + 72;
    v29 = v2;
    v30 = v1 + 64;
    v31 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_36;
      }

      if (v33 != *(v1 + 36))
      {
        goto LABEL_37;
      }

      v9 = *(*(v1 + 48) + 8 * v5);

      _StringGuts.grow(_:)(18);
      v10 = (*(*v9 + 248))();
      if (v10 <= 2)
      {
        if (v10)
        {
          v11 = 0xE800000000000000;
          if (v10 == 1)
          {
            v12 = 0x6465727265666E69;
          }

          else
          {
            v12 = 0x6B6361626C6C6166;
          }
        }

        else
        {
          v11 = 0xE500000000000000;
          v12 = 0x74694B7261;
        }
      }

      else if (v10 > 4)
      {
        if (v10 == 5)
        {
          v11 = 0xE500000000000000;
          v12 = 0x6863746170;
        }

        else
        {
          v11 = 0xEA00000000006874;
          v12 = 0x706544656C707061;
        }
      }

      else if (v10 == 3)
      {
        v11 = 0xE500000000000000;
        v12 = 0x6C61636F6CLL;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73756F6976657270;
      }

      v13 = v11;
      String.append(_:)(*&v12);

      v14._countAndFlagsBits = 0x6823206874697720;
      v14._object = 0xED0000203A737469;
      String.append(_:)(v14);
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 124;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);

      v17 = v32;
      v19 = *(v32 + 2);
      v18 = *(v32 + 3);
      if (v19 >= v18 >> 1)
      {
        result = sub_1000A27B4((v18 > 1), v19 + 1, 1);
        v17 = v32;
      }

      *(v17 + 2) = v19 + 1;
      v20 = &v17[2 * v19];
      v20[4] = 0.0;
      v20[5] = -2.68156159e154;
      v1 = v31;
      v7 = 1 << *(v31 + 32);
      if (v5 >= v7)
      {
        goto LABEL_38;
      }

      v4 = v30;
      v21 = *(v30 + 8 * v8);
      if ((v21 & (1 << v5)) == 0)
      {
        goto LABEL_39;
      }

      v32 = v17;
      if (v33 != *(v31 + 36))
      {
        goto LABEL_40;
      }

      v22 = v21 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v7 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v8 << 6;
        v24 = v8 + 1;
        v25 = (v28 + 8 * v8);
        while (v24 < (v7 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_10008CE7C(v5, v33, 0);
            v7 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_10008CE7C(v5, v33, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v29)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

double *sub_10015D310(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

void sub_10015D478(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v9 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v10 = Contexts.PrivateQueue.init(_:)();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    *(v11 + 24) = a1;
    aBlock[4] = sub_10015FD18;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046FD68;
    v12 = _Block_copy(aBlock);
    v13 = v9;

    static DispatchQoS.unspecified.getter();
    v17 = _swiftEmptyArrayStorage;
    sub_100165990(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v16 + 8))(v5, v3);
    (*(v6 + 8))(v8, v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10015D7B0()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100165990(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10015D888()
{
  v1 = v0;
  v17 = type metadata accessor for DispatchPredicate();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_10015D7B0();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v16);
  (*(v9 + 8))(v11, v8);
  v12 = *(v0 + 24);
  *v4 = v12;
  v13 = v17;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v17);
  v14 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v13);
  if (v12)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
      *(v1 + 32) = 1;
      swift_getObjectType();
      OS_dispatch_source.resume()();
    }

    swift_unknownObjectRelease();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015DB74()
{
  sub_10015D888();

  return swift_deallocClassInstance();
}

uint64_t sub_10015DBC8()
{
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPhone()();
  if ((result & 1) == 0 || (result = [objc_opt_self() jasperAvailable], v1 = 0.25, (result & 1) == 0))
  {
    v1 = 0.15;
  }

  qword_1004ABC00 = *&v1;
  return result;
}

void sub_10015DC64()
{
  v1 = v0;
  sub_10000F974(&qword_1004ABEB0);
  swift_allocObject();
  v0[8] = CurrentValueSubject.init(_:)();
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&unk_1004A2520);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  v1[9] = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&qword_1004A7530) + 272);

  v1[10] = v7(v6, v4);
  v8 = swift_getKeyPath();
  v9 = *(sub_10000F974(&unk_1004A1940) + 272);

  v1[11] = v9(v8, v4);
  v10 = swift_getKeyPath();
  v11 = *(sub_10000F974(&unk_1004A3F40) + 272);

  v1[12] = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = sub_10000F974(&unk_1004ABEB8);
  v1[13] = (*(v13 + 272))(v12, v4);
  v14 = swift_getKeyPath();
  v15 = sub_10000F974(&qword_1004A3F80);
  v1[14] = (*(v15 + 272))(v14, v4);
  v1[16] = 0;
  sub_10000F974(&qword_1004ABEC8);
  swift_allocObject();
  v1[18] = Synchronized.init(wrappedValue:)();
  v1[19] = _swiftEmptyArrayStorage;
  sub_10000F974(&unk_1004ABED0);
  swift_allocObject();
  v1[20] = Synchronized.init(wrappedValue:)();
  v1[23] = 0x3FF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10015DFA4(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v2 + 184) = a1;
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v8 = *(&xmmword_1004D4AE8 + 1);
  if (!*(&xmmword_1004D4AE8 + 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  *v7 = Contexts.PrivateQueue.init(_:)();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v2 + 128))
  {
    return;
  }

  v11 = *(&xmmword_1004D4AE8 + 1);
  if (!*(&xmmword_1004D4AE8 + 1))
  {
LABEL_13:
    __break(1u);
    return;
  }

  v12 = Contexts.PrivateQueue.init(_:)();
  v13 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for RepeatingTimer();
  swift_allocObject();
  v14 = v11;
  v15 = sub_100164684(v12, sub_10015FD94, v13);

  *(v2 + 128) = v15;

  if (qword_1004A0238 != -1)
  {
LABEL_11:
    swift_once();
  }

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  _StringGuts.grow(_:)(114);
  v16._countAndFlagsBits = 0xD000000000000021;
  v16._object = 0x8000000100409B40;
  String.append(_:)(v16);
  Double.write<A>(to:)();
  v17._object = 0x8000000100409B70;
  v17._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v17);
  v20[1] = *(v2 + 176);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD000000000000036;
  v19._object = 0x8000000100409B90;
  String.append(_:)(v19);
  Log.default(_:isPrivate:)(v21, 0);
}

uint64_t sub_10015E2D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10015E330();
  }

  return result;
}

void sub_10015E330()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  Synchronized.wrappedValue.getter();

  if (aBlock._countAndFlagsBits)
  {

    return;
  }

  v47 = v7;
  v10 = *(**(v0 + 72) + 144);

  v10(&aBlock, v11);

  countAndFlagsBits = aBlock._countAndFlagsBits;
  v13 = sub_10015F598(aBlock._countAndFlagsBits, v0);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    if (qword_1004A0238 != -1)
    {
      swift_once();
    }

    aBlock._countAndFlagsBits = 0;
    aBlock._object = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v17._object = 0x8000000100409BD0;
    v17._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v17);
    v18._countAndFlagsBits = v15;
    v18._object = v16;
    String.append(_:)(v18);

    Log.debug(_:isPrivate:)(aBlock, 0);

    goto LABEL_12;
  }

  v19 = *(**(v0 + 96) + 144);

  v19(&aBlock, v20);

  if ((v54 & 1) != 0 || (v21 = [*(v0 + 120) session], v22 = objc_msgSend(v21, "currentFrame"), v21, !v22))
  {
LABEL_12:
    sub_10001B360(countAndFlagsBits);
    return;
  }

  v46 = v3;
  ariadne_trace(_:_:_:_:_:)();
  sub_10015EE00(sub_100165948, &unk_100470088);
  v23 = objc_allocWithZone(VNDetectRectanglesRequest);
  v52 = sub_100164D4C;
  v53 = v1;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v50 = sub_100163F58;
  v51 = &unk_10046FDE0;
  v24 = _Block_copy(&aBlock);

  v25 = [v23 initWithCompletionHandler:v24];
  _Block_release(v24);
  LODWORD(v26) = 981668463;
  [v25 setMinimumAspectRatio:v26];
  LODWORD(v27) = 1.0;
  [v25 setMaximumAspectRatio:v27];
  LODWORD(v28) = 30.0;
  [v25 setQuadratureTolerance:v28];
  LODWORD(v29) = 1036831949;
  [v25 setMinimumSize:v29];
  LODWORD(v30) = 1061997773;
  [v25 setMinimumConfidence:v30];
  [v25 setMaximumObservations:1000];
  v31 = [v22 capturedImage];
  sub_10019A754(_swiftEmptyArrayStorage);
  v44 = objc_allocWithZone(VNImageRequestHandler);
  type metadata accessor for VNImageOption(0);
  v45 = v22;
  sub_100165990(&qword_1004A0CA0, type metadata accessor for VNImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v44 = [v44 initWithCVPixelBuffer:v31 options:isa];

  v33 = qword_1004A0180;
  v34 = v45;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = ARKeyFrame.init(arFrame:interfaceOrientation:)();
  v45 = v34;
  aBlock._countAndFlagsBits = v35;
  aBlock._object = v36;

  v37 = v35;
  Synchronized.wrappedValue.setter();

  v43 = *(v1 + 136);
  v38 = swift_allocObject();
  v39 = v44;
  *(v38 + 16) = v44;
  *(v38 + 24) = v25;
  v52 = sub_100164D94;
  v53 = v38;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v50 = sub_100041180;
  v51 = &unk_10046FE30;
  v40 = _Block_copy(&aBlock);
  v44 = v39;
  v42 = v25;
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_100165990(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  sub_10001B360(countAndFlagsBits);
  _Block_release(v40);

  (*(v46 + 8))(v5, v2);
  (*(v47 + 8))(v9, v6);
}

void sub_10015EADC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_1004D4AE8 + 1);
  if (!*(&xmmword_1004D4AE8 + 1))
  {
    __break(1u);
    return;
  }

  *v5 = Contexts.PrivateQueue.init(_:)();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  if (!v1[16])
  {
    return;
  }

  v1[16] = 0;

  Synchronized.wrappedValue.getter();

  v15 = _swiftEmptyArrayStorage;
  Synchronized.wrappedValue.setter();

  v14._countAndFlagsBits = 0;
  v14._object = 0;

  Synchronized.wrappedValue.setter();

  if (qword_1004A0390 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v1[21] = qword_1004ABC00;
  v1[22] = 1;
  if (qword_1004A0238 != -1)
  {
    swift_once();
  }

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _StringGuts.grow(_:)(141);
  v9._countAndFlagsBits = 0xD00000000000003CLL;
  v9._object = 0x800000010040A100;
  String.append(_:)(v9);
  Double.write<A>(to:)();
  v10._object = 0x8000000100409B70;
  v10._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v10);
  v15 = v1[22];
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD000000000000036;
  v12._object = 0x8000000100409B90;
  String.append(_:)(v12);
  Log.default(_:isPrivate:)(v14, 0);
}

void sub_10015EE00(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v11 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v12 = Contexts.PrivateQueue.init(_:)();
    aBlock[4] = a1;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = a2;
    v13 = _Block_copy(aBlock);
    v14 = v11;

    static DispatchQoS.unspecified.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_100165990(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v17 + 8))(v7, v5);
    (*(v8 + 8))(v10, v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_10015F0E0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v7 = *(&xmmword_1004D4AE8 + 1);
  if (!*(&xmmword_1004D4AE8 + 1))
  {
    __break(1u);
    return;
  }

  *v6 = Contexts.PrivateQueue.init(_:)();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_12;
  }

  if (!*(a1 + 128))
  {
    return;
  }

  v10 = *(**(a1 + 72) + 144);

  v10(&v15, v11);

  v12 = v15;
  sub_10001B360(v15);
  v1 = *(a1 + 168);
  if (!(v12 >> 62))
  {
    if (v1 == 0.3)
    {
      return;
    }

    sub_10015EADC();
    *(a1 + 168) = 0x3FD3333333333333;
    *(a1 + 176) = 4;
    if (qword_1004A0238 != -1)
    {
      swift_once();
    }

    v13._object = 0x800000010040A0D0;
    v13._countAndFlagsBits = 0xD000000000000021;
    Log.default(_:isPrivate:)(v13, 0);
    goto LABEL_14;
  }

  if (qword_1004A0390 != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v1 == *&qword_1004ABC00)
  {
    return;
  }

  sub_10015EADC();
LABEL_14:
  sub_10015DFA4(*(a1 + 184));
}

uint64_t sub_10015F374()
{
}

uint64_t sub_10015F3FC()
{
  v0 = StateObserver.deinit();

  return v0;
}

uint64_t sub_10015F48C()
{
  sub_10015F3FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RectangleDetector()
{
  result = qword_1004ABCE0;
  if (!qword_1004ABCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015F598(unint64_t a1, void **a2)
{
  if (a1 >> 62 == 1)
  {
    goto LABEL_23;
  }

  if (a1 >> 62 != 2)
  {
    goto LABEL_9;
  }

  switch(a1)
  {
    case 0x8000000000000010:
      v3 = 1768186945;
      return v3 | 0x6120676E00000000;
    case 0x8000000000000020:
LABEL_23:
      if ([objc_opt_self() jasperAvailable])
      {
        return 0xD000000000000012;
      }

      break;
    case 0x8000000000000018:
      v3 = 1769369421;
      return v3 | 0x6120676E00000000;
  }

LABEL_9:
  v5 = *(*a2[11] + 144);

  v5(&v15, v6);

  if (BYTE3(v15) == 1)
  {
    return 0xD00000000000001BLL;
  }

  v7 = *(*a2[12] + 144);

  v7(&v15, v8);

  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  if (sub_100077EAC())
  {
    return 0x7420676E69766F4DLL;
  }

  v9 = *(*a2[13] + 144);

  v9(&v15, v10);

  if (v15 == 1 && [objc_opt_self() jasperAvailable])
  {
    return 0xD000000000000018;
  }

  v11 = *(*a2[14] + 144);

  v11(v13, v12);

  v21 = v13[6];
  v22 = v13[7];
  v23 = v13[8];
  v24 = v14;
  v17 = v13[2];
  v18 = v13[3];
  v19 = v13[4];
  v20 = v13[5];
  v15 = v13[0];
  v16 = v13[1];
  sub_10006C92C(&v15, v13, &qword_1004A1208);
  sub_100013BF8(&v15);
  v25[6] = v21;
  v25[7] = v22;
  v26 = v23;
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v25[5] = v20;
  v25[0] = v15;
  v25[1] = v16;
  if (sub_10001376C(v25) == 1)
  {
    return 0;
  }

  sub_100018F04(&v15, &qword_1004A1208);
  return 0xD000000000000012;
}

uint64_t sub_10015F90C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  v5 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v6 = Contexts.PrivateQueue.init(_:)();
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = a3;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100164DDC;
    *(v8 + 24) = v7;
    v13[4] = sub_100031688;
    v13[5] = v8;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000DC708;
    v13[3] = &unk_10046FEA8;
    v9 = _Block_copy(v13);
    v10 = v5;
    v11 = v4;

    dispatch_sync(v6, v9);

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10015FAC0(void *a1, void *a2)
{
  sub_10000F974(&unk_1004A3F10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003D56B0;
  *(v4 + 32) = a2;
  sub_100018630(0, &unk_1004ABE90);
  v5 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = 0;
  LODWORD(a1) = [a1 performRequests:isa error:&v10];

  v7 = v10;
  if (a1)
  {

    return v7;
  }

  else
  {
    v9 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    ariadne_trace(_:_:_:_:_:)();
  }
}

unint64_t sub_10015FC8C()
{
  result = qword_1004ABE60;
  if (!qword_1004ABE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABE60);
  }

  return result;
}

uint64_t sub_10015FCE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015FD44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015FD5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015FD9C(void *a1, uint64_t a2)
{
  ariadne_trace(_:_:_:_:_:)();
  v4 = [a1 results];
  if (v4)
  {
    v5 = v4;
    sub_100018630(0, &qword_1004A3ED0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v7)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v40 = _CocoaArrayWrapper.endIndex.getter();

    if (!v40)
    {
LABEL_4:
      ariadne_trace(_:_:_:_:_:)();
    }
  }

LABEL_5:

  Synchronized.wrappedValue.getter();

  if (!_[0]._countAndFlagsBits)
  {
LABEL_15:
    ariadne_trace(_:_:_:_:_:)();
    _[0]._object = 0;
    _[0]._countAndFlagsBits = 0;

    goto LABEL_16;
  }

  countAndFlagsBits = _[0]._countAndFlagsBits;
  object = _[0]._object;
  v8 = [a1 results];
  if (!v8 || (v9 = v8, sub_100018630(0, &qword_1004A3ED0), v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v9, v11 = sub_10015D310(v10), , !v11))
  {

    goto LABEL_15;
  }

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= 1)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (v12 < 1)
  {
LABEL_44:

    goto LABEL_15;
  }

LABEL_10:
  if (qword_1004A0238 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(38);

  _[0]._countAndFlagsBits = 0x6465766965636552;
  _[0]._object = 0xE900000000000020;
  __dst[0] = v12;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v14._object = 0x8000000100409C10;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x6465766965636552;
  v15._object = 0xE900000000000020;
  Log.debug(_:isPrivate:)(v15, 0);

  if (v11 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v17 = result;
  }

  else
  {
    v17 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = object;
  v18 = countAndFlagsBits;
  v44 = a2;
  if (!v17)
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_35:

    if (!*(v23 + 2))
    {

      ariadne_trace(_:_:_:_:_:)();

      Synchronized.wrappedValue.setter();

      return ariadne_trace(_:_:_:_:_:)();
    }

    Synchronized.wrappedValue.getter();

    v29 = *(v45 + 16);

    if (v29 >= *(v44 + 176))
    {

      Synchronized.wrappedValue.getter();

      CurrentValueSubject.send(_:)();

      Synchronized.wrappedValue.getter();

      Synchronized.wrappedValue.setter();
    }

    else
    {

      Synchronized.wrappedValue.getter();
      sub_100103CA0(v23);
      Synchronized.wrappedValue.setter();

      _StringGuts.grow(_:)(116);
      v30._object = 0x8000000100409C30;
      v30._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v30);

      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 0xD000000000000018;
      v32._object = 0x8000000100409C50;
      String.append(_:)(v32);
      v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v33);

      v34._countAndFlagsBits = 0xD00000000000003BLL;
      v34._object = 0x8000000100409C70;
      String.append(_:)(v34);

      Synchronized.wrappedValue.getter();

      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 47;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v37);

      v38._countAndFlagsBits = 41;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      Log.debug(_:isPrivate:)(v39, 0);
    }

    ariadne_trace(_:_:_:_:_:)();

LABEL_16:
    Synchronized.wrappedValue.setter();

    return ariadne_trace(_:_:_:_:_:)();
  }

  if (v17 >= 1)
  {
    v20 = 0;
    v21 = *(a2 + 120);
    v22 = v11;
    v43 = v11 & 0xC000000000000001;
    v23 = _swiftEmptyArrayStorage;
    do
    {
      if (v43)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *&v22[v20 + 4];
      }

      v25 = v24;
      if (!sub_100160608(v24, v21, v18, v19) || (VNRectangleObservation.quad.getter(), v26 = v18, WorldRectangleData.init(_:screenCoordinates:keyFrame:)(), memcpy(__dst, __src, sizeof(__dst)), sub_10012B5C4(__dst) == 1))
      {
      }

      else
      {
        memcpy(_, __dst, sizeof(_));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_10006875C(0, *(v23 + 2) + 1, 1, v23);
        }

        v28 = *(v23 + 2);
        v27 = *(v23 + 3);
        if (v28 >= v27 >> 1)
        {
          v23 = sub_10006875C((v27 > 1), v28 + 1, 1, v23);
        }

        *(v23 + 2) = v28 + 1;
        memcpy(&v23[304 * v28 + 32], _, 0x130uLL);
        v19 = object;
        v18 = countAndFlagsBits;
      }

      ++v20;
    }

    while (v17 != v20);
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_100160608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v391 = a4;
  v385 = type metadata accessor for DispatchWorkItemFlags();
  v381 = *(v385 - 8);
  __chkstk_darwin(v385);
  v383 = &v365 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v384 = type metadata accessor for DispatchQoS();
  v380 = *(v384 - 8);
  __chkstk_darwin(v384);
  v382 = &v365 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = 0;
  swift_beginAccess();
  *&v392 = v4;
  v10 = *(v4 + 152);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    *&v393 = a3;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *&v393 = a3;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  if (v11 < 1)
  {
    goto LABEL_278;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    [v13 removeFromSuperlayer];
  }

LABEL_10:
  v15 = _swiftEmptyArrayStorage;
  *(v392 + 152) = _swiftEmptyArrayStorage;

  [a1 boundingBox];
  if (qword_1004A0850 != -1)
  {
    v354 = v16;
    v355 = v17;
    v356 = v18;
    v357 = v19;
    swift_once();
    v19 = v357;
    v18 = v356;
    v17 = v355;
    v16 = v354;
  }

  *&v389 = v19;
  *&v390 = v18;
  v386 = v17;
  v387 = v16;
  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
LABEL_306:

LABEL_307:
    __break(1u);
LABEL_308:

    __break(1u);
    goto LABEL_309;
  }

  v394 = *(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 64);
  sub_10000F974(&unk_1004ABEA0);
  v20 = swift_allocObject();
  [a1 topLeft];
  v20[4] = v21;
  v20[5] = v22;
  [a1 topRight];
  v20[6] = v23;
  v20[7] = v24;
  [a1 bottomRight];
  v20[8] = v25;
  v20[9] = v26;
  [a1 bottomLeft];
  v20[10] = v27;
  v20[11] = v28;
  *&v437 = _swiftEmptyArrayStorage;
  sub_1000A26F4(0, 4, 0);
  v29 = v437;
  v30 = v391;
  convertToDisplayCoordinates(_:forKeyFrame:viewSize:)();
  v32 = v31;
  v34 = *(v29 + 16);
  v33 = *(v29 + 24);
  if (v34 >= v33 >> 1)
  {
    sub_1000A26F4((v33 > 1), v34 + 1, 1);
    v29 = v437;
  }

  *(v29 + 16) = v34 + 1;
  *(v29 + 8 * v34 + 32) = v32;
  convertToDisplayCoordinates(_:forKeyFrame:viewSize:)();
  v37 = *(v29 + 16);
  v36 = *(v29 + 24);
  if (v37 >= v36 >> 1)
  {
    v358 = v35;
    sub_1000A26F4((v36 > 1), v37 + 1, 1);
    v35 = v358;
    v29 = v437;
  }

  *(v29 + 16) = v37 + 1;
  *(v29 + 8 * v37 + 32) = v35;
  convertToDisplayCoordinates(_:forKeyFrame:viewSize:)();
  v40 = *(v29 + 16);
  v39 = *(v29 + 24);
  if (v40 >= v39 >> 1)
  {
    v359 = v38;
    sub_1000A26F4((v39 > 1), v40 + 1, 1);
    v38 = v359;
  }

  v5 = v437;
  *(v437 + 16) = v40 + 1;
  v5[v40 + 4] = v38;
  convertToDisplayCoordinates(_:forKeyFrame:viewSize:)();
  v43 = v5[2];
  v42 = v5[3];
  if (v43 >= v42 >> 1)
  {
    v360 = v41;
    sub_1000A26F4((v42 > 1), v43 + 1, 1);
    v41 = v360;
    v5 = v437;
  }

  v5[2] = (v43 + 1);
  v44 = &v5[4];
  v5[v43 + 4] = v41;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *&v437 = _swiftEmptyArrayStorage;
  sub_1000A26F4(0, 4, 0);
  v46 = v5[2];
  if (v46 < 4)
  {
    __break(1u);
  }

  else
  {
    v47 = v437;
    CGPoint.init(_:)();
    v15 = v393;
    ARFrame.viewToCamera(screenPoint:sceneView:orientation:)();
    SIMD2<>.init(_:)();
    v43 = *(v47 + 16);
    v46 = *(v47 + 24);
    v20 = (v43 + 1);
    if (v43 < v46 >> 1)
    {
      goto LABEL_23;
    }
  }

  v361 = v45;
  sub_1000A26F4((v46 > 1), v20, 1);
  v45 = v361;
  v47 = v437;
LABEL_23:
  *(v47 + 16) = v20;
  *(v47 + 8 * v43 + 32) = v45;
  CGPoint.init(_:)();
  ARFrame.viewToCamera(screenPoint:sceneView:orientation:)();
  SIMD2<>.init(_:)();
  v50 = *(v47 + 16);
  v49 = *(v47 + 24);
  if (v50 >= v49 >> 1)
  {
    v362 = v48;
    sub_1000A26F4((v49 > 1), v50 + 1, 1);
    v48 = v362;
    v47 = v437;
  }

  *(v47 + 16) = v50 + 1;
  *(v47 + 8 * v50 + 32) = v48;
  CGPoint.init(_:)();
  ARFrame.viewToCamera(screenPoint:sceneView:orientation:)();
  SIMD2<>.init(_:)();
  v53 = *(v47 + 16);
  v52 = *(v47 + 24);
  if (v53 >= v52 >> 1)
  {
    v363 = v51;
    sub_1000A26F4((v52 > 1), v53 + 1, 1);
    v51 = v363;
  }

  v54 = v437;
  *(v437 + 16) = v53 + 1;
  *(v54 + 8 * v53 + 32) = v51;
  CGPoint.init(_:)();
  ARFrame.viewToCamera(screenPoint:sceneView:orientation:)();
  SIMD2<>.init(_:)();
  v57 = *(v54 + 16);
  v56 = *(v54 + 24);
  v58 = v15;
  if (v57 >= v56 >> 1)
  {
    v364 = v55;
    sub_1000A26F4((v56 > 1), v57 + 1, 1);
    v55 = v364;
    v54 = v437;
  }

  *(v54 + 16) = v57 + 1;
  *(v54 + 32 + 8 * v57) = v55;
  sub_10000F974(&qword_1004A3E10);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1003D5730;
  v60 = v5[2];
  if (v60 < 3)
  {
    __break(1u);
    goto LABEL_277;
  }

  if (v60 == 3)
  {
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    swift_once();
LABEL_44:
    if (qword_1004D4AC8)
    {
      v93 = *(qword_1004D4AC8 + 80);
      if (v93)
      {
        v94 = objc_opt_self();
        v95 = v93;
        v96 = [v94 redColor];
        sub_100018630(0, &qword_1004A3F00);
        v394.i64[0] = static OS_dispatch_queue.main.getter();
        v97 = swift_allocObject();
        v97[2] = v95;
        v97[3] = v5;
        v97[4] = v96;
        v97[5] = 0xD000000000000014;
        v97[6] = 0x8000000100409F80;
        *&v439 = sub_100165A08;
        *(&v439 + 1) = v97;
        *&v437 = _NSConcreteStackBlock;
        *(&v437 + 1) = 1107296256;
        *&v438 = sub_100041180;
        *(&v438 + 1) = &unk_10046FF98;
        v98 = _Block_copy(&v437);
        v99 = v95;
        v100 = v96;

        v101 = v382;
        static DispatchQoS.unspecified.getter();
        *&v437 = _swiftEmptyArrayStorage;
        sub_100165990(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000F974(&unk_1004A3D80);
        sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
        v102 = v383;
        v103 = v385;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v104 = v394.i64[0];
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v98);

        (*(v381 + 8))(v102, v103);
        (*(v380 + 8))(v101, v384);
      }

      else
      {
      }

      if (qword_1004A0238 != -1)
      {
        swift_once();
      }

      v105 = "e rectangle... SUCCESS!";
      v106 = 0xD000000000000039;
LABEL_52:
      v107 = v105 | 0x8000000000000000;
      Log.debug(_:isPrivate:)(*&v106, 0);
      return 0;
    }

    goto LABEL_302;
  }

  v61 = v59;
  v388 = xmmword_1003D5730;
  v62 = vmul_f32(vcvt_f32_f64(v394), 0x3F0000003F000000);
  v63 = v5[7];
  v64 = vsub_f32(v5[6], v63);
  *(v59 + 32) = v64;
  v65 = vsub_f32(v5[4], v63);
  *(v59 + 40) = v65;
  *&v66 = COERCE_DOUBLE(swift_allocObject());
  *(v66 + 16) = v388;
  v67 = vmul_f32(v64, v64);
  v68 = vadd_f32(v67, vdup_lane_s32(v67, 1)).u32[0];
  v69 = vrsqrte_f32(v68);
  v70 = vmul_f32(v69, vrsqrts_f32(v68, vmul_f32(v69, v69)));
  v71 = vmul_n_f32(v64, vmul_f32(v70, vrsqrts_f32(v68, vmul_f32(v70, v70))).f32[0]);
  v72 = vmul_f32(v65, v65);
  LODWORD(v73) = vadd_f32(v72, vdup_lane_s32(v72, 1)).u32[0];
  v74 = vrsqrte_f32(LODWORD(v73));
  v75 = vmul_f32(v74, vrsqrts_f32(LODWORD(v73), vmul_f32(v74, v74)));
  v76 = vmul_n_f32(v65, vmul_f32(v75, vrsqrts_f32(LODWORD(v73), vmul_f32(v75, v75))).f32[0]);
  *(v66 + 32) = v71;
  *(v66 + 40) = v76;
  v77 = vsub_f32(v62, v63);
  v78 = vmul_f32(v77, v71);
  v79 = 1;
  if (vaddv_f32(v78) <= 0.0)
  {
    v82 = *&v390;
    v83 = *&v389;
  }

  else
  {
    v80 = vsub_f32(v62, vadd_f32(v63, vmul_n_f32(v71, vadd_f32(v78, vdup_lane_s32(v78, 1)).f32[0])));
    v81 = sqrtf(vaddv_f32(vmul_f32(v80, v80)));
    v82 = *&v390;
    v83 = *&v389;
    if (v81 > 0.0)
    {
      v79 = v81 >= sqrtf(v73);
    }
  }

  v84 = vmul_f32(v77, v76);
  if (vaddv_f32(v84) <= 0.0 || (v85 = vsub_f32(v62, vadd_f32(v63, vmul_n_f32(v76, vadd_f32(v84, vdup_lane_s32(v84, 1)).f32[0]))), v86 = sqrtf(vaddv_f32(vmul_f32(v85, v85))), v86 <= 0.0) || v79 || v86 >= sqrtf(vaddv_f32(v67)))
  {

    swift_setDeallocating();
    swift_deallocClassInstance();
    return 0;
  }

  v88 = v386;
  v87 = *&v387;
  *&v446.origin.x = v387;
  v446.origin.y = v386;
  v446.size.width = v82;
  v446.size.height = v83;
  MinX = CGRectGetMinX(v446);
  if (MinX < 0.01 || (v447.origin.x = v87, v447.origin.y = v88, v447.size.width = v82, v447.size.height = v83, MinY = CGRectGetMinY(v447), MinY < 0.01) || (v448.origin.x = v87, v448.origin.y = v88, v448.size.width = v82, v448.size.height = v83, MaxX = CGRectGetMaxX(v448), MaxX > 0.99) || (v449.origin.x = v87, v449.origin.y = v88, v449.size.width = v82, v449.size.height = v83, MaxY = CGRectGetMaxY(v449), MaxY > 0.99))
  {

    swift_setDeallocating();
    swift_deallocClassInstance();
    if (qword_1004A0180 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_281;
  }

  v378 = v54 + 32;
  v386 = *&v66;
  v109 = &v399;
  v425.i64[0] = _swiftEmptyArrayStorage;
  sub_1000A27D4(0, 4, 0);
  v110 = v425.i64[0];
  v111 = MeasureCore.shared.unsafeMutableAddressor();
  sub_100164DF4(v407);
  v443 = v407[6];
  v444 = v407[7];
  v445 = v407[8];
  v439 = v407[2];
  v440 = v407[3];
  v441 = v407[4];
  v442 = v407[5];
  v437 = v407[0];
  v438 = v407[1];
  v112 = v5[2];
  if (v112 < 4)
  {
    goto LABEL_293;
  }

  v394.i64[0] = v111;

  MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)();

  v109 = *(v110 + 16);
  v112 = *(v110 + 24);
  v44 = v109 + 1;
  if (v109 >= v112 >> 1)
  {
LABEL_294:
    sub_1000A27D4((v112 > 1), v44, 1);
    v110 = v425.i64[0];
  }

  *(v110 + 16) = v44;
  v113 = v110 + (v109 << 7);
  v114 = v413;
  *(v113 + 96) = v412;
  *(v113 + 112) = v114;
  *(v113 + 128) = v414;
  *(v113 + 144) = v415;
  v115 = v409;
  *(v113 + 32) = v408;
  *(v113 + 48) = v115;
  v116 = v411;
  *(v113 + 64) = v410;
  *(v113 + 80) = v116;

  MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)();

  v425.i64[0] = v110;
  v118 = *(v110 + 16);
  v117 = *(v110 + 24);
  v119 = v118 + 1;
  if (v118 >= v117 >> 1)
  {
    sub_1000A27D4((v117 > 1), v118 + 1, 1);
    v119 = v118 + 1;
    v110 = v425.i64[0];
  }

  *(v110 + 16) = v119;
  v120 = v110 + (v118 << 7);
  v121 = v408;
  v122 = v409;
  v123 = v411;
  *(v120 + 64) = v410;
  *(v120 + 80) = v123;
  *(v120 + 32) = v121;
  *(v120 + 48) = v122;
  v124 = v412;
  v125 = v413;
  v126 = v414;
  *(v120 + 144) = v415;
  *(v120 + 112) = v125;
  *(v120 + 128) = v126;
  *(v120 + 96) = v124;

  MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)();

  v425.i64[0] = v110;
  v128 = *(v110 + 16);
  v127 = *(v110 + 24);
  v129 = v128 + 1;
  if (v128 >= v127 >> 1)
  {
    sub_1000A27D4((v127 > 1), v128 + 1, 1);
    v129 = v128 + 1;
    v110 = v425.i64[0];
  }

  *(v110 + 16) = v129;
  v130 = v110 + (v128 << 7);
  v131 = v408;
  v132 = v409;
  v133 = v411;
  *(v130 + 64) = v410;
  *(v130 + 80) = v133;
  *(v130 + 32) = v131;
  *(v130 + 48) = v132;
  v134 = v412;
  v135 = v413;
  v136 = v414;
  *(v130 + 144) = v415;
  *(v130 + 112) = v135;
  *(v130 + 128) = v136;
  *(v130 + 96) = v134;

  MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)();

  v425.i64[0] = v110;
  v138 = *(v110 + 16);
  v137 = *(v110 + 24);
  v139 = v138 + 1;
  if (v138 >= v137 >> 1)
  {
    sub_1000A27D4((v137 > 1), v138 + 1, 1);
    v139 = v138 + 1;
    v110 = v425.i64[0];
  }

  v371 = v61;
  v377 = v54;
  *(v110 + 16) = v139;
  v140 = v110 + (v138 << 7);
  v141 = v408;
  v142 = v409;
  v143 = v411;
  *(v140 + 64) = v410;
  *(v140 + 80) = v143;
  *(v140 + 32) = v141;
  *(v140 + 48) = v142;
  v144 = v412;
  v145 = v413;
  v146 = v414;
  *(v140 + 144) = v415;
  *(v140 + 112) = v145;
  *(v140 + 128) = v146;
  *(v140 + 96) = v144;

  v147 = [v58 camera];
  [v147 transform];
  v375 = v149;
  v376 = v148;
  v373 = v151;
  v374 = v150;

  v152 = *(v110 + 16);
  v153 = v110;
  v372 = v110;
  v44 = &v399;
  if (v152)
  {
    v54 = 0;
    v58 = v110 + 144;
    v154 = -v152;
    v155 = _swiftEmptyArrayStorage;
    do
    {
      v156 = *(v153 + 16);
      if (v54 > v156)
      {
        v156 = v54;
      }

      v157 = -v156;
      v158 = (v58 + (v54++ << 7));
      while (1)
      {
        if (v157 + v54 == 1)
        {
          goto LABEL_279;
        }

        v159 = *(v158 - 7);
        v160 = *(v158 - 5);
        v426 = *(v158 - 6);
        v427 = v160;
        v425 = v159;
        v161 = *(v158 - 4);
        v162 = *(v158 - 3);
        v163 = *(v158 - 2);
        v431 = *(v158 - 2);
        v429 = v162;
        v430 = v163;
        v428 = v161;
        v164 = *(v158 - 1);
        if (v164)
        {
          break;
        }

        ++v54;
        v158 += 32;
        if (v154 + v54 == 1)
        {
          goto LABEL_78;
        }
      }

      LODWORD(v389) = *v158;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v416 = v155;
      *&v390 = v58;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000A27D4(0, *(v155 + 2) + 1, 1);
        v155 = v416;
      }

      v167 = *(v155 + 2);
      v166 = *(v155 + 3);
      if (v167 >= v166 >> 1)
      {
        sub_1000A27D4((v166 > 1), v167 + 1, 1);
        v155 = v416;
      }

      *(v155 + 2) = v167 + 1;
      v168 = &v155[16 * v167];
      v44 = &v399;
      v169 = v425;
      v170 = v427;
      *(v168 + 3) = v426;
      *(v168 + 4) = v170;
      *(v168 + 2) = v169;
      v171 = v428;
      v172 = v430;
      v173 = v431;
      *(v168 + 6) = v429;
      *(v168 + 7) = v172;
      *(v168 + 5) = v171;
      *(v168 + 16) = v173;
      *(v168 + 17) = v164;
      *(v168 + 36) = v389;
      v153 = v372;
      v58 = *&v390;
    }

    while (v154 + v54);
  }

  else
  {
    v155 = _swiftEmptyArrayStorage;
  }

LABEL_78:
  v109 = 0xD000000000000051;

  if (!*(v155 + 2))
  {

    v58 = *&v393;
    *&v196 = COERCE_DOUBLE(sub_100164E20(v5, v393, v30));
    v54 = v377;
    v387 = v196;
    if (*&v196 == 0.0)
    {

      swift_setDeallocating();
      swift_deallocClassInstance();
      swift_setDeallocating();
      swift_deallocClassInstance();

      if (qword_1004A0238 != -1)
      {
        swift_once();
      }

      v105 = "ion selected (Type: ";
      v106 = 0xD000000000000057;
      goto LABEL_52;
    }

    v61 = v371;
    if (qword_1004A0238 == -1)
    {
LABEL_108:
      v197._countAndFlagsBits = v109 + 6;
      v197._object = 0x8000000100409EE0;
      v368 = *algn_1004D4CB8;
      v369 = qword_1004D4CB0;
      v367 = qword_1004D4CC0;
      Log.debug(_:isPrivate:)(v197, 0);
      v198 = v378;
      goto LABEL_224;
    }

LABEL_300:
    swift_once();
    goto LABEL_108;
  }

  v399._countAndFlagsBits = _swiftEmptyDictionarySingleton;
  if (qword_1004A0238 != -1)
  {
    swift_once();
  }

  v174._countAndFlagsBits = 0xD000000000000056;
  v174._object = 0x8000000100409CB0;
  v368 = *algn_1004D4CB8;
  v369 = qword_1004D4CB0;
  v367 = qword_1004D4CC0;
  Log.debug(_:isPrivate:)(v174, 0);
  v175 = 0;
  v425.i64[0] = _swiftEmptyArrayStorage;
  v61 = *(v155 + 2);
  *&v389 = _swiftEmptyArrayStorage;
LABEL_82:
  v176 = (v175 << 7) + 136;
  while (v61 != v175)
  {
    if (v175 >= *(v155 + 2))
    {
      goto LABEL_280;
    }

    v109 = *(v155 + v176);
    v176 += 128;
    ++v175;
    if (v109)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v425.i64[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v425.i64[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v58 = *((v425.i64[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      *&v389 = v425.i64[0];
      goto LABEL_82;
    }
  }

  v396[0] = v389;
  if (v61)
  {
    v177 = 0;
    v58 = (v155 + 18);
    v370 = v61 - 1;
    *&v390 = _swiftEmptyArrayStorage;
    v44 = &v399;
    v387 = v155 + 18;
    do
    {
      v112 = v58 + (v177 << 7);
      v54 = v177;
      while (1)
      {
        if (v54 >= *(v155 + 2))
        {
          goto LABEL_284;
        }

        v178 = *(v112 - 112);
        v179 = *(v112 - 80);
        v426 = *(v112 - 96);
        v427 = v179;
        v425 = v178;
        v180 = *(v112 - 64);
        v181 = *(v112 - 48);
        v182 = *(v112 - 32);
        v431 = *(v112 - 16);
        v429 = v181;
        v430 = v182;
        v428 = v180;
        v109 = *(v112 - 8);
        if (!v109)
        {
          goto LABEL_303;
        }

        v183 = *(v109 + 48);
        if (v183 == 3 || v183 == 5)
        {
          break;
        }

        ++v54;
        v112 += 128;
        if (v61 == v54)
        {
          goto LABEL_110;
        }
      }

      v185 = *v112;

      v186 = v390;
      v187 = swift_isUniquelyReferenced_nonNull_native();
      *&v416 = v186;
      LODWORD(v388) = v185;
      if ((v187 & 1) == 0)
      {
        sub_1000A27D4(0, *(v186 + 16) + 1, 1);
        v186 = v416;
      }

      v189 = *(v186 + 16);
      v188 = *(v186 + 24);
      if (v189 >= v188 >> 1)
      {
        sub_1000A27D4((v188 > 1), v189 + 1, 1);
        v186 = v416;
      }

      v177 = v54 + 1;
      *(v186 + 16) = v189 + 1;
      *&v390 = v186;
      v190 = v186 + (v189 << 7);
      v44 = &v399;
      v191 = v425;
      v192 = v427;
      *(v190 + 48) = v426;
      *(v190 + 64) = v192;
      *(v190 + 32) = v191;
      v193 = v428;
      v194 = v430;
      v195 = v431;
      *(v190 + 96) = v429;
      *(v190 + 112) = v194;
      *(v190 + 80) = v193;
      *(v190 + 128) = v195;
      *(v190 + 136) = v109;
      *(v190 + 144) = v388;
      v58 = v387;
    }

    while (v370 != v54);
  }

  else
  {
    *&v390 = _swiftEmptyArrayStorage;
    v44 = &v399;
  }

LABEL_110:

  if (*(v390 + 16) >= 2uLL)
  {

    static SIMD2<>.average(_:)();
    MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)();

    v58 = v377;
    v109 = v371;
    v199 = v389;
    if (*(&v422 + 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v390 = sub_100068ABC(0, *(v390 + 16) + 1, 1, v390);
      }

      v201 = *(v390 + 16);
      v200 = *(v390 + 24);
      v202 = v201 + 1;
      if (v201 >= v200 >> 1)
      {
        *&v390 = sub_100068ABC((v200 > 1), v201 + 1, 1, v390);
      }

      v203 = v390;
      *(v390 + 16) = v202;
      v204 = v203 + (v201 << 7);
      v205 = v416;
      v206 = v417;
      v207 = v419;
      *(v204 + 64) = v418;
      *(v204 + 80) = v207;
      *(v204 + 32) = v205;
      *(v204 + 48) = v206;
      v208 = v420;
      v209 = v421;
      v210 = v422;
      *(v204 + 144) = v423;
      *(v204 + 112) = v209;
      *(v204 + 128) = v210;
      *(v204 + 96) = v208;
      v199 = v389;
    }

    else
    {
      v202 = *(v390 + 16);
    }

    if (v202 >= 3)
    {
      v44 = 0;
      v30 = v390 - 80;
      v211 = _swiftEmptyArrayStorage;
LABEL_124:
      v112 = v30 + (v44 << 7);
      while (v202 != v44)
      {
        if (v44 >= *(v390 + 16))
        {
          goto LABEL_288;
        }

        ++v44;
        v212 = *(v112 + 216);
        v112 += 128;
        if (v212)
        {
          simd_float4x4.position.getter();
          v394 = v213;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v211 = sub_100068BF0(0, *(v211 + 2) + 1, 1, v211);
          }

          v61 = *(v211 + 2);
          v214 = *(v211 + 3);
          if (v61 >= v214 >> 1)
          {
            v211 = sub_100068BF0((v214 > 1), v61 + 1, 1, v211);
          }

          *(v211 + 2) = v61 + 1;
          *&v211[2 * v61 + 4] = v394;
          v109 = v371;
          goto LABEL_124;
        }
      }

      type metadata accessor for PlaneUtil();
      static PlaneUtil.findBestPlane(points:facing:)();

      if (v424)
      {

        swift_setDeallocating();
        swift_deallocClassInstance();
        swift_setDeallocating();
        swift_deallocClassInstance();

        return 0;
      }

      static simd_float4x4.make(position:normalizedForward:)();
      sceneKitToARKit(_:)();
      v394 = v215;
      v391 = v216;
      v388 = v218;
      v389 = v217;
      v219 = objc_allocWithZone(ARAnchor);
      v220 = [v219 initWithTransform:{*v394.i64, *&v391, *&v389, *&v388}];
      type metadata accessor for WorldPlane();
      swift_allocObject();
      v221 = v220;
      v109 = WorldPlane.init(anchor:type:uncertainty:confidenceMultiplier:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v396[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v396[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v396[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v199 = v396[0];
    }
  }

  else
  {
    v199 = v389;
  }

  if (v199 >> 62)
  {
    v222 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v222 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v389 = v199;
  v394.i64[0] = v5;
  if (!v222)
  {
    goto LABEL_180;
  }

  v223 = 0;
  *&v391 = v389 & 0xC000000000000001;
  v387 = (v389 & 0xFFFFFFFFFFFFFF8);
  v370 = v389 + 32;
  v366 = "o reproject against...";
  v224 = _swiftEmptyDictionarySingleton;
  *&v388 = v222;
  while (1)
  {
    if (v391)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v226 = __OFADD__(v223++, 1);
      if (v226)
      {
        goto LABEL_286;
      }
    }

    else
    {
      v112 = v387[2];
      if (v223 >= v112)
      {
        goto LABEL_289;
      }

      v44 = *(v370 + 8 * v223);

      v226 = __OFADD__(v223++, 1);
      if (v226)
      {
        goto LABEL_286;
      }
    }

    v61 = (v224 + 8);
    v227 = 1 << *(v224 + 32);
    v228 = v227 < 64 ? ~(-1 << v227) : -1;
    v30 = v228 & v224[8];
    v54 = (v227 + 63) >> 6;

    *&v58 = 0.0;
    while (v30)
    {
LABEL_160:
      v109 = *(v224[6] + ((v58 << 9) | (8 * __clz(__rbit64(v30)))));

      v230 = sub_100163294(v44, v109, 0);
      if (v230 != 2 && (v230 & 1) != 0)
      {
        v231._countAndFlagsBits = 0xD00000000000004ALL;
        v231._object = (v366 | 0x8000000000000000);
        Log.debug(_:isPrivate:)(v231, 0);
        if (v224[2] && (v232 = sub_100198844(v109), (v233 & 1) != 0))
        {
          v30 = 0;
          v61 = *(v224[7] + 8 * v232);
        }

        else
        {
          v61 = 0;
          v30 = 1;
        }

        sub_1001244EC(v61, v30, v44);
        sub_1000C6934(v109);

        v5 = v394.i64[0];
        goto LABEL_167;
      }

      v30 &= v30 - 1;

      v5 = v394.i64[0];
    }

    while (1)
    {
      v229 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        goto LABEL_214;
      }

      if (v229 >= v54)
      {
        break;
      }

      v30 = *(v61 + 8 * v229);
      ++v58;
      if (v30)
      {
        v58 = v229;
        goto LABEL_160;
      }
    }

LABEL_167:

    countAndFlagsBits = v399._countAndFlagsBits;
    if (*(v399._countAndFlagsBits + 16))
    {

      sub_100198844(v44);
      v109 = v235;

      if (v109)
      {
        break;
      }
    }

    v225 = swift_isUniquelyReferenced_nonNull_native();
    v425.i64[0] = countAndFlagsBits;
    sub_1000BC5D0(1, v44, v225);

    v224 = v425.i64[0];
LABEL_143:
    v399._countAndFlagsBits = v224;
    if (v223 == v388)
    {
      goto LABEL_181;
    }
  }

  v30 = swift_isUniquelyReferenced_nonNull_native();
  v425.i64[0] = countAndFlagsBits;
  v61 = sub_100198844(v44);
  v112 = *(countAndFlagsBits + 16);
  v237 = (v236 & 1) == 0;
  v238 = v112 + v237;
  if (__OFADD__(v112, v237))
  {
    goto LABEL_290;
  }

  v109 = v236;
  if (*(countAndFlagsBits + 24) >= v238)
  {
    if (v30)
    {
      if ((v236 & 1) == 0)
      {
        goto LABEL_179;
      }
    }

    else
    {
      sub_1000BF314();
      if ((v109 & 1) == 0)
      {
        goto LABEL_179;
      }
    }

    goto LABEL_176;
  }

  sub_1000B9488(v238, v30);
  v239 = sub_100198844(v44);
  if ((v109 & 1) != (v240 & 1))
  {
    goto LABEL_311;
  }

  v61 = v239;
  if (v109)
  {
LABEL_176:
    v224 = v425.i64[0];
    v112 = *(v425.i64[0] + 56);
    v241 = *(v112 + 8 * v61);
    v226 = __OFADD__(v241, 1);
    v242 = v241 + 1;
    if (v226)
    {
      goto LABEL_291;
    }

    *(v112 + 8 * v61) = v242;

    goto LABEL_143;
  }

LABEL_179:
  __break(1u);
LABEL_180:
  v224 = _swiftEmptyDictionarySingleton;
LABEL_181:
  v109 = (v224 + 8);
  v243 = 1 << *(v224 + 32);
  v244 = -1;
  if (v243 < 64)
  {
    v244 = ~(-1 << v243);
  }

  v61 = v244 & v224[8];
  v44 = (v243 + 63) >> 6;
  *&v391 = v224;

  *&v58 = 0.0;
  v54 = 0;
LABEL_184:
  v112 = v54;
  v198 = v378;
  v387 = v58;
  while (v61)
  {
    v54 = v112;
LABEL_192:
    v249 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v250 = v391;
    v251 = (v54 << 9) | (8 * v249);
    v252 = *(*(v391 + 48) + v251);
    if (*&v58 == 0.0)
    {

      v58 = v252;
      goto LABEL_184;
    }

    v30 = *(*(v391 + 56) + v251);
    v253 = *(v391 + 16);

    if (!v253)
    {
      goto LABEL_307;
    }

    v255 = sub_100198844(v254);
    if ((v256 & 1) == 0)
    {
      goto LABEL_306;
    }

    v257 = *(*(v250 + 56) + 8 * v255);

    if (v257 < v30)
    {

      v58 = v252;
      v5 = v394.i64[0];
      goto LABEL_184;
    }

    v112 = *(v250 + 16);
    v5 = v394.i64[0];
    if (!v112)
    {
      goto LABEL_292;
    }

    v259 = sub_100198844(v258);
    if ((v260 & 1) == 0)
    {
      goto LABEL_308;
    }

    v261 = *(*(v250 + 56) + 8 * v259);

    if (v30 == v261)
    {
      v262 = sub_100163294(v252, v58, 1);
      if (v262 == 2)
      {
        v30 = *(*v252 + 232);

        v246 = (v30)(v245);
        v58 = v387;
        v247 = v246;

        if ((*(*v58 + 232))(v248) < v247)
        {
          goto LABEL_201;
        }
      }

      else if (v262)
      {
LABEL_201:

        v58 = v252;
        goto LABEL_184;
      }
    }

    v112 = v54;
    v198 = v378;
  }

  while (2)
  {
    v54 = v112 + 1;
    if (__OFADD__(v112, 1))
    {
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
      goto LABEL_287;
    }

    if (v54 < v44)
    {
      v61 = *(v109 + 8 * v54);
      ++v112;
      if (v61)
      {
        goto LABEL_192;
      }

      continue;
    }

    break;
  }

  if (*&v58 == 0.0)
  {

    v58 = *&v393;
    v54 = v377;
    v61 = v371;
    v44 = &v399;
    goto LABEL_223;
  }

  v425.i64[0] = 0;
  v425.i64[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(86);
  v263._countAndFlagsBits = 0xD000000000000034;
  v263._object = 0x8000000100409E40;
  String.append(_:)(v263);
  v264 = *(*v58 + 248);
  v109 = *v58 + 248;

  v266 = v264(v265);

  LODWORD(v229) = v266;
  v58 = *&v393;
  v54 = v377;
  v61 = v371;
  v44 = &v399;
  if (v266 <= 2u)
  {
    if (v266)
    {
      v267 = 0xE800000000000000;
      if (v266 == 1)
      {
        v268 = 0x6465727265666E69;
      }

      else
      {
        v268 = 0x6B6361626C6C6166;
      }
    }

    else
    {
      v267 = 0xE500000000000000;
      v268 = 0x74694B7261;
    }
  }

  else
  {
    if (v266 <= 4u)
    {
      if (v266 == 3)
      {
        v267 = 0xE500000000000000;
        v268 = 0x6C61636F6CLL;
      }

      else
      {
        v267 = 0xE800000000000000;
        v268 = 0x73756F6976657270;
      }

      goto LABEL_220;
    }

LABEL_214:
    if (v229 == 5)
    {
      v267 = 0xE500000000000000;
      v268 = 0x6863746170;
    }

    else
    {
      v267 = 0xEA00000000006874;
      v268 = 0x706544656C707061;
    }
  }

LABEL_220:
  v269 = v267;
  String.append(_:)(*&v268);

  v270._countAndFlagsBits = 0x6823206874697720;
  v270._object = 0xED0000203A737469;
  String.append(_:)(v270);
  v271 = v391;
  if (!*(v391 + 16))
  {
    __break(1u);
    goto LABEL_300;
  }

  v273 = sub_100198844(v272);
  if ((v274 & 1) == 0)
  {
LABEL_309:

    __break(1u);
LABEL_310:
    __break(1u);
LABEL_311:
    type metadata accessor for WorldPlane();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v275 = *(*(v271 + 56) + 8 * v273);

  v435 = v275;
  v276._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v276);

  v277._countAndFlagsBits = 0x6469646E6143202ELL;
  v277._object = 0xEE00203A73657461;
  String.append(_:)(v277);
  v278 = v379;
  sub_10015CF24(v271);
  v379 = v278;

  v279 = Array.description.getter();
  v281 = v280;

  v282._countAndFlagsBits = v279;
  v282._object = v281;
  String.append(_:)(v282);

  v283._countAndFlagsBits = 32;
  v283._object = 0xE100000000000000;
  String.append(_:)(v283);
  Log.debug(_:isPrivate:)(v425, 0);

  v198 = v378;
LABEL_223:

LABEL_224:
  v109 = *(v372 + 16);
  if (v109)
  {
    v30 = 0;
    v61 = 0;
    v44 = &unk_1003D7890;
    v284 = v58;
    v58 = v372;
    do
    {
      if (*&v387 == 0.0)
      {
        v285 = 0;
        v54 = 0;
        v286 = 0;
        v394 = 0u;
        v391 = 0u;
        v392 = 0u;
        v389 = 0u;
        v390 = 0u;
        v388 = 0u;
      }

      else
      {
        v112 = *(v54 + 16);
        if (v61 >= v112)
        {
          goto LABEL_285;
        }

        (*(*v387 + 312))(&v425, v284, 7, *(v198 + 8 * v61));
        v394 = v425;
        v391 = v427;
        v392 = v426;
        v388 = v430;
        v389 = v429;
        v390 = v428;
        v285 = v431;
        v54 = v432;
        v286 = v433;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v58 = COERCE_DOUBLE(sub_10006B928(v58));
      }

      v112 = *(v58 + 16);
      if (v61 >= v112)
      {
        goto LABEL_283;
      }

      ++v61;
      v287 = v58 + v30;
      v288 = *(v58 + v30 + 32);
      v289 = *(v58 + v30 + 48);
      v290 = *(v58 + v30 + 80);
      v401 = *(v58 + v30 + 64);
      v402 = v290;
      v399 = v288;
      v400 = v289;
      v291 = *(v58 + v30 + 96);
      v292 = *(v58 + v30 + 112);
      v293 = *(v58 + v30 + 128);
      v406 = *(v58 + v30 + 144);
      v404 = v292;
      v405 = v293;
      v403 = v291;
      v294 = v392;
      *(v287 + 32) = v394;
      *(v287 + 48) = v294;
      v295 = v390;
      *(v287 + 64) = v391;
      *(v287 + 80) = v295;
      v296 = v388;
      *(v287 + 96) = v389;
      *(v287 + 112) = v296;
      *(v287 + 128) = v285;
      *(v287 + 136) = v54;
      *(v287 + 144) = v286;
      sub_100018F04(&v399, &qword_1004A3E20);
      v30 += 128;
      v284 = v393;
      v54 = v377;
      v198 = v378;
    }

    while (v109 != v61);
    v109 = *(v58 + 16);
    v61 = v371;
    v44 = &v399;
  }

  else
  {
    v58 = v372;
  }

  v297 = v109 + 1;
  v298 = 136;
  while (--v297)
  {
    v299 = *(v58 + v298);
    v298 += 128;
    if (!v299)
    {
      swift_setDeallocating();
      swift_deallocClassInstance();
      swift_setDeallocating();
      swift_deallocClassInstance();

      if (qword_1004A0238 == -1)
      {
        goto LABEL_240;
      }

      goto LABEL_298;
    }
  }

  v301 = _swiftEmptyArrayStorage;
  v398 = _swiftEmptyArrayStorage;
  if (v109)
  {
    v30 = 0;
    v54 = v58 + 32;
    *&v389 = v397;
    *&v388 = v381 + 8;
    v379 = (v380 + 8);
    v372 = v58;
    *&v390 = v109;
    while (1)
    {
      v112 = *(v58 + 16);
      if (v30 >= v112)
      {
        break;
      }

      v302 = *v54;
      v303 = *(v54 + 16);
      v304 = *(v54 + 48);
      *(v44 + 32) = *(v54 + 32);
      *(v44 + 48) = v304;
      *v44 = v302;
      *(v44 + 16) = v303;
      v305 = *(v54 + 64);
      v306 = *(v54 + 80);
      v307 = *(v54 + 96);
      v406 = *(v54 + 112);
      *(v44 + 80) = v306;
      *(v44 + 96) = v307;
      *(v44 + 64) = v305;
      sub_10006C92C(&v399, v396, &qword_1004A3E20);
      if (qword_1004A0180 != -1)
      {
        swift_once();
      }

      if (!qword_1004D4AC8)
      {
        goto LABEL_304;
      }

      v308 = *(qword_1004D4AC8 + 80);
      if (v308)
      {
        v309 = objc_opt_self();
        v310 = v308;
        v311 = [v309 redColor];
        sub_100018630(0, &qword_1004A3F00);
        v394.i64[0] = static OS_dispatch_queue.main.getter();
        v312 = swift_allocObject();
        *(v312 + 16) = v310;
        *(v312 + 24) = v5;
        *(v312 + 32) = v311;
        strcpy((v312 + 40), "No plane found");
        *(v312 + 55) = -18;
        v397[2] = sub_100164E1C;
        v397[3] = v312;
        v396[0] = _NSConcreteStackBlock;
        v396[1] = 1107296256;
        v397[0] = sub_100041180;
        v397[1] = &unk_10046FEF8;
        v313 = _Block_copy(v396);
        *&v393 = v310;

        *&v392 = v311;

        v314 = v382;
        static DispatchQoS.unspecified.getter();
        v396[0] = _swiftEmptyArrayStorage;
        sub_100165990(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000F974(&unk_1004A3D80);
        sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
        v315 = v383;
        v316 = v385;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v317 = v394.i64[0];
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v318 = v313;
        v61 = v371;
        _Block_release(v318);

        v319 = v315;
        v44 = &v399;
        (*v388)(v319, v316);
        v320 = v314;
        v58 = v372;
        (*v379)(v320, v384);
      }

      v321 = *(&v405 + 1);
      if (!*(&v405 + 1))
      {
        goto LABEL_305;
      }

      v322 = *(v44 + 64);
      v393 = *(v44 + 48);
      v394 = v322;
      v323 = *(v44 + 32);
      v391 = *(v44 + 16);
      v392 = v323;
      v395 = 0;
      v324 = v375;
      *(v44 + 736) = v376;
      *(v44 + 752) = v324;
      v325 = v373;
      *(v44 + 768) = v374;
      *(v44 + 784) = v325;
      v434 = 0;
      v326 = *(*v321 + 232);

      v326(v327);
      LOBYTE(v396[0]) = 1;
      *(v44 + 816) = 0u;
      *(v44 + 832) = 0u;
      *(v44 + 848) = 0u;
      *(v44 + 864) = 0u;
      v436 = 1;
      type metadata accessor for WorldAnchor();
      swift_allocObject();
      WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v398 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v398 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v30;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100018F04(&v399, &qword_1004A3E20);
      v54 += 128;
      v109 = v390;
      if (v390 == v30)
      {
        v301 = v398;
        goto LABEL_254;
      }
    }

LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
    goto LABEL_294;
  }

LABEL_254:

  if ((v301 & 0xC000000000000001) != 0)
  {
    v329 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v328 = v329;
LABEL_257:
    v330 = (*(*v328 + 216))(v329);

    if (v330)
    {
      v332 = (*(*v330 + 160))(v331);
      [v332 transform];
      v393 = v334;
      v394 = v333;
      v391 = v336;
      v392 = v335;

      simd_float4x4.position.getter();
      v394 = v337;
      simd_float4x4.position.getter();
      v339 = vsubq_f32(v394, v338);
      v340 = vmulq_f32(v339, v339);
      if (sqrtf(v340.f32[2] + vaddv_f32(*v340.f32)) < 0.01)
      {
        if (qword_1004A0180 != -1)
        {
          swift_once();
        }

        if (qword_1004D4AC8)
        {
          v341 = *(qword_1004D4AC8 + 80);
          if (v341)
          {
            v342 = objc_opt_self();
            v343 = v341;
            v344 = [v342 redColor];
            sub_100018630(0, &qword_1004A3F00);
            v394.i64[0] = static OS_dispatch_queue.main.getter();
            v345 = swift_allocObject();
            v345[2] = v343;
            v345[3] = v5;
            v345[4] = v344;
            v345[5] = 0xD000000000000012;
            v345[6] = 0x8000000100409E20;
            *&v401 = sub_100165A08;
            *(&v401 + 1) = v345;
            v399._countAndFlagsBits = _NSConcreteStackBlock;
            v399._object = 1107296256;
            *&v400 = sub_100041180;
            *(&v400 + 1) = &unk_10046FF48;
            v346 = _Block_copy(&v399);
            *&v393 = v343;
            v347 = v344;

            v348 = v382;
            static DispatchQoS.unspecified.getter();
            v399._countAndFlagsBits = _swiftEmptyArrayStorage;
            sub_100165990(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
            sub_10000F974(&unk_1004A3D80);
            sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
            v349 = v383;
            v350 = v385;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v351 = v394.i64[0];
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v346);

            (*(v381 + 8))(v349, v350);
            (*(v380 + 8))(v348, v384);
          }

          else
          {
          }

          if (qword_1004A0238 != -1)
          {
            swift_once();
          }

          v399._countAndFlagsBits = 0;
          v399._object = 0xE000000000000000;
          _StringGuts.grow(_:)(84);
          v352._object = 0x8000000100409DC0;
          v352._countAndFlagsBits = 0xD000000000000051;
          String.append(_:)(v352);
          Float.write<A>(to:)();
          v353._countAndFlagsBits = 109;
          v353._object = 0xE100000000000000;
          String.append(_:)(v353);
          Log.debug(_:isPrivate:)(v399, 0);

          goto LABEL_271;
        }

        goto LABEL_310;
      }
    }

    return v301;
  }

  if (*((v301 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v328 = *(v301 + 32);

    goto LABEL_257;
  }

  __break(1u);
LABEL_298:
  swift_once();
LABEL_240:
  v300._object = 0x8000000100409D60;
  v300._countAndFlagsBits = 0xD000000000000051;
  Log.debug(_:isPrivate:)(v300, 0);
LABEL_271:

  return 0;
}

uint64_t sub_100163294(unsigned __int8 *a1, unsigned __int8 *a2, char a3)
{
  if (qword_1004A0238 != -1)
  {
    swift_once();
  }

  v5 = 0x74694B7261;
  _StringGuts.grow(_:)(84);
  v6._object = 0x8000000100409FA0;
  v6._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v6);
  v7 = 0xE500000000000000;
  v8 = a1[48];
  v9 = 0xE500000000000000;
  v10 = 0x6863746170;
  if (v8 != 5)
  {
    v10 = 0x706544656C707061;
    v9 = 0xEA00000000006874;
  }

  v11 = 0xE500000000000000;
  v12 = 0x6C61636F6CLL;
  if (v8 != 3)
  {
    v12 = 0x73756F6976657270;
    v11 = 0xE800000000000000;
  }

  if (a1[48] <= 4u)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = 0x6465727265666E69;
  if (v8 != 1)
  {
    v13 = 0x6B6361626C6C6166;
  }

  if (a1[48])
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v13 = 0x74694B7261;
  }

  if (a1[48] <= 2u)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  if (a1[48] <= 2u)
  {
    v15 = v7;
  }

  else
  {
    v15 = v9;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 0x797465736162202CLL;
  v17._object = 0xEC000000203A6570;
  String.append(_:)(v17);
  v18 = *(*a1 + 248);
  v19 = v18();
  if (v19 <= 2)
  {
    if (v19)
    {
      v20 = 0xE800000000000000;
      if (v19 == 1)
      {
        v21 = 0x6465727265666E69;
      }

      else
      {
        v21 = 0x6B6361626C6C6166;
      }
    }

    else
    {
      v20 = 0xE500000000000000;
      v21 = 0x74694B7261;
    }
  }

  else if (v19 > 4)
  {
    if (v19 == 5)
    {
      v20 = 0xE500000000000000;
      v21 = 0x6863746170;
    }

    else
    {
      v21 = 0x706544656C707061;
      v20 = 0xEA00000000006874;
    }
  }

  else if (v19 == 3)
  {
    v20 = 0xE500000000000000;
    v21 = 0x6C61636F6CLL;
  }

  else
  {
    v20 = 0xE800000000000000;
    v21 = 0x73756F6976657270;
  }

  v22 = v20;
  String.append(_:)(*&v21);

  v23._countAndFlagsBits = 0xD00000000000001DLL;
  v23._object = 0x8000000100409FC0;
  String.append(_:)(v23);
  v24 = 0xE500000000000000;
  v25 = a2[48];
  v26 = 0xE500000000000000;
  v27 = 0x6863746170;
  if (v25 != 5)
  {
    v27 = 0x706544656C707061;
    v26 = 0xEA00000000006874;
  }

  v28 = 0xE500000000000000;
  v29 = 0x6C61636F6CLL;
  if (v25 != 3)
  {
    v29 = 0x73756F6976657270;
    v28 = 0xE800000000000000;
  }

  if (a2[48] <= 4u)
  {
    v27 = v29;
    v26 = v28;
  }

  v30 = 0x6465727265666E69;
  if (v25 != 1)
  {
    v30 = 0x6B6361626C6C6166;
  }

  if (a2[48])
  {
    v24 = 0xE800000000000000;
  }

  else
  {
    v30 = 0x74694B7261;
  }

  if (a2[48] <= 2u)
  {
    v31 = v30;
  }

  else
  {
    v31 = v27;
  }

  if (a2[48] <= 2u)
  {
    v32 = v24;
  }

  else
  {
    v32 = v26;
  }

  v33 = v32;
  String.append(_:)(*&v31);

  v34._countAndFlagsBits = 0x797465736162202CLL;
  v34._object = 0xEC000000203A6570;
  String.append(_:)(v34);
  v35 = *(*a2 + 248);
  v36 = v35();
  if (v36 <= 2)
  {
    if (v36)
    {
      v37 = 0xE800000000000000;
      if (v36 == 1)
      {
        v5 = 0x6465727265666E69;
      }

      else
      {
        v5 = 0x6B6361626C6C6166;
      }
    }

    else
    {
      v37 = 0xE500000000000000;
    }
  }

  else if (v36 > 4)
  {
    if (v36 == 5)
    {
      v37 = 0xE500000000000000;
      v5 = 0x6863746170;
    }

    else
    {
      v5 = 0x706544656C707061;
      v37 = 0xEA00000000006874;
    }
  }

  else if (v36 == 3)
  {
    v37 = 0xE500000000000000;
    v5 = 0x6C61636F6CLL;
  }

  else
  {
    v37 = 0xE800000000000000;
    v5 = 0x73756F6976657270;
  }

  v38._countAndFlagsBits = v5;
  v38._object = v37;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 2113321;
  v39._object = 0xE300000000000000;
  String.append(_:)(v39);
  if (a3)
  {
    v40 = 0xD000000000000027;
  }

  else
  {
    v40 = 0xD000000000000022;
  }

  if (a3)
  {
    v41 = " B, due to plane type";
  }

  else
  {
    v41 = ") better than plane B (type: ";
  }

  v42 = v41 | 0x8000000000000000;
  String.append(_:)(*&v40);

  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  Log.debug(_:isPrivate:)(v43, 0);

  if (a3 & 1) != 0 || (v44 = (*(*a1 + 280))(a2), (v44))
  {
    v45 = (v18)(v44);
    v35();
    v46 = sub_10016398C(v8, v45, v25);
    if (v46 == 2)
    {
      v47._countAndFlagsBits = 0xD00000000000002BLL;
      v47._object = 0x800000010040A040;
      Log.debug(_:isPrivate:)(v47, 0);
      v48 = (*(*a1 + 232))();
      return (*(*a2 + 232))() < v48;
    }

    else
    {
      v50 = v46;
      v51._countAndFlagsBits = 0xD000000000000025;
      v51._object = 0x800000010040A070;
      Log.debug(_:isPrivate:)(v51, 0);
      return v50;
    }
  }

  else
  {
    v52._countAndFlagsBits = 0xD00000000000002CLL;
    v52._object = 0x800000010040A010;
    Log.debug(_:isPrivate:)(v52, 0);
    return 2;
  }
}

unint64_t sub_10016398C(unsigned __int8 a1, unsigned __int8 a2, char a3)
{
  v3 = 0x1010101010102;
  if (a1 > 3u)
  {
    if (a1 != 6)
    {
      if (a1 == 5)
      {
LABEL_14:
        v3 = 0x20100010100;
        return v3 >> (8 * a3);
      }

      while (1)
      {
LABEL_9:
        while (a2 <= 2u)
        {
          if (a2 - 1 >= 2)
          {
            return v3 >> (8 * a3);
          }
        }

        if (a2 > 4u)
        {
          break;
        }

        if (a2 != 4)
        {
          goto LABEL_12;
        }
      }

      if (a2 == 5)
      {
        goto LABEL_14;
      }
    }

    v3 = 0x2010101010100;
    return v3 >> (8 * a3);
  }

  if (a1 - 1 < 2)
  {
    goto LABEL_9;
  }

  if (a1)
  {
LABEL_12:
    v3 = 0x10102010100;
  }

  return v3 >> (8 * a3);
}

uint64_t sub_100163A34(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a3 + 16) <= a4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = objc_opt_self();
  v7 = [v6 yellowColor];
  v8 = [objc_allocWithZone(CAShapeLayer) init];
  v9 = [objc_allocWithZone(UIBezierPath) init];
  CGPoint.init(_:)();
  [v9 moveToPoint:?];
  CGPoint.init(_:)();
  [v9 addLineToPoint:?];
  v10 = [v9 CGPath];
  [v8 setPath:v10];

  [v8 setLineWidth:1.0];
  v11 = [v7 CGColor];
  [v8 setStrokeColor:v11];

  v12 = [v6 clearColor];
  v13 = [v12 CGColor];

  [v8 setFillColor:v13];
  v14 = [a2 layer];
  [v14 addSublayer:v8];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_7:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_100163CA8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(*(a3 + 16) + 16);
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = objc_opt_self();
  v8 = [v7 yellowColor];
  v9 = [objc_allocWithZone(CAShapeLayer) init];
  v10 = [objc_allocWithZone(UIBezierPath) init];
  CGPoint.init(_:)();
  [v10 moveToPoint:?];
  CGPoint.init(_:)();
  [v10 addLineToPoint:?];
  v11 = [v10 CGPath];
  [v9 setPath:v11];

  [v9 setLineWidth:1.0];
  v12 = [v8 CGColor];
  [v9 setStrokeColor:v12];

  v13 = [v7 clearColor];
  v14 = [v13 CGColor];

  [v9 setFillColor:v14];
  v15 = [a2 layer];
  [v15 addSublayer:v9];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_7:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_100163F58(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_100163FE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v34);
  v35 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v33 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004ABEB0);
  swift_allocObject();
  v2[8] = CurrentValueSubject.init(_:)();
  KeyPath = swift_getKeyPath();
  v12 = sub_10000F974(&unk_1004A2520);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v13 = qword_1004D5058;
  v14 = *(v12 + 272);
  swift_retain_n();
  v3[9] = v14(KeyPath, v13);
  v15 = swift_getKeyPath();
  v16 = *(sub_10000F974(&qword_1004A7530) + 272);

  v3[10] = v16(v15, v13);
  v17 = swift_getKeyPath();
  v18 = *(sub_10000F974(&unk_1004A1940) + 272);

  v3[11] = v18(v17, v13);
  v19 = swift_getKeyPath();
  v20 = *(sub_10000F974(&unk_1004A3F40) + 272);

  v3[12] = v20(v19, v13);
  v21 = swift_getKeyPath();
  v22 = sub_10000F974(&unk_1004ABEB8);
  v3[13] = (*(v22 + 272))(v21, v13);
  v23 = swift_getKeyPath();
  v24 = sub_10000F974(&qword_1004A3F80);
  v3[14] = (*(v24 + 272))(v23, v13);
  v3[16] = 0;
  v40 = 0;
  v41 = 0;
  sub_10000F974(&qword_1004ABEC8);
  swift_allocObject();
  v3[18] = Synchronized.init(wrappedValue:)();
  v3[19] = _swiftEmptyArrayStorage;
  v40 = _swiftEmptyArrayStorage;
  sub_10000F974(&unk_1004ABED0);
  swift_allocObject();
  v3[20] = Synchronized.init(wrappedValue:)();
  v3[23] = 0x3FF0000000000000;
  v3[15] = a1;
  v32[1] = sub_100018630(0, &qword_1004A3F00);
  v40 = 0;
  v41 = 0xE000000000000000;
  v25 = a1;
  _StringGuts.grow(_:)(19);
  if (qword_1004A01C0 != -1)
  {
    swift_once();
  }

  v27 = qword_1004D4B58;
  v26 = unk_1004D4B60;

  v40 = v27;
  v41 = v26;
  v28._object = 0x800000010040A1C0;
  v28._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v28);
  v32[0] = v41;
  v29 = v39;
  (*(v9 + 16))(v33, v39, v8);
  v40 = _swiftEmptyArrayStorage;
  sub_100165990(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000F974(&qword_1004ABEE0);
  sub_100038C44(&qword_1004A4030, &qword_1004ABEE0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  v3[17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_1004A0390 != -1)
  {
    swift_once();
  }

  v3[21] = qword_1004ABC00;
  v3[22] = 1;
  v42 = &type metadata for Configurations.Default;
  v43 = &protocol witness table for Configurations.Default;
  v30 = StateObserver.init(configuration:)();
  (*(v9 + 8))(v29, v8);
  return v30;
}

uint64_t sub_100164684(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v44 = a2;
  v53 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = (v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v43 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchTimeInterval();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = (v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for DispatchTime();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v36 - v14;
  v16 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 32) = 0;
  v36[1] = sub_100018630(0, &qword_1004ABE70);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100165990(&qword_1004ABE78, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10000F974(&qword_1004ABE80);
  sub_100038C44(&qword_1004ABE88, &qword_1004ABE80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v17 + 8))(v19, v16);
  v21 = v37;
  *(v37 + 16) = v20;
  swift_getObjectType();
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v38 + 8);
  v23 = v39;
  v22(v12, v39);
  *v10 = 0;
  v24 = v40;
  v25 = v41;
  (*(v40 + 104))(v10, enum case for DispatchTimeInterval.nanoseconds(_:), v41);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  (*(v24 + 8))(v10, v25);
  v22(v15, v23);
  swift_getObjectType();
  aBlock[4] = v44;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046FDB8;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v27 = v42;
  static DispatchQoS.unspecified.getter();
  v28 = v43;
  sub_10015D7B0();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v26);
  swift_unknownObjectRelease();
  (*(v48 + 8))(v28, v49);
  (*(v45 + 8))(v27, v47);

  v30 = v52;
  v29 = v53;
  *(v21 + 24) = v53;
  v32 = v50;
  v31 = v51;
  *v50 = v29;
  v33 = v29;
  (*(v31 + 104))(v32, enum case for DispatchPredicate.onQueue(_:), v30);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  result = (*(v31 + 8))(v32, v30);
  if (v33)
  {
    if ((*(v21 + 32) & 1) == 0)
    {
      *(v21 + 32) = 1;
      swift_getObjectType();
      OS_dispatch_source.resume()();
    }

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100164D54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100164D9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100164DF4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_100164E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v83 = a3;
  v78 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v76);
  v75 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = &qword_1004D4000;
  v66 = v6;
  v67 = v4;
  if (v8)
  {
    v10 = 0;
    v69 = (v4 + 8);
    v70 = &v97;
    v68 = (v6 + 8);
    v72 = v8 - 1;
    v73 = (a1 + 32);
    v11 = _swiftEmptyArrayStorage;
    v71 = v8;
    while (1)
    {
      v12 = *(a1 + 8 * v10 + 32);
      if (v72 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = v10 + 1;
      }

      v14 = v73[v13];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1000689B8(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_1000689B8((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      *&v11[v16 + 4] = vsub_f32(vadd_f32(v12, v14), v12);
      if (qword_1004A0180 == -1)
      {
        v17 = v9[345];
        if (!v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        swift_once();
        v17 = v9[345];
        if (!v17)
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      v18 = *(v17 + 80);
      if (v18)
      {
        sub_100018630(0, &qword_1004A3F00);
        v19 = v18;
        v80 = static OS_dispatch_queue.main.getter();
        v20 = swift_allocObject();
        v20[2] = v79;
        v20[3] = v19;
        v20[4] = a1;
        v20[5] = v10;
        *&v98 = sub_10016593C;
        *(&v98 + 1) = v20;
        *&v96 = _NSConcreteStackBlock;
        *(&v96 + 1) = 1107296256;
        *&v97 = sub_100041180;
        *(&v97 + 1) = &unk_100470060;
        v21 = _Block_copy(&v96);
        *&v81 = v11 + 4;
        v22 = a1;
        v23 = v21;
        v74 = v19;

        v24 = v75;
        static DispatchQoS.unspecified.getter();
        *&v96 = _swiftEmptyArrayStorage;
        sub_100165990(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000F974(&unk_1004A3D80);
        sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
        v25 = v11;
        v27 = v77;
        v26 = v78;
        v8 = v71;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v28 = v80;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v29 = v23;
        a1 = v22;
        _Block_release(v29);

        v30 = v27;
        v11 = v25;
        (*v69)(v30, v26);
        v31 = v24;
        v9 = &qword_1004D4000;
        (*v68)(v31, v76);
      }

      result = MeasureCore.shared.unsafeMutableAddressor();
      if (!*(v11 + 2))
      {
        goto LABEL_50;
      }

      sub_100164DF4(&v96);
      v111 = v102;
      v112 = v103;
      v113 = v104;
      v107 = v98;
      v108 = v99;
      v109 = v100;
      v110 = v101;
      v105 = v96;
      v106 = v97;

      MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)();

      v33 = v94;
      if (v94)
      {
        break;
      }

      if (v8 == ++v10)
      {
        goto LABEL_21;
      }
    }

LABEL_46:

    return v33;
  }

  else
  {
LABEL_20:
    v11 = _swiftEmptyArrayStorage;
LABEL_21:
    static SIMD2<>.average(_:)();
    v35 = v34;
    v93 = _swiftEmptyArrayStorage;

    sub_100103D98(v36);

    sub_100103D98(v37);
    v38 = 0;
    v39 = v93;
    v40 = *(v93 + 2);
    v69 = (v67 + 8);
    v70 = &v85;
    v68 = (v66 + 8);
    v80 = v40 - 1;
    v41 = vdup_n_s32(0x3E19999Au);
    LODWORD(v42) = 1.0;
    v81 = v42;
    v71 = v93;
    v65 = v40;
    while (1)
    {
      v43 = v38;
      result = swift_allocObject();
      *(result + 16) = _swiftEmptyArrayStorage;
      v44 = (result + 16);
      if (v40)
      {
        break;
      }

LABEL_43:
      LODWORD(v64) = 2.0;
      v81 = v64;
      v38 = 1;
      if (v43)
      {

        return 0;
      }
    }

    v72 = result;
    LODWORD(v67) = v43;
    if (*(v39 + 2))
    {
      v45 = 0;
      while (1)
      {
        v46 = *&v39[v45 + 4];
        swift_beginAccess();
        v47 = *v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v44 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v47 = sub_1000689B8(0, *(v47 + 2) + 1, 1, v47);
          *v44 = v47;
        }

        v50 = *(v47 + 2);
        v49 = *(v47 + 3);
        if (v50 >= v49 >> 1)
        {
          v47 = sub_1000689B8((v49 > 1), v50 + 1, 1, v47);
        }

        v51 = vadd_f32(v46, vmul_n_f32(vmul_f32(vsub_f32(v35, v46), v41), *&v81));
        *(v47 + 2) = v50 + 1;
        v47[v50 + 4] = *&v51;
        *v44 = v47;
        result = swift_endAccess();
        if (qword_1004A0180 == -1)
        {
          v52 = v9[345];
          if (!v52)
          {
            goto LABEL_51;
          }
        }

        else
        {
          result = swift_once();
          v52 = v9[345];
          if (!v52)
          {
            goto LABEL_51;
          }
        }

        v53 = *(v52 + 80);
        if (v53)
        {
          if (*(*v44 + 2) >= 2uLL)
          {
            sub_100018630(0, &qword_1004A3F00);
            v54 = v53;
            v74 = static OS_dispatch_queue.main.getter();
            v55 = swift_allocObject();
            v55[2] = v79;
            v55[3] = v54;
            v55[4] = v72;
            *&v86 = sub_1001658B0;
            *(&v86 + 1) = v55;
            *&v84 = _NSConcreteStackBlock;
            *(&v84 + 1) = 1107296256;
            *&v85 = sub_100041180;
            *(&v85 + 1) = &unk_100470010;
            v56 = _Block_copy(&v84);

            v73 = v54;

            v57 = v75;
            static DispatchQoS.unspecified.getter();
            *&v84 = _swiftEmptyArrayStorage;
            sub_100165990(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
            sub_10000F974(&unk_1004A3D80);
            sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
            v58 = v77;
            v59 = v11;
            v60 = v78;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v61 = v74;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            v62 = v56;
            v9 = &qword_1004D4000;
            _Block_release(v62);

            v63 = v60;
            v11 = v59;
            v39 = v71;
            (*v69)(v58, v63);
            (*v68)(v57, v76);
          }
        }

        result = MeasureCore.shared.unsafeMutableAddressor();
        if (!*(*v44 + 2))
        {
          break;
        }

        sub_100164DF4(&v84);
        v102 = v90;
        v103 = v91;
        v104 = v92;
        v98 = v86;
        v99 = v87;
        v100 = v88;
        v101 = v89;
        v96 = v84;
        v97 = v85;

        MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)();

        v33 = v95;
        if (v95)
        {

          goto LABEL_46;
        }

        if (v80 == v45)
        {

          v40 = v65;
          LOBYTE(v43) = v67;
          goto LABEL_43;
        }

        if (++v45 >= *(v39 + 2))
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
LABEL_48:
      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001657FC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016585C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001658D8(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100165990(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100165ABC(uint64_t a1)
{
  v3 = objc_opt_self();
  [v3 begin];
  v4 = 0.0;
  [v3 setAnimationDuration:0.0];
  v5 = OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill;
  v6 = [*(v1 + OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill) geometry];
  if (!v6)
  {
    goto LABEL_35;
  }

  v31 = v5;
  v32 = v1;
  v33 = v3;
  v30 = v6;
  v7 = [v6 materials];
  sub_100018630(0, &qword_1004AF720);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_34;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_34:

    v1 = v32;
    v3 = v33;
    v5 = v31;
LABEL_35:
    if ((a1 - 1) <= 8)
    {
      v4 = dbl_1003DF900[a1 - 1];
    }

    [*(v1 + v5) setOpacity:v4];

    [v3 commit];
    return;
  }

LABEL_4:
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = v8 & 0xC000000000000001;
    v12 = &off_100494000;
    v13 = &off_100494000;
    v34 = v9;
    while (1)
    {
      if (v11)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v8 + 8 * v10 + 32);
      }

      v17 = v16;
      v18 = [v16 v12[47]];
      if (a1 > 5)
      {
        if (a1 == 9)
        {
          if (qword_1004A05D0 != -1)
          {
            swift_once();
          }

          v15 = qword_1004D5148;
          goto LABEL_9;
        }

        if (a1 != 6)
        {
LABEL_29:
          v15 = [objc_opt_self() clearColor];
          goto LABEL_9;
        }

        if (qword_1004A07F8 != -1)
        {
          swift_once();
        }

        v19 = qword_1004D5370;
        v20 = *algn_1004D5378;
        if ((byte_1004D5380 & 1) == 0)
        {
LABEL_27:
          if (byte_1004AF8C0)
          {
            v14 = v20;
          }

          else
          {
            v14 = v19;
          }

          v15 = v14;
          goto LABEL_8;
        }

        v27 = byte_1004D5390;
        v28 = qword_1004D5388;
        v29 = byte_1004AF8C0;
        qword_1004D5370;
        v24 = v29;
        v25 = v28;
        v11 = v8 & 0xC000000000000001;
        v9 = v34;
        v26 = v27;
      }

      else
      {
        if (a1 != 5)
        {
          goto LABEL_29;
        }

        if (qword_1004A07F8 != -1)
        {
          swift_once();
        }

        v19 = qword_1004D5370;
        v20 = *algn_1004D5378;
        if ((byte_1004D5380 & 1) == 0)
        {
          goto LABEL_27;
        }

        v21 = byte_1004D5390;
        v22 = qword_1004D5388;
        v23 = byte_1004AF8C0;
        qword_1004D5370;
        v24 = v23;
        v25 = v22;
        v26 = v21;
        v11 = v8 & 0xC000000000000001;
        v9 = v34;
      }

      v15 = sub_10007836C(v24, v25, v26);
      sub_10009F954(v19, v20, 1);
LABEL_8:
      v12 = &off_100494000;
      v13 = &off_100494000;
LABEL_9:
      ++v10;
      [v18 v13[48]];

      if (v9 == v10)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
}

void sub_100165EA8(float32x4_t *a1)
{
  v2 = v1;
  static SIMD3<>.average(_:)();
  v4 = a1[1].i64[0];
  if (!v4)
  {
    goto LABEL_15;
  }

  sub_1000A2774(0, v4, 0);
  v5 = 0;
  do
  {
    SCNVector3.init(_:)();
    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      v12 = v6;
      v13 = v7;
      v14 = v8;
      sub_1000A2774((v9 > 1), v10 + 1, 1);
      v8 = v14;
      v7 = v13;
      v6 = v12;
    }

    ++v5;
    _swiftEmptyArrayStorage[2] = v10 + 1;
    v11 = _swiftEmptyArrayStorage + 3 * v10;
    v11[8] = v6;
    v11[9] = v7;
    v11[10] = v8;
  }

  while (v4 != v5);
  if (v4 == 2)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v4 == 1)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v15 = a1[2];
  v16 = vsubq_f32(a1[3], v15);
  v17 = vsubq_f32(a1[4], v15);
  v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), vnegq_f32(v16)), v17, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
  v19 = vmulq_f32(v18, v18);
  v19.f32[0] = sqrtf(v19.f32[1] + (v19.f32[2] + v19.f32[0]));
  v20.i32[0] = vextq_s8(v18, v18, 8uLL).u32[0];
  v20.i32[1] = v18.i32[0];
  *&v21 = vdiv_f32(v20, vdup_lane_s32(*v19.f32, 0));
  *(&v21 + 2) = v18.f32[1] / v19.f32[0];
  HIDWORD(v21) = 0;
  v53 = v21;
  sub_10000F974(&qword_1004A6AF0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1003D5730;
  SCNVector3.init(_:)();
  *(v22 + 32) = v23;
  *(v22 + 36) = v24;
  *(v22 + 40) = v25;
  SCNVector3.init(_:)();
  *(v22 + 44) = v26;
  *(v22 + 48) = v27;
  *(v22 + 52) = v28;
  sub_100018630(0, &qword_1004A9DF8);
  isa = SCNGeometrySource.init(vertices:)(_swiftEmptyArrayStorage).super.isa;
  v30 = SCNGeometrySource.init(normals:)(v22).super.isa;
  v31 = sub_1001665B4(byte_100465208, 24);
  v33 = v32;
  v34 = Data._bridgeToObjectiveC()().super.isa;
  v35 = [objc_opt_self() geometryElementWithData:v34 primitiveType:0 primitiveCount:2 bytesPerIndex:4];

  sub_10000F974(&unk_1004A3F10);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1003D6280;
  *(v36 + 32) = isa;
  *(v36 + 40) = v30;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1003D56B0;
  *(v37 + 32) = v35;
  v38 = isa;
  v39 = v30;
  v40 = v35;
  v41 = Array._bridgeToObjectiveC()().super.isa;

  sub_100018630(0, &qword_1004A9E00);
  v42 = Array._bridgeToObjectiveC()().super.isa;

  v43 = [objc_opt_self() geometryWithSources:v41 elements:v42];

  v44 = sub_10018C1EC(3);
  [v44 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018630(0, &qword_1004AF720);
  if (swift_dynamicCast())
  {
    v45 = v54;
  }

  else
  {
    v45 = [objc_allocWithZone(SCNMaterial) init];
  }

  [v43 setFirstMaterial:{v45, v53}];

  v46 = OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill;
  [*&v2[OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill] removeFromParentNode];
  v47 = [objc_opt_self() nodeWithGeometry:v43];
  v48 = *&v2[v46];
  *&v2[v46] = v47;
  v49 = v47;

  [v49 setRenderingOrder:-1];
  v50 = *&v2[v46];
  v51 = [v2 state];
  v52 = 0.0;
  if ((v51 - 1) <= 8)
  {
    v52 = dbl_1003DF900[(v51 - 1)];
  }

  [v50 setOpacity:v52];

  [v2 addChildNode:*&v2[v46]];
  SCNVector3.init(_:)();
  [v2 setPosition:?];

  sub_100038FD4(v31, v33);
}

uint64_t sub_1001664FC(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1001665B4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1001664FC(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void sub_100166664()
{
  if (*(v0 + 216))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v0 + 520))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(v0 + 516) >= *(v0 + 212))
  {
    memcpy(__dst, (v0 + 384), sizeof(__dst));
    memcpy(__src, (v0 + 384), sizeof(__src));
    nullsub_1(__src);
    memcpy(v7, (v0 + 704), sizeof(v7));
    sub_1000C1C28(__dst, v10);
    sub_100018F04(v7, &qword_1004AA300);
    memcpy((v0 + 704), __src, 0x130uLL);
    memcpy(v8, (v0 + 80), sizeof(v8));
    v1 = (v0 + 80);
  }

  else
  {
    memcpy(__dst, (v0 + 80), sizeof(__dst));
    memcpy(__src, (v0 + 80), sizeof(__src));
    nullsub_1(__src);
    memcpy(v7, (v0 + 704), sizeof(v7));
    sub_1000C1C28(__dst, v10);
    sub_100018F04(v7, &qword_1004AA300);
    memcpy((v0 + 704), __src, 0x130uLL);
    memcpy(v8, (v0 + 384), sizeof(v8));
    v1 = (v0 + 384);
  }

  memcpy(v9, v1, sizeof(v9));
  nullsub_1(v9);
  memcpy(v10, (v0 + 1008), sizeof(v10));
  sub_1000C1C28(v8, &v4);
  sub_100018F04(v10, &qword_1004AA300);
  memcpy((v0 + 1008), v9, 0x130uLL);
  memcpy(v10, (v0 + 1008), sizeof(v10));
  if (sub_10012B5C4(v10) == 1)
  {
    goto LABEL_13;
  }

  if (v10[17])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = *(&v10[16] + 1);
  memcpy(v9, (v0 + 704), sizeof(v9));
  if (sub_10012B5C4(v9) == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9[17] & 1) == 0)
  {
    v3 = v2 / *(&v9[16] + 1);
    *(v0 + 1316) = v2 / *(&v9[16] + 1);
    *(v0 + 1313) = v3 >= 0.7;
    return;
  }

LABEL_16:
  __break(1u);
}

void sub_1001668AC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v3 = 0;
  v85 = 0;
  if ((*(v1 + 40) & 1) == 0)
  {
    v3 = [objc_allocWithZone(UIView) initWithFrame:{*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32)}];
    v85 = _swiftEmptyArrayStorage;
    v4 = *(v1 + 688);
    v5 = objc_opt_self();
    v6 = [(float32x4_t *)v5 redColor];
    sub_10004DB70(v4, v6);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_64;
    }

    goto LABEL_3;
  }

  while (2)
  {
    memcpy(__dst, (v2 + 704), 0x130uLL);
    if (sub_10012B5C4(__dst) == 1 || (memcpy(v83, (v2 + 1008), sizeof(v83)), sub_10012B5C4(v83) == 1))
    {

      *(v2 + 1328) = 0;
      *(v2 + 1336) = 1;
LABEL_60:

      return;
    }

    v9 = *(v2 + 248);
    if (__dst[21])
    {
      if ((*(v2 + 248) & 1) == 0)
      {
LABEL_12:
        v10 = 688;
        v11 = 696;
        goto LABEL_17;
      }
    }

    else
    {
      if (*&__dst[20] != *(v2 + 240))
      {
        v9 = 1;
      }

      if (v9)
      {
        goto LABEL_12;
      }
    }

    v10 = 696;
    v11 = 688;
LABEL_17:
    v5 = __dst[3];
    if (!__dst[3])
    {
      goto LABEL_68;
    }

    v12 = *(v2 + v11);
    v72 = v2;
    v73 = v3;
    v13 = *(v2 + v10);
    v14 = *(__dst[3] + 16);
    if (!v14)
    {

      v16 = _swiftEmptyArrayStorage;
      if (v12[1].i64[0])
      {
        goto LABEL_24;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v86 = _swiftEmptyArrayStorage;

    sub_1000A2570(0, v14, 0);
    v16 = v86;
    v17 = v5 + 2;
    v18 = v86[1].u64[0];
    do
    {
      v19 = *v17;
      v86 = v16;
      v20 = v16[1].u64[1];
      if (v18 >= v20 >> 1)
      {
        v81 = v19;
        v82 = v15;
        sub_1000A2570((v20 > 1), v18 + 1, 1);
        v19 = v81;
        v15 = v82;
        v16 = v86;
      }

      v21 = vmulq_f32(v19, v19);
      *&v22 = v21.f32[2] + vaddv_f32(*v21.f32);
      *v21.f32 = vrsqrte_f32(v22);
      *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)));
      v23 = vmulq_n_f32(v19, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]);
      v23.i32[3] = v15;
      v16[1].i64[0] = v18 + 1;
      v16[v18 + 2] = v23;
      ++v17;
      ++v18;
      --v14;
    }

    while (v14);
    if (!v12[1].i64[0])
    {
      goto LABEL_54;
    }

LABEL_24:
    v77 = v12[2];

    v2 = v13[1].i64[0];
    if (!v2)
    {
LABEL_55:

      v70 = 0;
LABEL_56:

      *(v72 + 1328) = v70;
      *(v72 + 1336) = 0;
      v71 = sub_10004DA58(v85, v73);
      if (!v71)
      {

        goto LABEL_60;
      }

      v5 = v71;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v72 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v72 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_58;
      }

      goto LABEL_66;
    }

    if (v16[1].i64[0] < 2uLL)
    {
      __break(1u);
LABEL_66:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_58:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_60;
    }

    v74 = 0;
    v75 = 0;
    v27 = v77;
    v3 = v13 + 2;
    v76 = v5;
    while (1)
    {
      v28 = *v3;
      v30 = vsubq_f32(*v3, v27);
      v29 = COERCE_FLOAT(v3->i64[1]);
      v30.f32[2] = v29 - v77.f32[2];
      v31 = v16[2];
      v32 = vmulq_f32(v31, v30);
      v32.f32[0] = v32.f32[2] + vaddv_f32(*v32.f32);
      *&v26 = v77.f32[2] + vmuls_lane_f32(v32.f32[0], v31, 2);
      v33 = vadd_f32(*v27.f32, vmul_n_f32(*v31.f32, v32.f32[0]));
      v34 = 1;
      if (v32.f32[0] <= 0.0)
      {
        goto LABEL_34;
      }

      *v31.f32 = vsub_f32(*v28.f32, v33);
      v31.f32[2] = v29 - *&v26;
      v35 = vmulq_f32(v31, v31);
      v36 = sqrtf(v35.f32[2] + vaddv_f32(*v35.f32));
      if (v36 <= 0.0)
      {
        goto LABEL_34;
      }

      if (v5[1].i64[0] < 2uLL)
      {
        break;
      }

      v37 = vmulq_f32(v5[3], v5[3]);
      v34 = v36 >= sqrtf(v37.f32[2] + vaddv_f32(*v37.f32));
LABEL_34:
      v30.i32[3] = 0;
      v38 = v16[3];
      v39 = vmulq_f32(v30, v38);
      v39.f32[0] = v39.f32[2] + vaddv_f32(*v39.f32);
      *&v24 = v77.f32[2] + vmuls_lane_f32(v39.f32[0], v38, 2);
      v40 = vadd_f32(*v27.f32, vmul_n_f32(*v38.f32, v39.f32[0]));
      if (v39.f32[0] <= 0.0)
      {
        goto LABEL_45;
      }

      *v39.f32 = vsub_f32(*v28.f32, v40);
      v39.f32[2] = v29 - *&v24;
      v41 = vmulq_f32(v39, v39);
      v42 = sqrtf(v41.f32[2] + vaddv_f32(*v41.f32));
      if (v42 <= 0.0)
      {
        goto LABEL_45;
      }

      if (!v5[1].i64[0])
      {
        goto LABEL_62;
      }

      v43 = vmulq_f32(v5[2], v5[2]);
      if (v42 >= sqrtf(v43.f32[2] + vaddv_f32(*v43.f32)))
      {
        v34 = 1;
      }

      if (v34)
      {
        goto LABEL_45;
      }

      v75 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_63;
      }

      if (v85)
      {
        v78 = v26;
        v79 = v24;
        v80 = v25;
        v44 = objc_opt_self();
        v45 = [v44 whiteColor];
        v46 = [v44 clearColor];
        type metadata accessor for MeasureCamera();
        static ComputedCameraProperties.shared.getter();
        static ComputedCameraProperties.shared.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v47 = [objc_allocWithZone(CAShapeLayer) init];
        CGPoint.init(_:)();
        v50 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v48 startAngle:v49 endAngle:4.0 clockwise:{0.0, 6.28318531}];
        v51 = [v50 CGPath];
        [v47 setPath:v51];

        [v47 setLineWidth:1.0];
        v52 = [v45 CGColor];
        [v47 setStrokeColor:v52];

        v53 = [v46 CGColor];
        [v47 setFillColor:v53];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v74;
        v27 = v77;
        v24 = v79;
        v25 = v80;
        v26 = v78;
LABEL_45:
        if (v85)
        {
          v54 = objc_opt_self();
          v55 = [v54 purpleColor];
          type metadata accessor for MeasureCamera();
          static ComputedCameraProperties.shared.getter();
          static ComputedCameraProperties.shared.getter();
          static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          static ComputedCameraProperties.shared.getter();
          static ComputedCameraProperties.shared.getter();
          static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          v56 = [objc_allocWithZone(CAShapeLayer) init];
          v57 = [objc_allocWithZone(UIBezierPath) init];
          CGPoint.init(_:)();
          [v57 moveToPoint:?];
          CGPoint.init(_:)();
          [v57 addLineToPoint:?];
          v58 = [v57 CGPath];
          [v56 setPath:v58];

          [v56 setLineWidth:1.0];
          v59 = [v55 CGColor];
          [v56 setStrokeColor:v59];

          v60 = [v54 clearColor];
          v61 = [v60 CGColor];

          [v56 setFillColor:v61];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v85)
          {
            v62 = objc_opt_self();
            v63 = [v62 magentaColor];
            static ComputedCameraProperties.shared.getter();
            static ComputedCameraProperties.shared.getter();
            static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
            static ComputedCameraProperties.shared.getter();
            static ComputedCameraProperties.shared.getter();
            static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
            v64 = [objc_allocWithZone(CAShapeLayer) init];
            v65 = [objc_allocWithZone(UIBezierPath) init];
            CGPoint.init(_:)();
            [v65 moveToPoint:?];
            CGPoint.init(_:)();
            [v65 addLineToPoint:?];
            v66 = [v65 CGPath];
            [v64 setPath:v66];

            [v64 setLineWidth:1.0];
            v67 = [v63 CGColor];
            [v64 setStrokeColor:v67];

            v68 = [v62 clearColor];
            v69 = [v68 CGColor];

            [v64 setFillColor:v69];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          v27 = v77;
          v5 = v76;
        }

        goto LABEL_29;
      }

      ++v74;
LABEL_29:
      ++v3;
      if (!--v2)
      {

        v70 = v75;
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_3:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7 = *(v2 + 696);
    v8 = [(float32x4_t *)v5 greenColor];
    sub_10004DB70(v7, v8);

    if (v85)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      continue;
    }

    break;
  }

  __break(1u);
LABEL_68:
  __break(1u);
}