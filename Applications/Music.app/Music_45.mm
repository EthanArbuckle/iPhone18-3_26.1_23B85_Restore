id sub_100519980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = a3;
  v45 = type metadata accessor for MusicLibrary.DownloadAction();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10010FC20(&qword_101183E08);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v38 - v7;
  v8 = type metadata accessor for MusicLibrary.AddAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101193E20);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v48 = a2;
  v19 = static MusicLibrary.== infix(_:_:)();

  result = 0;
  if ((v19 & 1) == 0)
  {
    return result;
  }

  v49 = _swiftEmptyArrayStorage;
  static MusicLibraryAction<>.add.getter();
  type metadata accessor for MusicVideo();
  v21 = v46;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 32))(v15, v18, v12);
  v22 = (*(v13 + 88))(v15, v12);
  v23 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v13 + 8))(v15, v12);
  if (v22 == v23)
  {
    v24 = v48;
    sub_10051A6A0(v21, v48, &type metadata accessor for MusicVideo, &unk_1010B0D90, sub_100533650, &unk_1010B0DA8);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v25 = v41;
    static MusicLibraryAction<>.download.getter();
    v26 = v39;
    v27 = v45;
    v28 = v48;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v43 + 8))(v25, v27);
    v29 = v42;
    v30 = v40;
    v31 = v44;
    (*(v42 + 32))(v40, v26, v44);
    LODWORD(v27) = (*(v29 + 88))(v30, v31);
    (*(v29 + 8))(v30, v31);
    v24 = v28;
    if (v27 == v23)
    {
      v32 = v47;
      sub_10051AAB4(v21, v28, v47, &type metadata accessor for MusicVideo, &unk_1010B0E08, sub_100533884, &unk_1010B0E20);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v33 = v32;
      goto LABEL_11;
    }
  }

  v33 = v47;
LABEL_11:
  v34 = sub_10051B6F0(v21, v24, v33);
  if (v34)
  {
    v35 = v34;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100009F78(0, &unk_1011A49F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v37 = [objc_opt_self() configurationWithActions:isa];

  [v37 _setSwipeActionsStyle:1];
  return v37;
}

id sub_10051A010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = a3;
  v45 = type metadata accessor for MusicLibrary.DownloadAction();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10010FC20(&qword_101183E08);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v38 - v7;
  v8 = type metadata accessor for MusicLibrary.AddAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101193E20);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v48 = a2;
  v19 = static MusicLibrary.== infix(_:_:)();

  result = 0;
  if ((v19 & 1) == 0)
  {
    return result;
  }

  v49 = _swiftEmptyArrayStorage;
  static MusicLibraryAction<>.add.getter();
  type metadata accessor for Song();
  v21 = v46;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 32))(v15, v18, v12);
  v22 = (*(v13 + 88))(v15, v12);
  v23 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v13 + 8))(v15, v12);
  if (v22 == v23)
  {
    v24 = v48;
    sub_10051A6A0(v21, v48, &type metadata accessor for Song, &unk_1010B0AE8, sub_100532E20, &unk_1010B0B00);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v25 = v41;
    static MusicLibraryAction<>.download.getter();
    v26 = v39;
    v27 = v45;
    v28 = v48;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v43 + 8))(v25, v27);
    v29 = v42;
    v30 = v40;
    v31 = v44;
    (*(v42 + 32))(v40, v26, v44);
    LODWORD(v27) = (*(v29 + 88))(v30, v31);
    (*(v29 + 8))(v30, v31);
    v24 = v28;
    if (v27 == v23)
    {
      v32 = v47;
      sub_10051AAB4(v21, v28, v47, &type metadata accessor for Song, &unk_1010B0B60, sub_100532FF8, &unk_1010B0B78);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v33 = v32;
      goto LABEL_11;
    }
  }

  v33 = v47;
LABEL_11:
  v34 = sub_10051BF28(v21, v24, v33);
  if (v34)
  {
    v35 = v34;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100009F78(0, &unk_1011A49F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v37 = [objc_opt_self() configurationWithActions:isa];

  [v37 _setSwipeActionsStyle:1];
  return v37;
}

id sub_10051A6A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v32[0] = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  v14 = __chkstk_darwin(v13 - 8);
  v15 = a3(0, v14);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v32 - v18;
  (*(v16 + 16))(v32 - v18, a1, v15, v17);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  (*(v16 + 32))(v21 + v20, v19, v15);
  aBlock[4] = a5;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = a6;
  v22 = _Block_copy(aBlock);
  v23 = objc_opt_self();

  v24 = [v23 contextualActionWithStyle:0 title:0 handler:v22];
  _Block_release(v22);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v25 = qword_101183DF8;
  v26 = String._bridgeToObjectiveC()();
  v27 = [objc_opt_self() systemImageNamed:v26 withConfiguration:v25];

  if (v27)
  {
    v28 = [v27 imageWithTintColor:*UIColor.MusicTint.normal.unsafeMutableAddressor() renderingMode:1];
  }

  else
  {
    v28 = 0;
  }

  [v24 setImage:v28];

  if (qword_10117F328 != -1)
  {
    swift_once();
  }

  [v24 setBackgroundColor:qword_101183E00];
  v29 = v24;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v30 = String._bridgeToObjectiveC()();

  [v29 setAccessibilityLabel:v30];

  return v29;
}

id sub_10051AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35[0] = a7;
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v35[1] = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = __chkstk_darwin(v14 - 8);
  v16 = a4(0, v15);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v35 - v20;
  (*(v17 + 16))(v35 - v20, a1, v16, v19);
  sub_10012B7A8(a3, v37);
  v22 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v17 + 32))(v24 + v22, v21, v16);
  *(v24 + v23) = a2;
  sub_10012B828(v37, v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  aBlock[4] = a6;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = v35[0];
  v25 = _Block_copy(aBlock);
  v26 = objc_opt_self();

  v27 = [v26 contextualActionWithStyle:0 title:0 handler:v25];
  _Block_release(v25);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v28 = qword_101183DF8;
  v29 = String._bridgeToObjectiveC()();
  v30 = [objc_opt_self() systemImageNamed:v29 withConfiguration:v28];

  [v27 setImage:v30];
  v31 = [objc_opt_self() systemBlueColor];
  [v27 setBackgroundColor:v31];

  v32 = v27;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v33 = String._bridgeToObjectiveC()();

  [v32 setAccessibilityLabel:v33];

  return v32;
}

id sub_10051AEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v63 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v62 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Track();
  v60 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = v10;
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10010FC20(&qword_101183E28);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = &v50 - v14;
  v15 = type metadata accessor for MusicLibrary.RemoveAction();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_101193E60);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v50 - v24;
  static MusicLibraryAction<>.remove.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v16 + 8))(v18, v15);
  (*(v20 + 32))(v22, v25, v19);
  LODWORD(v15) = (*(v20 + 88))(v22, v19);
  v26 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v20 + 8))(v22, v19);
  v27 = v15 == v26;
  v28 = a1;
  if (!v27)
  {
    v29 = v53;
    static MusicLibraryAction<>.removeDownload.getter();
    v30 = v51;
    v31 = v57;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v55 + 8))(v29, v31);
    v32 = v54;
    v33 = v52;
    v34 = v56;
    (*(v54 + 32))(v52, v30, v56);
    LODWORD(v29) = (*(v32 + 88))(v33, v34);
    (*(v32 + 8))(v33, v34);
    if (v29 != v26)
    {
      return 0;
    }
  }

  sub_10012B7A8(v61, v65);
  v35 = v60;
  v36 = v59;
  (*(v60 + 16))(v59, v28, v9);
  v37 = (*(v35 + 80) + 112) & ~*(v35 + 80);
  v38 = (v58 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_10012B828(v65, v39 + 16);
  (*(v35 + 32))(v39 + v37, v36, v9);
  *(v39 + v38) = a2;
  aBlock[4] = sub_10053473C;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010B10F0;
  v40 = _Block_copy(aBlock);
  v41 = objc_opt_self();

  v42 = [v41 contextualActionWithStyle:0 title:0 handler:v40];
  _Block_release(v40);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v43 = qword_101183DF8;
  v44 = String._bridgeToObjectiveC()();
  v45 = [objc_opt_self() systemImageNamed:v44 withConfiguration:v43];

  [v42 setImage:v45];
  v46 = [objc_opt_self() systemRedColor];
  [v42 setBackgroundColor:v46];

  v47 = v42;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v48 = String._bridgeToObjectiveC()();

  [v47 setAccessibilityLabel:v48];

  return v47;
}

id sub_10051B6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v63 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v62 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicVideo();
  v60 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = v10;
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10010FC20(&qword_101183E28);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = &v50 - v14;
  v15 = type metadata accessor for MusicLibrary.RemoveAction();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_101193E60);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v50 - v24;
  static MusicLibraryAction<>.remove.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v16 + 8))(v18, v15);
  (*(v20 + 32))(v22, v25, v19);
  LODWORD(v15) = (*(v20 + 88))(v22, v19);
  v26 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v20 + 8))(v22, v19);
  v27 = v15 == v26;
  v28 = a1;
  if (!v27)
  {
    v29 = v53;
    static MusicLibraryAction<>.removeDownload.getter();
    v30 = v51;
    v31 = v57;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v55 + 8))(v29, v31);
    v32 = v54;
    v33 = v52;
    v34 = v56;
    (*(v54 + 32))(v52, v30, v56);
    LODWORD(v29) = (*(v32 + 88))(v33, v34);
    (*(v32 + 8))(v33, v34);
    if (v29 != v26)
    {
      return 0;
    }
  }

  sub_10012B7A8(v61, v65);
  v35 = v60;
  v36 = v59;
  (*(v60 + 16))(v59, v28, v9);
  v37 = (*(v35 + 80) + 112) & ~*(v35 + 80);
  v38 = (v58 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_10012B828(v65, v39 + 16);
  (*(v35 + 32))(v39 + v37, v36, v9);
  *(v39 + v38) = a2;
  aBlock[4] = sub_100533B00;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010B0E98;
  v40 = _Block_copy(aBlock);
  v41 = objc_opt_self();

  v42 = [v41 contextualActionWithStyle:0 title:0 handler:v40];
  _Block_release(v40);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v43 = qword_101183DF8;
  v44 = String._bridgeToObjectiveC()();
  v45 = [objc_opt_self() systemImageNamed:v44 withConfiguration:v43];

  [v42 setImage:v45];
  v46 = [objc_opt_self() systemRedColor];
  [v42 setBackgroundColor:v46];

  v47 = v42;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v48 = String._bridgeToObjectiveC()();

  [v47 setAccessibilityLabel:v48];

  return v47;
}

id sub_10051BF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v63 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v62 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Song();
  v60 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = v10;
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10010FC20(&qword_101183E28);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = &v50 - v14;
  v15 = type metadata accessor for MusicLibrary.RemoveAction();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_101193E60);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v50 - v24;
  static MusicLibraryAction<>.remove.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v16 + 8))(v18, v15);
  (*(v20 + 32))(v22, v25, v19);
  LODWORD(v15) = (*(v20 + 88))(v22, v19);
  v26 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v20 + 8))(v22, v19);
  v27 = v15 == v26;
  v28 = a1;
  if (!v27)
  {
    v29 = v53;
    static MusicLibraryAction<>.removeDownload.getter();
    v30 = v51;
    v31 = v57;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v55 + 8))(v29, v31);
    v32 = v54;
    v33 = v52;
    v34 = v56;
    (*(v54 + 32))(v52, v30, v56);
    LODWORD(v29) = (*(v32 + 88))(v33, v34);
    (*(v32 + 8))(v33, v34);
    if (v29 != v26)
    {
      return 0;
    }
  }

  sub_10012B7A8(v61, v65);
  v35 = v60;
  v36 = v59;
  (*(v60 + 16))(v59, v28, v9);
  v37 = (*(v35 + 80) + 112) & ~*(v35 + 80);
  v38 = (v58 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_10012B828(v65, v39 + 16);
  (*(v35 + 32))(v39 + v37, v36, v9);
  *(v39 + v38) = a2;
  aBlock[4] = sub_100533188;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010B0BF0;
  v40 = _Block_copy(aBlock);
  v41 = objc_opt_self();

  v42 = [v41 contextualActionWithStyle:0 title:0 handler:v40];
  _Block_release(v40);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v43 = qword_101183DF8;
  v44 = String._bridgeToObjectiveC()();
  v45 = [objc_opt_self() systemImageNamed:v44 withConfiguration:v43];

  [v42 setImage:v45];
  v46 = [objc_opt_self() systemRedColor];
  [v42 setBackgroundColor:v46];

  v47 = v42;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v48 = String._bridgeToObjectiveC()();

  [v47 setAccessibilityLabel:v48];

  return v47;
}

uint64_t sub_10051C760(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  v27 = a4;
  v28 = a3;
  v25 = a8;
  v26 = a9;
  v11 = a7(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - v17;
  v19 = UIView.noticePresenter.getter();
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  (*(v12 + 16))(v15, a6, v11);
  type metadata accessor for MainActor();

  v21 = static MainActor.shared.getter();
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v21;
  *(v23 + 3) = &protocol witness table for MainActor;
  *(v23 + 4) = a5;
  (*(v12 + 32))(&v23[v22], v15, v11);
  *&v23[(v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v19;
  sub_1001F4CB8(0, 0, v18, v26, v23);

  v28(1);
}

uint64_t sub_10051C9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for Locale();
  v6[7] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for Notice.Variant(0);
  v6[10] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[16] = v9;
  v6[17] = v8;

  return _swift_task_switch(sub_10051CB4C, v9, v8);
}

uint64_t sub_10051CB4C()
{
  v1 = v0[5];
  sub_10010FC20(&qword_101193E80);
  v2 = type metadata accessor for Track();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[18] = v5;
  *(v5 + 16) = xmmword_100EBC6B0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v0[2] = v5;
  v6 = swift_task_alloc();
  v0[19] = v6;
  v7 = sub_10010FC20(&qword_10119ED90);
  v8 = sub_100020674(&qword_101192820, &qword_10119ED90);
  *v6 = v0;
  v6[1] = sub_10051CD1C;

  return MusicLibrary.add<A, B>(_:)(v0 + 2, v7, v2, v8, &protocol witness table for Track);
}

uint64_t sub_10051CD1C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_100534EDC;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_100534E7C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10051CE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for Locale();
  v6[7] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for Notice.Variant(0);
  v6[10] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[16] = v9;
  v6[17] = v8;

  return _swift_task_switch(sub_10051D018, v9, v8);
}

uint64_t sub_10051D018()
{
  v1 = v0[5];
  sub_10010FC20(&qword_101192078);
  v2 = type metadata accessor for MusicVideo();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[18] = v5;
  *(v5 + 16) = xmmword_100EBC6B0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v0[2] = v5;
  v6 = swift_task_alloc();
  v0[19] = v6;
  v7 = sub_10010FC20(&qword_101193E70);
  v8 = sub_100020674(&qword_101193E78, &qword_101193E70);
  *v6 = v0;
  v6[1] = sub_10051D1E8;

  return MusicLibrary.add<A, B>(_:)(v0 + 2, v7, v2, v8, &protocol witness table for MusicVideo);
}

uint64_t sub_10051D1E8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10051D460;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10051D338;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10051D338()
{
  v1 = v0[6];

  if (v1)
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[6];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v3, v2);
    sub_100532F98(v3, type metadata accessor for Notice.Variant);
    (*(*v4 + 200))(v2, 0);
    sub_100532F98(v2, type metadata accessor for Notice);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10051D460()
{
  v25 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[20];
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v0[3] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to add item=%s", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[6];
  if (v19)
  {
    v20 = v0[10];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *v20 = String.init(localized:table:bundle:locale:comment:)();
    v20[1] = v21;
    swift_storeEnumTagMultiPayload();
    (*(*v19 + 192))(v20, 1);

    sub_100532F98(v20, type metadata accessor for Notice.Variant);
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10051D750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for Locale();
  v6[7] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for Notice.Variant(0);
  v6[10] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[16] = v9;
  v6[17] = v8;

  return _swift_task_switch(sub_10051D8FC, v9, v8);
}

uint64_t sub_10051D8FC()
{
  v1 = v0[5];
  sub_10010FC20(&unk_101193E30);
  v2 = type metadata accessor for Song();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[18] = v5;
  *(v5 + 16) = xmmword_100EBC6B0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v0[2] = v5;
  v6 = swift_task_alloc();
  v0[19] = v6;
  v7 = sub_10010FC20(&qword_1011856C8);
  v8 = sub_100020674(&unk_101193E40, &qword_1011856C8);
  *v6 = v0;
  v6[1] = sub_10051CD1C;

  return MusicLibrary.add<A, B>(_:)(v0 + 2, v7, v2, v8, &protocol witness table for Song);
}

uint64_t sub_10051DACC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9, uint64_t a10)
{
  v29 = a6;
  v33 = a4;
  v34 = a3;
  v31 = a9;
  v32 = a10;
  v13 = a8(0);
  v30 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  v18 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v18 - 8);
  v20 = &v29 - v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v14 + 16))(v17, a5, v13);
  sub_10012B7A8(a7, v35);
  type metadata accessor for MainActor();

  v22 = a2;
  v23 = static MainActor.shared.getter();
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  *(v27 + 24) = &protocol witness table for MainActor;
  (*(v14 + 32))(v27 + v24, v17, v30);
  *(v27 + v25) = v29;
  sub_10012B828(v35, v27 + v26);
  *(v27 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8)) = v22;
  sub_1001F4CB8(0, 0, v20, v32, v27);

  return v34(1);
}

uint64_t sub_10051DD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[80] = a7;
  v7[79] = a6;
  v7[78] = a5;
  v7[77] = a4;
  type metadata accessor for Locale();
  v7[81] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v7[82] = swift_task_alloc();
  v7[83] = type metadata accessor for Notice.Variant(0);
  v7[84] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v7[85] = v8;
  v7[86] = *(v8 - 8);
  v7[87] = swift_task_alloc();
  sub_10010FC20(&unk_1011838D0);
  v7[88] = swift_task_alloc();
  v9 = type metadata accessor for Track();
  v7[89] = v9;
  v7[90] = *(v9 - 8);
  v7[91] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[92] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[93] = v11;
  v7[94] = v10;

  return _swift_task_switch(sub_10051DF58, v11, v10);
}

uint64_t sub_10051DF58()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  (*(*(v0 + 720) + 16))(v1, *(v0 + 616), v2);
  sub_10012B7A8(v4, v0 + 464);
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

  Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v1, v5, v0 + 464, v3, v2, &protocol witness table for Track, &protocol witness table for Track, (v0 + 560));
  static Actions.Download.action(context:)((v0 + 560), v0 + 16);

  v7 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v7;
  *(v0 + 224) = *(v0 + 112);
  v8 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v8;
  v9 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v9;
  v10 = swift_task_alloc();
  *(v0 + 760) = v10;
  v11 = sub_10010FC20(&unk_101193E50);
  *v10 = v0;
  v10[1] = sub_10051E114;

  return Action.execute(checkSupportedStatus:)(v11, 1, v11);
}

uint64_t sub_10051E114()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    *(v2 + 240) = *(v2 + 128);
    *(v2 + 256) = v3;
    v4 = *(v2 + 160);
    v5 = *(v2 + 176);
    v6 = *(v2 + 192);
    v7 = *(v2 + 224);
    *(v2 + 320) = *(v2 + 208);
    *(v2 + 336) = v7;
    *(v2 + 288) = v5;
    *(v2 + 304) = v6;
    *(v2 + 272) = v4;
    sub_1000095E8(v2 + 240, &unk_101193E50);
    v8 = *(v2 + 752);
    v9 = *(v2 + 744);
    v10 = sub_100534E8C;
  }

  else
  {
    *(v2 + 352) = *(v2 + 128);
    *(v2 + 368) = v3;
    v11 = *(v2 + 160);
    v12 = *(v2 + 176);
    v13 = *(v2 + 192);
    v14 = *(v2 + 224);
    *(v2 + 432) = *(v2 + 208);
    *(v2 + 448) = v14;
    *(v2 + 400) = v12;
    *(v2 + 416) = v13;
    *(v2 + 384) = v11;
    sub_1000095E8(v2 + 352, &unk_101193E50);
    v8 = *(v2 + 752);
    v9 = *(v2 + 744);
    v10 = sub_100534ED8;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10051E2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[80] = a7;
  v7[79] = a6;
  v7[78] = a5;
  v7[77] = a4;
  type metadata accessor for Locale();
  v7[81] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v7[82] = swift_task_alloc();
  v7[83] = type metadata accessor for Notice.Variant(0);
  v7[84] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v7[85] = v8;
  v7[86] = *(v8 - 8);
  v7[87] = swift_task_alloc();
  sub_10010FC20(&unk_1011838D0);
  v7[88] = swift_task_alloc();
  v9 = type metadata accessor for MusicVideo();
  v7[89] = v9;
  v7[90] = *(v9 - 8);
  v7[91] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[92] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[93] = v11;
  v7[94] = v10;

  return _swift_task_switch(sub_10051E4C0, v11, v10);
}

uint64_t sub_10051E4C0()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  (*(*(v0 + 720) + 16))(v1, *(v0 + 616), v2);
  sub_10012B7A8(v4, v0 + 464);
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

  Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v1, v5, v0 + 464, v3, v2, &protocol witness table for MusicVideo, &protocol witness table for MusicVideo, (v0 + 560));
  static Actions.Download.action(context:)((v0 + 560), v0 + 16);

  v7 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v7;
  *(v0 + 224) = *(v0 + 112);
  v8 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v8;
  v9 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v9;
  v10 = swift_task_alloc();
  *(v0 + 760) = v10;
  v11 = sub_10010FC20(&unk_101193E50);
  *v10 = v0;
  v10[1] = sub_10051E67C;

  return Action.execute(checkSupportedStatus:)(v11, 1, v11);
}

uint64_t sub_10051E67C()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    *(v2 + 240) = *(v2 + 128);
    *(v2 + 256) = v3;
    v4 = *(v2 + 160);
    v5 = *(v2 + 176);
    v6 = *(v2 + 192);
    v7 = *(v2 + 224);
    *(v2 + 320) = *(v2 + 208);
    *(v2 + 336) = v7;
    *(v2 + 288) = v5;
    *(v2 + 304) = v6;
    *(v2 + 272) = v4;
    sub_1000095E8(v2 + 240, &unk_101193E50);
    v8 = *(v2 + 752);
    v9 = *(v2 + 744);
    v10 = sub_10051E8BC;
  }

  else
  {
    *(v2 + 352) = *(v2 + 128);
    *(v2 + 368) = v3;
    v11 = *(v2 + 160);
    v12 = *(v2 + 176);
    v13 = *(v2 + 192);
    v14 = *(v2 + 224);
    *(v2 + 432) = *(v2 + 208);
    *(v2 + 448) = v14;
    *(v2 + 400) = v12;
    *(v2 + 416) = v13;
    *(v2 + 384) = v11;
    sub_1000095E8(v2 + 352, &unk_101193E50);
    v8 = *(v2 + 752);
    v9 = *(v2 + 744);
    v10 = sub_10051E808;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10051E808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10051E8BC()
{
  v26 = v0;
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[96];
    v8 = v0[87];
    v9 = v0[86];
    v10 = v0[85];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v0[76] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to download item=%s", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v16 = v0[87];
    v17 = v0[86];
    v18 = v0[85];

    (*(v17 + 8))(v16, v18);
  }

  v19 = UIView.noticePresenter.getter();
  if (v19)
  {
    v20 = v19;
    v21 = v0[84];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *v21 = String.init(localized:table:bundle:locale:comment:)();
    v21[1] = v22;
    swift_storeEnumTagMultiPayload();
    (*(*v20 + 192))(v21, 1);

    sub_100532F98(v21, type metadata accessor for Notice.Variant);
  }

  else
  {
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_10051EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[80] = a7;
  v7[79] = a6;
  v7[78] = a5;
  v7[77] = a4;
  type metadata accessor for Locale();
  v7[81] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v7[82] = swift_task_alloc();
  v7[83] = type metadata accessor for Notice.Variant(0);
  v7[84] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v7[85] = v8;
  v7[86] = *(v8 - 8);
  v7[87] = swift_task_alloc();
  sub_10010FC20(&unk_1011838D0);
  v7[88] = swift_task_alloc();
  v9 = type metadata accessor for Song();
  v7[89] = v9;
  v7[90] = *(v9 - 8);
  v7[91] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[92] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[93] = v11;
  v7[94] = v10;

  return _swift_task_switch(sub_10051EE04, v11, v10);
}

uint64_t sub_10051EE04()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  (*(*(v0 + 720) + 16))(v1, *(v0 + 616), v2);
  sub_10012B7A8(v4, v0 + 464);
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

  Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v1, v5, v0 + 464, v3, v2, &protocol witness table for Song, &protocol witness table for Song, (v0 + 560));
  static Actions.Download.action(context:)((v0 + 560), v0 + 16);

  v7 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v7;
  *(v0 + 224) = *(v0 + 112);
  v8 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v8;
  v9 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v9;
  v10 = swift_task_alloc();
  *(v0 + 760) = v10;
  v11 = sub_10010FC20(&unk_101193E50);
  *v10 = v0;
  v10[1] = sub_10051E114;

  return Action.execute(checkSupportedStatus:)(v11, 1, v11);
}

uint64_t sub_10051EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9, uint64_t a10)
{
  v31 = a3;
  v32 = a10;
  v30[1] = a9;
  v14 = a8(0);
  v30[0] = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v30 - v17;
  v19 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v19 - 8);
  v21 = v30 - v20;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_10012B7A8(a5, v33);
  (*(v15 + 16))(v18, a6, v14);
  type metadata accessor for MainActor();

  v23 = static MainActor.shared.getter();
  v24 = (*(v15 + 80) + 128) & ~*(v15 + 80);
  v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = &protocol witness table for MainActor;
  sub_10012B828(v33, v26 + 32);
  (*(v15 + 32))(v26 + v24, v18, v30[0]);
  *(v26 + v25) = a7;
  v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v32;
  *v27 = v31;
  v27[1] = a4;
  sub_1001F4CB8(0, 0, v21, v28, v26);
}

uint64_t sub_10051F214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10051F2B4, v10, v9);
}

uint64_t sub_10051F2B4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_10051F634(v4, v1, *(v3 + 48) == 0xFF);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v5, 1, 1, 0, 0);

  v2(1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_10051F374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10051F414, v10, v9);
}

uint64_t sub_10051F414()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_100520150(v4, v1, *(v3 + 48) == 0xFF);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v5, 1, 1, 0, 0);

  v2(1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_10051F4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10051F574, v10, v9);
}

uint64_t sub_10051F574()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_100520C6C(v4, v1, *(v3 + 48) == 0xFF);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v5, 1, 1, 0, 0);

  v2(1);
  v6 = v0[1];

  return v6();
}

id sub_10051F634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v5 = type metadata accessor for Track();
  v81 = *(v5 - 8);
  __chkstk_darwin(v5);
  v78 = v6;
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v85 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicLibrary.RemoveAction();
  v12 = *(v11 - 8);
  v75 = v11;
  v76 = v12;
  __chkstk_darwin(v11);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_101193E60);
  v73 = *(v14 - 8);
  v74 = v14;
  __chkstk_darwin(v14);
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v70 = &v69 - v17;
  v18 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&qword_101183E28);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  static MusicLibraryAction<>.removeDownload.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v19 + 8))(v21, v18);
  (*(v23 + 32))(v25, v28, v22);
  LODWORD(v18) = (*(v23 + 88))(v25, v22);
  v29 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v23 + 8))(v25, v22);
  v30 = v72;
  static MusicLibraryAction<>.remove.getter();
  v31 = v70;
  v80 = a1;
  v82 = v5;
  v32 = v75;
  v83 = a2;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v76 + 8))(v30, v32);
  v34 = v73;
  v33 = v74;
  v35 = v71;
  (*(v73 + 32))(v71, v31, v74);
  v36 = (*(v34 + 88))(v35, v33);
  (*(v34 + 8))(v35, v33);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v75 = String.init(localized:table:bundle:locale:comment:)();
  v76 = v37;
  v38 = String._bridgeToObjectiveC()();

  v39 = [objc_opt_self() alertControllerWithTitle:0 message:v38 preferredStyle:v77];

  v40 = &selRef__replacePlaceholderViewWithView_;
  v41 = &selRef__replacePlaceholderViewWithView_;
  if (v18 == v29)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v77 = String.init(localized:table:bundle:locale:comment:)();
    v42 = v81;
    v43 = v29;
    v44 = v39;
    v45 = v36;
    v46 = v79;
    v47 = v82;
    (*(v81 + 16))(v79, v80, v82);
    v48 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v83;
    v50 = v46;
    v36 = v45;
    v39 = v44;
    v29 = v43;
    v51 = v47;
    v40 = &selRef__replacePlaceholderViewWithView_;
    (*(v42 + 32))(v49 + v48, v50, v51);

    v52 = String._bridgeToObjectiveC()();

    v90 = sub_100534B18;
    v91 = v49;
    v41 = &selRef__replacePlaceholderViewWithView_;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_10027D328;
    v89 = &unk_1010B11B8;
    v53 = _Block_copy(&aBlock);

    v54 = [objc_opt_self() actionWithTitle:v52 style:2 handler:v53];
    _Block_release(v53);

    [v39 addAction:v54];
  }

  if (v36 == v29)
  {
    v55 = v41;
    v56 = v81;
    v57 = v40;
    v58 = v79;
    v59 = v82;
    (*(v81 + 16))(v79, v80, v82);
    v60 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v83;
    v62 = v58;
    v40 = v57;
    (*(v56 + 32))(v61 + v60, v62, v59);
    v41 = v55;

    v63 = String._bridgeToObjectiveC()();

    v90 = sub_100534A04;
    v91 = v61;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_10027D328;
    v89 = &unk_1010B1168;
    v64 = _Block_copy(&aBlock);

    v65 = [objc_opt_self() v57[28]];
    _Block_release(v64);

    [v39 v55[33]];
  }

  else
  {
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v66 = String._bridgeToObjectiveC()();

  v67 = [objc_opt_self() v40[28]];

  [v39 v41[33]];
  return v39;
}

id sub_100520150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v5 = type metadata accessor for MusicVideo();
  v81 = *(v5 - 8);
  __chkstk_darwin(v5);
  v78 = v6;
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v85 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicLibrary.RemoveAction();
  v12 = *(v11 - 8);
  v75 = v11;
  v76 = v12;
  __chkstk_darwin(v11);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_101193E60);
  v73 = *(v14 - 8);
  v74 = v14;
  __chkstk_darwin(v14);
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v70 = &v69 - v17;
  v18 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&qword_101183E28);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  static MusicLibraryAction<>.removeDownload.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v19 + 8))(v21, v18);
  (*(v23 + 32))(v25, v28, v22);
  LODWORD(v18) = (*(v23 + 88))(v25, v22);
  v29 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v23 + 8))(v25, v22);
  v30 = v72;
  static MusicLibraryAction<>.remove.getter();
  v31 = v70;
  v80 = a1;
  v82 = v5;
  v32 = v75;
  v83 = a2;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v76 + 8))(v30, v32);
  v34 = v73;
  v33 = v74;
  v35 = v71;
  (*(v73 + 32))(v71, v31, v74);
  v36 = (*(v34 + 88))(v35, v33);
  (*(v34 + 8))(v35, v33);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v75 = String.init(localized:table:bundle:locale:comment:)();
  v76 = v37;
  v38 = String._bridgeToObjectiveC()();

  v39 = [objc_opt_self() alertControllerWithTitle:0 message:v38 preferredStyle:v77];

  v40 = &selRef__replacePlaceholderViewWithView_;
  v41 = &selRef__replacePlaceholderViewWithView_;
  if (v18 == v29)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v77 = String.init(localized:table:bundle:locale:comment:)();
    v42 = v81;
    v43 = v29;
    v44 = v39;
    v45 = v36;
    v46 = v79;
    v47 = v82;
    (*(v81 + 16))(v79, v80, v82);
    v48 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v83;
    v50 = v46;
    v36 = v45;
    v39 = v44;
    v29 = v43;
    v51 = v47;
    v40 = &selRef__replacePlaceholderViewWithView_;
    (*(v42 + 32))(v49 + v48, v50, v51);

    v52 = String._bridgeToObjectiveC()();

    v90 = sub_100533DBC;
    v91 = v49;
    v41 = &selRef__replacePlaceholderViewWithView_;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_10027D328;
    v89 = &unk_1010B0F60;
    v53 = _Block_copy(&aBlock);

    v54 = [objc_opt_self() actionWithTitle:v52 style:2 handler:v53];
    _Block_release(v53);

    [v39 addAction:v54];
  }

  if (v36 == v29)
  {
    v55 = v41;
    v56 = v81;
    v57 = v40;
    v58 = v79;
    v59 = v82;
    (*(v81 + 16))(v79, v80, v82);
    v60 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v83;
    v62 = v58;
    v40 = v57;
    (*(v56 + 32))(v61 + v60, v62, v59);
    v41 = v55;

    v63 = String._bridgeToObjectiveC()();

    v90 = sub_100533D74;
    v91 = v61;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_10027D328;
    v89 = &unk_1010B0F10;
    v64 = _Block_copy(&aBlock);

    v65 = [objc_opt_self() v57[28]];
    _Block_release(v64);

    [v39 v55[33]];
  }

  else
  {
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v66 = String._bridgeToObjectiveC()();

  v67 = [objc_opt_self() v40[28]];

  [v39 v41[33]];
  return v39;
}

id sub_100520C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v5 = type metadata accessor for Song();
  v81 = *(v5 - 8);
  __chkstk_darwin(v5);
  v78 = v6;
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v85 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicLibrary.RemoveAction();
  v12 = *(v11 - 8);
  v75 = v11;
  v76 = v12;
  __chkstk_darwin(v11);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_101193E60);
  v73 = *(v14 - 8);
  v74 = v14;
  __chkstk_darwin(v14);
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v70 = &v69 - v17;
  v18 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&qword_101183E28);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  static MusicLibraryAction<>.removeDownload.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v19 + 8))(v21, v18);
  (*(v23 + 32))(v25, v28, v22);
  LODWORD(v18) = (*(v23 + 88))(v25, v22);
  v29 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v23 + 8))(v25, v22);
  v30 = v72;
  static MusicLibraryAction<>.remove.getter();
  v31 = v70;
  v80 = a1;
  v82 = v5;
  v32 = v75;
  v83 = a2;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v76 + 8))(v30, v32);
  v34 = v73;
  v33 = v74;
  v35 = v71;
  (*(v73 + 32))(v71, v31, v74);
  v36 = (*(v34 + 88))(v35, v33);
  (*(v34 + 8))(v35, v33);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v75 = String.init(localized:table:bundle:locale:comment:)();
  v76 = v37;
  v38 = String._bridgeToObjectiveC()();

  v39 = [objc_opt_self() alertControllerWithTitle:0 message:v38 preferredStyle:v77];

  v40 = &selRef__replacePlaceholderViewWithView_;
  v41 = &selRef__replacePlaceholderViewWithView_;
  if (v18 == v29)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v77 = String.init(localized:table:bundle:locale:comment:)();
    v42 = v81;
    v43 = v29;
    v44 = v39;
    v45 = v36;
    v46 = v79;
    v47 = v82;
    (*(v81 + 16))(v79, v80, v82);
    v48 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v83;
    v50 = v46;
    v36 = v45;
    v39 = v44;
    v29 = v43;
    v51 = v47;
    v40 = &selRef__replacePlaceholderViewWithView_;
    (*(v42 + 32))(v49 + v48, v50, v51);

    v52 = String._bridgeToObjectiveC()();

    v90 = sub_100533360;
    v91 = v49;
    v41 = &selRef__replacePlaceholderViewWithView_;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_10027D328;
    v89 = &unk_1010B0CB8;
    v53 = _Block_copy(&aBlock);

    v54 = [objc_opt_self() actionWithTitle:v52 style:2 handler:v53];
    _Block_release(v53);

    [v39 addAction:v54];
  }

  if (v36 == v29)
  {
    v55 = v41;
    v56 = v81;
    v57 = v40;
    v58 = v79;
    v59 = v82;
    (*(v81 + 16))(v79, v80, v82);
    v60 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v83;
    v62 = v58;
    v40 = v57;
    (*(v56 + 32))(v61 + v60, v62, v59);
    v41 = v55;

    v63 = String._bridgeToObjectiveC()();

    v90 = sub_100533318;
    v91 = v61;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_10027D328;
    v89 = &unk_1010B0C68;
    v64 = _Block_copy(&aBlock);

    v65 = [objc_opt_self() v57[28]];
    _Block_release(v64);

    [v39 v55[33]];
  }

  else
  {
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v66 = String._bridgeToObjectiveC()();

  v67 = [objc_opt_self() v40[28]];

  [v39 v41[33]];
  return v39;
}

char *sub_100521788(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, a1, v4, v6);
  v10 = dispatch thunk of MusicItem.id.getter();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  v13 = *(v1 + 48);
  if (*(v13 + 16) && (v14 = sub_1006BE598(v10, v12, 0, 0), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    (v9)(v8, a1, v4);
    type metadata accessor for WaveformPlayer.ListenerToken();
    swift_allocObject();
    v16 = sub_1005219C0(v8);
    sub_10027317C(v16);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v2 + 48);
    *(v2 + 48) = 0x8000000000000000;
    sub_1006C5CBC(v16, v10, v12, 0, 0, isUniquelyReferenced_nonNull_native);

    *(v2 + 48) = v19;
    swift_endAccess();
    sub_1002732FC();
  }

  return v16;
}

char *sub_1005219C0(char *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101193DF8);
  __chkstk_darwin(v4 - 8);
  v28 = &v23 - v5;
  v6 = type metadata accessor for Song();
  v24 = *(v6 - 8);
  v7 = v24;
  v27 = *(v24 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  v11 = type metadata accessor for WaveformState();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  ObservationRegistrar.init()();
  v12 = *(v7 + 16);
  v26 = a1;
  v12(v9, a1, v6);
  v13 = dispatch thunk of MusicItem.id.getter();
  v15 = v14;
  v25 = *(v7 + 8);
  v25(v9, v6);
  *(v2 + 2) = v13;
  *(v2 + 3) = v15;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  v16 = v28;
  v12(v28, a1, v6);
  v12(v9, v16, v6);
  v17 = v24;
  v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v19 = swift_allocObject();
  v20 = *(v17 + 32);
  v20(v19 + v18, v9, v6);
  v25(v28, v6);
  *(v2 + 6) = sub_100532B30;
  *(v2 + 7) = v19;
  v20(v9, v26, v6);
  v21 = swift_allocObject();
  v20(v21 + v18, v9, v6);
  *(v2 + 8) = sub_100532BA0;
  *(v2 + 9) = v21;
  return v2;
}

uint64_t sub_100521C9C(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v3);
  return String.init<A>(describing:)();
}

uint64_t sub_100521D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for Track();
  *v8 = v5;
  v8[1] = sub_100521E9C;

  return MusicLibrary.removeDownload<A>(_:)(a5, v9, &protocol witness table for Track);
}

uint64_t sub_100521E9C()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100534E6C;
  }

  else
  {
    v4 = sub_1003FFCA8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100521FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for MusicVideo();
  *v8 = v5;
  v8[1] = sub_1003FE8F8;

  return MusicLibrary.removeDownload<A>(_:)(a5, v9, &protocol witness table for MusicVideo);
}

uint64_t sub_10052212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for Song();
  *v8 = v5;
  v8[1] = sub_100521E9C;

  return MusicLibrary.removeDownload<A>(_:)(a5, v9, &protocol witness table for Song);
}

uint64_t sub_100522260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a3, v9);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v17;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = a2;
  (*(v10 + 32))(&v19[v18], v12, v9);
  sub_1001F4CB8(0, 0, v15, a6, v19);
}

uint64_t sub_10052245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for Track();
  *v8 = v5;
  v8[1] = sub_100522590;

  return MusicLibrary.remove<A>(_:)(a5, v9, &protocol witness table for Track);
}

uint64_t sub_100522590()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100534E70;
  }

  else
  {
    v4 = sub_1003FFCA8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1005226EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for MusicVideo();
  *v8 = v5;
  v8[1] = sub_1003FEF98;

  return MusicLibrary.remove<A>(_:)(a5, v9, &protocol witness table for MusicVideo);
}

uint64_t sub_100522820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for Song();
  *v8 = v5;
  v8[1] = sub_100522590;

  return MusicLibrary.remove<A>(_:)(a5, v9, &protocol witness table for Song);
}

id sub_100522954(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___globalHeaderRegistration;
  v8 = sub_10010FC20(&unk_10118A650);
  v9 = *(*(v8 - 8) + 56);
  v9(&v2[v7], 1, 1, v8);
  v9(&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___headerRegistration], 1, 1, v8);
  v10 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___listCellRegistration;
  v11 = sub_10010FC20(&unk_101193D60);
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_waveformPlayer;
  type metadata accessor for WaveformPlayer();
  swift_allocObject();
  *&v2[v12] = sub_10026FF78();
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView] = 0;
  v13 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prefetchingController;
  v14 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v2[v13] = sub_10003AAD8(0xD00000000000001CLL, 0x8000000100E4EAC0);
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController_dragDropController] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController] = 0;
  v15 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___actionMetricsReportingContext;
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___shuffleBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroup] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextAndFilterBarButtonGroup] = 0;
  v17 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  v18 = type metadata accessor for Song();
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController_hasScrolledToProminentItem] = 0;
  v19 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentItemIndexPath;
  v20 = type metadata accessor for IndexPath();
  (*(*(v20 - 8) + 56))(&v2[v19], 1, 1, v20);
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentIndexPathTask] = 0;
  sub_1007B9FFC(a1, v34);
  sub_10010FC20(&unk_101193D88);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController] = sub_1003A3538(v34);
  v33.receiver = v2;
  v33.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v22 = String._bridgeToObjectiveC()();

  [v21 setTitle:v22];

  UIViewController.playActivityFeatureIdentifier.setter(15);
  v23 = [v21 traitCollection];

  v24 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    v27 = [v21 navigationItem];
    [v27 setLargeTitleDisplayMode:v24];
  }

  sub_10010FC20(&unk_101182D80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  v29 = sub_100217F14();
  *(v28 + 32) = &type metadata for LibraryFilterTrait;
  *(v28 + 40) = v29;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBC6B0;
  v31 = sub_100137E8C();
  *(v30 + 32) = &type metadata for MusicLibraryTrait;
  *(v30 + 40) = v31;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v21;
}

uint64_t sub_100522EF8()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, "viewDidLoad");
  sub_1005233CC();
  v2 = sub_1005235FC();
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  [*(v2 + 32) setHidesNavigationBarDuringPresentation:v4 == 1];

  sub_10010FC20(&unk_101182D80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBC6B0;
  *(v5 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v5 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v6 = sub_1005236A0();
  v7 = sub_100523A98();
  [v6 setCollectionViewLayout:v7];

  v8 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView;
  v9 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController_prefetchingController];
  [*&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView] setPrefetchDataSource:v9];
  v10 = (v9 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v11 = *(v9 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  *v10 = sub_100530E40;
  v10[1] = 0;
  sub_100020438(v11);
  v12 = (v9 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v13 = *(v9 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  *v12 = sub_100523E98;
  v12[1] = 0;
  sub_100020438(v13);
  v14 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v14[2];
  v14[2] = sub_100532C10;
  v14[3] = v15;

  sub_100020438(v16);

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v14[4];
  v14[4] = sub_100532C18;
  v14[5] = v17;

  sub_100020438(v18);

  v19 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v19 + 88);
  *(v19 + 88) = sub_100532C20;
  *(v19 + 96) = v20;

  sub_100020438(v21);

  v22 = sub_10010FC20(&unk_10118A650);
  v35[3] = v22;
  v23 = sub_10001C8B8(v35);
  sub_10052635C(v23);
  v36[3] = v22;
  v24 = sub_10001C8B8(v36);
  sub_1005265E0(v24);
  v37[3] = sub_10010FC20(&unk_101193D60);
  v25 = sub_10001C8B8(v37);
  sub_100526868(v25);
  swift_arrayDestroy();
  v26 = *&v1[v8];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v28 = swift_allocObject();
  *(v28 + 24) = 0u;
  *(v28 + 40) = 0u;
  *(v28 + 56) = 0u;
  *(v28 + 72) = 0u;
  *(v28 + 88) = 1;
  *(v28 + 96) = 0;
  v29 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v30 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  *(v28 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v28 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v28 + 16) = v26;
  *(v28 + 24) = sub_100532C28;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  v31 = *(v28 + 56);
  *(v28 + 64) = 0;
  *(v28 + 48) = 0;
  *(v28 + 56) = 0;
  v32 = v26;
  swift_retain_n();
  sub_100020438(v31);
  v33 = *(v28 + 72);
  *(v28 + 72) = 0;
  *(v28 + 80) = 0;
  sub_100020438(v33);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController_dragDropController] = v28;
}

void sub_1005233CC()
{
  v1 = v0;
  sub_10010FC20(&qword_101183990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  *(v2 + 32) = sub_10052F4A8();
  v3 = [v0 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 != 1)
  {
    LOBYTE(v4) = sub_1003955AC();
  }

  v5 = sub_10052F430();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007E953C(v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 setHidden:v4 & 1];

      ++v8;
      if (v11 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v12 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups];

  sub_1003BBFC8(0, 0, v12);

  v13 = [v1 navigationItem];
  sub_100009F78(0, &unk_1011842F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setTrailingItemGroups:isa];
}

uint64_t sub_1005235FC()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0);

    *&v0[v1] = v2;
  }

  return v2;
}

id sub_1005236A0()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView];
LABEL_6:
    v43 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1u, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v45.receiver = v16;
    v45.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v45, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v44.receiver = v27;
    v44.super_class = v14;
    objc_msgSendSuper2(&v44, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.librarySongsView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];

      v41 = UIView.withAccessibilityIdentifier(_:)(v39, v40);

      v42 = *&v1[v10];
      *&v1[v10] = v41;
      v12 = v41;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100523A98()
{
  v1 = sub_1005236A0();
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);

  v7 = [v6 init];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  if (v3 == 1)
  {
    v9 = objc_opt_self();
    v10 = [v9 fractionalWidthDimension:1.0];
    v11 = [v9 estimatedDimension:65.0];
    v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

    UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:v13 alignment:1];

    sub_10010FC20(&qword_101183990);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100EBC6C0;
    *(v15 + 32) = v14;
    sub_100009F78(0, &unk_1011913A0);
    v16 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setBoundarySupplementaryItems:isa];

    v18 = *(v8 + 16);
    *(v8 + 16) = v16;
  }

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v19;
  v20[5] = sub_100532E10;
  v20[6] = v4;
  v20[7] = sub_100532E18;
  v20[8] = v5;
  v20[9] = static MPCPlayerCommandRequest.isAvailable(in:);
  v20[10] = 0;
  v20[11] = v8;
  v21 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v25[4] = sub_1002193FC;
  v25[5] = v20;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_1005A63A8;
  v25[3] = &unk_1010B0AB0;
  v22 = _Block_copy(v25);

  v23 = [v21 initWithSectionProvider:v22 configuration:v7];

  _Block_release(v22);

  return v23;
}

unint64_t sub_100523E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_10010FC20(&qword_10118D1A0);
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_10010FC20(&qword_10118D1B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Song();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_101193E08);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_10010FC20(&qword_10118D1C0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  sub_1000089F8(a1, v32, &unk_101183F30);
  if (!v33)
  {
    sub_1000095E8(v32, &unk_101183F30);
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_7;
  }

  v21 = swift_dynamicCast();
  (*(v18 + 56))(v16, v21 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_7:
    sub_1000095E8(v16, &qword_101193E08);
    v25 = type metadata accessor for Artwork();
    return (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
  }

  (*(v18 + 32))(v20, v16, v17);
  v22 = MusicLibrarySectionedResponse.sections.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v22 + 16))
  {
    (*(v8 + 16))(v10, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);

    MusicLibrarySection.items.getter();
    (*(v8 + 8))(v10, v7);
    IndexPath.item.getter();
    v24 = v29;
    MusicItemCollection.subscript.getter();
    (*(v28 + 8))(v6, v24);
    Song.artwork.getter();
    (*(v26 + 8))(v13, v27);
    return (*(v18 + 8))(v20, v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_10052436C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = sub_10010FC20(&qword_10118D1C0);
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_10010FC20(&qword_101193E08);
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v50 = &v45 - v20;
  __chkstk_darwin(v21);
  v55 = &v45 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v45 = v7;
  v46 = v18;
  v47 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v49 = a3;
  RequestResponse.Revision.content.getter(v13);
  v23 = sub_10010FC20(&qword_10118D1C8);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v13, 1, v23) == 1)
  {
    sub_1000095E8(v13, &qword_10118D1B8);
    v25 = 1;
    v26 = v55;
    v28 = v51;
    v27 = v52;
  }

  else
  {
    v28 = v51;
    v27 = v52;
    v26 = v55;
    (v51[2])(v55, v13, v52);
    sub_1000095E8(v13, &qword_10118D1C8);
    v25 = 0;
  }

  (v28[7])(v26, v25, 1, v27);
  v52 = sub_1005236A0();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  if (v24(v10, 1, v23) == 1)
  {
    sub_1000095E8(v10, &qword_10118D1B8);
    v51 = 0;
  }

  else
  {
    v30 = v45;
    (v28[2])(v45, v10, v27);
    sub_1000095E8(v10, &qword_10118D1C8);
    v51 = MusicLibrarySectionedResponse.sections.getter();
    (v28[1])(v30, v27);
  }

  v31 = v50;
  sub_1000089F8(v26, v50, &qword_101193E08);
  if ((v28[6])(v31, 1, v27) == 1)
  {
    sub_1000095E8(v31, &qword_101193E08);
    v50 = 0;
  }

  else
  {
    v50 = MusicLibrarySectionedResponse.sections.getter();
    (v28[1])(v31, v27);
  }

  v32 = Strong;
  v33 = [*(sub_1005235FC() + 32) searchBar];
  LODWORD(v45) = [v33 isFirstResponder];

  v34 = v55;
  v35 = v46;
  sub_1000089F8(v55, v46, &qword_101193E08);
  v36 = *(v53 + 80);
  v37 = swift_allocObject();
  v38 = v49;
  v37[2] = v48;
  v37[3] = v38;
  v37[4] = v32;
  sub_10003D17C(v35, v37 + ((v36 + 40) & ~v36), &qword_101193E08);
  v39 = v47;
  sub_1000089F8(v34, v47, &qword_101193E08);
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  sub_10003D17C(v39, v40 + ((v36 + 24) & ~v36), &qword_101193E08);
  v41 = v32;

  v42 = sub_10010FC20(&qword_10118D1B0);
  v43 = sub_100532D14();
  v44 = v52;
  UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v51, v50, 0, 0, 1, v45 ^ 1, sub_100532C30, v37, sub_100524BD4, 0, sub_100524C64, 0, sub_100532CA4, v40, 0, 0, v42, v43);

  return sub_1000095E8(v34, &qword_101193E08);
}

uint64_t sub_100524A18(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&qword_101193E08);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  a1(v8);
  v11 = *(a3 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_prefetchingController);
  sub_1000089F8(a4, v10, &qword_101193E08);
  v12 = sub_10010FC20(&qword_10118D1C0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1000095E8(v10, &qword_101193E08);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = v12;
    v14 = sub_10001C8B8(&v18);
    (*(v13 + 32))(v14, v10, v12);
  }

  v15 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(&v18, v11 + v15, &unk_101183F30);
  return swift_endAccess();
}

uint64_t sub_100524BD4()
{
  type metadata accessor for Song();
  sub_100532DC8(&qword_101185748, &type metadata accessor for Song);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_100524C64()
{
  v0 = type metadata accessor for MusicFavoriteStatus();
  v58 = *(v0 - 8);
  v59 = v0;
  __chkstk_darwin(v0);
  v57 = &v53[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v56 = &v53[-v3];
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  __chkstk_darwin(v4);
  v55 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v7);
  v9 = &v53[-v8];
  v10 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v10 - 8);
  v12 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v53[-v14];
  __chkstk_darwin(v16);
  v18 = &v53[-v17];
  v19 = Song.title.getter();
  v21 = v20;
  if (v19 == Song.title.getter() && v21 == v22)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v24 = Song.artistName.getter();
  v26 = v25;
  if (v24 == Song.artistName.getter() && v26 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v29 = Song.albumTitle.getter();
  v31 = v30;
  v32 = Song.albumTitle.getter();
  if (v31)
  {
    if (v33)
    {
      if (v29 == v32 && v31 == v33)
      {
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v36 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_19;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v33)
  {
    goto LABEL_15;
  }

LABEL_19:
  v37 = COERCE_DOUBLE(Song.duration.getter());
  v39 = v38;
  v40 = COERCE_DOUBLE(Song.duration.getter());
  if (v39)
  {
    if ((v41 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v41 & 1) != 0 || v37 != v40)
  {
    goto LABEL_16;
  }

  Song.artwork.getter();
  Song.artwork.getter();
  v42 = *(v7 + 48);
  sub_1000089F8(v18, v9, &unk_101188920);
  sub_1000089F8(v15, &v9[v42], &unk_101188920);
  v43 = v60;
  v44 = *(v61 + 48);
  if (v44(v9, 1, v60) == 1)
  {
    sub_1000095E8(v15, &unk_101188920);
    sub_1000095E8(v18, &unk_101188920);
    if (v44(&v9[v42], 1, v43) == 1)
    {
      sub_1000095E8(v9, &unk_101188920);
LABEL_31:
      v49 = v56;
      Song.favoriteStatus.getter();
      v50 = v57;
      Song.favoriteStatus.getter();
      v34 = static MusicFavoriteStatus.== infix(_:_:)();
      v51 = v59;
      v52 = *(v58 + 8);
      v52(v50, v59);
      v52(v49, v51);
      return v34 & 1;
    }

    goto LABEL_29;
  }

  sub_1000089F8(v9, v12, &unk_101188920);
  if (v44(&v9[v42], 1, v43) == 1)
  {
    sub_1000095E8(v15, &unk_101188920);
    sub_1000095E8(v18, &unk_101188920);
    (*(v61 + 8))(v12, v43);
LABEL_29:
    sub_1000095E8(v9, &unk_101191420);
    goto LABEL_16;
  }

  v45 = v61;
  v46 = &v9[v42];
  v47 = v55;
  (*(v61 + 32))(v55, v46, v43);
  sub_100532DC8(&unk_10118D3D0, &type metadata accessor for Artwork);
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v45 + 8);
  v48(v47, v43);
  sub_1000095E8(v15, &unk_101188920);
  sub_1000095E8(v18, &unk_101188920);
  v48(v12, v43);
  sub_1000095E8(v9, &unk_101188920);
  if (v54)
  {
    goto LABEL_31;
  }

LABEL_16:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_100525334(char *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101193E08);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_10010FC20(&qword_10118D1C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  sub_1005233CC();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&qword_10118D1C8);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &qword_10118D1B8);
    v15 = 1;
  }

  else
  {
    (*(v11 + 16))(v13, v9, v10);
    sub_1000095E8(v9, &qword_10118D1C8);
    v16 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v11 + 8))(v13, v10);
    v15 = !v16;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v17 = sub_1005236A0();
  [v17 setBouncesVertically:v15 & 1];

  [*&a1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v15 & 1];
  v18 = sub_1005235FC();
  sub_1000089F8(a2, v6, &qword_101193E08);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_1000095E8(v6, &qword_101193E08);
  }

  else
  {
    v19 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v11 + 8))(v6, v10);
    if (!v19)
    {
      v28 = *(v18 + 64);
      *(v18 + 64) = 1;
      if (v28)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v20 = (*(*&a1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v21 = v20[1];
  if (!v21)
  {
    v27 = *(v18 + 64);
    *(v18 + 64) = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = *v20 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v23 = v22;
  }

  v24 = v23 != 0;
  v25 = *(v18 + 64);
  *(v18 + 64) = v24;
  if (v25 != v24)
  {
LABEL_12:
    sub_10043EAB8();
  }

LABEL_13:

  return sub_100525704();
}

uint64_t sub_100525704()
{
  v1 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v1 - 8);
  v64 = &v51 - v2;
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v63 = &v51 - v4;
  v5 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v5 - 8);
  v60 = &v51 - v6;
  v7 = sub_10010FC20(&qword_10118D1C0);
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  __chkstk_darwin(v7);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v51 - v10;
  __chkstk_darwin(v11);
  v65 = &v51 - v12;
  v13 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v13 - 8);
  v15 = &v51 - v14;
  v16 = type metadata accessor for Song();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v58 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v51 - v20;
  v22 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  swift_beginAccess();
  v23 = v0 + v22;
  v24 = v16;
  v25 = v17;
  sub_1000089F8(v23, v15, &unk_101183960);
  if ((*(v17 + 48))(v15, 1, v24) == 1)
  {
    sub_1000095E8(v15, &unk_101183960);
LABEL_5:
    v30 = type metadata accessor for IndexPath();
    v31 = v64;
    (*(*(v30 - 8) + 56))(v64, 1, 1, v30);
    return sub_10052F8CC(v31);
  }

  v26 = *(v17 + 32);
  v26(v21, v15, v24);
  v27 = v0;
  RequestResponse.Controller.revision.getter();
  v28 = v60;
  RequestResponse.Revision.content.getter(v60);

  v29 = sub_10010FC20(&qword_10118D1C8);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    sub_1000095E8(v28, &qword_10118D1B8);
    (*(v25 + 8))(v21, v24);
    goto LABEL_5;
  }

  v54 = v26;
  v55 = v25 + 32;
  v56 = v24;
  v64 = v21;
  v34 = v61;
  v33 = v62;
  v35 = v57;
  v36 = *(v61 + 16);
  v36(v57, v28, v62);
  sub_1000095E8(v28, &qword_10118D1C8);
  v37 = *(v34 + 32);
  v57 = (v34 + 32);
  v53 = v37;
  v37(v65, v35, v33);
  v38 = v27;
  v60 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentIndexPathTask;
  if (*(v27 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentIndexPathTask))
  {

    Task.cancel()();
  }

  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v63, 1, 1, v39);
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = v59;
  v52 = v38;
  v41 = v62;
  v36(v59, v65, v62);
  v42 = v58;
  v43 = v56;
  (*(v25 + 16))(v58, v64, v56);
  v44 = v61;
  v45 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v46 = (v8 + *(v25 + 80) + v45) & ~*(v25 + 80);
  v47 = (v18 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  v53(v48 + v45, v40, v41);
  v54(v48 + v46, v42, v43);
  *(v48 + v47) = v51;
  v49 = v63;
  v50 = sub_10035EB10(0, 0, v63, &unk_100ED1758, v48);
  sub_1000095E8(v49, &unk_101181520);
  (*(v44 + 8))(v65, v41);
  (*(v25 + 8))(v64, v43);
  *(v52 + v60) = v50;
}

void sub_100525E1C()
{
  v0 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v2);

    v5 = sub_10010FC20(&qword_10118D1C8);
    if ((*(*(v5 - 8) + 48))(v2, 1, v5) == 1)
    {
      sub_1000095E8(v2, &qword_10118D1B8);
      v6 = _swiftEmptyArrayStorage;
    }

    else
    {
      v6 = *&v2[*(v5 + 36)];

      sub_1000095E8(v2, &qword_10118D1C8);
    }

    v7 = v6[2];

    v8 = sub_100526124();
    swift_getKeyPath();
    v14 = v8;
    sub_100532DC8(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v8 + 48);

    if ((v7 == 0) == v9)
    {
    }

    else
    {
      v10 = *&v4[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource];
      v11 = v7 == 0;
      if (((v7 == 0) ^ *(v10 + 48)))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *&v13[-16] = v10;
        v13[-8] = v11;
        v14 = v10;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {

        *(v10 + 48) = v11;
      }
    }
  }
}

uint64_t sub_100526124()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource;
  if (*(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s17PlayShuffleHeaderV10DataSourceCMa(0);
    v2 = swift_allocObject();
    *(v2 + 48) = 0;

    ObservationRegistrar.init()();
    *(v2 + 16) = sub_100534EE0;
    *(v2 + 24) = v3;
    *(v2 + 32) = sub_1003C141C;
    *(v2 + 40) = v4;

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100526248(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController);
    v6 = result;

    if (a2)
    {
      v7 = a1;
    }

    else
    {
      v7 = 0;
    }

    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    v9 = *(v5 + 48);
    swift_beginAccess();
    v10 = *(v9 + 48);
    v15[1] = *(v9 + 32);
    v15[2] = v10;
    v11 = *(v9 + 64);
    v16 = *(v9 + 80);
    v15[3] = v11;
    v15[0] = *(v9 + 16);
    v12 = *(v9 + 64);
    v20 = *(v9 + 48);
    v21 = v12;
    v13 = *(v9 + 16);
    v22 = v16;
    v17 = v13;

    sub_10021817C(v15, &v14);

    v18 = v7;
    v19 = v8;
    sub_100379CC8(&v17);
  }

  return result;
}

uint64_t sub_10052635C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_1005265E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_100526868@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10010FC20(&unk_101193D98);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v9, &unk_101193D98);
  v11 = sub_10010FC20(&unk_101193D60);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000095E8(v9, &unk_101193D98);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Song();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v10, &unk_101193D98);
  return swift_endAccess();
}

uint64_t sub_100526B08(uint64_t a1)
{
  v46 = a1;
  v44 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v44);
  v2 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v9 - 8);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for Song();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v42 = v7;
    v41 = v2;
    v23 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController;

    sub_10037BC74(v46, v13);

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      sub_1000095E8(v13, &unk_101183960);
      return 0;
    }

    else
    {
      (*(v15 + 32))(v20, v13, v14);
      v24 = *(*&v22[v23] + 48);
      swift_beginAccess();
      v25 = *(v24 + 48);
      v50[1] = *(v24 + 32);
      v50[2] = v25;
      v50[3] = *(v24 + 64);
      v51 = *(v24 + 80);
      v50[0] = *(v24 + 16);
      sub_10021817C(v50, v48);
      sub_1007B8D40(v5);
      sub_1003BECBC(v50);
      v26 = v42;
      if ((*(v42 + 48))(v5, 1, v6) == 1)
      {
        sub_1000095E8(v5, &unk_10118CDB0);
        v27 = 0;
      }

      else
      {
        v28 = v45;
        (*(v26 + 32))(v45, v5, v6);
        v29 = v26;
        v30 = v41;
        (*(v26 + 16))(v41, v28, v6);
        swift_storeEnumTagMultiPayload();
        v49 = 0;
        memset(v48, 0, sizeof(v48));
        v47[0] = v22;
        v31 = v22;
        v32 = String.init<A>(reflecting:)();
        v47[3] = &type metadata for Player.CommandIssuerIdentity;
        v47[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v47[0] = v32;
        v47[1] = v33;
        v34 = v31;
        v35 = v43;
        PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v30, v48, 3, 0, 0, 1, 0, 1, v43, v22, v47);
        v36 = (*(v29 + 8))(v45, v6);
        v27 = PlaybackIntentDescriptor.intent.getter(v36);
        sub_100532F98(v35, type metadata accessor for PlaybackIntentDescriptor);
      }

      v37 = sub_10079AF28(v27);
      v38 = sub_100797240(&off_10109B8B0, v37);

      (*(v15 + 16))(v17, v20, v14);
      v39 = sub_10079D968(v38, v17);

      (*(v15 + 8))(v20, v14);
      return v39;
    }
  }

  return result;
}

void sub_100527148(char a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v4 = sub_1005236A0();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  type metadata accessor for ApplicationMainMenu();
  v5 = sub_100314AEC();
  if (v5)
  {
    v6 = v5;
    sub_1007CA9B8(v2, v5);
  }
}

uint64_t sub_100527268(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for MetricsEvent.Page(0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v5);
  v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v9 = MetricsEvent.Page.librarySongsList.unsafeMutableAddressor();
  sub_100532A34(v9, v7, type metadata accessor for MetricsEvent.Page);
  v10 = sub_10053771C();
  v12 = v11;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v13 = qword_101218AD0;
  v14 = GroupActivitiesManager.hasJoined.getter();
  v15 = GroupActivitiesManager.participantsCount.getter();
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v8) + 0xA0))(v7, v10, v12, v14 & 1, v15, *(v13 + v16));

  return sub_100532F98(v7, type metadata accessor for MetricsEvent.Page);
}

void sub_100527580()
{
  v0 = sub_10010FC20(&unk_10118D330);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v5 = Strong;

  v6 = sub_1006E6C64();

  if (v6)
  {

LABEL_4:
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    UICollectionViewCell.contentConfiguration.setter();
    return;
  }

  sub_100526124();
  sub_1003C13C8();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  *(&v8 + 1) = v0;
  v9 = sub_100020674(&unk_10118D340, &unk_10118D330);
  sub_10001C8B8(&v7);
  UIHostingConfiguration.margins(_:_:)();

  (*(v1 + 8))(v3, v0);
  UICollectionViewCell.contentConfiguration.setter();
}

void sub_10052777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a1;
  v23[1] = a4;
  v4 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = sub_10010FC20(&qword_10118D1C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = sub_10010FC20(&qword_10118D1B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v23 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v20 = sub_10010FC20(&qword_10118D1C8);
    if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
    {
      sub_1000095E8(v6, &qword_10118D1B8);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &qword_10118D1C8);
    v21 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v22 = IndexPath.section.getter();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v21 + 16))
    {
      (*(v12 + 16))(v14, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v11);

      (*(v12 + 32))(v17, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v23[2], v23[3], v24);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v17, v11);
      return;
    }

    __break(1u);
  }
}

void sub_100527B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&qword_101193DA8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23[0] = v23;
    __chkstk_darwin(Strong);
    v23[-4] = a3;
    v23[-3] = v16;
    v23[-2] = a1;
    v23[-1] = a5;
    v17 = v16;
    sub_10010FC20(&qword_101193DB0);
    v23[1] = a1;
    v18 = sub_1001109D0(&qword_101193DB8);
    v19 = sub_100020674(&qword_101193DC0, &qword_101193DB8);
    v24[0] = v18;
    v24[1] = v19;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v20 = *(v9 + 8);
    v20(v11, v8);
    static Edge.Set.vertical.getter();
    v21 = [v17 traitCollection];
    v22 = [v21 preferredContentSizeCategory];

    UIContentSizeCategory.isAccessibilityCategory.getter();
    v24[3] = v8;
    v24[4] = sub_100020674(&qword_101193DC8, &qword_101193DA8);
    sub_10001C8B8(v24);
    UIHostingConfiguration.margins(_:_:)();
    v20(v14, v8);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100527E7C@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a3;
  v96 = a4;
  v91 = a2;
  v5 = type metadata accessor for Song();
  v76 = v5;
  v97 = *(v5 - 8);
  __chkstk_darwin(v5);
  v93 = v6;
  v94 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v7 - 8);
  v90 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = &v76 - v10;
  v79 = type metadata accessor for MusicFavoriteStatus();
  v11 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v76 - v14;
  v15 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v18 - 8);
  v20 = &v76 - v19;
  v21 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v21 - 8);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10010FC20(&qword_101193DB8);
  __chkstk_darwin(v24);
  v26 = &v76 - v25;
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v5, &protocol witness table for Song, v20);
  ArtworkImage.Size.init(cgSize:)(0x4048000000000000, 0x4048000000000000, 0, v98);
  v27 = Corner.small.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v27 + 16);
  v31 = sub_10010FC20(&unk_101182950);
  (*(*(v31 - 8) + 56))(v17, 1, 11, v31);
  v92 = v23;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v20, v17, 0, 1, v98, v28, v29, v30, v23);
  v32 = Song.title.getter();
  v88 = v33;
  v89 = v32;
  v87 = Song.artistName.getter();
  v86 = v34;
  v85 = Song.albumTitle.getter();
  v84 = v35;
  Song.duration.getter();
  v82 = static Duration.seconds(_:)();
  v81 = v36;
  v37 = v77;
  Song.favoriteStatus.getter();
  v38 = v78;
  v39 = v79;
  (*(v11 + 104))(v78, enum case for MusicFavoriteStatus.favorited(_:), v79);
  v40 = v38;
  v80 = static MusicFavoriteStatus.== infix(_:_:)();
  v41 = *(v11 + 8);
  v41(v40, v39);
  v41(v37, v39);
  Song.contentRating.getter();
  v42 = v97;
  v43 = v83;
  v44 = v76;
  v77 = *(v97 + 16);
  (v77)(v83, a1, v76);
  v45 = v44;
  (*(v42 + 56))(v43, 0, 1, v44);
  v46 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  v47 = v91;
  swift_beginAccess();
  v48 = v47 + v46;
  v49 = v45;
  v50 = v90;
  sub_1000089F8(v48, v90, &unk_101183960);
  sub_100532DC8(&qword_101193D80, &type metadata accessor for Song);
  LODWORD(v78) = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v50, &unk_101183960);
  sub_1000095E8(v43, &unk_101183960);
  v79 = sub_1007BAB4C();
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v83 = Player.state<A>(for:)(a1);
  v90 = sub_100521788(a1);
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = v94;
  (v77)(v94, a1, v45);
  v53 = v97;
  v54 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v51;
  v56 = v95;
  *(v55 + 24) = v95;
  (*(v53 + 32))(v55 + v54, v52, v49);

  v57 = v56;
  v58 = sub_1005236A0();
  v59 = *&v58[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

  sub_100518F70(v92, v26, type metadata accessor for ArtworkImage.Info);
  v60 = &v26[v24[11]];
  v61 = v88;
  *v60 = v89;
  *(v60 + 1) = v61;
  v62 = &v26[v24[12]];
  v63 = v86;
  *v62 = v87;
  v62[1] = v63;
  v64 = &v26[v24[13]];
  v65 = v84;
  *v64 = v85;
  v64[1] = v65;
  v66 = &v26[v24[14]];
  v67 = v81;
  *v66 = v82;
  v66[1] = v67;
  v26[v24[15]] = v80 & 1;
  v26[v24[17]] = v78 & 1;
  v68 = &v26[v24[18]];
  sub_10010FC20(&qword_101193DD0);
  sub_100020674(&qword_101193DD8, &qword_101193DD0);
  *v68 = ObservedObject.init(wrappedValue:)();
  v68[1] = v69;
  v70 = &v26[v24[19]];
  sub_10010FC20(&qword_101193DE0);
  sub_100020674(&unk_101193DE8, &qword_101193DE0);
  *v70 = ObservedObject.init(wrappedValue:)();
  v70[1] = v71;
  *&v26[v24[20]] = v90;
  v72 = &v26[v24[21]];
  *v72 = sub_100532ABC;
  v72[1] = v55;
  *&v26[v24[22]] = v59;
  v73 = v24[23];
  *&v26[v73] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v74 = v24[24];
  *&v26[v74] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);
  swift_storeEnumTagMultiPayload();

  sub_100532DC8(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100020674(&qword_101193DC0, &qword_101193DB8);

  View.artworkCaching(owner:)();

  return sub_1000095E8(v26, &qword_101193DB8);
}

uint64_t sub_1005288B8(uint64_t a1, uint64_t a2, char *a3, void (*a4)(char *, uint64_t, uint64_t, void *))
{
  v152 = a4;
  v173 = a3;
  v4 = type metadata accessor for UUID();
  v162 = *(v4 - 8);
  __chkstk_darwin(v4);
  v161 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011838D0);
  v159 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v155 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v7;
  __chkstk_darwin(v8);
  v172 = &v140 - v9;
  v10 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v10 - 8);
  v153 = &v140 - v11;
  v12 = sub_10010FC20(&unk_1011845D0);
  v156 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v157 = v13;
  v158 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v171 = &v140 - v15;
  v165 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v167 = *(v165 - 1);
  __chkstk_darwin(v165);
  v149 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v17 - 8);
  v19 = &v140 - v18;
  v20 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v150 = *(v20 - 8);
  v151 = v20;
  __chkstk_darwin(v20);
  v148 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v22 - 8);
  v147 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v24 - 8);
  v154 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v140 - v27;
  __chkstk_darwin(v29);
  v166 = &v140 - v30;
  __chkstk_darwin(v31);
  v164 = &v140 - v32;
  v33 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v33 - 8);
  v163 = &v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v170 = &v140 - v36;
  v37 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v37 - 8);
  v39 = &v140 - v38;
  v40 = type metadata accessor for Song();
  v168 = *(v40 - 8);
  v169 = v40;
  __chkstk_darwin(v40);
  v42 = &v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for IndexPath();
  v43 = *(v175 - 8);
  __chkstk_darwin(v175);
  v45 = &v140 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v174 = &v140 - v47;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v49 = result;
    v146 = v4;
    v50 = sub_1005236A0();
    v51 = [v50 indexPathForCell:v173];

    if (v51)
    {
      v144 = v28;
      v173 = v42;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = v174;
      v53 = v175;
      (*(v43 + 32))(v174, v45, v175);
      v54 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController;

      sub_10037BC74(v52, v39);

      v56 = v168;
      v55 = v169;
      if ((*(v168 + 48))(v39, 1, v169) == 1)
      {
        (*(v43 + 8))(v52, v53);

        sub_1000095E8(v39, &unk_101183960);
        return 0;
      }

      else
      {
        v145 = v43;
        v57 = v173;
        (*(v56 + 32))(v173, v39, v55);
        sub_10010FC20(&unk_101183900);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_100EBC6B0;
        *(v58 + 56) = v55;
        *(v58 + 64) = &protocol witness table for Song;
        v142 = v58;
        v59 = sub_10001C8B8((v58 + 32));
        (*(v56 + 16))(v59, v57, v55);
        v60 = [v49 traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        v143 = v190;
        v61 = *(*&v49[v54] + 48);
        swift_beginAccess();
        v62 = *(v61 + 48);
        v200[1] = *(v61 + 32);
        v200[2] = v62;
        v200[3] = *(v61 + 64);
        v201 = *(v61 + 80);
        v200[0] = *(v61 + 16);
        sub_10021817C(v200, &v190);
        sub_1007B8D40(v19);
        sub_1003BECBC(v200);
        v64 = v150;
        v63 = v151;
        if ((*(v150 + 48))(v19, 1, v151) == 1)
        {
          sub_1000095E8(v19, &unk_10118CDB0);
          v65 = 1;
          v66 = v145;
          v68 = v164;
          v67 = v165;
        }

        else
        {
          v69 = v148;
          (*(v64 + 32))(v148, v19, v63);
          v70 = v149;
          (*(v64 + 16))(v149, v69, v63);
          v67 = v165;
          swift_storeEnumTagMultiPayload();
          v192 = 0;
          v190 = 0u;
          v191 = 0u;
          *&v186 = v49;
          v71 = v49;
          v72 = String.init<A>(reflecting:)();
          v187 = &type metadata for Player.CommandIssuerIdentity;
          v188 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v186 = v72;
          *(&v186 + 1) = v73;
          v74 = v71;
          v75 = v147;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v70, &v190, 3, 0, 0, 1, 0, 1, v147, v49, &v186);
          (*(v64 + 8))(v69, v63);
          v68 = v164;
          sub_100532A34(v75, v164, type metadata accessor for PlaybackIntentDescriptor.IntentType);
          sub_100532F98(v75, type metadata accessor for PlaybackIntentDescriptor);
          v65 = 0;
          v66 = v145;
        }

        v76 = v167[7];
        v167 += 7;
        v152 = v76;
        v76(v68, v65, 1, v67);
        v192 = 0;
        v190 = 0u;
        v191 = 0u;
        if (qword_10117F608 != -1)
        {
          swift_once();
        }

        v77 = qword_101218AD8;
        sub_1000089F8(v68, v166, &unk_1011838E0);
        v78 = v77;
        v79 = UIViewController.playActivityInformation.getter();
        v80 = v49;
        v82 = v81;
        v84 = v83;
        v86 = v85;
        sub_1000089F8(&v190, &v182, &unk_101183910);
        v87 = v80;
        if (*(&v183 + 1))
        {
          sub_100059A8C(&v182, &v186);
        }

        else
        {
          *&v193 = v80;
          sub_100009F78(0, &qword_101183D40);
          v88 = v80;
          sub_10010FC20(&unk_101183920);
          if (swift_dynamicCast())
          {
            sub_100059A8C(&v196, &v186);
          }

          else
          {
            v198 = 0;
            v196 = 0u;
            v197 = 0u;
            *&v186 = v88;
            v89 = v88;
            v90 = String.init<A>(reflecting:)();
            v187 = &type metadata for Player.CommandIssuerIdentity;
            v188 = &protocol witness table for Player.CommandIssuerIdentity;
            *&v186 = v90;
            *(&v186 + 1) = v91;
            if (*(&v197 + 1))
            {
              sub_1000095E8(&v196, &unk_101183910);
            }
          }

          v68 = v164;
          if (*(&v183 + 1))
          {
            sub_1000095E8(&v182, &unk_101183910);
          }
        }

        v92 = v170;
        Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v78, v166, v79, v82, v84, v86, &v186, v170);
        sub_1000095E8(&v190, &unk_101183910);
        sub_1000095E8(v68, &unk_1011838E0);
        v93 = type metadata accessor for Actions.PlaybackContext();
        v94 = *(v93 - 8);
        (*(v94 + 56))(v92, 0, 1, v93);
        v95 = type metadata accessor for PlaylistContext();
        (*(*(v95 - 8) + 56))(v171, 1, 1, v95);
        v96 = v153;
        v97 = v175;
        (*(v66 + 16))(v153, v174, v175);
        (*(v66 + 56))(v96, 0, 1, v97);
        sub_100376EBC(v96, &v190);
        sub_1000095E8(v96, &unk_10118BCE0);
        v98 = v172;
        sub_100529EE4(v172);
        v99 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v99 - 8) + 56))(v98, 0, 1, v99);
        sub_100008FE4(v142 + 32, v189);

        sub_1000089F8(&v190, &v182, &unk_1011845E0);
        if (v185 == 1)
        {
          v198 = 0;
          v196 = 0u;
          v197 = 0u;
          v199 = xmmword_100EBCEF0;
          PresentationSource.init(viewController:position:)(v87, &v196, &v186);
          v100 = v163;
          if (v185 != 1)
          {
            sub_1000095E8(&v182, &unk_1011845E0);
          }
        }

        else
        {
          sub_10012B828(&v182, &v186);
          v100 = v163;
        }

        swift_getObjectType();
        v101 = swift_conformsToProtocol2();
        if (v101)
        {
          v153 = v101;
          v102 = v87;
          v164 = v87;
        }

        else
        {
          v164 = 0;
          v153 = 0;
        }

        v166 = swift_allocBox();
        v104 = v103;
        sub_1000089F8(v170, v100, &unk_10118AB20);
        v105 = *(v94 + 48);
        if (v105(v100, 1, v93) == 1)
        {
          v106 = v144;
          v152(v144, 1, 1, v165);
          v184 = 0;
          v182 = 0u;
          v183 = 0u;
          sub_1000089F8(v106, v154, &unk_1011838E0);
          v167 = v78;
          v107 = UIViewController.playActivityInformation.getter();
          v165 = v108;
          v151 = v110;
          v152 = v109;
          sub_1000089F8(&v182, &v180, &unk_101183910);
          if (v181)
          {
            sub_100059A8C(&v180, &v193);
          }

          else
          {
            v179 = v87;
            sub_100009F78(0, &qword_101183D40);
            v111 = v87;
            sub_10010FC20(&unk_101183920);
            if (swift_dynamicCast())
            {
              sub_100059A8C(&v176, &v193);
              v100 = v163;
            }

            else
            {
              v178 = 0;
              v176 = 0u;
              v177 = 0u;
              *&v193 = v111;
              v112 = v111;
              v113 = String.init<A>(reflecting:)();
              *(&v194 + 1) = &type metadata for Player.CommandIssuerIdentity;
              v195 = &protocol witness table for Player.CommandIssuerIdentity;
              *&v193 = v113;
              *(&v193 + 1) = v114;
              v100 = v163;
              if (*(&v177 + 1))
              {
                sub_1000095E8(&v176, &unk_101183910);
              }
            }

            if (v181)
            {
              sub_1000095E8(&v180, &unk_101183910);
            }
          }

          Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v167, v154, v107, v165, v152, v151, &v193, v104);
          sub_1000095E8(&v182, &unk_101183910);
          sub_1000095E8(v144, &unk_1011838E0);
          if (v105(v100, 1, v93) != 1)
          {
            sub_1000095E8(v100, &unk_10118AB20);
          }
        }

        else
        {
          sub_100518F70(v100, v104, type metadata accessor for Actions.PlaybackContext);
        }

        v115 = &v104[*(v93 + 28)];
        sub_1000089F8(v115, &v193, &unk_101183910);
        if (*(&v194 + 1))
        {
          sub_100059A8C(&v193, &v182);
        }

        else
        {
          *&v182 = v87;
          v116 = v87;
          v117 = String.init<A>(reflecting:)();
          *(&v183 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v184 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v182 = v117;
          *(&v182 + 1) = v118;
          if (*(&v194 + 1))
          {
            sub_1000095E8(&v193, &unk_101183910);
          }
        }

        sub_10010FC20(&unk_101183930);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_100EBDC20;
        *(v119 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v119 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v119 + 32) = 0x4D747865746E6F43;
        *(v119 + 40) = 0xEB00000000756E65;
        sub_100008FE4(&v182, v119 + 72);
        v120 = static Player.CommandIssuer<>.combining(_:)();
        v122 = v121;

        sub_10000959C(&v182);
        *(&v183 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v184 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v182 = v120;
        *(&v182 + 1) = v122;
        sub_10006B010(&v182, v115, &unk_101183910);
        sub_100008FE4(v189, &v182);
        sub_10010FC20(&unk_10118AB50);
        v167 = String.init<A>(describing:)();
        v165 = v123;
        v163 = swift_allocObject();
        v141 = v87;
        swift_unknownObjectWeakInit();
        sub_100008FE4(v189, &v180);
        sub_10012B7A8(&v186, &v182);
        v124 = v155;
        sub_1000089F8(v172, v155, &unk_1011838D0);
        v125 = v158;
        sub_1000089F8(v171, v158, &unk_1011845D0);
        v126 = (*(v159 + 80) + 160) & ~*(v159 + 80);
        v127 = (v160 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
        v128 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
        v129 = (*(v156 + 80) + v128 + 8) & ~*(v156 + 80);
        v160 = (v129 + v157 + 7) & 0xFFFFFFFFFFFFFFF8;
        v130 = (v129 + v157 + 31) & 0xFFFFFFFFFFFFFFF8;
        v131 = swift_allocObject();
        sub_100059A8C(&v180, v131 + 16);
        *(v131 + 56) = v143;
        sub_10012B828(&v182, v131 + 64);
        sub_10003D17C(v124, v131 + v126, &unk_1011838D0);
        *(v131 + v127) = v163;
        *(v131 + v128) = v166;
        sub_10003D17C(v125, v131 + v129, &unk_1011845D0);
        v132 = v131 + v160;
        v133 = v153;
        *v132 = v164;
        *(v132 + 8) = v133;
        *(v132 + 16) = 2;
        v134 = (v131 + v130);
        *v134 = variable initialization expression of Library.Context.playlistVariants;
        v134[1] = 0;
        swift_unknownObjectRetain();

        v135 = v161;
        UUID.init()();
        v136 = UUID.uuidString.getter();
        v138 = v137;
        (*(v162 + 8))(v135, v146);
        v202._countAndFlagsBits = v167;
        v202._object = v165;
        ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v202, v136, v138, sub_10021953C, v131, &v193);
        swift_unknownObjectRelease();
        sub_10012BA6C(&v186);
        sub_10000959C(v189);

        v139 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
        v186 = v193;
        sub_100015BB0(&v186);
        v182 = v194;
        sub_100015BB0(&v182);

        sub_1000095E8(v172, &unk_1011838D0);
        sub_1000095E8(&v190, &unk_1011845E0);
        sub_1000095E8(v171, &unk_1011845D0);
        sub_1000095E8(v170, &unk_10118AB20);
        (*(v168 + 8))(v173, v169);
        (*(v145 + 8))(v174, v175);
        return v139;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100529EE4@<X0>(char *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v14, &unk_1011838D0);
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_100518F70(v14, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v41 = v1;
  sub_1000095E8(v14, &unk_1011838D0);
  v18 = MetricsEvent.Page.librarySongsList.unsafeMutableAddressor();
  sub_100532A34(v18, v8, type metadata accessor for MetricsEvent.Page);
  v19 = type metadata accessor for MetricsEvent.Page(0);
  v20 = v5;
  v21 = *(*(v19 - 8) + 56);
  v21(v8, 0, 1, v19);
  v40 = v20;
  sub_1000089F8(v8, v20, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v22 = sub_10053771C();
  v38 = v23;
  v39 = v22;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v24 = qword_101218AD0;
  v37 = GroupActivitiesManager.hasJoined.getter();
  v36 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v8, &unk_1011838F0);
  v25 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v27 = v16[5];
  v21(&a1[v27], 1, 1, v19);
  v28 = v16[7];
  v29 = &a1[v16[6]];
  v30 = v16[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v40, &a1[v27], &unk_1011838F0);
  v31 = v38;
  *v29 = v39;
  v29[1] = v31;
  *&a1[v28] = 0;
  *&a1[v30] = 0;
  v32 = &a1[v16[9]];
  *v32 = v37 & 1;
  *(v32 + 1) = v36;
  *(v32 + 2) = v26;
  sub_100532A34(a1, v11, type metadata accessor for Actions.MetricsReportingContext);
  (*(v17 + 56))(v11, 0, 1, v16);
  v33 = v41;
  swift_beginAccess();
  sub_10006B010(v11, v33 + v15, &unk_1011838D0);
  return swift_endAccess();
}

uint64_t sub_10052A2F4(uint64_t a1)
{
  v46 = a1;
  v1 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v42 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v42);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v45 = *(v8 - 8);
  __chkstk_darwin(v8);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v10 - 8);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v15 - 8);
  v17 = &v39 - v16;
  v18 = type metadata accessor for Song();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v39 = v14;
    v40 = v3;
    v24 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController;

    sub_10037BC74(v46, v17);

    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {

      sub_1000095E8(v17, &unk_101183960);
      return 0;
    }

    (*(v19 + 32))(v21, v17, v18);
    v25 = *(*&v23[v24] + 48);
    swift_beginAccess();
    v26 = *(v25 + 48);
    v50[1] = *(v25 + 32);
    v50[2] = v26;
    v50[3] = *(v25 + 64);
    v51 = *(v25 + 80);
    v50[0] = *(v25 + 16);
    sub_10021817C(v50, v47);
    sub_1007B8D40(v7);
    sub_1003BECBC(v50);
    v27 = v45;
    if ((*(v45 + 48))(v7, 1, v8) == 1)
    {
      sub_1000095E8(v7, &unk_10118CDB0);
      (*(v19 + 8))(v21, v18);

      return 0;
    }

    v28 = v44;
    (*(v27 + 32))(v44, v7, v8);
    v29 = v43;
    (*(v27 + 16))(v43, v28, v8);
    swift_storeEnumTagMultiPayload();
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v49[0] = v23;
    v30 = v23;
    v31 = String.init<A>(reflecting:)();
    v49[3] = &type metadata for Player.CommandIssuerIdentity;
    v49[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v49[0] = v31;
    v49[1] = v32;
    v33 = v30;
    v34 = v41;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v29, v47, 3, 0, 0, 1, 0, 1, v41, v23, v49);
    (*(v27 + 8))(v44, v8);
    v35 = v39;
    sub_100518F70(v34, v39, type metadata accessor for PlaybackIntentDescriptor);
    v36 = type metadata accessor for IndexPath();
    v37 = v40;
    (*(*(v36 - 8) + 56))(v40, 1, 1, v36);
    sub_100376EBC(v37, v47);
    sub_1000095E8(v37, &unk_10118BCE0);
    v38 = sub_1007F6318(v21, v35, v47);

    sub_10012BA6C(v47);
    sub_100532F98(v35, type metadata accessor for PlaybackIntentDescriptor);
    (*(v19 + 8))(v21, v18);
    return v38;
  }

  return result;
}

uint64_t sub_10052A934(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for Song();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController;

    sub_10037BC74(a1, v7);

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      sub_1000095E8(v7, &unk_101183960);
      return 0;
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v15 = *(*&v13[v14] + 48);
      swift_beginAccess();
      v16 = *(v15 + 16);
      v17 = type metadata accessor for IndexPath();
      (*(*(v17 - 8) + 56))(v4, 1, 1, v17);

      sub_100376EBC(v4, v19);
      sub_1000095E8(v4, &unk_10118BCE0);
      v18 = sub_10051A010(v11, v16, v19);

      sub_10012BA6C(v19);
      (*(v9 + 8))(v11, v8);
      return v18;
    }
  }

  return result;
}

uint64_t sub_10052AF20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_10118A650);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v10 = *v9 == a2 && v9[1] == a3;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v11 != a3)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
LABEL_14:
        sub_1005265E0(v8);
        goto LABEL_15;
      }

      strcpy(v17, "Unknown kind=");
      v17[7] = -4864;
      v14._countAndFlagsBits = a2;
      v14._object = a3;
      String.append(_:)(v14);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_14;
  }

  sub_10052635C(v8);
LABEL_15:
  sub_100009F78(0, &unk_101184750);
  v15 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v6 + 8))(v8, v5);
  return v15;
}

id sub_10052B280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10010FC20(&unk_101193D60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  sub_10037BC74(a2, &v27 - v16);
  sub_100526868(v8);
  v18 = sub_1007FBE84(v8, a2, v17);
  (*(v6 + 8))(v8, v5);
  v19 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  swift_beginAccess();
  sub_1000089F8(v3 + v19, v14, &unk_101183960);
  v20 = type metadata accessor for Song();
  sub_100532DC8(&qword_101193D80, &type metadata accessor for Song);
  LOBYTE(v19) = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v14, &unk_101183960);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v19 & 1;
  *(v22 + 24) = v21;
  v23 = v18;

  UICollectionViewCell.configurationUpdateHandler.setter();

  sub_1000089F8(v17, v11, &unk_101183960);
  v24 = *(v20 - 8);
  if ((*(v24 + 48))(v11, 1, v20) == 1)
  {
    sub_1000095E8(v11, &unk_101183960);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
  }

  else
  {
    *(&v28 + 1) = v20;
    v29 = &protocol witness table for Song;
    v25 = sub_10001C8B8(&v27);
    (*(v24 + 32))(v25, v11, v20);
  }

  sub_1000095E8(v17, &unk_101183960);
  sub_1000095E8(&v27, &qword_1011A3DD0);
  return v23;
}

void sub_10052B654(void *a1, uint64_t a2, char a3)
{
  v5 = sub_10010FC20(&qword_101183A90);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v21 - v7;
  v9 = [a1 contentView];
  if (a3)
  {
    v10 = [*HI.Color.prominentBackgroundColor.unsafeMutableAddressor() colorWithAlphaComponent:0.22];
  }

  else
  {
    v10 = 0;
  }

  [v9 setBackgroundColor:v10];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong traitCollection];

    v14 = [v13 userInterfaceIdiom];
    if (v14 == 6)
    {
      v15 = [a1 contentView];
      [v15 setClipsToBounds:UICellConfigurationState.isSwiped.getter() & 1];

      v16 = [a1 contentView];
      if (a3)
      {
        v17 = UIView.Corner.large.unsafeMutableAddressor();
        v18 = type metadata accessor for UIView.Corner();
        v19 = *(v18 - 8);
        (*(v19 + 16))(v8, v17, v18);
        (*(v19 + 56))(v8, 0, 1, v18);
      }

      else
      {
        v20 = type metadata accessor for UIView.Corner();
        (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      }

      UIView.corner.setter();
    }
  }
}

BOOL sub_10052BA00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = UICollectionView.isDraggingCell(at:)();

  (*(v5 + 8))(v7, v4);
  return (v9 & 1) == 0;
}

uint64_t sub_10052BAF4(void *a1, char *a2)
{
  v3 = v2;
  v115 = a2;
  v116 = a1;
  v4 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v4 - 8);
  v103 = &v92 - v5;
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v99 = &v92 - v7;
  v94 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v94);
  v96 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v9 - 8);
  v102 = &v92 - v10;
  v106 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v95 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v12 - 8);
  v107 = &v92 - v13;
  v105 = type metadata accessor for PlaybackIntentDescriptor(0);
  v108 = *(v105 - 8);
  __chkstk_darwin(v105);
  v97 = v14;
  v98 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v92 - v16;
  v18 = type metadata accessor for GenericMusicItem();
  v111 = *(v18 - 8);
  v112 = v18;
  __chkstk_darwin(v18);
  v109 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v118 = *(v114 - 8);
  __chkstk_darwin(v114);
  v110 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v113 = &v92 - v22;
  v23 = type metadata accessor for Song();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v117 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v26 - 8);
  v101 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v92 - v29;
  __chkstk_darwin(v31);
  v33 = &v92 - v32;
  v35 = __chkstk_darwin(v34);
  v37 = &v92 - v36;
  v119 = v24;
  v120 = v23;
  v100 = *(v24 + 56);
  v100(&v92 - v36, 1, 1, v23, v35);
  v38 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  swift_beginAccess();
  sub_1000089F8(&v3[v38], v33, &unk_101183960);
  swift_beginAccess();
  sub_1002190E0(v37, &v3[v38], &unk_101183960);
  swift_endAccess();
  sub_10052F5D8();
  v39 = v33;
  v40 = v115;
  sub_1000095E8(v39, &unk_101183960);
  sub_1000095E8(v37, &unk_101183960);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v116 deselectItemAtIndexPath:isa animated:1];

  v42 = [v3 navigationItem];
  v43 = [v42 searchController];

  if (v43)
  {
    v44 = [v43 searchBar];

    [v44 resignFirstResponder];
  }

  v45 = *&v3[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController];
  sub_10037BC74(v40, v30);
  v47 = v119;
  v46 = v120;
  if ((*(v119 + 48))(v30, 1, v120) == 1)
  {
    v48 = &unk_101183960;
    v49 = v30;
    return sub_1000095E8(v49, v48);
  }

  v115 = v17;
  v116 = v3;
  v51 = v117;
  (*(v47 + 32))(v117, v30, v46);
  v52 = v109;
  v93 = *(v47 + 16);
  v93(v109, v51, v46);
  v54 = v111;
  v53 = v112;
  (*(v111 + 104))(v52, enum case for GenericMusicItem.song(_:), v112);
  v55 = v113;
  sub_100538C48(v52, v113);
  (*(v54 + 8))(v52, v53);
  v56 = v118;
  v57 = v110;
  v58 = v114;
  (*(v118 + 104))(v110, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v114);
  LOBYTE(v53) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v61 = *(v56 + 8);
  v59 = v56 + 8;
  v60 = v61;
  v61(v57, v58);
  if (v53)
  {
    v112 = v60;
    v118 = v59;
    v62 = v101;
    v63 = v117;
    v64 = v120;
    v93(v101, v117, v120);
    (v100)(v62, 0, 1, v64);
    v65 = *(v45 + 48);
    swift_beginAccess();
    v66 = *(v65 + 48);
    v124[1] = *(v65 + 32);
    v124[2] = v66;
    v124[3] = *(v65 + 64);
    v125 = *(v65 + 80);
    v124[0] = *(v65 + 16);
    sub_10021817C(v124, v122);
    v67 = v102;
    sub_1007B8774(v62, v102);
    sub_1003BECBC(v124);
    v68 = v104;
    v69 = v106;
    if ((*(v104 + 48))(v67, 1, v106) == 1)
    {
      sub_1000095E8(v67, &unk_10118CDB0);
      v70 = 1;
      v71 = v113;
      v72 = v115;
      v73 = v107;
      v74 = v108;
    }

    else
    {
      v78 = v95;
      (*(v68 + 32))(v95, v67, v69);
      v79 = v96;
      (*(v68 + 16))(v96, v78, v69);
      swift_storeEnumTagMultiPayload();
      v123 = 0;
      memset(v122, 0, sizeof(v122));
      v80 = v116;
      v121[0] = v116;
      v81 = v116;
      v82 = String.init<A>(reflecting:)();
      v121[3] = &type metadata for Player.CommandIssuerIdentity;
      v121[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v121[0] = v82;
      v121[1] = v83;
      v84 = v81;
      v73 = v107;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v79, v122, 3, 0, 0, 1, 0, 1, v107, v80, v121);
      (*(v68 + 8))(v78, v69);
      v70 = 0;
      v71 = v113;
      v72 = v115;
      v74 = v108;
    }

    v85 = v105;
    (*(v74 + 56))(v73, v70, 1, v105);
    sub_1000095E8(v62, &unk_101183960);
    if ((*(v74 + 48))(v73, 1, v85) == 1)
    {
      v112(v71, v114);
      (*(v119 + 8))(v63, v120);
      v48 = &qword_1011848A0;
      v49 = v73;
      return sub_1000095E8(v49, v48);
    }

    sub_100518F70(v73, v72, type metadata accessor for PlaybackIntentDescriptor);
    v86 = type metadata accessor for TaskPriority();
    v87 = v99;
    (*(*(v86 - 8) + 56))(v99, 1, 1, v86);
    v88 = v98;
    sub_100532A34(v72, v98, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v89 = static MainActor.shared.getter();
    v90 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = v89;
    *(v91 + 24) = &protocol witness table for MainActor;
    sub_100518F70(v88, v91 + v90, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v87, &unk_100ECA700, v91);

    sub_100532F98(v72, type metadata accessor for PlaybackIntentDescriptor);
    v112(v71, v114);
    return (*(v119 + 8))(v63, v120);
  }

  else
  {
    v75 = type metadata accessor for IndexPath();
    v76 = v103;
    (*(*(v75 - 8) + 56))(v103, 1, 1, v75);
    sub_100376EBC(v76, v124);
    sub_1000095E8(v76, &unk_10118BCE0);
    v77 = v117;
    sub_10085FC04(v55, v117, v124);
    sub_10012BA6C(v124);
    v60(v55, v58);
    return (*(v119 + 8))(v77, v120);
  }
}

unint64_t sub_10052C8C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v138 = a4;
  v136 = a3;
  v4 = type metadata accessor for UUID();
  v146 = *(v4 - 8);
  v147 = v4;
  __chkstk_darwin(v4);
  v145 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011838D0);
  v142 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v143 = v7;
  v144 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v153 = &v130 - v9;
  v10 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v10 - 8);
  v137 = &v130 - v11;
  v12 = sub_10010FC20(&unk_1011845D0);
  v140 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v152 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v13;
  __chkstk_darwin(v14);
  v155 = &v130 - v15;
  v16 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v20 - 8);
  v22 = &v130 - v21;
  v23 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v27 - 8);
  v132 = (&v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v29 - 8);
  v134 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v139 = &v130 - v32;
  __chkstk_darwin(v33);
  v148 = &v130 - v34;
  __chkstk_darwin(v35);
  v151 = &v130 - v36;
  v37 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v37 - 8);
  v149 = &v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v154 = &v130 - v40;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v42 = Strong;
  v150 = v17;
  v135 = v16;
  sub_10010FC20(&unk_101183900);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100EBC6B0;
  v44 = type metadata accessor for Song();
  *(v43 + 56) = v44;
  *(v43 + 64) = &protocol witness table for Song;
  v130 = v43;
  v45 = sub_10001C8B8((v43 + 32));
  (*(*(v44 - 8) + 16))(v45, v136, v44);
  v46 = [v42 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v131 = v170;
  v47 = *(*&v42[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController] + 48);
  swift_beginAccess();
  v48 = *(v47 + 48);
  v180[1] = *(v47 + 32);
  v180[2] = v48;
  v180[3] = *(v47 + 64);
  v181 = *(v47 + 80);
  v180[0] = *(v47 + 16);
  sub_10021817C(v180, &v170);
  sub_1007B8D40(v22);
  sub_1003BECBC(v180);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v49 = v42;
    sub_1000095E8(v22, &unk_10118CDB0);
    v50 = 1;
    v51 = v135;
    v52 = v151;
  }

  else
  {
    (*(v24 + 32))(v26, v22, v23);
    (*(v24 + 16))(v19, v26, v23);
    v51 = v135;
    swift_storeEnumTagMultiPayload();
    v172 = 0;
    v170 = 0u;
    v171 = 0u;
    *&v166 = v42;
    v54 = v42;
    v55 = String.init<A>(reflecting:)();
    v167 = &type metadata for Player.CommandIssuerIdentity;
    v168 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v166 = v55;
    *(&v166 + 1) = v56;
    v57 = v54;
    v49 = v42;
    v58 = v132;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v19, &v170, 3, 0, 0, 1, 0, 1, v132, v42, &v166);
    (*(v24 + 8))(v26, v23);
    v52 = v151;
    sub_100532A34(v58, v151, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_100532F98(v58, type metadata accessor for PlaybackIntentDescriptor);
    v50 = 0;
  }

  v59 = v150[7];
  v150 += 7;
  v132 = v59;
  (v59)(v52, v50, 1, v51);
  v172 = 0;
  v170 = 0u;
  v171 = 0u;
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v60 = qword_101218AD8;
  v61 = v148;
  sub_1000089F8(v52, v148, &unk_1011838E0);
  v136 = v60;
  v62 = v49;
  v63 = UIViewController.playActivityInformation.getter();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  sub_1000089F8(&v170, &v162, &unk_101183910);
  if (*(&v163 + 1))
  {
    sub_100059A8C(&v162, &v166);
  }

  else
  {
    *&v173 = v49;
    sub_100009F78(0, &qword_101183D40);
    v70 = v49;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v176, &v166);
    }

    else
    {
      v178 = 0;
      v176 = 0u;
      v177 = 0u;
      *&v166 = v70;
      v71 = v70;
      v72 = String.init<A>(reflecting:)();
      v167 = &type metadata for Player.CommandIssuerIdentity;
      v168 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v166 = v72;
      *(&v166 + 1) = v73;
      if (*(&v177 + 1))
      {
        sub_1000095E8(&v176, &unk_101183910);
      }
    }

    v61 = v148;
    if (*(&v163 + 1))
    {
      sub_1000095E8(&v162, &unk_101183910);
    }
  }

  v74 = v154;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v136, v61, v63, v65, v67, v69, &v166, v154);
  sub_1000095E8(&v170, &unk_101183910);
  sub_1000095E8(v151, &unk_1011838E0);
  v75 = type metadata accessor for Actions.PlaybackContext();
  v76 = *(v75 - 8);
  (*(v76 + 56))(v74, 0, 1, v75);
  v77 = type metadata accessor for PlaylistContext();
  (*(*(v77 - 8) + 56))(v155, 1, 1, v77);
  v78 = type metadata accessor for IndexPath();
  v79 = *(v78 - 8);
  v80 = v137;
  (*(v79 + 16))(v137, v138, v78);
  (*(v79 + 56))(v80, 0, 1, v78);
  sub_100376EBC(v80, &v170);
  sub_1000095E8(v80, &unk_10118BCE0);
  v81 = v153;
  sub_100529EE4(v153);
  v82 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
  sub_100008FE4(v130 + 32, v169);

  sub_1000089F8(&v170, &v162, &unk_1011845E0);
  if (v165 == 1)
  {
    v178 = 0;
    v176 = 0u;
    v177 = 0u;
    v179 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v49, &v176, &v166);
    v83 = v149;
    if (v165 != 1)
    {
      sub_1000095E8(&v162, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v162, &v166);
    v83 = v149;
  }

  swift_getObjectType();
  v84 = swift_conformsToProtocol2();
  if (v84)
  {
    v138 = v84;
    v85 = v49;
    v148 = v49;
  }

  else
  {
    v148 = 0;
    v138 = 0;
  }

  v151 = swift_allocBox();
  v87 = v86;
  sub_1000089F8(v154, v83, &unk_10118AB20);
  v88 = *(v76 + 48);
  v89 = v88(v83, 1, v75);
  v133 = v49;
  if (v89 == 1)
  {
    v90 = v139;
    (v132)(v139, 1, 1, v135);
    v164 = 0;
    v162 = 0u;
    v163 = 0u;
    v91 = v90;
    v92 = v134;
    sub_1000089F8(v91, v134, &unk_1011838E0);
    v150 = v136;
    v93 = UIViewController.playActivityInformation.getter();
    v136 = v95;
    v137 = v94;
    v97 = v96;
    sub_1000089F8(&v162, &v160, &unk_101183910);
    if (v161)
    {
      sub_100059A8C(&v160, &v173);
      v98 = v149;
    }

    else
    {
      v159 = v62;
      sub_100009F78(0, &qword_101183D40);
      v99 = v62;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v156, &v173);
        v98 = v149;
      }

      else
      {
        v158 = 0;
        v156 = 0u;
        v157 = 0u;
        *&v173 = v99;
        v100 = v99;
        v101 = String.init<A>(reflecting:)();
        *(&v174 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v175 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v173 = v101;
        *(&v173 + 1) = v102;
        v98 = v149;
        if (*(&v157 + 1))
        {
          sub_1000095E8(&v156, &unk_101183910);
        }
      }

      v62 = v133;
      v92 = v134;
      if (v161)
      {
        sub_1000095E8(&v160, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v150, v92, v93, v137, v136, v97, &v173, v87);
    sub_1000095E8(&v162, &unk_101183910);
    sub_1000095E8(v139, &unk_1011838E0);
    if (v88(v98, 1, v75) != 1)
    {
      sub_1000095E8(v98, &unk_10118AB20);
    }
  }

  else
  {
    sub_100518F70(v83, v87, type metadata accessor for Actions.PlaybackContext);
  }

  v103 = *(v75 + 28);
  sub_1000089F8(&v87[v103], &v173, &unk_101183910);
  if (*(&v174 + 1))
  {
    sub_100059A8C(&v173, &v162);
  }

  else
  {
    *&v162 = v62;
    v104 = v62;
    v105 = String.init<A>(reflecting:)();
    *(&v163 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v164 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v162 = v105;
    *(&v162 + 1) = v106;
    if (*(&v174 + 1))
    {
      sub_1000095E8(&v173, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_100EBDC20;
  *(v107 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v107 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v107 + 32) = 0x4D747865746E6F43;
  *(v107 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v162, v107 + 72);
  v108 = static Player.CommandIssuer<>.combining(_:)();
  v110 = v109;

  sub_10000959C(&v162);
  *(&v163 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v164 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v162 = v108;
  *(&v162 + 1) = v110;
  sub_10006B010(&v162, &v87[v103], &unk_101183910);
  sub_100008FE4(v169, &v162);
  sub_10010FC20(&unk_10118AB50);
  v111 = String.init<A>(describing:)();
  v149 = v112;
  v150 = v111;
  v113 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v169, &v160);
  sub_10012B7A8(&v166, &v162);
  v114 = v144;
  sub_1000089F8(v153, v144, &unk_1011838D0);
  sub_1000089F8(v155, v152, &unk_1011845D0);
  v115 = (*(v142 + 80) + 160) & ~*(v142 + 80);
  v116 = (v143 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = (v116 + 15) & 0xFFFFFFFFFFFFFFF8;
  v118 = (*(v140 + 80) + v117 + 8) & ~*(v140 + 80);
  v143 = (v118 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v119 = (v118 + v141 + 31) & 0xFFFFFFFFFFFFFFF8;
  v120 = swift_allocObject();
  sub_100059A8C(&v160, v120 + 16);
  *(v120 + 56) = v131;
  sub_10012B828(&v162, v120 + 64);
  sub_10003D17C(v114, v120 + v115, &unk_1011838D0);
  *(v120 + v116) = v113;
  v121 = v152;
  *(v120 + v117) = v151;
  sub_10003D17C(v121, v120 + v118, &unk_1011845D0);
  v122 = v120 + v143;
  v123 = v138;
  *v122 = v148;
  *(v122 + 8) = v123;
  *(v122 + 16) = 2;
  v124 = (v120 + v119);
  *v124 = variable initialization expression of Library.Context.playlistVariants;
  v124[1] = 0;
  swift_unknownObjectRetain();

  v125 = v145;
  UUID.init()();
  v126 = UUID.uuidString.getter();
  v128 = v127;
  (*(v146 + 8))(v125, v147);
  v182._object = v149;
  v182._countAndFlagsBits = v150;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v182, v126, v128, sub_100217D28, v120, &v173);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v166);
  sub_10000959C(v169);

  v53 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v166 = v173;
  sub_100015BB0(&v166);
  v162 = v174;
  sub_100015BB0(&v162);

  sub_1000095E8(v153, &unk_1011838D0);
  sub_1000095E8(&v170, &unk_1011845E0);
  sub_1000095E8(v155, &unk_1011845D0);
  sub_1000095E8(v154, &unk_10118AB20);
  return v53;
}

uint64_t sub_10052DD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
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
  sub_1001F4CB8(0, 0, v10, &unk_100ED1788, v14);
}

uint64_t sub_10052DF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for MusicPropertySource();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v9;
  v5[12] = v8;

  return _swift_task_switch(sub_10052E0E8, v9, v8);
}

uint64_t sub_10052E0E8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = type metadata accessor for Song();
  (*(*(v8 - 8) + 16))(v1, v7, v8);
  (*(v2 + 104))(v1, enum case for Track.song(_:), v3);
  (*(v6 + 104))(v4, enum case for MusicPropertySource.library(_:), v5);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_1005136A8;
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[2];

  return sub_100138C84(v12, v10, v11, 0);
}

id sub_10052E2E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = sub_10023D4E4(v7, 0, 1);

  (*(v5 + 8))(v7, v4);

  return v9;
}

uint64_t sub_10052E440()
{
  v0 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10010FC20(&qword_10118D1C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v10 = sub_10010FC20(&qword_10118D1C8);
  if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
  {
    sub_1000095E8(v2, &qword_10118D1B8);
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &qword_10118D1C8);
    (*(v4 + 32))(v9, v6, v3);
    if (MusicLibrarySectionedResponse.isEmpty.getter())
    {
      *(&v14 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v15 = &protocol witness table for UIContentUnavailableConfiguration;
      v11 = sub_10001C8B8(&v13);
      sub_1007DB404(v11);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v4 + 8))(v9, v3);
    }

    (*(v4 + 8))(v9, v3);
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

id sub_10052E7D0()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v6 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_100533648, v4);

    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void *sub_10052E8B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(*(Strong + OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController) + 48);
    swift_beginAccess();
    v4 = *(v3 + 48);
    v11[1] = *(v3 + 32);
    v11[2] = v4;
    v11[3] = *(v3 + 64);
    v12 = *(v3 + 80);
    v11[0] = *(v3 + 16);
    v5 = swift_allocObject();
    swift_weakInit();

    sub_10021817C(v11, v9);
    v6.super.super.isa = sub_100211B68(sub_100534E88, v5).super.super.isa;

    sub_1003BECBC(v11);

    isa = v6.super.super.isa;
    v9[0] = _swiftEmptyArrayStorage;
    if (v6.super.super.isa)
    {
      v7 = v6.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v9[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v9[0];
    }

    sub_1000095E8(&isa, &qword_10118CE10);
  }

  return v1;
}

objc_class *sub_10052EA5C()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem);
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
    *(v10 + 16) = sub_10053362C;
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

uint64_t sub_10052EC60@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v2);
  v4 = &v30[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30[-1] - v6;
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v12 - 8);
  v14 = &v30[-1] - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v29 = a1;
    v17 = type metadata accessor for Song();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = *(*&v16[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController] + 48);
    swift_beginAccess();
    v19 = *(v18 + 48);
    v33[1] = *(v18 + 32);
    v33[2] = v19;
    v33[3] = *(v18 + 64);
    v34 = *(v18 + 80);
    v33[0] = *(v18 + 16);
    sub_10021817C(v33, v31);
    sub_1007B8774(v14, v7);
    sub_1003BECBC(v33);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000095E8(v7, &unk_10118CDB0);
      v20 = 1;
      v21 = v29;
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      (*(v9 + 16))(v4, v11, v8);
      swift_storeEnumTagMultiPayload();
      v32 = 0;
      memset(v31, 0, sizeof(v31));
      v30[0] = v16;
      v24 = v16;
      v25 = String.init<A>(reflecting:)();
      v30[3] = &type metadata for Player.CommandIssuerIdentity;
      v30[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v30[0] = v25;
      v30[1] = v26;
      v27 = v24;
      v21 = v29;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v4, v31, 3, 0, 0, 1, 0, 1, v29, v16, v30);
      (*(v9 + 8))(v11, v8);
      v20 = 0;
    }

    v28 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v28 - 8) + 56))(v21, v20, 1, v28);

    return sub_1000095E8(v14, &unk_101183960);
  }

  else
  {
    v22 = type metadata accessor for PlaybackIntentDescriptor(0);
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }
}

objc_class *sub_10052F0EC()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___shuffleBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___shuffleBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___shuffleBarButtonItem);
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
    *(v10 + 16) = sub_100534EE0;
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

id sub_10052F2F0()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_10052EA5C();
    *(v4 + 40) = sub_10052F0EC();
    sub_100009F78(0, &qword_101181580);
    v6 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem);

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

void *sub_10052F430()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups;
  if (*(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups);
  }

  else
  {
    v3 = v0;
    v4 = sub_10052F2F0();
    v2 = UIBarButtonItemGroup.split()();

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_10052F4A8()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextAndFilterBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_1003A67C4();
    *(v4 + 40) = sub_10052E7D0();
    sub_100009F78(0, &qword_101181580);
    v6 = static UIBarButtonItem.contextBarButtonItem(representativeOf:)(v4);
    v7 = objc_allocWithZone(UIBarButtonItemGroup);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithBarButtonItems:isa representativeItem:v6];

    v10 = *(v5 + v1);
    *(v5 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_10052F5D8()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  v8 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v8 - 8);
  v10 = &v17[-v9];
  *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_hasScrolledToProminentItem) = 0;
  v11 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  swift_beginAccess();
  sub_1000089F8(v0 + v11, v10, &unk_101183960);
  type metadata accessor for Song();
  sub_100532DC8(&qword_101193D80, &type metadata accessor for Song);
  v12 = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v10, &unk_101183960);
  if ((v12 & 1) != 0 && (v13 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentItemIndexPath, swift_beginAccess(), sub_1000089F8(v0 + v13, v7, &unk_10118BCE0), (*(v2 + 48))(v7, 1, v1) != 1))
  {
    (*(v2 + 32))(v4, v7, v1);
    v14 = sub_1005236A0();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v16 = [v14 cellForItemAtIndexPath:isa];

    (*(v2 + 8))(v4, v1);
    sub_10050420C();
  }

  else
  {
    sub_100525704();
  }
}

uint64_t sub_10052F8CC(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentItemIndexPath;
  swift_beginAccess();
  sub_1000089F8(v1 + v13, v12, &unk_10118BCE0);
  swift_beginAccess();
  sub_1002190E0(a1, v1 + v13, &unk_10118BCE0);
  swift_endAccess();
  sub_1000089F8(v12, v9, &unk_10118BCE0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1000095E8(a1, &unk_10118BCE0);
    sub_1000095E8(v12, &unk_10118BCE0);
    v12 = v9;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    v14 = sub_1005236A0();
    sub_10010FC20(&qword_10118AC80);
    v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100EBC6B0;
    (*(v4 + 16))(v16 + v15, v6, v3);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 reconfigureItemsAtIndexPaths:isa];

    sub_1000095E8(a1, &unk_10118BCE0);
    (*(v4 + 8))(v6, v3);
  }

  return sub_1000095E8(v12, &unk_10118BCE0);
}

uint64_t sub_10052FBDC(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v3 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v20[-v7];
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Song();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, a1, v9, v15);
  if ((*(v10 + 88))(v12, v9) != enum case for Track.song(_:))
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v10 + 96))(v12, v9);
  (*(v14 + 32))(v17, v12, v13);
  (*(v14 + 16))(v8, v17, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  v18 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  swift_beginAccess();
  sub_1000089F8(v1 + v18, v5, &unk_101183960);
  swift_beginAccess();
  sub_1002190E0(v8, v1 + v18, &unk_101183960);
  swift_endAccess();
  sub_10052F5D8();
  sub_1000095E8(v5, &unk_101183960);
  sub_1000095E8(v8, &unk_101183960);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_10052FF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&unk_101181520);
  v6[5] = swift_task_alloc();
  v7 = *(sub_10010FC20(&unk_10118BCE0) - 8);
  v6[6] = v7;
  v6[7] = *(v7 + 64);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100530034, 0, 0);
}

uint64_t sub_100530034()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  sub_100505BE0(v0[3], v2);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1000089F8(v2, v1, &unk_10118BCE0);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v5;
  sub_10003D17C(v1, v9 + v8, &unk_10118BCE0);
  sub_1001F4CB8(0, 0, v4, &unk_100ED1768, v9);

  sub_1000095E8(v2, &unk_10118BCE0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005301E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_10010FC20(&unk_10118BCE0);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005302B0, v7, v6);
}

uint64_t sub_1005302B0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[10];
    sub_1000089F8(v0[9], v3, &unk_10118BCE0);
    sub_10052F8CC(v3);
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_10050420C();
  }

  v6 = v0[1];

  return v6();
}

uint64_t type metadata accessor for LibrarySongsViewController()
{
  result = qword_101193D48;
  if (!qword_101193D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100530618()
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_101193D58, &unk_101193D60);
    if (v1 <= 0x3F)
    {
      sub_100039774(319, &qword_1011845B0, type metadata accessor for Actions.MetricsReportingContext);
      if (v2 <= 0x3F)
      {
        sub_100039774(319, &unk_101193D70, &type metadata accessor for Song);
        if (v3 <= 0x3F)
        {
          sub_100039774(319, &unk_101192480, &type metadata accessor for IndexPath);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_10053085C()
{
  v1 = v0;
  sub_10010FC20(&unk_1011845C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBDC20;
  v3 = sub_10031EA10();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v30[0] = v4;
  *(&v30[0] + 1) = v6;
  v7._countAndFlagsBits = 0x74726F532ELL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  v9 = *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController);
  v10 = *(v9 + 48);
  swift_beginAccess();
  v11 = *(v10 + 48);
  v30[1] = *(v10 + 32);
  v30[2] = v11;
  v30[3] = *(v10 + 64);
  v31 = *(v10 + 80);
  v30[0] = *(v10 + 16);
  v12 = swift_allocObject();
  swift_weakInit();

  sub_10021817C(v30, v28);
  v13.super.super.isa = sub_100211B68(sub_100530EAC, v12).super.super.isa;

  sub_1003BECBC(v30);

  if (v13.super.super.isa)
  {
    v14 = [(objc_class *)v13.super.super.isa children];

    sub_100009F78(0, &qword_10118CDE0);
    v13.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v8 = 0;
  }

  *(v2 + 32) = v8;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = v13;
  v15 = sub_10031EA10();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *&v28[0] = v16;
  *(&v28[0] + 1) = v18;
  v19._countAndFlagsBits = 0x7265746C69462ELL;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20 = String._bridgeToObjectiveC()();

  v21 = *(v9 + 48);
  swift_beginAccess();
  v22 = *(v21 + 48);
  v28[1] = *(v21 + 32);
  v28[2] = v22;
  v28[3] = *(v21 + 64);
  v29 = *(v21 + 80);
  v28[0] = *(v21 + 16);
  v23 = swift_allocObject();
  swift_weakInit();

  sub_10021817C(v28, v27);
  v24.super.super.isa = sub_100398A98(sub_100530EB8, v23).super.super.isa;

  sub_1003BECBC(v28);

  if (v24.super.super.isa)
  {
    v25 = [(objc_class *)v24.super.super.isa children];

    sub_100009F78(0, &qword_10118CDE0);
    v24.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v20 = 0;
  }

  *(v2 + 64) = v20;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = v24;
  return v2;
}

uint64_t sub_100530B9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&qword_10118D1C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Song() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10052FF1C(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_100530D30(uint64_t a1)
{
  v4 = *(sub_10010FC20(&unk_10118BCE0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1005301E0(a1, v6, v7, v8, v1 + v5);
}

double sub_100530E40()
{
  v0 = [objc_opt_self() currentTraitCollection];
  [v0 displayScale];

  return 48.0;
}

uint64_t sub_100530EC0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v3 = sub_10049CB78();

  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 32);
  v19[0] = *(v4 + 16);
  v19[1] = v5;
  v6 = *(v4 + 48);
  v7 = *(v4 + 64);
  v20 = *(v4 + 80);
  v19[3] = v7;
  v19[2] = v6;
  v13 = *&v19[0];
  v14 = v3 & 1;
  v8 = *(v4 + 25);
  v9 = *(v4 + 41);
  v10 = *(v4 + 57);
  v18 = *(v4 + 73);
  v17 = v10;
  v16 = v9;
  v15 = v8;
  sub_10021817C(v19, v12);
  return sub_100379CC8(&v13);
}

uint64_t sub_100530FD4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v3 = *&v33[0];
  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 32);
  v34 = *(v4 + 48);
  v33[0] = *(v4 + 16);
  v33[1] = v5;
  v6 = *(v4 + 64);
  v36 = *(v4 + 80);
  v35 = v6;
  v7 = BYTE9(v34);
  v8 = BYTE8(v34);
  v21 = *(v4 + 24);
  v22 = *(v4 + 40);
  v9 = BYTE9(v34);
  *&v20[15] = *(v4 + 73);
  *v20 = *(v4 + 58);
  sub_10021817C(v33, &v27);

  v27 = v3;
  v28 = v21;
  v29 = v22;
  v30 = v8;
  v31 = v9;
  *v32 = *v20;
  if (v7)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *&v32[15] = *&v20[15];
  v11 = sub_100376548(v10 | v8);
  if ((v11 & 0xFF00) == 0x200)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if ((v11 & 0xFF00) == 0x200)
  {
    v13 = 1;
  }

  else
  {
    v13 = (v11 >> 8) & 1;
  }

  if (sub_1006B8B0C(v12, v8) & 1) == 0 || ((v7 ^ v13))
  {
    v14 = objc_opt_self();
    v15 = [v14 standardUserDefaults];
    *&v25 = &_s11ContentSortVN;
    *(&v25 + 1) = sub_100110448();
    v26[0] = sub_10011049C();
    LOBYTE(v23) = v12;
    BYTE1(v23) = v13;
    NSUserDefaults.encodeValue(_:forKey:)(&v23);

    sub_10000959C(&v23);
    v16 = [v14 standardUserDefaults];
    if (v13)
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_10045E2D4(v17 & 0xFF00u | v12);
    NSUserDefaults.setSortType(_:for:keyDomain:)(v18, 0xC0u, 0, 0);
  }

  v23 = v3;
  v24 = v21;
  v25 = v22;
  LOBYTE(v26[0]) = v12;
  BYTE1(v26[0]) = v13;
  *(v26 + 2) = *v20;
  *(&v26[2] + 1) = *&v20[15];
  return sub_100379CC8(&v23);
}

uint64_t sub_100531228(void *a1)
{
  v2 = sub_1005236A0();
  v3 = sub_100523A98();
  [v2 setCollectionViewLayout:v3];

  sub_1005233CC();
  v4 = sub_1005235FC();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  [*(v4 + 32) setHidesNavigationBarDuringPresentation:v6 == 1];
}

uint64_t sub_1005312E4()
{
  v0 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&qword_10118D1C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
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
    v9 = MusicLibrarySectionedResponse.sections.getter();
    (*(v4 + 8))(v6, v3);
    v8 = *(v9 + 16);
  }

  return v8;
}

uint64_t sub_1005314E8(unint64_t a1)
{
  v20 = a1;
  v1 = sub_10010FC20(&qword_10118D1A0);
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - v2;
  v4 = sub_10010FC20(&qword_10118D1B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10010FC20(&qword_10118D1C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v15 = sub_10010FC20(&qword_10118D1C8);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1000095E8(v10, &qword_10118D1B8);
    return 0;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &qword_10118D1C8);
  v17 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v12 + 8))(v14, v11);
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v17 + 16) <= v20)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_10118C2A0, &qword_10118D1A0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v18 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 8))(v3, v1);
  return v18;
}

id sub_100531904(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v3 - 8);
  v5 = &v48 - v4;
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v18 = __chkstk_darwin(v14);
  if (!*(a1 + 16))
  {
    return 0;
  }

  isa = v8;
  v60 = v17;
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v11;
  v19 = *(v13 + 80);
  v20 = &v48 - v15;
  v21 = v16;
  v58 = *(v13 + 16);
  v58(v18);
  v62 = v1;
  sub_10037BC74(v20, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v13 + 8))(v20, v21);
    sub_1000095E8(v5, &unk_101183960);
    return 0;
  }

  v56 = v13;
  v53 = v21;
  v54 = v19;
  v49 = ~v19;
  v63 = v7;
  v64 = v6;
  v23 = *(v7 + 32);
  v51 = v7 + 32;
  v50 = v23;
  v23(v65, v5, v6);
  v24 = sub_1007BAB4C();
  v25 = sub_100248BF8();
  v55 = v24;
  v26 = v24;
  v27 = v25;
  v28 = Song.supportsContainerNavigation(itemState:)(v26);
  v57 = v27;
  if (v28 == *(v27 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron))
  {
    *(v57 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = v28;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v30 = v57;
    *(&v48 - 2) = v57;
    *(&v48 - 8) = v28;
    aBlock = v30;
    sub_100532DC8(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v31 = isa;
  v32 = v20;
  v52 = v20;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v33 = swift_allocObject();
  v48 = v33;
  swift_unknownObjectWeakInit();
  v34 = v64;
  v35 = v63;
  v36 = v61;
  (*(v63 + 16))(v61, v65, v64);
  v37 = v60;
  v38 = v53;
  (v58)(v60, v32, v53);
  v39 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v40 = (v31 + v54 + v39) & v49;
  v41 = swift_allocObject();
  *(v41 + 16) = v33;
  v50(v41 + v39, v36, v34);
  v42 = v56;
  (*(v56 + 32))(v41 + v40, v37, v38);
  v43 = objc_opt_self();
  v70 = sub_100218654;
  v71 = v57;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_100747E6C;
  v69 = &unk_1010B0830;
  v44 = _Block_copy(&aBlock);
  swift_retain_n();

  v70 = sub_10053295C;
  v71 = v41;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_100747EBC;
  v69 = &unk_1010B0858;
  v45 = _Block_copy(&aBlock);

  v46 = isa;
  v47 = [v43 configurationWithIdentifier:isa previewProvider:v44 actionProvider:v45];

  _Block_release(v45);
  _Block_release(v44);

  (*(v63 + 8))(v65, v64);
  (*(v42 + 8))(v52, v38);

  return v47;
}

id sub_100531FD0(void *a1, void *a2)
{
  v39 = a2;
  v4 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v34 - v11;
  v12 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin(v15).n128_u64[0];
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = [a1 identifier];
  sub_10010FC20(&unk_1011846A0);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v14, 0, 1, v15);
    (*(v16 + 32))(v19, v14, v15);
    v36 = v2;
    sub_10037BC74(v19, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      (*(v16 + 8))(v19, v15);
      sub_1000095E8(v6, &unk_101183960);
    }

    else
    {
      v22 = v38;
      v35 = *(v8 + 32);
      v35(v38, v6, v7);
      v23 = sub_1007BAB4C();
      v24 = Song.supportsContainerNavigation(itemState:)(v23);

      if (v24)
      {
        v25 = sub_10003169C();
        if (v25)
        {
          v26 = v25;
          v27 = v8;
          v34 = v8;
          v28 = *(v8 + 16);
          v29 = v37;
          v28(v37, v38, v7);
          v30 = (*(v27 + 80) + 24) & ~*(v27 + 80);
          v31 = swift_allocObject();
          *(v31 + 16) = v26;
          v35((v31 + v30), v29, v7);
          aBlock[4] = sub_100532800;
          aBlock[5] = v31;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10002BC98;
          aBlock[3] = &unk_1010B07B8;
          v32 = _Block_copy(aBlock);

          [v39 addAnimations:v32];
          _Block_release(v32);

          (*(v34 + 8))(v38, v7);
          return (*(v16 + 8))(v19, v15);
        }

        (*(v8 + 8))(v38, v7);
      }

      else
      {
        (*(v8 + 8))(v22, v7);
      }

      (*(v16 + 8))(v19, v15);
    }
  }

  else
  {
    v21(v14, 1, 1, v15);
    sub_1000095E8(v14, &unk_10118BCE0);
  }

  return [v39 setPreferredCommitStyle:0];
}

void sub_1005324F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___globalHeaderRegistration;
  v3 = sub_10010FC20(&unk_10118A650);
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  v4(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___headerRegistration, 1, 1, v3);
  v5 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___listCellRegistration;
  v6 = sub_10010FC20(&unk_101193D60);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_waveformPlayer;
  type metadata accessor for WaveformPlayer();
  swift_allocObject();
  *(v1 + v7) = sub_10026FF78();
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView) = 0;
  v8 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prefetchingController;
  v9 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v8) = sub_10003AAD8(0xD00000000000001CLL, 0x8000000100E4EAC0);
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController) = 0;
  v10 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___actionMetricsReportingContext;
  v11 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___shuffleBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextAndFilterBarButtonGroup) = 0;
  v12 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  v13 = type metadata accessor for Song();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_hasScrolledToProminentItem) = 0;
  v14 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentItemIndexPath;
  v15 = type metadata accessor for IndexPath();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentIndexPathTask) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100532800()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10052DD9C(v2, v3);
}

uint64_t sub_100532864(uint64_t a1)
{
  v4 = *(type metadata accessor for Song() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10052DF98(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_10053295C(uint64_t a1)
{
  v3 = *(type metadata accessor for Song() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10052C8C8(a1, v7, (v1 + v4), v8);
}

uint64_t sub_100532A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100532ABC(uint64_t a1)
{
  v3 = *(type metadata accessor for Song() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1005288B8(a1, v4, v5, v6);
}

uint64_t sub_100532B30(uint64_t a1)
{
  type metadata accessor for Song();

  return sub_1002749A8(a1);
}

uint64_t sub_100532BA0()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100521C9C(v2);
}

uint64_t sub_100532C30()
{
  v1 = *(sub_10010FC20(&qword_101193E08) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_100524A18(v2, v3, v4, v5);
}

uint64_t sub_100532CA4()
{
  v1 = *(sub_10010FC20(&qword_101193E08) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100525334(v2, v3);
}

unint64_t sub_100532D14()
{
  result = qword_101193E10;
  if (!qword_101193E10)
  {
    sub_1001109D0(&qword_10118D1B0);
    sub_100532DC8(&unk_10118D020, &type metadata accessor for Song);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193E10);
  }

  return result;
}

uint64_t sub_100532DC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100532E68(uint64_t a1)
{
  v4 = *(type metadata accessor for Song() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_10051D750(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100532F98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100533040(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Song() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v8 + 103) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10051EBE4(a1, v9, v10, v1 + v6, v11, v1 + v8, v12);
}

uint64_t sub_1005331D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Song() - 8);
  v6 = (*(v5 + 80) + 128) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_10051F4D4(a1, v10, v11, v1 + 32, v1 + v6, v9, v12, v13);
}

uint64_t sub_10053343C(uint64_t a1)
{
  v4 = *(type metadata accessor for Song() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10052212C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100533534(uint64_t a1)
{
  v4 = *(type metadata accessor for Song() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100522820(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100533754(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicVideo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_10051CE6C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1005338CC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v16 = *(a5(0) - 8);
  v17 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10051DACC(a1, a2, a3, a4, v8 + v17, *(v8 + v18), v8 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8), a6, a7, a8);
}

uint64_t sub_1005339B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MusicVideo() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v8 + 103) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10051E2A0(a1, v9, v10, v1 + v6, v11, v1 + v8, v12);
}

uint64_t sub_100533B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v16 = *(a5(0) - 8);
  v17 = (*(v16 + 80) + 112) & ~*(v16 + 80);
  return sub_10051EFC0(a1, a2, a3, a4, v8 + 16, v8 + v17, *(v8 + ((*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8)), a6, a7, a8);
}

uint64_t sub_100533C2C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MusicVideo() - 8);
  v6 = (*(v5 + 80) + 128) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_10051F374(a1, v10, v11, v1 + 32, v1 + v6, v9, v12, v13);
}

uint64_t sub_100533E04(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicVideo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100521FF8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100533EFC(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicVideo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1005226EC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10053403C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_100534124(uint64_t a1)
{
  v4 = *(type metadata accessor for Track() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_10051C9A0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100534254(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);

  v6 = v1 + v5;
  swift_unknownObjectWeakDestroy();
  v7 = *(v1 + v5 + 48);
  if (v7 != 255)
  {
    sub_10012B804(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  if (*(v6 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100534390(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  v6 = v1 + v5;
  swift_unknownObjectWeakDestroy();
  v7 = *(v1 + v5 + 48);
  if (v7 != 255)
  {
    sub_10012B804(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  if (*(v6 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1005344D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Track() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v8 + 103) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10051DD38(a1, v9, v10, v1 + v6, v11, v1 + v8, v12);
}

uint64_t sub_100534620(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  swift_unknownObjectWeakDestroy();
  v5 = *(v1 + 64);
  if (v5 != 255)
  {
    sub_10012B804(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v5);
  }

  if (*(v1 + 80))
  {
  }

  if (*(v1 + 96))
  {
  }

  (*(v3 + 8))(v1 + ((v4 + 112) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t sub_100534784(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v5 = *(v1 + 80);
  if (v5 != 255)
  {
    sub_10012B804(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v5);
  }

  if (*(v1 + 96))
  {
  }

  if (*(v1 + 112))
  {
  }

  (*(v3 + 8))(v1 + ((v4 + 128) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t sub_1005348BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Track() - 8);
  v6 = (*(v5 + 80) + 128) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_10051F214(a1, v10, v11, v1 + 32, v1 + v6, v9, v12, v13);
}

uint64_t sub_100534A4C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_100534B60(uint64_t a1)
{
  v4 = *(type metadata accessor for Track() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100521D68(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100534C58(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_100534D2C(uint64_t a1)
{
  v4 = *(type metadata accessor for Track() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10052245C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100534EE4(void (*a1)(uint64_t, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_100027010();

  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v14 = swift_allocObject();
      v14[2] = sub_100536BB4;
      v14[3] = v11;
      v14[4] = v3;
      v14[5] = v6;

      BagProvider.getBag(completion:)(sub_100536C7C, v14);
    }

    else
    {
      a1(result, v3[4]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100535104(void (*a1)(uint64_t, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_100027010();

  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v14 = swift_allocObject();
      v14[2] = sub_1005368A8;
      v14[3] = v11;
      v14[4] = v3;
      v14[5] = v6;

      BagProvider.getBag(completion:)(sub_100536C7C, v14);
    }

    else
    {
      a1(result, v3[2]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100535350(uint64_t (*a1)(uint64_t, double, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100027010();
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = a2;
      v13[4] = v3;
      v13[5] = v6;

      BagProvider.getBag(completion:)(sub_100535CB8, v13);
    }

    else
    {
      return a1(result, v3[2], v3[4]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100535558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100027010();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v21;
  aBlock[4] = sub_100535CC4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010B12A0;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002473C();
  sub_10010FC20(&qword_101182970);
  sub_10002489C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v22);
}

uint64_t sub_10053580C(void *a1, uint64_t (*a2)(__n128, __n128), uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 dictionaryForBagKey:v7];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16))
  {
    goto LABEL_12;
  }

  v10 = sub_1000160B4(v23);
  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10000DD18(*(v9 + 56) + 32 * v10, v24);
  sub_10001621C(v23);

  sub_10010FC20(&unk_1011BE660);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  AnyHashable.init<A>(_:)();
  if (!MEMORY[0x6973736572706D79])
  {
    goto LABEL_12;
  }

  v12 = sub_1000160B4(v23);
  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10000DD18(MEMORY[0x6973736572706DA1] + 32 * v12, v24);
  sub_10001621C(v23);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  AnyHashable.init<A>(_:)();
  if (!MEMORY[0x6973736572706D79] || (v14 = sub_1000160B4(v23), (v15 & 1) == 0))
  {
LABEL_12:

    sub_10001621C(v23);
    goto LABEL_13;
  }

  sub_10000DD18(MEMORY[0x6973736572706DA1] + 32 * v14, v24);
  sub_10001621C(v23);

  if (swift_dynamicCast())
  {
    v17.n128_u64[0] = 0xD000000000000012;
    *(a4 + 16) = 0xD000000000000011;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0xD000000000000012;
    *(a4 + 40) = 0;
    v16.n128_u64[0] = 0xD000000000000011;
    return a2(v16, v17);
  }

LABEL_13:
  if (qword_10117F790 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000060E4(v18, qword_101218DD0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Error serializing impression keys from bag.  Returning default values.", v21, 2u);
  }

  v16.n128_u64[0] = 0x408F400000000000;
  v17.n128_u64[0] = 0.5;
  return a2(v16, v17);
}

void sub_100535BC8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_100535C20();

  byte_101218F00 = v1 & 1;
}

uint64_t sub_100535C20()
{
  v1[0] = 0xD00000000000001ALL;
  v1[1] = 0x8000000100E4EBB0;
  sub_100009838();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_100011DF0(&v2);
    return 0;
  }

  return result;
}

uint64_t sub_100535CD4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *(a4 + 16);
  strcpy(&v23, "impressionId");
  BYTE13(v23) = 0;
  HIWORD(v23) = -5120;

  AnyHashable.init<A>(_:)();
  v9 = *(a4 + 24);
  v24 = &type metadata for Int;
  *&v23 = v9;
  sub_100016270(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10006800C(v22, v25, isUniquelyReferenced_nonNull_native);
  sub_10001621C(v25);
  v11 = v8;
  v26 = v8;
  if ((*(a4 + 40) & 1) == 0)
  {
    v12 = *(a4 + 32);
    *&v23 = 0xD000000000000012;
    *(&v23 + 1) = 0x8000000100E484A0;
    AnyHashable.init<A>(_:)();
    v24 = &type metadata for Int;
    *&v23 = v12;
    sub_100016270(&v23, v22);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v22, v25, v13);
    sub_10001621C(v25);
    v26 = v11;
  }

  v14 = *(a4 + 41);
  if (v14 != 2)
  {
    strcpy(&v23, "motionActive");
    BYTE13(v23) = 0;
    HIWORD(v23) = -5120;
    AnyHashable.init<A>(_:)();
    v24 = &type metadata for Bool;
    LOBYTE(v23) = v14 & 1;
    sub_100016270(&v23, v22);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v22, v25, v15);
    sub_10001621C(v25);
    *&v23 = 0x76416E6F69746F6DLL;
    *(&v23 + 1) = 0xEF656C62616C6961;
    AnyHashable.init<A>(_:)();
    v24 = &type metadata for Bool;
    LOBYTE(v23) = v14 & 1;
    sub_100016270(&v23, v22);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v22, v25, v16);
    sub_10001621C(v25);
    v26 = v11;
  }

  if (a5)
  {
    *&v23 = 0x6973736572706D69;
    *(&v23 + 1) = 0xEF73656D69546E6FLL;
    AnyHashable.init<A>(_:)();
    sub_10010FC20(&qword_10118CE90);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100EBC6B0;
    Date.timeIntervalSince1970.getter();
    *(v17 + 32) = Double.toMillisecondsInServerTime.getter(v18);
    v24 = sub_10010FC20(&qword_10118CE98);
    *&v23 = v17;
    sub_100016270(&v23, v22);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v22, v25, v19);
    sub_10001621C(v25);
    return v11;
  }

  else
  {
    swift_beginAccess();

    sub_1005360B4(v21, a1);

    return v26;
  }
}

uint64_t sub_1005360B4(uint64_t a1, double a2)
{
  type metadata accessor for CollectionViewImpressionTracker.History.Event();
  if (Array.endIndex.getter())
  {
    v38 = 0.0;
    v4 = 0;
    v35 = a2;
    v5 = a1 + 40;
    v6 = 0.0;
    v7 = 1;
    v8 = 1;
    v36 = _swiftEmptyArrayStorage;
    v37 = _swiftEmptyArrayStorage;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if ((IsNativeType & 1) == 0)
      {
        _ArrayBuffer._getElementSlowPath(_:)();
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_71;
      }

      v14 = *(v5 - 8);
      v15 = *v5;
      if (!static LaunchURL.Resolver.PerformOption.__derived_enum_equals(_:_:)(v15, 0))
      {
        v9 = static LaunchURL.Resolver.PerformOption.__derived_enum_equals(_:_:)(v15, 1);
        v10 = v14;
        v11 = v38;
        if (v8)
        {
          v10 = v38;
        }

        if (v9)
        {
          v11 = v10;
        }

        v38 = v11;
        if (v9)
        {
          v7 = v8 & v7;
        }

        else
        {
          v7 = v7;
        }

        goto LABEL_10;
      }

      if (v8)
      {
        v8 = 0;
        v6 = v14;
      }

      else if (v7)
      {
        v8 = 0;
        v7 = 1;
      }

      else
      {
        if (v14 - v38 >= 0.0166666667)
        {
          if (v38 - v6 > 0.0166666667)
          {
            IsNativeType = sub_1005369B8(v6, v38);

            v8 = v37;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_100499EEC(0, v37[2] + 1, 1, v37);
            }

            v7 = *(v8 + 16);
            v16 = *(v8 + 24);
            if (v7 >= v16 >> 1)
            {
              v8 = sub_100499EEC((v16 > 1), v7 + 1, 1, v8);
            }

            *(v8 + 16) = v7 + 1;
            *(v8 + 8 * v7 + 32) = IsNativeType;
            if (!*(IsNativeType + 16))
            {
              goto LABEL_72;
            }

            v17 = sub_100019C10(100, 0xE100000000000000);
            if ((v18 & 1) == 0)
            {
              goto LABEL_73;
            }

            if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_74;
            }

            if (a2 <= -1.0)
            {
              goto LABEL_75;
            }

            if (a2 >= 1.84467441e19)
            {
              goto LABEL_76;
            }

            v37 = v8;
            if (*(*(IsNativeType + 56) + 8 * v17) > v35)
            {
              if (!*(IsNativeType + 16))
              {
                goto LABEL_83;
              }

              v19 = sub_100019C10(115, 0xE100000000000000);
              if ((v20 & 1) == 0)
              {
                goto LABEL_84;
              }

              v34 = *(*(IsNativeType + 56) + 8 * v19);

              v21 = v36;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_100499DDC(0, *(v36 + 2) + 1, 1, v36);
              }

              v23 = *(v21 + 2);
              v22 = *(v21 + 3);
              if (v23 >= v22 >> 1)
              {
                v36 = sub_100499DDC((v22 > 1), v23 + 1, 1, v21);
              }

              else
              {
                v36 = v21;
              }

              v38 = 0.0;
              v8 = 0;
              *(v36 + 2) = v23 + 1;
              *&v36[8 * v23 + 32] = v34;
              goto LABEL_40;
            }
          }

          v38 = 0.0;
          v8 = 0;
LABEL_40:
          v7 = 1;
          v6 = v14;
          goto LABEL_10;
        }

        v38 = 0.0;
        v8 = 0;
        v7 = 1;
      }

LABEL_10:
      ++v4;
      v5 += 16;
      if (v13 == Array.endIndex.getter())
      {
        if (v8)
        {
          v7 = v36;
          v8 = v37;
          if (v37[2])
          {
            goto LABEL_47;
          }

          goto LABEL_44;
        }

        if (v7)
        {
          Date.timeIntervalSince1970.getter();
          v26 = v25;
        }

        else
        {
          v26 = v38;
        }

        v8 = v37;
        IsNativeType = sub_1005369B8(v6, v26);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_53:
          v5 = *(v8 + 16);
          v27 = *(v8 + 24);
          if (v5 >= v27 >> 1)
          {
            v8 = sub_100499EEC((v27 > 1), v5 + 1, 1, v8);
          }

          *(v8 + 16) = v5 + 1;
          *(v8 + 8 * v5 + 32) = IsNativeType;
          if (*(IsNativeType + 16))
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
                    if (*(*(IsNativeType + 56) + 8 * v28) <= v35)
                    {

                      v7 = v36;
                      if (*(v8 + 16))
                      {
                        goto LABEL_47;
                      }

                      goto LABEL_44;
                    }

                    v7 = v36;
                    if (*(IsNativeType + 16))
                    {
                      v30 = sub_100019C10(115, 0xE100000000000000);
                      if (v31)
                      {
                        v5 = *(*(IsNativeType + 56) + 8 * v30);

                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          goto LABEL_64;
                        }

LABEL_87:
                        v7 = sub_100499DDC(0, *(v7 + 16) + 1, 1, v7);
LABEL_64:
                        v33 = *(v7 + 16);
                        v32 = *(v7 + 24);
                        if (v33 >= v32 >> 1)
                        {
                          v7 = sub_100499DDC((v32 > 1), v33 + 1, 1, v7);
                        }

                        *(v7 + 16) = v33 + 1;
                        *(v7 + 8 * v33 + 32) = v5;
                        if (*(v8 + 16))
                        {
                          goto LABEL_47;
                        }

LABEL_44:

                        if (!*(v7 + 16))
                        {
                        }

LABEL_48:
                        v39 = 0x6973736572706D69;
                        v40 = 0xEF73656D69546E6FLL;
                        AnyHashable.init<A>(_:)();
                        v41 = sub_10010FC20(&qword_10118CE98);
                        v39 = v7;
                        return sub_1004078C4(&v39, v42);
                      }

LABEL_86:
                      __break(1u);
                      goto LABEL_87;
                    }

LABEL_85:
                    __break(1u);
                    goto LABEL_86;
                  }

LABEL_82:
                  __break(1u);
LABEL_83:
                  __break(1u);
LABEL_84:
                  __break(1u);
                  goto LABEL_85;
                }

LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

LABEL_80:
              __break(1u);
              goto LABEL_81;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_80;
        }

LABEL_77:
        v8 = sub_100499EEC(0, *(v8 + 16) + 1, 1, v8);
        goto LABEL_53;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_44;
  }

LABEL_47:
  v40 = 0xEA00000000006F66;
  AnyHashable.init<A>(_:)();
  v41 = sub_10010FC20(&qword_10118CEA0);
  v39 = v8;
  sub_1004078C4(&v39, v42);
  if (*(v7 + 16))
  {
    goto LABEL_48;
  }
}

uint64_t sub_10053675C()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  qword_101193E88 = result;
  return result;
}

void sub_10053679C()
{
  if (__OFADD__(qword_101193E90, 1))
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (qword_101193E90 != 0x7FFFFFFFFFFFFFFELL)
  {
    ++qword_101193E90;
    return;
  }

  qword_101193E90 = 0;
  if (qword_10117F790 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, qword_101218DD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Coordinator ID reached maximum value.  Reset to zero to avoid overflow.", v3, 2u);
  }
}

uint64_t sub_1005368D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v14 = a1;
  v11[16] = a3;
  v12 = a2;
  v13 = a6;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = sub_100536C20;
  v10[5] = v11;
  type metadata accessor for CollectionViewImpressionTracker.History();
  v6 = type metadata accessor for Dictionary();
  WitnessTable = swift_getWitnessTable();
  return sub_100006A08(sub_100536C30, v10, v6, &_s7ElementVN, &type metadata for Never, WitnessTable, &protocol witness table for Never, v8);
}

uint64_t sub_1005369B8(double a1, double a2)
{
  v17 = Dictionary.init(minimumCapacity:)();
  sub_10010FC20(&qword_101191F20);
  Dictionary.reserveCapacity(_:)(3);
  v4 = Double.toMillisecondsInServerTime.getter(a1);
  v5 = Double.toMillisecondsInServerTime.getter(a2);
  v6 = v5 - v4;
  if (v5 >= v4)
  {
    v13 = v17;
  }

  else
  {
    v7 = v5;
    if (qword_10117F790 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101218DD0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = a2;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v9, v10, "Overflow detected when subtracting %f %f. Reporting truncated duration value", v11, 0x16u);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1006C6BE0(v7, 101, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
    v13 = v17;
  }

  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C6BE0(v4, 115, 0xE100000000000000, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C6BE0(v6, 100, 0xE100000000000000, v15);
  return v13;
}

uint64_t sub_100536BE0()
{

  return swift_deallocObject();
}

uint64_t sub_100536C30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

uint64_t TintColorObservingView.tintColorDidChangeCallback.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback);
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1);
  return v2;
}

uint64_t TintColorObservingView.tintColorDidChangeCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_100020438(v6);
}

Swift::Void __swiftcall TintColorObservingView.tintColorDidChange()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TintColorObservingView();
  objc_msgSendSuper2(&v5, "tintColorDidChange");
  v1 = &v0[OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {

    v3 = [v0 tintColor];
    if (v3)
    {
      v4 = v3;
      v2();

      sub_100020438(v2);
    }

    else
    {
      __break(1u);
    }
  }
}

id TintColorObservingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback];
  v10 = type metadata accessor for TintColorObservingView();
  *v9 = 0;
  *(v9 + 1) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
}

id TintColorObservingView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback];
  v4 = type metadata accessor for TintColorObservingView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id TintColorObservingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TintColorObservingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10053718C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_10010FC20(&unk_101193FC0);
  swift_storeEnumTagMultiPayload();
  result = _s14descr101092F61V17RootPlaylistsViewVMa();
  v3 = a1 + *(result + 20);
  *v3 = sub_100462628;
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = a1 + *(result + 24);
  *v4 = sub_100670CD8;
  *(v4 + 1) = 0;
  v4[16] = 0;
  return result;
}

id sub_100537268()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005372DC()
{
  v0 = sub_10010FC20(&qword_101193FA8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  _s14descr101092F61V17RootPlaylistsViewVMa();
  sub_1005373F8();
  AssistiveAccess.init(content:)();
  sub_100537450();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1005373F8()
{
  result = qword_101193FB0;
  if (!qword_101193FB0)
  {
    _s14descr101092F61V17RootPlaylistsViewVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193FB0);
  }

  return result;
}

unint64_t sub_100537450()
{
  result = qword_101193FB8;
  if (!qword_101193FB8)
  {
    sub_1001109D0(&qword_101193FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193FB8);
  }

  return result;
}

uint64_t Actions.MetricsReportingContext.init(actionContext:page:locations:impressions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v34 = a4;
  v35 = a5;
  v32 = a1;
  v33 = a2;
  v8 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  sub_1005376AC(a3, &v29 - v9);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v11 = sub_10053771C();
  v30 = v12;
  v31 = v11;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v13 = qword_101218AD0;
  v14 = GroupActivitiesManager.hasJoined.getter();
  v15 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(a3, &unk_1011838F0);
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v17 = *(v13 + v16);
  v18 = type metadata accessor for Actions.MetricsReportingContext();
  v19 = v18[5];
  v20 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v20 - 8) + 56))(&a6[v19], 1, 1, v20);
  v21 = v18[7];
  v22 = &a6[v18[6]];
  v23 = v18[8];
  v24 = v33;
  *a6 = v32;
  *(a6 + 1) = v24;
  result = sub_1005379F8(v10, &a6[v19]);
  v26 = v30;
  *v22 = v31;
  v22[1] = v26;
  v27 = v35;
  *&a6[v21] = v34;
  *&a6[v23] = v27;
  v28 = &a6[v18[9]];
  *v28 = v14 & 1;
  *(v28 + 1) = v15;
  *(v28 + 2) = v17;
  return result;
}

uint64_t sub_1005376AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011838F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10053771C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];
  sub_100062364();
  sub_100061F5C();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v2);
  v4 = v3;

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_22:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_1007E90D4(0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;

  v8 = [v7 delegate];

  if (!v8 || (sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) == 0))
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_14;
  }

  if (!*(&v19 + 1))
  {
LABEL_14:
    sub_1000095E8(&v18, &unk_101184EA0);
    return 0;
  }

  v9 = *(*sub_10000954C(&v18, *(&v19 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&v18);
  if (!v9)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong presentingViewController];
    if (v12)
    {
      v13 = v12;

      return 0x6979616C50776F4ELL;
    }
  }

  v14 = *(*(v9 + 24) + 16);
  if (v14)
  {
    v15 = [v14 selectedTab];
    if (v15)
    {
      v16 = v15;
      sub_10003F0FC();
    }

    v17 = sub_100691570();

    return v17;
  }

  else
  {

    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_1005379F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011838F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100537A68@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for MusicRestrictions();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicPin.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for MusicPin.Item.album(_:))
  {
    goto LABEL_2;
  }

  if (v14 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    NetworkMonitor.shared.unsafeMutableAddressor();

    v17 = NetworkMonitor.isOnline.getter();

    static MusicRestrictions.current.getter();
    v18 = MusicRestrictions.allowsExplicitContent.getter();
    (*(v26 + 8))(v5, v3);
    Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)(v17 & 1, v18 & 1, v27);
    return (*(v7 + 8))(v9, v6);
  }

  v19 = v14 == enum case for MusicPin.Item.musicVideo(_:) || v14 == enum case for MusicPin.Item.playlist(_:);
  if (v19 || v14 == enum case for MusicPin.Item.song(_:))
  {
LABEL_2:
    (*(v11 + 8))(v13, v10);
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    type metadata accessor for MusicPin();
    sub_10053B09C(&qword_101192000, &type metadata accessor for MusicPin);
    v15 = *Player.state<A>(for:)(a1);
    (*(v15 + 256))();
  }

  else
  {
    v21 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    v22 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v23 = v27;
    (*(*(v22 - 8) + 104))(v27, v21, v22);
    v24 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    v25 = type metadata accessor for MusicPlayer.PlayabilityStatus();
    (*(*(v25 - 8) + 104))(v23, v24, v25);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100537EF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for GenericMusicItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_101197070);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for MusicPin();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v17 = a1;
    dispatch thunk of LegacyModelObjectConvertible.init(_:)();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v16, v12, v13);
      sub_100537A68(v16, v33);
      return (*(v14 + 8))(v16, v13);
    }

    sub_1000095E8(v12, &unk_101197070);
  }

  v18 = a1;
  GenericMusicItem.init(_:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_101189DA0);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000060E4(v19, qword_101218F08);
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not convert modelObject to MusicPin/GenericMusicItem %@", v23, 0xCu);
      sub_1000095E8(v24, &unk_101183D70);
    }

    v26 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:);
    v27 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v28 = v33;
    (*(*(v27 - 8) + 104))(v33, v26, v27);
    v29 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    v30 = type metadata accessor for MusicPlayer.PlayabilityStatus();
    return (*(*(v30 - 8) + 104))(v28, v29, v30);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_100538C48(v9, v33);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t MusicPlayer.PlayabilityStatus.isPlayable.getter()
{
  v0 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v0, v2);
  v5 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

void sub_1005384B8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = *(v6 + 16);
  v16(&v36 - v14, v2, v5, v13);
  v17 = (*(v6 + 88))(v15, v5);
  if (v17 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.networkUnavailable(_:))
  {
    static Alert.networkUnavailableAlert(model:traitCollection:)(0, a1, v40);
LABEL_13:
    v18 = v40[0];
    v19 = v40[1];
    v20 = v40[2];
    v21 = v40[3];
    v22 = v41;
    goto LABEL_14;
  }

  if (v17 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:))
  {
    static Alert.contentUnavailableAlert()(v40);
    goto LABEL_13;
  }

  if (v17 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
  {
    static Alert.ageVerificationFallbackAlert()(v40);
    goto LABEL_13;
  }

  if (v17 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:))
  {
    goto LABEL_8;
  }

  if (v17 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.cellularRestricted(_:))
  {
    static Alert.cellularRestrictedAlert(model:)(0, v40);
    goto LABEL_13;
  }

  if (v17 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.accountRequired(_:))
  {
    static Alert.accountRequiredAlert(traitCollection:)(a1, v40);
    goto LABEL_13;
  }

  if (v17 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.musicVideoRestricted(_:))
  {
LABEL_8:
    static Alert.explicitRestrictedAlert(traitCollection:)(a1, v40);
    goto LABEL_13;
  }

  if (v17 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
  {
    static Alert.subscriptionRequiredAlert(traitCollection:)(a1, v40);
    goto LABEL_13;
  }

  if (v17 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.userUploadRequired(_:))
  {
    static Alert.userUploadRequiredAlert()(v40);
    goto LABEL_13;
  }

  if (v17 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:))
  {
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000060E4(v23, qword_101218F08);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Tried to play unsupported type", v26, 2u);
    }
  }

  else
  {
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000060E4(v27, qword_101218F08);
    (v16)(v11, v2, v5);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v38 = v29;
      v31 = v30;
      v39 = swift_slowAlloc();
      *&v40[0] = v39;
      *v31 = 136315138;
      (v16)(v8, v11, v5);
      v37 = String.init<A>(describing:)();
      v33 = v32;
      v34 = *(v6 + 8);
      v34(v11, v5);
      v35 = sub_1000105AC(v37, v33, v40);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v38, "Unknown unplayable reason=%s", v31, 0xCu);
      sub_10000959C(v39);
    }

    else
    {

      v34 = *(v6 + 8);
      v34(v11, v5);
    }

    v34(v15, v5);
  }

  v22 = 0;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
LABEL_14:
  *a2 = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  *(a2 + 64) = v22;
}

id sub_100538B74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayPlayabilityStatusService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100538BCC()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218F08);
  sub_1000060E4(v0, qword_101218F08);
  sub_100005AE4();
  OS_os_log.init(musicCategory:)();
  return Logger.init(_:)();
}

uint64_t sub_100538C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v65 = a2;
  v45 = type metadata accessor for UploadedVideo();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = (&v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for UploadedAudio();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TVEpisode();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MusicMovie();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v61 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Station();
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v52 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for MusicVideo();
  v59 = *(v11 - 8);
  v60 = v11;
  __chkstk_darwin(v11);
  v58 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Album();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Playlist();
  v56 = *(v17 - 8);
  v57 = v17;
  __chkstk_darwin(v17);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Song();
  v55 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  (*(v24 + 16))(v26, v64, v23);
  v27 = (*(v24 + 88))(v26, v23);
  if (v27 == enum case for GenericMusicItem.album(_:))
  {
    (*(v24 + 96))(v26, v23);
    (*(v14 + 32))(v16, v26, v13);
    v28 = *Player.state<A>(for:)(v16);
    (*(v28 + 256))();

    return (*(v14 + 8))(v16, v13);
  }

  if (v27 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v24 + 96))(v26, v23);
    v31 = v61;
    v30 = v62;
    v32 = v63;
    (*(v62 + 32))(v61, v26, v63);
    v33 = &unk_1011A38E0;
    v34 = &type metadata accessor for MusicMovie;
LABEL_9:
    sub_10053B09C(v33, v34);
LABEL_10:
    v35 = *Player.state<A>(for:)(v31);
    (*(v35 + 256))();

    return (*(v30 + 8))(v31, v32);
  }

  if (v27 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v24 + 96))(v26, v23);
    v31 = v58;
    v30 = v59;
    v32 = v60;
    (*(v59 + 32))(v58, v26, v60);
    v33 = &unk_101193C00;
    v34 = &type metadata accessor for MusicVideo;
    goto LABEL_9;
  }

  if (v27 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v26, v23);
    v37 = v56;
    v36 = v57;
    (*(v56 + 32))(v19, v26, v57);
    v38 = *Player.state<A>(for:)(v19);
    (*(v38 + 256))();

    return (*(v37 + 8))(v19, v36);
  }

  else if (v27 == enum case for GenericMusicItem.song(_:))
  {
    (*(v24 + 96))(v26, v23);
    v39 = v55;
    (*(v55 + 32))(v22, v26, v20);
    v40 = *Player.state<A>(for:)(v22);
    (*(v40 + 256))();

    return (*(v39 + 8))(v22, v20);
  }

  else
  {
    if (v27 == enum case for GenericMusicItem.station(_:))
    {
      (*(v24 + 96))(v26, v23);
      v31 = v52;
      v30 = v53;
      v32 = v54;
      (*(v53 + 32))(v52, v26, v54);
      goto LABEL_10;
    }

    if (v27 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v24 + 96))(v26, v23);
      v31 = v49;
      v30 = v50;
      v32 = v51;
      (*(v50 + 32))(v49, v26, v51);
      v33 = &unk_101199720;
      v34 = &type metadata accessor for TVEpisode;
      goto LABEL_9;
    }

    if (v27 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v24 + 96))(v26, v23);
      v31 = v46;
      v30 = v47;
      v32 = v48;
      (*(v47 + 32))(v46, v26, v48);
      v33 = &unk_101193FF8;
      v34 = &type metadata accessor for UploadedAudio;
      goto LABEL_9;
    }

    if (v27 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 96))(v26, v23);
      v30 = v44;
      v31 = v43;
      v32 = v45;
      (*(v44 + 32))(v43, v26, v45);
      v33 = &unk_101181148;
      v34 = &type metadata accessor for UploadedVideo;
      goto LABEL_9;
    }

    v41 = enum case for MusicPlayer.PlayabilityStatus.playable(_:);
    v42 = type metadata accessor for MusicPlayer.PlayabilityStatus();
    (*(*(v42 - 8) + 104))(v65, v41, v42);
    return (*(v24 + 8))(v26, v23);
  }
}

uint64_t sub_1005397CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100539864, v6, v5);
}

uint64_t sub_100539864()
{
  if (qword_10117F828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1000060E4(v1, qword_101218F08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Presenting Age Verification", v4, 2u);
  }

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1005399F4;
  v6 = v0[3];

  return PlaybackController.displayAgeVerification(for:)(v6);
}

uint64_t sub_1005399F4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100539B30;
  }

  else
  {
    v5 = sub_100222A34;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100539B30()
{
  v12 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to display Age Verification with error=%s", v4, 0xCu);
    sub_10000959C(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100539CEC()
{
  if (qword_10117F828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218F08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Presenting Upsell", v4, 2u);
  }

  v5 = *(v0 + 64);

  sub_100008FE4(v5, v0 + 16);
  *(v0 + 56) = 0;
  static SubscriptionUpsellPresenter.present(for:)(v0 + 16);
  sub_100309980(v0 + 16);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100539E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[56] = a4;
  v5[57] = a5;
  type metadata accessor for MainActor();
  v5[58] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100539EBC, v7, v6);
}

uint64_t sub_100539EBC()
{
  v26 = v0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong traitCollection];
  }

  else
  {
    v3 = 0;
  }

  sub_1005384B8(v3, v0 + 88);
  v22 = *(v0 + 120);
  v23 = *(v0 + 136);
  v24 = *(v0 + 152);
  v20 = *(v0 + 88);
  v21 = *(v0 + 104);

  v4 = *(v0 + 144);
  if (v4)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v6;
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = *(v0 + 136);
    *(v0 + 72) = v4;
    *(v0 + 80) = v5;
    v7 = Alert.uiAlertController.getter();
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v7, 1, 1, 0, 0);

    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101218F08);
    *(v0 + 192) = v22;
    *(v0 + 208) = v23;
    *(v0 + 224) = v24;
    *(v0 + 160) = v20;
    *(v0 + 176) = v21;
    sub_10053A574(v0 + 160, v0 + 232);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    sub_1000095E8(v0 + 88, &qword_10118BFD0);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 64);
      *(v0 + 336) = *(v0 + 48);
      *(v0 + 352) = v13;
      *(v0 + 368) = *(v0 + 80);
      v14 = *(v0 + 32);
      *(v0 + 304) = *(v0 + 16);
      *(v0 + 320) = v14;
      *(v0 + 264) = v22;
      *(v0 + 280) = v23;
      *(v0 + 296) = v24;
      *(v0 + 232) = v20;
      *(v0 + 248) = v21;
      sub_10053A574(v0 + 232, v0 + 376);
      v15 = String.init<A>(describing:)();
      v17 = sub_1000105AC(v15, v16, &v25);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "Showing alert=%s", v11, 0xCu);
      sub_10000959C(v12);

      sub_1000095E8(v0 + 88, &qword_10118BFD0);
    }

    else
    {

      sub_1000095E8(v0 + 88, &qword_10118BFD0);
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10053A1BC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101194000);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-v4 - 8];
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  v10 = v9;
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v5, v2);
  static Alert.dolbyAtmosDownloadsAlert(message:completion:)(v8, v10, &unk_100ED1BE0, v12, v17);

  v13 = Alert.uiAlertController.getter();
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v13, 1, 1, 0, 0);

  v14 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.hasSeenDolbyDownloadConflictAlert.setter();

  return sub_100344A84(v17);
}

uint64_t sub_10053A460(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  type metadata accessor for MainActor();
  *(v2 + 24) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10053A4F8, v4, v3);
}

uint64_t sub_10053A4F8()
{

  sub_10010FC20(&qword_101194000);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10053A5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a3;
  v73 = a1;
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v72 = &v65 - v9;
  v10 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v71 = *(v10 - 8);
  v11 = *(v71 + 64);
  __chkstk_darwin(v10);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  __chkstk_darwin(v15);
  v74 = &v65 - v16;
  v17 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v67 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v70 = &v65 - v21;
  __chkstk_darwin(v22);
  v24 = &v65 - v23;
  v76[3] = a4;
  v76[4] = a5;
  v25 = sub_10001C8B8(v76);
  v26 = *(*(a4 - 8) + 16);
  v27 = a4;
  v28 = v73;
  v26(v25, a2, v27);
  v29 = *(v18 + 16);
  v29(v24, v28, v17);
  v30 = (*(v18 + 88))(v24, v17);
  if (v30 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v18 + 96))(v24, v17);
    v31 = v71;
    v32 = *(v71 + 32);
    v33 = v74;
    v32(v74, v24, v10);
    v34 = *(v31 + 16);
    v34(v14, v33, v10);
    v35 = (*(v31 + 88))(v14, v10);
    v36 = v10;
    if (v35 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v51 = v74;
      if (v35 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v77);
        sub_100014984(v77);
        if ((BYTE8(v77[0]) & 1) == 0)
        {
          v52 = type metadata accessor for TaskPriority();
          v53 = v72;
          (*(*(v52 - 8) + 56))(v72, 1, 1, v52);
          sub_100008FE4(v76, v75);
          v54 = swift_allocObject();
          *(v54 + 16) = 0;
          *(v54 + 24) = 0;
          sub_100059A8C(v75, v54 + 32);
          sub_1001F4CB8(0, 0, v53, &unk_100ED1BA8, v54);

          (*(v31 + 8))(v51, v36);
          return sub_10000959C(v76);
        }
      }

      else
      {
        (*(v31 + 8))(v14, v36);
      }

      v55 = type metadata accessor for TaskPriority();
      v56 = *(*(v55 - 8) + 56);
      v57 = v36;
      v66 = v36;
      v56(v72, 1, 1, v55);
      v58 = v68;
      v34(v68, v51, v57);
      sub_10012B7A8(v69, v75);
      type metadata accessor for MainActor();
      v59 = static MainActor.shared.getter();
      v60 = v51;
      v61 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = v59;
      *(v62 + 24) = &protocol witness table for MainActor;
      v63 = v66;
      v32((v62 + v61), v58, v66);
      sub_10012B828(v75, v62 + ((v11 + v61 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v72, &unk_100ED1BA0, v62);

      (*(v31 + 8))(v60, v63);
      return sub_10000959C(v76);
    }

    v37 = type metadata accessor for TaskPriority();
    v38 = v72;
    (*(*(v37 - 8) + 56))(v72, 1, 1, v37);
    sub_100008FE4(v76, v77);
    type metadata accessor for MainActor();
    v39 = static MainActor.shared.getter();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v77, v40 + 32);
    sub_1001F4CB8(0, 0, v38, &unk_100ED1BB0, v40);

    (*(v31 + 8))(v74, v10);
  }

  else if (v30 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v74 = *(v18 + 8);
    (v74)(v24, v17);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000060E4(v41, qword_101218F08);
    v42 = v70;
    v29(v70, v28, v17);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v77[0] = v73;
      *v45 = 136315138;
      v29(v67, v42, v17);
      v46 = String.init<A>(describing:)();
      v47 = v42;
      v49 = v48;
      (v74)(v47, v17);
      v50 = sub_1000105AC(v46, v49, v77);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Unknown playabilityStatus=%s", v45, 0xCu);
      sub_10000959C(v73);
    }

    else
    {

      (v74)(v42, v17);
    }
  }

  return sub_10000959C(v76);
}

uint64_t sub_10053ADE0(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100539E24(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_10053AEFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_100539CCC(a1, v4, v5, v1 + 32);
}

uint64_t sub_10053AFAC()
{
  swift_unknownObjectRelease();
  sub_10000959C(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_10053AFEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1005397CC(a1, v4, v5, v1 + 32);
}

uint64_t sub_10053B09C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10053B0E4(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_101194000) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_10053A460(a1, v1 + v5);
}

id sub_10053B1C8()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v5 = &v0[OBJC_IVAR____TtC5Music34AudioTraitDisclosureViewController_dismissHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0, v4);
  sub_10065B858();
  v7 = String._bridgeToObjectiveC()();

  [v6 setTitle:v7];

  v8 = String._bridgeToObjectiveC()();

  [v6 setMessage:v8];

  [v6 setPreferredStyle:1];
  type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  sub_10053B56C();
  v10 = v9;
  [v6 _setHeaderContentViewController:v9];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10053B66C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010B1408;
  v12 = _Block_copy(aBlock);

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v11 style:0 handler:v12];
  _Block_release(v12);

  [v6 addAction:v14];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v13 actionWithTitle:v15 style:0 handler:0];

  [v6 addAction:v16];
  [v6 setPreferredAction:v16];

  return v6;
}

void sub_10053B56C()
{
  v1 = [objc_allocWithZone(v0) init];
  v2 = qword_10117F878;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_101218F90;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4];

  if (v6)
  {

    v7 = *&v3[OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image];
    *&v3[OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image] = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_10053B66C()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.openAudioQuality()();
  }
}

void sub_10053B7EC()
{
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 96.0}];
  v2 = [objc_allocWithZone(UIImageView) initWithImage:*&v0[OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image]];
  [v2 setContentMode:1];
  [v2 setFrame:{0.0, 0.0, 0.0, 60.0}];
  [v2 setAutoresizingMask:2];
  v3 = [objc_opt_self() effectWithStyle:8];
  v4 = [objc_opt_self() effectForBlurEffect:v3 style:4];

  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];
  v6 = [v5 contentView];
  [v6 addSubview:v2];

  v17 = v5;
  [v2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  [v17 setFrame:{0.0, 33.0, 0.0, CGRectGetHeight(v19)}];
  [v17 setAutoresizingMask:2];

  [v1 addSubview:v17];
  [v1 bounds];
  [v0 setPreferredContentSize:{v15, v16}];
  [v0 setView:v1];
}

id sub_10053BC00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10053BCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = type metadata accessor for UIView.Corner.Radius();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101195200);
  __chkstk_darwin(v8 - 8);
  v105 = &v100 - v9;
  v10 = sub_10010FC20(&unk_101184060);
  __chkstk_darwin(v10 - 8);
  v110 = &v100 - v11;
  v12 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v12 - 8);
  v111 = &v100 - v13;
  v14 = _s11ArtworkInfoV10PropertiesVMa(0);
  v119 = *(v14 - 8);
  __chkstk_darwin(v14);
  v104 = v15;
  v108 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_101194070);
  __chkstk_darwin(v16);
  v18 = &v100 - v17;
  v19 = sub_10010FC20(&qword_101194078);
  __chkstk_darwin(v19 - 8);
  v107 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v100 - v22;
  __chkstk_darwin(v24);
  v26 = &v100 - v25;
  v27 = sub_10010FC20(&qword_10118DFA8);
  __chkstk_darwin(v27 - 8);
  v115 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v114 = &v100 - v30;
  __chkstk_darwin(v31);
  v109 = &v100 - v32;
  __chkstk_darwin(v33);
  v35 = &v100 - v34;
  *&v37 = __chkstk_darwin(v36).n128_u64[0];
  v120 = &v100 - v38;
  v121 = v3;
  v39 = *(v14 + 24);
  v122 = a1;
  v40 = *(a1 + v39 + 8);
  v106 = a2;
  if (v40)
  {
    v41 = [v3 tabBarController];
    if (!v41 || (v42 = v41, v43 = [v41 traitCollection], v42, !v43))
    {
      v43 = [objc_opt_self() currentTraitCollection];
    }

    [v43 displayScale];
  }

  v117 = v14;
  v44 = *(v122 + *(v14 + 20));
  v45 = UIListContentConfiguration.imageProperties.modify();
  v46 = UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify();
  *v47 = v44;
  v46(v123, 0);
  v45(v124, 0);
  v48 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.maximumSize.setter();
  v48(v124, 0);
  v49 = v120;
  sub_10053CB9C(v120);
  sub_1000089F8(v49, v35, &qword_10118DFA8);
  v50 = _s11ArtworkInfoVMa(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v113 = v51 + 48;
  v112 = v52;
  v53 = v52(v35, 1, v50);
  v116 = a3;
  v118 = v50;
  if (v53 == 1)
  {
    sub_1000095E8(v35, &qword_10118DFA8);
    v54 = 1;
  }

  else
  {
    sub_10053DB50(v35, v26, _s11ArtworkInfoV10PropertiesVMa);
    sub_10053DA10(v35, _s11ArtworkInfoVMa);
    v54 = 0;
  }

  v55 = v119;
  v56 = *(v119 + 56);
  v57 = v117;
  v56(v26, v54, 1, v117);
  sub_10053DB50(v122, v23, _s11ArtworkInfoV10PropertiesVMa);
  v56(v23, 0, 1, v57);
  v58 = *(v16 + 48);
  sub_1000089F8(v26, v18, &qword_101194078);
  sub_1000089F8(v23, &v18[v58], &qword_101194078);
  v59 = *(v55 + 48);
  if (v59(v18, 1, v57) == 1)
  {
    sub_1000095E8(v23, &qword_101194078);
    sub_1000095E8(v26, &qword_101194078);
    v60 = v59(&v18[v58], 1, v57);
    v61 = v121;
    v62 = v118;
    if (v60 == 1)
    {
      v63 = &qword_101194078;
      v64 = v18;
LABEL_17:
      sub_1000095E8(v64, v63);
      goto LABEL_23;
    }
  }

  else
  {
    v65 = v107;
    sub_1000089F8(v18, v107, &qword_101194078);
    if (v59(&v18[v58], 1, v57) != 1)
    {
      v74 = v108;
      sub_10053D0CC(&v18[v58], v108);
      v75 = v65;
      v76 = sub_10053D680(v65, v74);
      sub_10053DA10(v74, _s11ArtworkInfoV10PropertiesVMa);
      sub_1000095E8(v23, &qword_101194078);
      sub_1000095E8(v26, &qword_101194078);
      sub_10053DA10(v75, _s11ArtworkInfoV10PropertiesVMa);
      sub_1000095E8(v18, &qword_101194078);
      v61 = v121;
      v62 = v118;
      if (v76)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    sub_1000095E8(v23, &qword_101194078);
    sub_1000095E8(v26, &qword_101194078);
    sub_10053DA10(v65, _s11ArtworkInfoV10PropertiesVMa);
    v61 = v121;
    v62 = v118;
  }

  sub_1000095E8(v18, &qword_101194070);
LABEL_15:
  v66 = v122;
  v67 = v109;
  sub_10053DB50(v122, v109, _s11ArtworkInfoV10PropertiesVMa);
  *(v67 + *(v62 + 20)) = 0;
  (*(v51 + 56))(v67, 0, 1, v62);
  sub_10053CD3C(v67);
  v68 = v111;
  sub_1000089F8(v66, v111, &unk_101188920);
  v69 = type metadata accessor for Artwork();
  v70 = *(v69 - 8);
  if ((*(v70 + 48))(v68, 1, v69) == 1)
  {
    v63 = &unk_101188920;
    v64 = v68;
    goto LABEL_17;
  }

  v71 = type metadata accessor for Artwork.CropStyle();
  (*(*(v71 - 8) + 56))(v110, 1, 1, v71);
  v72 = type metadata accessor for Artwork.ImageFormat();
  v73 = v105;
  (*(*(v72 - 8) + 56))(v105, 1, 1, v72);
  if (v106)
  {
    sub_10053DB08(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  }

  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v108;
  sub_10053DB50(v122, v108, _s11ArtworkInfoV10PropertiesVMa);
  v79 = (*(v119 + 80) + 24) & ~*(v119 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v77;
  v81 = v80 + v79;
  v61 = v121;
  sub_10053D0CC(v78, v81);

  v82 = v110;
  v83 = v111;
  Artwork.loadImage(width:height:pixelLength:cropStyle:format:cacheOwner:completion:)();

  sub_1000095E8(v73, &unk_101195200);
  sub_1000095E8(v82, &unk_101184060);

  (*(v70 + 8))(v83, v69);
  v62 = v118;
LABEL_23:
  v84 = v114;
  sub_10053CB9C(v114);
  v85 = v112;
  if (v112(v84, 1, v62))
  {
    sub_1000095E8(v84, &qword_10118DFA8);
LABEL_25:
    v86 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.strokeWidth.setter();
    v86(v124, 0);
    v87 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.cornerRadius.setter();
    v87(v124, 0);
    goto LABEL_28;
  }

  v88 = *(v84 + *(v62 + 20));
  v89 = v88;
  sub_1000095E8(v84, &qword_10118DFA8);
  if (!v88)
  {
    goto LABEL_25;
  }

  v90 = UIView.Border.artwork.unsafeMutableAddressor()[2];
  v91 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.strokeColor.setter();
  v91(v124, 0);
  v92 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.strokeWidth.setter();
  v92(v124, 0);
  v93 = v101;
  UIView.Corner.radius.getter();
  UIView.Corner.Radius.value(in:)();
  (*(v102 + 8))(v93, v103);
  v94 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.cornerRadius.setter();
  v94(v124, 0);
LABEL_28:
  v95 = v115;
  sub_10053CB9C(v115);
  if (v85(v95, 1, v62))
  {
    sub_1000095E8(v95, &qword_10118DFA8);
  }

  else
  {
    v97 = *(v95 + *(v62 + 20));
    v98 = v97;
    sub_1000095E8(v95, &qword_10118DFA8);
    if (v97)
    {
      goto LABEL_32;
    }
  }

  v96 = [v61 image];
LABEL_32:
  UIListContentConfiguration.image.setter();
  return sub_1000095E8(v120, &qword_10118DFA8);
}