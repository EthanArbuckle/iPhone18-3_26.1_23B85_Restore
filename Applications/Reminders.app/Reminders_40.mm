Swift::Void __swiftcall TTRListDetailPresenter.requestUpdateColor(index:)(Swift::Int index)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 96);
  v36 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v33 - v7;
  v9 = type metadata accessor for TTRListColors.Color();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = TTRListDetailPresenter.colors.getter();
  if (index < 0)
  {
    __break(1u);
  }

  else if (*(v13 + 16) > index)
  {
    v33 = v4;
    v34 = v10;
    v14 = *(v10 + 16);
    v15 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * index;
    v35 = v9;
    v14(v12, v15, v9);

    if (qword_1007672E0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  swift_once();
LABEL_4:
  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_1007838B8);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v18 = TTRListColors.Color.description.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v18;
  *(inited + 56) = v19;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  (*(v5 + 24))(v36, v5);
  v20 = (*(*(v33 + 104) + 32))(v12, v8, *(v33 + 88));
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v20)
  {
    v21 = v20;
    v22._countAndFlagsBits = 0x432065676E616843;
    v22._object = 0xEC000000726F6C6FLL;
    v23._object = 0x8000000100687430;
    v23._countAndFlagsBits = 0xD00000000000002FLL;
    TTRLocalizedString(_:comment:)(v22, v23);
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();

    v26 = swift_allocObject();
    *(v26 + 16) = v2;
    *(v26 + 24) = v21;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_10046237C;
    *(v27 + 24) = v26;
    aBlock[4] = sub_1001A84C0;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_1007294F0;
    v28 = _Block_copy(aBlock);
    v29 = v21;

    [v24 withActionName:v25 block:v28];
    _Block_release(v28);

    (*(v34 + 8))(v12, v35);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if ((v28 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Unable to get list color", v32, 2u);
  }

  (*(v34 + 8))(v12, v35);
}

Swift::Void __swiftcall TTRListDetailPresenter.requestUpdateBadgeEmblem(index:)(Swift::Int index)
{
  v4 = index - 1;
  if (__OFSUB__(index, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  v1 = v2;
  type metadata accessor for TTRListBadgeEmblem();
  v5 = dispatch thunk of static TTRListBadgeEmblem.allBadges.getter();
  if (v4 >= *(v5 + 16))
  {
    goto LABEL_16;
  }

  v3 = *(v5 + 8 * v4 + 32);

  if (qword_1007672E0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_1007838B8);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  v10._countAndFlagsBits = 0x422065676E616843;
  v10._object = 0xEC00000065676461;
  v11._object = 0x8000000100687490;
  v11._countAndFlagsBits = 0xD00000000000002FLL;
  TTRLocalizedString(_:comment:)(v10, v11);
  v12 = objc_opt_self();
  v13 = String._bridgeToObjectiveC()();

  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1004623E0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1001A84C0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100729568;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  [v12 withActionName:v13 block:v16];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_7:
  if (qword_1007672E0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003E30(v19, qword_1007838B8);
  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315138;
    sub_100234DC8();
    v23 = BinaryInteger.description.getter();
    v25 = sub_100004060(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, oslog, v20, "Failed to update badge emblem because emblemIndex should not be less than 0 {emblemIndex: %s}", v21, 0xCu);
    sub_100004758(v22);
  }

  else
  {
  }
}

Swift::Void __swiftcall TTRListDetailPresenter.requestUpdateBadgeEmoji(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_1007672E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_1007838B8);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = countAndFlagsBits;
  *(inited + 56) = object;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  v7._countAndFlagsBits = 0x452065676E616843;
  v7._object = 0xEC000000696A6F6DLL;
  v8._object = 0x80000001006874F0;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  TTRLocalizedString(_:comment:)(v7, v8);
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();

  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = countAndFlagsBits;
  v11[4] = object;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100462444;
  *(v12 + 24) = v11;
  v15[4] = sub_1001A84C0;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100026440;
  v15[3] = &unk_1007295E0;
  v13 = _Block_copy(v15);

  [v9 withActionName:v10 block:v13];

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t TTRListDetailPresenter.requestUpdateListType(_:)(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v36 = *v1;
  v35 = type metadata accessor for TTRRemindersListListType();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = v4;
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v36[12];
  v6 = v36[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v29 - v9;
  (*(v5 + 24))(v6, v5, v8);
  if (qword_1007672E0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_1007838B8);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 40);
  v31 = v10;
  v15 = v14(AssociatedTypeWitness, AssociatedConformanceWitness);
  *(inited + 72) = sub_10001DF64();
  *(inited + 48) = v15;
  sub_100008E04(inited);
  v30 = AssociatedTypeWitness;
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  v16._object = 0x8000000100687540;
  v17._countAndFlagsBits = 0xD000000000000033;
  v17._object = 0x8000000100687560;
  v16._countAndFlagsBits = 0xD000000000000010;
  TTRLocalizedString(_:comment:)(v16, v17);
  v18 = objc_opt_self();
  v19 = String._bridgeToObjectiveC()();

  v20 = v33;
  v21 = v35;
  (*(v3 + 16))(v33, v34, v35);
  v22 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v6;
  v24 = v36;
  *(v23 + 3) = v36[11];
  *(v23 + 4) = v5;
  *(v23 + 5) = v24[13];
  *(v23 + 6) = v2;
  (*(v3 + 32))(&v23[v22], v20, v21);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1004624AC;
  *(v25 + 24) = v23;
  aBlock[4] = sub_1001A84C0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100729658;
  v26 = _Block_copy(aBlock);

  [v18 withActionName:v19 block:v26];
  _Block_release(v26);

  (*(v37 + 8))(v31, v30);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall TTRListDetailPresenter.shouldPresentConfirmationAlertForRemovingExistingSections()()
{
  v27 = *v0;
  v1 = v27[12];
  v30 = v27[10];
  v31 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v29 = v19 - v3;
  v26 = type metadata accessor for TTRListDetailViewModel();
  __chkstk_darwin(v26);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListListType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v7 + 104);
  v25(v9, enum case for TTRRemindersListListType.groceries(_:), v6);
  sub_100462550();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = *(v7 + 8);
  v10(v9, v6);
  if (v33 == v32)
  {
    v11 = *v0;
    v24 = AssociatedTypeWitness;
    v22 = v11[15];
    v23 = v10;
    v12 = *(v31 + 24);
    v13 = v29;
    v19[1] = v0[2];
    v20 = v12;
    v21 = v31 + 24;
    (v12)(v30);
    v14 = v24;
    (*(v27[13] + 16))(v13, v27[11]);
    v28 = *(v28 + 8);
    (v28)(v13, v14);
    v25(v9, enum case for TTRRemindersListListType.standard(_:), v6);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v23(v9, v6);
    if (v33 == v32)
    {
      v15 = v29;
      v20(v30, v31);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v17 = (*(AssociatedConformanceWitness + 96))(v14, AssociatedConformanceWitness);
      (v28)(v15, v14);
    }

    else
    {
      v17 = 0;
    }

    sub_1004625A8(v5);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

Swift::Void __swiftcall TTRListDetailPresenter.removeExistingSections()()
{
  v1._countAndFlagsBits = 0x732065766F6D6552;
  v1._object = 0xEF736E6F69746365;
  v2._object = 0x80000001006875A0;
  v2._countAndFlagsBits = 0xD00000000000006FLL;
  TTRLocalizedString(_:comment:)(v1, v2);
  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();

  v5 = swift_allocObject();
  *(v5 + 16) = sub_100462604;
  *(v5 + 24) = v0;
  v7[4] = sub_1001A84C0;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100026440;
  v7[3] = &unk_1007296A8;
  v6 = _Block_copy(v7);

  [v3 withActionName:v4 block:v6];

  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

uint64_t sub_100460520()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007838B8);
  v1 = sub_100003E30(v0, qword_1007838B8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *TTRListDetailPresenter.__allocating_init(interactor:viewModelSource:undoManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_allocObject();
  v8 = sub_100461E24(a1, a2, a3);

  (*(*(*(v4 + 88) - 8) + 8))(a2);
  swift_unknownObjectRelease();
  return v8;
}

Swift::Int sub_100460708()
{
  Hasher.init(_seed:)();
  TTRListDetailSavedObjectID.ObjectType.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t TTRListDetailPresenter.__deallocating_deinit()
{
  TTRListDetailPresenter.deinit();

  return swift_deallocClassInstance();
}

char *sub_100460820(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_1007839B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

unint64_t sub_100460914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100781288);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100009044(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100460A28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007708F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000794C(v4, &v11, &unk_100776BE0);
      v5 = v11;
      result = sub_1003B3EE0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100007DD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100460B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&unk_10076B980);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1003AB368(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100460C58(uint64_t a1)
{
  v2 = sub_100058000(&qword_100783968);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_100781268);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_100783968);
      v11 = *v5;
      result = sub_1002613B0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for TTRSectionID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100460E40(uint64_t a1)
{
  v2 = sub_100058000(&qword_100783980);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_100781300);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_100783980);
      result = sub_1003AB490(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TTRRemindersListPostponeType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007758E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100009044(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461124(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007812F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = v5;
      result = sub_1003AB564(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461210(uint64_t a1)
{
  v2 = sub_100058000(&qword_100783970);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_100781270);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_100783970);
      result = sub_1003AB5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TTRSectionID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for REMRemindersListDataView.SectionLite();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461430(uint64_t a1)
{
  v2 = sub_100058000(&qword_100783978);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_100781280);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_100783978);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100009044(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for REMRemindersListDataView.SectionLite();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100461644(void *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v4 = a1[2];
  if (!v4)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100058000(a2);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  v11 = a4(v9);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  result = v9;
  v15 = a1 + 9;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v7[6] + 8 * v13) = result;
    v16 = (v7[7] + 16 * v13);
    *v16 = v8;
    v16[1] = v10;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v20 = v15 + 3;
    v21 = *(v15 - 2);
    v22 = *(v15 - 1);
    v10 = *v15;

    v13 = a4(v21);
    v15 = v20;
    v8 = v22;
    result = v21;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100461778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100783950);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1003B3EE0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10046187C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100783958);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000794C(v4, &v11, &qword_100783960);
      v5 = v11;
      result = sub_1003B3EE0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100007DD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1004619A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007839B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1003B3EE0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007839A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100009044(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 24 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100783988);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000794C(v4, v13, &qword_100783990);
      result = sub_1003AB968(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100007DD8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007812B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000794C(v4, &v11, &qword_100783998);
      v5 = v11;
      result = sub_1003B3EE0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100007DD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_100461E24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v28 = a2;
  v8 = *v4;
  v9 = type metadata accessor for TTRRemindersListListType();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[12];
  v30 = v8[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v28 - v13;
  v15 = type metadata accessor for TTRListDetailViewModel();
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 2) = a1;
  v29 = v8;
  v20 = v8[15];
  v21 = v8[11];
  (*(*(v21 - 8) + 16))(&v4[v20], a2, v21, v17);
  *&v4[*(*v4 + 128)] = a3;
  v22 = *(v11 + 24);
  swift_unknownObjectRetain();
  v23 = a3;
  v22(v30, v11);
  (*(v29[13] + 16))(v14, v21);
  (*(v31 + 8))(v14, v32);
  v25 = v33;
  v24 = v34;
  v26 = v35;
  (*(v34 + 16))(v33, &v19[*(v16 + 76)], v35);
  sub_1004625A8(v19);
  (*(v24 + 32))(&v4[*(*v4 + 136)], v25, v26);
  return v4;
}

char *_s9Reminders22TTRListDetailPresenterC6badgesSayAA0bC15AppearanceBadgeVGvg_0()
{
  type metadata accessor for TTRListBadgeEmblem();
  v0 = dispatch thunk of static TTRListBadgeEmblem.allBadges.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_1004A223C(0, v1, 0);
    v2 = 32;
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v4 = *(v0 + v2);
      v5 = REMListBadgeEmblem.image.getter();
      v6 = REMListBadgeEmblem.name.getter();
      v20 = v3;
      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_1004A223C((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v3 = v20;
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[32 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v6;
      *(v10 + 6) = v7;
      *(v10 + 7) = v4;
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
  }

  v13 = static TTRCommonAsset.Image.emojiIcon.getter();
  v14._countAndFlagsBits = 0x696A6F6D45;
  v15._object = 0x8000000100687630;
  v14._object = 0xE500000000000000;
  v15._countAndFlagsBits = 0xD000000000000014;
  v16 = TTRLocalizedString(_:comment:)(v14, v15);
  v17 = *(v3 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v17 >= *(v3 + 3) >> 1)
  {
    v3 = sub_100547A78(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v3);
  }

  sub_1000EDD80(0, 0, 1, v13, v16._countAndFlagsBits, v16._object, 0);
  return v3;
}

unint64_t sub_100462550()
{
  result = qword_10077A0D0;
  if (!qword_10077A0D0)
  {
    type metadata accessor for TTRRemindersListListType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077A0D0);
  }

  return result;
}

uint64_t sub_1004625A8(uint64_t a1)
{
  v2 = type metadata accessor for TTRListDetailViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void destroy for TTRListDetailAppearanceBadge(uint64_t a1)
{

  v2 = *(a1 + 24);
}

void *initializeWithCopy for TTRListDetailAppearanceBadge(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;

  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for TTRListDetailAppearanceBadge(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  *(a1 + 24) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for TTRListDetailAppearanceBadge(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_1004627D8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListListType();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100462930()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100783A48);
  v1 = sub_100003E30(v0, qword_100783A48);
  if (qword_100767290 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A8700);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004629F8(void *a1)
{
  v141 = type metadata accessor for REMNotificationIdentifier();
  v146 = *(v141 - 8);
  v2 = __chkstk_darwin(v141);
  v140[1] = v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v140[2] = v140 - v5;
  __chkstk_darwin(v4);
  v143 = v140 - v6;
  v7 = sub_100058000(&qword_100783A60);
  __chkstk_darwin(v7 - 8);
  v9 = v140 - v8;
  v10 = type metadata accessor for RDUserNotificationType();
  v148 = *(v10 - 8);
  v149 = v10;
  v11 = __chkstk_darwin(v10);
  v142 = v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v144 = v140 - v13;
  v14 = type metadata accessor for RDUserNotificationAction();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v140 - v19;
  v150 = [a1 notification];
  v21 = [a1 actionIdentifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
    goto LABEL_22;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_5;
  }

  v147 = *(v15 + 104);
  v147(v20, enum case for RDUserNotificationAction.viewAssignmentInList(_:), v14);
  v44 = RDUserNotificationAction.rawValue.getter();
  v46 = v45;
  v140[0] = *(v15 + 8);
  (v140[0])(v20, v14);
  if (v22 == v44 && v24 == v46)
  {
    goto LABEL_22;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v47)
  {
    goto LABEL_5;
  }

  v147(v18, enum case for RDUserNotificationAction.declineAssignment(_:), v14);
  v48 = RDUserNotificationAction.rawValue.getter();
  v50 = v49;
  (v140[0])(v18, v14);
  if (v22 == v48 && v24 == v50)
  {
LABEL_22:
  }

  else
  {
    v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v87 & 1) == 0)
    {
      if (qword_1007672E8 == -1)
      {
LABEL_50:
        v88 = type metadata accessor for Logger();
        sub_100003E30(v88, qword_100783A48);

        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.fault.getter();

        v91 = os_log_type_enabled(v89, v90);
        v92 = v150;
        if (v91)
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v151 = v94;
          *v93 = 136315138;
          v95 = sub_100004060(v22, v24, &v151);

          *(v93 + 4) = v95;
          _os_log_impl(&_mh_execute_header, v89, v90, "App should not receive non-default or 'fall-through-as-default' actions. remindd is not configured properly. {actionIdentifier: %s", v93, 0xCu);
          sub_100004758(v94);
        }

        else
        {
        }

        return;
      }

LABEL_95:
      swift_once();
      goto LABEL_50;
    }
  }

LABEL_5:
  v27 = [v150 request];
  v28 = [v27 content];

  v147 = v28;
  RDUserNotificationType.init(notificationContent:)();
  v22 = v148;
  v29 = v149;
  if ((*(v148 + 48))(v9, 1, v149) == 1)
  {

    sub_1000079B4(v9, &qword_100783A60);
    if (qword_1007672E8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100003E30(v30, qword_100783A48);
    v31 = v147;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "Cannot determine notification type from content. {content: %@}", v34, 0xCu);
      sub_1000079B4(v35, &unk_10076DF80);
    }

    else
    {
    }

    return;
  }

  v37 = v144;
  (*(v22 + 32))(v144, v9, v29);
  v38 = v142;
  (*(v22 + 16))(v142, v37, v29);
  v39 = (*(v22 + 88))(v38, v29);
  v41 = v145;
  v40 = v146;
  v42 = v143;
  if (v39 == enum case for RDUserNotificationType.reminderAlarm(_:) || v39 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:))
  {
    goto LABEL_53;
  }

  if (v39 == enum case for RDUserNotificationType.caldavSharedList(_:))
  {

    (*(v22 + 96))(v38, v29);
    v43 = *v38;
    (*(v41 + 24))(*v38);
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if (v39 != enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    if (v39 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
    {

      (*(v22 + 96))(v38, v29);
      v40 = *v38;
      if (!(*v38 >> 62))
      {
        if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }

LABEL_39:
        if ((v40 & 0xC000000000000001) != 0)
        {
          v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_42;
        }

        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v68 = v40[4].isa;
LABEL_42:
          v69 = v68;

          v70 = *v41;
          v151 = 0;
          v71 = [v70 fetchReminderWithObjectID:v69 error:&v151];
          if (v71)
          {
            v72 = v71;
            v73 = qword_1007672E8;
            v74 = v151;
            if (v73 != -1)
            {
              swift_once();
            }

            v75 = type metadata accessor for Logger();
            sub_100003E30(v75, qword_100783A48);
            v76 = v69;
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v146 = swift_slowAlloc();
              v151 = v146;
              *v79 = 136315138;
              v80 = [(objc_class *)v76 description];
              v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v83 = v82;

              v29 = v149;
              v84 = sub_100004060(v81, v83, &v151);
              v37 = v144;

              *(v79 + 4) = v84;
              v22 = v148;
              _os_log_impl(&_mh_execute_header, v77, v78, "REMSharedEntitySyncActivity: sharedListUpdateNotification.reminderIDs.first {reminderID: %s}", v79, 0xCu);
              sub_100004758(v146);
            }

            v85 = *(v145 + 8);
            v86 = [v72 objectID];
            v85();

            goto LABEL_15;
          }

          v123 = v151;
          v124 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1007672E8 != -1)
          {
            swift_once();
          }

          v125 = type metadata accessor for Logger();
          sub_100003E30(v125, qword_100783A48);
          v126 = v69;
          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            v151 = v130;
            *v129 = 136315138;
            v131 = [(objc_class *)v126 description];
            v146 = v124;
            v132 = v22;
            v133 = v131;
            v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v136 = v135;

            v137 = sub_100004060(v134, v136, &v151);

            *(v129 + 4) = v137;
            _os_log_impl(&_mh_execute_header, v127, v128, "REMSharedEntitySyncActivity: Cannot look up reminder by sharedListUpdateNotification.reminderIDs.first {reminderID: %s}", v129, 0xCu);
            sub_100004758(v130);

            (*(v132 + 8))(v144, v29);
            return;
          }

LABEL_16:
          (*(v22 + 8))(v37, v29);
          return;
        }

        __break(1u);
        goto LABEL_95;
      }

LABEL_85:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_86:

        if (qword_1007672E8 != -1)
        {
          swift_once();
        }

        v139 = type metadata accessor for Logger();
        sub_100003E30(v139, qword_100783A48);
        v43 = Logger.logObject.getter();
        v120 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v43, v120))
        {
          v121 = swift_slowAlloc();
          *v121 = 0;
          v122 = "REMSharedEntitySyncActivity: Received shared list update notification response by this notification has no reminderID.";
          goto LABEL_90;
        }

        goto LABEL_91;
      }

      goto LABEL_39;
    }

    if (v39 != enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
    {
      if (v39 == enum case for RDUserNotificationType.todayNotification(_:))
      {

        (*(v41 + 56))(v102);
LABEL_92:

        goto LABEL_15;
      }

      if (v39 != enum case for RDUserNotificationType.todayNotificationBadge(_:))
      {
        if (v39 == enum case for RDUserNotificationType.beforeFirstUnlock(_:))
        {
          (*(v22 + 8))(v37, v29);
        }

        else
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
        }

        return;
      }

      if (qword_1007672E8 != -1)
      {
        swift_once();
      }

      v119 = type metadata accessor for Logger();
      sub_100003E30(v119, qword_100783A48);
      v43 = Logger.logObject.getter();
      v120 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v43, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        v122 = "Received todayNotificationBadge response but this notification has no banner.";
LABEL_90:
        _os_log_impl(&_mh_execute_header, v43, v120, v122, v121, 2u);

        goto LABEL_14;
      }

LABEL_91:

      goto LABEL_92;
    }

LABEL_53:

    (*(v22 + 96))(v38, v29);
    v96 = v141;
    (v40[4].isa)(v42, v38, v141);
    v97 = REMStore.fetchReminder(notificationIdentifier:includingDueDateDeltaAlerts:)();
    (v40[1].isa)(v42, v96);
    if ([v97 isOverdue])
    {
      v98 = *(v145 + 40);
      v99 = [v97 objectID];
      v98();
    }

    else
    {
      v100 = *(v145 + 8);
      v101 = [v97 objectID];
      v100();
    }

    (*(v22 + 8))(v37, v149);
    return;
  }

  (*(v22 + 96))(v38, v29);
  v51 = *v38;
  if (!(v51 >> 62))
  {
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_79:

    if (qword_1007672E8 != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    sub_100003E30(v138, qword_100783A48);
    v43 = Logger.logObject.getter();
    v120 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v43, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      v122 = "Received assignment notification response but this notification has no reminderID.";
      goto LABEL_90;
    }

    goto LABEL_91;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_79;
  }

LABEL_27:
  if ((v51 & 0xC000000000000001) == 0)
  {
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v52 = v51[4].isa;
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_85;
  }

  v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_30:
  v53 = v52;

  v54 = *v41;
  v151 = 0;
  v55 = [v54 fetchReminderWithObjectID:v53 error:&v151];
  if (!v55)
  {
    v103 = v151;
    v104 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1007672E8 != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    sub_100003E30(v105, qword_100783A48);
    v106 = v53;
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v151 = v110;
      *v109 = 136315138;
      v111 = v106;
      v112 = [(objc_class *)v111 description];
      v146 = v104;
      v113 = v37;
      v114 = v112;
      v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v117 = v116;

      v118 = sub_100004060(v115, v117, &v151);

      *(v109 + 4) = v118;
      _os_log_impl(&_mh_execute_header, v107, v108, "Cannot look up reminder by assignmentNotification.reminderIDs.first {reminderID: %s}", v109, 0xCu);
      sub_100004758(v110);

      (*(v148 + 8))(v113, v29);
      return;
    }

    goto LABEL_16;
  }

  v56 = v55;
  v57 = qword_1007672E8;
  v58 = v151;
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_100003E30(v59, qword_100783A48);
  v60 = v56;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    v65 = [v60 objectID];
    *(v63 + 4) = v65;
    *v64 = v65;
    _os_log_impl(&_mh_execute_header, v61, v62, "REMAssignment: assignmentNotification navigateToReminderBy {reminderID: %@}.", v63, 0xCu);
    sub_1000079B4(v64, &unk_10076DF80);
  }

  v66 = *(v145 + 8);
  v67 = [v60 objectID];
  v66();

  (*(v22 + 8))(v144, v29);
}

uint64_t sub_1004640A8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100783A68);
  v1 = sub_100003E30(v0, qword_100783A68);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100464170()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1007672F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100783A68);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "TTRIWelcomeViewController dealloc", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_100464398(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  a4(v7);
  sub_100004758(&v8);
}

uint64_t sub_100464414(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRUserDefaults.WelcomeScreenVersion();
  __chkstk_darwin(v3 - 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    type metadata accessor for TTRUserDefaults();
    v6 = static TTRUserDefaults.appUserDefaults.getter();
    static TTRUserDefaults.WelcomeScreenVersion.current.getter();
    TTRUserDefaults.lastSeenWelcomeScreenVersion.setter();

    sub_10000C36C((v5 + 72), *(v5 + 96));
    swift_unknownObjectRetain();
    sub_100502974(a2, v5);
  }

  return result;
}

uint64_t sub_100464510(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  sub_100464414(v7, a4);

  return sub_100004758(&v9);
}

uint64_t sub_100464584()
{
  v1 = v0;
  v50.receiver = v0;
  v50.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v50, "viewDidLoad");
  if (sub_10014D4E8())
  {
    v2._countAndFlagsBits = 0xD000000000000019;
    v2._object = 0x80000001006879D0;
    v3._countAndFlagsBits = 0xD00000000000001DLL;
    v3._object = 0x8000000100687720;
    TTRLocalizedString(_:comment:)(v2, v3);
    v4 = String._bridgeToObjectiveC()();

    v5._countAndFlagsBits = 0xD000000000000044;
    v5._object = 0x80000001006879F0;
    v6._object = 0x8000000100687790;
    v6._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v5, v6);
    v7 = String._bridgeToObjectiveC()();

    v8 = static TTRIAsset.Image.WelcomeBullet.smiling.getter();
    [v1 addBulletedListItemWithTitle:v4 description:v7 image:v8];

    v9._countAndFlagsBits = 0xD00000000000001ELL;
    v9._object = 0x8000000100687A40;
    v10._countAndFlagsBits = 0xD00000000000001DLL;
    v10._object = 0x80000001006877D0;
    TTRLocalizedString(_:comment:)(v9, v10);
    v11 = String._bridgeToObjectiveC()();

    v12._countAndFlagsBits = 0xD00000000000004CLL;
    v12._object = 0x8000000100687A60;
    v13._object = 0x8000000100687840;
    v13._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v12, v13);
    v14 = String._bridgeToObjectiveC()();

    v15 = static TTRIAsset.Image.WelcomeBullet.collaboration.getter();
    [v1 addBulletedListItemWithTitle:v11 description:v14 image:v15];

    v16 = [v1 headerView];
    [v16 setAllowFullWidthIcon:1];
  }

  else
  {
    v17._countAndFlagsBits = 0x7243206B63697551;
    v17._object = 0xEE006E6F69746165;
    v18._countAndFlagsBits = 0xD00000000000001DLL;
    v18._object = 0x8000000100687720;
    TTRLocalizedString(_:comment:)(v17, v18);
    v19 = String._bridgeToObjectiveC()();

    v20._countAndFlagsBits = 0xD00000000000004DLL;
    v20._object = 0x8000000100687740;
    v21._object = 0x8000000100687790;
    v21._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v20, v21);
    v22 = String._bridgeToObjectiveC()();

    v23 = static TTRIAsset.Image.WelcomeBullet.one.getter();
    [v1 addBulletedListItemWithTitle:v19 description:v22 image:v23];

    v24._countAndFlagsBits = 0xD000000000000010;
    v24._object = 0x80000001006877B0;
    v25._countAndFlagsBits = 0xD00000000000001DLL;
    v25._object = 0x80000001006877D0;
    TTRLocalizedString(_:comment:)(v24, v25);
    v26._countAndFlagsBits = 0xD000000000000049;
    v26._object = 0x80000001006877F0;
    v27._object = 0x8000000100687840;
    v27._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v26, v27);
    v28 = static TTRIAsset.Image.WelcomeBullet.two.getter();
    if (sub_100466174())
    {
      v29 = String._bridgeToObjectiveC()();

      v30 = String._bridgeToObjectiveC()();

      [v1 addBulletedListItemWithTitle:v29 description:v30 image:v28];
    }

    else
    {
    }

    v31._countAndFlagsBits = 0x6168532079736145;
    v31._object = 0xEC000000676E6972;
    v32._countAndFlagsBits = 0xD00000000000001DLL;
    v32._object = 0x8000000100687860;
    TTRLocalizedString(_:comment:)(v31, v32);
    v33 = String._bridgeToObjectiveC()();

    v34._countAndFlagsBits = 0xD000000000000038;
    v34._object = 0x8000000100687880;
    v35._object = 0x80000001006878C0;
    v35._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v34, v35);
    v36 = String._bridgeToObjectiveC()();

    v37 = static TTRIAsset.Image.WelcomeBullet.three.getter();
    [v1 addBulletedListItemWithTitle:v33 description:v36 image:v37];

    v38._countAndFlagsBits = 0xD000000000000015;
    v38._object = 0x80000001006878E0;
    v39._countAndFlagsBits = 0xD00000000000001DLL;
    v39._object = 0x8000000100687900;
    TTRLocalizedString(_:comment:)(v38, v39);
    v40 = String._bridgeToObjectiveC()();

    v41._countAndFlagsBits = 0xD000000000000082;
    v41._object = 0x8000000100687920;
    v42._object = 0x80000001006879B0;
    v42._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v41, v42);
    v43 = String._bridgeToObjectiveC()();

    v16 = static TTRIAsset.Image.WelcomeBullet.four.getter();
    [v1 addBulletedListItemWithTitle:v40 description:v43 image:v16];
  }

  v44 = sub_10014D380();
  v45 = &v1[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel];
  v46 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel];
  v47 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel + 8];
  *v45 = v44;
  v45[1] = v48;
  sub_10014E588(v46, v47);
  sub_100464B2C();
  return sub_10014D6B0();
}

void sub_100464B2C()
{
  v1 = v0;
  v2 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v2 - 8);
  v4 = &v53 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9._countAndFlagsBits = 0x65756E69746E6F43;
  v10._countAndFlagsBits = 0xD000000000000015;
  v10._object = 0x8000000100687AB0;
  v9._object = 0xE800000000000000;
  TTRLocalizedString(_:comment:)(v9, v10);
  v11 = *&v0[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel + 8];
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      sub_100465450();
      v12 = [objc_opt_self() boldButton];
      v28 = String._bridgeToObjectiveC()();

      [v12 setTitle:v28 forState:0];

      [v12 addTarget:v1 action:"didTapContinueButton:" forControlEvents:64];
      v14 = [v1 buttonTray];
      goto LABEL_14;
    }

    if (v11 == 4)
    {
      sub_100465450();
      v12 = [objc_opt_self() boldButton];
      v15 = String._bridgeToObjectiveC()();

      [v12 setTitle:v15 forState:0];

      [v12 addTarget:v1 action:"didTapContinueToUpgradeAutomaticallyButton:" forControlEvents:64];
      v14 = [v1 buttonTray];
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (v11 != 1)
  {
    if (v11 == 2)
    {
      sub_100465450();
      v12 = [objc_opt_self() boldButton];
      v13 = String._bridgeToObjectiveC()();

      [v12 setTitle:v13 forState:0];

      [v12 addTarget:v1 action:"didTapDismissButton:" forControlEvents:64];
      v14 = [v1 buttonTray];
LABEL_14:
      v57 = v14;
      [v57 addButton:v12];

      v29 = v57;

      return;
    }

LABEL_8:
    v56 = *&v0[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel];

    sub_100465450();
    v16 = [objc_opt_self() boldButton];
    v17._countAndFlagsBits = 0x4E20657461647055;
    v18._countAndFlagsBits = 0xD000000000000017;
    v18._object = 0x800000010067DA60;
    v17._object = 0xEA0000000000776FLL;
    TTRLocalizedString(_:comment:)(v17, v18);
    v19 = String._bridgeToObjectiveC()();

    [v16 setTitle:v19 forState:0];

    [v16 addTarget:v0 action:"didTapUpgradeButton:" forControlEvents:64];
    v20 = [v0 buttonTray];
    [v20 addButton:v16];

    v21 = [objc_opt_self() linkButton];
    v22._countAndFlagsBits = 0x4C20657461647055;
    v22._object = 0xEC00000072657461;
    v23._countAndFlagsBits = 0xD000000000000019;
    v23._object = 0x800000010067DA80;
    TTRLocalizedString(_:comment:)(v22, v23);
    v24 = String._bridgeToObjectiveC()();
    v57 = v6;
    v25 = v24;

    [v21 setTitle:v25 forState:0];

    v26 = v57;
    [v21 addTarget:v1 action:"didTapLaterButton:" forControlEvents:64];
    v27 = [v1 buttonTray];
    [v27 addButton:v21];

    URL.init(string:)();
    if ((v26[6])(v4, 1, v5) == 1)
    {
      sub_10014E588(v56, v11);

      sub_1000079B4(v4, &unk_100775660);
    }

    else
    {
      v55 = v21;
      v30 = v16;
      v26[4](v8, v4, v5);
      v31._countAndFlagsBits = 0xD000000000000049;
      v31._object = 0x8000000100687AD0;
      v32._countAndFlagsBits = 0xD00000000000005ALL;
      v32._object = 0x8000000100687B20;
      v33 = TTRLocalizedString(_:comment:)(v31, v32);
      v34 = v56;
      if (v11)
      {
        v54._object = v33._object;
        if (qword_1007672F0 != -1)
        {
          swift_once();
        }

        v54._countAndFlagsBits = v33._countAndFlagsBits;
        v35 = type metadata accessor for Logger();
        sub_100003E30(v35, qword_100783A68);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();
        sub_10014E588(v34, v11);
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v58[0] = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_100004060(v34, v11, v58);
          _os_log_impl(&_mh_execute_header, v36, v37, "Showing accountBeingUpgradedHint label {accountBeingUpgradedHint: %s}", v38, 0xCu);
          sub_100004758(v39);
        }

        v26 = v57;
        v40._object = 0x8000000100687B80;
        v41._countAndFlagsBits = 0xD000000000000062;
        v41._object = 0x8000000100687BA0;
        v40._countAndFlagsBits = 0xD000000000000013;
        TTRLocalizedString(_:comment:)(v40, v41);
        sub_100058000(&unk_100786CB0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_10062D400;
        *(v42 + 56) = &type metadata for String;
        *(v42 + 64) = sub_10005C390();
        *(v42 + 32) = v34;
        *(v42 + 40) = v11;
        v43 = String.init(format:_:)();
        v45 = v44;

        v58[0] = v43;
        v58[1] = v45;

        v46._countAndFlagsBits = 2570;
        v46._object = 0xE200000000000000;
        String.append(_:)(v46);

        String.append(_:)(v54);
      }

      v47 = v55;
      v48 = [v1 buttonTray];
      v49 = String._bridgeToObjectiveC()();

      URL._bridgeToObjectiveC()(v50);
      v52 = v51;
      [v48 setCaptionText:v49 learnMoreURL:v51];

      (v26[1])(v8, v5);
    }

    return;
  }

  sub_1004655B0();
}

void sub_100465450()
{
  v1 = OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_spinner;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_spinner);
  if (v2)
  {
    if (*(v0 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_newBottomConstraints) && *(v0 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_originalBottomConstraints))
    {
      v3 = objc_opt_self();
      sub_100003540(0, &qword_10076BAD0);
      v4 = v2;

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v3 deactivateConstraints:isa];

      v6 = Array._bridgeToObjectiveC()().super.isa;

      [v3 activateConstraints:v6];
    }

    else
    {
      v7 = v2;
    }

    [v2 stopAnimating];
    [v2 removeFromSuperview];

    v8 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_1004655B0()
{
  v1 = OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_spinner;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_spinner);
  if (v2)
  {

    [v2 startAnimating];
  }

  else
  {
    v3 = v0;
    v4 = sub_100465908();
    if (v4)
    {
      v23 = v4;
      v5 = sub_100465A14();
      if (v5)
      {
        v7 = v5;
        v8 = v6;
        v9 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v9 startAnimating];
        [v23 addSubview:v9];
        sub_100058000(&qword_10076B780);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_10062D420;
        *(v10 + 32) = v7;
        *(v3 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_originalBottomConstraints) = v10;
        v11 = v7;

        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_10062D410;
        v13 = [v23 centerXAnchor];
        v14 = [v9 centerXAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];

        *(v12 + 32) = v15;
        v16 = [v9 topAnchor];

        v17 = [v8 bottomAnchor];
        v18 = [v16 constraintEqualToAnchor:v17 constant:sub_100465B7C()];

        *(v12 + 40) = v18;
        *(v3 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_newBottomConstraints) = v12;

        v19 = objc_opt_self();
        sub_100003540(0, &qword_10076BAD0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v19 deactivateConstraints:isa];

        v21 = Array._bridgeToObjectiveC()().super.isa;

        [v19 activateConstraints:v21];

        v22 = *(v3 + v1);
        *(v3 + v1) = v9;
      }

      else
      {
        v22 = v23;
      }
    }
  }
}

uint64_t sub_100465908()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100003540(0, &qword_10076B020);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000079B4(v7, &qword_10076AE40);
    return 0;
  }
}

unint64_t sub_100465A14()
{
  result = sub_100465F74();
  if (!result)
  {
    return result;
  }

  v3 = (result & 0xFFFFFFFFFFFFFF8);
  if (result >> 62)
  {
    v1 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v1;
    if (!v4)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
LABEL_27:

      return 0;
    }
  }

  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else if ((result & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < v3[2])
    {
      v7 = *(result + 8 * v6 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v3 = v7;

  v8 = sub_100466070();
  if (!v8)
  {

    return 0;
  }

  v0 = v8;
  v1 = v8 & 0xFFFFFFFFFFFFFF8;
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_12:
  v5 = __OFSUB__(v9, 1);
  result = v9 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_31;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v1 + 16))
  {
    v10 = *(v0 + 8 * result + 32);
LABEL_17:
    v11 = v10;

    return v11;
  }

  __break(1u);
  return result;
}

double sub_100465B7C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1000079B4(v7, &qword_10076AE40);
  }

  return 0.0;
}

uint64_t destroy for TTRIWelcomeViewController.ViewModel(uint64_t a1)
{
  result = *(a1 + 8);
  if ((result - 1) >= 4)
  {
  }

  return result;
}

void *sub_100465D08(void *result, void *a2)
{
  v2 = a2[1];
  if ((v2 - 1) >= 4)
  {
    *result = *a2;
    result[1] = v2;
    v3 = result;

    return v3;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

void *assignWithCopy for TTRIWelcomeViewController.ViewModel(void *result, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  if ((result[1] - 1) >= 4)
  {
    if (v2 < 4)
    {
      v3 = result;
      sub_1000079B4(result, &qword_100783AD8);
      *v3 = *a2;
      return v3;
    }

    *result = *a2;
    v5 = result;
    result[1] = *(a2 + 8);
  }

  else
  {
    if (v2 < 4)
    {
      *result = *a2;
      return result;
    }

    *result = *a2;
    v5 = result;
    result[1] = *(a2 + 8);
  }

  return v5;
}

void *assignWithTake for TTRIWelcomeViewController.ViewModel(void *result, void *a2)
{
  if ((result[1] - 1) >= 4)
  {
    v2 = a2[1];
    if ((v2 - 1) >= 4)
    {
      *result = *a2;
      result[1] = v2;
      v3 = result;
    }

    else
    {
      v3 = result;
      sub_1000079B4(result, &qword_100783AD8);
      *v3 = *a2;
    }

    return v3;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIWelcomeViewController.ViewModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 4;
  if (v4 < 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIWelcomeViewController.ViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = a2 - 2147483643;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_100465F74()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100058000(&unk_10076BCD0);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000079B4(v7, &qword_10076AE40);
    return 0;
  }
}

uint64_t sub_100466070()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100058000(&qword_10076BAD8);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000079B4(v7, &qword_10076AE40);
    return 0;
  }
}

uint64_t sub_100466174()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMGroceryDummyModel();
  static Locale.current.getter();
  Locale.identifier.getter();
  (*(v1 + 8))(v3, v0);
  LOBYTE(v3) = static REMGroceryDummyModel.isSupported(localeIdentifier:)();

  return v3 & 1;
}

unint64_t destroy for TTRIRemindersListNavigationBarViewModel.FixedTrailingItem(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = -1;
  if (result < 0xFFFFFFFF)
  {
    v2 = result;
  }

  if (v2 - 1 < 0)
  {
  }

  return result;
}

void *sub_100466400(void *result, void *a2)
{
  v2 = a2[1];
  LODWORD(v3) = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = a2[1];
  }

  if (v3 - 1 < 0)
  {
    *result = *a2;
    result[1] = v2;
    v4 = result;

    return v4;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

void *assignWithCopy for TTRIRemindersListNavigationBarViewModel.FixedTrailingItem(void *result, void *a2)
{
  LODWORD(v2) = -1;
  if (result[1] >= 0xFFFFFFFFuLL)
  {
    LODWORD(v3) = -1;
  }

  else
  {
    v3 = result[1];
  }

  v4 = v3 - 1;
  if (a2[1] < 0xFFFFFFFFuLL)
  {
    v2 = a2[1];
  }

  v5 = v2 - 1;
  if (v4 < 0)
  {
    if (v5 < 0)
    {
      *result = *a2;
      v6 = result;
      result[1] = a2[1];
    }

    else
    {
      v6 = result;

      *v6 = *a2;
    }
  }

  else
  {
    if ((v5 & 0x80000000) == 0)
    {
      *result = *a2;
      return result;
    }

    *result = *a2;
    v6 = result;
    result[1] = a2[1];
  }

  return v6;
}

void *assignWithTake for TTRIRemindersListNavigationBarViewModel.FixedTrailingItem(void *result, void *a2)
{
  LODWORD(v2) = -1;
  if (result[1] < 0xFFFFFFFFuLL)
  {
    v2 = result[1];
  }

  if (v2 - 1 < 0)
  {
    v3 = a2[1];
    LODWORD(v4) = -1;
    if (v3 < 0xFFFFFFFF)
    {
      v4 = a2[1];
    }

    if (v4 - 1 < 0)
    {
      *result = *a2;
      result[1] = v3;
      v5 = result;
    }

    else
    {
      v5 = result;

      *v5 = *a2;
    }

    return v5;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIWelcomeViewController.ButtonConfig(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIWelcomeViewController.ButtonConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_100466654(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *sub_100466678(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1004666BC()
{
  v1 = v0;
  v2 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v81 - v6;
  __chkstk_darwin(v8);
  v87 = &v81 - v9;
  __chkstk_darwin(v10);
  v12 = &v81 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v88 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v91 = &v81 - v17;
  __chkstk_darwin(v18);
  v86 = &v81 - v19;
  __chkstk_darwin(v20);
  v90 = &v81 - v21;
  __chkstk_darwin(v22);
  v24 = &v81 - v23;
  __chkstk_darwin(v25);
  v27 = &v81 - v26;
  sub_1004681DC();
  v28 = v0[9];
  if (!v28)
  {
    if (qword_1007672F8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100003E30(v31, qword_100783AE0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "TTRIAppStoreProvider: Failed to fetch REMAppStoreReviewCloudConfiguration properties", v34, 2u);
    }

    goto LABEL_38;
  }

  v82 = v4;
  v85 = v28;
  swift_unknownObjectRetain();
  Date.init()();
  swift_beginAccess();
  sub_10000C36C(v0 + 4, v0[7]);
  dispatch thunk of TTRAppStoreUserDefaults.lastAppStoreRatingPromptDate.getter();
  swift_endAccess();
  v29 = *(v14 + 48);
  v30 = v29(v12, 1, v13);
  v89 = v29;
  v84 = v7;
  if (v30 == 1)
  {
    static Date.distantPast.getter();
    if (v29(v12, 1, v13) != 1)
    {
      sub_1000079B4(v12, &qword_1007757F0);
    }
  }

  else
  {
    (*(v14 + 32))(v24, v12, v13);
  }

  Date.timeIntervalSince(_:)();
  v36 = v35;
  v37 = v14;
  v38 = *(v14 + 8);
  v38(v24, v13);
  v38(v27, v13);
  v39 = v85;
  [v85 appStoreReviewTimeIntervalSinceLastPrompt];
  v41 = v40;
  Date.init()();
  swift_beginAccess();
  sub_10000C36C(v1 + 4, v1[7]);
  v42 = v87;
  dispatch thunk of TTRAppStoreUserDefaults.lastCreatedOrCompletedRemindersFetchDate.getter();
  swift_endAccess();
  v43 = v89;
  v44 = v89(v42, 1, v13);
  v83 = v37;
  if (v44 == 1)
  {
    v45 = v86;
    static Date.distantPast.getter();
    if (v43(v42, 1, v13) != 1)
    {
      sub_1000079B4(v42, &qword_1007757F0);
    }
  }

  else
  {
    v45 = v86;
    (*(v37 + 32))(v86, v42, v13);
  }

  v46 = v90;
  Date.timeIntervalSince(_:)();
  v48 = v47;
  v38(v45, v13);
  v38(v46, v13);
  [v39 appStoreReviewTimeIntervalSinceLastFetch];
  v50 = v49;
  Date.init()();
  swift_beginAccess();
  sub_10000C36C(v1 + 4, v1[7]);
  v51 = v84;
  dispatch thunk of TTRAppStoreUserDefaults.firstTimeAppForegroundingDate.getter();
  swift_endAccess();
  v52 = v89;
  if (v89(v51, 1, v13) == 1)
  {
    v53 = v88;
    static Date.now.getter();
    if (v52(v51, 1, v13) != 1)
    {
      sub_1000079B4(v51, &qword_1007757F0);
    }
  }

  else
  {
    v53 = v88;
    (*(v83 + 32))(v88, v51, v13);
  }

  v54 = v91;
  Date.timeIntervalSince(_:)();
  v56 = v55;
  v38(v53, v13);
  v38(v54, v13);
  [v39 appStoreReviewTimeIntervalSinceInitialForeground];
  v58 = v57;
  v59 = [v39 appStoreReviewNumberOfForegroundsThreshold];
  [v39 appStoreReviewTimeIntervalOfInterest];
  v61 = sub_1004683E0(v59, v60);
  v62 = v61;
  if (v36 < v41 || v48 < v50 || v58 >= v56 || !v61)
  {
    if (qword_1007672F8 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100003E30(v63, qword_100783AE0);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 67109888;
      *(v66 + 4) = v36 < v41;
      *(v66 + 8) = 1024;
      *(v66 + 10) = v48 < v50;
      *(v66 + 14) = 1024;
      *(v66 + 16) = v58 < v56;
      *(v66 + 20) = 1024;
      *(v66 + 22) = v62;
      _os_log_impl(&_mh_execute_header, v64, v65, "TTRIAppStoreProvider: Not showing App Store rating prompt: didPromptRecently = %{BOOL}d, didFetchRecently = %{BOOL}d, isPastFirstAppForegroundThreshold = %{BOOL}d, hasEnoughForegroundCount = %{BOOL}d", v66, 0x1Au);
    }

    goto LABEL_40;
  }

  [v39 appStoreReviewTimeIntervalOfInterest];
  v67 = sub_1004687E0();
  v68 = v82;
  static Date.now.getter();
  (*(v83 + 56))(v68, 0, 1, v13);
  swift_beginAccess();
  sub_10000AE84((v1 + 4), v1[7]);
  dispatch thunk of TTRAppStoreUserDefaults.lastCreatedOrCompletedRemindersFetchDate.setter();
  swift_endAccess();
  v69 = [v39 appStoreReviewCreatedOrCompletedRemindersCountThreshold];
  v70 = [v67 integerValue];

  if ((v70 & 0x8000000000000000) != 0 || v70 < v69)
  {
    if (qword_1007672F8 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_100003E30(v76, qword_100783AE0);
    v77 = v67;
    v64 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v64, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138412546;
      *(v79 + 4) = v77;
      *v80 = v77;
      *(v79 + 12) = 2048;
      *(v79 + 14) = v69;
      v32 = v77;
      _os_log_impl(&_mh_execute_header, v64, v78, "TTRIAppStoreProvider: Not showing App Store rating prompt: only created or completed %@ out of %lu reminders", v79, 0x16u);
      sub_1000079B4(v80, &unk_10076DF80);

      swift_unknownObjectRelease();

LABEL_38:
      return 0;
    }

LABEL_40:
    swift_unknownObjectRelease();

    return 0;
  }

  if (qword_1007672F8 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_100003E30(v71, qword_100783AE0);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "TTRIAppStoreProvider: Determined we should display the App Store rating prompt", v74, 2u);
  }

  swift_unknownObjectRelease();

  result = 1;
  *(v1 + 16) = 1;
  return result;
}

void sub_1004672E0(char a1)
{
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  sub_100469118();
  if (v15)
  {
    v16 = v15;
    v41 = v5;
    v42 = v2;
    v17 = sub_100469374();
    sub_100003540(0, &qword_100777780);
    v40 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v18 = (v9 + 8);
    v19 = a1 & 1;
    + infix(_:_:)();
    if (v17)
    {
      v39 = *v18;
      v20 = v11;
      v21 = v8;
      v39(v20, v8);
      v22 = swift_allocObject();
      *(v22 + 16) = v43;
      *(v22 + 24) = v19;
      v50 = sub_100469554;
      v51 = v22;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_10001047C;
      v49 = &unk_100729A88;
      v23 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10001A4CC();
      sub_100058000(&qword_100780A50);
      sub_10001A524();
      v24 = v44;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v25 = v40;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v23);

      (*(v42 + 8))(v4, v24);
      (v45[1].isa)(v7, v41);
      v26 = v14;
      v27 = v21;
    }

    else
    {
      v32 = *v18;
      v38 = v8;
      v39 = v32;
      v32(v11, v8);
      v33 = swift_allocObject();
      *(v33 + 16) = v43;
      *(v33 + 24) = v19;
      *(v33 + 32) = v16;
      v50 = sub_1004694B4;
      v51 = v33;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_10001047C;
      v49 = &unk_100729A38;
      v34 = _Block_copy(&aBlock);

      v35 = v16;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10001A4CC();
      sub_100058000(&qword_100780A50);
      sub_10001A524();
      v36 = v44;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v40;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v34);

      (*(v42 + 8))(v4, v36);
      (v45[1].isa)(v7, v41);
      v26 = v14;
      v27 = v38;
    }

    v39(v26, v27);
  }

  else
  {
    if (qword_1007672F8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100003E30(v28, qword_100783AE0);
    v45 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v45, v29, "TTRIAppStoreProvider: Can't prompt user for App Store review. Missing required active window scene.", v30, 2u);
    }

    v31 = v45;
  }
}

void sub_10046791C()
{
  v2 = v0;
  v3 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v3 - 8);
  v5 = v49 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v53 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v52 = v49 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = v49 - v13;
  v15 = __chkstk_darwin(v12);
  v62 = (v49 - v16);
  __chkstk_darwin(v15);
  v18 = v49 - v17;
  sub_1004681DC();
  v19 = v0[9];
  if (v19)
  {
    v55 = v14;
    v56 = v6;
    v51 = [swift_unknownObjectRetain() appStoreReviewNumberOfForegroundsThreshold];
    swift_beginAccess();
    sub_10000C36C(v0 + 4, v0[7]);
    v20 = dispatch thunk of TTRAppStoreUserDefaults.lastAppForegroundingDates.getter();
    if (!v20)
    {
      swift_endAccess();
      static Date.now.getter();
      (*(v7 + 56))(v5, 0, 1, v56);
      swift_beginAccess();
      sub_10000AE84((v0 + 4), v0[7]);
      dispatch thunk of TTRAppStoreUserDefaults.firstTimeAppForegroundingDate.setter();
      swift_endAccess();
      sub_100058000(&qword_100783BD0);
      *(swift_allocObject() + 16) = xmmword_10062D400;
      static Date.now.getter();
      swift_beginAccess();
      sub_10000AE84((v0 + 4), v0[7]);
      dispatch thunk of TTRAppStoreUserDefaults.lastAppForegroundingDates.setter();
      swift_endAccess();
LABEL_30:
      swift_unknownObjectRelease();
      return;
    }

    v21 = v20;
    v50 = v0;
    swift_endAccess();
    v49[1] = v19;
    [v19 appStoreReviewTimeIntervalOfInterest];
    v23 = v56;
    v61 = *(v21 + 16);
    if (v61)
    {
      v24 = v22;
      v25 = 0;
      v58 = v7 + 8;
      v59 = v7 + 16;
      v57 = (v7 + 32);
      v26 = &_swiftEmptyArrayStorage;
      v27 = v55;
      v54 = v7;
      v60 = v21;
      while (v25 < *(v21 + 16))
      {
        v1 = v26;
        v2 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v28 = v21 + v2;
        v29 = *(v7 + 72);
        (*(v7 + 16))(v18, v28 + v29 * v25, v23);
        v30 = v62;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v32 = v31;
        v33 = v18;
        v34 = *(v7 + 8);
        v34(v30, v23);
        if (v32 > v24)
        {
          v34(v33, v23);
          v18 = v33;
          v26 = v1;
        }

        else
        {
          v35 = *v57;
          (*v57)(v27, v33, v23);
          v26 = v1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v1;
          v18 = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1004A23E8(0, v1[2] + 1, 1);
            v26 = v64;
          }

          v38 = v26[2];
          v37 = v26[3];
          if (v38 >= v37 >> 1)
          {
            sub_1004A23E8(v37 > 1, v38 + 1, 1);
            v26 = v64;
          }

          v26[2] = v38 + 1;
          v39 = v26 + v2 + v38 * v29;
          v27 = v55;
          v23 = v56;
          v35(v39, v55, v56);
          v7 = v54;
        }

        ++v25;
        v21 = v60;
        if (v61 == v25)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
      v26 = &_swiftEmptyArrayStorage;
LABEL_23:

      v63 = v26;
      if (v26[2] >= v51)
      {
        v44 = v62;
        sub_1000C5E24(0, v62);
        (*(v7 + 8))(v44, v23);
        v1 = v53;
        static Date.now.getter();
        v26 = v63;
      }

      else
      {
        v1 = v52;
        static Date.now.getter();
      }

      v45 = swift_isUniquelyReferenced_nonNull_native();
      v2 = v50;
      if (v45)
      {
        goto LABEL_27;
      }
    }

    v26 = sub_1005482A0(0, v26[2] + 1, 1, v26);
LABEL_27:
    v47 = v26[2];
    v46 = v26[3];
    v48 = v26;
    if (v47 >= v46 >> 1)
    {
      v48 = sub_1005482A0(v46 > 1, v47 + 1, 1, v26);
    }

    *(v48 + 16) = v47 + 1;
    (*(v7 + 32))(v48 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v47, v1, v23);
    swift_beginAccess();
    sub_10000AE84(v2 + 32, *(v2 + 56));
    dispatch thunk of TTRAppStoreUserDefaults.lastAppForegroundingDates.setter();
    swift_endAccess();
    goto LABEL_30;
  }

  if (qword_1007672F8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100003E30(v40, qword_100783AE0);
  v62 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v62, v41, "TTRIAppStoreProvider: Failed to fetch REMAppStoreReviewCloudConfiguration properties", v42, 2u);
  }

  v43 = v62;
}

uint64_t sub_100468030()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100783AE0);
  v1 = sub_100003E30(v0, qword_100783AE0);
  if (qword_100767278 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004680F8(uint64_t a1)
{
  v1 = [objc_allocWithZone(REMAppStoreDataView) initWithStore:a1];
  v6 = 0;
  v2 = [v1 fetchAppStoreCloudConfigurationPropertiesWithError:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

void sub_1004681DC()
{
  if (!*(v0 + 72))
  {
    *(v0 + 72) = (*(v0 + 80))();

    swift_unknownObjectRelease();
  }
}

BOOL sub_1004683E0(unint64_t a1, double a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  __chkstk_darwin(v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v37 - v10;
  __chkstk_darwin(v12);
  v37[0] = v37 - v13;
  swift_beginAccess();
  sub_10000C36C((v2 + 32), *(v2 + 56));
  v14 = dispatch thunk of TTRAppStoreUserDefaults.lastAppForegroundingDates.getter();
  if (!v14)
  {
    swift_endAccess();
    if (qword_1007672F8 == -1)
    {
LABEL_16:
      v30 = type metadata accessor for Logger();
      sub_100003E30(v30, qword_100783AE0);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "TTRIAppStoreProvider: Failed to save any app foregrounding dates", v33, 2u);
      }

      return 0;
    }

LABEL_29:
    swift_once();
    goto LABEL_16;
  }

  v15 = v14;
  swift_endAccess();
  if (*(v15 + 16) != a1)
  {

    return 0;
  }

  if (a1)
  {
    v43 = v8;
    v16 = 0;
    v40 = (v45 + 32);
    v41 = v45 + 16;
    v17 = _swiftEmptyArrayStorage;
    v38 = v11;
    v39 = a1;
    v18 = v37[0];
    v42 = v15;
    v37[1] = v45 + 8;
    while (v16 < *(v15 + 16))
    {
      v20 = v44;
      v19 = v45;
      v46 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = *(v45 + 72);
      (*(v45 + 16))(v18, v15 + v46 + v21 * v16, v44);
      Date.init()();
      v22 = v18;
      Date.timeIntervalSince(_:)();
      v24 = v23;
      v25 = *(v19 + 8);
      v25(v11, v20);
      if (v24 > a2)
      {
        v25(v22, v20);
        v18 = v22;
      }

      else
      {
        v26 = *v40;
        (*v40)(v43, v22, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v17;
        if (isUniquelyReferenced_nonNull_native)
        {
          v18 = v22;
        }

        else
        {
          sub_1004A23E8(0, v17[2] + 1, 1);
          v18 = v37[0];
          v17 = v47;
        }

        v29 = v17[2];
        v28 = v17[3];
        if (v29 >= v28 >> 1)
        {
          sub_1004A23E8(v28 > 1, v29 + 1, 1);
          v18 = v37[0];
          v17 = v47;
        }

        v17[2] = v29 + 1;
        v26(v17 + v46 + v29 * v21, v43, v20);
        v11 = v38;
        a1 = v39;
      }

      ++v16;
      v15 = v42;
      if (a1 == v16)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_22:

  v35 = v17[2];

  if (v35)
  {
    v36 = v35 > a1;
  }

  else
  {
    v36 = 0;
  }

  return !v36;
}

id sub_1004687E0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = *(v0 + 24);
  Date.init()();
  static Date.now.getter();
  Date.init(timeInterval:since:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = Date._bridgeToObjectiveC()().super.isa;
  v18 = 0;
  v12 = [v9 fetchCreatedOrCompletedRemindersCountForAppStoreFromDate:isa toDate:v11 error:&v18];

  if (v12)
  {
    v13 = *(v2 + 8);
    v14 = v18;
    v13(v5, v1);
    v13(v8, v1);
  }

  else
  {
    v15 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_willThrow();
    v16 = *(v2 + 8);
    v16(v5, v1);
    v16(v8, v1);
  }

  return v12;
}

uint64_t sub_100468A24(uint64_t a1, int a2, void (*a3)(char *, uint64_t))
{
  v28 = a3;
  v31 = a2;
  v4 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  result = sub_100469374();
  if (result)
  {
    sub_100003540(0, &qword_100777780);
    v27 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v28 = *(v14 + 8);
    v28(v16, v13);
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = v31 & 1;
    aBlock[4] = sub_1004694C4;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_100729AD8;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001A4CC();
    sub_100058000(&qword_100780A50);
    sub_10001A524();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v27;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v22);

    (*(v30 + 8))(v9, v7);
    (*(v10 + 8))(v12, v29);
    return (v28)(v19, v13);
  }

  else if (*(a1 + 16) == 1)
  {
    if (v31)
    {
      if (qword_1007672F8 != -1)
      {
        swift_once();
      }
    }

    else if (qword_1007672F8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100003E30(v24, qword_100783AE0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    [objc_opt_self() requestReviewInScene:v28];
    static Date.now.getter();
    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 56))(v6, 0, 1, v25);
    swift_beginAccess();
    sub_10000AE84(a1 + 32, *(a1 + 56));
    dispatch thunk of TTRAppStoreUserDefaults.lastAppStoreRatingPromptDate.setter();
    result = swift_endAccess();
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t sub_100468FA8(uint64_t a1, char a2)
{
  if (qword_1007672F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100783AE0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "TTRIAppStoreProvider: Delay showing the App Store review prompt due to user active editing", v6, 2u);
  }

  return sub_1004672E0(a2 & 1);
}

uint64_t sub_10046909C()
{
  sub_100004758(v0 + 32);
  swift_unknownObjectRelease();

  sub_100004758(v0 + 96);

  return swift_deallocClassInstance();
}

void sub_100469118()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100003540(0, &qword_10077EB68);
  sub_1004694E4();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
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

    v6 = v9 & *(v2 + 56);
  }

  v17 = v4;
  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16 || (v18 = v16, swift_dynamicCast(), v15 = v19, v13 = v5, v14 = v6, !v19))
    {
LABEL_20:
      sub_10008BA48();
      return;
    }

LABEL_18:
    if (![v15 activationState])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_20;
      }
    }

    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

BOOL sub_100469374()
{
  sub_100469118();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 keyWindow];
    if (v2)
    {
      v3 = v2;
      v4 = UIResponder.firstResponder.getter();

      if (v4)
      {
        type metadata accessor for TTRIRootViewController();
        v5 = swift_dynamicCastClass() == 0;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  if (qword_1007672F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100783AE0);
  v4 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, v7, "TTRIAppStoreProvider: Can't determine if user is actively editing a reminder.", v8, 2u);
  }

  v5 = 0;
LABEL_11:

  return v5;
}

unint64_t sub_1004694E4()
{
  result = qword_10077EB70;
  if (!qword_10077EB70)
  {
    sub_100003540(255, &qword_10077EB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB70);
  }

  return result;
}

unint64_t sub_1004695BC()
{
  result = qword_100783D10;
  if (!qword_100783D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783D10);
  }

  return result;
}

id sub_100469610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = objc_opt_self();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 predicateForContactsMatchingEmailAddress:v6];
  }

  else
  {
    if (!a4)
    {
      return 0;
    }

    v8 = objc_allocWithZone(CNPhoneNumber);
    v9 = String._bridgeToObjectiveC()();
    v6 = [v8 initWithStringValue:v9];

    v7 = [objc_opt_self() predicateForContactsMatchingPhoneNumber:v6];
  }

  v10 = v7;

  v11 = *(v4 + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = v10;
  if (Strong)
  {
    swift_unknownObjectRelease();
    sub_100058000(&qword_10076B780);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10062D410;
    *(v14 + 32) = [objc_opt_self() descriptorForRequiredKeys];
    *(v14 + 40) = [objc_opt_self() descriptorForRequiredKeysWithThreeDTouchEnabled:0];
  }

  sub_100058000(&qword_100783DD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = 0;
  v16 = [v11 unifiedContactsMatchingPredicate:v13 keysToFetch:isa error:&v24];

  v17 = v24;
  if (!v16)
  {
    v23 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  sub_100469C1C();
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v17;

  if (v18 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:

    return 0;
  }

LABEL_10:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v20 = *(v18 + 32);
  }

  v21 = v20;

  return v21;
}

id sub_10046991C(void *a1)
{
  v2 = [objc_allocWithZone(CNMutableContact) init];
  if (a1[10])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
    v4 = objc_allocWithZone(CNLabeledValue);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithLabel:v5 value:v3];

    sub_100058000(&qword_10076B780);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10062D420;
    *(v7 + 32) = v6;
    v8 = v6;
    sub_100058000(&qword_100783DD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setEmailAddresses:isa];
  }

  if (a1[12])
  {
    v10 = objc_allocWithZone(CNPhoneNumber);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithStringValue:v11];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = objc_allocWithZone(CNLabeledValue);
    v14 = v12;
    v15 = String._bridgeToObjectiveC()();

    v16 = [v13 initWithLabel:v15 value:v14];

    sub_100058000(&qword_10076B780);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10062D420;
    *(v17 + 32) = v16;
    v18 = v16;
    sub_100058000(&qword_100783DD0);
    v19 = Array._bridgeToObjectiveC()().super.isa;

    [v2 setPhoneNumbers:v19];
  }

  if (a1[4] || a1[2])
  {
    v20 = String._bridgeToObjectiveC()();
    [v2 setGivenName:v20];
  }

  if (a1[6])
  {
    v21 = String._bridgeToObjectiveC()();
    [v2 setFamilyName:v21];
  }

  return v2;
}

unint64_t sub_100469C1C()
{
  result = qword_100783DE0;
  if (!qword_100783DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100783DE0);
  }

  return result;
}

void sub_100469C68()
{
  v38 = *v0;
  v1 = sub_100058000(&qword_10076C938);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  v4 = sub_100058000(&qword_100783ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100783ED8);
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_100058000(&qword_100783EE0);
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  v33 = v0;
  sub_100010360();
  Just.init(_:)();
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  (*(v8 + 56))(v6, 1, 1, v7);
  v39 = v0[7];
  v19 = v39;
  v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  sub_1000A96A0();
  sub_10000E188(&qword_100783EE8, &qword_100783ED8);
  sub_1001184EC();
  v21 = v19;
  v22 = v34;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000079B4(v3, &qword_10076C938);

  sub_1000079B4(v6, &qword_100783ED0);
  (*(v32 + 8))(v10, v31);
  (*(v35 + 8))(v14, v22);
  sub_10000E188(&qword_100783EF0, &qword_100783EE0);
  v23 = v33;
  v24 = v36;
  v25 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v37 + 8))(v18, v24);
  v23[8] = v25;

  if (qword_100767300 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100003E30(v26, qword_100783DF0);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Application visibility change handler did set up subscription for timeout", v29, 2u);
  }
}

void sub_10046A1B4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 56);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_1000093DC(0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10046A2CC()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TTRIShowRemindersChromelessBarStates(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

unint64_t sub_10046A40C()
{
  result = qword_100783EF8;
  if (!qword_100783EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783EF8);
  }

  return result;
}

unint64_t sub_10046A464()
{
  result = qword_100783F00;
  if (!qword_100783F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F00);
  }

  return result;
}

uint64_t AnyListEntity.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnyListEntity() + 20));

  return v1;
}

uint64_t type metadata accessor for AnyListEntity()
{
  result = qword_100783FE0;
  if (!qword_100783FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnyListEntity.init(id:name:listBadge:color:supportsListAppearance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v44 = a4;
  v13 = type metadata accessor for AnyListEntityLazyImage.Parameters();
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SmartListType();
  v42 = *(v16 - 8);
  v43 = v16;
  __chkstk_darwin(v16);
  v41 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AnyListEntityID();
  __chkstk_darwin(v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002923BC(a1, a7);
  v21 = type metadata accessor for AnyListEntity();
  v22 = (a7 + v21[5]);
  *v22 = a2;
  v22[1] = a3;
  v23 = v44;
  sub_10000794C(v44, a7 + v21[6], &qword_100783F08);
  v24 = a7 + v21[7];
  v48 = a5;
  sub_10000794C(a5, v24, &qword_100783F10);
  v25 = v21[8];
  v45 = a7;
  *(a7 + v25) = a6;
  v49 = a1;
  sub_1002923BC(a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = sub_100058000(&qword_100783F18);
      v28 = v27[12];
      v29 = v27[16];
      v30 = v27[20];
      *v15 = 1;
    }

    else
    {
      v36 = sub_100058000(&qword_100783F18);
      v28 = v36[12];
      v29 = v36[16];
      v30 = v36[20];
      *v15 = 0;
    }

    sub_10000794C(v23, &v15[v28], &qword_100783F08);
    v37 = &v15[v29];
    v38 = v48;
    sub_10000794C(v48, v37, &qword_100783F10);
    v15[v30] = a6;
    (*(v46 + 104))(v15, enum case for AnyListEntityLazyImage.Parameters.list(_:), v47);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v39 = AnyListEntityLazyImage.init(for:)();
    sub_1000079B4(v38, &qword_100783F10);
    sub_1000079B4(v23, &qword_100783F08);
    sub_100292420(v49);
    *(v45 + v21[9]) = v39;
    return sub_100292420(v20);
  }

  else
  {
    v32 = v41;
    v31 = v42;
    v33 = v43;
    (*(v42 + 32))(v41, v20, v43);
    (*(v31 + 16))(v15, v32, v33);
    (*(v46 + 104))(v15, enum case for AnyListEntityLazyImage.Parameters.smartList(_:), v47);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v34 = AnyListEntityLazyImage.init(for:)();
    sub_1000079B4(v48, &qword_100783F10);
    sub_1000079B4(v23, &qword_100783F08);
    sub_100292420(v49);
    result = (*(v31 + 8))(v32, v33);
    *(v45 + v21[9]) = v34;
  }

  return result;
}

uint64_t sub_10046AA6C()
{
  v0 = sub_100058000(&qword_100767528);
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
  sub_100003E68(v10, static AnyListEntity.typeDisplayRepresentation);
  sub_100003E30(v10, static AnyListEntity.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t AnyListEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100767308 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_100003E30(v0, static AnyListEntity.typeDisplayRepresentation);
}

uint64_t static AnyListEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100767308 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_100003E30(v2, static AnyListEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static AnyListEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_100767308 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_100003E30(v2, static AnyListEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static AnyListEntity.typeDisplayRepresentation.modify())()
{
  if (qword_100767308 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_100003E30(v0, static AnyListEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j_j__swift_endAccess_0;
}

uint64_t AnyListEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_100058000(&qword_100767528);
  __chkstk_darwin(v1 - 8);
  v3 = v18 - v2;
  v4 = sub_100058000(&qword_100783F20);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v18 - v15;
  sub_10046B240();
  type metadata accessor for AnyListEntity();
  AnyListEntityLazyImage.displayRepresentationImage.getter();
  (*(v11 + 16))(v13, v16, v10);
  (*(v11 + 56))(v3, 1, 1, v10);
  sub_10000794C(v9, v6, &qword_100783F20);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_1000079B4(v9, &qword_100783F20);
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_10046B240()
{
  v1 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  __chkstk_darwin(v2);
  v3 = type metadata accessor for SmartListType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnyListEntityID();
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002923BC(v0, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100292420(v9);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
    v11 = *(v0 + *(type metadata accessor for AnyListEntity() + 20));
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v11);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
    return LocalizedStringResource.init(stringInterpolation:)();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    v15 = SmartListType.remSmartListType.getter();
    v16 = REMSmartListType.title.getter();
    v18 = v17;

    if (v18)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v21 = v20;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*&v19);

    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
    LocalizedStringResource.init(stringInterpolation:)();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10046B4D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100767310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1007A8780;
  *a1 = static AnyListEntity.defaultQuery;
  *(a1 + 8) = v2;
}

uint64_t static AnyListEntity.defaultQuery.getter()
{
  if (qword_100767310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static AnyListEntity.defaultQuery;

  return v0;
}

uint64_t sub_10046B5E8(uint64_t a1)
{
  v2 = sub_10046DFE4(&qword_100767538, type metadata accessor for AnyListEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10046B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001AA3C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10046B72C(uint64_t a1)
{
  v2 = sub_10046DFE4(&qword_100783F60, type metadata accessor for AnyListEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10046B7A8()
{
  v0 = type metadata accessor for AppIntentsDependencyKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  sub_100058000(&qword_100767540);
  (*(v1 + 104))(v6, enum case for AppIntentsDependencyKey.remStore(_:), v0);
  (*(v1 + 16))(v3, v6, v0);
  sub_10046DFE4(&qword_100767548, &type metadata accessor for AppIntentsDependencyKey);
  AnyHashable.init<A>(_:)();
  (*(v1 + 8))(v6, v0);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  static AnyListEntity.defaultQuery = 0;
  qword_1007A8780 = result;
  return result;
}

char *AnyListEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_100767310 != -1)
  {
    swift_once();
  }

  return &static AnyListEntity.defaultQuery;
}

uint64_t static AnyListEntity.defaultQuery.setter(char a1, uint64_t a2)
{
  if (qword_100767310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AnyListEntity.defaultQuery = a1;
  qword_1007A8780 = a2;
}

uint64_t (*static AnyListEntity.defaultQuery.modify())()
{
  if (qword_100767310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

unint64_t sub_10046BBA8()
{
  result = qword_100783F40;
  if (!qword_100783F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F40);
  }

  return result;
}

unint64_t sub_10046BD20()
{
  result = qword_100783F70;
  if (!qword_100783F70)
  {
    sub_10005D20C(&qword_100783F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F70);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for AnyListEntity(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    type metadata accessor for AnyListEntityID();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for UUID();
    }

    else
    {
      v8 = type metadata accessor for SmartListType();
    }

    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    v10 = a3[5];
    v11 = a3[6];
    v12 = &a1[v10];
    v13 = &a2[v10];
    v14 = *(v13 + 1);
    *v12 = *v13;
    *(v12 + 1) = v14;
    v15 = type metadata accessor for ListBadgeEntity();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);

    if (v17(&a2[v11], 1, v15))
    {
      v18 = sub_100058000(&qword_100783F08);
      memcpy(&a1[v11], &a2[v11], *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(&a1[v11], &a2[v11], v15);
      (*(v16 + 56))(&a1[v11], 0, 1, v15);
    }

    v19 = a3[7];
    v20 = type metadata accessor for ColorEntity();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(&a2[v19], 1, v20))
    {
      v22 = sub_100058000(&qword_100783F10);
      memcpy(&a1[v19], &a2[v19], *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v21 + 16))(&a1[v19], &a2[v19], v20);
      (*(v21 + 56))(&a1[v19], 0, 1, v20);
    }

    v23 = a3[9];
    a1[a3[8]] = a2[a3[8]];
    *&a1[v23] = *&a2[v23];
  }

  return a1;
}

uint64_t destroy for AnyListEntity(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyListEntityID();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for UUID();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_7;
    }

    v5 = type metadata accessor for SmartListType();
  }

  (*(*(v5 - 8) + 8))(a1, v5);
LABEL_7:

  v6 = *(a2 + 24);
  v7 = type metadata accessor for ListBadgeEntity();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v6, 1, v7))
  {
    (*(v8 + 8))(a1 + v6, v7);
  }

  v9 = *(a2 + 28);
  v10 = type metadata accessor for ColorEntity();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(a1 + v9, 1, v10))
  {
    (*(v11 + 8))(a1 + v9, v10);
  }
}

uint64_t initializeWithCopy for AnyListEntity(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for AnyListEntityID();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for UUID();
  }

  else
  {
    v7 = type metadata accessor for SmartListType();
  }

  (*(*(v7 - 8) + 16))(a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  v8 = a3[5];
  v9 = a3[6];
  v10 = (a1 + v8);
  v11 = (a2 + v8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = type metadata accessor for ListBadgeEntity();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);

  if (v15(a2 + v9, 1, v13))
  {
    v16 = sub_100058000(&qword_100783F08);
    memcpy((a1 + v9), (a2 + v9), *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(a1 + v9, a2 + v9, v13);
    (*(v14 + 56))(a1 + v9, 0, 1, v13);
  }

  v17 = a3[7];
  v18 = type metadata accessor for ColorEntity();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(a2 + v17, 1, v18))
  {
    v20 = sub_100058000(&qword_100783F10);
    memcpy((a1 + v17), (a2 + v17), *(*(v20 - 8) + 64));
  }

  else
  {
    (*(v19 + 16))(a1 + v17, a2 + v17, v18);
    (*(v19 + 56))(a1 + v17, 0, 1, v18);
  }

  v21 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v21) = *(a2 + v21);

  return a1;
}

uint64_t assignWithCopy for AnyListEntity(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1 != a2)
  {
    sub_100292420(a1);
    type metadata accessor for AnyListEntityID();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for UUID();
    }

    else
    {
      v7 = type metadata accessor for SmartListType();
    }

    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  v8 = a3[5];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  *v9 = *v10;
  v9[1] = v10[1];

  v11 = a3[6];
  v12 = type metadata accessor for ListBadgeEntity();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (v15)
  {
    if (!v16)
    {
      (*(v13 + 16))(a1 + v11, a2 + v11, v12);
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v16)
  {
    (*(v13 + 8))(a1 + v11, v12);
LABEL_12:
    v17 = sub_100058000(&qword_100783F08);
    memcpy((a1 + v11), (a2 + v11), *(*(v17 - 8) + 64));
    goto LABEL_13;
  }

  (*(v13 + 24))(a1 + v11, a2 + v11, v12);
LABEL_13:
  v18 = a3[7];
  v19 = type metadata accessor for ColorEntity();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(a1 + v18, 1, v19);
  v23 = v21(a2 + v18, 1, v19);
  if (!v22)
  {
    if (!v23)
    {
      (*(v20 + 24))(a1 + v18, a2 + v18, v19);
      goto LABEL_19;
    }

    (*(v20 + 8))(a1 + v18, v19);
    goto LABEL_18;
  }

  if (v23)
  {
LABEL_18:
    v24 = sub_100058000(&qword_100783F10);
    memcpy((a1 + v18), (a2 + v18), *(*(v24 - 8) + 64));
    goto LABEL_19;
  }

  (*(v20 + 16))(a1 + v18, a2 + v18, v19);
  (*(v20 + 56))(a1 + v18, 0, 1, v19);
LABEL_19:
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);

  return a1;
}

uint64_t initializeWithTake for AnyListEntity(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for AnyListEntityID();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for UUID();
  }

  else
  {
    v7 = type metadata accessor for SmartListType();
  }

  (*(*(v7 - 8) + 32))(a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v9 = type metadata accessor for ListBadgeEntity();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    v11 = sub_100058000(&qword_100783F08);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  v12 = a3[7];
  v13 = type metadata accessor for ColorEntity();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a2 + v12, 1, v13))
  {
    v15 = sub_100058000(&qword_100783F10);
    memcpy((a1 + v12), (a2 + v12), *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(a1 + v12, a2 + v12, v13);
    (*(v14 + 56))(a1 + v12, 0, 1, v13);
  }

  v16 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v16) = *(a2 + v16);
  return a1;
}

uint64_t assignWithTake for AnyListEntity(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1 != a2)
  {
    sub_100292420(a1);
    type metadata accessor for AnyListEntityID();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for UUID();
    }

    else
    {
      v7 = type metadata accessor for SmartListType();
    }

    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  v8 = a3[5];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v12 = *v10;
  v11 = v10[1];
  *v9 = v12;
  v9[1] = v11;

  v13 = a3[6];
  v14 = type metadata accessor for ListBadgeEntity();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      (*(v15 + 32))(a1 + v13, a2 + v13, v14);
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v18)
  {
    (*(v15 + 8))(a1 + v13, v14);
LABEL_12:
    v19 = sub_100058000(&qword_100783F08);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_13;
  }

  (*(v15 + 40))(a1 + v13, a2 + v13, v14);
LABEL_13:
  v20 = a3[7];
  v21 = type metadata accessor for ColorEntity();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(a1 + v20, 1, v21);
  v25 = v23(a2 + v20, 1, v21);
  if (!v24)
  {
    if (!v25)
    {
      (*(v22 + 40))(a1 + v20, a2 + v20, v21);
      goto LABEL_19;
    }

    (*(v22 + 8))(a1 + v20, v21);
    goto LABEL_18;
  }

  if (v25)
  {
LABEL_18:
    v26 = sub_100058000(&qword_100783F10);
    memcpy((a1 + v20), (a2 + v20), *(*(v26 - 8) + 64));
    goto LABEL_19;
  }

  (*(v22 + 32))(a1 + v20, a2 + v20, v21);
  (*(v22 + 56))(a1 + v20, 0, 1, v21);
LABEL_19:
  v27 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v27) = *(a2 + v27);

  return a1;
}

void sub_10046CF5C()
{
  type metadata accessor for AnyListEntityID();
  if (v0 <= 0x3F)
  {
    sub_10046D0B8(319, &qword_100783FF0, &type metadata accessor for ListBadgeEntity);
    if (v1 <= 0x3F)
    {
      sub_10046D0B8(319, &unk_100783FF8, &type metadata accessor for ColorEntity);
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void sub_10046D0B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10046D10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnyListEntityLazyImage.Parameters();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmartListType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100783F10);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - v10;
  v12 = sub_100058000(&qword_100783F08);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - v13;
  v15 = type metadata accessor for AnyListEntityID();
  __chkstk_darwin(v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v51 - v20;
  v59 = v7;
  v60 = v6;
  v52 = *(v7 + 16);
  v52(&v51 - v20, a1, v6, v19);
  swift_storeEnumTagMultiPayload();
  v61 = a1;
  v22 = SmartListType.title.getter();
  v24 = v23;
  v25 = type metadata accessor for ListBadgeEntity();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v26 = type metadata accessor for ColorEntity();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  sub_1002923BC(v21, a2);
  v27 = type metadata accessor for AnyListEntity();
  v28 = (a2 + v27[5]);
  *v28 = v22;
  v28[1] = v24;
  v29 = a2 + v27[6];
  v57 = v14;
  sub_10000794C(v14, v29, &qword_100783F08);
  v30 = a2 + v27[7];
  v58 = v11;
  sub_10000794C(v11, v30, &qword_100783F10);
  v31 = v27[8];
  v62 = a2;
  *(a2 + v31) = 2;
  v32 = v17;
  sub_1002923BC(v21, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = sub_100058000(&qword_100783F18);
      v35 = v34[12];
      v36 = v34[16];
      v37 = v34[20];
      v38 = v54;
      *v54 = 1;
    }

    else
    {
      v46 = sub_100058000(&qword_100783F18);
      v35 = v46[12];
      v36 = v46[16];
      v37 = v46[20];
      v38 = v54;
      *v54 = 0;
    }

    v47 = v57;
    sub_10000794C(v57, &v38[v35], &qword_100783F08);
    v48 = &v38[v36];
    v49 = v58;
    sub_10000794C(v58, v48, &qword_100783F10);
    v38[v37] = 2;
    (*(v55 + 104))(v38, enum case for AnyListEntityLazyImage.Parameters.list(_:), v56);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v50 = AnyListEntityLazyImage.init(for:)();
    (*(v59 + 8))(v61, v60);
    sub_1000079B4(v49, &qword_100783F10);
    sub_1000079B4(v47, &qword_100783F08);
    sub_100292420(v21);
    *(v62 + v27[9]) = v50;
    return sub_100292420(v32);
  }

  else
  {
    v40 = v59;
    v39 = v60;
    v41 = v53;
    (*(v59 + 32))(v53, v17, v60);
    v42 = v54;
    (v52)(v54, v41, v39);
    (*(v55 + 104))(v42, enum case for AnyListEntityLazyImage.Parameters.smartList(_:), v56);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v43 = AnyListEntityLazyImage.init(for:)();
    v44 = *(v40 + 8);
    v44(v61, v39);
    v44(v41, v39);
    sub_1000079B4(v58, &qword_100783F10);
    sub_1000079B4(v57, &qword_100783F08);
    result = sub_100292420(v21);
    *(v62 + v27[9]) = v43;
  }

  return result;
}

uint64_t sub_10046D708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for AnyListEntityLazyImage.Parameters();
  v74 = *(v3 - 8);
  v75 = v3;
  __chkstk_darwin(v3);
  v77 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for SmartListType();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AnyListEntity();
  __chkstk_darwin(v85);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100783F10);
  __chkstk_darwin(v8 - 8);
  v84 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  v13 = sub_100058000(&qword_100783F08);
  __chkstk_darwin(v13 - 8);
  v83 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v71 = type metadata accessor for AnyListEntityID();
  __chkstk_darwin(v71);
  v73 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v82 = &v67 - v20;
  __chkstk_darwin(v21);
  v23 = &v67 - v22;
  v24 = a1[3];
  v86 = a1;
  sub_10000C36C(a1, v24);
  v25 = dispatch thunk of TTRListProtocol.objectID.getter();
  v26 = [v25 entityName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = [objc_opt_self() cdEntityName];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v80 = v7;
  if (v27 == v31 && v29 == v33)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v72 = v25;
  v34 = [v25 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_storeEnumTagMultiPayload();
  v35 = v86;
  sub_10000B0D8(v86, v87);
  ListBadgeEntity.init(list:)();
  sub_10000B0D8(v35, v87);
  ColorEntity.init(list:)();
  v76 = v23;
  v36 = v23;
  v37 = v82;
  sub_1002923BC(v36, v82);
  sub_10000C36C(v35, v35[3]);
  v38 = dispatch thunk of TTRListProtocol.displayName.getter();
  v40 = v39;
  v78 = v17;
  v41 = v17;
  v42 = v83;
  sub_10000794C(v41, v83, &qword_100783F08);
  v79 = v12;
  v43 = v84;
  sub_10000794C(v12, v84, &qword_100783F10);
  sub_10000C36C(v35, v35[3]);
  v44 = dispatch thunk of TTRListProtocol.accountCapabilities.getter();
  v45 = [v44 supportsListAppearance];

  v46 = v80;
  sub_1002923BC(v37, v80);
  v47 = v85;
  v48 = (v46 + *(v85 + 20));
  *v48 = v38;
  v48[1] = v40;
  sub_10000794C(v42, v46 + v47[6], &qword_100783F08);
  sub_10000794C(v43, v46 + v47[7], &qword_100783F10);
  *(v46 + v47[8]) = v45;
  v49 = v37;
  v50 = v73;
  sub_1002923BC(v49, v73);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v52 = sub_100058000(&qword_100783F18);
      v53 = v52[12];
      v54 = v52[16];
      v55 = v52[20];
      v56 = v77;
      *v77 = 1;
    }

    else
    {
      v62 = sub_100058000(&qword_100783F18);
      v53 = v62[12];
      v54 = v62[16];
      v55 = v62[20];
      v56 = v77;
      *v77 = 0;
    }

    v63 = v83;
    sub_10000794C(v83, &v56[v53], &qword_100783F08);
    v64 = v84;
    sub_10000794C(v84, &v56[v54], &qword_100783F10);
    v56[v55] = v45;
    (*(v74 + 104))(v56, enum case for AnyListEntityLazyImage.Parameters.list(_:), v75);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v65 = AnyListEntityLazyImage.init(for:)();

    sub_1000079B4(v64, &qword_100783F10);
    sub_1000079B4(v63, &qword_100783F08);
    sub_100292420(v82);
    sub_1000079B4(v79, &qword_100783F10);
    sub_1000079B4(v78, &qword_100783F08);
    sub_100292420(v76);
    *(v46 + *(v85 + 36)) = v65;
    sub_100292420(v50);
  }

  else
  {
    v57 = v69;
    v58 = v68;
    v59 = v70;
    (*(v69 + 32))(v68, v50, v70);
    v60 = v77;
    (*(v57 + 16))(v77, v58, v59);
    (*(v74 + 104))(v60, enum case for AnyListEntityLazyImage.Parameters.smartList(_:), v75);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v61 = AnyListEntityLazyImage.init(for:)();

    (*(v57 + 8))(v58, v59);
    sub_1000079B4(v84, &qword_100783F10);
    sub_1000079B4(v83, &qword_100783F08);
    sub_100292420(v82);
    sub_1000079B4(v79, &qword_100783F10);
    sub_1000079B4(v78, &qword_100783F08);
    sub_100292420(v76);
    *(v46 + *(v85 + 36)) = v61;
  }

  sub_10046DF80(v46, v81);
  return sub_100004758(v86);
}

uint64_t sub_10046DF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyListEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046DFE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10046E034()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100784038);
  v1 = sub_100003E30(v0, qword_100784038);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10046E0FC(void **a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076DB50);
  isa = v4[-1].isa;
  __chkstk_darwin(v4);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v53 - v9;
  sub_100058000(&qword_10076DB40);
  __chkstk_darwin(a1);
  v13 = (v53 - v12);
  v14 = *a1;
  if (!v14)
  {
    if (qword_100767318 == -1)
    {
LABEL_19:
      v46 = type metadata accessor for Logger();
      sub_100003E30(v46, qword_100784038);
      v58 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v58, v47, "Given upgrade info has no eligible CalDav account ID for upgrade. Giving up.", v48, 2u);
      }

      v49 = v58;

      return;
    }

LABEL_29:
    swift_once();
    goto LABEL_19;
  }

  v54 = v13;
  v55 = isa;
  v58 = v4;
  v56 = v11;
  sub_1002AAF0C(v11, v59);
  v57 = v14;
  v53[1] = a2;
  v15 = dispatch thunk of TTRCloudKitMigrationManager.accountsEligibleForMigration.getter();
  v16 = v15;
  v17 = v15 + 64;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v15 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (!v20)
  {
LABEL_6:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        v30 = v54;
        v29 = v55;
        v31 = *(v55 + 7);
        v32 = v54;
        v33 = 1;
        goto LABEL_13;
      }

      v20 = *(v17 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  while (1)
  {
    v23 = v22;
LABEL_9:
    v24 = __clz(__rbit64(v20)) | (v23 << 6);
    v25 = *(v16 + 56);
    v26 = *(*(v16 + 48) + 8 * v24);
    v27 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
    (*(*(v27 - 8) + 16))(&v10[SLODWORD(v58[6].isa)], v25 + *(*(v27 - 8) + 72) * v24, v27);
    *v10 = v26;
    sub_10046E9C0(v10, v7);
    sub_100093330();
    v28 = v26;
    if (static NSObject.== infix(_:_:)())
    {
      break;
    }

    v20 &= v20 - 1;
    sub_1000079B4(v7, &qword_10076DB50);
    v22 = v23;
    if (!v20)
    {
      goto LABEL_6;
    }
  }

  v30 = v54;
  sub_10046E9C0(v7, v54);
  v29 = v55;
  v31 = *(v55 + 7);
  v32 = v30;
  v33 = 0;
LABEL_13:
  v34 = v58;
  v31(v32, v33, 1, v58);

  if ((*(v29 + 6))(v30, 1, v34) != 1)
  {
    v50 = *v30;
    isa_low = SLODWORD(v34[6].isa);
    v52 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
    (*(*(v52 - 8) + 8))(v30 + isa_low, v52);
    dispatch thunk of TTRCloudKitMigrationManager.migrateAccountToCloudKit(accountID:)();

    goto LABEL_25;
  }

  sub_1000079B4(v30, &qword_10076DB40);
  if (qword_100767318 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003E30(v35, qword_100784038);
  v36 = v57;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v59[0] = v40;
    *v39 = 136446210;
    v41 = [v36 stringRepresentation];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = sub_100004060(v42, v44, v59);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "Given account in the upgrade info is no longer eligible for migration currently. Giving up. {accountID: %{public}s}", v39, 0xCu);
    sub_100004758(v40);

LABEL_25:
    sub_1002AAF68(v56);
    return;
  }

  sub_1002AAF68(v56);
}

uint64_t sub_10046E6FC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRCloudKitMigrationManager();
  v9 = static TTRCloudKitMigrationManager.shared.getter();
  v10 = TTRCloudKitMigrationManager.queue.getter();
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = *(a1 + 48);
  *(v11 + 72) = v9;
  aBlock[4] = sub_10046E9B4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_100729E08;
  v13 = _Block_copy(aBlock);
  sub_1002AAF0C(a1, &v16);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10001A4CC();
  sub_100058000(&qword_100780A50);
  sub_10001A524();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15);
}

uint64_t sub_10046E9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076DB50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046EA30()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007840F0);
  v1 = sub_100003E30(v0, qword_1007840F0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10046EAF8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_appliedConfiguration;
  v11 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell____lazy_storage___primaryButton] = 0;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  sub_1004704E8();
  v13 = v12;
  UICollectionViewCell.contentConfiguration.setter();
  v14 = [v13 contentView];
  _s9Reminders14ContentBoxViewCMa_0();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

    if (qword_100767320 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_1007840F0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "TTRIAccountsListsInlinePermissionButtonCell: failed to create ContentBoxView", v19, 2u);
    }

    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v14 = v15;
  }

  v20 = v15;
  v21 = v14;
  v22 = v20;
  [v22 setPreservesSuperviewLayoutMargins:1];
  [v22 setLayoutMarginsRelativeArrangement:1];
  sub_100058000(&qword_10076B780);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10062D420;
  *(v23 + 32) = sub_10046EEE4();
  v24 = objc_allocWithZone(type metadata accessor for TTRNoAnimationContainerBoxView());
  sub_100003540(0, &qword_10076B020);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = [v24 initWithArrangedSubviews:isa];

  v27 = v26;
  [v27 setPreservesSuperviewLayoutMargins:0];
  v28 = v27;
  [v28 setLayoutMarginsRelativeArrangement:1];
  [v28 setDebugBoundingBoxesEnabled:0];

  [v28 setDirectionalLayoutMargins:{0.0, 44.0, 0.0, 0.0}];
  [v28 setHorizontalAlignment:1];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10062D420;
  *(v29 + 32) = v28;
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v22 setArrangedSubviews:v30];

  return v13;
}

id sub_10046EEE4()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell____lazy_storage___primaryButton;
  v14 = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell____lazy_storage___primaryButton];
  if (v14)
  {
    v15 = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell____lazy_storage___primaryButton];
  }

  else
  {
    static UIButton.Configuration.plain()();
    UIButton.Configuration.contentInsets.setter();
    UIButton.Configuration.titlePadding.setter();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v2);
    UIButton.Configuration.titleAlignment.setter();
    sub_100003540(0, &unk_10077A690);
    (*(v7 + 16))(v9, v12, v6);
    sub_100003540(0, &qword_10076BA60);
    *(swift_allocObject() + 16) = v0;
    v16 = v0;
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v17 = UIButton.init(configuration:primaryAction:)();
    (*(v7 + 8))(v12, v6);
    v18 = *&v1[v13];
    *&v1[v13] = v17;
    v15 = v17;

    v14 = 0;
  }

  v19 = v14;
  return v15;
}

uint64_t sub_10046F2A0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_100058000(&qword_10076BE18);
  __chkstk_darwin(v3 - 8);
  v38 = &v34 - v4;
  v5 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  __chkstk_darwin(v21);
  v23 = &v34 - v22;
  v39 = v2;
  sub_100030908();
  sub_100058000(&qword_10076EA28);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_10000794C(&v13[*(v11 + 28)], v9, &unk_10077A660);
  v24 = sub_100058000(&qword_10077A670);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v9, 1, v24) == 1)
  {
    sub_1000299A4(v13);
    return sub_1000079B4(v9, &unk_10077A660);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_1000299A4(v13);
    (*(v25 + 8))(v9, v24);
    (*(v15 + 32))(v23, v20, v14);
    (*(v15 + 16))(v17, v23, v14);
    if ((*(v15 + 88))(v17, v14) == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
    {
      (*(v15 + 96))(v17, v14);
      v27 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
      v28 = *(v27 - 8);
      if ((*(v28 + 88))(v17, v27) == enum case for TTRAccountsListsViewModel.PermissionRequest.primaryButton(_:))
      {
        (*(v28 + 96))(v17, v27);
        v30 = v35;
        v29 = v36;
        v31 = v37;
        (*(v36 + 32))(v35, v17, v37);
        v32 = v38;
        (*(v29 + 16))(v38, v30, v31);
        (*(v29 + 56))(v32, 0, 1, v31);
        sub_10046F824(v32);
        (*(v29 + 8))(v30, v31);
        return (*(v15 + 8))(v23, v14);
      }

      else
      {
        (*(v15 + 8))(v23, v14);
        return (*(v28 + 8))(v17, v27);
      }
    }

    else
    {
      v33 = *(v15 + 8);
      v33(v23, v14);
      return (v33)(v17, v14);
    }
  }
}

uint64_t sub_10046F824(uint64_t a1)
{
  v3 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076BE18);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_100784190);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_appliedConfiguration;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &qword_10076BE18);
  sub_10000794C(a1, &v12[v14], &qword_10076BE18);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) != 1)
  {
    sub_10000794C(v12, v8, &qword_10076BE18);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v17 = v20;
      (*(v4 + 32))(v20, &v12[v14], v3);
      sub_100470A04(&qword_100784198, &type metadata accessor for TTRPermissionConfiguration.PrimaryButton);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v4 + 8);
      v19(v17, v3);
      v19(v8, v3);
      sub_1000079B4(v12, &qword_10076BE18);
      if (v18)
      {
        return sub_1000079B4(a1, &qword_10076BE18);
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &qword_100784190);
LABEL_7:
    sub_10046FE44(a1);
    return sub_1000079B4(a1, &qword_10076BE18);
  }

  if (v15(&v12[v14], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1000079B4(v12, &qword_10076BE18);
  return sub_1000079B4(a1, &qword_10076BE18);
}

uint64_t sub_10046FB8C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19[-1] - v10;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "_bridgedUpdateConfigurationUsingState:", isa);

  static UIListContentConfiguration.cell()();
  v13 = type metadata accessor for UICellConfigurationState();
  v19[3] = v13;
  v19[4] = &protocol witness table for UICellConfigurationState;
  v14 = sub_1000317B8(v19);
  (*(*(v13 - 8) + 16))(v14, a1, v13);
  UIListContentConfiguration.updated(for:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_100004758(v19);
  v16 = [v2 contentView];
  UIView.applyLayoutMargins(from:)();

  return (v15)(v11, v5);
}

uint64_t sub_10046FE44(uint64_t a1)
{
  v3 = sub_100058000(&unk_100772600);
  __chkstk_darwin(v3 - 8);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_100058000(&qword_10076BE18);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_appliedConfiguration;
  swift_beginAccess();
  sub_10047053C(a1, v1 + v15);
  swift_endAccess();
  sub_10000794C(v1 + v15, v10, &qword_10076BE18);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v16 = &qword_10076BE18;
    v17 = v10;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v18 = sub_10046EEE4();
    UIButton.configuration.getter();
    v19 = type metadata accessor for UIButton.Configuration();
    if (!(*(*(v19 - 8) + 48))(v7, 1, v19))
    {
      TTRPermissionConfiguration.PrimaryButton.title.getter();
      UIButton.Configuration.title.setter();
      UIButton.configuration.setter();

      return (*(v12 + 8))(v14, v11);
    }

    sub_10000794C(v7, v21, &unk_100772600);
    UIButton.configuration.setter();

    (*(v12 + 8))(v14, v11);
    v17 = v7;
    v16 = &unk_100772600;
  }

  return sub_1000079B4(v17, v16);
}

void sub_100470160()
{
  sub_10003B788(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_delegate);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_appliedConfiguration, &qword_10076BE18);
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell____lazy_storage___primaryButton);
}

unint64_t sub_1004703EC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &_s9Reminders37ContentConfigurationForContentBoxViewVN_0;
  result = sub_1004704E8();
  *(a1 + 32) = result;
  return result;
}

void (*sub_100470420(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 24) = &_s9Reminders37ContentConfigurationForContentBoxViewVN_0;
  *(v2 + 32) = sub_1004704E8();
  return sub_10009D584;
}

uint64_t sub_100470498(uint64_t a1)
{
  sub_10000B0D8(a1, v2);
  sub_100058000(&qword_10077A650);
  return swift_dynamicCast();
}

unint64_t sub_1004704E8()
{
  result = qword_100784188;
  if (!qword_100784188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784188);
  }

  return result;
}

uint64_t sub_10047053C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BE18);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1004705D0()
{
  _s9Reminders14ContentBoxViewCMa_0();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100470A04(&qword_1007841A8, _s9Reminders14ContentBoxViewCMa_0);
  return v0;
}

uint64_t sub_100470648()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10077A688);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for TTRPermissionConfiguration.Action();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v19 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076BE18);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_appliedConfiguration;
  swift_beginAccess();
  sub_10000794C(v1 + v14, v9, &qword_10076BE18);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000079B4(v9, &qword_10076BE18);
  }

  (*(v11 + 32))(v13, v9, v10);
  TTRPermissionConfiguration.PrimaryButton.action.getter();
  v16 = v20;
  if ((*(v20 + 48))(v4, 1, v5) == 1)
  {
    (*(v11 + 8))(v13, v10);
    return sub_1000079B4(v4, &qword_10077A688);
  }

  else
  {
    v17 = v19;
    (*(v16 + 32))(v19, v4, v5);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_100470A04(&qword_1007841A0, type metadata accessor for TTRIAccountsListsInlinePermissionButtonCell);
      dispatch thunk of TTRInlinePermissionViewDelegate.inlinePermissionView(_:didRequestAction:)();
      swift_unknownObjectRelease();
    }

    (*(v16 + 8))(v17, v5);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100470A04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100470A4C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100470B24(a1, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100470AA8()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_10012EDC8(*(v0 + 48));
  swift_unknownObjectRelease();
  sub_100004758(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_100470B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v39[-v9];
  __chkstk_darwin(v11);
  v13 = &v39[-v12];
  if ((*(a1 + 48) - 1) <= 1)
  {
    v14 = sub_10009337C();
    v15 = sub_100093644(v14);

    if (v15)
    {
      v47 = a2;
      v16 = *(sub_100058000(&unk_100793000) + 48);
      *v13 = [v15 objectID];
      v17 = enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:);
      v18 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
      (*(*(v18 - 8) + 104))(&v13[v16], v17, v18);
      (*(v5 + 104))(v13, enum case for REMNavigationSpecifier.list(_:), v4);
      if (qword_100767210 != -1)
      {
        swift_once();
      }

      v46 = v15;
      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_10077FC40);
      v20 = *(v5 + 16);
      v20(v10, v13, v4);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v41 = v21;
        v24 = v23;
        v42 = swift_slowAlloc();
        v48 = v42;
        *v24 = 136446210;
        v20(v7, v10, v4);
        v25 = String.init<A>(describing:)();
        v43 = v20;
        v26 = v25;
        v40 = v22;
        v28 = v27;
        v29 = *(v5 + 8);
        v44 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v45 = v29;
        v29(v10, v4);
        v30 = sub_100004060(v26, v28, &v48);

        v31 = v24;
        *(v24 + 4) = v30;
        v20 = v43;
        v32 = v41;
        _os_log_impl(&_mh_execute_header, v41, v40, "Performing post-welcome navigation {navigationSpecifier: %{public}s}", v31, 0xCu);
        sub_100004758(v42);
      }

      else
      {

        v33 = *(v5 + 8);
        v44 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v45 = v33;
        v33(v10, v4);
      }

      v34 = swift_allocObject();
      swift_weakInit();
      v20(v7, v13, v4);
      v35 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      (*(v5 + 32))(v36 + v35, v7, v4);
      *(v36 + ((v6 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_100371CC8;
      *(v37 + 24) = v36;

      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      v45(v13, v4);
    }
  }

  InitiallyEmptyCurrentValueSubject.send(_:)();
}

uint64_t type metadata accessor for TTRIRemindersListDiffableDataSource()
{
  result = qword_100784270;
  if (!qword_100784270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004710BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_1007842C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TTRIRemindersListPresentationTree();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_1007842C0);
    static TTRIRemindersListItemIntermediateViewModel.placeholder(itemID:)();
  }

  else
  {
    sub_100472DF8(v6, v10);
    sub_1001303F0(a1, a2);
    sub_10030C380(v10);
  }

  v11 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
}

uint64_t sub_100471278()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &unk_10076BB50;
    v19 = v13;
LABEL_5:
    sub_1000079B4(v19, v18);
LABEL_6:
    v20 = 0;
    return v20 & 1;
  }

  (*(v15 + 32))(v17, v13, v14);
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v18 = &qword_100772140;
    v19 = v6;
    goto LABEL_5;
  }

  (*(v8 + 32))(v10, v6, v7);
  v22 = v33;
  TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
  v24 = v34;
  v23 = v35;
  v25 = (*(v34 + 88))(v22, v35);
  if (v25 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:) || v25 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:))
  {
    (*(v24 + 96))(v22, v23);
    v26 = v30;
    v27 = v31;
    v28 = v22;
    v29 = v32;
    (*(v31 + 32))(v30, v28, v32);
    v20 = TTRRemindersListViewModel.SectionHeader.isVisible.getter();
    (*(v27 + 8))(v26, v29);
    (*(v8 + 8))(v10, v7);
    (*(v15 + 8))(v17, v14);
    return v20 & 1;
  }

  if (v25 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:))
  {
    (*(v8 + 8))(v10, v7);
    (*(v15 + 8))(v17, v14);
    goto LABEL_6;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100471774@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = sub_100058000(&qword_1007842C8);
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_100058000(&qword_1007842D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v18 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v8 + 8))(v10, v7);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v29;
    (*(v12 + 16))(v14, v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * (v19 - 1), v11);

    (*(v12 + 32))(v17, v14, v11);
    if (sub_100471B50(v28))
    {
      (*(v12 + 8))(v17, v11);
      v21 = enum case for TTRRelativeInsertionPosition.afterAll<A>(_:);
      v22 = sub_100058000(&qword_100769530);
      v23 = *(v22 - 8);
      (*(v23 + 104))(v20, v21, v22);
      return (*(v23 + 56))(v20, 0, 1, v22);
    }

    else
    {
      UICollectionViewDiffableDataSource.snapshot(for:)();
      sub_100472024(v6, v3, v20);
      (*(v26 + 8))(v6, v27);
      return (*(v12 + 8))(v17, v11);
    }
  }

  else
  {

    v25 = sub_100058000(&qword_100769530);
    return (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
  }
}

uint64_t sub_100471B50(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v30 = sub_100058000(&qword_100777F28);
  __chkstk_darwin(v30);
  v6 = &v29 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v36 = v8 + 16;
  v32 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:);
  v33 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:);
  v31 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:);
  v37 = v8;
  v35 = (v8 + 8);
  v38 = a1;

  v16 = 0;
  v34 = v7;
  while (v14)
  {
    v18 = v6;
    v19 = v16;
LABEL_11:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v37 + 16))(v10, *(v38 + 48) + *(v37 + 72) * (v20 | (v19 << 6)), v7);
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();
    v21 = v7;
    v22 = type metadata accessor for TTRRemindersListViewModel.Item();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v4, 1, v22) == 1)
    {
      sub_1000079B4(v4, &qword_100772140);
      v17 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
      v6 = v18;
      (*(*(v17 - 8) + 56))(v18, 1, 1, v17);
      (*v35)(v10, v21);
      v16 = v19;
      v7 = v21;
    }

    else
    {
      TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
      (*(v23 + 8))(v4, v22);
      v6 = v18;
      v24 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v18, 0, 1, v24);
      v26 = (*(v25 + 88))(v18, v24);
      if (v26 == v33)
      {
        v27 = v34;
        (*v35)(v10, v34);
        (*(v25 + 8))(v6, v24);
        v7 = v27;
        v16 = v19;
      }

      else
      {
        if (v26 == v32)
        {

          (*v35)(v10, v34);
          (*(v25 + 8))(v18, v24);
          return 1;
        }

        if (v26 != v31)
        {
          goto LABEL_21;
        }

        v7 = v34;
        (*v35)(v10, v34);
        v16 = v19;
      }
    }
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return 0;
    }

    v14 = *(v11 + 8 * v19);
    ++v16;
    if (v14)
    {
      v18 = v6;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_21:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100472024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a2;
  v5 = sub_100058000(&qword_1007842C8);
  v50 = *(v5 - 8);
  __chkstk_darwin(v5);
  v49 = &v47 - v6;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v57 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v54 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  v51 = a1;
  v52 = v5;
  v22 = NSDiffableDataSourceSectionSnapshot.rootItems.getter();
  v23 = *(v22 + 16);
  if (!v23)
  {

    goto LABEL_5;
  }

  v53 = a3;
  (*(v16 + 16))(v18, v22 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * (v23 - 1), v15);

  v24 = *(v16 + 32);
  v24(v21, v18, v15);
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v29 = v12;
    v30 = *(v13 + 32);
    v31 = v54;
    v48 = v29;
    v30(v54, v11);
    v32 = v57;
    TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
    v33 = v55;
    v34 = v56;
    v35 = (*(v55 + 88))(v32, v56);
    if (v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
    {
      (*(v33 + 8))(v32, v34);
      v40 = v49;
      v41 = v52;
      NSDiffableDataSourceSectionSnapshot.snapshot(of:includingParent:)();
      sub_100472024(v40, v58);
      (*(v50 + 8))(v40, v41);
      (*(v13 + 8))(v31, v48);
      return (*(v16 + 8))(v21, v15);
    }

    if (v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:))
    {
      (*(v13 + 8))(v31, v48);
      (*(v16 + 8))(v21, v15);
      (*(v33 + 8))(v32, v34);
    }

    else
    {
      if (v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
      {
        (*(v13 + 8))(v31, v48);
        v42 = v53;
        v24(v53, v21, v15);
        v43 = enum case for TTRRelativeInsertionPosition.before<A>(_:);
        v44 = v33;
        v45 = sub_100058000(&qword_100769530);
        v46 = *(v45 - 8);
        (*(v46 + 104))(v42, v43, v45);
        (*(v46 + 56))(v42, 0, 1, v45);
        return (*(v44 + 8))(v57, v34);
      }

      if (v35 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
      {
        v36 = v53;
        if (v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v35 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
        {
          (*(v13 + 8))(v31, v48);
          (*(v16 + 8))(v21, v15);
          (*(v33 + 8))(v57, v34);
        }

        else
        {
          if (v35 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) && v35 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) && v35 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
          {
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }

          (*(v13 + 8))(v31, v48);
          (*(v16 + 8))(v21, v15);
        }

LABEL_13:
        v37 = enum case for TTRRelativeInsertionPosition.afterAll<A>(_:);
        v38 = sub_100058000(&qword_100769530);
        v39 = *(v38 - 8);
        (*(v39 + 104))(v36, v37, v38);
        return (*(v39 + 56))(v36, 0, 1, v38);
      }

      (*(v13 + 8))(v31, v48);
      (*(v16 + 8))(v21, v15);
      (*(v33 + 8))(v57, v34);
    }

    v36 = v53;
    goto LABEL_13;
  }

  (*(v16 + 8))(v21, v15);
  sub_1000079B4(v11, &qword_100772140);
  a3 = v53;
LABEL_5:
  v25 = enum case for TTRRelativeInsertionPosition.afterAll<A>(_:);
  v26 = sub_100058000(&qword_100769530);
  v27 = *(v26 - 8);
  (*(v27 + 104))(a3, v25, v26);
  return (*(v27 + 56))(a3, 0, 1, v26);
}

void *sub_1004728D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = v35 - v5;
  v7 = sub_100058000(&qword_100777F28);
  __chkstk_darwin(v7);
  v9 = v35 - v8;
  v10 = sub_100058000(&qword_1007842D8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v45 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v47 = v35 - v14;
  v44 = sub_100471B50(a2);
  v15 = *(a1 + 16);
  if (v15)
  {
    v35[1] = v7;
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v43 = v17;
    v40 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v18 = a1 + v40;
    v19 = *(v16 + 56);
    v39 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:);
    v37 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:);
    v36 = enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:);
    v42 = (v16 + 16);
    v38 = (v16 - 8);
    v20 = _swiftEmptyArrayStorage;
    v41 = v16;
    v46 = v19;
    v17(v47, a1 + v40, v10);
    while (1)
    {
      TTRTreeLocation.parent.getter();
      v21 = type metadata accessor for TTRRemindersListViewModel.Item();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v6, 1, v21) == 1)
      {
        break;
      }

      TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
      (*(v22 + 8))(v6, v21);
      v25 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
      v26 = *(v25 - 8);
      (*(v26 + 56))(v9, 0, 1, v25);
      v27 = (*(v26 + 88))(v9, v25);
      if (v27 != v39)
      {
        if (v27 == v37)
        {
          (*(v26 + 8))(v9, v25);
LABEL_8:
          v24 = v46;
        }

        else
        {
          v24 = v46;
          if (v27 != v36)
          {
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }
        }

        if (v44)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      (*(v26 + 8))(v9, v25);
      v24 = v46;
      if ((v44 & 1) == 0)
      {
LABEL_3:
        (*v38)(v47, v10);
        goto LABEL_4;
      }

LABEL_13:
      v28 = v6;
      v29 = v9;
      v30 = *v42;
      (*v42)(v45, v47, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004A25F4(0, v20[2] + 1, 1);
        v24 = v46;
        v20 = v48;
      }

      v33 = v20[2];
      v32 = v20[3];
      if (v33 >= v32 >> 1)
      {
        sub_1004A25F4(v32 > 1, v33 + 1, 1);
        v24 = v46;
        v20 = v48;
      }

      v20[2] = v33 + 1;
      v30(v20 + v40 + v33 * v24, v45, v10);
      v9 = v29;
      v6 = v28;
LABEL_4:
      v18 += v24;
      if (!--v15)
      {
        return v20;
      }

      v43(v47, v18, v10);
    }

    sub_1000079B4(v6, &qword_100772140);
    v23 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    goto LABEL_8;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100472DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListPresentationTree();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100472E60(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController____lazy_storage___continueButton] = 0;
  v4 = &v1[OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController_presenter];
  *v4 = a1;
  *(v4 + 1) = &off_10071EDA0;

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v5 = 0xD000000000000021;
    v6 = 0x8000000100688210;
    v7 = 0x8000000100688240;
    v8 = 0x100000000000005CLL;
    v9 = 0x8000000100688260;
  }

  else
  {
    v6 = 0x80000001006881B0;
    v7 = 0x80000001006881D0;
    v8 = 0x100000000000001CLL;
    v9 = 0x80000001006881F0;
    v5 = 0xD000000000000016;
  }

  v10 = 0x1000000000000019;
  TTRLocalizedString(_:value:comment:)(*&v5, *(&v7 - 1), *&v8);
  v11 = String._bridgeToObjectiveC()();

  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithTitle:detailText:icon:contentLayout:", v11, 0, 0, 2);

  return v12;
}

void sub_100472FB8()
{
  v45.receiver = v0;
  v45.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v45, "viewDidLoad");
  if (UIViewController.isIPadIdiom.getter())
  {
    v1._countAndFlagsBits = 0xD000000000000014;
    v1._object = 0x8000000100688560;
    v2._object = 0x8000000100688240;
    v3._countAndFlagsBits = 0x100000000000001CLL;
    v3._object = 0x80000001006881F0;
    v2._countAndFlagsBits = 0x1000000000000019;
    TTRLocalizedString(_:value:comment:)(v1, v2, v3);
    v4 = [v0 headerView];
    v5 = String._bridgeToObjectiveC()();

    [v4 setTitle:v5];
  }

  v6 = sub_1004738B4();
  v7 = *&v0[OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController_presenter];
  v8 = objc_opt_self();
  v9 = [*(*(v7 + 48) + 32) isIntelligentFeaturesSupportedInCurrentAppVersionWithIntelligentFeature:0 isInternalInstall:{objc_msgSend(v8, "isInternalInstall")}];
  v10 = [*(*(v7 + 48) + 32) isIntelligentFeaturesSupportedInCurrentAppVersionWithIntelligentFeature:1 isInternalInstall:{objc_msgSend(v8, "isInternalInstall")}];
  if (v6)
  {
    if (v9)
    {
      v11 = v10;
      static TTRLocalizableStrings.WhatsNew.autoCategorizeTitle.getter();
      v12 = String._bridgeToObjectiveC()();

      static TTRLocalizableStrings.WhatsNew.autoCategorizeDescription.getter();
      v13 = String._bridgeToObjectiveC()();

      v14 = static TTRIAsset.Image.WhatsNewBullet.autoCategorize.getter();
      [v0 addBulletedListItemWithTitle:v12 description:v13 image:v14];

      v10 = v11;
    }

    if (v10)
    {
      static TTRLocalizableStrings.WhatsNew.suggestedRemindersTitle.getter();
      v15 = String._bridgeToObjectiveC()();

      static TTRLocalizableStrings.WhatsNew.suggestedRemindersDescription.getter();
      v16 = String._bridgeToObjectiveC()();

      v17 = static TTRIAsset.Image.WhatsNewBullet.share.getter();
      [v0 addBulletedListItemWithTitle:v15 description:v16 image:v17];
    }
  }

  v18._countAndFlagsBits = 0xD00000000000001FLL;
  v19._countAndFlagsBits = 0x6552206B63697551;
  v19._object = 0xEF737265646E696DLL;
  v18._object = 0x80000001006882F0;
  v20._object = 0x8000000100688310;
  v20._countAndFlagsBits = 0xD000000000000020;
  TTRLocalizedString(_:value:comment:)(v18, v19, v20);
  if (UIViewController.isIPadIdiom.getter())
  {
    v21 = "reminders_ipad_content";
    v22 = 0xD000000000000026;
    v23 = 0x80000001006884F0;
    v24 = 0xD00000000000003ALL;
  }

  else
  {
    v21 = "reminders_iphone_content";
    v22 = 0xD000000000000028;
    v23 = 0x8000000100688340;
    v24 = 0xD00000000000004CLL;
  }

  v25 = v21 | 0x8000000000000000;
  v26._object = 0x80000001006883C0;
  v26._countAndFlagsBits = 0xD000000000000027;
  TTRLocalizedString(_:value:comment:)(*&v22, *&v24, v26);
  v27 = String._bridgeToObjectiveC()();

  v28 = String._bridgeToObjectiveC()();

  v29 = static TTRIAsset.Image.WhatsNewBullet.quickReminder.getter();
  [v0 addBulletedListItemWithTitle:v27 description:v28 image:v29];

  if ((v6 & 1) == 0)
  {
    static TTRLocalizableStrings.WhatsNew.richerSharingTitle.getter();
    v30 = String._bridgeToObjectiveC()();

    static TTRLocalizableStrings.WhatsNew.richerSharingDescription.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = static TTRIAsset.Image.WhatsNewBullet.share.getter();
    [v0 addBulletedListItemWithTitle:v30 description:v31 image:v32];
  }

  if (UIViewController.isIPadIdiom.getter())
  {
    static TTRLocalizableStrings.WhatsNew.timeZonesTitle.getter();
    v33 = String._bridgeToObjectiveC()();

    static TTRLocalizableStrings.WhatsNew.timeZonesDescription.getter();
    v34 = String._bridgeToObjectiveC()();

    v35 = static TTRIAsset.Image.WhatsNewBullet.timeZone.getter();
  }

  else
  {
    v36._countAndFlagsBits = 0xD000000000000018;
    v37._countAndFlagsBits = 0x65726F4D20646E41;
    v36._object = 0x80000001006883F0;
    v38._object = 0x8000000100688410;
    v37._object = 0xE800000000000000;
    v38._countAndFlagsBits = 0xD000000000000020;
    TTRLocalizedString(_:value:comment:)(v36, v37, v38);
    v39._countAndFlagsBits = 0xD00000000000001ALL;
    v39._object = 0x8000000100688440;
    v40._countAndFlagsBits = 0xD00000000000005ELL;
    v40._object = 0x8000000100688460;
    v41._object = 0x80000001006884C0;
    v41._countAndFlagsBits = 0xD000000000000027;
    TTRLocalizedString(_:value:comment:)(v39, v40, v41);
    v33 = String._bridgeToObjectiveC()();

    v34 = String._bridgeToObjectiveC()();

    v35 = static TTRIAsset.Image.WhatsNewBullet.andMore.getter();
  }

  v42 = v35;
  [v0 addBulletedListItemWithTitle:v33 description:v34 image:v35];

  v43 = [v0 buttonTray];
  v44 = sub_100473510();
  [v43 addButton:v44];
}

id sub_100473510()
{
  v1 = OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController____lazy_storage___continueButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController____lazy_storage___continueButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders26TTRIWhatsNewViewController____lazy_storage___continueButton);
  }

  else
  {
    v4._countAndFlagsBits = 0x65756E69746E6F43;
    v5._object = 0x8000000100688580;
    v6._countAndFlagsBits = 0xD000000000000020;
    v6._object = 0x80000001006885A0;
    v5._countAndFlagsBits = 0xD00000000000001FLL;
    v4._object = 0xE800000000000000;
    TTRLocalizedString(_:value:comment:)(v5, v4, v6);
    v7 = [objc_opt_self() boldButton];
    v8 = String._bridgeToObjectiveC()();

    [v7 setTitle:v8 forState:0];

    [v7 addTarget:v0 action:"didTapContinueButton:" forControlEvents:64];
    v9 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_100473688()
{
  v0 = type metadata accessor for TTRUserDefaults.WelcomeScreenVersion();
  __chkstk_darwin(v0 - 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    type metadata accessor for TTRUserDefaults();
    v3 = static TTRUserDefaults.appUserDefaults.getter();
    static TTRUserDefaults.WelcomeScreenVersion.current.getter();
    TTRUserDefaults.lastSeenWelcomeScreenVersion.setter();

    sub_10000C36C((v2 + 72), *(v2 + 96));
    swift_unknownObjectRetain();
    sub_100502974(sub_10014E5B0, v2);
  }

  return result;
}

uint64_t sub_1004738B4()
{
  v0 = type metadata accessor for REMGenerativeModelsFeature();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMGenerativeModelsAvailabilityManager();
  v10 = static REMGenerativeModelsAvailabilityManager.shared.getter();
  v4 = *(v1 + 104);
  v4(v3, enum case for REMGenerativeModelsFeature.autoCategorization(_:), v0);
  v5 = REMGenerativeModelsAvailabilityManagerType.supportsFeature(_:)();
  v6 = *(v1 + 8);
  v6(v3, v0);

  if (v5)
  {
    v10 = static REMGenerativeModelsAvailabilityManager.shared.getter();
    v4(v3, enum case for REMGenerativeModelsFeature.intelligentReminderExtraction(_:), v0);
    v7 = REMGenerativeModelsAvailabilityManagerType.supportsFeature(_:)();
    v6(v3, v0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100473A68()
{
  v1 = objc_opt_self();
  v2 = [v1 daemonUserDefaults];
  v3 = [v2 forceShowWelcomeScreen];

  if (v3)
  {
    return 2;
  }

  v5 = [v1 daemonUserDefaults];
  v6 = [v5 forceShowWhatsNewScreen];

  if (v6)
  {
    return 1;
  }

  v7 = *(v0 + 16);
  v24 = 0;
  v8 = [v7 fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:&v24];
  if (v8)
  {
    v9 = v8;
    v10 = v24;

    return 1;
  }

  else
  {
    v11 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100767328 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_100784318);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      swift_errorRetain();
      sub_100058000(&qword_1007699F0);
      v17 = String.init<A>(describing:)();
      v19 = sub_100004060(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "TTRWelcomeStyle:preferredWelcomeStyle(): Could not find or return any primary active CK account {error: %s}", v15, 0xCu);
      sub_100004758(v16);
    }

    else
    {
    }

    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v20 = result;
      v21 = ACAccountStore.rem_migrationSets()();

      sub_100474068(v21);
      if (v22)
      {

        return 2;
      }

      else if (sub_10042254C())
      {
        v23 = *(v21 + 16);

        return v23 == 0;
      }

      else
      {

        return 3;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100473D8C()
{
  sub_100474818();
  if ((sub_10042254C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTRUserDefaults();
  v0 = static TTRUserDefaults.appUserDefaults.getter();
  v1 = TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.getter();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = sub_100473A68();
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 == 1)
  {
    if (qword_100767328 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100784318);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "TTRWelcomeStyle:shouldShowUpgradeScreen(): Account does not need upgrade after iCloud sync enabled.", v6, 2u);
    }

    v7 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.setter();
    sub_10012EDC8(1);

    return 0;
  }

  v9 = v2;
  if (qword_100767328 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_100784318);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "TTRWelcomeStyle:shouldShowUpgradeScreen(): Will show upgrade screen after iCloud sync enabled.", v13, 2u);
  }

  sub_10012EDC8(v9);
  return 1;
}

uint64_t sub_100473FA0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100784318);
  v1 = sub_100003E30(v0, qword_100784318);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100474068(uint64_t a1)
{
  v3 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ACAccountStore.MigrationSet();
  v11 = __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v41 - v15;
  __chkstk_darwin(v14);
  v19 = *(a1 + 16);
  if (v19)
  {
    v41 = v1;
    v42 = v5;
    v46 = v18;
    v47 = &v41 - v17;
    v43 = v9;
    v44 = v7;
    v45 = v6;
    v20 = *(v18 + 16);
    v21 = (v18 + 8);
    v22 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v23 = *(v18 + 72);
    while (1)
    {
      v20(v13, v22, v10);
      if (ACAccountStore.MigrationSet.eligibleForAutoCloudKitMigration.getter())
      {
        break;
      }

      (*v21)(v13, v10);
      v22 += v23;
      if (!--v19)
      {
        return;
      }
    }

    v24 = *(v46 + 32);
    v24(v16, v13, v10);
    v25 = v47;
    v24(v47, v16, v10);
    v26 = ACAccountStore.MigrationSet.calDAV.getter();
    v27 = [v26 identifier];

    if (v27)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v42;
      UUID.init(uuidString:)();

      v30 = v44;
      v29 = v45;
      v31 = (*(v44 + 48))(v28, 1, v45);
      v32 = v43;
      if (v31 == 1)
      {
        (*v21)(v25, v10);
        sub_1004747B0(v28);
        return;
      }

      (*(v30 + 32))(v43, v28, v29);
      v33 = *(v41 + 16);
      v34 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v36 = [v34 objectIDWithUUID:isa];

      v48 = 0;
      v37 = [v33 fetchAccountWithObjectID:v36 error:&v48];

      if (v37)
      {
        v38 = v48;
        if (([v37 inactive] & 1) == 0)
        {
          REMAccount.isConsideredEmpty()();
          if (!v39)
          {

            (*(v30 + 8))(v32, v29);
            (*v21)(v25, v10);
            return;
          }
        }
      }

      else
      {
        v40 = v48;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*(v30 + 8))(v32, v29);
      (*v21)(v25, v10);
    }

    else
    {
      __break(1u);
    }
  }
}

void destroy for TTRWelcomeContentStyle(void **a1)
{
  v1 = *a1;
  v2 = -1;
  if (v1 < 0xFFFFFFFF)
  {
    v2 = v1;
  }

  if (v2 - 1 < 0)
  {
  }
}

void **assignWithCopy for TTRWelcomeContentStyle(void **result, void **a2)
{
  v2 = *result;
  LODWORD(v3) = -1;
  if (*result >= 0xFFFFFFFF)
  {
    LODWORD(v4) = -1;
  }

  else
  {
    v4 = *result;
  }

  v5 = v4 - 1;
  v6 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v3 = *a2;
  }

  v7 = v3 - 1;
  if (v5 < 0)
  {
    if (v7 < 0)
    {
      *result = v6;
      v12 = result;
      v13 = v6;

      return v12;
    }

    else
    {
      v8 = result;

      result = v8;
      *v8 = *a2;
    }
  }

  else
  {
    *result = v6;
    if (v7 < 0)
    {
      v10 = result;
      v11 = v6;
      return v10;
    }
  }

  return result;
}

void **assignWithTake for TTRWelcomeContentStyle(void **result, unint64_t *a2)
{
  v2 = *result;
  LODWORD(v3) = -1;
  if (*result < 0xFFFFFFFF)
  {
    v3 = *result;
  }

  v4 = *a2;
  if (v3 - 1 < 0)
  {
    LODWORD(v5) = -1;
    if (v4 < 0xFFFFFFFF)
    {
      v5 = *a2;
    }

    if (v5 - 1 < 0)
    {
      *result = v4;
      v7 = result;

      return v7;
    }

    else
    {
      v6 = result;

      result = v6;
      *v6 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRWelcomeContentStyle(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRWelcomeContentStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100474754(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *sub_100474778(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t sub_1004747B0(uint64_t a1)
{
  v2 = sub_100058000(&unk_10077D160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100474818()
{
  if ((sub_10042254C() & 1) == 0)
  {
    type metadata accessor for TTRUserDefaults();
    v0 = static TTRUserDefaults.appUserDefaults.getter();
    v1 = TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.getter();

    if ((v1 & 1) == 0)
    {
      if (qword_100767328 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_100003E30(v2, qword_100784318);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "TTRWelcomeStyle:checkICloudUpgradeState(): Setting showUpgradeWhenICloudSyncEnabled to true.", v5, 2u);
      }

      v6 = static TTRUserDefaults.appUserDefaults.getter();
      TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.setter();
    }
  }
}

uint64_t sub_100474998()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007843D0);
  v1 = sub_100003E30(v0, qword_1007843D0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100474A88()
{
  v1 = &v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_initialFrameForLoadingView];
  if (v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_initialFrameForLoadingView + 32])
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = v1[2];
    v10 = v1[3];
    v4 = *v1;
    v6 = v1[1];
  }

  v11 = [objc_allocWithZone(UIView) initWithFrame:{v4, v6, v8, v10}];
  [v0 setView:v11];
}

void sub_100474BBC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&qword_1007845D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v108 - v5;
  v7 = sub_100058000(&qword_1007845E0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v108 - v10;
  v123.receiver = v1;
  v123.super_class = ObjectType;
  objc_msgSendSuper2(&v123, "viewDidLoad", v9);
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_26;
  }

  v13 = v12;
  [v12 setInsetsLayoutMarginsFromSafeArea:0];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v14;
  [v14 setPreservesSuperviewLayoutMargins:0];

  v16 = [v1 view];
  if (!v16)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = v16;
  v111 = v6;
  v112 = v4;
  v113 = v8;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = sub_100475AC8();
  v27 = [objc_allocWithZone(type metadata accessor for TTRIRemindersBoardMainCollectionView()) initWithFrame:v26 collectionViewLayout:{v19, v21, v23, v25}];

  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 systemBackgroundColor];
  [v29 setBackgroundColor:v30];

  v31 = v29;
  [v31 setDelegate:v1];
  v32 = v31;
  [v32 setAlwaysBounceVertical:0];
  [v32 setAutoresizingMask:18];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v32 setPreservesSuperviewLayoutMargins:1];

  [v32 setAllowsFocus:0];
  [v32 setContentInsetAdjustmentBehavior:1];

  type metadata accessor for TTRIRemindersBoardBackgroundView();
  v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v33[OBJC_IVAR____TtC9Reminders32TTRIRemindersBoardBackgroundView_delegate + 8] = &off_10072A0F8;
  swift_unknownObjectWeakAssign();
  [v32 setBackgroundView:v33];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v35 = v34;
  [v34 addSubview:v32];

  v36 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView] = v32;
  v37 = v32;

  v120 = 2uLL;
  v121 = 0uLL;
  sub_100058000(&qword_1007845E8);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableScrollViewInsets] = TTRObservableViewModel.init(value:)();

  v120 = 0u;
  v121 = 0u;
  LOBYTE(v122) = 1;
  sub_100058000(&qword_1007845F0);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets] = TTRObservableViewModel.init(value:)();

  sub_100475C04();
  v116 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
  v38 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource];
  if (!v38)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v115 = v33;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRRemindersBoardPresentationTreesManagementViewCapability();
  swift_allocObject();
  v39 = v38;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability] = TTRRemindersBoardPresentationTreesManagementViewCapability.init(mainDataSource:makeUpdatesForReloadingView:)();

  if (![v1 view])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v110 = v3;
  type metadata accessor for TTRDeferredViewActionProvider();
  swift_allocObject();
  v40 = TTRDeferredViewActionProvider.init(view:)();
  v41 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider] = v40;

  v42 = v116;
  v43 = *&v1[v116];
  if (!v43)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v109 = v7;
  type metadata accessor for TTRIRemindersBoardItemLookupController();
  v44 = swift_allocObject();
  *(v44 + 16) = v37;
  *(v44 + 24) = v43;
  v45 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController] = v44;
  v114 = v37;
  v46 = v43;

  v47 = *&v1[v42];
  if (!v47)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  type metadata accessor for TTRIRemindersBoardSelectionController();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController] = sub_100502F40(v47);

  sub_100502A68();

  v48 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24];
  v49 = sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter], v48);
  v50 = swift_allocObject();
  v51 = swift_unknownObjectWeakInit();
  v52 = __chkstk_darwin(v51);
  v54 = (&v108 - v53);
  (*(v55 + 16))(&v108 - v53, v49, v48, v52);
  v56 = *v54;
  *(&v121 + 1) = type metadata accessor for TTRIRemindersBoardPresenter();
  v122 = &off_100717868;
  *&v120 = v56;
  type metadata accessor for TTRIRemindersListAutomaticSubtaskSelectionController();
  v57 = swift_allocObject();
  v58 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
  v59 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
  (*(*(v59 - 8) + 56))(v57 + v58, 1, 1, v59);
  sub_100005FD0(&v120, v57 + 16);
  *(v57 + 56) = sub_100489068;
  *(v57 + 64) = v50;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController] = v57;

  v60 = *&v1[v45];
  if (!v60)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for TTRIRemindersBoardFocusController(0);
  v61 = swift_allocObject();
  v62 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem;
  v63 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  (*(*(v63 - 8) + 56))(v61 + v62, 1, 1, v63);
  v64 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_lastFocusedItemID;
  v65 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v65 - 8) + 56))(v61 + v64, 1, 1, v65);
  *(v61 + OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_itemLookupController) = v60;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController] = v61;

  v66 = [v1 view];
  if (!v66)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v67 = v66;
  type metadata accessor for TTRIRemindersBoardDragAndDropCoordinator();
  swift_allocObject();
  v68 = sub_1000706B4(v67);
  v69 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator] = v68;

  *(v68 + 24) = &off_10072A128;
  swift_unknownObjectWeakAssign();

  v70 = [objc_allocWithZone(type metadata accessor for TTRIRemindersBoardRootViewDragInteractionHandler()) init];
  v71 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_rootViewDragInteractionHandler;
  v72 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_rootViewDragInteractionHandler];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_rootViewDragInteractionHandler] = v70;
  v73 = v70;

  if (!v73)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v74 = &off_100713A58;
  if (!*&v1[v69])
  {
    v74 = 0;
  }

  *&v73[OBJC_IVAR____TtC9Reminders48TTRIRemindersBoardRootViewDragInteractionHandler_delegate + 8] = v74;
  swift_unknownObjectWeakAssign();

  v75 = [v1 view];
  if (!v75)
  {
    goto LABEL_36;
  }

  v76 = *&v1[v71];
  v77 = v116;
  if (!v76)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v78 = v75;
  v79 = [objc_allocWithZone(UIDragInteraction) initWithDelegate:v76];
  [v78 addInteraction:v79];

  v80 = *&v1[v77];
  if (!v80)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v81 = type metadata accessor for TTRIRemindersBoardColumnReorderingController(0);
  v82 = objc_allocWithZone(v81);
  *&v82[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v83 = v114;
  v84 = v80;
  UUID.init()();
  *&v82[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_debugOverlayView] = 0;
  *&v82[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext] = 0;
  *&v82[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView] = v83;
  *&v82[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_dataSource] = v84;
  v119.receiver = v82;
  v119.super_class = v81;
  v85 = objc_msgSendSuper2(&v119, "init");
  v86 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController] = v85;
  v87 = v85;

  *&v87[OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_delegate + 8] = &off_10072A108;
  swift_unknownObjectWeakAssign();

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
LABEL_23:
    v101 = *&v1[v116];
    if (v101)
    {
      *&v120 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_eventPublishers];
      v102 = v101;
      sub_100058000(&qword_100772768);
      sub_10000E188(&unk_100772770, &qword_100772768);
      v103 = Publisher.eraseToAnyPublisher()();
      v104 = type metadata accessor for TTRIRemindersBoardScrollingController();
      v105 = objc_allocWithZone(v104);
      *&v105[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_pendingStartEditingTask] = 0;
      *&v105[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView] = v83;
      *&v105[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainDataSource] = v102;
      *&v105[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_willDisplayCell] = v103;
      v117.receiver = v105;
      v117.super_class = v104;
      v106 = objc_msgSendSuper2(&v117, "init");
      v107 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController];
      *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController] = v106;

      type metadata accessor for TTRIRemindersBoardHeaderViewController();
      swift_allocObject();
      *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController] = sub_10008E718();

      sub_100476100();
      sub_100476440();
      sub_100476A68();

      return;
    }

    goto LABEL_39;
  }

  v88 = *&v1[v41];
  v89 = v116;
  if (v88)
  {
    type metadata accessor for TTRIRemindersBoardChromelessBarsController();
    v90 = swift_allocObject();
    *(v90 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v90 + 48) = &_swiftEmptyDictionarySingleton;
    *(v90 + 56) = &_swiftEmptySetSingleton;
    *(v90 + 64) = 514;
    v91 = qword_100766F90;

    if (v91 != -1)
    {
      swift_once();
    }

    v114 = v83;
    v92 = qword_10076FFA8;
    v93 = word_10076FFB0;
    v94 = HIBYTE(word_10076FFB0);
    *(v90 + 72) = byte_10076FFA0;
    *(v90 + 80) = v92;
    *(v90 + 88) = v93;
    *(v90 + 89) = v94;
    *(v90 + 32) = v88;
    *(v90 + 40) = &protocol witness table for TTRDeferredViewActionProvider;
    *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_chromelessBarsController] = v90;

    *(v90 + 24) = &off_10072A188;
    swift_unknownObjectWeakAssign();
    v95 = *&v1[v89];
    if (!v95)
    {
      goto LABEL_41;
    }

    v96 = v95;
    TTRRemindersBoardMainDiffableDataSource.allColumnIDsPublisher.getter();

    v97 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_eventPublishers + 8];
    *&v120 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_eventPublishers];
    v118 = v97;

    sub_100058000(&qword_100772768);
    sub_10000E188(&unk_100772770, &qword_100772768);
    v98 = v111;
    Publisher.merge(with:)();
    sub_10000E188(&qword_1007845F8, &qword_1007845D8);
    v99 = v110;
    Publisher.map<A>(_:)();
    (*(v112 + 8))(v98, v99);
    sub_10000E188(&qword_100784600, &qword_1007845E0);
    v100 = v109;
    Publisher.eraseToAnyPublisher()();
    (*(v113 + 8))(v11, v100);

    sub_100167358();

    v83 = v114;
    goto LABEL_23;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

id sub_100475AC8()
{
  v0 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  [v0 setScrollDirection:1];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v6[4] = sub_100489050;
  v6[5] = v1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10001F170;
  v6[3] = &unk_10072A4E0;
  v3 = _Block_copy(v6);

  v4 = [v2 initWithSectionProvider:v3 configuration:v0];

  _Block_release(v3);

  return v4;
}

void sub_100475C04()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100784608);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v19[-v7];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIBoardColumnCollectionViewCell();
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  UICollectionView.CellRegistration.init(handler:)();
  v9 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (v9)
  {
    (*(v3 + 16))(v5, v8, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v5, v2);
    v12 = objc_allocWithZone(type metadata accessor for TTRRemindersBoardMainDiffableDataSource());
    v13 = v9;
    v14 = TTRRemindersBoardMainDiffableDataSource.init(collectionView:cellProvider:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = v14;
    v16 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
    sub_100058000(&qword_100784610);
    UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter();
    v16(v19, 0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
    UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.setter();
    v17(v19, 0);

    (*(v3 + 8))(v8, v2);
    v18 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
    *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource) = v15;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100475F2C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10000B0D8(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v7);

    sub_10000C36C(v7, v7[3]);
    TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForReloadingView()();
    v4 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates();
    (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
    return sub_100004758(v7);
  }

  else
  {
    v6 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

void sub_100476038(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController);
    if (a2)
    {
      if (v8)
      {

        sub_100502B38(a1, a3 & 1);
LABEL_7:

        return;
      }

      __break(1u);
    }

    else if (v8)
    {

      sub_100502CAC(a1, a3 & 1);
      goto LABEL_7;
    }

    __break(1u);
  }
}

id sub_100476100()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100784550);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v37 - v7;
  result = [v0 isViewLoaded];
  if (result)
  {
    v10 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedRemindersState;
    swift_beginAccess();
    sub_10000794C(&v0[v10], v8, &qword_100784550);
    v11 = (*(v2 + 48))(v8, 1, v1);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    if (v11 != 1)
    {
      (*(v2 + 32))(v4, v8, v1);
      sub_10047B60C(v4, v0, v49);
      v19 = *(v2 + 8);
      v2 += 8;
      v19(v4, v1);
      v18 = v49[0];
      v17 = v49[1];
      v16 = v49[2];
      v15 = v49[3];
      v14 = v49[4];
      v13 = v49[5];
      v12 = v49[6];
    }

    v20 = *&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController];
    if (v20)
    {
      v21 = v20[3];
      v39 = v20[2];
      v22 = v39;
      v41 = v21;
      v23 = v20[5];
      v38 = v20[4];
      v24 = v38;
      v25 = v20[6];
      v26 = v20[7];
      v40 = v20[8];
      v20[2] = v18;
      v20[3] = v17;
      v20[4] = v16;
      v20[5] = v15;
      v20[6] = v14;
      v20[7] = v13;
      v20[8] = v12;
      v47 = v13;
      v48 = v12;
      v46 = v14;
      v27 = v15;
      v28 = v16;
      v29 = v17;
      v30 = v18;

      v31 = v22;
      v32 = v41;
      sub_10008E1B8(v31, v41, v24, v23, v25, v26);
      v42 = v30;
      v43 = v29;
      v33 = v30;
      v44 = v28;
      v45 = v27;
      v34 = v27;
      v35 = v38;
      v36 = v39;
      sub_10008E1B8(v33, v29, v28, v34, v46, v47);
      sub_10008E274(v36, v32, v35, v23, v25, v26);
      if (v32 | v20[3])
      {
        sub_10008CDD0();
        sub_10008E274(v36, v32, v35, v23, v25, v26);
      }

      sub_10008E274(v42, v43, v44, v45, v46, v47);
    }

    else
    {
      __break(1u);
      result = (*(v2 + 8))(v4, v1);
      __break(1u);
    }
  }

  return result;
}

void sub_100476440()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListTip();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = sub_100058000(&unk_100784570);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = sub_100058000(&qword_100769E98);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v41 - v20;
  if ([v1 isViewLoaded])
  {
    v43 = v8;
    v22 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_listInfo;
    swift_beginAccess();
    v23 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v24 = (*(*(v23 - 8) + 48))(&v1[v22], 1, v23);
    v45 = v3;
    if (v24)
    {
      swift_endAccess();
      (*(v3 + 56))(v21, 1, 1, v2);
    }

    else
    {
      TTRRemindersListViewModel.ListInfo.tip.getter();
      swift_endAccess();
    }

    v46 = v21;
    v42 = v5;
    v44 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController;
    v25 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController];
    if (!v25)
    {
      __break(1u);
      goto LABEL_22;
    }

    v26 = OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tip;
    swift_beginAccess();
    v27 = *(v9 + 48);
    sub_10000794C(v25 + v26, v11, &qword_100769E98);
    sub_10000794C(v46, &v11[v27], &qword_100769E98);
    v28 = v45;
    v29 = *(v45 + 48);
    if (v29(v11, 1, v2) == 1)
    {
      if (v29(&v11[v27], 1, v2) == 1)
      {
        sub_1000079B4(v11, &qword_100769E98);
        v30 = v46;
LABEL_19:
        sub_1000079B4(v30, &qword_100769E98);
        return;
      }
    }

    else
    {
      sub_10000794C(v11, v17, &qword_100769E98);
      if (v29(&v11[v27], 1, v2) != 1)
      {
        (*(v28 + 32))(v43, &v11[v27], v2);
        sub_1004891CC(&unk_100784580, &type metadata accessor for TTRRemindersListTip);
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        v40 = *(v28 + 8);
        v40(v43, v2);
        v40(v17, v2);
        sub_1000079B4(v11, &qword_100769E98);
        v30 = v46;
        if (v39)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      (*(v28 + 8))(v17, v2);
    }

    sub_1000079B4(v11, &unk_100784570);
    v30 = v46;
LABEL_12:
    sub_10000794C(v30, v14, &qword_100769E98);
    if (v29(v14, 1, v2) != 1)
    {
      v35 = v45;
      v36 = v42;
      (*(v45 + 32))(v42, v14, v2);
      v38 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24];
      v37 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32];
      sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter], v38);
      (*(*(v37 + 8) + 1104))(v47, v36, v38);
      if (*&v1[v44])
      {

        sub_10008D0E0(v36, v47);

        sub_100004758(v47);
        (*(v35 + 8))(v36, v2);
        goto LABEL_19;
      }

LABEL_23:
      __break(1u);
      return;
    }

    sub_1000079B4(v14, &qword_100769E98);
    v31 = *&v1[v44];
    if (v31)
    {
      v32 = OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tipView;
      v33 = *(v31 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tipView);
      if (v33)
      {

        [v33 removeFromSuperview];
        sub_1000079B4(v30, &qword_100769E98);
        v34 = *(v31 + v32);
        *(v31 + v32) = 0;

        return;
      }

      goto LABEL_19;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

void sub_100476A68()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 directionalLayoutMargins];

  v4 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets;
  if (!*&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  TTRObservableViewModel.value.getter();

  if ((v5 & 1) != 0 || (NSDirectionalEdgeInsets.isAlmostEqual(to:)() & 1) == 0)
  {
    if (*&v1[v4])
    {

      TTRObservableViewModel.updateAndPublish(_:)();

      return;
    }

LABEL_10:
    __break(1u);
  }
}

void sub_100476C28(void *a1, double a2, double a3)
{
  v23.receiver = v3;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v24.origin.x = v10;
    v24.origin.y = v12;
    v24.size.width = v14;
    v24.size.height = v16;
    Width = CGRectGetWidth(v24);
    if (sub_10002E9C4(a2, 0.0000000149011612, Width))
    {
LABEL_5:
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22[4] = sub_100489058;
      v22[5] = v20;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 1107296256;
      v22[2] = sub_1002FB78C;
      v22[3] = &unk_10072A508;
      v21 = _Block_copy(v22);

      [a1 animateAlongsideTransition:0 completion:v21];
      _Block_release(v21);
      return;
    }

    v18 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView];
    if (v18)
    {
      v19 = [v18 collectionViewLayout];
      [v19 invalidateLayout];

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100476DFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*&Strong[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_chromelessBarsController])
    {

      sub_10016931C();
    }

    else
    {
    }
  }
}

id sub_100476EF8(char a1, char a2)
{
  v3 = v2;
  v6 = a1 & 1;
  ObjectType = swift_getObjectType();
  updated = type metadata accessor for TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags();
  v9 = *(updated - 8);
  v10 = __chkstk_darwin(updated);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 isEditing];
  if (result == v6)
  {
    return result;
  }

  v20.receiver = v3;
  v20.super_class = ObjectType;
  result = objc_msgSendSuper2(&v20, "setEditing:animated:", v6, a2 & 1);
  v14 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController];
  if (!v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = *(v14 + 16);
  v16 = a1 & 1;
  *(v14 + 16) = a1 & 1;
  if (v15 != v16)
  {
    if (a1)
    {
    }

    else
    {
      swift_beginAccess();
      *(v14 + 48) = &_swiftEmptySetSingleton;
    }

    if (*(v14 + 32))
    {
      __chkstk_darwin(result);
      *(&v19 - 2) = v14;
      *(&v19 - 1) = v17;

      TTRObservableViewModelCollection.updateAndPublishAll(using:)();

      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

LABEL_9:
  v18 = sub_10000C36C(&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter], *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24]);
  if (*(*v18 + 120) != v16)
  {
    *(*v18 + 120) = v16;
    TTRRemindersBoardCellPresentationStatesPresenterCapability.isMultiSelectMode.setter();
    static TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags.placeholderReminderVisibilityChange.getter();
    TTRRemindersBoardPresentationTreesManagementPresenterCapability.scheduleUpdate(for:)();
    (*(v9 + 8))(v12, updated);
  }

  return sub_100476100();
}

uint64_t sub_100477384(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100784550);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedRemindersState;
  swift_beginAccess();
  sub_100019180(a1, &v1[v10], &qword_100784550);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    return sub_1000079B4(a1, &qword_100784550);
  }

  sub_10000794C(&v1[v10], v9, &qword_100784550);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_10047B60C(v6, v1, v32);
    v11 = *(v4 + 8);
    v4 += 8;
    v11(v6, v3);
    v27 = v32[0];
    v28 = v32[2];
    v25 = v32[1];
    v26 = v32[3];
    v29 = v32[4];
    v30 = v32[5];
    v31 = v32[6];
  }

  v24 = a1;
  v12 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController];
  if (v12)
  {
    v14 = v12[2];
    v13 = v12[3];
    v15 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    v18 = v12[7];
    v19 = v28;
    v21 = v25;
    v20 = v26;
    v12[2] = v27;
    v12[3] = v21;
    v12[4] = v19;
    v12[5] = v20;
    v22 = v30;
    v12[6] = v29;
    v12[7] = v22;
    v12[8] = v31;

    sub_10008E1B8(v14, v13, v15, v16, v17, v18);
    sub_10008E1B8(v27, v21, v28, v20, v29, v30);
    sub_10008E274(v14, v13, v15, v16, v17, v18);
    if (v13 | v12[3])
    {
      sub_10008CDD0();
      sub_10008E274(v14, v13, v15, v16, v17, v18);
    }

    sub_10008E274(v27, v25, v28, v26, v29, v30);

    a1 = v24;
    return sub_1000079B4(a1, &qword_100784550);
  }

  __break(1u);
  result = (*(v4 + 8))(v6, v3);
  __break(1u);
  return result;
}

uint64_t sub_1004776D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if (*(result + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability))
    {

      v7 = TTRRemindersBoardPresentationTreesManagementViewCapability.observableColumnPresentationTrees.getter();

      if (v7)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        v8 = *&v6[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController];
        if (v8)
        {
          if (*(v8 + 32))
          {

            TTRObservableViewModelCollection.observableViewModel(forItemID:)();

            v9 = *&v6[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator];
            if (v9)
            {
              v10 = *&v6[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController];
              if (v10)
              {
                v11 = v10;

                sub_100482B30(a3, v9, v11, a1);

                *(a1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_delegate + 8) = &off_10072A1B0;
                result = swift_unknownObjectWeakAssign();
                v12 = *(a1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_contentInsetsController);
                if (v12)
                {
                  v13 = *&v6[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets];
                  if (!v13)
                  {
LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }

                  *(v12 + 40) = v13;

                  if (*(v12 + 32) == 1)
                  {
                    *(v12 + 40) = 0;
                    if (!*(v12 + 24))
                    {
LABEL_33:
                      __break(1u);
                      return result;
                    }

                    TTRViewModelObserver.subscribeIfNeeded(to:)();
                  }
                }

                if (*(a1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_presentationTreesCapability))
                {

                  v14 = TTRBoardColumnPresentationTreesManagementViewCapability.presentationTreesObserver.getter();

                  if (v14)
                  {
                    TTRViewModelObserver.subscribeIfNeeded(to:)();

                    if (*(a1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollViewInsetsObserver))
                    {
                      if (*&v6[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableScrollViewInsets])
                      {

                        TTRViewModelObserver.subscribeIfNeeded(to:)();

                        if (*(a1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_selectionRequestObserver))
                        {

                          TTRViewModelObserver.subscribeIfNeeded(to:)();
                        }

                        goto LABEL_31;
                      }

LABEL_30:
                      __break(1u);
LABEL_31:
                      __break(1u);
                      goto LABEL_32;
                    }

LABEL_29:
                    __break(1u);
                    goto LABEL_30;
                  }

LABEL_28:
                  __break(1u);
                  goto LABEL_29;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1004779D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a3, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  type metadata accessor for TTRIBoardColumnCollectionViewCell();
  v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_1000079B4(v6, &unk_10076BB50);
  return v9;
}

uint64_t sub_100477B24()
{
  v0 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
    if (v9)
    {
      v10 = v9;
      TTRRemindersBoardMainDiffableDataSource.item(withID:)();

      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {

        sub_1000079B4(v2, &qword_100772140);
        return 0;
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        v11 = *&v8[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24];
        v12 = *&v8[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32];
        sub_10000C36C(&v8[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter], v11);
        v13 = (*(*(v12 + 8) + 552))(v6, v11);
        if (v13 >> 62)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        (*(v4 + 8))(v6, v3);
        return v14 != 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100477D80(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100478204(a1);
  }
}

uint64_t sub_100478204(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v70 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v71 = &v64 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin(v6);
  v69 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100784618);
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v76 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v64 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(v13 - 8);
  v78 = v13;
  v79 = v14;
  __chkstk_darwin(v13);
  v75 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v82 = &v64 - v17;
  v18 = sub_100058000(&qword_100784620);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v77 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v64 - v22;
  __chkstk_darwin(v24);
  v26 = &v64 - v25;
  if (qword_100767330 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100003E30(v27, qword_1007843D0);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "TTRIRemindersBoardMainViewController: handle reordering transaction", v30, 2u);
  }

  sub_100058000(&qword_100784628);
  NSDiffableDataSourceTransaction.difference.getter();
  sub_10000E188(&qword_100784630, &qword_100784620);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v31 = dispatch thunk of Collection.distance(from:to:)();
  v32 = *(v19 + 8);
  v32(v26, v18);
  if (v31 != 2)
  {
    goto LABEL_19;
  }

  v68 = a1;
  NSDiffableDataSourceTransaction.difference.getter();
  v33 = CollectionDifference.removals.getter();
  v32(v23, v18);
  if (!*(v33 + 16))
  {

    goto LABEL_19;
  }

  v34 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  sub_10000794C(v33 + v34, v12, &qword_100784618);

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000079B4(v12, &qword_100784618);
    goto LABEL_19;
  }

  v80 = v34;
  v65 = sub_100058000(&qword_100784638);
  v35 = v79;
  v36 = &v12[*(v65 + 48)];
  v37 = v78;
  v66 = *(v79 + 32);
  v67 = v79 + 32;
  v66(v82, v36, v78);
  v38 = v77;
  NSDiffableDataSourceTransaction.difference.getter();
  v39 = CollectionDifference.insertions.getter();
  v32(v38, v18);
  if (!*(v39 + 16))
  {

    (*(v35 + 8))(v82, v37);
    goto LABEL_19;
  }

  v40 = v76;
  sub_10000794C(v80 + v39, v76, &qword_100784618);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v79 + 8))(v82, v37);
    sub_1000079B4(v40, &qword_100784618);
LABEL_19:
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  v41 = *v40;
  v42 = v75;
  v66(v75, v40 + *(v65 + 48), v37);
  sub_1004891CC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v43 = v82;
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v79 + 8);
  result = v45(v42, v37);
  if ((v44 & 1) == 0)
  {
    v45(v43, v37);
    goto LABEL_19;
  }

  v81 = v41;
  v47 = v72;
  v48 = *(v72 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v48)
  {
    v49 = v48;
    v50 = v71;
    TTRRemindersBoardMainDiffableDataSource.item(withID:)();

    v51 = v73;
    v52 = v74;
    if ((*(v73 + 48))(v50, 1, v74) == 1)
    {
      sub_1000079B4(v50, &qword_100772140);
      v53 = objc_opt_self();
      v54 = String._bridgeToObjectiveC()();
      [v53 internalErrorWithDebugDescription:v54];

      swift_willThrow();
      return v45(v43, v37);
    }

    else
    {
      v57 = v69;
      (*(v51 + 32))(v69, v50, v52);
      v58 = (v47 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
      v59 = *(v47 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v60 = v58[4];
      v80 = sub_10000C36C(v58, v59);
      sub_100058000(&qword_100772150);
      v61 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_10062D400;
      (*(v51 + 16))(v62 + v61, v57, v52);
      v63 = v70;
      (*(v51 + 56))(v70, 1, 1, v52);
      (*(*(v60 + 8) + 600))(v62, v63, v81, 1, 1, v59);

      sub_1000079B4(v63, &qword_100772140);
      (*(v51 + 8))(v57, v52);
      return v45(v82, v78);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}