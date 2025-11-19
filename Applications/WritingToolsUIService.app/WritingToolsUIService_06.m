void sub_1000A5360()
{
  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner + 16);
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner + 24);
  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner + 32);
  v4 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner + 40);
  v5 = IntelligenceUI.PromptEntryView.textView.getter();
  v6 = [v5 text];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000341C(&unk_10025F820, &qword_1001D50A0);
    Binding.wrappedValue.setter();
  }

  else
  {
    __break(1u);
  }
}

UIMenu sub_1000A5424()
{
  sub_1000081B0(0, &qword_100262910, UIMenu_ptr);
  v0._countAndFlagsBits = 0;
  v0._object = 0xE000000000000000;
  v3.value.super.isa = 0;
  v3.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v0, 0, v3, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v2);
}

uint64_t sub_1000A5494@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1000A5500()
{
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner + 120);
  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner + 128);
  v4 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner + 16);
  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner + 32);
  v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner + 40);
  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.wrappedValue.getter();
  v2();
}

unint64_t sub_1000A5588(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v2 = type metadata accessor for Attachment(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_10025F840, &qword_1001D50B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = v13;
    v34 = v3;
    v21 = *(result + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource);
    v22 = result;
    v23 = v21;

    if (v21)
    {
      v32 = v23;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
      v24 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      (*(v8 + 8))(v11, v7);
      result = IndexPath.item.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v24 + 16))
      {
        sub_1000A6690(v24 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * result, v6);

        v25 = v33;
        v26 = *(v33 + 16);
        v26(v19, v6, v12);
        sub_10003D7E8(v6);
        v26(v17, v19, v12);
        v27 = type metadata accessor for PreviewProviderViewController();
        v28 = objc_allocWithZone(v27);
        v26(&v28[OBJC_IVAR____TtC21WritingToolsUIService29PreviewProviderViewController_url], v17, v12);
        v36.receiver = v28;
        v36.super_class = v27;
        v29 = objc_msgSendSuper2(&v36, "initWithNibName:bundle:", 0, 0);
        [v29 setDataSource:v29];

        v30 = *(v25 + 8);
        v30(v17, v12);
        v30(v19, v12);
        return v29;
      }

      __break(1u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

UIMenu sub_1000A590C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1000081B0(0, &qword_100262910, UIMenu_ptr);
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001D1060;
  sub_1000081B0(0, &qword_10025F890, UIAction_ptr);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v5 + 32))(v10 + v9, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v7 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v11, 0, v15, 0, 0xFFFFFFFFFFFFFFFFLL, v7, v13);
}

void sub_1000A5B48()
{
  v0 = sub_10000341C(&qword_10025F840, &qword_1001D50B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = IndexPath.item.getter();
    v8 = *&v6[OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource];
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
      sub_10000341C(&qword_10025F898, &qword_1001DDE20);
      v11 = *(type metadata accessor for Attachment(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1001CF9D0;
      v15 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v9 < *(v15 + 16))
      {
        sub_1000A6690(v15 + v13 + v12 * v9, v14 + v13);

        NSDiffableDataSourceSnapshot.deleteItems(_:)(v14);

        dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
        v16 = *&v6[OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_attachmentManager];
        sub_100173BA0(v9);

        (*(v1 + 8))(v4, v0);
        goto LABEL_6;
      }

      __break(1u);
      return;
    }

LABEL_6:
  }
}

void *sub_1000A5E20(uint64_t a1)
{
  v2 = v1;
  v34 = sub_10000341C(&qword_10025F840, &qword_1001D50B8);
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v34);
  v7 = &v31 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
  swift_beginAccess();
  result = *(v2 + v16);
  if (!result)
  {
    goto LABEL_15;
  }

  result = [result indexPathForCell:a1];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v18 = result;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 32))(v15, v13, v8);
  v19 = IndexPath.item.getter();
  v20 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource);
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = v19;
  v31 = v4;
  v32 = v9;
  v33 = v8;
  v22 = v20;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  sub_10000341C(&qword_10025F898, &qword_1001DDE20);
  v23 = *(type metadata accessor for Attachment(0) - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1001CF9D0;
  result = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v21 >= result[2])
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000A6690(result + v25 + v24 * v21, v26 + v25);

  v27 = v34;
  NSDiffableDataSourceSnapshot.deleteItems(_:)(v26);

  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  v28 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_attachmentManager);
  sub_100173BA0(v21);

  (*(v31 + 8))(v7, v27);
  v9 = v32;
  v8 = v33;
LABEL_7:
  swift_beginAccess();
  v29 = *(v2 + v16);
  if (v29)
  {
    swift_endAccess();
    v30 = v29;
    if ([v30 numberOfSections] >= 1)
    {
      [v30 setScrollEnabled:{objc_msgSend(v30, "numberOfItemsInSection:", 0) > 1}];
      [v30 setShowsHorizontalScrollIndicator:{objc_msgSend(v30, "numberOfItemsInSection:", 0) > 1}];
    }

    return (*(v9 + 8))(v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    return swift_endAccess();
  }
}

uint64_t type metadata accessor for PreviewProviderViewController()
{
  result = qword_10025F810;
  if (!qword_10025F810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A64C8()
{
  result = type metadata accessor for URL();
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

unint64_t sub_1000A6558()
{
  result = qword_10025F858;
  if (!qword_10025F858)
  {
    type metadata accessor for Attachment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F858);
  }

  return result;
}

id sub_1000A65B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

id sub_1000A6600(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1000081B0(0, &unk_10025F880, UIMenuElement_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_1000A6690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A66F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100263020, &qword_1001DA210);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1000A6764(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  result = 0;
  if (*(a1 + 16) == 1)
  {
    v11 = *(v4 + 80);
    v12 = (v11 + 32) & ~v11;
    v32 = v7;
    v13 = swift_allocObject();
    v33 = v13;
    swift_unknownObjectWeakInit();
    v14 = a1;
    v29 = a1;
    v15 = *(v4 + 16);
    v15(v9, v14 + v12, v3);
    v30 = v1;
    v16 = (v11 + 24) & ~v11;
    v17 = swift_allocObject();
    v31 = v17;
    *(v17 + 16) = v13;
    v18 = *(v4 + 32);
    v18(v17 + v16, v9, v3);
    v19 = v29 + v12;
    v20 = v32;
    v15(v32, v19, v3);
    v21 = swift_allocObject();
    v22 = v30;
    *(v21 + 16) = v30;
    v18(v21 + v16, v20, v3);
    v23 = objc_opt_self();
    v38 = sub_1000A6AEC;
    v39 = v31;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_1000A65B0;
    v37 = &unk_10024D668;
    v24 = _Block_copy(&aBlock);

    v25 = v22;

    v38 = sub_1000A6C14;
    v39 = v21;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_1000A6600;
    v37 = &unk_10024D690;
    v26 = _Block_copy(&aBlock);

    v27 = [v23 configurationWithIdentifier:0 previewProvider:v24 actionProvider:v26];

    _Block_release(v26);
    _Block_release(v24);

    return v27;
  }

  return result;
}

uint64_t sub_1000A6AB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000A6AEC()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000A5588(v2, v3);
}

uint64_t sub_1000A6B50()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

UIMenu sub_1000A6C14(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000A590C(a1, v4, v5);
}

uint64_t sub_1000A6C88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A6CA4()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000A6D68()
{
  v1 = *(*(type metadata accessor for IndexPath() - 8) + 80);
  v2 = *(v0 + 16);

  sub_1000A5B48();
}

id sub_1000A6F28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t WritingToolsModel.__allocating_init(hostIsReady:writingToolsDelegate:)(int a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_1000AA9F8(a1, a2);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1000A7068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_1000AA938(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_1000A7124()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
}

uint64_t sub_1000A71C8(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A72FC()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
}

uint64_t sub_1000A73A0(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A74D4()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
}

uint64_t sub_1000A7578(uint64_t a1)
{
  if (*(v1 + 32) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A76AC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v0 + 72))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v0 + 24);
    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *(v0 + 48);
    v4 = *(v1 + 56);
    v5 = *(v1 + 64);
    v6 = *(v1 + 72);
    sub_10000F3F4(*(v1 + 48), v4, v5, v6);
    sub_100036534(v3, v4, v5, v6);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 72) >= 2u)
  {
    v8 = *(v1 + 48);
    if (*(v1 + 56) | *(v1 + 64) | v8)
    {
      if (v8 == 1 && *(v1 + 56) == 0)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v9 = *(v1 + 16);
        swift_getKeyPath();

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v10 = *(v1 + 48);
        v11 = *(v1 + 56);
        v12 = *(v1 + 64);
        v13 = *(v1 + 72);
        sub_10000F3F4(v10, v11, v12, v13);
        sub_100036534(v10, v11, v12, v13);
      }
    }
  }

  return result;
}

uint64_t sub_1000A7918()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  sub_10000F3F4(v1, *(v3 + 56), *(v3 + 64), *(v3 + 72));
  return v1;
}

uint64_t sub_1000A79E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  v11 = *(v4 + 64);
  v12 = *(v4 + 72);
  if (sub_1000AB31C(v9, v10, v11, v12, a1, a2, a3, a4))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_10000F428(a1, a2, a3, a4);
  }

  else
  {
    *(v4 + 48) = a1;
    *(v4 + 56) = a2;
    *(v4 + 64) = a3;
    *(v4 + 72) = a4;
    sub_10000F428(v9, v10, v11, v12);

    return sub_1000A76AC();
  }
}

uint64_t sub_1000A7B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  v8 = *(a1 + 72);
  *(a1 + 72) = a5;
  sub_10000F3F4(a2, a3, a4, a5);
  sub_10000F428(v5, v6, v7, v8);
  return sub_1000A76AC();
}

uint64_t sub_1000A7C14()
{
  v1 = v0;
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  v4 = __chkstk_darwin(v2);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v75 = &v71 - v6;
  v7 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v76 = (&v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v13 = &v71 - v12;
  v14 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v71 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v71 - v19;
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel___observationRegistrar;
  v81[1] = v1;
  v78 = sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  v79 = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  v23 = *(v15 + 16);
  v23(v20, v1 + v22, v14);
  v24 = (*(v15 + 88))(v20, v14);
  v77 = v1;
  if (v24 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    (*(v15 + 96))(v20, v14);
    (*(v8 + 32))(v13, v20, v7);
    v25 = v7;
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000F34C(v26, qword_100276EF0);
    v27 = v76;
    (*(v8 + 16))(v76, v13, v7);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v75 = v13;
      v31 = v30;
      v32 = swift_slowAlloc();
      v81[0] = v32;
      *v31 = 136315138;
      sub_1000AB590(&qword_10025FEA8, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v27;
      v35 = v7;
      v37 = v36;
      v38 = *(v8 + 8);
      v38(v34, v35);
      v39 = sub_10002510C(v33, v37, v81);
      v25 = v35;

      *(v31 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "gmsAvailability returned restricted: [%s]", v31, 0xCu);
      sub_10000F4B4(v32);

      v13 = v75;
    }

    else
    {

      v38 = *(v8 + 8);
      v38(v27, v25);
    }

    v38(v13, v25);
LABEL_20:
    v67 = 0;
    v68 = 1;
    goto LABEL_23;
  }

  if (v24 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    (*(v15 + 96))(v20, v14);
    v40 = v73;
    v41 = v74;
    v42 = v75;
    (*(v73 + 32))(v75, v20, v74);
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000F34C(v43, qword_100276EF0);
    v44 = v72;
    (*(v40 + 16))(v72, v42, v41);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v81[0] = v48;
      *v47 = 136315138;
      sub_1000AB590(&qword_10025FE98, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v40;
      v52 = v51;
      v53 = *(v50 + 8);
      v53(v44, v41);
      v54 = sub_10002510C(v49, v52, v81);

      *(v47 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v45, v46, "gmsAvailability returned unavailable: [%s]", v47, 0xCu);
      sub_10000F4B4(v48);
      v42 = v75;
    }

    else
    {

      v53 = *(v40 + 8);
      v53(v44, v41);
    }

    v53(v42, v41);
    goto LABEL_20;
  }

  if (v24 != enum case for GenerativeModelsAvailability.Availability.available(_:))
  {
    v55 = v23;
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_10000F34C(v56, qword_100276EF0);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v75 = v59;
      v76 = swift_slowAlloc();
      v81[0] = v76;
      *v59 = 136315138;
      swift_getKeyPath();
      v80 = v1;
      LODWORD(v74) = v58;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v60 = v71;
      v55(v71, v1 + v22, v14);
      sub_1000AB590(&qword_10025FEB8, &type metadata accessor for GenerativeModelsAvailability.Availability);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v64 = *(v15 + 8);
      v64(v60, v14);
      v65 = sub_10002510C(v61, v63, v81);

      v66 = v75;
      *(v75 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v57, v74, "gmsAvailability returned unexpected value: [%s]", v66, 0xCu);
      sub_10000F4B4(v76);

      v64(v20, v14);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }
  }

  v68 = 0;
  v67 = 3;
LABEL_23:
  swift_getKeyPath();
  v69 = v77;
  v81[0] = v77;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v68 | *(v69 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable)))
  {
    return v67;
  }

  else
  {
    return v67 & 1;
  }
}

uint64_t sub_1000A85D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1000A86CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  v5 = type metadata accessor for GenerativeModelsAvailability.Availability();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1000A87C4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_1000A8890(v7);
}

uint64_t sub_1000A8890(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1000AB590(&qword_10025FEB0, &type metadata accessor for GenerativeModelsAvailability.Availability);
  v15[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_1000A8B30(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  v5 = type metadata accessor for GenerativeModelsAvailability.Availability();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000A8BCC()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0[2];
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v0[3];
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v0[4];
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();
  swift_getKeyPath();
  sub_1000AB590(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000A8E98()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1000A8F80()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable);
}

uint64_t sub_1000A9028@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable);
  return result;
}

uint64_t sub_1000A9100(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000A9218()
{
  v1 = v0;
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  v11[0] = sub_1000A9464();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  swift_getKeyPath();
  v11[2] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable))
  {
    return v11[0];
  }

  result = v11[0];
  if (!v9)
  {
    LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  return result;
}

uint64_t sub_1000A9464()
{
  v1 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v95 = *(v1 - 8);
  v96 = v1;
  v2 = *(v95 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v97 = v90 - v6;
  v7 = sub_10000341C(&qword_10025FE90, &qword_1001D52E8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v93 = v90 - v9;
  v10 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v98 = *(v10 - 1);
  v99 = v10;
  v11 = *(v98 + 64);
  v12 = __chkstk_darwin(v10);
  v92 = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v90 - v14;
  v16 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v94 = v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = v90 - v22;
  __chkstk_darwin(v21);
  v25 = v90 - v24;
  v26 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v30, v0, v26);
  v31 = (*(v27 + 88))(v30, v26);
  if (v31 != enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    if (v31 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v27 + 96))(v30, v26);
      v46 = v95;
      v47 = v96;
      v48 = v97;
      (*(v95 + 32))(v97, v30, v96);
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000F34C(v49, qword_100276EF0);
      (*(v46 + 16))(v5, v48, v47);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = v47;
        v53 = v46;
        v54 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v100[0] = v99;
        *v54 = 136315138;
        sub_1000AB590(&qword_10025FE98, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v58 = *(v53 + 8);
        v58(v5, v52);
        v47 = v52;
        v59 = sub_10002510C(v55, v57, v100);
        v48 = v97;

        *(v54 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v50, v51, "Got unavailable unexpectedly. [%s]", v54, 0xCu);
        sub_10000F4B4(v99);
      }

      else
      {

        v58 = *(v46 + 8);
        v58(v5, v47);
      }

      LocalizedStringKey.init(stringLiteral:)();
      v75 = Text.init(_:tableName:bundle:comment:)();
      v58(v48, v47);
      return v75;
    }

    if (v31 != enum case for GenerativeModelsAvailability.Availability.available(_:))
    {
      (*(v27 + 8))(v30, v26);
    }

    return 0;
  }

  (*(v27 + 96))(v30, v26);
  (*(v17 + 32))(v25, v30, v16);
  v32 = v25;
  if (qword_10025A6D8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_10000F34C(v33, qword_100276EF0);
  v90[0] = *(v17 + 16);
  (v90[0])(v23, v25, v16);
  v95 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v90[1] = v17;
  v91 = v16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v96 = v32;
    v39 = v38;
    v40 = swift_slowAlloc();
    v100[0] = v40;
    *v39 = 136315138;
    sub_1000AB590(&qword_10025FEA8, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v16;
    v44 = v43;
    v97 = *(v17 + 8);
    (v97)(v23, v42);
    v45 = sub_10002510C(v41, v44, v100);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v35, v36, "Restricted info: [%s]", v39, 0xCu);
    sub_10000F4B4(v40);

    v32 = v96;
  }

  else
  {

    v97 = *(v17 + 8);
    (v97)(v23, v16);
  }

  v60 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
  v61 = enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:);
  v63 = v98;
  v62 = v99;
  v64 = *(v98 + 104);
  v64(v15, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:), v99);
  v65 = v32;
  v66 = sub_100138244(v15, v60);
  v67 = v62;

  v68 = *(v63 + 8);
  v68(v15, v62);
  if (v66)
  {
    v64(v15, v61, v62);
LABEL_20:
    v75 = sub_1000AA6DC();
    v68(v15, v67);
    (v97)(v65, v91);
    return v75;
  }

  v69 = *(GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter() + 16);

  if (!v69)
  {
    (v97)(v65, v91);
    return 0;
  }

  v70 = *(GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter() + 16);

  if (v70 != 1)
  {
    v76 = v94;
    v96 = v65;
    v77 = v91;
    (v90[0])(v94, v65, v91);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v100[0] = v81;
      *v80 = 136315138;
      GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
      v82 = v76;
      v83 = v77;
      sub_1000AB590(&qword_10025FEA0, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v84 = Set.description.getter();
      v86 = v85;

      v87 = v82;
      v88 = v97;
      (v97)(v87, v77);
      v89 = sub_10002510C(v84, v86, v100);

      *(v80 + 4) = v89;
      v77 = v83;
      _os_log_impl(&_mh_execute_header, v78, v79, "Got more than one reasons, falling back to generic message. [%s]", v80, 0xCu);
      sub_10000F4B4(v81);
    }

    else
    {

      v88 = v97;
      (v97)(v76, v77);
    }

    LocalizedStringKey.init(stringLiteral:)();
    v75 = Text.init(_:tableName:bundle:comment:)();
    (v88)(v96, v77);
    return v75;
  }

  v71 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
  v72 = v93;
  sub_1000A7068(v71, v93);

  v73 = v98;
  v67 = v99;
  result = (*(v98 + 48))(v72, 1, v99);
  if (result != 1)
  {
    v15 = v92;
    (*(v73 + 32))(v92, v72, v67);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t WritingToolsModel.init(hostIsReady:writingToolsDelegate:)(int a1, uint64_t a2)
{
  v2 = sub_1000AA9F8(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1000AA078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v7, v4);
  sub_10015CCC8(0, 0, v11, &unk_1001D5320, v15);
}

uint64_t sub_1000AA274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v6 = type metadata accessor for NWPath.Status();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AA378, v10, v9);
}

uint64_t sub_1000AA378()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 64);
    NWPath.status.getter();
    (*(v7 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v6);
    v9 = static NWPath.Status.== infix(_:_:)() & 1;
    v10 = *(v7 + 8);
    v10(v5, v6);
    v10(v4, v6);
    if (v9 == *(Strong + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable))
    {
      *(Strong + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable) = v9;
    }

    else
    {
      swift_getKeyPath();
      v11 = swift_task_alloc();
      *(v11 + 16) = Strong;
      *(v11 + 24) = v9;
      *(v0 + 40) = Strong;
      sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  **(v0 + 48) = Strong == 0;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t WritingToolsModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_10000F428(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v4 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  v5 = type metadata accessor for GenerativeModelsAvailability.Availability();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_100037D88(v0 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__writingToolsDelegate);
  v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel_networkMonitor);

  v7 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel___observationRegistrar;
  v8 = type metadata accessor for ObservationRegistrar();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t WritingToolsModel.__deallocating_deinit()
{
  WritingToolsModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000AA6DC()
{
  v1 = v0;
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.assetIsNotReady(_:) && v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.startupInProgress(_:) && v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.siriAssetIsNotReady(_:) && v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:) && v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.useCaseDisabled(_:) && v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.pendingEnrollment(_:) && v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.mdmAndParentalControl(_:) && v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.signInNotAllowed(_:) && v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.signInRequired(_:) && v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.workspaceNotAllowed(_:) && v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.useCaseDoesNotAllowCurrentIPCountryCode(_:) && v7 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.forced(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  LocalizedStringKey.init(stringLiteral:)();
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_1000AA938@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1000AA9F8(int a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  v60 = a1;
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  __chkstk_darwin(v4);
  v61 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v57 = *(v59 - 8);
  v7 = *(v57 + 64);
  __chkstk_darwin(v59);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v56 = *(v58 - 8);
  v9 = *(v56 + 64);
  __chkstk_darwin(v58);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for GenerativeModelsAvailability();
  v52 = *(v54 - 8);
  v11 = *(v52 + 64);
  __chkstk_darwin(v54);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_queue.Attributes();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v19 = type metadata accessor for DispatchQoS();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = type metadata accessor for ProofreadingModel();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v2 + 16) = sub_1001A8C78();
  v24 = type metadata accessor for CompositionModel(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v2 + 32) = sub_1000947BC();
  *(v2 + 40) = 1;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__hostDidAddRemoteView) = 0;
  v27 = v2 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__auditedHostPID;
  *v27 = 0;
  *(v27 + 4) = 1;
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__isPopoverDetached) = 0;
  v28 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel_networkMonitor;
  v29 = type metadata accessor for NWPathMonitor();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(v2 + v28) = NWPathMonitor.init()();
  v32 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel_networkQueue;
  sub_1000AB544();
  static DispatchQoS.unspecified.getter();
  v64 = _swiftEmptyArrayStorage;
  sub_1000AB590(&unk_10025A9D0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000341C(&qword_10025FEC0, &qword_1001CE1A8);
  sub_1000AB5D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v48 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v49);
  *(v2 + v32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable) = 1;
  ObservationRegistrar.init()();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  v33 = type metadata accessor for RewritingModel();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v36 = sub_1000C4758(0, 0, 0, 0);
  swift_unknownObjectRelease();
  *(v3 + 24) = v36;
  *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__hostIsReady) = v60;
  v37 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__writingToolsDelegate;
  swift_unknownObjectRetain();
  sub_100037D88(v3 + v37);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  (*(v57 + 104))(v53, enum case for GenerativeModelsAvailability.LanguageOption.any(_:), v59);
  v38 = v51;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  v39 = v50;
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v56 + 8))(v38, v58);
  v40 = v61;
  GenerativeModelsAvailability.availability.getter();
  (*(v52 + 8))(v39, v54);
  (*(v62 + 32))(v3 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability, v40, v63);
  v41 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel_networkMonitor;
  v42 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel_networkMonitor);
  swift_allocObject();
  swift_weakInit();

  NWPathMonitor.pathUpdateHandler.setter();

  v43 = *(v3 + v41);
  v44 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel_networkQueue);

  v45 = v44;
  NWPathMonitor.start(queue:)();

  return v3;
}

uint64_t type metadata accessor for WritingToolsModel()
{
  result = qword_10025FA68;
  if (!qword_10025FA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AB14C()
{
  result = type metadata accessor for GenerativeModelsAvailability.Availability();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000AB298()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10007137C();
}

BOOL sub_1000AB31C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 != 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return a6 || ((a3 ^ a7) & 1) != 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 1;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v9 ^ v10))
              {
                return 1;
              }
            }

            return 0;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 != 2 || a7 | a6 | a5;
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 1;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 1;
      }

      if (!(a7 | a6))
      {
        return 0;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 1;
    }

    if (a3)
    {
      return !a7 || (a2 != a6 || a3 != a7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
    }

    if (!a7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000AB4CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_1000AB508()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

unint64_t sub_1000AB544()
{
  result = qword_10025D5D0;
  if (!qword_10025D5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025D5D0);
  }

  return result;
}

uint64_t sub_1000AB590(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000AB5D8()
{
  result = qword_10025A9E0;
  if (!qword_10025A9E0)
  {
    sub_100003E34(&qword_10025FEC0, &qword_1001CE1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025A9E0);
  }

  return result;
}

uint64_t sub_1000AB63C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AB67C()
{
  v1 = type metadata accessor for NWPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AB748(uint64_t a1)
{
  v4 = *(type metadata accessor for NWPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100028688;

  return sub_1000AA274(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000AB840()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_1000AB894()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - v9;
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  sub_10000341C(&qword_10025F4E8, &unk_1001DF3A0);
  v13 = *(v1 + 72);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v25 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001CF9F0;
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  v16 = *(v2 + 48);
  result = v16(v12, 1, v0);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v23 = v15;
  v18 = v15 + v14;
  v19 = *(v2 + 32);
  v19(v18, v12, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  result = v16(v10, 1, v0);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v20 = v25;
  v19(v18 + v25, v10, v0);
  static UTType.data.getter();
  v21 = v24;
  UTType.init(mimeType:conformingTo:)();
  result = v16(v21, 1, v0);
  if (result != 1)
  {
    result = (v19)(v18 + 2 * v20, v21, v0);
    qword_1002770A0 = v23;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000ABBD4()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v42 - v10;
  v12 = objc_allocWithZone(NSData);
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v16 = [v12 initWithContentsOfURL:v14];

  if (!v16)
  {
    return 0;
  }

  URL.pathExtension.getter();
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  v17 = v16;
  v18 = String._bridgeToObjectiveC()();
  sub_1000AC404(v11, v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_10000F500(v9, &qword_10025F4E0, &unk_1001D1110);
  }

  else
  {
    UTType.identifier.getter();
    (*(v3 + 8))(v9, v2);
  }

  v19 = String._bridgeToObjectiveC()();

  v20 = CopyHTMLForIWorkDataWithUTI();

  if (!v20)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {

LABEL_12:
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000F34C(v32, qword_100276EF0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to copy HTML for iWork file", v35, 2u);

LABEL_35:
      sub_10000F500(v11, &qword_10025F4E0, &unk_1001D1110);
      return 0;
    }

LABEL_34:
    goto LABEL_35;
  }

  v22 = v21;
  *&v52 = 0xD000000000000013;
  *(&v52 + 1) = 0x80000001001E56A0;
  v23 = [v21 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  result = swift_unknownObjectRelease();
  if (v23)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100008150(&v48, &v52);
    v45 = sub_1000081B0(0, &qword_10025FF68, NSData_ptr);
    swift_dynamicCast();
    v25 = *&v47[0];
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    v44 = v25;

    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    v30 = v29;
    result = sub_10004DD08(v26, v28);
    if (v30)
    {

      strcpy(&v48, "HTMLResources");
      HIWORD(v48) = -4864;
      v31 = [v22 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v31)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      v52 = v48;
      v53 = v49;
      if (*(&v49 + 1))
      {
        sub_1000081B0(0, &unk_10025FF70, NSDictionary_ptr);
        if (swift_dynamicCast())
        {
          v43 = *&v47[0];
          NSDictionary.makeIterator()();
          NSDictionary.Iterator.next()();
          v52 = v48;
          v53 = v49;
          v54 = v50;
          for (i = v51; *(&v49 + 1); i = v51)
          {
            sub_100008150(&v54, &v48);
            sub_100008150(&v52, v47);
            if ((swift_dynamicCast() & 1) != 0 && (v36._countAndFlagsBits = 0x2E77656976657270, v36._object = 0xEB00000000666470, v37 = String.hasSuffix(_:)(v36), , v37))
            {
              sub_100008150(&v48, v47);
              if (swift_dynamicCast())
              {
                sub_10000F500(v11, &qword_10025F4E0, &unk_1001D1110);

                return v46;
              }
            }

            else
            {
              sub_10000F4B4(&v48);
            }

            NSDictionary.Iterator.next()();
            v52 = v48;
            v53 = v49;
            v54 = v50;
          }

          sub_10000F500(v11, &qword_10025F4E0, &unk_1001D1110);

          return 0;
        }
      }

      else
      {
        sub_10000F500(&v52, &qword_10025F510, &unk_1001D49B0);
      }

      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_10000F34C(v38, qword_100276EF0);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to extract HTML resources", v41, 2u);

        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AC404(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AC474(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000AC4BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000AC528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_1000AC5D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000A71C8(v4);
}

uint64_t sub_1000AC600@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_1000AC6AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000A73A0(v4);
}

uint64_t sub_1000AC6D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 72);
  *(a2 + 24) = v7;
  return sub_10000F3F4(v4, v5, v6, v7);
}

uint64_t sub_1000AC794(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a1 + 24);
  sub_10000F3F4(*a1, v3, v4, v6);
  return sub_1000A79E4(v2, v3, v4, v6);
}

uint64_t sub_1000AC7F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1000AC8AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000AC978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a3;
  v63 = a4;
  v55 = a2;
  v61 = a1;
  v60 = a5;
  v5 = sub_10000341C(&qword_10025FF80, &qword_1001D5408);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v12 = sub_10000341C(&qword_10025FF88, &qword_1001D5410);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v50 - v14;
  v16 = sub_10000341C(&qword_10025FF90, &qword_1001D5418);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v51 = &v50 - v19;
  v53 = sub_10000341C(&qword_10025FF98, &qword_1001D5420);
  v20 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v22 = &v50 - v21;
  v56 = sub_10000341C(&qword_10025FFA0, &qword_1001D5428);
  v57 = *(v56 - 8);
  v23 = *(v57 + 64);
  __chkstk_darwin(v56);
  v52 = &v50 - v24;
  v58 = sub_10000341C(&qword_10025FFA8, &qword_1001D5430);
  v59 = *(v58 - 8);
  v25 = *(v59 + 64);
  __chkstk_darwin(v58);
  v54 = &v50 - v26;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v27 = &v15[*(sub_10000341C(&qword_10025FFB0, &qword_1001D5438) + 44)];
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v28 = sub_10000341C(&qword_10025FFB8, &qword_1001D5440);
  sub_1000AD070(v61, v62, v63, &v11[*(v28 + 44)]);
  sub_1000081F8(v11, v9, &qword_10025FF80, &qword_1001D5408);
  *v27 = 0;
  v27[8] = 1;
  v29 = sub_10000341C(&qword_10025FFC0, &qword_1001D5448);
  sub_1000081F8(v9, &v27[*(v29 + 48)], &qword_10025FF80, &qword_1001D5408);
  v30 = &v27[*(v29 + 64)];
  *v30 = 0;
  v30[8] = 1;
  sub_10000F500(v11, &qword_10025FF80, &qword_1001D5408);
  sub_10000F500(v9, &qword_10025FF80, &qword_1001D5408);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v31 = v51;
  sub_10002A894(v15, v51, &qword_10025FF88, &qword_1001D5410);
  v32 = (v31 + *(v17 + 44));
  v33 = v73;
  v32[4] = v72;
  v32[5] = v33;
  v32[6] = v74;
  v34 = v69;
  *v32 = v68;
  v32[1] = v34;
  v35 = v71;
  v32[2] = v70;
  v32[3] = v35;
  v36 = static SafeAreaRegions.all.getter();
  LOBYTE(v9) = static Edge.Set.all.getter();
  sub_10002A894(v31, v22, &qword_10025FF90, &qword_1001D5418);
  v37 = v53;
  v38 = &v22[*(v53 + 36)];
  *v38 = v36;
  v38[8] = v9;
  v39 = type metadata accessor for WritingToolsModel();
  v40 = sub_1000ADC50();
  v41 = sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  v42 = v52;
  View.environment<A>(_:)();
  sub_10000F500(v22, &qword_10025FF98, &qword_1001D5420);
  v64 = v62;
  v65 = v63;
  sub_10000341C(&qword_10025FFE8, &qword_1001D5450);
  State.wrappedValue.getter();
  v43 = type metadata accessor for PresentationModel();
  v64 = v37;
  v65 = v39;
  v66 = v40;
  v67 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_1000ADE40(&qword_10025A910, type metadata accessor for PresentationModel);
  v46 = v54;
  v47 = v56;
  View.environment<A>(_:)();

  (*(v57 + 8))(v42, v47);
  type metadata accessor for CommonUIManager();
  v64 = v47;
  v65 = v43;
  v66 = OpaqueTypeConformance2;
  v67 = v45;
  swift_getOpaqueTypeConformance2();
  sub_1000ADE40(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  v48 = v58;
  View.environment<A>(_:)();
  return (*(v59 + 8))(v46, v48);
}

uint64_t sub_1000AD070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_10000341C(&qword_10025FFF0, &qword_1001D5458);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  sub_1000AD294(a1, a2, a3, &v24 - v14);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = &v15[*(v9 + 44)];
  v17 = v28;
  *v16 = v27;
  *(v16 + 1) = v17;
  *(v16 + 2) = v29;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v25 = v32;
  v26 = v30;
  v18 = v35;
  v24 = v34;
  v38 = 1;
  v37 = v31;
  v36 = v33;
  sub_1000081F8(v15, v13, &qword_10025FFF0, &qword_1001D5458);
  v19 = v38;
  LOBYTE(a1) = v37;
  LOBYTE(a2) = v36;
  *a4 = 0;
  *(a4 + 8) = 1;
  v20 = sub_10000341C(&qword_10025FFF8, &qword_1001D5460);
  sub_1000081F8(v13, a4 + *(v20 + 48), &qword_10025FFF0, &qword_1001D5458);
  v21 = a4 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = v19;
  v22 = v25;
  *(v21 + 16) = v26;
  *(v21 + 24) = a1;
  *(v21 + 32) = v22;
  *(v21 + 40) = a2;
  *(v21 + 48) = v24;
  *(v21 + 56) = v18;
  sub_10000F500(v15, &qword_10025FFF0, &qword_1001D5458);
  return sub_10000F500(v13, &qword_10025FFF0, &qword_1001D5458);
}

uint64_t sub_1000AD294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(&v52 + 1) = a3;
  *&v52 = a2;
  v56 = a4;
  v53 = sub_10000341C(&qword_100260000, &qword_1001D5468);
  v5 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v7 = &v49 - v6;
  v55 = sub_10000341C(&qword_100260008, &qword_1001D5470);
  v8 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v10 = &v49 - v9;
  v11 = type metadata accessor for CompositionInputDashboardView(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10000341C(&qword_100260010, &qword_1001D5478);
  v15 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v17 = &v49 - v16;
  swift_getKeyPath();
  *&v67 = a1;
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  if (*(a1 + 72))
  {
    if (v21 == 1)
    {
      v49 = v10;
      v22 = v18;
      v51 = v18;
      swift_getKeyPath();
      *&v67 = a1;
      v23 = v22;
      v24 = v19;
      sub_10000F414(v23, v19);
      v50 = v20;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = *(a1 + 32);
      v61 = v52;

      sub_10000341C(&qword_10025FFE8, &qword_1001D5450);
      State.projectedValue.getter();
      sub_100157428(v25, v67, *(&v67 + 1), v68, v14);
      sub_1000ADDDC(v14, v7);
      swift_storeEnumTagMultiPayload();
      sub_1000ADE40(&qword_100260018, type metadata accessor for CompositionInputDashboardView);
      v26 = v49;
      _ConditionalContent<>.init(storage:)();
      sub_1000081F8(v26, v17, &qword_100260008, &qword_1001D5470);
      swift_storeEnumTagMultiPayload();
      sub_10000341C(&qword_100260020, &qword_1001D54D0);
      sub_1000ADE88();
      sub_1000ADFBC();
      _ConditionalContent<>.init(storage:)();
      sub_10000F428(v51, v24, v50, 1);
      sub_10000F500(v26, &qword_100260008, &qword_1001D5470);
      return sub_1000AE078(v14);
    }

    else if (v21 == 2 && v18 == 1 && !(v20 | v19))
    {
      swift_getKeyPath();
      *&v67 = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_unknownObjectWeakLoadStrong();
      swift_getKeyPath();
      *&v67 = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v33 = *(a1 + 16);
      type metadata accessor for PresentationModel();
      sub_1000ADE40(&qword_10025A910, type metadata accessor for PresentationModel);

      v34 = Environment.init<A>(_:)();
      v36 = v35;
      *&v61 = v33;
      type metadata accessor for ProofreadingModel();

      State.init(wrappedValue:)();
      v37 = v67;
      LOBYTE(v61) = 0;
      State.init(wrappedValue:)();

      swift_unknownObjectRelease();
      v60 = v36 & 1;
      v57 = 0;
      *&v61 = v34;
      BYTE8(v61) = v36 & 1;
      *(&v61 + 9) = *v59;
      HIDWORD(v61) = *&v59[3];
      v62 = v37;
      LOBYTE(v63) = v67;
      *(&v63 + 1) = *v58;
      DWORD1(v63) = *&v58[3];
      *(&v63 + 1) = *(&v67 + 1);
      v65 = v73;
      v64 = v72;
      v66 = 0;
      j__swift_retain();
      sub_1000ADF14();
      sub_1000ADF68();

      _ConditionalContent<>.init(storage:)();
      v38 = v70;
      *(v17 + 2) = v69;
      *(v17 + 3) = v38;
      *(v17 + 32) = v71;
      v39 = v68;
      *v17 = v67;
      *(v17 + 1) = v39;
      swift_storeEnumTagMultiPayload();
      sub_10000341C(&qword_100260020, &qword_1001D54D0);
      sub_1000ADE88();
      sub_1000ADFBC();
      _ConditionalContent<>.init(storage:)();
      j__swift_release();
    }

    else
    {
      *&v67 = 0;
      *(&v67 + 1) = 0xE000000000000000;
      sub_10000F3F4(v18, v19, v20, v21);
      _StringGuts.grow(_:)(54);
      v40._object = 0x80000001001E5790;
      v40._countAndFlagsBits = 0xD000000000000034;
      String.append(_:)(v40);
      swift_getKeyPath();
      *&v61 = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = *(a1 + 48);
      v42 = *(a1 + 56);
      v43 = *(a1 + 64);
      v44 = *(a1 + 72);
      sub_10000F3F4(v41, v42, v43, v44);
      v45 = sub_100106A3C();
      v47 = v46;
      sub_10000F428(v41, v42, v43, v44);
      v48._countAndFlagsBits = v45;
      v48._object = v47;
      String.append(_:)(v48);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    v28 = *(a1 + 48);
    swift_getKeyPath();
    *&v67 = a1;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v29 = *(a1 + 24);

    sub_10019B2E4(&v72, v30);
    v63 = v74;
    v64 = v75;
    v65 = v76;
    v62 = v73;
    v61 = v72;
    v59[0] = 1;
    v66 = 1;
    sub_1000AE0F0(&v72, &v67);
    sub_1000ADF14();
    sub_1000ADF68();
    _ConditionalContent<>.init(storage:)();
    v31 = v70;
    *(v17 + 2) = v69;
    *(v17 + 3) = v31;
    *(v17 + 32) = v71;
    v32 = v68;
    *v17 = v67;
    *(v17 + 1) = v32;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_100260020, &qword_1001D54D0);
    sub_1000ADE88();
    sub_1000ADFBC();
    _ConditionalContent<>.init(storage:)();
    sub_10000F428(v28, v19, v20, 0);
    return sub_1000AE14C(&v72);
  }

  return result;
}

unint64_t sub_1000ADC50()
{
  result = qword_10025FFC8;
  if (!qword_10025FFC8)
  {
    sub_100003E34(&qword_10025FF98, &qword_1001D5420);
    sub_1000ADCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025FFC8);
  }

  return result;
}

unint64_t sub_1000ADCDC()
{
  result = qword_10025FFD0;
  if (!qword_10025FFD0)
  {
    sub_100003E34(&qword_10025FF90, &qword_1001D5418);
    sub_1000ADD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025FFD0);
  }

  return result;
}

unint64_t sub_1000ADD68()
{
  result = qword_10025FFD8;
  if (!qword_10025FFD8)
  {
    sub_100003E34(&qword_10025FF88, &qword_1001D5410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025FFD8);
  }

  return result;
}

uint64_t sub_1000ADDDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositionInputDashboardView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ADE40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000ADE88()
{
  result = qword_100260028;
  if (!qword_100260028)
  {
    sub_100003E34(&qword_100260020, &qword_1001D54D0);
    sub_1000ADF14();
    sub_1000ADF68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260028);
  }

  return result;
}

unint64_t sub_1000ADF14()
{
  result = qword_100260030;
  if (!qword_100260030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260030);
  }

  return result;
}

unint64_t sub_1000ADF68()
{
  result = qword_100260038;
  if (!qword_100260038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260038);
  }

  return result;
}

unint64_t sub_1000ADFBC()
{
  result = qword_100260040;
  if (!qword_100260040)
  {
    sub_100003E34(&qword_100260008, &qword_1001D5470);
    sub_1000ADE40(&qword_100260018, type metadata accessor for CompositionInputDashboardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260040);
  }

  return result;
}

uint64_t sub_1000AE078(uint64_t a1)
{
  v2 = type metadata accessor for CompositionInputDashboardView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AE1C4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1000AE1F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000A8F44();
}

uint64_t sub_1000AE214()
{
  sub_100003E34(&qword_10025FFA8, &qword_1001D5430);
  type metadata accessor for CommonUIManager();
  sub_100003E34(&qword_10025FFA0, &qword_1001D5428);
  type metadata accessor for PresentationModel();
  sub_100003E34(&qword_10025FF98, &qword_1001D5420);
  type metadata accessor for WritingToolsModel();
  sub_1000ADC50();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  swift_getOpaqueTypeConformance2();
  sub_1000ADE40(&qword_10025A910, type metadata accessor for PresentationModel);
  swift_getOpaqueTypeConformance2();
  sub_1000ADE40(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000AE3C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000AE3DC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000AE408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1000AE450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000AE4E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AF7A8(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);
}

uint64_t sub_1000AE594(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000735BC(v4);
}

double sub_1000AE5C0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContainerBackgroundPlacement();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_100260048, &qword_1001D5668);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = sub_10000341C(&qword_100260050, &qword_1001D5670);
  sub_1000AE800(v2, &v12[*(v13 + 44)]);
  *&v17[0] = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  sub_100007120(&qword_100260058, &qword_100260048, &qword_1001D5668);
  View.containerBackground<A>(_:for:)();
  (*(v5 + 8))(v8, v4);

  sub_10000F500(v12, &qword_100260048, &qword_1001D5668);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = (a1 + *(sub_10000341C(&qword_100260060, &qword_1001D5678) + 36));
  v15 = v17[1];
  *v14 = v17[0];
  v14[1] = v15;
  result = *&v18;
  v14[2] = v18;
  return result;
}

uint64_t sub_1000AE800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100260068, &qword_1001D5680);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_10000341C(&qword_100260070, &qword_1001D5688);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  *v17 = static HorizontalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = sub_10000341C(&qword_100260078, &qword_1001D5690);
  sub_1000AEA38(a1, &v17[*(v18 + 44)]);
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = sub_10000341C(&qword_100260080, &qword_1001D5698);
  sub_1000AF00C(a1, &v10[*(v19 + 44)]);
  sub_1000081F8(v17, v15, &qword_100260070, &qword_1001D5688);
  sub_1000AF6F4(v10, v8);
  sub_1000081F8(v15, a2, &qword_100260070, &qword_1001D5688);
  v20 = sub_10000341C(&qword_100260088, &qword_1001D56A0);
  sub_1000AF6F4(v8, a2 + *(v20 + 48));
  sub_10000F500(v10, &qword_100260068, &qword_1001D5680);
  sub_10000F500(v17, &qword_100260070, &qword_1001D5688);
  sub_10000F500(v8, &qword_100260068, &qword_1001D5680);
  return sub_10000F500(v15, &qword_100260070, &qword_1001D5688);
}

uint64_t sub_1000AEA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_1002600B0, &qword_1001DA0A0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  sub_1000AF764(a1, v22);
  v12 = swift_allocObject();
  v13 = v22[7];
  v12[7] = v22[6];
  v12[8] = v13;
  v12[9] = v22[8];
  v14 = v22[3];
  v12[3] = v22[2];
  v12[4] = v14;
  v15 = v22[5];
  v12[5] = v22[4];
  v12[6] = v15;
  v16 = v22[1];
  v12[1] = v22[0];
  v12[2] = v16;
  sub_10000341C(&qword_1002600B8, &qword_1001D56E0);
  sub_1000AF918();
  Button.init(action:label:)();
  v17 = v5[2];
  v17(v9, v11, v4);
  *a2 = 0;
  *(a2 + 8) = 1;
  v18 = sub_10000341C(&qword_1002600E8, &qword_1001D5718);
  v17((a2 + *(v18 + 48)), v9, v4);
  v19 = a2 + *(v18 + 64);
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v5[1];
  v20(v11, v4);
  return (v20)(v9, v4);
}

uint64_t sub_1000AEC6C(uint64_t a1)
{
  v2 = *(a1 + 40);
  swift_getKeyPath();
  *&v10 = v2;
  sub_1000AF7A8(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  sub_1001734FC();

  v4 = *(a1 + 136);
  v10 = *(a1 + 120);
  v11 = v4;
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.setter();
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  LOBYTE(v10) = *(a1 + 80);
  *(&v10 + 1) = v5;
  LOBYTE(v11) = v6;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  sub_1000081F8(a1, &v10, &qword_1002600A8, &unk_1001D56D0);
  v7 = v12;
  if (!v12)
  {
    return sub_10000F500(&v10, &qword_1002600A8, &unk_1001D56D0);
  }

  v8 = v13;
  sub_100027874(&v10, v12);
  (*(v8 + 8))(v7, v8);
  return sub_10000F4B4(&v10);
}

uint64_t sub_1000AEE88@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = a1 + *(sub_10000341C(&unk_100262F20, &qword_1001D56F8) + 36);
  TintShapeStyle.init()();
  *a1 = v2;
  v4 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(sub_10000341C(&unk_100262F10, &qword_1001D56F0) + 36));
  *v6 = KeyPath;
  v6[1] = v4;
  LOBYTE(v4) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(sub_10000341C(&unk_100262F00, &qword_1001D56E8) + 36);
  *v15 = v4;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  if (qword_10025A7B8 != -1)
  {
    swift_once();
  }

  v16 = qword_100277168;
  v17 = static Alignment.center.getter();
  v19 = v18;
  v20 = a1 + *(sub_10000341C(&qword_1002600B8, &qword_1001D56E0) + 36);
  *v20 = v16;
  *(v20 + 4) = 256;
  *(v20 + 2) = v17;
  *(v20 + 3) = v19;
}

uint64_t sub_1000AF00C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v51 = a2;
  v3 = sub_10000341C(&qword_100260090, &qword_1001D56A8);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  v5 = __chkstk_darwin(v3);
  v48 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v35 - v7;
  v8 = *(a1 + 136);
  v52 = *(a1 + 120);
  *&v53 = v8;
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.projectedValue.getter();
  v46 = v72;
  v44 = *(&v73 + 1);
  v45 = v73;
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  LOBYTE(v72) = *(a1 + 80);
  *(&v72 + 1) = v9;
  LOBYTE(v73) = v10;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  v42 = *(&v52 + 1);
  v43 = v52;
  v41 = v53;
  sub_1000AF764(a1, &v72);
  v11 = swift_allocObject();
  v12 = v79;
  v11[7] = v78;
  v11[8] = v12;
  v11[9] = v80;
  v13 = v75;
  v11[3] = v74;
  v11[4] = v13;
  v14 = v77;
  v11[5] = v76;
  v11[6] = v14;
  v15 = v73;
  v11[1] = v72;
  v11[2] = v15;
  type metadata accessor for WritingToolsModel();
  sub_1000AF7A8(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  v39 = Environment.init<A>(_:)();
  v37 = v16;
  type metadata accessor for CompositionModel(0);
  v40 = sub_1000AF7A8(&qword_10025B210, type metadata accessor for CompositionModel);
  v17 = Environment.init<A>(_:)();
  v19 = v18;
  LOBYTE(v52) = 0;
  State.init(wrappedValue:)();
  v36 = v72;
  v38 = *(&v72 + 1);
  LOBYTE(v52) = 0;
  State.init(wrappedValue:)();
  v20 = v72;
  v35 = *(&v72 + 1);
  LOBYTE(v52) = 0;
  State.init(wrappedValue:)();
  v21 = v72;
  v22 = *(&v72 + 1);
  *&v52 = _swiftEmptyArrayStorage;
  sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  State.init(wrappedValue:)();
  v71 = v37 & 1;
  v69 = v19 & 1;
  *&v52 = v39;
  BYTE8(v52) = v37 & 1;
  *(&v52 + 9) = *v70;
  HIDWORD(v52) = *&v70[3];
  *&v53 = v17;
  BYTE8(v53) = v19 & 1;
  *(&v53 + 9) = *v68;
  HIDWORD(v53) = *&v68[3];
  v54 = v46;
  *&v55 = v45;
  *(&v55 + 1) = v44;
  *&v56 = v43;
  *(&v56 + 1) = v42;
  LOWORD(v57) = v41;
  WORD3(v57) = v67;
  *(&v57 + 2) = *&v66[7];
  *(&v57 + 1) = sub_1000AF7A0;
  *&v58 = v11;
  BYTE8(v58) = 0;
  HIDWORD(v58) = *&v66[3];
  *(&v58 + 9) = *v66;
  LOBYTE(v59) = v36;
  *(&v59 + 1) = *v65;
  DWORD1(v59) = *&v65[3];
  *(&v59 + 1) = v38;
  LOBYTE(v60) = v20;
  DWORD1(v60) = *&v64[3];
  *(&v60 + 1) = *v64;
  *(&v60 + 1) = v35;
  LOBYTE(v61) = v21;
  DWORD1(v61) = *&v63[3];
  *(&v61 + 1) = *v63;
  *(&v61 + 1) = v22;
  v62 = v72;
  v23 = *(a1 + 40);
  sub_1000AF7F0();
  v24 = v47;
  View.environment<A>(_:)();
  v80 = v60;
  v81 = v61;
  v82 = v62;
  v76 = v56;
  v77 = v57;
  v78 = v58;
  v79 = v59;
  v72 = v52;
  v73 = v53;
  v74 = v54;
  v75 = v55;
  sub_1000AF844(&v72);
  v26 = v48;
  v25 = v49;
  v27 = *(v49 + 16);
  v28 = v50;
  v27(v48, v24, v50);
  v29 = v51;
  *v51 = 0;
  *(v29 + 8) = 1;
  v30 = v29;
  v31 = sub_10000341C(&qword_1002600A0, &qword_1001D56C8);
  v27(&v30[*(v31 + 48)], v26, v28);
  v32 = &v30[*(v31 + 64)];
  *v32 = 0;
  v32[8] = 1;
  v33 = *(v25 + 8);
  v33(v24, v28);
  return (v33)(v26, v28);
}

uint64_t sub_1000AF544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000081F8(a3, v8, &qword_1002600A8, &unk_1001D56D0);
  v5 = v9;
  if (!v9)
  {
    return sub_10000F500(v8, &qword_1002600A8, &unk_1001D56D0);
  }

  v6 = v10;
  sub_100027874(v8, v9);
  (*(v6 + 16))(a1, a2, v5, v6);
  return sub_10000F4B4(v8);
}

double sub_1000AF600@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  State.init(wrappedValue:)();
  *(a3 + 48) = v8;
  *(a3 + 56) = *(&v8 + 1);
  State.init(wrappedValue:)();
  *(a3 + 64) = v8;
  *(a3 + 72) = *(&v8 + 1);
  *(a3 + 80) = FocusState.init<>()() & 1;
  *(a3 + 88) = v5;
  *(a3 + 96) = v6 & 1;
  State.init(wrappedValue:)();
  *(a3 + 104) = v8;
  *(a3 + 112) = *(&v8 + 1);
  State.init(wrappedValue:)();
  result = *&v8;
  *(a3 + 120) = v8;
  *(a3 + 136) = v9;
  return result;
}

uint64_t sub_1000AF6F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100260068, &qword_1001D5680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AF7A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000AF7F0()
{
  result = qword_100262C60;
  if (!qword_100262C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262C60);
  }

  return result;
}

uint64_t sub_1000AF898()
{
  if (v0[5])
  {
    sub_10000F4B4(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[16];

  v6 = v0[18];

  v7 = v0[19];

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_1000AF918()
{
  result = qword_100262EF0;
  if (!qword_100262EF0)
  {
    sub_100003E34(&qword_1002600B8, &qword_1001D56E0);
    sub_1000AF9D0();
    sub_100007120(&qword_1002600E0, &qword_100262F40, &qword_1001D5710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262EF0);
  }

  return result;
}

unint64_t sub_1000AF9D0()
{
  result = qword_1002600C0;
  if (!qword_1002600C0)
  {
    sub_100003E34(&unk_100262F00, &qword_1001D56E8);
    sub_1000AFA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002600C0);
  }

  return result;
}

unint64_t sub_1000AFA5C()
{
  result = qword_1002600C8;
  if (!qword_1002600C8)
  {
    sub_100003E34(&unk_100262F10, &qword_1001D56F0);
    sub_1000AFB14();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002600C8);
  }

  return result;
}

unint64_t sub_1000AFB14()
{
  result = qword_1002600D0;
  if (!qword_1002600D0)
  {
    sub_100003E34(&unk_100262F20, &qword_1001D56F8);
    sub_100007120(&qword_1002600D8, &unk_100262F30, &unk_1001D5700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002600D0);
  }

  return result;
}

uint64_t sub_1000AFBD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000735BC(v4);
}

unint64_t sub_1000AFC08()
{
  result = qword_1002600F0;
  if (!qword_1002600F0)
  {
    sub_100003E34(&qword_100260060, &qword_1001D5678);
    sub_100003E34(&qword_100260048, &qword_1001D5668);
    sub_100007120(&qword_100260058, &qword_100260048, &qword_1001D5668);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002600F0);
  }

  return result;
}

id sub_1000AFD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate;
  *&v4[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate] = 0;
  v7 = &v4[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_preferredContentSizeHandler];
  *v7 = a1;
  *(v7 + 1) = a2;
  *&v4[v6] = a3;
  *&v4[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_compositionModel] = a4;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  swift_unknownObjectRetain();
  swift_retain_n();

  sub_1000AF600(v19, a4, &v21);
  v8 = &v4[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_promptEntryView];
  v9 = v28;
  *(v8 + 6) = v27;
  *(v8 + 7) = v9;
  *(v8 + 8) = v29;
  v10 = v24;
  *(v8 + 2) = v23;
  *(v8 + 3) = v10;
  v11 = v26;
  *(v8 + 4) = v25;
  *(v8 + 5) = v11;
  v12 = v22;
  *v8 = v21;
  *(v8 + 1) = v12;
  v13 = type metadata accessor for PromptEntryViewController();
  v18.receiver = v4;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  *(&v22 + 1) = v13;
  *&v23 = &off_10024D8A0;
  v15 = v14;

  swift_unknownObjectRelease();

  *&v21 = v15;
  v16 = OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_promptEntryView;
  swift_beginAccess();
  sub_1000B102C(&v21, v15 + v16);
  swift_endAccess();

  return v15;
}

void sub_1000AFEF0()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_promptEntryView;
  swift_beginAccess();
  sub_1000AF764(v0 + v4, v44);
  v5 = objc_allocWithZone(sub_10000341C(&qword_100260148, &unk_1001D57F8));
  v6 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = v6;
  v10 = [v9 view];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  [v8 addSubview:v10];

  v12 = [v9 view];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v1 addChildViewController:v9];
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001CE090;
  v15 = [v9 view];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor:v20];
  *(v14 + 32) = v21;
  v22 = [v9 view];
  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v14 + 40) = v28;
  v29 = [v9 view];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v14 + 48) = v35;
  v36 = [v9 view];

  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = [v36 bottomAnchor];

  v38 = [v1 view];
  if (v38)
  {
    v39 = v38;
    v40 = objc_opt_self();
    v41 = [v39 bottomAnchor];

    v42 = [v37 constraintEqualToAnchor:v41];
    *(v14 + 56) = v42;
    sub_1000B128C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v40 activateConstraints:isa];

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1000B044C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v2;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;
  sub_10015C9C8(0, 0, v8, &unk_1001D57C0, v12);

  v14 = *&v10[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate];
  if (v14)
  {
    result = [*&v10[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate] respondsToSelector:"updatePromptEntryState:"];
    if (result)
    {
      return [v14 updatePromptEntryState:2];
    }
  }

  return result;
}

uint64_t sub_1000B05C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v9;
  v6[13] = v8;

  return _swift_task_switch(sub_1000B06A0, v9, v8);
}

uint64_t sub_1000B06A0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_compositionModel;
  v0[14] = OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_compositionModel;
  v4 = *(v2 + v3);
  swift_getKeyPath();
  v0[5] = v4;
  sub_1000637F0();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000B11B4(v4 + v5, v1);

  v6 = type metadata accessor for CompositionModel.Session(0);
  LODWORD(v4) = (*(*(v6 - 8) + 48))(v1, 1, v6);
  sub_1000B1224(v1);
  v0[15] = *(v2 + v3);
  if (v4 == 1)
  {

    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_1000B08D0;

    return sub_10007AB54();
  }

  else
  {

    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_1000B0D58;
    v11 = v0[7];
    v10 = v0[8];

    return sub_10007C390(v11, v10);
  }
}

uint64_t sub_1000B08D0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return _swift_task_switch(sub_1000B0A14, v5, v4);
}

uint64_t sub_1000B0A14()
{
  v1 = v0[10];
  v0[17] = *(v0[6] + v0[14]);

  v0[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[19] = v3;
  v0[20] = v2;

  return _swift_task_switch(sub_1000B0AB4, v3, v2);
}

uint64_t sub_1000B0AB4()
{
  sub_10006CF60("Composition");
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1000B0B60;
  v2 = v0[17];
  v4 = v0[7];
  v3 = v0[8];

  return sub_10007DE34(v4, v3);
}

uint64_t sub_1000B0B60()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return _swift_task_switch(sub_1000B0C80, v4, v3);
}

uint64_t sub_1000B0C80()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[12];
  v4 = v0[13];

  return _swift_task_switch(sub_1000B0CEC, v3, v4);
}

uint64_t sub_1000B0CEC()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000B0D58()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return _swift_task_switch(sub_1000B132C, v5, v4);
}

id sub_1000B0ECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromptEntryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000B0F94()
{
  v1 = *(*v0 + OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate);
  if (v1 && ([v1 respondsToSelector:"updatePromptEntryState:"] & 1) != 0)
  {

    [v1 updatePromptEntryState:3];
  }
}

uint64_t sub_1000B102C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002600A8, &unk_1001D56D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B109C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B10E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100028688;

  return sub_1000B05C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000B11B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1224(uint64_t a1)
{
  v2 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B128C()
{
  result = qword_10025AD00;
  if (!qword_10025AD00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025AD00);
  }

  return result;
}

unint64_t sub_1000B1330()
{
  result = sub_1000058D8(_swiftEmptyArrayStorage);
  qword_1002770A8 = result;
  return result;
}

uint64_t sub_1000B13B8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000B1480(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000B1594()
{
  swift_getKeyPath();
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  if (v1 == 255)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  swift_getKeyPath();
  sub_10000F3F4(v2, v3, v4, v1);
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v5 != 1)
  {
    sub_1000278C0(v2, v3, v4, v1);
    return 0;
  }

  if (v1)
  {
LABEL_18:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions);
  sub_1000278C0(v2, v3, v4, 0);
  if (v2 > 5u)
  {
    if (v2 - 6 >= 2)
    {
      if (v2 == 8)
      {
        if (v8)
        {
          return (v6 >> 2) & 1;
        }
      }

      else if (v8)
      {
        return (v6 >> 3) & 1;
      }
    }

    return 0;
  }

  if (v2 - 2 < 4)
  {
    return v8;
  }

  result = v8;
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000B18A4()
{
  swift_getKeyPath();
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 96) || *(v0 + 72) != 9)
  {
    swift_getKeyPath();
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent);
  }

  else
  {
    swift_getKeyPath();
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) == 1)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      return (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) >> 3) & 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000B1AB0()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions);
}

uint64_t sub_1000B1B5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions);
}

uint64_t sub_1000B1C10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions;
  if (sub_10017CD98(*(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions), a1))
  {
    v4 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000B1D58(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v32 = v1;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
  v9 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
  if (!v9)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    swift_getKeyPath();
    v32 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v2 + v8))
    {
      if (!a1)
      {
        return;
      }

      if (qword_10025A788 != -1)
      {
        swift_once();
      }

      v14 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      sub_10019D084(0, v7);
      goto LABEL_29;
    }

    if (*(v2 + 104))
    {
      KeyPath = swift_getKeyPath();
      v28 = &v28;
      __chkstk_darwin(KeyPath);
      *(&v28 - 2) = v2;
      *(&v28 - 1) = 0;
      v32 = v2;
      sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString))
    {
      v15 = swift_getKeyPath();
      __chkstk_darwin(v15);
      *(&v28 - 2) = v2;
      *(&v28 - 1) = 0;
      v32 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v16 = v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
    if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange + 16))
    {
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 1;
    }

    else
    {
      v17 = swift_getKeyPath();
      __chkstk_darwin(v17);
      *(&v28 - 3) = 0;
      *(&v28 - 2) = 0;
      *(&v28 - 4) = v2;
      *(&v28 - 8) = 1;
      v32 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    sub_100036BF0(0);
    v18 = *(v2 + 136);
    v29 = v4;
    if (v18)
    {
      v19 = swift_getKeyPath();
      __chkstk_darwin(v19);
      *(&v28 - 2) = v2;
      *(&v28 - 1) = 0;
      v32 = v2;
      sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (*(v2 + 144))
      {
LABEL_20:
        v20 = swift_getKeyPath();
        __chkstk_darwin(v20);
        *(&v28 - 2) = v2;
        *(&v28 - 8) = 0;
        v32 = v2;
        sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_25:
        v21 = v29;
        v22 = sub_100005B00(_swiftEmptyArrayStorage);
        sub_1000B3A6C(v22);
        v23 = sub_100005CE8(_swiftEmptyArrayStorage);
        sub_1000B3C40(v23);
        v24 = sub_100005D0C(_swiftEmptyArrayStorage);
        sub_1000B3E44(v24);
        if (qword_10025A788 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        v32 = v2;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v25 = *(v2 + v8);
        if (!v25)
        {
          __break(1u);
          return;
        }

        v26 = [v25 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = qword_1002770A8;
        qword_1002770A8 = 0x8000000000000000;
        sub_1001A9BE8(v2, v7, isUniquelyReferenced_nonNull_native);
        (*(v30 + 8))(v7, v21);
        qword_1002770A8 = v31;
LABEL_29:
        swift_endAccess();
        return;
      }
    }

    else
    {
      if (sub_1000B1594())
      {
        sub_100037954();
      }

      *(v2 + 136) = 0;
      if (*(v2 + 144))
      {
        goto LABEL_20;
      }
    }

    *(v2 + 144) = 0;
    sub_1000374BC(0);
    goto LABEL_25;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &unk_10025D5F0, WTSession_ptr);
  v10 = v9;
  v11 = a1;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1000B24F8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000B2528(v2);
}

void sub_1000B2528(void *a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
  v4 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &unk_10025D5F0, WTSession_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  sub_1000B1D58(v10);
}

uint64_t sub_1000B26F4()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task);
}

uint64_t sub_1000B27A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task);
}

uint64_t sub_1000B2854(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000B2880(v4);
}

uint64_t sub_1000B2880(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task;
  if (!*(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task);

  v5 = static Task.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

void *sub_1000B2A24(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

void sub_1000B2ACC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString;
  v5 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1000B2C64()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange);
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange + 8);
  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange + 16);
  return result;
}

__n128 sub_1000B2D14@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange + 16);
  result = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1000B2DD0(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
  if ((*(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange + 16) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *v4 == result && *(v4 + 8) == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1000B2FA0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_1000B3068@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_1000B313C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1000B31AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (v8 = v6[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000B3314()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);

  return v1;
}

uint64_t sub_1000B33D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
  a2[1] = v4;
}

uint64_t sub_1000B3488(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000B34C8(v2, v3);
}

uint64_t sub_1000B34C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

id sub_1000B3658@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1000B3780(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_10025F4B8, NSNumber_ptr);
  v7 = v6;
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

uint64_t sub_1000B3914@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v5 + v3, a1, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000B39EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000C38DC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1000B3ABC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_1000B3B74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1000B3C7C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);

  LOBYTE(a3) = a3(v8, a1);

  if (a3)
  {
    v9 = *(v3 + v6);
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void (*sub_1000B3E80(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1000B3DCC();
  return sub_1000B3FB8;
}

void sub_1000B3FB8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_1000B404C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v2 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000B41E4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) == (a1 & 1))
  {
    v4 = a1 & 1;

    return sub_1000B404C(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000B4320(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal;
  *(a1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) = a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(a1 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000B4484(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000B454C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000B46A0()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);
}

uint64_t sub_1000B4748(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000B4874(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  v22[0] = v1;
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + 112) & 1) != 0 || (a1 & 1) == 0)
  {
    return result;
  }

  swift_getKeyPath();
  v22[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v1 + 120);
  if (v5)
  {
    v6 = *(v1 + 120);
    swift_getErrorValue();
    swift_errorRetain();
    v7._countAndFlagsBits = Error.localizedDescription.getter();
    v22[0] = 0xD000000000000011;
    v22[1] = 0x80000001001E5A30;
    String.append(_:)(v7);

    v9 = 0xD000000000000011;
    v8 = 0x80000001001E5A30;
    swift_getKeyPath();
    v21[0] = v1;
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v2 + v10, v22, &unk_10025B1C0, &unk_1001CFA90);
    if (v22[3])
    {
      sub_100028458(v22, v21);
      sub_10000F500(v22, &unk_10025B1C0, &unk_1001CFA90);
      v11 = sub_100027874(v21, v21[3]);
      swift_getKeyPath();
      swift_errorRetain();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v12 = *(v2 + 96);
      if (v12 == 255)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      v14 = *(v2 + 80);
      v13 = *(v2 + 88);
      v15 = *(v2 + 72);
      v16 = *v11;
      sub_10000F3F4(v15, v14, v13, *(v2 + 96));
      sub_10000DB64(v5, v15, v14, v13, v12);

      sub_1000278C0(v15, v14, v13, v12);

      sub_10000F4B4(v21);
      v9 = 0xD000000000000011;
    }

    else
    {

      sub_10000F500(v22, &unk_10025B1C0, &unk_1001CFA90);
    }
  }

  else
  {
    v8 = 0xEF73736563637553;
    v9 = 0x203A746C75736552;
  }

  swift_getKeyPath();
  v22[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v2 + 96);
  if (v17 == 255)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = sub_10006CA84(*(v2 + 72), *(v2 + 80), *(v2 + 88), v17);
  if ((v20 & 0x100) == 0)
  {
    sub_10006CC20(v18, v19, v20, v9, v8);
  }
}

uint64_t sub_1000B4C18()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v1;
  sub_10015C9C8(0, 0, v5, &unk_1001D5968, v8);
}

uint64_t sub_1000B4D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for UUID();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v9;
  v4[14] = v8;

  return _swift_task_switch(sub_1000B4E30, v9, v8);
}

uint64_t sub_1000B4E30()
{
  v1 = v0[8];
  swift_getKeyPath();
  v0[5] = v1;
  v0[15] = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  v0[16] = sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 104);
  v0[17] = v2;
  if (!v2)
  {
    goto LABEL_29;
  }

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[18] = v3;
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_29:
    v53 = v0[12];

    goto LABEL_30;
  }

LABEL_28:
  v52 = _CocoaArrayWrapper.endIndex.getter();
  v0[18] = v52;
  if (!v52)
  {
    goto LABEL_29;
  }

LABEL_4:
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__finishedResultForContextUUID;
  v0[19] = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  v0[20] = v5;

  swift_beginAccess();
  v6 = 0;
  while (1)
  {
    v10 = v0[17];
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v11 = *(v10 + 8 * v6 + 32);
    }

    v12 = v11;
    v0[21] = v11;
    v0[22] = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[15];
    v16 = v0[8];
    swift_getKeyPath();
    v0[6] = v16;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v16 + 104);
    v18 = v0[17];
    if (!v17)
    {
      break;
    }

    v19 = *(v16 + 104);

    v20 = sub_10017BCDC(v18, v17);

    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[11];
    v24 = v0[8];
    v25 = [v12 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    v0[7] = v24;
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v24 + v21);
    if (*(v26 + 16))
    {
      v27 = v0[11];
      v28 = *(v24 + v21);

      v29 = sub_100005044(v27);
      if (v30)
      {
        v41 = v0[10];
        v40 = v0[11];
        v42 = v0[9];
        v43 = *(*(v26 + 56) + 8 * v29);
        v0[23] = v43;
        v44 = *(v41 + 8);
        v45 = v43;
        v44(v40, v42);

        v46 = [v12 range];
        v48 = v47;
        v49 = swift_task_alloc();
        v0[24] = v49;
        *v49 = v0;
        v49[1] = sub_1000B5348;
        v50 = v0[8];

        return sub_1000C1DC0(v45, v46, v48, v12, 1);
      }
    }

    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];

    (*(v8 + 8))(v7, v9);
    v6 = v0[22];
    if (v6 == v0[18])
    {
      v38 = v0[17];
      v39 = v0[12];

      goto LABEL_30;
    }
  }

  v31 = v0[17];

LABEL_17:
  v32 = v0[17];
  v33 = v0[12];

  if (qword_10025A728 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000F34C(v34, qword_100276FE0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "contexts changed while sending to results to client - stopping", v37, 2u);
  }

LABEL_30:
  v54 = v0[11];

  v55 = v0[1];

  return v55();
}

uint64_t sub_1000B5348()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_1000B5468, v4, v3);
}

uint64_t sub_1000B5468()
{
  v2 = *(v1 + 184);

  v3 = *(v1 + 176);
  if (v3 == *(v1 + 144))
  {
LABEL_2:
    v4 = *(v1 + 136);
    v5 = *(v1 + 96);
  }

  else
  {
    while (1)
    {
      v9 = *(v1 + 136);
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v10 = *(v9 + 8 * v3 + 32);
      }

      v0 = v10;
      *(v1 + 168) = v10;
      *(v1 + 176) = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v12 = *(v1 + 128);
      v11 = *(v1 + 136);
      v13 = *(v1 + 120);
      v14 = *(v1 + 64);
      swift_getKeyPath();
      *(v1 + 48) = v14;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v14 + 104);
      v16 = *(v1 + 136);
      if (!v15)
      {
        break;
      }

      v17 = *(v14 + 104);

      v18 = sub_10017BCDC(v16, v15);

      if ((v18 & 1) == 0)
      {
        goto LABEL_16;
      }

      v20 = *(v1 + 152);
      v19 = *(v1 + 160);
      v21 = *(v1 + 88);
      v22 = *(v1 + 64);
      v23 = [v0 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      *(v1 + 56) = v22;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v24 = *(v22 + v19);
      if (*(v24 + 16))
      {
        v25 = *(v1 + 88);
        v26 = *(v22 + v19);

        v27 = sub_100005044(v25);
        if (v28)
        {
          v40 = *(v1 + 80);
          v39 = *(v1 + 88);
          v41 = *(v1 + 72);
          v42 = *(*(v24 + 56) + 8 * v27);
          *(v1 + 184) = v42;
          v43 = *(v40 + 8);
          v44 = v42;
          v43(v39, v41);

          v45 = [v0 range];
          v47 = v46;
          v48 = swift_task_alloc();
          *(v1 + 192) = v48;
          *v48 = v1;
          v48[1] = sub_1000B5348;
          v49 = *(v1 + 64);

          return sub_1000C1DC0(v44, v45, v47, v0, 1);
        }
      }

      v7 = *(v1 + 80);
      v6 = *(v1 + 88);
      v8 = *(v1 + 72);

      (*(v7 + 8))(v6, v8);
      v3 = *(v1 + 176);
      if (v3 == *(v1 + 144))
      {
        goto LABEL_2;
      }
    }

    v29 = *(v1 + 136);

LABEL_16:
    v30 = *(v1 + 136);
    v31 = *(v1 + 96);

    if (qword_10025A728 == -1)
    {
      goto LABEL_17;
    }

LABEL_28:
    swift_once();
LABEL_17:
    v32 = type metadata accessor for Logger();
    sub_10000F34C(v32, qword_100276FE0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "contexts changed while sending to results to client - stopping", v35, 2u);
    }
  }

  v36 = *(v1 + 88);

  v37 = *(v1 + 8);

  return v37();
}

uint64_t sub_1000B58D0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1000B59E4(void *a1)
{
  v2 = v1;
  v4 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_10000341C(&qword_100260BD0, &qword_1001D5DA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v30 - v10;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  v34 = v2;
  v13 = sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
  v33 = v12;
  v32 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 96))
  {
    goto LABEL_11;
  }

  v14 = *(v2 + 72);
  v30 = v7;
  if (v14 == 6)
  {
    static RewriteType.takeaways()();
  }

  else
  {
    sub_100106D54(v14);
  }

  v15 = type metadata accessor for RewriteType();
  (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  v16 = type metadata accessor for TextComposerClient();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  TextComposerClient.init()();
  v19 = [a1 attributedText];
  v31 = a1;
  [a1 range];
  sub_1000057A8(_swiftEmptyArrayStorage);

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v21;
  swift_getKeyPath();
  v34 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v2 + 24);
  if (!v22)
  {
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v23 = [v22 pid];
  *(inited + 72) = &type metadata for Int32;
  *(inited + 48) = v23;
  sub_1000057A8(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
  v24 = dispatch thunk of TextComposerClient.actualRangeForRewritingOrReview(of:range:rewriteType:options:)();
  v26 = v25;

  if (sub_1000B1594())
  {
    [v31 setRange:{v24, v26}];
  }

  else
  {
    v27 = v31;
    v35.location = [v31 range];
    v36.location = v24;
    v36.length = v26;
    v28 = NSUnionRange(v35, v36);
    [v27 setRange:{v28.location, v28.length}];
  }

  sub_10000F500(v11, &qword_100260BD0, &qword_1001D5DA0);
  return 1;
}

uint64_t sub_1000B6378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v10;
  v5[9] = v9;

  return _swift_task_switch(sub_1000B646C, v10, v9);
}

uint64_t sub_1000B646C()
{
  v1 = *(v0 + 48);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1000B6538;
  v3 = *(v0 + 48);

  return sub_1000C394C(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000B6538()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;

  v6 = v2[6];
  v7 = v2[5];
  v8 = v2[4];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_1000C5374;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_1000B66CC;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1000B66CC()
{
  v1 = v0[7];

  if (qword_10025A728 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276FE0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Assigning error after 0.5s delay: %@", v7, 0xCu);
    sub_10000F500(v8, &unk_10025D580, &qword_1001CFA60);
  }

  v10 = v0[6];
  v12 = v0[2];
  v11 = v0[3];

  swift_errorRetain();
  sub_100036BF0(v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000B6880(char a1)
{
  *(v2 + 592) = v1;
  *(v2 + 720) = a1;
  v3 = *(*(sub_10000341C(&unk_10025B5D0, &qword_1001D05A0) - 8) + 64) + 15;
  *(v2 + 600) = swift_task_alloc();
  *(v2 + 608) = type metadata accessor for MainActor();
  *(v2 + 616) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 624) = v5;
  *(v2 + 632) = v4;

  return _swift_task_switch(sub_1000B695C, v5, v4);
}

uint64_t sub_1000B695C()
{
  v1 = *(v0 + 592);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 640) = Strong;
  if (!Strong)
  {
    v12 = *(v0 + 616);

LABEL_20:
    v41 = *(v0 + 600);

    v42 = *(v0 + 8);

    return v42();
  }

  v3 = Strong;
  v4 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 648) = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  *(v0 + 432) = v4;
  *(v0 + 656) = sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 72);
  *(v0 + 664) = v5;
  v6 = *(v4 + 80);
  *(v0 + 672) = v6;
  v7 = *(v4 + 88);
  *(v0 + 680) = v7;
  v8 = *(v4 + 96);
  *(v0 + 721) = v8;
  if (v8 == 255)
  {
    v13 = *(v0 + 616);

    goto LABEL_19;
  }

  v53 = v7;
  if (*(v0 + 720) != 1)
  {
    v50 = *(v0 + 616);
    v52 = v3;
    v14 = *(v0 + 592);
    swift_getKeyPath();
    *(v0 + 568) = v14;
    sub_10000F3F4(v5, v6, v7, v8);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v49 = sub_100138178(4uLL, *(v14 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions));

    sub_1000278C0(v5, v6, v7, v8);
    swift_getKeyPath();
    *(v0 + 560) = v14;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
    if (*(v14 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session))
    {
      v16 = *(v0 + 592);
      swift_getKeyPath();
      *(v0 + 544) = v16;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v17 = *(v14 + v15);
      if (v17)
      {
        v18 = *(v0 + 592);
        v19 = v17;
        if (sub_1000B1594())
        {
          v20 = *(v0 + 592);
          if (v49)
          {
            v21 = 4;
          }

          else
          {
            v21 = 3;
          }

          [v52 writingToolsSession:v19 didReceiveAction:v21];
          v22 = sub_100005B00(_swiftEmptyArrayStorage);
          sub_1000B3A6C(v22);
          v23 = sub_100005CE8(_swiftEmptyArrayStorage);
          sub_1000B3C40(v23);
        }
      }

      v24 = *(v0 + 592);
      swift_getKeyPath();
      *(v0 + 536) = v24;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = *(v24 + 104);
      v54 = *(v0 + 640);
      v26 = *(v0 + 608);
      v27 = *(v0 + 600);
      v28 = *(v0 + 592);
      v29 = *(v0 + 720);
      v30 = UIAccessibilityAnnouncementNotification;

      v31 = [objc_opt_self() mainBundle];
      v56._object = 0x80000001001E5B00;
      v32._countAndFlagsBits = 0x6E69746972776552;
      v32._object = 0xE900000000000067;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v56._countAndFlagsBits = 0xD000000000000049;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v56);

      v34 = String._bridgeToObjectiveC()();

      UIAccessibilityPostNotification(v30, v34);

      v35 = type metadata accessor for TaskPriority();
      (*(*(v35 - 8) + 56))(v27, 1, 1, v35);

      v36 = static MainActor.shared.getter();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = &protocol witness table for MainActor;
      *(v37 + 32) = v25;
      *(v37 + 40) = v28;
      *(v37 + 48) = v29;
      *(v37 + 49) = v49;
      v38 = sub_10015C9C8(0, 0, v27, &unk_1001D5D68, v37);
      sub_1000B2880(v38);
    }

    goto LABEL_19;
  }

  v9 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 688) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  *(v0 + 504) = v9;
  sub_10000F3F4(v5, v6, v7, v8);
  *(v0 + 696) = sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
  *(v0 + 704) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
  if (*(v9 + v10))
  {
    v11 = *(v0 + 616);

    sub_1000278C0(v5, v6, v7, v8);
LABEL_19:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v51 = v10;
  v39 = *(v0 + 592);
  if (sub_1000B1594())
  {
    v40 = [objc_allocWithZone(WTSession) initWithType:2 textViewDelegate:0];
  }

  else
  {
    v40 = 0;
  }

  v44 = *(v0 + 592);
  sub_1000B2528(v40);
  swift_getKeyPath();
  *(v0 + 496) = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = *(v9 + v51);
  if (v45)
  {
    [v45 setCompositionSessionType:{sub_100106E88(v5, v6, v53, v8)}];
  }

  v46 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 440) = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(v9 + v51);
  *(v0 + 712) = v47;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 480;
  *(v0 + 24) = sub_1000B7100;
  v48 = swift_continuation_init();
  *(v0 + 216) = sub_10000341C(&unk_10025D5C0, &qword_1001D2620);
  *(v0 + 160) = _NSConcreteStackBlock;
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_10019D8B8;
  *(v0 + 184) = &unk_10024D970;
  *(v0 + 192) = v48;
  [v3 willBeginWritingToolsSession:v47 requestContexts:v0 + 160];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1000B7100()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *v0;

  return _swift_task_switch(sub_1000B7208, v2, v1);
}

uint64_t sub_1000B7208()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 592);
  sub_100036728(*(v0 + 480));

  swift_getKeyPath();
  *(v0 + 448) = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v143 = v4;
  v6 = *(v4 + 104);
  if (!v6)
  {
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v6 >> 62)
  {
LABEL_28:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_4:
      v7 = *(v0 + 656);
      v8 = *(v0 + 648);
      v9 = *(v0 + 592);
      swift_getKeyPath();
      *(v0 + 456) = v9;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = *(v143 + 104);
      if (v10)
      {
        if (v10 >> 62)
        {
          if (v10 < 0)
          {
            v79 = *(v143 + 104);
          }

          v11 = _CocoaArrayWrapper.endIndex.getter();
          if (v11)
          {
LABEL_7:
            swift_bridgeObjectRetain_n();
            v12 = 0;
            while (1)
            {
              if ((v10 & 0xC000000000000001) != 0)
              {
                v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_27;
                }

                v13 = *(v10 + 8 * v12 + 32);
              }

              v14 = v13;
              v15 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

              v16 = *(v0 + 656);
              v17 = *(v0 + 648);
              v18 = *(v0 + 592);
              swift_getKeyPath();
              *(v0 + 464) = v18;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v19 = *(v143 + 104);
              if (!v19)
              {
                v22 = *(v0 + 680);
                v23 = *(v0 + 672);
                v24 = *(v0 + 664);
                v25 = *(v0 + 616);
                v26 = *(v0 + 721);

                sub_1000278C0(v24, v23, v22, v26);

                goto LABEL_20;
              }

              v20 = sub_10017BCDC(v10, v19);

              if ((v20 & 1) == 0)
              {
                break;
              }

              v21 = *(v0 + 592);
              LOBYTE(v21) = sub_1000B59E4(v14);

              if ((v21 & 1) == 0)
              {
                v38 = *(v0 + 680);
                v39 = *(v0 + 672);
                v40 = *(v0 + 664);
                v41 = *(v0 + 640);
                v42 = *(v0 + 616);
                v43 = *(v0 + 721);

                sub_1000278C0(v40, v39, v38, v43);
                swift_unknownObjectRelease();

                goto LABEL_53;
              }

              ++v12;
              if (v15 == v11)
              {

                goto LABEL_41;
              }
            }

            v27 = *(v0 + 680);
            v28 = *(v0 + 672);
            v29 = *(v0 + 664);
            v30 = *(v0 + 616);
            v31 = *(v0 + 721);

            sub_1000278C0(v29, v28, v27, v31);
LABEL_20:
            swift_bridgeObjectRelease_n();
            if (qword_10025A728 != -1)
            {
              swift_once();
            }

            v32 = type metadata accessor for Logger();
            sub_10000F34C(v32, qword_100276FE0);
            v33 = Logger.logObject.getter();
            v34 = static os_log_type_t.default.getter();
            v35 = os_log_type_enabled(v33, v34);
            v36 = *(v0 + 640);
            if (v35)
            {
              v37 = swift_slowAlloc();
              *v37 = 0;
              _os_log_impl(&_mh_execute_header, v33, v34, "contexts changed while getting actual context range for rewrite - stopping", v37, 2u);
            }

            goto LABEL_52;
          }
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            goto LABEL_7;
          }
        }

LABEL_41:
        v80 = *(v0 + 704);
        v81 = *(v0 + 696);
        v82 = *(v0 + 688);
        v83 = *(v0 + 592);
        swift_getKeyPath();
        *(v0 + 472) = v83;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v84 = *(v83 + v80);
        v138 = v10;
        if (v84)
        {
          v85 = *(v0 + 656);
          v86 = *(v0 + 648);
          v87 = *(v0 + 592);
          swift_getKeyPath();
          *(v0 + 528) = v87;
          v88 = v84;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v89 = *(v143 + 104);
          if (v89)
          {
            v90 = *(v143 + 104);

            v91 = sub_10017BCDC(v10, v89);

            if (v91)
            {
              v92 = *(v0 + 592);
              if (sub_1000B1594())
              {
                v93 = *(v0 + 680);
                v94 = *(v0 + 672);
                v95 = *(v0 + 664);
                v96 = *(v0 + 640);
                v97 = *(v0 + 616);
                v98 = *(v0 + 721);

                sub_1000278C0(v95, v94, v93, v98);
                sub_1000081B0(0, &unk_100262480, WTContext_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;
                [v96 didBeginWritingToolsSession:v88 contexts:isa];

                [v96 writingToolsSession:v88 didReceiveAction:3];
LABEL_51:
                v146 = *(v0 + 640);
                v122 = *(v0 + 608);
                v123 = *(v0 + 600);
                v124 = *(v0 + 592);
                v125 = *(v0 + 720);
                v126 = UIAccessibilityAnnouncementNotification;
                v127 = [objc_opt_self() mainBundle];
                v148._object = 0x80000001001E5B00;
                v128._countAndFlagsBits = 0x6E69746972776552;
                v148._countAndFlagsBits = 0xD000000000000049;
                v128._object = 0xE900000000000067;
                v129._countAndFlagsBits = 0;
                v129._object = 0xE000000000000000;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v128, 0, v127, v129, v148);

                v130 = String._bridgeToObjectiveC()();

                UIAccessibilityPostNotification(v126, v130);

                v131 = type metadata accessor for TaskPriority();
                (*(*(v131 - 8) + 56))(v123, 1, 1, v131);

                v132 = static MainActor.shared.getter();
                v133 = swift_allocObject();
                *(v133 + 16) = v132;
                *(v133 + 24) = &protocol witness table for MainActor;
                *(v133 + 32) = v138;
                *(v133 + 40) = v124;
                *(v133 + 48) = v125;
                *(v133 + 49) = 0;
                v134 = sub_10015C9C8(0, 0, v123, &unk_1001D5D68, v133);
                sub_1000B2880(v134);
LABEL_52:
                swift_unknownObjectRelease();
                goto LABEL_53;
              }
            }
          }
        }

        v100 = *(v0 + 696);
        v101 = *(v0 + 688);
        v102 = *(v0 + 592);
        swift_getKeyPath();
        *(v0 + 488) = v102;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v103 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
        swift_beginAccess();
        sub_1000081F8(v102 + v103, v0 + 344, &unk_10025B1C0, &unk_1001CFA90);
        if (!*(v0 + 368))
        {
          v117 = *(v0 + 680);
          v118 = *(v0 + 672);
          v119 = *(v0 + 664);
          v120 = *(v0 + 616);
          v121 = *(v0 + 721);

          sub_1000278C0(v119, v118, v117, v121);
          sub_10000F500(v0 + 344, &unk_10025B1C0, &unk_1001CFA90);
          goto LABEL_51;
        }

        v104 = *(v0 + 656);
        v105 = *(v0 + 648);
        v106 = *(v0 + 592);
        sub_100028458(v0 + 344, v0 + 304);
        sub_10000F500(v0 + 344, &unk_10025B1C0, &unk_1001CFA90);
        v145 = sub_100027874((v0 + 304), *(v0 + 328));
        swift_getKeyPath();
        *(v0 + 512) = v106;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v107 = *(v106 + 96);
        if (v107 != 255)
        {
          v140 = *(v0 + 688);
          v142 = *(v0 + 696);
          v137 = *(v0 + 680);
          v108 = *(v0 + 672);
          v109 = *(v0 + 664);
          v110 = *(v0 + 616);
          v111 = *(v0 + 592);
          v112 = v111[10];
          v113 = v111[11];
          v114 = v111[9];
          v115 = *(v0 + 721);
          sub_10000F3F4(v114, v112, v113, v107);

          sub_1000278C0(v109, v108, v137, v115);
          swift_getKeyPath();
          *(v0 + 520) = v111;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v116 = *v145;
          sub_10000C830(v114, v112, v113, v107, v138, *(v111 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent));
          sub_1000278C0(v114, v112, v113, v107);
          sub_10000F4B4((v0 + 304));
          goto LABEL_51;
        }

LABEL_59:
        __break(1u);
        return result;
      }

      goto LABEL_57;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (qword_10025A728 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_10000F34C(v44, qword_100276FE0);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Error in rewriting: Unable to retrieve text from selection", v47, 2u);
  }

  v48 = *(v0 + 696);
  v49 = *(v0 + 688);
  v50 = *(v0 + 592);

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v52;
  *(inited + 48) = 0xD000000000000026;
  *(inited + 56) = 0x80000001001E5B50;
  sub_1000057A8(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
  v53 = objc_allocWithZone(NSError);
  v54 = String._bridgeToObjectiveC()();
  v55 = Dictionary._bridgeToObjectiveC()().super.isa;

  v56 = [v53 initWithDomain:v54 code:1 userInfo:v55];

  sub_100036BF0(v56);
  swift_getKeyPath();
  *(v0 + 552) = v50;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v50 + v57, v0 + 264, &unk_10025B1C0, &unk_1001CFA90);
  if (*(v0 + 288))
  {
    v58 = *(v0 + 656);
    v59 = *(v0 + 648);
    v60 = *(v0 + 592);
    sub_100028458(v0 + 264, v0 + 224);
    sub_10000F500(v0 + 264, &unk_10025B1C0, &unk_1001CFA90);
    v141 = sub_100027874((v0 + 224), *(v0 + 248));
    swift_getKeyPath();
    *(v0 + 576) = v60;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v61 = *(v60 + 120);
    swift_getKeyPath();
    *(v0 + 584) = v60;
    v144 = v61;
    swift_errorRetain();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v62 = *(v60 + 96);
    if (v62 == 255)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v63 = *(v0 + 680);
    v64 = *(v0 + 672);
    v65 = *(v0 + 664);
    v139 = *(v0 + 640);
    v66 = *(v0 + 616);
    v67 = *(v0 + 592);
    v68 = v67[10];
    v69 = v67[11];
    v70 = v67[9];
    v71 = *(v0 + 721);
    sub_10000F3F4(v70, v68, v69, v62);

    sub_1000278C0(v65, v64, v63, v71);
    v72 = *v141;
    sub_10000DB64(v144, v70, v68, v69, v62);
    swift_unknownObjectRelease();
    sub_1000278C0(v70, v68, v69, v62);

    sub_10000F4B4((v0 + 224));
  }

  else
  {
    v73 = *(v0 + 680);
    v74 = *(v0 + 672);
    v75 = *(v0 + 664);
    v76 = *(v0 + 640);
    v77 = *(v0 + 616);
    v78 = *(v0 + 721);

    sub_1000278C0(v75, v74, v73, v78);
    swift_unknownObjectRelease();
    sub_10000F500(v0 + 264, &unk_10025B1C0, &unk_1001CFA90);
  }

LABEL_53:
  v135 = *(v0 + 600);

  v136 = *(v0 + 8);

  return v136();
}

uint64_t sub_1000B7F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 345) = a7;
  *(v7 + 344) = a6;
  *(v7 + 200) = a4;
  *(v7 + 208) = a5;
  v8 = type metadata accessor for UUID();
  *(v7 + 216) = v8;
  v9 = *(v8 - 8);
  *(v7 + 224) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 248) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 256) = v12;
  *(v7 + 264) = v11;

  return _swift_task_switch(sub_1000B8058, v12, v11);
}

uint64_t sub_1000B8058()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 104) = v1;
  v3 = v0 + 104;
  *(v0 + 272) = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  *(v0 + 280) = sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 104);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_9:
    v9 = *(v0 + 248);

    if (qword_10025A728 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276FE0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "contexts changed while attemping to run rewrite in contexts - stopping", v13, 2u);
    }

    goto LABEL_90;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + 200);
  v6 = *(v1 + 104);

  LOBYTE(v5) = sub_10017BCDC(v5, v4);

  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = *(v0 + 208);
  if (*(v7 + 112) == 1)
  {
    sub_10003689C(1u);
    v8 = 0;
    if (*(v0 + 344))
    {
      goto LABEL_6;
    }
  }

  else
  {
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v7;
    *(v14 + 24) = 1;
    *(v0 + 112) = v7;
    v8 = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v3 = v0 + 104;

    if (*(v0 + 344))
    {
LABEL_6:
      *(v0 + 288) = 0;
      if (!v2)
      {
        goto LABEL_86;
      }

      goto LABEL_77;
    }
  }

  v15 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 120) = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v1 + 104);
  if (!v17)
  {
LABEL_111:
    __break(1u);
    return result;
  }

  if (v17 >> 62)
  {
    goto LABEL_106;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = &qword_100260000;
  if (v18)
  {
LABEL_17:
    v102 = v8;
    v103 = v2;
    if (v18 < 1)
    {
      goto LABEL_109;
    }

    v107 = (v3 - 56);
    v108 = (v3 - 88);
    v20 = *(v0 + 224);
    v21 = *(v0 + 208);
    v115 = v19[55];
    v22 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID;
    v112 = v17 & 0xC000000000000001;
    v109 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount;
    v23 = v17;

    swift_beginAccess();
    v24 = v23;
    v2 = 0;
    v114 = (v20 + 8);
    v110 = v18;
    v111 = v23;
    v104 = v21;
    while (1)
    {
      if (v112)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v24 + 8 * v2 + 32);
      }

      v29 = *(v0 + 240);
      v30 = *(v0 + 208);
      v116 = v28;
      v31 = [v28 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      *(v0 + 128) = v30;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = *(v21 + v22);
      if (!*(v32 + 16))
      {
        goto LABEL_33;
      }

      v33 = *(v0 + 240);
      v34 = *(v21 + v22);

      v35 = sub_100005044(v33);
      if ((v36 & 1) == 0)
      {
        break;
      }

      v37 = *(v0 + 240);
      v38 = *(v0 + 216);
      v39 = *(*(v32 + 56) + 8 * v35);
      v40 = *v114;

      v113 = v40;
      v40(v37, v38);

      if (v39 >> 62)
      {
        v41 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 = v0 + 104;
      v21 = v104;
LABEL_34:
      v42 = *(v0 + 208);
      swift_getKeyPath();
      *(v0 + 136) = v42;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((v41 & 0x8000000000000000) != 0 || v41 < *(v21 + v109))
      {
        goto LABEL_23;
      }

      v43 = *(v0 + 232);
      v44 = *(v0 + 208);
      v45 = [v116 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v106 = sub_1000B3E80(v108);
      v105 = sub_1000B9198(v107);
      if (*v46)
      {
        v8 = v46;
        v47 = *(v0 + 208);
        swift_getKeyPath();
        *(v0 + 144) = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v48 = *(v21 + v109);
        if (v48 < 0)
        {
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        if (v48)
        {
          v49 = *v8;
          if (*v8 >> 62)
          {
            if (v49 < 0)
            {
              v62 = *v8;
            }

            v17 = _CocoaArrayWrapper.endIndex.getter();
            v50 = -v17;
            if (__OFSUB__(0, v17))
            {
              goto LABEL_97;
            }
          }

          else
          {
            v17 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v50 = -v17;
            if (__OFSUB__(0, v17))
            {
              goto LABEL_97;
            }
          }

          v51 = -v48;
          if (v50 <= 0 && v50 > v51)
          {
            __break(1u);
LABEL_106:
            v100 = v17;
            result = _CocoaArrayWrapper.endIndex.getter();
            v17 = v100;
            v18 = result;
            v19 = &qword_100260000;
            if (!result)
            {
              goto LABEL_73;
            }

            goto LABEL_17;
          }

          v52 = v17 - v48;
          if (__OFADD__(v17, v51))
          {
            goto LABEL_98;
          }

          v3 = v48;
          if (v17 < v52)
          {
            goto LABEL_99;
          }

          if (v52 < 0)
          {
            goto LABEL_100;
          }

          v53 = *v8;
          v54 = *v8 >> 62;
          if (v54)
          {
            if (v53 < 0)
            {
              v63 = *v8;
            }

            else
            {
              v63 = *v8 & 0xFFFFFFFFFFFFFF8;
            }

            v101 = v17;
            v64 = _CocoaArrayWrapper.endIndex.getter();
            v17 = v101;
            if (v64 < v101)
            {
LABEL_71:
              __break(1u);
LABEL_72:

              v8 = v102;
              v2 = v103;
              v19 = &qword_100260000;
              goto LABEL_73;
            }
          }

          else if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < v17)
          {
            goto LABEL_71;
          }

          v55 = __OFSUB__(0, v3);
          v3 = -v3;
          if (v55)
          {
            goto LABEL_101;
          }

          if (v54)
          {
            v56 = v17;
            v57 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v56 = v17;
            v57 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v55 = __OFADD__(v57, v3);
          v3 += v57;
          if (v55)
          {
            goto LABEL_102;
          }

          v58 = *v8;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v8 = v58;
          if (isUniquelyReferenced_nonNull_bridgeObject)
          {
            if ((v58 & 0x8000000000000000) == 0 && (v58 & 0x4000000000000000) == 0)
            {
              v25 = v56;
              if (v3 > *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v60 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_20;
              }

              goto LABEL_21;
            }
          }

          else if ((v58 & 0x8000000000000000) == 0 && (v58 & 0x4000000000000000) == 0)
          {
            v61 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
            *v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v25 = v56;
LABEL_21:
            sub_1001AE48C(v52, v25, 0);
            v3 = v0 + 104;
            goto LABEL_22;
          }

          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_20;
        }
      }

LABEL_22:
      v26 = *(v0 + 232);
      v27 = *(v0 + 216);
      v105();
      v113(v26, v27);
      v106();
LABEL_23:
      ++v2;

      v24 = v111;
      if (v110 == v2)
      {
        goto LABEL_72;
      }
    }

LABEL_33:
    v113 = *v114;
    (*v114)(*(v0 + 240), *(v0 + 216));
    v41 = 0;
    goto LABEL_34;
  }

LABEL_73:
  v65 = *(v0 + 208);
  swift_getKeyPath();
  v66 = v3;
  v67 = v19[55];
  *(v0 + 152) = v65;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 160) = v65;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v68 = *(v65 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount);
  v69 = __CFADD__(v68, 1);
  v70 = v68 + 1;
  if (v69)
  {
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v71 = *(v0 + 208);
  *(v65 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) = v70;
  *(v0 + 168) = v71;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (*(v71 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount))
  {
    v72 = *(v0 + 208);
    swift_getKeyPath();
    v73 = swift_task_alloc();
    *(v73 + 16) = v72;
    *(v73 + 24) = 0;
    *(v0 + 176) = v72;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v3 = v66;
  *(v0 + 288) = v8;
  if (!v2)
  {
    goto LABEL_86;
  }

LABEL_77:
  v74 = *(v0 + 200);
  if (v74 >> 62)
  {
LABEL_103:
    result = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 296) = result;
    if (!result)
    {
      goto LABEL_86;
    }
  }

  else
  {
    result = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 296) = result;
    if (!result)
    {
LABEL_86:
      v81 = *(v0 + 248);
      v82 = *(v0 + 208);

      if (*(v82 + 112))
      {
        v84 = *(v0 + 280);
        v83 = *(v0 + 288);
        v85 = *(v0 + 272);
        v86 = *(v0 + 208);
        swift_getKeyPath();
        v87 = swift_task_alloc();
        *(v87 + 16) = v86;
        *(v87 + 24) = 0;
        *(v0 + 184) = v86;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        v88 = *(v0 + 208);
        sub_10003689C(0);
      }

      v89 = UIAccessibilityAnnouncementNotification;
      v90 = [objc_opt_self() mainBundle];
      v118._object = 0x80000001001E5BA0;
      v91._object = 0x80000001001E5B80;
      v118._countAndFlagsBits = 0xD000000000000043;
      v91._countAndFlagsBits = 0xD000000000000012;
      v92._countAndFlagsBits = 0;
      v92._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v91, 0, v90, v92, v118);

      v11 = String._bridgeToObjectiveC()();

      UIAccessibilityPostNotification(v89, v11);
LABEL_90:

      v94 = *(v0 + 232);
      v93 = *(v0 + 240);

      v95 = *(v0 + 8);

      return v95();
    }
  }

  v75 = *(v0 + 200);
  v76 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
  *(v0 + 304) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  *(v0 + 312) = v76;
  if ((v75 & 0xC000000000000001) == 0)
  {
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v77 = *(v75 + 32);
      goto LABEL_83;
    }

    goto LABEL_110;
  }

  v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v78 = *(v0 + 304);
  v76 = *(v0 + 312);
LABEL_83:
  *(v0 + 320) = v77;
  *(v0 + 328) = 1;
  v79 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 192) = v79;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v79 + v76))
  {
    v80 = *(v0 + 208);
    if (sub_1000B1594())
    {

      goto LABEL_86;
    }
  }

  v96 = swift_task_alloc();
  *(v0 + 336) = v96;
  *v96 = v0;
  v96[1] = sub_1000B8D1C;
  v97 = *(v3 + 241);
  v98 = *(v3 + 240);
  v99 = *(v0 + 208);

  return sub_1000B9328(v77, v98, v97, 0);
}

uint64_t sub_1000B8D1C()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v6 = *v0;

  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return _swift_task_switch(sub_1000B8E3C, v4, v3);
}

void sub_1000B8E3C()
{
  v1 = *(v0 + 320);
  v2 = static Task<>.isCancelled.getter();

  if (v2)
  {
    v3 = *(v0 + 248);

LABEL_10:
    v22 = *(v0 + 232);
    v21 = *(v0 + 240);

    v23 = *(v0 + 8);

    v23();
    return;
  }

  v4 = *(v0 + 328);
  if (v4 == *(v0 + 296))
  {
LABEL_4:
    v5 = *(v0 + 248);
    v6 = *(v0 + 208);

    if (*(v6 + 112))
    {
      v7 = *(v0 + 280);
      v8 = *(v0 + 288);
      v9 = *(v0 + 272);
      v10 = *(v0 + 208);
      swift_getKeyPath();
      v11 = swift_task_alloc();
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v0 + 184) = v10;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v15 = *(v0 + 208);
      sub_10003689C(0);
    }

    v16 = UIAccessibilityAnnouncementNotification;
    v17 = [objc_opt_self() mainBundle];
    v34._object = 0x80000001001E5BA0;
    v18._object = 0x80000001001E5B80;
    v34._countAndFlagsBits = 0xD000000000000043;
    v18._countAndFlagsBits = 0xD000000000000012;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v34);

    v20 = String._bridgeToObjectiveC()();

    UIAccessibilityPostNotification(v16, v20);

    goto LABEL_10;
  }

  v12 = *(v0 + 200);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = *(v0 + 328);
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v4 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_23:
      __break(1u);
      return;
    }

    v14 = *(v12 + 8 * v4 + 32);
  }

  v24 = v14;
  *(v0 + 320) = v14;
  *(v0 + 328) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v25 = *(v0 + 304);
  v26 = *(v0 + 312);
  v27 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 192) = v27;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v27 + v26))
  {
    v28 = *(v0 + 208);
    if (sub_1000B1594())
    {

      goto LABEL_4;
    }
  }

  v29 = swift_task_alloc();
  *(v0 + 336) = v29;
  *v29 = v0;
  v29[1] = sub_1000B8D1C;
  v30 = *(v0 + 345);
  v31 = *(v0 + 344);
  v32 = *(v0 + 208);

  sub_1000B9328(v24, v31, v30, 0);
}

void (*sub_1000B9198(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1000C3E04(v3, v8);
  return sub_1000B92B0;
}

void sub_1000B92B0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_1000B9328(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 1912) = v4;
  *(v5 + 1904) = a4;
  *(v5 + 2737) = a3;
  *(v5 + 2736) = a2;
  *(v5 + 1896) = a1;
  v6 = *(*(sub_10000341C(&qword_100260B70, &qword_1001D5B00) - 8) + 64) + 15;
  *(v5 + 1920) = swift_task_alloc();
  v7 = *(*(sub_10000341C(&qword_100260B78, &qword_1001D5B08) - 8) + 64) + 15;
  *(v5 + 1928) = swift_task_alloc();
  v8 = *(*(sub_10000341C(&qword_10025F550, &qword_1001D5B10) - 8) + 64) + 15;
  *(v5 + 1936) = swift_task_alloc();
  *(v5 + 1944) = swift_task_alloc();
  *(v5 + 1952) = swift_task_alloc();
  *(v5 + 1960) = swift_task_alloc();
  v9 = *(*(sub_10000341C(&qword_100260B80, &qword_1001D5B18) - 8) + 64) + 15;
  *(v5 + 1968) = swift_task_alloc();
  v10 = sub_10000341C(&qword_100260B88, &qword_1001D5B20);
  *(v5 + 1976) = v10;
  v11 = *(v10 - 8);
  *(v5 + 1984) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 1992) = swift_task_alloc();
  v13 = *(*(sub_10000341C(&qword_100260B90, &qword_1001D5B28) - 8) + 64) + 15;
  *(v5 + 2000) = swift_task_alloc();
  v14 = *(*(sub_10000341C(&qword_100260B98, &qword_1001D5B30) - 8) + 64) + 15;
  *(v5 + 2008) = swift_task_alloc();
  v15 = type metadata accessor for SummarizationClient.TextAssistantSummarizationOptions.Source();
  *(v5 + 2016) = v15;
  v16 = *(v15 - 8);
  *(v5 + 2024) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 2032) = swift_task_alloc();
  v18 = type metadata accessor for SummarizationClient.TextAssistantSummarizationOptions();
  *(v5 + 2040) = v18;
  v19 = *(v18 - 8);
  *(v5 + 2048) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 2056) = swift_task_alloc();
  v21 = sub_10000341C(&qword_100260BA0, &qword_1001D5B38);
  *(v5 + 2064) = v21;
  v22 = *(v21 - 8);
  *(v5 + 2072) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 2080) = swift_task_alloc();
  v24 = sub_10000341C(&qword_100260BA8, &unk_1001D5B40);
  *(v5 + 2088) = v24;
  v25 = *(v24 - 8);
  *(v5 + 2096) = v25;
  v26 = *(v25 + 64) + 15;
  *(v5 + 2104) = swift_task_alloc();
  v27 = *(*(sub_10000341C(&unk_100262450, &qword_1001CFAA0) - 8) + 64) + 15;
  *(v5 + 2112) = swift_task_alloc();
  *(v5 + 2120) = swift_task_alloc();
  *(v5 + 2128) = swift_task_alloc();
  v28 = sub_10000341C(&qword_100260BB0, &unk_1001D5B50);
  *(v5 + 2136) = v28;
  v29 = *(v28 - 8);
  *(v5 + 2144) = v29;
  v30 = *(v29 + 64) + 15;
  *(v5 + 2152) = swift_task_alloc();
  v31 = type metadata accessor for RewriteType();
  *(v5 + 2160) = v31;
  v32 = *(v31 - 8);
  *(v5 + 2168) = v32;
  v33 = *(v32 + 64) + 15;
  *(v5 + 2176) = swift_task_alloc();
  v34 = sub_10000341C(&qword_10025BA38, &qword_1001D0598);
  *(v5 + 2184) = v34;
  v35 = *(v34 - 8);
  *(v5 + 2192) = v35;
  v36 = *(v35 + 64) + 15;
  *(v5 + 2200) = swift_task_alloc();
  v37 = sub_10000341C(&qword_100260BB8, &qword_1001D5B60);
  *(v5 + 2208) = v37;
  v38 = *(v37 - 8);
  *(v5 + 2216) = v38;
  v39 = *(v38 + 64) + 15;
  *(v5 + 2224) = swift_task_alloc();
  v40 = sub_10000341C(&qword_100260BC0, &unk_1001D5B68);
  *(v5 + 2232) = v40;
  v41 = *(v40 - 8);
  *(v5 + 2240) = v41;
  v42 = *(v41 + 64) + 15;
  *(v5 + 2248) = swift_task_alloc();
  *(v5 + 2256) = swift_task_alloc();
  v43 = type metadata accessor for UUID();
  *(v5 + 2264) = v43;
  v44 = *(v43 - 8);
  *(v5 + 2272) = v44;
  v45 = *(v44 + 64) + 15;
  *(v5 + 2280) = swift_task_alloc();
  *(v5 + 2288) = swift_task_alloc();
  *(v5 + 2296) = type metadata accessor for MainActor();
  *(v5 + 2304) = static MainActor.shared.getter();
  v47 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 2312) = v47;
  *(v5 + 2320) = v46;

  return _swift_task_switch(sub_1000B99FC, v47, v46);
}

uint64_t sub_1000B99FC()
{
  v1 = v0;
  sub_100038160();
  v23 = *(v0 + 1912);
  swift_getKeyPath();
  *(v1 + 2328) = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  *(v1 + 1464) = v23;
  *(v1 + 2336) = sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v23 + 72);
  *(v1 + 2344) = v24;
  v25 = *(v23 + 80);
  *(v1 + 2352) = v25;
  v26 = *(v23 + 88);
  *(v1 + 2360) = v26;
  if (*(v23 + 96) > 1u || *(v23 + 96))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (((1 << v24) & 0x33F) == 0)
  {
    if (v24 == 6)
    {
      v87 = *(v1 + 1912);
      v88 = *(v1 + 1896);
      sub_10000F3F4(v24, v25, v26, 0);
      v89 = [v88 attributedText];
      v90 = [v88 range];
      v92 = [v89 attributedSubstringFromRange:{v90, v91}];

      v93 = [v92 string];
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      *(v1 + 2632) = v96;

      sub_1000B3184(v94, v96);
      *(v1 + 1320) = 0;
      *(v1 + 1328) = 0xE000000000000000;
      swift_getKeyPath();
      *(v1 + 2640) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
      *(v1 + 1400) = v87;
      *(v1 + 2648) = sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v97 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      *(v1 + 2656) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v87 + v97, v1 + 600, &unk_10025B1C0, &unk_1001CFA90);
      if (*(v1 + 624))
      {
        v98 = *(v1 + 1912);
        sub_100028458(v1 + 600, v1 + 720);
        sub_10000F500(v1 + 600, &unk_10025B1C0, &unk_1001CFA90);
        v99 = sub_100027874((v1 + 720), *(v1 + 744));
        swift_getKeyPath();
        *(v1 + 1888) = v98;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v100 = *(v23 + 96);
        if (v100 == 255)
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        v101 = v1;
        v103 = *(v23 + 80);
        v102 = *(v23 + 88);
        v104 = *(v23 + 72);
        v105 = *v99;
        sub_10000F3F4(v104, v103, v102, *(v23 + 96));
        sub_10000C1CC(v104, v103, v102, v100, 0, 0, 0, 0, 2);
        sub_1000278C0(v104, v103, v102, v100);
        sub_10000F4B4((v101 + 720));
        v1 = v101;
      }

      else
      {
        sub_10000F500(v1 + 600, &unk_10025B1C0, &unk_1001CFA90);
      }

      v186 = *(v1 + 2032);
      v187 = *(v1 + 2024);
      v188 = *(v1 + 2016);
      v189 = *(v1 + 1912);
      v190 = type metadata accessor for SummarizationClient();
      v191 = *(v190 + 48);
      v192 = *(v190 + 52);
      swift_allocObject();
      SummarizationClient.init()();
      (*(v187 + 104))(v186, enum case for SummarizationClient.TextAssistantSummarizationOptions.Source.textAssistant(_:), v188);
      swift_getKeyPath();
      *(v1 + 1360) = v189;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v189 + 24);
      if (!v11)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v193 = *(v1 + 2008);
      [v11 pid];
      ClientProcessInfo.init(processIdentifier:)();
      v207 = *(v1 + 2280);
      v208 = *(v1 + 2272);
      v209 = *(v1 + 2080);
      v210 = *(v1 + 2072);
      v246 = *(v1 + 2064);
      v250 = *(v1 + 2104);
      v211 = *(v1 + 2056);
      v212 = *(v1 + 2048);
      v239 = *(v1 + 2264);
      v242 = *(v1 + 2040);
      v213 = *(v1 + 2032);
      v214 = *(v1 + 2008);
      v215 = type metadata accessor for ClientProcessInfo();
      (*(*(v215 - 8) + 56))(v214, 0, 1, v215);
      SummarizationClient.TextAssistantSummarizationOptions.init(source:useExternalIntelligence:originatingProcess:)();
      UUID.init()();
      UUID.uuidString.getter();
      v216 = *(v208 + 8);
      *(v1 + 2664) = v216;
      *(v1 + 2672) = (v208 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v216(v207, v239);
      SummarizationClient.partialSummaries(for:options:requestIdentifier:)();

      (*(v212 + 8))(v211, v242);
      AsyncThrowingStream.makeAsyncIterator()();
      (*(v210 + 8))(v209, v246);
      *(v1 + 2680) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString;
      *(v1 + 2688) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
      *(v1 + 2704) = 0;
      *(v1 + 2696) = 0xE000000000000000;
      v217 = *(v1 + 2296);
      v156 = static MainActor.shared.getter();
      *(v1 + 2712) = v156;
      v218 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v219 = swift_task_alloc();
      *(v1 + 2720) = v219;
      *v219 = v1;
      v219[1] = sub_1000BED34;
      v220 = *(v1 + 2104);
      v14 = *(v1 + 2088);
      v11 = *(v1 + 2000);
      v13 = &protocol witness table for MainActor;
      v15 = v1 + 1376;
    }

    else
    {
      v170 = *(v1 + 1912);
      sub_10000F3F4(v24, v25, v26, 0);
      sub_1000057A8(_swiftEmptyArrayStorage);

      sub_10000341C(&qword_10025D598, &qword_1001E1780);
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_1001CF9D0;
      *(v171 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v171 + 40) = v172;
      swift_getKeyPath();
      *(v1 + 1352) = v170;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v170 + 24);
      if (!v11)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v173 = *(v1 + 1912);
      v174 = *(v1 + 1896);
      v175 = [v11 pid];
      *(v171 + 72) = &type metadata for Int32;
      *(v171 + 48) = v175;
      *(v1 + 2528) = sub_1000057A8(v171);
      swift_setDeallocating();
      sub_10000F500(v171 + 32, &qword_10025D5A0, &qword_1001D45E0);
      swift_deallocClassInstance();
      swift_getKeyPath();
      *(v1 + 2536) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
      *(v1 + 1368) = v173;
      *(v1 + 2544) = sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
      v176 = v174;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v177 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      *(v1 + 2552) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v173 + v177, v1 + 680, &unk_10025B1C0, &unk_1001CFA90);
      if (*(v1 + 704))
      {
        v178 = *(v1 + 1912);
        sub_100028458(v1 + 680, v1 + 480);
        sub_10000F500(v1 + 680, &unk_10025B1C0, &unk_1001CFA90);
        v179 = sub_100027874((v1 + 480), *(v1 + 504));
        swift_getKeyPath();
        *(v1 + 1576) = v178;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v180 = *(v23 + 96);
        if (v180 == 255)
        {
LABEL_98:
          __break(1u);
          return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v11, v12, v13, v14, v15);
        }

        v182 = *(v23 + 80);
        v181 = *(v23 + 88);
        v183 = *(v23 + 72);
        v184 = *v179;
        sub_10000F3F4(v183, v182, v181, *(v23 + 96));
        sub_10000C1CC(v183, v182, v181, v180, 0, 0, 0, 0, 2);
        sub_1000278C0(v183, v182, v181, v180);
        sub_10000F4B4((v1 + 480));
      }

      else
      {
        sub_10000F500(v1 + 680, &unk_10025B1C0, &unk_1001CFA90);
      }

      v253 = *(v1 + 2248);
      v238 = *(v1 + 2224);
      v256 = *(v1 + 2216);
      v194 = *(v1 + 2200);
      v241 = *(v1 + 2192);
      v245 = *(v1 + 2184);
      v249 = *(v1 + 2208);
      v195 = *(v1 + 2176);
      v196 = *(v1 + 2168);
      v231 = *(v1 + 2152);
      v227 = *(v1 + 2160);
      v229 = *(v1 + 2144);
      v234 = *(v1 + 2136);
      v197 = *(v1 + 1896);
      v198 = type metadata accessor for TextComposerClient();
      v199 = *(v198 + 48);
      v200 = *(v198 + 52);
      swift_allocObject();
      TextComposerClient.init()();
      v201 = [v197 attributedText];
      [v197 range];
      sub_100106D54(7u);

      dispatch thunk of TextComposerClient.streamForRewriting(of:range:rewriteType:options:)();

      (*(v196 + 8))(v195, v227);
      v202 = swift_task_alloc();
      *(v202 + 16) = v197;
      *(v202 + 24) = v194;
      sub_10000341C(&qword_100260BC8, &qword_1001D5CB8);
      (*(v229 + 104))(v231, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v234);
      AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

      (*(v241 + 8))(v194, v245);
      AsyncThrowingStream.makeAsyncIterator()();
      (*(v256 + 8))(v238, v249);
      *(v1 + 2560) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
      *(v1 + 2568) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString;
      *(v1 + 2576) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback;
      *(v1 + 2584) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString;
      *(v1 + 2592) = TCTextCompositionAssistantOptionKeyModelPromptLocale;
      *(v1 + 2600) = TCTextCompositionAssistantOptionKeyModelPromptTokenCount;
      v203 = *(v1 + 2296);
      v156 = static MainActor.shared.getter();
      *(v1 + 2608) = v156;
      v204 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v205 = swift_task_alloc();
      *(v1 + 2616) = v205;
      *v205 = v1;
      v205[1] = sub_1000BD554;
      v206 = *(v1 + 2248);
      v14 = *(v1 + 2232);
      v13 = &protocol witness table for MainActor;
      v11 = v1 + 88;
      v15 = v1 + 1392;
    }

LABEL_65:
    v12 = v156;

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v11, v12, v13, v14, v15);
  }

  v27 = *(v1 + 1912);
  v247 = v24;
  sub_10000F3F4(v24, v25, v26, 0);
  sub_1000057A8(_swiftEmptyArrayStorage);

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1001CF9D0;
  *(v28 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v28 + 40) = v29;
  swift_getKeyPath();
  *(v1 + 1584) = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v27 + 24);
  if (!v11)
  {
    goto LABEL_93;
  }

  v30 = *(v1 + 1912);
  v31 = [v11 pid];
  *(v28 + 72) = &type metadata for Int32;
  *(v28 + 48) = v31;
  v32 = sub_1000057A8(v28);
  swift_setDeallocating();
  sub_10000F500(v28 + 32, &qword_10025D5A0, &qword_1001D45E0);
  swift_deallocClassInstance();
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  swift_getKeyPath();
  *(v1 + 2368) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  *(v1 + 1600) = v30;
  *(v1 + 2376) = sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v235 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions;
  v36 = *(v30 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions);
  v37 = 3;
  if ((v36 & 0xC) != 0)
  {
    v38 = 3;
  }

  else
  {
    v38 = 1;
  }

  v39 = v38 | v36;
  if (v36)
  {
    v37 = v39;
  }

  *(v1 + 1048) = &type metadata for UInt;
  *(v1 + 1024) = v37;
  sub_100008150((v1 + 1024), (v1 + 992));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001A9A58((v1 + 992), v33, v35, isUniquelyReferenced_nonNull_native);

  if (v26)
  {
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    *(v1 + 856) = &type metadata for String;
    *(v1 + 832) = v25;
    *(v1 + 840) = v26;
    sub_100008150((v1 + 832), (v1 + 800));
    v44 = v247;
    sub_10000F3F4(v247, v25, v26, 0);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v259 = v32;
    v46 = v1;
    sub_1001A9A58((v1 + 800), v41, v43, v45);

    v47 = v259;
  }

  else
  {
    v47 = v32;
    v46 = v1;
    v44 = v247;
  }

  if (v44 - 2 >= 4 && v44)
  {
    v81 = v46;
    v82 = v47;
  }

  else
  {
    v81 = v46;
    v82 = v47;
    if ((*(v46 + 2736) & 1) == 0)
    {
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;
      *(v46 + 920) = &type metadata for Int;
      *(v46 + 896) = sub_1000C42BC(0x7FFFFFFFFFFFFFFFuLL);
      sub_100008150((v46 + 896), (v46 + 864));
      v86 = swift_isUniquelyReferenced_nonNull_native();
      sub_1001A9A58((v46 + 864), v83, v85, v86);
    }
  }

  v106 = *(v81 + 1912);
  if (sub_1000B1594())
  {
    v107 = *(v81 + 1912);
    swift_getKeyPath();
    *(v81 + 1832) = v107;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v30 + v235) & 0x10) != 0)
    {
      v109 = 1;
    }

    else
    {
      v108 = *(v81 + 1912);
      swift_getKeyPath();
      *(v81 + 1840) = v108;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v109 = *(v108 + 64) ^ 1;
    }

    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;
    *(v81 + 984) = &type metadata for Bool;
    *(v81 + 960) = v109 & 1;
    sub_100008150((v81 + 960), (v81 + 928));
    v113 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001A9A58((v81 + 928), v110, v112, v113);
  }

  *(v81 + 2384) = v82;
  v114 = *(v81 + 1912);
  swift_getKeyPath();
  *(v81 + 1624) = v114;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v115 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  *(v81 + 2392) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v114 + v115, v81 + 400, &unk_10025B1C0, &unk_1001CFA90);
  if (*(v81 + 424))
  {
    v116 = *(v81 + 1912);
    sub_100028458(v81 + 400, v81 + 200);
    sub_10000F500(v81 + 400, &unk_10025B1C0, &unk_1001CFA90);
    v117 = sub_100027874((v81 + 200), *(v81 + 224));
    swift_getKeyPath();
    *(v81 + 1824) = v116;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v118 = *(v23 + 96);
    if (v118 == 255)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v119 = v81;
    v121 = *(v23 + 80);
    v120 = *(v23 + 88);
    v122 = *(v23 + 72);
    v123 = *v117;
    sub_10000F3F4(v122, v121, v120, *(v23 + 96));
    sub_10000C1CC(v122, v121, v120, v118, v25, v26, 0, 0, 2);
    sub_1000278C0(v122, v121, v120, v118);
    sub_10000F4B4((v119 + 200));
    v81 = v119;
  }

  else
  {
    sub_10000F500(v81 + 400, &unk_10025B1C0, &unk_1001CFA90);
  }

  if (*(v81 + 2737) != 1)
  {
    v142 = *(v81 + 1896);
    v141 = [v142 attributedText];
    [v142 range];
    v143 = v142;
    v139 = *(v81 + 1896);
    goto LABEL_64;
  }

  v124 = *(v81 + 2288);
  v125 = *(v81 + 1912);
  v126 = [*(v81 + 1896) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v81 + 1800) = v125;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v127 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID;
  swift_beginAccess();
  v128 = *(v125 + v127);
  if (!*(v128 + 16))
  {
    goto LABEL_69;
  }

  v129 = *(v81 + 2288);

  v130 = sub_100005044(v129);
  if ((v131 & 1) == 0)
  {

LABEL_69:
    (*(*(v81 + 2272) + 8))(*(v81 + 2288), *(v81 + 2264));
    goto LABEL_70;
  }

  v132 = *(v81 + 2288);
  v133 = *(v81 + 2264);
  v134 = *(*(v128 + 56) + 8 * v130);
  v135 = *(*(v81 + 2272) + 8);

  v135(v132, v133);

  if (!(v134 >> 62))
  {
    v136 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v136)
    {
      goto LABEL_56;
    }

    goto LABEL_86;
  }

  v136 = _CocoaArrayWrapper.endIndex.getter();
  if (!v136)
  {
LABEL_86:

LABEL_70:
    sub_1000278C0(v247, v25, v26, 0);

    if (qword_10025A728 != -1)
    {
      swift_once();
    }

    v160 = type metadata accessor for Logger();
    sub_10000F34C(v160, qword_100276FE0);
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&_mh_execute_header, v161, v162, "Error in follow-up rewriting: Asked to refine text, but current rewritten context is not specified", v163, 2u);
    }

    v164 = swift_allocObject();
    *(v164 + 16) = xmmword_1001CF9D0;
    *(v164 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v164 + 72) = &type metadata for String;
    *(v164 + 40) = v165;
    *(v164 + 48) = 0xD00000000000002BLL;
    *(v164 + 56) = 0x80000001001E5AD0;
    sub_1000057A8(v164);
    swift_setDeallocating();
    sub_10000F500(v164 + 32, &qword_10025D5A0, &qword_1001D45E0);
    swift_deallocClassInstance();
    v166 = objc_allocWithZone(NSError);
    v167 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v169 = [v166 initWithDomain:v167 code:1 userInfo:isa];

    swift_willThrow();
    v2 = *(v81 + 1912);
    v3 = sub_10019D93C();
    v4 = *(v81 + 1912);
    if (v3)
    {
      swift_getKeyPath();
      *(v81 + 1640) = v4;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v4 + v5, v81 + 360, &unk_10025B1C0, &unk_1001CFA90);
      if (*(v81 + 384))
      {
        v6 = *(v81 + 1912);
        sub_100028458(v81 + 360, v81 + 440);
        sub_10000F500(v81 + 360, &unk_10025B1C0, &unk_1001CFA90);
        v7 = sub_100027874((v81 + 440), *(v81 + 464));
        v8 = sub_1000971C0();
        v10 = v9;
        swift_getKeyPath();
        *(v81 + 1568) = v6;
        sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v16 = *(v6 + 96);
        if (v16 != 255)
        {
          v17 = *(v81 + 2304);
          v18 = *(v81 + 1912);
          v20 = v18[10];
          v19 = v18[11];
          v21 = v18[9];
          sub_10000F3F4(v21, v20, v19, v16);

          v22 = *v7;
          sub_10000E808(v8, v10, v21, v20, v19, v16);

          sub_1000278C0(v21, v20, v19, v16);

          sub_10000F4B4((v81 + 440));
          goto LABEL_28;
        }

        goto LABEL_91;
      }

      v66 = *(v81 + 2304);

      v67 = v81 + 360;
    }

    else
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_100036BF0(v169);
      if (qword_10025A728 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10000F34C(v48, qword_100276FE0);
      swift_errorRetain();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        swift_errorRetain();
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v53;
        *v52 = v53;
        _os_log_impl(&_mh_execute_header, v49, v50, "Error occurred in rewriting: %@", v51, 0xCu);
        sub_10000F500(v52, &unk_10025D580, &qword_1001CFA60);
      }

      v54 = *(v81 + 1912);

      swift_getKeyPath();
      *(v81 + 1816) = v54;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v55 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v54 + v55, v81 + 520, &unk_10025B1C0, &unk_1001CFA90);
      if (*(v81 + 544))
      {
        v56 = *(v81 + 1912);
        sub_100028458(v81 + 520, v81 + 280);
        sub_10000F500(v81 + 520, &unk_10025B1C0, &unk_1001CFA90);
        v57 = sub_100027874((v81 + 280), *(v81 + 304));
        swift_getKeyPath();
        *(v81 + 1672) = v56;
        sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v58 = *(v56 + 96);
        if (v58 != 255)
        {
          v59 = *(v81 + 2304);
          v60 = *(v81 + 1912);
          v62 = v60[10];
          v61 = v60[11];
          v63 = v60[9];
          sub_10000F3F4(v63, v62, v61, v58);

          v64 = *v57;
          sub_10000DB64(v169, v63, v62, v61, v58);

          sub_1000278C0(v63, v62, v61, v58);

          sub_10000F4B4((v81 + 280));
          goto LABEL_28;
        }

        goto LABEL_92;
      }

      v68 = *(v81 + 2304);

      v67 = v81 + 520;
    }

    sub_10000F500(v67, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_28;
  }

LABEL_56:
  v137 = __OFSUB__(v136, 1);
  v11 = v136 - 1;
  if (v137)
  {
    __break(1u);
    goto LABEL_88;
  }

  if ((v134 & 0xC000000000000001) != 0)
  {
LABEL_88:
    v138 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_61;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v11 >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v138 = *(v134 + 8 * v11 + 32);
LABEL_61:
  v139 = v138;
  v140 = *(v81 + 1912);

  if (sub_1000B59E4(v139))
  {
    v141 = [v139 attributedText];
    [v139 range];
LABEL_64:
    *(v81 + 2408) = v139;
    *(v81 + 2400) = v141;
    v144 = *(v81 + 2224);
    v255 = *(v81 + 2256);
    v258 = *(v81 + 2216);
    v252 = *(v81 + 2208);
    v145 = *(v81 + 2200);
    v146 = *(v81 + 2192);
    v244 = *(v81 + 2184);
    v147 = *(v81 + 2176);
    v148 = *(v81 + 2168);
    v226 = *(v81 + 2160);
    v149 = *(v81 + 2144);
    v233 = *(v81 + 2152);
    v237 = *(v81 + 2136);
    v150 = type metadata accessor for TextComposerClient();
    v151 = *(v150 + 48);
    v152 = *(v150 + 52);
    swift_allocObject();
    v153 = v139;
    TextComposerClient.init()();
    sub_100106D54(v247);
    dispatch thunk of TextComposerClient.streamForRewriting(of:range:rewriteType:options:)();

    (*(v148 + 8))(v147, v226);
    v154 = swift_task_alloc();
    *(v154 + 16) = v153;
    *(v154 + 24) = v145;
    sub_10000341C(&qword_100260BC8, &qword_1001D5CB8);
    (*(v149 + 104))(v233, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v237);
    AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

    (*(v146 + 8))(v145, v244);
    AsyncThrowingStream.makeAsyncIterator()();
    (*(v258 + 8))(v144, v252);
    *(v81 + 2416) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions;
    *(v81 + 2424) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString;
    v155 = *(v81 + 2296);
    v156 = static MainActor.shared.getter();
    *(v81 + 2432) = v156;
    v157 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v158 = swift_task_alloc();
    *(v81 + 2440) = v158;
    *v158 = v81;
    v158[1] = sub_1000BB99C;
    v159 = *(v81 + 2256);
    v14 = *(v81 + 2232);
    v13 = &protocol witness table for MainActor;
    v11 = v81 + 16;
    v15 = v81 + 1648;
    goto LABEL_65;
  }

  v185 = *(v81 + 2304);

  sub_1000278C0(v247, v25, v26, 0);

LABEL_28:
  v69 = *(v81 + 2288);
  v70 = *(v81 + 2280);
  v71 = *(v81 + 2256);
  v72 = *(v81 + 2248);
  v73 = *(v81 + 2224);
  v74 = v81;
  v75 = *(v81 + 2200);
  v76 = v74[272];
  v77 = v74[269];
  v78 = v74[266];
  v79 = v74[265];
  v221 = v74[264];
  v222 = v74[263];
  v223 = v74[260];
  v224 = v74[257];
  v225 = v74[254];
  v228 = v74[251];
  v230 = v74[250];
  v232 = v74[249];
  v236 = v74[246];
  v240 = v74[245];
  v243 = v74[244];
  v248 = v74[243];
  v251 = v74[242];
  v254 = v74[241];
  v257 = v74[240];

  v80 = v74[1];

  return v80();
}

uint64_t sub_1000BB99C()
{
  v2 = *v1;
  v3 = *(*v1 + 2440);
  v4 = *v1;
  v2[306] = v0;

  v5 = v2[304];
  if (v0)
  {
    v6 = v2[295];
    v7 = v2[294];
    v8 = v2[293];

    sub_1000278C0(v8, v7, v6, 0);
    v9 = v2[290];
    v10 = v2[289];
    v11 = sub_1000C1654;
  }

  else
  {

    v9 = v2[290];
    v10 = v2[289];
    v11 = sub_1000BBAFC;
  }

  return _swift_task_switch(v11, v10, v9);
}

void *sub_1000BBAFC()
{
  v197 = v0;
  v1 = *(v0 + 16);
  *(v0 + 2456) = v1;
  v3 = *(v0 + 24);
  length = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 2464) = *(v0 + 48);
  v5 = *(v0 + 64);
  *(v0 + 2472) = *(v0 + 56);
  *(v0 + 2480) = v5;
  v6 = *(v0 + 80);
  *(v0 + 2488) = *(v0 + 72);
  *(v0 + 2496) = v6;
  if (!v1)
  {
    v24 = *(v0 + 2376);
    v25 = *(v0 + 2368);
    v26 = *(v0 + 1912);
    (*(*(v0 + 2240) + 8))(*(v0 + 2256), *(v0 + 2232));
    swift_getKeyPath();
    *(v0 + 1656) = v26;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString;
    v28 = *(v26 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
    v29 = v28;
    if (!v28)
    {
      v30 = *(v0 + 1896);
      v31 = [v30 attributedText];
      v32 = [v30 range];
      v29 = [v31 attributedSubstringFromRange:{v32, v33}];
    }

    v34 = *(v0 + 2376);
    v35 = *(v0 + 2368);
    v36 = *(v0 + 1912);
    v37 = v28;
    sub_1000B2ACC(v29);
    swift_getKeyPath();
    *(v0 + 1664) = v36;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v191 = v27;
    v194 = v26;
    result = *(v26 + v27);
    if (!result)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v38 = *(v0 + 2392);
    v39 = *(v0 + 2376);
    v40 = *(v0 + 2368);
    v41 = *(v0 + 1912);
    v42 = [result string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = _NSRange.init(_:)();
    v45 = v44;
    v47 = v46;

    sub_1000B2DD0(v43, v45, v47 & 1);
    swift_getKeyPath();
    *(v0 + 1680) = v41;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000081F8(v41 + v38, v0 + 320, &unk_10025B1C0, &unk_1001CFA90);
    if (!*(v0 + 344))
    {
      sub_10000F500(v0 + 320, &unk_10025B1C0, &unk_1001CFA90);
      v100 = v191;
      goto LABEL_54;
    }

    v48 = *(v0 + 2376);
    v49 = *(v0 + 2368);
    v50 = *(v0 + 2336);
    v51 = *(v0 + 2328);
    v52 = *(v0 + 1912);
    sub_100028458(v0 + 320, v0 + 240);
    sub_10000F500(v0 + 320, &unk_10025B1C0, &unk_1001CFA90);
    v173 = sub_100027874((v0 + 240), *(v0 + 264));
    swift_getKeyPath();
    *(v0 + 1704) = v52;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = *(v52 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);
    v171 = *(v52 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
    swift_getKeyPath();
    *(v0 + 1712) = v52;
    v186 = v53;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v54 = *(v52 + 96);
    if (v54 == 255)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v55 = *(v52 + 72);
    v56 = *(v52 + 80);
    v57 = *(v52 + 88);
    v188 = *(v0 + 2376);
    v178 = *(v0 + 2368);
    v58 = *(v0 + 2336);
    v59 = *(v0 + 2328);
    v60 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1720) = v60;
    v184 = v55;
    v181 = v57;
    sub_10000F3F4(v55, v56, v57, v54);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v61 = *(v60 + 136);
    swift_getKeyPath();
    *(v0 + 1728) = v60;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    result = *(v194 + v191);
    if (!result)
    {
LABEL_62:
      __break(1u);
      return result;
    }

    v62 = v54;
    v161 = v61;
    v63 = *(v0 + 2376);
    v64 = *(v0 + 2368);
    v65 = *(v0 + 1912);
    v66 = [result string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    *(v0 + 1736) = v65;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v67 = *(v65 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
    v160 = *(v65 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
    swift_getKeyPath();
    *(v0 + 1744) = v65;
    v179 = v67;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v68 = *(v65 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount);
    swift_getKeyPath();
    *(v0 + 1752) = v65;
    v165 = v68;
    v176 = v68;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v69 = *v173;
    v70 = qword_10025A6F8;
    v167 = *(v65 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount);
    v174 = v167;
    if (v70 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_10000F34C(v71, qword_100276F50);

    sub_10002879C(v55, v56, v181, v62);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();

    sub_1000278C0(v184, v56, v181, v62);
    v159 = v73;
    v169 = v69;
    v162 = v62;
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *v74 = 136643075;
      *(v74 + 4) = sub_10002510C(v171, v186, &v196);
      *(v74 + 12) = 2081;
      sub_100106A3C();
      v75 = String._bridgeToObjectiveC()();

      v76 = [v75 key];

      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v80 = sub_10002510C(v77, v79, &v196);

      *(v74 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v72, v159, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v74, 0x16u);
      swift_arrayDestroy();
    }

    if (v161)
    {
      if (qword_10025A5D0 != -1)
      {
        swift_once();
      }

      v101 = qword_100276DE0;
      v81 = sub_10017D6C4(0, 1, 1, _swiftEmptyArrayStorage);
      v103 = v81[2];
      v102 = v81[3];
      if (v103 >= v102 >> 1)
      {
        v81 = sub_10017D6C4((v102 > 1), v103 + 1, 1, v81);
      }

      v81[2] = v103 + 1;
      v81[v103 + 4] = v101;
      if ((v161 & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v81 = _swiftEmptyArrayStorage;
      if ((v161 & 2) == 0)
      {
LABEL_36:
        sub_10000341C(&unk_10025F490, &unk_1001CFA50);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_1001CF9F0;
        if (qword_10025A528 != -1)
        {
          swift_once();
        }

        v108 = qword_100276D38;
        *(v107 + 32) = qword_100276D38;
        v109 = v108;
        v110 = String._bridgeToObjectiveC()();

        v111 = IAPayloadKeyWritingToolsFeatureDetails;
        *(v107 + 40) = v110;
        *(v107 + 48) = v111;
        v112 = v111;
        v113 = sub_10000F174(v184, v56, v181, v162);
        sub_1000278C0(v184, v56, v181, v162);
        *(v107 + 56) = v113;
        if (qword_10025A530 != -1)
        {
          swift_once();
        }

        v114 = qword_100276D40;
        *(v107 + 64) = qword_100276D40;
        type metadata accessor for IAPayloadValue(0);
        v115 = v114;
        isa = Array._bridgeToObjectiveC()().super.isa;

        *(v107 + 72) = isa;
        v117 = sub_100005794(v107);
        swift_setDeallocating();
        sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v118 = IAPayloadKeyWritingToolsResultText;
        v119 = String._bridgeToObjectiveC()();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v196 = v117;
        sub_1001A9924(v119, v118, isUniquelyReferenced_nonNull_native);

        v121 = v196;
        if (v179)
        {
          v122 = IAPayloadKeyWritingToolsInputLanguage;
          v123 = String._bridgeToObjectiveC()();
          v124 = swift_isUniquelyReferenced_nonNull_native();
          v196 = v121;
          sub_1001A9924(v123, v122, v124);

          v121 = v196;
        }

        if (v165)
        {
          v125 = qword_10025A5B8;
          v126 = v176;
          if (v125 != -1)
          {
            swift_once();
          }

          v127 = qword_100276DC8;
          v128 = swift_isUniquelyReferenced_nonNull_native();
          v196 = v121;
          sub_1001A9924(v126, v127, v128);

          v121 = v196;
        }

        if (v167)
        {
          v129 = qword_10025A5C0;
          v130 = v174;
          if (v129 != -1)
          {
            swift_once();
          }

          v131 = qword_100276DD0;
          v132 = swift_isUniquelyReferenced_nonNull_native();
          v196 = v121;
          sub_1001A9924(v130, v131, v132);
        }

        v133 = *(v0 + 2272);
        v134 = *(v0 + 2264);
        v135 = *(v0 + 2128);
        v136 = IASignalWritingToolsResultsGenerated;
        v137 = IAChannelWritingTools;
        sub_1000081F8(v169 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v135, &unk_100262450, &qword_1001CFAA0);
        if ((*(v133 + 48))(v135, 1, v134) == 1)
        {
          sub_10000F500(*(v0 + 2128), &unk_100262450, &qword_1001CFAA0);
          v138 = 0;
        }

        else
        {
          v139 = *(v0 + 2272);
          v140 = *(v0 + 2264);
          v141 = *(v0 + 2128);
          UUID.uuidString.getter();
          (*(v139 + 8))(v141, v140);
          v138 = String._bridgeToObjectiveC()();
        }

        v100 = v191;
        v142 = objc_opt_self();
        type metadata accessor for IAPayloadKey(0);
        sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
        sub_1000C4F1C(&qword_10025AF18, type metadata accessor for IAPayloadKey);
        v143 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v142 sendSignal:v136 toChannel:v137 withNullableUniqueStringID:v138 withPayload:v143];

        sub_10000F4B4((v0 + 240));
LABEL_54:
        v144 = *(v0 + 2376);
        v145 = *(v0 + 2368);
        v146 = *(v0 + 1912);
        swift_getKeyPath();
        *(v0 + 1688) = v146;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v147 = *(v194 + v100);
        *(v0 + 2512) = v147;
        if (v147)
        {
          v148 = *(v0 + 2384);
          v149 = *(v0 + 2360);
          v150 = *(v0 + 2352);
          v151 = *(v0 + 2344);
          v152 = *(v0 + 1896);
          v153 = v147;
          sub_1000278C0(v151, v150, v149, 0);

          v154 = [v152 range];
          v156 = v155;
          v157 = swift_task_alloc();
          *(v0 + 2520) = v157;
          *v157 = v0;
          v157[1] = sub_1000BD0C8;
          v158 = *(v0 + 1912);
          v95 = *(v0 + 1896);
          v96 = v153;
          v97 = v154;
          v98 = v156;
          v99 = 1;
          goto LABEL_56;
        }

        goto LABEL_60;
      }
    }

    if (qword_10025A5D8 != -1)
    {
      swift_once();
    }

    v104 = qword_100276DE8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_10017D6C4(0, v81[2] + 1, 1, v81);
    }

    v106 = v81[2];
    v105 = v81[3];
    if (v106 >= v105 >> 1)
    {
      v81 = sub_10017D6C4((v105 > 1), v106 + 1, 1, v81);
    }

    v81[2] = v106 + 1;
    v81[v106 + 4] = v104;
    goto LABEL_36;
  }

  if (static Task<>.isCancelled.getter())
  {
    v7 = *(v0 + 2400);
    v189 = *(v0 + 2408);
    v192 = *(v0 + 2384);
    v8 = *(v0 + 2360);
    v9 = *(v0 + 2352);
    v10 = *(v0 + 2344);
    v11 = *(v0 + 2304);
    (*(*(v0 + 2240) + 8))(*(v0 + 2256), *(v0 + 2232));

    sub_1000278C0(v10, v9, v8, 0);

    v12 = *(v0 + 2288);
    v13 = *(v0 + 2280);
    v14 = *(v0 + 2256);
    v15 = *(v0 + 2248);
    v16 = *(v0 + 2224);
    v17 = *(v0 + 2200);
    v18 = *(v0 + 2176);
    v19 = *(v0 + 2152);
    v20 = *(v0 + 2128);
    v21 = *(v0 + 2120);
    v163 = *(v0 + 2112);
    v164 = *(v0 + 2104);
    v166 = *(v0 + 2080);
    v168 = *(v0 + 2056);
    v170 = *(v0 + 2032);
    v172 = *(v0 + 2008);
    v175 = *(v0 + 2000);
    v177 = *(v0 + 1992);
    v180 = *(v0 + 1968);
    v182 = *(v0 + 1960);
    v183 = *(v0 + 1952);
    v185 = *(v0 + 1944);
    v187 = *(v0 + 1936);
    v190 = *(v0 + 1928);
    v193 = *(v0 + 1920);

    v22 = *(v0 + 8);

    return v22();
  }

  location = v3;
  if (*(v0 + 2737) == 1)
  {
    v82 = *(v0 + 2416);
    v83 = *(v0 + 2376);
    v84 = *(v0 + 2368);
    v85 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1792) = v85;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!sub_100138178(4uLL, *(v85 + v82)))
    {
      v200.location = [*(v0 + 1896) range];
      v200.length = v86;
      v199.location = location;
      v199.length = length;
      v87 = NSIntersectionRange(v199, v200);
      location = v87.location;
      length = v87.length;
    }
  }

  v88 = *(v0 + 2336);
  v89 = *(v0 + 2328);
  v90 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1760) = v90;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 1768) = v90;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v91 = *(v90 + 136);
  v92 = v91 | v4;
  sub_100037118(v91 | v4);
  *(v90 + 136) = v92;
  *(v0 + 1776) = v90;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v93 = swift_task_alloc();
  *(v0 + 2504) = v93;
  *v93 = v0;
  v93[1] = sub_1000BCD30;
  v94 = *(v0 + 1912);
  v95 = *(v0 + 1896);
  v96 = v1;
  v97 = location;
  v98 = length;
  v99 = 0;
LABEL_56:

  return sub_1000C1DC0(v96, v97, v98, v95, v99);
}

uint64_t sub_1000BCD30()
{
  v1 = *v0;
  v2 = *(*v0 + 2504);
  v6 = *v0;

  v3 = *(v1 + 2320);
  v4 = *(v1 + 2312);

  return _swift_task_switch(sub_1000BCE50, v4, v3);
}

uint64_t sub_1000BCE50()
{
  v1 = *(v0 + 1912);
  v2 = *(v1 + *(v0 + 2424));
  v3 = *(v0 + 2456);
  if (v2)
  {
    sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
    v4 = v3;
    v5 = v2;
    v6 = static NSObject.== infix(_:_:)();

    v3 = *(v0 + 2456);
    v1 = *(v0 + 1912);
    if (v6)
    {
      v7 = *(v0 + 2424);
      v8 = *(v1 + v7);
      *(v1 + v7) = v3;

      goto LABEL_7;
    }

    v9 = *(v0 + 2456);
  }

  else
  {
    v9 = v3;
  }

  v10 = *(v0 + 2448);
  v11 = *(v0 + 2376);
  v12 = *(v0 + 2368);
  swift_getKeyPath();
  v13 = swift_task_alloc();
  *(v13 + 16) = v1;
  *(v13 + 24) = v3;
  *(v0 + 1784) = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_7:
  v14 = *(v0 + 2488);
  v15 = *(v0 + 2480);
  v16 = *(v0 + 1912);
  v17 = *(v0 + 1904);
  sub_1000B2F64(*(v0 + 2464), *(v0 + 2472));
  sub_1000B3184(v15, v14);
  if (v17)
  {
    v18 = [*(v0 + 1904) completedUnitCount];
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v18, v19, v22, v20, v21);
    }

    [*(v0 + 1904) setCompletedUnitCount:v22];
  }

  v23 = *(v0 + 2496);
  v24 = *(v0 + 2456);
  v25 = *(v0 + 1912);
  v26 = sub_10009D508(v23);
  sub_1000B34C8(v26, v27);
  v28 = sub_10009D5C4(v23);
  sub_1000B371C(v28);
  v29 = sub_10009D5D0(v23);

  sub_1000B3758(v29);

  v30 = *(v0 + 2296);
  v31 = static MainActor.shared.getter();
  *(v0 + 2432) = v31;
  v32 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v33 = swift_task_alloc();
  *(v0 + 2440) = v33;
  *v33 = v0;
  v33[1] = sub_1000BB99C;
  v34 = *(v0 + 2256);
  v20 = *(v0 + 2232);
  v22 = &protocol witness table for MainActor;
  v18 = (v0 + 16);
  v21 = v0 + 1648;
  v19 = v31;

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v18, v19, v22, v20, v21);
}

uint64_t sub_1000BD0C8()
{
  v1 = *v0;
  v2 = *(*v0 + 2520);
  v3 = *(*v0 + 2512);
  v7 = *v0;

  v4 = *(v1 + 2320);
  v5 = *(v1 + 2312);

  return _swift_task_switch(sub_1000BD208, v5, v4);
}

uint64_t sub_1000BD208()
{
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2304);

  v3 = *(v0 + 2280);
  v4 = *(v0 + 1912);
  v5 = [*(v0 + 1896) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 1336) = v4;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  swift_getKeyPath();
  *(v0 + 1880) = v4;
  v7 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 1872) = v4;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10019D3DC(v6, v3);
  swift_endAccess();
  *(v0 + 1864) = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v8 = *(v0 + 2288);
  v9 = *(v0 + 2280);
  v10 = *(v0 + 2256);
  v11 = *(v0 + 2248);
  v12 = *(v0 + 2224);
  v13 = *(v0 + 2200);
  v14 = *(v0 + 2176);
  v15 = *(v0 + 2152);
  v16 = *(v0 + 2128);
  v17 = *(v0 + 2120);
  v20 = *(v0 + 2112);
  v21 = *(v0 + 2104);
  v22 = *(v0 + 2080);
  v23 = *(v0 + 2056);
  v24 = *(v0 + 2032);
  v25 = *(v0 + 2008);
  v26 = *(v0 + 2000);
  v27 = *(v0 + 1992);
  v28 = *(v0 + 1968);
  v29 = *(v0 + 1960);
  v30 = *(v0 + 1952);
  v31 = *(v0 + 1944);
  v32 = *(v0 + 1936);
  v33 = *(v0 + 1928);
  v34 = *(v0 + 1920);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000BD554()
{
  v2 = *v1;
  v3 = *(*v1 + 2616);
  v4 = *v1;
  v2[328] = v0;

  v5 = v2[326];
  if (v0)
  {
    v6 = v2[316];
    v7 = v2[295];
    v8 = v2[294];
    v9 = v2[293];

    sub_1000278C0(v9, v8, v7, 0);

    v10 = v2[290];
    v11 = v2[289];
    v12 = sub_1000C07B4;
  }

  else
  {

    v10 = v2[290];
    v11 = v2[289];
    v12 = sub_1000BD6C8;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_1000BD6C8()
{
  v237 = v0;
  if (!*(v0 + 88))
  {
    v13 = *(v0 + 2552);
    v14 = *(v0 + 2544);
    v15 = *(v0 + 2536);
    v16 = *(v0 + 1912);
    (*(*(v0 + 2240) + 8))(*(v0 + 2248), *(v0 + 2232));
    swift_getKeyPath();
    *(v0 + 1408) = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000081F8(v16 + v13, v0 + 640, &unk_10025B1C0, &unk_1001CFA90);
    if (!*(v0 + 664))
    {
      v58 = *(v0 + 2528);
      v59 = *(v0 + 2360);
      v60 = *(v0 + 2352);
      v61 = *(v0 + 2344);
      v62 = *(v0 + 2304);

      sub_1000278C0(v61, v60, v59, 0);

      sub_10000F500(v0 + 640, &unk_10025B1C0, &unk_1001CFA90);
LABEL_63:
      v138 = *(v0 + 2280);
      v139 = *(v0 + 1912);
      v140 = [*(v0 + 1896) uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      *(v0 + 1336) = v139;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v141 = *(v139 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
      swift_getKeyPath();
      *(v0 + 1880) = v139;
      v142 = v141;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 1872) = v139;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      sub_10019D3DC(v141, v138);
      swift_endAccess();
      *(v0 + 1864) = v139;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      goto LABEL_64;
    }

    v17 = *(v0 + 2544);
    v18 = *(v0 + 2536);
    v19 = *(v0 + 2336);
    v20 = *(v0 + 2328);
    v21 = *(v0 + 1912);
    v22 = (v21 + *(v0 + 2568));
    sub_100028458(v0 + 640, v0 + 560);
    sub_10000F500(v0 + 640, &unk_10025B1C0, &unk_1001CFA90);
    v212 = sub_100027874((v0 + 560), *(v0 + 584));
    swift_getKeyPath();
    *(v0 + 1424) = v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = v22[1];
    v207 = *v22;
    swift_getKeyPath();
    *(v0 + 1432) = v21;
    v209 = v23;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = *(v21 + 96);
    if (v28 == 255)
    {
      __break(1u);
      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v24, v25, v26, v28, v27);
    }

    v29 = *(v21 + 72);
    v30 = *(v21 + 80);
    v31 = *(v21 + 88);
    v228 = *(v0 + 2584);
    v215 = *(v0 + 2544);
    v205 = *(v0 + 2536);
    v32 = *(v0 + 2528);
    v33 = *(v0 + 2360);
    v34 = *(v0 + 2352);
    v35 = *(v0 + 2344);
    v36 = *(v0 + 2336);
    v37 = *(v0 + 2328);
    v38 = *(v0 + 2304);
    v39 = *(v0 + 1912);
    v234 = v29;
    v218 = v31;
    v221 = v30;
    v225 = v28;
    sub_10000F3F4(v29, v30, v31, v28);

    sub_1000278C0(v35, v34, v33, 0);

    swift_getKeyPath();
    *(v0 + 1440) = v39;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v197 = *(v39 + 136);
    swift_getKeyPath();
    *(v0 + 1448) = v39;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = *(v39 + v228);
    if (v40)
    {
      v41 = [v40 string];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v229 = v42;
    }

    else
    {
      v229 = 0;
    }

    v79 = *(v0 + 2544);
    v80 = *(v0 + 2536);
    v81 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1456) = v81;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v82 = *(v81 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
    v195 = *(v81 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
    swift_getKeyPath();
    *(v0 + 1344) = v81;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v83 = *(v81 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount);
    swift_getKeyPath();
    *(v0 + 1472) = v81;
    v199 = v83;
    v216 = v83;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v201 = *v212;
    v203 = *(v81 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount);
    v84 = qword_10025A6F8;
    v213 = v203;
    if (v84 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_10000F34C(v85, qword_100276F50);

    v86 = v234;
    sub_10002879C(v234, v221, v218, v225);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.info.getter();

    sub_1000278C0(v234, v221, v218, v225);
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v236[0] = swift_slowAlloc();
      *v89 = 136643075;
      *(v89 + 4) = sub_10002510C(v207, v209, v236);
      *(v89 + 12) = 2081;
      sub_100106A3C();
      v90 = String._bridgeToObjectiveC()();

      v91 = [v90 key];

      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;

      v95 = sub_10002510C(v92, v94, v236);

      *(v89 + 14) = v95;
      _os_log_impl(&_mh_execute_header, v87, v88, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v89, 0x16u);
      swift_arrayDestroy();

      v86 = v234;
    }

    if (v197)
    {
      if (qword_10025A5D0 != -1)
      {
        swift_once();
      }

      v97 = qword_100276DE0;
      v96 = sub_10017D6C4(0, 1, 1, _swiftEmptyArrayStorage);
      v99 = v96[2];
      v98 = v96[3];
      if (v99 >= v98 >> 1)
      {
        v96 = sub_10017D6C4((v98 > 1), v99 + 1, 1, v96);
      }

      v96[2] = v99 + 1;
      v96[v99 + 4] = v97;
      v86 = v234;
      if ((v197 & 2) == 0)
      {
LABEL_44:
        sub_10000341C(&unk_10025F490, &unk_1001CFA50);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1001CF9F0;
        if (qword_10025A528 != -1)
        {
          swift_once();
        }

        v104 = qword_100276D38;
        *(v103 + 32) = qword_100276D38;
        v105 = v104;
        v106 = String._bridgeToObjectiveC()();

        v107 = IAPayloadKeyWritingToolsFeatureDetails;
        *(v103 + 40) = v106;
        *(v103 + 48) = v107;
        v108 = v107;
        v109 = sub_10000F174(v86, v221, v218, v225);
        sub_1000278C0(v86, v221, v218, v225);
        *(v103 + 56) = v109;
        if (qword_10025A530 != -1)
        {
          swift_once();
        }

        v110 = qword_100276D40;
        *(v103 + 64) = qword_100276D40;
        type metadata accessor for IAPayloadValue(0);
        v111 = v110;
        isa = Array._bridgeToObjectiveC()().super.isa;

        *(v103 + 72) = isa;
        v57 = sub_100005794(v103);
        swift_setDeallocating();
        sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v229)
        {
          v113 = IAPayloadKeyWritingToolsResultText;
          v114 = String._bridgeToObjectiveC()();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v236[0] = v57;
          sub_1001A9924(v114, v113, isUniquelyReferenced_nonNull_native);

          v57 = v236[0];
        }

        if (v82)
        {
          v116 = IAPayloadKeyWritingToolsInputLanguage;
          v117 = String._bridgeToObjectiveC()();
          v118 = swift_isUniquelyReferenced_nonNull_native();
          v236[0] = v57;
          sub_1001A9924(v117, v116, v118);

          v57 = v236[0];
        }

        if (!v199)
        {
          goto LABEL_55;
        }

        v119 = qword_10025A5B8;
        v73 = v216;
        if (v119 == -1)
        {
LABEL_54:
          v120 = qword_100276DC8;
          v121 = swift_isUniquelyReferenced_nonNull_native();
          v236[0] = v57;
          sub_1001A9924(v73, v120, v121);

          v57 = v236[0];
LABEL_55:
          if (v203)
          {
            v122 = qword_10025A5C0;
            v123 = v213;
            if (v122 != -1)
            {
              swift_once();
            }

            v124 = qword_100276DD0;
            v125 = swift_isUniquelyReferenced_nonNull_native();
            v236[0] = v57;
            sub_1001A9924(v123, v124, v125);
          }

          v126 = *(v0 + 2272);
          v127 = *(v0 + 2264);
          v128 = *(v0 + 2120);
          v129 = IASignalWritingToolsResultsGenerated;
          v130 = IAChannelWritingTools;
          sub_1000081F8(v201 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v128, &unk_100262450, &qword_1001CFAA0);
          if ((*(v126 + 48))(v128, 1, v127) == 1)
          {
            sub_10000F500(*(v0 + 2120), &unk_100262450, &qword_1001CFAA0);
            v131 = 0;
          }

          else
          {
            v132 = *(v0 + 2272);
            v133 = *(v0 + 2264);
            v134 = *(v0 + 2120);
            UUID.uuidString.getter();
            (*(v132 + 8))(v134, v133);
            v131 = String._bridgeToObjectiveC()();
          }

          v135 = *(v0 + 1896);
          v136 = objc_opt_self();
          type metadata accessor for IAPayloadKey(0);
          sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
          sub_1000C4F1C(&qword_10025AF18, type metadata accessor for IAPayloadKey);
          v137 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v136 sendSignal:v129 toChannel:v130 withNullableUniqueStringID:v131 withPayload:v137];

          sub_10000F4B4((v0 + 560));
          goto LABEL_63;
        }

LABEL_98:
        swift_once();
        goto LABEL_54;
      }
    }

    else
    {
      v96 = _swiftEmptyArrayStorage;
      if ((v197 & 2) == 0)
      {
        goto LABEL_44;
      }
    }

    if (qword_10025A5D8 != -1)
    {
      swift_once();
    }

    v100 = qword_100276DE8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v96 = sub_10017D6C4(0, v96[2] + 1, 1, v96);
    }

    v102 = v96[2];
    v101 = v96[3];
    if (v102 >= v101 >> 1)
    {
      v96 = sub_10017D6C4((v101 > 1), v102 + 1, 1, v96);
    }

    v96[2] = v102 + 1;
    v96[v102 + 4] = v100;
    v86 = v234;
    goto LABEL_44;
  }

  v233 = *(v0 + 88);
  v227 = *(v0 + 96);
  v224 = *(v0 + 104);
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v210 = v1;
    v213 = v4;
    v216 = v6;
    v219 = v3;
    v222 = v5;
    v43 = *(v0 + 2584);
    v44 = *(v0 + 2336);
    v45 = *(v0 + 2328);
    v46 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1480) = v46;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 1488) = v46;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v47 = *(v46 + 136);
    v48 = v47 | v2;
    sub_100037118(v47 | v2);
    *(v46 + 136) = v48;
    *(v0 + 1496) = v46;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v49 = *(v46 + v43);
    if (v49)
    {
      sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
      v50 = v233;
      v51 = v49;
      v52 = static NSObject.== infix(_:_:)();

      v53 = v216;
      if (v52)
      {
        v54 = *(v0 + 2584);
        v55 = *(v0 + 1912);
        v56 = *(v55 + v54);
        *(v55 + v54) = v233;

        v57 = *(v0 + 2624);
LABEL_14:
        v68 = *(v0 + 1912);
        v69 = v68 + *(v0 + 2560);
        if ((*(v69 + 16) & 1) == 0 && *v69 == v227 && *(v69 + 8) == v224)
        {
          *v69 = v227;
          *(v69 + 8) = v224;
          *(v69 + 16) = 0;
        }

        else
        {
          v70 = *(v0 + 2544);
          v71 = *(v0 + 2536);
          swift_getKeyPath();
          v72 = swift_task_alloc();
          *(v72 + 16) = v68;
          *(v72 + 24) = v227;
          *(v72 + 32) = v224;
          *(v72 + 40) = 0;
          *(v0 + 1512) = v68;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v73 = v219;
        v74 = v222;
        v75 = *(v0 + 2568);
        v76 = *(v0 + 1912);
        if (*(v76 + v75) != v210 || *(v76 + v75 + 8) != v213)
        {
          v77 = *(v76 + v75 + 8);
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v231 = *(v0 + 2544);
            v155 = *(v0 + 2536);
            v156 = *(v0 + 1912);
            swift_getKeyPath();
            v157 = swift_task_alloc();
            v157[2] = v156;
            v157[3] = v210;
            v157[4] = v213;
            *(v0 + 1520) = v156;
            v73 = v219;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v74 = v222;

            goto LABEL_68;
          }

          v75 = *(v0 + 2568);
          v76 = *(v0 + 1912);
        }

        v78 = (v76 + v75);
        *v78 = v210;
        v78[1] = v213;

LABEL_68:
        v158 = *(v0 + 2576);
        v159 = *(v0 + 1912);
        if (*(v159 + v158) != v73 || *(v159 + v158 + 8) != v53)
        {
          v160 = *(v159 + v158 + 8);
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v163 = *(v0 + 2544);
            v232 = *(v0 + 2536);
            v164 = v73;
            v73 = *(v0 + 1912);
            swift_getKeyPath();
            v165 = swift_task_alloc();
            v165[2] = v73;
            v165[3] = v164;
            v165[4] = v53;
            *(v0 + 1528) = v73;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v162 = *(v0 + 1904);
            if (!v162)
            {
              goto LABEL_77;
            }

LABEL_75:
            v166 = [v162 completedUnitCount];
            if (!__OFADD__(v166, 1))
            {
              [*(v0 + 1904) setCompletedUnitCount:v166 + 1];
              goto LABEL_77;
            }

            __break(1u);
            goto LABEL_98;
          }

          v158 = *(v0 + 2576);
          v159 = *(v0 + 1912);
        }

        v161 = (v159 + v158);
        *v161 = v73;
        v161[1] = v53;

        v162 = *(v0 + 1904);
        if (!v162)
        {
LABEL_77:
          v167 = *(v0 + 2592);
          v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (*(v74 + 16))
          {
            v170 = sub_10000511C(v168, v169);
            v172 = v171;

            if (v172)
            {
              sub_10002B0D0(*(v74 + 56) + 32 * v170, v0 + 1088);
              v173 = swift_dynamicCast();
              v174 = *(v0 + 1304);
              v175 = v173 == 0;
              if (v173)
              {
                v176 = *(v0 + 1304);
              }

              else
              {
                v176 = 0;
              }

              if (v175)
              {
                v177 = 0;
              }

              else
              {
                v177 = *(v0 + 1312);
              }

LABEL_87:
              v178 = *(v0 + 2600);
              v179 = *(v0 + 1912);
              sub_1000B34C8(v176, v177);
              v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              if (*(v74 + 16))
              {
                v182 = sub_10000511C(v180, v181);
                v184 = v183;

                if (v184)
                {
                  sub_10002B0D0(*(v74 + 56) + 32 * v182, v0 + 1056);
                  sub_1000081B0(0, &qword_10025F4B8, NSNumber_ptr);
                  v185 = swift_dynamicCast();
                  v186 = *(v0 + 1552);
                  if (v185)
                  {
                    v187 = *(v0 + 1552);
                  }

                  else
                  {
                    v187 = 0;
                  }

LABEL_94:
                  v188 = *(v0 + 1912);
                  sub_1000B371C(v187);
                  v189 = sub_10009D5D0(v74);

                  sub_1000B3758(v189);

                  v190 = *(v0 + 2296);
                  v191 = static MainActor.shared.getter();
                  *(v0 + 2608) = v191;
                  v192 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
                  v193 = swift_task_alloc();
                  *(v0 + 2616) = v193;
                  *v193 = v0;
                  v193[1] = sub_1000BD554;
                  v194 = *(v0 + 2248);
                  v28 = *(v0 + 2232);
                  v26 = &protocol witness table for MainActor;
                  v27 = v0 + 1392;
                  v24 = v0 + 88;
                  v25 = v191;

                  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v24, v25, v26, v28, v27);
                }
              }

              else
              {
              }

              v187 = 0;
              goto LABEL_94;
            }
          }

          else
          {
          }

          v176 = 0;
          v177 = 0;
          goto LABEL_87;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v63 = v233;
      v53 = v216;
    }

    v57 = *(v0 + 2624);
    v64 = *(v0 + 2544);
    v65 = *(v0 + 2536);
    v66 = *(v0 + 1912);
    swift_getKeyPath();
    v67 = swift_task_alloc();
    *(v67 + 16) = v66;
    *(v67 + 24) = v233;
    *(v0 + 1504) = v66;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_14;
  }

  v7 = *(v0 + 2528);
  v8 = *(v0 + 2360);
  v9 = *(v0 + 2352);
  v10 = *(v0 + 2344);
  v11 = *(v0 + 2304);
  v12 = *(v0 + 1896);
  (*(*(v0 + 2240) + 8))(*(v0 + 2248), *(v0 + 2232));

  sub_1000278C0(v10, v9, v8, 0);

LABEL_64:
  v143 = *(v0 + 2288);
  v144 = *(v0 + 2280);
  v145 = *(v0 + 2256);
  v146 = *(v0 + 2248);
  v147 = *(v0 + 2224);
  v148 = *(v0 + 2200);
  v149 = *(v0 + 2176);
  v150 = *(v0 + 2152);
  v151 = *(v0 + 2128);
  v152 = *(v0 + 2120);
  v196 = *(v0 + 2112);
  v198 = *(v0 + 2104);
  v200 = *(v0 + 2080);
  v202 = *(v0 + 2056);
  v204 = *(v0 + 2032);
  v206 = *(v0 + 2008);
  v208 = *(v0 + 2000);
  v211 = *(v0 + 1992);
  v214 = *(v0 + 1968);
  v217 = *(v0 + 1960);
  v220 = *(v0 + 1952);
  v223 = *(v0 + 1944);
  v226 = *(v0 + 1936);
  v230 = *(v0 + 1928);
  v235 = *(v0 + 1920);

  v153 = *(v0 + 8);

  return v153();
}

uint64_t sub_1000BED34()
{
  v2 = *v1;
  v3 = *(*v1 + 2720);
  v14 = *v1;
  *(*v1 + 2728) = v0;

  v4 = v2[339];
  if (v0)
  {
    v5 = v2[337];
    v6 = v2[329];
    v7 = v2[295];
    v8 = v2[294];
    v9 = v2[293];

    sub_1000278C0(v9, v8, v7, 0);

    v10 = v2[290];
    v11 = v2[289];
    v12 = sub_1000C0F0C;
  }

  else
  {

    v10 = v2[290];
    v11 = v2[289];
    v12 = sub_1000BEEA8;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_1000BEEA8()
{
  v277 = v0;
  v2 = *(v0 + 2000);
  v3 = *(v0 + 1984);
  v4 = *(v0 + 1976);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v0 + 2704);
    v6 = *(v0 + 2696);
    (*(*(v0 + 2096) + 8))(*(v0 + 2104), *(v0 + 2088));
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = *(v0 + 2704);
      v9 = *(v0 + 2696);
      v10 = *(v0 + 1912);
      v11 = objc_allocWithZone(NSAttributedString);
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 initWithString:v12];

      sub_1000B2ACC(v13);
      v14 = _NSRange.init(_:)();
      sub_1000B2DD0(v14, v16, v15 & 1);
    }

    v17 = *(v0 + 2656);
    v18 = *(v0 + 2648);
    v19 = *(v0 + 2640);
    v20 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1856) = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000081F8(v20 + v17, v0 + 760, &unk_10025B1C0, &unk_1001CFA90);
    v21 = &qword_100260000;
    if (!*(v0 + 784))
    {
      v65 = *(v0 + 2696);
      v66 = *(v0 + 2632);
      v67 = *(v0 + 2360);
      v68 = *(v0 + 2352);
      v69 = *(v0 + 2344);
      v70 = *(v0 + 2304);

      sub_1000278C0(v69, v68, v67, 0);

      sub_10000F500(v0 + 760, &unk_10025B1C0, &unk_1001CFA90);
LABEL_60:
      v150 = *(v0 + 2280);
      v151 = *(v0 + 1912);
      v152 = [*(v0 + 1896) uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      *(v0 + 1336) = v151;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v153 = *(v151 + v21[45]);
      swift_getKeyPath();
      *(v0 + 1880) = v151;
      v154 = v153;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 1872) = v151;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      sub_10019D3DC(v153, v150);
      swift_endAccess();
      *(v0 + 1864) = v151;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      goto LABEL_61;
    }

    v22 = *(v0 + 2648);
    v23 = *(v0 + 2640);
    v24 = *(v0 + 2336);
    v25 = *(v0 + 2328);
    v26 = *(v0 + 1912);
    sub_100028458(v0 + 760, v0 + 160);
    sub_10000F500(v0 + 760, &unk_10025B1C0, &unk_1001CFA90);
    v258 = sub_100027874((v0 + 160), *(v0 + 184));
    swift_getKeyPath();
    *(v0 + 1848) = v26;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = *(v26 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);
    v253 = *(v26 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
    swift_getKeyPath();
    *(v0 + 1808) = v26;
    v255 = v27;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = *(v26 + 96);
    if (v32 != 255)
    {
      v33 = *(v26 + 72);
      v34 = *(v26 + 80);
      v35 = *(v26 + 88);
      v36 = *(v0 + 2696);
      v269 = *(v0 + 2648);
      v261 = *(v0 + 2640);
      v37 = *(v0 + 2632);
      v38 = *(v0 + 2360);
      v39 = *(v0 + 2352);
      v40 = *(v0 + 2344);
      v41 = *(v0 + 2336);
      v42 = *(v0 + 2328);
      v43 = *(v0 + 2304);
      v44 = *(v0 + 1912);
      v273 = v33;
      v263 = v35;
      v265 = v34;
      v267 = v32;
      sub_10000F3F4(v33, v34, v35, v32);

      sub_1000278C0(v40, v39, v38, 0);

      swift_getKeyPath();
      *(v0 + 1696) = v44;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v247 = *(v44 + 136);
      swift_getKeyPath();
      *(v0 + 1632) = v44;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v45 = *(v44 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
      if (v45)
      {
        v46 = [v45 string];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v270 = v47;
      }

      else
      {
        v270 = 0;
      }

      v87 = *(v0 + 2648);
      v88 = *(v0 + 2640);
      v89 = *(v0 + 1912);
      swift_getKeyPath();
      *(v0 + 1616) = v89;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      KeyPath = *(v89 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
      v245 = *(v89 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
      swift_getKeyPath();
      *(v0 + 1608) = v89;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v90 = *(v89 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount);
      swift_getKeyPath();
      *(v0 + 1592) = v89;
      v249 = v90;
      v260 = v90;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v91 = *(v89 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount);
      v251 = *v258;
      v92 = qword_10025A6F8;
      v257 = v91;
      if (v92 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_10000F34C(v93, qword_100276F50);

      v94 = v273;
      sub_10002879C(v273, v265, v263, v267);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.info.getter();

      sub_1000278C0(v273, v265, v263, v267);
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v276[0] = swift_slowAlloc();
        *v97 = 136643075;
        *(v97 + 4) = sub_10002510C(v253, v255, v276);
        *(v97 + 12) = 2081;
        sub_100106A3C();
        v242 = v91;
        v98 = String._bridgeToObjectiveC()();

        v99 = [v98 key];

        v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v101 = KeyPath;
        v103 = v102;

        v104 = sub_10002510C(v100, v103, v276);
        KeyPath = v101;

        *(v97 + 14) = v104;
        v91 = v242;
        _os_log_impl(&_mh_execute_header, v95, v96, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v97, 0x16u);
        swift_arrayDestroy();

        v94 = v273;
      }

      LOBYTE(v105) = v247;
      if ((v247 & 1) == 0)
      {
        v106 = _swiftEmptyArrayStorage;
        if ((v247 & 2) == 0)
        {
LABEL_40:
          sub_10000341C(&unk_10025F490, &unk_1001CFA50);
          v113 = swift_allocObject();
          *(v113 + 16) = xmmword_1001CF9F0;
          if (qword_10025A528 != -1)
          {
            swift_once();
          }

          v114 = qword_100276D38;
          *(v113 + 32) = qword_100276D38;
          v115 = v114;
          v116 = String._bridgeToObjectiveC()();

          v117 = IAPayloadKeyWritingToolsFeatureDetails;
          *(v113 + 40) = v116;
          *(v113 + 48) = v117;
          v118 = v117;
          v119 = sub_10000F174(v94, v265, v263, v267);
          sub_1000278C0(v94, v265, v263, v267);
          *(v113 + 56) = v119;
          if (qword_10025A530 != -1)
          {
            swift_once();
          }

          v120 = qword_100276D40;
          *(v113 + 64) = qword_100276D40;
          type metadata accessor for IAPayloadValue(0);
          v121 = v120;
          isa = Array._bridgeToObjectiveC()().super.isa;

          *(v113 + 72) = isa;
          v123 = sub_100005794(v113);
          swift_setDeallocating();
          sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          if (v270)
          {
            v124 = IAPayloadKeyWritingToolsResultText;
            v125 = String._bridgeToObjectiveC()();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v276[0] = v123;
            sub_1001A9924(v125, v124, isUniquelyReferenced_nonNull_native);

            v123 = v276[0];
          }

          if (KeyPath)
          {
            v127 = IAPayloadKeyWritingToolsInputLanguage;
            v128 = String._bridgeToObjectiveC()();
            v129 = swift_isUniquelyReferenced_nonNull_native();
            v276[0] = v123;
            sub_1001A9924(v128, v127, v129);

            v123 = v276[0];
          }

          if (v249)
          {
            v130 = qword_10025A5B8;
            v131 = v260;
            if (v130 != -1)
            {
              swift_once();
            }

            v132 = qword_100276DC8;
            v133 = swift_isUniquelyReferenced_nonNull_native();
            v276[0] = v123;
            sub_1001A9924(v131, v132, v133);

            v123 = v276[0];
          }

          if (v91)
          {
            v134 = qword_10025A5C0;
            v135 = v257;
            if (v134 != -1)
            {
              swift_once();
            }

            v136 = qword_100276DD0;
            v137 = swift_isUniquelyReferenced_nonNull_native();
            v276[0] = v123;
            sub_1001A9924(v135, v136, v137);
          }

          v138 = *(v0 + 2272);
          v139 = *(v0 + 2264);
          v140 = *(v0 + 2112);
          v141 = IASignalWritingToolsResultsGenerated;
          v142 = IAChannelWritingTools;
          sub_1000081F8(v251 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v140, &unk_100262450, &qword_1001CFAA0);
          if ((*(v138 + 48))(v140, 1, v139) == 1)
          {
            sub_10000F500(*(v0 + 2112), &unk_100262450, &qword_1001CFAA0);
            v143 = 0;
          }

          else
          {
            v144 = *(v0 + 2672);
            v145 = *(v0 + 2664);
            v146 = *(v0 + 2264);
            v147 = *(v0 + 2112);
            UUID.uuidString.getter();
            v145(v147, v146);
            v143 = String._bridgeToObjectiveC()();
          }

          v148 = objc_opt_self();
          type metadata accessor for IAPayloadKey(0);
          sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
          sub_1000C4F1C(&qword_10025AF18, type metadata accessor for IAPayloadKey);
          v149 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v148 sendSignal:v141 toChannel:v142 withNullableUniqueStringID:v143 withPayload:v149];

          sub_10000F4B4((v0 + 160));
          v21 = &qword_100260000;
          goto LABEL_60;
        }

LABEL_33:
        if (qword_10025A5D8 != -1)
        {
          swift_once();
        }

        v110 = qword_100276DE8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_10017D6C4(0, v106[2] + 1, 1, v106);
        }

        v112 = v106[2];
        v111 = v106[3];
        if (v112 >= v111 >> 1)
        {
          v106 = sub_10017D6C4((v111 > 1), v112 + 1, 1, v106);
        }

        v106[2] = v112 + 1;
        v106[v112 + 4] = v110;
        v94 = v273;
        goto LABEL_40;
      }

      if (qword_10025A5D0 == -1)
      {
LABEL_30:
        v107 = qword_100276DE0;
        v106 = sub_10017D6C4(0, 1, 1, _swiftEmptyArrayStorage);
        v109 = v106[2];
        v108 = v106[3];
        if (v109 >= v108 >> 1)
        {
          v106 = sub_10017D6C4((v108 > 1), v109 + 1, 1, v106);
        }

        v106[2] = v109 + 1;
        v106[v109 + 4] = v107;
        v94 = v273;
        if ((v105 & 2) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

LABEL_100:
      swift_once();
      goto LABEL_30;
    }

    __break(1u);
    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v28, v29, v30, v32, v31);
  }

  (*(v3 + 32))(*(v0 + 1992), v2, v4);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v58 = *(v0 + 1992);
    v59 = *(v0 + 1976);
    v60 = *(v0 + 1968);
    SummarizationClient.TextAssistantPartialSummary.safetyClassification.getter();
    v61 = type metadata accessor for SummarySafetyClassification();
    v62 = *(v61 - 8);
    v63 = (*(v62 + 48))(v60, 1, v61);
    v64 = *(v0 + 1968);
    if (v63 == 1)
    {
      sub_10000F500(*(v0 + 1968), &qword_100260B80, &qword_1001D5B18);
    }

    else
    {
      v71 = SummarySafetyClassification.isSafe.getter();
      (*(v62 + 8))(v64, v61);
      if ((v71 & 1) == 0)
      {
        v72 = *(v0 + 2336);
        v73 = *(v0 + 2328);
        v74 = *(v0 + 1912);
        swift_getKeyPath();
        *(v0 + 1536) = v74;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v0 + 1416) = v74;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v75 = *(v74 + 136);
        v76 = v75 | 1;
        sub_100037118(v75 | 1);
        *(v74 + 136) = v76;
        *(v0 + 1384) = v74;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      }
    }

    v77 = *(v0 + 1992);
    v78 = *(v0 + 1976);
    v79 = *(v0 + 1960);
    v80 = (*(v0 + 1912) + *(v0 + 2680));
    SummarizationClient.TextAssistantPartialSummary.content.getter();
    String.append(_:)(*(v0 + 1288));

    SummarizationClient.TextAssistantPartialSummary.inferenceEnvironmentInfo.getter();
    v81 = sub_10009D78C(v79);
    v83 = v82;
    sub_10000F500(v79, &qword_10025F550, &qword_1001D5B10);
    if (*v80 == v81 && v80[1] == v83 || (v84 = v80[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v85 = (*(v0 + 1912) + *(v0 + 2680));
      *v85 = v81;
      v85[1] = v83;

      v86 = *(v0 + 2728);
    }

    else
    {
      v167 = *(v0 + 2728);
      v168 = *(v0 + 2648);
      v169 = *(v0 + 2640);
      KeyPath = *(v0 + 1912);
      swift_getKeyPath();
      v170 = swift_task_alloc();
      v170[2] = KeyPath;
      v170[3] = v81;
      v170[4] = v83;
      *(v0 + 1560) = KeyPath;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v171 = *(v0 + 1912) + *(v0 + 2688);
    v172 = *(v0 + 1320);
    v173 = *(v0 + 1328);
    v174 = objc_allocWithZone(NSAttributedString);
    v175 = String._bridgeToObjectiveC()();
    v176 = [v174 initWithString:v175];

    sub_1000B2ACC(v176);
    v177 = _NSRange.init(_:)();
    v105 = v177;
    v91 = v178;
    v180 = v179;
    v270 = v173;
    v273 = v172;
    if (*(v171 + 16))
    {
      if (v179)
      {
        v181 = *(v0 + 2688);
        v182 = *(v0 + 1912);
        goto LABEL_71;
      }

      v182 = *(v0 + 1912);
    }

    else
    {
      v182 = *(v0 + 1912);
      if ((v179 & 1) == 0)
      {
        v181 = *(v0 + 2688);
        if (*(v182 + v181) == v177 && *(v182 + v181 + 8) == v178)
        {
LABEL_71:
          v183 = v182 + v181;
          *v183 = v177;
          *(v183 + 8) = v178;
          *(v183 + 16) = v179 & 1;
          v184 = *(v0 + 1904);
          if (!v184)
          {
            goto LABEL_77;
          }

          goto LABEL_75;
        }
      }
    }

    v185 = *(v0 + 2648);
    v186 = *(v0 + 2640);
    KeyPath = swift_getKeyPath();
    v187 = swift_task_alloc();
    *(v187 + 16) = v182;
    *(v187 + 24) = v105;
    *(v187 + 32) = v91;
    *(v187 + 40) = v180 & 1;
    *(v0 + 1544) = v182;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v184 = *(v0 + 1904);
    if (!v184)
    {
      goto LABEL_77;
    }

LABEL_75:
    v188 = [v184 completedUnitCount];
    if (__OFADD__(v188, 1))
    {
      __break(1u);
      goto LABEL_100;
    }

    [*(v0 + 1904) setCompletedUnitCount:v188 + 1];
LABEL_77:
    v189 = *(v0 + 1992);
    v190 = *(v0 + 1976);
    v191 = *(v0 + 1952);
    SummarizationClient.TextAssistantPartialSummary.inferenceEnvironmentInfo.getter();
    v192 = type metadata accessor for InferenceEnvironmentInfo();
    v193 = *(v192 - 8);
    v194 = *(v193 + 48);
    v195 = v194(v191, 1, v192);
    v196 = *(v0 + 1952);
    if (v195 == 1)
    {
      v197 = &qword_10025F550;
      v198 = &qword_1001D5B10;
    }

    else
    {
      v200 = *(v0 + 1920);
      InferenceEnvironmentInfo.detectedLanguage.getter();
      (*(v193 + 8))(v196, v192);
      v201 = type metadata accessor for Locale.Language();
      v202 = *(v201 - 8);
      if ((*(v202 + 48))(v200, 1, v201) == 1)
      {
        v199 = *(v0 + 1920);
        v197 = &unk_100260B70;
        v198 = &unk_1001D5B00;
        goto LABEL_82;
      }

      v214 = *(v0 + 1928);
      v215 = *(v0 + 1920);
      Locale.Language.languageCode.getter();
      (*(v202 + 8))(v215, v201);
      v216 = type metadata accessor for Locale.LanguageCode();
      v217 = *(v216 - 8);
      v218 = (*(v217 + 48))(v214, 1, v216);
      v196 = *(v0 + 1928);
      if (v218 != 1)
      {
        v239 = Locale.LanguageCode.identifier.getter();
        v241 = v240;
        (*(v217 + 8))(v196, v216);
        v204 = v241;
        v203 = v239;
LABEL_83:
        v205 = *(v0 + 1992);
        v206 = *(v0 + 1976);
        v207 = *(v0 + 1944);
        v208 = *(v0 + 1912);
        sub_1000B34C8(v203, v204);
        SummarizationClient.TextAssistantPartialSummary.inferenceEnvironmentInfo.getter();
        v209 = v194(v207, 1, v192);
        v210 = *(v0 + 1944);
        if (v209 == 1)
        {
          sub_10000F500(*(v0 + 1944), &qword_10025F550, &qword_1001D5B10);
          v211 = 0;
        }

        else
        {
          InferenceEnvironmentInfo.estimatedInputTokenCount.getter();
          v213 = v212;
          (*(v193 + 8))(v210, v192);
          if (v213)
          {
            v211 = 0;
          }

          else
          {
            v211 = Int._bridgeToObjectiveC()().super.super.isa;
          }
        }

        v219 = *(v0 + 1992);
        v220 = *(v0 + 1976);
        v221 = *(v0 + 1936);
        v222 = *(v0 + 1912);
        sub_1000B371C(v211);
        SummarizationClient.TextAssistantPartialSummary.inferenceEnvironmentInfo.getter();
        v223 = v194(v221, 1, v192);
        v224 = *(v0 + 1936);
        if (v223 == 1)
        {
          sub_10000F500(*(v0 + 1936), &qword_10025F550, &qword_1001D5B10);
          v225 = 0;
          v227 = v270;
          v226 = v273;
        }

        else
        {
          InferenceEnvironmentInfo.estimatedOutputTokenCount.getter();
          v229 = v228;
          (*(v193 + 8))(v224, v192);
          v227 = v270;
          v226 = v273;
          if (v229)
          {
            v225 = 0;
          }

          else
          {
            v225 = Int._bridgeToObjectiveC()().super.super.isa;
          }
        }

        v230 = *(v0 + 1992);
        v231 = *(v0 + 1984);
        v232 = *(v0 + 1976);
        v233 = *(v0 + 1912);
        sub_1000B3758(v225);
        (*(v231 + 8))(v230, v232);
        *(v0 + 2704) = v226;
        *(v0 + 2696) = v227;
        v234 = *(v0 + 2296);
        v235 = static MainActor.shared.getter();
        *(v0 + 2712) = v235;
        v236 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
        v237 = swift_task_alloc();
        *(v0 + 2720) = v237;
        *v237 = v0;
        v237[1] = sub_1000BED34;
        v238 = *(v0 + 2104);
        v32 = *(v0 + 2088);
        v28 = *(v0 + 2000);
        v30 = &protocol witness table for MainActor;
        v31 = v0 + 1376;
        v29 = v235;

        return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v28, v29, v30, v32, v31);
      }

      v197 = &unk_100260B78;
      v198 = &unk_1001D5B08;
    }

    v199 = v196;
LABEL_82:
    sub_10000F500(v199, v197, v198);
    v203 = 0;
    v204 = 0;
    goto LABEL_83;
  }

  v48 = *(v0 + 2632);
  v49 = *(v0 + 2360);
  v50 = *(v0 + 2352);
  v51 = *(v0 + 2344);
  v52 = *(v0 + 2304);
  v271 = *(v0 + 2104);
  v274 = *(v0 + 2696);
  v53 = *(v0 + 2096);
  v54 = *(v0 + 2088);
  v55 = *(v0 + 1992);
  v56 = *(v0 + 1984);
  v57 = *(v0 + 1976);

  sub_1000278C0(v51, v50, v49, 0);

  (*(v56 + 8))(v55, v57);
  (*(v53 + 8))(v271, v54);

LABEL_61:
  v155 = *(v0 + 2288);
  v156 = *(v0 + 2280);
  v157 = *(v0 + 2256);
  v158 = *(v0 + 2248);
  v159 = *(v0 + 2224);
  v160 = *(v0 + 2200);
  v161 = *(v0 + 2176);
  v162 = *(v0 + 2152);
  v163 = *(v0 + 2128);
  v164 = *(v0 + 2120);
  v243 = *(v0 + 2112);
  v244 = *(v0 + 2104);
  v246 = *(v0 + 2080);
  v248 = *(v0 + 2056);
  v250 = *(v0 + 2032);
  v252 = *(v0 + 2008);
  v254 = *(v0 + 2000);
  v256 = *(v0 + 1992);
  v259 = *(v0 + 1968);
  v262 = *(v0 + 1960);
  v264 = *(v0 + 1952);
  v266 = *(v0 + 1944);
  v268 = *(v0 + 1936);
  v272 = *(v0 + 1928);
  v275 = *(v0 + 1920);

  v165 = *(v0 + 8);

  return v165();
}