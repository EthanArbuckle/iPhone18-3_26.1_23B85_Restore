uint64_t sub_1003923F8()
{
  v1 = v0;
  v2 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v1 + v5, v4, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v6 = sub_1000060E4(v2, qword_101218730);
  v7 = sub_1001982EC(v4, v6);
  sub_1003C1730(v4, _s9PlaylistsV5ScopeVMa);
  type metadata accessor for MusicLibrary();
  v8 = [v1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  static MusicLibrary.shared.getter();
  LOBYTE(v8) = static MusicLibrary.== infix(_:_:)();

  if ((v8 & 1) != 0 && (v9 = [v1 traitCollection], sub_100217F14(), UITraitCollection.subscript.getter(), v9, LOBYTE(v9) = sub_10049CB78(), , (v9 & 1) == 0))
  {
    v10 = v7 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

id sub_10039260C()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v6 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_1003BC694, v4);

    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void *sub_1003926F0()
{
  v0 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v64 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  v9 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = _swiftEmptyArrayStorage;
  if (!Strong)
  {
    return v13;
  }

  v63 = v2;
  v14 = Strong;
  v15 = sub_10003169C();

  if (v15)
  {
    v16 = type metadata accessor for IndexPath();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    sub_100376BEC(v11, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, v66);
    sub_1000095E8(v11, &unk_10118BCE0);
    v17 = &v14[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
    v59 = &v14[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
    swift_beginAccess();
    v60 = _s9PlaylistsV5ScopeVMa(0);
    sub_1000089F8(&v17[*(v60 + 20)], v8, &unk_10118F670);
    v18 = String.init<A>(describing:)();
    v56 = v19;
    v57 = v18;
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10012B7A8(v66, v65);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    sub_10012B828(v65, v21 + 24);
    v61 = v15;
    *(v21 + 120) = v15;
    v22 = v14;
    v62 = v14;
    v23 = v64;
    v24 = v22;

    UUID.init()();
    v25 = UUID.uuidString.getter();
    v26 = v3;
    v58 = v3;
    v28 = v27;
    v64 = v23[1];
    (v64)(v5, v26);
    v74._object = v56;
    v74._countAndFlagsBits = v57;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v74, v25, v28, sub_1003BC6A8, v21, v69);

    v29 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(&off_10109A978, 0);
    v73 = v69[0];
    sub_100015BB0(&v73);
    v72 = v69[1];
    sub_100015BB0(&v72);

    sub_1000089F8(&v59[*(v60 + 20)], v8, &unk_10118F670);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10012B7A8(v66, v65);
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    sub_10012B828(v65, v34 + 24);

    UUID.init()();
    v35 = UUID.uuidString.getter();
    v37 = v36;
    (v64)(v5, v58);
    v14 = v62;
    v75._countAndFlagsBits = v30;
    v75._object = v32;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v75, v35, v37, sub_1003BC6B8, v34, v70);

    v38 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
    v65[0] = v70[0];
    sub_100015BB0(v65);
    v71 = v70[1];
    sub_100015BB0(&v71);

    sub_10012BA6C(v66);
  }

  else
  {
    v38 = 0;
    v29 = 0;
  }

  v68[4] = v29;
  v39 = v29;
  v40 = sub_10037FC08();
  v41 = v40[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v41)
  {
    isa = 0;
  }

  else
  {

    isa = sub_100597E50().super.super.isa;
  }

  v68[5] = isa;
  v43 = *(*&v14[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController] + 48);
  v44 = *(*v43 + 96);
  swift_beginAccess();
  v45 = v43 + v44;
  v46 = v63;
  sub_1003C16C8(v45, v63, _s9PlaylistsVMa);
  v47 = swift_allocObject();
  swift_weakInit();

  v48 = sub_100211D00(sub_1003BC69C, v47).super.super.isa;

  sub_1003C1730(v46, _s9PlaylistsVMa);

  v68[6] = v48;
  v68[7] = v38;
  v13 = _swiftEmptyArrayStorage;
  v67 = _swiftEmptyArrayStorage;
  result = v38;
  v50 = result;
  v51 = 0;
LABEL_9:
  if (v51 <= 4)
  {
    v52 = 4;
  }

  else
  {
    v52 = v51;
  }

  while (1)
  {
    if (v51 == 4)
    {
      sub_10010FC20(&qword_10118CE10);
      swift_arrayDestroy();

      return v13;
    }

    if (v52 == v51)
    {
      break;
    }

    v53 = v68[v51++ + 4];
    if (v53)
    {
      v54 = v53;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v67;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100392E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v5 - 8);
  v7 = v23 - v6 + 32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
    v10 = Strong;
    swift_beginAccess();
    v11 = _s9PlaylistsV5ScopeVMa(0);
    sub_1000089F8(v9 + *(v11 + 20), v7, &unk_10118F670);
  }

  else
  {
    v12 = type metadata accessor for Playlist.Folder();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 traitCollection];

    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v16 = v23[0];
  }

  else
  {
    type metadata accessor for MusicLibrary();
    v16 = static MusicLibrary.shared.getter();
  }

  v23[3] = &type metadata for PlaylistPicker.Presenter;
  v23[4] = &off_1010AD928;
  v23[0] = a3;

  v17 = static MusicActions.folderActions(folder:library:presentationSource:folderPickerPresenter:onCreateFolder:)(v7, v16, a2, v23, 0, 0);

  sub_1000095E8(v7, &unk_10118F670);
  sub_10000959C(v23);
  sub_10010FC20(&unk_101183940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v17;
  v19 = inited + 32;
  v20 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v19, &unk_10118AB80);
  return v20;
}

uint64_t sub_100393100(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v3 - 8);
  v5 = v30 - v4;
  v6 = type metadata accessor for Playlist.Folder();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v30 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_6;
  }

  v30[0] = a2;
  v14 = Strong + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  v15 = Strong;
  swift_beginAccess();
  v16 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(v14 + *(v16 + 20), v5, &unk_10118F670);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_6:
    sub_1000095E8(v5, &unk_10118F670);
    v21 = static ActionBuilder.buildIf(_:)(0);
    goto LABEL_9;
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v9, v12, v6);
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 traitCollection];

    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v20 = *&v40[0];
  }

  else
  {
    type metadata accessor for MusicLibrary();
    v20 = static MusicLibrary.shared.getter();
  }

  sub_10012B7A8(v30[0], v40);
  Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(v9, v20, v40, &v39);
  static Actions.DeleteFolder.action(context:)(&v39, v40);

  v35 = v40[4];
  v36 = v40[5];
  v37 = v40[6];
  v31 = v40[0];
  v32 = v40[1];
  v33 = v40[2];
  v34 = v40[3];
  v22 = static ActionBuilder.buildExpression<A, B>(_:)(&v31, &type metadata for Actions.DeleteFolder.Context, &type metadata for () + 8, &protocol witness table for Actions.DeleteFolder.Context);
  v38[4] = v35;
  v38[5] = v36;
  v38[6] = v37;
  v38[0] = v31;
  v38[1] = v32;
  v38[2] = v33;
  v38[3] = v34;
  sub_1000095E8(v38, &qword_10118CE18);
  sub_10010FC20(&unk_101183940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v22;
  v24 = inited + 32;
  v25 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v24, &unk_10118AB80);
  v21 = static ActionBuilder.buildIf(_:)(v25);

  (*(v7 + 8))(v12, v6);
LABEL_9:
  sub_10010FC20(&unk_101183940);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_100EBC6B0;
  *(v26 + 32) = v21;
  v27 = v26 + 32;
  v28 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v27, &unk_10118AB80);
  return v28;
}

objc_class *sub_100393588()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___plusBarButtonItem;
  v4 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___plusBarButtonItem);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___plusBarButtonItem);
  }

  else
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakDestroy();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v6 = String.init(localized:table:bundle:locale:comment:)();
    v21 = v7;
    v22 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &unk_1011845F0);
    v10.value = 0;
    v11 = v0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v10, 0, sub_1003BC460, v23).super.super.isa;
    v13 = AccessibilityIdentifier.playlistButton.unsafeMutableAddressor();
    v14 = *v13;
    v15 = v13[1];

    v16 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v22, v21, v9, 0, isa, 1, v14, v15);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v17 = String._bridgeToObjectiveC()();

    [(objc_class *)v16 setAccessibilityLabel:v17];

    v18 = *(v11 + v3);
    *(v11 + v3) = v16;
    v5 = v16;

    v4 = 0;
  }

  v19 = v4;
  return v5;
}

void *sub_10039389C()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  UUID.init()();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  v17._countAndFlagsBits = 0;
  v17._object = 0;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v17, v6, v8, sub_1003BC468, v4, v14);

  v9 = _swiftEmptyArrayStorage;
  v10 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v16 = v14[0];
  sub_100015BB0(&v16);
  v15 = v14[1];
  sub_100015BB0(&v15);

  if (v10)
  {
    v11 = [v10 children];

    sub_100009F78(0, &qword_10118CDE0);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v9;
}

uint64_t sub_100393A9C()
{
  v0 = sub_10010FC20(&unk_10118F670);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_100376BEC(v9, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, &v53);

    sub_1000095E8(v9, &unk_10118BCE0);
    sub_10012B828(&v53, v50);
    sub_10012B7A8(v50, v49);
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
      v15 = v13;
      swift_beginAccess();
      v16 = _s9PlaylistsV5ScopeVMa(0);
      sub_1000089F8(v14 + *(v16 + 20), v6, &unk_10118F670);
    }

    else
    {
      v18 = type metadata accessor for Playlist.Folder();
      (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    }

    v19 = (*(v1 + 80) + 112) & ~*(v1 + 80);
    v20 = swift_allocObject();
    sub_10012B828(v49, v20 + 16);
    sub_10003D17C(v6, v20 + v19, &unk_10118F670);
    v21 = Actions.CreatePlaylist.Context.init(canCreatePlaylist:presentCreatePlaylistView:)(variable initialization expression of _NSRange.NSRangeIterator.current, 0, sub_1003BC470, v20);
    static Actions.CreatePlaylist.action(context:)(v21, v22, v23, v24, v51);

    v55 = v51[2];
    v56 = v51[3];
    v57 = v51[4];
    v58 = v51[5];
    v53 = v51[0];
    v54 = v51[1];
    v25 = static ActionBuilder.buildExpression<A, B>(_:)(&v53, &type metadata for Actions.CreatePlaylist.Context, &type metadata for () + 8, &protocol witness table for Actions.CreatePlaylist.Context);
    v48[2] = v55;
    v48[3] = v56;
    v48[4] = v57;
    v48[5] = v58;
    v48[0] = v53;
    v48[1] = v54;
    sub_1000095E8(v48, &unk_10118CDF0);
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
      v28 = v26;
      swift_beginAccess();
      v29 = _s9PlaylistsV5ScopeVMa(0);
      sub_1000089F8(v27 + *(v29 + 20), v3, &unk_10118F670);
    }

    else
    {
      v30 = type metadata accessor for Playlist.Folder();
      (*(*(v30 - 8) + 56))(v3, 1, 1, v30);
    }

    sub_10012B7A8(v50, &v53);
    sub_10012B7A8(v50, v47);
    v31 = swift_allocObject();
    sub_10012B828(v47, v31 + 16);
    type metadata accessor for MusicLibrary();
    v32 = static MusicLibrary.shared.getter();
    Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(v3, 0, v32, &v53, &unk_100EC8A00, v31, &v52);
    static Actions.CreateFolder.action(context:)(&v52, &v53);

    v44 = v57;
    v45 = v58;
    v46 = v59;
    v40 = v53;
    v41 = v54;
    v42 = v55;
    v43 = v56;
    v33 = static ActionBuilder.buildExpression<A, B>(_:)(&v40, &type metadata for Actions.CreateFolder.Context, &type metadata for () + 8, &protocol witness table for Actions.CreateFolder.Context);
    v47[4] = v44;
    v47[5] = v45;
    v47[6] = v46;
    v47[0] = v40;
    v47[1] = v41;
    v47[2] = v42;
    v47[3] = v43;
    sub_1000095E8(v47, &qword_10118B330);
    sub_10010FC20(&unk_101183940);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100EBDC20;
    *(v34 + 32) = v25;
    *(v34 + 40) = v33;
    v35 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_10010FC20(&unk_10118AB80);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v17 = static ActionBuilder.buildIf(_:)(v35);

    sub_10012BA6C(v50);
  }

  else
  {
    v17 = static ActionBuilder.buildIf(_:)(0);
  }

  sub_10010FC20(&unk_101183940);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100EBC6B0;
  *(v36 + 32) = v17;
  v37 = v36 + 32;
  v38 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v37, &unk_10118AB80);
  swift_deallocClassInstance();
  return v38;
}

uint64_t sub_100394130(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_10010FC20(&unk_101181520);
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for Playlist.Folder();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v2[19] = *(v4 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  type metadata accessor for Actions.CreateFolder.Context.FlowResult();
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for MainActor();
  v2[24] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003942A0, v6, v5);
}

uint64_t sub_1003942A0()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[14];

  sub_1003C16C8(v4, v1, type metadata accessor for Actions.CreateFolder.Context.FlowResult);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v5 = v0[20];
    v6 = v0[21];
    v7 = v0[18];
    v8 = v0[16];
    v9 = v0[17];
    v18 = v0[19];
    v10 = v0[15];
    v11 = *(v7 + 32);
    v19 = v6;
    v11(v6, v0[22], v9);
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    (*(v7 + 16))(v5, v6, v9);
    sub_10012B7A8(v10, (v0 + 2));
    v13 = static MainActor.shared.getter();
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = &protocol witness table for MainActor;
    v11(v15 + v14, v5, v9);
    sub_10012B828((v0 + 2), v15 + ((v18 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    sub_1001F4CB8(0, 0, v8, &unk_100EC8A10, v15);

    (*(v7 + 8))(v19, v9);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003944F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = _s9PlaylistsV5ScopeVMa(0);
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v5[8] = *(v7 + 64);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100394638, v9, v8);
}

uint64_t sub_100394638()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, v3, v5);
  (*(v6 + 56))(v2 + v4, 0, 1, v5);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  v7 = v0[11];
  v8 = v0[5];
  v9 = v0[4];
  *v8 = qword_101218AB8;
  *(v8 + *(v9 + 24)) = 0;
  v10 = objc_opt_self();

  v11 = [v10 currentTraitCollection];
  v12 = [v11 horizontalSizeClass];

  v13 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController());
  v14 = sub_10037E11C(v8, 0, v12 != 2);
  v15 = &v7[*(sub_10010FC20(&unk_1011841E0) + 48)];
  v16 = *(sub_10010FC20(&unk_10118CE00) + 48);
  *v7 = v14;
  v17 = type metadata accessor for UITraitOverrides();
  (*(*(v17 - 8) + 56))(&v7[v16], 1, 1, v17);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *v15 = sub_100137E80;
  v15[1] = v18;
  swift_storeEnumTagMultiPayload();
  Strong = swift_unknownObjectWeakLoadStrong();
  v20 = v14;
  if (Strong)
  {
    v21 = sub_10003169C();

    if (v21)
    {
      v22 = v0[10];
      v23 = v0[9];
      v24 = v0[7];
      sub_1003C16C8(v0[11], v22, type metadata accessor for AppInterfaceContext.Activity);
      sub_1003C16C8(v22, v23, type metadata accessor for AppInterfaceContext.Activity);
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      sub_1003C1790(v23, v26 + v25, type metadata accessor for AppInterfaceContext.Activity);
      sub_100706900(v22, sub_100115C18, v26);

      sub_1003C1730(v22, type metadata accessor for AppInterfaceContext.Activity);
    }
  }

  sub_1003C1730(v0[11], type metadata accessor for AppInterfaceContext.Activity);

  v27 = v0[1];

  return v27();
}

objc_class *sub_1003949FC()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580);

    v5 = SymbolButton.Intent.title.getter();
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1003BC444;
    *(v10 + 24) = v4;
    *(v10 + 32) = 0;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(0);
    v15 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14);

    v16 = *(v11 + v1);
    *(v11 + v1) = v15;
    v3 = v15;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

objc_class *sub_100394C00()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___shuffleBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___shuffleBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___shuffleBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580);

    v5 = SymbolButton.Intent.title.getter();
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1003C18A8;
    *(v10 + 24) = v4;
    *(v10 + 32) = 1;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(1);
    v15 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14);

    v16 = *(v11 + v1);
    *(v11 + v1) = v15;
    v3 = v15;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

void sub_100394E04(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1003914F4(a1);
  }

  else
  {
    v4 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

id sub_100394EA0()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_1003949FC();
    *(v4 + 40) = sub_100394C00();
    sub_100009F78(0, &qword_101181580);
    v6 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem);

    v7 = v6;
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0xE000000000000000;
    isa = UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(v4, v7, v8).super.super.isa;
    v10 = objc_allocWithZone(UIBarButtonItemGroup);
    v11 = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v10 initWithBarButtonItems:v11 representativeItem:isa];

    v13 = *(v5 + v1);
    *(v5 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void *sub_100394FE0()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups;
  if (*(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups);
  }

  else
  {
    v3 = v0;
    v4 = sub_100394EA0();
    v2 = UIBarButtonItemGroup.split()();

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_100395058()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextAndFilterBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  }

  else
  {
    v4 = sub_1003950BC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1003950BC()
{
  sub_10010FC20(&qword_101183990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBE270;
  *(v0 + 32) = sub_100393588();
  *(v0 + 40) = sub_10003DE24(&unk_1010A9040, sub_1003BC6C4);
  *(v0 + 48) = sub_10039260C();
  sub_100009F78(0, &qword_101181580);
  v1 = static UIBarButtonItem.contextBarButtonItem(representativeOf:)(v0);
  v2 = objc_allocWithZone(UIBarButtonItemGroup);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithBarButtonItems:isa representativeItem:v1];

  return v4;
}

BOOL sub_1003951D4()
{
  v0 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_10010FC20(&qword_101193C80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118CDD0);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_10118CDC0);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118CDD0);
    v8 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v4 + 8))(v6, v3);
  }

  return v8;
}

BOOL sub_1003953C0()
{
  v0 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_10010FC20(&unk_101193AA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118D1E0);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_1011846C0);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118D1E0);
    v8 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v4 + 8))(v6, v3);
  }

  return v8;
}

BOOL sub_1003955AC()
{
  v0 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_10010FC20(&qword_10118D1C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&qword_10118D1C8);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &qword_10118D1B8);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &qword_10118D1C8);
    v8 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v4 + 8))(v6, v3);
  }

  return v8;
}

BOOL sub_100395798()
{
  v0 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_10010FC20(&unk_10118F1E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_101184700);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_1011846E0);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_101184700);
    v8 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v4 + 8))(v6, v3);
  }

  return v8;
}

void sub_100395984(uint64_t a1)
{
  v57 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v57);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v4 - 8);
  v54 = &v52 - v5;
  v6 = sub_10010FC20(&qword_1011828F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - v8;
  v10 = sub_10010FC20(&qword_10118D388);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - v14;
  v16 = type metadata accessor for Playlist.Folder();
  v17 = *(v16 - 8);
  v55 = v16;
  v56 = v17;
  __chkstk_darwin(v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v58 = &v52 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponse;
    swift_beginAccess();
    if (!*&v23[v24] || (v53 = v3, , v25 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter(), , (v25 & 1) == 0))
    {

      return;
    }

    sub_1000089F8(a1, v12, &qword_10118D388);
    v26 = sub_10010FC20(&unk_10118D390);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v12, 1, v26) == 1)
    {
      sub_1000095E8(v12, &qword_10118D388);
      v28 = type metadata accessor for Playlist.Folder.Item();
      (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
LABEL_8:
      sub_1000095E8(v15, &qword_1011831B0);
LABEL_9:
      v31 = v23;
      sub_1003FE034(1);

      return;
    }

    MusicLibraryResponse.items.getter();
    (*(v27 + 8))(v12, v26);
    sub_10034DF1C(v15);
    (*(v7 + 8))(v9, v6);
    v29 = type metadata accessor for Playlist.Folder.Item();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v15, 1, v29) == 1)
    {
      goto LABEL_8;
    }

    if ((*(v30 + 88))(v15, v29) != enum case for Playlist.Folder.Item.folder(_:))
    {
      (*(v30 + 8))(v15, v29);
      goto LABEL_9;
    }

    (*(v30 + 96))(v15, v29);
    v32 = v55;
    v33 = v58;
    v34 = v15;
    v35 = v56;
    (*(v56 + 32))(v58, v34, v55);
    v36 = &v23[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
    swift_beginAccess();
    v37 = v57;
    v38 = *(v57 + 20);
    if ((*(v35 + 48))(v36 + v38, 1, v32))
    {
      Playlist.Folder.name.getter();
      v39 = v32;
    }

    else
    {
      v40 = *(v35 + 16);
      v40(v19, v36 + v38, v32);
      v52 = Playlist.Folder.name.getter();
      v48 = v47;
      v46 = *(v35 + 8);
      v46(v19, v32);
      v49 = Playlist.Folder.name.getter();
      v39 = v32;
      if (v48)
      {
        if (v52 == v49 && v48 == v50)
        {
        }

        else
        {
          v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v51 & 1) == 0)
          {
            v37 = v57;
            v33 = v58;
            v35 = v56;
            goto LABEL_15;
          }
        }

        v45 = v58;
        goto LABEL_16;
      }

      v37 = v57;
      v33 = v58;
      v35 = v56;
    }

    v40 = *(v35 + 16);
LABEL_15:
    v41 = v54;
    v40(v54, v33, v39);
    (*(v35 + 56))(v41, 0, 1, v39);
    swift_beginAccess();
    sub_10006B010(v41, v36 + *(v37 + 20), &unk_10118F670);
    swift_endAccess();
    v42 = v53;
    sub_1003C16C8(v36, v53, _s9PlaylistsV5ScopeVMa);
    v43 = v23;
    sub_10037EDC4();
    sub_1003C1730(v42, _s9PlaylistsV5ScopeVMa);
    v44 = String._bridgeToObjectiveC()();

    [v43 setTitle:v44];

    v45 = v33;
    v46 = *(v35 + 8);
LABEL_16:
    v46(v45, v39);
  }
}

uint64_t type metadata accessor for LibraryPlaylistsViewController()
{
  result = qword_10118CCB8;
  if (!qword_10118CCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100396494()
{
  sub_100396818(319, &qword_10118CCC8, &type metadata accessor for Playlist.Folder.Item);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &unk_101184560, &unk_10118A650);
    if (v1 <= 0x3F)
    {
      sub_10003920C(319, &qword_10118CCD0, &qword_10118CCD8);
      if (v2 <= 0x3F)
      {
        sub_10003920C(319, &qword_10118CCE0, &qword_10118CCE8);
        if (v3 <= 0x3F)
        {
          sub_10003920C(319, &qword_10118CCF0, &qword_10118CCF8);
          if (v4 <= 0x3F)
          {
            sub_10003920C(319, &qword_10118CD00, &unk_10118CD08);
            if (v5 <= 0x3F)
            {
              _s9PlaylistsV5ScopeVMa(319);
              if (v6 <= 0x3F)
              {
                sub_100396818(319, &qword_1011845B0, type metadata accessor for Actions.MetricsReportingContext);
                if (v7 <= 0x3F)
                {
                  sub_10003920C(319, &unk_10119E2F0, &unk_1011839D0);
                  if (v8 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

void sub_100396818(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10039686C(uint64_t *a1, uint64_t *a2)
{
  v4 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v15[-v8];
  v10 = *a1;
  v11 = *a2;
  v12 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v10 + v12, v9, _s9PlaylistsV5ScopeVMa);
  v13 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v11 + v13, v6, _s9PlaylistsV5ScopeVMa);
  LOBYTE(a2) = sub_1001982EC(v9, v6);
  sub_1003C1730(v6, _s9PlaylistsV5ScopeVMa);
  sub_1003C1730(v9, _s9PlaylistsV5ScopeVMa);
  return a2 & 1;
}

uint64_t sub_1003969D8()
{
  v1 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *v0;
  sub_10010FC20(&qword_1011978D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBC6B0;
  v6 = v4 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  v7 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(v6 + *(v7 + 20), v3, &unk_10118F670);
  *(v5 + 56) = type metadata accessor for ApplicationMainMenu.ParentFolderContext();
  *(v5 + 64) = &off_1010A66E8;
  v8 = sub_10001C8B8((v5 + 32));
  v9 = type metadata accessor for Playlist.Folder();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10006B010(v3, v8, &unk_10118F670);
  return v5;
}

uint64_t sub_100396B4C()
{
  v1 = v0;
  v2 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011845C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBE260;
  v6 = sub_10031E9F8();
  isa = sub_100597E50().super.super.isa;
  v8 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_10118CDE0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v5 + 32) = v6;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = v9;
  v10 = sub_10031EA10();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v34[3] = v11;
  v34[4] = v13;
  v14._countAndFlagsBits = 0x74726F532ELL;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  v16 = *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController);
  v17 = *(v16 + 48);
  v18 = *(*v17 + 96);
  swift_beginAccess();
  sub_1003C16C8(v17 + v18, v4, _s9PlaylistsVMa);
  v19 = swift_allocObject();
  swift_weakInit();

  v20.super.super.isa = sub_100211D00(sub_1003C1888, v19).super.super.isa;

  sub_1003C1730(v4, _s9PlaylistsVMa);

  if (v20.super.super.isa)
  {
    v21 = [(objc_class *)v20.super.super.isa children];

    v20.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v15 = 0;
  }

  *(v5 + 64) = v15;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = v20;
  v22 = sub_10031EA10();
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v34[0] = v23;
  v34[1] = v25;
  v26._countAndFlagsBits = 0x7265746C69462ELL;
  v26._object = 0xE700000000000000;
  String.append(_:)(v26);
  v27 = String._bridgeToObjectiveC()();

  v28 = *(v16 + 48);
  v29 = *(*v28 + 96);
  swift_beginAccess();
  sub_1003C16C8(v28 + v29, v4, _s9PlaylistsVMa);
  v30 = swift_allocObject();
  swift_weakInit();

  v31 = sub_1003972A8(sub_1003C18B0, v30);

  sub_1003C1730(v4, _s9PlaylistsVMa);

  if (v31)
  {
    v32 = [v31 children];

    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v27 = 0;
  }

  *(v5 + 96) = v27;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = v31;
  return v5;
}

uint64_t sub_100396F84(uint64_t a1)
{
  result = sub_10003D8C4(&unk_10118CD50, type metadata accessor for LibraryPlaylistsViewController);
  *(a1 + 16) = result;
  return result;
}

UIMenu sub_100396FDC(uint64_t a1, void *a2)
{
  v5 = *(v2 + *(_s10TVEpisodesVMa(0) + 56));
  if (!*(v5 + 16))
  {
    return 0;
  }

  sub_10045F2E0();
  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() systemImageNamed:v6];

  sub_100009F78(0, &qword_1011839A0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v19[0] = 0;
  v19[1] = 0;
  v9 = v2;
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v11._object = 0x8000000100E48430;
  v11._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v11);

  v12 = String._bridgeToObjectiveC()();

  [v10 setAccessibilityIdentifier:v12];

  v13 = sub_100009F78(0, &unk_1011845F0);
  __chkstk_darwin(v13);
  v19[2] = v9;
  v19[3] = a1;
  v20 = a2;
  v20 = sub_10012BC18(sub_1003C03BC, v19, v5);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v22.value.super.isa = 0;
  v22.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v22, 1, 0xFFFFFFFFFFFFFFFFLL, v20, v21).super.super.isa;
  sub_10010FC20(&qword_101183990);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBC6D0;
  *(v16 + 32) = v10;
  *(v16 + 40) = isa;
  v20 = v16;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v23.value.super.isa = 0;
  v23.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, 0, v23, 0, 0xFFFFFFFFFFFFFFFFLL, v20, v21);
}

Class sub_1003972A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v6 - 8);
  v8 = v34 - v7;
  if (*(v2 + 9))
  {
    v9 = _swiftEmptyArrayStorage;
  }

  else if (*(v2 + 8) == 1)
  {
    v9 = &off_101098F58;
  }

  else
  {
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userInterfaceIdiom];

    v9 = &off_101098F58;
    if (v11 != 6)
    {
      v34[3] = *v3;
      type metadata accessor for MusicLibrary();

      v34[2] = static MusicLibrary.shared.getter();
      sub_10003D8C4(&qword_10118CE20, &type metadata accessor for MusicLibrary);
      v12 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v12)
      {
        v9 = &off_101098F80;
      }

      else
      {
        v9 = &off_101098F58;
      }
    }
  }

  v13 = v9[2];

  result = 0;
  if (v13)
  {
    v15 = (v3 + *(_s9PlaylistsVMa(0) + 32));
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v16 = _s9PlaylistsV5ScopeVMa(0);
    v17 = sub_1000060E4(v16, qword_101218730);
    if ((sub_1001982EC(v15, v17) & 1) == 0)
    {
      sub_1000089F8(v15 + *(v16 + 20), v8, &unk_10118F670);
      v18 = type metadata accessor for Playlist.Folder();
      (*(*(v18 - 8) + 48))(v8, 1, v18);
      sub_1000095E8(v8, &unk_10118F670);
    }

    sub_10045F2E0();
    v19 = String._bridgeToObjectiveC()();

    v20 = [objc_opt_self() systemImageNamed:v19];

    sub_100009F78(0, &qword_1011839A0);
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a2;

    v31[0] = 0;
    v31[1] = 0;
    v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v23._object = 0x8000000100E48430;
    v23._countAndFlagsBits = 0xD00000000000001CLL;
    AccessibilityIdentifier.init(name:)(v23);

    v24 = String._bridgeToObjectiveC()();

    [v22 setAccessibilityIdentifier:v24];

    sub_100009F78(0, &unk_1011845F0);
    v25 = sub_10018F5B8();
    __chkstk_darwin(v25);
    v26 = sub_10012BC18(sub_1003BC6DC, v31, v25);

    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v35.value.super.isa = 0;
    v35.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v27, 0, v35, 1, 0xFFFFFFFFFFFFFFFFLL, v26, v33).super.super.isa;
    sub_10010FC20(&qword_101183990);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100EBC6D0;
    *(v29 + 32) = v22;
    *(v29 + 40) = isa;
    v32 = v29;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v36.value.super.isa = 0;
    v36.is_nil = 0;
    return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v30, 0, v36, 0, 0xFFFFFFFFFFFFFFFFLL, v32, v33).super.super.isa;
  }

  return result;
}

UIMenu sub_1003977C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v6 - 8);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s11MusicVideosVMa(0);
  sub_1003C16C8(v2 + *(v9 + 28), v8, _s11MusicVideosV5ScopeOMa);
  v10 = type metadata accessor for Artist();
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    if (*(v2 + 16) == 1)
    {
      v11 = &off_101098FF8;
    }

    else
    {
      v26 = [objc_opt_self() currentDevice];
      v27 = [v26 userInterfaceIdiom];

      v11 = &off_101098FF8;
      if (v27 != 6)
      {
        v32[3] = *(v3 + 8);
        type metadata accessor for MusicLibrary();

        v32[2] = static MusicLibrary.shared.getter();
        sub_10003D8C4(&qword_10118CE20, &type metadata accessor for MusicLibrary);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v28)
        {
          v11 = &off_101099020;
        }
      }
    }
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  sub_1003C1730(v8, _s11MusicVideosV5ScopeOMa);
  v12 = v11[2];

  if (!v12)
  {
    return 0;
  }

  sub_10045F2E0();
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() systemImageNamed:v13];

  sub_100009F78(0, &qword_1011839A0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v29[0] = 0;
  v29[1] = 0;
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17._object = 0x8000000100E48430;
  v17._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v17);

  v18 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityIdentifier:v18];

  sub_100009F78(0, &unk_1011845F0);
  v19 = sub_1006FE4C0();
  __chkstk_darwin(v19);
  v29[2] = v3;
  v29[3] = a1;
  v20 = sub_10012BC18(sub_1003BE9F0, v29, v19);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v33.value.super.isa = 0;
  v33.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, 0, v33, 1, 0xFFFFFFFFFFFFFFFFLL, v20, v31).super.super.isa;
  sub_10010FC20(&qword_101183990);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100EBC6D0;
  *(v23 + 32) = v16;
  *(v23 + 40) = isa;
  v30 = v23;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v34.value.super.isa = 0;
  v34.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v34, 0, 0xFFFFFFFFFFFFFFFFLL, v30, v31);
}

Class sub_100397C74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = _s6AlbumsV5ScopeOMa(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = *(_s6AlbumsVMa(0) + 24);
  sub_1003C16C8(v2 + v11, v10, _s6AlbumsV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() - 1 >= 2)
  {
    if (*(v2 + 8) == 1)
    {
      v12 = &off_101098E90;
    }

    else
    {
      v13 = [objc_opt_self() currentDevice];
      v14 = a1;
      v15 = [v13 userInterfaceIdiom];

      v12 = &off_101098E90;
      v16 = v15 == 6;
      a1 = v14;
      if (!v16)
      {
        v40 = *v3;
        type metadata accessor for MusicLibrary();

        v37 = static MusicLibrary.shared.getter();
        v39 = v37;
        sub_10003D8C4(&qword_10118CE20, &type metadata accessor for MusicLibrary);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        a1 = v14;

        if (v17)
        {
          v12 = &off_101098EB8;
        }
      }
    }
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  sub_1003C1730(v10, _s6AlbumsV5ScopeOMa);
  v18 = v12[2];

  if (!v18)
  {
    return 0;
  }

  sub_1003C16C8(v3 + v11, v8, _s6AlbumsV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() < 3)
  {
    sub_1003C1730(v8, _s6AlbumsV5ScopeOMa);
  }

  sub_10045F2E0();
  v20 = String._bridgeToObjectiveC()();

  v21 = [objc_opt_self() systemImageNamed:v20];

  sub_100009F78(0, &qword_1011839A0);
  v22 = swift_allocObject();
  v23 = v38;
  *(v22 + 16) = a1;
  *(v22 + 24) = v23;

  v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v25._object = 0x8000000100E48430;
  v25._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v25);

  v26 = String._bridgeToObjectiveC()();

  [v24 setAccessibilityIdentifier:v26];

  sub_100009F78(0, &unk_1011845F0);
  v27 = sub_10028AAFC();
  __chkstk_darwin(v27);
  v28 = sub_10012BC18(sub_1003BCB80, &v33, v27);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v41.value.super.isa = 0;
  v41.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v41, 1, 0xFFFFFFFFFFFFFFFFLL, v28, v35).super.super.isa;
  sub_10010FC20(&qword_101183990);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100EBC6D0;
  *(v31 + 32) = v24;
  *(v31 + 40) = isa;
  v34 = v31;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v42.value.super.isa = 0;
  v42.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v42, 0, 0xFFFFFFFFFFFFFFFFLL, v34, v35).super.super.isa;
}

UIMenu sub_100398190(uint64_t a1, UIMenuElementSize a2)
{
  v5 = v2[3];
  v26 = v2[2];
  v27 = v5;
  v28 = v2[4];
  v6 = *v2;
  v25 = v2[1];
  v24 = v6;
  v36 = v26;
  v37 = v5;
  v38 = v28;
  v34 = v6;
  v35 = v25;
  v7 = sub_10030D078()[2];

  if (!v7)
  {
    return 0;
  }

  sub_10045F2E0();
  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() systemImageNamed:v8];

  sub_100009F78(0, &qword_1011839A0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v21[0] = 0;
  v21[1] = 0;
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v12._object = 0x8000000100E48430;
  v12._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v12);

  v13 = String._bridgeToObjectiveC()();

  [v11 setAccessibilityIdentifier:v13];

  sub_100009F78(0, &unk_1011845F0);
  v32 = v27;
  v33 = v28;
  v30 = v25;
  v31 = v26;
  v29 = v24;
  v14 = sub_10030D078();
  __chkstk_darwin(v14);
  v21[2] = &v24;
  v21[3] = a1;
  v22 = a2;
  v15 = sub_10012BC18(sub_1003BEA48, v21, v14);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v39.value.super.isa = 0;
  v39.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v39, 1, 0xFFFFFFFFFFFFFFFFLL, v15, v23).super.super.isa;
  sub_10010FC20(&qword_101183990);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6D0;
  *(v18 + 32) = v11;
  *(v18 + 40) = isa;
  v22 = v18;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v40.value.super.isa = 0;
  v40.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, 0, v40, 0, 0xFFFFFFFFFFFFFFFFLL, v22, v23);
}

UIMenu sub_1003984DC(uint64_t a1, UIMenuElementSize a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  v6 = *(v5 + 96);
  v30 = v6;
  v7 = *(v5 + 80);
  v29[4] = *(v5 + 64);
  v29[5] = v7;
  v8 = *(v5 + 48);
  v29[2] = *(v5 + 32);
  v29[3] = v8;
  v9 = *(v5 + 16);
  v29[0] = *v5;
  v29[1] = v9;
  if (!*(v6 + 16))
  {
    return 0;
  }

  v28 = a5;
  sub_10045F2E0();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() systemImageNamed:v12];

  sub_100009F78(0, &qword_1011839A0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  v25[0] = 0;
  v25[1] = 0;
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16._object = 0x8000000100E48430;
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v16);

  v17 = String._bridgeToObjectiveC()();

  [v15 setAccessibilityIdentifier:v17];

  v18 = sub_100009F78(0, &unk_1011845F0);
  __chkstk_darwin(v18);
  v25[2] = v29;
  v25[3] = a1;
  v26 = a2;

  v19 = sub_10012BC18(v28, v25, v6);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v20, 0, v31, 1, 0xFFFFFFFFFFFFFFFFLL, v19, v27).super.super.isa;
  sub_10010FC20(&qword_101183990);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EBC6D0;
  *(v22 + 32) = v15;
  *(v22 + 40) = isa;
  v26 = v22;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, v26, v27);
}

UIMenu sub_1003987B0(uint64_t a1, UIMenuElementSize a2)
{
  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  v25[4] = *(v2 + 64);
  v25[5] = v4;
  v5 = *(v2 + 48);
  v25[2] = *(v2 + 32);
  v25[3] = v5;
  v6 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v6;
  if (!*(v3 + 16))
  {
    return 0;
  }

  sub_10045F2E0();
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() systemImageNamed:v9];

  sub_100009F78(0, &qword_1011839A0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  v22[0] = 0;
  v22[1] = 0;
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13._object = 0x8000000100E48430;
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v13);

  v14 = String._bridgeToObjectiveC()();

  [v12 setAccessibilityIdentifier:v14];

  v15 = sub_100009F78(0, &unk_1011845F0);
  __chkstk_darwin(v15);
  v22[2] = v25;
  v22[3] = a1;
  v23 = a2;

  v16 = sub_10012BC18(sub_1003BF034, v22, v3);

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v26.value.super.isa = 0;
  v26.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, 0, v26, 1, 0xFFFFFFFFFFFFFFFFLL, v16, v24).super.super.isa;
  sub_10010FC20(&qword_101183990);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBC6D0;
  *(v19 + 32) = v12;
  *(v19 + 40) = isa;
  v23 = v19;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v20, 0, v27, 0, 0xFFFFFFFFFFFFFFFFLL, v23, v24);
}

UIMenu sub_100398A98(uint64_t a1, UIMenuElementSize a2)
{
  v5 = *(v2 + 8);
  v6 = v2[1];
  v7 = v2[3];
  v32 = v2[2];
  v33 = v7;
  v34 = *(v2 + 64);
  v30 = *v2;
  v31 = v6;
  if (v5)
  {
    v8 = &off_101098FA8;
  }

  else
  {
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v8 = &off_101098FA8;
    if (v10 != 6)
    {
      *&v35 = *v2;
      type metadata accessor for MusicLibrary();

      v29 = static MusicLibrary.shared.getter();
      sub_10003D8C4(&qword_10118CE20, &type metadata accessor for MusicLibrary);
      v11 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v11)
      {
        v8 = &off_101098FD0;
      }

      else
      {
        v8 = &off_101098FA8;
      }
    }
  }

  v12 = v8[2];

  if (!v12)
  {
    return 0;
  }

  sub_10045F2E0();
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() systemImageNamed:v13];

  sub_100009F78(0, &qword_1011839A0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v26[0] = 0;
  v26[1] = 0;
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17._object = 0x8000000100E48430;
  v17._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v17);

  v18 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityIdentifier:v18];

  sub_100009F78(0, &unk_1011845F0);
  v37 = v32;
  v38 = v33;
  v39 = v34;
  v35 = v30;
  v36 = v31;
  v19 = sub_1007B9600();
  __chkstk_darwin(v19);
  v26[2] = &v30;
  v26[3] = a1;
  v27 = a2;
  v20 = sub_10012BC18(sub_1003BEBF8, v26, v19);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v40.value.super.isa = 0;
  v40.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, 0, v40, 1, 0xFFFFFFFFFFFFFFFFLL, v20, v28).super.super.isa;
  sub_10010FC20(&qword_101183990);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100EBC6D0;
  *(v23 + 32) = v16;
  *(v23 + 40) = isa;
  v27 = v23;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v41.value.super.isa = 0;
  v41.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v41, 0, 0xFFFFFFFFFFFFFFFFLL, v27, v28);
}

id sub_100398EA0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = _s10TVEpisodesVMa(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = a3;
    v35 = a4;
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return 0;
    }

    else
    {
      v15 = sub_10045F2E0();
      v30[1] = v16;
      v30[2] = v15;
      v32 = v4;
      v31 = a1;
      v17 = sub_10048B9E8(a1, *(a2 + *(v9 + 48)));
      v18 = String._bridgeToObjectiveC()();

      v30[0] = [objc_opt_self() systemImageNamed:v18];

      sub_100009F78(0, &qword_1011839A0);
      sub_1003C16C8(a2, v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s10TVEpisodesVMa);
      v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v20 = v19 + v11;
      v21 = swift_allocObject();
      sub_1003C1790(v12, v21 + v19, _s10TVEpisodesVMa);
      v22 = (v21 + v20);
      *v22 = v17 & 1;
      v22[1] = a1;
      v23 = (v21 + ((v20 + 9) & 0xFFFFFFFFFFFFFFF8));
      v24 = v35;
      *v23 = v33;
      v23[1] = v24;

      v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v26 = v25;
      _StringGuts.grow(_:)(27);

      v34._countAndFlagsBits = 0xD000000000000019;
      v34._object = 0x8000000100E48450;
      if (v31 == 2)
      {
        v27 = 0x64616F6C6E776F64;
      }

      else
      {
        v27 = 0x657469726F766166;
      }

      v28 = 0xE900000000000073;
      String.append(_:)(*&v27);

      AccessibilityIdentifier.init(name:)(v34);

      v29 = String._bridgeToObjectiveC()();

      [v26 setAccessibilityIdentifier:v29];

      return v26;
    }
  }

  else
  {

    return 0;
  }
}

id sub_100399240(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = _s9PlaylistsVMa(0);
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v12 - 8);
  v14 = v37 - v13;
  if (a1)
  {
    v41 = a3;
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      return 0;
    }

    else
    {
      v39 = a4;
      v17 = (a2 + *(v9 + 32));
      if (qword_10117F298 != -1)
      {
        swift_once();
      }

      v18 = _s9PlaylistsV5ScopeVMa(0);
      v19 = sub_1000060E4(v18, qword_101218730);
      v20 = sub_1001982EC(v17, v19);
      v40 = v4;
      if ((v20 & 1) == 0)
      {
        sub_1000089F8(v17 + *(v18 + 20), v14, &unk_10118F670);
        v21 = type metadata accessor for Playlist.Folder();
        (*(*(v21 - 8) + 48))(v14, 1, v21);
        sub_1000095E8(v14, &unk_10118F670);
      }

      v22 = sub_10045F2E0();
      v37[2] = v23;
      v37[3] = v22;
      v38 = a1;
      v24 = sub_10048B9E8(a1, *(a2 + *(v9 + 40)));
      v25 = String._bridgeToObjectiveC()();

      v37[1] = [objc_opt_self() systemImageNamed:v25];

      sub_100009F78(0, &qword_1011839A0);
      sub_1003C16C8(a2, v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), _s9PlaylistsVMa);
      v26 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v27 = v26 + v10;
      v28 = swift_allocObject();
      sub_1003C1790(v11, v28 + v26, _s9PlaylistsVMa);
      v29 = (v28 + v27);
      *v29 = v24 & 1;
      v29[1] = a1;
      v30 = (v28 + ((v27 + 9) & 0xFFFFFFFFFFFFFFF8));
      v31 = v39;
      *v30 = v41;
      v30[1] = v31;

      v32 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v33 = v32;
      _StringGuts.grow(_:)(27);

      v42._countAndFlagsBits = 0xD000000000000019;
      v42._object = 0x8000000100E48450;
      if (v38 == 2)
      {
        v34 = 0x64616F6C6E776F64;
      }

      else
      {
        v34 = 0x657469726F766166;
      }

      v35 = 0xE900000000000073;
      String.append(_:)(*&v34);

      AccessibilityIdentifier.init(name:)(v42);

      v36 = String._bridgeToObjectiveC()();

      [v33 setAccessibilityIdentifier:v36];

      return v33;
    }
  }

  else
  {

    return 0;
  }
}

id sub_100399718(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = _s11MusicVideosVMa(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = a3;
    v35 = a4;
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return 0;
    }

    else
    {
      v15 = sub_10045F2E0();
      v30[1] = v16;
      v30[2] = v15;
      v32 = v4;
      v31 = a1;
      v17 = sub_10048B9E8(a1, *(a2 + *(v9 + 36)));
      v18 = String._bridgeToObjectiveC()();

      v30[0] = [objc_opt_self() systemImageNamed:v18];

      sub_100009F78(0, &qword_1011839A0);
      sub_1003C16C8(a2, v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s11MusicVideosVMa);
      v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v20 = v19 + v11;
      v21 = swift_allocObject();
      sub_1003C1790(v12, v21 + v19, _s11MusicVideosVMa);
      v22 = (v21 + v20);
      *v22 = v17 & 1;
      v22[1] = a1;
      v23 = (v21 + ((v20 + 9) & 0xFFFFFFFFFFFFFFF8));
      v24 = v35;
      *v23 = v33;
      v23[1] = v24;

      v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v26 = v25;
      _StringGuts.grow(_:)(27);

      v34._countAndFlagsBits = 0xD000000000000019;
      v34._object = 0x8000000100E48450;
      if (v31 == 2)
      {
        v27 = 0x64616F6C6E776F64;
      }

      else
      {
        v27 = 0x657469726F766166;
      }

      v28 = 0xE900000000000073;
      String.append(_:)(*&v27);

      AccessibilityIdentifier.init(name:)(v34);

      v29 = String._bridgeToObjectiveC()();

      [v26 setAccessibilityIdentifier:v29];

      return v26;
    }
  }

  else
  {

    return 0;
  }
}

id sub_100399AB8(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v8 = _s6AlbumsVMa(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin(v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v35 = a4;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return 0;
    }

    else
    {
      sub_1003C16C8(a2 + *(v8 + 24), v13, _s6AlbumsV5ScopeOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v34 = v4;
      if (EnumCaseMultiPayload < 3)
      {
        sub_1003C1730(v13, _s6AlbumsV5ScopeOMa);
      }

      v17 = sub_10045F2E0();
      v32[2] = v18;
      v32[3] = v17;
      v33 = a1;
      v19 = sub_10048B9E8(a1, *(a2 + *(v8 + 32)));
      v20 = String._bridgeToObjectiveC()();

      v32[1] = [objc_opt_self() systemImageNamed:v20];

      sub_100009F78(0, &qword_1011839A0);
      sub_1003C16C8(a2, v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s6AlbumsVMa);
      v21 = (*(v36 + 80) + 16) & ~*(v36 + 80);
      v22 = v21 + v9;
      v23 = swift_allocObject();
      sub_1003C1790(v10, v23 + v21, _s6AlbumsVMa);
      v24 = (v23 + v22);
      *v24 = v19 & 1;
      v24[1] = a1;
      v25 = (v23 + ((v22 + 9) & 0xFFFFFFFFFFFFFFF8));
      v26 = v35;
      *v25 = v38;
      v25[1] = v26;

      v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      v28 = v27;
      _StringGuts.grow(_:)(27);

      v37._countAndFlagsBits = 0xD000000000000019;
      v37._object = 0x8000000100E48450;
      if (v33 == 2)
      {
        v29 = 0x64616F6C6E776F64;
      }

      else
      {
        v29 = 0x657469726F766166;
      }

      v30 = 0xE900000000000073;
      String.append(_:)(*&v29);

      AccessibilityIdentifier.init(name:)(v37);

      v31 = String._bridgeToObjectiveC()();

      [v28 setAccessibilityIdentifier:v31];

      return v28;
    }
  }

  else
  {

    return 0;
  }
}

id sub_100399F04(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return 0;
    }

    else
    {
      sub_10045F2E0();
      v10 = *(a2 + 40);
      v22 = a1;
      v11 = sub_10048B9E8(a1, v10);
      v12 = String._bridgeToObjectiveC()();

      [objc_opt_self() systemImageNamed:v12];

      sub_100009F78(0, &qword_1011839A0);
      v13 = swift_allocObject();
      v14 = *(a2 + 48);
      *(v13 + 48) = *(a2 + 32);
      *(v13 + 64) = v14;
      *(v13 + 80) = *(a2 + 64);
      v15 = *(a2 + 16);
      *(v13 + 16) = *a2;
      *(v13 + 32) = v15;
      *(v13 + 96) = v11 & 1;
      *(v13 + 97) = a1;
      *(v13 + 104) = a3;
      *(v13 + 112) = a4;

      sub_10030DC78(a2, &v21);
      v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v17 = v16;
      _StringGuts.grow(_:)(27);

      v21._countAndFlagsBits = 0xD000000000000019;
      v21._object = 0x8000000100E48450;
      if (v22 == 2)
      {
        v18 = 0x64616F6C6E776F64;
      }

      else
      {
        v18 = 0x657469726F766166;
      }

      v19 = 0xE900000000000073;
      String.append(_:)(*&v18);

      AccessibilityIdentifier.init(name:)(v21);

      v20 = String._bridgeToObjectiveC()();

      [v17 setAccessibilityIdentifier:{v20, 0, 0, v11 & 1, sub_1003BEAA4, v13}];

      return v17;
    }
  }

  else
  {

    return 0;
  }
}

id sub_10039A1E0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, Swift::String *), uint64_t a7)
{
  if (a1)
  {
    v28 = a7;
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return 0;
    }

    else
    {
      sub_10045F2E0();
      v14 = sub_10048B9E8(a1, *(a2 + 72));
      v15 = String._bridgeToObjectiveC()();

      [objc_opt_self() systemImageNamed:v15];

      sub_100009F78(0, &qword_1011839A0);
      v16 = swift_allocObject();
      v17 = *(a2 + 80);
      *(v16 + 80) = *(a2 + 64);
      *(v16 + 96) = v17;
      *(v16 + 112) = *(a2 + 96);
      v18 = *(a2 + 16);
      *(v16 + 16) = *a2;
      *(v16 + 32) = v18;
      v19 = *(a2 + 48);
      *(v16 + 48) = *(a2 + 32);
      *(v16 + 64) = v19;
      *(v16 + 120) = v14 & 1;
      *(v16 + 121) = a1;
      *(v16 + 128) = a3;
      *(v16 + 136) = a4;

      a6(a2, &v27);
      v26 = v16;
      v25 = v28;
      v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v21 = v20;
      _StringGuts.grow(_:)(27);

      v27._countAndFlagsBits = 0xD000000000000019;
      v27._object = 0x8000000100E48450;
      if (a1 == 2)
      {
        v22 = 0x64616F6C6E776F64;
      }

      else
      {
        v22 = 0x657469726F766166;
      }

      v23 = 0xE900000000000073;
      String.append(_:)(*&v22);

      AccessibilityIdentifier.init(name:)(v27);

      v24 = String._bridgeToObjectiveC()();

      [v21 setAccessibilityIdentifier:{v24, 0, 0, v14 & 1, v25, v26}];

      return v21;
    }
  }

  else
  {

    return 0;
  }
}

id sub_10039A4C4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return 0;
    }

    else
    {
      sub_10045F2E0();
      v10 = *(a2 + 64);
      v23 = a1;
      v11 = sub_10048B9E8(a1, v10);
      v12 = String._bridgeToObjectiveC()();

      [objc_opt_self() systemImageNamed:v12];

      sub_100009F78(0, &qword_1011839A0);
      v13 = swift_allocObject();
      v14 = *(a2 + 48);
      *(v13 + 48) = *(a2 + 32);
      *(v13 + 64) = v14;
      v15 = *(a2 + 80);
      *(v13 + 80) = *(a2 + 64);
      *(v13 + 96) = v15;
      v16 = *(a2 + 16);
      *(v13 + 16) = *a2;
      *(v13 + 32) = v16;
      *(v13 + 112) = v11 & 1;
      *(v13 + 113) = a1;
      *(v13 + 120) = a3;
      *(v13 + 128) = a4;

      sub_1001103E0(a2, &v22);
      v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v18 = v17;
      _StringGuts.grow(_:)(27);

      v22._countAndFlagsBits = 0xD000000000000019;
      v22._object = 0x8000000100E48450;
      if (v23 == 2)
      {
        v19 = 0x64616F6C6E776F64;
      }

      else
      {
        v19 = 0x657469726F766166;
      }

      v20 = 0xE900000000000073;
      String.append(_:)(*&v19);

      AccessibilityIdentifier.init(name:)(v22);

      v21 = String._bridgeToObjectiveC()();

      [v18 setAccessibilityIdentifier:{v21, 0, 0, v11 & 1, sub_1003BF090, v13}];

      return v18;
    }
  }

  else
  {

    return 0;
  }
}

id sub_10039A798(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return 0;
    }

    else
    {
      sub_10045F2E0();
      v10 = *(a2 + 32);
      v22 = a1;
      v11 = sub_10048B9E8(a1, v10);
      v12 = String._bridgeToObjectiveC()();

      [objc_opt_self() systemImageNamed:v12];

      sub_100009F78(0, &qword_1011839A0);
      v13 = swift_allocObject();
      v14 = *(a2 + 48);
      *(v13 + 48) = *(a2 + 32);
      *(v13 + 64) = v14;
      *(v13 + 80) = *(a2 + 64);
      v15 = *(a2 + 16);
      *(v13 + 16) = *a2;
      *(v13 + 32) = v15;
      *(v13 + 81) = v11 & 1;
      *(v13 + 82) = a1;
      *(v13 + 88) = a3;
      *(v13 + 96) = a4;

      sub_10021817C(a2, &v21);
      v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v17 = v16;
      _StringGuts.grow(_:)(27);

      v21._countAndFlagsBits = 0xD000000000000019;
      v21._object = 0x8000000100E48450;
      if (v22 == 2)
      {
        v18 = 0x64616F6C6E776F64;
      }

      else
      {
        v18 = 0x657469726F766166;
      }

      v19 = 0xE900000000000073;
      String.append(_:)(*&v18);

      AccessibilityIdentifier.init(name:)(v21);

      v20 = String._bridgeToObjectiveC()();

      [v17 setAccessibilityIdentifier:{v20, 0, 0, v11 & 1, sub_1003BEC54, v13}];

      return v17;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10039AA74(uint64_t a1, uint64_t a2, char a3, Swift::Int a4, void (*a5)(uint64_t))
{
  v10 = *(a2 + *(_s10TVEpisodesVMa(0) + 48));

  if (a3)
  {
    sub_100194E54(a4);
  }

  else
  {
    sub_1003B2924(&v9, a4);
  }

  a5(v10);
}

uint64_t sub_10039AB24(uint64_t a1, uint64_t a2, char a3, Swift::Int a4, void (*a5)(uint64_t))
{
  v10 = *(a2 + *(_s9PlaylistsVMa(0) + 40));

  if (a3)
  {
    sub_100194E54(a4);
  }

  else
  {
    sub_1003B2924(&v9, a4);
  }

  a5(v10);
}

uint64_t sub_10039ABD4(uint64_t a1, uint64_t a2, char a3, Swift::Int a4, void (*a5)(uint64_t))
{
  v10 = *(a2 + *(_s11MusicVideosVMa(0) + 36));

  if (a3)
  {
    sub_100194E54(a4);
  }

  else
  {
    sub_1003B2924(&v9, a4);
  }

  a5(v10);
}

uint64_t sub_10039AC84(uint64_t a1, uint64_t a2, char a3, Swift::Int a4, void (*a5)(uint64_t))
{
  v10 = *(a2 + *(_s6AlbumsVMa(0) + 32));

  if (a3)
  {
    sub_100194E54(a4);
  }

  else
  {
    sub_1003B2924(&v9, a4);
  }

  a5(v10);
}

void sub_10039AD34()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    do
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_18:
        swift_once();
        if (byte_101218F00)
        {
          return;
        }

LABEL_13:
        if (*(v0 + 145) == 1)
        {

          sub_10039C59C();
        }

        return;
      }

      v7 = *v4;
      v8 = qword_10117F808;
      swift_unknownObjectRetain();
      if (v8 == -1)
      {
        if (byte_101218F00)
        {
          goto LABEL_8;
        }
      }

      else
      {
        swift_once();
        if (byte_101218F00)
        {
LABEL_8:
          v5 = 0;
          goto LABEL_4;
        }
      }

      v5 = *(v0 + 145);
LABEL_4:
      ++v3;
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(v5, ObjectType, v7);
      swift_unknownObjectRelease();
      v4 += 2;
    }

    while (v2 != v3);
  }

  if (qword_10117F808 != -1)
  {
    goto LABEL_18;
  }

  if ((byte_101218F00 & 1) == 0)
  {
    goto LABEL_13;
  }
}

void *sub_10039AEB8(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for Impressions.BagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_10010CF98(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_10010CFAC(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_10047E560();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_1003BCBD8;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1003ADC64;
  v19[3] = &unk_1010A9238;
  v12 = _Block_copy(v19);

  v13 = [v11 initWithScrollView:a2 changeHandler:v12];
  _Block_release(v12);

  v14 = v9[15];
  v9[15] = v13;

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v16, 0, 1, 1, sub_1003BCC08, v15);

  if (a3)
  {
    v17 = swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_1003BCC10, v17);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_10039B1E8(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for Impressions.BagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_10010CFD0(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_10010CFE4(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_10047E560();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_1003C0764;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1003ADC64;
  v19[3] = &unk_1010A9AD0;
  v12 = _Block_copy(v19);

  v13 = [v11 initWithScrollView:a2 changeHandler:v12];
  _Block_release(v12);

  v14 = v9[15];
  v9[15] = v13;

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v16, 0, 1, 1, sub_1003C0794, v15);

  if (a3)
  {
    v17 = swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_1003C079C, v17);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

uint64_t sub_10039B518(void *a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10039EE88(a1, a3);
  }

  return result;
}

uint64_t sub_10039B58C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_10117F808 != -1)
    {
      v19 = result;
      swift_once();
      result = v19;
    }

    if (byte_101218F00 != 1 && *(result + 145) == 1)
    {
      sub_100009F78(0, &qword_101182960);
      *v10 = static OS_dispatch_queue.main.getter();
      (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
      v12 = _dispatchPreconditionTest(_:)();
      result = (*(v8 + 8))(v10, v7);
      if ((v12 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v13 = [objc_opt_self() sharedApplication];
      v14 = [v13 applicationState];

      if (!v14)
      {
        Date.init()();
        v15 = swift_allocObject();
        swift_weakInit();
        (*(v1 + 16))(v3, v6, v0);
        v16 = (*(v1 + 80) + 24) & ~*(v1 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        (*(v1 + 32))(v17 + v16, v3, v0);
        v18 = swift_allocObject();
        *(v18 + 16) = sub_1003BE744;
        *(v18 + 24) = v17;

        sub_100535350(sub_1003BE75C, v18);

        (*(v1 + 8))(v6, v0);
      }
    }
  }

  return result;
}

uint64_t sub_10039B940()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_10117F808 != -1)
    {
      v18 = result;
      swift_once();
      result = v18;
    }

    if (byte_101218F00 != 1 && *(result + 145) == 1)
    {
      sub_100009F78(0, &qword_101182960);
      *v10 = static OS_dispatch_queue.main.getter();
      (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
      v12 = _dispatchPreconditionTest(_:)();
      result = (*(v8 + 8))(v10, v7);
      if ((v12 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v13 = [objc_opt_self() sharedApplication];
      v14 = [v13 applicationState];

      if (!v14)
      {
        Date.init()();
        v15 = swift_allocObject();
        swift_weakInit();
        (*(v1 + 16))(v3, v6, v0);
        v16 = (*(v1 + 80) + 24) & ~*(v1 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        (*(v1 + 32))(v17 + v16, v3, v0);

        sub_100534EE4(sub_1003C0BFC, v17);

        (*(v1 + 8))(v6, v0);
      }
    }
  }

  return result;
}

uint64_t sub_10039BCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    type metadata accessor for MainActor();

    v15 = static MainActor.shared.getter();
    v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = v15;
    *(v17 + 3) = &protocol witness table for MainActor;
    *(v17 + 4) = v13;
    (*(v7 + 32))(&v17[v16], &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    sub_1001F4CB8(0, 0, v11, a4, v17);
  }

  return result;
}

uint64_t sub_10039BEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10039BF7C, v7, v6);
}

uint64_t sub_10039BF7C()
{
  v1 = *(v0 + 24);

  sub_10039FBC0(v1, sub_10039EFB0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10039BFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10039C094, v7, v6);
}

uint64_t sub_10039C094()
{
  v1 = *(v0 + 24);

  sub_10039FBC0(v1, sub_10039F3F0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10039C118()
{
  swift_beginAccess();
  *(v0 + 104) = _swiftEmptyDictionarySingleton;

  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (!v2)
  {
  }

  v4 = 0;
  v5 = (v1 + 40);
  while (v4 < *(v1 + 16))
  {
    ++v4;
    v6 = *v5;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 104);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);
    result = swift_unknownObjectRelease();
    v5 += 2;
    if (v2 == v4)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_10039C204(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, char *, uint64_t, double), void (*a5)(uint64_t *), double a6)
{
  v40 = a4;
  v41 = a1;
  v9 = v6;
  v42 = a3;
  v11 = sub_10010FC20(a2);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v38 = a5;
    swift_beginAccess();
    v19 = *(v9 + 112);
    v39 = v9;
    swift_weakInit();
    v20 = 1 << *(v19 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v19 + 64);
    swift_bridgeObjectRetain_n();
    swift_beginAccess();
    v23 = 0;
    v24 = (v20 + 63) >> 6;
    while (v22)
    {
LABEL_11:
      v26 = __clz(__rbit64(v22)) | (v23 << 6);
      v27 = *(v19 + 48);
      v28 = type metadata accessor for IndexPath();
      (*(*(v28 - 8) + 16))(v13, v27 + *(*(v28 - 8) + 72) * v26, v28);
      v29 = *(*(v19 + 56) + 8 * v26);
      *&v13[*(v11 + 48)] = v29;
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        v40(v29, v13, v41, a6);
      }

      v22 &= v22 - 1;
      sub_1000095E8(v13, a2);
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v25 >= v24)
      {
        break;
      }

      v22 = *(v19 + 64 + 8 * v25);
      ++v23;
      if (v22)
      {
        v23 = v25;
        goto LABEL_11;
      }
    }

    swift_weakDestroy();
    v31 = v39;
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v33 = v32;
      v34 = UIScrollView.isScrolling.getter();

      if ((v34 & 1) == 0)
      {
        v36 = *(v31 + 48);
        __chkstk_darwin(v35);
        *(&v37 - 2) = v41;
        *(&v37 - 1) = a6;

        sub_100377034(v38, (&v37 - 4), v36);
      }
    }
  }

  else
  {
LABEL_18:
    __break(1u);
  }
}

void sub_10039C59C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10117F808 != -1)
  {
    v21 = v10;
    swift_once();
    v10 = v21;
  }

  if ((byte_101218F00 & 1) == 0 && *(v0 + 145) == 1)
  {
    v13 = v10;
    sub_100009F78(0, &qword_101182960);
    *v12 = static OS_dispatch_queue.main.getter();
    (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v13);
    v14 = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v12, v13);
    if (v14)
    {
      v15 = [objc_opt_self() sharedApplication];
      v16 = [v15 applicationState];

      if (!v16)
      {
        Date.init()();
        v17 = swift_allocObject();
        swift_weakInit();
        (*(v2 + 16))(v4, v7, v1);
        v18 = (*(v2 + 80) + 24) & ~*(v2 + 80);
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        (*(v2 + 32))(v19 + v18, v4, v1);
        v20 = swift_allocObject();
        *(v20 + 16) = sub_1003C18AC;
        *(v20 + 24) = v19;

        sub_100535350(sub_1003C1840, v20);

        (*(v2 + 8))(v7, v1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10039C918()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10117F808 != -1)
  {
    v20 = v10;
    swift_once();
    v10 = v20;
  }

  if ((byte_101218F00 & 1) == 0 && *(v0 + 145) == 1)
  {
    v13 = v10;
    sub_100009F78(0, &qword_101182960);
    *v12 = static OS_dispatch_queue.main.getter();
    (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v13);
    v14 = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v12, v13);
    if (v14)
    {
      v15 = [objc_opt_self() sharedApplication];
      v16 = [v15 applicationState];

      if (!v16)
      {
        Date.init()();
        v17 = swift_allocObject();
        swift_weakInit();
        (*(v2 + 16))(v4, v7, v1);
        v18 = (*(v2 + 80) + 24) & ~*(v2 + 80);
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        (*(v2 + 32))(v19 + v18, v4, v1);

        sub_100534EE4(sub_1003C18B8, v19);

        (*(v2 + 8))(v7, v1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10039CCD0(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(uint64_t, char *, uint64_t, double), void (*a7)(uint64_t *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10039C204(a3, a4, a5, a6, a7, a1);
  }

  return result;
}

void sub_10039CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, void), uint64_t (*a5)(uint64_t), uint64_t (*a6)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v65 = a6;
  v66 = a2;
  v67 = a5;
  v68 = a3;
  v71 = a4;
  v72 = a1;
  v6 = type metadata accessor for Date();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v12 = static OS_dispatch_queue.main.getter();
  v13 = enum case for DispatchPredicate.onQueue(_:);
  v14 = *(v10 + 104);
  v14(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = _dispatchPreconditionTest(_:)();
  v16 = *(v10 + 8);
  v16(v12, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (qword_10117F808 != -1)
  {
LABEL_42:
    swift_once();
  }

  if ((byte_101218F00 & 1) != 0 || *(v73 + 145) != 1)
  {
    return;
  }

  *v12 = static OS_dispatch_queue.main.getter();
  v14(v12, v13, v9);
  v17 = _dispatchPreconditionTest(_:)();
  v16(v12, v9);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_44:
    swift_once();
LABEL_21:
    v51 = type metadata accessor for Logger();
    sub_1000060E4(v51, qword_101218DD0);
    v21 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v21, v52, "Paused tracking.  Container view was deallocated", v53, 2u);
    }

    goto LABEL_23;
  }

  v18 = [objc_opt_self() sharedApplication];
  v19 = [v18 applicationState];

  if (v19)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_10117F790 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

  v21 = Strong;
  v22 = v72;
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
LABEL_23:

    return;
  }

  v24 = v73;
  sub_10039D910();
  v25 = v21;
  v26 = sub_10039DAF8(v22, v21, v71);

  v27 = sub_100431E88(*(v22 + 16));
  v29 = v28;
  swift_beginAccess();
  v30 = *(v24 + 104);
  if (*(v30 + 16) && (, v31 = sub_100019C10(v27, v29), v33 = v32, , (v33 & 1) != 0))
  {
    v34 = *(*(v30 + 56) + 8 * v31);

    swift_beginAccess();
    v35 = *(v34 + 48);
    v38 = *(v35 + 16);
    v36 = v35 + 16;
    v37 = v38;
    if (v38)
    {
      v39 = *(v36 + 16 * v37 + 8);
      v40 = v39 == 2;
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_26:
      if (!v40 && (v39 & 1) == 0)
      {
        goto LABEL_34;
      }

      v41 = v67(v22);
      v54 = v69;
      v55 = v70;
      (*(v69 + 16))(v8, v68, v70);
      Date.timeIntervalSince1970.getter();
      v57 = v56;
      (*(v54 + 8))(v8, v55);
      swift_beginAccess();
      v46 = *(v41 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v41 + 48) = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = v65(0, *(v46 + 16) + 1, 1, v46);
        *(v41 + 48) = v46;
      }

      v60 = *(v46 + 16);
      v59 = *(v46 + 24);
      if (v60 >= v59 >> 1)
      {
        v46 = v65(v59 > 1, v60 + 1, 1, v46);
      }

      *(v46 + 16) = v60 + 1;
      v61 = v46 + 16 * v60;
      *(v61 + 32) = v57;
      *(v61 + 40) = 0;
      goto LABEL_33;
    }
  }

  else
  {

    v34 = 0;
  }

  LOBYTE(v39) = 2;
  v40 = 1;
  if (v26)
  {
    goto LABEL_26;
  }

LABEL_13:
  if (v40 || (v39 & 1) != 0)
  {
    goto LABEL_34;
  }

  v41 = v67(v22);
  v42 = v69;
  v43 = v70;
  (*(v69 + 16))(v8, v68, v70);
  Date.timeIntervalSince1970.getter();
  v45 = v44;
  (*(v42 + 8))(v8, v43);
  swift_beginAccess();
  v46 = *(v41 + 48);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *(v41 + 48) = v46;
  if ((v47 & 1) == 0)
  {
    v46 = v65(0, *(v46 + 16) + 1, 1, v46);
    *(v41 + 48) = v46;
  }

  v49 = *(v46 + 16);
  v48 = *(v46 + 24);
  if (v49 >= v48 >> 1)
  {
    v46 = v65(v48 > 1, v49 + 1, 1, v46);
  }

  *(v46 + 16) = v49 + 1;
  v50 = v46 + 16 * v49;
  *(v50 + 32) = v45;
  *(v50 + 40) = 1;
LABEL_33:
  *(v41 + 48) = v46;
  swift_endAccess();

LABEL_34:
  v62 = *(v73 + 152);
  if (!v62)
  {

    goto LABEL_38;
  }

  if (v34)
  {

    v63 = sub_10048C5C4(v66, v62);

    *(v34 + 41) = v63 & 1;
LABEL_38:

    return;
  }
}

uint64_t sub_10039D4E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = sub_100431E88(v4);
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 104);
  if (*(v8 + 16))
  {

    v9 = sub_100019C10(v5, v7);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      goto LABEL_11;
    }
  }

  if (*(a1 + 32))
  {
    v12 = qword_10117F810;

    if (v12 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_1003C18BC);
    v13 = qword_101193E90;
  }

  else
  {
    v13 = *(a1 + 24);
  }

  sub_10010FC20(&unk_10118CEA8);
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 40) = 513;
  *(v11 + 48) = _swiftEmptyArrayStorage;
  *(v11 + 16) = v4;
  *(v11 + 24) = v13;

  v14 = sub_100431E88(v4);
  v16 = v15;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + 104);
  *(v2 + 104) = 0x8000000000000000;
  sub_1006C6130(v11, v14, v16, isUniquelyReferenced_nonNull_native);

  *(v2 + 104) = v19;
  swift_endAccess();
LABEL_11:
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v11 + 32) = *(v2 + 64);
    *(v11 + 40) = 0;
  }

  return v11;
}

uint64_t sub_10039D6F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = sub_100431E88(v4);
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 104);
  if (*(v8 + 16))
  {

    v9 = sub_100019C10(v5, v7);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      goto LABEL_11;
    }
  }

  if (*(a1 + 32))
  {
    v12 = qword_10117F810;

    if (v12 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_1003C18BC);
    v13 = qword_101193E90;
  }

  else
  {
    v13 = *(a1 + 24);
  }

  sub_10010FC20(&unk_10118D040);
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 40) = 513;
  *(v11 + 48) = _swiftEmptyArrayStorage;
  *(v11 + 16) = v4;
  *(v11 + 24) = v13;

  v14 = sub_100431E88(v4);
  v16 = v15;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + 104);
  *(v2 + 104) = 0x8000000000000000;
  sub_1006C6158(v11, v14, v16, isUniquelyReferenced_nonNull_native);

  *(v2 + 104) = v19;
  swift_endAccess();
LABEL_11:
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v11 + 32) = *(v2 + 64);
    *(v11 + 40) = 0;
  }

  return v11;
}

void sub_10039D910()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
LABEL_2:

    swift_unknownObjectRelease();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v2 = [Strong parentViewController];
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = v4;
      v6 = v0;
      v7 = v3;
LABEL_14:

      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      v12 = v11;
      v13 = v6;
      v14 = swift_unknownObjectWeakLoadStrong();
      *(v13 + 24) = v12;
      swift_unknownObjectWeakAssign();
      sub_10047DDD0(v14);

      swift_unknownObjectRelease();
      goto LABEL_2;
    }

    v7 = v3;
    while (1)
    {
      v8 = v7;

      v7 = [v7 parentViewController];
      if (!v7)
      {
        break;
      }

      swift_getObjectType();
      v9 = swift_conformsToProtocol2();
      if (v9)
      {
        v5 = v9;
        v6 = v0;
        goto LABEL_14;
      }
    }
  }
}

uint64_t sub_10039DAF8(uint64_t a1, void *a2, uint64_t (*a3)(id, uint64_t, void))
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = a2;
      if ([v8 isHidden] & 1) == 0 && objc_msgSend(v8, "_isInAWindow") && (v10 = swift_unknownObjectWeakLoadStrong(), v11 = a3(v9, v10, *(v3 + 24)), swift_unknownObjectRelease(), (v11))
      {
        [v9 visibleBounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [v9 adjustedContentInset];
        sub_100058728(v13, v15, v17, v19, v20, v21);
        [v8 frame];
        v44 = v22;
        v23 = CGRect.isContained(in:percentage:)();
        if (*(a1 + 48) > 1u)
        {
          if (*(a1 + 48) != 2)
          {
            [v8 frame];
            [v8 convertRect:v9 toCoordinateSpace:?];
            [v9 visibleBounds];
            v24 = CGRect.isContained(in:percentage:)();
            goto LABEL_17;
          }

          v42 = [v8 superview];
          if (!v42)
          {
            goto LABEL_22;
          }

          v43 = v42;
          [v8 frame];
          [v43 convertRect:v9 toCoordinateSpace:?];
          v24 = CGRect.isContained(in:percentage:)();

          v9 = v8;
          v8 = v43;
        }

        else
        {
          v24 = v23;
          if (*(a1 + 48))
          {
            if (v23)
            {
              if (swift_unknownObjectWeakLoadStrong())
              {
                v25 = *(v3 + 24);
                ObjectType = swift_getObjectType();
                v27 = (*(v25 + 88))(ObjectType, v25);
                swift_unknownObjectRelease();
                if (v27)
                {
                  if (v27 != a2 && (v28 = swift_unknownObjectWeakLoadStrong()) != 0 && (v29 = v28, v30 = [v28 superview], v29, v30))
                  {
                    [v27 visibleBounds];
                    v32 = v31;
                    v34 = v33;
                    v36 = v35;
                    v38 = v37;
                    [v27 adjustedContentInset];
                    sub_100058728(v32, v34, v36, v38, v39, v40);
                    [v8 frame];
                    [v30 convertRect:v27 toCoordinateSpace:?];
                    v24 = CGRect.isContained(in:percentage:)();

                    v9 = v27;
                    v8 = v30;
                  }

                  else
                  {

                    v24 = 1;
                    v9 = v27;
                  }

                  goto LABEL_17;
                }
              }
            }

LABEL_22:
            v24 = 1;
          }
        }
      }

      else
      {
        v24 = 0;
      }

LABEL_17:

      return v24 & 1;
    }
  }

  v24 = 0;
  return v24 & 1;
}

uint64_t sub_10039DEEC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, uint64_t))
{
  if (!a2)
  {
    return 1;
  }

  ObjectType = swift_getObjectType();
  v8 = (*(a3 + 88))(ObjectType, a3);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = a1;
  v11 = [v10 superview];
  if (v11)
  {
    while (1)
    {

      if (v10)
      {
        v13 = [v10 superview];
        if (v13)
        {
          v14 = v13;

          if (v14 == v9)
          {
            break;
          }
        }
      }

      v12 = [v10 superview];

      v11 = [v12 superview];
      v10 = v12;
      if (!v11)
      {
        goto LABEL_10;
      }
    }
  }

  v12 = v10;
LABEL_10:
  [v9 visibleBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = [v9 adjustedContentInset];
  if (v12)
  {
    v26 = sub_100058728(v16, v18, v20, v22, v24, v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [v12 frame];
    v42.origin.x = v33;
    v42.origin.y = v34;
    v42.size.width = v35;
    v42.size.height = v36;
    v41.origin.x = v26;
    v41.origin.y = v28;
    v41.size.width = v30;
    v41.size.height = v32;
    if (CGRectIntersectsRect(v41, v42))
    {
      v37 = swift_getObjectType();
      v38 = (*(a3 + 32))(v37, a3);
      v40 = a4(v9, v38, v39);

      swift_unknownObjectRelease();
      return v40 & 1;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039E110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a2;
  v5 = type metadata accessor for Date();
  v57 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v10, &unk_10118BCE0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000095E8(v10, &unk_10118BCE0);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  v18 = sub_100391EC8(v14);

  if (!v18)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v19 = sub_100431E88(v18);
  v21 = v20;
  swift_beginAccess();
  if (*(v3[13] + 16))
  {

    sub_100019C10(v19, v21);
    v23 = v22;

    if (v23)
    {

      return (*(v12 + 8))(v14, v11);
    }
  }

  swift_beginAccess();
  v24 = v3[14];
  if (!*(v24 + 16))
  {
LABEL_16:
    v38 = qword_10117F810;

    if (v38 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_1003BE72C);
    v39 = qword_101193E90;
    sub_10010FC20(&unk_10118CEA8);
    v40 = swift_allocObject();
    *(v40 + 32) = 0;
    *(v40 + 40) = 513;
    *(v40 + 48) = _swiftEmptyArrayStorage;
    v41 = (v40 + 48);
    v55 = v18;
    *(v40 + 16) = v18;
    *(v40 + 24) = v39;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v40 + 32) = v3[8];
      *(v40 + 40) = 0;
    }

    v42 = v57;
    (*(v57 + 16))(v7, v56, v5);
    Date.timeIntervalSince1970.getter();
    v44 = v43;
    (*(v42 + 8))(v7, v5);
    swift_beginAccess();
    v45 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v41 = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = sub_100499F10(0, *(v45 + 2) + 1, 1, v45);
      *v41 = v45;
    }

    v48 = *(v45 + 2);
    v47 = *(v45 + 3);
    v49 = v55;
    if (v48 >= v47 >> 1)
    {
      v45 = sub_100499F10((v47 > 1), v48 + 1, 1, v45);
    }

    *(v45 + 2) = v48 + 1;
    v50 = &v45[16 * v48];
    *(v50 + 4) = v44;
    v50[40] = 0;
    *(v40 + 48) = v45;
    swift_endAccess();
    v51 = sub_100431E88(v49);
    v53 = v52;

    swift_beginAccess();

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v3[13];
    v3[13] = 0x8000000000000000;
    sub_1006C6130(v40, v51, v53, v54);

    v3[13] = v58;
    swift_endAccess();

    return (*(v12 + 8))(v14, v11);
  }

  v25 = sub_1006BE9F0(v14);
  if ((v26 & 1) == 0)
  {

    goto LABEL_16;
  }

  v27 = v25;

  v28 = *(*(v24 + 56) + 8 * v27);

  v29 = sub_10039D4E0(v28);
  v30 = v57;
  (*(v57 + 16))(v7, v56, v5);
  Date.timeIntervalSince1970.getter();
  v32 = v31;
  (*(v30 + 8))(v7, v5);
  swift_beginAccess();
  v33 = *(v29 + 48);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  *(v29 + 48) = v33;
  if ((v34 & 1) == 0)
  {
    v33 = sub_100499F10(0, *(v33 + 2) + 1, 1, v33);
    *(v29 + 48) = v33;
  }

  v36 = *(v33 + 2);
  v35 = *(v33 + 3);
  if (v36 >= v35 >> 1)
  {
    v33 = sub_100499F10((v35 > 1), v36 + 1, 1, v33);
  }

  *(v33 + 2) = v36 + 1;
  v37 = &v33[16 * v36];
  *(v37 + 4) = v32;
  v37[40] = 0;
  *(v29 + 48) = v33;
  swift_endAccess();

  (*(v12 + 8))(v14, v11);
}

uint64_t sub_10039E78C(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v62 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v9, &unk_10118BCE0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000095E8(v9, &unk_10118BCE0);
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v62 = v5;
  v63 = v4;
  v64 = v2;
  v16 = (Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  v17 = Strong;
  swift_beginAccess();
  v18 = *v16;
  v19 = v16[1];
  ObjectType = swift_getObjectType();
  v68 = v18;
  v21 = v13;
  v22 = *(v19 + 448);
  swift_unknownObjectRetain();
  v23 = v22(v21, ObjectType, v19);
  swift_unknownObjectRelease();

  if (!v23)
  {
    return (*(v11 + 8))(v21, v10);
  }

  v24 = sub_100431E88(v23);
  v26 = v25;
  v27 = v64;
  swift_beginAccess();
  v13 = v21;
  if (*(v27[13] + 16))
  {

    sub_100019C10(v24, v26);
    v29 = v28;

    v31 = v62;
    v30 = v63;
    if (v29)
    {

      return (*(v11 + 8))(v13, v10);
    }
  }

  else
  {

    v31 = v62;
    v30 = v63;
  }

  swift_beginAccess();
  v32 = v27[14];
  if (!*(v32 + 16))
  {
LABEL_19:
    v46 = qword_10117F810;

    if (v46 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_1003C18BC);
    v47 = qword_101193E90;
    sub_10010FC20(&unk_10118D040);
    v48 = swift_allocObject();
    *(v48 + 32) = 0;
    *(v48 + 40) = 513;
    *(v48 + 48) = _swiftEmptyArrayStorage;
    v49 = (v48 + 48);
    *(v48 + 16) = v23;
    *(v48 + 24) = v47;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v48 + 32) = v27[8];
      *(v48 + 40) = 0;
    }

    v50 = v65;
    (*(v31 + 16))(v65, v66, v30);
    Date.timeIntervalSince1970.getter();
    v52 = v51;
    (*(v31 + 8))(v50, v30);
    swift_beginAccess();
    v53 = *v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v49 = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = sub_100499F24(0, *(v53 + 2) + 1, 1, v53);
      *v49 = v53;
    }

    v56 = *(v53 + 2);
    v55 = *(v53 + 3);
    if (v56 >= v55 >> 1)
    {
      v53 = sub_100499F24((v55 > 1), v56 + 1, 1, v53);
    }

    *(v53 + 2) = v56 + 1;
    v57 = &v53[16 * v56];
    *(v57 + 4) = v52;
    v57[40] = 0;
    *(v48 + 48) = v53;
    swift_endAccess();
    v58 = sub_100431E88(v23);
    v60 = v59;

    swift_beginAccess();

    v61 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v27[13];
    v27[13] = 0x8000000000000000;
    sub_1006C6158(v48, v58, v60, v61);

    v27[13] = v67;
    swift_endAccess();

    return (*(v11 + 8))(v13, v10);
  }

  v33 = sub_1006BE9F0(v13);
  if ((v34 & 1) == 0)
  {

    goto LABEL_19;
  }

  v35 = v33;

  v36 = *(*(v32 + 56) + 8 * v35);

  v37 = sub_10039D6F8(v36);
  v38 = v65;
  (*(v31 + 16))(v65, v66, v30);
  Date.timeIntervalSince1970.getter();
  v40 = v39;
  (*(v31 + 8))(v38, v30);
  swift_beginAccess();
  v41 = *(v37 + 48);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  *(v37 + 48) = v41;
  if ((v42 & 1) == 0)
  {
    v41 = sub_100499F24(0, *(v41 + 2) + 1, 1, v41);
    *(v37 + 48) = v41;
  }

  v44 = *(v41 + 2);
  v43 = *(v41 + 3);
  if (v44 >= v43 >> 1)
  {
    v41 = sub_100499F24((v43 > 1), v44 + 1, 1, v41);
  }

  *(v41 + 2) = v44 + 1;
  v45 = &v41[16 * v44];
  *(v45 + 4) = v40;
  v45[40] = 0;
  *(v37 + 48) = v41;
  swift_endAccess();

  (*(v11 + 8))(v13, v10);
}

void sub_10039EE88(void *a1, void (*a2)(void))
{
  if (qword_10117F808 != -1)
  {
    v18 = a1;
    v19 = a2;
    swift_once();
    a2 = v19;
    a1 = v18;
  }

  if ((byte_101218F00 & 1) == 0 && *(v2 + 145) == 1)
  {
    if ((*(v2 + 192) & 1) != 0 || ((v4 = *(v2 + 176), v3 = *(v2 + 184), v5 = a1, v6 = a2, [a1 contentOffset], a2 = v6, a1 = v5, v4 == v8) ? (v9 = v3 == v7) : (v9 = 0), !v9))
    {
      v10 = a1;
      if (*(v2 + 168))
      {
        a2();
        Current = CFAbsoluteTimeGetCurrent();
      }

      else
      {
        v12 = *(v2 + 160);
        v13 = a2;
        v14 = CFAbsoluteTimeGetCurrent();
        if (v14 - v12 <= 0.025)
        {
          return;
        }

        v15 = v14;
        v13();
        Current = v15;
      }

      *(v2 + 160) = Current;
      *(v2 + 168) = 0;
      [v10 contentOffset];
      *(v2 + 176) = v16;
      *(v2 + 184) = v17;
      *(v2 + 192) = 0;
    }
  }
}

uint64_t sub_10039EFB0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchTime();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_10039E110(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1003BCD40;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_100535350(sub_1003BCD7C, v23);

    sub_100009F78(0, &qword_101182960);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    OS_dispatch_semaphore.wait(timeout:)();
    (*(v34 + 8))(v9, v33);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_10117F790 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000060E4(v26, qword_101218DD0);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10039F3F0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchTime();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_10039E78C(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v32 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v19 = *(v3 + 88);
    v30[1] = v18 + 16;
    v30[2] = v19;
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v31;
    *(v23 + 24) = v18;
    *(v23 + 32) = v20;
    (*(v11 + 32))(v23 + v21, v13, v10);
    *(v23 + v22) = v17;

    v24 = v17;
    sub_100535104(sub_1003C0A78, v23);

    sub_100009F78(0, &qword_101182960);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    OS_dispatch_semaphore.wait(timeout:)();
    (*(v33 + 8))(v9, v32);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_10117F790 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000060E4(v26, qword_101218DD0);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10039F7F0(int a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v18 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v43 - v19;
  v21 = (a2 + 16);
  if ((a1 & 4) != 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      v44 = a6;
      swift_beginAccess();
      v33 = *(v32 + 104);

      if (a1)
      {
        v36 = sub_1003BA23C(v33, a7, a8);

        v33 = v36;
      }

      __chkstk_darwin(v34);
      *(&v43 - 32) = a1 & 1;
      *(&v43 - 3) = a5;
      *(&v43 - 2) = a3;
      v35 = sub_1003BB29C(v33, a9);
    }

    else
    {
      v35 = 0;
    }

    swift_beginAccess();
    *v21 = v35;

    return OS_dispatch_semaphore.signal()();
  }

  swift_beginAccess();
  v22 = swift_weakLoadStrong();
  if (!v22)
  {
    return OS_dispatch_semaphore.signal()();
  }

  v23 = v22;
  v44 = a6;
  swift_retain_n();
  swift_getObjectType();
  v24 = &off_1010ADC50;
  v25 = sub_100481AB4();
  v27 = v26;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v25)
  {
    do
    {
      v24 = v27;
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      v29 = (*(v27 + 32))(ObjectType, v27);
      v27 = v30;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    while (v29);
  }

  result = swift_beginAccess();
  if (*v21)
  {
    v38 = a1 | 4u;
    v39 = swift_getObjectType();
    v40 = type metadata accessor for IndexPath();
    (*(*(v40 - 8) + 56))(v20, 1, 1, v40);
    v41 = sub_100431F44(v38, a5, v20, v39, v24);
    sub_1000095E8(v20, &unk_10118BCE0);
    if (v41)
    {
      sub_1001254E4(v41);
    }

    v42 = (v24[7])(v39, v24);
    __chkstk_darwin(v42);
    *(&v43 - 4) = v23;
    *(&v43 - 12) = v38;
    *(&v43 - 2) = a5;
    *(&v43 - 1) = v21;
    sub_100376F9C(a10, (&v43 - 6), v42);

    swift_endAccess();
    swift_unknownObjectRelease();

    return OS_dispatch_semaphore.signal()();
  }

  __break(1u);
  return result;
}

void sub_10039FBC0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, char *))
{
  v4 = sub_10010FC20(&unk_1011839D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  if (qword_10117F808 != -1)
  {
    swift_once();
  }

  if ((byte_101218F00 & 1) == 0 && *(v2 + 145) == 1)
  {
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    Date.init()();
    v15 = a2(2, v10, v13);
    (*(v8 + 8))(v10, v7);
    sub_1000095E8(v13, &unk_10118BCE0);
    if (v15)
    {
      if (!*(v15 + 16))
      {

        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        ObjectType = swift_getObjectType();
        v19 = swift_conformsToProtocol2();
        if (!v19)
        {
          __break(1u);
          return;
        }

        (*(v19 + 16))(ObjectType, v19);
      }

      else
      {
        v20 = type metadata accessor for MetricsPageProperties();
        (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      }

      v21 = *MetricsReportingController.shared.unsafeMutableAddressor();
      v22 = *(v15 + 16);
      if (v22)
      {
        v37 = v21;
        v38 = _swiftEmptyArrayStorage;
        v23 = v21;
        sub_10066CB8C(0, v22, 0);
        v24 = 32;
        v25 = v38;
        do
        {
          v26 = *(v15 + v24);
          v38 = v25;
          v28 = v25[2];
          v27 = v25[3];

          if (v28 >= v27 >> 1)
          {
            sub_10066CB8C((v27 > 1), v28 + 1, 1);
            v25 = v38;
          }

          v25[2] = v28 + 1;
          v25[v28 + 4] = v26;
          v24 += 8;
          --v22;
        }

        while (v22);

        v21 = v37;
      }

      else
      {
        v29 = v21;

        v25 = _swiftEmptyArrayStorage;
      }

      v30 = sub_10053771C();
      v32 = v31;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v33 = qword_101218AD0;
      v34 = GroupActivitiesManager.hasJoined.getter();
      v35 = GroupActivitiesManager.participantsCount.getter();
      v36 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      (*((swift_isaMask & *v21) + 0xA8))(v25, v6, v30, v32, v34 & 1, v35, *(v33 + v36));

      sub_10039C118();
      sub_1000095E8(v6, &unk_1011839D0);
    }
  }
}

uint64_t sub_1003A0064(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t *, double))
{
  v12 = *(a4 + 16);
  strcpy(&v27, "impressionId");
  BYTE13(v27) = 0;
  HIWORD(v27) = -5120;

  AnyHashable.init<A>(_:)();
  v13 = *(a4 + 24);
  v28 = &type metadata for Int;
  *&v27 = v13;
  sub_100016270(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10006800C(v26, v29, isUniquelyReferenced_nonNull_native);
  sub_10001621C(v29);
  v15 = v12;
  v30 = v12;
  if ((*(a4 + 40) & 1) == 0)
  {
    v16 = *(a4 + 32);
    *&v27 = 0xD000000000000012;
    *(&v27 + 1) = 0x8000000100E484A0;
    AnyHashable.init<A>(_:)();
    v28 = &type metadata for Int;
    *&v27 = v16;
    sub_100016270(&v27, v26);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v26, v29, v17);
    sub_10001621C(v29);
    v30 = v15;
  }

  v18 = *(a4 + 41);
  if (v18 != 2)
  {
    strcpy(&v27, "motionActive");
    BYTE13(v27) = 0;
    HIWORD(v27) = -5120;
    AnyHashable.init<A>(_:)();
    v28 = &type metadata for Bool;
    LOBYTE(v27) = v18 & 1;
    sub_100016270(&v27, v26);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v26, v29, v19);
    sub_10001621C(v29);
    *&v27 = 0x76416E6F69746F6DLL;
    *(&v27 + 1) = 0xEF656C62616C6961;
    AnyHashable.init<A>(_:)();
    v28 = &type metadata for Bool;
    LOBYTE(v27) = v18 & 1;
    sub_100016270(&v27, v26);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v26, v29, v20);
    sub_10001621C(v29);
    v30 = v15;
  }

  if (a5)
  {
    *&v27 = 0x6973736572706D69;
    *(&v27 + 1) = 0xEF73656D69546E6FLL;
    AnyHashable.init<A>(_:)();
    sub_10010FC20(&qword_10118CE90);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100EBC6B0;
    Date.timeIntervalSince1970.getter();
    *(v21 + 32) = Double.toMillisecondsInServerTime.getter(v22);
    v28 = sub_10010FC20(&qword_10118CE98);
    *&v27 = v21;
    sub_100016270(&v27, v26);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v26, v29, v23);
    sub_10001621C(v29);
    return v15;
  }

  else
  {
    swift_beginAccess();

    a7(v25, a6, &v30, a1);

    return v30;
  }
}

uint64_t sub_1003A0418(uint64_t a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = 0.0;
    v8 = a2;
    v9 = (a1 + 40);
    v10 = _swiftEmptyArrayStorage;
    v11 = 0.0;
    v12 = 1;
    v13 = 1;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      v15 = *(v9 - 1);
      if (*v9)
      {
        if ((v13 & 1) == 0)
        {
          v7 = *(v9 - 1);
        }

        v12 &= v13;
        goto LABEL_6;
      }

      if (v13)
      {
        v13 = 0;
        v11 = *(v9 - 1);
      }

      else
      {
        if ((v12 & 1) == 0)
        {
          if (v15 - v7 >= 0.0166666667)
          {
            if (v7 - v11 > 0.0166666667)
            {
              v16 = sub_1005369B8(v11, v7);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_100499EEC(0, v10[2] + 1, 1, v10);
              }

              v18 = v10[2];
              v17 = v10[3];
              if (v18 >= v17 >> 1)
              {
                v10 = sub_100499EEC((v17 > 1), v18 + 1, 1, v10);
              }

              v10[2] = v18 + 1;
              v10[v18 + 4] = v16;
              if (!*(v16 + 16))
              {
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                v10 = sub_100499EEC(0, v10[2] + 1, 1, v10);
LABEL_42:
                v30 = v10[2];
                v29 = v10[3];
                v18 = v30 + 1;
                if (v30 >= v29 >> 1)
                {
                  v10 = sub_100499EEC((v29 > 1), v30 + 1, 1, v10);
                }

                v10[2] = v18;
                v10[v30 + 4] = v16;
                if (*(v16 + 16))
                {
                  v31 = sub_100019C10(100, 0xE100000000000000);
                  if (v32)
                  {
                    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (a2 > -1.0)
                      {
                        if (a2 < 1.84467441e19)
                        {
                          if (*(*(v16 + 56) + 8 * v31) > v8)
                          {
                            if (*(v16 + 16))
                            {
                              v33 = sub_100019C10(115, 0xE100000000000000);
                              if (v34)
                              {
                                v18 = *(*(v16 + 56) + 8 * v33);

                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
                                  goto LABEL_53;
                                }

                                goto LABEL_77;
                              }

LABEL_76:
                              __break(1u);
LABEL_77:
                              v14 = sub_100499DDC(0, *(v14 + 2) + 1, 1, v14);
LABEL_53:
                              v36 = *(v14 + 2);
                              v35 = *(v14 + 3);
                              if (v36 >= v35 >> 1)
                              {
                                v14 = sub_100499DDC((v35 > 1), v36 + 1, 1, v14);
                              }

                              *(v14 + 2) = v36 + 1;
                              *&v14[8 * v36 + 32] = v18;
LABEL_56:
                              if (!v10[2])
                              {
                                goto LABEL_60;
                              }

                              goto LABEL_57;
                            }

LABEL_75:
                            __break(1u);
                            goto LABEL_76;
                          }

                          if (v10[2])
                          {
                            goto LABEL_57;
                          }

LABEL_60:

                          if (!*(v14 + 2))
                          {
                          }

LABEL_58:
                          *&v43 = 0x6973736572706D69;
                          *(&v43 + 1) = 0xEF73656D69546E6FLL;
                          AnyHashable.init<A>(_:)();
                          v44 = sub_10010FC20(&qword_10118CE98);
                          *&v43 = v14;
                          sub_100016270(&v43, v42);
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v41 = *a4;
                          sub_10006800C(v42, v45, isUniquelyReferenced_nonNull_native);
                          result = sub_10001621C(v45);
                          *a4 = v41;
                          return result;
                        }

LABEL_72:
                        __break(1u);
LABEL_73:
                        __break(1u);
LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
                goto LABEL_70;
              }

              v19 = sub_100019C10(100, 0xE100000000000000);
              if ((v20 & 1) == 0)
              {
                goto LABEL_63;
              }

              if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_64;
              }

              if (a2 <= -1.0)
              {
                goto LABEL_65;
              }

              if (a2 >= 1.84467441e19)
              {
                goto LABEL_66;
              }

              if (*(*(v16 + 56) + 8 * v19) > v8)
              {
                if (!*(v16 + 16))
                {
                  goto LABEL_73;
                }

                v21 = sub_100019C10(115, 0xE100000000000000);
                if ((v22 & 1) == 0)
                {
                  goto LABEL_74;
                }

                v23 = *(*(v16 + 56) + 8 * v21);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v14 = sub_100499DDC(0, *(v14 + 2) + 1, 1, v14);
                }

                v25 = *(v14 + 2);
                v24 = *(v14 + 3);
                if (v25 >= v24 >> 1)
                {
                  v14 = sub_100499DDC((v24 > 1), v25 + 1, 1, v14);
                }

                v7 = 0.0;
                v13 = 0;
                *(v14 + 2) = v25 + 1;
                *&v14[8 * v25 + 32] = v23;
                goto LABEL_34;
              }
            }

            v7 = 0.0;
            v13 = 0;
LABEL_34:
            v12 = 1;
            v11 = v15;
            goto LABEL_6;
          }

          v7 = 0.0;
        }

        v13 = 0;
        v12 = 1;
      }

LABEL_6:
      v9 += 2;
      if (!--v5)
      {
        if ((v13 & 1) == 0)
        {
          if (v12)
          {
            v26 = v11;
            Date.timeIntervalSince1970.getter();
            v28 = v27;
            v11 = v26;
          }

          else
          {
            v28 = v7;
          }

          v16 = sub_1005369B8(v11, v28);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_42;
        }

        goto LABEL_56;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
  v14 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_60;
  }

LABEL_57:
  *(&v43 + 1) = 0xEA00000000006F66;
  AnyHashable.init<A>(_:)();
  v44 = sub_10010FC20(&qword_10118CEA0);
  *&v43 = v10;
  sub_100016270(&v43, v42);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *a4;
  sub_10006800C(v42, v45, v37);
  sub_10001621C(v45);
  *a4 = v40;
  if (*(v14 + 2))
  {
    goto LABEL_58;
  }
}

uint64_t sub_1003A09E0(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0.0;
    v5 = a2;
    v6 = (a1 + 40);
    v7 = _swiftEmptyArrayStorage;
    v8 = 0.0;
    v9 = 1;
    v10 = 1;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      v12 = *(v6 - 1);
      if (*v6)
      {
        if ((v10 & 1) == 0)
        {
          v4 = *(v6 - 1);
        }

        v9 &= v10;
        goto LABEL_6;
      }

      if (v10)
      {
        v10 = 0;
        v8 = *(v6 - 1);
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          if (v12 - v4 >= 0.0166666667)
          {
            if (v4 - v8 > 0.0166666667)
            {
              v13 = sub_1005369B8(v8, v4);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_100499EEC(0, v7[2] + 1, 1, v7);
              }

              v15 = v7[2];
              v14 = v7[3];
              if (v15 >= v14 >> 1)
              {
                v7 = sub_100499EEC((v14 > 1), v15 + 1, 1, v7);
              }

              v7[2] = v15 + 1;
              v7[v15 + 4] = v13;
              if (!*(v13 + 16))
              {
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                v7 = sub_100499EEC(0, v7[2] + 1, 1, v7);
LABEL_42:
                v27 = v7[2];
                v26 = v7[3];
                v15 = v27 + 1;
                if (v27 >= v26 >> 1)
                {
                  v7 = sub_100499EEC((v26 > 1), v27 + 1, 1, v7);
                }

                v7[2] = v15;
                v7[v27 + 4] = v13;
                if (*(v13 + 16))
                {
                  v28 = sub_100019C10(100, 0xE100000000000000);
                  if (v29)
                  {
                    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (a2 > -1.0)
                      {
                        if (a2 < 1.84467441e19)
                        {
                          if (*(*(v13 + 56) + 8 * v28) > v5)
                          {
                            if (*(v13 + 16))
                            {
                              v30 = sub_100019C10(115, 0xE100000000000000);
                              if (v31)
                              {
                                v15 = *(*(v13 + 56) + 8 * v30);

                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
                                  goto LABEL_53;
                                }

                                goto LABEL_77;
                              }

LABEL_76:
                              __break(1u);
LABEL_77:
                              v11 = sub_100499DDC(0, *(v11 + 2) + 1, 1, v11);
LABEL_53:
                              v33 = *(v11 + 2);
                              v32 = *(v11 + 3);
                              if (v33 >= v32 >> 1)
                              {
                                v11 = sub_100499DDC((v32 > 1), v33 + 1, 1, v11);
                              }

                              *(v11 + 2) = v33 + 1;
                              *&v11[8 * v33 + 32] = v15;
LABEL_56:
                              if (!v7[2])
                              {
                                goto LABEL_60;
                              }

                              goto LABEL_57;
                            }

LABEL_75:
                            __break(1u);
                            goto LABEL_76;
                          }

                          if (v7[2])
                          {
                            goto LABEL_57;
                          }

LABEL_60:

                          if (!*(v11 + 2))
                          {
                          }

LABEL_58:
                          v35 = 0x6973736572706D69;
                          v36 = 0xEF73656D69546E6FLL;
                          AnyHashable.init<A>(_:)();
                          v37 = sub_10010FC20(&qword_10118CE98);
                          v35 = v11;
                          return sub_1004078C4(&v35, v38);
                        }

LABEL_72:
                        __break(1u);
LABEL_73:
                        __break(1u);
LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
                goto LABEL_70;
              }

              v16 = sub_100019C10(100, 0xE100000000000000);
              if ((v17 & 1) == 0)
              {
                goto LABEL_63;
              }

              if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_64;
              }

              if (a2 <= -1.0)
              {
                goto LABEL_65;
              }

              if (a2 >= 1.84467441e19)
              {
                goto LABEL_66;
              }

              if (*(*(v13 + 56) + 8 * v16) > v5)
              {
                if (!*(v13 + 16))
                {
                  goto LABEL_73;
                }

                v18 = sub_100019C10(115, 0xE100000000000000);
                if ((v19 & 1) == 0)
                {
                  goto LABEL_74;
                }

                v20 = *(*(v13 + 56) + 8 * v18);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v11 = sub_100499DDC(0, *(v11 + 2) + 1, 1, v11);
                }

                v22 = *(v11 + 2);
                v21 = *(v11 + 3);
                if (v22 >= v21 >> 1)
                {
                  v11 = sub_100499DDC((v21 > 1), v22 + 1, 1, v11);
                }

                v4 = 0.0;
                v10 = 0;
                *(v11 + 2) = v22 + 1;
                *&v11[8 * v22 + 32] = v20;
                goto LABEL_34;
              }
            }

            v4 = 0.0;
            v10 = 0;
LABEL_34:
            v9 = 1;
            v8 = v12;
            goto LABEL_6;
          }

          v4 = 0.0;
        }

        v10 = 0;
        v9 = 1;
      }

LABEL_6:
      v6 += 2;
      if (!--v2)
      {
        if ((v10 & 1) == 0)
        {
          if (v9)
          {
            v23 = v8;
            Date.timeIntervalSince1970.getter();
            v25 = v24;
            v8 = v23;
          }

          else
          {
            v25 = v4;
          }

          v13 = sub_1005369B8(v8, v25);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_42;
        }

        goto LABEL_56;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_60;
  }

LABEL_57:
  v36 = 0xEA00000000006F66;
  AnyHashable.init<A>(_:)();
  v37 = sub_10010FC20(&qword_10118CEA0);
  v35 = v7;
  sub_1004078C4(&v35, v38);
  if (*(v11 + 2))
  {
    goto LABEL_58;
  }
}

uint64_t sub_1003A0F90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118D050);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26[-v6];
  v8 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10010FC20(&qword_10118D058);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v26[-v13];
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  sub_1003C16C8(a1, v10, _s10TVEpisodesVMa);
  sub_1003C16C8(v10, v14, _s10TVEpisodesVMa);
  v15 = sub_10003D8C4(&qword_10118D060, _s10TVEpisodesVMa);
  (*(v15 + 48))(v8, v15);
  sub_100020674(&qword_10118D068, &qword_10118D050);
  v16 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v5 + 8))(v7, v4);
  sub_1003C1730(v10, _s10TVEpisodesVMa);
  *&v14[*(v12 + 44)] = v16;
  sub_10010FC20(&unk_10118D070);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(v14);
  sub_1003A38C8();
  sub_1003A454C();
  sub_1003A5634();
  sub_1003C1730(a1, _s10TVEpisodesVMa);
  v17 = *(v2 + 48);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = (v17 + *(*v17 + 120));
  swift_beginAccess();
  v20 = *v19;
  *v19 = sub_1003BC908;
  v19[1] = v18;

  sub_100020438(v20);

  v21 = *(v2 + 48);
  v22 = swift_allocObject();
  swift_weakInit();

  v23 = (v21 + *(*v21 + 128));
  swift_beginAccess();
  v24 = *v23;
  *v23 = sub_1003BC938;
  v23[1] = v22;

  sub_100020438(v24);

  return v2;
}

uint64_t sub_1003A13B8(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v4 = sub_10010FC20(&qword_1011828F8);
  v29 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = _s9PlaylistsVMa(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_10118CE40);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = &_swiftEmptyDictionarySingleton;
  sub_1003C16C8(a1, v13, _s9PlaylistsVMa);
  sub_1003C16C8(v13, v17, _s9PlaylistsVMa);
  type metadata accessor for TitledSection();
  type metadata accessor for Playlist.Folder.Item();
  sub_10003D8C4(&unk_101182930, &type metadata accessor for Playlist.Folder.Item);
  MusicLibrarySectionedRequest.init()();
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  sub_10018E714(v7);
  sub_10018ECCC();
  sub_10018EFFC();
  MusicLibrarySectionedRequest.filterItems(text:)(*&v13[*(v11 + 44)]);
  MusicLibrarySectionedRequest.limit.setter();
  v18 = v29;
  (*(v29 + 32))(v9, v7, v4);
  sub_100020674(&qword_10118CE50, &qword_1011828F8);
  v19 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v18 + 8))(v9, v4);
  sub_1003C1730(v13, _s9PlaylistsVMa);
  *&v17[*(v15 + 44)] = v19;
  sub_10010FC20(&qword_10118CE68);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(v17);
  sub_1003A3AF8();
  sub_1003A47BC();
  sub_1003A58A4();
  sub_1003C1730(v30, _s9PlaylistsVMa);
  v20 = *(v2 + 48);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = (v20 + *(*v20 + 120));
  swift_beginAccess();
  v23 = *v22;
  *v22 = sub_1003BC908;
  v22[1] = v21;

  sub_100020438(v23);

  v24 = *(v2 + 48);
  v25 = swift_allocObject();
  swift_weakInit();

  v26 = (v24 + *(*v24 + 128));
  swift_beginAccess();
  v27 = *v26;
  *v26 = sub_1003BC938;
  v26[1] = v25;

  sub_100020438(v27);

  return v2;
}

uint64_t sub_1003A18B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artist();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_10118CEE8);
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10010FC20(&qword_10118CEF0);
  __chkstk_darwin(v34);
  v16 = &v32 - v15;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = &_swiftEmptyDictionarySingleton;
  v37 = a1;
  v17 = a1;
  v18 = v33;
  sub_1003C16C8(v17, v14, _s11MusicVideosVMa);
  v35 = v16;
  sub_1003C16C8(v14, v16, _s11MusicVideosVMa);
  type metadata accessor for TitledSection();
  type metadata accessor for MusicVideo();
  MusicLibrarySectionedRequest.init()();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(*&v14[v12[8]]);
  sub_1003C16C8(&v14[v12[7]], v8, _s11MusicVideosV5ScopeOMa);
  v19 = v4;
  if ((*(v18 + 48))(v8, 1, v4) != 1)
  {
    v20 = v32;
    (*(v18 + 32))(v32, v8, v19);
    swift_getKeyPath();
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    (*(v18 + 8))(v20, v19);
  }

  sub_1006FDE90();
  sub_1006FF31C(*&v14[v12[9]], v11);
  sub_100020674(&qword_10118CEF8, &qword_10118CEE8);
  v21 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v36 + 8))(v11, v9);
  sub_1003C1730(v14, _s11MusicVideosVMa);
  v22 = v35;
  *&v35[*(v34 + 36)] = v21;
  sub_10010FC20(&qword_10118CF00);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(v22);
  sub_1003A3D20();
  sub_1003A4B5C();
  sub_1003A5C44();
  sub_1003C1730(v37, _s11MusicVideosVMa);
  v23 = *(v2 + 48);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = (v23 + *(*v23 + 120));
  swift_beginAccess();
  v26 = *v25;
  *v25 = sub_1003BC908;
  v25[1] = v24;

  sub_100020438(v26);

  v27 = *(v2 + 48);
  v28 = swift_allocObject();
  swift_weakInit();

  v29 = (v27 + *(*v27 + 128));
  swift_beginAccess();
  v30 = *v29;
  *v29 = sub_1003BC938;
  v29[1] = v28;

  sub_100020438(v30);

  return v2;
}

uint64_t sub_1003A1E94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CE70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26[-v6];
  v8 = _s6AlbumsVMa(0);
  __chkstk_darwin(v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10010FC20(&qword_10118CE78);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v26[-v13];
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = &_swiftEmptyDictionarySingleton;
  sub_1003C16C8(a1, v10, _s6AlbumsVMa);
  sub_1003C16C8(v10, v14, _s6AlbumsVMa);
  v15 = sub_10003D8C4(&qword_10118CE80, _s6AlbumsVMa);
  (*(v15 + 48))(v8, v15);
  sub_100020674(&qword_10118CE88, &qword_10118CE70);
  v16 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v5 + 8))(v7, v4);
  sub_1003C1730(v10, _s6AlbumsVMa);
  *&v14[*(v12 + 44)] = v16;
  sub_10010FC20(&qword_10118CF08);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(v14);
  sub_1003A3F48();
  sub_1003A4FF0();
  sub_1003A60D8();
  sub_1003C1730(a1, _s6AlbumsVMa);
  v17 = *(v2 + 48);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = (v17 + *(*v17 + 120));
  swift_beginAccess();
  v20 = *v19;
  *v19 = sub_1003BC908;
  v19[1] = v18;

  sub_100020438(v20);

  v21 = *(v2 + 48);
  v22 = swift_allocObject();
  swift_weakInit();

  v23 = (v21 + *(*v21 + 128));
  swift_beginAccess();
  v24 = *v23;
  *v23 = sub_1003BC938;
  v23[1] = v22;

  sub_100020438(v24);

  return v2;
}

uint64_t sub_1003A22BC(__int128 *a1)
{
  v2 = v1;
  v24 = sub_10010FC20(&qword_10118B098);
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v24 - v5;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = &_swiftEmptyDictionarySingleton;
  v7 = a1[3];
  v27 = a1[2];
  v28 = v7;
  v29 = a1[4];
  v8 = a1[1];
  v25 = *a1;
  v26 = v8;
  v31[0] = v25;
  v31[3] = v7;
  v31[4] = v29;
  v31[1] = v8;
  v31[2] = v27;
  v9 = sub_1003BEAB8();
  v10 = *(v9 + 48);
  sub_10030DC78(v31, v32);
  v10(&_s7ArtistsVN, v9);
  v32[2] = v27;
  v32[3] = v28;
  v32[4] = v29;
  v32[0] = v25;
  v32[1] = v26;
  sub_10030DCB0(v32);
  sub_100020674(&qword_10118CF18, &qword_10118B098);
  v11 = v24;
  v12 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v4 + 8))(v6, v11);
  v13 = a1[3];
  v27 = a1[2];
  v28 = v13;
  v29 = a1[4];
  v14 = a1[1];
  v25 = *a1;
  v26 = v14;
  v30 = v12;
  sub_10010FC20(&qword_10118CF78);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v25);
  sub_1003A4170();
  sub_1003A524C();
  sub_1003A6334();
  v15 = *(v2 + 48);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = (v15 + *(*v15 + 120));
  swift_beginAccess();
  v18 = *v17;
  *v17 = sub_1003BC908;
  v17[1] = v16;

  sub_100020438(v18);

  v19 = *(v2 + 48);
  v20 = swift_allocObject();
  swift_weakInit();

  v21 = (v19 + *(*v19 + 128));
  swift_beginAccess();
  v22 = *v21;
  *v21 = sub_1003BC938;
  v21[1] = v20;

  sub_100020438(v22);

  return v2;
}

uint64_t sub_1003A2630(__int128 *a1)
{
  v2 = v1;
  v27 = sub_10010FC20(&unk_10118CF80);
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v27 - v5;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = &_swiftEmptyDictionarySingleton;
  v7 = a1[5];
  v32 = a1[4];
  v33 = v7;
  v34 = *(a1 + 12);
  v8 = a1[1];
  v28 = *a1;
  v29 = v8;
  v9 = a1[3];
  v30 = a1[2];
  v31 = v9;
  v36[0] = v28;
  v36[1] = v8;
  v37 = v34;
  v36[4] = v32;
  v36[5] = v7;
  v36[2] = v30;
  v36[3] = v9;
  v10 = sub_1003BF19C();
  v11 = *(v10 + 48);
  sub_100363198(v36, v38);
  v11(&_s9ComposersVN, v10);
  v38[4] = v32;
  v38[5] = v33;
  v39 = v34;
  v38[0] = v28;
  v38[1] = v29;
  v38[2] = v30;
  v38[3] = v31;
  sub_1003BF1F0(v38);
  sub_100020674(&qword_10118CF90, &unk_10118CF80);
  v12 = v27;
  v13 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v4 + 8))(v6, v12);
  v14 = a1[5];
  v32 = a1[4];
  v33 = v14;
  v15 = *(a1 + 12);
  v16 = a1[1];
  v28 = *a1;
  v29 = v16;
  v17 = a1[3];
  v30 = a1[2];
  v31 = v17;
  v34 = v15;
  v35 = v13;
  sub_10010FC20(&qword_10118CF98);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v28);
  sub_10003DD5C(&unk_1010A96A8, sub_1003BF470);
  sub_10003E4A4(&unk_1010A96A8, sub_1003BF378);
  sub_1003A647C(&unk_1010A96A8, sub_1003BF244);
  v18 = *(v2 + 48);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = (v18 + *(*v18 + 120));
  swift_beginAccess();
  v21 = *v20;
  *v20 = sub_1003BC908;
  v20[1] = v19;

  sub_100020438(v21);

  v22 = *(v2 + 48);
  v23 = swift_allocObject();
  swift_weakInit();

  v24 = (v22 + *(*v22 + 128));
  swift_beginAccess();
  v25 = *v24;
  *v24 = sub_1003BC938;
  v24[1] = v23;

  sub_100020438(v25);

  return v2;
}

uint64_t sub_1003A2A04(__int128 *a1)
{
  v2 = v1;
  v27 = sub_10010FC20(&qword_10118CFA0);
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v27 - v5;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = &_swiftEmptyDictionarySingleton;
  v7 = a1[5];
  v32 = a1[4];
  v33 = v7;
  v34 = *(a1 + 12);
  v8 = a1[1];
  v28 = *a1;
  v29 = v8;
  v9 = a1[3];
  v30 = a1[2];
  v31 = v9;
  v36[0] = v28;
  v36[1] = v8;
  v37 = v34;
  v36[4] = v32;
  v36[5] = v7;
  v36[2] = v30;
  v36[3] = v9;
  v10 = sub_1003BF560();
  v11 = *(v10 + 48);
  sub_1003BF504(v36, v38);
  v11(&_s6GenresVN, v10);
  v38[4] = v32;
  v38[5] = v33;
  v39 = v34;
  v38[0] = v28;
  v38[1] = v29;
  v38[2] = v30;
  v38[3] = v31;
  sub_1003BF5B4(v38);
  sub_100020674(&qword_10118CFB0, &qword_10118CFA0);
  v12 = v27;
  v13 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v4 + 8))(v6, v12);
  v14 = a1[5];
  v32 = a1[4];
  v33 = v14;
  v15 = *(a1 + 12);
  v16 = a1[1];
  v28 = *a1;
  v29 = v16;
  v17 = a1[3];
  v30 = a1[2];
  v31 = v17;
  v34 = v15;
  v35 = v13;
  sub_10010FC20(&qword_10118CFB8);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v28);
  sub_10003DD5C(&unk_1010A9770, sub_1003BF834);
  sub_10003E4A4(&unk_1010A9770, sub_1003BF73C);
  sub_1003A647C(&unk_1010A9770, sub_1003BF608);
  v18 = *(v2 + 48);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = (v18 + *(*v18 + 120));
  swift_beginAccess();
  v21 = *v20;
  *v20 = sub_1003BC908;
  v20[1] = v19;

  sub_100020438(v21);

  v22 = *(v2 + 48);
  v23 = swift_allocObject();
  swift_weakInit();

  v24 = (v22 + *(*v22 + 128));
  swift_beginAccess();
  v25 = *v24;
  *v24 = sub_1003BC938;
  v24[1] = v23;

  sub_100020438(v25);

  return v2;
}

uint64_t sub_1003A2DD8(__int128 *a1)
{
  v2 = v1;
  v26 = sub_10010FC20(&qword_101180370);
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v26 - v5;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = &_swiftEmptyDictionarySingleton;
  v7 = a1[3];
  v29 = a1[2];
  v30 = v7;
  v8 = a1[5];
  v31 = a1[4];
  v32 = v8;
  v9 = a1[1];
  v27 = *a1;
  v28 = v9;
  v34[0] = v27;
  v34[1] = v9;
  v34[4] = v31;
  v34[5] = v8;
  v34[2] = v29;
  v34[3] = v7;
  v10 = sub_1003BEDFC();
  v11 = *(v10 + 48);
  sub_1001103E0(v34, v35);
  v11(&_s6MoviesVN, v10);
  v35[2] = v29;
  v35[3] = v30;
  v35[4] = v31;
  v35[5] = v32;
  v35[0] = v27;
  v35[1] = v28;
  sub_100110418(v35);
  sub_100020674(&unk_10118CF68, &qword_101180370);
  v12 = v26;
  v13 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v4 + 8))(v6, v12);
  v14 = a1[3];
  v29 = a1[2];
  v30 = v14;
  v15 = a1[5];
  v31 = a1[4];
  v32 = v15;
  v16 = a1[1];
  v27 = *a1;
  v28 = v16;
  v33 = v13;
  sub_10010FC20(&qword_10118CFD8);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v27);
  sub_1003A42EC();
  sub_1003A539C();
  sub_1003A647C(&unk_1010A95B8, sub_1003BEE50);
  v17 = *(v2 + 48);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = (v17 + *(*v17 + 120));
  swift_beginAccess();
  v20 = *v19;
  *v19 = sub_1003BC908;
  v19[1] = v18;

  sub_100020438(v20);

  v21 = *(v2 + 48);
  v22 = swift_allocObject();
  swift_weakInit();

  v23 = (v21 + *(*v21 + 128));
  swift_beginAccess();
  v24 = *v23;
  *v23 = sub_1003BC938;
  v23[1] = v22;

  sub_100020438(v24);

  return v2;
}

uint64_t sub_1003A3164(__int128 *a1)
{
  v2 = v1;
  v27 = sub_10010FC20(&qword_10118CFC0);
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v27 - v5;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = &_swiftEmptyDictionarySingleton;
  v7 = a1[5];
  v32 = a1[4];
  v33 = v7;
  v34 = *(a1 + 12);
  v8 = a1[1];
  v28 = *a1;
  v29 = v8;
  v9 = a1[3];
  v30 = a1[2];
  v31 = v9;
  v36[0] = v28;
  v36[1] = v8;
  v37 = v34;
  v36[4] = v32;
  v36[5] = v7;
  v36[2] = v30;
  v36[3] = v9;
  v10 = sub_1003BF94C();
  v11 = *(v10 + 48);
  sub_1003BF8F0(v36, v38);
  v11(&_s7TVShowsVN, v10);
  v38[4] = v32;
  v38[5] = v33;
  v39 = v34;
  v38[0] = v28;
  v38[1] = v29;
  v38[2] = v30;
  v38[3] = v31;
  sub_1003BF9A0(v38);
  sub_100020674(&qword_10118CFD0, &qword_10118CFC0);
  v12 = v27;
  v13 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v4 + 8))(v6, v12);
  v14 = a1[5];
  v32 = a1[4];
  v33 = v14;
  v15 = *(a1 + 12);
  v16 = a1[1];
  v28 = *a1;
  v29 = v16;
  v17 = a1[3];
  v30 = a1[2];
  v31 = v17;
  v34 = v15;
  v35 = v13;
  sub_10010FC20(&qword_10118CFE0);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v28);
  sub_10003DD5C(&unk_1010A9838, sub_1003BFC20);
  sub_10003E4A4(&unk_1010A9838, sub_1003BFB28);
  sub_1003A647C(&unk_1010A9838, sub_1003BF9F4);
  v18 = *(v2 + 48);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = (v18 + *(*v18 + 120));
  swift_beginAccess();
  v21 = *v20;
  *v20 = sub_1003BC908;
  v20[1] = v19;

  sub_100020438(v21);

  v22 = *(v2 + 48);
  v23 = swift_allocObject();
  swift_weakInit();

  v24 = (v22 + *(*v22 + 128));
  swift_beginAccess();
  v25 = *v24;
  *v24 = sub_1003BC938;
  v24[1] = v23;

  sub_100020438(v25);

  return v2;
}

uint64_t sub_1003A3538(__int128 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CF20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = &_swiftEmptyDictionarySingleton;
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  LOBYTE(v27) = *(a1 + 64);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v30 = v27;
  v29[2] = v25;
  v29[3] = v8;
  v29[0] = v23;
  v29[1] = v9;
  LOBYTE(v37) = v27;
  v35 = v25;
  v36 = v8;
  v33 = v23;
  v34 = v9;
  v10 = sub_1003BEC68();
  v11 = *(v10 + 48);
  sub_10021817C(v29, v31);
  v11(&_s5SongsVN, v10);
  v31[2] = v25;
  v31[3] = v26;
  v32 = v27;
  v31[0] = v23;
  v31[1] = v24;
  sub_1003BECBC(v31);
  sub_100020674(&unk_10118CF30, &qword_10118CF20);
  v12 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v5 + 8))(v7, v4);
  v25 = v35;
  v26 = v36;
  v23 = v33;
  v24 = v34;
  v27 = v37;
  v28 = v12;
  sub_10010FC20(&qword_10118CFE8);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v23);
  sub_1003A43D0();
  sub_1003A54E4();
  sub_1003A647C(&unk_1010A9568, sub_1003BED10);
  v13 = *(v2 + 48);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = (v13 + *(*v13 + 120));
  swift_beginAccess();
  v16 = *v15;
  *v15 = sub_1003BC908;
  v15[1] = v14;

  sub_100020438(v16);

  v17 = *(v2 + 48);
  v18 = swift_allocObject();
  swift_weakInit();

  v19 = (v17 + *(*v17 + 128));
  swift_beginAccess();
  v20 = *v19;
  *v19 = sub_1003BC938;
  v19[1] = v18;

  sub_100020438(v20);

  return v2;
}

void sub_1003A38C8()
{
  v1 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1003C03AC;
  v4 = sub_10003DE24(&unk_1010A99F0, sub_1003C03AC);
  v5 = *(v0 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v3, _s10TVEpisodesVMa);
  v7 = *&v3[*(v1 + 56)];

  sub_1003C1730(v3, _s10TVEpisodesVMa);
  v8 = *(v7 + 16);

  [(objc_class *)v4 setHidden:v8 == 0];

  v9 = v1;
  v10 = sub_10003DE24(&unk_1010A99F0, v16);
  sub_1003C16C8(v5 + v6, v3, _s10TVEpisodesVMa);
  v11 = *&v3[*(v1 + 48)];

  sub_1003C1730(v3, _s10TVEpisodesVMa);
  v12 = *(v11 + 16);

  if (v12)
  {
    sub_1003C16C8(v5 + v6, v3, _s10TVEpisodesVMa);
    v13 = *&v3[*(v9 + 56)];

    sub_1003C1730(v3, _s10TVEpisodesVMa);
    v14 = *(v13 + 16);

    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  [(objc_class *)v10 setSelected:v15];
}

void sub_1003A3AF8()
{
  v1 = _s9PlaylistsVMa(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1003BC6C4;
  v5 = sub_10003DE24(&unk_1010A9040, sub_1003BC6C4);
  v6 = *(v0 + 48);
  v7 = *(*v6 + 96);
  swift_beginAccess();
  sub_1003C16C8(v6 + v7, v4, _s9PlaylistsVMa);
  v8 = sub_10018F5B8();
  sub_1003C1730(v4, _s9PlaylistsVMa);
  v9 = v8[2];

  [(objc_class *)v5 setHidden:v9 == 0];

  v10 = sub_10003DE24(&unk_1010A9040, v16);
  sub_1003C16C8(v6 + v7, v4, _s9PlaylistsVMa);
  v11 = *&v4[*(v2 + 48)];

  sub_1003C1730(v4, _s9PlaylistsVMa);
  v12 = *(v11 + 16);

  if (v12)
  {
    sub_1003C16C8(v6 + v7, v4, _s9PlaylistsVMa);
    v13 = sub_10018F5B8();
    sub_1003C1730(v4, _s9PlaylistsVMa);
    v14 = v13[2];

    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  [(objc_class *)v10 setSelected:v15];
}

void sub_1003A3D20()
{
  v1 = _s11MusicVideosVMa(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1003BE9E0;
  v5 = sub_10003DE24(&unk_1010A93B0, sub_1003BE9E0);
  v6 = *(v0 + 48);
  v7 = *(*v6 + 96);
  swift_beginAccess();
  sub_1003C16C8(v6 + v7, v4, _s11MusicVideosVMa);
  v8 = sub_1006FE4C0();
  sub_1003C1730(v4, _s11MusicVideosVMa);
  v9 = v8[2];

  [(objc_class *)v5 setHidden:v9 == 0];

  v10 = sub_10003DE24(&unk_1010A93B0, v16);
  sub_1003C16C8(v6 + v7, v4, _s11MusicVideosVMa);
  v11 = *&v4[*(v2 + 44)];

  sub_1003C1730(v4, _s11MusicVideosVMa);
  v12 = *(v11 + 16);

  if (v12)
  {
    sub_1003C16C8(v6 + v7, v4, _s11MusicVideosVMa);
    v13 = sub_1006FE4C0();
    sub_1003C1730(v4, _s11MusicVideosVMa);
    v14 = v13[2];

    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  [(objc_class *)v10 setSelected:v15];
}

void sub_1003A3F48()
{
  v1 = _s6AlbumsVMa(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1003BCB70;
  v5 = sub_10003DE24(&unk_1010A9158, sub_1003BCB70);
  v6 = *(v0 + 48);
  v7 = *(*v6 + 96);
  swift_beginAccess();
  sub_1003C16C8(v6 + v7, v4, _s6AlbumsVMa);
  v8 = sub_10028AAFC();
  sub_1003C1730(v4, _s6AlbumsVMa);
  v9 = v8[2];

  [(objc_class *)v5 setHidden:v9 == 0];

  v10 = sub_10003DE24(&unk_1010A9158, v16);
  sub_1003C16C8(v6 + v7, v4, _s6AlbumsVMa);
  v11 = *&v4[*(v2 + 40)];

  sub_1003C1730(v4, _s6AlbumsVMa);
  v12 = *(v11 + 16);

  if (v12)
  {
    sub_1003C16C8(v6 + v7, v4, _s6AlbumsVMa);
    v13 = sub_10028AAFC();
    sub_1003C1730(v4, _s6AlbumsVMa);
    v14 = v13[2];

    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  [(objc_class *)v10 setSelected:v15];
}

void sub_1003A4170()
{
  v1 = sub_10003DE24(&unk_1010A94C8, sub_1003BEBE8);
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = *(v2 + 48);
  v16[1] = *(v2 + 32);
  v16[2] = v3;
  v4 = *(v2 + 80);
  v16[3] = *(v2 + 64);
  v16[4] = v4;
  v16[0] = *(v2 + 16);
  sub_10030DC78(v16, v15);
  v5 = sub_10030D078();
  sub_10030DCB0(v16);
  v6 = v5[2];

  [(objc_class *)v1 setHidden:v6 == 0];

  v7 = sub_10003DE24(&unk_1010A94C8, sub_1003BEBE8);
  if (*(*(v2 + 56) + 16))
  {
    v8 = *(v2 + 48);
    v15[1] = *(v2 + 32);
    v9 = *(v2 + 64);
    v10 = *(v2 + 80);
    v15[2] = v8;
    v15[3] = v9;
    v15[4] = v10;
    v15[0] = *(v2 + 16);
    sub_10030DC78(v15, v14);
    v11 = sub_10030D078();
    sub_10030DCB0(v15);
    v12 = v11[2];

    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  [(objc_class *)v7 setSelected:v13];
}

void sub_1003A42EC()
{
  v1 = sub_10003DE24(&unk_1010A95B8, sub_1003BF024);
  v2 = *(v0 + 48);
  swift_beginAccess();
  [(objc_class *)v1 setHidden:*(*(v2 + 104) + 16) == 0];

  v3 = sub_10003DE24(&unk_1010A95B8, sub_1003BF024);
  v4 = v3;
  if (*(*(v2 + 80) + 16))
  {
    v5 = *(*(v2 + 104) + 16) != 0;
  }

  else
  {
    v5 = 0;
  }

  [(objc_class *)v3 setSelected:v5];
}

void sub_1003A43D0()
{
  v1 = sub_10003DE24(&unk_1010A9568, sub_1003BEDEC);
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = *(v2 + 48);
  v14[1] = *(v2 + 32);
  v14[2] = v3;
  v14[3] = *(v2 + 64);
  v15 = *(v2 + 80);
  v14[0] = *(v2 + 16);
  sub_10021817C(v14, v12);
  v4 = sub_1007B9600();
  sub_1003BECBC(v14);
  v5 = v4[2];

  [(objc_class *)v1 setHidden:v5 == 0];

  v6 = sub_10003DE24(&unk_1010A9568, sub_1003BEDEC);
  if (*(*(v2 + 48) + 16))
  {
    v7 = *(v2 + 48);
    v12[1] = *(v2 + 32);
    v12[2] = v7;
    v12[3] = *(v2 + 64);
    v13 = *(v2 + 80);
    v12[0] = *(v2 + 16);
    sub_10021817C(v12, &v11);
    v8 = sub_1007B9600();
    sub_1003BECBC(v12);
    v9 = v8[2];

    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  [(objc_class *)v6 setSelected:v10];
}

uint64_t sub_1003A454C()
{
  v1 = v0;
  v2 = _s10TVEpisodesVMa(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21[-1] - v6;
  v8 = *(v1 + 48);
  v9 = *(*v8 + 96);
  swift_beginAccess();
  sub_1003C16C8(v8 + v9, v7, _s10TVEpisodesVMa);
  v10 = &v7[*(v2 + 52)];
  v12 = *v10;
  v11 = *(v10 + 1);

  sub_1003C1730(v7, _s10TVEpisodesVMa);

  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_100009F78(0, &qword_10118CE58);
    sub_1003C16C8(v8 + v9, v5, _s10TVEpisodesVMa);
    v14 = &v5[*(v2 + 52)];
    v15 = *v14;
    v16 = *(v14 + 1);

    sub_1003C1730(v5, _s10TVEpisodesVMa);
    v21[0] = v15;
    v21[1] = v16;
    v17 = swift_allocObject();
    swift_weakInit();
    sub_100009838();

    v18 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v21, 0, 0, sub_1003C026C, v17, &type metadata for String);
  }

  else
  {
    v18 = 0;
  }

  *(v1 + 72) = v18;
}

uint64_t sub_1003A47BC()
{
  v1 = _s9PlaylistsVMa(0);
  v2 = __chkstk_darwin(v1);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  v33 = v0;
  v6 = *(v0 + 48);
  v7 = *(*v6 + 96);
  swift_beginAccess();
  sub_1003C16C8(v6 + v7, v5, _s9PlaylistsVMa);
  v31 = v1;
  v8 = *(v1 + 32);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v9 = _s9PlaylistsV5ScopeVMa(0);
  v10 = sub_1000060E4(v9, qword_101218730);
  v11 = sub_1001982EC(&v5[v8], v10);
  if (v11)
  {
    v12 = 0xD000000000000011;
  }

  else
  {
    v12 = 0xD000000000000010;
  }

  if (v11)
  {
    v13 = "LibraryPlaylists";
  }

  else
  {
    v13 = "v32@0:8@16@24";
  }

  v34 = v12;
  v35 = v13 | 0x8000000000000000;

  v14._countAndFlagsBits = 0x704F7265746C6946;
  v14._object = 0xEC0000006E6F6974;
  String.append(_:)(v14);

  v16 = v34;
  v15 = v35;
  sub_1003C1730(v5, _s9PlaylistsVMa);

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = v32;
    sub_1003C16C8(v6 + v7, v32, _s9PlaylistsVMa);
    v19 = sub_1001982EC((v18 + *(v31 + 32)), v10);
    if (v19)
    {
      v20 = 0xD000000000000011;
    }

    else
    {
      v20 = 0xD000000000000010;
    }

    if (v19)
    {
      v21 = "LibraryPlaylists";
    }

    else
    {
      v21 = "v32@0:8@16@24";
    }

    v22 = v21 | 0x8000000000000000;
    sub_100009F78(0, &qword_10118CE58);
    v34 = v20;
    v35 = v22;

    v23._countAndFlagsBits = 0x704F7265746C6946;
    v23._object = 0xEC0000006E6F6974;
    String.append(_:)(v23);

    v24 = v34;
    v25 = v35;
    sub_1003C1730(v18, _s9PlaylistsVMa);
    v34 = v24;
    v35 = v25;
    v26 = swift_allocObject();
    v27 = v33;
    swift_weakInit();
    sub_100009838();

    v28 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v34, 0, 0, sub_1003BC810, v26, &type metadata for String);
  }

  else
  {
    v28 = 0;
    v27 = v33;
  }

  *(v27 + 72) = v28;
}

uint64_t sub_1003A4B5C()
{
  v1 = _s11MusicVideosV5ScopeOMa(0);
  v2 = __chkstk_darwin(v1 - 8);
  v38 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v36 - v4;
  v6 = _s11MusicVideosVMa(0);
  v7 = __chkstk_darwin(v6);
  v39 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v36 - v9;
  v40 = v0;
  v11 = *(v0 + 48);
  v12 = *(*v11 + 96);
  swift_beginAccess();
  sub_1003C16C8(v11 + v12, v10, _s11MusicVideosVMa);
  sub_1003C16C8(&v10[*(v6 + 28)], v5, _s11MusicVideosV5ScopeOMa);
  v13 = type metadata accessor for Artist();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v36[1] = v14 + 48;
  v37 = v15;
  v16 = v15(v5, 1, v13);
  v17 = "impressionParentId";
  v18 = 0xD000000000000012;
  v19 = "impressionParentId";
  if (v16 != 1)
  {
    sub_1003C1730(v5, _s11MusicVideosV5ScopeOMa);
    v19 = "LibraryArtistDetail";
    v18 = 0xD000000000000013;
  }

  v41 = v18;
  v42 = v19 | 0x8000000000000000;

  v20._countAndFlagsBits = 0x704F7265746C6946;
  v20._object = 0xEC0000006E6F6974;
  String.append(_:)(v20);

  v22 = v41;
  v21 = v42;
  sub_1003C1730(v10, _s11MusicVideosVMa);

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = v11 + v12;
    v25 = v39;
    sub_1003C16C8(v24, v39, _s11MusicVideosVMa);
    v26 = v25 + *(v6 + 28);
    v27 = v38;
    sub_1003C16C8(v26, v38, _s11MusicVideosV5ScopeOMa);
    v28 = 0xD000000000000012;
    if (v37(v27, 1, v13) != 1)
    {
      sub_1003C1730(v27, _s11MusicVideosV5ScopeOMa);
      v17 = "LibraryArtistDetail";
      v28 = 0xD000000000000013;
    }

    sub_100009F78(0, &qword_10118CE58);
    v41 = v28;
    v42 = v17 | 0x8000000000000000;

    v29._countAndFlagsBits = 0x704F7265746C6946;
    v29._object = 0xEC0000006E6F6974;
    String.append(_:)(v29);

    v30 = v41;
    v31 = v42;
    sub_1003C1730(v25, _s11MusicVideosVMa);
    v41 = v30;
    v42 = v31;
    v32 = swift_allocObject();
    v33 = v40;
    swift_weakInit();
    sub_100009838();

    v34 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v41, 0, 0, sub_1003BE8E8, v32, &type metadata for String);
  }

  else
  {
    v34 = 0;
    v33 = v40;
  }

  *(v33 + 72) = v34;
}

uint64_t sub_1003A4FF0()
{
  v1 = v0;
  v2 = _s6AlbumsVMa(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21[-1] - v6;
  v8 = *(v1 + 48);
  v9 = *(*v8 + 96);
  swift_beginAccess();
  sub_1003C16C8(v8 + v9, v7, _s6AlbumsVMa);
  v10 = sub_10028A59C();
  v12 = v11;
  sub_1003C1730(v7, _s6AlbumsVMa);

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_100009F78(0, &qword_10118CE58);
    sub_1003C16C8(v8 + v9, v5, _s6AlbumsVMa);
    v14 = sub_10028A59C();
    v16 = v15;
    sub_1003C1730(v5, _s6AlbumsVMa);
    v21[0] = v14;
    v21[1] = v16;
    v17 = swift_allocObject();
    swift_weakInit();
    sub_100009838();

    v18 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v21, 0, 0, sub_1003BCA78, v17, &type metadata for String);
  }

  else
  {
    v18 = 0;
  }

  *(v1 + 72) = v18;
}

uint64_t sub_1003A524C()
{
  v1 = v0;
  if (("tonWrapper.swift" & 0x2F00000000000000) == 0x2000000000000000)
  {
    *(v0 + 72) = 0;
  }

  else
  {
    sub_100009F78(0, &qword_10118CE58);
    v5[0] = 0xD000000000000013;
    v5[1] = 0x8000000100E46370;
    v3 = swift_allocObject();
    swift_weakInit();
    sub_100009838();

    v4 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v5, 0, 0, sub_1003BF0A4, v3, &type metadata for String);

    *(v1 + 72) = v4;
  }
}

uint64_t sub_1003A539C()
{
  v1 = v0;
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_100009F78(0, &qword_10118CE58);
    v9[0] = v3;
    v9[1] = v4;
    v6 = swift_allocObject();
    swift_weakInit();
    sub_100009838();

    v7 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v9, 0, 0, sub_1003BEF2C, v6, &type metadata for String);
  }

  else
  {
    v7 = 0;
  }

  *(v1 + 72) = v7;
}

uint64_t sub_1003A54E4()
{
  v1 = v0;
  if (("LibraryMusicVideos" & 0x2F00000000000000) == 0x2000000000000000)
  {
    *(v0 + 72) = 0;
  }

  else
  {
    sub_100009F78(0, &qword_10118CE58);
    v5[0] = 0xD000000000000011;
    v5[1] = 0x8000000100E484E0;
    v3 = swift_allocObject();
    swift_weakInit();
    sub_100009838();

    v4 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v5, 0, 0, sub_1003BFCB4, v3, &type metadata for String);

    *(v1 + 72) = v4;
  }
}

uint64_t sub_1003A5634()
{
  v1 = v0;
  v2 = _s10TVEpisodesVMa(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21[-1] - v6;
  v8 = *(v1 + 48);
  v9 = *(*v8 + 96);
  swift_beginAccess();
  sub_1003C16C8(v8 + v9, v7, _s10TVEpisodesVMa);
  v10 = &v7[*(v2 + 40)];
  v12 = *v10;
  v11 = *(v10 + 1);

  sub_1003C1730(v7, _s10TVEpisodesVMa);

  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_100009F78(0, &qword_10118CE58);
    sub_1003C16C8(v8 + v9, v5, _s10TVEpisodesVMa);
    v14 = &v5[*(v2 + 40)];
    v15 = *v14;
    v16 = *(v14 + 1);

    sub_1003C1730(v5, _s10TVEpisodesVMa);
    v21[0] = v15;
    v21[1] = v16;
    v17 = swift_allocObject();
    swift_weakInit();
    sub_100009838();

    v18 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v21, 0, 0, sub_1003C0150, v17, &type metadata for String);
  }

  else
  {
    v18 = 0;
  }

  *(v1 + 80) = v18;
}

uint64_t sub_1003A58A4()
{
  v1 = _s9PlaylistsVMa(0);
  v2 = __chkstk_darwin(v1);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  v33 = v0;
  v6 = *(v0 + 48);
  v7 = *(*v6 + 96);
  swift_beginAccess();
  sub_1003C16C8(v6 + v7, v5, _s9PlaylistsVMa);
  v31 = v1;
  v8 = *(v1 + 32);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v9 = _s9PlaylistsV5ScopeVMa(0);
  v10 = sub_1000060E4(v9, qword_101218730);
  v11 = sub_1001982EC(&v5[v8], v10);
  if (v11)
  {
    v12 = 0xD000000000000011;
  }

  else
  {
    v12 = 0xD000000000000010;
  }

  if (v11)
  {
    v13 = "LibraryPlaylists";
  }

  else
  {
    v13 = "v32@0:8@16@24";
  }

  v34 = v12;
  v35 = v13 | 0x8000000000000000;

  v14._countAndFlagsBits = 0x53746E65746E6F43;
  v14._object = 0xEB0000000074726FLL;
  String.append(_:)(v14);

  v16 = v34;
  v15 = v35;
  sub_1003C1730(v5, _s9PlaylistsVMa);

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = v32;
    sub_1003C16C8(v6 + v7, v32, _s9PlaylistsVMa);
    v19 = sub_1001982EC((v18 + *(v31 + 32)), v10);
    if (v19)
    {
      v20 = 0xD000000000000011;
    }

    else
    {
      v20 = 0xD000000000000010;
    }

    if (v19)
    {
      v21 = "LibraryPlaylists";
    }

    else
    {
      v21 = "v32@0:8@16@24";
    }

    v22 = v21 | 0x8000000000000000;
    sub_100009F78(0, &qword_10118CE58);
    v34 = v20;
    v35 = v22;

    v23._countAndFlagsBits = 0x53746E65746E6F43;
    v23._object = 0xEB0000000074726FLL;
    String.append(_:)(v23);

    v24 = v34;
    v25 = v35;
    sub_1003C1730(v18, _s9PlaylistsVMa);
    v34 = v24;
    v35 = v25;
    v26 = swift_allocObject();
    v27 = v33;
    swift_weakInit();
    sub_100009838();

    v28 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v34, 0, 0, sub_1003BC734, v26, &type metadata for String);
  }

  else
  {
    v28 = 0;
    v27 = v33;
  }

  *(v27 + 80) = v28;
}

uint64_t sub_1003A5C44()
{
  v1 = _s11MusicVideosV5ScopeOMa(0);
  v2 = __chkstk_darwin(v1 - 8);
  v38 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v36 - v4;
  v6 = _s11MusicVideosVMa(0);
  v7 = __chkstk_darwin(v6);
  v39 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v36 - v9;
  v40 = v0;
  v11 = *(v0 + 48);
  v12 = *(*v11 + 96);
  swift_beginAccess();
  sub_1003C16C8(v11 + v12, v10, _s11MusicVideosVMa);
  sub_1003C16C8(&v10[*(v6 + 28)], v5, _s11MusicVideosV5ScopeOMa);
  v13 = type metadata accessor for Artist();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v36[1] = v14 + 48;
  v37 = v15;
  v16 = v15(v5, 1, v13);
  v17 = "impressionParentId";
  v18 = 0xD000000000000012;
  v19 = "impressionParentId";
  if (v16 != 1)
  {
    sub_1003C1730(v5, _s11MusicVideosV5ScopeOMa);
    v19 = "LibraryArtistDetail";
    v18 = 0xD000000000000013;
  }

  v41 = v18;
  v42 = v19 | 0x8000000000000000;

  v20._countAndFlagsBits = 0x53746E65746E6F43;
  v20._object = 0xEB0000000074726FLL;
  String.append(_:)(v20);

  v22 = v41;
  v21 = v42;
  sub_1003C1730(v10, _s11MusicVideosVMa);

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = v11 + v12;
    v25 = v39;
    sub_1003C16C8(v24, v39, _s11MusicVideosVMa);
    v26 = v25 + *(v6 + 28);
    v27 = v38;
    sub_1003C16C8(v26, v38, _s11MusicVideosV5ScopeOMa);
    v28 = 0xD000000000000012;
    if (v37(v27, 1, v13) != 1)
    {
      sub_1003C1730(v27, _s11MusicVideosV5ScopeOMa);
      v17 = "LibraryArtistDetail";
      v28 = 0xD000000000000013;
    }

    sub_100009F78(0, &qword_10118CE58);
    v41 = v28;
    v42 = v17 | 0x8000000000000000;

    v29._countAndFlagsBits = 0x53746E65746E6F43;
    v29._object = 0xEB0000000074726FLL;
    String.append(_:)(v29);

    v30 = v41;
    v31 = v42;
    sub_1003C1730(v25, _s11MusicVideosVMa);
    v41 = v30;
    v42 = v31;
    v32 = swift_allocObject();
    v33 = v40;
    swift_weakInit();
    sub_100009838();

    v34 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v41, 0, 0, sub_1003BE80C, v32, &type metadata for String);
  }

  else
  {
    v34 = 0;
    v33 = v40;
  }

  *(v33 + 80) = v34;
}

uint64_t sub_1003A60D8()
{
  v1 = v0;
  v2 = _s6AlbumsVMa(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21[-1] - v6;
  v8 = *(v1 + 48);
  v9 = *(*v8 + 96);
  swift_beginAccess();
  sub_1003C16C8(v8 + v9, v7, _s6AlbumsVMa);
  v10 = sub_100288A9C();
  v12 = v11;
  sub_1003C1730(v7, _s6AlbumsVMa);

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_100009F78(0, &qword_10118CE58);
    sub_1003C16C8(v8 + v9, v5, _s6AlbumsVMa);
    v14 = sub_100288A9C();
    v16 = v15;
    sub_1003C1730(v5, _s6AlbumsVMa);
    v21[0] = v14;
    v21[1] = v16;
    v17 = swift_allocObject();
    swift_weakInit();
    sub_100009838();

    v18 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v21, 0, 0, sub_1003BC99C, v17, &type metadata for String);
  }

  else
  {
    v18 = 0;
  }

  *(v1 + 80) = v18;
}

uint64_t sub_1003A6334()
{
  v1 = v0;
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_100009F78(0, &qword_10118CE58);
    v9[0] = v3;
    v9[1] = v4;
    v6 = swift_allocObject();
    swift_weakInit();
    sub_100009838();

    v7 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v9, 0, 0, sub_1003BEB0C, v6, &type metadata for String);
  }

  else
  {
    v7 = 0;
  }

  *(v1 + 80) = v7;
}

uint64_t sub_1003A647C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(v2 + 48);
  swift_beginAccess();
  v7 = *(v5 + 64);
  v6 = *(v5 + 72);
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_100009F78(0, &qword_10118CE58);
    v12[0] = v7;
    v12[1] = v6;
    v9 = swift_allocObject();
    swift_weakInit();
    sub_100009838();

    v10 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v12, 0, 0, a2, v9, &type metadata for String);
  }

  else
  {
    v10 = 0;
  }

  *(v4 + 80) = v10;
}

uint64_t sub_1003A65B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t (*a6)(void (*)(uint64_t, uint64_t (*)(void), uint64_t), uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a3();
  }

  v11 = *(Strong + 16);
  if (v11)
  {
    v12 = *(Strong + 24);

    v11(a2, a3, a4);

    return a6(v11, v12);
  }

  else
  {
    a3();
  }
}

uint64_t sub_1003A6694(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void (*)(uint64_t), uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_10010C0FC(_swiftEmptyArrayStorage);
    swift_beginAccess();
    v7[11] = v8;

    v9 = v7[4];
    if (v9)
    {
      v10 = v7[5];

      v9(a2);
      a4(v9, v10);
    }
  }

  return result;
}

uint64_t sub_1003A67E4(uint64_t a1)
{
  v2 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = 1;
    v6 = *(result + 48);
    v7 = *(*v6 + 96);
    v8 = result;
    swift_beginAccess();
    sub_1003C16C8(v6 + v7, v4, _s10TVEpisodesVMa);
    v9 = *(v2 + 48);

    *&v4[v9] = a1;
    sub_10037745C(v4);
    *(v8 + 64) = 0;
  }

  return result;
}

uint64_t sub_1003A6918(uint64_t a1)
{
  v2 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = 1;
    v6 = *(result + 48);
    v7 = *(*v6 + 96);
    v8 = result;
    swift_beginAccess();
    sub_1003C16C8(v6 + v7, v4, _s9PlaylistsVMa);
    v9 = *(v2 + 40);
    v10 = *&v4[v9];
    *&v4[v9] = a1;

    sub_10018F6EC(v10);

    sub_1003777F4(v4);
    *(v8 + 64) = 0;
  }

  return result;
}

uint64_t sub_1003A6A54(uint64_t a1)
{
  v2 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = 1;
    v6 = *(result + 48);
    v7 = *(*v6 + 96);
    v8 = result;
    swift_beginAccess();
    sub_1003C16C8(v6 + v7, v4, _s11MusicVideosVMa);
    v9 = *(v2 + 36);
    v10 = *&v4[v9];
    *&v4[v9] = a1;

    sub_1006FE6C4(v10);

    sub_100377E84(v4);
    *(v8 + 64) = 0;
  }

  return result;
}

uint64_t sub_1003A6B90(uint64_t a1)
{
  v2 = _s6AlbumsVMa(0);
  __chkstk_darwin(v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    *(result + 64) = 1;
    v7 = *(result + 48);
    v8 = *(*v7 + 96);
    swift_beginAccess();
    sub_1003C16C8(v7 + v8, v4, _s6AlbumsVMa);
    v9 = *(v2 + 32);
    v10 = *&v4[v9];
    *&v4[v9] = a1;

    if ((sub_10018FCA0(v11, v10) & 1) == 0)
    {
      v12 = [objc_opt_self() standardUserDefaults];
      v13[3] = sub_10010FC20(&unk_10118CD70);
      v13[4] = sub_100178DD8(&unk_101182910, sub_100178D84);
      v13[5] = sub_100178DD8(&unk_101182920, sub_100178E50);
      v13[0] = a1;

      sub_10028A59C();
      NSUserDefaults.encodeValue(_:forKey:)(v13);

      sub_10000959C(v13);
    }

    sub_100378808(v4);
    *(v6 + 64) = 0;
  }

  return result;
}

uint64_t sub_1003A6DC0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    *(result + 64) = 1;
    v4 = *(result + 48);
    swift_beginAccess();
    v5 = v4[3];
    v16[1] = v4[2];
    v6 = v4[5];
    v18 = v4[4];
    v19 = v6;
    v17 = v5;
    v7 = v4[2];
    v16[0] = v4[1];
    v8 = *(&v17 + 1);
    v13 = v4[1];
    v14 = v7;
    v15 = *(v4 + 6);
    v11 = v4[4];
    v12 = v4[5];
    sub_10030DC78(v16, &v20);

    if ((sub_10018FCA0(v9, v8) & 1) == 0)
    {
      v10 = [objc_opt_self() standardUserDefaults];
      *(&v21 + 1) = sub_10010FC20(&unk_10118CD70);
      v22 = sub_100178DD8(&unk_101182910, sub_100178D84);
      v23 = sub_100178DD8(&unk_101182920, sub_100178E50);
      *&v20 = a1;

      NSUserDefaults.encodeValue(_:forKey:)(&v20);

      sub_10000959C(&v20);
    }

    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = a1;
    v24 = v11;
    v25 = v12;
    sub_100378C30(&v20);
    *(v3 + 64) = 0;
  }

  return result;
}

uint64_t sub_1003A6FC0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    *(result + 64) = 1;
    v4 = *(result + 48);
    swift_beginAccess();
    v5 = *(v4 + 48);
    v6 = *(v4 + 64);
    v7 = *(v4 + 96);
    v15[4] = *(v4 + 80);
    v8 = *(v4 + 16);
    v9 = *(v4 + 32);
    v15[5] = v7;
    v15[2] = v5;
    v15[3] = v6;
    v15[1] = v9;
    v15[0] = v8;
    v10 = *(v4 + 16);
    v11 = *(v4 + 32);
    v12 = *(v4 + 64);
    v16[2] = *(v4 + 48);
    v16[3] = v12;
    v16[0] = v10;
    v16[1] = v11;
    v13 = *(v4 + 88);
    v19 = *(v4 + 104);
    v18 = v13;
    sub_1001103E0(v15, v14);

    v17 = a1;
    sub_100379614(v16);
    *(v3 + 64) = 0;
  }

  return result;
}

uint64_t sub_1003A70BC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    *(result + 64) = 1;
    v4 = *(result + 48);
    swift_beginAccess();
    v5 = *(v4 + 48);
    v13[1] = *(v4 + 32);
    v13[2] = v5;
    v6 = *(v4 + 64);
    v14 = *(v4 + 80);
    v13[3] = v6;
    v12 = *(v4 + 32);
    v13[0] = *(v4 + 16);
    v7 = v5;
    v11 = *(v4 + 16);
    *&v10[9] = *(v4 + 65);
    *v10 = *(v4 + 56);
    sub_10021817C(v13, &v15);

    if ((sub_10018FCA0(v8, v7) & 1) == 0)
    {
      v9 = [objc_opt_self() standardUserDefaults];
      *(&v16 + 1) = sub_10010FC20(&unk_10118CD70);
      v17 = sub_100178DD8(&unk_101182910, sub_100178D84);
      *&v18[0] = sub_100178DD8(&unk_101182920, sub_100178E50);
      *&v15 = a1;

      NSUserDefaults.encodeValue(_:forKey:)(&v15);

      sub_10000959C(&v15);
    }

    v15 = v11;
    v16 = v12;
    v17 = a1;
    v18[0] = *v10;
    *(v18 + 9) = *&v10[9];
    sub_100379CC8(&v15);
    *(v3 + 64) = 0;
  }

  return result;
}

uint64_t sub_1003A72C4(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t *), void (*a4)(_OWORD *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = 1;
    v8 = *(result + 48);
    v9 = result;
    swift_beginAccess();
    v10 = *(v8 + 64);
    v20[4] = *(v8 + 80);
    v11 = *(v8 + 16);
    v12 = *(v8 + 32);
    v13 = *(v8 + 48);
    v20[5] = *(v8 + 96);
    v21 = *(v8 + 112);
    v20[2] = v13;
    v20[3] = v10;
    v20[0] = v11;
    v20[1] = v12;
    v14 = *(v8 + 16);
    v15 = *(v8 + 32);
    v16 = *(v8 + 48);
    v17 = *(v8 + 64);
    v23 = *(v8 + 80);
    v22[2] = v16;
    v22[3] = v17;
    v22[0] = v14;
    v22[1] = v15;
    v18 = *(v8 + 96);
    v26 = *(v8 + 112);
    v25 = v18;
    a3(v20, &v19);

    v24 = a1;
    a4(v22);
    *(v9 + 64) = 0;
  }

  return result;
}

void *sub_1003A73E8()
{
  v0 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = *(Strong + 48);
  v5 = *(*v4 + 96);
  swift_beginAccess();
  sub_1003C16C8(v4 + v5, v2, _s10TVEpisodesVMa);
  v6 = swift_allocObject();
  swift_weakInit();

  v7.super.super.isa = sub_100396FDC(sub_1003C03B4, v6).super.super.isa;

  sub_1003C1730(v2, _s10TVEpisodesVMa);

  if (!v7.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = [(objc_class *)v7.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

void *sub_1003A75AC()
{
  v0 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = *(Strong + 48);
  v5 = *(*v4 + 96);
  swift_beginAccess();
  sub_1003C16C8(v4 + v5, v2, _s9PlaylistsVMa);
  v6 = swift_allocObject();
  swift_weakInit();

  v7 = sub_1003972A8(sub_1003BC6CC, v6);

  sub_1003C1730(v2, _s9PlaylistsVMa);

  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = [(objc_class *)v7 children];
  sub_100009F78(0, &qword_10118CDE0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

void *sub_1003A7770()
{
  v0 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = *(Strong + 48);
  v5 = *(*v4 + 96);
  swift_beginAccess();
  sub_1003C16C8(v4 + v5, v2, _s11MusicVideosVMa);
  v6 = swift_allocObject();
  swift_weakInit();

  v7.super.super.isa = sub_1003977C4(sub_1003BE9E8, v6).super.super.isa;

  sub_1003C1730(v2, _s11MusicVideosVMa);

  if (!v7.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = [(objc_class *)v7.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

void *sub_1003A7934()
{
  v0 = _s6AlbumsVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = *(Strong + 48);
  v5 = *(*v4 + 96);
  swift_beginAccess();
  sub_1003C16C8(v4 + v5, v2, _s6AlbumsVMa);
  v6 = swift_allocObject();
  swift_weakInit();

  v7 = sub_100397C74(sub_1003BCB78, v6);

  sub_1003C1730(v2, _s6AlbumsVMa);

  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = [(objc_class *)v7 children];
  sub_100009F78(0, &qword_10118CDE0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

void *sub_1003A7AF8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(Strong + 48);
  swift_beginAccess();
  v2 = v1[3];
  v10[1] = v1[2];
  v10[2] = v2;
  v3 = v1[5];
  v10[3] = v1[4];
  v10[4] = v3;
  v10[0] = v1[1];
  v4 = swift_allocObject();
  swift_weakInit();

  sub_10030DC78(v10, &v9);
  v5.super.super.isa = sub_100398190(sub_1003BEBF0, v4).super.super.isa;

  sub_10030DCB0(v10);

  if (!v5.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = [(objc_class *)v5.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

void *sub_1003A7C58()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(Strong + 48);
  swift_beginAccess();
  v2 = *(v1 + 80);
  v10[3] = *(v1 + 64);
  v10[4] = v2;
  v10[5] = *(v1 + 96);
  v11 = *(v1 + 112);
  v3 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v3;
  v10[2] = *(v1 + 48);
  v4 = swift_allocObject();
  swift_weakInit();

  sub_100363198(v10, v9);
  v5.super.super.isa = sub_1003984DC(sub_1003BF478, v4, &unk_1010A9720, sub_1003C18D4, sub_1003BF4BC).super.super.isa;

  sub_1003BF1F0(v10);

  if (!v5.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = [(objc_class *)v5.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

void *sub_1003A7DF8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(Strong + 48);
  swift_beginAccess();
  v2 = *(v1 + 80);
  v10[3] = *(v1 + 64);
  v10[4] = v2;
  v10[5] = *(v1 + 96);
  v11 = *(v1 + 112);
  v3 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v3;
  v10[2] = *(v1 + 48);
  v4 = swift_allocObject();
  swift_weakInit();

  sub_1003BF504(v10, v9);
  v5.super.super.isa = sub_1003984DC(sub_1003BF83C, v4, &unk_1010A97E8, sub_1003C18D4, sub_1003BF880).super.super.isa;

  sub_1003BF5B4(v10);

  if (!v5.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = [(objc_class *)v5.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

void *sub_1003A7F98()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(Strong + 48);
  swift_beginAccess();
  v2 = v1[4];
  v11[2] = v1[3];
  v11[3] = v2;
  v3 = v1[6];
  v11[4] = v1[5];
  v11[5] = v3;
  v4 = v1[2];
  v11[0] = v1[1];
  v11[1] = v4;
  v5 = swift_allocObject();
  swift_weakInit();

  sub_1001103E0(v11, &v10);
  v6.super.super.isa = sub_1003987B0(sub_1003BF02C, v5).super.super.isa;

  sub_100110418(v11);

  if (!v6.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = [(objc_class *)v6.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

void *sub_1003A80F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(Strong + 48);
  swift_beginAccess();
  v2 = *(v1 + 80);
  v10[3] = *(v1 + 64);
  v10[4] = v2;
  v10[5] = *(v1 + 96);
  v11 = *(v1 + 112);
  v3 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v3;
  v10[2] = *(v1 + 48);
  v4 = swift_allocObject();
  swift_weakInit();

  sub_1003BF8F0(v10, v9);
  v5.super.super.isa = sub_1003984DC(sub_1003BFC28, v4, &unk_1010A98B0, sub_1003C18D4, sub_1003BFC6C).super.super.isa;

  sub_1003BF9A0(v10);

  if (!v5.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = [(objc_class *)v5.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

void *sub_1003A8298()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(Strong + 48);
  swift_beginAccess();
  v2 = *(v1 + 48);
  v9[1] = *(v1 + 32);
  v9[2] = v2;
  v9[3] = *(v1 + 64);
  v10 = *(v1 + 80);
  v9[0] = *(v1 + 16);
  v3 = swift_allocObject();
  swift_weakInit();

  sub_10021817C(v9, v8);
  v4.super.super.isa = sub_100398A98(sub_1003BEDF4, v3).super.super.isa;

  sub_1003BECBC(v9);

  if (!v4.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = [(objc_class *)v4.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void *sub_1003A8400()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(Strong + 48);
  swift_beginAccess();
  v2 = *(v1 + 80);
  v10[3] = *(v1 + 64);
  v10[4] = v2;
  v10[5] = *(v1 + 96);
  v11 = *(v1 + 112);
  v3 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v3;
  v10[2] = *(v1 + 48);
  v4 = swift_allocObject();
  swift_weakInit();

  sub_10003D868(v10, v9);
  v5.super.super.isa = sub_1003984DC(sub_1003BFFE0, v4, &unk_1010A99A0, sub_1003C18D4, sub_1003C0024).super.super.isa;

  sub_10003D90C(v10);

  if (!v5.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = [(objc_class *)v5.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

uint64_t sub_1003A85A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 64) & 1) == 0)
    {
      v10 = result;
      sub_1000089F8(a1, v18, &unk_101183F30);
      if (!v18[3])
      {

        return sub_1000095E8(v18, &unk_101183F30);
      }

      if (swift_dynamicCast())
      {
        v12 = v17[1];
        v11 = v17[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_10010FC20(&unk_10118CD70);
        sub_100178DD8(&unk_101182910, sub_100178D84);
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v13 = v18[0];
        v14 = type metadata accessor for TaskPriority();
        (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
        type metadata accessor for MainActor();

        v15 = static MainActor.shared.getter();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = &protocol witness table for MainActor;
        v16[4] = v10;
        v16[5] = v13;
        sub_1001F4CB8(0, 0, v8, a4, v16);

        sub_10002C064(v12, v11);
      }
    }
  }

  return result;
}

uint64_t sub_1003A89B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = _s10TVEpisodesVMa(0);
  v5[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A8A78, v7, v6);
}

uint64_t sub_1003A8A78()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = *(v4 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s10TVEpisodesVMa);
  v7 = *&v1[*(v3 + 56)];

  sub_1003C1730(v1, _s10TVEpisodesVMa);

  v8 = sub_1003AE5C4(v7, v2);

  sub_1003C16C8(v5 + v6, v1, _s10TVEpisodesVMa);
  v9 = *(v3 + 48);

  *&v1[v9] = v8;
  sub_10037745C(v1);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A8BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = _s9PlaylistsVMa(0);
  v5[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A8C8C, v7, v6);
}

uint64_t sub_1003A8C8C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = *(v4 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s9PlaylistsVMa);
  v7 = sub_10018F5B8();
  sub_1003C1730(v1, _s9PlaylistsVMa);

  v8 = sub_1003AE5C4(v7, v2);

  sub_1003C16C8(v5 + v6, v1, _s9PlaylistsVMa);
  v9 = *(v3 + 40);
  v10 = *(v1 + v9);
  *(v1 + v9) = v8;
  sub_10018F6EC(v10);

  sub_1003777F4(v1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A8DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = _s11MusicVideosVMa(0);
  v5[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A8EB0, v7, v6);
}

uint64_t sub_1003A8EB0()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = *(v4 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s11MusicVideosVMa);
  v7 = sub_1006FE4C0();
  sub_1003C1730(v1, _s11MusicVideosVMa);

  v8 = sub_1003AE5C4(v7, v2);

  sub_1003C16C8(v5 + v6, v1, _s11MusicVideosVMa);
  v9 = *(v3 + 36);
  v10 = *(v1 + v9);
  *(v1 + v9) = v8;
  sub_1006FE6C4(v10);

  sub_100377E84(v1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = _s6AlbumsVMa(0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A90E0, v7, v6);
}

uint64_t sub_1003A90E0()
{
  v1 = v0[15];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];

  v6 = *(v5 + 48);
  v7 = *(*v6 + 96);
  swift_beginAccess();
  sub_1003C16C8(v6 + v7, v1, _s6AlbumsVMa);
  v8 = sub_10028AAFC();
  sub_1003C1730(v1, _s6AlbumsVMa);

  v9 = sub_1003AE5C4(v8, v4);

  sub_1003C16C8(v6 + v7, v2, _s6AlbumsVMa);
  v10 = *(v3 + 32);
  v11 = *(v2 + v10);
  *(v2 + v10) = v9;
  if ((sub_10018FCA0(v9, v11) & 1) == 0)
  {
    v12 = [objc_opt_self() standardUserDefaults];
    v0[5] = sub_10010FC20(&unk_10118CD70);
    v0[6] = sub_100178DD8(&unk_101182910, sub_100178D84);
    v13 = sub_100178DD8(&unk_101182920, sub_100178E50);
    v0[2] = v9;
    v0[7] = v13;

    sub_10028A59C();
    NSUserDefaults.encodeValue(_:forKey:)(v0 + 2);

    sub_10000959C((v0 + 2));
  }

  sub_100378808(v0[14]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003A9344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[45] = a4;
  v5[46] = a5;
  type metadata accessor for MainActor();
  v5[47] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A93DC, v7, v6);
}

uint64_t sub_1003A93DC()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 360);

  v3 = *(v2 + 48);
  swift_beginAccess();
  *(v0 + 96) = v3[1];
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[5];
  *(v0 + 144) = v3[4];
  *(v0 + 160) = v6;
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  sub_10030DC78(v0 + 96, v0 + 256);
  v7 = sub_10030D078();
  sub_10030DCB0(v0 + 96);

  v8 = sub_1003AE5C4(v7, v1);

  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[2];
  *(v0 + 48) = v3[3];
  v12 = v3[1];
  *(v0 + 64) = v9;
  *(v0 + 80) = v10;
  *(v0 + 16) = v12;
  *(v0 + 32) = v11;
  v13 = *(v0 + 56);
  v17 = v3[1];
  v18 = v3[2];
  v19 = *(v3 + 6);
  v20 = v3[4];
  v21 = v3[5];
  sub_10030DC78(v0 + 16, v0 + 256);
  if ((sub_10018FCA0(v8, v13) & 1) == 0)
  {
    v14 = [objc_opt_self() standardUserDefaults];
    *(v0 + 280) = sub_10010FC20(&unk_10118CD70);
    *(v0 + 288) = sub_100178DD8(&unk_101182910, sub_100178D84);
    *(v0 + 296) = sub_100178DD8(&unk_101182920, sub_100178E50);
    *(v0 + 256) = v8;

    NSUserDefaults.encodeValue(_:forKey:)((v0 + 256));

    sub_10000959C(v0 + 256);
  }

  *(v0 + 176) = v17;
  *(v0 + 192) = v18;
  *(v0 + 208) = v19;
  *(v0 + 216) = v8;
  *(v0 + 224) = v20;
  *(v0 + 240) = v21;
  sub_100378C30((v0 + 176));
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003A9620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A96B8, v7, v6);
}

uint64_t sub_1003A96B8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 112);

  v5 = sub_1003AE5C4(v4, v1);

  v6 = *(v3 + 96);
  v7 = *(v3 + 112);
  v8 = *(v3 + 64);
  *(v0 + 80) = *(v3 + 80);
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v9;
  *(v0 + 112) = v7;
  *(v0 + 96) = v6;
  *(v0 + 48) = v10;
  *(v0 + 64) = v8;
  *(v0 + 120) = *(v3 + 16);
  v12 = *(v3 + 48);
  v11 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(v0 + 136) = *(v3 + 32);
  *(v0 + 184) = v13;
  *(v0 + 168) = v11;
  *(v0 + 152) = v12;
  v14 = *(v3 + 96);
  *(v0 + 216) = *(v3 + 112);
  *(v0 + 200) = v14;
  sub_100363198(v0 + 16, v0 + 224);

  *(v0 + 192) = v5;
  sub_100378EFC(v0 + 120);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003A97E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A9880, v7, v6);
}

uint64_t sub_1003A9880()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 112);

  v5 = sub_1003AE5C4(v4, v1);

  v6 = *(v3 + 96);
  v7 = *(v3 + 112);
  v8 = *(v3 + 64);
  *(v0 + 80) = *(v3 + 80);
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v9;
  *(v0 + 112) = v7;
  *(v0 + 96) = v6;
  *(v0 + 48) = v10;
  *(v0 + 64) = v8;
  *(v0 + 120) = *(v3 + 16);
  v12 = *(v3 + 48);
  v11 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(v0 + 136) = *(v3 + 32);
  *(v0 + 184) = v13;
  *(v0 + 168) = v11;
  *(v0 + 152) = v12;
  v14 = *(v3 + 96);
  *(v0 + 216) = *(v3 + 112);
  *(v0 + 200) = v14;
  sub_1003BF504(v0 + 16, v0 + 224);

  *(v0 + 192) = v5;
  sub_100379288(v0 + 120);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003A99B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[41] = a4;
  v5[42] = a5;
  type metadata accessor for MainActor();
  v5[43] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A9A48, v7, v6);
}

uint64_t sub_1003A9A48()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 328);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 104);

  v5 = sub_1003AE5C4(v4, v1);

  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 96);
  *(v0 + 80) = *(v3 + 80);
  v9 = *(v3 + 32);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v9;
  *(v0 + 96) = v8;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  v10 = *(v3 + 64);
  v12 = *(v3 + 16);
  v11 = *(v3 + 32);
  *(v0 + 144) = *(v3 + 48);
  *(v0 + 160) = v10;
  *(v0 + 112) = v12;
  *(v0 + 128) = v11;
  v13 = *(v3 + 104);
  *(v0 + 184) = *(v3 + 88);
  *(v0 + 200) = v13;
  sub_1001103E0(v0 + 16, v0 + 208);

  *(v0 + 176) = v5;
  sub_100379614((v0 + 112));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1003A9B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A9BF0, v7, v6);
}

uint64_t sub_1003A9BF0()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 112);

  v5 = sub_1003AE5C4(v4, v1);

  v6 = *(v3 + 96);
  v7 = *(v3 + 112);
  v8 = *(v3 + 64);
  *(v0 + 80) = *(v3 + 80);
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v9;
  *(v0 + 112) = v7;
  *(v0 + 96) = v6;
  *(v0 + 48) = v10;
  *(v0 + 64) = v8;
  *(v0 + 120) = *(v3 + 16);
  v12 = *(v3 + 48);
  v11 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(v0 + 136) = *(v3 + 32);
  *(v0 + 184) = v13;
  *(v0 + 168) = v11;
  *(v0 + 152) = v12;
  v14 = *(v3 + 96);
  *(v0 + 216) = *(v3 + 112);
  *(v0 + 200) = v14;
  sub_1003BF8F0(v0 + 16, v0 + 224);

  *(v0 + 192) = v5;
  sub_10037993C(v0 + 120);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003A9D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[41] = a4;
  v5[42] = a5;
  type metadata accessor for MainActor();
  v5[43] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A9DB8, v7, v6);
}

uint64_t sub_1003A9DB8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 328);

  v3 = *(v2 + 48);
  swift_beginAccess();
  *(v0 + 88) = *(v3 + 16);
  v4 = *(v3 + 32);
  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  *(v0 + 152) = *(v3 + 80);
  *(v0 + 136) = v6;
  *(v0 + 120) = v5;
  *(v0 + 104) = v4;
  sub_10021817C(v0 + 88, v0 + 232);
  v7 = sub_1007B9600();
  sub_1003BECBC(v0 + 88);

  v8 = sub_1003AE5C4(v7, v1);

  v9 = *(v3 + 64);
  v10 = *(v3 + 80);
  v11 = *(v3 + 32);
  *(v0 + 48) = *(v3 + 48);
  v12 = *(v3 + 16);
  *(v0 + 80) = v10;
  *(v0 + 64) = v9;
  *(v0 + 16) = v12;
  *(v0 + 32) = v11;
  v13 = *(v0 + 48);
  v17 = *(v3 + 16);
  v18 = *(v3 + 32);
  *&v19[9] = *(v3 + 65);
  *v19 = *(v3 + 56);
  sub_10021817C(v0 + 16, v0 + 232);
  if ((sub_10018FCA0(v8, v13) & 1) == 0)
  {
    v14 = [objc_opt_self() standardUserDefaults];
    *(v0 + 256) = sub_10010FC20(&unk_10118CD70);
    *(v0 + 264) = sub_100178DD8(&unk_101182910, sub_100178D84);
    *(v0 + 272) = sub_100178DD8(&unk_101182920, sub_100178E50);
    *(v0 + 232) = v8;

    NSUserDefaults.encodeValue(_:forKey:)((v0 + 232));

    sub_10000959C(v0 + 232);
  }

  *(v0 + 160) = v17;
  *(v0 + 176) = v18;
  *(v0 + 192) = v8;
  *(v0 + 200) = *v19;
  *(v0 + 209) = *&v19[9];
  sub_100379CC8(v0 + 160);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003AA014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AA0AC, v7, v6);
}

uint64_t sub_1003AA0AC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 112);

  v5 = sub_1003AE5C4(v4, v1);

  v6 = *(v3 + 96);
  v7 = *(v3 + 112);
  v8 = *(v3 + 64);
  *(v0 + 80) = *(v3 + 80);
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v9;
  *(v0 + 112) = v7;
  *(v0 + 96) = v6;
  *(v0 + 48) = v10;
  *(v0 + 64) = v8;
  *(v0 + 120) = *(v3 + 16);
  v12 = *(v3 + 48);
  v11 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(v0 + 136) = *(v3 + 32);
  *(v0 + 184) = v13;
  *(v0 + 168) = v11;
  *(v0 + 152) = v12;
  v14 = *(v3 + 96);
  *(v0 + 216) = *(v3 + 112);
  *(v0 + 200) = v14;
  sub_10003D868(v0 + 16, v0 + 224);

  *(v0 + 192) = v5;
  sub_100379FBC(v0 + 120);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003AA1DC(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 64) & 1) == 0)
    {
      v9 = result;
      sub_1000089F8(a1, v22, &unk_101183F30);
      if (!v23)
      {

        return sub_1000095E8(v22, &unk_101183F30);
      }

      if (swift_dynamicCast())
      {
        v11 = v21[1];
        v10 = v21[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v12 = v22[0];
        v13 = v22[1];
        v14 = *(v9 + 48);
        v15 = *(*v14 + 96);
        swift_beginAccess();
        sub_1003C16C8(v14 + v15, v7, _s10TVEpisodesVMa);
        if (v13)
        {
          v16 = 256;
        }

        else
        {
          v16 = 0;
        }

        v17 = sub_100375870(v16 | v12);
        sub_1003C1730(v7, _s10TVEpisodesVMa);
        if ((v17 & 0xFF00) != 0x200)
        {
          v18 = type metadata accessor for TaskPriority();
          (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
          type metadata accessor for MainActor();

          v19 = static MainActor.shared.getter();
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = &protocol witness table for MainActor;
          *(v20 + 32) = v9;
          *(v20 + 40) = v17;
          *(v20 + 41) = HIBYTE(v17) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8D80, v20);
        }

        sub_10002C064(v11, v10);
      }
    }
  }

  return result;
}

uint64_t sub_1003AA698(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 64) & 1) == 0)
    {
      v9 = result;
      sub_1000089F8(a1, v22, &unk_101183F30);
      if (!v23)
      {

        return sub_1000095E8(v22, &unk_101183F30);
      }

      if (swift_dynamicCast())
      {
        v11 = v21[1];
        v10 = v21[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v12 = v22[0];
        v13 = v22[1];
        v14 = *(v9 + 48);
        v15 = *(*v14 + 96);
        swift_beginAccess();
        sub_1003C16C8(v14 + v15, v7, _s9PlaylistsVMa);
        if (v13)
        {
          v16 = 256;
        }

        else
        {
          v16 = 0;
        }

        v17 = sub_100375B90(v16 | v12);
        sub_1003C1730(v7, _s9PlaylistsVMa);
        if ((v17 & 0xFF00) != 0x200)
        {
          v18 = type metadata accessor for TaskPriority();
          (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
          type metadata accessor for MainActor();

          v19 = static MainActor.shared.getter();
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = &protocol witness table for MainActor;
          *(v20 + 32) = v9;
          *(v20 + 40) = v17;
          *(v20 + 41) = HIBYTE(v17) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8A50, v20);
        }

        sub_10002C064(v11, v10);
      }
    }
  }

  return result;
}

uint64_t sub_1003AAB54(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 64) & 1) == 0)
    {
      v9 = result;
      sub_1000089F8(a1, v22, &unk_101183F30);
      if (!v23)
      {

        return sub_1000095E8(v22, &unk_101183F30);
      }

      if (swift_dynamicCast())
      {
        v11 = v21[1];
        v10 = v21[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v12 = v22[0];
        v13 = v22[1];
        v14 = *(v9 + 48);
        v15 = *(*v14 + 96);
        swift_beginAccess();
        sub_1003C16C8(v14 + v15, v7, _s11MusicVideosVMa);
        if (v13)
        {
          v16 = 256;
        }

        else
        {
          v16 = 0;
        }

        v17 = sub_100375F40(v16 | v12, sub_1006FF1A8);
        sub_1003C1730(v7, _s11MusicVideosVMa);
        if ((v17 & 0xFF00) != 0x200)
        {
          v18 = type metadata accessor for TaskPriority();
          (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
          type metadata accessor for MainActor();

          v19 = static MainActor.shared.getter();
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = &protocol witness table for MainActor;
          *(v20 + 32) = v9;
          *(v20 + 40) = v17;
          *(v20 + 41) = HIBYTE(v17) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8B50, v20);
        }

        sub_10002C064(v11, v10);
      }
    }
  }

  return result;
}

uint64_t sub_1003AB024(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = _s6AlbumsVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 64) & 1) == 0)
    {
      v9 = result;
      sub_1000089F8(a1, v22, &unk_101183F30);
      if (!v23)
      {

        return sub_1000095E8(v22, &unk_101183F30);
      }

      if (swift_dynamicCast())
      {
        v11 = v21[1];
        v10 = v21[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v12 = v22[0];
        v13 = v22[1];
        v14 = *(v9 + 48);
        v15 = *(*v14 + 96);
        swift_beginAccess();
        sub_1003C16C8(v14 + v15, v7, _s6AlbumsVMa);
        if (v13)
        {
          v16 = 256;
        }

        else
        {
          v16 = 0;
        }

        v17 = sub_100375F40(v16 | v12, sub_10028B3E0);
        sub_1003C1730(v7, _s6AlbumsVMa);
        if ((v17 & 0xFF00) != 0x200)
        {
          v18 = type metadata accessor for TaskPriority();
          (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
          type metadata accessor for MainActor();

          v19 = static MainActor.shared.getter();
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = &protocol witness table for MainActor;
          *(v20 + 32) = v9;
          *(v20 + 40) = v17;
          *(v20 + 41) = HIBYTE(v17) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8A88, v20);
        }

        sub_10002C064(v11, v10);
      }
    }
  }

  return result;
}

uint64_t sub_1003AB4F4(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-1] - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 64) & 1) == 0)
    {
      v6 = result;
      sub_1000089F8(a1, &v21, &unk_101183F30);
      if (!*(&v22 + 1))
      {

        return sub_1000095E8(&v21, &unk_101183F30);
      }

      if (swift_dynamicCast())
      {
        v7 = v20[0];
        v8 = v20[1];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v9 = v21;
        v10 = BYTE1(v21);
        v11 = *(v6 + 48);
        swift_beginAccess();
        v12 = v11[3];
        v22 = v11[2];
        v23 = v12;
        v13 = v11[5];
        v24 = v11[4];
        v25 = v13;
        v21 = v11[1];
        if (v10)
        {
          v14 = 256;
        }

        else
        {
          v14 = 0;
        }

        sub_10030DC78(&v21, v20);
        v15 = sub_100376264(v14 | v9);
        sub_10030DCB0(&v21);
        if ((v15 & 0xFF00) != 0x200)
        {
          v16 = type metadata accessor for TaskPriority();
          (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
          type metadata accessor for MainActor();

          v17 = static MainActor.shared.getter();
          v18 = swift_allocObject();
          *(v18 + 16) = v17;
          *(v18 + 24) = &protocol witness table for MainActor;
          *(v18 + 32) = v6;
          *(v18 + 40) = v15;
          *(v18 + 41) = HIBYTE(v15) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8B90, v18);
        }

        sub_10002C064(v7, v8);
      }
    }
  }

  return result;
}

uint64_t sub_1003AB960(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, void *), void (*a4)(__int128 *), uint64_t a5, uint64_t a6)
{
  v10 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 64) & 1) == 0)
    {
      v14 = result;
      sub_1000089F8(a1, &v30, &unk_101183F30);
      if (!*(&v31 + 1))
      {

        return sub_1000095E8(&v30, &unk_101183F30);
      }

      if (swift_dynamicCast())
      {
        v15 = v29[0];
        v16 = v29[1];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        v28 = v15;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        v27 = v16;

        v17 = v30;
        v18 = BYTE1(v30);
        v19 = *(v14 + 48);
        swift_beginAccess();
        v20 = *(v19 + 80);
        v33 = *(v19 + 64);
        v34 = v20;
        v35 = *(v19 + 96);
        v36 = *(v19 + 112);
        v21 = *(v19 + 32);
        v30 = *(v19 + 16);
        v31 = v21;
        v32 = *(v19 + 48);
        if (v18)
        {
          v22 = 256;
        }

        else
        {
          v22 = 0;
        }

        a3(&v30, v29);
        v23 = sub_1003768C8(v22 | v17);
        a4(&v30);
        if ((v23 & 0xFF00) != 0x200)
        {
          v24 = type metadata accessor for TaskPriority();
          (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
          type metadata accessor for MainActor();

          v25 = static MainActor.shared.getter();
          v26 = swift_allocObject();
          *(v26 + 16) = v25;
          *(v26 + 24) = &protocol witness table for MainActor;
          *(v26 + 32) = v14;
          *(v26 + 40) = v23;
          *(v26 + 41) = HIBYTE(v23) & 1;
          sub_1001F4CB8(0, 0, v12, a6, v26);
        }

        sub_10002C064(v28, v27);
      }
    }
  }

  return result;
}

uint64_t sub_1003ABDD4(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-1] - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 64) & 1) == 0)
    {
      v6 = result;
      sub_1000089F8(a1, &v22, &unk_101183F30);
      if (!*(&v23 + 1))
      {

        return sub_1000095E8(&v22, &unk_101183F30);
      }

      if (swift_dynamicCast())
      {
        v7 = v21[0];
        v8 = v21[1];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v9 = v22;
        v10 = BYTE1(v22);
        v11 = *(v6 + 48);
        swift_beginAccess();
        v12 = v11[4];
        v24 = v11[3];
        v25 = v12;
        v13 = v11[6];
        v26 = v11[5];
        v27 = v13;
        v14 = v11[2];
        v22 = v11[1];
        v23 = v14;
        if (v10)
        {
          v15 = 256;
        }

        else
        {
          v15 = 0;
        }

        sub_1001103E0(&v22, v21);
        v16 = sub_1003754F0(v15 | v9);
        sub_100110418(&v22);
        if ((v16 & 0xFF00) != 0x200)
        {
          v17 = type metadata accessor for TaskPriority();
          (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
          type metadata accessor for MainActor();

          v18 = static MainActor.shared.getter();
          v19 = swift_allocObject();
          *(v19 + 16) = v18;
          *(v19 + 24) = &protocol witness table for MainActor;
          *(v19 + 32) = v6;
          *(v19 + 40) = v16;
          *(v19 + 41) = HIBYTE(v16) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8BD8, v19);
        }

        sub_10002C064(v7, v8);
      }
    }
  }

  return result;
}

uint64_t sub_1003AC240(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 64) & 1) == 0)
    {
      v6 = result;
      sub_1000089F8(a1, &v19, &unk_101183F30);
      if (!*(&v20 + 1))
      {

        return sub_1000095E8(&v19, &unk_101183F30);
      }

      if (swift_dynamicCast())
      {
        v7 = v18[0];
        v8 = v18[1];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v9 = v19;
        v10 = BYTE1(v19);
        v11 = *(v6 + 48);
        swift_beginAccess();
        v12 = *(v11 + 48);
        v20 = *(v11 + 32);
        v21 = v12;
        v22 = *(v11 + 64);
        v23 = *(v11 + 80);
        v19 = *(v11 + 16);
        if (v10)
        {
          v13 = 256;
        }

        else
        {
          v13 = 0;
        }

        sub_10021817C(&v19, v18);
        v14 = sub_100376548(v13 | v9);
        sub_1003BECBC(&v19);
        if ((v14 & 0xFF00) != 0x200)
        {
          v15 = type metadata accessor for TaskPriority();
          (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
          type metadata accessor for MainActor();

          v16 = static MainActor.shared.getter();
          v17 = swift_allocObject();
          *(v17 + 16) = v16;
          *(v17 + 24) = &protocol witness table for MainActor;
          *(v17 + 32) = v6;
          *(v17 + 40) = v14;
          *(v17 + 41) = HIBYTE(v14) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8BA8, v17);
        }

        sub_10002C064(v7, v8);
      }
    }
  }

  return result;
}

uint64_t sub_1003AC6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a4;
  *(v5 + 48) = _s10TVEpisodesVMa(0);
  *(v5 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 64) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AC778, v7, v6);
}

uint64_t sub_1003AC778()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = *(v3 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s10TVEpisodesVMa);
  v7 = &v1[*(v4 + 36)];
  *v7 = v2;
  v7[1] = HIBYTE(v2) & 1;
  sub_10037745C(v1);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003AC860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a4;
  *(v5 + 48) = _s9PlaylistsVMa(0);
  *(v5 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 64) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AC92C, v7, v6);
}

uint64_t sub_1003AC92C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = *(v3 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s9PlaylistsVMa);
  v7 = (v1 + *(v4 + 44));
  v8 = *v7;
  v9 = v7[1];
  *v7 = v2;
  v7[1] = HIBYTE(v2) & 1;
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  sub_10018F8E4(v10 | v8);
  sub_1003777F4(v1);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003ACA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 128) = a5;
  *(v5 + 88) = a4;
  _s11MusicVideosV5ScopeOMa(0);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = _s11MusicVideosVMa(0);
  *(v5 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 120) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003ACB30, v7, v6);
}

uint64_t sub_1003ACB30()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 128);

  v5 = *(v3 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s11MusicVideosVMa);
  v7 = (v1 + *(v2 + 40));
  v8 = v7[1];
  v9 = *v7;
  *v7 = v4;
  v10 = (v4 & 0x100) >> 8;
  v7[1] = (v4 & 0x100) >> 8;
  if ((sub_1006B8B0C(v4, v9) & 1) == 0 || ((((v4 & 0x100) == 0) ^ v8) & 1) == 0)
  {
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v0 + 128);
    v15 = [objc_opt_self() standardUserDefaults];
    *(v0 + 40) = &_s11ContentSortVN;
    *(v0 + 48) = sub_100110448();
    *(v0 + 56) = sub_10011049C();
    *(v0 + 16) = v14;
    *(v0 + 17) = v10;
    sub_1003C16C8(v11 + *(v12 + 28), v13, _s11MusicVideosV5ScopeOMa);
    v16 = type metadata accessor for Artist();
    if ((*(*(v16 - 8) + 48))(v13, 1, v16) != 1)
    {
      sub_1003C1730(*(v0 + 96), _s11MusicVideosV5ScopeOMa);
    }

    v17._countAndFlagsBits = 0x53746E65746E6F43;
    v17._object = 0xEB0000000074726FLL;
    String.append(_:)(v17);

    NSUserDefaults.encodeValue(_:forKey:)((v0 + 16));

    sub_10000959C(v0 + 16);
  }

  sub_100377E84(*(v0 + 112));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1003ACDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a4;
  *(v5 + 48) = _s6AlbumsVMa(0);
  *(v5 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 64) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003ACE88, v7, v6);
}