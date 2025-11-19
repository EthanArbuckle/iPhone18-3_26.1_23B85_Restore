double sub_1000937BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_viewModel);
  v9 = a4 & 1;
  v10 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_faceToFaceSide);
  KeyPath = swift_getKeyPath();
  v12 = type metadata accessor for ConversationDisplayBubble();
  *(a5 + v12[11]) = KeyPath;
  sub_100005AD4(&qword_1003BA370);
  swift_storeEnumTagMultiPayload();
  *(a5 + v12[15]) = swift_getKeyPath();
  sub_100005AD4(&qword_1003AE600);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ConversationViewModel();
  sub_100095338(&qword_1003AE4F8, type metadata accessor for ConversationViewModel);
  v13 = v8;

  swift_unknownObjectRetain();
  *a5 = ObservedObject.init(wrappedValue:)();
  *(a5 + 8) = v14;
  type metadata accessor for TTSManager();
  sub_100095338(&qword_1003AE508, type metadata accessor for TTSManager);
  *(a5 + 16) = ObservedObject.init(wrappedValue:)();
  *(a5 + 24) = v15;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = v9;
  *(a5 + 49) = 2;
  *(a5 + 50) = v10;
  *(a5 + 51) = 2;
  v16 = (a5 + v12[12]);
  State.init(wrappedValue:)();
  *v16 = v20;
  *(v16 + 1) = v21;
  v17 = (a5 + v12[13]);
  State.init(wrappedValue:)();
  *v17 = v20;
  *(v17 + 1) = v21;
  v18 = (a5 + v12[14]);
  State.init(wrappedValue:)();
  result = v20;
  *v18 = v20;
  *(v18 + 1) = v21;
  return result;
}

double sub_100093A20@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_viewModel);
  v6 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_faceToFaceSide);
  KeyPath = swift_getKeyPath();
  *(a3 + *(type metadata accessor for ConversationEditorBubble() + 40)) = KeyPath;
  sub_100005AD4(&qword_1003AE600);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ConversationViewModel();
  sub_100095338(&qword_1003AE4F8, type metadata accessor for ConversationViewModel);
  v8 = v5;

  *a3 = ObservedObject.init(wrappedValue:)();
  *(a3 + 8) = v9;
  type metadata accessor for LanguagesService();
  sub_100095338(&unk_1003ABC30, &type metadata accessor for LanguagesService);
  *(a3 + 16) = ObservedObject.init(wrappedValue:)();
  *(a3 + 24) = v10;
  *(a3 + 32) = a2;
  *(a3 + 33) = v6;
  State.init(wrappedValue:)();
  *(a3 + 40) = v12;
  *(a3 + 48) = v13;
  State.init(wrappedValue:)();
  result = v12;
  *(a3 + 56) = v12;
  *(a3 + 64) = v13;
  return result;
}

double sub_100093BE4@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_viewModel);
  v6 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_faceToFaceSide);
  KeyPath = swift_getKeyPath();
  v8 = type metadata accessor for ConversationDisplayBubble();
  *(a3 + v8[11]) = KeyPath;
  sub_100005AD4(&qword_1003BA370);
  swift_storeEnumTagMultiPayload();
  *(a3 + v8[15]) = swift_getKeyPath();
  sub_100005AD4(&qword_1003AE600);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ConversationViewModel();
  sub_100095338(&qword_1003AE4F8, type metadata accessor for ConversationViewModel);
  v9 = v5;

  *a3 = ObservedObject.init(wrappedValue:)();
  *(a3 + 8) = v10;
  type metadata accessor for TTSManager();
  sub_100095338(&qword_1003AE508, type metadata accessor for TTSManager);
  *(a3 + 16) = ObservedObject.init(wrappedValue:)();
  *(a3 + 24) = v11;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 2;
  *(a3 + 49) = a2;
  *(a3 + 50) = v6;
  *(a3 + 51) = 2;
  v12 = (a3 + v8[12]);
  State.init(wrappedValue:)();
  *v12 = v16;
  *(v12 + 1) = v17;
  v13 = (a3 + v8[13]);
  State.init(wrappedValue:)();
  *v13 = v16;
  *(v13 + 1) = v17;
  v14 = (a3 + v8[14]);
  State.init(wrappedValue:)();
  result = v16;
  *v14 = v16;
  *(v14 + 1) = v17;
  return result;
}

double sub_100093E30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_viewModel);
  v4 = ((*(v3 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSpeechTranslation) & 0xFF00) != 512) & *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSpeechTranslation);
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for ConversationDisplayBubble();
  *(a2 + v6[11]) = KeyPath;
  sub_100005AD4(&qword_1003BA370);
  swift_storeEnumTagMultiPayload();
  *(a2 + v6[15]) = swift_getKeyPath();
  sub_100005AD4(&qword_1003AE600);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ConversationViewModel();
  sub_100095338(&qword_1003AE4F8, type metadata accessor for ConversationViewModel);
  v7 = v3;

  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v8;
  type metadata accessor for TTSManager();
  sub_100095338(&qword_1003AE508, type metadata accessor for TTSManager);
  *(a2 + 16) = ObservedObject.init(wrappedValue:)();
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 514;
  *(a2 + 50) = 2;
  *(a2 + 51) = v4;
  v10 = (a2 + v6[12]);
  State.init(wrappedValue:)();
  *v10 = v14;
  *(v10 + 1) = v15;
  v11 = (a2 + v6[13]);
  State.init(wrappedValue:)();
  *v11 = v14;
  *(v11 + 1) = v15;
  v12 = (a2 + v6[14]);
  State.init(wrappedValue:)();
  result = v14;
  *v12 = v14;
  *(v12 + 1) = v15;
  return result;
}

uint64_t sub_10009408C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1000950D0(a3);
  sub_10000A2CC(0, &qword_1003B1AE0);
  v4 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_1000950E0(a3);
  return v4;
}

id sub_100094130(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a2;
  v7 = type metadata accessor for IndexPath();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005AD4(&qword_1003AEA40);
  v66 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v62 - v10;
  sub_100095028();
  sub_10009507C();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10037D478);
  v12 = sub_1000B8E70();
  v13 = v12[2];
  v69 = v3;
  if (v13)
  {
    v63 = a3;
    v14 = v9;
    v71 = _swiftEmptyArrayStorage;
    sub_1000C4CCC(0, v13, 0);
    v15 = 4;
    v16 = v71;
    do
    {
      v17 = *&v12[v15];
      v71 = v16;
      v19 = v16[2];
      v18 = v16[3];
      v70 = v17;
      swift_unknownObjectRetain();
      if (v19 >= v18 >> 1)
      {
        sub_1000C4CCC((v18 > 1), v19 + 1, 1);
        v16 = v71;
      }

      v16[2] = v19 + 1;
      *&v16[2 * v19 + 4] = v70;
      v15 += 2;
      --v13;
    }

    while (v13);

    v9 = v14;
    v4 = v69;
    a3 = v63;
  }

  else
  {
  }

  LOBYTE(v71) = 1;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v20 = v68;
  if (v68 != 5)
  {
    sub_100005AD4(&qword_1003AEA58);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1002D3160;
    *(v21 + 32) = v20;
    *(v21 + 40) = a3;
    LOBYTE(v71) = 1;
    sub_1000950D0(v20);
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  if (a1)
  {
    v22 = 0;
    v23 = _swiftEmptyArrayStorage;
    do
    {
      v24 = &off_10037D4A0 + 2 * v22++;
      v25 = (v24 + 5);
      while (1)
      {
        v26 = *(v25 - 1);
        v27 = *v25;
        sub_1000950D0(v26);
        if ((sub_10022B7AC(v26, v27, a1) & 1) == 0)
        {
          break;
        }

        v25 += 2;
        sub_1000950E0(v26);
        if (++v22 == 3)
        {
          goto LABEL_21;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v23;
      v29 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000C4CCC(0, v23[2] + 1, 1);
        v23 = v71;
      }

      v31 = v23[2];
      v30 = v23[3];
      if (v31 >= v30 >> 1)
      {
        sub_1000C4CCC((v30 > 1), v31 + 1, 1);
        v23 = v71;
      }

      v23[2] = v31 + 1;
      v32 = &v23[2 * v31];
      v32[4] = v26;
      v32[5] = v27;
      v9 = v29;
    }

    while (v22 != 2);
LABEL_21:
    v4 = v69;
  }

  else
  {
    v23 = &off_10037D4A0;
  }

  v33 = v4[OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_faceToFaceSide];
  if (v33 == 2)
  {
    goto LABEL_40;
  }

  v34 = v23[2];
  if (!v34)
  {
    goto LABEL_39;
  }

  v35 = 0;
  v36 = v23 + 5;
  v37 = _swiftEmptyArrayStorage;
  do
  {
    v38 = v23[2];
    v4 = (v34 - v35);
    v39 = v38 >= v35;
    v40 = v38 - v35;
    if (!v39)
    {
      v40 = 0;
    }

    v41 = &v36[2 * v35++];
    while (1)
    {
      if (!v40)
      {
        __break(1u);
        goto LABEL_51;
      }

      v42 = *(v41 - 1);
      if (v33)
      {
        break;
      }

      if (v42 != 1)
      {
        goto LABEL_34;
      }

LABEL_30:
      --v40;
      v41 += 2;
      ++v35;
      if (!--v4)
      {
        goto LABEL_39;
      }
    }

    if (!v42)
    {
      goto LABEL_30;
    }

LABEL_34:
    v68 = v36;
    *&v70 = v34;
    v43 = *v41;
    sub_1000950D0(v42);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v37;
    v62 = v9;
    if ((v44 & 1) == 0)
    {
      sub_1000C4CCC(0, v37[2] + 1, 1);
      v37 = v71;
    }

    v46 = v37[2];
    v45 = v37[3];
    if (v46 >= v45 >> 1)
    {
      sub_1000C4CCC((v45 > 1), v46 + 1, 1);
      v37 = v71;
    }

    v37[2] = v46 + 1;
    v47 = &v37[2 * v46];
    v47[4] = v42;
    v47[5] = v43;
    v9 = v62;
    v34 = v70;
    v36 = v68;
  }

  while (v4 != 1);
LABEL_39:

  v4 = v69;
LABEL_40:
  LOBYTE(v71) = 1;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  if (qword_1003A9220 != -1)
  {
LABEL_51:
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_1000078E8(v48, qword_1003D2770);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    swift_beginAccess();
    v52 = *(NSDiffableDataSourceSnapshot.itemIdentifiers.getter() + 16);

    *(v51 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v49, v50, "Snapshot identifiers count: %ld", v51, 0xCu);
  }

  v53 = *&v4[OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_dataSource];
  if (v53)
  {
    swift_beginAccess();
    v54 = v53;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  swift_beginAccess();
  v55 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  v56 = v67;
  if (v55 < 1)
  {
    return (*(v66 + 8))(v11, v9);
  }

  v57 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  v58 = __OFSUB__(v57, 1);
  result = (v57 - 1);
  if (v58)
  {
    __break(1u);
  }

  else
  {
    IndexPath.init(item:section:)();
    result = [v4 collectionView];
    if (result)
    {
      v60 = result;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v60 scrollToItemAtIndexPath:isa atScrollPosition:4 animated:0];

      (*(v64 + 8))(v56, v65);
      return (*(v66 + 8))(v11, v9);
    }
  }

  __break(1u);
  return result;
}

id sub_100094950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationListController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100094A14(void *a1)
{
  [a1 bounds];
  Height = CGRectGetHeight(v17);
  [a1 contentSize];
  v4 = Height - v3;
  [a1 adjustedContentInset];
  v6 = v4 - v5;
  if (v6 > 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  [a1 bounds];
  v8 = CGRectGetHeight(v18);
  [a1 adjustedContentInset];
  v10 = v8 - v9;
  [a1 contentSize];
  v12 = v7 + v11;
  [a1 contentOffset];
  v14 = v12 - v13;
  v15 = sub_100092058();
  [v15 setHidden:v14 <= v10 + 1.0];
}

uint64_t sub_100094B84(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100094B9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100094BF4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_100094C44(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConversationListController.ConversationListSection(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ConversationListController.ConversationListSection(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100094D58()
{
  result = qword_1003AEA30;
  if (!qword_1003AEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEA30);
  }

  return result;
}

unint64_t sub_100094DB0()
{
  result = qword_1003AEA38;
  if (!qword_1003AEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEA38);
  }

  return result;
}

uint64_t sub_100094E04(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.sizeCategory.setter();
}

BOOL sub_100094ECC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_17;
      }

      if (a3 == 1)
      {
        return 1;
      }
    }

    else if (!a3)
    {
      return 1;
    }

    return 0;
  }

  switch(a1)
  {
    case 2:
      return a3 == 2;
    case 3:
      return a3 == 3;
    case 4:
      return a3 == 4;
  }

LABEL_17:
  if (a3 < 5)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 24))(ObjectType, a2);
  v10 = v9;
  v11 = swift_getObjectType();
  if (v8 == (*(a4 + 24))(v11, a4) && v10 == v12)
  {

    return 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v13 & 1;
  }
}

unint64_t sub_100095028()
{
  result = qword_1003AEA48;
  if (!qword_1003AEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEA48);
  }

  return result;
}

unint64_t sub_10009507C()
{
  result = qword_1003AEA50;
  if (!qword_1003AEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEA50);
  }

  return result;
}

unint64_t sub_1000950D0(unint64_t result)
{
  if (result >= 5)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_1000950E0(unint64_t result)
{
  if (result >= 5)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000950F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095130()
{
  v1 = sub_100005AD4(&qword_1003AEA60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000951C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100005AD4(&qword_1003AEA60);

  return sub_10009408C(a1, a2, a3);
}

uint64_t sub_100095268()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100095338(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1000953E8(void *a1, void *a2, char a3)
{
  v92 = a1;
  v87 = sub_100005AD4(&qword_1003AD868);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v58 - v6;
  v86 = sub_100005AD4(&qword_1003AEAA0);
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v58 - v7;
  v8 = sub_100005AD4(&qword_1003AEAA8);
  v89 = *(v8 - 8);
  v90 = v8;
  __chkstk_darwin(v8);
  v88 = &v58 - v9;
  v10 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v10 - 8);
  v81 = &v58 - v11;
  v12 = sub_100005AD4(&qword_1003AEAB0);
  v79 = *(v12 - 8);
  v80 = v12;
  __chkstk_darwin(v12);
  v78 = &v58 - v13;
  v62 = sub_100005AD4(&qword_1003AABE0);
  v73 = *(v62 - 8);
  v14 = __chkstk_darwin(v62);
  v71 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v69 = &v58 - v16;
  v68 = sub_100005AD4(&qword_1003AEAB8);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v58 - v17;
  v18 = sub_100005AD4(&qword_1003AD858);
  v19 = __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v59 = sub_100005AD4(&qword_1003BC500);
  __chkstk_darwin(v59);
  v60 = sub_100005AD4(&qword_1003AEAC0);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v21 = &v58 - v20;
  v65 = sub_100005AD4(&qword_1003AEAC8);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v93 = &v58 - v22;
  v74 = sub_100005AD4(&qword_1003AEAD0);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v58 - v23;
  v77 = sub_100005AD4(&qword_1003AEAD8);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v58 - v24;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_dataSource] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v25 = sub_10011ED3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v25 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_observers] = v25;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController____lazy_storage___bottomSeparatorLine] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_viewModel] = a2;
  v3[OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_faceToFaceSide] = a3;
  v26 = type metadata accessor for ConversationListController();
  v95.receiver = v3;
  v95.super_class = v26;
  v27 = a2;
  v28 = objc_msgSendSuper2(&v95, "initWithCollectionViewLayout:", v92);
  v63 = *&v27[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session];
  swift_beginAccess();
  v92 = v28;
  sub_100005AD4(&qword_1003B8CB0);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  sub_100005AD4(&qword_1003AED90);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10001BAEC(&qword_1003AEAE0, &qword_1003BC500);
  sub_10001BAEC(&qword_1003BA720, &qword_1003AD858);
  v29 = v21;
  Publishers.CombineLatest3.init(_:_:_:)();
  swift_beginAccess();
  sub_100005AD4(&qword_1003AEAE8);
  v30 = v66;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  sub_100005AD4(&qword_1003AABF0);
  v31 = v69;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  v32 = v71;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10001BAEC(&qword_1003AEAF0, &qword_1003AEAC0);
  v91 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001BAEC(&qword_1003AEAF8, &qword_1003AEAB8);
  sub_10001BAEC(&qword_1003AABF8, &qword_1003AABE0);
  v33 = v60;
  v34 = v68;
  v35 = v62;
  Publisher.combineLatest<A, B, C>(_:_:_:)();
  v36 = *(v73 + 8);
  v36(v32, v35);
  v36(v31, v35);
  (*(v67 + 8))(v30, v34);
  (*(v61 + 8))(v29, v33);
  swift_beginAccess();
  sub_100005AD4(&qword_1003AD8D8);
  v37 = v78;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10001BAEC(&qword_1003AEB00, &qword_1003AEAC8);
  sub_10001BAEC(&qword_1003AEB08, &qword_1003AEAB0);
  v38 = v70;
  v39 = v65;
  v40 = v80;
  v41 = v93;
  Publisher.combineLatest<A>(_:)();
  (*(v79 + 8))(v37, v40);
  (*(v64 + 8))(v41, v39);
  sub_10000A2CC(0, &qword_1003A9C40);
  v42 = static OS_dispatch_queue.main.getter();
  v94 = v42;
  v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v44 = *(v43 - 8);
  v80 = *(v44 + 56);
  v93 = (v44 + 56);
  v45 = v81;
  v80(v81, 1, 1, v43);
  sub_10001BAEC(&qword_1003AEB10, &qword_1003AEAD0);
  sub_100051450();
  v46 = v75;
  v47 = v74;
  Publisher.receive<A>(on:options:)();
  sub_10009657C(v45);

  (*(v72 + 8))(v38, v47);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001BAEC(&qword_1003AEB18, &qword_1003AEAD8);
  v48 = v77;
  Publisher<>.sink(receiveValue:)();

  (*(v76 + 8))(v46, v48);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_100005AD4(&qword_1003AABD8);
  v49 = v83;
  Published.projectedValue.getter();
  swift_endAccess();
  v50 = static OS_dispatch_queue.main.getter();
  v94 = v50;
  v80(v45, 1, 1, v43);
  sub_10001BAEC(&qword_1003AD940, &qword_1003AD868);
  v51 = v82;
  v52 = v87;
  Publisher.receive<A>(on:options:)();
  sub_10009657C(v45);

  (*(v85 + 8))(v49, v52);
  sub_10001BAEC(&qword_1003AEB20, &qword_1003AEAA0);
  v53 = v88;
  v54 = v86;
  Publisher.dropFirst(_:)();
  (*(v84 + 8))(v51, v54);
  swift_allocObject();
  v55 = v92;
  swift_unknownObjectWeakInit();

  sub_10001BAEC(&qword_1003AEB28, &qword_1003AEAA8);
  v56 = v90;
  Publisher<>.sink(receiveValue:)();

  (*(v89 + 8))(v53, v56);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1003A91F0 != -1)
  {
    swift_once();
  }

  if (byte_1003D26A0 == 1)
  {
    [v55 setAdditionalSafeAreaInsets:{0.0, 0.0, 95.0, 0.0}];
  }

  return v55;
}

void sub_1000964C4()
{
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_dataSource) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_10011ED3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController_observers) = v1;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator26ConversationListController____lazy_storage___bottomSeparatorLine) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10009657C(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B23F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000965E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009662C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AEB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000966CC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v13 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14 == 2)
  {
    v7 = v13[0];
    v8 = [*(v13[0] + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request) localePair];
    v9 = [v8 sourceLocale];

    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = static Locale.== infix(_:_:)();

    v11 = *(v1 + 8);
    v11(v4, v0);
    v11(v6, v0);
  }

  else
  {
    sub_1000968EC(v13);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_100096948(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_10009698C(void *a1, uint64_t a2)
{
  v58 = a2;
  v4 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v4 - 8);
  v57 = &v57 - v5;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = v2;
  static Published.subscript.getter();

  v14 = aBlock;
  v13 = v62;
  v60 = a1;
  v15 = [a1 identifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v13)
  {
    if (v14 == v16 && v13 == v18)
    {

LABEL_7:
      if (qword_1003A92A0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000078E8(v20, qword_1003D28F0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "TTS currently playing is same as translation", v23, 2u);
      }

      return [*&v59[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_translator] cleanup];
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v25 = [v60 identifier];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v26;
  v62 = v28;
  v29 = v59;
  static Published.subscript.setter();
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v30 = objc_allocWithZone(_LTSpeakRequest);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v32 = Locale._bridgeToObjectiveC()().super.isa;
  v33 = [v30 initWithSourceLocale:isa targetLocale:v32];

  v34 = *(v7 + 8);
  v34(v10, v6);
  v34(v12, v6);
  v35 = *&v29[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_session];
  if (v35)
  {
    v36 = (v35 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID);
    swift_beginAccess();
    v67 = *v36;
    v37 = v67;
    v38 = v33;
    v39 = v37;

    swift_getAtKeyPath();
    if (!v62)
    {
    }

    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v40 = v33;
    v41 = 0;
  }

  [v33 setSessionID:v41];

  v42 = v60;
  sub_1000A43D4();
  v43 = String._bridgeToObjectiveC()();

  [v33 setText:v43];

  [v42 ttsPlaybackRateDouble];
  [v33 setTtsPlaybackRate:?];
  sub_10000A2CC(0, &qword_1003A9B80);
  v44 = static NSUserDefaults.translationGroupDefaults.getter();
  v45 = NSUserDefaults.onDeviceOnly.getter();

  [v33 setForcedOfflineTranslation:v45 & 1];
  v64 = &type metadata for TranslateFeatures;
  v65 = sub_100009DF8();
  LOBYTE(aBlock) = 18;
  v46 = isFeatureEnabled(_:)();
  sub_100008664(&aBlock);
  if (v46)
  {
    [v33 setPreferOnDeviceIfAvailable:1];
  }

  v47 = swift_allocObject();
  v48 = v60;
  *(v47 + 16) = v29;
  *(v47 + 24) = v48;
  v65 = sub_1000A45C8;
  v66 = v47;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100227798;
  v64 = &unk_1003821A8;
  v49 = _Block_copy(&aBlock);
  v50 = v29;
  v51 = v48;

  [v33 setCompletionHandler:v49];
  _Block_release(v49);
  v52 = type metadata accessor for TaskPriority();
  v53 = v57;
  (*(*(v52 - 8) + 56))(v57, 1, 1, v52);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v55 = v58;
  v54[4] = v50;
  v54[5] = v55;
  v54[6] = v33;
  v56 = v50;
  sub_10005E36C(0, 0, v53, &unk_1002DA228, v54);
}

void sub_1000970AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v52 = a2;
  v50 = a1;
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v54 = a3;
  v17 = type metadata accessor for Logger();
  sub_1000078E8(v17, qword_1003D2770);

  v18 = a5;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  v21 = os_log_type_enabled(v19, v20);
  v53 = v6;
  v51 = a4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 134218242;
    *(v22 + 4) = String.count.getter();

    *(v22 + 12) = 2114;
    *(v22 + 14) = v18;
    *v23 = v18;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Retranslate text of length %ld with pair: %{public}@", v22, 0x16u);
    sub_100009EBC(v23, &unk_1003AECA0);

    v6 = v53;
  }

  else
  {
  }

  v25 = [v18 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = [v18 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = objc_allocWithZone(_LTCombinedRouteParagraphTranslationRequest);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v29 = Locale._bridgeToObjectiveC()().super.isa;
  v30 = [v27 initWithSourceLocale:isa targetLocale:v29];

  v31 = *(v11 + 8);
  v31(v14, v10);
  v31(v16, v10);
  v32 = *&v6[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_session];
  if (v32)
  {
    v33 = (v32 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID);
    swift_beginAccess();
    v61 = *v33;
    v34 = v61;
    v35 = v30;
    v36 = v34;

    swift_getAtKeyPath();
    if (!v56)
    {
    }

    v38 = String._bridgeToObjectiveC()();

    v6 = v53;
  }

  else
  {
    v37 = v30;
    v38 = 0;
  }

  v39 = v54;
  [v30 setSessionID:v38];

  v40 = v30;
  v41 = v51;
  v42 = String._bridgeToObjectiveC()();
  [v40 setText:v42];

  [v40 setCensorSpeech:sub_1000A410C()];
  sub_10000A2CC(0, &qword_1003A9B80);
  v43 = static NSUserDefaults.translationGroupDefaults.getter();
  LOBYTE(v42) = NSUserDefaults.onDeviceOnly.getter();

  [v40 setForcedOfflineTranslation:v42 & 1];
  v58 = &type metadata for TranslateFeatures;
  v59 = sub_100009DF8();
  LOBYTE(aBlock) = 18;
  LOBYTE(v42) = isFeatureEnabled(_:)();
  sub_100008664(&aBlock);
  if (v42)
  {
    [v40 setPreferOnDeviceIfAvailable:1];
  }

  v44 = swift_allocObject();
  v45 = v50;
  v44[2] = v6;
  v44[3] = v45;
  v44[4] = v52;
  v44[5] = v39;
  v44[6] = v41;
  v44[7] = v18;
  v59 = sub_1000A42A0;
  v60 = v44;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_10001A5C8;
  v58 = &unk_100382108;
  v46 = _Block_copy(&aBlock);

  v47 = v18;
  v48 = v6;

  [v40 setCompletionHandler:v46];
  _Block_release(v46);

  [*&v48[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_translator] translate:v40];
}

BOOL sub_1000976E4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100097714@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100097740@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10009782C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000A4384(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10009786C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = [objc_opt_self() standardUserDefaults];
  Locale.identifier.getter();
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  [v4 setObject:v5 forKey:v6];

  (*(v1 + 8))(v3, v0);
  return sub_10009BF20();
}

uint64_t sub_100097A18()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = [objc_opt_self() standardUserDefaults];
  Locale.identifier.getter();
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  [v4 setObject:v5 forKey:v6];

  (*(v1 + 8))(v3, v0);
  return sub_10009BF20();
}

uint64_t sub_100097BEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100097C64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100097CD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_100097D4C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v9 = Locale._bridgeToObjectiveC()().super.isa;
  v10 = [v7 initWithSourceLocale:isa targetLocale:v9];

  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v6, v0);
  return v10;
}

id sub_100097F20(uint64_t a1, char *a2, char *a3)
{
  v4 = v3;
  v74 = a3;
  v70 = a2;
  v71 = a1;
  v5 = type metadata accessor for Locale();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = __chkstk_darwin(v5);
  v69 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = &v51 - v8;
  v67 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v64);
  v63 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v62 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100005AD4(&unk_1003AED50);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v51 - v13;
  v58 = sub_100005AD4(&qword_1003AABF0);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v51 - v14;
  v55 = sub_100005AD4(&qword_1003AED60);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v51 - v15;
  v52 = sub_100005AD4(&qword_1003AED68);
  v16 = *(v52 - 8);
  __chkstk_darwin(v52);
  v18 = &v51 - v17;
  v19 = sub_100005AD4(&qword_1003AFCE0);
  v20 = __chkstk_darwin(v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v51 - v23;
  v25 = &v3[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager__useCannedSpeech];
  KeyPath = swift_getKeyPath();
  v27 = [objc_opt_self() standardUserDefaults];
  sub_100005AD4(&qword_1003AED70);
  swift_allocObject();
  v28 = PassthroughSubject.init()();
  *v25 = v27;
  *(v25 + 1) = KeyPath;
  v25[16] = 0;
  *(v25 + 3) = v28;
  v29 = OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager__textTranslationLocale;
  (*(v72 + 56))(v24, 1, 1, v73);
  sub_10001F620(v24, v22, &qword_1003AFCE0);
  Published.init(initialValue:)();
  sub_100009EBC(v24, &qword_1003AFCE0);
  (*(v16 + 32))(&v3[v29], v18, v52);
  v30 = OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager__audioLevel;
  LODWORD(v77[0]) = 0;
  v31 = v53;
  Published.init(initialValue:)();
  (*(v54 + 32))(&v4[v30], v31, v55);
  v32 = OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager__currentlyPlayingTTS;
  v77[0] = 0;
  v77[1] = 0;
  sub_100005AD4(&qword_1003AA740);
  v33 = v56;
  Published.init(initialValue:)();
  (*(v57 + 32))(&v4[v32], v33, v58);
  v34 = OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager__lastPlayingWord;
  v77[0] = 0;
  sub_100005AD4(&qword_1003AEC18);
  v35 = v59;
  Published.init(initialValue:)();
  (*(v60 + 32))(&v4[v34], v35, v61);
  v36 = OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_queue;
  sub_10000A2CC(0, &qword_1003A9C40);
  static DispatchQoS.unspecified.getter();
  v77[0] = _swiftEmptyArrayStorage;
  sub_1000A433C(&qword_1003AED78, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005AD4(&qword_1003AED80);
  sub_1000A5708(&qword_1003AED88, &qword_1003AED80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v66 + 104))(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v67);
  *&v4[v36] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_session] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_subscriptions] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_stateSubscription] = 0;
  v38 = v72;
  v37 = v73;
  v39 = *(v72 + 16);
  v40 = v68;
  v41 = v70;
  v39(v68, v70, v73);
  swift_beginAccess();
  v42 = v69;
  v39(v69, v40, v37);
  Published.init(initialValue:)();
  v43 = *(v38 + 8);
  v43(v40, v37);
  swift_endAccess();
  v39(v40, v74, v37);
  swift_beginAccess();
  v39(v42, v40, v37);
  Published.init(initialValue:)();
  v43(v40, v37);
  swift_endAccess();
  v39(v40, v41, v37);
  swift_beginAccess();
  v39(v42, v40, v37);
  Published.init(initialValue:)();
  v43(v40, v37);
  swift_endAccess();
  type metadata accessor for DeviceHelper();
  swift_allocObject();
  v44 = sub_1000CFCFC();
  v45 = objc_allocWithZone(type metadata accessor for RecordingHelper());
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_recordingHelper] = sub_100203D4C(v44);
  v46 = [objc_allocWithZone(_LTTranslator) init];
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_translator] = v46;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_ringer] = [objc_allocWithZone(type metadata accessor for RingerSwitchObserver()) init];
  v47 = v71;
  sub_1000A46F8(v71, v77);
  swift_beginAccess();
  sub_1000A46F8(v77, v76);
  Published.init(initialValue:)();
  sub_1000968EC(v77);
  swift_endAccess();
  v48 = type metadata accessor for ConversationManager();
  v75.receiver = v4;
  v75.super_class = v48;
  v49 = objc_msgSendSuper2(&v75, "init");
  sub_100099570(1);
  sub_100098D00();

  v43(v74, v37);
  v43(v41, v37);
  sub_1000968EC(v47);
  return v49;
}

id sub_100098A54()
{
  v0 = type metadata accessor for Locale();
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v1);
  v5 = &v16[-v4];
  v17[0] = 0;
  v18 = 0;
  sub_1000A46F8(v17, v16);
  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 stringForKey:v8];

  if (v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Locale.init(identifier:)();
  v10 = [v6 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Locale.init(identifier:)();
  v13 = objc_allocWithZone(type metadata accessor for ConversationManager());
  v14 = sub_100097F20(v16, v5, v3);
  sub_1000968EC(v17);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

void sub_100098D00()
{
  v4 = [objc_opt_self() defaultCenter];
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  [v4 addObserver:v0 selector:"handleRouteChangeWithNotification:" name:AVAudioSessionRouteChangeNotification object:v2];

  v3 = [v1 sharedInstance];
  [v4 addObserver:v0 selector:"handleAudioInterruptionWithNotification:" name:AVAudioSessionInterruptionNotification object:v3];

  [v4 addObserver:v0 selector:"handleResignWithNotification:" name:UIApplicationWillResignActiveNotification object:0];
}

void sub_100098E48()
{
  v0 = String._bridgeToObjectiveC()();
  swift_beginAccess();
  sub_10000A2CC(0, &qword_1003B2A60);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

void sub_100098FDC()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10028DF68(v18), (v5 & 1) == 0))
  {

    sub_100078028(v18);
    return;
  }

  sub_10000A37C(*(v3 + 56) + 32 * v4, v19);
  sub_100078028(v18);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (!v17)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000078E8(v11, qword_1003D2890);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_25;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Audio interruption ended";
    goto LABEL_24;
  }

  if (v17 != 1)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D2890);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_25;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Audio interruption with unhandled type";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

LABEL_25:

    return;
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2890);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Audio interruption began", v9, 2u);
  }

  sub_10020BB08();
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData))
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      [v10 endAudio];
    }
  }
}

void sub_100099570(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  if (qword_1003A9298 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000078E8(v11, qword_1003D28D8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Preheating translation engine", v14, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v2;
  static Published.subscript.getter();

  v15 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v17 = Locale._bridgeToObjectiveC()().super.isa;
  v18 = [v15 initWithSourceLocale:isa targetLocale:v17];

  v19 = *(v5 + 8);
  v19(v8, v4);
  v19(v10, v4);
  v20 = [objc_allocWithZone(_LTSpeechTranslationRequest) initWithLocalePair:v18];
  [v20 setForcedOfflineTranslation:a1 & 1];
  v34 = &type metadata for TranslateFeatures;
  v35 = sub_100009DF8();
  LOBYTE(aBlock) = 18;
  LOBYTE(v17) = isFeatureEnabled(_:)();
  sub_100008664(&aBlock);
  if (v17)
  {
    [v20 setPreferOnDeviceIfAvailable:1];
  }

  [v20 setCensorSpeech:sub_1000A410C()];
  v21 = objc_opt_self();
  v22 = [v18 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = Locale._bridgeToObjectiveC()().super.isa;
  v19(v10, v4);
  v24 = [v18 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = Locale._bridgeToObjectiveC()().super.isa;
  v19(v10, v4);
  v35 = sub_100099A60;
  v36 = 0;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_10017CA70;
  v34 = &unk_100382518;
  v26 = _Block_copy(&aBlock);
  [v21 configInfoForLocale:v23 otherLocale:v25 completion:v26];
  _Block_release(v26);

  v27 = *(v30 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_translator);
  v35 = sub_100099BE0;
  v36 = 0;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100227798;
  v34 = &unk_100382540;
  v28 = _Block_copy(&aBlock);
  [v27 preheatForRequest:v20 completion:v28];
  _Block_release(v28);
}

void sub_100099A60()
{
  if (qword_1003A9298 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D28D8);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    v4 = Dictionary.description.getter();
    v6 = sub_10028D78C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Finished preheating asset updating if needed with config info: %{public}s", v2, 0xCu);
    sub_100008664(v3);
  }
}

void sub_100099BE0(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1003A9298 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000078E8(v6, qword_1003D28D8);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Finished preheating translation engine", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003A9298 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D28D8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to preheat translation engine: %@", v3, 0xCu);
    sub_100009EBC(v4, &unk_1003AECA0);

LABEL_10:

    return;
  }
}

uint64_t sub_100099E28()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static Locale.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

void sub_100099FB0(uint64_t a1)
{
  v3 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v67 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v75 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100005AD4(&unk_1003B8C90);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v67 - v13;
  v15 = type metadata accessor for Locale();
  v79 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v67 - v20;
  v22 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData];
  if (v22)
  {
    v72 = v12;
    v73 = v6;
    v78 = v19;
    v74 = v5;
    v23 = v22;
    v76 = v1;
    v24 = sub_100097D4C();
    v25 = a1;
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v27 = [v24 oppositeToLocale:isa];

    v77 = v23;
    if (v27)
    {
      v71 = v14;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = v78;
      v28 = v79;
      (*(v79 + 32))(v21, v18, v78);
      v30 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_speech;
      v31 = swift_beginAccess();
      v32 = *&v23[v30];
      __chkstk_darwin(v31);
      *(&v67 - 2) = v25;

      sub_10024434C(sub_1000A579C, v32, &v82);

      v33 = v25;
      if (v83)
      {
        v70 = v25;
        sub_100051124(&v82, v86);
        v34 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_translation;
        v35 = swift_beginAccess();
        v36 = *&v23[v34];
        __chkstk_darwin(v35);
        v37 = &v67 - 4;
        *(&v67 - 2) = v21;

        sub_10024434C(sub_1000A5630, v36, &v82);

        if (v83)
        {
          v69 = v21;
          sub_100051124(&v82, v85);
          v38 = OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_session;
          v39 = v76;
          v40 = *&v76[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_session];
          v41 = v78;
          if (!v40)
          {
            goto LABEL_26;
          }

          v42 = type metadata accessor for UUID();
          (*(*(v42 - 8) + 56))(v71, 1, 1, v42);
          sub_10000A2CC(0, &qword_1003A9C40);

          *v8 = static OS_dispatch_queue.main.getter();
          v43 = v75;
          v44 = v73;
          (*(v75 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v73);
          v45 = _dispatchPreconditionTest(_:)();
          v47 = *(v43 + 8);
          v46 = (v43 + 8);
          v47(v8, v44);
          if (v45)
          {
            sub_100031DD8(v40 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, &v82);
            sub_1000085CC(&v82, v83);
            v48 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
            if (!v48)
            {

              sub_100009EBC(v71, &unk_1003B8C90);
              sub_100008664(&v82);
              goto LABEL_22;
            }

            sub_100008664(&v82);
            v49 = v40 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID;
            swift_beginAccess();
            v50 = *v49;
            v75 = *(v49 + 16);
            *&v80 = v50;
            v73 = v50;

            swift_getAtKeyPath();
            v68 = v38;
            if (*(&v82 + 1))
            {
              v75 = v82;
            }

            else
            {
            }

            v57 = String._bridgeToObjectiveC()();

            [v48 setSessionID:v57];

            v38 = v71;
            sub_10001F620(v71, v72, &unk_1003B8C90);
            dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
            swift_getKeyPath();
            swift_getKeyPath();
            v37 = v48;
            v46 = v48;
            v39 = static Published.subscript.modify();
            if (!(*v58 >> 62))
            {
LABEL_19:
              sub_1002B525C(0, 0, v46);

              (v39)(&v82, 0);

              sub_100009EBC(v38, &unk_1003B8C90);
              v59 = *(v40 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation);
              *(v40 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation) = v37;
              v60 = v46;

              v61 = *&v77[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request];
              v62 = v60;
              v63 = [v61 uniqueID];
              if (!v63)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v63 = String._bridgeToObjectiveC()();
              }

              [v62 setRequestID:v63];

              v48 = v37;
              v38 = v68;
              v39 = v76;
LABEL_22:
              v64 = *&v39[v38];
              if (v64)
              {
                sub_100031DD8(v64 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, &v82);
                sub_1000085CC(&v82, v83);
                dispatch thunk of TranslationStore.save()();
                sub_100008664(&v82);
              }

              if (v48)
              {
                *&v82 = v48;
                v84 = 4;
LABEL_27:
                swift_getKeyPath();
                swift_getKeyPath();
                sub_1000A46F8(&v82, &v80);
                v65 = v39;
                static Published.subscript.setter();
                sub_1000968EC(&v82);
                sub_100008664(v85);
                sub_100008664(v86);
                v28 = v79;
                (*(v79 + 8))(v69, v41);
                v33 = v70;
                v52 = v77;
LABEL_28:
                type metadata accessor for SpeechTurn();
                if (swift_dynamicCastClass())
                {
                  v66 = v74;
                  (*(v28 + 16))(v74, v33, v41);
                  (*(v28 + 56))(v66, 0, 1, v41);
                  sub_1000A8380(v66);

                  sub_100009EBC(v66, &qword_1003AFCE0);
                }

                else
                {
                }

                return;
              }

LABEL_26:
              *&v82 = 0;
              v84 = 0;
              goto LABEL_27;
            }
          }

          else
          {
            __break(1u);
          }

          if (_CocoaArrayWrapper.endIndex.getter() < 0)
          {
            __break(1u);
            return;
          }

          goto LABEL_19;
        }

        sub_100008664(v86);
        v41 = v78;
        v28 = v79;
        (*(v79 + 8))(v21, v78);
        sub_100009EBC(&v82, &unk_1003B9EC0);
        v33 = v70;
      }

      else
      {
        (*(v28 + 8))(v21, v29);
        sub_100009EBC(&v82, &unk_1003AECE0);
        v41 = v29;
      }
    }

    else
    {
      v33 = v25;
      v41 = v78;
      v28 = v79;
    }

    v51 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_speech;
    v52 = v77;
    v53 = swift_beginAccess();
    v54 = *&v52[v51];
    __chkstk_darwin(v53);
    *(&v67 - 2) = v33;

    sub_10024434C(sub_1000A5610, v54, &v80);

    if (v81)
    {
      sub_100051124(&v80, &v82);
      sub_1000085CC(&v82, v83);
      v55 = dispatch thunk of FormattedString.formattedString.getter();
      sub_10009AAAC(v55, v56, 0, 0, v33, *&v52[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_options], 0, 0);

      sub_100008664(&v82);
    }

    else
    {
      sub_100009EBC(&v80, &unk_1003AECE0);
    }

    goto LABEL_28;
  }
}

uint64_t sub_10009AAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v141 = a8;
  v140 = a7;
  v152 = a6;
  v145 = a3;
  v159 = a1;
  v143 = type metadata accessor for SpeechResultOrigin();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v144 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StoredSpeechResult();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v147 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for Locale();
  v161 = *(v163 - 8);
  v16 = __chkstk_darwin(v163);
  v153 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v158 = &v134 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v134 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v134 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v134 - v27;
  v137 = v29;
  __chkstk_darwin(v26);
  v31 = &v134 - v30;
  v151 = a5;
  sub_100099E28();
  v162 = v31;
  v154 = v8;
  sub_100099E28();
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_1000078E8(v32, qword_1003D2770);
  v34 = (v161 + 2);
  v35 = v161[2];
  v155 = v28;
  v36 = v28;
  v37 = v163;
  v35(v25, v36, v163);
  v139 = v34;
  v138 = v35;
  v35(v22, v162, v37);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v150 = v33;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v149 = v13;
  v148 = v14;
  v157 = a2;
  v146 = a4;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    *&aBlock = v136;
    *v41 = 136446978;
    v134 = v38;
    v42 = Locale.ltIdentifier.getter();
    v135 = v39;
    v44 = v43;
    v45 = v163;
    v46 = v161[1];
    v160 = v46;
    v156 = (v161 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v25, v163);
    v47 = sub_10028D78C(v42, v44, &aBlock);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2082;
    v48 = Locale.ltIdentifier.getter();
    v50 = v49;
    v46(v22, v45);
    v51 = sub_10028D78C(v48, v50, &aBlock);

    *(v41 + 14) = v51;
    *(v41 + 22) = 2048;
    v52 = String.count.getter();

    *(v41 + 24) = v52;

    *(v41 + 32) = 1024;

    *(v41 + 34) = a4 != 0;

    v53 = v134;
    _os_log_impl(&_mh_execute_header, v134, v135, "Requested text translation from '%{public}s'->'%{public}s' of length %ld has sanitized text: %{BOOL}d", v41, 0x26u);
    swift_arrayDestroy();

    v54 = v156;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v55 = v161[1];
    v54 = (v161 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56 = v163;
    v55(v22, v163);
    v160 = v55;
    v55(v25, v56);
  }

  v57 = v154;
  v58 = sub_100097D4C();
  v59 = [v58 sourceLocale];

  v60 = v158;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = sub_100097D4C();
  v62 = [v61 targetLocale];

  v63 = v153;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v61) = static Locale.== infix(_:_:)();
  v64 = v63;
  v65 = v163;
  v66 = v160;
  v160(v64, v163);
  v66(v60, v65);
  if (v61)
  {
    v67 = v57;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v156 = v54;
      v71 = v70;
      v72 = swift_slowAlloc();
      *&aBlock = v72;
      *v71 = 136446210;
      v73 = sub_100097D4C();
      v74 = [v73 sourceLocale];

      v75 = v158;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v76 = Locale.ltIdentifier.getter();
      v78 = v77;
      v160(v75, v163);
      v79 = sub_10028D78C(v76, v78, &aBlock);

      *(v71 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v68, v69, "Source and target locale are both '%{public}s', performing passthrough translation", v71, 0xCu);
      sub_100008664(v72);
    }

    v80 = v155;
    sub_10009C88C(v159, v157, v152);
    v81 = v80;
    v82 = v163;
    v83 = v160;
    v160(v81, v163);
    return v83(v162, v82);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v85 = v159;
  if (v169 == 3)
  {
    sub_100051124(&aBlock, v164);
    sub_1000085CC(v164, v164[3]);
    if (dispatch thunk of FormattedString.formattedString.getter() == v85 && v86 == v157)
    {

      v87 = v155;
LABEL_21:
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&_mh_execute_header, v128, v129, "Early returning and not translating because translation is in progress with the same text already", v130, 2u);
        v87 = v155;
      }

      v131 = v87;
      v132 = v163;
      v133 = v160;
      v160(v131, v163);
      v133(v162, v132);
      return sub_100008664(v164);
    }

    v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v87 = v155;
    if (v127)
    {
      goto LABEL_21;
    }

    sub_100008664(v164);
  }

  else
  {
    sub_1000968EC(&aBlock);
  }

  v88 = objc_allocWithZone(_LTTextTranslationRequest);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v90 = Locale._bridgeToObjectiveC()().super.isa;
  v91 = [v88 initWithSourceLocale:isa targetLocale:v90];

  v92 = v91;
  [v92 setTaskHint:1];
  v93 = objc_allocWithZone(NSAttributedString);
  v94 = String._bridgeToObjectiveC()();
  v95 = [v93 initWithString:v94];

  [v92 setText:v95];
  [v92 setCensorSpeech:sub_1000A410C()];
  sub_10000A2CC(0, &qword_1003A9B80);
  v96 = static NSUserDefaults.translationGroupDefaults.getter();
  LOBYTE(v95) = NSUserDefaults.onDeviceOnly.getter();

  [v92 setForcedOfflineTranslation:v95 & 1];
  *(&v167 + 1) = &type metadata for TranslateFeatures;
  v168 = sub_100009DF8();
  LOBYTE(aBlock) = 18;
  LOBYTE(v95) = isFeatureEnabled(_:)();
  sub_100008664(&aBlock);
  if (v95)
  {
    [v92 setPreferOnDeviceIfAvailable:1];
  }

  v156 = v54;
  v97 = v158;
  v98 = v163;
  v99 = v138;
  v138(v158, v162, v163);
  v100 = v161;
  v101 = (*(v161 + 80) + 32) & ~*(v161 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = v57;
  *(v102 + 24) = v92;
  (v100[4])(v102 + v101, v97, v98);
  v168 = sub_1000A4874;
  v169 = v102;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v167 = sub_10009F248;
  *(&v167 + 1) = &unk_100382270;
  v103 = _Block_copy(&aBlock);
  v104 = v57;
  v105 = v92;

  [v105 setTextTranslationHandler:v103];
  _Block_release(v103);
  v106 = type metadata accessor for ConversationTurn();
  v107 = objc_allocWithZone(v106);
  *&v107[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_lid] = _swiftEmptyArrayStorage;
  *&v107[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_speech] = _swiftEmptyArrayStorage;
  *&v107[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_translation] = _swiftEmptyArrayStorage;
  v161 = v105;
  *&v107[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request] = v105;
  *&v107[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_options] = v152;
  v108 = &v107[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_completion];
  v109 = v140;
  v110 = v141;
  *v108 = v140;
  v108[1] = v110;
  sub_10001AD18(v109);
  v165.receiver = v107;
  v165.super_class = v106;
  v111 = objc_msgSendSuper2(&v165, "init");
  v112 = OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData;
  v113 = *&v104[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData];
  *&v104[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData] = v111;

  v99(v97, v151, v98);
  (*(v142 + 104))(v144, enum case for SpeechResultOrigin.text(_:), v143);

  v114 = v147;
  StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
  v115 = *&v104[v112];
  v116 = v149;
  v117 = v148;
  if (v115)
  {
    *(&v167 + 1) = v149;
    v168 = sub_1000A433C(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult);
    v118 = sub_100050D60(&aBlock);
    (*(v117 + 16))(v118, v114, v116);
    v119 = *((swift_isaMask & *v115) + 0xE0);
    v120 = v115;
    v119(&aBlock);

    sub_100008664(&aBlock);
  }

  v168 = 0;
  aBlock = 0u;
  v167 = 0u;
  LOBYTE(v169) = 5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000A46F8(&aBlock, v164);
  v121 = v104;
  static Published.subscript.setter();
  sub_1000968EC(&aBlock);
  *(&v167 + 1) = v116;
  v168 = sub_1000A433C(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult);
  v122 = sub_100050D60(&aBlock);
  (*(v117 + 16))(v122, v114, v116);
  LOBYTE(v169) = 3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000A46F8(&aBlock, v164);
  v123 = v121;
  static Published.subscript.setter();
  sub_1000968EC(&aBlock);
  sub_10009CDEC();
  v124 = v161;
  [*&v123[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_translator] translate:v161];

  (*(v117 + 8))(v114, v116);
  v125 = v163;
  v126 = v160;
  v160(v155, v163);
  return v126(v162, v125);
}

void sub_10009BAC0(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000A2CC(0, &qword_1003A9C40);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_10009BDB4();
    if ((a3 & 1) == 0)
    {
      sub_10020D144(1);
      [*&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_translator] cleanup];
      swift_getKeyPath();
      swift_getKeyPath();
      v22 = 0;
      v13 = v4;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v22 = 0;
      v23 = 0;
      v14 = v13;
      static Published.subscript.setter();
    }

    v15 = *&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData];
    *&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData] = 0;

    if (a1)
    {
      v22 = a1;
      v23 = a2;
      v24 = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000A46F8(&v22, v21);
      v16 = a2;
      v4;
      v17 = a1;
    }

    else
    {
      v22 = a2;
      v24 = 0;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000A46F8(&v22, v21);
      v18 = a2;
      v19 = v4;
    }

    static Published.subscript.setter();
    sub_1000968EC(&v22);
    v20 = [objc_opt_self() sharedApplication];
    [v20 setIdleTimerDisabled:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10009BDB4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A2CC(0, &qword_1003A9C40);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_10020BB08();
    v8 = OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_stateSubscription;
    if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_stateSubscription))
    {

      AnyCancellable.cancel()();
    }

    *(v1 + v8) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009BF20()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000A433C(&unk_1003B06F0, &type metadata accessor for Locale);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  result = (v10)(v8, v2);
  if ((v9 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    v10(v6, v2);
    result = (v10)(v8, v2);
    if ((v12 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      (*(v3 + 16))(v6, v8, v2);
      v13 = v1;
      static Published.subscript.setter();
      return (v10)(v8, v2);
    }
  }

  return result;
}

id sub_10009C280()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConversationManager()
{
  result = qword_1003AEBC8;
  if (!qword_1003AEBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009C5F0()
{
  sub_10006D434();
  if (v0 <= 0x3F)
  {
    sub_100029834(319, &unk_1003AEBE0, &qword_1003AFCE0);
    if (v1 <= 0x3F)
    {
      sub_100026204(319, &unk_1003AEBF0);
      if (v2 <= 0x3F)
      {
        sub_100026204(319, &qword_1003AAE00);
        if (v3 <= 0x3F)
        {
          sub_100029834(319, &qword_1003AEC00, &qword_1003AA740);
          if (v4 <= 0x3F)
          {
            sub_100029834(319, &qword_1003AEC10, &qword_1003AEC18);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10009C84C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConversationManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_10009C88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SpeechResultOrigin();
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v36 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100097D4C();
  v14 = [objc_allocWithZone(_LTTextToSpeechTranslationRequest) initWithLocalePair:v13];

  v15 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_session];
  if (v15)
  {
    v32[0] = a1;
    v32[1] = a2;
    v33 = a3;
    v34 = v8;
    v16 = (v15 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID);
    swift_beginAccess();
    v37[0] = *v16;
    v17 = v37[0];
    v18 = v14;
    v19 = v17;

    swift_getAtKeyPath();
    if (!*(&v38 + 1))
    {
    }

    v21 = String._bridgeToObjectiveC()();

    a3 = v33;
    v8 = v34;
  }

  else
  {
    v20 = v14;
    v21 = 0;
  }

  [v14 setSessionID:v21];

  [v14 setTaskHint:1];
  v22 = String._bridgeToObjectiveC()();
  [v14 setText:v22];

  [v14 setCensorSpeech:sub_1000A410C()];
  [v14 setDelegate:v4];
  sub_10000A2CC(0, &qword_1003A9B80);
  v23 = static NSUserDefaults.translationGroupDefaults.getter();
  LOBYTE(v22) = NSUserDefaults.onDeviceOnly.getter();

  [v14 setForcedOfflineTranslation:v22 & 1];
  *(&v39 + 1) = &type metadata for TranslateFeatures;
  v40 = sub_100009DF8();
  LOBYTE(v38) = 18;
  LOBYTE(v22) = isFeatureEnabled(_:)();
  sub_100008664(&v38);
  if (v22)
  {
    [v14 setPreferOnDeviceIfAvailable:1];
  }

  v24 = objc_allocWithZone(type metadata accessor for PassthroughTextTurn());
  v25 = v14;
  v26 = sub_1001A030C(v25, a3);
  v27 = *&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData];
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData] = v26;

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v41 = 5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000A46F8(&v38, v37);
  v28 = v4;
  static Published.subscript.setter();
  sub_1000968EC(&v38);
  v29 = [v25 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = [v25 localePair];
  v31 = [v30 sourceLocale];

  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v35 + 104))(v10, enum case for SpeechResultOrigin.text(_:), v8);
  *(&v39 + 1) = type metadata accessor for StoredSpeechResult();
  v40 = sub_1000A433C(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult);
  sub_100050D60(&v38);
  StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
  v41 = 3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000A46F8(&v38, v37);
  v28;
  static Published.subscript.setter();
  sub_1000968EC(&v38);
  sub_10009CDEC();
}

void sub_10009CDEC()
{
  v1 = v0;
  v2 = sub_100005AD4(&unk_1003B8C90);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v142[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v160 = &v142[-v6];
  v7 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v142[-v8];
  v10 = type metadata accessor for Locale();
  v161 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v142[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v142[-v14];
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v142[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v157 = sub_10000A2CC(0, &qword_1003A9C40);
  *v19 = static OS_dispatch_queue.main.getter();
  v20 = *(v17 + 104);
  v155 = enum case for DispatchPredicate.onQueue(_:);
  v156 = v17 + 104;
  v154 = v20;
  v20(v19);
  v21 = _dispatchPreconditionTest(_:)();
  v22 = *(v17 + 8);
  v158 = v19;
  v159 = v16;
  v23 = v16;
  v24 = v22;
  v22(v19, v23);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v153 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v162 = v1;
  static Published.subscript.getter();

  *&v165[25] = *&v166[25];
  *v165 = *v166;
  *&v165[16] = *&v166[16];
  if (v166[40] == 4)
  {
    v40 = v165;
LABEL_40:
    sub_1000968EC(v40);
    return;
  }

  if (v166[40] == 5 && (*v165 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v25 = vorrq_s8(*&v165[8], *&v165[24]);
    if (!*&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)))
    {
      return;
    }
  }

  sub_1000968EC(v165);
  v1 = v162;
  v26 = *&v162[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData];
  if (!v26)
  {
    return;
  }

  v151 = v10;
  v150 = OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData;
  v148 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_options;
  v10 = *&v26[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_options];
  v149 = v26;
  v27 = v26;
  v152 = v27;
  if ((v10 & 1) != 0 || (v28 = sub_1000A6A34(), v27 = v152, (v28 & 1) == 0))
  {
    v147 = v13;
    v41 = v27;
    sub_1000A67D4(v9);
    v42 = v161;
    v43 = v151;
    if ((v161[6])(v9, 1, v151) == 1)
    {
      sub_100009EBC(v9, &qword_1003AFCE0);
      memset(v166, 0, 40);
LABEL_39:
      sub_100009EBC(v166, &unk_1003AECE0);
      *v166 = v152;
      v166[40] = 2;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000A46F8(v166, v165);
      v78 = v1;
      static Published.subscript.setter();
      v40 = v166;
      goto LABEL_40;
    }

    (v42[4])(v15, v9, v43);
    v44 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_speech;
    v45 = swift_beginAccess();
    v46 = *&v41[v44];
    __chkstk_darwin(v45);
    *&v142[-16] = v15;

    sub_10024434C(sub_1000A4900, v46, v166);

    v1 = v162;
    v48 = v42[1];
    v19 = v42 + 1;
    v47 = v48;
    v48(v15, v43);
    if (!*&v166[24])
    {
      goto LABEL_39;
    }

    sub_100051124(v166, v164);
    sub_1000085CC(v164, v164[3]);
    v49 = dispatch thunk of FormattedString.formattedString.getter();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v146 = v47;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v53 = v166[40];
      sub_1000968EC(v166);
      v10 = v150;
      v13 = v160;
      if (v53 != 2)
      {
        goto LABEL_59;
      }

      sub_10020BB08();
      if (*&v1[v10])
      {
        objc_opt_self();
        v54 = swift_dynamicCastObjCClass();
        if (v54)
        {
          [v54 endAudio];
        }
      }

      sub_100031DD8(v164, v166);
      sub_100005AD4(&unk_1003AECF0);
      sub_10000A2CC(0, &unk_1003B9EE0);
      if (swift_dynamicCast())
      {
        v55 = *v165;
        v56 = [*v165 bestTranscription];

        if (v56)
        {
          if (qword_1003A9280 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          v58 = sub_1000078E8(v57, qword_1003D2890);
          v59 = v56;
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.info.getter();
          v62 = os_log_type_enabled(v60, v61);
          v161 = v58;
          if (v62)
          {
            v63 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            *v166 = v145;
            *v63 = 136446723;
            v64 = [v59 isLowConfidence];
            v65 = v64 == 0;
            if (v64)
            {
              v66 = 7562617;
            }

            else
            {
              v66 = 28526;
            }

            v144 = v60;
            if (v65)
            {
              v67 = 0xE200000000000000;
            }

            else
            {
              v67 = 0xE300000000000000;
            }

            v68 = sub_10028D78C(v66, v67, v166);

            *(v63 + 4) = v68;
            *(v63 + 12) = 2048;
            v69 = [v59 formattedString];
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v143 = v61;
            v70 = v59;

            v71 = String.count.getter();

            *(v63 + 14) = v71;

            *(v63 + 22) = 2085;
            v1 = v162;
            v72 = [v59 formattedString];
            v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v74;

            v76 = sub_10028D78C(v73, v75, v166);
            v59 = v70;

            *(v63 + 24) = v76;
            v77 = v144;
            _os_log_impl(&_mh_execute_header, v144, v143, "Finished recognition with low confidence: %{public}s of length %ld: %{sensitive}s", v63, 0x20u);
            swift_arrayDestroy();

            v10 = v150;
          }

          else
          {
          }

          v80 = [v59 sanitizedFormattedString];
          if (v80)
          {
            v145 = v59;
            v81 = v80;
            v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v84 = v83;

            v85 = Logger.logObject.getter();
            v86 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              LODWORD(v161) = v86;
              v88 = v87;
              v144 = swift_slowAlloc();
              *v166 = v144;
              *v88 = 134218243;
              *(v88 + 4) = String.count.getter();

              *(v88 + 12) = 2085;
              v89 = sub_10028D78C(v82, v84, v166);
              v90 = v85;
              v91 = v89;

              *(v88 + 14) = v91;
              _os_log_impl(&_mh_execute_header, v90, v161, "Finished recognition (sanitized) of length %ld: %{sensitive}s", v88, 0x16u);
              sub_100008664(v144);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            v59 = v145;
          }

          if (v149[v148])
          {

            v13 = v160;
          }

          else
          {
            v92 = [v59 isLowConfidence];
            v13 = v160;
            if (v92)
            {
              *v166 = 3;
              memset(&v166[8], 0, 32);
              v166[40] = 5;
              swift_getKeyPath();
              swift_getKeyPath();
              sub_1000A46F8(v166, v165);
              v93 = v1;
              static Published.subscript.setter();

              goto LABEL_43;
            }
          }
        }
      }

      if (qword_1003A9280 == -1)
      {
LABEL_56:
        v94 = type metadata accessor for Logger();
        sub_1000078E8(v94, qword_1003D2890);
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&_mh_execute_header, v95, v96, "Waiting for translation result", v97, 2u);
        }

        sub_100031DD8(v164, v166);
        v166[40] = 3;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000A46F8(v166, v165);
        v98 = v1;
        static Published.subscript.setter();
        sub_1000968EC(v166);
LABEL_59:
        sub_1000A7108(v166);
        if (*&v166[24])
        {
          sub_100051124(v166, v163);
          v99 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_session];
          if (!v99)
          {
            goto LABEL_70;
          }

          v145 = OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_session;
          v100 = type metadata accessor for UUID();
          (*(*(v100 - 8) + 56))(v13, 1, 1, v100);

          v101 = static OS_dispatch_queue.main.getter();
          v102 = v158;
          *v158 = v101;
          v103 = v159;
          v154(v102, v155, v159);
          v104 = _dispatchPreconditionTest(_:)();
          v24(v102, v103);
          if (v104)
          {
            sub_100031DD8(v99 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, v166);
            sub_1000085CC(v166, *&v166[24]);
            v105 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
            if (v105)
            {
              v106 = v105;
              v161 = v19;
              sub_100008664(v166);
              v107 = (v99 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID);
              swift_beginAccess();
              *v165 = *v107;
              v108 = *v165;

              swift_getAtKeyPath();
              if (!*&v166[8])
              {
              }

              v114 = String._bridgeToObjectiveC()();

              [v106 setSessionID:v114];

              sub_10001F620(v13, v153, &unk_1003B8C90);
              dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
              swift_getKeyPath();
              v115 = v13;
              KeyPath = swift_getKeyPath();
              v117 = v106;
              v118 = static Published.subscript.modify();
              if (*v119 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
              {
                __break(1u);
              }

              else
              {
                sub_1002B525C(0, 0, v117);

                v118(v166, 0);

                sub_100009EBC(v115, &unk_1003B8C90);
                v120 = *(v99 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation);
                *(v99 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation) = v106;
                v117 = v117;

                v121 = [*&v152[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request] uniqueID];
                if (!v121)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v121 = String._bridgeToObjectiveC()();
                }

                [v117 setRequestID:v121];

                v122 = *&v1[v145];
                KeyPath = v147;
                if (v122)
                {
                  sub_100031DD8(v122 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, v166);
                  sub_1000085CC(v166, *&v166[24]);
                  dispatch thunk of TranslationStore.save()();
                  sub_100008664(v166);
                }

                v115 = *&v149[v148];
                LODWORD(v106) = UIAccessibilityIsVoiceOverRunning();
                if (qword_1003A9280 == -1)
                {
LABEL_78:
                  v123 = type metadata accessor for Logger();
                  sub_1000078E8(v123, qword_1003D2890);
                  v124 = Logger.logObject.getter();
                  v125 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v124, v125))
                  {
                    v126 = swift_slowAlloc();
                    *v126 = 67240704;
                    *(v126 + 4) = (v115 & 8) >> 3;
                    *(v126 + 8) = 1026;
                    *(v126 + 10) = v106 ^ 1;
                    *(v126 + 14) = 1026;
                    v1 = v162;
                    *(v126 + 16) = (((v115 & 8) == 0) | v106 & 1) == 0;
                    _os_log_impl(&_mh_execute_header, v124, v125, "TTS speak check (turnHasAutoPlayTTS: %{BOOL,public}d && !usingVoiceOver: %{BOOL,public}d: %{BOOL,public}d", v126, 0x14u);
                    KeyPath = v147;
                  }

                  if ((v115 & 8) != 0)
                  {
                    v10 = v150;
                    if ((v106 & 1) == 0)
                    {
                      type metadata accessor for SpeechTurn();
                      v129 = v152;
                      v130 = swift_dynamicCastClass();
                      if (v130)
                      {
                        v131 = v130;
                        v132 = v129;
                        v133 = Logger.logObject.getter();
                        v134 = static os_log_type_t.info.getter();
                        if (os_log_type_enabled(v133, v134))
                        {
                          v135 = swift_slowAlloc();
                          *v135 = 0;
                          _os_log_impl(&_mh_execute_header, v133, v134, "TTS Speak with turn", v135, 2u);
                          v10 = v150;
                        }

                        sub_10009698C(v117, *(v131 + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_options) | 2);
                        sub_1000A7DD0();
                      }

                      else
                      {
                        v136 = Logger.logObject.getter();
                        v137 = static os_log_type_t.info.getter();
                        if (os_log_type_enabled(v136, v137))
                        {
                          v138 = swift_slowAlloc();
                          *v138 = 0;
                          _os_log_impl(&_mh_execute_header, v136, v137, "TTS Speak without turn", v138, 2u);
                        }

                        sub_10009698C(v117, *&v149[v148]);
                      }

                      goto LABEL_94;
                    }
                  }

                  else
                  {
                    v10 = v150;
                    if (!v106)
                    {
                      if (!*&v1[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_stateSubscription])
                      {
                        type metadata accessor for SpeechTurn();
                        if (swift_dynamicCastClass())
                        {
                          sub_10020D144(1);
                        }
                      }

                      goto LABEL_94;
                    }
                  }

                  dispatch thunk of PersistedTranslation.displayText.getter();
                  v127 = String._bridgeToObjectiveC()();

                  dispatch thunk of PersistedTranslation.targetLocale.getter();
                  Locale.identifier.getter();
                  v146(KeyPath, v151);
                  v128 = String._bridgeToObjectiveC()();

                  [v1 _accessbilityEvaluateTurnData:v127 languageCode:v128];

LABEL_94:
                  *v166 = v117;
                  v166[40] = 4;
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_1000A46F8(v166, v165);
                  v139 = v1;
                  static Published.subscript.setter();
                  v113 = sub_1000968EC(v166);
                  goto LABEL_95;
                }
              }

              swift_once();
              goto LABEL_78;
            }

            sub_100009EBC(v13, &unk_1003B8C90);
            sub_100008664(v166);
LABEL_70:
            sub_10009BAC0(0, 0, 0);
LABEL_95:
            v140 = v152;
            (*((swift_isaMask & *v152) + 0xF0))(v113);

            sub_100008664(v163);
            v141 = *&v1[v10];
            *&v1[v10] = 0;

            goto LABEL_96;
          }

          __break(1u);
        }

        else
        {
          sub_100009EBC(v166, &unk_1003B9EC0);
          if (qword_1003A9280 == -1)
          {
LABEL_66:
            v109 = type metadata accessor for Logger();
            sub_1000078E8(v109, qword_1003D2890);
            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              *v112 = 0;
              _os_log_impl(&_mh_execute_header, v110, v111, "Don't have a final translation yet", v112, 2u);
            }

            goto LABEL_96;
          }
        }

        swift_once();
        goto LABEL_66;
      }

LABEL_99:
      swift_once();
      goto LABEL_56;
    }

    *v166 = 0;
    v166[40] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000A46F8(v166, v165);
    v79 = v1;
    static Published.subscript.setter();

LABEL_43:
    sub_1000968EC(v166);
LABEL_96:
    sub_100008664(v164);
    return;
  }

  *v166 = 2;
  memset(&v166[8], 0, 32);
  v166[40] = 5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000A46F8(v166, v165);
  v29 = v1;
  static Published.subscript.setter();
  sub_1000968EC(v166);
  v30 = *&v29[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_session];
  v31 = v150;
  if (v30)
  {
    v32 = *(v30 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_lidDisambiguationCounter);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (!v33)
    {
      *(v30 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_lidDisambiguationCounter) = v34;
      goto LABEL_12;
    }

    goto LABEL_98;
  }

LABEL_12:
  sub_10020BB08();
  v35 = *&v1[v31];
  if (v35)
  {
    v36 = *(v35 + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request);
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      v38 = v37;
      v39 = v36;
      [v38 endAudio];
    }
  }
}

uint64_t sub_10009E580(void *a1, void (**a2)(void, void), uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v84 = a4;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v85 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v18;
  v88 = v19;
  if (a3)
  {
    v83 = v15;
    swift_errorRetain();
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000078E8(v21, qword_1003D2770);
    swift_errorRetain();
    v22 = a1;
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = -1;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 134218242;
      if (v22)
      {
        v26 = [v23 length];
      }

      *(v27 + 4) = v26;

      *(v27 + 12) = 2112;
      v29 = _convertErrorToNSError(_:)();
      *(v27 + 14) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to translate text of length %ld: %@; resetting conversation", v27, 0x16u);
      sub_100009EBC(v28, &unk_1003AECA0);
    }

    else
    {

      v24 = v23;
    }

    sub_10000A2CC(0, &qword_1003A9C40);
    v49 = static OS_dispatch_queue.main.getter();
    v50 = swift_allocObject();
    v51 = v84;
    *(v50 + 16) = v84;
    *(v50 + 24) = a3;
    v98 = sub_1000A4A14;
    v99 = v50;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_100096948;
    v97 = &unk_100382360;
    v52 = _Block_copy(&aBlock);
    swift_errorRetain();
    v53 = v51;

    v54 = v85;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000A433C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
    v55 = v86;
    v56 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);

    (v83)[1](v55, v56);
    return (*(v87 + 8))(v54, v88);
  }

  else
  {
    v80 = v14;
    v81 = v12;
    v82 = v11;
    v83 = a2;
    v78 = a6;
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    v31 = sub_1000078E8(v30, qword_1003D2770);
    v32 = a5;
    v79 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v77 = a1;
      v36 = v35;
      v37 = swift_slowAlloc();
      aBlock = v37;
      *v36 = 136446210;
      v38 = [v32 uniqueID];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_10028D78C(v39, v41, &aBlock);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "Processing translation handler for request %{public}s", v36, 0xCu);
      sub_100008664(v37);

      a1 = v77;
    }

    v43 = v83;
    v44 = v80;
    v45 = v82;
    v46 = v81;
    if (a1)
    {
      v47 = [a1 string];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (v43)
      {
        v48 = v43;

        v92 = sub_10000A2CC(0, &unk_1003B9ED0);
        v93 = sub_1000819A8(&qword_1003AECC0, &unk_1003B9ED0);
        v91[0] = v48;
      }

      else
      {
        (*(v46 + 16))(v44, v78, v45);
        v92 = type metadata accessor for StoredTranslationResult();
        v93 = sub_1000A433C(&qword_1003AED00, &type metadata accessor for StoredTranslationResult);
        sub_100050D60(v91);
        StoredTranslationResult.init(text:locale:isOffline:romanization:)();
      }

      sub_10000A2CC(0, &qword_1003A9C40);
      v69 = static OS_dispatch_queue.main.getter();
      sub_100031DD8(v91, v90);
      v70 = swift_allocObject();
      v71 = v84;
      *(v70 + 16) = v84;
      sub_100051124(v90, v70 + 24);
      v98 = sub_1000A49C8;
      v99 = v70;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_100096948;
      v97 = &unk_100382310;
      v72 = _Block_copy(&aBlock);
      v73 = v71;

      v74 = v85;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000A433C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
      sub_100005AD4(&unk_1003A9C50);
      sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
      v75 = v86;
      v76 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v72);

      (*(v15 + 8))(v75, v76);
      (*(v87 + 8))(v74, v88);
      return sub_100008664(v91);
    }

    else
    {
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Failed to get text from result, resetting conversation", v60, 2u);
      }

      sub_10000A2CC(0, &qword_1003A9C40);
      v61 = static OS_dispatch_queue.main.getter();
      v62 = swift_allocObject();
      v63 = v84;
      *(v62 + 16) = v84;
      v98 = sub_1000A4958;
      v99 = v62;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_100096948;
      v97 = &unk_1003822C0;
      v64 = _Block_copy(&aBlock);
      v65 = v63;

      v66 = v85;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000A433C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
      sub_100005AD4(&unk_1003A9C50);
      sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
      v67 = v86;
      v68 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v64);

      (*(v15 + 8))(v67, v68);
      return (*(v87 + 8))(v66, v88);
    }
  }
}

void sub_10009F15C()
{
  v0 = _convertErrorToNSError(_:)();
  sub_10009BAC0(0, v0, 0);
}

void sub_10009F1B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData);
  if (v2)
  {
    v4 = *((swift_isaMask & *v2) + 0xE8);
    v5 = v2;
    v4(a2);
  }

  sub_10009CDEC();
}

void sub_10009F248(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

void sub_10009F2F0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v20 = __chkstk_darwin(v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v46 = v16;
    v47 = v18;
    if (a1)
    {
      v30 = v23;
      v44 = v21;
      v45 = v20;
      sub_10000A2CC(0, &qword_1003A9C40);
      v31 = a1;
      v43 = static OS_dispatch_queue.main.getter();
      v32 = swift_allocObject();
      v32[2] = a3;
      v32[3] = a4;
      v32[4] = a5;
      v32[5] = a6;
      v32[6] = a7;
      v32[7] = a8;
      v32[8] = v31;
      aBlock[4] = sub_1000A4320;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100096948;
      aBlock[3] = &unk_100382158;
      v33 = _Block_copy(aBlock);
      v34 = v31;
      v35 = a3;

      v36 = a8;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000A433C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
      sub_100005AD4(&unk_1003A9C50);
      sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
      v37 = v46;
      v38 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = v43;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (v48[1].isa)(v38, v37);
      (*(v44 + 8))(v30, v45);
      return;
    }

    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000078E8(v40, qword_1003D2770);
    v48 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v48, v41, "Failed to get translation result, but there's no error", v42, 2u);
    }

    goto LABEL_6;
  }

  swift_errorRetain();
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000078E8(v24, qword_1003D2770);
  swift_errorRetain();
  v48 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = _convertErrorToNSError(_:)();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v48, v25, "Failed to retranslate text: %@", v26, 0xCu);
    sub_100009EBC(v27, &unk_1003AECA0);

LABEL_6:
    v29 = v48;

    return;
  }
}

uint64_t sub_10009F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v64 = a6;
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v65 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StoredSpeechResult();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v63 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005AD4(&qword_1003AC718);
  __chkstk_darwin(v18 - 8);
  v62 = &v52 - v19;
  v20 = type metadata accessor for SpeechResultOrigin();
  v21 = __chkstk_darwin(v20);
  result = __chkstk_darwin(v21);
  v26 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_session);
  if (v26)
  {
    v52 = v25;
    v53 = v24;
    v60 = &v52 - v23;
    v54 = result;
    v55 = v16;
    v56 = a4;
    v27 = v26;
    swift_getKeyPath();
    swift_getKeyPath();

    v61 = v27;
    static Published.subscript.getter();

    v28 = v68[0];
    v58 = a5;
    v59 = a7;
    v57 = v15;
    if (v68[0] >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v30 = 0;
      v66 = v28 & 0xFFFFFFFFFFFFFF8;
      v67 = v28 & 0xC000000000000001;
      while (1)
      {
        if (v67)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *(v66 + 16))
          {
            goto LABEL_26;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        v34 = a2;
        v35 = a3;
        v36 = [v31 identifier];
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        a3 = v35;
        a2 = v34;
        if (v37 == v34 && v39 == a3)
        {

LABEL_18:

          v42 = [v32 sourceInput];
          v43 = v62;
          if (v42)
          {
            v44 = v42;
            dispatch thunk of AnySpeechResult.value.getter();

            sub_1000085CC(v68, v68[3]);
            dispatch thunk of SpeechResult.origin.getter();
            v45 = v53;
            v46 = v54;
            (*(v53 + 56))(v43, 0, 1, v54);
            sub_100008664(v68);
            v47 = (*(v45 + 48))(v43, 1, v46);
            v48 = v64;
            if (v47 != 1)
            {
              v49 = v60;
              (*(v45 + 32))(v60, v43, v46);
LABEL_24:

              v50 = [v48 sourceLocale];
              static Locale._unconditionallyBridgeFromObjectiveC(_:)();

              (*(v45 + 16))(v52, v49, v46);
              v51 = v63;
              StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
              sub_1000A3BB8(a2, a3, v51, v59, v61);

              (*(v55 + 8))(v51, v57);
              return (*(v45 + 8))(v49, v46);
            }
          }

          else
          {
            v45 = v53;
            v46 = v54;
            (*(v53 + 56))(v62, 1, 1, v54);
            v48 = v64;
          }

          v49 = v60;
          (*(v45 + 104))(v60, enum case for SpeechResultOrigin.text(_:), v46);
          if ((*(v45 + 48))(v43, 1, v46) != 1)
          {
            sub_100009EBC(v43, &qword_1003AC718);
          }

          goto LABEL_24;
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v41)
        {
          goto LABEL_18;
        }

        ++v30;
        if (v33 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:
  }

  return result;
}

uint64_t sub_10009FE88(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1000A479C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100382220;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a2;
  v16 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000A433C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

void sub_1000A0180(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    if (qword_1003A92A0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000078E8(v11, qword_1003D28F0);
    v6 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, v12, "TTS speak request complete", v13, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D28F0);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to speak translation: %@", v8, 0xCu);
    sub_100009EBC(v9, &unk_1003AECA0);

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = [a3 identifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v46)
  {
    if (v45 == v15 && v46 == v17)
    {

      goto LABEL_18;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
LABEL_18:
      swift_getKeyPath();
      swift_getKeyPath();
      v19 = a2;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v45 = 0;
      v46 = 0;
      v20 = v19;
      static Published.subscript.setter();
      if (*&v20[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_stateSubscription])
      {
        if (qword_1003A92A0 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_1000078E8(v21, qword_1003D28F0);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "TTS Voice Activation Detection (VAD) is active", v24, 2u);
        }

        v45 = 0;
        v47 = 0;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000A46F8(&v45, v44);
        v25 = v20;
        static Published.subscript.setter();
        sub_1000968EC(&v45);
      }

      else if (!*&v20[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData])
      {
        if (qword_1003A92A0 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_1000078E8(v40, qword_1003D28F0);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "TTS turn data is nil", v43, 2u);
        }

        sub_10020D144(1);
      }

      return;
    }
  }

  else
  {
  }

  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000078E8(v26, qword_1003D28F0);
  v27 = a2;
  v28 = a3;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v31 = 136446466;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v46)
    {
      v32 = v45;
    }

    else
    {
      v32 = 7104878;
    }

    if (v46)
    {
      v33 = v46;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v34 = sub_10028D78C(v32, v33, v44);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2082;
    v35 = [v28 identifier];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_10028D78C(v36, v38, v44);

    *(v31 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "TTS currently playing is not for the translation. TTS id: %{public}s, translation id: %{public}s", v31, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000A08D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return _swift_task_switch(sub_1000A08F8, 0, 0);
}

uint64_t sub_1000A08F8()
{
  v1 = v0[19];
  v2 = *(v0[18] + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_recordingHelper);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[22] = v4;
  v5 = sub_100005AD4(&unk_1003AECD0);
  *v4 = v0;
  v4[1] = sub_1000A0A0C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000022, 0x80000001002F2D50, sub_1000A46E0, v3, v5);
}

uint64_t sub_1000A0A0C()
{

  return _swift_task_switch(sub_1000A0B24, 0, 0);
}

uint64_t sub_1000A0B24()
{
  if (*(v0 + 128))
  {
    if (qword_1003A92A0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000078E8(v1, qword_1003D28F0);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = _convertErrorToNSError(_:)();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "TTS audio session config failed. Error: %@", v4, 0xCu);
      sub_100009EBC(v5, &unk_1003AECA0);
    }

    v7 = *(v0 + 144);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 136) = 0;
    v8 = v7;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    v9 = v8;
    static Published.subscript.setter();
    *(v0 + 16) = _convertErrorToNSError(_:)();
    *(v0 + 56) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000A46F8(v0 + 16, v0 + 64);
    v10 = v9;
    static Published.subscript.setter();

    sub_1000968EC(v0 + 16);
  }

  else
  {
    if (qword_1003A92A0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000078E8(v11, qword_1003D28F0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "TTS speak request starting", v14, 2u);
    }

    v15 = *(v0 + 160);
    v16 = *(v0 + 144);

    [*(v16 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_translator) translate:v15];
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000A0E74()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000078E8(v8, qword_1003D2890);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Speech activity detected", v11, 2u);
  }

  sub_10000A2CC(0, &qword_1003A9C40);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_1000A5600;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003824F0;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000A433C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v17);
}

uint64_t sub_1000A1208(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData);
  if (v1)
  {
    v2 = result;
    v6[0] = *(result + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData);
    v7 = 2;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000A46F8(v6, &v5);
    v3 = v1;
    v4 = v2;
    static Published.subscript.setter();
    return sub_1000968EC(v6);
  }

  return result;
}

uint64_t sub_1000A12EC(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v2 - 8);
  v77 = v2;
  __chkstk_darwin(v2);
  v75 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v86 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003AED18);
  v9 = __chkstk_darwin(v8 - 8);
  v84 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = &v69 - v11;
  v93 = 0;
  v94 = 0xE000000000000000;
  v70 = a1;
  v12 = [a1 confidences];
  sub_10000A2CC(0, &qword_1003AED20);
  sub_1000A433C(&qword_1003AED28, &type metadata accessor for Locale);
  v87 = v5;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = 0;
  v15 = *(v13 + 64);
  v78 = v13 + 64;
  v80 = v6;
  v81 = v13;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v79 = v6 + 16;
  v85 = (v6 + 32);
  v82 = (v6 + 8);
  if ((v17 & v15) == 0)
  {
LABEL_5:
    if (v19 <= v14 + 1)
    {
      v21 = v14 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    v23 = v84;
    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        v45 = sub_100005AD4(&qword_1003AED30);
        (*(*(v45 - 8) + 56))(v23, 1, 1, v45);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v78 + 8 * v20);
      ++v14;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_18;
  }

  while (1)
  {
    v20 = v14;
LABEL_12:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v24 | (v20 << 6);
    v27 = v80;
    v26 = v81;
    (*(v80 + 16))(v86, *(v81 + 48) + *(v80 + 72) * v25, v87);
    v28 = *(*(v26 + 56) + 8 * v25);
    v29 = sub_100005AD4(&qword_1003AED30);
    v30 = *(v29 + 48);
    v23 = v84;
    (*(v27 + 32))();
    *(v23 + v30) = v28;
    (*(*(v29 - 8) + 56))(v23, 0, 1, v29);
    v31 = v28;
    v22 = v20;
LABEL_13:
    v32 = v83;
    sub_1000A5588(v23, v83);
    v33 = sub_100005AD4(&qword_1003AED30);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
    {
      break;
    }

    v34 = *(v32 + *(v33 + 48));
    v35 = v86;
    v36 = v87;
    (*v85)(v86, v32, v87);
    aBlock._countAndFlagsBits = Locale.identifier.getter();
    aBlock._object = v37;
    v38._countAndFlagsBits = 32;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39 = [v34 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 10;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    String.append(_:)(aBlock);

    (*v82)(v35, v36);
    v14 = v22;
    if (!v18)
    {
      goto LABEL_5;
    }
  }

  if (qword_1003A9250 != -1)
  {
    goto LABEL_23;
  }

LABEL_18:
  v46 = type metadata accessor for Logger();
  sub_1000078E8(v46, qword_1003D2800);
  v47 = v70;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock._countAndFlagsBits = v51;
    *v50 = 67109634;
    *(v50 + 4) = [v47 isConfident];
    *(v50 + 8) = 1024;
    *(v50 + 10) = [v47 isFinal];

    *(v50 + 14) = 2082;
    v52 = [v47 dominantLanguage];
    v53 = v86;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = Locale.ltIdentifier.getter();
    v56 = v55;
    (*v82)(v53, v87);
    v57 = sub_10028D78C(v54, v56, &aBlock._countAndFlagsBits);

    *(v50 + 16) = v57;
    _os_log_impl(&_mh_execute_header, v48, v49, "LID result (confident: %{BOOL}d, final: %{BOOL}d): %{public}s", v50, 0x18u);
    sub_100008664(v51);
  }

  else
  {
  }

  v59 = v76;
  v58 = v77;
  v60 = v75;
  sub_10000A2CC(0, &qword_1003A9C40);
  v61 = static OS_dispatch_queue.main.getter();
  v62 = swift_allocObject();
  v63 = v71;
  *(v62 + 16) = v71;
  *(v62 + 24) = v47;
  v91 = sub_1000A55F8;
  v92 = v62;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v89 = sub_100096948;
  v90 = &unk_1003824A0;
  v64 = _Block_copy(&aBlock);
  v65 = v47;
  v66 = v63;

  v67 = v72;
  static DispatchQoS.unspecified.getter();
  aBlock._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_1000A433C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v64);

  (*(v59 + 8))(v60, v58);
  return (*(v73 + 8))(v67, v74);
}

void sub_1000A1C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData);
  if (v2)
  {
    v4 = *((swift_isaMask & *v2) + 0xD8);
    v5 = v2;
    v4(a2);
  }

  sub_10009CDEC();
}

id sub_1000A1D68(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000078E8(v11, qword_1003D2890);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = &selRef_oneSelectedWithSender_;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v39 = v4;
    v17 = v16;
    aBlock[0] = swift_slowAlloc();
    *v17 = 136446979;
    v18 = [v12 locale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = Locale.ltIdentifier.getter();
    v38 = v2;
    v21 = v20;
    (*(v8 + 8))(v10, v7);
    v22 = sub_10028D78C(v19, v21, aBlock);

    *(v17 + 4) = v22;
    *(v17 + 12) = 1024;
    LODWORD(v22) = [v12 isStable];

    *(v17 + 14) = v22;
    *(v17 + 18) = 1024;
    LODWORD(v22) = [v12 isFinal];

    *(v17 + 20) = v22;
    *(v17 + 24) = 2085;
    v23 = [v12 bestTranscription];
    v24 = [v23 formattedString];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v15 = &selRef_oneSelectedWithSender_;
    v28 = sub_10028D78C(v25, v27, aBlock);
    v2 = v38;

    *(v17 + 26) = v28;
    _os_log_impl(&_mh_execute_header, v13, v14, "Speech result (locale: %{public}s, isStable: %{BOOL}d, final: %{BOOL}d): %{sensitive}s", v17, 0x22u);
    swift_arrayDestroy();

    v4 = v39;
  }

  else
  {
  }

  if (([v12 v15[262]] & 1) != 0 || (result = objc_msgSend(v12, "isFinal"), result))
  {
    sub_10000A2CC(0, &qword_1003A9C40);
    v30 = static OS_dispatch_queue.main.getter();
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    *(v31 + 24) = v12;
    aBlock[4] = sub_1000A5580;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100096948;
    aBlock[3] = &unk_100382450;
    v32 = _Block_copy(aBlock);
    v33 = v12;
    v34 = v2;

    v35 = v40;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000A433C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
    v36 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v44 + 8))(v36, v4);
    return (*(v41 + 8))(v35, v43);
  }

  return result;
}

void sub_1000A2378(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData);
  if (v2)
  {
    v7[3] = sub_10000A2CC(0, &unk_1003B9EE0);
    v7[4] = sub_1000819A8(&qword_1003AED10, &unk_1003B9EE0);
    v7[0] = a2;
    v4 = *((swift_isaMask & *v2) + 0xE0);
    v5 = v2;
    v6 = a2;
    v4(v7);

    sub_100008664(v7);
  }

  sub_10009CDEC();
}

uint64_t sub_1000A24DC(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 translations];
  sub_10000A2CC(0, &qword_1003AED08);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_10017A05C(v10);

  if (v11[2])
  {
    sub_100031DD8((v11 + 4), aBlock);

    sub_1000085CC(aBlock, v50);
    v12 = dispatch thunk of FormattedString.formattedString.getter();
    v14 = v13;
    sub_100008664(aBlock);
  }

  else
  {

    v12 = 0;
    v14 = 0;
  }

  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000078E8(v15, qword_1003D2770);

  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v12;
    v20 = v5;
    v21 = v19;
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v21 = 136446723;
    v22 = [v16 locale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = Locale.ltIdentifier.getter();
    v42 = v2;
    v25 = v24;
    (*(v6 + 8))(v8, v20);
    v26 = sub_10028D78C(v23, v25, aBlock);

    *(v21 + 4) = v26;
    *(v21 + 12) = 1024;
    LODWORD(v26) = [v16 isFinal];

    *(v21 + 14) = v26;
    *(v21 + 18) = 2085;
    if (v14)
    {
      v27 = v40;
    }

    else
    {
      v27 = 7104878;
    }

    if (v14)
    {
      v28 = v14;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_10028D78C(v27, v28, aBlock);

    *(v21 + 20) = v29;
    v2 = v42;
    _os_log_impl(&_mh_execute_header, v17, v18, "Got translation result; locale: %{public}s; final: %{BOOL}d; formattedResult: %{sensitive}s", v21, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10000A2CC(0, &qword_1003A9C40);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = swift_allocObject();
  v32 = v43;
  *(v31 + 16) = v43;
  *(v31 + 24) = v16;
  v51 = sub_1000A5578;
  v52 = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  v50 = &unk_100382400;
  v33 = _Block_copy(aBlock);
  v34 = v16;
  v35 = v32;

  v36 = v44;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000A433C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  v37 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v48 + 8))(v37, v2);
  return (*(v45 + 8))(v36, v47);
}

void sub_1000A2B28(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData);
  if (v2)
  {
    v7[3] = sub_10000A2CC(0, &unk_1003B9ED0);
    v7[4] = sub_1000819A8(&qword_1003AECC0, &unk_1003B9ED0);
    v7[0] = a2;
    v4 = *((swift_isaMask & *v2) + 0xE8);
    v5 = v2;
    v6 = a2;
    v4(v7);

    sub_100008664(v7);
  }

  sub_10009CDEC();
}

uint64_t sub_1000A2C8C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_1000A5570;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003823B0;
  v11 = _Block_copy(aBlock);
  swift_errorRetain();
  v12 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000A433C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

void sub_1000A2F78(uint64_t a1)
{
  if (a1)
  {
    v1 = _convertErrorToNSError(_:)();
  }

  else
  {
    v1 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *&v16[25] = *&v18[9];
  *v16 = v17;
  *&v16[16] = *v18;
  if (v18[24] == 4)
  {
    sub_1000968EC(v16);
  }

  else if (v18[24] != 5 || (*v16 & 0xFFFFFFFFFFFFFFFELL) != 2 || (v2 = vorrq_s8(*&v16[8], *&v16[24]), *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL))))
  {
    sub_1000968EC(v16);
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2770);
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v1;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "Translation finished with error: %@", v7, 0xCu);
      sub_100009EBC(v8, &unk_1003AECA0);
    }

    sub_10009BAC0(0, v1, 0);
    goto LABEL_19;
  }

  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000078E8(v10, qword_1003D2770);
  v11 = v1;
  v4 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v11;
    *v14 = v1;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v4, v12, "Translation finished with error, but it's not a final translation: %@", v13, 0xCu);
    sub_100009EBC(v14, &unk_1003AECA0);

    v4 = v15;
  }

  else
  {
  }

LABEL_19:
}

unint64_t sub_1000A33B0()
{
  result = qword_1003AEC80;
  if (!qword_1003AEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEC80);
  }

  return result;
}

unint64_t sub_1000A3408()
{
  result = qword_1003AEC88;
  if (!qword_1003AEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEC88);
  }

  return result;
}

unint64_t sub_1000A3460()
{
  result = qword_1003AEC90;
  if (!qword_1003AEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEC90);
  }

  return result;
}

unint64_t sub_1000A34B8()
{
  result = qword_1003AEC98;
  if (!qword_1003AEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEC98);
  }

  return result;
}

void sub_1000A350C(_BYTE *a1, void **a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    isa = 0;
  }

  else
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:isa forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t sub_1000A35A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1000A3624(uint64_t a1, void **a2)
{
  sub_1000A46F8(a1, v7);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000A46F8(v7, &v6);
  v4 = v3;
  static Published.subscript.setter();
  return sub_1000968EC(v7);
}

double sub_1000A36AC@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1000A372C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (!*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000A37EC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000A386C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_1000A38E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t (*sub_1000A39A8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000A57BC;
  }

  __break(1u);
  return result;
}

void (*sub_1000A3A28(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000A3AA8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000A3AB0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1000A57C0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000A3B30(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1000A3BB0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A3BB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for StoredSpeechResult();
  v52[3] = v10;
  v52[4] = sub_1000A433C(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult);
  v11 = sub_100050D60(v52);
  (*(*(v10 - 8) + 16))(v11, a3, v10);
  v51[3] = sub_10000A2CC(0, &unk_1003B9ED0);
  v51[4] = sub_1000819A8(&qword_1003AECC0, &unk_1003B9ED0);
  v51[0] = a4;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a4;
  static Published.subscript.getter();

  v13 = v50[0];
  v48 = a5;
  if (v50[0] >> 62)
  {
LABEL_44:
    v49 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = v50[0] & 0xFFFFFFFFFFFFFF8;
    v14 = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v13 & 0xC000000000000001;
  v13 += 32;
  v16 = &selRef_oneSelectedWithSender_;
  while (1)
  {
    if (!v14)
    {

LABEL_40:
      sub_100008664(v52);
      return sub_100008664(v51);
    }

    if (__OFSUB__(v14--, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v15)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (v14 >= *(v49 + 16))
      {
        goto LABEL_43;
      }

      v18 = *(v13 + 8 * v14);
    }

    v19 = v18;
    v20 = v16;
    v21 = [v18 v16[99]];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == a1 && v24 == a2)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v16 = v20;
    if (v26)
    {
      goto LABEL_19;
    }
  }

LABEL_19:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v50[0] & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_23;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v14 >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v28 = *(v50[0] + 8 * v14 + 32);
LABEL_23:
  v29 = v28;

  sub_100031DD8(v52, v50);
  dispatch thunk of PersistedTranslation.speechResult.setter();
  sub_100031DD8(v51, v50);
  dispatch thunk of PersistedTranslation.translationResult.setter();
  sub_100031DD8(v48 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, v50);
  sub_1000085CC(v50, v50[3]);
  dispatch thunk of TranslationStore.save()();
  sub_100008664(v50);
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v29;
  v31 = static Published.subscript.modify();
  v33 = v32;
  v34 = *v32;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v33 = v34;
  if (!result || (v34 & 0x8000000000000000) != 0 || (v34 & 0x4000000000000000) != 0)
  {
    result = sub_1000A38E0(v34);
    v34 = result;
    *v33 = result;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v14 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20);
    *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20) = v30;

    v31(v50, 0);

    v36 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation;
    v37 = *(v48 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation);
    if (v37)
    {
      v38 = [v37 v20[99]];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = [v30 v20[99]];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (v41)
    {
      if (v39 == v43 && v41 == v45)
      {

        goto LABEL_38;
      }

      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v46)
      {
LABEL_38:
        v47 = *(v48 + v36);
        *(v48 + v36) = v30;

        goto LABEL_40;
      }
    }

    else
    {
    }

    goto LABEL_40;
  }

LABEL_49:
  __break(1u);
  return result;
}

BOOL sub_1000A410C()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = MCFeatureAssistantProfanityFilterForced;
    v3 = [v1 effectiveBoolValueForSetting:v2];

    return v3 == 1;
  }

  else
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000078E8(v5, qword_1003D2890);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "MCProfileConnection cannot be established", v8, 2u);
    }

    return 0;
  }
}

uint64_t sub_1000A4250()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A42B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A42C8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000A433C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A4384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1000A43D4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v7 = static Locale.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    return dispatch thunk of PersistedTranslation.displaySourceText.getter();
  }

  v10 = dispatch thunk of PersistedTranslation.displayText.getter();
  if (sub_1000A410C())
  {
    v11 = objc_opt_self();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v11 stringReplacingRedactionsWithBeepMarker:v12];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v10;
}

uint64_t sub_1000A4588()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A45D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A4618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B16C;

  return sub_1000A08D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000A4754()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A47A8()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A4874(void *a1, void (**a2)(void, void), uint64_t a3)
{
  v7 = *(type metadata accessor for Locale() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10009E580(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1000A4920()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4988()
{
  sub_100008664(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A49D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000A4A1C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (!v67)
  {
    sub_100009EBC(aBlock, &unk_1003AB9C0);
    return;
  }

  v65 = v5;
  sub_10000A2CC(0, &qword_1003AED38);
  if (swift_dynamicCast())
  {
    v63 = v9;
    v12 = v72;
    v13 = Notification.userInfo.getter();
    if (!v13)
    {

      return;
    }

    v14 = v13;
    v64 = v12;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v15;
    AnyHashable.init<A>(_:)();
    if (!*(v14 + 16) || (v16 = sub_10028DF68(aBlock), (v17 & 1) == 0))
    {

      sub_100078028(aBlock);
      return;
    }

    sub_10000A37C(*(v14 + 56) + 32 * v16, &v72);
    sub_100078028(aBlock);

    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v59 = v1;
    v61 = [v64 currentRoute];
    v18 = swift_allocObject();
    v62 = v18;
    *(v18 + 16) = &_swiftEmptyDictionarySingleton;
    v19 = (v18 + 16);
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = &_swiftEmptyDictionarySingleton;
    *v19 = 0x8000000000000000;
    sub_10029163C(isa, 0x6E6F73616572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v60 = v19;
    *v19 = aBlock[0];
    v22 = [v61 outputs];
    v23 = sub_10000A2CC(0, &unk_1003AED40);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v24 >> 62)
    {
      v25 = &selRef_oneSelectedWithSender_;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v25 = &selRef_oneSelectedWithSender_;
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_9:
        v58 = v23;
        if ((v24 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_37;
          }

          v26 = *(v24 + 32);
        }

        v27 = v26;

        v28 = [v27 v25[277]];
        v29 = v60;
        v30 = *v60;
        v31 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v30;
        *v29 = 0x8000000000000000;
        sub_10029163C(v28, 0x74757074756FLL, 0xE600000000000000, v31);
        *v29 = aBlock[0];

LABEL_19:
        v32 = [v61 inputs];
        v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v33 >> 62)
        {
          v41 = _CocoaArrayWrapper.endIndex.getter();
          v34 = v62;
          if (v41)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v34 = v62;
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_21:
            if ((v33 & 0xC000000000000001) != 0)
            {
              v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v35 = &selRef_oneSelectedWithSender_;
              goto LABEL_24;
            }

            v35 = &selRef_oneSelectedWithSender_;
            if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v36 = *(v33 + 32);
LABEL_24:

              v37 = [v36 v35[277]];
              v38 = v60;
              v39 = *v60;
              v40 = swift_isUniquelyReferenced_nonNull_native();
              aBlock[0] = v39;
              *v38 = 0x8000000000000000;
              sub_10029163C(v37, 0x7475706E69, 0xE500000000000000, v40);
              *v38 = aBlock[0];

              v34 = v62;
LABEL_27:
              if (qword_1003A92A0 != -1)
              {
                swift_once();
              }

              v42 = type metadata accessor for Logger();
              sub_1000078E8(v42, qword_1003D28F0);

              v43 = Logger.logObject.getter();
              v44 = static os_log_type_t.info.getter();
              v58 = v43;
              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                v57 = v44;
                v46 = v45;
                v56 = swift_slowAlloc();
                aBlock[0] = v56;
                *v46 = 136446210;
                swift_beginAccess();

                sub_10000A2CC(0, &qword_1003B2A60);
                v47 = Dictionary.description.getter();
                v49 = v48;

                v50 = sub_10028D78C(v47, v49, aBlock);

                *(v46 + 4) = v50;
                v34 = v62;
                v51 = v58;
                _os_log_impl(&_mh_execute_header, v58, v57, "Audio route change %{public}s", v46, 0xCu);
                sub_100008664(v56);
              }

              else
              {
              }

              sub_10000A2CC(0, &qword_1003A9C40);
              v52 = v63;
              (*(v63 + 104))(v11, enum case for DispatchQoS.QoSClass.utility(_:), v8);
              v62 = static OS_dispatch_queue.global(qos:)();
              (*(v52 + 8))(v11, v8);
              v68 = sub_1000A5690;
              v69 = v34;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100096948;
              v67 = &unk_100382590;
              v53 = _Block_copy(aBlock);

              static DispatchQoS.unspecified.getter();
              v70 = _swiftEmptyArrayStorage;
              sub_1000A433C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
              sub_100005AD4(&unk_1003A9C50);
              sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v54 = v62;
              OS_dispatch_queue.async(group:qos:flags:execute:)();

              _Block_release(v53);
              (*(v59 + 8))(v3, v0);
              (*(v65 + 8))(v7, v4);

              return;
            }

LABEL_37:
            __break(1u);
            return;
          }
        }

        goto LABEL_27;
      }
    }

    goto LABEL_19;
  }
}

void sub_1000A538C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000078E8(v8, qword_1003D2890);

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136643075;
    *(v10 + 4) = sub_10028D78C(a1, a2, &v12);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10028D78C(a3, a4, &v12);
    _os_log_impl(&_mh_execute_header, oslog, v9, "Preparing accessibility announcement notification using text: '%{sensitive}s' for locale: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000A5530()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A5588(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AED18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A5658()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000A5698(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v3) = [v3 BOOLForKey:v4];

  *a2 = v3;
}

uint64_t sub_1000A5708(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A580C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1000A5854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A58DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v66 = a3;
  v64 = sub_100005AD4(&qword_1003AEDA8);
  v4 = __chkstk_darwin(v64);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v56 - v7;
  v9 = sub_100005AD4(&qword_1003AEDB0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v61 = &v56 - v11;
  v12 = sub_100005AD4(&qword_1003AEDB8);
  v13 = __chkstk_darwin(v12 - 8);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v63 = &v56 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v56 - v18;
  __chkstk_darwin(v17);
  v21 = &v56 - v20;
  v22 = *a1;
  v67 = v10;
  if ((v22 & 1) != 0 || *(a1 + 24) != 1)
  {
    v35 = *(v10 + 56);
    v35(&v56 - v20, 1, 1, v9);
  }

  else
  {
    v23 = *(a1 + 8);
    v24 = *(a1 + 16);
    v25 = *(a1 + 1);
    v26 = *(a1 + 2);
    v57 = *(a1 + 40);
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    v78 = *(a1 + 96);
    v70 = v25;
    v71 = v26;
    v72 = v23;
    v73 = v24;
    v58 = v19;
    v56 = v24;
    v74 = v57;
    v75 = v27;
    v76 = v28;
    v77 = v78;
    v68 = *(a1 + 48);
    v69 = *(a1 + 64);

    v19 = v58;

    sub_100005AD4(&qword_1003AEDD0);
    v60 = v6;
    Binding.projectedValue.getter();
    v29 = swift_allocObject();
    v59 = v9;
    v30 = *(a1 + 80);
    *(v29 + 80) = *(a1 + 64);
    *(v29 + 96) = v30;
    *(v29 + 112) = *(a1 + 96);
    v31 = *(a1 + 16);
    *(v29 + 16) = *a1;
    *(v29 + 32) = v31;
    v32 = *(a1 + 48);
    *(v29 + 48) = *(a1 + 32);
    *(v29 + 64) = v32;
    sub_100086B40(a1, &v68);
    sub_1000A628C();
    v33 = v61;
    View.bindGeometry(to:reader:)();
    v6 = v60;

    v9 = v59;

    v34 = v67;
    (*(v67 + 32))(v21, v33, v9);
    v35 = *(v34 + 56);
    v35(v21, 0, 1, v9);
  }

  v36 = sub_100005AD4(&qword_1003AEDC0);
  (*(*(v36 - 8) + 16))(v8, v65, v36);
  *&v8[*(v64 + 36)] = 0x3FF0000000000000;
  if (v22 & 1) != 0 || (*(a1 + 24))
  {
    v37 = v19;
    v38 = 1;
    v39 = v9;
  }

  else
  {
    v40 = *(a1 + 8);
    v41 = *(a1 + 16);
    v42 = *(a1 + 1);
    v43 = *(a1 + 2);
    v65 = *(a1 + 40);
    v44 = *(a1 + 80);
    v45 = *(a1 + 88);
    v78 = *(a1 + 96);
    v70 = v42;
    v71 = v43;
    v72 = v40;
    v73 = v41;
    v64 = v41;
    v74 = v65;
    v75 = v44;
    v76 = v45;
    v77 = v78;
    v68 = *(a1 + 48);
    v69 = *(a1 + 64);

    sub_100005AD4(&qword_1003AEDD0);
    v60 = v6;
    Binding.projectedValue.getter();
    v46 = swift_allocObject();
    v47 = *(a1 + 80);
    *(v46 + 80) = *(a1 + 64);
    *(v46 + 96) = v47;
    *(v46 + 112) = *(a1 + 96);
    v48 = *(a1 + 16);
    *(v46 + 16) = *a1;
    *(v46 + 32) = v48;
    v49 = *(a1 + 48);
    *(v46 + 48) = *(a1 + 32);
    *(v46 + 64) = v49;
    sub_100086B40(a1, &v68);
    sub_1000A628C();
    v50 = v61;
    View.bindGeometry(to:reader:)();
    v6 = v60;

    (*(v67 + 32))(v19, v50, v9);
    v37 = v19;
    v38 = 0;
    v39 = v9;
  }

  v35(v37, v38, 1, v39);
  v51 = v63;
  sub_1000A60A8(v21, v63);
  sub_1000A6118(v8, v6);
  v52 = v62;
  sub_1000A60A8(v19, v62);
  v53 = v66;
  sub_1000A60A8(v51, v66);
  v54 = sub_100005AD4(&qword_1003AEDC8);
  sub_1000A6118(v6, v53 + *(v54 + 48));
  sub_1000A60A8(v52, v53 + *(v54 + 64));
  sub_1000A6188(v19);
  sub_1000A61F0(v8);
  sub_1000A6188(v21);
  sub_1000A6188(v52);
  sub_1000A61F0(v6);
  return sub_1000A6188(v51);
}

uint64_t sub_1000A5FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 80);
  v12 = *(v2 + 64);
  v13 = v5;
  v14 = *(v2 + 96);
  v6 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v6;
  v7 = *(v2 + 48);
  v11[2] = *(v2 + 32);
  v11[3] = v7;
  if (qword_1003A91D8 != -1)
  {
    swift_once();
  }

  v8 = *(&v12 + 1);
  *a2 = qword_1003D2580;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  v9 = sub_100005AD4(&qword_1003AEDA0);
  return sub_1000A58DC(v11, a1, a2 + *(v9 + 44));
}

uint64_t sub_1000A60A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AEDB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A6118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AEDA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A6188(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AEDB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A61F0(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AEDA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A628C()
{
  result = qword_1003AEDD8;
  if (!qword_1003AEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEDD8);
  }

  return result;
}

uint64_t sub_1000A62E0()
{

  return _swift_deallocObject(v0, 113, 7);
}

unint64_t sub_1000A6334()
{
  result = qword_1003AEDE0;
  if (!qword_1003AEDE0)
  {
    sub_100005EA8(&qword_1003AEDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEDE0);
  }

  return result;
}

uint64_t sub_1000A63A0(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 4)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1000A63BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A63F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000A6444(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1000A647C()
{
  sub_1000A46F8(v0, &v2);
  if (v7 > 2u)
  {
    if (v7 == 3)
    {
      sub_100008664(&v2);
      return 0x74616C736E617254;
    }

    else if (v7 == 4)
    {
      sub_1000968EC(&v2);
      return 1701736260;
    }

    else if (v5 | v6 | v2 | v4 | v3)
    {
      result = 0xD000000000000012;
      if (v2 == 1 && !(v5 | v6 | v4 | v3))
      {
        return 0xD000000000000019;
      }
    }

    else
    {
      return 0x64657472617453;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      sub_1000968EC(&v2);
      return 0xD00000000000001ELL;
    }

    else
    {
      sub_1000968EC(&v2);
      return 0x6E696E657473694CLL;
    }
  }

  else
  {
    sub_1000968EC(&v2);
    return 0x696E4920656C6449;
  }

  return result;
}

uint64_t sub_1000A6610(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_lid;
  swift_beginAccess();
  v5 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_1000A6730(void *a1, uint64_t *a2, uint64_t (*a3)(BOOL, unint64_t, uint64_t, uint64_t), void (*a4)(unint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = sub_1000085CC(a1, v8);
  return sub_1000A9224(v10, v4, v8, v9, a2, a3, a4);
}

uint64_t sub_1000A6790()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_completion);
  if (v1)
  {
    return v1(v0);
  }

  return result;
}

uint64_t sub_1000A67D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request);
  if (([v3 autodetectLanguage] & 1) == 0)
  {
    v11 = [v3 localePair];
    v12 = [v11 sourceLocale];

    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for Locale();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 0, 1, v13);
  }

  v4 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_lid;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_15:
    v15 = type metadata accessor for Locale();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  v7 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_19:

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v5 + 8 * v7 + 32);
LABEL_9:
    if ([v8 isFinal])
    {
      v9 = [v8 dominantLanguage];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = type metadata accessor for Locale();
      return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A6A34()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A67D4(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100009EBC(v4, &qword_1003AFCE0);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
LABEL_7:
    sub_100009EBC(&v26, &unk_1003AECE0);
    v16 = 1;
    goto LABEL_8;
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_speech;
  v10 = swift_beginAccess();
  v11 = *(v1 + v9);
  __chkstk_darwin(v10);
  *(&v25 - 2) = v8;

  sub_10024434C(sub_1000A9584, v11, &v26);

  (*(v6 + 8))(v8, v5);
  if (!*(&v27 + 1))
  {
    goto LABEL_7;
  }

  sub_1000085CC(&v26, *(&v27 + 1));
  v12 = dispatch thunk of FormattedString.formattedString.getter();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  v16 = v15 == 0;
  sub_100008664(&v26);
LABEL_8:
  v17 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_lid;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (v18 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v20 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v18 + 8 * v20 + 32);
      if (v16)
      {
LABEL_15:

        return 0;
      }

      goto LABEL_20;
    }

    __break(1u);
    return result;
  }

  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();

  v21 = v22;
  if (v16)
  {
    goto LABEL_15;
  }

LABEL_20:
  v23 = v21;
  v24 = [v21 isConfident];

  return v24 ^ 1;
}

uint64_t sub_1000A6DA4(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  dispatch thunk of AnnotatedResult.locale.getter();
  LOBYTE(a1) = static Locale.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

uint64_t sub_1000A6EB4(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  if (dispatch thunk of SpeechResult.isFinal.getter())
  {
    sub_1000085CC(a1, a1[3]);
    dispatch thunk of AnnotatedResult.locale.getter();
    v6 = static Locale.== infix(_:_:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1000A6FF8(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  dispatch thunk of TranslationResult.locale.getter();
  LOBYTE(a1) = static Locale.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

uint64_t sub_1000A7108@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  sub_1000A67D4(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100009EBC(v6, &qword_1003AFCE0);
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
LABEL_8:
    result = sub_100009EBC(&v44, &unk_1003AECE0);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v42 = v17;
  v41 = *(v8 + 32);
  v41(v19, v6, v7);
  v20 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_speech;
  v21 = swift_beginAccess();
  v43 = a1;
  v22 = *(v2 + v20);
  __chkstk_darwin(v21);
  *(&v38 - 2) = v19;

  sub_10024434C(sub_1000A4900, v22, &v44);

  a1 = v43;
  v23 = *(v8 + 8);
  v23(v19, v7);
  if (!*(&v45 + 1))
  {
    goto LABEL_8;
  }

  v38 = 0;
  sub_100051DB8(&v44, v47);
  v39 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request);
  v24 = [v39 localePair];
  sub_1000085CC(v47, v47[3]);
  dispatch thunk of AnnotatedResult.locale.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v40 = v23;
  v23(v14, v7);
  v26 = [v24 oppositeToLocale:isa];

  if (v26)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v42;
    v41(v42, v11, v7);
    v28 = [v39 localePair];
    v29 = [v28 isPassthrough];

    v30 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_translation;
    v31 = v43;
    if (v29)
    {
      swift_beginAccess();
      v32 = *(v2 + v30);
      v33 = *(v32 + 16);
      if (v33)
      {
        sub_100031DD8(v32 + 40 * v33 - 8, v31);
      }

      else
      {
        *(v31 + 32) = 0;
        *v31 = 0u;
        *(v31 + 16) = 0u;
      }

      v40(v42, v7);
    }

    else
    {
      v36 = swift_beginAccess();
      v37 = *(v2 + v30);
      __chkstk_darwin(v36);
      *(&v38 - 2) = v27;

      sub_10024434C(sub_1000A9564, v37, v31);

      v40(v27, v7);
    }
  }

  else
  {
    v35 = v43;
    *(v43 + 32) = 0;
    *v35 = 0u;
    v35[1] = 0u;
  }

  return sub_100008664(v47);
}

uint64_t sub_1000A75DC(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  if (dispatch thunk of TranslationResult.isFinal.getter())
  {
    sub_1000085CC(a1, a1[3]);
    dispatch thunk of TranslationResult.locale.getter();
    v6 = static Locale.== infix(_:_:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1000A780C(void *a1)
{
  v2 = v1;
  v18 = a1;
  v3 = sub_100005AD4(&qword_1003B5130);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator10SpeechTurn_instrumentation);
  v10 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstLID;
  swift_beginAccess();
  sub_10001F620(v9 + v10, v8, &qword_1003B5130);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  sub_100009EBC(v8, &qword_1003B5130);
  if (v13 == 1)
  {
    Date.init()();
    (*(v12 + 56))(v6, 0, 1, v11);
    swift_beginAccess();
    sub_10003BD84(v6, v9 + v10, &qword_1003B5130);
    swift_endAccess();
  }

  v14 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_lid;
  swift_beginAccess();
  v15 = v18;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_1000A7AD8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(BOOL, unint64_t, uint64_t, uint64_t), void (*a5)(unint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v8 = sub_100005AD4(&qword_1003B5130);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v23 = v5;
  v14 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator10SpeechTurn_instrumentation);
  v15 = *a2;
  swift_beginAccess();
  sub_10001F620(v14 + v15, v13, &qword_1003B5130);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_100009EBC(v13, &qword_1003B5130);
  if (v18 == 1)
  {
    Date.init()();
    (*(v17 + 56))(v11, 0, 1, v16);
    swift_beginAccess();
    sub_10003BD84(v11, v14 + v15, &qword_1003B5130);
    swift_endAccess();
  }

  v19 = a1[3];
  v20 = a1[4];
  v21 = sub_1000085CC(a1, v19);
  return sub_1000A9224(v21, v23, v19, v20, v24, v25, v26);
}

uint64_t sub_1000A7CD4()
{
  v1 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1000A8380(v3);
  result = sub_100009EBC(v3, &qword_1003AFCE0);
  v6 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_completion);
  if (v6)
  {
    return v6(v0);
  }

  return result;
}

uint64_t sub_1000A7DD0()
{
  v1 = sub_100005AD4(&qword_1003B5130);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v13[-v5];
  v7 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator10SpeechTurn_instrumentation);
  v8 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstTTS;
  swift_beginAccess();
  sub_10001F620(v7 + v8, v6, &qword_1003B5130);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  result = sub_100009EBC(v6, &qword_1003B5130);
  if (v11 == 1)
  {
    Date.init()();
    (*(v10 + 56))(v4, 0, 1, v9);
    swift_beginAccess();
    sub_10003BD84(v4, v7 + v8, &qword_1003B5130);
    return swift_endAccess();
  }

  return result;
}

void sub_1000A7F9C(uint64_t a1)
{
  v3 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - v12;
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  sub_10001F620(a1, v5, &qword_1003AFCE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100009EBC(v5, &qword_1003AFCE0);
    sub_1000A7108(v27);
    if (v28)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_100009EBC(v27, &unk_1003B9EC0);
    return;
  }

  v16 = *(v7 + 32);
  v16(v15, v5, v6);
  v26 = v1;
  v17 = [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request) localePair];
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v19 = [v17 oppositeToLocale:isa];

  if (v19)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v16(v13, v10, v6);
    v20 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_translation;
    v21 = v26;
    v22 = swift_beginAccess();
    v23 = *(v21 + v20);
    __chkstk_darwin(v22);
    *(&v25 - 2) = v13;

    sub_10024434C(sub_1000A5630, v23, v27);

    v24 = *(v7 + 8);
    v24(v15, v6);
    v24(v13, v6);
    if (v28)
    {
LABEL_6:
      sub_100005AD4(&qword_1003AC710);
      sub_10000A2CC(0, &unk_1003B9ED0);
      swift_dynamicCast();
      return;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1000A8380(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AFCE0);
  v5 = __chkstk_darwin(v4 - 8);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v55 - v7;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000A8B8C();
  v12 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator10SpeechTurn_instrumentation);
  v13 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request);
  v14 = [v13 localePair];
  v15 = *&v12[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_localePair];
  *&v12[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_localePair] = v14;

  v16 = [v13 censorSpeech];
  v12[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_censorSpeech] = v16;
  v59 = v9;
  v56 = *(v9 + 48);
  v17 = v56(a1, 1, v8) != 1;
  v12[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_lidTriggered] = v17;
  sub_10000A2CC(0, &qword_1003A9B80);
  v18 = static NSUserDefaults.translationGroupDefaults.getter();
  v19 = NSUserDefaults.onDeviceOnly.getter();

  v12[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_onDeviceModeEnabled] = v19 & 1;
  v57 = a1;
  sub_1000A7F9C(a1);
  if (!v20)
  {
    v37 = v59;
    v36 = v60;
    goto LABEL_33;
  }

  v21 = v20;
  v22 = [v20 route] == 1;
  v12[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_offline] = v22;
  aBlock[0] = v21;
  sub_10000A2CC(0, &unk_1003B9ED0);
  sub_1000A94FC();
  v12[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_lowQualityMT] = TranslationResult.isLowConfidence.getter() & 1;
  v23 = [v21 translations];
  sub_10000A2CC(0, &qword_1003AED08);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_20:

    goto LABEL_24;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_20;
  }

LABEL_4:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_41;
    }

    v25 = *(v24 + 32);
  }

  v23 = v25;

  v26 = [v23 statistics];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 inputTokenCount];
    *&v12[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_inputTokenCount] = v28;
    v29 = [v27 inputSubtokenCount];

    *&v12[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_inputSubtokenCount] = v29;
  }

  v30 = [v23 senses];
  sub_10000A2CC(0, &qword_1003AEE80);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v31 >> 62))
  {
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_23:

    goto LABEL_24;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((v31 & 0xC000000000000001) == 0)
  {
    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v32 = *(v31 + 32);
    goto LABEL_14;
  }

LABEL_41:
  v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v33 = v32;

  v34 = [v33 isPhrasebookMatch];

  if (v34)
  {
    v35 = &OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_nBestDisplay;
  }

  else
  {
    v35 = &OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_senseDisambiguation;
  }

  v12[*v35] = 1;
LABEL_24:
  if ([v21 route] == 1)
  {
    isa = v60;
    v60 = 0;
  }

  else
  {
    v39 = v60;
    if (!v60)
    {
      v60 = 0;
      v41 = &selRef_oneSelectedWithSender_;
      goto LABEL_29;
    }

    v40 = [v21 locale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v59 + 8))(v11, v8);
    [v39 setTargetLocale:isa];
  }

  v41 = &selRef_oneSelectedWithSender_;

LABEL_29:
  v42 = [v13 v41[244]];
  v43 = [v21 locale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = Locale._bridgeToObjectiveC()().super.isa;
  v37 = v59;
  (*(v59 + 8))(v11, v8);
  v45 = [v42 oppositeToLocale:v44];

  if (v45)
  {
    v46 = v55;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = 0;
    v36 = v60;
  }

  else
  {
    v47 = 1;
    v36 = v60;
    v46 = v55;
  }

  (*(v37 + 56))(v46, v47, 1, v8);
  v48 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_sourceLocale;
  swift_beginAccess();
  sub_10003BD84(v46, &v12[v48], &qword_1003AFCE0);
  swift_endAccess();
LABEL_33:
  v49 = String._bridgeToObjectiveC()();
  v50 = swift_allocObject();
  *(v50 + 16) = v12;
  aBlock[4] = sub_1000A94DC;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100241654;
  aBlock[3] = &unk_100382770;
  v51 = _Block_copy(aBlock);
  v52 = v12;

  AnalyticsSendEventLazy();
  _Block_release(v51);

  if (v36)
  {
    v53 = v58;
    sub_10001F620(v57, v58, &qword_1003AFCE0);
    if (v56(v53, 1, v8) == 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = Locale._bridgeToObjectiveC()().super.isa;
      (*(v37 + 8))(v53, v8);
    }

    [v36 setSelectedLocale:v54];

    [*(v2 + OBJC_IVAR____TtC17SequoiaTranslator10SpeechTurn_translator) log:v36];
  }
}

uint64_t sub_1000A8B8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request);
  if (![v1 autodetectLanguage] || (objc_msgSend(v1, "forcedOfflineTranslation") & 1) != 0)
  {
    return 0;
  }

  v2 = [objc_allocWithZone(_LTSpeechLIDLoggingRequest) init];
  v3 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_lid;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_18:

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_13;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v4 + 8 * v6 + 32);
LABEL_13:
    [v2 setLidResult:v7];

    v8 = [v1 uniqueID];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v2 setRequestID:v8];

    v9 = [v1 sessionID];
    [v2 setConversationID:v9];

    v10 = [v1 localePair];
    [v2 setLocalePair:v10];

    return v2;
  }

  __break(1u);
  return result;
}

void sub_1000A8D98()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator10SpeechTurn_translator);
}

id sub_1000A8DF0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000A8F00()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0xD000000000000018;
  v37 = 0x80000001002F2FD0;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_speech;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v30 = v3;
    v31 = v1;
    v9 = v7 + 32;
    v10 = (v3 + 8);
    v29 = v7;

    do
    {
      sub_100031DD8(v9, v34);
      sub_1000085CC(v34, v35);
      dispatch thunk of AnnotatedResult.locale.getter();
      sub_100008664(v34);
      v11 = Locale.ltIdentifier.getter();
      v13 = v12;
      (*v10)(v5, v2);
      v33._countAndFlagsBits = 9;
      v33._object = 0xE100000000000000;
      v14._countAndFlagsBits = v11;
      v14._object = v13;
      String.append(_:)(v14);

      v15._countAndFlagsBits = 10;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);

      String.append(_:)(v33);

      v9 += 40;
      --v8;
    }

    while (v8);

    v3 = v30;
    v1 = v31;
  }

  v16._countAndFlagsBits = 171594829;
  v16._object = 0xE400000000000000;
  String.append(_:)(v16);
  v17 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_translation;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 32;
    v21 = (v3 + 8);
    v31 = *(v1 + v17);

    do
    {
      sub_100031DD8(v20, v34);
      sub_1000085CC(v34, v35);
      dispatch thunk of TranslationResult.locale.getter();
      sub_100008664(v34);
      v22 = Locale.ltIdentifier.getter();
      v24 = v23;
      (*v21)(v5, v2);
      v32._countAndFlagsBits = 9;
      v32._object = 0xE100000000000000;
      v25._countAndFlagsBits = v22;
      v25._object = v24;
      String.append(_:)(v25);

      v26._countAndFlagsBits = 10;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);

      String.append(_:)(v32);

      v20 += 40;
      --v19;
    }

    while (v19);
  }

  v27._countAndFlagsBits = 2601;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  return v36;
}

uint64_t sub_1000A9224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(BOOL, unint64_t, uint64_t, uint64_t), void (*a7)(unint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v25 = a4;
  v26 = a7;
  v11 = *(a3 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v17 = *(v11 + 16);
  v17(&v24 - v15);
  v18 = *a5;
  swift_beginAccess();
  v19 = *(a2 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v18) = v19;
  v24 = a6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = a6(0, *(v19 + 16) + 1, 1, v19);
    *(a2 + v18) = v19;
  }

  v22 = *(v19 + 16);
  v21 = *(v19 + 24);
  if (v22 >= v21 >> 1)
  {
    v19 = v24(v21 > 1, v22 + 1, 1, v19);
    *(a2 + v18) = v19;
  }

  (v17)(v14, v16, a3);
  v26(v22, v14, a2 + v18, a3, v25);
  *(a2 + v18) = v19;
  swift_endAccess();
  return (*(v11 + 8))(v16, a3);
}

uint64_t sub_1000A940C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100050D60(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100051DB8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1000A94A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A94E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000A94FC()
{
  result = qword_1003AECC0;
  if (!qword_1003AECC0)
  {
    sub_10000A2CC(255, &unk_1003B9ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AECC0);
  }

  return result;
}

uint64_t sub_1000A95B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100005AD4(&qword_1003B2300);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100005AD4(&qword_1003AEE88);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1000A96EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100005AD4(&qword_1003B2300);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_100005AD4(&qword_1003AEE88);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for ConversationView()
{
  result = qword_1003AEEE8;
  if (!qword_1003AEEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A9858()
{
  sub_1000A99BC();
  if (v0 <= 0x3F)
  {
    sub_10005C50C();
    if (v1 <= 0x3F)
    {
      sub_10005C414();
      if (v2 <= 0x3F)
      {
        sub_1000A9A50();
        if (v3 <= 0x3F)
        {
          sub_10008217C();
          if (v4 <= 0x3F)
          {
            type metadata accessor for DeviceHelper();
            if (v5 <= 0x3F)
            {
              sub_10003E0E8();
              if (v6 <= 0x3F)
              {
                sub_1000A9AA8();
                if (v7 <= 0x3F)
                {
                  sub_1000A9B3C(319, &qword_1003AC878);
                  if (v8 <= 0x3F)
                  {
                    sub_1000A9B3C(319, &qword_1003AEF18);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1000A99BC()
{
  if (!qword_1003AEEF8)
  {
    type metadata accessor for SharedTranslationOptions();
    sub_1000B0D04(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AEEF8);
    }
  }
}

void sub_1000A9A50()
{
  if (!qword_1003AEF00)
  {
    type metadata accessor for ScenePhase();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AEF00);
    }
  }
}

void sub_1000A9AA8()
{
  if (!qword_1003AEF08)
  {
    type metadata accessor for TranslationSession_RD();
    sub_1000B0D04(&qword_1003AEF10, type metadata accessor for TranslationSession_RD);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AEF08);
    }
  }
}

void sub_1000A9B3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000A9BA4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B23E0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ConversationView();
  sub_10001F620(v1 + *(v10 + 24), v9, &qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100023BD4(v9, a1, &qword_1003AC848);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000A9D8C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003AEFE0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ConversationView();
  sub_10001F620(v1 + *(v10 + 28), v9, &qword_1003AEFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000A9F94@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v25[0] = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005AD4(&qword_1003AC998);
  __chkstk_darwin(v4);
  v6 = v25 - v5;
  v7 = sub_100005AD4(&qword_1003AC848);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v25 - v12;
  __chkstk_darwin(v11);
  v15 = v25 - v14;
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 != 1)
  {
    return static ToolbarItemPlacement.navigationBarLeading.getter();
  }

  sub_1000A9BA4(v15);
  (*(v2 + 104))(v13, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  v18 = *(v4 + 48);
  sub_10001F620(v15, v6, &qword_1003AC848);
  sub_10001F620(v13, &v6[v18], &qword_1003AC848);
  v19 = *(v2 + 48);
  if (v19(v6, 1, v1) != 1)
  {
    sub_10001F620(v6, v10, &qword_1003AC848);
    if (v19(&v6[v18], 1, v1) != 1)
    {
      v21 = &v6[v18];
      v22 = v25[0];
      (*(v2 + 32))(v25[0], v21, v1);
      sub_1000B0D04(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v2 + 8);
      v24(v22, v1);
      sub_100009EBC(v13, &qword_1003AC848);
      sub_100009EBC(v15, &qword_1003AC848);
      v24(v10, v1);
      sub_100009EBC(v6, &qword_1003AC848);
      if (v23)
      {
        return static ToolbarItemPlacement.navigationBarLeading.getter();
      }

      return static ToolbarItemPlacement.navigationBarTrailing.getter();
    }

    sub_100009EBC(v13, &qword_1003AC848);
    sub_100009EBC(v15, &qword_1003AC848);
    (*(v2 + 8))(v10, v1);
LABEL_7:
    sub_100009EBC(v6, &qword_1003AC998);
    return static ToolbarItemPlacement.navigationBarTrailing.getter();
  }

  sub_100009EBC(v13, &qword_1003AC848);
  sub_100009EBC(v15, &qword_1003AC848);
  if (v19(&v6[v18], 1, v1) != 1)
  {
    goto LABEL_7;
  }

  sub_100009EBC(v6, &qword_1003AC848);
  return static ToolbarItemPlacement.navigationBarLeading.getter();
}

uint64_t sub_1000AA424()
{
  v1 = *v0;
  if (!*v0)
  {
    type metadata accessor for SharedTranslationOptions();
    sub_1000B0D04(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v2 = *(v0 + *(type metadata accessor for ConversationView() + 32) + 8);
  v3 = v1;
  v4 = sub_1000B7FE0();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v10[0] & 1) == 0)
  {

    return 1;
  }

  v5 = sub_10022CDDC(v4);

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v10[3] = &type metadata for TranslateFeatures;
  v10[4] = sub_100009DF8();
  LOBYTE(v10[0]) = 8;
  v6 = isFeatureEnabled(_:)();
  sub_100008664(v10);
  if ((v6 & 1) != 0 && (v7 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper), swift_getKeyPath(), v10[0] = v7, sub_1000B0D04(&qword_1003AE978, type metadata accessor for DeviceHelper), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v8 = v7 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice, swift_beginAccess(), *(v8 + 8)))
  {
    return (*(v8 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AA65C()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + *(type metadata accessor for ConversationView() + 32) + 8);
    v3 = v1;
    v4 = sub_1000B7FE0();
    v5 = sub_10022CDDC(v4);

    if (v5)
    {
      v10[3] = &type metadata for TranslateFeatures;
      v10[4] = sub_100009DF8();
      LOBYTE(v10[0]) = 8;
      v6 = isFeatureEnabled(_:)();
      sub_100008664(v10);
      if ((v6 & 1) != 0 && (v7 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper), swift_getKeyPath(), v10[0] = v7, sub_1000B0D04(&qword_1003AE978, type metadata accessor for DeviceHelper), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v8 = v7 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice, swift_beginAccess(), *(v8 + 8)))
      {
        return (*(v8 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    type metadata accessor for SharedTranslationOptions();
    sub_1000B0D04(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AA838@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v6)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v4 = v5 ^ 1;
    }

    else
    {
      v4 = 0;
    }

    *a2 = v4 & 1;
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1000B0D04(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AA98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1000B0D04(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AAA60@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v101 = type metadata accessor for ScenePhase();
  v102 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = (&v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = type metadata accessor for ConversationView();
  v98 = *(v110 - 1);
  v117 = *(v98 + 64);
  __chkstk_darwin(v110);
  v116 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v92 = *(v89 - 8);
  __chkstk_darwin(v89);
  v90 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100005AD4(&qword_1003AEF68);
  __chkstk_darwin(v86);
  v6 = &v84 - v5;
  v88 = sub_100005AD4(&qword_1003AEF70);
  v91 = *(v88 - 8);
  __chkstk_darwin(v88);
  v8 = &v84 - v7;
  v93 = sub_100005AD4(&qword_1003AEF78);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v85 = &v84 - v9;
  v96 = sub_100005AD4(&qword_1003AEF80);
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v87 = &v84 - v10;
  v112 = sub_100005AD4(&qword_1003AEF88);
  __chkstk_darwin(v112);
  v95 = &v84 - v11;
  v103 = sub_100005AD4(&qword_1003AEF90);
  v100 = *(v103 - 8);
  __chkstk_darwin(v103);
  v113 = &v84 - v12;
  v105 = sub_100005AD4(&qword_1003AEF98);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v114 = &v84 - v13;
  v108 = sub_100005AD4(&qword_1003AEFA0);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v115 = &v84 - v14;
  v106 = sub_100005AD4(&qword_1003AEFA8);
  __chkstk_darwin(v106);
  v109 = &v84 - v15;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v16 = sub_100005AD4(&qword_1003AEFB0);
  sub_1000ABE90(v1, &v6[*(v16 + 44)]);
  LocalizedStringKey.init(stringLiteral:)();
  v17 = sub_10001BAEC(&qword_1003AEFB8, &qword_1003AEF68);
  v18 = v86;
  View.navigationTitle(_:)();

  v19 = v1;

  sub_100009EBC(v6, &qword_1003AEF68);
  v20 = v92;
  v21 = v90;
  v22 = v89;
  (*(v92 + 104))(v90, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v89);
  *&v121 = v18;
  *(&v121 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v85;
  v25 = v88;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v20 + 8))(v21, v22);
  (*(v91 + 8))(v8, v25);
  v118 = v19;
  v26 = sub_100005AD4(&qword_1003AEFC0);
  *&v121 = v25;
  *(&v121 + 1) = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_10001BAEC(&qword_1003AEFC8, &qword_1003AEFC0);
  v29 = v87;
  v30 = v93;
  View.toolbar<A>(content:)();
  (*(v94 + 8))(v24, v30);
  sub_100005AD4(&qword_1003AEFD0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1002D3160;
  v31 = v116;
  static ToolbarPlacement.tabBar.getter();
  *&v121 = v30;
  *(&v121 + 1) = v26;
  *&v122 = v27;
  *(&v122 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v32 = v95;
  v33 = v96;
  View.toolbarBackground(_:for:)();

  (*(v97 + 8))(v29, v33);
  v34 = objc_opt_self();
  v35 = [v34 defaultCenter];
  v36 = sub_100005AD4(&qword_1003AEFD8);
  NSNotificationCenter.publisher(for:object:)();

  sub_1000AFA38(v19, v31);
  v37 = *(v98 + 80);
  v38 = (v37 + 16) & ~v37;
  v39 = swift_allocObject();
  sub_1000B0DF4(v31, v39 + v38, type metadata accessor for ConversationView);
  v40 = (v32 + *(v36 + 56));
  *v40 = sub_1000AFAA0;
  v40[1] = v39;
  v41 = [v34 defaultCenter];
  v42 = sub_100005AD4(&qword_1003AEFE8);
  NSNotificationCenter.publisher(for:object:)();

  sub_1000AFA38(v19, v31);
  v43 = swift_allocObject();
  sub_1000B0DF4(v31, v43 + v38, type metadata accessor for ConversationView);
  v44 = (v32 + *(v42 + 56));
  *v44 = sub_1000AFAA8;
  v44[1] = v43;
  sub_1000AFA38(v19, v31);
  v45 = swift_allocObject();
  sub_1000B0DF4(v31, v45 + v38, type metadata accessor for ConversationView);
  v46 = (v32 + *(sub_100005AD4(&qword_1003AEFF0) + 36));
  *v46 = sub_1000AFB24;
  v46[1] = v45;
  v46[2] = 0;
  v46[3] = 0;
  sub_1000AFA38(v19, v31);
  v47 = swift_allocObject();
  sub_1000B0DF4(v31, v47 + v38, type metadata accessor for ConversationView);
  v48 = (v32 + *(v112 + 36));
  *v48 = 0;
  v48[1] = 0;
  v48[2] = sub_1000AFB3C;
  v48[3] = v47;
  v49 = v99;
  sub_1000A9D8C(v99);
  sub_1000AFA38(v19, v31);
  v50 = swift_allocObject();
  sub_1000B0DF4(v31, v50 + v38, type metadata accessor for ConversationView);
  v51 = sub_1000AFBD4();
  v52 = sub_1000B0D04(&qword_1003AF010, &type metadata accessor for ScenePhase);
  v53 = v49;
  v54 = v101;
  v98 = v52;
  View.onChange<A>(of:initial:_:)();

  (*(v102 + 8))(v53, v54);
  sub_1000AFD18(v32);
  v55 = *(v19 + 16);
  v102 = *(v19 + 24);
  if (v55)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    LOBYTE(v119[0]) = v121;
    sub_1000AFA38(v19, v31);
    v56 = swift_allocObject();
    v97 = v19;
    v99 = type metadata accessor for ConversationView;
    sub_1000B0DF4(v31, v56 + v38, type metadata accessor for ConversationView);
    *&v121 = v112;
    *(&v121 + 1) = v54;
    *&v122 = v51;
    *(&v122 + 1) = v98;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = v103;
    v59 = v113;
    View.onChange<A>(of:initial:_:)();

    (*(v100 + 8))(v59, v58);
    type metadata accessor for SceneContext();
    sub_1000B0D04(&qword_1003AC860, type metadata accessor for SceneContext);
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    v60 = v37;
    v61 = v97;
    sub_1000AFA38(v97, v31);
    v113 = v60;
    v62 = swift_allocObject();
    sub_1000B0DF4(v31, v62 + v38, v99);
    type metadata accessor for AudioRoutingMenu();
    *&v121 = v58;
    *(&v121 + 1) = &type metadata for Bool;
    *&v122 = v57;
    *(&v122 + 1) = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    sub_1000B0D04(&qword_1003AF018, type metadata accessor for AudioRoutingMenu);
    v63 = v105;
    v64 = v114;
    View.sheet<A>(isPresented:onDismiss:content:)();

    (*(v104 + 8))(v64, v63);
    v65 = v61;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v66 = v121 | (BYTE2(v121) << 16);
    if ((v66 & 0xFF0000) == 0x80000)
    {
      v67 = sub_100009440([objc_allocWithZone(NSError) init]);
      LOBYTE(v66) = v67;
      LODWORD(v114) = v67 >> 8;
      v68 = HIWORD(v67);
    }

    else
    {
      LODWORD(v114) = v66 >> 8;
      v68 = HIWORD(v66);
    }

    LODWORD(v112) = v68;
    type metadata accessor for ConversationViewModel();
    sub_1000B0D04(&qword_1003AE4F8, type metadata accessor for ConversationViewModel);
    v69 = ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v70 = v119[6];
    v71 = v119[7];
    v72 = v120;
    v73 = v61;
    v74 = v116;
    sub_1000AFA38(v73, v116);
    v75 = swift_allocObject();
    v110 = type metadata accessor for ConversationView;
    sub_1000B0DF4(v74, v75 + v38, type metadata accessor for ConversationView);
    LOBYTE(v121) = v66;
    BYTE1(v121) = v114;
    BYTE2(v121) = v112;
    *(&v121 + 1) = v70;
    *&v122 = v71;
    BYTE8(v122) = v72;
    *&v123 = sub_1000B029C;
    *(&v123 + 1) = v75;
    v76 = v109;
    (*(v107 + 32))(v109, v115, v108);
    v77 = (v76 + *(v106 + 36));
    sub_1000B030C(&v121, v119);

    v78 = v122;
    *v77 = v121;
    v77[1] = v78;
    v77[2] = v123;

    sub_1000AFA38(v65, v74);
    v79 = swift_allocObject();
    sub_1000B0DF4(v74, v79 + v38, v110);
    KeyPath = swift_getKeyPath();
    v81 = v111;
    sub_1000B03D4(v76, v111);
    result = sub_100005AD4(&qword_1003AF020);
    v83 = v81 + *(result + 36);
    *v83 = KeyPath;
    *(v83 + 8) = 512;
    *(v83 + 16) = sub_1000B0368;
    *(v83 + 24) = v79;
    *(v83 + 32) = 0;
    *(v83 + 40) = 0;
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1000B0D04(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000ABE90@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v63 = a2;
  v3 = sub_100005AD4(&qword_1003AF078);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - v4;
  v57 = sub_100005AD4(&qword_1003AF080) - 8;
  __chkstk_darwin(v57);
  v56 = &v53 - v6;
  v61 = sub_100005AD4(&qword_1003AF088) - 8;
  v7 = __chkstk_darwin(v61);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v59 = &v53 - v10;
  __chkstk_darwin(v9);
  v60 = &v53 - v11;
  v12 = sub_100005AD4(&qword_1003AF090);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v53 - v16;
  v18 = *(a1 + *(type metadata accessor for ConversationView() + 32) + 8);
  type metadata accessor for SceneContext();
  sub_1000B0D04(&qword_1003AC860, type metadata accessor for SceneContext);
  v54 = v18;
  v19 = EnvironmentObject.init()();
  v21 = v20;
  type metadata accessor for ConversationContext(0);
  sub_1000B0D04(&unk_1003BC490, type metadata accessor for ConversationContext);
  v22 = EnvironmentObject.init()();
  v24 = v23;
  KeyPath = swift_getKeyPath();
  v26 = type metadata accessor for ConversationList();
  *&v17[*(v26 + 32)] = KeyPath;
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  *v17 = v54;
  v17[8] = 2;
  *(v17 + 2) = v19;
  *(v17 + 3) = v21;
  *(v17 + 4) = v22;
  *(v17 + 5) = v24;
  v27 = &v17[*(v26 + 36)];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = static SafeAreaRegions.container.getter();
  v29 = static Edge.Set.all.getter();
  v30 = &v17[*(v13 + 44)];
  *v30 = v28;
  v30[8] = v29;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v31 = sub_100005AD4(&qword_1003AF098);
  sub_1000AC43C(v55, &v5[*(v31 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v32 = v5;
  v33 = v56;
  sub_100023BD4(v32, v56, &qword_1003AF078);
  v34 = (v33 + *(v57 + 44));
  v35 = v69;
  v34[4] = v68;
  v34[5] = v35;
  v34[6] = v70;
  v36 = v65;
  *v34 = v64;
  v34[1] = v36;
  v37 = v67;
  v34[2] = v66;
  v34[3] = v37;
  v38 = [objc_opt_self() systemGroupedBackgroundColor];
  v39 = Color.init(uiColor:)();
  v40 = static SafeAreaRegions.all.getter();
  LOBYTE(v13) = static Edge.Set.all.getter();
  v41 = static Alignment.center.getter();
  v43 = v42;
  v44 = v33;
  v45 = v59;
  sub_100023BD4(v44, v59, &qword_1003AF080);
  v46 = v60;
  v47 = v45 + *(v61 + 44);
  *v47 = v39;
  *(v47 + 8) = v40;
  *(v47 + 16) = v13;
  *(v47 + 24) = v41;
  *(v47 + 32) = v43;
  sub_100023BD4(v45, v46, &qword_1003AF088);
  v48 = v58;
  sub_10001F620(v17, v58, &qword_1003AF090);
  v49 = v62;
  sub_10001F620(v46, v62, &qword_1003AF088);
  v50 = v63;
  sub_10001F620(v48, v63, &qword_1003AF090);
  v51 = sub_100005AD4(&qword_1003AF0A0);
  sub_10001F620(v49, v50 + *(v51 + 48), &qword_1003AF088);
  sub_100009EBC(v46, &qword_1003AF088);
  sub_100009EBC(v17, &qword_1003AF090);
  sub_100009EBC(v49, &qword_1003AF088);
  return sub_100009EBC(v48, &qword_1003AF090);
}

uint64_t sub_1000AC43C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v124 = type metadata accessor for SingleOrPairSpeakButton();
  __chkstk_darwin(v124);
  v4 = &v111[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v133 = sub_100005AD4(&qword_1003AE930);
  v132 = *(v133 - 8);
  v5 = __chkstk_darwin(v133);
  v126 = &v111[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v125 = &v111[-v7];
  v8 = sub_100005AD4(&qword_1003AF0A8);
  v9 = __chkstk_darwin(v8 - 8);
  v135 = &v111[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v134 = &v111[-v11];
  v137 = type metadata accessor for UserInterfaceSizeClass();
  v118 = *(v137 - 8);
  __chkstk_darwin(v137);
  v115 = &v111[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = sub_100005AD4(&qword_1003AC998);
  __chkstk_darwin(v117);
  v14 = &v111[-v13];
  v15 = sub_100005AD4(&qword_1003AC848);
  v16 = __chkstk_darwin(v15 - 8);
  v116 = &v111[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v20 = &v111[-v19];
  __chkstk_darwin(v18);
  v22 = &v111[-v21];
  v122 = type metadata accessor for ErrorStateView();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v24 = &v111[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v129 = sub_100005AD4(&qword_1003AF0B0);
  v128 = *(v129 - 1);
  v25 = __chkstk_darwin(v129);
  v119 = &v111[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v120 = &v111[-v27];
  v28 = sub_100005AD4(&qword_1003AF0B8);
  v29 = __chkstk_darwin(v28 - 8);
  v131 = &v111[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v32 = &v111[-v31];
  v127 = type metadata accessor for ConversationView();
  v33 = *(a1 + *(v127 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v123 = v33;
  static Published.subscript.getter();

  v130 = v32;
  if (v139 == 3)
  {
    v34 = 1;
    v35 = v129;
    goto LABEL_11;
  }

  v113 = v24;
  sub_1000AD7D0(v139, v24);
  v112 = static Edge.Set.horizontal.getter();
  v114 = a1;
  sub_1000A9BA4(v22);
  v36 = v118;
  v37 = v137;
  (*(v118 + 104))(v20, enum case for UserInterfaceSizeClass.compact(_:), v137);
  (*(v36 + 56))(v20, 0, 1, v37);
  v38 = *(v117 + 12);
  sub_10001F620(v22, v14, &qword_1003AC848);
  sub_10001F620(v20, &v14[v38], &qword_1003AC848);
  v39 = *(v36 + 48);
  if (v39(v14, 1, v37) != 1)
  {
    v117 = v22;
    v41 = v116;
    sub_10001F620(v14, v116, &qword_1003AC848);
    if (v39(&v14[v38], 1, v137) != 1)
    {
      v42 = v115;
      v43 = v137;
      (*(v36 + 32))(v115, &v14[v38], v137);
      sub_1000B0D04(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = *(v36 + 8);
      v44(v42, v43);
      sub_100009EBC(v20, &qword_1003AC848);
      sub_100009EBC(v117, &qword_1003AC848);
      v44(v41, v43);
      sub_100009EBC(v14, &qword_1003AC848);
      v32 = v130;
      a1 = v114;
      goto LABEL_10;
    }

    sub_100009EBC(v20, &qword_1003AC848);
    sub_100009EBC(v117, &qword_1003AC848);
    (*(v36 + 8))(v41, v137);
    v32 = v130;
    a1 = v114;
    goto LABEL_8;
  }

  sub_100009EBC(v20, &qword_1003AC848);
  sub_100009EBC(v22, &qword_1003AC848);
  v40 = v39(&v14[v38], 1, v137);
  v32 = v130;
  a1 = v114;
  if (v40 != 1)
  {
LABEL_8:
    sub_100009EBC(v14, &qword_1003AC998);
    goto LABEL_10;
  }

  sub_100009EBC(v14, &qword_1003AC848);
LABEL_10:
  v35 = v129;
  v45 = v113;
  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v119;
  (*(v121 + 32))(v119, v45, v122);
  v55 = &v54[*(v35 + 9)];
  *v55 = v112;
  *(v55 + 1) = v47;
  *(v55 + 2) = v49;
  *(v55 + 3) = v51;
  *(v55 + 4) = v53;
  v55[40] = 0;
  v56 = v54;
  v57 = v120;
  sub_100023BD4(v56, v120, &qword_1003AF0B0);
  sub_100023BD4(v57, v32, &qword_1003AF0B0);
  v34 = 0;
LABEL_11:
  (*(v128 + 56))(v32, v34, 1, v35);
  v58 = v127;
  v59 = a1 + *(v127 + 48);
  v60 = *v59;
  v61 = *(v59 + 1);
  LOBYTE(v139) = v60;
  *(&v139 + 1) = v61;
  sub_100005AD4(&qword_1003AC8F8);
  State.wrappedValue.getter();
  if (v138[0])
  {
    v62 = v134;
    (*(v132 + 56))(v134, 1, 1, v133);
LABEL_17:
    v106 = v131;
    sub_10001F620(v32, v131, &qword_1003AF0B8);
    v107 = v135;
    sub_10001F620(v62, v135, &qword_1003AF0A8);
    v108 = v136;
    sub_10001F620(v106, v136, &qword_1003AF0B8);
    v109 = sub_100005AD4(&qword_1003AF0C0);
    sub_10001F620(v107, v108 + *(v109 + 48), &qword_1003AF0A8);
    sub_100009EBC(v62, &qword_1003AF0A8);
    sub_100009EBC(v32, &qword_1003AF0B8);
    sub_100009EBC(v107, &qword_1003AF0A8);
    return sub_100009EBC(v106, &qword_1003AF0B8);
  }

  v63 = *a1;
  if (*a1)
  {
    v64 = *(a1 + *(v58 + 36));
    v65 = *(a1 + *(v58 + 40) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v129 = v63;
    v66 = v123;

    v137 = v65;

    static Published.subscript.getter();

    v67 = 1;
    if ((v139 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v67 = v139;
    }

    LODWORD(v128) = v67;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LODWORD(v127) = v139;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LODWORD(v123) = v139;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LODWORD(v122) = v139;
    swift_getKeyPath();
    v68 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
    *&v139 = v64;
    sub_1000B0D04(&qword_1003AE978, type metadata accessor for DeviceHelper);
    v114 = v68;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LODWORD(v121) = *(v64 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected);
    swift_getKeyPath();
    *&v139 = v64;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v69 = *(v64 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
    v120 = swift_allocObject();
    *(v120 + 2) = v66;
    v119 = swift_allocObject();
    *(v119 + 2) = v66;
    swift_getKeyPath();
    swift_getKeyPath();
    v70 = v124;
    v71 = v66;

    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v118 = sub_1000B8D64();
    v117 = v72;
    v116 = sub_1000B8B8C();
    v115 = v73;
    v74 = swift_allocObject();
    *(v74 + 16) = v71;
    v75 = swift_allocObject();
    *(v75 + 16) = v71;
    swift_getKeyPath();
    *&v139 = v64;
    v76 = v71;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v77 = (v64 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
    swift_beginAccess();
    v78 = *v77;
    v79 = v77[2];
    v140 = v77[1];
    v141 = v79;
    v139 = v78;
    v80 = v77[3];
    v81 = v77[4];
    v82 = v77[5];
    *&v144[9] = *(v77 + 89);
    v143 = v81;
    *v144 = v82;
    v142 = v80;
    sub_10001F620(&v139, v138, &qword_1003A93C8);
    type metadata accessor for SharedTranslationOptions();
    sub_1000B0D04(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
    *v4 = ObservedObject.init(wrappedValue:)();
    *(v4 + 1) = v83;
    type metadata accessor for ConversationViewModel();
    sub_1000B0D04(&qword_1003AE4F8, type metadata accessor for ConversationViewModel);
    *(v4 + 2) = ObservedObject.init(wrappedValue:)();
    *(v4 + 3) = v84;
    *(v4 + 4) = v64;
    type metadata accessor for LanguagesService();
    sub_1000B0D04(&unk_1003ABC30, &type metadata accessor for LanguagesService);
    *(v4 + 5) = ObservedObject.init(wrappedValue:)();
    *(v4 + 6) = v85;
    v4[56] = v128;
    v4[57] = v127;
    v4[58] = v123;
    v4[59] = v122;
    v4[60] = v121;
    *(v4 + 8) = v69;
    *(v4 + 9) = 0;
    v4[80] = 1;
    v86 = v120;
    *(v4 + 11) = sub_1000B0DEC;
    *(v4 + 12) = v86;
    v87 = v119;
    *(v4 + 13) = sub_100091B0C;
    *(v4 + 14) = v87;
    v88 = &v4[v70[19]];
    v89 = v117;
    *v88 = v118;
    v88[1] = v89;
    v90 = &v4[v70[20]];
    v91 = v115;
    *v90 = v116;
    v90[1] = v91;
    v92 = &v4[v70[21]];
    *v92 = sub_100091524;
    v92[1] = v74;
    v93 = &v4[v70[22]];
    *v93 = sub_100091548;
    v93[1] = v75;
    v94 = &v4[v70[23]];
    *v94 = 0;
    v94[1] = 0;
    v95 = &v4[v70[24]];
    *v95 = 0;
    v95[1] = 0;
    v96 = &v4[v70[25]];
    *v96 = sub_10009156C;
    v96[1] = v64;
    v97 = &v4[v70[26]];
    v98 = *v144;
    v97[4] = v143;
    v97[5] = v98;
    *(v97 + 89) = *&v144[9];
    v99 = v140;
    *v97 = v139;
    v97[1] = v99;
    v100 = v142;
    v97[2] = v141;
    v97[3] = v100;
    v101 = &v4[v70[27]];
    *v101 = 0x6C6C69662E63696DLL;
    v101[1] = 0xE800000000000000;
    static AnyTransition.move(edge:)();
    static AnyTransition.move(edge:)();
    v102 = static AnyTransition.asymmetric(insertion:removal:)();

    v103 = v126;
    sub_1000B0DF4(v4, v126, type metadata accessor for SingleOrPairSpeakButton);
    v104 = v133;
    *&v103[*(v133 + 36)] = v102;
    v105 = v125;
    sub_100023BD4(v103, v125, &qword_1003AE930);
    v62 = v134;
    sub_100023BD4(v105, v134, &qword_1003AE930);
    (*(v132 + 56))(v62, 0, 1, v104);
    v32 = v130;
    goto LABEL_17;
  }

  type metadata accessor for SharedTranslationOptions();
  sub_1000B0D04(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000AD7D0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ErrorStateView.Context();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v19 - v14;
  if (a1)
  {
    (*(v5 + 104))(v7, enum case for ErrorStateView.Context.conversation(_:), v4);
    if (a1 == 1)
    {
      static ErrorStateView.noInternetConnection(context:)();
    }

    else
    {
      static ErrorStateView.missingOfflineAssets(context:)();
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v16 = v13;
    type metadata accessor for ConversationView();
    swift_getKeyPath();
    v19[1] = a2;
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    (*(v5 + 104))(v7, enum case for ErrorStateView.Context.conversation(_:), v4);
    static ErrorStateView.airplaneMode(sourceLocale:targetLocale:context:)();
    (*(v5 + 8))(v7, v4);
    v17 = *(v9 + 8);
    v17(v12, v16);
    return (v17)(v15, v16);
  }
}

void *sub_1000ADAE4(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  UUID.init()();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__selfAutoTranslateSessionId;
  swift_beginAccess();
  sub_100091B8C(v4, a1 + v6);
  swift_endAccess();
  return sub_1000C0C34(0, 2);
}

uint64_t sub_1000ADBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = sub_100005AD4(&qword_1003AF030);
  __chkstk_darwin(v26);
  v24 = &v22 - v3;
  v25 = sub_100005AD4(&qword_1003AF038);
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v22 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100005AD4(&qword_1003AF040);
  v10 = *(v23 - 8);
  __chkstk_darwin(v23);
  v12 = &v22 - v11;
  sub_1000A9F94(v9);
  type metadata accessor for ConversationViewsMenu();
  sub_1000B0D04(&qword_1003AF048, type metadata accessor for ConversationViewsMenu);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v28 = a1;
  sub_100005AD4(&qword_1003AF050);
  v13 = sub_100005EA8(&qword_1003AF058);
  v14 = sub_1000B05A4();
  v15 = sub_10001BAEC(&qword_1003AF068, &qword_1003AF058);
  v29 = &type metadata for MoreOptionsMenu;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  v16 = *(v26 + 48);
  v18 = v23;
  v17 = v24;
  (*(v10 + 16))(v24, v12, v23);
  v19 = &v17[v16];
  v20 = v25;
  (*(v4 + 16))(v19, v6, v25);
  TupleToolbarContent.init(_:)();
  (*(v4 + 8))(v6, v20);
  return (*(v10 + 8))(v12, v18);
}

uint64_t sub_1000ADFA0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for ConversationViewsMenu() + 20));
  type metadata accessor for SceneContext();
  sub_1000B0D04(&qword_1003AC860, type metadata accessor for SceneContext);
  result = EnvironmentObject.init()();
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t sub_1000AE054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for ConversationView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_1000AA65C();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*&v33[0] >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((*&v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v7 != 0;
  v9 = *(a1 + *(v3 + 36));
  swift_getKeyPath();
  *&v33[0] = v9;
  sub_1000B0D04(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected);
  type metadata accessor for SharedTranslationOptions();
  sub_1000B0D04(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
  v11 = EnvironmentObject.init()();
  v13 = v12;
  type metadata accessor for SceneContext();
  sub_1000B0D04(&qword_1003AC860, type metadata accessor for SceneContext);
  v14 = EnvironmentObject.init()();
  *&v30 = v11;
  *(&v30 + 1) = v13;
  *&v31 = v14;
  *(&v31 + 1) = v15;
  *v32 = xmmword_1002D3300;
  v32[16] = v6 & 1;
  v32[17] = v8;
  v32[18] = v10;
  v16 = LocalizedStringKey.init(stringLiteral:)();
  v27 = v17;
  v28 = v16;
  v26[3] = v18;
  sub_1000AFA38(a1, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v19 = static MainActor.shared.getter();
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = &protocol witness table for MainActor;
  sub_1000B0DF4(v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for ConversationView);
  sub_1000AFA38(a1, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = &protocol witness table for MainActor;
  sub_1000B0DF4(v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v20, type metadata accessor for ConversationView);
  v24 = Binding.init(get:set:)();
  __chkstk_darwin(v24);
  sub_100005AD4(&qword_1003AF058);
  sub_1000B05A4();
  sub_10001BAEC(&qword_1003AF068, &qword_1003AF058);
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();

  v33[0] = v30;
  v33[1] = v31;
  v34[0] = *v32;
  *(v34 + 15) = *&v32[15];
  return sub_1000B0958(v33);
}

uint64_t sub_1000AE540@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a1;
  v50 = a2;
  v3 = type metadata accessor for ConversationView();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  __chkstk_darwin(v3 - 8);
  v38 = v4;
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005AD4(&qword_1003ADA30);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = sub_100005AD4(&qword_1003AA540);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v49 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v48 = v37 - v14;
  v15 = __chkstk_darwin(v13);
  v47 = v37 - v16;
  __chkstk_darwin(v15);
  v45 = v37 - v17;
  v18 = LocalizedStringKey.init(stringLiteral:)();
  v40 = v19;
  v41 = v18;
  v37[1] = v20;
  v39 = v21;
  static ButtonRole.destructive.getter();
  v22 = type metadata accessor for ButtonRole();
  v23 = *(v22 - 8);
  v42 = *(v23 + 56);
  v44 = v23 + 56;
  v42(v8, 0, 1, v22);
  sub_1000AFA38(a1, v5);
  v24 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v25 = swift_allocObject();
  sub_1000B0DF4(v5, v25 + v24, type metadata accessor for ConversationView);
  Button<>.init(_:role:action:)();
  v46 = LocalizedStringKey.init(stringLiteral:)();
  v41 = v26;
  static ButtonRole.cancel.getter();
  v42(v8, 0, 1, v22);
  sub_1000AFA38(v43, v5);
  v27 = swift_allocObject();
  sub_1000B0DF4(v5, v27 + v24, type metadata accessor for ConversationView);
  v28 = v47;
  Button<>.init(_:role:action:)();
  v29 = *(v10 + 16);
  v30 = v48;
  v31 = v45;
  v29(v48, v45, v9);
  v32 = v49;
  v29(v49, v28, v9);
  v33 = v50;
  v29(v50, v30, v9);
  v34 = sub_100005AD4(&qword_1003AF070);
  v29(&v33[*(v34 + 48)], v32, v9);
  v35 = *(v10 + 8);
  v35(v28, v9);
  v35(v31, v9);
  v35(v32, v9);
  return (v35)(v30, v9);
}

uint64_t sub_1000AE9E4(uint64_t a1)
{
  v1 = *(*(a1 + *(type metadata accessor for ConversationView() + 32) + 8) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session);
  sub_1000085CC((v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
}

uint64_t sub_1000AEB3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1000B0D04(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_1000AEC0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = Notification.userInfo.getter();
  if (v5)
  {
    v6 = v5;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v6 + 16) && (v7 = sub_10028DF68(v14), (v8 & 1) != 0))
    {
      sub_10000A37C(*(v6 + 56) + 32 * v7, v16);
      sub_100078028(v14);

      sub_1000B0530();
      if (swift_dynamicCast())
      {
        if (*(*(v3 + *(type metadata accessor for ConversationView() + 32) + 8) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_isVisible) == 1)
        {
          [v13 doubleValue];
          v9 = static Animation.easeInOut(duration:)();
          __chkstk_darwin(v9);
          withAnimation<A>(_:_:)();

          return;
        }
      }
    }

    else
    {

      sub_100078028(v14);
    }
  }

  v10 = (v3 + *(type metadata accessor for ConversationView() + 48));
  v11 = *v10;
  v12 = *(v10 + 1);
  v14[0] = v11;
  v15 = v12;
  v16[0] = a2 & 1;
  sub_100005AD4(&qword_1003AC8F8);
  State.wrappedValue.setter();
}

uint64_t sub_1000AEE00(uint64_t a1)
{
  *(*(a1 + *(type metadata accessor for ConversationView() + 32) + 8) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_isVisible) = 1;
  v6 = &type metadata for TranslateFeatures;
  v1 = sub_100009DF8();
  v7 = v1;
  v5[0] = 8;
  v2 = isFeatureEnabled(_:)();
  result = sub_100008664(v5);
  if (v2)
  {
    v6 = &type metadata for TranslateFeatures;
    v7 = v1;
    v5[0] = 8;
    v4 = isFeatureEnabled(_:)();
    result = sub_100008664(v5);
    if (v4)
    {
      return sub_1000D0678();
    }
  }

  return result;
}

uint64_t sub_1000AEECC(uint64_t a1)
{
  *(*(a1 + *(type metadata accessor for ConversationView() + 32) + 8) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_isVisible) = 0;
  sub_1000BFC04();
  v6 = &type metadata for TranslateFeatures;
  v1 = sub_100009DF8();
  v7 = v1;
  v5[0] = 8;
  v2 = isFeatureEnabled(_:)();
  result = sub_100008664(v5);
  if (v2)
  {
    v6 = &type metadata for TranslateFeatures;
    v7 = v1;
    v5[0] = 8;
    v4 = isFeatureEnabled(_:)();
    result = sub_100008664(v5);
    if (v4)
    {
      return sub_1000D07C0();
    }
  }

  return result;
}

uint64_t sub_1000AEF98()
{
  v0 = type metadata accessor for ScenePhase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = *(v1 + 104);
  v4(v3, enum case for ScenePhase.active(_:), v0);
  v5 = static ScenePhase.== infix(_:_:)();
  v6 = *(v1 + 8);
  v6(v3, v0);
  if (v5)
  {
    v18 = &type metadata for TranslateFeatures;
    v7 = sub_100009DF8();
    v19 = v7;
    v17[0] = 8;
    v8 = isFeatureEnabled(_:)();
    result = sub_100008664(v17);
    if (v8)
    {
      type metadata accessor for ConversationView();
      v18 = &type metadata for TranslateFeatures;
      v19 = v7;
      v17[0] = 8;
      v10 = isFeatureEnabled(_:)();
      result = sub_100008664(v17);
      if (v10)
      {
        return sub_1000D0678();
      }
    }
  }

  else
  {
    v4(v3, enum case for ScenePhase.inactive(_:), v0);
    v11 = static ScenePhase.== infix(_:_:)();
    v6(v3, v0);
    if (v11 & 1) != 0 || (v4(v3, enum case for ScenePhase.background(_:), v0), v12 = static ScenePhase.== infix(_:_:)(), result = (v6)(v3, v0), (v12))
    {
      type metadata accessor for ConversationView();
      sub_1000BFC04();
      v18 = &type metadata for TranslateFeatures;
      v13 = sub_100009DF8();
      v19 = v13;
      v17[0] = 8;
      v14 = isFeatureEnabled(_:)();
      result = sub_100008664(v17);
      if (v14)
      {
        v18 = &type metadata for TranslateFeatures;
        v19 = v13;
        v17[0] = 8;
        v15 = isFeatureEnabled(_:)();
        result = sub_100008664(v17);
        if (v15)
        {
          return sub_1000D07C0();
        }
      }
    }
  }

  return result;
}

__n128 sub_1000AF270@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ConversationView();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = type metadata accessor for AudioRoutingMenu();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = *(a1 + *(v4 + 36));
  swift_getKeyPath();
  *&v41 = v6;
  sub_1000B0D04(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = (v6 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  v28 = v7[1];
  v29 = v9;
  v27 = v8;
  v10 = *(v7 + 3);
  v11 = v7[4];
  v12 = v7[5];
  *(v32 + 9) = *(v7 + 89);
  v31 = v11;
  v32[0] = v12;
  v30 = v10;
  swift_getKeyPath();
  *&v33 = v6;
  sub_10001F620(&v27, &v41, &qword_1003A93C8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
  *a2 = swift_getKeyPath();
  sub_100005AD4(&unk_1003B1290);
  swift_storeEnumTagMultiPayload();
  v14 = a2 + v5[5];
  v45 = 0u;
  memset(v46, 0, 25);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;

  sub_100005AD4(&qword_1003A93C8);
  State.init(wrappedValue:)();
  v15 = v38;
  *(v14 + 4) = v37;
  *(v14 + 5) = v15;
  *(v14 + 6) = v39;
  *(v14 + 14) = v40;
  v16 = v34;
  *v14 = v33;
  *(v14 + 1) = v16;
  v17 = v36;
  *(v14 + 2) = v35;
  *(v14 + 3) = v17;
  v18 = a2 + v5[6];
  State.init(wrappedValue:)();
  v19 = *v46;
  *(v18 + 4) = v45;
  *(v18 + 5) = v19;
  *(v18 + 6) = *&v46[16];
  *(v18 + 14) = v47;
  v20 = v42;
  *v18 = v41;
  *(v18 + 1) = v20;
  v21 = v44;
  *(v18 + 2) = v43;
  *(v18 + 3) = v21;
  v22 = a2 + v5[9];
  v23 = v32[0];
  *(v22 + 4) = v31;
  *(v22 + 5) = v23;
  *(v22 + 89) = *(v32 + 9);
  v24 = v28;
  *v22 = v27;
  *(v22 + 1) = v24;
  result = v30;
  *(v22 + 2) = v29;
  *(v22 + 3) = result;
  *(a2 + v5[10]) = v13;
  v26 = (a2 + v5[11]);
  *v26 = sub_100091CA8;
  v26[1] = v6;
  return result;
}

void *sub_1000AF610(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1000AA424();
  v6 = *(a1 + *(type metadata accessor for ConversationView() + 32) + 8);
  if (v5)
  {
    return sub_1000C080C();
  }

  UUID.init()();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  v9 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__selfAutoTranslateSessionId;
  swift_beginAccess();
  sub_100091B8C(v4, v6 + v9);
  swift_endAccess();
  return sub_1000C0C34(0, 2);
}

uint64_t sub_1000AF738()
{
  type metadata accessor for ConversationView();
  sub_100005AD4(&qword_1003AC8F8);
  return State.wrappedValue.setter();
}

uint64_t sub_1000AF7D4(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v1 = [objc_opt_self() sharedApplication];
    [v1 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000AF898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000B0D04(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
}

void sub_1000AF9B4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  sub_10022C2E4();
}

uint64_t sub_1000AFA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AFB54()
{
  type metadata accessor for ConversationView();

  return sub_1000AEF98();
}

unint64_t sub_1000AFBD4()
{
  result = qword_1003AEFF8;
  if (!qword_1003AEFF8)
  {
    sub_100005EA8(&qword_1003AEF88);
    sub_1000AFC60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEFF8);
  }

  return result;
}

unint64_t sub_1000AFC60()
{
  result = qword_1003AF000;
  if (!qword_1003AF000)
  {
    sub_100005EA8(&qword_1003AEFF0);
    sub_10001BAEC(&qword_1003AF008, &qword_1003AEFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF000);
  }

  return result;
}

uint64_t sub_1000AFD18(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AEF88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AFDAC()
{
  v1 = type metadata accessor for ConversationView();
  *(*(v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + 8) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_isVisible) = 0;
  return sub_1000BFC04();
}

double sub_1000AFE74@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ConversationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_1000AF270(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_1000AFEE4@<X0>(void *a1@<X8>)
{
  sub_1000B0444();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000AFF34()
{
  sub_1000B0444();

  return EnvironmentValues.subscript.setter();
}

uint64_t sub_1000AFFBC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000B0028@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000B00A8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000B0118@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 2) = v4;
  *a1 = v3;
  return result;
}

uint64_t sub_1000B01A4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000B0380@<X0>(void *a1@<X8>)
{
  sub_1000B0444();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000B03D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AEFA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B0444()
{
  result = qword_1003AF028;
  if (!qword_1003AF028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF028);
  }

  return result;
}

unint64_t sub_1000B0530()
{
  result = qword_1003AED20;
  if (!qword_1003AED20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AED20);
  }

  return result;
}