uint64_t sub_100734D0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v14 = 0xD000000000000016;
  v15 = 0x8000000100E561E0;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  v10._object = 0x8000000100E56220;
  String.append(_:)(v10);
  URL.init(string:)();

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v8, 1, v11);
  if (result != 1)
  {
    return (*(v12 + 32))(a3, v8, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_100734E88@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v9._object = 0x8000000100E561E0;
  v9._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v9);
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0x8000000100E56200;
  String.append(_:)(v11);
  URL.init(string:)();

  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v8, 1, v12);
  if (result != 1)
  {
    return (*(v13 + 32))(a3, v8, v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_100735010()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10005EDE8();
  }

  return result;
}

uint64_t sub_100735068()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1007352B8(char *a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v6 = a2 & 1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v21 - v10;
  v12 = (*(v8 + 16))(v21 - v10, a1, v7, v9);
  v13 = a4(v12);
  v14 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  if (*(v13 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) == v6)
  {
    v16 = *(v8 + 8);
    v16(v11, v7);
    *(v13 + v14) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v21[1] = v21;
    __chkstk_darwin(KeyPath);
    v21[-2] = v13;
    LOBYTE(v21[-1]) = v6;
    v21[3] = v13;
    sub_1007493A0(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v16 = *(v8 + 8);
    v16(v11, v7);
  }

  v17 = objc_allocWithZone(type metadata accessor for ContextualPreview.ViewController(0));
  sub_100243448();
  v19 = v18;
  v16(a1, v7);
  return v19;
}

id sub_1007354F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100747E6C;
  v16 = &unk_1010BD268;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100747EBC;
  v16 = &unk_1010BD240;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_100020438(a4);
  sub_100020438(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

uint64_t sub_1007356F0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void sub_1007357E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.startIndex.getter();
  }

  else
  {
    v6 = _HashTable.startBucket.getter();
    v7 = *(a3 + 36);
  }

  v31 = v6;
  v32 = v7;
  v34 = v5 != 0;
  v33 = v5 != 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    if (v33)
    {
      goto LABEL_38;
    }

    v13 = v32;
    if (*(a3 + 36) != v32)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v14 = v31;
    if (v31 == 1 << *(a3 + 32))
    {
      break;
    }

    while (1)
    {
      sub_1007482E4(v14, v13, v34, a3, &qword_101181F70);
      v17 = v16;
      v30[0] = v16;
      v18 = a1(v30);

      if (v3)
      {
        sub_1000D8F7C(v14, v13, v5 != 0);
        return;
      }

      if (v18)
      {
        return;
      }

      if (!v5)
      {
        break;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_10010FC20(&qword_1011A0DC8);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      v8(v30, 0);
LABEL_7:
      v9 = __CocoaSet.endIndex.getter();
      if (!v33)
      {
        goto LABEL_38;
      }

      v11 = v9;
      v12 = v10;
      v14 = v31;
      v13 = v32;
      v15 = static __CocoaSet.Index.== infix(_:_:)();
      sub_1000D8F7C(v11, v12, 1);
      if (v15)
      {
        goto LABEL_32;
      }
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    v19 = 1 << *(a3 + 32);
    if (v14 >= v19)
    {
      goto LABEL_35;
    }

    v20 = v14 >> 6;
    v21 = *(a3 + 56 + 8 * (v14 >> 6));
    if (((v21 >> v14) & 1) == 0)
    {
      goto LABEL_36;
    }

    if (*(a3 + 36) != v13)
    {
      goto LABEL_37;
    }

    v22 = v21 & (-2 << (v14 & 0x3F));
    if (v22)
    {
      v19 = __clz(__rbit64(v22)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v20 << 6;
      v24 = v20 + 1;
      v25 = (a3 + 64 + 8 * v20);
      while (v24 < (v19 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          sub_1000D8F7C(v14, v13, 0);
          v19 = __clz(__rbit64(v26)) + v23;
          goto LABEL_29;
        }
      }

      sub_1000D8F7C(v14, v13, 0);
    }

LABEL_29:
    v28 = *(a3 + 36);
    v31 = v19;
    v32 = v28;
    v33 = 0;
  }

  v14 = 1 << *(a3 + 32);
LABEL_32:
  sub_1000D8F7C(v14, v13, v5 != 0);
  v34 = 255;
}

uint64_t sub_100735B1C()
{
  v1 = sub_10010FC20(&unk_10119EF50);
  __chkstk_darwin(v1 - 8);
  v29 = &v28 - v2;
  v3 = type metadata accessor for Playlist();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist.Variant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Playlist.Folder.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Playlist.Folder();
  (*(*(v17 - 8) + 16))(v16, v0, v17);
  v18 = enum case for Playlist.Folder.Item.folder(_:);
  (*(v11 + 104))(v16, enum case for Playlist.Folder.Item.folder(_:), v10);
  (*(v11 + 16))(v13, v16, v10);
  v19 = (*(v11 + 88))(v13, v10);
  if (v19 == v18)
  {
    (*(v7 + 104))(v9, enum case for Playlist.Variant.folder(_:), v6);
    Playlist.Variant.symbolImage.getter();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = *(v11 + 8);
    v22(v16, v10);
    v22(v13, v10);
  }

  else
  {
    if (v19 == enum case for Playlist.Folder.Item.playlist(_:))
    {
      (*(v11 + 96))(v13, v10);
      v23 = v28;
      (*(v28 + 32))(v5, v13, v3);
      v24 = v29;
      Playlist.variant.getter();
      if ((*(v7 + 48))(v24, 1, v6) != 1)
      {
        Playlist.Variant.symbolImage.getter();
        v21 = v26;
        (*(v23 + 8))(v5, v3);
        (*(v11 + 8))(v16, v10);
        (*(v7 + 8))(v24, v6);
        return v21;
      }

      (*(v23 + 8))(v5, v3);
      (*(v11 + 8))(v16, v10);
      sub_1000095E8(v24, &unk_10119EF50);
    }

    else
    {
      v25 = *(v11 + 8);
      v25(v16, v10);
      v25(v13, v10);
    }

    return 0;
  }

  return v21;
}

id sub_100735FC4(void *a1, uint64_t a2)
{
  v4 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v4);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Playlist.Folder();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v23[-v12];
  _s17PlaylistFolderTabCMa();
  if (swift_dynamicCastClass())
  {

    UnfairLock.locked<A>(_:)(sub_10074A094);

    (*(v8 + 32))(v13, v10, v7);
    v14 = *(v8 + 16);
  }

  else
  {
    v14 = *(v8 + 16);
    v14(v13, a2, v7);
  }

  v15 = *(v4 + 20);
  v14(v6 + v15, v13, v7);
  (*(v8 + 56))(v6 + v15, 0, 1, v7);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  *v6 = qword_101218AB8;
  *(v6 + *(v4 + 24)) = 0;

  v16 = [a1 tabBarController];
  if (!v16 || (v17 = v16, v18 = [v16 traitCollection], v17, !v18))
  {
    v18 = [objc_opt_self() currentTraitCollection];
  }

  v19 = [v18 horizontalSizeClass];

  v20 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController());
  v21 = sub_10037E11C(v6, 0, v19 != 2);
  (*(v8 + 8))(v13, v7);
  return v21;
}

uint64_t sub_100736308()
{
  v1 = sub_10010FC20(&unk_10119EF50);
  __chkstk_darwin(v1 - 8);
  v29 = &v28 - v2;
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist.Variant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Playlist.Folder.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v28 - v16;
  (*(v4 + 16))(&v28 - v16, v0, v3, v15);
  v18 = enum case for Playlist.Folder.Item.playlist(_:);
  (*(v11 + 104))(v17, enum case for Playlist.Folder.Item.playlist(_:), v10);
  (*(v11 + 16))(v13, v17, v10);
  v19 = (*(v11 + 88))(v13, v10);
  if (v19 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v7 + 104))(v9, enum case for Playlist.Variant.folder(_:), v6);
    Playlist.Variant.symbolImage.getter();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = *(v11 + 8);
    v22(v17, v10);
    v22(v13, v10);
  }

  else
  {
    if (v19 == v18)
    {
      (*(v11 + 96))(v13, v10);
      v23 = v28;
      (*(v4 + 32))(v28, v13, v3);
      v24 = v29;
      Playlist.variant.getter();
      if ((*(v7 + 48))(v24, 1, v6) != 1)
      {
        Playlist.Variant.symbolImage.getter();
        v21 = v26;
        (*(v4 + 8))(v23, v3);
        (*(v11 + 8))(v17, v10);
        (*(v7 + 8))(v24, v6);
        return v21;
      }

      (*(v4 + 8))(v23, v3);
      (*(v11 + 8))(v17, v10);
      sub_1000095E8(v24, &unk_10119EF50);
    }

    else
    {
      v25 = *(v11 + 8);
      v25(v17, v10);
      v25(v13, v10);
    }

    return 0;
  }

  return v21;
}

char *sub_100736798(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&qword_101183A20);
  v4 = __chkstk_darwin(v3 - 8);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v38 - v6;
  v39 = type metadata accessor for ContainerDetail.Source(0);
  v7 = __chkstk_darwin(v39);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v38 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v38 - v20;
  __chkstk_darwin(v19);
  v23 = &v38 - v22;
  _s11PlaylistTabCMa();
  if (swift_dynamicCastClass())
  {

    UnfairLock.locked<A>(_:)(sub_10074A07C);

    (*(v12 + 32))(v23, v21, v11);
    v24 = *(v12 + 16);
  }

  else
  {
    v24 = *(v12 + 16);
    v24(v23, a2, v11);
  }

  v24(v18, v23, v11);
  v25 = sub_10010FC20(&qword_10118A430);
  v26 = *(v25 + 48);
  v38 = v23;
  v27 = *(v25 + 64);
  v28 = _s6AlbumsV5ScopeOMa(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v28 - 8) + 56))(v10, 0, 1, v28);
  v10[v26] = 0;
  v10[v27] = 0;
  swift_storeEnumTagMultiPayload();
  v29 = type metadata accessor for URL();
  v30 = v42;
  (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
  v24(v15, v18, v11);
  v31 = v40;
  sub_100749D3C(v10, v40, type metadata accessor for ContainerDetail.Source);
  v32 = v41;
  sub_1000089F8(v30, v41, &qword_101183A20);
  v33 = sub_100866288(v15, v31, 0, 0, v32, 0);
  v34 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v35 = sub_100137F48(v33, v34);
  sub_1000095E8(v30, &qword_101183A20);
  sub_100749E0C(v10, type metadata accessor for ContainerDetail.Source);
  v36 = *(v12 + 8);
  v36(v18, v11);
  v36(v38, v11);
  return v35;
}

uint64_t sub_100736C48()
{
  v1 = v0;
  v2 = 0xD000000000000011;
  v3 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v3 - 8);
  v5 = &aBlock - v4;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v0[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction] = 0;
  v9 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_allPlaylistsTab;
  v10 = objc_allocWithZone(_s8FacetTabCMa());
  *&v0[v9] = sub_1007EC0B0(1u, 0);
  v11 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_userPlaylistsTabGroup;
  v12 = objc_allocWithZone(_s21UserPlaylistsTabGroupCMa());
  *&v0[v11] = sub_100737C64();
  v13 = 0x8000000100E564D0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  v49 = 0xD000000000000011;
  v50 = 0x8000000100E564D0;
  aBlock = 0xD000000000000014;
  v43 = 0x8000000100E3E560;
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v18 = v17;
  LOBYTE(v6) = v19;
  result = sub_1000095E8(v5, &unk_101182EA0);
  if (v6)
  {
    v21 = 0x8000000100E564F0;
    v22 = 0xD000000000000025;
  }

  else
  {
    v23 = ("Playlists.Section.NewPlaylist" >> 40) & 0xF0000;
    if (("Playlists.Section.NewPlaylist" & 0x2000000000000000) == 0)
    {
      v23 = 1114112;
    }

    if (v23 >> 14 < v18 >> 14)
    {
      __break(1u);
      return result;
    }

    String.subscript.getter();
    v2 = static String._fromSubstring(_:)();
    v25 = v24;

    v22 = 0xD000000000000011;
    v21 = 0x8000000100E564D0;
    v13 = v25;
  }

  v49 = v22;
  v50 = v21;
  v51 = v2;
  v52 = v13;
  v53 = v14;
  v54 = v16;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  sub_100009F78(0, &qword_101181F70);
  v28.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v56)
  {
    v46 = v56;
    v47 = v57;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_10003640C;
    v45 = &unk_1010BD5D8;
    v29 = _Block_copy(&aBlock);
  }

  else
  {
    v29 = 0;
  }

  v30 = v55;
  v31 = type metadata accessor for MusicTab.Group();
  v48.receiver = v1;
  v48.super_class = v31;
  v32 = objc_msgSendSuper2(&v48, "initWithTitle:image:identifier:children:viewControllerProvider:", v26, v30, v27, v28.super.isa, v29);
  _Block_release(v29);

  sub_100036360(&v49);
  v33 = v32;
  [v33 setPreferredPlacement:6];
  [v33 setAllowsHiding:0];
  [v33 setAllowsReordering:0];
  [v33 setSidebarAppearance:2];
  sub_10010FC20(&qword_101183990);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100EBC6D0;
  v35 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_allPlaylistsTab;
  v36 = *&v33[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_allPlaylistsTab];
  *(v34 + 32) = v36;
  v37 = *&v33[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_userPlaylistsTabGroup];
  *(v34 + 40) = v37;
  v38 = v36;
  v39 = v37;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 setChildren:isa];

  v41 = [*&v33[v35] identifier];
  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();
  }

  [v33 setDefaultChildIdentifier:v41];

  sub_1007371EC();
  return v33;
}

void sub_1007371EC()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for MusicTab.Action();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:v4];

  if (qword_10117FC90 != -1)
  {
    swift_once();
  }

  v6 = qword_101219508;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = v6;

  v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  swift_unknownObjectWeakAssign();

  if (v1[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction] == 1)
  {
    v9 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
  }

  sub_100009F78(0, &qword_1011839A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setSidebarActions:isa];
}

void sub_100737528()
{
  v0 = type metadata accessor for AppInterfaceContext.Activity(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = v49 - v6;
  __chkstk_darwin(v5);
  v9 = v49 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v11 = Strong;
  v12 = [Strong tabBarController];
  if (!v12 || (v13 = v12, v14 = sub_10003169C(), v13, !v14))
  {

LABEL_8:
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000060E4(v29, qword_101218E00);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v51 = v33;
      *v32 = 136446210;
      swift_beginAccess();
      v49[2] = swift_unknownObjectWeakLoadStrong();
      sub_10010FC20(&qword_1011A0DD8);
      v34 = String.init<A>(describing:)();
      v36 = sub_1000105AC(v34, v35, &v51);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to perform addToPlaylist: No interface context for tab=%{public}s", v32, 0xCu);
      sub_10000959C(v33);
    }

    return;
  }

  v15 = [v11 managingTabGroup];
  if (v15)
  {
    v16 = v15;
    _s3TabCMa();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v49[0] = v17;
      v18 = type metadata accessor for Playlist.Folder();
      (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
      v19 = type metadata accessor for PlaylistCreation.Context(0);
      v49[1] = v14;
      v20 = v19;
      v21 = *(v19 + 24);
      v22 = sub_10010FC20(&unk_1011841D0);
      (*(*(v22 - 8) + 56))(&v9[v21], 1, 1, v22);
      v23 = swift_allocObject();
      *(v23 + 16) = v49[0];
      v24 = &v9[*(v20 + 20)];
      *v24 = 0;
      *(v24 + 1) = 0;
      v25 = &v9[*(v20 + 28)];
      *v25 = sub_100749D34;
      v25[1] = v23;
      swift_storeEnumTagMultiPayload();
      sub_100749D3C(v9, v7, type metadata accessor for AppInterfaceContext.Activity);
      sub_100749D3C(v7, v4, type metadata accessor for AppInterfaceContext.Activity);
      v26 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      sub_100749DA4(v4, v27 + v26, type metadata accessor for AppInterfaceContext.Activity);
      v28 = v16;
      sub_100706900(v7, sub_100115C18, v27);

      sub_100749E0C(v7, type metadata accessor for AppInterfaceContext.Activity);
      sub_100749E0C(v9, type metadata accessor for AppInterfaceContext.Activity);
      return;
    }
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000060E4(v37, qword_101218E00);
  v38 = v11;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50[0] = v42;
    *v41 = 136446210;
    v43 = v38;
    v44 = [v43 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = sub_1000105AC(v45, v47, v50);

    *(v41 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v39, v40, "Unable to perform addToPlaylist: No library tab associated to tab=%{public}s", v41, 0xCu);
    sub_10000959C(v42);
  }

  else
  {
  }
}

NSString sub_100737B64()
{
  result = String._bridgeToObjectiveC()();
  qword_101219508 = result;
  return result;
}

void sub_100737B9C()
{
  v1 = *(v0 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_userPlaylistsTabGroup);
}

uint64_t sub_100737C64()
{
  v1 = v0;
  v2 = 0xEE00726573552E73;
  v3 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  strcpy(v34, "Playlists.User");
  HIBYTE(v34[1]) = -18;
  aBlock = 0xD000000000000014;
  v28 = 0x8000000100E3E560;
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v8 = v7;
  v10 = v9;
  result = sub_1000095E8(v5, &unk_101182EA0);
  if (v10)
  {
    v12 = 0x8000000100E56520;
    v13 = 0xD000000000000022;
    v14 = 0x7473696C79616C50;
  }

  else
  {
    if (v8 >> 14 > 0x38)
    {
      __break(1u);
      return result;
    }

    String.subscript.getter();
    v14 = static String._fromSubstring(_:)();
    v16 = v15;

    v13 = 0x7473696C79616C50;
    v12 = 0xEE00726573552E73;
    v2 = v16;
  }

  v34[0] = v13;
  v34[1] = v12;
  v34[2] = v14;
  v34[3] = v2;
  v34[4] = 0;
  v34[5] = 0xE000000000000000;
  v35 = 0;
  v36 = sub_100737FF0;
  v37 = 0;
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  sub_100009F78(0, &qword_101181F70);
  v19.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v36)
  {
    v31 = v36;
    v32 = v37;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10003640C;
    v30 = &unk_1010BD600;
    v20 = _Block_copy(&aBlock);
  }

  else
  {
    v20 = 0;
  }

  v21 = v35;
  v22 = type metadata accessor for MusicTab.Group();
  v33.receiver = v1;
  v33.super_class = v22;
  v23 = objc_msgSendSuper2(&v33, "initWithTitle:image:identifier:children:viewControllerProvider:", v17, v21, v18, v19.super.isa, v20);
  _Block_release(v20);

  sub_100036360(v34);
  v24 = v23;
  [v24 setAllowsHiding:0];
  [v24 setAllowsReordering:0];
  [v24 setSidebarAppearance:1];
  v25 = String._bridgeToObjectiveC()();
  [v24 setPlayActivityFeatureName:v25];

  return v24;
}

id sub_100737FF0(void *a1)
{
  v2 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = [a1 tabBarController];
  if (!v5 || (v6 = v5, v7 = [v5 traitCollection], v6, !v7))
  {
    v7 = [objc_opt_self() currentTraitCollection];
  }

  v8 = [v7 horizontalSizeClass];

  v9 = *(v2 + 20);
  v10 = type metadata accessor for Playlist.Folder();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  *v4 = qword_101218AB8;
  *(v4 + *(v2 + 24)) = 0;
  v11 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController());

  return sub_10037E11C(v4, 0, v8 != 2);
}

uint64_t sub_10073819C()
{
  v1 = v0;
  v2 = 0;
  v99 = type metadata accessor for Playlist.Folder();
  v103 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Playlist.Folder.Item();
  v101 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Playlist();
  v97 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117F7A8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v6 = type metadata accessor for Logger();
    v113 = sub_1000060E4(v6, qword_101218E18);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Applying final updates", v9, 2u);
    }

    v10 = v1[4];
    v125 = v10;
    v11 = v10[2];
    v96 = v2;
    if (v11)
    {
      v12 = *v1;
      v123 = v1[1];
      v124 = v12;
      v102 = v1;
      v13 = v1[2];
      v121 = v1[3];
      v122 = v13;
      v100 = v121;

      sub_1000089F8(&v125, v117, &qword_1011A0DE0);
      sub_1000089F8(&v124, v117, &qword_1011A0DE8);
      sub_1000089F8(&v123, v117, &qword_1011A0DA0);
      sub_1000089F8(&v122, v117, &unk_1011A0DF0);
      sub_1000089F8(&v121, v117, &unk_1011A0DF0);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = v10[2];
        sub_1000095E8(&v124, &qword_1011A0DE8);
        sub_1000095E8(&v123, &qword_1011A0DA0);
        sub_1000095E8(&v122, &unk_1011A0DF0);
        sub_1000095E8(&v121, &unk_1011A0DF0);
        sub_1000095E8(&v125, &qword_1011A0DE0);
        _os_log_impl(&_mh_execute_header, v14, v15, "Updating %ld playlist folder tabs", v16, 0xCu);
      }

      else
      {
        sub_1000095E8(&v124, &qword_1011A0DE8);
        sub_1000095E8(&v123, &qword_1011A0DA0);
        sub_1000095E8(&v122, &unk_1011A0DF0);
        sub_1000095E8(&v121, &unk_1011A0DF0);
        sub_1000095E8(&v125, &qword_1011A0DE0);
      }

      v20 = 0;
      v1 = (v10 + 8);
      v21 = 1 << *(v10 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & v10[8];
      v24 = (v21 + 63) >> 6;
      *&v19 = 136446466;
      v106 = v19;
      v2 = &qword_101181F70;
      v107 = v10;
      while (v23)
      {
LABEL_21:
        v28 = (v20 << 9) | (8 * __clz(__rbit64(v23)));
        v29 = *(v10[7] + v28);
        v30 = *(v10[6] + v28);
        v114 = v29;

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v117[0] = v112;
          *v33 = v106;
          sub_100009F78(0, &qword_101181F70);
          v34 = Array.description.getter();
          v36 = sub_1000105AC(v34, v35, v117);

          *(v33 + 4) = v36;
          *(v33 + 12) = 2082;
          v37 = v30;
          v38 = [v37 description];
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          LODWORD(v110) = v32;
          v40 = v39;
          v111 = v31;
          v25 = v30;
          v42 = v41;

          v10 = v107;
          v43 = sub_1000105AC(v40, v42, v117);

          *(v33 + 14) = v43;
          v2 = &qword_101181F70;
          v44 = v111;
          _os_log_impl(&_mh_execute_header, v111, v110, "Setting children=%{public}s for folderTab=%{public}s)", v33, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v25 = v30;
        }

        v23 &= v23 - 1;
        sub_100009F78(0, &qword_101181F70);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v25 setChildren:isa];
      }

      while (1)
      {
        v27 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_56;
        }

        if (v27 >= v24)
        {
          break;
        }

        v23 = v1[v27];
        ++v20;
        if (v23)
        {
          v20 = v27;
          goto LABEL_21;
        }
      }

      v1 = v102;
      v17 = v100;
      v18 = (v100 & 0xC000000000000001);
      if ((v100 & 0xC000000000000001) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = v1[3];
      v18 = (v17 & 0xC000000000000001);
      if ((v17 & 0xC000000000000001) == 0)
      {
LABEL_8:
        if (!*(v17 + 16))
        {
        }

        goto LABEL_25;
      }
    }

    if (!__CocoaSet.count.getter())
    {
    }

LABEL_25:
    v114 = v18;
    v45 = *v1;
    v119 = v1[1];
    v120 = v45;
    v93 = v119;
    v118 = v1[2];
    sub_1000089F8(&v125, v117, &qword_1011A0DE0);
    v1 = &qword_1011A0DE8;
    sub_1000089F8(&v120, v117, &qword_1011A0DE8);
    sub_1000089F8(&v119, v117, &qword_1011A0DA0);
    sub_1000089F8(&v118, v117, &unk_1011A0DF0);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    sub_1000095E8(&v120, &qword_1011A0DE8);
    sub_1000095E8(&v119, &qword_1011A0DA0);
    sub_1000095E8(&v118, &unk_1011A0DF0);

    sub_1000095E8(&v125, &qword_1011A0DE0);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v117[0] = v49;
      *v48 = 136446210;
      sub_100009F78(0, &qword_101181F70);
      sub_100749E6C();
      v50 = Set.description.getter();
      v1 = v51;
      v52 = sub_1000105AC(v50, v51, v117);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Updating visual properties for invalidated playlist tabs=%{public}s", v48, 0xCu);
      sub_10000959C(v49);
    }

    v2 = v103;
    if (v114)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100009F78(0, &qword_101181F70);
      sub_100749E6C();
      Set.Iterator.init(_cocoa:)();
      v17 = v117[0];
      v54 = v117[1];
      v55 = v117[2];
      v56 = v117[3];
      v57 = v117[4];
    }

    else
    {
      v58 = -1 << *(v17 + 32);
      v54 = (v17 + 56);
      v55 = ~v58;
      v59 = -v58;
      v60 = v59 < 64 ? ~(-1 << v59) : -1;
      v57 = (v60 & *(v17 + 56));

      v56 = 0;
    }

    v92 = v55;
    v61 = (v55 + 64) >> 6;
    v103 = (v97 + 2);
    LODWORD(v102) = enum case for Playlist.Folder.Item.playlist(_:);
    v107 = (v101 + 13);
    *&v106 = v101 + 1;
    v101 = (v97 + 1);
    v97 = (v2 + 2);
    v95 = enum case for Playlist.Folder.Item.folder(_:);
    v94 = (v2 + 1);
    *&v53 = 136446210;
    v91 = v53;
    v110 = v61;
    v111 = v54;
    v100 = v17;
    if (v17 < 0)
    {
      break;
    }

    while (1)
    {
      v69 = v56;
      v70 = v57;
      v71 = v56;
      if (!v57)
      {
        break;
      }

LABEL_40:
      v2 = ((v70 - 1) & v70);
      v1 = *(*(v17 + 48) + ((v71 << 9) | (8 * __clz(__rbit64(v70)))));
      if (!v1)
      {
        goto LABEL_53;
      }

LABEL_44:
      _s11PlaylistTabCMa();
      v73 = swift_dynamicCastClass();
      if (v73)
      {
        v112 = v73;

        v62 = v17;
        v63 = v104;
        v114 = v2;
        v2 = v105;
        UnfairLock.locked<A>(_:)(sub_10074A07C);

        v64 = v108;
        (*v103)(v108, v63, v2);
        v65 = v109;
        (*v107)(v64, v102, v109);
        Playlist.Folder.Item.name.getter();
        v66 = v64;
        v54 = v111;
        (*v106)(v66, v65);
        v67 = v63;
        v17 = v62;
        (*v101)(v67, v2);
        v68 = String._bridgeToObjectiveC()();

        [v112 setTitle:v68];

        v56 = v71;
        v57 = v114;
        v61 = v110;
        if (v17 < 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        _s17PlaylistFolderTabCMa();
        v74 = swift_dynamicCastClass();
        if (v74)
        {
          v114 = v74;

          v75 = v98;
          v76 = v99;
          UnfairLock.locked<A>(_:)(sub_10074A094);

          v77 = v108;
          (*v97)(v108, v75, v76);
          v78 = v109;
          (*v107)(v77, v95, v109);
          v79 = v2;
          v2 = Playlist.Folder.Item.name.getter();
          (*v106)(v77, v78);
          (*v94)(v75, v76);
          v80 = String._bridgeToObjectiveC()();

          [v114 setTitle:v80];

          v56 = v71;
          v57 = v79;
          v17 = v100;
        }

        else
        {
          v1 = v1;
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v112 = v83;
            v114 = swift_slowAlloc();
            v116 = v114;
            *v83 = v91;
            v1 = v1;
            v84 = [v1 description];
            v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v87 = v86;

            v88 = sub_1000105AC(v85, v87, &v116);

            v89 = v112;
            *(v112 + 4) = v88;
            _os_log_impl(&_mh_execute_header, v81, v82, "Unknown invalidated tab type=%{public}s", v89, 0xCu);
            sub_10000959C(v114);
          }

          else
          {
          }

          v56 = v71;
          v57 = v2;
        }

        v61 = v110;
        v54 = v111;
        if (v17 < 0)
        {
          goto LABEL_42;
        }
      }
    }

    while (1)
    {
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v71 >= v61)
      {
        goto LABEL_53;
      }

      v70 = v54[v71].isa;
      ++v69;
      if (v70)
      {
        goto LABEL_40;
      }
    }

LABEL_56:
    __break(1u);
  }

LABEL_42:
  v72 = __CocoaSet.Iterator.next()();
  if (v72)
  {
    v115 = v72;
    sub_100009F78(0, &qword_101181F70);
    swift_dynamicCast();
    v1 = v116;
    v71 = v56;
    v2 = v57;
    if (v116)
    {
      goto LABEL_44;
    }
  }

LABEL_53:
  sub_10005C9F8();
}

id sub_10073920C(char *a1)
{
  v3 = type metadata accessor for Playlist.Folder();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v21[-1] - v9;
  v11 = *(v4 + 16);
  v11(&v21[-1] - v9, a1, v3, v8);
  if (qword_10117FC98 != -1)
  {
    swift_once();
  }

  v12 = qword_1011A0B60;
  sub_10010FC20(&qword_1011A0DC0);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + *(*v13 + 88), v10, v3);
  *(v13 + *(*v13 + 96)) = v12;
  *(v1 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab17PlaylistFolderTab_safeFolderMutator) = v13;
  (v11)(v10, a1, v3);
  (v11)(v6, v10, v3);

  sub_10074889C(v6, v21);
  v14 = *(v4 + 8);
  v14(v10, v3);
  v15 = sub_100489578(v21);
  v16 = AccessibilityIdentifier.playlistFolderView.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];
  _s17PlaylistFolderTabCMa();

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v17, v18);
  [v15 setSpringLoaded:1];
  [v15 setAllowsHiding:0];
  [v15 setAllowsReordering:0];
  [v15 setIsSidebarDestination:1];

  v14(a1, v3);
  return v15;
}

uint64_t sub_100739514(uint64_t a1)
{
  v3 = type metadata accessor for Playlist.Folder.Item();
  v87 = *(v3 - 8);
  v88 = v3;
  __chkstk_darwin(v3);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist.Folder();
  v94 = *(v6 - 8);
  __chkstk_darwin(v6);
  v93 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v76 - v9;
  __chkstk_darwin(v10);
  v86 = &v76 - v11;
  __chkstk_darwin(v12);
  v14 = &v76 - v13;
  v15 = v1;
  v16 = *&v1[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab17PlaylistFolderTab_safeFolderMutator];
  v91 = *(*v16 + 96);

  UnfairLock.locked<A>(_:)(sub_10074A094);
  v85 = 0;

  sub_1007493A0(&qword_10118C1A0, &type metadata accessor for Playlist.Folder);
  sub_1007493A0(&unk_1011828D0, &type metadata accessor for Playlist.Folder);
  v17 = a1;
  v18 = v94;
  v19 = static MusicItem<>.==~ infix(_:_:)();
  v20 = *(v18 + 8);
  v20(v14, v6);
  v92 = v20;
  if (v19)
  {
    v82 = v14;
    v83 = v17;
    v84 = v15;
    v21 = *(v18 + 16);
    v94 = v18 + 16;
    v21(v5, v17, v6);
    v79 = enum case for Playlist.Folder.Item.folder(_:);
    v23 = v87;
    v22 = v88;
    v90 = v18 + 8;
    v78 = *(v87 + 13);
    v78(v5);
    v24 = Playlist.Folder.Item.name.getter();
    v80 = v25;
    v81 = v24;
    v93 = v6;
    v77 = *(v23 + 1);
    v77(v5, v22);

    v27 = v85;
    v26 = v86;
    UnfairLock.locked<A>(_:)(sub_10074A094);
    v85 = v27;

    v87 = v21;
    v21(v5, v26, v93);
    (v78)(v5, v79, v22);
    v28 = Playlist.Folder.Item.name.getter();
    v30 = v29;
    v77(v5, v22);
    v31 = v93;
    v32 = v26;
    v33 = v80;
    v20(v32, v93);
    if (v81 == v28 && v33 == v30)
    {

      LODWORD(v88) = 0;
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LODWORD(v88) = v51 ^ 1;
    }

    v52 = v82;
    v53 = v83;
    v54 = v31;
    v55 = v87;
    v56 = (v87)(v82, v83, v54);
    __chkstk_darwin(v56);
    *(&v76 - 2) = v16;
    *(&v76 - 1) = v52;

    UnfairLock.locked<A>(_:)(sub_100749CFC);

    v57 = v93;
    v92(v52, v93);
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000060E4(v58, qword_101218E18);
    v59 = v89;
    v55(v89, v53, v57);
    v60 = v84;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v63 = 136446722;
      v64 = v60;
      v65 = [v64 description];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = sub_1000105AC(v66, v68, v95);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2082;
      sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v92(v59, v57);
      v73 = sub_1000105AC(v70, v72, v95);

      *(v63 + 14) = v73;
      *(v63 + 22) = 1024;
      v74 = v88;
      *(v63 + 24) = v88 & 1;
      _os_log_impl(&_mh_execute_header, v61, v62, "🔁 Updating Playlist Folder Tab %{public}s with matching folder %{public}s — has visually changed: %{BOOL}d", v63, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v92(v59, v57);
      v74 = v88;
    }
  }

  else
  {
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000060E4(v34, qword_101218E18);
    v35 = v93;
    (*(v18 + 16))(v93, v17, v6);
    v36 = v15;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v39 = 136446466;
      v40 = v36;
      v41 = [v40 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_1000105AC(v42, v44, v95);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2082;
      sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder);
      v46 = v93;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v92(v46, v6);
      v50 = sub_1000105AC(v47, v49, v95);

      *(v39 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v37, v38, "🔁 Attempted to update tab=%{public}s with unrelated folder=%{public}s", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v92(v35, v6);
    }

    v74 = 0;
  }

  return v74 & 1;
}

uint64_t sub_100739F08(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  *a2 = result;
  return result;
}

id sub_100739F48(char *a1)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v21[-1] - v9;
  v11 = *(v4 + 16);
  v11(&v21[-1] - v9, a1, v3, v8);
  if (qword_10117FCA0 != -1)
  {
    swift_once();
  }

  v12 = qword_1011A0B68;
  sub_10010FC20(&qword_1011A0DD0);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + *(*v13 + 88), v10, v3);
  *(v13 + *(*v13 + 96)) = v12;
  *(v1 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab11PlaylistTab_safePlaylistMutator) = v13;
  (v11)(v10, a1, v3);
  (v11)(v6, v10, v3);

  sub_100748D2C(v6, v21);
  v14 = *(v4 + 8);
  v14(v10, v3);
  v15 = sub_10003622C(v21);
  v16 = AccessibilityIdentifier.playlistView.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];
  _s11PlaylistTabCMa();

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v17, v18);
  [v15 setSpringLoaded:1];
  [v15 setAllowsHiding:0];

  v14(a1, v3);
  return v15;
}

uint64_t sub_10073A228(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  a2(0);

  UnfairLock.locked<A>(_:)(a3);
}

uint64_t sub_10073A2CC(uint64_t a1)
{
  v87 = type metadata accessor for Playlist.Folder.Item();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v91 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v88 = &v77 - v9;
  __chkstk_darwin(v10);
  v84 = &v77 - v11;
  __chkstk_darwin(v12);
  v14 = &v77 - v13;
  v15 = v1;
  v16 = *&v1[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab11PlaylistTab_safePlaylistMutator];
  v89 = *(*v16 + 96);

  UnfairLock.locked<A>(_:)(sub_10074A07C);

  sub_1007493A0(&unk_1011A4660, &type metadata accessor for Playlist);
  v17 = a1;
  v18 = static MusicItem<>.==~ infix(_:_:)();
  v19 = v6;
  v21 = *(v6 + 8);
  v20 = v6 + 8;
  v92 = v21;
  v21(v14, v5);
  if (v18)
  {
    v81 = v14;
    v82 = v17;
    v83 = v15;
    v86 = *(v19 + 16);
    v86(v4, v17, v5);
    v78 = enum case for Playlist.Folder.Item.playlist(_:);
    v22 = v85;
    v90 = v20;
    v23 = *(v85 + 104);
    v24 = v87;
    v23(v4);
    v25 = Playlist.Folder.Item.name.getter();
    v79 = v26;
    v80 = v25;
    v91 = v5;
    v77 = *(v22 + 8);
    v77(v4, v24);

    v27 = v84;
    UnfairLock.locked<A>(_:)(sub_10074A07C);
    v85 = 0;

    v86(v4, v27, v91);
    (v23)(v4, v78, v24);
    v28 = Playlist.Folder.Item.name.getter();
    v30 = v29;
    v77(v4, v24);
    v31 = v91;
    v32 = v27;
    v33 = v79;
    v92(v32, v91);
    if (v80 == v28 && v33 == v30)
    {

      LODWORD(v87) = 0;
    }

    else
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LODWORD(v87) = v52 ^ 1;
    }

    v53 = v81;
    v54 = v82;
    v55 = v31;
    v56 = v86;
    v57 = (v86)(v81, v82, v55);
    __chkstk_darwin(v57);
    *(&v77 - 2) = v16;
    *(&v77 - 1) = v53;

    UnfairLock.locked<A>(_:)(sub_100749CCC);

    v58 = v91;
    v92(v53, v91);
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_1000060E4(v59, qword_101218E18);
    v60 = v88;
    v56(v88, v54, v58);
    v61 = v83;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v93[0] = swift_slowAlloc();
      *v64 = 136446722;
      v65 = v61;
      v66 = [v65 description];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = sub_1000105AC(v67, v69, v93);

      *(v64 + 4) = v70;
      *(v64 + 12) = 2082;
      sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v92(v60, v58);
      v74 = sub_1000105AC(v71, v73, v93);

      *(v64 + 14) = v74;
      *(v64 + 22) = 1024;
      v75 = v87;
      *(v64 + 24) = v87 & 1;
      _os_log_impl(&_mh_execute_header, v62, v63, "🔁 Updated Playlist Tab %{public}s with matching playlist %{public}s — has visually changed: %{BOOL}d", v64, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v92(v60, v58);
      v75 = v87;
    }
  }

  else
  {
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000060E4(v34, qword_101218E18);
    v35 = *(v19 + 16);
    v36 = v91;
    v35(v91, v17, v5);
    v37 = v15;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v90 = v20;
      v93[0] = v41;
      *v40 = 136446466;
      v42 = v37;
      v43 = [v42 description];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_1000105AC(v44, v46, v93);

      *(v40 + 4) = v47;
      *(v40 + 12) = 2082;
      sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v92(v36, v5);
      v51 = sub_1000105AC(v48, v50, v93);

      *(v40 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v38, v39, "🔁 Attempted to update tab=%{public}s with unrelated playlist=%{public}s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v92(v36, v5);
    }

    v75 = 0;
  }

  return v75 & 1;
}

uint64_t sub_10073AC2C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Playlist.Folder.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19PlaylistTabsRequestVMa();
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Playlist();
  v30 = *(v13 - 8);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v1 managingTabGroup];
  if (v17)
  {
    v18 = v17;
    v29 = v4;
    _s3TabCMa();
    if (swift_dynamicCastClass())
    {
      v28 = v3;

      v27 = a1;
      UnfairLock.locked<A>(_:)(sub_10074A07C);

      sub_1003DDCB8();
      v19 = RequestResponse.Controller.revision.getter();

      sub_100749D3C(v19 + *(*v19 + 96), v9, _s19PlaylistTabsRequestVMa);

      sub_100749D3C(v9, v12, _s9PlaylistsVMa);
      sub_100749E0C(v9, _s19PlaylistTabsRequestVMa);
      v20 = v30;
      (*(v30 + 16))(v6, v16, v13);
      v22 = v28;
      v21 = v29;
      (*(v29 + 104))(v6, enum case for Playlist.Folder.Item.playlist(_:), v28);
      sub_1001917EC(v6, v27);

      (*(v21 + 8))(v6, v22);
      sub_100749E0C(v12, _s9PlaylistsVMa);
      return (*(v20 + 8))(v16, v13);
    }
  }

  v24 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v25 = *(*(v24 - 8) + 56);

  return v25(a1, 1, 1, v24);
}

id sub_10073B070(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10073B0DC()
{
  result = swift_checkMetadataState();
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

uint64_t sub_10073B180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v61 = a4;
  v6 = _s19PlaylistTabsRequestVMa();
  v7 = v6 - 8;
  v57 = *(v6 - 8);
  v56 = *(v57 + 64);
  __chkstk_darwin(v6);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v62 = &v47 - v10;
  v11 = sub_10010FC20(&qword_1011828F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v54 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  type metadata accessor for TitledSection();
  type metadata accessor for Playlist.Folder.Item();
  sub_1007493A0(&unk_101182930, &type metadata accessor for Playlist.Folder.Item);
  MusicLibrarySectionedRequest.init()();
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  sub_10018E714(v16);
  sub_10018ECCC();
  sub_10018EFFC();
  v20 = *(v4 + *(_s9PlaylistsVMa(0) + 36));
  MusicLibrarySectionedRequest.filterItems(text:)(v20);
  MusicLibrarySectionedRequest.limit.setter();
  v21 = v12;
  v22 = *(v12 + 32);
  v51 = v12 + 32;
  v52 = v22;
  v53 = v19;
  v23 = v16;
  v24 = v11;
  v22(v19, v23, v11);
  v50 = *(v5 + *(v7 + 28));
  v49 = swift_allocBox();
  sub_100749D3C(v5, v25, _s9PlaylistsVMa);
  v26 = v62;
  static TaskPriority.userInitiated.getter();
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  v28 = v55;
  sub_100749D3C(v5, v55, _s19PlaylistTabsRequestVMa);
  v48 = v21;
  v29 = v54;
  v30 = v19;
  v31 = v24;
  (*(v21 + 16))(v54, v30, v24);
  v32 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v33 = (v56 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (*(v21 + 80) + v34 + 8) & ~*(v21 + 80);
  v36 = (v13 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  sub_100749DA4(v28, v37 + v32, _s19PlaylistTabsRequestVMa);
  *(v37 + v33) = v58;
  *(v37 + v34) = v49;
  v52(v37 + v35, v29, v31);
  v38 = v50;
  *(v37 + v36) = v50;
  v39 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
  v40 = v60;
  *v39 = v59;
  v39[1] = v40;
  v41 = v38;

  v42 = v62;
  v43 = sub_10035EB10(0, 0, v62, &unk_100EE0408, v37);
  sub_1000095E8(v42, &unk_101181520);
  v44 = sub_10010FC20(&qword_1011A0D90);
  v45 = v61;
  v61[3] = v44;
  v45[4] = &protocol witness table for Task<A, B>;
  *v45 = v43;
  (*(v48 + 8))(v53, v31);
}

uint64_t sub_10073B6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[41] = v15;
  v8[42] = v16;
  v8[39] = a7;
  v8[40] = a8;
  v8[37] = a5;
  v8[38] = a6;
  v8[36] = a4;
  v9 = sub_10010FC20(&qword_1011828F0);
  v8[43] = v9;
  v8[44] = *(v9 - 8);
  v8[45] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_10118CEC0);
  v8[46] = v10;
  v8[47] = *(v10 - 8);
  v8[48] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_101193C80);
  v8[49] = v11;
  v8[50] = *(v11 - 8);
  v8[51] = swift_task_alloc();
  v12 = sub_10010FC20(&qword_1011828F8);
  v8[52] = v12;
  v8[53] = *(v12 - 8);
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();

  return _swift_task_switch(sub_10073B8F4, 0, 0);
}

uint64_t sub_10073B8F4()
{
  v50 = v0;
  sub_10010FC20(&qword_101183B78);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBC6B0;
  v2 = MPMediaLibraryDidChangeNotification;
  MusicLibrary.mediaLibrary.getter();
  v3 = v0[37];
  UIScreen.Dimensions.size.getter(v4);
  *(v1 + 56) = &type metadata for NotificationTrigger;
  *(v1 + 64) = &protocol witness table for NotificationTrigger;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v0[56] = BindingRequestResponseInvalidation.init(triggers:)(v1);
  v7 = swift_allocObject();
  v0[57] = v7;
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  v0[58] = v8;
  v9 = &_swiftEmptySetSingleton;
  *(v8 + 16) = &_swiftEmptySetSingleton;
  v10 = swift_allocObject();
  v0[59] = v10;
  if (v3 && (RequestResponse.Revision.content.getter((v0 + 14)), v0[15]))
  {
    v11 = v0[16];
    v12 = v0[14];
  }

  else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010F538(_swiftEmptyArrayStorage);
    v11 = v43;
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  *(v10 + 16) = v11;
  v13 = swift_allocObject();
  v0[60] = v13;
  *(v13 + 16) = &_swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10010F538(_swiftEmptyArrayStorage);
      v42 = v41;
    }

    else
    {
      v42 = &_swiftEmptySetSingleton;
    }

    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10010F538(_swiftEmptyArrayStorage);
      v15 = v45;
    }

    else
    {
      v15 = &_swiftEmptySetSingleton;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10010F538(_swiftEmptyArrayStorage);
      v9 = v46;
    }

    v14 = v44;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = &_swiftEmptySetSingleton;
    v15 = &_swiftEmptySetSingleton;
  }

  v0[61] = v14;
  v16 = swift_allocObject();
  v0[62] = v16;
  v17 = sub_10010DB4C(_swiftEmptyArrayStorage);
  v16[2] = 0;
  v16[3] = _swiftEmptyArrayStorage;
  v16[4] = v15;
  v16[5] = v9;
  v16[6] = v17;
  if (qword_10117F7A8 != -1)
  {
    swift_once();
  }

  v18 = v0[55];
  v19 = v0[52];
  v20 = v0[53];
  v21 = v0[39];
  v22 = type metadata accessor for Logger();
  v0[63] = sub_1000060E4(v22, qword_101218E18);
  v23 = *(v20 + 16);
  v23(v18, v21, v19);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[55];
  if (v26)
  {
    v28 = v0[53];
    v29 = v0[54];
    v30 = v0[52];
    v31 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = v48;
    *v31 = 136446210;
    v23(v29, v27, v30);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    (*(v28 + 8))(v27, v30);
    v35 = sub_1000105AC(v32, v34, &v49);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "🔨 Building playlists tabs using request=%{public}s…", v31, 0xCu);
    sub_10000959C(v48);
  }

  else
  {
    v36 = v0[52];
    v37 = v0[53];

    (*(v37 + 8))(v27, v36);
  }

  v38 = swift_task_alloc();
  v0[64] = v38;
  *v38 = v0;
  v38[1] = sub_10073BE14;
  v39 = v0[51];
  v40 = v0[52];

  return MusicLibrarySectionedRequest.response()(v39, v40);
}

uint64_t sub_10073BE14()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_10073CAB8;
  }

  else
  {
    v2 = sub_10073BF28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10073BF28()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = MusicLibrarySectionedResponse.sections.getter();
  *(v0 + 528) = v4;
  result = (*(v2 + 8))(v1, v3);
  v6 = *(v4 + 16);
  *(v0 + 536) = v6;
  if (!v6)
  {
LABEL_5:

    v9 = *(v0 + 496);
    v10 = *(v0 + 480);
    v11 = *(v0 + 320);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    *(v9 + 32) = v12;

    if (v11 && (v13 = *(v0 + 456), swift_beginAccess(), !*(v13 + 16)))
    {
      v32 = *(v0 + 496);
      v33 = *(v0 + 320);
      v34 = *(v32 + 16);
      *(v32 + 16) = v33;
      v35 = v33;

      if (static Task<>.isCancelled.getter())
      {
        goto LABEL_8;
      }
    }

    else if (static Task<>.isCancelled.getter())
    {
LABEL_8:
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "🔨‼️ Playlist Tabs task cancelled ", v16, 2u);
      }
    }

    v17 = *(v0 + 496);
    v18 = *(v0 + 448);
    v19 = *(v0 + 328);
    v20 = *(v17 + 24);
    v21 = *(v17 + 40);
    *(v0 + 64) = *(v17 + 16);
    *(v0 + 72) = v20;
    *(v0 + 88) = v21;
    *(v0 + 104) = 0;
    v22 = sub_1007493A0(&qword_1011A0D98, type metadata accessor for BindingRequestResponseInvalidation);

    v19(v0 + 64, v18, v22);

    v23 = *(v0 + 8);

    return v23();
  }

  v7 = *(v0 + 376);
  *(v0 + 544) = 0;
  v8 = *(v0 + 528);
  if (!*(v8 + 16))
  {
    __break(1u);
    return result;
  }

  (*(v7 + 16))(*(v0 + 384), v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), *(v0 + 368));
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
    goto LABEL_5;
  }

  MusicLibrarySection.items.getter();
  v24 = swift_task_alloc();
  *(v0 + 552) = v24;
  *v24 = v0;
  v24[1] = sub_10073C2F4;
  v25 = *(v0 + 488);
  v26 = *(v0 + 496);
  v27 = *(v0 + 472);
  v28 = *(v0 + 480);
  v29 = *(v0 + 464);
  v30 = *(v0 + 360);
  v31 = *(v0 + 304);

  return sub_10073CD44(v30, 0, v29, v27, v25, v26, v31, v28);
}

uint64_t sub_10073C2F4(uint64_t a1)
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 344);
  *(*v1 + 560) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10073C454, 0, 0);
}

uint64_t sub_10073C454()
{
  v1 = *(v0 + 560);
  swift_beginAccess();
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(*(v0 + 496) + 24);
  v5 = v4 >> 62;
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = result + v3;
    if (!__OFADD__(result, v3))
    {
      goto LABEL_5;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v7 = result + v3;
  if (__OFADD__(result, v3))
  {
    goto LABEL_46;
  }

LABEL_5:
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if (!v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_22;
  }

  if (v5)
  {
    goto LABEL_21;
  }

  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  if (v9 >= v7)
  {
    v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v4 = result;
  v8 = result & 0xFFFFFFFFFFFFFF8;
  v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_9:
    v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = result;
  if (!result)
  {
LABEL_24:

    if (v3 <= 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_10:
  if (v9 - v10 < v3)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v2)
  {
    if (v11 < 1)
    {
LABEL_51:
      __break(1u);
      return result;
    }

    sub_100020674(&qword_1011A0DA8, &qword_1011A0DA0);
    for (i = 0; i != v11; ++i)
    {
      v13 = *(v0 + 560);
      sub_10010FC20(&qword_1011A0DA0);
      v14 = sub_1006CAD14((v0 + 152), i, v13);
      v16 = *v15;
      (v14)(v0 + 152, 0);
      *(v8 + 8 * v10 + 32 + 8 * i) = v16;
    }
  }

  else
  {
    sub_100009F78(0, &qword_101181F70);
    swift_arrayInitWithCopy();
  }

  if (v3 > 0)
  {
    v17 = *(v8 + 16);
    v18 = __OFADD__(v17, v3);
    v19 = v17 + v3;
    if (v18)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    *(v8 + 16) = v19;
  }

LABEL_25:
  v20 = *(v0 + 536);
  v22 = *(v0 + 376);
  v21 = *(v0 + 384);
  v23 = *(v0 + 368);
  v24 = *(v0 + 544) + 1;
  *(*(v0 + 496) + 24) = v4;
  swift_endAccess();
  result = (*(v22 + 8))(v21, v23);
  if (v24 == v20)
  {
LABEL_29:

    v27 = *(v0 + 496);
    v28 = *(v0 + 480);
    v29 = *(v0 + 320);
    swift_beginAccess();
    v30 = *(v28 + 16);
    swift_beginAccess();
    *(v27 + 32) = v30;

    if (v29 && (v31 = *(v0 + 456), swift_beginAccess(), !*(v31 + 16)))
    {
      v50 = *(v0 + 496);
      v51 = *(v0 + 320);
      v52 = *(v50 + 16);
      *(v50 + 16) = v51;
      v53 = v51;

      if (static Task<>.isCancelled.getter())
      {
        goto LABEL_32;
      }
    }

    else if (static Task<>.isCancelled.getter())
    {
LABEL_32:
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "🔨‼️ Playlist Tabs task cancelled ", v34, 2u);
      }
    }

    v35 = *(v0 + 496);
    v36 = *(v0 + 448);
    v37 = *(v0 + 328);
    v38 = *(v35 + 24);
    v39 = *(v35 + 40);
    *(v0 + 64) = *(v35 + 16);
    *(v0 + 72) = v38;
    *(v0 + 88) = v39;
    *(v0 + 104) = 0;
    v40 = sub_1007493A0(&qword_1011A0D98, type metadata accessor for BindingRequestResponseInvalidation);

    v37(v0 + 64, v36, v40);

    v41 = *(v0 + 8);

    return v41();
  }

  v25 = *(v0 + 544) + 1;
  *(v0 + 544) = v25;
  v26 = *(v0 + 528);
  if (v25 >= *(v26 + 16))
  {
    goto LABEL_49;
  }

  (*(*(v0 + 376) + 16))(*(v0 + 384), v26 + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v25, *(v0 + 368));
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
    goto LABEL_29;
  }

  MusicLibrarySection.items.getter();
  v42 = swift_task_alloc();
  *(v0 + 552) = v42;
  *v42 = v0;
  v42[1] = sub_10073C2F4;
  v43 = *(v0 + 488);
  v44 = *(v0 + 496);
  v45 = *(v0 + 472);
  v46 = *(v0 + 480);
  v47 = *(v0 + 464);
  v48 = *(v0 + 360);
  v49 = *(v0 + 304);

  return sub_10073CD44(v48, 0, v47, v45, v43, v44, v49, v46);
}

uint64_t sub_10073CAB8()
{
  v15 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 520);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v0 + 280) = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to query playlists with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = *(v0 + 448);
  *(v0 + 16) = *(v0 + 520);
  v10 = *(v0 + 328);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 1;
  v11 = sub_1007493A0(&qword_1011A0D98, type metadata accessor for BindingRequestResponseInvalidation);

  swift_errorRetain();
  v10(v0 + 16, v9, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10073CD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[70] = v19;
  v8[69] = v18;
  v8[68] = a8;
  v8[67] = a7;
  v8[66] = a6;
  v8[65] = a5;
  v8[63] = a3;
  v8[64] = a4;
  v8[61] = a1;
  v8[62] = a2;
  v9 = type metadata accessor for Playlist();
  v8[71] = v9;
  v8[72] = *(v9 - 8);
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_1011828F8);
  v8[76] = v10;
  v8[77] = *(v10 - 8);
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v8[80] = _s9PlaylistsVMa(0);
  v8[81] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_101193C80);
  v8[82] = v11;
  v8[83] = *(v11 - 8);
  v8[84] = swift_task_alloc();
  v12 = sub_10010FC20(&unk_10118CEC0);
  v8[85] = v12;
  v8[86] = *(v12 - 8);
  v8[87] = swift_task_alloc();
  sub_10010FC20(&qword_1011A0DB0);
  v8[88] = swift_task_alloc();
  v13 = sub_10010FC20(&qword_1011828F0);
  v8[89] = v13;
  v8[90] = *(v13 - 8);
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = _s9PlaylistsV5ScopeVMa(0);
  v8[94] = swift_task_alloc();
  v14 = type metadata accessor for Playlist.Folder();
  v8[95] = v14;
  v8[96] = *(v14 - 8);
  v8[97] = swift_task_alloc();
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v15 = type metadata accessor for Playlist.Folder.Item();
  v8[100] = v15;
  v8[101] = *(v15 - 8);
  v8[102] = swift_task_alloc();
  v8[103] = swift_task_alloc();
  v8[104] = swift_task_alloc();
  v8[105] = swift_task_alloc();
  v8[106] = sub_10010FC20(&unk_1011828E0);
  v8[107] = swift_task_alloc();
  v8[108] = swift_projectBox();

  return _swift_task_switch(sub_10073D1D0, 0, 0);
}

uint64_t sub_10073D1D0()
{
  v192 = v0;
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 488);
  v6._countAndFlagsBits = 8316;
  v6._object = 0xE200000000000000;
  *(v0 + 872) = String.init(repeating:count:)(v6, *(v0 + 496));
  v172 = _swiftEmptyArrayStorage;
  *(v0 + 448) = _swiftEmptyArrayStorage;
  v7 = *(v3 + 16);
  *(v0 + 888) = v7;
  *(v0 + 896) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v4);
  v8 = *(v2 + 36);
  *(v0 + 968) = v8;
  *(v0 + 904) = sub_100020674(&qword_10118C1D0, &qword_1011828F0);
  dispatch thunk of Collection.startIndex.getter();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v9 = v0;
  swift_beginAccess();
  swift_beginAccess();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v1 + v8) != *(v0 + 464))
  {
    v177 = v0 + 16;
    v172 = _swiftEmptyArrayStorage;
    *(v0 + 972) = enum case for Playlist.Folder.Item.folder(_:);
    *(v0 + 976) = enum case for Playlist.Folder.Item.playlist(_:);
    v190 = v0;
    do
    {
      v21 = *(v9 + 840);
      v184 = *(v9 + 832);
      v22 = *(v9 + 808);
      v179 = *(v9 + 800);
      v23 = dispatch thunk of Collection.subscript.read();
      v24 = *(v22 + 16);
      v24(v21);
      v23(v177, 0);
      v9 = v190;
      dispatch thunk of Collection.formIndex(after:)();
      (*(v22 + 32))(v184, v21, v179);
      v25 = static Task<>.isCancelled.getter();
      v26 = *(v190 + 808);
      v27 = *(v190 + 800);
      if (v25)
      {
        v146 = *(v190 + 856);
        v147 = *(v190 + 832);

        (*(v26 + 8))(v147, v27);
        sub_1000095E8(v146, &unk_1011828E0);
        goto LABEL_41;
      }

      v28 = *(v190 + 972);
      v29 = *(v190 + 824);
      (v24)(v29, *(v190 + 832), *(v190 + 800));
      v30 = (*(v26 + 88))(v29, v27);
      if (v30 == v28)
      {
        v31 = *(v190 + 824);
        v32 = *(v190 + 792);
        v33 = *(v190 + 768);
        v34 = *(v190 + 760);
        (*(*(v190 + 808) + 96))(v31, *(v190 + 800));
        (*(v33 + 32))(v32, v31, v34);
        if (qword_10117F7A8 != -1)
        {
          swift_once();
        }

        v35 = *(v190 + 792);
        v36 = *(v190 + 784);
        v37 = *(v190 + 768);
        v38 = *(v190 + 760);
        v39 = type metadata accessor for Logger();
        v40 = sub_1000060E4(v39, qword_101218E18);
        v41 = *(v37 + 16);
        *(v190 + 912) = v40;
        v41(v36, v35, v38);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = *(v190 + 880);
          v45 = *(v190 + 872);
          v46 = *(v190 + 784);
          v175 = v41;
          v47 = *(v190 + 768);
          v48 = *(v190 + 760);
          v49 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          *v49 = 136446466;
          *(v49 + 4) = sub_1000105AC(v45, v44, &v191);
          *(v49 + 12) = 2082;
          sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder);
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = v51;
          v185 = *(v47 + 8);
          v185(v46, v48);
          v41 = v175;
          v53 = sub_1000105AC(v50, v52, &v191);

          *(v49 + 14) = v53;
          _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s| ➕📁 Adding playlist folder %{public}s", v49, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v77 = *(v190 + 784);
          v78 = *(v190 + 768);
          v79 = *(v190 + 760);

          v185 = *(v78 + 8);
          v185(v77, v79);
        }

        *(v190 + 920) = v185;
        v80 = *(*(v190 + 504) + 16);
        sub_1007493A0(&qword_1011A0DB8, &type metadata accessor for Playlist.Folder);

        dispatch thunk of Identifiable.id.getter();
        v81._countAndFlagsBits = *(v190 + 368);
        v82 = *(v190 + 376);
        *(v190 + 384) = 0xD000000000000014;
        *(v190 + 392) = 0x8000000100E3E560;
        v81._object = v82;
        String.append(_:)(v81);

        LOBYTE(v82) = sub_10048C9BC(*(v190 + 384), *(v190 + 392), v80);

        if ((v82 & 1) == 0)
        {
          v150 = *(v190 + 792);
          v151 = *(v190 + 768);
          v152 = *(v190 + 760);
          v153 = *(v190 + 752);
          v154 = *(v190 + 744);
          *(v190 + 928) = sub_100742384((*(v190 + 512) + 16), v150, (*(v190 + 520) + 16), *(v190 + 528) + 16, *(v190 + 872), *(v190 + 880));
          dispatch thunk of Identifiable.id.getter();
          v155._countAndFlagsBits = *(v190 + 416);
          v156 = *(v190 + 424);
          *(v190 + 432) = 0xD000000000000014;
          *(v190 + 440) = 0x8000000100E3E560;
          v155._object = v156;
          String.append(_:)(v155);

          v157 = *(v190 + 432);
          v158 = *(v190 + 440);
          swift_beginAccess();
          sub_1003B3170((v190 + 400), v157, v158);
          swift_endAccess();

          v159 = *(v154 + 20);
          v41(v153 + v159, v150, v152);
          (*(v151 + 56))(v153 + v159, 0, 1, v152);
          if (qword_10117F5D8 != -1)
          {
            swift_once();
          }

          v160 = *(v190 + 864);
          v161 = *(v190 + 752);
          v162 = *(v190 + 744);
          v163 = *(v190 + 648);
          v164 = *(v190 + 640);
          v189 = *(v190 + 632);
          v165 = *(v190 + 624);
          v166 = *(v190 + 616);
          v167 = *(v190 + 608);
          *v161 = qword_101218AB8;
          *(v161 + *(v162 + 24)) = 0;
          v168 = *(v164 + 32);

          sub_100749B78(v161, v160 + v168);
          sub_100749D3C(v160, v163, _s9PlaylistsVMa);
          type metadata accessor for TitledSection();
          sub_1007493A0(&unk_101182930, &type metadata accessor for Playlist.Folder.Item);
          MusicLibrarySectionedRequest.init()();
          MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

          MusicLibrarySectionedRequest.library.setter();
          MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
          sub_10018E714(v165);
          sub_10018ECCC();
          sub_10018EFFC();
          MusicLibrarySectionedRequest.filterItems(text:)(*(v163 + *(v164 + 36)));
          MusicLibrarySectionedRequest.limit.setter();
          (*(v166 + 32))(v189, v165, v167);
          sub_100749E0C(v163, _s9PlaylistsVMa);
          v169 = swift_task_alloc();
          *(v190 + 936) = v169;
          *v169 = v190;
          v169[1] = sub_10073E91C;
          v170 = *(v190 + 672);
          v171 = *(v190 + 608);

          return MusicLibrarySectionedRequest.response()(v170, v171);
        }

        v41(*(v190 + 776), *(v190 + 792), *(v190 + 760));

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v83, v84))
        {
          v85 = *(v190 + 832);
          v75 = v185;
          v86 = *(v190 + 808);
          v87 = *(v190 + 800);
          v88 = *(v190 + 792);
          v89 = *(v190 + 776);
          v90 = *(v190 + 760);
LABEL_26:

          v75(v89, v90);
          v75(v88, v90);
          (*(v86 + 8))(v85, v87);
          goto LABEL_5;
        }

        v10 = *(v190 + 880);
        v11 = *(v190 + 872);
        v181 = *(v190 + 832);
        v173 = *(v190 + 808);
        v178 = *(v190 + 800);
        v174 = *(v190 + 792);
        v12 = *(v190 + 776);
        v13 = *(v190 + 760);
        v14 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        *v14 = 136446466;
        *(v14 + 4) = sub_1000105AC(v11, v10, &v191);
        *(v14 + 12) = 2082;
        sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder);
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v16;
        v185(v12, v13);
        v18 = sub_1000105AC(v15, v17, &v191);
        v9 = v190;

        *(v14 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v83, v84, "%{public}s| 📁❌ Skipping folder tab: Duplicate identifier found for %{public}s", v14, 0x16u);
        swift_arrayDestroy();

        v185(v174, v13);
        (*(v173 + 8))(v181, v178);
      }

      else
      {
        if (v30 != *(v190 + 976))
        {
          v108 = v24;
          if (qword_10117F7A8 != -1)
          {
            swift_once();
          }

          v109 = *(v190 + 832);
          v110 = *(v190 + 816);
          v111 = *(v190 + 800);
          v112 = type metadata accessor for Logger();
          sub_1000060E4(v112, qword_101218E18);
          v108(v110, v109, v111);
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.fault.getter();
          v115 = os_log_type_enabled(v113, v114);
          v116 = *(v190 + 832);
          v117 = *(v190 + 816);
          v118 = *(v190 + 808);
          v119 = *(v190 + 800);
          if (v115)
          {
            v187 = *(v190 + 832);
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v191 = v121;
            *v120 = 136446210;
            sub_1007493A0(&qword_101183228, &type metadata accessor for Playlist.Folder.Item);
            v122 = dispatch thunk of CustomStringConvertible.description.getter();
            v124 = v123;
            v125 = *(v118 + 8);
            v125(v117, v119);
            v126 = sub_1000105AC(v122, v124, &v191);

            *(v120 + 4) = v126;
            _os_log_impl(&_mh_execute_header, v113, v114, "Unhandled playlist type: %{public}s", v120, 0xCu);
            sub_10000959C(v121);

            v127 = v187;
          }

          else
          {

            v125 = *(v118 + 8);
            v125(v117, v119);
            v127 = v116;
          }

          v125(v127, v119);
          v9 = v190;
          v125(*(v190 + 824), *(v190 + 800));
          goto LABEL_5;
        }

        v54 = *(v190 + 824);
        v55 = *(v190 + 600);
        v56 = *(v190 + 576);
        v57 = *(v190 + 568);
        (*(*(v190 + 808) + 96))(v54, *(v190 + 800));
        (*(v56 + 32))(v55, v54, v57);
        if (qword_10117F7A8 != -1)
        {
          swift_once();
        }

        v58 = *(v190 + 600);
        v59 = *(v190 + 592);
        v60 = *(v190 + 576);
        v61 = *(v190 + 568);
        v62 = type metadata accessor for Logger();
        sub_1000060E4(v62, qword_101218E18);
        v182 = *(v60 + 16);
        v182(v59, v58, v61);

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = *(v190 + 880);
          v66 = *(v190 + 872);
          v67 = *(v190 + 592);
          v68 = *(v190 + 576);
          v69 = *(v190 + 568);
          v70 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          *v70 = 136446466;
          *(v70 + 4) = sub_1000105AC(v66, v65, &v191);
          *(v70 + 12) = 2082;
          sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist);
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v73 = v72;
          v74 = v69;
          v75 = *(v68 + 8);
          v75(v67, v74);
          v76 = sub_1000105AC(v71, v73, &v191);

          *(v70 + 14) = v76;
          _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s| ➕ Adding playlist %{public}s", v70, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v91 = *(v190 + 592);
          v92 = *(v190 + 576);
          v93 = *(v190 + 568);

          v75 = *(v92 + 8);
          v75(v91, v93);
        }

        v94 = *(*(v190 + 504) + 16);
        sub_1007493A0(&unk_1011A4BD0, &type metadata accessor for Playlist);

        dispatch thunk of Identifiable.id.getter();
        v95._countAndFlagsBits = *(v190 + 288);
        v96 = *(v190 + 296);
        *(v190 + 304) = 0xD000000000000014;
        *(v190 + 312) = 0x8000000100E3E560;
        v95._object = v96;
        String.append(_:)(v95);

        v97 = sub_10048C9BC(*(v190 + 304), *(v190 + 312), v94);

        if ((v97 & 1) == 0)
        {
          v188 = v75;
          v128 = sub_1007429EC((*(v190 + 512) + 16), *(v190 + 600), (*(v190 + 520) + 16), *(v190 + 528) + 16, *(v190 + 872), *(v190 + 880));
          dispatch thunk of Identifiable.id.getter();
          v129._countAndFlagsBits = *(v190 + 336);
          v130 = *(v190 + 344);
          *(v190 + 352) = 0xD000000000000014;
          *(v190 + 360) = 0x8000000100E3E560;
          v129._object = v130;
          String.append(_:)(v129);

          v131 = *(v190 + 352);
          v132 = *(v190 + 360);
          swift_beginAccess();
          sub_1003B3170((v190 + 320), v131, v132);
          swift_endAccess();

          v133 = v128;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v190 + 448) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v190 + 448) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v134 = *(v190 + 552);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v172 = *(v190 + 448);
          swift_beginAccess();
          sub_1003B4FFC(&v191, v133);
          swift_endAccess();

          v135 = *(v134 + *(_s19PlaylistTabsRequestVMa() + 20));
          v136 = *(v190 + 832);
          v137 = *(v190 + 800);
          v138 = *(v190 + 600);
          v139 = *(v190 + 568);
          v140 = (*(v190 + 808) + 8);
          if (v135)
          {
            _s11PlaylistTabCMa();
            v141 = v133;
            v142 = v135;
            v143 = static NSObject.== infix(_:_:)();
            v188(v138, v139);
            (*v140)(v136, v137);

            if (v143)
            {
              v9 = v190;
              v144 = *(v190 + 560);
              v145 = *(v144 + 16);
              *(v144 + 16) = v141;
            }

            else
            {

              v9 = v190;
            }
          }

          else
          {
            v188(v138, v139);
            (*v140)(v136, v137);

            v9 = v190;
          }

          goto LABEL_5;
        }

        v182(*(v190 + 584), *(v190 + 600), *(v190 + 568));

        v83 = Logger.logObject.getter();
        v98 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v83, v98))
        {
          v85 = *(v190 + 832);
          v86 = *(v190 + 808);
          v87 = *(v190 + 800);
          v88 = *(v190 + 600);
          v89 = *(v190 + 584);
          v90 = *(v190 + 568);
          goto LABEL_26;
        }

        v99 = *(v190 + 880);
        v100 = *(v190 + 872);
        v186 = *(v190 + 832);
        v176 = *(v190 + 808);
        v183 = *(v190 + 800);
        v180 = *(v190 + 600);
        v101 = *(v190 + 584);
        v102 = *(v190 + 568);
        v103 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        *v103 = 136446466;
        *(v103 + 4) = sub_1000105AC(v100, v99, &v191);
        *(v103 + 12) = 2082;
        sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist);
        v104 = dispatch thunk of CustomStringConvertible.description.getter();
        v106 = v105;
        v75(v101, v102);
        v107 = sub_1000105AC(v104, v106, &v191);
        v9 = v190;

        *(v103 + 14) = v107;
        _os_log_impl(&_mh_execute_header, v83, v98, "%{public}s| ❌ Skipping playlist: Duplicate identifier found for %{public}s", v103, 0x16u);
        swift_arrayDestroy();

        v75(v180, v102);
        (*(v176 + 8))(v186, v183);
      }

LABEL_5:
      v19 = *(v9 + 968);
      v20 = *(v9 + 856);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v20 + v19) != *(v9 + 464));
  }

  sub_1000095E8(*(v9 + 856), &unk_1011828E0);

LABEL_41:

  v148 = *(v9 + 8);

  return v148(v172);
}

uint64_t sub_10073E91C()
{
  v2 = *(*v1 + 632);
  v3 = *(*v1 + 616);
  v4 = *(*v1 + 608);
  *(*v1 + 944) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100740AA0;
  }

  else
  {
    v5 = sub_10073EA8C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10073EA8C()
{
  v41 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = MusicLibrarySectionedResponse.sections.getter();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    v5 = v0[92];
    v6 = v0[90];
    v7 = v0[89];
    v8 = v0[88];
    v9 = v0[87];
    v10 = v0[86];
    v11 = v0[85];
    (*(v10 + 16))(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v11);

    MusicLibrarySection.items.getter();
    (*(v10 + 8))(v9, v11);
    (*(v6 + 56))(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
  }

  else
  {
    v12 = v0[90];
    v13 = v0[89];
    v14 = v0[88];

    (*(v12 + 56))(v14, 1, 1, v13);
    sub_1007493A0(&unk_1011913F0, &type metadata accessor for Playlist.Folder.Item);
    MusicItemCollection.init(arrayLiteral:)();
    if ((*(v12 + 48))(v14, 1, v13) != 1)
    {
      sub_1000095E8(v0[88], &qword_1011A0DB0);
    }
  }

  v15 = v0[116];

  v16 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[116];
    v20 = v0[110];
    v21 = v0[109];
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v22 = 136446466;
    *(v22 + 4) = sub_1000105AC(v21, v20, &v40);
    *(v22 + 12) = 2082;
    v23 = v19;
    v24 = [v23 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_1000105AC(v25, v27, &v40);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s|— 🔨📁 Building tabs for folder=%{public}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v29 = v0[62];
  v30 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v31 = swift_task_alloc();
    v0[119] = v31;
    *v31 = v0;
    v31[1] = sub_10073EE8C;
    v32 = v0[92];
    v33 = v0[70];
    v34 = v0[68];
    v35 = v0[67];
    v36 = v0[66];
    v37 = v0[65];
    v38 = v0[63];
    v39 = v0[64];
    v43 = v0[69];
    v44 = v33;

    sub_10073CD44(v32, v30, v38, v39, v37, v36, v35, v34);
  }
}

uint64_t sub_10073EE8C(uint64_t a1)
{
  *(*v1 + 960) = a1;

  return _swift_task_switch(sub_10073EF8C, 0, 0);
}

uint64_t sub_10073EF8C()
{
  v246 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v243 = v0;
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[110];
    v4 = v0[109];
    v5 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_1000105AC(v4, v3, &v245);
    *(v5 + 12) = 2082;
    sub_100009F78(0, &qword_101181F70);
    v6 = Array.description.getter();
    v8 = sub_1000105AC(v6, v7, &v245);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s|— 🔨 Converted tabs=%{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[120];
  v10 = v0[116];
  v11 = v0[111];
  v12 = v0[92];
  v13 = v0;
  v14 = v0[91];
  v15 = v0[89];
  v16 = v0[66];
  swift_beginAccess();
  v17 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v245 = *(v16 + 48);
  *(v16 + 48) = 0x8000000000000000;
  sub_1006C72F8(v9, v17, isUniquelyReferenced_nonNull_native);

  *(v16 + 48) = v245;
  swift_endAccess();
  v11(v14, v12, v15);

  v19 = v17;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v231 = v13[116];
    v22 = v13[110];
    v23 = v13[109];
    v236 = v13[92];
    v24 = v13[91];
    v25 = v13[90];
    v26 = v13[89];
    v27 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    *v27 = 136446722;
    *(v27 + 4) = sub_1000105AC(v23, v22, &v245);
    *(v27 + 12) = 2050;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v28 = dispatch thunk of Collection.distance(from:to:)();
    v29 = *(v25 + 8);
    v29(v24, v26);
    *(v27 + 14) = v28;
    *(v27 + 22) = 2082;
    v30 = v231;
    v31 = [v30 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_1000105AC(v32, v34, &v245);

    *(v27 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s╰ ✅ Added %{public}ld tabs to %{public}s", v27, 0x20u);
    swift_arrayDestroy();

    v29(v236, v26);
  }

  else
  {
    v36 = v13[92];
    v37 = v13[89];
    v38 = *(v13[90] + 8);
    v38(v13[91], v37);

    v38(v36, v37);
  }

  v39 = v13;
  v40 = v13[116];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v13[56] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13[56] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v41 = v13[116];
  v42 = v39[115];
  v43 = v39[104];
  v44 = v39[101];
  v45 = v39[100];
  v46 = v39[99];
  v47 = v243[95];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v227 = v243[56];
  swift_beginAccess();
  sub_1003B4FFC(&v245, v41);
  swift_endAccess();

  v48 = v47;
  v49 = v243;
  v42(v46, v48);
  (*(v44 + 8))(v43, v45);
  v50 = *(v243 + 242);
  v51 = v243[107];
  dispatch thunk of Collection.endIndex.getter();
  if (*(v51 + v50) != v243[58])
  {
    while (1)
    {
      v56 = v49[105];
      v237 = v49[104];
      v57 = v49[101];
      v232 = v49[100];
      v58 = dispatch thunk of Collection.subscript.read();
      v59 = *(v57 + 16);
      v59(v56);
      v58(v243 + 2, 0);
      v49 = v243;
      dispatch thunk of Collection.formIndex(after:)();
      (*(v57 + 32))(v237, v56, v232);
      v60 = static Task<>.isCancelled.getter();
      v61 = v243[101];
      v62 = v243[100];
      if (v60)
      {
        v199 = v243[107];
        v200 = v243[104];

        (*(v61 + 8))(v200, v62);
        sub_1000095E8(v199, &unk_1011828E0);
        goto LABEL_49;
      }

      v63 = *(v243 + 243);
      v64 = v243[103];
      (v59)(v64, v243[104], v243[100]);
      v65 = (*(v61 + 88))(v64, v62);
      if (v65 == v63)
      {
        break;
      }

      if (v65 != *(v243 + 244))
      {
        v134 = v59;
        if (qword_10117F7A8 != -1)
        {
          swift_once();
        }

        v135 = v243[104];
        v136 = v243[102];
        v137 = v243[100];
        v138 = type metadata accessor for Logger();
        sub_1000060E4(v138, qword_101218E18);
        v134(v136, v135, v137);
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.fault.getter();
        v141 = os_log_type_enabled(v139, v140);
        v142 = v243[104];
        v143 = v243[102];
        v144 = v243[101];
        v145 = v243[100];
        if (v141)
        {
          v146 = swift_slowAlloc();
          v245 = swift_slowAlloc();
          v241 = v142;
          v147 = v245;
          *v146 = 136446210;
          sub_1007493A0(&qword_101183228, &type metadata accessor for Playlist.Folder.Item);
          v148 = dispatch thunk of CustomStringConvertible.description.getter();
          v150 = v149;
          v52 = *(v144 + 8);
          v52(v143, v145);
          v151 = v148;
          v49 = v243;
          v152 = sub_1000105AC(v151, v150, &v245);

          *(v146 + 4) = v152;
          _os_log_impl(&_mh_execute_header, v139, v140, "Unhandled playlist type: %{public}s", v146, 0xCu);
          sub_10000959C(v147);

          v53 = v241;
        }

        else
        {

          v52 = *(v144 + 8);
          v52(v143, v145);
          v53 = v142;
        }

        v52(v53, v145);
        v52(v49[103], v49[100]);
        goto LABEL_13;
      }

      v92 = v243[103];
      v93 = v243[75];
      v94 = v243[72];
      v95 = v243[71];
      (*(v243[101] + 96))(v92, v243[100]);
      (*(v94 + 32))(v93, v92, v95);
      if (qword_10117F7A8 != -1)
      {
        swift_once();
      }

      v96 = v243[75];
      v97 = v243[74];
      v98 = v243[72];
      v99 = v243[71];
      v100 = type metadata accessor for Logger();
      sub_1000060E4(v100, qword_101218E18);
      v101 = *(v98 + 16);
      v101(v97, v96, v99);

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = v243[110];
        v105 = v243[109];
        v106 = v243[74];
        v107 = v243[72];
        v233 = v101;
        v108 = v243[71];
        v109 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        *v109 = 136446466;
        *(v109 + 4) = sub_1000105AC(v105, v104, &v245);
        *(v109 + 12) = 2082;
        sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist);
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v111;
        v113 = v106;
        v49 = v243;
        v114 = v108;
        v101 = v233;
        v239 = *(v107 + 8);
        v239(v113, v114);
        v115 = sub_1000105AC(v110, v112, &v245);

        *(v109 + 14) = v115;
        _os_log_impl(&_mh_execute_header, v102, v103, "%{public}s| ➕ Adding playlist %{public}s", v109, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v159 = v243[74];
        v160 = v243[72];
        v161 = v243[71];

        v239 = *(v160 + 8);
        v239(v159, v161);
      }

      v162 = *(v49[63] + 16);
      sub_1007493A0(&unk_1011A4BD0, &type metadata accessor for Playlist);

      dispatch thunk of Identifiable.id.getter();
      v163._countAndFlagsBits = v49[36];
      v164 = v49[37];
      v49[38] = 0xD000000000000014;
      v49[39] = 0x8000000100E3E560;
      v163._object = v164;
      String.append(_:)(v163);

      v165 = sub_10048C9BC(v49[38], v49[39], v162);

      if (v165)
      {
        v101(v49[73], v49[75], v49[71]);

        v166 = Logger.logObject.getter();
        v167 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v166, v167))
        {
          v153 = v49[104];
          v154 = v49[101];
          v155 = v49[100];
          v177 = v49[75];
          v178 = v49[73];
          v179 = v49[71];

          v239(v178, v179);
          v239(v177, v179);
          goto LABEL_40;
        }

        v168 = v49[110];
        v169 = v49[109];
        v234 = v49[100];
        v235 = v49[104];
        v229 = v49[75];
        v230 = v49[101];
        v170 = v49[73];
        v171 = v49[71];
        v172 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        *v172 = 136446466;
        *(v172 + 4) = sub_1000105AC(v169, v168, &v245);
        *(v172 + 12) = 2082;
        sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist);
        v173 = dispatch thunk of CustomStringConvertible.description.getter();
        v175 = v174;
        v239(v170, v171);
        v176 = sub_1000105AC(v173, v175, &v245);

        *(v172 + 14) = v176;
        _os_log_impl(&_mh_execute_header, v166, v167, "%{public}s| ❌ Skipping playlist: Duplicate identifier found for %{public}s", v172, 0x16u);
        swift_arrayDestroy();

        v239(v229, v171);
        goto LABEL_38;
      }

      v180 = sub_1007429EC((v49[64] + 16), v49[75], (v49[65] + 16), v49[66] + 16, v49[109], v49[110]);
      dispatch thunk of Identifiable.id.getter();
      v181._countAndFlagsBits = v49[42];
      v182 = v49[43];
      v49[44] = 0xD000000000000014;
      v49[45] = 0x8000000100E3E560;
      v181._object = v182;
      String.append(_:)(v181);

      v183 = v49[44];
      v184 = v49[45];
      swift_beginAccess();
      sub_1003B3170(v49 + 40, v183, v184);
      swift_endAccess();

      v185 = v180;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v49[56] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[56] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v186 = v49[69];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v227 = v49[56];
      swift_beginAccess();
      sub_1003B4FFC(&v245, v185);
      swift_endAccess();

      v187 = _s19PlaylistTabsRequestVMa();
      v188 = v49;
      v189 = *(v186 + *(v187 + 20));
      v190 = v188[104];
      v191 = v188[100];
      v192 = v188[75];
      v193 = v188[71];
      v194 = (v188[101] + 8);
      if (!v189)
      {
        v239(v188[75], v188[71]);
        (*v194)(v190, v191);
LABEL_47:
        v49 = v243;

        goto LABEL_13;
      }

      _s11PlaylistTabCMa();
      v185 = v185;
      v195 = v189;
      v196 = static NSObject.== infix(_:_:)();
      v239(v192, v193);
      (*v194)(v190, v191);

      if ((v196 & 1) == 0)
      {
        goto LABEL_47;
      }

      v49 = v243;
      v197 = v243[70];
      v198 = *(v197 + 16);
      *(v197 + 16) = v185;

LABEL_13:
      v54 = *(v49 + 242);
      v55 = v49[107];
      dispatch thunk of Collection.endIndex.getter();
      if (*(v55 + v54) == v49[58])
      {
        goto LABEL_9;
      }
    }

    v66 = v243[103];
    v67 = v243[99];
    v68 = v243[96];
    v69 = v243[95];
    (*(v243[101] + 96))(v66, v243[100]);
    (*(v68 + 32))(v67, v66, v69);
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v70 = v243[99];
    v71 = v243[98];
    v72 = v243[96];
    v73 = v243[95];
    v74 = type metadata accessor for Logger();
    v75 = sub_1000060E4(v74, qword_101218E18);
    v76 = *(v72 + 16);
    v243[114] = v75;
    v76(v71, v70, v73);

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = v243[110];
      v80 = v243[109];
      v81 = v243[98];
      v238 = v76;
      v82 = v243[96];
      v83 = v243[95];
      v84 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      *v84 = 136446466;
      *(v84 + 4) = sub_1000105AC(v80, v79, &v245);
      *(v84 + 12) = 2082;
      sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v88 = *(v82 + 8);
      v89 = v81;
      v49 = v243;
      v88(v89, v83);
      v76 = v238;
      v90 = sub_1000105AC(v85, v87, &v245);

      *(v84 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v77, v78, "%{public}s| ➕📁 Adding playlist folder %{public}s", v84, 0x16u);
      swift_arrayDestroy();

      v91 = v88;
    }

    else
    {
      v116 = v243[98];
      v117 = v243[96];
      v118 = v243[95];

      v91 = *(v117 + 8);
      v91(v116, v118);
    }

    v49[115] = v91;
    v119 = *(v49[63] + 16);
    sub_1007493A0(&qword_1011A0DB8, &type metadata accessor for Playlist.Folder);

    dispatch thunk of Identifiable.id.getter();
    v120._countAndFlagsBits = v49[46];
    v121 = v49[47];
    v49[48] = 0xD000000000000014;
    v49[49] = 0x8000000100E3E560;
    v120._object = v121;
    String.append(_:)(v120);

    LOBYTE(v121) = sub_10048C9BC(v49[48], v49[49], v119);

    v122 = v49[110];
    if ((v121 & 1) == 0)
    {
      v203 = v49[109];
      v204 = v49[99];
      v205 = v49;
      v206 = v49[96];
      v207 = v205[95];
      v242 = v76;
      v208 = v205[94];
      v209 = v205[93];
      v205[116] = sub_100742384((v205[64] + 16), v204, (v205[65] + 16), v205[66] + 16, v203, v122);
      dispatch thunk of Identifiable.id.getter();
      v210._countAndFlagsBits = v205[52];
      v211 = v205[53];
      v205[54] = 0xD000000000000014;
      v205[55] = 0x8000000100E3E560;
      v210._object = v211;
      String.append(_:)(v210);

      v212 = v205[54];
      v213 = v205[55];
      swift_beginAccess();
      sub_1003B3170(v205 + 50, v212, v213);
      swift_endAccess();

      v214 = *(v209 + 20);
      v242(v208 + v214, v204, v207);
      (*(v206 + 56))(v208 + v214, 0, 1, v207);
      if (qword_10117F5D8 != -1)
      {
        swift_once();
      }

      v215 = v205[108];
      v216 = v205[94];
      v217 = v205[93];
      v218 = v205[81];
      v219 = v205[80];
      v244 = v205[79];
      v220 = v205[78];
      v221 = v205[77];
      v222 = v205[76];
      *v216 = qword_101218AB8;
      *(v216 + *(v217 + 24)) = 0;
      v223 = *(v219 + 32);

      sub_100749B78(v216, v215 + v223);
      sub_100749D3C(v215, v218, _s9PlaylistsVMa);
      type metadata accessor for TitledSection();
      sub_1007493A0(&unk_101182930, &type metadata accessor for Playlist.Folder.Item);
      MusicLibrarySectionedRequest.init()();
      MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

      MusicLibrarySectionedRequest.library.setter();
      MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      sub_10018E714(v220);
      sub_10018ECCC();
      sub_10018EFFC();
      MusicLibrarySectionedRequest.filterItems(text:)(*(v218 + *(v219 + 36)));
      MusicLibrarySectionedRequest.limit.setter();
      (*(v221 + 32))(v244, v220, v222);
      sub_100749E0C(v218, _s9PlaylistsVMa);
      v224 = swift_task_alloc();
      v205[117] = v224;
      *v224 = v205;
      v224[1] = sub_10073E91C;
      v225 = v205[84];
      v226 = v205[76];

      return MusicLibrarySectionedRequest.response()(v225, v226);
    }

    v76(v49[97], v49[99], v49[95]);

    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v123, v124))
    {
      v153 = v49[104];
      v154 = v49[101];
      v155 = v49[100];
      v156 = v49[99];
      v157 = v49[97];
      v158 = v49[95];

      v91(v157, v158);
      v91(v156, v158);
LABEL_40:
      (*(v154 + 8))(v153, v155);
      goto LABEL_13;
    }

    v125 = v49[110];
    v240 = v91;
    v126 = v49[109];
    v234 = v49[100];
    v235 = v49[104];
    v228 = v49[99];
    v230 = v49[101];
    v127 = v49[97];
    v128 = v49[95];
    v129 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    *v129 = 136446466;
    *(v129 + 4) = sub_1000105AC(v126, v125, &v245);
    *(v129 + 12) = 2082;
    sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder);
    v130 = dispatch thunk of CustomStringConvertible.description.getter();
    v132 = v131;
    v240(v127, v128);
    v133 = sub_1000105AC(v130, v132, &v245);

    *(v129 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v123, v124, "%{public}s| 📁❌ Skipping folder tab: Duplicate identifier found for %{public}s", v129, 0x16u);
    swift_arrayDestroy();

    v240(v228, v128);
LABEL_38:
    (*(v230 + 8))(v235, v234);
    goto LABEL_13;
  }

LABEL_9:
  sub_1000095E8(v49[107], &unk_1011828E0);

LABEL_49:

  v201 = v49[1];

  return v201(v227);
}

uint64_t sub_100740AA0()
{
  v223 = v0;
  v1 = *(v0 + 928);

  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v220 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 944);
    v6 = *(v0 + 928);
    v7 = *(v220 + 880);
    v8 = *(v220 + 872);
    v9 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    *v9 = 136446722;
    *(v9 + 4) = sub_1000105AC(v8, v7, &v222);
    *(v9 + 12) = 2082;
    v10 = v6;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1000105AC(v12, v14, &v222);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2082;
    *(v220 + 456) = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000105AC(v16, v17, &v222);
    v0 = v220;

    *(v9 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s | 📁❌ Failed to query children for folder=%{public}s. Error=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = *(v0 + 928);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 448) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 448) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v20 = *(v0 + 928);
  v21 = *(v0 + 920);
  v22 = *(v0 + 832);
  v23 = *(v0 + 808);
  v24 = *(v0 + 800);
  v25 = *(v0 + 792);
  v26 = *(v220 + 760);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v206 = *(v220 + 448);
  swift_beginAccess();
  sub_1003B4FFC(&v222, v20);
  swift_endAccess();

  v27 = v26;
  v28 = v220;
  v21(v25, v27);
  (*(v23 + 8))(v22, v24);
  v29 = *(v220 + 968);
  v30 = *(v220 + 856);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v30 + v29) != *(v220 + 464))
  {
    while (1)
    {
      v35 = *(v28 + 840);
      v214 = *(v28 + 832);
      v36 = *(v28 + 808);
      v210 = *(v28 + 800);
      v37 = dispatch thunk of Collection.subscript.read();
      v38 = *(v36 + 16);
      v38(v35);
      v37(v220 + 16, 0);
      v28 = v220;
      dispatch thunk of Collection.formIndex(after:)();
      (*(v36 + 32))(v214, v35, v210);
      v39 = static Task<>.isCancelled.getter();
      v40 = *(v220 + 808);
      v41 = *(v220 + 800);
      if (v39)
      {
        v178 = *(v220 + 856);
        v179 = *(v220 + 832);

        (*(v40 + 8))(v179, v41);
        sub_1000095E8(v178, &unk_1011828E0);
        goto LABEL_47;
      }

      v42 = *(v220 + 972);
      v43 = *(v220 + 824);
      (v38)(v43, *(v220 + 832), *(v220 + 800));
      v44 = (*(v40 + 88))(v43, v41);
      if (v44 == v42)
      {
        break;
      }

      if (v44 != *(v220 + 976))
      {
        v113 = v38;
        if (qword_10117F7A8 != -1)
        {
          swift_once();
        }

        v114 = *(v220 + 832);
        v115 = *(v220 + 816);
        v116 = *(v220 + 800);
        v117 = type metadata accessor for Logger();
        sub_1000060E4(v117, qword_101218E18);
        v113(v115, v114, v116);
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.fault.getter();
        v120 = os_log_type_enabled(v118, v119);
        v121 = *(v220 + 832);
        v122 = *(v220 + 816);
        v123 = *(v220 + 808);
        v124 = *(v220 + 800);
        if (v120)
        {
          v125 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v218 = v121;
          v126 = v222;
          *v125 = 136446210;
          sub_1007493A0(&qword_101183228, &type metadata accessor for Playlist.Folder.Item);
          v127 = dispatch thunk of CustomStringConvertible.description.getter();
          v129 = v128;
          v31 = *(v123 + 8);
          v31(v122, v124);
          v130 = v127;
          v28 = v220;
          v131 = sub_1000105AC(v130, v129, &v222);

          *(v125 + 4) = v131;
          _os_log_impl(&_mh_execute_header, v118, v119, "Unhandled playlist type: %{public}s", v125, 0xCu);
          sub_10000959C(v126);

          v32 = v218;
        }

        else
        {

          v31 = *(v123 + 8);
          v31(v122, v124);
          v32 = v121;
        }

        v31(v32, v124);
        v31(*(v28 + 824), *(v28 + 800));
        goto LABEL_11;
      }

      v71 = *(v220 + 824);
      v72 = *(v220 + 600);
      v73 = *(v220 + 576);
      v74 = *(v220 + 568);
      (*(*(v220 + 808) + 96))(v71, *(v220 + 800));
      (*(v73 + 32))(v72, v71, v74);
      if (qword_10117F7A8 != -1)
      {
        swift_once();
      }

      v75 = *(v220 + 600);
      v76 = *(v220 + 592);
      v77 = *(v220 + 576);
      v78 = *(v220 + 568);
      v79 = type metadata accessor for Logger();
      sub_1000060E4(v79, qword_101218E18);
      v80 = *(v77 + 16);
      v80(v76, v75, v78);

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = *(v220 + 880);
        v84 = *(v220 + 872);
        v85 = *(v220 + 592);
        v86 = *(v220 + 576);
        v211 = v80;
        v87 = *(v220 + 568);
        v88 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *v88 = 136446466;
        *(v88 + 4) = sub_1000105AC(v84, v83, &v222);
        *(v88 + 12) = 2082;
        sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        v92 = v85;
        v28 = v220;
        v93 = v87;
        v80 = v211;
        v216 = *(v86 + 8);
        v216(v92, v93);
        v94 = sub_1000105AC(v89, v91, &v222);

        *(v88 + 14) = v94;
        _os_log_impl(&_mh_execute_header, v81, v82, "%{public}s| ➕ Adding playlist %{public}s", v88, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v138 = *(v220 + 592);
        v139 = *(v220 + 576);
        v140 = *(v220 + 568);

        v216 = *(v139 + 8);
        v216(v138, v140);
      }

      v141 = *(*(v28 + 504) + 16);
      sub_1007493A0(&unk_1011A4BD0, &type metadata accessor for Playlist);

      dispatch thunk of Identifiable.id.getter();
      v142._countAndFlagsBits = *(v28 + 288);
      v143 = *(v28 + 296);
      *(v28 + 304) = 0xD000000000000014;
      *(v28 + 312) = 0x8000000100E3E560;
      v142._object = v143;
      String.append(_:)(v142);

      v144 = sub_10048C9BC(*(v28 + 304), *(v28 + 312), v141);

      if (v144)
      {
        v80(*(v28 + 584), *(v28 + 600), *(v28 + 568));

        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v145, v146))
        {
          v132 = *(v28 + 832);
          v133 = *(v28 + 808);
          v134 = *(v28 + 800);
          v156 = *(v28 + 600);
          v157 = *(v28 + 584);
          v158 = *(v28 + 568);

          v216(v157, v158);
          v216(v156, v158);
          goto LABEL_38;
        }

        v147 = *(v28 + 880);
        v148 = *(v28 + 872);
        v212 = *(v28 + 800);
        v213 = *(v28 + 832);
        v208 = *(v28 + 600);
        v209 = *(v28 + 808);
        v149 = *(v28 + 584);
        v150 = *(v28 + 568);
        v151 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *v151 = 136446466;
        *(v151 + 4) = sub_1000105AC(v148, v147, &v222);
        *(v151 + 12) = 2082;
        sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist);
        v152 = dispatch thunk of CustomStringConvertible.description.getter();
        v154 = v153;
        v216(v149, v150);
        v155 = sub_1000105AC(v152, v154, &v222);

        *(v151 + 14) = v155;
        _os_log_impl(&_mh_execute_header, v145, v146, "%{public}s| ❌ Skipping playlist: Duplicate identifier found for %{public}s", v151, 0x16u);
        swift_arrayDestroy();

        v216(v208, v150);
        goto LABEL_36;
      }

      v159 = sub_1007429EC((*(v28 + 512) + 16), *(v28 + 600), (*(v28 + 520) + 16), *(v28 + 528) + 16, *(v28 + 872), *(v28 + 880));
      dispatch thunk of Identifiable.id.getter();
      v160._countAndFlagsBits = *(v28 + 336);
      v161 = *(v28 + 344);
      *(v28 + 352) = 0xD000000000000014;
      *(v28 + 360) = 0x8000000100E3E560;
      v160._object = v161;
      String.append(_:)(v160);

      v162 = *(v28 + 352);
      v163 = *(v28 + 360);
      swift_beginAccess();
      sub_1003B3170((v28 + 320), v162, v163);
      swift_endAccess();

      v164 = v159;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v28 + 448) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v28 + 448) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v165 = *(v28 + 552);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v206 = *(v28 + 448);
      swift_beginAccess();
      sub_1003B4FFC(&v222, v164);
      swift_endAccess();

      v166 = _s19PlaylistTabsRequestVMa();
      v167 = v28;
      v168 = *(v165 + *(v166 + 20));
      v169 = v167[104];
      v170 = v167[100];
      v171 = v167[75];
      v172 = v167[71];
      v173 = (v167[101] + 8);
      if (!v168)
      {
        v216(v167[75], v167[71]);
        (*v173)(v169, v170);
LABEL_45:
        v28 = v220;

        goto LABEL_11;
      }

      _s11PlaylistTabCMa();
      v164 = v164;
      v174 = v168;
      v175 = static NSObject.== infix(_:_:)();
      v216(v171, v172);
      (*v173)(v169, v170);

      if ((v175 & 1) == 0)
      {
        goto LABEL_45;
      }

      v28 = v220;
      v176 = *(v220 + 560);
      v177 = *(v176 + 16);
      *(v176 + 16) = v164;

LABEL_11:
      v33 = *(v28 + 968);
      v34 = *(v28 + 856);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v34 + v33) == *(v28 + 464))
      {
        goto LABEL_7;
      }
    }

    v45 = *(v220 + 824);
    v46 = *(v220 + 792);
    v47 = *(v220 + 768);
    v48 = *(v220 + 760);
    (*(*(v220 + 808) + 96))(v45, *(v220 + 800));
    (*(v47 + 32))(v46, v45, v48);
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v49 = *(v220 + 792);
    v50 = *(v220 + 784);
    v51 = *(v220 + 768);
    v52 = *(v220 + 760);
    v53 = type metadata accessor for Logger();
    v54 = sub_1000060E4(v53, qword_101218E18);
    v55 = *(v51 + 16);
    *(v220 + 912) = v54;
    v55(v50, v49, v52);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v220 + 880);
      v59 = *(v220 + 872);
      v60 = *(v220 + 784);
      v215 = v55;
      v61 = *(v220 + 768);
      v62 = *(v220 + 760);
      v63 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *v63 = 136446466;
      *(v63 + 4) = sub_1000105AC(v59, v58, &v222);
      *(v63 + 12) = 2082;
      sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v67 = *(v61 + 8);
      v68 = v60;
      v28 = v220;
      v67(v68, v62);
      v55 = v215;
      v69 = sub_1000105AC(v64, v66, &v222);

      *(v63 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s| ➕📁 Adding playlist folder %{public}s", v63, 0x16u);
      swift_arrayDestroy();

      v70 = v67;
    }

    else
    {
      v95 = *(v220 + 784);
      v96 = *(v220 + 768);
      v97 = *(v220 + 760);

      v70 = *(v96 + 8);
      v70(v95, v97);
    }

    *(v28 + 920) = v70;
    v98 = *(*(v28 + 504) + 16);
    sub_1007493A0(&qword_1011A0DB8, &type metadata accessor for Playlist.Folder);

    dispatch thunk of Identifiable.id.getter();
    v99._countAndFlagsBits = *(v28 + 368);
    v100 = *(v28 + 376);
    *(v28 + 384) = 0xD000000000000014;
    *(v28 + 392) = 0x8000000100E3E560;
    v99._object = v100;
    String.append(_:)(v99);

    LOBYTE(v100) = sub_10048C9BC(*(v28 + 384), *(v28 + 392), v98);

    v101 = *(v28 + 880);
    if ((v100 & 1) == 0)
    {
      v182 = *(v28 + 872);
      v183 = *(v28 + 792);
      v184 = v28;
      v185 = *(v28 + 768);
      v186 = v184[95];
      v219 = v55;
      v187 = v184[94];
      v188 = v184[93];
      v184[116] = sub_100742384((v184[64] + 16), v183, (v184[65] + 16), v184[66] + 16, v182, v101);
      dispatch thunk of Identifiable.id.getter();
      v189._countAndFlagsBits = v184[52];
      v190 = v184[53];
      v184[54] = 0xD000000000000014;
      v184[55] = 0x8000000100E3E560;
      v189._object = v190;
      String.append(_:)(v189);

      v191 = v184[54];
      v192 = v184[55];
      swift_beginAccess();
      sub_1003B3170(v184 + 50, v191, v192);
      swift_endAccess();

      v193 = *(v188 + 20);
      v219(v187 + v193, v183, v186);
      (*(v185 + 56))(v187 + v193, 0, 1, v186);
      if (qword_10117F5D8 != -1)
      {
        swift_once();
      }

      v194 = v184[108];
      v195 = v184[94];
      v196 = v184[93];
      v197 = v184[81];
      v198 = v184[80];
      v221 = v184[79];
      v199 = v184[78];
      v200 = v184[77];
      v201 = v184[76];
      *v195 = qword_101218AB8;
      *(v195 + *(v196 + 24)) = 0;
      v202 = *(v198 + 32);

      sub_100749B78(v195, v194 + v202);
      sub_100749D3C(v194, v197, _s9PlaylistsVMa);
      type metadata accessor for TitledSection();
      sub_1007493A0(&unk_101182930, &type metadata accessor for Playlist.Folder.Item);
      MusicLibrarySectionedRequest.init()();
      MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

      MusicLibrarySectionedRequest.library.setter();
      MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      sub_10018E714(v199);
      sub_10018ECCC();
      sub_10018EFFC();
      MusicLibrarySectionedRequest.filterItems(text:)(*(v197 + *(v198 + 36)));
      MusicLibrarySectionedRequest.limit.setter();
      (*(v200 + 32))(v221, v199, v201);
      sub_100749E0C(v197, _s9PlaylistsVMa);
      v203 = swift_task_alloc();
      v184[117] = v203;
      *v203 = v184;
      v203[1] = sub_10073E91C;
      v204 = v184[84];
      v205 = v184[76];

      return MusicLibrarySectionedRequest.response()(v204, v205);
    }

    v55(*(v28 + 776), *(v28 + 792), *(v28 + 760));

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v102, v103))
    {
      v132 = *(v28 + 832);
      v133 = *(v28 + 808);
      v134 = *(v28 + 800);
      v135 = *(v28 + 792);
      v136 = *(v28 + 776);
      v137 = *(v28 + 760);

      v70(v136, v137);
      v70(v135, v137);
LABEL_38:
      (*(v133 + 8))(v132, v134);
      goto LABEL_11;
    }

    v104 = *(v28 + 880);
    v217 = v70;
    v105 = *(v28 + 872);
    v212 = *(v28 + 800);
    v213 = *(v28 + 832);
    v207 = *(v28 + 792);
    v209 = *(v28 + 808);
    v106 = *(v28 + 776);
    v107 = *(v28 + 760);
    v108 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    *v108 = 136446466;
    *(v108 + 4) = sub_1000105AC(v105, v104, &v222);
    *(v108 + 12) = 2082;
    sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder);
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v110;
    v217(v106, v107);
    v112 = sub_1000105AC(v109, v111, &v222);

    *(v108 + 14) = v112;
    _os_log_impl(&_mh_execute_header, v102, v103, "%{public}s| 📁❌ Skipping folder tab: Duplicate identifier found for %{public}s", v108, 0x16u);
    swift_arrayDestroy();

    v217(v207, v107);
LABEL_36:
    (*(v209 + 8))(v213, v212);
    goto LABEL_11;
  }

LABEL_7:
  sub_1000095E8(*(v28 + 856), &unk_1011828E0);

LABEL_47:

  v180 = *(v28 + 8);

  return v180(v206);
}

id sub_100742384(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v61 = type metadata accessor for Playlist.Folder();
  v12 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  KeyPath = swift_getKeyPath();
  swift_beginAccess();
  v18 = *a1;
  v63 = sub_100747904;
  v64 = 0;
  v65 = KeyPath;
  v66 = a2;
  v60 = a2;
  sub_1007357E0(sub_100749BDC, v62, v18);
  if (v21 == -1)
  {
    swift_endAccess();

LABEL_8:
    v58 = a5;
    v32 = v61;
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000060E4(v33, qword_101218E18);
    v34 = *(v12 + 16);
    v34(v16, v60, v32);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v37 = 136446466;
      *(v37 + 4) = sub_1000105AC(v58, a6, v67);
      *(v37 + 12) = 2082;
      sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v12 + 8))(v16, v61);
      v41 = sub_1000105AC(v38, v40, v67);

      *(v37 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s| ↳➕📁 Creating new tab for folder %{public}s", v37, 0x16u);
      swift_arrayDestroy();

      v32 = v61;
    }

    else
    {

      (*(v12 + 8))(v16, v32);
    }

    v42 = v59;
    v34(v59, v60, v32);
    v43 = objc_allocWithZone(_s17PlaylistFolderTabCMa());
    return sub_10073920C(v42);
  }

  v58 = a4;
  v22 = a6;
  v23 = v21;
  v24 = v19;
  v25 = v20;
  sub_10074805C(v19, v20, v21 & 1);
  v27 = v26;
  sub_100590F24(v24, v25, v23);
  _s17PlaylistFolderTabCMa();
  v28 = swift_dynamicCastClass();
  swift_endAccess();

  if (!v28)
  {

    goto LABEL_7;
  }

  swift_beginAccess();
  v29 = *a3;

  v30 = v27;
  v31 = sub_10048C8A4(v28, v29);

  if (v31)
  {

LABEL_7:
    a6 = v22;
    goto LABEL_8;
  }

  swift_beginAccess();
  sub_1003B4FFC(v68, v28);
  swift_endAccess();

  swift_beginAccess();
  v45 = v22;
  if (sub_100739514(v60))
  {
    v46 = v30;
    sub_1003B4FFC(v68, v28);
  }

  swift_endAccess();
  if (qword_10117F7A8 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_1000060E4(v47, qword_101218E18);
  v48 = v30;

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v51 = 136446466;
    *(v51 + 4) = sub_1000105AC(a5, v45, v67);
    *(v51 + 12) = 2082;
    v52 = v48;
    v53 = [v28 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = sub_1000105AC(v54, v56, v67);

    *(v51 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v49, v50, "%{public}s| ↳♻️📁 Reusing tab for folder %{public}s", v51, 0x16u);
    swift_arrayDestroy();
  }

  return v28;
}

id sub_1007429EC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v61 = type metadata accessor for Playlist();
  v12 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  KeyPath = swift_getKeyPath();
  swift_beginAccess();
  v18 = *a1;
  v63 = sub_10074794C;
  v64 = 0;
  v65 = KeyPath;
  v66 = a2;
  v60 = a2;
  sub_1007357E0(sub_100749C54, v62, v18);
  if (v21 == -1)
  {
    swift_endAccess();

LABEL_8:
    v58 = a5;
    v32 = v61;
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000060E4(v33, qword_101218E18);
    v34 = *(v12 + 16);
    v34(v16, v60, v32);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v37 = 136446466;
      *(v37 + 4) = sub_1000105AC(v58, a6, v67);
      *(v37 + 12) = 2082;
      sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v12 + 8))(v16, v61);
      v41 = sub_1000105AC(v38, v40, v67);

      *(v37 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s| ↳➕ Creating new tab for playlist %{public}s", v37, 0x16u);
      swift_arrayDestroy();

      v32 = v61;
    }

    else
    {

      (*(v12 + 8))(v16, v32);
    }

    v42 = v59;
    v34(v59, v60, v32);
    v43 = objc_allocWithZone(_s11PlaylistTabCMa());
    return sub_100739F48(v42);
  }

  v58 = a4;
  v22 = a6;
  v23 = v21;
  v24 = v19;
  v25 = v20;
  sub_10074805C(v19, v20, v21 & 1);
  v27 = v26;
  sub_100590F24(v24, v25, v23);
  _s11PlaylistTabCMa();
  v28 = swift_dynamicCastClass();
  swift_endAccess();

  if (!v28)
  {

    goto LABEL_7;
  }

  swift_beginAccess();
  v29 = *a3;

  v30 = v27;
  v31 = sub_10048C8A4(v28, v29);

  if (v31)
  {

LABEL_7:
    a6 = v22;
    goto LABEL_8;
  }

  swift_beginAccess();
  sub_1003B4FFC(v68, v28);
  swift_endAccess();

  swift_beginAccess();
  v45 = v22;
  if (sub_10073A2CC(v60))
  {
    v46 = v30;
    sub_1003B4FFC(v68, v28);
  }

  swift_endAccess();
  if (qword_10117F7A8 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_1000060E4(v47, qword_101218E18);
  v48 = v30;

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v51 = 136446466;
    *(v51 + 4) = sub_1000105AC(a5, v45, v67);
    *(v51 + 12) = 2082;
    v52 = v48;
    v53 = [v28 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = sub_1000105AC(v54, v56, v67);

    *(v51 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v49, v50, "%{public}s| ↳♻️ Reusing tab for playlist %{public}s", v51, 0x16u);
    swift_arrayDestroy();
  }

  return v28;
}

uint64_t sub_100743088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5(0);

  UnfairLock.locked<A>(_:)(a6);
}

uint64_t sub_100743154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_10073B180(a1, sub_10074995C, v8, a4);
}

void *sub_1007431F0()
{
  v1 = sub_10010FC20(&qword_1011A0D88);
  __chkstk_darwin(v1 - 8);
  v53 = &v45 - v2;
  v3 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for UICellAccessory.DisplayedState();
  v5 = *(v56 - 8);
  __chkstk_darwin(v56);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for UICellAccessory.Placement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v46 = *(v14 - 8);
  v47 = v14;
  __chkstk_darwin(v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UICellAccessory();
  v17 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v48 = &v45 - v20;
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v45 - v23;
  v25 = [v0 managingTabGroup];
  if (!v25)
  {
    goto LABEL_7;
  }

  v26 = v25;
  _s3TabCMa();
  if (!swift_dynamicCastClass())
  {

LABEL_7:
    v33 = _swiftEmptyArrayStorage;
    v32 = v50;
    goto LABEL_8;
  }

  v27 = sub_1003DF2C4();

  v28 = &v13[*(sub_10010FC20(&qword_101197090) + 48)];
  (*(v5 + 104))(v13, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v56);
  *v28 = static MPMediaLibraryFilteringOptions.none.getter;
  v28[1] = 0;
  (*(v11 + 104))(v13, enum case for UICellAccessory.Placement.trailing(_:), v10);
  v29 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  v30 = v27;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  (*(v46 + 8))(v16, v47);
  v31 = v48;
  v32 = v50;
  (*(v17 + 16))(v48, v24, v50);
  v33 = sub_10049AA14(0, 1, 1, _swiftEmptyArrayStorage);
  v35 = v33[2];
  v34 = v33[3];
  if (v35 >= v34 >> 1)
  {
    v33 = sub_10049AA14(v34 > 1, v35 + 1, 1, v33);
  }

  (*(v17 + 8))(v24, v32);
  v33[2] = v35 + 1;
  (*(v17 + 32))(v33 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v35, v31, v32);
LABEL_8:
  v36 = v51;
  v37 = v56;
  (*(v5 + 104))(v51, enum case for UICellAccessory.DisplayedState.always(_:), v56);
  v38 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
  (*(*(v38 - 8) + 56))(v53, 1, 1, v38);
  v39 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
  v40 = v52;
  UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
  v41 = v49;
  static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
  (*(v54 + 8))(v40, v55);
  (*(v5 + 8))(v36, v37);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_10049AA14(0, v33[2] + 1, 1, v33);
  }

  v43 = v33[2];
  v42 = v33[3];
  if (v43 >= v42 >> 1)
  {
    v33 = sub_10049AA14(v42 > 1, v43 + 1, 1, v33);
  }

  v33[2] = v43 + 1;
  (*(v17 + 32))(v33 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v43, v41, v32);
  return v33;
}

uint64_t sub_100743950(uint64_t a1)
{
  v3 = _s11ArtworkInfoV10PropertiesVMa(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1;
  sub_100743A80(v6, v5);
  v7 = [v6 managingTabGroup];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  _s3TabCMa();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(v9 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_artworkCache);

LABEL_6:
  sub_10053BCD4(v5, v10, a1);

  return sub_100749E0C(v5, _s11ArtworkInfoV10PropertiesVMa);
}

void sub_100743A80(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-v5];
  v7 = type metadata accessor for Playlist();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Artwork();
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = _s11ArtworkInfoV10PropertiesVMa(0);
  v13 = a2 + v12[6];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v12[7];
  v15 = UIView.Corner.extraSmall.unsafeMutableAddressor();
  v16 = type metadata accessor for UIView.Corner();
  (*(*(v16 - 8) + 16))(a2 + v14, v15, v16);

  UnfairLock.locked<A>(_:)(sub_10074A07C);

  Playlist.artwork.getter();
  (*(v8 + 8))(v10, v7);
  sub_10006B010(v6, a2, &unk_101188920);
  v17 = [objc_opt_self() defaultMetrics];
  [v17 scaledValueForValue:28.0];
  v19 = v18;
  [v17 scaledValueForValue:28.0];
  v21 = v20;

  v22 = (a2 + v12[5]);
  *v22 = v19;
  v22[1] = v21;
}

id sub_100743D40()
{
  v1 = [v0 tabBarController];
  if (!v1)
  {
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_101218E00);
    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34[0] = v20;
      *v19 = 136446210;
      v21 = v16;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_1000105AC(v23, v25, v34);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "No presentation source provided for tab=%{public}s", v19, 0xCu);
      sub_10000959C(v20);
    }

    return 0;
  }

  v2 = v1;
  v43 = v0;
  v44 = 0u;
  v45 = 0u;
  v46 = 2;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v43, 12, v35);
  v39[0] = v35[0];
  v39[1] = v35[1];
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  v5 = v0;
  result = [v5 identifier];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    sub_10012B7A8(v34, v33);
    v9 = swift_allocObject();
    sub_10012B828(v33, v9 + 16);
    *(v9 + 112) = v5;
    v10 = objc_opt_self();
    v31 = sub_100747F4C;
    v32 = v8;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100747E6C;
    v30 = &unk_1010BD1F0;
    v11 = _Block_copy(&v27);
    v12 = v5;

    v31 = sub_100747F54;
    v32 = v9;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100747EBC;
    v30 = &unk_1010BD218;
    v13 = _Block_copy(&v27);

    v14 = [v10 configurationWithIdentifier:v7 previewProvider:v11 actionProvider:v13];

    _Block_release(v13);
    _Block_release(v11);
    sub_10012BA6C(v34);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100744188()
{
  v0 = type metadata accessor for Playlist();
  __chkstk_darwin(v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  UnfairLock.locked<A>(_:)(sub_10074A07C);

  return sub_1007352B8(v2, 1, &type metadata accessor for Playlist, sub_100247018);
}

uint64_t sub_1007442B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v148 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v8 - 8);
  v144 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v143 = &v131 - v11;
  v12 = sub_10010FC20(&unk_1011838D0);
  v147 = *(v12 - 8);
  v13 = *(v147 + 64);
  __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v14);
  v156 = (&v131 - v15);
  v16 = sub_10010FC20(&unk_1011845D0);
  v145 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v18 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v17;
  __chkstk_darwin(v19);
  v155 = &v131 - v20;
  v21 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v21 - 8);
  v23 = &v131 - v22;
  v24 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v24 - 8);
  v149 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v150 = &v131 - v27;
  __chkstk_darwin(v28);
  v30 = &v131 - v29;
  v31 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v31 - 8);
  v151 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v154 = &v131 - v34;
  v142 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v137 = v13;
  v138 = v18;
  v153 = Strong;
  v139 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v7;
  sub_10010FC20(&unk_101183900);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100EBC6B0;
  *(v36 + 56) = type metadata accessor for Playlist();
  *(v36 + 64) = &protocol witness table for Playlist;
  sub_10001C8B8((v36 + 32));

  UnfairLock.locked<A>(_:)(sub_100747F60);

  v37 = [a3 managingTabGroup];
  if (v37)
  {
    v38 = v37;
    _s3TabCMa();
    v39 = swift_dynamicCastClass();
    if (v39)
    {
      v136 = *(v39 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

      goto LABEL_8;
    }
  }

  type metadata accessor for MusicLibrary();
  v136 = static MusicLibrary.shared.getter();
LABEL_8:
  v41 = qword_10117F608;
  v42 = a3;
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = qword_101218AD8;
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v46 = result;
    v134 = v36;
    v135 = v5;
    v47 = *(result + 8);
    v48 = v42;
    v49 = v43;
    v47(ObjectType, v46);

    PlaybackIntentDescriptor.IntentType.init(_:)(v23, v30);
    v50 = UITab.combinedPlayActivityFeatureName.getter();
    v52 = MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(v50, v51, 0, 0xF000000000000000);
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = sub_100009F78(0, &qword_101181F70);
    v169[4] = &protocol witness table for UITab;
    v169[3] = v59;
    v169[0] = v48;
    v60 = v154;
    v131 = v49;
    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v49, v30, v52, v54, v56, v58, v169, v154);
    v61 = type metadata accessor for Actions.PlaybackContext();
    v152 = *(v61 - 8);
    v62 = *(v152 + 56);
    v141 = v61;
    v62(v60, 0, 1);
    v63 = type metadata accessor for PlaylistContext();
    (*(*(v63 - 8) + 56))(v155, 1, 1, v63);
    sub_10012B7A8(v142, v169);
    v64 = type metadata accessor for MetricsEvent.Page(0);
    v65 = *(*(v64 - 8) + 56);
    v66 = v143;
    v65(v143, 1, 1, v64);
    v67 = v144;
    sub_1000089F8(v66, v144, &unk_1011838F0);
    MetricsReportingController.shared.unsafeMutableAddressor();
    v142 = sub_10053771C();
    v133 = v68;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v69 = qword_101218AD0;
    v132 = GroupActivitiesManager.hasJoined.getter();
    v70 = GroupActivitiesManager.participantsCount.getter();
    sub_1000095E8(v66, &unk_1011838F0);
    v71 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    v72 = *(v69 + v71);
    v73 = type metadata accessor for Actions.MetricsReportingContext();
    v74 = v73[5];
    v75 = v156;
    v65(v156 + v74, 1, 1, v64);
    v76 = v73[7];
    v77 = (v75 + v73[6]);
    v78 = v73[8];
    *v75 = xmmword_100EBEF60;
    sub_10006B010(v67, v75 + v74, &unk_1011838F0);
    v79 = v133;
    *v77 = v142;
    v77[1] = v79;
    *(v75 + v76) = 0;
    *(v75 + v78) = 0;
    v80 = v75 + v73[9];
    *v80 = v132 & 1;
    *(v80 + 1) = v70;
    *(v80 + 2) = v72;
    (*(*(v73 - 1) + 56))(v75, 0, 1, v73);
    sub_100008FE4(v134 + 32, v168);

    sub_1000089F8(v169, &v163, &unk_1011845E0);
    if (v166 == 1)
    {
      v174 = 0;
      memset(v173, 0, sizeof(v173));
      v175 = xmmword_100EBCEF0;
      v81 = v153;
      PresentationSource.init(viewController:position:)(v153, v173, v167);
      v83 = v151;
      v82 = v152;
      v84 = v141;
      if (v166 != 1)
      {
        sub_1000095E8(&v163, &unk_1011845E0);
      }
    }

    else
    {
      sub_10012B828(&v163, v167);
      v82 = v152;
      v81 = v153;
      v83 = v151;
      v84 = v141;
    }

    swift_getObjectType();
    v85 = swift_conformsToProtocol2();
    if (v85)
    {
      v142 = v85;
      v86 = v81;
      v143 = v81;
    }

    else
    {
      v142 = 0;
      v143 = 0;
    }

    v144 = swift_allocBox();
    v88 = v87;
    sub_1000089F8(v154, v83, &unk_10118AB20);
    v91 = *(v82 + 48);
    v89 = v82 + 48;
    v90 = v91;
    if (v91(v83, 1, v84) == 1)
    {
      v152 = v89;
      v92 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v93 = v150;
      (*(*(v92 - 8) + 56))(v150, 1, 1, v92);
      v165 = 0;
      v163 = 0u;
      v164 = 0u;
      sub_1000089F8(v93, v149, &unk_1011838E0);
      v94 = v131;
      v95 = UIViewController.playActivityInformation.getter();
      v97 = v96;
      v99 = v98;
      v101 = v100;
      sub_1000089F8(&v163, &v161, &unk_101183910);
      if (v162)
      {
        sub_100059A8C(&v161, &v170);
      }

      else
      {
        v160 = v81;
        sub_100009F78(0, &qword_101183D40);
        v102 = v81;
        sub_10010FC20(&unk_101183920);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v157, &v170);
          v83 = v151;
        }

        else
        {
          v159 = 0;
          v157 = 0u;
          v158 = 0u;
          *&v170 = v102;
          v103 = v102;
          v104 = String.init<A>(reflecting:)();
          *(&v171 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v172 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v170 = v104;
          *(&v170 + 1) = v105;
          v83 = v151;
          if (*(&v158 + 1))
          {
            sub_1000095E8(&v157, &unk_101183910);
          }
        }

        v81 = v153;
        if (v162)
        {
          sub_1000095E8(&v161, &unk_101183910);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v94, v149, v95, v97, v99, v101, &v170, v88);
      sub_1000095E8(&v163, &unk_101183910);
      sub_1000095E8(v150, &unk_1011838E0);
      v84 = v141;
      if (v90(v83, 1, v141) != 1)
      {
        sub_1000095E8(v83, &unk_10118AB20);
      }
    }

    else
    {
      sub_100749DA4(v83, v88, type metadata accessor for Actions.PlaybackContext);
    }

    v106 = *(v84 + 28);
    sub_1000089F8(&v88[v106], &v170, &unk_101183910);
    if (*(&v171 + 1))
    {
      sub_100059A8C(&v170, &v163);
    }

    else
    {
      *&v163 = v81;
      v107 = v81;
      v108 = String.init<A>(reflecting:)();
      *(&v164 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v165 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v163 = v108;
      *(&v163 + 1) = v109;
      if (*(&v171 + 1))
      {
        sub_1000095E8(&v170, &unk_101183910);
      }
    }

    sub_10010FC20(&unk_101183930);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_100EBDC20;
    *(v110 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v110 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v110 + 32) = 0x4D747865746E6F43;
    *(v110 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v163, v110 + 72);
    v111 = static Player.CommandIssuer<>.combining(_:)();
    v113 = v112;

    sub_10000959C(&v163);
    *(&v164 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v165 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v163 = v111;
    *(&v163 + 1) = v113;
    sub_10006B010(&v163, &v88[v106], &unk_101183910);
    sub_100008FE4(v168, &v163);
    sub_10010FC20(&unk_10118AB50);
    v114 = String.init<A>(describing:)();
    v151 = v115;
    v152 = v114;
    v150 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v168, &v161);
    sub_10012B7A8(v167, &v163);
    v116 = v139;
    sub_1000089F8(v156, v139, &unk_1011838D0);
    v117 = v138;
    sub_1000089F8(v155, v138, &unk_1011845D0);
    v118 = (*(v147 + 80) + 160) & ~*(v147 + 80);
    v119 = (v137 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
    v120 = (v119 + 15) & 0xFFFFFFFFFFFFFFF8;
    v121 = (*(v145 + 80) + v120 + 8) & ~*(v145 + 80);
    v149 = (v121 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
    v122 = (v121 + v146 + 31) & 0xFFFFFFFFFFFFFFF8;
    v123 = swift_allocObject();
    sub_100059A8C(&v161, v123 + 16);
    *(v123 + 56) = v136;
    sub_10012B828(&v163, v123 + 64);
    sub_10003D17C(v116, v123 + v118, &unk_1011838D0);
    *(v123 + v119) = v150;
    *(v123 + v120) = v144;
    sub_10003D17C(v117, v123 + v121, &unk_1011845D0);
    v124 = v123 + v149;
    v125 = v142;
    *v124 = v143;
    *(v124 + 8) = v125;
    *(v124 + 16) = 2;
    v126 = (v123 + v122);
    *v126 = variable initialization expression of Library.Context.playlistVariants;
    v126[1] = 0;
    swift_unknownObjectRetain();

    v127 = v140;
    UUID.init()();
    v128 = UUID.uuidString.getter();
    v130 = v129;
    (*(v148 + 8))(v127, v135);
    v176._object = v151;
    v176._countAndFlagsBits = v152;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v176, v128, v130, sub_100217D28, v123, &v170);
    swift_unknownObjectRelease();
    sub_10012BA6C(v167);
    sub_10000959C(v168);

    v40 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
    v167[0] = v170;
    sub_100015BB0(v167);
    v163 = v171;
    sub_100015BB0(&v163);

    sub_1000095E8(v169, &unk_1011845E0);
    sub_1000095E8(v155, &unk_1011845D0);
    sub_1000095E8(v154, &unk_10118AB20);
    sub_1000095E8(v156, &unk_1011838D0);
    return v40;
  }

  __break(1u);
  return result;
}

id sub_100745390()
{
  v1 = [v0 tabBarController];
  if (!v1)
  {
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_101218E00);
    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34[0] = v20;
      *v19 = 136446210;
      v21 = v16;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_1000105AC(v23, v25, v34);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "No presentation source provided for tab=%{public}s", v19, 0xCu);
      sub_10000959C(v20);
    }

    return 0;
  }

  v2 = v1;
  v43 = v0;
  v44 = 0u;
  v45 = 0u;
  v46 = 2;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v43, 12, v35);
  v39[0] = v35[0];
  v39[1] = v35[1];
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  v5 = v0;
  result = [v5 identifier];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    sub_10012B7A8(v34, v33);
    v9 = swift_allocObject();
    sub_10012B828(v33, v9 + 16);
    *(v9 + 112) = v5;
    v10 = objc_opt_self();
    v31 = sub_1007493E8;
    v32 = v8;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100747E6C;
    v30 = &unk_1010BD358;
    v11 = _Block_copy(&v27);
    v12 = v5;

    v31 = sub_10074946C;
    v32 = v9;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100747EBC;
    v30 = &unk_1010BD380;
    v13 = _Block_copy(&v27);

    v14 = [v10 configurationWithIdentifier:v7 previewProvider:v11 actionProvider:v13];

    _Block_release(v13);
    _Block_release(v11);
    sub_10012BA6C(v34);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007457D8(void *a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - v3;
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;

  UnfairLock.locked<A>(_:)(sub_10074A094);

  v31 = *(v5 + 16);
  v31(v7, v10, v4);
  v33 = sub_1007352B8(v7, 1, &type metadata accessor for Playlist.Folder, sub_1002474C4);
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  v11 = [a1 managingTabGroup];
  v34 = a1;
  if (v11)
  {
    v12 = v11;
    _s3TabCMa();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

      goto LABEL_8;
    }
  }

  type metadata accessor for MusicLibrary();
  v14 = static MusicLibrary.shared.getter();
LABEL_8:
  v15 = [v34 managingTabGroup];
  if (v15)
  {
    v16 = v15;
    _s3TabCMa();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_1001747E4(v10, v14, v18);

  if ((v19 & 1) == 0)
  {
    v20 = type metadata accessor for TaskPriority();
    v21 = v32;
    (*(*(v20 - 8) + 56))(v32, 1, 1, v20);
    v31(v7, v10, v4);
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = (v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    (*(v5 + 32))(v24 + v22, v7, v4);
    v26 = v33;
    v25 = v34;
    *(v24 + v23) = v34;
    *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v27 = v25;
    v28 = v26;
    sub_10035EB10(0, 0, v21, &unk_100EE03E0, v24);

    sub_1000095E8(v21, &unk_101181520);
  }

  (*(v5 + 8))(v10, v4);
  return v33;
}

uint64_t sub_100745C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Playlist.Folder();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100745D34, 0, 0);
}

uint64_t sub_100745D34()
{
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  v0[10] = qword_101218670;
  v0[11] = type metadata accessor for MainActor();
  v0[12] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100745E08, v2, v1);
}

uint64_t sub_100745E08()
{
  v1 = v0[3];

  v2 = [v1 managingTabGroup];
  v0[13] = v2;
  if (v2)
  {
    v3 = v2;
    _s3TabCMa();
    v4 = swift_dynamicCastClass();
    v0[14] = v4;
    if (v4)
    {
      v5 = sub_100745F78;
    }

    else
    {

      v5 = sub_100745ED8;
    }
  }

  else
  {
    v5 = sub_10074A05C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100745ED8()
{
  type metadata accessor for MusicLibrary();
  *(v0 + 136) = static MusicLibrary.shared.getter();
  *(v0 + 144) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100746120, v2, v1);
}

uint64_t sub_100745F78()
{
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100746004, v2, v1);
}

uint64_t sub_100746004()
{
  v1 = v0[14];
  v2 = v0[13];

  v0[16] = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

  return _swift_task_switch(sub_10074608C, 0, 0);
}

uint64_t sub_10074608C()
{
  v0[17] = v0[16];
  v0[18] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100746120, v2, v1);
}

uint64_t sub_100746120()
{
  v1 = v0[3];

  v2 = [v1 managingTabGroup];
  v0[19] = v2;
  if (v2)
  {
    v3 = v2;
    _s3TabCMa();
    v4 = swift_dynamicCastClass();
    v0[20] = v4;
    if (v4)
    {

      return _swift_task_switch(sub_100746248, 0, 0);
    }
  }

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_100746394;
  v6 = v0[17];
  v7 = v0[2];

  return sub_100174920(v7, v6, 0);
}

uint64_t sub_100746248()
{
  *(v0 + 168) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007462D4, v2, v1);
}

uint64_t sub_1007462D4()
{
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent);

  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_100746394;
  v4 = *(v0 + 136);
  v5 = *(v0 + 16);

  return sub_100174920(v5, v4, v2);
}

uint64_t sub_100746394()
{

  return _swift_task_switch(sub_1007464AC, 0, 0);
}

uint64_t sub_1007464AC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  (*(v3 + 16))(v1, v6, v4);
  v8 = v5;
  v9 = static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v9;
  *(v11 + 3) = &protocol witness table for MainActor;
  *(v11 + 4) = v8;
  (*(v3 + 32))(&v11[v10], v1, v4);
  sub_1001F4CB8(0, 0, v2, &unk_100EE03F0, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10074662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007466C4, v7, v6);
}

uint64_t sub_1007466C4()
{

  v1 = sub_1002474C4();
  dispatch thunk of UIHostingController.rootView.getter();
  v2 = sub_10024D86C(*(v0 + 16), v1);

  if ((v2 & 1) == 0)
  {
    v3 = dispatch thunk of UIHostingController.rootView.modify();
    *v4 = v1;

    v3(v0 + 16, 0);
  }

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_1007467AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v136[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v136[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v149 = &v136[-v13];
  v14 = sub_10010FC20(&unk_1011838D0);
  v154 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v16 = &v136[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = v15;
  __chkstk_darwin(v17);
  v162 = &v136[-v18];
  v19 = sub_10010FC20(&unk_1011845D0);
  v152 = *(v19 - 8);
  __chkstk_darwin(v19 - 8);
  v156 = &v136[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = v20;
  __chkstk_darwin(v21);
  v161 = &v136[-v22];
  v23 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v23 - 8);
  v25 = &v136[-v24];
  v26 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v26 - 8);
  v150 = &v136[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v151 = &v136[-v29];
  __chkstk_darwin(v30);
  v32 = &v136[-v31];
  v33 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v33 - 8);
  v157 = &v136[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v160 = &v136[-v36];
  v148 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v141 = v11;
  v144 = v8;
  v145 = v6;
  v146 = v5;
  sub_10010FC20(&unk_101183900);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100EBC6B0;
  *(v37 + 56) = type metadata accessor for Playlist.Folder();
  *(v37 + 64) = sub_1007493A0(&qword_10118C1A0, &type metadata accessor for Playlist.Folder);
  v139 = v37;
  sub_10001C8B8((v37 + 32));

  UnfairLock.locked<A>(_:)(sub_100749478);

  v38 = [a3 managingTabGroup];
  if (!v38)
  {
    goto LABEL_7;
  }

  v39 = v38;
  _s3TabCMa();
  v40 = swift_dynamicCastClass();
  if (!v40)
  {

LABEL_7:
    type metadata accessor for MusicLibrary();
    v142 = static MusicLibrary.shared.getter();
    goto LABEL_8;
  }

  v142 = *(v40 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

LABEL_8:
  v42 = qword_10117F608;
  v43 = a3;
  if (v42 != -1)
  {
    swift_once();
  }

  v143 = v16;
  v44 = qword_101218AD8;
  ObjectType = swift_getObjectType();
  v46 = swift_conformsToProtocol2();
  if (v46)
  {
    v47 = *(v46 + 8);
    v48 = v46;
    v49 = v43;
    v50 = v44;
    v47(ObjectType, v48);
  }

  else
  {
    v51 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v51 - 8) + 56))(v25, 1, 1, v51);
    v52 = v44;
  }

  PlaybackIntentDescriptor.IntentType.init(_:)(v25, v32);
  v53 = UITab.combinedPlayActivityFeatureName.getter();
  v55 = MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(v53, v54, 0, 0xF000000000000000);
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = sub_100009F78(0, &qword_101181F70);
  v175[4] = &protocol witness table for UITab;
  v175[3] = v62;
  v175[0] = v43;
  v63 = v160;
  v140 = v44;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v44, v32, v55, v57, v59, v61, v175, v160);
  v64 = type metadata accessor for Actions.PlaybackContext();
  v158 = *(v64 - 8);
  v65 = *(v158 + 56);
  v147 = v64;
  v65(v63, 0, 1);
  v66 = type metadata accessor for PlaylistContext();
  (*(*(v66 - 8) + 56))(v161, 1, 1, v66);
  sub_10012B7A8(v148, v175);
  v67 = type metadata accessor for MetricsEvent.Page(0);
  v68 = *(*(v67 - 8) + 56);
  v69 = v149;
  v68(v149, 1, 1, v67);
  v70 = v141;
  sub_1000089F8(v69, v141, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v148 = sub_10053771C();
  v138 = v71;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v72 = qword_101218AD0;
  v137 = GroupActivitiesManager.hasJoined.getter();
  v73 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v69, &unk_1011838F0);
  v74 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v75 = *(v72 + v74);
  v76 = type metadata accessor for Actions.MetricsReportingContext();
  v77 = v76[5];
  v78 = v162;
  v68(&v162[v77], 1, 1, v67);
  v79 = v76[7];
  v80 = (v78 + v76[6]);
  v81 = v76[8];
  *v78 = xmmword_100EBEF60;
  sub_10006B010(v70, v78 + v77, &unk_1011838F0);
  v82 = v138;
  *v80 = v148;
  v80[1] = v82;
  *(v78 + v79) = 0;
  *(v78 + v81) = 0;
  v83 = v78 + v76[9];
  *v83 = v137 & 1;
  *(v83 + 1) = v73;
  *(v83 + 2) = v75;
  (*(*(v76 - 1) + 56))(v78, 0, 1, v76);
  sub_100008FE4(v139 + 32, v174);

  sub_1000089F8(v175, &v169, &unk_1011845E0);
  if (v172 == 1)
  {
    v180 = 0;
    memset(v179, 0, sizeof(v179));
    v181 = xmmword_100EBCEF0;
    v84 = Strong;
    PresentationSource.init(viewController:position:)(Strong, v179, v173);
    v86 = v157;
    v85 = v158;
    v87 = v140;
    if (v172 != 1)
    {
      sub_1000095E8(&v169, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v169, v173);
    v85 = v158;
    v84 = Strong;
    v86 = v157;
    v87 = v140;
  }

  swift_getObjectType();
  v88 = swift_conformsToProtocol2();
  v89 = v147;
  if (v88)
  {
    v141 = v88;
    v90 = v84;
    v148 = v84;
  }

  else
  {
    v148 = 0;
    v141 = 0;
  }

  v149 = swift_allocBox();
  v92 = v91;
  sub_1000089F8(v160, v86, &unk_10118AB20);
  v95 = *(v85 + 48);
  v93 = v85 + 48;
  v94 = v95;
  if (v95(v86, 1, v89) == 1)
  {
    v158 = v93;
    v96 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v97 = v151;
    (*(*(v96 - 8) + 56))(v151, 1, 1, v96);
    v171 = 0;
    v169 = 0u;
    v170 = 0u;
    sub_1000089F8(v97, v150, &unk_1011838E0);
    v98 = v87;
    v99 = UIViewController.playActivityInformation.getter();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    sub_1000089F8(&v169, &v167, &unk_101183910);
    if (v168)
    {
      sub_100059A8C(&v167, &v176);
    }

    else
    {
      v166 = v84;
      sub_100009F78(0, &qword_101183D40);
      v106 = v84;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v163, &v176);
        v86 = v157;
      }

      else
      {
        v165 = 0;
        v163 = 0u;
        v164 = 0u;
        *&v176 = v106;
        v107 = v106;
        v108 = String.init<A>(reflecting:)();
        *(&v177 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v178 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v176 = v108;
        *(&v176 + 1) = v109;
        v86 = v157;
        if (*(&v164 + 1))
        {
          sub_1000095E8(&v163, &unk_101183910);
        }
      }

      v84 = Strong;
      if (v168)
      {
        sub_1000095E8(&v167, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v98, v150, v99, v101, v103, v105, &v176, v92);
    sub_1000095E8(&v169, &unk_101183910);
    sub_1000095E8(v151, &unk_1011838E0);
    v89 = v147;
    if (v94(v86, 1, v147) != 1)
    {
      sub_1000095E8(v86, &unk_10118AB20);
    }
  }

  else
  {
    sub_100749DA4(v86, v92, type metadata accessor for Actions.PlaybackContext);
  }

  v110 = *(v89 + 28);
  sub_1000089F8(&v92[v110], &v176, &unk_101183910);
  if (*(&v177 + 1))
  {
    sub_100059A8C(&v176, &v169);
  }

  else
  {
    *&v169 = v84;
    v111 = v84;
    v112 = String.init<A>(reflecting:)();
    *(&v170 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v171 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v169 = v112;
    *(&v169 + 1) = v113;
    if (*(&v177 + 1))
    {
      sub_1000095E8(&v176, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_100EBDC20;
  *(v114 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v114 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v114 + 32) = 0x4D747865746E6F43;
  *(v114 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v169, v114 + 72);
  v115 = static Player.CommandIssuer<>.combining(_:)();
  v117 = v116;

  sub_10000959C(&v169);
  *(&v170 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v171 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v169 = v115;
  *(&v169 + 1) = v117;
  sub_10006B010(&v169, &v92[v110], &unk_101183910);
  sub_100008FE4(v174, &v169);
  sub_10010FC20(&unk_10118AB50);
  v118 = String.init<A>(describing:)();
  v157 = v119;
  v158 = v118;
  v151 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v174, &v167);
  sub_10012B7A8(v173, &v169);
  v120 = v143;
  sub_1000089F8(v162, v143, &unk_1011838D0);
  v121 = v156;
  sub_1000089F8(v161, v156, &unk_1011845D0);
  v122 = (*(v154 + 80) + 160) & ~*(v154 + 80);
  v123 = (v155 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
  v125 = (*(v152 + 80) + v124 + 8) & ~*(v152 + 80);
  v155 = (v125 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
  v126 = (v125 + v153 + 31) & 0xFFFFFFFFFFFFFFF8;
  v127 = swift_allocObject();
  sub_100059A8C(&v167, v127 + 16);
  *(v127 + 56) = v142;
  sub_10012B828(&v169, v127 + 64);
  sub_10003D17C(v120, v127 + v122, &unk_1011838D0);
  *(v127 + v123) = v151;
  *(v127 + v124) = v149;
  sub_10003D17C(v121, v127 + v125, &unk_1011845D0);
  v128 = v127 + v155;
  v129 = v141;
  *v128 = v148;
  *(v128 + 8) = v129;
  *(v128 + 16) = 2;
  v130 = (v127 + v126);
  *v130 = variable initialization expression of Library.Context.playlistVariants;
  v130[1] = 0;
  swift_unknownObjectRetain();

  v131 = v144;
  UUID.init()();
  v132 = UUID.uuidString.getter();
  v134 = v133;
  (*(v145 + 8))(v131, v146);
  v182._object = v157;
  v182._countAndFlagsBits = v158;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v182, v132, v134, sub_10021953C, v127, &v176);
  swift_unknownObjectRelease();
  sub_10012BA6C(v173);
  sub_10000959C(v174);

  v41 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v173[0] = v176;
  sub_100015BB0(v173);
  v169 = v177;
  sub_100015BB0(&v169);

  sub_1000095E8(v175, &unk_1011845E0);
  sub_1000095E8(v161, &unk_1011845D0);
  sub_1000095E8(v160, &unk_10118AB20);
  sub_1000095E8(v162, &unk_1011838D0);
  return v41;
}

uint64_t sub_100747994(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1007493A0(a4, a5);
  return dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1;
}

uint64_t sub_100747A68@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + 88);
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, a1 + v6, v7);
}

uint64_t sub_100747B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(*a1 + 88);
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 24))(a1 + v6, a2, v7);
  return swift_endAccess();
}

uint64_t sub_100747BD0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t sub_100747C5C()
{
  sub_100747BD0();

  return swift_deallocClassInstance();
}

uint64_t _s19PlaylistTabsRequestVMa()
{
  result = qword_1011A0D10;
  if (!qword_1011A0D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100747D3C()
{
  _s9PlaylistsVMa(319);
  if (v0 <= 0x3F)
  {
    sub_100747DC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100747DC0()
{
  if (!qword_1011A0D20)
  {
    _s11PlaylistTabCMa();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A0D20);
    }
  }
}

uint64_t sub_100747E14(uint64_t a1)
{
  result = sub_1007493A0(&qword_1011A0D80, _s19PlaylistTabsRequestVMa);
  *(a1 + 8) = result;
  return result;
}

id sub_100747E6C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_100747EBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009F78(0, &qword_10118CDE0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

unint64_t sub_100747F90@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v9 = *v4, 1 << *(*v4 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    sub_10019372C();
    v9 = v11;
  }

  sub_100198C50(*(v9 + 48) + 96 * a1, a3);
  result = sub_100196A74(a1);
  *v4 = v11;
  return result;
}

void sub_10074805C(unint64_t a1, void *a2, char a3)
{
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v5 < 0)
      {
        v6 = *v3;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      __CocoaSet.member(for:)();
      sub_100009F78(0, &qword_101181F70);

      swift_dynamicCast();
      sub_10019653C(v6, v16);

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if (a3)
  {
    v11 = v3;
    sub_100009F78(0, &qword_101181F70);
    if (__CocoaSet.Index.age.getter() != *(v10 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    a2 = v16;
    v3 = v16;
    v12 = NSObject._rawHashValue(seed:)(*(v10 + 40));
    v13 = -1 << *(v10 + 32);
    a1 = v12 & ~v13;
    if ((*(v10 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(v10 + 48) + 8 * a1);
        v3 = static NSObject.== infix(_:_:)();

        if (v3)
        {
          goto LABEL_19;
        }

        a1 = (a1 + 1) & v14;
      }

      while (((*(v10 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= a1)
  {
    goto LABEL_24;
  }

  if (((*(v10 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v3;
  if (*(v10 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100194A34();
  }

  sub_100197458(a1);
  *v11 = v10;
}

void sub_1007482E4(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100009F78(0, a5);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100009F78(0, a5);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v16;
    v9 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

void sub_1007484FC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v4 - 8);
  v33 = &v30 - v5;
  v6 = type metadata accessor for MusicPin();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_1007493A0(&qword_10118BE70, &type metadata accessor for MusicPin);
  dispatch thunk of Identifiable.id.getter();
  v34 = 0xD000000000000014;
  v35 = 0x8000000100E3E560;
  String.append(_:)(v36);

  countAndFlagsBits = v34;
  v9 = v35;
  v11 = MusicPin.title.getter();
  v31 = v12;
  v32 = v11;
  v30 = sub_1003277A8();
  v13 = *(v7 + 32);
  v13(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v15 + v14;
  v17 = v15;
  v13(v16, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v36._countAndFlagsBits = countAndFlagsBits;
  v36._object = v9;
  v34 = 0xD000000000000014;
  v35 = 0x8000000100E3E560;
  v18 = type metadata accessor for Locale();
  v19 = v33;
  (*(*(v18 - 8) + 56))(v33, 1, 1, v18);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v21 = v20;
  LOBYTE(v8) = v22;
  sub_1000095E8(v19, &unk_101182EA0);
  if (v8)
  {
    v36._countAndFlagsBits = 0xD000000000000014;
    v36._object = 0x8000000100E3E560;
    v23._countAndFlagsBits = countAndFlagsBits;
    v23._object = v9;
    String.append(_:)(v23);
    v24 = countAndFlagsBits;
    countAndFlagsBits = v36._countAndFlagsBits;
    object = v36._object;
LABEL_7:
    *a2 = countAndFlagsBits;
    a2[1] = object;
    a2[2] = v24;
    a2[3] = v9;
    v29 = v31;
    a2[4] = v32;
    a2[5] = v29;
    a2[6] = v30;
    a2[7] = sub_100749F64;
    a2[8] = v17;
    return;
  }

  v26 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v26 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v26 >= v21 >> 14)
  {

    String.subscript.getter();

    v24 = static String._fromSubstring(_:)();
    v28 = v27;

    object = v9;
    v9 = v28;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10074889C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v4 - 8);
  v40 = &v35 - v5;
  v6 = type metadata accessor for Playlist.Folder();
  v7 = *(v6 - 8);
  v39 = *(v7 + 64);
  __chkstk_darwin(v6);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Playlist.Folder.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007493A0(&qword_1011A0DB8, &type metadata accessor for Playlist.Folder);
  dispatch thunk of Identifiable.id.getter();
  v41 = 0xD000000000000014;
  v42 = 0x8000000100E3E560;
  String.append(_:)(v43);

  v13 = v42;
  v37 = v41;
  (*(v7 + 16))(v12, a1, v6);
  (*(v10 + 104))(v12, enum case for Playlist.Folder.Item.folder(_:), v9);
  v14 = Playlist.Folder.Item.name.getter();
  v35 = v15;
  v36 = v14;
  (*(v10 + 8))(v12, v9);
  v16 = sub_100735B1C();
  v17 = *(v7 + 32);
  v18 = v38;
  v17(v38, a1, v6);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v21 = v18;
  countAndFlagsBits = v37;
  v17((v20 + v19), v21, v6);
  v43._countAndFlagsBits = countAndFlagsBits;
  v43._object = v13;
  v41 = 0xD000000000000014;
  v42 = 0x8000000100E3E560;
  v23 = type metadata accessor for Locale();
  v24 = v40;
  (*(*(v23 - 8) + 56))(v40, 1, 1, v23);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v26 = v25;
  LOBYTE(v6) = v27;
  sub_1000095E8(v24, &unk_101182EA0);
  if (v6)
  {
    v43._countAndFlagsBits = 0xD000000000000014;
    v43._object = 0x8000000100E3E560;
    v28._countAndFlagsBits = countAndFlagsBits;
    v28._object = v13;
    String.append(_:)(v28);
    v29 = countAndFlagsBits;
    countAndFlagsBits = v43._countAndFlagsBits;
    object = v43._object;
LABEL_7:
    *a2 = countAndFlagsBits;
    a2[1] = object;
    a2[2] = v29;
    a2[3] = v13;
    v34 = v35;
    a2[4] = v36;
    a2[5] = v34;
    a2[6] = v16;
    a2[7] = sub_100749C28;
    a2[8] = v20;
    return;
  }

  v31 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v31 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v31 >= v26 >> 14)
  {

    String.subscript.getter();

    v29 = static String._fromSubstring(_:)();
    v33 = v32;

    object = v13;
    v13 = v33;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100748D2C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v4 - 8);
  v40 = &v35 - v5;
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  v39 = *(v7 + 64);
  __chkstk_darwin(v6);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Playlist.Folder.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007493A0(&unk_1011A4BD0, &type metadata accessor for Playlist);
  dispatch thunk of Identifiable.id.getter();
  v41 = 0xD000000000000014;
  v42 = 0x8000000100E3E560;
  String.append(_:)(v43);

  v13 = v42;
  v37 = v41;
  (*(v7 + 16))(v12, a1, v6);
  (*(v10 + 104))(v12, enum case for Playlist.Folder.Item.playlist(_:), v9);
  v14 = Playlist.Folder.Item.name.getter();
  v35 = v15;
  v36 = v14;
  (*(v10 + 8))(v12, v9);
  v16 = sub_100736308();
  v17 = *(v7 + 32);
  v18 = v38;
  v17(v38, a1, v6);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v21 = v18;
  countAndFlagsBits = v37;
  v17((v20 + v19), v21, v6);
  v43._countAndFlagsBits = countAndFlagsBits;
  v43._object = v13;
  v41 = 0xD000000000000014;
  v42 = 0x8000000100E3E560;
  v23 = type metadata accessor for Locale();
  v24 = v40;
  (*(*(v23 - 8) + 56))(v40, 1, 1, v23);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v26 = v25;
  LOBYTE(v6) = v27;
  sub_1000095E8(v24, &unk_101182EA0);
  if (v6)
  {
    v43._countAndFlagsBits = 0xD000000000000014;
    v43._object = 0x8000000100E3E560;
    v28._countAndFlagsBits = countAndFlagsBits;
    v28._object = v13;
    String.append(_:)(v28);
    v29 = countAndFlagsBits;
    countAndFlagsBits = v43._countAndFlagsBits;
    object = v43._object;
LABEL_7:
    *a2 = countAndFlagsBits;
    a2[1] = object;
    a2[2] = v29;
    a2[3] = v13;
    v34 = v35;
    a2[4] = v36;
    a2[5] = v34;
    a2[6] = v16;
    a2[7] = sub_100749CA0;
    a2[8] = v20;
    return;
  }

  v31 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v31 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v31 >= v26 >> 14)
  {

    String.subscript.getter();

    v29 = static String._fromSubstring(_:)();
    v33 = v32;

    object = v13;
    v13 = v33;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1007491BC(void **a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(__n128))
{
  v11 = a6(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v21 - v14;
  v16 = *a1;
  a7(v13);
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v21[3] = v17;
    v18 = v16;
    swift_getAtKeyPath();
    v19 = a2(v15, a5);

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_100749310(uint64_t a1, uint64_t a2)
{
  if (sub_10019891C(a1, a2))
  {
    v4 = *(_s19PlaylistTabsRequestVMa() + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        _s11PlaylistTabCMa();
        v7 = v6;
        v8 = v5;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1007493A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007493F0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1007494A8(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_100745C30(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1007495E0(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10074662C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1007496D8()
{
  v0 = type metadata accessor for Playlist.Variant();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  v4 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
  v4(v16, 0);
  v5 = objc_opt_self();
  v6 = [v5 defaultMetrics];
  [v6 scaledValueForValue:28.0];
  v8 = v7;
  [v6 scaledValueForValue:28.0];

  v9 = UIListContentConfiguration.imageProperties.modify();
  v10 = UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify();
  *v11 = v8;
  v10(v15, 0);
  v9(v16, 0);
  v12 = [v5 defaultMetrics];
  [v12 scaledValueForValue:28.0];
  [v12 scaledValueForValue:28.0];

  v13 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.maximumSize.setter();
  v13(v16, 0);
  (*(v1 + 104))(v3, enum case for Playlist.Variant.folder(_:), v0);
  Playlist.Variant.symbolImage.getter();
  (*(v1 + 8))(v3, v0);
  return UIListContentConfiguration.image.setter();
}

uint64_t sub_10074995C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return v2(&v5);
}

uint64_t sub_1007499A0(uint64_t a1)
{
  v3 = *(_s19PlaylistTabsRequestVMa() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_10010FC20(&qword_1011828F8) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v15 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100008F30;

  return sub_10073B6D0(a1, v11, v12, v1 + v4, v15, v9, v1 + v8, v10);
}

uint64_t sub_100749B78(uint64_t a1, uint64_t a2)
{
  v4 = _s9PlaylistsV5ScopeVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100749D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100749DA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100749E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100749E6C()
{
  result = qword_10118DFA0;
  if (!qword_10118DFA0)
  {
    sub_100009F78(255, &qword_101181F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DFA0);
  }

  return result;
}

uint64_t sub_100749ED4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_100749F90(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t SharePlayTogetherSessionType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10074A0BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 184) = a6;
  *(v7 + 192) = v6;
  *(v7 + 168) = a4;
  *(v7 + 176) = a5;
  *(v7 + 336) = a3;
  *(v7 + 152) = a1;
  *(v7 + 160) = a2;
  v8 = type metadata accessor for Logger();
  *(v7 + 200) = v8;
  *(v7 + 208) = *(v8 - 8);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = type metadata accessor for MainActor();
  *(v7 + 256) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 264) = v10;
  *(v7 + 272) = v9;

  return _swift_task_switch(sub_10074A210, v10, v9);
}

uint64_t sub_10074A210()
{
  v1 = objc_opt_self();
  v2 = [v1 shared];
  v3 = [v2 activeUserState];

  if (v3)
  {

    v4 = [v3 music];
    if (v4 && (v5 = v4, v6 = [v4 userProfile], v5, v6))
    {
      v7 = [v6 collaborationAllowed];

      v8 = v7 ^ 1;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(v0 + 240);
    v11 = *(v0 + 176);
    v10 = *(v0 + 184);
    v12 = *(v0 + 160);
    v36 = *(v0 + 168);
    v37 = *(v0 + 336);
    v13 = *(v0 + 152);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = v13;
    sub_100030444(v11);
    v17 = v12;

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = &protocol witness table for MainActor;
    *(v19 + 32) = v16;
    *(v19 + 40) = v11;
    *(v19 + 48) = v10;
    *(v19 + 56) = v17;
    *(v19 + 64) = v36;
    *(v19 + 72) = v14;
    *(v19 + 80) = v37;
    sub_1001F4CB8(0, 0, v9, &unk_100EE09E8, v19);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 232);
    v23 = *(v0 + 200);
    v24 = *(v0 + 208);
    v25 = Logger.sharePlayTogether.unsafeMutableAddressor();
    *(v0 + 280) = v25;
    v26 = *(v24 + 16);
    *(v0 + 288) = v26;
    *(v0 + 296) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v22, v25, v23);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Couldn't get activeUserState, reloading", v29, 2u);
    }

    v30 = *(v0 + 232);
    v31 = *(v0 + 200);
    v32 = *(v0 + 208);

    v33 = *(v32 + 8);
    *(v0 + 304) = v33;
    v33(v30, v31);
    v34 = [v1 shared];
    *(v0 + 312) = v34;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_10074A64C;
    v35 = swift_continuation_init();
    *(v0 + 136) = sub_10010FC20(&qword_10118EAE8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100407FE0;
    *(v0 + 104) = &unk_1010BDB10;
    *(v0 + 112) = v35;
    [v34 refreshUserStatesWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10074A64C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);
  if (v2)
  {
    v5 = sub_10074AC88;
  }

  else
  {
    v5 = sub_10074A77C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10074A77C()
{
  v1 = *(v0 + 144);

  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    (*(v0 + 288))(*(v0 + 224), *(v0 + 280), *(v0 + 200));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Got activeUserState, retrying", v5, 2u);
    }

    v6 = *(v0 + 304);
    v7 = *(v0 + 224);
    v8 = *(v0 + 200);

    v6(v7, v8);
    v9 = swift_task_alloc();
    *(v0 + 328) = v9;
    *v9 = v0;
    v9[1] = sub_10074AADC;
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = *(v0 + 152);

    return sub_10074A0BC(v12, v10, 0, v11, 0, 0);
  }

  else
  {

    (*(v0 + 288))(*(v0 + 216), *(v0 + 280), *(v0 + 200));
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to refresh activeUserState, returning", v16, 2u);
    }

    v17 = *(v0 + 304);
    v18 = *(v0 + 240);
    v19 = *(v0 + 216);
    v20 = *(v0 + 200);
    v21 = *(v0 + 160);

    v17(v19, v20);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    v23 = v21;
    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = &protocol witness table for MainActor;
    v25[4] = v23;
    sub_1001F4CB8(0, 0, v18, &unk_100EE09D8, v25);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_10074AADC()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return _swift_task_switch(sub_10074ABFC, v3, v2);
}

uint64_t sub_10074ABFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10074AC88()
{
  v1 = *(v0 + 312);

  swift_willThrow();

  (*(v0 + 288))(*(v0 + 216), *(v0 + 280), *(v0 + 200));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to refresh activeUserState, returning", v4, 2u);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = *(v0 + 160);

  v5(v7, v8);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = v9;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_1001F4CB8(0, 0, v6, &unk_100EE09D8, v13);

  v14 = *(v0 + 8);

  return v14();
}

unint64_t sub_10074AE98()
{
  result = qword_1011A0E18;
  if (!qword_1011A0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0E18);
  }

  return result;
}

uint64_t *sub_10074AEEC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_10074AF18()
{
  v1 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for SocialProfile();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007630D8(v0, v13, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = *v13;
      Hasher._combine(_:)(5uLL);
      Hasher._combine(_:)(v17);
      return;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v15 = 1;
    }

    else
    {
      v15 = 4;
    }

    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v16 = *v13;
    Hasher._combine(_:)(2uLL);
    v15 = v16;
LABEL_9:
    Hasher._combine(_:)(v15);
    return;
  }

  sub_100763140(v13, v10, type metadata accessor for SharePlayTogetherSession.Participant);
  Hasher._combine(_:)(3uLL);
  String.hash(into:)();
  Hasher._combine(_:)(v10[32]);
  sub_1000089F8(&v10[*(v8 + 32)], v3, &qword_101186E00);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100761B84(v10, type metadata accessor for SharePlayTogetherSession.Participant);
    sub_1000095E8(v3, &qword_101186E00);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    SocialProfile.id.getter();
    String.hash(into:)();

    (*(v5 + 8))(v7, v4);
    sub_100761B84(v10, type metadata accessor for SharePlayTogetherSession.Participant);
  }
}

Swift::Int sub_10074B288()
{
  Hasher.init(_seed:)();
  sub_10074AF18();
  return Hasher._finalize()();
}

Swift::Int sub_10074B2CC()
{
  Hasher.init(_seed:)();
  sub_10074AF18();
  return Hasher._finalize()();
}

id sub_10074B30C(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_preferredWidth];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_onDismiss];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_observables] = &_swiftEmptySetSingleton;
  v5 = &v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastSeenSafeAreaLayoutFrame];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
  v7 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_contentSizeObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_discoveryPreferenceObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_sessionAssertion] = 0;
  v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_viewDidAppearOnce] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

id sub_10074B480()
{
  v1 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_10074B4F0(v0, ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10074B4F0(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;
  v5 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v10[4] = sub_1007631D8;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1005A63A8;
  v10[3] = &unk_1010BD868;
  v6 = _Block_copy(v10);

  v7 = [v5 initWithSectionProvider:v6];
  _Block_release(v6);

  v8 = [objc_allocWithZone(UICollectionView) initWithFrame:v7 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  return v8;
}

uint64_t sub_10074B64C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v46 = a1;
  v5 = sub_10010FC20(&qword_1011A0F90);
  v45 = *(v5 - 1);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICollectionLayoutListConfiguration();
  v13 = *(v12 - 8);
  v47 = v12;
  v48 = v13;
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [v17 traitCollection];
    v19 = [v18 userInterfaceIdiom];

    v20 = &enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:);
    if (v19 != 3)
    {
      v20 = &enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:);
    }

    (*(v9 + 104))(v11, *v20, v8);
    UICollectionLayoutListConfiguration.init(appearance:)();
    v21 = [objc_opt_self() clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
    if (qword_10117FCA8 != -1)
    {
      swift_once();
    }

    v22 = *&qword_101219510 + 20.0;
    if (qword_10117FCB0 != -1)
    {
      swift_once();
    }

    v23 = v22 + *&qword_101219518;
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 2) = v24;
    v25[3] = 0.0;
    v25[4] = v23;
    v25[5] = 0.0;
    v25[6] = 0.0;
    *(v25 + 7) = a4;
    v26 = v17;
    UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
    sub_100009F78(0, &qword_101191398);
    v27 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    v28 = [v26 traitCollection];

    v29 = [v28 userInterfaceIdiom];
    if (v29 != 3)
    {
      [v27 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
      v32 = v47;
LABEL_20:

      (*(v48 + 8))(v15, v32);
      return v27;
    }

    v30 = *&v26[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
    if (v30)
    {
      v31 = v30;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v32 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      (*(v45 + 8))(v7, v5);
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(v32 + 16) > v46)
      {
        v33 = v32 + 16 * v46;
        v35 = *(v33 + 32);
        v34 = *(v33 + 40);

        if (v35 == 0x7069636974726170 && v34 == 0xEC00000073746E61)
        {

          v32 = v47;
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v32 = v47;
          if ((v36 & 1) == 0)
          {
LABEL_19:
            [v27 contentInsets];
            [v27 setContentInsets:0.0];
            goto LABEL_20;
          }
        }

        v37 = objc_opt_self();
        v38 = [v37 fractionalWidthDimension:1.0];
        v39 = [v37 estimatedDimension:32.0];
        v25 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

        v5 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v25 elementKind:UICollectionElementKindSectionHeader alignment:1];
        v40 = [v27 boundarySupplementaryItems];
        sub_100009F78(0, &unk_1011913A0);
        v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = v41;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_18:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v27 setBoundarySupplementaryItems:isa];

          goto LABEL_19;
        }

LABEL_23:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10074BDC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v67 - v7;
  v70 = sub_10010FC20(&qword_1011A0FA8);
  __chkstk_darwin(v70);
  v72 = &v67 - v9;
  v10 = sub_10010FC20(&unk_1011A0FB0);
  __chkstk_darwin(v10 - 8);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v67 - v13;
  __chkstk_darwin(v14);
  v78 = &v67 - v15;
  v76 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v71 = *(v76 - 8);
  __chkstk_darwin(v76);
  v67 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v77 = &v67 - v18;
  v19 = sub_10010FC20(&qword_1011A0F78);
  __chkstk_darwin(v19 - 8);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v67 - v23;
  v25 = type metadata accessor for UIListSeparatorConfiguration();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v80 = v26;
  v30 = *(v26 + 16);
  if (!Strong)
  {
    return v30(a2, a1, v25);
  }

  v31 = Strong;
  v79 = a2;
  result = v30(v28, a1, v25);
  v33 = *&v31[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
  if (v33)
  {
    v34 = v28;
    v35 = v33;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v36 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
    if ((*(*(v36 - 8) + 48))(v24, 1, v36) == 1)
    {
LABEL_19:

LABEL_20:
      v52 = v79;
      v53 = v80;
      sub_1000095E8(v24, &qword_1011A0F78);
      return (*(v53 + 32))(v52, v34, v25);
    }

    sub_1000089F8(v24, v21, &qword_1011A0F78);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload != 3)
      {
        UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
        v38 = [v31 traitCollection];
        v39 = [v38 userInterfaceIdiom];

        if (v39 != 3)
        {
          if (*(*&v31[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session] + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost))
          {
            v51 = &enum case for UIListSeparatorConfiguration.Visibility.visible(_:);
          }

          else
          {
            v51 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
          }

          (*(v74 + 104))(v68, *v51, v75);
          goto LABEL_18;
        }

LABEL_8:
        (*(v74 + 104))(v8, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v75);
LABEL_18:
        UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (!EnumCaseMultiPayload)
    {
LABEL_11:
      UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
      goto LABEL_19;
    }

    v75 = v25;
    v40 = v77;
    sub_100763140(v21, v77, type metadata accessor for SharePlayTogetherSession.Participant);
    v41 = v78;
    sub_1007630D8(v40, v78, type metadata accessor for SharePlayTogetherSession.Participant);
    v42 = v71;
    v43 = 1;
    v74 = *(v71 + 56);
    (v74)(v41, 0, 1, v76);
    v44 = *&v31[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
    v45 = *((swift_isaMask & *v44) + 0x180);
    v46 = v44;
    v47 = v45();

    v48 = *(v47 + 16);
    if (v48)
    {
      v49 = v73;
      sub_1007630D8(v47 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * (v48 - 1), v73, type metadata accessor for SharePlayTogetherSession.Participant);
      v43 = 0;
      v50 = v72;
    }

    else
    {
      v50 = v72;
      v49 = v73;
    }

    v54 = v43;
    v55 = v76;
    (v74)(v49, v54, 1, v76);
    v56 = *(v70 + 48);
    sub_1000089F8(v78, v50, &unk_1011A0FB0);
    v74 = v56;
    sub_1000089F8(v49, v50 + v56, &unk_1011A0FB0);
    v57 = *(v42 + 48);
    v58 = v57(v50, 1, v55) == 1;
    v59 = v49;
    v25 = v75;
    v60 = v50;
    if (v58)
    {
      sub_1000095E8(v59, &unk_1011A0FB0);
      sub_1000095E8(v78, &unk_1011A0FB0);
      if (v57(v50 + v74, 1, v55) == 1)
      {
        sub_1000095E8(v50, &unk_1011A0FB0);
LABEL_30:
        UIListSeparatorConfiguration.bottomSeparatorInsets.setter();

        sub_100761B84(v77, type metadata accessor for SharePlayTogetherSession.Participant);
        goto LABEL_20;
      }
    }

    else
    {
      v61 = v50;
      v62 = v69;
      sub_1000089F8(v61, v69, &unk_1011A0FB0);
      v63 = v74;
      v64 = v57(v60 + v74, 1, v55);
      if (v64 != 1)
      {
        v65 = v62;
        v66 = v67;
        sub_100763140(v60 + v63, v67, type metadata accessor for SharePlayTogetherSession.Participant);
        static SharePlayTogetherSession.Participant.__derived_struct_equals(_:_:)(v65, v66);
        sub_100761B84(v66, type metadata accessor for SharePlayTogetherSession.Participant);
        sub_1000095E8(v73, &unk_1011A0FB0);
        sub_1000095E8(v78, &unk_1011A0FB0);
        sub_100761B84(v65, type metadata accessor for SharePlayTogetherSession.Participant);
        sub_1000095E8(v60, &unk_1011A0FB0);
        goto LABEL_30;
      }

      sub_1000095E8(v73, &unk_1011A0FB0);
      sub_1000095E8(v78, &unk_1011A0FB0);
      sub_100761B84(v62, type metadata accessor for SharePlayTogetherSession.Participant);
    }

    sub_1000095E8(v60, &qword_1011A0FA8);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_10074C798()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10010FC20(&qword_1011A0F78);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = aBlock - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_12;
  }

  v13 = result;
  v14 = *(result + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource);
  if (v14)
  {
    v15 = v14;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v16 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
    if ((*(*(v16 - 8) + 48))(v4, 1, v16) == 1)
    {

      sub_1000095E8(v4, &qword_1011A0F78);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100763140(v4, v11, type metadata accessor for SharePlayTogetherSession.Participant);
      v17 = *&v13[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
      v18 = *((swift_isaMask & *v17) + 0x118);
      v19 = v17;
      v20 = v18();

      if ((v20 & 1) != 0 && (v11[32] & 1) == 0 && v11[33] == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1007630D8(v11, v8, type metadata accessor for SharePlayTogetherSession.Participant);
        v22 = (*(v6 + 80) + 24) & ~*(v6 + 80);
        v23 = swift_allocObject();
        *(v23 + 16) = v21;
        sub_100763140(v8, v23 + v22, type metadata accessor for SharePlayTogetherSession.Participant);

        v24 = String._bridgeToObjectiveC()();

        aBlock[4] = sub_1007631FC;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001D72A4;
        aBlock[3] = &unk_1010BD8E0;
        v25 = _Block_copy(aBlock);
        v26 = [objc_opt_self() contextualActionWithStyle:1 title:v24 handler:v25];

        _Block_release(v25);

        sub_10010FC20(&qword_101183990);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_100EBC6C0;
        *(v27 + 32) = v26;
        sub_100009F78(0, &unk_1011A49F0);
        v28 = v26;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v30 = [objc_opt_self() configurationWithActions:isa];

        sub_100761B84(v11, type metadata accessor for SharePlayTogetherSession.Participant);
        return v30;
      }

      sub_100761B84(v11, type metadata accessor for SharePlayTogetherSession.Participant);
    }

    else
    {

      sub_100761B84(v4, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
    }

LABEL_12:
    sub_100009F78(0, &unk_1011A49F0);
    v31 = Array._bridgeToObjectiveC()().super.isa;
    v30 = [objc_opt_self() configurationWithActions:v31];

    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_10074CDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);

    (*((swift_isaMask & *v10) + 0x338))(a6);
  }

  return a3(1);
}

id sub_10074CEA8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v84 = sub_10010FC20(&unk_10118A650);
  v85 = *(v84 - 8);
  v87 = *(v85 + 64);
  __chkstk_darwin(v84);
  v86 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v98 = &v78 - v4;
  v5 = sub_10010FC20(&qword_1011A0FD0);
  v102 = *(v5 - 8);
  v103 = v5;
  v83 = *(v102 + 64);
  __chkstk_darwin(v5);
  v97 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = &v78 - v8;
  v9 = sub_10010FC20(&qword_1011A0FD8);
  v99 = *(v9 - 8);
  v100 = v9;
  v82 = *(v99 + 64);
  __chkstk_darwin(v9);
  v95 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = &v78 - v12;
  v89 = sub_10010FC20(&unk_1011A0FE0);
  v91 = *(v89 - 8);
  v13 = v91[8];
  __chkstk_darwin(v89);
  v96 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v94 = &v78 - v15;
  __chkstk_darwin(v16);
  v93 = &v78 - v17;
  __chkstk_darwin(v18);
  v90 = &v78 - v19;
  __chkstk_darwin(v20);
  v22 = &v78 - v21;
  __chkstk_darwin(v23);
  v25 = &v78 - v24;
  v26 = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  v105.receiver = v0;
  v105.super_class = v26;
  objc_msgSendSuper2(&v105, "viewDidLoad");
  sub_100750D7C();
  v27 = *&v0[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
  v28 = *((swift_isaMask & *v27) + 0x368);
  v29 = v27;
  v30 = v28();

  v31 = *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_sessionAssertion];
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_sessionAssertion] = v30;

  v32 = sub_10074B480();
  [v32 setDelegate:v1];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for SharePlayTogetherSession.Participant(0);
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v78 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView;
  v81 = *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v91;
  v35 = v91[2];
  v80 = v25;
  v36 = v89;
  v35(v93, v25, v89);
  v37 = v99;
  (*(v99 + 16))(v95, v92, v100);
  v38 = v102;
  (*(v102 + 16))(v97, v101, v103);
  v79 = v22;
  v39 = v22;
  v40 = v36;
  v35(v94, v39, v36);
  v35(v96, v90, v36);
  v41 = *(v34 + 80);
  v42 = v34;
  v43 = (v41 + 24) & ~v41;
  v44 = (v13 + *(v37 + 80) + v43) & ~*(v37 + 80);
  v45 = (v82 + *(v38 + 80) + v44) & ~*(v38 + 80);
  v46 = (v83 + v41 + v45) & ~v41;
  v47 = (v13 + v41 + v46) & ~v41;
  v48 = swift_allocObject();
  *(v48 + 16) = v33;
  v49 = v42[4];
  v50 = v48 + v43;
  v51 = v84;
  v49(v50, v93, v40);
  v52 = v48 + v44;
  v53 = v85;
  (*(v99 + 32))(v52, v95, v100);
  (*(v102 + 32))(v48 + v45, v97, v103);
  v49(v48 + v46, v94, v40);
  v54 = v98;
  v49(v48 + v47, v96, v40);
  v55 = objc_allocWithZone(sub_10010FC20(&qword_1011A0FF0));
  v56 = v81;
  v57 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v58 = *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource] = v57;
  v59 = v57;

  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = v86;
  (*(v53 + 16))(v86, v54, v51);
  v62 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v63 = (v87 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  *(v64 + 16) = v60;
  (*(v53 + 32))(v64 + v62, v61, v51);
  *(v64 + v63) = ObjectType;

  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  result = [v1 view];
  if (result)
  {
    v66 = result;
    v67 = v78;
    [result addSubview:*&v1[v78]];

    type metadata accessor for Whitetail.Binding();
    v68 = *&v1[v67];
    KeyPath = swift_getKeyPath();
    v104[3] = sub_10010FC20(&unk_1011A0FF8);
    v104[4] = &protocol witness table for KeyValueObservationTrigger<A, B>;
    v104[0] = v68;
    v104[1] = KeyPath;
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = v68;
    *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_contentSizeObserver] = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v104, 1, sub_100763550, v70);

    v72 = MRGroupSessionNearbyContactDiscoveryPreferenceDidChangeNotification;
    v73 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v74 = v72;

    v75 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v74, 0, 1, 1, sub_1007631B0, v73);
    (*(v53 + 8))(v98, v51);
    v76 = v91[1];
    v77 = v89;
    v76(v90, v89);
    v76(v79, v77);
    (*(v102 + 8))(v101, v103);
    (*(v99 + 8))(v92, v100);
    v76(v80, v77);

    *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_discoveryPreferenceObserver] = v75;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10074DA70()
{
  v0 = sub_10010FC20(&qword_1011A10A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - v2;
  v4 = sub_10010FC20(&qword_1011A10B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong traitCollection];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 3)
    {
      v12 = swift_allocObject();
      v13 = swift_unknownObjectWeakInit();
      __chkstk_darwin(v13);
      v14[-4] = v9;
      v14[-3] = sub_100763930;
      v14[-2] = v12;
      sub_1007639B8();

      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.horizontal.getter();
      v15 = v4;
      v16 = sub_100020674(&qword_1011A10E8, &qword_1011A10B0);
      sub_10001C8B8(v14);
      UIHostingConfiguration.margins(_:_:)();

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      sub_10010FC20(&qword_1011A10B8);
      sub_100763878();
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v15 = v0;
      v16 = sub_100020674(&qword_1011A10D8, &qword_1011A10A8);
      sub_10001C8B8(v14);
      UIHostingConfiguration.margins(_:_:)();
      (*(v1 + 8))(v3, v0);
    }

    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10074DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for Locale();
  v4[13] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10074DEF8, v6, v5);
}

uint64_t sub_10074DEF8()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  v3 = *((swift_isaMask & *v2) + 0x258);
  v4 = v2;
  v3();
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);

  if (v7)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = *(v0 + 72);
    *(v0 + 40) = v7;
    *(v0 + 48) = v8;
    sub_10002BC44(v5, v6);
    v10 = v7;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
    v12 = QRCodeOverlayViewController.init(qrCode:title:subtitle:)((v0 + 16));
    v13 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v12];

    [v13 setModalPresentationStyle:5];
    [v9 presentViewController:v13 animated:0 completion:0];

    sub_1000095E8(v0 + 56, &unk_1011A0F80);
  }

  v14 = *(v0 + 8);

  return v14();
}

void sub_10074E16C()
{
  v0 = sub_10010FC20(&qword_1011A1090);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong traitCollection];
    v7 = [v6 userInterfaceIdiom];

    v8 = swift_allocObject();
    v9 = swift_unknownObjectWeakInit();
    __chkstk_darwin(v9);
    v10[-4] = v5;
    LOBYTE(v10[-3]) = v7 == 3;
    v10[-2] = sub_100763838;
    v10[-1] = v8;
    type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView(0);
    sub_100763090(&qword_1011A1098, type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView);

    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v10[3] = v0;
    v10[4] = sub_100020674(&qword_1011A10A0, &qword_1011A1090);
    sub_10001C8B8(v10);
    UIHostingConfiguration.margins(_:_:)();

    (*(v1 + 8))(v3, v0);

    UICollectionViewCell.contentConfiguration.setter();
  }
}

void sub_10074E400()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v4 = String._bridgeToObjectiveC()();

    v5 = String._bridgeToObjectiveC()();

    v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    v8 = v3;
    v9 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100763870;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10027D328;
    aBlock[3] = &unk_1010BDA20;
    v10 = _Block_copy(aBlock);

    v11 = objc_opt_self();
    v12 = [v11 actionWithTitle:v9 style:0 handler:v10];
    _Block_release(v10);

    [v6 addAction:v12];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v11 actionWithTitle:v13 style:1 handler:0];

    [v6 addAction:v14];
    [v8 presentViewController:v6 animated:1 completion:0];
  }
}

void sub_10074E84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  v3 = *((swift_isaMask & *v2) + 0x340);
  v4 = v2;
  v3();
}

void sub_10074E8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_1011A1078);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong traitCollection];
    [v10 userInterfaceIdiom];

    __chkstk_darwin(v11);
    v13[-4] = v9;
    v13[-3] = a3;
    LOBYTE(v13[-2]) = v12;
    type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
    sub_100763090(&qword_1011A1080, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v4;
    v13[4] = sub_100020674(&qword_1011A1088, &qword_1011A1078);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

void sub_10074EB24()
{
  v0 = sub_10010FC20(&qword_1011A1048);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 3)
    {
      __chkstk_darwin(v8);
      v11[-2] = v5;
      sub_100763704();
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v12 = v0;
      v13 = sub_100020674(&qword_1011A1070, &qword_1011A1048);
      sub_10001C8B8(v11);
      UIHostingConfiguration.margins(_:_:)();
      (*(v1 + 8))(v3, v0);
    }

    else
    {
      v9 = swift_allocObject();
      v10 = swift_unknownObjectWeakInit();
      __chkstk_darwin(v10);
      v11[-4] = v5;
      v11[-3] = sub_100763688;
      v11[-2] = v9;
      v12 = sub_10010FC20(&qword_1011A1050);
      v13 = sub_100020674(&qword_1011A1058, &qword_1011A1050);
      sub_10001C8B8(v11);
      type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0);
      sub_100763090(&qword_1011A1060, type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell);

      UIHostingConfiguration<>.init(content:)();
    }

    UICollectionViewCell.contentConfiguration.setter();
  }
}

void sub_10074EE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = v8;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    sub_1001F4CB8(0, 0, v6, a3, v12);
  }
}

uint64_t sub_10074EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for Locale();
  v4[13] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10074F0A0, v6, v5);
}

uint64_t sub_10074F0A0()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  v3 = *((swift_isaMask & *v2) + 0x258);
  v4 = v2;
  v3();
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);

  if (v7)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = *(v0 + 72);
    *(v0 + 40) = v7;
    *(v0 + 48) = v8;
    sub_10002BC44(v5, v6);
    v10 = v7;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
    v12 = QRCodeOverlayViewController.init(qrCode:title:subtitle:)((v0 + 16));
    [v12 setModalPresentationStyle:5];
    [v9 presentViewController:v12 animated:0 completion:0];

    sub_1000095E8(v0 + 56, &unk_1011A0F80);
  }

  v13 = *(v0 + 8);

  return v13();
}

void sub_10074F2EC(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [a1 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v8) = UICellConfigurationState.isFocused.getter();
    v9 = (*(v3 + 8))(v5, v2);
    __chkstk_darwin(v9);
    LOBYTE(v10[-2]) = v8 & 1;
    v10[3] = sub_10010FC20(&qword_1011A1008);
    v10[4] = sub_100020674(&qword_1011A1010, &qword_1011A1008);
    sub_10001C8B8(v10);
    sub_10010FC20(&qword_1011A1018);
    sub_100764A9C(&qword_1011A1020, &qword_1011A1018, &unk_100EE07F8, sub_100763574);
    UIHostingConfiguration<>.init(content:)();
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10074F51C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.header()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIListContentConfiguration.text.setter();
  v8[3] = v2;
  v8[4] = &protocol witness table for UIListContentConfiguration;
  v6 = sub_10001C8B8(v8);
  (*(v3 + 16))(v6, v5, v2);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v3 + 8))(v5, v2);
}

id sub_10074F708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = a8;
  v76 = a7;
  v73 = a6;
  v74 = a5;
  v83 = a2;
  v84 = a1;
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_1011A0FB0);
  __chkstk_darwin(v12 - 8);
  v72 = &v67 - v13;
  v70 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v77 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v15 - 8);
  v71 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  __chkstk_darwin(v20);
  v82 = &v67 - v21;
  v22 = sub_10010FC20(&qword_1011A0F78);
  __chkstk_darwin(v22 - 8);
  v24 = &v67 - v23;
  v25 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for UIBackgroundConfiguration();
  v85 = *(v29 - 8);
  v86 = v29;
  __chkstk_darwin(v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(UICollectionViewCell) init];
  }

  v80 = v10;
  v68 = v9;
  v79 = Strong;
  v33 = [v79 traitCollection];
  v78 = [v33 userInterfaceIdiom];

  static UIBackgroundConfiguration.clear()();
  v34 = [objc_allocWithZone(UIView) init];
  v35 = [objc_opt_self() blackColor];
  v36 = a3;
  v37 = [v35 colorWithAlphaComponent:0.1];

  [v34 setBackgroundColor:v37];
  v38 = v36;
  [v34 _setDrawsAsBackdropOverlayWithBlendMode:1];
  v39 = v34;
  UIBackgroundConfiguration.customView.setter();
  sub_1007630D8(v36, v28, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = v31;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v55 = v77;
      sub_100763140(v28, v77, type metadata accessor for SharePlayTogetherSession.Participant);
      v56 = v72;
      sub_1007630D8(v55, v72, type metadata accessor for SharePlayTogetherSession.Participant);
      (*(v69 + 56))(v56, 0, 1, v70);
      sub_100009F78(0, &unk_101184750);
      v51 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v56, &unk_1011A0FB0);
      v46 = v78;
      v44 = v80;
      v54 = v85;
      v53 = v86;
      v42 = v39;
      if (v78 == 3)
      {
        v57 = v51;
        v58 = v71;
        static UIBackgroundConfiguration.clear()();
      }

      else
      {
        v58 = v71;
        (*(v85 + 16))(v71, v41, v86);
        v60 = v51;
      }

      v43 = v79;
      (*(v54 + 56))(v58, 0, 1, v53);
      UICollectionViewCell.backgroundConfiguration.setter();

      sub_100761B84(v77, type metadata accessor for SharePlayTogetherSession.Participant);
    }

    else
    {
      v87 = *v28;
      v88 = 0;
      sub_100009F78(0, &unk_101184750);
      v45 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      v51 = v45;
      v46 = v78;
      v44 = v80;
      v54 = v85;
      v53 = v86;
      v42 = v39;
      if (v78 == 3)
      {
        v47 = v45;
        static UIBackgroundConfiguration.clear()();
      }

      else
      {
        (*(v85 + 16))(v19, v41, v86);
        v59 = v51;
      }

      (*(v54 + 56))(v19, 0, 1, v53);
      UICollectionViewCell.backgroundConfiguration.setter();

      v43 = v79;
    }
  }

  else
  {
    v42 = v39;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1007630D8(v38, v24, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      (*(v26 + 56))(v24, 0, 1, v25);
      sub_100009F78(0, &unk_101184750);
      v48 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v24, &qword_1011A0F78);
      v51 = v48;
      v49 = v82;
      static UIBackgroundConfiguration.clear()();
      v54 = v85;
      v53 = v86;
      (*(v85 + 56))(v49, 0, 1, v86);
      UICollectionViewCell.backgroundConfiguration.setter();

      v43 = v79;
      v44 = v80;
    }

    else
    {
      v43 = v79;
      v44 = v80;
      sub_1007630D8(v38, v24, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      (*(v26 + 56))(v24, 0, 1, v25);
      sub_100009F78(0, &unk_101184750);
      v50 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v24, &qword_1011A0F78);
      v51 = v50;
      v52 = v82;
      static UIBackgroundConfiguration.clear()();
      v54 = v85;
      v53 = v86;
      (*(v85 + 56))(v52, 0, 1, v86);
      UICollectionViewCell.backgroundConfiguration.setter();
    }

    v46 = v78;
  }

  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v46 == 3)
  {

    v62 = [v43 traitCollection];
    v63 = v81;
    UICellConfigurationState.init(traitCollection:)();
    sub_1007501D0(v51, v38);

    (*(v44 + 8))(v63, v68);
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v65 = swift_allocObject();
    v65[2] = v64;
    v65[3] = sub_100763558;
    v65[4] = v61;

    UICollectionViewCell.configurationUpdateHandler.setter();

    (*(v54 + 8))(v41, v53);
  }

  else
  {

    (*(v54 + 8))(v41, v53);
  }

  return v51;
}

void sub_1007501D0(uint64_t a1, uint64_t a2)
{
  v28[1] = a1;
  v3 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v3 - 8);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v28 - v7;
  __chkstk_darwin(v9);
  v11 = v28 - v10;
  v12 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  __chkstk_darwin(v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v28 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_storeEnumTagMultiPayload();
    v20 = sub_100761518(a2, v17);
    sub_100761B84(v17, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
    if ((v20 & 1) == 0)
    {
      sub_1007630D8(a2, v14, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v21 = UICellConfigurationState.isFocused.getter();
        v28[0] = v28;
        __chkstk_darwin(v21);
        LOBYTE(v28[-2]) = v22 & 1;
        v29[3] = sub_10010FC20(&qword_1011A1008);
        v29[4] = sub_100020674(&qword_1011A1010, &qword_1011A1008);
        sub_10001C8B8(v29);
        sub_10010FC20(&qword_1011A1018);
        sub_100764A9C(&qword_1011A1020, &qword_1011A1018, &unk_100EE07F8, sub_100763574);
        UIHostingConfiguration<>.init(content:)();
        UICollectionViewCell.contentConfiguration.setter();
      }

      else
      {
        sub_100761B84(v14, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      }

      if (UICellConfigurationState.isFocused.getter())
      {
        UICollectionViewCell.backgroundConfiguration.getter();
        v23 = type metadata accessor for UIBackgroundConfiguration();
        if ((*(*(v23 - 8) + 48))(v11, 1, v23))
        {
          sub_1000089F8(v11, v8, &qword_1011888C0);
          UICollectionViewCell.backgroundConfiguration.setter();

          v24 = v11;
LABEL_11:
          sub_1000095E8(v24, &qword_1011888C0);
          return;
        }

        v26 = [objc_opt_self() tintColor];
        UIBackgroundConfiguration.backgroundColor.setter();
      }

      else
      {
        UICollectionViewCell.backgroundConfiguration.getter();
        v25 = type metadata accessor for UIBackgroundConfiguration();
        if ((*(*(v25 - 8) + 48))(v5, 1, v25))
        {
          sub_1000089F8(v5, v8, &qword_1011888C0);
          UICollectionViewCell.backgroundConfiguration.setter();

          v24 = v5;
          goto LABEL_11;
        }

        v27 = [objc_opt_self() tableCellPlainBackgroundColor];
        UIBackgroundConfiguration.backgroundColor.setter();
      }

      UICollectionViewCell.backgroundConfiguration.setter();
    }
  }
}

void sub_100750688(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *, uint64_t), uint64_t a5)
{
  v33 = a2;
  v8 = sub_10010FC20(&qword_1011A0F78);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  v34 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IndexPath();
  v35 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v32 = a5;
    v30 = a4;
    v22 = sub_10074B480();
    v31 = a1;
    v23 = [v22 indexPathForCell:a1];

    if (v23)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = v35;
      (*(v35 + 32))(v19, v16, v14);
      v25 = *&v21[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
      if (v25)
      {
        v26 = v25;
        dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

        v27 = (*(v34 + 48))(v10, 1, v11);
        v28 = v31;
        if (v27 == 1)
        {
          (*(v24 + 8))(v19, v14);

          sub_1000095E8(v10, &qword_1011A0F78);
        }

        else
        {
          sub_100763140(v10, v13, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
          v30(v28, v13, v33);

          sub_100761B84(v13, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
          (*(v24 + 8))(v19, v14);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

unint64_t sub_1007509D8()
{
  v0 = sub_10010FC20(&qword_1011A0F90);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(UICollectionViewCell) init];
  }

  v5 = result;
  v6 = *(result + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v8 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v1 + 8))(v3, v0);
  result = IndexPath.safeSection.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v8 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = v8 + 16 * result;
  v11 = *(v9 + 32);
  v10 = *(v9 + 40);

  if (v11 == 0x7069636974726170 && v10 == 0xEC00000073746E61)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {

      return [objc_allocWithZone(UICollectionViewCell) init];
    }
  }

  sub_100009F78(0, &unk_101184750);
  v14 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();

  return v14;
}

void sub_100750C08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (Strong[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_preferredWidth + 8])
    {
      v2 = Strong;
      v3 = sub_10074B480();
      [v3 contentSize];
      v6 = v5;
    }

    else
    {
      v6 = *&Strong[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_preferredWidth];
      v7 = Strong;
      v3 = sub_10074B480();
      [v3 contentSize];
    }

    v8 = v4;

    [v1 setPreferredContentSize:{v6, v8}];
  }
}

void sub_100750CDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100752B70(0);
  }
}

uint64_t sub_100750D7C()
{
  v1 = v0;
  v58 = sub_10010FC20(&qword_101183A40);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v49 - v2;
  v59 = sub_10010FC20(&qword_101183A48);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v49 - v3;
  v4 = sub_10010FC20(&qword_1011A0FC0);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v49 - v5;
  v6 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v6 - 8);
  v66 = &v49 - v7;
  v8 = sub_10010FC20(&unk_101183B90);
  v64 = *(v8 - 8);
  v65 = v8;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = sub_10010E5A8(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  v12 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_observables;
  swift_beginAccess();
  *(v1 + v12) = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v63 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session;
  v14 = *(v1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  type metadata accessor for SharePlayTogetherSession(0);
  sub_100763090(&unk_101189E70, type metadata accessor for SharePlayTogetherSession);
  v15 = v14;
  v16 = ObservableObject<>.objectWillChange.getter();

  v67 = v16;
  v17 = sub_100009F78(0, &qword_101182960);
  v18 = static OS_dispatch_queue.main.getter();
  v68 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v66;
  v51 = v19;
  v50 = v21;
  v49 = v20 + 56;
  (v21)(v66, 1, 1);
  type metadata accessor for ObservableObjectPublisher();
  v23 = sub_1000206BC();
  v53 = v17;
  v52 = v23;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v22, &qword_101182140);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_101183BA0, &unk_101183B90);
  v24 = v65;
  Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v10, v24);
  v25 = v13;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v26 = v63;
  v27 = *(v1 + v63);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v25;
  *(v29 + 24) = v28;
  v30 = *((swift_isaMask & *v27) + 0x360);
  v31 = v27;

  v30(sub_1007631B8, v29);

  v32 = *(v1 + v26);
  v33 = *((swift_isaMask & *v32) + 0x110);
  v34 = v32;
  LOBYTE(v28) = v33();

  if (v28)
  {
    v35 = v25;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v36 = qword_101218AC8;
    v37 = (*(*qword_101218AC8 + 720))(0, 0);
    v38 = v54;
    (*(*v36 + 552))(v37);
    v39 = static OS_dispatch_queue.main.getter();
    v67 = v39;
    v40 = v66;
    v50(v66, 1, 1, v51);
    sub_100020674(&unk_101183A50, &qword_101183A40);
    v41 = v55;
    v42 = v58;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v40, &qword_101182140);

    (*(v56 + 8))(v38, v42);
    sub_100020674(&qword_101183A60, &qword_101183A48);
    v43 = v59;
    v44 = v60;
    Publisher.dropFirst(_:)();
    (*(v57 + 8))(v41, v43);
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *(v46 + 24) = v35;
    sub_100020674(&qword_1011A0FC8, &qword_1011A0FC0);

    v47 = v62;
    Publisher<>.sink(receiveValue:)();

    (*(v61 + 8))(v44, v47);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }
}

uint64_t sub_100751704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  aBlock[4] = sub_1007631D0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010BD818;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100763090(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100020674(&qword_101183F70, &qword_101182970);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

void sub_100751A08(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v19[-v7];
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + 16);
  v9 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v10 = *(v3 + 16);
  if (a1)
  {
    v10(v5, v9, v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "[SharePlayTogetherSessionManagementViewcontroller] Session ended observer called, but we have a pending session. Not dismissing.", v13, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10(v8, v9, v2);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[SharePlayTogetherSessionManagementViewcontroller] Session ended observer called, dismissing.", v16, 2u);
    }

    (*(v3 + 8))(v8, v2);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_100751C84(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (v9)
    {
      v26 = a3;
      v12 = *&Strong[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
      v13 = *((swift_isaMask & *v9) + 0x378);
      v14 = v9;
      v15 = v12;
      LOBYTE(v12) = v13();

      if (v12)
      {
        v16 = Logger.sharePlayTogether.unsafeMutableAddressor();
        (*(v6 + 16))(v8, v16, v5);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "[SharePlayTogetherSessionManagementViewcontroller] Got new equivalent session, waiting for connection.", v19, 2u);
        }

        (*(v6 + 8))(v8, v5);
        v20 = v26;
        swift_beginAccess();
        *(v20 + 16) = 1;
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = v14;
        v23 = *((swift_isaMask & *v14) + 0x358);
        v24 = v14;

        v23(sub_1007631C8, v22);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_100751F8C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = Logger.sharePlayTogether.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v7, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[SharePlayTogetherSessionManagementViewcontroller] New session connected, updating.", v10, 2u);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
    *(Strong + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session) = a2;
    v14 = a2;

    sub_100752B70(1);
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    sub_100750D7C();
  }
}

id sub_100752164(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  objc_msgSendSuper2(&v11, "viewIsAppearing:", a1 & 1);
  v3 = sub_10074B480();
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor:v5];

  result = [v1 view];
  if (result)
  {
    v7 = result;
    v8 = [v4 clearColor];
    [v7 setBackgroundColor:v8];

    v9 = [v1 traitCollection];
    v10 = [v9 userInterfaceIdiom];

    if (v10 != 3)
    {
      [v1 setOverrideUserInterfaceStyle:2];
    }

    return sub_100752B70(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10075237C()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 safeAreaLayoutGuide];

    [v3 layoutFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = &v0[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastSeenSafeAreaLayoutFrame];
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    if (!CGRectEqualToRect(v18, *&v0[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastSeenSafeAreaLayoutFrame]))
    {
      *v12 = v5;
      v12[1] = v7;
      v12[2] = v9;
      v12[3] = v11;
      v13 = sub_10074B480();
      [v13 setFrame:{v5, v7, v9, v11}];

      v14 = [v0 traitCollection];
      v15 = [v14 userInterfaceIdiom];

      if (v15 == 3)
      {
        v16 = [*&v0[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView] collectionViewLayout];
        [v16 invalidateLayout];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1007525E8()
{
  v1 = sub_10010FC20(&unk_1011A0FB0);
  __chkstk_darwin(v1 - 8);
  v37 = &v35 - v2;
  v38 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  __chkstk_darwin(v38);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for IndexPath();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v10 = *(v35 - 8);
  __chkstk_darwin(v35);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v41 = v0;
  v19 = *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  v20 = *((swift_isaMask & *v19) + 0x180);
  v21 = v19;
  v22 = v20();

  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_6:

    return;
  }

  v24 = 0;
  while (1)
  {
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    sub_1007630D8(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v12, type metadata accessor for SharePlayTogetherSession.Participant);
    if (v12[32])
    {
      break;
    }

    ++v24;
    sub_100761B84(v12, type metadata accessor for SharePlayTogetherSession.Participant);
    if (v23 == v24)
    {
      goto LABEL_6;
    }
  }

  sub_100763140(v12, v15, type metadata accessor for SharePlayTogetherSession.Participant);
  sub_100763140(v15, v18, type metadata accessor for SharePlayTogetherSession.Participant);
  v25 = v41;
  v26 = *(v41 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource);
  if (!v26)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1007630D8(v18, v4, type metadata accessor for SharePlayTogetherSession.Participant);
  swift_storeEnumTagMultiPayload();
  v27 = v26;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  sub_100761B84(v4, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  v29 = v39;
  v28 = v40;
  if ((*(v39 + 48))(v7, 1, v40) == 1)
  {
    sub_100761B84(v18, type metadata accessor for SharePlayTogetherSession.Participant);
    sub_1000095E8(v7, &unk_10118BCE0);
  }

  else
  {
    v30 = v36;
    (*(v29 + 32))(v36, v7, v28);
    v31 = v37;
    sub_1007630D8(v18, v37, type metadata accessor for SharePlayTogetherSession.Participant);
    (*(v10 + 56))(v31, 0, 1, v35);
    v32 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
    swift_beginAccess();
    sub_10006B010(v31, v25 + v32, &unk_1011A0FB0);
    swift_endAccess();
    v33 = sub_10074B480();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v33 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

    (*(v29 + 8))(v30, v28);
    sub_100761B84(v18, type metadata accessor for SharePlayTogetherSession.Participant);
  }
}